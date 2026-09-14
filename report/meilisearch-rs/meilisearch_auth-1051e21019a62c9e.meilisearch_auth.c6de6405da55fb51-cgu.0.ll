Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch_auth-1051e21019a62c9e.meilisearch_auth.c6de6405da55fb51-cgu.0?download=true
inline.NumInlined: 2724
inline.NumDeleted: 1326
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN16meilisearch_auth10AuthFilter22get_index_search_rules17h11af61214be2396eE:bb.a
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !1042
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !1042
  invoke fastcc void @"_ZN73_$LT$indexmap..inner..Core$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17he05d9a1732a54618E"(ptr noalias noundef align 8 dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.841.0.i.i)
          to label %"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hbcf8f07f347bacdfE.exit.i.i" unwind label %bb.u, !noalias !1043, !inline_history !1010

bb.u:                                             ; preds = %bb.t
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr98drop_in_place$LT$indexmap..inner..Core$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h78d2e17fe867e085E"(ptr noalias noundef align 8 dereferenceable(56) %i.a) #51
          to label %bb.w unwind label %bb.v, !noalias !1044, !inline_history !1010

bb.v:                                             ; preds = %bb.u
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #52, !noalias !1044, !inline_history !1010
  unreachable

bb.w:                                             ; preds = %bb.u
  resume { ptr, i32 } %i.by

"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hbcf8f07f347bacdfE.exit.i.i": ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !1038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1042
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.841.0.i.i, i64 56
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.cb = load <2 x i64>, ptr %i.ca, align 8, !alias.scope !1045, !noalias !1046
  store <2 x i64> %i.cb, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !1038
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit.i"

"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit.i": ; preds = %"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hbcf8f07f347bacdfE.exit.i.i", %bb.s, %bb.r, %bb.q, %bb.p, %bb.o
  %.sroa.06.0.copyload.i = load i64, ptr %i.c, align 8, !noalias !1038
  br label %bb.x

bb.x:                                             ; preds = %bb.k, %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit.i"
  %.sroa.06.0.i = phi i64 [ %.sroa.06.0.copyload.i, %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit.i" ], [ %i.bo, %bb.k ]
  store i64 %.sroa.06.0.i, ptr %0, align 8, !alias.scope !1013, !noalias !1035
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.411.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %i.h, i64 64, i1 false), !noalias !1035
  br label %_ZN16meilisearch_auth11SearchRules22get_index_search_rules17hfa00f41a5373cf4cE.exit

_ZN16meilisearch_auth11SearchRules22get_index_search_rules17hfa00f41a5373cf4cE.exit: ; preds = %bb.i, %bb.j, %._crit_edge, %bb.l, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.y

bb.y:                                             ; preds = %_ZN16meilisearch_auth11SearchRules22get_index_search_rules17hfa00f41a5373cf4cE.exit, %_ZN16meilisearch_auth10AuthFilter19is_index_authorized17h654b87ac272ca9feE.exit.thread3
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_ZN16meilisearch_auth10AuthFilter27api_key_is_index_authorized17h0871f5a5f3c8e2a2E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZN16meilisearch_auth11SearchRules19is_index_authorized17h62ee72586ae31201E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_ZN16meilisearch_auth10AuthFilter29api_key_list_index_authorized17h4801d877ee22f797E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = load i64, ptr %1, align 8, !range !18, !noundef !8
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  %i.i = load ptr, ptr %i.g, align 8, !alias.scope !1205, !noalias !1206, !nonnull !8, !noundef !8 ; 4 uses
  %.val13.i.i = load <16 x i8>, ptr %i.i, align 16, !noalias !1207
  %i.j = load i64, ptr %i.h, align 8, !alias.scope !1205, !noalias !1206, !noundef !8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1212
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = icmp sgt <16 x i8> %.val13.i.i, splat (i8 -1)
  %i.m = bitcast <16 x i1> %i.l to i16            ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.not13.i.i.i.i.i.i.i.i = icmp eq i16 %i.m, 0
  br i1 %.not13.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i.i
  %i.o = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.n, %bb.c ] ; 2 uses
  %i.p = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.i, %bb.c ]
  %.val911.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.o, align 16, !noalias !1213
  %i.q = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -1536 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.q to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i

._crit_edge20.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.c
  %.sroa.5.0.i.i = phi ptr [ %i.n, %bb.c ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.sroa.08.0.copyload.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.r, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i = phi i16 [ %i.m, %bb.c ], [ %.cast.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.t = add i16 %.lcssa.i.i.i.i.i.i.i.i, -1
  %i.u = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.v = zext nneg i16 %i.u to i64
  %i.w = and i16 %i.t, %.lcssa.i.i.i.i.i.i.i.i
  %i.x = sub nsw i64 0, %i.v
  %i.y = getelementptr inbounds [96 x i8], ptr %.sroa.08.0.copyload.i.i.i.i, i64 %i.x ; 2 uses
  %i.z = add i64 %i.j, -1                         ; 2 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 -88
  %.val.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !noalias !1214, !nonnull !8, !noundef !8
  %i.ab = getelementptr i8, ptr %i.y, i64 -80
  %.val2.i.i.i.i.i = load i64, ptr %i.ab, align 8, !noalias !1214, !noundef !8 ; 8 uses
  %i.ac = icmp slt i64 %.val2.i.i.i.i.i, 0
  br i1 %i.ac, label %bb.e, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i, !prof !28

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge20.i.i.i.i.i.i.i.i
  %i.ad = icmp eq i64 %.val2.i.i.i.i.i, 0         ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.d

bb.d:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #49, !noalias !1215
  %i.ae = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val2.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #49, !noalias !1215 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d, %._crit_edge20.i.i.i.i.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.d ], [ 0, %._crit_edge20.i.i.i.i.i.i.i.i ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i, i64 %.val2.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @363) #50, !noalias !1216
  unreachable

bb.f:                                             ; preds = %bb.b
  store i64 0, ptr %i.d, align 8, !alias.scope !1217, !noalias !1218
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ag, align 8, !alias.scope !1217, !noalias !1218
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.ah, align 8, !alias.scope !1217, !noalias !1218
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h44dd57fd7fb90c09E.exit

bb.g:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ad, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !1219
  br label %common.resume

bb.i:                                             ; preds = %bb.d, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i ], [ %i.ae, %bb.d ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.val.i.i.i.i.i, i64 %.val2.i.i.i.i.i, i1 false), !noalias !1220
  %.sroa.0.0.i.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.j, i64 4) ; 3 uses
  %i.aj = mul i64 %.sroa.0.0.i.i.i.i.i, 24        ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %i.j, 384307168202282325
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.k, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !28

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.i
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #49, !noalias !1221
  %i.al = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.aj, i64 noundef range(i64 1, 9) 8) #49, !noalias !1221 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.j ], [ 0, %bb.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @183) #50
          to label %.noexc.i.i.i.i unwind label %bb.g, !noalias !1212

.noexc.i.i.i.i:                                   ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.al, %bb.j ] ; 5 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %bb.j ] ; 2 uses
  %i.an = icmp ule i64 %.sroa.0.0.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.an)
  store i64 %.val2.i.i.i.i.i, ptr %.sroa.10.0.i.i.i.i.i, align 8, !noalias !1212
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i, i64 8
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !1212
  %.sroa.57.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i, i64 16
  store i64 %.val2.i.i.i.i.i, ptr %.sroa.57.0..sroa_idx.i.i.i.i, align 8, !noalias !1212
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.c, align 8, !noalias !1212
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !1212
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !1212
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  %i.ao = icmp eq i64 %i.z, 0
  br i1 %i.ao, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h736345abcaa995b9E.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.l, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i.i.i.i.i"
  %i.ap = phi ptr [ %i.bm, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i.i, %bb.l ]
  %i.aq = phi i64 [ %i.bo, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i.i.i.i.i" ], [ 1, %bb.l ] ; 5 uses
  %.lcssa23.i.i.i.i.i.i = phi ptr [ %.lcssa22.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i.i.i.i.i" ], [ %.sroa.5.0.i.i, %bb.l ] ; 2 uses
  %i.ar = phi i16 [ %i.ba, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i.i.i.i.i" ], [ %i.w, %bb.l ] ; 2 uses
  %.val1419.i.i.i.i.i.i = phi i64 [ %i.bd, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i.i.i.i.i" ], [ %i.z, %bb.l ] ; 2 uses
  %.pre.i.i.i.i1718.i.i.i.i.i.i = phi ptr [ %.pre.i.i.i.i16.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i.i.i.i.i" ], [ %.sroa.08.0.copyload.i.i.i.i, %bb.l ] ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.as = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa23.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.at = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i1718.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %.val911.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.as, align 16, !noalias !1224
  %i.au = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -1536 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.au to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i.i.i

._crit_edge20.i.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.lcssa22.i.i.i.i.i.i = phi ptr [ %.lcssa23.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %.pre.i.i.i.i16.i.i.i.i.i.i = phi ptr [ %.pre.i.i.i.i1718.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.ar, %.lr.ph.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ax = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, -1
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.az = zext nneg i16 %i.ay to i64
  %i.ba = and i16 %i.ax, %.lcssa.i.i.i.i.i.i.i.i.i.i
  %i.bb = sub nsw i64 0, %i.az
  %i.bc = getelementptr inbounds [96 x i8], ptr %.pre.i.i.i.i16.i.i.i.i.i.i, i64 %i.bb ; 2 uses
  %i.bd = add i64 %.val1419.i.i.i.i.i.i, -1       ; 2 uses
  %i.be = getelementptr i8, ptr %i.bc, i64 -88
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.be, align 8, !noalias !1225, !nonnull !8, !noundef !8
  %i.bf = getelementptr i8, ptr %i.bc, i64 -80
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.bf, align 8, !noalias !1225, !noundef !8 ; 8 uses
  %i.bg = icmp slt i64 %.val2.i.i.i.i.i.i.i, 0
  br i1 %i.bg, label %bb.n, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i, !prof !28

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge20.i.i.i.i.i.i.i.i.i.i
  %i.bh = icmp eq i64 %.val2.i.i.i.i.i.i.i, 0     ; 2 uses
  br i1 %i.bh, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #49, !noalias !1226
  %i.bi = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val2.i.i.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #49, !noalias !1226 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %._crit_edge20.i.i.i.i.i.i.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.m ], [ 0, %._crit_edge20.i.i.i.i.i.i.i.i.i.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i, i64 %.val2.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @363) #50
          to label %.noexc5.i.i.i.i unwind label %bb.s, !noalias !1212

.noexc5.i.i.i.i:                                  ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bi, %bb.m ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.val.i.i.i.i.i.i.i, i64 %.val2.i.i.i.i.i.i.i, i1 false), !noalias !1227
  %2 = icmp samesign ult i64 %i.aq, 384307168202282326
  tail call void @llvm.assume(i1 %2)
  %i.bk = load i64, ptr %i.c, align 8, !range !9, !alias.scope !1228, !noalias !1229, !noundef !8
  %i.bl = icmp eq i64 %i.aq, %i.bk
  br i1 %i.bl, label %bb.r, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i_crit_edge.i.i.i.i", %bb.o
  %i.bm = phi ptr [ %.pre.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i_crit_edge.i.i.i.i" ], [ %i.ap, %bb.o ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.aq ; 3 uses
  store i64 %.val2.i.i.i.i.i.i.i, ptr %i.bn, align 8, !noalias !1230
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1230
  %.sroa.57.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 %.val2.i.i.i.i.i.i.i, ptr %.sroa.57.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1230
  %i.bo = add nuw nsw i64 %i.aq, 1                ; 2 uses
  store i64 %i.bo, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1228, !noalias !1229
  %i.bp = icmp eq i64 %i.bd, 0
  br i1 %i.bp, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h736345abcaa995b9E.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.r
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.bh, label %.body.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !1231
  br label %.body.i.i.i.i

bb.r:                                             ; preds = %bb.o
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0718d48692d43f33E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.aq, i64 noundef range(i64 1, 0) %.val1419.i.i.i.i.i.i, i64 noundef 8, i64 noundef 24)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i_crit_edge.i.i.i.i" unwind label %bb.p, !noalias !1229

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i_crit_edge.i.i.i.i": ; preds = %bb.r
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1228, !noalias !1229
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i.i.i.i.i"

bb.s:                                             ; preds = %bb.n
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.s, %bb.q, %bb.p
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.br, %bb.s ], [ %i.bq, %bb.q ], [ %i.bq, %bb.p ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  %.val.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1232, !noalias !1212, !nonnull !8, !noundef !8 ; 2 uses
  %.val1.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1232, !noalias !1212, !noundef !8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1233), !noalias !1234
  %i.bs = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.bs, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h94eb50b62405af86E.exit.i.i.i.i", label %.lr.ph.i.i.i1.i.i.i

.lr.ph.i.i.i1.i.i.i:                              ; preds = %.body.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd3bd526bdd6cea8bE.exit.i.i.i.i.i.i"
  %.sroa.0.010.i.i.i.i.i.i = phi i64 [ %i.bu, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd3bd526bdd6cea8bE.exit.i.i.i.i.i.i" ], [ 0, %.body.i.i.i.i ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i, i64 %.sroa.0.010.i.i.i.i.i.i ; 2 uses
  %i.bu = add nuw i64 %.sroa.0.010.i.i.i.i.i.i, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1235), !noalias !1234
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1236), !noalias !1234
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.bt, align 8, !range !9, !alias.scope !1237, !noalias !1238, !noundef !8 ; 2 uses
  %i.bv = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.bv, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd3bd526bdd6cea8bE.exit.i.i.i.i.i.i", label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i1.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.bw, align 8, !alias.scope !1237, !noalias !1238, !nonnull !8, !noundef !8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !1239
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd3bd526bdd6cea8bE.exit.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd3bd526bdd6cea8bE.exit.i.i.i.i.i.i": ; preds = %bb.t, %.lr.ph.i.i.i1.i.i.i
  %i.bx = icmp eq i64 %i.bu, %.val1.i.i.i.i
  br i1 %i.bx, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h94eb50b62405af86E.exit.i.i.i.i", label %.lr.ph.i.i.i1.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h94eb50b62405af86E.exit.i.i.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd3bd526bdd6cea8bE.exit.i.i.i.i.i.i", %.body.i.i.i.i
  %.val2.i.i.i.i = load i64, ptr %i.c, align 8, !range !9, !alias.scope !1232, !noalias !1212, !noundef !8 ; 2 uses
  %i.by = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.by, label %common.resume, label %bb.u

bb.u:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h94eb50b62405af86E.exit.i.i.i.i"
  %i.bz = mul nuw i64 %.val2.i.i.i.i, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.bz, i64 noundef range(i64 1, -9223372036854775807) 8) #49, !noalias !1238
  br label %common.resume

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h736345abcaa995b9E.exit.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i.i.i.i.i", %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1218
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h44dd57fd7fb90c09E.exit

common.resume:                                    ; preds = %bb.aa, %bb.ab, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h94eb50b62405af86E.exit.i.i.i.i57", %bb.ao, %bb.g, %bb.h, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h94eb50b62405af86E.exit.i.i.i.i", %bb.u, %bb.at
  %common.resume.op = phi { ptr, i32 } [ %i.ey, %bb.at ], [ %eh.lpad-body.i.i.i.i, %bb.u ], [ %i.ai, %bb.h ], [ %i.ai, %bb.g ], [ %eh.lpad-body.i.i.i.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h94eb50b62405af86E.exit.i.i.i.i" ], [ %i.da, %bb.ab ], [ %i.da, %bb.aa ], [ %eh.lpad-body.i.i.i.i49, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h94eb50b62405af86E.exit.i.i.i.i57" ], [ %eh.lpad-body.i.i.i.i49, %bb.ao ]
  resume { ptr, i32 } %common.resume.op

_ZN4core4iter6traits8iterator8Iterator7collect17h44dd57fd7fb90c09E.exit: ; preds = %bb.f, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h736345abcaa995b9E.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1212
  br label %bb.ap

bb.v:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1240)
  %i.ca = load ptr, ptr %i.g, align 8, !alias.scope !1240, !noalias !1241, !nonnull !8, !noundef !8 ; 4 uses
  %.val13.i.i2 = load <16 x i8>, ptr %i.ca, align 16, !noalias !1242
  %i.cb = load i64, ptr %i.h, align 8, !alias.scope !1240, !noalias !1241, !noundef !8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1246)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1247
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cd = icmp sgt <16 x i8> %.val13.i.i2, splat (i8 -1)
  %i.ce = bitcast <16 x i1> %i.cd to i16          ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 2 uses
  %.not13.i.i.i.i.i.i.i.i14 = icmp eq i16 %i.ce, 0
  br i1 %.not13.i.i.i.i.i.i.i.i14, label %.lr.ph.i.i.i.i.i.i.i.i72, label %._crit_edge20.i.i.i.i.i.i.i.i15

.lr.ph.i.i.i.i.i.i.i.i72:                         ; preds = %bb.w, %.lr.ph.i.i.i.i.i.i.i.i72
  %i.cg = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i.i.i.i72 ], [ %i.cf, %bb.w ] ; 2 uses
  %i.ch = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i.i.i.i72 ], [ %i.ca, %bb.w ]
  %.val911.i.i.i.i.i.i.i.i73 = load <16 x i8>, ptr %i.cg, align 16, !noalias !1248
  %i.ci = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i.i73, splat (i8 -1)
  %i.cj = getelementptr inbounds i8, ptr %i.ch, i64 -384 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i74 = bitcast <16 x i1> %i.ci to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i75 = icmp eq i16 %.cast.i.i.i.i.i.i.i.i74, 0
  br i1 %.not.i.i.i.i.i.i.i.i75, label %.lr.ph.i.i.i.i.i.i.i.i72, label %._crit_edge20.i.i.i.i.i.i.i.i15

._crit_edge20.i.i.i.i.i.i.i.i15:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i72, %bb.w
  %.sroa.5.0.i.i16 = phi ptr [ %i.cf, %bb.w ], [ %i.ck, %.lr.ph.i.i.i.i.i.i.i.i72 ]
  %.sroa.08.0.copyload.i.i.i.i17 = phi ptr [ %i.ca, %bb.w ], [ %i.cj, %.lr.ph.i.i.i.i.i.i.i.i72 ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i18 = phi i16 [ %i.ce, %bb.w ], [ %.cast.i.i.i.i.i.i.i.i74, %.lr.ph.i.i.i.i.i.i.i.i72 ] ; 3 uses
  %i.cl = add i16 %.lcssa.i.i.i.i.i.i.i.i18, -1
  %i.cm = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i18, i1 true)
  %i.cn = zext nneg i16 %i.cm to i64
  %i.co = and i16 %i.cl, %.lcssa.i.i.i.i.i.i.i.i18
  %i.cp = sub nsw i64 0, %i.cn
  %i.cq = getelementptr inbounds [24 x i8], ptr %.sroa.08.0.copyload.i.i.i.i17, i64 %i.cp ; 2 uses
  %i.cr = add i64 %i.cb, -1                       ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cq, i64 -16
  %.val.i.i.i.i.i19 = load ptr, ptr %i.cs, align 8, !noalias !1249, !nonnull !8, !noundef !8
  %i.ct = getelementptr i8, ptr %i.cq, i64 -8
  %.val2.i.i.i.i.i20 = load i64, ptr %i.ct, align 8, !noalias !1249, !noundef !8 ; 8 uses
  %i.cu = icmp slt i64 %.val2.i.i.i.i.i20, 0
  br i1 %i.cu, label %bb.y, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i21, !prof !28

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i21: ; preds = %._crit_edge20.i.i.i.i.i.i.i.i15
  %i.cv = icmp eq i64 %.val2.i.i.i.i.i20, 0       ; 2 uses
  br i1 %i.cv, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i21
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #49, !noalias !1250
  %i.cw = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val2.i.i.i.i.i20, i64 noundef range(i64 1, 9) 1) #49, !noalias !1250 ; 2 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x, %._crit_edge20.i.i.i.i.i.i.i.i15
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i71 = phi i64 [ 1, %bb.x ], [ 0, %._crit_edge20.i.i.i.i.i.i.i.i15 ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i71, i64 %.val2.i.i.i.i.i20, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @363) #50, !noalias !1251
  unreachable

bb.z:                                             ; preds = %bb.v
  store i64 0, ptr %i.d, align 8, !alias.scope !1252, !noalias !1253
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cy, align 8, !alias.scope !1252, !noalias !1253
  %i.cz = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.cz, align 8, !alias.scope !1252, !noalias !1253
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h0f54a7cca3081137E.exit

bb.aa:                                            ; preds = %bb.ae
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.cv, label %common.resume, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i.i.i22, i64 noundef %.val2.i.i.i.i.i20, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !1254
  br label %common.resume

bb.ac:                                            ; preds = %bb.x, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i21
  %.sroa.10.0.i.i.i.i.i.i.i.i22 = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i21 ], [ %i.cw, %bb.x ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i.i.i.i22, ptr nonnull readonly align 1 %.val.i.i.i.i.i19, i64 %.val2.i.i.i.i.i20, i1 false), !noalias !1255
  %.sroa.0.0.i.i.i.i.i23 = tail call noundef i64 @llvm.umax.i64(i64 %i.cb, i64 4) ; 3 uses
  %i.db = mul i64 %.sroa.0.0.i.i.i.i.i23, 24      ; 3 uses
  %or.cond.i.i.i.i.i.i.i24 = icmp ugt i64 %i.cb, 384307168202282325
  br i1 %or.cond.i.i.i.i.i.i.i24, label %bb.ae, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i25, !prof !28

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i25: ; preds = %bb.ac
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i25
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #49, !noalias !1256
  %i.dd = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.db, i64 noundef range(i64 1, 9) 8) #49, !noalias !1256 ; 2 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.sroa.4.0.ph.i.i.i.i.i69 = phi i64 [ 8, %bb.ad ], [ 0, %bb.ac ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i69, i64 %i.db, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @183) #50
          to label %.noexc.i.i.i.i70 unwind label %bb.aa, !noalias !1247

.noexc.i.i.i.i70:                                 ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ad, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i25
  %.sroa.10.0.i.i.i.i.i26 = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i25 ], [ %i.dd, %bb.ad ] ; 5 uses
  %.sroa.4.0.i.i.i.i.i27 = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i25 ], [ %.sroa.0.0.i.i.i.i.i23, %bb.ad ] ; 2 uses
  %i.df = icmp ule i64 %.sroa.0.0.i.i.i.i.i23, %.sroa.4.0.i.i.i.i.i27
  tail call void @llvm.assume(i1 %i.df)
  store i64 %.val2.i.i.i.i.i20, ptr %.sroa.10.0.i.i.i.i.i26, align 8, !noalias !1247
  %.sroa.46.0..sroa_idx.i.i.i.i28 = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i26, i64 8
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i22, ptr %.sroa.46.0..sroa_idx.i.i.i.i28, align 8, !noalias !1247
  %.sroa.57.0..sroa_idx.i.i.i.i29 = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i26, i64 16
  store i64 %.val2.i.i.i.i.i20, ptr %.sroa.57.0..sroa_idx.i.i.i.i29, align 8, !noalias !1247
  store i64 %.sroa.4.0.i.i.i.i.i27, ptr %i.b, align 8, !noalias !1247
  %.sroa.4.0..sroa_idx.i.i.i.i30 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i.i.i.i26, ptr %.sroa.4.0..sroa_idx.i.i.i.i30, align 8, !noalias !1247
  %.sroa.6.0..sroa_idx.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i31, align 8, !noalias !1247
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1258)
  %i.dg = icmp eq i64 %i.cr, 0
  br i1 %i.dg, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h1563be17559c5dabE.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i32

.lr.ph.i.i.i.i.i.i32:                             ; preds = %bb.af, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i.i.i.i.i45"
  %i.dh = phi ptr [ %i.ee, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i.i.i.i.i45" ], [ %.sroa.10.0.i.i.i.i.i26, %bb.af ]
  %i.di = phi i64 [ %i.eg, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i.i.i.i.i45" ], [ 1, %bb.af ] ; 5 uses
  %.lcssa23.i.i.i.i.i.i33 = phi ptr [ %.lcssa22.i.i.i.i.i.i38, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i.i.i.i.i45" ], [ %.sroa.5.0.i.i16, %bb.af ] ; 2 uses
  %i.dj = phi i16 [ %i.ds, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i.i.i.i.i45" ], [ %i.co, %bb.af ] ; 2 uses
  %.val1419.i.i.i.i.i.i34 = phi i64 [ %i.dv, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i.i.i.i.i45" ], [ %i.cr, %bb.af ] ; 2 uses
  %.pre.i.i.i.i1718.i.i.i.i.i.i35 = phi ptr [ %.pre.i.i.i.i16.i.i.i.i.i.i39, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i.i.i.i.i45" ], [ %.sroa.08.0.copyload.i.i.i.i17, %bb.af ] ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i.i36 = icmp eq i16 %i.dj, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i.i.i.i65, label %._crit_edge20.i.i.i.i.i.i.i.i.i.i37

.lr.ph.i.i.i.i.i.i.i.i.i.i65:                     ; preds = %.lr.ph.i.i.i.i.i.i32, %.lr.ph.i.i.i.i.i.i.i.i.i.i65
  %i.dk = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i.i.i.i.i.i65 ], [ %.lcssa23.i.i.i.i.i.i33, %.lr.ph.i.i.i.i.i.i32 ] ; 2 uses
  %i.dl = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i.i.i.i.i.i65 ], [ %.pre.i.i.i.i1718.i.i.i.i.i.i35, %.lr.ph.i.i.i.i.i.i32 ]
  %.val911.i.i.i.i.i.i.i.i.i.i66 = load <16 x i8>, ptr %i.dk, align 16, !noalias !1259
  %i.dm = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i.i.i.i66, splat (i8 -1)
  %i.dn = getelementptr inbounds i8, ptr %i.dl, i64 -384 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i67 = bitcast <16 x i1> %i.dm to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i68 = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i67, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i68, label %.lr.ph.i.i.i.i.i.i.i.i.i.i65, label %._crit_edge20.i.i.i.i.i.i.i.i.i.i37

._crit_edge20.i.i.i.i.i.i.i.i.i.i37:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i65, %.lr.ph.i.i.i.i.i.i32
  %.lcssa22.i.i.i.i.i.i38 = phi ptr [ %.lcssa23.i.i.i.i.i.i33, %.lr.ph.i.i.i.i.i.i32 ], [ %i.do, %.lr.ph.i.i.i.i.i.i.i.i.i.i65 ]
  %.pre.i.i.i.i16.i.i.i.i.i.i39 = phi ptr [ %.pre.i.i.i.i1718.i.i.i.i.i.i35, %.lr.ph.i.i.i.i.i.i32 ], [ %i.dn, %.lr.ph.i.i.i.i.i.i.i.i.i.i65 ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i40 = phi i16 [ %i.dj, %.lr.ph.i.i.i.i.i.i32 ], [ %.cast.i.i.i.i.i.i.i.i.i.i67, %.lr.ph.i.i.i.i.i.i.i.i.i.i65 ] ; 3 uses
  %i.dp = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i40, -1
  %i.dq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i40, i1 true)
  %i.dr = zext nneg i16 %i.dq to i64
  %i.ds = and i16 %i.dp, %.lcssa.i.i.i.i.i.i.i.i.i.i40
  %i.dt = sub nsw i64 0, %i.dr
  %i.du = getelementptr inbounds [24 x i8], ptr %.pre.i.i.i.i16.i.i.i.i.i.i39, i64 %i.dt ; 2 uses
  %i.dv = add i64 %.val1419.i.i.i.i.i.i34, -1     ; 2 uses
  %i.dw = getelementptr i8, ptr %i.du, i64 -16
  %.val.i.i.i.i.i.i.i41 = load ptr, ptr %i.dw, align 8, !noalias !1260, !nonnull !8, !noundef !8
  %i.dx = getelementptr i8, ptr %i.du, i64 -8
  %.val2.i.i.i.i.i.i.i42 = load i64, ptr %i.dx, align 8, !noalias !1260, !noundef !8 ; 8 uses
  %i.dy = icmp slt i64 %.val2.i.i.i.i.i.i.i42, 0
  br i1 %i.dy, label %bb.ah, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i43, !prof !28

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i43: ; preds = %._crit_edge20.i.i.i.i.i.i.i.i.i.i37
  %i.dz = icmp eq i64 %.val2.i.i.i.i.i.i.i42, 0   ; 2 uses
  br i1 %i.dz, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i43
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #49, !noalias !1261
  %i.ea = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val2.i.i.i.i.i.i.i42, i64 noundef range(i64 1, 9) 1) #49, !noalias !1261 ; 2 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %._crit_edge20.i.i.i.i.i.i.i.i.i.i37
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i63 = phi i64 [ 1, %bb.ag ], [ 0, %._crit_edge20.i.i.i.i.i.i.i.i.i.i37 ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i63, i64 %.val2.i.i.i.i.i.i.i42, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @363) #50
          to label %.noexc5.i.i.i.i64 unwind label %bb.am, !noalias !1247

.noexc5.i.i.i.i64:                                ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %bb.ag, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i43
  %.sroa.10.0.i.i.i.i.i.i.i.i.i.i44 = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i43 ], [ %i.ea, %bb.ag ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i.i.i.i.i.i44, ptr nonnull readonly align 1 %.val.i.i.i.i.i.i.i41, i64 %.val2.i.i.i.i.i.i.i42, i1 false), !noalias !1262
  %3 = icmp samesign ult i64 %i.di, 384307168202282326
  tail call void @llvm.assume(i1 %3)
  %i.ec = load i64, ptr %i.b, align 8, !range !9, !alias.scope !1263, !noalias !1264, !noundef !8
  %i.ed = icmp eq i64 %i.di, %i.ec
  br i1 %i.ed, label %bb.al, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i.i.i.i.i45"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i.i.i.i.i45": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i_crit_edge.i.i.i.i61", %bb.ai
  %i.ee = phi ptr [ %.pre.i.i.i.i62, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i_crit_edge.i.i.i.i61" ], [ %i.dh, %bb.ai ] ; 2 uses
  %i.ef = getelementptr inbounds nuw [24 x i8], ptr %i.ee, i64 %i.di ; 3 uses
  store i64 %.val2.i.i.i.i.i.i.i42, ptr %i.ef, align 8, !noalias !1265
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i46 = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i.i44, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i46, align 8, !noalias !1265
  %.sroa.57.0..sroa_idx.i.i.i.i.i.i47 = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store i64 %.val2.i.i.i.i.i.i.i42, ptr %.sroa.57.0..sroa_idx.i.i.i.i.i.i47, align 8, !noalias !1265
  %i.eg = add nuw nsw i64 %i.di, 1                ; 2 uses
  store i64 %i.eg, ptr %.sroa.6.0..sroa_idx.i.i.i.i31, align 8, !alias.scope !1263, !noalias !1264
  %i.eh = icmp eq i64 %i.dv, 0
  br i1 %i.eh, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h1563be17559c5dabE.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i32

bb.aj:                                            ; preds = %bb.al
  %i.ei = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.dz, label %.body.i.i.i.i48, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i.i.i.i.i44, i64 noundef %.val2.i.i.i.i.i.i.i42, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !1266
  br label %.body.i.i.i.i48

bb.al:                                            ; preds = %bb.ai
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0718d48692d43f33E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.di, i64 noundef range(i64 1, 0) %.val1419.i.i.i.i.i.i34, i64 noundef 8, i64 noundef 24)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i_crit_edge.i.i.i.i61" unwind label %bb.aj, !noalias !1264

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i_crit_edge.i.i.i.i61": ; preds = %bb.al
  %.pre.i.i.i.i62 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i30, align 8, !alias.scope !1263, !noalias !1264
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i.i.i.i.i45"

bb.am:                                            ; preds = %bb.ah
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i48

.body.i.i.i.i48:                                  ; preds = %bb.am, %bb.ak, %bb.aj
  %eh.lpad-body.i.i.i.i49 = phi { ptr, i32 } [ %i.ej, %bb.am ], [ %i.ei, %bb.ak ], [ %i.ei, %bb.aj ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1267)
  %.val.i.i.i.i50 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i30, align 8, !alias.scope !1267, !noalias !1247, !nonnull !8, !noundef !8 ; 2 uses
  %.val1.i.i.i.i51 = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i31, align 8, !alias.scope !1267, !noalias !1247, !noundef !8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1268), !noalias !1269
  %i.ek = icmp eq i64 %.val1.i.i.i.i51, 0
  br i1 %i.ek, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h94eb50b62405af86E.exit.i.i.i.i57", label %.lr.ph.i.i.i1.i.i.i52

.lr.ph.i.i.i1.i.i.i52:                            ; preds = %.body.i.i.i.i48, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd3bd526bdd6cea8bE.exit.i.i.i.i.i.i56"
  %.sroa.0.010.i.i.i.i.i.i53 = phi i64 [ %i.em, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd3bd526bdd6cea8bE.exit.i.i.i.i.i.i56" ], [ 0, %.body.i.i.i.i48 ] ; 2 uses
  %i.el = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i50, i64 %.sroa.0.010.i.i.i.i.i.i53 ; 2 uses
  %i.em = add nuw i64 %.sroa.0.010.i.i.i.i.i.i53, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1270), !noalias !1269
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1271), !noalias !1269
  %.val.i.i.i.i.i.i.i.i54 = load i64, ptr %i.el, align 8, !range !9, !alias.scope !1272, !noalias !1273, !noundef !8 ; 2 uses
  %i.en = icmp eq i64 %.val.i.i.i.i.i.i.i.i54, 0
  br i1 %i.en, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd3bd526bdd6cea8bE.exit.i.i.i.i.i.i56", label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i.i1.i.i.i52
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %.val1.i.i.i.i.i.i.i.i55 = load ptr, ptr %i.eo, align 8, !alias.scope !1272, !noalias !1273, !nonnull !8, !noundef !8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i55, i64 noundef %.val.i.i.i.i.i.i.i.i54, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !1274
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd3bd526bdd6cea8bE.exit.i.i.i.i.i.i56"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd3bd526bdd6cea8bE.exit.i.i.i.i.i.i56": ; preds = %bb.an, %.lr.ph.i.i.i1.i.i.i52
  %i.ep = icmp eq i64 %i.em, %.val1.i.i.i.i51
  br i1 %i.ep, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h94eb50b62405af86E.exit.i.i.i.i57", label %.lr.ph.i.i.i1.i.i.i52

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h94eb50b62405af86E.exit.i.i.i.i57": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd3bd526bdd6cea8bE.exit.i.i.i.i.i.i56", %.body.i.i.i.i48
  %.val2.i.i.i.i58 = load i64, ptr %i.b, align 8, !range !9, !alias.scope !1267, !noalias !1247, !noundef !8 ; 2 uses
  %i.eq = icmp eq i64 %.val2.i.i.i.i58, 0
  br i1 %i.eq, label %common.resume, label %bb.ao

bb.ao:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h94eb50b62405af86E.exit.i.i.i.i57"
  %i.er = mul nuw i64 %.val2.i.i.i.i58, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i50, i64 noundef %i.er, i64 noundef range(i64 1, -9223372036854775807) 8) #49, !noalias !1273
  br label %common.resume

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h1563be17559c5dabE.exit.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i.i.i.i.i45", %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1253
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h0f54a7cca3081137E.exit

_ZN4core4iter6traits8iterator8Iterator7collect17h0f54a7cca3081137E.exit: ; preds = %bb.z, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h1563be17559c5dabE.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1247
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h0f54a7cca3081137E.exit, %_ZN4core4iter6traits8iterator8Iterator7collect17h44dd57fd7fb90c09E.exit
  %i.es = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ev = load i64, ptr %i.eu, align 8, !noundef !8 ; 4 uses
  %i.ew = icmp ult i64 %i.ev, 2
  br i1 %i.ew, label %bb.au, label %bb.aq, !prof !22

bb.aq:                                            ; preds = %bb.ap
  %i.ex = icmp ult i64 %i.ev, 21
  br i1 %i.ex, label %bb.as, label %bb.ar, !prof !22

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN4core5slice4sort8unstable7ipnsort17h18c99179329b8399E(ptr noalias noundef nonnull align 8 %i.et, i64 noundef %i.ev, ptr noalias noundef nonnull align 1 %i.a)
          to label %bb.au unwind label %bb.at

bb.as:                                            ; preds = %bb.aq
  tail call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h0715cda6fc466d6eE(ptr noalias noundef nonnull align 8 %i.et, i64 noundef %i.ev)
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.ey = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h8ce2883736bc5ff2E"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #51
  br label %common.resume

bb.au:                                            ; preds = %bb.as, %bb.ar, %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_ZN16meilisearch_auth10AuthFilter32tenant_token_is_index_authorized17h405394bf76db0356E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !range !23, !noundef !8
  %.not = icmp eq i64 %i.b, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef zeroext i1 @_ZN16meilisearch_auth11SearchRules19is_index_authorized17h62ee72586ae31201E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.c, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_ZN16meilisearch_auth10AuthFilter34tenant_token_list_index_authorized17h2ab6330643427a6dE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load i64, ptr %i.e, align 8, !range !23, !noundef !8 ; 2 uses
  %.not = icmp eq i64 %i.f, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.y

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.k, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.ax, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1433)
  %i.l = load ptr, ptr %i.h, align 8, !alias.scope !1433, !noalias !1434, !nonnull !8, !noundef !8 ; 4 uses
  %.val13.i.i = load <16 x i8>, ptr %i.l, align 16, !noalias !1435
  %i.m = load i64, ptr %i.i, align 8, !alias.scope !1433, !noalias !1434, !noundef !8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1439)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1440
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = icmp sgt <16 x i8> %.val13.i.i, splat (i8 -1)
  %i.p = bitcast <16 x i1> %i.o to i16            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.not13.i.i.i.i.i.i.i.i = icmp eq i16 %i.p, 0
  br i1 %.not13.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i.i
  %i.r = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.q, %bb.f ] ; 2 uses
  %i.s = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.l, %bb.f ]
  %.val911.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.r, align 16, !noalias !1441
  %i.t = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -1536 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.t to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i

._crit_edge20.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.f
  %.sroa.5.0.i.i = phi ptr [ %i.q, %bb.f ], [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.sroa.08.0.copyload.i.i.i.i = phi ptr [ %i.l, %bb.f ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i = phi i16 [ %i.p, %bb.f ], [ %.cast.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.w = add i16 %.lcssa.i.i.i.i.i.i.i.i, -1
  %i.x = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.y = zext nneg i16 %i.x to i64
  %i.z = and i16 %i.w, %.lcssa.i.i.i.i.i.i.i.i
  %i.aa = sub nsw i64 0, %i.y
  %i.ab = getelementptr inbounds [96 x i8], ptr %.sroa.08.0.copyload.i.i.i.i, i64 %i.aa ; 2 uses
  %i.ac = add i64 %i.m, -1                        ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ab, i64 -88
  %.val.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !noalias !1442, !nonnull !8, !noundef !8
  %i.ae = getelementptr i8, ptr %i.ab, i64 -80
  %.val2.i.i.i.i.i = load i64, ptr %i.ae, align 8, !noalias !1442, !noundef !8 ; 8 uses
  %i.af = icmp slt i64 %.val2.i.i.i.i.i, 0
  br i1 %i.af, label %bb.h, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i, !prof !28

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge20.i.i.i.i.i.i.i.i
  %i.ag = icmp eq i64 %.val2.i.i.i.i.i, 0         ; 2 uses
  br i1 %i.ag, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #49, !noalias !1443
  %i.ah = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val2.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #49, !noalias !1443 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g, %._crit_edge20.i.i.i.i.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.g ], [ 0, %._crit_edge20.i.i.i.i.i.i.i.i ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i, i64 %.val2.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @363) #50, !noalias !1444
  unreachable

bb.i:                                             ; preds = %bb.e
  store i64 0, ptr %i.d, align 8, !alias.scope !1445, !noalias !1446
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.aj, align 8, !alias.scope !1445, !noalias !1446
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.ak, align 8, !alias.scope !1445, !noalias !1446
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h17e8ed730269bccaE.exit

bb.j:                                             ; preds = %bb.n
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ag, label %common.resume, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !1447
  br label %common.resume

bb.l:                                             ; preds = %bb.g, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i ], [ %i.ah, %bb.g ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.val.i.i.i.i.i, i64 %.val2.i.i.i.i.i, i1 false), !noalias !1448
  %.sroa.0.0.i.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 4) ; 3 uses
  %i.am = mul i64 %.sroa.0.0.i.i.i.i.i, 24        ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %i.m, 384307168202282325
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.n, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !28

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.l
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #49, !noalias !1449
  %i.ao = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.am, i64 noundef range(i64 1, 9) 8) #49, !noalias !1449 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.m ], [ 0, %bb.l ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @183) #50
          to label %.noexc.i.i.i.i unwind label %bb.j, !noalias !1440

.noexc.i.i.i.i:                                   ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.ao, %bb.m ] ; 5 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %bb.m ] ; 2 uses
  %i.aq = icmp ule i64 %.sroa.0.0.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.aq)
  store i64 %.val2.i.i.i.i.i, ptr %.sroa.10.0.i.i.i.i.i, align 8, !noalias !1440
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i, i64 8
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !1440
  %.sroa.57.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i, i64 16
  store i64 %.val2.i.i.i.i.i, ptr %.sroa.57.0..sroa_idx.i.i.i.i, align 8, !noalias !1440
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.c, align 8, !noalias !1440
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !1440
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !1440
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1451)
  %i.ar = icmp eq i64 %i.ac, 0
  br i1 %i.ar, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h38f11a8087eaadefE.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.o, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i.i.i.i.i"
  %i.as = phi ptr [ %i.bp, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i.i, %bb.o ]
  %i.at = phi i64 [ %i.br, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i.i.i.i.i" ], [ 1, %bb.o ] ; 5 uses
  %.lcssa23.i.i.i.i.i.i = phi ptr [ %.lcssa22.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i.i.i.i.i" ], [ %.sroa.5.0.i.i, %bb.o ] ; 2 uses
  %i.au = phi i16 [ %i.bd, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i.i.i.i.i" ], [ %i.z, %bb.o ] ; 2 uses
  %.val1419.i.i.i.i.i.i = phi i64 [ %i.bg, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i.i.i.i.i" ], [ %i.ac, %bb.o ] ; 2 uses
  %.pre.i.i.i.i1718.i.i.i.i.i.i = phi ptr [ %.pre.i.i.i.i16.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i.i.i.i.i" ], [ %.sroa.08.0.copyload.i.i.i.i, %bb.o ] ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.au, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.av = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa23.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.aw = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i1718.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %.val911.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.av, align 16, !noalias !1452
  %i.ax = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 -1536 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ax to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i.i.i

._crit_edge20.i.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.lcssa22.i.i.i.i.i.i = phi ptr [ %.lcssa23.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.az, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %.pre.i.i.i.i16.i.i.i.i.i.i = phi ptr [ %.pre.i.i.i.i1718.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.au, %.lr.ph.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ba = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, -1
  %i.bb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.bc = zext nneg i16 %i.bb to i64
  %i.bd = and i16 %i.ba, %.lcssa.i.i.i.i.i.i.i.i.i.i
  %i.be = sub nsw i64 0, %i.bc
  %i.bf = getelementptr inbounds [96 x i8], ptr %.pre.i.i.i.i16.i.i.i.i.i.i, i64 %i.be ; 2 uses
  %i.bg = add i64 %.val1419.i.i.i.i.i.i, -1       ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bf, i64 -88
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.bh, align 8, !noalias !1453, !nonnull !8, !noundef !8
  %i.bi = getelementptr i8, ptr %i.bf, i64 -80
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.bi, align 8, !noalias !1453, !noundef !8 ; 8 uses
  %i.bj = icmp slt i64 %.val2.i.i.i.i.i.i.i, 0
  br i1 %i.bj, label %bb.q, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i, !prof !28

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge20.i.i.i.i.i.i.i.i.i.i
  %i.bk = icmp eq i64 %.val2.i.i.i.i.i.i.i, 0     ; 2 uses
  br i1 %i.bk, label %bb.r, label %bb.p

bb.p:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #49, !noalias !1454
  %i.bl = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val2.i.i.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #49, !noalias !1454 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %._crit_edge20.i.i.i.i.i.i.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.p ], [ 0, %._crit_edge20.i.i.i.i.i.i.i.i.i.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i, i64 %.val2.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @363) #50
          to label %.noexc5.i.i.i.i unwind label %bb.v, !noalias !1440

.noexc5.i.i.i.i:                                  ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bl, %bb.p ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.val.i.i.i.i.i.i.i, i64 %.val2.i.i.i.i.i.i.i, i1 false), !noalias !1455
  %2 = icmp samesign ult i64 %i.at, 384307168202282326
  tail call void @llvm.assume(i1 %2)
  %i.bn = load i64, ptr %i.c, align 8, !range !9, !alias.scope !1456, !noalias !1457, !noundef !8
  %i.bo = icmp eq i64 %i.at, %i.bn
  br i1 %i.bo, label %bb.u, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i_crit_edge.i.i.i.i", %bb.r
  %i.bp = phi ptr [ %.pre.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i_crit_edge.i.i.i.i" ], [ %i.as, %bb.r ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %i.at ; 3 uses
  store i64 %.val2.i.i.i.i.i.i.i, ptr %i.bq, align 8, !noalias !1458
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1458
  %.sroa.57.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store i64 %.val2.i.i.i.i.i.i.i, ptr %.sroa.57.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1458
  %i.br = add nuw nsw i64 %i.at, 1                ; 2 uses
  store i64 %i.br, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1456, !noalias !1457
  %i.bs = icmp eq i64 %i.bg, 0
  br i1 %i.bs, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h38f11a8087eaadefE.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.u
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.bk, label %.body.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !1459
  br label %.body.i.i.i.i

bb.u:                                             ; preds = %bb.r
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0718d48692d43f33E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.at, i64 noundef range(i64 1, 0) %.val1419.i.i.i.i.i.i, i64 noundef 8, i64 noundef 24)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i_crit_edge.i.i.i.i" unwind label %bb.s, !noalias !1457

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i_crit_edge.i.i.i.i": ; preds = %bb.u
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1456, !noalias !1457
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i.i.i.i.i"

bb.v:                                             ; preds = %bb.q
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.v, %bb.t, %bb.s
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.bu, %bb.v ], [ %i.bt, %bb.t ], [ %i.bt, %bb.s ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1460)
  %.val.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1460, !noalias !1440, !nonnull !8, !noundef !8 ; 2 uses
  %.val1.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1460, !noalias !1440, !noundef !8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1461), !noalias !1462
  %i.bv = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.bv, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h94eb50b62405af86E.exit.i.i.i.i", label %.lr.ph.i.i.i1.i.i.i

.lr.ph.i.i.i1.i.i.i:                              ; preds = %.body.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd3bd526bdd6cea8bE.exit.i.i.i.i.i.i"
  %.sroa.0.010.i.i.i.i.i.i = phi i64 [ %i.bx, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd3bd526bdd6cea8bE.exit.i.i.i.i.i.i" ], [ 0, %.body.i.i.i.i ] ; 2 uses
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i, i64 %.sroa.0.010.i.i.i.i.i.i ; 2 uses
  %i.bx = add nuw i64 %.sroa.0.010.i.i.i.i.i.i, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1463), !noalias !1462
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1464), !noalias !1462
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.bw, align 8, !range !9, !alias.scope !1465, !noalias !1466, !noundef !8 ; 2 uses
  %i.by = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.by, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd3bd526bdd6cea8bE.exit.i.i.i.i.i.i", label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i1.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.bz, align 8, !alias.scope !1465, !noalias !1466, !nonnull !8, !noundef !8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !1467
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd3bd526bdd6cea8bE.exit.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd3bd526bdd6cea8bE.exit.i.i.i.i.i.i": ; preds = %bb.w, %.lr.ph.i.i.i1.i.i.i
  %i.ca = icmp eq i64 %i.bx, %.val1.i.i.i.i
  br i1 %i.ca, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h94eb50b62405af86E.exit.i.i.i.i", label %.lr.ph.i.i.i1.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h94eb50b62405af86E.exit.i.i.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd3bd526bdd6cea8bE.exit.i.i.i.i.i.i", %.body.i.i.i.i
  %.val2.i.i.i.i = load i64, ptr %i.c, align 8, !range !9, !alias.scope !1460, !noalias !1440, !noundef !8 ; 2 uses
  %i.cb = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.cb, label %common.resume, label %bb.x

bb.x:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h94eb50b62405af86E.exit.i.i.i.i"
  %i.cc = mul nuw i64 %.val2.i.i.i.i, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.cc, i64 noundef range(i64 1, -9223372036854775807) 8) #49, !noalias !1466
  br label %common.resume

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h38f11a8087eaadefE.exit.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i.i.i.i.i", %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1446
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h17e8ed730269bccaE.exit

common.resume:                                    ; preds = %bb.ad, %bb.ae, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h94eb50b62405af86E.exit.i.i.i.i57", %bb.ar, %bb.j, %bb.k, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h94eb50b62405af86E.exit.i.i.i.i", %bb.x, %bb.aw
  %common.resume.op = phi { ptr, i32 } [ %i.fb, %bb.aw ], [ %eh.lpad-body.i.i.i.i, %bb.x ], [ %i.al, %bb.k ], [ %i.al, %bb.j ], [ %eh.lpad-body.i.i.i.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h94eb50b62405af86E.exit.i.i.i.i" ], [ %i.dd, %bb.ae ], [ %i.dd, %bb.ad ], [ %eh.lpad-body.i.i.i.i49, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h94eb50b62405af86E.exit.i.i.i.i57" ], [ %eh.lpad-body.i.i.i.i49, %bb.ar ]
  resume { ptr, i32 } %common.resume.op

_ZN4core4iter6traits8iterator8Iterator7collect17h17e8ed730269bccaE.exit: ; preds = %bb.i, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h38f11a8087eaadefE.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1440
  br label %bb.as

bb.y:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1468)
  %i.cd = load ptr, ptr %i.h, align 8, !alias.scope !1468, !noalias !1469, !nonnull !8, !noundef !8 ; 4 uses
  %.val13.i.i2 = load <16 x i8>, ptr %i.cd, align 16, !noalias !1470
  %i.ce = load i64, ptr %i.i, align 8, !alias.scope !1468, !noalias !1469, !noundef !8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1474)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1475
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cg = icmp sgt <16 x i8> %.val13.i.i2, splat (i8 -1)
  %i.ch = bitcast <16 x i1> %i.cg to i16          ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  %.not13.i.i.i.i.i.i.i.i14 = icmp eq i16 %i.ch, 0
  br i1 %.not13.i.i.i.i.i.i.i.i14, label %.lr.ph.i.i.i.i.i.i.i.i72, label %._crit_edge20.i.i.i.i.i.i.i.i15

.lr.ph.i.i.i.i.i.i.i.i72:                         ; preds = %bb.z, %.lr.ph.i.i.i.i.i.i.i.i72
  %i.cj = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i72 ], [ %i.ci, %bb.z ] ; 2 uses
  %i.ck = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i.i.i72 ], [ %i.cd, %bb.z ]
  %.val911.i.i.i.i.i.i.i.i73 = load <16 x i8>, ptr %i.cj, align 16, !noalias !1476
  %i.cl = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i.i73, splat (i8 -1)
  %i.cm = getelementptr inbounds i8, ptr %i.ck, i64 -384 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i74 = bitcast <16 x i1> %i.cl to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i75 = icmp eq i16 %.cast.i.i.i.i.i.i.i.i74, 0
  br i1 %.not.i.i.i.i.i.i.i.i75, label %.lr.ph.i.i.i.i.i.i.i.i72, label %._crit_edge20.i.i.i.i.i.i.i.i15

._crit_edge20.i.i.i.i.i.i.i.i15:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i72, %bb.z
  %.sroa.5.0.i.i16 = phi ptr [ %i.ci, %bb.z ], [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i72 ]
  %.sroa.08.0.copyload.i.i.i.i17 = phi ptr [ %i.cd, %bb.z ], [ %i.cm, %.lr.ph.i.i.i.i.i.i.i.i72 ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i18 = phi i16 [ %i.ch, %bb.z ], [ %.cast.i.i.i.i.i.i.i.i74, %.lr.ph.i.i.i.i.i.i.i.i72 ] ; 3 uses
  %i.co = add i16 %.lcssa.i.i.i.i.i.i.i.i18, -1
  %i.cp = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i18, i1 true)
  %i.cq = zext nneg i16 %i.cp to i64
  %i.cr = and i16 %i.co, %.lcssa.i.i.i.i.i.i.i.i18
  %i.cs = sub nsw i64 0, %i.cq
  %i.ct = getelementptr inbounds [24 x i8], ptr %.sroa.08.0.copyload.i.i.i.i17, i64 %i.cs ; 2 uses
  %i.cu = add i64 %i.ce, -1                       ; 2 uses
  %i.cv = getelementptr i8, ptr %i.ct, i64 -16
  %.val.i.i.i.i.i19 = load ptr, ptr %i.cv, align 8, !noalias !1477, !nonnull !8, !noundef !8
  %i.cw = getelementptr i8, ptr %i.ct, i64 -8
  %.val2.i.i.i.i.i20 = load i64, ptr %i.cw, align 8, !noalias !1477, !noundef !8 ; 8 uses
  %i.cx = icmp slt i64 %.val2.i.i.i.i.i20, 0
  br i1 %i.cx, label %bb.ab, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i21, !prof !28

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i21: ; preds = %._crit_edge20.i.i.i.i.i.i.i.i15
  %i.cy = icmp eq i64 %.val2.i.i.i.i.i20, 0       ; 2 uses
  br i1 %i.cy, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i21
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #49, !noalias !1478
  %i.cz = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val2.i.i.i.i.i20, i64 noundef range(i64 1, 9) 1) #49, !noalias !1478 ; 2 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa, %._crit_edge20.i.i.i.i.i.i.i.i15
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i71 = phi i64 [ 1, %bb.aa ], [ 0, %._crit_edge20.i.i.i.i.i.i.i.i15 ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i71, i64 %.val2.i.i.i.i.i20, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @363) #50, !noalias !1479
  unreachable

bb.ac:                                            ; preds = %bb.y
  store i64 0, ptr %i.d, align 8, !alias.scope !1480, !noalias !1481
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.db, align 8, !alias.scope !1480, !noalias !1481
  %i.dc = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.dc, align 8, !alias.scope !1480, !noalias !1481
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h3b1332518b7ceb83E.exit

bb.ad:                                            ; preds = %bb.ah
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.cy, label %common.resume, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i.i.i22, i64 noundef %.val2.i.i.i.i.i20, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !1482
  br label %common.resume

bb.af:                                            ; preds = %bb.aa, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i21
  %.sroa.10.0.i.i.i.i.i.i.i.i22 = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i21 ], [ %i.cz, %bb.aa ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i.i.i.i22, ptr nonnull readonly align 1 %.val.i.i.i.i.i19, i64 %.val2.i.i.i.i.i20, i1 false), !noalias !1483
  %.sroa.0.0.i.i.i.i.i23 = tail call noundef i64 @llvm.umax.i64(i64 %i.ce, i64 4) ; 3 uses
  %i.de = mul i64 %.sroa.0.0.i.i.i.i.i23, 24      ; 3 uses
  %or.cond.i.i.i.i.i.i.i24 = icmp ugt i64 %i.ce, 384307168202282325
  br i1 %or.cond.i.i.i.i.i.i.i24, label %bb.ah, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i25, !prof !28

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i25: ; preds = %bb.af
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i25
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #49, !noalias !1484
  %i.dg = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.de, i64 noundef range(i64 1, 9) 8) #49, !noalias !1484 ; 2 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.sroa.4.0.ph.i.i.i.i.i69 = phi i64 [ 8, %bb.ag ], [ 0, %bb.af ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i69, i64 %i.de, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @183) #50
          to label %.noexc.i.i.i.i70 unwind label %bb.ad, !noalias !1475

.noexc.i.i.i.i70:                                 ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %bb.ag, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i25
  %.sroa.10.0.i.i.i.i.i26 = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i25 ], [ %i.dg, %bb.ag ] ; 5 uses
  %.sroa.4.0.i.i.i.i.i27 = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i25 ], [ %.sroa.0.0.i.i.i.i.i23, %bb.ag ] ; 2 uses
  %i.di = icmp ule i64 %.sroa.0.0.i.i.i.i.i23, %.sroa.4.0.i.i.i.i.i27
  tail call void @llvm.assume(i1 %i.di)
  store i64 %.val2.i.i.i.i.i20, ptr %.sroa.10.0.i.i.i.i.i26, align 8, !noalias !1475
  %.sroa.46.0..sroa_idx.i.i.i.i28 = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i26, i64 8
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i22, ptr %.sroa.46.0..sroa_idx.i.i.i.i28, align 8, !noalias !1475
  %.sroa.57.0..sroa_idx.i.i.i.i29 = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i26, i64 16
  store i64 %.val2.i.i.i.i.i20, ptr %.sroa.57.0..sroa_idx.i.i.i.i29, align 8, !noalias !1475
  store i64 %.sroa.4.0.i.i.i.i.i27, ptr %i.b, align 8, !noalias !1475
  %.sroa.4.0..sroa_idx.i.i.i.i30 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i.i.i.i26, ptr %.sroa.4.0..sroa_idx.i.i.i.i30, align 8, !noalias !1475
  %.sroa.6.0..sroa_idx.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i31, align 8, !noalias !1475
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  %i.dj = icmp eq i64 %i.cu, 0
  br i1 %i.dj, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h3876b33cce332d62E.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i32

.lr.ph.i.i.i.i.i.i32:                             ; preds = %bb.ai, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i.i.i.i.i45"
  %i.dk = phi ptr [ %i.eh, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i.i.i.i.i45" ], [ %.sroa.10.0.i.i.i.i.i26, %bb.ai ]
  %i.dl = phi i64 [ %i.ej, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i.i.i.i.i45" ], [ 1, %bb.ai ] ; 5 uses
  %.lcssa23.i.i.i.i.i.i33 = phi ptr [ %.lcssa22.i.i.i.i.i.i38, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i.i.i.i.i45" ], [ %.sroa.5.0.i.i16, %bb.ai ] ; 2 uses
  %i.dm = phi i16 [ %i.dv, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i.i.i.i.i45" ], [ %i.cr, %bb.ai ] ; 2 uses
  %.val1419.i.i.i.i.i.i34 = phi i64 [ %i.dy, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i.i.i.i.i45" ], [ %i.cu, %bb.ai ] ; 2 uses
  %.pre.i.i.i.i1718.i.i.i.i.i.i35 = phi ptr [ %.pre.i.i.i.i16.i.i.i.i.i.i39, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i.i.i.i.i45" ], [ %.sroa.08.0.copyload.i.i.i.i17, %bb.ai ] ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i.i36 = icmp eq i16 %i.dm, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i.i.i.i65, label %._crit_edge20.i.i.i.i.i.i.i.i.i.i37

.lr.ph.i.i.i.i.i.i.i.i.i.i65:                     ; preds = %.lr.ph.i.i.i.i.i.i32, %.lr.ph.i.i.i.i.i.i.i.i.i.i65
  %i.dn = phi ptr [ %i.dr, %.lr.ph.i.i.i.i.i.i.i.i.i.i65 ], [ %.lcssa23.i.i.i.i.i.i33, %.lr.ph.i.i.i.i.i.i32 ] ; 2 uses
  %i.do = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i.i.i.i.i.i65 ], [ %.pre.i.i.i.i1718.i.i.i.i.i.i35, %.lr.ph.i.i.i.i.i.i32 ]
  %.val911.i.i.i.i.i.i.i.i.i.i66 = load <16 x i8>, ptr %i.dn, align 16, !noalias !1487
  %i.dp = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i.i.i.i66, splat (i8 -1)
  %i.dq = getelementptr inbounds i8, ptr %i.do, i64 -384 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i67 = bitcast <16 x i1> %i.dp to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i68 = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i67, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i68, label %.lr.ph.i.i.i.i.i.i.i.i.i.i65, label %._crit_edge20.i.i.i.i.i.i.i.i.i.i37

._crit_edge20.i.i.i.i.i.i.i.i.i.i37:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i65, %.lr.ph.i.i.i.i.i.i32
  %.lcssa22.i.i.i.i.i.i38 = phi ptr [ %.lcssa23.i.i.i.i.i.i33, %.lr.ph.i.i.i.i.i.i32 ], [ %i.dr, %.lr.ph.i.i.i.i.i.i.i.i.i.i65 ]
  %.pre.i.i.i.i16.i.i.i.i.i.i39 = phi ptr [ %.pre.i.i.i.i1718.i.i.i.i.i.i35, %.lr.ph.i.i.i.i.i.i32 ], [ %i.dq, %.lr.ph.i.i.i.i.i.i.i.i.i.i65 ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i40 = phi i16 [ %i.dm, %.lr.ph.i.i.i.i.i.i32 ], [ %.cast.i.i.i.i.i.i.i.i.i.i67, %.lr.ph.i.i.i.i.i.i.i.i.i.i65 ] ; 3 uses
  %i.ds = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i40, -1
  %i.dt = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i40, i1 true)
  %i.du = zext nneg i16 %i.dt to i64
  %i.dv = and i16 %i.ds, %.lcssa.i.i.i.i.i.i.i.i.i.i40
  %i.dw = sub nsw i64 0, %i.du
  %i.dx = getelementptr inbounds [24 x i8], ptr %.pre.i.i.i.i16.i.i.i.i.i.i39, i64 %i.dw ; 2 uses
  %i.dy = add i64 %.val1419.i.i.i.i.i.i34, -1     ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dx, i64 -16
  %.val.i.i.i.i.i.i.i41 = load ptr, ptr %i.dz, align 8, !noalias !1488, !nonnull !8, !noundef !8
  %i.ea = getelementptr i8, ptr %i.dx, i64 -8
  %.val2.i.i.i.i.i.i.i42 = load i64, ptr %i.ea, align 8, !noalias !1488, !noundef !8 ; 8 uses
  %i.eb = icmp slt i64 %.val2.i.i.i.i.i.i.i42, 0
  br i1 %i.eb, label %bb.ak, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i43, !prof !28

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i43: ; preds = %._crit_edge20.i.i.i.i.i.i.i.i.i.i37
  %i.ec = icmp eq i64 %.val2.i.i.i.i.i.i.i42, 0   ; 2 uses
  br i1 %i.ec, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i43
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #49, !noalias !1489
  %i.ed = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val2.i.i.i.i.i.i.i42, i64 noundef range(i64 1, 9) 1) #49, !noalias !1489 ; 2 uses
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj, %._crit_edge20.i.i.i.i.i.i.i.i.i.i37
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i63 = phi i64 [ 1, %bb.aj ], [ 0, %._crit_edge20.i.i.i.i.i.i.i.i.i.i37 ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i63, i64 %.val2.i.i.i.i.i.i.i42, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @363) #50
          to label %.noexc5.i.i.i.i64 unwind label %bb.ap, !noalias !1475

.noexc5.i.i.i.i64:                                ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %bb.aj, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i43
  %.sroa.10.0.i.i.i.i.i.i.i.i.i.i44 = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i43 ], [ %i.ed, %bb.aj ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i.i.i.i.i.i44, ptr nonnull readonly align 1 %.val.i.i.i.i.i.i.i41, i64 %.val2.i.i.i.i.i.i.i42, i1 false), !noalias !1490
  %3 = icmp samesign ult i64 %i.dl, 384307168202282326
  tail call void @llvm.assume(i1 %3)
  %i.ef = load i64, ptr %i.b, align 8, !range !9, !alias.scope !1491, !noalias !1492, !noundef !8
  %i.eg = icmp eq i64 %i.dl, %i.ef
  br i1 %i.eg, label %bb.ao, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i.i.i.i.i45"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i.i.i.i.i45": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i_crit_edge.i.i.i.i61", %bb.al
  %i.eh = phi ptr [ %.pre.i.i.i.i62, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i_crit_edge.i.i.i.i61" ], [ %i.dk, %bb.al ] ; 2 uses
  %i.ei = getelementptr inbounds nuw [24 x i8], ptr %i.eh, i64 %i.dl ; 3 uses
  store i64 %.val2.i.i.i.i.i.i.i42, ptr %i.ei, align 8, !noalias !1493
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i46 = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i.i44, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i46, align 8, !noalias !1493
  %.sroa.57.0..sroa_idx.i.i.i.i.i.i47 = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store i64 %.val2.i.i.i.i.i.i.i42, ptr %.sroa.57.0..sroa_idx.i.i.i.i.i.i47, align 8, !noalias !1493
  %i.ej = add nuw nsw i64 %i.dl, 1                ; 2 uses
  store i64 %i.ej, ptr %.sroa.6.0..sroa_idx.i.i.i.i31, align 8, !alias.scope !1491, !noalias !1492
  %i.ek = icmp eq i64 %i.dy, 0
  br i1 %i.ek, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h3876b33cce332d62E.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i32

bb.am:                                            ; preds = %bb.ao
  %i.el = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ec, label %.body.i.i.i.i48, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i.i.i.i.i44, i64 noundef %.val2.i.i.i.i.i.i.i42, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !1494
  br label %.body.i.i.i.i48

bb.ao:                                            ; preds = %bb.al
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0718d48692d43f33E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.dl, i64 noundef range(i64 1, 0) %.val1419.i.i.i.i.i.i34, i64 noundef 8, i64 noundef 24)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i_crit_edge.i.i.i.i61" unwind label %bb.am, !noalias !1492

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i_crit_edge.i.i.i.i61": ; preds = %bb.ao
  %.pre.i.i.i.i62 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i30, align 8, !alias.scope !1491, !noalias !1492
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i.i.i.i.i45"

bb.ap:                                            ; preds = %bb.ak
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i48

.body.i.i.i.i48:                                  ; preds = %bb.ap, %bb.an, %bb.am
  %eh.lpad-body.i.i.i.i49 = phi { ptr, i32 } [ %i.em, %bb.ap ], [ %i.el, %bb.an ], [ %i.el, %bb.am ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1495)
  %.val.i.i.i.i50 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i30, align 8, !alias.scope !1495, !noalias !1475, !nonnull !8, !noundef !8 ; 2 uses
  %.val1.i.i.i.i51 = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i31, align 8, !alias.scope !1495, !noalias !1475, !noundef !8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1496), !noalias !1497
  %i.en = icmp eq i64 %.val1.i.i.i.i51, 0
  br i1 %i.en, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h94eb50b62405af86E.exit.i.i.i.i57", label %.lr.ph.i.i.i1.i.i.i52

.lr.ph.i.i.i1.i.i.i52:                            ; preds = %.body.i.i.i.i48, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd3bd526bdd6cea8bE.exit.i.i.i.i.i.i56"
  %.sroa.0.010.i.i.i.i.i.i53 = phi i64 [ %i.ep, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd3bd526bdd6cea8bE.exit.i.i.i.i.i.i56" ], [ 0, %.body.i.i.i.i48 ] ; 2 uses
  %i.eo = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i50, i64 %.sroa.0.010.i.i.i.i.i.i53 ; 2 uses
  %i.ep = add nuw i64 %.sroa.0.010.i.i.i.i.i.i53, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1498), !noalias !1497
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1499), !noalias !1497
  %.val.i.i.i.i.i.i.i.i54 = load i64, ptr %i.eo, align 8, !range !9, !alias.scope !1500, !noalias !1501, !noundef !8 ; 2 uses
  %i.eq = icmp eq i64 %.val.i.i.i.i.i.i.i.i54, 0
  br i1 %i.eq, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd3bd526bdd6cea8bE.exit.i.i.i.i.i.i56", label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i.i1.i.i.i52
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %.val1.i.i.i.i.i.i.i.i55 = load ptr, ptr %i.er, align 8, !alias.scope !1500, !noalias !1501, !nonnull !8, !noundef !8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i55, i64 noundef %.val.i.i.i.i.i.i.i.i54, i64 noundef range(i64 1, -9223372036854775807) 1) #49, !noalias !1502
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd3bd526bdd6cea8bE.exit.i.i.i.i.i.i56"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd3bd526bdd6cea8bE.exit.i.i.i.i.i.i56": ; preds = %bb.aq, %.lr.ph.i.i.i1.i.i.i52
  %i.es = icmp eq i64 %i.ep, %.val1.i.i.i.i51
  br i1 %i.es, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h94eb50b62405af86E.exit.i.i.i.i57", label %.lr.ph.i.i.i1.i.i.i52

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h94eb50b62405af86E.exit.i.i.i.i57": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd3bd526bdd6cea8bE.exit.i.i.i.i.i.i56", %.body.i.i.i.i48
  %.val2.i.i.i.i58 = load i64, ptr %i.b, align 8, !range !9, !alias.scope !1495, !noalias !1475, !noundef !8 ; 2 uses
  %i.et = icmp eq i64 %.val2.i.i.i.i58, 0
  br i1 %i.et, label %common.resume, label %bb.ar

bb.ar:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h94eb50b62405af86E.exit.i.i.i.i57"
  %i.eu = mul nuw i64 %.val2.i.i.i.i58, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i50, i64 noundef %i.eu, i64 noundef range(i64 1, -9223372036854775807) 8) #49, !noalias !1501
  br label %common.resume

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h3876b33cce332d62E.exit.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h09d834aed134f77fE.exit.i.i.i.i.i.i45", %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1481
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h3b1332518b7ceb83E.exit

_ZN4core4iter6traits8iterator8Iterator7collect17h3b1332518b7ceb83E.exit: ; preds = %bb.ac, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h3876b33cce332d62E.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1475
  br label %bb.as

bb.as:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h3b1332518b7ceb83E.exit, %_ZN4core4iter6traits8iterator8Iterator7collect17h17e8ed730269bccaE.exit
  %i.ev = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ey = load i64, ptr %i.ex, align 8, !noundef !8 ; 4 uses
  %i.ez = icmp ult i64 %i.ey, 2
  br i1 %i.ez, label %bb.ax, label %bb.at, !prof !22

bb.at:                                            ; preds = %bb.as
  %i.fa = icmp ult i64 %i.ey, 21
  br i1 %i.fa, label %bb.av, label %bb.au, !prof !22

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN4core5slice4sort8unstable7ipnsort17h18c99179329b8399E(ptr noalias noundef nonnull align 8 %i.ew, i64 noundef %i.ey, ptr noalias noundef nonnull align 1 %i.a)
          to label %bb.ax unwind label %bb.aw

bb.av:                                            ; preds = %bb.at
  tail call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h0715cda6fc466d6eE(ptr noalias noundef nonnull align 8 %i.ew, i64 noundef %i.ey)
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h8ce2883736bc5ff2E"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #51
  br label %common.resume

bb.ax:                                            ; preds = %bb.av, %bb.au, %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_ZN16meilisearch_auth11SearchRules19is_index_authorized17h62ee72586ae31201E(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !18, !noundef !8
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1587)
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1587, !noalias !1588, !noundef !8 ; 3 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.select.unfold141_crit_edge, label %bb.c

.select.unfold141_crit_edge:                      ; preds = %bb.b
  %.pre167 = load ptr, ptr %i.c, align 8, !alias.scope !1589, !noalias !1590
  br label %select.unfold141

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i = load i64, ptr %i.g, align 8, !alias.scope !1587, !noalias !1588, !noundef !8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val5.i = load i64, ptr %i.h, align 8, !alias.scope !1587, !noalias !1588, !noundef !8 ; 2 uses
  %i.i = tail call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17hdf753a59e2aedd93E(i64 %.val.i, i64 %.val5.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @75, i64 noundef 1), !noalias !1587 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1591)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1592)
  %i.j = lshr i64 %i.i, 57
  %i.k = trunc nuw nsw i64 %i.j to i8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !1593, !noalias !1594, !noundef !8 ; 4 uses
  %i.n = load ptr, ptr %i.c, align 8, !alias.scope !1593, !noalias !1594, !nonnull !8, !noundef !8 ; 5 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <16 x i8> poison, i8 %i.k, i64 0
  %.sroa.0.15.vec.insert.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.c ], [ %i.af, %bb.e ]
  %.pn.i.i = phi i64 [ %i.i, %bb.c ], [ %i.ag, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.m      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.o, align 1, !noalias !1595 ; 2 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %.sroa.0.15.vec.insert.i.i.i
  %i.q = bitcast <16 x i1> %i.p to i16            ; 2 uses
  %.not.i.not33.i.i = icmp eq i16 %i.q, 0
  br i1 %.not.i.not33.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hb68d7cb0db63cac5E.exit.thread.i.i"
  %.sroa.06.0.i34.i.i = phi i16 [ %i.ae, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hb68d7cb0db63cac5E.exit.thread.i.i" ], [ %i.q, %bb.d ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = add i64 %.sroa.01.0.i.i.i, %i.s
  %i.u = and i64 %i.t, %i.m
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds [96 x i8], ptr %i.n, i64 %i.v ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 -80
  %.val5.i.i.i = load i64, ptr %i.x, align 8, !noalias !1596, !noundef !8
  %.not.i.i.i.i.i.i = icmp eq i64 %.val5.i.i.i, 1
  br i1 %.not.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hb68d7cb0db63cac5E.exit.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hb68d7cb0db63cac5E.exit.thread.i.i", !prof !29

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hb68d7cb0db63cac5E.exit.i.i": ; preds = %.lr.ph.i.i
  %i.y = getelementptr i8, ptr %i.w, i64 -88
  %.val4.i.i.i = load ptr, ptr %i.y, align 8, !noalias !1596, !nonnull !8, !noundef !8
  %rhsc148 = load i8, ptr %.val4.i.i.i, align 1
  %i.z = icmp eq i8 %rhsc148, 42
  br i1 %i.z, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h038528baa5f68bc0E.exit", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hb68d7cb0db63cac5E.exit.thread.i.i", !prof !30

._crit_edge.i.i:                                  ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hb68d7cb0db63cac5E.exit.thread.i.i", %bb.d
  %i.aa = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.ab = bitcast <16 x i1> %i.aa to i16
  %i.ac = icmp eq i16 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %bb.o, !prof !10

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hb68d7cb0db63cac5E.exit.thread.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hb68d7cb0db63cac5E.exit.i.i", %.lr.ph.i.i
  %i.ad = add i16 %.sroa.06.0.i34.i.i, -1
  %i.ae = and i16 %i.ad, %.sroa.06.0.i34.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.af = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ag = add i64 %.sroa.01.0.i.i.i, %i.af
end_hunk_0
