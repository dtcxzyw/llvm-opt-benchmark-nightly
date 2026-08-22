Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/xtask-4cd5076fd53ab298.xtask.9db97cdd31b73b23-cgu.0?download=true
inline.NumInlined: 15191
inline.NumDeleted: 6593
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 95
begin_hunk_0_@"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_struct17ha0ba6392c640d6afE":bb.a
  store ptr %i.df, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !903
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 112
  store i64 %.sroa.6106.0.copyload.i.i, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !903
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.28.i, i64 24, i1 false), !noalias !903
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 144
  store i16 %i.br, ptr %.sroa.15.0..sroa_idx.i, align 8, !noalias !903
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.438.0..sroa_idx.i, align 8, !noalias !903, !nonnull !8, !noundef !8 ; 2 uses
  %.sroa.55.0.copyload = load ptr, ptr %.sroa.640.0..sroa_idx.i, align 8, !noalias !903, !nonnull !8, !noundef !8 ; 2 uses
  %.sroa.6.0.copyload = load i64, ptr %i.ba, align 8, !noalias !903 ; 2 uses
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h7b44a33c1511d1d6E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.at)
          to label %.noexc9.i unwind label %bb.bb, !noalias !903

.noexc9.i:                                        ; preds = %bb.az
  %i.ds = icmp eq ptr %.sroa.55.0.copyload, %.sroa.4.0.copyload
  br i1 %i.ds, label %bb.bd, label %bb.ba, !prof !17

bb.ba:                                            ; preds = %.noexc9.i
  %i.dt = ptrtoint ptr %.sroa.4.0.copyload to i64
  %i.du = ptrtoint ptr %.sroa.55.0.copyload to i64
  %i.dv = sub nuw i64 %i.du, %i.dt
  %i.dw = lshr exact i64 %i.dv, 5
  %i.dx = add i64 %i.dw, %.sroa.6.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !1062
  store i64 %.sroa.6.0.copyload, ptr %i.ab, align 8, !noalias !1062
  %i.dy = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17hdb035e64924287edE(i64 noundef %i.dx, ptr noundef nonnull align 1 %i.ab, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @697)
          to label %bb.bc unwind label %bb.bb, !noalias !903

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$xtask..bench..workload..BenchWorkload$GT$17h918730da179636d7E"(ptr noalias noundef align 8 dereferenceable(152) %i.as) #55
          to label %.body.thread.thread unwind label %bb.be, !noalias !903

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1062
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dy, ptr %i.ea, align 8, !alias.scope !900, !noalias !1061
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !900, !noalias !1061
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$xtask..bench..workload..BenchWorkload$GT$17h918730da179636d7E"(ptr noalias noundef align 8 dereferenceable(152) %i.as)
          to label %_ZN5serde7private2de7content17visit_content_seq17h765b3be8c7750869E.exit.sink.split unwind label %.body.thread11

bb.bd:                                            ; preds = %.noexc9.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(152) %i.as, i64 152, i1 false), !noalias !1061
  br label %_ZN5serde7private2de7content17visit_content_seq17h765b3be8c7750869E.exit.sink.split

bb.be:                                            ; preds = %.thread44.i, %bb.bb
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !903
  unreachable

.thread44.i:                                      ; preds = %.thread49.i, %bb.j, %bb.i
  %eh.lpad-body47.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.thread49.i ], [ %.pn117.i.i, %bb.j ], [ %.pn117.i.i, %bb.i ]
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h7b44a33c1511d1d6E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.at)
          to label %.body.thread.thread unwind label %bb.be, !noalias !903

_ZN5serde7private2de7content17visit_content_seq17h765b3be8c7750869E.exit.sink.split: ; preds = %bb.bc, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !903
  br label %_ZN5serde7private2de7content17visit_content_seq17h765b3be8c7750869E.exit

_ZN5serde7private2de7content17visit_content_seq17h765b3be8c7750869E.exit: ; preds = %_ZN5serde7private2de7content17visit_content_seq17h765b3be8c7750869E.exit.sink.split, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !903
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.28.i)
  br label %bb.ft

bb.bf:                                            ; preds = %bb.a
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0.copyload = load i64, ptr %i.ec, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.22.0.copyload = load ptr, ptr %.sroa.22.0..sroa_idx, align 8, !nonnull !8, !noundef !8 ; 4 uses
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.33.0.copyload = load i64, ptr %.sroa.33.0..sroa_idx, align 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1065)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.46.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.50.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.54.i)
  %i.ed = icmp ult i64 %.sroa.33.0.copyload, 144115188075855872
  tail call void @llvm.assume(i1 %i.ed)
  %.idx.i12 = shl nuw nsw i64 %.sroa.33.0.copyload, 6 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload, i64 %.idx.i12 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 2 uses
  store ptr %.sroa.22.0.copyload, ptr %i.ef, align 8, !noalias !1068
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 40 ; 19 uses
  store ptr %.sroa.22.0.copyload, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !1068
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store i64 %.sroa.01.0.copyload, ptr %.sroa.535.0..sroa_idx.i, align 8, !noalias !1068
  %.sroa.636.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  store ptr %i.ee, ptr %.sroa.636.0..sroa_idx.i, align 8, !noalias !1068
  store i8 22, ptr %i.z, align 8, !noalias !1068
  %i.eg = getelementptr inbounds nuw i8, ptr %i.z, i64 64 ; 19 uses
  store i64 0, ptr %i.eg, align 8, !noalias !1068
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !1068
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1070
  store i64 -9223372036854775808, ptr %i.y, align 8, !noalias !1070
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1070
  store i64 0, ptr %i.x, align 8, !noalias !1070
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1070
  store i64 -9223372036854775808, ptr %i.w, align 8, !noalias !1070
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1070
  store i64 -9223372036854775808, ptr %i.v, align 8, !noalias !1070
  %i.eh = icmp eq i64 %.sroa.33.0.copyload, 0
  br i1 %i.eh, label %.thread501.thread.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i"

.thread501.thread.i.i:                            ; preds = %bb.bf
  store i64 -9223372036854775808, ptr %i.v, align 8, !noalias !1070
  store i64 -9223372036854775808, ptr %i.w, align 8, !noalias !1070
  store i64 0, ptr %i.x, align 8, !noalias !1070
  store i64 -9223372036854775808, ptr %i.y, align 8, !noalias !1070
  br label %bb.da

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i": ; preds = %bb.bf
  %.sroa.6.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %.sroa.51.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.14.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ei = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i338.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 8 uses
  %.sroa.2.0..sroa_idx.i.i.i339.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ek = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.5230.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.6132.0..sroa_idx133.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 17 uses
  %.sroa.7135.0..sroa_idx136.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 17 uses
  %.sroa.2.0..sroa_idx.i.i.i331.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.el = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.5227.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.6113.0..sroa_idx114.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 19 uses
  %.sroa.7116.0..sroa_idx117.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 19 uses
  %.sroa.2.0..sroa_idx.i.i.i322.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.em = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.5224.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.2.0..sroa_idx.i.i.i314.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.en = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %.sroa.4221.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.672.0..sroa_idx73.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 21 uses
  %.sroa.672.sroa.6.0..sroa.672.0..sroa_idx73.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.2.0..sroa_idx.i.i.i307.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.eo = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.5219.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.664.0..sroa_idx65.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 19 uses
  %.sroa.767.0..sroa_idx68.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 19 uses
  %.sroa.2.0..sroa_idx.i.i.i301.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %.sroa.2.0..sroa_idx.i.i.i295.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.er = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.5216.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i13 = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %.sroa.6113.0..sroa_idx114.promoted.i.i = load ptr, ptr %.sroa.6113.0..sroa_idx114.i.i, align 8, !noalias !1070
  %.sroa.7116.0..sroa_idx117.promoted.i.i = load i64, ptr %.sroa.7116.0..sroa_idx117.i.i, align 8, !noalias !1070
  %.sroa.672.0..sroa_idx73.promoted.i.i = load ptr, ptr %.sroa.672.0..sroa_idx73.i.i, align 8, !noalias !1070
  %.sroa.664.0..sroa_idx65.promoted.i.i = load ptr, ptr %.sroa.664.0..sroa_idx65.i.i, align 8, !noalias !1070
  %.sroa.767.0..sroa_idx68.promoted.i.i = load i64, ptr %.sroa.767.0..sroa_idx68.i.i, align 8, !noalias !1070
  %i.es = add nsw i64 %.idx.i12, -64
  %i.et = lshr exact i64 %i.es, 6
  %i.eu = add nuw nsw i64 %i.et, 1
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i": ; preds = %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i"
  %i.ev = phi i64 [ 0, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i" ], [ %i.fh, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ] ; 2 uses
  %.sroa.5219.0.copyload1275.i.i = phi i64 [ %.sroa.767.0..sroa_idx68.promoted.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i" ], [ %.sroa.5219.0.copyload1274.i.i, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ] ; 25 uses
  %i.ew = phi ptr [ %.sroa.664.0..sroa_idx65.promoted.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i" ], [ %i.gg, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ] ; 25 uses
  %.sroa.0220.0.copyload1219.i.i = phi ptr [ %.sroa.672.0..sroa_idx73.promoted.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i" ], [ %.sroa.0220.0.copyload1218.i.i, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ] ; 25 uses
  %.sroa.5227.0.copyload1191.i.i = phi i64 [ %.sroa.7116.0..sroa_idx117.promoted.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i" ], [ %.sroa.5227.0.copyload1190.i.i, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ] ; 25 uses
  %i.ex = phi ptr [ %.sroa.6113.0..sroa_idx114.promoted.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i" ], [ %i.gh, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ] ; 25 uses
  %.sroa.5230.0.copyload1135.i.i = phi i64 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i" ], [ %.sroa.5230.0.copyload1134.i.i, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ] ; 24 uses
  %i.ey = phi ptr [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i" ], [ %i.gi, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ] ; 24 uses
  %.sroa.0.01074.i.i = phi i16 [ 0, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i" ], [ %.sroa.0.1.i.i, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ] ; 9 uses
  %.sroa.7.01073.i.i = phi i16 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i" ], [ %.sroa.7.1.i.i, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ] ; 8 uses
  %i.ez = phi i64 [ 0, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i" ], [ %i.go, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ] ; 33 uses
  %i.fa = phi i64 [ -9223372036854775808, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i" ], [ %i.gn, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ] ; 35 uses
  %.sroa.7121.04271072.i.i = phi ptr [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i" ], [ %.sroa.7121.0426.i.i, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ] ; 18 uses
  %.sroa.9124.04331071.i.i = phi i64 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i" ], [ %.sroa.9124.0432.i.i, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ] ; 18 uses
  %.sroa.0414.01070.i.i = phi i64 [ -9223372036854775808, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i" ], [ %.sroa.0414.1.i.i, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ] ; 35 uses
  %.sroa.14.01069.i.i = phi ptr [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i" ], [ %.sroa.14.1.i.i, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ] ; 28 uses
  %.sroa.19.01068.i.i = phi i64 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i" ], [ %.sroa.19.1.i.i, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ] ; 8 uses
  %.sroa.0419.01067.i.i = phi i64 [ -9223372036854775808, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i" ], [ %.sroa.0419.1.i.i, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ] ; 35 uses
  %.sroa.14424.01066.i.i = phi ptr [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i" ], [ %.sroa.14424.1.i.i, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ] ; 28 uses
  %.sroa.19425.01065.i.i = phi i64 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i" ], [ %.sroa.19425.1.i.i, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ] ; 8 uses
  %i.fb = phi ptr [ %.sroa.22.0.copyload, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i" ], [ %i.fg, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ] ; 4 uses
  %i.fc = phi i64 [ -9223372036854775808, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i" ], [ %i.gm, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ] ; 24 uses
  %i.fd = phi i64 [ -9223372036854775808, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i" ], [ %i.gl, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ] ; 35 uses
  %i.fe = phi i64 [ 0, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i" ], [ %i.gk, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ] ; 25 uses
  %i.ff = phi i64 [ -9223372036854775808, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i" ], [ %i.gj, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ] ; 35 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 64 ; 20 uses
  %.sroa.0.0.copyload11.i.i.i.i.i = load i8, ptr %i.fb, align 8, !noalias !1074 ; 3 uses
  %.not.i.i.i.i.i14 = icmp eq i8 %.sroa.0.0.copyload11.i.i.i.i.i, 22
  br i1 %.not.i.i.i.i.i14, label %.thread501.i.i, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i"

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i"
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fb, i64 1
  %i.fh = add nuw nsw i64 %i.ev, 1                ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1085
  store i8 %.sroa.0.0.copyload11.i.i.i.i.i, ptr %i.k, align 8, !noalias !1085
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6.0..sroa_idx2.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i.i.i.i, i64 31, i1 false), !noalias !1085
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.fi, i64 32, i1 false), !noalias !1068
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1085
  %.sroa.4.0.copyload.i.i.i.i = load i8, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i, align 1, !noalias !1085
  %.sroa.51.0.copyload.i.i.i.i = load i64, ptr %.sroa.51.0..sroa_idx.i.i.i.i, align 8, !noalias !1085 ; 7 uses
  %.sroa.10.0.copyload.i.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i.i, align 8, !noalias !1085 ; 4 uses
  %.sroa.14.0.copyload.i.i.i.i = load i64, ptr %.sroa.14.0..sroa_idx.i.i.i.i, align 8, !noalias !1085 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1086)
  call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  call void @llvm.experimental.noalias.scope.decl(metadata !1092)
  switch i8 %.sroa.0.0.copyload11.i.i.i.i.i, label %.noexc9.i.i.i.i.i [
    i8 1, label %bb.bg
    i8 4, label %bb.bh
    i8 12, label %bb.bi
    i8 13, label %bb.bk
    i8 14, label %bb.bl
    i8 15, label %bb.bn
  ], !prof !1095

.noexc9.i.i.i.i.i:                                ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i"
  %i.fj = invoke fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content28ContentDeserializer$LT$E$GT$12invalid_type17hbef5b53211e707e3E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.k, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58)
          to label %.noexc.i.i36 unwind label %.loopexit.i.i, !noalias !1070

.noexc.i.i36:                                     ; preds = %.noexc9.i.i.i.i.i
  store ptr %i.fj, ptr %i.ej, align 8, !alias.scope !1096, !noalias !1097
  store i8 1, ptr %i.j, align 8, !alias.scope !1096, !noalias !1097
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17he651706562d3213dE.exit.i.i.i.i.i"

bb.bg:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i"
  %i.fk = call i8 @llvm.umin.i8(i8 %.sroa.4.0.copyload.i.i.i.i, i8 7)
  store i8 %i.fk, ptr %i.ei, align 1, !alias.scope !1101, !noalias !1097
  store i8 0, ptr %i.j, align 8, !alias.scope !1101, !noalias !1097
  br label %bb.bo

bb.bh:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i"
  %.sink1.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.51.0.copyload.i.i.i.i, i64 7)
  %.sink.i.i.i.i.i.i.i.i.i = trunc nuw nsw i64 %.sink1.i.i.i.i.i.i.i.i.i to i8
  store i8 %.sink.i.i.i.i.i.i.i.i.i, ptr %i.ei, align 1, !alias.scope !1106, !noalias !1097
  store i8 0, ptr %i.j, align 8, !alias.scope !1106, !noalias !1097
  br label %bb.bo

bb.bi:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i"
  %i.fl = inttoptr i64 %.sroa.10.0.copyload.i.i.i.i to ptr ; 2 uses
  call fastcc void @"_ZN194_$LT$xtask..bench..workload.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..bench..workload..BenchWorkload$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h4b2f031467020064E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.j, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fl, i64 noundef %.sroa.14.0.copyload.i.i.i.i), !noalias !1109
  %i.fm = icmp eq i64 %.sroa.51.0.copyload.i.i.i.i, 0
  br i1 %i.fm, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17he651706562d3213dE.exit.i.i.i.i.i", label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fl, i64 noundef %.sroa.51.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !1112
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17he651706562d3213dE.exit.i.i.i.i.i"

bb.bk:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i"
  %i.fn = inttoptr i64 %.sroa.51.0.copyload.i.i.i.i to ptr
  call fastcc void @"_ZN194_$LT$xtask..bench..workload.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..bench..workload..BenchWorkload$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h4b2f031467020064E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.j, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fn, i64 noundef %.sroa.10.0.copyload.i.i.i.i), !alias.scope !1116, !noalias !1097
  br label %bb.bo

bb.bl:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i"
  %i.fo = inttoptr i64 %.sroa.10.0.copyload.i.i.i.i to ptr ; 2 uses
  call fastcc void @"_ZN194_$LT$xtask..bench..workload.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..bench..workload..BenchWorkload$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$11visit_bytes17ha7d0de8a52fee396E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.j, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fo, i64 noundef %.sroa.14.0.copyload.i.i.i.i), !noalias !1120
  %i.fp = icmp eq i64 %.sroa.51.0.copyload.i.i.i.i, 0
  br i1 %i.fp, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17he651706562d3213dE.exit.i.i.i.i.i", label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fo, i64 noundef %.sroa.51.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !1123
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17he651706562d3213dE.exit.i.i.i.i.i"

bb.bn:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i"
  %i.fq = inttoptr i64 %.sroa.51.0.copyload.i.i.i.i to ptr
  call fastcc void @"_ZN194_$LT$xtask..bench..workload.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..bench..workload..BenchWorkload$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$11visit_bytes17ha7d0de8a52fee396E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.j, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fq, i64 noundef %.sroa.10.0.copyload.i.i.i.i), !alias.scope !1125, !noalias !1097
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bk, %bb.bh, %bb.bg
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.k)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17he651706562d3213dE.exit.i.i.i.i.i" unwind label %.loopexit.i.i, !noalias !1070

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17he651706562d3213dE.exit.i.i.i.i.i": ; preds = %bb.bo, %bb.bm, %bb.bl, %bb.bj, %bb.bi, %.noexc.i.i36
  %i.fr = load i8, ptr %i.j, align 8, !range !610, !noalias !1085, !noundef !8
  %i.fs = trunc nuw i8 %i.fr to i1
  br i1 %i.fs, label %bb.bp, label %bb.bq

.body.i.i:                                        ; preds = %bb.de, %bb.dd, %.loopexit.split-lp.i.i, %.loopexit.i.i
  %.sroa.14424.0922.i.i = phi ptr [ %.sroa.14424.0924.i.i, %.loopexit.split-lp.i.i ], [ %.sroa.14424.0.lcssa.i.i, %bb.de ], [ %.sroa.14424.0.lcssa.i.i, %bb.dd ], [ %.sroa.14424.01066.i.i, %.loopexit.i.i ] ; 2 uses
  %.sroa.0419.0886.i.i = phi i64 [ %.sroa.0419.0888.i.i, %.loopexit.split-lp.i.i ], [ %.sroa.0419.0.lcssa.i.i, %bb.de ], [ %.sroa.0419.0.lcssa.i.i, %bb.dd ], [ %.sroa.0419.01067.lcssa1476.i.i, %.loopexit.i.i ] ; 2 uses
  %.sroa.14.0826.i.i = phi ptr [ %.sroa.14.0828.i.i, %.loopexit.split-lp.i.i ], [ %.sroa.14.0.lcssa.i.i, %bb.de ], [ %.sroa.14.0.lcssa.i.i, %bb.dd ], [ %.sroa.14.01069.i.i, %.loopexit.i.i ] ; 2 uses
  %.sroa.0414.0789.i.i = phi i64 [ %.sroa.0414.0791.i.i, %.loopexit.split-lp.i.i ], [ %.sroa.0414.0.lcssa.i.i, %bb.de ], [ 0, %bb.dd ], [ %.sroa.0414.01070.lcssa1557.i.i, %.loopexit.i.i ] ; 2 uses
  %i.ft = phi i64 [ %i.fv, %.loopexit.split-lp.i.i ], [ %.lcssa6761992.i.i, %bb.de ], [ %.lcssa6761992.i.i, %bb.dd ], [ %.lcssa1639.i.i, %.loopexit.i.i ]
  %i.fu = phi i64 [ %i.fw, %.loopexit.split-lp.i.i ], [ %.lcssa649.i.i, %bb.de ], [ %.lcssa649.i.i, %bb.dd ], [ %.lcssa1667.i.i, %.loopexit.i.i ] ; 2 uses
  %.sroa.0204.1.i.i = phi i8 [ 1, %.loopexit.split-lp.i.i ], [ %.sroa.0204.5.i.i, %bb.de ], [ %.sroa.0204.5.i.i, %bb.dd ], [ 1, %.loopexit.i.i ] ; 2 uses
  %.sroa.0206.1.i.i = phi i8 [ 1, %.loopexit.split-lp.i.i ], [ %.sroa.0206.5.i.i, %bb.de ], [ %.sroa.0206.5.i.i, %bb.dd ], [ 1, %.loopexit.i.i ] ; 2 uses
  %.sroa.0208.1.i.i = phi i8 [ 1, %.loopexit.split-lp.i.i ], [ %.sroa.0208.5.i.i, %bb.de ], [ %.sroa.0208.5.i.i, %bb.dd ], [ 1, %.loopexit.i.i ] ; 2 uses
  %.sroa.0210.1.i.i = phi i8 [ 1, %.loopexit.split-lp.i.i ], [ %.sroa.0210.5.i.i, %bb.de ], [ %.sroa.0210.5.i.i, %bb.dd ], [ 1, %.loopexit.i.i ] ; 2 uses
  %.sroa.0212.1.i.i = phi i8 [ 1, %.loopexit.split-lp.i.i ], [ 0, %bb.de ], [ 0, %bb.dd ], [ 1, %.loopexit.i.i ] ; 2 uses
  %.pn264.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ], [ %.pn256.i.i, %bb.de ], [ %.pn256.i.i, %bb.dd ], [ %lpad.loopexit.i.i, %.loopexit.i.i ] ; 2 uses
  %.not266.i.i = icmp eq i64 %i.ft, -9223372036854775808
  br i1 %.not266.i.i, label %.body361.i.i, label %.thread.i.i

.loopexit.i.i:                                    ; preds = %_ZN10serde_core2de9MapAccess10next_value17h975426f65c3e33bbE.exit.i337.i.i, %_ZN10serde_core2de9MapAccess10next_value17h975426f65c3e33bbE.exit.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h1eb60ac19458ce58E.exit.i320.i.i, %_ZN10serde_core2de9MapAccess10next_value17h6ab002b61cae4ecaE.exit.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17hbaa51ab9d67a5e84E.exit.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17heeaaeee1592a39d6E.exit.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h1eb60ac19458ce58E.exit.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h518d272d6b4d7912E.exit.i.i.i, %bb.bo, %.noexc9.i.i.i.i.i
  %.lcssa1667.i.i = phi i64 [ %i.ez, %.noexc9.i.i.i.i.i ], [ %i.ez, %bb.bo ], [ %i.ez, %_ZN10serde_core2de9MapAccess10next_value17h518d272d6b4d7912E.exit.i.i.i ], [ %i.ez, %_ZN10serde_core2de9MapAccess10next_value17h1eb60ac19458ce58E.exit.i.i.i ], [ %i.ez, %_ZN10serde_core2de9MapAccess10next_value17heeaaeee1592a39d6E.exit.i.i.i ], [ %i.ez, %_ZN10serde_core2de9MapAccess10next_value17hbaa51ab9d67a5e84E.exit.i.i.i ], [ 0, %_ZN10serde_core2de9MapAccess10next_value17h6ab002b61cae4ecaE.exit.i.i.i ], [ %i.ez, %_ZN10serde_core2de9MapAccess10next_value17h1eb60ac19458ce58E.exit.i320.i.i ], [ %i.ez, %_ZN10serde_core2de9MapAccess10next_value17h975426f65c3e33bbE.exit.i.i.i ], [ %i.ez, %_ZN10serde_core2de9MapAccess10next_value17h975426f65c3e33bbE.exit.i337.i.i ]
  %.lcssa1639.i.i = phi i64 [ %i.fa, %.noexc9.i.i.i.i.i ], [ %i.fa, %bb.bo ], [ %i.fa, %_ZN10serde_core2de9MapAccess10next_value17h518d272d6b4d7912E.exit.i.i.i ], [ %i.fa, %_ZN10serde_core2de9MapAccess10next_value17h1eb60ac19458ce58E.exit.i.i.i ], [ %i.fa, %_ZN10serde_core2de9MapAccess10next_value17heeaaeee1592a39d6E.exit.i.i.i ], [ %i.fa, %_ZN10serde_core2de9MapAccess10next_value17hbaa51ab9d67a5e84E.exit.i.i.i ], [ %i.fa, %_ZN10serde_core2de9MapAccess10next_value17h6ab002b61cae4ecaE.exit.i.i.i ], [ %i.fa, %_ZN10serde_core2de9MapAccess10next_value17h1eb60ac19458ce58E.exit.i320.i.i ], [ %i.fa, %_ZN10serde_core2de9MapAccess10next_value17h975426f65c3e33bbE.exit.i.i.i ], [ -9223372036854775808, %_ZN10serde_core2de9MapAccess10next_value17h975426f65c3e33bbE.exit.i337.i.i ]
  %.sroa.0414.01070.lcssa1557.i.i = phi i64 [ %.sroa.0414.01070.i.i, %.noexc9.i.i.i.i.i ], [ %.sroa.0414.01070.i.i, %bb.bo ], [ %.sroa.0414.01070.i.i, %_ZN10serde_core2de9MapAccess10next_value17h518d272d6b4d7912E.exit.i.i.i ], [ -9223372036854775808, %_ZN10serde_core2de9MapAccess10next_value17h1eb60ac19458ce58E.exit.i.i.i ], [ %.sroa.0414.01070.i.i, %_ZN10serde_core2de9MapAccess10next_value17heeaaeee1592a39d6E.exit.i.i.i ], [ %.sroa.0414.01070.i.i, %_ZN10serde_core2de9MapAccess10next_value17hbaa51ab9d67a5e84E.exit.i.i.i ], [ %.sroa.0414.01070.i.i, %_ZN10serde_core2de9MapAccess10next_value17h6ab002b61cae4ecaE.exit.i.i.i ], [ %.sroa.0414.01070.i.i, %_ZN10serde_core2de9MapAccess10next_value17h1eb60ac19458ce58E.exit.i320.i.i ], [ %.sroa.0414.01070.i.i, %_ZN10serde_core2de9MapAccess10next_value17h975426f65c3e33bbE.exit.i.i.i ], [ %.sroa.0414.01070.i.i, %_ZN10serde_core2de9MapAccess10next_value17h975426f65c3e33bbE.exit.i337.i.i ]
  %.sroa.0419.01067.lcssa1476.i.i = phi i64 [ %.sroa.0419.01067.i.i, %.noexc9.i.i.i.i.i ], [ %.sroa.0419.01067.i.i, %bb.bo ], [ %.sroa.0419.01067.i.i, %_ZN10serde_core2de9MapAccess10next_value17h518d272d6b4d7912E.exit.i.i.i ], [ %.sroa.0419.01067.i.i, %_ZN10serde_core2de9MapAccess10next_value17h1eb60ac19458ce58E.exit.i.i.i ], [ %.sroa.0419.01067.i.i, %_ZN10serde_core2de9MapAccess10next_value17heeaaeee1592a39d6E.exit.i.i.i ], [ %.sroa.0419.01067.i.i, %_ZN10serde_core2de9MapAccess10next_value17hbaa51ab9d67a5e84E.exit.i.i.i ], [ %.sroa.0419.01067.i.i, %_ZN10serde_core2de9MapAccess10next_value17h6ab002b61cae4ecaE.exit.i.i.i ], [ -9223372036854775808, %_ZN10serde_core2de9MapAccess10next_value17h1eb60ac19458ce58E.exit.i320.i.i ], [ %.sroa.0419.01067.i.i, %_ZN10serde_core2de9MapAccess10next_value17h975426f65c3e33bbE.exit.i.i.i ], [ %.sroa.0419.01067.i.i, %_ZN10serde_core2de9MapAccess10next_value17h975426f65c3e33bbE.exit.i337.i.i ]
  %.lcssa1367.i.i = phi i64 [ %i.fd, %.noexc9.i.i.i.i.i ], [ %i.fd, %bb.bo ], [ %i.fd, %_ZN10serde_core2de9MapAccess10next_value17h518d272d6b4d7912E.exit.i.i.i ], [ %i.fd, %_ZN10serde_core2de9MapAccess10next_value17h1eb60ac19458ce58E.exit.i.i.i ], [ %i.fd, %_ZN10serde_core2de9MapAccess10next_value17heeaaeee1592a39d6E.exit.i.i.i ], [ %i.fd, %_ZN10serde_core2de9MapAccess10next_value17hbaa51ab9d67a5e84E.exit.i.i.i ], [ %i.fd, %_ZN10serde_core2de9MapAccess10next_value17h6ab002b61cae4ecaE.exit.i.i.i ], [ %i.fd, %_ZN10serde_core2de9MapAccess10next_value17h1eb60ac19458ce58E.exit.i320.i.i ], [ -9223372036854775808, %_ZN10serde_core2de9MapAccess10next_value17h975426f65c3e33bbE.exit.i.i.i ], [ %i.fd, %_ZN10serde_core2de9MapAccess10next_value17h975426f65c3e33bbE.exit.i337.i.i ]
  %.lcssa1311.i.i = phi i64 [ %i.ff, %.noexc9.i.i.i.i.i ], [ %i.ff, %bb.bo ], [ %i.ff, %_ZN10serde_core2de9MapAccess10next_value17h518d272d6b4d7912E.exit.i.i.i ], [ %i.ff, %_ZN10serde_core2de9MapAccess10next_value17h1eb60ac19458ce58E.exit.i.i.i ], [ %i.ff, %_ZN10serde_core2de9MapAccess10next_value17heeaaeee1592a39d6E.exit.i.i.i ], [ -9223372036854775808, %_ZN10serde_core2de9MapAccess10next_value17hbaa51ab9d67a5e84E.exit.i.i.i ], [ %i.ff, %_ZN10serde_core2de9MapAccess10next_value17h6ab002b61cae4ecaE.exit.i.i.i ], [ %i.ff, %_ZN10serde_core2de9MapAccess10next_value17h1eb60ac19458ce58E.exit.i320.i.i ], [ %i.ff, %_ZN10serde_core2de9MapAccess10next_value17h975426f65c3e33bbE.exit.i.i.i ], [ %i.ff, %_ZN10serde_core2de9MapAccess10next_value17h975426f65c3e33bbE.exit.i337.i.i ]
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  store ptr %i.fg, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !1068
  store i64 %i.fh, ptr %i.eg, align 8, !noalias !1068
  store ptr %i.ey, ptr %.sroa.6132.0..sroa_idx133.i.i, align 8, !noalias !1070
  store i64 %.sroa.5230.0.copyload1135.i.i, ptr %.sroa.7135.0..sroa_idx136.i.i, align 8, !noalias !1070
  store ptr %i.ex, ptr %.sroa.6113.0..sroa_idx114.i.i, align 8, !noalias !1070
  store i64 %.sroa.5227.0.copyload1191.i.i, ptr %.sroa.7116.0..sroa_idx117.i.i, align 8, !noalias !1070
  store ptr %.sroa.0220.0.copyload1219.i.i, ptr %.sroa.672.0..sroa_idx73.i.i, align 8, !noalias !1070
  store ptr %i.ew, ptr %.sroa.664.0..sroa_idx65.i.i, align 8, !noalias !1070
  store i64 %.sroa.5219.0.copyload1275.i.i, ptr %.sroa.767.0..sroa_idx68.i.i, align 8, !noalias !1070
  store i64 %i.fc, ptr %i.v, align 8, !noalias !1070
  store i64 %.lcssa1367.i.i, ptr %i.w, align 8, !noalias !1070
  store i64 %i.fe, ptr %i.x, align 8, !noalias !1070
  store i64 %.lcssa1311.i.i, ptr %i.y, align 8, !noalias !1070
  br label %.body.i.i

.loopexit.split-lp.i.i:                           ; preds = %.invoke550, %.invoke, %bb.da, %bb.cy, %bb.cw, %bb.cq, %bb.cl, %bb.cj, %bb.ca
  %.sroa.14424.0924.i.i = phi ptr [ %.sroa.14424.01066.i.i, %bb.cy ], [ %.sroa.14424.0.lcssa1978.i.i, %bb.da ], [ %.sroa.14424.01066.i.i, %bb.cl ], [ %.sroa.14424.01066.i.i, %bb.cj ], [ %.sroa.14424.01066.i.i, %bb.cq ], [ %.sroa.14424.01066.i.i, %.invoke550 ], [ %.sroa.14424.01066.i.i, %bb.cw ], [ %.sroa.14424.01066.i.i, %.invoke ], [ %.sroa.14424.01066.i.i, %bb.ca ]
  %.sroa.0419.0888.i.i = phi i64 [ %.sroa.0419.01067.i.i, %bb.cy ], [ %.sroa.0419.0.lcssa1981.i.i, %bb.da ], [ %.sroa.0419.01067.i.i, %bb.cl ], [ %.sroa.0419.01067.i.i, %bb.cj ], [ -9223372036854775808, %bb.cq ], [ %.sroa.0419.01067.i.i, %.invoke550 ], [ %.sroa.0419.01067.i.i, %bb.cw ], [ %.sroa.0419.01067.i.i, %.invoke ], [ %.sroa.0419.01067.i.i, %bb.ca ]
  %.sroa.14.0828.i.i = phi ptr [ %.sroa.14.01069.i.i, %bb.cy ], [ %.sroa.14.0.lcssa1984.i.i, %bb.da ], [ %.sroa.14.01069.i.i, %bb.cl ], [ %.sroa.14.01069.i.i, %bb.cj ], [ %.sroa.14.01069.i.i, %bb.cq ], [ %.sroa.14.01069.i.i, %.invoke550 ], [ %.sroa.14.01069.i.i, %bb.cw ], [ %.sroa.14.01069.i.i, %.invoke ], [ %.sroa.14.01069.i.i, %bb.ca ]
  %.sroa.0414.0791.i.i = phi i64 [ %.sroa.0414.01070.i.i, %bb.cy ], [ -9223372036854775808, %bb.da ], [ %.sroa.0414.01070.i.i, %bb.cl ], [ %.sroa.0414.01070.i.i, %bb.cj ], [ %.sroa.0414.01070.i.i, %bb.cq ], [ %.sroa.0414.01070.i.i, %.invoke550 ], [ %.sroa.0414.01070.i.i, %bb.cw ], [ %.sroa.0414.01070.i.i, %.invoke ], [ -9223372036854775808, %bb.ca ]
  %i.fv = phi i64 [ -9223372036854775808, %bb.cy ], [ %.lcssa6761991.i.i, %bb.da ], [ %i.fa, %bb.cl ], [ %i.fa, %bb.cj ], [ %i.fa, %bb.cq ], [ %i.fa, %.invoke550 ], [ %i.fa, %bb.cw ], [ %i.fa, %.invoke ], [ %i.fa, %bb.ca ]
  %i.fw = phi i64 [ %i.ez, %bb.cy ], [ %.lcssa6491996.i.i, %bb.da ], [ 0, %bb.cl ], [ 1, %bb.cj ], [ %i.ez, %bb.cq ], [ %i.ez, %.invoke550 ], [ %i.ez, %bb.cw ], [ %i.ez, %.invoke ], [ %i.ez, %bb.ca ]
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.bp:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17he651706562d3213dE.exit.i.i.i.i.i"
  store ptr %i.fg, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !1068
  store i64 %i.fh, ptr %i.eg, align 8, !noalias !1068
  store ptr %i.ey, ptr %.sroa.6132.0..sroa_idx133.i.i, align 8, !noalias !1070
  store i64 %.sroa.5230.0.copyload1135.i.i, ptr %.sroa.7135.0..sroa_idx136.i.i, align 8, !noalias !1070
  store ptr %i.ex, ptr %.sroa.6113.0..sroa_idx114.i.i, align 8, !noalias !1070
  store i64 %.sroa.5227.0.copyload1191.i.i, ptr %.sroa.7116.0..sroa_idx117.i.i, align 8, !noalias !1070
  store ptr %.sroa.0220.0.copyload1219.i.i, ptr %.sroa.672.0..sroa_idx73.i.i, align 8, !noalias !1070
  store ptr %i.ew, ptr %.sroa.664.0..sroa_idx65.i.i, align 8, !noalias !1070
  store i64 %.sroa.5219.0.copyload1275.i.i, ptr %.sroa.767.0..sroa_idx68.i.i, align 8, !noalias !1070
  store i64 %i.fc, ptr %i.v, align 8, !noalias !1070
  store i64 %i.fd, ptr %i.w, align 8, !noalias !1070
  store i64 %i.fe, ptr %i.x, align 8, !noalias !1070
  store i64 %i.ff, ptr %i.y, align 8, !noalias !1070
  %i.fx = load ptr, ptr %i.ej, align 8, !noalias !1085, !nonnull !8, !align !461, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1085
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1085
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit349.i.i"

bb.bq:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17he651706562d3213dE.exit.i.i.i.i.i"
  %i.fy = load i8, ptr %i.ei, align 1, !range !1129, !noalias !1085, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1085
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1085
  switch i8 %i.fy, label %default.unreachable [
    i8 7, label %bb.by
    i8 0, label %bb.br
    i8 1, label %bb.bs
    i8 2, label %bb.bt
    i8 3, label %bb.bu
    i8 4, label %bb.bv
    i8 5, label %bb.bw
    i8 6, label %bb.bx
  ]

.thread501.i.i:                                   ; preds = %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i"
  %.lcssa591 = phi ptr [ %i.ee, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ], [ %i.fg, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i" ]
  %i.fz = phi i64 [ %i.eu, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ], [ %i.ev, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i" ]
  %.lcssa2643.sink.i.i = phi ptr [ %i.gi, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ], [ %i.ey, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i" ]
  %.sroa.5230.0.copyload1134.lcssa.sink.i.i = phi i64 [ %.sroa.5230.0.copyload1134.i.i, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ], [ %.sroa.5230.0.copyload1135.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i" ]
  %.lcssa2644.sink.i.i = phi ptr [ %i.gh, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ], [ %i.ex, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i" ]
  %.sroa.5227.0.copyload1190.lcssa.sink.i.i = phi i64 [ %.sroa.5227.0.copyload1190.i.i, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ], [ %.sroa.5227.0.copyload1191.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i" ]
  %.sroa.0220.0.copyload1218.lcssa.sink.i.i = phi ptr [ %.sroa.0220.0.copyload1218.i.i, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ], [ %.sroa.0220.0.copyload1219.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i" ]
  %.lcssa2645.sink.i.i = phi ptr [ %i.gg, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ], [ %i.ew, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i" ]
  %.sroa.5219.0.copyload1274.lcssa.sink.i.i = phi i64 [ %.sroa.5219.0.copyload1274.i.i, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ], [ %.sroa.5219.0.copyload1275.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i" ]
  %i.ga = phi i64 [ %i.gj, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ], [ %i.ff, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i" ] ; 2 uses
  %.lcssa1010.i.i = phi i64 [ %i.gk, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ], [ %i.fe, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i" ]
  %i.gb = phi i64 [ %i.gl, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ], [ %i.fd, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i" ] ; 2 uses
  %.lcssa954.i.i = phi i64 [ %i.gm, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ], [ %i.fc, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i" ]
  %.sroa.19425.0.lcssa.i.i = phi i64 [ %.sroa.19425.1.i.i, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ], [ %.sroa.19425.01065.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i" ]
  %.sroa.14424.0.lcssa.i.i = phi ptr [ %.sroa.14424.1.i.i, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ], [ %.sroa.14424.01066.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i" ] ; 6 uses
  %.sroa.0419.0.lcssa.i.i = phi i64 [ %.sroa.0419.1.i.i, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ], [ %.sroa.0419.01067.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i" ] ; 7 uses
  %.sroa.19.0.lcssa.i.i = phi i64 [ %.sroa.19.1.i.i, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ], [ %.sroa.19.01068.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i" ]
  %.sroa.14.0.lcssa.i.i = phi ptr [ %.sroa.14.1.i.i, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ], [ %.sroa.14.01069.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i" ] ; 10 uses
  %.sroa.0414.0.lcssa.i.i = phi i64 [ %.sroa.0414.1.i.i, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ], [ %.sroa.0414.01070.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i" ] ; 8 uses
  %.sroa.9124.0433.lcssa.i.i = phi i64 [ %.sroa.9124.0432.i.i, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ], [ %.sroa.9124.04331071.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i" ] ; 4 uses
  %.sroa.7121.0427.lcssa.i.i = phi ptr [ %.sroa.7121.0426.i.i, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ], [ %.sroa.7121.04271072.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i" ] ; 4 uses
  %.lcssa676.i.i = phi i64 [ %i.gn, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ], [ %i.fa, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i" ] ; 7 uses
  %.lcssa649.i.i = phi i64 [ %i.go, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ], [ %i.ez, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i" ] ; 6 uses
  %.sroa.7.0.lcssa.i.i = phi i16 [ %.sroa.7.1.i.i, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ], [ %.sroa.7.01073.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i" ]
  %.sroa.0.0.lcssa.i.i = phi i16 [ %.sroa.0.1.i.i, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hb810867c9f329e2fE.exit.i.i" ], [ %.sroa.0.01074.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i" ]
  store ptr %.lcssa591, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !1068
  store i64 %i.fz, ptr %i.eg, align 8, !noalias !1068
  store ptr %.lcssa2643.sink.i.i, ptr %.sroa.6132.0..sroa_idx133.i.i, align 8, !noalias !1070
  store i64 %.sroa.5230.0.copyload1134.lcssa.sink.i.i, ptr %.sroa.7135.0..sroa_idx136.i.i, align 8, !noalias !1070
  store ptr %.lcssa2644.sink.i.i, ptr %.sroa.6113.0..sroa_idx114.i.i, align 8, !noalias !1070
  store i64 %.sroa.5227.0.copyload1190.lcssa.sink.i.i, ptr %.sroa.7116.0..sroa_idx117.i.i, align 8, !noalias !1070
  store ptr %.sroa.0220.0.copyload1218.lcssa.sink.i.i, ptr %.sroa.672.0..sroa_idx73.i.i, align 8, !noalias !1070
  store ptr %.lcssa2645.sink.i.i, ptr %.sroa.664.0..sroa_idx65.i.i, align 8, !noalias !1070
  store i64 %.sroa.5219.0.copyload1274.lcssa.sink.i.i, ptr %.sroa.767.0..sroa_idx68.i.i, align 8, !noalias !1070
  store i64 %.lcssa954.i.i, ptr %i.v, align 8, !noalias !1070
  store i64 %i.gb, ptr %i.w, align 8, !noalias !1070
end_hunk_0
begin_hunk_1_@"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_struct17he427343d900c9573E":bb.a
          to label %.thread unwind label %.body.thread11

bb.ak:                                            ; preds = %._crit_edge, %bb.ab, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hef95df310627cd76E.exit.i.i.i117.i.i"
  %.sroa.6.0.copyload = phi i64 [ %.sroa.6.0.copyload.pre, %._crit_edge ], [ %.sroa.6.0.copyload.pre474, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hef95df310627cd76E.exit.i.i.i117.i.i" ], [ %i.bz, %bb.ab ] ; 2 uses
  %.sroa.4.0.copyload = phi ptr [ %i.bj, %._crit_edge ], [ %i.by, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hef95df310627cd76E.exit.i.i.i117.i.i" ], [ %i.by, %bb.ab ] ; 2 uses
  %.sroa.7142.0.ph.i.i = phi ptr [ undef, %._crit_edge ], [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hef95df310627cd76E.exit.i.i.i117.i.i" ], [ %i.cd, %bb.ab ]
  %.sroa.0141.0.ph.i.i = phi i64 [ -9223372036854775808, %._crit_edge ], [ -9223372036854775808, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hef95df310627cd76E.exit.i.i.i117.i.i" ], [ %i.ca, %bb.ab ] ; 2 uses
  %.sroa.10143.0.ph.i.i = phi i64 [ undef, %._crit_edge ], [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hef95df310627cd76E.exit.i.i.i117.i.i" ], [ %.sroa.10143.0.copyload.i.i, %bb.ab ]
  %.not94.i.i = icmp eq i64 %.sroa.0141.0.ph.i.i, -9223372036854775808 ; 3 uses
  %..sroa.589.0.copyload.i.i = select i1 %.not94.i.i, ptr inttoptr (i64 8 to ptr), ptr %.sroa.7142.0.ph.i.i
  %..i.i = select i1 %.not94.i.i, i64 0, i64 %.sroa.0141.0.ph.i.i
  %..sroa.690.0.copyload.i.i = select i1 %.not94.i.i, i64 0, i64 %.sroa.10143.0.ph.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.16.i, ptr noundef nonnull align 8 dereferenceable(96) %i.ae, i64 96, i1 false), !noalias !1267
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.23.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !noalias !1267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1294
  store i64 %i.aq, ptr %i.af, align 8, !noalias !1267
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.at, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1267
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %.sroa.10132.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1267
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.16.i, i64 96, i1 false), !noalias !1267
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 120
  store i64 %..i.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !1267
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 128
  store ptr %..sroa.589.0.copyload.i.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !1267
  %.sroa.932.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 136
  store i64 %..sroa.690.0.copyload.i.i, ptr %.sroa.932.0..sroa_idx.i, align 8, !noalias !1267
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 144
  store i64 %.sroa.0136.0.i.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !1267
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 152
  store ptr %.sroa.8.0.i.i, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !1267
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 160
  store i64 %.sroa.11.0.i.i, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !1267
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.23.i, i64 24, i1 false), !noalias !1267
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h7b44a33c1511d1d6E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.ag)
          to label %.noexc9.i unwind label %bb.am, !noalias !1267

.noexc9.i:                                        ; preds = %bb.ak
  %i.ch = icmp eq ptr %i.bj, %.sroa.4.0.copyload
  br i1 %i.ch, label %bb.ao, label %bb.al, !prof !17

bb.al:                                            ; preds = %.noexc9.i
  %i.ci = ptrtoint ptr %.sroa.4.0.copyload to i64
  %i.cj = ptrtoint ptr %i.bj to i64
  %i.ck = sub nuw i64 %i.cj, %i.ci
  %i.cl = lshr exact i64 %i.ck, 5
  %i.cm = add i64 %i.cl, %.sroa.6.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1377
  store i64 %.sroa.6.0.copyload, ptr %i.t, align 8, !noalias !1377
  %i.cn = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17hdb035e64924287edE(i64 noundef %i.cm, ptr noundef nonnull align 1 %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @697)
          to label %bb.an unwind label %bb.am, !noalias !1267

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$xtask..test..workload..TestWorkload$GT$17h678d4632d7b7cad4E"(ptr noalias noundef align 8 dereferenceable(192) %i.af) #55
          to label %.body.thread.thread unwind label %bb.ap, !noalias !1267

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1377
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cn, ptr %i.cp, align 8, !alias.scope !1264, !noalias !1376
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !1264, !noalias !1376
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$xtask..test..workload..TestWorkload$GT$17h678d4632d7b7cad4E"(ptr noalias noundef align 8 dereferenceable(192) %i.af)
          to label %.thread.sink.split unwind label %.body.thread11

bb.ao:                                            ; preds = %.noexc9.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(192) %i.af, i64 192, i1 false), !noalias !1376
  br label %.thread.sink.split

bb.ap:                                            ; preds = %.thread45.i, %bb.am
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !1267
  unreachable

.thread45.i:                                      ; preds = %.thread50.i, %bb.j, %bb.i
  %eh.lpad-body48.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.thread50.i ], [ %.pn98.i.i, %bb.j ], [ %.pn98.i.i, %bb.i ]
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h7b44a33c1511d1d6E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.ag)
          to label %.body.thread.thread unwind label %bb.ap, !noalias !1267

.thread.sink.split:                               ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !1267
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1267
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23.i)
  br label %bb.dw

bb.aq:                                            ; preds = %bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.01.0.copyload = load i64, ptr %i.cr, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.22.0.copyload = load ptr, ptr %.sroa.22.0..sroa_idx, align 8, !nonnull !8, !noundef !8 ; 4 uses
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.33.0.copyload = load i64, ptr %.sroa.33.0..sroa_idx, align 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1380)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.34.i)
  %i.cs = icmp ult i64 %.sroa.33.0.copyload, 144115188075855872
  tail call void @llvm.assume(i1 %i.cs)
  %.idx.i12 = shl nuw nsw i64 %.sroa.33.0.copyload, 6
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload, i64 %.idx.i12 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  store ptr %.sroa.22.0.copyload, ptr %i.cu, align 8, !noalias !1383
  %.sroa.440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 3 uses
  store ptr %.sroa.22.0.copyload, ptr %.sroa.440.0..sroa_idx.i, align 8, !noalias !1383
  %.sroa.541.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store i64 %.sroa.01.0.copyload, ptr %.sroa.541.0..sroa_idx.i, align 8, !noalias !1383
  %.sroa.642.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 2 uses
  store ptr %i.ct, ptr %.sroa.642.0..sroa_idx.i, align 8, !noalias !1383
  store i8 22, ptr %i.r, align 8, !noalias !1383
  %i.cv = getelementptr inbounds nuw i8, ptr %i.r, i64 64 ; 3 uses
  store i64 0, ptr %i.cv, align 8, !noalias !1383
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1383
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1385
  store i64 -9223372036854775808, ptr %i.q, align 8, !noalias !1385
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1385
  store i64 0, ptr %i.p, align 8, !noalias !1385
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1385
  store i64 -9223372036854775808, ptr %i.o, align 8, !noalias !1385
  %i.cw = icmp eq i64 %.sroa.33.0.copyload, 0
  br i1 %i.cw, label %.thread343.thread.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i"

.thread343.thread.i.i:                            ; preds = %bb.aq
  store i64 -9223372036854775808, ptr %i.o, align 8, !noalias !1385
  store i64 0, ptr %i.p, align 8, !noalias !1385
  br label %bb.cm

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i": ; preds = %bb.aq
  %.sroa.6.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  %.sroa.51.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.14.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.cx = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i266.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i.i267.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.5197.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.692.0..sroa_idx93.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 16 uses
  %.sroa.795.0..sroa_idx96.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 16 uses
  %.sroa.2.0..sroa_idx.i.i.i260.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.da = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %.sroa.4194.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.671.0..sroa_idx72.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 17 uses
  %.sroa.671.sroa.6.0..sroa.671.0..sroa_idx72.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %.sroa.5191.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.sroa.6192.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.2.0..sroa_idx.i.i.i253.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.5188.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.sroa.6189.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.645.0..sroa_idx46.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %.sroa.748.0..sroa_idx49.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i247.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sroa.5185.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %.sroa.6186.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i13 = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i": ; preds = %bb.br, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i"
  %i.db = phi ptr [ %i.ct, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i" ], [ %i.el, %bb.br ] ; 5 uses
  %.sroa.0193.0.copyload734.i.i = phi ptr [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i" ], [ %.sroa.0193.0.copyload733.i.i, %bb.br ] ; 22 uses
  %.sroa.5197.0.copyload712.i.i = phi i64 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i" ], [ %.sroa.5197.0.copyload711.i.i, %bb.br ] ; 21 uses
  %i.dc = phi ptr [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i" ], [ %i.em, %bb.br ] ; 21 uses
  %i.dd = phi ptr [ %.sroa.22.0.copyload, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i" ], [ %i.ek, %bb.br ] ; 4 uses
  %i.de = phi i64 [ 0, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i" ], [ %i.eq, %bb.br ] ; 28 uses
  %.sroa.0145.0.copyload303663.i.i = phi ptr [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i" ], [ %.sroa.0145.0.copyload302.i.i, %bb.br ] ; 6 uses
  %i.df = phi i64 [ -9223372036854775808, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i" ], [ %i.ep, %bb.br ] ; 29 uses
  %.sroa.782.0305662.i.i = phi ptr [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i" ], [ %.sroa.782.0304.i.i, %bb.br ] ; 6 uses
  %.sroa.9.0307661.i.i = phi i64 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i" ], [ %.sroa.9.0306.i.i, %bb.br ] ; 6 uses
  %.sroa.0289.0660.i.i = phi i64 [ -9223372036854775808, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i" ], [ %.sroa.0289.1.i.i, %bb.br ] ; 30 uses
  %.sroa.14.0659.i.i = phi ptr [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i" ], [ %.sroa.14.1.i.i, %bb.br ] ; 25 uses
  %.sroa.19.0658.i.i = phi i64 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i" ], [ %.sroa.19.1.i.i, %bb.br ] ; 6 uses
  %.sroa.0294.0657.i.i = phi i64 [ -9223372036854775807, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i" ], [ %.sroa.0294.1.i.i, %bb.br ] ; 31 uses
  %.sroa.13.0656.i.i = phi ptr [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i" ], [ %.sroa.13.1.i.i, %bb.br ] ; 25 uses
  %.sroa.19301.0655.i.i = phi i64 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i" ], [ %.sroa.19301.1.i.i, %bb.br ] ; 6 uses
  %i.dg = phi i64 [ -9223372036854775808, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i" ], [ %i.eo, %bb.br ] ; 21 uses
  %i.dh = phi i64 [ 0, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i" ], [ %i.en, %bb.br ] ; 22 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 64 ; 6 uses
  store ptr %i.di, ptr %.sroa.440.0..sroa_idx.i, align 8, !noalias !1383
  %.sroa.0.0.copyload11.i.i.i.i.i = load i8, ptr %i.dd, align 8, !noalias !1389 ; 3 uses
  %.not.i.i.i.i.i14 = icmp eq i8 %.sroa.0.0.copyload11.i.i.i.i.i, 22
  br i1 %.not.i.i.i.i.i14, label %.thread343.i.i, label %bb.ar

bb.ar:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i"
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  %i.dj = load i64, ptr %i.cv, align 8, !noalias !1383, !noundef !8
  %i.dk = add i64 %i.dj, 1
  store i64 %i.dk, ptr %i.cv, align 8, !noalias !1383
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1400
  store i8 %.sroa.0.0.copyload11.i.i.i.i.i, ptr %i.i, align 8, !noalias !1400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6.0..sroa_idx2.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i.i.i.i, i64 31, i1 false), !noalias !1400
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.dl, i64 32, i1 false), !noalias !1400
  %i.dm = load i8, ptr %i.r, align 8, !range !890, !noalias !1383, !noundef !8
  %i.dn = icmp eq i8 %i.dm, 22
  br i1 %i.dn, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i", label %bb.as

bb.as:                                            ; preds = %bb.ar
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.r)
          to label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i" unwind label %bb.bc, !noalias !1383

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i": ; preds = %bb.as, %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !1383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1400
  %.sroa.4.0.copyload.i.i.i.i = load i8, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i, align 1, !noalias !1400
  %.sroa.51.0.copyload.i.i.i.i = load i64, ptr %.sroa.51.0..sroa_idx.i.i.i.i, align 8, !noalias !1400 ; 7 uses
  %.sroa.10.0.copyload.i.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i.i, align 8, !noalias !1400 ; 4 uses
  %.sroa.14.0.copyload.i.i.i.i = load i64, ptr %.sroa.14.0..sroa_idx.i.i.i.i, align 8, !noalias !1400 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1401)
  call void @llvm.experimental.noalias.scope.decl(metadata !1404)
  call void @llvm.experimental.noalias.scope.decl(metadata !1407)
  switch i8 %.sroa.0.0.copyload11.i.i.i.i.i, label %.noexc9.i.i.i.i.i [
    i8 1, label %bb.at
    i8 4, label %bb.au
    i8 12, label %bb.av
    i8 13, label %bb.ax
    i8 14, label %bb.ay
    i8 15, label %bb.ba
  ], !prof !1095

.noexc9.i.i.i.i.i:                                ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i"
  %i.do = invoke fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content28ContentDeserializer$LT$E$GT$12invalid_type17hbef5b53211e707e3E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.i, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @50)
          to label %.noexc.i.i27 unwind label %.loopexit.i.i, !noalias !1385

.noexc.i.i27:                                     ; preds = %.noexc9.i.i.i.i.i
  store ptr %i.do, ptr %i.cy, align 8, !alias.scope !1410, !noalias !1411
  store i8 1, ptr %i.g, align 8, !alias.scope !1410, !noalias !1411
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hae810dbb8464e760E.exit.i.i.i.i.i"

bb.at:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i"
  %i.dp = call i8 @llvm.umin.i8(i8 %.sroa.4.0.copyload.i.i.i.i, i8 5)
  store i8 %i.dp, ptr %i.cx, align 1, !alias.scope !1415, !noalias !1411
  store i8 0, ptr %i.g, align 8, !alias.scope !1415, !noalias !1411
  br label %bb.bb

bb.au:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i"
  %.sink1.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.51.0.copyload.i.i.i.i, i64 5)
  %.sink.i.i.i.i.i.i.i.i.i = trunc nuw nsw i64 %.sink1.i.i.i.i.i.i.i.i.i to i8
  store i8 %.sink.i.i.i.i.i.i.i.i.i, ptr %i.cx, align 1, !alias.scope !1420, !noalias !1411
  store i8 0, ptr %i.g, align 8, !alias.scope !1420, !noalias !1411
  br label %bb.bb

bb.av:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i"
  %i.dq = inttoptr i64 %.sroa.10.0.copyload.i.i.i.i to ptr ; 2 uses
  call fastcc void @"_ZN191_$LT$xtask..test..workload.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..test..workload..TestWorkload$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h03ae4fb6d708641dE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dq, i64 noundef %.sroa.14.0.copyload.i.i.i.i), !noalias !1423
  %i.dr = icmp eq i64 %.sroa.51.0.copyload.i.i.i.i, 0
  br i1 %i.dr, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hae810dbb8464e760E.exit.i.i.i.i.i", label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dq, i64 noundef %.sroa.51.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !1426
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hae810dbb8464e760E.exit.i.i.i.i.i"

bb.ax:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i"
  %i.ds = inttoptr i64 %.sroa.51.0.copyload.i.i.i.i to ptr
  call fastcc void @"_ZN191_$LT$xtask..test..workload.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..test..workload..TestWorkload$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h03ae4fb6d708641dE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ds, i64 noundef %.sroa.10.0.copyload.i.i.i.i), !alias.scope !1430, !noalias !1411
  br label %bb.bb

bb.ay:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i"
  %i.dt = inttoptr i64 %.sroa.10.0.copyload.i.i.i.i to ptr ; 2 uses
  call fastcc void @"_ZN191_$LT$xtask..test..workload.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..test..workload..TestWorkload$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$11visit_bytes17h47d771b29ed8dd95E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dt, i64 noundef %.sroa.14.0.copyload.i.i.i.i), !noalias !1434
  %i.du = icmp eq i64 %.sroa.51.0.copyload.i.i.i.i, 0
  br i1 %i.du, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hae810dbb8464e760E.exit.i.i.i.i.i", label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dt, i64 noundef %.sroa.51.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !1437
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hae810dbb8464e760E.exit.i.i.i.i.i"

bb.ba:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i"
  %i.dv = inttoptr i64 %.sroa.51.0.copyload.i.i.i.i to ptr
  call fastcc void @"_ZN191_$LT$xtask..test..workload.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..test..workload..TestWorkload$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$11visit_bytes17h47d771b29ed8dd95E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dv, i64 noundef %.sroa.10.0.copyload.i.i.i.i), !alias.scope !1439, !noalias !1411
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.ax, %bb.au, %bb.at
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.i)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hae810dbb8464e760E.exit.i.i.i.i.i" unwind label %.loopexit.i.i, !noalias !1385

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hae810dbb8464e760E.exit.i.i.i.i.i": ; preds = %bb.bb, %bb.az, %bb.ay, %bb.aw, %bb.av, %.noexc.i.i27
  %i.dw = load i8, ptr %i.g, align 8, !range !610, !noalias !1400, !noundef !8
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %bb.be, label %bb.bf

bb.bc:                                            ; preds = %bb.as
  %i.dy = landingpad { ptr, i32 }
          cleanup
  store ptr %i.dc, ptr %.sroa.692.0..sroa_idx93.i.i, align 8, !noalias !1385
  store i64 %.sroa.5197.0.copyload712.i.i, ptr %.sroa.795.0..sroa_idx96.i.i, align 8, !noalias !1385
  store ptr %.sroa.0193.0.copyload734.i.i, ptr %.sroa.671.0..sroa_idx72.i.i, align 8, !noalias !1385
  store i64 %i.dg, ptr %i.o, align 8, !noalias !1385
  store i64 %i.dh, ptr %i.p, align 8, !noalias !1385
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !1383
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef align 8 dereferenceable(32) %i.i) #55
          to label %.body.i.i unwind label %bb.bd, !noalias !1400

bb.bd:                                            ; preds = %bb.bc
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !1400
  unreachable

.body.i.i:                                        ; preds = %bb.cq, %bb.cp, %bb.bx, %.loopexit.split-lp.i.i, %.loopexit.i.i, %bb.bc
  %.sroa.13.0586.i.i = phi ptr [ %.sroa.13.0656.i.i, %bb.bc ], [ %.sroa.13.0.lcssa.i.i, %bb.cq ], [ %.sroa.13.0656.i.i, %bb.bx ], [ %.sroa.13.0.lcssa.i.i, %bb.cp ], [ %.sroa.13.0656.i.i, %.loopexit.i.i ], [ %.sroa.13.0591.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %.sroa.0294.0558.i.i = phi i64 [ %.sroa.0294.0657.i.i, %bb.bc ], [ %.sroa.0294.0.lcssa.i.i, %bb.cq ], [ %.sroa.0294.0657.i.i, %bb.bx ], [ %.sroa.0294.0.lcssa.i.i, %bb.cp ], [ %.sroa.0294.0657.lcssa844.i.i, %.loopexit.i.i ], [ %.sroa.0294.0563.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %.sroa.14.0513.i.i = phi ptr [ %.sroa.14.0659.i.i, %bb.bc ], [ %.sroa.14.0.lcssa.i.i, %bb.cq ], [ %.sroa.14.0659.i.i, %bb.bx ], [ %.sroa.14.0.lcssa.i.i, %bb.cp ], [ %.sroa.14.0659.i.i, %.loopexit.i.i ], [ %.sroa.14.0515.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %.sroa.0289.0481.i.i = phi i64 [ %.sroa.0289.0660.i.i, %bb.bc ], [ %.sroa.0289.0.lcssa.i.i, %bb.cq ], [ %.sroa.0289.0660.i.i, %bb.bx ], [ 0, %bb.cp ], [ %.sroa.0289.0660.lcssa907.i.i, %.loopexit.i.i ], [ %.sroa.0289.0486.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %i.ea = phi i64 [ %i.df, %bb.bc ], [ %.lcssa397.i.i, %bb.cq ], [ %i.df, %bb.bx ], [ %.lcssa397.i.i, %bb.cp ], [ %.lcssa971.i.i, %.loopexit.i.i ], [ %i.ec, %.loopexit.split-lp.i.i ]
  %i.eb = phi i64 [ %i.de, %bb.bc ], [ %.lcssa356.i.i, %bb.cq ], [ %i.de, %bb.bx ], [ %.lcssa356.i.i, %bb.cp ], [ %.lcssa1014.i.i, %.loopexit.i.i ], [ %i.ed, %.loopexit.split-lp.i.i ] ; 2 uses
  %.sroa.0179.1.i.i = phi i8 [ 1, %bb.bc ], [ 0, %bb.cq ], [ 1, %bb.bx ], [ 0, %bb.cp ], [ 1, %.loopexit.i.i ], [ 1, %.loopexit.split-lp.i.i ] ; 2 uses
  %.pn.i.i15 = phi { ptr, i32 } [ %i.dy, %bb.bc ], [ %i.fp, %bb.cq ], [ %i.ex, %bb.bx ], [ %i.fp, %bb.cp ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %.not215.i.i = icmp eq i64 %i.ea, -9223372036854775808
  br i1 %.not215.i.i, label %bb.cu, label %.thread330.i.i

.loopexit.i.i:                                    ; preds = %_ZN10serde_core2de9MapAccess10next_value17h07a67c91af42049eE.exit.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h6ab002b61cae4ecaE.exit.i.i.i, %bb.by, %_ZN10serde_core2de9MapAccess10next_value17hba961c426d2f40e4E.exit.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h1eb60ac19458ce58E.exit.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h518d272d6b4d7912E.exit.i.i.i, %bb.bb, %.noexc9.i.i.i.i.i
  %.lcssa1014.i.i = phi i64 [ %i.de, %bb.by ], [ %i.de, %.noexc9.i.i.i.i.i ], [ %i.de, %bb.bb ], [ %i.de, %_ZN10serde_core2de9MapAccess10next_value17h518d272d6b4d7912E.exit.i.i.i ], [ %i.de, %_ZN10serde_core2de9MapAccess10next_value17h1eb60ac19458ce58E.exit.i.i.i ], [ %i.de, %_ZN10serde_core2de9MapAccess10next_value17hba961c426d2f40e4E.exit.i.i.i ], [ 0, %_ZN10serde_core2de9MapAccess10next_value17h6ab002b61cae4ecaE.exit.i.i.i ], [ %i.de, %_ZN10serde_core2de9MapAccess10next_value17h07a67c91af42049eE.exit.i.i.i ]
  %.lcssa971.i.i = phi i64 [ %i.df, %bb.by ], [ %i.df, %.noexc9.i.i.i.i.i ], [ %i.df, %bb.bb ], [ %i.df, %_ZN10serde_core2de9MapAccess10next_value17h518d272d6b4d7912E.exit.i.i.i ], [ %i.df, %_ZN10serde_core2de9MapAccess10next_value17h1eb60ac19458ce58E.exit.i.i.i ], [ %i.df, %_ZN10serde_core2de9MapAccess10next_value17hba961c426d2f40e4E.exit.i.i.i ], [ %i.df, %_ZN10serde_core2de9MapAccess10next_value17h6ab002b61cae4ecaE.exit.i.i.i ], [ -9223372036854775808, %_ZN10serde_core2de9MapAccess10next_value17h07a67c91af42049eE.exit.i.i.i ]
  %.sroa.0289.0660.lcssa907.i.i = phi i64 [ %.sroa.0289.0660.i.i, %bb.by ], [ %.sroa.0289.0660.i.i, %.noexc9.i.i.i.i.i ], [ %.sroa.0289.0660.i.i, %bb.bb ], [ %.sroa.0289.0660.i.i, %_ZN10serde_core2de9MapAccess10next_value17h518d272d6b4d7912E.exit.i.i.i ], [ -9223372036854775808, %_ZN10serde_core2de9MapAccess10next_value17h1eb60ac19458ce58E.exit.i.i.i ], [ %.sroa.0289.0660.i.i, %_ZN10serde_core2de9MapAccess10next_value17hba961c426d2f40e4E.exit.i.i.i ], [ %.sroa.0289.0660.i.i, %_ZN10serde_core2de9MapAccess10next_value17h6ab002b61cae4ecaE.exit.i.i.i ], [ %.sroa.0289.0660.i.i, %_ZN10serde_core2de9MapAccess10next_value17h07a67c91af42049eE.exit.i.i.i ]
  %.sroa.0294.0657.lcssa844.i.i = phi i64 [ -9223372036854775807, %bb.by ], [ %.sroa.0294.0657.i.i, %.noexc9.i.i.i.i.i ], [ %.sroa.0294.0657.i.i, %bb.bb ], [ %.sroa.0294.0657.i.i, %_ZN10serde_core2de9MapAccess10next_value17h518d272d6b4d7912E.exit.i.i.i ], [ %.sroa.0294.0657.i.i, %_ZN10serde_core2de9MapAccess10next_value17h1eb60ac19458ce58E.exit.i.i.i ], [ %.sroa.0294.0657.i.i, %_ZN10serde_core2de9MapAccess10next_value17hba961c426d2f40e4E.exit.i.i.i ], [ %.sroa.0294.0657.i.i, %_ZN10serde_core2de9MapAccess10next_value17h6ab002b61cae4ecaE.exit.i.i.i ], [ %.sroa.0294.0657.i.i, %_ZN10serde_core2de9MapAccess10next_value17h07a67c91af42049eE.exit.i.i.i ]
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  store ptr %i.dc, ptr %.sroa.692.0..sroa_idx93.i.i, align 8, !noalias !1385
  store i64 %.sroa.5197.0.copyload712.i.i, ptr %.sroa.795.0..sroa_idx96.i.i, align 8, !noalias !1385
  store ptr %.sroa.0193.0.copyload734.i.i, ptr %.sroa.671.0..sroa_idx72.i.i, align 8, !noalias !1385
  store i64 %i.dg, ptr %i.o, align 8, !noalias !1385
  store i64 %i.dh, ptr %i.p, align 8, !noalias !1385
  br label %.body.i.i

.loopexit.split-lp.i.i:                           ; preds = %.invoke228, %.invoke, %bb.cm, %bb.ck, %bb.ci, %bb.ce, %bb.cc, %bb.bn
  %.sroa.13.0591.i.i = phi ptr [ %.sroa.13.0656.i.i, %bb.ck ], [ %.sroa.13.0.lcssa1128.i.i, %bb.cm ], [ %.sroa.13.0656.i.i, %.invoke ], [ %.sroa.13.0656.i.i, %bb.cc ], [ %.sroa.13.0656.i.i, %bb.ci ], [ %.sroa.13.0656.i.i, %bb.ce ], [ %.sroa.13.0656.i.i, %bb.bn ], [ %.sroa.13.0656.i.i, %.invoke228 ]
  %.sroa.0294.0563.i.i = phi i64 [ %.sroa.0294.0657.i.i, %bb.ck ], [ %.sroa.0294.0.lcssa1129.i.i, %bb.cm ], [ %.sroa.0294.0657.i.i, %.invoke ], [ %.sroa.0294.0657.i.i, %bb.cc ], [ %.sroa.0294.0657.i.i, %bb.ci ], [ %.sroa.0294.0657.i.i, %bb.ce ], [ %.sroa.0294.0657.i.i, %bb.bn ], [ %.sroa.0294.0657.i.i, %.invoke228 ]
  %.sroa.14.0515.i.i = phi ptr [ %.sroa.14.0659.i.i, %bb.ck ], [ %.sroa.14.0.lcssa1130.i.i, %bb.cm ], [ %.sroa.14.0659.i.i, %.invoke ], [ %.sroa.14.0659.i.i, %bb.cc ], [ %.sroa.14.0659.i.i, %bb.ci ], [ %.sroa.14.0659.i.i, %bb.ce ], [ %.sroa.14.0659.i.i, %bb.bn ], [ %.sroa.14.0659.i.i, %.invoke228 ]
  %.sroa.0289.0486.i.i = phi i64 [ %.sroa.0289.0660.i.i, %bb.ck ], [ -9223372036854775808, %bb.cm ], [ %.sroa.0289.0660.i.i, %.invoke ], [ %.sroa.0289.0660.i.i, %bb.cc ], [ %.sroa.0289.0660.i.i, %bb.ci ], [ %.sroa.0289.0660.i.i, %bb.ce ], [ -9223372036854775808, %bb.bn ], [ %.sroa.0289.0660.i.i, %.invoke228 ]
  %i.ec = phi i64 [ -9223372036854775808, %bb.ck ], [ %.lcssa3971131.i.i, %bb.cm ], [ %i.df, %.invoke ], [ %i.df, %bb.cc ], [ %i.df, %bb.ci ], [ %i.df, %bb.ce ], [ %i.df, %bb.bn ], [ %i.df, %.invoke228 ]
  %i.ed = phi i64 [ %i.de, %bb.ck ], [ %.lcssa3561132.i.i, %bb.cm ], [ %i.de, %.invoke ], [ 1, %bb.cc ], [ %i.de, %bb.ci ], [ 0, %bb.ce ], [ %i.de, %bb.bn ], [ %i.de, %.invoke228 ]
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.be:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hae810dbb8464e760E.exit.i.i.i.i.i"
  store ptr %i.dc, ptr %.sroa.692.0..sroa_idx93.i.i, align 8, !noalias !1385
  store i64 %.sroa.5197.0.copyload712.i.i, ptr %.sroa.795.0..sroa_idx96.i.i, align 8, !noalias !1385
  store ptr %.sroa.0193.0.copyload734.i.i, ptr %.sroa.671.0..sroa_idx72.i.i, align 8, !noalias !1385
  store i64 %i.dg, ptr %i.o, align 8, !noalias !1385
  store i64 %i.dh, ptr %i.p, align 8, !noalias !1385
  %i.ee = load ptr, ptr %i.cy, align 8, !noalias !1400, !nonnull !8, !align !461, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1400
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit275.i.i"

bb.bf:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hae810dbb8464e760E.exit.i.i.i.i.i"
  %i.ef = load i8, ptr %i.cx, align 1, !range !1443, !noalias !1400, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1400
  switch i8 %i.ef, label %default.unreachable [
    i8 5, label %bb.bl
    i8 0, label %bb.bg
    i8 1, label %bb.bh
    i8 2, label %bb.bi
    i8 3, label %bb.bj
    i8 4, label %bb.bk
  ]

.thread343.i.i:                                   ; preds = %bb.br, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i"
  %.lcssa1480.sink.i.i = phi ptr [ %i.dc, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i" ], [ %i.em, %bb.br ]
  %.sroa.5197.0.copyload711.lcssa.sink.i.i = phi i64 [ %.sroa.5197.0.copyload712.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i" ], [ %.sroa.5197.0.copyload711.i.i, %bb.br ]
  %.sroa.0193.0.copyload733.lcssa.sink.i.i = phi ptr [ %.sroa.0193.0.copyload734.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i" ], [ %.sroa.0193.0.copyload733.i.i, %bb.br ]
  %.lcssa634.i.i = phi i64 [ %i.dh, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i" ], [ %i.en, %bb.br ]
  %.lcssa612.i.i = phi i64 [ %i.dg, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i" ], [ %i.eo, %bb.br ]
  %.sroa.19301.0.lcssa.i.i = phi i64 [ %.sroa.19301.0655.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i" ], [ %.sroa.19301.1.i.i, %bb.br ]
  %.sroa.13.0.lcssa.i.i = phi ptr [ %.sroa.13.0656.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i" ], [ %.sroa.13.1.i.i, %bb.br ] ; 6 uses
  %.sroa.0294.0.lcssa.i.i = phi i64 [ %.sroa.0294.0657.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i" ], [ %.sroa.0294.1.i.i, %bb.br ] ; 7 uses
  %.sroa.19.0.lcssa.i.i = phi i64 [ %.sroa.19.0658.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i" ], [ %.sroa.19.1.i.i, %bb.br ]
  %.sroa.14.0.lcssa.i.i = phi ptr [ %.sroa.14.0659.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i" ], [ %.sroa.14.1.i.i, %bb.br ] ; 10 uses
  %.sroa.0289.0.lcssa.i.i = phi i64 [ %.sroa.0289.0660.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i" ], [ %.sroa.0289.1.i.i, %bb.br ] ; 8 uses
  %.sroa.9.0307.lcssa.i.i = phi i64 [ %.sroa.9.0307661.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i" ], [ %.sroa.9.0306.i.i, %bb.br ]
  %.sroa.782.0305.lcssa.i.i = phi ptr [ %.sroa.782.0305662.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i" ], [ %.sroa.782.0304.i.i, %bb.br ]
  %.lcssa397.i.i = phi i64 [ %i.df, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i" ], [ %i.ep, %bb.br ] ; 7 uses
  %.sroa.0145.0.copyload303.lcssa.i.i = phi ptr [ %.sroa.0145.0.copyload303663.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i" ], [ %.sroa.0145.0.copyload302.i.i, %bb.br ]
  %.lcssa356.i.i = phi i64 [ %i.de, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i" ], [ %i.eq, %bb.br ] ; 6 uses
  store ptr %.lcssa1480.sink.i.i, ptr %.sroa.692.0..sroa_idx93.i.i, align 8, !noalias !1385
  store i64 %.sroa.5197.0.copyload711.lcssa.sink.i.i, ptr %.sroa.795.0..sroa_idx96.i.i, align 8, !noalias !1385
  store ptr %.sroa.0193.0.copyload733.lcssa.sink.i.i, ptr %.sroa.671.0..sroa_idx72.i.i, align 8, !noalias !1385
  store i64 %.lcssa612.i.i, ptr %i.o, align 8, !noalias !1385
  store i64 %.lcssa634.i.i, ptr %i.p, align 8, !noalias !1385
  %.not205.i.i = icmp eq i64 %.sroa.0289.0.lcssa.i.i, -9223372036854775808
  br i1 %.not205.i.i, label %bb.cm, label %bb.cn

default.unreachable:                              ; preds = %bb.bf
  unreachable

bb.bg:                                            ; preds = %bb.bf
  %.not213.i.i = icmp eq i64 %.sroa.0289.0660.i.i, -9223372036854775808
  br i1 %.not213.i.i, label %bb.bm, label %.invoke, !prof !17

end_hunk_1
begin_hunk_2_@"_ZN140_$LT$clap_builder..builder..value_parser..RangedU64ValueParser$LT$T$GT$$u20$as$u20$clap_builder..builder..value_parser..TypedValueParser$GT$9parse_ref17h17c31a667a20ddf7E":bb.a
  store ptr %i.v, ptr %.sroa.571.0..sroa_idx, align 8, !noalias !9820
  %.sroa.672.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 2, ptr %.sroa.672.0..sroa_idx, align 8, !noalias !9820
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !9820
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.cl unwind label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.hz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9821)
  %.val.i = load i64, ptr %i.w, align 8, !alias.scope !9821 ; 2 uses
  %i.ia = icmp eq i64 %.val.i, 0
  br i1 %i.ia, label %.thread116, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ib = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.val1.i = load ptr, ptr %i.ib, align 8, !alias.scope !9821, !nonnull !8, !noundef !8
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !9821
  br label %.thread116

bb.cl:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.experimental.noalias.scope.decl(metadata !9824)
  %.val.i54 = load i64, ptr %i.w, align 8, !alias.scope !9824 ; 2 uses
  %i.ic = icmp eq i64 %.val.i54, 0
  br i1 %i.ic, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit56", label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.id = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.val1.i55 = load ptr, ptr %i.id, align 8, !alias.scope !9824, !nonnull !8, !noundef !8
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i55, i64 noundef %.val.i54, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !9824
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit56"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit56": ; preds = %bb.cm, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %.sroa.096.0.copyload = load i64, ptr %i.x, align 8 ; 3 uses
  %.sroa.598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.598.0.copyload = load ptr, ptr %.sroa.598.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.6101.0.copyload = load i64, ptr %.sroa.6101.0..sroa_idx, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !9827
  %i.ie = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !9827 ; 5 uses
  %i.if = icmp eq ptr %i.ie, null
  br i1 %i.if, label %bb.cn, label %bb.cq, !prof !571

bb.cn:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit56"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #54
          to label %.noexc57 unwind label %bb.co

.noexc57:                                         ; preds = %bb.cn
  unreachable

bb.co:                                            ; preds = %bb.cn
  %i.ig = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ih = icmp eq i64 %.sroa.096.0.copyload, 0
  br i1 %i.ih, label %.thread116, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.598.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.598.0.copyload, i64 noundef %.sroa.096.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !9830
  br label %.thread116

bb.cq:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit56"
  store i64 %.sroa.096.0.copyload, ptr %i.ie, align 8
  %.sroa.598.0..sroa_idx99 = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  store ptr %.sroa.598.0.copyload, ptr %.sroa.598.0..sroa_idx99, align 8
  %.sroa.6101.0..sroa_idx102 = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  store i64 %.sroa.6101.0.copyload, ptr %.sroa.6101.0..sroa_idx102, align 8
  %i.ii = call fastcc noundef nonnull align 8 ptr @"_ZN12clap_builder5error14Error$LT$F$GT$16value_validation17h4cd737360c817844E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.z, ptr noundef nonnull align 1 %i.ie, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @279)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %"_ZN140_$LT$clap_builder..builder..value_parser..RangedU64ValueParser$LT$T$GT$$u20$as$u20$clap_builder..builder..value_parser..TypedValueParser$GT$9parse_ref28_$u7b$$u7b$closure$u7d$$u7d$17he242e1b649b39c35E.exit"
  %.sink = phi ptr [ %i.ii, %bb.cq ], [ %i.cw, %"_ZN140_$LT$clap_builder..builder..value_parser..RangedU64ValueParser$LT$T$GT$$u20$as$u20$clap_builder..builder..value_parser..TypedValueParser$GT$9parse_ref28_$u7b$$u7b$closure$u7d$$u7d$17he242e1b649b39c35E.exit" ] ; 2 uses
  %i.ij = call fastcc noundef nonnull align 8 ptr @"_ZN12clap_builder5error14Error$LT$F$GT$8with_cmd17hab912d798f7a497bE"(ptr noalias noundef nonnull align 8 %.sink, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.cv

.thread116:                                       ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit31.i", %bb.bi, %bb.cp, %bb.co, %bb.cj, %bb.ck, %.thread128
  %.pn119 = phi { ptr, i32 } [ %i.ig, %bb.cp ], [ %lpad.thr_comm, %.thread128 ], [ %i.hz, %bb.cj ], [ %i.hz, %bb.ck ], [ %i.ig, %bb.co ], [ %.pn.i, %bb.bi ], [ %.pn.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit31.i" ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9835)
  %.val.i61 = load i64, ptr %i.z, align 8, !alias.scope !9835 ; 2 uses
  %i.ik = icmp eq i64 %.val.i61, 0
  br i1 %i.ik, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %.thread116
  %i.il = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.val1.i62 = load ptr, ptr %i.il, align 8, !alias.scope !9835, !nonnull !8, !noundef !8
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i62, i64 noundef %.val.i61, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !9835
  br label %bb.ct

bb.ct:                                            ; preds = %bb.ax, %.thread116, %bb.cs
  %.pn.pn.ph = phi { ptr, i32 } [ %i.dq, %bb.ax ], [ %.pn119, %.thread116 ], [ %.pn119, %bb.cs ] ; 2 uses
  %i.im = icmp eq i64 %.sroa.076.0, 0
  br i1 %i.im, label %common.resume, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.578.0, i64 noundef %.sroa.076.0, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !9838
  br label %common.resume

bb.cv:                                            ; preds = %_ZN4core3ops5range11RangeBounds8contains17hf436c9e8d86c63f7E.exit.thread110, %bb.cr, %"_ZN12clap_builder5error14Error$LT$F$GT$12invalid_utf817h4d6f9080aae0a999E.exit"
  %.sroa.5.1 = phi ptr [ %.sroa.0.0.i, %"_ZN12clap_builder5error14Error$LT$F$GT$12invalid_utf817h4d6f9080aae0a999E.exit" ], [ %.sink, %bb.cr ], [ %i.di, %_ZN4core3ops5range11RangeBounds8contains17hf436c9e8d86c63f7E.exit.thread110 ]
  %.sroa.0.1 = phi i64 [ 1, %"_ZN12clap_builder5error14Error$LT$F$GT$12invalid_utf817h4d6f9080aae0a999E.exit" ], [ 1, %bb.cr ], [ 0, %_ZN4core3ops5range11RangeBounds8contains17hf436c9e8d86c63f7E.exit.thread110 ]
  %i.in = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %i.io = insertvalue { i64, ptr } %i.in, ptr %.sroa.5.1, 1
  ret { i64, ptr } %i.io
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN171_$LT$$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$..collect_str..Adapter$LT$W$C$F$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hca239cc3a6db54baE"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !461, !noundef !8
  %i.b = tail call fastcc noundef ptr @_ZN10serde_json3ser27format_escaped_str_contents17h5c6b027a41acdc5dE(ptr noalias noundef align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) ; 3 uses
  %.not = icmp ne ptr %i.b, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !9841, !noundef !8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$std..io..error..Error$GT$$GT$17h913525b5343db86cE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17ha15fe409393fbeaeE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.c)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$std..io..error..Error$GT$$GT$17h913525b5343db86cE.exit" unwind label %bb.e

bb.d:                                             ; preds = %bb.a, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$std..io..error..Error$GT$$GT$17h913525b5343db86cE.exit"
  ret i1 %.not

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  store ptr %i.b, ptr %i.c, align 8
  resume { ptr, i32 } %i.f

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$std..io..error..Error$GT$$GT$17h913525b5343db86cE.exit": ; preds = %bb.b, %bb.c
  store ptr %i.b, ptr %i.c, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h0a5519eca1d74c40E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 16 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 14 uses
  %i.k = alloca [24 x i8], align 8                ; 14 uses
  %i.l = alloca [32 x i8], align 8                ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 11 uses
  %i.n = alloca [80 x i8], align 8                ; 4 uses
  %i.o = alloca [80 x i8], align 8                ; 4 uses
  %i.p = alloca [72 x i8], align 8                ; 5 uses
  %.sroa.13.sroa.6 = alloca [72 x i8], align 8    ; 2 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [72 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [72 x i8], align 8                ; 6 uses
  %i.u = alloca [72 x i8], align 8                ; 15 uses
  %i.v = alloca [72 x i8], align 8                ; 6 uses
  %i.w = alloca [16 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9844)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9847)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !9850, !noalias !9851, !nonnull !8, !noundef !8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !9850, !noalias !9851, !nonnull !8, !noundef !8 ; 5 uses
  %i.ab = icmp eq ptr %i.aa, %i.y
  br i1 %i.ab, label %.thread, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i": ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 64 ; 3 uses
  store ptr %i.ac, ptr %i.z, align 8, !alias.scope !9850, !noalias !9851
  %.sroa.0.0.copyload13.i.i = load i8, ptr %i.aa, align 8, !noalias !9856 ; 2 uses
  %.not.i.i = icmp eq i8 %.sroa.0.0.copyload13.i.i, 22
  br i1 %.not.i.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i"
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !9844, !noalias !9857, !noundef !8
  %i.af = add i64 %i.ae, 1                        ; 2 uses
  store i64 %i.af, ptr %i.ad, align 8, !alias.scope !9844, !noalias !9857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !9858
  store i8 %.sroa.0.0.copyload13.i.i, ptr %i.m, align 8, !noalias !9858
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6.0..sroa_idx2.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i, i64 31, i1 false), !noalias !9858
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false), !noalias !9858
  %i.ah = load i8, ptr %1, align 8, !range !890, !alias.scope !9859, !noalias !9857, !noundef !8
  %i.ai = icmp eq i8 %i.ah, 22
  br i1 %i.ai, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %1)
          to label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i" unwind label %bb.n, !noalias !9857

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i": ; preds = %bb.c, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !9857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !9858
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !9858
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false), !noalias !9858
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9862)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9867)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9870)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9872)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9875)
  %i.aj = load i8, ptr %i.j, align 8, !range !714, !alias.scope !9877, !noalias !9878, !noundef !8
  switch i8 %i.aj, label %"_ZN88_$LT$serde_json..value..de..KeyClassifier$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h0bc0225cde94e31aE.exit.thread20.i.i" [
    i8 12, label %bb.d
    i8 13, label %bb.i
    i8 14, label %bb.j
    i8 15, label %bb.k
  ], !prof !13

"_ZN88_$LT$serde_json..value..de..KeyClassifier$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h0bc0225cde94e31aE.exit.thread20.i.i": ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i"
  %i.ak = call fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content28ContentDeserializer$LT$E$GT$12invalid_type17hbef5b53211e707e3E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.m, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @40), !noalias !9858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !9858
  br label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h73d8b9cd354adb76E.exit.thread138"

bb.d:                                             ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i"
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.al, align 8, !alias.scope !9877, !noalias !9878 ; 4 uses
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.3.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !9877, !noalias !9878 ; 5 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.4.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !9877, !noalias !9878 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9882)
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i, 30
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i.i.i.i) ]
  %i.am = load i128, ptr %.sroa.3.0.copyload.i.i.i.i.i, align 1
  %i.an = xor i128 %i.am, 140163137642481810540487027204030821156
  %i.ao = getelementptr i8, ptr %.sroa.3.0.copyload.i.i.i.i.i, i64 14
  %i.ap = load i128, ptr %i.ao, align 1
  %i.aq = xor i128 %i.ap, 134861724518854068863416560771000592754
  %i.ar = or i128 %i.an, %i.aq
  %i.as = icmp ne i128 %i.ar, 0
  %i.at = zext i1 %i.as to i32
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i64 %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.k, align 8, !alias.scope !9884, !noalias !9885
  %.sroa.3.0..sroa_idx5.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.sroa.3.0.copyload.i.i.i.i.i, ptr %.sroa.3.0..sroa_idx5.i.i.i.i.i, align 8, !alias.scope !9884, !noalias !9885
  %.sroa.4.0..sroa_idx7.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.sroa.4.0.copyload.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx7.i.i.i.i.i, align 8, !alias.scope !9884, !noalias !9885
  br label %"_ZN88_$LT$serde_json..value..de..KeyClassifier$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h0bc0225cde94e31aE.exit.i.i"

bb.g:                                             ; preds = %bb.e
  %i.av = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, 0
  br i1 %i.av, label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h73d8b9cd354adb76E.exit.thread", label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.3.0.copyload.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !9886
  br label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h73d8b9cd354adb76E.exit.thread"

bb.i:                                             ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i"
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !9877, !noalias !9878, !nonnull !8, !align !800, !noundef !8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !9877, !noalias !9878, !noundef !8
  invoke fastcc void @"_ZN80_$LT$serde_json..value..de..KeyClassifier$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h1e90890204b5ec60E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ax, i64 noundef %i.az)
          to label %"_ZN80_$LT$serde_json..value..de..KeyClassifier$u20$as$u20$serde_core..de..Visitor$GT$12visit_string17hb24561835101e48eE.exit.i.i.i.i.i" unwind label %bb.l, !noalias !9885

bb.j:                                             ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i"
  %i.ba = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call fastcc void @_ZN10serde_core2de7Visitor14visit_byte_buf17hce25f244dc00b60bE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.ba), !noalias !9858
  br label %"_ZN88_$LT$serde_json..value..de..KeyClassifier$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h0bc0225cde94e31aE.exitthread-pre-split.i.i"

bb.k:                                             ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i"
  %i.bb = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !9877, !noalias !9878, !nonnull !8, !align !800, !noundef !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !9877, !noalias !9878, !noundef !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9889)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9892)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !9895
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.bc, ptr %i.bf, align 8, !noalias !9895
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.be, ptr %i.bg, align 8, !noalias !9895
  store i8 6, ptr %i.i, align 8, !noalias !9895
  %i.bh = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @40)
          to label %_ZN10serde_core2de7Visitor20visit_borrowed_bytes17hf1960519936e94cfE.exit.i.i.i.i.i unwind label %bb.l, !noalias !9898

_ZN10serde_core2de7Visitor20visit_borrowed_bytes17hf1960519936e94cfE.exit.i.i.i.i.i: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !9895
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.bh, ptr %i.bi, align 8, !alias.scope !9899, !noalias !9900
  store i64 -9223372036854775807, ptr %i.k, align 8, !alias.scope !9899, !noalias !9900
  br label %"_ZN80_$LT$serde_json..value..de..KeyClassifier$u20$as$u20$serde_core..de..Visitor$GT$12visit_string17hb24561835101e48eE.exit.i.i.i.i.i"

"_ZN80_$LT$serde_json..value..de..KeyClassifier$u20$as$u20$serde_core..de..Visitor$GT$12visit_string17hb24561835101e48eE.exit.i.i.i.i.i": ; preds = %_ZN10serde_core2de7Visitor20visit_borrowed_bytes17hf1960519936e94cfE.exit.i.i.i.i.i, %bb.i
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.m), !noalias !9858
  br label %"_ZN88_$LT$serde_json..value..de..KeyClassifier$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h0bc0225cde94e31aE.exitthread-pre-split.i.i"

bb.l:                                             ; preds = %bb.k, %bb.i
  %lpad.thr_comm15.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.m) #55
          to label %common.resume unwind label %bb.m, !noalias !9858

bb.m:                                             ; preds = %bb.l
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !9898
  unreachable

"_ZN88_$LT$serde_json..value..de..KeyClassifier$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h0bc0225cde94e31aE.exitthread-pre-split.i.i": ; preds = %"_ZN80_$LT$serde_json..value..de..KeyClassifier$u20$as$u20$serde_core..de..Visitor$GT$12visit_string17hb24561835101e48eE.exit.i.i.i.i.i", %bb.j
  %.pr.i.i = load i64, ptr %i.k, align 8, !noalias !9858
  br label %"_ZN88_$LT$serde_json..value..de..KeyClassifier$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h0bc0225cde94e31aE.exit.i.i"

"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h73d8b9cd354adb76E.exit.thread": ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !9858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !9858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !9858
  br label %bb.q

"_ZN88_$LT$serde_json..value..de..KeyClassifier$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h0bc0225cde94e31aE.exit.i.i": ; preds = %"_ZN88_$LT$serde_json..value..de..KeyClassifier$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h0bc0225cde94e31aE.exitthread-pre-split.i.i", %bb.f
  %i.bk = phi i64 [ %.pr.i.i, %"_ZN88_$LT$serde_json..value..de..KeyClassifier$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h0bc0225cde94e31aE.exitthread-pre-split.i.i" ], [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.f ] ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !9858
  %i.bl = icmp eq i64 %i.bk, -9223372036854775807
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !noalias !9844 ; 7 uses
  br i1 %i.bl, label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h73d8b9cd354adb76E.exit.thread138", label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h73d8b9cd354adb76E.exit"

bb.n:                                             ; preds = %bb.c
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !9857
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef align 8 dereferenceable(32) %i.m) #55
          to label %common.resume unwind label %bb.o, !noalias !9858

bb.o:                                             ; preds = %bb.n
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !9858
  unreachable

common.resume:                                    ; preds = %.thread12.i.i.i.i.i, %bb.ab, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit", %bb.be, %bb.bf, %bb.bi, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i", %bb.l, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.fj, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i" ], [ %lpad.thr_comm15.i.i.i.i.i, %bb.l ], [ %i.bm, %bb.n ], [ %i.cf, %.thread12.i.i.i.i.i ], [ %i.fe, %bb.bf ], [ %.pn, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit" ], [ %i.fe, %bb.be ], [ %i.fj, %bb.bi ], [ %lpad.thr_comm15.i.i.i.i.i23, %bb.ab ]
  resume { ptr, i32 } %common.resume.op

"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h73d8b9cd354adb76E.exit.thread138": ; preds = %"_ZN88_$LT$serde_json..value..de..KeyClassifier$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h0bc0225cde94e31aE.exit.i.i", %"_ZN88_$LT$serde_json..value..de..KeyClassifier$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h0bc0225cde94e31aE.exit.thread20.i.i"
  %.sroa.7.0.ph = phi ptr [ %i.ak, %"_ZN88_$LT$serde_json..value..de..KeyClassifier$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h0bc0225cde94e31aE.exit.thread20.i.i" ], [ %.pre.i.i, %"_ZN88_$LT$serde_json..value..de..KeyClassifier$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h0bc0225cde94e31aE.exit.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !9858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !9858
  br label %bb.p

"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h73d8b9cd354adb76E.exit": ; preds = %"_ZN88_$LT$serde_json..value..de..KeyClassifier$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h0bc0225cde94e31aE.exit.i.i"
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !9844
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !9858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !9858
  switch i64 %i.bk, label %bb.ae [
    i64 -9223372036854775806, label %bb.p
    i64 -9223372036854775808, label %bb.q
  ]

bb.p:                                             ; preds = %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h73d8b9cd354adb76E.exit", %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h73d8b9cd354adb76E.exit.thread138"
  %.sroa.7.0142 = phi ptr [ %.sroa.7.0.ph, %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h73d8b9cd354adb76E.exit.thread138" ], [ %.pre.i.i, %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h73d8b9cd354adb76E.exit" ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0142) ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.0142, ptr %i.bo, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  br label %"_ZN4core3ptr71drop_in_place$LT$alloc..boxed..Box$LT$serde_json..raw..RawValue$GT$$GT$17h6679b5f17fa738d3E.exit50"

.thread:                                          ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i", %bb.a
  %i.bp = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 8, !range !610, !noalias !9901, !noundef !8
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %._ZN4core3ops8function6FnOnce9call_once17he8e49505c7ce8ce8E.exit_crit_edge.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h1d011a7d4dd08efeE.exit.i.i", !prof !17

._ZN4core3ops8function6FnOnce9call_once17he8e49505c7ce8ce8E.exit_crit_edge.i.i: ; preds = %.thread
  %.pre.i.i20 = load i64, ptr %i.bp, align 8, !noalias !9910
  %.phi.trans.insert.i.i21 = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i21, align 8, !noalias !9910
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h0869928331f61a2fE.exit"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h1d011a7d4dd08efeE.exit.i.i": ; preds = %.thread
  %i.bt = tail call { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE(), !noalias !9911 ; 2 uses
end_hunk_2
begin_hunk_3_@"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h0a5519eca1d74c40E":bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !9985
  %i.cz = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.cy, ptr %i.cz, align 8, !alias.scope !9988, !noalias !9989
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN10serde_core2de7Visitor20visit_borrowed_bytes17he089b88f515be5cdE.exit.i.i.i.i.i, %_ZN10serde_core2de7Visitor18visit_borrowed_str17hfb6e4a813f11d94bE.exit.i.i.i.i.i
  %.pr190 = phi ptr [ null, %_ZN10serde_core2de7Visitor20visit_borrowed_bytes17he089b88f515be5cdE.exit.i.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i.i.i.i, %_ZN10serde_core2de7Visitor18visit_borrowed_str17hfb6e4a813f11d94bE.exit.i.i.i.i.i ]
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.h), !noalias !9939
  br label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h553f326d39507f55E.exit"

bb.ab:                                            ; preds = %bb.z, %bb.x
  %lpad.thr_comm15.i.i.i.i.i23 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.h) #55
          to label %common.resume unwind label %bb.ac, !noalias !9939

bb.ac:                                            ; preds = %bb.ab
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !9975
  unreachable

bb.ad:                                            ; preds = %bb.q
  call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @9, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1845) #54, !noalias !9923
  unreachable

"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h553f326d39507f55E.exit": ; preds = %bb.y, %bb.aa, %"_ZN76_$LT$serde_json..raw..BoxedFromString$u20$as$u20$serde_core..de..Visitor$GT$12visit_string17h5b3e9997335c3995E.exit.i.i.i.i.i"
  %i.db = phi ptr [ %.sroa.42.0.copyload.i.i.i.i.i.i.i, %"_ZN76_$LT$serde_json..raw..BoxedFromString$u20$as$u20$serde_core..de..Visitor$GT$12visit_string17h5b3e9997335c3995E.exit.i.i.i.i.i" ], [ %.pr190, %bb.aa ], [ %.pr.pre, %bb.y ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !9923
  %i.dc = icmp eq ptr %i.db, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  br i1 %i.dc, label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h553f326d39507f55E.exit._crit_edge", label %bb.bh

"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h553f326d39507f55E.exit._crit_edge": ; preds = %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h553f326d39507f55E.exit"
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.bg

bb.ae:                                            ; preds = %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h73d8b9cd354adb76E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.dd = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  %i.df = load i8, ptr %i.de, align 8, !range !610, !noalias !9990, !noundef !8
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %._ZN4core3ops8function6FnOnce9call_once17he8e49505c7ce8ce8E.exit_crit_edge.i.i29, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h1d011a7d4dd08efeE.exit.i.i27", !prof !17

._ZN4core3ops8function6FnOnce9call_once17he8e49505c7ce8ce8E.exit_crit_edge.i.i29: ; preds = %bb.ae
  %.pre.i.i30 = load i64, ptr %i.dd, align 8, !noalias !9999
  %.phi.trans.insert.i.i31 = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.pre1.i.i32 = load i64, ptr %.phi.trans.insert.i.i31, align 8, !noalias !9999
  br label %bb.af

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h1d011a7d4dd08efeE.exit.i.i27": ; preds = %bb.ae
  %i.dh = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc unwind label %bb.be    ; 2 uses

.noexc:                                           ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h1d011a7d4dd08efeE.exit.i.i27"
  %i.di = extractvalue { i64, i64 } %i.dh, 0
  %i.dj = extractvalue { i64, i64 } %i.dh, 1      ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i64 %i.dj, ptr %i.dk, align 8, !noalias !10000
  store i8 1, ptr %i.de, align 8, !noalias !10000
  br label %bb.af

bb.af:                                            ; preds = %._ZN4core3ops8function6FnOnce9call_once17he8e49505c7ce8ce8E.exit_crit_edge.i.i29, %.noexc
  %.pre-phi197 = phi i64 [ %.pre1.i.i32, %._ZN4core3ops8function6FnOnce9call_once17he8e49505c7ce8ce8E.exit_crit_edge.i.i29 ], [ %i.dj, %.noexc ]
  %i.dl = phi i64 [ %.pre.i.i30, %._ZN4core3ops8function6FnOnce9call_once17he8e49505c7ce8ce8E.exit_crit_edge.i.i29 ], [ %i.di, %.noexc ] ; 2 uses
  %i.dm = add i64 %i.dl, 1
  store i64 %i.dm, ptr %i.dd, align 8, !noalias !9999
  store i64 0, ptr %i.u, align 8
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.496.0..sroa_idx, align 8
  %.sroa.597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 0, ptr %.sroa.597.0..sroa_idx, align 8
  %.sroa.698.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.698.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @257, i64 32, i1 false)
  %.sroa.799.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store i64 %i.dl, ptr %.sroa.799.0..sroa_idx, align 8
  %.sroa.8100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store i64 %.pre-phi197, ptr %.sroa.8100.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i64 %i.bk, ptr %i.s, align 8
  %.sroa.677.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %.pre.i.i, ptr %.sroa.677.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %.sroa.10.0.copyload, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !10003)
  call void @llvm.experimental.noalias.scope.decl(metadata !10006)
  %.sroa.0.0.copyload.i.i51 = load i8, ptr %1, align 8, !alias.scope !10009, !noalias !10010 ; 2 uses
  store i8 22, ptr %1, align 8, !alias.scope !10009, !noalias !10010
  %.not.i.i53 = icmp eq i8 %.sroa.0.0.copyload.i.i51, 22
  br i1 %.not.i.i53, label %bb.ag, label %"_ZN99_$LT$serde..private..de..content..MapDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hcf44982c7d73709cE.exit.i", !prof !14

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @9, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1845) #54
          to label %.noexc55 unwind label %bb.ah, !inline_history !10013

.noexc55:                                         ; preds = %bb.ag
  unreachable

"_ZN99_$LT$serde..private..de..content..MapDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hcf44982c7d73709cE.exit.i": ; preds = %bb.af
  %.sroa.3.0..sroa_idx.i.i52 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.sroa.2.0..sroa_idx.i.i54 = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10014
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.2.0..sroa_idx.i.i54, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.3.0..sroa_idx.i.i52, i64 31, i1 false)
  store i8 %.sroa.0.0.copyload.i.i51, ptr %i.f, align 8, !noalias !10014
  invoke fastcc void @"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17he8f60f12cb1eb121E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.f)
          to label %bb.aj unwind label %bb.ah, !inline_history !10015

bb.ah:                                            ; preds = %"_ZN99_$LT$serde..private..de..content..MapDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hcf44982c7d73709cE.exit.i", %bb.ag
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.do = icmp eq i64 %i.bk, 0
  br i1 %i.do, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit", label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.pre.i.i, i64 noundef %i.bk, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !10016
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit"

bb.aj:                                            ; preds = %"_ZN99_$LT$serde..private..de..content..MapDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hcf44982c7d73709cE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10014
  %i.dp = load i64, ptr %i.r, align 8, !range !860, !noundef !8
  %i.dq = icmp eq i64 %i.dp, -9223372036854775803
  br i1 %i.dq, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false)
  %i.dr = icmp eq i64 %i.bk, 0
  br i1 %i.dr, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit40", label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.pre.i.i, i64 noundef %i.bk, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !10019
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit40"

bb.am:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17h501bf1d040ec56e4E"(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.o, ptr noalias noundef align 8 dereferenceable(72) %i.u, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.s, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.r)
          to label %bb.an unwind label %.loopexit.split-lp

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit": ; preds = %.loopexit, %.loopexit.split-lp, %bb.ax, %bb.at, %bb.as, %bb.ai, %bb.ah
  %.pn = phi { ptr, i32 } [ %i.dn, %bb.ai ], [ %i.dn, %bb.ah ], [ %i.ef, %bb.as ], [ %i.en, %bb.ax ], [ %i.ef, %bb.at ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17he5efacb79be74f26E"(ptr noalias noundef align 8 dereferenceable(72) %i.u) #55
          to label %common.resume unwind label %bb.bd

.loopexit:                                        ; preds = %bb.az, %bb.bb
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit"

.loopexit.split-lp:                               ; preds = %bb.am, %bb.ao, %bb.aq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit"

bb.an:                                            ; preds = %bb.am
  %i.ds = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.t, ptr noundef nonnull align 8 dereferenceable(72) %i.ds, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.dt = load i64, ptr %i.t, align 8, !range !860, !alias.scope !10022, !noundef !8
  %i.du = icmp eq i64 %i.dt, -9223372036854775803
  br i1 %i.du, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17had044ad4ce3b98b3E.exit", label %bb.ao

bb.ao:                                            ; preds = %bb.an
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h1c45b7324ac9ef4bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.t)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17had044ad4ce3b98b3E.exit" unwind label %.loopexit.split-lp

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17had044ad4ce3b98b3E.exit": ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.dv = icmp eq ptr %i.ac, %i.y
  br i1 %i.dv, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.thread", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.lr.ph"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.lr.ph": ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17had044ad4ce3b98b3E.exit"
  %.sroa.2.0..sroa_idx.i.i60 = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.4110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.3.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.lr.ph", %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17had044ad4ce3b98b3E.exit44"
  %i.dx = phi i64 [ %i.af, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.lr.ph" ], [ %i.ea, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17had044ad4ce3b98b3E.exit44" ]
  %i.dy = phi ptr [ %i.ac, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.lr.ph" ], [ %i.dz, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17had044ad4ce3b98b3E.exit44" ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10025)
  call void @llvm.experimental.noalias.scope.decl(metadata !10028)
  call void @llvm.experimental.noalias.scope.decl(metadata !10031)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 64 ; 3 uses
  store ptr %i.dz, ptr %i.z, align 8, !alias.scope !10031, !noalias !10034
  %.sroa.0121.0.copyload = load i8, ptr %i.dy, align 8, !noalias !10038 ; 2 uses
  %.not.i.i58 = icmp eq i8 %.sroa.0121.0.copyload, 22
  br i1 %.not.i.i58, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.thread", label %bb.ap

bb.ap:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit"
  %.sroa.7122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dy, i64 1
  %i.ea = add i64 %i.dx, 1                        ; 2 uses
  store i64 %i.ea, ptr %i.ad, align 8, !alias.scope !10039, !noalias !10040
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10041
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.2.0..sroa_idx.i.i60, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7122.0..sroa_idx, i64 31, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.eb, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10041
  store i8 %.sroa.0121.0.copyload, ptr %i.d, align 8, !noalias !10041
  invoke fastcc void @"_ZN10serde_core2de5impls79_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..string..String$GT$11deserialize17h480b2191756067ecE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.d)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h09c40987a587e440E.exit" unwind label %bb.ax

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h09c40987a587e440E.exit": ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10041
  %i.ec = load i64, ptr %i.e, align 8, !range !929, !noalias !10041, !noundef !8 ; 6 uses
  %i.ed = icmp eq i64 %i.ec, -9223372036854775808
  %i.ee = load ptr, ptr %.sroa.4110.0..sroa_idx, align 8, !noalias !10041 ; 6 uses
  br i1 %i.ed, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h09c40987a587e440E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10041
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef align 8 dereferenceable(32) %i.b)
          to label %bb.ay unwind label %.loopexit.split-lp, !inline_history !10042

bb.ar:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h09c40987a587e440E.exit"
  %.sroa.5111.0.copyload = load i64, ptr %.sroa.5111.0..sroa_idx, align 8, !noalias !10041
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10041
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10041
  invoke fastcc void @"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17he8f60f12cb1eb121E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.b)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3fc718585d436d9fE.exit70" unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ef = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eg = icmp eq i64 %i.ec, 0
  br i1 %i.eg, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit", label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ee) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ee, i64 noundef %i.ec, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !10043
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit"

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3fc718585d436d9fE.exit70": ; preds = %bb.ar
  %i.eh = load i64, ptr %i.c, align 8, !range !860, !noalias !10041, !noundef !8
  %i.ei = icmp eq i64 %i.eh, -9223372036854775803
  br i1 %i.ei, label %bb.au, label %bb.az

bb.au:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3fc718585d436d9fE.exit70"
  %i.ej = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !noalias !10041, !nonnull !8, !align !461, !noundef !8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10041
  %i.el = icmp eq i64 %i.ec, 0
  br i1 %i.el, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ee) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ee, i64 noundef %i.ec, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !10046
  br label %bb.ay

bb.aw:                                            ; preds = %bb.ax
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !10041, !inline_history !10049
  unreachable

bb.ax:                                            ; preds = %bb.ap
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef align 8 dereferenceable(32) %i.b) #55
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit" unwind label %bb.aw, !inline_history !10049

bb.ay:                                            ; preds = %bb.au, %bb.av, %bb.aq
  %.sroa.9.0 = phi ptr [ %i.ee, %bb.aq ], [ %i.ek, %bb.av ], [ %i.ek, %bb.au ]
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.9.0, ptr %i.eo, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  br label %bb.bc

bb.az:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3fc718585d436d9fE.exit70"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.13.sroa.6, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10041
  store i64 %i.ec, ptr %i.q, align 8
  store ptr %i.ee, ptr %.sroa.3.0..sroa_idx6, align 8
  store i64 %.sroa.5111.0.copyload, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx6.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17h501bf1d040ec56e4E"(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.n, ptr noalias noundef align 8 dereferenceable(72) %i.u, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef align 8 captures(address) dereferenceable(72) %.sroa.13.sroa.6)
          to label %bb.ba unwind label %.loopexit

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.thread": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit", %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17had044ad4ce3b98b3E.exit44", %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17had044ad4ce3b98b3E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.u, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %"_ZN4core3ptr71drop_in_place$LT$alloc..boxed..Box$LT$serde_json..raw..RawValue$GT$$GT$17h6679b5f17fa738d3E.exit50"

bb.ba:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.p, ptr noundef nonnull align 8 dereferenceable(72) %i.dw, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ep = load i64, ptr %i.p, align 8, !range !860, !alias.scope !10050, !noundef !8
  %i.eq = icmp eq i64 %i.ep, -9223372036854775803
  br i1 %i.eq, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17had044ad4ce3b98b3E.exit44", label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h1c45b7324ac9ef4bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.p)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17had044ad4ce3b98b3E.exit44" unwind label %.loopexit

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17had044ad4ce3b98b3E.exit44": ; preds = %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.er = icmp eq ptr %i.dz, %i.y
  br i1 %i.er, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.thread", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit"

bb.bc:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit40", %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !10053)
  call void @llvm.experimental.noalias.scope.decl(metadata !10056)
  call void @llvm.experimental.noalias.scope.decl(metadata !10059)
  %i.es = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %.val1.i.i.i = load i64, ptr %i.es, align 8, !alias.scope !10062, !noundef !8 ; 4 uses
  %i.et = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.et, label %"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h1c73d58f9a36a83eE.exit.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i: ; preds = %bb.bc
  %.val.i.i.i = load ptr, ptr %.sroa.698.0..sroa_idx, align 8, !alias.scope !10062, !nonnull !8, !noundef !8
  %or.cond.i.i.i.i.i.i.i = icmp slt i64 %.val1.i.i.i, 2305843009213693950
  call void @llvm.assume(i1 %or.cond.i.i.i.i.i.i.i), !noalias !10059
  %i.eu = shl i64 %.val1.i.i.i, 3
  %i.ev = and i64 %i.eu, -16                      ; 2 uses
  %i.ew = add i64 %i.ev, 16                       ; 2 uses
  %i.ex = add nsw i64 %.val1.i.i.i, 17
  %i.ey = add i64 %i.ex, %i.ew                    ; 3 uses
  %i.ez = icmp uge i64 %i.ey, %i.ew
  call void @llvm.assume(i1 %i.ez), !noalias !10059
  %i.fa = icmp ult i64 %i.ey, 9223372036854775793
  call void @llvm.assume(i1 %i.fa), !noalias !10059
  %i.fb = sub nuw nsw i64 -16, %i.ev
  %i.fc = getelementptr inbounds i8, ptr %.val.i.i.i, i64 %i.fb
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fc, i64 noundef %i.ey, i64 noundef range(i64 1, -9223372036854775807) 16) #47, !noalias !10062, !inline_history !10063
  br label %"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h1c73d58f9a36a83eE.exit.i"

"_ZN4core3ptr100drop_in_place$LT$indexmap..map..IndexMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h1c73d58f9a36a83eE.exit.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i, %bb.bc
  call fastcc void @"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17hc95c28a278c16f40E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.u), !inline_history !10064
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %"_ZN4core3ptr71drop_in_place$LT$alloc..boxed..Box$LT$serde_json..raw..RawValue$GT$$GT$17h6679b5f17fa738d3E.exit50"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit40": ; preds = %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.bc

bb.bd:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit"
  %i.fd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

bb.be:                                            ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h1d011a7d4dd08efeE.exit.i.i27"
  %i.fe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ff = icmp eq i64 %i.bk, 0
  br i1 %i.ff, label %common.resume, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pre.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.pre.i.i, i64 noundef %i.bk, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !10065
  br label %common.resume

bb.bg:                                            ; preds = %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h553f326d39507f55E.exit._crit_edge", %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h553f326d39507f55E.exit.thread"
  %i.fg = phi ptr [ %.pre, %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h553f326d39507f55E.exit._crit_edge" ], [ %i.bz, %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h553f326d39507f55E.exit.thread" ]
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fg, ptr %i.fh, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %"_ZN4core3ptr71drop_in_place$LT$alloc..boxed..Box$LT$serde_json..raw..RawValue$GT$$GT$17h6679b5f17fa738d3E.exit50"

bb.bh:                                            ; preds = %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h553f326d39507f55E.exit"
  %i.fi = load i64, ptr %.phi.trans.insert, align 8, !noundef !8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  invoke fastcc void @_ZN10serde_json2de8from_str17h2b46476870bb6b7dE(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.v, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.db, i64 noundef %i.fi)
          to label %bb.bj unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bk, %bb.bh
  %i.fj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fk = icmp eq i64 %i.fi, 0
  br i1 %i.fk, label %common.resume, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i": ; preds = %bb.bi
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.db, i64 noundef %i.fi, i64 noundef 1) #47
  br label %common.resume

bb.bj:                                            ; preds = %bb.bh
  %i.fl = load i64, ptr %i.v, align 8, !range !860, !noundef !8
  %i.fm = icmp eq i64 %i.fl, -9223372036854775803
  br i1 %i.fm, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.fn = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !nonnull !8, !align !461, !noundef !8
  %i.fp = invoke fastcc noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17hd2b76c582c1a22cfE"(ptr noalias noundef nonnull align 8 %i.fo)
          to label %bb.bn unwind label %bb.bi

bb.bl:                                            ; preds = %bb.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.v, i64 72, i1 false)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bn, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.fq = icmp eq i64 %i.fi, 0
end_hunk_3
begin_hunk_4_@"_ZN5xtask6common8instance1_95_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..instance..BinarySource$GT$11deserialize17hdf01e656d37550d6E":bb.a

bb.cq:                                            ; preds = %bb.cn
  %i.lj = load i32, ptr %i.kn, align 1
  %i.lk = icmp ne i32 %i.lj, 1752457584
  %i.ll = zext i1 %i.lk to i32
  %i.lm = icmp eq i32 %i.ll, 0
  br i1 %i.lm, label %_ZN10serde_core2de9MapAccess10next_value17h7fa65820ab7461b6E.exit.i.i.thread, label %.invoke, !prof !17

bb.cr:                                            ; preds = %bb.cd
  br label %.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.cr, %bb.cd
  %.sink243.i.i = phi i64 [ 48, %bb.cr ], [ 40, %bb.cd ]
  %.sink242.i.i = phi i64 [ 56, %bb.cr ], [ 48, %bb.cd ]
  %i.ln = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.sink243.i.i
  %i.lo = load ptr, ptr %i.ln, align 8, !alias.scope !36556, !noalias !36557, !nonnull !8, !noundef !8
  %i.lp = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.sink242.i.i
  %i.lq = load i64, ptr %i.lp, align 8, !alias.scope !36556, !noalias !36557, !noundef !8
  invoke fastcc void @"_ZN195_$LT$xtask..common..instance.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..instance..BinarySource$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$11visit_bytes17heb92d76cab44a01aE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.ak, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.lo, i64 noundef %i.lq)
          to label %_ZN10serde_core2de9MapAccess10next_value17h7fa65820ab7461b6E.exit.i.i unwind label %.loopexit.i.i.loopexit.loopexit.split-lp, !noalias !36397

_ZN10serde_core2de9MapAccess10next_value17h7fa65820ab7461b6E.exit.i.i: ; preds = %.invoke.i.i
  %.pre.i = load i8, ptr %i.ak, align 8, !range !610, !noalias !36397
  %i.lr = trunc nuw i8 %.pre.i to i1
  br i1 %i.lr, label %_ZN10serde_core2de9MapAccess10next_value17h7fa65820ab7461b6E.exit.i.i.thread35.loopexit, label %_ZN10serde_core2de9MapAccess10next_value17h7fa65820ab7461b6E.exit.i.i._ZN10serde_core2de9MapAccess10next_value17h7fa65820ab7461b6E.exit.i.i.thread_crit_edge

_ZN10serde_core2de9MapAccess10next_value17h7fa65820ab7461b6E.exit.i.i._ZN10serde_core2de9MapAccess10next_value17h7fa65820ab7461b6E.exit.i.i.thread_crit_edge: ; preds = %_ZN10serde_core2de9MapAccess10next_value17h7fa65820ab7461b6E.exit.i.i
  %.pre = load i8, ptr %i.aw, align 1, !range !483, !noalias !36397
  br label %_ZN10serde_core2de9MapAccess10next_value17h7fa65820ab7461b6E.exit.i.i.thread

_ZN10serde_core2de9MapAccess10next_value17h7fa65820ab7461b6E.exit.i.i.thread35.loopexit: ; preds = %_ZN10serde_core2de9MapAccess10next_value17h7fa65820ab7461b6E.exit.i.i
  %.pre406 = load ptr, ptr %i.ax, align 8, !noalias !36397
  br label %_ZN10serde_core2de9MapAccess10next_value17h7fa65820ab7461b6E.exit.i.i.thread35

_ZN10serde_core2de9MapAccess10next_value17h7fa65820ab7461b6E.exit.i.i.thread35: ; preds = %.invoke, %bb.ce, %_ZN10serde_core2de9MapAccess10next_value17h7fa65820ab7461b6E.exit.i.i.thread35.loopexit, %.noexc31.i.i, %.noexc32.i.i
  %i.ls = phi ptr [ %.pre406, %_ZN10serde_core2de9MapAccess10next_value17h7fa65820ab7461b6E.exit.i.i.thread35.loopexit ], [ %i.kl, %.invoke ], [ %i.iy, %bb.ce ], [ %i.jd, %.noexc31.i.i ], [ %i.jh, %.noexc32.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !36397
  br label %"_ZN88_$LT$serde..private..de..FlatMapAccess$LT$E$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17hdf3ff197e173f02fE.exit.i.i"

switch.lookup623:                                 ; preds = %bb.ch
  %switch.idx.cast = trunc nuw i64 %i.jf to i8
  br label %_ZN10serde_core2de9MapAccess10next_value17h7fa65820ab7461b6E.exit.i.i.thread

_ZN10serde_core2de9MapAccess10next_value17h7fa65820ab7461b6E.exit.i.i.thread: ; preds = %bb.cf, %bb.cq, %bb.cp, %bb.co, %bb.cm, %bb.cl, %bb.ck, %switch.lookup623, %_ZN10serde_core2de9MapAccess10next_value17h7fa65820ab7461b6E.exit.i.i._ZN10serde_core2de9MapAccess10next_value17h7fa65820ab7461b6E.exit.i.i.thread_crit_edge
  %i.lt = phi i8 [ %.pre, %_ZN10serde_core2de9MapAccess10next_value17h7fa65820ab7461b6E.exit.i.i._ZN10serde_core2de9MapAccess10next_value17h7fa65820ab7461b6E.exit.i.i.thread_crit_edge ], [ 2, %bb.cm ], [ 0, %bb.co ], [ 1, %bb.cp ], [ 0, %bb.ck ], [ 1, %bb.cl ], [ %switch.idx.cast, %switch.lookup623 ], [ 2, %bb.cq ], [ %i.ja, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !36397
  br label %.outer

"_ZN88_$LT$serde..private..de..FlatMapAccess$LT$E$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hd9d62cae72ee1570E.exit.i.i": ; preds = %bb.ca
  %.pr.i.i = load i8, ptr %i.ai, align 8, !noalias !36397
  %i.lu = icmp eq i8 %.pr.i.i, 22
  br i1 %i.lu, label %.loopexit56.i.i, label %bb.cs

.loopexit56.i.i:                                  ; preds = %"_ZN88_$LT$serde..private..de..FlatMapAccess$LT$E$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hd9d62cae72ee1570E.exit.i.i"
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.pre171.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !noalias !36397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !36397
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef align 8 dereferenceable(32) %i.aj)
          to label %bb.cx unwind label %.loopexit.split-lp.i.i, !noalias !36397

bb.cs:                                            ; preds = %"_ZN88_$LT$serde..private..de..FlatMapAccess$LT$E$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hd9d62cae72ee1570E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !36397
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 32, i1 false), !noalias !36397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !36397
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 32, i1 false), !noalias !36397
  %i.lv = load i64, ptr %i.ap, align 8, !alias.scope !36575, !noalias !36578, !noundef !8 ; 3 uses
  %i.lw = load i64, ptr %i.al, align 8, !range !33, !alias.scope !36575, !noalias !36578, !noundef !8
  %i.lx = icmp eq i64 %i.lv, %i.lw
  br i1 %i.lx, label %bb.ct, label %bb.cw

bb.ct:                                            ; preds = %bb.cs
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hee55a63fecc79af3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
          to label %bb.cw unwind label %bb.cu, !noalias !36581

bb.cu:                                            ; preds = %bb.ct
  %i.ly = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17h513ad4514e2ac782E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.ah) #55
          to label %.body.i.i unwind label %bb.cv, !noalias !36397

bb.cv:                                            ; preds = %bb.cu
  %i.lz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !36581
  unreachable

bb.cw:                                            ; preds = %bb.ct, %bb.cs
  %i.ma = load ptr, ptr %i.ao, align 8, !alias.scope !36575, !noalias !36578, !nonnull !8, !noundef !8
  %i.mb = getelementptr inbounds nuw [64 x i8], ptr %i.ma, i64 %i.lv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.mb, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.ah, i64 64, i1 false), !noalias !36397
  %i.mc = add i64 %i.lv, 1
  store i64 %i.mc, ptr %i.ap, align 8, !alias.scope !36575, !noalias !36578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !36397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !36397
  br label %bb.b

bb.cx:                                            ; preds = %.loopexit56.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !36397
  br label %"_ZN88_$LT$serde..private..de..FlatMapAccess$LT$E$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17hdf3ff197e173f02fE.exit.i.i"

bb.cy:                                            ; preds = %bb.ca
  %lpad.loopexit53.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef align 8 dereferenceable(32) %i.aj) #55
          to label %.body.i.i unwind label %bb.cz, !noalias !36397

bb.cz:                                            ; preds = %bb.cy, %.body.i.i
  %i.md = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !36397
  unreachable

bb.da:                                            ; preds = %bb.bz
  %i.me = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error13missing_field17h83a813535fcbd76fE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1371, i64 noundef 6)
          to label %"_ZN88_$LT$serde..private..de..FlatMapAccess$LT$E$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17hdf3ff197e173f02fE.exit.i.i" unwind label %.loopexit.split-lp.i.i, !noalias !36397

common.resume:                                    ; preds = %bb.go, %bb.gp, %bb.gt, %bb.gw, %.thread29.i15.i, %bb.ea, %bb.eb, %bb.ef, %.thread32.i.i, %.body.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.oz, %bb.ef ], [ %.pn.i.i, %.body.i.i ], [ %i.oq, %bb.eb ], [ %eh.lpad-body35.i.i, %.thread32.i.i ], [ %i.oq, %bb.ea ], [ %i.tb, %bb.go ], [ %eh.lpad-body32.i.i, %.thread29.i15.i ], [ %i.ti, %bb.gw ], [ %i.th, %bb.gt ], [ %i.tb, %bb.gp ]
  resume { ptr, i32 } %common.resume.op

"_ZN88_$LT$serde..private..de..FlatMapAccess$LT$E$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17hdf3ff197e173f02fE.exit.i.i": ; preds = %"_ZN100_$LT$serde..private..de..content..TagOrContentVisitor$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h1c0e35d83fa3356dE.exit.i.i.i", %bb.da, %_ZN10serde_core2de9MapAccess10next_value17h7fa65820ab7461b6E.exit.i.i.thread35, %bb.cx, %bb.cc
  %.sroa.101.1.ph = phi ptr [ %i.me, %bb.da ], [ %.pre171.i.i, %bb.cx ], [ %i.ls, %_ZN10serde_core2de9MapAccess10next_value17h7fa65820ab7461b6E.exit.i.i.thread35 ], [ %i.iw, %bb.cc ], [ %.sroa.43.3.in.i.i.i, %"_ZN100_$LT$serde..private..de..content..TagOrContentVisitor$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h1c0e35d83fa3356dE.exit.i.i.i" ]
  call fastcc void @"_ZN4core3ptr129drop_in_place$LT$alloc..vec..Vec$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17ha6664c47fa641217E"(ptr noalias noundef align 8 dereferenceable(24) %i.al), !noalias !36397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !36397
  store ptr %.sroa.101.1.ph, ptr %0, align 8
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 5, ptr %i.mf, align 8
  br label %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h3bd27a775b254c4eE.exit"

bb.db:                                            ; preds = %bb.bz
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !36397
  store ptr inttoptr (i64 21 to ptr), ptr %i.am, align 8
  switch i8 %.sroa.0.0.i.i.ph, label %default.unreachable [
    i8 0, label %bb.dc
    i8 1, label %bb.ej
    i8 2, label %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_string17h8c89b575616a55baE.exit.thread"
  ]

bb.dc:                                            ; preds = %bb.db
  call void @llvm.experimental.noalias.scope.decl(metadata !36582)
  call void @llvm.experimental.noalias.scope.decl(metadata !36585)
  %.sroa.020.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !36585, !noalias !36582
  %.sroa.221.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.221.0.copyload.i = load ptr, ptr %.sroa.221.0..sroa_idx.i, align 8, !alias.scope !36585, !noalias !36582, !nonnull !8, !noundef !8 ; 4 uses
  %.sroa.322.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %.sroa.322.0.copyload.i = load i64, ptr %.sroa.322.0..sroa_idx.i, align 8, !alias.scope !36585, !noalias !36582 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36587)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !36590
  %i.mg = icmp ult i64 %.sroa.322.0.copyload.i, 144115188075855872
  call void @llvm.assume(i1 %i.mg)
  %.idx.i12.i = shl nuw nsw i64 %.sroa.322.0.copyload.i, 6 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.sroa.221.0.copyload.i, i64 %.idx.i12.i ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  store ptr %.sroa.221.0.copyload.i, ptr %i.mi, align 8, !noalias !36591
  %.sroa.426.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 12 uses
  store ptr %.sroa.221.0.copyload.i, ptr %.sroa.426.0..sroa_idx.i.i, align 8, !noalias !36591
  %.sroa.527.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store i64 %.sroa.020.0.copyload.i, ptr %.sroa.527.0..sroa_idx.i.i, align 8, !noalias !36591
  %.sroa.628.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store ptr %i.mh, ptr %.sroa.628.0..sroa_idx.i.i, align 8, !noalias !36591
  store i8 22, ptr %i.r, align 8, !noalias !36591
  %i.mj = getelementptr inbounds nuw i8, ptr %i.r, i64 64 ; 12 uses
  store i64 0, ptr %i.mj, align 8, !noalias !36591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !36591
  %i.mk = icmp eq i64 %.sroa.322.0.copyload.i, 0
  br i1 %i.mk, label %._crit_edge.thread.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i.i": ; preds = %bb.dc
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %.sroa.61.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.11.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.15.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ml = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.mm = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %.sroa.2.0..sroa_idx.i.i.i.i.i13.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.mn = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.mo = add nsw i64 %.idx.i12.i, -64
  %i.mp = lshr exact i64 %i.mo, 6
  %i.mq = add nuw nsw i64 %i.mp, 1
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i.i": ; preds = %bb.dy, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i.i"
  %i.mr = phi i64 [ 0, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i.i" ], [ %i.mu, %bb.dy ] ; 2 uses
  %.sroa.0.050.i.i.i = phi i8 [ 2, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i.i" ], [ %i.oo, %bb.dy ] ; 3 uses
  %i.ms = phi ptr [ %.sroa.221.0.copyload.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i.i" ], [ %i.mt, %bb.dy ] ; 4 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 64 ; 12 uses
  %.sroa.0.0.copyload14.i.i.i.i.i.i = load i8, ptr %i.ms, align 8, !noalias !36593 ; 3 uses
  %.not.i.i.i.i.i14.i = icmp eq i8 %.sroa.0.0.copyload14.i.i.i.i.i.i, 22
  br i1 %.not.i.i.i.i.i14.i, label %._crit_edge.i.i.i, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i.i"

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i.i"
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ms, i64 1
  %i.mu = add nuw nsw i64 %i.mr, 1                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !36607
  store i8 %.sroa.0.0.copyload14.i.i.i.i.i.i, ptr %i.p, align 8, !noalias !36607
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i.i.i.i.i, i64 31, i1 false), !noalias !36607
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ms, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.mv, i64 32, i1 false), !noalias !36591
  %.sroa.5.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i, align 1, !noalias !36607 ; 2 uses
  %.sroa.61.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.61.0..sroa_idx.i.i.i.i.i, align 8, !noalias !36607 ; 10 uses
  %.sroa.11.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i, align 8, !noalias !36607 ; 5 uses
  %.sroa.15.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.15.0..sroa_idx.i.i.i.i.i, align 8, !noalias !36607 ; 3 uses
  switch i8 %.sroa.0.0.copyload14.i.i.i.i.i.i, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hbcca750456d79a3aE.exit.thread.i.i.i.i.i.i" [
    i8 1, label %bb.dd
    i8 4, label %bb.df
    i8 12, label %bb.dh
    i8 13, label %bb.dk
    i8 14, label %bb.dm
    i8 15, label %bb.dp
  ], !prof !1095

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hbcca750456d79a3aE.exit.thread.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i.i"
  store ptr %i.mt, ptr %.sroa.426.0..sroa_idx.i.i, align 8, !noalias !36591
  store i64 %i.mu, ptr %i.mj, align 8, !noalias !36591
  %i.mw = invoke fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content28ContentDeserializer$LT$E$GT$12invalid_type17hbef5b53211e707e3E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.p, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @49)
          to label %.loopexit.i.i.i unwind label %.thread40.loopexit.split-lp.i.i, !noalias !36591

bb.dd:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i.i"
  %i.mx = icmp eq i8 %.sroa.5.0.copyload.i.i.i.i.i, 0
  br i1 %i.mx, label %bb.dq, label %bb.de, !prof !17

bb.de:                                            ; preds = %bb.dd
  %i.my = zext i8 %.sroa.5.0.copyload.i.i.i.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !36608
  store i64 %i.my, ptr %i.mm, align 8, !noalias !36608
  store i8 1, ptr %i.o, align 8, !noalias !36608
  %i.mz = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.o, ptr noundef nonnull align 1 @418, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @36)
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %bb.dr, !noalias !36608

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !36608
  br label %bb.dq

bb.df:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i.i"
  %i.na = icmp eq i64 %.sroa.61.0.copyload.i.i.i.i.i, 0
  br i1 %i.na, label %bb.dq, label %bb.dg, !prof !17

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !36608
  store i64 %.sroa.61.0.copyload.i.i.i.i.i, ptr %i.ml, align 8, !noalias !36608
  store i8 1, ptr %i.n, align 8, !noalias !36608
  %i.nb = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.n, ptr noundef nonnull align 1 @418, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @36)
          to label %.noexc5.i.i.i.i.i.i.i.i.i unwind label %bb.dr, !noalias !36608

.noexc5.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !36608
  br label %bb.dq

bb.dh:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i.i"
  %i.nc = inttoptr i64 %.sroa.11.0.copyload.i.i.i.i.i to ptr ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.15.0.copyload.i.i.i.i.i, 7
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.di, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i, !prof !17

bb.di:                                            ; preds = %bb.dh
  %i.nd = load i32, ptr %i.nc, align 1
  %i.ne = xor i32 %i.nd, 1953064037
  %i.nf = getelementptr i8, ptr %i.nc, i64 3
  %i.ng = load i32, ptr %i.nf, align 1
  %i.nh = xor i32 %i.ng, 1852795252
  %i.ni = or i32 %i.ne, %i.nh
  %i.nj = icmp ne i32 %i.ni, 0
  %i.nk = zext i1 %i.nj to i32
  %i.nl = icmp eq i32 %i.nk, 0
  br i1 %i.nl, label %"_ZN195_$LT$xtask..common..instance.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..instance..BinarySource$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hf2d5467ad9c8eb98E.exit.i.i.i.i.i.i.i.i.i.i", label %.sink.split.i.i.i.i.i.i.i.i.i.i.i, !prof !17

.sink.split.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.di, %bb.dh
  %i.nm = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error13unknown_field17hb87e30592439f6b2E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.nc, i64 noundef %.sroa.15.0.copyload.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @416, i64 noundef 1)
          to label %"_ZN195_$LT$xtask..common..instance.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..instance..BinarySource$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hf2d5467ad9c8eb98E.exit.i.i.i.i.i.i.i.i.i.i" unwind label %bb.dj, !noalias !36615

bb.dj:                                            ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i
  %i.nn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr %i.mt, ptr %.sroa.426.0..sroa_idx.i.i, align 8, !noalias !36591
  store i64 %i.mu, ptr %i.mj, align 8, !noalias !36591
  %i.no = icmp eq i64 %.sroa.61.0.copyload.i.i.i.i.i, 0
  br i1 %i.no, label %.thread32.i.i, label %.sink.split.i.i.i.i.i

"_ZN195_$LT$xtask..common..instance.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..instance..BinarySource$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hf2d5467ad9c8eb98E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i, %bb.di
  %.sroa.0.0.i.i6.i.i.i.i.i.i.i.i.i = phi ptr [ null, %bb.di ], [ %i.nm, %.sink.split.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.np = icmp eq i64 %.sroa.61.0.copyload.i.i.i.i.i, 0
  br i1 %i.np, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hbcca750456d79a3aE.exit.i.i.i.i.i.i", label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hbcca750456d79a3aE.exit.i.i.i.i.sink.split.i.i"

bb.dk:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i.i"
  %i.nq = inttoptr i64 %.sroa.61.0.copyload.i.i.i.i.i to ptr ; 3 uses
  %.not.i.i7.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.11.0.copyload.i.i.i.i.i, 7
  br i1 %.not.i.i7.i.i.i.i.i.i.i.i.i, label %bb.dl, label %.sink.split.i.i8.i.i.i.i.i.i.i.i.i, !prof !17

bb.dl:                                            ; preds = %bb.dk
  %i.nr = load i32, ptr %i.nq, align 1
  %i.ns = xor i32 %i.nr, 1953064037
  %i.nt = getelementptr i8, ptr %i.nq, i64 3
  %i.nu = load i32, ptr %i.nt, align 1
  %i.nv = xor i32 %i.nu, 1852795252
  %i.nw = or i32 %i.ns, %i.nv
  %i.nx = icmp ne i32 %i.nw, 0
  %i.ny = zext i1 %i.nx to i32
  %i.nz = icmp eq i32 %i.ny, 0
  br i1 %i.nz, label %bb.dq, label %.sink.split.i.i8.i.i.i.i.i.i.i.i.i, !prof !17

.sink.split.i.i8.i.i.i.i.i.i.i.i.i:               ; preds = %bb.dl, %bb.dk
  %i.oa = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error13unknown_field17hb87e30592439f6b2E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.nq, i64 noundef %.sroa.11.0.copyload.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @416, i64 noundef 1)
          to label %bb.dq unwind label %bb.dr, !noalias !36608

bb.dm:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i.i"
  %i.ob = inttoptr i64 %.sroa.11.0.copyload.i.i.i.i.i to ptr ; 3 uses
  %i.oc = invoke fastcc noundef align 8 ptr @"_ZN195_$LT$xtask..common..instance.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..instance..BinarySource$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$11visit_bytes17hfa8258f9bfe0742eE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ob, i64 noundef %.sroa.15.0.copyload.i.i.i.i.i)
          to label %bb.do unwind label %bb.dn, !noalias !36618 ; 2 uses

bb.dn:                                            ; preds = %bb.dm
  %i.od = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr %i.mt, ptr %.sroa.426.0..sroa_idx.i.i, align 8, !noalias !36591
  store i64 %i.mu, ptr %i.mj, align 8, !noalias !36591
  %i.oe = icmp eq i64 %.sroa.61.0.copyload.i.i.i.i.i, 0
  br i1 %i.oe, label %.thread32.i.i, label %.sink.split.i.i.i.i.i

bb.do:                                            ; preds = %bb.dm
  %i.of = icmp eq i64 %.sroa.61.0.copyload.i.i.i.i.i, 0
  br i1 %i.of, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hbcca750456d79a3aE.exit.i.i.i.i.i.i", label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hbcca750456d79a3aE.exit.i.i.i.i.sink.split.i.i"

bb.dp:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i.i"
  %i.og = inttoptr i64 %.sroa.61.0.copyload.i.i.i.i.i to ptr
  %i.oh = invoke fastcc noundef align 8 ptr @"_ZN195_$LT$xtask..common..instance.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..instance..BinarySource$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$11visit_bytes17hfa8258f9bfe0742eE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.og, i64 noundef %.sroa.11.0.copyload.i.i.i.i.i)
          to label %bb.dq unwind label %bb.dr, !noalias !36608

bb.dq:                                            ; preds = %bb.dp, %.sink.split.i.i8.i.i.i.i.i.i.i.i.i, %bb.dl, %.noexc5.i.i.i.i.i.i.i.i.i, %bb.df, %.noexc.i.i.i.i.i.i.i.i.i, %bb.dd
  %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i = phi ptr [ %i.oh, %bb.dp ], [ null, %bb.dl ], [ %i.nb, %.noexc5.i.i.i.i.i.i.i.i.i ], [ %i.mz, %.noexc.i.i.i.i.i.i.i.i.i ], [ null, %bb.df ], [ null, %bb.dd ], [ %i.oa, %.sink.split.i.i8.i.i.i.i.i.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.p)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hbcca750456d79a3aE.exit.i.i.i.i.i.i" unwind label %.thread40.loopexit.i.i, !noalias !36591

bb.dr:                                            ; preds = %bb.dp, %.sink.split.i.i8.i.i.i.i.i.i.i.i.i, %bb.dg, %bb.de
  %lpad.thr_comm.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  store ptr %i.mt, ptr %.sroa.426.0..sroa_idx.i.i, align 8, !noalias !36591
  store i64 %i.mu, ptr %i.mj, align 8, !noalias !36591
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.p) #55
          to label %.thread32.i.i unwind label %bb.ds, !noalias !36607

bb.ds:                                            ; preds = %bb.dr
  %i.oi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !36608
  unreachable

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hbcca750456d79a3aE.exit.i.i.i.i.sink.split.i.i": ; preds = %bb.do, %"_ZN195_$LT$xtask..common..instance.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..instance..BinarySource$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hf2d5467ad9c8eb98E.exit.i.i.i.i.i.i.i.i.i.i"
  %.sink.i.i = phi ptr [ %i.nc, %"_ZN195_$LT$xtask..common..instance.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..instance..BinarySource$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hf2d5467ad9c8eb98E.exit.i.i.i.i.i.i.i.i.i.i" ], [ %i.ob, %bb.do ]
  %.sroa.0.1.i.i.i.i.i.i.i.ph.i.i = phi ptr [ %.sroa.0.0.i.i6.i.i.i.i.i.i.i.i.i, %"_ZN195_$LT$xtask..common..instance.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..instance..BinarySource$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hf2d5467ad9c8eb98E.exit.i.i.i.i.i.i.i.i.i.i" ], [ %i.oc, %bb.do ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink.i.i, i64 noundef %.sroa.61.0.copyload.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !36608
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hbcca750456d79a3aE.exit.i.i.i.i.i.i"

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hbcca750456d79a3aE.exit.i.i.i.i.i.i": ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hbcca750456d79a3aE.exit.i.i.i.i.sink.split.i.i", %bb.dq, %bb.do, %"_ZN195_$LT$xtask..common..instance.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..instance..BinarySource$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hf2d5467ad9c8eb98E.exit.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0.1.i.i.i.i.i.i.i.i.i = phi ptr [ %i.oc, %bb.do ], [ %.sroa.0.0.i.i6.i.i.i.i.i.i.i.i.i, %"_ZN195_$LT$xtask..common..instance.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..instance..BinarySource$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hf2d5467ad9c8eb98E.exit.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i, %bb.dq ], [ %.sroa.0.1.i.i.i.i.i.i.i.ph.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hbcca750456d79a3aE.exit.i.i.i.i.sink.split.i.i" ] ; 2 uses
  %.not11.i.i.i.i.i.i = icmp eq ptr %.sroa.0.1.i.i.i.i.i.i.i.i.i, null
  br i1 %.not11.i.i.i.i.i.i, label %bb.dt, label %.loopexit.i.loopexit.i.i

.sink.split.i.i.i.i.i:                            ; preds = %bb.dn, %bb.dj
  %.sink.i.i.i.i.i = phi ptr [ %i.nc, %bb.dj ], [ %i.ob, %bb.dn ]
  %.pn19.i.ph.i.i.i.i.i = phi { ptr, i32 } [ %i.nn, %bb.dj ], [ %i.od, %bb.dn ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink.i.i.i.i.i, i64 noundef %.sroa.61.0.copyload.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !36608
  br label %.thread32.i.i

.loopexit.i.loopexit.i.i:                         ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hbcca750456d79a3aE.exit.i.i.i.i.i.i"
  store ptr %i.mt, ptr %.sroa.426.0..sroa_idx.i.i, align 8, !noalias !36591
  store i64 %i.mu, ptr %i.mj, align 8, !noalias !36591
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.loopexit.i.loopexit.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hbcca750456d79a3aE.exit.thread.i.i.i.i.i.i"
  %.sroa.918.0.ph.i.i.i = phi ptr [ %i.mw, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hbcca750456d79a3aE.exit.thread.i.i.i.i.i.i" ], [ %.sroa.0.1.i.i.i.i.i.i.i.i.i, %.loopexit.i.loopexit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !36607
  br label %bb.dz

bb.dt:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hbcca750456d79a3aE.exit.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !36607
  %.not14.i.i.i = icmp eq i8 %.sroa.0.050.i.i.i, 2
  br i1 %.not14.i.i.i, label %bb.dv, label %bb.du, !prof !17

._crit_edge.i.i.i:                                ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i.i"
  store ptr %i.mt, ptr %.sroa.426.0..sroa_idx.i.i, align 8, !noalias !36591
  store i64 %i.mr, ptr %i.mj, align 8, !noalias !36591
  %.not.i.i.i13 = icmp eq i8 %.sroa.0.050.i.i.i, 2
  br i1 %.not.i.i.i13, label %._crit_edge.thread.i.i.i, label %.loopexit.i.i12

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.dc
  br label %.loopexit.i.i12

bb.du:                                            ; preds = %bb.dt
  store ptr %i.mt, ptr %.sroa.426.0..sroa_idx.i.i, align 8, !noalias !36591
  store i64 %i.mu, ptr %i.mj, align 8, !noalias !36591
  %i.oj = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15duplicate_field17hfc2127029c9c4083E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @403, i64 noundef 7)
          to label %bb.dz unwind label %.thread40.loopexit.split-lp.i.i, !noalias !36591

bb.dv:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !36621
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i8, ptr %i.r, align 8, !noalias !36591 ; 2 uses
  store i8 22, ptr %i.r, align 8, !noalias !36591
  %.not.i.i.i16.i.i.i = icmp eq i8 %.sroa.0.0.copyload.i.i.i.i.i.i, 22
  br i1 %.not.i.i.i16.i.i.i, label %bb.dw, label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_value17hd6ad610886330bceE.exit.i.i.i", !prof !14

end_hunk_4
begin_hunk_5_@"_ZN5xtask6common8instance1_95_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..instance..BinarySource$GT$11deserialize17hdf01e656d37550d6E":bb.a

.noexc11.i.i:                                     ; preds = %bb.dw
  unreachable

"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_value17hd6ad610886330bceE.exit.i.i.i": ; preds = %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !36622
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.2.0..sroa_idx.i.i.i.i.i13.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.3.0..sroa_idx.i.i.i.i.i.i, i64 31, i1 false), !noalias !36591
  store i8 %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %i.m, align 8, !noalias !36622
  invoke fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h55714d580d5ba6c0E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.q, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.m)
          to label %.noexc12.i.i unwind label %.thread40.loopexit.i.i, !noalias !36591

.noexc12.i.i:                                     ; preds = %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_value17hd6ad610886330bceE.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !36622
  %i.ok = load i8, ptr %i.q, align 8, !range !610, !noalias !36621, !noundef !8
  %i.ol = trunc nuw i8 %i.ok to i1
  br i1 %i.ol, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %.noexc12.i.i
  store ptr %i.mt, ptr %.sroa.426.0..sroa_idx.i.i, align 8, !noalias !36591
  store i64 %i.mu, ptr %i.mj, align 8, !noalias !36591
  %i.om = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.on = load ptr, ptr %i.om, align 8, !noalias !36621, !nonnull !8, !align !461, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !36621
  br label %bb.dz

bb.dy:                                            ; preds = %.noexc12.i.i
  %i.oo = load i8, ptr %i.mn, align 1, !range !610, !noalias !36621, !noundef !8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !36621
  %i.op = icmp eq ptr %i.mt, %i.mh
  br i1 %i.op, label %.loopexit.loopexit.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i.i"

.thread40.loopexit.i.i:                           ; preds = %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_value17hd6ad610886330bceE.exit.i.i.i", %bb.dq
  %lpad.loopexit.i.i10 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.mt, ptr %.sroa.426.0..sroa_idx.i.i, align 8, !noalias !36591
  store i64 %i.mu, ptr %i.mj, align 8, !noalias !36591
  br label %.thread32.i.i

.thread40.loopexit.split-lp.i.i:                  ; preds = %bb.dw, %bb.du, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hbcca750456d79a3aE.exit.thread.i.i.i.i.i.i"
  %lpad.loopexit.split-lp.i.i11 = landingpad { ptr, i32 }
          cleanup
  br label %.thread32.i.i

bb.dz:                                            ; preds = %bb.dx, %bb.du, %.loopexit.i.i.i
  %.sroa.0.0.ph.i.i = phi ptr [ %i.oj, %bb.du ], [ %i.on, %bb.dx ], [ %.sroa.918.0.ph.i.i.i, %.loopexit.i.i.i ]
  store ptr %.sroa.0.0.ph.i.i, ptr %0, align 8, !alias.scope !36631, !noalias !36632
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 5, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !36631, !noalias !36632
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !36591
  invoke fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h2bbd3020dce2675aE"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.mi)
          to label %bb.ec unwind label %bb.ea, !noalias !36591

bb.ea:                                            ; preds = %bb.dz
  %i.oq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.or = load i8, ptr %i.r, align 8, !range !890, !noalias !36591, !noundef !8
  %i.os = icmp eq i8 %i.or, 22
  br i1 %i.os, label %common.resume, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.r)
          to label %common.resume unwind label %bb.ee, !noalias !36591

bb.ec:                                            ; preds = %bb.dz
  %i.ot = load i8, ptr %i.r, align 8, !range !890, !noalias !36591, !noundef !8
  %i.ou = icmp eq i8 %i.ot, 22
  br i1 %i.ou, label %_ZN5serde7private2de7content17visit_content_map17h398d1fdae76aa5acE.exit.i, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.r), !noalias !36591
  br label %_ZN5serde7private2de7content17visit_content_map17h398d1fdae76aa5acE.exit.i

bb.ee:                                            ; preds = %bb.eb
  %i.ov = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !36633
  unreachable

.loopexit.loopexit.i.i:                           ; preds = %bb.dy
  store ptr %i.mh, ptr %.sroa.426.0..sroa_idx.i.i, align 8, !noalias !36591
  store i64 %i.mq, ptr %i.mj, align 8, !noalias !36591
  br label %.loopexit.i.i12

.loopexit.i.i12:                                  ; preds = %.loopexit.loopexit.i.i, %._crit_edge.thread.i.i.i, %._crit_edge.i.i.i
  %i.ow = phi i8 [ 0, %._crit_edge.thread.i.i.i ], [ %.sroa.0.050.i.i.i, %._crit_edge.i.i.i ], [ %i.oo, %.loopexit.loopexit.i.i ]
  %.sroa.0.0.insert.ext.i15.i = zext nneg i8 %i.ow to i64
  %i.ox = inttoptr i64 %.sroa.0.0.insert.ext.i15.i to ptr
  store ptr %i.ox, ptr %i.s, align 8, !noalias !36591
  %.sroa.5.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store i8 2, ptr %.sroa.5.0..sroa_idx.i16.i, align 8, !noalias !36591
  %i.oy = invoke fastcc noundef align 8 ptr @"_ZN5serde7private2de7content24MapDeserializer$LT$E$GT$3end17h755ad06f5a4a7c7aE"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.r)
          to label %bb.eg unwind label %bb.ef, !noalias !36591 ; 2 uses

bb.ef:                                            ; preds = %.loopexit.i.i12
  %i.oz = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr58drop_in_place$LT$xtask..common..instance..BinarySource$GT$17h0d6519ca9fbaec86E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.s) #55
          to label %common.resume unwind label %bb.ei, !noalias !36591

bb.eg:                                            ; preds = %.loopexit.i.i12
  %.not.i.i = icmp eq ptr %i.oy, null
  br i1 %.not.i.i, label %bb.eh, label %"_ZN4core3ptr58drop_in_place$LT$xtask..common..instance..BinarySource$GT$17h0d6519ca9fbaec86E.exit.i17.i"

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.s, i64 48, i1 false), !noalias !36632
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !36591
  br label %_ZN5serde7private2de7content17visit_content_map17h398d1fdae76aa5acE.exit.i

"_ZN4core3ptr58drop_in_place$LT$xtask..common..instance..BinarySource$GT$17h0d6519ca9fbaec86E.exit.i17.i": ; preds = %bb.eg
  store ptr %i.oy, ptr %0, align 8, !alias.scope !36631, !noalias !36632
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 5, ptr %i.pa, align 8, !alias.scope !36631, !noalias !36632
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !36591
  br label %_ZN5serde7private2de7content17visit_content_map17h398d1fdae76aa5acE.exit.i

bb.ei:                                            ; preds = %.thread32.i.i, %bb.ef
  %i.pb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !36591
  unreachable

.thread32.i.i:                                    ; preds = %.thread40.loopexit.split-lp.i.i, %.thread40.loopexit.i.i, %.sink.split.i.i.i.i.i, %bb.dr, %bb.dn, %bb.dj
  %eh.lpad-body35.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i.i11, %.thread40.loopexit.split-lp.i.i ], [ %.pn19.i.ph.i.i.i.i.i, %.sink.split.i.i.i.i.i ], [ %i.od, %bb.dn ], [ %lpad.thr_comm.i.i.i.i.i.i.i.i.i, %bb.dr ], [ %i.nn, %bb.dj ], [ %lpad.loopexit.i.i10, %.thread40.loopexit.i.i ]
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$serde..private..de..content..MapDeserializer$LT$serde_json..error..Error$GT$$GT$17h7da097e91891a6abE"(ptr noalias noundef align 8 dereferenceable(72) %i.r) #55
          to label %common.resume unwind label %bb.ei, !noalias !36591

_ZN5serde7private2de7content17visit_content_map17h398d1fdae76aa5acE.exit.i: ; preds = %"_ZN4core3ptr58drop_in_place$LT$xtask..common..instance..BinarySource$GT$17h0d6519ca9fbaec86E.exit.i17.i", %bb.eh, %bb.ed, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !36590
  br label %"_ZN106_$LT$serde..private..de..content..ContentDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h3bd27a775b254c4eE.exit"

bb.ej:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18)
  call void @llvm.experimental.noalias.scope.decl(metadata !36636)
  %.sroa.01.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !36636, !noalias !36639
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.22.0.copyload.i = load ptr, ptr %.sroa.22.0..sroa_idx.i, align 8, !alias.scope !36636, !noalias !36639, !nonnull !8, !noundef !8 ; 4 uses
  %.sroa.33.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %.sroa.33.0.copyload.i = load i64, ptr %.sroa.33.0..sroa_idx.i, align 8, !alias.scope !36636, !noalias !36639 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !36641
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i)
  %i.pc = icmp ult i64 %.sroa.33.0.copyload.i, 144115188075855872
  call void @llvm.assume(i1 %i.pc)
  %.idx.i12.i15 = shl nuw nsw i64 %.sroa.33.0.copyload.i, 6 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload.i, i64 %.idx.i12.i15 ; 3 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  store ptr %.sroa.22.0.copyload.i, ptr %i.pe, align 8, !noalias !36642
  %.sroa.423.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 13 uses
  store ptr %.sroa.22.0.copyload.i, ptr %.sroa.423.0..sroa_idx.i.i, align 8, !noalias !36642
  %.sroa.524.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i64 %.sroa.01.0.copyload.i, ptr %.sroa.524.0..sroa_idx.i.i, align 8, !noalias !36642
  %.sroa.625.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store ptr %i.pd, ptr %.sroa.625.0..sroa_idx.i.i, align 8, !noalias !36642
  store i8 22, ptr %i.k, align 8, !noalias !36642
  %i.pf = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 13 uses
  store i64 0, ptr %i.pf, align 8, !noalias !36642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !36642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !36646
  store ptr null, ptr %i.j, align 8, !noalias !36646
  %i.pg = icmp eq i64 %.sroa.33.0.copyload.i, 0
  br i1 %i.pg, label %.thread104.thread.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i.i16"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i.i16": ; preds = %bb.ej
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i17 = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %.sroa.51.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.10.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.14.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ph = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 6 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 9 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.pk = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.3.0..sroa_idx.i.i.i80.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i81.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.556.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.657.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.pl = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 5 uses
  %.sroa.725.0..sroa_idx26.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i13.i18 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.pm = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.pn = add nsw i64 %.idx.i12.i15, -64
  %i.po = lshr exact i64 %i.pn, 6
  %i.pp = add nuw nsw i64 %i.po, 1
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i.i19"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i.i19": ; preds = %bb.fy, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i.i16"
  %i.pq = phi i64 [ 0, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i.i16" ], [ %i.pt, %bb.fy ] ; 2 uses
  %.sroa.0.0139.i.i.i = phi i8 [ 2, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i.i16" ], [ %.sroa.0.1.i.i.i27, %bb.fy ] ; 3 uses
  %i.pr = phi ptr [ %.sroa.22.0.copyload.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i.i16" ], [ %i.ps, %bb.fy ] ; 4 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 64 ; 14 uses
  %.sroa.0.0.copyload11.i.i.i.i.i.i = load i8, ptr %i.pr, align 8, !noalias !36650 ; 3 uses
  %.not.i.i.i.i.i14.i20 = icmp eq i8 %.sroa.0.0.copyload11.i.i.i.i.i.i, 22
  br i1 %.not.i.i.i.i.i14.i20, label %.thread104.i.i.i, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i.i21"

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i.i21": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i.i19"
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i22 = getelementptr inbounds nuw i8, ptr %i.pr, i64 1
  %i.pt = add nuw nsw i64 %i.pq, 1                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !36661
  store i8 %.sroa.0.0.copyload11.i.i.i.i.i.i, ptr %i.g, align 8, !noalias !36661
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i17, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i.i.i.i.i22, i64 31, i1 false), !noalias !36661
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pr, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.pu, i64 32, i1 false), !noalias !36642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !36661
  %.sroa.4.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i17, align 1, !noalias !36661 ; 2 uses
  %.sroa.51.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.51.0..sroa_idx.i.i.i.i.i, align 8, !noalias !36661 ; 11 uses
  %.sroa.10.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i, align 8, !noalias !36661 ; 5 uses
  %.sroa.14.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i, align 8, !noalias !36661 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36662)
  call void @llvm.experimental.noalias.scope.decl(metadata !36665)
  call void @llvm.experimental.noalias.scope.decl(metadata !36668)
  switch i8 %.sroa.0.0.copyload11.i.i.i.i.i.i, label %.noexc9.i.i.i.i.i.i [
    i8 1, label %bb.ek
    i8 4, label %bb.eo
    i8 12, label %bb.es
    i8 13, label %bb.fb
    i8 14, label %bb.fh
    i8 15, label %bb.fl
  ], !prof !1095

.noexc9.i.i.i.i.i.i:                              ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i.i21"
  %i.pv = invoke fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content28ContentDeserializer$LT$E$GT$12invalid_type17hbef5b53211e707e3E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.g, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @54)
          to label %.noexc.i.i.i unwind label %.loopexit.i.i.i24, !noalias !36646

.noexc.i.i.i:                                     ; preds = %.noexc9.i.i.i.i.i.i
  store ptr %i.pv, ptr %i.ph, align 8, !alias.scope !36671, !noalias !36672
  store i8 1, ptr %i.f, align 8, !alias.scope !36671, !noalias !36672
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h9ab0c70be2ab7b71E.exit.i.i.i.i.i.i"

bb.ek:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i.i21"
  call void @llvm.experimental.noalias.scope.decl(metadata !36676)
  call void @llvm.experimental.noalias.scope.decl(metadata !36679)
  switch i8 %.sroa.4.0.copyload.i.i.i.i.i, label %bb.el [
    i8 0, label %bb.em
    i8 1, label %bb.en
  ], !prof !899

bb.el:                                            ; preds = %bb.ek
  %i.pw = zext i8 %.sroa.4.0.copyload.i.i.i.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !36682
  store i64 %i.pw, ptr %i.pk, align 8, !noalias !36682
  store i8 1, ptr %i.e, align 8, !noalias !36682
  %i.px = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull align 1 @423, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @36)
          to label %.noexc.i.i.i.i.i.i.i.i.i34 unwind label %bb.fn, !noalias !36683

.noexc.i.i.i.i.i.i.i.i.i34:                       ; preds = %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !36682
  store ptr %i.px, ptr %i.ph, align 8, !alias.scope !36684, !noalias !36672
  br label %.sink.split.i.i.i.i.i.i.i.i.i

bb.em:                                            ; preds = %bb.ek
  store i8 0, ptr %i.pi, align 1, !alias.scope !36684, !noalias !36672
  br label %.sink.split.i.i.i.i.i.i.i.i.i

bb.en:                                            ; preds = %bb.ek
  store i8 1, ptr %i.pi, align 1, !alias.scope !36684, !noalias !36672
  br label %.sink.split.i.i.i.i.i.i.i.i.i

bb.eo:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i.i21"
  call void @llvm.experimental.noalias.scope.decl(metadata !36685)
  switch i64 %.sroa.51.0.copyload.i.i.i.i.i, label %bb.ep [
    i64 0, label %bb.eq
    i64 1, label %bb.er
  ], !prof !899

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !36688
  store i64 %.sroa.51.0.copyload.i.i.i.i.i, ptr %i.pj, align 8, !noalias !36688
  store i8 1, ptr %i.d, align 8, !noalias !36688
  %i.py = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 1 @423, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @36)
          to label %.noexc4.i.i.i.i.i.i.i.i.i unwind label %bb.fn, !noalias !36683

.noexc4.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !36688
  store ptr %i.py, ptr %i.ph, align 8, !alias.scope !36689, !noalias !36672
  br label %.sink.split.i.i.i.i.i.i.i.i.i

bb.eq:                                            ; preds = %bb.eo
  store i8 0, ptr %i.pi, align 1, !alias.scope !36689, !noalias !36672
  br label %.sink.split.i.i.i.i.i.i.i.i.i

bb.er:                                            ; preds = %bb.eo
  store i8 1, ptr %i.pi, align 1, !alias.scope !36689, !noalias !36672
  br label %.sink.split.i.i.i.i.i.i.i.i.i

bb.es:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i.i21"
  %i.pz = inttoptr i64 %.sroa.10.0.copyload.i.i.i.i.i to ptr ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36690)
  call void @llvm.experimental.noalias.scope.decl(metadata !36693)
  %cond.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.14.0.copyload.i.i.i.i.i, 7
  br i1 %cond.i.i.i.i.i.i.i.i.i.i.i, label %bb.et, label %bb.ew, !prof !36696

bb.et:                                            ; preds = %bb.es
  %i.qa = load i32, ptr %i.pz, align 1
  %i.qb = xor i32 %i.qa, 1953064037
  %i.qc = getelementptr i8, ptr %i.pz, i64 3
  %i.qd = load i32, ptr %i.qc, align 1
  %i.qe = xor i32 %i.qd, 1852795252
  %i.qf = or i32 %i.qb, %i.qe
  %i.qg = icmp ne i32 %i.qf, 0
  %i.qh = zext i1 %i.qg to i32
  %i.qi = icmp eq i32 %i.qh, 0
  br i1 %i.qi, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  store i8 0, ptr %i.pi, align 1, !alias.scope !36697, !noalias !36698
  br label %bb.ez

bb.ev:                                            ; preds = %bb.et
  %i.qj = load i32, ptr %i.pz, align 1
  %i.qk = xor i32 %i.qj, 1936876918
  %i.ql = getelementptr i8, ptr %i.pz, i64 3
  %i.qm = load i32, ptr %i.ql, align 1
  %i.qn = xor i32 %i.qm, 1852795251
  %i.qo = or i32 %i.qk, %i.qn
  %i.qp = icmp ne i32 %i.qo, 0
  %i.qq = zext i1 %i.qp to i32
  %i.qr = icmp eq i32 %i.qq, 0
  br i1 %i.qr, label %bb.ex, label %bb.ew, !prof !17

bb.ew:                                            ; preds = %bb.ev, %bb.es
  %i.qs = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error13unknown_field17hb87e30592439f6b2E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.pz, i64 noundef %.sroa.14.0.copyload.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @421, i64 noundef 2)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i unwind label %bb.ey, !noalias !36701

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.ew
  store ptr %i.qs, ptr %i.ph, align 8, !alias.scope !36697, !noalias !36698
  br label %bb.ez

bb.ex:                                            ; preds = %bb.ev
  store i8 1, ptr %i.pi, align 1, !alias.scope !36697, !noalias !36698
  br label %bb.ez

bb.ey:                                            ; preds = %bb.ew
  %i.qt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr %i.ps, ptr %.sroa.423.0..sroa_idx.i.i, align 8, !noalias !36642
  store i64 %i.pt, ptr %i.pf, align 8, !noalias !36642
  %i.qu = icmp eq i64 %.sroa.51.0.copyload.i.i.i.i.i, 0
  br i1 %i.qu, label %bb.fp, label %.sink.split.i.i.i.i.i31

bb.ez:                                            ; preds = %bb.ex, %.noexc.i.i.i.i.i.i.i.i.i.i, %bb.eu
  %.sink.i.i5.i.i.i.i.i.i.i.i.i = phi i8 [ 0, %bb.ex ], [ 1, %.noexc.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.eu ]
  store i8 %.sink.i.i5.i.i.i.i.i.i.i.i.i, ptr %i.f, align 8, !alias.scope !36697, !noalias !36698
  %i.qv = icmp eq i64 %.sroa.51.0.copyload.i.i.i.i.i, 0
  br i1 %i.qv, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h9ab0c70be2ab7b71E.exit.i.i.i.i.i.i", label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.pz, i64 noundef %.sroa.51.0.copyload.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !36702
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h9ab0c70be2ab7b71E.exit.i.i.i.i.i.i"

bb.fb:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i.i21"
  %i.qw = inttoptr i64 %.sroa.51.0.copyload.i.i.i.i.i to ptr ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36705)
  call void @llvm.experimental.noalias.scope.decl(metadata !36708)
  %cond.i.i6.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.10.0.copyload.i.i.i.i.i, 7
  br i1 %cond.i.i6.i.i.i.i.i.i.i.i.i, label %bb.fc, label %bb.ff, !prof !36696

bb.fc:                                            ; preds = %bb.fb
  %i.qx = load i32, ptr %i.qw, align 1
  %i.qy = xor i32 %i.qx, 1953064037
  %i.qz = getelementptr i8, ptr %i.qw, i64 3
  %i.ra = load i32, ptr %i.qz, align 1
  %i.rb = xor i32 %i.ra, 1852795252
  %i.rc = or i32 %i.qy, %i.rb
  %i.rd = icmp ne i32 %i.rc, 0
  %i.re = zext i1 %i.rd to i32
  %i.rf = icmp eq i32 %i.re, 0
  br i1 %i.rf, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  store i8 0, ptr %i.pi, align 1, !alias.scope !36711, !noalias !36712
  br label %.sink.split.i.i.i.i.i.i.i.i.i

bb.fe:                                            ; preds = %bb.fc
  %i.rg = load i32, ptr %i.qw, align 1
  %i.rh = xor i32 %i.rg, 1936876918
  %i.ri = getelementptr i8, ptr %i.qw, i64 3
  %i.rj = load i32, ptr %i.ri, align 1
  %i.rk = xor i32 %i.rj, 1852795251
  %i.rl = or i32 %i.rh, %i.rk
  %i.rm = icmp ne i32 %i.rl, 0
  %i.rn = zext i1 %i.rm to i32
  %i.ro = icmp eq i32 %i.rn, 0
  br i1 %i.ro, label %bb.fg, label %bb.ff, !prof !17

bb.ff:                                            ; preds = %bb.fe, %bb.fb
  %i.rp = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error13unknown_field17hb87e30592439f6b2E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.qw, i64 noundef %.sroa.10.0.copyload.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @421, i64 noundef 2)
          to label %.noexc10.i.i.i.i.i.i.i.i.i unwind label %bb.fn, !noalias !36683

.noexc10.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.ff
  store ptr %i.rp, ptr %i.ph, align 8, !alias.scope !36711, !noalias !36712
  br label %.sink.split.i.i.i.i.i.i.i.i.i

bb.fg:                                            ; preds = %bb.fe
  store i8 1, ptr %i.pi, align 1, !alias.scope !36711, !noalias !36712
  br label %.sink.split.i.i.i.i.i.i.i.i.i

bb.fh:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i.i21"
  %i.rq = inttoptr i64 %.sroa.10.0.copyload.i.i.i.i.i to ptr ; 3 uses
  invoke fastcc void @"_ZN208_$LT$xtask..common..instance..release.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..instance..release..Release$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$11visit_bytes17hdd3b90dbb0733490E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.rq, i64 noundef %.sroa.14.0.copyload.i.i.i.i.i)
          to label %bb.fj unwind label %bb.fi, !noalias !36715

bb.fi:                                            ; preds = %bb.fh
end_hunk_5
begin_hunk_6_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h33e0f7cbe65fa766E":bb.a
  br label %bb.c

bb.b:                                             ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44779
  call fastcc void @"_ZN101_$LT$serde_json..iter..LineColIterator$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h92f8f7b98fabe574E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef align 8 dereferenceable(32) %i.e), !noalias !44776
  %i.l = load i8, ptr %i.a, align 8, !range !483, !noalias !44779, !noundef !8
  switch i8 %i.l, label %bb.g [
    i8 2, label %.thread.i.i
    i8 0, label %.thread30.i.i.i
  ], !prof !2338

.thread30.i.i.i:                                  ; preds = %bb.b
  %i.m = load i8, ptr %i.f, align 1, !noalias !44779, !noundef !8 ; 2 uses
  store i8 1, ptr %i.c, align 8, !alias.scope !44775, !noalias !44776
  store i8 %i.m, ptr %i.d, align 1, !alias.scope !44775, !noalias !44776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44779
  br label %bb.c

.thread.i.i:                                      ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44779
  br label %.loopexit.i.i

bb.c:                                             ; preds = %.thread30.i.i.i, %.thread.i.i.i
  %i.n = phi i8 [ %i.k, %.thread.i.i.i ], [ %i.m, %.thread30.i.i.i ] ; 2 uses
  switch i8 %i.n, label %.loopexit.i.i [
    i8 32, label %bb.d
    i8 10, label %bb.d
    i8 9, label %bb.d
    i8 13, label %bb.d
    i8 110, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  store i8 0, ptr %i.c, align 8, !alias.scope !44780, !noalias !44783
  %i.o = load i64, ptr %i.b, align 8, !range !929, !alias.scope !44780, !noalias !44783 ; 2 uses
  %.not.i.not.i.i.i = icmp eq i64 %i.o, -9223372036854775808
  br i1 %.not.i.not.i.i.i, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i.i.backedge", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i64, ptr %i.g, align 8, !alias.scope !44784, !noalias !44787, !noundef !8 ; 3 uses
  %i.q = icmp eq i64 %i.p, %i.o
  br i1 %i.q, label %bb.f, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i.i.i.i"

bb.f:                                             ; preds = %bb.e
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha41f396e8ea6efa1E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1685), !noalias !44783
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i.i.i.i": ; preds = %bb.f, %bb.e
  %i.r = load ptr, ptr %i.h, align 8, !alias.scope !44784, !noalias !44787, !nonnull !8, !noundef !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 %i.n, ptr %i.s, align 1, !noalias !44783
  %i.t = add i64 %i.p, 1
  store i64 %i.t, ptr %i.g, align 8, !alias.scope !44784, !noalias !44787
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i.i.backedge"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i.i.backedge": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i.i.i.i", %bb.d
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i.i"

bb.g:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !noalias !44779, !nonnull !8, !noundef !8
  %i.w = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.v), !noalias !44789
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44779
  br label %bb.k

.loopexit.i.i:                                    ; preds = %bb.c, %.thread.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44790)
  %i.x = tail call fastcc { i64, ptr } @"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_u6417h20f710551ace4b97E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %1), !noalias !44793 ; 2 uses
  %i.y = extractvalue { i64, ptr } %i.x, 0
  %spec.select.i.i.i = add i64 %i.y, 1
  %i.z = extractvalue { i64, ptr } %i.x, 1
  %.sink2.i.i.i = ptrtoint ptr %i.z to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink2.i.i.i, ptr %i.aa, align 8, !alias.scope !44793, !noalias !44794
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h723b5f9bb8c400daE.exit"

bb.h:                                             ; preds = %bb.c
  store i8 0, ptr %i.c, align 8, !alias.scope !44796, !noalias !44799
  %i.ab = load i64, ptr %i.b, align 8, !range !929, !alias.scope !44796, !noalias !44799 ; 2 uses
  %.not.i.not.i.i = icmp eq i64 %i.ab, -9223372036854775808
  br i1 %.not.i.not.i.i, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load i64, ptr %i.g, align 8, !alias.scope !44800, !noalias !44803, !noundef !8 ; 3 uses
  %i.ad = icmp eq i64 %i.ac, %i.ab
  br i1 %i.ad, label %bb.j, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i.i.i"

bb.j:                                             ; preds = %bb.i
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha41f396e8ea6efa1E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1685), !noalias !44799
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i.i.i": ; preds = %bb.j, %bb.i
  %i.ae = load ptr, ptr %i.h, align 8, !alias.scope !44800, !noalias !44803, !nonnull !8, !noundef !8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 110, ptr %i.af, align 1, !noalias !44799
  %i.ag = add i64 %i.ac, 1
  store i64 %i.ag, ptr %i.g, align 8, !alias.scope !44800, !noalias !44803
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i.i.i", %bb.h
  %i.ah = tail call fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h6d510fe3703a8057E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @93, i64 noundef 3), !noalias !44799 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h723b5f9bb8c400daE.exit", label %bb.k

bb.k:                                             ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i", %bb.g
  %.sink.i.i = phi ptr [ %i.w, %bb.g ], [ %i.ah, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i" ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i.i, ptr %i.ai, align 8, !alias.scope !44799, !noalias !44805
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h723b5f9bb8c400daE.exit"

"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h723b5f9bb8c400daE.exit": ; preds = %.loopexit.i.i, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i", %bb.k
  %.sink21.i.i = phi i64 [ 2, %bb.k ], [ %spec.select.i.i.i, %.loopexit.i.i ], [ 0, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i" ]
  store i64 %.sink21.i.i, ptr %0, align 8, !alias.scope !44799, !noalias !44805
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h3bf21d68fb5a0869E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [32 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44806)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44809)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44811)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44814)
  %i.i = load i8, ptr %1, align 8, !range !714, !alias.scope !44816, !noalias !44817, !noundef !8
  switch i8 %i.i, label %bb.b [
    i8 12, label %bb.c
    i8 13, label %bb.c
    i8 21, label %bb.d
  ], !prof !11818

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !44818
  call fastcc void @_ZN5serde7private2de7content18content_unexpected17hea1ecf289fede1deE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1), !noalias !44817
  %i.j = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 1 @38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @36)
          to label %bb.u unwind label %bb.t, !noalias !44818

bb.c:                                             ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44818
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !44806
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 22, ptr %i.k, align 8, !noalias !44818
  call fastcc void @"_ZN184_$LT$xtask..common..command.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..command..SyncMode$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h8d39d63b84df7ed9E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.a), !noalias !44816
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44818
  br label %"_ZN5xtask6common7command1_90_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..command..SyncMode$GT$11deserialize17he242df48b5df3b21E.exit"

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.l, align 8, !alias.scope !44816, !noalias !44817
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !44816, !noalias !44817, !nonnull !8, !noundef !8 ; 9 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !44816, !noalias !44817 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !44818
  %i.m = icmp ult i64 %.sroa.3.0.copyload.i.i, 144115188075855872
  tail call void @llvm.assume(i1 %i.m)
  %.idx.i.i = shl nuw nsw i64 %.sroa.3.0.copyload.i.i, 6
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 %.idx.i.i
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.h, align 8, !alias.scope !44819, !noalias !44822
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.o, align 8, !alias.scope !44819, !noalias !44822
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.p, align 8, !alias.scope !44819, !noalias !44822
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.n, ptr %i.q, align 8, !alias.scope !44819, !noalias !44822
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44824)
  %i.r = icmp eq i64 %.sroa.3.0.copyload.i.i, 0
  br i1 %i.r, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.thread.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i"

bb.e:                                             ; preds = %bb.o, %bb.f
  %.pn24.i.i = phi { ptr, i32 } [ %i.s, %bb.f ], [ %.pn.i.i, %bb.o ]
  invoke fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h2bbd3020dce2675aE"(ptr noalias noundef align 8 dereferenceable(32) %i.h) #55
          to label %.thread14.i.i unwind label %bb.s, !noalias !44818

bb.f:                                             ; preds = %bb.q, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.thread.i.i"
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i": ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 64 ; 2 uses
  store ptr %i.t, ptr %i.p, align 8, !alias.scope !44824, !noalias !44827
  %.sroa.02.0.copyload.i.i = load i8, ptr %.sroa.2.0.copyload.i.i, align 8, !noalias !44829 ; 2 uses
  %.not.i.i = icmp eq i8 %.sroa.02.0.copyload.i.i, 22
  br i1 %.not.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.thread.i.i", label %bb.g, !prof !6578

bb.g:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i"
  %.sroa.7.0..sroa.2.8..sroa.4.0.copyload.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 1
  %.sroa.25.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !44818
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.25.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa.2.8..sroa.4.0.copyload.i.sroa_idx.i.i, i64 31, i1 false), !noalias !44818
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !44818
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false), !noalias !44818
  store i8 %.sroa.02.0.copyload.i.i, ptr %i.g, align 8, !noalias !44818
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !44818
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44830)
  %i.v = icmp eq i64 %.sroa.3.0.copyload.i.i, 1
  br i1 %i.v, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit28.thread.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit28.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.thread.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i", %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !44818
  store i8 11, ptr %i.e, align 8, !noalias !44818
  %i.w = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull align 1 @35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @36)
          to label %bb.h unwind label %bb.f, !noalias !44818

bb.h:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.thread.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !44818
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8, !alias.scope !44817, !noalias !44816
  store i8 1, ptr %0, align 8, !alias.scope !44817, !noalias !44816
  br label %bb.i

bb.i:                                             ; preds = %bb.r, %bb.h
  call fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h2bbd3020dce2675aE"(ptr noalias noundef align 8 dereferenceable(32) %i.h), !noalias !44818
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !44818
  br label %"_ZN5xtask6common7command1_90_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..command..SyncMode$GT$11deserialize17he242df48b5df3b21E.exit"

bb.j:                                             ; preds = %"_ZN4core3ptr134drop_in_place$LT$core..option..Option$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h855d6e31624cc010E.exit.i.i", %"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17h513ad4514e2ac782E.exit.i.i.i"
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.l, %bb.j
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.aa, %bb.l ], [ %i.y, %bb.j ]
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef align 8 dereferenceable(32) %i.f) #55
          to label %bb.o unwind label %bb.s, !noalias !44818

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit28.i.i": ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 128
  store ptr %i.z, ptr %i.p, align 8, !alias.scope !44830, !noalias !44833
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.t, i64 64, i1 false), !noalias !44835
  %.pr.i.i = load i8, ptr %i.d, align 8, !noalias !44818
  %.not22.i.i = icmp eq i8 %.pr.i.i, 22
  br i1 %.not22.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit28.thread.i.i", label %bb.k

bb.k:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit28.i.i"
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.d) #57
          to label %"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17h513ad4514e2ac782E.exit.i.i.i" unwind label %bb.l, !noalias !44818, !inline_history !14900

bb.l:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.ab) #58
          to label %.body.i.i unwind label %bb.m, !noalias !44818, !inline_history !14900

bb.m:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !44836, !inline_history !14900
  unreachable

"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17h513ad4514e2ac782E.exit.i.i.i": ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.ad) #57
          to label %"_ZN4core3ptr134drop_in_place$LT$core..option..Option$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h855d6e31624cc010E.exit.i.i" unwind label %bb.j, !noalias !44818

"_ZN4core3ptr134drop_in_place$LT$core..option..Option$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h855d6e31624cc010E.exit.i.i": ; preds = %"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17h513ad4514e2ac782E.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !44818
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !44818
  store i8 11, ptr %i.c, align 8, !noalias !44818
  %i.ae = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 1 @35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @36)
          to label %bb.n unwind label %bb.j, !noalias !44818

bb.n:                                             ; preds = %"_ZN4core3ptr134drop_in_place$LT$core..option..Option$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h855d6e31624cc010E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !44818
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !alias.scope !44817, !noalias !44816
  store i8 1, ptr %0, align 8, !alias.scope !44817, !noalias !44816
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef align 8 dereferenceable(32) %i.f)
          to label %bb.q unwind label %bb.p, !noalias !44818

bb.o:                                             ; preds = %bb.p, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.ag, %bb.p ], [ %eh.lpad-body.i.i, %.body.i.i ]
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef align 8 dereferenceable(32) %i.g) #55
          to label %bb.e unwind label %bb.s, !noalias !44818

bb.p:                                             ; preds = %bb.n
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !44818
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef align 8 dereferenceable(32) %i.g)
          to label %bb.r unwind label %bb.f, !noalias !44818

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !44818
  br label %bb.i

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit28.thread.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit28.i.i", %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !44818
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44818
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !44818
  %.sroa.012.0.copyload.i.i = load i8, ptr %i.f, align 8, !noalias !44818
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 33
  %.sroa.819.0..sroa_idx20.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.819.0..sroa_idx20.i.i, ptr noundef nonnull align 1 dereferenceable(31) %i.ah, i64 31, i1 false), !noalias !44818
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !44818
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !44818
  call fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h2bbd3020dce2675aE"(ptr noalias noundef align 8 dereferenceable(32) %i.h), !noalias !44818
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !44818
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 %.sroa.012.0.copyload.i.i, ptr %i.ai, align 8, !noalias !44818
  call fastcc void @"_ZN184_$LT$xtask..common..command.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..command..SyncMode$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h8d39d63b84df7ed9E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.a), !noalias !44816
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44818
  br label %"_ZN5xtask6common7command1_90_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..command..SyncMode$GT$11deserialize17he242df48b5df3b21E.exit"

bb.s:                                             ; preds = %bb.t, %bb.o, %.body.i.i, %bb.e
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !44818
  unreachable

bb.t:                                             ; preds = %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1) #55
          to label %.thread14.i.i unwind label %bb.s, !noalias !44817

bb.u:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44818
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.al, align 8, !alias.scope !44817, !noalias !44816
  store i8 1, ptr %0, align 8, !alias.scope !44817, !noalias !44816
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1), !noalias !44817
  br label %"_ZN5xtask6common7command1_90_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..command..SyncMode$GT$11deserialize17he242df48b5df3b21E.exit"

.thread14.i.i:                                    ; preds = %bb.t, %bb.e
  %.pn2612.i.i = phi { ptr, i32 } [ %.pn24.i.i, %bb.e ], [ %i.ak, %bb.t ]
  resume { ptr, i32 } %.pn2612.i.i

"_ZN5xtask6common7command1_90_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..command..SyncMode$GT$11deserialize17he242df48b5df3b21E.exit": ; preds = %bb.c, %bb.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit28.thread.i.i", %bb.u
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h47b19c6f7614efdfE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [32 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44841)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44844)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44846)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44849)
  %i.i = load i8, ptr %1, align 8, !range !714, !alias.scope !44851, !noalias !44852, !noundef !8
  switch i8 %i.i, label %bb.b [
    i8 12, label %bb.c
    i8 13, label %bb.c
    i8 21, label %bb.d
  ], !prof !11818

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !44853
  call fastcc void @_ZN5serde7private2de7content18content_unexpected17hea1ecf289fede1deE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1), !noalias !44852
  %i.j = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 1 @38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @36)
          to label %bb.u unwind label %bb.t, !noalias !44853

bb.c:                                             ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44853
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !44841
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 22, ptr %i.k, align 8, !noalias !44853
  call fastcc void @"_ZN185_$LT$xtask..common..assets.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..assets..AssetFormat$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h2f240f0d822f778dE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.a), !noalias !44851
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44853
  br label %"_ZN5xtask6common6assets1_92_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..assets..AssetFormat$GT$11deserialize17he93d615091eb5726E.exit"

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.l, align 8, !alias.scope !44851, !noalias !44852
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !44851, !noalias !44852, !nonnull !8, !noundef !8 ; 9 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !44851, !noalias !44852 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !44853
  %i.m = icmp ult i64 %.sroa.3.0.copyload.i.i, 144115188075855872
  tail call void @llvm.assume(i1 %i.m)
  %.idx.i.i = shl nuw nsw i64 %.sroa.3.0.copyload.i.i, 6
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 %.idx.i.i
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.h, align 8, !alias.scope !44854, !noalias !44857
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.o, align 8, !alias.scope !44854, !noalias !44857
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.p, align 8, !alias.scope !44854, !noalias !44857
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.n, ptr %i.q, align 8, !alias.scope !44854, !noalias !44857
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44859)
  %i.r = icmp eq i64 %.sroa.3.0.copyload.i.i, 0
  br i1 %i.r, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.thread.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i"

bb.e:                                             ; preds = %bb.o, %bb.f
  %.pn24.i.i = phi { ptr, i32 } [ %i.s, %bb.f ], [ %.pn.i.i, %bb.o ]
  invoke fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h2bbd3020dce2675aE"(ptr noalias noundef align 8 dereferenceable(32) %i.h) #55
          to label %.thread14.i.i unwind label %bb.s, !noalias !44853

bb.f:                                             ; preds = %bb.q, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.thread.i.i"
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i": ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 64 ; 2 uses
  store ptr %i.t, ptr %i.p, align 8, !alias.scope !44859, !noalias !44862
  %.sroa.02.0.copyload.i.i = load i8, ptr %.sroa.2.0.copyload.i.i, align 8, !noalias !44864 ; 2 uses
  %.not.i.i = icmp eq i8 %.sroa.02.0.copyload.i.i, 22
  br i1 %.not.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.thread.i.i", label %bb.g, !prof !6578

bb.g:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i"
  %.sroa.7.0..sroa.2.8..sroa.4.0.copyload.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 1
  %.sroa.25.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !44853
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.25.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa.2.8..sroa.4.0.copyload.i.sroa_idx.i.i, i64 31, i1 false), !noalias !44853
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !44853
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false), !noalias !44853
  store i8 %.sroa.02.0.copyload.i.i, ptr %i.g, align 8, !noalias !44853
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !44853
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44865)
  %i.v = icmp eq i64 %.sroa.3.0.copyload.i.i, 1
  br i1 %i.v, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit28.thread.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit28.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.thread.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i", %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !44853
  store i8 11, ptr %i.e, align 8, !noalias !44853
  %i.w = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull align 1 @35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @36)
          to label %bb.h unwind label %bb.f, !noalias !44853

bb.h:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.thread.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !44853
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8, !alias.scope !44852, !noalias !44851
  store i8 1, ptr %0, align 8, !alias.scope !44852, !noalias !44851
  br label %bb.i

bb.i:                                             ; preds = %bb.r, %bb.h
  call fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h2bbd3020dce2675aE"(ptr noalias noundef align 8 dereferenceable(32) %i.h), !noalias !44853
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !44853
  br label %"_ZN5xtask6common6assets1_92_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..assets..AssetFormat$GT$11deserialize17he93d615091eb5726E.exit"

bb.j:                                             ; preds = %"_ZN4core3ptr134drop_in_place$LT$core..option..Option$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h855d6e31624cc010E.exit.i.i", %"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17h513ad4514e2ac782E.exit.i.i.i"
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.l, %bb.j
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.aa, %bb.l ], [ %i.y, %bb.j ]
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef align 8 dereferenceable(32) %i.f) #55
          to label %bb.o unwind label %bb.s, !noalias !44853

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit28.i.i": ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 128
  store ptr %i.z, ptr %i.p, align 8, !alias.scope !44865, !noalias !44868
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.t, i64 64, i1 false), !noalias !44870
  %.pr.i.i = load i8, ptr %i.d, align 8, !noalias !44853
  %.not22.i.i = icmp eq i8 %.pr.i.i, 22
  br i1 %.not22.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit28.thread.i.i", label %bb.k

bb.k:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit28.i.i"
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.d) #57
          to label %"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17h513ad4514e2ac782E.exit.i.i.i" unwind label %bb.l, !noalias !44853, !inline_history !14900

bb.l:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.ab) #58
          to label %.body.i.i unwind label %bb.m, !noalias !44853, !inline_history !14900

bb.m:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !44871, !inline_history !14900
  unreachable

"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17h513ad4514e2ac782E.exit.i.i.i": ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.ad) #57
          to label %"_ZN4core3ptr134drop_in_place$LT$core..option..Option$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h855d6e31624cc010E.exit.i.i" unwind label %bb.j, !noalias !44853

"_ZN4core3ptr134drop_in_place$LT$core..option..Option$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h855d6e31624cc010E.exit.i.i": ; preds = %"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17h513ad4514e2ac782E.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !44853
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !44853
  store i8 11, ptr %i.c, align 8, !noalias !44853
  %i.ae = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 1 @35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @36)
          to label %bb.n unwind label %bb.j, !noalias !44853

bb.n:                                             ; preds = %"_ZN4core3ptr134drop_in_place$LT$core..option..Option$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h855d6e31624cc010E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !44853
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !alias.scope !44852, !noalias !44851
  store i8 1, ptr %0, align 8, !alias.scope !44852, !noalias !44851
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef align 8 dereferenceable(32) %i.f)
          to label %bb.q unwind label %bb.p, !noalias !44853

bb.o:                                             ; preds = %bb.p, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.ag, %bb.p ], [ %eh.lpad-body.i.i, %.body.i.i ]
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef align 8 dereferenceable(32) %i.g) #55
          to label %bb.e unwind label %bb.s, !noalias !44853

bb.p:                                             ; preds = %bb.n
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !44853
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef align 8 dereferenceable(32) %i.g)
          to label %bb.r unwind label %bb.f, !noalias !44853

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !44853
  br label %bb.i

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit28.thread.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit28.i.i", %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !44853
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44853
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !44853
  %.sroa.012.0.copyload.i.i = load i8, ptr %i.f, align 8, !noalias !44853
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 33
  %.sroa.819.0..sroa_idx20.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.819.0..sroa_idx20.i.i, ptr noundef nonnull align 1 dereferenceable(31) %i.ah, i64 31, i1 false), !noalias !44853
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !44853
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !44853
  call fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h2bbd3020dce2675aE"(ptr noalias noundef align 8 dereferenceable(32) %i.h), !noalias !44853
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !44853
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 %.sroa.012.0.copyload.i.i, ptr %i.ai, align 8, !noalias !44853
  call fastcc void @"_ZN185_$LT$xtask..common..assets.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..assets..AssetFormat$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h2f240f0d822f778dE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.a), !noalias !44851
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44853
  br label %"_ZN5xtask6common6assets1_92_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..assets..AssetFormat$GT$11deserialize17he93d615091eb5726E.exit"

bb.s:                                             ; preds = %bb.t, %bb.o, %.body.i.i, %bb.e
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !44853
  unreachable

bb.t:                                             ; preds = %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1) #55
          to label %.thread14.i.i unwind label %bb.s, !noalias !44852

bb.u:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44853
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.al, align 8, !alias.scope !44852, !noalias !44851
  store i8 1, ptr %0, align 8, !alias.scope !44852, !noalias !44851
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1), !noalias !44852
  br label %"_ZN5xtask6common6assets1_92_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..assets..AssetFormat$GT$11deserialize17he93d615091eb5726E.exit"

.thread14.i.i:                                    ; preds = %bb.t, %bb.e
  %.pn2612.i.i = phi { ptr, i32 } [ %.pn24.i.i, %bb.e ], [ %i.ak, %bb.t ]
  resume { ptr, i32 } %.pn2612.i.i

"_ZN5xtask6common6assets1_92_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..assets..AssetFormat$GT$11deserialize17he93d615091eb5726E.exit": ; preds = %bb.c, %bb.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit28.thread.i.i", %bb.u
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h49540e133ed3e140E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44881)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44884)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44886)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 81 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i.i"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i.i": ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i.i.backedge", %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44889)
  %i.j = load i8, ptr %i.d, align 8, !range !610, !alias.scope !44892, !noalias !44893, !noundef !8
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %.thread.i.i.i, label %bb.b

.thread.i.i.i:                                    ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i.i"
  %i.l = load i8, ptr %i.e, align 1, !alias.scope !44892, !noalias !44893, !noundef !8
  br label %bb.c

bb.b:                                             ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !44896
  call fastcc void @"_ZN101_$LT$serde_json..iter..LineColIterator$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h92f8f7b98fabe574E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef align 8 dereferenceable(32) %i.f), !noalias !44893
  %i.m = load i8, ptr %i.b, align 8, !range !483, !noalias !44896, !noundef !8
  switch i8 %i.m, label %bb.g [
    i8 2, label %.thread.i.i
    i8 0, label %.thread30.i.i.i
  ], !prof !2338

.thread30.i.i.i:                                  ; preds = %bb.b
  %i.n = load i8, ptr %i.g, align 1, !noalias !44896, !noundef !8 ; 2 uses
  store i8 1, ptr %i.d, align 8, !alias.scope !44892, !noalias !44893
  store i8 %i.n, ptr %i.e, align 1, !alias.scope !44892, !noalias !44893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44896
  br label %bb.c

.thread.i.i:                                      ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44896
  br label %.loopexit.i.i

bb.c:                                             ; preds = %.thread30.i.i.i, %.thread.i.i.i
  %i.o = phi i8 [ %i.l, %.thread.i.i.i ], [ %i.n, %.thread30.i.i.i ] ; 2 uses
  switch i8 %i.o, label %.loopexit.i.i [
    i8 32, label %bb.d
    i8 10, label %bb.d
    i8 9, label %bb.d
    i8 13, label %bb.d
    i8 110, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  store i8 0, ptr %i.d, align 8, !alias.scope !44897, !noalias !44900
  %i.p = load i64, ptr %i.c, align 8, !range !929, !alias.scope !44897, !noalias !44900 ; 2 uses
  %.not.i.not.i.i.i = icmp eq i64 %i.p, -9223372036854775808
  br i1 %.not.i.not.i.i.i, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i.i.backedge", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i64, ptr %i.h, align 8, !alias.scope !44901, !noalias !44904, !noundef !8 ; 3 uses
  %i.r = icmp eq i64 %i.q, %i.p
  br i1 %i.r, label %bb.f, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i.i.i.i"

bb.f:                                             ; preds = %bb.e
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha41f396e8ea6efa1E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1685), !noalias !44900
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i.i.i.i": ; preds = %bb.f, %bb.e
  %i.s = load ptr, ptr %i.i, align 8, !alias.scope !44901, !noalias !44904, !nonnull !8, !noundef !8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 %i.o, ptr %i.t, align 1, !noalias !44900
  %i.u = add i64 %i.q, 1
  store i64 %i.u, ptr %i.h, align 8, !alias.scope !44901, !noalias !44904
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i.i.backedge"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i.i.backedge": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i.i.i.i", %bb.d
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i.i"

bb.g:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noalias !44896, !nonnull !8, !noundef !8
  %i.x = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.w), !noalias !44906
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44896
  br label %bb.n

.loopexit.i.i:                                    ; preds = %bb.c, %.thread.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44907)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44910
  call fastcc void @"_ZN10serde_core2de5impls79_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..string..String$GT$11deserialize17ha0cb22f8a6444056E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(96) %1), !noalias !44912
  %i.y = load i64, ptr %i.a, align 8, !range !929, !noalias !44910, !noundef !8
  %i.z = icmp eq i64 %i.y, -9223372036854775808
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.loopexit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !44910, !nonnull !8, !align !461, !noundef !8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.ac, align 8, !alias.scope !44912, !noalias !44913
  store i64 -9223372036854775807, ptr %0, align 8, !alias.scope !44912, !noalias !44913
  br label %"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h21e22e2409172e18E.exit.i.i"

bb.i:                                             ; preds = %.loopexit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !44913
  br label %"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h21e22e2409172e18E.exit.i.i"

"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h21e22e2409172e18E.exit.i.i": ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44910
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h6961899ad350b3e5E.exit"

bb.j:                                             ; preds = %bb.c
  store i8 0, ptr %i.d, align 8, !alias.scope !44914, !noalias !44917
  %i.ad = load i64, ptr %i.c, align 8, !range !929, !alias.scope !44914, !noalias !44917 ; 2 uses
  %.not.i.not.i.i = icmp eq i64 %i.ad, -9223372036854775808
  br i1 %.not.i.not.i.i, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = load i64, ptr %i.h, align 8, !alias.scope !44918, !noalias !44921, !noundef !8 ; 3 uses
  %i.af = icmp eq i64 %i.ae, %i.ad
  br i1 %i.af, label %bb.l, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i.i.i"

bb.l:                                             ; preds = %bb.k
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha41f396e8ea6efa1E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1685), !noalias !44917
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i.i.i": ; preds = %bb.l, %bb.k
  %i.ag = load ptr, ptr %i.i, align 8, !alias.scope !44918, !noalias !44921, !nonnull !8, !noundef !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 110, ptr %i.ah, align 1, !noalias !44917
  %i.ai = add i64 %i.ae, 1
  store i64 %i.ai, ptr %i.h, align 8, !alias.scope !44918, !noalias !44921
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i.i.i", %bb.j
  %i.aj = tail call fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h6d510fe3703a8057E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @93, i64 noundef 3), !noalias !44917 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i"
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !44923, !noalias !44926
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h6961899ad350b3e5E.exit"

bb.n:                                             ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i", %bb.g
  %.sink.i.i = phi ptr [ %i.x, %bb.g ], [ %i.aj, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i" ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i.i, ptr %i.ak, align 8, !alias.scope !44917, !noalias !44926
  store i64 -9223372036854775807, ptr %0, align 8, !alias.scope !44917, !noalias !44926
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h6961899ad350b3e5E.exit"

"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h6961899ad350b3e5E.exit": ; preds = %"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h21e22e2409172e18E.exit.i.i", %bb.m, %bb.n
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h55714d580d5ba6c0E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [32 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44927)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44930)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44932)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44935)
  %i.i = load i8, ptr %1, align 8, !range !714, !alias.scope !44937, !noalias !44938, !noundef !8
  switch i8 %i.i, label %bb.b [
    i8 12, label %bb.c
    i8 13, label %bb.c
    i8 21, label %bb.d
  ], !prof !11818

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !44939
  call fastcc void @_ZN5serde7private2de7content18content_unexpected17hea1ecf289fede1deE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1), !noalias !44938
  %i.j = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 1 @38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @36)
          to label %bb.u unwind label %bb.t, !noalias !44939

bb.c:                                             ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44939
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !44927
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 22, ptr %i.k, align 8, !noalias !44939
  call fastcc void @"_ZN185_$LT$xtask..common..instance.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..instance..Edition$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h4f3de93c11031d79E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.a), !noalias !44937
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44939
  br label %"_ZN5xtask6common8instance1_90_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..instance..Edition$GT$11deserialize17h82349d0ebcac940fE.exit"

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.l, align 8, !alias.scope !44937, !noalias !44938
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !44937, !noalias !44938, !nonnull !8, !noundef !8 ; 9 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !44937, !noalias !44938 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !44939
  %i.m = icmp ult i64 %.sroa.3.0.copyload.i.i, 144115188075855872
  tail call void @llvm.assume(i1 %i.m)
  %.idx.i.i = shl nuw nsw i64 %.sroa.3.0.copyload.i.i, 6
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 %.idx.i.i
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.h, align 8, !alias.scope !44940, !noalias !44943
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.o, align 8, !alias.scope !44940, !noalias !44943
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.p, align 8, !alias.scope !44940, !noalias !44943
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.n, ptr %i.q, align 8, !alias.scope !44940, !noalias !44943
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44945)
  %i.r = icmp eq i64 %.sroa.3.0.copyload.i.i, 0
  br i1 %i.r, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.thread.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i"

bb.e:                                             ; preds = %bb.o, %bb.f
  %.pn24.i.i = phi { ptr, i32 } [ %i.s, %bb.f ], [ %.pn.i.i, %bb.o ]
  invoke fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h2bbd3020dce2675aE"(ptr noalias noundef align 8 dereferenceable(32) %i.h) #55
          to label %.thread14.i.i unwind label %bb.s, !noalias !44939

bb.f:                                             ; preds = %bb.q, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.thread.i.i"
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i": ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 64 ; 2 uses
  store ptr %i.t, ptr %i.p, align 8, !alias.scope !44945, !noalias !44948
  %.sroa.02.0.copyload.i.i = load i8, ptr %.sroa.2.0.copyload.i.i, align 8, !noalias !44950 ; 2 uses
  %.not.i.i = icmp eq i8 %.sroa.02.0.copyload.i.i, 22
  br i1 %.not.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.thread.i.i", label %bb.g, !prof !6578

bb.g:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i"
  %.sroa.7.0..sroa.2.8..sroa.4.0.copyload.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 1
  %.sroa.25.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !44939
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.25.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa.2.8..sroa.4.0.copyload.i.sroa_idx.i.i, i64 31, i1 false), !noalias !44939
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !44939
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false), !noalias !44939
  store i8 %.sroa.02.0.copyload.i.i, ptr %i.g, align 8, !noalias !44939
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !44939
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44951)
  %i.v = icmp eq i64 %.sroa.3.0.copyload.i.i, 1
  br i1 %i.v, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit28.thread.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit28.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.thread.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i", %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !44939
  store i8 11, ptr %i.e, align 8, !noalias !44939
  %i.w = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull align 1 @35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @36)
          to label %bb.h unwind label %bb.f, !noalias !44939

bb.h:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.thread.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !44939
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8, !alias.scope !44938, !noalias !44937
  store i8 1, ptr %0, align 8, !alias.scope !44938, !noalias !44937
  br label %bb.i

bb.i:                                             ; preds = %bb.r, %bb.h
  call fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h2bbd3020dce2675aE"(ptr noalias noundef align 8 dereferenceable(32) %i.h), !noalias !44939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !44939
  br label %"_ZN5xtask6common8instance1_90_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..instance..Edition$GT$11deserialize17h82349d0ebcac940fE.exit"

bb.j:                                             ; preds = %"_ZN4core3ptr134drop_in_place$LT$core..option..Option$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h855d6e31624cc010E.exit.i.i", %"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17h513ad4514e2ac782E.exit.i.i.i"
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.l, %bb.j
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.aa, %bb.l ], [ %i.y, %bb.j ]
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef align 8 dereferenceable(32) %i.f) #55
          to label %bb.o unwind label %bb.s, !noalias !44939

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit28.i.i": ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 128
  store ptr %i.z, ptr %i.p, align 8, !alias.scope !44951, !noalias !44954
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.t, i64 64, i1 false), !noalias !44956
  %.pr.i.i = load i8, ptr %i.d, align 8, !noalias !44939
  %.not22.i.i = icmp eq i8 %.pr.i.i, 22
  br i1 %.not22.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit28.thread.i.i", label %bb.k

bb.k:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit28.i.i"
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.d) #57
          to label %"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17h513ad4514e2ac782E.exit.i.i.i" unwind label %bb.l, !noalias !44939, !inline_history !14900

bb.l:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.ab) #58
          to label %.body.i.i unwind label %bb.m, !noalias !44939, !inline_history !14900

bb.m:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !44957, !inline_history !14900
  unreachable

"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17h513ad4514e2ac782E.exit.i.i.i": ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.ad) #57
          to label %"_ZN4core3ptr134drop_in_place$LT$core..option..Option$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h855d6e31624cc010E.exit.i.i" unwind label %bb.j, !noalias !44939

"_ZN4core3ptr134drop_in_place$LT$core..option..Option$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h855d6e31624cc010E.exit.i.i": ; preds = %"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17h513ad4514e2ac782E.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !44939
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !44939
  store i8 11, ptr %i.c, align 8, !noalias !44939
  %i.ae = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 1 @35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @36)
          to label %bb.n unwind label %bb.j, !noalias !44939

bb.n:                                             ; preds = %"_ZN4core3ptr134drop_in_place$LT$core..option..Option$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h855d6e31624cc010E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !44939
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !alias.scope !44938, !noalias !44937
  store i8 1, ptr %0, align 8, !alias.scope !44938, !noalias !44937
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef align 8 dereferenceable(32) %i.f)
          to label %bb.q unwind label %bb.p, !noalias !44939

bb.o:                                             ; preds = %bb.p, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.ag, %bb.p ], [ %eh.lpad-body.i.i, %.body.i.i ]
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef align 8 dereferenceable(32) %i.g) #55
          to label %bb.e unwind label %bb.s, !noalias !44939

bb.p:                                             ; preds = %bb.n
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !44939
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef align 8 dereferenceable(32) %i.g)
          to label %bb.r unwind label %bb.f, !noalias !44939

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !44939
  br label %bb.i

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit28.thread.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit28.i.i", %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !44939
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44939
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !44939
  %.sroa.012.0.copyload.i.i = load i8, ptr %i.f, align 8, !noalias !44939
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 33
  %.sroa.819.0..sroa_idx20.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.819.0..sroa_idx20.i.i, ptr noundef nonnull align 1 dereferenceable(31) %i.ah, i64 31, i1 false), !noalias !44939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !44939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !44939
  call fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h2bbd3020dce2675aE"(ptr noalias noundef align 8 dereferenceable(32) %i.h), !noalias !44939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !44939
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 %.sroa.012.0.copyload.i.i, ptr %i.ai, align 8, !noalias !44939
  call fastcc void @"_ZN185_$LT$xtask..common..instance.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..instance..Edition$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h4f3de93c11031d79E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.a), !noalias !44937
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44939
  br label %"_ZN5xtask6common8instance1_90_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..instance..Edition$GT$11deserialize17h82349d0ebcac940fE.exit"

bb.s:                                             ; preds = %bb.t, %bb.o, %.body.i.i, %bb.e
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !44939
  unreachable

bb.t:                                             ; preds = %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1) #55
          to label %.thread14.i.i unwind label %bb.s, !noalias !44938

bb.u:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44939
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.al, align 8, !alias.scope !44938, !noalias !44937
  store i8 1, ptr %0, align 8, !alias.scope !44938, !noalias !44937
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1), !noalias !44938
  br label %"_ZN5xtask6common8instance1_90_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..instance..Edition$GT$11deserialize17h82349d0ebcac940fE.exit"

.thread14.i.i:                                    ; preds = %bb.t, %bb.e
  %.pn2612.i.i = phi { ptr, i32 } [ %.pn24.i.i, %bb.e ], [ %i.ak, %bb.t ]
  resume { ptr, i32 } %.pn2612.i.i

"_ZN5xtask6common8instance1_90_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..instance..Edition$GT$11deserialize17h82349d0ebcac940fE.exit": ; preds = %bb.c, %bb.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit28.thread.i.i", %bb.u
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h68dfb20ae4d9b1d1E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.15.i.i.i.i = alloca [24 x i8], align 8   ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [48 x i8], align 8                ; 10 uses
  %i.j = alloca [72 x i8], align 8                ; 10 uses
  %.sroa.6.i.i.i = alloca [32 x i8], align 8      ; 5 uses
  %i.k = alloca [48 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44962)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44965)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44967)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44970)
  %i.l = load i8, ptr %1, align 8, !range !714, !alias.scope !44972, !noalias !44973, !noundef !8
  %i.m = icmp eq i8 %i.l, 21
  br i1 %i.m, label %bb.b, label %bb.z, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.n, align 8, !alias.scope !44972, !noalias !44973
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !44972, !noalias !44973, !nonnull !8, !noundef !8 ; 4 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !44972, !noalias !44973 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44974)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !44977
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i)
  %i.o = icmp ult i64 %.sroa.3.0.copyload.i.i, 144115188075855872
  tail call void @llvm.assume(i1 %i.o)
  %.idx.i.i.i = shl nuw nsw i64 %.sroa.3.0.copyload.i.i, 6 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 %.idx.i.i.i ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.q, align 8, !noalias !44978
  %.sroa.421.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 7 uses
  store ptr %.sroa.2.0.copyload.i.i, ptr %.sroa.421.0..sroa_idx.i.i.i, align 8, !noalias !44978
  %.sroa.522.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.522.0..sroa_idx.i.i.i, align 8, !noalias !44978
  %.sroa.623.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store ptr %i.p, ptr %.sroa.623.0..sroa_idx.i.i.i, align 8, !noalias !44978
  store i8 22, ptr %i.j, align 8, !noalias !44978
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 7 uses
  store i64 0, ptr %i.r, align 8, !noalias !44978
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !44978
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.i.i.i.i), !noalias !44978
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !44978
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !44980
  %.sroa.0.0.i.i.i.i.i.i = tail call noundef range(i64 0, 21846) i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %.sroa.3.0.copyload.i.i, i64 21845)
  %i.s = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !range !610, !noalias !44984, !noundef !8
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %._ZN4core3ops8function6FnOnce9call_once17he8e49505c7ce8ce8E.exit_crit_edge.i.i.i.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h1d011a7d4dd08efeE.exit.i.i.i.i.i.i.i", !prof !17

._ZN4core3ops8function6FnOnce9call_once17he8e49505c7ce8ce8E.exit_crit_edge.i.i.i.i.i.i.i: ; preds = %bb.b
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.s, align 8, !noalias !44993
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.pre1.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !noalias !44993
  br label %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i.i.i.i"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h1d011a7d4dd08efeE.exit.i.i.i.i.i.i.i": ; preds = %bb.b
  %i.w = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc.i.i.i unwind label %bb.r, !noalias !44978 ; 2 uses

.noexc.i.i.i:                                     ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h1d011a7d4dd08efeE.exit.i.i.i.i.i.i.i"
  %i.x = extractvalue { i64, i64 } %i.w, 0
  %i.y = extractvalue { i64, i64 } %i.w, 1        ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.y, ptr %i.z, align 8, !noalias !44994
  store i8 1, ptr %i.t, align 8, !noalias !44994
  br label %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i.i.i.i"

"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i.i.i.i": ; preds = %.noexc.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17he8e49505c7ce8ce8E.exit_crit_edge.i.i.i.i.i.i.i
  %.pre-phi32.i.i.i.i = phi i64 [ %.pre1.i.i.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17he8e49505c7ce8ce8E.exit_crit_edge.i.i.i.i.i.i.i ], [ %i.y, %.noexc.i.i.i ]
  %i.aa = phi i64 [ %.pre.i.i.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17he8e49505c7ce8ce8E.exit_crit_edge.i.i.i.i.i.i.i ], [ %i.x, %.noexc.i.i.i ] ; 2 uses
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr %i.s, align 8, !noalias !44993
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !44980
  invoke fastcc void @_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h1e105efd2a0135abE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.f, i64 noundef 48, i64 noundef %.sroa.0.0.i.i.i.i.i.i, i1 noundef zeroext true)
          to label %.noexc9.i.i.i unwind label %bb.r

.noexc9.i.i.i:                                    ; preds = %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i.i.i.i"
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 %i.aa, ptr %i.ac, align 8, !alias.scope !44997, !noalias !44980
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i64 %.pre-phi32.i.i.i.i, ptr %i.ad, align 8, !alias.scope !44997, !noalias !44980
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !44980
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !44980
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !45000
  %i.ae = icmp eq i64 %.sroa.3.0.copyload.i.i, 0
  br i1 %i.ae, label %bb.s, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i.i.i": ; preds = %.noexc9.i.i.i
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.3.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ah = add nsw i64 %.idx.i.i.i, -64
  %i.ai = lshr exact i64 %i.ah, 6
  %i.aj = add nuw nsw i64 %i.ai, 1
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i.i.i"

bb.c:                                             ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i, %bb.l, %bb.h, %bb.g
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.as, %bb.g ], [ %i.ba, %bb.l ], [ %i.as, %bb.h ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ]
  call fastcc void @"_ZN4core3ptr106drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$$GT$17h3b586db723ca0a6bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.i), !noalias !44980
  br label %.thread.i.i.i

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit.i.i.i.i", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i.i.i"
  %i.ak = phi i64 [ 0, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.an, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit.i.i.i.i" ] ; 2 uses
  %i.al = phi ptr [ %.sroa.2.0.copyload.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.am, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit.i.i.i.i" ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 64 ; 8 uses
  %.sroa.038.0.copyload.i.i.i.i.i.i.i = load i8, ptr %i.al, align 8, !noalias !45006 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %.sroa.038.0.copyload.i.i.i.i.i.i.i, 22
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.d

bb.d:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i.i.i"
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.an = add nuw nsw i64 %i.ak, 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !45013
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, i64 31, i1 false), !noalias !45013
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i64 32, i1 false), !noalias !45013
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !45013
  store i8 %.sroa.038.0.copyload.i.i.i.i.i.i.i, ptr %i.d, align 8, !noalias !45013
  invoke fastcc void @"_ZN10serde_core2de5impls79_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..string..String$GT$11deserialize17h480b2191756067ecE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.d)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h09c40987a587e440E.exit.i.i.i.i.i.i.i" unwind label %bb.l, !noalias !45013

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h09c40987a587e440E.exit.i.i.i.i.i.i.i": ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !45013
  %i.ap = load i64, ptr %i.e, align 8, !range !929, !noalias !45013, !noundef !8 ; 6 uses
  %i.aq = icmp eq i64 %i.ap, -9223372036854775808
  %i.ar = load ptr, ptr %i.af, align 8, !noalias !45013 ; 6 uses
  br i1 %i.aq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h09c40987a587e440E.exit.i.i.i.i.i.i.i"
  store ptr %i.am, ptr %.sroa.421.0..sroa_idx.i.i.i, align 8, !noalias !44978
  store i64 %i.an, ptr %i.r, align 8, !noalias !44978
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !45013
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef align 8 dereferenceable(32) %i.b)
          to label %.thread28.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !44980

bb.f:                                             ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h09c40987a587e440E.exit.i.i.i.i.i.i.i"
  %.sroa.5.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !45013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !45013
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !45013
  invoke fastcc void @"_ZN10serde_core2de5impls79_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..string..String$GT$11deserialize17h480b2191756067ecE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.b)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h09c40987a587e440E.exit16.i.i.i.i.i.i.i" unwind label %bb.g, !noalias !45013

bb.g:                                             ; preds = %bb.f
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr %i.am, ptr %.sroa.421.0..sroa_idx.i.i.i, align 8, !noalias !44978
  store i64 %i.an, ptr %i.r, align 8, !noalias !44978
  %i.at = icmp eq i64 %i.ap, 0
  br i1 %i.at, label %bb.c, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ar) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef %i.ap, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !45014
  br label %bb.c

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h09c40987a587e440E.exit16.i.i.i.i.i.i.i": ; preds = %bb.f
  %i.au = load i64, ptr %i.c, align 8, !range !929, !noalias !45013, !noundef !8
  %i.av = icmp eq i64 %i.au, -9223372036854775808
  br i1 %i.av, label %bb.i, label %bb.m

bb.i:                                             ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h09c40987a587e440E.exit16.i.i.i.i.i.i.i"
  store ptr %i.am, ptr %.sroa.421.0..sroa_idx.i.i.i, align 8, !noalias !44978
  store i64 %i.an, ptr %i.r, align 8, !noalias !44978
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !45013, !nonnull !8, !align !461, !noundef !8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !45013
  %i.ay = icmp eq i64 %i.ap, 0
  br i1 %i.ay, label %.thread28.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ar) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef %i.ap, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !45017
  br label %.thread28.i.i.i

bb.k:                                             ; preds = %bb.l
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !45013
  unreachable

bb.l:                                             ; preds = %bb.d
  %i.ba = landingpad { ptr, i32 }
          cleanup
  store ptr %i.am, ptr %.sroa.421.0..sroa_idx.i.i.i, align 8, !noalias !44978
  store i64 %i.an, ptr %i.r, align 8, !noalias !44978
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef align 8 dereferenceable(32) %i.b) #55
          to label %bb.c unwind label %bb.k, !noalias !45013

.loopexit.i.i.i.i:                                ; preds = %bb.m
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  store ptr %i.am, ptr %.sroa.421.0..sroa_idx.i.i.i, align 8, !noalias !44978
  store i64 %i.an, ptr %i.r, align 8, !noalias !44978
  br label %bb.c

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.e
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.thread28.i.i.i:                                  ; preds = %bb.j, %bb.i, %bb.e
  %.sroa.9.0.ph.i.i.i.i = phi ptr [ %i.ar, %bb.e ], [ %i.ax, %bb.j ], [ %i.ax, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !45020
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.ph.i.i.i.i) ]
  call fastcc void @"_ZN4core3ptr106drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$$GT$17h3b586db723ca0a6bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.i), !noalias !44980
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !44980
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i.i.i.i), !noalias !44978
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !44978
  br label %bb.t

bb.m:                                             ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h09c40987a587e440E.exit16.i.i.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !44980
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !45013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !45020
  store i64 %i.ap, ptr %i.h, align 8, !noalias !44980
  store ptr %i.ar, ptr %.sroa.3.0..sroa_idx2.i.i.i.i, align 8, !noalias !44980
  store i64 %.sroa.5.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i.i, align 8, !noalias !44980
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !44980
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h1749f07904ce2eaaE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef align 8 dereferenceable(48) %i.i, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef align 8 captures(address) dereferenceable(24) %.sroa.15.i.i.i.i)
          to label %bb.n unwind label %.loopexit.i.i.i.i, !noalias !44980

bb.n:                                             ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !45021)
  %i.bb = load i64, ptr %i.g, align 8, !range !929, !alias.scope !45021, !noalias !44980, !noundef !8 ; 3 uses
  %i.bc = icmp eq i64 %i.bb, -9223372036854775808
  br i1 %i.bc, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit.i.i.i.i", label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !45024)
  %i.bd = icmp eq i64 %i.bb, 0
  br i1 %i.bd, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit.i.i.i.i", label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !45027, !noalias !44980, !nonnull !8, !noundef !8
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %i.bb, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !45028
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit.i.i.i.i"

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit.i.i.i.i": ; preds = %bb.p, %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !44980
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !45029
  %i.be = icmp eq ptr %i.am, %i.p
  br i1 %i.be, label %.loopexit.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i.i.i"

bb.q:                                             ; preds = %bb.u
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr106drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$$GT$17h3b586db723ca0a6bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.k), !noalias !44978
  br label %.body.i.i

bb.r:                                             ; preds = %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i.i.i.i", %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h1d011a7d4dd08efeE.exit.i.i.i.i.i.i.i"
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i

.loopexit.i.i.i:                                  ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit.i.i.i.i", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i.i.i"
  %.lcssa63.i.i.i = phi ptr [ %i.p, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit.i.i.i.i" ], [ %i.am, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i.i.i" ]
  %i.bh = phi i64 [ %i.aj, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit.i.i.i.i" ], [ %i.ak, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i.i.i" ]
  store ptr %.lcssa63.i.i.i, ptr %.sroa.421.0..sroa_idx.i.i.i, align 8, !noalias !44978
  store i64 %i.bh, ptr %i.r, align 8, !noalias !44978
  br label %bb.s

bb.s:                                             ; preds = %.loopexit.i.i.i, %.noexc9.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !45020
  %.sroa.0.0.copyload11.i.i.i = load ptr, ptr %i.i, align 8, !noalias !45031 ; 2 uses
  %.sroa.5.0..sroa_idx14.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.5.0.copyload15.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx14.i.i.i, align 8, !noalias !45031 ; 2 uses
  %.sroa.6.0..sroa_idx17.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx17.i.i.i, i64 32, i1 false), !noalias !45031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !44980
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i.i.i.i), !noalias !44978
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !44978
  %i.bi = icmp eq ptr %.sroa.0.0.copyload11.i.i.i, null
  br i1 %i.bi, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %.thread28.i.i.i
  %.sroa.5.031.i.i.i = phi ptr [ %.sroa.9.0.ph.i.i.i.i, %.thread28.i.i.i ], [ %.sroa.5.0.copyload15.i.i.i, %bb.s ]
  store ptr null, ptr %0, align 8, !alias.scope !45032, !noalias !45033
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.031.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !45032, !noalias !45033
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i.i, i64 32, i1 false), !noalias !45033
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !44978
  call fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h2bbd3020dce2675aE"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.q), !noalias !44977
  br label %bb.aa

bb.u:                                             ; preds = %bb.s
  %.sroa.519.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.519.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i.i, i64 32, i1 false), !noalias !44978
  store ptr %.sroa.0.0.copyload11.i.i.i, ptr %i.k, align 8, !noalias !44978
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.sroa.5.0.copyload15.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !44978
  %i.bj = invoke fastcc noundef align 8 ptr @"_ZN5serde7private2de7content24MapDeserializer$LT$E$GT$3end17h755ad06f5a4a7c7aE"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.j)
          to label %bb.v unwind label %bb.q, !noalias !44978 ; 2 uses

bb.v:                                             ; preds = %bb.u
  %.not.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 48, i1 false), !noalias !45033
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !44978
  br label %bb.aa

bb.x:                                             ; preds = %bb.v
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bj, ptr %i.bk, align 8, !alias.scope !45032, !noalias !45033
  store ptr null, ptr %0, align 8, !alias.scope !45032, !noalias !45033
  call fastcc void @"_ZN4core3ptr106drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$$GT$17h3b586db723ca0a6bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.k), !noalias !44978
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !44978
  br label %bb.aa

bb.y:                                             ; preds = %.thread.i.i.i
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !44978
  unreachable
end_hunk_6
begin_hunk_7_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h833945fcb21d0c50E":bb.a

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h7cf736f5bc1012bfE.exit46.i.i.i.i.i": ; preds = %bb.bn, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i44.i.i.i.i.i", %bb.bm, %bb.bl
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fq, i64 noundef 40, i64 noundef 8) #47, !noalias !45802
  br label %.thread36.i.i.i.i.i

.thread36.i.i.i.i.i:                              ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h7cf736f5bc1012bfE.exit46.i.i.i.i.i", %bb.bk, %.split.thread53.i.i.i.i.i, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h7cf736f5bc1012bfE.exit.i.i.i.i.i", %bb.ae, %.thread40.i.i.i.i.i, %bb.o
  %.sroa.11.3.i.i.i.i.i = phi i64 [ %i.bb, %bb.o ], [ %i.ct, %.thread40.i.i.i.i.i ], [ %i.cr, %bb.ae ], [ %i.ft, %.split.thread53.i.i.i.i.i ], [ %i.cr, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h7cf736f5bc1012bfE.exit.i.i.i.i.i" ], [ %.sroa.7.2.i.i.i.i.i.i, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h7cf736f5bc1012bfE.exit46.i.i.i.i.i" ], [ %.sroa.7.2.i.i.i.i.i.i, %bb.bk ]
  %i.ga = inttoptr i64 %.sroa.11.3.i.i.i.i.i to ptr
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val30.i.i.i.i.i = load i64, ptr %i.gb, align 8, !alias.scope !45689, !noalias !45690
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val31.i.i.i.i.i = load i64, ptr %i.gc, align 8, !alias.scope !45689, !noalias !45690
  %i.gd = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h0bd662c0478d6700E(ptr noalias noundef nonnull align 8 %i.ga, i64 %.val30.i.i.i.i.i, i64 %.val31.i.i.i.i.i), !noalias !45690
  br label %bb.bp

bb.bp:                                            ; preds = %.thread36.i.i.i.i.i, %bb.be, %bb.y, %bb.n, %bb.m
  %.sroa.7.3.i.i.ph.i.i.i = phi ptr [ %i.aw, %bb.m ], [ %i.az, %bb.n ], [ %i.cl, %bb.y ], [ %i.fm, %bb.be ], [ %i.gd, %.thread36.i.i.i.i.i ]
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.3.i.i.ph.i.i.i, ptr %i.ge, align 8, !alias.scope !45690, !noalias !45806
  store i64 2, ptr %0, align 8, !alias.scope !45690, !noalias !45806
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h6f5ca4ac3102c995E.exit"

._crit_edge.i.i.i:                                ; preds = %bb.bj, %bb.ad
  %.pre-phi.i.i.i = phi i64 [ %i.cr, %bb.ad ], [ %.sroa.7.2.i.i.i.i.i.i, %bb.bj ]
  store i64 1, ptr %0, align 8, !alias.scope !45690, !noalias !45806
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.pre-phi.i.i.i, ptr %i.gf, align 8, !alias.scope !45690, !noalias !45806
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h6f5ca4ac3102c995E.exit"

bb.bq:                                            ; preds = %bb.c
  store i8 0, ptr %i.m, align 8, !alias.scope !45807, !noalias !45810
  %i.gg = load i64, ptr %i.l, align 8, !range !929, !alias.scope !45807, !noalias !45810 ; 2 uses
  %.not.i.not.i.i = icmp eq i64 %i.gg, -9223372036854775808
  br i1 %.not.i.not.i.i, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i", label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gh = load i64, ptr %i.q, align 8, !alias.scope !45811, !noalias !45814, !noundef !8 ; 3 uses
  %i.gi = icmp eq i64 %i.gh, %i.gg
  br i1 %i.gi, label %bb.bs, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i.i.i"

bb.bs:                                            ; preds = %bb.br
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha41f396e8ea6efa1E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1685), !noalias !45810
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i.i.i": ; preds = %bb.bs, %bb.br
  %i.gj = load ptr, ptr %i.r, align 8, !alias.scope !45811, !noalias !45814, !nonnull !8, !noundef !8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gh
  store i8 110, ptr %i.gk, align 1, !noalias !45810
  %i.gl = add i64 %i.gh, 1
  store i64 %i.gl, ptr %i.q, align 8, !alias.scope !45811, !noalias !45814
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h3a433258fd6a59abE.exit.i.i.i", %bb.bq
  %i.gm = tail call fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h6d510fe3703a8057E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @93, i64 noundef 3), !noalias !45810 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gm, null
  br i1 %.not.i.i, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i"
  store i64 0, ptr %0, align 8, !alias.scope !45816, !noalias !45819
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h6f5ca4ac3102c995E.exit"

bb.bu:                                            ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i", %bb.g
  %.sink.i.i = phi ptr [ %i.ag, %bb.g ], [ %i.gm, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17haa190cd8d633031dE.exit.i.i" ]
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i.i, ptr %i.gn, align 8, !alias.scope !45810, !noalias !45819
  store i64 2, ptr %0, align 8, !alias.scope !45810, !noalias !45819
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h6f5ca4ac3102c995E.exit"

"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h6f5ca4ac3102c995E.exit": ; preds = %bb.bp, %._crit_edge.i.i.i, %bb.bt, %bb.bu
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h9534872b2810e7b7E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 18 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 11 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 14 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [64 x i8], align 8                ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.3.i.i.i.i = alloca [7 x i8], align 1     ; 6 uses
  %.sroa.5.i.i.i.i = alloca [16 x i8], align 8    ; 6 uses
  %.sroa.7170.i.i.i.i = alloca [7 x i8], align 1  ; 8 uses
  %.sroa.11.i.i.i.i = alloca [16 x i8], align 8   ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 11 uses
  %i.m = alloca [24 x i8], align 8                ; 22 uses
  %i.n = alloca [72 x i8], align 8                ; 29 uses
  %.sroa.12.i.i.i = alloca [32 x i8], align 8     ; 5 uses
  %.sroa.14.i.i.i = alloca [7 x i8], align 1      ; 5 uses
  %i.o = alloca [96 x i8], align 8                ; 17 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45820)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45823)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45825)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45828)
  %i.p = load i8, ptr %1, align 8, !range !714, !alias.scope !45830, !noalias !45831, !noundef !8
  %i.q = icmp eq i8 %i.p, 21
  br i1 %i.q, label %bb.b, label %bb.cn, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.r, align 8, !alias.scope !45830, !noalias !45831
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !45830, !noalias !45831, !nonnull !8, !noundef !8 ; 4 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !45830, !noalias !45831 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45832)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !45835
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i.i.i)
  %i.s = icmp ult i64 %.sroa.3.0.copyload.i.i, 144115188075855872
  tail call void @llvm.assume(i1 %i.s)
  %.idx.i.i.i = shl nuw nsw i64 %.sroa.3.0.copyload.i.i, 6
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 %.idx.i.i.i ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 3 uses
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.u, align 8, !noalias !45836
  %.sroa.440.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 3 uses
  store ptr %.sroa.2.0.copyload.i.i, ptr %.sroa.440.0..sroa_idx.i.i.i, align 8, !noalias !45836
  %.sroa.541.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.541.0..sroa_idx.i.i.i, align 8, !noalias !45836
  %.sroa.642.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 2 uses
  store ptr %i.t, ptr %.sroa.642.0..sroa_idx.i.i.i, align 8, !noalias !45836
  store i8 22, ptr %i.n, align 8, !noalias !45836
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 64 ; 3 uses
  store i64 0, ptr %i.v, align 8, !noalias !45836
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !45836
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !45838
  store i64 -9223372036854775808, ptr %i.m, align 8, !noalias !45838
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !45838
  store i64 0, ptr %i.l, align 8, !noalias !45838
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.w, align 8, !noalias !45838
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 0, ptr %i.x, align 8, !noalias !45838
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  %.sroa.61.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.15.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %.sroa.45.sroa.6.0..sroa.45.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %.sroa.555.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %.sroa.656.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.757.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  %.sroa.7174.1..sroa.3.0..sroa_idx.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.9175.1..sroa.3.0..sroa_idx.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.572.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.673.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 33
  %.sroa.774.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.875.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.5106.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %.sroa.6107.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.648.0..sroa_idx49.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 15 uses
  %.sroa.751.0..sroa_idx52.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 15 uses
  %.sroa.5103.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %.sroa.6104.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.648.0..sroa_idx49.promoted.i.i.i.i = load ptr, ptr %.sroa.648.0..sroa_idx49.i.i.i.i, align 8, !noalias !45838 ; 2 uses
  %.sroa.751.0..sroa_idx52.promoted.i.i.i.i = load i64, ptr %.sroa.751.0..sroa_idx52.i.i.i.i, align 8, !noalias !45838 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7170.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i.i.i.i)
  %i.y = icmp eq i64 %.sroa.3.0.copyload.i.i, 0
  br i1 %i.y, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i._crit_edge.i.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i.i.i": ; preds = %bb.b, %bb.am
  %i.z = phi ptr [ %i.cv, %bb.am ], [ %i.t, %bb.b ] ; 2 uses
  %i.aa = phi ptr [ %i.cu, %bb.am ], [ %.sroa.2.0.copyload.i.i, %bb.b ] ; 4 uses
  %.sroa.0163.0.i252.i.i.i = phi i64 [ %.sroa.0163.1.i.i.i.i, %bb.am ], [ -9223372036854775807, %bb.b ] ; 16 uses
  %.sroa.14.0.i251.i.i.i = phi ptr [ %.sroa.14.1.i.i.i.i, %bb.am ], [ undef, %bb.b ] ; 15 uses
  %.sroa.19.0.i250.i.i.i = phi i64 [ %.sroa.19.1.i.i.i.i, %bb.am ], [ undef, %bb.b ] ; 3 uses
  %i.ab = phi i64 [ %i.cy, %bb.am ], [ -9223372036854775808, %bb.b ] ; 27 uses
  %.sroa.5106.0.copyload298.i249.i.i.i = phi ptr [ %.sroa.5106.0.copyload297.i.i.i.i, %bb.am ], [ %.sroa.648.0..sroa_idx49.promoted.i.i.i.i, %bb.b ] ; 20 uses
  %.sroa.6107.0.copyload315.i248.i.i.i = phi i64 [ %.sroa.6107.0.copyload314.i.i.i.i, %bb.am ], [ %.sroa.751.0..sroa_idx52.promoted.i.i.i.i, %bb.b ] ; 20 uses
  %.val136.i247.i.i.i = phi i64 [ %i.cx, %bb.am ], [ 0, %bb.b ] ; 6 uses
  %.val135.i246.i.i.i = phi ptr [ %i.cw, %bb.am ], [ inttoptr (i64 8 to ptr), %bb.b ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 64 ; 3 uses
  store ptr %i.ac, ptr %.sroa.440.0..sroa_idx.i.i.i, align 8, !noalias !45836
  %.sroa.0.0.copyload13.i.i.i.i.i.i.i = load i8, ptr %i.aa, align 8, !noalias !45842 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload13.i.i.i.i.i.i.i, 22
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i._crit_edge.i.i.i", label %bb.c

bb.c:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i.i.i"
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.ad = load i64, ptr %i.v, align 8, !noalias !45836, !noundef !8
  %i.ae = add i64 %i.ad, 1
  store i64 %i.ae, ptr %i.v, align 8, !noalias !45836
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !45853
  store i8 %.sroa.0.0.copyload13.i.i.i.i.i.i.i, ptr %i.e, align 8, !noalias !45853
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, i64 31, i1 false), !noalias !45853
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 32, i1 false), !noalias !45853
  %i.ag = load i8, ptr %i.n, align 8, !range !890, !noalias !45836, !noundef !8
  %i.ah = icmp eq i8 %i.ag, 22
  br i1 %i.ah, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.n)
          to label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i.i.i" unwind label %bb.z, !noalias !45836

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i.i.i": ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !45836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !45853
  %.sroa.5.0.copyload.i.i.i.i.i.i = load i8, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i, align 1, !noalias !45853
  %.sroa.61.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.61.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !45853 ; 9 uses
  %.sroa.11.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !45853 ; 5 uses
  %.sroa.15.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.15.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !45853 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45854)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45857)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45860)
  switch i8 %.sroa.0.0.copyload13.i.i.i.i.i.i.i, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h00c378d25e558f15E.exit.thread.i.i.i.i.i.i.i" [
    i8 1, label %bb.e
    i8 4, label %bb.f
    i8 12, label %bb.g
    i8 13, label %bb.o
    i8 14, label %bb.u
    i8 15, label %bb.x
  ], !prof !1095

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h00c378d25e558f15E.exit.thread.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i.i.i"
  store ptr %.sroa.5106.0.copyload298.i249.i.i.i, ptr %.sroa.648.0..sroa_idx49.i.i.i.i, align 8, !noalias !45838
  store i64 %.sroa.6107.0.copyload315.i248.i.i.i, ptr %.sroa.751.0..sroa_idx52.i.i.i.i, align 8, !noalias !45838
  store i64 %i.ab, ptr %i.m, align 8, !noalias !45838
  %i.ai = invoke fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content28ContentDeserializer$LT$E$GT$12invalid_type17hbef5b53211e707e3E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.e, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @53)
          to label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$8next_key17h660b67c864d4a4d2E.exit.thread194.i.i.i.i" unwind label %.loopexit.split-lp.i.i.i.i, !noalias !45838

bb.e:                                             ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i.i.i"
  store i8 1, ptr %i.c, align 8, !alias.scope !45863, !noalias !45866
  store i8 %.sroa.5.0.copyload.i.i.i.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !45863, !noalias !45866
  br label %bb.y

bb.f:                                             ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i.i.i"
  store i8 4, ptr %i.c, align 8, !alias.scope !45870, !noalias !45866
  store i64 %.sroa.61.0.copyload.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !45870, !noalias !45866
  br label %bb.y

bb.g:                                             ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i.i.i"
  %i.aj = inttoptr i64 %.sroa.11.0.copyload.i.i.i.i.i.i to ptr ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45873)
  switch i64 %.sroa.15.0.copyload.i.i.i.i.i.i, label %bb.k [
    i64 11, label %bb.h
    i64 12, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.ak = load i64, ptr %i.aj, align 1
  %i.al = xor i64 %i.ak, 8390322045806929252
  %i.am = getelementptr i8, ptr %i.aj, i64 3
  %i.an = load i64, ptr %i.am, align 1
  %i.ao = xor i64 %i.an, 7957695015410037347
  %i.ap = or i64 %i.al, %i.ao
  %i.aq = icmp ne i64 %i.ap, 0
  %i.ar = zext i1 %i.aq to i32
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i"

bb.i:                                             ; preds = %bb.h
  store i8 22, ptr %i.c, align 8, !alias.scope !45873, !noalias !45876
  br label %"_ZN189_$LT$xtask..common..instance.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..instance..Binary$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h14fe9d131f67c658E.exit.i.i.i.i.i.i.i"

bb.j:                                             ; preds = %bb.g
  %i.at = load i64, ptr %i.aj, align 1
  %i.au = xor i64 %i.at, 7596520757278308453
  %i.av = getelementptr i8, ptr %i.aj, i64 8
  %i.aw = load i32, ptr %i.av, align 1
  %i.ax = zext i32 %i.aw to i64
  %i.ay = xor i64 %i.ax, 1936159297
  %i.az = or i64 %i.au, %i.ay
  %i.ba = icmp ne i64 %i.az, 0
  %i.bb = zext i1 %i.ba to i32
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.m, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i"

bb.k:                                             ; preds = %bb.g
  %i.bd = icmp slt i64 %.sroa.15.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.bd, label %bb.l, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i, !prof !2978

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.k
  %i.be = icmp eq i64 %.sroa.15.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.be, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4e722af2283a9a09E.exit.i.i.i.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.j, %bb.h
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !45880
  %i.bf = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.sroa.15.0.copyload.i.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #47, !noalias !45880 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.l, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4e722af2283a9a09E.exit.i.i.i.i.i.i.i.i"

bb.l:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i", %bb.k
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ 0, %bb.k ]
  store ptr %.sroa.5106.0.copyload298.i249.i.i.i, ptr %.sroa.648.0..sroa_idx49.i.i.i.i, align 8, !noalias !45838
  store i64 %.sroa.6107.0.copyload315.i248.i.i.i, ptr %.sroa.751.0..sroa_idx52.i.i.i.i, align 8, !noalias !45838
  store i64 %i.ab, ptr %i.m, align 8, !noalias !45838
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.15.0.copyload.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1765) #54
          to label %.noexc12.i.i.i.i.i.i.i unwind label %bb.n, !noalias !45853

.noexc12.i.i.i.i.i.i.i:                           ; preds = %bb.l
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4e722af2283a9a09E.exit.i.i.i.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bf, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %i.aj, i64 %.sroa.15.0.copyload.i.i.i.i.i.i, i1 false), !noalias !45888
  store i8 12, ptr %i.c, align 8, !alias.scope !45873, !noalias !45876
  store i64 %.sroa.15.0.copyload.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !45873, !noalias !45876
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !45873, !noalias !45876
  store i64 %.sroa.15.0.copyload.i.i.i.i.i.i, ptr %.sroa.45.sroa.6.0..sroa.45.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !45873, !noalias !45876
  br label %"_ZN189_$LT$xtask..common..instance.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..instance..Binary$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h14fe9d131f67c658E.exit.i.i.i.i.i.i.i"

bb.m:                                             ; preds = %bb.j
  store i8 23, ptr %i.c, align 8, !alias.scope !45873, !noalias !45876
  br label %"_ZN189_$LT$xtask..common..instance.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..instance..Binary$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h14fe9d131f67c658E.exit.i.i.i.i.i.i.i"

bb.n:                                             ; preds = %bb.l
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = icmp eq i64 %.sroa.61.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.bi, label %.body.i.i.i.i, label %.sink.split.i.i.i.i.i.i

"_ZN189_$LT$xtask..common..instance.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..instance..Binary$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h14fe9d131f67c658E.exit.i.i.i.i.i.i.i": ; preds = %bb.m, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4e722af2283a9a09E.exit.i.i.i.i.i.i.i.i", %bb.i
  %i.bj = icmp eq i64 %.sroa.61.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.bj, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h00c378d25e558f15E.exit.i.i.i.i.i.i.i", label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h00c378d25e558f15E.exit.i.i.i.sink.split.i.i.i.i"

bb.o:                                             ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i.i.i"
  %i.bk = inttoptr i64 %.sroa.61.0.copyload.i.i.i.i.i.i to ptr ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45889)
  switch i64 %.sroa.11.0.copyload.i.i.i.i.i.i, label %bb.s [
    i64 11, label %bb.p
    i64 12, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  %i.bl = load i64, ptr %i.bk, align 1
  %i.bm = xor i64 %i.bl, 8390322045806929252
  %i.bn = getelementptr i8, ptr %i.bk, i64 3
  %i.bo = load i64, ptr %i.bn, align 1
  %i.bp = xor i64 %i.bo, 7957695015410037347
  %i.bq = or i64 %i.bm, %i.bp
  %i.br = icmp ne i64 %i.bq, 0
  %i.bs = zext i1 %i.br to i32
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  store i8 22, ptr %i.c, align 8, !alias.scope !45892, !noalias !45893
  br label %bb.y

bb.r:                                             ; preds = %bb.o
  %i.bu = load i64, ptr %i.bk, align 1
  %i.bv = xor i64 %i.bu, 7596520757278308453
  %i.bw = getelementptr i8, ptr %i.bk, i64 8
  %i.bx = load i32, ptr %i.bw, align 1
  %i.by = zext i32 %i.bx to i64
  %i.bz = xor i64 %i.by, 1936159297
  %i.ca = or i64 %i.bv, %i.bz
  %i.cb = icmp ne i64 %i.ca, 0
  %i.cc = zext i1 %i.cb to i32
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p, %bb.o
  store i8 13, ptr %i.c, align 8, !alias.scope !45892, !noalias !45893
  store ptr %i.bk, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !45892, !noalias !45893
  store i64 %.sroa.11.0.copyload.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !45892, !noalias !45893
  br label %bb.y

bb.t:                                             ; preds = %bb.r
  store i8 23, ptr %i.c, align 8, !alias.scope !45892, !noalias !45893
  br label %bb.y

bb.u:                                             ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i.i.i"
  %i.ce = inttoptr i64 %.sroa.11.0.copyload.i.i.i.i.i.i to ptr ; 3 uses
  invoke fastcc void @"_ZN189_$LT$xtask..common..instance.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..instance..Binary$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$11visit_bytes17he47b7bedd064dc2dE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ce, i64 noundef %.sroa.15.0.copyload.i.i.i.i.i.i)
          to label %bb.w unwind label %bb.v, !noalias !45895

bb.v:                                             ; preds = %bb.u
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr %.sroa.5106.0.copyload298.i249.i.i.i, ptr %.sroa.648.0..sroa_idx49.i.i.i.i, align 8, !noalias !45838
  store i64 %.sroa.6107.0.copyload315.i248.i.i.i, ptr %.sroa.751.0..sroa_idx52.i.i.i.i, align 8, !noalias !45838
  store i64 %i.ab, ptr %i.m, align 8, !noalias !45838
  %i.cg = icmp eq i64 %.sroa.61.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.cg, label %.body.i.i.i.i, label %.sink.split.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.ch = icmp eq i64 %.sroa.61.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.ch, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h00c378d25e558f15E.exit.i.i.i.i.i.i.i", label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h00c378d25e558f15E.exit.i.i.i.sink.split.i.i.i.i"

bb.x:                                             ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i.i.i"
  %i.ci = inttoptr i64 %.sroa.61.0.copyload.i.i.i.i.i.i to ptr
  call fastcc void @"_ZN189_$LT$xtask..common..instance.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..instance..Binary$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$20visit_borrowed_bytes17h6f8792e51cfc318eE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ci, i64 noundef %.sroa.11.0.copyload.i.i.i.i.i.i), !noalias !45866
  br label %bb.y

end_hunk_7
begin_hunk_8_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17ha4a1917d37b0a4adE":bb.a

default.unreachable:                              ; preds = %bb.v, %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !46024
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i.i.i, ptr %i.at, align 8, !noalias !46024
  store i8 3, ptr %i.e, align 8, !noalias !46024
  %i.au = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89), !noalias !46027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !46024
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.av = icmp sgt i64 %.sroa.2.0.copyload.i.i.i.i.i, -1
  br i1 %i.av, label %_ZN10serde_json2de12ParserNumber5visit17hefd98fec7c33f05bE.exit.i.i.i.i.i, label %bb.q, !prof !17

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !46024
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i.i.i, ptr %i.aw, align 8, !noalias !46024
  store i8 2, ptr %i.d, align 8, !noalias !46024
  %i.ax = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89), !noalias !46027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !46024
  br label %bb.r

_ZN10serde_json2de12ParserNumber5visit17hefd98fec7c33f05bE.exit.i.i.i.i.i: ; preds = %bb.p, %bb.n
  %.pn2.i.i.i.i.i.i = inttoptr i64 %.sroa.2.0.copyload.i.i.i.i.i to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !46011
  br label %"_ZN13tracing_trace5entry1_90_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$tracing_trace..entry..ResourceId$GT$11deserialize17h948950a35d16cf20E.exit"

bb.r:                                             ; preds = %bb.q, %bb.o
  %.pn2.i.ph.i.i.i.i.i = phi ptr [ %i.ax, %bb.q ], [ %i.au, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !46011
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val26.i.i.i.i.i = load i64, ptr %i.ay, align 8, !alias.scope !46011
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val27.i.i.i.i.i = load i64, ptr %i.az, align 8, !alias.scope !46011
  %i.ba = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h0bd662c0478d6700E(ptr noalias noundef nonnull align 8 %.pn2.i.ph.i.i.i.i.i, i64 %.val26.i.i.i.i.i, i64 %.val27.i.i.i.i.i)
  br label %"_ZN13tracing_trace5entry1_90_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$tracing_trace..entry..ResourceId$GT$11deserialize17h948950a35d16cf20E.exit"

bb.s:                                             ; preds = %bb.l
  %i.bb = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17hc0ca08a5a6262175E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val28.i.i.i.i.i = load i64, ptr %i.bc, align 8, !alias.scope !46011
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val29.i.i.i.i.i = load i64, ptr %i.bd, align 8, !alias.scope !46011
  %i.be = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h0bd662c0478d6700E(ptr noalias noundef nonnull align 8 %i.bb, i64 %.val28.i.i.i.i.i, i64 %.val29.i.i.i.i.i)
  br label %"_ZN13tracing_trace5entry1_90_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$tracing_trace..entry..ResourceId$GT$11deserialize17h948950a35d16cf20E.exit"

bb.t:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !46011
  call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17haefe54babd6cefdfE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(96) %0, i1 noundef zeroext true)
  %i.bf = load i64, ptr %i.h, align 8, !range !2364, !noalias !46011, !noundef !8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  br i1 %i.bg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !46011, !nonnull !8, !align !461, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !46011
  br label %"_ZN13tracing_trace5entry1_90_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$tracing_trace..entry..ResourceId$GT$11deserialize17h948950a35d16cf20E.exit"

bb.v:                                             ; preds = %bb.t
  %.sroa.241.0.copyload.i.i.i.i.i = load i64, ptr %i.bh, align 8, !noalias !46011 ; 4 uses
  switch i64 %i.bf, label %default.unreachable [
    i64 0, label %bb.w
    i64 1, label %_ZN10serde_json2de12ParserNumber5visit17hefd98fec7c33f05bE.exit35.i.i.i.i.i
    i64 2, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !46028
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.241.0.copyload.i.i.i.i.i, ptr %i.bj, align 8, !noalias !46028
  store i8 3, ptr %i.c, align 8, !noalias !46028
  %i.bk = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89), !noalias !46031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !46028
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.bl = icmp sgt i64 %.sroa.241.0.copyload.i.i.i.i.i, -1
  br i1 %i.bl, label %_ZN10serde_json2de12ParserNumber5visit17hefd98fec7c33f05bE.exit35.i.i.i.i.i, label %bb.y, !prof !17

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !46028
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.241.0.copyload.i.i.i.i.i, ptr %i.bm, align 8, !noalias !46028
  store i8 2, ptr %i.b, align 8, !noalias !46028
  %i.bn = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89), !noalias !46031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !46028
  br label %bb.z

_ZN10serde_json2de12ParserNumber5visit17hefd98fec7c33f05bE.exit35.i.i.i.i.i: ; preds = %bb.x, %bb.v
  %.pn2.i32.i.i.i.i.i = inttoptr i64 %.sroa.241.0.copyload.i.i.i.i.i to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !46011
  br label %"_ZN13tracing_trace5entry1_90_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$tracing_trace..entry..ResourceId$GT$11deserialize17h948950a35d16cf20E.exit"

bb.z:                                             ; preds = %bb.y, %bb.w
  %.pn2.i32.ph.i.i.i.i.i = phi ptr [ %i.bn, %bb.y ], [ %i.bk, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !46011
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val30.i.i.i.i.i = load i64, ptr %i.bo, align 8, !alias.scope !46011
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val31.i.i.i.i.i = load i64, ptr %i.bp, align 8, !alias.scope !46011
  %i.bq = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h0bd662c0478d6700E(ptr noalias noundef nonnull align 8 %.pn2.i32.ph.i.i.i.i.i, i64 %.val30.i.i.i.i.i, i64 %.val31.i.i.i.i.i)
  br label %"_ZN13tracing_trace5entry1_90_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$tracing_trace..entry..ResourceId$GT$11deserialize17h948950a35d16cf20E.exit"

"_ZN13tracing_trace5entry1_90_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$tracing_trace..entry..ResourceId$GT$11deserialize17h948950a35d16cf20E.exit": ; preds = %bb.g, %bb.h, %bb.m, %_ZN10serde_json2de12ParserNumber5visit17hefd98fec7c33f05bE.exit.i.i.i.i.i, %bb.r, %bb.s, %bb.u, %_ZN10serde_json2de12ParserNumber5visit17hefd98fec7c33f05bE.exit35.i.i.i.i.i, %bb.z
  %.sroa.10.1.in.i.i.i.i.i = phi ptr [ %.pn2.i32.i.i.i.i.i, %_ZN10serde_json2de12ParserNumber5visit17hefd98fec7c33f05bE.exit35.i.i.i.i.i ], [ %.pn2.i.i.i.i.i.i, %_ZN10serde_json2de12ParserNumber5visit17hefd98fec7c33f05bE.exit.i.i.i.i.i ], [ %i.ba, %bb.r ], [ %i.be, %bb.s ], [ %i.bq, %bb.z ], [ %i.bi, %bb.u ], [ %i.as, %bb.m ], [ %i.ae, %bb.g ], [ %i.ah, %bb.h ]
  %.sroa.0.1.i.i.i.i.i = phi i64 [ 0, %_ZN10serde_json2de12ParserNumber5visit17hefd98fec7c33f05bE.exit35.i.i.i.i.i ], [ 0, %_ZN10serde_json2de12ParserNumber5visit17hefd98fec7c33f05bE.exit.i.i.i.i.i ], [ 1, %bb.r ], [ 1, %bb.s ], [ 1, %bb.z ], [ 1, %bb.u ], [ 1, %bb.m ], [ 1, %bb.g ], [ 1, %bb.h ]
  %i.br = insertvalue { i64, ptr } poison, i64 %.sroa.0.1.i.i.i.i.i, 0
  %i.bs = insertvalue { i64, ptr } %i.br, ptr %.sroa.10.1.in.i.i.i.i.i, 1
  ret { i64, ptr } %i.bs
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17had3384c7f898ecabE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [32 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46032)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46035)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46040)
  %i.i = load i8, ptr %1, align 8, !range !714, !alias.scope !46042, !noalias !46043, !noundef !8
  switch i8 %i.i, label %bb.b [
    i8 12, label %bb.c
    i8 13, label %bb.c
    i8 21, label %bb.d
  ], !prof !11818

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !46044
  call fastcc void @_ZN5serde7private2de7content18content_unexpected17hea1ecf289fede1deE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1), !noalias !46043
  %i.j = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 1 @38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @36)
          to label %bb.u unwind label %bb.t, !noalias !46044

bb.c:                                             ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !46044
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !46032
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 22, ptr %i.k, align 8, !noalias !46044
  call fastcc void @"_ZN180_$LT$xtask..common..client.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..client..Method$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h0a1438cb94a9d3c4E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.a), !noalias !46042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !46044
  br label %"_ZN5xtask6common6client1_87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..client..Method$GT$11deserialize17ha114f8891d5580a1E.exit"

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.l, align 8, !alias.scope !46042, !noalias !46043
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !46042, !noalias !46043, !nonnull !8, !noundef !8 ; 9 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !46042, !noalias !46043 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !46044
  %i.m = icmp ult i64 %.sroa.3.0.copyload.i.i, 144115188075855872
  tail call void @llvm.assume(i1 %i.m)
  %.idx.i.i = shl nuw nsw i64 %.sroa.3.0.copyload.i.i, 6
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 %.idx.i.i
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.h, align 8, !alias.scope !46045, !noalias !46048
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.o, align 8, !alias.scope !46045, !noalias !46048
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.p, align 8, !alias.scope !46045, !noalias !46048
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.n, ptr %i.q, align 8, !alias.scope !46045, !noalias !46048
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46050)
  %i.r = icmp eq i64 %.sroa.3.0.copyload.i.i, 0
  br i1 %i.r, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.thread.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i"

bb.e:                                             ; preds = %bb.o, %bb.f
  %.pn24.i.i = phi { ptr, i32 } [ %i.s, %bb.f ], [ %.pn.i.i, %bb.o ]
  invoke fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h2bbd3020dce2675aE"(ptr noalias noundef align 8 dereferenceable(32) %i.h) #55
          to label %.thread14.i.i unwind label %bb.s, !noalias !46044

bb.f:                                             ; preds = %bb.q, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.thread.i.i"
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i": ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 64 ; 2 uses
  store ptr %i.t, ptr %i.p, align 8, !alias.scope !46050, !noalias !46053
  %.sroa.02.0.copyload.i.i = load i8, ptr %.sroa.2.0.copyload.i.i, align 8, !noalias !46055 ; 2 uses
  %.not.i.i = icmp eq i8 %.sroa.02.0.copyload.i.i, 22
  br i1 %.not.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.thread.i.i", label %bb.g, !prof !6578

bb.g:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i"
  %.sroa.7.0..sroa.2.8..sroa.4.0.copyload.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 1
  %.sroa.25.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !46044
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.25.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa.2.8..sroa.4.0.copyload.i.sroa_idx.i.i, i64 31, i1 false), !noalias !46044
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !46044
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false), !noalias !46044
  store i8 %.sroa.02.0.copyload.i.i, ptr %i.g, align 8, !noalias !46044
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !46044
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46056)
  %i.v = icmp eq i64 %.sroa.3.0.copyload.i.i, 1
  br i1 %i.v, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit28.thread.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit28.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.thread.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i", %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !46044
  store i8 11, ptr %i.e, align 8, !noalias !46044
  %i.w = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull align 1 @35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @36)
          to label %bb.h unwind label %bb.f, !noalias !46044

bb.h:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.thread.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !46044
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8, !alias.scope !46043, !noalias !46042
  store i8 1, ptr %0, align 8, !alias.scope !46043, !noalias !46042
  br label %bb.i

bb.i:                                             ; preds = %bb.r, %bb.h
  call fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h2bbd3020dce2675aE"(ptr noalias noundef align 8 dereferenceable(32) %i.h), !noalias !46044
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !46044
  br label %"_ZN5xtask6common6client1_87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..client..Method$GT$11deserialize17ha114f8891d5580a1E.exit"

bb.j:                                             ; preds = %"_ZN4core3ptr134drop_in_place$LT$core..option..Option$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h855d6e31624cc010E.exit.i.i", %"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17h513ad4514e2ac782E.exit.i.i.i"
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.l, %bb.j
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.aa, %bb.l ], [ %i.y, %bb.j ]
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef align 8 dereferenceable(32) %i.f) #55
          to label %bb.o unwind label %bb.s, !noalias !46044

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit28.i.i": ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 128
  store ptr %i.z, ptr %i.p, align 8, !alias.scope !46056, !noalias !46059
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.t, i64 64, i1 false), !noalias !46061
  %.pr.i.i = load i8, ptr %i.d, align 8, !noalias !46044
  %.not22.i.i = icmp eq i8 %.pr.i.i, 22
  br i1 %.not22.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit28.thread.i.i", label %bb.k

bb.k:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit28.i.i"
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.d) #57
          to label %"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17h513ad4514e2ac782E.exit.i.i.i" unwind label %bb.l, !noalias !46044, !inline_history !14900

bb.l:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.ab) #58
          to label %.body.i.i unwind label %bb.m, !noalias !46044, !inline_history !14900

bb.m:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !46062, !inline_history !14900
  unreachable

"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17h513ad4514e2ac782E.exit.i.i.i": ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.ad) #57
          to label %"_ZN4core3ptr134drop_in_place$LT$core..option..Option$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h855d6e31624cc010E.exit.i.i" unwind label %bb.j, !noalias !46044

"_ZN4core3ptr134drop_in_place$LT$core..option..Option$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h855d6e31624cc010E.exit.i.i": ; preds = %"_ZN4core3ptr106drop_in_place$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$17h513ad4514e2ac782E.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !46044
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !46044
  store i8 11, ptr %i.c, align 8, !noalias !46044
  %i.ae = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 1 @35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @36)
          to label %bb.n unwind label %bb.j, !noalias !46044

bb.n:                                             ; preds = %"_ZN4core3ptr134drop_in_place$LT$core..option..Option$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h855d6e31624cc010E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !46044
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !alias.scope !46043, !noalias !46042
  store i8 1, ptr %0, align 8, !alias.scope !46043, !noalias !46042
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef align 8 dereferenceable(32) %i.f)
          to label %bb.q unwind label %bb.p, !noalias !46044

bb.o:                                             ; preds = %bb.p, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.ag, %bb.p ], [ %eh.lpad-body.i.i, %.body.i.i ]
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef align 8 dereferenceable(32) %i.g) #55
          to label %bb.e unwind label %bb.s, !noalias !46044

bb.p:                                             ; preds = %bb.n
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !46044
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef align 8 dereferenceable(32) %i.g)
          to label %bb.r unwind label %bb.f, !noalias !46044

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !46044
  br label %bb.i

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit28.thread.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit28.i.i", %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !46044
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !46044
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !46044
  %.sroa.012.0.copyload.i.i = load i8, ptr %i.f, align 8, !noalias !46044
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 33
  %.sroa.819.0..sroa_idx20.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.819.0..sroa_idx20.i.i, ptr noundef nonnull align 1 dereferenceable(31) %i.ah, i64 31, i1 false), !noalias !46044
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !46044
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !46044
  call fastcc void @"_ZN4core3ptr145drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$serde_core..private..content..Content$C$serde_core..private..content..Content$RP$$GT$$GT$17h2bbd3020dce2675aE"(ptr noalias noundef align 8 dereferenceable(32) %i.h), !noalias !46044
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !46044
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 %.sroa.012.0.copyload.i.i, ptr %i.ai, align 8, !noalias !46044
  call fastcc void @"_ZN180_$LT$xtask..common..client.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..client..Method$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$10visit_enum17h0a1438cb94a9d3c4E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.a), !noalias !46042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !46044
  br label %"_ZN5xtask6common6client1_87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..client..Method$GT$11deserialize17ha114f8891d5580a1E.exit"

bb.s:                                             ; preds = %bb.t, %bb.o, %.body.i.i, %bb.e
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !46044
  unreachable

bb.t:                                             ; preds = %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1) #55
          to label %.thread14.i.i unwind label %bb.s, !noalias !46043

bb.u:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !46044
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.al, align 8, !alias.scope !46043, !noalias !46042
  store i8 1, ptr %0, align 8, !alias.scope !46043, !noalias !46042
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1), !noalias !46043
  br label %"_ZN5xtask6common6client1_87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..client..Method$GT$11deserialize17ha114f8891d5580a1E.exit"

.thread14.i.i:                                    ; preds = %bb.t, %bb.e
  %.pn2612.i.i = phi { ptr, i32 } [ %.pn24.i.i, %bb.e ], [ %i.ak, %bb.t ]
  resume { ptr, i32 } %.pn2612.i.i

"_ZN5xtask6common6client1_87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..client..Method$GT$11deserialize17ha114f8891d5580a1E.exit": ; preds = %bb.c, %bb.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit28.thread.i.i", %bb.u
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hb1fd3427aca43d35E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46067)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46070)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46072)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46077)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46080)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46082)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !46085, !noalias !46090, !noundef !8 ; 2 uses
  %.promoted.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !46094, !noalias !46095 ; 2 uses
  %i.g = icmp ult i64 %.promoted.i.i.i.i, %i.f
  br i1 %i.g, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !46085, !noalias !46090, !nonnull !8, !align !800, !noundef !8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i
  %i.j = phi i64 [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.m, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46096)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46097)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !46098, !noundef !8
  switch i8 %i.l, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 34, label %bb.d
  ], !prof !2502

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !46099, !noalias !46095
  %exitcond.not.i.i.i.i = icmp eq i64 %i.m, %i.f
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.i, label %bb.b

.loopexit.i.i.i:                                  ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !46102
  store i64 5, ptr %i.c, align 8, !noalias !46102
  %i.n = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hbff09041473190e1E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !46103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !46102
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.o, align 8, !alias.scope !46103, !noalias !46104
  store i8 1, ptr %0, align 8, !alias.scope !46103, !noalias !46104
  br label %"_ZN188_$LT$xtask..common..workload.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..workload..Workload$GT$..deserialize..__Field$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17hdffb149856a6ab5aE.exit"

bb.d:                                             ; preds = %bb.b
end_hunk_8
begin_hunk_9_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hd8bb755f2e3ed434E":bb.a
bb.bk:                                            ; preds = %"_ZN4core3ptr49drop_in_place$LT$xtask..common..command..Body$GT$17h4863229f07924fbbE.exit.i.i.i.i.i.i.i.i.i.i.i.i", %bb.u, %bb.r
  %.sroa.13.5.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.13.4.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr49drop_in_place$LT$xtask..common..command..Body$GT$17h4863229f07924fbbE.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.ep, %bb.r ], [ %i.ex, %bb.u ] ; 2 uses
  %i.hg = icmp eq i64 %i.ed, 0
  br i1 %i.hg, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit186.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ef) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ef, i64 noundef %i.ed, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !46506
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit186.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit186.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.bl, %bb.bk, %bb.n, %bb.k
  %.sroa.13.6.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.13.5.i.i.i.i.i.i.i.i.i.i.i, %bb.bl ], [ %.sroa.13.5.i.i.i.i.i.i.i.i.i.i.i, %bb.bk ], [ %i.ef, %bb.k ], [ %i.em, %bb.n ] ; 3 uses
  switch i64 %.sroa.0189.0.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bm [
    i64 -9223372036854775808, label %bb.bn
    i64 0, label %bb.bn
  ]

bb.bm:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit186.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.0189.0.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !46509
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit186.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit186.i.i.i.i.i.i.i.i.i.i.i.i", %bb.f
  %.sroa.13.7.ph.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.13.6.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit186.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.13.6.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit186.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.13.6.i.i.i.i.i.i.i.i.i.i.i, %bb.bm ], [ %i.dw, %bb.f ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.18.72..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.30.i.i.i.i.i.i.i.i.i.i.i, i64 72, i1 false), !noalias !46514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.20.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.31.i.i.i.i.i.i.i.i.i.i.i, i64 72, i1 false), !noalias !46514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.22.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.32.i.i.i.i.i.i.i.i.i.i.i, i64 48, i1 false), !noalias !46514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !46299
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h7b44a33c1511d1d6E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.bg)
          to label %.thread.i.i.i.i.i.i.i.i.i.i unwind label %.body.thread11.i.i.i.i.i.i.i.i.i.i, !noalias !46515

bb.bo:                                            ; preds = %bb.ba
  %.not124.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.hb, 3
  %..sroa.688.0.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not124.i.i.i.i.i.i.i.i.i.i.i.i, i8 1, i8 %i.hb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.31.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.bd, i64 72, i1 false), !noalias !46299
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.30.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.bc, i64 72, i1 false), !noalias !46299
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.32.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.bb, i64 48, i1 false), !noalias !46299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !46306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !46306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !46306
  store i64 %i.ed, ptr %i.bf, align 8, !noalias !46299
  store ptr %i.ef, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46299
  store i64 %.sroa.10195.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46299
  store i64 %.sroa.0189.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46299
  store ptr %.sroa.8.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46299
  store i64 %.sroa.11.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46299
  store i64 %.sroa.0209.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46299
  store ptr %.sroa.8211.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46299
  store i64 %.sroa.11212.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46299
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.12.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.30.i.i.i.i.i.i.i.i.i.i.i, i64 72, i1 false), !noalias !46299
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.1342.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.31.i.i.i.i.i.i.i.i.i.i.i, i64 72, i1 false), !noalias !46299
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.14.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.32.i.i.i.i.i.i.i.i.i.i.i, i64 48, i1 false), !noalias !46299
  store i16 %i.fs, ptr %.sroa.15.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46299
  store i16 %i.fp, ptr %.sroa.16.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 2, !noalias !46299
  store i8 %..sroa.688.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.17.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !46299
  store i8 %i.eq, ptr %.sroa.18.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !46299
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.444.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46299, !nonnull !8, !noundef !8 ; 2 uses
  %.sroa.55.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.646.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46299, !nonnull !8, !noundef !8 ; 2 uses
  %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cv, align 8, !noalias !46299 ; 2 uses
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h7b44a33c1511d1d6E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.bg)
          to label %.noexc8.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.bq, !noalias !46299

.noexc8.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.bo
  %i.hh = icmp eq ptr %.sroa.55.0.copyload.i.i.i.i.i.i.i.i.i.i, %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i
  br i1 %i.hh, label %bb.bs, label %bb.bp, !prof !17

bb.bp:                                            ; preds = %.noexc8.i.i.i.i.i.i.i.i.i.i.i
  %i.hi = ptrtoint ptr %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i to i64
  %i.hj = ptrtoint ptr %.sroa.55.0.copyload.i.i.i.i.i.i.i.i.i.i to i64
  %i.hk = sub nuw i64 %i.hj, %i.hi
  %i.hl = lshr exact i64 %i.hk, 5
  %i.hm = add i64 %i.hl, %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !46516
  store i64 %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %i.ak, align 8, !noalias !46516
  %i.hn = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17hdb035e64924287edE(i64 noundef %i.hm, ptr noundef nonnull align 1 %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @697)
          to label %bb.br unwind label %bb.bq, !noalias !46299

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.ho = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$xtask..common..command..Command$GT$17ha1c98750d591a4ceE"(ptr noalias noundef align 8 dereferenceable(272) %i.bf) #55
          to label %.body.i.i.i.i unwind label %bb.bt, !noalias !46299

bb.br:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !46516
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$xtask..common..command..Command$GT$17ha1c98750d591a4ceE"(ptr noalias noundef align 8 dereferenceable(272) %i.bf)
          to label %.thread.sink.split.i.i.i.i.i.i.i.i.i.i unwind label %.body.thread11.i.i.i.i.i.i.i.i.i.i, !noalias !46515

bb.bs:                                            ; preds = %.noexc8.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.18.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, i64 128, i1 false), !noalias !46514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.20.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.31.i.i.i.i.i.i.i.i.i.i.i, i64 72, i1 false), !noalias !46282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.22.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.32.i.i.i.i.i.i.i.i.i.i.i, i64 48, i1 false), !noalias !46282
  %.sroa.24.0.copyload24.i.i.i.i.i.i.i = load i64, ptr %.sroa.15.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46514
  br label %.thread.sink.split.i.i.i.i.i.i.i.i.i.i

bb.bt:                                            ; preds = %.thread60.i.i.i.i.i.i.i.i.i.i.i, %bb.bq
  %i.hp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !46299
  unreachable

.thread60.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit.i.i.i.i.i.i.i.i.i.i.i.i", %.thread64.i.i.i.i.i.i.i.i.i.i.i
  %eh.lpad-body63.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.dt, %.thread64.i.i.i.i.i.i.i.i.i.i.i ], [ %.pn132.i.i.i.i.i.i.i.i.i.i.i.i, %bb.i ], [ %.pn132.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.pn132.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ]
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h7b44a33c1511d1d6E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.bg)
          to label %.body.i.i.i.i unwind label %bb.bt, !noalias !46299

.thread.sink.split.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.bs, %bb.br
  %.sroa.12.2.i.i.i.i.i.i.i = phi ptr [ %i.ef, %bb.bs ], [ %i.hn, %bb.br ]
  %.sroa.07.2.i.i.i.i.i.i.i = phi i64 [ %i.ed, %bb.bs ], [ -9223372036854775808, %bb.br ]
  %.sroa.24.2.i.i.i.i.i.i.i = phi i64 [ %.sroa.24.0.copyload24.i.i.i.i.i.i.i, %bb.bs ], [ undef, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !46299
  br label %.thread.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i:                      ; preds = %.thread.sink.split.i.i.i.i.i.i.i.i.i.i, %bb.bn
  %.sroa.12.3.i.i.i.i.i.i.i = phi ptr [ %.sroa.13.7.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.bn ], [ %.sroa.12.2.i.i.i.i.i.i.i, %.thread.sink.split.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.07.3.i.i.i.i.i.i.i = phi i64 [ -9223372036854775808, %bb.bn ], [ %.sroa.07.2.i.i.i.i.i.i.i, %.thread.sink.split.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.24.3.i.i.i.i.i.i.i = phi i64 [ undef, %bb.bn ], [ %.sroa.24.2.i.i.i.i.i.i.i, %.thread.sink.split.i.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !46299
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.30.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.31.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.32.i.i.i.i.i.i.i.i.i.i.i)
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h868c0129494917b8E.exit.i.i.i.i.i.i.i"

bb.bu:                                            ; preds = %bb.d
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.by, align 8, !alias.scope !46294, !noalias !46295
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !46294, !noalias !46295, !nonnull !8, !noundef !8 ; 4 uses
  %.sroa.33.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.33.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !46294, !noalias !46295 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0207.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !46515
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.54.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.55.i.i.i.i.i.i.i.i.i.i.i)
  %i.hq = icmp ult i64 %.sroa.33.0.copyload.i.i.i.i.i.i.i.i.i.i, 144115188075855872
  call void @llvm.assume(i1 %i.hq)
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.33.0.copyload.i.i.i.i.i.i.i.i.i.i, 6
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  store ptr %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %i.bz, align 8, !noalias !46519
  store ptr %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.445.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46519
  store i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.546.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46519
  store ptr %i.hr, ptr %.sroa.647.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46519
  store i8 22, ptr %i.ai, align 8, !noalias !46519
  store i64 0, ptr %i.ca, align 8, !noalias !46519
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !46519
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !46523
  store i64 -9223372036854775801, ptr %i.ah, align 8, !noalias !46523
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !46523
  store i64 -9223372036854775802, ptr %i.ag, align 8, !noalias !46523
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !46523
  store ptr null, ptr %i.af, align 8, !noalias !46523
  %i.hs = icmp eq i64 %.sroa.33.0.copyload.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.hs, label %.thread2041.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i"

.thread2041.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.bu
  store ptr null, ptr %i.af, align 8, !noalias !46523
  store i64 -9223372036854775802, ptr %i.ag, align 8, !noalias !46523
  store i64 -9223372036854775801, ptr %i.ah, align 8, !noalias !46523
  br label %bb.fl

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.bu
  %.sroa.6119.0..sroa_idx120.promoted.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.6119.0..sroa_idx120.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46523
  %.sroa.6102.0..sroa_idx103.promoted.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.6102.0..sroa_idx103.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46523
  %.sroa.681.0..sroa_idx82.promoted.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.681.0..sroa_idx82.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46523
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..string..String$GT$$GT$$GT$17h9ad4e0242820be81E.exit.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.4190.0.copyload1229.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.681.0..sroa_idx82.promoted.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.4190.0.copyload1228.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..string..String$GT$$GT$$GT$17h9ad4e0242820be81E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 30 uses
  %.sroa.8387.24491193.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.6102.0..sroa_idx103.promoted.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.8387.24491192.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..string..String$GT$$GT$$GT$17h9ad4e0242820be81E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 30 uses
  %.sroa.4196.0.copyload1157.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.6119.0..sroa_idx120.promoted.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.4196.0.copyload1156.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..string..String$GT$$GT$$GT$17h9ad4e0242820be81E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 30 uses
  %i.ht = phi ptr [ %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.jg, %"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..string..String$GT$$GT$$GT$17h9ad4e0242820be81E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 4 uses
  %.sroa.0.01124.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ 5, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..string..String$GT$$GT$$GT$17h9ad4e0242820be81E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 11 uses
  %.sroa.018.01123.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ 2, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.018.1.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..string..String$GT$$GT$$GT$17h9ad4e0242820be81E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 10 uses
  %.sroa.8.01122.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.8.1.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..string..String$GT$$GT$$GT$17h9ad4e0242820be81E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 9 uses
  %.sroa.023.01121.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ 3, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.023.1.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..string..String$GT$$GT$$GT$17h9ad4e0242820be81E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 11 uses
  %.sroa.0359.01120.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ -9223372036854775807, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.0359.1.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..string..String$GT$$GT$$GT$17h9ad4e0242820be81E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 42 uses
  %.sroa.14.01119.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.14.1.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..string..String$GT$$GT$$GT$17h9ad4e0242820be81E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 31 uses
  %.sroa.19.01118.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.19.1.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..string..String$GT$$GT$$GT$17h9ad4e0242820be81E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 10 uses
  %.sroa.0365.01117.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ -9223372036854775808, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.0365.1.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..string..String$GT$$GT$$GT$17h9ad4e0242820be81E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 42 uses
  %.sroa.14370.01116.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.14370.1.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..string..String$GT$$GT$$GT$17h9ad4e0242820be81E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 31 uses
  %.sroa.19371.01115.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.19371.1.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..string..String$GT$$GT$$GT$17h9ad4e0242820be81E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 10 uses
  %.sroa.0372.01114.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ -9223372036854775807, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.0372.1.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..string..String$GT$$GT$$GT$17h9ad4e0242820be81E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 42 uses
  %.sroa.13.01113.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.13.1.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..string..String$GT$$GT$$GT$17h9ad4e0242820be81E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 30 uses
  %.sroa.19379.01112.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.19379.1.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..string..String$GT$$GT$$GT$17h9ad4e0242820be81E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 10 uses
  %i.hu = phi ptr [ null, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.je, %"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..string..String$GT$$GT$$GT$17h9ad4e0242820be81E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 45 uses
  %.sroa.0385.245010401111.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ -9223372036854775802, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.0385.24501039.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..string..String$GT$$GT$$GT$17h9ad4e0242820be81E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 43 uses
  %i.hv = phi i64 [ -9223372036854775801, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.jd, %"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..string..String$GT$$GT$$GT$17h9ad4e0242820be81E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 45 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 64
  store ptr %i.hw, ptr %.sroa.445.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46519
  %.sroa.0.0.copyload11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.ht, align 8, !noalias !46527 ; 3 uses
  %.not.i.i.i.i.i13.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 22
  br i1 %.not.i.i.i.i.i13.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ht, i64 1
  %i.hx = load i64, ptr %i.ca, align 8, !noalias !46519, !noundef !8
  %i.hy = add i64 %i.hx, 1
  store i64 %i.hy, ptr %i.ca, align 8, !noalias !46519
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !46538
  store i8 %.sroa.0.0.copyload11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.v, align 8, !noalias !46538
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 31, i1 false), !noalias !46538
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ht, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.hz, i64 32, i1 false), !noalias !46538
  %i.ia = load i8, ptr %i.ai, align 8, !range !890, !noalias !46519, !noundef !8
  %i.ib = icmp eq i8 %i.ia, 22
  br i1 %i.ib, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.ai)
          to label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" unwind label %bb.dg, !noalias !46519

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.bw, %bb.bv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false), !noalias !46519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !46538
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !46538 ; 2 uses
  %.sroa.51.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.51.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46538 ; 11 uses
  %.sroa.10.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46538 ; 4 uses
  %.sroa.14.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46538 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46539)
  call void @llvm.experimental.noalias.scope.decl(metadata !46542)
  call void @llvm.experimental.noalias.scope.decl(metadata !46545)
  switch i8 %.sroa.0.0.copyload11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i [
    i8 1, label %bb.bx
    i8 4, label %bb.ci
    i8 12, label %bb.ct
    i8 13, label %bb.cx
    i8 14, label %bb.cy
    i8 15, label %bb.dc
  ], !prof !1095

.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ic = invoke fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content28ContentDeserializer$LT$E$GT$12invalid_type17hbef5b53211e707e3E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.v, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @59)
          to label %.noexc.i.i36.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, !noalias !46523

.noexc.i.i36.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.ic, ptr %i.cd, align 8, !alias.scope !46548, !noalias !46549
  store i8 1, ptr %i.t, align 8, !alias.scope !46548, !noalias !46549
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h6351af79ac099613E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.bx:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !46553)
  call void @llvm.experimental.noalias.scope.decl(metadata !46556)
  switch i8 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.by [
    i8 0, label %bb.bz
    i8 1, label %bb.ca
    i8 2, label %bb.cb
    i8 3, label %bb.cc
    i8 4, label %bb.cd
    i8 5, label %bb.ce
    i8 6, label %bb.cf
    i8 7, label %bb.cg
    i8 8, label %bb.ch
  ], !prof !46559

bb.by:                                            ; preds = %bb.bx
  %i.id = zext i8 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !46560
  store i64 %i.id, ptr %i.ce, align 8, !noalias !46560
  store i8 1, ptr %i.s, align 8, !noalias !46560
  %i.ie = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.s, ptr noundef nonnull align 1 @373, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @36)
          to label %.noexc.i.i.i.i.i.i.i.i35.i.i.i.i.i.i.i.i.i.i unwind label %bb.de, !noalias !46561

.noexc.i.i.i.i.i.i.i.i35.i.i.i.i.i.i.i.i.i.i:     ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !46560
  store ptr %i.ie, ptr %i.cd, align 8, !alias.scope !46562, !noalias !46549
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.bz:                                            ; preds = %bb.bx
  store i8 0, ptr %i.cb, align 1, !alias.scope !46562, !noalias !46549
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ca:                                            ; preds = %bb.bx
  store i8 1, ptr %i.cb, align 1, !alias.scope !46562, !noalias !46549
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.cb:                                            ; preds = %bb.bx
  store i8 2, ptr %i.cb, align 1, !alias.scope !46562, !noalias !46549
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.cc:                                            ; preds = %bb.bx
  store i8 3, ptr %i.cb, align 1, !alias.scope !46562, !noalias !46549
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.cd:                                            ; preds = %bb.bx
  store i8 4, ptr %i.cb, align 1, !alias.scope !46562, !noalias !46549
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ce:                                            ; preds = %bb.bx
  store i8 5, ptr %i.cb, align 1, !alias.scope !46562, !noalias !46549
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.cf:                                            ; preds = %bb.bx
  store i8 6, ptr %i.cb, align 1, !alias.scope !46562, !noalias !46549
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.cg:                                            ; preds = %bb.bx
  store i8 7, ptr %i.cb, align 1, !alias.scope !46562, !noalias !46549
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ch:                                            ; preds = %bb.bx
  store i8 8, ptr %i.cb, align 1, !alias.scope !46562, !noalias !46549
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ci:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !46563)
  switch i64 %.sroa.51.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cj [
    i64 0, label %bb.ck
    i64 1, label %bb.cl
    i64 2, label %bb.cm
    i64 3, label %bb.cn
    i64 4, label %bb.co
    i64 5, label %bb.cp
    i64 6, label %bb.cq
    i64 7, label %bb.cr
    i64 8, label %bb.cs
  ], !prof !46559

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !46566
  store i64 %.sroa.51.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.cc, align 8, !noalias !46566
  store i8 1, ptr %i.r, align 8, !noalias !46566
  %i.if = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.r, ptr noundef nonnull align 1 @373, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @36)
          to label %.noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.de, !noalias !46561

.noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !46566
  store ptr %i.if, ptr %i.cd, align 8, !alias.scope !46567, !noalias !46549
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ck:                                            ; preds = %bb.ci
  store i8 0, ptr %i.cb, align 1, !alias.scope !46567, !noalias !46549
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.cl:                                            ; preds = %bb.ci
  store i8 1, ptr %i.cb, align 1, !alias.scope !46567, !noalias !46549
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.cm:                                            ; preds = %bb.ci
  store i8 2, ptr %i.cb, align 1, !alias.scope !46567, !noalias !46549
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.cn:                                            ; preds = %bb.ci
  store i8 3, ptr %i.cb, align 1, !alias.scope !46567, !noalias !46549
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.co:                                            ; preds = %bb.ci
  store i8 4, ptr %i.cb, align 1, !alias.scope !46567, !noalias !46549
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.cp:                                            ; preds = %bb.ci
  store i8 5, ptr %i.cb, align 1, !alias.scope !46567, !noalias !46549
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.cq:                                            ; preds = %bb.ci
  store i8 6, ptr %i.cb, align 1, !alias.scope !46567, !noalias !46549
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.cr:                                            ; preds = %bb.ci
  store i8 7, ptr %i.cb, align 1, !alias.scope !46567, !noalias !46549
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.cs:                                            ; preds = %bb.ci
  store i8 8, ptr %i.cb, align 1, !alias.scope !46567, !noalias !46549
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ct:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ig = inttoptr i64 %.sroa.10.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i to ptr ; 3 uses
  invoke fastcc void @"_ZN188_$LT$xtask..common..command.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..command..Command$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17he73fb701130bab9cE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.t, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ig, i64 noundef %.sroa.14.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.cv unwind label %bb.cu, !noalias !46568

bb.cu:                                            ; preds = %bb.ct
  %i.ih = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr %.sroa.4196.0.copyload1157.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.6119.0..sroa_idx120.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46523
  store ptr %.sroa.8387.24491193.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.6102.0..sroa_idx103.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46523
  store ptr %.sroa.4190.0.copyload1229.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.681.0..sroa_idx82.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46523
  store ptr %i.hu, ptr %i.af, align 8, !noalias !46523
  store i64 %.sroa.0385.245010401111.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ag, align 8, !noalias !46523
  store i64 %i.hv, ptr %i.ah, align 8, !noalias !46523
  %i.ii = icmp eq i64 %.sroa.51.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ii, label %.body.i.i14.i.i.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.cv:                                            ; preds = %bb.ct
  %i.ij = icmp eq i64 %.sroa.51.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ij, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h6351af79ac099613E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ig, i64 noundef %.sroa.51.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !46571
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h6351af79ac099613E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.cx:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ik = inttoptr i64 %.sroa.51.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i to ptr
  invoke fastcc void @"_ZN188_$LT$xtask..common..command.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..command..Command$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17he73fb701130bab9cE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.t, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ik, i64 noundef %.sroa.10.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.dd unwind label %bb.de, !noalias !46549

bb.cy:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.il = inttoptr i64 %.sroa.10.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i to ptr ; 3 uses
  invoke fastcc void @"_ZN188_$LT$xtask..common..command.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..command..Command$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$11visit_bytes17h30e13d918041c848E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.t, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.il, i64 noundef %.sroa.14.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.da unwind label %bb.cz, !noalias !46575

bb.cz:                                            ; preds = %bb.cy
  %i.im = landingpad { ptr, i32 }
end_hunk_9
begin_hunk_10_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17he945190ed25faee8E":bb.a
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.dt, align 1, !alias.scope !46879, !noalias !46880
  br label %"_ZN5xtask6common7command1_90_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..command..SyncMode$GT$11deserialize17h73bb87b934ea18c4E.exit"

bb.av:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !46810
  store i8 11, ptr %i.g, align 8, !noalias !46810
  %i.du = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 1 @35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @36), !noalias !46810
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !46810
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.du, ptr %i.dv, align 8, !alias.scope !46809, !noalias !46808
  br label %"_ZN5xtask6common7command1_90_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..command..SyncMode$GT$11deserialize17h73bb87b934ea18c4E.exit"

bb.aw:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !46810
  store i8 11, ptr %i.f, align 8, !noalias !46810
  %i.dw = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h8296a6a3a142d35fE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull align 1 @35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @36), !noalias !46810
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !46810
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dw, ptr %i.dx, align 8, !alias.scope !46809, !noalias !46808
  br label %"_ZN5xtask6common7command1_90_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..command..SyncMode$GT$11deserialize17h73bb87b934ea18c4E.exit"

bb.ax:                                            ; preds = %bb.c
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !alias.scope !46808, !noalias !46809, !nonnull !8, !noundef !8 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  %.pre.i.i = load i8, ptr %i.dz, align 8, !range !714, !alias.scope !46847, !noalias !46897
  br label %bb.d

"_ZN5xtask6common7command1_90_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..command..SyncMode$GT$11deserialize17h73bb87b934ea18c4E.exit": ; preds = %bb.b, %bb.ah, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw
  %storemerge.i.i = phi i8 [ 0, %bb.au ], [ 1, %bb.ah ], [ 1, %bb.ap ], [ 1, %bb.ar ], [ 1, %bb.at ], [ 0, %bb.aq ], [ 0, %bb.as ], [ 1, %bb.aw ], [ 1, %bb.av ], [ 1, %bb.b ]
  store i8 %storemerge.i.i, ptr %0, align 8, !alias.scope !46809, !noalias !46808
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hf2416249e43de3d8E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 13 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 11 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [72 x i8], align 8                ; 26 uses
  %i.l = alloca [80 x i8], align 8                ; 14 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %i.s = alloca [80 x i8], align 8                ; 14 uses
  %i.t = alloca [40 x i8], align 8                ; 13 uses
  %.sroa.18.i.i.i.i.i.i.i = alloca [64 x i8], align 8 ; 6 uses
  %i.u = alloca [32 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [32 x i8], align 8                ; 11 uses
  %i.x = alloca [80 x i8], align 8                ; 9 uses
  %i.y = alloca [80 x i8], align 8                ; 7 uses
  %i.z = alloca [24 x i8], align 8                ; 7 uses
  %i.aa = alloca [24 x i8], align 8               ; 10 uses
  %i.ab = alloca [72 x i8], align 8               ; 10 uses
  %.sroa.7.i.i.i = alloca [16 x i8], align 8      ; 5 uses
  %i.ac = alloca [24 x i8], align 8               ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46898)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46901)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46903)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46906)
  %i.ad = load i8, ptr %1, align 8, !range !714, !alias.scope !46908, !noalias !46909, !noundef !8
  %i.ae = icmp eq i8 %i.ad, 21
  br i1 %i.ae, label %bb.b, label %bb.ea, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.af, align 8, !alias.scope !46908, !noalias !46909
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !46908, !noalias !46909, !nonnull !8, !noundef !8 ; 4 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !46908, !noalias !46909 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46910)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !46913
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  %i.ag = icmp ult i64 %.sroa.3.0.copyload.i.i, 144115188075855872
  tail call void @llvm.assume(i1 %i.ag)
  %.idx.i.i.i = shl nuw nsw i64 %.sroa.3.0.copyload.i.i, 6
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 %.idx.i.i.i ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.ai, align 8, !noalias !46914
  %.sroa.414.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 40 ; 2 uses
  store ptr %.sroa.2.0.copyload.i.i, ptr %.sroa.414.0..sroa_idx.i.i.i, align 8, !noalias !46914
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  store i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !46914
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  store ptr %i.ah, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !46914
  store i8 22, ptr %i.ab, align 8, !noalias !46914
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 64 ; 2 uses
  store i64 0, ptr %i.aj, align 8, !noalias !46914
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !46914
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !46914
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !46914
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !46916
  store ptr null, ptr %i.aa, align 8, !noalias !46916
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 0, ptr %i.ak, align 8, !noalias !46916
  %i.al = icmp eq i64 %.sroa.3.0.copyload.i.i, 0
  br i1 %i.al, label %.loopexit.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i.i.i": ; preds = %bb.b
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %.sroa.438.0..sroa_idx.i11.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 3 uses
  %.sroa.539.0..sroa_idx.i12.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.sroa.640.0..sroa_idx.i13.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %.sroa.51.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.14.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.5136.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.3.0..sroa_idx.i.i.i184.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i185.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %.sroa.5132.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.6133.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.5129.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.6130.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i14.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.4.0..sroa_idx.i19.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.5.0..sroa_idx.i20.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.sroa.631.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.7.0..sroa_idx.i21.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.8.0..sroa_idx.i22.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.932.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %.sroa.1033.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %.sroa.1134.0..sroa_idx.i23.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %.sroa.1235.0..sroa_idx.i24.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %.sroa.438.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %.sroa.539.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.640.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.655.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.658.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.661.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.733.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %.sroa.1134.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %.sroa.1235.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %.sroa.3.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.3.sroa.5.16..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.3.sroa.6.16..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %.sroa.517.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.718.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr77drop_in_place$LT$core..option..Option$LT$xtask..common..assets..Asset$GT$$GT$17h03d7838dbe492b7aE.exit.i.i.i.i", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i.i.i"
  %i.bf = phi i64 [ 0, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.bi, %"_ZN4core3ptr77drop_in_place$LT$core..option..Option$LT$xtask..common..assets..Asset$GT$$GT$17h03d7838dbe492b7aE.exit.i.i.i.i" ]
  %i.bg = phi ptr [ %.sroa.2.0.copyload.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.bh, %"_ZN4core3ptr77drop_in_place$LT$core..option..Option$LT$xtask..common..assets..Asset$GT$$GT$17h03d7838dbe492b7aE.exit.i.i.i.i" ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 64 ; 3 uses
  store ptr %i.bh, ptr %.sroa.414.0..sroa_idx.i.i.i, align 8, !noalias !46914
  %.sroa.048.0.copyload.i.i.i.i.i.i.i = load i8, ptr %i.bg, align 8, !noalias !46920 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %.sroa.048.0.copyload.i.i.i.i.i.i.i, 22
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit.loopexit.i.i.i, label %bb.c

bb.c:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i.i.i"
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.bi = add nuw nsw i64 %i.bf, 1                ; 2 uses
  store i64 %i.bi, ptr %i.aj, align 8, !noalias !46914
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !46931
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, i64 31, i1 false), !noalias !46931
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !46931
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i64 32, i1 false), !noalias !46931
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !46931
  store i8 %.sroa.048.0.copyload.i.i.i.i.i.i.i, ptr %i.u, align 8, !noalias !46931
  invoke fastcc void @"_ZN10serde_core2de5impls79_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..string..String$GT$11deserialize17h480b2191756067ecE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.u)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h09c40987a587e440E.exit.i.i.i.i.i.i.i" unwind label %bb.dj, !noalias !46931

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h09c40987a587e440E.exit.i.i.i.i.i.i.i": ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !46931
  %i.bk = load i64, ptr %i.v, align 8, !range !929, !noalias !46931, !noundef !8 ; 6 uses
  %i.bl = icmp eq i64 %i.bk, -9223372036854775808
  %i.bm = load ptr, ptr %i.am, align 8, !noalias !46931 ; 6 uses
  br i1 %i.bl, label %bb.d, label %bb.e

bb.d:                                             ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h09c40987a587e440E.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !46931
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef align 8 dereferenceable(32) %i.w)
          to label %bb.dk unwind label %.loopexit.split-lp.i.i.i.i, !noalias !46916

bb.e:                                             ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h09c40987a587e440E.exit.i.i.i.i.i.i.i"
  %.sroa.5.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !46931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !46931
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18.i.i.i.i.i.i.i)
  %.sroa.015.0.copyload.i.i.i = load i8, ptr %i.w, align 8, !noalias !46931
  %.sroa.517.0.copyload.i.i.i = load i64, ptr %.sroa.517.0..sroa_idx.i.i.i, align 8, !noalias !46931 ; 2 uses
  %.sroa.718.0.copyload.i.i.i = load ptr, ptr %.sroa.718.0..sroa_idx.i.i.i, align 8, !noalias !46931 ; 9 uses
  %.sroa.9.0.copyload.i.i.i = load i64, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !46931 ; 5 uses
  switch i8 %.sroa.015.0.copyload.i.i.i, label %bb.f [
    i8 20, label %bb.g
    i8 21, label %bb.ao
  ], !prof !899

bb.f:                                             ; preds = %bb.e
  %i.bn = invoke fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content28ContentDeserializer$LT$E$GT$12invalid_type17hbef5b53211e707e3E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.w, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @45)
          to label %.loopexit.i.i.i.i unwind label %bb.df, !noalias !46931

bb.g:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.718.0.copyload.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !46932
  %i.bo = icmp ult i64 %.sroa.9.0.copyload.i.i.i, 288230376151711744
  call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %.sroa.718.0.copyload.i.i.i, i64 %.sroa.9.0.copyload.i.i.i
  store ptr %.sroa.718.0.copyload.i.i.i, ptr %i.t, align 8, !noalias !46932
  store ptr %.sroa.718.0.copyload.i.i.i, ptr %.sroa.438.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46932
  store i64 %.sroa.517.0.copyload.i.i.i, ptr %.sroa.539.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46932
  store ptr %i.bp, ptr %.sroa.640.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46932
  store i64 0, ptr %i.au, align 8, !noalias !46932
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !46932
  call void @llvm.experimental.noalias.scope.decl(metadata !46945)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !46948
  invoke fastcc void @"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..SeqAccess$GT$12next_element17ha71878d442abd76aE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.r, ptr nonnull align 8 dereferenceable(40) %i.t)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.ad, !noalias !46932

.noexc.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.g
  %i.bq = load i64, ptr %i.r, align 8, !range !1320, !noalias !46948, !noundef !8 ; 10 uses
  %i.br = icmp eq i64 %i.bq, -9223372036854775806
  %i.bs = load ptr, ptr %i.av, align 8, !noalias !46948 ; 8 uses
  br i1 %i.br, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !46948
  br label %bb.ae

bb.i:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.655.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.655.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !46948
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bq, -9223372036854775807
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.k, label %bb.j, !prof !14

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !46948
  invoke fastcc void @"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..SeqAccess$GT$12next_element17ha71878d442abd76aE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.q, ptr nonnull align 8 dereferenceable(40) %i.t)
          to label %bb.n unwind label %bb.m, !noalias !46950

bb.k:                                             ; preds = %bb.i
  %i.bt = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17hdb035e64924287edE(i64 noundef 0, ptr noundef nonnull align 1 @311, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @36)
          to label %bb.ae unwind label %bb.ad, !noalias !46932

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit75.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.u, %bb.t, %bb.t, %bb.m
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.bu, %bb.m ], [ %i.ch, %bb.t ], [ %i.ch, %bb.t ], [ %i.ch, %bb.u ] ; 3 uses
  switch i64 %i.bq, label %bb.l [
    i64 -9223372036854775808, label %.thread.i.i.i.i.i.i.i.i.i.i.i
    i64 0, label %.thread.i.i.i.i.i.i.i.i.i.i.i
  ]

bb.l:                                             ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit75.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bs) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bs, i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !46951
  br label %.thread.i.i.i.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.s, %bb.j
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit75.i.i.i.i.i.i.i.i.i.i.i.i"

bb.n:                                             ; preds = %bb.j
  %i.bv = load i64, ptr %i.q, align 8, !range !1320, !noalias !46948, !noundef !8 ; 9 uses
  %i.bw = icmp eq i64 %i.bv, -9223372036854775806
  %i.bx = load ptr, ptr %i.aw, align 8, !noalias !46948 ; 7 uses
  br i1 %i.bw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !46948
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit77.i.i.i.i.i.i.i.i.i.i.i.i"

bb.p:                                             ; preds = %bb.n
  %.sroa.658.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.658.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !46948
  %.not64.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bv, -9223372036854775807
  br i1 %.not64.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.s, label %bb.q, !prof !14

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !46956)
  call void @llvm.experimental.noalias.scope.decl(metadata !46959)
  call void @llvm.experimental.noalias.scope.decl(metadata !46962)
  %i.by = load ptr, ptr %.sroa.640.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !46965, !noalias !46966, !nonnull !8, !noundef !8
  %i.bz = load ptr, ptr %.sroa.438.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !46965, !noalias !46966, !nonnull !8, !noundef !8 ; 4 uses
  %i.ca = icmp eq ptr %i.bz, %i.by
  br i1 %i.ca, label %bb.x, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hef95df310627cd76E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hef95df310627cd76E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.q
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  store ptr %i.cb, ptr %.sroa.438.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !46965, !noalias !46966
  %.sroa.0.0.copyload2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.bz, align 8, !noalias !46972 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 22
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.x, label %bb.r

bb.r:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hef95df310627cd76E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.8.0..sroa_idx3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !46973
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 31, i1 false), !noalias !46973
  %i.cc = load i64, ptr %i.au, align 8, !alias.scope !46974, !noalias !46975, !noundef !8
  %i.cd = add i64 %i.cc, 1
  store i64 %i.cd, ptr %i.au, align 8, !alias.scope !46974, !noalias !46975
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !46973
  store i8 %.sroa.0.0.copyload2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.n, align 8, !noalias !46973
  invoke fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h47b19c6f7614efdfE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.o, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.n)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.t, !noalias !46948

.noexc.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !46973
  %i.ce = load i8, ptr %i.o, align 8, !range !610, !noalias !46973, !noundef !8
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.v, label %bb.w

bb.s:                                             ; preds = %bb.p
  %i.cg = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17hdb035e64924287edE(i64 noundef 1, ptr noundef nonnull align 1 @311, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @36)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit77.i.i.i.i.i.i.i.i.i.i.i.i" unwind label %bb.m, !noalias !46948

bb.t:                                             ; preds = %bb.x, %bb.r
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  switch i64 %i.bv, label %bb.u [
    i64 -9223372036854775808, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit75.i.i.i.i.i.i.i.i.i.i.i.i"
    i64 0, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit75.i.i.i.i.i.i.i.i.i.i.i.i"
  ]

bb.u:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bx) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bx, i64 noundef %i.bv, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !46976
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit75.i.i.i.i.i.i.i.i.i.i.i.i"

bb.v:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ci = load ptr, ptr %i.ay, align 8, !noalias !46973, !nonnull !8, !align !461, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !46973
  br label %bb.aa

bb.w:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cj = load i8, ptr %i.ax, align 1, !range !11934, !noalias !46973, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !46973
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hef95df310627cd76E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.q
  %i.ck = phi i8 [ %i.cj, %bb.w ], [ 0, %bb.q ], [ 0, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hef95df310627cd76E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !46948
  invoke fastcc void @"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..SeqAccess$GT$12next_element17ha71878d442abd76aE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p, ptr nonnull align 8 dereferenceable(40) %i.t)
          to label %bb.y unwind label %bb.t, !noalias !46950

bb.y:                                             ; preds = %bb.x
  %i.cl = load i64, ptr %i.p, align 8, !range !1320, !noalias !46948, !noundef !8 ; 3 uses
  %i.cm = icmp eq i64 %i.cl, -9223372036854775806
  %i.cn = load ptr, ptr %i.az, align 8, !noalias !46948 ; 2 uses
  br i1 %i.cm, label %bb.z, label %bb.af

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !46948
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.v
  %.sink106.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cn, %bb.z ], [ %i.ci, %bb.v ] ; 3 uses
  switch i64 %i.bv, label %bb.ab [
    i64 -9223372036854775808, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit77.i.i.i.i.i.i.i.i.i.i.i.i"
    i64 0, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit77.i.i.i.i.i.i.i.i.i.i.i.i"
  ]

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bx) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bx, i64 noundef %i.bv, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !46981
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit77.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit77.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ab, %bb.aa, %bb.aa, %bb.s, %bb.o
  %.sroa.7.0.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sink106.i.i.i.i.i.i.i.i.i.i.i.i, %bb.aa ], [ %.sink106.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ab ], [ %.sink106.i.i.i.i.i.i.i.i.i.i.i.i, %bb.aa ], [ %i.bx, %bb.o ], [ %i.cg, %bb.s ] ; 3 uses
  switch i64 %i.bq, label %bb.ac [
    i64 -9223372036854775808, label %bb.ae
    i64 0, label %bb.ae
  ]

bb.ac:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit77.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bs) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bs, i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !46986
  br label %bb.ae

bb.ad:                                            ; preds = %bb.k, %bb.g
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i.i.i.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ac, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit77.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit77.i.i.i.i.i.i.i.i.i.i.i.i", %bb.k, %bb.h
  %.sroa.7.1.ph.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bt, %bb.k ], [ %i.bs, %bb.h ], [ %.sroa.7.0.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit77.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.7.0.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit77.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.7.0.i.i.i.i.i.i.i.i.i.i.i, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !46932
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h7b44a33c1511d1d6E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.t)
          to label %.thread.i.i.i.i.i.i.i.i.i.i unwind label %.body.thread11.i.i.i.i.i.i.i.i.i.i, !noalias !46991

bb.af:                                            ; preds = %bb.y
  %.sroa.661.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.661.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !46948
  %.not66.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cl, -9223372036854775807 ; 3 uses
  %.70.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not66.i.i.i.i.i.i.i.i.i.i.i.i, i64 -9223372036854775808, i64 %i.cl ; 3 uses
  %..sroa.560.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not66.i.i.i.i.i.i.i.i.i.i.i.i, ptr undef, ptr %i.cn ; 2 uses
  %..sroa.661.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not66.i.i.i.i.i.i.i.i.i.i.i.i, i64 undef, i64 %.sroa.661.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i
  store i64 %i.bq, ptr %i.s, align 8, !noalias !46932
  store ptr %i.bs, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46932
  store i64 %.sroa.655.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46932
  store i64 %i.bv, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46932
  store ptr %i.bx, ptr %.sroa.733.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46932
  store i64 %.sroa.658.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46932
  store i64 %.70.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46932
  store ptr %..sroa.560.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46932
  store i64 %..sroa.661.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.1134.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46932
  store i8 %i.ck, ptr %.sroa.1235.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46932
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.438.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46932, !nonnull !8, !noundef !8 ; 2 uses
  %.sroa.55.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.640.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !46932, !nonnull !8, !noundef !8 ; 2 uses
  %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.au, align 8, !noalias !46932 ; 2 uses
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h7b44a33c1511d1d6E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.t)
          to label %.noexc9.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.ah, !noalias !46932

.noexc9.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.af
  %i.cp = icmp eq ptr %.sroa.55.0.copyload.i.i.i.i.i.i.i.i.i.i, %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i
  br i1 %i.cp, label %bb.am, label %bb.ag, !prof !17

bb.ag:                                            ; preds = %.noexc9.i.i.i.i.i.i.i.i.i.i.i
  %i.cq = ptrtoint ptr %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i to i64
  %i.cr = ptrtoint ptr %.sroa.55.0.copyload.i.i.i.i.i.i.i.i.i.i to i64
  %i.cs = sub nuw i64 %i.cr, %i.cq
  %i.ct = lshr exact i64 %i.cs, 5
  %i.cu = add i64 %i.ct, %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !46992
  store i64 %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %i.m, align 8, !noalias !46992
  %i.cv = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17hdb035e64924287edE(i64 noundef %i.cu, ptr noundef nonnull align 1 %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @697)
          to label %bb.ai unwind label %bb.ah, !noalias !46932 ; 3 uses

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr49drop_in_place$LT$xtask..common..assets..Asset$GT$17h68197de1087764feE"(ptr noalias noundef align 8 dereferenceable(80) %i.s) #55, !noalias !46932
  br label %.body.i.i.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !46992
  switch i64 %i.bq, label %bb.aj [
    i64 -9223372036854775808, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit.i.i.i.i.i.i.i.i.i.i.i.i"
    i64 0, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  ]

bb.aj:                                            ; preds = %bb.ai
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bs, i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !46995
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.aj, %bb.ai, %bb.ai
  switch i64 %i.bv, label %bb.ak [
    i64 -9223372036854775808, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit5.i.i.i.i.i.i.i.i.i.i.i.i"
    i64 0, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit5.i.i.i.i.i.i.i.i.i.i.i.i"
  ]

bb.ak:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bx, i64 noundef %i.bv, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !47002
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit5.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit5.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ak, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  switch i64 %.70.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.al [
    i64 -9223372036854775808, label %.thread.sink.split.i.i.i.i.i.i.i.i.i.i
    i64 0, label %.thread.sink.split.i.i.i.i.i.i.i.i.i.i
  ]

bb.al:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit5.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %..sroa.560.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.70.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !47007
  br label %.thread.sink.split.i.i.i.i.i.i.i.i.i.i

bb.am:                                            ; preds = %.noexc9.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.18.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, i64 64, i1 false), !noalias !47012
  br label %.thread.sink.split.i.i.i.i.i.i.i.i.i.i

bb.an:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !46932
  unreachable

.thread.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.ad, %bb.l, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit75.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit75.i.i.i.i.i.i.i.i.i.i.i.i"
  %eh.lpad-body.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.co, %bb.ad ], [ %.pn.i.i.i.i.i.i.i.i.i.i.i.i, %bb.l ], [ %.pn.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit75.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.pn.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit75.i.i.i.i.i.i.i.i.i.i.i.i" ]
  invoke fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$serde_core..private..content..Content$GT$$GT$17h7b44a33c1511d1d6E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.t)
          to label %.body.i.i.i.i.i.i.i unwind label %bb.an, !noalias !46932

.thread.sink.split.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.am, %bb.al, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit5.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit5.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.027.2.i.i.i.i.i.i.i = phi i64 [ %i.bq, %bb.am ], [ -9223372036854775807, %bb.al ], [ -9223372036854775807, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit5.i.i.i.i.i.i.i.i.i.i.i.i" ], [ -9223372036854775807, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit5.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %.sroa.12.2.i.i.i.i.i.i.i = phi ptr [ %i.bs, %bb.am ], [ %i.cv, %bb.al ], [ %i.cv, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit5.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.cv, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit5.i.i.i.i.i.i.i.i.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !46932
  br label %.thread.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i:                      ; preds = %.thread.sink.split.i.i.i.i.i.i.i.i.i.i, %bb.ae
  %.sroa.027.3.i.i.i.i.i.i.i = phi i64 [ -9223372036854775807, %bb.ae ], [ %.sroa.027.2.i.i.i.i.i.i.i, %.thread.sink.split.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.12.3.i.i.i.i.i.i.i = phi ptr [ %.sroa.7.1.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.ae ], [ %.sroa.12.2.i.i.i.i.i.i.i, %.thread.sink.split.i.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !46932
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17ha92a28689a1f0fd2E.exit.i.i.i.i.i.i.i"

bb.ao:                                            ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.718.0.copyload.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !46991
  %i.cy = icmp ult i64 %.sroa.9.0.copyload.i.i.i, 144115188075855872
  call void @llvm.assume(i1 %i.cy)
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.9.0.copyload.i.i.i, 6
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.718.0.copyload.i.i.i, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  store ptr %.sroa.718.0.copyload.i.i.i, ptr %i.an, align 8, !noalias !47013
  store ptr %.sroa.718.0.copyload.i.i.i, ptr %.sroa.438.0..sroa_idx.i11.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !47013
  store i64 %.sroa.517.0.copyload.i.i.i, ptr %.sroa.539.0..sroa_idx.i12.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !47013
  store ptr %i.cz, ptr %.sroa.640.0..sroa_idx.i13.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !47013
  store i8 22, ptr %i.k, align 8, !noalias !47013
  store i64 0, ptr %i.ao, align 8, !noalias !47013
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !47013
  %i.da = icmp eq i64 %.sroa.9.0.copyload.i.i.i, 0
  br i1 %i.da, label %.thread373.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ao, %"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..string..String$GT$$GT$$GT$17h9ad4e0242820be81E.exit188.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.db = phi ptr [ %i.he, %"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..string..String$GT$$GT$$GT$17h9ad4e0242820be81E.exit188.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.718.0.copyload.i.i.i, %bb.ao ] ; 4 uses
  %.sroa.0.0418.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..string..String$GT$$GT$$GT$17h9ad4e0242820be81E.exit188.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 4, %bb.ao ] ; 6 uses
  %.sroa.0198.0417.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0198.1.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..string..String$GT$$GT$$GT$17h9ad4e0242820be81E.exit188.i.i.i.i.i.i.i.i.i.i.i.i" ], [ -9223372036854775807, %bb.ao ] ; 20 uses
  %.sroa.14.0416.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.14.1.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..string..String$GT$$GT$$GT$17h9ad4e0242820be81E.exit188.i.i.i.i.i.i.i.i.i.i.i.i" ], [ undef, %bb.ao ] ; 9 uses
  %.sroa.19.0415.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.19.1.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..string..String$GT$$GT$$GT$17h9ad4e0242820be81E.exit188.i.i.i.i.i.i.i.i.i.i.i.i" ], [ undef, %bb.ao ] ; 5 uses
  %.sroa.0204.0414.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0204.1.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..string..String$GT$$GT$$GT$17h9ad4e0242820be81E.exit188.i.i.i.i.i.i.i.i.i.i.i.i" ], [ -9223372036854775807, %bb.ao ] ; 20 uses
  %.sroa.13.0413.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.13.1.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..string..String$GT$$GT$$GT$17h9ad4e0242820be81E.exit188.i.i.i.i.i.i.i.i.i.i.i.i" ], [ undef, %bb.ao ] ; 9 uses
  %.sroa.19211.0412.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.19211.1.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..string..String$GT$$GT$$GT$17h9ad4e0242820be81E.exit188.i.i.i.i.i.i.i.i.i.i.i.i" ], [ undef, %bb.ao ] ; 5 uses
  %.sroa.0212.0411.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0212.1.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..string..String$GT$$GT$$GT$17h9ad4e0242820be81E.exit188.i.i.i.i.i.i.i.i.i.i.i.i" ], [ -9223372036854775807, %bb.ao ] ; 17 uses
  %.sroa.13219.0410.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.13219.1.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..string..String$GT$$GT$$GT$17h9ad4e0242820be81E.exit188.i.i.i.i.i.i.i.i.i.i.i.i" ], [ undef, %bb.ao ] ; 9 uses
  %.sroa.19220.0409.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.19220.1.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..string..String$GT$$GT$$GT$17h9ad4e0242820be81E.exit188.i.i.i.i.i.i.i.i.i.i.i.i" ], [ undef, %bb.ao ] ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 64
  store ptr %i.dc, ptr %.sroa.438.0..sroa_idx.i11.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !47013
  %.sroa.0.0.copyload11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.db, align 8, !noalias !47017 ; 3 uses
  %.not.i.i.i.i.i15.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 22
  br i1 %.not.i.i.i.i.i15.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfd0c19f1b71efb2cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.db, i64 1
  %i.dd = load i64, ptr %i.ao, align 8, !noalias !47013, !noundef !8
  %i.de = add i64 %i.dd, 1
  store i64 %i.de, ptr %i.ao, align 8, !noalias !47013
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !47031
  store i8 %.sroa.0.0.copyload11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.f, align 8, !noalias !47031
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 31, i1 false), !noalias !47031
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.df, i64 32, i1 false), !noalias !47031
  %i.dg = load i8, ptr %i.k, align 8, !range !890, !noalias !47013, !noundef !8
  %i.dh = icmp eq i8 %i.dg, 22
  br i1 %i.dh, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h3c0821b0d488d284E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.k)
          to label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" unwind label %bb.bl, !noalias !47013

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.aq, %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !47013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !47031
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !47031
  %.sroa.51.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.51.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !47031 ; 7 uses
  %.sroa.10.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !47031 ; 4 uses
  %.sroa.14.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !47031 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !47032)
  call void @llvm.experimental.noalias.scope.decl(metadata !47035)
  call void @llvm.experimental.noalias.scope.decl(metadata !47038)
  switch i8 %.sroa.0.0.copyload11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i [
    i8 1, label %bb.ar
    i8 4, label %bb.as
    i8 12, label %bb.at
    i8 13, label %bb.bb
    i8 14, label %bb.bh
    i8 15, label %bb.bj
  ], !prof !1095

.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.di = invoke fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content28ContentDeserializer$LT$E$GT$12invalid_type17hbef5b53211e707e3E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.f, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @56)
          to label %.noexc.i.i27.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, !noalias !47041

.noexc.i.i27.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.di, ptr %i.aq, align 8, !alias.scope !47042, !noalias !47043
  store i8 1, ptr %i.d, align 8, !alias.scope !47042, !noalias !47043
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17he116f1298ad7e08bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.ar:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.dj = call i8 @llvm.umin.i8(i8 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i8 4)
  store i8 %i.dj, ptr %i.ap, align 1, !alias.scope !47047, !noalias !47043
  store i8 0, ptr %i.d, align 8, !alias.scope !47047, !noalias !47043
  br label %bb.bk

bb.as:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sink1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.51.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4)
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc nuw nsw i64 %.sink1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i8
  store i8 %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ap, align 1, !alias.scope !47052, !noalias !47043
  store i8 0, ptr %i.d, align 8, !alias.scope !47052, !noalias !47043
  br label %bb.bk

bb.at:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.dk = inttoptr i64 %.sroa.10.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i to ptr ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !47055)
  call void @llvm.experimental.noalias.scope.decl(metadata !47058)
  switch i64 %.sroa.14.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ay [
    i64 14, label %bb.au
    i64 15, label %bb.av
    i64 6, label %bb.aw
  ]

bb.au:                                            ; preds = %bb.at
  %i.dl = load i64, ptr %i.dk, align 1
  %i.dm = xor i64 %i.dl, 8028897154789764972
  %i.dn = getelementptr i8, ptr %i.dk, i64 6
  %i.do = load i64, ptr %i.dn, align 1
  %i.dp = xor i64 %i.do, 7957695015157985132
  %i.dq = or i64 %i.dm, %i.dp
  %i.dr = icmp ne i64 %i.dq, 0
  %i.ds = zext i1 %i.dr to i32
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.az, label %bb.ay

bb.av:                                            ; preds = %bb.at
  %i.du = load i64, ptr %i.dk, align 1
  %i.dv = xor i64 %i.du, 7809071829643781490
  %i.dw = getelementptr i8, ptr %i.dk, i64 7
  %i.dx = load i64, ptr %i.dw, align 1
  %i.dy = xor i64 %i.dx, 7957695015157985132
  %i.dz = or i64 %i.dv, %i.dy
  %i.ea = icmp ne i64 %i.dz, 0
  %i.eb = zext i1 %i.ea to i32
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.az, label %bb.ay

bb.aw:                                            ; preds = %bb.at
  %i.ed = load i32, ptr %i.dk, align 1
  %i.ee = xor i32 %i.ed, 1836216166
  %i.ef = getelementptr i8, ptr %i.dk, i64 4
  %i.eg = load i16, ptr %i.ef, align 1
  %i.eh = zext i16 %i.eg to i32
  %i.ei = xor i32 %i.eh, 29793
  %i.ej = or i32 %i.ee, %i.ei
  %i.ek = icmp ne i32 %i.ej, 0
  %i.el = zext i1 %i.ek to i32
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.en = load i32, ptr %i.dk, align 1
  %i.eo = xor i32 %i.en, 845244531
  %i.ep = getelementptr i8, ptr %i.dk, i64 4
  %i.eq = load i16, ptr %i.ep, align 1
  %i.er = zext i16 %i.eq to i32
  %i.es = xor i32 %i.er, 13877
  %i.et = or i32 %i.eo, %i.es
  %i.eu = icmp ne i32 %i.et, 0
  %i.ev = zext i1 %i.eu to i32
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.av, %bb.au, %bb.at
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ 2, %bb.aw ], [ 4, %bb.ay ], [ 1, %bb.av ], [ 3, %bb.ax ], [ 0, %bb.au ]
  store i8 %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ap, align 1, !alias.scope !47061, !noalias !47062
  store i8 0, ptr %i.d, align 8, !alias.scope !47061, !noalias !47062
  %i.ex = icmp eq i64 %.sroa.51.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ex, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17he116f1298ad7e08bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dk, i64 noundef %.sroa.51.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !47065
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17he116f1298ad7e08bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.bb:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ey = inttoptr i64 %.sroa.51.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i to ptr ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !47068)
  call void @llvm.experimental.noalias.scope.decl(metadata !47071)
  switch i64 %.sroa.10.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bg [
    i64 14, label %bb.bc
    i64 15, label %bb.bd
    i64 6, label %bb.be
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.ez = load i64, ptr %i.ey, align 1
  %i.fa = xor i64 %i.ez, 8028897154789764972
  %i.fb = getelementptr i8, ptr %i.ey, i64 6
  %i.fc = load i64, ptr %i.fb, align 1
  %i.fd = xor i64 %i.fc, 7957695015157985132
  %i.fe = or i64 %i.fa, %i.fd
  %i.ff = icmp ne i64 %i.fe, 0
  %i.fg = zext i1 %i.ff to i32
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17hbe4a070450c71cdaE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bg

bb.bd:                                            ; preds = %bb.bb
  %i.fi = load i64, ptr %i.ey, align 1
  %i.fj = xor i64 %i.fi, 7809071829643781490
  %i.fk = getelementptr i8, ptr %i.ey, i64 7
  %i.fl = load i64, ptr %i.fk, align 1
  %i.fm = xor i64 %i.fl, 7957695015157985132
  %i.fn = or i64 %i.fj, %i.fm
  %i.fo = icmp ne i64 %i.fn, 0
  %i.fp = zext i1 %i.fo to i32
  %i.fq = icmp eq i32 %i.fp, 0
  br i1 %i.fq, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17hbe4a070450c71cdaE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bg

bb.be:                                            ; preds = %bb.bb
  %i.fr = load i32, ptr %i.ey, align 1
  %i.fs = xor i32 %i.fr, 1836216166
  %i.ft = getelementptr i8, ptr %i.ey, i64 4
  %i.fu = load i16, ptr %i.ft, align 1
  %i.fv = zext i16 %i.fu to i32
  %i.fw = xor i32 %i.fv, 29793
  %i.fx = or i32 %i.fs, %i.fw
  %i.fy = icmp ne i32 %i.fx, 0
  %i.fz = zext i1 %i.fy to i32
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17hbe4a070450c71cdaE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gb = load i32, ptr %i.ey, align 1
  %i.gc = xor i32 %i.gb, 845244531
  %i.gd = getelementptr i8, ptr %i.ey, i64 4
  %i.ge = load i16, ptr %i.gd, align 1
  %i.gf = zext i16 %i.ge to i32
  %i.gg = xor i32 %i.gf, 13877
  %i.gh = or i32 %i.gc, %i.gg
  %i.gi = icmp ne i32 %i.gh, 0
  %i.gj = zext i1 %i.gi to i32
  %i.gk = icmp eq i32 %i.gj, 0
  br i1 %i.gk, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17hbe4a070450c71cdaE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.bd, %bb.bc, %bb.bb
  br label %_ZN10serde_core2de7Visitor18visit_borrowed_str17hbe4a070450c71cdaE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_core2de7Visitor18visit_borrowed_str17hbe4a070450c71cdaE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc
  %.sink.i.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ 2, %bb.be ], [ 4, %bb.bg ], [ 1, %bb.bd ], [ 3, %bb.bf ], [ 0, %bb.bc ]
  store i8 %.sink.i.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ap, align 1, !alias.scope !47074, !noalias !47075
  store i8 0, ptr %i.d, align 8, !alias.scope !47074, !noalias !47075
  br label %bb.bk

bb.bh:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$serde_core..private..content..Content$GT$$GT$17hc0b5dff64e90789aE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.gl = inttoptr i64 %.sroa.10.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i to ptr ; 2 uses
  call fastcc void @"_ZN184_$LT$xtask..common..assets.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$xtask..common..assets..Asset$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$11visit_bytes17ha35b487574616719E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gl, i64 noundef %.sroa.14.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !47078
  %i.gm = icmp eq i64 %.sroa.51.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.gm, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17he116f1298ad7e08bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.bi

bb.bi:                                            ; preds = %bb.bh
end_hunk_10
begin_hunk_11_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hffe0aac6c3e6e40dE":bb.a
"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i": ; preds = %bb.b
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !47215
  %i.ci = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.cg, i64 noundef range(i64 1, 9) 8) #47, !noalias !47215 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.c, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hef95df310627cd76E.exit.i.i.i.lr.ph.i.i.i.i"

bb.c:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.cg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @327) #54
          to label %.noexc.i.i.i unwind label %.thread37.i.i.i, !noalias !47208

.noexc.i.i.i:                                     ; preds = %bb.c
  unreachable

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hef95df310627cd76E.exit.i.i.i.lr.ph.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i"
  store i64 %.sroa.0.0.i.i.i.i.i.i, ptr %i.bx, align 8, !noalias !47213
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 3 uses
  store ptr %i.ci, ptr %i.ck, align 8, !noalias !47213
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 4 uses
  store i64 0, ptr %i.cl, align 8, !noalias !47213
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.i.i.i.i.i.i)
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 1 ; 4 uses
  %.sroa.68.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 8 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 6 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bv, i64 24 ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 19 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.13389.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.13389.0..sroa_idx390.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.sroa.4196.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %.sroa.5197.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.6119.0..sroa_idx120.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 14 uses
  %.sroa.7122.0..sroa_idx123.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.sroa.9379.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.13382.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.9379.0..sroa_idx380.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.13382.0..sroa_idx383.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.sroa.6102.0..sroa_idx103.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 14 uses
  %.sroa.7105.0..sroa_idx106.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ax, i64 4 ; 2 uses
  %.sroa.4190.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %.sroa.5191.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.681.0..sroa_idx82.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 15 uses
  %.sroa.784.0..sroa_idx85.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.5188.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.13374.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.da = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.13374.0..sroa_idx375.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %.sroa.4218.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %.sroa.5219.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.dd = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 6 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.sroa.14.0..sroa_idx10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.14.0..sroa_idx12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.10180.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.sroa.10187.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %.sroa.540.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %.sroa.439.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.sroa.14.0..sroa_idx10.i.i.i150.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.14.0..sroa_idx11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %.sroa.562.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %.sroa.461.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %.sroa.471.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.14.0..sroa_idx10.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.14.0..sroa_idx12.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.sroa.4111.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 32 ; 2 uses
  %.sroa.5112.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 40 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 56
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  %.sroa.12.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 72
  %.sroa.1336.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 144
  %.sroa.14.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 216
  %.sroa.32.i.i.sroa.5.0..sroa.14.0..sroa_idx.i.i.sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 248
  %.sroa.32.i.i.sroa.6.0..sroa.14.0..sroa_idx.i.i.sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 256
  %.sroa.15.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 264
  %.sroa.16.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 266
  %.sroa.17.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 268
  %.sroa.18.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 269
  %i.du = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.sroa.12110.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 72
  %.sroa.13111.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 144
  %.sroa.14112.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 216
  %.sroa.4102.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %.sroa.5103.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  %.sroa.6104.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %.sroa.7105.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %.sroa.8106.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %.sroa.9107.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %.sroa.10108.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  %.sroa.11109.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  %.sroa.15113.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 248
  %.sroa.16114.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 256
  %.sroa.17115.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 264
  %.sroa.18116.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 266
  %.sroa.19117.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 268
  %.sroa.20118.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 269
  %i.dv = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 6 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  %.sroa.45.sroa.6.0..sroa.45.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.7179.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 3 uses
  %.sroa.555.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %.sroa.656.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.757.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.5109.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %.sroa.6110.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %.sroa.7111.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.572.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.673.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 33
  %.sroa.774.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.875.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.dx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.14185.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.14185.0..sroa_idx186.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.26.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.47.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.5113.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.7115.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 41
  %.sroa.617.0..sroa_idx18.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %.sroa.7.0..sroa_idx20.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx20.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx20.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx20.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 2 uses
  %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx20.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 2 uses
  %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx20.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 2 uses
  %.sroa.7.sroa.11.0..sroa.7.0..sroa_idx20.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 88 ; 2 uses
  %.sroa.7.sroa.12.0..sroa.7.0..sroa_idx20.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 89 ; 2 uses
  %.sroa.4.0..sroa_idx.i2.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 23 uses
  %.sroa.5604.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %.sroa.14.0..sroa_idx.i.i21.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bv, i64 4 ; 4 uses
  %.sroa.3.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hef95df310627cd76E.exit.i.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hef95df310627cd76E.exit.i.i.i.i.i.i.i": ; preds = %bb.kp, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hef95df310627cd76E.exit.i.i.i.lr.ph.i.i.i.i"
  %i.ed = phi i64 [ 0, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hef95df310627cd76E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.eg, %bb.kp ] ; 2 uses
  %i.ee = phi ptr [ %.sroa.2.0.copyload.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hef95df310627cd76E.exit.i.i.i.lr.ph.i.i.i.i" ], [ %i.ef, %bb.kp ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !47220)
  call void @llvm.experimental.noalias.scope.decl(metadata !47223)
  call void @llvm.experimental.noalias.scope.decl(metadata !47226)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 32 ; 4 uses
  store ptr %i.ef, ptr %.sroa.427.0..sroa_idx.i.i.i, align 8, !alias.scope !47229, !noalias !47230
  %.sroa.0.0.copyload4.i.i.i.i.i.i.i = load i8, ptr %i.ee, align 8, !noalias !47236 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload4.i.i.i.i.i.i.i, 22
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hef95df310627cd76E.exit.i.i.i.i..loopexit.loopexit_crit_edge.i.i.i", label %bb.d

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hef95df310627cd76E.exit.i.i.i.i..loopexit.loopexit_crit_edge.i.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hef95df310627cd76E.exit.i.i.i.i.i.i.i"
  %.sroa.5.0.copyload19.pre.pre.i.i.i = load ptr, ptr %i.ck, align 8, !noalias !47237
  %.sroa.6.0.copyload23.pre.pre.i.i.i = load i64, ptr %i.cl, align 8, !noalias !47237
  br label %.loopexit.i.i.i

bb.d:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hef95df310627cd76E.exit.i.i.i.i.i.i.i"
  %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx5.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx5.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %.sroa.8.sroa.6.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx5.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !47236
  %.sroa.8.0..sroa_idx5.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ee, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !47238
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.0..sroa_idx5.i.i.i.i.i.i.i, i64 7, i1 false), !noalias !47245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.68.0..sroa_idx.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx5.sroa_idx.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !47245
  %i.eg = add nuw nsw i64 %i.ed, 1                ; 3 uses
  store i64 %i.eg, ptr %i.cf, align 8, !alias.scope !47246, !noalias !47247
  store i8 %.sroa.0.0.copyload4.i.i.i.i.i.i.i, ptr %i.bv, align 8, !noalias !47238
  store ptr %.sroa.8.sroa.6.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !47238
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !47238
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.23.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.26.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.29.i.i.i.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !47248)
  switch i8 %.sroa.0.0.copyload4.i.i.i.i.i.i.i, label %bb.e [
    i8 20, label %bb.f
    i8 21, label %bb.bm
  ], !prof !899

bb.e:                                             ; preds = %bb.d
  %i.eh = invoke fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content31ContentRefDeserializer$LT$E$GT$12invalid_type17h91a2e2a429963962E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bv, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @47)
          to label %bb.fp unwind label %.loopexit.i.i.i.i, !noalias !47238

bb.f:                                             ; preds = %bb.d
  %i.ei = load ptr, ptr %.sroa.68.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !47248, !noalias !47251, !nonnull !8, !noundef !8 ; 6 uses
  %i.ej = load i64, ptr %i.cm, align 8, !alias.scope !47248, !noalias !47251, !noundef !8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !47253)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.30.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.31.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.32.i.i.sroa.0.i.i.i.i.i.i.i.i.i)
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ej, 5
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !47256
  %i.el = icmp eq i64 %i.ej, 0
  br i1 %i.el, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !47258)
  call void @llvm.experimental.noalias.scope.decl(metadata !47261)
  call void @llvm.experimental.noalias.scope.decl(metadata !47264)
  %i.en = load i8, ptr %i.ei, align 8, !range !714, !alias.scope !47267, !noalias !47268, !noundef !8
  switch i8 %i.en, label %"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h6a8aa69dd9d1c9f1E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" [
    i8 16, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i
    i8 17, label %"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h6a8aa69dd9d1c9f1E.exit1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
    i8 18, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i
  ]

"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h6a8aa69dd9d1c9f1E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !47283
  invoke fastcc void @"_ZN10serde_core2de5impls79_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..string..String$GT$11deserialize17h525aecd92826caf9E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ei)
          to label %.noexc15.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !47238

.noexc15.i.i.i.i.i.i.i.i.i:                       ; preds = %"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h6a8aa69dd9d1c9f1E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.eo = load i64, ptr %i.bo, align 8, !range !929, !noalias !47283, !noundef !8 ; 2 uses
  %i.ep = icmp eq i64 %i.eo, -9223372036854775808
  %i.eq = load ptr, ptr %i.dh, align 8, !noalias !47287
  %.sroa.14.0.copyload13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.14.0..sroa_idx12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !47287
  %.sroa.14.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ep, i64 undef, i64 %.sroa.14.0.copyload13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.eo, i64 -9223372036854775807)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !47283
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h00608620e7ea6c9eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h6a8aa69dd9d1c9f1E.exit1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.g
  %i.er = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !alias.scope !47267, !noalias !47268, !nonnull !8, !align !461, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !47288
  invoke fastcc void @"_ZN10serde_core2de5impls79_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..string..String$GT$11deserialize17h525aecd92826caf9E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.es)
          to label %.noexc16.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !47238

.noexc16.i.i.i.i.i.i.i.i.i:                       ; preds = %"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h6a8aa69dd9d1c9f1E.exit1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.et = load i64, ptr %i.bn, align 8, !range !929, !noalias !47288, !noundef !8 ; 2 uses
  %i.eu = icmp eq i64 %i.et, -9223372036854775808
  %i.ev = load ptr, ptr %i.dg, align 8, !noalias !47287
  %.sroa.14.0.copyload11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.14.0..sroa_idx10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !47287
  %.sroa.14.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.eu, i64 undef, i64 %.sroa.14.0.copyload11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.et, i64 -9223372036854775807)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !47288
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h00608620e7ea6c9eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h00608620e7ea6c9eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc16.i.i.i.i.i.i.i.i.i, %.noexc15.i.i.i.i.i.i.i.i.i
  %.sroa.14.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.14.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc15.i.i.i.i.i.i.i.i.i ], [ %.sroa.14.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc16.i.i.i.i.i.i.i.i.i ]
  %.sroa.11.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.eq, %.noexc15.i.i.i.i.i.i.i.i.i ], [ %i.ev, %.noexc16.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc15.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc16.i.i.i.i.i.i.i.i.i ] ; 2 uses
  switch i64 %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i [
    i64 -9223372036854775807, label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..SeqAccess$GT$12next_element17h768aeac08c12e9a2E.exit.thread212.i.i.i.i.i.i.i.i.i.i.i.i"
    i64 -9223372036854775806, label %bb.h
  ]

"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..SeqAccess$GT$12next_element17h768aeac08c12e9a2E.exit.thread212.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h00608620e7ea6c9eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  br label %bb.h

bb.h:                                             ; preds = %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..SeqAccess$GT$12next_element17h768aeac08c12e9a2E.exit.thread212.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h00608620e7ea6c9eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  br label %_ZN5serde7private2de7content21visit_content_seq_ref17hb8a85907dcacbfeaE.exit.i.sink.split.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h00608620e7ea6c9eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.g, %bb.g, %bb.f
  %i.ew = phi i64 [ 1, %bb.g ], [ 0, %bb.f ], [ 1, %bb.g ], [ 1, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h00608620e7ea6c9eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 7 uses
  %i.ex = phi ptr [ %i.em, %bb.g ], [ %i.ei, %bb.f ], [ %i.em, %bb.g ], [ %i.em, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h00608620e7ea6c9eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 13 uses
  %.sroa.11.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ undef, %bb.g ], [ undef, %bb.f ], [ undef, %bb.g ], [ %.sroa.14.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h00608620e7ea6c9eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.8.0.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ undef, %bb.g ], [ undef, %bb.f ], [ undef, %bb.g ], [ %.sroa.11.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h00608620e7ea6c9eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 6 uses
  %.sroa.0171.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ -9223372036854775808, %bb.g ], [ -9223372036854775808, %bb.f ], [ -9223372036854775808, %bb.g ], [ %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h00608620e7ea6c9eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 6 uses
  %i.ey = icmp eq ptr %i.ex, %i.ek
  br i1 %i.ey, label %bb.o, label %bb.i

bb.i:                                             ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !47292
  invoke fastcc void @"_ZN10serde_core2de5impls79_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..string..String$GT$11deserialize17h525aecd92826caf9E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ex)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.k, !noalias !47301

.noexc.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.i
  %i.fa = load i64, ptr %i.bm, align 8, !range !929, !noalias !47292, !noundef !8 ; 7 uses
  %i.fb = icmp eq i64 %i.fa, -9223372036854775808
  %i.fc = load ptr, ptr %i.di, align 8, !noalias !47302 ; 7 uses
  br i1 %i.fb, label %bb.l, label %bb.m

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.q, %bb.p, %bb.k
  %.pn132.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.fd, %bb.k ], [ %.pn130.i.i.i.i.i.i.i.i.i.i.i.i, %bb.p ], [ %.pn130.i.i.i.i.i.i.i.i.i.i.i.i, %bb.q ] ; 3 uses
  switch i64 %.sroa.0171.0.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.j [
    i64 -9223372036854775808, label %.body.i.i.i.i.i.i.i.i.i
    i64 0, label %.body.i.i.i.i.i.i.i.i.i
  ]

bb.j:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.0171.0.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !47303
  br label %.body.i.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.o, %bb.i
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit.i.i.i.i.i.i.i.i.i.i.i.i"

bb.l:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !47292
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit168.i.i.i.i.i.i.i.i.i.i.i.i"

bb.m:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.10180.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.10180.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !47302 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !47292
  %i.fe = icmp eq ptr %i.ez, %i.ek
  br i1 %i.fe, label %bb.v, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ex, i64 64 ; 2 uses
  %i.fg = or disjoint i64 %i.ew, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !47308
  invoke fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h6dce65cbc8016455E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ez)
          to label %.noexc144.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.r, !noalias !47301

.noexc144.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.n
  %i.fh = load i8, ptr %i.bl, align 8, !range !610, !noalias !47308, !noundef !8
  %i.fi = trunc nuw i8 %i.fh to i1
  br i1 %i.fi, label %bb.s, label %bb.t

bb.o:                                             ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fj = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17hdb035e64924287edE(i64 noundef 1, ptr noundef nonnull align 1 @344, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @36)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit168.i.i.i.i.i.i.i.i.i.i.i.i" unwind label %bb.k, !noalias !47301

bb.p:                                             ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17had044ad4ce3b98b3E.exit.i.i.i.i.i.i.i.i.i.i.i.i", %bb.r
  %.pn130.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.fl, %bb.r ], [ %.pn128.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17had044ad4ce3b98b3E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.fk = icmp eq i64 %i.fa, 0
  br i1 %i.fk, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fc) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fc, i64 noundef %i.fa, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !47317
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit.i.i.i.i.i.i.i.i.i.i.i.i"

bb.r:                                             ; preds = %bb.bc, %bb.v, %bb.u, %bb.n
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.s:                                             ; preds = %.noexc144.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fm = load ptr, ptr %i.du, align 8, !noalias !47308, !nonnull !8, !align !461, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !47308
  br label %bb.bf

bb.t:                                             ; preds = %.noexc144.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fn = load i8, ptr %i.dj, align 1, !range !8956, !noalias !47308, !noundef !8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !47308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !47320
  %i.fo = icmp eq ptr %i.ff, %i.ek
  br i1 %i.fo, label %.thread109.i.i.i.i.i.i.i.i.i.i.i, label %bb.u

.thread109.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.t
  store i64 -9223372036854775802, ptr %i.br, align 8, !noalias !47320
  br label %.thread111.i.i.i.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ex, i64 96 ; 3 uses
  %i.fq = add nuw nsw i64 %i.ew, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !47321
  invoke fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h25ea79c93014dab3E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.bk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ff)
          to label %.noexc145.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.r, !noalias !47301

.noexc145.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.u
  %i.fr = load i64, ptr %i.bk, align 8, !range !9536, !noalias !47321, !noundef !8 ; 3 uses
  %i.fs = icmp eq i64 %i.fr, -9223372036854775801
  %i.ft = load ptr, ptr %i.dk, align 8, !noalias !47330 ; 4 uses
  br i1 %i.fs, label %bb.w, label %bb.x

end_hunk_11
