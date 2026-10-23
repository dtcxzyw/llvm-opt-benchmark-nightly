Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_parser-e220ddae5243a2c1.nickel_lang_parser.a68346a9921300d1-cgu.0?download=true
inline.NumInlined: 76566
inline.NumDeleted: 6766
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 22
begin_hunk_0_@"_ZN126_$LT$nickel_lang_parser..ast..pattern..RecordPattern$u20$as$u20$nickel_lang_parser..ast..pattern..bindings..InjectBindings$GT$15inject_bindings17h5b13b5d7a19da3b7E":bb.a

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1728
  invoke fastcc void @"_ZN100_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h5310f34a6db5b37cE"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %3)
          to label %.noexc48 unwind label %bb.r

.noexc48:                                         ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 88
  %.sroa.4.88..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.88..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !noalias !1729
  %.sroa.08.0.copyload.i = load i64, ptr %i.b, align 8, !noalias !1728
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4.0..sroa_idx.i, i64 80, i1 false), !noalias !1728
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1728
  br label %bb.i

bb.i:                                             ; preds = %.noexc48, %bb.g
  %.sroa.04.0.i = phi i64 [ %.sroa.08.0.copyload.i, %.noexc48 ], [ 18, %bb.g ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !1727, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !1727, !noundef !19 ; 2 uses
  store i64 %.sroa.04.0.i, ptr %i.c, align 8, !noalias !1728
  %.sroa.56.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.56.0..sroa_idx7.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.4.i, i64 96, i1 false), !noalias !1728
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store ptr %i.ae, ptr %i.ah, align 8, !noalias !1728
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store i64 %i.ag, ptr %i.ai, align 8, !noalias !1728
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.ak = load i8, ptr %i.aj, align 8, !range !21, !alias.scope !1727, !noundef !19
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 193
  %i.am = load i8, ptr %i.al, align 1, !range !21, !alias.scope !1727, !noundef !19
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !range !41, !alias.scope !1727, !noundef !19 ; 3 uses
  %i.ap = icmp ne i64 %i.ao, -9223372036854775805
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nsw i64 %i.ao, 9223372036854775807
  %i.ar = icmp ugt i64 %i.ao, -9223372036854775808
  %i.as = select i1 %i.ar, i64 %i.aq, i64 2
  switch i64 %i.as, label %bb.j [
    i64 0, label %bb.t
    i64 1, label %bb.k
    i64 2, label %bb.l
    i64 3, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i
  br label %bb.t

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1728
  invoke fastcc void @"_ZN60_$LT$malachite_q..Rational$u20$as$u20$core..clone..Clone$GT$5clone17hb26a37bf83f480deE"(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.an)
          to label %bb.o unwind label %bb.n, !noalias !1729

bb.m:                                             ; preds = %bb.i
  br label %bb.t

bb.n:                                             ; preds = %bb.l
  %i.at = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17hd5a011e7b9efacffE"(ptr noalias noundef align 8 dereferenceable(120) %i.c) #53, !noalias !1728
  br label %.body

bb.o:                                             ; preds = %bb.l
  %.sroa.01.0.copyload2.i = load i64, ptr %i.a, align 8, !noalias !1728
  %.sroa.7.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx3.i, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1728
  br label %bb.t

bb.p:                                             ; preds = %bb.f, %bb.t
  %.sroa.03.sroa.6.0 = phi i64 [ %i.ag, %bb.t ], [ 0, %bb.f ]
  %.sroa.03.sroa.5.0 = phi ptr [ %i.ae, %bb.t ], [ inttoptr (i64 8 to ptr), %bb.f ]
  %.sroa.03.sroa.7.sroa.0.0 = phi i64 [ %.sroa.01.0.i, %bb.t ], [ -9223372036854775806, %bb.f ]
  %.sroa.03.sroa.0.sroa.0.0 = phi i64 [ %.sroa.04.0.i, %bb.t ], [ 18, %bb.f ]
  %.sroa.9.0 = phi i8 [ %i.am, %bb.t ], [ 0, %bb.f ]
  %.sroa.8.0 = phi i8 [ %i.ak, %bb.t ], [ 0, %bb.f ]
  %.sroa.7.0 = phi i64 [ %.sroa.5.0.i, %bb.t ], [ undef, %bb.f ]
  %.sroa.6.0 = phi ptr [ %i.y, %bb.t ], [ null, %bb.f ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  store i64 %.sroa.0.0.copyload, ptr %i.au, align 8
  %.sroa.5.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  store ptr %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx54, align 8
  %.sroa.6.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx57, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.av, ptr noundef nonnull align 8 dereferenceable(20) %i.t, i64 20, i1 false)
  store i64 %.sroa.03.sroa.0.sroa.0.0, ptr %i.d, align 8
  %.sroa.03.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.03.sroa.0.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.03.sroa.0.sroa.5, i64 96, i1 false)
  %.sroa.03.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store ptr %.sroa.03.sroa.5.0, ptr %.sroa.03.sroa.5.0..sroa_idx, align 8
  %.sroa.03.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store i64 %.sroa.03.sroa.6.0, ptr %.sroa.03.sroa.6.0..sroa_idx, align 8
  %.sroa.03.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store i64 %.sroa.03.sroa.7.sroa.0.0, ptr %.sroa.03.sroa.7.0..sroa_idx, align 8
  %.sroa.03.sroa.7.sroa.5.0..sroa.03.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.03.sroa.7.sroa.5.0..sroa.03.sroa.7.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.i, i64 48, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  store i8 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 193
  store i8 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.sroa.0.sroa.5)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1726)
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !1726, !noundef !19 ; 3 uses
  %i.ay = load i64, ptr %1, align 8, !range !38, !alias.scope !1726, !noundef !19
  %i.az = icmp eq i64 %i.ax, %i.ay
  br i1 %i.az, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17he9d004638fe8d0d0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @28)
          to label %bb.u unwind label %bb.c, !noalias !1730

bb.r:                                             ; preds = %bb.h
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %bb.r
  %eh.lpad-body = phi { ptr, i32 } [ %i.ba, %bb.r ], [ %i.at, %bb.n ] ; 2 uses
  %i.bb = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.bb, label %.thread, label %bb.s

bb.s:                                             ; preds = %.body
  %i.bc = mul nuw i64 %.sroa.0.0.copyload, 20
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %i.bc, i64 noundef range(i64 1, -9223372036854775807) 4) #54
  br label %.thread

bb.t:                                             ; preds = %bb.o, %bb.m, %bb.k, %bb.i
  %.sroa.01.0.i = phi i64 [ -9223372036854775804, %bb.m ], [ -9223372036854775806, %bb.k ], [ %.sroa.01.0.copyload2.i, %bb.o ], [ -9223372036854775807, %bb.i ]
  %.not.i = icmp eq ptr %i.y, null
  %.sroa.5.0.i = select i1 %.not.i, i64 undef, i64 %i.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.03.sroa.0.sroa.5, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.4.i, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1728
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  br label %bb.p

bb.u:                                             ; preds = %bb.q, %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !1726, !nonnull !19, !noundef !19
  %i.bf = getelementptr inbounds nuw [248 x i8], ptr %i.be, i64 %i.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.bf, ptr noundef nonnull readonly align 8 dereferenceable(248) %i.d, i64 248, i1 false), !noalias !1726
  %i.bg = add i64 %i.ax, 1
  store i64 %i.bg, ptr %i.aw, align 8, !alias.scope !1726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17h5b3ca68191d56101E.exit52"

.thread:                                          ; preds = %bb.v, %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body, %bb.s, %bb.c
  %.pn64 = phi { ptr, i32 } [ %i.w, %bb.c ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.s ], [ %lpad.loopexit.split-lp89, %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp89, %bb.v ]
  resume { ptr, i32 } %.pn64

.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.us, %bb.d, %.split
  %lpad.loopexit.split-lp89 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val44 = load i64, ptr %2, align 8             ; 2 uses
  %i.bh = icmp eq i64 %.val44, 0
  br i1 %i.bh, label %.thread, label %bb.v

bb.v:                                             ; preds = %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bi = mul nuw i64 %.val44, 20
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.bi, i64 noundef range(i64 1, -9223372036854775807) 4) #54
  br label %.thread

"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17h5b3ca68191d56101E.exit52": ; preds = %bb.w, %.critedge, %bb.u
  ret void

.critedge:                                        ; preds = %._crit_edge
  %.val42 = load i64, ptr %2, align 8             ; 2 uses
  %i.bj = icmp eq i64 %.val42, 0
  br i1 %i.bj, label %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17h5b3ca68191d56101E.exit52", label %bb.w

bb.w:                                             ; preds = %.critedge
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val43 = load ptr, ptr %i.bk, align 8, !nonnull !19, !noundef !19
  %i.bl = mul nuw i64 %.val42, 20
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val43, i64 noundef %i.bl, i64 noundef range(i64 1, -9223372036854775807) 4) #54
  br label %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17h5b3ca68191d56101E.exit52"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref17had6f0c22304a76e5E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [1 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !19, !nonnull !19
  %i.l = tail call { i64, ptr } %i.k(ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3) ; 2 uses
  %i.m = extractvalue { i64, ptr } %i.l, 0
  switch i64 %i.m, label %bb.b [
    i64 0, label %bb.d
    i64 1, label %bb.c
    i64 2, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit"
    i64 3, label %4
  ]

default.unreachable384:                           ; preds = %bb.e
  unreachable

bb.b:                                             ; preds = %bb.a
  unreachable

4:                                                ; preds = %bb.a
  %5 = extractvalue { i64, ptr } %i.l, 1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %5) ]
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit"

bb.c:                                             ; preds = %bb.a
  store i8 0, ptr %i.i, align 1
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i8 1, ptr %i.i, align 1
  %6 = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %7 = phi ptr [ %6, %bb.d ], [ %3, %bb.c ]       ; 25 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i8, ptr %i.n, align 8, !range !29, !noundef !19
  switch i8 %i.o, label %default.unreachable384 [
    i8 0, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit"
    i8 1, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit"
    i8 2, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit"
    i8 3, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit"
    i8 4, label %bb.f
    i8 5, label %bb.i
    i8 6, label %bb.k
    i8 7, label %bb.n
    i8 8, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit"
    i8 9, label %bb.p
    i8 10, label %bb.q
    i8 11, label %bb.w
    i8 12, label %bb.y
    i8 13, label %bb.ab
    i8 14, label %bb.ad
    i8 15, label %bb.af
    i8 16, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit"
    i8 17, label %bb.ah
    i8 18, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit"
  ]

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load i64, ptr %i.r, align 8, !noundef !19 ; 2 uses
  %.idx462.a = mul nuw nsw i64 %i.s, 56
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx462.a
  %i.u = icmp eq i64 %i.s, 0
  br i1 %i.u, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit", label %.lr.ph451

bb.g:                                             ; preds = %"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref28_$u7b$$u7b$closure$u7d$$u7d$17heb3fb1e9ee925762E.exit"
  %i.v = icmp eq ptr %i.w, %i.t
  br i1 %i.v, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit", label %.lr.ph451

.lr.ph451:                                        ; preds = %bb.f, %bb.g
  %.sroa.0119.0449 = phi ptr [ %i.w, %bb.g ], [ %i.q, %bb.f ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0119.0449, i64 56 ; 2 uses
  %i.x = load i32, ptr %.sroa.0119.0449, align 8, !range !28, !alias.scope !1908, !noalias !1909, !noundef !19
  %.not.i61 = icmp eq i32 %i.x, 3
  br i1 %.not.i61, label %"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref28_$u7b$$u7b$closure$u7d$$u7d$17heb3fb1e9ee925762E.exit", label %bb.h

bb.h:                                             ; preds = %.lr.ph451
  %i.y = call fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref17had6f0c22304a76e5E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.0119.0449, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %7), !noalias !1910, !inline_history !1736
  br label %"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref28_$u7b$$u7b$closure$u7d$$u7d$17heb3fb1e9ee925762E.exit"

"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref28_$u7b$$u7b$closure$u7d$$u7d$17heb3fb1e9ee925762E.exit": ; preds = %.lr.ph451, %bb.h
  %.sroa.0.0.i62 = phi ptr [ %i.y, %bb.h ], [ null, %.lr.ph451 ] ; 2 uses
  %.not7.i = icmp eq ptr %.sroa.0.0.i62, null
  br i1 %.not7.i, label %bb.g, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit"

bb.i:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !19 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !19, !align !24, !noundef !19
  %.idx461.a = shl nuw nsw i64 %i.ac, 6
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx461.a
  %i.ag = icmp eq i64 %i.ac, 0
  br i1 %i.ag, label %._crit_edge448, label %.lr.ph447

bb.j:                                             ; preds = %.lr.ph447
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0124.0445, i64 64 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.af
  br i1 %i.ai, label %._crit_edge448, label %.lr.ph447

.lr.ph447:                                        ; preds = %bb.i, %bb.j
  %.sroa.0124.0445 = phi ptr [ %i.ah, %bb.j ], [ %i.aa, %bb.i ] ; 2 uses
  %i.aj = call fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN141_$LT$nickel_lang_parser..ast..pattern..Pattern$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref17hc4d3c296b72c9892E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.0124.0445, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %7), !noalias !1911, !inline_history !1741 ; 2 uses
  %.not7.i30 = icmp eq ptr %i.aj, null
  br i1 %.not7.i30, label %bb.j, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit"

._crit_edge448:                                   ; preds = %bb.j, %bb.i
  %i.ak = call fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref17had6f0c22304a76e5E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ae, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %7), !noalias !1912, !inline_history !1747
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit"

bb.k:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !noundef !19 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !19, !align !24, !noundef !19
  %.idx459.a = mul nuw nsw i64 %i.ao, 248
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx459.a
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.au = icmp eq i64 %i.ao, 0
  br i1 %i.au, label %._crit_edge, label %select.unfold.peel.begin

bb.l:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$7or_else17h240af93cce7e4cd3E.exit"
  %i.av = icmp eq ptr %i.aw, %i.ar
  br i1 %i.av, label %._crit_edge, label %select.unfold.peel.begin

select.unfold.peel.begin:                         ; preds = %bb.k, %bb.l
  %.sroa.0138.0444 = phi ptr [ %i.aw, %bb.l ], [ %i.am, %bb.k ] ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0138.0444, i64 248 ; 2 uses
  %i.ax = load i64, ptr %.sroa.0138.0444, align 8, !range !32, !alias.scope !1913, !noalias !1914, !noundef !19
  %.not.i73 = icmp eq i64 %i.ax, 18
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0138.0444, i64 104
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !1913, !noalias !1914, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0138.0444, i64 112
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !1913, !noalias !1914, !noundef !19 ; 2 uses
  %.idx460.a = mul nuw nsw i64 %i.bb, 104
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 %.idx460.a
  br i1 %.not.i73, label %.preheader.preheader, label %bb.m

bb.m:                                             ; preds = %select.unfold.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1915
  store ptr %1, ptr %i.d, align 8, !noalias !1915
  store ptr %2, ptr %i.as, align 8, !noalias !1915
  %i.bd = call fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN140_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h2fc2f6f8a09139a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %.sroa.0138.0444, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @72, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %7), !noalias !1916, !inline_history !1768 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1915
  %.not7.i.i.peel = icmp eq ptr %i.bd, null
  br i1 %.not7.i.i.peel, label %.preheader.preheader, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit"

.preheader.preheader:                             ; preds = %bb.m, %select.unfold.peel.begin
  %i.be = icmp eq i64 %i.bb, 0
  br i1 %i.be, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h240af93cce7e4cd3E.exit", label %.lr.ph443

.preheader:                                       ; preds = %.lr.ph443
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.8231.0442, i64 104 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.bc
  br i1 %i.bg, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h240af93cce7e4cd3E.exit", label %.lr.ph443

.lr.ph443:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.8231.0442 = phi ptr [ %i.bf, %.preheader ], [ %i.az, %.preheader.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1917
  store ptr %1, ptr %i.c, align 8, !noalias !1917
  store ptr %2, ptr %i.at, align 8, !noalias !1917
  %i.bh = call fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN140_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h2fc2f6f8a09139a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %.sroa.8231.0442, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @72, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %7), !noalias !1918, !inline_history !1779 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1917
  %.not7.i11.i = icmp eq ptr %i.bh, null
  br i1 %.not7.i11.i, label %.preheader, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit"

"_ZN4core6option15Option$LT$T$GT$7or_else17h240af93cce7e4cd3E.exit": ; preds = %.preheader, %.preheader.preheader
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0138.0444, i64 200
  %i.bj = call fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref17had6f0c22304a76e5E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bi, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %7), !noalias !1919, !inline_history !1785 ; 2 uses
  %.not7.i35 = icmp eq ptr %i.bj, null
  br i1 %.not7.i35, label %bb.l, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit"

._crit_edge:                                      ; preds = %bb.l, %bb.k
  %i.bk = call fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref17had6f0c22304a76e5E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aq, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %7), !noalias !1920, !inline_history !1791
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit"

bb.n:                                             ; preds = %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !nonnull !19, !align !24, !noundef !19
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !19, !align !24, !noundef !19
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bq = load i64, ptr %i.bp, align 8, !noundef !19
  %i.br = call fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref17had6f0c22304a76e5E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bm, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %7) ; 2 uses
  %.not.i39 = icmp eq ptr %i.br, null
  br i1 %.not.i39, label %bb.o, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit"

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1921
  store ptr %i.bo, ptr %i.h, align 8, !noalias !1922
  %.sroa.4148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.bq, ptr %.sroa.4148.0..sroa_idx, align 8, !noalias !1922
  %.sroa.5149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %1, ptr %.sroa.5149.0..sroa_idx, align 8, !noalias !1922
  %.sroa.6150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %2, ptr %.sroa.6150.0..sroa_idx, align 8, !noalias !1922
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %7, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !1922
  %i.bs = call fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref28_$u7b$$u7b$closure$u7d$$u7d$17heb3970acf4166134E"(ptr noalias noundef readonly align 8 captures(address) dereferenceable(40) %i.h), !noalias !1921, !inline_history !1795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1921
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit"

bb.p:                                             ; preds = %bb.e
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !align !24, !noundef !19 ; 2 uses
  %.not28 = icmp eq ptr %i.bu, null
  br i1 %.not28, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit", label %bb.ai

bb.q:                                             ; preds = %bb.e
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.ca = load i64, ptr %i.bz, align 8, !noundef !19 ; 2 uses
  %.idx456.a = mul nuw nsw i64 %i.ca, 280
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx456.a
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ce = icmp eq i64 %i.ca, 0
  br i1 %i.ce, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit", label %.lr.ph437.a

bb.r:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$7or_else17hbe27006e95a50665E.exit"
  %i.cf = icmp eq ptr %i.cg, %i.cb
  br i1 %i.cf, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit", label %.lr.ph437.a

.lr.ph437.a:                                      ; preds = %bb.q, %bb.r
  %.sroa.0151.0436 = phi ptr [ %i.cg, %bb.r ], [ %i.by, %bb.q ] ; 8 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0151.0436, i64 280 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1923)
  call void @llvm.experimental.noalias.scope.decl(metadata !1924), !noalias !1925
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0151.0436, i64 264
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !1926, !noalias !1925, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0151.0436, i64 272
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !1926, !noalias !1925, !noundef !19 ; 2 uses
  %.idx457.a = mul nuw nsw i64 %i.ck, 48
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.idx457.a
  %i.cm = icmp eq i64 %i.ck, 0
  br i1 %i.cm, label %select.unfold292.peel.begin, label %.lr.ph433

bb.s:                                             ; preds = %"_ZN141_$LT$nickel_lang_parser..ast..record..FieldDef$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref28_$u7b$$u7b$closure$u7d$$u7d$17h58874e327dc43e76E.exit.i"
  %i.cn = icmp eq ptr %i.co, %i.cl
  br i1 %i.cn, label %select.unfold292.peel.begin, label %.lr.ph433

.lr.ph433:                                        ; preds = %.lr.ph437.a, %bb.s
  %.sroa.0196.0432 = phi ptr [ %i.co, %bb.s ], [ %i.ci, %.lr.ph437.a ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0196.0432, i64 48 ; 2 uses
  %i.cp = load i32, ptr %.sroa.0196.0432, align 8, !range !28, !alias.scope !1927, !noalias !1928, !noundef !19
  %.not.i.i89 = icmp eq i32 %i.cp, 3
  br i1 %.not.i.i89, label %"_ZN141_$LT$nickel_lang_parser..ast..record..FieldDef$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref28_$u7b$$u7b$closure$u7d$$u7d$17h58874e327dc43e76E.exit.i", label %bb.t

bb.t:                                             ; preds = %.lr.ph433
  %i.cq = call fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref17had6f0c22304a76e5E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.0196.0432, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %7), !noalias !1929, !inline_history !1809
  br label %"_ZN141_$LT$nickel_lang_parser..ast..record..FieldDef$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref28_$u7b$$u7b$closure$u7d$$u7d$17h58874e327dc43e76E.exit.i"

"_ZN141_$LT$nickel_lang_parser..ast..record..FieldDef$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref28_$u7b$$u7b$closure$u7d$$u7d$17h58874e327dc43e76E.exit.i": ; preds = %bb.t, %.lr.ph433
  %.sroa.0.0.i8.i = phi ptr [ %i.cq, %bb.t ], [ null, %.lr.ph433 ] ; 2 uses
  %.not7.i90 = icmp eq ptr %.sroa.0.0.i8.i, null
  br i1 %.not7.i90, label %bb.s, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit"

select.unfold292.peel.begin:                      ; preds = %bb.s, %.lr.ph437.a
  %i.cr = load i64, ptr %.sroa.0151.0436, align 8, !range !32, !alias.scope !1930, !noalias !1931, !noundef !19
  %.not.i.i85 = icmp eq i64 %i.cr, 18
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0151.0436, i64 104
  %i.ct = load ptr, ptr %i.cs, align 8, !alias.scope !1930, !noalias !1931, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0151.0436, i64 112
  %i.cv = load i64, ptr %i.cu, align 8, !alias.scope !1930, !noalias !1931, !noundef !19 ; 2 uses
  %.idx458 = mul nuw nsw i64 %i.cv, 104
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.idx458
  br i1 %.not.i.i85, label %.preheader327.preheader, label %bb.u

bb.u:                                             ; preds = %select.unfold292.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1932
  store ptr %1, ptr %i.b, align 8, !noalias !1932
  store ptr %2, ptr %i.cc, align 8, !noalias !1932
  %i.cx = call fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN140_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h2fc2f6f8a09139a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %.sroa.0151.0436, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @72, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %7), !noalias !1933, !inline_history !1831 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1932
  %.not7.i.i110.peel = icmp eq ptr %i.cx, null
  br i1 %.not7.i.i110.peel, label %.preheader327.preheader, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit"

.preheader327.preheader:                          ; preds = %bb.u, %select.unfold292.peel.begin
  %i.cy = icmp eq i64 %i.cv, 0
  br i1 %i.cy, label %.preheader327._crit_edge, label %.lr.ph435

.preheader327:                                    ; preds = %.lr.ph435
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.8246.0434, i64 104 ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.cw
  br i1 %i.da, label %.preheader327._crit_edge, label %.lr.ph435

.lr.ph435:                                        ; preds = %.preheader327.preheader, %.preheader327
  %.sroa.8246.0434 = phi ptr [ %i.cz, %.preheader327 ], [ %i.ct, %.preheader327.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1934
  store ptr %1, ptr %i.a, align 8, !noalias !1934
  store ptr %2, ptr %i.cd, align 8, !noalias !1934
  %i.db = call fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN140_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h2fc2f6f8a09139a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %.sroa.8246.0434, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @72, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %7), !noalias !1935, !inline_history !1842 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1934
  %.not7.i11.i103 = icmp eq ptr %i.db, null
  br i1 %.not7.i11.i103, label %.preheader327, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit"

.preheader327._crit_edge:                         ; preds = %.preheader327, %.preheader327.preheader
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0151.0436, i64 216 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 8, !range !28, !noalias !1936, !noundef !19
  %.not.i.i81 = icmp eq i32 %i.dd, 3
  br i1 %.not.i.i81, label %"_ZN4core6option15Option$LT$T$GT$7or_else17hbe27006e95a50665E.exit", label %bb.v

bb.v:                                             ; preds = %.preheader327._crit_edge
  %i.de = call fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref17had6f0c22304a76e5E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dc, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %7), !noalias !1937, !inline_history !1850
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17hbe27006e95a50665E.exit"

"_ZN4core6option15Option$LT$T$GT$7or_else17hbe27006e95a50665E.exit": ; preds = %.preheader327._crit_edge, %bb.v
  %.sroa.0.0.i80 = phi ptr [ null, %.preheader327._crit_edge ], [ %i.de, %bb.v ] ; 2 uses
  %.not7.i42 = icmp eq ptr %.sroa.0.0.i80, null
  br i1 %.not7.i42, label %bb.r, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit"

bb.w:                                             ; preds = %bb.e
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !nonnull !19, !align !24, !noundef !19
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !nonnull !19, !align !24, !noundef !19
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dk = load ptr, ptr %i.dj, align 8, !nonnull !19, !align !24, !noundef !19
  %i.dl = call fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref17had6f0c22304a76e5E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dg, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %7) ; 2 uses
  %.not.i44 = icmp eq ptr %i.dl, null
  br i1 %.not.i44, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h39ab7a722079dfc0E.exit", label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit"

"_ZN4core6option15Option$LT$T$GT$7or_else17h39ab7a722079dfc0E.exit": ; preds = %bb.w
  %i.dm = call fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref17had6f0c22304a76e5E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.di, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %7), !noalias !1938, !inline_history !1856 ; 2 uses
  %.not.i46 = icmp eq ptr %i.dm, null
  br i1 %.not.i46, label %bb.x, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit"

bb.x:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$7or_else17h39ab7a722079dfc0E.exit"
  %i.dn = call fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref17had6f0c22304a76e5E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dk, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %7), !noalias !1939, !inline_history !1862
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit"

bb.y:                                             ; preds = %bb.e
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dr = load i64, ptr %i.dq, align 8, !noundef !19 ; 2 uses
  %.idx455 = mul nuw nsw i64 %i.dr, 160
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.idx455
  %i.dt = icmp eq i64 %i.dr, 0
  br i1 %i.dt, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit", label %.lr.ph426

bb.z:                                             ; preds = %"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref28_$u7b$$u7b$closure$u7d$$u7d$17h633e6d44b8e0c4dfE.exit"
  %i.du = icmp eq ptr %i.dv, %i.ds
  br i1 %i.du, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit", label %.lr.ph426

.lr.ph426:                                        ; preds = %bb.y, %bb.z
  %.sroa.0156.0425 = phi ptr [ %i.dv, %bb.z ], [ %i.dp, %bb.y ] ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0156.0425, i64 160 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0156.0425, i64 112 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0156.0425, i64 64
  %i.dy = call fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN141_$LT$nickel_lang_parser..ast..pattern..Pattern$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref17hc4d3c296b72c9892E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %.sroa.0156.0425, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %7), !noalias !1940, !inline_history !1867 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dy, null
  br i1 %.not.i.i, label %bb.aa, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit"

bb.aa:                                            ; preds = %.lr.ph426
  %i.dz = load i32, ptr %i.dw, align 8, !range !28, !noalias !1941, !noundef !19
  %.not.i92 = icmp eq i32 %i.dz, 3
  br i1 %.not.i92, label %"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref28_$u7b$$u7b$closure$u7d$$u7d$17h633e6d44b8e0c4dfE.exit", label %"_ZN4core6option15Option$LT$T$GT$7or_else17he79cc9e58726855bE.exit.i"

"_ZN4core6option15Option$LT$T$GT$7or_else17he79cc9e58726855bE.exit.i": ; preds = %bb.aa
  %i.ea = call fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref17had6f0c22304a76e5E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dw, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %7), !noalias !1941, !inline_history !1873 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.ea, null
  br i1 %.not.i1.i, label %"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref28_$u7b$$u7b$closure$u7d$$u7d$17h633e6d44b8e0c4dfE.exit", label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit"

"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref28_$u7b$$u7b$closure$u7d$$u7d$17h633e6d44b8e0c4dfE.exit": ; preds = %bb.aa, %"_ZN4core6option15Option$LT$T$GT$7or_else17he79cc9e58726855bE.exit.i"
  %i.eb = call fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref17had6f0c22304a76e5E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dx, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %7), !noalias !1942, !inline_history !1879 ; 2 uses
  %.not7.i49 = icmp eq ptr %i.eb, null
  br i1 %.not7.i49, label %bb.z, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit"

bb.ab:                                            ; preds = %bb.e
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ef = load i64, ptr %i.ee, align 8, !noundef !19 ; 2 uses
  %.idx454 = mul nuw nsw i64 %i.ef, 48
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.idx454
  %i.eh = icmp eq i64 %i.ef, 0
  br i1 %i.eh, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit", label %.lr.ph421

bb.ac:                                            ; preds = %.lr.ph421
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0164.0420, i64 48 ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.eg
  br i1 %i.ej, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit", label %.lr.ph421

.lr.ph421:                                        ; preds = %bb.ab, %bb.ac
  %.sroa.0164.0420 = phi ptr [ %i.ei, %bb.ac ], [ %i.ed, %bb.ab ] ; 2 uses
  %i.ek = call fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref17had6f0c22304a76e5E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.0164.0420, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %7), !noalias !1943, !inline_history !1884 ; 2 uses
  %.not7.i52 = icmp eq ptr %i.ek, null
  br i1 %.not7.i52, label %bb.ac, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit"

bb.ad:                                            ; preds = %bb.e
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.em = load ptr, ptr %i.el, align 8, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.eo = load i64, ptr %i.en, align 8, !noundef !19 ; 2 uses
  %.idx = mul nuw nsw i64 %i.eo, 48
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 %.idx
  %i.eq = icmp eq i64 %i.eo, 0
  br i1 %i.eq, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit", label %.lr.ph

bb.ae:                                            ; preds = %.lr.ph
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0133.0417, i64 48 ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.ep
  br i1 %i.es, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.ad, %bb.ae
  %.sroa.0133.0417 = phi ptr [ %i.er, %bb.ae ], [ %i.em, %bb.ad ] ; 2 uses
  %i.et = call fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref17had6f0c22304a76e5E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.0133.0417, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %7), !noalias !1944, !inline_history !1889 ; 2 uses
  %.not7.i55 = icmp eq ptr %i.et, null
  br i1 %.not7.i55, label %bb.ae, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit"

bb.af:                                            ; preds = %bb.e
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8, !nonnull !19, !align !24, !noundef !19 ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ex = load ptr, ptr %i.ew, align 8, !nonnull !19, !align !24, !noundef !19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1945)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1946
  %i.ey = load i64, ptr %i.ev, align 8, !range !32, !alias.scope !1945, !noundef !19
  %.not.i57 = icmp eq i64 %i.ey, 18
  %..i = select i1 %.not.i57, ptr null, ptr %i.ev
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 104
  %i.fa = load ptr, ptr %i.ez, align 8, !alias.scope !1945, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ev, i64 112
  %i.fc = load i64, ptr %i.fb, align 8, !alias.scope !1945, !noundef !19
  %i.fd = getelementptr inbounds nuw [104 x i8], ptr %i.fa, i64 %i.fc
  store i64 1, ptr %i.g, align 8, !alias.scope !1947, !noalias !1948
  %i.fe = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %..i, ptr %i.fe, align 8, !alias.scope !1947, !noalias !1948
  %i.ff = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.fa, ptr %i.ff, align 8, !alias.scope !1947, !noalias !1948
  %i.fg = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.fd, ptr %i.fg, align 8, !alias.scope !1947, !noalias !1948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1946
  store ptr %1, ptr %i.f, align 8, !noalias !1946
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1946
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %7, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1946
  %i.fh = call fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h87f6053fb7ef4dafE"(ptr noalias noundef align 8 dereferenceable(32) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f), !inline_history !1896 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1946
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1946
  %.not.i59 = icmp eq ptr %i.fh, null
  br i1 %.not.i59, label %bb.ag, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit"

bb.ag:                                            ; preds = %bb.af
  %i.fi = call fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref17had6f0c22304a76e5E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ex, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %7), !noalias !1949, !inline_history !1902
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit"

bb.ah:                                            ; preds = %bb.e
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8, !nonnull !19, !align !24, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1950
  store ptr %1, ptr %i.e, align 8, !noalias !1950
  %i.fl = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %2, ptr %i.fl, align 8, !noalias !1950
  %i.fm = call fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN140_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h2fc2f6f8a09139a4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.fk, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @72, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %7), !inline_history !1907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1950
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit"

bb.ai:                                            ; preds = %bb.p
  %i.fn = call fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref17had6f0c22304a76e5E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bu, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %7)
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17he0caea9ea9e7d968E.exit": ; preds = %bb.ae, %.lr.ph, %bb.ac, %.lr.ph421, %.lr.ph426, %"_ZN4core6option15Option$LT$T$GT$7or_else17he79cc9e58726855bE.exit.i", %bb.z, %"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref28_$u7b$$u7b$closure$u7d$$u7d$17h633e6d44b8e0c4dfE.exit", %bb.r, %"_ZN4core6option15Option$LT$T$GT$7or_else17hbe27006e95a50665E.exit", %bb.u, %"_ZN141_$LT$nickel_lang_parser..ast..record..FieldDef$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref28_$u7b$$u7b$closure$u7d$$u7d$17h58874e327dc43e76E.exit.i", %.lr.ph435, %bb.m, %"_ZN4core6option15Option$LT$T$GT$7or_else17h240af93cce7e4cd3E.exit", %.lr.ph443, %.lr.ph447, %bb.g, %"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref28_$u7b$$u7b$closure$u7d$$u7d$17heb3fb1e9ee925762E.exit", %bb.ad, %bb.ab, %bb.y, %bb.q, %bb.f, %bb.p, %bb.a, %4, %bb.ai, %bb.ah, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %._crit_edge448, %._crit_edge, %bb.n, %bb.o, %"_ZN4core6option15Option$LT$T$GT$7or_else17h39ab7a722079dfc0E.exit", %bb.x, %bb.af, %bb.ag, %bb.w
  %.sroa.0.2 = phi ptr [ %.sroa.0.0.i8.i, %"_ZN141_$LT$nickel_lang_parser..ast..record..FieldDef$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref28_$u7b$$u7b$closure$u7d$$u7d$17h58874e327dc43e76E.exit.i" ], [ null, %bb.e ], [ %i.db, %.lr.ph435 ], [ %i.bh, %.lr.ph443 ], [ %.sroa.0.0.i62, %"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref28_$u7b$$u7b$closure$u7d$$u7d$17heb3fb1e9ee925762E.exit" ], [ %i.fn, %bb.ai ], [ %i.br, %bb.n ], [ null, %bb.ad ], [ null, %bb.y ], [ %i.dl, %bb.w ], [ %i.fi, %bb.ag ], [ null, %bb.p ], [ %i.fm, %bb.ah ], [ null, %bb.e ], [ null, %bb.e ], [ null, %bb.e ], [ null, %bb.e ], [ null, %bb.e ], [ null, %bb.e ], [ %i.fh, %bb.af ], [ %i.ak, %._crit_edge448 ], [ %i.bk, %._crit_edge ], [ %i.bs, %bb.o ], [ %i.bd, %bb.m ], [ %5, %4 ], [ %i.dn, %bb.x ], [ %i.dm, %"_ZN4core6option15Option$LT$T$GT$7or_else17h39ab7a722079dfc0E.exit" ], [ %i.cx, %bb.u ], [ null, %bb.a ], [ null, %bb.ac ], [ null, %bb.f ], [ %i.eb, %"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref28_$u7b$$u7b$closure$u7d$$u7d$17h633e6d44b8e0c4dfE.exit" ], [ %i.aj, %.lr.ph447 ], [ null, %bb.ab ], [ null, %bb.q ], [ null, %bb.g ], [ %i.bj, %"_ZN4core6option15Option$LT$T$GT$7or_else17h240af93cce7e4cd3E.exit" ], [ %.sroa.0.0.i80, %"_ZN4core6option15Option$LT$T$GT$7or_else17hbe27006e95a50665E.exit" ], [ null, %bb.r ], [ null, %bb.z ], [ %i.ea, %"_ZN4core6option15Option$LT$T$GT$7or_else17he79cc9e58726855bE.exit.i" ], [ %i.dy, %.lr.ph426 ], [ %i.ek, %.lr.ph421 ], [ %i.et, %.lr.ph ], [ null, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret ptr %.sroa.0.2
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref28_$u7b$$u7b$closure$u7d$$u7d$17heb3970acf4166134E"(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !19 ; 2 uses
  %.idx = mul nuw nsw i64 %i.c, 48
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !19, !align !18, !noundef !19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !19, !align !24, !noundef !19
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !19, !align !18, !noundef !19
  %i.k = icmp eq i64 %i.c, 0
  br i1 %i.k, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h29f5df8d68c37c59E.exit", label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 48 ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.d
  br i1 %i.m, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h29f5df8d68c37c59E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.06 = phi ptr [ %i.l, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.n = tail call fastcc noundef align 8 dereferenceable_or_null(48) ptr @"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref17had6f0c22304a76e5E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.0.06, ptr noundef nonnull align 1 %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.j), !noalias !1956, !inline_history !1955 ; 2 uses
  %.not7.i = icmp eq ptr %i.n, null
  br i1 %.not7.i, label %bb.b, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h29f5df8d68c37c59E.exit"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h29f5df8d68c37c59E.exit": ; preds = %.lr.ph, %bb.b, %bb.a
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ %i.n, %.lr.ph ], [ null, %bb.b ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nounwind nonlazybind uwtable
define void @"_ZN128_$LT$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$u20$as$u20$core..ops..drop..Drop$GT$4drop17h178b7630ab82e489E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(112) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1975)
  %.val.i = load i64, ptr %0, align 8, !alias.scope !1975 ; 2 uses
  %i.a = icmp eq i64 %.val.i, 0
  br i1 %i.a, label %"_ZN4core3ptr59drop_in_place$LT$nickel_lang_parser..identifier..Bitmap$GT$17h43f3cbd5d980c9d2E.exit.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4.i = load ptr, ptr %i.b, align 8, !alias.scope !1975, !nonnull !19, !noundef !19
  %i.c = shl nuw i64 %.val.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !1975
  br label %"_ZN4core3ptr59drop_in_place$LT$nickel_lang_parser..identifier..Bitmap$GT$17h43f3cbd5d980c9d2E.exit.i"

"_ZN4core3ptr59drop_in_place$LT$nickel_lang_parser..identifier..Bitmap$GT$17h43f3cbd5d980c9d2E.exit.i": ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val11.i = load i64, ptr %i.d, align 8, !alias.scope !1975 ; 2 uses
  %i.e = icmp eq i64 %.val11.i, 0
  br i1 %i.e, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hd55e49199d5b8e07E.exit15.i", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr59drop_in_place$LT$nickel_lang_parser..identifier..Bitmap$GT$17h43f3cbd5d980c9d2E.exit.i"
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val12.i = load ptr, ptr %i.f, align 8, !alias.scope !1975, !nonnull !19, !noundef !19
  %i.g = shl nuw i64 %.val11.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !1975
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hd55e49199d5b8e07E.exit15.i"

"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hd55e49199d5b8e07E.exit15.i": ; preds = %bb.c, %"_ZN4core3ptr59drop_in_place$LT$nickel_lang_parser..identifier..Bitmap$GT$17h43f3cbd5d980c9d2E.exit.i"
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val7.i = load ptr, ptr %i.h, align 8, !alias.scope !1975 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val8.i = load i64, ptr %i.i, align 8, !alias.scope !1975, !noundef !19 ; 4 uses
  %i.j = icmp eq i64 %.val8.i, 0
  br i1 %i.j, label %"_ZN4core3ptr123drop_in_place$LT$std..collections..hash..map..HashMap$LT$$RF$str$C$nickel_lang_parser..identifier..interner..Symbol$GT$$GT$17h781e6d54c3da3f0fE.exit.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i: ; preds = %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hd55e49199d5b8e07E.exit15.i"
  %i.k = mul i64 %.val8.i, 24
  %i.l = icmp slt i64 %.val8.i, 768614336404564650
  tail call void @llvm.assume(i1 %i.l)
  %i.m = and i64 %i.k, -16                        ; 2 uses
  %i.n = add i64 %i.m, 32                         ; 2 uses
  %i.o = add nsw i64 %.val8.i, 17
  %i.p = add i64 %i.o, %i.n                       ; 4 uses
  %i.q = icmp uge i64 %i.p, %i.n
  %i.r = icmp ult i64 %i.p, 9223372036854775793
  tail call void @llvm.assume(i1 %i.q)
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i) ]
  %i.s = icmp eq i64 %i.p, 0
  br i1 %i.s, label %"_ZN4core3ptr123drop_in_place$LT$std..collections..hash..map..HashMap$LT$$RF$str$C$nickel_lang_parser..identifier..interner..Symbol$GT$$GT$17h781e6d54c3da3f0fE.exit.i", label %bb.d

bb.d:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i
  %i.t = sub i64 -32, %i.m
  %i.u = getelementptr inbounds i8, ptr %.val7.i, i64 %i.t
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 16) #54, !noalias !1975
  br label %"_ZN4core3ptr123drop_in_place$LT$std..collections..hash..map..HashMap$LT$$RF$str$C$nickel_lang_parser..identifier..interner..Symbol$GT$$GT$17h781e6d54c3da3f0fE.exit.i"

"_ZN4core3ptr123drop_in_place$LT$std..collections..hash..map..HashMap$LT$$RF$str$C$nickel_lang_parser..identifier..interner..Symbol$GT$$GT$17h781e6d54c3da3f0fE.exit.i": ; preds = %bb.d, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i, %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17hd55e49199d5b8e07E.exit15.i"
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val5.i = load ptr, ptr %i.v, align 8, !alias.scope !1975, !nonnull !19, !noundef !19 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1976)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1977)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1978)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1979)
  %i.w = getelementptr inbounds nuw i8, ptr %.val5.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1980)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1981)
  %.val.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !1982, !noalias !1975 ; 2 uses
  %i.x = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.x, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h55cd1ae5af782655E.exit.i.i.i.i.i.i.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ptr123drop_in_place$LT$std..collections..hash..map..HashMap$LT$$RF$str$C$nickel_lang_parser..identifier..interner..Symbol$GT$$GT$17h781e6d54c3da3f0fE.exit.i"
  %i.y = getelementptr inbounds nuw i8, ptr %.val5.i, i64 24
  %.val1.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !1982, !noalias !1975, !nonnull !19, !noundef !19
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !1983
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h55cd1ae5af782655E.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h55cd1ae5af782655E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.e, %"_ZN4core3ptr123drop_in_place$LT$std..collections..hash..map..HashMap$LT$$RF$str$C$nickel_lang_parser..identifier..interner..Symbol$GT$$GT$17h781e6d54c3da3f0fE.exit.i"
  %i.z = getelementptr inbounds nuw i8, ptr %.val5.i, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1984)
  %i.aa = getelementptr inbounds nuw i8, ptr %.val5.i, i64 48
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !1985, !noalias !1975, !nonnull !19, !noundef !19 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val5.i, i64 56
  %.val1.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ab, align 8, !alias.scope !1985, !noalias !1975, !noundef !19 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1986)
  %i.ac = icmp eq i64 %.val1.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ac, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h36e786d23ccb52ceE.exit.i.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h55cd1ae5af782655E.exit.i.i.i.i.i.i.i.i.i.i", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h55cd1ae5af782655E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ae, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h55cd1ae5af782655E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 0, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h55cd1ae5af782655E.exit.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ae = add nuw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !1986, !noalias !1987 ; 2 uses
  %i.af = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.af, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h55cd1ae5af782655E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ag = getelementptr i8, ptr %i.ad, i64 8
  %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !1986, !noalias !1987, !nonnull !19, !noundef !19
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !1988
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h55cd1ae5af782655E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h55cd1ae5af782655E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ah = icmp eq i64 %i.ae, %.val1.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ah, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h36e786d23ccb52ceE.exit.i.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h36e786d23ccb52ceE.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h55cd1ae5af782655E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h55cd1ae5af782655E.exit.i.i.i.i.i.i.i.i.i.i"
  %.val2.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.z, align 8, !range !38, !alias.scope !1985, !noalias !1975, !noundef !19 ; 2 uses
  %i.ai = icmp eq i64 %.val2.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ai, label %"_ZN4core3ptr115drop_in_place$LT$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInternerInternal$GT$17h56ba0c6662049ac5E.exit", label %bb.g

bb.g:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h36e786d23ccb52ceE.exit.i.i.i.i.i.i.i.i.i.i.i"
  %i.aj = mul nuw i64 %.val2.i.i.i.i.i.i.i.i.i.i.i, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !1987
  br label %"_ZN4core3ptr115drop_in_place$LT$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInternerInternal$GT$17h56ba0c6662049ac5E.exit"

"_ZN4core3ptr115drop_in_place$LT$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInternerInternal$GT$17h56ba0c6662049ac5E.exit": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h36e786d23ccb52ceE.exit.i.i.i.i.i.i.i.i.i.i.i", %bb.g
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef 64, i64 noundef 8) #54, !noalias !1975
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @"_ZN129_$LT$nickel_lang_parser..ast..record..FieldMetadata$u20$as$u20$core..convert..From$LT$nickel_lang_parser..ast..Annotation$GT$$GT$4from17h8f583db1946fb195E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([200 x i8]) align 8 captures(none) dereferenceable(200) initializes((0, 128), (176, 184), (192, 194)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(120) %1) unnamed_addr #5 {
"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17hd5a011e7b9efacffE.exit":
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr null, ptr %i.a, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, i64 120, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i8 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 193
  store i8 0, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 -9223372036854775806, ptr %i.d, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN129_$LT$nickel_lang_parser..grammar..__parse__FixedType..__StateMachine$u20$as$u20$lalrpop_util..state_machine..ParserDefinition$GT$15expected_tokens17hd059078853d6ea4fE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1, i16 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2083)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2084)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2085)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2086
  %i.b = sext i16 %2 to i64
  %i.c = mul nsw i64 %i.b, 172                    ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %.idx.i = phi i64 [ 0, %bb.a ], [ %.add.i.2, %bb.i ] ; 6 uses
  %i.d = phi i64 [ 0, %bb.a ], [ %i.aa, %bb.i ]   ; 5 uses
  %i.e = add nuw nsw i64 %i.d, %i.c               ; 2 uses
  %i.f = icmp ult i64 %i.e, 450984
  br i1 %i.f, label %_ZN18nickel_lang_parser7grammar18__parse__FixedType8__action17he28082b2cc296127E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.h, %bb.g, %bb.b
  %umax.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 450984)
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax.i.i.i.i.i.i.i.i.i, i64 noundef 450984, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4319) #52, !noalias !2087
  unreachable

end_hunk_0
begin_hunk_1_@_ZN18nickel_lang_parser8position7TermPos4fuse17h178e09ab1d162c74E:bb.a
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.28.0.copyload = load i32, ptr %.sroa.28.0..sroa_idx, align 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 4
  %.sroa.0.0.i.i = tail call noundef i32 @llvm.umin.i32(i32 %.sroa.28.0.copyload, i32 %.sroa.2.0.copyload)
  %.sroa.0.0.i1.i = tail call noundef i32 @llvm.umax.i32(i32 %.sroa.39.0.copyload, i32 %.sroa.3.0.copyload)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.0.0.copyload, ptr %i.i, align 4
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0.0.i.i, ptr %.sroa.212.0..sroa_idx, align 4
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.0.0.i1.i, ptr %.sroa.313.0..sroa_idx, align 4
  store i32 0, ptr %0, align 4
  br label %bb.f

_ZN18nickel_lang_parser8position7RawSpan4fuse17hc8561efe1b61513aE.exit: ; preds = %bb.d
  store i32 2, ptr %0, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %_ZN18nickel_lang_parser8position7RawSpan4fuse17hc8561efe1b61513aE.exit6, %bb.i, %_ZN18nickel_lang_parser8position7RawSpan4fuse17hc8561efe1b61513aE.exit, %bb.e
  ret void

bb.g:                                             ; preds = %bb.c, %bb.b
  %.sroa.035.0.in = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.035.0 = load i32, ptr %.sroa.035.0.in, align 4 ; 2 uses
  %.sroa.020.0.in = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.020.0 = load i32, ptr %.sroa.020.0.in, align 4
  %i.j = icmp eq i32 %.sroa.020.0, %.sroa.035.0
  br i1 %i.j, label %bb.h, label %_ZN18nickel_lang_parser8position7RawSpan4fuse17hc8561efe1b61513aE.exit6

bb.h:                                             ; preds = %bb.g
  %.sroa.943.0.in = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.943.0 = load i32, ptr %.sroa.943.0.in, align 4
  %.sroa.838.0.in = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.838.0 = load i32, ptr %.sroa.838.0.in, align 4
  %.sroa.9.0.in = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.9.0 = load i32, ptr %.sroa.9.0.in, align 4
  %.sroa.823.0.in = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.823.0 = load i32, ptr %.sroa.823.0.in, align 4
  %.sroa.0.0.i.i2 = tail call noundef i32 @llvm.umin.i32(i32 %.sroa.838.0, i32 %.sroa.823.0)
  %.sroa.0.0.i1.i3 = tail call noundef i32 @llvm.umax.i32(i32 %.sroa.943.0, i32 %.sroa.9.0)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.035.0, ptr %i.k, align 4
  %.sroa.249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0.0.i.i2, ptr %.sroa.249.0..sroa_idx, align 4
  %.sroa.350.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.0.0.i1.i3, ptr %.sroa.350.0..sroa_idx, align 4
  store i32 1, ptr %0, align 4
  br label %bb.f

_ZN18nickel_lang_parser8position7RawSpan4fuse17hc8561efe1b61513aE.exit6: ; preds = %bb.g
  store i32 2, ptr %0, align 4
  br label %bb.f

bb.i:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.sink = phi ptr [ %2, %bb.a ], [ %1, %bb.c ], [ %1, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %.sink, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define void @_ZN18nickel_lang_parser8position7TermPos6unwrap17h9a771f857788945fE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(16) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [12 x i8], align 4                ; 4 uses
  %i.c = load i32, ptr %1, align 4, !range !60, !noundef !19
  %i.d = icmp eq i32 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.c, !prof !64

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @10189, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.h, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #52
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %i.i, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.b, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN18nickel_lang_parser8position7TermPos8contains17hcf2d4698b4edfb73E(ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #16 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !range !60, !noundef !19
  %i.b = icmp ne i32 %i.a, 2
  %.sroa.02.0 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %.sroa.02.0, align 4
  %i.d = icmp eq i32 %i.c, %1
  %or.cond = select i1 %i.b, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.b, label %_ZN18nickel_lang_parser8position7RawSpan8contains17he4b051fa10876b22E.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 4, !alias.scope !495378, !noundef !19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4, !alias.scope !495378, !noundef !19
  %.not.i.i = icmp ule i32 %i.f, %2
  %i.i = icmp ult i32 %2, %i.h
  %.sroa.06.0.i.i = and i1 %.not.i.i, %i.i
  br label %_ZN18nickel_lang_parser8position7RawSpan8contains17he4b051fa10876b22E.exit

_ZN18nickel_lang_parser8position7RawSpan8contains17he4b051fa10876b22E.exit: ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %.sroa.06.0.i.i, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { i64, ptr } @"_ZN18nickel_lang_parser8traverse13TraverseAlloc8find_map28_$u7b$$u7b$closure$u7d$$u7d$17he941235e0e622e69E"(ptr noalias nofree readnone align 8 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %1, ptr noalias nonnull readonly align 1 captures(none) %2) unnamed_addr #18 {
bb.a:
  %.val = load i64, ptr %1, align 8, !range !23, !noundef !19 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.a, align 8
  %i.b = icmp ne i64 %.val, 12
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp eq i64 %.val, 9
  %.sroa.0.0.i = select i1 %i.c, ptr %.val3, ptr null ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0.i, null
  %. = select i1 %.not, i64 1, i64 3
  %i.d = insertvalue { i64, ptr } poison, i64 %., 0
  %i.e = insertvalue { i64, ptr } %i.d, ptr %.sroa.0.0.i, 1
  ret { i64, ptr } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define { i64, ptr } @"_ZN194_$LT$nickel_lang_parser..ast..typ..iter..RecordRowsIter$LT$nickel_lang_parser..ast..typ..Type$C$nickel_lang_parser..ast..typ..RecordRows$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h69888e202dea2883E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0) unnamed_addr #19 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !align !24, !noundef !19 ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !495382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !495383)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i32, ptr %i.b, align 8, !range !26, !alias.scope !495383, !noundef !19 ; 3 uses
  %i.d = icmp ne i32 %i.c, 4
  tail call void @llvm.assume(i1 %i.d)
  %i.e = add nsw i32 %i.c, -3
  %i.f = icmp samesign ugt i32 %i.c, 2
  %narrow.i = select i1 %i.f, i32 %i.e, i32 1
  switch i32 %narrow.i, label %bb.c [
    i32 0, label %"_ZN194_$LT$nickel_lang_parser..ast..typ..iter..RecordRowsIter$LT$nickel_lang_parser..ast..typ..Type$C$nickel_lang_parser..ast..typ..RecordRows$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h50bcf3bd11eb254cE.exit"
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !495383, !nonnull !19, !align !24, !noundef !19
  br label %"_ZN194_$LT$nickel_lang_parser..ast..typ..iter..RecordRowsIter$LT$nickel_lang_parser..ast..typ..Type$C$nickel_lang_parser..ast..typ..RecordRows$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h50bcf3bd11eb254cE.exit"

bb.e:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %"_ZN194_$LT$nickel_lang_parser..ast..typ..iter..RecordRowsIter$LT$nickel_lang_parser..ast..typ..Type$C$nickel_lang_parser..ast..typ..RecordRows$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h50bcf3bd11eb254cE.exit"

bb.f:                                             ; preds = %bb.b
  br label %"_ZN194_$LT$nickel_lang_parser..ast..typ..iter..RecordRowsIter$LT$nickel_lang_parser..ast..typ..Type$C$nickel_lang_parser..ast..typ..RecordRows$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h50bcf3bd11eb254cE.exit"

"_ZN194_$LT$nickel_lang_parser..ast..typ..iter..RecordRowsIter$LT$nickel_lang_parser..ast..typ..Type$C$nickel_lang_parser..ast..typ..RecordRows$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h50bcf3bd11eb254cE.exit": ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  %.sink.i = phi ptr [ null, %bb.f ], [ null, %bb.e ], [ %i.h, %bb.d ], [ null, %bb.b ]
  %.sroa.5.0.i = phi ptr [ undef, %bb.f ], [ %i.i, %bb.e ], [ %i.a, %bb.d ], [ undef, %bb.b ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.f ], [ 1, %bb.e ], [ 2, %bb.d ], [ 3, %bb.b ]
  store ptr %.sink.i, ptr %0, align 8, !alias.scope !495382
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %"_ZN194_$LT$nickel_lang_parser..ast..typ..iter..RecordRowsIter$LT$nickel_lang_parser..ast..typ..Type$C$nickel_lang_parser..ast..typ..RecordRows$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h50bcf3bd11eb254cE.exit"
  %.sroa.3.0 = phi ptr [ %.sroa.5.0.i, %"_ZN194_$LT$nickel_lang_parser..ast..typ..iter..RecordRowsIter$LT$nickel_lang_parser..ast..typ..Type$C$nickel_lang_parser..ast..typ..RecordRows$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h50bcf3bd11eb254cE.exit" ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.i, %"_ZN194_$LT$nickel_lang_parser..ast..typ..iter..RecordRowsIter$LT$nickel_lang_parser..ast..typ..Type$C$nickel_lang_parser..ast..typ..RecordRows$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h50bcf3bd11eb254cE.exit" ], [ 3, %bb.a ]
  %i.j = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.k = insertvalue { i64, ptr } %i.j, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.k
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17ha9c0e7b7136c19eaE"(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) %0, ptr noalias nofree noundef align 8 captures(address_is_null) dereferenceable_or_null(16) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !21, !noundef !19
  %.not8.not = icmp eq i8 %i.c, 0
  br i1 %.not8.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i64, ptr %1, align 8, !range !35, !noundef !19
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8
  store i64 0, ptr %1, align 8
  %i.g = trunc nuw i64 %i.d to i1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.h = atomicrmw add ptr @_ZN14regex_automata4util4pool5inner7COUNTER17h1032928c53d5055eE, i64 1 monotonic, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.f, !prof !20

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @90, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.m, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @91) #52
  unreachable

bb.f:                                             ; preds = %bb.c, %bb.d
  %.sroa.03.0 = phi i64 [ %i.f, %bb.c ], [ %i.h, %bb.d ]
  store i64 %.sroa.03.0, ptr %0, align 8
  store i8 1, ptr %i.b, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  ret ptr %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN3std4sync6poison4once4Once15call_once_force28_$u7b$$u7b$closure$u7d$$u7d$17h49e48be63ae70538E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !24, !noundef !19 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.d, align 4, !range !21, !noundef !19
  %i.e = trunc nuw i8 %.val to i1
  br i1 %i.e, label %bb.c, label %"_ZN3std4sync9lazy_lock21LazyLock$LT$T$C$F$GT$5force28_$u7b$$u7b$closure$u7d$$u7d$17hbdac273cd2136cf4E.exit", !prof !20

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3std4sync9lazy_lock14panic_poisoned17h75c251aab0eeacc1E() #52
  unreachable

"_ZN3std4sync9lazy_lock21LazyLock$LT$T$C$F$GT$5force28_$u7b$$u7b$closure$u7d$$u7d$17hbdac273cd2136cf4E.exit": ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !19, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void %i.f(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a), !inline_history !495384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10195) #52
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN3std4sync6poison4once4Once15call_once_force28_$u7b$$u7b$closure$u7d$$u7d$17hb4f8b26e823b95fbE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !24, !noundef !19 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.d, align 4, !range !21, !noundef !19
  %i.e = trunc nuw i8 %.val to i1
  br i1 %i.e, label %bb.c, label %"_ZN3std4sync9lazy_lock21LazyLock$LT$T$C$F$GT$5force28_$u7b$$u7b$closure$u7d$$u7d$17heb06fb78592f5c03E.exit", !prof !20

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3std4sync9lazy_lock14panic_poisoned17h75c251aab0eeacc1E() #52
  unreachable

"_ZN3std4sync9lazy_lock21LazyLock$LT$T$C$F$GT$5force28_$u7b$$u7b$closure$u7d$$u7d$17heb06fb78592f5c03E.exit": ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !19, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void %i.f(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.a), !inline_history !495385
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.c, ptr noundef nonnull align 8 dereferenceable(128) %i.a, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10195) #52
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h448779b84ba2e789E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !19, !align !24, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !495389
  store ptr %i.b, ptr %i.a, align 8, !noalias !495389
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10327, i64 noundef 10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10328, i64 noundef 11, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10234)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !495389
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5e3a1aee3727d09bE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !19, !align !24, !noundef !19
  %i.b = tail call noundef zeroext i1 @"_ZN58_$LT$std..io..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h62ceb23194058131E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h661452e599a1c26fE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !19, !align !24, !noundef !19 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !495399, !noundef !19 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %.split5.i

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.c, 67108864
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.split.i, label %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit.i"

.split5.i:                                        ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h50805a32588de60dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.h, label %"_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h1c6eeb17064ae70dE.exit", label %.split6.i

.split.i:                                         ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.i, label %"_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h1c6eeb17064ae70dE.exit", label %.split6.i

"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit.i": ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17h34bfbea6236dacd0E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.j, label %"_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h1c6eeb17064ae70dE.exit", label %.split6.i

.split6.i:                                        ; preds = %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit.i", %.split.i, %.split5.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i = load ptr, ptr %i.k, align 8, !alias.scope !495400, !nonnull !19, !noundef !19
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !495400, !nonnull !19, !noundef !19
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !19, !noalias !495401, !nonnull !19
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull align 1 %.val.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @211, i64 noundef 2), !noalias !495401, !inline_history !495396
  br i1 %i.n, label %"_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h1c6eeb17064ae70dE.exit", label %bb.c

bb.c:                                             ; preds = %.split6.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.p = load i32, ptr %i.b, align 8, !alias.scope !495402, !noundef !19 ; 2 uses
  %i.q = and i32 %i.p, 33554432
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = and i32 %i.p, 67108864
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.u = tail call noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h50805a32588de60dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h1c6eeb17064ae70dE.exit"

bb.f:                                             ; preds = %bb.d
  %i.v = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h1c6eeb17064ae70dE.exit"

bb.g:                                             ; preds = %bb.d
  %i.w = tail call noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17h34bfbea6236dacd0E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h1c6eeb17064ae70dE.exit"

"_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h1c6eeb17064ae70dE.exit": ; preds = %.split5.i, %.split.i, %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit.i", %.split6.i, %bb.e, %bb.f, %bb.g
  %.sroa.0.0.i = phi i1 [ %i.u, %bb.e ], [ true, %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit.i" ], [ true, %.split6.i ], [ true, %.split.i ], [ true, %.split5.i ], [ %i.v, %bb.f ], [ %i.w, %bb.g ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h9708df942c68fcffE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !19, !align !24, !noundef !19 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !495406)
end_hunk_1
begin_hunk_2_@"_ZN6pretty6render17Best$LT$T$C$A$GT$4best17hc66a51af733825ceE":bb.a
  tail call void @llvm.assume(i1 %i.oe)
  %.not91 = icmp eq ptr %i.oc, null
  br i1 %.not91, label %.critedge, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph
  %i.of = load i64, ptr %i.oc, align 8, !noundef !19
  %i.og = icmp eq i64 %i.of, %i.od
  br i1 %i.og, label %bb.by, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.bx, %.thread204
  %i.oh = phi i64 [ %i.ac, %.thread204 ], [ %i.od, %bb.bx ], [ %i.od, %.lr.ph ] ; 2 uses
  %i.oi = icmp samesign ult i64 %1, %i.oh
  br i1 %i.oi, label %bb.b, label %.loopexit207

bb.by:                                            ; preds = %bb.bx
  %i.oj = add nsw i64 %i.nz, -1                   ; 2 uses
  store i64 %i.oj, ptr %i.k, align 8
  %i.ok = load i64, ptr %i.q, align 8, !range !38, !noundef !19
  %i.ol = icmp samesign ult i64 %i.oj, %i.ok
  tail call void @llvm.assume(i1 %i.ol)
  %i.om = icmp ult i64 %i.nz, 1152921504606846977
  tail call void @llvm.assume(i1 %i.om)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499476)
  %i.on = load i64, ptr %i.n, align 8, !alias.scope !499476, !noundef !19 ; 2 uses
  %i.oo = icmp sgt i64 %i.on, -1
  tail call void @llvm.assume(i1 %i.oo)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499477)
  %i.op = load i64, ptr %i.o, align 8, !alias.scope !499478, !noundef !19 ; 3 uses
  %i.oq = load i64, ptr %i.m, align 8, !range !38, !alias.scope !499478, !noundef !19
  %i.or = icmp eq i64 %i.op, %i.oq
  br i1 %i.or, label %bb.bz, label %"_ZN97_$LT$pretty..render..BufferWrite$LT$A$GT$$u20$as$u20$pretty..render..RenderAnnotated$LT$A$GT$$GT$14pop_annotation17ha06091ab7d4c8471E.exit"

bb.bz:                                            ; preds = %bb.by
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h9b624ac0c6f3701cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10580), !noalias !499479
  br label %"_ZN97_$LT$pretty..render..BufferWrite$LT$A$GT$$u20$as$u20$pretty..render..RenderAnnotated$LT$A$GT$$GT$14pop_annotation17ha06091ab7d4c8471E.exit"

"_ZN97_$LT$pretty..render..BufferWrite$LT$A$GT$$u20$as$u20$pretty..render..RenderAnnotated$LT$A$GT$$GT$14pop_annotation17ha06091ab7d4c8471E.exit": ; preds = %bb.by, %bb.bz
  %i.os = load ptr, ptr %i.p, align 8, !alias.scope !499478, !nonnull !19, !noundef !19
  %i.ot = getelementptr inbounds nuw [16 x i8], ptr %i.os, i64 %i.op ; 2 uses
  store i64 %i.on, ptr %i.ot, align 8, !noalias !499480
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  store ptr null, ptr %i.ou, align 8, !noalias !499480
  %i.ov = add i64 %i.op, 1
  store i64 %i.ov, ptr %i.o, align 8, !alias.scope !499478
  %i.ow = load i64, ptr %i.k, align 8, !noundef !19 ; 2 uses
  %.not90 = icmp eq i64 %i.ow, 0
  br i1 %.not90, label %.thread204, label %.lr.ph

bb.ca:                                            ; preds = %bb.bf
  store i64 %i.ev, ptr %i.d, align 8
  br label %bb.cb

bb.cb:                                            ; preds = %bb.bf, %bb.ca
  %i.ox = load i64, ptr %i.k, align 8, !noundef !19
  %i.oy = icmp ugt i64 %i.et, %i.ox
  br i1 %i.oy, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  store i64 %i.et, ptr %i.k, align 8
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.val = load ptr, ptr %i.er, align 8, !nonnull !19, !align !24, !noundef !19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499481)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499482)
  %.val.i.i144 = load i64, ptr %i.c, align 8, !alias.scope !499483 ; 2 uses
  %i.oz = icmp eq i64 %.val.i.i144, 0
  br i1 %i.oz, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit.i146", label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %.val1.i.i145 = load ptr, ptr %.sroa.459.0..sroa_idx, align 8, !alias.scope !499483, !nonnull !19, !noundef !19
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i145, i64 noundef %.val.i.i144, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !499483
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit.i146"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit.i146": ; preds = %bb.ce, %bb.cd
  %.val.i147 = load i64, ptr %i.l, align 8, !alias.scope !499481 ; 2 uses
  %i.pa = icmp eq i64 %.val.i147, 0
  br i1 %i.pa, label %"_ZN4core3ptr64drop_in_place$LT$pretty..render..BufferWrite$LT$$LP$$RP$$GT$$GT$17ha40406ca2318f2cbE.exit149", label %bb.cf

bb.cf:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit.i146"
  %.val1.i148 = load ptr, ptr %.sroa.453.0..sroa_idx, align 8, !alias.scope !499481, !nonnull !19, !noundef !19
  %i.pb = shl nuw i64 %.val.i147, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i148, i64 noundef %i.pb, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !499481
  br label %"_ZN4core3ptr64drop_in_place$LT$pretty..render..BufferWrite$LT$$LP$$RP$$GT$$GT$17ha40406ca2318f2cbE.exit149"

"_ZN4core3ptr64drop_in_place$LT$pretty..render..BufferWrite$LT$$LP$$RP$$GT$$GT$17ha40406ca2318f2cbE.exit149": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit.i146", %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.backedge.backedge

bb.cg:                                            ; preds = %bb.z
  store i64 0, ptr %i.fe, align 8, !noalias !499410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.pc = tail call fastcc noundef align 8 dereferenceable(8) ptr @"_ZN11typed_arena14Arena$LT$T$GT$15alloc_slow_path17h1c7ae19edb52e23aE"(ptr noundef nonnull align 8 %i.fe, ptr noalias noundef nonnull align 8 %i.fr)
  br label %bb.ch

bb.ch:                                            ; preds = %"_ZN11typed_arena14Arena$LT$T$GT$15alloc_fast_path17h14fbff729670783eE.exit", %bb.cg
  %.sroa.061.0 = phi ptr [ %i.pc, %bb.cg ], [ %i.ge, %"_ZN11typed_arena14Arena$LT$T$GT$15alloc_fast_path17h14fbff729670783eE.exit" ]
  %.sroa.061.0.val = load ptr, ptr %.sroa.061.0, align 8, !nonnull !19, !align !24, !noundef !19
  br label %.backedge.backedge

bb.ci:                                            ; preds = %bb.af
  store i64 0, ptr %i.gh, align 8, !noalias !499413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.pd = tail call fastcc noundef align 8 dereferenceable(8) ptr @"_ZN11typed_arena14Arena$LT$T$GT$15alloc_slow_path17h1c7ae19edb52e23aE"(ptr noundef nonnull align 8 %i.gh, ptr noalias noundef nonnull align 8 %i.gt)
  br label %bb.cj

bb.cj:                                            ; preds = %"_ZN11typed_arena14Arena$LT$T$GT$15alloc_fast_path17h14fbff729670783eE.exit113", %bb.ci
  %.sroa.066.0 = phi ptr [ %i.pd, %bb.ci ], [ %i.hg, %"_ZN11typed_arena14Arena$LT$T$GT$15alloc_fast_path17h14fbff729670783eE.exit113" ]
  %.sroa.066.0.val = load ptr, ptr %.sroa.066.0, align 8, !nonnull !19, !align !24, !noundef !19
  br label %.backedge.backedge
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN6pretty6render17Best$LT$T$C$A$GT$7fitting17hcb82404dea1c5666E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(96) initializes((40, 48)) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !19 ; 2 uses
  %i.e = icmp ult i64 %i.d, 384307168202282326
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  store i64 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499522)
  %i.h = load i64, ptr %i.g, align 8, !range !38, !alias.scope !499522, !noundef !19
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h7c6823401fcca0e2E.exit"

bb.b:                                             ; preds = %bb.a
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h235f884e56b27a07E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10253), !noalias !499523
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h7c6823401fcca0e2E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h7c6823401fcca0e2E.exit": ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !499522, !nonnull !19, !noundef !19 ; 2 uses
  store ptr %1, ptr %i.k, align 8, !noalias !499524
  store i64 1, ptr %i.f, align 8, !alias.scope !499522
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  br label %.loopexit.outer

.loopexit.outer:                                  ; preds = %.loopexit.outer.backedge, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h7c6823401fcca0e2E.exit"
  %.pre11.i108.ph = phi i64 [ 1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h7c6823401fcca0e2E.exit" ], [ %.pre.i.ph, %.loopexit.outer.backedge ]
  %.ph221 = phi ptr [ %i.k, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h7c6823401fcca0e2E.exit" ], [ %.ph, %.loopexit.outer.backedge ]
  %.ph222 = phi i64 [ 1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h7c6823401fcca0e2E.exit" ], [ %.ph219, %.loopexit.outer.backedge ]
  %.sroa.014.0.ph = phi i8 [ 1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h7c6823401fcca0e2E.exit" ], [ %.sroa.014.1, %.loopexit.outer.backedge ]
  %.sroa.010.0.ph = phi i64 [ %i.d, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h7c6823401fcca0e2E.exit" ], [ %.sroa.010.1, %.loopexit.outer.backedge ]
  %.sroa.0.0.ph = phi i64 [ %2, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h7c6823401fcca0e2E.exit" ], [ %.sroa.0.0.ph.be, %.loopexit.outer.backedge ] ; 5 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.backedge, %.loopexit.outer
  %.pre11.i108 = phi i64 [ %.pre11.i108.ph, %.loopexit.outer ], [ %.pre.i.ph, %.backedge ]
  %i.o = phi ptr [ %.ph221, %.loopexit.outer ], [ %.ph, %.backedge ] ; 2 uses
  %i.p = phi i64 [ %.ph222, %.loopexit.outer ], [ %.ph219, %.backedge ] ; 3 uses
  %.sroa.014.0 = phi i8 [ %.sroa.014.0.ph, %.loopexit.outer ], [ %.sroa.014.1, %.backedge ]
  %.sroa.010.0 = phi i64 [ %.sroa.010.0.ph, %.loopexit.outer ], [ %.sroa.010.1, %.backedge ] ; 3 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.loopexit
  %i.r = icmp eq i64 %.sroa.010.0, 0
  br i1 %i.r, label %.loopexit74, label %bb.e

bb.d:                                             ; preds = %.loopexit
  %i.s = add nsw i64 %i.p, -1                     ; 5 uses
  store i64 %i.s, ptr %i.f, align 8
  %i.t = load i64, ptr %i.g, align 8, !range !38, !noundef !19
  %i.u = icmp samesign ult i64 %i.s, %i.t
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp ult i64 %i.p, 1152921504606846977
  tail call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.s
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.x = add nsw i64 %.sroa.010.0, -1             ; 4 uses
  %i.y = load i64, ptr %i.c, align 8, !noundef !19 ; 2 uses
  %i.z = icmp ult i64 %i.x, %i.y
  br i1 %i.z, label %bb.f, label %bb.g

.loopexit74:                                      ; preds = %bb.c, %bb.s, %bb.r, %bb.q, %bb.p, %.backedge, %bb.o
  %.sroa.09.0 = phi i1 [ false, %.backedge ], [ %4, %bb.o ], [ true, %bb.c ], [ false, %bb.s ], [ false, %bb.r ], [ false, %bb.q ], [ false, %bb.p ]
  ret i1 %.sroa.09.0

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.l, align 8, !nonnull !19, !noundef !19
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.x
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.x, i64 noundef %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10254) #52
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.pre11.i107 = phi i64 [ %.pre11.i108, %bb.f ], [ %i.s, %bb.d ]
  %i.ad = phi i64 [ 0, %bb.f ], [ %i.s, %bb.d ]
  %.sroa.016.0.in = phi ptr [ %i.ac, %bb.f ], [ %i.w, %bb.d ]
  %.sroa.014.1 = phi i8 [ 0, %bb.f ], [ %.sroa.014.0, %bb.d ] ; 4 uses
  %.sroa.010.1 = phi i64 [ %i.x, %bb.f ], [ %.sroa.010.0, %bb.d ] ; 2 uses
  %.sroa.016.0 = load ptr, ptr %.sroa.016.0.in, align 8, !nonnull !19, !align !24, !noundef !19
  %i.ae = trunc nuw i8 %.sroa.014.1 to i1
  %.sroa.032.0.in.v = select i1 %i.ae, i64 16, i64 8
  br label %.backedge.outer

.backedge.outer:                                  ; preds = %.backedge.outer.backedge, %bb.h
  %.pre.i.ph = phi i64 [ %.pre11.i107, %bb.h ], [ %.ph219.be, %.backedge.outer.backedge ] ; 4 uses
  %.ph = phi ptr [ %i.o, %bb.h ], [ %.ph.be, %.backedge.outer.backedge ] ; 3 uses
  %.ph219 = phi i64 [ %i.ad, %bb.h ], [ %.ph219.be, %.backedge.outer.backedge ] ; 2 uses
  %.sroa.016.1.ph = phi ptr [ %.sroa.016.0, %bb.h ], [ %.sroa.016.1.ph.be, %.backedge.outer.backedge ]
  %i.af = load ptr, ptr %i.m, align 8, !nonnull !19, !align !24 ; 9 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  %.phi.trans.insert.i57 = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.m, align 8, !nonnull !19, !align !24 ; 9 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 2 uses
  %.phi.trans.insert.i52 = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.backedge.outer
  %.sroa.016.1 = phi ptr [ %.sroa.016.1.ph, %.backedge.outer ], [ %.sroa.016.1.be, %.backedge.backedge ] ; 13 uses
  %i.al = load i8, ptr %.sroa.016.1, align 8, !range !72, !noundef !19
  switch i8 %i.al, label %default.unreachable120 [
    i8 0, label %.loopexit
    i8 1, label %bb.i
    i8 2, label %bb.af
    i8 3, label %bb.m
    i8 4, label %bb.n
    i8 5, label %bb.o
    i8 6, label %bb.p
    i8 7, label %bb.q
    i8 8, label %bb.r
    i8 9, label %bb.s
    i8 10, label %bb.af
    i8 11, label %bb.n
    i8 12, label %bb.t
    i8 13, label %bb.z
    i8 14, label %.loopexit74
  ]

default.unreachable120:                           ; preds = %.backedge
  unreachable

bb.i:                                             ; preds = %.backedge
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.016.1, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.016.1, i64 16
  %.val51 = load ptr, ptr %i.am, align 8, !nonnull !19, !align !24, !noundef !19 ; 3 uses
  %.val50 = load ptr, ptr %i.an, align 8, !nonnull !19, !align !24, !noundef !19 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499526)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499527)
  %i.ao = load i8, ptr %.val50, align 8, !range !72, !alias.scope !499528, !noundef !19
  %i.ap = icmp eq i8 %i.ao, 1
  br i1 %i.ap, label %.lr.ph.i.i, label %_ZN6pretty6render11append_docs17h3c064c84f9f58b23E.exit.i

.lr.ph.i.i:                                       ; preds = %bb.i, %"_ZN6pretty6render17Best$LT$T$C$A$GT$7fitting28_$u7b$$u7b$closure$u7d$$u7d$17h1e041a626d738251E.exit.i.i"
  %i.aq = phi ptr [ %i.aw, %"_ZN6pretty6render17Best$LT$T$C$A$GT$7fitting28_$u7b$$u7b$closure$u7d$$u7d$17h1e041a626d738251E.exit.i.i" ], [ %.ph, %bb.i ]
  %i.ar = phi i64 [ %i.ay, %"_ZN6pretty6render17Best$LT$T$C$A$GT$7fitting28_$u7b$$u7b$closure$u7d$$u7d$17h1e041a626d738251E.exit.i.i" ], [ %.pre.i.ph, %bb.i ] ; 3 uses
  %.sroa.0.01.i.i = phi ptr [ %.val.i.i, %"_ZN6pretty6render17Best$LT$T$C$A$GT$7fitting28_$u7b$$u7b$closure$u7d$$u7d$17h1e041a626d738251E.exit.i.i" ], [ %.val50, %bb.i ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i, i64 16
  %.val4.i.i = load ptr, ptr %i.at, align 8, !noalias !499529, !nonnull !19, !align !24, !noundef !19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499530)
  %i.au = load i64, ptr %i.g, align 8, !range !38, !alias.scope !499530, !noalias !499531, !noundef !19
  %i.av = icmp eq i64 %i.ar, %i.au
  br i1 %i.av, label %bb.j, label %"_ZN6pretty6render17Best$LT$T$C$A$GT$7fitting28_$u7b$$u7b$closure$u7d$$u7d$17h1e041a626d738251E.exit.i.i"

bb.j:                                             ; preds = %.lr.ph.i.i
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h235f884e56b27a07E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10255), !noalias !499532
  %.pre = load ptr, ptr %i.j, align 8, !alias.scope !499530, !noalias !499531
  br label %"_ZN6pretty6render17Best$LT$T$C$A$GT$7fitting28_$u7b$$u7b$closure$u7d$$u7d$17h1e041a626d738251E.exit.i.i"

"_ZN6pretty6render17Best$LT$T$C$A$GT$7fitting28_$u7b$$u7b$closure$u7d$$u7d$17h1e041a626d738251E.exit.i.i": ; preds = %bb.j, %.lr.ph.i.i
  %i.aw = phi ptr [ %.pre, %bb.j ], [ %i.aq, %.lr.ph.i.i ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ar
  store ptr %.val4.i.i, ptr %i.ax, align 8, !noalias !499533
  %i.ay = add i64 %i.ar, 1                        ; 3 uses
  store i64 %i.ay, ptr %i.f, align 8, !alias.scope !499530, !noalias !499534
  %.val.i.i = load ptr, ptr %i.as, align 8, !noalias !499529, !nonnull !19, !align !24, !noundef !19 ; 3 uses
  %i.az = load i8, ptr %.val.i.i, align 8, !range !72, !noalias !499534, !noundef !19
  %i.ba = icmp eq i8 %i.az, 1
  br i1 %i.ba, label %.lr.ph.i.i, label %_ZN6pretty6render11append_docs17h3c064c84f9f58b23E.exit.i

_ZN6pretty6render11append_docs17h3c064c84f9f58b23E.exit.i: ; preds = %"_ZN6pretty6render17Best$LT$T$C$A$GT$7fitting28_$u7b$$u7b$closure$u7d$$u7d$17h1e041a626d738251E.exit.i.i", %bb.i
  %i.bb = phi i64 [ %.pre.i.ph, %bb.i ], [ %i.ay, %"_ZN6pretty6render17Best$LT$T$C$A$GT$7fitting28_$u7b$$u7b$closure$u7d$$u7d$17h1e041a626d738251E.exit.i.i" ] ; 3 uses
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.val50, %bb.i ], [ %.val.i.i, %"_ZN6pretty6render17Best$LT$T$C$A$GT$7fitting28_$u7b$$u7b$closure$u7d$$u7d$17h1e041a626d738251E.exit.i.i" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499535)
  %i.bc = load i64, ptr %i.g, align 8, !range !38, !alias.scope !499535, !noalias !499536, !noundef !19
  %i.bd = icmp eq i64 %i.bb, %i.bc
  br i1 %i.bd, label %bb.k, label %"_ZN6pretty6render17Best$LT$T$C$A$GT$7fitting28_$u7b$$u7b$closure$u7d$$u7d$17h1e041a626d738251E.exit.i"

bb.k:                                             ; preds = %_ZN6pretty6render11append_docs17h3c064c84f9f58b23E.exit.i
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h235f884e56b27a07E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10255), !noalias !499537
  br label %"_ZN6pretty6render17Best$LT$T$C$A$GT$7fitting28_$u7b$$u7b$closure$u7d$$u7d$17h1e041a626d738251E.exit.i"

"_ZN6pretty6render17Best$LT$T$C$A$GT$7fitting28_$u7b$$u7b$closure$u7d$$u7d$17h1e041a626d738251E.exit.i": ; preds = %bb.k, %_ZN6pretty6render11append_docs17h3c064c84f9f58b23E.exit.i
  %i.be = load ptr, ptr %i.j, align 8, !alias.scope !499535, !noalias !499536, !nonnull !19, !noundef !19 ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bb
  store ptr %.sroa.0.0.lcssa.i.i, ptr %i.bf, align 8, !noalias !499538
  %i.bg = add i64 %i.bb, 1                        ; 3 uses
  store i64 %i.bg, ptr %i.f, align 8, !alias.scope !499535, !noalias !499529
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499539)
  %i.bh = load i8, ptr %.val51, align 8, !range !72, !alias.scope !499540, !noundef !19
  %i.bi = icmp eq i8 %i.bh, 1
  br i1 %i.bi, label %.lr.ph.i4.i, label %.backedge.outer.backedge

.backedge.outer.backedge:                         ; preds = %"_ZN6pretty6render17Best$LT$T$C$A$GT$7fitting28_$u7b$$u7b$closure$u7d$$u7d$17h1e041a626d738251E.exit.i7.i", %"_ZN6pretty6render17Best$LT$T$C$A$GT$7fitting28_$u7b$$u7b$closure$u7d$$u7d$17h1e041a626d738251E.exit.i"
  %.ph.be = phi ptr [ %i.be, %"_ZN6pretty6render17Best$LT$T$C$A$GT$7fitting28_$u7b$$u7b$closure$u7d$$u7d$17h1e041a626d738251E.exit.i" ], [ %i.bp, %"_ZN6pretty6render17Best$LT$T$C$A$GT$7fitting28_$u7b$$u7b$closure$u7d$$u7d$17h1e041a626d738251E.exit.i7.i" ]
  %.ph219.be = phi i64 [ %i.bg, %"_ZN6pretty6render17Best$LT$T$C$A$GT$7fitting28_$u7b$$u7b$closure$u7d$$u7d$17h1e041a626d738251E.exit.i" ], [ %i.br, %"_ZN6pretty6render17Best$LT$T$C$A$GT$7fitting28_$u7b$$u7b$closure$u7d$$u7d$17h1e041a626d738251E.exit.i7.i" ] ; 2 uses
  %.sroa.016.1.ph.be = phi ptr [ %.val51, %"_ZN6pretty6render17Best$LT$T$C$A$GT$7fitting28_$u7b$$u7b$closure$u7d$$u7d$17h1e041a626d738251E.exit.i" ], [ %.val.i8.i, %"_ZN6pretty6render17Best$LT$T$C$A$GT$7fitting28_$u7b$$u7b$closure$u7d$$u7d$17h1e041a626d738251E.exit.i7.i" ]
  br label %.backedge.outer

.lr.ph.i4.i:                                      ; preds = %"_ZN6pretty6render17Best$LT$T$C$A$GT$7fitting28_$u7b$$u7b$closure$u7d$$u7d$17h1e041a626d738251E.exit.i", %"_ZN6pretty6render17Best$LT$T$C$A$GT$7fitting28_$u7b$$u7b$closure$u7d$$u7d$17h1e041a626d738251E.exit.i7.i"
  %i.bj = phi ptr [ %i.bp, %"_ZN6pretty6render17Best$LT$T$C$A$GT$7fitting28_$u7b$$u7b$closure$u7d$$u7d$17h1e041a626d738251E.exit.i7.i" ], [ %i.be, %"_ZN6pretty6render17Best$LT$T$C$A$GT$7fitting28_$u7b$$u7b$closure$u7d$$u7d$17h1e041a626d738251E.exit.i" ]
  %i.bk = phi i64 [ %i.br, %"_ZN6pretty6render17Best$LT$T$C$A$GT$7fitting28_$u7b$$u7b$closure$u7d$$u7d$17h1e041a626d738251E.exit.i7.i" ], [ %i.bg, %"_ZN6pretty6render17Best$LT$T$C$A$GT$7fitting28_$u7b$$u7b$closure$u7d$$u7d$17h1e041a626d738251E.exit.i" ] ; 3 uses
  %.sroa.0.01.i5.i = phi ptr [ %.val.i8.i, %"_ZN6pretty6render17Best$LT$T$C$A$GT$7fitting28_$u7b$$u7b$closure$u7d$$u7d$17h1e041a626d738251E.exit.i7.i" ], [ %.val51, %"_ZN6pretty6render17Best$LT$T$C$A$GT$7fitting28_$u7b$$u7b$closure$u7d$$u7d$17h1e041a626d738251E.exit.i" ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i5.i, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i5.i, i64 16
  %.val4.i6.i = load ptr, ptr %i.bm, align 8, !noalias !499541, !nonnull !19, !align !24, !noundef !19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499542)
  %i.bn = load i64, ptr %i.g, align 8, !range !38, !alias.scope !499542, !noalias !499543, !noundef !19
  %i.bo = icmp eq i64 %i.bk, %i.bn
  br i1 %i.bo, label %bb.l, label %"_ZN6pretty6render17Best$LT$T$C$A$GT$7fitting28_$u7b$$u7b$closure$u7d$$u7d$17h1e041a626d738251E.exit.i7.i"

bb.l:                                             ; preds = %.lr.ph.i4.i
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h235f884e56b27a07E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10255), !noalias !499544
  %.pre111 = load ptr, ptr %i.j, align 8, !alias.scope !499542, !noalias !499543
  br label %"_ZN6pretty6render17Best$LT$T$C$A$GT$7fitting28_$u7b$$u7b$closure$u7d$$u7d$17h1e041a626d738251E.exit.i7.i"

"_ZN6pretty6render17Best$LT$T$C$A$GT$7fitting28_$u7b$$u7b$closure$u7d$$u7d$17h1e041a626d738251E.exit.i7.i": ; preds = %bb.l, %.lr.ph.i4.i
  %i.bp = phi ptr [ %.pre111, %bb.l ], [ %i.bj, %.lr.ph.i4.i ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bk
  store ptr %.val4.i6.i, ptr %i.bq, align 8, !noalias !499545
  %i.br = add i64 %i.bk, 1                        ; 3 uses
  store i64 %i.br, ptr %i.f, align 8, !alias.scope !499542, !noalias !499546
  %.val.i8.i = load ptr, ptr %i.bl, align 8, !noalias !499541, !nonnull !19, !align !24, !noundef !19 ; 3 uses
  %i.bs = load i8, ptr %.val.i8.i, align 8, !range !72, !noalias !499546, !noundef !19
  %i.bt = icmp eq i8 %i.bs, 1
  br i1 %i.bt, label %.lr.ph.i4.i, label %.backedge.outer.backedge

bb.m:                                             ; preds = %.backedge
  %.sroa.032.0.in = getelementptr inbounds nuw i8, ptr %.sroa.016.1, i64 %.sroa.032.0.in.v
  br label %.backedge.backedge

bb.n:                                             ; preds = %.backedge, %.backedge
  br label %bb.af

bb.o:                                             ; preds = %.backedge
  %4 = icmp eq i8 %.sroa.014.1, 0
  br label %.loopexit74

bb.p:                                             ; preds = %.backedge
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.016.1, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !19
  %i.bw = add i64 %i.bv, %.sroa.0.0.ph            ; 2 uses
  %i.bx = load i64, ptr %i.n, align 8, !noundef !19
  %i.by = icmp ugt i64 %i.bw, %i.bx
  br i1 %i.by, label %.loopexit74, label %.loopexit.outer.backedge

.loopexit.outer.backedge:                         ; preds = %bb.p, %bb.s, %bb.r, %bb.q
  %.sroa.0.0.ph.be = phi i64 [ %i.cb, %bb.q ], [ %i.cg, %bb.r ], [ %i.cm, %bb.s ], [ %i.bw, %bb.p ]
  br label %.loopexit.outer

bb.q:                                             ; preds = %.backedge
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.016.1, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !noundef !19
  %i.cb = add i64 %i.ca, %.sroa.0.0.ph            ; 2 uses
  %i.cc = load i64, ptr %i.n, align 8, !noundef !19
  %i.cd = icmp ugt i64 %i.cb, %i.cc
  br i1 %i.cd, label %.loopexit74, label %.loopexit.outer.backedge

bb.r:                                             ; preds = %.backedge
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.016.1, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !19
  %i.cg = add i64 %i.cf, %.sroa.0.0.ph            ; 2 uses
  %i.ch = load i64, ptr %i.n, align 8, !noundef !19
  %i.ci = icmp ugt i64 %i.cg, %i.ch
  br i1 %i.ci, label %.loopexit74, label %.loopexit.outer.backedge

bb.s:                                             ; preds = %.backedge
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.016.1, i64 23
  %i.ck = load i8, ptr %i.cj, align 1, !noundef !19
  %i.cl = zext i8 %i.ck to i64
  %i.cm = add i64 %.sroa.0.0.ph, %i.cl            ; 2 uses
  %i.cn = load i64, ptr %i.n, align 8, !noundef !19
  %i.co = icmp ugt i64 %i.cm, %i.cn
  br i1 %i.co, label %.loopexit74, label %.loopexit.outer.backedge

bb.t:                                             ; preds = %.backedge
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.016.1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499547)
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !499547, !nonnull !19, !noundef !19
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.016.1, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !499547, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !range !61, !invariant.load !19, !noalias !499547
  %i.cv = add i64 %i.cu, -1
  %i.cw = and i64 %i.cv, -16
  %i.cx = getelementptr i8, ptr %i.cq, i64 %i.cw
  %i.cy = getelementptr i8, ptr %i.cx, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.da = load ptr, ptr %i.cz, align 8, !invariant.load !19, !nonnull !19
  %i.db = tail call noundef nonnull align 8 ptr %i.da(ptr noundef align 1 %i.cy, i64 noundef %.sroa.0.0.ph) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.db, ptr %i.b, align 8, !noalias !499548
  %i.dc = load i64, ptr %i.ai, align 8, !noalias !499548, !noundef !19
  %.not.i = icmp eq i64 %i.dc, 0
  br i1 %.not.i, label %bb.u, label %bb.v, !prof !22

bb.u:                                             ; preds = %bb.t
  store i64 -1, ptr %i.ai, align 8, !noalias !499548
  %i.dd = load i64, ptr %i.ak, align 8, !noalias !499548, !noundef !19 ; 5 uses
  %i.de = icmp ult i64 %i.dd, 1152921504606846976
  tail call void @llvm.assume(i1 %i.de)
  %i.df = load i64, ptr %i.aj, align 8, !range !38, !noalias !499548, !noundef !19
  %i.dg = icmp samesign ult i64 %i.dd, %i.df
  br i1 %i.dg, label %"_ZN11typed_arena14Arena$LT$T$GT$15alloc_fast_path17h14fbff729670783eE.exit", label %bb.ag

bb.v:                                             ; preds = %bb.t
  invoke void @_ZN4core4cell22panic_already_borrowed17h1421a3fb924cdd88E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #52
          to label %bb.x unwind label %bb.y

bb.w:                                             ; preds = %bb.y
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55
  unreachable

bb.x:                                             ; preds = %bb.v
  unreachable

common.resume:                                    ; preds = %bb.ae, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.di, %bb.y ], [ %i.eh, %bb.ae ]
  resume { ptr, i32 } %common.resume.op

bb.y:                                             ; preds = %bb.v
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr35drop_in_place$LT$pretty..BoxDoc$GT$17hd4b10899d8afa29bE"(ptr noalias noundef align 8 dereferenceable(8) %i.b) #53
          to label %common.resume unwind label %bb.w

"_ZN11typed_arena14Arena$LT$T$GT$15alloc_fast_path17h14fbff729670783eE.exit": ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499549)
  %.pre.i53 = load ptr, ptr %.phi.trans.insert.i52, align 8, !alias.scope !499549, !noalias !499548
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.pre.i53, i64 %i.dd
  store ptr %i.db, ptr %i.dj, align 8, !noalias !499549
  %i.dk = add nuw nsw i64 %i.dd, 1
  store i64 %i.dk, ptr %i.ak, align 8, !alias.scope !499549, !noalias !499548
  %i.dl = load ptr, ptr %.phi.trans.insert.i52, align 8, !noalias !499548, !nonnull !19, !noundef !19
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dd
  %.pre12.i = load i64, ptr %i.ai, align 8, !noalias !499548
  %i.dn = add i64 %.pre12.i, 1
  store i64 %i.dn, ptr %i.ai, align 8, !noalias !499548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.backedge.backedge

bb.z:                                             ; preds = %.backedge
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.016.1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499550)
  %i.dp = load ptr, ptr %i.do, align 8, !alias.scope !499550, !nonnull !19, !noundef !19
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.016.1, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !alias.scope !499550, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load i64, ptr %i.ds, align 8, !range !61, !invariant.load !19, !noalias !499550
  %i.du = add i64 %i.dt, -1
  %i.dv = and i64 %i.du, -16
  %i.dw = getelementptr i8, ptr %i.dp, i64 %i.dv
  %i.dx = getelementptr i8, ptr %i.dw, i64 16
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dr, i64 40
  %i.dz = load ptr, ptr %i.dy, align 8, !invariant.load !19, !nonnull !19
  %i.ea = tail call noundef nonnull align 8 ptr %i.dz(ptr noundef align 1 %i.dx, i64 noundef %3) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ea, ptr %i.a, align 8, !noalias !499551
  %i.eb = load i64, ptr %i.af, align 8, !noalias !499551, !noundef !19
  %.not.i54 = icmp eq i64 %i.eb, 0
  br i1 %.not.i54, label %bb.aa, label %bb.ab, !prof !22

bb.aa:                                            ; preds = %bb.z
  store i64 -1, ptr %i.af, align 8, !noalias !499551
  %i.ec = load i64, ptr %i.ah, align 8, !noalias !499551, !noundef !19 ; 5 uses
  %i.ed = icmp ult i64 %i.ec, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ed)
  %i.ee = load i64, ptr %i.ag, align 8, !range !38, !noalias !499551, !noundef !19
  %i.ef = icmp samesign ult i64 %i.ec, %i.ee
  br i1 %i.ef, label %"_ZN11typed_arena14Arena$LT$T$GT$15alloc_fast_path17h14fbff729670783eE.exit60", label %bb.ah

bb.ab:                                            ; preds = %bb.z
  invoke void @_ZN4core4cell22panic_already_borrowed17h1421a3fb924cdd88E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #52
          to label %bb.ad unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ae
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55
  unreachable

bb.ad:                                            ; preds = %bb.ab
  unreachable

bb.ae:                                            ; preds = %bb.ab
  %i.eh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr35drop_in_place$LT$pretty..BoxDoc$GT$17hd4b10899d8afa29bE"(ptr noalias noundef align 8 dereferenceable(8) %i.a) #53
          to label %common.resume unwind label %bb.ac

"_ZN11typed_arena14Arena$LT$T$GT$15alloc_fast_path17h14fbff729670783eE.exit60": ; preds = %bb.aa
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499552)
  %.pre.i58 = load ptr, ptr %.phi.trans.insert.i57, align 8, !alias.scope !499552, !noalias !499551
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.pre.i58, i64 %i.ec
  store ptr %i.ea, ptr %i.ei, align 8, !noalias !499552
  %i.ej = add nuw nsw i64 %i.ec, 1
  store i64 %i.ej, ptr %i.ah, align 8, !alias.scope !499552, !noalias !499551
  %i.ek = load ptr, ptr %.phi.trans.insert.i57, align 8, !noalias !499551, !nonnull !19, !noundef !19
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ec
  %.pre12.i59 = load i64, ptr %i.af, align 8, !noalias !499551
  %i.em = add i64 %.pre12.i59, 1
  store i64 %i.em, ptr %i.af, align 8, !noalias !499551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.backedge.backedge

bb.af:                                            ; preds = %.backedge, %.backedge, %bb.n
  %.sink = phi i64 [ 8, %.backedge ], [ 8, %.backedge ], [ 16, %bb.n ]
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.016.1, i64 %.sink
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.ah, %"_ZN11typed_arena14Arena$LT$T$GT$15alloc_fast_path17h14fbff729670783eE.exit60", %bb.ag, %"_ZN11typed_arena14Arena$LT$T$GT$15alloc_fast_path17h14fbff729670783eE.exit", %bb.af, %bb.m
  %.sroa.016.1.be.in = phi ptr [ %.sroa.032.0.in, %bb.m ], [ %i.dm, %"_ZN11typed_arena14Arena$LT$T$GT$15alloc_fast_path17h14fbff729670783eE.exit" ], [ %i.en, %bb.af ], [ %i.eo, %bb.ag ], [ %i.ep, %bb.ah ], [ %i.el, %"_ZN11typed_arena14Arena$LT$T$GT$15alloc_fast_path17h14fbff729670783eE.exit60" ]
  %.sroa.016.1.be = load ptr, ptr %.sroa.016.1.be.in, align 8, !nonnull !19, !align !24, !noundef !19
  br label %.backedge

bb.ag:                                            ; preds = %bb.u
  store i64 0, ptr %i.ai, align 8, !noalias !499548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.eo = tail call fastcc noundef align 8 dereferenceable(8) ptr @"_ZN11typed_arena14Arena$LT$T$GT$15alloc_slow_path17h1c7ae19edb52e23aE"(ptr noundef nonnull align 8 %i.ai, ptr noalias noundef nonnull align 8 %i.db)
  br label %.backedge.backedge

bb.ah:                                            ; preds = %bb.aa
  store i64 0, ptr %i.af, align 8, !noalias !499551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ep = tail call fastcc noundef align 8 dereferenceable(8) ptr @"_ZN11typed_arena14Arena$LT$T$GT$15alloc_slow_path17h1c7ae19edb52e23aE"(ptr noundef nonnull align 8 %i.af, ptr noalias noundef nonnull align 8 %i.ea)
  br label %.backedge.backedge
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_ZN6pretty6render4best17hbf081fd1a04c1842E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 15 uses
end_hunk_2
begin_hunk_3_@"_ZN79_$LT$nickel_lang_parser..ast..MergePriority$u20$as$u20$core..cmp..PartialEq$GT$2eq17h115affa3fe6d8e65E":bb.a
  br i1 %.not.i.i.i38, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h901e06393577e671E.exit.i39", label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit43"

.split.i28:                                       ; preds = %bb.n
  tail call void @llvm.assume(i1 %i.at)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !504902, !noundef !19
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !504903, !noundef !19
  %i.bb = icmp eq i64 %i.ay, %i.ba
  br i1 %i.bb, label %bb.p, label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit43"

"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h901e06393577e671E.exit.i39": ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val12.i40 = load ptr, ptr %i.bc, align 8, !alias.scope !504903, !nonnull !19, !noundef !19
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val10.i41 = load ptr, ptr %i.bd, align 8, !alias.scope !504902, !nonnull !19, !noundef !19
  %i.be = shl nuw nsw i64 %.val11.i36, 3
  %bcmp.i.i.i42 = tail call i32 @bcmp(ptr nonnull readonly align 8 %.val10.i41, ptr nonnull readonly align 8 %.val12.i40, i64 %i.be), !alias.scope !504904, !noalias !504905
  %i.bf = icmp eq i32 %bcmp.i.i.i42, 0
  br i1 %i.bf, label %bb.p, label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit43"

bb.p:                                             ; preds = %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h901e06393577e671E.exit.i39", %.split.i28
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bh = load i64, ptr %i.bg, align 8, !range !52, !alias.scope !504902, !noundef !19
  %i.bi = icmp ne i64 %i.bh, -9223372036854775808 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bk = load i64, ptr %i.bj, align 8, !range !52, !alias.scope !504903, !noundef !19
  %i.bl = icmp eq i64 %i.bk, -9223372036854775808 ; 3 uses
  %not.6.i29 = xor i1 %i.bl, true
  %i.bm = xor i1 %i.bi, %i.bl
  br i1 %i.bm, label %bb.q, label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit43"

bb.q:                                             ; preds = %bb.p
  br i1 %i.bi, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.assume(i1 %not.6.i29)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val7.i30 = load i64, ptr %i.bn, align 8, !alias.scope !504902, !noundef !19 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val9.i31 = load i64, ptr %i.bo, align 8, !alias.scope !504903, !noundef !19
  %.not.i.i14.i32 = icmp eq i64 %.val7.i30, %.val9.i31
  br i1 %.not.i.i14.i32, label %bb.s, label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit43"

bb.s:                                             ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val8.i33 = load ptr, ptr %i.bp, align 8, !alias.scope !504903, !nonnull !19, !noundef !19
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i34 = load ptr, ptr %i.bq, align 8, !alias.scope !504902, !nonnull !19, !noundef !19
  %i.br = shl nuw nsw i64 %.val7.i30, 3
  %bcmp.i.i16.i35 = tail call i32 @bcmp(ptr nonnull readonly align 8 %.val.i34, ptr nonnull readonly align 8 %.val8.i33, i64 %i.br), !alias.scope !504906, !noalias !504905
  %i.bs = icmp eq i32 %bcmp.i.i16.i35, 0
  br label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit43"

bb.t:                                             ; preds = %bb.q
  tail call void @llvm.assume(i1 %i.bl)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !504902, !noundef !19
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !504903, !noundef !19
  %i.bx = icmp eq i64 %i.bu, %i.bw
  br label %"_ZN62_$LT$malachite_q..Rational$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8b77618d1b070774E.exit43"
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN79_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$core..fmt..Display$GT$3fmt17h2d2d787f19b359adE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !504917
  store i64 0, ptr %i.b, align 8, !noalias !504917
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !504917
  call void @"_ZN18nickel_lang_parser3ast6pretty139_$LT$impl$u20$pretty..Pretty$LT$nickel_lang_parser..ast..pretty..Allocator$GT$$u20$for$u20$$RF$nickel_lang_parser..ast..typ..RecordRows$GT$6pretty17h65f410a160d3c365E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noundef nonnull align 8 %i.b), !noalias !504917
  %i.c = load i8, ptr %i.a, align 8, !range !67, !noalias !504917, !noundef !19
  %.not.i = icmp eq i8 %i.c, 15                   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !noalias !504917, !nonnull !19 ; 4 uses
  %.sroa.01.0.i = select i1 %.not.i, ptr %i.e, ptr %i.a
  %i.f = invoke fastcc noundef zeroext i1 @_ZN6pretty6render4best17hbf081fd1a04c1842E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.01.0.i, ptr nonnull align 8 dereferenceable(24) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr89drop_in_place$LT$pretty..DocBuilder$LT$nickel_lang_parser..ast..pretty..Allocator$GT$$GT$17hd042ef62d824be5dE"(ptr noalias noundef align 8 dereferenceable(32) %i.a) #53
          to label %common.resume.i unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$pretty..Doc$LT$pretty..BoxDoc$GT$$GT$17h55c17926cb1cc05eE"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #56
          to label %"_ZN4core3ptr35drop_in_place$LT$pretty..BoxDoc$GT$17hd4b10899d8afa29bE.exit.i.i.i" unwind label %bb.e, !noalias !504918, !inline_history !4

common.resume.i:                                  ; preds = %bb.e, %bb.b
  %common.resume.op.i = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.g, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 24, i64 noundef 8) #54, !noalias !504918, !inline_history !68
  br label %common.resume.i

"_ZN4core3ptr35drop_in_place$LT$pretty..BoxDoc$GT$17hd4b10899d8afa29bE.exit.i.i.i": ; preds = %bb.d
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 24, i64 noundef 8) #54, !noalias !504918, !inline_history !68
  br label %_ZN18nickel_lang_parser3ast6pretty10fmt_pretty17h153da241330dcc2aE.exit

bb.f:                                             ; preds = %bb.c
  call fastcc void @"_ZN4core3ptr54drop_in_place$LT$pretty..Doc$LT$pretty..BoxDoc$GT$$GT$17h55c17926cb1cc05eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.a)
  br label %_ZN18nickel_lang_parser3ast6pretty10fmt_pretty17h153da241330dcc2aE.exit

bb.g:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55
  unreachable

_ZN18nickel_lang_parser3ast6pretty10fmt_pretty17h153da241330dcc2aE.exit: ; preds = %"_ZN4core3ptr35drop_in_place$LT$pretty..BoxDoc$GT$17hd4b10899d8afa29bE.exit.i.i.i", %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !504917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !504917
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 2) i8 @"_ZN79_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hd4c0d8b330fb3967E"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0), !noalias !504922 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 1        ; 2 uses
  %i.c = tail call { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %1), !noalias !504923 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 1        ; 2 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.d)
  %i.e = sub i64 %i.b, %i.d
  %i.f = extractvalue { ptr, i64 } %i.c, 0
  %i.g = extractvalue { ptr, i64 } %i.a, 0
  %i.h = tail call i32 @memcmp(ptr %i.g, ptr %i.f, i64 %..i), !noalias !504924 ; 2 uses
  %i.i = sext i32 %i.h to i64
  %i.j = icmp eq i32 %i.h, 0
  %spec.store.select.i = select i1 %i.j, i64 %i.e, i64 %i.i
  %i.k = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i, i64 0)
  ret i8 %i.k
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN79_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..fmt..Display$GT$3fmt17hb3e33a24e8926132E"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(20) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = tail call { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.d) ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  store ptr %i.f, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.g, ptr %i.h, align 8
  store ptr %i.b, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h1597c5e36024d8d6E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.i, align 8, !nonnull !19, !noundef !19
  %.val = load ptr, ptr %1, align 8, !nonnull !19, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !504927
  store ptr @122, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.j = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !504927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !504927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.j
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 1, -9223372036854775807) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !35, !noundef !19 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = trunc nuw i64 %i.a to i1
  br i1 %i.c, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load i64, ptr %i.g, align 8, !noundef !19 ; 2 uses
  %.not38 = icmp ugt i64 %i.h, %i.d               ; 2 uses
  %i.i = sub nuw i64 %i.d, %i.h
  %spec.select = select i1 %.not38, i64 undef, i64 %i.i
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.j = phi ptr [ %.pre, %._crit_edge ], [ %i.f, %bb.b ] ; 3 uses
  %.sroa.7.0 = phi i64 [ undef, %._crit_edge ], [ %spec.select, %bb.b ]
  %.sroa.024.0 = phi i1 [ true, %._crit_edge ], [ %.not38, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !19
  %.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %2, i64 448) ; 2 uses
  %i.n = add i64 %i.m, -48                        ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit", label %bb.d, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.p = shl nuw i64 %i.n, 1
  %.sroa.0.0.i22 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.p)
  %invariant.op = add i64 %2, -1
  %.sroa.0.0.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 range(i64 1, -9223372036854775807) %1, i64 16) ; 5 uses
  %.reass = add i64 %.sroa.0.0.i.i.i.i.i, %invariant.op ; 2 uses
  %i.q = icmp ult i64 %.reass, %2
  %i.r = sub i64 0, %.sroa.0.0.i.i.i.i.i
  %i.s = and i64 %.reass, %i.r
  br label %bb.e

bb.e:                                             ; preds = %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h7a02229a0aae9bbbE.exit.thread.i", %bb.d
  %i.t = phi i64 [ %i.a, %bb.d ], [ %.pre40, %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h7a02229a0aae9bbbE.exit.thread.i" ]
  %.sroa.027.0 = phi i64 [ %.sroa.0.0.i22, %bb.d ], [ %i.ad, %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h7a02229a0aae9bbbE.exit.thread.i" ] ; 5 uses
  %i.u = load i64, ptr %i.b, align 8, !noalias !504948 ; 2 uses
  %i.v = trunc nuw i64 %i.t to i1
  %i.w = icmp ult i64 %2, %i.u
  %or.cond = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond, label %bb.f, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.e, %bb.f
  %.not.i.i.i.old = icmp ult i64 %.sroa.027.0, %.sroa.0.0.i
  br i1 %.not.i.i.i.old, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit", label %._crit_edge.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.x = icmp uge i64 %.sroa.027.0, %2
  %i.y = icmp ult i64 %i.u, 448
  %or.cond.i.i.i = and i1 %i.x, %i.y
  br i1 %or.cond.i.i.i, label %bb.g, label %._crit_edge.i

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %i.k, align 8, !noalias !504948, !nonnull !19, !noundef !19
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !504948, !noundef !19
  %i.ac = icmp ne i64 %i.ab, 0
  %.not.i.i.i = icmp ult i64 %.sroa.027.0, 448
  %or.cond37 = select i1 %i.ac, i1 %.not.i.i.i, i1 false
  br i1 %or.cond37, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit", label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.g, %._crit_edge.i
  %i.ad = lshr i64 %.sroa.027.0, 1
  br i1 %i.q, label %bb.h, label %bb.i, !prof !20

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.ae = tail call noundef i64 @_ZN7bumpalo24allocation_size_overflow17he37753b0ea3e9ab5E(), !noalias !504949
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i.i, %bb.h
  %.sroa.08.0.i.i.i.i = phi i64 [ %i.ae, %bb.h ], [ %i.s, %._crit_edge.i.i.i ]
  %.sroa.0.0.i24.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.08.0.i.i.i.i, i64 %.sroa.027.0) ; 4 uses
  %i.af = icmp ult i64 %.sroa.0.0.i24.i.i.i.i, 4096
  br i1 %i.af, label %.thread.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = add i64 %.sroa.0.0.i24.i.i.i.i, 64
  %i.ah = add i64 %.sroa.0.0.i24.i.i.i.i, 4159    ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  br i1 %i.ai, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit", label %bb.k, !prof !20

bb.k:                                             ; preds = %bb.j
  %i.aj = and i64 %i.ah, -4096
  %i.ak = add i64 %i.aj, -64
  br label %bb.l

.thread.i.i.i.i:                                  ; preds = %bb.i
  %i.al = add nuw nsw i64 %.sroa.0.0.i24.i.i.i.i, 63
  %i.am = tail call range(i64 51, 65) i64 @llvm.ctlz.i64(i64 %i.al, i1 true)
  %i.an = lshr i64 -1, %i.am
  %i.ao = add nsw i64 %i.an, -63
  br label %bb.l

bb.l:                                             ; preds = %.thread.i.i.i.i, %bb.k
  %.sroa.02.126.i.i.i.i = phi i64 [ %i.ao, %.thread.i.i.i.i ], [ %i.ak, %bb.k ] ; 7 uses
  %i.ap = add i64 %.sroa.02.126.i.i.i.i, 48       ; 3 uses
  %3 = icmp uge i64 %.sroa.7.0, %.sroa.02.126.i.i.i.i
  %or.cond.not.i.i.i.i = select i1 %.sroa.024.0, i1 true, i1 %3
  br i1 %or.cond.not.i.i.i.i, label %bb.m, label %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h7a02229a0aae9bbbE.exit.thread.i"

bb.m:                                             ; preds = %bb.l
  %i.aq = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.ap, i64 noundef %.sroa.0.0.i.i.i.i.i), !noalias !504950
  br i1 %i.aq, label %bb.n, label %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h7a02229a0aae9bbbE.exit.thread.i"

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !504950
  %i.ar = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ap, i64 noundef %.sroa.0.0.i.i.i.i.i) #54, !noalias !504950 ; 4 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h7a02229a0aae9bbbE.exit.thread.i", label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hd7b25994e78d4637E.exit

"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h7a02229a0aae9bbbE.exit.thread.i": ; preds = %bb.n, %bb.m, %bb.l
  %.pre40 = load i64, ptr %0, align 8, !range !35, !noalias !504948
  br label %bb.e

_ZN4core4iter6traits8iterator8Iterator8try_fold17hd7b25994e78d4637E.exit: ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.02.126.i.i.i.i ; 12 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.av = load i64, ptr %i.au, align 8, !noalias !504950, !noundef !19
  %i.aw = add i64 %i.av, %.sroa.02.126.i.i.i.i
  store ptr %i.ar, ptr %i.at, align 8, !noalias !504950
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !504950
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 %i.ap, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !504950
  %.sroa.617.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr %i.j, ptr %.sroa.617.0..sroa_idx.i.i.i.i.i, align 8, !noalias !504950
  %.sroa.718.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 2 uses
  store ptr %i.at, ptr %.sroa.718.0..sroa_idx.i.i.i.i.i, align 8, !noalias !504950
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  store i64 %i.aw, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 8, !noalias !504950
  store ptr %i.at, ptr %i.k, align 8
  %i.ax = tail call i8 @llvm.ucmp.i8.i64(i64 range(i64 1, -9223372036854775807) %1, i64 1)
  switch i8 %i.ax, label %bb.o [
    i8 -1, label %bb.r
    i8 0, label %bb.p
    i8 1, label %bb.q
  ]

bb.o:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator8try_fold17hd7b25994e78d4637E.exit
  unreachable

bb.p:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator8try_fold17hd7b25994e78d4637E.exit
  %i.ay = add i64 %1, -1
  %i.az = add i64 %i.ay, %2                       ; 2 uses
  %i.ba = icmp uge i64 %i.az, %2
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = sub i64 0, %1
  %i.bc = and i64 %i.az, %i.bb                    ; 2 uses
  %i.bd = icmp ugt i64 %i.bc, %.sroa.02.126.i.i.i.i
  br i1 %i.bd, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit", label %bb.s

bb.q:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator8try_fold17hd7b25994e78d4637E.exit
  %i.be = add i64 %1, -1                          ; 2 uses
  %i.bf = add i64 %2, %i.be                       ; 2 uses
  %i.bg = icmp uge i64 %i.bf, %2
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = sub i64 0, %1
  %i.bi = and i64 %i.bf, %i.bh                    ; 2 uses
  %i.bj = ptrtoint ptr %i.at to i64
  %i.bk = and i64 %i.be, %i.bj                    ; 2 uses
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = getelementptr i8, ptr %i.at, i64 %i.bl  ; 2 uses
  %i.bn = sub i64 %.sroa.02.126.i.i.i.i, %i.bk
  %i.bo = icmp ult ptr %i.bm, %i.ar
  %i.bp = icmp ugt i64 %i.bi, %i.bn
  %or.cond.i = or i1 %i.bo, %i.bp
  br i1 %or.cond.i, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit", label %bb.s

bb.r:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator8try_fold17hd7b25994e78d4637E.exit
  %i.bq = icmp ugt i64 %2, %.sroa.02.126.i.i.i.i
  br i1 %i.bq, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit", label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.sink50 = phi i64 [ %i.bc, %bb.p ], [ %i.bi, %bb.q ], [ %2, %bb.r ]
  %.sink = phi ptr [ %i.at, %bb.p ], [ %i.bm, %bb.q ], [ %i.at, %bb.r ]
  %i.br = sub i64 0, %.sink50
  %i.bs = getelementptr i8, ptr %.sink, i64 %i.br ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bs) ]
  store ptr %i.bs, ptr %.sroa.718.0..sroa_idx.i.i.i.i.i, align 8
  br label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit": ; preds = %bb.g, %._crit_edge.i, %bb.j, %bb.c, %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.0.1 = phi ptr [ null, %bb.q ], [ %i.bs, %bb.s ], [ null, %bb.r ], [ null, %bb.p ], [ null, %bb.c ], [ null, %bb.j ], [ null, %._crit_edge.i ], [ null, %bb.g ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 2) i8 @"_ZN80_$LT$nickel_lang_parser..ast..MergePriority$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17h2fdca982c50c8306E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i8 @"_ZN73_$LT$nickel_lang_parser..ast..MergePriority$u20$as$u20$core..cmp..Ord$GT$3cmp17h77b7f06e195c5807E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
  ret i8 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN80_$LT$nickel_lang_parser..ast..pattern..Pattern$u20$as$u20$core..fmt..Display$GT$3fmt17h30970ff71db7b726E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !504961
  store i64 0, ptr %i.b, align 8, !noalias !504961
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !504961
  call void @"_ZN18nickel_lang_parser3ast6pretty140_$LT$impl$u20$pretty..Pretty$LT$nickel_lang_parser..ast..pretty..Allocator$GT$$u20$for$u20$$RF$nickel_lang_parser..ast..pattern..Pattern$GT$6pretty17hf229c0d983367811E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noundef nonnull align 8 %i.b), !noalias !504961
  %i.c = load i8, ptr %i.a, align 8, !range !67, !noalias !504961, !noundef !19
  %.not.i = icmp eq i8 %i.c, 15                   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !noalias !504961, !nonnull !19 ; 4 uses
  %.sroa.01.0.i = select i1 %.not.i, ptr %i.e, ptr %i.a
  %i.f = invoke fastcc noundef zeroext i1 @_ZN6pretty6render4best17hbf081fd1a04c1842E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.01.0.i, ptr nonnull align 8 dereferenceable(24) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr89drop_in_place$LT$pretty..DocBuilder$LT$nickel_lang_parser..ast..pretty..Allocator$GT$$GT$17hd042ef62d824be5dE"(ptr noalias noundef align 8 dereferenceable(32) %i.a) #53
          to label %common.resume.i unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$pretty..Doc$LT$pretty..BoxDoc$GT$$GT$17h55c17926cb1cc05eE"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #56
          to label %"_ZN4core3ptr35drop_in_place$LT$pretty..BoxDoc$GT$17hd4b10899d8afa29bE.exit.i.i.i" unwind label %bb.e, !noalias !504962, !inline_history !4

common.resume.i:                                  ; preds = %bb.e, %bb.b
  %common.resume.op.i = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.g, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 24, i64 noundef 8) #54, !noalias !504962, !inline_history !68
  br label %common.resume.i

"_ZN4core3ptr35drop_in_place$LT$pretty..BoxDoc$GT$17hd4b10899d8afa29bE.exit.i.i.i": ; preds = %bb.d
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 24, i64 noundef 8) #54, !noalias !504962, !inline_history !68
  br label %_ZN18nickel_lang_parser3ast6pretty10fmt_pretty17h0a5a853e66eaa306E.exit

bb.f:                                             ; preds = %bb.c
  call fastcc void @"_ZN4core3ptr54drop_in_place$LT$pretty..Doc$LT$pretty..BoxDoc$GT$$GT$17h55c17926cb1cc05eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.a)
  br label %_ZN18nickel_lang_parser3ast6pretty10fmt_pretty17h0a5a853e66eaa306E.exit

bb.g:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55
  unreachable

_ZN18nickel_lang_parser3ast6pretty10fmt_pretty17h0a5a853e66eaa306E.exit: ; preds = %"_ZN4core3ptr35drop_in_place$LT$pretty..BoxDoc$GT$17hd4b10899d8afa29bE.exit.i.i.i", %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !504961
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !504961
  ret i1 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN80_$LT$nickel_lang_parser..ast..record..FieldDef$u20$as$u20$core..clone..Clone$GT$5clone17hb57ff880ad338284E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(280) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(280) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [88 x i8], align 8                ; 5 uses
  %.sroa.4.i = alloca [96 x i8], align 8          ; 5 uses
  %.sroa.7.i = alloca [48 x i8], align 8          ; 2 uses
  %i.c = alloca [120 x i8], align 8               ; 8 uses
  %.sroa.22 = alloca [23 x i8], align 1           ; 19 uses
  %.sroa.5.sroa.0 = alloca [12 x i8], align 4     ; 4 uses
  %.sroa.0 = alloca [120 x i8], align 8           ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !19, !align !24, !noundef !19
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.g = load i64, ptr %i.f, align 8, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !504969)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !504969, !align !18, !noundef !19 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !504969
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !504970
  %i.l = load i64, ptr %1, align 8, !range !32, !alias.scope !504969, !noundef !19
  %.not11.i = icmp eq i64 %i.l, 18
  br i1 %.not11.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !504970
  call fastcc void @"_ZN100_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h5310f34a6db5b37cE"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %1), !noalias !504971
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.4.88..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.88..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.m, i64 16, i1 false), !noalias !504971
  %.sroa.08.0.copyload.i = load i64, ptr %i.b, align 8, !noalias !504970
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4.0..sroa_idx.i, i64 80, i1 false), !noalias !504970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !504970
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.04.0.i = phi i64 [ %.sroa.08.0.copyload.i, %bb.b ], [ 18, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !504969, !nonnull !19, !align !24, !noundef !19
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !504969, !noundef !19
  store i64 %.sroa.04.0.i, ptr %i.c, align 8, !noalias !504970
end_hunk_3
