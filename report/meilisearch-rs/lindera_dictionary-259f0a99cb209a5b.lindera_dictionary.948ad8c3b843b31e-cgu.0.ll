inline.NumInlined: 4519
inline.NumDeleted: 2001
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZN18lindera_dictionary18dictionary_builder20character_definition26CharacterDefinitionBuilder5build17h0d32ae2e7a24da1aE:bb.a

bb.ef:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h587556dc9458ff9eE.exit.i.i
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17haeaddec6df7fa18cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @198)
          to label %bb.ei unwind label %bb.eg, !noalias !5362

bb.eg:                                            ; preds = %bb.ef
  %i.wm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wn = icmp eq i64 %.sroa.4.0.i13.i.i.i.i.i.i, 0
  br i1 %i.wn, label %.body82.i.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.wo = shl nuw nsw i64 %.sroa.4.0.i13.i.i.i.i.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i12.i.i.i.i.i.i, i64 noundef %i.wo, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !5363
  br label %.body82.i.i

bb.ei:                                            ; preds = %bb.ef, %_ZN4core4iter6traits8iterator8Iterator7collect17h587556dc9458ff9eE.exit.i.i
  %i.wp = load ptr, ptr %i.db, align 8, !alias.scope !5359, !noalias !5360, !nonnull !6, !noundef !6
  %i.wq = getelementptr inbounds nuw [32 x i8], ptr %i.wp, i64 %i.wj ; 5 uses
  store i32 %.sroa.01.0.i.i, ptr %i.wq, align 8, !noalias !5356
  %.sroa.4118.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.wq, i64 4
  store i32 %.sroa.03.0.i111.i, ptr %.sroa.4118.0..sroa_idx.i.i, align 4, !noalias !5356
  %.sroa.5119.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.wq, i64 8
  store i64 %.sroa.4.0.i13.i.i.i.i.i.i, ptr %.sroa.5119.0..sroa_idx.i.i, align 8, !noalias !5356
  %.sroa.7120.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.wq, i64 16
  store ptr %.sroa.10.0.i12.i.i.i.i.i.i, ptr %.sroa.7120.0..sroa_idx.i.i, align 8, !noalias !5356
  %.sroa.9.0..sroa_idx.i.i85 = getelementptr inbounds nuw i8, ptr %i.wq, i64 24
  store i64 %.sroa.4.0.i13.i.i.i.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i85, align 8, !noalias !5356
  %i.wr = add i64 %i.wj, 1
  store i64 %i.wr, ptr %i.da, align 8, !alias.scope !5359, !noalias !5360
  %i.ws = icmp eq i64 %.sroa.094.0.copyload199.i.i, 0
  br i1 %i.ws, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h818ca1b63095d917E.exit86.i.i", label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.wt = shl nuw i64 %.sroa.094.0.copyload199.i.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.895.0.copyload197.i.i, i64 noundef %i.wt, i64 noundef range(i64 1, -9223372036854775807) 8) #47
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h818ca1b63095d917E.exit86.i.i"

"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h818ca1b63095d917E.exit86.i.i": ; preds = %bb.ej, %bb.ei
  %i.wu = icmp eq i64 %.sroa.0.0.copyload150.i.i, 0
  br i1 %i.wu, label %_ZN18lindera_dictionary18dictionary_builder20character_definition26CharacterDefinitionBuilder11parse_range17ha8d4368bdd8d12fdE.exit.thread.i, label %_ZN18lindera_dictionary18dictionary_builder20character_definition26CharacterDefinitionBuilder11parse_range17ha8d4368bdd8d12fdE.exit.thread827.i

_ZN18lindera_dictionary18dictionary_builder20character_definition26CharacterDefinitionBuilder11parse_range17ha8d4368bdd8d12fdE.exit.thread827.i: ; preds = %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h818ca1b63095d917E.exit86.i.i"
  %i.wv = shl nuw i64 %.sroa.0.0.copyload150.i.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload155.i.i, i64 noundef %i.wv, i64 noundef range(i64 1, -9223372036854775807) 8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !5027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !5027
  br label %.backedge.i

_ZN18lindera_dictionary18dictionary_builder20character_definition26CharacterDefinitionBuilder11parse_range17ha8d4368bdd8d12fdE.exit.thread.i: ; preds = %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h818ca1b63095d917E.exit86.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !5027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !5027
  br label %.backedge.i

bb.ek:                                            ; preds = %.loopexit845.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !5306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !5153
  %i.ww = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$3msg17hba822881bcddadacE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ad)
          to label %bb.ds unwind label %.loopexit228.loopexit.split-lp.i, !noalias !5150

"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h818ca1b63095d917E.exit78.i.i": ; preds = %bb.dt, %bb.ds
  %i.wx = icmp eq i64 %.sroa.0.0.copyload150.i.i, 0
  br i1 %i.wx, label %.loopexit233.i, label %.loopexit233.loopexit.i

bb.el:                                            ; preds = %bb.bl, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !5027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !5027
  br label %bb.en

.backedge.i:                                      ; preds = %_ZN18lindera_dictionary18dictionary_builder20character_definition26CharacterDefinitionBuilder11parse_range17ha8d4368bdd8d12fdE.exit.thread.i, %_ZN18lindera_dictionary18dictionary_builder20character_definition26CharacterDefinitionBuilder11parse_range17ha8d4368bdd8d12fdE.exit.thread827.i, %_ZN18lindera_dictionary18dictionary_builder20character_definition26CharacterDefinitionBuilder14parse_category17h57db40bbce2aeb73E.exit.thread.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h0583ab8b2c96f1b7E.exit.thread.i"
  %i.wy = load i8, ptr %.sroa.548.0..sroa_idx.i, align 1, !range !1150, !alias.scope !5364, !noalias !5027, !noundef !6
  %i.wz = trunc nuw i8 %i.wy to i1
  br i1 %i.wz, label %bb.eo, label %bb.j

.loopexit233.loopexit.i:                          ; preds = %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h818ca1b63095d917E.exit78.i.i"
  %i.xa = shl nuw i64 %.sroa.0.0.copyload150.i.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload155.i.i, i64 noundef %i.xa, i64 noundef range(i64 1, -9223372036854775807) 8) #47
  br label %.loopexit233.i

.loopexit233.i:                                   ; preds = %.loopexit233.loopexit.i, %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h818ca1b63095d917E.exit78.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !5027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !5027
  br label %bb.en

.body:                                            ; preds = %.loopexit308, %.loopexit.split-lp309.loopexit.split-lp, %.loopexit.split-lp309.loopexit, %bb.kr, %.body143, %bb.er, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h951691be7b6e9366E.exit.i", %bb.cf, %.body.i.i, %bb.cc, %bb.cb, %bb.an, %bb.am, %bb.ab, %bb.aa, %bb.iu
  %.pn74 = phi { ptr, i32 } [ %eh.lpad-body144, %.body143 ], [ %.pn, %bb.kr ], [ %.pn, %bb.iu ], [ %.pn.i.i, %.body.i.i ], [ %lpad.phi222.i, %bb.am ], [ %i.ho, %bb.aa ], [ %i.ho, %bb.ab ], [ %lpad.phi222.i, %bb.an ], [ %i.pw, %bb.cb ], [ %i.pw, %bb.cc ], [ %.pn.i.i, %bb.cf ], [ %.pn.pn.i1153, %bb.er ], [ %.pn.pn.i1153, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h951691be7b6e9366E.exit.i" ], [ %lpad.loopexit310, %.loopexit308 ], [ %lpad.loopexit314, %.loopexit.split-lp309.loopexit ], [ %lpad.loopexit.split-lp315, %.loopexit.split-lp309.loopexit.split-lp ] ; 2 uses
  %i.xb = icmp eq i64 %i.bp, 0
  br i1 %i.xb, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit", label %bb.em

bb.em:                                            ; preds = %.body
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bs, i64 noundef %i.bp, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !5366
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

bb.en:                                            ; preds = %.noexc87, %.loopexit233.i, %bb.el
  %.sroa.5.0.i.ph = phi i8 [ %.sroa.6.1.i.i, %bb.el ], [ %.sroa.6.0.i107.i, %.loopexit233.i ], [ 5, %.noexc87 ]
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.0.1.i98.i, %bb.el ], [ %.sroa.0.0.i108.i, %.loopexit233.i ], [ %i.fq, %.noexc87 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !5027
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.ph) ]
  %i.xc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.ph, ptr %i.xc, align 8
  %i.xd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.5.0.i.ph, ptr %i.xd, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.kp

bb.eo:                                            ; preds = %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i.i", %.backedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !5027
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.experimental.noalias.scope.decl(metadata !5369)
  call void @llvm.experimental.noalias.scope.decl(metadata !5372)
  %i.xe = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.xf = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.xg = load i64, ptr %i.xf, align 8, !alias.scope !5372, !noalias !5369, !noundef !6 ; 23 uses
  %i.xh = mul i64 %i.xg, 24                       ; 7 uses
  %or.cond.i.i.i.i.i.i.i.i = icmp ugt i64 %i.xg, 384307168202282325
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %.invoke, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i, !prof !27

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i: ; preds = %bb.eo
  %i.xi = icmp eq i64 %i.xh, 0                    ; 2 uses
  br i1 %i.xi, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35bf487b356cc3ccE.exit.i.i.i.i.i.i.i", label %bb.ep

bb.ep:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !5374
  %i.xj = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.xh, i64 noundef range(i64 1, 9) 8) #47, !noalias !5374 ; 2 uses
  %i.xk = icmp eq ptr %i.xj, null
  br i1 %i.xk, label %.invoke, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35bf487b356cc3ccE.exit.i.i.i.i.i.i.i"

.invoke:                                          ; preds = %"_ZN96_$LT$core..str..iter..SplitAsciiWhitespace$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c721889622d8f7fE.exit.i.i.i.i.i.i", %bb.bo, %bb.eo, %bb.ep
  %i.xl = phi i64 [ 0, %bb.eo ], [ 8, %bb.ep ], [ 8, %bb.bo ], [ 8, %"_ZN96_$LT$core..str..iter..SplitAsciiWhitespace$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c721889622d8f7fE.exit.i.i.i.i.i.i" ]
  %i.xm = phi i64 [ %i.xh, %bb.eo ], [ %i.xh, %bb.ep ], [ 64, %bb.bo ], [ 64, %"_ZN96_$LT$core..str..iter..SplitAsciiWhitespace$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c721889622d8f7fE.exit.i.i.i.i.i.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.xl, i64 %i.xm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @315) #46
          to label %.cont unwind label %.loopexit.split-lp309.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35bf487b356cc3ccE.exit.i.i.i.i.i.i.i": ; preds = %bb.ep, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %i.xj, %bb.ep ] ; 11 uses
  %.sroa.4.0.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %i.xg, %bb.ep ] ; 4 uses
  %i.xn = icmp samesign ule i64 %i.xg, %.sroa.4.0.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.xn)
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.xg, 0 ; 6 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35bf487b356cc3ccE.exit.i.i.i.i.i.i.i"
  %xtraiter = and i64 %i.xg, 3                    ; 3 uses
  %i.xo = icmp ult i64 %i.xg, 4
  br i1 %i.xo, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.xg, 576460752303423484
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new
  %i.xp = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.xv, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.xq = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i.i.i.i, i64 %i.xp ; 3 uses
  store i64 0, ptr %i.xq, align 8, !noalias !5387
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.xq, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !5387
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.xq, i64 16
  store i64 0, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !5387
  %i.xr = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i.i.i.i, i64 %i.xp ; 3 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 24
  store i64 0, ptr %i.xs, align 8, !noalias !5387
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.xr, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !5387
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.xr, i64 40
  store i64 0, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !5387
  %i.xt = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i.i.i.i, i64 %i.xp ; 3 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 48
  store i64 0, ptr %i.xu, align 8, !noalias !5387
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.xt, i64 56
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !5387
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.xt, i64 64
  store i64 0, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !5387
  %i.xv = add nuw i64 %i.xp, 4                    ; 2 uses
  %i.xw = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i.i.i.i, i64 %i.xp ; 3 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 72
  store i64 0, ptr %i.xx, align 8, !noalias !5387
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.xw, i64 80
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !5387
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.xw, i64 88
  store i64 0, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !5387
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.preheader.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.body.i:                                          ; preds = %bb.hn, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7c94713ae900f35bE.exit.i.i", %bb.gt, %bb.gs, %"_ZN4core3ptr72drop_in_place$LT$alloc..collections..btree..set..IntoIter$LT$u32$GT$$GT$17h422242f856d2edbcE.exit.i.i.i.i.i", %bb.go, %.body.i.i.i.i.i.i101, %bb.fz, %bb.fy, %bb.fx, %.thread.sink.split.i.i.i.i.i.i, %bb.fl, %bb.fb, %"_ZN4core3ptr374drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$$LP$u32$C$u32$C$alloc..vec..Vec$LT$lindera_dictionary..dictionary..character_definition..CategoryId$GT$$RP$$GT$$C$alloc..vec..Vec$LT$u32$GT$$C$lindera_dictionary..dictionary_builder..character_definition..CharacterDefinitionBuilder..build_lookup_table..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hb27190de85fdf98dE.exit.sink.split.i.i.i.i.i.i.i", %.body.i.i.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i112, %.loopexit41.i
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.ph.i.i.i.i.i.i, %"_ZN4core3ptr72drop_in_place$LT$alloc..collections..btree..set..IntoIter$LT$u32$GT$$GT$17h422242f856d2edbcE.exit.i.i.i.i.i" ], [ %eh.lpad-body.i.i.i.i.i.i, %bb.go ], [ %lpad.loopexit.split-lp47.i, %.loopexit.split-lp.loopexit.split-lp.i112 ], [ %i.amm, %bb.hn ], [ %eh.lpad-body.i.i.i.i.i.i, %.body.i.i.i.i.i.i101 ], [ %.pn.i.i.i, %bb.gt ], [ %.pn.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr374drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$$LP$u32$C$u32$C$alloc..vec..Vec$LT$lindera_dictionary..dictionary..character_definition..CategoryId$GT$$RP$$GT$$C$alloc..vec..Vec$LT$u32$GT$$C$lindera_dictionary..dictionary_builder..character_definition..CharacterDefinitionBuilder..build_lookup_table..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hb27190de85fdf98dE.exit.sink.split.i.i.i.i.i.i.i" ], [ %.pn.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i ], [ %lpad.thr_comm.split-lp.i.i.i.i, %bb.fy ], [ %lpad.thr_comm.split-lp.i.i.i.i, %bb.fz ], [ %.pn34.ph.i.i.i.i.i.i, %.thread.sink.split.i.i.i.i.i.i ], [ %i.aem, %bb.fl ], [ %i.aio, %bb.fx ], [ %.pn.i.i.i, %bb.gs ], [ %i.aaq, %bb.fb ], [ %i.amm, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7c94713ae900f35bE.exit.i.i" ], [ %lpad.loopexit.i113, %.loopexit41.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5404), !noalias !5369
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h951691be7b6e9366E.exit.i", label %.lr.ph.i.i.i205.preheader

.lr.ph.i.i.i205.preheader:                        ; preds = %.loopexit.split-lp.loopexit.i92, %bb.hs, %bb.hu, %.body.i
  %.pn.pn.i1152 = phi { ptr, i32 } [ %.pn.pn.i, %.body.i ], [ %lpad.loopexit46.i, %.loopexit.split-lp.loopexit.i92 ], [ %i.and, %bb.hs ], [ %i.and, %bb.hu ]
  br label %.lr.ph.i.i.i205

.lr.ph.i.i.i205:                                  ; preds = %.lr.ph.i.i.i205.preheader, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i.i.i"
  %.sroa.0.010.i.i.i = phi i64 [ %i.xz, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i.i.i" ], [ 0, %.lr.ph.i.i.i205.preheader ] ; 2 uses
  %i.xy = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i.i.i.i, i64 %.sroa.0.010.i.i.i ; 2 uses
  %i.xz = add nuw i64 %.sroa.0.010.i.i.i, 1       ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5407), !noalias !5369
  %.val.i.i.i.i206 = load i64, ptr %i.xy, align 8, !alias.scope !5410, !noalias !5411 ; 2 uses
  %i.ya = icmp eq i64 %.val.i.i.i.i206, 0
  br i1 %i.ya, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i.i.i", label %bb.eq

bb.eq:                                            ; preds = %.lr.ph.i.i.i205
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xy, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.yb, align 8, !alias.scope !5410, !noalias !5411, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i206, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !5414
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i.i.i": ; preds = %bb.eq, %.lr.ph.i.i.i205
  %i.yc = icmp eq i64 %i.xz, %i.xg
  br i1 %i.yc, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h951691be7b6e9366E.exit.i", label %.lr.ph.i.i.i205

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h951691be7b6e9366E.exit.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i.i.i", %.body.i
  %.pn.pn.i1153 = phi { ptr, i32 } [ %.pn.pn.i, %.body.i ], [ %.pn.pn.i1152, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i.i.i" ] ; 2 uses
  %i.yd = icmp eq i64 %.sroa.4.0.i.i.i.i.i.i, 0
  br i1 %i.yd, label %.body, label %bb.er

bb.er:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h951691be7b6e9366E.exit.i"
  %i.ye = mul nuw nsw i64 %.sroa.4.0.i.i.i.i.i.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i, i64 noundef %i.ye, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !5411
  br label %.body

.loopexit41.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.i113 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.i92:                  ; preds = %.loopexit45.i
  %lpad.loopexit46.i = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.i.i205.preheader

.loopexit.split-lp.loopexit.split-lp.i112:        ; preds = %bb.gb, %.noexc27.i.i.i.i.i.i.invoke.i, %.noexc.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp47.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.lr.ph.preheader.i.unr-lcssa:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader:        ; preds = %.lr.ph.preheader.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.xv, %.lr.ph.preheader.i.unr-lcssa ]
  %lcmp.mod2129 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod2129)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.epil:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %i.yf = phi i64 [ %i.yg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.yg = add nuw i64 %i.yf, 1
  %i.yh = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i.i.i.i, i64 %i.yf ; 3 uses
  store i64 0, ptr %i.yh, align 8, !noalias !5387
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.yh, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !5387
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.yh, i64 16
  store i64 0, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !5387
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.preheader.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !5415

.lr.ph.preheader.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.preheader.i.unr-lcssa
  call void @llvm.experimental.noalias.scope.decl(metadata !5416)
  %i.yi = load ptr, ptr %i.xe, align 8, !alias.scope !5419, !noalias !5420, !nonnull !6, !noundef !6 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.yi, align 16, !noalias !5422
  %i.yj = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.yk = bitcast <16 x i1> %i.yj to i16
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yi, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i", %.lr.ph.preheader.i
  %.sroa.0.0116.i = phi ptr [ %.sroa.0.1.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i" ], [ %i.yi, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.6.0115.i = phi ptr [ %.sroa.6.1.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i" ], [ %i.yl, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.820.0114.i = phi i16 [ %i.yu, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i" ], [ %i.yk, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.1021.0113.i = phi i64 [ %i.yx, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i" ], [ %i.xg, %.lr.ph.preheader.i ]
  %.not13.i.i.i = icmp eq i16 %.sroa.820.0114.i, 0
  br i1 %.not13.i.i.i, label %.lr.ph.i.i.i117, label %.loopexit45.i

.lr.ph.i.i.i117:                                  ; preds = %.lr.ph.i, %.lr.ph.i.i.i117
  %i.ym = phi ptr [ %i.yq, %.lr.ph.i.i.i117 ], [ %.sroa.6.0115.i, %.lr.ph.i ] ; 2 uses
  %i.yn = phi ptr [ %i.yp, %.lr.ph.i.i.i117 ], [ %.sroa.0.0116.i, %.lr.ph.i ]
  %.val11.i.i.i = load <16 x i8>, ptr %i.ym, align 16, !noalias !5425
  %i.yo = icmp sgt <16 x i8> %.val11.i.i.i, splat (i8 -1)
  %i.yp = getelementptr inbounds i8, ptr %i.yn, i64 -512 ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.ym, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.yo to i16   ; 2 uses
  %.not.i.i.i118 = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i118, label %.lr.ph.i.i.i117, label %.loopexit45.i

.loopexit45.i:                                    ; preds = %.lr.ph.i.i.i117, %.lr.ph.i
  %.sroa.6.1.i = phi ptr [ %.sroa.6.0115.i, %.lr.ph.i ], [ %i.yq, %.lr.ph.i.i.i117 ]
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0116.i, %.lr.ph.i ], [ %i.yp, %.lr.ph.i.i.i117 ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.820.0114.i, %.lr.ph.i ], [ %.cast.i.i.i, %.lr.ph.i.i.i117 ] ; 3 uses
  %i.yr = add i16 %.lcssa.i.i.i, -1
  %i.ys = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.yt = zext nneg i16 %i.ys to i64
  %i.yu = and i16 %i.yr, %.lcssa.i.i.i
  %i.yv = sub nsw i64 0, %i.yt
  %i.yw = getelementptr inbounds [32 x i8], ptr %.sroa.0.1.i, i64 %i.yv ; 2 uses
  %i.yx = add nsw i64 %.sroa.1021.0113.i, -1      ; 2 uses
  %i.yy = getelementptr inbounds i8, ptr %i.yw, i64 -32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !5430
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.yy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @208)
          to label %bb.ho unwind label %.loopexit.split-lp.loopexit.i92, !noalias !5369

._crit_edge.i:                                    ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h35bf487b356cc3ccE.exit.i.i.i.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !5431)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !5430
  %i.yz = load ptr, ptr %i.db, align 8, !alias.scope !5434, !noalias !5435, !nonnull !6, !noundef !6 ; 4 uses
  %i.za = load i64, ptr %i.da, align 8, !alias.scope !5434, !noalias !5435, !noundef !6 ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.za, 5
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yz, i64 %.idx.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !5437
  %i.zc = icmp eq i64 %i.za, 0
  br i1 %i.zc, label %_ZN4core4iter6traits8iterator8Iterator7collect17hff91430a907604deE.exit.thread.i.i, label %bb.es

bb.es:                                            ; preds = %._crit_edge.i
  %i.zd = load <2 x i32>, ptr %i.yz, align 8, !noalias !5456
  %.val.i.i.i.peel.i.i.i.i.i.i.i.i = load i32, ptr %i.yz, align 8, !noalias !5456
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !5467
  %i.ze = call noundef align 4 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef 4) #47, !noalias !5467 ; 7 uses
  %i.zf = icmp eq ptr %i.ze, null
  br i1 %i.zf, label %.noexc.i.i.i.i.i.i.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i, !prof !238

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.es
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 4, i64 noundef 8) #46
          to label %.noexc.i116 unwind label %.loopexit.split-lp.loopexit.split-lp.i112, !noalias !5369

.noexc.i116:                                      ; preds = %.noexc.i.i.i.i.i.i.i
  unreachable

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.es
  %i.zg = add <2 x i32> %i.zd, <i32 0, i32 1>
  store <2 x i32> %i.zg, ptr %i.ze, align 4, !noalias !5467
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !5470
  %i.zh = call noundef align 4 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, 9) 4) #47, !noalias !5470 ; 4 uses
  %i.zi = icmp eq ptr %i.zh, null
  br i1 %i.zi, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 16, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @315) #46
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.fb, !noalias !5475

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.et
  unreachable

bb.eu:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i
  %i.zj = getelementptr inbounds nuw i8, ptr %i.ze, i64 4 ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %i.ze, i64 8 ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %i.yz, i64 32 ; 2 uses
  store i32 %.val.i.i.i.peel.i.i.i.i.i.i.i.i, ptr %i.zh, align 4, !noalias !5475
  store i64 4, ptr %i.p, align 8, !noalias !5437
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  store ptr %i.zh, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !5437
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !5437
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !5437
  store ptr %i.ze, ptr %i.o, align 8, !noalias !5476
  %.sroa.7.0..sroa_idx2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  store ptr %i.zj, ptr %.sroa.7.0..sroa_idx2.i.i.i.i.i.i, align 8, !noalias !5476
  %.sroa.9.0..sroa_idx4.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  store i64 2, ptr %.sroa.9.0..sroa_idx4.i.i.i.i.i.i, align 8, !noalias !5476
  %.sroa.11.0..sroa_idx6.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  store ptr %i.zk, ptr %.sroa.11.0..sroa_idx6.i.i.i.i.i.i, align 8, !noalias !5476
  %.sroa.13.0..sroa_idx8.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr null, ptr %.sroa.13.0..sroa_idx8.i.i.i.i.i.i, align 8, !noalias !5476
  %.sroa.23.0..sroa_idx16.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 64 ; 3 uses
  store ptr %i.zl, ptr %.sroa.23.0..sroa_idx16.i.i.i.i.i.i, align 8, !noalias !5476
  %.sroa.25.0..sroa_idx18.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  store ptr %i.zb, ptr %.sroa.25.0..sroa_idx18.i.i.i.i.i.i, align 8, !noalias !5476
  call void @llvm.experimental.noalias.scope.decl(metadata !5477)
  call void @llvm.experimental.noalias.scope.decl(metadata !5480)
  br label %bb.ev

bb.ev:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb636deaf9533b9ffE.exit.i.i.i.i.i.i.i.i.i.i", %bb.eu
  %i.zm = phi ptr [ %i.aag, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb636deaf9533b9ffE.exit.i.i.i.i.i.i.i.i.i.i" ], [ %i.zh, %bb.eu ]
  %.sroa.12.0.copyload27.i.i.i.i = phi i64 [ %i.aai, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb636deaf9533b9ffE.exit.i.i.i.i.i.i.i.i.i.i" ], [ 1, %bb.eu ] ; 11 uses
  %i.zn = phi ptr [ %i.zz, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb636deaf9533b9ffE.exit.i.i.i.i.i.i.i.i.i.i" ], [ %i.zl, %bb.eu ] ; 5 uses
  %.promoted38.i.i26.i.i.i.i.i.i.i.i = phi ptr [ %i.aac, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb636deaf9533b9ffE.exit.i.i.i.i.i.i.i.i.i.i" ], [ %i.zj, %bb.eu ] ; 4 uses
  %.promoted37.i.i21.i.i.i.i.i.i.i.i = phi ptr [ %.promoted37.i.i20.i.i.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb636deaf9533b9ffE.exit.i.i.i.i.i.i.i.i.i.i" ], [ %i.zk, %bb.eu ] ; 3 uses
  %i.zo = phi ptr [ %i.aaa, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb636deaf9533b9ffE.exit.i.i.i.i.i.i.i.i.i.i" ], [ %i.ze, %bb.eu ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN18lindera_dictionary4util9read_file17ha263f8fc88fb9c1bE:bb.a
  store ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 4, ptr %i.k, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.m = load i32, ptr %i.l, align 4, !range !3182, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i32 %i.m, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.o, align 8
  %i.p = invoke { i64, ptr } @"_ZN47_$LT$std..fs..File$u20$as$u20$std..io..Read$GT$11read_to_end17h86d320751dc14a00E"(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.f unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.g, %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  %.val15 = load i64, ptr %i.b, align 8           ; 2 uses
  %i.r = icmp eq i64 %.val15, 0
  br i1 %i.r, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val16 = load ptr, ptr %i.n, align 8, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val16, i64 noundef %.val15, i64 noundef range(i64 1, -9223372036854775807) 1) #47
  br label %bb.k

bb.f:                                             ; preds = %bb.c
  %i.s = extractvalue { i64, ptr } %i.p, 0
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %bb.g, label %bb.h, !prof !238

bb.g:                                             ; preds = %bb.f
  %i.u = extractvalue { i64, ptr } %i.p, 1
  %i.v = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h11caec4a0ad2a6bbE"(ptr noundef nonnull %i.u)
          to label %_ZN6anyhow4kind5Trait3new17h125300f919d13c42E.exit unwind label %bb.d

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !7173)
  %.val.i = load i32, ptr %i.d, align 4, !range !3182, !alias.scope !7173, !noundef !6
  %i.w = call noundef i32 @close(i32 noundef %.val.i) #47, !noalias !7173 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit17", %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

_ZN6anyhow4kind5Trait3new17h125300f919d13c42E.exit: ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 4, ptr %i.y, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  %.val = load i64, ptr %i.b, align 8             ; 2 uses
  %i.z = icmp eq i64 %.val, 0
  br i1 %i.z, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit17", label %bb.j

bb.j:                                             ; preds = %_ZN6anyhow4kind5Trait3new17h125300f919d13c42E.exit
  %.val14 = load ptr, ptr %i.n, align 8, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val14, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #47
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit17"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit17": ; preds = %bb.j, %_ZN6anyhow4kind5Trait3new17h125300f919d13c42E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !7176)
  %.val.i19 = load i32, ptr %i.d, align 4, !range !3182, !alias.scope !7176, !noundef !6
  %i.aa = call noundef i32 @close(i32 noundef %.val.i19) #47, !noalias !7176 ; 0 uses
  br label %bb.i

bb.k:                                             ; preds = %bb.d, %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !7179)
  %.val.i18 = load i32, ptr %i.d, align 4, !range !3182, !alias.scope !7179, !noundef !6
  %i.ab = call noundef i32 @close(i32 noundef %.val.i18) #47, !noalias !7179 ; 0 uses
  resume { ptr, i32 } %i.q
}

; Function Attrs: nonlazybind uwtable
define void @_ZN18lindera_dictionary7viterbi7Lattice13tokens_offset17hde8deb3c019c31dfE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !7182, !noundef !6 ; 3 uses
  %i.f = icmp ugt i64 %i.e, 1
  br i1 %i.f, label %_ZN18lindera_dictionary7viterbi7Lattice4edge17hfc4be10caf523974E.exit, label %.invoke

.invoke:                                          ; preds = %bb.i, %bb.a
  %i.g = phi i64 [ 1, %bb.a ], [ %i.au, %bb.i ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.g, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @236) #46
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZN18lindera_dictionary7viterbi7Lattice4edge17hfc4be10caf523974E.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !7182, !nonnull !6, !noundef !6
  br label %bb.d

.loopexit:                                        ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.val = load i64, ptr %i.a, align 8             ; 2 uses
  %i.j = icmp eq i64 %.val, 0
  br i1 %i.j, label %"_ZN4core3ptr95drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$lindera_dictionary..viterbi..WordId$RP$$GT$$GT$17h7044c7ec805258a1E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val2 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.k = shl nuw i64 %.val, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 8) #47
  br label %"_ZN4core3ptr95drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$lindera_dictionary..viterbi..WordId$RP$$GT$$GT$17h7044c7ec805258a1E.exit"

bb.d:                                             ; preds = %_ZN18lindera_dictionary7viterbi7Lattice4edge17hfc4be10caf523974E.exit, %bb.i
  %i.l = phi ptr [ inttoptr (i64 8 to ptr), %_ZN18lindera_dictionary7viterbi7Lattice4edge17hfc4be10caf523974E.exit ], [ %i.ar, %bb.i ] ; 5 uses
  %i.m = phi i64 [ 0, %_ZN18lindera_dictionary7viterbi7Lattice4edge17hfc4be10caf523974E.exit ], [ %i.at, %bb.i ] ; 9 uses
  %i.n = phi i64 [ 1, %_ZN18lindera_dictionary7viterbi7Lattice4edge17hfc4be10caf523974E.exit ], [ %i.au, %bb.i ]
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.n ; 5 uses
  %i.p = load i32, ptr %i.o, align 4, !range !3181, !noundef !6
  %i.q = trunc nuw i32 %i.p to i1
  br i1 %i.q, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.s = load i32, ptr %i.r, align 4, !noundef !6
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  %i.u = load i32, ptr %i.t, align 4, !noundef !6
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.x = load i32, ptr %i.w, align 4, !noundef !6
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.z = load i8, ptr %i.y, align 4, !range !1150, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7185)
  %i.aa = load i64, ptr %i.a, align 8, !range !165, !alias.scope !7185, !noalias !7188, !noundef !6
  %i.ab = icmp eq i64 %i.m, %i.aa
  br i1 %i.ab, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h157e1cf60a46e50dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @230)
          to label %._crit_edge unwind label %.loopexit

._crit_edge:                                      ; preds = %bb.f
  %.pre = load ptr, ptr %i.b, align 8, !alias.scope !7185, !noalias !7188
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.ac = lshr i64 %i.m, 1                        ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7193)
  %.not15.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h065073bf2b8ac653E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.m ; 3 uses
  %i.ae = icmp eq i64 %i.ac, 1
  br i1 %i.ae, label %.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %i.ac, 9223372036854775806
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.preheader.i.i.new
  %.sroa.0.014.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.aq, %bb.h ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1, %bb.h ]
  %i.af = xor i64 %.sroa.0.014.i.i, -1
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.0.014.i.i ; 2 uses
  %i.ah = getelementptr [16 x i8], ptr %i.ad, i64 %i.af ; 2 uses
  %i.ai = load <2 x i64>, ptr %i.ag, align 1, !alias.scope !7195, !noalias !7193
  %i.aj = load <2 x i64>, ptr %i.ah, align 1, !alias.scope !7201, !noalias !7190
  store <2 x i64> %i.aj, ptr %i.ag, align 1, !alias.scope !7195, !noalias !7193
  store <2 x i64> %i.ai, ptr %i.ah, align 1, !alias.scope !7201, !noalias !7190
  %i.ak = xor i64 %.sroa.0.014.i.i, -2
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.0.014.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.an = getelementptr [16 x i8], ptr %i.ad, i64 %i.ak ; 2 uses
  %i.ao = load <2 x i64>, ptr %i.am, align 1, !alias.scope !7195, !noalias !7193
  %i.ap = load <2 x i64>, ptr %i.an, align 1, !alias.scope !7201, !noalias !7190
  store <2 x i64> %i.ap, ptr %i.am, align 1, !alias.scope !7195, !noalias !7193
  store <2 x i64> %i.ao, ptr %i.an, align 1, !alias.scope !7201, !noalias !7190
  %i.aq = add nuw nsw i64 %.sroa.0.014.i.i, 2     ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h065073bf2b8ac653E.exit.loopexit.unr-lcssa", label %bb.h

bb.i:                                             ; preds = %._crit_edge, %bb.e
  %i.ar = phi ptr [ %.pre, %._crit_edge ], [ %i.l, %bb.e ] ; 2 uses
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %i.m ; 3 uses
  store i64 %i.v, ptr %i.as, align 8, !noalias !7185
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i32 %i.x, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !7185
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i8 %i.z, ptr %.sroa.5.0..sroa_idx, align 4, !noalias !7185
  %i.at = add i64 %i.m, 1                         ; 2 uses
  store i64 %i.at, ptr %i.c, align 8, !alias.scope !7185, !noalias !7188
  %i.au = zext i32 %i.s to i64                    ; 3 uses
  %i.av = icmp ugt i64 %i.e, %i.au
  br i1 %i.av, label %bb.d, label %.invoke

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h065073bf2b8ac653E.exit.loopexit.unr-lcssa": ; preds = %bb.h
  %i.aw = and i64 %i.m, 2
  %lcmp.mod.not = icmp eq i64 %i.aw, 0
  br i1 %lcmp.mod.not, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h065073bf2b8ac653E.exit", label %.epil.preheader

.epil.preheader:                                  ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h065073bf2b8ac653E.exit.loopexit.unr-lcssa", %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.aq, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h065073bf2b8ac653E.exit.loopexit.unr-lcssa" ] ; 2 uses
  %lcmp.mod29 = trunc i64 %i.ac to i1
  tail call void @llvm.assume(i1 %lcmp.mod29)
  %i.ax = xor i64 %.sroa.0.014.i.i.epil.init, -1
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.0.014.i.i.epil.init ; 2 uses
  %i.az = getelementptr [16 x i8], ptr %i.ad, i64 %i.ax ; 2 uses
  %i.ba = load <2 x i64>, ptr %i.ay, align 1, !alias.scope !7195, !noalias !7193
  %i.bb = load <2 x i64>, ptr %i.az, align 1, !alias.scope !7201, !noalias !7190
  store <2 x i64> %i.bb, ptr %i.ay, align 1, !alias.scope !7195, !noalias !7193
  store <2 x i64> %i.ba, ptr %i.az, align 1, !alias.scope !7201, !noalias !7190
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h065073bf2b8ac653E.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h065073bf2b8ac653E.exit": ; preds = %.epil.preheader, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h065073bf2b8ac653E.exit.loopexit.unr-lcssa", %bb.g
  %i.bc = icmp eq i64 %i.m, 0
  br i1 %i.bc, label %bb.k, label %bb.j

bb.j:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h065073bf2b8ac653E.exit"
  %i.bd = add nsw i64 %i.m, -1                    ; 2 uses
  store i64 %i.bd, ptr %i.c, align 8
  %i.be = load i64, ptr %i.a, align 8, !range !165, !noundef !6
  %i.bf = icmp samesign ult i64 %i.bd, %i.be
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = icmp ult i64 %i.m, 576460752303423489
  tail call void @llvm.assume(i1 %i.bg)
  br label %bb.k

bb.k:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h065073bf2b8ac653E.exit", %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

"_ZN4core3ptr95drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$lindera_dictionary..viterbi..WordId$RP$$GT$$GT$17h7044c7ec805258a1E.exit": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN18lindera_dictionary7viterbi7Lattice20calculate_path_costs17h057c0b3efb4362b7E(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 3 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph113

.lr.ph113:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load i64, ptr %i.d, align 8, !noundef !6 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !6
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !6
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8              ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i32, ptr %i.m, align 8              ; 3 uses
  %.sroa.5.0.in.i.i18 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.i.i19 = load i64, ptr %.sroa.5.0.in.i.i18, align 8 ; 10 uses
  %.sroa.0.0.in.i.i21 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.i.i22 = load ptr, ptr %.sroa.0.0.in.i.i21, align 8, !nonnull !6 ; 3 uses
  %i.o = load i64, ptr %2, align 8, !range !66
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load i64, ptr %i.q, align 8              ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load i64, ptr %i.s, align 8              ; 3 uses
  %i.u = trunc nuw nsw i64 %i.t to i32            ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.w = load i32, ptr %i.v, align 4              ; 2 uses
  %i.x = trunc nuw nsw i64 %i.r to i32            ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.z = load i32, ptr %i.y, align 8              ; 2 uses
  %i.aa = load ptr, ptr %i.l, align 8, !nonnull !6 ; 4 uses
  br label %bb.b

.loopexit41:                                      ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17hc09e4201af149bfcE.exit, %bb.d
  %exitcond181.not = icmp eq i64 %i.ab, %i.b
  br i1 %exitcond181.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %.loopexit41, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph113, %.loopexit41
  %.sroa.011.0112 = phi i64 [ 0, %.lr.ph113 ], [ %i.ab, %.loopexit41 ] ; 4 uses
  %i.ab = add nuw nsw i64 %.sroa.011.0112, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.011.0112, %i.e
  br i1 %exitcond.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.e, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @235) #46
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %.sroa.011.0112 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !noundef !6 ; 2 uses
  %.idx = shl nuw nsw i64 %i.ag, 2
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx
  %i.ai = icmp eq i64 %i.ag, 0
  br i1 %i.ai, label %.loopexit41, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.011.0112 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZN4core4iter6traits8iterator8Iterator6reduce17hc09e4201af149bfcE.exit
  %.sroa.013.0111 = phi ptr [ %i.ae, %.lr.ph ], [ %i.am, %_ZN4core4iter6traits8iterator8Iterator6reduce17hc09e4201af149bfcE.exit ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.013.0111, i64 4 ; 2 uses
  %i.an = load i32, ptr %.sroa.013.0111, align 4, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7204)
  %i.ao = zext i32 %i.an to i64                   ; 3 uses
  %i.ap = icmp ugt i64 %i.k, %i.ao
  br i1 %i.ap, label %_ZN18lindera_dictionary7viterbi7Lattice4edge17hfc4be10caf523974E.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ao, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @236) #46, !noalias !7204
  unreachable

_ZN18lindera_dictionary7viterbi7Lattice4edge17hfc4be10caf523974E.exit: ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw [40 x i8], ptr %i.aa, i64 %i.ao ; 5 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.3.0.copyload = load i16, ptr %.sroa.3.0..sroa_idx, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 18
  %.sroa.4.0.copyload = load i16, ptr %.sroa.4.0..sroa_idx, align 2
  %i.ar = load i64, ptr %i.ak, align 8, !noundef !6 ; 5 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %_ZN4core4iter6traits8iterator8Iterator6reduce17hc09e4201af149bfcE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN18lindera_dictionary7viterbi7Lattice4edge17hfc4be10caf523974E.exit
  %i.at = load ptr, ptr %i.al, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4 ; 2 uses
  %.val.i.i.i.i = load i32, ptr %i.at, align 4, !noalias !7207, !noundef !6 ; 5 uses
  %i.av = zext i32 %.val.i.i.i.i to i64           ; 3 uses
  %i.aw = icmp ugt i64 %i.k, %i.av
  br i1 %i.aw, label %_ZN18lindera_dictionary7viterbi7Lattice4edge17hfc4be10caf523974E.exit.i17, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.av, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @236) #46, !noalias !7219
  unreachable

_ZN18lindera_dictionary7viterbi7Lattice4edge17hfc4be10caf523974E.exit.i17: ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw [40 x i8], ptr %i.aa, i64 %i.av ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load i32, ptr %i.ay, align 4, !noalias !7224, !noundef !6 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  %i.bb = load i16, ptr %i.ba, align 4, !noalias !7224, !noundef !6
  %i.bc = zext i16 %i.bb to i32
  %i.bd = zext i16 %.sroa.4.0.copyload to i32     ; 3 uses
  %i.be = mul i32 %i.n, %i.bc
  %i.bf = add i32 %i.be, %i.bd
  %i.bg = zext i32 %i.bf to i64
  %i.bh = shl nuw nsw i64 %i.bg, 1
  %i.bi = add nuw nsw i64 %i.bh, 4                ; 4 uses
  %i.bj = icmp ugt i64 %i.bi, %.sroa.5.0.i.i19
  br i1 %i.bj, label %bb.j, label %bb.i, !prof !238

bb.i:                                             ; preds = %_ZN18lindera_dictionary7viterbi7Lattice4edge17hfc4be10caf523974E.exit.i17
  %i.bk = sub nuw i64 %.sroa.5.0.i.i19, %i.bi     ; 2 uses
  %i.bl = icmp ugt i64 %i.bk, 1
  br i1 %i.bl, label %_ZN18lindera_dictionary10dictionary22connection_cost_matrix20ConnectionCostMatrix4cost17h1af9c03f745efe19E.exit.i20, label %bb.k, !prof !7

bb.j:                                             ; preds = %_ZN18lindera_dictionary7viterbi7Lattice4edge17hfc4be10caf523974E.exit.i17
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.bi, i64 noundef %.sroa.5.0.i.i19, i64 noundef %.sroa.5.0.i.i19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @114) #46, !noalias !7225
  unreachable

bb.k:                                             ; preds = %bb.i
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef 2, i64 noundef %i.bk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #46, !noalias !7225
  unreachable

_ZN18lindera_dictionary10dictionary22connection_cost_matrix20ConnectionCostMatrix4cost17h1af9c03f745efe19E.exit.i20: ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i22, i64 %i.bi
  %.sroa.03.0.copyload.i.i23 = load i16, ptr %i.bm, align 1, !noalias !7225 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN3csv11byte_record10ByteRecord15clone_truncated17hf7751234a95e422bE:bb.a
  %i.ak = phi ptr [ @278, %"_ZN4core3ptr45drop_in_place$LT$csv..byte_record..Bounds$GT$17h4586e3b30e3cc20aE.exit" ], [ @277, %bb.k ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.ai, i64 noundef %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ak) #46
          to label %.cont39 unwind label %bb.g

.cont39:                                          ; preds = %.invoke38
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %.0.val, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.an = icmp slt i64 %i.af, 0
  br i1 %i.an, label %.invoke, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !7914

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.l
  %i.ao = icmp eq i64 %i.af, 0
  br i1 %i.ao, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !7915
  %i.ap = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.af, i64 noundef range(i64 1, 9) 1) #47, !noalias !7915 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %.invoke, label %bb.n

.invoke:                                          ; preds = %bb.e, %bb.f, %bb.l, %bb.m
  %i.ar = phi i64 [ 0, %bb.l ], [ 1, %bb.m ], [ 8, %bb.f ], [ 0, %bb.e ]
  %i.as = phi i64 [ %i.af, %bb.l ], [ %i.af, %bb.m ], [ %i.k, %bb.f ], [ %i.k, %bb.e ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.ar, i64 %i.as, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @662) #46
          to label %.cont unwind label %bb.g

.cont:                                            ; preds = %.invoke
  unreachable

bb.n:                                             ; preds = %bb.m, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.thread
  %.sroa.06.0232629 = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.af, %bb.m ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.thread ] ; 3 uses
  %i.at = phi ptr [ %i.am, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.am, %bb.m ], [ %i.ac, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.thread ]
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.ap, %bb.m ], [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.thread ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %i.at, i64 %.sroa.06.0232629, i1 false), !noalias !7923
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %.val = load i64, ptr %i.au, align 8            ; 2 uses
  %i.av = getelementptr i8, ptr %i.c, i64 40      ; 2 uses
  %i.aw = icmp eq i64 %.val, 0
  br i1 %i.aw, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit", label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val13 = load ptr, ptr %i.av, align 8, !nonnull !6, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #47
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit": ; preds = %bb.o, %bb.n
  store i64 %.sroa.06.0232629, ptr %i.au, align 8
  store ptr %.sroa.10.0.i.i, ptr %i.av, align 8
  %.sroa.6.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 %.sroa.06.0232629, ptr %.sroa.6.0..sroa_idx12, align 8
  ret ptr %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_ZN3csv11byte_record10ByteRecord3get17h2d4c12ec880f5ec7E(ptr nofree readonly captures(none) %.0.val, i64 noundef range(i64 0, 4) %0) unnamed_addr #0 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7924)
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 80
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !7924, !noalias !7927, !noundef !6
  %.not.i = icmp ult i64 %0, %i.b
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 72
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !7924, !noalias !7927
  %i.e = icmp ult i64 %0, %i.d
  %or.cond.i = select i1 %.not.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %_ZN3csv11byte_record6Bounds3get17hdfbf8a2153324920E.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !7924, !noalias !7927, !nonnull !6, !noundef !6
  %i.h = getelementptr [8 x i8], ptr %i.g, i64 %0 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noalias !7929, !noundef !6 ; 4 uses
  %i.j = icmp eq i64 %0, 0
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.h, i64 -8
  %i.l = load i64, ptr %i.k, align 8, !noalias !7929, !noundef !6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph = phi i64 [ 0, %bb.b ], [ %i.l, %bb.c ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val, i64 48
  %i.n = load i64, ptr %i.m, align 8, !noundef !6 ; 2 uses
  %i.o = icmp ult i64 %i.i, %.sroa.4.0.ph
  %.not = icmp ugt i64 %i.i, %i.n
  %or.cond = or i1 %i.o, %.not
  br i1 %or.cond, label %bb.e, label %bb.f, !prof !16

_ZN3csv11byte_record6Bounds3get17hdfbf8a2153324920E.exit: ; preds = %bb.a, %bb.f
  %.sroa.3.0 = phi i64 [ %i.t, %bb.f ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.u, %bb.f ], [ null, %bb.a ]
  %i.p = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.q = insertvalue { ptr, i64 } %i.p, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.q

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.4.0.ph, i64 noundef %i.i, i64 noundef %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @279) #46
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !6, !noundef !6
  %i.t = sub nuw i64 %i.i, %.sroa.4.0.ph
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.4.0.ph
  br label %_ZN3csv11byte_record6Bounds3get17hdfbf8a2153324920E.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc i64 @_ZN3csv11byte_record10ByteRecord8as_slice17h7689ee3ea62b5a7bE(ptr nofree readonly captures(none) %.0.val) unnamed_addr #0 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 80
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 72
  %i.f = load i64, ptr %i.e, align 8, !noundef !6 ; 2 uses
  %.not = icmp ugt i64 %i.b, %i.f
  br i1 %.not, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.b, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @278) #46
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not4 = icmp eq i64 %i.b, 0
  br i1 %.not4, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr [8 x i8], ptr %i.d, i64 %i.b
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %i.i = load i64, ptr %i.h, align 8, !noundef !6 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0.val, i64 48
  %i.k = load i64, ptr %i.j, align 8, !noundef !6 ; 2 uses
  %.not5 = icmp ugt i64 %i.i, %i.k
  br i1 %.not5, label %bb.e, label %.thread, !prof !3471

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.i, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @280) #46
  unreachable

.thread:                                          ; preds = %bb.c, %bb.d
  %.sroa.0.03 = phi i64 [ %i.i, %bb.d ], [ 0, %bb.c ]
  ret i64 %.sroa.0.03
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN3csv11byte_record10ByteRecord8validate17h39cc0e1d17e34fdaE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !6, !align !15, !noundef !6 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !6 ; 2 uses
  %.not = icmp ugt i64 %i.d, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.d, i64 noundef %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @278) #46
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not6 = icmp eq i64 %i.d, 0                    ; 2 uses
  br i1 %.not6, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !6
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr [8 x i8], ptr %i.f, i64 %i.d
  %i.l = getelementptr i8, ptr %i.k, i64 -8
  %i.m = load i64, ptr %i.l, align 8, !noundef !6 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !noundef !6 ; 3 uses
  %.not7 = icmp ugt i64 %i.m, %i.o
  br i1 %.not7, label %bb.e, label %bb.f, !prof !3471

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.m, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @281) #46
  unreachable

bb.f:                                             ; preds = %.thread, %bb.d
  %i.p = phi i64 [ %i.j, %.thread ], [ %i.o, %bb.d ] ; 2 uses
  %i.q = phi ptr [ %i.i, %.thread ], [ %i.n, %bb.d ]
  %.sroa.0.015 = phi i64 [ 0, %.thread ], [ %i.m, %bb.d ] ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !6, !noundef !6 ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i, %bb.f
  %indvar = phi i64 [ %indvar.next, %._crit_edge.i ], [ 0, %bb.f ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ %i.t, %._crit_edge.i ], [ 0, %bb.f ] ; 8 uses
  %i.t = add nuw i64 %.sroa.01.0.i, 32            ; 2 uses
  %.not.i = icmp ugt i64 %i.t, %.sroa.0.015
  br i1 %.not.i, label %.preheader.i, label %._crit_edge.i

.preheader.i:                                     ; preds = %bb.g
  %i.u = icmp ult i64 %.sroa.01.0.i, %.sroa.0.015
  br i1 %i.u, label %iter.check, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread17

iter.check:                                       ; preds = %.preheader.i
  %i.v = shl i64 %indvar, 5
  %i.w = sub i64 %.sroa.0.015, %i.v               ; 4 uses
  %min.iters.check = icmp ult i64 %i.w, 4
  br i1 %min.iters.check, label %.lr.ph25.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check146 = icmp ult i64 %i.w, 32
  br i1 %min.iters.check146, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.x = and i64 %.sroa.0.015, 31                 ; 3 uses
  %n.vec = sub nuw i64 %i.w, %i.x                 ; 3 uses
  %i.y = add i64 %.sroa.01.0.i, %n.vec
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.01.0.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.ae, %vector.body ]
  %vec.phi147 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.af, %vector.body ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load = load <16 x i8>, ptr %i.aa, align 1, !alias.scope !7930
  %wide.load148 = load <16 x i8>, ptr %i.ab, align 1, !alias.scope !7930
  %i.ac = icmp slt <16 x i8> %wide.load, zeroinitializer
  %i.ad = icmp slt <16 x i8> %wide.load148, zeroinitializer
  %i.ae = or <16 x i1> %vec.phi, %i.ac            ; 2 uses
  %i.af = or <16 x i1> %vec.phi147, %i.ad         ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !7933

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %i.af, %i.ae
  %bin.rdx.fr = freeze <16 x i1> %bin.rdx
  %i.ah = bitcast <16 x i1> %bin.rdx.fr to i16
  %.not157 = icmp eq i16 %i.ah, 0                 ; 3 uses
  %cmp.n = icmp eq i64 %i.x, 0
  br i1 %cmp.n, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp samesign ult i64 %i.x, 4
  br i1 %min.epilog.iters.check, label %.lr.ph25.i.preheader, label %vec.epilog.ph, !prof !7934

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %.not157, %vec.epilog.iter.check ], [ true, %vector.main.loop.iter.check ]
  %i.ai = xor i1 %bc.merge.rdx, true
  %i.aj = and i64 %.sroa.0.015, 3                 ; 2 uses
  %n.vec149 = sub i64 %i.w, %i.aj                 ; 2 uses
  %i.ak = add i64 %.sroa.01.0.i, %n.vec149
  %broadcast.splatinsert = insertelement <4 x i1> poison, i1 %i.ai, i64 0
  %broadcast.splat = shufflevector <4 x i1> %broadcast.splatinsert, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.01.0.i
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index150 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next153, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi151 = phi <4 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %.fr158, %vec.epilog.vector.body ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %index150
  %wide.load152 = load <4 x i8>, ptr %i.am, align 1, !alias.scope !7930
  %i.an = icmp slt <4 x i8> %wide.load152, zeroinitializer
  %i.ao = or <4 x i1> %vec.phi151, %i.an
  %.fr158 = freeze <4 x i1> %i.ao                 ; 2 uses
  %index.next153 = add nuw i64 %index150, 4       ; 2 uses
  %i.ap = icmp eq i64 %index.next153, %n.vec149
  br i1 %i.ap, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !7935

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.aq = bitcast <4 x i1> %.fr158 to i4
  %.not159 = icmp eq i4 %i.aq, 0                  ; 2 uses
  %cmp.n154 = icmp eq i64 %i.aj, 0
  br i1 %cmp.n154, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit, label %.lr.ph25.i.preheader

.lr.ph25.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.124.i.ph = phi i64 [ %.sroa.01.0.i, %iter.check ], [ %i.y, %vec.epilog.iter.check ], [ %i.ak, %vec.epilog.middle.block ]
  %.sroa.011.023.i.ph = phi i1 [ true, %iter.check ], [ %.not157, %vec.epilog.iter.check ], [ %.not159, %vec.epilog.middle.block ]
  br label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %.lr.ph25.i.preheader, %.lr.ph25.i
  %.sroa.01.124.i = phi i64 [ %i.au, %.lr.ph25.i ], [ %.sroa.01.124.i.ph, %.lr.ph25.i.preheader ] ; 2 uses
  %.sroa.011.023.i = phi i1 [ %i.at, %.lr.ph25.i ], [ %.sroa.011.023.i.ph, %.lr.ph25.i.preheader ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.01.124.i
  %i.as = load i8, ptr %i.ar, align 1, !alias.scope !7930, !noundef !6
  %.inv.i = icmp sgt i8 %i.as, -1
  %i.at = select i1 %.inv.i, i1 %.sroa.011.023.i, i1 false ; 2 uses
  %i.au = add nuw i64 %.sroa.01.124.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.au, %.sroa.0.015
  br i1 %exitcond.not.i, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit, label %.lr.ph25.i, !llvm.loop !7936

._crit_edge.i:                                    ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.01.0.i
  %i.aw = load <32 x i8>, ptr %i.av, align 1, !alias.scope !7930
  %i.ax = icmp slt <32 x i8> %i.aw, zeroinitializer
  %i.ay = bitcast <32 x i1> %i.ax to i32
  %i.az = icmp eq i32 %i.ay, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.az, label %bb.g, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread

_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit: ; preds = %.lr.ph25.i, %vec.epilog.middle.block, %middle.block
  %.lcssa144 = phi i1 [ %.not159, %vec.epilog.middle.block ], [ %.not157, %middle.block ], [ %i.at, %.lr.ph25.i ]
  br i1 %.lcssa144, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread17, label %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread

_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread: ; preds = %._crit_edge.i, %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit
  br i1 %.not6, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread
  %i.ba = getelementptr [8 x i8], ptr %i.f, i64 %i.d
  %i.bb = getelementptr i8, ptr %i.ba, i64 -8
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !6 ; 2 uses
  %.not5.i = icmp ugt i64 %i.bc, %i.p
  br i1 %.not5.i, label %bb.i, label %.lr.ph, !prof !3471

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.bc, i64 noundef %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @280) #46
  unreachable

_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread17: ; preds = %.preheader.i, %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit
  store i64 0, ptr %0, align 8
  br label %bb.p

.lr.ph:                                           ; preds = %bb.h, %bb.r
  %.sroa.6.053 = phi i64 [ %i.bi, %bb.r ], [ 0, %bb.h ] ; 4 uses
  %.sroa.9.052 = phi i64 [ %i.bj, %bb.r ], [ 0, %bb.h ] ; 5 uses
  %i.bd = load i64, ptr %i.c, align 8, !noalias !7937, !noundef !6 ; 4 uses
  %i.be = load ptr, ptr %i.e, align 8, !noalias !7937, !nonnull !6, !noundef !6
  %i.bf = load i64, ptr %i.g, align 8, !noalias !7937, !noundef !6 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.bd, %i.bf
  br i1 %.not.i.i, label %bb.j, label %bb.k, !prof !16

bb.j:                                             ; preds = %.lr.ph
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.bd, i64 noundef %i.bf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @278) #46, !noalias !7937
  unreachable

bb.k:                                             ; preds = %.lr.ph
  %i.bg = icmp ult i64 %.sroa.9.052, %i.bd
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.sroa.9.052
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !7937, !noundef !6 ; 5 uses
  %i.bj = add nuw i64 %.sroa.9.052, 1             ; 2 uses
  %i.bk = load i64, ptr %i.q, align 8, !noalias !7937, !noundef !6 ; 2 uses
  %i.bl = icmp ult i64 %i.bi, %.sroa.6.053
  %.not5.i.i = icmp ugt i64 %i.bi, %i.bk
  %or.cond.i.i = or i1 %i.bl, %.not5.i.i
  br i1 %or.cond.i.i, label %bb.n, label %bb.o, !prof !16

bb.m:                                             ; preds = %bb.k
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.9.052, i64 noundef %i.bd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @665) #46, !noalias !7937
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.6.053, i64 noundef %i.bi, i64 noundef %i.bk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @666) #46, !noalias !7937
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.bm = load ptr, ptr %i.r, align 8, !noalias !7937, !nonnull !6, !noundef !6
  %i.bn = sub nuw i64 %i.bi, %.sroa.6.053
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sroa.6.053
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bo, i64 noundef %i.bn)
  %i.bp = load i64, ptr %i.a, align 8, !range !66, !noundef !6
  %i.bq = trunc nuw i64 %i.bp to i1
  br i1 %i.bq, label %bb.q, label %bb.r

._crit_edge:                                      ; preds = %bb.r, %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread
  store i64 0, ptr %0, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %._crit_edge, %_ZN4core5slice5ascii8is_ascii17h899e380db11233a2E.exit.thread17
  ret void

bb.q:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !noundef !6
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9.052, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bs, ptr %i.bu, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.p

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bv = icmp eq i64 %i.bj, %i.d
  br i1 %i.bv, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN3log13__private_api3log17hf9f12c07259fa6c9E(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, i64 noundef range(i64 2, 5) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [128 x i8], align 8               ; 20 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7943)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7946)
  %i.c = load ptr, ptr %2, align 8, !alias.scope !7946, !noalias !7943, !nonnull !6, !align !44, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !7946, !noalias !7943, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !7946, !noalias !7943, !nonnull !6, !align !44, !noundef !6
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !7946, !noalias !7943, !noundef !6
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !7946, !noalias !7943, !nonnull !6, !align !15, !noundef !6 ; 3 uses
  %.sroa.033.0.copyload.i = load ptr, ptr %0, align 8, !alias.scope !7943, !noalias !7946
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.535.0.copyload.i = load i64, ptr %.sroa.535.0..sroa_idx.i, align 8, !alias.scope !7943, !noalias !7946
  %.sroa.638.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.638.0.copyload.i = load ptr, ptr %.sroa.638.0..sroa_idx.i, align 8, !alias.scope !7943, !noalias !7946
  %.sroa.741.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.741.0.copyload.i = load i64, ptr %.sroa.741.0..sroa_idx.i, align 8, !alias.scope !7943, !noalias !7946
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !7943, !noalias !7946
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.9.0.copyload.i = load i64, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !7943, !noalias !7946
  %i.l = load ptr, ptr %i.k, align 8, !noalias !7948, !nonnull !6, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noalias !7948, !noundef !6
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.p = load i32, ptr %i.o, align 8, !noalias !7948, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7948
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %1, ptr %i.q, align 8, !noalias !7948
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.c, ptr %.sroa.431.0..sroa_idx.i, align 8, !noalias !7948
  %.sroa.532.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %i.e, ptr %.sroa.532.0..sroa_idx.i, align 8, !noalias !7948
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %.sroa.033.0.copyload.i, ptr %i.r, align 8, !noalias !7948
  %.sroa.449.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i64 %.sroa.535.0.copyload.i, ptr %.sroa.449.0..sroa_idx.i, align 8, !noalias !7948
  %.sroa.550.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %.sroa.638.0.copyload.i, ptr %.sroa.550.0..sroa_idx.i, align 8, !noalias !7948
  %.sroa.651.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 %.sroa.741.0.copyload.i, ptr %.sroa.651.0..sroa_idx.i, align 8, !noalias !7948
  %.sroa.752.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr %.sroa.8.0.copyload.i, ptr %.sroa.752.0..sroa_idx.i, align 8, !noalias !7948
  %.sroa.853.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i64 %.sroa.9.0.copyload.i, ptr %.sroa.853.0..sroa_idx.i, align 8, !noalias !7948
  store i64 0, ptr %i.b, align 8, !noalias !7948
  %.sroa.462.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %.sroa.462.0..sroa_idx.i, align 8, !noalias !7948
  %.sroa.563.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.i, ptr %.sroa.563.0..sroa_idx.i, align 8, !noalias !7948
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.s, align 8, !noalias !7948
  %.sroa.524.0..sroa_idx25.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.l, ptr %.sroa.524.0..sroa_idx25.i, align 8, !noalias !7948
  %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.n, ptr %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i, align 8, !noalias !7948
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %i.t, align 8, !noalias !7948
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 %i.p, ptr %i.u, align 4, !noalias !7948
  call void @"_ZN61_$LT$log..__private_api..GlobalLogger$u20$as$u20$log..Log$GT$3log17h07563ec464464c22E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.b), !noalias !7948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7948
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN3std2fs4File6create17h69e01749f742f1bfE(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 438, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %.sroa.5.0..sroa_idx, i8 0, i64 6, i1 false)
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 1
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 4
  store i8 1, ptr %.sroa.8.0..sroa_idx, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val4 = load i64, ptr %i.c, align 8, !noundef !6
  invoke void @_ZN3std2fs11OpenOptions5_open17h005de3b10d8796e4E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val, i64 noundef %.val4)
          to label %_ZN3std2fs11OpenOptions4open17hfb5b7e7cb828732dE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !7949)
  %.val.i = load i64, ptr %1, align 8, !alias.scope !7949 ; 2 uses
  %i.e = icmp eq i64 %.val.i, 0
  br i1 %i.e, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hb9309341f9b26f65E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !7949
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hb9309341f9b26f65E.exit"

_ZN3std2fs11OpenOptions4open17hfb5b7e7cb828732dE.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !7952)
  %.val.i5 = load i64, ptr %1, align 8, !alias.scope !7952 ; 2 uses
  %i.f = icmp eq i64 %.val.i5, 0
  br i1 %i.f, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hb9309341f9b26f65E.exit7", label %bb.d

bb.d:                                             ; preds = %_ZN3std2fs11OpenOptions4open17hfb5b7e7cb828732dE.exit
end_hunk_2
begin_hunk_3_@"_ZN5alloc3str21_$LT$impl$u20$str$GT$7replace17h7d0841879e301d78E":bb.a
  br label %bb.d

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.08.096
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10859)
  %gepdiff = sub nuw nsw i64 %i.af, %.sroa.08.096 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10862)
  %i.aw = load i64, ptr %i.b, align 8, !range !165, !alias.scope !10865, !noundef !6 ; 2 uses
  %i.ax = sub i64 %i.aw, %i.q
  %i.ay = icmp ugt i64 %gepdiff, %i.ax
  br i1 %i.ay, label %bb.l, label %bb.o, !prof !238

bb.l:                                             ; preds = %bb.k
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h55eb09a37fd96b73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.q, i64 noundef %gepdiff, i64 noundef 1, i64 noundef 1)
          to label %.noexc29 unwind label %.loopexit.split-lp

.noexc29:                                         ; preds = %bb.l
  %.pre.i.i = load i64, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !10868
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !10868
  %.pre118 = load i64, ptr %i.b, align 8, !range !165, !alias.scope !10869
  br label %bb.o

.critedge24:                                      ; preds = %bb.i, %.preheader.i.i, %.noexc, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10876)
  %gepdiff71 = sub nuw nsw i64 %2, %.sroa.08.096  ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10879)
  %i.az = load i64, ptr %i.b, align 8, !range !165, !alias.scope !10882, !noundef !6
  %i.ba = sub i64 %i.az, %i.q
  %i.bb = icmp ugt i64 %gepdiff71, %i.ba
  br i1 %i.bb, label %bb.m, label %bb.n, !prof !238

bb.m:                                             ; preds = %.critedge24
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h55eb09a37fd96b73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.q, i64 noundef %gepdiff71, i64 noundef 1, i64 noundef 1)
          to label %.noexc31 unwind label %bb.f

.noexc31:                                         ; preds = %bb.m
  %.pre.i.i30 = load i64, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !10885
  %.pre120 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !10885
  br label %bb.n

bb.n:                                             ; preds = %.noexc31, %.critedge24
  %i.bc = phi ptr [ %i.p, %.critedge24 ], [ %.pre120, %.noexc31 ]
  %i.bd = phi i64 [ %i.q, %.critedge24 ], [ %.pre.i.i30, %.noexc31 ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.08.096
  %i.bf = icmp sgt i64 %i.bd, -1
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bd
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bg, ptr nonnull readonly align 1 %i.be, i64 %gepdiff71, i1 false), !noalias !10885
  %i.bh = add nuw i64 %i.bd, %gepdiff71
  store i64 %i.bh, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !10885
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.o:                                             ; preds = %.noexc29, %bb.k
  %i.bi = phi ptr [ %i.p, %bb.k ], [ %.pre, %.noexc29 ] ; 2 uses
  %i.bj = phi i64 [ %i.aw, %bb.k ], [ %.pre118, %.noexc29 ]
  %i.bk = phi i64 [ %i.q, %bb.k ], [ %.pre.i.i, %.noexc29 ] ; 3 uses
  %i.bl = icmp sgt i64 %i.bk, -1
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bk
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr nonnull readonly align 1 %i.av, i64 %gepdiff, i1 false), !noalias !10868
  %i.bn = add nuw i64 %i.bk, %gepdiff             ; 4 uses
  store i64 %i.bn, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !10868
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10886)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10887)
  %i.bo = sub i64 %i.bj, %i.bn
  %i.bp = icmp ult i64 %i.bo, 3
  br i1 %i.bp, label %bb.p, label %bb.q, !prof !238

bb.p:                                             ; preds = %bb.o
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h55eb09a37fd96b73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.bn, i64 noundef 3, i64 noundef 1, i64 noundef 1)
          to label %.noexc34 unwind label %.loopexit.split-lp

.noexc34:                                         ; preds = %bb.p
  %.pre.i.i33 = load i64, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !10888
  %.pre119 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !10888
  br label %bb.q

bb.q:                                             ; preds = %.noexc34, %bb.o
  %i.bq = phi ptr [ %i.bi, %bb.o ], [ %.pre119, %.noexc34 ] ; 2 uses
  %i.br = phi i64 [ %i.bn, %bb.o ], [ %.pre.i.i33, %.noexc34 ] ; 3 uses
  %i.bs = icmp sgt i64 %i.br, -1
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.br
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.bt, ptr noundef nonnull readonly align 1 dereferenceable(3) %4, i64 3, i1 false), !noalias !10888
  %i.bu = add nuw i64 %i.br, 3                    ; 2 uses
  store i64 %i.bu, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !10888
  br label %.lr.ph.split.i

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit": ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6resize17h3e8ac0e446ecdc5fE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 10 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %.not = icmp ugt i64 %1, %i.b
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %1, %i.b                     ; 6 uses
  %.sroa.0.0.copyload = load i64, ptr %2, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 5 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10889)
  %i.e = load i64, ptr %0, align 8, !range !165, !alias.scope !10892, !noalias !10895, !noundef !6
  %i.f = sub nsw i64 %i.e, %i.b
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h07f2cf7c984b98f2E.exit.i", !prof !238

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h55eb09a37fd96b73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.d, i64 noundef 8, i64 noundef 24)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h07f2cf7c984b98f2E.exit_crit_edge.i" unwind label %bb.d, !noalias !10895

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h07f2cf7c984b98f2E.exit_crit_edge.i": ; preds = %bb.c
  %.pre.i = load i64, ptr %i.a, align 8, !alias.scope !10889, !noalias !10895
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h07f2cf7c984b98f2E.exit.i"

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h07f2cf7c984b98f2E.exit.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h07f2cf7c984b98f2E.exit_crit_edge.i", %bb.b
  %i.i = phi i64 [ %.pre.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h07f2cf7c984b98f2E.exit_crit_edge.i" ], [ %i.b, %bb.b ] ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !10889, !noalias !10895, !nonnull !6, !noundef !6
  %i.l = icmp ult i64 %i.i, 384307168202282326
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.i ; 4 uses
  %i.n = icmp ugt i64 %i.d, 1
  br i1 %i.n, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h07f2cf7c984b98f2E.exit.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  %i.o = shl i64 %.sroa.9.0.copyload, 2           ; 5 uses
  %i.p = icmp ugt i64 %.sroa.9.0.copyload, 4611686018427387903
  %i.q = icmp ugt i64 %i.o, 9223372036854775804
  %or.cond.i.i.i.i.i.i = or i1 %i.p, %i.q
  br i1 %or.cond.i.i.i.i.i.i, label %.split.us.i, label %.lr.ph.split.i, !prof !27

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.r = icmp eq i64 %i.o, 0
  br i1 %i.r, label %.lr.ph.split.split.us.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.preheader.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.preheader.i: ; preds = %.lr.ph.split.i
  %i.s = add i64 %i.d, -1
  %i.t = add i64 %i.s, %i.i
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i
  %i.u = icmp eq i64 %.sroa.9.0.copyload, 0
  tail call void @llvm.assume(i1 %i.u)
  %i.v = xor i64 %i.b, -1
  %i.w = add i64 %1, %i.v                         ; 2 uses
  %i.x = add i64 %1, -2
  %i.y = sub i64 %i.x, %i.b
  %xtraiter = and i64 %i.w, 3                     ; 3 uses
  %i.z = icmp ult i64 %i.y, 3
  br i1 %i.z, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.us.i.epil.preheader, label %.lr.ph.split.split.us.i.new

.lr.ph.split.split.us.i.new:                      ; preds = %.lr.ph.split.split.us.i
  %unroll_iter = and i64 %i.w, -4
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.us.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.us.i: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.us.i, %.lr.ph.split.split.us.i.new
  %.sroa.0.010.us14.i = phi ptr [ %i.m, %.lr.ph.split.split.us.i.new ], [ %i.ad, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.us.i ] ; 13 uses
  %niter = phi i64 [ 0, %.lr.ph.split.split.us.i.new ], [ %niter.next.3, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.us.i ]
  store i64 0, ptr %.sroa.0.010.us14.i, align 8, !noalias !10897
  %.sroa.4.0..sroa.0.0.sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us14.i, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa.0.0.sroa_idx.us.i, align 8, !noalias !10897
  %.sroa.5.0..sroa.0.0.sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us14.i, i64 16
  store i64 0, ptr %.sroa.5.0..sroa.0.0.sroa_idx.us.i, align 8, !noalias !10897
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us14.i, i64 24
  store i64 0, ptr %i.aa, align 8, !noalias !10897
  %.sroa.4.0..sroa.0.0.sroa_idx.us.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us14.i, i64 32
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa.0.0.sroa_idx.us.i.1, align 8, !noalias !10897
  %.sroa.5.0..sroa.0.0.sroa_idx.us.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us14.i, i64 40
  store i64 0, ptr %.sroa.5.0..sroa.0.0.sroa_idx.us.i.1, align 8, !noalias !10897
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us14.i, i64 48
  store i64 0, ptr %i.ab, align 8, !noalias !10897
  %.sroa.4.0..sroa.0.0.sroa_idx.us.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us14.i, i64 56
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa.0.0.sroa_idx.us.i.2, align 8, !noalias !10897
  %.sroa.5.0..sroa.0.0.sroa_idx.us.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us14.i, i64 64
  store i64 0, ptr %.sroa.5.0..sroa.0.0.sroa_idx.us.i.2, align 8, !noalias !10897
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us14.i, i64 72
  store i64 0, ptr %i.ac, align 8, !noalias !10897
  %.sroa.4.0..sroa.0.0.sroa_idx.us.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us14.i, i64 80
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa.0.0.sroa_idx.us.i.3, align 8, !noalias !10897
  %.sroa.5.0..sroa.0.0.sroa_idx.us.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us14.i, i64 88
  store i64 0, ptr %.sroa.5.0..sroa.0.0.sroa_idx.us.i.3, align 8, !noalias !10897
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us14.i, i64 96 ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.i.unr-lcssa, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.us.i

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.us.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.us.i.epil.preheader

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.us.i.epil.preheader: ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.split.split.us.i
  %.sroa.0.010.us14.i.epil.init = phi ptr [ %i.m, %.lr.ph.split.split.us.i ], [ %i.ad, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod23 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.us.i.epil

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.us.i.epil: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.us.i.epil, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.us.i.epil.preheader
  %.sroa.0.010.us14.i.epil = phi ptr [ %.sroa.0.010.us14.i.epil.init, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.us.i.epil.preheader ], [ %i.ae, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.us.i.epil ] ; 4 uses
  %epil.iter = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.us.i.epil.preheader ], [ %epil.iter.next, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.us.i.epil ]
  store i64 0, ptr %.sroa.0.010.us14.i.epil, align 8, !noalias !10897
  %.sroa.4.0..sroa.0.0.sroa_idx.us.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us14.i.epil, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa.0.0.sroa_idx.us.i.epil, align 8, !noalias !10897
  %.sroa.5.0..sroa.0.0.sroa_idx.us.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us14.i.epil, i64 16
  store i64 0, ptr %.sroa.5.0..sroa.0.0.sroa_idx.us.i.epil, align 8, !noalias !10897
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us14.i.epil, i64 24 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.us.i.epil, !llvm.loop !10898

._crit_edge.loopexit.i:                           ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.us.i.epil, %._crit_edge.loopexit.i.unr-lcssa
  %.lcssa = phi ptr [ %i.ad, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.ae, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.us.i.epil ]
  %i.af = add i64 %i.d, -1
  %i.ag = add i64 %i.af, %i.i
  br label %._crit_edge.thread.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.f, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.preheader.i
  %.sroa.0.010.i = phi ptr [ %i.am, %bb.f ], [ %i.m, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.preheader.i ] ; 4 uses
  %.sroa.03.09.i = phi i64 [ %i.al, %bb.f ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.preheader.i ]
  %storemerge8.i = phi i64 [ %i.an, %bb.f ], [ %i.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.preheader.i ] ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !10899
  %i.ah = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef range(i64 1, 9) 4) #47, !noalias !10899 ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %.split.us.i, label %bb.f

.split.us.i:                                      ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, %.lr.ph.i
  %.us-phi12.i = phi i64 [ %i.i, %.lr.ph.i ], [ %storemerge8.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ]
  %.us-phi13.i = phi i64 [ 0, %.lr.ph.i ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.us-phi13.i, i64 %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @662) #46
          to label %.noexc21.i unwind label %bb.e, !noalias !10897

.noexc21.i:                                       ; preds = %.split.us.i
  unreachable

._crit_edge.thread.i:                             ; preds = %bb.f, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h07f2cf7c984b98f2E.exit.i", %._crit_edge.loopexit.i
  %.sroa.0.0.lcssa32.i = phi ptr [ %i.m, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h07f2cf7c984b98f2E.exit.i" ], [ %.lcssa, %._crit_edge.loopexit.i ], [ %i.am, %bb.f ] ; 3 uses
  %storemerge.lcssa31.i = phi i64 [ %i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h07f2cf7c984b98f2E.exit.i" ], [ %i.ag, %._crit_edge.loopexit.i ], [ %i.t, %bb.f ]
  store i64 %.sroa.0.0.copyload, ptr %.sroa.0.0.lcssa32.i, align 8, !noalias !10889
  %.sroa.6.0..sroa.0.0.lcssa32.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa32.i, i64 8
  store ptr %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa.0.0.lcssa32.i.sroa_idx, align 8, !noalias !10889
  %.sroa.9.0..sroa.0.0.lcssa32.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa32.i, i64 16
  store i64 %.sroa.9.0.copyload, ptr %.sroa.9.0..sroa.0.0.lcssa32.i.sroa_idx, align 8, !noalias !10889
  %i.aj = add i64 %storemerge.lcssa31.i, 1
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !10889, !noalias !10895
  br label %"_ZN4core3ptr79drop_in_place$LT$alloc..vec..Vec$LT$lindera_dictionary..viterbi..EdgeId$GT$$GT$17haf5342039a92ecb0E.exit"

bb.e:                                             ; preds = %.split.us.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  store i64 %.us-phi12.i, ptr %i.a, align 8, !alias.scope !10889, !noalias !10895
  br label %bb.g

bb.f:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ah, ptr nonnull readonly align 4 %.sroa.6.0.copyload, i64 %i.o, i1 false), !noalias !10909
  %i.al = add nuw i64 %.sroa.03.09.i, 1           ; 2 uses
  store i64 %.sroa.9.0.copyload, ptr %.sroa.0.010.i, align 8, !noalias !10897
  %.sroa.4.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 8
  store ptr %i.ah, ptr %.sroa.4.0..sroa.0.0.sroa_idx.i, align 8, !noalias !10897
  %.sroa.5.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 16
  store i64 %.sroa.9.0.copyload, ptr %.sroa.5.0..sroa.0.0.sroa_idx.i, align 8, !noalias !10897
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 24 ; 2 uses
  %i.an = add i64 %storemerge8.i, 1
  %exitcond.not.i = icmp eq i64 %i.al, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.ak, %bb.e ], [ %i.h, %bb.d ]
  %i.ao = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.ao, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  %i.ap = shl nuw i64 %.sroa.0.0.copyload, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload, i64 noundef %i.ap, i64 noundef range(i64 1, -9223372036854775807) 4) #47, !noalias !10897
  br label %.body

bb.i:                                             ; preds = %bb.a
  %i.aq = sub nuw nsw i64 %i.b, %1
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !6, !noundef !6
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %1
  store i64 %1, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10910)
  %i.au = icmp eq i64 %i.b, %1
  br i1 %i.au, label %"_ZN4core3ptr89drop_in_place$LT$$u5b$alloc..vec..Vec$LT$lindera_dictionary..viterbi..EdgeId$GT$$u5d$$GT$17heb07d56ab98771e5E.exit", label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %bb.i, %"_ZN4core3ptr79drop_in_place$LT$alloc..vec..Vec$LT$lindera_dictionary..viterbi..EdgeId$GT$$GT$17haf5342039a92ecb0E.exit.i"
  %.sroa.0.011.i = phi i64 [ %i.aw, %"_ZN4core3ptr79drop_in_place$LT$alloc..vec..Vec$LT$lindera_dictionary..viterbi..EdgeId$GT$$GT$17haf5342039a92ecb0E.exit.i" ], [ 0, %bb.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %.sroa.0.011.i ; 2 uses
  %i.aw = add nuw i64 %.sroa.0.011.i, 1           ; 2 uses
  %.val8.i = load i64, ptr %i.av, align 8, !alias.scope !10910 ; 2 uses
  %i.ax = icmp eq i64 %.val8.i, 0
  br i1 %i.ax, label %"_ZN4core3ptr79drop_in_place$LT$alloc..vec..Vec$LT$lindera_dictionary..viterbi..EdgeId$GT$$GT$17haf5342039a92ecb0E.exit.i", label %bb.j

bb.j:                                             ; preds = %.lr.ph.i7
  %i.ay = getelementptr i8, ptr %i.av, i64 8
  %.val9.i = load ptr, ptr %i.ay, align 8, !alias.scope !10910, !nonnull !6, !noundef !6
  %i.az = shl nuw i64 %.val8.i, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i, i64 noundef %i.az, i64 noundef range(i64 1, -9223372036854775807) 4) #47, !noalias !10910
  br label %"_ZN4core3ptr79drop_in_place$LT$alloc..vec..Vec$LT$lindera_dictionary..viterbi..EdgeId$GT$$GT$17haf5342039a92ecb0E.exit.i"

"_ZN4core3ptr79drop_in_place$LT$alloc..vec..Vec$LT$lindera_dictionary..viterbi..EdgeId$GT$$GT$17haf5342039a92ecb0E.exit.i": ; preds = %bb.j, %.lr.ph.i7
  %i.ba = icmp eq i64 %i.aw, %i.aq
  br i1 %i.ba, label %"_ZN4core3ptr89drop_in_place$LT$$u5b$alloc..vec..Vec$LT$lindera_dictionary..viterbi..EdgeId$GT$$u5d$$GT$17heb07d56ab98771e5E.exit", label %.lr.ph.i7

"_ZN4core3ptr89drop_in_place$LT$$u5b$alloc..vec..Vec$LT$lindera_dictionary..viterbi..EdgeId$GT$$u5d$$GT$17heb07d56ab98771e5E.exit": ; preds = %"_ZN4core3ptr79drop_in_place$LT$alloc..vec..Vec$LT$lindera_dictionary..viterbi..EdgeId$GT$$GT$17haf5342039a92ecb0E.exit.i", %bb.i
  %.val5 = load i64, ptr %2, align 8              ; 2 uses
  %i.bb = icmp eq i64 %.val5, 0
  br i1 %i.bb, label %"_ZN4core3ptr79drop_in_place$LT$alloc..vec..Vec$LT$lindera_dictionary..viterbi..EdgeId$GT$$GT$17haf5342039a92ecb0E.exit", label %bb.k

bb.k:                                             ; preds = %"_ZN4core3ptr89drop_in_place$LT$$u5b$alloc..vec..Vec$LT$lindera_dictionary..viterbi..EdgeId$GT$$u5d$$GT$17heb07d56ab98771e5E.exit"
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val6 = load ptr, ptr %i.bc, align 8, !nonnull !6, !noundef !6
  %i.bd = shl nuw i64 %.val5, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6, i64 noundef %i.bd, i64 noundef range(i64 1, -9223372036854775807) 4) #47
  br label %"_ZN4core3ptr79drop_in_place$LT$alloc..vec..Vec$LT$lindera_dictionary..viterbi..EdgeId$GT$$GT$17haf5342039a92ecb0E.exit"

"_ZN4core3ptr79drop_in_place$LT$alloc..vec..Vec$LT$lindera_dictionary..viterbi..EdgeId$GT$$GT$17haf5342039a92ecb0E.exit": ; preds = %._crit_edge.thread.i, %bb.k, %"_ZN4core3ptr89drop_in_place$LT$$u5b$alloc..vec..Vec$LT$lindera_dictionary..viterbi..EdgeId$GT$$u5d$$GT$17heb07d56ab98771e5E.exit"
  ret void

.body:                                            ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %.pn.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key17h587a1e8e3971b864E"(ptr noalias noundef nonnull align 8 %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = icmp ult i64 %1, 2
  br i1 %i.b, label %_ZN5alloc5slice11stable_sort17hbc2808a13ff16557E.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %1, 21
  br i1 %i.c, label %bb.d, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  call void @_ZN4core5slice4sort6stable14driftsort_main17h87a60ecc5147f4baE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN5alloc5slice11stable_sort17hbc2808a13ff16557E.exit

bb.d:                                             ; preds = %bb.b
  tail call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hcd7d6b68654184b8E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1)
  br label %_ZN5alloc5slice11stable_sort17hbc2808a13ff16557E.exit

_ZN5alloc5slice11stable_sort17hbc2808a13ff16557E.exit: ; preds = %bb.a, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key28_$u7b$$u7b$closure$u7d$$u7d$17h44baa969d4dbea80E"(ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.0.val1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10913)
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 80
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !10913, !noalias !10916, !noundef !6
  %.not.i.i.i = icmp ne i64 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 72
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !10913, !noalias !10916
  %i.e = icmp ne i64 %i.d, 0
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !10913, !noalias !10916, !nonnull !6, !noundef !6
  %i.h = load i64, ptr %i.g, align 8, !noalias !10920, !noundef !6 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 48
  %i.j = load i64, ptr %i.i, align 8, !noalias !10921, !noundef !6 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.h, %i.j
  br i1 %.not.i.i, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.h, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @279) #46, !noalias !10921
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.0.val, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !noalias !10921, !nonnull !6, !noundef !6
  %i.m = icmp slt i64 %i.h, 0
  br i1 %i.m, label %bb.f, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !27

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.d
  %i.n = icmp eq i64 %i.h, 0                      ; 3 uses
end_hunk_3
begin_hunk_4_@"_ZN91_$LT$core..str..iter..SplitWhitespace$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h28d1d74b6235900eE":bb.a
  %i.bq = lshr i8 %i.bp, 1
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h06910994891be35cE.exit.i.i.i.i.i.i.i"

"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h06910994891be35cE.exit.i.i.i.i.i.i.i": ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.bh, %bb.i ], [ %i.bl, %bb.j ], [ %i.bf, %bb.h ], [ %i.bq, %bb.k ]
  %i.br = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.br, label %bb.m, label %bb.l

bb.l:                                             ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h06910994891be35cE.exit.i.i.i.i.i.i.i", %bb.g, %bb.f
  %i.bs = icmp eq ptr %i.ax, %i.e
  br i1 %i.bs, label %"._ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h427e7d7cbc44a783E.exit.loopexit_crit_edge.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i

"._ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h427e7d7cbc44a783E.exit.loopexit_crit_edge.i.i.i.i.i.i": ; preds = %bb.l
  store ptr %i.ax, ptr %i.c, align 8, !alias.scope !12136, !noalias !12137
  store i64 %i.bb, ptr %i.f, align 8, !alias.scope !12138, !noalias !12137
  br label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h5b25cc8c060053d3E.exit.i.i.i.i"

bb.m:                                             ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h06910994891be35cE.exit.i.i.i.i.i.i.i", %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  store ptr %i.ax, ptr %i.c, align 8, !alias.scope !12136, !noalias !12137
  store i64 %i.bb, ptr %i.f, align 8, !alias.scope !12138, !noalias !12137
  store i64 %i.bb, ptr %0, align 8, !alias.scope !12108
  br label %select.unfold.i.i

"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h5b25cc8c060053d3E.exit.i.i.i.i": ; preds = %"._ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h427e7d7cbc44a783E.exit.loopexit_crit_edge.i.i.i.i.i.i", %bb.c
  %.lcssa1729.i.i = phi i64 [ %i.bb, %"._ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h427e7d7cbc44a783E.exit.loopexit_crit_edge.i.i.i.i.i.i" ], [ %.lcssa1730.i.i, %bb.c ]
  %.lcssa1925.i.i = phi ptr [ %i.ax, %"._ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h427e7d7cbc44a783E.exit.loopexit_crit_edge.i.i.i.i.i.i" ], [ %.lcssa1926.i.i, %bb.c ]
  store i8 1, ptr %i.a, align 1, !alias.scope !12139
  %.not.i.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i, %.pre.i.i.i22.i.i
  %or.cond.not.i.i.i.i.i = select i1 %i.i, i1 true, i1 %.not.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i, label %select.unfold.i.i, label %_ZN4core4iter6traits8iterator8Iterator4find17h366378d99f124f6dE.exit

select.unfold.i.i:                                ; preds = %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h5b25cc8c060053d3E.exit.i.i.i.i", %bb.m
  %.lcssa1728.i.i = phi i64 [ %i.bb, %bb.m ], [ %.lcssa1729.i.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h5b25cc8c060053d3E.exit.i.i.i.i" ]
  %.lcssa1924.i.i = phi ptr [ %i.ax, %bb.m ], [ %.lcssa1925.i.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h5b25cc8c060053d3E.exit.i.i.i.i" ]
  %.pre.i.i.i21.i.i = phi i64 [ %i.bb, %bb.m ], [ %.pre.i.i.i22.i.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h5b25cc8c060053d3E.exit.i.i.i.i" ]
  %i.bt = phi i8 [ 0, %bb.m ], [ 1, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h5b25cc8c060053d3E.exit.i.i.i.i" ]
  %.pn31.i.i = phi i64 [ %i.m, %bb.m ], [ %.pre2.i.i.i.i.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h5b25cc8c060053d3E.exit.i.i.i.i" ]
  %.sroa.4.1.i.i.i.i = sub nuw i64 %.pn31.i.i, %.pre.i.i.i22.i.i ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.4.1.i.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.b, label %bb.n

bb.n:                                             ; preds = %select.unfold.i.i
  %.sroa.0.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.pre.i.i.i22.i.i
  br label %_ZN4core4iter6traits8iterator8Iterator4find17h366378d99f124f6dE.exit

_ZN4core4iter6traits8iterator8Iterator4find17h366378d99f124f6dE.exit: ; preds = %bb.b, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h5b25cc8c060053d3E.exit.i.i.i.i", %bb.n
  %.sroa.3.0.i.i = phi i64 [ %.sroa.4.1.i.i.i.i, %bb.n ], [ undef, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h5b25cc8c060053d3E.exit.i.i.i.i" ], [ undef, %bb.b ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i.i.i, %bb.n ], [ null, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h5b25cc8c060053d3E.exit.i.i.i.i" ], [ null, %bb.b ]
  %i.bu = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i.i, 0
  %i.bv = insertvalue { ptr, i64 } %i.bu, i64 %.sroa.3.0.i.i, 1
  ret { ptr, i64 } %i.bv
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @"_ZN91_$LT$csv..byte_record..ByteRecordIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb5effb2d22cacd2E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !6 ; 4 uses
  %i.h = load ptr, ptr %0, align 8, !nonnull !6, !align !15, !noundef !6
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !6, !align !15, !noundef !6 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.k = load i64, ptr %i.j, align 8, !noundef !6 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.o = load i64, ptr %i.n, align 8, !noundef !6 ; 2 uses
  %.not = icmp ugt i64 %i.k, %i.o
  br i1 %.not, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.k, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @278) #46
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.p = icmp ult i64 %i.b, %i.k
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.b
  %i.r = load i64, ptr %i.q, align 8, !noundef !6 ; 5 uses
  %i.s = add nuw i64 %i.b, 1
  store i64 %i.s, ptr %i.a, align 8
  store i64 %i.r, ptr %i.f, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.u = load i64, ptr %i.t, align 8, !noundef !6 ; 2 uses
  %i.v = icmp ult i64 %i.r, %i.g
  %.not5 = icmp ugt i64 %i.r, %i.u
  %or.cond = or i1 %i.v, %.not5
  br i1 %or.cond, label %bb.g, label %bb.h, !prof !16

bb.f:                                             ; preds = %bb.d
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.b, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @665) #46
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.g, i64 noundef %i.r, i64 noundef %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @666) #46
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !6, !noundef !6
  %i.y = sub nuw i64 %i.r, %i.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.g
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  %.sroa.3.0 = phi i64 [ %i.y, %bb.h ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.z, %bb.h ], [ null, %bb.a ]
  %i.aa = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.ab = insertvalue { ptr, i64 } %i.aa, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.ab
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 %1, ptr nofree readonly captures(none) %.40.val, i64 noundef range(i64 4, 33) %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val13 = load ptr, ptr %0, align 8             ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val14 = load i64, ptr %i.b, align 8, !noundef !6
  %i.c = add i64 %.val14, 1                       ; 7 uses
  %.not6.i = icmp eq i64 %i.c, 0
  br i1 %.not6.i, label %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread20, label %.lr.ph.i

_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread20: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.val13, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %.val13, i64 %i.c, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = lshr i64 %i.c, 4
  %i.f = and i64 %i.c, 15
  %.not9.i.i.i = icmp ne i64 %i.f, 0
  %i.g = zext i1 %.not9.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.e, %i.g  ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.h = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.b

._crit_edge.i.unr-lcssa:                          ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.sroa.0.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.r, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod40 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod40)
  %i.i = getelementptr inbounds nuw i8, ptr %.val13, i64 %.sroa.0.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.i, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.j = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.k = or <2 x i64> %i.j, splat (i64 -9187201950435737472)
  store <2 x i64> %i.k, ptr %i.i, align 16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %. = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16)
  %.29 = tail call i64 @llvm.umin.i64(i64 %i.c, i64 16)
  %i.n = getelementptr inbounds nuw i8, ptr %.val13, i64 %.
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %.val13, i64 %.29, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.l, align 8
  store i64 %2, ptr %i.m, align 8
  store ptr %0, ptr %i.a, align 8
  br label %.lr.ph

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.sroa.0.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.r, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val13, i64 %.sroa.0.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.o, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.p = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.q = or <2 x i64> %i.p, splat (i64 -9187201950435737472)
  store <2 x i64> %i.q, ptr %i.o, align 16
  %i.r = add i64 %.sroa.0.08.i, 32                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val13, i64 %.sroa.0.08.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.t, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.u = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.v = or <2 x i64> %i.u, splat (i64 -9187201950435737472)
  store <2 x i64> %i.v, ptr %i.t, align 16
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.b

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.l
  %.sroa.0.17 = phi i64 [ %.sroa.0.1, %bb.l ], [ 1, %._crit_edge.i ] ; 3 uses
  %.sroa.0.06 = phi i64 [ %.sroa.0.17, %bb.l ], [ 0, %._crit_edge.i ] ; 8 uses
  %i.w = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.0.06
  %i.y = load i8, ptr %i.x, align 1, !noundef !6
  %.not = icmp eq i8 %i.y, -128
  br i1 %.not, label %bb.c, label %bb.l

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre = load i64, ptr %i.b, align 8             ; 2 uses
  %.pre13 = add i64 %.pre, 1
  %i.z = lshr i64 %.pre13, 3
  %i.aa = mul nuw i64 %i.z, 7
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread20, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %i.aa, %._crit_edge.loopexit ], [ 0, %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread20 ]
  %i.ab = phi i64 [ %.pre, %._crit_edge.loopexit ], [ -1, %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread20 ] ; 2 uses
  %i.ac = icmp ult i64 %i.ab, 8
  %.sroa.06.0 = select i1 %i.ac, i64 %i.ab, i64 %.pre-phi
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !6
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = sub i64 %.sroa.06.0, %i.ae
  store i64 %i.ag, ptr %i.af, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %.lr.ph
  %.neg = xor i64 %.sroa.0.06, -1
  %.neg9 = mul i64 %2, %.neg
  %i.ah = getelementptr inbounds i8, ptr %i.w, i64 %.neg9 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  %i.ai = invoke noundef i64 %.40.val(ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.06)
          to label %bb.f unwind label %bb.e       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr181drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h4014954ab0ed36a7E"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #48
          to label %bb.n unwind label %bb.m

bb.f:                                             ; preds = %bb.d
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 7 uses
  %.val12 = load i64, ptr %i.b, align 8, !noundef !6 ; 6 uses
  %.sroa.0.04.i = and i64 %.val12, %i.ai          ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.04.i
  %.sroa.0.0.copyload.i35.i = load <16 x i8>, ptr %i.ak, align 1, !noalias !12142
  %i.al = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i, zeroinitializer
  %i.am = bitcast <16 x i1> %i.al to i16          ; 2 uses
  %.not.not.i.not6.i = icmp eq i16 %i.am, 0
  br i1 %.not.not.i.not6.i, label %.lr.ph.i16, label %._crit_edge.i15, !prof !4943

.lr.ph.i16:                                       ; preds = %bb.f, %.lr.ph.i16
  %.sroa.0.07.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i16 ], [ %.sroa.0.04.i, %bb.f ]
  %i.an = phi i64 [ %i.ao, %.lr.ph.i16 ], [ 0, %bb.f ]
  %i.ao = add i64 %i.an, 16                       ; 2 uses
  %i.ap = add i64 %i.ao, %.sroa.0.07.i
  %.sroa.0.0.i = and i64 %i.ap, %.val12           ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i3.i = load <16 x i8>, ptr %i.aq, align 1, !noalias !12142
  %i.ar = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i, zeroinitializer
  %i.as = bitcast <16 x i1> %i.ar to i16          ; 2 uses
  %.not.not.i.not.i = icmp eq i16 %i.as, 0
  br i1 %.not.not.i.not.i, label %.lr.ph.i16, label %._crit_edge.i15, !prof !4944

._crit_edge.i15:                                  ; preds = %.lr.ph.i16, %bb.f
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.04.i, %bb.f ], [ %.sroa.0.0.i, %.lr.ph.i16 ]
  %.lcssa.i = phi i16 [ %i.am, %bb.f ], [ %i.as, %.lr.ph.i16 ]
  %i.at = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.au = zext nneg i16 %i.at to i64
  %i.av = add i64 %.sroa.0.0.lcssa.i, %i.au
  %i.aw = and i64 %i.av, %.val12                  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !noundef !6
  %i.az = icmp sgt i8 %i.ay, -1
  br i1 %i.az, label %bb.g, label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit, !prof !238

bb.g:                                             ; preds = %._crit_edge.i15
  %.val2.i.i = load <16 x i8>, ptr %.val, align 16
  %i.ba = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.bb = bitcast <16 x i1> %i.ba to i16          ; 2 uses
  %i.bc = icmp ne i16 %i.bb, 0
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bb, i1 true)
  %i.be = zext nneg i16 %i.bd to i64
  br label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit

_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit: ; preds = %bb.g, %._crit_edge.i15
  %.sroa.0.0.i5.i = phi i64 [ %i.be, %bb.g ], [ %i.aw, %._crit_edge.i15 ] ; 4 uses
  %i.bf = sub i64 %.sroa.0.06, %.sroa.0.04.i
  %i.bg = sub i64 %.sroa.0.0.i5.i, %.sroa.0.04.i
  %i.bh = xor i64 %i.bg, %i.bf
  %.unshifted = and i64 %i.bh, %.val12
  %i.bi = icmp ult i64 %.unshifted, 16
  br i1 %i.bi, label %bb.i, label %bb.h, !prof !7

bb.h:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit
  %.neg10 = xor i64 %.sroa.0.0.i5.i, -1
  %.neg11 = mul i64 %2, %.neg10
  %i.bj = getelementptr inbounds i8, ptr %.val, i64 %.neg11 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noundef !6
  %i.bm = lshr i64 %i.ai, 57
  %i.bn = trunc nuw nsw i64 %i.bm to i8           ; 2 uses
  %i.bo = add i64 %.sroa.0.0.i5.i, -16
  %i.bp = and i64 %i.bo, %.val12
  store i8 %i.bn, ptr %i.bk, align 1
  %i.bq = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bp
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  store i8 %i.bn, ptr %i.bs, align 1
  %i.bt = icmp eq i8 %i.bl, -1
  br i1 %i.bt, label %bb.j, label %bb.k

bb.i:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit
  %i.bu = lshr i64 %i.ai, 57
  %i.bv = trunc nuw nsw i64 %i.bu to i8           ; 2 uses
  %i.bw = add i64 %.sroa.0.06, -16
  %i.bx = and i64 %.val12, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.06
  store i8 %i.bv, ptr %i.by, align 1
  %i.bz = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.bx
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  store i8 %i.bv, ptr %i.cb, align 1
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cc = add i64 %.sroa.0.06, -16
  %i.cd = load i64, ptr %i.b, align 8, !noundef !6
  %i.ce = and i64 %i.cd, %i.cc
  %i.cf = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.sroa.0.06
  store i8 -1, ptr %i.cg, align 1
  %i.ch = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.ce
  %i.cj = getelementptr i8, ptr %i.ci, i64 16
  store i8 -1, ptr %i.cj, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %i.ah, i64 %2, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  tail call fastcc void @_ZN4core3ptr19swap_nonoverlapping17h373b35d9db9cd362E(ptr noundef %i.ah, ptr noundef %i.bj, i64 noundef %2)
  br label %bb.d

bb.l:                                             ; preds = %.lr.ph, %bb.j, %bb.i
  %i.ck = icmp ult i64 %.sroa.0.17, %i.c          ; 2 uses
  %i.cl = zext i1 %i.ck to i64
  %.sroa.0.1 = add nuw i64 %.sroa.0.17, %i.cl
  br i1 %i.ck, label %.lr.ph, label %._crit_edge.loopexit

bb.m:                                             ; preds = %bb.e
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #49
  unreachable

bb.n:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.aj
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h9ae800c5dc2dae1aE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, i64 noundef range(i64 4, 33) %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @215, i64 32, i1 false)
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %2, 15
  br i1 %i.b, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.c, label %bb.l, label %bb.e, !prof !238

bb.e:                                             ; preds = %bb.d
  %i.d = shl nuw i64 %2, 3
  %i.e = udiv i64 %i.d, 7
  %i.f = add nsw i64 %i.e, -1
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = lshr i64 -1, %i.g
  %i.i = add nuw nsw i64 %i.h, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.j = icmp samesign ult i64 %2, 4
  %i.k = and i64 %2, 8
  %..i = add nuw nsw i64 %i.k, 8
  %.sroa.03.0.i = select i1 %i.j, i64 4, i64 %..i
end_hunk_4
