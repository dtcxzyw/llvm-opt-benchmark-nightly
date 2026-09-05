Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/shell?download=true
inline.NumInlined: 1512
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 119
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@re_sql_func:bb.a
._crit_edge.i.i83.i:                              ; preds = %._crit_edge.loopexit.i.i89.i, %.._crit_edge_crit_edge.i.i81.i
  %.pre-phi.i.i84.i = phi i64 [ %.pre33.i.i82.i, %.._crit_edge_crit_edge.i.i81.i ], [ %i.dk, %._crit_edge.loopexit.i.i89.i ] ; 2 uses
  %i.en = phi i32 [ %i.di, %.._crit_edge_crit_edge.i.i81.i ], [ %.pre32.i.i90.i, %._crit_edge.loopexit.i.i89.i ]
  %i.eo = add i32 %i.en, 1
  store i32 %i.eo, ptr %i.cq, align 8, !tbaa !152
  %i.ep = load ptr, ptr %i.u, align 8, !tbaa !148
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 %.pre-phi.i.i84.i
  store i8 6, ptr %i.eq, align 1, !tbaa !52
  %i.er = load ptr, ptr %i.x, align 8, !tbaa !149
  %i.es = getelementptr inbounds [4 x i8], ptr %i.er, i64 %.pre-phi.i.i84.i
  store i32 0, ptr %i.es, align 4, !tbaa !53
  br label %re_append.exit91.i

re_append.exit91.i:                               ; preds = %._crit_edge.i.i83.i, %bb.y, %bb.w, %bb.u
  %i.et = load ptr, ptr %i.u, align 8, !tbaa !148
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !52
  %i.ev = icmp ne i8 %i.eu, 3
  %or.cond.i = or i1 %i.l, %i.ev
  br i1 %or.cond.i, label %sqlite3re_compile.exit, label %.preheader.i

.preheader.i:                                     ; preds = %re_append.exit91.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 3 uses
  br label %bb.aa

sqlite3re_free.exit93.i:                          ; preds = %bb.r
  %i.ex = load ptr, ptr %i.u, align 8, !tbaa !148
  tail call void @sqlite3_free(ptr noundef %i.ex) #45
  br label %sqlite3re_free.exit.sink.split

bb.aa:                                            ; preds = %bb.ah, %.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.preheader.i ], [ %indvars.iv.next.i, %bb.ah ] ; 3 uses
  %.067104.i = phi i32 [ 0, %.preheader.i ], [ %.2.ph.i, %bb.ah ] ; 9 uses
  %i.ey = load ptr, ptr %i.u, align 8, !tbaa !148
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %indvars.iv.i
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !52
  %i.fb = icmp eq i8 %i.fa, 1
  br i1 %i.fb, label %bb.ab, label %.critedge.i

bb.ab:                                            ; preds = %bb.aa
  %i.fc = load ptr, ptr %i.x, align 8, !tbaa !149
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv.i
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !53 ; 9 uses
  %i.ff = icmp ult i32 %i.fe, 128
  br i1 %i.ff, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fg = trunc nuw nsw i32 %i.fe to i8
  %i.fh = add nsw i32 %.067104.i, 1
  %i.fi = sext i32 %.067104.i to i64
  %i.fj = getelementptr inbounds i8, ptr %i.ew, i64 %i.fi
  store i8 %i.fg, ptr %i.fj, align 1, !tbaa !52
  br label %bb.ah

bb.ad:                                            ; preds = %bb.ab
  %i.fk = icmp ult i32 %i.fe, 2048
  br i1 %i.fk, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fl = lshr i32 %i.fe, 6
  %i.fm = trunc nuw nsw i32 %i.fl to i8
  %i.fn = or disjoint i8 %i.fm, -64
  %i.fo = sext i32 %.067104.i to i64
  %i.fp = getelementptr inbounds i8, ptr %i.ew, i64 %i.fo ; 2 uses
  store i8 %i.fn, ptr %i.fp, align 1, !tbaa !52
  %i.fq = trunc i32 %i.fe to i8
  %i.fr = and i8 %i.fq, 63
  %i.fs = or disjoint i8 %i.fr, -128
  %i.ft = add nsw i32 %.067104.i, 2
  %i.fu = getelementptr i8, ptr %i.fp, i64 1
  store i8 %i.fs, ptr %i.fu, align 1, !tbaa !52
  br label %bb.ah

bb.af:                                            ; preds = %bb.ad
  %i.fv = icmp ult i32 %i.fe, 65536
  br i1 %i.fv, label %bb.ag, label %.critedge.i

bb.ag:                                            ; preds = %bb.af
  %i.fw = lshr i32 %i.fe, 12
  %i.fx = trunc nuw nsw i32 %i.fw to i8
  %i.fy = or disjoint i8 %i.fx, -32
  %i.fz = sext i32 %.067104.i to i64
  %i.ga = getelementptr inbounds i8, ptr %i.ew, i64 %i.fz ; 3 uses
  store i8 %i.fy, ptr %i.ga, align 1, !tbaa !52
  %i.gb = lshr i32 %i.fe, 6
  %i.gc = trunc i32 %i.gb to i8
  %i.gd = and i8 %i.gc, 63
  %i.ge = or disjoint i8 %i.gd, -128
  %i.gf = getelementptr i8, ptr %i.ga, i64 1
  store i8 %i.ge, ptr %i.gf, align 1, !tbaa !52
  %i.gg = trunc i32 %i.fe to i8
  %i.gh = and i8 %i.gg, 63
  %i.gi = or disjoint i8 %i.gh, -128
  %i.gj = add nsw i32 %.067104.i, 3
  %i.gk = getelementptr i8, ptr %i.ga, i64 2
  store i8 %i.gi, ptr %i.gk, align 1, !tbaa !52
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ae, %bb.ac
  %.2.ph.i = phi i32 [ %i.gj, %bb.ag ], [ %i.ft, %bb.ae ], [ %i.fh, %bb.ac ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.gl = icmp slt i32 %.2.ph.i, 10
  br i1 %i.gl, label %bb.aa, label %.critedge.thread.i, !llvm.loop !772

.critedge.i:                                      ; preds = %bb.af, %bb.aa
  %i.gm = icmp sgt i32 %.067104.i, 0
  br i1 %i.gm, label %.critedge.thread.i, label %bb.ai

.critedge.thread.i:                               ; preds = %bb.ah, %.critedge.i
  %.067102.i = phi i32 [ %.067104.i, %.critedge.i ], [ %.2.ph.i, %bb.ah ] ; 2 uses
  %i.gn = zext nneg i32 %.067102.i to i64
  %i.go = getelementptr i8, ptr %i.m, i64 %i.gn
  %i.gp = getelementptr i8, ptr %i.go, i64 47
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !52
  %i.gr = icmp eq i8 %i.gq, 0
  %i.gs = sext i1 %i.gr to i32
  %spec.select.i = add nsw i32 %.067102.i, %i.gs
  br label %bb.ai

bb.ai:                                            ; preds = %.critedge.thread.i, %.critedge.i
  %.4.i = phi i32 [ %.067104.i, %.critedge.i ], [ %spec.select.i, %.critedge.thread.i ]
  %i.gt = getelementptr inbounds nuw i8, ptr %i.m, i64 60
  store i32 %.4.i, ptr %i.gt, align 4, !tbaa !781
  br label %sqlite3re_compile.exit

sqlite3re_compile.exit:                           ; preds = %re_append.exit91.i, %bb.ai
  %i.gu = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !150 ; 2 uses
  %.not = icmp eq ptr %i.gv, null
  br i1 %.not, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %sqlite3re_compile.exit
  %i.gw = load ptr, ptr %i.u, align 8, !tbaa !148
  tail call void @sqlite3_free(ptr noundef %i.gw) #45
  br label %sqlite3re_free.exit.sink.split

sqlite3re_free.exit.sink.split:                   ; preds = %bb.aj, %sqlite3re_free.exit78.i, %sqlite3re_free.exit.i, %sqlite3re_free.exit93.i
  %.sink.in = phi ptr [ %i.x, %sqlite3re_free.exit93.i ], [ %i.ae, %sqlite3re_free.exit.i ], [ %i.x, %sqlite3re_free.exit78.i ], [ %i.x, %bb.aj ]
  %.0214246.ph = phi ptr [ @.str.320, %sqlite3re_free.exit93.i ], [ %.str.319.sink.i, %sqlite3re_free.exit.i ], [ %i.cm, %sqlite3re_free.exit78.i ], [ %i.gv, %bb.aj ]
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !149
  tail call void @sqlite3_free(ptr noundef %.sink) #45
  tail call void @sqlite3_free(ptr noundef nonnull %i.m) #45
  br label %sqlite3re_free.exit

sqlite3re_free.exit:                              ; preds = %sqlite3re_free.exit.sink.split, %bb.c, %bb.d
  %.0214246 = phi ptr [ @.str.319, %bb.c ], [ @.str.56, %bb.d ], [ %.0214246.ph, %sqlite3re_free.exit.sink.split ]
  tail call void @sqlite3_result_error(ptr noundef %0, ptr noundef nonnull %.0214246, i32 noundef -1) #45
  br label %.critedge

bb.ak:                                            ; preds = %sqlite3re_compile.exit, %bb.a
  %.137 = phi ptr [ %i.b, %bb.a ], [ %i.m, %sqlite3re_compile.exit ] ; 7 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !126
  %i.gz = tail call ptr @sqlite3_value_text(ptr noundef %i.gy) #45 ; 4 uses
  %.not25 = icmp eq ptr %i.gz, null
  br i1 %.not25, label %bb.de, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #45
  store ptr %i.gz, ptr %4, align 8, !tbaa !156
  %i.ha = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.ha, align 8, !tbaa !157
  %i.hb = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gz) #46 ; 2 uses
  %i.hc = trunc i64 %i.hb to i32                  ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.hc, ptr %i.hd, align 4, !tbaa !158
  %i.he = getelementptr inbounds nuw i8, ptr %.137, i64 60
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !781 ; 3 uses
  %.not.i27 = icmp eq i32 %i.hf, 0
  br i1 %.not.i27, label %.critedge.i31, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hg = getelementptr inbounds nuw i8, ptr %.137, i64 48 ; 2 uses
  %i.hh = load i8, ptr %i.hg, align 8, !tbaa !52
  %.not166402.i = icmp sgt i32 %i.hf, %i.hc
  br i1 %.not166402.i, label %sqlite3re_match.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.am
  %i.hi = sext i32 %i.hf to i64                   ; 2 uses
  %sext.i = shl i64 %i.hb, 32
  %i.hj = ashr exact i64 %sext.i, 32
  %invariant.op.i = sub nsw i64 %i.hj, %i.hi
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op.i, i64 0)
  br label %bb.an

bb.an:                                            ; preds = %.critedge2.i, %.lr.ph.i
  %indvars.iv.i28 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i29, %.critedge2.i ] ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gz, i64 %indvars.iv.i28 ; 2 uses
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !52
  %.not167.i = icmp eq i8 %i.hl, %i.hh
  br i1 %.not167.i, label %bb.ao, label %.critedge2.i

bb.ao:                                            ; preds = %bb.an
  %i.hm = tail call i32 @strncmp(ptr noundef nonnull %i.hk, ptr noundef nonnull readonly %i.hg, i64 noundef %i.hi) #46
  %.not168.i = icmp eq i32 %i.hm, 0
  br i1 %.not168.i, label %.critedge.i31, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.ao, %bb.an
  %indvars.iv.next.i29 = add nuw nsw i64 %indvars.iv.i28, 1 ; 2 uses
  %i.hn = trunc nuw nsw i64 %indvars.iv.next.i29 to i32
  store i32 %i.hn, ptr %i.ha, align 8, !tbaa !157
  %exitcond.not = icmp eq i64 %indvars.iv.i28, %smax
  br i1 %exitcond.not, label %sqlite3re_match.exit, label %bb.an, !llvm.loop !773

.critedge.i31:                                    ; preds = %bb.ao, %bb.al
  %.1151.i = phi i32 [ 268435455, %bb.al ], [ 268435454, %bb.ao ]
  %i.ho = getelementptr inbounds nuw i8, ptr %.137, i64 64 ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !152 ; 3 uses
  %i.hq = icmp ult i32 %i.hp, 51
  br i1 %i.hq, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.critedge.i31
  %i.hr = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.a, ptr %i.hr, align 8, !tbaa !783
  br label %re_add_state.exit.i

bb.aq:                                            ; preds = %.critedge.i31
  %i.hs = zext i32 %i.hp to i64
  %i.ht = shl nuw nsw i64 %i.hs, 2
  %i.hu = tail call ptr @sqlite3_malloc64(i64 noundef %i.ht) #45 ; 4 uses
  %i.hv = icmp eq ptr %i.hu, null
  br i1 %i.hv, label %sqlite3re_match.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.hu, ptr %i.hw, align 8, !tbaa !783
  %.pre.i = load i32, ptr %i.ho, align 8, !tbaa !152
  br label %re_add_state.exit.i

re_add_state.exit.i:                              ; preds = %bb.ar, %bb.ap
  %i.hx = phi i32 [ %i.hp, %bb.ap ], [ %.pre.i, %bb.ar ]
  %i.hy = phi ptr [ %i.a, %bb.ap ], [ %i.hu, %bb.ar ]
  %.0156.i = phi ptr [ null, %bb.ap ], [ %i.hu, %bb.ar ]
  %i.hz = zext i32 %i.hx to i64
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %i.hy, i64 %i.hz ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.ia, ptr %i.ic, align 8, !tbaa !783
  store i32 1, ptr %i.ib, align 16, !tbaa !784
  store i16 0, ptr %i.ia, align 2, !tbaa !98
  %i.id = getelementptr inbounds nuw i8, ptr %.137, i64 40
  %i.ie = getelementptr inbounds nuw i8, ptr %.137, i64 24 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.137, i64 32 ; 5 uses
  br label %bb.as

.loopexit399.i:                                   ; preds = %re_space_char.exit273.thread.i, %bb.as
  %.not170.i = icmp eq i32 %i.ih, 0
  br i1 %.not170.i, label %.critedge4.i, label %thread-pre-split.i, !llvm.loop !774

thread-pre-split.i:                               ; preds = %.loopexit399.i
  %.pr467.i = load i32, ptr %i.ij, align 16, !tbaa !784
  %.not171.i = icmp eq i32 %.pr467.i, 0
  br i1 %.not171.i, label %.loopexit.i, label %bb.as

bb.as:                                            ; preds = %re_add_state.exit.i, %thread-pre-split.i
  %.0157409.i68 = phi ptr [ %i.ib, %re_add_state.exit.i ], [ %i.ij, %thread-pre-split.i ] ; 10 uses
  %.0153410.i67 = phi i32 [ 0, %re_add_state.exit.i ], [ %i.ik, %thread-pre-split.i ] ; 2 uses
  %.2152411.i66 = phi i32 [ %.1151.i, %re_add_state.exit.i ], [ %i.ih, %thread-pre-split.i ] ; 4 uses
  %i.ig = load ptr, ptr %i.id, align 8, !tbaa !146
  %i.ih = call i32 %i.ig(ptr noundef nonnull %4) #45, !inline_history !775 ; 15 uses
  %i.ii = zext nneg i32 %.0153410.i67 to i64
  %i.ij = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.ii ; 26 uses
  %i.ik = xor i32 %.0153410.i67, 1
  store i32 0, ptr %i.ij, align 16, !tbaa !784
  %i.il = load i32, ptr %.0157409.i68, align 8, !tbaa !784 ; 2 uses
  %.not414.i = icmp eq i32 %i.il, 0
  br i1 %.not414.i, label %.loopexit399.i, label %.lr.ph408.i

.lr.ph408.i:                                      ; preds = %bb.as
  %i.im = getelementptr inbounds nuw i8, ptr %.0157409.i68, i64 8
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !783 ; 13 uses
  %i.io = load ptr, ptr %i.ie, align 8, !tbaa !148 ; 2 uses
  %i.ip = icmp eq i32 %i.ih, 0                    ; 2 uses
  %.phi.trans.insert.i358.i = getelementptr inbounds nuw i8, ptr %i.ij, i64 8 ; 10 uses
  %i.iq = add i32 %i.ih, -48
  %or.cond.i285.i = icmp ult i32 %i.iq, 10
  %i.ir = and i32 %i.ih, -33                      ; 2 uses
  %i.is = add i32 %i.ir, -65
  %i.it = icmp ult i32 %i.is, 26
  %or.cond13.i286.i = or i1 %or.cond.i285.i, %i.it
  %i.iu = icmp eq i32 %i.ih, 95
  %narrow.i287.i = or i1 %i.iu, %or.cond13.i286.i
  %i.iv = and i32 %.2152411.i66, -33
  %i.iw = icmp ne i32 %.2152411.i66, 95
  %i.ix = add i32 %.2152411.i66, -58
  %i.iy = icmp ult i32 %i.ix, -10
  %i.iz = add i32 %i.iv, -91
  %i.ja = icmp ult i32 %i.iz, -26
  %i.jb = and i1 %i.iy, %i.ja
  %i.jc = and i1 %i.iw, %i.jb
  %.not176.i = xor i1 %i.jc, %narrow.i287.i
  %i.jd = add i32 %i.ih, -58
  %i.je = icmp ult i32 %i.jd, -10                 ; 3 uses
  %i.jf = icmp ne i32 %i.ih, 0                    ; 2 uses
  %or.cond7.i = and i1 %i.jf, %i.je
  %i.jg = add i32 %i.ir, -91
  %i.jh = icmp ult i32 %i.jg, -26
  %i.ji = icmp ne i32 %i.ih, 95
  %i.jj = and i1 %i.ji, %i.jh
  %narrow.i228.not.i = and i1 %i.je, %i.jj        ; 2 uses
  %or.cond.i32 = and i1 %i.jf, %narrow.i228.not.i
  %i.jk = icmp eq i32 %.2152411.i66, 268435455
  br label %bb.at

bb.at:                                            ; preds = %re_space_char.exit273.thread.i, %.lr.ph408.i
  %indvars.iv432.i = phi i64 [ 0, %.lr.ph408.i ], [ %indvars.iv.next433.i, %re_space_char.exit273.thread.i ] ; 2 uses
  %.pr.i = phi i32 [ %i.il, %.lr.ph408.i ], [ %i.qd, %re_space_char.exit273.thread.i ] ; 10 uses
  %i.jl = getelementptr inbounds nuw [2 x i8], ptr %i.in, i64 %indvars.iv432.i
  %i.jm = load i16, ptr %i.jl, align 2, !tbaa !98 ; 4 uses
  %i.jn = zext i16 %i.jm to i32                   ; 16 uses
  %i.jo = zext i16 %i.jm to i64                   ; 5 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.jo
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !52  ; 2 uses
  switch i8 %i.jq, label %re_space_char.exit273.thread.i [
    i8 1, label %bb.au
    i8 18, label %bb.ay
    i8 2, label %bb.bb
    i8 11, label %bb.bf
    i8 12, label %bb.bj
    i8 13, label %bb.bn
    i8 14, label %bb.br
    i8 15, label %bb.bv
    i8 16, label %bb.by
    i8 17, label %bb.cc
    i8 3, label %bb.cf
    i8 4, label %.lr.ph.i327.i
    i8 5, label %.lr.ph.i349.i
    i8 6, label %.loopexit.i
    i8 8, label %bb.cq
    i8 7, label %bb.cr
  ]

bb.au:                                            ; preds = %bb.at
  %i.jr = load ptr, ptr %i.if, align 8, !tbaa !149
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.jo
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !53
  %i.ju = icmp eq i32 %i.jt, %i.ih
  br i1 %i.ju, label %bb.av, label %re_space_char.exit273.thread.i

bb.av:                                            ; preds = %bb.au
  %i.jv = add nuw nsw i32 %i.jn, 1                ; 2 uses
  %i.jw = load i32, ptr %i.ij, align 16, !tbaa !784 ; 3 uses
  %.not.i182.i = icmp eq i32 %i.jw, 0
  %.pre.i184.i = load ptr, ptr %.phi.trans.insert.i358.i, align 8, !tbaa !783 ; 2 uses
  br i1 %.not.i182.i, label %._crit_edge.i190.i, label %.lr.ph.i185.i

.lr.ph.i185.i:                                    ; preds = %bb.av
  %wide.trip.count.i186.i = zext i32 %i.jw to i64 ; 2 uses
  br label %bb.ax

bb.aw:                                            ; preds = %bb.ax
  %indvars.iv.next.i188.i = add nuw nsw i64 %indvars.iv.i187.i, 1 ; 2 uses
  %exitcond.not.i189.i = icmp eq i64 %indvars.iv.next.i188.i, %wide.trip.count.i186.i
  br i1 %exitcond.not.i189.i, label %._crit_edge.i190.i, label %bb.ax, !llvm.loop !776

bb.ax:                                            ; preds = %bb.aw, %.lr.ph.i185.i
  %indvars.iv.i187.i = phi i64 [ 0, %.lr.ph.i185.i ], [ %indvars.iv.next.i188.i, %bb.aw ] ; 2 uses
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr %.pre.i184.i, i64 %indvars.iv.i187.i
  %i.jy = load i16, ptr %i.jx, align 2, !tbaa !98
  %i.jz = zext i16 %i.jy to i32
  %i.ka = icmp eq i32 %i.jv, %i.jz
  br i1 %i.ka, label %re_space_char.exit273.thread.i, label %bb.aw

._crit_edge.i190.i:                               ; preds = %bb.aw, %bb.av
  %.pre-phi.i191.i = phi i64 [ 0, %bb.av ], [ %wide.trip.count.i186.i, %bb.aw ]
  %i.kb = trunc i32 %i.jv to i16
  %i.kc = add i32 %i.jw, 1
  store i32 %i.kc, ptr %i.ij, align 16, !tbaa !784
  %i.kd = getelementptr inbounds nuw [2 x i8], ptr %.pre.i184.i, i64 %.pre-phi.i191.i
  store i16 %i.kb, ptr %i.kd, align 2, !tbaa !98
  br label %re_space_char.exit273.thread.i

bb.ay:                                            ; preds = %bb.at
  br i1 %i.jk, label %.lr.ph.i196.i, label %re_space_char.exit273.thread.i

.lr.ph.i196.i:                                    ; preds = %bb.ay
  %i.ke = add nuw nsw i32 %i.jn, 1                ; 2 uses
  %wide.trip.count.i197.i = zext i32 %.pr.i to i64 ; 2 uses
  br label %bb.ba

bb.az:                                            ; preds = %bb.ba
  %indvars.iv.next.i199.i = add nuw nsw i64 %indvars.iv.i198.i, 1 ; 2 uses
  %exitcond.not.i200.i = icmp eq i64 %indvars.iv.next.i199.i, %wide.trip.count.i197.i
  br i1 %exitcond.not.i200.i, label %._crit_edge.i201.i, label %bb.ba, !llvm.loop !776

bb.ba:                                            ; preds = %bb.az, %.lr.ph.i196.i
  %indvars.iv.i198.i = phi i64 [ 0, %.lr.ph.i196.i ], [ %indvars.iv.next.i199.i, %bb.az ] ; 2 uses
  %i.kf = getelementptr inbounds nuw [2 x i8], ptr %i.in, i64 %indvars.iv.i198.i
  %i.kg = load i16, ptr %i.kf, align 2, !tbaa !98
  %i.kh = zext i16 %i.kg to i32
  %i.ki = icmp eq i32 %i.ke, %i.kh
  br i1 %i.ki, label %re_space_char.exit273.thread.i, label %bb.az

._crit_edge.i201.i:                               ; preds = %bb.az
  %i.kj = trunc i32 %i.ke to i16
  %i.kk = add i32 %.pr.i, 1
  store i32 %i.kk, ptr %.0157409.i68, align 8, !tbaa !784
  %i.kl = getelementptr inbounds nuw [2 x i8], ptr %i.in, i64 %wide.trip.count.i197.i
  store i16 %i.kj, ptr %i.kl, align 2, !tbaa !98
  br label %re_space_char.exit273.thread.i
end_hunk_0
begin_hunk_1_@sha3UpdateFromValue:bb.a
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 1604 ; 7 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !131 ; 3 uses
  %i.ec = and i32 %i.eb, 7
  %i.ed = icmp eq i32 %i.ec, 0
  %i.ee = ptrtoint ptr %i.dy to i64
  %i.ef = and i64 %i.ee, 7
  %i.eg = icmp eq i64 %i.ef, 0
  %or.cond.i52 = and i1 %i.eg, %i.ed
  %i.eh = icmp ugt i32 %i.dx, 7
  %or.cond33.i = and i1 %i.eh, %or.cond.i52
  br i1 %or.cond33.i, label %.lr.ph.i60, label %.loopexit29.i53

.lr.ph.i60:                                       ; preds = %bb.n
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 1600
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %.lr.ph.i60
  %i.ej = phi i32 [ %i.eb, %.lr.ph.i60 ], [ %i.ev, %bb.q ]
  %.030.i61 = phi i32 [ 0, %.lr.ph.i60 ], [ %i.ew, %bb.q ] ; 2 uses
  %i.ek = zext i32 %.030.i61 to i64
  %i.el = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.ek
  %i.em = load i64, ptr %i.el, align 8, !tbaa !130
  %i.en = lshr i32 %i.ej, 3
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.eo ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !52
  %i.er = xor i64 %i.eq, %i.em
  store i64 %i.er, ptr %i.ep, align 8, !tbaa !52
  %i.es = load i32, ptr %i.ea, align 4, !tbaa !131
  %i.et = add i32 %i.es, 8                        ; 3 uses
  store i32 %i.et, ptr %i.ea, align 4, !tbaa !131
  %i.eu = load i32, ptr %i.ei, align 8, !tbaa !129
  %.not.i62 = icmp ult i32 %i.et, %i.eu
  br i1 %.not.i62, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.ea, align 4, !tbaa !131
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ev = phi i32 [ %i.et, %bb.o ], [ 0, %bb.p ]  ; 2 uses
  %i.ew = add i32 %.030.i61, 8                    ; 3 uses
  %i.ex = or disjoint i32 %i.ew, 7
  %i.ey = icmp ult i32 %i.ex, %i.dx
  br i1 %i.ey, label %bb.o, label %.loopexit29.i53, !llvm.loop !8

.loopexit29.i53:                                  ; preds = %bb.q, %bb.n
  %i.ez = phi i32 [ %i.eb, %bb.n ], [ %i.ev, %bb.q ]
  %.1.i54 = phi i32 [ 0, %bb.n ], [ %i.ew, %bb.q ] ; 2 uses
  %i.fa = icmp ult i32 %.1.i54, %i.dx
  br i1 %i.fa, label %.lr.ph32.i55, label %SHA3Update.exit

.lr.ph32.i55:                                     ; preds = %.loopexit29.i53
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.fc = zext i32 %.1.i54 to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %.lr.ph32.i55
  %i.fd = phi i32 [ %i.ez, %.lr.ph32.i55 ], [ %i.fo, %bb.t ]
  %indvars.iv.i56 = phi i64 [ %i.fc, %.lr.ph32.i55 ], [ %indvars.iv.next.i57, %bb.t ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dy, i64 %indvars.iv.i56
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !52
  %i.fg = zext i32 %i.fd to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 %i.fg ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !52
  %i.fj = xor i8 %i.fi, %i.ff
  store i8 %i.fj, ptr %i.fh, align 1, !tbaa !52
  %i.fk = load i32, ptr %i.ea, align 4, !tbaa !131
  %i.fl = add i32 %i.fk, 1                        ; 3 uses
  store i32 %i.fl, ptr %i.ea, align 4, !tbaa !131
  %i.fm = load i32, ptr %i.fb, align 8, !tbaa !129
  %i.fn = icmp eq i32 %i.fl, %i.fm
  br i1 %i.fn, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.ea, align 4, !tbaa !131
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.fo = phi i32 [ %i.fl, %bb.r ], [ 0, %bb.s ]
  %indvars.iv.next.i57 = add nuw nsw i64 %indvars.iv.i56, 1 ; 2 uses
  %lftr.wideiv103 = trunc i64 %indvars.iv.next.i57 to i32
  %exitcond104 = icmp eq i32 %i.dx, %lftr.wideiv103
  br i1 %exitcond104, label %SHA3Update.exit, label %bb.r, !llvm.loop !9

bb.u:                                             ; preds = %bb.a
  %i.fp = tail call i32 @sqlite3_value_bytes(ptr noundef %1) #45 ; 5 uses
  %i.fq = tail call ptr @sqlite3_value_blob(ptr noundef %1) #45 ; 4 uses
  tail call void (ptr, ptr, ...) @sha3_step_vformat(ptr noundef %0, ptr noundef nonnull @.str.295, i32 noundef %i.fp)
  %i.fr = icmp eq ptr %i.fq, null
  br i1 %i.fr, label %SHA3Update.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 1604 ; 7 uses
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !131 ; 3 uses
  %i.fu = and i32 %i.ft, 7
  %i.fv = icmp eq i32 %i.fu, 0
  %i.fw = ptrtoint ptr %i.fq to i64
  %i.fx = and i64 %i.fw, 7
  %i.fy = icmp eq i64 %i.fx, 0
  %or.cond.i64 = and i1 %i.fy, %i.fv
  %i.fz = icmp ugt i32 %i.fp, 7
  %or.cond33.i65 = and i1 %i.fz, %or.cond.i64
  br i1 %or.cond33.i65, label %.lr.ph.i73, label %.loopexit29.i66

.lr.ph.i73:                                       ; preds = %bb.v
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 1600
  br label %bb.w

bb.w:                                             ; preds = %bb.y, %.lr.ph.i73
  %i.gb = phi i32 [ %i.ft, %.lr.ph.i73 ], [ %i.gn, %bb.y ]
  %.030.i74 = phi i32 [ 0, %.lr.ph.i73 ], [ %i.go, %bb.y ] ; 2 uses
  %i.gc = zext i32 %.030.i74 to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.gc
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !130
  %i.gf = lshr i32 %i.gb, 3
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.gg ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !52
  %i.gj = xor i64 %i.gi, %i.ge
  store i64 %i.gj, ptr %i.gh, align 8, !tbaa !52
  %i.gk = load i32, ptr %i.fs, align 4, !tbaa !131
  %i.gl = add i32 %i.gk, 8                        ; 3 uses
  store i32 %i.gl, ptr %i.fs, align 4, !tbaa !131
  %i.gm = load i32, ptr %i.ga, align 8, !tbaa !129
  %.not.i75 = icmp ult i32 %i.gl, %i.gm
  br i1 %.not.i75, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.fs, align 4, !tbaa !131
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.gn = phi i32 [ %i.gl, %bb.w ], [ 0, %bb.x ]  ; 2 uses
  %i.go = add i32 %.030.i74, 8                    ; 3 uses
  %i.gp = or disjoint i32 %i.go, 7
  %i.gq = icmp ult i32 %i.gp, %i.fp
  br i1 %i.gq, label %bb.w, label %.loopexit29.i66, !llvm.loop !8

.loopexit29.i66:                                  ; preds = %bb.y, %bb.v
  %i.gr = phi i32 [ %i.ft, %bb.v ], [ %i.gn, %bb.y ]
  %.1.i67 = phi i32 [ 0, %bb.v ], [ %i.go, %bb.y ] ; 2 uses
  %i.gs = icmp ult i32 %.1.i67, %i.fp
  br i1 %i.gs, label %.lr.ph32.i68, label %SHA3Update.exit

.lr.ph32.i68:                                     ; preds = %.loopexit29.i66
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.gu = zext i32 %.1.i67 to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %.lr.ph32.i68
  %i.gv = phi i32 [ %i.gr, %.lr.ph32.i68 ], [ %i.hg, %bb.ab ]
  %indvars.iv.i69 = phi i64 [ %i.gu, %.lr.ph32.i68 ], [ %indvars.iv.next.i70, %bb.ab ] ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fq, i64 %indvars.iv.i69
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !52
  %i.gy = zext i32 %i.gv to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 %i.gy ; 2 uses
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !52
  %i.hb = xor i8 %i.ha, %i.gx
  store i8 %i.hb, ptr %i.gz, align 1, !tbaa !52
  %i.hc = load i32, ptr %i.fs, align 4, !tbaa !131
  %i.hd = add i32 %i.hc, 1                        ; 3 uses
  store i32 %i.hd, ptr %i.fs, align 4, !tbaa !131
  %i.he = load i32, ptr %i.gt, align 8, !tbaa !129
  %i.hf = icmp eq i32 %i.hd, %i.he
  br i1 %i.hf, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.fs, align 4, !tbaa !131
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.hg = phi i32 [ %i.hd, %bb.z ], [ 0, %bb.aa ]
  %indvars.iv.next.i70 = add nuw nsw i64 %indvars.iv.i69, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next.i70 to i32
  %exitcond = icmp eq i32 %i.fp, %lftr.wideiv
  br i1 %exitcond, label %SHA3Update.exit, label %bb.z, !llvm.loop !9

SHA3Update.exit:                                  ; preds = %bb.ab, %bb.t, %.lr.ph32.i, %bb.b, %.loopexit29.i66, %bb.u, %.loopexit29.i53, %bb.m, %SHA3Update.exit51, %SHA3Update.exit39, %bb.a
  ret void
}

declare i64 @sqlite3_value_int64(ptr noundef) local_unnamed_addr #5

declare double @sqlite3_value_double(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @sha3_step_vformat(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, ...) unnamed_addr #4 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = alloca [50 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.b = call ptr @sqlite3_vsnprintf(i32 noundef 50, ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef nonnull %2) #45 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.c = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #46 ; 2 uses
  %i.d = trunc i64 %i.c to i32                    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1604 ; 7 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !131  ; 3 uses
  %i.g = and i32 %i.f, 7
  %i.h = icmp eq i32 %i.g, 0
  %i.i = icmp ugt i32 %i.d, 7
  %or.cond33.i = and i1 %i.i, %i.h
  br i1 %or.cond33.i, label %.lr.ph.i, label %.loopexit29.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %3 = and i64 %i.c, 4294967295
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %.lr.ph.i ] ; 2 uses
  %.030.i = phi i32 [ %i.u, %bb.d ], [ %i.f, %.lr.ph.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.l = load i64, ptr %i.k, align 8, !tbaa !130
  %i.m = lshr i32 %.030.i, 3
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.n ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !52
  %i.q = xor i64 %i.p, %i.l
  store i64 %i.q, ptr %i.o, align 8, !tbaa !52
  %i.r = load i32, ptr %i.e, align 4, !tbaa !131
  %i.s = add i32 %i.r, 8                          ; 3 uses
  store i32 %i.s, ptr %i.e, align 4, !tbaa !131
  %i.t = load i32, ptr %i.j, align 8, !tbaa !129
  %.not.i = icmp ult i32 %i.s, %i.t
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.e, align 4, !tbaa !131
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = phi i32 [ %i.s, %bb.b ], [ 0, %bb.c ]    ; 2 uses
  %indvars.iv.next = add nuw i64 %indvars.iv, 8   ; 3 uses
  %4 = or disjoint i64 %indvars.iv.next, 7
  %i.v = icmp ult i64 %4, %3
  br i1 %i.v, label %bb.b, label %.loopexit29.i.loopexit, !llvm.loop !8

.loopexit29.i.loopexit:                           ; preds = %bb.d
  %5 = trunc nuw i64 %indvars.iv.next to i32
  br label %.loopexit29.i

.loopexit29.i:                                    ; preds = %.loopexit29.i.loopexit, %bb.a
  %i.w = phi i32 [ %i.f, %bb.a ], [ %i.u, %.loopexit29.i.loopexit ]
  %.1.i = phi i32 [ 0, %bb.a ], [ %5, %.loopexit29.i.loopexit ] ; 2 uses
  %i.x = icmp ult i32 %.1.i, %i.d
  br i1 %i.x, label %.lr.ph32.i, label %SHA3Update.exit

.lr.ph32.i:                                       ; preds = %.loopexit29.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.z = zext i32 %.1.i to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph32.i
  %i.aa = phi i32 [ %i.w, %.lr.ph32.i ], [ %i.al, %bb.g ]
  %indvars.iv.i = phi i64 [ %i.z, %.lr.ph32.i ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !52
  %i.ad = zext i32 %i.aa to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.ad ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !52
  %i.ag = xor i8 %i.af, %i.ac
  store i8 %i.ag, ptr %i.ae, align 1, !tbaa !52
  %i.ah = load i32, ptr %i.e, align 4, !tbaa !131
  %i.ai = add i32 %i.ah, 1                        ; 3 uses
  store i32 %i.ai, ptr %i.e, align 4, !tbaa !131
  %i.aj = load i32, ptr %i.y, align 8, !tbaa !129
  %i.ak = icmp eq i32 %i.ai, %i.aj
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call fastcc void @KeccakF1600Step(ptr noundef nonnull %0)
  store i32 0, ptr %i.e, align 4, !tbaa !131
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.al = phi i32 [ %i.ai, %bb.e ], [ 0, %bb.f ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond = icmp eq i32 %i.d, %lftr.wideiv
  br i1 %exitcond, label %SHA3Update.exit, label %bb.e, !llvm.loop !9

SHA3Update.exit:                                  ; preds = %bb.g, %.loopexit29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #45
  ret void
}

declare ptr @sqlite3_vsnprintf(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @sqlite3_context_db_handle(ptr noundef) local_unnamed_addr #5

declare i32 @sqlite3_stmt_readonly(ptr noundef) local_unnamed_addr #5

declare ptr @sqlite3_user_data(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @hash_finish(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #30 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 4, !tbaa !53   ; 5 uses
  %i.d = lshr i32 %i.c, 24
  %.sroa.043.0.insert.ext = zext nneg i32 %i.d to i64
  %i.e = load i32, ptr %i.a, align 4, !tbaa !53   ; 4 uses
  %i.f = add i32 %i.e, 8                          ; 2 uses
  store i32 %i.f, ptr %i.a, align 4, !tbaa !53
  %i.g = icmp ugt i32 %i.e, -9
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = add i32 %i.c, 1
  store i32 %i.i, ptr %i.h, align 4, !tbaa !53
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = lshr i32 %i.e, 3
  %i.k = and i32 %i.j, 63                         ; 2 uses
  %i.l = icmp eq i32 %i.k, 63
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 91
  store i8 -128, ptr %i.n, align 1
  tail call fastcc void @SHA1Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.m)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !53
  br label %hash_step.exit

bb.e:                                             ; preds = %bb.c
  %i.o = zext nneg i32 %i.k to i64
  br label %hash_step.exit

hash_step.exit:                                   ; preds = %bb.e, %bb.d
  %i.p = phi i32 [ %i.f, %bb.e ], [ %.pre, %bb.d ] ; 3 uses
  %.1.i = phi i32 [ 0, %bb.e ], [ 1, %bb.d ]      ; 2 uses
  %.0.i = phi i64 [ %i.o, %bb.e ], [ 0, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.0.i
  %i.s = zext nneg i32 %.1.i to i64
  %i.t = getelementptr inbounds nuw i8, ptr @.str.300, i64 %i.s
  %i.u = xor i32 %.1.i, 1
  %i.v = zext nneg i32 %i.u to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull readonly align 1 %i.t, i64 %i.v, i1 false)
  %i.w = and i32 %i.p, 504
  %.not35 = icmp eq i32 %i.w, 448
  br i1 %.not35, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %hash_step.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 91
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %hash_step.exit30
  %i.z = phi i32 [ %i.p, %.lr.ph ], [ %i.ai, %hash_step.exit30 ] ; 3 uses
  %i.aa = add i32 %i.z, 8                         ; 2 uses
  store i32 %i.aa, ptr %i.a, align 4, !tbaa !53
  %i.ab = icmp ugt i32 %i.z, -9
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = load i32, ptr %i.x, align 4, !tbaa !53
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.x, align 4, !tbaa !53
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ae = lshr i32 %i.z, 3
  %i.af = and i32 %i.ae, 63                       ; 2 uses
  %i.ag = icmp eq i32 %i.af, 63
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %i.y, align 1
  tail call fastcc void @SHA1Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.q)
  %.pre47 = load i32, ptr %i.a, align 4, !tbaa !53
  br label %hash_step.exit30

bb.j:                                             ; preds = %bb.h
  %i.ah = zext nneg i32 %i.af to i64
  br label %hash_step.exit30

hash_step.exit30:                                 ; preds = %bb.j, %bb.i
  %i.ai = phi i32 [ %i.aa, %bb.j ], [ %.pre47, %bb.i ] ; 3 uses
  %.1.i28 = phi i64 [ 1, %bb.j ], [ 0, %bb.i ]
  %.0.i29 = phi i64 [ %i.ah, %bb.j ], [ 0, %bb.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 %.0.i29
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aj, i8 0, i64 %.1.i28, i1 false)
  %i.ak = and i32 %i.ai, 504
  %.not = icmp eq i32 %i.ak, 448
  br i1 %.not, label %._crit_edge, label %bb.f, !llvm.loop !1072

._crit_edge:                                      ; preds = %hash_step.exit30, %hash_step.exit
  %.lcssa = phi i32 [ %i.p, %hash_step.exit ], [ %i.ai, %hash_step.exit30 ] ; 2 uses
  %i.al = add i32 %.lcssa, 64
  store i32 %i.al, ptr %i.a, align 4, !tbaa !53
  %i.am = icmp ugt i32 %.lcssa, -65
  br i1 %i.am, label %bb.k, label %hash_step.exit33

bb.k:                                             ; preds = %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !53
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !53
  br label %hash_step.exit33

hash_step.exit33:                                 ; preds = %._crit_edge, %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 84
  %trunc = zext i32 %i.e to i64
  %rev = tail call i64 @llvm.bswap.i64(i64 %trunc)
  %i.ar = shl i32 %i.c, 24
  %.sroa.6.0.insert.shift = zext i32 %i.ar to i64
  %.sroa.6.0.insert.insert = or disjoint i64 %rev, %.sroa.6.0.insert.shift
  %i.as = shl i32 %i.c, 8
  %i.at = and i32 %i.as, 16711680
  %.sroa.544.0.insert.shift = zext nneg i32 %i.at to i64
  %.sroa.544.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.insert, %.sroa.544.0.insert.shift
  %i.au = lshr i32 %i.c, 8
  %i.av = and i32 %i.au, 65280
  %.sroa.4.0.insert.shift = zext nneg i32 %i.av to i64
  %.sroa.4.0.insert.insert = or disjoint i64 %.sroa.544.0.insert.insert, %.sroa.4.0.insert.shift
  %.sroa.043.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.insert, %.sroa.043.0.insert.ext
  store i64 %.sroa.043.0.insert.insert, ptr %i.aq, align 4
  tail call fastcc void @SHA1Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.q)
  %i.aw = load i32, ptr %0, align 4, !tbaa !53    ; 4 uses
  %i.ax = lshr i32 %i.aw, 24
  %i.ay = trunc nuw i32 %i.ax to i8               ; 3 uses
  %i.az = lshr i32 %i.aw, 16
  %i.ba = trunc i32 %i.az to i8                   ; 3 uses
  %i.bb = lshr i32 %i.aw, 8
  %i.bc = trunc i32 %i.bb to i8                   ; 3 uses
  %i.bd = trunc i32 %i.aw to i8                   ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !53 ; 4 uses
  %i.bg = lshr i32 %i.bf, 24
  %i.bh = trunc nuw i32 %i.bg to i8               ; 3 uses
  %i.bi = lshr i32 %i.bf, 16
  %i.bj = trunc i32 %i.bi to i8                   ; 3 uses
  %i.bk = lshr i32 %i.bf, 8
  %i.bl = trunc i32 %i.bk to i8                   ; 3 uses
  %i.bm = trunc i32 %i.bf to i8                   ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !53 ; 4 uses
  %i.bp = lshr i32 %i.bo, 24
  %i.bq = trunc nuw i32 %i.bp to i8               ; 3 uses
  %i.br = lshr i32 %i.bo, 16
  %i.bs = trunc i32 %i.br to i8                   ; 3 uses
  %i.bt = lshr i32 %i.bo, 8
  %i.bu = trunc i32 %i.bt to i8                   ; 3 uses
  %i.bv = trunc i32 %i.bo to i8                   ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !53 ; 4 uses
  %i.by = lshr i32 %i.bx, 24
  %i.bz = trunc nuw i32 %i.by to i8               ; 3 uses
  %i.ca = lshr i32 %i.bx, 16
  %i.cb = trunc i32 %i.ca to i8                   ; 3 uses
  %i.cc = lshr i32 %i.bx, 8
  %i.cd = trunc i32 %i.cc to i8                   ; 3 uses
  %i.ce = trunc i32 %i.bx to i8                   ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !53 ; 4 uses
  %i.ch = lshr i32 %i.cg, 24
  %i.ci = trunc nuw i32 %i.ch to i8               ; 3 uses
  %i.cj = lshr i32 %i.cg, 16
  %i.ck = trunc i32 %i.cj to i8                   ; 3 uses
  %i.cl = lshr i32 %i.cg, 8
  %i.cm = trunc i32 %i.cl to i8                   ; 3 uses
  %i.cn = trunc i32 %i.cg to i8                   ; 3 uses
  %.not27 = icmp eq i32 %2, 0
  br i1 %.not27, label %.preheader.preheader, label %bb.l

.preheader.preheader:                             ; preds = %hash_step.exit33
  %i.co = lshr i8 %i.ay, 4
  %i.cp = zext nneg i8 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !52
  store i8 %i.cr, ptr %1, align 1, !tbaa !52
  %i.cs = and i8 %i.ay, 15
  %i.ct = zext nneg i8 %i.cs to i64
end_hunk_1
