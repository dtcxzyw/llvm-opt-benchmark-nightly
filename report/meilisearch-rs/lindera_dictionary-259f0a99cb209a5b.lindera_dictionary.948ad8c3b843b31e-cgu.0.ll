Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/lindera_dictionary-259f0a99cb209a5b.lindera_dictionary.948ad8c3b843b31e-cgu.0?download=true
inline.NumInlined: 4519
inline.NumDeleted: 2001
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZN18lindera_dictionary18dictionary_builder22connection_cost_matrix27ConnectionCostMatrixBuilder5build17hf06875aade560198E:bb.a
  %i.ju = phi i64 [ %i.lj, %bb.bw ], [ %.lcssa1725.i.i.i, %bb.bn ] ; 2 uses
  %i.jv = phi ptr [ %i.lf, %bb.bw ], [ %i.jq, %bb.bn ] ; 6 uses
  %i.jw = ptrtoint ptr %i.jv to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !6952), !noalias !6944
  call void @llvm.experimental.noalias.scope.decl(metadata !6953), !noalias !6944
  call void @llvm.experimental.noalias.scope.decl(metadata !6954), !noalias !6944
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 1 ; 4 uses
  store ptr %i.jx, ptr %i.at, align 8, !alias.scope !6955, !noalias !6956
  %i.jy = load i8, ptr %i.jv, align 1, !noalias !6957, !noundef !6 ; 5 uses
  %i.jz = icmp sgt i8 %i.jy, -1
  br i1 %i.jz, label %bb.bo, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i.i.i.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ka = and i8 %i.jy, 31
  %i.kb = zext nneg i8 %i.ka to i32               ; 3 uses
  %i.kc = icmp ne ptr %i.jx, %i.jn
  call void @llvm.assume(i1 %i.kc), !noalias !6944
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jv, i64 2 ; 4 uses
  store ptr %i.kd, ptr %i.at, align 8, !alias.scope !6958, !noalias !6956
  %i.ke = load i8, ptr %i.jx, align 1, !noalias !6957, !noundef !6
  %i.kf = shl nuw nsw i32 %i.kb, 6
  %i.kg = and i8 %i.ke, 63
  %i.kh = zext nneg i8 %i.kg to i32               ; 2 uses
  %i.ki = or disjoint i32 %i.kf, %i.kh
  %i.kj = icmp samesign ugt i8 %i.jy, -33
  br i1 %i.kj, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i.i.i.i.i.i.i.i.i", label %bb.bp

bb.bo:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.kk = zext nneg i8 %i.jy to i32
  br label %bb.bp

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i.i.i.i.i.i.i.i.i"
  %i.kl = icmp ne ptr %i.kd, %i.jn
  call void @llvm.assume(i1 %i.kl), !noalias !6944
  %i.km = getelementptr inbounds nuw i8, ptr %i.jv, i64 3 ; 4 uses
  store ptr %i.km, ptr %i.at, align 8, !alias.scope !6959, !noalias !6956
  %i.kn = load i8, ptr %i.kd, align 1, !noalias !6957, !noundef !6
  %i.ko = shl nuw nsw i32 %i.kh, 6
  %i.kp = and i8 %i.kn, 63
  %i.kq = zext nneg i8 %i.kp to i32
  %i.kr = or disjoint i32 %i.ko, %i.kq            ; 2 uses
  %i.ks = shl nuw nsw i32 %i.kb, 12
  %i.kt = or disjoint i32 %i.kr, %i.ks
  %i.ku = icmp samesign ugt i8 %i.jy, -17
  br i1 %i.ku, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit16.i.i.i.i.i.i.i.i.i.i", label %bb.bp

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit16.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i.i.i.i.i.i.i.i.i"
  %i.kv = icmp ne ptr %i.km, %i.jn
  call void @llvm.assume(i1 %i.kv), !noalias !6944
  %i.kw = getelementptr inbounds nuw i8, ptr %i.jv, i64 4 ; 2 uses
  store ptr %i.kw, ptr %i.at, align 8, !alias.scope !6960, !noalias !6956
  %i.kx = load i8, ptr %i.km, align 1, !noalias !6957, !noundef !6
  %i.ky = shl nuw nsw i32 %i.kb, 18
  %i.kz = and i32 %i.ky, 1835008
  %i.la = shl nuw nsw i32 %i.kr, 6
  %i.lb = and i8 %i.kx, 63
  %i.lc = zext nneg i8 %i.lb to i32
  %i.ld = or disjoint i32 %i.la, %i.lc
  %i.le = or disjoint i32 %i.ld, %i.kz
  br label %bb.bp

bb.bp:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit16.i.i.i.i.i.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i.i.i.i.i.i.i.i.i", %bb.bo, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i.i.i.i.i.i.i.i.i"
  %i.lf = phi ptr [ %i.km, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i.i.i.i.i.i.i.i.i" ], [ %i.kw, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit16.i.i.i.i.i.i.i.i.i.i" ], [ %i.kd, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i.i.i.i.i.i.i.i.i" ], [ %i.jx, %bb.bo ] ; 5 uses
  %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i = phi i32 [ %i.kt, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i.i.i.i.i.i.i.i.i" ], [ %i.le, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit16.i.i.i.i.i.i.i.i.i.i" ], [ %i.ki, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i.i.i.i.i.i.i.i.i" ], [ %i.kk, %bb.bo ] ; 8 uses
  %i.lg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.lg), !noalias !6944
  %i.lh = ptrtoint ptr %i.lf to i64
  %i.li = sub i64 %i.lh, %i.jw
  %i.lj = add i64 %i.li, %i.ju                    ; 7 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i, label %bb.bq [
    i32 32, label %bb.bx
    i32 13, label %bb.bx
    i32 12, label %bb.bx
    i32 11, label %bb.bx
    i32 10, label %bb.bx
    i32 9, label %bb.bx
  ]

bb.bq:                                            ; preds = %bb.bp
  %i.lk = icmp samesign ugt i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i, 127
  br i1 %i.lk, label %bb.br, label %bb.bw

bb.br:                                            ; preds = %bb.bq
  %i.ll = lshr i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i, 8
  switch i32 %i.ll, label %bb.bw [
    i32 0, label %bb.bu
    i32 22, label %bb.bs
    i32 32, label %bb.bv
    i32 48, label %bb.bt
  ]

bb.bs:                                            ; preds = %bb.br
  %i.lm = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i, 5760
  %i.ln = zext i1 %i.lm to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h06910994891be35cE.exit.i.i.i.i.i.i.i.i"

bb.bt:                                            ; preds = %bb.br
  %i.lo = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i, 12288
  %i.lp = zext i1 %i.lo to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h06910994891be35cE.exit.i.i.i.i.i.i.i.i"

bb.bu:                                            ; preds = %bb.br
  %i.lq = and i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i, 255
  %i.lr = zext nneg i32 %i.lq to i64
  %i.ls = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.lr
  %i.lt = load i8, ptr %i.ls, align 1, !noalias !6961, !noundef !6
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h06910994891be35cE.exit.i.i.i.i.i.i.i.i"

bb.bv:                                            ; preds = %bb.br
  %i.lu = and i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i, 255
  %i.lv = zext nneg i32 %i.lu to i64
  %i.lw = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.lv
  %i.lx = load i8, ptr %i.lw, align 1, !noalias !6961, !noundef !6
  %i.ly = lshr i8 %i.lx, 1
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h06910994891be35cE.exit.i.i.i.i.i.i.i.i"

"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h06910994891be35cE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.bv, %bb.bu, %bb.bt, %bb.bs
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.lp, %bb.bt ], [ %i.lt, %bb.bu ], [ %i.ln, %bb.bs ], [ %i.ly, %bb.bv ]
  %i.lz = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.lz, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h06910994891be35cE.exit.i.i.i.i.i.i.i.i", %bb.br, %bb.bq
  %i.ma = icmp eq ptr %i.lf, %i.jn
  br i1 %i.ma, label %"._ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h427e7d7cbc44a783E.exit.loopexit_crit_edge.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

"._ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h427e7d7cbc44a783E.exit.loopexit_crit_edge.i.i.i.i.i.i.i": ; preds = %bb.bw
  store i64 %i.lj, ptr %i.av, align 8, !alias.scope !6962, !noalias !6956
  br label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h5b25cc8c060053d3E.exit.i.i.i.i.i"

bb.bx:                                            ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h06910994891be35cE.exit.i.i.i.i.i.i.i.i", %bb.bp, %bb.bp, %bb.bp, %bb.bp, %bb.bp, %bb.bp
  store i64 %i.lj, ptr %i.av, align 8, !alias.scope !6962, !noalias !6956
  store i64 %i.lj, ptr %i.aq, align 8, !alias.scope !6946, !noalias !6944
  br label %select.unfold.i.i.i

"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h5b25cc8c060053d3E.exit.i.i.i.i.i": ; preds = %"._ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h427e7d7cbc44a783E.exit.loopexit_crit_edge.i.i.i.i.i.i.i", %bb.bn
  %.lcssa1724.i.i.i = phi i64 [ %i.lj, %"._ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h427e7d7cbc44a783E.exit.loopexit_crit_edge.i.i.i.i.i.i.i" ], [ %.lcssa1725.i.i.i, %bb.bn ]
  %i.mb = phi ptr [ %i.lf, %"._ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h427e7d7cbc44a783E.exit.loopexit_crit_edge.i.i.i.i.i.i.i" ], [ %i.jq, %bb.bn ]
  store i8 1, ptr %i.ar, align 1, !alias.scope !6963, !noalias !6944
  %.not.i.i.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i, %.pre.i.i.i20.i.i.i
  %or.cond.not.i.i.i.i.i.i = select i1 %i.jp, i1 true, i1 %.not.i.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i, label %select.unfold.i.i.i, label %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.i.i.i"

select.unfold.i.i.i:                              ; preds = %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h5b25cc8c060053d3E.exit.i.i.i.i.i", %bb.bx
  %.lcssa1723.i.i.i = phi i64 [ %i.lj, %bb.bx ], [ %.lcssa1724.i.i.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h5b25cc8c060053d3E.exit.i.i.i.i.i" ]
  %i.mc = phi ptr [ %i.lf, %bb.bx ], [ %i.mb, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h5b25cc8c060053d3E.exit.i.i.i.i.i" ]
  %.pre.i.i.i19.i.i.i = phi i64 [ %i.lj, %bb.bx ], [ %.pre.i.i.i20.i.i.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h5b25cc8c060053d3E.exit.i.i.i.i.i" ]
  %i.md = phi i8 [ 0, %bb.bx ], [ 1, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h5b25cc8c060053d3E.exit.i.i.i.i.i" ]
  %.pn28.i.i.i = phi i64 [ %i.ju, %bb.bx ], [ %.pre2.i.i.i.i.i.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h5b25cc8c060053d3E.exit.i.i.i.i.i" ]
  %.sroa.4.1.i.i.i.i.i = sub nuw i64 %.pn28.i.i.i, %.pre.i.i.i20.i.i.i ; 15 uses
  %.not.i.i.i.i316 = icmp eq i64 %.sroa.4.1.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i316, label %bb.bm, label %bb.by

bb.by:                                            ; preds = %select.unfold.i.i.i
  %.sroa.0.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.pre.i.i.i20.i.i.i ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6964), !noalias !6934
  %cond = icmp eq i64 %.sroa.4.1.i.i.i.i.i, 1
  %i.me = load i8, ptr %.sroa.0.1.i.i.i.i.i, align 1, !alias.scope !6965, !noalias !6966 ; 2 uses
  br i1 %cond, label %bb.bz, label %thread-pre-split.i.i.i.i.i.i.i.i

bb.bz:                                            ; preds = %bb.by
  switch i8 %i.me, label %bb.cl [
    i8 43, label %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.thread.i.i.i.i.i
    i8 45, label %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.thread.i.i.i.i.i
  ]

thread-pre-split.i.i.i.i.i.i.i.i:                 ; preds = %bb.by
  switch i8 %i.me, label %bb.cl [
    i8 43, label %bb.ca
    i8 45, label %bb.cb
  ]

bb.ca:                                            ; preds = %thread-pre-split.i.i.i.i.i.i.i.i
  %i.mf = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 1 ; 2 uses
  %i.mg = add i64 %.sroa.4.1.i.i.i.i.i, -1        ; 2 uses
  %i.mh = icmp ult i64 %.sroa.4.1.i.i.i.i.i, 9
  br i1 %i.mh, label %.lr.ph129.i.i.i.i.i.i.i.i.preheader, label %.preheader102.i.i.i.i.i.i.i.i

bb.cb:                                            ; preds = %thread-pre-split.i.i.i.i.i.i.i.i
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 1 ; 2 uses
  %i.mj = icmp ult i64 %.sroa.4.1.i.i.i.i.i, 9
  br i1 %i.mj, label %.lr.ph.i.i.i.i.i.i.i.i, label %.lr.ph937.preheader

.lr.ph937.preheader:                              ; preds = %bb.cb
  %i.mk = add i64 %.sroa.4.1.i.i.i.i.i, -1
  br label %.lr.ph937

bb.cc:                                            ; preds = %bb.cm
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i.i.i.i941, i64 1
  %i.mm = add i64 %.sroa.27.0.i.i.i.i.i.i.i.i940, -1 ; 2 uses
  %i.mn = extractvalue { i32, i1 } %i.pg, 0       ; 2 uses
  %.not92.i.i.i.i.i.i.i.i = icmp eq i64 %i.mm, 0
  br i1 %.not92.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph942

.preheader108.i.i.i.i.i.i.i.i:                    ; preds = %bb.cd
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.03.2.i.i.i.i.i.i.i.i936, i64 1
  %i.mp = add i64 %.sroa.27.2.i.i.i.i.i.i.i.i935, -1 ; 2 uses
  %i.mq = extractvalue { i32, i1 } %i.na, 0       ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.mp, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph937

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %.preheader108.i.i.i.i.i.i.i.i, %bb.ce, %bb.cf, %bb.cg, %bb.ch, %bb.ci, %bb.cj, %bb.ck, %bb.cc, %bb.cn, %.preheader102.i.i.i.i.i.i.i.i
  %.sroa.033.3.i.i.i.i.i.i.i.i = phi i32 [ %i.ox, %bb.ck ], [ %i.pp, %bb.cn ], [ %i.mn, %bb.cc ], [ 0, %.preheader102.i.i.i.i.i.i.i.i ], [ %i.nh, %bb.ce ], [ %i.no, %bb.cf ], [ %i.nv, %bb.cg ], [ %i.oc, %bb.ch ], [ %i.oj, %bb.ci ], [ %i.oq, %bb.cj ], [ %i.mq, %.preheader108.i.i.i.i.i.i.i.i ]
  %i.mr = zext i32 %.sroa.033.3.i.i.i.i.i.i.i.i to i64
  %i.ms = shl nuw i64 %i.mr, 32
  br label %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.i.i.i.i.i

.lr.ph937:                                        ; preds = %.lr.ph937.preheader, %.preheader108.i.i.i.i.i.i.i.i
  %.sroa.03.2.i.i.i.i.i.i.i.i936 = phi ptr [ %i.mo, %.preheader108.i.i.i.i.i.i.i.i ], [ %i.mi, %.lr.ph937.preheader ] ; 2 uses
  %.sroa.27.2.i.i.i.i.i.i.i.i935 = phi i64 [ %i.mp, %.preheader108.i.i.i.i.i.i.i.i ], [ %i.mk, %.lr.ph937.preheader ]
  %.sroa.033.2.i.i.i.i.i.i.i.i934 = phi i32 [ %i.mq, %.preheader108.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph937.preheader ]
  %i.mt = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.033.2.i.i.i.i.i.i.i.i934, i32 10) ; 2 uses
  %i.mu = extractvalue { i32, i1 } %i.mt, 1
  %i.mv = load i8, ptr %.sroa.03.2.i.i.i.i.i.i.i.i936, align 1, !alias.scope !6965, !noalias !6966, !noundef !6
  %i.mw = zext i8 %i.mv to i32
  %i.mx = add nsw i32 %i.mw, -48                  ; 2 uses
  %i.my = icmp ugt i32 %i.mx, 9                   ; 2 uses
  %brmerge.i.i.i.i.i.i.i.i = select i1 %i.my, i1 true, i1 %i.mu
  br i1 %brmerge.i.i.i.i.i.i.i.i, label %.loopexit110.split.loop.exit116.i.i.i.i.i.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %.lr.ph937
  %i.mz = extractvalue { i32, i1 } %i.mt, 0
  %i.na = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.mz, i32 %i.mx) ; 2 uses
  %i.nb = extractvalue { i32, i1 } %i.na, 1
  br i1 %i.nb, label %.loopexit101.i.i.i.i.i.i.i.i, label %.preheader108.i.i.i.i.i.i.i.i

.loopexit104.split.loop.exit122.i.i.i.i.i.i.i.i:  ; preds = %.lr.ph942
  %.mux97.le.i.i.i.i.i.i.i.i = select i1 %i.pe, i64 256, i64 512
  br label %.loopexit101.i.i.i.i.i.i.i.i

.loopexit110.split.loop.exit116.i.i.i.i.i.i.i.i:  ; preds = %.lr.ph937
  %.mux.le.i.i.i.i.i.i.i.i = select i1 %i.my, i64 256, i64 768
  br label %.loopexit101.i.i.i.i.i.i.i.i

.loopexit101.i.i.i.i.i.i.i.i:                     ; preds = %bb.cd, %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.i.i.i.3, %.lr.ph.i.i.i.i.i.i.i.i.4, %.lr.ph.i.i.i.i.i.i.i.i.5, %.lr.ph.i.i.i.i.i.i.i.i.6, %bb.cm, %.lr.ph129.i.i.i.i.i.i.i.i, %.loopexit110.split.loop.exit116.i.i.i.i.i.i.i.i, %.loopexit104.split.loop.exit122.i.i.i.i.i.i.i.i
  %.sroa.12.2.i.i.i.i.i.i.i.i = phi i64 [ 256, %.lr.ph129.i.i.i.i.i.i.i.i ], [ 512, %bb.cm ], [ 256, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.mux97.le.i.i.i.i.i.i.i.i, %.loopexit104.split.loop.exit122.i.i.i.i.i.i.i.i ], [ %.mux.le.i.i.i.i.i.i.i.i, %.loopexit110.split.loop.exit116.i.i.i.i.i.i.i.i ], [ 256, %.lr.ph.i.i.i.i.i.i.i.i.6 ], [ 256, %.lr.ph.i.i.i.i.i.i.i.i.5 ], [ 256, %.lr.ph.i.i.i.i.i.i.i.i.4 ], [ 256, %.lr.ph.i.i.i.i.i.i.i.i.3 ], [ 256, %.lr.ph.i.i.i.i.i.i.i.i.2 ], [ 256, %.lr.ph.i.i.i.i.i.i.i.i.1 ], [ 768, %bb.cd ]
  %i.nc = or disjoint i64 %.sroa.12.2.i.i.i.i.i.i.i.i, 1
  br label %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.cb
  %i.nd = load i8, ptr %i.mi, align 1, !alias.scope !6965, !noalias !6966, !noundef !6 ; 2 uses
  %i.ne = add i8 %i.nd, -48
  %i.nf = icmp ult i8 %i.ne, 10
  br i1 %i.nf, label %bb.ce, label %.loopexit101.i.i.i.i.i.i.i.i

bb.ce:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ng = zext i8 %i.nd to i32
  %i.nh = sub nsw i32 48, %i.ng                   ; 2 uses
  %.not91.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.4.1.i.i.i.i.i, 2
  br i1 %.not91.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.i.1:                         ; preds = %bb.ce
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 2
  %i.nj = load i8, ptr %i.ni, align 1, !alias.scope !6965, !noalias !6966, !noundef !6
  %i.nk = zext i8 %i.nj to i32
  %i.nl = add nsw i32 %i.nk, -48                  ; 2 uses
  %i.nm = icmp ult i32 %i.nl, 10
  br i1 %i.nm, label %bb.cf, label %.loopexit101.i.i.i.i.i.i.i.i

bb.cf:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.1
  %i.nn = mul nsw i32 %i.nh, 10
  %i.no = sub nsw i32 %i.nn, %i.nl                ; 2 uses
  %.not91.i.i.i.i.i.i.i.i.1 = icmp eq i64 %.sroa.4.1.i.i.i.i.i, 3
  br i1 %.not91.i.i.i.i.i.i.i.i.1, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.i.i.i.2:                         ; preds = %bb.cf
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 3
  %i.nq = load i8, ptr %i.np, align 1, !alias.scope !6965, !noalias !6966, !noundef !6
  %i.nr = zext i8 %i.nq to i32
  %i.ns = add nsw i32 %i.nr, -48                  ; 2 uses
  %i.nt = icmp ult i32 %i.ns, 10
  br i1 %i.nt, label %bb.cg, label %.loopexit101.i.i.i.i.i.i.i.i

bb.cg:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.2
  %i.nu = mul nsw i32 %i.no, 10
  %i.nv = sub nsw i32 %i.nu, %i.ns                ; 2 uses
  %.not91.i.i.i.i.i.i.i.i.2 = icmp eq i64 %.sroa.4.1.i.i.i.i.i, 4
  br i1 %.not91.i.i.i.i.i.i.i.i.2, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.3

.lr.ph.i.i.i.i.i.i.i.i.3:                         ; preds = %bb.cg
  %i.nw = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 4
  %i.nx = load i8, ptr %i.nw, align 1, !alias.scope !6965, !noalias !6966, !noundef !6
  %i.ny = zext i8 %i.nx to i32
  %i.nz = add nsw i32 %i.ny, -48                  ; 2 uses
  %i.oa = icmp ult i32 %i.nz, 10
  br i1 %i.oa, label %bb.ch, label %.loopexit101.i.i.i.i.i.i.i.i

bb.ch:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.3
  %i.ob = mul nsw i32 %i.nv, 10
  %i.oc = sub i32 %i.ob, %i.nz                    ; 2 uses
  %.not91.i.i.i.i.i.i.i.i.3 = icmp eq i64 %.sroa.4.1.i.i.i.i.i, 5
  br i1 %.not91.i.i.i.i.i.i.i.i.3, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.4

.lr.ph.i.i.i.i.i.i.i.i.4:                         ; preds = %bb.ch
  %i.od = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 5
  %i.oe = load i8, ptr %i.od, align 1, !alias.scope !6965, !noalias !6966, !noundef !6
  %i.of = zext i8 %i.oe to i32
  %i.og = add nsw i32 %i.of, -48                  ; 2 uses
  %i.oh = icmp ult i32 %i.og, 10
  br i1 %i.oh, label %bb.ci, label %.loopexit101.i.i.i.i.i.i.i.i

bb.ci:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.4
  %i.oi = mul i32 %i.oc, 10
  %i.oj = sub i32 %i.oi, %i.og                    ; 2 uses
  %.not91.i.i.i.i.i.i.i.i.4 = icmp eq i64 %.sroa.4.1.i.i.i.i.i, 6
  br i1 %.not91.i.i.i.i.i.i.i.i.4, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.5

.lr.ph.i.i.i.i.i.i.i.i.5:                         ; preds = %bb.ci
  %i.ok = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 6
  %i.ol = load i8, ptr %i.ok, align 1, !alias.scope !6965, !noalias !6966, !noundef !6
  %i.om = zext i8 %i.ol to i32
  %i.on = add nsw i32 %i.om, -48                  ; 2 uses
  %i.oo = icmp ult i32 %i.on, 10
  br i1 %i.oo, label %bb.cj, label %.loopexit101.i.i.i.i.i.i.i.i

bb.cj:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.5
  %i.op = mul i32 %i.oj, 10
  %i.oq = sub i32 %i.op, %i.on                    ; 2 uses
  %.not91.i.i.i.i.i.i.i.i.5 = icmp eq i64 %.sroa.4.1.i.i.i.i.i, 7
  br i1 %.not91.i.i.i.i.i.i.i.i.5, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.6

.lr.ph.i.i.i.i.i.i.i.i.6:                         ; preds = %bb.cj
  %i.or = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 7
  %i.os = load i8, ptr %i.or, align 1, !alias.scope !6965, !noalias !6966, !noundef !6
  %i.ot = zext i8 %i.os to i32
  %i.ou = add nsw i32 %i.ot, -48                  ; 2 uses
  %i.ov = icmp ult i32 %i.ou, 10
  br i1 %i.ov, label %bb.ck, label %.loopexit101.i.i.i.i.i.i.i.i

bb.ck:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.6
  %i.ow = mul i32 %i.oq, 10
  %i.ox = sub i32 %i.ow, %i.ou
  br label %.loopexit.i.i.i.i.i.i.i.i

bb.cl:                                            ; preds = %bb.bz, %thread-pre-split.i.i.i.i.i.i.i.i
  %i.oy = icmp ult i64 %.sroa.4.1.i.i.i.i.i, 8
  br i1 %i.oy, label %.lr.ph129.i.i.i.i.i.i.i.i.preheader, label %.preheader102.i.i.i.i.i.i.i.i

.lr.ph129.i.i.i.i.i.i.i.i.preheader:              ; preds = %bb.ca, %bb.cl
  %.sroa.03.1128.i.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.0.1.i.i.i.i.i, %bb.cl ], [ %i.mf, %bb.ca ]
  %.sroa.27.1127.i.i.i.i.i.i.i.i.ph = phi i64 [ %.sroa.4.1.i.i.i.i.i, %bb.cl ], [ %i.mg, %bb.ca ]
  br label %.lr.ph129.i.i.i.i.i.i.i.i

.preheader102.i.i.i.i.i.i.i.i:                    ; preds = %bb.cl, %bb.ca
  %.sroa.27.0.ph.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.1.i.i.i.i.i, %bb.cl ], [ %i.mg, %bb.ca ] ; 2 uses
  %.sroa.03.0.ph.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.1.i.i.i.i.i, %bb.cl ], [ %i.mf, %bb.ca ]
  %.not92.i.i.i.i.i.i.i.i938 = icmp eq i64 %.sroa.27.0.ph.i.i.i.i.i.i.i.i, 0
  br i1 %.not92.i.i.i.i.i.i.i.i938, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph942

.lr.ph942:                                        ; preds = %.preheader102.i.i.i.i.i.i.i.i, %bb.cc
  %.sroa.03.0.i.i.i.i.i.i.i.i941 = phi ptr [ %i.ml, %bb.cc ], [ %.sroa.03.0.ph.i.i.i.i.i.i.i.i, %.preheader102.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.27.0.i.i.i.i.i.i.i.i940 = phi i64 [ %i.mm, %bb.cc ], [ %.sroa.27.0.ph.i.i.i.i.i.i.i.i, %.preheader102.i.i.i.i.i.i.i.i ]
  %.sroa.033.0.i.i.i.i.i.i.i.i939 = phi i32 [ %i.mn, %bb.cc ], [ 0, %.preheader102.i.i.i.i.i.i.i.i ]
  %i.oz = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.033.0.i.i.i.i.i.i.i.i939, i32 10) ; 2 uses
  %i.pa = extractvalue { i32, i1 } %i.oz, 1
  %i.pb = load i8, ptr %.sroa.03.0.i.i.i.i.i.i.i.i941, align 1, !alias.scope !6965, !noalias !6966, !noundef !6
  %i.pc = zext i8 %i.pb to i32
  %i.pd = add nsw i32 %i.pc, -48                  ; 2 uses
  %i.pe = icmp ugt i32 %i.pd, 9                   ; 2 uses
  %brmerge96.i.i.i.i.i.i.i.i = select i1 %i.pe, i1 true, i1 %i.pa
  br i1 %brmerge96.i.i.i.i.i.i.i.i, label %.loopexit104.split.loop.exit122.i.i.i.i.i.i.i.i, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph942
  %i.pf = extractvalue { i32, i1 } %i.oz, 0
  %i.pg = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.pf, i32 %i.pd) ; 2 uses
  %i.ph = extractvalue { i32, i1 } %i.pg, 1
  br i1 %i.ph, label %.loopexit101.i.i.i.i.i.i.i.i, label %bb.cc

.lr.ph129.i.i.i.i.i.i.i.i:                        ; preds = %.lr.ph129.i.i.i.i.i.i.i.i.preheader, %bb.cn
  %.sroa.03.1128.i.i.i.i.i.i.i.i = phi ptr [ %i.po, %bb.cn ], [ %.sroa.03.1128.i.i.i.i.i.i.i.i.ph, %.lr.ph129.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.27.1127.i.i.i.i.i.i.i.i = phi i64 [ %i.pn, %bb.cn ], [ %.sroa.27.1127.i.i.i.i.i.i.i.i.ph, %.lr.ph129.i.i.i.i.i.i.i.i.preheader ]
  %.sroa.033.1126.i.i.i.i.i.i.i.i = phi i32 [ %i.pp, %bb.cn ], [ 0, %.lr.ph129.i.i.i.i.i.i.i.i.preheader ]
  %i.pi = load i8, ptr %.sroa.03.1128.i.i.i.i.i.i.i.i, align 1, !alias.scope !6965, !noalias !6966, !noundef !6
  %i.pj = zext i8 %i.pi to i32
  %i.pk = add nsw i32 %i.pj, -48                  ; 2 uses
  %i.pl = icmp ult i32 %i.pk, 10
  br i1 %i.pl, label %bb.cn, label %.loopexit101.i.i.i.i.i.i.i.i

bb.cn:                                            ; preds = %.lr.ph129.i.i.i.i.i.i.i.i
  %i.pm = mul i32 %.sroa.033.1126.i.i.i.i.i.i.i.i, 10
  %i.pn = add nsw i64 %.sroa.27.1127.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %.sroa.03.1128.i.i.i.i.i.i.i.i, i64 1
  %i.pp = add i32 %i.pk, %i.pm                    ; 2 uses
  %.not93.i.i.i.i.i.i.i.i = icmp eq i64 %i.pn, 0
  br i1 %.not93.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph129.i.i.i.i.i.i.i.i

_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.i.i.i.i.i: ; preds = %.loopexit101.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i
  %.sroa.12.0.insert.insert.i.i.i.i.i.i.i.i = phi i64 [ %i.ms, %.loopexit.i.i.i.i.i.i.i.i ], [ %i.nc, %.loopexit101.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.pq = trunc i64 %.sroa.12.0.insert.insert.i.i.i.i.i.i.i.i to i1
  br i1 %i.pq, label %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.thread.i.i.i.i.i, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf35793715db690d9E.exit"

_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.thread.i.i.i.i.i: ; preds = %bb.bz, %bb.bz, %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.i.i.i.i.i
  %.sroa.12.0.insert.insert.i.i.i2.i.i.i.i.i = phi i64 [ %.sroa.12.0.insert.insert.i.i.i.i.i.i.i.i, %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.i.i.i.i.i ], [ 257, %bb.bz ], [ 257, %bb.bz ]
  %.sroa.03.0.insert.insert.i.i.i.i.i.i.i = lshr i64 %.sroa.12.0.insert.insert.i.i.i2.i.i.i.i.i, 8
  %.sroa.415.0.extract.trunc.i.i.i.i.i.i = trunc i64 %.sroa.03.0.insert.insert.i.i.i.i.i.i.i to i8 ; 2 uses
  %i.pr = icmp ult i8 %.sroa.415.0.extract.trunc.i.i.i.i.i.i, 5
  call void @llvm.assume(i1 %i.pr), !noalias !6934
  store i8 %.sroa.415.0.extract.trunc.i.i.i.i.i.i, ptr %i.jm, align 1, !alias.scope !6941, !noalias !6967
  br label %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.i.i.i"

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf35793715db690d9E.exit": ; preds = %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.i.i.i.i.i
  %.sroa.617.0.extract.shift.i.i.i.i.i.i = lshr i64 %.sroa.12.0.insert.insert.i.i.i.i.i.i.i.i, 32
  %.sroa.617.0.extract.trunc.i.i.i.i.i.i = trunc nuw i64 %.sroa.617.0.extract.shift.i.i.i.i.i.i to i32
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.co:                                            ; preds = %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h383208343ca4e4c2E.exit.i.i.i.i.i.i.i.i.i.i"
  %i.ps = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.c, align 8, !noalias !6929 ; 2 uses
  %i.pt = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.pt, label %.body298, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %.val7.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !6929, !nonnull !6, !noundef !6
  %i.pu = shl nuw i64 %.val.i.i.i.i.i.i.i.i, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i.i.i.i.i, i64 noundef %i.pu, i64 noundef range(i64 1, -9223372036854775807) 4) #47, !noalias !6929
  br label %.body298

"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.i.i.i": ; preds = %bb.bm, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h5b25cc8c060053d3E.exit.i.i.i.i.i", %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.thread.i.i.i.i.i
  %.sroa.0.0.copyload10.pre.i.i.i = load i64, ptr %i.c, align 8, !noalias !6968 ; 4 uses
  %.sroa.7.0.copyload12.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !6968 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6925
  %i.pv = load i8, ptr %i.e, align 1, !range !6969, !noalias !6924, !noundef !6 ; 2 uses
  %.not.not.i.i.i = icmp eq i8 %i.pv, 5
  br i1 %.not.not.i.i.i, label %bb.cs, label %bb.cq

"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.thread35.i.i.i": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6925
  %i.pw = load i8, ptr %i.e, align 1, !range !6969, !noalias !6924, !noundef !6 ; 2 uses
  %.not.not39.i.i.i = icmp eq i8 %i.pw, 5
  br i1 %.not.not39.i.i.i, label %.thread586, label %.thread42.i.i.i

.thread42.i.i.i:                                  ; preds = %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.thread35.i.i.i"
  %.sroa.7329.8.insert.ext331 = zext nneg i8 %i.pw to i64
  %i.px = inttoptr i64 %.sroa.7329.8.insert.ext331 to ptr
  br label %bb.cr

"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.thread.i.i.i": ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6925
  %i.py = load i8, ptr %i.e, align 1, !range !6969, !noalias !6924, !noundef !6 ; 2 uses
  %.not.not21.i.i.i = icmp eq i8 %i.py, 5
  br i1 %.not.not21.i.i.i, label %.thread586, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.thread.i.i.i"
  %.sroa.7329.8.insert.ext = zext nneg i8 %i.py to i64
  %i.pz = inttoptr i64 %.sroa.7329.8.insert.ext to ptr
  br label %.thread579

bb.cq:                                            ; preds = %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.i.i.i"
  %.sroa.7329.8.insert.ext335 = zext nneg i8 %i.pv to i64
  %i.qa = inttoptr i64 %.sroa.7329.8.insert.ext335 to ptr ; 2 uses
  %i.qb = icmp eq i64 %.sroa.0.0.copyload10.pre.i.i.i, 0
  br i1 %i.qb, label %.thread579, label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %.thread42.i.i.i
  %.sroa.7329.0 = phi ptr [ %i.qa, %bb.cq ], [ %i.px, %.thread42.i.i.i ]
  %.sroa.7.0.copyload124046.i.i.i = phi ptr [ %.sroa.7.0.copyload12.pre.i.i.i, %bb.cq ], [ %i.ix, %.thread42.i.i.i ] ; 2 uses
  %.sroa.0.0.copyload104145.i.i.i = phi i64 [ %.sroa.0.0.copyload10.pre.i.i.i, %bb.cq ], [ 4, %.thread42.i.i.i ]
  %i.qc = shl nuw i64 %.sroa.0.0.copyload104145.i.i.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload124046.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload124046.i.i.i, i64 noundef %i.qc, i64 noundef range(i64 1, -9223372036854775807) 4) #47, !noalias !6924
  br label %.thread579

.thread579:                                       ; preds = %.thread.i.i.i, %bb.cq, %bb.cr
  %.sroa.7329.1.ph = phi ptr [ %.sroa.7329.0, %bb.cr ], [ %i.qa, %bb.cq ], [ %i.pz, %.thread.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6924
  br label %.loopexit622

.thread586:                                       ; preds = %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.thread.i.i.i", %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.thread35.i.i.i"
  %.sroa.13.0.ph = phi i64 [ 1, %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.thread35.i.i.i" ], [ 0, %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.thread.i.i.i" ]
  %.sroa.7329.1.ph585 = phi ptr [ %i.ix, %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.thread35.i.i.i" ], [ inttoptr (i64 4 to ptr), %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.thread.i.i.i" ]
  %.sroa.0328.1.ph = phi i64 [ 4, %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.thread35.i.i.i" ], [ 0, %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.thread.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6924
  br label %bb.ct

bb.cs:                                            ; preds = %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6924
  %i.qd = icmp eq i64 %.sroa.0.0.copyload10.pre.i.i.i, -9223372036854775808
  br i1 %i.qd, label %.loopexit622, label %._crit_edge762, !prof !28

._crit_edge762:                                   ; preds = %bb.cs
  %.pre = load i64, ptr %i.ap, align 8, !alias.scope !6970, !noalias !6971
  br label %bb.ct

.loopexit622:                                     ; preds = %bb.cs, %.thread579
  %.sroa.7329.1583 = phi ptr [ %.sroa.7329.1.ph, %.thread579 ], [ %.sroa.7.0.copyload12.pre.i.i.i, %bb.cs ]
  %i.qe = ptrtoint ptr %.sroa.7329.1583 to i64
  %.sroa.7329.8.extract.trunc = trunc i64 %i.qe to i8
  %i.qf = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h035e5d8170740611E"(i8 noundef range(i8 0, 5) %.sroa.7329.8.extract.trunc)
          to label %.split unwind label %.loopexit.split-lp ; 2 uses

.split:                                           ; preds = %.loopexit622
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.experimental.noalias.scope.decl(metadata !6972)
  %.val4.i303 = load ptr, ptr %i.ao, align 8, !alias.scope !6972, !nonnull !6, !noundef !6 ; 2 uses
  %.val5.i = load i64, ptr %i.ap, align 8, !alias.scope !6972, !noundef !6 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6973)
  %i.qg = icmp eq i64 %.val5.i, 0
  br i1 %i.qg, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h936d1e48899e76e2E.exit.i", label %.lr.ph.i.i.i304

bb.ct:                                            ; preds = %._crit_edge762, %.thread586
  %i.qh = phi i64 [ %i.ax, %.thread586 ], [ %.pre, %._crit_edge762 ] ; 3 uses
  %.sroa.0328.1592 = phi i64 [ %.sroa.0328.1.ph, %.thread586 ], [ %.sroa.0.0.copyload10.pre.i.i.i, %._crit_edge762 ] ; 3 uses
  %.sroa.7329.1591 = phi ptr [ %.sroa.7329.1.ph585, %.thread586 ], [ %.sroa.7.0.copyload12.pre.i.i.i, %._crit_edge762 ] ; 3 uses
  %.sroa.13.0590 = phi i64 [ %.sroa.13.0.ph, %.thread586 ], [ %i.jl, %._crit_edge762 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !6970)
  %i.qi = load i64, ptr %i.p, align 8, !range !14, !alias.scope !6970, !noalias !6971, !noundef !6
  %i.qj = icmp eq i64 %i.qh, %i.qi
  br i1 %i.qj, label %bb.cu, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h25633f54cb56ee63E.exit"

bb.cu:                                            ; preds = %bb.ct
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h517e963947e5db70E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h25633f54cb56ee63E.exit" unwind label %bb.cv, !noalias !6971

bb.cv:                                            ; preds = %bb.cu
  %i.qk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ql = icmp eq i64 %.sroa.0328.1592, 0
  br i1 %i.ql, label %.body298, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7329.1591) ]
  %i.qm = shl nuw i64 %.sroa.0328.1592, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7329.1591, i64 noundef %i.qm, i64 noundef range(i64 1, -9223372036854775807) 4) #47, !noalias !6974
  br label %.body298

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h25633f54cb56ee63E.exit": ; preds = %bb.ct, %bb.cu
  %i.qn = load ptr, ptr %i.ao, align 8, !alias.scope !6970, !noalias !6971, !nonnull !6, !noundef !6 ; 3 uses
  %i.qo = getelementptr inbounds nuw [24 x i8], ptr %i.qn, i64 %i.qh ; 3 uses
  store i64 %.sroa.0328.1592, ptr %i.qo, align 8, !noalias !6970
  %.sroa.3343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  store ptr %.sroa.7329.1591, ptr %.sroa.3343.0..sroa_idx, align 8, !noalias !6970
  %.sroa.5344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qo, i64 16
  store i64 %.sroa.13.0590, ptr %.sroa.5344.0..sroa_idx, align 8, !noalias !6970
  %i.qp = add i64 %i.qh, 1                        ; 3 uses
  store i64 %i.qp, ptr %i.ap, align 8, !alias.scope !6970, !noalias !6971
  %i.qq = load i8, ptr %.sroa.5135.0..sroa_idx, align 1, !range !23, !alias.scope !6975, !noundef !6
  %i.qr = trunc nuw i8 %i.qq to i1
  br i1 %i.qr, label %.thread441, label %bb.i

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$i32$GT$$GT$$GT$17h89f0ba1dd99560b9E.exit": ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h013d146a6f90c5ccE.exit281.thread", %bb.cz, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h936d1e48899e76e2E.exit.i"
  %.sroa.0.4573 = phi ptr [ %i.qf, %bb.cz ], [ %.sroa.0.3569, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h013d146a6f90c5ccE.exit281.thread" ], [ %i.qf, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h936d1e48899e76e2E.exit.i" ] ; 2 uses
  %.sroa.9.4571 = phi i8 [ 5, %bb.cz ], [ %.sroa.9.3568, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h013d146a6f90c5ccE.exit281.thread" ], [ 5, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h936d1e48899e76e2E.exit.i" ] ; 2 uses
end_hunk_0
