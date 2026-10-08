Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/buildvm?download=true
inline.NumInlined: 25
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 15
begin_hunk_0_@main:bb.a
bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  %i.gh = load ptr, ptr %i.di, align 8, !tbaa !50
  %i.gi = ptrtoint ptr %i.fs to i64
  %i.gj = ptrtoint ptr %i.gh to i64
  %i.gk = sub i64 %i.gi, %i.gj
  %i.gl = trunc i64 %i.gk to i32
  call fastcc void @sym_insert(ptr noundef nonnull %2, i32 noundef %i.gl, ptr noundef nonnull @.str.426, ptr noundef nonnull %i.fp)
  %.pre110.i = load ptr, ptr %i.ay, align 8, !tbaa !93
  %.pre112.i = load i32, ptr %i.ax, align 4, !tbaa !92
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.gm = phi i32 [ %.pre112.i, %bb.aq ], [ %i.fm, %bb.ap ] ; 2 uses
  %i.gn = phi ptr [ %.pre110.i, %bb.aq ], [ %i.fn, %bb.ap ]
  %indvars.iv.next108.i = add nuw nsw i64 %indvars.iv107.i, 1 ; 2 uses
  %i.go = sext i32 %i.gm to i64
  %i.gp = icmp slt i64 %indvars.iv.next108.i, %i.go
  br i1 %i.gp, label %.lr.ph102.i, label %._crit_edge.i, !llvm.loop !82

._crit_edge.i:                                    ; preds = %bb.ar, %.preheader.i
  %i.gq = load i64, ptr %i.de, align 8, !tbaa !99
  %i.gr = trunc i64 %i.gq to i32
  call fastcc void @sym_insert(ptr noundef nonnull %2, i32 noundef %i.gr, ptr noundef nonnull @.str.363, ptr noundef nonnull @.str.363)
  %i.gs = load i32, ptr %i.eb, align 8, !tbaa !53
  %i.gt = add nsw i32 %i.gs, -1
  store i32 %i.gt, ptr %i.eb, align 8, !tbaa !53
  %i.gu = load ptr, ptr %2, align 8, !tbaa !21    ; 5 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 72 ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !26 ; 2 uses
  %i.gx = icmp sgt i32 %i.gw, 0
  br i1 %i.gx, label %.lr.ph.i91.i, label %._crit_edge.i.i

.lr.ph.i91.i:                                     ; preds = %._crit_edge.i, %bb.at
  %i.gy = phi i32 [ %i.hc, %bb.at ], [ %i.gw, %._crit_edge.i ]
  %indvars.iv.i92.i = phi i64 [ %indvars.iv.next.i94.i, %bb.at ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.gz = getelementptr inbounds nuw [40 x i8], ptr %i.gu, i64 %indvars.iv.i92.i
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 88
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !28 ; 2 uses
  %.not16.i.i = icmp eq ptr %i.hb, null
  br i1 %.not16.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i91.i
  call void @free(ptr noundef nonnull %i.hb) #25
  %.pre.i93.i = load i32, ptr %i.gv, align 8, !tbaa !26
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.lr.ph.i91.i
  %i.hc = phi i32 [ %i.gy, %.lr.ph.i91.i ], [ %.pre.i93.i, %bb.as ] ; 2 uses
  %indvars.iv.next.i94.i = add nuw nsw i64 %indvars.iv.i92.i, 1 ; 2 uses
  %i.hd = sext i32 %i.hc to i64
  %i.he = icmp slt i64 %indvars.iv.next.i94.i, %i.hd
  br i1 %i.he, label %.lr.ph.i91.i, label %._crit_edge.i.i, !llvm.loop !0

._crit_edge.i.i:                                  ; preds = %bb.at, %._crit_edge.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gu, i64 32
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !29 ; 2 uses
  %.not.i90.i = icmp eq ptr %i.hg, null
  br i1 %.not.i90.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %._crit_edge.i.i
  call void @free(ptr noundef nonnull %i.hg) #25
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %._crit_edge.i.i
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !30 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.hi, null
  br i1 %.not15.i.i, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @free(ptr noundef nonnull %i.hi) #25
  br label %bb.ay

bb.ax:                                            ; preds = %dasm_checkstep.exit.i, %dasm_getpclabel.exit.thread.i, %bb.ah
  %.278.i.ph = phi i32 [ %i.dj, %bb.ah ], [ %i.fe, %dasm_getpclabel.exit.thread.i ], [ %i.df, %dasm_checkstep.exit.i ]
  %i.hj = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.hk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hj, ptr noundef nonnull @.str.357, i32 noundef %.278.i.ph) #31 ; 0 uses
  br label %bb.ce

bb.ay:                                            ; preds = %bb.aw, %bb.av
  call void @free(ptr noundef nonnull %i.gu) #25
  %i.hl = load i32, ptr %i.c, align 8, !tbaa !48  ; 2 uses
  %.off = add i32 %i.hl, -3
  %switch = icmp ult i32 %.off, 2
  %.str.358..str.359 = select i1 %switch, ptr @.str.358, ptr @.str.359
  %i.hm = load ptr, ptr %i.d, align 8, !tbaa !90  ; 3 uses
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !41
  %i.ho = icmp eq i8 %i.hn, 45
  br i1 %i.ho, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 1
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !41
  %i.hr = icmp eq i8 %i.hq, 0
  br i1 %i.hr, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.hs = load ptr, ptr @stdout, align 8, !tbaa !45 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.hs, ptr %i.ht, align 8, !tbaa !51
  br label %bb.bd

bb.bb:                                            ; preds = %bb.az, %bb.ay
  %i.hu = call noalias ptr @fopen(ptr noundef nonnull %i.hm, ptr noundef nonnull %.str.358..str.359) ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.hu, ptr %i.hv, align 8, !tbaa !51
  %.not30 = icmp eq ptr %i.hu, null
  br i1 %.not30, label %bb.bc, label %._crit_edge

._crit_edge:                                      ; preds = %bb.bb
  %.pre = load i32, ptr %i.c, align 8, !tbaa !48
  br label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.hw = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.hx = load ptr, ptr %i.d, align 8, !tbaa !90
  %i.hy = tail call ptr @__errno_location() #30
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !40
  %i.ia = call ptr @strerror(i32 noundef %i.hz) #25
  %i.ib = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hw, ptr noundef nonnull @.str.360, ptr noundef %i.hx, ptr noundef %i.ia) #31 ; 0 uses
  call void @exit(i32 noundef 1) #24
  unreachable

bb.bd:                                            ; preds = %._crit_edge, %bb.ba
  %i.ic = phi ptr [ %i.hu, %._crit_edge ], [ %i.hs, %bb.ba ] ; 3 uses
  %i.id = phi i32 [ %.pre, %._crit_edge ], [ %i.hl, %bb.ba ]
  switch i32 %i.id, label %emit_asm_debug.exit [
    i32 0, label %bb.be
    i32 1, label %bb.be
    i32 2, label %bb.be
    i32 3, label %bb.bm
    i32 4, label %bb.bn
    i32 5, label %bb.bp
    i32 9, label %bb.br
    i32 6, label %bb.ca
    i32 7, label %bb.ca
    i32 8, label %bb.ca
    i32 10, label %bb.cb
  ]

bb.be:                                            ; preds = %bb.bd, %bb.bd, %bb.bd
  call void @emit_asm(ptr noundef nonnull %2) #25
  %i.ie = load i32, ptr %i.c, align 8, !tbaa !48
  switch i32 %i.ie, label %emit_asm_debug.exit [
    i32 0, label %bb.bf
    i32 2, label %bb.bg
  ]

bb.bf:                                            ; preds = %bb.be
  %i.if = load ptr, ptr %i.ay, align 8, !tbaa !93
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 1272
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !43
  %i.ii = ptrtoint ptr %i.ih to i64
  %i.ij = load ptr, ptr %i.di, align 8, !tbaa !50
  %i.ik = ptrtoint ptr %i.ij to i64
  %i.il = sub i64 %i.ii, %i.ik
  %i.im = trunc i64 %i.il to i32                  ; 4 uses
  %i.in = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !51
  %fwrite52.i = call i64 @fwrite(ptr nonnull @.str.592, i64 36, i64 1, ptr %i.io) ; 0 uses
  %i.ip = load ptr, ptr %i.in, align 8, !tbaa !51
  %fwrite53.i = call i64 @fwrite(ptr nonnull @.str.593, i64 210, i64 1, ptr %i.ip) ; 0 uses
  %i.iq = load ptr, ptr %i.in, align 8, !tbaa !51
  %i.ir = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iq, ptr noundef nonnull @.str.594, i32 noundef %i.im, i32 noundef 80) #25 ; 0 uses
  %i.is = load ptr, ptr %i.in, align 8, !tbaa !51
  %i.it = load i64, ptr %i.de, align 8, !tbaa !99
  %i.iu = trunc i64 %i.it to i32
  %i.iv = sub nsw i32 %i.iu, %i.im
  %i.iw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.is, ptr noundef nonnull @.str.595, i32 noundef %i.iv) #25 ; 0 uses
  %i.ix = load ptr, ptr %i.in, align 8, !tbaa !51
  %fwrite54.i = call i64 @fwrite(ptr nonnull @.str.596, i64 34, i64 1, ptr %i.ix) ; 0 uses
  %i.iy = load ptr, ptr %i.in, align 8, !tbaa !51
  %fwrite55.i = call i64 @fwrite(ptr nonnull @.str.597, i64 269, i64 1, ptr %i.iy) ; 0 uses
  %i.iz = load ptr, ptr %i.in, align 8, !tbaa !51
  %i.ja = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iz, ptr noundef nonnull @.str.598, i32 noundef %i.im, i32 noundef 80) #25 ; 0 uses
  %i.jb = load ptr, ptr %i.in, align 8, !tbaa !51
  %fwrite56.i = call i64 @fwrite(ptr nonnull @.str.599, i64 227, i64 1, ptr %i.jb) ; 0 uses
  %i.jc = load ptr, ptr %i.in, align 8, !tbaa !51
  %i.jd = load i64, ptr %i.de, align 8, !tbaa !99
  %i.je = trunc i64 %i.jd to i32
  %i.jf = sub nsw i32 %i.je, %i.im
  %i.jg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jc, ptr noundef nonnull @.str.600, i32 noundef %i.jf) #25 ; 0 uses
  br label %emit_asm_debug.exit

bb.bg:                                            ; preds = %bb.be
  %i.jh = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !51
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.601, i64 76, i64 1, ptr %i.ji) ; 0 uses
  %i.jj = load ptr, ptr %i.jh, align 8, !tbaa !51
  %fwrite49.i = call i64 @fwrite(ptr nonnull @.str.602, i64 284, i64 1, ptr %i.jj) ; 0 uses
  %i.jk = load i32, ptr %i.eb, align 8, !tbaa !53 ; 2 uses
  %i.jl = icmp sgt i32 %i.jk, 0
  br i1 %i.jl, label %.lr.ph.i34, label %emit_asm_debug.exit

.lr.ph.i34:                                       ; preds = %bb.bg
  %.pre60.i = load ptr, ptr %i.ea, align 8, !tbaa !52
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bk, %.lr.ph.i34
  %i.jm = phi i32 [ %i.jk, %.lr.ph.i34 ], [ %i.ka, %bb.bk ] ; 2 uses
  %i.jn = phi ptr [ %.pre60.i, %.lr.ph.i34 ], [ %i.kb, %bb.bk ] ; 4 uses
  %indvars.iv.i35 = phi i64 [ 0, %.lr.ph.i34 ], [ %indvars.iv.next.i36, %bb.bk ] ; 3 uses
  %.04757.i = phi i32 [ 0, %.lr.ph.i34 ], [ %.1.i, %bb.bk ] ; 2 uses
  %i.jo = getelementptr inbounds nuw [16 x i8], ptr %i.jn, i64 %indvars.iv.i35 ; 2 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !55 ; 3 uses
  %indvars.iv.next.i36 = add nuw nsw i64 %indvars.iv.i35, 1 ; 3 uses
  %3 = getelementptr inbounds nuw [16 x i8], ptr %i.jn, i64 %indvars.iv.next.i36
  %i.jq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.jr = load i32, ptr %i.jq, align 8, !tbaa !56
  %i.js = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jt = load i32, ptr %i.js, align 8, !tbaa !56
  %i.ju = sub nsw i32 %i.jr, %i.jt                ; 3 uses
  %i.jv = icmp eq i32 %i.ju, 0
  br i1 %i.jv, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jw = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.jp, ptr noundef nonnull dereferenceable(16) @.str.603) #28
  %.not51.i = icmp eq i32 %i.jw, 0
  br i1 %.not51.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jx = load ptr, ptr %i.jh, align 8, !tbaa !51
  %i.jy = trunc nuw nsw i64 %indvars.iv.i35 to i32 ; 8 uses
  %i.jz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jx, ptr noundef nonnull @.str.604, ptr noundef nonnull %i.jp, i32 noundef %i.jy, i32 noundef %i.jy, i32 noundef %i.jy, i32 noundef %i.jy, i32 noundef %i.jy, i32 noundef %i.jy, i32 noundef %i.jy, ptr noundef nonnull %i.jp, i32 noundef %i.ju, i32 noundef 80, i32 noundef %i.jy) #25 ; 0 uses
  %.pre.i37 = load ptr, ptr %i.ea, align 8, !tbaa !52
  %.pre61.i = load i32, ptr %i.eb, align 8, !tbaa !53
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bh
  %i.ka = phi i32 [ %i.jm, %bb.bh ], [ %.pre61.i, %bb.bj ], [ %i.jm, %bb.bi ] ; 2 uses
  %i.kb = phi ptr [ %i.jn, %bb.bh ], [ %.pre.i37, %bb.bj ], [ %i.jn, %bb.bi ]
  %.1.i = phi i32 [ %.04757.i, %bb.bh ], [ %.04757.i, %bb.bj ], [ %i.ju, %bb.bi ] ; 3 uses
  %i.kc = sext i32 %i.ka to i64
  %i.kd = icmp slt i64 %indvars.iv.next.i36, %i.kc
  br i1 %i.kd, label %bb.bh, label %._crit_edge.i38, !llvm.loop !83

._crit_edge.i38:                                  ; preds = %bb.bk
  %.not.i39 = icmp eq i32 %.1.i, 0
  br i1 %.not.i39, label %emit_asm_debug.exit, label %bb.bl

bb.bl:                                            ; preds = %._crit_edge.i38
  %i.ke = load ptr, ptr %i.jh, align 8, !tbaa !51
  %fwrite50.i = call i64 @fwrite(ptr nonnull @.str.605, i64 232, i64 1, ptr %i.ke) ; 0 uses
  %i.kf = load ptr, ptr %i.jh, align 8, !tbaa !51
  %i.kg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kf, ptr noundef nonnull @.str.606, i32 noundef %.1.i) #25 ; 0 uses
  br label %emit_asm_debug.exit

bb.bm:                                            ; preds = %bb.bd
  call void @emit_peobj(ptr noundef nonnull %2) #25
  br label %emit_asm_debug.exit

bb.bn:                                            ; preds = %bb.bd
  %i.kh = load ptr, ptr %i.di, align 8, !tbaa !50
  %i.ki = load i64, ptr %i.de, align 8, !tbaa !99 ; 2 uses
  %i.kj = call i64 @fwrite(ptr noundef readonly %i.kh, i64 noundef 1, i64 noundef %i.ki, ptr noundef %i.ic)
  %.not.i.i = icmp eq i64 %i.kj, %i.ki
  br i1 %.not.i.i, label %emit_asm_debug.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.kk = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.kl = tail call ptr @__errno_location() #30
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !40
  %i.kn = call ptr @strerror(i32 noundef %i.km) #25
  %i.ko = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kk, ptr noundef nonnull @.str, ptr noundef %i.kn) #31 ; 0 uses
  call void @exit(i32 noundef 1) #24
  unreachable

bb.bp:                                            ; preds = %bb.bd
  %i.kp = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %fwrite.i40 = call i64 @fwrite(ptr nonnull @.str.607, i64 46, i64 1, ptr %i.ic) ; 0 uses
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !51
  %fwrite9.i = call i64 @fwrite(ptr nonnull @.str.608, i64 42, i64 1, ptr %i.kq) ; 0 uses
  %i.kr = load i32, ptr %i.bw, align 8, !tbaa !98
  %i.ks = icmp sgt i32 %i.kr, 0
  br i1 %i.ks, label %bb.bq, label %emit_bcdef.exit

bb.bq:                                            ; preds = %bb.bp
  %.pre.i42 = load ptr, ptr %i.kp, align 8, !tbaa !51
  %.pre14.i = load ptr, ptr %i.ef, align 8, !tbaa !101
  %.pre15.i = load i32, ptr %.pre14.i, align 4, !tbaa !40
  %i.kt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.pre.i42, ptr noundef nonnull @.str.610, i32 noundef %.pre15.i) #25 ; 0 uses
  %i.ku = load i32, ptr %i.bw, align 8, !tbaa !98
  %i.kv = icmp sgt i32 %i.ku, 1
  br i1 %i.kv, label %.peel.next.i, label %emit_bcdef.exit

.peel.next.i:                                     ; preds = %bb.bq, %.peel.next.i
  %indvars.iv.i43 = phi i64 [ %indvars.iv.next.i44, %.peel.next.i ], [ 1, %bb.bq ] ; 2 uses
  %i.kw = load ptr, ptr %i.kp, align 8, !tbaa !51
  %fwrite10.i = call i64 @fwrite(ptr nonnull @.str.609, i64 2, i64 1, ptr %i.kw) ; 0 uses
  %i.kx = load ptr, ptr %i.kp, align 8, !tbaa !51
  %i.ky = load ptr, ptr %i.ef, align 8, !tbaa !101
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.i43
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !40
  %i.lb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kx, ptr noundef nonnull @.str.610, i32 noundef %i.la) #25 ; 0 uses
  %indvars.iv.next.i44 = add nuw nsw i64 %indvars.iv.i43, 1 ; 2 uses
  %i.lc = load i32, ptr %i.bw, align 8, !tbaa !98
  %i.ld = sext i32 %i.lc to i64
  %i.le = icmp slt i64 %indvars.iv.next.i44, %i.ld
  br i1 %i.le, label %.peel.next.i, label %emit_bcdef.exit, !llvm.loop !84

emit_bcdef.exit:                                  ; preds = %.peel.next.i, %bb.bp, %bb.bq
  call void @emit_lib(ptr noundef nonnull %2) #25
  br label %emit_asm_debug.exit

bb.br:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.lf = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 61 uses
  %fwrite.i45 = call i64 @fwrite(ptr nonnull @.str.611, i64 43, i64 1, ptr %i.ic) ; 0 uses
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !51
  %i.lh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lg, ptr noundef nonnull @.str.612, ptr noundef nonnull @.str.613) #25 ; 0 uses
  %i.li = load ptr, ptr %i.lf, align 8, !tbaa !51
  %fwrite47.i = call i64 @fwrite(ptr nonnull @.str.614, i64 10, i64 1, ptr %i.li) ; 0 uses
  %i.lj = load ptr, ptr %i.lf, align 8, !tbaa !51
  %fwrite48.i = call i64 @fwrite(ptr nonnull @.str.615, i64 11, i64 1, ptr %i.lj) ; 0 uses
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bs, %bb.br
  %indvars.iv.i46 = phi i64 [ 0, %bb.br ], [ %indvars.iv.next.i47, %bb.bs ] ; 2 uses
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr @bc_names, i64 %indvars.iv.i46
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !47
  %i.lm = load ptr, ptr %i.lf, align 8, !tbaa !51
  %i.ln = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lm, ptr noundef nonnull @.str.616, ptr noundef %i.ll) #25 ; 0 uses
  %indvars.iv.next.i47 = add nuw nsw i64 %indvars.iv.i46, 1 ; 2 uses
  %.not.i48 = icmp eq i64 %indvars.iv.next.i47, 104
  br i1 %.not.i48, label %bb.bt, label %bb.bs, !llvm.loop !85

bb.bt:                                            ; preds = %bb.bs
  %i.lo = load ptr, ptr %i.lf, align 8, !tbaa !51
  %fwrite49.i49 = call i64 @fwrite(ptr nonnull @.str.617, i64 4, i64 1, ptr %i.lo) ; 0 uses
  %i.lp = load ptr, ptr %i.lf, align 8, !tbaa !51
  %fwrite50.i50 = call i64 @fwrite(ptr nonnull @.str.618, i64 11, i64 1, ptr %i.lp) ; 0 uses
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bu, %bb.bt
  %indvars.iv84.i = phi i64 [ 0, %bb.bt ], [ %indvars.iv.next85.i, %bb.bu ] ; 2 uses
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr @ir_names, i64 %indvars.iv84.i
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !47
  %i.ls = load ptr, ptr %i.lf, align 8, !tbaa !51
  %i.lt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ls, ptr noundef nonnull @.str.616, ptr noundef %i.lr) #25 ; 0 uses
  %indvars.iv.next85.i = add nuw nsw i64 %indvars.iv84.i, 1 ; 2 uses
  %.not51.i51 = icmp eq i64 %indvars.iv.next85.i, 101
  br i1 %.not51.i51, label %lower.exit.6.i, label %bb.bu, !llvm.loop !86

lower.exit.6.i:                                   ; preds = %bb.bu
  %i.lu = load ptr, ptr %i.lf, align 8, !tbaa !51
  %fwrite52.i52 = call i64 @fwrite(ptr nonnull @.str.617, i64 4, i64 1, ptr %i.lu) ; 0 uses
  %i.lv = load ptr, ptr %i.lf, align 8, !tbaa !51
  %fwrite53.i53 = call i64 @fwrite(ptr nonnull @.str.619, i64 14, i64 1, ptr %i.lv) ; 0 uses
  %i.lw = load ptr, ptr %i.lf, align 8, !tbaa !51
  %i.lx = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 6 uses
  store <4 x i8> <i8 102, i8 108, i8 111, i8 111>, ptr %i.a, align 16, !tbaa !41
  store i8 114, ptr %i.lx, align 4, !tbaa !41
  %i.ly = getelementptr inbounds nuw i8, ptr %i.a, i64 5 ; 3 uses
  store i8 0, ptr %i.ly, align 1, !tbaa !41
  %i.lz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lw, ptr noundef nonnull @.str.620, ptr noundef nonnull %i.a) #25 ; 0 uses
  %i.ma = load ptr, ptr %i.lf, align 8, !tbaa !51
  store <4 x i8> <i8 99, i8 101, i8 105, i8 108>, ptr %i.a, align 16, !tbaa !41
  store i8 0, ptr %i.lx, align 4, !tbaa !41
  %i.mb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ma, ptr noundef nonnull @.str.620, ptr noundef nonnull %i.a) #25 ; 0 uses
  %i.mc = load ptr, ptr %i.lf, align 8, !tbaa !51
  store <4 x i8> <i8 116, i8 114, i8 117, i8 110>, ptr %i.a, align 16, !tbaa !41
  store i8 99, ptr %i.lx, align 4, !tbaa !41
  store i8 0, ptr %i.ly, align 1, !tbaa !41
  %i.md = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mc, ptr noundef nonnull @.str.620, ptr noundef nonnull %i.a) #25 ; 0 uses
  %i.me = load ptr, ptr %i.lf, align 8, !tbaa !51
  store <4 x i8> <i8 115, i8 113, i8 114, i8 116>, ptr %i.a, align 16, !tbaa !41
  store i8 0, ptr %i.lx, align 4, !tbaa !41
  %i.mf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.me, ptr noundef nonnull @.str.620, ptr noundef nonnull %i.a) #25 ; 0 uses
  %i.mg = load ptr, ptr %i.lf, align 8, !tbaa !51
  store <4 x i8> <i8 108, i8 111, i8 103, i8 0>, ptr %i.a, align 16, !tbaa !41
  %i.mh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mg, ptr noundef nonnull @.str.620, ptr noundef nonnull %i.a) #25 ; 0 uses
  %i.mi = load ptr, ptr %i.lf, align 8, !tbaa !51
  store <4 x i8> <i8 108, i8 111, i8 103, i8 50>, ptr %i.a, align 16, !tbaa !41
  store i8 0, ptr %i.lx, align 4, !tbaa !41
  %i.mj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mi, ptr noundef nonnull @.str.620, ptr noundef nonnull %i.a) #25 ; 0 uses
  %i.mk = load ptr, ptr %i.lf, align 8, !tbaa !51
  store <4 x i8> <i8 111, i8 116, i8 104, i8 101>, ptr %i.a, align 16, !tbaa !41
  store i8 114, ptr %i.lx, align 4, !tbaa !41
  store i8 0, ptr %i.ly, align 1, !tbaa !41
  %i.ml = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mk, ptr noundef nonnull @.str.620, ptr noundef nonnull %i.a) #25 ; 0 uses
  %i.mm = load ptr, ptr %i.lf, align 8, !tbaa !51
  %fwrite55.i54 = call i64 @fwrite(ptr nonnull @.str.621, i64 4, i64 1, ptr %i.mm) ; 0 uses
  %i.mn = load ptr, ptr %i.lf, align 8, !tbaa !51
  %fwrite56.i55 = call i64 @fwrite(ptr nonnull @.str.622, i64 16, i64 1, ptr %i.mn) ; 0 uses
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bx, %lower.exit.6.i
  %indvars.iv94.i = phi i64 [ 0, %lower.exit.6.i ], [ %indvars.iv.next95.i, %bb.bx ] ; 2 uses
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr @irfield_names, i64 %indvars.iv94.i
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !47 ; 2 uses
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !41  ; 2 uses
  %.not13.i66.i = icmp eq i8 %i.mq, 0
  br i1 %.not13.i66.i, label %lower.exit74.i, label %.lr.ph.i67.i

.lr.ph.i67.i:                                     ; preds = %bb.bv, %.lr.ph.i67.i
  %i.mr = phi i8 [ %i.mw, %.lr.ph.i67.i ], [ %i.mq, %bb.bv ] ; 3 uses
  %.015.i68.i = phi ptr [ %i.mu, %.lr.ph.i67.i ], [ %i.a, %bb.bv ] ; 2 uses
  %.01014.i69.i = phi ptr [ %i.mv, %.lr.ph.i67.i ], [ %i.mp, %bb.bv ]
  %i.ms = add i8 %i.mr, -65
  %or.cond.i70.i = icmp ult i8 %i.ms, 26
  %i.mt = add nuw nsw i8 %i.mr, 32
  %spec.select.i71.i = select i1 %or.cond.i70.i, i8 %i.mt, i8 %i.mr
  %i.mu = getelementptr inbounds nuw i8, ptr %.015.i68.i, i64 1 ; 2 uses
  store i8 %spec.select.i71.i, ptr %.015.i68.i, align 1, !tbaa !41
  %i.mv = getelementptr inbounds nuw i8, ptr %.01014.i69.i, i64 1 ; 2 uses
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !41  ; 2 uses
  %.not.i72.i = icmp eq i8 %i.mw, 0
  br i1 %.not.i72.i, label %lower.exit74.i, label %.lr.ph.i67.i, !llvm.loop !87
end_hunk_0
