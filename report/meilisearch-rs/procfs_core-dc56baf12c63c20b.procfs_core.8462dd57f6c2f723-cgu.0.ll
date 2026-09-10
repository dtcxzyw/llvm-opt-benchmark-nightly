Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/procfs_core-dc56baf12c63c20b.procfs_core.8462dd57f6c2f723-cgu.0?download=true
inline.NumInlined: 2766
inline.NumDeleted: 776
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 21
begin_hunk_0_@"_ZN88_$LT$procfs_core..sys..kernel..SemaphoreLimits$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h52169e380a97c9fbE":bb.a

.lr.ph.i.i.i146.i:                                ; preds = %bb.e, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i153.i"
  %.sroa.02.012.i.i.i147.i = phi i64 [ %i.aa, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i153.i" ], [ 0, %bb.e ] ; 3 uses
  %i.y = phi ptr [ %i.z, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i153.i" ], [ %i.t, %bb.e ] ; 2 uses
  %.val.i.i.i148.i = load i8, ptr %i.y, align 1, !alias.scope !7234, !noalias !7236, !noundef !4
  switch i8 %.val.i.i.i148.i, label %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i153.i" [
    i8 9, label %bb.f
    i8 10, label %bb.f
    i8 12, label %bb.f
    i8 13, label %bb.f
    i8 32, label %bb.f
  ]

"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i153.i": ; preds = %.lr.ph.i.i.i146.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  %i.aa = add nuw i64 %.sroa.02.012.i.i.i147.i, 1
  %i.ab = icmp eq ptr %i.z, %i.w
  br i1 %i.ab, label %.loopexit.i.i154.i, label %.lr.ph.i.i.i146.i

bb.f:                                             ; preds = %.lr.ph.i.i.i146.i, %.lr.ph.i.i.i146.i, %.lr.ph.i.i.i146.i, %.lr.ph.i.i.i146.i, %.lr.ph.i.i.i146.i
  %i.ac = add nuw i64 %.sroa.02.012.i.i.i147.i, 1 ; 2 uses
  %i.ad = sub nuw i64 %i.s, %i.ac                 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ac ; 2 uses
  br label %.loopexit.i.i154.i

.loopexit.i.i154.i:                               ; preds = %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i153.i", %bb.f, %bb.e
  %.sroa.21.4.i = phi i8 [ %.sroa.21.3.i, %bb.f ], [ 1, %bb.e ], [ 1, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i153.i" ] ; 3 uses
  %.sroa.12.4.i = phi i64 [ %i.ad, %bb.f ], [ %.sroa.12.3.i, %bb.e ], [ %.sroa.12.3.i, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i153.i" ] ; 3 uses
  %.sroa.0.4.i = phi ptr [ %i.ae, %bb.f ], [ %.sroa.0.3.i, %bb.e ], [ %.sroa.0.3.i, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i153.i" ] ; 3 uses
  %i.af = phi i64 [ %i.ad, %bb.f ], [ 0, %bb.e ], [ %i.s, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i153.i" ]
  %i.ag = phi ptr [ %i.ae, %bb.f ], [ %i.t, %bb.e ], [ %i.t, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i153.i" ]
  %i.ah = phi i8 [ 0, %bb.f ], [ 1, %bb.e ], [ 1, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i153.i" ]
  %.sroa.5.1.i.ph.i149.i = phi i64 [ %.sroa.02.012.i.i.i147.i, %bb.f ], [ 0, %bb.e ], [ %i.s, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i153.i" ] ; 7 uses
  %.not.i.i150.i = icmp eq i64 %.sroa.5.1.i.ph.i149.i, 0
  br i1 %.not.i.i150.i, label %.preheader329.i, label %.preheader328.i

_ZN4core4iter6traits8iterator8Iterator8try_fold17h0a8c0b48fba4e967E.exit155.thread.i: ; preds = %.preheader329.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @53, ptr %i.ai, align 8, !alias.scope !7233, !noalias !7234
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 14, ptr %i.aj, align 8, !alias.scope !7233, !noalias !7234
  br label %_ZN11procfs_core3sys6kernel15SemaphoreLimits8from_str17ha682054dbc64a105E.exit

.preheader328.i:                                  ; preds = %.loopexit.i.i154.i, %.loopexit.i.i167.i
  %.sroa.21.6.i = phi i8 [ %.sroa.21.7.i, %.loopexit.i.i167.i ], [ %.sroa.21.4.i, %.loopexit.i.i154.i ]
  %.sroa.12.6.i = phi i64 [ %.sroa.12.7.i, %.loopexit.i.i167.i ], [ %.sroa.12.4.i, %.loopexit.i.i154.i ] ; 2 uses
  %.sroa.0.6.i = phi ptr [ %.sroa.0.7.i, %.loopexit.i.i167.i ], [ %.sroa.0.4.i, %.loopexit.i.i154.i ] ; 2 uses
  %i.ak = phi i64 [ %i.ax, %.loopexit.i.i167.i ], [ %.sroa.12.4.i, %.loopexit.i.i154.i ] ; 5 uses
  %i.al = phi ptr [ %i.ay, %.loopexit.i.i167.i ], [ %.sroa.0.4.i, %.loopexit.i.i154.i ] ; 10 uses
  %i.am = phi i8 [ %i.az, %.loopexit.i.i167.i ], [ %.sroa.21.4.i, %.loopexit.i.i154.i ]
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h0a8c0b48fba4e967E.exit168.thread.i, label %bb.g

bb.g:                                             ; preds = %.preheader328.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak
  %i.ap = icmp samesign eq i64 %i.ak, 0
  br i1 %i.ap, label %.loopexit.i.i167.i, label %.lr.ph.i.i.i159.i

.lr.ph.i.i.i159.i:                                ; preds = %bb.g, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i166.i"
  %.sroa.02.012.i.i.i160.i = phi i64 [ %i.as, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i166.i" ], [ 0, %bb.g ] ; 3 uses
  %i.aq = phi ptr [ %i.ar, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i166.i" ], [ %i.al, %bb.g ] ; 2 uses
  %.val.i.i.i161.i = load i8, ptr %i.aq, align 1, !alias.scope !7234, !noalias !7237, !noundef !4
  switch i8 %.val.i.i.i161.i, label %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i166.i" [
    i8 9, label %bb.h
    i8 10, label %bb.h
    i8 12, label %bb.h
    i8 13, label %bb.h
    i8 32, label %bb.h
  ]

"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i166.i": ; preds = %.lr.ph.i.i.i159.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 2 uses
  %i.as = add nuw i64 %.sroa.02.012.i.i.i160.i, 1
  %i.at = icmp eq ptr %i.ar, %i.ao
  br i1 %i.at, label %.loopexit.i.i167.i, label %.lr.ph.i.i.i159.i

bb.h:                                             ; preds = %.lr.ph.i.i.i159.i, %.lr.ph.i.i.i159.i, %.lr.ph.i.i.i159.i, %.lr.ph.i.i.i159.i, %.lr.ph.i.i.i159.i
  %i.au = add nuw i64 %.sroa.02.012.i.i.i160.i, 1 ; 2 uses
  %i.av = sub nuw i64 %i.ak, %i.au                ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.au ; 2 uses
  br label %.loopexit.i.i167.i

.loopexit.i.i167.i:                               ; preds = %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i166.i", %bb.h, %bb.g
  %.sroa.21.7.i = phi i8 [ %.sroa.21.6.i, %bb.h ], [ 1, %bb.g ], [ 1, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i166.i" ] ; 2 uses
  %.sroa.12.7.i = phi i64 [ %i.av, %bb.h ], [ %.sroa.12.6.i, %bb.g ], [ %.sroa.12.6.i, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i166.i" ] ; 2 uses
  %.sroa.0.7.i = phi ptr [ %i.aw, %bb.h ], [ %.sroa.0.6.i, %bb.g ], [ %.sroa.0.6.i, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i166.i" ] ; 2 uses
  %i.ax = phi i64 [ %i.av, %bb.h ], [ 0, %bb.g ], [ %i.ak, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i166.i" ]
  %i.ay = phi ptr [ %i.aw, %bb.h ], [ %i.al, %bb.g ], [ %i.al, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i166.i" ]
  %i.az = phi i8 [ 0, %bb.h ], [ 1, %bb.g ], [ 1, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i166.i" ]
  %.sroa.5.1.i.ph.i162.i = phi i64 [ %.sroa.02.012.i.i.i160.i, %bb.h ], [ 0, %bb.g ], [ %i.ak, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i166.i" ] ; 7 uses
  %.not.i.i163.i = icmp eq i64 %.sroa.5.1.i.ph.i162.i, 0
  br i1 %.not.i.i163.i, label %.preheader328.i, label %.preheader.i

_ZN4core4iter6traits8iterator8Iterator8try_fold17h0a8c0b48fba4e967E.exit168.thread.i: ; preds = %.preheader328.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @54, ptr %i.ba, align 8, !alias.scope !7233, !noalias !7234
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 14, ptr %i.bb, align 8, !alias.scope !7233, !noalias !7234
  br label %_ZN11procfs_core3sys6kernel15SemaphoreLimits8from_str17ha682054dbc64a105E.exit

.preheader.i:                                     ; preds = %.loopexit.i.i167.i, %.loopexit.i.i180.i
  %i.bc = phi i64 [ %i.bp, %.loopexit.i.i180.i ], [ %.sroa.12.7.i, %.loopexit.i.i167.i ] ; 5 uses
  %i.bd = phi ptr [ %i.bq, %.loopexit.i.i180.i ], [ %.sroa.0.7.i, %.loopexit.i.i167.i ] ; 6 uses
  %i.be = phi i8 [ %i.br, %.loopexit.i.i180.i ], [ %.sroa.21.7.i, %.loopexit.i.i167.i ]
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h0a8c0b48fba4e967E.exit181.thread.i, label %bb.i

bb.i:                                             ; preds = %.preheader.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bc
  %i.bh = icmp samesign eq i64 %i.bc, 0
  br i1 %i.bh, label %.loopexit.i.i180.i, label %.lr.ph.i.i.i172.i

.lr.ph.i.i.i172.i:                                ; preds = %bb.i, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i179.i"
  %.sroa.02.012.i.i.i173.i = phi i64 [ %i.bk, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i179.i" ], [ 0, %bb.i ] ; 3 uses
  %i.bi = phi ptr [ %i.bj, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i179.i" ], [ %i.bd, %bb.i ] ; 2 uses
  %.val.i.i.i174.i = load i8, ptr %i.bi, align 1, !alias.scope !7234, !noalias !7238, !noundef !4
  switch i8 %.val.i.i.i174.i, label %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i179.i" [
    i8 9, label %bb.j
    i8 10, label %bb.j
    i8 12, label %bb.j
    i8 13, label %bb.j
    i8 32, label %bb.j
  ]

"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i179.i": ; preds = %.lr.ph.i.i.i172.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 2 uses
  %i.bk = add nuw i64 %.sroa.02.012.i.i.i173.i, 1
  %i.bl = icmp eq ptr %i.bj, %i.bg
  br i1 %i.bl, label %.loopexit.i.i180.i, label %.lr.ph.i.i.i172.i

bb.j:                                             ; preds = %.lr.ph.i.i.i172.i, %.lr.ph.i.i.i172.i, %.lr.ph.i.i.i172.i, %.lr.ph.i.i.i172.i, %.lr.ph.i.i.i172.i
  %i.bm = add nuw i64 %.sroa.02.012.i.i.i173.i, 1 ; 2 uses
  %i.bn = sub nuw i64 %i.bc, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bm
  br label %.loopexit.i.i180.i

.loopexit.i.i180.i:                               ; preds = %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i179.i", %bb.j, %bb.i
  %i.bp = phi i64 [ %i.bn, %bb.j ], [ 0, %bb.i ], [ %i.bc, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i179.i" ]
  %i.bq = phi ptr [ %i.bo, %bb.j ], [ %i.bd, %bb.i ], [ %i.bd, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i179.i" ]
  %i.br = phi i8 [ 0, %bb.j ], [ 1, %bb.i ], [ 1, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i179.i" ]
  %.sroa.5.1.i.ph.i175.i = phi i64 [ %.sroa.02.012.i.i.i173.i, %bb.j ], [ 0, %bb.i ], [ %i.bc, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i179.i" ] ; 2 uses
  %.not.i.i176.i = icmp eq i64 %.sroa.5.1.i.ph.i175.i, 0
  br i1 %.not.i.i176.i, label %.preheader.i, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h0a8c0b48fba4e967E.exit181.i

_ZN4core4iter6traits8iterator8Iterator8try_fold17h0a8c0b48fba4e967E.exit181.thread.i: ; preds = %.preheader.i
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @55, ptr %i.bs, align 8, !alias.scope !7233, !noalias !7234
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 14, ptr %i.bt, align 8, !alias.scope !7233, !noalias !7234
  br label %_ZN11procfs_core3sys6kernel15SemaphoreLimits8from_str17ha682054dbc64a105E.exit

_ZN4core4iter6traits8iterator8Iterator8try_fold17h0a8c0b48fba4e967E.exit181.i: ; preds = %.loopexit.i.i180.i
  %cond.i = icmp eq i64 %.sroa.5.1.i.ph.i.i, 1
  %i.bu = load i8, ptr %i.c, align 1, !alias.scope !7239, !noalias !7240 ; 2 uses
  br i1 %cond.i, label %bb.k, label %bb.n

bb.k:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator8try_fold17h0a8c0b48fba4e967E.exit181.i
  switch i8 %i.bu, label %.lr.ph.split.us.i.i.preheader [
    i8 43, label %.loopexit.i
    i8 45, label %.loopexit.i
  ]

bb.l:                                             ; preds = %bb.n
  %i.bv = icmp ult i64 %.sroa.5.1.i.ph.i.i, 17
  br i1 %i.bv, label %.lr.ph.split.us.i.i.preheader, label %.preheader57.i.i

.lr.ph.split.us.i.i.preheader:                    ; preds = %bb.o, %bb.l, %bb.k
  %.sroa.01.170.us.i.i.ph = phi ptr [ %i.cf, %bb.o ], [ %i.c, %bb.l ], [ %i.c, %bb.k ]
  %.sroa.16.169.us.i.i.ph = phi i64 [ %i.cg, %bb.o ], [ %.sroa.5.1.i.ph.i.i, %bb.l ], [ 1, %bb.k ]
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i.preheader, %bb.m
  %.sroa.01.170.us.i.i = phi ptr [ %i.cc, %bb.m ], [ %.sroa.01.170.us.i.i.ph, %.lr.ph.split.us.i.i.preheader ] ; 2 uses
  %.sroa.16.169.us.i.i = phi i64 [ %i.cb, %bb.m ], [ %.sroa.16.169.us.i.i.ph, %.lr.ph.split.us.i.i.preheader ]
  %.sroa.017.168.us.i.i = phi i64 [ %i.ce, %bb.m ], [ 0, %.lr.ph.split.us.i.i.preheader ]
  %i.bw = load i8, ptr %.sroa.01.170.us.i.i, align 1, !alias.scope !7239, !noalias !7240, !noundef !4
  %i.bx = zext i8 %i.bw to i32
  %i.by = add nsw i32 %i.bx, -48                  ; 2 uses
  %i.bz = icmp ult i32 %i.by, 10
  br i1 %i.bz, label %bb.m, label %.loopexit.i

bb.m:                                             ; preds = %.lr.ph.split.us.i.i
  %i.ca = mul i64 %.sroa.017.168.us.i.i, 10
  %i.cb = add i64 %.sroa.16.169.us.i.i, -1        ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.01.170.us.i.i, i64 1
  %i.cd = zext nneg i32 %i.by to i64
  %i.ce = add i64 %i.ca, %i.cd                    ; 2 uses
  %.not51.us.i.i = icmp eq i64 %i.cb, 0
  br i1 %.not51.us.i.i, label %.preheader.i.thread.i, label %.lr.ph.split.us.i.i

bb.n:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator8try_fold17h0a8c0b48fba4e967E.exit181.i
  %cond.i.i = icmp eq i8 %i.bu, 43
  br i1 %cond.i.i, label %bb.o, label %bb.l

bb.o:                                             ; preds = %bb.n
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.cg = add i64 %.sroa.5.1.i.ph.i.i, -1         ; 2 uses
  %i.ch = icmp ult i64 %.sroa.5.1.i.ph.i.i, 18
  br i1 %i.ch, label %.lr.ph.split.us.i.i.preheader, label %.preheader57.i.i

.preheader57.i.i:                                 ; preds = %bb.l, %bb.o
  %.sroa.01.0.ph.i.i = phi ptr [ %i.c, %bb.l ], [ %i.cf, %bb.o ]
  %.sroa.16.0.us.i.i114.ph = phi i64 [ %.sroa.5.1.i.ph.i.i, %bb.l ], [ %i.cg, %bb.o ]
  br label %.lr.ph

.preheader57.split.us.i.i:                        ; preds = %bb.p
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.01.0.us.i.i115, i64 1
  %i.cj = add i64 %.sroa.16.0.us.i.i114, -1       ; 2 uses
  %.not.us.i.i = icmp eq i64 %i.cj, 0
  br i1 %.not.us.i.i, label %.preheader.i.thread.i, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader57.i.i, %.preheader57.split.us.i.i
  %.sroa.01.0.us.i.i115 = phi ptr [ %i.ci, %.preheader57.split.us.i.i ], [ %.sroa.01.0.ph.i.i, %.preheader57.i.i ] ; 2 uses
  %.sroa.16.0.us.i.i114 = phi i64 [ %i.cj, %.preheader57.split.us.i.i ], [ %.sroa.16.0.us.i.i114.ph, %.preheader57.i.i ]
  %.sroa.017.0.us.i.i113 = phi i64 [ %i.cs, %.preheader57.split.us.i.i ], [ 0, %.preheader57.i.i ]
  %i.ck = load i8, ptr %.sroa.01.0.us.i.i115, align 1, !alias.scope !7239, !noalias !7240, !noundef !4
  %i.cl = zext i8 %i.ck to i32
  %i.cm = add nsw i32 %i.cl, -48                  ; 2 uses
  %i.cn = icmp ult i32 %i.cm, 10
  br i1 %i.cn, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %.lr.ph
  %i.co = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.017.0.us.i.i113, i64 10) ; 2 uses
  %i.cp = extractvalue { i64, i1 } %i.co, 0       ; 2 uses
  %i.cq = extractvalue { i64, i1 } %i.co, 1
  %i.cr = zext nneg i32 %i.cm to i64
  %i.cs = add i64 %i.cp, %i.cr                    ; 3 uses
  %.not50.us.i.i = icmp ult i64 %i.cs, %i.cp
  %or.cond.i = select i1 %i.cq, i1 true, i1 %.not50.us.i.i
  br i1 %or.cond.i, label %.loopexit.i, label %.preheader57.split.us.i.i

.loopexit.i:                                      ; preds = %bb.p, %.lr.ph, %.lr.ph.split.us.i.i, %bb.k, %bb.k
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @56, ptr %i.ct, align 8, !alias.scope !7233, !noalias !7234
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 22, ptr %i.cu, align 8, !alias.scope !7233, !noalias !7234
  br label %_ZN11procfs_core3sys6kernel15SemaphoreLimits8from_str17ha682054dbc64a105E.exit

.preheader.i.thread.i:                            ; preds = %.preheader57.split.us.i.i, %bb.m
  %.sroa.10249.0.i = phi i64 [ %i.ce, %bb.m ], [ %i.cs, %.preheader57.split.us.i.i ]
  %cond425.i = icmp eq i64 %.sroa.5.1.i.ph.i149.i, 1
  %i.cv = load i8, ptr %i.t, align 1, !alias.scope !7241, !noalias !7242 ; 2 uses
  br i1 %cond425.i, label %bb.q, label %bb.t

bb.q:                                             ; preds = %.preheader.i.thread.i
  switch i8 %i.cv, label %.lr.ph.split.us.i201.i.preheader [
    i8 43, label %.loopexit403.i
    i8 45, label %.loopexit403.i
  ]

bb.r:                                             ; preds = %bb.t
  %i.cw = icmp ult i64 %.sroa.5.1.i.ph.i149.i, 17
  br i1 %i.cw, label %.lr.ph.split.us.i201.i.preheader, label %.preheader57.i184.i

.lr.ph.split.us.i201.i.preheader:                 ; preds = %bb.u, %bb.r, %bb.q
  %.sroa.01.170.us.i202.i.ph = phi ptr [ %i.dg, %bb.u ], [ %i.t, %bb.r ], [ %i.t, %bb.q ]
  %.sroa.16.169.us.i203.i.ph = phi i64 [ %i.dh, %bb.u ], [ %.sroa.5.1.i.ph.i149.i, %bb.r ], [ 1, %bb.q ]
  br label %.lr.ph.split.us.i201.i

.lr.ph.split.us.i201.i:                           ; preds = %.lr.ph.split.us.i201.i.preheader, %bb.s
  %.sroa.01.170.us.i202.i = phi ptr [ %i.dd, %bb.s ], [ %.sroa.01.170.us.i202.i.ph, %.lr.ph.split.us.i201.i.preheader ] ; 2 uses
  %.sroa.16.169.us.i203.i = phi i64 [ %i.dc, %bb.s ], [ %.sroa.16.169.us.i203.i.ph, %.lr.ph.split.us.i201.i.preheader ]
  %.sroa.017.168.us.i204.i = phi i64 [ %i.df, %bb.s ], [ 0, %.lr.ph.split.us.i201.i.preheader ]
  %i.cx = load i8, ptr %.sroa.01.170.us.i202.i, align 1, !alias.scope !7241, !noalias !7242, !noundef !4
  %i.cy = zext i8 %i.cx to i32
  %i.cz = add nsw i32 %i.cy, -48                  ; 2 uses
  %i.da = icmp ugt i32 %i.cz, 9
  br i1 %i.da, label %.loopexit403.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.split.us.i201.i
  %i.db = mul i64 %.sroa.017.168.us.i204.i, 10
  %i.dc = add i64 %.sroa.16.169.us.i203.i, -1     ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.01.170.us.i202.i, i64 1
  %i.de = zext nneg i32 %i.cz to i64
  %i.df = add i64 %i.db, %i.de                    ; 2 uses
  %.not51.us.i206.i = icmp eq i64 %i.dc, 0
  br i1 %.not51.us.i206.i, label %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit211.i", label %.lr.ph.split.us.i201.i

bb.t:                                             ; preds = %.preheader.i.thread.i
  %cond.i183.i = icmp eq i8 %i.cv, 43
  br i1 %cond.i183.i, label %bb.u, label %bb.r

bb.u:                                             ; preds = %bb.t
  %i.dg = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 2 uses
  %i.dh = add i64 %.sroa.5.1.i.ph.i149.i, -1      ; 2 uses
  %i.di = icmp ult i64 %.sroa.5.1.i.ph.i149.i, 18
  br i1 %i.di, label %.lr.ph.split.us.i201.i.preheader, label %.preheader57.i184.i

.preheader57.i184.i:                              ; preds = %bb.r, %bb.u
  %.sroa.01.0.ph.i186.i = phi ptr [ %i.t, %bb.r ], [ %i.dg, %bb.u ]
  %.sroa.16.0.us.i189.i118.ph = phi i64 [ %.sroa.5.1.i.ph.i149.i, %bb.r ], [ %i.dh, %bb.u ]
  br label %.lr.ph120

.preheader57.split.us.i187.i:                     ; preds = %bb.v
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.01.0.us.i190.i119, i64 1
  %i.dk = add i64 %.sroa.16.0.us.i189.i118, -1    ; 2 uses
  %.not.us.i191.not.i = icmp eq i64 %i.dk, 0
  br i1 %.not.us.i191.not.i, label %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit211.i", label %.lr.ph120

.lr.ph120:                                        ; preds = %.preheader57.i184.i, %.preheader57.split.us.i187.i
  %.sroa.01.0.us.i190.i119 = phi ptr [ %i.dj, %.preheader57.split.us.i187.i ], [ %.sroa.01.0.ph.i186.i, %.preheader57.i184.i ] ; 2 uses
  %.sroa.16.0.us.i189.i118 = phi i64 [ %i.dk, %.preheader57.split.us.i187.i ], [ %.sroa.16.0.us.i189.i118.ph, %.preheader57.i184.i ]
  %.sroa.017.0.us.i188.i117 = phi i64 [ %i.dt, %.preheader57.split.us.i187.i ], [ 0, %.preheader57.i184.i ]
  %i.dl = load i8, ptr %.sroa.01.0.us.i190.i119, align 1, !alias.scope !7241, !noalias !7242, !noundef !4
  %i.dm = zext i8 %i.dl to i32
  %i.dn = add nsw i32 %i.dm, -48                  ; 2 uses
  %i.do = icmp ult i32 %i.dn, 10
  br i1 %i.do, label %bb.v, label %.loopexit403.i

bb.v:                                             ; preds = %.lr.ph120
  %i.dp = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.017.0.us.i188.i117, i64 10) ; 2 uses
  %i.dq = extractvalue { i64, i1 } %i.dp, 0       ; 2 uses
  %i.dr = extractvalue { i64, i1 } %i.dp, 1
  %i.ds = zext nneg i32 %i.dn to i64
  %i.dt = add i64 %i.dq, %i.ds                    ; 3 uses
  %.not50.us.i193.i = icmp ult i64 %i.dt, %i.dq
  %or.cond317.i = select i1 %i.dr, i1 true, i1 %.not50.us.i193.i
  br i1 %or.cond317.i, label %.loopexit403.i, label %.preheader57.split.us.i187.i

.loopexit403.i:                                   ; preds = %bb.v, %.lr.ph120, %.lr.ph.split.us.i201.i, %bb.q, %bb.q
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @57, ptr %i.du, align 8, !alias.scope !7233, !noalias !7234
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 22, ptr %i.dv, align 8, !alias.scope !7233, !noalias !7234
  br label %_ZN11procfs_core3sys6kernel15SemaphoreLimits8from_str17ha682054dbc64a105E.exit

"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit211.i": ; preds = %.preheader57.split.us.i187.i, %bb.s
  %3 = phi i64 [ %i.df, %bb.s ], [ %i.dt, %.preheader57.split.us.i187.i ]
  %cond426.i = icmp eq i64 %.sroa.5.1.i.ph.i162.i, 1
  %i.dw = load i8, ptr %i.al, align 1, !alias.scope !7243, !noalias !7244 ; 2 uses
  br i1 %cond426.i, label %bb.w, label %bb.z

bb.w:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit211.i"
  switch i8 %i.dw, label %.lr.ph.split.us.i231.i.preheader [
    i8 43, label %.loopexit400.i
    i8 45, label %.loopexit400.i
  ]

bb.x:                                             ; preds = %bb.z
  %i.dx = icmp ult i64 %.sroa.5.1.i.ph.i162.i, 17
  br i1 %i.dx, label %.lr.ph.split.us.i231.i.preheader, label %.preheader57.i214.i

.lr.ph.split.us.i231.i.preheader:                 ; preds = %bb.aa, %bb.x, %bb.w
  %.sroa.01.170.us.i232.i.ph = phi ptr [ %i.eh, %bb.aa ], [ %i.al, %bb.x ], [ %i.al, %bb.w ]
  %.sroa.16.169.us.i233.i.ph = phi i64 [ %i.ei, %bb.aa ], [ %.sroa.5.1.i.ph.i162.i, %bb.x ], [ 1, %bb.w ]
  br label %.lr.ph.split.us.i231.i

.lr.ph.split.us.i231.i:                           ; preds = %.lr.ph.split.us.i231.i.preheader, %bb.y
  %.sroa.01.170.us.i232.i = phi ptr [ %i.ee, %bb.y ], [ %.sroa.01.170.us.i232.i.ph, %.lr.ph.split.us.i231.i.preheader ] ; 2 uses
  %.sroa.16.169.us.i233.i = phi i64 [ %i.ed, %bb.y ], [ %.sroa.16.169.us.i233.i.ph, %.lr.ph.split.us.i231.i.preheader ]
  %.sroa.017.168.us.i234.i = phi i64 [ %i.eg, %bb.y ], [ 0, %.lr.ph.split.us.i231.i.preheader ]
  %i.dy = load i8, ptr %.sroa.01.170.us.i232.i, align 1, !alias.scope !7243, !noalias !7244, !noundef !4
  %i.dz = zext i8 %i.dy to i32
  %i.ea = add nsw i32 %i.dz, -48                  ; 2 uses
  %i.eb = icmp ugt i32 %i.ea, 9
  br i1 %i.eb, label %.loopexit400.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph.split.us.i231.i
  %i.ec = mul i64 %.sroa.017.168.us.i234.i, 10
  %i.ed = add i64 %.sroa.16.169.us.i233.i, -1     ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.01.170.us.i232.i, i64 1
  %i.ef = zext nneg i32 %i.ea to i64
  %i.eg = add i64 %i.ec, %i.ef                    ; 2 uses
  %.not51.us.i236.i = icmp eq i64 %i.ed, 0
  br i1 %.not51.us.i236.i, label %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit241.i", label %.lr.ph.split.us.i231.i

bb.z:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit211.i"
  %cond.i213.i = icmp eq i8 %i.dw, 43
  br i1 %cond.i213.i, label %bb.aa, label %bb.x

bb.aa:                                            ; preds = %bb.z
  %i.eh = getelementptr inbounds nuw i8, ptr %i.al, i64 1 ; 2 uses
  %i.ei = add i64 %.sroa.5.1.i.ph.i162.i, -1      ; 2 uses
  %i.ej = icmp ult i64 %.sroa.5.1.i.ph.i162.i, 18
  br i1 %i.ej, label %.lr.ph.split.us.i231.i.preheader, label %.preheader57.i214.i

.preheader57.i214.i:                              ; preds = %bb.x, %bb.aa
  %.sroa.01.0.ph.i216.i = phi ptr [ %i.al, %bb.x ], [ %i.eh, %bb.aa ]
  %.sroa.16.0.us.i219.i124.ph = phi i64 [ %.sroa.5.1.i.ph.i162.i, %bb.x ], [ %i.ei, %bb.aa ]
  br label %.lr.ph126

.preheader57.split.us.i217.i:                     ; preds = %bb.ab
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.01.0.us.i220.i125, i64 1
  %i.el = add i64 %.sroa.16.0.us.i219.i124, -1    ; 2 uses
  %.not.us.i221.not.i = icmp eq i64 %i.el, 0
  br i1 %.not.us.i221.not.i, label %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit241.i", label %.lr.ph126

.lr.ph126:                                        ; preds = %.preheader57.i214.i, %.preheader57.split.us.i217.i
  %.sroa.01.0.us.i220.i125 = phi ptr [ %i.ek, %.preheader57.split.us.i217.i ], [ %.sroa.01.0.ph.i216.i, %.preheader57.i214.i ] ; 2 uses
  %.sroa.16.0.us.i219.i124 = phi i64 [ %i.el, %.preheader57.split.us.i217.i ], [ %.sroa.16.0.us.i219.i124.ph, %.preheader57.i214.i ]
  %.sroa.017.0.us.i218.i123 = phi i64 [ %i.eu, %.preheader57.split.us.i217.i ], [ 0, %.preheader57.i214.i ]
  %i.em = load i8, ptr %.sroa.01.0.us.i220.i125, align 1, !alias.scope !7243, !noalias !7244, !noundef !4
  %i.en = zext i8 %i.em to i32
  %i.eo = add nsw i32 %i.en, -48                  ; 2 uses
  %i.ep = icmp ult i32 %i.eo, 10
  br i1 %i.ep, label %bb.ab, label %.loopexit400.i

bb.ab:                                            ; preds = %.lr.ph126
  %i.eq = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.017.0.us.i218.i123, i64 10) ; 2 uses
  %i.er = extractvalue { i64, i1 } %i.eq, 0       ; 2 uses
  %i.es = extractvalue { i64, i1 } %i.eq, 1
  %i.et = zext nneg i32 %i.eo to i64
  %i.eu = add i64 %i.er, %i.et                    ; 3 uses
  %.not50.us.i223.i = icmp ult i64 %i.eu, %i.er
  %or.cond319.i = select i1 %i.es, i1 true, i1 %.not50.us.i223.i
  br i1 %or.cond319.i, label %.loopexit400.i, label %.preheader57.split.us.i217.i

.loopexit400.i:                                   ; preds = %bb.ab, %.lr.ph126, %.lr.ph.split.us.i231.i, %bb.w, %bb.w
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @58, ptr %i.ev, align 8, !alias.scope !7233, !noalias !7234
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 22, ptr %i.ew, align 8, !alias.scope !7233, !noalias !7234
  br label %_ZN11procfs_core3sys6kernel15SemaphoreLimits8from_str17ha682054dbc64a105E.exit

"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit241.i": ; preds = %.preheader57.split.us.i217.i, %bb.y
  %4 = phi i64 [ %i.eg, %bb.y ], [ %i.eu, %.preheader57.split.us.i217.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7245
  call fastcc void @"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bd, i64 noundef %.sroa.5.1.i.ph.i175.i, i32 noundef 10), !noalias !7233
  %i.ex = load i8, ptr %i.a, align 8, !range !8, !noalias !7245, !noundef !4
  %i.ey = trunc nuw i8 %i.ex to i1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.fa = load i64, ptr %i.ez, align 8, !noalias !7245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7245
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.ey, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit241.i"
  store ptr @59, ptr %i.fb, align 8, !alias.scope !7233, !noalias !7234
  store i64 22, ptr %i.fc, align 8, !alias.scope !7233, !noalias !7234
  br label %_ZN11procfs_core3sys6kernel15SemaphoreLimits8from_str17ha682054dbc64a105E.exit

bb.ad:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit241.i"
  store i64 %.sroa.10249.0.i, ptr %i.fb, align 8, !alias.scope !7233, !noalias !7234
  store i64 %3, ptr %i.fc, align 8, !alias.scope !7233, !noalias !7234
  %.sroa.583.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %4, ptr %.sroa.583.0..sroa_idx.i, align 8, !alias.scope !7233, !noalias !7234
  %.sroa.684.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.fa, ptr %.sroa.684.0..sroa_idx.i, align 8, !alias.scope !7233, !noalias !7234
  br label %_ZN11procfs_core3sys6kernel15SemaphoreLimits8from_str17ha682054dbc64a105E.exit

_ZN11procfs_core3sys6kernel15SemaphoreLimits8from_str17ha682054dbc64a105E.exit: ; preds = %_ZN4core4iter6traits8iterator8Iterator8try_fold17h0a8c0b48fba4e967E.exit.thread.i, %_ZN4core4iter6traits8iterator8Iterator8try_fold17h0a8c0b48fba4e967E.exit155.thread.i, %_ZN4core4iter6traits8iterator8Iterator8try_fold17h0a8c0b48fba4e967E.exit168.thread.i, %_ZN4core4iter6traits8iterator8Iterator8try_fold17h0a8c0b48fba4e967E.exit181.thread.i, %.loopexit.i, %.loopexit403.i, %.loopexit400.i, %bb.ac, %bb.ad
  %.sink.i = phi i64 [ 1, %_ZN4core4iter6traits8iterator8Iterator8try_fold17h0a8c0b48fba4e967E.exit.thread.i ], [ 1, %_ZN4core4iter6traits8iterator8Iterator8try_fold17h0a8c0b48fba4e967E.exit155.thread.i ], [ 1, %_ZN4core4iter6traits8iterator8Iterator8try_fold17h0a8c0b48fba4e967E.exit168.thread.i ], [ 1, %_ZN4core4iter6traits8iterator8Iterator8try_fold17h0a8c0b48fba4e967E.exit181.thread.i ], [ 1, %.loopexit403.i ], [ 1, %bb.ac ], [ 1, %.loopexit400.i ], [ 1, %.loopexit.i ], [ 0, %bb.ad ]
  store i64 %.sink.i, ptr %0, align 8, !alias.scope !7233, !noalias !7234
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN89_$LT$procfs_core..process..pagemap.._..InternalBitFlags$u20$as$u20$core..fmt..Display$GT$3fmt17h2e4ce958492f9c83E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.peel.begin:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = load i64, ptr %0, align 8, !noundef !4   ; 17 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7259)
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.thread.i, label %.lr.ph.split.i.i.peel

.lr.ph.split.i.i.peel:                            ; preds = %.peel.begin
  %i.g = and i64 %i.e, 31
  %i.h = icmp eq i64 %i.g, 31
  br i1 %i.h, label %bb.a, label %.lr.ph.split.i.i.1.peel

.lr.ph.split.i.i.1.peel:                          ; preds = %.lr.ph.split.i.i.peel
  %i.i = and i64 %i.e, 36028797018963936
  %i.j = icmp eq i64 %i.i, 36028797018963936
  br i1 %i.j, label %bb.a, label %.lr.ph.split.i.i.2.peel

.lr.ph.split.i.i.2.peel:                          ; preds = %.lr.ph.split.i.i.1.peel
  %i.k = and i64 %i.e, 36028797018963968
  %or.cond.i.i.2.peel.not = icmp eq i64 %i.k, 0
  br i1 %or.cond.i.i.2.peel.not, label %.lr.ph.split.i.i.3.peel, label %bb.a

.lr.ph.split.i.i.3.peel:                          ; preds = %.lr.ph.split.i.i.2.peel
  %i.l = and i64 %i.e, 72057594037927936
  %or.cond.i.i.3.peel.not = icmp eq i64 %i.l, 0
  br i1 %or.cond.i.i.3.peel.not, label %.lr.ph.split.i.i.4.peel, label %bb.a

.lr.ph.split.i.i.4.peel:                          ; preds = %.lr.ph.split.i.i.3.peel
  %i.m = and i64 %i.e, 2305843009213693952
  %or.cond.i.i.4.peel.not = icmp eq i64 %i.m, 0
  br i1 %or.cond.i.i.4.peel.not, label %.lr.ph.split.i.i.5.peel, label %bb.a

.lr.ph.split.i.i.5.peel:                          ; preds = %.lr.ph.split.i.i.4.peel
  %i.n = and i64 %i.e, 4611686018427387904
  %or.cond.i.i.5.peel.not = icmp eq i64 %i.n, 0
  br i1 %or.cond.i.i.5.peel.not, label %.lr.ph.split.i.i.6.peel, label %bb.a

.lr.ph.split.i.i.6.peel:                          ; preds = %.lr.ph.split.i.i.5.peel
  %i.o = icmp slt i64 %i.e, 0
  br i1 %i.o, label %bb.a, label %.loopexit.i

bb.a:                                             ; preds = %.lr.ph.split.i.i.6.peel, %.lr.ph.split.i.i.5.peel, %.lr.ph.split.i.i.4.peel, %.lr.ph.split.i.i.3.peel, %.lr.ph.split.i.i.2.peel, %.lr.ph.split.i.i.1.peel, %.lr.ph.split.i.i.peel
  %.lcssa56.peel = phi ptr [ @354, %.lr.ph.split.i.i.peel ], [ getelementptr inbounds nuw (i8, ptr @354, i64 24), %.lr.ph.split.i.i.1.peel ], [ getelementptr inbounds nuw (i8, ptr @354, i64 48), %.lr.ph.split.i.i.2.peel ], [ getelementptr inbounds nuw (i8, ptr @354, i64 72), %.lr.ph.split.i.i.3.peel ], [ getelementptr inbounds nuw (i8, ptr @354, i64 96), %.lr.ph.split.i.i.4.peel ], [ getelementptr inbounds nuw (i8, ptr @354, i64 120), %.lr.ph.split.i.i.5.peel ], [ getelementptr inbounds nuw (i8, ptr @354, i64 144), %.lr.ph.split.i.i.6.peel ] ; 2 uses
  %.lcssa.peel = phi i64 [ 1, %.lr.ph.split.i.i.peel ], [ 2, %.lr.ph.split.i.i.1.peel ], [ 3, %.lr.ph.split.i.i.2.peel ], [ 4, %.lr.ph.split.i.i.3.peel ], [ 5, %.lr.ph.split.i.i.4.peel ], [ 6, %.lr.ph.split.i.i.5.peel ], [ 7, %.lr.ph.split.i.i.6.peel ]
  %i.p = phi i64 [ -32, %.lr.ph.split.i.i.peel ], [ -36028797018963937, %.lr.ph.split.i.i.1.peel ], [ -36028797018963969, %.lr.ph.split.i.i.2.peel ], [ -72057594037927937, %.lr.ph.split.i.i.3.peel ], [ -2305843009213693953, %.lr.ph.split.i.i.4.peel ], [ -4611686018427387905, %.lr.ph.split.i.i.5.peel ], [ 9223372036854775807, %.lr.ph.split.i.i.6.peel ]
  %i.q = getelementptr inbounds nuw i8, ptr %.lcssa56.peel, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noalias !7260, !noundef !4
  %i.s = and i64 %i.e, %i.p
  %i.t = load ptr, ptr %.lcssa56.peel, align 8, !noalias !7260, !nonnull !4, !align !6, !noundef !4
  %i.u = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.t, i64 noundef %i.r)
  br i1 %i.u, label %_ZN8bitflags6parser9to_writer17h905fca8986ce7f05E.exit, label %.peel.newph

.peel.newph:                                      ; preds = %bb.a, %bb.h
  %.sroa.13.0.i = phi i64 [ %i.bx, %bb.h ], [ %i.s, %bb.a ] ; 17 uses
  %.sroa.7.0.i = phi i64 [ %.lcssa, %bb.h ], [ %.lcssa.peel, %bb.a ] ; 9 uses
  %i.v = icmp ult i64 %.sroa.7.0.i, 7
  br i1 %i.v, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.peel.newph
  %i.w = icmp eq i64 %.sroa.13.0.i, 0
  br i1 %i.w, label %.thread.i, label %.lr.ph.split.i.i

.thread.i:                                        ; preds = %.lr.ph.i.i, %.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7259
  br label %.loopexit12.sink.split.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.x = getelementptr inbounds nuw [24 x i8], ptr @354, i64 %.sroa.7.0.i ; 2 uses
  %i.y = add nuw nsw i64 %.sroa.7.0.i, 1          ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.val.i.i = load i64, ptr %i.z, align 8, !noalias !7260, !noundef !4 ; 4 uses
  %i.aa = and i64 %.val.i.i, %i.e
  %i.ab = icmp eq i64 %i.aa, %.val.i.i
  %i.ac = and i64 %.val.i.i, %.sroa.13.0.i
  %i.ad = icmp ne i64 %i.ac, 0
  %or.cond.i.i = and i1 %i.ad, %i.ab
  br i1 %or.cond.i.i, label %bb.b, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %i.y, 7
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.split.i.i.1

.lr.ph.split.i.i.1:                               ; preds = %.backedge.i.i
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr @354, i64 %i.y ; 2 uses
  %i.af = add nuw nsw i64 %.sroa.7.0.i, 2         ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.val.i.i.1 = load i64, ptr %i.ag, align 8, !noalias !7260, !noundef !4 ; 4 uses
  %i.ah = and i64 %.val.i.i.1, %i.e
  %i.ai = icmp eq i64 %i.ah, %.val.i.i.1
  %i.aj = and i64 %.val.i.i.1, %.sroa.13.0.i
  %i.ak = icmp ne i64 %i.aj, 0
  %or.cond.i.i.1 = and i1 %i.ak, %i.ai
  br i1 %or.cond.i.i.1, label %bb.b, label %.backedge.i.i.1

.backedge.i.i.1:                                  ; preds = %.lr.ph.split.i.i.1
  %exitcond.not.i.i.1 = icmp eq i64 %i.af, 7
  br i1 %exitcond.not.i.i.1, label %.loopexit.i, label %.lr.ph.split.i.i.2

.lr.ph.split.i.i.2:                               ; preds = %.backedge.i.i.1
  %i.al = getelementptr inbounds nuw [24 x i8], ptr @354, i64 %i.af ; 2 uses
  %i.am = add nuw nsw i64 %.sroa.7.0.i, 3         ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.val.i.i.2 = load i64, ptr %i.an, align 8, !noalias !7260, !noundef !4 ; 4 uses
  %i.ao = and i64 %.val.i.i.2, %i.e
  %i.ap = icmp eq i64 %i.ao, %.val.i.i.2
  %i.aq = and i64 %.val.i.i.2, %.sroa.13.0.i
  %i.ar = icmp ne i64 %i.aq, 0
  %or.cond.i.i.2 = and i1 %i.ar, %i.ap
  br i1 %or.cond.i.i.2, label %bb.b, label %.backedge.i.i.2

.backedge.i.i.2:                                  ; preds = %.lr.ph.split.i.i.2
  %exitcond.not.i.i.2 = icmp eq i64 %i.am, 7
  br i1 %exitcond.not.i.i.2, label %.loopexit.i, label %.lr.ph.split.i.i.3

.lr.ph.split.i.i.3:                               ; preds = %.backedge.i.i.2
  %i.as = getelementptr inbounds nuw [24 x i8], ptr @354, i64 %i.am ; 2 uses
  %i.at = add nuw nsw i64 %.sroa.7.0.i, 4         ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.val.i.i.3 = load i64, ptr %i.au, align 8, !noalias !7260, !noundef !4 ; 4 uses
  %i.av = and i64 %.val.i.i.3, %i.e
  %i.aw = icmp eq i64 %i.av, %.val.i.i.3
  %i.ax = and i64 %.val.i.i.3, %.sroa.13.0.i
  %i.ay = icmp ne i64 %i.ax, 0
  %or.cond.i.i.3 = and i1 %i.ay, %i.aw
  br i1 %or.cond.i.i.3, label %bb.b, label %.backedge.i.i.3

.backedge.i.i.3:                                  ; preds = %.lr.ph.split.i.i.3
  %exitcond.not.i.i.3 = icmp eq i64 %i.at, 7
  br i1 %exitcond.not.i.i.3, label %.loopexit.i, label %.lr.ph.split.i.i.4

.lr.ph.split.i.i.4:                               ; preds = %.backedge.i.i.3
  %i.az = getelementptr inbounds nuw [24 x i8], ptr @354, i64 %i.at ; 2 uses
  %i.ba = add nuw nsw i64 %.sroa.7.0.i, 5         ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.val.i.i.4 = load i64, ptr %i.bb, align 8, !noalias !7260, !noundef !4 ; 4 uses
  %i.bc = and i64 %.val.i.i.4, %i.e
  %i.bd = icmp eq i64 %i.bc, %.val.i.i.4
  %i.be = and i64 %.val.i.i.4, %.sroa.13.0.i
  %i.bf = icmp ne i64 %i.be, 0
  %or.cond.i.i.4 = and i1 %i.bf, %i.bd
  br i1 %or.cond.i.i.4, label %bb.b, label %.backedge.i.i.4

.backedge.i.i.4:                                  ; preds = %.lr.ph.split.i.i.4
  %exitcond.not.i.i.4 = icmp eq i64 %i.ba, 7
  br i1 %exitcond.not.i.i.4, label %.loopexit.i, label %.lr.ph.split.i.i.5

.lr.ph.split.i.i.5:                               ; preds = %.backedge.i.i.4
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr @354, i64 %i.ba ; 2 uses
  %i.bh = add nuw nsw i64 %.sroa.7.0.i, 6         ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %.val.i.i.5 = load i64, ptr %i.bi, align 8, !noalias !7260, !noundef !4 ; 4 uses
  %i.bj = and i64 %.val.i.i.5, %i.e
  %i.bk = icmp eq i64 %i.bj, %.val.i.i.5
  %i.bl = and i64 %.val.i.i.5, %.sroa.13.0.i
  %i.bm = icmp ne i64 %i.bl, 0
  %or.cond.i.i.5 = and i1 %i.bm, %i.bk
  br i1 %or.cond.i.i.5, label %bb.b, label %.backedge.i.i.5

.backedge.i.i.5:                                  ; preds = %.lr.ph.split.i.i.5
  %exitcond.not.i.i.5 = icmp eq i64 %i.bh, 7
  br i1 %exitcond.not.i.i.5, label %.loopexit.i, label %.lr.ph.split.i.i.6

.lr.ph.split.i.i.6:                               ; preds = %.backedge.i.i.5
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr @354, i64 %i.bh ; 2 uses
end_hunk_0
