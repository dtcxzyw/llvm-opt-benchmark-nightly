Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/procfs-2e97890f46cddf99.procfs.bf40b31bd625cb91-cgu.0?download=true
inline.NumInlined: 7331
inline.NumDeleted: 1554
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 16
begin_hunk_0_@"_ZN77_$LT$procfs_core..process..MemoryMaps$u20$as$u20$procfs_core..FromBufRead$GT$13from_buf_read17h0fc87b6cae5cdf82E":bb.a
  %.sroa.7.0.copyload62.i562 = phi i1 [ true, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i.i.i.i.i.i.i" ], [ %.sroa.7.0.copyload61.i.ph, %.split ]
  %.not6.i = icmp eq ptr %i.cu, null
  br i1 %.not6.i, label %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he3bdd162982c56ecE.exit", label %.preheader426

.preheader426:                                    ; preds = %_ZN4core4iter6traits8iterator8Iterator3nth17h5b9b01a12a256cd8E.exit.i, %.noexc
  %i.di = phi i64 [ %i.ea, %.noexc ], [ %i.dh, %_ZN4core4iter6traits8iterator8Iterator3nth17h5b9b01a12a256cd8E.exit.i ] ; 2 uses
  %i.dj = phi ptr [ %i.eb, %.noexc ], [ %i.dg, %_ZN4core4iter6traits8iterator8Iterator3nth17h5b9b01a12a256cd8E.exit.i ] ; 2 uses
  %i.dk = phi i1 [ %i.ec, %.noexc ], [ %.sroa.7.0.copyload62.i562, %_ZN4core4iter6traits8iterator8Iterator3nth17h5b9b01a12a256cd8E.exit.i ] ; 2 uses
  %.sroa.0.0.i7.i = phi i32 [ %i.eh, %.noexc ], [ 0, %_ZN4core4iter6traits8iterator8Iterator3nth17h5b9b01a12a256cd8E.exit.i ] ; 3 uses
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit.i.i.i.i.i.i.i14.i, %.preheader426
  %i.dl = phi i64 [ %i.ea, %.loopexit.i.i.i.i.i.i.i14.i ], [ %i.di, %.preheader426 ] ; 2 uses
  %i.dm = phi ptr [ %i.eb, %.loopexit.i.i.i.i.i.i.i14.i ], [ %i.dj, %.preheader426 ] ; 2 uses
  %i.dn = phi i1 [ %i.ec, %.loopexit.i.i.i.i.i.i.i14.i ], [ %i.dk, %.preheader426 ]
  %i.do = phi i64 [ %i.ed, %.loopexit.i.i.i.i.i.i.i14.i ], [ %i.di, %.preheader426 ] ; 5 uses
  %i.dp = phi ptr [ %i.ee, %.loopexit.i.i.i.i.i.i.i14.i ], [ %i.dj, %.preheader426 ] ; 7 uses
  %i.dq = phi i1 [ %i.ef, %.loopexit.i.i.i.i.i.i.i14.i ], [ %i.dk, %.preheader426 ]
  br i1 %i.dq, label %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he3bdd162982c56ecE.exit", label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.do
  %i.ds = icmp samesign eq i64 %i.do, 0
  br i1 %i.ds, label %.loopexit.i.i.i.i.i.i.i14.i, label %.lr.ph.i.i.i.i.i.i.i.i8.i

.lr.ph.i.i.i.i.i.i.i.i8.i:                        ; preds = %bb.ad, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i.i.i.i.i.i13.i"
  %.sroa.02.012.i.i.i.i.i.i.i.i9.i = phi i64 [ %i.dv, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i.i.i.i.i.i13.i" ], [ 0, %bb.ad ] ; 3 uses
  %i.dt = phi ptr [ %i.du, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i.i.i.i.i.i13.i" ], [ %i.dp, %bb.ad ] ; 2 uses
  %.val.i.i.i.i.i.i.i.i10.i = load i8, ptr %i.dt, align 1, !noalias !24760, !noundef !4
  switch i8 %.val.i.i.i.i.i.i.i.i10.i, label %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i.i.i.i.i.i13.i" [
    i8 9, label %bb.ae
    i8 10, label %bb.ae
    i8 12, label %bb.ae
    i8 13, label %bb.ae
    i8 32, label %bb.ae
  ]

"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i.i.i.i.i.i13.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i8.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 1 ; 2 uses
  %i.dv = add nuw i64 %.sroa.02.012.i.i.i.i.i.i.i.i9.i, 1
  %i.dw = icmp eq ptr %i.du, %i.dr
  br i1 %i.dw, label %.loopexit.i.i.i.i.i.i.i14.i, label %.lr.ph.i.i.i.i.i.i.i.i8.i

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i8.i, %.lr.ph.i.i.i.i.i.i.i.i8.i, %.lr.ph.i.i.i.i.i.i.i.i8.i, %.lr.ph.i.i.i.i.i.i.i.i8.i, %.lr.ph.i.i.i.i.i.i.i.i8.i
  %i.dx = add nuw i64 %.sroa.02.012.i.i.i.i.i.i.i.i9.i, 1 ; 2 uses
  %i.dy = sub nuw i64 %i.do, %i.dx                ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dx ; 2 uses
  br label %.loopexit.i.i.i.i.i.i.i14.i

.loopexit.i.i.i.i.i.i.i14.i:                      ; preds = %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i.i.i.i.i.i13.i", %bb.ae, %bb.ad
  %i.ea = phi i64 [ %i.dy, %bb.ae ], [ %i.dl, %bb.ad ], [ %i.dl, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i.i.i.i.i.i13.i" ] ; 2 uses
  %i.eb = phi ptr [ %i.dz, %bb.ae ], [ %i.dm, %bb.ad ], [ %i.dm, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i.i.i.i.i.i13.i" ] ; 2 uses
  %i.ec = phi i1 [ %i.dn, %bb.ae ], [ true, %bb.ad ], [ true, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i.i.i.i.i.i13.i" ] ; 2 uses
  %i.ed = phi i64 [ %i.dy, %bb.ae ], [ 0, %bb.ad ], [ %i.do, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i.i.i.i.i.i13.i" ]
  %i.ee = phi ptr [ %i.dz, %bb.ae ], [ %i.dp, %bb.ad ], [ %i.dp, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i.i.i.i.i.i13.i" ]
  %i.ef = phi i1 [ false, %bb.ae ], [ true, %bb.ad ], [ true, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i.i.i.i.i.i13.i" ]
  %.sroa.5.1.i.ph.i.i.i.i.i.i11.i = phi i64 [ %.sroa.02.012.i.i.i.i.i.i.i.i9.i, %bb.ae ], [ 0, %bb.ad ], [ %i.do, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i.i.i.i.i.i13.i" ] ; 2 uses
  %.not.i.i.i.i.i.i.i12.i = icmp eq i64 %.sroa.5.1.i.ph.i.i.i.i.i.i11.i, 0
  br i1 %.not.i.i.i.i.i.i.i12.i, label %bb.ac, label %"_ZN96_$LT$core..str..iter..SplitAsciiWhitespace$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c721889622d8f7fE.exit.i.i"

"_ZN96_$LT$core..str..iter..SplitAsciiWhitespace$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c721889622d8f7fE.exit.i.i": ; preds = %.loopexit.i.i.i.i.i.i.i14.i
  %.not.i.i259 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i259, label %"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he3bdd162982c56ecE.exit", label %bb.af

bb.af:                                            ; preds = %"_ZN96_$LT$core..str..iter..SplitAsciiWhitespace$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c721889622d8f7fE.exit.i.i"
  %i.eg = invoke noundef i32 @_ZN11procfs_core7process7VmFlags8from_str17hca5b6f7627a6b0f9E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dp, i64 noundef %.sroa.5.1.i.ph.i.i.i.i.i.i11.i)
          to label %.noexc unwind label %.loopexit428

.noexc:                                           ; preds = %bb.af
  %i.eh = or i32 %i.eg, %.sroa.0.0.i7.i
  br label %.preheader426

bb.ag:                                            ; preds = %.loopexit.i.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17he1d9bfabbe7bf282E.exit.thread"
  %.sroa.17.2 = phi i8 [ %.sroa.17.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17he1d9bfabbe7bf282E.exit.thread" ], [ %.sroa.17.1, %.loopexit.i.i ] ; 2 uses
  %.sroa.10.2 = phi i64 [ %.sroa.10.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17he1d9bfabbe7bf282E.exit.thread" ], [ %.sroa.10.1, %.loopexit.i.i ] ; 2 uses
  %.sroa.0323.2 = phi ptr [ %.sroa.0323.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17he1d9bfabbe7bf282E.exit.thread" ], [ %.sroa.0323.1, %.loopexit.i.i ] ; 2 uses
  %.sroa.3.0.i = phi i64 [ undef, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17he1d9bfabbe7bf282E.exit.thread" ], [ %.sroa.5.1.i.ph.i, %.loopexit.i.i ]
  %.sroa.0.0.i = phi ptr [ null, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17he1d9bfabbe7bf282E.exit.thread" ], [ %i.cf, %.loopexit.i.i ] ; 4 uses
  %.not235 = icmp eq ptr %.sroa.0.0.i, null
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit.i.i272, %bb.ag
  %.sroa.17.3 = phi i8 [ %.sroa.17.2, %bb.ag ], [ %.sroa.17.4, %.loopexit.i.i272 ]
  %.sroa.10.3 = phi i64 [ %.sroa.10.2, %bb.ag ], [ %.sroa.10.4, %.loopexit.i.i272 ] ; 2 uses
  %.sroa.0323.3 = phi ptr [ %.sroa.0323.2, %bb.ag ], [ %.sroa.0323.4, %.loopexit.i.i272 ] ; 2 uses
  %i.ei = phi i64 [ %.sroa.10.2, %bb.ag ], [ %i.ev, %.loopexit.i.i272 ] ; 5 uses
  %i.ej = phi ptr [ %.sroa.0323.2, %bb.ag ], [ %i.ew, %.loopexit.i.i272 ] ; 11 uses
  %i.ek = phi i8 [ %.sroa.17.2, %bb.ag ], [ %i.ex, %.loopexit.i.i272 ]
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %.thread397, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ei
  %i.en = icmp samesign eq i64 %i.ei, 0
  br i1 %i.en, label %.loopexit.i.i272, label %.lr.ph.i.i.i264

.lr.ph.i.i.i264:                                  ; preds = %bb.ai, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i271"
  %.sroa.02.012.i.i.i265 = phi i64 [ %i.eq, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i271" ], [ 0, %bb.ai ] ; 3 uses
  %i.eo = phi ptr [ %i.ep, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i271" ], [ %i.ej, %bb.ai ] ; 2 uses
  %.val.i.i.i266 = load i8, ptr %i.eo, align 1, !noalias !24761, !noundef !4
  switch i8 %.val.i.i.i266, label %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i271" [
    i8 9, label %bb.aj
    i8 10, label %bb.aj
    i8 12, label %bb.aj
    i8 13, label %bb.aj
    i8 32, label %bb.aj
  ]

"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i271": ; preds = %.lr.ph.i.i.i264
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 1 ; 2 uses
  %i.eq = add nuw i64 %.sroa.02.012.i.i.i265, 1
  %i.er = icmp eq ptr %i.ep, %i.em
  br i1 %i.er, label %.loopexit.i.i272, label %.lr.ph.i.i.i264

bb.aj:                                            ; preds = %.lr.ph.i.i.i264, %.lr.ph.i.i.i264, %.lr.ph.i.i.i264, %.lr.ph.i.i.i264, %.lr.ph.i.i.i264
  %i.es = add nuw i64 %.sroa.02.012.i.i.i265, 1   ; 2 uses
  %i.et = sub nuw i64 %i.ei, %i.es                ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.es ; 2 uses
  br label %.loopexit.i.i272

.loopexit.i.i272:                                 ; preds = %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i271", %bb.ai, %bb.aj
  %.sroa.17.4 = phi i8 [ %.sroa.17.3, %bb.aj ], [ 1, %bb.ai ], [ 1, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i271" ] ; 2 uses
  %.sroa.10.4 = phi i64 [ %i.et, %bb.aj ], [ %.sroa.10.3, %bb.ai ], [ %.sroa.10.3, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i271" ] ; 2 uses
  %.sroa.0323.4 = phi ptr [ %i.eu, %bb.aj ], [ %.sroa.0323.3, %bb.ai ], [ %.sroa.0323.3, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i271" ] ; 2 uses
  %i.ev = phi i64 [ %i.et, %bb.aj ], [ 0, %bb.ai ], [ %i.ei, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i271" ]
  %i.ew = phi ptr [ %i.eu, %bb.aj ], [ %i.ej, %bb.ai ], [ %i.ej, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i271" ]
  %i.ex = phi i8 [ 0, %bb.aj ], [ 1, %bb.ai ], [ 1, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i271" ]
  %.sroa.5.1.i.ph.i267 = phi i64 [ %.sroa.02.012.i.i.i265, %bb.aj ], [ 0, %bb.ai ], [ %i.ei, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i271" ] ; 7 uses
  %.not.i.i268 = icmp eq i64 %.sroa.5.1.i.ph.i267, 0
  br i1 %.not.i.i268, label %bb.ah, label %bb.ak

bb.ak:                                            ; preds = %.loopexit.i.i272
  %.not237 = icmp eq ptr %i.ej, null
  %or.cond = select i1 %.not235, i1 true, i1 %.not237
  br i1 %or.cond, label %.thread397, label %.preheader.outer.preheader

.preheader.outer.preheader:                       ; preds = %bb.ak
  %i.ey = trunc nuw i8 %.sroa.17.4 to i1
  br label %.preheader.outer

.preheader.outer:                                 ; preds = %.preheader.outer.preheader, %.split566
  %.ph = phi i64 [ %i.fg, %.split566 ], [ %.sroa.10.4, %.preheader.outer.preheader ] ; 3 uses
  %.ph572 = phi ptr [ %i.fh, %.split566 ], [ %.sroa.0323.4, %.preheader.outer.preheader ] ; 5 uses
  %.ph573 = phi i1 [ false, %.split566 ], [ %i.ey, %.preheader.outer.preheader ]
  %i.ez = icmp samesign eq i64 %.ph, 0
  %or.cond754 = select i1 %.ph573, i1 true, i1 %i.ez
  br i1 %or.cond754, label %.loopexit.i.i285.thread, label %.lr.ph.i.i.i277.preheader

.lr.ph.i.i.i277.preheader:                        ; preds = %.preheader.outer
  %i.fa = getelementptr inbounds nuw i8, ptr %.ph572, i64 %.ph
  br label %.lr.ph.i.i.i277

.lr.ph.i.i.i277:                                  ; preds = %.lr.ph.i.i.i277.preheader, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i284"
  %.sroa.02.012.i.i.i278 = phi i64 [ %i.fd, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i284" ], [ 0, %.lr.ph.i.i.i277.preheader ] ; 3 uses
  %i.fb = phi ptr [ %i.fc, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i284" ], [ %.ph572, %.lr.ph.i.i.i277.preheader ] ; 2 uses
  %.val.i.i.i279 = load i8, ptr %i.fb, align 1, !noalias !24762, !noundef !4
  switch i8 %.val.i.i.i279, label %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i284" [
    i8 9, label %.split566
    i8 10, label %.split566
    i8 12, label %.split566
    i8 13, label %.split566
    i8 32, label %.split566
  ]

"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i284": ; preds = %.lr.ph.i.i.i277
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 1 ; 2 uses
  %i.fd = add nuw i64 %.sroa.02.012.i.i.i278, 1
  %i.fe = icmp eq ptr %i.fc, %i.fa
  br i1 %i.fe, label %.loopexit.i.i285.thread, label %.lr.ph.i.i.i277

.split566:                                        ; preds = %.lr.ph.i.i.i277, %.lr.ph.i.i.i277, %.lr.ph.i.i.i277, %.lr.ph.i.i.i277, %.lr.ph.i.i.i277
  %i.ff = add nuw i64 %.sroa.02.012.i.i.i278, 1   ; 2 uses
  %i.fg = sub nuw i64 %.ph, %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %.ph572, i64 %i.ff
  %i.fi = icmp eq i64 %.sroa.02.012.i.i.i278, 0
  br i1 %i.fi, label %.preheader.outer, label %.loopexit.i.i285.thread

.loopexit.i.i285.thread:                          ; preds = %.split566, %.preheader.outer, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i284"
  %.sroa.0.0.i283 = phi ptr [ %.ph572, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i284" ], [ null, %.preheader.outer ], [ %.ph572, %.split566 ]
  %.not241.not = icmp eq ptr %.sroa.0.0.i283, null
  %cond = icmp eq i64 %.sroa.5.1.i.ph.i267, 1
  %i.fj = load i8, ptr %i.ej, align 1, !alias.scope !24763, !noalias !24764 ; 2 uses
  br i1 %cond, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.loopexit.i.i285.thread
  switch i8 %i.fj, label %.lr.ph.split.us.i.preheader [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

bb.am:                                            ; preds = %.loopexit.i.i285.thread
  %cond.i = icmp eq i8 %i.fj, 43
  br i1 %cond.i, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ej, i64 1 ; 2 uses
  %i.fl = add i64 %.sroa.5.1.i.ph.i267, -1        ; 2 uses
  %i.fm = icmp ult i64 %.sroa.5.1.i.ph.i267, 18
  br i1 %i.fm, label %.lr.ph.split.us.i.preheader, label %.preheader55.i

.preheader55.i:                                   ; preds = %bb.ap, %bb.an
  %.sroa.16.0.ph.i = phi i64 [ %.sroa.5.1.i.ph.i267, %bb.ap ], [ %i.fl, %bb.an ] ; 2 uses
  %.sroa.01.0.ph.i = phi ptr [ %i.ej, %bb.ap ], [ %i.fk, %bb.an ]
  %.not.us.i750 = icmp eq i64 %.sroa.16.0.ph.i, 0
  br i1 %.not.us.i750, label %.loopexit423, label %.lr.ph

.preheader55.split.us.i:                          ; preds = %bb.ao
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.01.0.us.i753, i64 1
  %i.fo = add i64 %.sroa.16.0.us.i752, -1         ; 2 uses
  %.not.us.i = icmp eq i64 %i.fo, 0
  br i1 %.not.us.i, label %.loopexit423, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader55.i, %.preheader55.split.us.i
  %.sroa.01.0.us.i753 = phi ptr [ %i.fn, %.preheader55.split.us.i ], [ %.sroa.01.0.ph.i, %.preheader55.i ] ; 2 uses
  %.sroa.16.0.us.i752 = phi i64 [ %i.fo, %.preheader55.split.us.i ], [ %.sroa.16.0.ph.i, %.preheader55.i ]
  %.sroa.017.0.us.i751 = phi i64 [ %i.fx, %.preheader55.split.us.i ], [ 0, %.preheader55.i ]
  %i.fp = load i8, ptr %.sroa.01.0.us.i753, align 1, !alias.scope !24763, !noalias !24764, !noundef !4
  %i.fq = zext i8 %i.fp to i32
  %i.fr = add nsw i32 %i.fq, -48                  ; 2 uses
  %i.fs = icmp ult i32 %i.fr, 10
  br i1 %i.fs, label %bb.ao, label %.loopexit

bb.ao:                                            ; preds = %.lr.ph
  %i.ft = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.017.0.us.i751, i64 10) ; 2 uses
  %i.fu = extractvalue { i64, i1 } %i.ft, 0       ; 2 uses
  %i.fv = extractvalue { i64, i1 } %i.ft, 1
  %i.fw = zext nneg i32 %i.fr to i64
  %i.fx = add i64 %i.fu, %i.fw                    ; 3 uses
  %.not50.us.i = icmp ult i64 %i.fx, %i.fu
  %or.cond422 = select i1 %i.fv, i1 true, i1 %.not50.us.i
  br i1 %or.cond422, label %.loopexit, label %.preheader55.split.us.i

bb.ap:                                            ; preds = %bb.am
  %i.fy = icmp ult i64 %.sroa.5.1.i.ph.i267, 17
  br i1 %i.fy, label %.lr.ph.split.us.i.preheader, label %.preheader55.i

.lr.ph.split.us.i.preheader:                      ; preds = %bb.an, %bb.ap, %bb.al
  %.sroa.01.168.us.i.ph = phi ptr [ %i.fk, %bb.an ], [ %i.ej, %bb.ap ], [ %i.ej, %bb.al ]
  %.sroa.16.167.us.i.ph = phi i64 [ %i.fl, %bb.an ], [ %.sroa.5.1.i.ph.i267, %bb.ap ], [ 1, %bb.al ]
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %bb.aq
  %.sroa.01.168.us.i = phi ptr [ %i.gf, %bb.aq ], [ %.sroa.01.168.us.i.ph, %.lr.ph.split.us.i.preheader ] ; 2 uses
  %.sroa.16.167.us.i = phi i64 [ %i.ge, %bb.aq ], [ %.sroa.16.167.us.i.ph, %.lr.ph.split.us.i.preheader ]
  %.sroa.017.166.us.i = phi i64 [ %i.gh, %bb.aq ], [ 0, %.lr.ph.split.us.i.preheader ]
  %i.fz = load i8, ptr %.sroa.01.168.us.i, align 1, !alias.scope !24763, !noalias !24764, !noundef !4
  %i.ga = zext i8 %i.fz to i32
  %i.gb = add nsw i32 %i.ga, -48                  ; 2 uses
  %i.gc = icmp ult i32 %i.gb, 10
  br i1 %i.gc, label %bb.aq, label %.loopexit

bb.aq:                                            ; preds = %.lr.ph.split.us.i
  %i.gd = mul i64 %.sroa.017.166.us.i, 10
  %i.ge = add nsw i64 %.sroa.16.167.us.i, -1      ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.01.168.us.i, i64 1
  %i.gg = zext nneg i32 %i.gb to i64
  %i.gh = add i64 %i.gd, %i.gg                    ; 2 uses
  %.not51.us.i = icmp eq i64 %i.ge, 0
  br i1 %.not51.us.i, label %.loopexit423, label %.lr.ph.split.us.i

.loopexit:                                        ; preds = %bb.al, %bb.al, %bb.ao, %.lr.ph, %.lr.ph.split.us.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !24765
  %i.gi = call noundef dereferenceable_or_null(52) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 52, i64 noundef range(i64 1, 9) 1) #42, !noalias !24765 ; 3 uses
  %i.gj = icmp eq ptr %i.gi, null
  br i1 %i.gj, label %.invoke, label %bb.ar

bb.ar:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(52) %i.gi, ptr noundef nonnull align 1 dereferenceable(52) @740, i64 52, i1 false), !noalias !24766
  store i64 -9223372036854775804, ptr %0, align 8
  %.sroa.2220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 52, ptr %.sroa.2220.0..sroa_idx, align 8
  %.sroa.3221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.gi, ptr %.sroa.3221.0..sroa_idx, align 8
  %.sroa.3221.sroa.2.0..sroa.3221.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 52, ptr %.sroa.3221.sroa.2.0..sroa.3221.0..sroa_idx.sroa_idx, align 8
  br label %bb.v

.loopexit423:                                     ; preds = %.preheader55.split.us.i, %bb.aq, %.preheader55.i
  %.sroa.648.0.ph = phi i64 [ %i.gh, %bb.aq ], [ 0, %.preheader55.i ], [ %i.fx, %.preheader55.split.us.i ]
  %i.gk = ptrtoint ptr %.sroa.0.0.i to i64
  br label %bb.as

bb.as:                                            ; preds = %"_ZN88_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17h2eadb8a87354635bE.exit.i.i", %.loopexit423
  %.reass5.i.i = phi i64 [ %.reass.i.i, %"_ZN88_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17h2eadb8a87354635bE.exit.i.i" ], [ %.sroa.3.0.i, %.loopexit423 ] ; 12 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.reass5.i.i ; 4 uses
  %i.gm = icmp samesign eq i64 %.reass5.i.i, 0
  br i1 %i.gm, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.thread, label %bb.at

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.thread: ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  br label %bb.ay

bb.at:                                            ; preds = %bb.as
  %i.gn = getelementptr inbounds i8, ptr %i.gl, i64 -1 ; 2 uses
  %i.go = load i8, ptr %i.gn, align 1, !alias.scope !24767, !noalias !24768, !noundef !4 ; 3 uses
  %i.gp = icmp sgt i8 %i.go, -1
  br i1 %i.gp, label %bb.au, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h17b0c6ea521a9490E.exit17.i.i.i.i"

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h17b0c6ea521a9490E.exit17.i.i.i.i": ; preds = %bb.at
  %i.gq = icmp ne i64 %.reass5.i.i, 1
  call void @llvm.assume(i1 %i.gq)
  %i.gr = getelementptr inbounds i8, ptr %i.gl, i64 -2 ; 2 uses
  %i.gs = load i8, ptr %i.gr, align 1, !alias.scope !24767, !noalias !24768, !noundef !4 ; 3 uses
  %i.gt = and i8 %i.gs, 31
  %i.gu = zext nneg i8 %i.gt to i32
  %i.gv = icmp slt i8 %i.gs, -64
  br i1 %i.gv, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h17b0c6ea521a9490E.exit19.i.i.i.i", label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gw = zext nneg i8 %i.go to i32
  br label %"_ZN88_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17h2eadb8a87354635bE.exit.i.i"

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h17b0c6ea521a9490E.exit19.i.i.i.i": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h17b0c6ea521a9490E.exit17.i.i.i.i"
  %i.gx = icmp ne i64 %.reass5.i.i, 2
  call void @llvm.assume(i1 %i.gx)
  %i.gy = getelementptr inbounds i8, ptr %i.gl, i64 -3 ; 2 uses
  %i.gz = load i8, ptr %i.gy, align 1, !alias.scope !24767, !noalias !24768, !noundef !4 ; 3 uses
  %i.ha = and i8 %i.gz, 15
  %i.hb = zext nneg i8 %i.ha to i32
  %i.hc = icmp slt i8 %i.gz, -64
  br i1 %i.hc, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h17b0c6ea521a9490E.exit21.i.i.i.i", label %bb.aw

bb.av:                                            ; preds = %bb.aw, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h17b0c6ea521a9490E.exit17.i.i.i.i"
  %.sroa.5.0.i.i.i = phi ptr [ %.sroa.5.1.i.i.i, %bb.aw ], [ %i.gr, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h17b0c6ea521a9490E.exit17.i.i.i.i" ]
  %.sroa.04.0.i.i.i.i = phi i32 [ %i.ht, %bb.aw ], [ %i.gu, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h17b0c6ea521a9490E.exit17.i.i.i.i" ]
  %i.hd = shl nuw nsw i32 %.sroa.04.0.i.i.i.i, 6
  %i.he = and i8 %i.go, 63
  %i.hf = zext nneg i8 %i.he to i32
  %i.hg = or disjoint i32 %i.hd, %i.hf
  br label %"_ZN88_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17h2eadb8a87354635bE.exit.i.i"

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h17b0c6ea521a9490E.exit21.i.i.i.i": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h17b0c6ea521a9490E.exit19.i.i.i.i"
  %i.hh = icmp ne i64 %.reass5.i.i, 3
  call void @llvm.assume(i1 %i.hh)
  %i.hi = getelementptr inbounds i8, ptr %i.gl, i64 -4 ; 2 uses
  %i.hj = load i8, ptr %i.hi, align 1, !alias.scope !24767, !noalias !24768, !noundef !4
  %i.hk = and i8 %i.hj, 7
  %i.hl = zext nneg i8 %i.hk to i32
  %i.hm = shl nuw nsw i32 %i.hl, 6
  %i.hn = and i8 %i.gz, 63
  %i.ho = zext nneg i8 %i.hn to i32
  %i.hp = or disjoint i32 %i.hm, %i.ho
  br label %bb.aw

bb.aw:                                            ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h17b0c6ea521a9490E.exit21.i.i.i.i", %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h17b0c6ea521a9490E.exit19.i.i.i.i"
  %.sroa.5.1.i.i.i = phi ptr [ %i.hi, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h17b0c6ea521a9490E.exit21.i.i.i.i" ], [ %i.gy, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h17b0c6ea521a9490E.exit19.i.i.i.i" ]
  %.sroa.04.1.i.i.i.i = phi i32 [ %i.hp, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h17b0c6ea521a9490E.exit21.i.i.i.i" ], [ %i.hb, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h17b0c6ea521a9490E.exit19.i.i.i.i" ]
  %i.hq = shl nuw nsw i32 %.sroa.04.1.i.i.i.i, 6
  %i.hr = and i8 %i.gs, 63
  %i.hs = zext nneg i8 %i.hr to i32
  %i.ht = or disjoint i32 %i.hq, %i.hs
  br label %bb.av

"_ZN88_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17h2eadb8a87354635bE.exit.i.i": ; preds = %bb.av, %bb.au
  %.sroa.5.2.ph.i.i.i = phi ptr [ %.sroa.5.0.i.i.i, %bb.av ], [ %i.gn, %bb.au ]
  %.sroa.4.1.i.ph.i.i.i = phi i32 [ %i.hg, %bb.av ], [ %i.gw, %bb.au ] ; 2 uses
  %i.hu = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i, 1114112
  call void @llvm.assume(i1 %i.hu)
  %i.hv = ptrtoint ptr %.sroa.5.2.ph.i.i.i to i64
  %.reass.i.i = sub i64 %i.hv, %i.gk
  %.not.i.i288 = icmp eq i32 %.sroa.4.1.i.ph.i.i.i, 58
  br i1 %.not.i.i288, label %bb.as, label %bb.ax

bb.ax:                                            ; preds = %"_ZN88_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17h2eadb8a87354635bE.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.hw = icmp slt i64 %.reass5.i.i, 0
  br i1 %i.hw, label %.invoke, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", !prof !41

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %bb.ax
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !24769
  %i.hx = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.reass5.i.i, i64 noundef range(i64 1, 9) 1) #42, !noalias !24769 ; 2 uses
  %i.hy = icmp eq ptr %i.hx, null
  br i1 %i.hy, label %.invoke, label %bb.ay

.invoke:                                          ; preds = %bb.ax, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %.loopexit
  %i.hz = phi i64 [ 1, %.loopexit ], [ 0, %bb.ax ], [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ]
  %i.ia = phi i64 [ 52, %.loopexit ], [ %.reass5.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ %.reass5.i.i, %bb.ax ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.hz, i64 %i.ia, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @922) #43
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.ay:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.thread
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.thread ], [ %i.hx, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %.sroa.0.0.i, i64 %.reass5.i.i, i1 false), !noalias !24770
  store i64 %.reass5.i.i, ptr %i.e, align 8
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4335.0..sroa_idx, align 8
  store i64 %.reass5.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ib = select i1 %.not241.not, i64 0, i64 10
  %i.ic = shl i64 %.sroa.648.0.ph, %i.ib
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h99de231d13e7a245E"(ptr noalias noundef align 8 dereferenceable(48) %i.l, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, i64 noundef %i.ic)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.thread397

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit257": ; preds = %bb.v, %bb.w, %bb.f
  %.val1.i308 = phi i64 [ %.val1.i308533, %bb.v ], [ %.val1.i308533, %bb.w ], [ %i.n, %bb.f ] ; 2 uses
  %.val.i307 = phi ptr [ %.val.i307531, %bb.v ], [ %.val.i307531, %bb.w ], [ %i.m, %bb.f ] ; 2 uses
  %i.id = load i32, ptr %i.f, align 8, !range !24747, !alias.scope !24771, !noundef !4
  %i.ie = icmp eq i32 %i.id, 11
  br i1 %i.ie, label %"_ZN4core3ptr80drop_in_place$LT$core..option..Option$LT$procfs_core..process..MemoryMap$GT$$GT$17hcfc836b43141485eE.exit293", label %bb.ba

bb.ba:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h584a56b883fe66d7E.exit257"
  call fastcc void @"_ZN4core3ptr52drop_in_place$LT$procfs_core..process..MemoryMap$GT$17h60ddb12925a6156dE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(136) %i.f)
  br label %"_ZN4core3ptr80drop_in_place$LT$core..option..Option$LT$procfs_core..process..MemoryMap$GT$$GT$17hcfc836b43141485eE.exit293"

"_ZN100_$LT$core..iter..adapters..skip..Skip$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17he3bdd162982c56ecE.exit": ; preds = %"_ZN96_$LT$core..str..iter..SplitAsciiWhitespace$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c721889622d8f7fE.exit.i.i", %._ZN4core4iter6traits8iterator8Iterator10advance_by17h4ae5144e92d16887E.exit.thread_crit_edge.i.i, %bb.ac, %_ZN4core4iter6traits8iterator8Iterator3nth17h5b9b01a12a256cd8E.exit.i
  %.sroa.0.0.i260 = phi i32 [ 0, %._ZN4core4iter6traits8iterator8Iterator10advance_by17h4ae5144e92d16887E.exit.thread_crit_edge.i.i ], [ 0, %_ZN4core4iter6traits8iterator8Iterator3nth17h5b9b01a12a256cd8E.exit.i ], [ %.sroa.0.0.i7.i, %bb.ac ], [ %.sroa.0.0.i7.i, %"_ZN96_$LT$core..str..iter..SplitAsciiWhitespace$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c721889622d8f7fE.exit.i.i" ]
  store i32 %.sroa.0.0.i260, ptr %i.k, align 8
  br label %.thread397

bb.bb:                                            ; preds = %bb.j
  store i32 %.sroa.076.0.copyload, ptr %i.c, align 8
  %.sroa.578.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(132) %.sroa.578.0..sroa_idx79, ptr noundef nonnull align 4 dereferenceable(132) %.sroa.558.0..sroa_idx, i64 132, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !24772)
  %i.if = load i64, ptr %i.h, align 8, !range !14, !alias.scope !24772, !noalias !24773, !noundef !4
  %i.ig = icmp eq i64 %i.n, %i.if
  br i1 %i.ig, label %bb.bc, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc7b1a929e9ae18f5E.exit296"

bb.bc:                                            ; preds = %bb.bb
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h60b0c5a933a2aeedE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @741)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc7b1a929e9ae18f5E.exit296_crit_edge" unwind label %bb.bd, !noalias !24774

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc7b1a929e9ae18f5E.exit296_crit_edge": ; preds = %bb.bc
  %.pre534 = load ptr, ptr %i.i, align 8, !alias.scope !24772, !noalias !24773
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc7b1a929e9ae18f5E.exit296"

bb.bd:                                            ; preds = %bb.bc
  %i.ih = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr52drop_in_place$LT$procfs_core..process..MemoryMap$GT$17h60ddb12925a6156dE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(136) %i.c) #44, !noalias !24772
  br label %.body294

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc7b1a929e9ae18f5E.exit296": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc7b1a929e9ae18f5E.exit296_crit_edge", %bb.bb
  %i.ii = phi ptr [ %.pre534, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc7b1a929e9ae18f5E.exit296_crit_edge" ], [ %i.m, %bb.bb ]
  %i.ij = getelementptr inbounds nuw [136 x i8], ptr %i.ii, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ij, ptr noundef nonnull readonly align 8 dereferenceable(136) %i.c, i64 136, i1 false), !noalias !24772
  %i.ik = add i64 %i.n, 1
  store i64 %i.ik, ptr %i.j, align 8, !alias.scope !24772, !noalias !24773
  %.pre535 = load i32, ptr %i.f, align 8, !range !24747, !alias.scope !24775
  %i.il = icmp eq i32 %.pre535, 11
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.im, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  store i64 -9223372036854775803, ptr %0, align 8
  br i1 %i.il, label %"_ZN4core3ptr80drop_in_place$LT$core..option..Option$LT$procfs_core..process..MemoryMap$GT$$GT$17hcfc836b43141485eE.exit297", label %bb.be

bb.be:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc7b1a929e9ae18f5E.exit296"
  call fastcc void @"_ZN4core3ptr52drop_in_place$LT$procfs_core..process..MemoryMap$GT$17h60ddb12925a6156dE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(136) %i.f)
  br label %"_ZN4core3ptr80drop_in_place$LT$core..option..Option$LT$procfs_core..process..MemoryMap$GT$$GT$17hcfc836b43141485eE.exit297"

"_ZN4core3ptr80drop_in_place$LT$core..option..Option$LT$procfs_core..process..MemoryMap$GT$$GT$17hcfc836b43141485eE.exit": ; preds = %bb.b, %.body294
  call fastcc void @"_ZN4core3ptr344drop_in_place$LT$core..iter..adapters..map..Map$LT$std..io..Lines$LT$std..io..buffered..bufreader..BufReader$LT$procfs..FileWrapper$GT$$GT$$C$$LT$procfs_core..process..MemoryMaps$u20$as$u20$procfs_core..FromBufRead$GT$..from_buf_read$LT$std..io..buffered..bufreader..BufReader$LT$procfs..FileWrapper$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h094e2ec77da35b12E"(ptr noalias noundef align 8 dereferenceable(72) %i.g) #44
  call fastcc void @"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$procfs_core..process..MemoryMap$GT$$GT$17h9d6c9747146cae30E"(ptr noalias noundef align 8 dereferenceable(24) %i.h) #44
  resume { ptr, i32 } %.pn245

"_ZN4core3ptr80drop_in_place$LT$core..option..Option$LT$procfs_core..process..MemoryMap$GT$$GT$17hcfc836b43141485eE.exit297.critedge": ; preds = %bb.j
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.in, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  store i64 -9223372036854775803, ptr %0, align 8
  br label %"_ZN4core3ptr80drop_in_place$LT$core..option..Option$LT$procfs_core..process..MemoryMap$GT$$GT$17hcfc836b43141485eE.exit297"

"_ZN4core3ptr80drop_in_place$LT$core..option..Option$LT$procfs_core..process..MemoryMap$GT$$GT$17hcfc836b43141485eE.exit297": ; preds = %"_ZN4core3ptr80drop_in_place$LT$core..option..Option$LT$procfs_core..process..MemoryMap$GT$$GT$17hcfc836b43141485eE.exit297.critedge", %bb.be, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc7b1a929e9ae18f5E.exit296"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !24776)
  call void @llvm.experimental.noalias.scope.decl(metadata !24777)
  call void @llvm.experimental.noalias.scope.decl(metadata !24778)
  %i.io = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val1.i.i.i = load i64, ptr %i.io, align 8, !alias.scope !24779, !noundef !4 ; 2 uses
  %i.ip = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.ip, label %"_ZN4core3ptr65drop_in_place$LT$std..io..buffered..bufreader..buffer..Buffer$GT$17h98db146f3693f46bE.exit.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr80drop_in_place$LT$core..option..Option$LT$procfs_core..process..MemoryMap$GT$$GT$17hcfc836b43141485eE.exit297"
  %.val.i.i.i298 = load ptr, ptr %i.g, align 8, !alias.scope !24779, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i298, i64 noundef %.val1.i.i.i, i64 noundef 1) #42, !noalias !24779
  br label %"_ZN4core3ptr65drop_in_place$LT$std..io..buffered..bufreader..buffer..Buffer$GT$17h98db146f3693f46bE.exit.i.i.i"
end_hunk_0
begin_hunk_1_@"_ZN83_$LT$procfs..sys..kernel..SemaphoreLimits$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h609b23fbb530f0bfE":bb.a
  %i.n = phi i64 [ %i.l, %bb.d ], [ 0, %bb.c ], [ %i.b, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i.i" ]
  %i.o = phi ptr [ %i.m, %bb.d ], [ %i.c, %bb.c ], [ %i.c, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i.i" ]
  %i.p = phi i1 [ false, %bb.d ], [ true, %bb.c ], [ true, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i.i" ]
  %.sroa.5.1.i.ph.i.i = phi i64 [ %.sroa.02.012.i.i.i.i, %bb.d ], [ 0, %bb.c ], [ %i.b, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i.i" ] ; 7 uses
  %.not.i.i.i = icmp eq i64 %.sroa.5.1.i.ph.i.i, 0
  br i1 %.not.i.i.i, label %bb.b, label %.preheader314.i

_ZN4core4iter6traits8iterator8Iterator8try_fold17hda11a509263cfa3aE.exit.thread.i: ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @563, ptr %i.q, align 8, !alias.scope !27199, !noalias !27200
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 14, ptr %i.r, align 8, !alias.scope !27199, !noalias !27200
  br label %_ZN6procfs3sys6kernel15SemaphoreLimits8from_str17h9da5d7b81b33bd76E.exit

.preheader314.i:                                  ; preds = %.loopexit.i.i.i, %.loopexit.i.i154.i
  %.sroa.21.3.i = phi i8 [ %.sroa.21.4.i, %.loopexit.i.i154.i ], [ %.sroa.21.1.i, %.loopexit.i.i.i ]
  %.sroa.12.3.i = phi i64 [ %.sroa.12.4.i, %.loopexit.i.i154.i ], [ %.sroa.12.1.i, %.loopexit.i.i.i ] ; 2 uses
  %.sroa.0.3.i = phi ptr [ %.sroa.0.4.i, %.loopexit.i.i154.i ], [ %.sroa.0.1.i, %.loopexit.i.i.i ] ; 2 uses
  %i.s = phi i64 [ %i.af, %.loopexit.i.i154.i ], [ %.sroa.12.1.i, %.loopexit.i.i.i ] ; 5 uses
  %i.t = phi ptr [ %i.ag, %.loopexit.i.i154.i ], [ %.sroa.0.1.i, %.loopexit.i.i.i ] ; 10 uses
  %i.u = phi i8 [ %i.ah, %.loopexit.i.i154.i ], [ %.sroa.21.1.i, %.loopexit.i.i.i ]
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hda11a509263cfa3aE.exit155.thread.i, label %bb.e

bb.e:                                             ; preds = %.preheader314.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  %i.x = icmp samesign eq i64 %i.s, 0
  br i1 %i.x, label %.loopexit.i.i154.i, label %.lr.ph.i.i.i146.i

.lr.ph.i.i.i146.i:                                ; preds = %bb.e, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i153.i"
  %.sroa.02.012.i.i.i147.i = phi i64 [ %i.aa, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i153.i" ], [ 0, %bb.e ] ; 3 uses
  %i.y = phi ptr [ %i.z, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i153.i" ], [ %i.t, %bb.e ] ; 2 uses
  %.val.i.i.i148.i = load i8, ptr %i.y, align 1, !alias.scope !27200, !noalias !27202, !noundef !4
  switch i8 %.val.i.i.i148.i, label %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i153.i" [
    i8 9, label %bb.f
    i8 10, label %bb.f
    i8 12, label %bb.f
    i8 13, label %bb.f
    i8 32, label %bb.f
  ]

"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i153.i": ; preds = %.lr.ph.i.i.i146.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  %i.aa = add nuw i64 %.sroa.02.012.i.i.i147.i, 1
  %i.ab = icmp eq ptr %i.z, %i.w
  br i1 %i.ab, label %.loopexit.i.i154.i, label %.lr.ph.i.i.i146.i

bb.f:                                             ; preds = %.lr.ph.i.i.i146.i, %.lr.ph.i.i.i146.i, %.lr.ph.i.i.i146.i, %.lr.ph.i.i.i146.i, %.lr.ph.i.i.i146.i
  %i.ac = add nuw i64 %.sroa.02.012.i.i.i147.i, 1 ; 2 uses
  %i.ad = sub nuw i64 %i.s, %i.ac                 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ac ; 2 uses
  br label %.loopexit.i.i154.i

.loopexit.i.i154.i:                               ; preds = %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i153.i", %bb.f, %bb.e
  %.sroa.21.4.i = phi i8 [ %.sroa.21.3.i, %bb.f ], [ 1, %bb.e ], [ 1, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i153.i" ] ; 3 uses
  %.sroa.12.4.i = phi i64 [ %i.ad, %bb.f ], [ %.sroa.12.3.i, %bb.e ], [ %.sroa.12.3.i, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i153.i" ] ; 3 uses
  %.sroa.0.4.i = phi ptr [ %i.ae, %bb.f ], [ %.sroa.0.3.i, %bb.e ], [ %.sroa.0.3.i, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i153.i" ] ; 3 uses
  %i.af = phi i64 [ %i.ad, %bb.f ], [ 0, %bb.e ], [ %i.s, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i153.i" ]
  %i.ag = phi ptr [ %i.ae, %bb.f ], [ %i.t, %bb.e ], [ %i.t, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i153.i" ]
  %i.ah = phi i8 [ 0, %bb.f ], [ 1, %bb.e ], [ 1, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i153.i" ]
  %.sroa.5.1.i.ph.i149.i = phi i64 [ %.sroa.02.012.i.i.i147.i, %bb.f ], [ 0, %bb.e ], [ %i.s, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i153.i" ] ; 7 uses
  %.not.i.i150.i = icmp eq i64 %.sroa.5.1.i.ph.i149.i, 0
  br i1 %.not.i.i150.i, label %.preheader314.i, label %.preheader313.i

_ZN4core4iter6traits8iterator8Iterator8try_fold17hda11a509263cfa3aE.exit155.thread.i: ; preds = %.preheader314.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @564, ptr %i.ai, align 8, !alias.scope !27199, !noalias !27200
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 14, ptr %i.aj, align 8, !alias.scope !27199, !noalias !27200
  br label %_ZN6procfs3sys6kernel15SemaphoreLimits8from_str17h9da5d7b81b33bd76E.exit

.preheader313.i:                                  ; preds = %.loopexit.i.i154.i, %.loopexit.i.i167.i
  %.sroa.21.6.i = phi i8 [ %.sroa.21.7.i, %.loopexit.i.i167.i ], [ %.sroa.21.4.i, %.loopexit.i.i154.i ]
  %.sroa.12.6.i = phi i64 [ %.sroa.12.7.i, %.loopexit.i.i167.i ], [ %.sroa.12.4.i, %.loopexit.i.i154.i ] ; 2 uses
  %.sroa.0.6.i = phi ptr [ %.sroa.0.7.i, %.loopexit.i.i167.i ], [ %.sroa.0.4.i, %.loopexit.i.i154.i ] ; 2 uses
  %i.ak = phi i64 [ %i.ax, %.loopexit.i.i167.i ], [ %.sroa.12.4.i, %.loopexit.i.i154.i ] ; 5 uses
  %i.al = phi ptr [ %i.ay, %.loopexit.i.i167.i ], [ %.sroa.0.4.i, %.loopexit.i.i154.i ] ; 10 uses
  %i.am = phi i8 [ %i.az, %.loopexit.i.i167.i ], [ %.sroa.21.4.i, %.loopexit.i.i154.i ]
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hda11a509263cfa3aE.exit168.thread.i, label %bb.g

bb.g:                                             ; preds = %.preheader313.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak
  %i.ap = icmp samesign eq i64 %i.ak, 0
  br i1 %i.ap, label %.loopexit.i.i167.i, label %.lr.ph.i.i.i159.i

.lr.ph.i.i.i159.i:                                ; preds = %bb.g, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i166.i"
  %.sroa.02.012.i.i.i160.i = phi i64 [ %i.as, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i166.i" ], [ 0, %bb.g ] ; 3 uses
  %i.aq = phi ptr [ %i.ar, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i166.i" ], [ %i.al, %bb.g ] ; 2 uses
  %.val.i.i.i161.i = load i8, ptr %i.aq, align 1, !alias.scope !27200, !noalias !27203, !noundef !4
  switch i8 %.val.i.i.i161.i, label %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i166.i" [
    i8 9, label %bb.h
    i8 10, label %bb.h
    i8 12, label %bb.h
    i8 13, label %bb.h
    i8 32, label %bb.h
  ]

"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i166.i": ; preds = %.lr.ph.i.i.i159.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 2 uses
  %i.as = add nuw i64 %.sroa.02.012.i.i.i160.i, 1
  %i.at = icmp eq ptr %i.ar, %i.ao
  br i1 %i.at, label %.loopexit.i.i167.i, label %.lr.ph.i.i.i159.i

bb.h:                                             ; preds = %.lr.ph.i.i.i159.i, %.lr.ph.i.i.i159.i, %.lr.ph.i.i.i159.i, %.lr.ph.i.i.i159.i, %.lr.ph.i.i.i159.i
  %i.au = add nuw i64 %.sroa.02.012.i.i.i160.i, 1 ; 2 uses
  %i.av = sub nuw i64 %i.ak, %i.au                ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.au ; 2 uses
  br label %.loopexit.i.i167.i

.loopexit.i.i167.i:                               ; preds = %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i166.i", %bb.h, %bb.g
  %.sroa.21.7.i = phi i8 [ %.sroa.21.6.i, %bb.h ], [ 1, %bb.g ], [ 1, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i166.i" ] ; 2 uses
  %.sroa.12.7.i = phi i64 [ %i.av, %bb.h ], [ %.sroa.12.6.i, %bb.g ], [ %.sroa.12.6.i, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i166.i" ] ; 2 uses
  %.sroa.0.7.i = phi ptr [ %i.aw, %bb.h ], [ %.sroa.0.6.i, %bb.g ], [ %.sroa.0.6.i, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i166.i" ] ; 2 uses
  %i.ax = phi i64 [ %i.av, %bb.h ], [ 0, %bb.g ], [ %i.ak, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i166.i" ]
  %i.ay = phi ptr [ %i.aw, %bb.h ], [ %i.al, %bb.g ], [ %i.al, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i166.i" ]
  %i.az = phi i8 [ 0, %bb.h ], [ 1, %bb.g ], [ 1, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i166.i" ]
  %.sroa.5.1.i.ph.i162.i = phi i64 [ %.sroa.02.012.i.i.i160.i, %bb.h ], [ 0, %bb.g ], [ %i.ak, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i166.i" ] ; 7 uses
  %.not.i.i163.i = icmp eq i64 %.sroa.5.1.i.ph.i162.i, 0
  br i1 %.not.i.i163.i, label %.preheader313.i, label %.preheader.i

_ZN4core4iter6traits8iterator8Iterator8try_fold17hda11a509263cfa3aE.exit168.thread.i: ; preds = %.preheader313.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @565, ptr %i.ba, align 8, !alias.scope !27199, !noalias !27200
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 14, ptr %i.bb, align 8, !alias.scope !27199, !noalias !27200
  br label %_ZN6procfs3sys6kernel15SemaphoreLimits8from_str17h9da5d7b81b33bd76E.exit

.preheader.i:                                     ; preds = %.loopexit.i.i167.i, %.loopexit.i.i180.i
  %i.bc = phi i64 [ %i.bp, %.loopexit.i.i180.i ], [ %.sroa.12.7.i, %.loopexit.i.i167.i ] ; 5 uses
  %i.bd = phi ptr [ %i.bq, %.loopexit.i.i180.i ], [ %.sroa.0.7.i, %.loopexit.i.i167.i ] ; 6 uses
  %i.be = phi i8 [ %i.br, %.loopexit.i.i180.i ], [ %.sroa.21.7.i, %.loopexit.i.i167.i ]
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hda11a509263cfa3aE.exit181.thread.i, label %bb.i

bb.i:                                             ; preds = %.preheader.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bc
  %i.bh = icmp samesign eq i64 %i.bc, 0
  br i1 %i.bh, label %.loopexit.i.i180.i, label %.lr.ph.i.i.i172.i

.lr.ph.i.i.i172.i:                                ; preds = %bb.i, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i179.i"
  %.sroa.02.012.i.i.i173.i = phi i64 [ %i.bk, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i179.i" ], [ 0, %bb.i ] ; 3 uses
  %i.bi = phi ptr [ %i.bj, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i179.i" ], [ %i.bd, %bb.i ] ; 2 uses
  %.val.i.i.i174.i = load i8, ptr %i.bi, align 1, !alias.scope !27200, !noalias !27204, !noundef !4
  switch i8 %.val.i.i.i174.i, label %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i179.i" [
    i8 9, label %bb.j
    i8 10, label %bb.j
    i8 12, label %bb.j
    i8 13, label %bb.j
    i8 32, label %bb.j
  ]

"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i179.i": ; preds = %.lr.ph.i.i.i172.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 2 uses
  %i.bk = add nuw i64 %.sroa.02.012.i.i.i173.i, 1
  %i.bl = icmp eq ptr %i.bj, %i.bg
  br i1 %i.bl, label %.loopexit.i.i180.i, label %.lr.ph.i.i.i172.i

bb.j:                                             ; preds = %.lr.ph.i.i.i172.i, %.lr.ph.i.i.i172.i, %.lr.ph.i.i.i172.i, %.lr.ph.i.i.i172.i, %.lr.ph.i.i.i172.i
  %i.bm = add nuw i64 %.sroa.02.012.i.i.i173.i, 1 ; 2 uses
  %i.bn = sub nuw i64 %i.bc, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bm
  br label %.loopexit.i.i180.i

.loopexit.i.i180.i:                               ; preds = %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i179.i", %bb.j, %bb.i
  %i.bp = phi i64 [ %i.bn, %bb.j ], [ 0, %bb.i ], [ %i.bc, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i179.i" ]
  %i.bq = phi ptr [ %i.bo, %bb.j ], [ %i.bd, %bb.i ], [ %i.bd, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i179.i" ]
  %i.br = phi i8 [ 0, %bb.j ], [ 1, %bb.i ], [ 1, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i179.i" ]
  %.sroa.5.1.i.ph.i175.i = phi i64 [ %.sroa.02.012.i.i.i173.i, %bb.j ], [ 0, %bb.i ], [ %i.bc, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h5de15fd7017a8b49E.exit.i.i.i179.i" ] ; 2 uses
  %.not.i.i176.i = icmp eq i64 %.sroa.5.1.i.ph.i175.i, 0
  br i1 %.not.i.i176.i, label %.preheader.i, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17hda11a509263cfa3aE.exit181.i

_ZN4core4iter6traits8iterator8Iterator8try_fold17hda11a509263cfa3aE.exit181.thread.i: ; preds = %.preheader.i
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @566, ptr %i.bs, align 8, !alias.scope !27199, !noalias !27200
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 14, ptr %i.bt, align 8, !alias.scope !27199, !noalias !27200
  br label %_ZN6procfs3sys6kernel15SemaphoreLimits8from_str17h9da5d7b81b33bd76E.exit

_ZN4core4iter6traits8iterator8Iterator8try_fold17hda11a509263cfa3aE.exit181.i: ; preds = %.loopexit.i.i180.i
  %cond.i = icmp eq i64 %.sroa.5.1.i.ph.i.i, 1
  %i.bu = load i8, ptr %i.c, align 1, !alias.scope !27205, !noalias !27206 ; 2 uses
  br i1 %cond.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator8try_fold17hda11a509263cfa3aE.exit181.i
  switch i8 %i.bu, label %.lr.ph.split.us.i.i.preheader [
    i8 43, label %.loopexit.i
    i8 45, label %.loopexit.i
  ]

bb.l:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator8try_fold17hda11a509263cfa3aE.exit181.i
  %cond.i.i = icmp eq i8 %i.bu, 43
  br i1 %cond.i.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.bw = add i64 %.sroa.5.1.i.ph.i.i, -1         ; 2 uses
  %i.bx = icmp ult i64 %.sroa.5.1.i.ph.i.i, 18
  br i1 %i.bx, label %.lr.ph.split.us.i.i.preheader, label %.preheader55.i.i

.preheader55.i.i:                                 ; preds = %bb.o, %bb.m
  %.sroa.16.0.ph.i.i = phi i64 [ %.sroa.5.1.i.ph.i.i, %bb.o ], [ %i.bw, %bb.m ] ; 2 uses
  %.sroa.01.0.ph.i.i = phi ptr [ %i.c, %bb.o ], [ %i.bv, %bb.m ]
  %.not.us.i.i112 = icmp eq i64 %.sroa.16.0.ph.i.i, 0
  br i1 %.not.us.i.i112, label %.loopexit310.i, label %.lr.ph

.preheader55.split.us.i.i:                        ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.01.0.us.i.i115, i64 1
  %i.bz = add i64 %.sroa.16.0.us.i.i114, -1       ; 2 uses
  %.not.us.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not.us.i.i, label %.loopexit310.i, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader55.i.i, %.preheader55.split.us.i.i
  %.sroa.01.0.us.i.i115 = phi ptr [ %i.by, %.preheader55.split.us.i.i ], [ %.sroa.01.0.ph.i.i, %.preheader55.i.i ] ; 2 uses
  %.sroa.16.0.us.i.i114 = phi i64 [ %i.bz, %.preheader55.split.us.i.i ], [ %.sroa.16.0.ph.i.i, %.preheader55.i.i ]
  %.sroa.017.0.us.i.i113 = phi i64 [ %i.ci, %.preheader55.split.us.i.i ], [ 0, %.preheader55.i.i ]
  %i.ca = load i8, ptr %.sroa.01.0.us.i.i115, align 1, !alias.scope !27205, !noalias !27206, !noundef !4
  %i.cb = zext i8 %i.ca to i32
  %i.cc = add nsw i32 %i.cb, -48                  ; 2 uses
  %i.cd = icmp ult i32 %i.cc, 10
  br i1 %i.cd, label %bb.n, label %.loopexit.i

bb.n:                                             ; preds = %.lr.ph
  %i.ce = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.017.0.us.i.i113, i64 10) ; 2 uses
  %i.cf = extractvalue { i64, i1 } %i.ce, 0       ; 2 uses
  %i.cg = extractvalue { i64, i1 } %i.ce, 1
  %i.ch = zext nneg i32 %i.cc to i64
  %i.ci = add i64 %i.cf, %i.ch                    ; 3 uses
  %.not50.us.i.i = icmp ult i64 %i.ci, %i.cf
  %or.cond.i = select i1 %i.cg, i1 true, i1 %.not50.us.i.i
  br i1 %or.cond.i, label %.loopexit.i, label %.preheader55.split.us.i.i

bb.o:                                             ; preds = %bb.l
  %i.cj = icmp ult i64 %.sroa.5.1.i.ph.i.i, 17
  br i1 %i.cj, label %.lr.ph.split.us.i.i.preheader, label %.preheader55.i.i

.lr.ph.split.us.i.i.preheader:                    ; preds = %bb.o, %bb.m, %bb.k
  %.sroa.01.168.us.i.i.ph = phi ptr [ %i.bv, %bb.m ], [ %i.c, %bb.o ], [ %i.c, %bb.k ]
  %.sroa.16.167.us.i.i.ph = phi i64 [ %i.bw, %bb.m ], [ %.sroa.5.1.i.ph.i.i, %bb.o ], [ 1, %bb.k ]
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i.preheader, %bb.p
  %.sroa.01.168.us.i.i = phi ptr [ %i.cq, %bb.p ], [ %.sroa.01.168.us.i.i.ph, %.lr.ph.split.us.i.i.preheader ] ; 2 uses
  %.sroa.16.167.us.i.i = phi i64 [ %i.cp, %bb.p ], [ %.sroa.16.167.us.i.i.ph, %.lr.ph.split.us.i.i.preheader ]
  %.sroa.017.166.us.i.i = phi i64 [ %i.cs, %bb.p ], [ 0, %.lr.ph.split.us.i.i.preheader ]
  %i.ck = load i8, ptr %.sroa.01.168.us.i.i, align 1, !alias.scope !27205, !noalias !27206, !noundef !4
  %i.cl = zext i8 %i.ck to i32
  %i.cm = add nsw i32 %i.cl, -48                  ; 2 uses
  %i.cn = icmp ult i32 %i.cm, 10
  br i1 %i.cn, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %.lr.ph.split.us.i.i
  %i.co = mul i64 %.sroa.017.166.us.i.i, 10
  %i.cp = add nsw i64 %.sroa.16.167.us.i.i, -1    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.01.168.us.i.i, i64 1
  %i.cr = zext nneg i32 %i.cm to i64
  %i.cs = add i64 %i.co, %i.cr                    ; 2 uses
  %.not51.us.i.i = icmp eq i64 %i.cp, 0
  br i1 %.not51.us.i.i, label %.loopexit310.i, label %.lr.ph.split.us.i.i

.loopexit.i:                                      ; preds = %bb.n, %.lr.ph, %.lr.ph.split.us.i.i, %bb.k, %bb.k
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @567, ptr %i.ct, align 8, !alias.scope !27199, !noalias !27200
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 22, ptr %i.cu, align 8, !alias.scope !27199, !noalias !27200
  br label %_ZN6procfs3sys6kernel15SemaphoreLimits8from_str17h9da5d7b81b33bd76E.exit

.loopexit310.i:                                   ; preds = %.preheader55.split.us.i.i, %bb.p, %.preheader55.i.i
  %.sroa.10247.0.i = phi i64 [ %i.cs, %bb.p ], [ 0, %.preheader55.i.i ], [ %i.ci, %.preheader55.split.us.i.i ]
  %cond407.i = icmp eq i64 %.sroa.5.1.i.ph.i149.i, 1
  %i.cv = load i8, ptr %i.t, align 1, !alias.scope !27207, !noalias !27208 ; 2 uses
  br i1 %cond407.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.loopexit310.i
  switch i8 %i.cv, label %.lr.ph.split.us.i186.i.preheader [
    i8 43, label %.loopexit385.i
    i8 45, label %.loopexit385.i
  ]

bb.r:                                             ; preds = %.loopexit310.i
  %cond.i195.i = icmp eq i8 %i.cv, 43
  br i1 %cond.i195.i, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.cw = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 2 uses
  %i.cx = add i64 %.sroa.5.1.i.ph.i149.i, -1      ; 2 uses
  %i.cy = icmp ult i64 %.sroa.5.1.i.ph.i149.i, 18
  br i1 %i.cy, label %.lr.ph.split.us.i186.i.preheader, label %.preheader55.i196.i

.preheader55.i196.i:                              ; preds = %bb.u, %bb.s
  %.sroa.16.0.ph.i197.i = phi i64 [ %.sroa.5.1.i.ph.i149.i, %bb.u ], [ %i.cx, %bb.s ] ; 2 uses
  %.sroa.01.0.ph.i198.i = phi ptr [ %i.t, %bb.u ], [ %i.cw, %bb.s ]
  %.not.us.i203.not.i116 = icmp eq i64 %.sroa.16.0.ph.i197.i, 0
  br i1 %.not.us.i203.not.i116, label %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit210.i", label %.lr.ph120

.preheader55.split.us.i199.i:                     ; preds = %bb.t
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.01.0.us.i202.i119, i64 1
  %i.da = add i64 %.sroa.16.0.us.i201.i118, -1    ; 2 uses
  %.not.us.i203.not.i = icmp eq i64 %i.da, 0
  br i1 %.not.us.i203.not.i, label %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit210.i", label %.lr.ph120

.lr.ph120:                                        ; preds = %.preheader55.i196.i, %.preheader55.split.us.i199.i
  %.sroa.01.0.us.i202.i119 = phi ptr [ %i.cz, %.preheader55.split.us.i199.i ], [ %.sroa.01.0.ph.i198.i, %.preheader55.i196.i ] ; 2 uses
  %.sroa.16.0.us.i201.i118 = phi i64 [ %i.da, %.preheader55.split.us.i199.i ], [ %.sroa.16.0.ph.i197.i, %.preheader55.i196.i ]
  %.sroa.017.0.us.i200.i117 = phi i64 [ %i.dj, %.preheader55.split.us.i199.i ], [ 0, %.preheader55.i196.i ]
  %i.db = load i8, ptr %.sroa.01.0.us.i202.i119, align 1, !alias.scope !27207, !noalias !27208, !noundef !4
  %i.dc = zext i8 %i.db to i32
  %i.dd = add nsw i32 %i.dc, -48                  ; 2 uses
  %i.de = icmp ult i32 %i.dd, 10
  br i1 %i.de, label %bb.t, label %.loopexit385.i

bb.t:                                             ; preds = %.lr.ph120
  %i.df = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.017.0.us.i200.i117, i64 10) ; 2 uses
  %i.dg = extractvalue { i64, i1 } %i.df, 0       ; 2 uses
  %i.dh = extractvalue { i64, i1 } %i.df, 1
  %i.di = zext nneg i32 %i.dd to i64
  %i.dj = add i64 %i.dg, %i.di                    ; 3 uses
  %.not50.us.i205.i = icmp ult i64 %i.dj, %i.dg
  %or.cond301.i = select i1 %i.dh, i1 true, i1 %.not50.us.i205.i
  br i1 %or.cond301.i, label %.loopexit385.i, label %.preheader55.split.us.i199.i

bb.u:                                             ; preds = %bb.r
  %i.dk = icmp ult i64 %.sroa.5.1.i.ph.i149.i, 17
  br i1 %i.dk, label %.lr.ph.split.us.i186.i.preheader, label %.preheader55.i196.i

.lr.ph.split.us.i186.i.preheader:                 ; preds = %bb.u, %bb.s, %bb.q
  %.sroa.01.168.us.i187.i.ph = phi ptr [ %i.cw, %bb.s ], [ %i.t, %bb.u ], [ %i.t, %bb.q ]
  %.sroa.16.167.us.i188.i.ph = phi i64 [ %i.cx, %bb.s ], [ %.sroa.5.1.i.ph.i149.i, %bb.u ], [ 1, %bb.q ]
  br label %.lr.ph.split.us.i186.i

.lr.ph.split.us.i186.i:                           ; preds = %.lr.ph.split.us.i186.i.preheader, %bb.v
  %.sroa.01.168.us.i187.i = phi ptr [ %i.dr, %bb.v ], [ %.sroa.01.168.us.i187.i.ph, %.lr.ph.split.us.i186.i.preheader ] ; 2 uses
  %.sroa.16.167.us.i188.i = phi i64 [ %i.dq, %bb.v ], [ %.sroa.16.167.us.i188.i.ph, %.lr.ph.split.us.i186.i.preheader ]
  %.sroa.017.166.us.i189.i = phi i64 [ %i.dt, %bb.v ], [ 0, %.lr.ph.split.us.i186.i.preheader ]
  %i.dl = load i8, ptr %.sroa.01.168.us.i187.i, align 1, !alias.scope !27207, !noalias !27208, !noundef !4
  %i.dm = zext i8 %i.dl to i32
  %i.dn = add nsw i32 %i.dm, -48                  ; 2 uses
  %i.do = icmp ugt i32 %i.dn, 9
  br i1 %i.do, label %.loopexit385.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.split.us.i186.i
  %i.dp = mul i64 %.sroa.017.166.us.i189.i, 10
  %i.dq = add nsw i64 %.sroa.16.167.us.i188.i, -1 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.01.168.us.i187.i, i64 1
  %i.ds = zext nneg i32 %i.dn to i64
  %i.dt = add i64 %i.dp, %i.ds                    ; 2 uses
  %.not51.us.i191.i = icmp eq i64 %i.dq, 0
  br i1 %.not51.us.i191.i, label %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit210.i", label %.lr.ph.split.us.i186.i

.loopexit385.i:                                   ; preds = %bb.t, %.lr.ph120, %.lr.ph.split.us.i186.i, %bb.q, %bb.q
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @568, ptr %i.du, align 8, !alias.scope !27199, !noalias !27200
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 22, ptr %i.dv, align 8, !alias.scope !27199, !noalias !27200
  br label %_ZN6procfs3sys6kernel15SemaphoreLimits8from_str17h9da5d7b81b33bd76E.exit

"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit210.i": ; preds = %.preheader55.split.us.i199.i, %bb.v, %.preheader55.i196.i
  %3 = phi i64 [ %i.dt, %bb.v ], [ 0, %.preheader55.i196.i ], [ %i.dj, %.preheader55.split.us.i199.i ]
  %cond408.i = icmp eq i64 %.sroa.5.1.i.ph.i162.i, 1
  %i.dw = load i8, ptr %i.al, align 1, !alias.scope !27209, !noalias !27210 ; 2 uses
  br i1 %cond408.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit210.i"
  switch i8 %i.dw, label %.lr.ph.split.us.i215.i.preheader [
    i8 43, label %.loopexit382.i
    i8 45, label %.loopexit382.i
  ]

bb.x:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit210.i"
  %cond.i224.i = icmp eq i8 %i.dw, 43
  br i1 %cond.i224.i, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.dx = getelementptr inbounds nuw i8, ptr %i.al, i64 1 ; 2 uses
  %i.dy = add i64 %.sroa.5.1.i.ph.i162.i, -1      ; 2 uses
  %i.dz = icmp ult i64 %.sroa.5.1.i.ph.i162.i, 18
  br i1 %i.dz, label %.lr.ph.split.us.i215.i.preheader, label %.preheader55.i225.i

.preheader55.i225.i:                              ; preds = %bb.aa, %bb.y
  %.sroa.16.0.ph.i226.i = phi i64 [ %.sroa.5.1.i.ph.i162.i, %bb.aa ], [ %i.dy, %bb.y ] ; 2 uses
  %.sroa.01.0.ph.i227.i = phi ptr [ %i.al, %bb.aa ], [ %i.dx, %bb.y ]
  %.not.us.i232.not.i122 = icmp eq i64 %.sroa.16.0.ph.i226.i, 0
  br i1 %.not.us.i232.not.i122, label %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit239.i", label %.lr.ph126

.preheader55.split.us.i228.i:                     ; preds = %bb.z
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.01.0.us.i231.i125, i64 1
  %i.eb = add i64 %.sroa.16.0.us.i230.i124, -1    ; 2 uses
  %.not.us.i232.not.i = icmp eq i64 %i.eb, 0
  br i1 %.not.us.i232.not.i, label %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit239.i", label %.lr.ph126

.lr.ph126:                                        ; preds = %.preheader55.i225.i, %.preheader55.split.us.i228.i
  %.sroa.01.0.us.i231.i125 = phi ptr [ %i.ea, %.preheader55.split.us.i228.i ], [ %.sroa.01.0.ph.i227.i, %.preheader55.i225.i ] ; 2 uses
  %.sroa.16.0.us.i230.i124 = phi i64 [ %i.eb, %.preheader55.split.us.i228.i ], [ %.sroa.16.0.ph.i226.i, %.preheader55.i225.i ]
  %.sroa.017.0.us.i229.i123 = phi i64 [ %i.ek, %.preheader55.split.us.i228.i ], [ 0, %.preheader55.i225.i ]
  %i.ec = load i8, ptr %.sroa.01.0.us.i231.i125, align 1, !alias.scope !27209, !noalias !27210, !noundef !4
  %i.ed = zext i8 %i.ec to i32
  %i.ee = add nsw i32 %i.ed, -48                  ; 2 uses
  %i.ef = icmp ult i32 %i.ee, 10
  br i1 %i.ef, label %bb.z, label %.loopexit382.i

bb.z:                                             ; preds = %.lr.ph126
  %i.eg = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.017.0.us.i229.i123, i64 10) ; 2 uses
  %i.eh = extractvalue { i64, i1 } %i.eg, 0       ; 2 uses
  %i.ei = extractvalue { i64, i1 } %i.eg, 1
  %i.ej = zext nneg i32 %i.ee to i64
  %i.ek = add i64 %i.eh, %i.ej                    ; 3 uses
  %.not50.us.i234.i = icmp ult i64 %i.ek, %i.eh
  %or.cond303.i = select i1 %i.ei, i1 true, i1 %.not50.us.i234.i
  br i1 %or.cond303.i, label %.loopexit382.i, label %.preheader55.split.us.i228.i

bb.aa:                                            ; preds = %bb.x
  %i.el = icmp ult i64 %.sroa.5.1.i.ph.i162.i, 17
  br i1 %i.el, label %.lr.ph.split.us.i215.i.preheader, label %.preheader55.i225.i

.lr.ph.split.us.i215.i.preheader:                 ; preds = %bb.aa, %bb.y, %bb.w
  %.sroa.01.168.us.i216.i.ph = phi ptr [ %i.dx, %bb.y ], [ %i.al, %bb.aa ], [ %i.al, %bb.w ]
  %.sroa.16.167.us.i217.i.ph = phi i64 [ %i.dy, %bb.y ], [ %.sroa.5.1.i.ph.i162.i, %bb.aa ], [ 1, %bb.w ]
  br label %.lr.ph.split.us.i215.i

.lr.ph.split.us.i215.i:                           ; preds = %.lr.ph.split.us.i215.i.preheader, %bb.ab
  %.sroa.01.168.us.i216.i = phi ptr [ %i.es, %bb.ab ], [ %.sroa.01.168.us.i216.i.ph, %.lr.ph.split.us.i215.i.preheader ] ; 2 uses
  %.sroa.16.167.us.i217.i = phi i64 [ %i.er, %bb.ab ], [ %.sroa.16.167.us.i217.i.ph, %.lr.ph.split.us.i215.i.preheader ]
  %.sroa.017.166.us.i218.i = phi i64 [ %i.eu, %bb.ab ], [ 0, %.lr.ph.split.us.i215.i.preheader ]
  %i.em = load i8, ptr %.sroa.01.168.us.i216.i, align 1, !alias.scope !27209, !noalias !27210, !noundef !4
  %i.en = zext i8 %i.em to i32
  %i.eo = add nsw i32 %i.en, -48                  ; 2 uses
  %i.ep = icmp ugt i32 %i.eo, 9
  br i1 %i.ep, label %.loopexit382.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.split.us.i215.i
  %i.eq = mul i64 %.sroa.017.166.us.i218.i, 10
  %i.er = add nsw i64 %.sroa.16.167.us.i217.i, -1 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.01.168.us.i216.i, i64 1
  %i.et = zext nneg i32 %i.eo to i64
  %i.eu = add i64 %i.eq, %i.et                    ; 2 uses
  %.not51.us.i220.i = icmp eq i64 %i.er, 0
  br i1 %.not51.us.i220.i, label %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit239.i", label %.lr.ph.split.us.i215.i

.loopexit382.i:                                   ; preds = %bb.z, %.lr.ph126, %.lr.ph.split.us.i215.i, %bb.w, %bb.w
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @569, ptr %i.ev, align 8, !alias.scope !27199, !noalias !27200
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 22, ptr %i.ew, align 8, !alias.scope !27199, !noalias !27200
  br label %_ZN6procfs3sys6kernel15SemaphoreLimits8from_str17h9da5d7b81b33bd76E.exit

"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit239.i": ; preds = %.preheader55.split.us.i228.i, %bb.ab, %.preheader55.i225.i
  %4 = phi i64 [ %i.eu, %bb.ab ], [ 0, %.preheader55.i225.i ], [ %i.ek, %.preheader55.split.us.i228.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !27211
  call fastcc void @"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bd, i64 noundef %.sroa.5.1.i.ph.i175.i, i32 noundef 10), !noalias !27199
  %i.ex = load i8, ptr %i.a, align 8, !range !3, !noalias !27211, !noundef !4
  %i.ey = trunc nuw i8 %i.ex to i1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.fa = load i64, ptr %i.ez, align 8, !noalias !27211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27211
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.ey, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit239.i"
  store ptr @570, ptr %i.fb, align 8, !alias.scope !27199, !noalias !27200
  store i64 22, ptr %i.fc, align 8, !alias.scope !27199, !noalias !27200
  br label %_ZN6procfs3sys6kernel15SemaphoreLimits8from_str17h9da5d7b81b33bd76E.exit

bb.ad:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit239.i"
  store i64 %.sroa.10247.0.i, ptr %i.fb, align 8, !alias.scope !27199, !noalias !27200
  store i64 %3, ptr %i.fc, align 8, !alias.scope !27199, !noalias !27200
  %.sroa.583.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %4, ptr %.sroa.583.0..sroa_idx.i, align 8, !alias.scope !27199, !noalias !27200
  %.sroa.684.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.fa, ptr %.sroa.684.0..sroa_idx.i, align 8, !alias.scope !27199, !noalias !27200
  br label %_ZN6procfs3sys6kernel15SemaphoreLimits8from_str17h9da5d7b81b33bd76E.exit

_ZN6procfs3sys6kernel15SemaphoreLimits8from_str17h9da5d7b81b33bd76E.exit: ; preds = %_ZN4core4iter6traits8iterator8Iterator8try_fold17hda11a509263cfa3aE.exit.thread.i, %_ZN4core4iter6traits8iterator8Iterator8try_fold17hda11a509263cfa3aE.exit155.thread.i, %_ZN4core4iter6traits8iterator8Iterator8try_fold17hda11a509263cfa3aE.exit168.thread.i, %_ZN4core4iter6traits8iterator8Iterator8try_fold17hda11a509263cfa3aE.exit181.thread.i, %.loopexit.i, %.loopexit385.i, %.loopexit382.i, %bb.ac, %bb.ad
  %.sink.i = phi i64 [ 1, %_ZN4core4iter6traits8iterator8Iterator8try_fold17hda11a509263cfa3aE.exit.thread.i ], [ 1, %_ZN4core4iter6traits8iterator8Iterator8try_fold17hda11a509263cfa3aE.exit155.thread.i ], [ 1, %_ZN4core4iter6traits8iterator8Iterator8try_fold17hda11a509263cfa3aE.exit168.thread.i ], [ 1, %_ZN4core4iter6traits8iterator8Iterator8try_fold17hda11a509263cfa3aE.exit181.thread.i ], [ 1, %.loopexit385.i ], [ 1, %bb.ac ], [ 1, %.loopexit382.i ], [ 1, %.loopexit.i ], [ 0, %bb.ad ]
  store i64 %.sink.i, ptr %0, align 8, !alias.scope !27199, !noalias !27200
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN84_$LT$procfs_core..process..mount..MountStats$u20$as$u20$procfs_core..FromBufRead$GT$13from_buf_read17h45c103b423f35a96E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 10 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.0911.i.sroa.11 = alloca [32 x i8], align 8 ; 3 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %i.k = alloca [72 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 9 uses
  %i.n = alloca [72 x i8], align 8                ; 15 uses
  %i.o = alloca [24 x i8], align 8                ; 10 uses
  %i.p = alloca [72 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 9 uses
  %i.s = alloca [72 x i8], align 8                ; 15 uses
  %i.t = alloca [48 x i8], align 8                ; 8 uses
  %i.u = alloca [48 x i8], align 8                ; 8 uses
  %i.v = alloca [24 x i8], align 8                ; 10 uses
  %i.w = alloca [72 x i8], align 8                ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = alloca [24 x i8], align 8                ; 9 uses
  %i.z = alloca [72 x i8], align 8                ; 15 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.124.i.sroa.10 = alloca [16 x i8], align 8 ; 5 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.128.i.sroa.10 = alloca [168 x i8], align 8 ; 5 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [24 x i8], align 8               ; 6 uses
  %i.ag = alloca [24 x i8], align 8               ; 9 uses
  %i.ah = alloca [24 x i8], align 8               ; 11 uses
  %i.ai = alloca [16 x i8], align 8               ; 5 uses
  %i.aj = alloca [24 x i8], align 8               ; 6 uses
  %i.ak = alloca [24 x i8], align 8               ; 8 uses
  %i.al = alloca [24 x i8], align 8               ; 12 uses
  %i.am = alloca [16 x i8], align 8               ; 5 uses
  %i.an = alloca [24 x i8], align 8               ; 6 uses
  %i.ao = alloca [16 x i8], align 8               ; 5 uses
  %i.ap = alloca [24 x i8], align 8               ; 6 uses
  %i.aq = alloca [24 x i8], align 8               ; 16 uses
  %.sroa.1591.i = alloca [52 x i8], align 4       ; 10 uses
  %i.ar = alloca [16 x i8], align 8               ; 5 uses
  %i.as = alloca [24 x i8], align 8               ; 6 uses
  %i.at = alloca [88 x i8], align 8               ; 15 uses
  %i.au = alloca [224 x i8], align 8              ; 13 uses
  %i.av = alloca [72 x i8], align 8               ; 13 uses
  %i.aw = alloca [32 x i8], align 8               ; 7 uses
  %i.ax = alloca [16 x i8], align 8               ; 5 uses
  %i.ay = alloca [24 x i8], align 8               ; 4 uses
  %i.az = alloca [24 x i8], align 8               ; 8 uses
  %i.ba = alloca [24 x i8], align 8               ; 6 uses
  %i.bb = alloca [1 x i8], align 1                ; 4 uses
  %i.bc = alloca [16 x i8], align 8               ; 6 uses
  %i.bd = alloca [24 x i8], align 8               ; 10 uses
  %i.be = alloca [48 x i8], align 8               ; 35 uses
  %i.bf = alloca [48 x i8], align 8               ; 8 uses
  %i.bg = alloca [48 x i8], align 8               ; 8 uses
  %i.bh = alloca [48 x i8], align 8               ; 8 uses
  %i.bi = alloca [512 x i8], align 8              ; 41 uses
  %.sroa.56.sroa.8 = alloca [40 x i8], align 4    ; 6 uses
  %.sroa.652.sroa.0.sroa.11 = alloca [40 x i8], align 8 ; 5 uses
  %.sroa.652.sroa.7 = alloca [52 x i8], align 4   ; 5 uses
  %.sroa.652.sroa.8.sroa.11 = alloca [168 x i8], align 8 ; 5 uses
  %.sroa.652.sroa.9.sroa.11 = alloca [16 x i8], align 8 ; 5 uses
  %i.bj = alloca [16 x i8], align 8               ; 5 uses
  %i.bk = alloca [24 x i8], align 8               ; 2 uses
  %i.bl = alloca [16 x i8], align 8               ; 5 uses
  %i.bm = alloca [24 x i8], align 8               ; 2 uses
  %i.bn = alloca [16 x i8], align 8               ; 5 uses
  %i.bo = alloca [24 x i8], align 8               ; 2 uses
  %i.bp = alloca [64 x i8], align 8               ; 23 uses
  %i.bq = alloca [24 x i8], align 8               ; 11 uses
  %i.br = alloca [72 x i8], align 8               ; 17 uses
  %i.bs = alloca [24 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  store i64 0, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 3 uses
  store i64 0, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.br, ptr noundef nonnull readonly align 8 dereferenceable(72) %1, i64 72, i1 false), !alias.scope !27881
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 5 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 3 uses
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %.sroa.585.sroa.4.0..sroa.585.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %.sroa.585.sroa.5.0..sroa.585.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 32 ; 19 uses
  %.sroa.585.sroa.6.0..sroa.585.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 40 ; 3 uses
  %.sroa.585.sroa.7.0..sroa.585.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 48 ; 11 uses
  %.sroa.686.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 56 ; 3 uses
  %.sroa.787.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 57 ; 7 uses
  %i.bv = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %.sroa.4203.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 3 uses
  %.sroa.5204.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 40 ; 2 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %.sroa.14.0..sroa_idx815.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.sroa.4864.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.5865.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.5865.sroa.4.0..sroa.5865.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.5865.sroa.5.0..sroa.5865.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.5865.sroa.6.0..sroa.5865.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %.sroa.5865.sroa.7.0..sroa.5865.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %.sroa.5865.sroa.8.0..sroa.5865.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 52
  %.sroa.5865.sroa.9.0..sroa.5865.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %.sroa.6866.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %.sroa.7867.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 65
  %.sroa.5.0..sroa_idx.i.i.i.i416.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.6.0..sroa_idx4.i.i.i.i418.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i422.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i.i.i423.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i433.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i434.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 8 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 6 uses
  %.sroa.4.0..sroa_idx.i223 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.5831.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.5831.sroa.4.0..sroa.5831.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.5831.sroa.5.0..sroa.5831.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %.sroa.5831.sroa.6.0..sroa.5831.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %.sroa.5831.sroa.7.0..sroa.5831.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %.sroa.5831.sroa.8.0..sroa.5831.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 52
  %.sroa.5831.sroa.9.0..sroa.5831.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %.sroa.6832.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 65
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.6.0..sroa_idx4.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.4886.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.5887.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.5887.sroa.4.0..sroa.5887.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.5887.sroa.5.0..sroa.5887.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.5887.sroa.6.0..sroa.5887.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.5887.sroa.7.0..sroa.5887.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.sroa.5887.sroa.8.0..sroa.5887.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 52
  %.sroa.5887.sroa.9.0..sroa.5887.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %.sroa.6888.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %.sroa.7889.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 65
  %.sroa.5.0..sroa_idx.i.i.i.i468.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.6.0..sroa_idx4.i.i.i.i470.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i474.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i.i.i475.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i485.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i486.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 8 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 7 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  %.sroa.5273.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 84
  %.sroa.7893.0..sroa_idx894.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.9896.0..sroa_idx897.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 7 uses
end_hunk_1
