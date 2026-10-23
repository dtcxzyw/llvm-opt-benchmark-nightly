Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/prometheus-f7fa626fe53c599c.prometheus.5b3e31eccfcd94f0-cgu.0?download=true
inline.NumInlined: 2378
inline.NumDeleted: 1121
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN10prometheus7encoder4text13escape_string17h9ac21b1c82b6a109E:bb.a
  %i.j = tail call { i64, ptr } %i.i(i8 noundef 92, i8 noundef 10, i8 noundef 34, ptr noundef nonnull readonly align 1 %1, ptr noundef nonnull readonly %i.d), !noalias !1302, !inline_history !1226 ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.j, 0
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink.i = phi { i64, ptr } [ %i.f, %bb.b ], [ %i.j, %bb.c ]
  %i.m = extractvalue { i64, ptr } %.sink.i, 1    ; 3 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %1 to i64
  %i.p = sub i64 %i.n, %i.o                       ; 16 uses
  %i.q = icmp sgt i64 %i.p, -1
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.r = shl i64 %2, 1                            ; 6 uses
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %bb.f, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, !prof !9

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %bb.d
  %i.t = icmp eq i64 %i.r, 0
  br i1 %i.t, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4c5b8c4aa4b3e4beE.exit", label %bb.e

bb.e:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !1303
  %i.u = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.r, i64 noundef range(i64 1, 9) 1) #42, !noalias !1303 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.f, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4c5b8c4aa4b3e4beE.exit"

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.4.0.ph.i = phi i64 [ 1, %bb.e ], [ 0, %bb.d ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i, i64 %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @91) #45
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4c5b8c4aa4b3e4beE.exit": ; preds = %bb.e, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i ], [ %i.u, %bb.e ] ; 2 uses
  store i64 %i.r, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 9 uses
  store ptr %.sroa.10.0.i, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 18 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.w = icmp eq ptr %i.m, %1                     ; 2 uses
  br i1 %i.w, label %bb.k, label %bb.g

bb.g:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4c5b8c4aa4b3e4beE.exit"
  %.not.i = icmp ult i64 %i.p, %2
  br i1 %.not.i, label %bb.h, label %.split.i

.split.i:                                         ; preds = %bb.g
  %i.x = icmp eq i64 %i.p, %2
  br i1 %i.x, label %bb.k, label %.invoke

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !1304, !noundef !6
  %i.aa = icmp sgt i8 %i.z, -65
  br i1 %i.aa, label %bb.k, label %.invoke

bb.i:                                             ; preds = %bb.b, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.ac, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.w

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.au, %bb.ax, %bb.at, %bb.ab, %bb.ay, %bb.az, %.invoke, %bb.v, %bb.l
  %lpad.loopexit.split-lp147 = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1305)
  %.val.i = load i64, ptr %i.c, align 8, !alias.scope !1305 ; 2 uses
  %i.ad = icmp eq i64 %.val.i, 0
  br i1 %i.ad, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit", label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val1.i = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !alias.scope !1305, !nonnull !6, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !1305
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit"

bb.k:                                             ; preds = %bb.h, %.split.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4c5b8c4aa4b3e4beE.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1307)
  %i.ae = icmp samesign ugt i64 %i.p, %i.r
  br i1 %i.ae, label %bb.l, label %bb.m, !prof !11

bb.l:                                             ; preds = %bb.k
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17heeecba0c58aac701E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0, i64 noundef %i.p, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.l
  %.pre.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1308
  %.pre = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !alias.scope !1308
  br label %bb.m

bb.m:                                             ; preds = %.noexc, %bb.k
  %i.af = phi ptr [ %.sroa.10.0.i, %bb.k ], [ %.pre, %.noexc ]
  %i.ag = phi i64 [ 0, %bb.k ], [ %.pre.i.i, %.noexc ] ; 3 uses
  %i.ah = icmp sgt i64 %i.ag, -1
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ai, ptr nonnull readonly align 1 %1, i64 %i.p, i1 false), !noalias !1308
  %i.aj = add nuw i64 %i.ag, %i.p                 ; 2 uses
  store i64 %i.aj, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1308
  br i1 %i.w, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.i19 = icmp ult i64 %i.p, %2
  br i1 %.not.i19, label %bb.o, label %.split.i20

.split.i20:                                       ; preds = %bb.n
  %i.ak = icmp eq i64 %i.p, %2
  br i1 %i.ak, label %bb.p, label %.invoke

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %i.am = load i8, ptr %i.al, align 1, !alias.scope !1309, !noundef !6
  %i.an = icmp sgt i8 %i.am, -65
  br i1 %i.an, label %bb.p, label %.invoke

bb.p:                                             ; preds = %bb.o, %.split.i20, %bb.m
  %i.ao = icmp eq ptr %i.m, %i.d
  br i1 %i.ao, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 4 uses
  %.sroa.5.0..sroa_idx25.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  br label %bb.q

.invoke:                                          ; preds = %.split.i20, %bb.o, %.split.i, %bb.h
  %i.ax = phi i64 [ 0, %.split.i ], [ 0, %bb.h ], [ %i.p, %bb.o ], [ %i.p, %.split.i20 ]
  %i.ay = phi i64 [ %i.p, %.split.i ], [ %i.p, %bb.h ], [ %2, %bb.o ], [ %2, %.split.i20 ]
  %i.az = phi ptr [ @92, %.split.i ], [ @92, %bb.h ], [ @93, %bb.o ], [ @93, %.split.i20 ]
  invoke void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.ax, i64 noundef %i.ay, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.az) #45
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.q:                                             ; preds = %.lr.ph, %bb.av
  %.sroa.0.0107 = phi ptr [ %i.ap, %.lr.ph ], [ %.sroa.0.1.ph, %bb.av ] ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0107, i64 1 ; 3 uses
  %i.bb = load i8, ptr %.sroa.0.0107, align 1, !noalias !1310, !noundef !6 ; 5 uses
  %i.bc = icmp sgt i8 %i.bb, -1
  br i1 %i.bc, label %bb.r, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha927d347885cf44cE.exit12.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha927d347885cf44cE.exit12.i": ; preds = %bb.q
  %i.bd = and i8 %i.bb, 31
  %i.be = zext nneg i8 %i.bd to i32               ; 3 uses
  %i.bf = icmp ne ptr %i.ba, %i.d
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0107, i64 2 ; 3 uses
  %i.bh = load i8, ptr %i.ba, align 1, !noalias !1310, !noundef !6
  %i.bi = shl nuw nsw i32 %i.be, 6
  %i.bj = and i8 %i.bh, 63
  %i.bk = zext nneg i8 %i.bj to i32               ; 2 uses
  %i.bl = or disjoint i32 %i.bi, %i.bk
  %i.bm = icmp samesign ugt i8 %i.bb, -33
  br i1 %i.bm, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha927d347885cf44cE.exit14.i", label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bn = zext nneg i8 %i.bb to i32
  br label %bb.s

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha927d347885cf44cE.exit14.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha927d347885cf44cE.exit12.i"
  %i.bo = icmp ne ptr %i.bg, %i.d
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.0107, i64 3 ; 3 uses
  %i.bq = load i8, ptr %i.bg, align 1, !noalias !1310, !noundef !6
  %i.br = shl nuw nsw i32 %i.bk, 6
  %i.bs = and i8 %i.bq, 63
  %i.bt = zext nneg i8 %i.bs to i32
  %i.bu = or disjoint i32 %i.br, %i.bt            ; 2 uses
  %i.bv = shl nuw nsw i32 %i.be, 12
  %i.bw = or disjoint i32 %i.bu, %i.bv
  %i.bx = icmp samesign ugt i8 %i.bb, -17
  br i1 %i.bx, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha927d347885cf44cE.exit16.i", label %bb.s

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha927d347885cf44cE.exit16.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha927d347885cf44cE.exit14.i"
  %i.by = icmp ne ptr %i.bp, %i.d
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0107, i64 4
  %i.ca = load i8, ptr %i.bp, align 1, !noalias !1310, !noundef !6
  %i.cb = shl nuw nsw i32 %i.be, 18
  %i.cc = and i32 %i.cb, 1835008
  %i.cd = shl nuw nsw i32 %i.bu, 6
  %i.ce = and i8 %i.ca, 63
  %i.cf = zext nneg i8 %i.ce to i32
  %i.cg = or disjoint i32 %i.cd, %i.cf
  %i.ch = or disjoint i32 %i.cg, %i.cc
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha927d347885cf44cE.exit12.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha927d347885cf44cE.exit16.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha927d347885cf44cE.exit14.i"
  %.sroa.0.1.ph = phi ptr [ %i.bg, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha927d347885cf44cE.exit12.i" ], [ %i.bp, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha927d347885cf44cE.exit14.i" ], [ %i.bz, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha927d347885cf44cE.exit16.i" ], [ %i.ba, %bb.r ] ; 2 uses
  %.sroa.4.0.i22.ph = phi i32 [ %i.bl, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha927d347885cf44cE.exit12.i" ], [ %i.bw, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha927d347885cf44cE.exit14.i" ], [ %i.ch, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha927d347885cf44cE.exit16.i" ], [ %i.bn, %bb.r ] ; 20 uses
  %i.ci = icmp samesign ult i32 %.sroa.4.0.i22.ph, 1114112
  tail call void @llvm.assume(i1 %i.ci)
  switch i32 %.sroa.4.0.i22.ph, label %bb.x [
    i32 92, label %bb.ai
    i32 10, label %bb.ai
    i32 34, label %bb.ar
  ]

._crit_edge.loopexit:                             ; preds = %bb.av
  %.pre118 = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1311
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.p
  %i.cj = phi i64 [ %.pre118, %._crit_edge.loopexit ], [ %i.aj, %bb.p ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1311)
  %i.ck = load i64, ptr %i.c, align 8, !range !10, !alias.scope !1311, !noundef !6 ; 3 uses
  %i.cl = icmp ugt i64 %i.ck, %i.cj
  br i1 %i.cl, label %bb.t, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$13shrink_to_fit17h185362051086ac8dE.exit"

bb.t:                                             ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1313)
  %.val22.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !alias.scope !1314, !nonnull !6, !noundef !6 ; 2 uses
  %i.cm = icmp eq i64 %i.cj, 0
  br i1 %i.cm, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i", label %bb.u

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i": ; preds = %bb.t
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val22.i.i.i, i64 noundef %i.ck, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !1314
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$6shrink17h7ec1dfa8d11c3263E.exit.thread.i"

bb.u:                                             ; preds = %bb.t
  %i.cn = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %.val22.i.i.i, i64 noundef %i.ck, i64 noundef range(i64 1, -9223372036854775807) 1, i64 noundef range(i64 1, 9223372036854775807) %i.cj) #42, !noalias !1314 ; 2 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.v, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$6shrink17h7ec1dfa8d11c3263E.exit.thread.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$6shrink17h7ec1dfa8d11c3263E.exit.thread.i": ; preds = %bb.u, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"
  %storemerge.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i" ], [ %i.cn, %bb.u ]
  store ptr %storemerge.i.i.i, ptr %.sroa.44.0..sroa_idx, align 8, !alias.scope !1314
  store i64 %i.cj, ptr %i.c, align 8, !alias.scope !1314
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$13shrink_to_fit17h185362051086ac8dE.exit"

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %i.cj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #45
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc24:                                         ; preds = %bb.v
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$13shrink_to_fit17h185362051086ac8dE.exit": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$6shrink17h7ec1dfa8d11c3263E.exit.thread.i", %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.w

bb.w:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$13shrink_to_fit17h185362051086ac8dE.exit", %bb.i
  ret void

bb.x:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  %i.cp = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1315, !noundef !6 ; 4 uses
  %i.cq = icmp sgt i64 %i.cp, -1
  tail call void @llvm.assume(i1 %i.cq)
  %i.cr = icmp samesign ult i32 %.sroa.4.0.i22.ph, 128
  br i1 %i.cr, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cs = icmp samesign ult i32 %.sroa.4.0.i22.ph, 2048
  br i1 %i.cs, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ct = icmp samesign ult i32 %.sroa.4.0.i22.ph, 65536
  %..i = select i1 %i.ct, i64 3, i64 4
  br label %bb.aa

bb.aa:                                            ; preds = %.thread101, %bb.z, %bb.y, %bb.x
  %i.cu = phi i1 [ false, %bb.y ], [ false, %bb.z ], [ true, %bb.x ], [ true, %.thread101 ]
  %i.cv = phi i64 [ %i.cp, %bb.y ], [ %i.cp, %bb.z ], [ %i.cp, %bb.x ], [ %i.fu, %.thread101 ] ; 4 uses
  %.sroa.0.0.i25 = phi i64 [ 2, %bb.y ], [ %..i, %bb.z ], [ 1, %bb.x ], [ 1, %.thread101 ] ; 3 uses
  %i.cw = load i64, ptr %i.c, align 8, !range !10, !alias.scope !1316, !noundef !6
  %i.cx = sub nsw i64 %i.cw, %i.cv
  %i.cy = icmp ugt i64 %.sroa.0.0.i25, %i.cx
  br i1 %i.cy, label %bb.ab, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he35a8850c3e5d096E.exit.i", !prof !11

bb.ab:                                            ; preds = %bb.aa
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17heeecba0c58aac701E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.cv, i64 noundef %.sroa.0.0.i25, i64 noundef 1, i64 noundef 1)
          to label %.noexc26 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc26:                                         ; preds = %bb.ab
  %.pre.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1315
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he35a8850c3e5d096E.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he35a8850c3e5d096E.exit.i": ; preds = %.noexc26, %bb.aa
  %i.cz = phi i64 [ %i.cv, %bb.aa ], [ %.pre.i, %.noexc26 ] ; 2 uses
  %i.da = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !alias.scope !1315, !nonnull !6, !noundef !6
  %i.db = icmp sgt i64 %i.cz, -1
  tail call void @llvm.assume(i1 %i.db)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cz ; 10 uses
  br i1 %i.cu, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he35a8850c3e5d096E.exit.i"
  %i.dd = icmp samesign ult i32 %.sroa.4.0.i22.ph, 2048
  %i.de = trunc i32 %.sroa.4.0.i22.ph to i8
  %i.df = and i8 %i.de, 63
  %i.dg = or disjoint i8 %i.df, -128              ; 3 uses
  %i.dh = lshr i32 %.sroa.4.0.i22.ph, 6
  %i.di = trunc i32 %i.dh to i8                   ; 2 uses
  %i.dj = and i8 %i.di, 63
  %i.dk = or disjoint i8 %i.dj, -128              ; 2 uses
  %i.dl = lshr i32 %.sroa.4.0.i22.ph, 12
  %i.dm = trunc i32 %i.dl to i8                   ; 2 uses
  %i.dn = and i8 %i.dm, 63
  %i.do = or disjoint i8 %i.dn, -128
  %i.dp = lshr i32 %.sroa.4.0.i22.ph, 18
  %i.dq = trunc nuw nsw i32 %i.dp to i8
  %i.dr = or disjoint i8 %i.dq, -16
  br i1 %i.dd, label %bb.ae, label %bb.af

bb.ad:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he35a8850c3e5d096E.exit.i"
  %i.ds = trunc nuw nsw i32 %.sroa.4.0.i22.ph to i8
  store i8 %i.ds, ptr %i.dc, align 1, !noalias !1315
  br label %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit

bb.ae:                                            ; preds = %bb.ac
  %i.dt = or disjoint i8 %i.di, -64
  store i8 %i.dt, ptr %i.dc, align 1, !noalias !1315
  %i.du = getelementptr inbounds nuw i8, ptr %i.dc, i64 1
  store i8 %i.dg, ptr %i.du, align 1, !noalias !1315
  br label %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit

bb.af:                                            ; preds = %bb.ac
  %i.dv = icmp samesign ult i32 %.sroa.4.0.i22.ph, 65536
  br i1 %i.dv, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dw = or disjoint i8 %i.dm, -32
  store i8 %i.dw, ptr %i.dc, align 1, !noalias !1315
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dc, i64 1
  store i8 %i.dk, ptr %i.dx, align 1, !noalias !1315
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dc, i64 2
  store i8 %i.dg, ptr %i.dy, align 1, !noalias !1315
  br label %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit

bb.ah:                                            ; preds = %bb.af
  store i8 %i.dr, ptr %i.dc, align 1, !noalias !1315
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dc, i64 1
  store i8 %i.do, ptr %i.dz, align 1, !noalias !1315
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dc, i64 2
  store i8 %i.dk, ptr %i.ea, align 1, !noalias !1315
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dc, i64 3
  store i8 %i.dg, ptr %i.eb, align 1, !noalias !1315
  br label %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit

_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit: ; preds = %bb.ad, %bb.ae, %bb.ag, %bb.ah
  %i.ec = add nuw i64 %.sroa.0.0.i25, %i.cv
  store i64 %i.ec, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1315
  br label %bb.av

bb.ai:                                            ; preds = %bb.s, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  switch i32 %.sroa.4.0.i22.ph, label %bb.aj [
    i32 34, label %bb.am
    i32 13, label %bb.ak
    i32 10, label %bb.al
    i32 92, label %bb.am
    i32 39, label %bb.am
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.ed = add nsw i32 %.sroa.4.0.i22.ph, -32
  %or.cond.i = icmp ult i32 %i.ed, 95
  br i1 %or.cond.i, label %bb.ao, label %bb.an

bb.ak:                                            ; preds = %bb.ai
  store i8 92, ptr %i.b, align 4, !alias.scope !1317
  store i8 114, ptr %.sroa.424.0..sroa_idx.i, align 1, !alias.scope !1317
  store i64 0, ptr %.sroa.5.0..sroa_idx25.i, align 2, !alias.scope !1317
  br label %bb.as

bb.al:                                            ; preds = %bb.ai
  store i8 92, ptr %i.b, align 4, !alias.scope !1317
  store i8 110, ptr %.sroa.424.0..sroa_idx.i, align 1, !alias.scope !1317
  store i64 0, ptr %.sroa.5.0..sroa_idx25.i, align 2, !alias.scope !1317
  br label %bb.as

bb.am:                                            ; preds = %bb.ai, %bb.ai, %bb.ai
  %i.ee = trunc nuw nsw i32 %.sroa.4.0.i22.ph to i8
  store i8 92, ptr %i.b, align 4, !alias.scope !1317
  store i8 %i.ee, ptr %.sroa.424.0..sroa_idx.i, align 1, !alias.scope !1317
  store i64 0, ptr %.sroa.5.0..sroa_idx25.i, align 2, !alias.scope !1317
  br label %bb.as

bb.an:                                            ; preds = %bb.aj
  %4 = icmp eq i32 %.sroa.4.0.i22.ph, 92
  %.finite = select i1 %4, i32 6, i32 7
  %i.ef = zext nneg i32 %.finite to i64           ; 2 uses
  %i.eg = add nsw i64 %i.ef, -2                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.a, i8 0, i64 3, i1 false), !noalias !1317
  %i.eh = zext nneg i32 0 to i64
  %i.ei = getelementptr inbounds nuw i8, ptr @186, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !range !1318, !noalias !1319, !noundef !6
  store i8 %i.ej, ptr %i.aq, align 1, !noalias !1317
  %i.ek = zext nneg i32 0 to i64
  %i.el = getelementptr inbounds nuw i8, ptr @186, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !range !1318, !noalias !1319, !noundef !6
  store i8 %i.em, ptr %i.ar, align 1, !noalias !1317
  %i.en = zext nneg i32 0 to i64
  %i.eo = getelementptr inbounds nuw i8, ptr @186, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !range !1318, !noalias !1319, !noundef !6
  store i8 %i.ep, ptr %i.as, align 1, !noalias !1317
  %i.eq = zext nneg i32 0 to i64
  %i.er = getelementptr inbounds nuw i8, ptr @186, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !range !1318, !noalias !1319, !noundef !6
  store i8 %i.es, ptr %i.at, align 1, !noalias !1317
  %i.et = lshr i32 %.sroa.4.0.i22.ph, 4
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr @186, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !range !1318, !noalias !1319, !noundef !6
  store i8 %i.ew, ptr %i.au, align 1, !noalias !1317
  %i.ex = and i32 %.sroa.4.0.i22.ph, 15
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr @186, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !range !1318, !noalias !1319, !noundef !6
  store i8 %i.fa, ptr %i.av, align 1, !noalias !1317
  store i8 125, ptr %i.aw, align 1, !noalias !1317
  %i.fb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eg
  store i8 92, ptr %i.fb, align 1, !noalias !1317
  %i.fc = getelementptr i8, ptr %i.a, i64 %i.ef   ; 2 uses
  %i.fd = getelementptr i8, ptr %i.fc, i64 -1
  store i8 117, ptr %i.fd, align 1, !noalias !1317
  store i8 123, ptr %i.fc, align 1, !noalias !1317
  %i.fe = trunc nuw nsw i64 %i.eg to i8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 1 dereferenceable(10) %i.a, i64 10, i1 false)
  br label %bb.as

bb.ao:                                            ; preds = %bb.aj
  %i.ff = trunc nuw nsw i32 %.sroa.4.0.i22.ph to i8 ; 2 uses
  %i.fg = zext nneg i32 %.sroa.4.0.i22.ph to i64
  %i.fh = getelementptr inbounds nuw i8, ptr @187, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !noalias !1320, !noundef !6 ; 2 uses
  %i.fj = and i8 %i.fi, 127                       ; 3 uses
  %i.fk = icmp sgt i8 %i.fi, -1
  br i1 %i.fk, label %_ZN4core6escape12escape_ascii17hab58e1c343f36482E.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fl = icmp eq i8 %i.fj, 0
  br i1 %i.fl, label %bb.aq, label %_ZN4core6escape12escape_ascii17hab58e1c343f36482E.exit.i

bb.aq:                                            ; preds = %bb.ap
  %i.fm = and i8 %i.ff, 15
  %i.fn = zext nneg i8 %i.fm to i64
  %i.fo = lshr i8 %i.ff, 4
  %i.fp = zext nneg i8 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr @186, i64 %i.fp
  %i.fr = load i8, ptr %i.fq, align 1, !range !1318, !noalias !1321, !noundef !6
  %i.fs = getelementptr inbounds nuw i8, ptr @186, i64 %i.fn
  %i.ft = load i8, ptr %i.fs, align 1, !range !1318, !noalias !1321, !noundef !6
  %.sroa.9.2.insert.ext.i = zext nneg i8 %i.fr to i64
  %.sroa.9.3.insert.ext.i = zext nneg i8 %i.ft to i64
  %.sroa.9.3.insert.shift.i = shl nuw nsw i64 %.sroa.9.3.insert.ext.i, 8
  %.sroa.9.3.insert.insert.i = or disjoint i64 %.sroa.9.3.insert.shift.i, %.sroa.9.2.insert.ext.i
  br label %_ZN4core6escape12escape_ascii17hab58e1c343f36482E.exit.i

_ZN4core6escape12escape_ascii17hab58e1c343f36482E.exit.i: ; preds = %bb.aq, %bb.ap, %bb.ao
  %.sroa.049.0.i = phi i8 [ %i.fj, %bb.ao ], [ 92, %bb.aq ], [ 92, %bb.ap ]
  %.sroa.9.0.i = phi i64 [ 0, %bb.ao ], [ %.sroa.9.3.insert.insert.i, %bb.aq ], [ 0, %bb.ap ]
  %.sroa.17.0.i = phi i8 [ 1, %bb.ao ], [ 4, %bb.aq ], [ 2, %bb.ap ]
  %.sroa.650.0.i = phi i8 [ 0, %bb.ao ], [ 120, %bb.aq ], [ %i.fj, %bb.ap ]
  store i8 %.sroa.049.0.i, ptr %i.b, align 4, !alias.scope !1317
  store i8 %.sroa.650.0.i, ptr %.sroa.424.0..sroa_idx.i, align 1, !alias.scope !1317
  store i64 %.sroa.9.0.i, ptr %.sroa.5.0..sroa_idx25.i, align 2, !alias.scope !1317
  br label %bb.as

bb.ar:                                            ; preds = %bb.s
  br i1 %3, label %bb.aw, label %.thread101

.thread101:                                       ; preds = %bb.ar
  %i.fu = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1322, !noundef !6 ; 2 uses
  %i.fv = icmp sgt i64 %i.fu, -1
  tail call void @llvm.assume(i1 %i.fv)
  br label %bb.aa

bb.as:                                            ; preds = %_ZN4core6escape12escape_ascii17hab58e1c343f36482E.exit.i, %bb.an, %bb.am, %bb.al, %bb.ak
  %i.fw = phi i8 [ %.sroa.17.0.i, %_ZN4core6escape12escape_ascii17hab58e1c343f36482E.exit.i ], [ 2, %bb.ak ], [ 2, %bb.al ], [ 2, %bb.am ], [ 10, %bb.an ] ; 3 uses
  %i.fx = phi i8 [ 0, %_ZN4core6escape12escape_ascii17hab58e1c343f36482E.exit.i ], [ 0, %bb.ak ], [ 0, %bb.al ], [ 0, %bb.am ], [ %i.fe, %bb.an ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1324)
  %i.fy = sub nsw i8 %i.fw, %i.fx
  %i.fz = zext i8 %i.fy to i64                    ; 2 uses
  %i.ga = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1325, !noundef !6 ; 2 uses
  %i.gb = load i64, ptr %i.c, align 8, !range !10, !alias.scope !1325, !noundef !6
  %i.gc = sub i64 %i.gb, %i.ga
  %i.gd = icmp ult i64 %i.gc, %i.fz
  br i1 %i.gd, label %bb.at, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he35a8850c3e5d096E.exit.i27", !prof !11

bb.at:                                            ; preds = %bb.as
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17heeecba0c58aac701E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.ga, i64 noundef %i.fz, i64 noundef 1, i64 noundef 1)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he35a8850c3e5d096E.exit.i27" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he35a8850c3e5d096E.exit.i27": ; preds = %bb.at, %bb.as
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1329)
  %i.ge = icmp samesign ult i8 %i.fx, %i.fw
  br i1 %i.ge, label %"_ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.lr.ph.i.i.i", label %"_ZN89_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..Extend$LT$char$GT$$GT$6extend17h2fed47423508fb2cE.exit"

"_ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.lr.ph.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he35a8850c3e5d096E.exit.i27"
  %i.gf = zext nneg i8 %i.fx to i64
  %wide.trip.count.i.i.i = zext nneg i8 %i.fw to i64
  %.pre.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1330
  %.pre1.i.i = load i64, ptr %i.c, align 8, !range !10, !alias.scope !1331
  br label %"_ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.i.i.i"

"_ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.i.i.i": ; preds = %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5075d44b28a8d9f5E.exit.i.i.i", %"_ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.lr.ph.i.i.i"
  %i.gg = phi i64 [ %.pre1.i.i, %"_ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.lr.ph.i.i.i" ], [ %i.gn, %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5075d44b28a8d9f5E.exit.i.i.i" ] ; 3 uses
  %i.gh = phi i64 [ %.pre.i.i.i, %"_ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.lr.ph.i.i.i" ], [ %i.gs, %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5075d44b28a8d9f5E.exit.i.i.i" ] ; 4 uses
  %indvars.iv.i.i.i = phi i64 [ %i.gf, %"_ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.lr.ph.i.i.i" ], [ %indvars.iv.next.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5075d44b28a8d9f5E.exit.i.i.i" ] ; 3 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.gi = icmp samesign ult i64 %indvars.iv.i.i.i, 10
  tail call void @llvm.assume(i1 %i.gi)
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i.i.i
  %i.gk = load i8, ptr %i.gj, align 1, !range !1318, !alias.scope !1332, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1333)
  %i.gl = icmp sgt i64 %i.gh, -1
  tail call void @llvm.assume(i1 %i.gl)
  %i.gm = icmp eq i64 %i.gg, %i.gh
  br i1 %i.gm, label %bb.au, label %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5075d44b28a8d9f5E.exit.i.i.i", !prof !11

bb.au:                                            ; preds = %"_ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.i.i.i"
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17heeecba0c58aac701E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.gg, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc30 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc30:                                         ; preds = %bb.au
  %.pre.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1330
  %.pre.i.i28 = load i64, ptr %i.c, align 8, !range !10, !alias.scope !1331
  br label %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5075d44b28a8d9f5E.exit.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5075d44b28a8d9f5E.exit.i.i.i": ; preds = %.noexc30, %"_ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.i.i.i"
  %i.gn = phi i64 [ %i.gg, %"_ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.i.i.i" ], [ %.pre.i.i28, %.noexc30 ]
  %i.go = phi i64 [ %i.gh, %"_ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.i.i.i" ], [ %.pre.i.i.i.i.i.i, %.noexc30 ] ; 2 uses
  %i.gp = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !alias.scope !1330, !nonnull !6, !noundef !6
  %i.gq = icmp sgt i64 %i.go, -1
  tail call void @llvm.assume(i1 %i.gq)
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.go
  store i8 %i.gk, ptr %i.gr, align 1, !noalias !1334
  %i.gs = add nuw i64 %i.gh, 1                    ; 2 uses
  store i64 %i.gs, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1330
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %"_ZN89_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..Extend$LT$char$GT$$GT$6extend17h2fed47423508fb2cE.exit", label %"_ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.i.i.i"

"_ZN89_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..Extend$LT$char$GT$$GT$6extend17h2fed47423508fb2cE.exit": ; preds = %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5075d44b28a8d9f5E.exit.i.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he35a8850c3e5d096E.exit.i27"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.av

bb.av:                                            ; preds = %_ZN5alloc6string6String4push17hdb86633958c7be9cE.exit, %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5075d44b28a8d9f5E.exit.i.i.i76.1", %"_ZN89_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..Extend$LT$char$GT$$GT$6extend17h2fed47423508fb2cE.exit"
  %i.gt = icmp eq ptr %.sroa.0.1.ph, %i.d
  br i1 %i.gt, label %._crit_edge.loopexit, label %bb.q

bb.aw:                                            ; preds = %bb.ar
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1335)
  %i.gu = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1336, !noundef !6 ; 3 uses
  %i.gv = load i64, ptr %i.c, align 8, !range !10, !alias.scope !1336, !noundef !6 ; 2 uses
  %i.gw = sub i64 %i.gv, %i.gu
  %i.gx = icmp ult i64 %i.gw, 2
  br i1 %i.gx, label %bb.ax, label %"_ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.lr.ph.i.i.i69", !prof !11

bb.ax:                                            ; preds = %bb.aw
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17heeecba0c58aac701E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.gu, i64 noundef 2, i64 noundef 1, i64 noundef 1)
          to label %"._ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.lr.ph.i.i.i69_crit_edge" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"._ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.lr.ph.i.i.i69_crit_edge": ; preds = %bb.ax
  %.pre.i.i.i71.pre = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1337
  %.pre1.i.i72.pre = load i64, ptr %i.c, align 8, !range !10, !alias.scope !1338
  br label %"_ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.lr.ph.i.i.i69"

"_ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.lr.ph.i.i.i69": ; preds = %"._ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.lr.ph.i.i.i69_crit_edge", %bb.aw
  %.pre1.i.i72 = phi i64 [ %.pre1.i.i72.pre, %"._ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.lr.ph.i.i.i69_crit_edge" ], [ %i.gv, %bb.aw ] ; 3 uses
  %.pre.i.i.i71 = phi i64 [ %.pre.i.i.i71.pre, %"._ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.lr.ph.i.i.i69_crit_edge" ], [ %i.gu, %bb.aw ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1341)
  %i.gy = icmp sgt i64 %.pre.i.i.i71, -1
  tail call void @llvm.assume(i1 %i.gy)
  %i.gz = icmp eq i64 %.pre1.i.i72, %.pre.i.i.i71
  br i1 %i.gz, label %bb.ay, label %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5075d44b28a8d9f5E.exit.i.i.i76", !prof !11

bb.ay:                                            ; preds = %"_ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.lr.ph.i.i.i69"
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17heeecba0c58aac701E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %.pre1.i.i72, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc81 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc81:                                         ; preds = %bb.ay
  %.pre.i.i.i.i.i.i78 = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1337
  %.pre.i.i79 = load i64, ptr %i.c, align 8, !range !10, !alias.scope !1338
  br label %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5075d44b28a8d9f5E.exit.i.i.i76"

"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5075d44b28a8d9f5E.exit.i.i.i76": ; preds = %.noexc81, %"_ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.lr.ph.i.i.i69"
  %i.ha = phi i64 [ %.pre1.i.i72, %"_ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.lr.ph.i.i.i69" ], [ %.pre.i.i79, %.noexc81 ] ; 2 uses
  %i.hb = phi i64 [ %.pre.i.i.i71, %"_ZN84_$LT$core..char..EscapeDefault$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc596e0bc9209c7a3E.exit.lr.ph.i.i.i69" ], [ %.pre.i.i.i.i.i.i78, %.noexc81 ] ; 2 uses
  %i.hc = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !alias.scope !1337, !nonnull !6, !noundef !6 ; 2 uses
  %i.hd = icmp sgt i64 %i.hb, -1
  tail call void @llvm.assume(i1 %i.hd)
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.hb
  store i8 92, ptr %i.he, align 1, !noalias !1342
  %i.hf = add nuw nsw i64 %.pre.i.i.i71, 1        ; 3 uses
  store i64 %i.hf, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1337
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1343)
  %i.hg = icmp eq i64 %i.ha, %i.hf
  br i1 %i.hg, label %bb.az, label %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h5075d44b28a8d9f5E.exit.i.i.i76.1", !prof !11

end_hunk_0
begin_hunk_1_@getpid
declare noundef i32 @getpid() unnamed_addr #3

; Function Attrs: cold nonlazybind uwtable
declare noundef zeroext i1 @_ZN11parking_lot10raw_rwlock9RawRwLock19lock_exclusive_slow17h7176b9c020b90d6eE(ptr noundef nonnull align 8, i64, i32 noundef range(i32 0, 1000000001)) unnamed_addr #18

; Function Attrs: cold nonlazybind uwtable
declare noundef zeroext i1 @_ZN11parking_lot10raw_rwlock9RawRwLock16lock_shared_slow17h477fbdcdd74fb222E(ptr noundef nonnull align 8, i1 noundef zeroext, i64, i32 noundef range(i32 0, 1000000001)) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_ZN3std4time7Instant3now17h6afc9418486166d9E() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_ZN3std4time7Instant25saturating_duration_since17hc1f195375bc6ef14E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std6thread7Builder4name17h994fadd2a6dd1509E(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std6thread5sleep17h23a13308e0e87a0cE(i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #1

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #30

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #31

; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc3str21_$LT$impl$u20$str$GT$12to_lowercase17h0e67131649baacd2E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #29

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #29

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64, i64) #33

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core4cell30panic_already_mutably_borrowed17h29d49366c015d3c2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #29

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core4cell22panic_already_borrowed17h1421a3fb924cdd88E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #29

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f64$GT$3fmt17hd9bcbe11d7fbf124E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #34

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #33

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #29

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @"_ZN64_$LT$std..sys..stdio..unix..Stderr$u20$as$u20$std..io..Write$GT$5write17hdaa1f89d080c2b33E"(ptr noalias noundef nonnull align 1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std3env7_var_os17h5af5bd490bdba3d6E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #35

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE() unnamed_addr #1

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE() unnamed_addr #23

; Function Attrs: cold nonlazybind uwtable
declare void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 4) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare noundef range(i64 1, 0) i64 @_ZN3std6thread8ThreadId3new17he3dd9ca51594caddE() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_ZN3std6thread6Thread3new17he81d12966881814bE(i64 noundef range(i64 1, 0), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std6thread9spawnhook15run_spawn_hooks17h8fa97b7a21c09f32E(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std6thread6scoped9ScopeData29increment_num_running_threads17h03b3ed8948d2bfa1E(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_ZN3std6thread6Thread4name17he483a2d287964a7cE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_ZN3std3sys6thread4unix6Thread3new17h440582846834072dE(i64 noundef, ptr noalias noundef readonly align 1 captures(address, read_provenance), i64, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_ZN3std6thread7current11set_current17h5eeebeaeabfcb333E(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_ZN3std7process5abort17h97870e46d5a4dcf2E() unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_ZN3std6thread6Thread5cname17he71b88de2caa7a2cE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std3sys6thread4unix8set_name17h1d999c55f7e4a211E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std6thread9spawnhook15ChildSpawnHooks3run17h1ae0a54de4e945fcE(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: cold minsize nonlazybind optsize uwtable
declare { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef) unnamed_addr #36

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() unnamed_addr #28

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h310aa922679ce93dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt5float50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$f64$GT$3fmt17h775cdd3f9382e619E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN58_$LT$std..io..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h62ceb23194058131E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN60_$LT$std..io..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17he762dae0cbfe0e23E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3fmt9Formatter10debug_list17h65c6145fdb9d161eE(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17h9f1ed223c61bd45dE(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17h3d3282282be62894E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17ha6e643308d5a4d96E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17h2d622e356fdc0336E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h3277f427d6075caeE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u64$GT$3fmt17h46cb53dc08ca4d34E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u64$GT$3fmt17h7c1093c802362d55E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17h34bfbea6236dacd0E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h50805a32588de60dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #37

; Function Attrs: nonlazybind uwtable
declare noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders9DebugList5entry17h4d43d322b4eddbe6E(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #33

; Function Attrs: nonlazybind uwtable
declare void @"_ZN60_$LT$spin..once..Finish$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1784bb9643b282d4E"(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN72_$LT$std..sys..thread..unix..Thread$u20$as$u20$core..ops..drop..Drop$GT$4drop17h558a9315bdd03fb9E"(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN76_$LT$std..thread..spawnhook..SpawnHooks$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdcfa2a90b0220483E"(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17h481967bb377c264aE() unnamed_addr #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #35

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #29

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @"_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17h04203418c0187945E"(i64 noundef, ptr noalias noundef nonnull align 1, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_fields_finish17h0cfcbb638c0202c7E(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #26

; Function Attrs: nonlazybind uwtable
declare void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #1

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef range(i64 0, -9223372036854775807), i64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #30

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h8758b9bad7525337E"(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17habcca6f8b95852b3E"(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #3

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef) unnamed_addr #38

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef) unnamed_addr #39

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr allocptr noundef, i64 noundef, i64 noundef) unnamed_addr #40

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr allocptr noundef, i64 noundef, i64 allocalign noundef, i64 noundef) unnamed_addr #41

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field3_finish17h27b603c521e4e57eE(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() unnamed_addr #42

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field4_finish17h381febbf2dfea38aE(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #33

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std6thread6scoped9ScopeData29decrement_num_running_threads17h5b616571e567f281E(ptr noundef nonnull align 8, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h27d24a5837f84932E"(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #9

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17ha56bad30c82fe40aE"(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #9

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_ZN3std9panicking11begin_panic17h3ae8d44fd2c8c89bE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #31

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17hab28a677da18dd84E(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct21finish_non_exhaustive17h515ebfc4fec2cbcbE(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare void @_ZN11parking_lot10raw_rwlock9RawRwLock18unlock_shared_slow17h0e231163cd41f1c9E(ptr noundef nonnull align 8) unnamed_addr #18

; Function Attrs: cold nonlazybind uwtable
declare void @_ZN11parking_lot10raw_rwlock9RawRwLock21unlock_exclusive_slow17h3d76446a59e1df9cE(ptr noundef nonnull align 8, i1 noundef zeroext) unnamed_addr #18

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i64 @sysconf(i32 noundef) unnamed_addr #3

; Function Attrs: cold nonlazybind uwtable
declare void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare void @_ZN6procfs7process7Process3new17h1992f5ab82d8e50cE(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN6procfs7process7Process8fd_count17h01f4a40a770f4d29E(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN6procfs7process7Process6limits17hf437febe01245655E(ptr dead_on_unwind noalias noundef writable sret([512 x i8]) align 8 captures(address) dereferenceable(512), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #35

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h092909d5f8586bb0E(i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN9hashbrown3raw11Fallibility9alloc_err17h44476d943b442629E(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #35

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h27055644a9d4e38bE"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext) unnamed_addr #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #26

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #43

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #44

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #35

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #32 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #33 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #34 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #35 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #36 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #37 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #38 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #39 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #40 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #41 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #42 = { nounwind }
attributes #43 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #44 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #45 = { noreturn }
attributes #46 = { cold }
attributes #47 = { cold noreturn nounwind }

!llvm.module.flags = !{!3, !4}
end_hunk_1
