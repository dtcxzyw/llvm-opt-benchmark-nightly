Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/rhai-9665971fb07cf480.rhai.24354a9ba4a54370-cgu.0?download=true
inline.NumInlined: 22837
inline.NumDeleted: 6491
loop-unroll.NumCompletelyUnrolled: 109
loop-unroll.NumRuntimeUnrolled: 151
loop-unroll.NumUnrolled: 260
begin_hunk_0_@"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$16make_method_call17h50b909f062f62613E":bb.a
  %.sroa.0.0.i15.i.i.i = phi ptr [ %i.ql, %bb.ex ], [ %.sink10.i.i.i.i.i715, %bb.eu ]
  %i.qs = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i15.i.i.i, i64 %i.qr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qs, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.j, i64 16, i1 false), !noalias !31128
  %i.qt = load i64, ptr %.sroa.01.0.i.i.i.i716, align 8, !alias.scope !31139, !noalias !31140, !noundef !55
  %i.qu = add i64 %i.qt, 1
  store i64 %i.qu, ptr %.sroa.01.0.i.i.i.i716, align 8, !alias.scope !31139, !noalias !31140
  %i.qv = load i64, ptr %i.py, align 8, !noalias !31144, !noundef !55
  %i.qw = icmp eq i64 %i.qd, %i.qv
  br i1 %i.qw, label %"_ZN86_$LT$thin_vec..IntoIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7cde2ab78ffd4603E.exit13.thread.i.i.i", label %"_ZN86_$LT$thin_vec..IntoIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7cde2ab78ffd4603E.exit13.i.i.i"

bb.fe:                                            ; preds = %.body.i.i.i, %.thread48.i.i.i
  %i.qx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !31124
  unreachable

"_ZN86_$LT$thin_vec..IntoIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7cde2ab78ffd4603E.exit.i.i.i": ; preds = %bb.et
  %i.qy = add i64 %i.pt, 1                        ; 3 uses
  %i.qz = getelementptr inbounds nuw [16 x i8], ptr %i.ps, i64 %i.pt ; 2 uses
  %.sroa.029.0.copyload30.i.i.i = load i8, ptr %i.qz, align 8, !noalias !31145 ; 2 uses
  %.not2.i.i.i = icmp eq i8 %.sroa.029.0.copyload30.i.i.i, 12
  br i1 %.not2.i.i.i, label %"_ZN86_$LT$thin_vec..IntoIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7cde2ab78ffd4603E.exit.thread.i.i.i", label %bb.ff

bb.ff:                                            ; preds = %"_ZN86_$LT$thin_vec..IntoIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7cde2ab78ffd4603E.exit.i.i.i"
  %.sroa.731.0..sroa_idx32.i.i.i = getelementptr inbounds nuw i8, ptr %i.qz, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.2.i.i.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.731.0..sroa_idx32.i.i.i, i64 15, i1 false), !noalias !31124
  %i.ra = getelementptr inbounds nuw [16 x i8], ptr %i.pq, i64 %.sroa.7.064.i.i.i ; 2 uses
  store i8 %.sroa.029.0.copyload30.i.i.i, ptr %i.ra, align 8, !noalias !31128
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ra, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.2.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.2.i.i.i, i64 15, i1 false), !noalias !31128
  %i.rb = add i64 %.sroa.7.064.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i713 = icmp eq i64 %i.rb, %.sink.i.pre-phi.i2327.i16.i
  br i1 %exitcond.not.i.i.i713, label %._crit_edge.i.i.i714, label %bb.et

"_ZN86_$LT$thin_vec..IntoIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7cde2ab78ffd4603E.exit.thread.i.i.i": ; preds = %"_ZN86_$LT$thin_vec..IntoIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7cde2ab78ffd4603E.exit.i.i.i", %bb.et
  %i.rc = phi i64 [ %i.pt, %bb.et ], [ %i.qy, %"_ZN86_$LT$thin_vec..IntoIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7cde2ab78ffd4603E.exit.i.i.i" ]
  store i64 %i.rc, ptr %i.pb, align 8, !noalias !31124
  store i64 %.sroa.7.064.i.i.i, ptr %i.pp, align 8, !alias.scope !31123, !noalias !31128
  %i.rd = icmp eq ptr %.val9.i.i.i, @_ZN8thin_vec12EMPTY_HEADER17h705e9b5c893b15cbE
  br i1 %i.rd, label %bb.fn, label %bb.fg, !prof !74

bb.fg:                                            ; preds = %"_ZN86_$LT$thin_vec..IntoIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7cde2ab78ffd4603E.exit.thread.i.i.i"
  invoke void @"_ZN69_$LT$thin_vec..IntoIter$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop18drop_non_singleton17h2307170cd3838d9aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.l)
          to label %bb.fi unwind label %bb.fh, !noalias !31124

bb.fh:                                            ; preds = %bb.fg
  %i.re = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN68_$LT$thin_vec..ThinVec$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop18drop_non_singleton17h8539b3518a87e87fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.l)
          to label %.body.i.i unwind label %bb.fj, !noalias !31124, !inline_history !90

bb.fi:                                            ; preds = %bb.fg
  invoke void @"_ZN68_$LT$thin_vec..ThinVec$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop18drop_non_singleton17h8539b3518a87e87fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.l)
          to label %bb.fn unwind label %bb.fk, !noalias !31122

bb.fj:                                            ; preds = %bb.fh
  %i.rf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !31146
  unreachable

bb.fk:                                            ; preds = %bb.fi, %bb.fb
  %i.rg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.fk, %bb.fh, %bb.fa, %.body.i.i.i, %.thread48.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.rg, %bb.fk ], [ %i.re, %bb.fh ], [ %lpad.thr_comm.i.i.i, %.thread48.i.i.i ], [ %i.qp, %bb.fa ], [ %i.qk, %.body.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$smallvec..SmallVec$LT$$u5b$rhai..types..dynamic..Dynamic$u3b$$u20$5$u5d$$GT$$GT$17hcccdf6f95b2c2522E"(ptr noalias noundef align 8 dereferenceable(88) %i.m) #72
          to label %.body723 unwind label %bb.fl, !noalias !31122

bb.fl:                                            ; preds = %.body.i.i
  %i.rh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !31122
  unreachable

.body723:                                         ; preds = %bb.fm, %.body.i.i, %.body731
  %.sroa.0190.0 = phi i8 [ %.sroa.0190.2, %.body731 ], [ %.sroa.0190.6, %bb.fm ], [ 1, %.body.i.i ]
  %.pn349 = phi { ptr, i32 } [ %.pn347, %.body731 ], [ %i.rk, %bb.fm ], [ %eh.lpad-body.i.i, %.body.i.i ] ; 4 uses
  %i.ri = load i64, ptr %i.bd, align 8, !range !78, !noundef !55
  %i.rj = icmp eq i64 %i.ri, 1
  br i1 %i.rj, label %bb.ji, label %bb.jj

bb.fm:                                            ; preds = %"_ZN4core3ptr109drop_in_place$LT$smallvec..SmallVec$LT$$u5b$$RF$mut$u20$rhai..types..dynamic..Dynamic$u3b$$u20$5$u5d$$GT$$GT$17h2c9e766560f32d4cE.exit782"
  %i.rk = landingpad { ptr, i32 }
          cleanup
  br label %.body723

.body731:                                         ; preds = %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$$RF$mut$u20$rhai..types..dynamic..Dynamic$GT$$GT$17h09683d22981074a9E.exit.i.i736", %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$rhai..ast..script_fn..ScriptFuncDef$GT$$GT$17h2607b6474408f1deE.exit", %bb.fp, %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$$RF$mut$u20$rhai..types..dynamic..Dynamic$GT$$GT$17h09683d22981074a9E.exit.i.i.i"
  %.sroa.0190.2 = phi i8 [ 1, %bb.fp ], [ %.sroa.0190.4, %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$$RF$mut$u20$rhai..types..dynamic..Dynamic$GT$$GT$17h09683d22981074a9E.exit.i.i736" ], [ 1, %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$$RF$mut$u20$rhai..types..dynamic..Dynamic$GT$$GT$17h09683d22981074a9E.exit.i.i.i" ], [ %.sroa.0190.4, %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$rhai..ast..script_fn..ScriptFuncDef$GT$$GT$17h2607b6474408f1deE.exit" ]
  %.pn347 = phi { ptr, i32 } [ %i.rs, %bb.fp ], [ %.pn345, %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$$RF$mut$u20$rhai..types..dynamic..Dynamic$GT$$GT$17h09683d22981074a9E.exit.i.i736" ], [ %i.rs, %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$$RF$mut$u20$rhai..types..dynamic..Dynamic$GT$$GT$17h09683d22981074a9E.exit.i.i.i" ], [ %.pn345, %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$rhai..ast..script_fn..ScriptFuncDef$GT$$GT$17h2607b6474408f1deE.exit" ]
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$smallvec..SmallVec$LT$$u5b$rhai..types..dynamic..Dynamic$u3b$$u20$5$u5d$$GT$$GT$17hcccdf6f95b2c2522E"(ptr noalias noundef align 8 dereferenceable(88) %i.bc) #72
          to label %.body723 unwind label %bb.cw

bb.fn:                                            ; preds = %"_ZN4core3ptr76drop_in_place$LT$thin_vec..IntoIter$LT$rhai..types..dynamic..Dynamic$GT$$GT$17h725b8ea66dd2699eE.exit.i.i.i", %"_ZN86_$LT$thin_vec..IntoIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7cde2ab78ffd4603E.exit.thread.i.i.i", %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !31124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !31122
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bc, ptr noundef nonnull align 8 dereferenceable(88) %i.m, i64 88, i1 false), !noalias !31147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !31122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  %i.rl = getelementptr inbounds nuw i8, ptr %i.bc, i64 80 ; 2 uses
  %i.rm = load i64, ptr %i.rl, align 8, !alias.scope !31148, !noalias !31149, !noundef !55 ; 3 uses
  %i.rn = icmp ugt i64 %i.rm, 5
  %i.ro = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.rp = load i64, ptr %i.ro, align 8, !alias.scope !31148, !noalias !31149 ; 2 uses
  %.sink10.i726 = select i1 %i.rn, i64 %i.rp, i64 %i.rm
  %i.rq = add i64 %.sink10.i726, %9               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !31150
  store i64 0, ptr %i.i, align 8, !noalias !31150
  %.not.i.i728 = icmp ugt i64 %i.rq, 5
  br i1 %.not.i.i728, label %bb.fo, label %bb.ft

bb.fo:                                            ; preds = %bb.fn
  %i.rr = invoke fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h6a7ce39196f2cd19E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.i, i64 noundef %i.rq)
          to label %bb.fq unwind label %bb.fp, !noalias !31150 ; 2 uses

bb.fp:                                            ; preds = %bb.fs, %bb.fr, %bb.fo
  %i.rs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i729 = load i64, ptr %i.i, align 8, !alias.scope !31151, !noalias !31150, !noundef !55 ; 2 uses
  %i.rt = icmp ugt i64 %.val.i729, 5
  br i1 %i.rt, label %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$$RF$mut$u20$rhai..types..dynamic..Dynamic$GT$$GT$17h09683d22981074a9E.exit.i.i.i", label %.body731

"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$$RF$mut$u20$rhai..types..dynamic..Dynamic$GT$$GT$17h09683d22981074a9E.exit.i.i.i": ; preds = %bb.fp
  %i.ru = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val1.i730 = load ptr, ptr %i.ru, align 8, !noalias !31150, !nonnull !55, !noundef !55
  %i.rv = shl nuw i64 %.val.i729, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i730, i64 noundef %i.rv, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !31152
  br label %.body731

bb.fq:                                            ; preds = %bb.fo
  %i.rw = extractvalue { i64, i64 } %i.rr, 0      ; 2 uses
  switch i64 %i.rw, label %bb.fr [
    i64 -9223372036854775807, label %._crit_edge
    i64 0, label %bb.fs
  ], !prof !142

._crit_edge:                                      ; preds = %bb.fq
  %.pre1588 = load i64, ptr %i.rl, align 8, !alias.scope !31153, !noalias !31154
  %.val1503.pre = load i64, ptr %i.ro, align 8
  br label %bb.ft

bb.fr:                                            ; preds = %bb.fq
  %i.rx = extractvalue { i64, i64 } %i.rr, 1
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) %i.rw, i64 noundef %i.rx) #70
          to label %.noexc2.i unwind label %bb.fp, !noalias !31150

.noexc2.i:                                        ; preds = %bb.fr
  unreachable

bb.fs:                                            ; preds = %bb.fq
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3260) #70
          to label %.noexc3.i unwind label %bb.fp, !noalias !31150

.noexc3.i:                                        ; preds = %bb.fs
  unreachable

"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$rhai..ast..script_fn..ScriptFuncDef$GT$$GT$17h2607b6474408f1deE.exit": ; preds = %.loopexit1529, %.loopexit.split-lp1530, %.body398, %bb.gf, %"_ZN4core3ptr199drop_in_place$LT$rhai..defer..Deferred$LT$rhai..eval..global_state..GlobalRuntimeState$C$rhai..func..call..$LT$impl$u20$rhai..engine..Engine$GT$..make_method_call..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h3010ad22a3bc2846E.exit"
  %.sroa.0190.4 = phi i8 [ 0, %.body398 ], [ 1, %"_ZN4core3ptr199drop_in_place$LT$rhai..defer..Deferred$LT$rhai..eval..global_state..GlobalRuntimeState$C$rhai..func..call..$LT$impl$u20$rhai..engine..Engine$GT$..make_method_call..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h3010ad22a3bc2846E.exit" ], [ 0, %bb.gf ], [ 1, %.loopexit1529 ], [ %.sroa.0190.5.ph, %.loopexit.split-lp1530 ] ; 2 uses
  %.pn345 = phi { ptr, i32 } [ %.pn343, %.body398 ], [ %i.xr, %"_ZN4core3ptr199drop_in_place$LT$rhai..defer..Deferred$LT$rhai..eval..global_state..GlobalRuntimeState$C$rhai..func..call..$LT$impl$u20$rhai..engine..Engine$GT$..make_method_call..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h3010ad22a3bc2846E.exit" ], [ %.pn343, %bb.gf ], [ %lpad.loopexit1531, %.loopexit1529 ], [ %lpad.loopexit.split-lp1532, %.loopexit.split-lp1530 ] ; 2 uses
  %.val519 = load i64, ptr %i.ba, align 8, !alias.scope !141, !noundef !55 ; 2 uses
  %i.ry = icmp ugt i64 %.val519, 5
  br i1 %i.ry, label %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$$RF$mut$u20$rhai..types..dynamic..Dynamic$GT$$GT$17h09683d22981074a9E.exit.i.i736", label %.body731

"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$$RF$mut$u20$rhai..types..dynamic..Dynamic$GT$$GT$17h09683d22981074a9E.exit.i.i736": ; preds = %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$rhai..ast..script_fn..ScriptFuncDef$GT$$GT$17h2607b6474408f1deE.exit"
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.val520 = load ptr, ptr %i.rz, align 8, !nonnull !55, !noundef !55
  %i.sa = shl nuw i64 %.val519, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val520, i64 noundef %i.sa, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !31155
  br label %.body731

.loopexit1529:                                    ; preds = %bb.fz
  %lpad.loopexit1531 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$rhai..ast..script_fn..ScriptFuncDef$GT$$GT$17h2607b6474408f1deE.exit"

.loopexit.split-lp1530:                           ; preds = %bb.id, %bb.ix, %bb.it, %bb.ip, %bb.ft, %bb.iy, %bb.il, %bb.iv, %bb.ir, %bb.in, %bb.ij, %bb.ig, %"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17hc49cad3d2cbdad44E.exit.i", %bb.fx, %"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17hc49cad3d2cbdad44E.exit.thread.i", %bb.fy, %bb.gw, %bb.if, %bb.ii, %bb.im, %_ZN4rhai9tokenizer22is_valid_function_name17h3d4195dd55974b68E.exit417.thread, %bb.iq, %bb.iu
  %.sroa.0190.5.ph = phi i8 [ 1, %bb.iu ], [ 1, %bb.if ], [ 1, %bb.ft ], [ 1, %bb.il ], [ 1, %bb.iq ], [ 1, %bb.fy ], [ 1, %"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17hc49cad3d2cbdad44E.exit.thread.i" ], [ 1, %bb.fx ], [ 1, %bb.id ], [ 1, %"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17hc49cad3d2cbdad44E.exit.i" ], [ 1, %bb.ig ], [ 1, %bb.im ], [ 1, %bb.in ], [ 1, %bb.ip ], [ 1, %bb.ij ], [ 1, %bb.it ], [ 1, %bb.iv ], [ 1, %bb.ix ], [ 1, %bb.ir ], [ 1, %bb.ii ], [ 1, %bb.iy ], [ 0, %bb.gw ], [ 1, %_ZN4rhai9tokenizer22is_valid_function_name17h3d4195dd55974b68E.exit417.thread ]
  %lpad.loopexit.split-lp1532 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$rhai..ast..script_fn..ScriptFuncDef$GT$$GT$17h2607b6474408f1deE.exit"

bb.ft:                                            ; preds = %._crit_edge, %bb.fn
  %.val1503 = phi i64 [ %.val1503.pre, %._crit_edge ], [ %i.rp, %bb.fn ]
  %i.sb = phi i64 [ %.pre1588, %._crit_edge ], [ %i.rm, %bb.fn ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ba, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !31150
  %i.sc = icmp ugt i64 %i.sb, 5                   ; 2 uses
  %i.sd = load ptr, ptr %i.bc, align 8, !alias.scope !31153, !noalias !31154, !nonnull !55
  %.sink10.i733 = select i1 %i.sc, ptr %i.sd, ptr %i.bc ; 2 uses
  %i.se = select i1 %i.sc, i64 %.val1503, i64 %i.sb
  %i.sf = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i733, i64 %i.se
  invoke fastcc void @"_ZN133_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LT$A$u20$as$u20$smallvec..Array$GT$..Item$GT$$GT$6extend17hebc17f47f4f846f6E"(ptr noalias noundef align 8 dereferenceable(48) %i.ba, ptr noundef nonnull %.sink10.i733, ptr noundef %i.sf)
          to label %bb.fu unwind label %.loopexit.split-lp1530

bb.fu:                                            ; preds = %bb.ft
  %i.sg = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %9 ; 4 uses
  %14 = add i64 %9, -1                            ; 2 uses
  %i.sh = load i64, ptr %i.ba, align 8, !alias.scope !31156, !noalias !31157, !noundef !55 ; 4 uses
  %i.si = icmp ugt i64 %i.sh, 5
  %.sroa.gep1173 = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 13 uses
  %.sink.i.i.i738 = call i64 @llvm.umax.i64(i64 %i.sh, i64 5) ; 2 uses
  %.sroa.gep1173.val = load i64, ptr %.sroa.gep1173, align 8
  %i.sj = select i1 %i.si, i64 %.sroa.gep1173.val, i64 %i.sh ; 3 uses
  %i.sk = sub i64 %.sink.i.i.i738, %i.sj
  %.not.i.i739 = icmp ult i64 %i.sk, %14
  br i1 %.not.i.i739, label %bb.fv, label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit.i

bb.fv:                                            ; preds = %bb.fu
  %i.sl = add i64 %i.sj, %14                      ; 3 uses
  %i.sm = icmp ult i64 %i.sl, %i.sj
  br i1 %i.sm, label %"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17hc49cad3d2cbdad44E.exit.thread.i", label %bb.fw, !prof !66

bb.fw:                                            ; preds = %bb.fv
  %i.sn = icmp ult i64 %i.sl, 2
  %i.so = add i64 %i.sl, -1
  %i.sp = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.so, i1 true)
  %i.sq = lshr i64 -1, %i.sp
  %.sroa.09.0.i.i = select i1 %i.sn, i64 0, i64 %i.sq ; 2 uses
  %i.sr = icmp eq i64 %.sroa.09.0.i.i, -1
  br i1 %i.sr, label %"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17hc49cad3d2cbdad44E.exit.thread.i", label %"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17hc49cad3d2cbdad44E.exit.i", !prof !66

"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17hc49cad3d2cbdad44E.exit.i": ; preds = %bb.fw
  %i.ss = add nuw i64 %.sroa.09.0.i.i, 1
  %i.st = invoke fastcc { i64, i64 } @"_ZN8smallvec17SmallVec$LT$A$GT$8try_grow17h6a7ce39196f2cd19E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ba, i64 noundef %i.ss)
          to label %.noexc744 unwind label %.loopexit.split-lp1530 ; 2 uses

.noexc744:                                        ; preds = %"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17hc49cad3d2cbdad44E.exit.i"
  %i.su = extractvalue { i64, i64 } %i.st, 0      ; 2 uses
  switch i64 %i.su, label %bb.fx [
    i64 -9223372036854775807, label %"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17hc49cad3d2cbdad44E.exit._ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit_crit_edge.i"
    i64 0, label %"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17hc49cad3d2cbdad44E.exit.thread.i"
  ], !prof !88

"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17hc49cad3d2cbdad44E.exit._ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit_crit_edge.i": ; preds = %.noexc744
  %.pre.i743 = load i64, ptr %i.ba, align 8, !alias.scope !31158, !noalias !31159 ; 2 uses
  %.pre85.i = call i64 @llvm.umax.i64(i64 %.pre.i743, i64 5)
  br label %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit.i

bb.fx:                                            ; preds = %.noexc744
  %i.sv = extractvalue { i64, i64 } %i.st, 1
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) %i.su, i64 noundef %i.sv) #70
          to label %.noexc745 unwind label %.loopexit.split-lp1530

.noexc745:                                        ; preds = %bb.fx
  unreachable

"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17hc49cad3d2cbdad44E.exit.thread.i": ; preds = %.noexc744, %bb.fw, %bb.fv
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3260) #70
          to label %.noexc746 unwind label %.loopexit.split-lp1530

.noexc746:                                        ; preds = %"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17hc49cad3d2cbdad44E.exit.thread.i"
  unreachable

_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit.i: ; preds = %"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17hc49cad3d2cbdad44E.exit._ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit_crit_edge.i", %bb.fu
  %.sink.i.pre-phi.i = phi i64 [ %.pre85.i, %"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17hc49cad3d2cbdad44E.exit._ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit_crit_edge.i" ], [ %.sink.i.i.i738, %bb.fu ] ; 5 uses
  %i.sw = phi i64 [ %.pre.i743, %"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17hc49cad3d2cbdad44E.exit._ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit_crit_edge.i" ], [ %i.sh, %bb.fu ] ; 2 uses
  %i.sx = icmp ugt i64 %i.sw, 5                   ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 15 uses
  %i.sz = load ptr, ptr %i.sy, align 8, !alias.scope !31158, !noalias !31159, !nonnull !55 ; 2 uses
  %.sink10.i.i = select i1 %i.sx, ptr %i.sz, ptr %i.sy ; 3 uses
  %.sink9.idx.i.i.sroa.sel = select i1 %i.sx, ptr %.sroa.gep1173, ptr %i.ba ; 3 uses
  %i.ta = load i64, ptr %.sink9.idx.i.i.sroa.sel, align 8, !alias.scope !31160, !noalias !31161, !noundef !55 ; 5 uses
  %i.tb = icmp ult i64 %i.ta, %.sink.i.pre-phi.i
  %.not.i.i.peel.i.not = icmp eq i64 %9, 1        ; 2 uses
  br i1 %i.tb, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit.i
  br i1 %.not.i.i.peel.i.not, label %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd538f72530c20450E.exit.thread.i", label %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd538f72530c20450E.exit.peel.i"

"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd538f72530c20450E.exit.peel.i": ; preds = %.lr.ph.preheader.i
  %i.tc = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.0.1.peel.i = getelementptr i8, ptr %8, i64 32 ; 4 uses
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %.sink10.i.i, i64 %i.ta
  store ptr %i.tc, ptr %i.td, align 8, !noalias !31161
  %i.te = add nuw i64 %i.ta, 1                    ; 4 uses
  %exitcond.peel.not.i = icmp eq i64 %i.te, %.sink.i.pre-phi.i
  br i1 %exitcond.peel.not.i, label %.loopexit1534, label %.lr.ph.peel.next.i.preheader

.lr.ph.peel.next.i.preheader:                     ; preds = %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd538f72530c20450E.exit.peel.i"
  %i.tf = add i64 %9, 1152921504606846974
  %i.tg = and i64 %i.tf, 1152921504606846975
  %i.th = add i64 %.sink.i.pre-phi.i, -2
  %i.ti = sub i64 %i.th, %i.ta
  %i.tj = call i64 @llvm.umin.i64(i64 %i.tg, i64 %i.ti) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.tj, 4
  br i1 %min.iters.check, label %.lr.ph.peel.next.i.preheader1928, label %vector.ph

.lr.ph.peel.next.i.preheader1928:                 ; preds = %vector.body, %.lr.ph.peel.next.i.preheader
  %storemerge78.i.ph = phi i64 [ %i.te, %.lr.ph.peel.next.i.preheader ], [ %i.to, %vector.body ]
  %.sroa.0.077.i.ph = phi ptr [ %.sroa.0.1.peel.i, %.lr.ph.peel.next.i.preheader ], [ %i.tq, %vector.body ]
  br label %.lr.ph.peel.next.i

vector.ph:                                        ; preds = %.lr.ph.peel.next.i.preheader
  %i.tk = add nuw nsw i64 %i.tj, 1                ; 2 uses
  %i.tl = and i64 %i.tk, 3                        ; 2 uses
  %i.tm = icmp eq i64 %i.tl, 0
  %i.tn = select i1 %i.tm, i64 4, i64 %i.tl
  %n.vec = sub nsw i64 %i.tk, %i.tn               ; 3 uses
  %i.to = add i64 %i.te, %n.vec
  %i.tp = shl i64 %n.vec, 4
  %i.tq = getelementptr i8, ptr %.sroa.0.1.peel.i, i64 %i.tp
  %i.tr = getelementptr [8 x i8], ptr %.sink10.i.i, i64 %i.te
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %.sroa.0.1.peel.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <2 x i64> <i64 0, i64 16> ; 2 uses
  %step.add1915 = getelementptr i8, <2 x ptr> %vector.gep, i64 32
  %i.ts = getelementptr [8 x i8], ptr %i.tr, i64 %index ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 16
  store <2 x ptr> %vector.gep, ptr %i.ts, align 8, !noalias !31161
  store <2 x ptr> %step.add1915, ptr %i.tt, align 8, !noalias !31161
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 64
  %i.tu = icmp eq i64 %index.next, %n.vec
  br i1 %i.tu, label %.lr.ph.peel.next.i.preheader1928, label %vector.body, !llvm.loop !30644

._crit_edge.i:                                    ; preds = %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit.i
  %i.tv = getelementptr inbounds nuw i8, ptr %8, i64 16
  br i1 %.not.i.i.peel.i.not, label %"_ZN133_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LT$A$u20$as$u20$smallvec..Array$GT$..Item$GT$$GT$6extend17h417c5d5b62bdcac4E.exit", label %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd538f72530c20450E.exit24.thread60.peel.i"

.loopexit1534:                                    ; preds = %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd538f72530c20450E.exit.i", %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd538f72530c20450E.exit.peel.i"
  %.sroa.0.0.lcssa.ph.i = phi ptr [ %.sroa.0.1.peel.i, %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd538f72530c20450E.exit.peel.i" ], [ %.sroa.0.1.i742, %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd538f72530c20450E.exit.i" ] ; 2 uses
  store i64 %.sink.i.pre-phi.i, ptr %.sink9.idx.i.i.sroa.sel, align 8, !alias.scope !31160, !noalias !31161
  %i.tw = icmp eq ptr %.sroa.0.0.lcssa.ph.i, %i.sg
  br i1 %i.tw, label %"_ZN133_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LT$A$u20$as$u20$smallvec..Array$GT$..Item$GT$$GT$6extend17h417c5d5b62bdcac4E.exit", label %".loopexit1534._ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd538f72530c20450E.exit24.thread60.peel.i_crit_edge"

".loopexit1534._ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd538f72530c20450E.exit24.thread60.peel.i_crit_edge": ; preds = %.loopexit1534
  %.pre1590 = load i64, ptr %i.ba, align 8, !alias.scope !31162, !noalias !31163
  %.pre1591 = load ptr, ptr %i.sy, align 8, !alias.scope !31162, !noalias !31163
  br label %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd538f72530c20450E.exit24.thread60.peel.i"

"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd538f72530c20450E.exit24.thread60.peel.i": ; preds = %".loopexit1534._ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd538f72530c20450E.exit24.thread60.peel.i_crit_edge", %._crit_edge.i
  %i.tx = phi ptr [ %i.sz, %._crit_edge.i ], [ %.pre1591, %".loopexit1534._ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd538f72530c20450E.exit24.thread60.peel.i_crit_edge" ]
  %i.ty = phi i64 [ %i.sw, %._crit_edge.i ], [ %.pre1590, %".loopexit1534._ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd538f72530c20450E.exit24.thread60.peel.i_crit_edge" ] ; 2 uses
  %.sroa.0.0.i2367.peel.i = phi ptr [ %i.tv, %._crit_edge.i ], [ %.sroa.0.0.lcssa.ph.i, %".loopexit1534._ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd538f72530c20450E.exit24.thread60.peel.i_crit_edge" ] ; 2 uses
  %i.tz = icmp ugt i64 %i.ty, 5                   ; 2 uses
  %.sink10.i.i.peel.i = select i1 %i.tz, ptr %i.tx, ptr %i.sy
  %.sink9.idx.i.i25.peel.i.sroa.sel = select i1 %i.tz, ptr %.sroa.gep1173, ptr %i.ba ; 2 uses
  %.sink.i.i27.peel.i = call i64 @llvm.umax.i64(i64 %i.ty, i64 5)
  %i.ua = load i64, ptr %.sink9.idx.i.i25.peel.i.sroa.sel, align 8, !alias.scope !31164, !noalias !31165, !noundef !55 ; 2 uses
  %i.ub = icmp eq i64 %i.ua, %.sink.i.i27.peel.i
  br i1 %i.ub, label %bb.fy, label %"_ZN8smallvec17SmallVec$LT$A$GT$4push17h4d33697b487932d3E.exit.peel.i", !prof !66

bb.fy:                                            ; preds = %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd538f72530c20450E.exit24.thread60.peel.i"
  invoke fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17hc05ef3f181f2b1f3E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ba)
          to label %.noexc747 unwind label %.loopexit.split-lp1530

.noexc747:                                        ; preds = %bb.fy
  %i.uc = load ptr, ptr %i.sy, align 8, !alias.scope !31164, !noalias !31165, !nonnull !55, !noundef !55
  %.pre.i.peel.i = load i64, ptr %.sroa.gep1173, align 8, !alias.scope !31164, !noalias !31165
  br label %"_ZN8smallvec17SmallVec$LT$A$GT$4push17h4d33697b487932d3E.exit.peel.i"

"_ZN8smallvec17SmallVec$LT$A$GT$4push17h4d33697b487932d3E.exit.peel.i": ; preds = %.noexc747, %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd538f72530c20450E.exit24.thread60.peel.i"
  %i.ud = phi i64 [ %.pre.i.peel.i, %.noexc747 ], [ %i.ua, %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd538f72530c20450E.exit24.thread60.peel.i" ]
  %.sroa.01.0.i.peel.i = phi ptr [ %.sroa.gep1173, %.noexc747 ], [ %.sink9.idx.i.i25.peel.i.sroa.sel, %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd538f72530c20450E.exit24.thread60.peel.i" ] ; 2 uses
  %.sroa.0.0.i28.peel.i = phi ptr [ %i.uc, %.noexc747 ], [ %.sink10.i.i.peel.i, %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd538f72530c20450E.exit24.thread60.peel.i" ]
  %i.ue = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i28.peel.i, i64 %i.ud
  store ptr %.sroa.0.0.i2367.peel.i, ptr %i.ue, align 8, !noalias !31165
  %i.uf = load i64, ptr %.sroa.01.0.i.peel.i, align 8, !alias.scope !31164, !noalias !31165, !noundef !55
  %i.ug = add i64 %i.uf, 1
  store i64 %i.ug, ptr %.sroa.01.0.i.peel.i, align 8, !alias.scope !31164, !noalias !31165
  %.sroa.046.0.i1553 = getelementptr i8, ptr %.sroa.0.0.i2367.peel.i, i64 16 ; 2 uses
  %i.uh = icmp eq ptr %.sroa.046.0.i1553, %i.sg
  br i1 %i.uh, label %"_ZN133_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LT$A$u20$as$u20$smallvec..Array$GT$..Item$GT$$GT$6extend17h417c5d5b62bdcac4E.exit", label %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd538f72530c20450E.exit24.thread60.i"

.lr.ph.peel.next.i:                               ; preds = %.lr.ph.peel.next.i.preheader1928, %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd538f72530c20450E.exit.i"
  %storemerge78.i = phi i64 [ %i.uv, %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd538f72530c20450E.exit.i" ], [ %storemerge78.i.ph, %.lr.ph.peel.next.i.preheader1928 ] ; 3 uses
  %.sroa.0.077.i = phi ptr [ %.sroa.0.1.i742, %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd538f72530c20450E.exit.i" ], [ %.sroa.0.077.i.ph, %.lr.ph.peel.next.i.preheader1928 ] ; 3 uses
  %i.ui = icmp eq ptr %.sroa.0.077.i, %i.sg
  br i1 %i.ui, label %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd538f72530c20450E.exit.thread.i", label %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd538f72530c20450E.exit.i"

"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd538f72530c20450E.exit24.thread60.i": ; preds = %"_ZN8smallvec17SmallVec$LT$A$GT$4push17h4d33697b487932d3E.exit.peel.i", %"_ZN8smallvec17SmallVec$LT$A$GT$4push17h4d33697b487932d3E.exit.i"
  %.sroa.046.0.i1554 = phi ptr [ %.sroa.046.0.i, %"_ZN8smallvec17SmallVec$LT$A$GT$4push17h4d33697b487932d3E.exit.i" ], [ %.sroa.046.0.i1553, %"_ZN8smallvec17SmallVec$LT$A$GT$4push17h4d33697b487932d3E.exit.peel.i" ] ; 2 uses
  %i.uj = load i64, ptr %i.ba, align 8, !alias.scope !31162, !noalias !31163, !noundef !55 ; 2 uses
  %i.uk = icmp ugt i64 %i.uj, 5                   ; 2 uses
  %i.ul = load ptr, ptr %i.sy, align 8, !alias.scope !31162, !noalias !31163, !nonnull !55
  %.sink10.i.i.i = select i1 %i.uk, ptr %i.ul, ptr %i.sy
  %.sink9.idx.i.i25.i.sroa.sel = select i1 %i.uk, ptr %.sroa.gep1173, ptr %i.ba ; 2 uses
  %.sink.i.i27.i = call i64 @llvm.umax.i64(i64 %i.uj, i64 5)
  %i.um = load i64, ptr %.sink9.idx.i.i25.i.sroa.sel, align 8, !alias.scope !31164, !noalias !31165, !noundef !55 ; 2 uses
  %i.un = icmp eq i64 %i.um, %.sink.i.i27.i
  br i1 %i.un, label %bb.fz, label %"_ZN8smallvec17SmallVec$LT$A$GT$4push17h4d33697b487932d3E.exit.i", !prof !66

bb.fz:                                            ; preds = %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd538f72530c20450E.exit24.thread60.i"
  invoke fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17hc05ef3f181f2b1f3E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ba)
          to label %.noexc748 unwind label %.loopexit1529

.noexc748:                                        ; preds = %bb.fz
  %i.uo = load ptr, ptr %i.sy, align 8, !alias.scope !31164, !noalias !31165, !nonnull !55, !noundef !55
  %.pre.i.i741 = load i64, ptr %.sroa.gep1173, align 8, !alias.scope !31164, !noalias !31165
  br label %"_ZN8smallvec17SmallVec$LT$A$GT$4push17h4d33697b487932d3E.exit.i"

"_ZN8smallvec17SmallVec$LT$A$GT$4push17h4d33697b487932d3E.exit.i": ; preds = %.noexc748, %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd538f72530c20450E.exit24.thread60.i"
  %i.up = phi i64 [ %.pre.i.i741, %.noexc748 ], [ %i.um, %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd538f72530c20450E.exit24.thread60.i" ]
  %.sroa.01.0.i.i740 = phi ptr [ %.sroa.gep1173, %.noexc748 ], [ %.sink9.idx.i.i25.i.sroa.sel, %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd538f72530c20450E.exit24.thread60.i" ] ; 2 uses
end_hunk_0
