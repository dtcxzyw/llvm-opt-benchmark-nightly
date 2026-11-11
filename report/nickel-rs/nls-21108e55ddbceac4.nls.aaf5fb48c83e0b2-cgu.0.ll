Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nls-21108e55ddbceac4.nls.aaf5fb48c83e0b2-cgu.0?download=true
inline.NumInlined: 33046
inline.NumDeleted: 15305
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 156
begin_hunk_0_@_ZN3nls8analysis8Analysis3new17hee7a91a4274d110dE:bb.a
  br i1 %i.dg, label %bb.x, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h342c3a17237827a3E.exit13.thread.i.i"

bb.x:                                             ; preds = %bb.w
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.di = load i32, ptr %i.dh, align 8, !alias.scope !61807, !noalias !61785, !noundef !46
  %i.dj = getelementptr i8, ptr %i.ch, i64 -24
  %i.dk = load i32, ptr %i.dj, align 8, !alias.scope !61808, !noalias !61785, !noundef !46
  %i.dl = icmp eq i32 %i.di, %i.dk
  br i1 %i.dl, label %.split27.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h342c3a17237827a3E.exit13.thread.i.i"

.split27.i.i:                                     ; preds = %bb.x
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cg, i64 28
  %i.dn = load i32, ptr %i.dm, align 4, !alias.scope !61807, !noalias !61785, !noundef !46
  %i.do = getelementptr i8, ptr %i.ch, i64 -20
  %i.dp = load i32, ptr %i.do, align 4, !alias.scope !61808, !noalias !61785, !noundef !46
  %i.dq = icmp eq i32 %i.dn, %i.dp
  br i1 %i.dq, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h342c3a17237827a3E.exit13.thread25.i.i", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h342c3a17237827a3E.exit13.thread.i.i"

bb.y:                                             ; preds = %bb.v
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cg, i64 20
  %i.ds = load i32, ptr %i.dr, align 4, !alias.scope !61807, !noalias !61785, !noundef !46
  %i.dt = getelementptr i8, ptr %i.ch, i64 -28
  %i.du = load i32, ptr %i.dt, align 4, !alias.scope !61808, !noalias !61785, !noundef !46
  %i.dv = icmp eq i32 %i.ds, %i.du
  br i1 %i.dv, label %bb.z, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h342c3a17237827a3E.exit13.thread.i.i"

bb.z:                                             ; preds = %bb.y
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.dx = load i32, ptr %i.dw, align 8, !alias.scope !61807, !noalias !61785, !noundef !46
  %i.dy = getelementptr i8, ptr %i.ch, i64 -24
  %i.dz = load i32, ptr %i.dy, align 8, !alias.scope !61808, !noalias !61785, !noundef !46
  %i.ea = icmp eq i32 %i.dx, %i.dz
  br i1 %i.ea, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h342c3a17237827a3E.exit13.i.i", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h342c3a17237827a3E.exit13.thread.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h342c3a17237827a3E.exit13.i.i": ; preds = %bb.z
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cg, i64 28
  %i.ec = load i32, ptr %i.eb, align 4, !alias.scope !61807, !noalias !61785, !noundef !46
  %i.ed = getelementptr i8, ptr %i.ch, i64 -20
  %i.ee = load i32, ptr %i.ed, align 4, !alias.scope !61808, !noalias !61785, !noundef !46
  %i.ef = icmp eq i32 %i.ec, %i.ee
  br i1 %i.ef, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h342c3a17237827a3E.exit13.thread25.i.i", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h342c3a17237827a3E.exit13.thread.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h342c3a17237827a3E.exit13.thread.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h342c3a17237827a3E.exit13.i.i", %bb.z, %bb.y, %.split27.i.i, %bb.x, %bb.w, %bb.u, %bb.t, %bb.s, %.lr.ph.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ch, ptr noundef nonnull align 8 dereferenceable(48) %i.cg, i64 48, i1 false), !noalias !61785
  %i.eg = add i64 %.sroa.11.033.i.i, 1
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h342c3a17237827a3E.exit13.thread25.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h342c3a17237827a3E.exit13.thread25.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h342c3a17237827a3E.exit13.thread.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h342c3a17237827a3E.exit13.i.i", %.split27.i.i, %bb.v
  %.sroa.11.1.i.i = phi i64 [ %i.eg, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h342c3a17237827a3E.exit13.thread.i.i" ], [ %.sroa.11.033.i.i, %.split27.i.i ], [ %.sroa.11.033.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h342c3a17237827a3E.exit13.i.i" ], [ %.sroa.11.033.i.i, %bb.v ] ; 2 uses
  %.sroa.5.0.i.i = add nuw nsw i64 %.sroa.5.034.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %.sroa.5.0.i.i, %.pr.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17h99bec9b57255d184E.exit.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h342c3a17237827a3E.exit.thread.i.i", %bb.d, %._crit_edge.i.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 8, !noalias !61777 ; 5 uses
  %.sroa.5.0.copyload.i = load ptr, ptr %i.p, align 8, !noalias !61777, !nonnull !46, !noundef !46 ; 9 uses
  %.sroa.6.0.copyload.i = load i64, ptr %i.q, align 8, !noalias !61777 ; 7 uses
  %i.eh = icmp ult i64 %.sroa.6.0.copyload.i, 2
  br i1 %i.eh, label %bb.ad, label %bb.aa, !prof !48

bb.aa:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17h99bec9b57255d184E.exit.i"
  %i.ei = icmp ult i64 %.sroa.6.0.copyload.i, 21
  br i1 %i.ei, label %bb.ac, label %bb.ab, !prof !48

bb.ab:                                            ; preds = %bb.aa
  invoke fastcc void @_ZN4core5slice4sort6stable14driftsort_main17h9f976de620bd2a69E(ptr noalias noundef nonnull align 8 %.sroa.5.0.copyload.i, i64 noundef %.sroa.6.0.copyload.i)
          to label %.thread9.i unwind label %bb.au

bb.ac:                                            ; preds = %bb.aa
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17he2f49ee95336ba10E(ptr noalias noundef nonnull align 8 %.sroa.5.0.copyload.i, i64 noundef %.sroa.6.0.copyload.i)
  br label %.thread9.i

.thread9.i:                                       ; preds = %bb.ab, %bb.ac
  %i.ej = icmp ult i64 %.sroa.6.0.copyload.i, 576460752303423488
  call void @llvm.assume(i1 %i.ej)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !61809
  store i64 0, ptr %i.h, align 8, !noalias !61809
  %i.ek = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ek, align 8, !noalias !61809
  %i.el = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 0, ptr %i.el, align 8, !noalias !61809
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h75d933f650d42b08E.exit.i.i"

bb.ad:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17h99bec9b57255d184E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !61809
  store i64 0, ptr %i.h, align 8, !noalias !61809
  %i.em = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.em, align 8, !noalias !61809
  %i.en = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 0, ptr %i.en, align 8, !noalias !61809
  %i.eo = icmp eq i64 %.sroa.6.0.copyload.i, 0
  br i1 %i.eo, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h75d933f650d42b08E.exit.thread.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h75d933f650d42b08E.exit.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h75d933f650d42b08E.exit.thread.i.i": ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !61809
  store i64 0, ptr %i.g, align 8, !noalias !61809
  %i.ep = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ep, align 8, !noalias !61809
  %i.eq = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %i.eq, align 8, !noalias !61809
  br label %._crit_edge.thread.i.i

"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$nls..position..Entry$LT$nls..term..AstPtr$GT$$GT$$GT$17h10819f4a7706f663E.exit52.i.i": ; preds = %bb.aj, %bb.ai
  %.val39.i.i = load i64, ptr %i.h, align 8, !noalias !61809 ; 2 uses
  %i.er = icmp eq i64 %.val39.i.i, 0
  br i1 %i.er, label %"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$nls..position..Entry$LT$nls..term..AstPtr$GT$$GT$$GT$17h10819f4a7706f663E.exit.i.i", label %bb.ae

bb.ae:                                            ; preds = %"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$nls..position..Entry$LT$nls..term..AstPtr$GT$$GT$$GT$17h10819f4a7706f663E.exit52.i.i"
  %.val40.i.i = load ptr, ptr %i.eu, align 8, !noalias !61809, !nonnull !46, !noundef !46
  %i.es = shl nuw i64 %.val39.i.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val40.i.i, i64 noundef %i.es, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !61810
  br label %"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$nls..position..Entry$LT$nls..term..AstPtr$GT$$GT$$GT$17h10819f4a7706f663E.exit.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h75d933f650d42b08E.exit.i.i": ; preds = %bb.ad, %.thread9.i
  %i.et = phi ptr [ %i.el, %.thread9.i ], [ %i.en, %bb.ad ] ; 3 uses
  %i.eu = phi ptr [ %i.ek, %.thread9.i ], [ %i.em, %bb.ad ] ; 4 uses
  %.idx.i10.pn.i = shl nuw nsw i64 %.sroa.6.0.copyload.i, 4
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i, i64 %.idx.i10.pn.i ; 2 uses
  %.sroa.082.0.copyload88.i.i = load ptr, ptr %.sroa.5.0.copyload.i, align 8, !noalias !61811 ; 2 uses
  %.sroa.1189.0..sroa.21.32..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i, i64 8
  %.sroa.1189.0.copyload98.i.i = load i32, ptr %.sroa.1189.0..sroa.21.32..sroa_idx.i.i, align 8, !noalias !61811 ; 2 uses
  %.sroa.12.0..sroa.21.32..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i, i64 12
  %.sroa.12.0.copyload107.i.i = load i32, ptr %.sroa.12.0..sroa.21.32..sroa_idx.i.i, align 4, !noalias !61811
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !61809
  store i64 0, ptr %i.g, align 8, !noalias !61809
  %i.ew = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ew, align 8, !noalias !61809
  %i.ex = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 0, ptr %i.ex, align 8, !noalias !61809
  %.not.i5.i = icmp eq ptr %.sroa.082.0.copyload88.i.i, null
  br i1 %.not.i5.i, label %._crit_edge.thread.i.i, label %.lr.ph.i6.preheader.i

.lr.ph.i6.preheader.i:                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h75d933f650d42b08E.exit.i.i"
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i, i64 16
  br label %.lr.ph.i6.i

.lr.ph.i6.i:                                      ; preds = %bb.ap, %.lr.ph.i6.preheader.i
  %i.ez = phi i64 [ %i.fy, %bb.ap ], [ 0, %.lr.ph.i6.preheader.i ] ; 4 uses
  %i.fa = phi i64 [ %i.fz, %bb.ap ], [ 0, %.lr.ph.i6.preheader.i ]
  %i.fb = phi ptr [ %i.ga, %bb.ap ], [ inttoptr (i64 8 to ptr), %.lr.ph.i6.preheader.i ] ; 3 uses
  %i.fc = phi i64 [ %i.gb, %bb.ap ], [ 0, %.lr.ph.i6.preheader.i ] ; 8 uses
  %.sroa.0.0166.i.i = phi i1 [ %.sroa.0.1.i.i, %bb.ap ], [ false, %.lr.ph.i6.preheader.i ]
  %.sroa.11.0165.i.i = phi ptr [ %.sroa.11.1151.i.i, %bb.ap ], [ undef, %.lr.ph.i6.preheader.i ]
  %.sroa.16.0164.i.i = phi i64 [ %.sroa.16.1149.i.i, %bb.ap ], [ undef, %.lr.ph.i6.preheader.i ]
  %.sroa.21.1163.i.i = phi ptr [ %.sroa.21.2.i.i, %bb.ap ], [ %i.ey, %.lr.ph.i6.preheader.i ] ; 6 uses
  %.sroa.082.1162.i.i = phi ptr [ %.sroa.082.2.i.i, %bb.ap ], [ %.sroa.082.0.copyload88.i.i, %.lr.ph.i6.preheader.i ] ; 3 uses
  %.sroa.1189.1161.i.i = phi i32 [ %.sroa.1189.2.i.i, %bb.ap ], [ %.sroa.1189.0.copyload98.i.i, %.lr.ph.i6.preheader.i ]
  %.sroa.12.1160.i.i = phi i32 [ %.sroa.12.2.i.i, %bb.ap ], [ %.sroa.12.0.copyload107.i.i, %.lr.ph.i6.preheader.i ] ; 5 uses
  %.sroa.0108.0159.i.i = phi i32 [ %.sroa.0108.1.i.i, %bb.ap ], [ %.sroa.1189.0.copyload98.i.i, %.lr.ph.i6.preheader.i ] ; 6 uses
  br i1 %.sroa.0.0166.i.i, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h48eac9bf97d0e5d8E.exit.i.i", label %bb.af

bb.af:                                            ; preds = %.lr.ph.i6.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.21.1163.i.i) ]
  %i.fd = icmp eq ptr %.sroa.21.1163.i.i, %i.ev
  br i1 %i.fd, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h48eac9bf97d0e5d8E.exit.thread.i.i", label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.21.1163.i.i, i64 16
  %.sroa.0.0.copyload5.i.i.i = load ptr, ptr %.sroa.21.1163.i.i, align 8, !noalias !61812
  %.sroa.5.0..sroa_idx.i49.i.i = getelementptr inbounds nuw i8, ptr %.sroa.21.1163.i.i, i64 8
  %.sroa.5.0.copyload6.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i49.i.i, align 8, !noalias !61812
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h48eac9bf97d0e5d8E.exit.i.i"

._crit_edge.thread.i.i:                           ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h75d933f650d42b08E.exit.i.i", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h75d933f650d42b08E.exit.thread.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !61813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !61809
  br label %"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$nls..position..Entry$LT$nls..term..AstPtr$GT$$GT$$GT$17h10819f4a7706f663E.exit51.i.i"

._crit_edge.i8.i:                                 ; preds = %bb.ap
  %.val37.pre.i.i = load i64, ptr %i.h, align 8, !noalias !61809 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !61813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !61809
  %i.ff = icmp eq i64 %.val37.pre.i.i, 0
  br i1 %i.ff, label %"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$nls..position..Entry$LT$nls..term..AstPtr$GT$$GT$$GT$17h10819f4a7706f663E.exit51.i.i", label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.i8.i
  %.val38.i.i = load ptr, ptr %i.eu, align 8, !noalias !61809, !nonnull !46, !noundef !46
  %i.fg = shl nuw i64 %.val37.pre.i.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val38.i.i, i64 noundef %i.fg, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !61810
  br label %"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$nls..position..Entry$LT$nls..term..AstPtr$GT$$GT$$GT$17h10819f4a7706f663E.exit51.i.i"

bb.ai:                                            ; preds = %bb.ar, %bb.an, %bb.am
  %i.fh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val35.i.i = load i64, ptr %i.g, align 8, !noalias !61809 ; 2 uses
  %i.fi = icmp eq i64 %.val35.i.i, 0
  br i1 %i.fi, label %"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$nls..position..Entry$LT$nls..term..AstPtr$GT$$GT$$GT$17h10819f4a7706f663E.exit52.i.i", label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.val36.i.i = load ptr, ptr %i.ew, align 8, !noalias !61809, !nonnull !46, !noundef !46
  %i.fj = shl nuw i64 %.val35.i.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val36.i.i, i64 noundef %i.fj, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !61810
  br label %"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$nls..position..Entry$LT$nls..term..AstPtr$GT$$GT$$GT$17h10819f4a7706f663E.exit52.i.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h48eac9bf97d0e5d8E.exit.i.i": ; preds = %bb.ag, %.lr.ph.i6.i
  %.sroa.21.5.i.i = phi ptr [ %.sroa.21.1163.i.i, %.lr.ph.i6.i ], [ %i.fe, %bb.ag ] ; 2 uses
  %.sroa.16.1.i.i = phi i64 [ %.sroa.16.0164.i.i, %.lr.ph.i6.i ], [ %.sroa.5.0.copyload6.i.i.i, %bb.ag ] ; 4 uses
  %.sroa.11.1.i7.i = phi ptr [ %.sroa.11.0165.i.i, %.lr.ph.i6.i ], [ %.sroa.0.0.copyload5.i.i.i, %bb.ag ] ; 4 uses
  %.not28.not.i.i = icmp ne ptr %.sroa.11.1.i7.i, null ; 2 uses
  %.sroa.16.16.extract.trunc.i.i = trunc i64 %.sroa.16.1.i.i to i32 ; 5 uses
  %.sroa.7.0.i.i = select i1 %.not28.not.i.i, i32 %.sroa.16.16.extract.trunc.i.i, i32 undef
  %i.fk = icmp ugt i32 %.sroa.12.1160.i.i, %.sroa.16.16.extract.trunc.i.i
  %or.cond.i.i = select i1 %.not28.not.i.i, i1 %i.fk, i1 false
  br i1 %or.cond.i.i, label %bb.ak, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h48eac9bf97d0e5d8E.exit.thread.i.i"

bb.ak:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h48eac9bf97d0e5d8E.exit.i.i"
  %i.fl = icmp ult i32 %.sroa.0108.0159.i.i, %.sroa.16.16.extract.trunc.i.i
  br i1 %i.fl, label %bb.al, label %"_ZN3nls8position13make_disjoint28_$u7b$$u7b$closure$u7d$$u7d$17h0275b079806a2038E.exit.i.i"

bb.al:                                            ; preds = %bb.ak
  call void @llvm.experimental.noalias.scope.decl(metadata !61814)
  %i.fm = load i64, ptr %i.g, align 8, !range !76, !alias.scope !61814, !noalias !61815, !noundef !46
  %i.fn = icmp eq i64 %i.fc, %i.fm
  br i1 %i.fn, label %bb.am, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h99a086b085875441E.exit.i.i.i"

bb.am:                                            ; preds = %bb.al
  invoke fastcc void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h13f7e9e0ac25ba1eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1108)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h99a086b085875441E.exit.i.i.i" unwind label %bb.ai, !noalias !61810

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h99a086b085875441E.exit.i.i.i": ; preds = %bb.am, %bb.al
  %i.fo = load ptr, ptr %i.ew, align 8, !alias.scope !61814, !noalias !61815, !nonnull !46, !noundef !46 ; 2 uses
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.fo, i64 %i.fc ; 3 uses
  store ptr %.sroa.082.1162.i.i, ptr %i.fp, align 8, !noalias !61816
  %.sroa.4.0..sroa_idx.i53.i.i = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store i32 %.sroa.0108.0159.i.i, ptr %.sroa.4.0..sroa_idx.i53.i.i, align 8, !noalias !61817
  %.sroa.5.0..sroa_idx.i54.i.i = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  store i32 %.sroa.16.16.extract.trunc.i.i, ptr %.sroa.5.0..sroa_idx.i54.i.i, align 4, !noalias !61817
  %i.fq = add i64 %i.fc, 1                        ; 2 uses
  store i64 %i.fq, ptr %i.ex, align 8, !alias.scope !61814, !noalias !61815
  br label %"_ZN3nls8position13make_disjoint28_$u7b$$u7b$closure$u7d$$u7d$17h0275b079806a2038E.exit.i.i"

"_ZN3nls8position13make_disjoint28_$u7b$$u7b$closure$u7d$$u7d$17h0275b079806a2038E.exit.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h99a086b085875441E.exit.i.i.i", %bb.ak
  %i.fr = phi ptr [ %i.fo, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h99a086b085875441E.exit.i.i.i" ], [ %i.fb, %bb.ak ]
  %i.fs = phi i64 [ %i.fq, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h99a086b085875441E.exit.i.i.i" ], [ %i.fc, %bb.ak ]
  %.sroa.0108.2.i.i = phi i32 [ %.sroa.7.0.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h99a086b085875441E.exit.i.i.i" ], [ %.sroa.0108.0159.i.i, %bb.ak ]
  call void @llvm.experimental.noalias.scope.decl(metadata !61818)
  %i.ft = load i64, ptr %i.h, align 8, !range !76, !alias.scope !61818, !noalias !61809, !noundef !46
  %i.fu = icmp eq i64 %i.ez, %i.ft
  br i1 %i.fu, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %"_ZN3nls8position13make_disjoint28_$u7b$$u7b$closure$u7d$$u7d$17h0275b079806a2038E.exit.i.i"
  invoke fastcc void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h13f7e9e0ac25ba1eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1107)
          to label %bb.ao unwind label %bb.ai, !noalias !61810

bb.ao:                                            ; preds = %bb.an, %"_ZN3nls8position13make_disjoint28_$u7b$$u7b$closure$u7d$$u7d$17h0275b079806a2038E.exit.i.i"
  %i.fv = load ptr, ptr %i.eu, align 8, !alias.scope !61818, !noalias !61809, !nonnull !46, !noundef !46
  %i.fw = getelementptr inbounds nuw [16 x i8], ptr %i.fv, i64 %i.ez ; 3 uses
  store ptr %.sroa.082.1162.i.i, ptr %i.fw, align 8, !noalias !61819
  %.sroa.4115.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store i32 %.sroa.1189.1161.i.i, ptr %.sroa.4115.0..sroa_idx.i.i, align 8, !noalias !61819
  %.sroa.5116.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  store i32 %.sroa.12.1160.i.i, ptr %.sroa.5116.0..sroa_idx.i.i, align 4, !noalias !61819
  %i.fx = add i64 %i.ez, 1                        ; 3 uses
  store i64 %i.fx, ptr %i.et, align 8, !alias.scope !61818, !noalias !61809
  br label %bb.ap

bb.ap:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$7or_else17h0ec7aa337f967490E.exit.i.i", %bb.ao
  %i.fy = phi i64 [ %i.fx, %bb.ao ], [ %i.gt, %"_ZN4core6option15Option$LT$T$GT$7or_else17h0ec7aa337f967490E.exit.i.i" ]
  %i.fz = phi i64 [ %i.fx, %bb.ao ], [ %i.gu, %"_ZN4core6option15Option$LT$T$GT$7or_else17h0ec7aa337f967490E.exit.i.i" ]
  %i.ga = phi ptr [ %i.fr, %bb.ao ], [ %i.gk, %"_ZN4core6option15Option$LT$T$GT$7or_else17h0ec7aa337f967490E.exit.i.i" ]
  %i.gb = phi i64 [ %i.fs, %bb.ao ], [ %i.gl, %"_ZN4core6option15Option$LT$T$GT$7or_else17h0ec7aa337f967490E.exit.i.i" ]
  %.sroa.11.1151.i.i = phi ptr [ %.sroa.11.1.i7.i, %bb.ao ], [ %.sroa.11.1152.i.i, %"_ZN4core6option15Option$LT$T$GT$7or_else17h0ec7aa337f967490E.exit.i.i" ]
  %.sroa.16.1149.i.i = phi i64 [ %.sroa.16.1.i.i, %bb.ao ], [ %.sroa.16.1150.i.i, %"_ZN4core6option15Option$LT$T$GT$7or_else17h0ec7aa337f967490E.exit.i.i" ]
  %.sroa.0108.1.i.i = phi i32 [ %.sroa.0108.2.i.i, %bb.ao ], [ %.sroa.0108.3.i.i, %"_ZN4core6option15Option$LT$T$GT$7or_else17h0ec7aa337f967490E.exit.i.i" ]
  %.sroa.12.2.in.in.i.i = phi i64 [ %.sroa.16.1.i.i, %bb.ao ], [ %.sroa.7125.0.i.i, %"_ZN4core6option15Option$LT$T$GT$7or_else17h0ec7aa337f967490E.exit.i.i" ]
  %.sroa.1189.2.i.i = phi i32 [ %.sroa.16.16.extract.trunc.i.i, %bb.ao ], [ %.sroa.7125.8.extract.trunc.i.i, %"_ZN4core6option15Option$LT$T$GT$7or_else17h0ec7aa337f967490E.exit.i.i" ]
  %.sroa.082.2.i.i = phi ptr [ %.sroa.11.1.i7.i, %bb.ao ], [ %.sroa.0123.0.i.i, %"_ZN4core6option15Option$LT$T$GT$7or_else17h0ec7aa337f967490E.exit.i.i" ] ; 2 uses
  %.sroa.21.2.i.i = phi ptr [ %.sroa.21.5.i.i, %bb.ao ], [ %.sroa.21.5148.i.i, %"_ZN4core6option15Option$LT$T$GT$7or_else17h0ec7aa337f967490E.exit.i.i" ]
  %.sroa.0.1.i.i = phi i1 [ false, %bb.ao ], [ %.sroa.0.3.i.i, %"_ZN4core6option15Option$LT$T$GT$7or_else17h0ec7aa337f967490E.exit.i.i" ]
  %.sroa.12.2.in.i.i = lshr i64 %.sroa.12.2.in.in.i.i, 32
  %.sroa.12.2.i.i = trunc nuw i64 %.sroa.12.2.in.i.i to i32
  %.not27.i.i = icmp eq ptr %.sroa.082.2.i.i, null
  br i1 %.not27.i.i, label %._crit_edge.i8.i, label %.lr.ph.i6.i

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h48eac9bf97d0e5d8E.exit.thread.i.i": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h48eac9bf97d0e5d8E.exit.i.i", %bb.af
  %.sroa.11.1152.i.i = phi ptr [ %.sroa.11.1.i7.i, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h48eac9bf97d0e5d8E.exit.i.i" ], [ null, %bb.af ] ; 3 uses
  %.sroa.16.1150.i.i = phi i64 [ %.sroa.16.1.i.i, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h48eac9bf97d0e5d8E.exit.i.i" ], [ undef, %bb.af ] ; 3 uses
  %.sroa.21.5148.i.i = phi ptr [ %.sroa.21.5.i.i, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h48eac9bf97d0e5d8E.exit.i.i" ], [ %i.ev, %bb.af ]
  %i.gc = icmp ult i32 %.sroa.0108.0159.i.i, %.sroa.12.1160.i.i
  br i1 %i.gc, label %bb.aq, label %"_ZN3nls8position13make_disjoint28_$u7b$$u7b$closure$u7d$$u7d$17h0275b079806a2038E.exit62.i.i"

bb.aq:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h48eac9bf97d0e5d8E.exit.thread.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !61820)
  %i.gd = load i64, ptr %i.g, align 8, !range !76, !alias.scope !61820, !noalias !61821, !noundef !46
  %i.ge = icmp eq i64 %i.fc, %i.gd
  br i1 %i.ge, label %bb.ar, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h99a086b085875441E.exit.i58.i.i"

bb.ar:                                            ; preds = %bb.aq
  invoke fastcc void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h13f7e9e0ac25ba1eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1108)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h99a086b085875441E.exit.i58_crit_edge.i.i" unwind label %bb.ai, !noalias !61810

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h99a086b085875441E.exit.i58_crit_edge.i.i": ; preds = %bb.ar
  %.pre.i.i = load ptr, ptr %i.ew, align 8, !alias.scope !61820, !noalias !61821
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h99a086b085875441E.exit.i58.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h99a086b085875441E.exit.i58.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h99a086b085875441E.exit.i58_crit_edge.i.i", %bb.aq
  %i.gf = phi ptr [ %.pre.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h99a086b085875441E.exit.i58_crit_edge.i.i" ], [ %i.fb, %bb.aq ] ; 2 uses
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %i.gf, i64 %i.fc ; 3 uses
  store ptr %.sroa.082.1162.i.i, ptr %i.gg, align 8, !noalias !61822
  %.sroa.4.0..sroa_idx.i59.i.i = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store i32 %.sroa.0108.0159.i.i, ptr %.sroa.4.0..sroa_idx.i59.i.i, align 8, !noalias !61823
  %.sroa.5.0..sroa_idx.i60.i.i = getelementptr inbounds nuw i8, ptr %i.gg, i64 12
  store i32 %.sroa.12.1160.i.i, ptr %.sroa.5.0..sroa_idx.i60.i.i, align 4, !noalias !61823
  %i.gh = add i64 %i.fc, 1                        ; 2 uses
  store i64 %i.gh, ptr %i.ex, align 8, !alias.scope !61820, !noalias !61821
  %.pre167.i.i = load i64, ptr %i.et, align 8, !noalias !61809 ; 2 uses
  br label %"_ZN3nls8position13make_disjoint28_$u7b$$u7b$closure$u7d$$u7d$17h0275b079806a2038E.exit62.i.i"

"_ZN3nls8position13make_disjoint28_$u7b$$u7b$closure$u7d$$u7d$17h0275b079806a2038E.exit62.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h99a086b085875441E.exit.i58.i.i", %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h48eac9bf97d0e5d8E.exit.thread.i.i"
  %i.gi = phi i64 [ %.pre167.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h99a086b085875441E.exit.i58.i.i" ], [ %i.ez, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h48eac9bf97d0e5d8E.exit.thread.i.i" ]
  %i.gj = phi i64 [ %.pre167.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h99a086b085875441E.exit.i58.i.i" ], [ %i.fa, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h48eac9bf97d0e5d8E.exit.thread.i.i" ] ; 3 uses
  %i.gk = phi ptr [ %i.gf, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h99a086b085875441E.exit.i58.i.i" ], [ %i.fb, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h48eac9bf97d0e5d8E.exit.thread.i.i" ]
  %i.gl = phi i64 [ %i.gh, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h99a086b085875441E.exit.i58.i.i" ], [ %i.fc, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h48eac9bf97d0e5d8E.exit.thread.i.i" ]
  %.sroa.0108.3.i.i = phi i32 [ %.sroa.12.1160.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h99a086b085875441E.exit.i58.i.i" ], [ %.sroa.0108.0159.i.i, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h48eac9bf97d0e5d8E.exit.thread.i.i" ]
  %i.gm = icmp eq i64 %i.gj, 0
  br i1 %i.gm, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h0ec7aa337f967490E.exit.i.i", label %bb.as

bb.as:                                            ; preds = %"_ZN3nls8position13make_disjoint28_$u7b$$u7b$closure$u7d$$u7d$17h0275b079806a2038E.exit62.i.i"
  %i.gn = add nsw i64 %i.gj, -1                   ; 7 uses
  store i64 %i.gn, ptr %i.et, align 8, !noalias !61809
  %i.go = load i64, ptr %i.h, align 8, !range !76, !noalias !61809, !noundef !46
  %i.gp = icmp samesign ult i64 %i.gn, %i.go
  call void @llvm.assume(i1 %i.gp)
  %i.gq = load ptr, ptr %i.eu, align 8, !noalias !61809, !nonnull !46, !noundef !46
  %i.gr = icmp ult i64 %i.gj, 576460752303423489
  call void @llvm.assume(i1 %i.gr)
  %i.gs = getelementptr inbounds nuw [16 x i8], ptr %i.gq, i64 %i.gn ; 2 uses
  %.sroa.0133.0.copyload.i.i = load ptr, ptr %i.gs, align 8, !noalias !61810 ; 2 uses
  %.sroa.4134.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %.sroa.4134.0.copyload.i.i = load i64, ptr %.sroa.4134.0..sroa_idx.i.i, align 8, !noalias !61810
  %.not.i.i.i = icmp eq ptr %.sroa.0133.0.copyload.i.i, null
  br i1 %.not.i.i.i, label %.thread154.i.i, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h0ec7aa337f967490E.exit.i.i"

.thread154.i.i:                                   ; preds = %bb.as
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17h0ec7aa337f967490E.exit.i.i"

"_ZN4core6option15Option$LT$T$GT$7or_else17h0ec7aa337f967490E.exit.i.i": ; preds = %.thread154.i.i, %bb.as, %"_ZN3nls8position13make_disjoint28_$u7b$$u7b$closure$u7d$$u7d$17h0275b079806a2038E.exit62.i.i"
  %i.gt = phi i64 [ %i.gn, %bb.as ], [ %i.gi, %"_ZN3nls8position13make_disjoint28_$u7b$$u7b$closure$u7d$$u7d$17h0275b079806a2038E.exit62.i.i" ], [ %i.gn, %.thread154.i.i ]
  %i.gu = phi i64 [ %i.gn, %bb.as ], [ 0, %"_ZN3nls8position13make_disjoint28_$u7b$$u7b$closure$u7d$$u7d$17h0275b079806a2038E.exit62.i.i" ], [ %i.gn, %.thread154.i.i ]
  %.sroa.7125.0.i.i = phi i64 [ %.sroa.4134.0.copyload.i.i, %bb.as ], [ %.sroa.16.1150.i.i, %"_ZN3nls8position13make_disjoint28_$u7b$$u7b$closure$u7d$$u7d$17h0275b079806a2038E.exit62.i.i" ], [ %.sroa.16.1150.i.i, %.thread154.i.i ] ; 2 uses
  %.sroa.0123.0.i.i = phi ptr [ %.sroa.0133.0.copyload.i.i, %bb.as ], [ %.sroa.11.1152.i.i, %"_ZN3nls8position13make_disjoint28_$u7b$$u7b$closure$u7d$$u7d$17h0275b079806a2038E.exit62.i.i" ], [ %.sroa.11.1152.i.i, %.thread154.i.i ]
  %.sroa.0.3.i.i = phi i1 [ true, %bb.as ], [ false, %"_ZN3nls8position13make_disjoint28_$u7b$$u7b$closure$u7d$$u7d$17h0275b079806a2038E.exit62.i.i" ], [ false, %.thread154.i.i ]
  %.sroa.7125.8.extract.trunc.i.i = trunc i64 %.sroa.7125.0.i.i to i32
  br label %bb.ap

"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$nls..position..Entry$LT$nls..term..AstPtr$GT$$GT$$GT$17h10819f4a7706f663E.exit.i.i": ; preds = %bb.ae, %"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$nls..position..Entry$LT$nls..term..AstPtr$GT$$GT$$GT$17h10819f4a7706f663E.exit52.i.i"
  %i.gv = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.gv, label %.body.i, label %"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$nls..position..Entry$LT$nls..term..AstPtr$GT$$GT$$GT$17h10819f4a7706f663E.exit64.sink.split.i.i"

"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$nls..position..Entry$LT$nls..term..AstPtr$GT$$GT$$GT$17h10819f4a7706f663E.exit51.i.i": ; preds = %bb.ah, %._crit_edge.i8.i, %._crit_edge.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !61809
  %i.gw = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.gw, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$nls..position..Entry$LT$nls..term..AstPtr$GT$$GT$$GT$17h10819f4a7706f663E.exit51.i.i"
  %i.gx = shl nuw i64 %.sroa.0.0.copyload.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %i.gx, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !61824
  br label %bb.ax

"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$nls..position..Entry$LT$nls..term..AstPtr$GT$$GT$$GT$17h10819f4a7706f663E.exit64.sink.split.i.i": ; preds = %bb.au, %"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$nls..position..Entry$LT$nls..term..AstPtr$GT$$GT$$GT$17h10819f4a7706f663E.exit.i.i"
  %.pn.pn.pn137.ph.i.i = phi { ptr, i32 } [ %i.gz, %bb.au ], [ %i.fh, %"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$nls..position..Entry$LT$nls..term..AstPtr$GT$$GT$$GT$17h10819f4a7706f663E.exit.i.i" ]
  %i.gy = shl nuw i64 %.sroa.0.0.copyload.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %i.gy, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !61810
  br label %.body.i

bb.au:                                            ; preds = %bb.ab
  %i.gz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ha = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.ha, label %.body.i, label %"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$nls..position..Entry$LT$nls..term..AstPtr$GT$$GT$$GT$17h10819f4a7706f663E.exit64.sink.split.i.i"

"_ZN4core3ptr96drop_in_place$LT$alloc..vec..Vec$LT$nls..position..Entry$LT$nls..position..IdentData$GT$$GT$$GT$17h4ad6b9e2da9a4a41E.exit.i": ; preds = %bb.c, %.body.i
  br i1 %.sroa.0.0.lpad-body.i, label %bb.av, label %bb.bj

bb.av:                                            ; preds = %"_ZN4core3ptr96drop_in_place$LT$alloc..vec..Vec$LT$nls..position..Entry$LT$nls..position..IdentData$GT$$GT$$GT$17h4ad6b9e2da9a4a41E.exit.i"
  %.val.i = load i64, ptr %i.l, align 8, !noalias !61777 ; 2 uses
  %i.hb = icmp eq i64 %.val.i, 0
  br i1 %i.hb, label %bb.bj, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.val2.i = load ptr, ptr %i.p, align 8, !noalias !61777, !nonnull !46, !noundef !46
  %i.hc = shl nuw i64 %.val.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %i.hc, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !61778
  br label %bb.bj

bb.ax:                                            ; preds = %bb.at, %"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$nls..position..Entry$LT$nls..term..AstPtr$GT$$GT$$GT$17h10819f4a7706f663E.exit51.i.i"
  %i.hd = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hd, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !61825
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !61825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !61777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !61777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !61777
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !61826
  call void @llvm.experimental.noalias.scope.decl(metadata !61827)
  %i.he = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 13 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16 ; 6 uses
  %i.hg = load i8, ptr %i.hf, align 8, !range !47, !noalias !61828, !noundef !46
  %i.hh = trunc nuw i8 %i.hg to i1
  br i1 %i.hh, label %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h910dc175fbe29d29E.exit.i.i.i.i", !prof !48

end_hunk_0
