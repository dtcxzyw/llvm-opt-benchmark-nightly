Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/lindera_dictionary-259f0a99cb209a5b.lindera_dictionary.948ad8c3b843b31e-cgu.0?download=true
inline.NumInlined: 4519
inline.NumDeleted: 2001
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN18lindera_dictionary18dictionary_builder20character_definition26CharacterDefinitionBuilder5build17h0d32ae2e7a24da1aE:bb.a
          to label %bb.dz unwind label %.loopexit228.loopexit.i, !noalias !6138

bb.dz:                                            ; preds = %bb.dy
  %i.vu = load i8, ptr %i.cx, align 8, !range !6213, !noalias !6139, !noundef !6 ; 2 uses
  %.not46.i.i = icmp eq i8 %i.vu, 16
  br i1 %.not46.i.i, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.vv = load ptr, ptr %i.ae, align 8, !noalias !6139, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !6139
  br label %bb.dt

bb.eb:                                            ; preds = %bb.dz
  %i.vw = load i32, ptr %i.ae, align 8, !noalias !6139, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !6139
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ds
  %.sroa.094.0.copyload199.i.i = phi i64 [ %.sroa.094.0.copyload200.i.i, %bb.ds ], [ %.sroa.094.0.copyload.pre.i.i, %bb.eb ] ; 6 uses
  %.sroa.895.0.copyload197.i.i = phi ptr [ %.sroa.895.0.copyload198.i.i, %bb.ds ], [ %.sroa.895.0.copyload.pre.i.i, %bb.eb ] ; 5 uses
  %.sroa.03.0.i111.i = phi i32 [ %i.vh, %bb.ds ], [ %i.vw, %bb.eb ]
  %.sroa.01.0.i.i = phi i32 [ %i.vh, %bb.ds ], [ %i.vp, %bb.eb ]
  %i.vx = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload155.i.i, i64 16
  %gepdiff.i.i = add i64 %.sroa.14.0.copyload149.i.i, -16 ; 2 uses
  %i.vy = lshr exact i64 %gepdiff.i.i, 4          ; 2 uses
  %i.vz = lshr exact i64 %gepdiff.i.i, 1          ; 3 uses
  %i.wa = icmp eq i64 %.sroa.14.0.copyload149.i.i, 16
  br i1 %i.wa, label %_ZN4core4iter6traits8iterator8Iterator7collect17h587556dc9458ff9eE.exit.i.i, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !6214
  %i.wb = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.vz, i64 noundef range(i64 1, 9) 8) #47, !noalias !6214 ; 4 uses
  %i.wc = icmp eq ptr %i.wb, null
  br i1 %i.wc, label %bb.ee, label %.preheader.i.i.i.i.i.i.i.i

bb.ee:                                            ; preds = %bb.ed
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.vz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @315) #46
          to label %.noexc81.i.i unwind label %.loopexit.split-lp229.i, !noalias !6138

.noexc81.i.i:                                     ; preds = %bb.ee
  unreachable

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %bb.ed, %bb.ef
  %.val20.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.wh, %bb.ef ], [ 0, %bb.ed ] ; 3 uses
  %i.wd = getelementptr inbounds nuw [16 x i8], ptr %i.vx, i64 %.val20.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.val21.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.wd, align 8, !noalias !6215, !nonnull !6, !align !11, !noundef !6
  %i.we = getelementptr i8, ptr %i.wd, i64 8
  %.val22.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.we, align 8, !noalias !6215, !noundef !6
  %i.wf = invoke noundef i64 @_ZN18lindera_dictionary18dictionary_builder20character_definition26CharacterDefinitionBuilder11category_id17had50c71a38f65706E(ptr noalias noundef nonnull align 8 dereferenceable(128) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val21.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val22.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.ef unwind label %.body.i.i.i.i.i.i, !noalias !6215

bb.ef:                                            ; preds = %.preheader.i.i.i.i.i.i.i.i
  %i.wg = getelementptr inbounds nuw [8 x i8], ptr %i.wb, i64 %.val20.i.i.i.i.i.i.i.i.i.i.i
  store i64 %i.wf, ptr %i.wg, align 8, !noalias !6216
  %i.wh = add i64 %.val20.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.wi = icmp eq i64 %i.wh, %i.vy
  br i1 %i.wi, label %_ZN4core4iter6traits8iterator8Iterator7collect17h587556dc9458ff9eE.exit.i.i, label %.preheader.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %.preheader.i.i.i.i.i.i.i.i
  %i.wj = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.wb, i64 noundef %i.vz, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !6217
  br label %.body82.i.i

_ZN4core4iter6traits8iterator8Iterator7collect17h587556dc9458ff9eE.exit.i.i: ; preds = %bb.ef, %bb.ec
  %.sroa.4.0.i13.i.i.i.i.i.i = phi i64 [ 0, %bb.ec ], [ %i.vy, %bb.ef ] ; 4 uses
  %.sroa.10.0.i12.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.ec ], [ %i.wb, %bb.ef ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6218)
  %i.wk = load i64, ptr %i.da, align 8, !alias.scope !6219, !noalias !6220, !noundef !6 ; 3 uses
  %i.wl = load i64, ptr %i.cz, align 8, !range !14, !alias.scope !6219, !noalias !6220, !noundef !6
  %i.wm = icmp eq i64 %i.wk, %i.wl
  br i1 %i.wm, label %bb.eg, label %bb.ej

bb.eg:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h587556dc9458ff9eE.exit.i.i
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17haeaddec6df7fa18cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @198)
          to label %bb.ej unwind label %bb.eh, !noalias !6221

bb.eh:                                            ; preds = %bb.eg
  %i.wn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wo = icmp eq i64 %.sroa.4.0.i13.i.i.i.i.i.i, 0
  br i1 %i.wo, label %.body82.i.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.wp = shl nuw nsw i64 %.sroa.4.0.i13.i.i.i.i.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i12.i.i.i.i.i.i, i64 noundef %i.wp, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !6222
  br label %.body82.i.i

bb.ej:                                            ; preds = %bb.eg, %_ZN4core4iter6traits8iterator8Iterator7collect17h587556dc9458ff9eE.exit.i.i
  %i.wq = load ptr, ptr %i.db, align 8, !alias.scope !6219, !noalias !6220, !nonnull !6, !noundef !6
  %i.wr = getelementptr inbounds nuw [32 x i8], ptr %i.wq, i64 %i.wk ; 5 uses
  store i32 %.sroa.01.0.i.i, ptr %i.wr, align 8, !noalias !6218
  %.sroa.4118.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.wr, i64 4
  store i32 %.sroa.03.0.i111.i, ptr %.sroa.4118.0..sroa_idx.i.i, align 4, !noalias !6218
  %.sroa.5119.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.wr, i64 8
  store i64 %.sroa.4.0.i13.i.i.i.i.i.i, ptr %.sroa.5119.0..sroa_idx.i.i, align 8, !noalias !6218
  %.sroa.7120.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.wr, i64 16
  store ptr %.sroa.10.0.i12.i.i.i.i.i.i, ptr %.sroa.7120.0..sroa_idx.i.i, align 8, !noalias !6218
  %.sroa.9.0..sroa_idx.i.i85 = getelementptr inbounds nuw i8, ptr %i.wr, i64 24
  store i64 %.sroa.4.0.i13.i.i.i.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i85, align 8, !noalias !6218
  %i.ws = add i64 %i.wk, 1
  store i64 %i.ws, ptr %i.da, align 8, !alias.scope !6219, !noalias !6220
  %i.wt = icmp eq i64 %.sroa.094.0.copyload199.i.i, 0
  br i1 %i.wt, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h818ca1b63095d917E.exit86.i.i", label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.wu = shl nuw i64 %.sroa.094.0.copyload199.i.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.895.0.copyload197.i.i, i64 noundef %i.wu, i64 noundef range(i64 1, -9223372036854775807) 8) #47
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h818ca1b63095d917E.exit86.i.i"

"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h818ca1b63095d917E.exit86.i.i": ; preds = %bb.ek, %bb.ej
  %i.wv = icmp eq i64 %.sroa.0.0.copyload150.i.i, 0
  br i1 %i.wv, label %_ZN18lindera_dictionary18dictionary_builder20character_definition26CharacterDefinitionBuilder11parse_range17ha8d4368bdd8d12fdE.exit.thread.i, label %_ZN18lindera_dictionary18dictionary_builder20character_definition26CharacterDefinitionBuilder11parse_range17ha8d4368bdd8d12fdE.exit.thread809.i

_ZN18lindera_dictionary18dictionary_builder20character_definition26CharacterDefinitionBuilder11parse_range17ha8d4368bdd8d12fdE.exit.thread809.i: ; preds = %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h818ca1b63095d917E.exit86.i.i"
  %i.ww = shl nuw i64 %.sroa.0.0.copyload150.i.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload155.i.i, i64 noundef %i.ww, i64 noundef range(i64 1, -9223372036854775807) 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !6103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !6103
  br label %.backedge.i

_ZN18lindera_dictionary18dictionary_builder20character_definition26CharacterDefinitionBuilder11parse_range17ha8d4368bdd8d12fdE.exit.thread.i: ; preds = %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h818ca1b63095d917E.exit86.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !6103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !6103
  br label %.backedge.i

bb.el:                                            ; preds = %.loopexit827.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !6211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !6139
  %i.wx = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$3msg17hba822881bcddadacE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ad)
          to label %bb.dt unwind label %.loopexit228.loopexit.split-lp.i, !noalias !6138

"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h818ca1b63095d917E.exit78.i.i": ; preds = %bb.du, %bb.dt
  %i.wy = icmp eq i64 %.sroa.0.0.copyload150.i.i, 0
  br i1 %i.wy, label %.loopexit233.i, label %.loopexit233.loopexit.i

bb.em:                                            ; preds = %bb.bl, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !6103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !6103
  br label %bb.eo

.backedge.i:                                      ; preds = %_ZN18lindera_dictionary18dictionary_builder20character_definition26CharacterDefinitionBuilder11parse_range17ha8d4368bdd8d12fdE.exit.thread.i, %_ZN18lindera_dictionary18dictionary_builder20character_definition26CharacterDefinitionBuilder11parse_range17ha8d4368bdd8d12fdE.exit.thread809.i, %_ZN18lindera_dictionary18dictionary_builder20character_definition26CharacterDefinitionBuilder14parse_category17h57db40bbce2aeb73E.exit.thread.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h0583ab8b2c96f1b7E.exit.thread.i"
  %i.wz = load i8, ptr %.sroa.548.0..sroa_idx.i, align 1, !range !23, !alias.scope !6223, !noalias !6103, !noundef !6
  %i.xa = trunc nuw i8 %i.wz to i1
  br i1 %i.xa, label %bb.ep, label %bb.j

.loopexit233.loopexit.i:                          ; preds = %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h818ca1b63095d917E.exit78.i.i"
  %i.xb = shl nuw i64 %.sroa.0.0.copyload150.i.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload155.i.i, i64 noundef %i.xb, i64 noundef range(i64 1, -9223372036854775807) 8) #47
  br label %.loopexit233.i

.loopexit233.i:                                   ; preds = %.loopexit233.loopexit.i, %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h818ca1b63095d917E.exit78.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !6103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !6103
  br label %bb.eo

.body:                                            ; preds = %.loopexit308, %.loopexit.split-lp309.loopexit.split-lp, %.loopexit.split-lp309.loopexit, %bb.ks, %.body143, %bb.es, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h951691be7b6e9366E.exit.i", %bb.cg, %.body.i.i, %bb.cd, %bb.cc, %bb.an, %bb.am, %bb.ab, %bb.aa, %bb.iv
  %.pn74 = phi { ptr, i32 } [ %eh.lpad-body144, %.body143 ], [ %.pn, %bb.ks ], [ %.pn, %bb.iv ], [ %.pn.i.i, %.body.i.i ], [ %lpad.phi222.i, %bb.am ], [ %i.ho, %bb.aa ], [ %i.ho, %bb.ab ], [ %lpad.phi222.i, %bb.an ], [ %i.px, %bb.cc ], [ %i.px, %bb.cd ], [ %.pn.i.i, %bb.cg ], [ %.pn.pn.i1151, %bb.es ], [ %.pn.pn.i1151, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h951691be7b6e9366E.exit.i" ], [ %lpad.loopexit310, %.loopexit308 ], [ %lpad.loopexit314, %.loopexit.split-lp309.loopexit ], [ %lpad.loopexit.split-lp315, %.loopexit.split-lp309.loopexit.split-lp ] ; 2 uses
  %i.xc = icmp eq i64 %i.bp, 0
  br i1 %i.xc, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit", label %bb.en

bb.en:                                            ; preds = %.body
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bs, i64 noundef %i.bp, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !6224
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit"

.loopexit308:                                     ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i73.i
  %lpad.loopexit310 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp309.loopexit:                   ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i
  %lpad.loopexit314 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp309.loopexit.split-lp:          ; preds = %.invoke, %bb.s
  %lpad.loopexit.split-lp315 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.eo:                                            ; preds = %.noexc87, %.loopexit233.i, %bb.em
  %.sroa.5.0.i.ph = phi i8 [ %.sroa.6.1.i.i, %bb.em ], [ %.sroa.6.0.i107.i, %.loopexit233.i ], [ 5, %.noexc87 ]
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.0.1.i98.i, %bb.em ], [ %.sroa.0.0.i108.i, %.loopexit233.i ], [ %i.fq, %.noexc87 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !6103
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.ph) ]
  %i.xd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.ph, ptr %i.xd, align 8
  %i.xe = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.5.0.i.ph, ptr %i.xe, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.kq

bb.ep:                                            ; preds = %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i.i", %.backedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !6103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.experimental.noalias.scope.decl(metadata !6225)
  call void @llvm.experimental.noalias.scope.decl(metadata !6226)
  %i.xf = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.xg = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.xh = load i64, ptr %i.xg, align 8, !alias.scope !6226, !noalias !6225, !noundef !6 ; 23 uses
  %i.xi = mul i64 %i.xh, 24                       ; 7 uses
  %or.cond.i.i.i.i.i.i.i.i = icmp ugt i64 %i.xh, 384307168202282325
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %.invoke, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i, !prof !10

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i: ; preds = %bb.ep
  %i.xj = icmp eq i64 %i.xi, 0                    ; 2 uses
  br i1 %i.xj, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35bf487b356cc3ccE.exit.i.i.i.i.i.i.i", label %bb.eq

bb.eq:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !6227
  %i.xk = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.xi, i64 noundef range(i64 1, 9) 8) #47, !noalias !6227 ; 2 uses
  %i.xl = icmp eq ptr %i.xk, null
  br i1 %i.xl, label %.invoke, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35bf487b356cc3ccE.exit.i.i.i.i.i.i.i"

.invoke:                                          ; preds = %"_ZN96_$LT$core..str..iter..SplitAsciiWhitespace$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c721889622d8f7fE.exit.i.i.i.i.i.i", %bb.bo, %bb.ep, %bb.eq
  %i.xm = phi i64 [ 0, %bb.ep ], [ 8, %bb.eq ], [ 8, %bb.bo ], [ 8, %"_ZN96_$LT$core..str..iter..SplitAsciiWhitespace$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c721889622d8f7fE.exit.i.i.i.i.i.i" ]
  %i.xn = phi i64 [ %i.xi, %bb.ep ], [ %i.xi, %bb.eq ], [ 64, %bb.bo ], [ 64, %"_ZN96_$LT$core..str..iter..SplitAsciiWhitespace$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c721889622d8f7fE.exit.i.i.i.i.i.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.xm, i64 %i.xn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @315) #46
          to label %.cont unwind label %.loopexit.split-lp309.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35bf487b356cc3ccE.exit.i.i.i.i.i.i.i": ; preds = %bb.eq, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %i.xk, %bb.eq ] ; 11 uses
  %.sroa.4.0.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %i.xh, %bb.eq ] ; 4 uses
  %i.xo = icmp samesign ule i64 %i.xh, %.sroa.4.0.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.xo)
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.xh, 0 ; 6 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35bf487b356cc3ccE.exit.i.i.i.i.i.i.i"
  %xtraiter = and i64 %i.xh, 3                    ; 3 uses
  %i.xp = icmp ult i64 %i.xh, 4
  br i1 %i.xp, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.xh, 576460752303423484
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new
  %i.xq = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.xw, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.xr = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i.i.i.i, i64 %i.xq ; 3 uses
  store i64 0, ptr %i.xr, align 8, !noalias !6228
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !6228
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 16
  store i64 0, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !6228
  %i.xs = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i.i.i.i, i64 %i.xq ; 3 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 24
  store i64 0, ptr %i.xt, align 8, !noalias !6228
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.xs, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !6228
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.xs, i64 40
  store i64 0, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !6228
  %i.xu = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i.i.i.i, i64 %i.xq ; 3 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 48
  store i64 0, ptr %i.xv, align 8, !noalias !6228
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.xu, i64 56
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !6228
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.xu, i64 64
  store i64 0, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !6228
  %i.xw = add nuw nsw i64 %i.xq, 4                ; 2 uses
  %i.xx = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i.i.i.i, i64 %i.xq ; 3 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 72
  store i64 0, ptr %i.xy, align 8, !noalias !6228
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.xx, i64 80
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !6228
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.xx, i64 88
  store i64 0, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !6228
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.preheader.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.body.i:                                          ; preds = %bb.ho, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7c94713ae900f35bE.exit.i.i", %bb.gu, %bb.gt, %"_ZN4core3ptr72drop_in_place$LT$alloc..collections..btree..set..IntoIter$LT$u32$GT$$GT$17h422242f856d2edbcE.exit.i.i.i.i.i", %bb.gp, %.body.i.i.i.i.i.i101, %bb.ga, %bb.fz, %bb.fy, %.thread.sink.split.i.i.i.i.i.i, %bb.fm, %bb.fc, %"_ZN4core3ptr374drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$$LP$u32$C$u32$C$alloc..vec..Vec$LT$lindera_dictionary..dictionary..character_definition..CategoryId$GT$$RP$$GT$$C$alloc..vec..Vec$LT$u32$GT$$C$lindera_dictionary..dictionary_builder..character_definition..CharacterDefinitionBuilder..build_lookup_table..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hb27190de85fdf98dE.exit.sink.split.i.i.i.i.i.i.i", %.body.i.i.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i112, %.loopexit41.i
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.ph.i.i.i.i.i.i, %"_ZN4core3ptr72drop_in_place$LT$alloc..collections..btree..set..IntoIter$LT$u32$GT$$GT$17h422242f856d2edbcE.exit.i.i.i.i.i" ], [ %eh.lpad-body.i.i.i.i.i.i, %bb.gp ], [ %lpad.loopexit.split-lp47.i, %.loopexit.split-lp.loopexit.split-lp.i112 ], [ %i.amn, %bb.ho ], [ %eh.lpad-body.i.i.i.i.i.i, %.body.i.i.i.i.i.i101 ], [ %.pn.i.i.i, %bb.gu ], [ %.pn.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr374drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$$LP$u32$C$u32$C$alloc..vec..Vec$LT$lindera_dictionary..dictionary..character_definition..CategoryId$GT$$RP$$GT$$C$alloc..vec..Vec$LT$u32$GT$$C$lindera_dictionary..dictionary_builder..character_definition..CharacterDefinitionBuilder..build_lookup_table..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hb27190de85fdf98dE.exit.sink.split.i.i.i.i.i.i.i" ], [ %.pn.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i ], [ %lpad.thr_comm.split-lp.i.i.i.i, %bb.fz ], [ %lpad.thr_comm.split-lp.i.i.i.i, %bb.ga ], [ %.pn34.ph.i.i.i.i.i.i, %.thread.sink.split.i.i.i.i.i.i ], [ %i.aen, %bb.fm ], [ %i.aip, %bb.fy ], [ %.pn.i.i.i, %bb.gt ], [ %i.aar, %bb.fc ], [ %i.amn, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7c94713ae900f35bE.exit.i.i" ], [ %lpad.loopexit.i113, %.loopexit41.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6229), !noalias !6225
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h951691be7b6e9366E.exit.i", label %.lr.ph.i.i.i205.preheader

.lr.ph.i.i.i205.preheader:                        ; preds = %.loopexit.split-lp.loopexit.i92, %bb.ht, %bb.hv, %.body.i
  %.pn.pn.i1150 = phi { ptr, i32 } [ %.pn.pn.i, %.body.i ], [ %lpad.loopexit46.i, %.loopexit.split-lp.loopexit.i92 ], [ %i.ane, %bb.ht ], [ %i.ane, %bb.hv ]
  br label %.lr.ph.i.i.i205

.lr.ph.i.i.i205:                                  ; preds = %.lr.ph.i.i.i205.preheader, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i.i.i"
  %.sroa.0.010.i.i.i = phi i64 [ %i.ya, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i.i.i" ], [ 0, %.lr.ph.i.i.i205.preheader ] ; 2 uses
  %i.xz = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i.i.i.i, i64 %.sroa.0.010.i.i.i ; 2 uses
  %i.ya = add nuw nsw i64 %.sroa.0.010.i.i.i, 1   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6230), !noalias !6225
  %.val.i.i.i.i206 = load i64, ptr %i.xz, align 8, !alias.scope !6231, !noalias !6232 ; 2 uses
  %i.yb = icmp eq i64 %.val.i.i.i.i206, 0
  br i1 %i.yb, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i.i.i", label %bb.er

bb.er:                                            ; preds = %.lr.ph.i.i.i205
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xz, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.yc, align 8, !alias.scope !6231, !noalias !6232, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i206, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !6233
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i.i.i": ; preds = %bb.er, %.lr.ph.i.i.i205
  %i.yd = icmp eq i64 %i.ya, %i.xh
  br i1 %i.yd, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h951691be7b6e9366E.exit.i", label %.lr.ph.i.i.i205

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h951691be7b6e9366E.exit.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i.i.i", %.body.i
  %.pn.pn.i1151 = phi { ptr, i32 } [ %.pn.pn.i, %.body.i ], [ %.pn.pn.i1150, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i.i.i" ] ; 2 uses
  %i.ye = icmp eq i64 %.sroa.4.0.i.i.i.i.i.i, 0
  br i1 %i.ye, label %.body, label %bb.es

bb.es:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h951691be7b6e9366E.exit.i"
  %i.yf = mul nuw nsw i64 %.sroa.4.0.i.i.i.i.i.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i, i64 noundef %i.yf, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !6232
  br label %.body

.loopexit41.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.i113 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.i92:                  ; preds = %.loopexit45.i
  %lpad.loopexit46.i = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.i.i205.preheader

.loopexit.split-lp.loopexit.split-lp.i112:        ; preds = %bb.gc, %.noexc27.i.i.i.i.i.i.invoke.i, %.noexc.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp47.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.lr.ph.preheader.i.unr-lcssa:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader:        ; preds = %.lr.ph.preheader.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.xw, %.lr.ph.preheader.i.unr-lcssa ]
  %lcmp.mod2124 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod2124)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.epil:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %i.yg = phi i64 [ %i.yh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.yh = add nuw nsw i64 %i.yg, 1
  %i.yi = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i.i.i.i, i64 %i.yg ; 3 uses
  store i64 0, ptr %i.yi, align 8, !noalias !6228
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.yi, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !6228
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.yi, i64 16
  store i64 0, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !6228
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.preheader.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !5320

.lr.ph.preheader.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.preheader.i.unr-lcssa
  call void @llvm.experimental.noalias.scope.decl(metadata !6234)
  %i.yj = load ptr, ptr %i.xf, align 8, !alias.scope !6235, !noalias !6236, !nonnull !6, !noundef !6 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.yj, align 16, !noalias !6237
  %i.yk = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.yl = bitcast <16 x i1> %i.yk to i16
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yj, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i", %.lr.ph.preheader.i
  %.sroa.0.0116.i = phi ptr [ %.sroa.0.1.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i" ], [ %i.yj, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.6.0115.i = phi ptr [ %.sroa.6.1.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i" ], [ %i.ym, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.820.0114.i = phi i16 [ %i.yv, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i" ], [ %i.yl, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.1021.0113.i = phi i64 [ %i.yy, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i" ], [ %i.xh, %.lr.ph.preheader.i ]
  %.not13.i.i.i = icmp eq i16 %.sroa.820.0114.i, 0
  br i1 %.not13.i.i.i, label %.lr.ph.i.i.i117, label %.loopexit45.i

.lr.ph.i.i.i117:                                  ; preds = %.lr.ph.i, %.lr.ph.i.i.i117
  %i.yn = phi ptr [ %i.yr, %.lr.ph.i.i.i117 ], [ %.sroa.6.0115.i, %.lr.ph.i ] ; 2 uses
  %i.yo = phi ptr [ %i.yq, %.lr.ph.i.i.i117 ], [ %.sroa.0.0116.i, %.lr.ph.i ]
  %.val11.i.i.i = load <16 x i8>, ptr %i.yn, align 16, !noalias !6238
  %i.yp = icmp sgt <16 x i8> %.val11.i.i.i, splat (i8 -1)
  %i.yq = getelementptr inbounds i8, ptr %i.yo, i64 -512 ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yn, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.yp to i16   ; 2 uses
  %.not.i.i.i118 = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i118, label %.lr.ph.i.i.i117, label %.loopexit45.i

.loopexit45.i:                                    ; preds = %.lr.ph.i.i.i117, %.lr.ph.i
  %.sroa.6.1.i = phi ptr [ %.sroa.6.0115.i, %.lr.ph.i ], [ %i.yr, %.lr.ph.i.i.i117 ]
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0116.i, %.lr.ph.i ], [ %i.yq, %.lr.ph.i.i.i117 ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.820.0114.i, %.lr.ph.i ], [ %.cast.i.i.i, %.lr.ph.i.i.i117 ] ; 3 uses
  %i.ys = add i16 %.lcssa.i.i.i, -1
  %i.yt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.yu = zext nneg i16 %i.yt to i64
  %i.yv = and i16 %i.ys, %.lcssa.i.i.i
  %i.yw = sub nsw i64 0, %i.yu
  %i.yx = getelementptr inbounds [32 x i8], ptr %.sroa.0.1.i, i64 %i.yw ; 2 uses
  %i.yy = add nsw i64 %.sroa.1021.0113.i, -1      ; 2 uses
  %i.yz = getelementptr inbounds i8, ptr %i.yx, i64 -32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !6239
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.yz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @208)
          to label %bb.hp unwind label %.loopexit.split-lp.loopexit.i92, !noalias !6225

._crit_edge.i:                                    ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35bf487b356cc3ccE.exit.i.i.i.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !6240)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !6239
  %i.za = load ptr, ptr %i.db, align 8, !alias.scope !6241, !noalias !6242, !nonnull !6, !noundef !6 ; 4 uses
  %i.zb = load i64, ptr %i.da, align 8, !alias.scope !6241, !noalias !6242, !noundef !6 ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.zb, 5
  %i.zc = getelementptr inbounds nuw i8, ptr %i.za, i64 %.idx.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !6243
  %i.zd = icmp eq i64 %i.zb, 0
  br i1 %i.zd, label %_ZN4core4iter6traits8iterator8Iterator7collect17hff91430a907604deE.exit.thread.i.i, label %bb.et

bb.et:                                            ; preds = %._crit_edge.i
  %i.ze = load <2 x i32>, ptr %i.za, align 8, !noalias !6244
  %.val.i.i.i.peel.i.i.i.i.i.i.i.i = load i32, ptr %i.za, align 8, !noalias !6244
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !6245
  %i.zf = call noundef align 4 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef 4) #47, !noalias !6245 ; 7 uses
  %i.zg = icmp eq ptr %i.zf, null
  br i1 %i.zg, label %.noexc.i.i.i.i.i.i.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i, !prof !16

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.et
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 4, i64 noundef 8) #46
          to label %.noexc.i116 unwind label %.loopexit.split-lp.loopexit.split-lp.i112, !noalias !6225

.noexc.i116:                                      ; preds = %.noexc.i.i.i.i.i.i.i
  unreachable

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.et
  %i.zh = add <2 x i32> %i.ze, <i32 0, i32 1>
  store <2 x i32> %i.zh, ptr %i.zf, align 4, !noalias !6245
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !6246
  %i.zi = call noundef align 4 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, 9) 4) #47, !noalias !6246 ; 4 uses
  %i.zj = icmp eq ptr %i.zi, null
  br i1 %i.zj, label %bb.eu, label %bb.ev
end_hunk_0
begin_hunk_1_@_ZN18lindera_dictionary18dictionary_builder20character_definition26CharacterDefinitionBuilder5build17h0d32ae2e7a24da1aE:bb.a
  %i.akn = add i64 %.sroa.5.0.i.i.i.i1808, -16    ; 2 uses
  %i.ako = icmp eq i64 %i.akn, 0
  br i1 %i.ako, label %._crit_edge, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h1905dc5b9df07901E.exit.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h1905dc5b9df07901E.exit.i.i.i.i": ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h68387047d6a7d0ccE.exit.i.i, %bb.gr
  %.sroa.0.03.i.i.i.i1809 = phi ptr [ %i.akm, %bb.gr ], [ %i.akh, %_ZN4core4iter6traits8iterator8Iterator7collect17h68387047d6a7d0ccE.exit.i.i ] ; 2 uses
  %.sroa.5.0.i.i.i.i1808 = phi i64 [ %i.akn, %bb.gr ], [ %i.akj, %_ZN4core4iter6traits8iterator8Iterator7collect17h68387047d6a7d0ccE.exit.i.i ]
  %i.akp = load <16 x i32>, ptr %.sroa.0.03.i.i.i.i1809, align 4, !alias.scope !6330, !noalias !6331
  %i.akq = icmp eq <16 x i32> %i.akp, zeroinitializer
  %i.akr = bitcast <16 x i1> %i.akq to i16
  %.not = icmp eq i16 %i.akr, 0
  br i1 %.not, label %bb.gr, label %"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.thread.i.i.i"

._crit_edge:                                      ; preds = %bb.gr, %_ZN4core4iter6traits8iterator8Iterator7collect17h68387047d6a7d0ccE.exit.i.i
  %i.aks = shl i64 %i.akg, 2
  %.idx = and i64 %i.aks, 60                      ; 2 uses
  %i.akt = getelementptr inbounds nuw i8, ptr %i.akk, i64 %.idx
  %.not.not.not.i.not.not.i.i.i.i1810 = icmp samesign eq i64 %.idx, 0
  br i1 %.not.not.not.i.not.not.i.i.i.i1810, label %"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.i.i.i", label %.lr.ph1812

bb.gs:                                            ; preds = %.lr.ph1812
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akv, i64 4 ; 2 uses
  %.not.not.not.i.not.not.i.i.i.i = icmp eq ptr %i.aku, %i.akt
  br i1 %.not.not.not.i.not.not.i.i.i.i, label %"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.i.i.i", label %.lr.ph1812

.lr.ph1812:                                       ; preds = %._crit_edge, %bb.gs
  %i.akv = phi ptr [ %i.aku, %bb.gs ], [ %i.akk, %._crit_edge ] ; 2 uses
  %.val4.i.i.i.i.i = load i32, ptr %i.akv, align 4, !alias.scope !6330, !noalias !6332, !noundef !6
  %i.akw = icmp eq i32 %.val4.i.i.i.i.i, 0
  br i1 %i.akw, label %"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.thread.i.i.i", label %bb.gs

bb.gt:                                            ; preds = %.body.i.i.i, %bb.gv
  %.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body9.i.i.i, %.body.i.i.i ], [ %i.akz, %bb.gv ] ; 2 uses
  %.val6.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !6324, !noalias !6325 ; 2 uses
  %i.akx = icmp eq i64 %.val6.i.i.i, 0
  br i1 %i.akx, label %.body.i, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %.val7.i.i.i = load ptr, ptr %i.aki, align 8, !alias.scope !6324, !noalias !6325, !nonnull !6, !noundef !6
  %i.aky = shl nuw i64 %.val6.i.i.i, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i, i64 noundef %i.aky, i64 noundef range(i64 1, -9223372036854775807) 4) #47, !noalias !6331
  br label %.body.i

bb.gv:                                            ; preds = %bb.gy, %bb.gw
  %i.akz = landingpad { ptr, i32 }
          cleanup
  br label %bb.gt

"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.i.i.i": ; preds = %bb.gs, %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !6333)
  %i.ala = load i64, ptr %i.r, align 8, !range !14, !alias.scope !6334, !noalias !6335, !noundef !6
  %i.alb = icmp eq i64 %i.akg, %i.ala
  br i1 %i.alb, label %bb.gw, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h84e1d4a38ae1fc03E.exit.i.i.i"

bb.gw:                                            ; preds = %"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.i.i.i"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hf2af53d6300b3d33E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @110)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h84e1d4a38ae1fc03E.exit_crit_edge.i.i.i" unwind label %bb.gv, !noalias !6336

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h84e1d4a38ae1fc03E.exit_crit_edge.i.i.i": ; preds = %bb.gw
  %.pre.i.i11.i = load ptr, ptr %i.aki, align 8, !alias.scope !6334, !noalias !6335
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h84e1d4a38ae1fc03E.exit.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h84e1d4a38ae1fc03E.exit.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h84e1d4a38ae1fc03E.exit_crit_edge.i.i.i", %"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.i.i.i"
  %i.alc = phi ptr [ %.pre.i.i11.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h84e1d4a38ae1fc03E.exit_crit_edge.i.i.i" ], [ %i.akh, %"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.i.i.i" ] ; 2 uses
  %i.ald = getelementptr inbounds nuw [4 x i8], ptr %i.alc, i64 %i.akg
  store i32 0, ptr %i.ald, align 4, !noalias !6337
  %i.ale = add i64 %i.akg, 1
  br label %"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.thread.i.i.i"

"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.thread.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h1905dc5b9df07901E.exit.i.i.i.i", %.lr.ph1812, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h84e1d4a38ae1fc03E.exit.i.i.i"
  %i.alf = phi ptr [ %i.alc, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h84e1d4a38ae1fc03E.exit.i.i.i" ], [ %i.akh, %.lr.ph1812 ], [ %i.akh, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h1905dc5b9df07901E.exit.i.i.i.i" ] ; 4 uses
  %.sroa.6244.0.copyload246 = phi i64 [ %i.ale, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h84e1d4a38ae1fc03E.exit.i.i.i" ], [ %i.akg, %.lr.ph1812 ], [ %i.akg, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h1905dc5b9df07901E.exit.i.i.i.i" ] ; 14 uses
  %i.alg = icmp ult i64 %.sroa.6244.0.copyload246, 2
  br i1 %i.alg, label %bb.ha, label %bb.gx, !prof !7

bb.gx:                                            ; preds = %"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.thread.i.i.i"
  %i.alh = icmp ult i64 %.sroa.6244.0.copyload246, 21
  br i1 %i.alh, label %bb.gz, label %bb.gy, !prof !7

bb.gy:                                            ; preds = %bb.gx
  invoke void @_ZN4core5slice4sort8unstable7ipnsort17hc27fd8996ef4a100E(ptr noalias noundef nonnull align 4 %i.alf, i64 noundef %.sroa.6244.0.copyload246, ptr noalias noundef nonnull align 1 %i.a)
          to label %.thread.i.i.i unwind label %bb.gv, !noalias !6331

bb.gz:                                            ; preds = %bb.gx
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hd643ff933d4b9480E(ptr noalias noundef nonnull align 4 %i.alf, i64 noundef %.sroa.6244.0.copyload246, i64 noundef 1), !noalias !6331
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.gz, %bb.gy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6338
  store i64 0, ptr %i.f, align 8, !noalias !6338
  %i.ali = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ali, align 8, !noalias !6338
  %i.alj = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 0, ptr %i.alj, align 8, !noalias !6338
  br label %.lr.ph.i.i10.i

bb.ha:                                            ; preds = %"_ZN55_$LT$u32$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdbe2b265e78b0066E.exit.thread.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6338
  store i64 0, ptr %i.f, align 8, !noalias !6338
  %i.alk = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.alk, align 8, !noalias !6338
  %i.all = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 0, ptr %i.all, align 8, !noalias !6338
  %i.alm = icmp eq i64 %.sroa.6244.0.copyload246, 0
  br i1 %i.alm, label %.loopexit.i109, label %.lr.ph.i.i10.i

.lr.ph.i.i10.i:                                   ; preds = %bb.ha, %.thread.i.i.i
  %i.aln = phi ptr [ %i.alj, %.thread.i.i.i ], [ %i.all, %bb.ha ]
  %i.alo = phi ptr [ %i.ali, %.thread.i.i.i ], [ %i.alk, %bb.ha ]
  %.idx21.pn.i.i.i = shl nuw nsw i64 %.sroa.6244.0.copyload246, 2
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alf, i64 %.idx21.pn.i.i.i
  %i.alq = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.alr = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br label %bb.hb

bb.hb:                                            ; preds = %bb.hg, %.lr.ph.i.i10.i
  %i.als = phi ptr [ inttoptr (i64 8 to ptr), %.lr.ph.i.i10.i ], [ %i.ama, %bb.hg ]
  %i.alt = phi i64 [ 0, %.lr.ph.i.i10.i ], [ %i.amc, %bb.hg ] ; 3 uses
  %.sroa.02.013.i.i.i = phi ptr [ %i.alf, %.lr.ph.i.i10.i ], [ %i.alu, %bb.hg ] ; 2 uses
  %i.alu = getelementptr inbounds nuw i8, ptr %.sroa.02.013.i.i.i, i64 4 ; 2 uses
  %i.alv = load i32, ptr %.sroa.02.013.i.i.i, align 4, !noalias !6331, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6338
  store i64 0, ptr %i.e, align 8, !noalias !6338
  store ptr inttoptr (i64 8 to ptr), ptr %i.alq, align 8, !noalias !6338
  store i64 0, ptr %i.alr, align 8, !noalias !6338
  invoke fastcc void @"_ZN18lindera_dictionary18dictionary_builder20character_definition26CharacterDefinitionBuilder18build_lookup_table28_$u7b$$u7b$closure$u7d$$u7d$17h56c10bb4fec41166E"(ptr noundef nonnull readonly align 1 %i.q, i32 noundef %i.alv, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.hc unwind label %bb.hh, !noalias !6331

bb.hc:                                            ; preds = %bb.hb
  %.sroa.0.0.copyload.i15.i.i = load i64, ptr %i.e, align 8, !noalias !6338 ; 3 uses
  %.sroa.5.0.copyload.i16.i.i = load ptr, ptr %i.alq, align 8, !noalias !6338 ; 3 uses
  %.sroa.6.0.copyload.i17.i.i = load i64, ptr %i.alr, align 8, !noalias !6338
  call void @llvm.experimental.noalias.scope.decl(metadata !6339)
  %i.alw = load i64, ptr %i.f, align 8, !range !14, !alias.scope !6339, !noalias !6340, !noundef !6
  %i.alx = icmp eq i64 %i.alt, %i.alw
  br i1 %i.alx, label %bb.hd, label %bb.hg

bb.hd:                                            ; preds = %bb.hc
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h82f437a858268615E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @111)
          to label %._crit_edge17.i.i.i unwind label %bb.he, !noalias !6341

._crit_edge17.i.i.i:                              ; preds = %bb.hd
  %.pre18.i.i.i = load ptr, ptr %i.alo, align 8, !alias.scope !6339, !noalias !6340
  br label %bb.hg

bb.he:                                            ; preds = %bb.hd
  %i.aly = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.alz = icmp eq i64 %.sroa.0.0.copyload.i15.i.i, 0
  br i1 %i.alz, label %.body.i.i.i, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i16.i.i) ]
  br label %.body.sink.split.i.i.i

bb.hg:                                            ; preds = %._crit_edge17.i.i.i, %bb.hc
  %i.ama = phi ptr [ %.pre18.i.i.i, %._crit_edge17.i.i.i ], [ %i.als, %bb.hc ] ; 2 uses
  %i.amb = getelementptr inbounds nuw [24 x i8], ptr %i.ama, i64 %i.alt ; 3 uses
  store i64 %.sroa.0.0.copyload.i15.i.i, ptr %i.amb, align 8, !noalias !6342
  %.sroa.5.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.amb, i64 8
  store ptr %.sroa.5.0.copyload.i16.i.i, ptr %.sroa.5.0..sroa_idx2.i.i.i, align 8, !noalias !6342
  %.sroa.6.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.amb, i64 16
  store i64 %.sroa.6.0.copyload.i17.i.i, ptr %.sroa.6.0..sroa_idx4.i.i.i, align 8, !noalias !6342
  %i.amc = add nuw nsw i64 %i.alt, 1              ; 3 uses
  store i64 %i.amc, ptr %i.aln, align 8, !alias.scope !6339, !noalias !6340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6338
  %i.amd = icmp eq ptr %i.alu, %i.alp
  br i1 %i.amd, label %.loopexit.i109.loopexit, label %bb.hb

.body.sink.split.i.i.i:                           ; preds = %bb.hi, %bb.hf
  %.val.sink.i.i.i = phi i64 [ %.val.i.i.i108, %bb.hi ], [ %.sroa.0.0.copyload.i15.i.i, %bb.hf ]
  %.val5.sink.i.i.i = phi ptr [ %.val5.i.i.i, %bb.hi ], [ %.sroa.5.0.copyload.i16.i.i, %bb.hf ]
  %eh.lpad-body9.ph.i.i.i = phi { ptr, i32 } [ %i.amf, %bb.hi ], [ %i.aly, %bb.hf ]
  %i.ame = shl nuw i64 %.val.sink.i.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.sink.i.i.i, i64 noundef %i.ame, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !6331
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.hh, %.body.sink.split.i.i.i, %bb.he
  %eh.lpad-body9.i.i.i = phi { ptr, i32 } [ %i.amf, %bb.hh ], [ %i.aly, %bb.he ], [ %eh.lpad-body9.ph.i.i.i, %.body.sink.split.i.i.i ]
  call fastcc void @"_ZN4core3ptr131drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$lindera_dictionary..dictionary..character_definition..CategoryId$GT$$GT$$GT$17hb149694479f5cde4E"(ptr noalias noundef align 8 dereferenceable(24) %i.f) #48, !noalias !6331
  br label %bb.gt

bb.hh:                                            ; preds = %bb.hb
  %i.amf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i108 = load i64, ptr %i.e, align 8, !noalias !6338 ; 2 uses
  %i.amg = icmp eq i64 %.val.i.i.i108, 0
  br i1 %i.amg, label %.body.i.i.i, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %.val5.i.i.i = load ptr, ptr %i.alq, align 8, !noalias !6338, !nonnull !6, !noundef !6
  br label %.body.sink.split.i.i.i

.loopexit.i109.loopexit:                          ; preds = %bb.hg
  %.sroa.6247.24.copyload.pre = load i64, ptr %i.f, align 8, !noalias !6343
  %.sroa.8248.24..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.8248.24.copyload.pre = load ptr, ptr %.sroa.8248.24..sroa_idx.phi.trans.insert, align 8, !noalias !6343
  br label %.loopexit.i109

.loopexit.i109:                                   ; preds = %.loopexit.i109.loopexit, %bb.ha
  %.sroa.9249.24.copyload = phi i64 [ %i.amc, %.loopexit.i109.loopexit ], [ 0, %bb.ha ] ; 13 uses
  %.sroa.8248.24.copyload = phi ptr [ %.sroa.8248.24.copyload.pre, %.loopexit.i109.loopexit ], [ inttoptr (i64 8 to ptr), %bb.ha ] ; 6 uses
  %.sroa.6247.24.copyload = phi i64 [ %.sroa.6247.24.copyload.pre, %.loopexit.i109.loopexit ], [ 0, %bb.ha ] ; 3 uses
  %.sroa.0239.0.copyload240 = load i64, ptr %i.r, align 8, !alias.scope !6344, !noalias !6345 ; 3 uses
  %.sroa.5241.0.copyload243 = load ptr, ptr %i.aki, align 8, !alias.scope !6344, !noalias !6345 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !6328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !6239
  %.val.i110 = load ptr, ptr %i.bz, align 8, !alias.scope !6226, !noalias !6225, !nonnull !6, !noundef !6
  %.val9.i = load i64, ptr %i.by, align 8, !alias.scope !6226, !noalias !6225, !noundef !6 ; 10 uses
  %i.amh = shl i64 %.val9.i, 3                    ; 9 uses
  %i.ami = icmp ugt i64 %.val9.i, 2305843009213693951
  %i.amj = icmp ugt i64 %i.amh, 9223372036854775804
  %or.cond.i.i.i.i.i.i = or i1 %i.ami, %i.amj
  br i1 %or.cond.i.i.i.i.i.i, label %bb.hk, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !10

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %.loopexit.i109
  %i.amk = icmp eq i64 %i.amh, 0                  ; 2 uses
  br i1 %i.amk, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i124, label %bb.hj

bb.hj:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !6346
  %i.aml = call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.amh, i64 noundef range(i64 1, 9) 4) #47, !noalias !6346 ; 2 uses
  %i.amm = icmp eq ptr %i.aml, null
  br i1 %i.amm, label %bb.hk, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i124

bb.hk:                                            ; preds = %bb.hj, %.loopexit.i109
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 4, %bb.hj ], [ 0, %.loopexit.i109 ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.amh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @662) #46
          to label %.noexc16.i unwind label %bb.hl, !noalias !6225

.noexc16.i:                                       ; preds = %bb.hk
  unreachable

bb.hl:                                            ; preds = %bb.hk
  %i.amn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.amo = icmp eq i64 %.sroa.0239.0.copyload240, 0
  br i1 %i.amo, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u32$GT$$GT$17h6af8e83d15592f90E.exit.i", label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5241.0.copyload243) ]
  %i.amp = shl nuw i64 %.sroa.0239.0.copyload240, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5241.0.copyload243, i64 noundef %i.amp, i64 noundef range(i64 1, -9223372036854775807) 4) #47, !noalias !6347
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u32$GT$$GT$17h6af8e83d15592f90E.exit.i"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u32$GT$$GT$17h6af8e83d15592f90E.exit.i": ; preds = %bb.hm, %bb.hl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8248.24.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !6348), !noalias !6225
  %i.amq = icmp eq i64 %.sroa.9249.24.copyload, 0
  br i1 %i.amq, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7c94713ae900f35bE.exit.i.i", label %.lr.ph.i.i.i.i201

.lr.ph.i.i.i.i201:                                ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u32$GT$$GT$17h6af8e83d15592f90E.exit.i", %"_ZN4core3ptr108drop_in_place$LT$alloc..vec..Vec$LT$lindera_dictionary..dictionary..character_definition..CategoryId$GT$$GT$17h9e6a3a59cee56ed6E.exit.i.i.i.i"
  %.sroa.0.011.i.i.i.i = phi i64 [ %i.ams, %"_ZN4core3ptr108drop_in_place$LT$alloc..vec..Vec$LT$lindera_dictionary..dictionary..character_definition..CategoryId$GT$$GT$17h9e6a3a59cee56ed6E.exit.i.i.i.i" ], [ 0, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u32$GT$$GT$17h6af8e83d15592f90E.exit.i" ] ; 2 uses
  %i.amr = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8248.24.copyload, i64 %.sroa.0.011.i.i.i.i ; 2 uses
  %i.ams = add nuw i64 %.sroa.0.011.i.i.i.i, 1    ; 2 uses
  %.val8.i.i.i.i = load i64, ptr %i.amr, align 8, !alias.scope !6348, !noalias !6349 ; 2 uses
  %i.amt = icmp eq i64 %.val8.i.i.i.i, 0
  br i1 %i.amt, label %"_ZN4core3ptr108drop_in_place$LT$alloc..vec..Vec$LT$lindera_dictionary..dictionary..character_definition..CategoryId$GT$$GT$17h9e6a3a59cee56ed6E.exit.i.i.i.i", label %bb.hn

bb.hn:                                            ; preds = %.lr.ph.i.i.i.i201
  %i.amu = getelementptr i8, ptr %i.amr, i64 8
  %.val9.i.i.i.i = load ptr, ptr %i.amu, align 8, !alias.scope !6348, !noalias !6349, !nonnull !6, !noundef !6
  %i.amv = shl nuw i64 %.val8.i.i.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %i.amv, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !6350
  br label %"_ZN4core3ptr108drop_in_place$LT$alloc..vec..Vec$LT$lindera_dictionary..dictionary..character_definition..CategoryId$GT$$GT$17h9e6a3a59cee56ed6E.exit.i.i.i.i"

"_ZN4core3ptr108drop_in_place$LT$alloc..vec..Vec$LT$lindera_dictionary..dictionary..character_definition..CategoryId$GT$$GT$17h9e6a3a59cee56ed6E.exit.i.i.i.i": ; preds = %bb.hn, %.lr.ph.i.i.i.i201
  %i.amw = icmp eq i64 %i.ams, %.sroa.9249.24.copyload
  br i1 %i.amw, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7c94713ae900f35bE.exit.i.i", label %.lr.ph.i.i.i.i201

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7c94713ae900f35bE.exit.i.i": ; preds = %"_ZN4core3ptr108drop_in_place$LT$alloc..vec..Vec$LT$lindera_dictionary..dictionary..character_definition..CategoryId$GT$$GT$17h9e6a3a59cee56ed6E.exit.i.i.i.i", %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u32$GT$$GT$17h6af8e83d15592f90E.exit.i"
  %i.amx = icmp eq i64 %.sroa.6247.24.copyload, 0
  br i1 %i.amx, label %.body.i, label %bb.ho

bb.ho:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7c94713ae900f35bE.exit.i.i"
  %i.amy = mul nuw i64 %.sroa.6247.24.copyload, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8248.24.copyload, i64 noundef %i.amy, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !6349
  br label %.body.i

bb.hp:                                            ; preds = %.loopexit45.i
  %i.amz = getelementptr inbounds i8, ptr %i.yx, i64 -8
  %i.ana = load i64, ptr %i.amz, align 8, !noalias !6225, !noundef !6 ; 3 uses
  %.not7.i = icmp ult i64 %i.ana, %i.xh
  br i1 %.not7.i, label %bb.hq, label %bb.hs

bb.hq:                                            ; preds = %bb.hp
  %i.anb = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i.i.i.i, i64 %i.ana ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6351)
  %.val.i.i93 = load i64, ptr %i.anb, align 8, !alias.scope !6351, !noalias !6225 ; 2 uses
  %i.anc = icmp eq i64 %.val.i.i93, 0
  br i1 %i.anc, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i", label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.and = getelementptr inbounds nuw i8, ptr %i.anb, i64 8
  %.val1.i.i94 = load ptr, ptr %i.and, align 8, !alias.scope !6351, !noalias !6225, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i94, i64 noundef %.val.i.i93, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !6352
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i"

bb.hs:                                            ; preds = %bb.hp
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ana, i64 noundef %i.xh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @209) #46
          to label %bb.hu unwind label %bb.ht, !noalias !6225

bb.ht:                                            ; preds = %bb.hs
  %i.ane = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6353)
  %.val.i17.i = load i64, ptr %i.s, align 8, !alias.scope !6353, !noalias !6239 ; 2 uses
  %i.anf = icmp eq i64 %.val.i17.i, 0
  br i1 %i.anf, label %.lr.ph.i.i.i205.preheader, label %bb.hv

bb.hu:                                            ; preds = %bb.hs
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i": ; preds = %bb.hr, %bb.hq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.anb, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !6225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !6239
  %i.ang = icmp eq i64 %i.yy, 0
  br i1 %i.ang, label %._crit_edge.i, label %.lr.ph.i

bb.hv:                                            ; preds = %bb.ht
  %i.anh = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val1.i18.i = load ptr, ptr %i.anh, align 8, !alias.scope !6353, !noalias !6239, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i18.i, i64 noundef %.val.i17.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !6354
  br label %.lr.ph.i.i.i205.preheader

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i124: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, %bb.hj
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.aml, %bb.hj ] ; 3 uses
  %.sroa.4.0.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %.val9.i, %bb.hj ] ; 2 uses
  %i.ani = icmp samesign ule i64 %.val9.i, %.sroa.4.0.i.i.i.i
  call void @llvm.assume(i1 %i.ani)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 4 %.val.i110, i64 %i.amh, i1 false), !noalias !6355
  %i.anj = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store i64 %.sroa.4.0.i.i.i.i.i.i, ptr %i.anj, align 8, !noalias !6226
  %.sroa.6237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  store ptr %.sroa.10.0.i.i.i.i.i.i, ptr %.sroa.6237.0..sroa_idx, align 8, !noalias !6226
  %.sroa.9238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  store i64 %i.xh, ptr %.sroa.9238.0..sroa_idx, align 8, !noalias !6226
  %i.ank = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  store i64 %.sroa.0239.0.copyload240, ptr %i.ank, align 8, !noalias !6226
  %.sroa.5241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  store ptr %.sroa.5241.0.copyload243, ptr %.sroa.5241.0..sroa_idx, align 8, !noalias !6226
  %.sroa.6244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  store i64 %.sroa.6244.0.copyload246, ptr %.sroa.6244.0..sroa_idx, align 8, !noalias !6226
  %.sroa.6247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  store i64 %.sroa.6247.24.copyload, ptr %.sroa.6247.0..sroa_idx, align 8, !noalias !6226
  %.sroa.8248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 80
  store ptr %.sroa.8248.24.copyload, ptr %.sroa.8248.0..sroa_idx, align 8, !noalias !6226
  %.sroa.9249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 88
  store i64 %.sroa.9249.24.copyload, ptr %.sroa.9249.0..sroa_idx, align 8, !noalias !6226
  store i64 %.sroa.4.0.i.i.i.i, ptr %i.av, align 8, !alias.scope !6225, !noalias !6226
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.426.0..sroa_idx.i, align 8, !alias.scope !6225, !noalias !6226
  %.sroa.527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 %.val9.i, ptr %.sroa.527.0..sroa_idx.i, align 8, !alias.scope !6225, !noalias !6226
  call void @llvm.experimental.noalias.scope.decl(metadata !6356)
  br i1 %i.amk, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i8.i, label %bb.hw

bb.hw:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i124
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !6357
  %i.anl = call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.amh, i64 noundef range(i64 1, 9) 4) #47, !noalias !6357 ; 2 uses
  %i.anm = icmp eq ptr %i.anl, null
  br i1 %i.anm, label %bb.hx, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i8.i

bb.hx:                                            ; preds = %bb.hw
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.amh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @662) #46
          to label %.noexc142 unwind label %bb.iu

.noexc142:                                        ; preds = %bb.hx
  unreachable

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i8.i: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i124, %bb.hw
  %.sroa.10.0.i.i.i.i125 = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i124 ], [ %i.anl, %bb.hw ] ; 5 uses
  %.sroa.4.0.i.i.i.i126 = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i124 ], [ %.val9.i, %bb.hw ] ; 4 uses
  %i.ann = icmp samesign ule i64 %.val9.i, %.sroa.4.0.i.i.i.i126
  call void @llvm.assume(i1 %i.ann)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.10.0.i.i.i.i125, ptr nonnull readonly align 4 %.sroa.10.0.i.i.i.i, i64 %i.amh, i1 false), !noalias !6358
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6359
  br i1 %i.xj, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.thread.i.i.i", label %bb.hy

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.thread.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i8.i
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i.i)
  %i.ano = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %.loopexit.i130

bb.hy:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i8.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !6360
  %i.anp = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.xi, i64 noundef range(i64 1, 9) 8) #47, !noalias !6360 ; 6 uses
  %i.anq = icmp eq ptr %i.anp, null
  br i1 %i.anq, label %bb.hz, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i"

bb.hz:                                            ; preds = %bb.hy
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.xi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @663) #46
          to label %.noexc.i140 unwind label %bb.ie, !noalias !6361

.noexc.i140:                                      ; preds = %bb.hz
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i": ; preds = %bb.hy
  store i64 %i.xh, ptr %i.d, align 8, !noalias !6359
  %i.anr = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.anp, ptr %i.anr, align 8, !noalias !6359
  %i.ans = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %i.ant = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i.i.i.i, i64 %i.xh
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i130, label %.lr.ph.i.i.i127

.lr.ph.i.i.i127:                                  ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i", %bb.ib
  %.sroa.012.023.i.i.i = phi ptr [ %i.anx, %bb.ib ], [ %.sroa.10.0.i.i.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i" ] ; 3 uses
  %.sroa.7.022.i.i.i = phi i64 [ %i.anw, %bb.ib ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i" ] ; 3 uses
  %.sroa.10.021.i.i.i = phi i64 [ %i.anu, %bb.ib ], [ %i.xh, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i" ]
  %i.anu = add nsw i64 %.sroa.10.021.i.i.i, -1    ; 2 uses
  %i.anv = icmp eq ptr %.sroa.012.023.i.i.i, %i.ant
  br i1 %i.anv, label %.loopexit.i130, label %bb.ia

bb.ia:                                            ; preds = %.lr.ph.i.i.i127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6359
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.012.023.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @664)
          to label %bb.ib unwind label %bb.ic, !noalias !6362

bb.ib:                                            ; preds = %bb.ia
  %i.anw = add nuw nsw i64 %.sroa.7.022.i.i.i, 1
  %i.anx = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i.i.i, i64 24
  %i.any = getelementptr inbounds nuw [24 x i8], ptr %i.anp, i64 %.sroa.7.022.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.any, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !6362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6359
  %i.anz = icmp eq i64 %i.anu, 0
  br i1 %i.anz, label %.loopexit.i130, label %.lr.ph.i.i.i127

bb.ic:                                            ; preds = %bb.ia
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i.i.i, ptr %i.ans, align 8, !alias.scope !6363, !noalias !6359
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h3580973fa001ef15E"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #48, !noalias !6362
  br label %.body.i128

.body.i128:                                       ; preds = %bb.it, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h951691be7b6e9366E.exit.i215.a", %bb.ie, %bb.ic
  %.pn.i129 = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %bb.ic ], [ %i.aoc, %bb.ie ], [ %eh.lpad-body12.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h951691be7b6e9366E.exit.i215.a" ], [ %eh.lpad-body12.i, %bb.it ] ; 2 uses
  %i.aoa = icmp eq i64 %.sroa.4.0.i.i.i.i126, 0
  br i1 %i.aoa, label %.body143, label %bb.id

bb.id:                                            ; preds = %.body.i128
  %i.aob = shl nuw i64 %.sroa.4.0.i.i.i.i126, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i125, i64 noundef %i.aob, i64 noundef range(i64 1, -9223372036854775807) 4) #47, !noalias !6361
  br label %.body143

bb.ie:                                            ; preds = %bb.hz
  %i.aoc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i128

.loopexit.i130:                                   ; preds = %bb.ib, %.lr.ph.i.i.i127, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.thread.i.i.i"
  %.val23.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.thread.i.i.i" ], [ %i.anp, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i" ], [ %i.anp, %.lr.ph.i.i.i127 ], [ %i.anp, %bb.ib ] ; 5 uses
  %6 = phi ptr [ %i.ano, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.thread.i.i.i" ], [ %i.ans, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i" ], [ %i.ans, %.lr.ph.i.i.i127 ], [ %i.ans, %bb.ib ]
  store i64 %i.xh, ptr %6, align 8, !noalias !6359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6359
  %i.aod = shl i64 %.sroa.6244.0.copyload246, 2   ; 6 uses
  %i.aoe = icmp ugt i64 %.sroa.6244.0.copyload246, 4611686018427387903
  %i.aof = icmp ugt i64 %i.aod, 9223372036854775804
  %or.cond.i.i.i.i.i.i.i = or i1 %i.aoe, %i.aof
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.ig, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !10

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %.loopexit.i130
  %i.aog = icmp eq i64 %i.aod, 0
  br i1 %i.aog, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h94177641ff513119E.exit.i.i", label %bb.if

bb.if:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !6364
  %i.aoh = call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.aod, i64 noundef range(i64 1, 9) 4) #47, !noalias !6364 ; 2 uses
  %i.aoi = icmp eq ptr %i.aoh, null
  br i1 %i.aoi, label %bb.ig, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h94177641ff513119E.exit.i.i"

bb.ig:                                            ; preds = %bb.if, %.loopexit.i130
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 4, %bb.if ], [ 0, %.loopexit.i130 ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.aod, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @662) #46
          to label %.noexc10.i unwind label %bb.ir, !noalias !6361

.noexc10.i:                                       ; preds = %bb.ig
  unreachable

"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h94177641ff513119E.exit.i.i": ; preds = %bb.if, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.aoh, %bb.if ] ; 5 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %.sroa.6244.0.copyload246, %bb.if ] ; 4 uses
  %i.aoj = icmp samesign ule i64 %.sroa.6244.0.copyload246, %.sroa.4.0.i.i.i.i.i
  call void @llvm.assume(i1 %i.aoj)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.10.0.i.i.i.i.i, ptr nonnull readonly align 4 %.sroa.5241.0.copyload243, i64 %i.aod, i1 false), !noalias !6365
  call void @llvm.experimental.noalias.scope.decl(metadata !6366)
  %i.aok = mul i64 %.sroa.9249.24.copyload, 24    ; 5 uses
  %or.cond.i.i.i.i.i6.i.i = icmp ugt i64 %.sroa.9249.24.copyload, 384307168202282325
  br i1 %or.cond.i.i.i.i.i6.i.i, label %bb.ii, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i7.i.i, !prof !10

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i7.i.i: ; preds = %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h94177641ff513119E.exit.i.i"
  %i.aol = icmp eq i64 %i.aok, 0
  br i1 %i.aol, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.thread.i.i.i.i", label %bb.ih

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.thread.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i7.i.i
  %i.aom = icmp eq i64 %.sroa.9249.24.copyload, 0
  call void @llvm.assume(i1 %i.aom)
  br label %.loopexit293

bb.ih:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i7.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !6367
  %i.aon = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.aok, i64 noundef range(i64 1, 9) 8) #47, !noalias !6367 ; 7 uses
  %i.aoo = icmp eq ptr %i.aon, null
  br i1 %i.aoo, label %bb.ii, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i"

bb.ii:                                            ; preds = %bb.ih, %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h94177641ff513119E.exit.i.i"
  %.sroa.4.0.ph.i.i.i8.i.i = phi i64 [ 8, %bb.ih ], [ 0, %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h94177641ff513119E.exit.i.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i8.i.i, i64 %i.aok, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @663) #46
          to label %.noexc.i.i139 unwind label %bb.ip, !noalias !6368

.noexc.i.i139:                                    ; preds = %bb.ii
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i": ; preds = %bb.ih
  %i.aop = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8248.24.copyload, i64 %.sroa.9249.24.copyload
  %7 = icmp eq i64 %.sroa.9249.24.copyload, 0
  br i1 %7, label %.loopexit293, label %.lr.ph.i.i.i.i131

.lr.ph.i.i.i.i131:                                ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i", %bb.im
  %.sroa.014.034.i.i.i.i = phi ptr [ %i.aos, %bb.im ], [ %.sroa.8248.24.copyload, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i" ] ; 4 uses
  %.sroa.7.033.i.i.i.i = phi i64 [ %i.aot, %bb.im ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i" ] ; 4 uses
  %.sroa.10.032.i.i.i.i = phi i64 [ %i.aoq, %bb.im ], [ %.sroa.9249.24.copyload, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i" ]
  %i.aoq = add nsw i64 %.sroa.10.032.i.i.i.i, -1  ; 2 uses
  %i.aor = icmp eq ptr %.sroa.014.034.i.i.i.i, %i.aop
  br i1 %i.aor, label %.loopexit293, label %bb.ij

bb.ij:                                            ; preds = %.lr.ph.i.i.i.i131
  %i.aos = getelementptr inbounds nuw i8, ptr %.sroa.014.034.i.i.i.i, i64 24
  %i.aot = add nuw nsw i64 %.sroa.7.033.i.i.i.i, 1
  %i.aou = getelementptr i8, ptr %.sroa.014.034.i.i.i.i, i64 8
  %.val.i.i.i.i132 = load ptr, ptr %i.aou, align 8, !alias.scope !6366, !noalias !6369, !nonnull !6, !noundef !6
  %i.aov = getelementptr i8, ptr %.sroa.014.034.i.i.i.i, i64 16
  %.val11.i.i.i.i = load i64, ptr %i.aov, align 8, !alias.scope !6366, !noalias !6369, !noundef !6 ; 5 uses
  %i.aow = shl i64 %.val11.i.i.i.i, 3             ; 5 uses
  %i.aox = icmp ugt i64 %.val11.i.i.i.i, 2305843009213693951
  %i.aoy = icmp ugt i64 %i.aow, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i.i.i133 = or i1 %i.aox, %i.aoy
  br i1 %or.cond.i.i.i.i.i.i.i.i.i133, label %bb.il, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i134, !prof !10

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i134: ; preds = %bb.ij
  %i.aoz = icmp eq i64 %i.aow, 0
  br i1 %i.aoz, label %bb.im, label %bb.ik

bb.ik:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i134
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !6370
  %i.apa = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.aow, i64 noundef range(i64 1, 9) 8) #47, !noalias !6370 ; 2 uses
  %i.apb = icmp eq ptr %i.apa, null
  br i1 %i.apb, label %bb.il, label %bb.im

bb.il:                                            ; preds = %bb.ik, %bb.ij
  %.sroa.4.0.ph.i.i.i.i.i.i.i135 = phi i64 [ 8, %bb.ik ], [ 0, %bb.ij ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i135, i64 %i.aow, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @662) #46
          to label %.noexc.i.i.i.i unwind label %bb.in, !noalias !6371

.noexc.i.i.i.i:                                   ; preds = %bb.il
  unreachable

bb.im:                                            ; preds = %bb.ik, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i134
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i134 ], [ %i.apa, %bb.ik ] ; 2 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i134 ], [ %.val11.i.i.i.i, %bb.ik ] ; 2 uses
  %i.apc = icmp samesign ule i64 %.val11.i.i.i.i, %.sroa.4.0.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.apc)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.10.0.i.i.i.i.i.i.i, ptr nonnull readonly align 8 %.val.i.i.i.i132, i64 %i.aow, i1 false), !noalias !6372
  %i.apd = getelementptr inbounds nuw [24 x i8], ptr %i.aon, i64 %.sroa.7.033.i.i.i.i ; 3 uses
  store i64 %.sroa.4.0.i.i.i.i.i.i.i, ptr %i.apd, align 8, !noalias !6371
  %.sroa.422.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.apd, i64 8
  store ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %.sroa.422.0..sroa_idx.i.i.i.i, align 8, !noalias !6371
  %.sroa.523.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.apd, i64 16
  store i64 %.val11.i.i.i.i, ptr %.sroa.523.0..sroa_idx.i.i.i.i, align 8, !noalias !6371
  %i.ape = icmp eq i64 %i.aoq, 0
  br i1 %i.ape, label %.loopexit293, label %.lr.ph.i.i.i.i131

bb.in:                                            ; preds = %bb.il
  %i.apf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !6373), !noalias !6374
  %i.apg = icmp eq i64 %.sroa.7.033.i.i.i.i, 0
  br i1 %i.apg, label %"_ZN4core3ptr131drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$lindera_dictionary..dictionary..character_definition..CategoryId$GT$$GT$$GT$17hb149694479f5cde4E.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.in, %"_ZN4core3ptr108drop_in_place$LT$alloc..vec..Vec$LT$lindera_dictionary..dictionary..character_definition..CategoryId$GT$$GT$17h9e6a3a59cee56ed6E.exit.i.i.i.i.i.i"
  %.sroa.0.011.i.i.i.i.i.i = phi i64 [ %i.api, %"_ZN4core3ptr108drop_in_place$LT$alloc..vec..Vec$LT$lindera_dictionary..dictionary..character_definition..CategoryId$GT$$GT$17h9e6a3a59cee56ed6E.exit.i.i.i.i.i.i" ], [ 0, %bb.in ] ; 2 uses
  %i.aph = getelementptr inbounds nuw [24 x i8], ptr %i.aon, i64 %.sroa.0.011.i.i.i.i.i.i ; 2 uses
  %i.api = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i136 = load i64, ptr %i.aph, align 8, !alias.scope !6373, !noalias !6375 ; 2 uses
  %i.apj = icmp eq i64 %.val8.i.i.i.i.i.i136, 0
  br i1 %i.apj, label %"_ZN4core3ptr108drop_in_place$LT$alloc..vec..Vec$LT$lindera_dictionary..dictionary..character_definition..CategoryId$GT$$GT$17h9e6a3a59cee56ed6E.exit.i.i.i.i.i.i", label %bb.io

bb.io:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.apk = getelementptr i8, ptr %i.aph, i64 8
  %.val9.i.i.i.i.i.i137 = load ptr, ptr %i.apk, align 8, !alias.scope !6373, !noalias !6375, !nonnull !6, !noundef !6
  %i.apl = shl nuw i64 %.val8.i.i.i.i.i.i136, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i137, i64 noundef %i.apl, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !6376
  br label %"_ZN4core3ptr108drop_in_place$LT$alloc..vec..Vec$LT$lindera_dictionary..dictionary..character_definition..CategoryId$GT$$GT$17h9e6a3a59cee56ed6E.exit.i.i.i.i.i.i"

"_ZN4core3ptr108drop_in_place$LT$alloc..vec..Vec$LT$lindera_dictionary..dictionary..character_definition..CategoryId$GT$$GT$17h9e6a3a59cee56ed6E.exit.i.i.i.i.i.i": ; preds = %bb.io, %.lr.ph.i.i.i.i.i.i
  %i.apm = icmp eq i64 %i.api, %.sroa.7.033.i.i.i.i
  br i1 %i.apm, label %"_ZN4core3ptr131drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$lindera_dictionary..dictionary..character_definition..CategoryId$GT$$GT$$GT$17hb149694479f5cde4E.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i

"_ZN4core3ptr131drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$lindera_dictionary..dictionary..character_definition..CategoryId$GT$$GT$$GT$17hb149694479f5cde4E.exit.i.i.i": ; preds = %"_ZN4core3ptr108drop_in_place$LT$alloc..vec..Vec$LT$lindera_dictionary..dictionary..character_definition..CategoryId$GT$$GT$17h9e6a3a59cee56ed6E.exit.i.i.i.i.i.i", %bb.in
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aon, i64 noundef %i.aok, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !6375
  br label %.body.i.i138

bb.ip:                                            ; preds = %bb.ii
  %i.apn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i138

.body.i.i138:                                     ; preds = %bb.ip, %"_ZN4core3ptr131drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$lindera_dictionary..dictionary..character_definition..CategoryId$GT$$GT$$GT$17hb149694479f5cde4E.exit.i.i.i"
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.apn, %bb.ip ], [ %i.apf, %"_ZN4core3ptr131drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$lindera_dictionary..dictionary..character_definition..CategoryId$GT$$GT$$GT$17hb149694479f5cde4E.exit.i.i.i" ] ; 2 uses
  %i.apo = icmp eq i64 %.sroa.4.0.i.i.i.i.i, 0
  br i1 %i.apo, label %.body11.i, label %bb.iq

bb.iq:                                            ; preds = %.body.i.i138
  %i.app = shl nuw i64 %.sroa.4.0.i.i.i.i.i, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i, i64 noundef %i.app, i64 noundef range(i64 1, -9223372036854775807) 4) #47, !noalias !6368
  br label %.body11.i

bb.ir:                                            ; preds = %bb.ig
  %i.apq = landingpad { ptr, i32 }
          cleanup
  br label %.body11.i

.body11.i:                                        ; preds = %bb.ir, %bb.iq, %.body.i.i138
  %eh.lpad-body12.i = phi { ptr, i32 } [ %i.apq, %bb.ir ], [ %eh.lpad-body.i.i, %bb.iq ], [ %eh.lpad-body.i.i, %.body.i.i138 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6377), !noalias !6361
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h951691be7b6e9366E.exit.i215.a", label %.lr.ph.i.i.i210

.lr.ph.i.i.i210:                                  ; preds = %.body11.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i.i.i214"
  %.sroa.0.010.i.i.i211 = phi i64 [ %i.aps, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i.i.i214" ], [ 0, %.body11.i ] ; 2 uses
  %i.apr = getelementptr inbounds nuw [24 x i8], ptr %.val23.i.i.i, i64 %.sroa.0.010.i.i.i211 ; 2 uses
  %i.aps = add nuw i64 %.sroa.0.010.i.i.i211, 1   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6378), !noalias !6361
  %.val.i.i.i.i212 = load i64, ptr %i.apr, align 8, !alias.scope !6379, !noalias !6380 ; 2 uses
  %i.apt = icmp eq i64 %.val.i.i.i.i212, 0
  br i1 %i.apt, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i.i.i214", label %bb.is

bb.is:                                            ; preds = %.lr.ph.i.i.i210
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apr, i64 8
  %.val1.i.i.i.i213 = load ptr, ptr %i.apu, align 8, !alias.scope !6379, !noalias !6380, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i213, i64 noundef %.val.i.i.i.i212, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !6381
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i.i.i214"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i.i.i214": ; preds = %bb.is, %.lr.ph.i.i.i210
  %8 = icmp eq i64 %i.aps, %i.xh
  br i1 %8, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h951691be7b6e9366E.exit.i215.a", label %.lr.ph.i.i.i210

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h951691be7b6e9366E.exit.i215.a": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i.i.i214", %.body11.i
  %i.apv = icmp eq i64 %i.xh, 0
  br i1 %i.apv, label %.body.i128, label %bb.it

bb.it:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h951691be7b6e9366E.exit.i215.a"
  %9 = mul nuw nsw i64 %i.xh, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val23.i.i.i, i64 noundef %9, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !6380
  br label %.body.i128

bb.iu:                                            ; preds = %bb.hx
  %i.apw = landingpad { ptr, i32 }
          cleanup
  br label %.body143

.body143:                                         ; preds = %.body.i128, %bb.id, %bb.iu
  %eh.lpad-body144 = phi { ptr, i32 } [ %i.apw, %bb.iu ], [ %.pn.i129, %bb.id ], [ %.pn.i129, %.body.i128 ]
  call fastcc void @"_ZN4core3ptr94drop_in_place$LT$lindera_dictionary..dictionary..character_definition..CharacterDefinition$GT$17hd9d6a9967e0c0790E"(ptr noalias noundef align 8 dereferenceable(96) %i.av) #48
  br label %.body

.loopexit293:                                     ; preds = %bb.im, %.lr.ph.i.i.i.i131, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.thread.i.i.i.i"
  %.sroa.6.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.thread.i.i.i.i" ], [ %i.aon, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i" ], [ %i.aon, %.lr.ph.i.i.i.i131 ], [ %i.aon, %bb.im ] ; 3 uses
  store i64 %.sroa.4.0.i.i.i.i126, ptr %i.aw, align 8, !alias.scope !6356, !noalias !6382
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %.sroa.10.0.i.i.i.i125, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !6356, !noalias !6382
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 %.val9.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !6356, !noalias !6382
  %i.apx = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i64 %i.xh, ptr %i.apx, align 8, !noalias !6382
  %.sroa.5252.0..sroa_idx253 = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store ptr %.val23.i.i.i, ptr %.sroa.5252.0..sroa_idx253, align 8, !noalias !6382
  %.sroa.6255.0..sroa_idx256 = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  store i64 %i.xh, ptr %.sroa.6255.0..sroa_idx256, align 8, !noalias !6382
  %i.apy = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.apy, align 8, !alias.scope !6356, !noalias !6382
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !6356, !noalias !6382
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  store i64 %.sroa.6244.0.copyload246, ptr %.sroa.514.0..sroa_idx.i, align 8, !alias.scope !6356, !noalias !6382
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  store i64 %.sroa.9249.24.copyload, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !6356, !noalias !6382
  %.sroa.715.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 80
  store ptr %.sroa.6.0.i.i.i, ptr %.sroa.715.0..sroa_idx.i, align 8, !alias.scope !6356, !noalias !6382
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 88
  store i64 %.sroa.9249.24.copyload, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !6356, !noalias !6382
  call fastcc void @"_ZN4core3ptr94drop_in_place$LT$lindera_dictionary..dictionary..character_definition..CharacterDefinition$GT$17hd9d6a9967e0c0790E"(ptr noalias noundef align 8 dereferenceable(96) %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store i64 0, ptr %i.au, align 8
  %i.apz = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 16 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.apz, align 8
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 25 uses
  store i64 0, ptr %i.aqa, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !6383)
  %i.aqb = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i125, i64 %i.amh
  call void @llvm.experimental.noalias.scope.decl(metadata !6384)
  call void @llvm.experimental.noalias.scope.decl(metadata !6385), !noalias !6386
  call void @llvm.experimental.noalias.scope.decl(metadata !6387), !noalias !6386
  call void @llvm.experimental.noalias.scope.decl(metadata !6388), !noalias !6386
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h55eb09a37fd96b73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au, i64 noundef 0, i64 noundef 8, i64 noundef 1, i64 noundef 1)
          to label %bb.iw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.iv:                                            ; preds = %bb.jt, %.body171
  br i1 %.sroa.051.2, label %bb.ks, label %.body

bb.iw:                                            ; preds = %.loopexit293
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aqa, align 8, !alias.scope !6389, !noalias !6390 ; 3 uses
  %i.aqc = icmp sgt i64 %.pre.i.i.i.i.i.i.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.aqc), !noalias !6386
  %i.aqd = load ptr, ptr %i.apz, align 8, !alias.scope !6389, !noalias !6390, !nonnull !6, !noundef !6 ; 3 uses
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aqd, i64 %.pre.i.i.i.i.i.i.i.i.i.i.i.i
  store i64 %.val9.i, ptr %i.aqe, align 1, !noalias !6391
  %i.aqf = add nuw i64 %.pre.i.i.i.i.i.i.i.i.i.i.i.i, 8 ; 3 uses
  store i64 %i.aqf, ptr %i.aqa, align 8, !alias.scope !6389, !noalias !6390
  %i.aqg = icmp eq i64 %.val9.i, 0
  br i1 %i.aqg, label %.loopexit67.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i145

.lr.ph.i.i.i.i.i.i.i.i145:                        ; preds = %bb.iw, %bb.jc
  %i.aqh = phi ptr [ %i.are, %bb.jc ], [ %i.aqd, %bb.iw ]
  %i.aqi = phi i64 [ %i.ari, %bb.jc ], [ %i.aqf, %bb.iw ] ; 3 uses
  %i.aqj = phi ptr [ %i.aqk, %bb.jc ], [ %.sroa.10.0.i.i.i.i125, %bb.iw ] ; 4 uses
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqj, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6392)
  call void @llvm.experimental.noalias.scope.decl(metadata !6393)
  call void @llvm.experimental.noalias.scope.decl(metadata !6394)
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqj, i64 4
  %.val20.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.aql, align 1, !range !23, !alias.scope !6395, !noalias !6396, !noundef !6
  call void @llvm.experimental.noalias.scope.decl(metadata !6397)
  call void @llvm.experimental.noalias.scope.decl(metadata !6398), !noalias !6399
  call void @llvm.experimental.noalias.scope.decl(metadata !6400), !noalias !6399
  call void @llvm.experimental.noalias.scope.decl(metadata !6401), !noalias !6399
  %i.aqm = load i64, ptr %i.au, align 8, !range !14, !alias.scope !6402, !noalias !6403, !noundef !6 ; 2 uses
  %i.aqn = icmp eq i64 %i.aqm, %i.aqi
  br i1 %i.aqn, label %bb.ix, label %bb.iy, !prof !16

bb.ix:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i145
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h55eb09a37fd96b73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au, i64 noundef %i.aqi, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc152 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc152:                                        ; preds = %bb.ix
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aqa, align 8, !alias.scope !6404, !noalias !6403
  %.pre.i150 = load ptr, ptr %i.apz, align 8, !alias.scope !6404, !noalias !6403
  %.pre = load i64, ptr %i.au, align 8, !range !14, !alias.scope !6405, !noalias !6406
  br label %bb.iy

bb.iy:                                            ; preds = %.noexc152, %.lr.ph.i.i.i.i.i.i.i.i145
  %i.aqo = phi i64 [ %i.aqm, %.lr.ph.i.i.i.i.i.i.i.i145 ], [ %.pre, %.noexc152 ] ; 3 uses
  %i.aqp = phi ptr [ %i.aqh, %.lr.ph.i.i.i.i.i.i.i.i145 ], [ %.pre.i150, %.noexc152 ]
  %i.aqq = phi i64 [ %i.aqi, %.lr.ph.i.i.i.i.i.i.i.i145 ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc152 ] ; 3 uses
  %i.aqr = icmp sgt i64 %i.aqq, -1
  call void @llvm.assume(i1 %i.aqr), !noalias !6399
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqp, i64 %i.aqq
  store i8 %.val20.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.aqs, align 1, !noalias !6407
  %i.aqt = add nuw i64 %i.aqq, 1                  ; 3 uses
  store i64 %i.aqt, ptr %i.aqa, align 8, !alias.scope !6404, !noalias !6403
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqj, i64 5
  %.val22.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.aqu, align 1, !range !23, !alias.scope !6395, !noalias !6396, !noundef !6
  call void @llvm.experimental.noalias.scope.decl(metadata !6408)
  call void @llvm.experimental.noalias.scope.decl(metadata !6409), !noalias !6410
  call void @llvm.experimental.noalias.scope.decl(metadata !6411), !noalias !6410
  call void @llvm.experimental.noalias.scope.decl(metadata !6412), !noalias !6410
  %i.aqv = icmp eq i64 %i.aqo, %i.aqt
  br i1 %i.aqv, label %bb.iz, label %bb.ja, !prof !16

bb.iz:                                            ; preds = %bb.iy
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h55eb09a37fd96b73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au, i64 noundef %i.aqo, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc153 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc153:                                        ; preds = %bb.iz
  %.pre.i.i.i.i.i.i.i.i25.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aqa, align 8, !alias.scope !6413, !noalias !6406
  %.pre26.i = load i64, ptr %i.au, align 8, !range !14, !alias.scope !6414, !noalias !6415
  br label %bb.ja

bb.ja:                                            ; preds = %.noexc153, %bb.iy
  %i.aqw = phi i64 [ %i.aqo, %bb.iy ], [ %.pre26.i, %.noexc153 ]
  %i.aqx = phi i64 [ %i.aqt, %bb.iy ], [ %.pre.i.i.i.i.i.i.i.i25.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc153 ] ; 3 uses
  %i.aqy = icmp sgt i64 %i.aqx, -1
  call void @llvm.assume(i1 %i.aqy), !noalias !6410
  %i.aqz = load ptr, ptr %i.apz, align 8, !alias.scope !6413, !noalias !6406, !nonnull !6, !noundef !6 ; 2 uses
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqz, i64 %i.aqx
  store i8 %.val22.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ara, align 1, !noalias !6416
  %i.arb = add nuw i64 %i.aqx, 1                  ; 4 uses
  store i64 %i.arb, ptr %i.aqa, align 8, !alias.scope !6413, !noalias !6406
  %.val24.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.aqj, align 4, !alias.scope !6395, !noalias !6396, !noundef !6
  call void @llvm.experimental.noalias.scope.decl(metadata !6417)
  call void @llvm.experimental.noalias.scope.decl(metadata !6418), !noalias !6419
  call void @llvm.experimental.noalias.scope.decl(metadata !6420), !noalias !6419
  call void @llvm.experimental.noalias.scope.decl(metadata !6421), !noalias !6419
  %i.arc = sub i64 %i.aqw, %i.arb
  %i.ard = icmp ult i64 %i.arc, 4
  br i1 %i.ard, label %bb.jb, label %bb.jc, !prof !16

bb.jb:                                            ; preds = %bb.ja
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h55eb09a37fd96b73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au, i64 noundef %i.arb, i64 noundef 4, i64 noundef 1, i64 noundef 1)
          to label %.noexc154 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc154:                                        ; preds = %bb.jb
  %.pre.i.i.i.i.i.i.i.i27.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aqa, align 8, !alias.scope !6422, !noalias !6415
  %.pre27.i = load ptr, ptr %i.apz, align 8, !alias.scope !6422, !noalias !6415
  br label %bb.jc

bb.jc:                                            ; preds = %.noexc154, %bb.ja
  %i.are = phi ptr [ %i.aqz, %bb.ja ], [ %.pre27.i, %.noexc154 ] ; 3 uses
  %i.arf = phi i64 [ %i.arb, %bb.ja ], [ %.pre.i.i.i.i.i.i.i.i27.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc154 ] ; 3 uses
  %i.arg = icmp sgt i64 %i.arf, -1
  call void @llvm.assume(i1 %i.arg), !noalias !6419
  %i.arh = getelementptr inbounds nuw i8, ptr %i.are, i64 %i.arf
  store i32 %.val24.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.arh, align 1, !noalias !6423
  %i.ari = add nuw i64 %i.arf, 4                  ; 3 uses
  store i64 %i.ari, ptr %i.aqa, align 8, !alias.scope !6422, !noalias !6415
  %i.arj = icmp eq ptr %i.aqk, %i.aqb
  br i1 %i.arj, label %.loopexit67.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i145

.loopexit67.i.i.i:                                ; preds = %bb.jc, %bb.iw
  %i.ark = phi ptr [ %i.aqd, %bb.iw ], [ %i.are, %bb.jc ]
  %i.arl = phi i64 [ %i.aqf, %bb.iw ], [ %i.ari, %bb.jc ] ; 3 uses
  %i.arm = getelementptr inbounds nuw i8, ptr %.val23.i.i.i, i64 %i.xi
  call void @llvm.experimental.noalias.scope.decl(metadata !6424)
  call void @llvm.experimental.noalias.scope.decl(metadata !6425), !noalias !6426
  call void @llvm.experimental.noalias.scope.decl(metadata !6427), !noalias !6426
  call void @llvm.experimental.noalias.scope.decl(metadata !6428), !noalias !6426
  %i.arn = load i64, ptr %i.au, align 8, !range !14, !alias.scope !6429, !noalias !6430, !noundef !6
  %i.aro = sub i64 %i.arn, %i.arl
  %i.arp = icmp ult i64 %i.aro, 8
  br i1 %i.arp, label %bb.jd, label %bb.je, !prof !16

bb.jd:                                            ; preds = %.loopexit67.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h55eb09a37fd96b73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au, i64 noundef %i.arl, i64 noundef 8, i64 noundef 1, i64 noundef 1)
          to label %.noexc155 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc155:                                        ; preds = %bb.jd
  %.pre.i.i.i.i.i.i.i.i.i28.i.i.i = load i64, ptr %i.aqa, align 8, !alias.scope !6431, !noalias !6430
  %.pre28.i = load ptr, ptr %i.apz, align 8, !alias.scope !6431, !noalias !6430
  br label %bb.je

bb.je:                                            ; preds = %.noexc155, %.loopexit67.i.i.i
  %i.arq = phi ptr [ %i.ark, %.loopexit67.i.i.i ], [ %.pre28.i, %.noexc155 ]
  %i.arr = phi i64 [ %i.arl, %.loopexit67.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i28.i.i.i, %.noexc155 ] ; 3 uses
  %i.ars = icmp sgt i64 %i.arr, -1
  call void @llvm.assume(i1 %i.ars), !noalias !6426
  %i.art = getelementptr inbounds nuw i8, ptr %i.arq, i64 %i.arr
  store i64 %i.xh, ptr %i.art, align 1, !noalias !6432
  %i.aru = add nuw i64 %i.arr, 8                  ; 3 uses
  store i64 %i.aru, ptr %i.aqa, align 8, !alias.scope !6431, !noalias !6430
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit66.i.i.i, label %.lr.ph.i.i.i.i.i27.i.i.i

.lr.ph.i.i.i.i.i27.i.i.i:                         ; preds = %bb.je, %bb.ji
  %i.arv = phi i64 [ %i.asp, %bb.ji ], [ %i.aru, %bb.je ] ; 3 uses
  %i.arw = phi ptr [ %i.arx, %bb.ji ], [ %.val23.i.i.i, %bb.je ] ; 3 uses
  %i.arx = getelementptr inbounds nuw i8, ptr %i.arw, i64 24 ; 2 uses
  %i.ary = getelementptr i8, ptr %i.arw, i64 8
  %.val5.i.i.i.i.i.i.i.i = load ptr, ptr %i.ary, align 8, !alias.scope !6433, !noalias !6434, !nonnull !6, !noundef !6
  %i.arz = getelementptr i8, ptr %i.arw, i64 16
  %.val6.i.i.i.i.i.i.i.i = load i64, ptr %i.arz, align 8, !alias.scope !6433, !noalias !6434, !noundef !6 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6435)
  call void @llvm.experimental.noalias.scope.decl(metadata !6436), !noalias !6437
  call void @llvm.experimental.noalias.scope.decl(metadata !6438), !noalias !6437
  call void @llvm.experimental.noalias.scope.decl(metadata !6439), !noalias !6437
  %i.asa = load i64, ptr %i.au, align 8, !range !14, !alias.scope !6440, !noalias !6441, !noundef !6 ; 2 uses
  %i.asb = sub i64 %i.asa, %i.arv
  %i.asc = icmp ult i64 %i.asb, 8
  br i1 %i.asc, label %bb.jf, label %bb.jg, !prof !16
end_hunk_1
begin_hunk_2_@_ZN18lindera_dictionary18dictionary_builder20character_definition33CharacterDefinitionBuilderOptions7builder17h85b3469c38b8aaa2E:bb.a
  %i.ap = icmp eq i64 %i.am, 0
  br i1 %i.ap, label %bb.r, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !6662
  %i.aq = tail call noundef align 16 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.am, i64 noundef range(i64 1, -9223372036854775807) 16) #47, !noalias !6662 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.q, label %bb.r

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.as = invoke { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h092909d5f8586bb0E(i1 noundef zeroext true)
          to label %.noexc20 unwind label %bb.w

bb.q:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"
  %i.at = invoke { i64, i64 } @_ZN9hashbrown3raw11Fallibility9alloc_err17h44476d943b442629E(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.am)
          to label %.noexc20 unwind label %bb.w

.noexc20:                                         ; preds = %bb.q, %bb.p
  %.pn.i.i.i = phi { i64, i64 } [ %i.as, %bb.p ], [ %i.at, %bb.q ] ; 2 uses
  %.sroa.7.0.ph.i.i.i = extractvalue { i64, i64 } %.pn.i.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i.i = extractvalue { i64, i64 } %.pn.i.i.i, 1
  %.pre.i.i = add i64 %.sroa.7.0.ph.i.i.i, 17
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17h00a09dc0d3d66179E.exit.i.i"

bb.r:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i", %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i
  %.sroa.07.0.i.i6.i.i.i.i = phi ptr [ %i.aq, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i" ], [ inttoptr (i64 16 to ptr), %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i6.i.i.i.i, i64 %i.ak
  %i.av = icmp ult i64 %i.ag, 8
  %i.aw = lshr i64 %i.ai, 3
  %i.ax = mul nuw nsw i64 %i.aw, 7
  %.sroa.02.0.i.i.i.i = select i1 %i.av, i64 %i.ag, i64 %i.ax
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17h00a09dc0d3d66179E.exit.i.i"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17h00a09dc0d3d66179E.exit.i.i": ; preds = %bb.r, %.noexc20
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %.noexc20 ], [ %i.al, %bb.r ]
  %.sroa.7.0.i.i = phi i64 [ %.sroa.12.0.ph.i.i.i, %.noexc20 ], [ %.sroa.02.0.i.i.i.i, %bb.r ]
  %.sroa.5.0.i.i = phi i64 [ %.sroa.7.0.ph.i.i.i, %.noexc20 ], [ %i.ag, %bb.r ]
  %.sroa.0.0.i.i = phi ptr [ null, %.noexc20 ], [ %i.au, %bb.r ] ; 3 uses
  store ptr %.sroa.0.0.i.i, ptr %i.b, align 8, !noalias !6661
  %.sroa.4.0..sroa_idx.i.i18 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.i.i, ptr %.sroa.4.0..sroa_idx.i.i18, align 8, !noalias !6661
  %.sroa.52.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i.i, ptr %.sroa.52.0..sroa_idx.i.i, align 8, !noalias !6661
  %.sroa.6.0..sroa_idx.i.i19 = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i19, align 8, !noalias !6661
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6663)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6664)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6665)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6666)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i.i, ptr nonnull align 1 %i.ab, i64 %.pre-phi.i.i, i1 false), !noalias !6667
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !6668, !noalias !6669, !noundef !6 ; 3 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.loopexit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17h00a09dc0d3d66179E.exit.i.i"
  %.val3.i.i.i.i.i = load <16 x i8>, ptr %i.ab, align 16, !noalias !6670
  %i.bb = icmp sgt <16 x i8> %.val3.i.i.i.i.i, splat (i8 -1)
  %i.bc = bitcast <16 x i1> %i.bb to i16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bf = ptrtoint ptr %i.ab to i64
  br label %bb.s

.body.i.i:                                        ; preds = %.loopexit.i.i.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr395drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$LP$usize$C$$RF$mut$u20$hashbrown..raw..RawTable$LT$$LP$alloc..string..String$C$lindera_dictionary..dictionary..character_definition..CategoryId$RP$$GT$$RP$$C$hashbrown..raw..RawTable$LT$$LP$alloc..string..String$C$lindera_dictionary..dictionary..character_definition..CategoryId$RP$$GT$..clone_from_impl..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h6e57d00695116440E"(i64 %.sroa.015.029.i.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #48, !noalias !6671
  call fastcc void @"_ZN4core3ptr149drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$alloc..string..String$C$lindera_dictionary..dictionary..character_definition..CategoryId$RP$$GT$$GT$17h9fe51295f1ebe3f4E"(ptr noalias noundef align 8 dereferenceable(32) %i.b) #48, !noalias !6661
  br label %.body

bb.s:                                             ; preds = %bb.t, %.lr.ph.i.i.i.i
  %.sroa.015.029.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.cb, %bb.t ]
  %.sroa.016.028.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %.sroa.016.1.i.i.i.i, %bb.t ] ; 2 uses
  %.sroa.6.027.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i ], [ %.sroa.6.1.i.i.i.i, %bb.t ] ; 2 uses
  %.sroa.817.026.i.i.i.i = phi i16 [ %i.bc, %.lr.ph.i.i.i.i ], [ %i.bt, %bb.t ] ; 2 uses
  %.sroa.1018.025.i.i.i.i = phi i64 [ %i.az, %.lr.ph.i.i.i.i ], [ %i.br, %bb.t ]
  %.not13.i.i.i.i.i = icmp eq i16 %.sroa.817.026.i.i.i.i, 0
  br i1 %.not13.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.s, %.lr.ph.i.i.i.i.i
  %i.bh = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i ], [ %.sroa.6.027.i.i.i.i, %bb.s ] ; 2 uses
  %i.bi = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i ], [ %.sroa.016.028.i.i.i.i, %bb.s ]
  %.val11.i.i.i.i.i = load <16 x i8>, ptr %i.bh, align 16, !noalias !6672
  %i.bj = icmp sgt <16 x i8> %.val11.i.i.i.i.i, splat (i8 -1)
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 -512 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %.cast.i.i.i.i.i = bitcast <16 x i1> %i.bj to i16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i.i, %bb.s
  %.sroa.6.1.i.i.i.i = phi ptr [ %.sroa.6.027.i.i.i.i, %bb.s ], [ %i.bl, %.lr.ph.i.i.i.i.i ]
  %.sroa.016.1.i.i.i.i = phi ptr [ %.sroa.016.028.i.i.i.i, %bb.s ], [ %i.bk, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i16 [ %.sroa.817.026.i.i.i.i, %bb.s ], [ %.cast.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.bm = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.bn = zext nneg i16 %i.bm to i64
  %i.bo = sub nsw i64 0, %i.bn
  %i.bp = getelementptr inbounds [32 x i8], ptr %.sroa.016.1.i.i.i.i, i64 %i.bo ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6667
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -32
  call void @llvm.experimental.noalias.scope.decl(metadata !6673)
  call void @llvm.experimental.noalias.scope.decl(metadata !6674)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @317)
          to label %bb.t unwind label %.body.i.i, !noalias !6667

bb.t:                                             ; preds = %.loopexit.i.i.i.i
  %i.br = add i64 %.sroa.1018.025.i.i.i.i, -1     ; 2 uses
  %i.bs = add i16 %.lcssa.i.i.i.i.i, -1
  %i.bt = and i16 %i.bs, %.lcssa.i.i.i.i.i
  %i.bu = getelementptr inbounds i8, ptr %i.bp, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.bu, align 8, !alias.scope !6674, !noalias !6675, !noundef !6
  store i64 %.val.i.i.i.i.i, ptr %i.be, align 8, !alias.scope !6673, !noalias !6676
  %i.bv = ptrtoint ptr %i.bp to i64
  %i.bw = sub i64 %i.bf, %i.bv
  %i.bx = ashr exact i64 %i.bw, 5                 ; 2 uses
  %i.by = sub nsw i64 0, %i.bx
  %i.bz = getelementptr inbounds [32 x i8], ptr %.sroa.0.0.i.i, i64 %i.by
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !6667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6667
  %i.cb = add nsw i64 %i.bx, 1
  %i.cc = icmp eq i64 %i.br, 0
  br i1 %i.cc, label %.loopexit.i.i, label %bb.s

.loopexit.i.i:                                    ; preds = %bb.t, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17h00a09dc0d3d66179E.exit.i.i"
  store i64 %i.az, ptr %.sroa.6.0..sroa_idx.i.i19, align 8, !alias.scope !6677, !noalias !6671
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !6668, !noalias !6669, !noundef !6
  store i64 %i.ce, ptr %.sroa.52.0..sroa_idx.i.i, align 8, !alias.scope !6677, !noalias !6671
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6661
  br label %bb.y

bb.u:                                             ; preds = %bb.i
  %i.cf = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 8, !range !23, !noalias !6678, !noundef !6
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %._ZN4core3ops8function6FnOnce9call_once17h1523ca1a808b82ecE.exit_crit_edge.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9db156a84e916336E.exit.i.i", !prof !7

._ZN4core3ops8function6FnOnce9call_once17h1523ca1a808b82ecE.exit_crit_edge.i.i: ; preds = %bb.u
  %.pre.i.i22 = load i64, ptr %i.cf, align 8, !noalias !6679
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !6679
  br label %bb.x

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9db156a84e916336E.exit.i.i": ; preds = %bb.u
  %i.cj = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc23 unwind label %bb.w   ; 2 uses

.noexc23:                                         ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9db156a84e916336E.exit.i.i"
  %i.ck = extractvalue { i64, i64 } %i.cj, 0
  %i.cl = extractvalue { i64, i64 } %i.cj, 1      ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i64 %i.cl, ptr %i.cm, align 8, !noalias !6680
  store i8 1, ptr %i.cg, align 8, !noalias !6680
  br label %bb.x

.body:                                            ; preds = %.body29, %bb.w, %.body.i.i
  %.pn = phi { ptr, i32 } [ %eh.lpad-body30, %.body29 ], [ %i.cp, %bb.w ], [ %i.bg, %.body.i.i ] ; 2 uses
  %i.cn = icmp eq i64 %.sroa.0.0, 0
  br i1 %i.cn, label %"_ZN4core3ptr110drop_in_place$LT$alloc..vec..Vec$LT$lindera_dictionary..dictionary..character_definition..CategoryData$GT$$GT$17h88279ef7e94e188bE.exit", label %bb.v

bb.v:                                             ; preds = %.body
  %i.co = shl nuw i64 %.sroa.0.0, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0, i64 noundef %i.co, i64 noundef range(i64 1, -9223372036854775807) 4) #47
  br label %"_ZN4core3ptr110drop_in_place$LT$alloc..vec..Vec$LT$lindera_dictionary..dictionary..character_definition..CategoryData$GT$$GT$17h88279ef7e94e188bE.exit"

bb.w:                                             ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9db156a84e916336E.exit.i.i", %bb.q, %bb.p
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %.noexc23, %._ZN4core3ops8function6FnOnce9call_once17h1523ca1a808b82ecE.exit_crit_edge.i.i
  %.pre-phi46 = phi i64 [ %i.cl, %.noexc23 ], [ %.pre1.i.i, %._ZN4core3ops8function6FnOnce9call_once17h1523ca1a808b82ecE.exit_crit_edge.i.i ]
  %.pre-phi = phi i64 [ %i.ck, %.noexc23 ], [ %.pre.i.i22, %._ZN4core3ops8function6FnOnce9call_once17h1523ca1a808b82ecE.exit_crit_edge.i.i ] ; 2 uses
  %i.cq = add i64 %.pre-phi, 1
  store i64 %i.cq, ptr %i.cf, align 8, !noalias !6679
  br label %bb.y

bb.y:                                             ; preds = %bb.m, %.loopexit.i.i, %bb.x
  %.sink = phi ptr [ @215, %bb.x ], [ %i.c, %.loopexit.i.i ], [ %i.c, %bb.m ]
  %.val.i.sink = phi i64 [ %.pre-phi, %bb.x ], [ %.val.i, %.loopexit.i.i ], [ %.val.i, %bb.m ]
  %.val1.i.sink = phi i64 [ %.pre-phi46, %bb.x ], [ %.val1.i, %.loopexit.i.i ], [ %.val1.i, %bb.m ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %.sink, i64 32, i1 false)
  %.sroa.4.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %.val.i.sink, ptr %.sroa.4.0..sroa_idx35, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %.val1.i.sink, ptr %.sroa.536.0..sroa_idx, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cs = load i64, ptr %i.cr, align 8, !range !15, !noundef !6
  %.not8 = icmp eq i64 %i.cs, -9223372036854775808
  br i1 %.not8, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2756444ac693f346E.exit", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val16 = load ptr, ptr %i.ct, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val17 = load i64, ptr %i.cu, align 8, !noundef !6 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6681)
  %i.cv = shl i64 %.val17, 5                      ; 5 uses
  %i.cw = icmp ugt i64 %.val17, 576460752303423487
  %i.cx = icmp ugt i64 %i.cv, 9223372036854775800
  %or.cond.i.i.i.i.i24 = or i1 %i.cw, %i.cx
  br i1 %or.cond.i.i.i.i.i24, label %bb.ab, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i25, !prof !10

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i25: ; preds = %bb.z
  %i.cy = icmp eq i64 %i.cv, 0
  br i1 %i.cy, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.thread.i.i", label %bb.aa

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.thread.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i25
  %i.cz = icmp eq i64 %.val17, 0
  call void @llvm.assume(i1 %i.cz)
  br label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2756444ac693f346E.exit"

bb.aa:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i25
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !6682
  %i.da = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.cv, i64 noundef range(i64 1, 9) 8) #47, !noalias !6682 ; 7 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.ab, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i"

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sroa.4.0.ph.i.i.i27 = phi i64 [ 8, %bb.aa ], [ 0, %bb.z ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i27, i64 %i.cv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @663) #46
          to label %.noexc28 unwind label %bb.ai

.noexc28:                                         ; preds = %bb.ab
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i": ; preds = %bb.aa
  %i.dc = getelementptr inbounds nuw [32 x i8], ptr %.val16, i64 %.val17
  %2 = icmp eq i64 %.val17, 0
  br i1 %2, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2756444ac693f346E.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i", %bb.af
  %.sroa.012.037.i.i = phi ptr [ %i.df, %bb.af ], [ %.val16, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i" ] ; 5 uses
  %.sroa.7.036.i.i = phi i64 [ %i.dg, %bb.af ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i" ] ; 4 uses
  %.sroa.10.035.i.i = phi i64 [ %i.dd, %bb.af ], [ %.val17, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i" ]
  %i.dd = add nsw i64 %.sroa.10.035.i.i, -1       ; 2 uses
  %i.de = icmp eq ptr %.sroa.012.037.i.i, %i.dc
  br i1 %i.de, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2756444ac693f346E.exit", label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.012.037.i.i, i64 32
  %i.dg = add nuw nsw i64 %.sroa.7.036.i.i, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !6683)
  %i.dh = load <2 x i32>, ptr %.sroa.012.037.i.i, align 4, !alias.scope !6684, !noalias !6685
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.012.037.i.i, i64 16
  %.val.i.i.i = load ptr, ptr %i.di, align 8, !alias.scope !6684, !noalias !6685, !nonnull !6, !noundef !6
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.012.037.i.i, i64 24
  %.val1.i.i.i = load i64, ptr %i.dj, align 8, !alias.scope !6684, !noalias !6685, !noundef !6 ; 5 uses
  %i.dk = shl i64 %.val1.i.i.i, 3                 ; 5 uses
  %i.dl = icmp ugt i64 %.val1.i.i.i, 2305843009213693951
  %i.dm = icmp ugt i64 %i.dk, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i.i = or i1 %i.dl, %i.dm
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.ae, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i, !prof !10

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i: ; preds = %bb.ac
  %i.dn = icmp eq i64 %i.dk, 0
  br i1 %i.dn, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !6686
  %i.do = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.dk, i64 noundef range(i64 1, 9) 8) #47, !noalias !6686 ; 2 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 8, %bb.ad ], [ 0, %bb.ac ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %i.dk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @662) #46
          to label %.noexc.i.i unwind label %bb.ag, !noalias !6687

.noexc.i.i:                                       ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ad, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %i.do, %bb.ad ] ; 2 uses
  %.sroa.4.0.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %.val1.i.i.i, %bb.ad ] ; 2 uses
  %i.dq = icmp samesign ule i64 %.val1.i.i.i, %.sroa.4.0.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.dq)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.10.0.i.i.i.i.i.i, ptr nonnull readonly align 8 %.val.i.i.i, i64 %i.dk, i1 false), !noalias !6688
  %i.dr = getelementptr inbounds nuw [32 x i8], ptr %i.da, i64 %.sroa.7.036.i.i ; 4 uses
  store <2 x i32> %i.dh, ptr %i.dr, align 8, !noalias !6687
  %.sroa.524.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store i64 %.sroa.4.0.i.i.i.i.i.i, ptr %.sroa.524.0..sroa_idx.i.i, align 8, !noalias !6687
  %.sroa.625.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store ptr %.sroa.10.0.i.i.i.i.i.i, ptr %.sroa.625.0..sroa_idx.i.i, align 8, !noalias !6687
  %.sroa.726.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  store i64 %.val1.i.i.i, ptr %.sroa.726.0..sroa_idx.i.i, align 8, !noalias !6687
  %i.ds = icmp eq i64 %i.dd, 0
  br i1 %i.ds, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2756444ac693f346E.exit", label %.lr.ph.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !6689), !noalias !6690
  %i.du = icmp eq i64 %.sroa.7.036.i.i, 0
  br i1 %i.du, label %"_ZN4core3ptr151drop_in_place$LT$alloc..vec..Vec$LT$$LP$u32$C$u32$C$alloc..vec..Vec$LT$lindera_dictionary..dictionary..character_definition..CategoryId$GT$$RP$$GT$$GT$17h44cf5bcb5f61dcecE.exit.i", label %.lr.ph.i.i.i.i26

.lr.ph.i.i.i.i26:                                 ; preds = %bb.ag, %"_ZN4core3ptr128drop_in_place$LT$$LP$u32$C$u32$C$alloc..vec..Vec$LT$lindera_dictionary..dictionary..character_definition..CategoryId$GT$$RP$$GT$17habda0c30aafbeeadE.exit.i.i.i.i"
  %.sroa.0.011.i.i.i.i = phi i64 [ %i.dw, %"_ZN4core3ptr128drop_in_place$LT$$LP$u32$C$u32$C$alloc..vec..Vec$LT$lindera_dictionary..dictionary..character_definition..CategoryId$GT$$RP$$GT$17habda0c30aafbeeadE.exit.i.i.i.i" ], [ 0, %bb.ag ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [32 x i8], ptr %i.da, i64 %.sroa.0.011.i.i.i.i ; 2 uses
  %i.dw = add nuw nsw i64 %.sroa.0.011.i.i.i.i, 1 ; 2 uses
  %i.dx = getelementptr i8, ptr %i.dv, i64 8
  %.val8.i.i.i.i = load i64, ptr %i.dx, align 8, !alias.scope !6689, !noalias !6691 ; 2 uses
  %i.dy = icmp eq i64 %.val8.i.i.i.i, 0
  br i1 %i.dy, label %"_ZN4core3ptr128drop_in_place$LT$$LP$u32$C$u32$C$alloc..vec..Vec$LT$lindera_dictionary..dictionary..character_definition..CategoryId$GT$$RP$$GT$17habda0c30aafbeeadE.exit.i.i.i.i", label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i26
  %i.dz = getelementptr i8, ptr %i.dv, i64 16
  %.val9.i.i.i.i = load ptr, ptr %i.dz, align 8, !alias.scope !6689, !noalias !6691, !nonnull !6, !noundef !6
  %i.ea = shl nuw i64 %.val8.i.i.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %i.ea, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !6692
  br label %"_ZN4core3ptr128drop_in_place$LT$$LP$u32$C$u32$C$alloc..vec..Vec$LT$lindera_dictionary..dictionary..character_definition..CategoryId$GT$$RP$$GT$17habda0c30aafbeeadE.exit.i.i.i.i"

"_ZN4core3ptr128drop_in_place$LT$$LP$u32$C$u32$C$alloc..vec..Vec$LT$lindera_dictionary..dictionary..character_definition..CategoryId$GT$$RP$$GT$17habda0c30aafbeeadE.exit.i.i.i.i": ; preds = %bb.ah, %.lr.ph.i.i.i.i26
  %i.eb = icmp eq i64 %i.dw, %.sroa.7.036.i.i
  br i1 %i.eb, label %"_ZN4core3ptr151drop_in_place$LT$alloc..vec..Vec$LT$$LP$u32$C$u32$C$alloc..vec..Vec$LT$lindera_dictionary..dictionary..character_definition..CategoryId$GT$$RP$$GT$$GT$17h44cf5bcb5f61dcecE.exit.i", label %.lr.ph.i.i.i.i26

"_ZN4core3ptr151drop_in_place$LT$alloc..vec..Vec$LT$$LP$u32$C$u32$C$alloc..vec..Vec$LT$lindera_dictionary..dictionary..character_definition..CategoryId$GT$$RP$$GT$$GT$17h44cf5bcb5f61dcecE.exit.i": ; preds = %"_ZN4core3ptr128drop_in_place$LT$$LP$u32$C$u32$C$alloc..vec..Vec$LT$lindera_dictionary..dictionary..character_definition..CategoryId$GT$$RP$$GT$17habda0c30aafbeeadE.exit.i.i.i.i", %bb.ag
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.da, i64 noundef %i.cv, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !6691
  br label %.body29

"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2756444ac693f346E.exit": ; preds = %bb.af, %.lr.ph.i.i, %bb.y, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.thread.i.i"
  %.sroa.733.0 = phi i64 [ 0, %bb.y ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.thread.i.i" ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i" ], [ %.val17, %.lr.ph.i.i ], [ %.val17, %bb.af ] ; 2 uses
  %.sroa.5.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.y ], [ inttoptr (i64 8 to ptr), %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.thread.i.i" ], [ %i.da, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i" ], [ %i.da, %.lr.ph.i.i ], [ %i.da, %bb.af ]
  %.not5 = icmp eq i8 %i.p, 4
  %. = select i1 %.not5, i8 0, i8 %i.p
  %.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.0.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0, ptr %.sroa.0.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.9.0, ptr %.sroa.0.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.733.0, ptr %.sroa.0.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.6.sroa.4.0..sroa.0.sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.5.0, ptr %.sroa.0.sroa.0.sroa.6.sroa.4.0..sroa.0.sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.6.sroa.5.0..sroa.0.sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.733.0, ptr %.sroa.0.sroa.0.sroa.6.sroa.5.0..sroa.0.sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.031.0, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.7.0, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.11.0, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 %., ptr %.sroa.7.0..sroa_idx, align 8
  ret void

bb.ai:                                            ; preds = %bb.ab
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %.body29

.body29:                                          ; preds = %"_ZN4core3ptr151drop_in_place$LT$alloc..vec..Vec$LT$$LP$u32$C$u32$C$alloc..vec..Vec$LT$lindera_dictionary..dictionary..character_definition..CategoryId$GT$$RP$$GT$$GT$17h44cf5bcb5f61dcecE.exit.i", %bb.ai
  %eh.lpad-body30 = phi { ptr, i32 } [ %i.ec, %bb.ai ], [ %i.dt, %"_ZN4core3ptr151drop_in_place$LT$alloc..vec..Vec$LT$$LP$u32$C$u32$C$alloc..vec..Vec$LT$lindera_dictionary..dictionary..character_definition..CategoryId$GT$$RP$$GT$$GT$17h44cf5bcb5f61dcecE.exit.i" ]
  call fastcc void @"_ZN4core3ptr153drop_in_place$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$lindera_dictionary..dictionary..character_definition..CategoryId$GT$$GT$17h3f53c845a31ee4a5E"(ptr noalias noundef align 8 dereferenceable(48) %i.d) #48
  br label %.body

"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h1e63f569127f4198E.exit": ; preds = %bb.j, %"_ZN4core3ptr110drop_in_place$LT$alloc..vec..Vec$LT$lindera_dictionary..dictionary..character_definition..CategoryData$GT$$GT$17h88279ef7e94e188bE.exit", %"_ZN4core3ptr110drop_in_place$LT$alloc..vec..Vec$LT$lindera_dictionary..dictionary..character_definition..CategoryData$GT$$GT$17h88279ef7e94e188bE.exit"
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define { ptr, i8 } @_ZN18lindera_dictionary18dictionary_builder22connection_cost_matrix27ConnectionCostMatrixBuilder5build17hf06875aade560198E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [72 x i8], align 8                ; 14 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %i.d = alloca [72 x i8], align 8                ; 16 uses
  %i.e = alloca [1 x i8], align 1                 ; 9 uses
  %i.f = alloca [16 x i8], align 4                ; 9 uses
  %i.g = alloca [128 x i8], align 8               ; 19 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  %i.k = alloca [32 x i8], align 8                ; 14 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 8 uses
  %i.n = alloca [32 x i8], align 8                ; 9 uses
  %i.o = alloca [72 x i8], align 8                ; 17 uses
  %i.p = alloca [24 x i8], align 8                ; 11 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_ZN3std4path4Path5_join17h7844c17c52e6efdbE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @216, i64 noundef 10)
  %i.t = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8 ; 2 uses
  %i.u = icmp ult i64 %i.t, 6
  call void @llvm.assume(i1 %i.u)
  %i.v = icmp samesign ugt i64 %i.t, 3
  br i1 %i.v, label %bb.e, label %bb.d

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit312": ; preds = %bb.da, %.thread431, %bb.c
  %.pn214 = phi { ptr, i32 } [ %i.y, %bb.c ], [ %.pn212, %.thread431 ], [ %.pn212, %bb.da ]
  call void @llvm.experimental.noalias.scope.decl(metadata !6876)
  %.val.i = load i64, ptr %i.s, align 8, !alias.scope !6876 ; 2 uses
  %i.w = icmp eq i64 %.val.i, 0
  br i1 %i.w, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hb9309341f9b26f65E.exit", label %bb.b

bb.b:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit312"
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val1.i = load ptr, ptr %i.x, align 8, !alias.scope !6876, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !6876
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hb9309341f9b26f65E.exit"

bb.c:                                             ; preds = %bb.e, %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit312"

bb.d:                                             ; preds = %bb.f, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !6, !noundef !6
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !6
  %.sroa.0109.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0109.0 = load ptr, ptr %.sroa.0109.0.in, align 8, !nonnull !6, !noundef !6
  %.sroa.5110.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5110.0 = load i64, ptr %.sroa.5110.0.in, align 8, !noundef !6
  invoke void @_ZN18lindera_dictionary4util23read_file_with_encoding17h07545d359f4bbb85E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aa, i64 noundef %i.ac, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0109.0, i64 noundef %.sroa.5110.0)
          to label %bb.g unwind label %bb.c

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.s, ptr %i.r, align 8
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @"_ZN55_$LT$std..path..PathBuf$u20$as$u20$core..fmt..Debug$GT$3fmt17hb5095f6ece0ab423E", ptr %.sroa.4108.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !6877
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i64 4, ptr %i.ad, align 8, !noalias !6877
  %.sroa.431.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr @218, ptr %.sroa.431.0..sroa_idx.i.i, align 8, !noalias !6877
  %.sroa.532.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i64 62, ptr %.sroa.532.0..sroa_idx.i.i, align 8, !noalias !6877
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  store ptr @125, ptr %i.ae, align 8, !noalias !6877
  %.sroa.449.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store i64 1, ptr %.sroa.449.0..sroa_idx.i.i, align 8, !noalias !6877
  %.sroa.550.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store ptr %i.r, ptr %.sroa.550.0..sroa_idx.i.i, align 8, !noalias !6877
  %.sroa.651.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  store i64 1, ptr %.sroa.651.0..sroa_idx.i.i, align 8, !noalias !6877
  %.sroa.752.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  store ptr null, ptr %.sroa.752.0..sroa_idx.i.i, align 8, !noalias !6877
  store i64 0, ptr %i.g, align 8, !noalias !6877
  %.sroa.462.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @218, ptr %.sroa.462.0..sroa_idx.i.i, align 8, !noalias !6877
  %.sroa.563.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 62, ptr %.sroa.563.0..sroa_idx.i.i, align 8, !noalias !6877
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 0, ptr %i.af, align 8, !noalias !6877
  %.sroa.524.0..sroa_idx25.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr @217, ptr %.sroa.524.0..sroa_idx25.i.i, align 8, !noalias !6877
  %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i64 143, ptr %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i, align 8, !noalias !6877
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store i32 1, ptr %i.ag, align 8, !noalias !6877
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 76
  store i32 29, ptr %i.ah, align 4, !noalias !6877
  invoke void @"_ZN61_$LT$log..__private_api..GlobalLogger$u20$as$u20$log..Log$GT$3log17h07563ec464464c22E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.g)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !6877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.d

bb.g:                                             ; preds = %bb.d
  %i.ai = load i64, ptr %i.q, align 8, !range !15, !noundef !6 ; 7 uses
  %i.aj = icmp eq i64 %i.ai, -9223372036854775808
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  br i1 %i.aj, label %bb.h, label %.lr.ph

bb.h:                                             ; preds = %bb.g
  %i.an = load i8, ptr %i.am, align 8, !range !29, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit302"

.loopexit:                                        ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body298

.loopexit.split-lp:                               ; preds = %bb.bl, %.loopexit622
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body298

.lr.ph:                                           ; preds = %bb.g
  %.sroa.5113.0.copyload = load i64, ptr %i.am, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 0, ptr %i.p, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 4 uses
  store i64 0, ptr %i.ap, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 0, ptr %i.o, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store i64 %.sroa.5113.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  store ptr %i.al, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  store i64 %.sroa.5113.0.copyload, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 4 uses
  store i64 0, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 2 uses
  store i64 %.sroa.5113.0.copyload, ptr %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 3 uses
  store i32 10, ptr %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  store i32 10, ptr %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx, align 4
  %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 2 uses
  store i8 1, ptr %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.4134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 64 ; 2 uses
  store i8 0, ptr %.sroa.4134.0..sroa_idx, align 8
  %.sroa.5135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 65 ; 3 uses
  store i8 0, ptr %.sroa.5135.0..sroa_idx, align 1
end_hunk_2
