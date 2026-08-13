inline.NumInlined: 413
inline.NumDeleted: 87
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@Io_ReadBlifMv:bb.a
  %i.px = phi ptr [ %i.aaq, %.critedge8.i ], [ %i.pu, %Io_MvReadPreparse.exit ]
  %i.py = getelementptr i8, ptr %i.px, i64 8
  %.val64.i = load ptr, ptr %i.py, align 8, !tbaa !13
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %.val64.i, i64 %indvars.iv205.i.a
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !39 ; 13 uses
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !62 ; 5 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qa, i64 128 ; 6 uses
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !63
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 64
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !22 ; 3 uses
  %i.qg = icmp eq ptr %i.qb, null
  br i1 %i.qg, label %bb.es, label %bb.et

bb.es:                                            ; preds = %.lr.ph185.i.a
  %i.qh = tail call ptr @Abc_NtkAlloc(i32 noundef 1, i32 noundef 1, i32 noundef 1) #23
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qa, i64 112 ; 2 uses
  store ptr %i.qh, ptr %i.qi, align 8, !tbaa !68
  %i.qj = tail call ptr @Extra_UtilStrsav(ptr noundef nonnull @.str.4) #23
  br label %bb.fe

bb.et:                                            ; preds = %.lr.ph185.i.a
  %i.qk = load i8, ptr %i.qb, align 1, !tbaa !40  ; 2 uses
  %.not11.i.i.i = icmp eq i8 %i.qk, 0
  br i1 %.not11.i.i.i, label %Io_MvSplitIntoTokens.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.et, %bb.eu
  %i.ql = phi i8 [ %i.qn, %bb.eu ], [ %i.qk, %bb.et ]
  %.012.i.i.i = phi ptr [ %i.qm, %bb.eu ], [ %i.qb, %bb.et ] ; 2 uses
  switch i8 %i.ql, label %bb.eu [
    i8 32, label %Io_MvCharIsSpace.exit.thread.i.i.i
    i8 13, label %Io_MvCharIsSpace.exit.thread.i.i.i
    i8 9, label %Io_MvCharIsSpace.exit.thread.i.i.i
    i8 10, label %Io_MvCharIsSpace.exit.thread.i.i.i
  ]

Io_MvCharIsSpace.exit.thread.i.i.i:               ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i
  store i8 0, ptr %.012.i.i.i, align 1, !tbaa !40
  br label %bb.eu

bb.eu:                                            ; preds = %Io_MvCharIsSpace.exit.thread.i.i.i, %.lr.ph.i.i.i
  %i.qm = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 1 ; 3 uses
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !40  ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.qn, 0
  br i1 %.not.i.i.i, label %Io_MvSplitIntoTokens.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !69

Io_MvSplitIntoTokens.exit.i.i:                    ; preds = %bb.eu, %bb.et
  %.0.lcssa.i.i.i = phi ptr [ %i.qb, %bb.et ], [ %i.qm, %bb.eu ]
  tail call fastcc void @Io_MvCollectTokens(ptr noundef %i.qf, ptr noundef nonnull %i.qb, ptr noundef nonnull %.0.lcssa.i.i.i)
  %i.qo = getelementptr i8, ptr %i.qf, i64 8      ; 2 uses
  %.val25.i.i = load ptr, ptr %i.qo, align 8, !tbaa !13
  %i.qp = load ptr, ptr %.val25.i.i, align 8, !tbaa !39
  %i.qq = getelementptr i8, ptr %i.qf, i64 4
  %.val23.i.i = load i32, ptr %i.qq, align 4, !tbaa !8 ; 2 uses
  %.not.i.i106 = icmp eq i32 %.val23.i.i, 2
  br i1 %.not.i.i106, label %bb.ey, label %bb.ev

bb.ev:                                            ; preds = %Io_MvSplitIntoTokens.exit.i.i
  %i.qr = load ptr, ptr %i.qc, align 8, !tbaa !63 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 88
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qr, i64 24
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !14 ; 2 uses
  %i.qv = getelementptr i8, ptr %i.qu, i64 4
  %.val.i.i.i = load i32, ptr %i.qv, align 4, !tbaa !8 ; 2 uses
  %i.qw = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.qw, label %.lr.ph.i26.i.i, label %Io_MvParseLineModel.exit.i

.lr.ph.i26.i.i:                                   ; preds = %bb.ev
  %i.qx = getelementptr i8, ptr %i.qu, i64 8
  %.val9.i.i.i = load ptr, ptr %i.qx, align 8, !tbaa !13
  %wide.trip.count.i.i.i = zext nneg i32 %.val.i.i.i to i64
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ex, %.lr.ph.i26.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i26.i.i ], [ %indvars.iv.next.i.i.i, %bb.ex ] ; 3 uses
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %.val9.i.i.i, i64 %indvars.iv.i.i.i
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !39
  %i.ra = icmp ult ptr %i.qp, %i.qz
  br i1 %i.ra, label %.critedge.loopexit.split.loop.exit14.i.i.i, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %Io_MvParseLineModel.exit.i, label %bb.ew, !llvm.loop !66

.critedge.loopexit.split.loop.exit14.i.i.i:       ; preds = %bb.ew
  %i.rb = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  br label %Io_MvParseLineModel.exit.i

bb.ey:                                            ; preds = %Io_MvSplitIntoTokens.exit.i.i
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qa, i64 104
  %i.rd = load i32, ptr %i.rc, align 8, !tbaa !61
  %.not21.i.i = icmp eq i32 %i.rd, 0
  br i1 %.not21.i.i, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.re = tail call ptr @Abc_NtkAlloc(i32 noundef 1, i32 noundef 6, i32 noundef 1) #23
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qa, i64 112
  store ptr %i.re, ptr %i.rf, align 8, !tbaa !68
  br label %bb.fd

bb.fa:                                            ; preds = %bb.ey
  %i.rg = load ptr, ptr %i.qc, align 8, !tbaa !63
  %i.rh = load i32, ptr %i.rg, align 8, !tbaa !29
  %.not22.i.i = icmp eq i32 %i.rh, 0
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qa, i64 112 ; 2 uses
  br i1 %.not22.i.i, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.rj = tail call ptr @Abc_NtkAlloc(i32 noundef 1, i32 noundef 5, i32 noundef 1) #23
  store ptr %i.rj, ptr %i.ri, align 8, !tbaa !68
  br label %bb.fd

bb.fc:                                            ; preds = %bb.fa
  %i.rk = tail call ptr @Abc_NtkAlloc(i32 noundef 1, i32 noundef 1, i32 noundef 1) #23
  store ptr %i.rk, ptr %i.ri, align 8, !tbaa !68
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb, %bb.ez
  %.val24.i.i = load ptr, ptr %i.qo, align 8, !tbaa !13
  %i.rl = getelementptr inbounds nuw i8, ptr %.val24.i.i, i64 8
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !39
  %i.rn = tail call ptr @Extra_UtilStrsav(ptr noundef %i.rm) #23
  %i.ro = getelementptr inbounds nuw i8, ptr %i.qa, i64 112
  br label %bb.fe

Io_MvParseLineModel.exit.i:                       ; preds = %bb.ex, %.critedge.loopexit.split.loop.exit14.i.i.i, %bb.ev
  %.08.i.i.i = phi i32 [ -1, %bb.ev ], [ %i.rb, %.critedge.loopexit.split.loop.exit14.i.i.i ], [ -1, %bb.ex ]
  %i.rp = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.qs, ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %.08.i.i.i, i32 noundef %.val23.i.i) #23 ; 0 uses
  br label %Io_MvParse.exit

bb.fe:                                            ; preds = %bb.fd, %bb.es
  %.sink241.in.i = phi ptr [ %i.qi, %bb.es ], [ %i.ro, %bb.fd ]
  %.sink.i = phi ptr [ %i.qj, %bb.es ], [ %i.rn, %bb.fd ]
  %.sink241.i = load ptr, ptr %.sink241.in.i, align 8, !tbaa !68 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %.sink241.i, i64 8
  store ptr %.sink.i, ptr %i.rq, align 8, !tbaa !70
  %i.rr = load ptr, ptr %i.bx, align 8, !tbaa !35
  %i.rs = getelementptr inbounds nuw i8, ptr %i.qa, i64 112 ; 5 uses
  %i.rt = tail call i32 @Abc_DesAddModel(ptr noundef %i.rr, ptr noundef nonnull %.sink241.i) #23
  %.not55.i = icmp eq i32 %i.rt, 0
  br i1 %.not55.i, label %bb.ff, label %.preheader.i107

.preheader.i107:                                  ; preds = %bb.fe
  %i.ru = getelementptr inbounds nuw i8, ptr %i.qa, i64 8 ; 2 uses
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !54 ; 2 uses
  %i.rw = getelementptr i8, ptr %i.rv, i64 4
  %.val58172.i = load i32, ptr %i.rw, align 4, !tbaa !8
  %i.rx = icmp sgt i32 %.val58172.i, 0
  br i1 %i.rx, label %.lr.ph.i110, label %.critedge2.preheader.i

bb.ff:                                            ; preds = %bb.fe
  %i.ry = getelementptr inbounds nuw i8, ptr %calloc.i, i64 88
  %i.rz = load ptr, ptr %i.qa, align 8, !tbaa !62 ; 2 uses
  %i.sa = load ptr, ptr %i.i, align 8, !tbaa !14  ; 2 uses
  %i.sb = getelementptr i8, ptr %i.sa, i64 4
  %.val.i.i113 = load i32, ptr %i.sb, align 4, !tbaa !8 ; 2 uses
  %i.sc = icmp sgt i32 %.val.i.i113, 0
  br i1 %i.sc, label %.lr.ph.i.i116, label %Io_MvGetLine.exit.i114

.lr.ph.i.i116:                                    ; preds = %bb.ff
  %i.sd = getelementptr i8, ptr %i.sa, i64 8
  %.val9.i.i117 = load ptr, ptr %i.sd, align 8, !tbaa !13
  %wide.trip.count.i.i118 = zext nneg i32 %.val.i.i113 to i64
  br label %bb.fg

bb.fg:                                            ; preds = %bb.fh, %.lr.ph.i.i116
  %indvars.iv.i.i119 = phi i64 [ 0, %.lr.ph.i.i116 ], [ %indvars.iv.next.i.i120, %bb.fh ] ; 3 uses
  %i.se = getelementptr inbounds nuw [8 x i8], ptr %.val9.i.i117, i64 %indvars.iv.i.i119
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !39
  %i.sg = icmp ult ptr %i.rz, %i.sf
  br i1 %i.sg, label %.critedge.loopexit.split.loop.exit14.i.i122, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %indvars.iv.next.i.i120 = add nuw nsw i64 %indvars.iv.i.i119, 1 ; 2 uses
  %exitcond.not.i.i121 = icmp eq i64 %indvars.iv.next.i.i120, %wide.trip.count.i.i118
  br i1 %exitcond.not.i.i121, label %Io_MvGetLine.exit.i114, label %bb.fg, !llvm.loop !66

.critedge.loopexit.split.loop.exit14.i.i122:      ; preds = %bb.fg
  %i.sh = trunc nuw nsw i64 %indvars.iv.i.i119 to i32
  br label %Io_MvGetLine.exit.i114

Io_MvGetLine.exit.i114:                           ; preds = %bb.fh, %.critedge.loopexit.split.loop.exit14.i.i122, %bb.ff
  %.08.i.i115 = phi i32 [ -1, %bb.ff ], [ %i.sh, %.critedge.loopexit.split.loop.exit14.i.i122 ], [ -1, %bb.fh ]
  %i.si = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ry, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %.08.i.i115, ptr noundef %i.rz) #23 ; 0 uses
  br label %Io_MvParse.exit

.critedge2.preheader.i:                           ; preds = %Io_MvParseLineInputs.exit.i, %.preheader.i107
  %i.sj = getelementptr inbounds nuw i8, ptr %i.qa, i64 16 ; 2 uses
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !55 ; 2 uses
  %i.sl = getelementptr i8, ptr %i.sk, i64 4
  %.val57174.i = load i32, ptr %i.sl, align 4, !tbaa !8
  %i.sm = icmp sgt i32 %.val57174.i, 0
  br i1 %i.sm, label %.lr.ph176.i, label %.critedge4.i

.lr.ph.i110:                                      ; preds = %.preheader.i107, %Io_MvParseLineInputs.exit.i
  %indvars.iv.i111 = phi i64 [ %indvars.iv.next.i112, %Io_MvParseLineInputs.exit.i ], [ 0, %.preheader.i107 ] ; 2 uses
  %i.sn = phi ptr [ %i.ue, %Io_MvParseLineInputs.exit.i ], [ %i.rv, %.preheader.i107 ]
  %i.so = getelementptr i8, ptr %i.sn, i64 8
  %.val63.i = load ptr, ptr %i.so, align 8, !tbaa !13
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %.val63.i, i64 %indvars.iv.i111
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !39 ; 3 uses
  %i.sr = load ptr, ptr %i.qc, align 8, !tbaa !63
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 64
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !22 ; 5 uses
  %i.su = load i8, ptr %i.sq, align 1, !tbaa !40  ; 2 uses
  %.not11.i.i67.i = icmp eq i8 %i.su, 0
  br i1 %.not11.i.i67.i, label %Io_MvSplitIntoTokens.exit.i72.thread.i, label %.lr.ph.i.i68.i

Io_MvSplitIntoTokens.exit.i72.thread.i:           ; preds = %.lr.ph.i110
  %i.sv = getelementptr inbounds nuw i8, ptr %i.st, i64 4
  store i32 0, ptr %i.sv, align 4, !tbaa !8
  br label %Io_MvParseLineInputs.exit.i

.lr.ph.i.i68.i:                                   ; preds = %.lr.ph.i110, %bb.fi
  %i.sw = phi i8 [ %i.sy, %bb.fi ], [ %i.su, %.lr.ph.i110 ]
  %.012.i.i69.i = phi ptr [ %i.sx, %bb.fi ], [ %i.sq, %.lr.ph.i110 ] ; 3 uses
  switch i8 %i.sw, label %bb.fi [
    i8 32, label %Io_MvCharIsSpace.exit.thread.i.i70.i
    i8 13, label %Io_MvCharIsSpace.exit.thread.i.i70.i
    i8 9, label %Io_MvCharIsSpace.exit.thread.i.i70.i
    i8 10, label %Io_MvCharIsSpace.exit.thread.i.i70.i
  ]

Io_MvCharIsSpace.exit.thread.i.i70.i:             ; preds = %.lr.ph.i.i68.i, %.lr.ph.i.i68.i, %.lr.ph.i.i68.i, %.lr.ph.i.i68.i
  store i8 0, ptr %.012.i.i69.i, align 1, !tbaa !40
  br label %bb.fi

bb.fi:                                            ; preds = %Io_MvCharIsSpace.exit.thread.i.i70.i, %.lr.ph.i.i68.i
  %i.sx = getelementptr inbounds nuw i8, ptr %.012.i.i69.i, i64 1 ; 2 uses
  %i.sy = load i8, ptr %i.sx, align 1, !tbaa !40  ; 2 uses
  %.not.i.i71.i = icmp eq i8 %i.sy, 0
  br i1 %.not.i.i71.i, label %Io_MvSplitIntoTokens.exit.i72.i, label %.lr.ph.i.i68.i, !llvm.loop !69

Io_MvSplitIntoTokens.exit.i72.i:                  ; preds = %bb.fi
  %i.sz = getelementptr inbounds nuw i8, ptr %i.st, i64 4 ; 4 uses
  store i32 0, ptr %i.sz, align 4, !tbaa !8
  %3 = getelementptr i8, ptr %i.st, i64 8         ; 5 uses
  br label %bb.fj

bb.fj:                                            ; preds = %.loopexit.i.i, %Io_MvSplitIntoTokens.exit.i72.i
  %i.ta = phi i32 [ 0, %Io_MvSplitIntoTokens.exit.i72.i ], [ %.val12.i.pr.i, %.loopexit.i.i ] ; 8 uses
  %.09.i.i = phi ptr [ %i.sq, %Io_MvSplitIntoTokens.exit.i72.i ], [ %i.tv, %.loopexit.i.i ] ; 4 uses
  %i.tb = load i8, ptr %.09.i.i, align 1, !tbaa !40
  %i.tc = icmp eq i8 %i.tb, 0
  br i1 %i.tc, label %.loopexit.i.i, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.td = load i32, ptr %i.st, align 8, !tbaa !12
  %i.te = icmp eq i32 %i.ta, %i.td
  br i1 %i.te, label %bb.fl, label %.Vec_PtrPush.exit_crit_edge.i.i

.Vec_PtrPush.exit_crit_edge.i.i:                  ; preds = %bb.fk
  %.pre.i109.i = load ptr, ptr %3, align 8, !tbaa !13
  br label %Vec_PtrPush.exit.i.i

bb.fl:                                            ; preds = %bb.fk
  %i.tf = icmp slt i32 %i.ta, 16
  br i1 %i.tf, label %bb.fm, label %bb.fp

bb.fm:                                            ; preds = %bb.fl
  %i.tg = load ptr, ptr %3, align 8, !tbaa !13    ; 2 uses
  %.not9.i.i.i116.i = icmp eq ptr %i.tg, null
  br i1 %.not9.i.i.i116.i, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.th = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.tg, i64 noundef 128) #25
  br label %Vec_PtrGrow.exit12.sink.split.i.i114.i

bb.fo:                                            ; preds = %bb.fm
  %i.ti = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #22
  br label %Vec_PtrGrow.exit12.sink.split.i.i114.i

bb.fp:                                            ; preds = %bb.fl
  %i.tj = icmp samesign ult i32 %i.ta, 1073741823
  %i.tk = shl nuw nsw i32 %i.ta, 1
  %spec.select.i.i111.i = select i1 %i.tj, i32 %i.tk, i32 2147483647 ; 4 uses
  %.not.i10.i.i112.i = icmp samesign ult i32 %i.ta, %spec.select.i.i111.i
  %.pre11.i.i = load ptr, ptr %3, align 8, !tbaa !13 ; 3 uses
  br i1 %.not.i10.i.i112.i, label %bb.fq, label %Vec_PtrPush.exit.i.i

bb.fq:                                            ; preds = %bb.fp
  %.not9.i11.i.i113.i = icmp eq ptr %.pre11.i.i, null
  %i.tl = zext nneg i32 %spec.select.i.i111.i to i64
  %i.tm = shl nuw nsw i64 %i.tl, 3                ; 2 uses
  br i1 %.not9.i11.i.i113.i, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.tn = tail call ptr @realloc(ptr noundef nonnull %.pre11.i.i, i64 noundef %i.tm) #25
  br label %Vec_PtrGrow.exit12.sink.split.i.i114.i

bb.fs:                                            ; preds = %bb.fq
  %i.to = tail call noalias ptr @malloc(i64 noundef %i.tm) #22
  br label %Vec_PtrGrow.exit12.sink.split.i.i114.i

Vec_PtrGrow.exit12.sink.split.i.i114.i:           ; preds = %bb.fs, %bb.fr, %bb.fo, %bb.fn
  %i.tp = phi ptr [ %i.ti, %bb.fo ], [ %i.th, %bb.fn ], [ %i.tn, %bb.fr ], [ %i.to, %bb.fs ] ; 2 uses
  %spec.select.sink.i.i115.i = phi i32 [ 16, %bb.fo ], [ 16, %bb.fn ], [ %spec.select.i.i111.i, %bb.fr ], [ %spec.select.i.i111.i, %bb.fs ]
  store ptr %i.tp, ptr %3, align 8, !tbaa !13
  store i32 %spec.select.sink.i.i115.i, ptr %i.st, align 8, !tbaa !12
  %.pre12.i.i = load i32, ptr %i.sz, align 4, !tbaa !8
  br label %Vec_PtrPush.exit.i.i

Vec_PtrPush.exit.i.i:                             ; preds = %Vec_PtrGrow.exit12.sink.split.i.i114.i, %bb.fp, %.Vec_PtrPush.exit_crit_edge.i.i
  %i.tq = phi i32 [ %i.ta, %.Vec_PtrPush.exit_crit_edge.i.i ], [ %i.ta, %bb.fp ], [ %.pre12.i.i, %Vec_PtrGrow.exit12.sink.split.i.i114.i ] ; 2 uses
  %i.tr = phi ptr [ %.pre.i109.i, %.Vec_PtrPush.exit_crit_edge.i.i ], [ %.pre11.i.i, %bb.fp ], [ %i.tp, %Vec_PtrGrow.exit12.sink.split.i.i114.i ]
  %i.ts = add nsw i32 %i.tq, 1                    ; 2 uses
  store i32 %i.ts, ptr %i.sz, align 4, !tbaa !8
  %i.tt = sext i32 %i.tq to i64
  %i.tu = getelementptr inbounds [8 x i8], ptr %i.tr, i64 %i.tt
  store ptr %.09.i.i, ptr %i.tu, align 8, !tbaa !39
  %scevgep.i110.i = getelementptr i8, ptr %.09.i.i, i64 1 ; 2 uses
  %strlen.i.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep.i110.i)
  %scevgep10.i.i = getelementptr i8, ptr %scevgep.i110.i, i64 %strlen.i.i
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %Vec_PtrPush.exit.i.i, %bb.fj
  %.val12.i.pr.i = phi i32 [ %i.ta, %bb.fj ], [ %i.ts, %Vec_PtrPush.exit.i.i ] ; 2 uses
  %.2.i.i = phi ptr [ %.09.i.i, %bb.fj ], [ %scevgep10.i.i, %Vec_PtrPush.exit.i.i ] ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 1
  %i.tw = icmp ult ptr %.2.i.i, %.012.i.i69.i
  br i1 %i.tw, label %bb.fj, label %Io_MvCollectTokens.exit.i, !llvm.loop !83

Io_MvCollectTokens.exit.i:                        ; preds = %.loopexit.i.i
  %i.tx = icmp sgt i32 %.val12.i.pr.i, 1
  br i1 %i.tx, label %.lr.ph.i74.i, label %Io_MvParseLineInputs.exit.i

.lr.ph.i74.i:                                     ; preds = %Io_MvCollectTokens.exit.i, %.lr.ph.i74.i
  %indvars.iv.i75.i = phi i64 [ %indvars.iv.next.i76.i, %.lr.ph.i74.i ], [ 1, %Io_MvCollectTokens.exit.i ] ; 2 uses
  %.val10.i.i = load ptr, ptr %3, align 8, !tbaa !13
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %.val10.i.i, i64 %indvars.iv.i75.i
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !39
  %i.ua = load ptr, ptr %i.rs, align 8, !tbaa !68
  %i.ub = tail call ptr @Io_ReadCreatePi(ptr noundef %i.ua, ptr noundef %i.tz) #23 ; 0 uses
  %indvars.iv.next.i76.i = add nuw nsw i64 %indvars.iv.i75.i, 1 ; 2 uses
  %.val.i77.i = load i32, ptr %i.sz, align 4, !tbaa !8
  %i.uc = sext i32 %.val.i77.i to i64
  %i.ud = icmp slt i64 %indvars.iv.next.i76.i, %i.uc
  br i1 %i.ud, label %.lr.ph.i74.i, label %Io_MvParseLineInputs.exit.i, !llvm.loop !84

Io_MvParseLineInputs.exit.i:                      ; preds = %.lr.ph.i74.i, %Io_MvCollectTokens.exit.i, %Io_MvSplitIntoTokens.exit.i72.thread.i
  %indvars.iv.next.i112 = add nuw nsw i64 %indvars.iv.i111, 1 ; 2 uses
  %i.ue = load ptr, ptr %i.ru, align 8, !tbaa !54 ; 2 uses
  %i.uf = getelementptr i8, ptr %i.ue, i64 4
  %.val58.i = load i32, ptr %i.uf, align 4, !tbaa !8
  %i.ug = sext i32 %.val58.i to i64
  %i.uh = icmp slt i64 %indvars.iv.next.i112, %i.ug
  br i1 %i.uh, label %.lr.ph.i110, label %.critedge2.preheader.i, !llvm.loop !85

.lr.ph176.i:                                      ; preds = %.critedge2.preheader.i, %Io_MvParseLineOutputs.exit.i
  %indvars.iv196.i = phi i64 [ %indvars.iv.next197.i, %Io_MvParseLineOutputs.exit.i ], [ 0, %.critedge2.preheader.i ] ; 2 uses
  %i.ui = phi ptr [ %i.vz, %Io_MvParseLineOutputs.exit.i ], [ %i.sk, %.critedge2.preheader.i ]
  %i.uj = getelementptr i8, ptr %i.ui, i64 8
  %.val62.i = load ptr, ptr %i.uj, align 8, !tbaa !13
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %.val62.i, i64 %indvars.iv196.i
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !39 ; 3 uses
  %i.um = load ptr, ptr %i.qc, align 8, !tbaa !63
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 64
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !22 ; 5 uses
  %i.up = load i8, ptr %i.ul, align 1, !tbaa !40  ; 2 uses
  %.not11.i.i78.i = icmp eq i8 %i.up, 0
  br i1 %.not11.i.i78.i, label %Io_MvSplitIntoTokens.exit.i83.thread.i, label %.lr.ph.i.i79.i

Io_MvSplitIntoTokens.exit.i83.thread.i:           ; preds = %.lr.ph176.i
  %i.uq = getelementptr inbounds nuw i8, ptr %i.uo, i64 4
  store i32 0, ptr %i.uq, align 4, !tbaa !8
  br label %Io_MvParseLineOutputs.exit.i

.lr.ph.i.i79.i:                                   ; preds = %.lr.ph176.i, %bb.ft
  %i.ur = phi i8 [ %i.ut, %bb.ft ], [ %i.up, %.lr.ph176.i ]
  %.012.i.i80.i = phi ptr [ %i.us, %bb.ft ], [ %i.ul, %.lr.ph176.i ] ; 3 uses
  switch i8 %i.ur, label %bb.ft [
    i8 32, label %Io_MvCharIsSpace.exit.thread.i.i81.i
    i8 13, label %Io_MvCharIsSpace.exit.thread.i.i81.i
    i8 9, label %Io_MvCharIsSpace.exit.thread.i.i81.i
    i8 10, label %Io_MvCharIsSpace.exit.thread.i.i81.i
  ]

Io_MvCharIsSpace.exit.thread.i.i81.i:             ; preds = %.lr.ph.i.i79.i, %.lr.ph.i.i79.i, %.lr.ph.i.i79.i, %.lr.ph.i.i79.i
  store i8 0, ptr %.012.i.i80.i, align 1, !tbaa !40
  br label %bb.ft

bb.ft:                                            ; preds = %Io_MvCharIsSpace.exit.thread.i.i81.i, %.lr.ph.i.i79.i
  %i.us = getelementptr inbounds nuw i8, ptr %.012.i.i80.i, i64 1 ; 2 uses
  %i.ut = load i8, ptr %i.us, align 1, !tbaa !40  ; 2 uses
  %.not.i.i82.i = icmp eq i8 %i.ut, 0
  br i1 %.not.i.i82.i, label %Io_MvSplitIntoTokens.exit.i83.i, label %.lr.ph.i.i79.i, !llvm.loop !69

Io_MvSplitIntoTokens.exit.i83.i:                  ; preds = %bb.ft
  %i.uu = getelementptr inbounds nuw i8, ptr %i.uo, i64 4 ; 4 uses
  store i32 0, ptr %i.uu, align 4, !tbaa !8
  %4 = getelementptr i8, ptr %i.uo, i64 8         ; 5 uses
  br label %bb.fu

bb.fu:                                            ; preds = %.loopexit.i126.i, %Io_MvSplitIntoTokens.exit.i83.i
  %i.uv = phi i32 [ 0, %Io_MvSplitIntoTokens.exit.i83.i ], [ %.val12.i85.pr.i, %.loopexit.i126.i ] ; 8 uses
  %.09.i119.i = phi ptr [ %i.ul, %Io_MvSplitIntoTokens.exit.i83.i ], [ %i.vq, %.loopexit.i126.i ] ; 4 uses
  %i.uw = load i8, ptr %.09.i119.i, align 1, !tbaa !40
  %i.ux = icmp eq i8 %i.uw, 0
  br i1 %i.ux, label %.loopexit.i126.i, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.uy = load i32, ptr %i.uo, align 8, !tbaa !12
  %i.uz = icmp eq i32 %i.uv, %i.uy
  br i1 %i.uz, label %bb.fw, label %.Vec_PtrPush.exit_crit_edge.i120.i

.Vec_PtrPush.exit_crit_edge.i120.i:               ; preds = %bb.fv
  %.pre.i121.i = load ptr, ptr %4, align 8, !tbaa !13
  br label %Vec_PtrPush.exit.i122.i

bb.fw:                                            ; preds = %bb.fv
  %i.va = icmp slt i32 %i.uv, 16
  br i1 %i.va, label %bb.fx, label %bb.ga

bb.fx:                                            ; preds = %bb.fw
  %i.vb = load ptr, ptr %4, align 8, !tbaa !13    ; 2 uses
  %.not9.i.i.i135.i = icmp eq ptr %i.vb, null
  br i1 %.not9.i.i.i135.i, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.vc = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.vb, i64 noundef 128) #25
  br label %Vec_PtrGrow.exit12.sink.split.i.i132.i

bb.fz:                                            ; preds = %bb.fx
  %i.vd = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #22
  br label %Vec_PtrGrow.exit12.sink.split.i.i132.i

bb.ga:                                            ; preds = %bb.fw
  %i.ve = icmp samesign ult i32 %i.uv, 1073741823
  %i.vf = shl nuw nsw i32 %i.uv, 1
  %spec.select.i.i128.i = select i1 %i.ve, i32 %i.vf, i32 2147483647 ; 4 uses
  %.not.i10.i.i129.i = icmp samesign ult i32 %i.uv, %spec.select.i.i128.i
  %.pre11.i130.i = load ptr, ptr %4, align 8, !tbaa !13 ; 3 uses
  br i1 %.not.i10.i.i129.i, label %bb.gb, label %Vec_PtrPush.exit.i122.i

bb.gb:                                            ; preds = %bb.ga
  %.not9.i11.i.i131.i = icmp eq ptr %.pre11.i130.i, null
  %i.vg = zext nneg i32 %spec.select.i.i128.i to i64
  %i.vh = shl nuw nsw i64 %i.vg, 3                ; 2 uses
  br i1 %.not9.i11.i.i131.i, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.vi = tail call ptr @realloc(ptr noundef nonnull %.pre11.i130.i, i64 noundef %i.vh) #25
  br label %Vec_PtrGrow.exit12.sink.split.i.i132.i

bb.gd:                                            ; preds = %bb.gb
  %i.vj = tail call noalias ptr @malloc(i64 noundef %i.vh) #22
  br label %Vec_PtrGrow.exit12.sink.split.i.i132.i

Vec_PtrGrow.exit12.sink.split.i.i132.i:           ; preds = %bb.gd, %bb.gc, %bb.fz, %bb.fy
  %i.vk = phi ptr [ %i.vd, %bb.fz ], [ %i.vc, %bb.fy ], [ %i.vi, %bb.gc ], [ %i.vj, %bb.gd ] ; 2 uses
  %spec.select.sink.i.i133.i = phi i32 [ 16, %bb.fz ], [ 16, %bb.fy ], [ %spec.select.i.i128.i, %bb.gc ], [ %spec.select.i.i128.i, %bb.gd ]
  store ptr %i.vk, ptr %4, align 8, !tbaa !13
  store i32 %spec.select.sink.i.i133.i, ptr %i.uo, align 8, !tbaa !12
  %.pre12.i134.i = load i32, ptr %i.uu, align 4, !tbaa !8
  br label %Vec_PtrPush.exit.i122.i

Vec_PtrPush.exit.i122.i:                          ; preds = %Vec_PtrGrow.exit12.sink.split.i.i132.i, %bb.ga, %.Vec_PtrPush.exit_crit_edge.i120.i
  %i.vl = phi i32 [ %i.uv, %.Vec_PtrPush.exit_crit_edge.i120.i ], [ %i.uv, %bb.ga ], [ %.pre12.i134.i, %Vec_PtrGrow.exit12.sink.split.i.i132.i ] ; 2 uses
  %i.vm = phi ptr [ %.pre.i121.i, %.Vec_PtrPush.exit_crit_edge.i120.i ], [ %.pre11.i130.i, %bb.ga ], [ %i.vk, %Vec_PtrGrow.exit12.sink.split.i.i132.i ]
  %i.vn = add nsw i32 %i.vl, 1                    ; 2 uses
  store i32 %i.vn, ptr %i.uu, align 4, !tbaa !8
  %i.vo = sext i32 %i.vl to i64
  %i.vp = getelementptr inbounds [8 x i8], ptr %i.vm, i64 %i.vo
  store ptr %.09.i119.i, ptr %i.vp, align 8, !tbaa !39
  %scevgep.i123.i = getelementptr i8, ptr %.09.i119.i, i64 1 ; 2 uses
  %strlen.i124.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep.i123.i)
  %scevgep10.i125.i = getelementptr i8, ptr %scevgep.i123.i, i64 %strlen.i124.i
  br label %.loopexit.i126.i

.loopexit.i126.i:                                 ; preds = %Vec_PtrPush.exit.i122.i, %bb.fu
  %.val12.i85.pr.i = phi i32 [ %i.uv, %bb.fu ], [ %i.vn, %Vec_PtrPush.exit.i122.i ] ; 2 uses
  %.2.i127.i = phi ptr [ %.09.i119.i, %bb.fu ], [ %scevgep10.i125.i, %Vec_PtrPush.exit.i122.i ] ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %.2.i127.i, i64 1
  %i.vr = icmp ult ptr %.2.i127.i, %.012.i.i80.i
  br i1 %i.vr, label %bb.fu, label %Io_MvCollectTokens.exit136.i, !llvm.loop !83

Io_MvCollectTokens.exit136.i:                     ; preds = %.loopexit.i126.i
  %i.vs = icmp sgt i32 %.val12.i85.pr.i, 1
  br i1 %i.vs, label %.lr.ph.i86.i, label %Io_MvParseLineOutputs.exit.i

.lr.ph.i86.i:                                     ; preds = %Io_MvCollectTokens.exit136.i, %.lr.ph.i86.i
  %indvars.iv.i87.i = phi i64 [ %indvars.iv.next.i89.i, %.lr.ph.i86.i ], [ 1, %Io_MvCollectTokens.exit136.i ] ; 2 uses
  %.val10.i88.i = load ptr, ptr %4, align 8, !tbaa !13
  %i.vt = getelementptr inbounds nuw [8 x i8], ptr %.val10.i88.i, i64 %indvars.iv.i87.i
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !39
  %i.vv = load ptr, ptr %i.rs, align 8, !tbaa !68
  %i.vw = tail call ptr @Io_ReadCreatePo(ptr noundef %i.vv, ptr noundef %i.vu) #23 ; 0 uses
  %indvars.iv.next.i89.i = add nuw nsw i64 %indvars.iv.i87.i, 1 ; 2 uses
  %.val.i90.i = load i32, ptr %i.uu, align 4, !tbaa !8
  %i.vx = sext i32 %.val.i90.i to i64
  %i.vy = icmp slt i64 %indvars.iv.next.i89.i, %i.vx
  br i1 %i.vy, label %.lr.ph.i86.i, label %Io_MvParseLineOutputs.exit.i, !llvm.loop !86

Io_MvParseLineOutputs.exit.i:                     ; preds = %.lr.ph.i86.i, %Io_MvCollectTokens.exit136.i, %Io_MvSplitIntoTokens.exit.i83.thread.i
  %indvars.iv.next197.i = add nuw nsw i64 %indvars.iv196.i, 1 ; 2 uses
  %i.vz = load ptr, ptr %i.sj, align 8, !tbaa !55 ; 2 uses
  %i.wa = getelementptr i8, ptr %i.vz, i64 4
  %.val57.i = load i32, ptr %i.wa, align 4, !tbaa !8
  %i.wb = sext i32 %.val57.i to i64
  %i.wc = icmp slt i64 %indvars.iv.next197.i, %i.wb
  br i1 %i.wc, label %.lr.ph176.i, label %.critedge4.i, !llvm.loop !87

.critedge4.i:                                     ; preds = %Io_MvParseLineOutputs.exit.i, %.critedge2.preheader.i
  %i.wd = load ptr, ptr %i.rs, align 8, !tbaa !68 ; 2 uses
  %i.we = getelementptr i8, ptr %i.wd, i64 48
  %.val66.i = load ptr, ptr %i.we, align 8, !tbaa !88
  %i.wf = getelementptr i8, ptr %.val66.i, i64 4
  %.val66.val.i = load i32, ptr %i.wf, align 4, !tbaa !8 ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.qa, i64 88 ; 2 uses
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !60 ; 2 uses
  %i.wi = getelementptr i8, ptr %i.wh, i64 4
  %.val56177.i = load i32, ptr %i.wi, align 4, !tbaa !8
  %i.wj = icmp sgt i32 %.val56177.i, 0
  br i1 %i.wj, label %.lr.ph179.i, label %.critedge6.i

.lr.ph179.i:                                      ; preds = %.critedge4.i, %Io_MvParseLineConstrs.exit.i
  %indvars.iv199.i = phi i64 [ %indvars.iv.next200.i, %Io_MvParseLineConstrs.exit.i ], [ 0, %.critedge4.i ] ; 2 uses
  %i.wk = phi ptr [ %i.yb, %Io_MvParseLineConstrs.exit.i ], [ %i.wh, %.critedge4.i ]
  %i.wl = getelementptr i8, ptr %i.wk, i64 8
  %.val61.i = load ptr, ptr %i.wl, align 8, !tbaa !13
  %i.wm = getelementptr inbounds nuw [8 x i8], ptr %.val61.i, i64 %indvars.iv199.i
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !39 ; 3 uses
  %i.wo = load ptr, ptr %i.qc, align 8, !tbaa !63
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 64
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !22 ; 5 uses
  %i.wr = load i8, ptr %i.wn, align 1, !tbaa !40  ; 2 uses
  %.not11.i.i91.i = icmp eq i8 %i.wr, 0
  br i1 %.not11.i.i91.i, label %Io_MvSplitIntoTokens.exit.i96.thread.i, label %.lr.ph.i.i92.i

Io_MvSplitIntoTokens.exit.i96.thread.i:           ; preds = %.lr.ph179.i
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wq, i64 4
  store i32 0, ptr %i.ws, align 4, !tbaa !8
  br label %Io_MvParseLineConstrs.exit.i

.lr.ph.i.i92.i:                                   ; preds = %.lr.ph179.i, %bb.ge
  %i.wt = phi i8 [ %i.wv, %bb.ge ], [ %i.wr, %.lr.ph179.i ]
  %.012.i.i93.i = phi ptr [ %i.wu, %bb.ge ], [ %i.wn, %.lr.ph179.i ] ; 3 uses
  switch i8 %i.wt, label %bb.ge [
    i8 32, label %Io_MvCharIsSpace.exit.thread.i.i94.i
    i8 13, label %Io_MvCharIsSpace.exit.thread.i.i94.i
    i8 9, label %Io_MvCharIsSpace.exit.thread.i.i94.i
    i8 10, label %Io_MvCharIsSpace.exit.thread.i.i94.i
  ]

Io_MvCharIsSpace.exit.thread.i.i94.i:             ; preds = %.lr.ph.i.i92.i, %.lr.ph.i.i92.i, %.lr.ph.i.i92.i, %.lr.ph.i.i92.i
  store i8 0, ptr %.012.i.i93.i, align 1, !tbaa !40
  br label %bb.ge

bb.ge:                                            ; preds = %Io_MvCharIsSpace.exit.thread.i.i94.i, %.lr.ph.i.i92.i
  %i.wu = getelementptr inbounds nuw i8, ptr %.012.i.i93.i, i64 1 ; 2 uses
  %i.wv = load i8, ptr %i.wu, align 1, !tbaa !40  ; 2 uses
  %.not.i.i95.i = icmp eq i8 %i.wv, 0
  br i1 %.not.i.i95.i, label %Io_MvSplitIntoTokens.exit.i96.i, label %.lr.ph.i.i92.i, !llvm.loop !69

Io_MvSplitIntoTokens.exit.i96.i:                  ; preds = %bb.ge
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wq, i64 4 ; 4 uses
  store i32 0, ptr %i.ww, align 4, !tbaa !8
  %5 = getelementptr i8, ptr %i.wq, i64 8         ; 5 uses
  br label %bb.gf

bb.gf:                                            ; preds = %.loopexit.i146.i, %Io_MvSplitIntoTokens.exit.i96.i
  %i.wx = phi i32 [ 0, %Io_MvSplitIntoTokens.exit.i96.i ], [ %.val12.i98.pr.i, %.loopexit.i146.i ] ; 8 uses
  %.09.i139.i = phi ptr [ %i.wn, %Io_MvSplitIntoTokens.exit.i96.i ], [ %i.xs, %.loopexit.i146.i ] ; 4 uses
  %i.wy = load i8, ptr %.09.i139.i, align 1, !tbaa !40
  %i.wz = icmp eq i8 %i.wy, 0
  br i1 %i.wz, label %.loopexit.i146.i, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.xa = load i32, ptr %i.wq, align 8, !tbaa !12
  %i.xb = icmp eq i32 %i.wx, %i.xa
  br i1 %i.xb, label %bb.gh, label %.Vec_PtrPush.exit_crit_edge.i140.i

.Vec_PtrPush.exit_crit_edge.i140.i:               ; preds = %bb.gg
  %.pre.i141.i = load ptr, ptr %5, align 8, !tbaa !13
  br label %Vec_PtrPush.exit.i142.i

bb.gh:                                            ; preds = %bb.gg
  %i.xc = icmp slt i32 %i.wx, 16
  br i1 %i.xc, label %bb.gi, label %bb.gl

bb.gi:                                            ; preds = %bb.gh
  %i.xd = load ptr, ptr %5, align 8, !tbaa !13    ; 2 uses
  %.not9.i.i.i155.i = icmp eq ptr %i.xd, null
  br i1 %.not9.i.i.i155.i, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.xe = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.xd, i64 noundef 128) #25
  br label %Vec_PtrGrow.exit12.sink.split.i.i152.i

bb.gk:                                            ; preds = %bb.gi
  %i.xf = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #22
  br label %Vec_PtrGrow.exit12.sink.split.i.i152.i

bb.gl:                                            ; preds = %bb.gh
  %i.xg = icmp samesign ult i32 %i.wx, 1073741823
  %i.xh = shl nuw nsw i32 %i.wx, 1
  %spec.select.i.i148.i = select i1 %i.xg, i32 %i.xh, i32 2147483647 ; 4 uses
  %.not.i10.i.i149.i = icmp samesign ult i32 %i.wx, %spec.select.i.i148.i
  %.pre11.i150.i = load ptr, ptr %5, align 8, !tbaa !13 ; 3 uses
  br i1 %.not.i10.i.i149.i, label %bb.gm, label %Vec_PtrPush.exit.i142.i

bb.gm:                                            ; preds = %bb.gl
  %.not9.i11.i.i151.i = icmp eq ptr %.pre11.i150.i, null
  %i.xi = zext nneg i32 %spec.select.i.i148.i to i64
  %i.xj = shl nuw nsw i64 %i.xi, 3                ; 2 uses
  br i1 %.not9.i11.i.i151.i, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.xk = tail call ptr @realloc(ptr noundef nonnull %.pre11.i150.i, i64 noundef %i.xj) #25
  br label %Vec_PtrGrow.exit12.sink.split.i.i152.i

bb.go:                                            ; preds = %bb.gm
  %i.xl = tail call noalias ptr @malloc(i64 noundef %i.xj) #22
  br label %Vec_PtrGrow.exit12.sink.split.i.i152.i

Vec_PtrGrow.exit12.sink.split.i.i152.i:           ; preds = %bb.go, %bb.gn, %bb.gk, %bb.gj
  %i.xm = phi ptr [ %i.xf, %bb.gk ], [ %i.xe, %bb.gj ], [ %i.xk, %bb.gn ], [ %i.xl, %bb.go ] ; 2 uses
  %spec.select.sink.i.i153.i = phi i32 [ 16, %bb.gk ], [ 16, %bb.gj ], [ %spec.select.i.i148.i, %bb.gn ], [ %spec.select.i.i148.i, %bb.go ]
  store ptr %i.xm, ptr %5, align 8, !tbaa !13
  store i32 %spec.select.sink.i.i153.i, ptr %i.wq, align 8, !tbaa !12
  %.pre12.i154.i = load i32, ptr %i.ww, align 4, !tbaa !8
  br label %Vec_PtrPush.exit.i142.i

Vec_PtrPush.exit.i142.i:                          ; preds = %Vec_PtrGrow.exit12.sink.split.i.i152.i, %bb.gl, %.Vec_PtrPush.exit_crit_edge.i140.i
  %i.xn = phi i32 [ %i.wx, %.Vec_PtrPush.exit_crit_edge.i140.i ], [ %i.wx, %bb.gl ], [ %.pre12.i154.i, %Vec_PtrGrow.exit12.sink.split.i.i152.i ] ; 2 uses
  %i.xo = phi ptr [ %.pre.i141.i, %.Vec_PtrPush.exit_crit_edge.i140.i ], [ %.pre11.i150.i, %bb.gl ], [ %i.xm, %Vec_PtrGrow.exit12.sink.split.i.i152.i ]
  %i.xp = add nsw i32 %i.xn, 1                    ; 2 uses
  store i32 %i.xp, ptr %i.ww, align 4, !tbaa !8
  %i.xq = sext i32 %i.xn to i64
  %i.xr = getelementptr inbounds [8 x i8], ptr %i.xo, i64 %i.xq
  store ptr %.09.i139.i, ptr %i.xr, align 8, !tbaa !39
  %scevgep.i143.i = getelementptr i8, ptr %.09.i139.i, i64 1 ; 2 uses
  %strlen.i144.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep.i143.i)
  %scevgep10.i145.i = getelementptr i8, ptr %scevgep.i143.i, i64 %strlen.i144.i
  br label %.loopexit.i146.i

.loopexit.i146.i:                                 ; preds = %Vec_PtrPush.exit.i142.i, %bb.gf
  %.val12.i98.pr.i = phi i32 [ %i.wx, %bb.gf ], [ %i.xp, %Vec_PtrPush.exit.i142.i ] ; 2 uses
  %.2.i147.i = phi ptr [ %.09.i139.i, %bb.gf ], [ %scevgep10.i145.i, %Vec_PtrPush.exit.i142.i ] ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %.2.i147.i, i64 1
  %i.xt = icmp ult ptr %.2.i147.i, %.012.i.i93.i
  br i1 %i.xt, label %bb.gf, label %Io_MvCollectTokens.exit156.i, !llvm.loop !83

Io_MvCollectTokens.exit156.i:                     ; preds = %.loopexit.i146.i
  %i.xu = icmp sgt i32 %.val12.i98.pr.i, 1
  br i1 %i.xu, label %.lr.ph.i99.i, label %Io_MvParseLineConstrs.exit.i

.lr.ph.i99.i:                                     ; preds = %Io_MvCollectTokens.exit156.i, %.lr.ph.i99.i
  %indvars.iv.i100.i = phi i64 [ %indvars.iv.next.i102.i, %.lr.ph.i99.i ], [ 1, %Io_MvCollectTokens.exit156.i ] ; 2 uses
  %.val10.i101.i = load ptr, ptr %5, align 8, !tbaa !13
  %i.xv = getelementptr inbounds nuw [8 x i8], ptr %.val10.i101.i, i64 %indvars.iv.i100.i
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !39
  %i.xx = load ptr, ptr %i.rs, align 8, !tbaa !68
  %i.xy = tail call ptr @Io_ReadCreatePo(ptr noundef %i.xx, ptr noundef %i.xw) #23 ; 0 uses
  %indvars.iv.next.i102.i = add nuw nsw i64 %indvars.iv.i100.i, 1 ; 2 uses
  %.val.i103.i = load i32, ptr %i.ww, align 4, !tbaa !8
  %i.xz = sext i32 %.val.i103.i to i64
  %i.ya = icmp slt i64 %indvars.iv.next.i102.i, %i.xz
  br i1 %i.ya, label %.lr.ph.i99.i, label %Io_MvParseLineConstrs.exit.i, !llvm.loop !89

Io_MvParseLineConstrs.exit.i:                     ; preds = %.lr.ph.i99.i, %Io_MvCollectTokens.exit156.i, %Io_MvSplitIntoTokens.exit.i96.thread.i
  %indvars.iv.next200.i = add nuw nsw i64 %indvars.iv199.i, 1 ; 2 uses
  %i.yb = load ptr, ptr %i.wg, align 8, !tbaa !60 ; 2 uses
  %i.yc = getelementptr i8, ptr %i.yb, i64 4
  %.val56.i = load i32, ptr %i.yc, align 4, !tbaa !8
  %i.yd = sext i32 %.val56.i to i64
  %i.ye = icmp slt i64 %indvars.iv.next200.i, %i.yd
  br i1 %i.ye, label %.lr.ph179.i, label %.critedge6.loopexit.i, !llvm.loop !90

.critedge6.loopexit.i:                            ; preds = %Io_MvParseLineConstrs.exit.i
  %.pre.i109 = load ptr, ptr %i.rs, align 8, !tbaa !68 ; 2 uses
  %.phi.trans.insert.i = getelementptr i8, ptr %.pre.i109, i64 48
  %.val65.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !88
  %.phi.trans.insert209.i = getelementptr i8, ptr %.val65.pre.i, i64 4
  %.val65.val.pre.i = load i32, ptr %.phi.trans.insert209.i, align 4, !tbaa !8
  br label %.critedge6.i

.critedge6.i:                                     ; preds = %.critedge6.loopexit.i, %.critedge4.i
  %.val65.val.i = phi i32 [ %.val65.val.pre.i, %.critedge6.loopexit.i ], [ %.val66.val.i, %.critedge4.i ]
  %i.yf = phi ptr [ %.pre.i109, %.critedge6.loopexit.i ], [ %i.wd, %.critedge4.i ]
  %i.yg = sub nsw i32 %.val65.val.i, %.val66.val.i
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yf, i64 144
  store i32 %i.yg, ptr %i.yh, align 8, !tbaa !91
  %i.yi = getelementptr inbounds nuw i8, ptr %i.qa, i64 96 ; 2 uses
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !50 ; 2 uses
  %i.yk = getelementptr i8, ptr %i.yj, i64 4
  %.val180.i = load i32, ptr %i.yk, align 4, !tbaa !8
  %i.yl = icmp sgt i32 %.val180.i, 0
  br i1 %i.yl, label %.lr.ph182.i, label %.critedge8.i

.lr.ph182.i:                                      ; preds = %.critedge6.i, %Io_MvParseLineLtlProperty.exit.i
  %indvars.iv202.i = phi i64 [ %indvars.iv.next203.i, %Io_MvParseLineLtlProperty.exit.i ], [ 0, %.critedge6.i ] ; 2 uses
  %i.ym = phi ptr [ %i.aam, %Io_MvParseLineLtlProperty.exit.i ], [ %i.yj, %.critedge6.i ]
  %i.yn = getelementptr i8, ptr %i.ym, i64 8
  %.val60.i = load ptr, ptr %i.yn, align 8, !tbaa !13
  %i.yo = getelementptr inbounds nuw [8 x i8], ptr %.val60.i, i64 %indvars.iv202.i
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !39 ; 4 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.lr.ph182.i
  %indvars.iv16.i.i = phi i32 [ -12, %.lr.ph182.i ], [ %indvars.iv.next17.i.i, %.preheader.i.i ] ; 2 uses
  %indvar.i.i = phi i32 [ 0, %.lr.ph182.i ], [ %indvar.next.i.i, %.preheader.i.i ] ; 2 uses
  %indvars.iv.i104.i = phi i64 [ 10, %.lr.ph182.i ], [ %indvars.iv.next.i106.i, %.preheader.i.i ] ; 4 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 %indvars.iv.i104.i
  %i.yr = load i8, ptr %i.yq, align 1, !tbaa !40
  %.not.i105.i = icmp eq i8 %i.yr, 34
  %indvars.iv.next.i106.i = add i64 %indvars.iv.i104.i, 1 ; 2 uses
  %indvar.next.i.i = add i32 %indvar.i.i, 1
  %indvars.iv.next17.i.i = add i32 %indvars.iv16.i.i, -1
  br i1 %.not.i105.i, label %bb.gp, label %.preheader.i.i, !llvm.loop !92

bb.gp:                                            ; preds = %.preheader.i.i
  %i.ys = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.yp) #24 ; 2 uses
  %i.yt = trunc i64 %i.ys to i32                  ; 2 uses
  %sext.i.i = shl i64 %i.ys, 32
  %i.yu = ashr exact i64 %sext.i.i, 32
  %i.yv = add i32 %indvars.iv16.i.i, %i.yt
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gq, %bb.gp
  %indvars.iv18.i.i = phi i32 [ %indvars.iv.next19.i.i, %bb.gq ], [ %i.yv, %bb.gp ] ; 2 uses
  %indvar8.i.i = phi i32 [ %indvar.next9.i.i, %bb.gq ], [ 0, %bb.gp ] ; 2 uses
  %indvars.iv5.i.i = phi i64 [ %indvars.iv.next6.i.i, %bb.gq ], [ %i.yu, %bb.gp ] ; 4 uses
  %i.yw = getelementptr inbounds i8, ptr %i.yp, i64 %indvars.iv5.i.i
  %i.yx = load i8, ptr %i.yw, align 1, !tbaa !40
  %.not29.i.i = icmp eq i8 %i.yx, 34
  %indvars.iv.next6.i.i = add nsw i64 %indvars.iv5.i.i, -1
  %indvar.next9.i.i = add i32 %indvar8.i.i, 1
  %indvars.iv.next19.i.i = add i32 %indvars.iv18.i.i, -1
  br i1 %.not29.i.i, label %bb.gr, label %bb.gq, !llvm.loop !93

bb.gr:                                            ; preds = %bb.gq
  %i.yy = trunc nuw nsw i64 %indvars.iv.i104.i to i32
  %i.yz = trunc nsw i64 %indvars.iv5.i.i to i32
  %i.za = sub i64 %indvars.iv5.i.i, %indvars.iv.i104.i
  %sext29.i.i = shl i64 %i.za, 32
  %i.zb = ashr exact i64 %sext29.i.i, 32
  %i.zc = tail call noalias ptr @malloc(i64 noundef %i.zb) #22 ; 3 uses
  %.31.i.i = add nuw nsw i32 %i.yy, 1
  %i.zd = icmp slt i32 %.31.i.i, %i.yz
  br i1 %i.zd, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.gr
  %scevgep.i.i = getelementptr i8, ptr %i.yp, i64 %indvars.iv.next.i106.i
  %i.ze = add i32 %i.yt, -12
  %i.zf = add i32 %indvar.i.i, %indvar8.i.i
  %i.zg = sub i32 %i.ze, %i.zf
  %i.zh = zext i32 %i.zg to i64
  %i.zi = add nuw nsw i64 %i.zh, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.zc, ptr noundef nonnull readonly align 1 dereferenceable(1) %scevgep.i.i, i64 %i.zi, i1 false), !tbaa !40
  %i.zj = add i32 %indvars.iv18.i.i, 1
  %i.zk = zext nneg i32 %i.zj to i64
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.preheader.i.i, %bb.gr
  %.028.lcssa.i.i = phi i64 [ 0, %bb.gr ], [ %i.zk, %.lr.ph.preheader.i.i ]
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zc, i64 %.028.lcssa.i.i
  store i8 0, ptr %i.zl, align 1, !tbaa !40
  %i.zm = load ptr, ptr @vGlobalLtlArray, align 8, !tbaa !94 ; 6 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 4 ; 3 uses
  %i.zo = load i32, ptr %i.zn, align 4, !tbaa !8  ; 7 uses
  %i.zp = load i32, ptr %i.zm, align 8, !tbaa !12
  %i.zq = icmp eq i32 %i.zo, %i.zp
  br i1 %i.zq, label %bb.gs, label %Io_MvParseLineLtlProperty.exit.i

bb.gs:                                            ; preds = %._crit_edge.i.i
  %i.zr = icmp slt i32 %i.zo, 16
  br i1 %i.zr, label %bb.gt, label %bb.gw

bb.gt:                                            ; preds = %bb.gs
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zm, i64 8 ; 2 uses
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !13 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.zt, null
  br i1 %.not9.i.i.i.i, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.zu = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.zt, i64 noundef 128) #25
  br label %Vec_PtrGrow.exit.i.i.i

bb.gv:                                            ; preds = %bb.gt
  %i.zv = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #22
  br label %Vec_PtrGrow.exit.i.i.i

Vec_PtrGrow.exit.i.i.i:                           ; preds = %bb.gv, %bb.gu
  %i.zw = phi ptr [ %i.zu, %bb.gu ], [ %i.zv, %bb.gv ]
  store ptr %i.zw, ptr %i.zs, align 8, !tbaa !13
  br label %Vec_PtrGrow.exit12.sink.split.i.i.i

bb.gw:                                            ; preds = %bb.gs
  %i.zx = icmp samesign ult i32 %i.zo, 1073741823
  %i.zy = shl nuw nsw i32 %i.zo, 1
  %spec.select.i.i.i = select i1 %i.zx, i32 %i.zy, i32 2147483647 ; 3 uses
  %.not.i10.i.i.i = icmp samesign ult i32 %i.zo, %spec.select.i.i.i
  br i1 %.not.i10.i.i.i, label %bb.gx, label %Io_MvParseLineLtlProperty.exit.i

bb.gx:                                            ; preds = %bb.gw
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zm, i64 8 ; 2 uses
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !13 ; 2 uses
  %.not9.i11.i.i.i = icmp eq ptr %i.aaa, null
  %i.aab = zext nneg i32 %spec.select.i.i.i to i64
  %i.aac = shl nuw nsw i64 %i.aab, 3              ; 2 uses
  br i1 %.not9.i11.i.i.i, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.aad = tail call ptr @realloc(ptr noundef nonnull %i.aaa, i64 noundef %i.aac) #25
  br label %bb.ha

bb.gz:                                            ; preds = %bb.gx
  %i.aae = tail call noalias ptr @malloc(i64 noundef %i.aac) #22
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.gy
  %i.aaf = phi ptr [ %i.aad, %bb.gy ], [ %i.aae, %bb.gz ]
  store ptr %i.aaf, ptr %i.zz, align 8, !tbaa !13
  br label %Vec_PtrGrow.exit12.sink.split.i.i.i

Vec_PtrGrow.exit12.sink.split.i.i.i:              ; preds = %bb.ha, %Vec_PtrGrow.exit.i.i.i
  %spec.select.sink.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.ha ], [ 16, %Vec_PtrGrow.exit.i.i.i ]
  store i32 %spec.select.sink.i.i.i, ptr %i.zm, align 8, !tbaa !12
  %.pre.i.i = load i32, ptr %i.zn, align 4, !tbaa !8
  br label %Io_MvParseLineLtlProperty.exit.i

Io_MvParseLineLtlProperty.exit.i:                 ; preds = %Vec_PtrGrow.exit12.sink.split.i.i.i, %bb.gw, %._crit_edge.i.i
  %i.aag = phi i32 [ %i.zo, %._crit_edge.i.i ], [ %i.zo, %bb.gw ], [ %.pre.i.i, %Vec_PtrGrow.exit12.sink.split.i.i.i ] ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %i.zm, i64 8
  %i.aai = load ptr, ptr %i.aah, align 8, !tbaa !13
  %i.aaj = add nsw i32 %i.aag, 1
  store i32 %i.aaj, ptr %i.zn, align 4, !tbaa !8
  %i.aak = sext i32 %i.aag to i64
  %i.aal = getelementptr inbounds [8 x i8], ptr %i.aai, i64 %i.aak
  store ptr %i.zc, ptr %i.aal, align 8, !tbaa !39
  %indvars.iv.next203.i = add nuw nsw i64 %indvars.iv202.i, 1 ; 2 uses
  %i.aam = load ptr, ptr %i.yi, align 8, !tbaa !50 ; 2 uses
  %i.aan = getelementptr i8, ptr %i.aam, i64 4
  %.val.i108 = load i32, ptr %i.aan, align 4, !tbaa !8
  %i.aao = sext i32 %.val.i108 to i64
  %i.aap = icmp slt i64 %indvars.iv.next203.i, %i.aao
  br i1 %i.aap, label %.lr.ph182.i, label %.critedge8.i, !llvm.loop !95

.critedge8.i:                                     ; preds = %Io_MvParseLineLtlProperty.exit.i, %.critedge6.i
  %indvars.iv.next206.i = add nuw nsw i64 %indvars.iv205.i.a, 1 ; 2 uses
  %i.aaq = load ptr, ptr %i.n, align 8, !tbaa !21 ; 3 uses
  %i.aar = getelementptr i8, ptr %i.aaq, i64 4
  %.val59.i = load i32, ptr %i.aar, align 4, !tbaa !8 ; 2 uses
  %i.aas = sext i32 %.val59.i to i64
  %i.aat = icmp slt i64 %indvars.iv.next206.i, %i.aas
  br i1 %i.aat, label %.lr.ph185.i.a, label %Io_MvReadInterfaces.exit, !llvm.loop !96

Io_MvReadInterfaces.exit:                         ; preds = %.critedge8.i
  %i.aau = icmp sgt i32 %.val59.i, 0
  br i1 %i.aau, label %.lr.ph746.i, label %.critedge.i

.lr.ph746.i:                                      ; preds = %Io_MvReadInterfaces.exit, %bb.rt
  %indvars.iv1043.i = phi i64 [ %indvars.iv.next1044.i, %bb.rt ], [ 0, %Io_MvReadInterfaces.exit ] ; 2 uses
  %i.aav = phi ptr [ %i.cbp, %bb.rt ], [ %i.aaq, %Io_MvReadInterfaces.exit ]
  %i.aaw = getelementptr i8, ptr %i.aav, i64 8
  %.val220.i = load ptr, ptr %i.aaw, align 8, !tbaa !13
  %i.aax = getelementptr inbounds nuw [8 x i8], ptr %.val220.i, i64 %indvars.iv1043.i
  %i.aay = load ptr, ptr %i.aax, align 8, !tbaa !39 ; 31 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aay, i64 80 ; 3 uses
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !59
end_hunk_0
