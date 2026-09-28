Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/sqlite3?download=true
inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 125
loop-unroll.NumUnrolled: 423
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@fts5InitVtab:bb.a
  %.not8.i.i.i = icmp eq i8 %.pr316.i.i, 32
  br i1 %.not8.i.i.i, label %.preheader.i214thread-pre-split.i.i, label %.preheader.i214.fts5ConfigSkipWhitespace.exit_crit_edge.i.i, !llvm.loop !457

.preheader.i214.fts5ConfigSkipWhitespace.exit_crit_edge.i.i: ; preds = %.preheader.i214thread-pre-split.i.i
  br label %fts5ConfigSkipWhitespace.exit.i.i, !llvm.loop !457

fts5ConfigSkipWhitespace.exit.i.i:                ; preds = %.preheader.i214.fts5ConfigSkipWhitespace.exit_crit_edge.i.i, %bb.at
  %i.hf = phi i8 [ %.pr316.i.i, %.preheader.i214.fts5ConfigSkipWhitespace.exit_crit_edge.i.i ], [ %i.hd, %bb.at ] ; 2 uses
  %.0.i215.lcssa.i.i = phi ptr [ %i.he, %.preheader.i214.fts5ConfigSkipWhitespace.exit_crit_edge.i.i ], [ %.0142396.i.i, %bb.at ] ; 5 uses
  %i.hg = icmp eq i8 %i.hf, 39
  br i1 %i.hg, label %bb.au, label %.preheader341.i.i

.preheader341.i.i:                                ; preds = %fts5ConfigSkipWhitespace.exit.i.i, %sqlite3Fts5IsBareword.exit.thread.i.i.i
  %i.hh = phi i8 [ %.pr317.i.i, %sqlite3Fts5IsBareword.exit.thread.i.i.i ], [ %i.hf, %fts5ConfigSkipWhitespace.exit.i.i ] ; 2 uses
  %.0.i216.i.i = phi ptr [ %i.hl, %sqlite3Fts5IsBareword.exit.thread.i.i.i ], [ %.0.i215.lcssa.i.i, %fts5ConfigSkipWhitespace.exit.i.i ] ; 3 uses
  %.not.i.i217.i.i = icmp sgt i8 %i.hh, -1
  br i1 %.not.i.i217.i.i, label %sqlite3Fts5IsBareword.exit.i.i.i, label %sqlite3Fts5IsBareword.exit.thread.i.i.i

sqlite3Fts5IsBareword.exit.i.i.i:                 ; preds = %.preheader341.i.i
  %i.hi = zext nneg i8 %i.hh to i64
  %i.hj = getelementptr inbounds nuw i8, ptr @__const.sqlite3Fts5IsBareword.aBareword, i64 %i.hi
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !741
  %.not7.i.i.i = icmp eq i8 %i.hk, 0
  br i1 %.not7.i.i.i, label %fts5ConfigSkipBareword.exit.i.i, label %sqlite3Fts5IsBareword.exit.thread.i.i.i

sqlite3Fts5IsBareword.exit.thread.i.i.i:          ; preds = %sqlite3Fts5IsBareword.exit.i.i.i, %.preheader341.i.i
  %i.hl = getelementptr inbounds nuw i8, ptr %.0.i216.i.i, i64 1 ; 2 uses
  %.pr317.i.i = load i8, ptr %i.hl, align 1, !tbaa !741
  br label %.preheader341.i.i, !llvm.loop !458

fts5ConfigSkipBareword.exit.i.i:                  ; preds = %sqlite3Fts5IsBareword.exit.i.i.i
  %i.hm = icmp eq ptr %.0.i216.i.i, %.0.i215.lcssa.i.i
  br i1 %i.hm, label %.thread328.i.i, label %.thread321.i.i

bb.au:                                            ; preds = %fts5ConfigSkipWhitespace.exit.i.i
  %i.hn = tail call fastcc ptr @fts5ConfigSkipLiteral(ptr noundef nonnull %.0.i215.lcssa.i.i), !inline_history !7139 ; 2 uses
  %.not186.i.i = icmp eq ptr %i.hn, null
  br i1 %.not186.i.i, label %.thread328.i.i, label %.thread321.i.i

.thread321.i.i:                                   ; preds = %bb.au, %fts5ConfigSkipBareword.exit.i.i
  %.1143324.i.i = phi ptr [ %i.hn, %bb.au ], [ %.0.i216.i.i, %fts5ConfigSkipBareword.exit.i.i ] ; 2 uses
  %i.ho = ptrtoint ptr %.1143324.i.i to i64
  %i.hp = ptrtoint ptr %.0.i215.lcssa.i.i to i64
  %i.hq = sub i64 %i.ho, %i.hp                    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0398.i.i, ptr nonnull align 1 %.0.i215.lcssa.i.i, i64 %i.hq, i1 false)
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %.0141397.i.i
  store ptr %.0398.i.i, ptr %i.hr, align 8, !tbaa !747
  %i.hs = load i8, ptr %.0398.i.i, align 1, !tbaa !741 ; 3 uses
  switch i8 %i.hs, label %.preheader.i220.i.i.preheader [
    i8 96, label %bb.av
    i8 91, label %bb.av
    i8 39, label %bb.av
    i8 34, label %bb.av
  ]

bb.av:                                            ; preds = %.thread321.i.i, %.thread321.i.i, %.thread321.i.i, %.thread321.i.i
  %i.ht = icmp eq i8 %i.hs, 91
  %spec.store.select.i.i.i.i = select i1 %i.ht, i8 93, i8 %i.hs ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.0398.i.i, i64 1
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !741 ; 2 uses
  %.not26.i.i.i.i = icmp eq i8 %i.hv, 0
  br i1 %.not26.i.i.i.i, label %fts5Dequote.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.av, %bb.ay
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.ay ], [ 0, %bb.av ] ; 3 uses
  %i.hw = phi i8 [ %i.ig, %bb.ay ], [ %i.hv, %bb.av ] ; 2 uses
  %.028.i.i.i.i = phi i32 [ %.1.i.i.i.i, %bb.ay ], [ 0, %bb.av ]
  %.02127.i.i.i.i = phi i32 [ %.122.i.i.i.i, %bb.ay ], [ 1, %bb.av ] ; 2 uses
  %i.hx = icmp eq i8 %i.hw, %spec.store.select.i.i.i.i
  %i.hy = add nsw i32 %.02127.i.i.i.i, 1          ; 2 uses
  br i1 %i.hx, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %.lr.ph.i.i.i.i
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr inbounds i8, ptr %.0398.i.i, i64 %i.hz
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !741
  %.not25.i.i.i.i = icmp eq i8 %i.ib, %spec.store.select.i.i.i.i
  br i1 %.not25.i.i.i.i, label %bb.ax, label %fts5Dequote.exit.i.i.i

bb.ax:                                            ; preds = %bb.aw
  %i.ic = add nsw i32 %.02127.i.i.i.i, 2
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.lr.ph.i.i.i.i
  %.sink.i.i.i.i = phi i8 [ %spec.store.select.i.i.i.i, %bb.ax ], [ %i.hw, %.lr.ph.i.i.i.i ]
  %.122.i.i.i.i = phi i32 [ %i.ic, %bb.ax ], [ %i.hy, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.0398.i.i, i64 %indvars.iv.i.i.i.i
  store i8 %.sink.i.i.i.i, ptr %i.id, align 1, !tbaa !741
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1
  %.1.i.i.i.i = add nuw nsw i32 %.028.i.i.i.i, 1  ; 2 uses
  %i.ie = sext i32 %.122.i.i.i.i to i64
  %i.if = getelementptr inbounds i8, ptr %.0398.i.i, i64 %i.ie
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !741 ; 2 uses
  %.not.i.i218.i.i = icmp eq i8 %i.ig, 0
  br i1 %.not.i.i218.i.i, label %._crit_edge.loopexit.i.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !459

._crit_edge.loopexit.i.loopexit.i.i.i:            ; preds = %bb.ay
  %i.ih = zext nneg i32 %.1.i.i.i.i to i64
  br label %fts5Dequote.exit.i.i.i

fts5Dequote.exit.i.i.i:                           ; preds = %bb.aw, %._crit_edge.loopexit.i.loopexit.i.i.i, %bb.av
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.av ], [ %i.ih, %._crit_edge.loopexit.i.loopexit.i.i.i ], [ %indvars.iv.i.i.i.i, %bb.aw ]
  %i.ii = getelementptr inbounds nuw i8, ptr %.0398.i.i, i64 %.0.lcssa.i.i.i.i
  store i8 0, ptr %i.ii, align 1, !tbaa !741
  br label %.preheader.i220.i.i.preheader

.preheader.i220.i.i.preheader:                    ; preds = %fts5Dequote.exit.i.i.i, %.thread321.i.i
  br label %.preheader.i220.i.i

.preheader.i220.i.i:                              ; preds = %.preheader.i220.i.i.preheader, %.preheader.i220.i.i
  %.0.i221.i.i = phi ptr [ %i.ik, %.preheader.i220.i.i ], [ %.1143324.i.i, %.preheader.i220.i.i.preheader ] ; 3 uses
  %i.ij = load i8, ptr %.0.i221.i.i, align 1, !tbaa !741 ; 2 uses
  %.not8.i222.i.i = icmp eq i8 %i.ij, 32
  %i.ik = getelementptr inbounds nuw i8, ptr %.0.i221.i.i, i64 1
  br i1 %.not8.i222.i.i, label %.preheader.i220.i.i, label %fts5ConfigSkipWhitespace.exit224.i.i, !llvm.loop !457

fts5ConfigSkipWhitespace.exit224.i.i:             ; preds = %.preheader.i220.i.i
  %i.il = getelementptr i8, ptr %.0398.i.i, i64 %i.hq
  %i.im = getelementptr i8, ptr %i.il, i64 1
  %i.in = add nuw nsw i64 %.0141397.i.i, 1
  br label %bb.at, !llvm.loop !7144

.critedge3.i.i:                                   ; preds = %bb.at
  store ptr %i.gy, ptr %i.bt, align 8, !tbaa !3207
  %i.io = trunc i64 %.0141397.i.i to i32
  store i32 %i.io, ptr %i.bu, align 8, !tbaa !3208
  br label %fts5ConfigParseSpecial.exit.i

.thread328.i.i:                                   ; preds = %bb.au, %fts5ConfigSkipBareword.exit.i.i, %bb.ar
  %.str.1620.sink.i.i = phi ptr [ @.str.1619, %bb.ar ], [ @.str.1620, %fts5ConfigSkipBareword.exit.i.i ], [ @.str.1620, %bb.au ]
  %i.ip = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull %.str.1620.sink.i.i), !inline_history !7139
  store ptr %i.ip, ptr %6, align 8, !tbaa !747
  %i.iq = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i225.i.i = icmp eq i32 %i.iq, 0
  br i1 %.not.i225.i.i, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %.thread328.i.i
  %i.ir = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i226.i.i = icmp eq ptr %i.ir, null
  br i1 %.not.i.i226.i.i, label %sqlite3_mutex_enter.exit.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.is = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.is(ptr noundef nonnull %i.ir) #59, !inline_history !7145
  br label %sqlite3_mutex_enter.exit.i.i.i

sqlite3_mutex_enter.exit.i.i.i:                   ; preds = %bb.ba, %bb.az
  %i.it = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.iu = tail call i32 %i.it(ptr noundef nonnull %i.gy) #59, !inline_history !7146
  %i.iv = sext i32 %i.iu to i64
  %i.iw = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.ix = sub nsw i64 %i.iw, %i.iv
  store i64 %i.ix, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.iy = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.iz = add nsw i64 %i.iy, -1
  store i64 %i.iz, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.ja = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.ja(ptr noundef nonnull %i.gy) #59, !inline_history !7147
  %i.jb = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i.i.i = icmp eq ptr %i.jb, null
  br i1 %.not.i4.i.i.i, label %fts5ConfigParseSpecial.exit.i, label %bb.bb

bb.bb:                                            ; preds = %sqlite3_mutex_enter.exit.i.i.i
  %i.jc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.jc(ptr noundef nonnull %i.jb) #59, !inline_history !7148
  br label %fts5ConfigParseSpecial.exit.i

bb.bc:                                            ; preds = %.thread328.i.i
  %i.jd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.jd(ptr noundef nonnull %i.gy) #59, !inline_history !7147
  br label %fts5ConfigParseSpecial.exit.i

bb.bd:                                            ; preds = %.lr.ph.i229.preheader.i.i
  %exitcond467.not.i.i = icmp eq i64 %i.cw, 0
  br i1 %exitcond467.not.i.i, label %sqlite3_strnicmp.exit236.thread.i.i, label %.lr.ph.i229.1.i.i

.lr.ph.i229.1.i.i:                                ; preds = %bb.bd
  %i.je = getelementptr inbounds nuw i8, ptr %i.cq, i64 1
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !741 ; 2 uses
  %i.jg = and i8 %i.jf, -33
  %i.jh = icmp eq i8 %i.jg, 79
  br i1 %i.jh, label %bb.be, label %sqlite3_strnicmp.exit276.i.i

bb.be:                                            ; preds = %.lr.ph.i229.1.i.i
  %exitcond467.1.not.i.i = icmp eq i64 %i.cw, 1
  br i1 %exitcond467.1.not.i.i, label %sqlite3_strnicmp.exit236.thread.i.i, label %.lr.ph.i229.2.i.i

.lr.ph.i229.2.i.i:                                ; preds = %bb.be
  %i.ji = getelementptr inbounds nuw i8, ptr %i.cq, i64 2
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !741 ; 3 uses
  %i.jk = and i8 %i.jj, -33                       ; 2 uses
  %i.jl = icmp eq i8 %i.jk, 78
  br i1 %i.jl, label %bb.bf, label %sqlite3_strnicmp.exit266.i.i

bb.bf:                                            ; preds = %.lr.ph.i229.2.i.i
  %exitcond467.2.not.i.i = icmp eq i64 %i.cw, 2
  br i1 %exitcond467.2.not.i.i, label %sqlite3_strnicmp.exit236.thread.i.i, label %.lr.ph.i229.3.i.i

.lr.ph.i229.3.i.i:                                ; preds = %bb.bf
  %i.jm = getelementptr inbounds nuw i8, ptr %i.cq, i64 3
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !741 ; 3 uses
  %i.jo = and i8 %i.jn, -33
  %i.jp = icmp eq i8 %i.jo, 84
  br i1 %i.jp, label %bb.bg, label %sqlite3_strnicmp.exit246.i.i.thread325

bb.bg:                                            ; preds = %.lr.ph.i229.3.i.i
  %exitcond467.3.not.i.i = icmp eq i64 %i.cw, 3
  br i1 %exitcond467.3.not.i.i, label %sqlite3_strnicmp.exit236.thread.i.i, label %.lr.ph.i229.4.i.i

.lr.ph.i229.4.i.i:                                ; preds = %bb.bg
  %i.jq = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !741 ; 3 uses
  %i.js = and i8 %i.jr, -33
  %i.jt = icmp eq i8 %i.js, 69
  br i1 %i.jt, label %bb.bh, label %sqlite3_strnicmp.exit236.i.i.thread323

bb.bh:                                            ; preds = %.lr.ph.i229.4.i.i
  %exitcond467.4.not.i.i = icmp eq i64 %i.cw, 4
  br i1 %exitcond467.4.not.i.i, label %sqlite3_strnicmp.exit236.thread.i.i, label %.lr.ph.i229.5.i.i

.lr.ph.i229.5.i.i:                                ; preds = %bb.bh
  %i.ju = getelementptr inbounds nuw i8, ptr %i.cq, i64 5
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !741 ; 2 uses
  %i.jw = and i8 %i.jv, -33
  %i.jx = icmp eq i8 %i.jw, 78
  br i1 %i.jx, label %bb.bi, label %sqlite3_strnicmp.exit236.i.i

bb.bi:                                            ; preds = %.lr.ph.i229.5.i.i
  %exitcond467.5.not.i.i = icmp eq i64 %i.cw, 5
  br i1 %exitcond467.5.not.i.i, label %sqlite3_strnicmp.exit236.thread.i.i, label %.lr.ph.i229.6.i.i

.lr.ph.i229.6.i.i:                                ; preds = %bb.bi
  %i.jy = load i8, ptr %scevgep.i.i, align 1, !tbaa !741 ; 2 uses
  %i.jz = and i8 %i.jy, -33
  %i.ka = icmp eq i8 %i.jz, 84
  br i1 %i.ka, label %bb.bj, label %sqlite3_strnicmp.exit236.i.i

bb.bj:                                            ; preds = %.lr.ph.i229.6.i.i
  %exitcond467.6.not.i.i = icmp eq i64 %i.cw, 6
  br i1 %exitcond467.6.not.i.i, label %sqlite3_strnicmp.exit236.thread.i.i, label %.sqlite3_strnicmp.exit236.i_crit_edge.i

.sqlite3_strnicmp.exit236.i_crit_edge.i:          ; preds = %bb.bj
  %.pre240.i = load i8, ptr %scevgep464.i.i, align 1, !tbaa !741
  br label %sqlite3_strnicmp.exit236.i.i

sqlite3_strnicmp.exit236.i.i:                     ; preds = %.sqlite3_strnicmp.exit236.i_crit_edge.i, %.lr.ph.i229.6.i.i, %.lr.ph.i229.5.i.i
  %i.kb = phi i8 [ %i.jy, %.lr.ph.i229.6.i.i ], [ %.pre240.i, %.sqlite3_strnicmp.exit236.i_crit_edge.i ], [ %i.jv, %.lr.ph.i229.5.i.i ]
  %i.kc = phi i32 [ 116, %.lr.ph.i229.6.i.i ], [ 0, %.sqlite3_strnicmp.exit236.i_crit_edge.i ], [ 110, %.lr.ph.i229.5.i.i ]
  %i.kd = zext i8 %i.kb to i64
  %i.ke = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.kd
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !741
  %i.kg = zext i8 %i.kf to i32
  %i.kh = icmp eq i32 %i.kc, %i.kg
  br i1 %i.kh, label %sqlite3_strnicmp.exit236.thread.i.i, label %.lr.ph.i239.preheader.i.i

sqlite3_strnicmp.exit236.i.i.thread323:           ; preds = %.lr.ph.i229.4.i.i
  %9 = and i8 %i.jr, -33
  %10 = icmp eq i8 %9, 69
  br i1 %10, label %sqlite3_strnicmp.exit236.thread.i.i, label %sqlite3_strnicmp.exit246.i.i

.lr.ph.i239.preheader.i.i:                        ; preds = %sqlite3_strnicmp.exit236.i.i
  %scevgep468.i.i = getelementptr i8, ptr %i.cq, i64 18
  %i.ki = getelementptr inbounds nuw i8, ptr %i.cq, i64 5
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !741 ; 2 uses
  %i.kk = and i8 %i.kj, -33
  %i.kl = icmp eq i8 %i.kk, 78
  br i1 %i.kl, label %bb.bo, label %sqlite3_strnicmp.exit246.i.i

sqlite3_strnicmp.exit236.thread.i.i:              ; preds = %sqlite3_strnicmp.exit236.i.i.thread323, %sqlite3_strnicmp.exit236.i.i, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd
  %i.km = load i32, ptr %i.br, align 8, !tbaa !3076
  %.not180.i.i = icmp eq i32 %i.km, 0
  br i1 %.not180.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %sqlite3_strnicmp.exit236.thread.i.i
  %i.kn = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1621), !inline_history !7139
  store ptr %i.kn, ptr %6, align 8, !tbaa !747
  br label %fts5ConfigParseSpecial.exit.i

bb.bl:                                            ; preds = %sqlite3_strnicmp.exit236.thread.i.i
  %i.ko = load i8, ptr %i.cr, align 1, !tbaa !741
  %.not181.i.i = icmp eq i8 %i.ko, 0
  br i1 %.not181.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  store i32 2, ptr %i.br, align 8, !tbaa !3076
  %i.kp = load ptr, ptr %i.p, align 8, !tbaa !3073
  %i.kq = call ptr (ptr, ptr, ...) @sqlite3Fts5Mprintf(ptr noundef %i.d, ptr noundef nonnull @.str.1622, ptr noundef %i.kp, ptr noundef nonnull %i.cr), !inline_history !7139
  store ptr %i.kq, ptr %i.bs, align 8, !tbaa !3122
  %.pre499.i.i = load i32, ptr %i.d, align 4, !tbaa !576
  br label %fts5ConfigParseSpecial.exit.i

bb.bn:                                            ; preds = %bb.bl
  store i32 1, ptr %i.br, align 8, !tbaa !3076
  br label %fts5ConfigParseSpecial.exit.i

bb.bo:                                            ; preds = %.lr.ph.i239.preheader.i.i
  %exitcond471.5.not.i.i = icmp eq i64 %i.cw, 5
  br i1 %exitcond471.5.not.i.i, label %sqlite3_strnicmp.exit246.thread.i.i, label %.lr.ph.i239.6.i.i

.lr.ph.i239.6.i.i:                                ; preds = %bb.bo
  %i.kr = load i8, ptr %scevgep.i.i, align 1, !tbaa !741 ; 2 uses
  %i.ks = and i8 %i.kr, -33
  %i.kt = icmp eq i8 %i.ks, 84
  br i1 %i.kt, label %bb.bp, label %sqlite3_strnicmp.exit246.i.i

bb.bp:                                            ; preds = %.lr.ph.i239.6.i.i
  %exitcond471.6.not.i.i = icmp eq i64 %i.cw, 6
  br i1 %exitcond471.6.not.i.i, label %sqlite3_strnicmp.exit246.thread.i.i, label %.lr.ph.i239.7.i.i

.lr.ph.i239.7.i.i:                                ; preds = %bb.bp
  %i.ku = load i8, ptr %scevgep464.i.i, align 1, !tbaa !741 ; 2 uses
  %i.kv = and i8 %i.ku, -33
  %i.kw = icmp eq i8 %i.kv, 76
  br i1 %i.kw, label %bb.bq, label %sqlite3_strnicmp.exit246.i.i

bb.bq:                                            ; preds = %.lr.ph.i239.7.i.i
  %exitcond471.7.not.i.i = icmp eq i64 %i.cw, 7
  br i1 %exitcond471.7.not.i.i, label %sqlite3_strnicmp.exit246.thread.i.i, label %.lr.ph.i239.8.i.i

.lr.ph.i239.8.i.i:                                ; preds = %bb.bq
  %i.kx = load i8, ptr %scevgep461.i.i, align 1, !tbaa !741 ; 2 uses
  %i.ky = and i8 %i.kx, -33
  %i.kz = icmp eq i8 %i.ky, 69
  br i1 %i.kz, label %bb.br, label %sqlite3_strnicmp.exit246.i.i

bb.br:                                            ; preds = %.lr.ph.i239.8.i.i
  %exitcond471.8.not.i.i = icmp eq i64 %i.cw, 8
  br i1 %exitcond471.8.not.i.i, label %sqlite3_strnicmp.exit246.thread.i.i, label %.lr.ph.i239.9.i.i

.lr.ph.i239.9.i.i:                                ; preds = %bb.br
  %i.la = getelementptr inbounds nuw i8, ptr %i.cq, i64 9
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !741 ; 2 uses
  %i.lc = and i8 %i.lb, -33
  %i.ld = icmp eq i8 %i.lc, 83
  br i1 %i.ld, label %bb.bs, label %sqlite3_strnicmp.exit246.i.i

bb.bs:                                            ; preds = %.lr.ph.i239.9.i.i
  %exitcond471.9.not.i.i = icmp eq i64 %i.cw, 9
  br i1 %exitcond471.9.not.i.i, label %sqlite3_strnicmp.exit246.thread.i.i, label %.lr.ph.i239.10.i.i

.lr.ph.i239.10.i.i:                               ; preds = %bb.bs
  %i.le = getelementptr inbounds nuw i8, ptr %i.cq, i64 10
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !741 ; 2 uses
  %i.lg = and i8 %i.lf, -33
  %i.lh = icmp eq i8 %i.lg, 83
  br i1 %i.lh, label %bb.bt, label %sqlite3_strnicmp.exit246.i.i

bb.bt:                                            ; preds = %.lr.ph.i239.10.i.i
  %exitcond471.10.not.i.i = icmp eq i64 %i.cw, 10
  br i1 %exitcond471.10.not.i.i, label %sqlite3_strnicmp.exit246.thread.i.i, label %.lr.ph.i239.11.i.i

.lr.ph.i239.11.i.i:                               ; preds = %bb.bt
  %i.li = getelementptr inbounds nuw i8, ptr %i.cq, i64 11
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !741 ; 2 uses
  %i.lk = icmp eq i8 %i.lj, 95
  br i1 %i.lk, label %bb.bu, label %sqlite3_strnicmp.exit246.i.i

bb.bu:                                            ; preds = %.lr.ph.i239.11.i.i
  %exitcond471.11.not.i.i = icmp eq i64 %i.cw, 11
  br i1 %exitcond471.11.not.i.i, label %sqlite3_strnicmp.exit246.thread.i.i, label %.lr.ph.i239.12.i.i

.lr.ph.i239.12.i.i:                               ; preds = %bb.bu
  %i.ll = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !741 ; 2 uses
  %i.ln = and i8 %i.lm, -33
  %i.lo = icmp eq i8 %i.ln, 68
  br i1 %i.lo, label %bb.bv, label %sqlite3_strnicmp.exit246.i.i

bb.bv:                                            ; preds = %.lr.ph.i239.12.i.i
  %exitcond471.12.not.i.i = icmp eq i64 %i.cw, 12
  br i1 %exitcond471.12.not.i.i, label %sqlite3_strnicmp.exit246.thread.i.i, label %.lr.ph.i239.13.i.i

.lr.ph.i239.13.i.i:                               ; preds = %bb.bv
  %i.lp = getelementptr inbounds nuw i8, ptr %i.cq, i64 13
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !741 ; 2 uses
  %i.lr = and i8 %i.lq, -33
  %i.ls = icmp eq i8 %i.lr, 69
  br i1 %i.ls, label %bb.bw, label %sqlite3_strnicmp.exit246.i.i

bb.bw:                                            ; preds = %.lr.ph.i239.13.i.i
  %exitcond471.13.not.i.i = icmp eq i64 %i.cw, 13
  br i1 %exitcond471.13.not.i.i, label %sqlite3_strnicmp.exit246.thread.i.i, label %.lr.ph.i239.14.i.i

.lr.ph.i239.14.i.i:                               ; preds = %bb.bw
  %i.lt = getelementptr inbounds nuw i8, ptr %i.cq, i64 14
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !741 ; 2 uses
  %i.lv = and i8 %i.lu, -33
  %i.lw = icmp eq i8 %i.lv, 76
  br i1 %i.lw, label %bb.bx, label %sqlite3_strnicmp.exit246.i.i

bb.bx:                                            ; preds = %.lr.ph.i239.14.i.i
  %exitcond471.14.not.i.i = icmp eq i64 %i.cw, 14
  br i1 %exitcond471.14.not.i.i, label %sqlite3_strnicmp.exit246.thread.i.i, label %.lr.ph.i239.15.i.i

.lr.ph.i239.15.i.i:                               ; preds = %bb.bx
  %i.lx = getelementptr inbounds nuw i8, ptr %i.cq, i64 15
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !741 ; 2 uses
  %i.lz = and i8 %i.ly, -33
  %i.ma = icmp eq i8 %i.lz, 69
  br i1 %i.ma, label %bb.by, label %sqlite3_strnicmp.exit246.i.i

bb.by:                                            ; preds = %.lr.ph.i239.15.i.i
  %exitcond471.15.not.i.i = icmp eq i64 %i.cw, 15
  br i1 %exitcond471.15.not.i.i, label %sqlite3_strnicmp.exit246.thread.i.i, label %.lr.ph.i239.16.i.i

.lr.ph.i239.16.i.i:                               ; preds = %bb.by
  %i.mb = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !741 ; 2 uses
  %i.md = and i8 %i.mc, -33
  %i.me = icmp eq i8 %i.md, 84
  br i1 %i.me, label %bb.bz, label %sqlite3_strnicmp.exit246.i.i

bb.bz:                                            ; preds = %.lr.ph.i239.16.i.i
  %exitcond471.16.not.i.i = icmp eq i64 %i.cw, 16
  br i1 %exitcond471.16.not.i.i, label %sqlite3_strnicmp.exit246.thread.i.i, label %.lr.ph.i239.17.i.i

.lr.ph.i239.17.i.i:                               ; preds = %bb.bz
  %i.mf = getelementptr inbounds nuw i8, ptr %i.cq, i64 17
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !741 ; 2 uses
  %i.mh = and i8 %i.mg, -33
  %i.mi = icmp eq i8 %i.mh, 69
  br i1 %i.mi, label %bb.ca, label %sqlite3_strnicmp.exit246.i.i

bb.ca:                                            ; preds = %.lr.ph.i239.17.i.i
  %exitcond471.17.not.i.i = icmp eq i64 %i.cw, 17
  br i1 %exitcond471.17.not.i.i, label %sqlite3_strnicmp.exit246.thread.i.i, label %.sqlite3_strnicmp.exit246.i_crit_edge.i

.sqlite3_strnicmp.exit246.i_crit_edge.i:          ; preds = %bb.ca
  %.pre241.i = load i8, ptr %scevgep468.i.i, align 1, !tbaa !741
  br label %sqlite3_strnicmp.exit246.i.i

sqlite3_strnicmp.exit246.i.i:                     ; preds = %sqlite3_strnicmp.exit236.i.i.thread323, %.sqlite3_strnicmp.exit246.i_crit_edge.i, %.lr.ph.i239.17.i.i, %.lr.ph.i239.16.i.i, %.lr.ph.i239.15.i.i, %.lr.ph.i239.14.i.i, %.lr.ph.i239.13.i.i, %.lr.ph.i239.12.i.i, %.lr.ph.i239.11.i.i, %.lr.ph.i239.10.i.i, %.lr.ph.i239.9.i.i, %.lr.ph.i239.8.i.i, %.lr.ph.i239.7.i.i, %.lr.ph.i239.6.i.i, %.lr.ph.i239.preheader.i.i
  %i.mj = phi i8 [ %.pre241.i, %.sqlite3_strnicmp.exit246.i_crit_edge.i ], [ %i.mg, %.lr.ph.i239.17.i.i ], [ %i.mc, %.lr.ph.i239.16.i.i ], [ %i.ly, %.lr.ph.i239.15.i.i ], [ %i.lu, %.lr.ph.i239.14.i.i ], [ %i.jr, %sqlite3_strnicmp.exit236.i.i.thread323 ], [ %i.kj, %.lr.ph.i239.preheader.i.i ], [ %i.kr, %.lr.ph.i239.6.i.i ], [ %i.ku, %.lr.ph.i239.7.i.i ], [ %i.kx, %.lr.ph.i239.8.i.i ], [ %i.lb, %.lr.ph.i239.9.i.i ], [ %i.lf, %.lr.ph.i239.10.i.i ], [ %i.lj, %.lr.ph.i239.11.i.i ], [ %i.lm, %.lr.ph.i239.12.i.i ], [ %i.lq, %.lr.ph.i239.13.i.i ]
  %i.mk = phi i32 [ 0, %.sqlite3_strnicmp.exit246.i_crit_edge.i ], [ 101, %.lr.ph.i239.17.i.i ], [ 116, %.lr.ph.i239.16.i.i ], [ 101, %.lr.ph.i239.15.i.i ], [ 108, %.lr.ph.i239.14.i.i ], [ 101, %sqlite3_strnicmp.exit236.i.i.thread323 ], [ 110, %.lr.ph.i239.preheader.i.i ], [ 116, %.lr.ph.i239.6.i.i ], [ 108, %.lr.ph.i239.7.i.i ], [ 101, %.lr.ph.i239.8.i.i ], [ 115, %.lr.ph.i239.9.i.i ], [ 115, %.lr.ph.i239.10.i.i ], [ 95, %.lr.ph.i239.11.i.i ], [ 100, %.lr.ph.i239.12.i.i ], [ 101, %.lr.ph.i239.13.i.i ]
  %i.ml = zext i8 %i.mj to i64
  %i.mm = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ml
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !741
  %i.mo = zext i8 %i.mn to i32
  %i.mp = icmp eq i32 %i.mk, %i.mo
  br i1 %i.mp, label %sqlite3_strnicmp.exit246.thread.i.i, label %.lr.ph.i249.preheader.i.i

sqlite3_strnicmp.exit246.i.i.thread325:           ; preds = %.lr.ph.i229.3.i.i
  %11 = and i8 %i.jn, -33
  %12 = icmp eq i8 %11, 84
  br i1 %12, label %sqlite3_strnicmp.exit246.thread.i.i, label %sqlite3_strnicmp.exit266.i.i

.lr.ph.i249.preheader.i.i:                        ; preds = %sqlite3_strnicmp.exit246.i.i
  %scevgep472.i.i = getelementptr i8, ptr %i.cq, i64 21
  %i.mq = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !741 ; 3 uses
  %i.ms = and i8 %i.mr, -33
  %i.mt = icmp eq i8 %i.ms, 69
  br i1 %i.mt, label %bb.ce, label %sqlite3_strnicmp.exit256.i.i.thread327

sqlite3_strnicmp.exit246.thread.i.i:              ; preds = %sqlite3_strnicmp.exit246.i.i.thread325, %sqlite3_strnicmp.exit246.i.i, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo
  %i.mu = load i8, ptr %i.cr, align 1, !tbaa !741 ; 2 uses
  %i.mv = and i8 %i.mu, -2
  %switch.i.i = icmp eq i8 %i.mv, 48
  br i1 %switch.i.i, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %sqlite3_strnicmp.exit246.thread.i.i
  %i.mw = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !741
  %.not179.i.i = icmp eq i8 %i.mx, 0
  br i1 %.not179.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %sqlite3_strnicmp.exit246.thread.i.i
  %i.my = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1624), !inline_history !7139
  store ptr %i.my, ptr %6, align 8, !tbaa !747
  br label %fts5ConfigParseSpecial.exit.i

bb.cd:                                            ; preds = %bb.cb
  %i.mz = icmp eq i8 %i.mu, 49
  %i.na = zext i1 %i.mz to i32
  store i32 %i.na, ptr %i.bq, align 4, !tbaa !3160
  br label %fts5ConfigParseSpecial.exit.i

bb.ce:                                            ; preds = %.lr.ph.i249.preheader.i.i
  %exitcond475.4.not.i.i = icmp eq i64 %i.cw, 4
  br i1 %exitcond475.4.not.i.i, label %sqlite3_strnicmp.exit256.thread.i.i, label %.lr.ph.i249.5.i.i

.lr.ph.i249.5.i.i:                                ; preds = %bb.ce
  %i.nb = getelementptr inbounds nuw i8, ptr %i.cq, i64 5
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !741 ; 2 uses
  %i.nd = and i8 %i.nc, -33
  %i.ne = icmp eq i8 %i.nd, 78
  br i1 %i.ne, label %bb.cf, label %sqlite3_strnicmp.exit256.i.i

bb.cf:                                            ; preds = %.lr.ph.i249.5.i.i
  %exitcond475.5.not.i.i = icmp eq i64 %i.cw, 5
  br i1 %exitcond475.5.not.i.i, label %sqlite3_strnicmp.exit256.thread.i.i, label %.lr.ph.i249.6.i.i

.lr.ph.i249.6.i.i:                                ; preds = %bb.cf
  %i.nf = load i8, ptr %scevgep.i.i, align 1, !tbaa !741 ; 2 uses
  %i.ng = and i8 %i.nf, -33
  %i.nh = icmp eq i8 %i.ng, 84
  br i1 %i.nh, label %bb.cg, label %sqlite3_strnicmp.exit256.i.i

bb.cg:                                            ; preds = %.lr.ph.i249.6.i.i
  %exitcond475.6.not.i.i = icmp eq i64 %i.cw, 6
  br i1 %exitcond475.6.not.i.i, label %sqlite3_strnicmp.exit256.thread.i.i, label %.lr.ph.i249.7.i.i

.lr.ph.i249.7.i.i:                                ; preds = %bb.cg
  %i.ni = load i8, ptr %scevgep464.i.i, align 1, !tbaa !741 ; 2 uses
  %i.nj = and i8 %i.ni, -33
  %i.nk = icmp eq i8 %i.nj, 76
  br i1 %i.nk, label %bb.ch, label %sqlite3_strnicmp.exit256.i.i

bb.ch:                                            ; preds = %.lr.ph.i249.7.i.i
  %exitcond475.7.not.i.i = icmp eq i64 %i.cw, 7
  br i1 %exitcond475.7.not.i.i, label %sqlite3_strnicmp.exit256.thread.i.i, label %.lr.ph.i249.8.i.i

.lr.ph.i249.8.i.i:                                ; preds = %bb.ch
  %i.nl = load i8, ptr %scevgep461.i.i, align 1, !tbaa !741 ; 2 uses
  %i.nm = and i8 %i.nl, -33
  %i.nn = icmp eq i8 %i.nm, 69
  br i1 %i.nn, label %bb.ci, label %sqlite3_strnicmp.exit256.i.i

bb.ci:                                            ; preds = %.lr.ph.i249.8.i.i
  %exitcond475.8.not.i.i = icmp eq i64 %i.cw, 8
  br i1 %exitcond475.8.not.i.i, label %sqlite3_strnicmp.exit256.thread.i.i, label %.lr.ph.i249.9.i.i

.lr.ph.i249.9.i.i:                                ; preds = %bb.ci
  %i.no = getelementptr inbounds nuw i8, ptr %i.cq, i64 9
  %i.np = load i8, ptr %i.no, align 1, !tbaa !741 ; 2 uses
  %i.nq = and i8 %i.np, -33
  %i.nr = icmp eq i8 %i.nq, 83
  br i1 %i.nr, label %bb.cj, label %sqlite3_strnicmp.exit256.i.i

bb.cj:                                            ; preds = %.lr.ph.i249.9.i.i
  %exitcond475.9.not.i.i = icmp eq i64 %i.cw, 9
  br i1 %exitcond475.9.not.i.i, label %sqlite3_strnicmp.exit256.thread.i.i, label %.lr.ph.i249.10.i.i

.lr.ph.i249.10.i.i:                               ; preds = %bb.cj
  %i.ns = getelementptr inbounds nuw i8, ptr %i.cq, i64 10
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !741 ; 2 uses
  %i.nu = and i8 %i.nt, -33
  %i.nv = icmp eq i8 %i.nu, 83
  br i1 %i.nv, label %bb.ck, label %sqlite3_strnicmp.exit256.i.i

bb.ck:                                            ; preds = %.lr.ph.i249.10.i.i
  %exitcond475.10.not.i.i = icmp eq i64 %i.cw, 10
  br i1 %exitcond475.10.not.i.i, label %sqlite3_strnicmp.exit256.thread.i.i, label %.lr.ph.i249.11.i.i

.lr.ph.i249.11.i.i:                               ; preds = %bb.ck
  %i.nw = getelementptr inbounds nuw i8, ptr %i.cq, i64 11
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !741 ; 2 uses
  %i.ny = icmp eq i8 %i.nx, 95
  br i1 %i.ny, label %bb.cl, label %sqlite3_strnicmp.exit256.i.i

bb.cl:                                            ; preds = %.lr.ph.i249.11.i.i
  %exitcond475.11.not.i.i = icmp eq i64 %i.cw, 11
  br i1 %exitcond475.11.not.i.i, label %sqlite3_strnicmp.exit256.thread.i.i, label %.lr.ph.i249.12.i.i

.lr.ph.i249.12.i.i:                               ; preds = %bb.cl
  %i.nz = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !741 ; 2 uses
  %i.ob = and i8 %i.oa, -33
  %i.oc = icmp eq i8 %i.ob, 85
  br i1 %i.oc, label %bb.cm, label %sqlite3_strnicmp.exit256.i.i

bb.cm:                                            ; preds = %.lr.ph.i249.12.i.i
  %exitcond475.12.not.i.i = icmp eq i64 %i.cw, 12
  br i1 %exitcond475.12.not.i.i, label %sqlite3_strnicmp.exit256.thread.i.i, label %.lr.ph.i249.13.i.i

.lr.ph.i249.13.i.i:                               ; preds = %bb.cm
  %i.od = getelementptr inbounds nuw i8, ptr %i.cq, i64 13
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !741 ; 2 uses
  %i.of = and i8 %i.oe, -33
  %i.og = icmp eq i8 %i.of, 78
  br i1 %i.og, label %bb.cn, label %sqlite3_strnicmp.exit256.i.i

bb.cn:                                            ; preds = %.lr.ph.i249.13.i.i
  %exitcond475.13.not.i.i = icmp eq i64 %i.cw, 13
  br i1 %exitcond475.13.not.i.i, label %sqlite3_strnicmp.exit256.thread.i.i, label %.lr.ph.i249.14.i.i

.lr.ph.i249.14.i.i:                               ; preds = %bb.cn
  %i.oh = getelementptr inbounds nuw i8, ptr %i.cq, i64 14
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !741 ; 2 uses
  %i.oj = and i8 %i.oi, -33
  %i.ok = icmp eq i8 %i.oj, 73
  br i1 %i.ok, label %bb.co, label %sqlite3_strnicmp.exit256.i.i

bb.co:                                            ; preds = %.lr.ph.i249.14.i.i
  %exitcond475.14.not.i.i = icmp eq i64 %i.cw, 14
  br i1 %exitcond475.14.not.i.i, label %sqlite3_strnicmp.exit256.thread.i.i, label %.lr.ph.i249.15.i.i

.lr.ph.i249.15.i.i:                               ; preds = %bb.co
  %i.ol = getelementptr inbounds nuw i8, ptr %i.cq, i64 15
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !741 ; 2 uses
  %i.on = and i8 %i.om, -33
  %i.oo = icmp eq i8 %i.on, 78
  br i1 %i.oo, label %bb.cp, label %sqlite3_strnicmp.exit256.i.i

bb.cp:                                            ; preds = %.lr.ph.i249.15.i.i
  %exitcond475.15.not.i.i = icmp eq i64 %i.cw, 15
  br i1 %exitcond475.15.not.i.i, label %sqlite3_strnicmp.exit256.thread.i.i, label %.lr.ph.i249.16.i.i

.lr.ph.i249.16.i.i:                               ; preds = %bb.cp
  %i.op = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.oq = load i8, ptr %i.op, align 1, !tbaa !741 ; 2 uses
  %i.or = and i8 %i.oq, -33
  %i.os = icmp eq i8 %i.or, 68
  br i1 %i.os, label %bb.cq, label %sqlite3_strnicmp.exit256.i.i

bb.cq:                                            ; preds = %.lr.ph.i249.16.i.i
  %exitcond475.16.not.i.i = icmp eq i64 %i.cw, 16
  br i1 %exitcond475.16.not.i.i, label %sqlite3_strnicmp.exit256.thread.i.i, label %.lr.ph.i249.17.i.i

.lr.ph.i249.17.i.i:                               ; preds = %bb.cq
  %i.ot = getelementptr inbounds nuw i8, ptr %i.cq, i64 17
  %i.ou = load i8, ptr %i.ot, align 1, !tbaa !741 ; 2 uses
  %i.ov = and i8 %i.ou, -33
  %i.ow = icmp eq i8 %i.ov, 69
  br i1 %i.ow, label %bb.cr, label %sqlite3_strnicmp.exit256.i.i

bb.cr:                                            ; preds = %.lr.ph.i249.17.i.i
  %exitcond475.17.not.i.i = icmp eq i64 %i.cw, 17
  br i1 %exitcond475.17.not.i.i, label %sqlite3_strnicmp.exit256.thread.i.i, label %.lr.ph.i249.18.i.i

.lr.ph.i249.18.i.i:                               ; preds = %bb.cr
  %i.ox = getelementptr inbounds nuw i8, ptr %i.cq, i64 18
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !741 ; 2 uses
  %i.oz = and i8 %i.oy, -33
  %i.pa = icmp eq i8 %i.oz, 88
  br i1 %i.pa, label %bb.cs, label %sqlite3_strnicmp.exit256.i.i

bb.cs:                                            ; preds = %.lr.ph.i249.18.i.i
  %exitcond475.18.not.i.i = icmp eq i64 %i.cw, 18
  br i1 %exitcond475.18.not.i.i, label %sqlite3_strnicmp.exit256.thread.i.i, label %.lr.ph.i249.19.i.i

.lr.ph.i249.19.i.i:                               ; preds = %bb.cs
  %i.pb = getelementptr inbounds nuw i8, ptr %i.cq, i64 19
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !741 ; 2 uses
  %i.pd = and i8 %i.pc, -33
  %i.pe = icmp eq i8 %i.pd, 69
  br i1 %i.pe, label %bb.ct, label %sqlite3_strnicmp.exit256.i.i

bb.ct:                                            ; preds = %.lr.ph.i249.19.i.i
  %exitcond475.19.not.i.i = icmp eq i64 %i.cw, 19
  br i1 %exitcond475.19.not.i.i, label %sqlite3_strnicmp.exit256.thread.i.i, label %.lr.ph.i249.20.i.i

.lr.ph.i249.20.i.i:                               ; preds = %bb.ct
  %i.pf = getelementptr inbounds nuw i8, ptr %i.cq, i64 20
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !741 ; 2 uses
  %i.ph = and i8 %i.pg, -33
  %i.pi = icmp eq i8 %i.ph, 68
  br i1 %i.pi, label %bb.cu, label %sqlite3_strnicmp.exit256.i.i

bb.cu:                                            ; preds = %.lr.ph.i249.20.i.i
  %exitcond475.20.not.i.i = icmp eq i64 %i.cw, 20
  br i1 %exitcond475.20.not.i.i, label %sqlite3_strnicmp.exit256.thread.i.i, label %.sqlite3_strnicmp.exit256.i_crit_edge.i

.sqlite3_strnicmp.exit256.i_crit_edge.i:          ; preds = %bb.cu
  %.pre242.i = load i8, ptr %scevgep472.i.i, align 1, !tbaa !741
  br label %sqlite3_strnicmp.exit256.i.i

sqlite3_strnicmp.exit256.i.i:                     ; preds = %.sqlite3_strnicmp.exit256.i_crit_edge.i, %.lr.ph.i249.20.i.i, %.lr.ph.i249.19.i.i, %.lr.ph.i249.18.i.i, %.lr.ph.i249.17.i.i, %.lr.ph.i249.16.i.i, %.lr.ph.i249.15.i.i, %.lr.ph.i249.14.i.i, %.lr.ph.i249.13.i.i, %.lr.ph.i249.12.i.i, %.lr.ph.i249.11.i.i, %.lr.ph.i249.10.i.i, %.lr.ph.i249.9.i.i, %.lr.ph.i249.8.i.i, %.lr.ph.i249.7.i.i, %.lr.ph.i249.6.i.i, %.lr.ph.i249.5.i.i
  %i.pj = phi i8 [ %i.pg, %.lr.ph.i249.20.i.i ], [ %.pre242.i, %.sqlite3_strnicmp.exit256.i_crit_edge.i ], [ %i.pc, %.lr.ph.i249.19.i.i ], [ %i.oy, %.lr.ph.i249.18.i.i ], [ %i.ou, %.lr.ph.i249.17.i.i ], [ %i.oq, %.lr.ph.i249.16.i.i ], [ %i.nc, %.lr.ph.i249.5.i.i ], [ %i.nf, %.lr.ph.i249.6.i.i ], [ %i.ni, %.lr.ph.i249.7.i.i ], [ %i.nl, %.lr.ph.i249.8.i.i ], [ %i.np, %.lr.ph.i249.9.i.i ], [ %i.nt, %.lr.ph.i249.10.i.i ], [ %i.nx, %.lr.ph.i249.11.i.i ], [ %i.oa, %.lr.ph.i249.12.i.i ], [ %i.oe, %.lr.ph.i249.13.i.i ], [ %i.oi, %.lr.ph.i249.14.i.i ], [ %i.om, %.lr.ph.i249.15.i.i ]
  %i.pk = phi i32 [ 100, %.lr.ph.i249.20.i.i ], [ 0, %.sqlite3_strnicmp.exit256.i_crit_edge.i ], [ 101, %.lr.ph.i249.19.i.i ], [ 120, %.lr.ph.i249.18.i.i ], [ 101, %.lr.ph.i249.17.i.i ], [ 100, %.lr.ph.i249.16.i.i ], [ 110, %.lr.ph.i249.5.i.i ], [ 116, %.lr.ph.i249.6.i.i ], [ 108, %.lr.ph.i249.7.i.i ], [ 101, %.lr.ph.i249.8.i.i ], [ 115, %.lr.ph.i249.9.i.i ], [ 115, %.lr.ph.i249.10.i.i ], [ 95, %.lr.ph.i249.11.i.i ], [ 117, %.lr.ph.i249.12.i.i ], [ 110, %.lr.ph.i249.13.i.i ], [ 105, %.lr.ph.i249.14.i.i ], [ 110, %.lr.ph.i249.15.i.i ]
  %i.pl = zext i8 %i.pj to i64
  %i.pm = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.pl
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !741
  %i.po = zext i8 %i.pn to i32
  %i.pp = icmp eq i32 %i.pk, %i.po
  br i1 %i.pp, label %sqlite3_strnicmp.exit256.thread.i.i, label %.lr.ph.i259.preheader.i.i

sqlite3_strnicmp.exit256.i.i.thread327:           ; preds = %.lr.ph.i249.preheader.i.i
  %13 = and i8 %i.mr, -33
  %14 = icmp eq i8 %13, 69
  br i1 %14, label %sqlite3_strnicmp.exit256.thread.i.i, label %sqlite3_strnicmp.exit266.i.i

.lr.ph.i259.preheader.i.i:                        ; preds = %sqlite3_strnicmp.exit256.i.i
  %scevgep476.i.i = getelementptr i8, ptr %i.cq, i64 13
  %i.pq = getelementptr inbounds nuw i8, ptr %i.cq, i64 5
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !741 ; 2 uses
  %i.ps = and i8 %i.pr, -33
  %i.pt = icmp eq i8 %i.ps, 78
  br i1 %i.pt, label %bb.cy, label %sqlite3_strnicmp.exit266.i.i

sqlite3_strnicmp.exit256.thread.i.i:              ; preds = %sqlite3_strnicmp.exit256.i.i.thread327, %sqlite3_strnicmp.exit256.i.i, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce
  %i.pu = load i8, ptr %i.cr, align 1, !tbaa !741 ; 2 uses
  %i.pv = and i8 %i.pu, -2
  %switch191.i.i = icmp eq i8 %i.pv, 48
  br i1 %switch191.i.i, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %sqlite3_strnicmp.exit256.thread.i.i
  %i.pw = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !741
  %.not176.i.i = icmp eq i8 %i.px, 0
  br i1 %.not176.i.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %sqlite3_strnicmp.exit256.thread.i.i
  %i.py = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1624), !inline_history !7139
  store ptr %i.py, ptr %6, align 8, !tbaa !747
  br label %fts5ConfigParseSpecial.exit.i

bb.cx:                                            ; preds = %bb.cv
  %i.pz = icmp eq i8 %i.pu, 49
  %i.qa = zext i1 %i.pz to i32
  store i32 %i.qa, ptr %i.bp, align 8, !tbaa !7175
  br label %fts5ConfigParseSpecial.exit.i

bb.cy:                                            ; preds = %.lr.ph.i259.preheader.i.i
  %exitcond479.5.not.i.i = icmp eq i64 %i.cw, 5
  br i1 %exitcond479.5.not.i.i, label %sqlite3_strnicmp.exit266.thread.i.i, label %.lr.ph.i259.6.i.i

.lr.ph.i259.6.i.i:                                ; preds = %bb.cy
  %i.qb = load i8, ptr %scevgep.i.i, align 1, !tbaa !741 ; 2 uses
  %i.qc = and i8 %i.qb, -33
  %i.qd = icmp eq i8 %i.qc, 84
  br i1 %i.qd, label %bb.cz, label %sqlite3_strnicmp.exit266.i.i

bb.cz:                                            ; preds = %.lr.ph.i259.6.i.i
  %exitcond479.6.not.i.i = icmp eq i64 %i.cw, 6
  br i1 %exitcond479.6.not.i.i, label %sqlite3_strnicmp.exit266.thread.i.i, label %.lr.ph.i259.7.i.i

.lr.ph.i259.7.i.i:                                ; preds = %bb.cz
  %i.qe = load i8, ptr %scevgep464.i.i, align 1, !tbaa !741 ; 2 uses
  %i.qf = icmp eq i8 %i.qe, 95
  br i1 %i.qf, label %bb.da, label %sqlite3_strnicmp.exit266.i.i

bb.da:                                            ; preds = %.lr.ph.i259.7.i.i
  %exitcond479.7.not.i.i = icmp eq i64 %i.cw, 7
  br i1 %exitcond479.7.not.i.i, label %sqlite3_strnicmp.exit266.thread.i.i, label %.lr.ph.i259.8.i.i

.lr.ph.i259.8.i.i:                                ; preds = %bb.da
  %i.qg = load i8, ptr %scevgep461.i.i, align 1, !tbaa !741 ; 2 uses
  %i.qh = and i8 %i.qg, -33
  %i.qi = icmp eq i8 %i.qh, 82
  br i1 %i.qi, label %bb.db, label %sqlite3_strnicmp.exit266.i.i

bb.db:                                            ; preds = %.lr.ph.i259.8.i.i
  %exitcond479.8.not.i.i = icmp eq i64 %i.cw, 8
  br i1 %exitcond479.8.not.i.i, label %sqlite3_strnicmp.exit266.thread.i.i, label %.lr.ph.i259.9.i.i

.lr.ph.i259.9.i.i:                                ; preds = %bb.db
  %i.qj = getelementptr inbounds nuw i8, ptr %i.cq, i64 9
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !741 ; 2 uses
  %i.ql = and i8 %i.qk, -33
  %i.qm = icmp eq i8 %i.ql, 79
  br i1 %i.qm, label %bb.dc, label %sqlite3_strnicmp.exit266.i.i

bb.dc:                                            ; preds = %.lr.ph.i259.9.i.i
  %exitcond479.9.not.i.i = icmp eq i64 %i.cw, 9
  br i1 %exitcond479.9.not.i.i, label %sqlite3_strnicmp.exit266.thread.i.i, label %.lr.ph.i259.10.i.i

.lr.ph.i259.10.i.i:                               ; preds = %bb.dc
  %i.qn = getelementptr inbounds nuw i8, ptr %i.cq, i64 10
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !741 ; 2 uses
  %i.qp = and i8 %i.qo, -33
  %i.qq = icmp eq i8 %i.qp, 87
  br i1 %i.qq, label %bb.dd, label %sqlite3_strnicmp.exit266.i.i

bb.dd:                                            ; preds = %.lr.ph.i259.10.i.i
  %exitcond479.10.not.i.i = icmp eq i64 %i.cw, 10
  br i1 %exitcond479.10.not.i.i, label %sqlite3_strnicmp.exit266.thread.i.i, label %.lr.ph.i259.11.i.i

.lr.ph.i259.11.i.i:                               ; preds = %bb.dd
  %i.qr = getelementptr inbounds nuw i8, ptr %i.cq, i64 11
  %i.qs = load i8, ptr %i.qr, align 1, !tbaa !741 ; 2 uses
  %i.qt = and i8 %i.qs, -33
  %i.qu = icmp eq i8 %i.qt, 73
  br i1 %i.qu, label %bb.de, label %sqlite3_strnicmp.exit266.i.i

bb.de:                                            ; preds = %.lr.ph.i259.11.i.i
  %exitcond479.11.not.i.i = icmp eq i64 %i.cw, 11
  br i1 %exitcond479.11.not.i.i, label %sqlite3_strnicmp.exit266.thread.i.i, label %.lr.ph.i259.12.i.i

.lr.ph.i259.12.i.i:                               ; preds = %bb.de
  %i.qv = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !741 ; 2 uses
  %i.qx = and i8 %i.qw, -33
  %i.qy = icmp eq i8 %i.qx, 68
  br i1 %i.qy, label %bb.df, label %sqlite3_strnicmp.exit266.i.i

bb.df:                                            ; preds = %.lr.ph.i259.12.i.i
  %exitcond479.12.not.i.i = icmp eq i64 %i.cw, 12
  br i1 %exitcond479.12.not.i.i, label %sqlite3_strnicmp.exit266.thread.i.i, label %.sqlite3_strnicmp.exit266.i_crit_edge.i

.sqlite3_strnicmp.exit266.i_crit_edge.i:          ; preds = %bb.df
  %.pre243.i = load i8, ptr %scevgep476.i.i, align 1, !tbaa !741
  br label %sqlite3_strnicmp.exit266.i.i

sqlite3_strnicmp.exit266.i.i:                     ; preds = %sqlite3_strnicmp.exit256.i.i.thread327, %sqlite3_strnicmp.exit246.i.i.thread325, %.lr.ph.i229.2.i.i, %.sqlite3_strnicmp.exit266.i_crit_edge.i, %.lr.ph.i259.12.i.i, %.lr.ph.i259.11.i.i, %.lr.ph.i259.10.i.i, %.lr.ph.i259.9.i.i, %.lr.ph.i259.8.i.i, %.lr.ph.i259.7.i.i, %.lr.ph.i259.6.i.i, %.lr.ph.i259.preheader.i.i
  %i.qz = phi i8 [ %.pre243.i, %.sqlite3_strnicmp.exit266.i_crit_edge.i ], [ %i.qw, %.lr.ph.i259.12.i.i ], [ %i.qs, %.lr.ph.i259.11.i.i ], [ %i.qo, %.lr.ph.i259.10.i.i ], [ %i.jj, %.lr.ph.i229.2.i.i ], [ %i.mr, %sqlite3_strnicmp.exit256.i.i.thread327 ], [ %i.pr, %.lr.ph.i259.preheader.i.i ], [ %i.qb, %.lr.ph.i259.6.i.i ], [ %i.qe, %.lr.ph.i259.7.i.i ], [ %i.qg, %.lr.ph.i259.8.i.i ], [ %i.qk, %.lr.ph.i259.9.i.i ], [ %i.jn, %sqlite3_strnicmp.exit246.i.i.thread325 ]
  %i.ra = phi i32 [ 0, %.sqlite3_strnicmp.exit266.i_crit_edge.i ], [ 100, %.lr.ph.i259.12.i.i ], [ 105, %.lr.ph.i259.11.i.i ], [ 119, %.lr.ph.i259.10.i.i ], [ 110, %.lr.ph.i229.2.i.i ], [ 101, %sqlite3_strnicmp.exit256.i.i.thread327 ], [ 110, %.lr.ph.i259.preheader.i.i ], [ 116, %.lr.ph.i259.6.i.i ], [ 95, %.lr.ph.i259.7.i.i ], [ 114, %.lr.ph.i259.8.i.i ], [ 111, %.lr.ph.i259.9.i.i ], [ 116, %sqlite3_strnicmp.exit246.i.i.thread325 ]
  %i.rb = zext i8 %i.qz to i64
  %i.rc = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.rb
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !741
  %i.re = zext i8 %i.rd to i32
  %i.rf = icmp eq i32 %i.ra, %i.re
  br i1 %i.rf, label %sqlite3_strnicmp.exit266.thread.i.i, label %.lr.ph.i269.preheader.i.i

.lr.ph.i269.preheader.i.i:                        ; preds = %sqlite3_strnicmp.exit266.i.i
  %scevgep480.i.i = getelementptr i8, ptr %i.cq, i64 10
  %i.rg = icmp eq i8 %i.jk, 76
  br i1 %i.rg, label %bb.di, label %sqlite3_strnicmp.exit276.i.i

sqlite3_strnicmp.exit266.thread.i.i:              ; preds = %sqlite3_strnicmp.exit266.i.i, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy
  %i.rh = load ptr, ptr %i.bo, align 8, !tbaa !3209
  %.not173.i.i = icmp eq ptr %i.rh, null
  br i1 %.not173.i.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %sqlite3_strnicmp.exit266.thread.i.i
  %i.ri = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1627), !inline_history !7139
  store ptr %i.ri, ptr %6, align 8, !tbaa !747
  br label %fts5ConfigParseSpecial.exit.i

bb.dh:                                            ; preds = %sqlite3_strnicmp.exit266.thread.i.i
  %i.rj = call fastcc ptr @sqlite3Fts5Strndup(ptr noundef nonnull %i.d, ptr noundef nonnull %i.cr, i32 noundef -1), !inline_history !7139
  store ptr %i.rj, ptr %i.bo, align 8, !tbaa !3209
  %.pre498.i.i = load i32, ptr %i.d, align 4, !tbaa !576
  br label %fts5ConfigParseSpecial.exit.i

bb.di:                                            ; preds = %.lr.ph.i269.preheader.i.i
  %exitcond483.2.not.i.i = icmp eq i64 %i.cw, 2
  br i1 %exitcond483.2.not.i.i, label %sqlite3_strnicmp.exit276.thread.i.i, label %.lr.ph.i269.3.i.i

.lr.ph.i269.3.i.i:                                ; preds = %bb.di
  %i.rk = getelementptr inbounds nuw i8, ptr %i.cq, i64 3
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !741 ; 2 uses
  %i.rm = and i8 %i.rl, -33
  %i.rn = icmp eq i8 %i.rm, 85
  br i1 %i.rn, label %bb.dj, label %sqlite3_strnicmp.exit276.i.i

bb.dj:                                            ; preds = %.lr.ph.i269.3.i.i
  %exitcond483.3.not.i.i = icmp eq i64 %i.cw, 3
  br i1 %exitcond483.3.not.i.i, label %sqlite3_strnicmp.exit276.thread.i.i, label %.lr.ph.i269.4.i.i

.lr.ph.i269.4.i.i:                                ; preds = %bb.dj
  %i.ro = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !741 ; 2 uses
  %i.rq = and i8 %i.rp, -33
  %i.rr = icmp eq i8 %i.rq, 77
  br i1 %i.rr, label %bb.dk, label %sqlite3_strnicmp.exit276.i.i

bb.dk:                                            ; preds = %.lr.ph.i269.4.i.i
  %exitcond483.4.not.i.i = icmp eq i64 %i.cw, 4
  br i1 %exitcond483.4.not.i.i, label %sqlite3_strnicmp.exit276.thread.i.i, label %.lr.ph.i269.5.i.i

.lr.ph.i269.5.i.i:                                ; preds = %bb.dk
  %i.rs = getelementptr inbounds nuw i8, ptr %i.cq, i64 5
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !741 ; 2 uses
  %i.ru = and i8 %i.rt, -33
  %i.rv = icmp eq i8 %i.ru, 78
  br i1 %i.rv, label %bb.dl, label %sqlite3_strnicmp.exit276.i.i

bb.dl:                                            ; preds = %.lr.ph.i269.5.i.i
  %exitcond483.5.not.i.i = icmp eq i64 %i.cw, 5
  br i1 %exitcond483.5.not.i.i, label %sqlite3_strnicmp.exit276.thread.i.i, label %.lr.ph.i269.6.i.i

.lr.ph.i269.6.i.i:                                ; preds = %bb.dl
  %i.rw = load i8, ptr %scevgep.i.i, align 1, !tbaa !741 ; 2 uses
  %i.rx = and i8 %i.rw, -33
  %i.ry = icmp eq i8 %i.rx, 83
  br i1 %i.ry, label %bb.dm, label %sqlite3_strnicmp.exit276.i.i

bb.dm:                                            ; preds = %.lr.ph.i269.6.i.i
  %exitcond483.6.not.i.i = icmp eq i64 %i.cw, 6
  br i1 %exitcond483.6.not.i.i, label %sqlite3_strnicmp.exit276.thread.i.i, label %.lr.ph.i269.7.i.i

.lr.ph.i269.7.i.i:                                ; preds = %bb.dm
  %i.rz = load i8, ptr %scevgep464.i.i, align 1, !tbaa !741 ; 2 uses
  %i.sa = and i8 %i.rz, -33
  %i.sb = icmp eq i8 %i.sa, 73
  br i1 %i.sb, label %bb.dn, label %sqlite3_strnicmp.exit276.i.i

bb.dn:                                            ; preds = %.lr.ph.i269.7.i.i
  %exitcond483.7.not.i.i = icmp eq i64 %i.cw, 7
  br i1 %exitcond483.7.not.i.i, label %sqlite3_strnicmp.exit276.thread.i.i, label %.lr.ph.i269.8.i.i

.lr.ph.i269.8.i.i:                                ; preds = %bb.dn
  %i.sc = load i8, ptr %scevgep461.i.i, align 1, !tbaa !741 ; 2 uses
  %i.sd = and i8 %i.sc, -33
  %i.se = icmp eq i8 %i.sd, 90
  br i1 %i.se, label %bb.do, label %sqlite3_strnicmp.exit276.i.i

bb.do:                                            ; preds = %.lr.ph.i269.8.i.i
  %exitcond483.8.not.i.i = icmp eq i64 %i.cw, 8
  br i1 %exitcond483.8.not.i.i, label %sqlite3_strnicmp.exit276.thread.i.i, label %.lr.ph.i269.9.i.i

.lr.ph.i269.9.i.i:                                ; preds = %bb.do
  %i.sf = getelementptr inbounds nuw i8, ptr %i.cq, i64 9
  %i.sg = load i8, ptr %i.sf, align 1, !tbaa !741 ; 2 uses
  %i.sh = and i8 %i.sg, -33
  %i.si = icmp eq i8 %i.sh, 69
  br i1 %i.si, label %bb.dp, label %sqlite3_strnicmp.exit276.i.i

bb.dp:                                            ; preds = %.lr.ph.i269.9.i.i
  %exitcond483.9.not.i.i = icmp eq i64 %i.cw, 9
  br i1 %exitcond483.9.not.i.i, label %sqlite3_strnicmp.exit276.thread.i.i, label %.sqlite3_strnicmp.exit276.i_crit_edge.i

.sqlite3_strnicmp.exit276.i_crit_edge.i:          ; preds = %bb.dp
  %.pre244.i = load i8, ptr %scevgep480.i.i, align 1, !tbaa !741
  br label %sqlite3_strnicmp.exit276.i.i

sqlite3_strnicmp.exit276.i.i:                     ; preds = %.lr.ph.i229.1.i.i, %.lr.ph.i229.preheader.i.i, %.sqlite3_strnicmp.exit276.i_crit_edge.i, %.lr.ph.i269.9.i.i, %.lr.ph.i269.8.i.i, %.lr.ph.i269.7.i.i, %.lr.ph.i269.6.i.i, %.lr.ph.i269.5.i.i, %.lr.ph.i269.4.i.i, %.lr.ph.i269.3.i.i, %.lr.ph.i269.preheader.i.i
  %i.sj = phi i8 [ %i.sg, %.lr.ph.i269.9.i.i ], [ %.pre244.i, %.sqlite3_strnicmp.exit276.i_crit_edge.i ], [ %i.cx, %.lr.ph.i229.preheader.i.i ], [ %i.jj, %.lr.ph.i269.preheader.i.i ], [ %i.rl, %.lr.ph.i269.3.i.i ], [ %i.rp, %.lr.ph.i269.4.i.i ], [ %i.rt, %.lr.ph.i269.5.i.i ], [ %i.rw, %.lr.ph.i269.6.i.i ], [ %i.rz, %.lr.ph.i269.7.i.i ], [ %i.sc, %.lr.ph.i269.8.i.i ], [ %i.jf, %.lr.ph.i229.1.i.i ]
  %i.sk = phi i32 [ 101, %.lr.ph.i269.9.i.i ], [ 0, %.sqlite3_strnicmp.exit276.i_crit_edge.i ], [ 99, %.lr.ph.i229.preheader.i.i ], [ 108, %.lr.ph.i269.preheader.i.i ], [ 117, %.lr.ph.i269.3.i.i ], [ 109, %.lr.ph.i269.4.i.i ], [ 110, %.lr.ph.i269.5.i.i ], [ 115, %.lr.ph.i269.6.i.i ], [ 105, %.lr.ph.i269.7.i.i ], [ 122, %.lr.ph.i269.8.i.i ], [ 111, %.lr.ph.i229.1.i.i ]
  %i.sl = zext i8 %i.sj to i64
  %i.sm = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.sl
  %i.sn = load i8, ptr %i.sm, align 1, !tbaa !741
  %i.so = zext i8 %i.sn to i32
  %i.sp = icmp eq i32 %i.sk, %i.so
  br i1 %i.sp, label %sqlite3_strnicmp.exit276.thread.i.i, label %.lr.ph.i279.preheader.i.i

.lr.ph.i279.preheader.i.i:                        ; preds = %sqlite3_strnicmp.exit276.i.i
  %i.sq = icmp eq i8 %i.cy, 76
  br i1 %i.sq, label %bb.dt, label %sqlite3_strnicmp.exit286.i.i

sqlite3_strnicmp.exit276.thread.i.i:              ; preds = %sqlite3_strnicmp.exit276.i.i, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di
  %i.sr = load i8, ptr %i.cr, align 1, !tbaa !741 ; 2 uses
  %i.ss = and i8 %i.sr, -2
  %switch193.i.i = icmp eq i8 %i.ss, 48
  br i1 %switch193.i.i, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %sqlite3_strnicmp.exit276.thread.i.i
  %i.st = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  %i.su = load i8, ptr %i.st, align 1, !tbaa !741
  %.not172.i.i = icmp eq i8 %i.su, 0
  br i1 %.not172.i.i, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %sqlite3_strnicmp.exit276.thread.i.i
  %i.sv = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1629), !inline_history !7139
  store ptr %i.sv, ptr %6, align 8, !tbaa !747
  br label %fts5ConfigParseSpecial.exit.i

bb.ds:                                            ; preds = %bb.dq
  %i.sw = icmp eq i8 %i.sr, 49
  %i.sx = zext i1 %i.sw to i32
  store i32 %i.sx, ptr %i.aw, align 8, !tbaa !3075
  br label %fts5ConfigParseSpecial.exit.i

bb.dt:                                            ; preds = %.lr.ph.i279.preheader.i.i
  %exitcond487.not.i.i = icmp eq i64 %i.cw, 0
  br i1 %exitcond487.not.i.i, label %sqlite3_strnicmp.exit286.thread.i.i, label %.lr.ph.i279.1.i.i

.lr.ph.i279.1.i.i:                                ; preds = %bb.dt
  %i.sy = getelementptr inbounds nuw i8, ptr %i.cq, i64 1
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !741 ; 2 uses
  %i.ta = and i8 %i.sz, -33
  %i.tb = icmp eq i8 %i.ta, 79
  br i1 %i.tb, label %bb.du, label %sqlite3_strnicmp.exit286.i.i

bb.du:                                            ; preds = %.lr.ph.i279.1.i.i
  %exitcond487.1.not.i.i = icmp eq i64 %i.cw, 1
  br i1 %exitcond487.1.not.i.i, label %sqlite3_strnicmp.exit286.thread.i.i, label %.lr.ph.i279.2.i.i

.lr.ph.i279.2.i.i:                                ; preds = %bb.du
  %i.tc = getelementptr inbounds nuw i8, ptr %i.cq, i64 2
  %i.td = load i8, ptr %i.tc, align 1, !tbaa !741 ; 2 uses
  %i.te = and i8 %i.td, -33
  %i.tf = icmp eq i8 %i.te, 67
  br i1 %i.tf, label %bb.dv, label %sqlite3_strnicmp.exit286.i.i

bb.dv:                                            ; preds = %.lr.ph.i279.2.i.i
  %exitcond487.2.not.i.i = icmp eq i64 %i.cw, 2
  br i1 %exitcond487.2.not.i.i, label %sqlite3_strnicmp.exit286.thread.i.i, label %.lr.ph.i279.3.i.i

.lr.ph.i279.3.i.i:                                ; preds = %bb.dv
  %i.tg = getelementptr inbounds nuw i8, ptr %i.cq, i64 3
  %i.th = load i8, ptr %i.tg, align 1, !tbaa !741 ; 2 uses
  %i.ti = and i8 %i.th, -33
  %i.tj = icmp eq i8 %i.ti, 65
  br i1 %i.tj, label %bb.dw, label %sqlite3_strnicmp.exit286.i.i

bb.dw:                                            ; preds = %.lr.ph.i279.3.i.i
  %exitcond487.3.not.i.i = icmp eq i64 %i.cw, 3
  br i1 %exitcond487.3.not.i.i, label %sqlite3_strnicmp.exit286.thread.i.i, label %.lr.ph.i279.4.i.i

.lr.ph.i279.4.i.i:                                ; preds = %bb.dw
  %i.tk = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.tl = load i8, ptr %i.tk, align 1, !tbaa !741 ; 2 uses
  %i.tm = and i8 %i.tl, -33
  %i.tn = icmp eq i8 %i.tm, 76
  br i1 %i.tn, label %bb.dx, label %sqlite3_strnicmp.exit286.i.i

bb.dx:                                            ; preds = %.lr.ph.i279.4.i.i
  %exitcond487.4.not.i.i = icmp eq i64 %i.cw, 4
  br i1 %exitcond487.4.not.i.i, label %sqlite3_strnicmp.exit286.thread.i.i, label %.lr.ph.i279.5.i.i

.lr.ph.i279.5.i.i:                                ; preds = %bb.dx
  %i.to = getelementptr inbounds nuw i8, ptr %i.cq, i64 5
  %i.tp = load i8, ptr %i.to, align 1, !tbaa !741 ; 2 uses
  %i.tq = and i8 %i.tp, -33
  %i.tr = icmp eq i8 %i.tq, 69
end_hunk_0
