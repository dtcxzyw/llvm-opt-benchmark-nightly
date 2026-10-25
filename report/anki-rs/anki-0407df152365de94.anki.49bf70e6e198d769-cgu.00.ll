Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.00?download=true
inline.NumInlined: 5827
inline.NumDeleted: 1787
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@"_ZN4anki10deckconfig6update46_$LT$impl$u20$anki..collection..Collection$GT$27get_deck_configs_for_update17hce221e23c3c8c1d3E":bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6136.i.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.624.sroa.10, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.24, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.624.sroa.24, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.39, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.39)
  %.sroa.5365.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5365.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.624.sroa.10, i64 24, i1 false)
  %.sroa.19379.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.19379.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.624.sroa.24, i64 6, i1 false)
  store <2 x i64> %i.hd, ptr %i.an, align 16
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store <2 x i32> %i.he, ptr %.sroa.3.0..sroa_idx, align 16
  %.sroa.6366.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  store i64 %i.fn, ptr %.sroa.6366.0..sroa_idx, align 16
  %.sroa.7367.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  store <4 x i32> %i.gp, ptr %.sroa.7367.0..sroa_idx, align 8
  %.sroa.11371.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  store i32 %.sroa.0.0.i.i, ptr %.sroa.11371.0..sroa_idx, align 8
  %.sroa.12372.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 76
  store i32 %.sroa.5.0.i.i, ptr %.sroa.12372.0..sroa_idx, align 4
  %.sroa.13373.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  store i32 %.sroa.02.1.i.i, ptr %.sroa.13373.0..sroa_idx, align 16
  %.sroa.14374.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 84
  store i32 %.sroa.8.1.i.i, ptr %.sroa.14374.0..sroa_idx, align 4
  %.sroa.15375.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 88
  store i32 %i.ha, ptr %.sroa.15375.0..sroa_idx, align 8
  %.sroa.16376.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 92
  store float %i.hc, ptr %.sroa.16376.0..sroa_idx, align 4
  %.sroa.17377.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 96
  store i8 %.sroa.011.0.i.i, ptr %.sroa.17377.0..sroa_idx, align 16
  %.sroa.18378.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 97
  store i8 %.sroa.013.0.i.i, ptr %.sroa.18378.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.028)
  %i.id = getelementptr inbounds nuw i8, ptr %i.ar, i64 360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.028, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false)
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ar, i64 376
  %i.if = load i32, ptr %i.ie, align 8, !noundef !3
  %.sroa.028.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.028, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %.sroa.028.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(336) %i.at, i64 336, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.am, ptr noundef nonnull align 8 dereferenceable(360) %.sroa.028, i64 360, i1 false)
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 360
  %i.ig = load <2 x i64>, ptr %i.id, align 8
  store <2 x i64> %i.ig, ptr %.sroa.529.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 376
  store i32 %i.if, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.028)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  invoke void @"_ZN4anki7storage21collection_timestamps54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$25get_collection_timestamps17hd624914c68aee7b8E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.al, ptr noundef nonnull align 8 %i.ay)
          to label %bb.cz unwind label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ih = landingpad { ptr, i32 }
          cleanup
  %i.ii = load i64, ptr %i.am, align 8, !range !8, !alias.scope !1276, !noundef !3
  %i.ij = icmp eq i64 %i.ii, -9223372036854775808
  br i1 %i.ij, label %"_ZN4core3ptr84drop_in_place$LT$core..option..Option$LT$anki_proto..deck_config..DeckConfig$GT$$GT$17h707f5309945ec5a8E.exit", label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$anki_proto..deck_config..DeckConfig$GT$17h23b59bba9451f234E"(ptr noalias noundef nonnull align 8 dereferenceable(384) %i.am)
          to label %"_ZN4core3ptr84drop_in_place$LT$core..option..Option$LT$anki_proto..deck_config..DeckConfig$GT$$GT$17h707f5309945ec5a8E.exit" unwind label %bb.dq

bb.cz:                                            ; preds = %bb.cw
  %i.ik = load i64, ptr %i.al, align 8, !range !13, !noundef !3 ; 2 uses
  %.not121 = icmp eq i64 %i.ik, -9223372036854775773
  br i1 %.not121, label %bb.dc, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %.sroa.5107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.7109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %.sroa.7109.0.copyload = load i64, ptr %.sroa.7109.0..sroa_idx, align 8
  %.sroa.8110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %.sroa.5115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5115.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.8110.0..sroa_idx, i64 80, i1 false)
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.im = load <2 x i64>, ptr %.sroa.5107.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  store i64 %i.ik, ptr %i.il, align 8
  store <2 x i64> %i.im, ptr %.sroa.2112.0..sroa_idx, align 8
  %.sroa.4114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.7109.0.copyload, ptr %.sroa.4114.0..sroa_idx, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  %i.in = load i64, ptr %i.am, align 8, !range !8, !alias.scope !1277, !noundef !3
  %i.io = icmp eq i64 %i.in, -9223372036854775808
  br i1 %i.io, label %"_ZN4core3ptr84drop_in_place$LT$core..option..Option$LT$anki_proto..deck_config..DeckConfig$GT$$GT$17h707f5309945ec5a8E.exit170", label %bb.db

bb.db:                                            ; preds = %bb.da
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$anki_proto..deck_config..DeckConfig$GT$17h23b59bba9451f234E"(ptr noalias noundef nonnull align 8 dereferenceable(384) %i.am)
          to label %"_ZN4core3ptr84drop_in_place$LT$core..option..Option$LT$anki_proto..deck_config..DeckConfig$GT$$GT$17h707f5309945ec5a8E.exit170" unwind label %bb.dr

bb.dc:                                            ; preds = %bb.cz
  %.sroa.599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.sroa.599.0.copyload = load i64, ptr %.sroa.599.0..sroa_idx, align 8
  %.sroa.6100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %.sroa.6100.0.copyload = load i64, ptr %.sroa.6100.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.ip = icmp sgt i64 %.sroa.599.0.copyload, %.sroa.6100.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.experimental.noalias.scope.decl(metadata !1278)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1279
  invoke void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17ha0496c0a8522a65fE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.h, ptr noundef nonnull align 8 %i.ay, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @209, i64 noundef 19)
          to label %.noexc175 unwind label %bb.di

.noexc175:                                        ; preds = %bb.dc
  %i.iq = load i64, ptr %i.h, align 8, !range !13, !noalias !1279, !noundef !3
  %.not.i.i171 = icmp eq i64 %i.iq, -9223372036854775773
  br i1 %.not.i.i171, label %bb.dd, label %"_ZN4core3ptr123drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$alloc..string..String$GT$$C$anki..error..AnkiError$GT$$GT$17he5f3e06c5f7a68caE.exit.i.i"

bb.dd:                                            ; preds = %.noexc175
  %i.ir = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.is = load i64, ptr %i.ir, align 8, !range !8, !noalias !1279, !noundef !3 ; 2 uses
  %.not1.i.i = icmp eq i64 %i.is, -9223372036854775808
  br i1 %.not1.i.i, label %.noexc176, label %bb.de

"_ZN4core3ptr123drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$alloc..string..String$GT$$C$anki..error..AnkiError$GT$$GT$17he5f3e06c5f7a68caE.exit.i.i": ; preds = %.noexc175
  invoke void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.h)
          to label %.noexc176 unwind label %bb.di

bb.de:                                            ; preds = %bb.dd
  %.sroa.7.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.7.0..sroa_idx.i174 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i174, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx2.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1279
  store i64 %i.is, ptr %i.ak, align 8, !alias.scope !1278
  br label %"_ZN4anki6config6string46_$LT$impl$u20$anki..collection..Collection$GT$17get_config_string17h44eafa3e6b8da4b3E.exit"

.noexc176:                                        ; preds = %"_ZN4core3ptr123drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$alloc..string..String$GT$$C$anki..error..AnkiError$GT$$GT$17he5f3e06c5f7a68caE.exit.i.i", %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1279
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1280
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc177 unwind label %bb.di

.noexc177:                                        ; preds = %.noexc176
  %i.it = load i64, ptr %i.g, align 8, !range !7, !noalias !1280, !noundef !3
  %i.iu = trunc nuw i64 %i.it to i1
  %i.iv = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.iw = load i64, ptr %i.iv, align 8, !range !8, !noalias !1280, !noundef !3 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.iu, label %bb.df, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i", !prof !9

bb.df:                                            ; preds = %.noexc177
  %i.iy = load i64, ptr %i.ix, align 8, !noalias !1280
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.iw, i64 %i.iy) #26
          to label %.noexc178 unwind label %bb.di

.noexc178:                                        ; preds = %bb.df
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i": ; preds = %.noexc177
  %i.iz = load ptr, ptr %i.ix, align 8, !noalias !1280, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1280
  store i64 %i.iw, ptr %i.ak, align 8, !alias.scope !1278
  %.sroa.4.0..sroa_idx.i172 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.iz, ptr %.sroa.4.0..sroa_idx.i172, align 8, !alias.scope !1278
  %.sroa.5.0..sroa_idx.i173 = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i173, align 8, !alias.scope !1278
  br label %"_ZN4anki6config6string46_$LT$impl$u20$anki..collection..Collection$GT$17get_config_string17h44eafa3e6b8da4b3E.exit"

bb.dg:                                            ; preds = %bb.dj, %bb.di
  %.pn122 = phi { ptr, i32 } [ %i.jg, %bb.dj ], [ %i.jc, %bb.di ] ; 2 uses
  %i.ja = load i64, ptr %i.am, align 8, !range !8, !alias.scope !1281, !noundef !3
  %i.jb = icmp eq i64 %i.ja, -9223372036854775808
  br i1 %i.jb, label %"_ZN4core3ptr84drop_in_place$LT$core..option..Option$LT$anki_proto..deck_config..DeckConfig$GT$$GT$17h707f5309945ec5a8E.exit180", label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$anki_proto..deck_config..DeckConfig$GT$17h23b59bba9451f234E"(ptr noalias noundef nonnull align 8 dereferenceable(384) %i.am)
          to label %"_ZN4core3ptr84drop_in_place$LT$core..option..Option$LT$anki_proto..deck_config..DeckConfig$GT$$GT$17h707f5309945ec5a8E.exit180" unwind label %bb.dq

bb.di:                                            ; preds = %bb.df, %.noexc176, %"_ZN4core3ptr123drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$alloc..string..String$GT$$C$anki..error..AnkiError$GT$$GT$17he5f3e06c5f7a68caE.exit.i.i", %bb.dc
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

"_ZN4anki6config6string46_$LT$impl$u20$anki..collection..Collection$GT$17get_config_string17h44eafa3e6b8da4b3E.exit": ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i", %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17he6d4c5be612c4b9eE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.f, ptr noundef nonnull align 8 %i.ay, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @176, i64 noundef 25)
          to label %.noexc203 unwind label %bb.dj

.noexc203:                                        ; preds = %"_ZN4anki6config6string46_$LT$impl$u20$anki..collection..Collection$GT$17get_config_string17h44eafa3e6b8da4b3E.exit"
  %i.jd = load i64, ptr %i.f, align 8, !range !13, !noundef !3
  %.not.i201 = icmp eq i64 %i.jd, -9223372036854775773
  %i.je = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.jf = load i8, ptr %i.je, align 8, !range !12
  br i1 %.not.i201, label %bb.dk, label %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i"

"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i": ; preds = %.noexc203
  invoke void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.f)
          to label %bb.dk unwind label %bb.dj

bb.dj:                                            ; preds = %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i228", %bb.dn, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i221", %bb.dm, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i214", %bb.dl, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i207", %bb.dk, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i", %"_ZN4anki6config6string46_$LT$impl$u20$anki..collection..Collection$GT$17get_config_string17h44eafa3e6b8da4b3E.exit"
  %i.jg = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak) #27
          to label %bb.dg unwind label %bb.dq

bb.dk:                                            ; preds = %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i", %.noexc203
  %.sroa.0.0.i202 = phi i8 [ %i.jf, %.noexc203 ], [ 2, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17he6d4c5be612c4b9eE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.e, ptr noundef nonnull align 8 %i.ay, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @162, i64 noundef 20)
          to label %.noexc209 unwind label %bb.dj

.noexc209:                                        ; preds = %bb.dk
  %i.jh = load i64, ptr %i.e, align 8, !range !13, !noundef !3
  %.not.i206 = icmp eq i64 %i.jh, -9223372036854775773
  %i.ji = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.jj = load i8, ptr %i.ji, align 8, !range !12
  br i1 %.not.i206, label %bb.dl, label %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i207"

"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i207": ; preds = %.noexc209
  invoke void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.e)
          to label %bb.dl unwind label %bb.dj

bb.dl:                                            ; preds = %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i207", %.noexc209
  %.sroa.0.0.i208 = phi i8 [ %i.jj, %.noexc209 ], [ 2, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i207" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17he6d4c5be612c4b9eE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.d, ptr noundef nonnull align 8 %i.ay, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @191, i64 noundef 4)
          to label %.noexc216 unwind label %bb.dj

.noexc216:                                        ; preds = %bb.dl
  %i.jk = load i64, ptr %i.d, align 8, !range !13, !noundef !3
  %.not.i213 = icmp eq i64 %i.jk, -9223372036854775773
  %i.jl = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.jm = load i8, ptr %i.jl, align 8, !range !12
  br i1 %.not.i213, label %bb.dm, label %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i214"

"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i214": ; preds = %.noexc216
  invoke void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.d)
          to label %bb.dm unwind label %bb.dj

bb.dm:                                            ; preds = %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i214", %.noexc216
  %.sroa.0.0.i215 = phi i8 [ %i.jm, %.noexc216 ], [ 2, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i214" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17he6d4c5be612c4b9eE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.c, ptr noundef nonnull align 8 %i.ay, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @192, i64 noundef 15)
          to label %.noexc223 unwind label %bb.dj

.noexc223:                                        ; preds = %bb.dm
  %i.jn = load i64, ptr %i.c, align 8, !range !13, !noundef !3
  %.not.i220 = icmp eq i64 %i.jn, -9223372036854775773
  %i.jo = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.jp = load i8, ptr %i.jo, align 8, !range !12
  br i1 %.not.i220, label %bb.dn, label %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i221"

"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i221": ; preds = %.noexc223
  invoke void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.c)
          to label %bb.dn unwind label %bb.dj

bb.dn:                                            ; preds = %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i221", %.noexc223
  %.sroa.0.0.i222 = phi i8 [ %i.jp, %.noexc223 ], [ 2, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i221" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.0.0.i = icmp ne i8 %.sroa.0.0.i222, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17he6d4c5be612c4b9eE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.b, ptr noundef nonnull align 8 %i.ay, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @193, i64 noundef 18)
          to label %.noexc230 unwind label %bb.dj

.noexc230:                                        ; preds = %bb.dn
  %i.jq = load i64, ptr %i.b, align 8, !range !13, !noundef !3
  %.not.i227 = icmp eq i64 %i.jq, -9223372036854775773
  %i.jr = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.js = load i8, ptr %i.jr, align 8, !range !12
  br i1 %.not.i227, label %bb.do, label %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i228"

"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i228": ; preds = %.noexc230
  invoke void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.b)
          to label %bb.do unwind label %bb.dj

bb.do:                                            ; preds = %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i228", %.noexc230
  %.sroa.0.0.i229 = phi i8 [ %i.js, %.noexc230 ], [ 2, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i228" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.011, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false)
  %.sroa.011.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.011, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.011.48..sroa_idx, ptr noundef nonnull align 16 dereferenceable(104) %i.an, i64 104, i1 false)
  %.sroa.011.152..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.011, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %.sroa.011.152..sroa_idx, ptr noundef nonnull align 8 dereferenceable(384) %i.am, i64 384, i1 false)
  %i.jt = zext i1 %i.ip to i8
  %.sroa.011.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.011, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.011.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false)
  %i.ju = and i8 %.sroa.0.0.i202, 1
  %i.jv = and i8 %.sroa.0.0.i215, 1
  %i.jw = zext i1 %.sroa.0.0.i to i8
  %i.jx = and i8 %.sroa.0.0.i229, 1
  %i.jy = and i8 %.sroa.0.0.i208, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(536) %.sroa.011, i64 536, i1 false)
  %.sroa.1012.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i32 %.sroa.0.0, ptr %.sroa.1012.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 540
  store i8 %i.jt, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 541
  store i8 %i.ju, ptr %.sroa.12.0..sroa_idx, align 1
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 542
  store i8 %i.jv, ptr %.sroa.13.0..sroa_idx, align 2
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 543
  store i8 %i.jw, ptr %.sroa.14.0..sroa_idx, align 1
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i8 %i.jx, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 545
  store i8 %i.jy, ptr %.sroa.16.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.011)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.624.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.624.sroa.24)
  br label %bb.dp

bb.dp:                                            ; preds = %"_ZN4core3ptr49drop_in_place$LT$anki..deckconfig..DeckConfig$GT$17hb084b21ef4d188d6E.exit152", %bb.dx, %bb.do, %"_ZN4core3ptr49drop_in_place$LT$anki..deckconfig..DeckConfig$GT$17hb084b21ef4d188d6E.exit"
  ret void

bb.dq:                                            ; preds = %bb.dh, %bb.cy, %bb.eg, %.critedge137, %.critedge136, %.critedge135, %.critedge134, %.critedge133, %.critedge132, %.critedge131, %.critedge, %bb.ef, %bb.ee, %bb.dy, %"_ZN4core3ptr84drop_in_place$LT$core..option..Option$LT$anki_proto..deck_config..DeckConfig$GT$$GT$17h707f5309945ec5a8E.exit", %bb.ds, %"_ZN4core3ptr84drop_in_place$LT$core..option..Option$LT$anki_proto..deck_config..DeckConfig$GT$$GT$17h707f5309945ec5a8E.exit180", %bb.dj, %.body162, %.body145
  %i.jz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr84drop_in_place$LT$core..option..Option$LT$anki_proto..deck_config..DeckConfig$GT$$GT$17h707f5309945ec5a8E.exit180": ; preds = %bb.dg, %bb.dh, %bb.dr
  %.pn124 = phi { ptr, i32 } [ %i.ka, %bb.dr ], [ %.pn122, %bb.dh ], [ %.pn122, %bb.dg ]
  invoke fastcc void @"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$anki_proto..deck_config..deck_configs_for_update..CurrentDeck$GT$$GT$17h793e4bf8ddb60ddaE"(ptr noalias noundef align 8 dereferenceable(104) %i.an) #27
          to label %bb.ds unwind label %bb.dq

bb.dr:                                            ; preds = %bb.db
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr84drop_in_place$LT$core..option..Option$LT$anki_proto..deck_config..DeckConfig$GT$$GT$17h707f5309945ec5a8E.exit180"

"_ZN4core3ptr84drop_in_place$LT$core..option..Option$LT$anki_proto..deck_config..DeckConfig$GT$$GT$17h707f5309945ec5a8E.exit170": ; preds = %bb.da, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  invoke fastcc void @"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$anki_proto..deck_config..deck_configs_for_update..CurrentDeck$GT$$GT$17h793e4bf8ddb60ddaE"(ptr noalias noundef align 8 dereferenceable(104) %i.an)
          to label %bb.du unwind label %bb.dt

bb.ds:                                            ; preds = %bb.dt, %"_ZN4core3ptr84drop_in_place$LT$core..option..Option$LT$anki_proto..deck_config..DeckConfig$GT$$GT$17h707f5309945ec5a8E.exit180"
  %.pn126 = phi { ptr, i32 } [ %i.kb, %bb.dt ], [ %.pn124, %"_ZN4core3ptr84drop_in_place$LT$core..option..Option$LT$anki_proto..deck_config..DeckConfig$GT$$GT$17h707f5309945ec5a8E.exit180" ]
  invoke fastcc void @"_ZN4core3ptr109drop_in_place$LT$alloc..vec..Vec$LT$anki_proto..deck_config..deck_configs_for_update..ConfigWithExtra$GT$$GT$17h13be2c188169b73fE"(ptr noalias noundef align 8 dereferenceable(24) %i.ao) #27
          to label %common.resume unwind label %bb.dq

bb.dt:                                            ; preds = %"_ZN4core3ptr84drop_in_place$LT$core..option..Option$LT$anki_proto..deck_config..DeckConfig$GT$$GT$17h707f5309945ec5a8E.exit170"
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.du:                                            ; preds = %"_ZN4core3ptr84drop_in_place$LT$core..option..Option$LT$anki_proto..deck_config..DeckConfig$GT$$GT$17h707f5309945ec5a8E.exit170"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h00ba3d4b2caa9b3cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %"_ZN4core3ptr109drop_in_place$LT$alloc..vec..Vec$LT$anki_proto..deck_config..deck_configs_for_update..ConfigWithExtra$GT$$GT$17h13be2c188169b73fE.exit194" unwind label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.kc = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb0e909908c2295bdE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %common.resume unwind label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.kd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr109drop_in_place$LT$alloc..vec..Vec$LT$anki_proto..deck_config..deck_configs_for_update..ConfigWithExtra$GT$$GT$17h13be2c188169b73fE.exit194": ; preds = %bb.du
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb0e909908c2295bdE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.011)
  br label %bb.dx

bb.dx:                                            ; preds = %"_ZN4core3ptr49drop_in_place$LT$anki..deckconfig..DeckConfig$GT$17hb084b21ef4d188d6E.exit199", %"_ZN4core3ptr109drop_in_place$LT$alloc..vec..Vec$LT$anki_proto..deck_config..deck_configs_for_update..ConfigWithExtra$GT$$GT$17h13be2c188169b73fE.exit194"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.624.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.624.sroa.24)
  br label %bb.dp

"_ZN4core3ptr84drop_in_place$LT$core..option..Option$LT$anki_proto..deck_config..DeckConfig$GT$$GT$17h707f5309945ec5a8E.exit": ; preds = %bb.cx, %bb.cy
  invoke fastcc void @"_ZN4core3ptr110drop_in_place$LT$core..option..Option$LT$anki_proto..deck_config..deck_configs_for_update..CurrentDeck$GT$$GT$17h793e4bf8ddb60ddaE"(ptr noalias noundef align 8 dereferenceable(104) %i.an) #27
          to label %bb.dy unwind label %bb.dq

bb.dy:                                            ; preds = %"_ZN4core3ptr84drop_in_place$LT$core..option..Option$LT$anki_proto..deck_config..DeckConfig$GT$$GT$17h707f5309945ec5a8E.exit"
  invoke fastcc void @"_ZN4core3ptr109drop_in_place$LT$alloc..vec..Vec$LT$anki_proto..deck_config..deck_configs_for_update..ConfigWithExtra$GT$$GT$17h13be2c188169b73fE"(ptr noalias noundef align 8 dereferenceable(24) %i.ao) #27
          to label %common.resume unwind label %bb.dq

bb.dz:                                            ; preds = %bb.cu
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

"_ZN4core3ptr109drop_in_place$LT$alloc..vec..Vec$LT$anki_proto..deck_config..deck_configs_for_update..ConfigWithExtra$GT$$GT$17h13be2c188169b73fE.exit": ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.011)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(384) %i.ar)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i197" unwind label %bb.ea

bb.ea:                                            ; preds = %"_ZN4core3ptr109drop_in_place$LT$alloc..vec..Vec$LT$anki_proto..deck_config..deck_configs_for_update..ConfigWithExtra$GT$$GT$17h13be2c188169b73fE.exit"
  %i.kf = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(384) %i.ar)
          to label %.body.i195 unwind label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.kg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i197": ; preds = %"_ZN4core3ptr109drop_in_place$LT$alloc..vec..Vec$LT$anki_proto..deck_config..deck_configs_for_update..ConfigWithExtra$GT$$GT$17h13be2c188169b73fE.exit"
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(384) %i.ar)
          to label %"_ZN4core3ptr49drop_in_place$LT$anki..deckconfig..DeckConfig$GT$17hb084b21ef4d188d6E.exit199" unwind label %bb.ec

bb.ec:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i197"
  %i.kh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i195

.body.i195:                                       ; preds = %bb.ec, %bb.ea
  %eh.lpad-body.i196 = phi { ptr, i32 } [ %i.kh, %bb.ec ], [ %i.kf, %bb.ea ]
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$anki_proto..deck_config..deck_config..Config$GT$17h8cd7d46a28072120E"(ptr noalias noundef align 8 dereferenceable(336) %i.at) #27
          to label %common.resume unwind label %bb.ed

bb.ed:                                            ; preds = %.body.i195
  %i.ki = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr49drop_in_place$LT$anki..deckconfig..DeckConfig$GT$17hb084b21ef4d188d6E.exit199": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i197"
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$anki_proto..deck_config..deck_config..Config$GT$17h8cd7d46a28072120E"(ptr noalias noundef align 8 dereferenceable(336) %i.at)
  br label %bb.dx

bb.ee:                                            ; preds = %bb.ct, %bb.dz
  %eh.lpad-body167 = phi { ptr, i32 } [ %i.ke, %bb.dz ], [ %i.ib, %bb.ct ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar) #27
          to label %bb.ef unwind label %bb.dq

bb.ef:                                            ; preds = %bb.ee
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E"(ptr noalias noundef align 8 dereferenceable(24) %i.at) #27
          to label %.critedge unwind label %bb.dq

.critedge:                                        ; preds = %bb.ef
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E"(ptr noalias noundef align 8 dereferenceable(24) %i.kj) #27
          to label %.critedge131 unwind label %bb.dq

.critedge131:                                     ; preds = %.critedge
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E"(ptr noalias noundef align 8 dereferenceable(24) %i.kk) #27
          to label %.critedge132 unwind label %bb.dq

.critedge132:                                     ; preds = %.critedge131
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ar, i64 96
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E"(ptr noalias noundef align 8 dereferenceable(24) %i.kl) #27
          to label %.critedge133 unwind label %bb.dq

.critedge133:                                     ; preds = %.critedge132
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E"(ptr noalias noundef align 8 dereferenceable(24) %i.au) #27
          to label %.critedge134 unwind label %bb.dq

.critedge134:                                     ; preds = %.critedge133
  %i.km = getelementptr inbounds nuw i8, ptr %i.ar, i64 144
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.km) #27
          to label %.critedge135 unwind label %bb.dq

.critedge135:                                     ; preds = %.critedge134
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ar, i64 168
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E"(ptr noalias noundef align 8 dereferenceable(24) %i.kn) #27
          to label %.critedge136 unwind label %bb.dq

.critedge136:                                     ; preds = %.critedge135
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ar, i64 192
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ko) #27
          to label %.critedge137 unwind label %bb.dq

end_hunk_0
begin_hunk_1_@"_ZN4anki11preferences46_$LT$impl$u20$anki..collection..Collection$GT$15set_preferences17hfa9c37419d96b678E":bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.10.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.10.0..sroa_idx44.i, i64 72, i1 false), !noalias !1876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1928
  br label %bb.dx

bb.dx:                                            ; preds = %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h7a4b69fb427b3576E.exit.i", %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h7a4b69fb427b3576E.exit.thread97.i", %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h7a4b69fb427b3576E.exit.thread101.i", %bb.dj
  %.sroa.8.sroa.0.0.i = phi i64 [ %.sroa.010.0.copyload.i.i.i, %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h7a4b69fb427b3576E.exit.i" ], [ %.sroa.1047.sroa.0.0.insert.insert.i, %bb.dj ], [ %.sroa.8.sroa.0.0.copyload56.i, %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h7a4b69fb427b3576E.exit.thread97.i" ], [ %.sroa.8.sroa.0.0.copyload55104.i, %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h7a4b69fb427b3576E.exit.thread101.i" ]
  %.sroa.036.0.i = phi i64 [ %i.gv, %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h7a4b69fb427b3576E.exit.i" ], [ %.sroa.046.1.ph.i, %bb.dj ], [ %i.hh, %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h7a4b69fb427b3576E.exit.thread97.i" ], [ %.pre11.i.i, %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h7a4b69fb427b3576E.exit.thread101.i" ]
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !1876
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.sroa.8.i, i64 24, i1 false), !noalias !1876
  store i64 %.sroa.036.0.i, ptr %i.au, align 8, !noalias !1876
  %.sroa.563.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 %.sroa.8.sroa.0.0.i, ptr %.sroa.563.0..sroa_idx.i, align 8, !noalias !1876
  %.sroa.764.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.764.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.10.i, i64 72, i1 false), !noalias !1876
  call void @llvm.experimental.noalias.scope.decl(metadata !1939)
  call void @llvm.experimental.noalias.scope.decl(metadata !1940)
  call void @llvm.experimental.noalias.scope.decl(metadata !1941)
  call void @llvm.experimental.noalias.scope.decl(metadata !1942)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1943
  store i64 -9223372036854775766, ptr %i.a, align 8, !noalias !1943
  invoke void @_ZN4anki4undo11UndoManager10begin_step17hf9d4665951b3d043E(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.bn, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc.i29.i unwind label %bb.dz, !noalias !1944

.noexc.i29.i:                                     ; preds = %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1943
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$anki..scheduler..queue..CardQueues$GT$$GT$17hb0dbd01b0bc6b86bE"(ptr noalias noundef align 8 dereferenceable(224) %i.hw)
          to label %bb.ea unwind label %bb.dy, !noalias !1944

bb.dy:                                            ; preds = %.noexc.i29.i
  %i.hx = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775808, ptr %i.hw, align 8, !alias.scope !1945
  br label %.body.i27.i

bb.dz:                                            ; preds = %bb.ec, %bb.eb, %bb.dx
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i27.i

.body.i27.i:                                      ; preds = %bb.dz, %bb.dy
  %eh.lpad-body.i28.i = phi { ptr, i32 } [ %i.hy, %bb.dz ], [ %i.hx, %bb.dy ]
  invoke void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.au) #27
          to label %common.resume.i unwind label %bb.el, !noalias !1946

bb.ea:                                            ; preds = %.noexc.i29.i
  store i64 -9223372036854775808, ptr %i.hw, align 8, !alias.scope !1945
  br i1 %.not117.i, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1947
  invoke void @_ZN4anki7storage6sqlite13SqliteStorage17rollback_rust_trx17h69ddae71cbf0d28dE(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.b, ptr noundef nonnull align 8 %i.az)
          to label %bb.ed unwind label %bb.dz, !noalias !1944

bb.ec:                                            ; preds = %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1947
  invoke void @_ZN4anki7storage6sqlite13SqliteStorage12rollback_trx17h6e55060f32d2472bE(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.c, ptr noundef nonnull align 8 %i.az)
          to label %bb.ei unwind label %bb.dz, !noalias !1944

bb.ed:                                            ; preds = %bb.eb
  %i.hz = load i64, ptr %i.b, align 8, !range !13, !noalias !1947, !noundef !3
  %.not.i30.i = icmp eq i64 %i.hz, -9223372036854775773
  br i1 %.not.i30.i, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.b, i64 112, i1 false), !noalias !1948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1947
  br label %bb.eh

bb.ef:                                            ; preds = %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1947
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ek, %bb.ef
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.au, i64 112, i1 false), !alias.scope !1949, !noalias !1877
  br label %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h52957ee64003c571E.exit.i"

bb.eh:                                            ; preds = %bb.ej, %bb.ee
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.au), !noalias !1875
  br label %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h52957ee64003c571E.exit.i"

bb.ei:                                            ; preds = %bb.ec
  %i.ia = load i64, ptr %i.c, align 8, !range !13, !noalias !1947, !noundef !3
  %.not1.i.i = icmp eq i64 %i.ia, -9223372036854775773
  br i1 %.not1.i.i, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.c, i64 112, i1 false), !noalias !1948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1947
  br label %bb.eh

bb.ek:                                            ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1947
  br label %bb.eg

bb.el:                                            ; preds = %.body.i27.i
  %i.ib = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !1946
  unreachable

bb.em:                                            ; preds = %bb.dt
  %.sroa.8.sroa.0.0.copyload58.i = load i64, ptr %i.g, align 8, !noalias !1932
  %.sroa.8.sroa.8.0..sroa_idx59.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.sroa.8.0..sroa_idx59.i, i64 24, i1 false), !noalias !1932
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1928
  %.sroa.561.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.561.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.sroa.8.i, i64 24, i1 false), !noalias !1877
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.8.sroa.0.0.copyload58.i, ptr %i.ic, align 8, !alias.scope !1872
  store i64 -9223372036854775773, ptr %0, align 8, !alias.scope !1872
  br label %bb.en

bb.en:                                            ; preds = %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h52957ee64003c571E.exit.i", %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.sroa.8.i)
  br label %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner17hf5d7176025bd185bE.exit"

"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h52957ee64003c571E.exit.i": ; preds = %bb.eh, %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !1876
  br label %bb.en

bb.eo:                                            ; preds = %bb.eq
  br i1 %.sroa.04.0.ph.i, label %.thread113.i, label %common.resume.i

bb.ep:                                            ; preds = %"_ZN4core3ptr61drop_in_place$LT$anki_proto..config..preferences..Editing$GT$17hd1d2b21ea91ab8cfE.exit.i.i.i.i"
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %.thread113.i

common.resume.i:                                  ; preds = %.thread113.i, %bb.eo, %.body.i27.i, %bb.dv, %.body.i.i, %bb.dh, %bb.df, %bb.cf, %bb.bq, %.body.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.ht, %bb.dv ], [ %lpad.thr_comm.split-lp.i, %bb.eo ], [ %.pn116.i, %.thread113.i ], [ %eh.lpad-body.i28.i, %.body.i27.i ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.em, %bb.bq ], [ %i.gr, %bb.df ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %eh.lpad-body.i.i.i, %bb.dh ], [ %i.ff, %bb.cf ]
  resume { ptr, i32 } %common.resume.op.i

bb.eq:                                            ; preds = %bb.i, %bb.c, %bb.b
  %.sroa.04.0.ph.i = phi i1 [ true, %bb.b ], [ true, %bb.c ], [ false, %bb.i ]
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @"_ZN4core3ptr131drop_in_place$LT$anki..preferences..$LT$impl$u20$anki..collection..Collection$GT$..set_preferences..$u7b$$u7b$closure$u7d$$u7d$$GT$17ha583b0926301adc8E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.ay) #27
          to label %bb.eo unwind label %bb.er, !noalias !1879

bb.er:                                            ; preds = %.thread113.i, %bb.eq
  %i.ie = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !1872
  unreachable

.thread113.i:                                     ; preds = %bb.ep, %bb.eo, %bb.g
  %.pn116.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.eo ], [ %i.id, %bb.ep ], [ %i.bl, %bb.g ]
  invoke fastcc void @"_ZN4core3ptr62drop_in_place$LT$core..option..Option$LT$anki..ops..Op$GT$$GT$17hf4b9532f55bebffbE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax) #27
          to label %common.resume.i unwind label %bb.er, !noalias !1872

"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner17hf5d7176025bd185bE.exit": ; preds = %bb.e, %"_ZN4core3ptr61drop_in_place$LT$anki_proto..config..preferences..Editing$GT$17hd1d2b21ea91ab8cfE.exit.i.i.i.i", %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki11preferences46_$LT$impl$u20$anki..collection..Collection$GT$23get_editing_preferences17h5d87abaa560b121eE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 6 uses
  %i.b = alloca [112 x i8], align 8               ; 6 uses
  %i.c = alloca [112 x i8], align 8               ; 6 uses
  %i.d = alloca [112 x i8], align 8               ; 6 uses
  %i.e = alloca [112 x i8], align 8               ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [112 x i8], align 8               ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 6 uses
  call void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17he6d4c5be612c4b9eE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.e, ptr noundef nonnull align 8 %i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @200, i64 noundef 8)
  %i.j = load i64, ptr %i.e, align 8, !range !13, !noundef !3
  %.not.i = icmp eq i64 %i.j, -9223372036854775773
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load i8, ptr %i.k, align 8, !range !12
  br i1 %.not.i, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit", label %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i"

"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i": ; preds = %bb.a
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.e)
  br label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit": ; preds = %bb.a, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i"
  %.sroa.0.0.i8 = phi i8 [ 2, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i" ], [ %i.l, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17he6d4c5be612c4b9eE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.d, ptr noundef nonnull align 8 %i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @177, i64 noundef 16)
  %i.m = load i64, ptr %i.d, align 8, !range !13, !noundef !3
  %.not.i9 = icmp eq i64 %i.m, -9223372036854775773
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load i8, ptr %i.n, align 8, !range !12
  br i1 %.not.i9, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit12", label %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i10"

"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i10": ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit"
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.d)
  br label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit12"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit12": ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit", %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i10"
  %.sroa.0.0.i11 = phi i8 [ 2, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i10" ], [ %i.o, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17he6d4c5be612c4b9eE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.c, ptr noundef nonnull align 8 %i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @178, i64 noundef 21)
  %i.p = load i64, ptr %i.c, align 8, !range !13, !noundef !3
  %.not.i13 = icmp eq i64 %i.p, -9223372036854775773
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = load i8, ptr %i.q, align 8, !range !12
  br i1 %.not.i13, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit16", label %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i14"

"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i14": ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit12"
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.c)
  br label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit16"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit16": ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit12", %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i14"
  %.sroa.0.0.i15 = phi i8 [ 2, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i14" ], [ %i.r, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit12" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !1957)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1958
  call void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17ha0496c0a8522a65fE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.g, ptr noundef nonnull align 8 %i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @208, i64 noundef 17), !noalias !1958
  %i.s = load i64, ptr %i.g, align 8, !range !13, !noalias !1958, !noundef !3
  %.not.i.i = icmp eq i64 %i.s, -9223372036854775773
  br i1 %.not.i.i, label %bb.b, label %"_ZN4core3ptr123drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$alloc..string..String$GT$$C$anki..error..AnkiError$GT$$GT$17he5f3e06c5f7a68caE.exit.i.i"

bb.b:                                             ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit16"
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !8, !noalias !1958, !noundef !3 ; 2 uses
  %.not1.i.i = icmp eq i64 %i.u, -9223372036854775808
  br i1 %.not1.i.i, label %bb.d, label %bb.c

"_ZN4core3ptr123drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$alloc..string..String$GT$$C$anki..error..AnkiError$GT$$GT$17he5f3e06c5f7a68caE.exit.i.i": ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit16"
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.g), !noalias !1958
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.7.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx2.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1958
  store i64 %i.u, ptr %i.h, align 8, !alias.scope !1957
  br label %"_ZN4anki6config6string46_$LT$impl$u20$anki..collection..Collection$GT$17get_config_string17h44eafa3e6b8da4b3E.exit"

bb.d:                                             ; preds = %"_ZN4core3ptr123drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$alloc..string..String$GT$$C$anki..error..AnkiError$GT$$GT$17he5f3e06c5f7a68caE.exit.i.i", %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1958
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1959
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !1959
  %i.v = load i64, ptr %i.f, align 8, !range !7, !noalias !1959, !noundef !3
  %i.w = trunc nuw i64 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !8, !noalias !1959, !noundef !3 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.w, label %bb.e, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i", !prof !9

bb.e:                                             ; preds = %bb.d
  %i.aa = load i64, ptr %i.z, align 8, !noalias !1959
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.y, i64 %i.aa) #26, !noalias !1959
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i": ; preds = %bb.d
  %i.ab = load ptr, ptr %i.z, align 8, !noalias !1959, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1959
  store i64 %i.y, ptr %i.h, align 8, !alias.scope !1957
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.ab, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1957
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1957
  br label %"_ZN4anki6config6string46_$LT$impl$u20$anki..collection..Collection$GT$17get_config_string17h44eafa3e6b8da4b3E.exit"

"_ZN4anki6config6string46_$LT$impl$u20$anki..collection..Collection$GT$17get_config_string17h44eafa3e6b8da4b3E.exit": ; preds = %bb.c, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17he6d4c5be612c4b9eE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.b, ptr noundef nonnull align 8 %i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @174, i64 noundef 21)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %"_ZN4anki6config6string46_$LT$impl$u20$anki..collection..Collection$GT$17get_config_string17h44eafa3e6b8da4b3E.exit"
  %i.ac = load i64, ptr %i.b, align 8, !range !13, !noundef !3
  %.not.i17 = icmp eq i64 %i.ac, -9223372036854775773
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ae = load i8, ptr %i.ad, align 8, !range !12
  br i1 %.not.i17, label %bb.g, label %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i18"

"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i18": ; preds = %.noexc
  invoke void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.b)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i23", %bb.g, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i18", %"_ZN4anki6config6string46_$LT$impl$u20$anki..collection..Collection$GT$17get_config_string17h44eafa3e6b8da4b3E.exit"
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #27
          to label %bb.j unwind label %bb.i

bb.g:                                             ; preds = %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i18", %.noexc
  %.sroa.0.0.i19 = phi i8 [ %i.ae, %.noexc ], [ 2, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i18" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17he6d4c5be612c4b9eE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, ptr noundef nonnull align 8 %i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @179, i64 noundef 11)
          to label %.noexc25 unwind label %bb.f

.noexc25:                                         ; preds = %bb.g
  %i.ag = load i64, ptr %i.a, align 8, !range !13, !noundef !3
  %.not.i22 = icmp eq i64 %i.ag, -9223372036854775773
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ai = load i8, ptr %i.ah, align 8, !range !12
  br i1 %.not.i22, label %bb.h, label %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i23"

"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i23": ; preds = %.noexc25
  invoke void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.a)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i23", %.noexc25
  %.sroa.0.0.i24 = phi i8 [ %i.ai, %.noexc25 ], [ 2, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i23" ]
  %.sroa.0.0.i = icmp ne i8 %.sroa.0.0.i8, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aj = zext i1 %.sroa.0.0.i to i8
  %i.ak = and i8 %.sroa.0.0.i11, 1
  %i.al = and i8 %.sroa.0.0.i15, 1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.an = and i8 %.sroa.0.0.i19, 1
  %i.ao = and i8 %.sroa.0.0.i24, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.aj, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %i.ak, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 %i.al, ptr %.sroa.6.0..sroa_idx, align 2
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 35
  store i8 %i.an, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %i.ao, ptr %.sroa.8.0..sroa_idx, align 4
  store i64 -9223372036854775773, ptr %0, align 8
  ret void

bb.i:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.j:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.af
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki11preferences46_$LT$impl$u20$anki..collection..Collection$GT$25get_reviewing_preferences17he55f2cbd347f1002E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) initializes((0, 18)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 6 uses
  %i.b = alloca [112 x i8], align 8               ; 6 uses
  %i.c = alloca [112 x i8], align 8               ; 6 uses
  %i.d = alloca [112 x i8], align 8               ; 6 uses
  %i.e = alloca [112 x i8], align 8               ; 6 uses
  %i.f = alloca [112 x i8], align 8               ; 6 uses
  %i.g = alloca [112 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 7 uses
  call void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17he6d4c5be612c4b9eE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.f, ptr noundef nonnull align 8 %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @173, i64 noundef 20)
  %i.i = load i64, ptr %i.f, align 8, !range !13, !noundef !3
  %.not.i = icmp eq i64 %i.i, -9223372036854775773
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = load i8, ptr %i.j, align 8, !range !12
  br i1 %.not.i, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit", label %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i"

"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i": ; preds = %bb.a
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.f)
  br label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit": ; preds = %bb.a, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i"
  %.sroa.0.0.i5 = phi i8 [ 2, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i" ], [ %i.k, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17he6d4c5be612c4b9eE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.e, ptr noundef nonnull align 8 %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @175, i64 noundef 27)
  %i.l = load i64, ptr %i.e, align 8, !range !13, !noundef !3
  %.not.i6 = icmp eq i64 %i.l, -9223372036854775773
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load i8, ptr %i.m, align 8, !range !12
  br i1 %.not.i6, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit9", label %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i7"

"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i7": ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit"
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.e)
  br label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit9"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit9": ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit", %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i7"
  %.sroa.0.0.i8 = phi i8 [ 2, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i7" ], [ %i.n, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17he6d4c5be612c4b9eE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.d, ptr noundef nonnull align 8 %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @199, i64 noundef 9)
  %i.o = load i64, ptr %i.d, align 8, !range !13, !noundef !3
  %.not.i10 = icmp eq i64 %i.o, -9223372036854775773
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = load i8, ptr %i.p, align 8, !range !12
  br i1 %.not.i10, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit13", label %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i11"

"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i11": ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit9"
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.d)
  br label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit13"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit13": ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit9", %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i11"
  %.sroa.0.0.i12 = phi i8 [ 2, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i11" ], [ %i.q, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit9" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17he6d4c5be612c4b9eE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.c, ptr noundef nonnull align 8 %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @198, i64 noundef 8)
  %i.r = load i64, ptr %i.c, align 8, !range !13, !noundef !3
  %.not.i14 = icmp eq i64 %i.r, -9223372036854775773
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.t = load i8, ptr %i.s, align 8, !range !12
  br i1 %.not.i14, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit17", label %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i15"

"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i15": ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit13"
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.c)
  br label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit17"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit17": ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit13", %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i15"
  %.sroa.0.0.i16 = phi i8 [ 2, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i15" ], [ %i.t, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit13" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17h45436d312cdfd3c3E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.g, ptr noundef nonnull align 8 %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @216, i64 noundef 7)
  %i.u = load i64, ptr %i.g, align 8, !range !13, !noundef !3
  %.not.i.i = icmp eq i64 %i.u, -9223372036854775773
  br i1 %.not.i.i, label %bb.b, label %.thread.i.i

.thread.i.i:                                      ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit17"
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.g)
  br label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$26get_answer_time_limit_secs17h9cc7c063d62c272aE.exit"

bb.b:                                             ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit17"
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.w = load i32, ptr %i.v, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.y = load i32, ptr %i.x, align 8, !range !16
  %i.z = trunc nuw i32 %i.y to i1
  %i.aa = select i1 %i.z, i32 %i.w, i32 0
  br label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$26get_answer_time_limit_secs17h9cc7c063d62c272aE.exit"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$26get_answer_time_limit_secs17h9cc7c063d62c272aE.exit": ; preds = %.thread.i.i, %bb.b
  %.sroa.0.07.i.i = phi i32 [ 0, %.thread.i.i ], [ %i.aa, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17he6d4c5be612c4b9eE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.b, ptr noundef nonnull align 8 %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @194, i64 noundef 19)
  %i.ab = load i64, ptr %i.b, align 8, !range !13, !noundef !3
  %.not.i18 = icmp eq i64 %i.ab, -9223372036854775773
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ad = load i8, ptr %i.ac, align 8, !range !12
  br i1 %.not.i18, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit21", label %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i19"

"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i19": ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$26get_answer_time_limit_secs17h9cc7c063d62c272aE.exit"
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.b)
  br label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit21"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit21": ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$26get_answer_time_limit_secs17h9cc7c063d62c272aE.exit", %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i19"
  %.sroa.0.0.i20 = phi i8 [ 2, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i19" ], [ %i.ad, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$26get_answer_time_limit_secs17h9cc7c063d62c272aE.exit" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17he6d4c5be612c4b9eE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, ptr noundef nonnull align 8 %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @195, i64 noundef 29)
  %i.ae = load i64, ptr %i.a, align 8, !range !13, !noundef !3
  %.not.i22 = icmp eq i64 %i.ae, -9223372036854775773
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ag = load i8, ptr %i.af, align 8, !range !12
  br i1 %.not.i22, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit25", label %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i23"

"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i23": ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit21"
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.a)
  br label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit25"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit25": ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit21", %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i23"
  %.sroa.0.0.i24 = phi i8 [ 2, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i23" ], [ %i.ag, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit21" ]
  %i.ah = insertelement <4 x i8> poison, i8 %.sroa.0.0.i8, i64 0
  %i.ai = insertelement <4 x i8> %i.ah, i8 %.sroa.0.0.i12, i64 1
  %i.aj = insertelement <4 x i8> %i.ai, i8 %.sroa.0.0.i16, i64 2
  %i.ak = insertelement <4 x i8> %i.aj, i8 %.sroa.0.0.i20, i64 3
  %i.al = icmp ne <4 x i8> %i.ak, zeroinitializer
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.am = and i8 %.sroa.0.0.i5, 1
  %i.an = and i8 %.sroa.0.0.i24, 1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0.07.i.i, ptr %i.ao, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.am, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.ap = zext <4 x i1> %i.al to <4 x i8>
  store <4 x i8> %i.ap, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.an, ptr %.sroa.9.0..sroa_idx, align 1
  store i64 -9223372036854775773, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki11preferences46_$LT$impl$u20$anki..collection..Collection$GT$26get_scheduling_preferences17hd407a331b3ca3df1E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) initializes((0, 8)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 6 uses
  %i.b = alloca [112 x i8], align 8               ; 6 uses
  %i.c = alloca [112 x i8], align 8               ; 8 uses
  %i.d = alloca [112 x i8], align 8               ; 7 uses
  %i.e = alloca [112 x i8], align 8               ; 8 uses
  %i.f = alloca [112 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1962
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 6 uses
  call void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17h55af1610e70099a1E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.f, ptr noundef nonnull align 8 %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @223, i64 noundef 8), !noalias !1962
  %i.h = load i64, ptr %i.f, align 8, !range !13, !noalias !1962, !noundef !3
  %.not.i.i.i = icmp eq i64 %i.h, -9223372036854775773
  br i1 %.not.i.i.i, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.i.i", label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.thread.i.i"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.thread.i.i": ; preds = %bb.a
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.f), !noalias !1962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1962
  br label %bb.g

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.i.i": ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load i8, ptr %i.i, align 8, !range !12, !noalias !1962
  %.fr.i.i = freeze i8 %i.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1962
  %switch.i = icmp ult i8 %.fr.i.i, 2
  br i1 %switch.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1962
  call void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17h82d9945688c79aa3E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.e, ptr noundef nonnull align 8 %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @212, i64 noundef 8), !noalias !1962
  %i.k = load i64, ptr %i.e, align 8, !range !13, !noalias !1962, !noundef !3
  %.not.i.i5.i = icmp eq i64 %i.k, -9223372036854775773
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  %i.m = load i8, ptr %i.l, align 1, !noalias !1962
  br i1 %.not.i.i5.i, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hb8d0926c96ded3c0E.exit.i.i", label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hb8d0926c96ded3c0E.exit.thread.i.i"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hb8d0926c96ded3c0E.exit.thread.i.i": ; preds = %bb.b
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.e), !noalias !1962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1962
  br label %bb.d

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hb8d0926c96ded3c0E.exit.i.i": ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.o = load i8, ptr %i.n, align 8, !range !6, !noalias !1962
  %i.p = trunc nuw i8 %i.o to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1962
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hb8d0926c96ded3c0E.exit.i.i"
  %.sroa.0.0.i.i.i = call noundef range(i8 0, 24) i8 @llvm.umin.i8(i8 %i.m, i8 23)
  %i.q = zext nneg i8 %.sroa.0.0.i.i.i to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hb8d0926c96ded3c0E.exit.i.i", %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hb8d0926c96ded3c0E.exit.thread.i.i"
  %.sroa.5.0.ph = phi i32 [ 4, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hb8d0926c96ded3c0E.exit.thread.i.i" ], [ 4, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hb8d0926c96ded3c0E.exit.i.i" ], [ %i.q, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17h45436d312cdfd3c3E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.d, ptr noundef nonnull align 8 %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @220, i64 noundef 12)
  %i.r = load i64, ptr %i.d, align 8, !range !13, !noundef !3
  %.not.i.i = icmp eq i64 %i.r, -9223372036854775773
  br i1 %.not.i.i, label %bb.e, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.d
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.d)
  br label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$16learn_ahead_secs17h7734b9a724b32449E.exit"

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.t = load i32, ptr %i.s, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.v = load i32, ptr %i.u, align 8, !range !16
  %i.w = trunc nuw i32 %i.v to i1
  %i.x = select i1 %i.w, i32 %i.t, i32 1200
  br label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$16learn_ahead_secs17h7734b9a724b32449E.exit"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$16learn_ahead_secs17h7734b9a724b32449E.exit": ; preds = %.thread.i.i, %bb.e
  %.sroa.0.07.i.i = phi i32 [ 1200, %.thread.i.i ], [ %i.x, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17h82d9945688c79aa3E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.c, ptr noundef nonnull align 8 %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @221, i64 noundef 9)
  %i.y = load i64, ptr %i.c, align 8, !range !13, !noundef !3
  %.not.i.i.i18 = icmp eq i64 %i.y, -9223372036854775773
  br i1 %.not.i.i.i18, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hb8d0926c96ded3c0E.exit.i.i20", label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hb8d0926c96ded3c0E.exit.thread.i.i19"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hb8d0926c96ded3c0E.exit.thread.i.i19": ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$16learn_ahead_secs17h7734b9a724b32449E.exit"
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$18get_new_review_mix17hb967e0d90fb54cc6E.exit.thread"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hb8d0926c96ded3c0E.exit.i.i20": ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$16learn_ahead_secs17h7734b9a724b32449E.exit"
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ac = load i8, ptr %i.ab, align 8, !range !6
  %i.ad = trunc nuw i8 %i.ac to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.ad, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$18get_config_default17h85ade8f1049c18edE.exit.i", label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$18get_new_review_mix17hb967e0d90fb54cc6E.exit.thread"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$18get_config_default17h85ade8f1049c18edE.exit.i": ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hb8d0926c96ded3c0E.exit.i.i20"
  %.fr.i = freeze i8 %i.aa                        ; 2 uses
  %switch.selectcmp = icmp eq i8 %.fr.i, 2
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 0
  %switch.selectcmp31 = icmp eq i8 %.fr.i, 1
  %switch.select32 = select i1 %switch.selectcmp31, i32 1, i32 %switch.select
  br label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$18get_new_review_mix17hb967e0d90fb54cc6E.exit.thread"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$18get_new_review_mix17hb967e0d90fb54cc6E.exit.thread": ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$18get_config_default17h85ade8f1049c18edE.exit.i", %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hb8d0926c96ded3c0E.exit.i.i20", %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hb8d0926c96ded3c0E.exit.thread.i.i19"
  %.sroa.09.0 = phi i32 [ 0, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hb8d0926c96ded3c0E.exit.thread.i.i19" ], [ %switch.select32, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$18get_config_default17h85ade8f1049c18edE.exit.i" ], [ 0, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hb8d0926c96ded3c0E.exit.i.i20" ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17hd4be9eee2e0594b5E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.b, ptr noundef nonnull align 8 %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @161, i64 noundef 14)
  %i.ae = load i64, ptr %i.b, align 8, !range !13, !noundef !3
  %.not.i.i21 = icmp eq i64 %i.ae, -9223372036854775773
  br i1 %.not.i.i21, label %bb.f, label %.thread.i.i22

.thread.i.i22:                                    ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$18get_new_review_mix17hb967e0d90fb54cc6E.exit.thread"
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.b)
  br label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$23get_creation_utc_offset17hc98478cd86e1baf4E.exit"

bb.f:                                             ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$18get_new_review_mix17hb967e0d90fb54cc6E.exit.thread"
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !range !16
  %i.ah = trunc nuw nsw i32 %i.ag to i8
  br label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$23get_creation_utc_offset17hc98478cd86e1baf4E.exit"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$23get_creation_utc_offset17hc98478cd86e1baf4E.exit": ; preds = %.thread.i.i22, %bb.f
  %.sroa.0.07.i.i23 = phi i8 [ 0, %.thread.i.i22 ], [ %i.ah, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17he6d4c5be612c4b9eE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, ptr noundef nonnull align 8 %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @197, i64 noundef 13)
  %i.ai = load i64, ptr %i.a, align 8, !range !13, !noundef !3
  %.not.i = icmp eq i64 %i.ai, -9223372036854775773
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ak = load i8, ptr %i.aj, align 8, !range !12
  br i1 %.not.i, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit", label %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i"

"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i": ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$23get_creation_utc_offset17hc98478cd86e1baf4E.exit"
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.a)
  br label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit": ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$23get_creation_utc_offset17hc98478cd86e1baf4E.exit", %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i"
  %.sroa.0.0.i = phi i8 [ 2, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i" ], [ %i.ak, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$23get_creation_utc_offset17hc98478cd86e1baf4E.exit" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.al = and i8 %.sroa.0.0.i, 1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.5.0.ph, ptr %i.am, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.0.07.i.i, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.09.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %.sroa.0.07.i.i23, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %i.al, ptr %.sroa.8.0..sroa_idx, align 1
  br label %bb.g

bb.g:                                             ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.thread.i.i", %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.i.i", %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit"
  %storemerge = phi i64 [ -9223372036854775773, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit" ], [ -9223372036854775776, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.i.i" ], [ -9223372036854775776, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.thread.i.i" ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki13browser_table46_$LT$impl$u20$anki..collection..Collection$GT$18browser_row_for_id17h14064fdb8eb98ea1E"(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noalias noundef align 8 dereferenceable(728) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 6 uses
  %i.b = alloca [88 x i8], align 8                ; 7 uses
  %i.c = alloca [272 x i8], align 8               ; 7 uses
  %.sroa.616 = alloca [112 x i8], align 8         ; 6 uses
  %i.d = alloca [272 x i8], align 8               ; 9 uses
  %i.e = alloca [8 x i8], align 8                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 600
  call void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17he6d4c5be612c4b9eE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, ptr noundef nonnull align 8 %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @163, i64 noundef 25)
  %i.g = load i64, ptr %i.a, align 8, !range !13, !noundef !3
  %.not.i = icmp eq i64 %i.g, -9223372036854775773
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !12
  br i1 %.not.i, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit", label %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i"

"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i": ; preds = %bb.a
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.a)
  br label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit": ; preds = %bb.a, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i"
  %.sroa.0.0.i = phi i8 [ 2, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i" ], [ %i.i, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %spec.select.i.i = trunc i8 %.sroa.0.0.i to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !noundef !3
  %.not = icmp eq ptr %i.k, null
  %. = select i1 %.not, ptr null, ptr %i.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @"_ZN75_$LT$core..option..Option$LT$T$GT$$u20$as$u20$snafu..OptionExt$LT$T$GT$$GT$16whatever_context17hbe6fa909e91f0433E"(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %., ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @57, i64 noundef 31, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39)
  %i.l = load i64, ptr %i.b, align 8, !range !27, !noundef !3 ; 2 uses
  %.not40 = icmp eq i64 %i.l, 4
  br i1 %.not40, label %bb.c, label %bb.b

bb.b:                                             ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit"
  %i.m = inttoptr i64 %i.l to ptr
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.333.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.525.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %.sroa.232.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.r

bb.c:                                             ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit"
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !3, !align !4, !noundef !3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !3, !noundef !3
  %i.q = atomicrmw add ptr %i.p, i64 1 monotonic, align 8
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.o, align 8, !nonnull !3, !noundef !3 ; 3 uses
  store ptr %i.s, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.616)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !3, !noundef !3
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.w = load i64, ptr %i.v, align 8, !noundef !3
  %i.x = invoke noundef zeroext i1 @_ZN4anki13browser_table20card_render_required17h702a66a3b0340fcdE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.u, i64 noundef %i.w)
          to label %bb.h unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.h, %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1979)
  call void @llvm.experimental.noalias.scope.decl(metadata !1980)
  %i.z = load ptr, ptr %i.e, align 8, !alias.scope !1981, !nonnull !3, !noundef !3
  %i.aa = atomicrmw add ptr %i.z, i64 -1 release, align 8, !noalias !1981
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.g, label %"_ZN4core3ptr95drop_in_place$LT$alloc..sync..Arc$LT$alloc..vec..Vec$LT$anki..browser_table..Column$GT$$GT$$GT$17hc7aae9c17b44f84fE.exit"

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc52093b45fa9b58aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %"_ZN4core3ptr95drop_in_place$LT$alloc..sync..Arc$LT$alloc..vec..Vec$LT$anki..browser_table..Column$GT$$GT$$GT$17hc7aae9c17b44f84fE.exit" unwind label %bb.s

bb.h:                                             ; preds = %bb.d
  invoke void @_ZN4anki13browser_table10RowContext3new17h98214515e7c42f8dE(ptr noalias noundef nonnull sret([272 x i8]) align 8 captures(address) dereferenceable(272) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(728) %1, i64 noundef %2, i1 noundef zeroext %spec.select.i.i, i1 noundef zeroext %i.x)
          to label %bb.i unwind label %bb.f

bb.i:                                             ; preds = %bb.h
  %i.ac = load i64, ptr %i.c, align 8, !range !8, !noundef !3 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, -9223372036854775808
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.616, ptr noundef nonnull align 8 dereferenceable(112) %i.ae, i64 112, i1 false)
  br i1 %i.ad, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.616, i64 112, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1982)
  call void @llvm.experimental.noalias.scope.decl(metadata !1983)
  %i.af = load ptr, ptr %i.e, align 8, !alias.scope !1984, !nonnull !3, !noundef !3
  %i.ag = atomicrmw add ptr %i.af, i64 -1 release, align 8, !noalias !1984
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.k, label %"_ZN4core3ptr95drop_in_place$LT$alloc..sync..Arc$LT$alloc..vec..Vec$LT$anki..browser_table..Column$GT$$GT$$GT$17hc7aae9c17b44f84fE.exit43"

bb.k:                                             ; preds = %bb.j
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc52093b45fa9b58aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
  br label %"_ZN4core3ptr95drop_in_place$LT$alloc..sync..Arc$LT$alloc..vec..Vec$LT$anki..browser_table..Column$GT$$GT$$GT$17hc7aae9c17b44f84fE.exit43"

"_ZN4core3ptr95drop_in_place$LT$alloc..sync..Arc$LT$alloc..vec..Vec$LT$anki..browser_table..Column$GT$$GT$$GT$17hc7aae9c17b44f84fE.exit43": ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.616)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.r

bb.l:                                             ; preds = %bb.i
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.636.0..sroa_idx, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.616, i64 112, i1 false)
  store i64 %i.ac, ptr %i.d, align 8
  %i.ai = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !3, !noundef !3
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.am = load i64, ptr %i.al, align 8, !noundef !3
  invoke void @_ZN4anki13browser_table10RowContext11browser_row17h693c7b1bd75d8271E(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ak, i64 noundef %i.am)
          to label %bb.o unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1985)
  call void @llvm.experimental.noalias.scope.decl(metadata !1986)
  %i.ao = load ptr, ptr %i.e, align 8, !alias.scope !1987, !nonnull !3, !noundef !3
  %i.ap = atomicrmw add ptr %i.ao, i64 -1 release, align 8, !noalias !1987
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.n, label %"_ZN4core3ptr95drop_in_place$LT$alloc..sync..Arc$LT$alloc..vec..Vec$LT$anki..browser_table..Column$GT$$GT$$GT$17hc7aae9c17b44f84fE.exit45"

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc52093b45fa9b58aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %"_ZN4core3ptr95drop_in_place$LT$alloc..sync..Arc$LT$alloc..vec..Vec$LT$anki..browser_table..Column$GT$$GT$$GT$17hc7aae9c17b44f84fE.exit45" unwind label %bb.s

bb.o:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !1988)
  call void @llvm.experimental.noalias.scope.decl(metadata !1989)
  %i.ar = load ptr, ptr %i.e, align 8, !alias.scope !1990, !nonnull !3, !noundef !3
  %i.as = atomicrmw add ptr %i.ar, i64 -1 release, align 8, !noalias !1990
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.p, label %"_ZN4core3ptr95drop_in_place$LT$alloc..sync..Arc$LT$alloc..vec..Vec$LT$anki..browser_table..Column$GT$$GT$$GT$17hc7aae9c17b44f84fE.exit47"

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc52093b45fa9b58aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %"_ZN4core3ptr95drop_in_place$LT$alloc..sync..Arc$LT$alloc..vec..Vec$LT$anki..browser_table..Column$GT$$GT$$GT$17hc7aae9c17b44f84fE.exit47" unwind label %bb.q

"_ZN4core3ptr95drop_in_place$LT$alloc..sync..Arc$LT$alloc..vec..Vec$LT$anki..browser_table..Column$GT$$GT$$GT$17hc7aae9c17b44f84fE.exit45": ; preds = %bb.m, %bb.n, %bb.q
  %.pn = phi { ptr, i32 } [ %i.au, %bb.q ], [ %i.an, %bb.n ], [ %i.an, %bb.m ]
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$anki..browser_table..RowContext$GT$17h0883a24ded35974bE"(ptr noalias noundef align 8 dereferenceable(272) %i.d) #27
          to label %"_ZN4core3ptr95drop_in_place$LT$alloc..sync..Arc$LT$alloc..vec..Vec$LT$anki..browser_table..Column$GT$$GT$$GT$17hc7aae9c17b44f84fE.exit" unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr95drop_in_place$LT$alloc..sync..Arc$LT$alloc..vec..Vec$LT$anki..browser_table..Column$GT$$GT$$GT$17hc7aae9c17b44f84fE.exit45"

"_ZN4core3ptr95drop_in_place$LT$alloc..sync..Arc$LT$alloc..vec..Vec$LT$anki..browser_table..Column$GT$$GT$$GT$17hc7aae9c17b44f84fE.exit47": ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call fastcc void @"_ZN4core3ptr52drop_in_place$LT$anki..browser_table..RowContext$GT$17h0883a24ded35974bE"(ptr noalias noundef align 8 dereferenceable(272) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.616)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.r

bb.r:                                             ; preds = %"_ZN4core3ptr95drop_in_place$LT$alloc..sync..Arc$LT$alloc..vec..Vec$LT$anki..browser_table..Column$GT$$GT$$GT$17hc7aae9c17b44f84fE.exit47", %"_ZN4core3ptr95drop_in_place$LT$alloc..sync..Arc$LT$alloc..vec..Vec$LT$anki..browser_table..Column$GT$$GT$$GT$17hc7aae9c17b44f84fE.exit43", %bb.b
  ret void

bb.s:                                             ; preds = %bb.n, %bb.g, %"_ZN4core3ptr95drop_in_place$LT$alloc..sync..Arc$LT$alloc..vec..Vec$LT$anki..browser_table..Column$GT$$GT$$GT$17hc7aae9c17b44f84fE.exit45"
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr95drop_in_place$LT$alloc..sync..Arc$LT$alloc..vec..Vec$LT$anki..browser_table..Column$GT$$GT$$GT$17hc7aae9c17b44f84fE.exit": ; preds = %bb.f, %bb.g, %"_ZN4core3ptr95drop_in_place$LT$alloc..sync..Arc$LT$alloc..vec..Vec$LT$anki..browser_table..Column$GT$$GT$$GT$17hc7aae9c17b44f84fE.exit45"
  %.pn.pn = phi { ptr, i32 } [ %.pn, %"_ZN4core3ptr95drop_in_place$LT$alloc..sync..Arc$LT$alloc..vec..Vec$LT$anki..browser_table..Column$GT$$GT$$GT$17hc7aae9c17b44f84fE.exit45" ], [ %i.y, %bb.g ], [ %i.y, %bb.f ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki13browser_table46_$LT$impl$u20$anki..collection..Collection$GT$19all_browser_columns17h040e3bf783dfe5f5E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store ptr %1, ptr %i.c, align 8
  call void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h2d42e8185418df40E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !3 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1996
  store ptr %i.a, ptr %i.b, align 8, !noalias !1997
  %i.j = icmp ult i64 %i.i, 2
  br i1 %i.j, label %bb.f, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ult i64 %i.i, 21
  br i1 %i.k, label %bb.d, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17h09adac767940d805E(ptr noalias noundef nonnull align 8 %i.g, i64 noundef %i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
end_hunk_1
begin_hunk_2_@"_ZN4anki13import_export7service94_$LT$impl$u20$anki..services..ImportExportService$u20$for$u20$anki..collection..Collection$GT$19import_anki_package17h0387fcb7c406a709E":bb.a
  invoke void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.u)
          to label %"_ZN4anki13import_export7package4apkg6import46_$LT$impl$u20$anki..collection..Collection$GT$11import_apkg17h13a04090d8657f5dE.exit.thread28" unwind label %bb.cm

bb.bz:                                            ; preds = %bb.bt
  %i.fm = load i64, ptr %i.c, align 8, !range !13, !noalias !2920, !noundef !3
  %.not1.i.i.i.i = icmp eq i64 %i.fm, -9223372036854775773
  br i1 %.not1.i.i.i.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.fn, ptr noundef nonnull align 8 dereferenceable(112) %i.c, i64 112, i1 false), !noalias !2921
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2920
  br label %bb.by

bb.cb:                                            ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2920
  br label %bb.bx

bb.cc:                                            ; preds = %.body.i22.i.i.i
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !2919
  unreachable

"_ZN4anki13import_export7package4apkg6import46_$LT$impl$u20$anki..collection..Collection$GT$11import_apkg17h13a04090d8657f5dE.exit.thread28": ; preds = %bb.bx, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2850
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.538.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2842
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2835
  br label %"_ZN4anki13import_export7package4apkg6import46_$LT$impl$u20$anki..collection..Collection$GT$11import_apkg17h13a04090d8657f5dE.exit.thread"

bb.cd:                                            ; preds = %bb.ci
  br i1 %.sroa.04.0.ph.i.i.i, label %.thread53.i.i.i, label %.body

bb.ce:                                            ; preds = %bb.r
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %.thread53.i.i.i

"_ZN4core3ptr185drop_in_place$LT$anki..import_export..package..apkg..import..$LT$impl$u20$anki..collection..Collection$GT$..import_apkg$LT$$RF$alloc..string..String$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h4f0b77d430d412f8E.exit.i.i.i": ; preds = %bb.r, %"_ZN4core3ptr76drop_in_place$LT$zip..read..zip_archive..ZipArchive$LT$std..fs..File$GT$$GT$17h838b84664d39e3afE.exit.i.i.i.i"
  %i.fq = load i64, ptr %i.aa, align 8, !range !20, !alias.scope !2922, !noalias !2842, !noundef !3
  %i.fr = icmp sgt i64 %i.fq, -1
  br i1 %i.fr, label %bb.cf, label %"_ZN4anki13import_export7package4apkg6import46_$LT$impl$u20$anki..collection..Collection$GT$11import_apkg17h13a04090d8657f5dE.exit.thread26"

bb.cf:                                            ; preds = %"_ZN4core3ptr185drop_in_place$LT$anki..import_export..package..apkg..import..$LT$impl$u20$anki..collection..Collection$GT$..import_apkg$LT$$RF$alloc..string..String$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h4f0b77d430d412f8E.exit.i.i.i"
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i.i.i" unwind label %bb.cg, !noalias !2923

bb.cg:                                            ; preds = %bb.cf
  %i.fs = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.body unwind label %bb.ch, !noalias !2923

bb.ch:                                            ; preds = %bb.cg
  %i.ft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !2923
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i.i.i": ; preds = %bb.cf
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %"_ZN4anki13import_export7package4apkg6import46_$LT$impl$u20$anki..collection..Collection$GT$11import_apkg17h13a04090d8657f5dE.exit.thread26" unwind label %bb.cm

bb.ci:                                            ; preds = %bb.t, %bb.l, %bb.k
  %.sroa.04.0.ph.i.i.i = phi i1 [ true, %bb.k ], [ true, %bb.l ], [ false, %bb.t ]
  %lpad.thr_comm.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @"_ZN4core3ptr185drop_in_place$LT$anki..import_export..package..apkg..import..$LT$impl$u20$anki..collection..Collection$GT$..import_apkg$LT$$RF$alloc..string..String$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h4f0b77d430d412f8E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ac) #27
          to label %bb.cd unwind label %bb.cj, !noalias !2855

bb.cj:                                            ; preds = %.thread53.i.i.i, %bb.ci
  %i.fu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !2923
  unreachable

.thread53.i.i.i:                                  ; preds = %bb.ce, %bb.cd, %bb.q, %bb.p
  %.pn56.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i.i, %bb.cd ], [ %i.fp, %bb.ce ], [ %i.bu, %bb.q ], [ %i.bu, %bb.p ]
  invoke fastcc void @"_ZN4core3ptr62drop_in_place$LT$core..option..Option$LT$anki..ops..Op$GT$$GT$17hf4b9532f55bebffbE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa) #27
          to label %.body unwind label %bb.cj, !noalias !2923

bb.ck:                                            ; preds = %bb.i
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr76drop_in_place$LT$zip..read..zip_archive..ZipArchive$LT$std..fs..File$GT$$GT$17h838b84664d39e3afE"(ptr noalias noundef align 8 dereferenceable(16) %i.af) #27
          to label %.body unwind label %bb.cl, !noalias !2833

bb.cl:                                            ; preds = %bb.ck
  %i.fv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !2833
  unreachable

bb.cm:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i.i.i", %bb.by, %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17hd38c23c9bcd9974aE.exit.thread.i.i.i", %"_ZN4anki13import_export7package4apkg6import46_$LT$impl$u20$anki..collection..Collection$GT$11import_apkg28_$u7b$$u7b$closure$u7d$$u7d$17h3f22d78313c44975E.exit.i.i.i", %bb.ap, %.noexc11.i.i.i, %bb.g, %bb.f, %bb.d, %bb.cn
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.aj, %bb.an, %bb.ao, %bb.ar, %bb.as, %.body.i.i.i.i, %.body.i22.i.i.i, %bb.cd, %bb.cg, %.thread53.i.i.i, %bb.ck, %bb.cm
  %eh.lpad-body = phi { ptr, i32 } [ %i.fw, %bb.cm ], [ %lpad.thr_comm.i.i.i.i, %bb.ar ], [ %lpad.thr_comm.split-lp.i, %bb.ck ], [ %i.fs, %bb.cg ], [ %lpad.thr_comm.split-lp.i.i.i, %bb.cd ], [ %.pn56.i.i.i, %.thread53.i.i.i ], [ %eh.lpad-body.i.i.i.i, %.body.i22.i.i.i ], [ %.pn.i.i.i.i, %.body.i.i.i.i ], [ %lpad.thr_comm.i.i.i.i, %bb.as ], [ %i.df, %bb.aj ], [ %i.dn, %bb.an ], [ %i.dn, %bb.ao ]
  invoke fastcc void @"_ZN4core3ptr72drop_in_place$LT$anki_proto..import_export..ImportAnkiPackageRequest$GT$17h9c481352c2daf90dE"(ptr noalias noundef align 8 dereferenceable(40) %2) #27
          to label %common.resume unwind label %bb.cs

"_ZN4anki13import_export7package4apkg6import46_$LT$impl$u20$anki..collection..Collection$GT$11import_apkg17h13a04090d8657f5dE.exit.thread26": ; preds = %"_ZN4core3ptr185drop_in_place$LT$anki..import_export..package..apkg..import..$LT$impl$u20$anki..collection..Collection$GT$..import_apkg$LT$$RF$alloc..string..String$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h4f0b77d430d412f8E.exit.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.538.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2842
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2835
  br label %"_ZN4anki13import_export7package4apkg6import46_$LT$impl$u20$anki..collection..Collection$GT$11import_apkg17h13a04090d8657f5dE.exit.thread"

"_ZN4anki13import_export7package4apkg6import46_$LT$impl$u20$anki..collection..Collection$GT$11import_apkg17h13a04090d8657f5dE.exit.thread": ; preds = %bb.e, %.noexc8, %"_ZN4anki13import_export7package4apkg6import46_$LT$impl$u20$anki..collection..Collection$GT$11import_apkg17h13a04090d8657f5dE.exit.thread28", %"_ZN4anki13import_export7package4apkg6import46_$LT$impl$u20$anki..collection..Collection$GT$11import_apkg17h13a04090d8657f5dE.exit.thread26"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.fy, ptr noundef nonnull align 8 dereferenceable(112) %i.fx, i64 112, i1 false)
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.cp

bb.cn:                                            ; preds = %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17hd38c23c9bcd9974aE.exit.i.i.i"
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.7.i.i.i, i64 112, i1 false), !noalias !2851
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.6.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.538.i.i.i, i64 112, i1 false), !noalias !2851
  store i64 %.sroa.036.0.copyload.i.i.i, ptr %i.ak, align 8, !alias.scope !2924
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.538.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2842
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.ai, ptr noundef nonnull align 8 dereferenceable(232) %i.ak, i64 232, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  invoke void @"_ZN4anki13import_export7service173_$LT$impl$u20$core..convert..From$LT$anki..ops..OpOutput$LT$anki_proto..import_export..import_response..Log$GT$$GT$$u20$for$u20$anki_proto..import_export..ImportResponse$GT$4from17h352d7a8b798dab6cE"(ptr noalias noundef nonnull sret([216 x i8]) align 8 captures(address) dereferenceable(216) %i.ah, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.ai)
          to label %bb.co unwind label %bb.cm

bb.co:                                            ; preds = %bb.cn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(216) %i.ah, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %"_ZN4anki13import_export7package4apkg6import46_$LT$impl$u20$anki..collection..Collection$GT$11import_apkg17h13a04090d8657f5dE.exit.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %2)
          to label %"_ZN4core3ptr72drop_in_place$LT$anki_proto..import_export..ImportAnkiPackageRequest$GT$17h9c481352c2daf90dE.exit" unwind label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.fz = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %2)
          to label %common.resume unwind label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ga = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

common.resume:                                    ; preds = %.body, %bb.cq
  %common.resume.op = phi { ptr, i32 } [ %i.fz, %bb.cq ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr72drop_in_place$LT$anki_proto..import_export..ImportAnkiPackageRequest$GT$17h9c481352c2daf90dE.exit": ; preds = %bb.cp
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %2)
  ret void

bb.cs:                                            ; preds = %.body
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki13import_export7service94_$LT$impl$u20$anki..services..ImportExportService$u20$for$u20$anki..collection..Collection$GT$31get_import_anki_package_presets17hfac519fb8f235bfbE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) initializes((0, 19)) %0, ptr noalias noundef align 8 dereferenceable(728) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 6 uses
  %i.b = alloca [112 x i8], align 8               ; 6 uses
  %i.c = alloca [112 x i8], align 8               ; 6 uses
  %i.d = alloca [112 x i8], align 8               ; 7 uses
  %i.e = alloca [112 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 5 uses
  call void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17he6d4c5be612c4b9eE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.c, ptr noundef nonnull align 8 %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @188, i64 noundef 14)
  %i.g = load i64, ptr %i.c, align 8, !range !13, !noundef !3
  %.not.i8 = icmp eq i64 %i.g, -9223372036854775773
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !12
  br i1 %.not.i8, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit", label %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i"

"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i": ; preds = %bb.a
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.c)
  br label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit": ; preds = %bb.a, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i"
  %.sroa.0.0.i = phi i8 [ 2, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i" ], [ %i.i, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17he6d4c5be612c4b9eE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.b, ptr noundef nonnull align 8 %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @189, i64 noundef 14)
  %i.j = load i64, ptr %i.b, align 8, !range !13, !noundef !3
  %.not.i9 = icmp eq i64 %i.j, -9223372036854775773
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i8, ptr %i.k, align 8, !range !12
  br i1 %.not.i9, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit12", label %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i10"

"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i10": ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit"
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.b)
  br label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit12"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit12": ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit", %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i10"
  %.sroa.0.0.i11 = phi i8 [ 2, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i10" ], [ %i.l, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17he6d4c5be612c4b9eE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, ptr noundef nonnull align 8 %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @190, i64 noundef 15)
  %i.m = load i64, ptr %i.a, align 8, !range !13, !noundef !3
  %.not.i13 = icmp eq i64 %i.m, -9223372036854775773
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load i8, ptr %i.n, align 8, !range !12
  br i1 %.not.i13, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit16", label %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i14"

"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i14": ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit12"
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.a)
  br label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit16"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit16": ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit12", %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i14"
  %.sroa.0.0.i15 = phi i8 [ 2, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i14" ], [ %i.o, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit12" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17h2ed662c879338143E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.e, ptr noundef nonnull align 8 %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @214, i64 noundef 11)
  %i.p = load i64, ptr %i.e, align 8, !range !13, !noundef !3
  %.not.i.i = icmp eq i64 %i.p, -9223372036854775773
  br i1 %.not.i.i, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hb3a443902265f718E.exit.i", label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hb3a443902265f718E.exit.thread.i"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hb3a443902265f718E.exit.thread.i": ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit16"
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.b

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hb3a443902265f718E.exit.i": ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit16"
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.r = load i32, ptr %i.q, align 8, !range !2925
  %.fr.i = freeze i32 %i.r                        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not.i = icmp eq i32 %.fr.i, 3
  br i1 %.not.i, label %bb.b, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$16get_update_notes17h967aa187da085d09E.exit"

bb.b:                                             ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hb3a443902265f718E.exit.i", %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hb3a443902265f718E.exit.thread.i"
  br label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$16get_update_notes17h967aa187da085d09E.exit"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$16get_update_notes17h967aa187da085d09E.exit": ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hb3a443902265f718E.exit.i", %bb.b
  %i.s = phi i32 [ 0, %bb.b ], [ %.fr.i, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hb3a443902265f718E.exit.i" ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17h2ed662c879338143E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.d, ptr noundef nonnull align 8 %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @215, i64 noundef 15)
  %i.t = load i64, ptr %i.d, align 8, !range !13, !noundef !3
  %.not.i.i3 = icmp eq i64 %i.t, -9223372036854775773
  br i1 %.not.i.i3, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hb3a443902265f718E.exit.i5", label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hb3a443902265f718E.exit.thread.i4"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hb3a443902265f718E.exit.thread.i4": ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$16get_update_notes17h967aa187da085d09E.exit"
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.c

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hb3a443902265f718E.exit.i5": ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$16get_update_notes17h967aa187da085d09E.exit"
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.v = load i32, ptr %i.u, align 8, !range !2925
  %.fr.i6 = freeze i32 %i.v                       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not.i7 = icmp eq i32 %.fr.i6, 3
  br i1 %.not.i7, label %bb.c, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$20get_update_notetypes17h94e657a0c8328d8cE.exit"

bb.c:                                             ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hb3a443902265f718E.exit.i5", %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hb3a443902265f718E.exit.thread.i4"
  br label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$20get_update_notetypes17h94e657a0c8328d8cE.exit"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$20get_update_notetypes17h94e657a0c8328d8cE.exit": ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hb3a443902265f718E.exit.i5", %bb.c
  %i.w = phi i32 [ 0, %bb.c ], [ %.fr.i6, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hb3a443902265f718E.exit.i5" ]
  %i.x = and i8 %.sroa.0.0.i, 1
  %i.y = and i8 %.sroa.0.0.i11, 1
  %i.z = and i8 %.sroa.0.0.i15, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.s, ptr %i.aa, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.w, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.x, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.y, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.z, ptr %.sroa.7.0..sroa_idx, align 2
  store i64 -9223372036854775773, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki14card_rendering7service95_$LT$impl$u20$anki..services..CardRenderingService$u20$for$u20$anki..collection..Collection$GT$10strip_html17h7dbfdac04e8f4c85E"(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(728) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %2) unnamed_addr #2 {
bb.a:
  tail call void @_ZN4anki14card_rendering7service16strip_html_proto17hce91872661685cb4E(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki14card_rendering7service95_$LT$impl$u20$anki..services..CardRenderingService$u20$for$u20$anki..collection..Collection$GT$13extract_latex17hcc692ca3faab4fb7E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree readnone align 8 captures(none) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 25
  %i.i = load i8, ptr %i.h, align 1, !range !6, !noundef !3
  %i.j = trunc nuw i8 %i.i to i1
  %_ZN4anki5latex30extract_latex_expanding_clozes17hf261fb75852616aeE._ZN4anki5latex13extract_latex17hcaa32f161749c63eE = select i1 %i.j, ptr @_ZN4anki5latex30extract_latex_expanding_clozes17hf261fb75852616aeE, ptr @_ZN4anki5latex13extract_latex17hcaa32f161749c63eE
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !3, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !3
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = load i8, ptr %i.o, align 8, !range !6, !noundef !3
  %i.q = trunc nuw i8 %i.p to i1
  invoke void %_ZN4anki5latex30extract_latex_expanding_clozes17hf261fb75852616aeE._ZN4anki5latex13extract_latex17hcaa32f161749c63eE(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.l, i64 noundef %i.n, i1 noundef zeroext %i.q)
          to label %bb.d unwind label %bb.c, !callees !2929

bb.b:                                             ; preds = %bb.i, %bb.n, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %i.ao, %bb.n ], [ %i.r, %bb.c ], [ %i.ai, %bb.i ]
  invoke fastcc void @"_ZN4core3ptr68drop_in_place$LT$anki_proto..card_rendering..ExtractLatexRequest$GT$17h32332e280553b159E"(ptr noalias noundef align 8 dereferenceable(32) %2) #27
          to label %common.resume unwind label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %.sroa.01.0.copyload = load i64, ptr %i.f, align 8 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.not = icmp eq i64 %.sroa.01.0.copyload, -9223372036854775808
  br i1 %.not, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2930
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %.sroa.4.0.copyload, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.e
  %i.t = load i64, ptr %i.a, align 8, !range !7, !noalias !2930, !noundef !3
  %i.u = trunc nuw i64 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !8, !noalias !2930, !noundef !3 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.g, !prof !9

bb.f:                                             ; preds = %.noexc
  %i.y = load i64, ptr %i.x, align 8, !noalias !2930
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.w, i64 %i.y) #26
          to label %.noexc13 unwind label %bb.n

.noexc13:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %.noexc
  %i.z = load ptr, ptr %i.x, align 8, !noalias !2930, !nonnull !3, !noundef !3 ; 2 uses
  %i.aa = icmp ule i64 %.sroa.4.0.copyload, %i.w
  call void @llvm.assume(i1 %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2930
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull readonly align 1 %.sroa.3.0.copyload, i64 %.sroa.4.0.copyload, i1 false), !noalias !2931
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  %.sink20 = phi i64 [ %i.w, %bb.g ], [ %.sroa.01.0.copyload, %bb.d ]
  %.sink = phi ptr [ %i.z, %bb.g ], [ %.sroa.3.0.copyload, %bb.d ]
  store i64 %.sink20, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sink, ptr %.sroa.4.0..sroa_idx14, align 8
  %.sroa.5.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.4.0.copyload, ptr %.sroa.5.0..sroa_idx16, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.ad = load i64, ptr %i.g, align 8, !range !11, !noundef !3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noundef !3 ; 2 uses
  %i.ag = icmp ult i64 %i.af, 192153584101141163
  call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw [48 x i8], ptr %i.ac, i64 %i.af
  store ptr %i.ac, ptr %i.b, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ac, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.ad, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.ah, ptr %.sroa.6.0..sroa_idx, align 8
  invoke void @_ZN5alloc3vec16in_place_collect18from_iter_in_place17hf2455275b19c9145E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #27
          to label %bb.b unwind label %bb.m

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ak, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  store i64 -9223372036854775773, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %"_ZN4core3ptr68drop_in_place$LT$anki_proto..card_rendering..ExtractLatexRequest$GT$17h32332e280553b159E.exit" unwind label %bb.k

end_hunk_2
begin_hunk_3_@"_ZN4anki5stats7service87_$LT$impl$u20$anki..services..StatsService$u20$for$u20$anki..collection..Collection$GT$6graphs17hde6474d91a5a456bE":bb.a

bb.ay:                                            ; preds = %bb.be, %bb.bd, %bb.bc, %bb.ba, %bb.az, %bb.ax, %bb.aw
  %.sroa.19.1.i.i.i = phi i32 [ %.sroa.19.019.i.i.i, %bb.az ], [ %.sroa.19.019.i.i.i, %bb.ba ], [ %.sroa.19.019.i.i.i, %bb.be ], [ %.sroa.19.019.i.i.i, %bb.bd ], [ %.sroa.19.019.i.i.i, %bb.bc ], [ %.sroa.19.019.i.i.i, %bb.aw ], [ %i.dl, %bb.ax ] ; 2 uses
  %.sroa.16.1.i.i.i = phi i32 [ %.sroa.16.020.i.i.i, %bb.az ], [ %.sroa.16.020.i.i.i, %bb.ba ], [ %.sroa.16.020.i.i.i, %bb.be ], [ %.sroa.16.020.i.i.i, %bb.bd ], [ %.sroa.16.020.i.i.i, %bb.bc ], [ %i.dk, %bb.aw ], [ %.sroa.16.020.i.i.i, %bb.ax ] ; 2 uses
  %.sroa.13.1.i.i.i = phi i32 [ %.sroa.13.021.i.i.i, %bb.az ], [ %.sroa.13.021.i.i.i, %bb.ba ], [ %.sroa.13.021.i.i.i, %bb.be ], [ %i.dv, %bb.bd ], [ %.sroa.13.021.i.i.i, %bb.bc ], [ %.sroa.13.021.i.i.i, %bb.aw ], [ %.sroa.13.021.i.i.i, %bb.ax ] ; 2 uses
  %i.dm = phi <4 x i32> [ %i.dp, %bb.az ], [ %i.dq, %bb.ba ], [ %i.dw, %bb.be ], [ %i.de, %bb.bd ], [ %i.du, %bb.bc ], [ %i.de, %bb.aw ], [ %i.de, %bb.ax ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.07.013.i.i.i, i64 148
  %i.do = load i8, ptr %i.dn, align 4, !range !23, !noalias !7260, !noundef !3
  switch i8 %i.do, label %default.unreachable [
    i8 0, label %bb.bf
    i8 1, label %bb.bg
    i8 2, label %bb.bh
    i8 3, label %bb.bi
  ]

default.unreachable:                              ; preds = %bb.ay, %bb.av
  unreachable

bb.az:                                            ; preds = %bb.av
  %i.dp = add <4 x i32> %i.de, <i32 1, i32 0, i32 0, i32 0>
  br label %bb.ay

bb.ba:                                            ; preds = %bb.av
  %i.dq = add <4 x i32> %i.de, <i32 0, i32 1, i32 0, i32 0>
  br label %bb.ay

bb.bb:                                            ; preds = %bb.av
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.07.013.i.i.i, i64 124
  %i.ds = load i32, ptr %i.dr, align 4, !noalias !7260, !noundef !3
  %i.dt = icmp ult i32 %i.ds, 21
  br i1 %i.dt, label %bb.be, label %bb.bd

bb.bc:                                            ; preds = %bb.av
  %i.du = add <4 x i32> %i.de, <i32 0, i32 0, i32 1, i32 0>
  br label %bb.ay

bb.bd:                                            ; preds = %bb.bb
  %i.dv = add i32 %.sroa.13.021.i.i.i, 1
  br label %bb.ay

bb.be:                                            ; preds = %bb.bb
  %i.dw = add <4 x i32> %i.de, <i32 0, i32 0, i32 0, i32 1>
  br label %bb.ay

bb.bf:                                            ; preds = %bb.ay
  %i.dx = add <4 x i32> %i.dd, <i32 1, i32 0, i32 0, i32 0>
  br label %bb.bj

bb.bg:                                            ; preds = %bb.ay
  %i.dy = add <4 x i32> %i.dd, <i32 0, i32 1, i32 0, i32 0>
  br label %bb.bj

bb.bh:                                            ; preds = %bb.ay
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.07.013.i.i.i, i64 124
  %i.ea = load i32, ptr %i.dz, align 4, !noalias !7260, !noundef !3
  %i.eb = icmp ult i32 %i.ea, 21
  br i1 %i.eb, label %bb.bl, label %bb.bk

bb.bi:                                            ; preds = %bb.ay
  %i.ec = add <4 x i32> %i.dd, <i32 0, i32 0, i32 1, i32 0>
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bl, %bb.bk, %bb.bi, %bb.bg, %bb.bf
  %.sroa.135.1.i.i.i = phi i32 [ %.sroa.135.014.i.i.i, %bb.bf ], [ %.sroa.135.014.i.i.i, %bb.bg ], [ %.sroa.135.014.i.i.i, %bb.bl ], [ %i.ef, %bb.bk ], [ %.sroa.135.014.i.i.i, %bb.bi ] ; 2 uses
  %i.ed = phi <4 x i32> [ %i.dx, %bb.bf ], [ %i.dy, %bb.bg ], [ %i.eg, %bb.bl ], [ %i.dd, %bb.bk ], [ %i.ec, %bb.bi ] ; 2 uses
  %i.ee = icmp eq ptr %i.df, %i.db
  br i1 %i.ee, label %"_ZN4anki5stats6graphs11card_counts52_$LT$impl$u20$anki..stats..graphs..GraphsContext$GT$11card_counts17he8f56c8bedc179edE.exit.i.i", label %.lr.ph.i.i.i

bb.bk:                                            ; preds = %bb.bh
  %i.ef = add i32 %.sroa.135.014.i.i.i, 1
  br label %bb.bj

bb.bl:                                            ; preds = %bb.bh
  %i.eg = add <4 x i32> %i.dd, <i32 0, i32 0, i32 0, i32 1>
  br label %bb.bj

bb.bm:                                            ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hb8d0926c96ded3c0E.exit.thread.i.i.i.i", %bb.bn, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.thread.i.i.i.i", %"_ZN4anki5stats6graphs11card_counts52_$LT$impl$u20$anki..stats..graphs..GraphsContext$GT$11card_counts17he8f56c8bedc179edE.exit.i.i"
  %i.eh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr92drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Buttons$GT$$GT$17hb04d686534998debE"(ptr noalias noundef align 8 dereferenceable(288) %i.h) #27
          to label %bb.as unwind label %bb.bw, !noalias !7254

"_ZN4anki5stats6graphs11card_counts52_$LT$impl$u20$anki..stats..graphs..GraphsContext$GT$11card_counts17he8f56c8bedc179edE.exit.i.i": ; preds = %bb.bj, %bb.au
  %.sroa.135.0.lcssa.i.i.i = phi i32 [ 0, %bb.au ], [ %.sroa.135.1.i.i.i, %bb.bj ]
  %.sroa.19.0.lcssa.i.i.i = phi i32 [ 0, %bb.au ], [ %.sroa.19.1.i.i.i, %bb.bj ]
  %.sroa.16.0.lcssa.i.i.i = phi i32 [ 0, %bb.au ], [ %.sroa.16.1.i.i.i, %bb.bj ]
  %.sroa.13.0.lcssa.i.i.i = phi i32 [ 0, %bb.au ], [ %.sroa.13.1.i.i.i, %bb.bj ]
  %i.ei = phi <4 x i32> [ zeroinitializer, %bb.au ], [ %i.ed, %bb.bj ]
  %i.ej = phi <4 x i32> [ zeroinitializer, %bb.au ], [ %i.dm, %bb.bj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7261
  invoke void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17h55af1610e70099a1E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.c, ptr noundef nonnull align 8 %i.bq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @223, i64 noundef 8)
          to label %.noexc172.i.i unwind label %bb.bm, !noalias !7254

.noexc172.i.i:                                    ; preds = %"_ZN4anki5stats6graphs11card_counts52_$LT$impl$u20$anki..stats..graphs..GraphsContext$GT$11card_counts17he8f56c8bedc179edE.exit.i.i"
  %i.ek = load i64, ptr %i.c, align 8, !range !13, !noalias !7261, !noundef !3
  %.not.i.i.i.i.i = icmp eq i64 %i.ek, -9223372036854775773
  br i1 %.not.i.i.i.i.i, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.i.i.i.i", label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.thread.i.i.i.i"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.thread.i.i.i.i": ; preds = %.noexc172.i.i
  invoke void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.c)
          to label %.noexc173.i.i unwind label %bb.bm, !noalias !7254

.noexc173.i.i:                                    ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.thread.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7261
  br label %bb.bp

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.i.i.i.i": ; preds = %.noexc172.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.em = load i8, ptr %i.el, align 8, !range !12, !noalias !7261
  %.fr.i.i.i.i = freeze i8 %i.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7261
  %switch.i.i.i = icmp ult i8 %.fr.i.i.i.i, 2
  br i1 %switch.i.i.i, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7261
  invoke void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17h82d9945688c79aa3E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.b, ptr noundef nonnull align 8 %i.bq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @212, i64 noundef 8)
          to label %.noexc174.i.i unwind label %bb.bm, !noalias !7254

.noexc174.i.i:                                    ; preds = %bb.bn
  %i.en = load i64, ptr %i.b, align 8, !range !13, !noalias !7261, !noundef !3
  %.not.i.i5.i.i.i = icmp eq i64 %i.en, -9223372036854775773
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.ep = load i8, ptr %i.eo, align 1, !noalias !7261
  br i1 %.not.i.i5.i.i.i, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hb8d0926c96ded3c0E.exit.i.i.i.i", label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hb8d0926c96ded3c0E.exit.thread.i.i.i.i"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hb8d0926c96ded3c0E.exit.thread.i.i.i.i": ; preds = %.noexc174.i.i
  invoke void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.b)
          to label %.noexc175.i.i unwind label %bb.bm, !noalias !7254

.noexc175.i.i:                                    ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hb8d0926c96ded3c0E.exit.thread.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7261
  br label %bb.bq

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hb8d0926c96ded3c0E.exit.i.i.i.i": ; preds = %.noexc174.i.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.er = load i8, ptr %i.eq, align 8, !range !6, !noalias !7261
  %i.es = trunc nuw i8 %i.er to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7261
  br i1 %i.es, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hb8d0926c96ded3c0E.exit.i.i.i.i"
  %.sroa.0.0.i.i.i.i.i = call noundef range(i8 0, 24) i8 @llvm.umin.i8(i8 %i.ep, i8 23)
  %i.et = zext nneg i8 %.sroa.0.0.i.i.i.i.i to i32
  br label %bb.bq

bb.bp:                                            ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.i.i.i.i", %.noexc173.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775776, ptr %i.eu, align 8, !alias.scope !7254
  store i64 -9223372036854775807, ptr %0, align 8, !alias.scope !7254
  invoke fastcc void @"_ZN4core3ptr92drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Buttons$GT$$GT$17hb04d686534998debE"(ptr noalias noundef align 8 dereferenceable(288) %i.h)
          to label %bb.bz unwind label %bb.by, !noalias !7254

bb.bq:                                            ; preds = %bb.bo, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hb8d0926c96ded3c0E.exit.i.i.i.i", %.noexc175.i.i
  %.sroa.4240.0.ph.i.i = phi i32 [ 4, %.noexc175.i.i ], [ 4, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hb8d0926c96ded3c0E.exit.i.i.i.i" ], [ %i.et, %bb.bo ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7255
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7255
  invoke void @"_ZN4anki5stats6graphs14retrievability52_$LT$impl$u20$anki..stats..graphs..GraphsContext$GT$14retrievability17hb68e496c5898d9d0E"(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ae)
          to label %bb.bs unwind label %bb.br, !noalias !7254

"_ZN4core3ptr99drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Retrievability$GT$$GT$17hbbc92000b0d87789E.exit.i.i": ; preds = %bb.bu, %bb.bt, %bb.br
  %.pn146.i.i = phi { ptr, i32 } [ %i.ev, %bb.br ], [ %i.ez, %bb.bu ], [ %i.ez, %bb.bt ]
  invoke fastcc void @"_ZN4core3ptr92drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Buttons$GT$$GT$17hb04d686534998debE"(ptr noalias noundef align 8 dereferenceable(288) %i.h) #27
          to label %bb.bx unwind label %bb.bw, !noalias !7254

bb.br:                                            ; preds = %bb.bq
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr99drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Retrievability$GT$$GT$17hbbc92000b0d87789E.exit.i.i"

bb.bs:                                            ; preds = %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false), !noalias !7255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7255
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7255
  invoke void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17he6d4c5be612c4b9eE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, ptr noundef nonnull align 8 %i.bq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @191, i64 noundef 4)
          to label %.noexc213.i.i unwind label %bb.bt, !noalias !7254

.noexc213.i.i:                                    ; preds = %bb.bs
  %i.ew = load i64, ptr %i.a, align 8, !range !13, !noalias !7255, !noundef !3
  %.not.i212.i.i = icmp eq i64 %i.ew, -9223372036854775773
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ey = load i8, ptr %i.ex, align 8, !range !12, !noalias !7255
  br i1 %.not.i212.i.i, label %bb.bv, label %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i.i.i"

"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i.i.i": ; preds = %.noexc213.i.i
  invoke void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.a)
          to label %bb.bv unwind label %bb.bt, !noalias !7254

bb.bt:                                            ; preds = %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i.i.i", %bb.bs
  %i.ez = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fa = load ptr, ptr %i.f, align 8, !alias.scope !7262, !noalias !7255, !noundef !3
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %"_ZN4core3ptr99drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Retrievability$GT$$GT$17hbbc92000b0d87789E.exit.i.i", label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  invoke void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h08c1dd6f60a4fbe9E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.f)
          to label %"_ZN4core3ptr99drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Retrievability$GT$$GT$17hbbc92000b0d87789E.exit.i.i" unwind label %bb.bw, !noalias !7254

bb.bv:                                            ; preds = %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i.i.i", %.noexc213.i.i
  %.sroa.0.0.i.i.i = phi i8 [ %i.ey, %.noexc213.i.i ], [ 2, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7255
  %.sroa.048.sroa.0.96..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.048.sroa.0.i.i, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.048.sroa.0.96..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(288) %i.h, i64 288, i1 false), !noalias !7255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.048.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(96) %i.j, i64 96, i1 false), !noalias !7255
  %.sroa.048.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 388
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.048.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.550.i.i, i64 36, i1 false), !noalias !7252
  %.sroa.048.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.048.sroa.8.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false), !noalias !7252
  %.sroa.048.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.048.sroa.9.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 56, i1 false), !noalias !7252
  %.sroa.048.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 776
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.048.sroa.10.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 48, i1 false), !noalias !7252
  %.sroa.048.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 608
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.048.sroa.7.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.s, i64 56, i1 false), !noalias !7252
  %.sroa.048.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 824
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.048.sroa.11.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.y, i64 48, i1 false), !noalias !7252
  %.sroa.048.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 872
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.048.sroa.12.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(96) %i.w, i64 96, i1 false), !noalias !7252
  %.sroa.048.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 968
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.048.sroa.13.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false), !noalias !7252
  %i.fc = and i8 %.sroa.0.0.i.i.i, 1
  %.sroa.048.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.048.sroa.14.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false), !noalias !7252
  %.sroa.048.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.048.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(120) %i.u, i64 120, i1 false), !noalias !7252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !7255
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.550.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !7255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !7255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !7255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !7255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !7255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !7255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !7255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1088) %0, ptr noundef nonnull align 8 dereferenceable(384) %.sroa.048.sroa.0.i.i, i64 384, i1 false), !noalias !7252
  %.sroa.048.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i32 1, ptr %.sroa.048.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !7254
  %.sroa.048.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 424
  store i32 1, ptr %.sroa.048.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !7254
  %.sroa.048.sroa.5.sroa.2.0..sroa.048.sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 428
  store <4 x i32> %i.ei, ptr %.sroa.048.sroa.5.sroa.2.0..sroa.048.sroa.5.0..sroa_idx.sroa_idx.i.i, align 4, !alias.scope !7254
  %.sroa.048.sroa.5.sroa.6.0..sroa.048.sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 444
  store i32 %.sroa.135.0.lcssa.i.i.i, ptr %.sroa.048.sroa.5.sroa.6.0..sroa.048.sroa.5.0..sroa_idx.sroa_idx.i.i, align 4, !alias.scope !7254
  %.sroa.048.sroa.5.sroa.7.0..sroa.048.sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 448
  store i32 0, ptr %.sroa.048.sroa.5.sroa.7.0..sroa.048.sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !7254
  %.sroa.048.sroa.5.sroa.8.0..sroa.048.sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 452
  store i32 0, ptr %.sroa.048.sroa.5.sroa.8.0..sroa.048.sroa.5.0..sroa_idx.sroa_idx.i.i, align 4, !alias.scope !7254
  %.sroa.048.sroa.5.sroa.9.0..sroa.048.sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i32 1, ptr %.sroa.048.sroa.5.sroa.9.0..sroa.048.sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !7254
  %.sroa.048.sroa.5.sroa.10.0..sroa.048.sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 460
  store <4 x i32> %i.ej, ptr %.sroa.048.sroa.5.sroa.10.0..sroa.048.sroa.5.0..sroa_idx.sroa_idx.i.i, align 4, !alias.scope !7254
  %.sroa.048.sroa.5.sroa.14.0..sroa.048.sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 476
  store i32 %.sroa.13.0.lcssa.i.i.i, ptr %.sroa.048.sroa.5.sroa.14.0..sroa.048.sroa.5.0..sroa_idx.sroa_idx.i.i, align 4, !alias.scope !7254
  %.sroa.048.sroa.5.sroa.15.0..sroa.048.sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 480
  store i32 %.sroa.16.0.lcssa.i.i.i, ptr %.sroa.048.sroa.5.sroa.15.0..sroa.048.sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !7254
  %.sroa.048.sroa.5.sroa.16.0..sroa.048.sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 484
  store i32 %.sroa.19.0.lcssa.i.i.i, ptr %.sroa.048.sroa.5.sroa.16.0..sroa.048.sroa.5.0..sroa_idx.sroa_idx.i.i, align 4, !alias.scope !7254
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1080
  store i32 %.sroa.4240.0.ph.i.i, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !alias.scope !7254
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1084
  store i8 %i.fc, ptr %.sroa.15.0..sroa_idx.i.i, align 4, !alias.scope !7254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !7255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !7255
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$anki..stats..graphs..GraphsContext$GT$17h2999b9e7d32e4923E"(ptr noalias noundef align 8 dereferenceable(72) %i.ae)
          to label %.noexc25.i unwind label %bb.d, !noalias !7247

.noexc25.i:                                       ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !7255
  br label %bb.dc

bb.bw:                                            ; preds = %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cv, %"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..FutureDue$GT$$GT$17h7aa01b538e07ea2fE.exit196.i.i", %bb.co, %bb.cl, %bb.ci, %bb.cf, %bb.cb, %bb.bx, %bb.bu, %"_ZN4core3ptr99drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Retrievability$GT$$GT$17hbbc92000b0d87789E.exit.i.i", %bb.bm, %bb.as, %bb.ao, %bb.ak, %bb.ah, %"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..FutureDue$GT$$GT$17h7aa01b538e07ea2fE.exit.i.i", %bb.ab, %.thread253.i.i, %bb.q
  %i.fd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !7254
  unreachable

bb.bx:                                            ; preds = %bb.by, %"_ZN4core3ptr99drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Retrievability$GT$$GT$17hbbc92000b0d87789E.exit.i.i"
  %.pn148.i.i = phi { ptr, i32 } [ %i.fe, %bb.by ], [ %.pn146.i.i, %"_ZN4core3ptr99drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Retrievability$GT$$GT$17hbbc92000b0d87789E.exit.i.i" ]
  invoke fastcc void @"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Hours$GT$$GT$17hec50492b423589c1E"(ptr noalias noundef align 8 dereferenceable(96) %i.j) #27
          to label %bb.ca unwind label %bb.bw, !noalias !7254

bb.by:                                            ; preds = %bb.bp
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bz:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7255
  invoke fastcc void @"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Hours$GT$$GT$17hec50492b423589c1E"(ptr noalias noundef align 8 dereferenceable(96) %i.j)
          to label %bb.cd unwind label %bb.cc, !noalias !7254

bb.ca:                                            ; preds = %bb.cc, %bb.bx
  %.pn150.i.i = phi { ptr, i32 } [ %i.fh, %bb.cc ], [ %.pn148.i.i, %bb.bx ] ; 2 uses
  %i.ff = load ptr, ptr %i.l, align 8, !alias.scope !7263, !noalias !7255, !noundef !3
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Eases$GT$$GT$17h6661aaa7f2d0a2bfE.exit180.i.i", label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  invoke void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h08c1dd6f60a4fbe9E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.l)
          to label %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Eases$GT$$GT$17h6661aaa7f2d0a2bfE.exit180.i.i" unwind label %bb.bw, !noalias !7254

bb.cc:                                            ; preds = %bb.bz
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.cd:                                            ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !7255
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.550.i.i)
  %i.fi = load ptr, ptr %i.l, align 8, !alias.scope !7264, !noalias !7255, !noundef !3
  %i.fj = icmp eq ptr %i.fi, null
  br i1 %i.fj, label %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Eases$GT$$GT$17h6661aaa7f2d0a2bfE.exit182.i.i", label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  invoke void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h08c1dd6f60a4fbe9E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.l)
          to label %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Eases$GT$$GT$17h6661aaa7f2d0a2bfE.exit182.i.i" unwind label %bb.cg, !noalias !7254

"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Eases$GT$$GT$17h6661aaa7f2d0a2bfE.exit180.i.i": ; preds = %bb.cg, %bb.cb, %bb.ca
  %.pn152.i.i = phi { ptr, i32 } [ %i.fm, %bb.cg ], [ %.pn150.i.i, %bb.cb ], [ %.pn150.i.i, %bb.ca ] ; 2 uses
  %i.fk = load ptr, ptr %i.m, align 8, !alias.scope !7265, !noalias !7255, !noundef !3
  %i.fl = icmp eq ptr %i.fk, null
  br i1 %i.fl, label %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Eases$GT$$GT$17h6661aaa7f2d0a2bfE.exit184.i.i", label %bb.cf

bb.cf:                                            ; preds = %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Eases$GT$$GT$17h6661aaa7f2d0a2bfE.exit180.i.i"
  invoke void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h08c1dd6f60a4fbe9E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.m)
          to label %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Eases$GT$$GT$17h6661aaa7f2d0a2bfE.exit184.i.i" unwind label %bb.bw, !noalias !7254

bb.cg:                                            ; preds = %bb.ce
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Eases$GT$$GT$17h6661aaa7f2d0a2bfE.exit180.i.i"

"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Eases$GT$$GT$17h6661aaa7f2d0a2bfE.exit182.i.i": ; preds = %bb.ce, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !7255
  %i.fn = load ptr, ptr %i.m, align 8, !alias.scope !7266, !noalias !7255, !noundef !3
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Eases$GT$$GT$17h6661aaa7f2d0a2bfE.exit186.i.i", label %bb.ch

bb.ch:                                            ; preds = %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Eases$GT$$GT$17h6661aaa7f2d0a2bfE.exit182.i.i"
  invoke void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h08c1dd6f60a4fbe9E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.m)
          to label %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Eases$GT$$GT$17h6661aaa7f2d0a2bfE.exit186.i.i" unwind label %bb.cj, !noalias !7254

"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Eases$GT$$GT$17h6661aaa7f2d0a2bfE.exit184.i.i": ; preds = %bb.cj, %bb.cf, %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Eases$GT$$GT$17h6661aaa7f2d0a2bfE.exit180.i.i"
  %.pn154.i.i = phi { ptr, i32 } [ %i.fr, %bb.cj ], [ %.pn152.i.i, %bb.cf ], [ %.pn152.i.i, %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Eases$GT$$GT$17h6661aaa7f2d0a2bfE.exit180.i.i" ] ; 2 uses
  %i.fp = load ptr, ptr %i.o, align 8, !alias.scope !7267, !noalias !7255, !noundef !3
  %i.fq = icmp eq ptr %i.fp, null
  br i1 %i.fq, label %"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Intervals$GT$$GT$17h71c814ff7a2c5d79E.exit188.i.i", label %bb.ci

bb.ci:                                            ; preds = %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Eases$GT$$GT$17h6661aaa7f2d0a2bfE.exit184.i.i"
  invoke void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h08c1dd6f60a4fbe9E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.o)
          to label %"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Intervals$GT$$GT$17h71c814ff7a2c5d79E.exit188.i.i" unwind label %bb.bw, !noalias !7254

bb.cj:                                            ; preds = %bb.ch
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Eases$GT$$GT$17h6661aaa7f2d0a2bfE.exit184.i.i"

"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Eases$GT$$GT$17h6661aaa7f2d0a2bfE.exit186.i.i": ; preds = %bb.ch, %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Eases$GT$$GT$17h6661aaa7f2d0a2bfE.exit182.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !7255
  %i.fs = load ptr, ptr %i.o, align 8, !alias.scope !7268, !noalias !7255, !noundef !3
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Intervals$GT$$GT$17h71c814ff7a2c5d79E.exit190.i.i", label %bb.ck

bb.ck:                                            ; preds = %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Eases$GT$$GT$17h6661aaa7f2d0a2bfE.exit186.i.i"
  invoke void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h08c1dd6f60a4fbe9E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.o)
          to label %"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Intervals$GT$$GT$17h71c814ff7a2c5d79E.exit190.i.i" unwind label %bb.cm, !noalias !7254

"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Intervals$GT$$GT$17h71c814ff7a2c5d79E.exit188.i.i": ; preds = %bb.cm, %bb.ci, %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Eases$GT$$GT$17h6661aaa7f2d0a2bfE.exit184.i.i"
  %.pn156.i.i = phi { ptr, i32 } [ %i.fw, %bb.cm ], [ %.pn154.i.i, %bb.ci ], [ %.pn154.i.i, %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Eases$GT$$GT$17h6661aaa7f2d0a2bfE.exit184.i.i" ] ; 2 uses
  %i.fu = load ptr, ptr %i.q, align 8, !alias.scope !7269, !noalias !7255, !noundef !3
  %i.fv = icmp eq ptr %i.fu, null
  br i1 %i.fv, label %"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Intervals$GT$$GT$17h71c814ff7a2c5d79E.exit192.i.i", label %bb.cl

bb.cl:                                            ; preds = %"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Intervals$GT$$GT$17h71c814ff7a2c5d79E.exit188.i.i"
  invoke void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h08c1dd6f60a4fbe9E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.q)
          to label %"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Intervals$GT$$GT$17h71c814ff7a2c5d79E.exit192.i.i" unwind label %bb.bw, !noalias !7254

bb.cm:                                            ; preds = %bb.ck
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Intervals$GT$$GT$17h71c814ff7a2c5d79E.exit188.i.i"

"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Intervals$GT$$GT$17h71c814ff7a2c5d79E.exit190.i.i": ; preds = %bb.ck, %"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Eases$GT$$GT$17h6661aaa7f2d0a2bfE.exit186.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !7255
  %i.fx = load ptr, ptr %i.q, align 8, !alias.scope !7270, !noalias !7255, !noundef !3
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Intervals$GT$$GT$17h71c814ff7a2c5d79E.exit194.i.i", label %bb.cn

bb.cn:                                            ; preds = %"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Intervals$GT$$GT$17h71c814ff7a2c5d79E.exit190.i.i"
  invoke void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h08c1dd6f60a4fbe9E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.q)
          to label %"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Intervals$GT$$GT$17h71c814ff7a2c5d79E.exit194.i.i" unwind label %bb.cp, !noalias !7254

"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Intervals$GT$$GT$17h71c814ff7a2c5d79E.exit192.i.i": ; preds = %bb.cp, %bb.cl, %"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Intervals$GT$$GT$17h71c814ff7a2c5d79E.exit188.i.i"
  %.pn158.i.i = phi { ptr, i32 } [ %i.gc, %bb.cp ], [ %.pn156.i.i, %bb.cl ], [ %.pn156.i.i, %"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$anki_proto..stats..graphs_response..Intervals$GT$$GT$17h71c814ff7a2c5d79E.exit188.i.i" ] ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.s, i64 52
  %i.ga = load i8, ptr %i.fz, align 4, !range !12, !alias.scope !7271, !noalias !7255, !noundef !3
  %i.gb = icmp eq i8 %i.ga, 2
end_hunk_3
begin_hunk_4_@"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$10set_config17hfb1e3d430b811404E":switch.lookup
  %i.ba = trunc nuw nsw i32 %.sroa.0.2.i.i.i.i.i.i to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.az
  %i.bc = or disjoint i8 %i.ba, 48
  store i8 %i.bc, ptr %i.bb, align 1, !alias.scope !7398, !noalias !7397
  br label %"_ZN10serde_core3ser5impls60_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$u32$GT$9serialize17h7b577dcd7853a993E.exit.i.i"

"_ZN10serde_core3ser5impls60_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$u32$GT$9serialize17h7b577dcd7853a993E.exit.i.i": ; preds = %bb.e, %bb.d
  %.sroa.011.2.i.i.i.i.i.i = phi i64 [ %i.az, %bb.e ], [ %i.av, %bb.d ] ; 2 uses
  %i.bd = sub i64 10, %.sroa.011.2.i.i.i.i.i.i    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.011.2.i.i.i.i.i.i
  %i.bf = icmp ult i64 %i.bd, 11
  call void @llvm.assume(i1 %i.bf)
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.be, i64 noundef %i.bd)
          to label %_ZN10serde_json3ser6to_vec17h97cb0daaca30489dE.exit unwind label %bb.f, !noalias !7396

bb.f:                                             ; preds = %"_ZN10serde_core3ser5impls60_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$u32$GT$9serialize17h7b577dcd7853a993E.exit.i.i"
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE"(ptr noalias noundef align 8 dereferenceable(24) %i.c) #27
          to label %common.resume unwind label %bb.g, !noalias !7396

bb.g:                                             ; preds = %bb.f
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !7396
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.q, %bb.l, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.br, %bb.l ], [ %i.bg, %bb.f ], [ %i.bv, %bb.q ], [ %i.bn, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_ZN10serde_json3ser6to_vec17h97cb0daaca30489dE.exit: ; preds = %"_ZN10serde_core3ser5impls60_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$u32$GT$9serialize17h7b577dcd7853a993E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7397
  %.sroa.0.0.copyload = load i64, ptr %i.c, align 8 ; 2 uses
  %.sroa.5.0.copyload = load ptr, ptr %i.p, align 8 ; 3 uses
  %.sroa.7.0.copyload = load i64, ptr %i.q, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7396
  %i.bi = icmp eq i64 %.sroa.0.0.copyload, -9223372036854775808
  br i1 %i.bi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN10serde_json3ser6to_vec17h97cb0daaca30489dE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @"_ZN94_$LT$anki..error..AnkiError$u20$as$u20$core..convert..From$LT$serde_json..error..Error$GT$$GT$4from17hb2c10e38184e88cfE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 %.sroa.5.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.p

bb.i:                                             ; preds = %_ZN10serde_json3ser6to_vec17h97cb0daaca30489dE.exit
  store i64 %.sroa.0.0.copyload, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.5.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.7.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.bl = load i8, ptr %i.bk, align 8, !range !6, !noalias !7400, !noundef !3
  %i.bm = trunc nuw i8 %i.bl to i1
  invoke void @"_ZN4anki7storage4sync54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$3usn17hb785e7eb17a3bc16E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.d, ptr noundef nonnull align 8 %i.bj, i1 noundef zeroext %i.bm)
          to label %_ZN4anki10collection10Collection3usn17hb92dd88d4ea39674E.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #27
          to label %common.resume unwind label %bb.r

_ZN4anki10collection10Collection3usn17hb92dd88d4ea39674E.exit: ; preds = %bb.i
  %i.bo = load i64, ptr %i.d, align 8, !range !13, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.bo, -9223372036854775773
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bq = load i32, ptr %i.bp, align 8            ; 2 uses
  br i1 %.not, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_ZN4anki10collection10Collection3usn17hb92dd88d4ea39674E.exit
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.sroa.327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(100) %.sroa.327.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(100) %.sroa.624.0..sroa_idx, i64 100, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.bo, ptr %0, align 8
  %.sroa.226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.bq, ptr %.sroa.226.0..sroa_idx, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit" unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit": ; preds = %bb.k
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.p

bb.n:                                             ; preds = %_ZN4anki10collection10Collection3usn17hb92dd88d4ea39674E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bt = invoke noundef i64 @_ZN4anki9timestamp13TimestampSecs3now17h77445fd70f9cc13aE()
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bu = call noundef nonnull align 8 ptr @_ZN4anki6config11ConfigEntry5boxed17h8517d0e373ca95f5E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load8, i64 noundef %switch.ext, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, i32 noundef %i.bq, i64 noundef %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @"_ZN4anki6config4undo46_$LT$impl$u20$anki..collection..Collection$GT$19set_config_undoable17hf024258881dff3faE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 dereferenceable(728) %1, ptr noalias noundef nonnull align 8 %i.bu)
  br label %bb.p

bb.p:                                             ; preds = %bb.h, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit", %bb.o
  ret void

bb.q:                                             ; preds = %bb.n
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #27
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.j
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$10v2_enabled17hdf633c9b7d3d48caE"(ptr noundef nonnull align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 600
  call void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17h55af1610e70099a1E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, ptr noundef nonnull align 8 %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @223, i64 noundef 8)
  %i.c = load i64, ptr %i.a, align 8, !range !13, !noundef !3
  %.not.i.i = icmp eq i64 %i.c, -9223372036854775773
  br i1 %.not.i.i, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.i", label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.thread.i"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.thread.i": ; preds = %bb.a
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.i": ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i8, ptr %i.d, align 8, !range !12
  %.fr.i = freeze i8 %i.e                         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i = icmp eq i8 %.fr.i, 0
  br i1 %.not.i, label %bb.b, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$17scheduler_version17hb427acb225cacf9aE.exit"

bb.b:                                             ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.i", %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.thread.i"
  br label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$17scheduler_version17hb427acb225cacf9aE.exit"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$17scheduler_version17hb427acb225cacf9aE.exit": ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.i", %bb.b
  %i.f = phi i8 [ 1, %bb.b ], [ %.fr.i, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.i" ]
  %i.g = icmp eq i8 %i.f, 2
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$10v3_enabled17ha5e3185ae4c30437E"(ptr noundef nonnull align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 6 uses
  %i.b = alloca [112 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  call void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17h55af1610e70099a1E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.b, ptr noundef nonnull align 8 %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @223, i64 noundef 8)
  %i.d = load i64, ptr %i.b, align 8, !range !13, !noundef !3
  %.not.i.i = icmp eq i64 %i.d, -9223372036854775773
  br i1 %.not.i.i, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.i", label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.thread.i"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.thread.i": ; preds = %bb.a
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$17scheduler_version17hb427acb225cacf9aE.exit.thread"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.i": ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i8, ptr %i.e, align 8, !range !12
  %.fr.i = freeze i8 %i.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %cond = icmp eq i8 %.fr.i, 2
  br i1 %cond, label %bb.b, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$17scheduler_version17hb427acb225cacf9aE.exit.thread"

bb.b:                                             ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17he6d4c5be612c4b9eE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, ptr noundef nonnull align 8 %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @186, i64 noundef 9)
  %i.g = load i64, ptr %i.a, align 8, !range !13, !noundef !3
  %.not.i1 = icmp eq i64 %i.g, -9223372036854775773
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !12
  br i1 %.not.i1, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit", label %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i"

"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i": ; preds = %bb.b
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.a)
  br label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit": ; preds = %bb.b, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i"
  %.sroa.0.0.i = phi i8 [ 2, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i" ], [ %i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %spec.select.i.i = trunc i8 %.sroa.0.0.i to i1
  br label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$17scheduler_version17hb427acb225cacf9aE.exit.thread"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$17scheduler_version17hb427acb225cacf9aE.exit.thread": ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.i", %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.thread.i", %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit"
  %.sroa.0.0 = phi i1 [ %spec.select.i.i, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit" ], [ false, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.i" ], [ false, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.thread.i" ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$13remove_config17hd602998c64237dc4E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef align 8 dereferenceable(728) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [112 x i8], align 8               ; 6 uses
  %i.c = alloca [112 x i8], align 8               ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [112 x i8], align 8               ; 8 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [112 x i8], align 8               ; 8 uses
  %i.i = alloca [112 x i8], align 8               ; 12 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [112 x i8], align 8               ; 7 uses
  %i.l = alloca [112 x i8], align 8               ; 7 uses
  %i.m = alloca [112 x i8], align 8               ; 9 uses
  %.sroa.9.i = alloca [96 x i8], align 8          ; 11 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [112 x i8], align 8               ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 -9223372036854775775, ptr %i.p, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7433)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.9.i, i64 24 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 12 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !7433, !noundef !3 ; 2 uses
  %i.t = icmp ult i64 %i.s, 9223372036854775807
  br i1 %i.t, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4core4cell30panic_already_mutably_borrowed17h4b83bcbcb74b1f38E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @519) #26
          to label %.noexc.i unwind label %bb.am, !noalias !7434

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.u = add nuw nsw i64 %i.s, 1
  store i64 %i.u, ptr %i.r, align 8, !alias.scope !7433
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !7433, !noundef !3
  %i.x = tail call noundef i32 @sqlite3_get_autocommit(ptr noundef %i.w) #29, !noalias !7434
  %.not56.i = icmp eq i32 %i.x, 0
  %i.y = load i64, ptr %i.r, align 8, !alias.scope !7433, !noundef !3
  %i.z = add i64 %i.y, -1
  store i64 %i.z, ptr %i.r, align 8, !alias.scope !7433
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !7435
  invoke void @_ZN4anki7storage6sqlite13SqliteStorage14begin_rust_trx17ha28b49405954732cE(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.o, ptr noundef nonnull align 8 %i.r)
          to label %bb.d unwind label %bb.am, !noalias !7434

bb.d:                                             ; preds = %bb.c
  %i.aa = load i64, ptr %i.o, align 8, !range !13, !noalias !7435, !noundef !3
  %.not6.i = icmp eq i64 %i.aa, -9223372036854775773
  br i1 %.not6.i, label %"_ZN4anki4undo46_$LT$impl$u20$anki..collection..Collection$GT$24begin_undoable_operation17h8ccf3b6ccc47ce4bE.exit.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.o, i64 112, i1 false), !noalias !7436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !7435
  br label %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner17h0107e2cc55919a0fE.exit"

common.resume.i:                                  ; preds = %bb.am, %.body.i22.i, %bb.u, %.body.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.bg, %bb.u ], [ %eh.lpad-body.i23.i, %.body.i22.i ], [ %lpad.thr_comm.split-lp.i, %bb.am ], [ %eh.lpad-body.i.i, %.body.i.i ]
  resume { ptr, i32 } %common.resume.op.i

"_ZN4anki4undo46_$LT$impl$u20$anki..collection..Collection$GT$24begin_undoable_operation17h8ccf3b6ccc47ce4bE.exit.i": ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !7435
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !7435
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !7437
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  call void @_ZN4anki4undo11UndoManager10begin_step17hf9d4665951b3d043E(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.ab, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n), !noalias !7434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !7435
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !7438
  call void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_entry17hd483375fa4d3afadE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.l, ptr noundef nonnull align 8 %i.r, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3), !noalias !7434
  %i.ac = load i64, ptr %i.l, align 8, !range !13, !noalias !7438, !noundef !3 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ac, -9223372036854775773
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !7438 ; 3 uses
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %"_ZN4anki4undo46_$LT$impl$u20$anki..collection..Collection$GT$24begin_undoable_operation17h8ccf3b6ccc47ce4bE.exit.i"
  %.sroa.611.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.611.0..sroa_idx.i.i.i, i64 96, i1 false), !noalias !7435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !7438
  br label %bb.w

bb.g:                                             ; preds = %"_ZN4anki4undo46_$LT$impl$u20$anki..collection..Collection$GT$24begin_undoable_operation17h8ccf3b6ccc47ce4bE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !7438
  %.not15.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not15.i.i.i, label %bb.j, label %.noexc13.i

.noexc13.i:                                       ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !7438
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 2, ptr %i.af, align 8, !noalias !7438
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.ae, ptr %i.ag, align 8, !noalias !7438
  store i64 7, ptr %i.j, align 8, !noalias !7438
  call void @_ZN4anki4undo11UndoManager4save17hc44955a0169ed988E(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.ab, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j), !noalias !7434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !7438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !7438
  call void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$13remove_config17hc5b11a6a151ef5d2E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.k, ptr noundef nonnull align 8 %i.r, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3), !noalias !7434
  %i.ah = load i64, ptr %i.k, align 8, !range !13, !noalias !7438, !noundef !3 ; 2 uses
  %.not16.i.i.i = icmp eq i64 %i.ah, -9223372036854775773
  br i1 %.not16.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.noexc13.i
  %.sroa.813.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.813.0.copyload15.i = load ptr, ptr %.sroa.813.0..sroa_idx14.i, align 8, !noalias !7439
  %.sroa.9.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.9.0..sroa_idx16.i, i64 96, i1 false), !noalias !7435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !7438
  br label %bb.w

bb.i:                                             ; preds = %.noexc13.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !7438
  br label %bb.j

._crit_edge.i.i:                                  ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !7440
  call void @llvm.experimental.noalias.scope.decl(metadata !7441)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7442
  call void @"_ZN4anki7storage21collection_timestamps54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$25get_collection_timestamps17hd624914c68aee7b8E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.e, ptr noundef nonnull align 8 %i.r), !noalias !7434
  %i.ai = load i64, ptr %i.e, align 8, !range !13, !noalias !7442, !noundef !3 ; 2 uses
  %.not.i.i15.i = icmp eq i64 %i.ai, -9223372036854775773
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.010.0.copyload.i.i.i = load i64, ptr %i.aj, align 8, !noalias !7442 ; 2 uses
  br i1 %.not.i.i15.i, label %"_ZN4anki10collection10timestamps46_$LT$impl$u20$anki..collection..Collection$GT$12set_modified17h08baae225b4b9c68E.exit.i.i", label %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h515034018474df7bE.exit.i"

"_ZN4anki10collection10timestamps46_$LT$impl$u20$anki..collection..Collection$GT$12set_modified17h08baae225b4b9c68E.exit.i.i": ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7442
  %i.ak = call noundef i64 @_ZN4anki9timestamp15TimestampMillis3now17h9a04f048132264a3E(), !noalias !7434
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7443
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.al, align 8, !noalias !7443
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.010.0.copyload.i.i.i, ptr %i.am, align 8, !noalias !7443
  store i64 8, ptr %i.d, align 8, !noalias !7443
  call void @_ZN4anki4undo11UndoManager4save17hc44955a0169ed988E(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.ab, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !7434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7443
  call void @"_ZN4anki7storage21collection_timestamps54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$17set_modified_time17h11f9ee22a0bdc991E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.i, ptr noundef nonnull align 8 %i.r, i64 noundef %i.ak), !noalias !7434
  %.pre11.i.i = load i64, ptr %i.i, align 8, !noalias !7444 ; 2 uses
  %i.an = icmp eq i64 %.pre11.i.i, -9223372036854775773
  br i1 %i.an, label %bb.n, label %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h515034018474df7bE.exit.thread49.i"

"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h515034018474df7bE.exit.thread49.i": ; preds = %"_ZN4anki10collection10timestamps46_$LT$impl$u20$anki..collection..Collection$GT$12set_modified17h08baae225b4b9c68E.exit.i.i"
  %.sroa.8.0..sroa_idx651.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.8.sroa.0.0.copyload1952.i = load ptr, ptr %.sroa.8.0..sroa_idx651.i, align 8, !noalias !7444
  %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx6.sroa_idx53.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx6.sroa_idx53.i, i64 24, i1 false), !noalias !7435
  %.sroa.10.0..sroa_idx954.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.10.0..sroa_idx954.i, i64 72, i1 false), !noalias !7435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !7440
  br label %bb.w

bb.j:                                             ; preds = %bb.g, %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ap = load i64, ptr %i.ao, align 8, !range !8, !alias.scope !7433, !noalias !7445, !noundef !3
  %.not.i.i = icmp eq i64 %i.ap, -9223372036854775808
  br i1 %.not.i.i, label %.noexc20.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !7433, !noalias !7445, !noundef !3 ; 2 uses
  %i.as = icmp ult i64 %i.ar, 384307168202282326
  call void @llvm.assume(i1 %i.as)
  %i.at = icmp eq i64 %i.ar, 0
  br i1 %i.at, label %bb.l, label %bb.m

.noexc20.i:                                       ; preds = %bb.n, %bb.m, %bb.l, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !7440
  call void @_ZN4anki7storage6sqlite13SqliteStorage15commit_rust_trx17hf9fd104e229c52fdE(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.h, ptr noundef nonnull align 8 %i.r), !noalias !7434
  %i.au = load i64, ptr %i.h, align 8, !range !13, !noalias !7440, !noundef !3 ; 2 uses
  %.not8.i.i = icmp eq i64 %i.au, -9223372036854775773
  br i1 %.not8.i.i, label %.noexc21.i, label %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h515034018474df7bE.exit.thread45.i"

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aw = load i64, ptr %i.av, align 8, !range !14, !alias.scope !7433, !noalias !7445, !noundef !3
  %i.ax = icmp sgt i64 %i.aw, -1
  br i1 %i.ax, label %bb.m, label %.noexc20.i

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.az = load i8, ptr %i.ay, align 8, !range !12, !alias.scope !7433, !noalias !7445, !noundef !3
  %.not6.i.i = icmp eq i8 %i.az, 0
  br i1 %.not6.i.i, label %._crit_edge.i.i, label %.noexc20.i

bb.n:                                             ; preds = %"_ZN4anki10collection10timestamps46_$LT$impl$u20$anki..collection..Collection$GT$12set_modified17h08baae225b4b9c68E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !7440
end_hunk_4
begin_hunk_5_@"_ZN4anki8services46_$LT$impl$u20$anki..collection..Collection$GT$28run_scheduler_service_method17he7d8bada672242e1E":bb.a
bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hl)
  call void @_ZN5prost7message7Message6decode17h66dcc62687d220e4E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.hl, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4)
  %i.ju = load i64, ptr %i.hl, align 8, !range !7, !noundef !3
  %i.jv = trunc nuw i64 %i.ju to i1
  %i.jw = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.jx = load ptr, ptr %i.jw, align 8            ; 2 uses
  %.sroa.4699.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %.sroa.4699.0.copyload = load i64, ptr %.sroa.4699.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hl)
  br i1 %i.jv, label %bb.cu, label %bb.cv

bb.k:                                             ; preds = %bb.a
  %i.jy = tail call { i64, ptr } @_ZN5prost7message7Message6decode17hae41cd809aa3159eE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4) ; 2 uses
  %i.jz = extractvalue { i64, ptr } %i.jy, 0
  %i.ka = extractvalue { i64, ptr } %i.jy, 1      ; 2 uses
  %i.kb = trunc nuw i64 %i.jz to i1
  br i1 %i.kb, label %bb.cy, label %bb.cz

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.he)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7123)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hd)
  call void @"_ZN4anki9scheduler8congrats46_$LT$impl$u20$anki..collection..Collection$GT$13congrats_info17ha4dca99dc20efe1aE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.hd, ptr noalias noundef nonnull align 8 dereferenceable(728) %1)
  %i.kc = load i64, ptr %i.hd, align 8, !range !13, !noundef !3 ; 2 uses
  %.not1070 = icmp eq i64 %i.kc, -9223372036854775773
  %i.kd = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7123, ptr noundef nonnull align 8 dereferenceable(40) %i.kd, i64 40, i1 false)
  br i1 %.not1070, label %bb.dj, label %bb.di

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ha)
  call void @_ZN5prost7message7Message6decode17h5c7c5734a3c9f9b2E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ha, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4)
  %i.ke = load i64, ptr %i.ha, align 8, !range !8, !noundef !3 ; 2 uses
  %i.kf = icmp eq i64 %i.ke, -9223372036854775808
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.kh = load ptr, ptr %i.kg, align 8            ; 2 uses
  %.sroa.5729.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %.sroa.5729.0.copyload = load i64, ptr %.sroa.5729.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ha)
  br i1 %i.kf, label %bb.dt, label %bb.du

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gu)
  call void @_ZN5prost7message7Message6decode17h058b4fcf773edcf4E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.gu, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4)
  %i.ki = load i64, ptr %i.gu, align 8, !range !7, !noundef !3
  %i.kj = trunc nuw i64 %i.ki to i1
  %i.kk = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.kl = load ptr, ptr %i.kk, align 8            ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.kn = load i32, ptr %i.km, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gu)
  br i1 %i.kj, label %bb.ed, label %bb.ee

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gp)
  call void @_ZN5prost7message7Message6decode17h655dccd0ad624dceE(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.gp, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4)
  %i.ko = load i64, ptr %i.gp, align 8, !range !8, !noundef !3 ; 2 uses
  %i.kp = icmp eq i64 %i.ko, -9223372036854775808
  %i.kq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8            ; 2 uses
  br i1 %i.kp, label %bb.en, label %bb.eo

bb.p:                                             ; preds = %bb.a
  %i.ks = tail call { i64, ptr } @_ZN5prost7message7Message6decode17hae41cd809aa3159eE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4) ; 2 uses
  %i.kt = extractvalue { i64, ptr } %i.ks, 0
  %i.ku = extractvalue { i64, ptr } %i.ks, 1      ; 2 uses
  %i.kv = trunc nuw i64 %i.kt to i1
  br i1 %i.kv, label %bb.ex, label %bb.ey

bb.q:                                             ; preds = %bb.a
  %i.kw = tail call { i64, ptr } @_ZN5prost7message7Message6decode17hae41cd809aa3159eE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4) ; 2 uses
  %i.kx = extractvalue { i64, ptr } %i.kw, 0
  %i.ky = extractvalue { i64, ptr } %i.kw, 1      ; 2 uses
  %i.kz = trunc nuw i64 %i.kx to i1
  br i1 %i.kz, label %bb.fh, label %bb.fi

bb.r:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gb)
  call void @_ZN5prost7message7Message6decode17h1acfa0573678eeecE(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.gb, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4)
  %i.la = load i64, ptr %i.gb, align 8, !range !8, !noundef !3 ; 2 uses
  %i.lb = icmp eq i64 %i.la, -9223372036854775808
  %i.lc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8            ; 2 uses
  br i1 %i.lb, label %bb.fr, label %bb.fs

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fv)
  call void @_ZN5prost7message7Message6decode17hf8398940aa251081E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.fv, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4)
  %i.le = load i32, ptr %i.fv, align 8, !range !16, !noundef !3
  %i.lf = trunc nuw i32 %i.le to i1
  %i.lg = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.lh = load ptr, ptr %i.lg, align 8, !nonnull !3, !align !4
  %i.li = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  %i.lj = load i32, ptr %i.li, align 4            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fv)
  br i1 %i.lf, label %bb.gb, label %bb.gc

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fr)
  call void @_ZN5prost7message7Message6decode17h7b7f0c1d98ea0866E(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.fr, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4)
  %i.lk = load i64, ptr %i.fr, align 8, !range !8, !noundef !3 ; 2 uses
  %i.ll = icmp eq i64 %i.lk, -9223372036854775808
  %i.lm = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ln = load ptr, ptr %i.lm, align 8            ; 2 uses
  br i1 %i.ll, label %bb.gi, label %bb.gj

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fl)
  call void @_ZN5prost7message7Message6decode17hb96f41aa8b6a1997E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.fl, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4)
  %i.lo = load i64, ptr %i.fl, align 8, !range !8, !noundef !3 ; 2 uses
  %i.lp = icmp eq i64 %i.lo, -9223372036854775808
  %i.lq = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.lr = load ptr, ptr %i.lq, align 8            ; 2 uses
  br i1 %i.lp, label %bb.gs, label %bb.gt

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ff)
  call void @_ZN5prost7message7Message6decode17h034b1c616258ac14E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ff, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4)
  %i.ls = load i64, ptr %i.ff, align 8, !range !8, !noundef !3 ; 2 uses
  %i.lt = icmp eq i64 %i.ls, -9223372036854775808
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.lv = load ptr, ptr %i.lu, align 8            ; 2 uses
  br i1 %i.lt, label %bb.hc, label %bb.hd

bb.w:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ez)
  call void @_ZN5prost7message7Message6decode17ha245cdcfe342162fE(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ez, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4)
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.lx = load i8, ptr %i.lw, align 8, !range !12, !noundef !3 ; 2 uses
  %i.ly = icmp eq i8 %i.lx, 2
  %i.lz = load ptr, ptr %i.ez, align 8            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ez)
  br i1 %i.ly, label %bb.hm, label %bb.hn

bb.x:                                             ; preds = %bb.a
  %i.ma = tail call { i64, ptr } @_ZN5prost7message7Message6decode17hba5101a1130ac9b5E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4) ; 2 uses
  %i.mb = extractvalue { i64, ptr } %i.ma, 0
  %i.mc = extractvalue { i64, ptr } %i.ma, 1      ; 2 uses
  %i.md = trunc nuw i64 %i.mb to i1
  br i1 %i.md, label %bb.hw, label %bb.hx

bb.y:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eq)
  call void @_ZN5prost7message7Message6decode17h6e943985454a5a64E(ptr noalias noundef nonnull sret([440 x i8]) align 8 captures(address) dereferenceable(440) %i.eq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4)
  %i.me = load i64, ptr %i.eq, align 8, !range !29, !noundef !3 ; 2 uses
  %i.mf = icmp eq i64 %i.me, -9223372036854775806
  %i.mg = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.mh = load ptr, ptr %i.mg, align 8            ; 2 uses
  br i1 %i.mf, label %bb.ij, label %bb.ik

bb.z:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ek)
  call void @_ZN5prost7message7Message6decode17h5213e2f1e75e6217E(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.ek, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4)
  %i.mi = load i64, ptr %i.ek, align 8, !range !22, !noundef !3 ; 2 uses
  %i.mj = icmp eq i64 %i.mi, -9223372036854775807
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.ml = load ptr, ptr %i.mk, align 8            ; 2 uses
  br i1 %i.mj, label %bb.iw, label %bb.ix

bb.aa:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef)
  call void @"_ZN4anki9scheduler7service91_$LT$impl$u20$anki..services..SchedulerService$u20$for$u20$anki..collection..Collection$GT$17upgrade_scheduler17hcd43bc12b1fe972dE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ef, ptr noalias noundef nonnull align 8 dereferenceable(728) %1)
  %i.mm = load i64, ptr %i.ef, align 8, !range !13, !noundef !3 ; 2 uses
  %.not1038 = icmp eq i64 %i.mm, -9223372036854775773
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not1038, label %bb.je, label %bb.jd

bb.ab:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee)
  call void @_ZN5prost7message7Message6decode17he811d58f1165a5ddE(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ee, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4)
  %i.mo = load i64, ptr %i.ee, align 8, !range !31, !noundef !3 ; 2 uses
  %i.mp = icmp eq i64 %i.mo, -9223372036854775802
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.mr = load ptr, ptr %i.mq, align 8            ; 2 uses
  br i1 %i.mp, label %bb.jf, label %bb.jg

bb.ac:                                            ; preds = %bb.a
  %i.ms = tail call { i64, ptr } @_ZN5prost7message7Message6decode17h9e45633da6fa3138E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4) ; 2 uses
  %i.mt = extractvalue { i64, ptr } %i.ms, 0
  %i.mu = extractvalue { i64, ptr } %i.ms, 1      ; 2 uses
  %i.mv = trunc nuw i64 %i.mt to i1
  br i1 %i.mv, label %bb.jp, label %bb.jq

bb.ad:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10170
  %i.mw = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 2 uses
  call void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17he6d4c5be612c4b9eE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.d, ptr noundef nonnull align 8 %i.mw, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @185, i64 noundef 21), !noalias !10171
  %i.mx = load i64, ptr %i.d, align 8, !range !13, !noalias !10170, !noundef !3
  %.not.i.i.i1097 = icmp eq i64 %i.mx, -9223372036854775773
  %i.my = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.mz = load i8, ptr %i.my, align 8, !range !12, !noalias !10170
  br i1 %.not.i.i.i1097, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit.i.i", label %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i.i.i"

"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i.i.i": ; preds = %bb.ad
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.d), !noalias !10171
  br label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit.i.i"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit.i.i": ; preds = %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i.i.i", %bb.ad
  %.sroa.0.0.i.i.i = phi i8 [ 2, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i.i.i" ], [ %i.mz, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10170
  call void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17he6d4c5be612c4b9eE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.c, ptr noundef nonnull align 8 %i.mw, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @187, i64 noundef 28), !noalias !10171
  %i.na = load i64, ptr %i.c, align 8, !range !13, !noalias !10170, !noundef !3
  %.not.i2.i.i = icmp eq i64 %i.na, -9223372036854775773
  %i.nb = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.nc = load i8, ptr %i.nb, align 8, !range !12, !noalias !10170
  br i1 %.not.i2.i.i, label %bb.kc, label %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i3.i.i"

"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i3.i.i": ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit.i.i"
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.c), !noalias !10171
  br label %bb.kc

bb.ae:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr)
  call void @_ZN5prost7message7Message6decode17he77d75e6b34c1929E(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.dr, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4)
  %i.nd = load i64, ptr %i.dr, align 8, !range !8, !noundef !3 ; 2 uses
  %i.ne = icmp eq i64 %i.nd, -9223372036854775808
  %i.nf = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.ng = load ptr, ptr %i.nf, align 8            ; 2 uses
  br i1 %i.ne, label %bb.ki, label %bb.kj

bb.af:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  call void @_ZN5prost7message7Message6decode17h91279697e1683e9fE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dl, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4)
  %i.nh = load i64, ptr %i.dl, align 8, !range !8, !noundef !3 ; 2 uses
  %i.ni = icmp eq i64 %i.nh, -9223372036854775808
  %i.nj = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.nk = load ptr, ptr %i.nj, align 8            ; 2 uses
  %.sroa.5927.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %.sroa.5927.0.copyload = load i64, ptr %.sroa.5927.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  br i1 %i.ni, label %bb.kv, label %bb.kw

bb.ag:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df)
  call void @_ZN5prost7message7Message6decode17hb8af52c9701cca64E(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.df, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4)
  %i.nl = load i64, ptr %i.df, align 8, !range !8, !noundef !3 ; 2 uses
  %i.nm = icmp eq i64 %i.nl, -9223372036854775808
  %i.nn = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.no = load ptr, ptr %i.nn, align 8            ; 2 uses
  br i1 %i.nm, label %bb.li, label %bb.lj

bb.ah:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da)
  call void @_ZN5prost7message7Message6decode17hb8af52c9701cca64E(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.da, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4)
  %i.np = load i64, ptr %i.da, align 8, !range !8, !noundef !3 ; 2 uses
  %i.nq = icmp eq i64 %i.np, -9223372036854775808
  %i.nr = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.ns = load ptr, ptr %i.nr, align 8            ; 2 uses
  br i1 %i.nq, label %bb.ls, label %bb.lt

bb.ai:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  call void @_ZN5prost7message7Message6decode17hb8af52c9701cca64E(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.cu, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4)
  %i.nt = load i64, ptr %i.cu, align 8, !range !8, !noundef !3 ; 2 uses
  %i.nu = icmp eq i64 %i.nt, -9223372036854775808
  %i.nv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.nw = load ptr, ptr %i.nv, align 8            ; 2 uses
  br i1 %i.nu, label %bb.mf, label %bb.mg

bb.aj:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  call void @_ZN5prost7message7Message6decode17h3965303c177a2667E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.co, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4)
  %i.nx = load i64, ptr %i.co, align 8, !range !8, !noundef !3 ; 2 uses
  %i.ny = icmp eq i64 %i.nx, -9223372036854775808
  %i.nz = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.oa = load ptr, ptr %i.nz, align 8            ; 2 uses
  br i1 %i.ny, label %bb.ms, label %bb.mt

bb.ak:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  call void @_ZN5prost7message7Message6decode17h051af1b87fde3723E(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.ci, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4)
  %i.ob = load i64, ptr %i.ci, align 8, !range !8, !noundef !3 ; 2 uses
  %i.oc = icmp eq i64 %i.ob, -9223372036854775808
  %i.od = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.oe = load ptr, ptr %i.od, align 8            ; 2 uses
  br i1 %i.oc, label %bb.nc, label %bb.nd

bb.al:                                            ; preds = %bb.a
  %i.of = tail call { i64, ptr } @_ZN5prost7message7Message6decode17hba5101a1130ac9b5E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4) ; 2 uses
  %i.og = extractvalue { i64, ptr } %i.of, 0
  %i.oh = extractvalue { i64, ptr } %i.of, 1      ; 2 uses
  %i.oi = trunc nuw i64 %i.og to i1
  br i1 %i.oi, label %bb.nm, label %bb.nn

bb.am:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  call void @_ZN5prost7message7Message6decode17h5706999d9681b866E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.by, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4)
  %i.oj = load i64, ptr %i.by, align 8, !range !7, !noundef !3
  %i.ok = trunc nuw i64 %i.oj to i1
  %i.ol = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.om = load ptr, ptr %i.ol, align 8            ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.oo = load i32, ptr %i.on, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  br i1 %i.ok, label %bb.nw, label %bb.nx

bb.an:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  call void @"_ZN95_$LT$anki..error..AnkiError$u20$as$u20$core..convert..From$LT$prost..error..DecodeError$GT$$GT$4from17h6ecf0eb2568b0954E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.bt, ptr noalias noundef nonnull align 8 %i.ip)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.bt, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  br label %bb.av

bb.ao:                                            ; preds = %bb.c
  %i.op = ptrtoint ptr %i.ip to i64
  %i.oq = trunc i64 %i.op to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ik)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ij)
  call void @"_ZN4anki9scheduler7service91_$LT$impl$u20$anki..services..SchedulerService$u20$for$u20$anki..collection..Collection$GT$16get_queued_cards17h444574e2a88fcbe9E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ij, ptr noalias noundef nonnull align 8 dereferenceable(728) %1, i32 noundef %i.ir, i1 noundef zeroext %i.oq)
  %i.or = load i64, ptr %i.ij, align 8, !range !13, !noundef !3 ; 2 uses
  %.not1092 = icmp eq i64 %i.or, -9223372036854775773
  %i.os = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(40) %i.os, i64 40, i1 false)
  br i1 %.not1092, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.sroa.5644.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ij, i64 48
  %.sroa.3647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3647.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5644.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ij)
  %.sroa.2646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2646.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, i64 40, i1 false)
  store i64 %i.or, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.ba

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ij)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ik, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ii)
  store i64 0, ptr %i.ii, align 8
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ot, align 8
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  store i64 0, ptr %i.ou, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ih)
  invoke void @_ZN5prost7message7Message6encode17hc09336ff6f330d68E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ih, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ik, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ii)
          to label %bb.as unwind label %bb.ar

bb.ar:                                            ; preds = %bb.at, %bb.aq
  %i.ov = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE"(ptr noalias noundef align 8 dereferenceable(24) %i.ii) #27
          to label %bb.ax unwind label %bb.bb

bb.as:                                            ; preds = %bb.aq
  %i.ow = load i64, ptr %i.ih, align 8, !range !7, !noundef !3
  %i.ox = trunc nuw i64 %i.ow to i1
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.oz = load i64, ptr %i.oy, align 8
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %i.pb = load i64, ptr %i.pa, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ih)
  br i1 %i.ox, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  invoke void @"_ZN95_$LT$anki..error..AnkiError$u20$as$u20$core..convert..From$LT$prost..error..EncodeError$GT$$GT$4from17hc4614dac288568f3E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.bs, i64 noundef %i.oz, i64 noundef %i.pb)
          to label %bb.aw unwind label %bb.ar

bb.au:                                            ; preds = %bb.as
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pc, ptr noundef nonnull align 8 dereferenceable(24) %i.ii, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ii)
  store i64 -9223372036854775773, ptr %0, align 8
  call fastcc void @"_ZN4core3ptr55drop_in_place$LT$anki_proto..scheduler..QueuedCards$GT$17h933a1b1a3cb2c4ecE"(ptr noalias noundef align 8 dereferenceable(40) %i.ik)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ik)
  br label %bb.av

bb.av:                                            ; preds = %bb.nw, %bb.of, %bb.nm, %bb.nv, %bb.nc, %bb.nl, %bb.ms, %bb.nb, %bb.mf, %bb.mr, %bb.ls, %bb.me, %bb.li, %bb.lr, %bb.kv, %bb.lh, %bb.ki, %bb.ku, %bb.jp, %bb.kb, %bb.jf, %bb.jo, %bb.iw, %bb.jc, %bb.ij, %bb.iv, %bb.hw, %bb.ii, %bb.hm, %bb.hv, %bb.hc, %bb.hl, %bb.gs, %bb.hb, %bb.gi, %bb.gr, %bb.gb, %bb.gh, %bb.fr, %bb.ga, %bb.fh, %bb.fq, %bb.ex, %bb.fg, %bb.en, %bb.ew, %bb.ed, %bb.em, %bb.dt, %bb.ec, %bb.cy, %bb.dh, %bb.cu, %bb.cw, %bb.cq, %bb.cs, %bb.cg, %bb.cp, %bb.bd, %bb.bm, %bb.an, %bb.ba, %bb.od, %bb.nt, %bb.nj, %bb.mz, %bb.mm, %bb.lz, %bb.lp, %bb.lc, %bb.kp, %bb.kh, %bb.kg, %bb.jw, %bb.jm, %bb.je, %bb.jd, %bb.jb, %bb.iq, %bb.id, %bb.ht, %bb.hj, %bb.gz, %bb.gp, %bb.gg, %bb.fy, %bb.fo, %bb.fe, %bb.eu, %bb.ek, %bb.ea, %bb.ds, %bb.dn, %bb.df, %bb.cx, %bb.ct, %bb.cl, %bb.cf, %bb.ca, %bb.bu, %bb.bs, %bb.bk, %bb.au, %bb.b
  ret void

bb.aw:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.bs, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE"(ptr noalias noundef align 8 dereferenceable(24) %i.ii)
          to label %bb.az unwind label %bb.ay

bb.ax:                                            ; preds = %bb.ay, %bb.ar
  %.pn1094 = phi { ptr, i32 } [ %i.pd, %bb.ay ], [ %i.ov, %bb.ar ]
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$anki_proto..scheduler..QueuedCards$GT$17h933a1b1a3cb2c4ecE"(ptr noalias noundef align 8 dereferenceable(40) %i.ik) #27
          to label %bb.bc unwind label %bb.bb

bb.ay:                                            ; preds = %bb.aw
  %i.pd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.az:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ii)
  call fastcc void @"_ZN4core3ptr55drop_in_place$LT$anki_proto..scheduler..QueuedCards$GT$17h933a1b1a3cb2c4ecE"(ptr noalias noundef align 8 dereferenceable(40) %i.ik)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ik)
  br label %bb.av
end_hunk_5
begin_hunk_6_@"_ZN4anki8services46_$LT$impl$u20$anki..collection..Collection$GT$28run_scheduler_service_method17he7d8bada672242e1E":bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef)
  store i64 0, ptr %i.mn, align 8
  %.sroa.4400.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4400.0..sroa_idx, align 8
  %.sroa.5401.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.5401.0..sroa_idx, align 8
  store i64 -9223372036854775773, ptr %0, align 8
  br label %bb.av

bb.jf:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @"_ZN95_$LT$anki..error..AnkiError$u20$as$u20$core..convert..From$LT$prost..error..DecodeError$GT$$GT$4from17h6ecf0eb2568b0954E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ad, ptr noalias noundef nonnull align 8 %i.mr)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.ad, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.av

bb.jg:                                            ; preds = %bb.ab
  %.sroa.5882.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %.sroa.9407.0..sroa_idx408 = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9407.0..sroa_idx408, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5882.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee)
  store i64 %i.mo, ptr %i.ed, align 8
  %.sroa.7404.0..sroa_idx405 = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store ptr %i.mr, ptr %.sroa.7404.0..sroa_idx405, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7411)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb)
  call void @"_ZN4anki9scheduler7service91_$LT$impl$u20$anki..services..SchedulerService$u20$for$u20$anki..collection..Collection$GT$12custom_study17h2cfe6d078326ca61E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.eb, ptr noalias noundef nonnull align 8 dereferenceable(728) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.ed)
  %i.zj = load i64, ptr %i.eb, align 8, !range !13, !noundef !3 ; 2 uses
  %.not1036 = icmp eq i64 %i.zj, -9223372036854775773
  %i.zk = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.7411, ptr noundef nonnull align 8 dereferenceable(12) %i.zk, i64 12, i1 false)
  br i1 %.not1036, label %bb.ji, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %.sroa.5888.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 20
  %.sroa.3891.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %.sroa.3891.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(92) %.sroa.5888.0..sroa_idx, i64 92, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  %.sroa.2890.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.2890.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.7411, i64 12, i1 false)
  store i64 %i.zj, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7411)
  br label %bb.jo

bb.ji:                                            ; preds = %bb.jg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ec, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.7411, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7411)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea)
  store i64 0, ptr %i.ea, align 8
  %i.zl = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.zl, align 8
  %i.zm = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store i64 0, ptr %i.zm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz)
  invoke void @_ZN5prost7message7Message6encode17h7fb2179c14e60f60E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dz, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(12) %i.ec, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ea)
          to label %bb.jk unwind label %bb.jj

bb.jj:                                            ; preds = %bb.jl, %bb.ji
  %i.zn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE"(ptr noalias noundef align 8 dereferenceable(24) %i.ea) #27
          to label %bb.bc unwind label %bb.bb

bb.jk:                                            ; preds = %bb.ji
  %i.zo = load i64, ptr %i.dz, align 8, !range !7, !noundef !3
  %i.zp = trunc nuw i64 %i.zo to i1
  %i.zq = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.zr = load i64, ptr %i.zq, align 8
  %i.zs = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.zt = load i64, ptr %i.zs, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz)
  br i1 %i.zp, label %bb.jl, label %bb.jm

bb.jl:                                            ; preds = %bb.jk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  invoke void @"_ZN95_$LT$anki..error..AnkiError$u20$as$u20$core..convert..From$LT$prost..error..EncodeError$GT$$GT$4from17hc4614dac288568f3E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ac, i64 noundef %i.zr, i64 noundef %i.zt)
          to label %bb.jn unwind label %bb.jj

bb.jm:                                            ; preds = %bb.jk
  %i.zu = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.zu, ptr noundef nonnull align 8 dereferenceable(24) %i.ea, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea)
  store i64 -9223372036854775773, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec)
  br label %bb.av

bb.jn:                                            ; preds = %bb.jl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.ac, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE"(ptr noalias noundef align 8 dereferenceable(24) %i.ea)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea)
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jn, %bb.jh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec)
  br label %bb.av

bb.jp:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @"_ZN95_$LT$anki..error..AnkiError$u20$as$u20$core..convert..From$LT$prost..error..DecodeError$GT$$GT$4from17h6ecf0eb2568b0954E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ab, ptr noalias noundef nonnull align 8 %i.mu)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.ab, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.av

bb.jq:                                            ; preds = %bb.ac
  %i.zv = ptrtoint ptr %i.mu to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7429)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx)
  call void @"_ZN4anki9scheduler8filtered12custom_study46_$LT$impl$u20$anki..collection..Collection$GT$21custom_study_defaults17hf025a81c8682c309E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.dx, ptr noalias noundef nonnull align 8 dereferenceable(728) %1, i64 noundef %i.zv)
  %i.zw = load i64, ptr %i.dx, align 8, !range !13, !noundef !3 ; 2 uses
  %.not1032 = icmp eq i64 %i.zw, -9223372036854775773
  %i.zx = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7429, ptr noundef nonnull align 8 dereferenceable(48) %i.zx, i64 48, i1 false)
  br i1 %.not1032, label %bb.js, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %.sroa.5897.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 56
  %.sroa.3900.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3900.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5897.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx)
  %.sroa.2899.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2899.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7429, i64 48, i1 false)
  store i64 %i.zw, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7429)
  br label %bb.kb

bb.js:                                            ; preds = %bb.jq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dy, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7429, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7429)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw)
  store i64 0, ptr %i.dw, align 8
  %i.zy = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.zy, align 8
  %i.zz = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store i64 0, ptr %i.zz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv)
  invoke void @_ZN5prost7message7Message6encode17hcccb90aebbbb61adE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dy, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dw)
          to label %bb.ju unwind label %bb.jt

bb.jt:                                            ; preds = %bb.jv, %bb.js
  %i.aaa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE"(ptr noalias noundef align 8 dereferenceable(24) %i.dw) #27
          to label %bb.jy unwind label %bb.bb

bb.ju:                                            ; preds = %bb.js
  %i.aab = load i64, ptr %i.dv, align 8, !range !7, !noundef !3
  %i.aac = trunc nuw i64 %i.aab to i1
  %i.aad = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.aae = load i64, ptr %i.aad, align 8
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.aag = load i64, ptr %i.aaf, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv)
  br i1 %i.aac, label %bb.jv, label %bb.jw

bb.jv:                                            ; preds = %bb.ju
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  invoke void @"_ZN95_$LT$anki..error..AnkiError$u20$as$u20$core..convert..From$LT$prost..error..EncodeError$GT$$GT$4from17hc4614dac288568f3E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.aa, i64 noundef %i.aae, i64 noundef %i.aag)
          to label %bb.jx unwind label %bb.jt

bb.jw:                                            ; preds = %bb.ju
  %i.aah = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aah, ptr noundef nonnull align 8 dereferenceable(24) %i.dw, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw)
  store i64 -9223372036854775773, ptr %0, align 8
  call fastcc void @"_ZN4core3ptr71drop_in_place$LT$anki_proto..scheduler..CustomStudyDefaultsResponse$GT$17h78a023b460627757E"(ptr noalias noundef align 8 dereferenceable(48) %i.dy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy)
  br label %bb.av

bb.jx:                                            ; preds = %bb.jv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.aa, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE"(ptr noalias noundef align 8 dereferenceable(24) %i.dw)
          to label %bb.ka unwind label %bb.jz

bb.jy:                                            ; preds = %bb.jz, %bb.jt
  %.pn1034 = phi { ptr, i32 } [ %i.aai, %bb.jz ], [ %i.aaa, %bb.jt ]
  invoke fastcc void @"_ZN4core3ptr71drop_in_place$LT$anki_proto..scheduler..CustomStudyDefaultsResponse$GT$17h78a023b460627757E"(ptr noalias noundef align 8 dereferenceable(48) %i.dy) #27
          to label %bb.bc unwind label %bb.bb

bb.jz:                                            ; preds = %bb.jx
  %i.aai = landingpad { ptr, i32 }
          cleanup
  br label %bb.jy

bb.ka:                                            ; preds = %bb.jx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw)
  call fastcc void @"_ZN4core3ptr71drop_in_place$LT$anki_proto..scheduler..CustomStudyDefaultsResponse$GT$17h78a023b460627757E"(ptr noalias noundef align 8 dereferenceable(48) %i.dy)
  br label %bb.kb

bb.kb:                                            ; preds = %bb.ka, %bb.jr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy)
  br label %bb.av

bb.kc:                                            ; preds = %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i3.i.i", %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit.i.i"
  %.sroa.0.0.i4.i.i = phi i8 [ 2, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i3.i.i" ], [ %i.nc, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10170
  %i.aaj = and i8 %.sroa.0.0.i.i.i, 1
  %i.aak = and i8 %.sroa.0.0.i4.i.i, 1
  store i8 %i.aaj, ptr %i.du, align 1
  %i.aal = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  store i8 %i.aak, ptr %i.aal, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt)
  store i64 0, ptr %i.dt, align 8
  %i.aam = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.aam, align 8
  %i.aan = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store i64 0, ptr %i.aan, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  invoke void @_ZN5prost7message7Message6encode17h29f1d191abf1c6c1E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ds, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(2) %i.du, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dt)
          to label %bb.ke unwind label %bb.kd

bb.kd:                                            ; preds = %bb.kf, %bb.kc
  %i.aao = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE"(ptr noalias noundef align 8 dereferenceable(24) %i.dt) #27
          to label %bb.bc unwind label %bb.bb

bb.ke:                                            ; preds = %bb.kc
  %i.aap = load i64, ptr %i.ds, align 8, !range !7, !noundef !3
  %i.aaq = trunc nuw i64 %i.aap to i1
  %i.aar = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.aas = load i64, ptr %i.aar, align 8
  %i.aat = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.aau = load i64, ptr %i.aat, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  br i1 %i.aaq, label %bb.kf, label %bb.kg

bb.kf:                                            ; preds = %bb.ke
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  invoke void @"_ZN95_$LT$anki..error..AnkiError$u20$as$u20$core..convert..From$LT$prost..error..EncodeError$GT$$GT$4from17hc4614dac288568f3E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.z, i64 noundef %i.aas, i64 noundef %i.aau)
          to label %bb.kh unwind label %bb.kd

bb.kg:                                            ; preds = %bb.ke
  %i.aav = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aav, ptr noundef nonnull align 8 dereferenceable(24) %i.dt, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  store i64 -9223372036854775773, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du)
  br label %bb.av

bb.kh:                                            ; preds = %bb.kf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.z, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE"(ptr noalias noundef align 8 dereferenceable(24) %i.dt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du)
  br label %bb.av

bb.ki:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @"_ZN95_$LT$anki..error..AnkiError$u20$as$u20$core..convert..From$LT$prost..error..DecodeError$GT$$GT$4from17h6ecf0eb2568b0954E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.y, ptr noalias noundef nonnull align 8 %i.ng)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.y, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.av

bb.kj:                                            ; preds = %bb.ae
  %.sroa.5915.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %.sroa.9461.0..sroa_idx462 = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9461.0..sroa_idx462, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5915.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr)
  store i64 %i.nd, ptr %i.dq, align 8
  %.sroa.7458.0..sroa_idx459 = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store ptr %i.ng, ptr %.sroa.7458.0..sroa_idx459, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7465)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do)
  call void @"_ZN4anki9scheduler7service91_$LT$impl$u20$anki..services..SchedulerService$u20$for$u20$anki..collection..Collection$GT$19compute_fsrs_params17h90433002f97d212bE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.do, ptr noalias noundef nonnull align 8 dereferenceable(728) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.dq)
  %i.aaw = load i64, ptr %i.do, align 8, !range !13, !noundef !3 ; 2 uses
  %.not1026 = icmp eq i64 %i.aaw, -9223372036854775773
  %i.aax = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7465, ptr noundef nonnull align 8 dereferenceable(32) %i.aax, i64 32, i1 false)
  br i1 %.not1026, label %bb.kl, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %.sroa.5921.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.do, i64 40
  %.sroa.3924.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3924.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5921.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  %.sroa.2923.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2923.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7465, i64 32, i1 false)
  store i64 %i.aaw, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7465)
  br label %bb.ku

bb.kl:                                            ; preds = %bb.kj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dp, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7465, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7465)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn)
  store i64 0, ptr %i.dn, align 8
  %i.aay = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.aay, align 8
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store i64 0, ptr %i.aaz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm)
  invoke void @_ZN5prost7message7Message6encode17h4db422d6183dc722E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dp, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dn)
          to label %bb.kn unwind label %bb.km

bb.km:                                            ; preds = %bb.ko, %bb.kl
  %i.aba = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE"(ptr noalias noundef align 8 dereferenceable(24) %i.dn) #27
          to label %bb.kr unwind label %bb.bb

bb.kn:                                            ; preds = %bb.kl
  %i.abb = load i64, ptr %i.dm, align 8, !range !7, !noundef !3
  %i.abc = trunc nuw i64 %i.abb to i1
  %i.abd = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.abe = load i64, ptr %i.abd, align 8
  %i.abf = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.abg = load i64, ptr %i.abf, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  br i1 %i.abc, label %bb.ko, label %bb.kp

bb.ko:                                            ; preds = %bb.kn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  invoke void @"_ZN95_$LT$anki..error..AnkiError$u20$as$u20$core..convert..From$LT$prost..error..EncodeError$GT$$GT$4from17hc4614dac288568f3E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.x, i64 noundef %i.abe, i64 noundef %i.abg)
          to label %bb.kq unwind label %bb.km

bb.kp:                                            ; preds = %bb.kn
  %i.abh = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.abh, ptr noundef nonnull align 8 dereferenceable(24) %i.dn, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  store i64 -9223372036854775773, ptr %0, align 8
  call fastcc void @"_ZN4core3ptr69drop_in_place$LT$anki_proto..scheduler..ComputeFsrsParamsResponse$GT$17hc038f5ecf899774eE"(ptr noalias noundef align 8 dereferenceable(32) %i.dp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp)
  br label %bb.av

bb.kq:                                            ; preds = %bb.ko
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.x, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE"(ptr noalias noundef align 8 dereferenceable(24) %i.dn)
          to label %bb.kt unwind label %bb.ks

bb.kr:                                            ; preds = %bb.ks, %bb.km
  %.pn1028 = phi { ptr, i32 } [ %i.abi, %bb.ks ], [ %i.aba, %bb.km ]
  invoke fastcc void @"_ZN4core3ptr69drop_in_place$LT$anki_proto..scheduler..ComputeFsrsParamsResponse$GT$17hc038f5ecf899774eE"(ptr noalias noundef align 8 dereferenceable(32) %i.dp) #27
          to label %bb.bc unwind label %bb.bb

bb.ks:                                            ; preds = %bb.kq
  %i.abi = landingpad { ptr, i32 }
          cleanup
  br label %bb.kr

bb.kt:                                            ; preds = %bb.kq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  call fastcc void @"_ZN4core3ptr69drop_in_place$LT$anki_proto..scheduler..ComputeFsrsParamsResponse$GT$17hc038f5ecf899774eE"(ptr noalias noundef align 8 dereferenceable(32) %i.dp)
  br label %bb.ku

bb.ku:                                            ; preds = %bb.kt, %bb.kk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp)
  br label %bb.av

bb.kv:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @"_ZN95_$LT$anki..error..AnkiError$u20$as$u20$core..convert..From$LT$prost..error..DecodeError$GT$$GT$4from17h6ecf0eb2568b0954E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.w, ptr noalias noundef nonnull align 8 %i.nk)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.w, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.av

bb.kw:                                            ; preds = %bb.af
  store i64 %i.nh, ptr %i.dk, align 8
  %.sroa.7477.0..sroa_idx478 = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr %i.nk, ptr %.sroa.7477.0..sroa_idx478, align 8
  %.sroa.9480.0..sroa_idx481 = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store i64 %.sroa.5927.0.copyload, ptr %.sroa.9480.0..sroa_idx481, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7485)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  call void @"_ZN4anki9scheduler7service91_$LT$impl$u20$anki..services..SchedulerService$u20$for$u20$anki..collection..Collection$GT$32get_optimal_retention_parameters17h855934d1c1970da5E"(ptr noalias noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.di, ptr noalias noundef nonnull align 8 dereferenceable(728) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.dk)
  %i.abj = load i64, ptr %i.di, align 8, !range !8, !noundef !3 ; 2 uses
  %i.abk = icmp eq i64 %i.abj, -9223372036854775808
  %i.abl = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.7485, ptr noundef nonnull align 8 dereferenceable(112) %i.abl, i64 112, i1 false)
  br i1 %i.abk, label %bb.kx, label %bb.ky

bb.kx:                                            ; preds = %bb.kw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.7485, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7485)
  br label %bb.lh

bb.ky:                                            ; preds = %bb.kw
  %.sroa.5930.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 120
  %.sroa.5491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5491.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5930.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  %.sroa.4490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.4490.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.7485, i64 112, i1 false)
  store i64 %i.abj, ptr %i.dj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7485)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh)
  store i64 0, ptr %i.dh, align 8
  %i.abm = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
end_hunk_6
begin_hunk_7_@"_ZN4anki9scheduler3new46_$LT$impl$u20$anki..collection..Collection$GT$16sort_deck_legacy17h449730f8e4ab25f3E":bb.a
bb.q:                                             ; preds = %"_ZN4anki9scheduler5queue46_$LT$impl$u20$anki..collection..Collection$GT$33maybe_clear_study_queues_after_op17h9053fe22c85c009eE.exit.i.i.i", %bb.l
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.q, %bb.n
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.bg, %bb.q ], [ %i.bf, %bb.n ]
  invoke fastcc void @"_ZN4core3ptr41drop_in_place$LT$anki..ops..OpChanges$GT$17hf1a0d6ba58b56271E"(ptr noalias noundef align 8 dereferenceable(32) %i.f) #27
          to label %common.resume.i.i unwind label %bb.s, !noalias !10625

"_ZN4anki9scheduler5queue46_$LT$impl$u20$anki..collection..Collection$GT$33maybe_clear_study_queues_after_op17h9053fe22c85c009eE.exit.i.i.i": ; preds = %bb.o, %.noexc.i.i.i, %.noexc20.i.i
  invoke void @"_ZN4anki5notes4undo46_$LT$impl$u20$anki..collection..Collection$GT$30maybe_coalesce_note_undo_entry17h00b3cbd1a718023bE"(ptr noalias noundef nonnull align 8 dereferenceable(728) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f)
          to label %bb.p unwind label %bb.q, !noalias !10625

bb.r:                                             ; preds = %bb.p
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr41drop_in_place$LT$anki..ops..OpChanges$GT$17hf1a0d6ba58b56271E"(ptr noalias noundef align 8 dereferenceable(32) %i.g) #27
          to label %common.resume.i.i unwind label %bb.s, !noalias !10625

bb.s:                                             ; preds = %bb.r, %.body.i.i.i
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !10625
  unreachable

"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h2c795beaec190357E.exit.i.i": ; preds = %._crit_edge.i.i.i
  %.sroa.619.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.821.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.526.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.526.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.821.0..sroa_idx.i.i.i.i, i64 80, i1 false), !noalias !10627
  %.sroa.223.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.sroa.324.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bj = load <2 x i64>, ptr %.sroa.619.0..sroa_idx.i.i.i.i, align 8, !noalias !10619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10619
  store i64 %.sroa.010.0.copyload.i.i.i.i, ptr %.sroa.223.0..sroa_idx.i.i.i.i, align 8, !alias.scope !10618, !noalias !10617
  store <2 x i64> %i.bj, ptr %.sroa.324.0..sroa_idx.i.i.i.i, align 8, !alias.scope !10618, !noalias !10617
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.223.0..sroa_idx.i.i.i.i, i64 32, i1 false), !noalias !10621
  %.sroa.10.0..sroa_idx12.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.10.0.copyload13.i.i = load i64, ptr %.sroa.10.0..sroa_idx12.i.i, align 8, !noalias !10621
  %.sroa.11.0..sroa_idx17.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.11.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.11.0..sroa_idx17.i.i, i64 64, i1 false), !noalias !10608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10617
  br label %bb.t

bb.t:                                             ; preds = %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h2c795beaec190357E.exit.i.i", %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h2c795beaec190357E.exit.thread41.i.i", %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h2c795beaec190357E.exit.thread45.i.i", %bb.f
  %.sroa.10.1.i.i = phi i64 [ %.sroa.10.0.copyload13.i.i, %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h2c795beaec190357E.exit.i.i" ], [ %.sroa.6.0.copyload.i.i, %bb.f ], [ %.sroa.10.0.copyload15.i.i, %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h2c795beaec190357E.exit.thread41.i.i" ], [ %.sroa.10.0.copyload1349.i.i, %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h2c795beaec190357E.exit.thread45.i.i" ]
  %.sroa.03.1.i.i = phi i64 [ %i.ah, %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h2c795beaec190357E.exit.i.i" ], [ %i.ag, %bb.f ], [ %i.av, %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h2c795beaec190357E.exit.thread41.i.i" ], [ %.pre13.i.i.i, %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h2c795beaec190357E.exit.thread45.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !10608
  %.sroa.524.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !10608
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.524.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.i.i, i64 32, i1 false), !noalias !10608
  store i64 %.sroa.03.1.i.i, ptr %i.k, align 8, !noalias !10608
  %.sroa.625.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i64 %.sroa.10.1.i.i, ptr %.sroa.625.0..sroa_idx.i.i, align 8, !noalias !10608
  %.sroa.726.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.726.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.11.i.i, i64 64, i1 false), !noalias !10608
  call void @llvm.experimental.noalias.scope.decl(metadata !10628)
  call void @llvm.experimental.noalias.scope.decl(metadata !10629)
  call void @llvm.experimental.noalias.scope.decl(metadata !10630)
  call void @llvm.experimental.noalias.scope.decl(metadata !10631)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10632
  store i64 -9223372036854775766, ptr %i.a, align 8, !noalias !10632
  invoke void @_ZN4anki4undo11UndoManager10begin_step17hf9d4665951b3d043E(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.z, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc.i23.i.i unwind label %bb.v, !noalias !10633

.noexc.i23.i.i:                                   ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10632
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$anki..scheduler..queue..CardQueues$GT$$GT$17hb0dbd01b0bc6b86bE"(ptr noalias noundef align 8 dereferenceable(224) %i.bk)
          to label %bb.w unwind label %bb.u, !noalias !10633

bb.u:                                             ; preds = %.noexc.i23.i.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775808, ptr %i.bk, align 8, !alias.scope !10634
  br label %.body.i21.i.i

bb.v:                                             ; preds = %bb.y, %bb.x, %bb.t
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i21.i.i

.body.i21.i.i:                                    ; preds = %bb.v, %bb.u
  %eh.lpad-body.i22.i.i = phi { ptr, i32 } [ %i.bm, %bb.v ], [ %i.bl, %bb.u ]
  invoke void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.k) #27
          to label %common.resume.i.i unwind label %bb.ah, !noalias !10635

bb.w:                                             ; preds = %.noexc.i23.i.i
  store i64 -9223372036854775808, ptr %i.bk, align 8, !alias.scope !10634
  br i1 %.not52.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10636
  invoke void @_ZN4anki7storage6sqlite13SqliteStorage17rollback_rust_trx17h69ddae71cbf0d28dE(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.b, ptr noundef nonnull align 8 %i.p)
          to label %bb.z unwind label %bb.v, !noalias !10633

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10636
  invoke void @_ZN4anki7storage6sqlite13SqliteStorage12rollback_trx17h6e55060f32d2472bE(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.c, ptr noundef nonnull align 8 %i.p)
          to label %bb.ae unwind label %bb.v, !noalias !10633

bb.z:                                             ; preds = %bb.x
  %i.bn = load i64, ptr %i.b, align 8, !range !13, !noalias !10636, !noundef !3
  %.not.i24.i.i = icmp eq i64 %i.bn, -9223372036854775773
  br i1 %.not.i24.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.b, i64 112, i1 false), !noalias !10637
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10636
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10636
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ag, %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.k, i64 112, i1 false), !alias.scope !10638, !noalias !10609
  br label %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h4537ac338fff3d5aE.exit.i.i"

bb.ad:                                            ; preds = %bb.af, %bb.aa
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.k), !noalias !10607
  br label %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h4537ac338fff3d5aE.exit.i.i"

bb.ae:                                            ; preds = %bb.y
  %i.bo = load i64, ptr %i.c, align 8, !range !13, !noalias !10636, !noundef !3
  %.not1.i.i.i = icmp eq i64 %i.bo, -9223372036854775773
  br i1 %.not1.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.c, i64 112, i1 false), !noalias !10637
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10636
  br label %bb.ad

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10636
  br label %bb.ac

bb.ah:                                            ; preds = %.body.i21.i.i
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !10635
  unreachable

bb.ai:                                            ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !10621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !10608
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.i.i, i64 32, i1 false), !noalias !10609
  %.sroa.522.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.ao, ptr %.sroa.522.0..sroa_idx.i.i, align 8, !alias.scope !10639
  store i64 -9223372036854775773, ptr %0, align 8, !alias.scope !10639
  br label %bb.aj

bb.aj:                                            ; preds = %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h4537ac338fff3d5aE.exit.i.i", %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  br label %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$8transact17haed0b56559d92f60E.exit"

"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h4537ac338fff3d5aE.exit.i.i": ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !10608
  br label %bb.aj

bb.ak:                                            ; preds = %bb.c, %bb.b
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr62drop_in_place$LT$core..option..Option$LT$anki..ops..Op$GT$$GT$17hf4b9532f55bebffbE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o) #27
          to label %common.resume.i.i unwind label %bb.al, !noalias !10640

bb.al:                                            ; preds = %bb.ak
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !10640
  unreachable

"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$8transact17haed0b56559d92f60E.exit": ; preds = %bb.e, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !10602
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i1, i1 } @"_ZN4anki9scheduler3new46_$LT$impl$u20$anki..collection..Collection$GT$19reposition_defaults17hab1a639d3149eac4E"(ptr noundef nonnull align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 6 uses
  %i.b = alloca [112 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  call void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17he6d4c5be612c4b9eE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.b, ptr noundef nonnull align 8 %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @185, i64 noundef 21)
  %i.d = load i64, ptr %i.b, align 8, !range !13, !noundef !3
  %.not.i = icmp eq i64 %i.d, -9223372036854775773
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i8, ptr %i.e, align 8, !range !12
  br i1 %.not.i, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit", label %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i"

"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i": ; preds = %bb.a
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.b)
  br label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit": ; preds = %bb.a, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i"
  %.sroa.0.0.i = phi i8 [ 2, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i" ], [ %i.f, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17he6d4c5be612c4b9eE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, ptr noundef nonnull align 8 %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @187, i64 noundef 28)
  %i.g = load i64, ptr %i.a, align 8, !range !13, !noundef !3
  %.not.i2 = icmp eq i64 %i.g, -9223372036854775773
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !12
  br i1 %.not.i2, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit5", label %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i3"

"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i3": ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit"
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.a)
  br label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit5"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit5": ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit", %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i3"
  %.sroa.0.0.i4 = phi i8 [ 2, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i3" ], [ %i.i, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit" ]
  %spec.select.i.i = trunc i8 %.sroa.0.0.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %spec.select.i.i1 = trunc i8 %.sroa.0.0.i4 to i1
  %i.j = insertvalue { i1, i1 } poison, i1 %spec.select.i.i, 0
  %i.k = insertvalue { i1, i1 } %i.j, i1 %spec.select.i.i1, 1
  ret { i1, i1 } %i.k
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki9scheduler3new46_$LT$impl$u20$anki..collection..Collection$GT$23reschedule_cards_as_new17hb4b777c9fdc68bddE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef align 8 dereferenceable(728) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6, i32 noundef range(i32 0, 3) %7) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [112 x i8], align 8               ; 6 uses
  %i.c = alloca [112 x i8], align 8               ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [112 x i8], align 8               ; 9 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [112 x i8], align 8               ; 9 uses
  %i.i = alloca [112 x i8], align 8               ; 11 uses
  %i.j = alloca [112 x i8], align 8               ; 9 uses
  %i.k = alloca [40 x i8], align 8                ; 13 uses
  %i.l = alloca [152 x i8], align 8               ; 4 uses
  %i.m = alloca [112 x i8], align 8               ; 9 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [1 x i8], align 1                 ; 4 uses
  %i.p = alloca [112 x i8], align 8               ; 10 uses
  %i.q = alloca [112 x i8], align 8               ; 10 uses
  %i.r = alloca [112 x i8], align 8               ; 10 uses
  %i.s = alloca [112 x i8], align 8               ; 10 uses
  %i.t = alloca [152 x i8], align 8               ; 5 uses
  %i.u = alloca [112 x i8], align 8               ; 9 uses
  %i.v = alloca [152 x i8], align 8               ; 26 uses
  %i.w = alloca [152 x i8], align 8               ; 31 uses
  %.sroa.8178.i.i = alloca [144 x i8], align 8    ; 7 uses
  %i.x = alloca [32 x i8], align 8                ; 10 uses
  %i.y = alloca [112 x i8], align 8               ; 10 uses
  %i.z = alloca [112 x i8], align 8               ; 10 uses
  %.sroa.10.i = alloca [72 x i8], align 8         ; 6 uses
  %.sroa.29.sroa.12.i = alloca [72 x i8], align 8 ; 12 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [112 x i8], align 8              ; 6 uses
  %i.ac = alloca [112 x i8], align 8              ; 8 uses
  %i.ad = alloca [24 x i8], align 8               ; 5 uses
  %i.ae = alloca [112 x i8], align 8              ; 7 uses
  %i.af = zext i1 %5 to i8                        ; 2 uses
  %i.ag = zext i1 %6 to i8                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 13 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.aj = load i8, ptr %i.ai, align 8, !range !6, !noalias !10700, !noundef !3
  %i.ak = trunc nuw i8 %i.aj to i1
  call void @"_ZN4anki7storage4sync54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$3usn17hb785e7eb17a3bc16E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ae, ptr noundef nonnull align 8 %i.ah, i1 noundef zeroext %i.ak)
  %i.al = load i64, ptr %i.ae, align 8, !range !13, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.al, -9223372036854775773
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.an = load i32, ptr %i.am, align 8            ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %.sroa.314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(100) %.sroa.314.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(100) %.sroa.611.0..sroa_idx, i64 100, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  store i64 %i.al, ptr %0, align 8
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.an, ptr %.sroa.213.0..sroa_idx, align 8
  br label %bb.ca

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17h45436d312cdfd3c3E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ac, ptr noundef nonnull align 8 %i.ah, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @222, i64 noundef 7)
  %i.ao = load i64, ptr %i.ac, align 8, !range !13, !noundef !3
  %.not.i.i.i = icmp eq i64 %i.ao, -9223372036854775773
  br i1 %.not.i.i.i, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h0874b1ff1be210a5E.exit.i.i", label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h0874b1ff1be210a5E.exit.thread.i.i"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h0874b1ff1be210a5E.exit.thread.i.i": ; preds = %bb.c
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.d

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h0874b1ff1be210a5E.exit.i.i": ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !range !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.at = trunc nuw i32 %i.as to i1
  br i1 %i.at, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$22get_next_card_position17h87fc95b138b2405fE.exit", label %bb.d

bb.d:                                             ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h0874b1ff1be210a5E.exit.i.i", %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h0874b1ff1be210a5E.exit.thread.i.i"
  br label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$22get_next_card_position17h87fc95b138b2405fE.exit"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$22get_next_card_position17h87fc95b138b2405fE.exit": ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h0874b1ff1be210a5E.exit.i.i", %bb.d
  %.sroa.0.0.i.i = phi i32 [ 0, %bb.d ], [ %i.aq, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h0874b1ff1be210a5E.exit.i.i" ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i64 -9223372036854775785, ptr %i.ad, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !10701)
  call void @llvm.experimental.noalias.scope.decl(metadata !10702)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i)
  %i.au = load i64, ptr %i.ah, align 8, !alias.scope !10702, !noundef !3 ; 2 uses
  %i.av = icmp ult i64 %i.au, 9223372036854775807
  br i1 %i.av, label %bb.f, label %bb.e, !prof !5

bb.e:                                             ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$22get_next_card_position17h87fc95b138b2405fE.exit"
  invoke void @_ZN4core4cell30panic_already_mutably_borrowed17h4b83bcbcb74b1f38E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @519) #26
          to label %.noexc.i unwind label %bb.by, !noalias !10703

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$22get_next_card_position17h87fc95b138b2405fE.exit"
  %i.aw = add nuw nsw i64 %i.au, 1
  store i64 %i.aw, ptr %i.ah, align 8, !alias.scope !10702
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !10702, !noundef !3
  %i.az = call noundef i32 @sqlite3_get_autocommit(ptr noundef %i.ay) #29, !noalias !10703
  %.not159.i = icmp eq i32 %i.az, 0
  %i.ba = load i64, ptr %i.ah, align 8, !alias.scope !10702, !noundef !3
  %i.bb = add i64 %i.ba, -1
  store i64 %i.bb, ptr %i.ah, align 8, !alias.scope !10702
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !10704
  invoke void @_ZN4anki7storage6sqlite13SqliteStorage14begin_rust_trx17ha28b49405954732cE(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ab, ptr noundef nonnull align 8 %i.ah)
          to label %bb.g unwind label %bb.by, !noalias !10703

bb.g:                                             ; preds = %bb.f
  %i.bc = load i64, ptr %i.ab, align 8, !range !13, !noalias !10704, !noundef !3
  %.not6.i = icmp eq i64 %i.bc, -9223372036854775773
  br i1 %.not6.i, label %"_ZN4anki4undo46_$LT$impl$u20$anki..collection..Collection$GT$24begin_undoable_operation17h8ccf3b6ccc47ce4bE.exit.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.ab, i64 112, i1 false), !noalias !10705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !10704
  br label %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner17h348562e288d157ceE.exit"

common.resume.i:                                  ; preds = %bb.by, %.body.i31.i, %bb.bg, %.body.i.i, %.body167.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.hc, %bb.bg ], [ %eh.lpad-body.i32.i, %.body.i31.i ], [ %lpad.thr_comm.split-lp.i, %bb.by ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %.pn159.i.i, %.body167.i.i ]
  resume { ptr, i32 } %common.resume.op.i

"_ZN4anki4undo46_$LT$impl$u20$anki..collection..Collection$GT$24begin_undoable_operation17h8ccf3b6ccc47ce4bE.exit.i": ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !10704
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !10704
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !noalias !10706
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  call void @_ZN4anki4undo11UndoManager10begin_step17hf9d4665951b3d043E(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.bd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.aa), !noalias !10703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !10704
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.29.sroa.12.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !10707
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !10707
  store i8 1, ptr %i.o, align 1, !noalias !10708
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !10708
  store ptr %1, ptr %i.n, align 8, !noalias !10708
  %i.be = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %2, ptr %i.be, align 8, !noalias !10708
  %i.bf = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %3, ptr %i.bf, align 8, !noalias !10708
  %i.bg = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.o, ptr %i.bg, align 8, !noalias !10708
  call void @"_ZN4anki7storage4card54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$25with_searched_cards_table17h1875a5d254e9f879E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.y, ptr noundef nonnull align 8 %i.ah, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.n), !noalias !10703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !10708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !10707
  %i.bh = load i64, ptr %i.y, align 8, !range !13, !noalias !10707, !noundef !3 ; 2 uses
  %.not.i.i = icmp eq i64 %i.bh, -9223372036854775773
  %i.bi = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.074.0.copyload.i.i = load i64, ptr %i.bi, align 8, !noalias !10707 ; 4 uses
  %.sroa.575.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.575.0.copyload.i.i = load ptr, ptr %.sroa.575.0..sroa_idx.i.i, align 8, !noalias !10707 ; 5 uses
  %.sroa.676.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.676.0.copyload.i.i = load i64, ptr %.sroa.676.0..sroa_idx.i.i, align 8, !noalias !10707 ; 4 uses
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %"_ZN4anki4undo46_$LT$impl$u20$anki..collection..Collection$GT$24begin_undoable_operation17h8ccf3b6ccc47ce4bE.exit.i"
  %.sroa.886.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %.sroa.29.sroa.0.0.copyload112.i = load i64, ptr %.sroa.886.0..sroa_idx.i.i, align 8, !noalias !10709
  %.sroa.29.sroa.12.0..sroa.886.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.29.sroa.12.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.29.sroa.12.0..sroa.886.0..sroa_idx.i.sroa_idx.i, i64 72, i1 false), !noalias !10709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !10707
  %.sroa.14.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.074.0.copyload.i.i to i8
  %.sroa.14.sroa.12.0.extract.shift.i = lshr i64 %.sroa.074.0.copyload.i.i, 8
  %.sroa.14.sroa.12.0.extract.trunc.i = trunc nuw i64 %.sroa.14.sroa.12.0.extract.shift.i to i56
  %i.bj = insertelement <2 x i64> poison, i64 %.sroa.676.0.copyload.i.i, i64 0
  %i.bk = insertelement <2 x i64> %i.bj, i64 %.sroa.29.sroa.0.0.copyload112.i, i64 1
  br label %bb.au

bb.j:                                             ; preds = %"_ZN4anki4undo46_$LT$impl$u20$anki..collection..Collection$GT$24begin_undoable_operation17h8ccf3b6ccc47ce4bE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !10707
  %i.bl = icmp ult i64 %.sroa.676.0.copyload.i.i, 60680079189834052
  call void @llvm.assume(i1 %i.bl)
  %.idx.i.i = mul nuw nsw i64 %.sroa.676.0.copyload.i.i, 152
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.575.0.copyload.i.i, i64 %.idx.i.i
  %i.bn = icmp sgt i64 %.sroa.074.0.copyload.i.i, -1
  call void @llvm.assume(i1 %i.bn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !10707
  store ptr %.sroa.575.0.copyload.i.i, ptr %i.x, align 8, !noalias !10707
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  store ptr %.sroa.575.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !10707
  %.sroa.6.0..sroa_idx15.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.sroa.074.0.copyload.i.i, ptr %.sroa.6.0..sroa_idx15.i.i, align 8, !noalias !10707
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
end_hunk_7
begin_hunk_8_@"_ZN4anki9scheduler3new46_$LT$impl$u20$anki..collection..Collection$GT$23reschedule_cards_as_new17hb4b777c9fdc68bddE":bb.a

"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h30dcd6ff01999a27E.exit.i": ; preds = %"_ZN4anki10collection10timestamps46_$LT$impl$u20$anki..collection..Collection$GT$12set_modified17h08baae225b4b9c68E.exit.i._ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h30dcd6ff01999a27E.exit_crit_edge.i", %"_ZN4anki10collection10timestamps46_$LT$impl$u20$anki..collection..Collection$GT$12set_modified17h08baae225b4b9c68E.exit.thread.i.i"
  %.sroa.8.sroa.9.0.copyload96.i = phi i64 [ %.sroa.720.0.copyload.i.i.i, %"_ZN4anki10collection10timestamps46_$LT$impl$u20$anki..collection..Collection$GT$12set_modified17h08baae225b4b9c68E.exit.thread.i.i" ], [ %.sroa.8.sroa.9.0.copyload96.pre.i, %"_ZN4anki10collection10timestamps46_$LT$impl$u20$anki..collection..Collection$GT$12set_modified17h08baae225b4b9c68E.exit.i._ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h30dcd6ff01999a27E.exit_crit_edge.i" ]
  %.sroa.8.sroa.8.0.copyload91.i = phi ptr [ %i.ge, %"_ZN4anki10collection10timestamps46_$LT$impl$u20$anki..collection..Collection$GT$12set_modified17h08baae225b4b9c68E.exit.thread.i.i" ], [ %.sroa.8.sroa.8.0.copyload91.pre.i, %"_ZN4anki10collection10timestamps46_$LT$impl$u20$anki..collection..Collection$GT$12set_modified17h08baae225b4b9c68E.exit.i._ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h30dcd6ff01999a27E.exit_crit_edge.i" ]
  %.sroa.8.sroa.0.0.copyload87.i = phi i64 [ %.sroa.010.0.copyload.i.i.i, %"_ZN4anki10collection10timestamps46_$LT$impl$u20$anki..collection..Collection$GT$12set_modified17h08baae225b4b9c68E.exit.thread.i.i" ], [ %.sroa.8.sroa.0.0.copyload87.pre.i, %"_ZN4anki10collection10timestamps46_$LT$impl$u20$anki..collection..Collection$GT$12set_modified17h08baae225b4b9c68E.exit.i._ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h30dcd6ff01999a27E.exit_crit_edge.i" ]
  %.sroa.039.0.copyload41.i = phi i64 [ %i.gc, %"_ZN4anki10collection10timestamps46_$LT$impl$u20$anki..collection..Collection$GT$12set_modified17h08baae225b4b9c68E.exit.thread.i.i" ], [ %.pre11.i.i, %"_ZN4anki10collection10timestamps46_$LT$impl$u20$anki..collection..Collection$GT$12set_modified17h08baae225b4b9c68E.exit.i._ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h30dcd6ff01999a27E.exit_crit_edge.i" ]
  %.sroa.8.sroa.10.0..sroa.8.0..sroa_idx44.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.8.sroa.10.0.copyload101.i = load i64, ptr %.sroa.8.sroa.10.0..sroa.8.0..sroa_idx44.sroa_idx.i, align 8, !noalias !10731
  %.sroa.10.0..sroa_idx47.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.10.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.10.0..sroa_idx47.i, i64 72, i1 false), !noalias !10704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10727
  %i.he = insertelement <2 x i64> poison, i64 %.sroa.8.sroa.9.0.copyload96.i, i64 0
  %i.hf = insertelement <2 x i64> %i.he, i64 %.sroa.8.sroa.10.0.copyload101.i, i64 1
  br label %bb.bi

bb.bi:                                            ; preds = %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h30dcd6ff01999a27E.exit.i", %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h30dcd6ff01999a27E.exit.thread152.i", %bb.au
  %.sroa.8.sroa.8.0.i = phi ptr [ %.sroa.8.sroa.8.0.copyload91.i, %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h30dcd6ff01999a27E.exit.i" ], [ %.sroa.26.1.ph.i, %bb.au ], [ %.sroa.8.sroa.8.0.copyload92.i, %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h30dcd6ff01999a27E.exit.thread152.i" ]
  %.sroa.8.sroa.0.0.i = phi i64 [ %.sroa.8.sroa.0.0.copyload87.i, %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h30dcd6ff01999a27E.exit.i" ], [ %.sroa.14.sroa.0.0.insert.insert.i, %bb.au ], [ %.sroa.8.sroa.0.0.copyload88.i, %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h30dcd6ff01999a27E.exit.thread152.i" ]
  %.sroa.039.0.i = phi i64 [ %.sroa.039.0.copyload41.i, %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h30dcd6ff01999a27E.exit.i" ], [ %.sroa.049.1.ph.i, %bb.au ], [ %i.gp, %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h30dcd6ff01999a27E.exit.thread152.i" ]
  %i.hg = phi <2 x i64> [ %i.hf, %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h30dcd6ff01999a27E.exit.i" ], [ %i.gb, %bb.au ], [ %i.gv, %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h30dcd6ff01999a27E.exit.thread152.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.29.sroa.12.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !10704
  store i64 %.sroa.039.0.i, ptr %i.z, align 8, !noalias !10704
  %.sroa.5117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %.sroa.8.sroa.0.0.i, ptr %.sroa.5117.0..sroa_idx.i, align 8, !noalias !10704
  %.sroa.6118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %.sroa.8.sroa.8.0.i, ptr %.sroa.6118.0..sroa_idx.i, align 8, !noalias !10704
  %.sroa.7119.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store <2 x i64> %i.hg, ptr %.sroa.7119.0..sroa_idx.i, align 8, !noalias !10704
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.9.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.10.i, i64 72, i1 false), !noalias !10704
  call void @llvm.experimental.noalias.scope.decl(metadata !10737)
  call void @llvm.experimental.noalias.scope.decl(metadata !10738)
  call void @llvm.experimental.noalias.scope.decl(metadata !10739)
  call void @llvm.experimental.noalias.scope.decl(metadata !10740)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10741
  store i64 -9223372036854775766, ptr %i.a, align 8, !noalias !10741
  invoke void @_ZN4anki4undo11UndoManager10begin_step17hf9d4665951b3d043E(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.bd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc.i33.i unwind label %bb.bk, !noalias !10742

.noexc.i33.i:                                     ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10741
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$anki..scheduler..queue..CardQueues$GT$$GT$17hb0dbd01b0bc6b86bE"(ptr noalias noundef align 8 dereferenceable(224) %i.hh)
          to label %bb.bl unwind label %bb.bj, !noalias !10742

bb.bj:                                            ; preds = %.noexc.i33.i
  %i.hi = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775808, ptr %i.hh, align 8, !alias.scope !10743
  br label %.body.i31.i

bb.bk:                                            ; preds = %bb.bn, %bb.bm, %bb.bi
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i31.i

.body.i31.i:                                      ; preds = %bb.bk, %bb.bj
  %eh.lpad-body.i32.i = phi { ptr, i32 } [ %i.hj, %bb.bk ], [ %i.hi, %bb.bj ]
  invoke void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.z) #27
          to label %common.resume.i unwind label %bb.bw, !noalias !10744

bb.bl:                                            ; preds = %.noexc.i33.i
  store i64 -9223372036854775808, ptr %i.hh, align 8, !alias.scope !10743
  br i1 %.not159.i, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10745
  invoke void @_ZN4anki7storage6sqlite13SqliteStorage17rollback_rust_trx17h69ddae71cbf0d28dE(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.b, ptr noundef nonnull align 8 %i.ah)
          to label %bb.bo unwind label %bb.bk, !noalias !10742

bb.bn:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10745
  invoke void @_ZN4anki7storage6sqlite13SqliteStorage12rollback_trx17h6e55060f32d2472bE(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.c, ptr noundef nonnull align 8 %i.ah)
          to label %bb.bt unwind label %bb.bk, !noalias !10742

bb.bo:                                            ; preds = %bb.bm
  %i.hk = load i64, ptr %i.b, align 8, !range !13, !noalias !10745, !noundef !3
  %.not.i34.i = icmp eq i64 %i.hk, -9223372036854775773
  br i1 %.not.i34.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.b, i64 112, i1 false), !noalias !10746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10745
  br label %bb.bs

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10745
  br label %bb.br

bb.br:                                            ; preds = %bb.bv, %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.z, i64 112, i1 false), !alias.scope !10747, !noalias !10705
  br label %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h1e21df5a836db758E.exit.i"

bb.bs:                                            ; preds = %bb.bu, %bb.bp
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.z), !noalias !10703
  br label %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h1e21df5a836db758E.exit.i"

bb.bt:                                            ; preds = %bb.bn
  %i.hl = load i64, ptr %i.c, align 8, !range !13, !noalias !10745, !noundef !3
  %.not1.i.i = icmp eq i64 %i.hl, -9223372036854775773
  br i1 %.not1.i.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.c, i64 112, i1 false), !noalias !10746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10745
  br label %bb.bs

bb.bv:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10745
  br label %bb.br

bb.bw:                                            ; preds = %.body.i31.i
  %i.hm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !10744
  unreachable

bb.bx:                                            ; preds = %bb.be
  %.sroa.8.sroa.0.0.copyload90.i = load i64, ptr %i.g, align 8, !noalias !10731
  %.sroa.8.sroa.8.0..sroa_idx94.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.8.sroa.8.0.copyload95.i = load ptr, ptr %.sroa.8.sroa.8.0..sroa_idx94.i, align 8, !noalias !10731
  %.sroa.8.sroa.9.0..sroa_idx99.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5114.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ho = load <2 x i64>, ptr %.sroa.8.sroa.9.0..sroa_idx99.i, align 8, !noalias !10731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10727
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.29.sroa.12.i)
  store i64 %.sroa.8.sroa.0.0.copyload90.i, ptr %i.hn, align 8, !alias.scope !10701
  store ptr %.sroa.8.sroa.8.0.copyload95.i, ptr %.sroa.5114.0..sroa_idx.i, align 8, !alias.scope !10701
  store <2 x i64> %i.ho, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !10701
  store i64 -9223372036854775773, ptr %0, align 8, !alias.scope !10701
  br label %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner17h348562e288d157ceE.exit"

"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h1e21df5a836db758E.exit.i": ; preds = %bb.bs, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !10704
  br label %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner17h348562e288d157ceE.exit"

bb.by:                                            ; preds = %bb.f, %bb.e
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr62drop_in_place$LT$core..option..Option$LT$anki..ops..Op$GT$$GT$17hf4b9532f55bebffbE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad) #27
          to label %common.resume.i unwind label %bb.bz, !noalias !10748

bb.bz:                                            ; preds = %bb.by
  %i.hp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !10748
  unreachable

"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner17h348562e288d157ceE.exit": ; preds = %bb.h, %bb.bx, %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h1e21df5a836db758E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.ca

bb.ca:                                            ; preds = %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner17h348562e288d157ceE.exit", %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i1, i1 } @"_ZN4anki9scheduler3new46_$LT$impl$u20$anki..collection..Collection$GT$32reschedule_cards_as_new_defaults17h5dfeecd4bcea7afcE"(ptr noundef nonnull align 8 %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 6 uses
  %i.b = alloca [112 x i8], align 8               ; 6 uses
  %i.c = alloca [112 x i8], align 8               ; 6 uses
  %i.d = alloca [112 x i8], align 8               ; 6 uses
  %i.e = trunc nuw i32 %1 to i1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 4 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17he6d4c5be612c4b9eE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.d, ptr noundef nonnull align 8 %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @182, i64 noundef 23)
  %i.g = load i64, ptr %i.d, align 8, !range !13, !noundef !3
  %.not.i = icmp eq i64 %i.g, -9223372036854775773
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !12
  br i1 %.not.i, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit", label %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i"

"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i": ; preds = %bb.b
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.d)
  br label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit": ; preds = %bb.b, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i"
  %.sroa.0.0.i3 = phi i8 [ 2, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i" ], [ %i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17he6d4c5be612c4b9eE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.c, ptr noundef nonnull align 8 %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @184, i64 noundef 19)
  %i.j = load i64, ptr %i.c, align 8, !range !13, !noundef !3
  %.not.i4 = icmp eq i64 %i.j, -9223372036854775773
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = load i8, ptr %i.k, align 8, !range !12
  br i1 %.not.i4, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit7", label %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i5"

"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i5": ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit"
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.c)
  br label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit7"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit7": ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit", %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i5"
  %.sroa.0.0.i6 = phi i8 [ 2, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i5" ], [ %i.l, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17he6d4c5be612c4b9eE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.b, ptr noundef nonnull align 8 %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @181, i64 noundef 22)
  %i.m = load i64, ptr %i.b, align 8, !range !13, !noundef !3
  %.not.i8 = icmp eq i64 %i.m, -9223372036854775773
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = load i8, ptr %i.n, align 8, !range !12
  br i1 %.not.i8, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit11", label %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i9"

"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i9": ; preds = %bb.c
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.b)
  br label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit11"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit11": ; preds = %bb.c, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i9"
  %.sroa.0.0.i10 = phi i8 [ 2, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i9" ], [ %i.o, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17he6d4c5be612c4b9eE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, ptr noundef nonnull align 8 %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @183, i64 noundef 18)
  %i.p = load i64, ptr %i.a, align 8, !range !13, !noundef !3
  %.not.i12 = icmp eq i64 %i.p, -9223372036854775773
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load i8, ptr %i.q, align 8, !range !12
  br i1 %.not.i12, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit15", label %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i13"

"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i13": ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit11"
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.a)
  br label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit15"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit15": ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit11", %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i13"
  %.sroa.0.0.i14 = phi i8 [ 2, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i13" ], [ %i.r, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit11" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit15", %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit7"
  %.sroa.3.0.in.in = phi i8 [ %.sroa.0.0.i6, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit7" ], [ %.sroa.0.0.i14, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit15" ]
  %.sroa.0.0.in.in = phi i8 [ %.sroa.0.0.i3, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit7" ], [ %.sroa.0.0.i10, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit15" ]
  %.sroa.0.0.in = icmp ne i8 %.sroa.0.0.in.in, 0
  %.sroa.3.0.in = trunc i8 %.sroa.3.0.in.in to i1
  %i.s = insertvalue { i1, i1 } poison, i1 %.sroa.0.0.in, 0
  %i.t = insertvalue { i1, i1 } %i.s, i1 %.sroa.3.0.in, 1
  ret { i1, i1 } %i.t
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4anki9scheduler3new46_$LT$impl$u20$anki..collection..Collection$GT$9sort_deck17h4651e85a6df7cfe9E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 dereferenceable(728) %1, i64 noundef %2, i32 noundef range(i32 0, 2) %3, i32 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [112 x i8], align 8               ; 5 uses
  %i.c = alloca [64 x i8], align 8                ; 6 uses
  %i.d = alloca [112 x i8], align 8               ; 5 uses
  %i.e = alloca [64 x i8], align 8                ; 7 uses
  %i.f = alloca [112 x i8], align 8               ; 5 uses
  %i.g = alloca [64 x i8], align 8                ; 4 uses
  %i.h = alloca [64 x i8], align 8                ; 8 uses
  %i.i = alloca [64 x i8], align 8                ; 8 uses
  %.sroa.616.i = alloca [24 x i8], align 8        ; 6 uses
  %i.j = alloca [72 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [64 x i8], align 8          ; 6 uses
  %i.k = alloca [64 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [112 x i8], align 8               ; 6 uses
  %i.n = alloca [64 x i8], align 8                ; 5 uses
  %i.o = alloca [112 x i8], align 8               ; 7 uses
  %.sroa.67.i = alloca [48 x i8], align 8         ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 11 uses
  %i.q = alloca [24 x i8], align 8                ; 12 uses
  %i.r = alloca [64 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [112 x i8], align 8               ; 7 uses
  %.sroa.6.i = alloca [72 x i8], align 8          ; 6 uses
  %i.u = alloca [72 x i8], align 8                ; 9 uses
  %i.v = alloca [24 x i8], align 8                ; 8 uses
  %i.w = alloca [24 x i8], align 8                ; 8 uses
  %i.x = alloca [24 x i8], align 8                ; 12 uses
  %i.y = alloca [72 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.11 = alloca [104 x i8], align 8          ; 15 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 7 uses
  %i.aa = alloca [24 x i8], align 8               ; 9 uses
  %i.ab = alloca [8 x i8], align 8                ; 2 uses
  store i64 %2, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !10757
  store i64 0, ptr %i.w, align 8, !noalias !10757
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !10757
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !10757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !10757
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i32 -536870880, ptr %i.ac, align 8, !noalias !10757
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !10757
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !10757
  store ptr %i.w, ptr %i.v, align 8, !noalias !10757
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @17, ptr %i.ad, align 8, !noalias !10757
  %i.ae = invoke noundef zeroext i1 @"_ZN58_$LT$anki..decks..DeckId$u20$as$u20$core..fmt..Display$GT$3fmt17h2ed664db73e86c5dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.c unwind label %bb.b, !noalias !10758

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w) #27
          to label %common.resume unwind label %bb.e, !noalias !10758

bb.c:                                             ; preds = %bb.a
  br i1 %i.ae, label %bb.d, label %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hff903f2add0f2e37E.exit", !prof !9

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @18, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @407, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #26
          to label %.noexc.i unwind label %bb.b, !noalias !10758

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !10758
  unreachable

common.resume:                                    ; preds = %bb.be, %bb.bg, %bb.f, %bb.az, %bb.bb, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.ce, %bb.bg ], [ %i.af, %bb.b ], [ %i.bx, %bb.az ], [ %.pn82.i, %bb.f ], [ %.pn82.i, %bb.bb ], [ %i.cd, %bb.be ]
  resume { ptr, i32 } %common.resume.op

"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hff903f2add0f2e37E.exit": ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !10757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !10757
  store i64 -9223372036854775802, ptr %i.y, align 8
  call void @"_ZN57_$LT$T$u20$as$u20$anki..search..builder..JoinSearches$GT$3and17haeff765d9012aae5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.y, i8 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store i64 -9223372036854775808, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !10759
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !10759
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !10759
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !10760
  invoke void @"_ZN84_$LT$anki..search..builder..SearchBuilder$u20$as$u20$anki..search..TryIntoSearch$GT$15try_into_search17h3bdc7ac4489cba63E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.t, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.s)
          to label %bb.h unwind label %bb.g, !noalias !10759

bb.f:                                             ; preds = %.body86.i, %bb.g
  %.sroa.035.0.i = phi i8 [ %.sroa.035.1.i, %bb.g ], [ %.sroa.035.2.i, %.body86.i ]
  %.pn82.i = phi { ptr, i32 } [ %i.aj, %bb.g ], [ %.pn80.i, %.body86.i ] ; 2 uses
  %i.ai = trunc nuw i8 %.sroa.035.0.i to i1
  br i1 %i.ai, label %bb.bb, label %common.resume

bb.g:                                             ; preds = %bb.av, %bb.ai, %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hff903f2add0f2e37E.exit"
  %.sroa.035.1.i = phi i8 [ %.sroa.035.4.i, %bb.av ], [ 0, %bb.ai ], [ 1, %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hff903f2add0f2e37E.exit" ]
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hff903f2add0f2e37E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !10759
  %i.ak = load i64, ptr %i.t, align 8, !range !13, !noalias !10759, !noundef !3 ; 2 uses
  %.not.i = icmp eq i64 %i.ak, -9223372036854775773
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(72) %i.al, i64 72, i1 false), !noalias !10759
  br i1 %.not.i, label %bb.i, label %"_ZN4anki6search46_$LT$impl$u20$anki..collection..Collection$GT$6search17hbd31e30b2bba1a2eE.exit.thread31"

"_ZN4anki6search46_$LT$impl$u20$anki..collection..Collection$GT$6search17hbd31e30b2bba1a2eE.exit.thread31": ; preds = %bb.h
  %.sroa.644.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %.sroa.11.80..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.80..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.644.0..sroa_idx.i, i64 32, i1 false), !noalias !10761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !10759
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.i, i64 72, i1 false), !noalias !10761
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !10759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.bc

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !10759
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.u, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.i, i64 72, i1 false), !noalias !10759
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !10759
  invoke void @_ZN4anki6search9sqlwriter9SqlWriter3new17hfe5dfca33df728f8E(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(728) %1, i1 noundef zeroext false)
          to label %bb.k unwind label %bb.j, !noalias !10762

.body86.i:                                        ; preds = %bb.ax, %bb.at, %.body.i, %bb.l, %bb.j
  %.sroa.035.2.i = phi i8 [ 1, %bb.l ], [ 0, %.body.i ], [ 1, %bb.ax ], [ %.sroa.035.3.i, %bb.j ], [ 0, %bb.at ]
  %.pn80.i = phi { ptr, i32 } [ %i.ao, %bb.l ], [ %.pn78.i, %.body.i ], [ %i.bw, %bb.ax ], [ %i.am, %bb.j ], [ %i.bs, %bb.at ]
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$anki..search..parser..Node$GT$17h210129451299b904E"(ptr noalias noundef align 8 dereferenceable(72) %i.u) #27
          to label %bb.f unwind label %bb.an, !noalias !10762

bb.j:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i", %bb.ah, %bb.i
  %.sroa.035.3.i = phi i8 [ 0, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i" ], [ 0, %bb.ah ], [ 1, %bb.i ]
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body86.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.67.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !10759
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !10759
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 64, i1 false), !noalias !10759
  %i.an = invoke noundef i8 @_ZN4anki6search8SortMode14required_table17h9995adf61280a74cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x)
          to label %bb.m unwind label %bb.ax, !noalias !10762

bb.l:                                             ; preds = %bb.m
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body86.i

bb.m:                                             ; preds = %bb.k
  invoke void @_ZN4anki6search9sqlwriter9SqlWriter11build_query17h9df13cf76298b8baE(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.u, i8 noundef %i.an)
          to label %bb.n unwind label %bb.l, !noalias !10762

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !10759
  %i.ap = load i64, ptr %i.o, align 8, !range !13, !noalias !10759, !noundef !3 ; 2 uses
  %.not73.i = icmp eq i64 %i.ap, -9223372036854775773
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.67.i, ptr noundef nonnull align 8 dereferenceable(48) %i.aq, i64 48, i1 false), !noalias !10759
  br i1 %.not73.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.653.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %.sroa.11.56..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.11.56..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.653.0..sroa_idx.i, i64 56, i1 false), !noalias !10761
end_hunk_8
begin_hunk_9_@"_ZN4anki9scheduler7reviews46_$LT$impl$u20$anki..collection..Collection$GT$12set_due_date17h8b3bbbcbcb012970E":bb.a
  %i.ah = alloca [112 x i8], align 8              ; 6 uses
  %i.ai = alloca [24 x i8], align 8               ; 5 uses
  %i.aj = alloca [112 x i8], align 8              ; 9 uses
  %i.ak = alloca [112 x i8], align 8              ; 9 uses
  %i.al = alloca [1 x i8], align 1                ; 3 uses
  %i.am = alloca [48 x i8], align 8               ; 11 uses
  %i.an = alloca [8 x i8], align 8                ; 8 uses
  %i.ao = alloca [112 x i8], align 8              ; 7 uses
  %i.ap = alloca [112 x i8], align 8              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @_ZN4anki9scheduler7reviews18parse_due_date_str17hc7eef523e82950bdE(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ap, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %4, i64 noundef %5)
  %i.aq = load i64, ptr %i.ap, align 8, !range !13, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.aq, -9223372036854775773
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.059.0.copyload = load i32, ptr %i.ar, align 8 ; 4 uses
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  %.sroa.560.0.copyload = load i32, ptr %.sroa.560.0..sroa_idx, align 4 ; 3 uses
  %.sroa.661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.661.0.copyload = load i32, ptr %.sroa.661.0..sroa_idx, align 8 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.870.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 20
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %.sroa.575.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(92) %.sroa.870.0..sroa_idx, i64 92, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  store i64 %i.aq, ptr %0, align 8
  %.sroa.272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.059.0.copyload, ptr %.sroa.272.0..sroa_idx, align 8
  %.sroa.373.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.560.0.copyload, ptr %.sroa.373.0..sroa_idx, align 4
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.661.0.copyload, ptr %.sroa.474.0..sroa_idx, align 8
  br label %bb.dw

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 15 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.au = load i8, ptr %i.at, align 8, !range !6, !noalias !11936, !noundef !3
  %i.av = trunc nuw i8 %i.au to i1
  call void @"_ZN4anki7storage4sync54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$3usn17hb785e7eb17a3bc16E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ao, ptr noundef nonnull align 8 %i.as, i1 noundef zeroext %i.av)
  %i.aw = load i64, ptr %i.ao, align 8, !range !13, !noundef !3 ; 2 uses
  %.not137 = icmp eq i64 %i.aw, -9223372036854775773
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ay = load i32, ptr %i.ax, align 8            ; 3 uses
  br i1 %.not137, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.681.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %.sroa.384.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(100) %.sroa.384.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(100) %.sroa.681.0..sroa_idx, i64 100, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  store i64 %i.aw, ptr %0, align 8
  %.sroa.283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ay, ptr %.sroa.283.0..sroa_idx, align 8
  br label %bb.dw

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !11937
  call void @"_ZN4anki9scheduler46_$LT$impl$u20$anki..collection..Collection$GT$14scheduler_info17h26ff3f0e4f485b52E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ak, ptr noalias noundef nonnull align 8 dereferenceable(728) %1), !noalias !11938
  %i.az = load i64, ptr %i.ak, align 8, !range !13, !noalias !11937, !noundef !3 ; 2 uses
  %.not.i = icmp eq i64 %i.az, -9223372036854775773
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %.sroa.6107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6107.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.12.0..sroa_idx, i64 80, i1 false)
  %.sroa.2103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ba = load <2 x i32>, ptr %.sroa.9.0..sroa_idx, align 8, !noalias !11939
  %i.bb = load <2 x i64>, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !11939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !11937
  store i64 %i.az, ptr %0, align 8
  store <2 x i64> %i.bb, ptr %.sroa.2103.0..sroa_idx, align 8
  store <2 x i32> %i.ba, ptr %.sroa.4105.0..sroa_idx, align 8
  br label %bb.dw

bb.g:                                             ; preds = %bb.e
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.9.8.copyload = load i32, ptr %.sroa.9.8..sroa_idx, align 8, !noalias !11939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !11937
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !11940
  call void @"_ZN4anki9scheduler46_$LT$impl$u20$anki..collection..Collection$GT$14scheduler_info17h26ff3f0e4f485b52E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.aj, ptr noalias noundef nonnull align 8 dereferenceable(728) %1), !noalias !11941
  %i.bc = load i64, ptr %i.aj, align 8, !range !13, !noalias !11940, !noundef !3 ; 2 uses
  %.not.i141 = icmp eq i64 %i.bc, -9223372036854775773
  br i1 %.not.i141, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.6169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.sroa.12172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %.sroa.6130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6130.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.12172.0..sroa_idx, i64 80, i1 false)
  %.sroa.2126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bd = load <2 x i32>, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !11942
  %i.be = load <2 x i64>, ptr %.sroa.6169.0..sroa_idx, align 8, !noalias !11942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !11940
  store i64 %i.bc, ptr %0, align 8
  store <2 x i64> %i.be, ptr %.sroa.2126.0..sroa_idx, align 8
  store <2 x i32> %i.bd, ptr %.sroa.4128.0..sroa_idx, align 8
  br label %bb.dw

bb.i:                                             ; preds = %bb.g
  %.sroa.8170.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.8170.8.copyload = load i64, ptr %.sroa.8170.8..sroa_idx, align 8, !noalias !11942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !11940
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  %i.bf = call noundef nonnull ptr @_ZN4rand4rngs6thread3rng17h40c84c12799071a0E()
  store ptr %i.bf, ptr %i.an, align 8
  %.not.i143 = icmp ugt i32 %.sroa.059.0.copyload, %.sroa.560.0.copyload
  br i1 %.not.i143, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = sub nuw i32 %.sroa.560.0.copyload, %.sroa.059.0.copyload ; 2 uses
  %i.bh = add i32 %i.bg, 1                        ; 3 uses
  %.not6.i = icmp eq i32 %i.bh, 0                 ; 2 uses
  br i1 %.not6.i, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = xor i32 %i.bg, -1
  %i.bj = urem i32 %i.bi, %i.bh
  br label %bb.o

"_ZN4core3ptr90drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$f32$GT$$GT$17h3ef7e3a0ace16449E.exit": ; preds = %.body, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.m ], [ %eh.lpad-body, %.body ]
  call void @llvm.experimental.noalias.scope.decl(metadata !11943)
  call void @llvm.experimental.noalias.scope.decl(metadata !11944)
  call void @llvm.experimental.noalias.scope.decl(metadata !11945)
  %i.bk = load ptr, ptr %i.an, align 8, !alias.scope !11946, !nonnull !3, !noundef !3 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !11946, !noundef !3
  %i.bm = add i64 %i.bl, -1                       ; 2 uses
  store i64 %i.bm, ptr %i.bk, align 8, !noalias !11946
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.l, label %"_ZN4core3ptr50drop_in_place$LT$rand..rngs..thread..ThreadRng$GT$17h5d8fbbd4a3b025a9E.exit"

bb.l:                                             ; preds = %"_ZN4core3ptr90drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$f32$GT$$GT$17h3ef7e3a0ace16449E.exit"
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6600156bdc3d094bE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %"_ZN4core3ptr50drop_in_place$LT$rand..rngs..thread..ThreadRng$GT$17h5d8fbbd4a3b025a9E.exit" unwind label %bb.dx

bb.m:                                             ; preds = %bb.du, %bb.n, %bb.o
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr90drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$f32$GT$$GT$17h3ef7e3a0ace16449E.exit"

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !11947
  store i8 0, ptr %i.al, align 1, !noalias !11947
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @409, i64 noundef 43, ptr noundef nonnull align 1 %i.al, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @413, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @366) #26
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.j, %bb.k
  %.sroa.9189.0222.ph = phi i32 [ %i.bj, %bb.k ], [ 0, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.bp = invoke { i64, i64 } @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hdfa479ef2fea4c88E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @50)
          to label %bb.p unwind label %bb.m       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.bq = extractvalue { i64, i64 } %i.bp, 0
  %i.br = extractvalue { i64, i64 } %i.bp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) @8, i64 32, i1 false)
  %.sroa.4132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 2 uses
  store i64 %i.bq, ptr %.sroa.4132.0..sroa_idx, align 8
  %.sroa.5133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store i64 %i.br, ptr %.sroa.5133.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17he6d4c5be612c4b9eE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, ptr noundef nonnull align 8 %i.as, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @191, i64 noundef 4)
          to label %.noexc165 unwind label %bb.q

.noexc165:                                        ; preds = %bb.p
  %i.bs = load i64, ptr %i.a, align 8, !range !13, !noundef !3
  %.not.i163 = icmp eq i64 %i.bs, -9223372036854775773
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bu = load i8, ptr %i.bt, align 8, !range !12
  br i1 %.not.i163, label %bb.r, label %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i"

"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i": ; preds = %.noexc165
  invoke void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.a)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i", %bb.p, %bb.dm, %.noexc27.i.i, %.noexc23.i.i, %.noexc155, %.noexc154, %"_ZN4anki10collection10timestamps46_$LT$impl$u20$anki..collection..Collection$GT$12set_modified17h08baae225b4b9c68E.exit.i.i.i", %._crit_edge.i.i.i, %"_ZN4core3ptr37drop_in_place$LT$anki..card..Card$GT$17h9d84b6a977b209cdE.exit.i.i.i", %.noexc13.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hffb79e6d504392bfE.exit.thread.i.i.i", %.noexc148, %"_ZN4anki4undo46_$LT$impl$u20$anki..collection..Collection$GT$24begin_undoable_operation17h8ccf3b6ccc47ce4bE.exit.i.i"
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body208.i.i.i, %.body.i15.i.i, %bb.da, %.body.i28.i.i, %bb.ds, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.bv, %bb.q ], [ %i.ly, %bb.da ], [ %eh.lpad-body.i29.i.i, %.body.i28.i.i ], [ %lpad.thr_comm.split-lp.i.i, %bb.ds ], [ %eh.lpad-body.i16.i.i, %.body.i15.i.i ], [ %.pn193.i.i.i, %.body208.i.i.i ]
  invoke void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9561472e4abe2626E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.am)
          to label %"_ZN4core3ptr90drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$f32$GT$$GT$17h3ef7e3a0ace16449E.exit" unwind label %bb.dx

bb.r:                                             ; preds = %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i", %.noexc165
  %.sroa.0.0.i164 = phi i8 [ %i.bu, %.noexc165 ], [ 2, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %spec.select.i.i = trunc i8 %.sroa.0.0.i164 to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !11948)
  call void @llvm.experimental.noalias.scope.decl(metadata !11949)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !11950
  store i64 -9223372036854775783, ptr %i.ai, align 8, !noalias !11951
  call void @llvm.experimental.noalias.scope.decl(metadata !11952)
  call void @llvm.experimental.noalias.scope.decl(metadata !11953)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i)
  %i.bw = load i64, ptr %i.as, align 8, !alias.scope !11954, !noundef !3 ; 2 uses
  %i.bx = icmp ult i64 %i.bw, 9223372036854775807
  br i1 %i.bx, label %bb.t, label %bb.s, !prof !5

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN4core4cell30panic_already_mutably_borrowed17h4b83bcbcb74b1f38E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @519) #26
          to label %.noexc.i.i unwind label %bb.ds, !noalias !11955

.noexc.i.i:                                       ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.by = add nuw nsw i64 %i.bw, 1
  store i64 %i.by, ptr %i.as, align 8, !alias.scope !11954
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !11954, !noundef !3
  %i.cb = call noundef i32 @sqlite3_get_autocommit(ptr noundef %i.ca) #29, !noalias !11955
  %.not184.i.i = icmp eq i32 %i.cb, 0
  %i.cc = load i64, ptr %i.as, align 8, !alias.scope !11954, !noundef !3
  %i.cd = add i64 %i.cc, -1
  store i64 %i.cd, ptr %i.as, align 8, !alias.scope !11954
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !11956
  invoke void @_ZN4anki7storage6sqlite13SqliteStorage14begin_rust_trx17ha28b49405954732cE(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ah, ptr noundef nonnull align 8 %i.as)
          to label %bb.u unwind label %bb.ds, !noalias !11955

bb.u:                                             ; preds = %bb.t
  %i.ce = load i64, ptr %i.ah, align 8, !range !13, !noalias !11956, !noundef !3
  %.not6.i.i = icmp eq i64 %i.ce, -9223372036854775773
  br i1 %.not6.i.i, label %"_ZN4anki4undo46_$LT$impl$u20$anki..collection..Collection$GT$24begin_undoable_operation17h8ccf3b6ccc47ce4bE.exit.i.i", label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.ah, i64 112, i1 false), !noalias !11957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !11956
  br label %bb.du

"_ZN4anki4undo46_$LT$impl$u20$anki..collection..Collection$GT$24begin_undoable_operation17h8ccf3b6ccc47ce4bE.exit.i.i": ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !11956
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !11956
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !noalias !11958
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  invoke void @_ZN4anki4undo11UndoManager10begin_step17hf9d4665951b3d043E(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.cf, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ag)
          to label %.noexc148 unwind label %bb.q

.noexc148:                                        ; preds = %"_ZN4anki4undo46_$LT$impl$u20$anki..collection..Collection$GT$24begin_undoable_operation17h8ccf3b6ccc47ce4bE.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !11956
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.28.sroa.12.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.757.i.sroa.10.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.463.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !11959
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !11959
  store i8 0, ptr %i.q, align 1, !noalias !11960
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !11960
  store ptr %1, ptr %i.p, align 8, !noalias !11960
  %i.cg = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %2, ptr %i.cg, align 8, !noalias !11960
  %i.ch = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %3, ptr %i.ch, align 8, !noalias !11960
  %i.ci = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.q, ptr %i.ci, align 8, !noalias !11960
  invoke void @"_ZN4anki7storage4card54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$25with_searched_cards_table17h1875a5d254e9f879E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ae, ptr noundef nonnull align 8 %i.as, i1 noundef zeroext false, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.p)
          to label %.noexc149 unwind label %bb.q

.noexc149:                                        ; preds = %.noexc148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !11960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !11959
  %i.cj = load i64, ptr %i.ae, align 8, !range !13, !noalias !11959, !noundef !3 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.cj, -9223372036854775773
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.095.0.copyload.i.i.i = load i64, ptr %i.ck, align 8, !noalias !11959 ; 4 uses
  %.sroa.496.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.496.0.copyload.i.i.i = load ptr, ptr %.sroa.496.0..sroa_idx.i.i.i, align 8, !noalias !11959 ; 5 uses
  %.sroa.597.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.597.0.copyload.i.i.i = load i64, ptr %.sroa.597.0..sroa_idx.i.i.i, align 8, !noalias !11959 ; 4 uses
  br i1 %.not.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.noexc149
  %.sroa.7107.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %.sroa.28.sroa.0.0.copyload110.i.i = load i64, ptr %.sroa.7107.0..sroa_idx.i.i.i, align 8, !noalias !11961
  %.sroa.28.sroa.12.0..sroa.7107.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.28.sroa.12.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.28.sroa.12.0..sroa.7107.0..sroa_idx.i.sroa_idx.i.i, i64 72, i1 false), !noalias !11961
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !11959
  %.sroa.14.sroa.0.0.extract.trunc59.i.i = trunc i64 %.sroa.095.0.copyload.i.i.i to i8
  %.sroa.14.sroa.12.0.extract.shift67.i.i = lshr i64 %.sroa.095.0.copyload.i.i.i, 8
  %.sroa.14.sroa.12.0.extract.trunc68.i.i = trunc nuw i64 %.sroa.14.sroa.12.0.extract.shift67.i.i to i56
  %i.cl = insertelement <2 x i64> poison, i64 %.sroa.597.0.copyload.i.i.i, i64 0
  %i.cm = insertelement <2 x i64> %i.cl, i64 %.sroa.28.sroa.0.0.copyload110.i.i, i64 1
  br label %.thread153.i.i

bb.x:                                             ; preds = %.noexc149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !11959
  %i.cn = icmp ult i64 %.sroa.597.0.copyload.i.i.i, 60680079189834052
  call void @llvm.assume(i1 %i.cn)
  %.idx.i.i.i = mul nuw nsw i64 %.sroa.597.0.copyload.i.i.i, 152
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.496.0.copyload.i.i.i, i64 %.idx.i.i.i
  %i.cp = icmp sgt i64 %.sroa.095.0.copyload.i.i.i, -1
  call void @llvm.assume(i1 %i.cp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !11959
  store ptr %.sroa.496.0.copyload.i.i.i, ptr %i.ad, align 8, !noalias !11959
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  store ptr %.sroa.496.0.copyload.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !11959
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %.sroa.095.0.copyload.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !11959
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  store ptr %i.co, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !11959
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8233.i.i.i)
  %i.cq = icmp eq i64 %.sroa.597.0.copyload.i.i.i, 0
  br i1 %i.cq, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hffb79e6d504392bfE.exit.thread.i.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hffb79e6d504392bfE.exit.lr.ph.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hffb79e6d504392bfE.exit.lr.ph.i.i.i": ; preds = %bb.x
  %.sroa.8233.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ac, i64 96 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ac, i64 80 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.cu = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.628.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  %.sroa.4.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %.sroa.5.0..sroa_idx7.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 120 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.631.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  %.sroa.362.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.463.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  %i.da = getelementptr inbounds nuw i8, ptr %i.x, i64 252
  %i.db = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ac, i64 64 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.de = getelementptr inbounds nuw i8, ptr %i.ac, i64 116
  %i.df = getelementptr inbounds nuw i8, ptr %i.ac, i64 148
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ac, i64 149
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ac, i64 124
  %i.di = getelementptr inbounds nuw i8, ptr %i.ac, i64 146
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ac, i64 132
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ac, i64 140
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ac, i64 150
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ac, i64 44
  %i.do = getelementptr inbounds nuw i8, ptr %i.ac, i64 104 ; 2 uses
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 108
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ac, i64 52
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ac, i64 60
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 7 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.dw = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.dx = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %i.dy = getelementptr inbounds nuw i8, ptr %i.v, i64 116
  %i.dz = getelementptr inbounds nuw i8, ptr %i.v, i64 148
  %i.ea = getelementptr inbounds nuw i8, ptr %i.v, i64 149
  %i.eb = getelementptr inbounds nuw i8, ptr %i.v, i64 124
  %i.ec = getelementptr inbounds nuw i8, ptr %i.v, i64 132
  %i.ed = getelementptr inbounds nuw i8, ptr %i.v, i64 140
  %i.ee = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %i.ef = getelementptr inbounds nuw i8, ptr %i.v, i64 150
  %i.eg = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.eh = getelementptr inbounds nuw i8, ptr %i.v, i64 44
  %i.ei = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  %.sroa.53.0..sroa_idx4.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 108
  %i.ej = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.ek = getelementptr inbounds nuw i8, ptr %i.v, i64 52
  %i.el = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.em = getelementptr inbounds nuw i8, ptr %i.v, i64 60
  %i.en = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.52.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 112
  %i.eo = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.eq = getelementptr inbounds nuw i8, ptr %i.m, i64 36
  %i.er = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.es = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.et = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  %i.eu = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.ev = getelementptr inbounds nuw i8, ptr %i.m, i64 37
  %.sroa.757.i.sroa.6.0..sroa.4.0..sroa_idx6.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.757.i.sroa.7.0..sroa.4.0..sroa_idx6.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  %.sroa.757.i.sroa.8.0..sroa.4.0..sroa_idx6.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 2 uses
  %.sroa.757.i.sroa.10.0..sroa.4.0..sroa_idx6.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 2 uses
  %.sroa.757.i.sroa.8.0..sroa.362.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.sroa.757.i.sroa.10.0..sroa.362.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.ew = zext i32 %i.bh to i64
  %i.ex = trunc i32 %.sroa.661.0.copyload to i1
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hffb79e6d504392bfE.exit.i.i.i"

.body208.i.i.i:                                   ; preds = %.loopexit.split-lp294.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cm, %bb.bp, %.body219.i.i.i
  %.pn193.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %.body219.i.i.i ], [ %i.it, %bb.bp ], [ %i.kq, %bb.cm ], [ %lpad.loopexit.split-lp420, %.loopexit.split-lp294.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb8a16110e9c34aebE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %.body unwind label %bb.bn, !noalias !11962

end_hunk_9
begin_hunk_10_@"_ZN4anki9scheduler7service91_$LT$impl$u20$anki..services..SchedulerService$u20$for$u20$anki..collection..Collection$GT$17upgrade_scheduler17hcd43bc12b1fe972dE":bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki9scheduler7service91_$LT$impl$u20$anki..services..SchedulerService$u20$for$u20$anki..collection..Collection$GT$18sched_timing_today17hb7b6ec7534502174E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) initializes((0, 20)) %0, ptr noalias noundef align 8 dereferenceable(728) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 7 uses
  %i.b = alloca [112 x i8], align 8               ; 6 uses
  %i.c = alloca [112 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12379
  call void @"_ZN4anki9scheduler46_$LT$impl$u20$anki..collection..Collection$GT$14scheduler_info17h26ff3f0e4f485b52E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(728) %1), !noalias !12380
  %i.d = load i64, ptr %i.c, align 8, !range !13, !noalias !12379, !noundef !3 ; 2 uses
  %.not.i = icmp eq i64 %i.d, -9223372036854775773
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.638.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.15.0..sroa_idx, i64 80, i1 false)
  %.sroa.2.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load <2 x i32>, ptr %.sroa.11.0..sroa_idx, align 8, !noalias !12381
  %i.f = load <2 x i64>, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !12381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12379
  store i64 %i.d, ptr %0, align 8
  store <2 x i64> %i.f, ptr %.sroa.2.0..sroa_idx34, align 8
  store <2 x i32> %i.e, ptr %.sroa.436.0..sroa_idx, align 8
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %.sroa.942.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.942.8.copyload = load i64, ptr %.sroa.942.8..sroa_idx, align 8, !noalias !12381
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.11.8.copyload = load i32, ptr %.sroa.11.8..sroa_idx, align 8, !noalias !12381 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12379
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12382
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 600
  call void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17h45436d312cdfd3c3E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, ptr noundef nonnull align 8 %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @219, i64 noundef 12), !noalias !12383
  %i.h = load i64, ptr %i.a, align 8, !range !13, !noalias !12382, !noundef !3
  %.not.i.i.i = icmp eq i64 %i.h, -9223372036854775773
  br i1 %.not.i.i.i, label %bb.d, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.c
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.a), !noalias !12383
  br label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$21get_last_unburied_day17h30034d05dd5624a5E.exit.i"

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.j = load i32, ptr %i.i, align 4, !noalias !12382
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load i32, ptr %i.k, align 8, !range !16, !noalias !12382
  %i.m = trunc nuw i32 %i.l to i1
  %i.n = select i1 %i.m, i32 %i.j, i32 0
  br label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$21get_last_unburied_day17h30034d05dd5624a5E.exit.i"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$21get_last_unburied_day17h30034d05dd5624a5E.exit.i": ; preds = %bb.d, %.thread.i.i.i
  %.sroa.0.07.i.i.i = phi i32 [ 0, %.thread.i.i.i ], [ %i.n, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12382
  %i.o = icmp ult i32 %.sroa.0.07.i.i.i, %.sroa.11.8.copyload
  %i.p = add i32 %.sroa.11.8.copyload, 7
  %i.q = icmp ult i32 %i.p, %.sroa.0.07.i.i.i
  %or.cond.i = or i1 %i.o, %i.q
  br i1 %or.cond.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$21get_last_unburied_day17h30034d05dd5624a5E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12382
  call fastcc void @"_ZN4anki9scheduler16bury_and_suspend46_$LT$impl$u20$anki..collection..Collection$GT$22unbury_on_day_rollover17h312969d7e4e72f49E"(ptr noalias noundef align 8 captures(address) dereferenceable(112) %i.b, ptr noalias noundef align 8 dereferenceable(728) %1, i32 noundef %.sroa.11.8.copyload), !noalias !12383
  %i.r = load i64, ptr %i.b, align 8, !range !13, !noalias !12382, !noundef !3 ; 2 uses
  %.not.i40 = icmp eq i64 %i.r, -9223372036854775773
  br i1 %.not.i40, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12382
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %.sroa.7.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.253.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7.0..sroa_idx45, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12382
  store i64 %i.r, ptr %0, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$21get_last_unburied_day17h30034d05dd5624a5E.exit.i"
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.942.8.copyload, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.11.8.copyload, ptr %i.t, align 8
  store i64 -9223372036854775773, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.g, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki9scheduler7service91_$LT$impl$u20$anki..services..SchedulerService$u20$for$u20$anki..collection..Collection$GT$19compute_fsrs_params17h90433002f97d212bE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef align 8 dereferenceable(728) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = load i64, ptr %i.f, align 8, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.j = load i32, ptr %i.i, align 8, !noundef !3
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.m = load i8, ptr %i.l, align 4, !range !6, !noundef !3
  store ptr %i.c, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.e, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.g, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i32 1, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.h, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.k, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 %i.m, ptr %i.t, align 8
  invoke void @"_ZN4anki9scheduler4fsrs6params46_$LT$impl$u20$anki..collection..Collection$GT$14compute_params17hf00d161226adb890E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 dereferenceable(728) %1, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(56) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr68drop_in_place$LT$anki_proto..scheduler..ComputeFsrsParamsRequest$GT$17h84756bdbe5588663E"(ptr noalias noundef align 8 dereferenceable(64) %2) #27
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call fastcc void @"_ZN4core3ptr68drop_in_place$LT$anki_proto..scheduler..ComputeFsrsParamsRequest$GT$17h84756bdbe5588663E"(ptr noalias noundef align 8 dereferenceable(64) %2)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.u
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki9scheduler7service91_$LT$impl$u20$anki..services..SchedulerService$u20$for$u20$anki..collection..Collection$GT$19empty_filtered_deck17h32dfe36069fe84c8E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef align 8 dereferenceable(728) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [112 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @"_ZN4anki9scheduler8filtered46_$LT$impl$u20$anki..collection..Collection$GT$19empty_filtered_deck17he52dcf75295e98abE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(728) %1, i64 noundef %2)
  %i.c = load i64, ptr %i.b, align 8, !range !13, !noundef !3
  %.not = icmp eq i64 %i.c, -9223372036854775773
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.b, i64 112, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @"_ZN4anki7backend3ops126_$LT$impl$u20$core..convert..From$LT$anki..ops..OpOutput$LT$$LP$$RP$$GT$$GT$$u20$for$u20$anki_proto..collection..OpChanges$GT$4from17ha48c66c8ec224a44E"(ptr noalias noundef nonnull sret([12 x i8]) align 1 captures(address) dereferenceable(12) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.a)
  store i64 -9223372036854775773, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki9scheduler7service91_$LT$impl$u20$anki..services..SchedulerService$u20$for$u20$anki..collection..Collection$GT$19reposition_defaults17hb5694934899c0f67E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) initializes((0, 10)) %0, ptr noalias noundef align 8 dereferenceable(728) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 6 uses
  %i.b = alloca [112 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 2 uses
  call void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17he6d4c5be612c4b9eE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.b, ptr noundef nonnull align 8 %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @185, i64 noundef 21)
  %i.d = load i64, ptr %i.b, align 8, !range !13, !noundef !3
  %.not.i.i = icmp eq i64 %i.d, -9223372036854775773
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i8, ptr %i.e, align 8, !range !12
  br i1 %.not.i.i, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit.i", label %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i.i"

"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i.i": ; preds = %bb.a
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.b)
  br label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit.i"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit.i": ; preds = %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i.i", %bb.a
  %.sroa.0.0.i.i = phi i8 [ 2, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i.i" ], [ %i.f, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17he6d4c5be612c4b9eE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, ptr noundef nonnull align 8 %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @187, i64 noundef 28)
  %i.g = load i64, ptr %i.a, align 8, !range !13, !noundef !3
  %.not.i2.i = icmp eq i64 %i.g, -9223372036854775773
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !12
  br i1 %.not.i2.i, label %"_ZN4anki9scheduler3new46_$LT$impl$u20$anki..collection..Collection$GT$19reposition_defaults17hab1a639d3149eac4E.exit", label %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i3.i"

"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i3.i": ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit.i"
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.a)
  br label %"_ZN4anki9scheduler3new46_$LT$impl$u20$anki..collection..Collection$GT$19reposition_defaults17hab1a639d3149eac4E.exit"

"_ZN4anki9scheduler3new46_$LT$impl$u20$anki..collection..Collection$GT$19reposition_defaults17hab1a639d3149eac4E.exit": ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit.i", %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i3.i"
  %.sroa.0.0.i4.i = phi i8 [ 2, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i3.i" ], [ %i.i, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = and i8 %.sroa.0.0.i.i, 1
  store i8 %i.k, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.m = and i8 %.sroa.0.0.i4.i, 1
  store i8 %i.m, ptr %i.l, align 1
  store i64 -9223372036854775773, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki9scheduler7service91_$LT$impl$u20$anki..services..SchedulerService$u20$for$u20$anki..collection..Collection$GT$20compute_memory_state17h04e982bca2b06f94E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef align 8 dereferenceable(728) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  tail call void @"_ZN4anki9scheduler4fsrs12memory_state46_$LT$impl$u20$anki..collection..Collection$GT$20compute_memory_state17hc1ef0629ee5f8bfcE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 dereferenceable(728) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki9scheduler7service91_$LT$impl$u20$anki..services..SchedulerService$u20$for$u20$anki..collection..Collection$GT$20describe_next_states17hdb6062f2dc2575e0E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) initializes((0, 32)) %0, ptr noalias noundef align 8 dereferenceable(728) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(440) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 6 uses
  %i.b = alloca [300 x i8], align 4               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @"_ZN4anki9scheduler7service6states138_$LT$impl$u20$core..convert..From$LT$anki_proto..scheduler..SchedulingStates$GT$$u20$for$u20$anki..scheduler..states..SchedulingStates$GT$4from17h59baed0c3fba4a4aE"(ptr noalias noundef nonnull sret([300 x i8]) align 4 captures(address) dereferenceable(300) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(440) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN4anki9scheduler9answering46_$LT$impl$u20$anki..collection..Collection$GT$20describe_next_states17ha92b83ed7483d26dE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(728) %1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(300) %i.b)
  %i.c = load i64, ptr %i.a, align 8, !range !13, !noundef !3
  %.not = icmp eq i64 %i.c, -9223372036854775773
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.a, i64 112, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store i64 -9223372036854775773, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki9scheduler7service91_$LT$impl$u20$anki..services..SchedulerService$u20$for$u20$anki..collection..Collection$GT$20simulate_fsrs_review17h28c37fb72efcc15bE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef align 8 dereferenceable(728) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(128) %2) unnamed_addr #2 {
bb.a:
  tail call void @"_ZN4anki9scheduler4fsrs9simulator46_$LT$impl$u20$anki..collection..Collection$GT$15simulate_review17h33b80d6a2dee8679E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 dereferenceable(728) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(128) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki9scheduler7service91_$LT$impl$u20$anki..services..SchedulerService$u20$for$u20$anki..collection..Collection$GT$21bury_or_suspend_cards17hf74f6e801f8f421fE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef align 8 dereferenceable(728) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 2 uses
  %i.c = alloca [112 x i8], align 8               ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 13 uses
  %i.g = alloca [112 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.j = load i32, ptr %i.i, align 8, !noundef !3 ; 2 uses
  %switch = icmp ult i32 %i.j, 3
  %.sroa.0.0 = select i1 %switch, i32 %i.j, i32 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !3 ; 2 uses
  %i.m = icmp ult i64 %i.l, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp eq i64 %i.l, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  invoke void @"_ZN74_$LT$alloc..vec..Vec$LT$i64$GT$$u20$as$u20$anki..types..IntoNewtypeVec$GT$12into_newtype17h3d83c4cea9afb89aE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke void @"_ZN74_$LT$alloc..vec..Vec$LT$i64$GT$$u20$as$u20$anki..types..IntoNewtypeVec$GT$12into_newtype17h939934aa7be4b5ffE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.u unwind label %bb.d

.body:                                            ; preds = %bb.ab, %bb.d, %bb.v
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.v ], [ %i.q, %bb.d ], [ %i.ao, %bb.ab ] ; 2 uses
  %.sroa.08.0 = phi i8 [ %.sroa.08.2, %bb.v ], [ %.sroa.08.1, %bb.d ], [ %.sroa.08.2, %bb.ab ] ; 2 uses
  %.sroa.06.0 = phi i8 [ %.sroa.06.2, %bb.v ], [ %.sroa.06.1, %bb.d ], [ %.sroa.06.2, %bb.ab ]
  %i.p = trunc nuw i8 %.sroa.06.0 to i1
  br i1 %i.p, label %.thread, label %bb.an

bb.d:                                             ; preds = %bb.ac, %bb.n, %bb.j, %bb.c, %bb.b
  %.sroa.08.1 = phi i8 [ 0, %bb.j ], [ %.sroa.08.2, %bb.ac ], [ 0, %bb.n ], [ 0, %bb.b ], [ 1, %bb.c ]
  %.sroa.06.1 = phi i8 [ 1, %bb.j ], [ %.sroa.06.2, %bb.ac ], [ 1, %bb.n ], [ 1, %bb.b ], [ 0, %bb.c ]
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 600
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !3, !noundef !3
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noundef !3
  invoke void @"_ZN4anki7storage4card54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$17card_ids_of_notes17h94b4cfdcefdad971E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.g, ptr noundef nonnull align 8 %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.t, i64 noundef %i.v)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$alloc..vec..Vec$LT$anki..notes..NoteId$GT$$GT$17h75c4f60f9688d415E"(ptr noalias noundef align 8 dereferenceable(24) %i.f) #27
          to label %.thread unwind label %bb.t

bb.g:                                             ; preds = %bb.e
  %i.x = load i64, ptr %i.g, align 8, !range !13, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.x, -9223372036854775773
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  br i1 %.not, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.319.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.616.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.218.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 %i.x, ptr %0, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc4bf8bb0d9a7eeffE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1fc8bcb15370a05dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.thread unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1fc8bcb15370a05dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %"_ZN4core3ptr63drop_in_place$LT$alloc..vec..Vec$LT$anki..notes..NoteId$GT$$GT$17h75c4f60f9688d415E.exit" unwind label %bb.d

bb.k:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.l:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc4bf8bb0d9a7eeffE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1fc8bcb15370a05dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.thread unwind label %bb.o

bb.n:                                             ; preds = %bb.l
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1fc8bcb15370a05dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %"_ZN4core3ptr63drop_in_place$LT$alloc..vec..Vec$LT$anki..notes..NoteId$GT$$GT$17h75c4f60f9688d415E.exit29" unwind label %bb.d

bb.o:                                             ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr63drop_in_place$LT$alloc..vec..Vec$LT$anki..notes..NoteId$GT$$GT$17h75c4f60f9688d415E.exit29": ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.p

bb.p:                                             ; preds = %bb.u, %"_ZN4core3ptr63drop_in_place$LT$alloc..vec..Vec$LT$anki..notes..NoteId$GT$$GT$17h75c4f60f9688d415E.exit29"
  %.sroa.08.2 = phi i8 [ 0, %"_ZN4core3ptr63drop_in_place$LT$alloc..vec..Vec$LT$anki..notes..NoteId$GT$$GT$17h75c4f60f9688d415E.exit29" ], [ 1, %bb.u ] ; 5 uses
  %.sroa.06.2 = phi i8 [ 1, %"_ZN4core3ptr63drop_in_place$LT$alloc..vec..Vec$LT$anki..notes..NoteId$GT$$GT$17h75c4f60f9688d415E.exit29" ], [ 0, %bb.u ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !3, !noundef !3
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !noundef !3
  invoke void @"_ZN4anki9scheduler16bury_and_suspend46_$LT$impl$u20$anki..collection..Collection$GT$21bury_or_suspend_cards17h5402843a39390744E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(728) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ae, i64 noundef %i.ag, i32 noundef %.sroa.0.0)
          to label %bb.w unwind label %bb.v

"_ZN4core3ptr63drop_in_place$LT$alloc..vec..Vec$LT$anki..notes..NoteId$GT$$GT$17h75c4f60f9688d415E.exit": ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
end_hunk_10
begin_hunk_11_@"_ZN4anki9scheduler8filtered46_$LT$impl$u20$anki..collection..Collection$GT$27get_or_create_filtered_deck17h30dc658fcba72be2E":bb.a
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %.sroa.9.0.copyload, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx2.sroa_idx, align 8
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx2.sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6.sroa.8, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.8)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bh, %bb.bc
  call void @"_ZN116_$LT$anki..scheduler..filtered..FilteredDeckForUpdate$u20$as$u20$core..convert..TryFrom$LT$anki..decks..Deck$GT$$GT$8try_from17h874986b94fd0d6b8E"(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(192) %i.u)
  br label %bb.bi

bb.be:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.df, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.612, i64 112, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.bj

bb.bf:                                            ; preds = %bb.ba
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  %.sroa.814.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.814.0..sroa_idx15, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.620.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store i64 %i.db, ptr %i.v, align 8
  %.sroa.612.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.612.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.612, i64 112, i1 false)
  call void @"_ZN84_$LT$core..option..Option$LT$T$GT$$u20$as$u20$anki..error..not_found..OrNotFound$GT$12or_not_found17hae19c4bba29e04dbE"(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(address) dereferenceable(192) %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(192) %i.v, i64 noundef %2)
  %i.dg = load i64, ptr %i.x, align 8, !range !8, !noundef !3 ; 2 uses
  %i.dh = icmp eq i64 %i.dg, -9223372036854775808
  %i.di = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.66, ptr noundef nonnull align 8 dereferenceable(112) %i.di, i64 112, i1 false)
  br i1 %i.dh, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.dj, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.66, i64 112, i1 false)
  store i64 1, ptr %0, align 8
  br label %bb.bj

bb.bh:                                            ; preds = %bb.bf
  %.sroa.623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  %.sroa.88.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.u, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.88.0..sroa_idx9, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.623.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  store i64 %i.dg, ptr %i.u, align 8
  %.sroa.66.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.66.0..sroa_idx7, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.66, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.612)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66)
  br label %bb.bd

bb.bi:                                            ; preds = %bb.bb, %bb.bj, %bb.bd
  ret void

bb.bj:                                            ; preds = %bb.bg, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.612)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66)
  br label %bb.bi
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4anki9scheduler8filtered46_$LT$impl$u20$anki..collection..Collection$GT$27rebuild_filtered_deck_inner17h7d1ce1adad215be5E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 dereferenceable(728) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %2, i32 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 6 uses
  %i.b = alloca [152 x i8], align 8               ; 4 uses
  %i.c = alloca [112 x i8], align 8               ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [152 x i8], align 8               ; 4 uses
  %i.i = alloca [112 x i8], align 8               ; 9 uses
  %i.j = alloca [152 x i8], align 8               ; 27 uses
  %i.k = alloca [152 x i8], align 8               ; 28 uses
  %.sroa.886.i.i = alloca [144 x i8], align 8     ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 10 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [112 x i8], align 8               ; 9 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 11 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 12 uses
  %.sroa.14.i = alloca [80 x i8], align 8         ; 6 uses
  %i.w = alloca [112 x i8], align 8               ; 7 uses
  %i.x = alloca [112 x i8], align 8               ; 7 uses
  %i.y = alloca [112 x i8], align 8               ; 6 uses
  %i.z = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  %.sroa.616 = alloca [24 x i8], align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 2 uses
  call void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17h55af1610e70099a1E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.x, ptr noundef nonnull align 8 %i.aa, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @223, i64 noundef 8)
  %i.ab = load i64, ptr %i.x, align 8, !range !13, !noundef !3
  %.not.i.i = icmp eq i64 %i.ab, -9223372036854775773
  br i1 %.not.i.i, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.i", label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.thread.i"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.thread.i": ; preds = %bb.a
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$17scheduler_version17hb427acb225cacf9aE.exit.thread"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.i": ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = load i8, ptr %i.ac, align 8, !range !12
  %.fr.i = freeze i8 %i.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %switch = icmp ult i8 %.fr.i, 2
  br i1 %switch, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$17scheduler_version17hb427acb225cacf9aE.exit.thread", label %bb.b

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$17scheduler_version17hb427acb225cacf9aE.exit.thread": ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.i", %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.thread.i"
  store i64 -9223372036854775776, ptr %0, align 8
  br label %"_ZN4anki9scheduler8filtered46_$LT$impl$u20$anki..collection..Collection$GT$19build_filtered_deck17h9c52638c3ba6cb2eE.exit"

bb.b:                                             ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17hbcbc08066fc67887E.exit.i"
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.af = load i64, ptr %i.ae, align 8, !range !8, !noundef !3
  %i.ag = icmp eq i64 %i.af, -9223372036854775808
  br i1 %i.ag, label %bb.c, label %bb.d

"_ZN4anki9scheduler8filtered46_$LT$impl$u20$anki..collection..Collection$GT$19build_filtered_deck17h9c52638c3ba6cb2eE.exit": ; preds = %bb.au, %bb.j, %bb.e, %bb.g, %bb.d, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$17scheduler_version17hb427acb225cacf9aE.exit.thread"
  ret void

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.616)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !13052
  call void @"_ZN4anki9scheduler46_$LT$impl$u20$anki..collection..Collection$GT$14scheduler_info17h26ff3f0e4f485b52E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(728) %1), !noalias !13053
  %i.ah = load i64, ptr %i.w, align 8, !range !13, !noalias !13052, !noundef !3 ; 2 uses
  %.not.i44 = icmp eq i64 %i.ah, -9223372036854775773
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !noalias !13054
  br i1 %.not.i44, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  store i64 -9223372036854775792, ptr %0, align 8
  %.sroa.232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 3 to ptr), ptr %.sroa.232.0..sroa_idx, align 8
  br label %"_ZN4anki9scheduler8filtered46_$LT$impl$u20$anki..collection..Collection$GT$19build_filtered_deck17h9c52638c3ba6cb2eE.exit"

bb.e:                                             ; preds = %bb.c
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %.sroa.341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.341.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.9.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !13052
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.616, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %.sroa.240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.240.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.616, i64 24, i1 false)
  store i64 %i.ah, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.616)
  br label %"_ZN4anki9scheduler8filtered46_$LT$impl$u20$anki..collection..Collection$GT$19build_filtered_deck17h9c52638c3ba6cb2eE.exit"

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !13052
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.616, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.616, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.616)
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.am = load i64, ptr %i.al, align 8, !noundef !3 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %i.am, ptr %i.an, align 8
  store ptr %i.aj, ptr %i.z, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store i32 %3, ptr %i.ao, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call fastcc void @"_ZN4anki9scheduler8filtered46_$LT$impl$u20$anki..collection..Collection$GT$33return_all_cards_in_filtered_deck17h36e6358e040d5486E"(ptr noalias noundef align 8 captures(address) dereferenceable(112) %i.y, ptr noalias noundef align 8 dereferenceable(728) %1, i64 -9223372036854775808, i64 %i.am)
  %i.ap = load i64, ptr %i.y, align 8, !range !13, !noundef !3
  %.not42 = icmp eq i64 %i.ap, -9223372036854775773
  br i1 %.not42, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.y, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %"_ZN4anki9scheduler8filtered46_$LT$impl$u20$anki..collection..Collection$GT$19build_filtered_deck17h9c52638c3ba6cb2eE.exit"

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.experimental.noalias.scope.decl(metadata !13055)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13056
  call void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17he6d4c5be612c4b9eE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, ptr noundef nonnull align 8 %i.aa, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @191, i64 noundef 4), !noalias !13057
  %i.aq = load i64, ptr %i.a, align 8, !range !13, !noalias !13056, !noundef !3
  %.not.i20.i = icmp eq i64 %i.aq, -9223372036854775773
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.as = load i8, ptr %i.ar, align 8, !range !12, !noalias !13056
  br i1 %.not.i20.i, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit.i", label %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i.i"

"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i.i": ; preds = %bb.h
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.a), !noalias !13055
  br label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit.i"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit.i": ; preds = %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i.i", %bb.h
  %.sroa.0.0.i.i = phi i8 [ 2, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i.i" ], [ %i.as, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13056
  %spec.select.i.i.i = trunc i8 %.sroa.0.0.i.i to i1
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.au = load ptr, ptr %i.at, align 8, !noalias !13055, !nonnull !3, !noundef !3 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.aw = load i64, ptr %i.av, align 8, !noalias !13055, !noundef !3
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.au, i64 %i.aw
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.479.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.580.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.681.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.782.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sroa.489.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.590.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.424.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.0..sroa_idx75.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.6.0..sroa_idx76.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.7.0..sroa_idx77.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.526.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.627.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %.sroa.886.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.bg = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 116
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 148
  %i.bj = getelementptr inbounds nuw i8, ptr %i.k, i64 149
  %i.bk = getelementptr inbounds nuw i8, ptr %i.k, i64 132
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 140
  %i.bm = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.bn = getelementptr inbounds nuw i8, ptr %i.k, i64 150
  %i.bo = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.bp = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.bq = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 108
  %i.br = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.bs = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  %i.bt = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.bu = getelementptr inbounds nuw i8, ptr %i.k, i64 60
  %i.bv = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.by = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.bz = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  %i.ca = getelementptr inbounds nuw i8, ptr %i.j, i64 116
  %i.cb = getelementptr inbounds nuw i8, ptr %i.j, i64 148
  %i.cc = getelementptr inbounds nuw i8, ptr %i.j, i64 149
  %i.cd = getelementptr inbounds nuw i8, ptr %i.j, i64 132
  %i.ce = getelementptr inbounds nuw i8, ptr %i.j, i64 140
  %i.cf = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.cg = getelementptr inbounds nuw i8, ptr %i.j, i64 150
  %i.ch = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.ci = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %i.cj = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %.sroa.53.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 108
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.cl = getelementptr inbounds nuw i8, ptr %i.j, i64 52
  %i.cm = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.cn = getelementptr inbounds nuw i8, ptr %i.j, i64 60
  %i.co = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.av, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit.i"
  %.sroa.0.0112.i = phi ptr [ %i.au, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit.i" ], [ %i.fn, %bb.av ] ; 6 uses
  %i.cp = phi i1 [ false, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit.i" ], [ true, %bb.av ]
  %.sroa.010.0110.i = phi i32 [ -100000, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit.i" ], [ %.sroa.0.0.lcssa.i.i, %bb.av ] ; 3 uses
  %i.cq = icmp eq ptr %.sroa.0.0112.i, %i.ax
  br i1 %i.cq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.av, %bb.i
  %.sroa.010.0.lcssa.i = phi i32 [ %.sroa.010.0110.i, %bb.i ], [ %.sroa.0.0.lcssa.i.i, %bb.av ]
  %i.cr = add i32 %.sroa.010.0.lcssa.i, 100000
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cs, ptr %i.ct, align 8, !alias.scope !13055
  store i64 -9223372036854775773, ptr %0, align 8, !alias.scope !13055
  br label %"_ZN4anki9scheduler8filtered46_$LT$impl$u20$anki..collection..Collection$GT$19build_filtered_deck17h9c52638c3ba6cb2eE.exit"

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !13058)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !13056
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !13059
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !13059
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !13059
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.0112.i, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !alias.scope !13058, !noalias !13055, !nonnull !3, !noundef !3
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.0112.i, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !alias.scope !13058, !noalias !13055, !noundef !3
  %i.cy = call { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h24b74c5c35210385E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cv, i64 noundef %i.cx), !noalias !13060
  %i.cz = extractvalue { ptr, i64 } %i.cy, 1
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13061
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !13062
  %i.db = load i64, ptr %i.g, align 8, !range !7, !noalias !13061, !noundef !3
  %i.dc = trunc nuw i64 %i.db to i1
  %i.dd = load i64, ptr %i.ay, align 8, !range !8, !noalias !13061, !noundef !3 ; 2 uses
  br i1 %i.dc, label %bb.m, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i.i", !prof !9

bb.m:                                             ; preds = %bb.l
  %i.de = load i64, ptr %i.az, align 8, !noalias !13061
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.dd, i64 %i.de) #26, !noalias !13062
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i.i": ; preds = %bb.l
  %i.df = load ptr, ptr %i.az, align 8, !noalias !13061, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13061
  store i64 %i.dd, ptr %i.t, align 8, !noalias !13059
  store ptr %i.df, ptr %.sroa.489.0..sroa_idx.i.i, align 8, !noalias !13059
  store i64 0, ptr %.sroa.590.0..sroa_idx.i.i, align 8, !noalias !13059
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !13059
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !13059
  store ptr %.sroa.0.0112.i, ptr %i.r, align 8, !noalias !13059
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h9e12be448e379ec2E", ptr %.sroa.420.0..sroa_idx.i.i, align 8, !noalias !13059
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13063
  store ptr @375, ptr %i.f, align 8, !noalias !13064
  store i64 2, ptr %.sroa.479.0..sroa_idx.i.i, align 8, !noalias !13064
  store ptr %i.r, ptr %.sroa.580.0..sroa_idx.i.i, align 8, !noalias !13064
  store i64 1, ptr %.sroa.681.0..sroa_idx.i.i, align 8, !noalias !13064
  store ptr null, ptr %.sroa.782.0..sroa_idx.i.i, align 8, !noalias !13064
  call void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f), !noalias !13065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !13059
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !13059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !13059
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !13059
  store ptr %i.t, ptr %i.q, align 8, !noalias !13059
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h9e12be448e379ec2E", ptr %.sroa.424.0..sroa_idx.i.i, align 8, !noalias !13059
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13066
  store ptr @377, ptr %i.e, align 8, !noalias !13067
  store i64 2, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !13067
  store ptr %i.q, ptr %.sroa.5.0..sroa_idx75.i.i, align 8, !noalias !13067
  store i64 1, ptr %.sroa.6.0..sroa_idx76.i.i, align 8, !noalias !13067
  store ptr null, ptr %.sroa.7.0..sroa_idx77.i.i, align 8, !noalias !13067
  invoke void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e)
          to label %bb.q unwind label %bb.p, !noalias !13068

bb.p:                                             ; preds = %bb.o
  %i.dg = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t) #27
          to label %common.resume.i.i unwind label %bb.at, !noalias !13068

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !13059
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i" unwind label %bb.r, !noalias !13068

bb.r:                                             ; preds = %bb.q
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %common.resume.i.i unwind label %bb.s, !noalias !13068

bb.s:                                             ; preds = %bb.r
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !13068
  unreachable

common.resume.i.i:                                ; preds = %bb.aq, %bb.ab, %.body.i.i, %bb.r, %bb.p
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.fj, %bb.aq ], [ %i.dh, %bb.r ], [ %i.eq, %bb.ab ], [ %.pn49.i.i, %.body.i.i ], [ %i.dg, %bb.p ]
  resume { ptr, i32 } %common.resume.op.i.i

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i": ; preds = %bb.q
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t), !noalias !13068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !13059
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !13059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !13059
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !13059
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ak, i64 24, i1 false), !noalias !13069
  invoke void @_ZN4anki7storage4card8filtered26order_and_limit_for_search17h9843622442cdebb9E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0112.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.o, i1 noundef zeroext %spec.select.i.i.i)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !13068

.body.i.i:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body62.i.i, %bb.v
  %.pn49.i.i = phi { ptr, i32 } [ %i.dp, %bb.v ], [ %.pn47.i.i, %.body62.i.i ], [ %lpad.loopexit.split-lp278, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v) #27
          to label %common.resume.i.i unwind label %bb.at, !noalias !13068

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hffb79e6d504392bfE.exit.thread.i.i", %bb.w, %bb.t, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i", %"_ZN4core3ptr37drop_in_place$LT$anki..card..Card$GT$17h9d84b6a977b209cdE.exit.i.i"
end_hunk_11
begin_hunk_12_@"_ZN4anki9scheduler9answering46_$LT$impl$u20$anki..collection..Collection$GT$11answer_card17h61f6025c9cbc1d65E":bb.a
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.q, %bb.n
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ax, %bb.q ], [ %i.aw, %bb.n ]
  invoke fastcc void @"_ZN4core3ptr41drop_in_place$LT$anki..ops..OpChanges$GT$17hf1a0d6ba58b56271E"(ptr noalias noundef align 8 dereferenceable(32) %i.f) #27
          to label %common.resume.i.i unwind label %bb.s, !noalias !13165

"_ZN4anki9scheduler5queue46_$LT$impl$u20$anki..collection..Collection$GT$33maybe_clear_study_queues_after_op17h9053fe22c85c009eE.exit.i.i.i": ; preds = %bb.o, %.noexc.i.i.i, %.noexc16.i.i
  invoke void @"_ZN4anki5notes4undo46_$LT$impl$u20$anki..collection..Collection$GT$30maybe_coalesce_note_undo_entry17h00b3cbd1a718023bE"(ptr noalias noundef nonnull align 8 dereferenceable(728) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f)
          to label %bb.p unwind label %bb.q, !noalias !13165

bb.r:                                             ; preds = %bb.p
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr41drop_in_place$LT$anki..ops..OpChanges$GT$17hf1a0d6ba58b56271E"(ptr noalias noundef align 8 dereferenceable(32) %i.g) #27
          to label %common.resume.i.i unwind label %bb.s, !noalias !13165

bb.s:                                             ; preds = %bb.r, %.body.i.i.i
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !13165
  unreachable

"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h90e8dd4ca2cdf580E.exit.i.i": ; preds = %._crit_edge.i.i.i
  %.sroa.619.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.821.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.526.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.526.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.821.0..sroa_idx.i.i.i.i, i64 80, i1 false), !noalias !13167
  %.sroa.223.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.sroa.324.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ba = load <2 x i64>, ptr %.sroa.619.0..sroa_idx.i.i.i.i, align 8, !noalias !13159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13159
  store i64 %.sroa.010.0.copyload.i.i.i.i, ptr %.sroa.223.0..sroa_idx.i.i.i.i, align 8, !alias.scope !13158, !noalias !13157
  store <2 x i64> %i.ba, ptr %.sroa.324.0..sroa_idx.i.i.i.i, align 8, !alias.scope !13158, !noalias !13157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.223.0..sroa_idx.i.i.i.i, i64 32, i1 false), !noalias !13161
  %.sroa.10.0..sroa_idx33.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.10.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.10.0..sroa_idx33.i.i, i64 72, i1 false), !noalias !13154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13157
  br label %bb.t

bb.t:                                             ; preds = %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h90e8dd4ca2cdf580E.exit.i.i", %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h90e8dd4ca2cdf580E.exit.thread51.i.i", %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h90e8dd4ca2cdf580E.exit.thread54.i.i", %bb.f
  %.sroa.025.0.i.i = phi i64 [ %i.aa, %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h90e8dd4ca2cdf580E.exit.i.i" ], [ %i.z, %bb.f ], [ %i.am, %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h90e8dd4ca2cdf580E.exit.thread51.i.i" ], [ %.pre11.i.i.i, %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17h90e8dd4ca2cdf580E.exit.thread54.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !13154
  %.sroa.538.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !13154
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.538.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.i.i, i64 32, i1 false), !noalias !13154
  store i64 %.sroa.025.0.i.i, ptr %i.j, align 8, !noalias !13154
  %.sroa.639.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.639.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.10.i.i, i64 72, i1 false), !noalias !13154
  call void @llvm.experimental.noalias.scope.decl(metadata !13168)
  call void @llvm.experimental.noalias.scope.decl(metadata !13169)
  call void @llvm.experimental.noalias.scope.decl(metadata !13170)
  call void @llvm.experimental.noalias.scope.decl(metadata !13171)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13172
  store i64 -9223372036854775766, ptr %i.a, align 8, !noalias !13172
  invoke void @_ZN4anki4undo11UndoManager10begin_step17hf9d4665951b3d043E(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.y, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc.i19.i.i unwind label %bb.v, !noalias !13173

.noexc.i19.i.i:                                   ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13172
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$anki..scheduler..queue..CardQueues$GT$$GT$17hb0dbd01b0bc6b86bE"(ptr noalias noundef align 8 dereferenceable(224) %i.bb)
          to label %bb.w unwind label %bb.u, !noalias !13173

bb.u:                                             ; preds = %.noexc.i19.i.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775808, ptr %i.bb, align 8, !alias.scope !13174
  br label %.body.i17.i.i

bb.v:                                             ; preds = %bb.y, %bb.x, %bb.t
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i17.i.i

.body.i17.i.i:                                    ; preds = %bb.v, %bb.u
  %eh.lpad-body.i18.i.i = phi { ptr, i32 } [ %i.bd, %bb.v ], [ %i.bc, %bb.u ]
  invoke void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.j) #27
          to label %common.resume.i.i unwind label %bb.ah, !noalias !13175

bb.w:                                             ; preds = %.noexc.i19.i.i
  store i64 -9223372036854775808, ptr %i.bb, align 8, !alias.scope !13174
  br i1 %.not59.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13176
  invoke void @_ZN4anki7storage6sqlite13SqliteStorage17rollback_rust_trx17h69ddae71cbf0d28dE(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.b, ptr noundef nonnull align 8 %i.o)
          to label %bb.z unwind label %bb.v, !noalias !13173

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13176
  invoke void @_ZN4anki7storage6sqlite13SqliteStorage12rollback_trx17h6e55060f32d2472bE(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.c, ptr noundef nonnull align 8 %i.o)
          to label %bb.ae unwind label %bb.v, !noalias !13173

bb.z:                                             ; preds = %bb.x
  %i.be = load i64, ptr %i.b, align 8, !range !13, !noalias !13176, !noundef !3
  %.not.i20.i.i = icmp eq i64 %i.be, -9223372036854775773
  br i1 %.not.i20.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.b, i64 112, i1 false), !noalias !13177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13176
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13176
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ag, %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.j, i64 112, i1 false), !alias.scope !13178, !noalias !13155
  br label %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17hd8bb73bf4e30d048E.exit.i.i"

bb.ad:                                            ; preds = %bb.af, %bb.aa
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.j), !noalias !13153
  br label %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17hd8bb73bf4e30d048E.exit.i.i"

bb.ae:                                            ; preds = %bb.y
  %i.bf = load i64, ptr %i.c, align 8, !range !13, !noalias !13176, !noundef !3
  %.not1.i.i.i = icmp eq i64 %i.bf, -9223372036854775773
  br i1 %.not1.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.c, i64 112, i1 false), !noalias !13177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13176
  br label %bb.ad

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13176
  br label %bb.ac

bb.ah:                                            ; preds = %.body.i17.i.i
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !13175
  unreachable

bb.ai:                                            ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !13161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !13154
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.i.i, i64 32, i1 false), !noalias !13155
  store i64 -9223372036854775773, ptr %0, align 8, !alias.scope !13179
  br label %bb.aj

bb.aj:                                            ; preds = %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17hd8bb73bf4e30d048E.exit.i.i", %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  br label %"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$8transact17h62148b00960b49c4E.exit"

"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner28_$u7b$$u7b$closure$u7d$$u7d$17hd8bb73bf4e30d048E.exit.i.i": ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !13154
  br label %bb.aj

bb.ak:                                            ; preds = %bb.c, %bb.b
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr62drop_in_place$LT$core..option..Option$LT$anki..ops..Op$GT$$GT$17hf4b9532f55bebffbE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n) #27
          to label %common.resume.i.i unwind label %bb.al, !noalias !13180

bb.al:                                            ; preds = %bb.ak
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !13180
  unreachable

"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$8transact17h62148b00960b49c4E.exit": ; preds = %bb.e, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !13148
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN4anki9scheduler9answering46_$LT$impl$u20$anki..collection..Collection$GT$12fsrs_enabled17h86991049afb66a51E"(ptr noundef nonnull align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.c = load i64, ptr %i.b, align 8, !range !8, !noundef !3
  %.not = icmp eq i64 %i.c, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.e = load i8, ptr %i.d, align 4, !range !6, !noundef !3
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 600
  call void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17he6d4c5be612c4b9eE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, ptr noundef nonnull align 8 %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @191, i64 noundef 4)
  %i.g = load i64, ptr %i.a, align 8, !range !13, !noundef !3
  %.not.i = icmp eq i64 %i.g, -9223372036854775773
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !12
  br i1 %.not.i, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit", label %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i"

"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i": ; preds = %bb.c
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.a)
  br label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit": ; preds = %bb.c, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i"
  %.sroa.0.0.i = phi i8 [ 2, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i" ], [ %i.i, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit", %bb.b
  %.sroa.0.0.in = phi i8 [ %i.e, %bb.b ], [ %.sroa.0.0.i, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit" ]
  %.sroa.0.0 = trunc i8 %.sroa.0.0.in to i1
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4anki9scheduler9answering46_$LT$impl$u20$anki..collection..Collection$GT$13add_leech_tag17h76791041f58e6014E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(112) initializes((0, 8)) %0, ptr noalias noundef nonnull align 8 dereferenceable(728) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [112 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %2, ptr %i.a, align 8
  call fastcc void @"_ZN4anki4tags7bulkadd46_$LT$impl$u20$anki..collection..Collection$GT$23add_tags_to_notes_inner17h30a396e5dcb5e8aaE"(ptr noalias noundef align 8 captures(address) dereferenceable(112) %i.b, ptr noalias noundef align 8 dereferenceable(728) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.a, i64 noundef 1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @389, i64 noundef 5)
  %i.c = load i64, ptr %i.b, align 8, !range !13, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.c, -9223372036854775773
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.58.0.copyload = load i64, ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.312.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.69.0..sroa_idx, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.58.0.copyload, ptr %.sroa.211.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4anki9scheduler9answering46_$LT$impl$u20$anki..collection..Collection$GT$17answer_card_inner17ha71794b44c3b337aE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 dereferenceable(728) %1, ptr noalias noundef nonnull align 8 dereferenceable(168) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [60 x i8], align 4                ; 4 uses
  %i.c = alloca [112 x i8], align 8               ; 6 uses
  %i.d = alloca [112 x i8], align 8               ; 6 uses
  %i.e = alloca [60 x i8], align 4                ; 4 uses
  %i.f = alloca [152 x i8], align 8               ; 4 uses
  %i.g = alloca [112 x i8], align 8               ; 6 uses
  %i.h = alloca [112 x i8], align 8               ; 6 uses
  %.sroa.375 = alloca [16 x i8], align 8          ; 3 uses
  %i.i = alloca [1032 x i8], align 8              ; 4 uses
  %i.j = alloca [152 x i8], align 8               ; 20 uses
  %i.k = alloca [24 x i8], align 8                ; 2 uses
  %i.l = alloca [112 x i8], align 8               ; 6 uses
  %i.m = alloca [112 x i8], align 8               ; 6 uses
  %i.n = alloca [112 x i8], align 8               ; 6 uses
  %i.o = alloca [24 x i8], align 4                ; 2 uses
  %i.p = alloca [60 x i8], align 4                ; 4 uses
  %i.q = alloca [112 x i8], align 8               ; 7 uses
  %.sroa.743 = alloca [24 x i8], align 8          ; 6 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 2 uses
  %i.t = alloca [88 x i8], align 8                ; 4 uses
  %i.u = alloca [60 x i8], align 4                ; 9 uses
  %i.v = alloca [152 x i8], align 8               ; 4 uses
  %i.w = alloca [1032 x i8], align 8              ; 7 uses
  %.sroa.731 = alloca [112 x i8], align 8         ; 6 uses
  %i.x = alloca [1032 x i8], align 8              ; 19 uses
  %i.y = alloca [112 x i8], align 8               ; 7 uses
  %i.z = alloca [152 x i8], align 8               ; 28 uses
  %i.aa = alloca [152 x i8], align 8              ; 4 uses
  %i.ab = alloca [152 x i8], align 8              ; 7 uses
  %.sroa.76 = alloca [112 x i8], align 8          ; 6 uses
  %i.ac = alloca [152 x i8], align 8              ; 8 uses
  %.sroa.7 = alloca [112 x i8], align 8           ; 6 uses
  %i.ad = alloca [152 x i8], align 8              ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.76)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !noundef !3 ; 2 uses
  call void @"_ZN4anki7storage4card54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$8get_card17h7d4eb80d6d901de9E"(ptr noalias noundef nonnull sret([152 x i8]) align 8 captures(address) dereferenceable(152) %i.ab, ptr noundef nonnull align 8 %i.ae, i64 noundef %i.ag)
  %i.ah = load i64, ptr %i.ab, align 8, !range !33, !noundef !3 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 3
  %.sink.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  %.sink.i.sroa.gep233 = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.76, ptr noundef nonnull align 8 dereferenceable(112) %i.aj, i64 112, i1 false)
  br i1 %i.ai, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.76, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.ci

bb.c:                                             ; preds = %bb.a
  %.sroa.5114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 120
  %.sroa.98.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.aa, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.98.0..sroa_idx9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5114.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  store i64 %i.ah, ptr %i.aa, align 8
  %.sroa.76.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.76.0..sroa_idx7, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.76, i64 112, i1 false)
  call void @"_ZN84_$LT$core..option..Option$LT$T$GT$$u20$as$u20$anki..error..not_found..OrNotFound$GT$12or_not_found17hbf6b013b273d2de4E"(ptr noalias noundef nonnull sret([152 x i8]) align 8 captures(address) dereferenceable(152) %i.ac, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(152) %i.aa, i64 noundef %i.ag)
  %i.ak = load i64, ptr %i.ac, align 8, !range !25, !noundef !3 ; 4 uses
  %i.al = icmp eq i64 %i.ak, 2
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(112) %i.am, i64 112, i1 false)
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.7, i64 112, i1 false)
  br label %bb.ci

bb.e:                                             ; preds = %bb.c
  %.sroa.5117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 120
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5117.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.7, i64 112, i1 false)
  store i64 %i.ak, ptr %i.ad, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.76)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.experimental.noalias.scope.decl(metadata !13199)
  call void @llvm.experimental.noalias.scope.decl(metadata !13200)
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.ao = load <2 x i64>, ptr %i.an, align 8, !alias.scope !13200
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.ar = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !13200
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 116
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 148
  %i.au = load i8, ptr %i.at, align 4, !range !23, !alias.scope !13200, !noundef !3
  %i.av = getelementptr inbounds nuw i8, ptr %i.ad, i64 149
  %i.aw = load i8, ptr %i.av, align 1, !range !24, !alias.scope !13200, !noundef !3
  %i.ax = load <2 x i16>, ptr %i.aq, align 8, !alias.scope !13200
  %i.ay = load <4 x i32>, ptr %i.as, align 4, !alias.scope !13200
  %i.az = getelementptr inbounds nuw i8, ptr %i.ad, i64 132
  %i.ba = load <2 x i32>, ptr %i.az, align 4, !alias.scope !13200
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ad, i64 140
  %i.bc = load i32, ptr %i.bb, align 4, !alias.scope !13200, !noundef !3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !13200, !noundef !3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ad, i64 150
  %i.bg = load i8, ptr %i.bf, align 2, !alias.scope !13200, !noundef !3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.bi = load i32, ptr %i.bh, align 8, !range !16, !alias.scope !13200, !noundef !3 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  %i.bk = load i32, ptr %i.bj, align 4, !alias.scope !13200
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ad, i64 104
  %i.bm = load i32, ptr %i.bl, align 8, !range !16, !alias.scope !13200, !noundef !3 ; 2 uses
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 108
  %.sroa.53.0.copyload.i = load i64, ptr %.sroa.53.0..sroa_idx.i, align 4, !alias.scope !13200
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.bo = load i32, ptr %i.bn, align 8, !range !16, !alias.scope !13200, !noundef !3 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ad, i64 52
  %i.bq = load float, ptr %i.bp, align 4, !alias.scope !13200
  %i.br = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.bs = load i32, ptr %i.br, align 8, !range !16, !alias.scope !13200, !noundef !3 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ad, i64 60
  %i.bu = load float, ptr %i.bt, align 4, !alias.scope !13200
  %i.bv = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !13200
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 4 uses
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bw)
          to label %bb.g unwind label %bb.f

.body:                                            ; preds = %bb.k, %bb.f, %.thread243.thread, %.thread243
  %.sroa.0110.0 = phi i8 [ 0, %.thread243 ], [ %.sroa.0110.2296, %.thread243.thread ], [ %.sroa.0110.1, %bb.f ], [ %.sroa.0110.4, %bb.k ]
  %.pn225 = phi { ptr, i32 } [ %.pn223, %.thread243 ], [ %.pn223297, %.thread243.thread ], [ %i.bz, %bb.f ], [ %i.df, %bb.k ] ; 2 uses
  %i.by = trunc nuw i8 %.sroa.0110.0 to i1
  br i1 %i.by, label %bb.ch, label %common.resume

bb.f:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i", %bb.e
  %.sroa.0110.1 = phi i8 [ %.sroa.0110.4, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i" ], [ 1, %bb.e ]
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.e
  %i.ca = trunc nuw i64 %i.ak to i1
  %.sroa.511.0.i = select i1 %i.ca, i64 %i.bv, i64 undef
  %i.cb = trunc nuw i32 %i.bs to i1
  %.sroa.59.0.i = select i1 %i.cb, float %i.bu, float undef
  %i.cc = trunc nuw i32 %i.bo to i1
  %.sroa.57.0.i = select i1 %i.cc, float %i.bq, float undef
  %i.cd = trunc nuw i32 %i.bm to i1
  %.sroa.53.0.i = select i1 %i.cd, i64 %.sroa.53.0.copyload.i, i64 undef
end_hunk_12
begin_hunk_13_@"_ZN4anki9scheduler9answering46_$LT$impl$u20$anki..collection..Collection$GT$21get_scheduling_states17h06a766dc39dea6dbE":bb.a

bb.k:                                             ; preds = %bb.j, %bb.i
  store i64 2, ptr %i.e, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 432
  %i.ah = load i64, ptr %i.ag, align 8, !range !8, !noundef !3
  %i.ai = icmp eq i64 %i.ah, -9223372036854775808
  br i1 %i.ai, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.n, %bb.s, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_ZN4anki9scheduler9answering16CardStateUpdater13state_context17hb24117fc89a669b6E(ptr noalias noundef nonnull sret([200 x i8]) align 8 captures(address) dereferenceable(200) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1032) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e)
          to label %bb.v unwind label %bb.h

bb.n:                                             ; preds = %bb.l
  store i64 2, ptr %i.e, align 8
  br label %bb.m

bb.o:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 480
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13226
  invoke void @"_ZN4anki7storage10deckconfig54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$15get_deck_config17h542f970a2d04b145E"(ptr noalias noundef nonnull sret([384 x i8]) align 8 captures(address) dereferenceable(384) %i.a, ptr noundef nonnull align 8 %i.m, i64 noundef %i.ak)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.o
  %i.al = load i64, ptr %i.a, align 8, !range !22, !noalias !13226, !noundef !3 ; 3 uses
  %i.am = icmp eq i64 %i.al, -9223372036854775807
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(112) %i.an, i64 112, i1 false), !noalias !13226
  br i1 %i.am, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.noexc
  %.sroa.628.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.628.0..sroa_idx.i, i64 264, i1 false), !noalias !13226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13226
  %.not.i = icmp eq i64 %i.al, -9223372036854775808
  br i1 %.not.i, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.6.i, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.5.i, i64 264, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.627, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.7, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.627, i64 112, i1 false)
  %.sroa.352.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.352.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.11, i64 264, i1 false)
  store i64 %i.al, ptr %i.b, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 354
  %i.ap = load i8, ptr %i.ao, align 2, !range !6, !noundef !3
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$anki..deckconfig..DeckConfig$GT$17hb084b21ef4d188d6E"(ptr noalias noundef align 8 dereferenceable(384) %i.b)
          to label %bb.t unwind label %bb.h

bb.r:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13226
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.6.i, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.627, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.7, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.aq, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.627, i64 112, i1 false)
  store i32 1, ptr %0, align 8
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$anki..scheduler..answering..CardStateUpdater$GT$17h03b7730d592b38adE"(ptr noalias noundef align 8 dereferenceable(1032) %i.h)
  br label %bb.u

.critedge:                                        ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.627, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.7, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.s

bb.s:                                             ; preds = %.critedge, %bb.t
  %.sroa.023.0 = phi i64 [ %i.ar, %bb.t ], [ 0, %.critedge ]
  store i64 %.sroa.023.0, ptr %i.e, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.w, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.536.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.ae, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.838.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 %i.ak, ptr %.sroa.838.0..sroa_idx, align 8
  br label %bb.m

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ar = zext nneg i8 %i.ap to i64
  br label %bb.s

bb.u:                                             ; preds = %bb.r, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.x

bb.v:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_ZN4anki9scheduler6states9CardState11next_states17h70a2a92f7578a6b1E(ptr noalias noundef nonnull sret([300 x i8]) align 4 captures(address) dereferenceable(300) %i.c, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(60) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %i.d)
          to label %bb.w unwind label %bb.h

bb.w:                                             ; preds = %bb.v
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(300) %i.as, ptr noundef nonnull align 4 dereferenceable(300) %i.c, i64 300, i1 false)
  store i32 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$anki..scheduler..answering..CardStateUpdater$GT$17h03b7730d592b38adE"(ptr noalias noundef align 8 dereferenceable(1032) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.aa, %bb.w
  ret void

bb.y:                                             ; preds = %bb.h
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.z:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.ab

bb.aa:                                            ; preds = %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.x
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4anki9scheduler9answering46_$LT$impl$u20$anki..collection..Collection$GT$29update_deck_stats_from_answer17hc99dda91819f6dcfE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 dereferenceable(728) %1, i32 noundef %2, i32 %.160.val, i64 %.336.val, i32 %.960.val, i8 noundef range(i8 -3, 5) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = icmp ult i8 %3, 4
  br i1 %i.b, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.c = zext nneg i8 %3 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN4anki9scheduler9answering46_$LT$impl$u20$anki..collection..Collection$GT$29update_deck_stats_from_answer17hc99dda91819f6dcfE", i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.d = zext nneg i8 %3 to i64
  %switch.gep1 = getelementptr inbounds nuw i8, ptr @"switch.table._ZN4anki9scheduler9answering46_$LT$impl$u20$anki..collection..Collection$GT$29update_deck_stats_from_answer17hc99dda91819f6dcfE.417", i64 %i.d
  %switch.load2 = load i8, ptr %switch.gep1, align 1
  %switch.ext3 = zext i8 %switch.load2 to i32
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.sroa.02.0 = phi i32 [ 0, %bb.a ], [ %switch.ext, %switch.lookup ]
  %.sroa.0.0 = phi i32 [ 0, %bb.a ], [ %switch.ext3, %switch.lookup ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.336.val, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.sroa.0.0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %.sroa.02.0, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %.160.val, ptr %i.g, align 8
  call fastcc void @"_ZN4anki5decks5stats46_$LT$impl$u20$anki..collection..Collection$GT$17update_deck_stats17h7f4d121c776dc483E"(ptr noalias noundef align 8 captures(address) dereferenceable(112) %0, ptr noalias noundef align 8 dereferenceable(728) %1, i32 noundef %.960.val, i32 noundef %2, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN4anki9scheduler9answering46_$LT$impl$u20$anki..collection..Collection$GT$34fsrs_short_term_with_steps_enabled17h3cd32cee50c43a37E"(ptr noundef nonnull align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.c = load i64, ptr %i.b, align 8, !range !8, !noundef !3
  %.not = icmp eq i64 %i.c, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 373
  %i.e = load i8, ptr %i.d, align 1, !range !6, !noundef !3
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 600
  call void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17he6d4c5be612c4b9eE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, ptr noundef nonnull align 8 %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @195, i64 noundef 29)
  %i.g = load i64, ptr %i.a, align 8, !range !13, !noundef !3
  %.not.i = icmp eq i64 %i.g, -9223372036854775773
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !12
  br i1 %.not.i, label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit", label %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i"

"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i": ; preds = %bb.c
  call void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.a)
  br label %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit"

"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit": ; preds = %bb.c, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i"
  %.sroa.0.0.i = phi i8 [ 2, %"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$core..option..Option$LT$bool$GT$$C$anki..error..AnkiError$GT$$GT$17he1bda0707b167ad3E.exit.i" ], [ %i.i, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit", %bb.b
  %.sroa.0.0.in = phi i8 [ %i.e, %bb.b ], [ %.sroa.0.0.i, %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$19get_config_optional17h59ed1b814d2f79ceE.exit" ]
  %.sroa.0.0 = trunc i8 %.sroa.0.0.in to i1
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h37bd9ab57da75b39E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hb55abab394fd8017E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17h6f03b4a794a26c86E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define internal fastcc range(i64 0, -4294967295) i64 @"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h6edf09ea7f013b81E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, i64 noundef %1) unnamed_addr #5 {
bb.a:
  switch i64 %1, label %bb.c [
    i64 0, label %.loopexit74
    i64 1, label %bb.b
  ]

.loopexit74:                                      ; preds = %bb.i, %bb.g, %.lr.ph, %bb.h, %bb.b, %bb.b, %bb.a, %.loopexit
  %.sroa.8.0.insert.insert = phi i64 [ 257, %bb.b ], [ %i.g, %.loopexit ], [ 1, %bb.a ], [ 257, %bb.b ], [ 257, %.lr.ph ], [ %spec.select, %bb.h ], [ 257, %bb.g ], [ 513, %bb.i ]
  ret i64 %.sroa.8.0.insert.insert

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !noundef !3
  switch i8 %i.a, label %.lr.ph.preheader [
    i8 43, label %.loopexit74
    i8 45, label %.loopexit74
  ]

bb.c:                                             ; preds = %bb.a
  %.pr = load i8, ptr %0, align 1
  %cond = icmp eq i8 %.pr, 43
  br i1 %cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.c = add i64 %1, -1                           ; 3 uses
  %i.d = icmp ult i64 %1, 10
  br i1 %i.d, label %.preheader, label %.preheader75

.preheader75:                                     ; preds = %bb.d, %bb.f
  %.sroa.16.0.ph = phi i64 [ %1, %bb.f ], [ %i.c, %bb.d ] ; 2 uses
  %.sroa.0.0.ph = phi ptr [ %0, %bb.f ], [ %i.b, %bb.d ]
  %.not697 = icmp eq i64 %.sroa.16.0.ph, 0
  br i1 %.not697, label %.loopexit, label %.lr.ph11

bb.e:                                             ; preds = %bb.i
  %.not69 = icmp eq i64 %i.i, 0
  br i1 %.not69, label %.loopexit, label %.lr.ph11

bb.f:                                             ; preds = %bb.c
  %i.e = icmp ult i64 %1, 9
  br i1 %i.e, label %.lr.ph.preheader, label %.preheader75

.preheader:                                       ; preds = %bb.d
  %.not7183 = icmp eq i64 %i.c, 0
  br i1 %.not7183, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b, %bb.f, %.preheader
  %.sroa.0.186.ph = phi ptr [ %0, %bb.b ], [ %0, %bb.f ], [ %i.b, %.preheader ]
  %.sroa.16.185.ph = phi i64 [ 1, %bb.b ], [ %1, %bb.f ], [ %i.c, %.preheader ]
  br label %.lr.ph

.loopexit:                                        ; preds = %bb.e, %bb.j, %.preheader75, %.preheader
  %.sroa.054.2 = phi i32 [ %i.aa, %bb.j ], [ 0, %.preheader ], [ 0, %.preheader75 ], [ %i.s, %bb.e ]
  %i.f = zext i32 %.sroa.054.2 to i64
  %i.g = shl nuw i64 %i.f, 32
  br label %.loopexit74

.lr.ph11:                                         ; preds = %.preheader75, %bb.e
  %.sroa.0.010 = phi ptr [ %i.h, %bb.e ], [ %.sroa.0.0.ph, %.preheader75 ] ; 2 uses
  %.sroa.16.09 = phi i64 [ %i.i, %bb.e ], [ %.sroa.16.0.ph, %.preheader75 ]
  %.sroa.054.08 = phi i32 [ %i.s, %bb.e ], [ 0, %.preheader75 ]
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.010, i64 1
  %i.i = add i64 %.sroa.16.09, -1                 ; 2 uses
  %i.j = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.054.08, i32 10) ; 2 uses
  %i.k = extractvalue { i32, i1 } %i.j, 0         ; 2 uses
  %i.l = extractvalue { i32, i1 } %i.j, 1
  %i.m = load i8, ptr %.sroa.0.010, align 1, !noundef !3 ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g, !prof !9

bb.g:                                             ; preds = %.lr.ph11
  %i.n = zext i8 %i.m to i32
  %i.o = add nsw i32 %i.n, -48                    ; 2 uses
  %i.p = icmp ult i32 %i.o, 10
  br i1 %i.p, label %bb.i, label %.loopexit74

bb.h:                                             ; preds = %.lr.ph11
  %i.q = add i8 %i.m, -48
  %i.r = icmp ult i8 %i.q, 10
  %spec.select = select i1 %i.r, i64 513, i64 257
  br label %.loopexit74

bb.i:                                             ; preds = %bb.g
  %i.s = add i32 %i.o, %i.k                       ; 3 uses
  %.not70 = icmp ult i32 %i.s, %i.k
  br i1 %.not70, label %.loopexit74, label %bb.e

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %.sroa.0.186 = phi ptr [ %i.z, %bb.j ], [ %.sroa.0.186.ph, %.lr.ph.preheader ] ; 2 uses
  %.sroa.16.185 = phi i64 [ %i.y, %bb.j ], [ %.sroa.16.185.ph, %.lr.ph.preheader ]
  %.sroa.054.184 = phi i32 [ %i.aa, %bb.j ], [ 0, %.lr.ph.preheader ]
  %i.t = load i8, ptr %.sroa.0.186, align 1, !noundef !3
  %i.u = zext i8 %i.t to i32
  %i.v = add nsw i32 %i.u, -48                    ; 2 uses
  %i.w = icmp ult i32 %i.v, 10
  br i1 %i.w, label %bb.j, label %.loopexit74

bb.j:                                             ; preds = %.lr.ph
  %i.x = mul i32 %.sroa.054.184, 10
  %i.y = add nsw i64 %.sroa.16.185, -1            ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.186, i64 1
  %i.aa = add i32 %i.v, %i.x                      ; 2 uses
  %.not71 = icmp eq i64 %i.y, 0
  br i1 %.not71, label %.loopexit, label %.lr.ph
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef float @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h12f4ce9891a2c014E"(ptr nofree noundef readonly captures(address, read_provenance) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13233)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %1, i64 48, i1 false), !noalias !13233
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13235)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !13235, !noalias !13236, !nonnull !3, !align !4, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load float, ptr %i.c, align 8, !noalias !13237, !noundef !3
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.f = load float, ptr %i.e, align 8, !alias.scope !13235, !noalias !13236, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !13235, !noalias !13236, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !13235, !noalias !13236, !nonnull !3, !align !4, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !13235, !noalias !13236, !noundef !3
  %i.m = call noundef i64 @_ZN4fsrs10simulation21PostSchedulingContext10random_u6417hc65cd23710533f97E(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a), !noalias !13238
  %i.n = load i64, ptr %0, align 8, !alias.scope !13239, !noundef !3
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = call noundef float @_ZN4anki9scheduler4fsrs9simulator32apply_load_balance_and_easy_days17hede2daed4795af3eE(float noundef %i.d, float noundef %i.f, i64 noundef %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.j, i64 noundef %i.l, i64 noundef %i.m, i64 noundef %i.n, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(7) %i.o), !noalias !13240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret float %i.p
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_ZN4core3ops8function6FnOnce9call_once17h29a054a5771fb065E(ptr noalias noundef align 8 dereferenceable_or_null(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$23__RUST_STD_INTERNAL_VAL17h52bbdbbe49363830E") ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !6, !noalias !13245, !noundef !3
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h4c3b121de09ca524E.exit", label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h58eec1f8190c6d30E"(ptr noundef nonnull align 8 %i.a, ptr noalias noundef align 8 dereferenceable_or_null(24) %0)
  br label %"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h4c3b121de09ca524E.exit"

"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h4c3b121de09ca524E.exit": ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_ZN4core3ops8function6FnOnce9call_once17h629dd1ab266bd602E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val = load i32, ptr %i.a, align 8, !noundef !3
  ret i32 %.val
}
end_hunk_13
