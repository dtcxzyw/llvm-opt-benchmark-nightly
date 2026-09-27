Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/liquid_core-693624a1712aaef7.liquid_core.91b98bf4681e5dbd-cgu.0?download=true
inline.NumInlined: 4312
inline.NumDeleted: 1825
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 26
begin_hunk_0_@"_ZN104_$LT$liquid_core..partials..inmemory..InMemorySource$u20$as$u20$liquid_core..partials..PartialSource$GT$7try_get17h8b5af0e8bcf0f51eE":bb.a
"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h08a43a02169960dcE.exit.thread.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h08a43a02169960dcE.exit.i.i", %.lr.ph.i.i
  %i.aa = add i16 %.sroa.06.0.i34.i.i, -1
  %i.ab = and i16 %i.aa, %.sroa.06.0.i34.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ab, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ac = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ad = add i64 %.sroa.01.0.i.i.i, %i.ac
  br label %bb.c

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2d2636f59bc7a86fE.exit": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h08a43a02169960dcE.exit.i.i"
  %i.ae = getelementptr inbounds i8, ptr %i.t, i64 -16
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !6, !noundef !6
  %i.ag = getelementptr inbounds i8, ptr %i.t, i64 -8
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !6
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ah, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.e

select.unfold:                                    ; preds = %._crit_edge.i.i, %bb.a
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %select.unfold, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2d2636f59bc7a86fE.exit"
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef zeroext i1 @"_ZN104_$LT$liquid_core..partials..inmemory..InMemorySource$u20$as$u20$liquid_core..partials..PartialSource$GT$8contains17h8d1b4334e434cd84E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !628)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !628, !noalias !629, !noundef !6
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2d2636f59bc7a86fE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i = load i64, ptr %i.d, align 8, !alias.scope !628, !noalias !629, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val5.i = load i64, ptr %i.e, align 8, !alias.scope !628, !noalias !629, !noundef !6
  %i.f = tail call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h1e824eac2428b02fE(i64 %.val.i, i64 %.val5.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2), !noalias !628 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !631)
  %i.g = lshr i64 %i.f, 57
  %i.h = trunc nuw nsw i64 %i.g to i8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !632, !noalias !633, !noundef !6 ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !alias.scope !632, !noalias !633, !nonnull !6, !noundef !6 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <16 x i8> poison, i8 %i.h, i64 0
  %.sroa.0.15.vec.insert.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ac, %bb.d ]
  %.pn.i.i = phi i64 [ %i.f, %bb.b ], [ %i.ad, %bb.d ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.j      ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.l, align 1, !noalias !634 ; 2 uses
  %i.m = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %.sroa.0.15.vec.insert.i.i.i
  %i.n = bitcast <16 x i1> %i.m to i16            ; 2 uses
  %.not.i.not33.i.i = icmp eq i16 %i.n, 0
  br i1 %.not.i.not33.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h08a43a02169960dcE.exit.thread.i.i"
  %.sroa.06.0.i34.i.i = phi i16 [ %i.ab, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h08a43a02169960dcE.exit.thread.i.i" ], [ %i.n, %bb.c ] ; 3 uses
  %i.o = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.i, i1 true)
  %i.p = zext nneg i16 %i.o to i64
  %i.q = add i64 %.sroa.01.0.i.i.i, %i.p
  %i.r = and i64 %i.q, %i.j
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr inbounds [48 x i8], ptr %i.k, i64 %i.s ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -32
  %.val5.i.i.i = load i64, ptr %i.u, align 8, !noalias !635, !noundef !6
  %.not.i.i.i.i.i.i = icmp eq i64 %2, %.val5.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h08a43a02169960dcE.exit.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h08a43a02169960dcE.exit.thread.i.i", !prof !22

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h08a43a02169960dcE.exit.i.i": ; preds = %.lr.ph.i.i
  %i.v = getelementptr i8, ptr %i.t, i64 -40
  %.val4.i.i.i = load ptr, ptr %i.v, align 8, !noalias !635, !nonnull !6, !noundef !6
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %1, ptr nonnull readonly align 1 %.val4.i.i.i, i64 %2), !alias.scope !636, !noalias !637
  %i.w = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.w, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2d2636f59bc7a86fE.exit", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h08a43a02169960dcE.exit.thread.i.i", !prof !23

._crit_edge.i.i:                                  ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h08a43a02169960dcE.exit.thread.i.i", %bb.c
  %i.x = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.y = bitcast <16 x i1> %i.x to i16
  %i.z = icmp eq i16 %i.y, 0
  br i1 %i.z, label %bb.d, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2d2636f59bc7a86fE.exit", !prof !12

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h08a43a02169960dcE.exit.thread.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h08a43a02169960dcE.exit.i.i", %.lr.ph.i.i
  %i.aa = add i16 %.sroa.06.0.i34.i.i, -1
  %i.ab = and i16 %i.aa, %.sroa.06.0.i34.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ab, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ac = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ad = add i64 %.sroa.01.0.i.i.i, %i.ac
  br label %bb.c

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h2d2636f59bc7a86fE.exit": ; preds = %._crit_edge.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h08a43a02169960dcE.exit.i.i", %bb.a
  %.sroa.0.0.i = phi i1 [ false, %bb.a ], [ true, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h08a43a02169960dcE.exit.i.i" ], [ false, %._crit_edge.i.i ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN104_$LT$liquid_core..runtime..runtime..NullObject$u20$as$u20$liquid_core..model..value..view..ValueView$GT$11query_state17h87d84dcd820d2ef5E"(ptr noalias nonnull readonly align 1 captures(none) %0, i8 noundef range(i8 0, 4) %1) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i8 %1, 0
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN104_$LT$liquid_core..runtime..runtime..NullObject$u20$as$u20$liquid_core..model..value..view..ValueView$GT$6render17h224429a1d9254b96E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nonnull readonly align 1 captures(none) %1) unnamed_addr #1 {
bb.a:
  tail call void @"_ZN103_$LT$liquid_core..model..value..values..Value$u20$as$u20$liquid_core..model..value..view..ValueView$GT$6render17hf3c49d23e2127ce9E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) @_ZN11liquid_core5model5value4view3NIL17hec7c122028ba4715E)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN104_$LT$liquid_core..runtime..runtime..NullObject$u20$as$u20$liquid_core..model..value..view..ValueView$GT$6source17hdef4661586f2dfa4E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nonnull readonly align 1 captures(none) %1) unnamed_addr #1 {
bb.a:
  tail call void @"_ZN103_$LT$liquid_core..model..value..values..Value$u20$as$u20$liquid_core..model..value..view..ValueView$GT$6source17h5f11ebfc7ce7d21aE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) @_ZN11liquid_core5model5value4view3NIL17hec7c122028ba4715E)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @"_ZN104_$LT$liquid_core..runtime..runtime..NullObject$u20$as$u20$liquid_core..model..value..view..ValueView$GT$7to_kstr17h32dd2e1d5a61af7aE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24), (31, 32)) %0, ptr noalias nonnull readonly align 1 captures(none) %1) unnamed_addr #8 {
bb.a:
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 0, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN104_$LT$liquid_core..runtime..runtime..NullObject$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8as_debug17h95d7ad9dfd320d8fE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @42, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN104_$LT$liquid_core..runtime..runtime..NullObject$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value17hab78e1d7852c7e1dE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 1), (8, 56)) %0, ptr noalias nonnull readonly align 1 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !11, !noalias !648, !noundef !6
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZN4core3ops8function6FnOnce9call_once17he25bbf09c6a72afdE.exit_crit_edge.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hc58a51e3ab37ac93E.exit.i.i", !prof !24

._ZN4core3ops8function6FnOnce9call_once17he25bbf09c6a72afdE.exit_crit_edge.i.i: ; preds = %bb.a
  %.pre.i.i = load i64, ptr %i.a, align 8, !noalias !649
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !649
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h630dc5379a959ae0E.exit"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hc58a51e3ab37ac93E.exit.i.i": ; preds = %bb.a
  %i.e = tail call { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE(), !noalias !650 ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = extractvalue { i64, i64 } %i.e, 1        ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.g, ptr %i.h, align 8, !noalias !650
  store i8 1, ptr %i.b, align 8, !noalias !650
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h630dc5379a959ae0E.exit"

"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h630dc5379a959ae0E.exit": ; preds = %._ZN4core3ops8function6FnOnce9call_once17he25bbf09c6a72afdE.exit_crit_edge.i.i, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hc58a51e3ab37ac93E.exit.i.i"
  %.pre-phi8 = phi i64 [ %.pre1.i.i, %._ZN4core3ops8function6FnOnce9call_once17he25bbf09c6a72afdE.exit_crit_edge.i.i ], [ %i.g, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hc58a51e3ab37ac93E.exit.i.i" ]
  %i.i = phi i64 [ %.pre.i.i, %._ZN4core3ops8function6FnOnce9call_once17he25bbf09c6a72afdE.exit_crit_edge.i.i ], [ %i.f, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hc58a51e3ab37ac93E.exit.i.i" ] ; 2 uses
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr %i.a, align 8, !noalias !649
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) @44, i64 32, i1 false)
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.i, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.pre-phi8, ptr %.sroa.56.0..sroa_idx, align 8
  store i8 2, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN104_$LT$liquid_core..runtime..runtime..NullObject$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9as_object17h572093c8014e4da4E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @45, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN104_$LT$liquid_core..runtime..runtime..NullObject$u20$as$u20$liquid_core..model..value..view..ValueView$GT$9type_name17hd6dc44ba466e77bfE"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @41, i64 6 }
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN105_$LT$liquid_core..partials..eager..EagerStore$u20$as$u20$liquid_core..runtime..partials..PartialStore$GT$3get17h24c11f3eec04f302E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 1 captures(none) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !682)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !682, !noalias !683, !noundef !6
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i = load i64, ptr %i.i, align 8, !alias.scope !682, !noalias !683, !noundef !6
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val5.i = load i64, ptr %i.j, align 8, !alias.scope !682, !noalias !683, !noundef !6
  %i.k = tail call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h1e824eac2428b02fE(i64 %.val.i, i64 %.val5.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3), !noalias !682 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !684)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !685)
  %i.l = lshr i64 %i.k, 57
  %i.m = trunc nuw nsw i64 %i.l to i8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !686, !noalias !687, !noundef !6 ; 2 uses
  %i.p = load ptr, ptr %1, align 8, !alias.scope !686, !noalias !687, !nonnull !6, !noundef !6 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <16 x i8> poison, i8 %i.m, i64 0
  %.sroa.0.15.vec.insert.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ah, %bb.d ]
  %.pn.i.i = phi i64 [ %i.k, %bb.b ], [ %i.ai, %bb.d ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.o      ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.q, align 1, !noalias !688 ; 2 uses
  %i.r = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %.sroa.0.15.vec.insert.i.i.i
  %i.s = bitcast <16 x i1> %i.r to i16            ; 2 uses
  %.not.i.not33.i.i = icmp eq i16 %i.s, 0
  br i1 %.not.i.not33.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hefd4ea5020ad290aE.exit.thread.i.i"
  %.sroa.06.0.i34.i.i = phi i16 [ %i.ag, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hefd4ea5020ad290aE.exit.thread.i.i" ], [ %i.s, %bb.c ] ; 3 uses
  %i.t = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.i, i1 true)
  %i.u = zext nneg i16 %i.t to i64
  %i.v = add i64 %.sroa.01.0.i.i.i, %i.u
  %i.w = and i64 %i.v, %i.o
  %i.x = sub nsw i64 0, %i.w
  %i.y = getelementptr inbounds [40 x i8], ptr %i.p, i64 %i.x ; 4 uses
  %i.z = getelementptr i8, ptr %i.y, i64 -24
  %.val5.i.i.i = load i64, ptr %i.z, align 8, !noalias !689, !noundef !6
  %.not.i.i.i.i.i.i = icmp eq i64 %3, %.val5.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hefd4ea5020ad290aE.exit.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hefd4ea5020ad290aE.exit.thread.i.i", !prof !22

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hefd4ea5020ad290aE.exit.i.i": ; preds = %.lr.ph.i.i
  %i.aa = getelementptr i8, ptr %i.y, i64 -32
  %.val4.i.i.i = load ptr, ptr %i.aa, align 8, !noalias !689, !nonnull !6, !noundef !6
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %2, ptr nonnull readonly align 1 %.val4.i.i.i, i64 %3), !alias.scope !690, !noalias !691
  %i.ab = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.ab, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h0b721588fd0bf5b3E.exit", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hefd4ea5020ad290aE.exit.thread.i.i", !prof !23

._crit_edge.i.i:                                  ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hefd4ea5020ad290aE.exit.thread.i.i", %bb.c
  %i.ac = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = icmp eq i16 %i.ad, 0
  br i1 %i.ae, label %bb.d, label %select.unfold, !prof !12

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hefd4ea5020ad290aE.exit.thread.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hefd4ea5020ad290aE.exit.i.i", %.lr.ph.i.i
  %i.af = add i16 %.sroa.06.0.i34.i.i, -1
  %i.ag = and i16 %i.af, %.sroa.06.0.i34.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ah = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ai = add i64 %.sroa.01.0.i.i.i, %i.ah
  br label %bb.c

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h0b721588fd0bf5b3E.exit": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hefd4ea5020ad290aE.exit.i.i"
  %i.aj = getelementptr inbounds i8, ptr %i.y, i64 -16 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !noundef !6 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.r, label %bb.s

select.unfold:                                    ; preds = %._crit_edge.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @"_ZN105_$LT$liquid_core..partials..eager..EagerStore$u20$as$u20$liquid_core..runtime..partials..PartialStore$GT$5names17h0806a9ed684ca9e4E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1), !noalias !692
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !noalias !692, !nonnull !6, !noundef !6 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !692, !noundef !6 ; 4 uses
  %i.aq = icmp ult i64 %i.ap, 2
  br i1 %i.aq, label %bb.h, label %bb.e, !prof !24

bb.e:                                             ; preds = %select.unfold
  %i.ar = icmp ult i64 %i.ap, 21
  br i1 %i.ar, label %bb.g, label %bb.f, !prof !24

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4core5slice4sort8unstable7ipnsort17ha0a4562283ee729bE(ptr noalias noundef nonnull align 8 %i.an, i64 noundef %i.ap, ptr noalias noundef nonnull align 1 %i.a)
          to label %bb.h unwind label %bb.o, !noalias !692

bb.g:                                             ; preds = %bb.e
  tail call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h9579b4e420c7e1b7E(ptr noalias noundef nonnull align 8 %i.an, i64 noundef %i.ap)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %select.unfold
  call fastcc void @_ZN9itertools4free4join17h99997d1fd8e5ac17E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !692
  store ptr @47, ptr %i.b, align 8, !noalias !692
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 24, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !692
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 23
  store i8 0, ptr %.sroa.67.0..sroa_idx.i, align 1, !noalias !692
  %i.as = invoke noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.i unwind label %.thread26.i, !noalias !692 ; 6 uses

.thread26.i:                                      ; preds = %bb.h
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.thread21.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !692
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !692
  %i.au = icmp slt i64 %3, 0
  br i1 %i.au, label %bb.j, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !14

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.i
  %i.av = icmp eq i64 %3, 0
  br i1 %i.av, label %bb.l, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !693
  %i.aw = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %3, i64 noundef range(i64 1, 9) 1) #59, !noalias !693 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.j, label %bb.l

bb.j:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i", %bb.i
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i" ], [ 0, %bb.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @787) #57
          to label %.noexc.i unwind label %bb.m, !noalias !692

.noexc.i:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.l
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.thread21.i

bb.l:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.aw, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i" ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %2, i64 %3, i1 false), !noalias !694
  store i64 %3, ptr %i.d, align 8, !noalias !692
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !692
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %3, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !692
  %i.az = invoke fastcc noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error7context17h3f53cf04a07a244eE(ptr noalias noundef nonnull align 8 %i.as, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @48, i64 noundef 17, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %"_ZN105_$LT$liquid_core..partials..eager..EagerStore$u20$as$u20$liquid_core..runtime..partials..PartialStore$GT$3get28_$u7b$$u7b$closure$u7d$$u7d$17h0ba886354c5a6783E.exit" unwind label %bb.k, !noalias !692 ; 0 uses

bb.m:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$liquid_core..error..error..InnerError$GT$17hc148546d09e4dc7cE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.as)
          to label %"_ZN4core3ptr53drop_in_place$LT$liquid_core..error..error..Error$GT$17h2518bcfbc332241fE.exit" unwind label %.body, !noalias !695

.body:                                            ; preds = %bb.m
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.as, i64 noundef 64, i64 noundef 8) #59, !noalias !695
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !692
  unreachable

"_ZN4core3ptr53drop_in_place$LT$liquid_core..error..error..Error$GT$17h2518bcfbc332241fE.exit": ; preds = %bb.m
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.as, i64 noundef 64, i64 noundef 8) #59, !noalias !695
  br label %.thread21.i

.thread21.i:                                      ; preds = %"_ZN4core3ptr53drop_in_place$LT$liquid_core..error..error..Error$GT$17h2518bcfbc332241fE.exit", %bb.k, %.thread26.i
  %.pn25.i = phi { ptr, i32 } [ %i.at, %.thread26.i ], [ %i.ay, %bb.k ], [ %i.ba, %"_ZN4core3ptr53drop_in_place$LT$liquid_core..error..error..Error$GT$17h2518bcfbc332241fE.exit" ] ; 2 uses
  %.val.i.i.i = load i64, ptr %i.c, align 8, !range !21, !noalias !692, !noundef !6 ; 2 uses
  %i.bc = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.bc, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h0bdf0ade88d307dbE.exit.i", label %bb.n

bb.n:                                             ; preds = %.thread21.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val1.i.i.i = load ptr, ptr %i.bd, align 8, !noalias !692, !nonnull !6, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !696
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h0bdf0ade88d307dbE.exit.i"

"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h0bdf0ade88d307dbE.exit.i": ; preds = %bb.p, %bb.o, %bb.n, %.thread21.i
  %.pn.pn14.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.p ], [ %.pn25.i, %bb.n ], [ %lpad.thr_comm.i, %bb.o ], [ %.pn25.i, %.thread21.i ]
  resume { ptr, i32 } %.pn.pn14.i
end_hunk_0
begin_hunk_1_@"_ZN11liquid_core5model5array97_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$7to_kstr17ha00c356fb2e79552E":bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @443, ptr %i.g, align 8, !noalias !2365
  %i.h = invoke noundef zeroext i1 @"_ZN86_$LT$liquid_core..model..array..ArrayRender$LT$T$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hdf747c429c532220E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.d unwind label %bb.b, !noalias !2366, !inline_history !2343

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2367)
  call void @llvm.experimental.noalias.scope.decl(metadata !2368)
  %.val.i.i.i = load i64, ptr %i.d, align 8, !range !21, !alias.scope !2369, !noalias !2365, !noundef !6 ; 2 uses
  %i.j = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.j, label %common.resume, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !2369, !noalias !2365, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !2370, !inline_history !2343
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.e, label %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17ha8b841ccfebdf287E.exit", !prof !12

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @444, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @468, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @446) #57
          to label %.noexc.i unwind label %bb.b, !noalias !2365, !inline_history !2343

.noexc.i:                                         ; preds = %bb.e
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.c, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.p, %.body.i ], [ %i.i, %bb.c ], [ %i.i, %bb.b ]
  resume { ptr, i32 } %common.resume.op

"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17ha8b841ccfebdf287E.exit": ; preds = %bb.d
  %.sroa.0.0.copyload = load i64, ptr %i.d, align 8, !noalias !2371 ; 5 uses
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !2371 ; 7 uses
  %.sroa.5.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !2371 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = icmp sgt i64 %.sroa.5.0.copyload, -1
  call void @llvm.assume(i1 %i.k)
  %i.l = icmp samesign ult i64 %.sroa.5.0.copyload, 16
  br i1 %i.l, label %bb.i, label %bb.f

bb.f:                                             ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17ha8b841ccfebdf287E.exit"
  %i.m = icmp ugt i64 %.sroa.0.0.copyload, %.sroa.5.0.copyload
  br i1 %i.m, label %bb.g, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  %i.n = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.3.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1, i64 noundef range(i64 1, 9223372036854775807) %.sroa.5.0.copyload) #59, !noalias !2372 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.h, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %.sroa.5.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @766) #57
          to label %.noexc.i.i unwind label %.body.i, !noalias !2373

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

.body.i:                                          ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.3.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !2374
  br label %common.resume

bb.i:                                             ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17ha8b841ccfebdf287E.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.b, i8 0, i64 15, i1 false), !noalias !2375
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.b, ptr nonnull readonly align 1 %.sroa.3.0.copyload, i64 %.sroa.5.0.copyload, i1 false), !noalias !2375
  %.0..0..0..sroa.04.1.copyload = load i56, ptr %i.b, align 8, !noalias !2376
  %.sroa.04.1.insert.ext = zext i56 %.0..0..0..sroa.04.1.copyload to i64
  %.sroa.04.1.insert.shift = shl nuw i64 %.sroa.04.1.insert.ext, 8
  %.sroa.04.1.insert.insert = or disjoint i64 %.sroa.04.1.insert.shift, %.sroa.5.0.copyload
  %i.q = inttoptr i64 %.sroa.04.1.insert.insert to ptr ; 2 uses
  %.7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %.7..7..7..sroa.6.1.copyload = load i64, ptr %.7..7..7..sroa_idx, align 1, !noalias !2376 ; 2 uses
  %i.r = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.r, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.3.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !2377
  br label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit": ; preds = %bb.f, %bb.g, %bb.i, %bb.j
  %.sroa.04.0 = phi ptr [ %i.q, %bb.i ], [ %i.q, %bb.j ], [ %i.n, %bb.g ], [ %.sroa.3.0.copyload, %bb.f ]
  %.sroa.75.0 = phi i8 [ 1, %bb.i ], [ 1, %bb.j ], [ -1, %bb.g ], [ -1, %bb.f ]
  %.sroa.6.0 = phi i64 [ %.7..7..7..sroa.6.1.copyload, %bb.i ], [ %.7..7..7..sroa.6.1.copyload, %bb.j ], [ %.sroa.5.0.copyload, %bb.g ], [ %.sroa.5.0.copyload, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.04.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %.sroa.75.0, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN11liquid_core5model5array97_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$8as_array17h21fc8eb7807f8594E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @37, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN11liquid_core5model5array97_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$8as_debug17h80bade8c578d5bc9E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @90, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN11liquid_core5model5array97_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$8to_value17hb9fc7f170486e820E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !6 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2407
  %.idx = mul nuw nsw i64 %i.f, 56                ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9c754e64be9cbc74E.exit.i.i.thread.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9c754e64be9cbc74E.exit.i.i.thread.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  store i64 0, ptr %i.b, align 8, !noalias !2407
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8, !noalias !2407
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h9e6bddbaab88aa36E.exit

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !2408
  %i.j = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.idx, i64 noundef range(i64 1, 9) 8) #59, !noalias !2408 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.a, label %.preheader.i.i.preheader.i.i.i.i

bb.a:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i"
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %.idx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @460) #57, !noalias !2407
  unreachable

.preheader.i.i.preheader.i.i.i.i:                 ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i"
  store i64 %i.f, ptr %i.b, align 8, !noalias !2407
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.l, align 8, !noalias !2407
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2410)
  br label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.b, %.preheader.i.i.preheader.i.i.i.i
  %.val20.i.i.i.i.i.i.i.i.i = phi i64 [ %i.p, %bb.b ], [ 0, %.preheader.i.i.preheader.i.i.i.i ] ; 4 uses
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %i.d, i64 %.val20.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2411
  invoke void @"_ZN103_$LT$liquid_core..model..value..values..Value$u20$as$u20$liquid_core..model..value..view..ValueView$GT$8to_value17h18705804cd257f94E"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.n)
          to label %bb.b unwind label %.body.i.i.i.i, !noalias !2412

bb.b:                                             ; preds = %.preheader.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %i.j, i64 %.val20.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !2413
  %i.p = add nuw i64 %.val20.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2411
  %i.q = icmp eq i64 %i.p, %i.f
  br i1 %i.q, label %_ZN4core4iter6traits8iterator8Iterator7collect17h9e6bddbaab88aa36E.exit, label %.preheader.i.i.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.preheader.i.i.i.i.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  store i64 %.val20.i.i.i.i.i.i.i.i.i, ptr %i.m, align 8, !alias.scope !2414, !noalias !2415
  invoke void @"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$liquid_core..model..value..values..Value$GT$$GT$17h0c3b0b40ff7ebe80E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #58
          to label %bb.d unwind label %bb.c, !noalias !2407

bb.c:                                             ; preds = %.body.i.i.i.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !2407
  unreachable

bb.d:                                             ; preds = %.body.i.i.i.i
  resume { ptr, i32 } %i.r

_ZN4core4iter6traits8iterator8Iterator7collect17h9e6bddbaab88aa36E.exit: ; preds = %bb.b, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9c754e64be9cbc74E.exit.i.i.thread.i.i.i.i"
  %i.t = phi ptr [ %i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9c754e64be9cbc74E.exit.i.i.thread.i.i.i.i" ], [ %i.m, %bb.b ]
  store i64 %i.f, ptr %i.t, align 8, !alias.scope !2414, !noalias !2415
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2407
  store i8 1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN11liquid_core5model5array97_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$9type_name17h1644eb92fd965d5dE"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @40, i64 5 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_ZN11liquid_core5model5array9ArrayView4last17h5975849bd89f2c86E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2418, !noundef !6 ; 3 uses
  %i.c = icmp ult i64 %i.b, 164703072086692426
  tail call void @llvm.assume(i1 %i.c)
  %.not = icmp eq i64 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !2418, !nonnull !6
  %i.f = getelementptr [56 x i8], ptr %i.e, i64 %i.b
  %i.g = getelementptr i8, ptr %i.f, i64 -56
  %.sroa.0.0.i = select i1 %.not, ptr null, ptr %i.g
  %i.h = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr @61, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_ZN11liquid_core5model5array9ArrayView5first17h6c42d640d2df7e18E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2421, !noundef !6 ; 2 uses
  %i.c = icmp ult i64 %i.b, 164703072086692426
  tail call void @llvm.assume(i1 %i.c)
  %.not = icmp eq i64 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !2421, !nonnull !6
  %.sroa.0.0.i = select i1 %.not, ptr null, ptr %i.e
  %i.f = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr @61, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11liquid_core5model5value3cow8ValueCow10into_owned17h0f9608e685fdce23E(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !range !19, !noundef !6
  %i.b = icmp eq i8 %i.a, 5
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !8, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !align !9, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !6, !nonnull !6
  tail call void %i.h(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noundef nonnull align 1 %i.d)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_ZN11liquid_core5model5value3ser17ArrayDeserializer3new17h833cf9a4a60ab5e0E(ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(216) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !6, !nonnull !6
  %i.c = tail call { ptr, ptr } %i.b(ptr noundef nonnull align 1 %0)
  ret { ptr, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11liquid_core5model5value3ser18ObjectDeserializer3new17h23a57512fc5cc211E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(216) %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !6, !nonnull !6
  %i.c = tail call { ptr, ptr } %i.b(ptr noundef nonnull align 1 %1) ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0
  %i.e = extractvalue { ptr, ptr } %i.c, 1
  store ptr %i.d, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.g, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_ZN11liquid_core5model5value4view8value_eq17h5cfa56ac54299a2bE(ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(160) %1, ptr noundef nonnull align 1 %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(160) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %.sroa.7 = alloca [24 x i8], align 8            ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !6, !nonnull !6
  %i.j = tail call { ptr, ptr } %i.i(ptr noundef nonnull align 1 %0) ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 3 uses
  %i.l = extractvalue { ptr, ptr } %i.j, 1        ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.n = load ptr, ptr %i.m, align 8, !invariant.load !6, !nonnull !6
  %i.o = tail call { ptr, ptr } %i.n(ptr noundef nonnull align 1 %2) ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.o, 0        ; 3 uses
  %i.q = extractvalue { ptr, ptr } %i.o, 1        ; 3 uses
  %.not = icmp eq ptr %i.k, null
  %.not33 = icmp eq ptr %i.p, null
  %or.cond = select i1 %.not, i1 true, i1 %.not33
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !invariant.load !6, !nonnull !6
  %i.t = tail call { ptr, ptr } %i.s(ptr noundef nonnull align 1 %0) ; 2 uses
  %i.u = extractvalue { ptr, ptr } %i.t, 0        ; 3 uses
  %i.v = extractvalue { ptr, ptr } %i.t, 1        ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.x = load ptr, ptr %i.w, align 8, !invariant.load !6, !nonnull !6
  %i.y = tail call { ptr, ptr } %i.x(ptr noundef nonnull align 1 %2) ; 2 uses
  %i.z = extractvalue { ptr, ptr } %i.y, 0        ; 3 uses
  %i.aa = extractvalue { ptr, ptr } %i.y, 1       ; 3 uses
  %.not34 = icmp eq ptr %i.u, null
  %.not35 = icmp eq ptr %i.z, null
  %or.cond46 = select i1 %.not34, i1 true, i1 %.not35
  br i1 %or.cond46, label %bb.m, label %bb.n

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 168
  %i.ac = load ptr, ptr %i.ab, align 8, !invariant.load !6, !nonnull !6
  %i.ad = tail call noundef i64 %i.ac(ptr noundef nonnull align 1 %i.k)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 168
  %i.af = load ptr, ptr %i.ae, align 8, !invariant.load !6, !nonnull !6
  %i.ag = tail call noundef i64 %i.af(ptr noundef nonnull align 1 %i.p)
  %.not43 = icmp eq i64 %i.ad, %i.ag
  br i1 %.not43, label %bb.d, label %"_ZN4core3ptr216drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$$LP$kstring..string_cow..KStringCowBase$C$$RF$dyn$u20$liquid_core..model..value..view..ValueView$RP$$GT$$GT$17h6e0887461c4416e2E.exit"

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 176
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !6, !nonnull !6
  %i.aj = tail call { ptr, ptr } %i.ai(ptr noundef nonnull align 1 %i.k) ; 2 uses
  %i.ak = extractvalue { ptr, ptr } %i.aj, 0      ; 4 uses
  %i.al = extractvalue { ptr, ptr } %i.aj, 1      ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 176
  %i.an = load ptr, ptr %i.am, align 8, !invariant.load !6, !nonnull !6
  %i.ao = invoke { ptr, ptr } %i.an(ptr noundef nonnull align 1 %i.p)
          to label %bb.e unwind label %bb.l       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.ap = extractvalue { ptr, ptr } %i.ao, 0      ; 2 uses
  %i.aq = extractvalue { ptr, ptr } %i.ao, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  store ptr %i.ak, ptr %i.g, align 8, !alias.scope !2474, !noalias !2475
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.al, ptr %i.ar, align 8, !alias.scope !2474, !noalias !2475
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.ap, ptr %i.as, align 8, !alias.scope !2474, !noalias !2475
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.aq, ptr %i.at, align 8, !alias.scope !2474, !noalias !2475
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false), !alias.scope !2474, !noalias !2475
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !invariant.load !6, !noalias !2476, !nonnull !6
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  br label %bb.f

bb.f:                                             ; preds = %.noexc54, %bb.e
  %i.ay = invoke { ptr, ptr } %i.aw(ptr noundef nonnull align 1 %i.ak)
          to label %.noexc60 unwind label %bb.i, !inline_history !2436 ; 2 uses

.noexc60:                                         ; preds = %bb.f
  %i.az = extractvalue { ptr, ptr } %i.ay, 0      ; 2 uses
  %i.ba = extractvalue { ptr, ptr } %i.ay, 1      ; 2 uses
  %.not.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.noexc60
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ba) ]
  %i.bb = load ptr, ptr %i.ax, align 8, !invariant.load !6, !noalias !2476, !nonnull !6
  %i.bc = invoke { ptr, ptr } %i.bb(ptr noundef nonnull align 1 %i.ap)
          to label %.noexc61 unwind label %bb.i, !inline_history !2436 ; 2 uses

.noexc61:                                         ; preds = %bb.g
  %i.bd = extractvalue { ptr, ptr } %i.bc, 0      ; 2 uses
  %.not16.i.i = icmp eq ptr %i.bd, null
  br i1 %.not16.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.noexc61
  %i.be = extractvalue { ptr, ptr } %i.bc, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.be) ]
  %i.bf = invoke fastcc noundef zeroext i1 @_ZN11liquid_core5model5value4view8value_eq17h5cfa56ac54299a2bE(ptr noundef nonnull align 1 %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.ba, ptr noundef nonnull align 1 %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.be)
          to label %.noexc54 unwind label %bb.i, !inline_history !2437

end_hunk_1
begin_hunk_2_@"_ZN11liquid_core5model6object112_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..object..map..Object$GT$11query_state17haea7d4e90f8dc16dE":bb.a
  %.sroa.0.0 = select i1 %i.a, i1 true, i1 %i.d
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN11liquid_core5model6object112_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..object..map..Object$GT$6render17h37e186fbd6eddfdbE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !2772
  %i.a = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !2772 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8) #57, !noalias !2772
  unreachable

_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit: ; preds = %bb.a
  store ptr %1, ptr %i.a, align 8, !noalias !2772
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @91, ptr %i.d, align 8
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN11liquid_core5model6object112_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..object..map..Object$GT$6source17hbc60bd409a3e384dE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !2775
  %i.a = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !2775 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8) #57, !noalias !2775
  unreachable

_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit: ; preds = %bb.a
  store ptr %1, ptr %i.a, align 8, !noalias !2775
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @92, ptr %i.d, align 8
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN11liquid_core5model6object112_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..object..map..Object$GT$7to_kstr17h2194fa7e2aa1d4acE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [15 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %1, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2801
  store i64 0, ptr %i.d, align 8, !noalias !2801
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !2801
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !2801
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2801
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 -536870880, ptr %i.f, align 8, !noalias !2801
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !2801
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !2801
  store ptr %i.d, ptr %i.c, align 8, !noalias !2801
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @443, ptr %i.g, align 8, !noalias !2801
  %i.h = invoke noundef zeroext i1 @"_ZN88_$LT$liquid_core..model..object..ObjectRender$LT$O$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hcfeb303376eb8ec5E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.d unwind label %bb.b, !noalias !2802, !inline_history !2779

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2803)
  call void @llvm.experimental.noalias.scope.decl(metadata !2804)
  %.val.i.i.i = load i64, ptr %i.d, align 8, !range !21, !alias.scope !2805, !noalias !2801, !noundef !6 ; 2 uses
  %i.j = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.j, label %common.resume, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !2805, !noalias !2801, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !2806, !inline_history !2779
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.e, label %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h0da72b7ac46ae7a4E.exit", !prof !12

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @444, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @468, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @446) #57
          to label %.noexc.i unwind label %bb.b, !noalias !2801, !inline_history !2779

.noexc.i:                                         ; preds = %bb.e
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.c, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.p, %.body.i ], [ %i.i, %bb.c ], [ %i.i, %bb.b ]
  resume { ptr, i32 } %common.resume.op

"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h0da72b7ac46ae7a4E.exit": ; preds = %bb.d
  %.sroa.0.0.copyload = load i64, ptr %i.d, align 8, !noalias !2807 ; 5 uses
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !2807 ; 7 uses
  %.sroa.5.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !2807 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = icmp sgt i64 %.sroa.5.0.copyload, -1
  call void @llvm.assume(i1 %i.k)
  %i.l = icmp samesign ult i64 %.sroa.5.0.copyload, 16
  br i1 %i.l, label %bb.i, label %bb.f

bb.f:                                             ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h0da72b7ac46ae7a4E.exit"
  %i.m = icmp ugt i64 %.sroa.0.0.copyload, %.sroa.5.0.copyload
  br i1 %i.m, label %bb.g, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  %i.n = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.3.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1, i64 noundef range(i64 1, 9223372036854775807) %.sroa.5.0.copyload) #59, !noalias !2808 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.h, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %.sroa.5.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @766) #57
          to label %.noexc.i.i unwind label %.body.i, !noalias !2809

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

.body.i:                                          ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.3.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !2810
  br label %common.resume

bb.i:                                             ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h0da72b7ac46ae7a4E.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.b, i8 0, i64 15, i1 false), !noalias !2811
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.b, ptr nonnull readonly align 1 %.sroa.3.0.copyload, i64 %.sroa.5.0.copyload, i1 false), !noalias !2811
  %.0..0..0..sroa.04.1.copyload = load i56, ptr %i.b, align 8, !noalias !2812
  %.sroa.04.1.insert.ext = zext i56 %.0..0..0..sroa.04.1.copyload to i64
  %.sroa.04.1.insert.shift = shl nuw i64 %.sroa.04.1.insert.ext, 8
  %.sroa.04.1.insert.insert = or disjoint i64 %.sroa.04.1.insert.shift, %.sroa.5.0.copyload
  %i.q = inttoptr i64 %.sroa.04.1.insert.insert to ptr ; 2 uses
  %.7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %.7..7..7..sroa.6.1.copyload = load i64, ptr %.7..7..7..sroa_idx, align 1, !noalias !2812 ; 2 uses
  %i.r = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.r, label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.3.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !2813
  br label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit"

"_ZN7kstring6string5inner21KStringInner$LT$B$GT$11from_string17h0a8c8c8d1c0b2fa4E.exit": ; preds = %bb.f, %bb.g, %bb.i, %bb.j
  %.sroa.04.0 = phi ptr [ %i.q, %bb.i ], [ %i.q, %bb.j ], [ %i.n, %bb.g ], [ %.sroa.3.0.copyload, %bb.f ]
  %.sroa.75.0 = phi i8 [ 1, %bb.i ], [ 1, %bb.j ], [ -1, %bb.g ], [ -1, %bb.f ]
  %.sroa.6.0 = phi i64 [ %.7..7..7..sroa.6.1.copyload, %bb.i ], [ %.7..7..7..sroa.6.1.copyload, %bb.j ], [ %.sroa.5.0.copyload, %bb.g ], [ %.sroa.5.0.copyload, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.04.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %.sroa.75.0, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN11liquid_core5model6object112_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..object..map..Object$GT$8as_debug17h7755a98ab707ec08E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @93, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN11liquid_core5model6object112_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..object..map..Object$GT$8to_value17hbd0e85448a51982eE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hfff25d08c22a1c41E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
  store i8 2, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN11liquid_core5model6object112_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..object..map..Object$GT$9as_object17h733f59e16430dc4bE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @39, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN11liquid_core5model6object112_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..object..map..Object$GT$9type_name17hcddfbd2d725846a6E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @41, i64 6 }
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 dereferenceable(56) ptr @_ZN11liquid_core5model6object3map5Entry9or_insert17h5d3bb33502d57ab9E(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !noundef !6   ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6
  tail call void @"_ZN4core3ptr61drop_in_place$LT$liquid_core..model..value..values..Value$GT$17h3ebd55d3060db4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %1)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8, !noundef !6 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2819)
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !2819, !noalias !2820, !nonnull !6, !noundef !6 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val4.i = load i64, ptr %i.i, align 8, !alias.scope !2819, !noalias !2820, !noundef !6 ; 4 uses
  %.sroa.0.04.i.i.i = and i64 %.val4.i, %i.f      ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.04.i.i.i
  %.sroa.0.0.copyload.i35.i.i.i = load <16 x i8>, ptr %i.j, align 1, !noalias !2821
  %i.k = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i.i.i, zeroinitializer
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %.not.not.i.not6.i.i.i = icmp eq i16 %i.l, 0
  br i1 %.not.not.i.not6.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !prof !25

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.sroa.0.07.i.i.i = phi i64 [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.04.i.i.i, %bb.c ]
  %i.m = phi i64 [ %i.n, %.lr.ph.i.i.i ], [ 0, %bb.c ]
  %i.n = add i64 %i.m, 16                         ; 2 uses
  %i.o = add i64 %i.n, %.sroa.0.07.i.i.i
  %.sroa.0.0.i.i.i = and i64 %i.o, %.val4.i       ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.0.i.i.i
  %.sroa.0.0.copyload.i3.i.i.i = load <16 x i8>, ptr %i.p, align 1, !noalias !2821
  %i.q = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i.i.i, zeroinitializer
  %i.r = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %.not.not.i.not.i.i.i = icmp eq i16 %i.r, 0
  br i1 %.not.not.i.not.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !prof !26

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.sroa.0.0.lcssa.i.i.i = phi i64 [ %.sroa.0.04.i.i.i, %bb.c ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ]
  %.lcssa.i.i.i = phi i16 [ %i.l, %bb.c ], [ %i.r, %.lr.ph.i.i.i ]
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = add i64 %.sroa.0.0.lcssa.i.i.i, %i.t
  %i.v = and i64 %i.u, %.val4.i                   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !2822, !noundef !6 ; 2 uses
  %i.y = icmp sgt i8 %i.x, -1
  br i1 %i.y, label %bb.d, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h60da9c70d9b2bd6bE.exit", !prof !12

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %.val2.i.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !noalias !2822
  %i.z = icmp slt <16 x i8> %.val2.i.i.i.i, zeroinitializer
  %i.aa = bitcast <16 x i1> %i.z to i16           ; 2 uses
  %i.ab = icmp ne i16 %i.aa, 0
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aa, i1 true)
  %i.ad = zext nneg i16 %i.ac to i64              ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ad
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !noalias !2822
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h60da9c70d9b2bd6bE.exit"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h60da9c70d9b2bd6bE.exit": ; preds = %._crit_edge.i.i.i, %bb.d
  %i.ae = phi i8 [ %.pre.i.i, %bb.d ], [ %i.x, %._crit_edge.i.i.i ]
  %.sroa.0.0.i5.i.i.i = phi i64 [ %i.ad, %bb.d ], [ %i.v, %._crit_edge.i.i.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.0.i5.i.i.i
  %i.ag = lshr i64 %i.f, 57
  %i.ah = trunc nuw nsw i64 %i.ag to i8           ; 2 uses
  %i.ai = add i64 %.sroa.0.0.i5.i.i.i, -16
  %i.aj = and i64 %i.ai, %.val4.i
  store i8 %i.ah, ptr %i.af, align 1, !noalias !2822
  %i.ak = getelementptr i8, ptr %.val.i, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 16
  store i8 %i.ah, ptr %i.al, align 1, !noalias !2822
  %i.am = sub nsw i64 0, %.sroa.0.0.i5.i.i.i
  %i.an = getelementptr inbounds [80 x i8], ptr %.val.i, i64 %i.am ; 2 uses
  %i.ao = and i8 %i.ae, 1
  %i.ap = zext nneg i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.an, i64 -80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ar, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.a, i64 80, i1 false), !noalias !2819
  %i.as = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !2819, !noalias !2820
  %i.at = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ap, i64 0
  %i.au = sub <2 x i64> %i.as, %i.at
  store <2 x i64> %i.au, ptr %i.aq, align 8, !alias.scope !2819, !noalias !2820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h60da9c70d9b2bd6bE.exit", %bb.b
  %.pn = phi ptr [ %i.e, %bb.b ], [ %i.an, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h60da9c70d9b2bd6bE.exit" ]
  %.sroa.0.0 = getelementptr inbounds i8, ptr %.pn, i64 -56
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_ZN11liquid_core5model6object3ser25object_cannot_be_a_scalar17h7c7bbba1f18deda3E() unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @94, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 26, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 0, ptr %.sroa.64.0..sroa_idx, align 1
  %i.b = call noundef nonnull align 8 ptr @_ZN11liquid_core5error5error5Error12with_msg_cow17h5a84d6384d669046E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define noundef zeroext i1 @"_ZN11liquid_core5model6scalar104_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$kstring..string_ref..KStringRef$GT$11query_state17h04241d7a00e461d7E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, i8 noundef range(i8 0, 4) %1) unnamed_addr #20 {
bb.a:
  %.sroa.5.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0 = load i64, ptr %.sroa.5.0.in, align 8, !noundef !6 ; 3 uses
  switch i8 %1, label %default.unreachable [
    i8 0, label %"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$11query_state17h58de856de623a4a6E.exit"
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i64 %.sroa.5.0, 0
  br label %"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$11query_state17h58de856de623a4a6E.exit"

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %.sroa.5.0, 0
  br label %"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$11query_state17h58de856de623a4a6E.exit"

bb.d:                                             ; preds = %bb.a
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = load ptr, ptr %.sroa.0.0.in, align 8, !nonnull !6, !align !8, !noundef !6
  %i.c = tail call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h03fe2cfe0c149ccaE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.5.0), !noalias !2825
  %i.d = extractvalue { ptr, i64 } %i.c, 1
  %i.e = icmp eq i64 %i.d, 0
  br label %"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$11query_state17h58de856de623a4a6E.exit"

"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$11query_state17h58de856de623a4a6E.exit": ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.sroa.0.0.shrunk.i = phi i1 [ %i.e, %bb.d ], [ %i.a, %bb.b ], [ %i.b, %bb.c ], [ true, %bb.a ]
  ret i1 %.sroa.0.0.shrunk.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @"_ZN11liquid_core5model6scalar104_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$kstring..string_ref..KStringRef$GT$6render17hf54f0315ddec3540E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @96, ptr %i.b, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN11liquid_core5model6scalar104_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$kstring..string_ref..KStringRef$GT$6source17hf46ce8be84854106E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0 = load ptr, ptr %.sroa.0.0.in, align 8, !nonnull !6, !align !8, !noundef !6
  %.sroa.5.0.in = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0 = load i64, ptr %.sroa.5.0.in, align 8, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !2828
  %i.a = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !2828 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #57, !noalias !2828
  unreachable

_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit: ; preds = %bb.a
  store ptr %.sroa.0.0, ptr %i.a, align 8, !noalias !2828
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.5.0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @97, ptr %i.e, align 8
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN11liquid_core5model6scalar104_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$kstring..string_ref..KStringRef$GT$7to_kstr17h75eefb2a982917d3E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !18, !noundef !6
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !8, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !6
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 0, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink16 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink16, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN11liquid_core5model6scalar104_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$kstring..string_ref..KStringRef$GT$8as_debug17h8f6a81abcd9a2342E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @98, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN11liquid_core5model6scalar104_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$kstring..string_ref..KStringRef$GT$8to_value17h597f9b151d043763E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [15 x i8], align 8                ; 6 uses
  %i.b = load i64, ptr %1, align 8, !range !18, !noundef !6
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !6 ; 9 uses
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = icmp ult i64 %i.g, 16
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp slt i64 %i.g, 0
  br i1 %i.i, label %bb.d, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i", !prof !14

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i": ; preds = %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !2840
  %i.j = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !2840 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i"

bb.d:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i", %bb.c
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i" ], [ 0, %bb.c ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #57, !noalias !2841
  unreachable

"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i"
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull readonly align 1 %i.e, i64 %i.g, i1 false), !noalias !2842
  br label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$8from_ref17hb9e172d4de6626d0E.exit"

bb.e:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.a, i8 0, i64 15, i1 false), !noalias !2843
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 1 %i.e, i64 %i.g, i1 false), !noalias !2842
  %.0..0..0..sroa.0.1.copyload = load i56, ptr %i.a, align 8, !noalias !2844
  %.sroa.0.1.insert.ext = zext i56 %.0..0..0..sroa.0.1.copyload to i64
  %.sroa.0.1.insert.shift = shl nuw i64 %.sroa.0.1.insert.ext, 8
  %.sroa.0.1.insert.insert = or disjoint i64 %.sroa.0.1.insert.shift, %i.g
  %i.l = inttoptr i64 %.sroa.0.1.insert.insert to ptr
  %.7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %.7..7..7..sroa.6.1.copyload = load i64, ptr %.7..7..7..sroa_idx, align 1, !noalias !2844
  br label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$8from_ref17hb9e172d4de6626d0E.exit"

"_ZN7kstring6string5inner21KStringInner$LT$B$GT$8from_ref17hb9e172d4de6626d0E.exit": ; preds = %"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i", %bb.e
  %.sroa.0.0 = phi ptr [ %i.l, %bb.e ], [ %i.j, %"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i" ]
  %.sroa.6.0 = phi i64 [ %.7..7..7..sroa.6.1.copyload, %bb.e ], [ %i.g, %"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i" ]
  %.sink.i = phi i8 [ 1, %bb.e ], [ -1, %"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$8from_ref17hb9e172d4de6626d0E.exit"
  %.sroa.05.0 = phi ptr [ %.sroa.0.0, %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$8from_ref17hb9e172d4de6626d0E.exit" ], [ %i.e, %bb.a ]
  %.sroa.57.0 = phi i64 [ %.sroa.6.0, %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$8from_ref17hb9e172d4de6626d0E.exit" ], [ %i.g, %bb.a ]
  %.sroa.7.0 = phi i8 [ %.sink.i, %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$8from_ref17hb9e172d4de6626d0E.exit" ], [ 0, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.m, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.05.0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.57.0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 39
  store i8 %.sroa.7.0, ptr %.sroa.531.0..sroa_idx, align 1
  store i8 0, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN11liquid_core5model6scalar104_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$kstring..string_ref..KStringRef$GT$9as_scalar17h0e6072c4ee294fe2E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24), (31, 32)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !18, !noundef !6
  %.sroa.5.sroa.5.0.in = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0 = load i64, ptr %.sroa.5.sroa.5.0.in, align 8, !noundef !6
  %.sroa.5.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0 = load ptr, ptr %.sroa.5.sroa.0.0.in, align 8, !nonnull !6, !align !8, !noundef !6
  store i64 %i.a, ptr %0, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.sroa.0.0, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.47.sroa.4.0..sroa.47.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.sroa.5.0, ptr %.sroa.47.sroa.4.0..sroa.47.0..sroa_idx.sroa_idx, align 8
  %.sroa.47.sroa.6.0..sroa.47.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 0, ptr %.sroa.47.sroa.6.0..sroa.47.0..sroa_idx.sroa_idx, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN11liquid_core5model6scalar104_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$kstring..string_ref..KStringRef$GT$9type_name17h87797233cbf8ab99E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @99, i64 6 }
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define noundef zeroext i1 @"_ZN11liquid_core5model6scalar108_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$kstring..string_cow..KStringCowBase$GT$11query_state17h661e5b3d8e3933efE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, i8 noundef range(i8 0, 4) %1) unnamed_addr #20 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !18, !alias.scope !2849, !noundef !6
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 31
  %i.e = load i8, ptr %i.d, align 1, !alias.scope !2849, !noundef !6
  switch i8 %i.e, label %bb.f [
    i8 0, label %bb.d
    i8 -1, label %bb.e
  ]

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.c, align 8, !alias.scope !2849, !nonnull !6, !align !8, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !2849, !noundef !6
  br label %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_str17h64eb274898ee9790E.exit"

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.c, align 8, !alias.scope !2849, !nonnull !6, !align !8, !noundef !6
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !2849, !noundef !6
  br label %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_str17h64eb274898ee9790E.exit"

bb.e:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !2849, !nonnull !6, !align !8, !noundef !6
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i = load i64, ptr %i.l, align 8, !alias.scope !2849, !noundef !6
  br label %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_str17h64eb274898ee9790E.exit"

bb.f:                                             ; preds = %bb.b
  %i.m = load i8, ptr %i.c, align 8, !alias.scope !2849, !noundef !6
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 9
  br label %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_str17h64eb274898ee9790E.exit"

"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_str17h64eb274898ee9790E.exit": ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.5.0.i = phi i64 [ %i.h, %bb.c ], [ %i.n, %bb.f ], [ %i.k, %bb.d ], [ %.val2.i, %bb.e ] ; 3 uses
  %.sroa.0.0.i = phi ptr [ %i.f, %bb.c ], [ %i.o, %bb.f ], [ %i.i, %bb.d ], [ %.val.i, %bb.e ]
  switch i8 %1, label %default.unreachable [
    i8 0, label %"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$11query_state17h58de856de623a4a6E.exit"
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
  ]

default.unreachable:                              ; preds = %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_str17h64eb274898ee9790E.exit"
  unreachable

bb.g:                                             ; preds = %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_str17h64eb274898ee9790E.exit"
  %i.p = icmp eq i64 %.sroa.5.0.i, 0
  br label %"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$11query_state17h58de856de623a4a6E.exit"

bb.h:                                             ; preds = %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_str17h64eb274898ee9790E.exit"
  %i.q = icmp eq i64 %.sroa.5.0.i, 0
  br label %"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$11query_state17h58de856de623a4a6E.exit"

bb.i:                                             ; preds = %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_str17h64eb274898ee9790E.exit"
  %i.r = tail call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h03fe2cfe0c149ccaE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.5.0.i), !noalias !2850
  %i.s = extractvalue { ptr, i64 } %i.r, 1
  %i.t = icmp eq i64 %i.s, 0
  br label %"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$11query_state17h58de856de623a4a6E.exit"

"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$11query_state17h58de856de623a4a6E.exit": ; preds = %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_str17h64eb274898ee9790E.exit", %bb.g, %bb.h, %bb.i
  %.sroa.0.0.shrunk.i = phi i1 [ %i.t, %bb.i ], [ %i.p, %bb.g ], [ %i.q, %bb.h ], [ true, %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_str17h64eb274898ee9790E.exit" ]
  ret i1 %.sroa.0.0.shrunk.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @"_ZN11liquid_core5model6scalar108_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$kstring..string_cow..KStringCowBase$GT$6render17h65be1124f94a30e1E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @100, ptr %i.b, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN11liquid_core5model6scalar108_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$kstring..string_cow..KStringCowBase$GT$6source17hd155daae4778f603E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !18, !alias.scope !2855, !noundef !6
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 31
  %i.e = load i8, ptr %i.d, align 1, !alias.scope !2855, !noundef !6
  switch i8 %i.e, label %bb.f [
    i8 0, label %bb.d
    i8 -1, label %bb.e
  ]

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.c, align 8, !alias.scope !2855, !nonnull !6, !align !8, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !2855, !noundef !6
  br label %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_str17h64eb274898ee9790E.exit"

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.c, align 8, !alias.scope !2855, !nonnull !6, !align !8, !noundef !6
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !2855, !noundef !6
  br label %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_str17h64eb274898ee9790E.exit"

bb.e:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !2855, !nonnull !6, !align !8, !noundef !6
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i = load i64, ptr %i.l, align 8, !alias.scope !2855, !noundef !6
  br label %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_str17h64eb274898ee9790E.exit"

bb.f:                                             ; preds = %bb.b
  %i.m = load i8, ptr %i.c, align 8, !alias.scope !2855, !noundef !6
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 9
  br label %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_str17h64eb274898ee9790E.exit"

"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_str17h64eb274898ee9790E.exit": ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.5.0.i = phi i64 [ %i.h, %bb.c ], [ %i.n, %bb.f ], [ %i.k, %bb.d ], [ %.val2.i, %bb.e ]
  %.sroa.0.0.i = phi ptr [ %i.f, %bb.c ], [ %i.o, %bb.f ], [ %i.i, %bb.d ], [ %.val.i, %bb.e ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !2856
  %i.p = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !2856 ; 4 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.g, label %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit, !prof !12

bb.g:                                             ; preds = %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_str17h64eb274898ee9790E.exit"
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #57, !noalias !2856
  unreachable

_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit: ; preds = %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_str17h64eb274898ee9790E.exit"
  store ptr %.sroa.0.0.i, ptr %i.p, align 8, !noalias !2856
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %.sroa.5.0.i, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @97, ptr %i.t, align 8
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN11liquid_core5model6scalar108_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$kstring..string_cow..KStringCowBase$GT$7to_kstr17h6bfde6993794e954E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %.sroa.6 = alloca [7 x i8], align 8             ; 3 uses
  %i.a = load i64, ptr %1, align 8, !range !18, !noundef !6
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2863)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 31
  %i.e = load i8, ptr %i.d, align 1, !alias.scope !2864, !noalias !2863, !noundef !6 ; 3 uses
  %i.f = icmp eq i8 %i.e, -1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call { ptr, i64 } @"_ZN67_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h99dc39076b9f17afE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c), !noalias !2863 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  br label %"_ZN84_$LT$kstring..string..inner..KStringInner$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1f5fe101e27b5ff2E.exit"

bb.d:                                             ; preds = %bb.b
  %.sroa.0.0.copyload3 = load ptr, ptr %i.c, align 8, !alias.scope !2865
  %.sroa.54.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.54.0.copyload6 = load i64, ptr %.sroa.54.0..sroa_idx5, align 8, !alias.scope !2865
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.6.0..sroa_idx7, i64 7, i1 false)
  br label %"_ZN84_$LT$kstring..string..inner..KStringInner$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1f5fe101e27b5ff2E.exit"

bb.e:                                             ; preds = %bb.a
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %i.c, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, i64 7, i1 false)
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 31
  %.sroa.5.sroa.7.0.copyload = load i8, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 1
  br label %"_ZN84_$LT$kstring..string..inner..KStringInner$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1f5fe101e27b5ff2E.exit"

"_ZN84_$LT$kstring..string..inner..KStringInner$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1f5fe101e27b5ff2E.exit": ; preds = %bb.d, %bb.c, %bb.e
  %.sroa.5.sroa.7.0 = phi i8 [ %.sroa.5.sroa.7.0.copyload, %bb.e ], [ %i.e, %bb.c ], [ %i.e, %bb.d ]
  %.sroa.5.sroa.5.0 = phi i64 [ %.sroa.5.sroa.5.0.copyload, %bb.e ], [ %i.i, %bb.c ], [ %.sroa.54.0.copyload6, %bb.d ]
  %.sroa.5.sroa.0.0 = phi ptr [ %.sroa.5.sroa.0.0.copyload, %bb.e ], [ %i.h, %bb.c ], [ %.sroa.0.0.copyload3, %bb.d ]
  %.sroa.0.0 = phi i64 [ 0, %bb.e ], [ 1, %bb.c ], [ 1, %bb.d ]
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.sroa.0.0, ptr %.sroa.5.0..sroa_idx2, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.sroa.5.0, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx2.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx2.sroa_idx, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.6, i64 7, i1 false)
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %.sroa.5.sroa.7.0, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx2.sroa_idx, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN11liquid_core5model6scalar108_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$kstring..string_cow..KStringCowBase$GT$8as_debug17h57ec02d01b22b676E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @101, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN11liquid_core5model6scalar108_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$kstring..string_cow..KStringCowBase$GT$8to_value17hc7e3a2b0d7dee454E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [15 x i8], align 8                ; 6 uses
  %i.b = load i64, ptr %1, align 8, !range !18, !noundef !6
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2883)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 31
  %i.f = load i8, ptr %i.e, align 1, !alias.scope !2884, !noalias !2883, !noundef !6
  %i.g = icmp eq i8 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call { ptr, i64 } @"_ZN67_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h99dc39076b9f17afE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d), !noalias !2883 ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 0
  %i.j = extractvalue { ptr, i64 } %i.h, 1
  br label %"_ZN84_$LT$kstring..string..inner..KStringInner$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1f5fe101e27b5ff2E.exit"

bb.d:                                             ; preds = %bb.b
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8, !alias.scope !2885
  %.sroa.5.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload36 = load i64, ptr %.sroa.5.0..sroa_idx35, align 8, !alias.scope !2885
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !2885
  br label %"_ZN84_$LT$kstring..string..inner..KStringInner$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1f5fe101e27b5ff2E.exit"

bb.e:                                             ; preds = %bb.a
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx3.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.sroa.7.0.copyload = load i64, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx3.sroa_idx, align 8 ; 8 uses
  %.sroa.7.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7.sroa.0.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx3, align 8, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = icmp ult i64 %.sroa.7.sroa.7.0.copyload, 16
  br i1 %i.k, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = icmp slt i64 %.sroa.7.sroa.7.0.copyload, 0
  br i1 %i.l, label %bb.g, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i", !prof !14

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i": ; preds = %bb.f
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !2886
  %i.m = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.sroa.7.sroa.7.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !2886 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.g, label %"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i"

bb.g:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i", %bb.f
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i" ], [ 0, %bb.f ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %.sroa.7.sroa.7.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #57, !noalias !2887
  unreachable

"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i"
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull readonly align 1 %.sroa.7.sroa.0.0.copyload, i64 %.sroa.7.sroa.7.0.copyload, i1 false), !noalias !2888
  br label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$8from_ref17hb9e172d4de6626d0E.exit"

bb.h:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.a, i8 0, i64 15, i1 false), !noalias !2889
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 1 %.sroa.7.sroa.0.0.copyload, i64 %.sroa.7.sroa.7.0.copyload, i1 false), !noalias !2888
  %.0..0..0..sroa.037.1.copyload = load i56, ptr %i.a, align 8, !noalias !2890
  %.sroa.037.1.insert.ext = zext i56 %.0..0..0..sroa.037.1.copyload to i64
  %.sroa.037.1.insert.shift = shl nuw i64 %.sroa.037.1.insert.ext, 8
  %.sroa.037.1.insert.insert = or disjoint i64 %.sroa.037.1.insert.shift, %.sroa.7.sroa.7.0.copyload
  %i.o = inttoptr i64 %.sroa.037.1.insert.insert to ptr
  %.7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %.7..7..7..sroa.6.1.copyload = load i64, ptr %.7..7..7..sroa_idx, align 1, !noalias !2890
  br label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$8from_ref17hb9e172d4de6626d0E.exit"

"_ZN7kstring6string5inner21KStringInner$LT$B$GT$8from_ref17hb9e172d4de6626d0E.exit": ; preds = %"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i", %bb.h
  %.sroa.037.0 = phi ptr [ %i.o, %bb.h ], [ %i.m, %"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i" ]
  %.sroa.6.038 = phi i64 [ %.7..7..7..sroa.6.1.copyload, %bb.h ], [ %.sroa.7.sroa.7.0.copyload, %"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i" ]
  %.sink.i = phi i64 [ 72057594037927936, %bb.h ], [ -72057594037927936, %"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %"_ZN84_$LT$kstring..string..inner..KStringInner$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1f5fe101e27b5ff2E.exit"

"_ZN84_$LT$kstring..string..inner..KStringInner$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1f5fe101e27b5ff2E.exit": ; preds = %bb.d, %bb.c, %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$8from_ref17hb9e172d4de6626d0E.exit"
  %.sroa.030.0 = phi ptr [ %.sroa.037.0, %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$8from_ref17hb9e172d4de6626d0E.exit" ], [ %i.i, %bb.c ], [ %.sroa.0.0.copyload, %bb.d ]
  %.sroa.532.0 = phi i64 [ %.sroa.6.038, %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$8from_ref17hb9e172d4de6626d0E.exit" ], [ %i.j, %bb.c ], [ %.sroa.5.0.copyload36, %bb.d ]
  %.sroa.6.0 = phi i64 [ %.sink.i, %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$8from_ref17hb9e172d4de6626d0E.exit" ], [ -72057594037927936, %bb.c ], [ %.sroa.7.0.copyload, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.p, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.030.0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.532.0, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.6.0, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  store i8 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN11liquid_core5model6scalar108_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$kstring..string_cow..KStringCowBase$GT$9as_scalar17h730ef2836c6f97b7E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %.sroa.6.i = alloca [7 x i8], align 8           ; 3 uses
  %i.a = load i64, ptr %1, align 8, !range !18, !alias.scope !2900, !noalias !2901, !noundef !6
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2902)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 31
  %i.e = load i8, ptr %i.d, align 1, !alias.scope !2903, !noalias !2904, !noundef !6 ; 2 uses
  %i.f = icmp eq i8 %i.e, -1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call { ptr, i64 } @"_ZN67_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h99dc39076b9f17afE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c), !noalias !2904 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  br label %"_ZN124_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$core..convert..From$LT$$RF$kstring..string_cow..KStringCowBase$GT$$GT$4from17h7447ac617eb67d98E.exit"

bb.d:                                             ; preds = %bb.b
  %.sroa.0.0.copyload6.i = load ptr, ptr %i.c, align 8, !alias.scope !2905, !noalias !2901
  %.sroa.57.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.57.0.copyload9.i = load i64, ptr %.sroa.57.0..sroa_idx8.i, align 8, !alias.scope !2905, !noalias !2901
  %.sroa.6.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.6.i, ptr noundef nonnull readonly align 8 dereferenceable(7) %.sroa.6.0..sroa_idx10.i, i64 7, i1 false)
  br label %"_ZN124_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$core..convert..From$LT$$RF$kstring..string_cow..KStringCowBase$GT$$GT$4from17h7447ac617eb67d98E.exit"

bb.e:                                             ; preds = %bb.a
  %.sroa.5.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !alias.scope !2900, !noalias !2901
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !2900, !noalias !2901
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.6.i, ptr noundef nonnull readonly align 8 dereferenceable(7) %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i, i64 7, i1 false)
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 31
  %.sroa.5.sroa.7.0.copyload.i = load i8, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.i, align 1, !alias.scope !2900, !noalias !2901
  br label %"_ZN124_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$core..convert..From$LT$$RF$kstring..string_cow..KStringCowBase$GT$$GT$4from17h7447ac617eb67d98E.exit"

"_ZN124_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$core..convert..From$LT$$RF$kstring..string_cow..KStringCowBase$GT$$GT$4from17h7447ac617eb67d98E.exit": ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.5.sroa.7.0.i = phi i8 [ %.sroa.5.sroa.7.0.copyload.i, %bb.e ], [ -1, %bb.c ], [ %i.e, %bb.d ]
  %.sroa.5.sroa.5.0.i = phi i64 [ %.sroa.5.sroa.5.0.copyload.i, %bb.e ], [ %i.i, %bb.c ], [ %.sroa.57.0.copyload9.i, %bb.d ]
  %.sroa.5.sroa.0.0.i = phi ptr [ %.sroa.5.sroa.0.0.copyload.i, %bb.e ], [ %i.h, %bb.c ], [ %.sroa.0.0.copyload6.i, %bb.d ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.e ], [ 1, %bb.c ], [ 1, %bb.d ]
  store i64 %.sroa.0.0.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.sroa.0.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.6.i, i64 7, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %.sroa.5.sroa.7.0.i, ptr %.sroa.7.0..sroa_idx, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef { ptr, i64 } @"_ZN11liquid_core5model6scalar108_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$kstring..string_cow..KStringCowBase$GT$9type_name17h7ca09699306e6757E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #2 {
"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_str17h64eb274898ee9790E.exit":
  ret { ptr, i64 } { ptr @99, i64 6 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_ZN11liquid_core5model6scalar10scalar_cmp17h2bfd2bd2498e5618E(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #16 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 6 uses
  %i.b = alloca [16 x i8], align 4                ; 6 uses
  %i.c = alloca [16 x i8], align 4                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = load i64, ptr %0, align 8, !range !7, !noundef !6 ; 3 uses
  %i.f = add nsw i64 %i.e, -2
  %i.g = icmp samesign ugt i64 %i.e, 1
  %i.h = select i1 %i.g, i64 %i.f, i64 5
  %i.i = load i64, ptr %1, align 8, !range !7, !noundef !6 ; 11 uses
  switch i64 %i.h, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = add nsw i64 %i.i, -2
  %i.k = icmp samesign ugt i64 %i.i, 1
  %i.l = select i1 %i.k, i64 %i.j, i64 5
  switch i64 %i.l, label %bb.k [
    i64 0, label %bb.i
    i64 1, label %bb.j
  ]

bb.d:                                             ; preds = %bb.a
  %i.m = add nsw i64 %i.i, -2
  %i.n = icmp samesign ugt i64 %i.i, 1
  %i.o = select i1 %i.n, i64 %i.m, i64 5
  switch i64 %i.o, label %bb.k [
    i64 0, label %bb.n
    i64 1, label %bb.o
  ]

bb.e:                                             ; preds = %bb.a
  %i.p = icmp eq i64 %i.i, 4
  br i1 %i.p, label %bb.t, label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.q = add nsw i64 %i.i, -2
  %i.r = icmp samesign ugt i64 %i.i, 1
  %i.s = select i1 %i.r, i64 %i.q, i64 5
  switch i64 %i.s, label %bb.k [
    i64 3, label %bb.u
    i64 4, label %bb.v
  ]

bb.g:                                             ; preds = %bb.a
  %i.t = add nsw i64 %i.i, -2
  %i.u = icmp samesign ugt i64 %i.i, 1
  %i.v = select i1 %i.u, i64 %i.t, i64 5
  switch i64 %i.v, label %bb.k [
    i64 3, label %bb.w
    i64 4, label %bb.x
  ]

bb.h:                                             ; preds = %bb.a
  %i.w = icmp samesign ult i64 %i.i, 2
  br i1 %i.w, label %bb.y, label %bb.k

bb.i:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !noundef !6
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !noundef !6
  %i.ab = tail call i8 @llvm.scmp.i8.i64(i64 %i.y, i64 %i.aa)
  br label %bb.k

bb.j:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !6
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load double, ptr %i.ae, align 8, !noundef !6 ; 2 uses
  %i.ag = sitofp i64 %i.ad to double              ; 2 uses
  %i.ah = fcmp ult double %i.af, %i.ag
  %i.ai = fcmp ugt double %i.af, %i.ag            ; 2 uses
  br i1 %i.ah, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.m, %bb.l, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %"_ZN79_$LT$kstring..string_cow..KStringCowBase$LT$B$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17h108b0c372b92d47fE.exit", %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.i
  %.sroa.0.0 = phi i8 [ %i.fi, %"_ZN79_$LT$kstring..string_cow..KStringCowBase$LT$B$GT$$u20$as$u20$core..cmp..Ord$GT$3cmp17h108b0c372b92d47fE.exit" ], [ %i.ab, %bb.i ], [ 2, %bb.d ], [ 2, %bb.c ], [ %., %bb.l ], [ %.15, %bb.m ], [ 2, %bb.f ], [ 2, %bb.e ], [ %.16, %bb.p ], [ %.17, %bb.q ], [ 2, %bb.h ], [ 2, %bb.g ], [ %.18, %bb.r ], [ %.19, %bb.s ], [ %i.ba, %bb.t ], [ %i.by, %bb.u ], [ %i.cx, %bb.v ], [ %i.dw, %bb.w ], [ %i.eb, %bb.x ]
  ret i8 %.sroa.0.0

bb.l:                                             ; preds = %bb.j
  %. = select i1 %i.ai, i8 2, i8 1
  br label %bb.k

bb.m:                                             ; preds = %bb.j
  %.15 = sext i1 %i.ai to i8
  br label %bb.k

bb.n:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load double, ptr %i.aj, align 8, !noundef !6 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load i64, ptr %i.al, align 8, !noundef !6
  %i.an = sitofp i64 %i.am to double              ; 2 uses
  %i.ao = fcmp ugt double %i.ak, %i.an
  %i.ap = fcmp ult double %i.ak, %i.an            ; 2 uses
  br i1 %i.ao, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load double, ptr %i.aq, align 8, !noundef !6 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load double, ptr %i.as, align 8, !noundef !6 ; 2 uses
  %i.au = fcmp ugt double %i.ar, %i.at
  %i.av = fcmp ult double %i.ar, %i.at            ; 2 uses
  br i1 %i.au, label %bb.r, label %bb.s

bb.p:                                             ; preds = %bb.n
  %.16 = select i1 %i.ap, i8 2, i8 1
  br label %bb.k

bb.q:                                             ; preds = %bb.n
  %.17 = sext i1 %i.ap to i8
  br label %bb.k

bb.r:                                             ; preds = %bb.o
  %.18 = select i1 %i.av, i8 2, i8 1
  br label %bb.k

bb.s:                                             ; preds = %bb.o
  %.19 = sext i1 %i.av to i8
  br label %bb.k

bb.t:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load i8, ptr %i.aw, align 8, !range !11, !noundef !6
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load i8, ptr %i.ay, align 8, !range !11, !noundef !6
  %i.ba = sub nsw i8 %i.ax, %i.az
  br label %bb.k

bb.u:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload = load i64, ptr %i.bb, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.526.0.copyload = load i24, ptr %.sroa.526.0..sroa_idx, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bd = ashr i32 %.sroa.4.0.copyload, 10
  %i.be = trunc i32 %.sroa.4.0.copyload to i16
  %i.bf = and i16 %i.be, 511
  %i.bg = sext i32 %i.bd to i128
  %i.bh = shl nsw i128 %i.bg, 74
  %i.bi = zext nneg i16 %i.bf to i128
  %i.bj = shl nuw nsw i128 %i.bi, 64
  %i.bk = or disjoint i128 %i.bj, %i.bh
  %i.bl = zext i64 %.sroa.0.0.copyload to i128
  %i.bm = or disjoint i128 %i.bk, %i.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2922
  call fastcc void @_ZN4time16offset_date_time14OffsetDateTime13to_offset_raw17h28295743bf0bcc34E(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.bc, i24 %.sroa.526.0.copyload)
  %i.bn = load i32, ptr %i.c, align 4, !noalias !2922, !noundef !6
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bp = load i16, ptr %i.bo, align 4, !noalias !2922, !noundef !6
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.bq, align 4, !noalias !2922
  %i.br = sext i32 %i.bn to i128
  %i.bs = shl nsw i128 %i.br, 74
  %i.bt = zext i16 %i.bp to i128
  %i.bu = shl nuw nsw i128 %i.bt, 64
  %i.bv = or i128 %i.bu, %i.bs
  %i.bw = zext i64 %.sroa.0.0.copyload.i to i128
  %i.bx = or disjoint i128 %i.bv, %i.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2922
  %i.by = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i128(i128 %i.bm, i128 %i.bx)
  br label %bb.k

bb.v:                                             ; preds = %bb.f
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.027.0.copyload = load i64, ptr %i.bz, align 8 ; 2 uses
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.528.0.copyload = load i32, ptr %.sroa.528.0..sroa_idx, align 8 ; 2 uses
  %.sroa.629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.629.0.copyload = load i24, ptr %.sroa.629.0..sroa_idx, align 4 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cb = load i32, ptr %i.ca, align 8, !range !38, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %.sroa.027.0.copyload, ptr %i.d, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %i.cb, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i24 %.sroa.629.0.copyload, ptr %.sroa.510.0..sroa_idx, align 4
  %i.cc = ashr i32 %.sroa.528.0.copyload, 10
  %i.cd = trunc i32 %.sroa.528.0.copyload to i16
  %i.ce = and i16 %i.cd, 511
  %i.cf = sext i32 %i.cc to i128
end_hunk_2
begin_hunk_3_@_ZN11liquid_core5model6scalar10scalar_cmp17h2bfd2bd2498e5618E:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN11liquid_core5model6scalar111_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..scalar..date..Date$GT$11query_state17hf3abeab8802255d2E"(ptr noalias readonly align 4 captures(none) %0, i8 noundef range(i8 0, 4) %1) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i8 %1, 0
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @"_ZN11liquid_core5model6scalar111_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..scalar..date..Date$GT$6render17h85e2b52c975c0abaE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @102, ptr %i.b, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @"_ZN11liquid_core5model6scalar111_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..scalar..date..Date$GT$6source17hf8c94691b751528bE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @102, ptr %i.b, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN11liquid_core5model6scalar111_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..scalar..date..Date$GT$7to_kstr17h45ddc23dc9462fa0E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [15 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr @102, ptr %i.g, align 8
  store i64 1, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2954
  store i64 0, ptr %i.d, align 8, !noalias !2954
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !2954
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !2954
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2954
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 -536870880, ptr %i.h, align 8, !noalias !2954
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !2954
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !2954
  store ptr %i.d, ptr %i.c, align 8, !noalias !2954
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @443, ptr %i.i, align 8, !noalias !2954
  %i.j = invoke noundef zeroext i1 @"_ZN77_$LT$liquid_core..model..scalar..date..Date$u20$as$u20$core..fmt..Display$GT$3fmt17h07b247962bc50c52E"(ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN85_$LT$liquid_core..model..value..display..DisplayCow$u20$as$u20$core..fmt..Display$GT$3fmt17h9dd67ea461bceaa8E.exit.i" unwind label %bb.b, !inline_history !39

bb.b:                                             ; preds = %bb.a, %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2955)
  call void @llvm.experimental.noalias.scope.decl(metadata !2956)
  %.val.i.i.i = load i64, ptr %i.d, align 8, !range !21, !alias.scope !2957, !noalias !2954, !noundef !6 ; 2 uses
  %i.l = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.l, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !2957, !noalias !2954, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !2958
  br label %.body

"_ZN85_$LT$liquid_core..model..value..display..DisplayCow$u20$as$u20$core..fmt..Display$GT$3fmt17h9dd67ea461bceaa8E.exit.i": ; preds = %bb.a
  br i1 %i.j, label %bb.d, label %bb.e, !prof !12

bb.d:                                             ; preds = %"_ZN85_$LT$liquid_core..model..value..display..DisplayCow$u20$as$u20$core..fmt..Display$GT$3fmt17h9dd67ea461bceaa8E.exit.i"
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @444, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @468, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @446) #57
          to label %.noexc.i unwind label %bb.b, !noalias !2959

.noexc.i:                                         ; preds = %bb.d
  unreachable

.body:                                            ; preds = %.body.i, %bb.b, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.b ], [ %i.k, %bb.c ], [ %i.r, %.body.i ]
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #58
          to label %bb.l unwind label %bb.k

bb.e:                                             ; preds = %"_ZN85_$LT$liquid_core..model..value..display..DisplayCow$u20$as$u20$core..fmt..Display$GT$3fmt17h9dd67ea461bceaa8E.exit.i"
  %.sroa.0.0.copyload = load i64, ptr %i.d, align 8, !noalias !2960 ; 5 uses
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !2960 ; 7 uses
  %.sroa.7.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !2960 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2954
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.m = icmp sgt i64 %.sroa.7.0.copyload, -1
  call void @llvm.assume(i1 %i.m)
  %i.n = icmp samesign ult i64 %.sroa.7.0.copyload, 16
  br i1 %i.n, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = icmp ugt i64 %.sroa.0.0.copyload, %.sroa.7.0.copyload
  br i1 %i.o, label %bb.g, label %"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit"

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.p = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1, i64 noundef range(i64 1, 9223372036854775807) %.sroa.7.0.copyload) #59, !noalias !2961 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.h, label %"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit"

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %.sroa.7.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @766) #57
          to label %.noexc.i.i unwind label %.body.i, !noalias !2962

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

.body.i:                                          ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !2963
  br label %.body

bb.i:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.b, i8 0, i64 15, i1 false), !noalias !2964
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.b, ptr nonnull readonly align 1 %.sroa.5.0.copyload, i64 %.sroa.7.0.copyload, i1 false), !noalias !2964
  %.0..0..0..0..0..sroa.08.1.copyload = load i56, ptr %i.b, align 8, !noalias !2965
  %.sroa.08.1.insert.ext = zext i56 %.0..0..0..0..0..sroa.08.1.copyload to i64
  %.sroa.08.1.insert.shift = shl nuw i64 %.sroa.08.1.insert.ext, 8
  %.sroa.08.1.insert.insert = or disjoint i64 %.sroa.08.1.insert.shift, %.sroa.7.0.copyload
  %i.s = inttoptr i64 %.sroa.08.1.insert.insert to ptr ; 2 uses
  %.7..7..7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %.7..7..7..7..7..sroa.6.1.copyload = load i64, ptr %.7..7..7..7..7..sroa_idx, align 1, !noalias !2965 ; 2 uses
  %i.t = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.t, label %"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !2966
  br label %"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit"

"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit": ; preds = %bb.f, %bb.g, %bb.i, %bb.j
  %.sroa.08.0 = phi ptr [ %i.s, %bb.i ], [ %i.s, %bb.j ], [ %i.p, %bb.g ], [ %.sroa.5.0.copyload, %bb.f ]
  %.sroa.710.0 = phi i8 [ 1, %bb.i ], [ 1, %bb.j ], [ -1, %bb.g ], [ -1, %bb.f ]
  %.sroa.6.0 = phi i64 [ %.7..7..7..7..7..sroa.6.1.copyload, %bb.i ], [ %.7..7..7..7..7..sroa.6.1.copyload, %bb.j ], [ %.sroa.7.0.copyload, %bb.g ], [ %.sroa.7.0.copyload, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.08.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %.sroa.710.0, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.k:                                             ; preds = %.body
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.l:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN11liquid_core5model6scalar111_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..scalar..date..Date$GT$8as_debug17h052557f5f9345682E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @103, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN11liquid_core5model6scalar111_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..scalar..date..Date$GT$8to_value17hcc964c0896e4c31cE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 1), (8, 20)) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #10 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !range !38, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.a, ptr %.sroa.42.0..sroa_idx, align 8
  store i8 0, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN11liquid_core5model6scalar111_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..scalar..date..Date$GT$9as_scalar17h5f4c51bcec7a57e5E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 12)) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #10 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !range !38, !noundef !6
  store i64 6, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.a, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN11liquid_core5model6scalar111_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..scalar..date..Date$GT$9type_name17h7d36f6586237e8ddE"(ptr noalias readonly align 4 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @104, i64 4 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN11liquid_core5model6scalar119_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..scalar..datetime..DateTime$GT$11query_state17hbd6ae88fc1c7725dE"(ptr noalias readonly align 4 captures(none) %0, i8 noundef range(i8 0, 4) %1) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i8 %1, 0
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @"_ZN11liquid_core5model6scalar119_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..scalar..datetime..DateTime$GT$6render17h64eda62822d05a6dE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @105, ptr %i.b, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @"_ZN11liquid_core5model6scalar119_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..scalar..datetime..DateTime$GT$6source17h79fb05aa4c53cdeaE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @105, ptr %i.b, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN11liquid_core5model6scalar119_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..scalar..datetime..DateTime$GT$7to_kstr17h08137a99b0b804ddE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [15 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr @105, ptr %i.g, align 8
  store i64 1, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2991
  store i64 0, ptr %i.d, align 8, !noalias !2991
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !2991
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !2991
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2991
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 -536870880, ptr %i.h, align 8, !noalias !2991
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !2991
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !2991
  store ptr %i.d, ptr %i.c, align 8, !noalias !2991
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @443, ptr %i.i, align 8, !noalias !2991
  %i.j = invoke noundef zeroext i1 @"_ZN85_$LT$liquid_core..model..scalar..datetime..DateTime$u20$as$u20$core..fmt..Display$GT$3fmt17hf319bb3f54238d02E"(ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN85_$LT$liquid_core..model..value..display..DisplayCow$u20$as$u20$core..fmt..Display$GT$3fmt17h9dd67ea461bceaa8E.exit.i" unwind label %bb.b, !inline_history !39

bb.b:                                             ; preds = %bb.a, %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2992)
  call void @llvm.experimental.noalias.scope.decl(metadata !2993)
  %.val.i.i.i = load i64, ptr %i.d, align 8, !range !21, !alias.scope !2994, !noalias !2991, !noundef !6 ; 2 uses
  %i.l = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.l, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !2994, !noalias !2991, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !2995
  br label %.body

"_ZN85_$LT$liquid_core..model..value..display..DisplayCow$u20$as$u20$core..fmt..Display$GT$3fmt17h9dd67ea461bceaa8E.exit.i": ; preds = %bb.a
  br i1 %i.j, label %bb.d, label %bb.e, !prof !12

bb.d:                                             ; preds = %"_ZN85_$LT$liquid_core..model..value..display..DisplayCow$u20$as$u20$core..fmt..Display$GT$3fmt17h9dd67ea461bceaa8E.exit.i"
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @444, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @468, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @446) #57
          to label %.noexc.i unwind label %bb.b, !noalias !2996

.noexc.i:                                         ; preds = %bb.d
  unreachable

.body:                                            ; preds = %.body.i, %bb.b, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.b ], [ %i.k, %bb.c ], [ %i.r, %.body.i ]
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #58
          to label %bb.l unwind label %bb.k

bb.e:                                             ; preds = %"_ZN85_$LT$liquid_core..model..value..display..DisplayCow$u20$as$u20$core..fmt..Display$GT$3fmt17h9dd67ea461bceaa8E.exit.i"
  %.sroa.0.0.copyload = load i64, ptr %i.d, align 8, !noalias !2997 ; 5 uses
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !2997 ; 7 uses
  %.sroa.7.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !2997 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2991
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.m = icmp sgt i64 %.sroa.7.0.copyload, -1
  call void @llvm.assume(i1 %i.m)
  %i.n = icmp samesign ult i64 %.sroa.7.0.copyload, 16
  br i1 %i.n, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = icmp ugt i64 %.sroa.0.0.copyload, %.sroa.7.0.copyload
  br i1 %i.o, label %bb.g, label %"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit"

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.p = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1, i64 noundef range(i64 1, 9223372036854775807) %.sroa.7.0.copyload) #59, !noalias !2998 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.h, label %"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit"

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %.sroa.7.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @766) #57
          to label %.noexc.i.i unwind label %.body.i, !noalias !2999

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

.body.i:                                          ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !3000
  br label %.body

bb.i:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.b, i8 0, i64 15, i1 false), !noalias !3001
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.b, ptr nonnull readonly align 1 %.sroa.5.0.copyload, i64 %.sroa.7.0.copyload, i1 false), !noalias !3001
  %.0..0..0..0..0..sroa.08.1.copyload = load i56, ptr %i.b, align 8, !noalias !3002
  %.sroa.08.1.insert.ext = zext i56 %.0..0..0..0..0..sroa.08.1.copyload to i64
  %.sroa.08.1.insert.shift = shl nuw i64 %.sroa.08.1.insert.ext, 8
  %.sroa.08.1.insert.insert = or disjoint i64 %.sroa.08.1.insert.shift, %.sroa.7.0.copyload
  %i.s = inttoptr i64 %.sroa.08.1.insert.insert to ptr ; 2 uses
  %.7..7..7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %.7..7..7..7..7..sroa.6.1.copyload = load i64, ptr %.7..7..7..7..7..sroa_idx, align 1, !noalias !3002 ; 2 uses
  %i.t = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.t, label %"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !3003
  br label %"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit"

"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit": ; preds = %bb.f, %bb.g, %bb.i, %bb.j
  %.sroa.08.0 = phi ptr [ %i.s, %bb.i ], [ %i.s, %bb.j ], [ %i.p, %bb.g ], [ %.sroa.5.0.copyload, %bb.f ]
  %.sroa.710.0 = phi i8 [ 1, %bb.i ], [ 1, %bb.j ], [ -1, %bb.g ], [ -1, %bb.f ]
  %.sroa.6.0 = phi i64 [ %.7..7..7..7..7..sroa.6.1.copyload, %bb.i ], [ %.7..7..7..7..7..sroa.6.1.copyload, %bb.j ], [ %.sroa.7.0.copyload, %bb.g ], [ %.sroa.7.0.copyload, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.08.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %.sroa.710.0, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.k:                                             ; preds = %.body
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.l:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN11liquid_core5model6scalar119_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..scalar..datetime..DateTime$GT$8as_debug17h49c4cdf85fbf419fE"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @106, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN11liquid_core5model6scalar119_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..scalar..datetime..DateTime$GT$8to_value17hc7d00a68f0ce7c8aE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 1), (8, 32)) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #10 {
bb.a:
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.42.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 5, ptr %i.a, align 8
  store i8 0, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN11liquid_core5model6scalar119_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..scalar..datetime..DateTime$GT$9as_scalar17h55aa2485fa02220aE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #10 {
bb.a:
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.42.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  store i64 5, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN11liquid_core5model6scalar119_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$liquid_core..model..scalar..datetime..DateTime$GT$9type_name17h71c2921b15f7379fE"(ptr noalias readonly align 4 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @107, i64 9 }
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define noundef zeroext i1 @"_ZN11liquid_core5model6scalar137_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$GT$11query_state17hf72d846ac2d9d526E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, i8 noundef range(i8 0, 4) %1) unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.b = load i8, ptr %i.a, align 1, !noundef !6
  switch i8 %i.b, label %bb.h [
    i8 0, label %bb.b
    i8 -1, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !nonnull !6, !align !8, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !6
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %bb.g, %bb.b
  %.sroa.6.0 = phi i64 [ %i.o, %bb.h ], [ %i.e, %bb.b ], [ %i.m, %bb.g ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.p, %bb.h ], [ %i.c, %bb.b ], [ %i.k, %bb.g ]
  switch i8 %1, label %default.unreachable [
    i8 0, label %"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$11query_state17h58de856de623a4a6E.exit"
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
  ]

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %.sroa.6.0, 0
  br label %"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$11query_state17h58de856de623a4a6E.exit"

bb.e:                                             ; preds = %bb.c
  %i.g = icmp eq i64 %.sroa.6.0, 0
  br label %"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$11query_state17h58de856de623a4a6E.exit"

bb.f:                                             ; preds = %bb.c
  %i.h = tail call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h03fe2cfe0c149ccaE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.6.0), !noalias !3006
  %i.i = extractvalue { ptr, i64 } %i.h, 1
  %i.j = icmp eq i64 %i.i, 0
  br label %"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$11query_state17h58de856de623a4a6E.exit"

"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$11query_state17h58de856de623a4a6E.exit": ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.0.0.shrunk.i = phi i1 [ %i.j, %bb.f ], [ %i.f, %bb.d ], [ %i.g, %bb.e ], [ true, %bb.c ]
  ret i1 %.sroa.0.0.shrunk.i

bb.g:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noundef !6
  br label %bb.c

bb.h:                                             ; preds = %bb.a
  %i.n = load i8, ptr %0, align 8, !noundef !6
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN11liquid_core5model6scalar137_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$GT$6source17h40c659a788c5c106E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.b = load i8, ptr %i.a, align 1, !noundef !6
  switch i8 %i.b, label %bb.f [
    i8 0, label %bb.b
    i8 -1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !nonnull !6, !align !8, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !6
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.e, %bb.b
  %.sroa.6.0 = phi i64 [ %i.o, %bb.f ], [ %i.e, %bb.b ], [ %i.m, %bb.e ]
  %.sroa.0.0 = phi ptr [ %i.p, %bb.f ], [ %i.c, %bb.b ], [ %i.k, %bb.e ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !3009
  %i.f = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !3009 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit, !prof !12

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #57, !noalias !3009
  unreachable

_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit: ; preds = %bb.c
  store ptr %.sroa.0.0, ptr %i.f, align 8, !noalias !3009
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.6.0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @97, ptr %i.j, align 8
  store i64 0, ptr %0, align 8
  ret void

bb.e:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noundef !6
  br label %bb.c

bb.f:                                             ; preds = %bb.a
  %i.n = load i8, ptr %1, align 8, !noundef !6
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN11liquid_core5model6scalar137_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$GT$8to_value17hc94d0478302146e2E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 1), (8, 40)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %.sroa.6 = alloca [7 x i8], align 8             ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3016)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.b = load i8, ptr %i.a, align 1, !alias.scope !3017, !noalias !3016, !noundef !6 ; 2 uses
  %i.c = icmp eq i8 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { ptr, i64 } @"_ZN67_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h99dc39076b9f17afE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1), !noalias !3016 ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  %i.f = extractvalue { ptr, i64 } %i.d, 1
  br label %"_ZN84_$LT$kstring..string..inner..KStringInner$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1f5fe101e27b5ff2E.exit"

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.copyload6 = load ptr, ptr %1, align 8, !alias.scope !3018
  %.sroa.5.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload8 = load i64, ptr %.sroa.5.0..sroa_idx7, align 8, !alias.scope !3018
  %.sroa.6.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.6.0..sroa_idx9, i64 7, i1 false)
  br label %"_ZN84_$LT$kstring..string..inner..KStringInner$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1f5fe101e27b5ff2E.exit"

"_ZN84_$LT$kstring..string..inner..KStringInner$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1f5fe101e27b5ff2E.exit": ; preds = %bb.b, %bb.c
  %.sroa.5.0 = phi i64 [ %i.f, %bb.b ], [ %.sroa.5.0.copyload8, %bb.c ]
  %.sroa.0.0 = phi ptr [ %i.e, %bb.b ], [ %.sroa.0.0.copyload6, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.g, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.0.0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5.0, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.6, i64 7, i1 false)
  %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 39
  store i8 %i.b, ptr %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx, align 1
  store i8 0, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @"_ZN11liquid_core5model6scalar137_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$GT$9as_scalar17h9b5e0738101a59b1E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24), (31, 32)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.b = load i8, ptr %i.a, align 1, !alias.scope !3022, !noalias !3023, !noundef !6
  switch i8 %i.b, label %bb.d [
    i8 0, label %bb.b
    i8 -1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !alias.scope !3022, !noalias !3023, !nonnull !6, !align !8, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !3022, !noalias !3023, !noundef !6
  br label %"_ZN153_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$core..convert..From$LT$$RF$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$GT$$GT$4from17h200d1e7cbeaeed0dE.exit"

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !alias.scope !3022, !noalias !3023, !nonnull !6, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !3022, !noalias !3023, !noundef !6
  br label %"_ZN153_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$core..convert..From$LT$$RF$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$GT$$GT$4from17h200d1e7cbeaeed0dE.exit"

bb.d:                                             ; preds = %bb.a
  %i.i = load i8, ptr %1, align 8, !alias.scope !3022, !noalias !3023, !noundef !6
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %"_ZN153_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$core..convert..From$LT$$RF$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$GT$$GT$4from17h200d1e7cbeaeed0dE.exit"

"_ZN153_$LT$liquid_core..model..scalar..ScalarCow$u20$as$u20$core..convert..From$LT$$RF$kstring..string..KStringBase$LT$alloc..boxed..Box$LT$str$GT$$GT$$GT$$GT$4from17h200d1e7cbeaeed0dE.exit": ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.09.0.i = phi i64 [ 1, %bb.b ], [ 0, %bb.d ], [ 0, %bb.c ]
  %.sroa.511.sroa.0.0.i = phi ptr [ %i.c, %bb.b ], [ %i.k, %bb.d ], [ %i.f, %bb.c ]
  %.sroa.511.sroa.5.0.i = phi i64 [ %i.e, %bb.b ], [ %i.j, %bb.d ], [ %i.h, %bb.c ]
  store i64 %.sroa.09.0.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.511.sroa.0.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.511.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.61.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 0, ptr %.sroa.61.0..sroa_idx, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
end_hunk_3
begin_hunk_4_@"_ZN11liquid_core5model6scalar76_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$f32$GT$7to_kstr17h34c45a4595ae8ef9E":bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN11liquid_core5model6scalar76_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$f64$GT$11query_state17h72fca70c0eaf5defE"(ptr noalias readonly align 8 captures(none) %0, i8 noundef range(i8 0, 4) %1) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i8 %1, 0
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @"_ZN11liquid_core5model6scalar76_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$f64$GT$6render17h416093a7dc91b5feE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @122, ptr %i.b, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @"_ZN11liquid_core5model6scalar76_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$f64$GT$6source17h9241a8f091da89b1E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @122, ptr %i.b, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN11liquid_core5model6scalar76_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$f64$GT$7to_kstr17h6bb5bd7275f651dfE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [15 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr @122, ptr %i.g, align 8
  store i64 1, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3252
  store i64 0, ptr %i.d, align 8, !noalias !3252
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !3252
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !3252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3252
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 -536870880, ptr %i.h, align 8, !noalias !3252
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !3252
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !3252
  store ptr %i.d, ptr %i.c, align 8, !noalias !3252
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @443, ptr %i.i, align 8, !noalias !3252
  %i.j = invoke noundef zeroext i1 @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f64$GT$3fmt17hd9bcbe11d7fbf124E"(ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN85_$LT$liquid_core..model..value..display..DisplayCow$u20$as$u20$core..fmt..Display$GT$3fmt17h9dd67ea461bceaa8E.exit.i" unwind label %bb.b, !inline_history !39

bb.b:                                             ; preds = %bb.a, %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3253)
  call void @llvm.experimental.noalias.scope.decl(metadata !3254)
  %.val.i.i.i = load i64, ptr %i.d, align 8, !range !21, !alias.scope !3255, !noalias !3252, !noundef !6 ; 2 uses
  %i.l = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.l, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !3255, !noalias !3252, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !3256
  br label %.body

"_ZN85_$LT$liquid_core..model..value..display..DisplayCow$u20$as$u20$core..fmt..Display$GT$3fmt17h9dd67ea461bceaa8E.exit.i": ; preds = %bb.a
  br i1 %i.j, label %bb.d, label %bb.e, !prof !12

bb.d:                                             ; preds = %"_ZN85_$LT$liquid_core..model..value..display..DisplayCow$u20$as$u20$core..fmt..Display$GT$3fmt17h9dd67ea461bceaa8E.exit.i"
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @444, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @468, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @446) #57
          to label %.noexc.i unwind label %bb.b, !noalias !3257

.noexc.i:                                         ; preds = %bb.d
  unreachable

.body:                                            ; preds = %.body.i, %bb.b, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.b ], [ %i.k, %bb.c ], [ %i.r, %.body.i ]
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #58
          to label %bb.l unwind label %bb.k

bb.e:                                             ; preds = %"_ZN85_$LT$liquid_core..model..value..display..DisplayCow$u20$as$u20$core..fmt..Display$GT$3fmt17h9dd67ea461bceaa8E.exit.i"
  %.sroa.0.0.copyload = load i64, ptr %i.d, align 8, !noalias !3258 ; 5 uses
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !3258 ; 7 uses
  %.sroa.7.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !3258 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.m = icmp sgt i64 %.sroa.7.0.copyload, -1
  call void @llvm.assume(i1 %i.m)
  %i.n = icmp samesign ult i64 %.sroa.7.0.copyload, 16
  br i1 %i.n, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = icmp ugt i64 %.sroa.0.0.copyload, %.sroa.7.0.copyload
  br i1 %i.o, label %bb.g, label %"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit"

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.p = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1, i64 noundef range(i64 1, 9223372036854775807) %.sroa.7.0.copyload) #59, !noalias !3259 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.h, label %"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit"

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %.sroa.7.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @766) #57
          to label %.noexc.i.i unwind label %.body.i, !noalias !3260

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

.body.i:                                          ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !3261
  br label %.body

bb.i:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.b, i8 0, i64 15, i1 false), !noalias !3262
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.b, ptr nonnull readonly align 1 %.sroa.5.0.copyload, i64 %.sroa.7.0.copyload, i1 false), !noalias !3262
  %.0..0..0..0..0..sroa.08.1.copyload = load i56, ptr %i.b, align 8, !noalias !3263
  %.sroa.08.1.insert.ext = zext i56 %.0..0..0..0..0..sroa.08.1.copyload to i64
  %.sroa.08.1.insert.shift = shl nuw i64 %.sroa.08.1.insert.ext, 8
  %.sroa.08.1.insert.insert = or disjoint i64 %.sroa.08.1.insert.shift, %.sroa.7.0.copyload
  %i.s = inttoptr i64 %.sroa.08.1.insert.insert to ptr ; 2 uses
  %.7..7..7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %.7..7..7..7..7..sroa.6.1.copyload = load i64, ptr %.7..7..7..7..7..sroa_idx, align 1, !noalias !3263 ; 2 uses
  %i.t = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.t, label %"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !3264
  br label %"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit"

"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit": ; preds = %bb.f, %bb.g, %bb.i, %bb.j
  %.sroa.08.0 = phi ptr [ %i.s, %bb.i ], [ %i.s, %bb.j ], [ %i.p, %bb.g ], [ %.sroa.5.0.copyload, %bb.f ]
  %.sroa.710.0 = phi i8 [ 1, %bb.i ], [ 1, %bb.j ], [ -1, %bb.g ], [ -1, %bb.f ]
  %.sroa.6.0 = phi i64 [ %.7..7..7..7..7..sroa.6.1.copyload, %bb.i ], [ %.7..7..7..7..7..sroa.6.1.copyload, %bb.j ], [ %.sroa.7.0.copyload, %bb.g ], [ %.sroa.7.0.copyload, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.08.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %.sroa.710.0, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.k:                                             ; preds = %.body
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.l:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN11liquid_core5model6scalar76_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$f64$GT$8as_debug17h4e8a8604de2aa8d2E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @123, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN11liquid_core5model6scalar76_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$f64$GT$8to_value17h9e90d9d14a75465bE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 1), (8, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #10 {
bb.a:
  %i.a = load double, ptr %1, align 8, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.a, ptr %.sroa.42.0..sroa_idx, align 8
  store i8 0, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN11liquid_core5model6scalar76_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$f64$GT$9as_scalar17h43deaf62daab5f97E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 16)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #10 {
bb.a:
  %i.a = load double, ptr %1, align 8, !noundef !6
  store i64 3, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.a, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN11liquid_core5model6scalar76_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$f64$GT$9type_name17h765a564de12b16d3E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @124, i64 17 }
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN11liquid_core5model6scalar76_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$i16$GT$7to_kstr17hced56929236ccfb4E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [15 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr @125, ptr %i.g, align 8
  store i64 1, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3289
  store i64 0, ptr %i.d, align 8, !noalias !3289
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !3289
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !3289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3289
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 -536870880, ptr %i.h, align 8, !noalias !3289
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !3289
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !3289
  store ptr %i.d, ptr %i.c, align 8, !noalias !3289
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @443, ptr %i.i, align 8, !noalias !3289
  %i.j = invoke noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i16$GT$3fmt17h5e7056a81f88a921E"(ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN85_$LT$liquid_core..model..value..display..DisplayCow$u20$as$u20$core..fmt..Display$GT$3fmt17h9dd67ea461bceaa8E.exit.i" unwind label %bb.b, !inline_history !39

bb.b:                                             ; preds = %bb.a, %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3290)
  call void @llvm.experimental.noalias.scope.decl(metadata !3291)
  %.val.i.i.i = load i64, ptr %i.d, align 8, !range !21, !alias.scope !3292, !noalias !3289, !noundef !6 ; 2 uses
  %i.l = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.l, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !3292, !noalias !3289, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !3293
  br label %.body

"_ZN85_$LT$liquid_core..model..value..display..DisplayCow$u20$as$u20$core..fmt..Display$GT$3fmt17h9dd67ea461bceaa8E.exit.i": ; preds = %bb.a
  br i1 %i.j, label %bb.d, label %bb.e, !prof !12

bb.d:                                             ; preds = %"_ZN85_$LT$liquid_core..model..value..display..DisplayCow$u20$as$u20$core..fmt..Display$GT$3fmt17h9dd67ea461bceaa8E.exit.i"
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @444, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @468, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @446) #57
          to label %.noexc.i unwind label %bb.b, !noalias !3294

.noexc.i:                                         ; preds = %bb.d
  unreachable

.body:                                            ; preds = %.body.i, %bb.b, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.b ], [ %i.k, %bb.c ], [ %i.r, %.body.i ]
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #58
          to label %bb.l unwind label %bb.k

bb.e:                                             ; preds = %"_ZN85_$LT$liquid_core..model..value..display..DisplayCow$u20$as$u20$core..fmt..Display$GT$3fmt17h9dd67ea461bceaa8E.exit.i"
  %.sroa.0.0.copyload = load i64, ptr %i.d, align 8, !noalias !3295 ; 5 uses
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !3295 ; 7 uses
  %.sroa.7.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !3295 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.m = icmp sgt i64 %.sroa.7.0.copyload, -1
  call void @llvm.assume(i1 %i.m)
  %i.n = icmp samesign ult i64 %.sroa.7.0.copyload, 16
  br i1 %i.n, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = icmp ugt i64 %.sroa.0.0.copyload, %.sroa.7.0.copyload
  br i1 %i.o, label %bb.g, label %"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit"

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.p = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1, i64 noundef range(i64 1, 9223372036854775807) %.sroa.7.0.copyload) #59, !noalias !3296 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.h, label %"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit"

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %.sroa.7.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @766) #57
          to label %.noexc.i.i unwind label %.body.i, !noalias !3297

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

.body.i:                                          ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !3298
  br label %.body

bb.i:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.b, i8 0, i64 15, i1 false), !noalias !3299
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.b, ptr nonnull readonly align 1 %.sroa.5.0.copyload, i64 %.sroa.7.0.copyload, i1 false), !noalias !3299
  %.0..0..0..0..0..sroa.08.1.copyload = load i56, ptr %i.b, align 8, !noalias !3300
  %.sroa.08.1.insert.ext = zext i56 %.0..0..0..0..0..sroa.08.1.copyload to i64
  %.sroa.08.1.insert.shift = shl nuw i64 %.sroa.08.1.insert.ext, 8
  %.sroa.08.1.insert.insert = or disjoint i64 %.sroa.08.1.insert.shift, %.sroa.7.0.copyload
  %i.s = inttoptr i64 %.sroa.08.1.insert.insert to ptr ; 2 uses
  %.7..7..7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %.7..7..7..7..7..sroa.6.1.copyload = load i64, ptr %.7..7..7..7..7..sroa_idx, align 1, !noalias !3300 ; 2 uses
  %i.t = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.t, label %"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !3301
  br label %"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit"

"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit": ; preds = %bb.f, %bb.g, %bb.i, %bb.j
  %.sroa.08.0 = phi ptr [ %i.s, %bb.i ], [ %i.s, %bb.j ], [ %i.p, %bb.g ], [ %.sroa.5.0.copyload, %bb.f ]
  %.sroa.710.0 = phi i8 [ 1, %bb.i ], [ 1, %bb.j ], [ -1, %bb.g ], [ -1, %bb.f ]
  %.sroa.6.0 = phi i64 [ %.7..7..7..7..7..sroa.6.1.copyload, %bb.i ], [ %.7..7..7..7..7..sroa.6.1.copyload, %bb.j ], [ %.sroa.7.0.copyload, %bb.g ], [ %.sroa.7.0.copyload, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.08.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %.sroa.710.0, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.k:                                             ; preds = %.body
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.l:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN11liquid_core5model6scalar76_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$i32$GT$7to_kstr17h878ce897001ef4d1E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [15 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr @126, ptr %i.g, align 8
  store i64 1, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3326
  store i64 0, ptr %i.d, align 8, !noalias !3326
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !3326
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !3326
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3326
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 -536870880, ptr %i.h, align 8, !noalias !3326
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !3326
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !3326
  store ptr %i.d, ptr %i.c, align 8, !noalias !3326
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @443, ptr %i.i, align 8, !noalias !3326
  %i.j = invoke noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h1d34aa19ad65fef9E"(ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN85_$LT$liquid_core..model..value..display..DisplayCow$u20$as$u20$core..fmt..Display$GT$3fmt17h9dd67ea461bceaa8E.exit.i" unwind label %bb.b, !inline_history !39

bb.b:                                             ; preds = %bb.a, %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3327)
  call void @llvm.experimental.noalias.scope.decl(metadata !3328)
  %.val.i.i.i = load i64, ptr %i.d, align 8, !range !21, !alias.scope !3329, !noalias !3326, !noundef !6 ; 2 uses
  %i.l = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.l, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !3329, !noalias !3326, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !3330
  br label %.body

"_ZN85_$LT$liquid_core..model..value..display..DisplayCow$u20$as$u20$core..fmt..Display$GT$3fmt17h9dd67ea461bceaa8E.exit.i": ; preds = %bb.a
  br i1 %i.j, label %bb.d, label %bb.e, !prof !12

bb.d:                                             ; preds = %"_ZN85_$LT$liquid_core..model..value..display..DisplayCow$u20$as$u20$core..fmt..Display$GT$3fmt17h9dd67ea461bceaa8E.exit.i"
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @444, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @468, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @446) #57
          to label %.noexc.i unwind label %bb.b, !noalias !3331

.noexc.i:                                         ; preds = %bb.d
  unreachable
end_hunk_4
begin_hunk_5_@"_ZN11liquid_core5model6scalar76_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$i32$GT$7to_kstr17h878ce897001ef4d1E":bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN11liquid_core5model6scalar76_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$i64$GT$11query_state17hedcd5a3a1da41387E"(ptr noalias readonly align 8 captures(none) %0, i8 noundef range(i8 0, 4) %1) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i8 %1, 0
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @"_ZN11liquid_core5model6scalar76_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$i64$GT$6render17hd3140f319da9b891E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @127, ptr %i.b, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @"_ZN11liquid_core5model6scalar76_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$i64$GT$6source17hea552a8cde7a354aE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @127, ptr %i.b, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN11liquid_core5model6scalar76_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$i64$GT$7to_kstr17h022749a10f66eb28E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [15 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr @127, ptr %i.g, align 8
  store i64 1, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3363
  store i64 0, ptr %i.d, align 8, !noalias !3363
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !3363
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !3363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3363
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 -536870880, ptr %i.h, align 8, !noalias !3363
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !3363
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !3363
  store ptr %i.d, ptr %i.c, align 8, !noalias !3363
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @443, ptr %i.i, align 8, !noalias !3363
  %i.j = invoke noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17h3d3282282be62894E"(ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN85_$LT$liquid_core..model..value..display..DisplayCow$u20$as$u20$core..fmt..Display$GT$3fmt17h9dd67ea461bceaa8E.exit.i" unwind label %bb.b, !inline_history !39

bb.b:                                             ; preds = %bb.a, %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3364)
  call void @llvm.experimental.noalias.scope.decl(metadata !3365)
  %.val.i.i.i = load i64, ptr %i.d, align 8, !range !21, !alias.scope !3366, !noalias !3363, !noundef !6 ; 2 uses
  %i.l = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.l, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !3366, !noalias !3363, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !3367
  br label %.body

"_ZN85_$LT$liquid_core..model..value..display..DisplayCow$u20$as$u20$core..fmt..Display$GT$3fmt17h9dd67ea461bceaa8E.exit.i": ; preds = %bb.a
  br i1 %i.j, label %bb.d, label %bb.e, !prof !12

bb.d:                                             ; preds = %"_ZN85_$LT$liquid_core..model..value..display..DisplayCow$u20$as$u20$core..fmt..Display$GT$3fmt17h9dd67ea461bceaa8E.exit.i"
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @444, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @468, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @446) #57
          to label %.noexc.i unwind label %bb.b, !noalias !3368

.noexc.i:                                         ; preds = %bb.d
  unreachable

.body:                                            ; preds = %.body.i, %bb.b, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.b ], [ %i.k, %bb.c ], [ %i.r, %.body.i ]
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #58
          to label %bb.l unwind label %bb.k

bb.e:                                             ; preds = %"_ZN85_$LT$liquid_core..model..value..display..DisplayCow$u20$as$u20$core..fmt..Display$GT$3fmt17h9dd67ea461bceaa8E.exit.i"
  %.sroa.0.0.copyload = load i64, ptr %i.d, align 8, !noalias !3369 ; 5 uses
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !3369 ; 7 uses
  %.sroa.7.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !3369 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.m = icmp sgt i64 %.sroa.7.0.copyload, -1
  call void @llvm.assume(i1 %i.m)
  %i.n = icmp samesign ult i64 %.sroa.7.0.copyload, 16
  br i1 %i.n, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = icmp ugt i64 %.sroa.0.0.copyload, %.sroa.7.0.copyload
  br i1 %i.o, label %bb.g, label %"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit"

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.p = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1, i64 noundef range(i64 1, 9223372036854775807) %.sroa.7.0.copyload) #59, !noalias !3370 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.h, label %"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit"

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %.sroa.7.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @766) #57
          to label %.noexc.i.i unwind label %.body.i, !noalias !3371

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

.body.i:                                          ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !3372
  br label %.body

bb.i:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.b, i8 0, i64 15, i1 false), !noalias !3373
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.b, ptr nonnull readonly align 1 %.sroa.5.0.copyload, i64 %.sroa.7.0.copyload, i1 false), !noalias !3373
  %.0..0..0..0..0..sroa.08.1.copyload = load i56, ptr %i.b, align 8, !noalias !3374
  %.sroa.08.1.insert.ext = zext i56 %.0..0..0..0..0..sroa.08.1.copyload to i64
  %.sroa.08.1.insert.shift = shl nuw i64 %.sroa.08.1.insert.ext, 8
  %.sroa.08.1.insert.insert = or disjoint i64 %.sroa.08.1.insert.shift, %.sroa.7.0.copyload
  %i.s = inttoptr i64 %.sroa.08.1.insert.insert to ptr ; 2 uses
  %.7..7..7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %.7..7..7..7..7..sroa.6.1.copyload = load i64, ptr %.7..7..7..7..7..sroa_idx, align 1, !noalias !3374 ; 2 uses
  %i.t = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.t, label %"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !3375
  br label %"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit"

"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit": ; preds = %bb.f, %bb.g, %bb.i, %bb.j
  %.sroa.08.0 = phi ptr [ %i.s, %bb.i ], [ %i.s, %bb.j ], [ %i.p, %bb.g ], [ %.sroa.5.0.copyload, %bb.f ]
  %.sroa.710.0 = phi i8 [ 1, %bb.i ], [ 1, %bb.j ], [ -1, %bb.g ], [ -1, %bb.f ]
  %.sroa.6.0 = phi i64 [ %.7..7..7..7..7..sroa.6.1.copyload, %bb.i ], [ %.7..7..7..7..7..sroa.6.1.copyload, %bb.j ], [ %.sroa.7.0.copyload, %bb.g ], [ %.sroa.7.0.copyload, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.08.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %.sroa.710.0, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.k:                                             ; preds = %.body
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.l:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN11liquid_core5model6scalar76_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$i64$GT$8as_debug17h4b10f5de3f196341E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @128, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN11liquid_core5model6scalar76_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$i64$GT$8to_value17h76884b069e83d545E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 1), (8, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.a, ptr %.sroa.42.0..sroa_idx, align 8
  store i8 0, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN11liquid_core5model6scalar76_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$i64$GT$9as_scalar17h1630cd974468fdf5E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 16)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !noundef !6
  store i64 2, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.a, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN11liquid_core5model6scalar76_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$i64$GT$9type_name17h99d540470b4efa56E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @129, i64 12 }
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN11liquid_core5model6scalar76_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$u16$GT$7to_kstr17h99cd785802120b91E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [15 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr @130, ptr %i.g, align 8
  store i64 1, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3400
  store i64 0, ptr %i.d, align 8, !noalias !3400
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !3400
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !3400
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3400
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 -536870880, ptr %i.h, align 8, !noalias !3400
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !3400
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !3400
  store ptr %i.d, ptr %i.c, align 8, !noalias !3400
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @443, ptr %i.i, align 8, !noalias !3400
  %i.j = invoke noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u16$GT$3fmt17hceed42adcc2968d9E"(ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN85_$LT$liquid_core..model..value..display..DisplayCow$u20$as$u20$core..fmt..Display$GT$3fmt17h9dd67ea461bceaa8E.exit.i" unwind label %bb.b, !inline_history !39

bb.b:                                             ; preds = %bb.a, %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3401)
  call void @llvm.experimental.noalias.scope.decl(metadata !3402)
  %.val.i.i.i = load i64, ptr %i.d, align 8, !range !21, !alias.scope !3403, !noalias !3400, !noundef !6 ; 2 uses
  %i.l = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.l, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !3403, !noalias !3400, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !3404
  br label %.body

"_ZN85_$LT$liquid_core..model..value..display..DisplayCow$u20$as$u20$core..fmt..Display$GT$3fmt17h9dd67ea461bceaa8E.exit.i": ; preds = %bb.a
  br i1 %i.j, label %bb.d, label %bb.e, !prof !12

bb.d:                                             ; preds = %"_ZN85_$LT$liquid_core..model..value..display..DisplayCow$u20$as$u20$core..fmt..Display$GT$3fmt17h9dd67ea461bceaa8E.exit.i"
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @444, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @468, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @446) #57
          to label %.noexc.i unwind label %bb.b, !noalias !3405

.noexc.i:                                         ; preds = %bb.d
  unreachable

.body:                                            ; preds = %.body.i, %bb.b, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.b ], [ %i.k, %bb.c ], [ %i.r, %.body.i ]
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #58
          to label %bb.l unwind label %bb.k

bb.e:                                             ; preds = %"_ZN85_$LT$liquid_core..model..value..display..DisplayCow$u20$as$u20$core..fmt..Display$GT$3fmt17h9dd67ea461bceaa8E.exit.i"
  %.sroa.0.0.copyload = load i64, ptr %i.d, align 8, !noalias !3406 ; 5 uses
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !3406 ; 7 uses
  %.sroa.7.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !3406 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3400
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.m = icmp sgt i64 %.sroa.7.0.copyload, -1
  call void @llvm.assume(i1 %i.m)
  %i.n = icmp samesign ult i64 %.sroa.7.0.copyload, 16
  br i1 %i.n, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = icmp ugt i64 %.sroa.0.0.copyload, %.sroa.7.0.copyload
  br i1 %i.o, label %bb.g, label %"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit"

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.p = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1, i64 noundef range(i64 1, 9223372036854775807) %.sroa.7.0.copyload) #59, !noalias !3407 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.h, label %"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit"

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %.sroa.7.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @766) #57
          to label %.noexc.i.i unwind label %.body.i, !noalias !3408

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

.body.i:                                          ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !3409
  br label %.body

bb.i:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.b, i8 0, i64 15, i1 false), !noalias !3410
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.b, ptr nonnull readonly align 1 %.sroa.5.0.copyload, i64 %.sroa.7.0.copyload, i1 false), !noalias !3410
  %.0..0..0..0..0..sroa.08.1.copyload = load i56, ptr %i.b, align 8, !noalias !3411
  %.sroa.08.1.insert.ext = zext i56 %.0..0..0..0..0..sroa.08.1.copyload to i64
  %.sroa.08.1.insert.shift = shl nuw i64 %.sroa.08.1.insert.ext, 8
  %.sroa.08.1.insert.insert = or disjoint i64 %.sroa.08.1.insert.shift, %.sroa.7.0.copyload
  %i.s = inttoptr i64 %.sroa.08.1.insert.insert to ptr ; 2 uses
  %.7..7..7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %.7..7..7..7..7..sroa.6.1.copyload = load i64, ptr %.7..7..7..7..7..sroa_idx, align 1, !noalias !3411 ; 2 uses
  %i.t = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.t, label %"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !3412
  br label %"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit"

"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit": ; preds = %bb.f, %bb.g, %bb.i, %bb.j
  %.sroa.08.0 = phi ptr [ %i.s, %bb.i ], [ %i.s, %bb.j ], [ %i.p, %bb.g ], [ %.sroa.5.0.copyload, %bb.f ]
  %.sroa.710.0 = phi i8 [ 1, %bb.i ], [ 1, %bb.j ], [ -1, %bb.g ], [ -1, %bb.f ]
  %.sroa.6.0 = phi i64 [ %.7..7..7..7..7..sroa.6.1.copyload, %bb.i ], [ %.7..7..7..7..7..sroa.6.1.copyload, %bb.j ], [ %.sroa.7.0.copyload, %bb.g ], [ %.sroa.7.0.copyload, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.08.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %.sroa.710.0, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.k:                                             ; preds = %.body
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.l:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN11liquid_core5model6scalar76_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$u32$GT$7to_kstr17he7ed6d3bb32156fbE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [15 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr @131, ptr %i.g, align 8
  store i64 1, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3437
  store i64 0, ptr %i.d, align 8, !noalias !3437
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !3437
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !3437
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3437
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 -536870880, ptr %i.h, align 8, !noalias !3437
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !3437
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !3437
  store ptr %i.d, ptr %i.c, align 8, !noalias !3437
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @443, ptr %i.i, align 8, !noalias !3437
  %i.j = invoke noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h304ef928d833cc67E"(ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN85_$LT$liquid_core..model..value..display..DisplayCow$u20$as$u20$core..fmt..Display$GT$3fmt17h9dd67ea461bceaa8E.exit.i" unwind label %bb.b, !inline_history !39

bb.b:                                             ; preds = %bb.a, %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3438)
  call void @llvm.experimental.noalias.scope.decl(metadata !3439)
  %.val.i.i.i = load i64, ptr %i.d, align 8, !range !21, !alias.scope !3440, !noalias !3437, !noundef !6 ; 2 uses
  %i.l = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.l, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !3440, !noalias !3437, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !3441
  br label %.body

"_ZN85_$LT$liquid_core..model..value..display..DisplayCow$u20$as$u20$core..fmt..Display$GT$3fmt17h9dd67ea461bceaa8E.exit.i": ; preds = %bb.a
  br i1 %i.j, label %bb.d, label %bb.e, !prof !12

bb.d:                                             ; preds = %"_ZN85_$LT$liquid_core..model..value..display..DisplayCow$u20$as$u20$core..fmt..Display$GT$3fmt17h9dd67ea461bceaa8E.exit.i"
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @444, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @468, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @446) #57
          to label %.noexc.i unwind label %bb.b, !noalias !3442

.noexc.i:                                         ; preds = %bb.d
  unreachable
end_hunk_5
begin_hunk_6_@"_ZN11liquid_core5model6scalar77_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$bool$GT$11query_state17h3bdd13325a2e18e3E":bb.a

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ %i.a, %bb.b ], [ %i.c, %bb.c ], [ %i.e, %bb.d ], [ 0, %bb.a ]
  %i.f = trunc nuw i8 %.sroa.0.0 to i1
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @"_ZN11liquid_core5model6scalar77_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$bool$GT$6render17hecaf00286af4cd89E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @132, ptr %i.b, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @"_ZN11liquid_core5model6scalar77_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$bool$GT$6source17hf6ebcb7bb807309dE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @132, ptr %i.b, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN11liquid_core5model6scalar77_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$bool$GT$7to_kstr17h550609c2e4f8f986E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [15 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr @132, ptr %i.g, align 8
  store i64 1, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3474
  store i64 0, ptr %i.d, align 8, !noalias !3474
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !3474
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !3474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3474
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 -536870880, ptr %i.h, align 8, !noalias !3474
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !3474
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !3474
  store ptr %i.d, ptr %i.c, align 8, !noalias !3474
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @443, ptr %i.i, align 8, !noalias !3474
  %i.j = invoke noundef zeroext i1 @"_ZN43_$LT$bool$u20$as$u20$core..fmt..Display$GT$3fmt17ha9a489cf5bee443fE"(ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN85_$LT$liquid_core..model..value..display..DisplayCow$u20$as$u20$core..fmt..Display$GT$3fmt17h9dd67ea461bceaa8E.exit.i" unwind label %bb.b, !inline_history !39

bb.b:                                             ; preds = %bb.a, %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3475)
  call void @llvm.experimental.noalias.scope.decl(metadata !3476)
  %.val.i.i.i = load i64, ptr %i.d, align 8, !range !21, !alias.scope !3477, !noalias !3474, !noundef !6 ; 2 uses
  %i.l = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.l, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !3477, !noalias !3474, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !3478
  br label %.body

"_ZN85_$LT$liquid_core..model..value..display..DisplayCow$u20$as$u20$core..fmt..Display$GT$3fmt17h9dd67ea461bceaa8E.exit.i": ; preds = %bb.a
  br i1 %i.j, label %bb.d, label %bb.e, !prof !12

bb.d:                                             ; preds = %"_ZN85_$LT$liquid_core..model..value..display..DisplayCow$u20$as$u20$core..fmt..Display$GT$3fmt17h9dd67ea461bceaa8E.exit.i"
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @444, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @468, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @446) #57
          to label %.noexc.i unwind label %bb.b, !noalias !3479

.noexc.i:                                         ; preds = %bb.d
  unreachable

.body:                                            ; preds = %.body.i, %bb.b, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.b ], [ %i.k, %bb.c ], [ %i.r, %.body.i ]
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #58
          to label %bb.l unwind label %bb.k

bb.e:                                             ; preds = %"_ZN85_$LT$liquid_core..model..value..display..DisplayCow$u20$as$u20$core..fmt..Display$GT$3fmt17h9dd67ea461bceaa8E.exit.i"
  %.sroa.0.0.copyload = load i64, ptr %i.d, align 8, !noalias !3480 ; 5 uses
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !3480 ; 7 uses
  %.sroa.7.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !3480 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.m = icmp sgt i64 %.sroa.7.0.copyload, -1
  call void @llvm.assume(i1 %i.m)
  %i.n = icmp samesign ult i64 %.sroa.7.0.copyload, 16
  br i1 %i.n, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = icmp ugt i64 %.sroa.0.0.copyload, %.sroa.7.0.copyload
  br i1 %i.o, label %bb.g, label %"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit"

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.p = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1, i64 noundef range(i64 1, 9223372036854775807) %.sroa.7.0.copyload) #59, !noalias !3481 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.h, label %"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit"

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %.sroa.7.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @766) #57
          to label %.noexc.i.i unwind label %.body.i, !noalias !3482

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

.body.i:                                          ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !3483
  br label %.body

bb.i:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.b, i8 0, i64 15, i1 false), !noalias !3484
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.b, ptr nonnull readonly align 1 %.sroa.5.0.copyload, i64 %.sroa.7.0.copyload, i1 false), !noalias !3484
  %.0..0..0..0..0..sroa.08.1.copyload = load i56, ptr %i.b, align 8, !noalias !3485
  %.sroa.08.1.insert.ext = zext i56 %.0..0..0..0..0..sroa.08.1.copyload to i64
  %.sroa.08.1.insert.shift = shl nuw i64 %.sroa.08.1.insert.ext, 8
  %.sroa.08.1.insert.insert = or disjoint i64 %.sroa.08.1.insert.shift, %.sroa.7.0.copyload
  %i.s = inttoptr i64 %.sroa.08.1.insert.insert to ptr ; 2 uses
  %.7..7..7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %.7..7..7..7..7..sroa.6.1.copyload = load i64, ptr %.7..7..7..7..7..sroa_idx, align 1, !noalias !3485 ; 2 uses
  %i.t = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.t, label %"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !3486
  br label %"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit"

"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit": ; preds = %bb.f, %bb.g, %bb.i, %bb.j
  %.sroa.08.0 = phi ptr [ %i.s, %bb.i ], [ %i.s, %bb.j ], [ %i.p, %bb.g ], [ %.sroa.5.0.copyload, %bb.f ]
  %.sroa.710.0 = phi i8 [ 1, %bb.i ], [ 1, %bb.j ], [ -1, %bb.g ], [ -1, %bb.f ]
  %.sroa.6.0 = phi i64 [ %.7..7..7..7..7..sroa.6.1.copyload, %bb.i ], [ %.7..7..7..7..7..sroa.6.1.copyload, %bb.j ], [ %.sroa.7.0.copyload, %bb.g ], [ %.sroa.7.0.copyload, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.08.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %.sroa.710.0, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.k:                                             ; preds = %.body
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.l:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN11liquid_core5model6scalar77_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$bool$GT$8as_debug17h55767c0bcdc5e7ecE"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @133, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN11liquid_core5model6scalar77_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$bool$GT$8to_value17hed9b8ff0a878d22cE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 1), (8, 17)) %0, ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %1) unnamed_addr #10 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !range !11, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.a, ptr %.sroa.42.0..sroa_idx, align 8
  store i8 0, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN11liquid_core5model6scalar77_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$bool$GT$9as_scalar17h60a3e74b29750454E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 9)) %0, ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %1) unnamed_addr #10 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !range !11, !noundef !6
  store i64 4, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.a, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN11liquid_core5model6scalar77_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$bool$GT$9type_name17h134962caebe27026E"(ptr noalias readonly align 1 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @134, i64 7 }
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define noundef zeroext i1 @"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$11query_state17h58de856de623a4a6E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, i8 noundef range(i8 0, 4) %1) unnamed_addr #20 {
bb.a:
  switch i8 %1, label %default.unreachable1 [
    i8 0, label %bb.e
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !6
  %i.c = icmp eq i64 %i.b, 0
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !6
  %i.f = icmp eq i64 %i.e, 0
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !nonnull !6, !align !8, !noundef !6
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !6
  %i.j = tail call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h03fe2cfe0c149ccaE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.g, i64 noundef %i.i)
  %i.k = extractvalue { ptr, i64 } %i.j, 1
  %i.l = icmp eq i64 %i.k, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.shrunk = phi i1 [ %i.l, %bb.d ], [ %i.c, %bb.b ], [ %i.f, %bb.c ], [ true, %bb.a ]
  ret i1 %.sroa.0.0.shrunk
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$6render17hbd874dbaf56393cbE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @35, ptr %i.b, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$6source17hd3ddd3e0853fea3fE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !6, !align !8, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !3489
  %i.d = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !3489 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #57, !noalias !3489
  unreachable

_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit: ; preds = %bb.a
  store ptr %i.a, ptr %i.d, align 8, !noalias !3489
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @97, ptr %i.h, align 8
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$7to_kstr17hbea6430406690d32E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !6, !align !8, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !6
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$8as_debug17h28519b6c9e91a199E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @135, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$8to_value17hbda766516d1184a4E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [15 x i8], align 8                ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = icmp ult i64 %i.d, 16
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %bb.c, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i", !prof !14

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i": ; preds = %bb.b
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !3501
  %i.g = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !3501 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i"

bb.c:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i", %bb.b
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i" ], [ 0, %bb.b ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #57, !noalias !3502
  unreachable

"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i"
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr nonnull readonly align 1 %i.b, i64 %i.d, i1 false), !noalias !3503
  br label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$8from_ref17hb9e172d4de6626d0E.exit"

bb.d:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.a, i8 0, i64 15, i1 false), !noalias !3504
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 1 %i.b, i64 %i.d, i1 false), !noalias !3503
  %.0..0..0..sroa.0.1.copyload = load i56, ptr %i.a, align 8, !noalias !3505
  %.sroa.0.1.insert.ext = zext i56 %.0..0..0..sroa.0.1.copyload to i64
  %.sroa.0.1.insert.shift = shl nuw i64 %.sroa.0.1.insert.ext, 8
  %.sroa.0.1.insert.insert = or disjoint i64 %.sroa.0.1.insert.shift, %i.d
  %i.i = inttoptr i64 %.sroa.0.1.insert.insert to ptr
  %.7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %.7..7..7..sroa.6.1.copyload = load i64, ptr %.7..7..7..sroa_idx, align 1, !noalias !3505
  br label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$8from_ref17hb9e172d4de6626d0E.exit"

"_ZN7kstring6string5inner21KStringInner$LT$B$GT$8from_ref17hb9e172d4de6626d0E.exit": ; preds = %"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i", %bb.d
  %.sroa.0.0 = phi ptr [ %i.i, %bb.d ], [ %i.g, %"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i" ]
  %.sroa.6.0 = phi i64 [ %.7..7..7..sroa.6.1.copyload, %bb.d ], [ %i.d, %"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i" ]
  %.sink.i = phi i8 [ 1, %bb.d ], [ -1, %"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.j, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.0.0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.6.0, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 39
  store i8 %.sink.i, ptr %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx, align 1
  store i8 0, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$9as_scalar17h843cf6f76cd7161aE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !6, !align !8, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !6
  store i64 0, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %.sroa.511.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$9type_name17ha1e0b1f7650b76fdE"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @99, i64 6 }
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11liquid_core5model6scalar8datetime8DateTime10to_rfc282217hcdb6d5fc596a9727E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 36 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.3.0.copyload = load i8, ptr %.sroa.3.0..sroa_idx, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 5
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1 ; 2 uses
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 6
  %.sroa.57.0.copyload = load i8, ptr %.sroa.57.0..sroa_idx, align 2 ; 2 uses
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.68.0.copyload = load i32, ptr %.sroa.68.0..sroa_idx, align 4 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.7.0.copyload = load i24, ptr %.sroa.7.0..sroa_idx, align 4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3659
  store i64 0, ptr %i.c, align 8, !noalias !3659
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 14 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8, !noalias !3659
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 28 uses
  store i64 0, ptr %i.e, align 8, !noalias !3659
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3660)
  %i.f = ashr i32 %.sroa.68.0.copyload, 10        ; 3 uses
  %i.g = icmp slt i32 %i.f, 1900
  br i1 %i.g, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.7.0.extract.trunc = trunc i24 %.sroa.7.0.copyload to i8 ; 3 uses
  %i.h = icmp sgt i8 %.sroa.7.0.extract.trunc, -60
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp slt i8 %.sroa.7.0.extract.trunc, 60
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq i8 %.sroa.7.0.extract.trunc, 0
  br i1 %i.j, label %bb.c, label %bb.x

bb.c:                                             ; preds = %bb.b
  %i.k = and i32 %.sroa.68.0.copyload, 511        ; 3 uses
  %i.l = add nuw nsw i32 %i.f, 999999             ; 3 uses
  %.neg.i.i1.i.i = udiv i32 %i.l, 100
  %i.m = zext nneg i32 %i.l to i64
  %i.n = mul nuw nsw i64 %i.m, 1461
  %i.o = lshr i64 %i.n, 2
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = udiv i32 %i.l, 400
  %i.r = add nuw nsw i32 %i.k, -363521075
  %i.s = sub nuw nsw i32 %i.r, %.neg.i.i1.i.i
  %i.t = add nuw nsw i32 %i.s, %i.q
  %i.u = add nsw i32 %i.t, %i.p
  %i.v = urem i32 %i.u, 7
  %switch.tableidx.i.i = add nsw i32 %i.v, -1     ; 2 uses
  %i.w = icmp ult i32 %switch.tableidx.i.i, 6
  %switch.idx.cast.i.i = zext i32 %switch.tableidx.i.i to i64
  %switch.offset.i.i = add nuw nsw i64 %switch.idx.cast.i.i, 1
  %.sroa.0.0.i.i.i.i = select i1 %i.w, i64 %switch.offset.i.i, i64 0
  %i.x = getelementptr inbounds nuw [16 x i8], ptr @179, i64 %.sroa.0.0.i.i.i.i
  %i.y = load ptr, ptr %i.x, align 8, !noalias !3661, !nonnull !6, !align !8, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3662)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3663)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3664)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3665)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h4287b1aa71de9ab5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0, i64 noundef 3, i64 noundef 1, i64 noundef 1)
          to label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h83de90d8eb337a42E.exit.i.i" unwind label %bb.o, !noalias !3659

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h83de90d8eb337a42E.exit.i.i": ; preds = %bb.c
  %.pre.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !3666, !noalias !3667 ; 3 uses
  %.pre.i.i = load i64, ptr %i.c, align 8, !range !21, !alias.scope !3668, !noalias !3669
  %i.z = icmp sgt i64 %.pre.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = load ptr, ptr %i.d, align 8, !alias.scope !3666, !noalias !3667, !nonnull !6, !noundef !6 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.pre.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ab, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.y, i64 3, i1 false), !noalias !3670
  %i.ac = add nuw i64 %.pre.i.i.i.i.i.i, 3        ; 4 uses
  store i64 %i.ac, ptr %i.e, align 8, !alias.scope !3666, !noalias !3667
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3671)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3673)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3674)
  %i.ad = sub i64 %.pre.i.i, %i.ac
  %i.ae = icmp ult i64 %i.ad, 2
  br i1 %i.ae, label %bb.d, label %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$3day17hdb75ba523aa4715aE.exit.i.i", !prof !12

bb.d:                                             ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h83de90d8eb337a42E.exit.i.i"
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h4287b1aa71de9ab5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.ac, i64 noundef 2, i64 noundef 1, i64 noundef 1)
          to label %.noexc18.i unwind label %bb.o, !noalias !3659

.noexc18.i:                                       ; preds = %bb.d
  %.pre.i.i.i.i217.i.i = load i64, ptr %i.e, align 8, !alias.scope !3675, !noalias !3669
  %.pre2.i.i = load ptr, ptr %i.d, align 8, !alias.scope !3675, !noalias !3669
  br label %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$3day17hdb75ba523aa4715aE.exit.i.i"

"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$3day17hdb75ba523aa4715aE.exit.i.i": ; preds = %.noexc18.i, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h83de90d8eb337a42E.exit.i.i"
  %i.af = phi ptr [ %i.aa, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h83de90d8eb337a42E.exit.i.i" ], [ %.pre2.i.i, %.noexc18.i ]
  %i.ag = phi i64 [ %i.ac, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h83de90d8eb337a42E.exit.i.i" ], [ %.pre.i.i.i.i217.i.i, %.noexc18.i ] ; 3 uses
  %i.ah = icmp sgt i64 %i.ag, -1
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  store i16 8236, ptr %i.ai, align 1, !noalias !3676
  %i.aj = add nuw i64 %i.ag, 2
  store i64 %i.aj, ptr %i.e, align 8, !alias.scope !3675, !noalias !3669
  %i.ak = lshr i32 %.sroa.68.0.copyload, 9
  %.lobit.i.i.i.i = and i32 %i.ak, 1
  %i.al = add nuw nsw i32 %.lobit.i.i.i.i, 59     ; 2 uses
  %.not.i.i.i.i = icmp samesign ugt i32 %i.k, %i.al ; 2 uses
  %..i.i.i.i = select i1 %.not.i.i.i.i, i32 2, i32 0
  %.7.i.i.i.i = select i1 %.not.i.i.i.i, i32 %i.al, i32 0
  %i.am = sub nsw i32 %i.k, %.7.i.i.i.i           ; 2 uses
  %i.an = mul nsw i32 %i.am, 268
  %i.ao = add nsw i32 %i.an, 8028
  %i.ap = lshr i32 %i.ao, 13                      ; 2 uses
  %i.aq = add nuw nsw i32 %i.ap, %..i.i.i.i       ; 2 uses
  %i.ar = and i32 %i.aq, 255                      ; 2 uses
  %i.as = icmp ne i32 %i.ar, 0
  tail call void @llvm.assume(i1 %i.as)
  %i.at = mul nuw nsw i32 %i.ap, 3917
  %i.au = add nuw nsw i32 %i.at, 28902
  %i.av = lshr i32 %i.au, 7
  %i.aw = sub nsw i32 %i.am, %i.av                ; 2 uses
  %i.ax = and i32 %i.aw, 255
  %.sroa.43.0.extract.trunc.i.i.i = trunc i32 %i.aq to i8
  %.sroa.54.0.extract.trunc.i.i.i = trunc i32 %i.aw to i8
  %i.ay = add i8 %.sroa.43.0.extract.trunc.i.i.i, -1
  %i.az = icmp ult i8 %i.ay, 12
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = icmp ne i32 %i.ax, 0
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = invoke fastcc { i64, ptr } @_ZN4time10formatting22format_number_pad_zero17hef6232694b571a63E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i8 noundef %.sroa.54.0.extract.trunc.i.i.i)
          to label %.noexc19.i unwind label %bb.o, !noalias !3659 ; 0 uses

.noexc19.i:                                       ; preds = %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$3day17hdb75ba523aa4715aE.exit.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3677)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3679)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3680)
  %i.bc = load i64, ptr %i.e, align 8, !alias.scope !3681, !noalias !3682, !noundef !6 ; 3 uses
  %i.bd = load i64, ptr %i.c, align 8, !range !21, !alias.scope !3681, !noalias !3682, !noundef !6 ; 2 uses
  %i.be = icmp eq i64 %i.bd, %i.bc
  br i1 %i.be, label %bb.e, label %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$5month17h171b6bbd4478e58eE.exit.i.i", !prof !12

bb.e:                                             ; preds = %.noexc19.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h4287b1aa71de9ab5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.bc, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc20.i unwind label %bb.o, !noalias !3659

.noexc20.i:                                       ; preds = %bb.e
  %.pre.i.i.i.i219.i.i = load i64, ptr %i.e, align 8, !alias.scope !3683, !noalias !3682
  %.pre = load i64, ptr %i.c, align 8, !range !21, !alias.scope !3684, !noalias !3685
  br label %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$5month17h171b6bbd4478e58eE.exit.i.i"

"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$5month17h171b6bbd4478e58eE.exit.i.i": ; preds = %.noexc19.i, %.noexc20.i
  %i.bf = phi i64 [ %i.bd, %.noexc19.i ], [ %.pre, %.noexc20.i ] ; 2 uses
  %i.bg = phi i64 [ %i.bc, %.noexc19.i ], [ %.pre.i.i.i.i219.i.i, %.noexc20.i ] ; 3 uses
  %i.bh = icmp sgt i64 %i.bg, -1
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = load ptr, ptr %i.d, align 8, !alias.scope !3683, !noalias !3682, !nonnull !6, !noundef !6 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bg
  store i8 32, ptr %i.bj, align 1, !noalias !3686
  %i.bk = add nuw i64 %i.bg, 1                    ; 4 uses
  store i64 %i.bk, ptr %i.e, align 8, !alias.scope !3683, !noalias !3682
  %i.bl = zext nneg i32 %i.ar to i64
  %i.bm = getelementptr [16 x i8], ptr @170, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 -16
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !3661, !nonnull !6, !align !8, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3688)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3689)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3690)
  %i.bp = sub i64 %i.bf, %i.bk
  %i.bq = icmp ult i64 %i.bp, 3
  br i1 %i.bq, label %bb.f, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h83de90d8eb337a42E.exit223.i.i", !prof !12

bb.f:                                             ; preds = %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$5month17h171b6bbd4478e58eE.exit.i.i"
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h4287b1aa71de9ab5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.bk, i64 noundef 3, i64 noundef 1, i64 noundef 1)
          to label %.noexc21.i unwind label %bb.o, !noalias !3659

.noexc21.i:                                       ; preds = %bb.f
  %.pre.i.i.i.i222.i.i = load i64, ptr %i.e, align 8, !alias.scope !3691, !noalias !3685
  %.pre3.i.i = load ptr, ptr %i.d, align 8, !alias.scope !3691, !noalias !3685
  %.pre4.i.i = load i64, ptr %i.c, align 8, !range !21, !alias.scope !3692, !noalias !3693
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h83de90d8eb337a42E.exit223.i.i"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h83de90d8eb337a42E.exit223.i.i": ; preds = %.noexc21.i, %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$5month17h171b6bbd4478e58eE.exit.i.i"
  %i.br = phi i64 [ %i.bf, %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$5month17h171b6bbd4478e58eE.exit.i.i" ], [ %.pre4.i.i, %.noexc21.i ] ; 2 uses
  %i.bs = phi ptr [ %i.bi, %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$5month17h171b6bbd4478e58eE.exit.i.i" ], [ %.pre3.i.i, %.noexc21.i ] ; 2 uses
  %i.bt = phi i64 [ %i.bk, %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$5month17h171b6bbd4478e58eE.exit.i.i" ], [ %.pre.i.i.i.i222.i.i, %.noexc21.i ] ; 3 uses
  %i.bu = icmp sgt i64 %i.bt, -1
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bt
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.bv, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.bo, i64 3, i1 false), !noalias !3694
  %i.bw = add nuw i64 %i.bt, 3                    ; 3 uses
  store i64 %i.bw, ptr %i.e, align 8, !alias.scope !3691, !noalias !3685
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3695)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3696)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3697)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3698)
  %i.bx = icmp eq i64 %i.br, %i.bw
  br i1 %i.bx, label %bb.g, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h83de90d8eb337a42E.exit225.i.i", !prof !12
end_hunk_6
begin_hunk_7_@"_ZN11liquid_core5model6scalar8datetime8strftime8strftime28_$u7b$$u7b$closure$u7d$$u7d$17hc8f54fc16d83d0f1E":bb.a
  %i.cx = load i64, ptr %i.cw, align 8, !alias.scope !4249, !noundef !6 ; 2 uses
  %i.cy = ptrtoint ptr %i.cu to i64
  %i.cz = sub i64 %i.cy, %i.bk
  %i.da = add i64 %i.cz, %i.cx
  store i64 %i.da, ptr %i.cw, align 8, !alias.scope !4249
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %"_ZN87_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h48457e68ea1e620eE.exit39.thread61"
  %.sroa.015.066 = phi i64 [ %i.cx, %"_ZN87_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h48457e68ea1e620eE.exit39.thread61" ], [ %i.bf, %bb.h ]
  %.sroa.718.065 = phi i32 [ %.sroa.4.0.i.ph.i34, %"_ZN87_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h48457e68ea1e620eE.exit39.thread61" ], [ %i.bg, %bb.h ]
  store i64 %.sroa.015.066, ptr %i.be, align 8
  %i.db = icmp eq i32 %.sroa.718.065, 122
  br i1 %i.db, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8, !nonnull !6, !align !8, !noundef !6
  store i8 1, ptr %i.dd, align 1
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.b, %bb.i, %bb.c, %bb.m, %bb.l, %bb.g, %bb.f, %bb.a
  %.sroa.0.2 = phi i1 [ true, %bb.a ], [ true, %bb.m ], [ true, %bb.g ], [ false, %bb.b ], [ false, %bb.f ], [ false, %bb.l ], [ false, %bb.h ], [ false, %bb.c ], [ false, %bb.i ]
  ret i1 %.sroa.0.2
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define noundef zeroext i1 @"_ZN11liquid_core5model6scalar94_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$alloc..string..String$GT$11query_state17hf4701fa50ba09386E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, i8 noundef range(i8 0, 4) %1) unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 3 uses
  switch i8 %1, label %default.unreachable [
    i8 0, label %"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$11query_state17h58de856de623a4a6E.exit"
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %i.b, 0
  br label %"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$11query_state17h58de856de623a4a6E.exit"

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %i.b, 0
  br label %"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$11query_state17h58de856de623a4a6E.exit"

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6
  %i.g = tail call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h03fe2cfe0c149ccaE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.f, i64 noundef %i.b), !noalias !4258
  %i.h = extractvalue { ptr, i64 } %i.g, 1
  %i.i = icmp eq i64 %i.h, 0
  br label %"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$11query_state17h58de856de623a4a6E.exit"

"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$11query_state17h58de856de623a4a6E.exit": ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.sroa.0.0.shrunk.i = phi i1 [ %i.i, %bb.d ], [ %i.c, %bb.b ], [ %i.d, %bb.c ], [ true, %bb.a ]
  ret i1 %.sroa.0.0.shrunk.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @"_ZN11liquid_core5model6scalar94_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$alloc..string..String$GT$6render17h56029a0af25b774fE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @226, ptr %i.b, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN11liquid_core5model6scalar94_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$alloc..string..String$GT$6source17hf6b5a5d1e09f5778E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !4261
  %i.e = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !4261 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #57, !noalias !4261
  unreachable

_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit: ; preds = %bb.a
  store ptr %i.b, ptr %i.e, align 8, !noalias !4261
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @97, ptr %i.i, align 8
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN11liquid_core5model6scalar94_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$alloc..string..String$GT$7to_kstr17h7a7f65ce07991236E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN11liquid_core5model6scalar94_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$alloc..string..String$GT$8as_debug17hd3d6a529c70656cbE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @227, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN11liquid_core5model6scalar94_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$alloc..string..String$GT$8to_value17hc5d4f6b1bc395255E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [15 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !6 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4276)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = icmp ult i64 %i.e, 16
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.e, 0
  br i1 %i.g, label %bb.c, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i", !prof !14

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i": ; preds = %bb.b
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !4277
  %i.h = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !4277 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i.i"

bb.c:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i", %bb.b
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i" ], [ 0, %bb.b ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #57, !noalias !4278
  unreachable

"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i"
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %i.c, i64 %i.e, i1 false), !noalias !4279
  br label %"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$8to_value17hbda766516d1184a4E.exit"

bb.d:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.a, i8 0, i64 15, i1 false), !noalias !4280
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 1 %i.c, i64 %i.e, i1 false), !noalias !4279
  %.0..0..0..0..0..sroa.0.1.copyload.i = load i56, ptr %i.a, align 8, !noalias !4281
  %.sroa.0.1.insert.ext.i = zext i56 %.0..0..0..0..0..sroa.0.1.copyload.i to i64
  %.sroa.0.1.insert.shift.i = shl nuw i64 %.sroa.0.1.insert.ext.i, 8
  %.sroa.0.1.insert.insert.i = or disjoint i64 %.sroa.0.1.insert.shift.i, %i.e
  %i.j = inttoptr i64 %.sroa.0.1.insert.insert.i to ptr
  %.7..7..7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %.7..7..7..7..7..sroa.6.1.copyload.i = load i64, ptr %.7..7..7..7..7..sroa_idx, align 1, !noalias !4281
  br label %"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$8to_value17hbda766516d1184a4E.exit"

"_ZN11liquid_core5model6scalar80_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$$RF$str$GT$8to_value17hbda766516d1184a4E.exit": ; preds = %"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i.i", %bb.d
  %.sroa.0.0.i = phi ptr [ %i.j, %bb.d ], [ %i.h, %"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i.i" ]
  %.sroa.6.0.i = phi i64 [ %.7..7..7..7..7..sroa.6.1.copyload.i, %bb.d ], [ %i.e, %"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i.i" ]
  %.sink.i.i = phi i8 [ 1, %bb.d ], [ -1, %"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.k, align 8, !alias.scope !4276, !noalias !4282
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.0.0.i, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !4276, !noalias !4282
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.6.0.i, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !4276, !noalias !4282
  %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 39
  store i8 %.sink.i.i, ptr %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx.i, align 1, !alias.scope !4276, !noalias !4282
  store i8 0, ptr %0, align 8, !alias.scope !4276, !noalias !4282
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZN11liquid_core5model6scalar94_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$alloc..string..String$GT$9as_scalar17h095e0049176a3b20E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  store i64 0, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %.sroa.511.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @"_ZN11liquid_core5model6scalar94_$LT$impl$u20$liquid_core..model..value..view..ValueView$u20$for$u20$alloc..string..String$GT$9type_name17h5787f1df9bee6d47E"(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @99, i64 6 }
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11liquid_core5model6scalar9ScalarCow10into_owned17h3e6c58a38f652d16E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [15 x i8], align 8                ; 6 uses
  %i.b = load i64, ptr %1, align 8, !range !7, !noundef !6 ; 3 uses
  %i.c = add nsw i64 %i.b, -2
  %i.d = icmp samesign ugt i64 %i.b, 1
  %i.e = select i1 %i.d, i64 %i.c, i64 5
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 4 uses
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.46.0.copyload = load i64, ptr %.sroa.46.0..sroa_idx, align 8 ; 9 uses
  %i.f = trunc nuw i64 %i.b to i1
  br i1 %i.f, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.o, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  ret void

bb.j:                                             ; preds = %bb.h
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.o

bb.k:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = icmp ult i64 %.sroa.46.0.copyload, 16
  br i1 %i.g, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.h = icmp slt i64 %.sroa.46.0.copyload, 0
  br i1 %i.h, label %bb.m, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i", !prof !14

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i": ; preds = %bb.l
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !4294
  %i.i = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.sroa.46.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !4294 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.m, label %"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i"

bb.m:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i", %bb.l
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i" ], [ 0, %bb.l ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %.sroa.46.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #57, !noalias !4295
  unreachable

"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i"
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull readonly align 1 %.sroa.2.0.copyload, i64 %.sroa.46.0.copyload, i1 false), !noalias !4296
  br label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$8from_ref17hb9e172d4de6626d0E.exit"

bb.n:                                             ; preds = %bb.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.a, i8 0, i64 15, i1 false), !noalias !4297
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 1 %.sroa.2.0.copyload, i64 %.sroa.46.0.copyload, i1 false), !noalias !4296
  %.0..0..0..sroa.0.1.copyload = load i56, ptr %i.a, align 8, !noalias !4298
  %.sroa.0.1.insert.ext = zext i56 %.0..0..0..sroa.0.1.copyload to i64
  %.sroa.0.1.insert.shift = shl nuw i64 %.sroa.0.1.insert.ext, 8
  %.sroa.0.1.insert.insert = or disjoint i64 %.sroa.0.1.insert.shift, %.sroa.46.0.copyload
  %i.k = inttoptr i64 %.sroa.0.1.insert.insert to ptr
  %.7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %.7..7..7..sroa.6.1.copyload = load i64, ptr %.7..7..7..sroa_idx, align 1, !noalias !4298
  br label %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$8from_ref17hb9e172d4de6626d0E.exit"

"_ZN7kstring6string5inner21KStringInner$LT$B$GT$8from_ref17hb9e172d4de6626d0E.exit": ; preds = %"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i", %bb.n
  %.sroa.0.0 = phi ptr [ %i.k, %bb.n ], [ %i.i, %"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i" ]
  %.sroa.6.015 = phi i64 [ %.7..7..7..sroa.6.1.copyload, %bb.n ], [ %.sroa.46.0.copyload, %"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i" ]
  %.sink.i = phi i64 [ 72057594037927936, %bb.n ], [ -72057594037927936, %"_ZN74_$LT$alloc..boxed..Box$LT$str$GT$$u20$as$u20$kstring..backend..HeapStr$GT$8from_str17h3f66e8c4a32626a8E.exit.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

bb.o:                                             ; preds = %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$8from_ref17hb9e172d4de6626d0E.exit", %bb.j
  %.sroa.010.0 = phi ptr [ %.sroa.2.0.copyload, %bb.j ], [ %.sroa.0.0, %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$8from_ref17hb9e172d4de6626d0E.exit" ]
  %.sroa.512.0 = phi i64 [ %.sroa.46.0.copyload, %bb.j ], [ %.sroa.6.015, %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$8from_ref17hb9e172d4de6626d0E.exit" ]
  %.sroa.6.0 = phi i64 [ %.sroa.5.0.copyload, %bb.j ], [ %.sink.i, %"_ZN7kstring6string5inner21KStringInner$LT$B$GT$8from_ref17hb9e172d4de6626d0E.exit" ]
  store i64 1, ptr %0, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.010.0, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.44.sroa.4.0..sroa.44.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.512.0, ptr %.sroa.44.sroa.4.0..sroa.44.0..sroa_idx.sroa_idx, align 8
  %.sroa.44.sroa.5.0..sroa.44.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.6.0, ptr %.sroa.44.sroa.5.0..sroa.44.0..sroa_idx.sroa_idx, align 8
  br label %bb.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { i64, i64 } @_ZN11liquid_core5model6scalar9ScalarCow10to_integer17h822563f805932902E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #22 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !noundef !6 ; 3 uses
  %i.b = add nsw i64 %i.a, -2
  %i.c = icmp samesign ugt i64 %i.a, 1
  %i.d = select i1 %i.c, i64 %i.b, i64 5
  switch i64 %i.d, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit" [
    i64 0, label %bb.b
    i64 5, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !6
  br label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit"

bb.c:                                             ; preds = %bb.a
  %i.g = trunc nuw i64 %i.a to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 31
  %i.j = load i8, ptr %i.i, align 1, !alias.scope !4304, !noundef !6
  switch i8 %i.j, label %bb.h [
    i8 0, label %bb.f
    i8 -1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.h, align 8, !alias.scope !4304, !nonnull !6, !align !8, !noundef !6
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !4304, !noundef !6
  br label %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_str17h64eb274898ee9790E.exit"

bb.f:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.h, align 8, !alias.scope !4304, !nonnull !6, !align !8, !noundef !6
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !4304, !noundef !6
  br label %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_str17h64eb274898ee9790E.exit"

bb.g:                                             ; preds = %bb.d
  %.val.i = load ptr, ptr %i.h, align 8, !alias.scope !4304, !nonnull !6, !align !8, !noundef !6
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i = load i64, ptr %i.q, align 8, !alias.scope !4304, !noundef !6
  br label %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_str17h64eb274898ee9790E.exit"

bb.h:                                             ; preds = %bb.d
  %i.r = load i8, ptr %i.h, align 8, !alias.scope !4304, !noundef !6
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 9
  br label %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_str17h64eb274898ee9790E.exit"

"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_str17h64eb274898ee9790E.exit": ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %.sroa.5.0.i = phi i64 [ %i.m, %bb.e ], [ %i.s, %bb.h ], [ %i.p, %bb.f ], [ %.val2.i, %bb.g ] ; 9 uses
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.e ], [ %i.t, %bb.h ], [ %i.n, %bb.f ], [ %.val.i, %bb.g ] ; 6 uses
  switch i64 %.sroa.5.0.i, label %thread-pre-split.i [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit"
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_str17h64eb274898ee9790E.exit"
  %i.u = load i8, ptr %.sroa.0.0.i, align 1, !alias.scope !4305, !noalias !4306, !noundef !6 ; 2 uses
  switch i8 %i.u, label %bb.j [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE.exit"
  ]

thread-pre-split.i:                               ; preds = %"_ZN7kstring10string_cow24KStringCowInner$LT$B$GT$6as_str17h64eb274898ee9790E.exit"
  %.pr.i = load i8, ptr %.sroa.0.0.i, align 1, !alias.scope !4305, !noalias !4306
  br label %bb.j

bb.j:                                             ; preds = %thread-pre-split.i, %bb.i
  %i.v = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.u, %bb.i ]
  switch i8 %i.v, label %bb.q [
    i8 43, label %bb.k
    i8 45, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1 ; 2 uses
end_hunk_7
begin_hunk_8_@"_ZN69_$LT$liquid_core..model..find..Path$u20$as$u20$core..fmt..Display$GT$3fmt17he5c39a6bb341e780E":bb.a
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.cl, i64 noundef range(i64 1, -9223372036854775807) %i.cn) #59, !noalias !15857
  br label %.body.i.i

.body.i.i.i.i.i:                                  ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i", %bb.z
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !15854
  unreachable

"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h718f57815896dc77E.exit.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i", %bb.ae, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h77ef5d1c15c6010fE.exit.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !15837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !15831
  %i.cq = icmp eq ptr %i.ap, %i.r
  br i1 %i.cq, label %"_ZN79_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..IteratorRefSpec$GT$9spec_fold17h7f99481a0ef1a056E.exit.i.i", label %bb.n

"_ZN79_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..IteratorRefSpec$GT$9spec_fold17h7f99481a0ef1a056E.exit.i.i": ; preds = %"_ZN4core4iter8adapters3map12map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h718f57815896dc77E.exit.i.i.i.i.i", %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h77ef5d1c15c6010fE.exit.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !15820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !15812
  call void @llvm.experimental.noalias.scope.decl(metadata !15858)
  %i.cr = load i64, ptr %i.j, align 8, !range !18, !alias.scope !15858, !noalias !15812, !noundef !6
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %bb.ag, label %"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit.i.i"

bb.ag:                                            ; preds = %"_ZN79_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..IteratorRefSpec$GT$9spec_fold17h7f99481a0ef1a056E.exit.i.i"
  %i.ct = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val.i.i.i = load ptr, ptr %i.ct, align 8, !alias.scope !15858, !noalias !15812 ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.val1.i.i.i = load ptr, ptr %i.cu, align 8, !alias.scope !15858, !noalias !15812, !nonnull !6, !align !9, !noundef !6 ; 5 uses
  %i.cv = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !6, !noalias !15859 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  invoke void %i.cv(ptr noundef nonnull %.val.i.i.i)
          to label %bb.ai unwind label %bb.aj, !noalias !15859

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.cw = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !range !21, !invariant.load !6, !noalias !15859 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !range !31, !invariant.load !6, !noalias !15859 ; 2 uses
  %i.da = icmp ult i64 %i.cz, -9223372036854775807
  call void @llvm.assume(i1 %i.da)
  %i.db = icmp eq i64 %i.cx, 0
  br i1 %i.db, label %"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i": ; preds = %bb.ai
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.cx, i64 noundef range(i64 1, -9223372036854775807) %i.cz) #59, !noalias !15859
  br label %"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit.i.i"

bb.aj:                                            ; preds = %bb.ah
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !range !21, !invariant.load !6, !noalias !15859 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !range !31, !invariant.load !6, !noalias !15859 ; 2 uses
  %i.dh = icmp ult i64 %i.dg, -9223372036854775807
  call void @llvm.assume(i1 %i.dh)
  %i.di = icmp eq i64 %i.de, 0
  br i1 %i.di, label %common.resume, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i": ; preds = %bb.aj
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.de, i64 noundef range(i64 1, -9223372036854775807) %i.dg) #59, !noalias !15859
  br label %common.resume

common.resume:                                    ; preds = %bb.am, %bb.an, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h215b66a6f537a8d1E.exit.i.i", %bb.aj, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i"
  %common.resume.op = phi { ptr, i32 } [ %.pn.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h215b66a6f537a8d1E.exit.i.i" ], [ %i.dc, %bb.aj ], [ %i.dc, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i" ], [ %i.dm, %bb.an ], [ %i.dm, %bb.am ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i", %bb.ai, %"_ZN79_$LT$$RF$mut$u20$I$u20$as$u20$core..iter..traits..iterator..IteratorRefSpec$GT$9spec_fold17h7f99481a0ef1a056E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !15812
  br label %bb.al

bb.ak:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h215b66a6f537a8d1E.exit.i.i"
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !15812
  unreachable

bb.al:                                            ; preds = %"_ZN4core3ptr67drop_in_place$LT$liquid_core..model..value..display..DisplayCow$GT$17h9b1b68e7fab9010eE.exit.i.i", %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h19777d8f013c474eE.exit.thread.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !15812
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.m, ptr %i.l, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.42.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load ptr, ptr %i.dk, align 8, !nonnull !6, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15860
  store ptr @34, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.l, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.dl = invoke noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val5, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
          to label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15861)
  call void @llvm.experimental.noalias.scope.decl(metadata !15862)
  %.val.i.i = load i64, ptr %i.m, align 8, !range !21, !alias.scope !15863, !noundef !6 ; 2 uses
  %i.dn = icmp eq i64 %.val.i.i, 0
  br i1 %i.dn, label %common.resume, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.do = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val1.i.i = load ptr, ptr %i.do, align 8, !alias.scope !15863, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !15863
  br label %common.resume

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15860
  call void @llvm.experimental.noalias.scope.decl(metadata !15864)
  call void @llvm.experimental.noalias.scope.decl(metadata !15865)
  %.val.i.i7 = load i64, ptr %i.m, align 8, !range !21, !alias.scope !15866, !noundef !6 ; 2 uses
  %i.dp = icmp eq i64 %.val.i.i7, 0
  br i1 %i.dp, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h215b66a6f537a8d1E.exit9", label %bb.ao

bb.ao:                                            ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val1.i.i8 = load ptr, ptr %i.dq, align 8, !alias.scope !15866, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i8, i64 noundef %.val.i.i7, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !15866
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h215b66a6f537a8d1E.exit9"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h215b66a6f537a8d1E.exit9": ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret i1 %i.dl
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6memchr4arch6x86_644avx210packedpair6Finder14with_pair_impl17hfcaec3e4ccbae54bE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 32 captures(none) dereferenceable(160) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef range(i64 2, 0) %2, i8 noundef %3, i8 noundef %4) unnamed_addr #37 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15870)
  %i.a = zext i8 %3 to i64                        ; 3 uses
  %i.b = icmp ugt i64 %2, %i.a
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = zext i8 %4 to i64                        ; 3 uses
  %i.d = icmp ugt i64 %2, %i.c
  br i1 %i.d, label %"_ZN6memchr4arch7generic10packedpair15Finder$LT$V$GT$3new17h1684bcd02900a692E.exit", label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.a, i64 noundef range(i64 2, 0) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @639) #57, !noalias !15871
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.c, i64 noundef range(i64 2, 0) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @640) #57, !noalias !15871
  unreachable

"_ZN6memchr4arch7generic10packedpair15Finder$LT$V$GT$3new17h1684bcd02900a692E.exit": ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.a
  %i.f = load i8, ptr %i.e, align 1, !alias.scope !15870, !noalias !15872, !noundef !6 ; 2 uses
  %.sroa.0.0.vec.insert.i = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %.sroa.0.15.vec.insert.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %.sroa.0.0.i = tail call noundef i8 @llvm.umax.i8(i8 %4, i8 %3)
  %i.g = zext i8 %.sroa.0.0.i to i64              ; 2 uses
  %i.h = add nuw nsw i64 %i.g, 16
  %.sroa.0.0.i1 = tail call noundef i64 @llvm.umax.i64(i64 %i.h, i64 range(i64 2, 0) %2)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  %i.j = load i8, ptr %i.i, align 1, !alias.scope !15870, !noalias !15872, !noundef !6 ; 2 uses
  %.sroa.0.0.vec.insert.i2 = insertelement <16 x i8> poison, i8 %i.j, i64 0
  %.sroa.0.15.vec.insert.i3 = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i2, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.k = add nuw nsw i64 %i.g, 32
  %.sroa.0.0.i5 = tail call noundef i64 @llvm.umax.i64(i64 %i.k, i64 range(i64 2, 0) %2)
  %.sroa.0.0.vec.insert.i6 = insertelement <32 x i8> poison, i8 %i.f, i64 0
  %.sroa.0.31.vec.insert.i = shufflevector <32 x i8> %.sroa.0.0.vec.insert.i6, <32 x i8> poison, <32 x i32> zeroinitializer
  %.sroa.0.0.vec.insert.i7 = insertelement <32 x i8> poison, i8 %i.j, i64 0
  %.sroa.0.31.vec.insert.i8 = shufflevector <32 x i8> %.sroa.0.0.vec.insert.i7, <32 x i8> poison, <32 x i32> zeroinitializer
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <16 x i8> %.sroa.0.15.vec.insert.i, ptr %i.l, align 32
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <16 x i8> %.sroa.0.15.vec.insert.i3, ptr %.sroa.2.0..sroa_idx, align 16
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %.sroa.0.0.i1, ptr %.sroa.3.0..sroa_idx, align 32
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 %3, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 137
  store i8 %4, ptr %.sroa.5.0..sroa_idx, align 1
  store <32 x i8> %.sroa.0.31.vec.insert.i, ptr %0, align 32
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <32 x i8> %.sroa.0.31.vec.insert.i8, ptr %.sroa.210.0..sroa_idx, align 32
  %.sroa.311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.0.0.i5, ptr %.sroa.311.0..sroa_idx, align 32
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %3, ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 %4, ptr %.sroa.513.0..sroa_idx, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { i64, i64 } @_ZN6memchr6memmem8searcher19searcher_kind_empty17h64c0d86f4e03da41E(ptr noalias readonly align 32 captures(none) %0, ptr noalias nofree readnone align 4 captures(none) %1, ptr noalias nonnull readonly align 1 captures(none) %2, i64 %3, ptr noalias nonnull readonly align 1 captures(none) %4, i64 %5) unnamed_addr #2 {
bb.a:
  ret { i64, i64 } { i64 1, i64 0 }
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN70_$LT$core..num..error..TryFromIntError$u20$as$u20$core..fmt..Debug$GT$3fmt17h1b49c22632b5e673E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @644, i64 noundef 15, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @643)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN70_$LT$deranged..RangedI8$LT$_$C$_$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h1fad47e4e748964eE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #38 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !6    ; 3 uses
  store i8 %i.b, ptr %i.a, align 1
  %i.c = icmp sgt i8 %i.b, -60
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp slt i8 %i.b, 60
  tail call void @llvm.assume(i1 %i.d)
  %i.e = call noundef zeroext i1 @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$i8$GT$3fmt17he2687835eaec75b0E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN70_$LT$deranged..RangedI8$LT$_$C$_$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17he49457fd2be72a55E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #38 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !6    ; 3 uses
  store i8 %i.b, ptr %i.a, align 1
  %i.c = icmp sgt i8 %i.b, -26
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp slt i8 %i.b, 26
  tail call void @llvm.assume(i1 %i.d)
  %i.e = call noundef zeroext i1 @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$i8$GT$3fmt17he2687835eaec75b0E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN70_$LT$deranged..RangedU8$LT$_$C$_$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h576c7dd1b17ca98aE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #38 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !6    ; 2 uses
  store i8 %i.b, ptr %i.a, align 1
  %i.c = icmp ult i8 %i.b, 24
  tail call void @llvm.assume(i1 %i.c)
  %i.d = call noundef zeroext i1 @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h4106ba8e3ec0c355E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN70_$LT$deranged..RangedU8$LT$_$C$_$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h5d70e58e1174c89bE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #38 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !6    ; 2 uses
  store i8 %i.b, ptr %i.a, align 1
  %i.c = icmp ult i8 %i.b, 60
  tail call void @llvm.assume(i1 %i.c)
  %i.d = call noundef zeroext i1 @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h4106ba8e3ec0c355E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN70_$LT$kstring..string_ref..KStringRef$u20$as$u20$core..fmt..Display$GT$3fmt17h331ce073234c2a67E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = load ptr, ptr %.sroa.0.0.in, align 8, !nonnull !6, !align !8, !noundef !6
  %.sroa.5.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0 = load i64, ptr %.sroa.5.0.in, align 8, !noundef !6
  %i.a = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.5.0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17hb0ab35a9008f51e2E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #39 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6
  %i.c = add i64 %i.b, %2
  store i64 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !6 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 8, %i.e                          ; 3 uses
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.g, i64 %2) ; 3 uses
  %i.h = icmp ugt i64 %.sroa.0.0.i, 3
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.014.0.copyload.i = load i32, ptr %1, align 1, !alias.scope !15881
  %i.i = zext i32 %.sroa.014.0.copyload.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.011.0.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i11 = phi i64 [ 4, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %i.j = or disjoint i64 %.sroa.0.0.i11, 1
  %i.k = icmp ult i64 %i.j, %.sroa.0.0.i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 %.sroa.0.0.i11
  %.sroa.015.0.copyload.i = load i16, ptr %i.l, align 1, !alias.scope !15881
  %i.m = zext i16 %.sroa.015.0.copyload.i to i64
  %i.n = shl nuw nsw i64 %.sroa.0.0.i11, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %.sroa.011.0.i
  %i.q = or disjoint i64 %.sroa.0.0.i11, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.011.1.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.011.0.i, %bb.d ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.0.0.i11, %bb.d ] ; 3 uses
  %i.r = icmp ult i64 %.sroa.0.1.i, %.sroa.0.0.i
  br i1 %i.r, label %bb.g, label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !15881, !noundef !6
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.0.1.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.011.1.i
  br label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit

_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit: ; preds = %bb.f, %bb.g
  %.sroa.011.2.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.011.1.i, %bb.f ]
  %i.y = shl i64 %i.e, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.011.2.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !6
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = icmp ult i64 %2, %i.g
  br i1 %i.ae, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.a, %bb.i
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 4 uses
  %i.af = sub i64 %2, %.sroa.0.0                  ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, -8                       ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.0, %i.ah
  br i1 %i.ai, label %.lr.ph, label %bb.k

.lr.ph:                                           ; preds = %bb.h
  %.promoted = load i64, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted21 = load i64, ptr %i.aj, align 8
  %.promoted22 = load i64, ptr %i.ak, align 8, !alias.scope !15882
  %.promoted24 = load i64, ptr %i.al, align 8, !alias.scope !15882
  br label %bb.q

bb.i:                                             ; preds = %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !noundef !6
  %i.ao = xor i64 %i.an, %i.ad                    ; 3 uses
  %i.ap = load i64, ptr %0, align 8, !alias.scope !15883, !noundef !6
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !15883, !noundef !6 ; 3 uses
  %i.as = add i64 %i.ar, %i.ap                    ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !15883, !noundef !6
  %i.av = add i64 %i.au, %i.ao                    ; 2 uses
  %i.aw = tail call i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 13)
  %i.ax = xor i64 %i.aw, %i.as                    ; 3 uses
  %i.ay = tail call i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.az = xor i64 %i.av, %i.ay                    ; 3 uses
  %i.ba = tail call i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.bb = add i64 %i.av, %i.ax                    ; 3 uses
  %i.bc = add i64 %i.az, %i.ba                    ; 2 uses
  %i.bd = tail call i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 17)
  %i.be = xor i64 %i.bb, %i.bd
  store i64 %i.be, ptr %i.aq, align 8, !alias.scope !15883
  %i.bf = tail call i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 21)
  %i.bg = xor i64 %i.bf, %i.bc
  store i64 %i.bg, ptr %i.am, align 8, !alias.scope !15883
  %i.bh = tail call i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32)
  store i64 %i.bh, ptr %i.at, align 8, !alias.scope !15883
  %i.bi = xor i64 %i.bc, %i.ad
  store i64 %i.bi, ptr %0, align 8
  br label %bb.h
end_hunk_8
