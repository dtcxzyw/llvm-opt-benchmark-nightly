Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_core-071202eab9d332bc.nickel_lang_core.cad9b9c1e83c4439-cgu.0?download=true
inline.NumInlined: 37290
inline.NumDeleted: 15086
loop-unroll.NumCompletelyUnrolled: 98
loop-unroll.NumRuntimeUnrolled: 96
loop-unroll.NumUnrolled: 197
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@"_ZN129_$LT$nickel_lang_parser..ast..Node$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..term..Term$GT$$GT$13from_mainline17h34197faa5dbc9c31E":bb.a
  %.sroa.04.0.i57719 = phi i64 [ 0, %.lr.ph720 ], [ %i.wf, %.noexc64 ] ; 2 uses
  %.sroa.0569.0718 = phi ptr [ %i.vf, %.lr.ph720 ], [ %i.wd, %.noexc64 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4438)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6435)
  %i.wb = icmp eq ptr %.sroa.0569.0718, %i.vi
  br i1 %i.wb, label %.noexc206.thread, label %.noexc206

.noexc206:                                        ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4505)
  %i.wc = getelementptr inbounds nuw i8, ptr %.sroa.0569.0718, i64 360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.4505.200..sroa_idx, ptr noundef nonnull readonly align 8 dereferenceable(20) %i.wc, i64 20, i1 false), !noalias !24708
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24709
  call void @"_ZN163_$LT$nickel_lang_parser..ast..record..FieldMetadata$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..term..record..FieldMetadata$GT$$GT$13from_mainline17h760592dda216adadE"(ptr noalias noundef nonnull sret([200 x i8]) align 8 captures(address) dereferenceable(200) %i.d, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(384) %.sroa.0569.0718), !inline_history !24555
  %.sroa.0504.0.copyload = load i64, ptr %i.d, align 8, !noalias !24710 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %.sroa.4505, ptr noundef nonnull align 8 dereferenceable(192) %.sroa.4505.0..sroa_idx, i64 192, i1 false), !noalias !24710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !24709
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.6435, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.4505, i64 216, i1 false), !noalias !24711
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4505)
  %.not.i205 = icmp eq i64 %.sroa.0504.0.copyload, 19
  br i1 %.not.i205, label %.noexc206.thread, label %.noexc64, !prof !201

.noexc206.thread:                                 ; preds = %bb.dm, %.noexc206
  call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2731, i64 noundef 34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2733) #82, !inline_history !24558
  unreachable

.noexc64:                                         ; preds = %.noexc206
  %i.wd = getelementptr inbounds nuw i8, ptr %.sroa.0569.0718, i64 384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.4438, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.6435, i64 216, i1 false), !noalias !24712
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6435)
  %i.we = getelementptr inbounds nuw [224 x i8], ptr %.sroa.0.0.i.i56, i64 %.sroa.04.0.i57719 ; 2 uses
  %i.wf = add nuw nsw i64 %.sroa.04.0.i57719, 1   ; 2 uses
  store i64 %.sroa.0504.0.copyload, ptr %i.we, align 8
  %.sroa.4438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.we, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.4438.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.4438, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4438)
  %exitcond757.not = icmp eq i64 %i.wf, %i.vh
  br i1 %exitcond757.not, label %._crit_edge721, label %bb.dm

._crit_edge721:                                   ; preds = %.noexc64, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i55"
  %i.wg = getelementptr inbounds nuw i8, ptr %i.fi, i64 80
  %i.wh = load i8, ptr %i.wg, align 8, !range !153, !noundef !145
  store ptr %.sroa.0.0.i.i56, ptr %i.as, align 8
  %i.wi = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %i.vh, ptr %i.wi, align 8
  %i.wj = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store ptr %.sroa.0.0.i.i67, ptr %i.wj, align 8
  %i.wk = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i64 %.sroa.5361.0.copyload, ptr %i.wk, align 8
  %i.wl = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  store i8 %i.wh, ptr %i.wl, align 8
  call void @_ZN18nickel_lang_parser3ast5alloc8AstAlloc6record17h666f17bedf66e23cE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %bb.az

.body.thread:                                     ; preds = %.body.thread652.loopexit, %.body.thread652.loopexit.split-lp, %.body.i309, %bb.aj
  %eh.lpad-body645 = phi { ptr, i32 } [ %i.gy, %bb.aj ], [ %eh.lpad-body.i, %.body.i309 ], [ %lpad.loopexit684, %.body.thread652.loopexit ], [ %lpad.loopexit.split-lp685, %.body.thread652.loopexit.split-lp ]
  call fastcc void @"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..record..FieldDef$GT$$GT$17h17a3bd712ae42451E"(ptr noalias noundef align 8 dereferenceable(24) %i.at) #86
  br label %common.resume

bb.dn:                                            ; preds = %bb.as, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4451)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.4451, ptr noundef nonnull align 4 dereferenceable(44) %i.an, i64 44, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.an, ptr noundef nonnull align 4 dereferenceable(44) %i.ao, i64 44, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.ao, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.4451, i64 44, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4451)
  br label %bb.do

bb.do:                                            ; preds = %bb.as, %bb.dn
  %.sroa.0368.sroa.0.0 = phi i32 [ %.sroa.0368.sroa.0.0.copyload, %bb.as ], [ %.sroa.6369.sroa.0.0.copyload447, %bb.dn ] ; 2 uses
  %.sroa.6369.sroa.0.0 = phi i32 [ %.sroa.6369.sroa.0.0.copyload447, %bb.as ], [ %.sroa.0368.sroa.0.0.copyload, %bb.dn ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24713)
  %i.wm = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.wn = load ptr, ptr %i.wm, align 8, !noalias !24714, !nonnull !145, !noundef !145 ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 32 ; 2 uses
  %i.wp = load ptr, ptr %i.wo, align 8, !noalias !24714, !nonnull !145, !noundef !145 ; 2 uses
  %i.wq = load ptr, ptr %i.wn, align 8, !noalias !24714, !nonnull !145, !noundef !145 ; 2 uses
  %i.wr = ptrtoint ptr %i.wp to i64
  %i.ws = and i64 %i.wr, 3
  %i.wt = sub nsw i64 0, %i.ws
  %i.wu = getelementptr i8, ptr %i.wp, i64 %i.wt  ; 3 uses
  %i.wv = ptrtoint ptr %i.wu to i64
  %i.ww = ptrtoint ptr %i.wq to i64
  %i.wx = sub i64 %i.wv, %i.ww
  %i.wy = icmp ult ptr %i.wu, %i.wq
  %i.wz = icmp ult i64 %i.wx, 24
  %or.cond.i7.i = or i1 %i.wy, %i.wz
  br i1 %or.cond.i7.i, label %bb.dp, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit10.i"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit10.i": ; preds = %bb.do
  %i.xa = getelementptr i8, ptr %i.wu, i64 -24    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.xa) ], !noalias !24715
  store ptr %i.xa, ptr %i.wo, align 8, !noalias !24714
  br label %bb.dr

bb.dp:                                            ; preds = %bb.do
  %i.xb = tail call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %1, i64 noundef 4, i64 noundef 24), !noalias !24714 ; 2 uses
  %.not5.i.i218 = icmp eq ptr %i.xb, null
  br i1 %.not5.i.i218, label %bb.dq, label %bb.dr, !prof !147

bb.dq:                                            ; preds = %bb.dp
  tail call void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82, !noalias !24714
  unreachable

bb.dr:                                            ; preds = %bb.dp, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit10.i"
  %.sroa.0.0.i.i208 = phi ptr [ %i.xa, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17hdc9eb6e8441c7cdbE.exit10.i" ], [ %i.xb, %bb.dp ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.0.0.i.i208, ptr noundef nonnull readonly align 4 dereferenceable(24) %i.ap, i64 24, i1 false), !noalias !24716
  %i.xc = load ptr, ptr %i.wm, align 8, !noalias !24717, !nonnull !145, !noundef !145 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 32 ; 2 uses
  %i.xe = load ptr, ptr %i.xd, align 8, !noalias !24717, !nonnull !145, !noundef !145 ; 2 uses
  %i.xf = load ptr, ptr %i.xc, align 8, !noalias !24717, !nonnull !145, !noundef !145 ; 2 uses
  %i.xg = ptrtoint ptr %i.xe to i64
  %i.xh = and i64 %i.xg, 7
  %i.xi = sub nsw i64 0, %i.xh
  %i.xj = getelementptr i8, ptr %i.xe, i64 %i.xi  ; 3 uses
  %i.xk = ptrtoint ptr %i.xj to i64
  %i.xl = ptrtoint ptr %i.xf to i64
  %i.xm = sub i64 %i.xk, %i.xl
  %i.xn = icmp ult ptr %i.xj, %i.xf
  %i.xo = icmp ult i64 %i.xm, 96
  %or.cond.i.i209 = or i1 %i.xn, %i.xo
  br i1 %or.cond.i.i209, label %.noexc4.i215, label %.noexc3.i210

.noexc3.i210:                                     ; preds = %bb.dr
  %i.xp = getelementptr i8, ptr %i.xj, i64 -96    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.xp) ]
  store ptr %i.xp, ptr %i.xd, align 8, !noalias !24717
  br label %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcefd4a12a8ca3c13E.exit.i.i"

.noexc4.i215:                                     ; preds = %bb.dr
  %i.xq = tail call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %1, i64 noundef range(i64 1, 9) 8, i64 noundef 96), !noalias !24717 ; 2 uses
  %.not5.i.i.i216 = icmp eq ptr %i.xq, null
  br i1 %.not5.i.i.i216, label %.noexc5.i217, label %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcefd4a12a8ca3c13E.exit.i.i", !prof !147

.noexc5.i217:                                     ; preds = %.noexc4.i215
  tail call void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82, !noalias !24717
  unreachable

"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcefd4a12a8ca3c13E.exit.i.i": ; preds = %.noexc4.i215, %.noexc3.i210
  %.sroa.0.0.i.i.i211 = phi ptr [ %i.xp, %.noexc3.i210 ], [ %i.xq, %.noexc4.i215 ] ; 5 uses
  %.not.i17.i213 = icmp eq i32 %.sroa.0368.sroa.0.0, 3
  br i1 %.not.i17.i213, label %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcefd4a12a8ca3c13E.exit.thread.i.i", label %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcefd4a12a8ca3c13E.exit.i.1.i", !prof !201

"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcefd4a12a8ca3c13E.exit.thread.i.i": ; preds = %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcefd4a12a8ca3c13E.exit.i.1.i", %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcefd4a12a8ca3c13E.exit.i.i"
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2731, i64 noundef 34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2733) #82, !noalias !24717
  unreachable

"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcefd4a12a8ca3c13E.exit.i.1.i": ; preds = %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcefd4a12a8ca3c13E.exit.i.i"
  store i32 %.sroa.0368.sroa.0.0, ptr %.sroa.0.0.i.i.i211, align 8, !noalias !24718
  %.sroa.4.0..sroa_idx.i214 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i211, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.4.0..sroa_idx.i214, ptr noundef nonnull align 4 dereferenceable(44) %i.ak, i64 44, i1 false)
  %.not.i17.1.i = icmp eq i32 %.sroa.6369.sroa.0.0, 3
  br i1 %.not.i17.1.i, label %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcefd4a12a8ca3c13E.exit.thread.i.i", label %_ZN18nickel_lang_parser3ast5alloc8AstAlloc7prim_op17h4008c02c761c0463E.exit, !prof !201

_ZN18nickel_lang_parser3ast5alloc8AstAlloc7prim_op17h4008c02c761c0463E.exit: ; preds = %"_ZN99_$LT$core..array..iter..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcefd4a12a8ca3c13E.exit.i.1.i"
  %i.xr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i211, i64 48
  store i32 %.sroa.6369.sroa.0.0, ptr %i.xr, align 8, !noalias !24718
  %.sroa.4.0..sroa_idx.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i211, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.4.0..sroa_idx.1.i, ptr noundef nonnull align 4 dereferenceable(44) %i.am, i64 44, i1 false)
  %i.xs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.i208, ptr %i.xs, align 8, !alias.scope !24713, !noalias !24719
  %i.xt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.0.0.i.i.i211, ptr %i.xt, align 8, !alias.scope !24713, !noalias !24719
  %i.xu = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 2, ptr %i.xu, align 8, !alias.scope !24713, !noalias !24719
  store i8 14, ptr %0, align 8, !alias.scope !24713, !noalias !24719
  br label %bb.az

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %switch.lookup
  %i.xv = icmp eq i64 %i.jh, 0
  br i1 %i.xv, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i", label %bb.ds

bb.ds:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !24720, !inline_history !24580
  %i.xw = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.jh, i64 noundef range(i64 1, 9) 8) #83, !noalias !24720, !inline_history !24580 ; 2 uses
  %i.xx = icmp eq ptr %i.xw, null
  br i1 %i.xx, label %bb.dt, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i"

bb.dt:                                            ; preds = %bb.ds, %switch.lookup
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.ds ], [ 0, %switch.lookup ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.jh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1687) #82, !noalias !24721, !inline_history !24580
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i": ; preds = %bb.ds, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.xw, %bb.ds ] ; 11 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.jg, %bb.ds ] ; 10 uses
  %i.xy = icmp samesign ule i64 %i.jg, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.xy), !noalias !24722
  %i.xz = icmp eq i64 %i.jg, 0
  br i1 %i.xz, label %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h792f4b63c07d6878E.exit", label %.preheader687

.preheader687:                                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i", %"_ZN67_$LT$S$u20$as$u20$nickel_lang_core..ast..compat..ToAst$LT$T$GT$$GT$6to_ast17h2224305647f99620E.exit.i"
  %.sroa.6562.0 = phi i64 [ %i.yc, %"_ZN67_$LT$S$u20$as$u20$nickel_lang_core..ast..compat..ToAst$LT$T$GT$$GT$6to_ast17h2224305647f99620E.exit.i" ], [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i" ] ; 3 uses
  %i.ya = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %.sroa.6562.0
  invoke void @"_ZN142_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..ast..compat..FromMainline$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$13from_mainline17h3c0336bce50dcbeeE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ya)
          to label %"_ZN67_$LT$S$u20$as$u20$nickel_lang_core..ast..compat..ToAst$LT$T$GT$$GT$6to_ast17h2224305647f99620E.exit.i" unwind label %.body331, !inline_history !24581

"_ZN67_$LT$S$u20$as$u20$nickel_lang_core..ast..compat..ToAst$LT$T$GT$$GT$6to_ast17h2224305647f99620E.exit.i": ; preds = %.preheader687
  %i.yb = getelementptr inbounds nuw [48 x i8], ptr %.sroa.10.0.i.i, i64 %.sroa.6562.0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.yb, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  %i.yc = add nuw i64 %.sroa.6562.0, 1            ; 2 uses
  %i.yd = icmp eq i64 %i.yc, %i.jg
  br i1 %i.yd, label %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h792f4b63c07d6878E.exit", label %.preheader687

.body331:                                         ; preds = %.preheader687
  %i.ye = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yf = icmp eq i64 %.sroa.4.0.i.i, 0
  br i1 %i.yf, label %common.resume, label %bb.du

bb.du:                                            ; preds = %.body331
  %i.yg = mul nuw nsw i64 %.sroa.4.0.i.i, 48
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %i.yg, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !24721, !inline_history !24580
  br label %common.resume

"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h792f4b63c07d6878E.exit": ; preds = %"_ZN67_$LT$S$u20$as$u20$nickel_lang_core..ast..compat..ToAst$LT$T$GT$$GT$6to_ast17h2224305647f99620E.exit.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he581bf1f91af6425E.exit.i.i"
  br i1 %switch.masked, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h792f4b63c07d6878E.exit"
  %switch = icmp ult i64 %i.jg, 2
  br i1 %switch, label %.invoke896, label %bb.ee

bb.dw:                                            ; preds = %bb.ef, %"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h792f4b63c07d6878E.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24723)
  %i.yh = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.yi = load ptr, ptr %i.yh, align 8, !noalias !24724, !nonnull !145, !noundef !145 ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 32 ; 2 uses
  %i.yk = load ptr, ptr %i.yj, align 8, !noalias !24724, !nonnull !145, !noundef !145 ; 2 uses
  %i.yl = load ptr, ptr %i.yi, align 8, !noalias !24724, !nonnull !145, !noundef !145 ; 2 uses
  %i.ym = ptrtoint ptr %i.yk to i64
  %i.yn = and i64 %i.ym, 3
  %i.yo = sub nsw i64 0, %i.yn
  %i.yp = getelementptr i8, ptr %i.yk, i64 %i.yo  ; 3 uses
  %i.yq = ptrtoint ptr %i.yp to i64
  %i.yr = ptrtoint ptr %i.yl to i64
  %i.ys = sub i64 %i.yq, %i.yr
  %i.yt = icmp ult ptr %i.yp, %i.yl
  %i.yu = icmp ult i64 %i.ys, 24
  %or.cond.i14.i220 = or i1 %i.yt, %i.yu
  br i1 %or.cond.i14.i220, label %bb.dx, label %.noexc3.i221

.noexc3.i221:                                     ; preds = %bb.dw
  %i.yv = getelementptr i8, ptr %i.yp, i64 -24    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.yv) ]
  store ptr %i.yv, ptr %i.yj, align 8, !noalias !24724
  br label %.noexc8.i222

bb.dx:                                            ; preds = %bb.dw
  %i.yw = invoke noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %1, i64 noundef 4, i64 noundef 24)
          to label %.noexc4.i259 unwind label %bb.ed, !noalias !24724 ; 2 uses

.noexc4.i259:                                     ; preds = %bb.dx
  %.not5.i.i260 = icmp eq ptr %i.yw, null
  br i1 %.not5.i.i260, label %bb.dy, label %.noexc8.i222, !prof !147

bb.dy:                                            ; preds = %.noexc4.i259
  invoke void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82
          to label %.noexc5.i261 unwind label %bb.ed, !noalias !24724

.noexc5.i261:                                     ; preds = %bb.dy
  unreachable

bb.dz:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.thread.i.i246", %bb.eb, %bb.ea
  %i.yx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yy = icmp eq i64 %.sroa.4.0.i.i, 0
  br i1 %i.yy, label %common.resume, label %.body.sink.split.i247

.noexc8.i222:                                     ; preds = %.noexc4.i259, %.noexc3.i221
  %.sroa.0.0.i.i223 = phi ptr [ %i.yv, %.noexc3.i221 ], [ %i.yw, %.noexc4.i259 ] ; 2 uses
  store i8 %switch.offset, ptr %.sroa.0.0.i.i223, align 4, !noalias !24725
  %i.yz = getelementptr inbounds nuw [48 x i8], ptr %.sroa.10.0.i.i, i64 %i.jg
  %.idx.i229 = mul nuw nsw i64 %i.jg, 48          ; 3 uses
  %i.za = load ptr, ptr %i.yh, align 8, !noalias !24724, !nonnull !145, !noundef !145 ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 32 ; 2 uses
  %i.zc = load ptr, ptr %i.zb, align 8, !noalias !24724, !nonnull !145, !noundef !145 ; 2 uses
  %i.zd = load ptr, ptr %i.za, align 8, !noalias !24724, !nonnull !145, !noundef !145 ; 2 uses
  %i.ze = ptrtoint ptr %i.zc to i64
  %i.zf = and i64 %i.ze, 7
  %i.zg = sub nsw i64 0, %i.zf
  %i.zh = getelementptr i8, ptr %i.zc, i64 %i.zg  ; 3 uses
  %i.zi = ptrtoint ptr %i.zh to i64
  %i.zj = ptrtoint ptr %i.zd to i64
  %i.zk = sub i64 %i.zi, %i.zj
  %i.zl = icmp ult ptr %i.zh, %i.zd
  %i.zm = icmp ugt i64 %.idx.i229, %i.zk
  %or.cond.i.i230 = select i1 %i.zl, i1 true, i1 %i.zm
  br i1 %or.cond.i.i230, label %bb.ea, label %.noexc10.i231

.noexc10.i231:                                    ; preds = %.noexc8.i222
  %i.zn = sub nsw i64 0, %.idx.i229
  %i.zo = getelementptr i8, ptr %i.zh, i64 %i.zn  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.zo) ]
  store ptr %i.zo, ptr %i.zb, align 8, !noalias !24724
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i232"

bb.ea:                                            ; preds = %.noexc8.i222
  %i.zp = invoke noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %1, i64 noundef range(i64 1, 9) 8, i64 noundef %.idx.i229)
          to label %.noexc11.i254 unwind label %bb.dz, !noalias !24724 ; 2 uses

.noexc11.i254:                                    ; preds = %bb.ea
  %.not5.i.i.i255 = icmp eq ptr %i.zp, null
  br i1 %.not5.i.i.i255, label %bb.eb, label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i232", !prof !147

bb.eb:                                            ; preds = %.noexc11.i254
  invoke void @_ZN7bumpalo3oom17hfadade8e21f84824E() #82
          to label %.noexc12.i256 unwind label %bb.dz, !noalias !24724

.noexc12.i256:                                    ; preds = %bb.eb
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i232": ; preds = %.noexc11.i254, %.noexc10.i231
  %.sroa.0.0.i.i.i233 = phi ptr [ %i.zo, %.noexc10.i231 ], [ %i.zp, %.noexc11.i254 ] ; 2 uses
  %.not.i234 = icmp eq i64 %i.jg, 0
  br i1 %.not.i234, label %._crit_edge.i245, label %.lr.ph.i235

.lr.ph.i235:                                      ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i232", %.noexc13.i241
  %.sroa.04.0.i43.i236 = phi i64 [ %i.zt, %.noexc13.i241 ], [ 0, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i232" ] ; 2 uses
  %.sroa.5.042.i237 = phi ptr [ %i.zr, %.noexc13.i241 ], [ %.sroa.10.0.i.i, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i232" ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.432.i219)
  %i.zq = icmp eq ptr %.sroa.5.042.i237, %i.yz
  br i1 %i.zq, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.thread.i.i246", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.i.i238"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.i.i238": ; preds = %.lr.ph.i235
  %.sroa.0.0.copyload1.i.i239 = load i32, ptr %.sroa.5.042.i237, align 8, !noalias !24726 ; 2 uses
  %.not.i27.i240 = icmp eq i32 %.sroa.0.0.copyload1.i.i239, 3
  br i1 %.not.i27.i240, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.thread.i.i246", label %.noexc13.i241, !prof !201

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.thread.i.i246": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.i.i238", %.lr.ph.i235
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2731, i64 noundef 34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2733) #82
          to label %.noexc28.i253 unwind label %bb.dz, !noalias !24724

.noexc28.i253:                                    ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.thread.i.i246"
  unreachable

.noexc13.i241:                                    ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h94b429640ebf6c6bE.exit.i.i238"
  %i.zr = getelementptr inbounds nuw i8, ptr %.sroa.5.042.i237, i64 48
  %.sroa.6.0..sroa_idx2.i.i242 = getelementptr inbounds nuw i8, ptr %.sroa.5.042.i237, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.432.i219, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.6.0..sroa_idx2.i.i242, i64 44, i1 false), !noalias !24724
  %i.zs = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.i.i.i233, i64 %.sroa.04.0.i43.i236 ; 2 uses
  %i.zt = add nuw nsw i64 %.sroa.04.0.i43.i236, 1 ; 2 uses
  store i32 %.sroa.0.0.copyload1.i.i239, ptr %i.zs, align 8, !noalias !24727
  %.sroa.432.0..sroa_idx.i243 = getelementptr inbounds nuw i8, ptr %i.zs, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.432.0..sroa_idx.i243, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.432.i219, i64 44, i1 false), !noalias !24727
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.432.i219)
  %exitcond.not.i244 = icmp eq i64 %i.zt, %i.jg
  br i1 %exitcond.not.i244, label %._crit_edge.i245, label %.lr.ph.i235

._crit_edge.i245:                                 ; preds = %.noexc13.i241, %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h748a068f0fc12a79E.exit.i.i232"
  %i.zu = icmp eq i64 %.sroa.4.0.i.i, 0
  br i1 %i.zu, label %bb.eg, label %bb.ec

bb.ec:                                            ; preds = %._crit_edge.i245
  %i.zv = mul nuw nsw i64 %.sroa.4.0.i.i, 48
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %i.zv, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !24728
  br label %bb.eg

.body.sink.split.i247:                            ; preds = %bb.ed, %bb.dz
  %eh.lpad-body38.ph.i250 = phi { ptr, i32 } [ %i.yx, %bb.dz ], [ %i.zx, %bb.ed ]
  %i.zw = mul nuw nsw i64 %.sroa.4.0.i.i, 48
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %i.zw, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !24724
  br label %common.resume

bb.ed:                                            ; preds = %bb.dy, %bb.dx
  %i.zx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zy = icmp eq i64 %.sroa.4.0.i.i, 0
  br i1 %i.zy, label %common.resume, label %.body.sink.split.i247

bb.ee:                                            ; preds = %bb.dv
  %i.zz = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0.i.i, i64 48, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.zz, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.zz, ptr noundef nonnull align 8 dereferenceable(48) %i.w, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %.not42 = icmp eq i64 %i.jg, 2
  br i1 %.not42, label %.invoke896, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.aaa = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef nonnull align 8 dereferenceable(48) %i.zz, i64 48, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.zz, ptr noundef nonnull align 8 dereferenceable(48) %i.aaa, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aaa, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.dw

.invoke896:                                       ; preds = %bb.dv, %bb.ee
  %i.aab = phi i64 [ %i.jg, %bb.dv ], [ 2, %bb.ee ] ; 2 uses
  %i.aac = phi ptr [ @398, %bb.dv ], [ @399, %bb.ee ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.aab, i64 noundef %i.aab, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aac) #82
          to label %.cont897 unwind label %bb.eh

.cont897:                                         ; preds = %.invoke896
  unreachable

bb.eg:                                            ; preds = %bb.ec, %._crit_edge.i245
  %i.aad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.i223, ptr %i.aad, align 8, !alias.scope !24723, !noalias !24729
  %i.aae = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_0
begin_hunk_1_@_ZN16nickel_lang_core5cache8CacheHub15resolve_imports17hef2732383dc5df9eE:bb.a
  %storemerge.i.i = phi i32 [ 1, %_ZN16nickel_lang_core8position8PosTable3get17he9d0e7b4065e9368E.exit.i.i ], [ 0, %_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E.exit.i.i ]
  store i32 %storemerge.i.i, ptr %i.k, align 4, !noalias !61287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !61287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !61287
  store ptr %2, ptr %i.i, align 8, !noalias !61287
  %i.cx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %1, ptr %i.cx, align 8, !noalias !61287
  %i.cy = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.k, ptr %i.cy, align 8, !noalias !61287
  %i.cz = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.l, ptr %i.cz, align 8, !noalias !61287
  %i.da = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.m, ptr %i.da, align 8, !noalias !61287
  invoke fastcc void @"_ZN151_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse17h49cabd7104e74541E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.j, ptr noundef nonnull %.val, ptr noalias noundef align 8 dereferenceable(40) %i.i, i1 noundef zeroext true)
          to label %bb.o unwind label %bb.l, !noalias !61288

bb.o:                                             ; preds = %_ZN16nickel_lang_core8position8PosTable3get17he9d0e7b4065e9368E.exit.thread.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !61293)
  %i.db = load i64, ptr %i.j, align 8, !range !205, !alias.scope !61293, !noalias !61287, !noundef !145
  %.not.i.i.i = icmp eq i64 %i.db, -9223372036854775805
  br i1 %.not.i.i.i, label %_ZN16nickel_lang_core9transform17import_resolution8tolerant15resolve_imports17h147ee75fd861fabbE.exit.i, label %bb.p, !prof !154

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !61294
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false), !noalias !61287
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1704, i64 noundef 43, ptr noundef nonnull align 1 %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1711, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1415) #82
          to label %bb.r unwind label %bb.q, !noalias !61295

bb.q:                                             ; preds = %bb.p
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN4core3ptr61drop_in_place$LT$nickel_lang_core..error..ImportErrorKind$GT$17h290896098ea8df6bE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.h) #86, !noalias !61295
  br label %.body.i.i

bb.r:                                             ; preds = %bb.p
  unreachable

bb.s:                                             ; preds = %bb.u
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !61288
  unreachable

bb.t:                                             ; preds = %.body.i.i
  %.val4.i.i = load ptr, ptr %i.ck, align 8, !noalias !61287, !nonnull !145, !noundef !145
  %i.de = shl nuw i64 %.val.i.i, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i, i64 noundef %i.de, i64 noundef range(i64 1, -9223372036854775807) 4) #83, !noalias !61288
  br label %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..files..FileId$GT$$GT$17h88b71a313ecfbe07E.exit.i.i"

"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..files..FileId$GT$$GT$17h88b71a313ecfbe07E.exit.i.i": ; preds = %bb.t, %.body.i.i
  br i1 %.sroa.01.0.lpad-body.i.i, label %bb.u, label %common.resume

common.resume:                                    ; preds = %bb.bu, %bb.bx, %bb.av, %"_ZN4core3ptr93drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..files..FileId$GT$$GT$17h8abcdc13171c1f51E.exit", %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..files..FileId$GT$$GT$17h88b71a313ecfbe07E.exit.i.i", %bb.u, %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..files..FileId$GT$$GT$17h88b71a313ecfbe07E.exit.i"
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i, %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..files..FileId$GT$$GT$17h88b71a313ecfbe07E.exit.i.i" ], [ %i.ei, %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..files..FileId$GT$$GT$17h88b71a313ecfbe07E.exit.i" ], [ %eh.lpad-body.i.i, %bb.u ], [ %.pn73.ph, %bb.bu ], [ %.pn73.ph, %bb.bx ], [ %.pn71, %bb.av ], [ %.pn71, %"_ZN4core3ptr93drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..files..FileId$GT$$GT$17h8abcdc13171c1f51E.exit" ]
  resume { ptr, i32 } %common.resume.op

bb.u:                                             ; preds = %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..files..FileId$GT$$GT$17h88b71a313ecfbe07E.exit.i.i"
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd08347a9e47af239E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n) #86
          to label %common.resume unwind label %bb.s, !noalias !61288

_ZN16nickel_lang_core9transform17import_resolution8tolerant15resolve_imports17h147ee75fd861fabbE.exit.i: ; preds = %bb.o
  %i.df = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !alias.scope !61293, !noalias !61287, !nonnull !145, !noundef !145 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !61287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !61287
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !61286
  %i.dh = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !61286
  %i.di = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store ptr %i.dg, ptr %i.di, align 8, !noalias !61286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !61287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !61287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !61287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !61286
  %i.dj = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !noalias !61286, !noundef !145 ; 3 uses
  %i.dl = icmp ult i64 %i.dk, 1152921504606846976
  call void @llvm.assume(i1 %i.dl)
  %.not.i92 = icmp eq i64 %i.dk, 0
  br i1 %.not.i92, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h520204295d4839ffE.exit.i.i.i", label %bb.w

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h520204295d4839ffE.exit.i.i.i": ; preds = %_ZN16nickel_lang_core9transform17import_resolution8tolerant15resolve_imports17h147ee75fd861fabbE.exit.i
  %.sroa.43.0.copyload.i = load i64, ptr %i.dh, align 8, !noalias !61286 ; 2 uses
  %i.dm = icmp eq i64 %.sroa.43.0.copyload.i, 0
  br i1 %i.dm, label %_ZN16nickel_lang_core9transform17import_resolution6strict15resolve_imports17he8c65e71b97f8e0fE.exit, label %bb.v

bb.v:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h520204295d4839ffE.exit.i.i.i"
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !61286, !nonnull !145, !noundef !145
  %i.dn = shl nuw i64 %.sroa.43.0.copyload.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %i.dn, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !61296
  br label %_ZN16nickel_lang_core9transform17import_resolution6strict15resolve_imports17he8c65e71b97f8e0fE.exit

bb.w:                                             ; preds = %_ZN16nickel_lang_core9transform17import_resolution8tolerant15resolve_imports17h147ee75fd861fabbE.exit.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.dp = load ptr, ptr %i.do, align 8, !noalias !61286, !nonnull !145, !noundef !145 ; 5 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !noalias !61297, !nonnull !145, !align !149, !noundef !145
  %i.dr = add nsw i64 %i.dk, -1                   ; 4 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dr
  %i.dt = load i64, ptr %i.ds, align 8, !noalias !61297
  store i64 %i.dt, ptr %i.dp, align 8, !noalias !61297
  store i64 %i.dr, ptr %i.dj, align 8, !noalias !61286
  call void @llvm.experimental.noalias.scope.decl(metadata !61298)
  %i.du = ptrtoint ptr %i.dg to i64
  %i.dv = and i64 %i.du, 3
  %..i.i.i156 = call i64 @llvm.umin.i64(i64 %i.dv, i64 2)
  switch i64 %..i.i.i156, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd08347a9e47af239E.exit.i" [
    i64 2, label %bb.x
    i64 0, label %bb.y
  ], !prof !150

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1704, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1715, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @463) #82
          to label %.noexc.i unwind label %bb.ac, !noalias !61299, !inline_history !152

.noexc.i:                                         ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !61300
  store ptr %i.dg, ptr %i.c, align 8, !noalias !61300
  %i.dw = load i64, ptr %i.dg, align 8, !noalias !61301, !noundef !145 ; 3 uses
  %i.dx = and i64 %i.dw, 72057594037927935
  %i.dy = add nsw i64 %i.dx, -1                   ; 3 uses
  %i.dz = and i64 %i.dw, 1080863910568919040
  %i.ea = icmp ult i64 %i.dw, 864691128455135232
  call void @llvm.assume(i1 %i.ea), !noalias !61302
  %i.eb = or i64 %i.dy, %i.dz
  store i64 %i.eb, ptr %i.dg, align 8, !noalias !61301
  %i.ec = icmp ugt i64 %i.dy, 72057594037927935
  br i1 %i.ec, label %bb.aa, label %bb.z, !prof !147

bb.z:                                             ; preds = %bb.y
  %i.ed = icmp eq i64 %i.dy, 0
  br i1 %i.ed, label %bb.ab, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h9fba45b36c04509dE.exit.i.i"

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !61301
  store ptr @2796, ptr %i.b, align 8, !noalias !61301
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ee, align 8, !noalias !61301
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.ef, align 8, !noalias !61301
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.eg, align 8, !noalias !61301
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.eh, align 8, !noalias !61301
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2797) #82
          to label %.noexc5.i unwind label %bb.ac, !noalias !61299, !inline_history !152

.noexc5.i:                                        ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.z
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #84
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h9fba45b36c04509dE.exit.i.i" unwind label %bb.ac, !noalias !61299, !inline_history !152

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h9fba45b36c04509dE.exit.i.i": ; preds = %bb.ab, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !61300
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd08347a9e47af239E.exit.i"

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.x
  %i.ei = landingpad { ptr, i32 }
          cleanup
  %.val3.i = load i64, ptr %i.o, align 8, !alias.scope !61298, !noalias !61303 ; 2 uses
  %i.ej = icmp eq i64 %.val3.i, 0
  br i1 %i.ej, label %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..files..FileId$GT$$GT$17h88b71a313ecfbe07E.exit.i", label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ek = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val4.i = load ptr, ptr %i.ek, align 8, !alias.scope !61298, !noalias !61303, !nonnull !145, !noundef !145
  %i.el = shl nuw i64 %.val3.i, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.el, i64 noundef range(i64 1, -9223372036854775807) 4) #83, !noalias !61299
  br label %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..files..FileId$GT$$GT$17h88b71a313ecfbe07E.exit.i"

"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd08347a9e47af239E.exit.i": ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h9fba45b36c04509dE.exit.i.i", %bb.w
  %.val.i157 = load i64, ptr %i.o, align 8, !alias.scope !61298, !noalias !61303 ; 2 uses
  %i.em = icmp eq i64 %.val.i157, 0
  br i1 %i.em, label %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..files..FileId$GT$$GT$17h88b71a313ecfbe07E.exit7.i", label %bb.ae

bb.ae:                                            ; preds = %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd08347a9e47af239E.exit.i"
  %i.en = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val2.i158 = load ptr, ptr %i.en, align 8, !alias.scope !61298, !noalias !61303, !nonnull !145, !noundef !145
  %i.eo = shl nuw i64 %.val.i157, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i158, i64 noundef %i.eo, i64 noundef range(i64 1, -9223372036854775807) 4) #83, !noalias !61299
  br label %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..files..FileId$GT$$GT$17h88b71a313ecfbe07E.exit7.i"

"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..files..FileId$GT$$GT$17h88b71a313ecfbe07E.exit.i": ; preds = %bb.ad, %bb.ac
  call fastcc void @"_ZN4core3ptr109drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$nickel_lang_core..error..ImportErrorKind$GT$$GT$$GT$17h438e2b4d02a23fe0E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.dh) #86, !noalias !61303
  br label %common.resume

"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..files..FileId$GT$$GT$17h88b71a313ecfbe07E.exit7.i": ; preds = %bb.ae, %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd08347a9e47af239E.exit.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !61304), !noalias !61303
  call void @llvm.experimental.noalias.scope.decl(metadata !61305), !noalias !61303
  %i.ep = icmp eq i64 %i.dr, 0
  br i1 %i.ep, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h520204295d4839ffE.exit.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..files..FileId$GT$$GT$17h88b71a313ecfbe07E.exit7.i", %.lr.ph.i.i.i.i
  %.sroa.0.08.i.i.i.i = phi i64 [ %i.er, %.lr.ph.i.i.i.i ], [ 0, %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..files..FileId$GT$$GT$17h88b71a313ecfbe07E.exit7.i" ] ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.sroa.0.08.i.i.i.i
  %i.er = add nuw i64 %.sroa.0.08.i.i.i.i, 1      ; 2 uses
  %.val7.i.i.i.i = load ptr, ptr %i.eq, align 8, !alias.scope !61305, !noalias !61306, !nonnull !145, !noundef !145 ; 2 uses
  call void @"_ZN4core3ptr61drop_in_place$LT$nickel_lang_core..error..ImportErrorKind$GT$17h290896098ea8df6bE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %.val7.i.i.i.i), !noalias !61307
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i, i64 noundef 64, i64 noundef 8) #83, !noalias !61307
  %i.es = icmp eq i64 %i.er, %i.dr
  br i1 %i.es, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h520204295d4839ffE.exit.i.i", label %.lr.ph.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h520204295d4839ffE.exit.i.i": ; preds = %.lr.ph.i.i.i.i, %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..files..FileId$GT$$GT$17h88b71a313ecfbe07E.exit7.i"
  %.val2.i.i = load i64, ptr %i.dh, align 8, !range !146, !alias.scope !61308, !noalias !61303, !noundef !145 ; 2 uses
  %i.et = icmp eq i64 %.val2.i.i, 0
  br i1 %i.et, label %_ZN16nickel_lang_core9transform17import_resolution6strict15resolve_imports17he8c65e71b97f8e0fE.exit.thread, label %bb.af

bb.af:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h520204295d4839ffE.exit.i.i"
  %i.eu = shl nuw i64 %.val2.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dp, i64 noundef %i.eu, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !61306
  br label %_ZN16nickel_lang_core9transform17import_resolution6strict15resolve_imports17he8c65e71b97f8e0fE.exit.thread

_ZN16nickel_lang_core9transform17import_resolution6strict15resolve_imports17he8c65e71b97f8e0fE.exit.thread: ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h520204295d4839ffE.exit.i.i", %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ag

_ZN16nickel_lang_core9transform17import_resolution6strict15resolve_imports17he8c65e71b97f8e0fE.exit: ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h520204295d4839ffE.exit.i.i.i", %bb.v
  %.sroa.0160.0.copyload = load i64, ptr %i.o, align 8, !noalias !61309 ; 9 uses
  %.sroa.6161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.6161.0.copyload = load ptr, ptr %.sroa.6161.0..sroa_idx, align 8, !noalias !61309 ; 9 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8, !noalias !61309 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.ev = icmp eq i64 %.sroa.0160.0.copyload, -9223372036854775808
  br i1 %i.ev, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZN16nickel_lang_core9transform17import_resolution6strict15resolve_imports17he8c65e71b97f8e0fE.exit.thread, %_ZN16nickel_lang_core9transform17import_resolution6strict15resolve_imports17he8c65e71b97f8e0fE.exit
  %.sroa.6161.0199 = phi ptr [ %i.dq, %_ZN16nickel_lang_core9transform17import_resolution6strict15resolve_imports17he8c65e71b97f8e0fE.exit.thread ], [ %.sroa.6161.0.copyload, %_ZN16nickel_lang_core9transform17import_resolution6strict15resolve_imports17he8c65e71b97f8e0fE.exit ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6161.0199) ]
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.ew, align 8
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.6161.0199, ptr %.sroa.460.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.by

bb.ah:                                            ; preds = %_ZN16nickel_lang_core9transform17import_resolution6strict15resolve_imports17he8c65e71b97f8e0fE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %i.dg, ptr %i.s, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !61310)
  %i.ex = load i64, ptr %i.v, align 8, !alias.scope !61310, !noalias !61311, !noundef !145
  %i.ey = icmp eq i64 %i.ex, 0
  br i1 %i.ey, label %select.unfold219, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.val.i93 = load i64, ptr %i.y, align 8, !alias.scope !61310, !noalias !61311, !noundef !145
  %.val5.i94 = load i64, ptr %i.z, align 8, !alias.scope !61310, !noalias !61311, !noundef !145
  %i.ez = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h09a6d483e9c9009cE(i64 %.val.i93, i64 %.val5.i94, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.t), !noalias !61310 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !61312)
  call void @llvm.experimental.noalias.scope.decl(metadata !61313)
  %i.fa = lshr i64 %i.ez, 57
  %i.fb = trunc nuw nsw i64 %i.fa to i8
  %i.fc = load i64, ptr %i.ad, align 8, !alias.scope !61314, !noalias !61315, !noundef !145 ; 2 uses
  %i.fd = load ptr, ptr %i.u, align 8, !alias.scope !61314, !noalias !61315, !nonnull !145, !noundef !145 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i95 = insertelement <16 x i8> poison, i8 %i.fb, i64 0
  %.sroa.0.15.vec.insert.i.i.i96 = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i95, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.aj

bb.aj:                                            ; preds = %bb.al, %bb.ai
  %.sroa.9.0.i.i.i98 = phi i64 [ 0, %bb.ai ], [ %i.fu, %bb.al ]
  %.pn.i.i99 = phi i64 [ %i.ez, %bb.ai ], [ %i.fv, %bb.al ]
  %.sroa.01.0.i.i.i100 = and i64 %.pn.i.i99, %i.fc ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %.sroa.01.0.i.i.i100
  %.sroa.0.0.copyload.i26.i.i101 = load <16 x i8>, ptr %i.fe, align 1, !noalias !61316 ; 2 uses
  %i.ff = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i101, %.sroa.0.15.vec.insert.i.i.i96
  %i.fg = bitcast <16 x i1> %i.ff to i16          ; 2 uses
  %.not.i.not32.i.i102 = icmp eq i16 %i.fg, 0
  br i1 %.not.i.not32.i.i102, label %._crit_edge.i.i107, label %.lr.ph.i.i103

.lr.ph.i.i103:                                    ; preds = %bb.aj, %bb.ak
  %.sroa.06.0.i33.i.i104 = phi i16 [ %i.ft, %bb.ak ], [ %i.fg, %bb.aj ] ; 3 uses
  %i.fh = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i104, i1 true)
  %i.fi = zext nneg i16 %i.fh to i64
  %i.fj = add i64 %.sroa.01.0.i.i.i100, %i.fi
  %i.fk = and i64 %i.fj, %i.fc
  %i.fl = sub nsw i64 0, %i.fk
  %i.fm = getelementptr inbounds [40 x i8], ptr %i.fd, i64 %i.fl ; 3 uses
  %i.fn = getelementptr inbounds i8, ptr %i.fm, i64 -40
  %.val3.i.i.i105 = load i32, ptr %i.fn, align 4, !noalias !61317, !noundef !145
  %i.fo = icmp eq i32 %3, %.val3.i.i.i105
  br i1 %i.fo, label %bb.an, label %bb.ak, !prof !154

._crit_edge.i.i107:                               ; preds = %bb.ak, %bb.aj
  %i.fp = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i101, splat (i8 -1)
  %i.fq = bitcast <16 x i1> %i.fp to i16
  %i.fr = icmp eq i16 %i.fq, 0
  br i1 %i.fr, label %bb.al, label %select.unfold219, !prof !147

bb.ak:                                            ; preds = %.lr.ph.i.i103
  %i.fs = add i16 %.sroa.06.0.i33.i.i104, -1
  %i.ft = and i16 %i.fs, %.sroa.06.0.i33.i.i104   ; 2 uses
  %.not.i.not.i.i106 = icmp eq i16 %i.ft, 0
  br i1 %.not.i.not.i.i106, label %._crit_edge.i.i107, label %.lr.ph.i.i103

bb.al:                                            ; preds = %._crit_edge.i.i107
  %i.fu = add i64 %.sroa.9.0.i.i.i98, 16          ; 2 uses
  %i.fv = add i64 %.sroa.01.0.i.i.i100, %i.fu
  br label %bb.aj

bb.am:                                            ; preds = %select.unfold219
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.an:                                            ; preds = %.lr.ph.i.i103
  %i.fx = getelementptr inbounds i8, ptr %i.fm, i64 -32
  %i.fy = getelementptr inbounds i8, ptr %i.fm, i64 -16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !61318)
  call void @llvm.experimental.noalias.scope.decl(metadata !61319)
  %i.fz = load ptr, ptr %i.fy, align 8, !alias.scope !61320, !nonnull !145, !noundef !145 ; 4 uses
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = and i64 %i.ga, 3
  %..i.i = call i64 @llvm.umin.i64(i64 %i.gb, i64 2)
  switch i64 %..i.i, label %bb.ax [
    i64 2, label %bb.ao
    i64 0, label %bb.ap
  ], !prof !150

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1704, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1715, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @463) #82
          to label %.noexc112 unwind label %bb.au, !inline_history !152

.noexc112:                                        ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !61320
  store ptr %i.fz, ptr %i.g, align 8, !noalias !61320
  %i.gc = load i64, ptr %i.fz, align 8, !noalias !61321, !noundef !145 ; 3 uses
  %i.gd = and i64 %i.gc, 72057594037927935
  %i.ge = add nsw i64 %i.gd, -1                   ; 3 uses
  %i.gf = and i64 %i.gc, 1080863910568919040
  %i.gg = icmp ult i64 %i.gc, 864691128455135232
  call void @llvm.assume(i1 %i.gg), !noalias !61319
  %i.gh = or i64 %i.ge, %i.gf
  store i64 %i.gh, ptr %i.fz, align 8, !noalias !61321
  %i.gi = icmp ugt i64 %i.ge, 72057594037927935
  br i1 %i.gi, label %bb.ar, label %bb.aq, !prof !147

bb.aq:                                            ; preds = %bb.ap
  %i.gj = icmp eq i64 %i.ge, 0
  br i1 %i.gj, label %bb.as, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h9fba45b36c04509dE.exit.i"

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !61321
  store ptr @2796, ptr %i.f, align 8, !noalias !61321
  %i.gk = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.gk, align 8, !noalias !61321
  %i.gl = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.gl, align 8, !noalias !61321
  %i.gm = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.gm, align 8, !noalias !61321
  %i.gn = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 0, ptr %i.gn, align 8, !noalias !61321
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2797) #82
          to label %.noexc113 unwind label %bb.au, !inline_history !152

.noexc113:                                        ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.aq
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #84
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h9fba45b36c04509dE.exit.i" unwind label %bb.au, !inline_history !152

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h9fba45b36c04509dE.exit.i": ; preds = %bb.as, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !61320
  br label %bb.ax

select.unfold219:                                 ; preds = %._crit_edge.i.i107, %bb.ah
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1118) #82
          to label %bb.at unwind label %bb.am

bb.at:                                            ; preds = %select.unfold219
  unreachable

bb.au:                                            ; preds = %bb.as, %bb.ar, %bb.ao
  %i.go = landingpad { ptr, i32 }
          cleanup
  store ptr %i.dg, ptr %i.fy, align 8
  br label %bb.bv

"_ZN4core3ptr93drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..files..FileId$GT$$GT$17h8abcdc13171c1f51E.exit": ; preds = %"_ZN4core3ptr117drop_in_place$LT$nickel_lang_core..cache..CacheOp$LT$alloc..vec..Vec$LT$nickel_lang_parser..files..FileId$GT$$GT$$GT$17hab0668da43da97fbE.exit131.thread", %"_ZN4core3ptr117drop_in_place$LT$nickel_lang_core..cache..CacheOp$LT$alloc..vec..Vec$LT$nickel_lang_parser..files..FileId$GT$$GT$$GT$17hab0668da43da97fbE.exit131", %bb.aw
  %.pn71 = phi { ptr, i32 } [ %i.gr, %bb.aw ], [ %.pn69, %"_ZN4core3ptr117drop_in_place$LT$nickel_lang_core..cache..CacheOp$LT$alloc..vec..Vec$LT$nickel_lang_parser..files..FileId$GT$$GT$$GT$17hab0668da43da97fbE.exit131" ], [ %.pn69, %"_ZN4core3ptr117drop_in_place$LT$nickel_lang_core..cache..CacheOp$LT$alloc..vec..Vec$LT$nickel_lang_parser..files..FileId$GT$$GT$$GT$17hab0668da43da97fbE.exit131.thread" ] ; 2 uses
  %.val84 = load i64, ptr %i.r, align 8           ; 2 uses
  %i.gp = icmp eq i64 %.val84, 0
  br i1 %i.gp, label %common.resume, label %bb.av

bb.av:                                            ; preds = %"_ZN4core3ptr93drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..files..FileId$GT$$GT$17h8abcdc13171c1f51E.exit"
  %.val85 = load ptr, ptr %i.gs, align 8, !nonnull !145, !noundef !145
  %i.gq = shl nuw i64 %.val84, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val85, i64 noundef %i.gq, i64 noundef range(i64 1, -9223372036854775807) 4) #83
  br label %common.resume

bb.aw:                                            ; preds = %.loopexit
  %i.gr = landingpad { ptr, i32 }
          cleanup
end_hunk_1
begin_hunk_2_@_ZN16nickel_lang_core9typecheck6record13ShallowRecord10check_stat17hc168808ac82a8da8E:bb.a
  %.sroa.4475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 32 ; 4 uses
  store i64 %i.hj, ptr %.sroa.4475.0..sroa_idx, align 8
  %.sroa.5476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 40 ; 3 uses
  store i64 %.pre-phi.i, ptr %.sroa.5476.0..sroa_idx, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !nonnull !145, !noundef !145 ; 5 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ho = load i64, ptr %i.hn, align 8, !noundef !145 ; 2 uses
  %.idx = mul nuw nsw i64 %i.ho, 168
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 %.idx ; 4 uses
  %i.hq = icmp eq i64 %i.ho, 0                    ; 3 uses
  br i1 %i.hq, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.cf
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ba, i64 88
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ay, i64 88
  br label %bb.ch

.body220:                                         ; preds = %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit365.thread1000", %.thread515.loopexit.loopexit, %.thread515.loopexit.split-lp, %.loopexit691, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %.body351, %bb.id, %bb.jz, %bb.ka, %bb.ju, %bb.jp, %bb.iz, %bb.ja, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit323", %.body.i.i.i.i, %bb.kb, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit365", %.thread502
  %.sroa.072.8 = phi i8 [ 1, %bb.kb ], [ 1, %bb.jp ], [ %.sroa.072.9.ph.ph, %.loopexit.split-lp.loopexit.split-lp ], [ 0, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit323" ], [ 1, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit365" ], [ %.sroa.072.10496, %.thread502 ], [ 1, %.body351 ], [ 1, %.body.i.i.i.i ], [ 1, %bb.ja ], [ 1, %bb.iz ], [ 1, %bb.ju ], [ 1, %bb.ka ], [ 1, %bb.jz ], [ 1, %bb.id ], [ 1, %.loopexit691 ], [ 1, %.loopexit.split-lp.loopexit ], [ 0, %.thread515.loopexit.split-lp ], [ 0, %.thread515.loopexit.loopexit ], [ 1, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit365.thread1000" ] ; 3 uses
  %.pn154.pn = phi { ptr, i32 } [ %i.aaa, %bb.kb ], [ %i.zr, %bb.jp ], [ %lpad.loopexit.split-lp702, %.loopexit.split-lp.loopexit.split-lp ], [ %.pn138, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit323" ], [ %.pn152, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit365" ], [ %.pn140497, %.thread502 ], [ %.pn146, %.body351 ], [ %i.kg, %.body.i.i.i.i ], [ %.pn152663, %bb.ja ], [ %.pn152663, %bb.iz ], [ %lpad.thr_comm.split-lp654, %bb.ju ], [ %lpad.thr_comm653, %bb.ka ], [ %lpad.thr_comm653, %bb.jz ], [ %.pn146, %bb.id ], [ %lpad.loopexit692, %.loopexit691 ], [ %lpad.loopexit701, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.thread515.loopexit.split-lp ], [ %lpad.loopexit1010, %.thread515.loopexit.loopexit ], [ %lpad.loopexit.split-lp698, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit365.thread1000" ] ; 3 uses
  %.val182 = load ptr, ptr %i.bb, align 8         ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.val183 = load i64, ptr %i.hx, align 8, !noundef !145 ; 4 uses
  %i.hy = icmp eq i64 %.val183, 0
  br i1 %i.hy, label %.body, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i1163

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i1163: ; preds = %.body220
  %i.hz = mul i64 %.val183, 20
  %i.ia = icmp slt i64 %.val183, 922337203685477580
  call void @llvm.assume(i1 %i.ia)
  %i.ib = and i64 %i.hz, -16                      ; 2 uses
  %i.ic = add i64 %i.ib, 32                       ; 2 uses
  %i.id = add nsw i64 %.val183, 17
  %i.ie = add i64 %i.id, %i.ic                    ; 4 uses
  %i.if = icmp uge i64 %i.ie, %i.ic
  %i.ig = icmp ult i64 %i.ie, 9223372036854775793
  call void @llvm.assume(i1 %i.if)
  call void @llvm.assume(i1 %i.ig)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val182) ]
  %i.ih = icmp eq i64 %i.ie, 0
  br i1 %i.ih, label %.body, label %bb.cg

bb.cg:                                            ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i1163
  %i.ii = sub i64 -32, %i.ib
  %i.ij = getelementptr inbounds i8, ptr %.val182, i64 %i.ii
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ij, i64 noundef %i.ie, i64 noundef range(i64 1, -9223372036854775807) 16) #83
  br label %.body

.loopexit691:                                     ; preds = %bb.ci, %bb.iw
  %lpad.loopexit692 = landingpad { ptr, i32 }
          cleanup
  br label %.body220

.loopexit.split-lp.loopexit:                      ; preds = %bb.ch
  %lpad.loopexit701 = landingpad { ptr, i32 }
          cleanup
  br label %.body220

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ck, %bb.gy
  %.sroa.072.9.ph.ph = phi i8 [ %.sroa.072.12.ph, %bb.gy ], [ 1, %bb.ck ]
  %lpad.loopexit.split-lp702 = landingpad { ptr, i32 }
          cleanup
  br label %.body220

bb.ch:                                            ; preds = %.lr.ph, %_ZN16nickel_lang_core9typecheck16TypecheckVisitor11visit_ident17h96e1b164a46f3a96E.exit379
  %.sroa.0424.0809 = phi ptr [ %i.hm, %.lr.ph ], [ %i.ik, %_ZN16nickel_lang_core9typecheck16TypecheckVisitor11visit_ident17h96e1b164a46f3a96E.exit379 ] ; 5 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0424.0809, i64 168 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.0424.0809, i64 144 ; 2 uses
  %i.im = load ptr, ptr %i.hr, align 8, !nonnull !145, !align !149, !noundef !145
  %i.in = load ptr, ptr %1, align 8, !nonnull !145, !align !163, !noundef !145
  %i.io = load ptr, ptr %i.hs, align 8, !nonnull !145, !align !149, !noundef !145
  invoke void @"_ZN119_$LT$$RF$nickel_lang_core..typecheck..record..ResolvedField$u20$as$u20$nickel_lang_core..typecheck..HasApparentType$GT$13apparent_type17h4e341b3d1cd094beE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %.sroa.0424.0809, ptr noundef nonnull align 8 %i.im, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %i.bh, ptr noundef nonnull align 1 %i.in, ptr nonnull %i.io)
          to label %bb.je unwind label %.loopexit.split-lp.loopexit

._crit_edge:                                      ; preds = %_ZN16nickel_lang_core9typecheck16TypecheckVisitor11visit_ident17h96e1b164a46f3a96E.exit379, %bb.cf
  %.idx670 = mul nuw nsw i64 %4, 224
  %i.ip = getelementptr inbounds nuw i8, ptr %3, i64 %.idx670 ; 4 uses
  %i.iq = icmp eq i64 %4, 0                       ; 3 uses
  br i1 %i.iq, label %._crit_edge816, label %.lr.ph815

.lr.ph815:                                        ; preds = %._crit_edge
  %spec.select177811 = getelementptr inbounds nuw i8, ptr %3, i64 224
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.ir = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %.sroa.4.0..sroa_idx.i330 = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 5 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  %i.iu = getelementptr inbounds nuw i8, ptr %i.au, i64 90
  %i.iv = getelementptr inbounds nuw i8, ptr %i.at, i64 88
  %i.iw = getelementptr inbounds nuw i8, ptr %i.at, i64 90
  %i.ix = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.iz = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.ja = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.jc = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.jd = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %.sroa.5.0..sroa_idx.i.i331 = getelementptr inbounds nuw i8, ptr %i.av, i64 96
  %i.je = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ar, i64 88
  br label %bb.ci

bb.ci:                                            ; preds = %.lr.ph815, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit363"
  %spec.select177813 = phi ptr [ %spec.select177811, %.lr.ph815 ], [ %spec.select177, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit363" ] ; 3 uses
  %.sroa.0119.0812 = phi ptr [ %3, %.lr.ph815 ], [ %spec.select177813, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit363" ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0119.0812, i64 200 ; 2 uses
  invoke void @_ZN16nickel_lang_core9typecheck7Context8get_type17hc5ce89a73169ad2dE(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.aw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bh, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(20) %i.jg)
          to label %bb.hb unwind label %.loopexit691

._crit_edge816:                                   ; preds = %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit363", %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.jh = load ptr, ptr %i.bs, align 8, !nonnull !145, !align !149, !noundef !145 ; 4 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.jk = load i64, ptr %i.jj, align 8, !noundef !145 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !76926
  %i.jl = mul i64 %i.jk, 96                       ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %i.jk, 96076792050570581
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.ck, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !151

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %._crit_edge816
  %i.jm = icmp eq i64 %i.jl, 0
  br i1 %i.jm, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h004916b4a828f9abE.exit.i.i.i.i.i.i", label %bb.cj

bb.cj:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !76927
  %i.jn = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.jl, i64 noundef range(i64 1, 9) 8) #83, !noalias !76927 ; 2 uses
  %i.jo = icmp eq ptr %i.jn, null
  br i1 %i.jo, label %bb.ck, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h004916b4a828f9abE.exit.i.i.i.i.i.i"

bb.ck:                                            ; preds = %bb.cj, %._crit_edge816
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.cj ], [ 0, %._crit_edge816 ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.jl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1687) #82
          to label %.noexc219 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc219:                                        ; preds = %bb.ck
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h004916b4a828f9abE.exit.i.i.i.i.i.i": ; preds = %bb.cj, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %i.jp = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.jn, %bb.cj ] ; 2 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.jk, %bb.cj ] ; 2 uses
  %i.jq = icmp samesign ule i64 %i.jk, %.sroa.4.0.i.i.i.i.i
  call void @llvm.assume(i1 %i.jq)
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.x, align 8, !noalias !76926
  %i.jr = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.jp, ptr %i.jr, align 8, !noalias !76926
  %i.js = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !76928)
  call void @llvm.experimental.noalias.scope.decl(metadata !76929)
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.jk, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.loopexit690, label %bb.cl

bb.cl:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h004916b4a828f9abE.exit.i.i.i.i.i.i"
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jh, i64 16 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  br label %bb.cm

bb.cm:                                            ; preds = %bb.co, %bb.cl
  %.val10.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.cl ], [ %i.ke, %bb.co ] ; 3 uses
  %.sroa.0.0.i.in.i.i.i.i.i.i.i.i = phi i64 [ %i.jk, %bb.cl ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %bb.co ]
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = add nsw i64 %.sroa.0.0.i.in.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.jv = load i16, ptr %i.ji, align 8, !range !172, !noalias !76930, !noundef !145 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !76931)
  call void @llvm.experimental.noalias.scope.decl(metadata !76932)
  %i.jw = load i64, ptr %i.jt, align 8, !alias.scope !76933, !noalias !76934, !noundef !145 ; 5 uses
  %i.jx = icmp ult i64 %i.jw, 88686269585142076
  call void @llvm.assume(i1 %i.jx)
  call void @llvm.experimental.noalias.scope.decl(metadata !76935)
  %i.jy = load i64, ptr %i.jh, align 8, !range !146, !alias.scope !76936, !noalias !76937, !noundef !145
  %i.jz = icmp eq i64 %i.jw, %i.jy
  br i1 %i.jz, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h6af2fe93b5a9a32cE"(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.jh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1451)
          to label %bb.co unwind label %.body.i.i.i.i, !noalias !76938

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.ka = load ptr, ptr %i.ju, align 8, !alias.scope !76936, !noalias !76937, !nonnull !145, !noundef !145
  %i.kb = getelementptr inbounds nuw [104 x i8], ptr %i.ka, i64 %i.jw ; 2 uses
  store i64 20, ptr %i.kb, align 8, !noalias !76939
  %.sroa.41.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kb, i64 96
  store i16 %i.jv, ptr %.sroa.41.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !76939
  %i.kc = add nuw nsw i64 %i.jw, 1
  store i64 %i.kc, ptr %i.jt, align 8, !alias.scope !76936, !noalias !76937
  %i.kd = getelementptr inbounds nuw [96 x i8], ptr %i.jp, i64 %.val10.i.i.i.i.i.i.i.i.i ; 3 uses
  store i64 19, ptr %i.kd, align 8, !noalias !76940
  %.sroa.5.8..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  store i64 %i.jw, ptr %.sroa.5.8..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !76940
  %.sroa.6.8..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  store i16 %i.jv, ptr %.sroa.6.8..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !76940
  %i.ke = add nuw i64 %.val10.i.i.i.i.i.i.i.i.i, 1
  %i.kf = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.kf, label %.loopexit690, label %bb.cm

.body.i.i.i.i:                                    ; preds = %bb.cn
  %i.kg = landingpad { ptr, i32 }
          cleanup
  store i64 %.val10.i.i.i.i.i.i.i.i.i, ptr %i.js, align 8, !alias.scope !76941, !noalias !76942
  invoke fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$17h5e0247538e40cc9fE"(ptr noalias noundef align 8 dereferenceable(24) %i.x) #86
          to label %.body220 unwind label %bb.cp, !noalias !76926

bb.cp:                                            ; preds = %.body.i.i.i.i
  %i.kh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !76926
  unreachable

.thread492:                                       ; preds = %bb.em
  %i.ki = landingpad { ptr, i32 }
          cleanup
  br label %.thread502

.thread515.loopexit.loopexit:                     ; preds = %bb.fj, %bb.fi
  %lpad.loopexit1010 = landingpad { ptr, i32 }
          cleanup
  br label %.body220

.thread515.loopexit.split-lp:                     ; preds = %._crit_edge819, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit321"
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body220

bb.cq:                                            ; preds = %.thread.i
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread502

.loopexit690:                                     ; preds = %bb.co, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h004916b4a828f9abE.exit.i.i.i.i.i.i"
  store i64 %i.jk, ptr %i.js, align 8, !alias.scope !76941, !noalias !76943
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !76944
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !76926
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8, !nonnull !145, !noundef !145 ; 6 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.km = load i64, ptr %i.kl, align 8, !noundef !145 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  br i1 %i.hq, label %.loopexit689, label %.lr.ph.i224

.lr.ph.i224:                                      ; preds = %.loopexit690
  %i.kn = getelementptr inbounds nuw [96 x i8], ptr %i.kk, i64 %i.km
  %i.ko = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.kp = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %.sroa.6.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  %.sroa.8.0..sroa_idx11.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 92
  %.sroa.552.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %.sroa.4.0..sroa_idx.i225 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.754.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %.sroa.855.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %.sroa.956.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 42
  br label %bb.cr

bb.cr:                                            ; preds = %bb.dq, %.lr.ph.i224
  %.sroa.9.0.i = phi i16 [ 1, %.lr.ph.i224 ], [ %.sroa.0.0.i.i.i.i, %bb.dq ] ; 2 uses
  %.sroa.834.0.i = phi ptr [ undef, %.lr.ph.i224 ], [ %i.lk, %bb.dq ] ; 2 uses
  %.sroa.6.0.i = phi i32 [ 3, %.lr.ph.i224 ], [ %.sroa.59.8.copyload.i.i, %bb.dq ] ; 2 uses
  %.sroa.0.0.i226 = phi ptr [ undef, %.lr.ph.i224 ], [ %i.le, %bb.dq ] ; 2 uses
  %i.kq = phi ptr [ %i.kn, %.lr.ph.i224 ], [ %i.kv, %bb.dq ] ; 7 uses
  %i.kr = phi ptr [ %i.hp, %.lr.ph.i224 ], [ %i.ks, %bb.dq ] ; 3 uses
  %i.ks = getelementptr inbounds i8, ptr %i.kr, i64 -168 ; 2 uses
  %i.kt = getelementptr inbounds i8, ptr %i.kr, i64 -24 ; 2 uses
  %i.ku = icmp eq ptr %i.kk, %i.kq
  br i1 %i.ku, label %.loopexit689, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.kv = getelementptr inbounds i8, ptr %i.kq, i64 -96 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !76945
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.552.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7.i, i64 16, i1 false), !noalias !76945
  store ptr %.sroa.0.0.i226, ptr %i.w, align 8, !noalias !76945
  store i32 %.sroa.6.0.i, ptr %.sroa.4.0..sroa_idx.i225, align 8, !noalias !76945
  store ptr %.sroa.834.0.i, ptr %.sroa.754.0..sroa_idx.i, align 8, !noalias !76945
  store i16 %.sroa.9.0.i, ptr %.sroa.855.0..sroa_idx.i, align 8, !noalias !76945
  store i16 0, ptr %.sroa.956.0..sroa_idx.i, align 2, !noalias !76945
  store ptr %i.kt, ptr %i.ko, align 8, !noalias !76945
  store ptr %i.kv, ptr %i.kp, align 8, !noalias !76945
  call void @llvm.experimental.noalias.scope.decl(metadata !76946)
  call void @llvm.experimental.noalias.scope.decl(metadata !76947)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !76948
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.kw = load i64, ptr %i.kv, align 8, !range !158, !alias.scope !76947, !noalias !76949, !noundef !145
  %i.kx = call i64 @llvm.usub.sat.i64(i64 %i.kw, i64 17)
  switch i64 %i.kx, label %default.unreachable1547 [
    i64 0, label %bb.ct
    i64 1, label %bb.cu
    i64 2, label %bb.cv
  ]

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !76948
  invoke fastcc void @"_ZN100_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6fff9f3e77e521c1E"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.kv)
          to label %bb.cx unwind label %bb.cw, !noalias !76949

bb.cu:                                            ; preds = %bb.cs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.i.i, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.kv, i64 88, i1 false), !noalias !76949
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.kq, i64 -8
  %i.ky = load <2 x i16>, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !76947, !noalias !76949
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.kq, i64 -4
  %.sroa.8.0.copyload.i.i = load i32, ptr %.sroa.8.0..sroa_idx.i.i, align 4, !alias.scope !76947, !noalias !76949
  br label %bb.cy

bb.cv:                                            ; preds = %bb.cs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.i.i, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.kv, i64 88, i1 false), !noalias !76949
  %.sroa.6.0..sroa_idx1.i.i = getelementptr inbounds i8, ptr %i.kq, i64 -8
  %i.kz = load <2 x i16>, ptr %.sroa.6.0..sroa_idx1.i.i, align 8, !alias.scope !76947, !noalias !76949
  %.sroa.8.0..sroa_idx9.i.i = getelementptr inbounds i8, ptr %i.kq, i64 -4
  %.sroa.8.0.copyload10.i.i = load i32, ptr %.sroa.8.0..sroa_idx9.i.i, align 4, !alias.scope !76947, !noalias !76949
  br label %bb.cy

bb.cw:                                            ; preds = %bb.ct
  %i.la = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.cx:                                            ; preds = %bb.ct
  %i.lb = getelementptr inbounds i8, ptr %i.kq, i64 -8
  %i.lc = load <2 x i16>, ptr %i.lb, align 8, !alias.scope !76947, !noalias !76949
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(88) %i.u, i64 88, i1 false), !noalias !76948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !76948
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cv, %bb.cu
  %.sroa.8.0.i.i = phi i32 [ undef, %bb.cx ], [ %.sroa.8.0.copyload.i.i, %bb.cu ], [ %.sroa.8.0.copyload10.i.i, %bb.cv ]
  %i.ld = phi <2 x i16> [ %i.lc, %bb.cx ], [ %i.ky, %bb.cu ], [ %i.kz, %bb.cv ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.v, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.i.i, i64 88, i1 false), !noalias !76948
  store <2 x i16> %i.ld, ptr %.sroa.6.0..sroa_idx3.i.i, align 8, !noalias !76948
  store i32 %.sroa.8.0.i.i, ptr %.sroa.8.0..sroa_idx11.i.i, align 4, !noalias !76948
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !76950
  %i.le = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !76950 ; 10 uses
  %i.lf = icmp eq ptr %i.le, null
  br i1 %i.lf, label %bb.cz, label %bb.dd, !prof !155

bb.cz:                                            ; preds = %bb.cy
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 96) #82
          to label %.noexc.i.i unwind label %bb.da, !noalias !76948

.noexc.i.i:                                       ; preds = %bb.cz
  unreachable

bb.da:                                            ; preds = %bb.cz
  %i.lg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lh = load i64, ptr %i.v, align 8, !range !158, !alias.scope !76951, !noalias !76948, !noundef !145
  %i.li = icmp samesign ult i64 %i.lh, 18
  br i1 %i.li, label %bb.db, label %.thread.i.i

bb.db:                                            ; preds = %bb.da
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h60ccb323601aa168E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.v)
          to label %.thread.i.i unwind label %bb.dc, !noalias !76948, !inline_history !5

bb.dc:                                            ; preds = %bb.db
  %i.lj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !76948
  unreachable

bb.dd:                                            ; preds = %bb.cy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.le, ptr noundef nonnull align 8 dereferenceable(96) %i.v, i64 96, i1 false), !noalias !76948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !76948
  %.sroa.59.8.copyload.i.i = load i32, ptr %i.kt, align 4, !alias.scope !76946, !noalias !76952 ; 4 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !76953
  %i.lk = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !76953 ; 6 uses
  %i.ll = icmp eq ptr %i.lk, null
  br i1 %i.ll, label %bb.de, label %bb.dj, !prof !155

bb.de:                                            ; preds = %bb.dd
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 48) #82
          to label %.noexc20.i.i unwind label %bb.df, !noalias !76948

.noexc20.i.i:                                     ; preds = %bb.de
  unreachable

bb.df:                                            ; preds = %bb.de
  %i.lm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..typecheck..UnifRecordRows$GT$17h5eaf304118771440E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.w) #86
          to label %.body17.i.i unwind label %bb.dg, !noalias !76954

bb.dg:                                            ; preds = %bb.df
  %i.ln = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !76948
  unreachable

.body17.i.i:                                      ; preds = %bb.df
  %i.lo = load i64, ptr %i.le, align 8, !range !158, !alias.scope !76955, !noalias !76956, !noundef !145
  %i.lp = icmp samesign ult i64 %i.lo, 18
  br i1 %i.lp, label %bb.dh, label %"_ZN4core3ptr126drop_in_place$LT$nickel_lang_parser..typ..RecordRowF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$$GT$17haf3319aa1114778eE.exit.i"

bb.dh:                                            ; preds = %.body17.i.i
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h60ccb323601aa168E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.le)
          to label %"_ZN4core3ptr126drop_in_place$LT$nickel_lang_parser..typ..RecordRowF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$$GT$17haf3319aa1114778eE.exit.i" unwind label %bb.di, !noalias !76956, !inline_history !12
end_hunk_2
begin_hunk_3_@"_ZN76_$LT$nickel_lang_core..package..PackageMap$u20$as$u20$core..fmt..Display$GT$3fmt17h3344f7e786294277E":bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !114636
  %i.gb = icmp eq i64 %.sroa.3395.0.copyload, 0
  br i1 %i.gb, label %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h473faf3db2f89e84E.exit.thread.thread.i.i.i.i", label %bb.w

"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h473faf3db2f89e84E.exit.thread.thread.i.i.i.i": ; preds = %bb.v
  store i64 0, ptr %i.q, align 8, !alias.scope !114637, !noalias !114638
  %i.gc = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.gc, align 8, !alias.scope !114637, !noalias !114638
  %i.gd = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 0, ptr %i.gd, align 8, !alias.scope !114637, !noalias !114638
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !114636
  br label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17hc79b2d92522f1a97E.exit.i.i.i.i.i.i.i.i"

bb.w:                                             ; preds = %bb.v
  %i.ge = icmp sgt <16 x i8> %.val3.i.i.i106, splat (i8 -1)
  %i.gf = bitcast <16 x i1> %i.ge to i16          ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.0394.0.copyload, i64 16 ; 2 uses
  %.not13.i.i.i.i.i.i.i144 = icmp eq i16 %i.gf, 0
  br i1 %.not13.i.i.i.i.i.i.i144, label %.lr.ph.i.i.i.i.i.i.i160, label %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h473faf3db2f89e84E.exit.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i160:                          ; preds = %bb.w, %.lr.ph.i.i.i.i.i.i.i160
  %i.gh = phi ptr [ %i.gl, %.lr.ph.i.i.i.i.i.i.i160 ], [ %i.gg, %bb.w ] ; 2 uses
  %i.gi = phi ptr [ %i.gk, %.lr.ph.i.i.i.i.i.i.i160 ], [ %.sroa.0394.0.copyload, %bb.w ]
  %.val11.i.i.i.i.i.i.i161 = load <16 x i8>, ptr %i.gh, align 16, !noalias !114639
  %i.gj = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i161, splat (i8 -1)
  %i.gk = getelementptr inbounds i8, ptr %i.gi, i64 -640 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i162 = bitcast <16 x i1> %i.gj to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i163 = icmp eq i16 %.cast.i.i.i.i.i.i.i162, 0
  br i1 %.not.i.i.i.i.i.i.i163, label %.lr.ph.i.i.i.i.i.i.i160, label %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h473faf3db2f89e84E.exit.i.i.i.i"

"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h473faf3db2f89e84E.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i160, %bb.w
  %.sroa.13.0.i.i = phi ptr [ %i.gg, %bb.w ], [ %i.gl, %.lr.ph.i.i.i.i.i.i.i160 ] ; 4 uses
  %.sroa.10.0.i.i = phi ptr [ %.sroa.0394.0.copyload, %bb.w ], [ %i.gk, %.lr.ph.i.i.i.i.i.i.i160 ] ; 5 uses
  %.lcssa.i.i.i.i.i.i.i145 = phi i16 [ %i.gf, %bb.w ], [ %.cast.i.i.i.i.i.i.i162, %.lr.ph.i.i.i.i.i.i.i160 ] ; 3 uses
  %i.gm = add i16 %.lcssa.i.i.i.i.i.i.i145, -1
  %i.gn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i145, i1 true)
  %i.go = zext nneg i16 %i.gn to i64
  %i.gp = and i16 %i.gm, %.lcssa.i.i.i.i.i.i.i145 ; 4 uses
  %i.gq = sub nsw i64 0, %i.go
  %i.gr = getelementptr inbounds [40 x i8], ptr %.sroa.10.0.i.i, i64 %i.gq ; 4 uses
  %i.gs = add i64 %.sroa.3395.0.copyload, -1      ; 7 uses
  %.sroa.5.0..sroa_idx1.i.i.i.i = getelementptr inbounds i8, ptr %i.gr, i64 -24
  %.sroa.5.0.copyload2.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx1.i.i.i.i, align 8, !noalias !114640 ; 4 uses
  %.sroa.7.0..sroa_idx3.i.i.i.i = getelementptr inbounds i8, ptr %i.gr, i64 -16
  %.sroa.7.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx3.i.i.i.i, align 8, !noalias !114640 ; 3 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx3.sroa_idx.i.i.i.i = getelementptr inbounds i8, ptr %i.gr, i64 -8
  %.sroa.7.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx3.sroa_idx.i.i.i.i, align 8, !noalias !114640
  %.not.i.i.i.i = icmp eq i64 %.sroa.5.0.copyload2.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i, label %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h473faf3db2f89e84E.exit.thread.i.i.i.i", label %bb.ab

"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h473faf3db2f89e84E.exit.thread.i.i.i.i": ; preds = %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h473faf3db2f89e84E.exit.i.i.i.i"
  store i64 0, ptr %i.q, align 8, !alias.scope !114637, !noalias !114638
  %i.gt = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.gt, align 8, !alias.scope !114637, !noalias !114638
  %i.gu = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 0, ptr %i.gu, align 8, !alias.scope !114637, !noalias !114638
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !114636
  %i.gv = icmp eq i64 %i.gs, 0
  br i1 %i.gv, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17hc79b2d92522f1a97E.exit.i.i.i.i.i.i.i.i", label %.preheader.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h473faf3db2f89e84E.exit.thread.i.i.i.i", %"_ZN4core3ptr141drop_in_place$LT$$LP$$RF$std..path..Path$C$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$std..path..Path$RP$$GT$$RP$$GT$17h1446875029b0dca7E.exit.i.i.i.i.i.i.i.i.i"
  %.lcssa14.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa13.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr141drop_in_place$LT$$LP$$RF$std..path..Path$C$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$std..path..Path$RP$$GT$$RP$$GT$17h1446875029b0dca7E.exit.i.i.i.i.i.i.i.i.i" ], [ %.sroa.13.0.i.i, %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h473faf3db2f89e84E.exit.thread.i.i.i.i" ] ; 2 uses
  %i.gw = phi i64 [ %i.hj, %"_ZN4core3ptr141drop_in_place$LT$$LP$$RF$std..path..Path$C$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$std..path..Path$RP$$GT$$RP$$GT$17h1446875029b0dca7E.exit.i.i.i.i.i.i.i.i.i" ], [ %i.gs, %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h473faf3db2f89e84E.exit.thread.i.i.i.i" ]
  %.lcssa710.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa79.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr141drop_in_place$LT$$LP$$RF$std..path..Path$C$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$std..path..Path$RP$$GT$$RP$$GT$17h1446875029b0dca7E.exit.i.i.i.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i, %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h473faf3db2f89e84E.exit.thread.i.i.i.i" ] ; 2 uses
  %i.gx = phi i16 [ %i.hg, %"_ZN4core3ptr141drop_in_place$LT$$LP$$RF$std..path..Path$C$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$std..path..Path$RP$$GT$$RP$$GT$17h1446875029b0dca7E.exit.i.i.i.i.i.i.i.i.i" ], [ %i.gp, %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h473faf3db2f89e84E.exit.thread.i.i.i.i" ] ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.gx, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h955ab99754670774E.exit.i.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.gy = phi ptr [ %i.hc, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa14.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.gz = phi ptr [ %i.hb, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa710.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i ]
  %.val11.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.gy, align 16, !noalias !114641
  %i.ha = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.hb = getelementptr inbounds i8, ptr %i.gz, i64 -640 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ha to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h955ab99754670774E.exit.i.i.i.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h955ab99754670774E.exit.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i
  %.lcssa13.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa14.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i ], [ %i.hc, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa79.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa710.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i ], [ %i.hb, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.gx, %.preheader.i.i.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.hd = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, -1
  %i.he = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.hf = zext nneg i16 %i.he to i64
  %i.hg = and i16 %i.hd, %.lcssa.i.i.i.i.i.i.i.i.i.i
  %i.hh = sub nsw i64 0, %i.hf
  %i.hi = getelementptr inbounds [40 x i8], ptr %.lcssa79.i.i.i.i.i.i.i.i.i, i64 %i.hh ; 2 uses
  %i.hj = add i64 %i.gw, -1                       ; 2 uses
  %i.hk = getelementptr i8, ptr %i.hi, i64 -24
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.hk, align 8, !noalias !114642 ; 2 uses
  %i.hl = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.hl, label %"_ZN4core3ptr141drop_in_place$LT$$LP$$RF$std..path..Path$C$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$std..path..Path$RP$$GT$$RP$$GT$17h1446875029b0dca7E.exit.i.i.i.i.i.i.i.i.i", label %bb.x

bb.x:                                             ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h955ab99754670774E.exit.i.i.i.i.i.i.i.i.i"
  %i.hm = getelementptr i8, ptr %i.hi, i64 -16
  %.val6.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.hm, align 8, !noalias !114642, !nonnull !145, !noundef !145
  %i.hn = mul nuw i64 %.val.i.i.i.i.i.i.i.i.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i.i.i.i.i, i64 noundef %i.hn, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !114642
  br label %"_ZN4core3ptr141drop_in_place$LT$$LP$$RF$std..path..Path$C$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$std..path..Path$RP$$GT$$RP$$GT$17h1446875029b0dca7E.exit.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr141drop_in_place$LT$$LP$$RF$std..path..Path$C$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$std..path..Path$RP$$GT$$RP$$GT$17h1446875029b0dca7E.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.x, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h955ab99754670774E.exit.i.i.i.i.i.i.i.i.i"
  %.old5.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.hj, 0
  br i1 %.old5.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17hc79b2d92522f1a97E.exit.i.i.i.i.i.i.i.i", label %.preheader.i.i.i.i.i.i.i.i.i

"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17hc79b2d92522f1a97E.exit.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr141drop_in_place$LT$$LP$$RF$std..path..Path$C$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$std..path..Path$RP$$GT$$RP$$GT$17h1446875029b0dca7E.exit.i.i.i.i.i.i.i.i.i", %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h473faf3db2f89e84E.exit.thread.i.i.i.i", %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h473faf3db2f89e84E.exit.thread.thread.i.i.i.i"
  %i.ho = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i, 0
  %or.cond.i.i = or i1 %i.cr, %i.ho
  br i1 %or.cond.i.i, label %_ZN5alloc5slice11stable_sort17h4ce29b9c317adafdE.exit.thread670, label %bb.y

bb.y:                                             ; preds = %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17hc79b2d92522f1a97E.exit.i.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i) #83, !noalias !114643
  br label %_ZN5alloc5slice11stable_sort17h4ce29b9c317adafdE.exit.thread670

bb.z:                                             ; preds = %bb.ad
  %i.hp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hq = icmp eq i64 %.sroa.5.0.copyload2.i.i.i.i, 0
  br i1 %i.hq, label %bb.al, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hr = mul nuw i64 %.sroa.5.0.copyload2.i.i.i.i, 24
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload.i.i.i.i, i64 noundef %i.hr, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !114636
  br label %bb.al

bb.ab:                                            ; preds = %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h473faf3db2f89e84E.exit.i.i.i.i"
  %i.hs = getelementptr inbounds i8, ptr %i.gr, i64 -40
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.04.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.hs, i64 16, i1 false), !noalias !114636
  %.sroa.0.0.i.i.i.i.i146 = call noundef i64 @llvm.umax.i64(i64 %.sroa.3395.0.copyload, i64 4) ; 3 uses
  %i.ht = mul i64 %.sroa.0.0.i.i.i.i.i146, 40     ; 3 uses
  %or.cond.i.i.i.i.i.i.i147 = icmp ugt i64 %.sroa.3395.0.copyload, 230584300921369395
  br i1 %or.cond.i.i.i.i.i.i.i147, label %bb.ad, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i148, !prof !151

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i148: ; preds = %bb.ab
  %i.hu = icmp eq i64 %i.ht, 0
  br i1 %i.hu, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i148
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !114644
  %i.hv = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ht, i64 noundef range(i64 1, 9) 8) #83, !noalias !114644 ; 2 uses
  %i.hw = icmp eq ptr %i.hv, null
  br i1 %i.hw, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sroa.4.0.ph.i.i.i.i.i158 = phi i64 [ 8, %bb.ac ], [ 0, %bb.ab ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i158, i64 %i.ht, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1687) #82
          to label %.noexc.i.i.i.i159 unwind label %bb.z, !noalias !114636

.noexc.i.i.i.i159:                                ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ac, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i148
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i148 ], [ %i.hv, %bb.ac ] ; 6 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i148 ], [ %.sroa.0.0.i.i.i.i.i146, %bb.ac ] ; 2 uses
  %i.hx = icmp ule i64 %.sroa.0.0.i.i.i.i.i146, %.sroa.4.0.i.i.i.i.i
  call void @llvm.assume(i1 %i.hx)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.i.i.i.i, i64 16, i1 false), !noalias !114636
  %.sroa.411.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i, i64 16
  store i64 %.sroa.5.0.copyload2.i.i.i.i, ptr %.sroa.411.0..sroa_idx.i.i.i.i, align 8, !noalias !114636
  %.sroa.512.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i, i64 24
  store ptr %.sroa.7.sroa.0.0.copyload.i.i.i.i, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !noalias !114636
  %.sroa.613.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i, i64 32
  store i64 %.sroa.7.sroa.5.0.copyload.i.i.i.i, ptr %.sroa.613.0..sroa_idx.i.i.i.i, align 8, !noalias !114636
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.e, align 8, !noalias !114636
  %.sroa.4.0..sroa_idx.i.i.i.i149 = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i149, align 8, !noalias !114636
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !114636
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !114636
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.d, align 8, !noalias !114645
  %.sroa.6.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.5.sroa.0.0.i.i.i.i, ptr %.sroa.6.0..sroa_idx3.i.i, align 8, !noalias !114645
  %.sroa.8.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.5.sroa.4.0.i.i.i.i, ptr %.sroa.8.0..sroa_idx6.i.i, align 8, !noalias !114645
  %.sroa.10.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.10.0..sroa_idx9.i.i, align 8, !noalias !114645
  %.sroa.13.0..sroa_idx11.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  store ptr %.sroa.13.0.i.i, ptr %.sroa.13.0..sroa_idx11.i.i, align 8, !noalias !114645
  %.sroa.17.0..sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.ga, ptr %.sroa.17.0..sroa_idx13.i.i, align 8, !noalias !114645
  %.sroa.1715.0..sroa_idx16.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  store i16 %i.gp, ptr %.sroa.1715.0..sroa_idx16.i.i, align 8, !noalias !114645
  %.sroa.1919.0..sroa_idx20.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  store i64 %i.gs, ptr %.sroa.1919.0..sroa_idx20.i.i, align 8, !noalias !114645
  call void @llvm.experimental.noalias.scope.decl(metadata !114646)
  call void @llvm.experimental.noalias.scope.decl(metadata !114647)
  call void @llvm.experimental.noalias.scope.decl(metadata !114648)
  call void @llvm.experimental.noalias.scope.decl(metadata !114649)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i)
  %i.hy = icmp eq i64 %i.gs, 0
  br i1 %i.hy, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17hc79b2d92522f1a97E.exit.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i150

.lr.ph.i.i.i.i.i.i150:                            ; preds = %bb.ae, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he72b33255d4e6204E.exit.i.i.i.i.i.i"
  %i.hz = phi ptr [ %i.jl, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he72b33255d4e6204E.exit.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i.i, %bb.ae ]
  %i.ia = phi i64 [ %i.jn, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he72b33255d4e6204E.exit.i.i.i.i.i.i" ], [ 1, %bb.ae ] ; 5 uses
  %.lcssa1730.i.i.i.i.i.i = phi ptr [ %.promoted12.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he72b33255d4e6204E.exit.i.i.i.i.i.i" ], [ %.sroa.13.0.i.i, %bb.ae ] ; 2 uses
  %.lcssa1827.i.i.i.i.i.i = phi ptr [ %.promoted8.i.i.i.i.i.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he72b33255d4e6204E.exit.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i, %bb.ae ] ; 2 uses
  %i.ib = phi i16 [ %i.ik, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he72b33255d4e6204E.exit.i.i.i.i.i.i" ], [ %i.gp, %bb.ae ] ; 2 uses
  %.val52122.i.i.i.i.i.i = phi i64 [ %i.in, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he72b33255d4e6204E.exit.i.i.i.i.i.i" ], [ %i.gs, %bb.ae ]
  call void @llvm.experimental.noalias.scope.decl(metadata !114650)
  call void @llvm.experimental.noalias.scope.decl(metadata !114651)
  call void @llvm.experimental.noalias.scope.decl(metadata !114652)
  %.not13.i.i.i.i.i.i.i.i.i151 = icmp eq i16 %i.ib, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i151, label %.lr.ph.i.i.i.i.i.i.i.i.i154, label %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h473faf3db2f89e84E.exit.i.i.i.i.i.i"

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i154
  store ptr %i.ig, ptr %.sroa.13.0..sroa_idx11.i.i, align 8, !alias.scope !114653, !noalias !114654
  store ptr %i.if, ptr %.sroa.10.0..sroa_idx9.i.i, align 8, !alias.scope !114653, !noalias !114654
  br label %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h473faf3db2f89e84E.exit.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i154:                      ; preds = %.lr.ph.i.i.i.i.i.i150, %.lr.ph.i.i.i.i.i.i.i.i.i154
  %i.ic = phi ptr [ %i.ig, %.lr.ph.i.i.i.i.i.i.i.i.i154 ], [ %.lcssa1730.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i150 ] ; 2 uses
  %i.id = phi ptr [ %i.if, %.lr.ph.i.i.i.i.i.i.i.i.i154 ], [ %.lcssa1827.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i150 ]
  %.val11.i.i.i.i.i.i.i.i.i155 = load <16 x i8>, ptr %i.ic, align 16, !noalias !114655
  %i.ie = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i155, splat (i8 -1)
  %i.if = getelementptr inbounds i8, ptr %i.id, i64 -640 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ic, i64 16 ; 3 uses
  %.cast.i.i.i.i.i.i.i.i.i156 = bitcast <16 x i1> %i.ie to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i157 = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i156, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i157, label %.lr.ph.i.i.i.i.i.i.i.i.i154, label %._crit_edge.i.i.i.i.i.i.i.i.i

"_ZN4core3ptr141drop_in_place$LT$$LP$$RF$std..path..Path$C$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$std..path..Path$RP$$GT$$RP$$GT$17h1446875029b0dca7E.exit.i.i.i.i.i.i": ; preds = %bb.aj, %bb.ai
  call fastcc void @"_ZN4core3ptr178drop_in_place$LT$std..collections..hash..map..IntoIter$LT$$RF$std..path..Path$C$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$std..path..Path$RP$$GT$$GT$$GT$17h10de9a8111ef5294E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d) #86, !noalias !114656
  call fastcc void @"_ZN4core3ptr164drop_in_place$LT$alloc..vec..Vec$LT$$LP$$RF$std..path..Path$C$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$std..path..Path$RP$$GT$$RP$$GT$$GT$17h9e48c260d29b250eE"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #86, !noalias !114636
  br label %.thread403

"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h473faf3db2f89e84E.exit.i.i.i.i.i.i": ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i150
  %.promoted12.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ig, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %.lcssa1730.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i150 ] ; 2 uses
  %.promoted8.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.if, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %.lcssa1827.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i150 ] ; 3 uses
  %.lcssa.i.i.i.i.i.i.i.i.i152 = phi i16 [ %.cast.i.i.i.i.i.i.i.i.i156, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %i.ib, %.lr.ph.i.i.i.i.i.i150 ] ; 3 uses
  %i.ih = add i16 %.lcssa.i.i.i.i.i.i.i.i.i152, -1
  %i.ii = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i152, i1 true)
  %i.ij = zext nneg i16 %i.ii to i64
  %i.ik = and i16 %i.ih, %.lcssa.i.i.i.i.i.i.i.i.i152 ; 3 uses
  %i.il = sub nsw i64 0, %i.ij
  %i.im = getelementptr inbounds [40 x i8], ptr %.promoted8.i.i.i.i.i.i.i.i.i.i.i, i64 %i.il ; 4 uses
  %i.in = add i64 %.val52122.i.i.i.i.i.i, -1      ; 6 uses
  %i.io = getelementptr inbounds i8, ptr %i.im, i64 -40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.io, i64 16, i1 false), !noalias !114657
  %.sroa.5.0..sroa_idx1.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.im, i64 -24
  %.sroa.5.0.copyload2.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx1.i.i.i.i.i.i, align 8, !noalias !114658 ; 4 uses
  %.sroa.7.0..sroa_idx3.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.im, i64 -16
  %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx3.i.i.i.i.i.i, align 8, !noalias !114658 ; 3 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx3.sroa_idx.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.im, i64 -8
  %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx3.sroa_idx.i.i.i.i.i.i, align 8, !noalias !114658
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.5.0.copyload2.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i, label %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h473faf3db2f89e84E.exit.thread.i.i.i.i.i.i", label %bb.af

bb.af:                                            ; preds = %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h473faf3db2f89e84E.exit.i.i.i.i.i.i"
  %2 = icmp samesign ult i64 %i.ia, 230584300921369396
  call void @llvm.assume(i1 %2)
  %i.ip = load i64, ptr %i.e, align 8, !range !146, !alias.scope !114659, !noalias !114660, !noundef !145
  %i.iq = icmp eq i64 %i.ia, %i.ip
  br i1 %i.iq, label %bb.ak, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he72b33255d4e6204E.exit.i.i.i.i.i.i"

"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h473faf3db2f89e84E.exit.thread.i.i.i.i.i.i": ; preds = %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h473faf3db2f89e84E.exit.i.i.i.i.i.i"
  %i.ir = icmp eq i64 %i.in, 0
  br i1 %i.ir, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17hc79b2d92522f1a97E.exit.i.i.i.i.i.i.i.i.i.i", label %.preheader.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h473faf3db2f89e84E.exit.thread.i.i.i.i.i.i", %"_ZN4core3ptr141drop_in_place$LT$$LP$$RF$std..path..Path$C$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$std..path..Path$RP$$GT$$RP$$GT$17h1446875029b0dca7E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %.lcssa14.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa13.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr141drop_in_place$LT$$LP$$RF$std..path..Path$C$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$std..path..Path$RP$$GT$$RP$$GT$17h1446875029b0dca7E.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ %.promoted12.i.i.i.i.i.i.i.i.i.i.i, %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h473faf3db2f89e84E.exit.thread.i.i.i.i.i.i" ] ; 2 uses
  %i.is = phi i64 [ %i.jf, %"_ZN4core3ptr141drop_in_place$LT$$LP$$RF$std..path..Path$C$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$std..path..Path$RP$$GT$$RP$$GT$17h1446875029b0dca7E.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.in, %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h473faf3db2f89e84E.exit.thread.i.i.i.i.i.i" ]
  %.lcssa710.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa79.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr141drop_in_place$LT$$LP$$RF$std..path..Path$C$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$std..path..Path$RP$$GT$$RP$$GT$17h1446875029b0dca7E.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ %.promoted8.i.i.i.i.i.i.i.i.i.i.i, %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h473faf3db2f89e84E.exit.thread.i.i.i.i.i.i" ] ; 2 uses
  %i.it = phi i16 [ %i.jc, %"_ZN4core3ptr141drop_in_place$LT$$LP$$RF$std..path..Path$C$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$std..path..Path$RP$$GT$$RP$$GT$17h1446875029b0dca7E.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.ik, %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h473faf3db2f89e84E.exit.thread.i.i.i.i.i.i" ] ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.it, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h955ab99754670774E.exit.i.i.i.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.iu = phi ptr [ %i.iy, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa14.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.iv = phi ptr [ %i.ix, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa710.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i ]
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.iu, align 16, !noalias !114661
  %i.iw = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ix = getelementptr inbounds i8, ptr %i.iv, i64 -640 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iu, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.iw to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h955ab99754670774E.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h955ab99754670774E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i
  %.lcssa13.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa14.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %i.iy, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa79.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa710.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ix, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.it, %.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.iz = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ja = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.jb = zext nneg i16 %i.ja to i64
  %i.jc = and i16 %i.iz, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jd = sub nsw i64 0, %i.jb
  %i.je = getelementptr inbounds [40 x i8], ptr %.lcssa79.i.i.i.i.i.i.i.i.i.i.i, i64 %i.jd ; 2 uses
  %i.jf = add i64 %i.is, -1                       ; 2 uses
  %i.jg = getelementptr i8, ptr %i.je, i64 -24
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.jg, align 8, !noalias !114662 ; 2 uses
  %i.jh = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.jh, label %"_ZN4core3ptr141drop_in_place$LT$$LP$$RF$std..path..Path$C$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$std..path..Path$RP$$GT$$RP$$GT$17h1446875029b0dca7E.exit.i.i.i.i.i.i.i.i.i.i.i", label %bb.ag

bb.ag:                                            ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h955ab99754670774E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %i.ji = getelementptr i8, ptr %i.je, i64 -16
  %.val6.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ji, align 8, !noalias !114662, !nonnull !145, !noundef !145
  %i.jj = mul nuw i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.jj, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !114662
  br label %"_ZN4core3ptr141drop_in_place$LT$$LP$$RF$std..path..Path$C$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$std..path..Path$RP$$GT$$RP$$GT$17h1446875029b0dca7E.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr141drop_in_place$LT$$LP$$RF$std..path..Path$C$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$std..path..Path$RP$$GT$$RP$$GT$17h1446875029b0dca7E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ag, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h955ab99754670774E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %.old5.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.jf, 0
  br i1 %.old5.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17hc79b2d92522f1a97E.exit.i.i.i.i.i.i.i.i.i.i", label %.preheader.i.i.i.i.i.i.i.i.i.i.i

"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17hc79b2d92522f1a97E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he72b33255d4e6204E.exit.i.i.i.i.i.i", %"_ZN4core3ptr141drop_in_place$LT$$LP$$RF$std..path..Path$C$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$std..path..Path$RP$$GT$$RP$$GT$17h1446875029b0dca7E.exit.i.i.i.i.i.i.i.i.i.i.i", %"_ZN109_$LT$std..collections..hash..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h473faf3db2f89e84E.exit.thread.i.i.i.i.i.i", %bb.ae
  %i.jk = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i, 0
  %or.cond22.i.i = or i1 %i.cr, %i.jk
  br i1 %or.cond22.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17he8ecbdcc0f1cccf2E.exit, label %bb.ah

bb.ah:                                            ; preds = %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17hc79b2d92522f1a97E.exit.i.i.i.i.i.i.i.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i) #83, !noalias !114663
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17he8ecbdcc0f1cccf2E.exit

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he72b33255d4e6204E.exit.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he72b33255d4e6204E.exit.i.i_crit_edge.i.i.i.i", %bb.af
  %i.jl = phi ptr [ %.pre.i.i.i.i153, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he72b33255d4e6204E.exit.i.i_crit_edge.i.i.i.i" ], [ %i.hz, %bb.af ] ; 2 uses
  %i.jm = getelementptr inbounds nuw [40 x i8], ptr %i.jl, i64 %i.ia ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jm, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i.i, i64 16, i1 false), !noalias !114657
  %.sroa.49.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  store i64 %.sroa.5.0.copyload2.i.i.i.i.i.i, ptr %.sroa.49.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !114657
  %.sroa.510.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jm, i64 24
  store ptr %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !114657
  %.sroa.611.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jm, i64 32
  store i64 %.sroa.7.sroa.5.0.copyload.i.i.i.i.i.i, ptr %.sroa.611.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !114657
  %i.jn = add nuw nsw i64 %i.ia, 1                ; 2 uses
  store i64 %i.jn, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !114659, !noalias !114660
  %i.jo = icmp eq i64 %i.in, 0
  br i1 %i.jo, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17hc79b2d92522f1a97E.exit.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i150

bb.ai:                                            ; preds = %bb.ak
  %i.jp = landingpad { ptr, i32 }
          cleanup
  store i16 %i.ik, ptr %.sroa.1715.0..sroa_idx16.i.i, align 8, !alias.scope !114653, !noalias !114654
  store i64 %i.in, ptr %.sroa.1919.0..sroa_idx20.i.i, align 8, !alias.scope !114664, !noalias !114654
  %i.jq = icmp eq i64 %.sroa.5.0.copyload2.i.i.i.i.i.i, 0
  br i1 %i.jq, label %"_ZN4core3ptr141drop_in_place$LT$$LP$$RF$std..path..Path$C$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$std..path..Path$RP$$GT$$RP$$GT$17h1446875029b0dca7E.exit.i.i.i.i.i.i", label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.jr = mul nuw i64 %.sroa.5.0.copyload2.i.i.i.i.i.i, 24
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload.i.i.i.i.i.i, i64 noundef %i.jr, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !114657
  br label %"_ZN4core3ptr141drop_in_place$LT$$LP$$RF$std..path..Path$C$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$std..path..Path$RP$$GT$$RP$$GT$17h1446875029b0dca7E.exit.i.i.i.i.i.i"

bb.ak:                                            ; preds = %bb.af
  %i.js = call i64 @llvm.uadd.sat.i64(i64 %i.in, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ia, i64 noundef range(i64 1, 0) %i.js, i64 noundef 8, i64 noundef 40)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he72b33255d4e6204E.exit.i.i_crit_edge.i.i.i.i" unwind label %bb.ai, !noalias !114660

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he72b33255d4e6204E.exit.i.i_crit_edge.i.i.i.i": ; preds = %bb.ak
  %.pre.i.i.i.i153 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i149, align 8, !alias.scope !114659, !noalias !114660
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he72b33255d4e6204E.exit.i.i.i.i.i.i"

bb.al:                                            ; preds = %bb.aa, %bb.z
  %i.jt = icmp eq i64 %i.gs, 0
  br i1 %i.jt, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17hc79b2d92522f1a97E.exit.i.i.i.i.i.i.i", label %.preheader.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %bb.al, %"_ZN4core3ptr141drop_in_place$LT$$LP$$RF$std..path..Path$C$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$std..path..Path$RP$$GT$$RP$$GT$17h1446875029b0dca7E.exit.i.i.i.i.i.i.i.i"
  %.lcssa14.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa13.i.i.i.i.i.i.i.i, %"_ZN4core3ptr141drop_in_place$LT$$LP$$RF$std..path..Path$C$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$std..path..Path$RP$$GT$$RP$$GT$17h1446875029b0dca7E.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.13.0.i.i, %bb.al ] ; 2 uses
  %i.ju = phi i64 [ %i.kh, %"_ZN4core3ptr141drop_in_place$LT$$LP$$RF$std..path..Path$C$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$std..path..Path$RP$$GT$$RP$$GT$17h1446875029b0dca7E.exit.i.i.i.i.i.i.i.i" ], [ %i.gs, %bb.al ]
  %.lcssa710.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa79.i.i.i.i.i.i.i.i, %"_ZN4core3ptr141drop_in_place$LT$$LP$$RF$std..path..Path$C$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$std..path..Path$RP$$GT$$RP$$GT$17h1446875029b0dca7E.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.10.0.i.i, %bb.al ] ; 2 uses
  %i.jv = phi i16 [ %i.ke, %"_ZN4core3ptr141drop_in_place$LT$$LP$$RF$std..path..Path$C$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$std..path..Path$RP$$GT$$RP$$GT$17h1446875029b0dca7E.exit.i.i.i.i.i.i.i.i" ], [ %i.gp, %bb.al ] ; 2 uses
  %.not13.i.i.i.i.i.i1.i.i.i = icmp eq i16 %i.jv, 0
  br i1 %.not13.i.i.i.i.i.i1.i.i.i, label %.lr.ph.i.i.i.i.i.i4.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h955ab99754670774E.exit.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i4.i.i.i:                        ; preds = %.preheader.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i4.i.i.i
  %i.jw = phi ptr [ %i.ka, %.lr.ph.i.i.i.i.i.i4.i.i.i ], [ %.lcssa14.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.jx = phi ptr [ %i.jz, %.lr.ph.i.i.i.i.i.i4.i.i.i ], [ %.lcssa710.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i ]
  %.val11.i.i.i.i.i.i5.i.i.i = load <16 x i8>, ptr %i.jw, align 16, !noalias !114665
  %i.jy = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i5.i.i.i, splat (i8 -1)
  %i.jz = getelementptr inbounds i8, ptr %i.jx, i64 -640 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jw, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i6.i.i.i = bitcast <16 x i1> %i.jy to i16 ; 2 uses
  %.not.i.i.i.i.i.i7.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i6.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i7.i.i.i, label %.lr.ph.i.i.i.i.i.i4.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h955ab99754670774E.exit.i.i.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h955ab99754670774E.exit.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i4.i.i.i, %.preheader.i.i.i.i.i.i.i.i
  %.lcssa13.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa14.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i ], [ %i.ka, %.lr.ph.i.i.i.i.i.i4.i.i.i ]
  %.lcssa79.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa710.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i ], [ %i.jz, %.lr.ph.i.i.i.i.i.i4.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i2.i.i.i = phi i16 [ %i.jv, %.preheader.i.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i6.i.i.i, %.lr.ph.i.i.i.i.i.i4.i.i.i ] ; 3 uses
  %i.kb = add i16 %.lcssa.i.i.i.i.i.i2.i.i.i, -1
  %i.kc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i2.i.i.i, i1 true)
  %i.kd = zext nneg i16 %i.kc to i64
  %i.ke = and i16 %i.kb, %.lcssa.i.i.i.i.i.i2.i.i.i
  %i.kf = sub nsw i64 0, %i.kd
  %i.kg = getelementptr inbounds [40 x i8], ptr %.lcssa79.i.i.i.i.i.i.i.i, i64 %i.kf ; 2 uses
  %i.kh = add i64 %i.ju, -1                       ; 2 uses
  %i.ki = getelementptr i8, ptr %i.kg, i64 -24
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.ki, align 8, !noalias !114666 ; 2 uses
  %i.kj = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.kj, label %"_ZN4core3ptr141drop_in_place$LT$$LP$$RF$std..path..Path$C$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$std..path..Path$RP$$GT$$RP$$GT$17h1446875029b0dca7E.exit.i.i.i.i.i.i.i.i", label %bb.am

bb.am:                                            ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h955ab99754670774E.exit.i.i.i.i.i.i.i.i"
  %i.kk = getelementptr i8, ptr %i.kg, i64 -16
  %.val6.i.i.i.i.i.i.i.i = load ptr, ptr %i.kk, align 8, !noalias !114666, !nonnull !145, !noundef !145
  %i.kl = mul nuw i64 %.val.i.i.i.i.i.i.i.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i.i.i.i, i64 noundef %i.kl, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !114666
  br label %"_ZN4core3ptr141drop_in_place$LT$$LP$$RF$std..path..Path$C$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$std..path..Path$RP$$GT$$RP$$GT$17h1446875029b0dca7E.exit.i.i.i.i.i.i.i.i"

"_ZN4core3ptr141drop_in_place$LT$$LP$$RF$std..path..Path$C$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$std..path..Path$RP$$GT$$RP$$GT$17h1446875029b0dca7E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.am, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h955ab99754670774E.exit.i.i.i.i.i.i.i.i"
  %.old5.i.i.i.i.i.i.i.i = icmp eq i64 %i.kh, 0
  br i1 %.old5.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17hc79b2d92522f1a97E.exit.i.i.i.i.i.i.i", label %.preheader.i.i.i.i.i.i.i.i

"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17hc79b2d92522f1a97E.exit.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr141drop_in_place$LT$$LP$$RF$std..path..Path$C$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$std..path..Path$RP$$GT$$RP$$GT$17h1446875029b0dca7E.exit.i.i.i.i.i.i.i.i", %bb.al
  %i.km = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i, 0
  %or.cond23.i.i = or i1 %i.cr, %i.km
  br i1 %or.cond23.i.i, label %.thread403, label %bb.an

bb.an:                                            ; preds = %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17hc79b2d92522f1a97E.exit.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i) #83, !noalias !114667
  br label %.thread403

_ZN4core4iter6traits8iterator8Iterator7collect17he8ecbdcc0f1cccf2E.exit: ; preds = %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17hc79b2d92522f1a97E.exit.i.i.i.i.i.i.i.i.i.i", %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !114636
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !114638
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !114636
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8 ; 9 uses
  %.phi.trans.insert621 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.pre622 = load i64, ptr %.phi.trans.insert621, align 8 ; 7 uses
  %i.kn = icmp ult i64 %.pre622, 2
  br i1 %i.kn, label %_ZN5alloc5slice11stable_sort17h4ce29b9c317adafdE.exit, label %bb.ao, !prof !114668

bb.ao:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17he8ecbdcc0f1cccf2E.exit
  %i.ko = icmp ult i64 %.pre622, 21
  br i1 %i.ko, label %bb.aq, label %bb.ap, !prof !154

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17he681b2cb9747ef0aE(ptr noalias noundef nonnull align 8 %.pre, i64 noundef %.pre622, ptr noalias noundef nonnull align 1 %i.a)
          to label %_ZN5alloc5slice11stable_sort17h4ce29b9c317adafdE.exit.thread unwind label %bb.bl

bb.aq:                                            ; preds = %bb.ao
  invoke fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h6ae6e023888fb5a1E(ptr noalias noundef nonnull align 8 %.pre, i64 noundef %.pre622)
          to label %_ZN5alloc5slice11stable_sort17h4ce29b9c317adafdE.exit.thread unwind label %bb.bl

_ZN5alloc5slice11stable_sort17h4ce29b9c317adafdE.exit.thread: ; preds = %bb.aq, %bb.ap
  %i.kp = icmp ult i64 %.pre622, 230584300921369396
  call void @llvm.assume(i1 %i.kp)
  br label %bb.ar

_ZN5alloc5slice11stable_sort17h4ce29b9c317adafdE.exit: ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17he8ecbdcc0f1cccf2E.exit
  %i.kq = icmp eq i64 %.pre622, 0
  br i1 %i.kq, label %_ZN5alloc5slice11stable_sort17h4ce29b9c317adafdE.exit.thread670, label %bb.ar

_ZN5alloc5slice11stable_sort17h4ce29b9c317adafdE.exit.thread670: ; preds = %bb.y, %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17hc79b2d92522f1a97E.exit.i.i.i.i.i.i.i.i", %_ZN5alloc5slice11stable_sort17h4ce29b9c317adafdE.exit
  %i.kr = phi ptr [ %.pre, %_ZN5alloc5slice11stable_sort17h4ce29b9c317adafdE.exit ], [ inttoptr (i64 8 to ptr), %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17hc79b2d92522f1a97E.exit.i.i.i.i.i.i.i.i" ], [ inttoptr (i64 8 to ptr), %bb.y ] ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.val65, i64 24
  %i.kt = load ptr, ptr %i.ks, align 8, !invariant.load !145, !noalias !114669, !nonnull !145
  %i.ku = invoke noundef zeroext i1 %i.kt(ptr noundef nonnull align 1 %.val64, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2620, i64 noundef 27)
          to label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit175 unwind label %bb.bl, !inline_history !363
end_hunk_3
begin_hunk_4_@"_ZN83_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..typecheck..Infer$GT$5infer17hf63bcdbcdc2b30c7E":bb.a
  unreachable

"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i": ; preds = %bb.f, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h810ccca4ff72b1ddE.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.val.i = load ptr, ptr %i.bc, align 8, !alias.scope !117368, !noalias !117367, !nonnull !145, !noundef !145 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %.val1.i = load ptr, ptr %i.bd, align 8, !alias.scope !117368, !noalias !117367 ; 4 uses
  %.val.i.i4.i = load i64, ptr %.val.i, align 8, !noalias !117369, !noundef !145 ; 2 uses
  %i.be = icmp ne i64 %.val.i.i4.i, 0
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = add i64 %.val.i.i4.i, 1                 ; 2 uses
  store i64 %i.bf, ptr %.val.i, align 8, !noalias !117369
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.h, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i, !prof !147

bb.h:                                             ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i"
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i: ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hcc98a2e55c6b3dbbE.exit.i"
  %.not.i5.i = icmp eq ptr %.val1.i, null
  br i1 %.not.i5.i, label %bb.n, label %bb.i

bb.i:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i
  %.val.i2.i6.i = load i64, ptr %.val1.i, align 8, !noalias !117369, !noundef !145 ; 2 uses
  %i.bh = icmp ne i64 %.val.i2.i6.i, 0
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = add i64 %.val.i2.i6.i, 1                ; 2 uses
  store i64 %i.bi, ptr %.val1.i, align 8, !noalias !117369
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.j, label %bb.n, !prof !147

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 20
  invoke void @_ZN16nickel_lang_core9typecheck7Context8get_type17hc5ce89a73169ad2dE(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(20) %i.bk)
          to label %bb.bt unwind label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit184.thread459"

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !nonnull !145, !align !176, !noundef !145
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bo = load i16, ptr %i.bn, align 8, !range !172, !noundef !145 ; 2 uses
  invoke void @"_ZN110_$LT$nickel_lang_parser..ast..primop..PrimOp$u20$as$u20$nickel_lang_core..typecheck..operation..PrimOpType$GT$11primop_type17h234669c19ab25f16E"(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %i.ac, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.bm, ptr noalias noundef nonnull align 8 dereferenceable(56) %2, i16 noundef %i.bo)
          to label %bb.ce unwind label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit184.thread459"

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !145, !align !149, !noundef !145
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !145, !align !149, !noundef !145
  call fastcc void @_ZN16nickel_lang_core9typecheck16infer_with_annot17h16b9f77c0a033850E(ptr noalias noundef align 8 captures(address) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(56) %2, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.m, ptr noalias noundef nonnull align 1 %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.dk

"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit184.thread459": ; preds = %bb.l, %bb.c, %bb.q, %bb.n, %bb.k
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.n:                                             ; preds = %bb.i, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h3962fc22add47a07E.exit.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.bu = load i16, ptr %i.bt, align 8, !range !172, !alias.scope !117368, !noalias !117367, !noundef !145
  store ptr %.val2.i, ptr %i.w, align 8, !alias.scope !117367, !noalias !117368
  %i.bv = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %.val3.i, ptr %i.bv, align 8, !alias.scope !117367, !noalias !117368
  %i.bw = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %.val.i, ptr %i.bw, align 8, !alias.scope !117367, !noalias !117368
  %i.bx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %.val1.i, ptr %i.bx, align 8, !alias.scope !117367, !noalias !117368
  %i.by = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store i16 %i.bu, ptr %i.by, align 8, !alias.scope !117367, !noalias !117368
  invoke fastcc void @"_ZN83_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..typecheck..Infer$GT$5infer17hf63bcdbcdc2b30c7E"(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.au, ptr noalias noundef align 8 dereferenceable(56) %2, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.w, ptr noalias noundef nonnull align 1 %4)
          to label %bb.o unwind label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit184.thread459"

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.bz = load i64, ptr %i.x, align 8, !range !184, !noundef !145 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 20
  %i.cb = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  br i1 %i.ca, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cc, ptr %i.cd, align 8
  store i64 20, ptr %0, align 8
  br label %bb.dq

bb.q:                                             ; preds = %bb.o
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.920.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.920.0..sroa_idx21, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.556.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  store i64 %i.bz, ptr %i.v, align 8
  %.sroa.717.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.cc, ptr %.sroa.717.0..sroa_idx18, align 8
  invoke void @_ZN16nickel_lang_core9typecheck19instantiate_foralls17he52d690ea39182a6E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(56) %2, ptr noalias noundef nonnull align 8 dereferenceable(40) %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.v, i1 noundef zeroext true)
          to label %bb.r unwind label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit184.thread459"

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !nonnull !145, !align !149, !noundef !145 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ci = load i64, ptr %i.ch, align 8, !noundef !145 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !117370
  %i.cj = mul i64 %i.ci, 96                       ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %i.ci, 96076792050570581
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.t, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !151

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.r
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h004916b4a828f9abE.exit.i.i.i.i.i.i", label %bb.s

bb.s:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !117371
  %i.cl = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.cj, i64 noundef range(i64 1, 9) 8) #83, !noalias !117371 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.t, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h004916b4a828f9abE.exit.i.i.i.i.i.i"

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.s ], [ 0, %bb.r ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.cj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1687) #82
          to label %.noexc93 unwind label %.body.thread245

.body.thread245:                                  ; preds = %bb.t
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.noexc93:                                         ; preds = %bb.t
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h004916b4a828f9abE.exit.i.i.i.i.i.i": ; preds = %bb.s, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %i.co = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.cl, %bb.s ] ; 2 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.ci, %bb.s ] ; 2 uses
  %i.cp = icmp samesign ule i64 %i.ci, %.sroa.4.0.i.i.i.i.i
  call void @llvm.assume(i1 %i.cp)
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.g, align 8, !noalias !117370
  %i.cq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.co, ptr %i.cq, align 8, !noalias !117370
  %i.cr = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !117372)
  call void @llvm.experimental.noalias.scope.decl(metadata !117373)
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ci, 0    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h004916b4a828f9abE.exit.i.i.i.i.i.i..loopexit_crit_edge", label %bb.u

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h004916b4a828f9abE.exit.i.i.i.i.i.i..loopexit_crit_edge": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h004916b4a828f9abE.exit.i.i.i.i.i.i"
  %.pre = load i16, ptr %i.bt, align 8, !range !172
  br label %.loopexit

bb.u:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h004916b4a828f9abE.exit.i.i.i.i.i.i"
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cu = load i16, ptr %i.bt, align 8, !range !172, !noalias !117374, !noundef !145 ; 3 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.x, %bb.u
  %.val10.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.u ], [ %i.dd, %bb.x ] ; 3 uses
  %.sroa.0.0.i.in.i.i.i.i.i.i.i.i = phi i64 [ %i.ci, %bb.u ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %bb.x ]
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = add nsw i64 %.sroa.0.0.i.in.i.i.i.i.i.i.i.i, -1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !117375)
  call void @llvm.experimental.noalias.scope.decl(metadata !117376)
  %i.cv = load i64, ptr %i.cs, align 8, !alias.scope !117377, !noalias !117378, !noundef !145 ; 5 uses
  %i.cw = icmp ult i64 %i.cv, 88686269585142076
  call void @llvm.assume(i1 %i.cw)
  call void @llvm.experimental.noalias.scope.decl(metadata !117379)
  %i.cx = load i64, ptr %i.cf, align 8, !range !146, !alias.scope !117380, !noalias !117381, !noundef !145
  %i.cy = icmp eq i64 %i.cv, %i.cx
  br i1 %i.cy, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h6af2fe93b5a9a32cE"(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.cf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1451)
          to label %bb.x unwind label %.body.i.i.i.i, !noalias !117382

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cz = load ptr, ptr %i.ct, align 8, !alias.scope !117380, !noalias !117381, !nonnull !145, !noundef !145
  %i.da = getelementptr inbounds nuw [104 x i8], ptr %i.cz, i64 %i.cv ; 2 uses
  store i64 20, ptr %i.da, align 8, !noalias !117383
  %.sroa.41.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 96
  store i16 %i.cu, ptr %.sroa.41.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !117383
  %i.db = add nuw nsw i64 %i.cv, 1
  store i64 %i.db, ptr %i.cs, align 8, !alias.scope !117380, !noalias !117381
  %i.dc = getelementptr inbounds nuw [96 x i8], ptr %i.co, i64 %.val10.i.i.i.i.i.i.i.i.i ; 3 uses
  store i64 19, ptr %i.dc, align 8, !noalias !117384
  %.sroa.5.8..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store i64 %i.cv, ptr %.sroa.5.8..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !117384
  %.sroa.6.8..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store i16 %i.cu, ptr %.sroa.6.8..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !117384
  %i.dd = add nuw i64 %.val10.i.i.i.i.i.i.i.i.i, 1
  %i.de = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.de, label %.loopexit, label %bb.v

.body.i.i.i.i:                                    ; preds = %bb.w
  %i.df = landingpad { ptr, i32 }
          cleanup
  store i64 %.val10.i.i.i.i.i.i.i.i.i, ptr %i.cr, align 8, !alias.scope !117385, !noalias !117386
  invoke fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$17h5e0247538e40cc9fE"(ptr noalias noundef align 8 dereferenceable(24) %i.g) #86
          to label %.body.thread unwind label %bb.y, !noalias !117370

bb.y:                                             ; preds = %.body.i.i.i.i
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !117370
  unreachable

"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit.thread473": ; preds = %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit.thread469"
  br i1 %.sroa.045.2466, label %.body.thread, label %.thread

.body:                                            ; preds = %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit131.thread"
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit:                                        ; preds = %bb.x, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h004916b4a828f9abE.exit.i.i.i.i.i.i..loopexit_crit_edge"
  %i.di = phi i16 [ %.pre, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h004916b4a828f9abE.exit.i.i.i.i.i.i..loopexit_crit_edge" ], [ %i.cu, %bb.x ] ; 3 uses
  store i64 %i.ci, ptr %i.cr, align 8, !alias.scope !117385, !noalias !117387
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !117388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !117370
  %i.dj = load ptr, ptr %i.ce, align 8, !nonnull !145, !align !149, !noundef !145 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !117389)
  call void @llvm.experimental.noalias.scope.decl(metadata !117390)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !alias.scope !117391, !noalias !117392, !noundef !145 ; 5 uses
  %i.dm = icmp ult i64 %i.dl, 88686269585142076
  call void @llvm.assume(i1 %i.dm)
  call void @llvm.experimental.noalias.scope.decl(metadata !117393)
  %i.dn = load i64, ptr %i.dj, align 8, !range !146, !alias.scope !117394, !noalias !117395, !noundef !145
  %i.do = icmp eq i64 %i.dl, %i.dn
  br i1 %i.do, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.loopexit
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h6af2fe93b5a9a32cE"(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.dj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1451)
          to label %bb.aa unwind label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit.thread"

"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit.thread480": ; preds = %bb.aa, %bb.av, %bb.ba
  %.sroa.045.5.ph = phi i1 [ false, %bb.ba ], [ false, %bb.av ], [ true, %bb.aa ]
  %lpad.thr_comm478 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit.thread469"

"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit": ; preds = %bb.bk, %bb.bo
  %lpad.thr_comm.split-lp479 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit.thread": ; preds = %bb.z
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit.thread469"

bb.aa:                                            ; preds = %.loopexit, %bb.z
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !alias.scope !117394, !noalias !117395, !nonnull !145, !noundef !145
  %i.ds = getelementptr inbounds nuw [104 x i8], ptr %i.dr, i64 %i.dl ; 2 uses
  store i64 20, ptr %i.ds, align 8, !noalias !117396
  %.sroa.41.0..sroa_idx.i.i94 = getelementptr inbounds nuw i8, ptr %i.ds, i64 96
  store i16 %i.di, ptr %.sroa.41.0..sroa_idx.i.i94, align 8, !noalias !117396
  %i.dt = add nuw nsw i64 %i.dl, 1
  store i64 %i.dt, ptr %i.dk, align 8, !alias.scope !117394, !noalias !117395
  %i.du = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.dl, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i16 %i.di, ptr %i.dv, align 8
  store i64 19, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.val = load ptr, ptr %i.dw, align 8, !nonnull !145, !noundef !145 ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.val92 = load i64, ptr %i.dx, align 8, !noundef !145 ; 3 uses
  invoke fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h44d883ad442f437eE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.s, ptr nonnull %.val, i64 %.val92)
          to label %bb.ac unwind label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit.thread480"

default.unreachable:                              ; preds = %.lr.ph.i, %bb.cg, %bb.bv
  unreachable

bb.ab:                                            ; preds = %"_ZN118_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hd5a1adc10d6179faE.exit.thread.i.i"
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit.thread469"

bb.ac:                                            ; preds = %bb.aa
  %.sroa.7.0..sroa_idx202 = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %.sroa.7.0.copyload203 = load i16, ptr %.sroa.7.0..sroa_idx202, align 8 ; 3 uses
  %.sroa.9204.0..sroa_idx205 = getelementptr inbounds nuw i8, ptr %i.r, i64 90
  %.sroa.9204.0.copyload206 = load i16, ptr %.sroa.9204.0..sroa_idx205, align 2 ; 3 uses
  %.sroa.11.0..sroa_idx207 = getelementptr inbounds nuw i8, ptr %i.r, i64 92
  %.sroa.11.0.copyload208 = load i32, ptr %.sroa.11.0..sroa_idx207, align 4 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !117397)
  call void @llvm.experimental.noalias.scope.decl(metadata !117398)
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.s, align 8, !alias.scope !117399, !noalias !117400
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !117399, !noalias !117400, !nonnull !145, !noundef !145 ; 6 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !117399, !noalias !117400 ; 4 uses
  %i.dz = icmp ult i64 %.sroa.5.0.copyload.i.i, 96076792050570582
  call void @llvm.assume(i1 %i.dz)
  %.idx.i = mul nuw nsw i64 %.sroa.5.0.copyload.i.i, 96
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i, i64 %.idx.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !117401
  store ptr %.sroa.4.0.copyload.i.i, ptr %i.f, align 8, !noalias !117401
  %.sroa.4.0..sroa_idx30.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx30.i, align 8, !noalias !117401
  %.sroa.5.0..sroa_idx31.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx31.i, align 8, !noalias !117401
  %.sroa.6.0..sroa_idx32.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 4 uses
  store ptr %i.ea, ptr %.sroa.6.0..sroa_idx32.i, align 8, !noalias !117401
  call void @llvm.experimental.noalias.scope.decl(metadata !117402)
  call void @llvm.experimental.noalias.scope.decl(metadata !117403)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(88) %i.r, i64 88, i1 false)
  %i.eb = icmp eq i64 %.sroa.5.0.copyload.i.i, 0
  br i1 %i.eb, label %"_ZN118_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hd5a1adc10d6179faE.exit.thread.i.i", label %"_ZN118_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hd5a1adc10d6179faE.exit.lr.ph.i.i"

"_ZN118_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hd5a1adc10d6179faE.exit.lr.ph.i.i": ; preds = %bb.ac
  %i.ec = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i4.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 2 uses
  %.sroa.5.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.e, i64 90 ; 2 uses
  %.sroa.632.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 92 ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr %i.ea, i64 -96 ; 5 uses
  %.sroa.0.0.copyload4.i.peel.i = load i64, ptr %i.ef, align 8, !noalias !117404 ; 3 uses
  %.not.i.peel.i = icmp eq i64 %.sroa.0.0.copyload4.i.peel.i, 20
  br i1 %.not.i.peel.i, label %"_ZN118_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hd5a1adc10d6179faE.exit.thread.i.loopexit.i", label %bb.ad

bb.ad:                                            ; preds = %"_ZN118_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hd5a1adc10d6179faE.exit.lr.ph.i.i"
  %.sroa.7.0..sroa_idx5.i.peel.i = getelementptr inbounds i8, ptr %i.ea, i64 -88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !117405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.2.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7.0..sroa_idx5.i.peel.i, i64 88, i1 false), !noalias !117405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %i.r, i64 88, i1 false)
  store i16 %.sroa.7.0.copyload203, ptr %.sroa.4.0..sroa_idx.i4.i, align 8, !noalias !117405
  store i16 %.sroa.9204.0.copyload206, ptr %.sroa.5.0..sroa_idx.i5.i, align 2, !noalias !117405
  store i32 %.sroa.11.0.copyload208, ptr %.sroa.632.0..sroa_idx.i.i, align 4, !noalias !117405
  store i64 %.sroa.0.0.copyload4.i.peel.i, ptr %i.ec, align 8, !noalias !117405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !117406
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !117407
  %i.eg = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !117407 ; 4 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %.loopexit.i, label %bb.ae, !prof !155

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.eg, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.ec, i64 96, i1 false), !noalias !117408
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !117409
  %i.ei = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !117409 ; 3 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %.loopexit29.i, label %bb.af, !prof !155

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ei, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.e, i64 96, i1 false), !noalias !117410
  store ptr %i.eg, ptr %i.ed, align 8, !noalias !117406
  store ptr %i.ei, ptr %i.ee, align 8, !noalias !117406
  store i64 10, ptr %i.d, align 8, !noalias !117406
  %i.ek = call noundef i16 @"_ZN340_$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$u20$as$u20$nickel_lang_core..typecheck..VarLevelUpperBound$GT$21var_level_upper_bound17hc1a0ed8fe98c3311E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.d), !noalias !117411 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(88) %i.d, i64 88, i1 false), !noalias !117405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !117406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !117405
  %i.el = icmp eq i64 %.sroa.5.0.copyload.i.i, 1
  br i1 %i.el, label %"_ZN118_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hd5a1adc10d6179faE.exit.thread.i.loopexit.i", label %"_ZN118_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hd5a1adc10d6179faE.exit.i.i"

"_ZN118_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hd5a1adc10d6179faE.exit.i.i": ; preds = %bb.af, %bb.as
  %.sroa.6.0.i.i = phi i16 [ %i.ff, %bb.as ], [ %i.ek, %bb.af ] ; 2 uses
  %i.em = phi ptr [ %i.en, %bb.as ], [ %i.ef, %bb.af ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !117412)
  %i.en = getelementptr inbounds i8, ptr %i.em, i64 -96 ; 6 uses
  %.sroa.0.0.copyload4.i.i = load i64, ptr %i.en, align 8, !noalias !117413 ; 3 uses
  %.not.i.i98 = icmp eq i64 %.sroa.0.0.copyload4.i.i, 20
  br i1 %.not.i.i98, label %"_ZN118_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hd5a1adc10d6179faE.exit.thread.i.loopexit.i", label %bb.ag

bb.ag:                                            ; preds = %"_ZN118_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hd5a1adc10d6179faE.exit.i.i"
  %.sroa.7.0..sroa_idx5.i.i = getelementptr inbounds i8, ptr %i.em, i64 -88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !117405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.2.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7.0..sroa_idx5.i.i, i64 88, i1 false), !noalias !117405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.i.i, i64 88, i1 false), !noalias !117405
  store i16 %.sroa.6.0.i.i, ptr %.sroa.4.0..sroa_idx.i4.i, align 8, !noalias !117405
  store i16 0, ptr %.sroa.5.0..sroa_idx.i5.i, align 2, !noalias !117405
  store i32 %.sroa.11.0.copyload208, ptr %.sroa.632.0..sroa_idx.i.i, align 4, !noalias !117405
  store i64 %.sroa.0.0.copyload4.i.i, ptr %i.ec, align 8, !noalias !117405
  call void @llvm.experimental.noalias.scope.decl(metadata !117414)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !117415
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !117416
  %i.eo = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !117416 ; 4 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %.loopexit.i, label %bb.ak, !prof !155

.loopexit.i:                                      ; preds = %bb.ag, %bb.ad
  %.lcssa26.i = phi ptr [ %i.ef, %bb.ad ], [ %i.en, %bb.ag ]
  %.sroa.0.0.copyload4.i.lcssa23.i = phi i64 [ %.sroa.0.0.copyload4.i.peel.i, %bb.ad ], [ %.sroa.0.0.copyload4.i.i, %bb.ag ]
  store ptr %.lcssa26.i, ptr %.sroa.6.0..sroa_idx32.i, align 8, !alias.scope !117417, !noalias !117418
end_hunk_4
