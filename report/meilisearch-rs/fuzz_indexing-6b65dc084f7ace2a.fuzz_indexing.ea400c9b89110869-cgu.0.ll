Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/fuzz_indexing-6b65dc084f7ace2a.fuzz_indexing.ea400c9b89110869-cgu.0?download=true
inline.NumInlined: 15600
inline.NumDeleted: 7430
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 156
begin_hunk_0_@_ZN5milli6update3new7extract5cache19DelAddRoaringBitmap21union_and_clear_bbbul17hb17ea56f3a8f09acE:bb.a
.lr.ph:                                           ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h2920581da2e4806fE.exit", %.lr.ph
  %i.m = phi ptr [ %i.r, %.lr.ph ], [ %i.j, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h2920581da2e4806fE.exit" ] ; 2 uses
  %i.n = phi { ptr, i64 } [ %i.q, %.lr.ph ], [ %i.i, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h2920581da2e4806fE.exit" ]
  %i.o = extractvalue { ptr, i64 } %i.n, 1
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.o
  tail call fastcc void @"_ZN7roaring6bitmap4iter107_$LT$impl$u20$core..iter..traits..collect..Extend$LT$u32$GT$$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$6extend17hfb69404001f46737E"(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %i.m, ptr noundef %i.p)
  %i.q = call fastcc { ptr, i64 } @"_ZN20bumparaw_collections5bbbul21IterAndClear$LT$B$GT$10next_block17h59bc7863c80581feE"(ptr noalias noundef align 8 dereferenceable(48) %i.b) ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.q, 0        ; 2 uses
  %.not34 = icmp eq ptr %i.r, null
  br i1 %.not34, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h2920581da2e4806fE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !range !52, !alias.scope !32591, !noundef !16
  %.not.i38 = icmp eq i64 %i.t, -9223372036854775808
  br i1 %.not.i38, label %"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$roaring..bitmap..RoaringBitmap$GT$$GT$17h05209d257acee8c7E.exit.i39", label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h2920581da2e4806fE.exit42"

"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$roaring..bitmap..RoaringBitmap$GT$$GT$17h05209d257acee8c7E.exit.i39": ; preds = %bb.d
  store i64 0, ptr %i.s, align 8, !alias.scope !32591
  %.sroa.56.0..sroa_idx7.i40 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.56.0..sroa_idx7.i40, align 8, !alias.scope !32591
  %.sroa.6.0..sroa_idx9.i41 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %.sroa.6.0..sroa_idx9.i41, align 8, !alias.scope !32591
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h2920581da2e4806fE.exit42"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h2920581da2e4806fE.exit42": ; preds = %bb.d, %"_ZN4core3ptr79drop_in_place$LT$core..option..Option$LT$roaring..bitmap..RoaringBitmap$GT$$GT$17h05209d257acee8c7E.exit.i39"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.48.0.copyload) ]
  %.not36 = icmp eq ptr %.sroa.811.0.copyload, null
  %..sroa.1012.0.copyload = select i1 %.not36, i64 undef, i64 %.sroa.1012.0.copyload
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.48.0.copyload, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <2 x i64> %i.l, ptr %i.v, align 8
  store i32 0, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.sroa.811.0.copyload, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %..sroa.1012.0.copyload, ptr %i.x, align 8
  %i.y = call fastcc { ptr, i64 } @"_ZN20bumparaw_collections5bbbul21IterAndClear$LT$B$GT$10next_block17h59bc7863c80581feE"(ptr noalias noundef align 8 dereferenceable(48) %i.a) ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 0        ; 2 uses
  %.not3744 = icmp eq ptr %i.z, null
  br i1 %.not3744, label %._crit_edge46, label %.lr.ph45

bb.e:                                             ; preds = %._crit_edge46, %bb.c
  ret void

.lr.ph45:                                         ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h2920581da2e4806fE.exit42", %.lr.ph45
  %i.aa = phi ptr [ %i.af, %.lr.ph45 ], [ %i.z, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h2920581da2e4806fE.exit42" ] ; 2 uses
  %i.ab = phi { ptr, i64 } [ %i.ae, %.lr.ph45 ], [ %i.y, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h2920581da2e4806fE.exit42" ]
  %i.ac = extractvalue { ptr, i64 } %i.ab, 1
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ac
  tail call fastcc void @"_ZN7roaring6bitmap4iter107_$LT$impl$u20$core..iter..traits..collect..Extend$LT$u32$GT$$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$6extend17hfb69404001f46737E"(ptr noalias noundef align 8 dereferenceable(24) %i.s, ptr noundef nonnull %i.aa, ptr noundef %i.ad)
  %i.ae = call fastcc { ptr, i64 } @"_ZN20bumparaw_collections5bbbul21IterAndClear$LT$B$GT$10next_block17h59bc7863c80581feE"(ptr noalias noundef align 8 dereferenceable(48) %i.a) ; 2 uses
  %i.af = extractvalue { ptr, i64 } %i.ae, 0      ; 2 uses
  %.not37 = icmp eq ptr %i.af, null
  br i1 %.not37, label %._crit_edge46, label %.lr.ph45

._crit_edge46:                                    ; preds = %.lr.ph45, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h2920581da2e4806fE.exit42"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN5milli6update3new7extract7vectors6Chunks20insert_autogenerated17he479c56baaf53f45E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(320) %0, ptr noalias noundef nonnull align 8 dereferenceable(224) %1, i32 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %5, ptr noundef nonnull align 8 %6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %7) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [320 x i8], align 8               ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [320 x i8], align 8               ; 10 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.6.i.i.i = alloca [32 x i8], align 8      ; 6 uses
  %i.n = alloca [72 x i8], align 8                ; 7 uses
  %i.o = alloca [72 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [320 x i8], align 8               ; 6 uses
  %i.r = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.11 = alloca [16 x i8], align 8           ; 3 uses
  %.sroa.12 = alloca [272 x i8], align 8          ; 2 uses
  tail call void @_ZN5milli6update3new7extract7vectors6Chunks10set_status17h2844adf747d72936E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %1, i32 noundef %2, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = load i8, ptr %i.s, align 8, !range !33, !noundef !16
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !16, !align !21, !noundef !16 ; 4 uses
  br i1 %i.u, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !16, !align !21, !noundef !16
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !16 ; 2 uses
  %.idx = shl nuw nsw i64 %i.ab, 7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %5, ptr %i.r, align 8, !noalias !32641
  %i.ad = icmp eq i64 %i.ab, 0
  br i1 %i.ad, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.69.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.66.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %.sroa.5.0..sroa_idx17.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i
  %.sroa.0.016.i = phi ptr [ %i.w, %.lr.ph.i ], [ %i.ak, %bb.f ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i, i64 128 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i, i64 120
  %i.an = load i8, ptr %i.am, align 8, !alias.scope !32642, !noalias !32643, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !32644
  call void @llvm.experimental.noalias.scope.decl(metadata !32645)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !32646
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !32647
  store ptr %i.r, ptr %i.l, align 8, !noalias !32647
  store ptr %i.z, ptr %i.ae, align 8, !noalias !32647
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !32647
  store ptr %i.l, ptr %i.k, align 8, !noalias !32647
  store ptr null, ptr %i.af, align 8, !noalias !32647
  call void @_ZN5milli6vector13json_template12JsonTemplate6render17h87f6367ff961e677E(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.al, ptr noundef nonnull align 1 %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @111), !noalias !32648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !32647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !32647
  %i.ao = load i64, ptr %i.m, align 8, !range !53, !noalias !32646, !noundef !16 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, -9223372036854775803
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false), !noalias !32646
  br i1 %i.ap, label %"_ZN111_$LT$milli..vector..extractor..IgnoreErrorExtractor$LT$E$GT$$u20$as$u20$milli..vector..extractor..Extractor$GT$7extract17h2b1b6dcd7045a9b3E.exit.i.thread", label %bb.d

"_ZN111_$LT$milli..vector..extractor..IgnoreErrorExtractor$LT$E$GT$$u20$as$u20$milli..vector..extractor..Extractor$GT$7extract17h2b1b6dcd7045a9b3E.exit.i.thread": ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !32646
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i.i, i64 32, i1 false), !noalias !32649
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  store i64 -9223372036854775802, ptr %i.n, align 8, !alias.scope !32645, !noalias !32644
  call fastcc void @"_ZN4core3ptr139drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$serde_json..value..Value$GT$$C$milli..vector..json_template..Error$GT$$GT$17hea0dee8e25848b29E"(ptr noalias noundef align 8 dereferenceable(72) %i.n), !noalias !32650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !32644
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.69.0..sroa_idx.i.i.i, i64 32, i1 false), !noalias !32649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !32646
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i.i, i64 32, i1 false), !noalias !32649
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !32641
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx17.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx.i.i.i, i64 64, i1 false), !noalias !32641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !32644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !32641
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !32641
  store i32 %2, ptr %i.ah, align 8, !noalias !32641
  store ptr %3, ptr %i.p, align 8, !noalias !32641
  store i64 %4, ptr %i.ai, align 8, !noalias !32641
  store i8 %i.an, ptr %i.aj, align 4, !noalias !32641
  store i64 %i.ao, ptr %i.o, align 8, !noalias !32641
  call fastcc void @"_ZN5milli6vector7session25EmbedSession$LT$C$C$I$GT$17request_embedding17h549d9c1d557a30c9E"(ptr noalias noundef align 8 captures(address) dereferenceable(320) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(136) %i.x, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %7), !noalias !32651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !32641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !32641
  %i.aq = load i64, ptr %i.q, align 8, !range !40, !noalias !32641, !noundef !16 ; 2 uses
  %.not10.i = icmp eq i64 %i.aq, 97
  br i1 %.not10.i, label %bb.e, label %bb.x

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !32641
  br label %bb.f

bb.f:                                             ; preds = %"_ZN111_$LT$milli..vector..extractor..IgnoreErrorExtractor$LT$E$GT$$u20$as$u20$milli..vector..extractor..Extractor$GT$7extract17h2b1b6dcd7045a9b3E.exit.i.thread", %bb.e
  %i.ar = icmp eq ptr %i.ak, %i.ac
  br i1 %i.ar, label %.loopexit, label %bb.c

bb.g:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !16, !align !21, !noundef !16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 49
  %i.aw = load i8, ptr %i.av, align 1, !range !33, !noundef !16
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %.split.i18, label %.split.i

.split.i:                                         ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %5, ptr %i.j, align 8, !noalias !32652
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !32652
  store ptr %i.au, ptr %i.i, align 8, !noalias !32652
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %6, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !32653
  %.sroa.638.8..sroa.8.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.w, ptr %.sroa.638.8..sroa.8.0..sroa_idx.i.sroa_idx, align 8, !noalias !32653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !32652
  call fastcc void @"_ZN107_$LT$milli..vector..extractor..DocumentTemplateExtractor$u20$as$u20$milli..vector..extractor..Extractor$GT$7extract17he24bacd611ad1118E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr nonnull readonly %3, i64 %4), !noalias !32654
  %i.ay = load i64, ptr %i.h, align 8, !range !59, !noalias !32652, !noundef !16 ; 2 uses
  %.not21.i = icmp eq i64 %i.ay, -9223372036854775807
  %8 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.az = load ptr, ptr %8, align 8, !noalias !32652 ; 3 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ba = load i64, ptr %9, align 8, !noalias !32652 ; 2 uses
  br i1 %.not21.i, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !32652
  %.not22.i = icmp eq ptr %i.az, null
  br i1 %.not22.i, label %bb.t, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !32652
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !32652
  %10 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 %2, ptr %10, align 8, !noalias !32652
  store ptr %3, ptr %i.f, align 8, !noalias !32652
  %11 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %4, ptr %11, align 8, !noalias !32652
  %12 = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i8 0, ptr %12, align 4, !noalias !32652
  call fastcc void @"_ZN5milli6vector7session25EmbedSession$LT$C$C$I$GT$17request_embedding17haa9a676a18c9c6faE"(ptr noalias noundef align 8 captures(address) dereferenceable(320) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(136) %i.as, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.az, i64 noundef %i.ba, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %7), !noalias !32655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !32652
  %i.bb = load i64, ptr %i.g, align 8, !range !40, !noalias !32652, !noundef !16 ; 2 uses
  %.not23.i = icmp eq i64 %i.bb, 97
  br i1 %.not23.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.8.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.8.0.copyload29 = load i64, ptr %.sroa.8.0..sroa_idx28, align 8, !noalias !32656
  %.sroa.9.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.9.0.copyload31 = load ptr, ptr %.sroa.9.0..sroa_idx30, align 8, !noalias !32656
  %.sroa.10.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.10.0.copyload33 = load i64, ptr %.sroa.10.0..sroa_idx32, align 8, !noalias !32656
  %.sroa.11.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx34, i64 16, i1 false)
  %.sroa.12.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.12.0..sroa_idx35, i64 272, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !32652
  br label %bb.s

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !32652
  br label %bb.t

bb.l:                                             ; preds = %.split.i
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !32652
  br label %bb.s

.split.i18:                                       ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %5, ptr %i.e, align 8, !noalias !32657
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !32657
  store ptr %i.au, ptr %i.d, align 8, !noalias !32657
  %.sroa.8.0..sroa_idx.i20 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %6, ptr %.sroa.8.0..sroa_idx.i20, align 8, !noalias !32658
  %.sroa.6.8..sroa.8.0..sroa_idx.i20.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.w, ptr %.sroa.6.8..sroa.8.0..sroa_idx.i20.sroa_idx, align 8, !noalias !32658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32659
  call fastcc void @"_ZN107_$LT$milli..vector..extractor..DocumentTemplateExtractor$u20$as$u20$milli..vector..extractor..Extractor$GT$7extract17he24bacd611ad1118E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr nonnull readonly %3, i64 %4), !noalias !32660
  %i.bc = load i64, ptr %i.a, align 8, !range !59, !noalias !32659, !noundef !16 ; 4 uses
  %.not.i.i = icmp eq i64 %i.bc, -9223372036854775807
  %.sink3.i.i.i.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %.sink3.i.i.i.sroa.gep2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  br i1 %.not.i.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %.split.i18
  call void @llvm.experimental.noalias.scope.decl(metadata !32661)
  call void @llvm.experimental.noalias.scope.decl(metadata !32662)
  call void @llvm.experimental.noalias.scope.decl(metadata !32663)
  %i.bd = icmp eq i64 %i.bc, -9223372036854775808
  br i1 %i.bd, label %"_ZN4core3ptr126drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$$RF$str$GT$$C$milli..prompt..error..RenderPromptError$GT$$GT$17hefbd0e98639ba24dE.exit.i.i", label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !32664)
  call void @llvm.experimental.noalias.scope.decl(metadata !32665)
  %i.be = icmp eq i64 %i.bc, 0
  br i1 %i.be, label %"_ZN4core3ptr126drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$$RF$str$GT$$C$milli..prompt..error..RenderPromptError$GT$$GT$17hefbd0e98639ba24dE.exit.i.i", label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %.sink3.i.i.i.sroa.gep2.i.i, align 8, !alias.scope !32666, !noalias !32659, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %i.bc, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !32667
  br label %"_ZN4core3ptr126drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$$RF$str$GT$$C$milli..prompt..error..RenderPromptError$GT$$GT$17hefbd0e98639ba24dE.exit.i.i"

"_ZN4core3ptr126drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$$RF$str$GT$$C$milli..prompt..error..RenderPromptError$GT$$GT$17hefbd0e98639ba24dE.exit.i.i": ; preds = %bb.o, %bb.n, %bb.m
  %.sink3.i.i.i.sroa.phi.i.i = phi ptr [ %.sink3.i.i.i.sroa.gep.i.i, %bb.n ], [ %.sink3.i.i.i.sroa.gep.i.i, %bb.o ], [ %.sink3.i.i.i.sroa.gep2.i.i, %bb.m ]
  %.val.i.i.i.i.i = load ptr, ptr %.sink3.i.i.i.sroa.phi.i.i, align 8, !alias.scope !32668, !noalias !32659, !nonnull !16, !noundef !16
  call fastcc void @"_ZN4core3ptr53drop_in_place$LT$liquid_core..error..error..Error$GT$17hddf6601f23b4d3e0E"(ptr nonnull %.val.i.i.i.i.i), !noalias !32660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32659
  br label %bb.v

bb.p:                                             ; preds = %.split.i18
  %13 = load ptr, ptr %.sink3.i.i.i.sroa.gep2.i.i, align 8, !noalias !32659, !align !22, !noundef !16 ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bf = load i64, ptr %14, align 8, !noalias !32659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32659
  %.not9.i = icmp eq ptr %13, null
  br i1 %.not9.i, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !32657
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !32657
  %15 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %2, ptr %15, align 8, !noalias !32657
  store ptr %3, ptr %i.b, align 8, !noalias !32657
  %16 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %4, ptr %16, align 8, !noalias !32657
  %17 = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i8 0, ptr %17, align 4, !noalias !32657
  call fastcc void @"_ZN5milli6vector7session25EmbedSession$LT$C$C$I$GT$17request_embedding17haa9a676a18c9c6faE"(ptr noalias noundef align 8 captures(address) dereferenceable(320) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(136) %i.as, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %13, i64 noundef %i.bf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %7), !noalias !32669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !32657
  %i.bg = load i64, ptr %i.c, align 8, !range !40, !noalias !32657, !noundef !16 ; 2 uses
  %.not11.i = icmp eq i64 %i.bg, 97
  br i1 %.not11.i, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !32657
  br label %bb.v

bb.s:                                             ; preds = %bb.l, %bb.j
  %.sroa.10.0 = phi i64 [ %.sroa.10.0.copyload33, %bb.j ], [ %i.ba, %bb.l ]
  %.sroa.9.0 = phi ptr [ %.sroa.9.0.copyload31, %bb.j ], [ %i.az, %bb.l ]
  %.sroa.8.0 = phi i64 [ %.sroa.8.0.copyload29, %bb.j ], [ %i.ay, %bb.l ]
  %.sroa.026.0 = phi i64 [ %i.bb, %bb.j ], [ 67, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !32652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 %.sroa.026.0, ptr %0, align 8
  %.sroa.279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.8.0, ptr %.sroa.279.0..sroa_idx, align 8
  %.sroa.380.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9.0, ptr %.sroa.380.0..sroa_idx, align 8
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.10.0, ptr %.sroa.481.0..sroa_idx, align 8
  %.sroa.582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.582.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, i64 16, i1 false)
  %.sroa.683.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.683.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.12, i64 272, i1 false)
  br label %bb.y

bb.t:                                             ; preds = %bb.k, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !32652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.w

bb.u:                                             ; preds = %bb.q
  %.sroa.7.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.253.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(312) %.sroa.7.0..sroa_idx24, i64 312, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !32657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !32657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.bg, ptr %0, align 8
  br label %bb.y

bb.v:                                             ; preds = %bb.r, %bb.p, %"_ZN4core3ptr126drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$$RF$str$GT$$C$milli..prompt..error..RenderPromptError$GT$$GT$17hefbd0e98639ba24dE.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !32657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.v, %.loopexit
  store i64 97, ptr %0, align 8
  br label %bb.y

bb.x:                                             ; preds = %bb.d
  %.sroa.743.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.293.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(312) %.sroa.743.0..sroa_idx44, i64 312, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !32641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  store i64 %i.aq, ptr %0, align 8
  br label %bb.y

.loopexit:                                        ; preds = %bb.f, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.w

bb.y:                                             ; preds = %bb.x, %bb.u, %bb.s, %bb.w
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN5milli6update3new7extract7vectors6Chunks20update_autogenerated17hd259d8f90822225cE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(320) %0, ptr noalias noundef nonnull align 8 dereferenceable(224) %1, i32 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %5, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %6, ptr noundef nonnull align 8 %7, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %8, i1 noundef zeroext %9, i1 noundef zeroext %10) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.6.i.i.i27 = alloca [32 x i8], align 8    ; 6 uses
  %i.d = alloca [72 x i8], align 8                ; 7 uses
  %i.e = alloca [72 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [320 x i8], align 8               ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.6.i.i22.i = alloca [32 x i8], align 8    ; 6 uses
  %i.k = alloca [72 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.6.i.i.i = alloca [32 x i8], align 8      ; 6 uses
  %i.o = alloca [72 x i8], align 8                ; 6 uses
  %.sroa.5.i.i = alloca [64 x i8], align 8        ; 4 uses
  %i.p = alloca [48 x i8], align 8                ; 5 uses
  %i.q = alloca [320 x i8], align 8               ; 6 uses
  %i.r = alloca [72 x i8], align 8                ; 9 uses
  %i.s = alloca [24 x i8], align 8                ; 10 uses
  %i.t = alloca [72 x i8], align 8                ; 7 uses
  %i.u = alloca [40 x i8], align 8                ; 8 uses
  %i.v = alloca [40 x i8], align 8                ; 7 uses
  %i.w = alloca [48 x i8], align 8                ; 5 uses
  %i.x = alloca [320 x i8], align 8               ; 10 uses
  %i.y = alloca [24 x i8], align 8                ; 8 uses
  %i.z = alloca [24 x i8], align 8                ; 7 uses
  %i.aa = alloca [48 x i8], align 8               ; 5 uses
  %i.ab = alloca [320 x i8], align 8              ; 10 uses
  %i.ac = alloca [24 x i8], align 8               ; 8 uses
  %i.ad = alloca [40 x i8], align 8               ; 9 uses
  %i.ae = alloca [40 x i8], align 8               ; 8 uses
  %i.af = alloca [24 x i8], align 8               ; 7 uses
  %i.ag = alloca [32 x i8], align 8               ; 5 uses
  %i.ah = alloca [24 x i8], align 8               ; 5 uses
  %i.ai = alloca [32 x i8], align 8               ; 5 uses
  %i.aj = alloca [32 x i8], align 8               ; 4 uses
  %i.ak = alloca [24 x i8], align 8               ; 4 uses
  %i.al = alloca [32 x i8], align 8               ; 4 uses
  %i.am = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.13 = alloca [16 x i8], align 8           ; 7 uses
  %.sroa.14 = alloca [272 x i8], align 8          ; 6 uses
  tail call void @_ZN5milli6update3new7extract7vectors6Chunks10set_status17h2844adf747d72936E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %1, i32 noundef %2, i1 noundef zeroext %9, i1 noundef zeroext %10, i1 noundef zeroext false, i1 noundef zeroext true)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ao = load i8, ptr %i.an, align 8, !range !33, !noundef !16
  %i.ap = trunc nuw i8 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !16, !align !21, !noundef !16 ; 5 uses
  br i1 %i.ap, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !16, !align !21, !noundef !16 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aw = load i64, ptr %i.av, align 8, !noundef !16 ; 3 uses
  %.idx = shl nuw nsw i64 %i.aw, 7
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.idx ; 2 uses
  br i1 %9, label %bb.be, label %bb.ao

bb.c:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !16, !align !21, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 49
  %i.bc = load i8, ptr %i.bb, align 1, !range !33, !noundef !16
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %.split33.i, label %.split34.i

.split34.i:                                       ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %.sink3.i.i.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  %.sink3.i.i.i.sroa.gep13.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !32783
  store ptr %i.ba, ptr %i.af, align 8, !noalias !32783
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %7, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !32784
  %.sroa.663.8..sroa.8.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %i.ar, ptr %.sroa.663.8..sroa.8.0..sroa_idx.i.sroa_idx, align 8, !noalias !32784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !32783
  call fastcc void @"_ZN107_$LT$milli..vector..extractor..DocumentTemplateExtractor$u20$as$u20$milli..vector..extractor..Extractor$GT$7extract17h75907ae6b7ff5ba4E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aj, ptr nonnull readonly %3, i64 %4), !noalias !32785
  %i.be = load i64, ptr %i.ae, align 8, !range !59, !noalias !32783, !noundef !16 ; 2 uses
  %.not26.i = icmp eq i64 %i.be, -9223372036854775807
  %11 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.bf = load ptr, ptr %11, align 8, !noalias !32783 ; 5 uses
  %12 = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.bg = load i64, ptr %12, align 8, !noalias !32783 ; 4 uses
  br i1 %.not26.i, label %bb.d, label %bb.s

bb.d:                                             ; preds = %.split34.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !32783
  br i1 %10, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !32783
  call fastcc void @"_ZN107_$LT$milli..vector..extractor..DocumentTemplateExtractor$u20$as$u20$milli..vector..extractor..Extractor$GT$7extract17h22d56ac9748721e2E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ak, ptr nonnull readonly %3, i64 %4), !noalias !32786
  %i.bh = load i64, ptr %i.ad, align 8, !range !59, !noalias !32783, !noundef !16 ; 4 uses
  %.not27.i = icmp eq i64 %i.bh, -9223372036854775807
  br i1 %.not27.i, label %bb.g, label %bb.j

.sink.split.i:                                    ; preds = %"_ZN4core3ptr60drop_in_place$LT$milli..prompt..error..RenderPromptError$GT$17h2c7c0b69b14d3da1E.exit.i53.i", %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !32783
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.split.i, %.sink.split.i, %bb.d
  br i1 %9, label %bb.m, label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.bi = load ptr, ptr %.sink3.i.i.i.sroa.gep13.i, align 8, !noalias !32783, !align !22, !noundef !16 ; 3 uses
  %.not28.i = icmp eq ptr %i.bf, null
  br i1 %.not28.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %13 = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.bj = load i64, ptr %13, align 8, !noalias !32783
  %.not29.i = icmp ne ptr %i.bi, null
  %.not.i.i51.i = icmp eq i64 %i.bg, %i.bj
  %or.cond.i = select i1 %.not29.i, i1 %.not.i.i51.i, i1 false
  br i1 %or.cond.i, label %.split.i, label %.sink.split.i

.split.i:                                         ; preds = %bb.h
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull readonly align 1 %i.bf, ptr nonnull readonly align 1 %i.bi, i64 %i.bg), !alias.scope !32787, !noalias !32786
  %i.bk = icmp eq i32 %bcmp.i.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !32783
  br i1 %i.bk, label %_ZN5milli6update3new7extract7vectors20update_autogenerated17hb0c6e1460be16fe8E.exit, label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.bl = icmp eq ptr %i.bi, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !32783
  br i1 %i.bl, label %_ZN5milli6update3new7extract7vectors20update_autogenerated17hb0c6e1460be16fe8E.exit, label %bb.f

bb.j:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !32788)
  call void @llvm.experimental.noalias.scope.decl(metadata !32789)
  call void @llvm.experimental.noalias.scope.decl(metadata !32790)
  %i.bm = icmp eq i64 %i.bh, -9223372036854775808
  br i1 %i.bm, label %"_ZN4core3ptr60drop_in_place$LT$milli..prompt..error..RenderPromptError$GT$17h2c7c0b69b14d3da1E.exit.i53.i", label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !32791)
  call void @llvm.experimental.noalias.scope.decl(metadata !32792)
  %i.bn = icmp eq i64 %i.bh, 0
  br i1 %i.bn, label %"_ZN4core3ptr60drop_in_place$LT$milli..prompt..error..RenderPromptError$GT$17h2c7c0b69b14d3da1E.exit.i53.i", label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val1.i.i.i.i.i52.i = load ptr, ptr %.sink3.i.i.i.sroa.gep13.i, align 8, !alias.scope !32793, !noalias !32783, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i52.i, i64 noundef %i.bh, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !32794
  br label %"_ZN4core3ptr60drop_in_place$LT$milli..prompt..error..RenderPromptError$GT$17h2c7c0b69b14d3da1E.exit.i53.i"

"_ZN4core3ptr60drop_in_place$LT$milli..prompt..error..RenderPromptError$GT$17h2c7c0b69b14d3da1E.exit.i53.i": ; preds = %bb.l, %bb.k, %bb.j
  %.sink3.i.i.i54.sroa.phi.i = phi ptr [ %.sink3.i.i.i.sroa.gep.i, %bb.k ], [ %.sink3.i.i.i.sroa.gep.i, %bb.l ], [ %.sink3.i.i.i.sroa.gep13.i, %bb.j ]
  %.val.i.i.i55.i = load ptr, ptr %.sink3.i.i.i54.sroa.phi.i, align 8, !alias.scope !32795, !noalias !32783, !nonnull !16, !noundef !16
  call fastcc void @"_ZN4core3ptr53drop_in_place$LT$liquid_core..error..error..Error$GT$17hddf6601f23b4d3e0E"(ptr nonnull %.val.i.i.i55.i), !noalias !32786
  br label %.sink.split.i

bb.m:                                             ; preds = %bb.f
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 168
  call void @_ZN5milli6update3new7extract7vectors26OnEmbeddingDocumentUpdates13clear_vectors17h84d8040ac0d2776aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %14, i32 noundef %2), !noalias !32796
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.f
  %15 = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i32 %2, ptr %15, align 8, !noalias !32783
  store ptr %3, ptr %i.ac, align 8, !noalias !32783
  %16 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %4, ptr %16, align 8, !noalias !32783
  %17 = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  store i8 0, ptr %17, align 4, !noalias !32783
  %.not31.i = icmp eq ptr %i.bf, null
  br i1 %.not31.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !32783
  call fastcc void @"_ZN5milli6vector7session25EmbedSession$LT$C$C$I$GT$17request_embedding17haa9a676a18c9c6faE"(ptr noalias noundef align 8 captures(address) dereferenceable(320) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(136) %i.ay, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ac, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bf, i64 noundef %i.bg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %8), !noalias !32797
  %i.bo = load i64, ptr %i.ab, align 8, !range !40, !noalias !32783, !noundef !16 ; 2 uses
  %.not33.i = icmp eq i64 %i.bo, 97
  br i1 %.not33.i, label %bb.r, label %bb.q

bb.p:                                             ; preds = %bb.n
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !32783
  %19 = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !noalias !32783
  store i64 -9223372036854775808, ptr %i.aa, align 8, !noalias !32783
  call void @"_ZN116_$LT$milli..update..new..extract..vectors..OnEmbeddingDocumentUpdates$u20$as$u20$milli..vector..session..OnEmbed$GT$26process_embedding_response17h240a23542517bb06E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %18, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.aa), !noalias !32798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !32783
  br label %_ZN5milli6update3new7extract7vectors20update_autogenerated17hb0c6e1460be16fe8E.exit

bb.q:                                             ; preds = %bb.o
  %.sroa.10.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.10.0.copyload45 = load i64, ptr %.sroa.10.0..sroa_idx44, align 8, !noalias !32799
  %.sroa.11.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.11.0.copyload49 = load ptr, ptr %.sroa.11.0..sroa_idx48, align 8, !noalias !32799
  %.sroa.12.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.12.0.copyload53 = load i64, ptr %.sroa.12.0..sroa_idx52, align 8, !noalias !32799
  %.sroa.13.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.0..sroa_idx56, i64 16, i1 false), !noalias !32799
  %.sroa.14.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.14.0..sroa_idx58, i64 272, i1 false), !noalias !32799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !32783
  br label %_ZN5milli6update3new7extract7vectors20update_autogenerated17hb0c6e1460be16fe8E.exit

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !32783
  br label %_ZN5milli6update3new7extract7vectors20update_autogenerated17hb0c6e1460be16fe8E.exit

bb.s:                                             ; preds = %.split34.i
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i, i64 16, i1 false), !noalias !32799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !32783
  br label %_ZN5milli6update3new7extract7vectors20update_autogenerated17hb0c6e1460be16fe8E.exit

_ZN5milli6update3new7extract7vectors20update_autogenerated17hb0c6e1460be16fe8E.exit: ; preds = %bb.q, %bb.s, %bb.r, %bb.p, %bb.i, %.split.i
  %.sroa.12.2 = phi i64 [ undef, %bb.r ], [ undef, %.split.i ], [ undef, %bb.i ], [ undef, %bb.p ], [ %.sroa.12.0.copyload53, %bb.q ], [ %i.bg, %bb.s ]
  %.sroa.11.2 = phi ptr [ undef, %bb.r ], [ undef, %.split.i ], [ undef, %bb.i ], [ undef, %bb.p ], [ %.sroa.11.0.copyload49, %bb.q ], [ %i.bf, %bb.s ]
  %.sroa.10.2 = phi i64 [ undef, %bb.r ], [ undef, %.split.i ], [ undef, %bb.i ], [ undef, %bb.p ], [ %.sroa.10.0.copyload45, %bb.q ], [ %i.be, %bb.s ]
  %.sroa.041.2 = phi i64 [ 97, %bb.r ], [ 97, %.split.i ], [ 97, %bb.i ], [ 97, %bb.p ], [ %i.bo, %bb.q ], [ 67, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !32783
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %bb.ak

.split33.i:                                       ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !32800
  store ptr %i.ba, ptr %i.z, align 8, !noalias !32800
  %.sroa.8.0..sroa_idx.i20 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %7, ptr %.sroa.8.0..sroa_idx.i20, align 8, !noalias !32801
  %.sroa.6.8..sroa.8.0..sroa_idx.i20.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.ar, ptr %.sroa.6.8..sroa.8.0..sroa_idx.i20.sroa_idx, align 8, !noalias !32801
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !32802
  call fastcc void @"_ZN107_$LT$milli..vector..extractor..DocumentTemplateExtractor$u20$as$u20$milli..vector..extractor..Extractor$GT$7extract17h75907ae6b7ff5ba4E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.al, ptr nonnull readonly %3, i64 %4), !noalias !32803
  %i.bp = load i64, ptr %i.v, align 8, !range !59, !noalias !32802, !noundef !16 ; 4 uses
  %.not.i.i = icmp eq i64 %i.bp, -9223372036854775807
  %.sink3.i.i.i.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  %.sink3.i.i.i.sroa.gep2.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  br i1 %.not.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.split33.i
  %20 = load ptr, ptr %.sink3.i.i.i.sroa.gep2.i.i, align 8, !noalias !32802, !align !22, !noundef !16
  %21 = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.bq = load i64, ptr %21, align 8, !noalias !32802
  br label %bb.x

bb.u:                                             ; preds = %.split33.i
  call void @llvm.experimental.noalias.scope.decl(metadata !32804)
  call void @llvm.experimental.noalias.scope.decl(metadata !32805)
  call void @llvm.experimental.noalias.scope.decl(metadata !32806)
  %i.br = icmp eq i64 %i.bp, -9223372036854775808
  br i1 %i.br, label %"_ZN4core3ptr126drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$$RF$str$GT$$C$milli..prompt..error..RenderPromptError$GT$$GT$17hefbd0e98639ba24dE.exit.i.i", label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !32807)
  call void @llvm.experimental.noalias.scope.decl(metadata !32808)
  %i.bs = icmp eq i64 %i.bp, 0
  br i1 %i.bs, label %"_ZN4core3ptr126drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$$RF$str$GT$$C$milli..prompt..error..RenderPromptError$GT$$GT$17hefbd0e98639ba24dE.exit.i.i", label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %.sink3.i.i.i.sroa.gep2.i.i, align 8, !alias.scope !32809, !noalias !32802, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %i.bp, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !32810
  br label %"_ZN4core3ptr126drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$$RF$str$GT$$C$milli..prompt..error..RenderPromptError$GT$$GT$17hefbd0e98639ba24dE.exit.i.i"

"_ZN4core3ptr126drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$$RF$str$GT$$C$milli..prompt..error..RenderPromptError$GT$$GT$17hefbd0e98639ba24dE.exit.i.i": ; preds = %bb.w, %bb.v, %bb.u
  %.sink3.i.i.i.sroa.phi.i.i = phi ptr [ %.sink3.i.i.i.sroa.gep.i.i, %bb.v ], [ %.sink3.i.i.i.sroa.gep.i.i, %bb.w ], [ %.sink3.i.i.i.sroa.gep2.i.i, %bb.u ]
  %.val.i.i.i.i.i = load ptr, ptr %.sink3.i.i.i.sroa.phi.i.i, align 8, !alias.scope !32811, !noalias !32802, !nonnull !16, !noundef !16
  call fastcc void @"_ZN4core3ptr53drop_in_place$LT$liquid_core..error..error..Error$GT$17hddf6601f23b4d3e0E"(ptr nonnull %.val.i.i.i.i.i), !noalias !32803
  br label %bb.x

bb.x:                                             ; preds = %"_ZN4core3ptr126drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$$RF$str$GT$$C$milli..prompt..error..RenderPromptError$GT$$GT$17hefbd0e98639ba24dE.exit.i.i", %bb.t
  %.sroa.5.0.i.i = phi i64 [ %i.bq, %bb.t ], [ undef, %"_ZN4core3ptr126drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$$RF$str$GT$$C$milli..prompt..error..RenderPromptError$GT$$GT$17hefbd0e98639ba24dE.exit.i.i" ] ; 3 uses
  %.sroa.0.0.i.i = phi ptr [ %20, %bb.t ], [ null, %"_ZN4core3ptr126drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$$RF$str$GT$$C$milli..prompt..error..RenderPromptError$GT$$GT$17hefbd0e98639ba24dE.exit.i.i" ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !32802
  br i1 %10, label %.noexc46.i, label %.thread29.i

.noexc46.i:                                       ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !32812
  call fastcc void @"_ZN107_$LT$milli..vector..extractor..DocumentTemplateExtractor$u20$as$u20$milli..vector..extractor..Extractor$GT$7extract17h22d56ac9748721e2E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am, ptr nonnull readonly %3, i64 %4), !noalias !32813
  %i.bt = load i64, ptr %i.u, align 8, !range !59, !noalias !32812, !noundef !16 ; 4 uses
  %.not.i37.i = icmp eq i64 %i.bt, -9223372036854775807
  %.sink3.i.i.i.sroa.gep.i38.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %.sink3.i.i.i.sroa.gep2.i39.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  br i1 %.not.i37.i, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %.noexc46.i
  call void @llvm.experimental.noalias.scope.decl(metadata !32814)
  call void @llvm.experimental.noalias.scope.decl(metadata !32815)
  call void @llvm.experimental.noalias.scope.decl(metadata !32816)
  %i.bu = icmp eq i64 %i.bt, -9223372036854775808
  br i1 %i.bu, label %"_ZN4core3ptr126drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$$RF$str$GT$$C$milli..prompt..error..RenderPromptError$GT$$GT$17hefbd0e98639ba24dE.exit.i41.i", label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !32817)
  call void @llvm.experimental.noalias.scope.decl(metadata !32818)
  %i.bv = icmp eq i64 %i.bt, 0
  br i1 %i.bv, label %"_ZN4core3ptr126drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$$RF$str$GT$$C$milli..prompt..error..RenderPromptError$GT$$GT$17hefbd0e98639ba24dE.exit.i41.i", label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.val1.i.i.i.i.i.i40.i = load ptr, ptr %.sink3.i.i.i.sroa.gep2.i39.i, align 8, !alias.scope !32819, !noalias !32812, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i40.i, i64 noundef %i.bt, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !32820
  br label %"_ZN4core3ptr126drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$$RF$str$GT$$C$milli..prompt..error..RenderPromptError$GT$$GT$17hefbd0e98639ba24dE.exit.i41.i"

"_ZN4core3ptr126drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$$RF$str$GT$$C$milli..prompt..error..RenderPromptError$GT$$GT$17hefbd0e98639ba24dE.exit.i41.i": ; preds = %bb.aa, %bb.z, %bb.y
  %.sink3.i.i.i.sroa.phi.i42.i = phi ptr [ %.sink3.i.i.i.sroa.gep.i38.i, %bb.z ], [ %.sink3.i.i.i.sroa.gep.i38.i, %bb.aa ], [ %.sink3.i.i.i.sroa.gep2.i39.i, %bb.y ]
  %.val.i.i.i.i43.i = load ptr, ptr %.sink3.i.i.i.sroa.phi.i42.i, align 8, !alias.scope !32821, !noalias !32812, !nonnull !16, !noundef !16
  call fastcc void @"_ZN4core3ptr53drop_in_place$LT$liquid_core..error..error..Error$GT$17hddf6601f23b4d3e0E"(ptr nonnull %.val.i.i.i.i43.i), !noalias !32813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !32812
  %.not1521.i = icmp eq ptr %.sroa.0.0.i.i, null
  br i1 %.not1521.i, label %_ZN5milli6update3new7extract7vectors20update_autogenerated17haf627a24406186b3E.exit, label %.thread29.i

.thread29.i:                                      ; preds = %bb.ad, %.split.i23, %bb.ac, %"_ZN4core3ptr126drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$$RF$str$GT$$C$milli..prompt..error..RenderPromptError$GT$$GT$17hefbd0e98639ba24dE.exit.i41.i", %bb.x
  br i1 %9, label %bb.ae, label %bb.af

bb.ab:                                            ; preds = %.noexc46.i
  %i.bw = load ptr, ptr %.sink3.i.i.i.sroa.gep2.i39.i, align 8, !noalias !32812, !align !22, !noundef !16 ; 3 uses
  %22 = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bx = load i64, ptr %22, align 8, !noalias !32812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !32812
  %.not15.i = icmp eq ptr %.sroa.0.0.i.i, null
  br i1 %.not15.i, label %.split.i23, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not16.i = icmp ne ptr %i.bw, null
  %.not.i.i48.i = icmp eq i64 %.sroa.5.0.i.i, %i.bx
  %or.cond.i21 = select i1 %.not16.i, i1 %.not.i.i48.i, i1 false
  br i1 %or.cond.i21, label %bb.ad, label %.thread29.i

.split.i23:                                       ; preds = %bb.ab
  %i.by = icmp eq ptr %i.bw, null
  br i1 %i.by, label %_ZN5milli6update3new7extract7vectors20update_autogenerated17haf627a24406186b3E.exit, label %.thread29.i

bb.ad:                                            ; preds = %bb.ac
  %bcmp.i.i.i22 = call i32 @bcmp(ptr nonnull readonly align 1 %.sroa.0.0.i.i, ptr nonnull readonly align 1 %i.bw, i64 %.sroa.5.0.i.i), !alias.scope !32822, !noalias !32813
  %i.bz = icmp eq i32 %bcmp.i.i.i22, 0
  br i1 %i.bz, label %_ZN5milli6update3new7extract7vectors20update_autogenerated17haf627a24406186b3E.exit, label %.thread29.i

bb.ae:                                            ; preds = %.thread29.i
  %23 = getelementptr inbounds nuw i8, ptr %1, i64 168
  call void @_ZN5milli6update3new7extract7vectors26OnEmbeddingDocumentUpdates13clear_vectors17h84d8040ac0d2776aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %23, i32 noundef %2), !noalias !32823
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.thread29.i
  %24 = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i32 %2, ptr %24, align 8, !noalias !32800
  store ptr %3, ptr %i.y, align 8, !noalias !32800
  %25 = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %4, ptr %25, align 8, !noalias !32800
  %26 = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  store i8 0, ptr %26, align 4, !noalias !32800
  %.not17.i = icmp eq ptr %.sroa.0.0.i.i, null
  br i1 %.not17.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !32800
  call fastcc void @"_ZN5milli6vector7session25EmbedSession$LT$C$C$I$GT$17request_embedding17haa9a676a18c9c6faE"(ptr noalias noundef align 8 captures(address) dereferenceable(320) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(136) %i.ay, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.y, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.sroa.5.0.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %8), !noalias !32824
  %i.ca = load i64, ptr %i.x, align 8, !range !40, !noalias !32800, !noundef !16 ; 2 uses
  %.not20.i = icmp eq i64 %i.ca, 97
  br i1 %.not20.i, label %bb.aj, label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %27 = getelementptr inbounds nuw i8, ptr %1, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !32800
  %28 = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !32800
  store i64 -9223372036854775808, ptr %i.w, align 8, !noalias !32800
  call void @"_ZN116_$LT$milli..update..new..extract..vectors..OnEmbeddingDocumentUpdates$u20$as$u20$milli..vector..session..OnEmbed$GT$26process_embedding_response17h240a23542517bb06E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %27, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.w), !noalias !32825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !32800
  br label %_ZN5milli6update3new7extract7vectors20update_autogenerated17haf627a24406186b3E.exit

bb.ai:                                            ; preds = %bb.ag
  %.sroa.10.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.10.0.copyload47 = load i64, ptr %.sroa.10.0..sroa_idx46, align 8, !noalias !32826
  %.sroa.11.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.11.0.copyload51 = load ptr, ptr %.sroa.11.0..sroa_idx50, align 8, !noalias !32826
  %.sroa.12.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.12.0.copyload55 = load i64, ptr %.sroa.12.0..sroa_idx54, align 8, !noalias !32826
  %.sroa.13.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.0..sroa_idx57, i64 16, i1 false), !noalias !32826
  %.sroa.14.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.14.0..sroa_idx59, i64 272, i1 false), !noalias !32826
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !32800
  br label %_ZN5milli6update3new7extract7vectors20update_autogenerated17haf627a24406186b3E.exit

bb.aj:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !32800
  br label %_ZN5milli6update3new7extract7vectors20update_autogenerated17haf627a24406186b3E.exit

_ZN5milli6update3new7extract7vectors20update_autogenerated17haf627a24406186b3E.exit: ; preds = %bb.aj, %bb.ah, %bb.ad, %.split.i23, %"_ZN4core3ptr126drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$$RF$str$GT$$C$milli..prompt..error..RenderPromptError$GT$$GT$17hefbd0e98639ba24dE.exit.i41.i", %bb.ai
  %.sroa.12.3 = phi i64 [ %.sroa.12.0.copyload55, %bb.ai ], [ undef, %"_ZN4core3ptr126drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$$RF$str$GT$$C$milli..prompt..error..RenderPromptError$GT$$GT$17hefbd0e98639ba24dE.exit.i41.i" ], [ undef, %.split.i23 ], [ undef, %bb.ad ], [ undef, %bb.ah ], [ undef, %bb.aj ]
  %.sroa.11.3 = phi ptr [ %.sroa.11.0.copyload51, %bb.ai ], [ undef, %"_ZN4core3ptr126drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$$RF$str$GT$$C$milli..prompt..error..RenderPromptError$GT$$GT$17hefbd0e98639ba24dE.exit.i41.i" ], [ undef, %.split.i23 ], [ undef, %bb.ad ], [ undef, %bb.ah ], [ undef, %bb.aj ]
  %.sroa.10.3 = phi i64 [ %.sroa.10.0.copyload47, %bb.ai ], [ undef, %"_ZN4core3ptr126drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$$RF$str$GT$$C$milli..prompt..error..RenderPromptError$GT$$GT$17hefbd0e98639ba24dE.exit.i41.i" ], [ undef, %.split.i23 ], [ undef, %bb.ad ], [ undef, %bb.ah ], [ undef, %bb.aj ]
  %.sroa.041.3 = phi i64 [ %i.ca, %bb.ai ], [ 97, %"_ZN4core3ptr126drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$$RF$str$GT$$C$milli..prompt..error..RenderPromptError$GT$$GT$17hefbd0e98639ba24dE.exit.i41.i" ], [ 97, %.split.i23 ], [ 97, %bb.ad ], [ 97, %bb.ah ], [ 97, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !32800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN5milli6update3new7extract7vectors20update_autogenerated17haf627a24406186b3E.exit, %_ZN5milli6update3new7extract7vectors20update_autogenerated17hb0c6e1460be16fe8E.exit
  %.sroa.12.0 = phi i64 [ %.sroa.12.3, %_ZN5milli6update3new7extract7vectors20update_autogenerated17haf627a24406186b3E.exit ], [ %.sroa.12.2, %_ZN5milli6update3new7extract7vectors20update_autogenerated17hb0c6e1460be16fe8E.exit ]
  %.sroa.11.0 = phi ptr [ %.sroa.11.3, %_ZN5milli6update3new7extract7vectors20update_autogenerated17haf627a24406186b3E.exit ], [ %.sroa.11.2, %_ZN5milli6update3new7extract7vectors20update_autogenerated17hb0c6e1460be16fe8E.exit ]
  %.sroa.10.0 = phi i64 [ %.sroa.10.3, %_ZN5milli6update3new7extract7vectors20update_autogenerated17haf627a24406186b3E.exit ], [ %.sroa.10.2, %_ZN5milli6update3new7extract7vectors20update_autogenerated17hb0c6e1460be16fe8E.exit ]
  %.sroa.041.0 = phi i64 [ %.sroa.041.3, %_ZN5milli6update3new7extract7vectors20update_autogenerated17haf627a24406186b3E.exit ], [ %.sroa.041.2, %_ZN5milli6update3new7extract7vectors20update_autogenerated17hb0c6e1460be16fe8E.exit ] ; 2 uses
  %.not = icmp eq i64 %.sroa.041.0, 97
  br i1 %.not, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.sroa.598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.598.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13, i64 16, i1 false)
  %.sroa.699.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.699.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.14, i64 272, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  store i64 %.sroa.041.0, ptr %0, align 8
  %.sroa.295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.10.0, ptr %.sroa.295.0..sroa_idx, align 8
  %.sroa.396.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.11.0, ptr %.sroa.396.0..sroa_idx, align 8
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.12.0, ptr %.sroa.497.0..sroa_idx, align 8
  br label %bb.bk

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  br label %bb.an

bb.an:                                            ; preds = %.loopexit124, %bb.am
  store i64 97, ptr %0, align 8
  br label %bb.bk

bb.ao:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.cb = icmp eq i64 %i.aw, 0
  br i1 %i.cb, label %.loopexit124, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ao
  %i.cc = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.69.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.66.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.69.0..sroa_idx.i.i24.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.66.0..sroa_idx.i.i25.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.5.0..sroa_idx.i.i26.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %.sroa.410.0..sroa_idx22.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.s, i64 20 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.cm = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  br label %bb.ap

bb.ap:                                            ; preds = %.thread32.i, %.lr.ph.i
  %.sroa.0.036.i = phi ptr [ %i.ar, %.lr.ph.i ], [ %i.cn, %.thread32.i ] ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.036.i, i64 128 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.036.i, i64 24 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.036.i, i64 120
  %i.cq = load i8, ptr %i.cp, align 8, !alias.scope !32827, !noalias !32828, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !32829
  call void @llvm.experimental.noalias.scope.decl(metadata !32830)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !32831
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !32832
  store ptr %i.ag, ptr %i.m, align 8, !noalias !32832
  store ptr %i.au, ptr %i.cc, align 8, !noalias !32832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !32832
  store ptr %i.m, ptr %i.l, align 8, !noalias !32832
  store ptr null, ptr %i.cd, align 8, !noalias !32832
  call void @_ZN5milli6vector13json_template12JsonTemplate6render17h87f6367ff961e677E(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.co, ptr noundef nonnull align 1 %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @108), !noalias !32833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !32832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !32832
  %i.cr = load i64, ptr %i.n, align 8, !range !53, !noalias !32831, !noundef !16 ; 2 uses
  %.not.i24 = icmp eq i64 %i.cr, -9223372036854775803 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ce, i64 32, i1 false), !noalias !32831
  br i1 %.not.i24, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.69.0..sroa_idx.i.i.i, i64 32, i1 false), !noalias !32834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !32831
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i.i, i64 32, i1 false), !noalias !32834
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx.i.i.i, i64 64, i1 false), !noalias !32829
  br label %"_ZN111_$LT$milli..vector..extractor..IgnoreErrorExtractor$LT$E$GT$$u20$as$u20$milli..vector..extractor..Extractor$GT$7extract17hfd77b00a5c4f66ecE.exit.i"

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !32831
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i.i, i64 32, i1 false), !noalias !32834
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  store i64 -9223372036854775802, ptr %i.o, align 8, !alias.scope !32830, !noalias !32829
  call fastcc void @"_ZN4core3ptr139drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$serde_json..value..Value$GT$$C$milli..vector..json_template..Error$GT$$GT$17hea0dee8e25848b29E"(ptr noalias noundef align 8 dereferenceable(72) %i.o), !noalias !32835
  br label %"_ZN111_$LT$milli..vector..extractor..IgnoreErrorExtractor$LT$E$GT$$u20$as$u20$milli..vector..extractor..Extractor$GT$7extract17hfd77b00a5c4f66ecE.exit.i"

"_ZN111_$LT$milli..vector..extractor..IgnoreErrorExtractor$LT$E$GT$$u20$as$u20$milli..vector..extractor..Extractor$GT$7extract17hfd77b00a5c4f66ecE.exit.i": ; preds = %bb.ar, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !32829
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.416.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.i.i, i64 64, i1 false), !noalias !32836
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  store i64 %i.cr, ptr %i.r, align 8, !noalias !32836
  br i1 %10, label %bb.as, label %bb.ay

bb.as:                                            ; preds = %"_ZN111_$LT$milli..vector..extractor..IgnoreErrorExtractor$LT$E$GT$$u20$as$u20$milli..vector..extractor..Extractor$GT$7extract17hfd77b00a5c4f66ecE.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !32837
  call void @llvm.experimental.noalias.scope.decl(metadata !32838)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i22.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !32839
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !32840
  store ptr %i.ah, ptr %i.i, align 8, !noalias !32840
  store ptr %i.au, ptr %i.cf, align 8, !noalias !32840
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !32840
  store ptr %i.i, ptr %i.h, align 8, !noalias !32840
  store ptr null, ptr %i.cg, align 8, !noalias !32840
  invoke void @_ZN5milli6vector13json_template12JsonTemplate6render17h87f6367ff961e677E(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.co, ptr noundef nonnull align 1 %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @110)
          to label %.noexc.i unwind label %.split.i26, !noalias !32841

.noexc.i:                                         ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !32840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !32840
  %i.cs = load i64, ptr %i.j, align 8, !range !53, !noalias !32839, !noundef !16 ; 2 uses
  %i.ct = icmp eq i64 %i.cs, -9223372036854775803
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i22.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ch, i64 32, i1 false), !noalias !32839
  br i1 %i.ct, label %bb.at, label %.thread.i

bb.at:                                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !32839
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i26.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i22.i, i64 32, i1 false), !noalias !32842
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i22.i)
  store i64 -9223372036854775802, ptr %i.k, align 8, !alias.scope !32838, !noalias !32837
  invoke fastcc void @"_ZN4core3ptr139drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$serde_json..value..Value$GT$$C$milli..vector..json_template..Error$GT$$GT$17hea0dee8e25848b29E"(ptr noalias noundef align 8 dereferenceable(72) %i.k)
          to label %bb.au unwind label %.split.i26, !noalias !32841

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17hb4412187bd9c2c89E.exit32.i": ; preds = %.thread24.i
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.not.i24, label %bb.bd, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17hb4412187bd9c2c89E.exit32.thread.i"

.split.i26:                                       ; preds = %bb.at, %bb.as
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.not.i24, label %bb.bd, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17hb4412187bd9c2c89E.exit32.thread.i"

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !32837
  br i1 %.not.i24, label %.thread32.i, label %.thread35.i

.thread.i:                                        ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.66.0..sroa_idx.i.i25.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.69.0..sroa_idx.i.i24.i, i64 32, i1 false), !noalias !32842
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !32839
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i26.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i22.i, i64 32, i1 false), !noalias !32842
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i22.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !32836
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.410.0..sroa_idx22.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx.i.i26.i, i64 64, i1 false), !noalias !32836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !32837
  store i64 %i.cs, ptr %i.t, align 8, !noalias !32836
  br i1 %.not.i24, label %.thread24.i, label %.thread23.i

end_hunk_0
