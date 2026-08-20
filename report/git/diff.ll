inline.NumInlined: 585
inline.NumDeleted: 138
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 24
begin_hunk_0_@diff_flush:bb.a
  %i.vh = load i64, ptr %i.vg, align 8, !tbaa !309 ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vd, i64 32
  %i.vj = load i8, ptr %i.vi, align 8             ; 3 uses
  %i.vk = and i8 %i.vj, 1
  %.not264.i = icmp eq i8 %i.vk, 0
  br i1 %.not264.i, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.vl = and i8 %i.vj, 8
  %.not265.i = icmp eq i8 %i.vl, 0
  %i.vm = sub i64 0, %i.vh
  %i.vn = icmp eq i64 %i.vf, %i.vm
  %or.cond286.i = select i1 %.not265.i, i1 %i.vn, i1 false
  br i1 %or.cond286.i, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %i.vo = add nsw i32 %.0224347.i, -1
  br label %bb.fj

bb.fg:                                            ; preds = %bb.fe
  %i.vp = and i8 %i.vj, 2
  %.not266.i = icmp eq i8 %i.vp, 0                ; 2 uses
  %i.vq = trunc i64 %i.vf to i32
  %i.vr = trunc i64 %i.vh to i32
  %i.vs = select i1 %.not266.i, i32 %i.vq, i32 0
  %.1236.i = add i32 %i.vs, %.0235345.i           ; 3 uses
  %i.vt = select i1 %.not266.i, i32 %i.vr, i32 0
  %.1233.i = add i32 %i.vt, %.0232346.i           ; 3 uses
  %i.vu = icmp samesign ult i64 %indvars.iv360.i, %i.ra
  br i1 %i.vu, label %bb.fj, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %.not267.i = icmp eq i32 %.0210348.i, 0
  br i1 %.not267.i, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  call fastcc void @emit_diff_symbol(ptr noundef %0, i32 noundef 6, ptr noundef null, i32 noundef 0, i32 noundef 0)
  %.pre365.i = load i32, ptr %24, align 8, !tbaa !70
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh, %bb.fg, %bb.ff
  %i.vv = phi i32 [ %i.va, %bb.ff ], [ %i.va, %bb.fg ], [ %.pre365.i, %bb.fi ], [ %i.va, %bb.fh ] ; 2 uses
  %.2237.i = phi i32 [ %.0235345.i, %bb.ff ], [ %.1236.i, %bb.fg ], [ %.1236.i, %bb.fi ], [ %.1236.i, %bb.fh ] ; 2 uses
  %.2234.i = phi i32 [ %.0232346.i, %bb.ff ], [ %.1233.i, %bb.fg ], [ %.1233.i, %bb.fi ], [ %.1233.i, %bb.fh ] ; 2 uses
  %.1225.i = phi i32 [ %i.vo, %bb.ff ], [ %.0224347.i, %bb.fg ], [ %.0224347.i, %bb.fi ], [ %.0224347.i, %bb.fh ] ; 2 uses
  %.1211.i = phi i32 [ %.0210348.i, %bb.ff ], [ %.0210348.i, %bb.fg ], [ 1, %bb.fi ], [ 1, %bb.fh ]
  %indvars.iv.next361.i = add nuw nsw i64 %indvars.iv360.i, 1 ; 2 uses
  %i.vw = sext i32 %i.vv to i64
  %i.vx = icmp slt i64 %indvars.iv.next361.i, %i.vw
  br i1 %i.vx, label %bb.fd, label %._crit_edge.i, !llvm.loop !316

._crit_edge.i:                                    ; preds = %bb.fj, %.preheader.i
  %.0235.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %.2237.i, %bb.fj ]
  %.0232.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %.2234.i, %bb.fj ]
  %.0224.lcssa.i = phi i32 [ %i.mh, %.preheader.i ], [ %.1225.i, %bb.fj ]
  call fastcc void @print_stat_summary_inserts_deletes(ptr noundef %0, i32 noundef %.0224.lcssa.i, i32 noundef %.0235.lcssa.i, i32 noundef %.0232.lcssa.i)
  call void @strbuf_release(ptr noundef nonnull %16) #33
  %.pre300.pre304.pre.pre = load i32, ptr %24, align 8, !tbaa !70
  br label %show_stats.exit

show_stats.exit:                                  ; preds = %diff_line_prefix.exit.i114, %._crit_edge.i
  %.pre300.pre304.pre = phi i32 [ 0, %diff_line_prefix.exit.i114 ], [ %.pre300.pre304.pre.pre, %._crit_edge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33
  br label %bb.fk

bb.fk:                                            ; preds = %show_stats.exit, %show_numstat.exit
  %.pre300.pre304 = phi i32 [ %.pre300.pre304.pre, %show_stats.exit ], [ %i.mh, %show_numstat.exit ] ; 6 uses
  %i.vy = and i32 %i.e, 32
  %.not88 = icmp eq i32 %i.vy, 0
  br i1 %.not88, label %show_shortstats.exit, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.vz = getelementptr inbounds nuw i8, ptr %24, i64 8
  %.val107 = load ptr, ptr %i.vz, align 8
  %i.wa = icmp eq i32 %.pre300.pre304, 0
  br i1 %i.wa, label %show_shortstats.exit.thread, label %.preheader.i125

.preheader.i125:                                  ; preds = %bb.fl
  %i.wb = icmp sgt i32 %.pre300.pre304, 0
  br i1 %i.wb, label %.lr.ph.preheader.i, label %._crit_edge.i126

.lr.ph.preheader.i:                               ; preds = %.preheader.i125
  %wide.trip.count.i127 = zext nneg i32 %.pre300.pre304 to i64
  br label %.lr.ph.i128

.lr.ph.i128:                                      ; preds = %bb.fq, %.lr.ph.preheader.i
  %indvars.iv.i129 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i131, %bb.fq ] ; 2 uses
  %.04.i = phi i32 [ %.pre300.pre304, %.lr.ph.preheader.i ], [ %.1.i, %bb.fq ] ; 3 uses
  %.0253.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.126.i, %bb.fq ] ; 3 uses
  %.0272.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.128.i, %bb.fq ] ; 3 uses
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr %.val107, i64 %indvars.iv.i129
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !74 ; 3 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 40
  %i.wf = load i64, ptr %i.we, align 8, !tbaa !308
  %i.wg = trunc i64 %i.wf to i32                  ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wd, i64 48
  %i.wi = load i64, ptr %i.wh, align 8, !tbaa !309
  %i.wj = trunc i64 %i.wi to i32                  ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wd, i64 32
  %i.wl = load i8, ptr %i.wk, align 8             ; 3 uses
  %i.wm = and i8 %i.wl, 1
  %.not.i130 = icmp eq i8 %i.wm, 0
  br i1 %.not.i130, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %.lr.ph.i128
  %i.wn = and i8 %i.wl, 8
  %.not31.i = icmp eq i8 %i.wn, 0
  %i.wo = sub i32 0, %i.wj
  %i.wp = icmp eq i32 %i.wg, %i.wo
  %or.cond.i133 = select i1 %.not31.i, i1 %i.wp, i1 false
  br i1 %or.cond.i133, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm, %.lr.ph.i128
  %i.wq = add nsw i32 %.04.i, -1
  br label %bb.fq

bb.fo:                                            ; preds = %bb.fm
  %i.wr = and i8 %i.wl, 2
  %.not32.i = icmp eq i8 %i.wr, 0
  br i1 %.not32.i, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.ws = add nsw i32 %.0272.i, %i.wg
  %i.wt = add nsw i32 %.0253.i, %i.wj
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo, %bb.fn
  %.128.i = phi i32 [ %.0272.i, %bb.fn ], [ %.0272.i, %bb.fo ], [ %i.ws, %bb.fp ] ; 2 uses
  %.126.i = phi i32 [ %.0253.i, %bb.fn ], [ %.0253.i, %bb.fo ], [ %i.wt, %bb.fp ] ; 2 uses
  %.1.i = phi i32 [ %i.wq, %bb.fn ], [ %.04.i, %bb.fo ], [ %.04.i, %bb.fp ] ; 2 uses
  %indvars.iv.next.i131 = add nuw nsw i64 %indvars.iv.i129, 1 ; 2 uses
  %exitcond.not.i132 = icmp eq i64 %indvars.iv.next.i131, %wide.trip.count.i127
  br i1 %exitcond.not.i132, label %._crit_edge.i126, label %.lr.ph.i128, !llvm.loop !317

._crit_edge.i126:                                 ; preds = %bb.fq, %.preheader.i125
  %.027.lcssa.i = phi i32 [ 0, %.preheader.i125 ], [ %.128.i, %bb.fq ]
  %.025.lcssa.i = phi i32 [ 0, %.preheader.i125 ], [ %.126.i, %bb.fq ]
  %.0.lcssa.i = phi i32 [ %.pre300.pre304, %.preheader.i125 ], [ %.1.i, %bb.fq ]
  call fastcc void @print_stat_summary_inserts_deletes(ptr noundef %0, i32 noundef %.0.lcssa.i, i32 noundef %.027.lcssa.i, i32 noundef %.025.lcssa.i)
  %.pre300.pre = load i32, ptr %24, align 8, !tbaa !70
  br label %show_shortstats.exit

show_shortstats.exit:                             ; preds = %._crit_edge.i126, %bb.fk
  %.pre300 = phi i32 [ %.pre300.pre, %._crit_edge.i126 ], [ %.pre300.pre304, %bb.fk ] ; 4 uses
  %or.cond3 = and i1 %i.jp, %i.js
  br i1 %or.cond3, label %bb.fr, label %bb.fy

show_shortstats.exit.thread:                      ; preds = %bb.fl
  %or.cond3384 = and i1 %i.jp, %i.js
  br i1 %or.cond3384, label %.thread386, label %free_diffstat_info.exit

.thread386:                                       ; preds = %show_shortstats.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  br label %show_dirstat_by_line.exit

bb.fr:                                            ; preds = %show_shortstats.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  %i.wu = icmp eq i32 %.pre300, 0
  br i1 %i.wu, label %show_dirstat_by_line.exit, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.wv = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ww = getelementptr inbounds nuw i8, ptr %14, i64 12
  %i.wx = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.wy = load i32, ptr %i.wx, align 8, !tbaa !41
  %i.wz = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 %i.wy, ptr %i.wz, align 8, !tbaa !318
  %i.xa = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !48
  %i.xc = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 %i.xb, ptr %i.xc, align 4, !tbaa !321
  %i.xd = icmp sgt i32 %.pre300, 0
  br i1 %i.xd, label %.lr.ph.i134, label %conclude_dirstat.exit.i

.lr.ph.i134:                                      ; preds = %bb.fs
  %i.xe = getelementptr inbounds nuw i8, ptr %24, i64 8
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fv, %.lr.ph.i134
  %i.xf = phi i32 [ %.pre300, %.lr.ph.i134 ], [ %i.xz, %bb.fv ]
  %indvars.iv47.i = phi i64 [ 0, %.lr.ph.i134 ], [ %indvars.iv.next48.i, %bb.fv ] ; 5 uses
  %.01735.i = phi i64 [ 0, %.lr.ph.i134 ], [ %i.yf, %bb.fv ]
  %.2933.i = phi i32 [ 0, %.lr.ph.i134 ], [ %.28.i, %bb.fv ] ; 3 uses
  %i.xg = phi ptr [ null, %.lr.ph.i134 ], [ %i.ya, %bb.fv ] ; 2 uses
  %i.xh = load ptr, ptr %i.xe, align 8, !tbaa !73
  %i.xi = getelementptr inbounds nuw [8 x i8], ptr %i.xh, i64 %indvars.iv47.i
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !74 ; 4 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 40
  %i.xl = load i64, ptr %i.xk, align 8, !tbaa !308
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xj, i64 48
  %i.xn = load i64, ptr %i.xm, align 8, !tbaa !309
  %i.xo = add i64 %i.xn, %i.xl                    ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xj, i64 32
  %i.xq = load i8, ptr %i.xp, align 8
  %i.xr = and i8 %i.xq, 2
  %.not.i136 = icmp eq i8 %i.xr, 0
  %i.xs = add i64 %i.xo, 63
  %i.xt = lshr i64 %i.xs, 6
  %.0.i137 = select i1 %.not.i136, i64 %i.xo, i64 %i.xt ; 2 uses
  %indvars.iv.next48.i = add nuw nsw i64 %indvars.iv47.i, 1 ; 5 uses
  %25 = zext nneg i32 %.2933.i to i64
  %.not22.i = icmp samesign ult i64 %indvars.iv47.i, %25
  br i1 %.not22.i, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.xu = mul i32 %.2933.i, 3
  %i.xv = add i32 %i.xu, 48
  %i.xw = sdiv i32 %i.xv, 2
  %i.xx = trunc nsw i64 %indvars.iv.next48.i to i32
  %..i138 = call i32 @llvm.smax.i32(i32 %i.xw, i32 %i.xx) ; 3 uses
  %i.xy = sext i32 %..i138 to i64                 ; 2 uses
  %mul.ov.i.i = icmp slt i32 %..i138, 0
  br i1 %mul.ov.i.i, label %26, label %st_mult.exit.i

26:                                               ; preds = %bb.fu
  call void (ptr, ...) @die(ptr noundef nonnull @.str.363, i64 noundef 16, i64 noundef %i.xy) #35
  unreachable

st_mult.exit.i:                                   ; preds = %bb.fu
  %27 = shl nuw nsw i64 %i.xy, 4
  %28 = call ptr @xrealloc(ptr noundef %i.xg, i64 noundef %27) #33
  %.pre.i139 = load i32, ptr %24, align 8, !tbaa !70
  br label %bb.fv

bb.fv:                                            ; preds = %st_mult.exit.i, %bb.ft
  %i.xz = phi i32 [ %.pre.i139, %st_mult.exit.i ], [ %i.xf, %bb.ft ] ; 2 uses
  %i.ya = phi ptr [ %28, %st_mult.exit.i ], [ %i.xg, %bb.ft ] ; 6 uses
  %.28.i = phi i32 [ %..i138, %st_mult.exit.i ], [ %.2933.i, %bb.ft ] ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xj, i64 8
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !78
  %i.yd = getelementptr inbounds nuw [16 x i8], ptr %i.ya, i64 %indvars.iv47.i ; 2 uses
  store ptr %i.yc, ptr %i.yd, align 8, !tbaa !322
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 8
  store i64 %.0.i137, ptr %i.ye, align 8, !tbaa !324
  %i.yf = add i64 %.0.i137, %.01735.i             ; 3 uses
  %i.yg = sext i32 %i.xz to i64
  %i.yh = icmp slt i64 %indvars.iv.next48.i, %i.yg
  br i1 %i.yh, label %bb.ft, label %._crit_edge.i141, !llvm.loop !325

._crit_edge.i141:                                 ; preds = %bb.fv
  %i.yi = trunc nsw i64 %indvars.iv.next48.i to i32
  store i32 %i.yi, ptr %i.ww, align 4
  store i32 %.28.i, ptr %i.wv, align 8
  store ptr %i.ya, ptr %14, align 8
  %.not.i.i142 = icmp eq i64 %i.yf, 0
  br i1 %.not.i.i142, label %conclude_dirstat.exit.i, label %bb.fw

bb.fw:                                            ; preds = %._crit_edge.i141
  %.not62.i = icmp eq i64 %indvars.iv47.i, 0
  br i1 %.not62.i, label %sane_qsort.exit.i.i, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  call void @qsort(ptr noundef nonnull %i.ya, i64 noundef range(i64 -2147483648, 2147483648) %indvars.iv.next48.i, i64 noundef 16, ptr noundef nonnull @dirstat_compare) #33
  br label %sane_qsort.exit.i.i

sane_qsort.exit.i.i:                              ; preds = %bb.fx, %bb.fw
  %i.yj = call fastcc i64 @gather_dirstat(ptr noundef %0, ptr noundef nonnull %14, i64 noundef %i.yf, ptr noundef nonnull @.str.41, i32 noundef 0) ; 0 uses
  br label %conclude_dirstat.exit.i

conclude_dirstat.exit.i:                          ; preds = %sane_qsort.exit.i.i, %._crit_edge.i141, %bb.fs
  %.lcssa3158.i = phi ptr [ %i.ya, %sane_qsort.exit.i.i ], [ %i.ya, %._crit_edge.i141 ], [ null, %bb.fs ]
  call void @free(ptr noundef %.lcssa3158.i) #33
  %.pre.pre = load i32, ptr %24, align 8, !tbaa !70
  br label %show_dirstat_by_line.exit

show_dirstat_by_line.exit:                        ; preds = %.thread386, %bb.fr, %conclude_dirstat.exit.i
  %.pre = phi i32 [ 0, %bb.fr ], [ %.pre.pre, %conclude_dirstat.exit.i ], [ 0, %.thread386 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  br label %bb.fy

bb.fy:                                            ; preds = %show_dirstat_by_line.exit, %show_shortstats.exit
  %i.yk = phi i32 [ %.pre, %show_dirstat_by_line.exit ], [ %.pre300, %show_shortstats.exit ]
  %i.yl = icmp sgt i32 %i.yk, 0
  br i1 %i.yl, label %.lr.ph.i144, label %free_diffstat_info.exit

.lr.ph.i144:                                      ; preds = %bb.fy
  %i.ym = getelementptr inbounds nuw i8, ptr %24, i64 8
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fz, %.lr.ph.i144
  %indvars.iv.i145 = phi i64 [ 0, %.lr.ph.i144 ], [ %indvars.iv.next.i146, %bb.fz ] ; 2 uses
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !73
  %i.yo = getelementptr inbounds nuw [8 x i8], ptr %i.yn, i64 %indvars.iv.i145
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !74 ; 4 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 16
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !76
  call void @free(ptr noundef %i.yr) #33
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yp, i64 8
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !78
  call void @free(ptr noundef %i.yt) #33
  %i.yu = load ptr, ptr %i.yp, align 8, !tbaa !79
  call void @free(ptr noundef %i.yu) #33
  call void @free(ptr noundef %i.yp) #33
  %indvars.iv.next.i146 = add nuw nsw i64 %indvars.iv.i145, 1 ; 2 uses
  %i.yv = load i32, ptr %24, align 8, !tbaa !70
  %i.yw = sext i32 %i.yv to i64
  %i.yx = icmp slt i64 %indvars.iv.next.i146, %i.yw
  br i1 %i.yx, label %bb.fz, label %free_diffstat_info.exit, !llvm.loop !80

free_diffstat_info.exit:                          ; preds = %bb.fz, %show_shortstats.exit.thread, %bb.fy
  %i.yy = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !73
  call void @free(ptr noundef %i.yz) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #33
  br label %bb.ga

bb.ga:                                            ; preds = %bb.cb, %free_diffstat_info.exit
  %.1 = phi i32 [ 1, %free_diffstat_info.exit ], [ %.079, %bb.cb ]
  %i.za = icmp eq i32 %i.jo, 0
  %or.cond5 = or i1 %i.za, %i.js
  br i1 %or.cond5, label %bb.hs, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  %i.zb = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.zc = getelementptr inbounds nuw i8, ptr %12, i64 12
  %i.zd = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %i.ze = load i32, ptr %i.zd, align 8, !tbaa !41
  %i.zf = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 %i.ze, ptr %i.zf, align 8, !tbaa !318
  %i.zg = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.zh = load i32, ptr %i.zg, align 4, !tbaa !48
  %i.zi = getelementptr inbounds nuw i8, ptr %12, i64 20
  store i32 %i.zh, ptr %i.zi, align 4, !tbaa !321
  %i.zj = load i32, ptr getelementptr inbounds nuw (i8, ptr @diff_queued_diff, i64 12), align 4, !tbaa !251 ; 2 uses
  %i.zk = icmp sgt i32 %i.zj, 0
  br i1 %i.zk, label %.lr.ph.i148, label %show_dirstat.exit

.lr.ph.i148:                                      ; preds = %bb.gb
  %i.zl = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.zm = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 4 uses
  br label %bb.gc

bb.gc:                                            ; preds = %bb.hp, %.lr.ph.i148
  %i.zn = phi i32 [ %i.zj, %.lr.ph.i148 ], [ %i.aep, %bb.hp ]
  %indvars.iv.i149 = phi i64 [ 0, %.lr.ph.i148 ], [ %indvars.iv.next.i157, %bb.hp ] ; 2 uses
  %.04291.i = phi i64 [ 0, %.lr.ph.i148 ], [ %.1.i156, %bb.hp ] ; 2 uses
  %i.zo = phi i32 [ 0, %.lr.ph.i148 ], [ %i.aer, %bb.hp ] ; 4 uses
  %.8589.i = phi i32 [ 0, %.lr.ph.i148 ], [ %.83.i, %bb.hp ] ; 4 uses
  %i.zp = phi ptr [ null, %.lr.ph.i148 ], [ %i.aeq, %bb.hp ] ; 3 uses
  %i.zq = load ptr, ptr @diff_queued_diff, align 8, !tbaa !255
  %i.zr = getelementptr inbounds nuw [8 x i8], ptr %i.zq, i64 %indvars.iv.i149
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !256 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) @__const.diff_filespec_size.dpf_options, i64 24, i1 false)
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 8 ; 5 uses
  %i.zu = load ptr, ptr %i.zt, align 8, !tbaa !262 ; 6 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 40
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !107 ; 2 uses
  %.not.i150 = icmp eq ptr %i.zw, null
  %.pre.i151 = load ptr, ptr %i.zs, align 8, !tbaa !258 ; 7 uses
  br i1 %.not.i150, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %i.zx = getelementptr inbounds nuw i8, ptr %.pre.i151, i64 40
  %i.zy = load ptr, ptr %i.zx, align 8, !tbaa !107
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %i.zz = phi ptr [ %i.zy, %bb.gd ], [ %i.zw, %bb.gc ]
  %i.aaa = getelementptr inbounds nuw i8, ptr %.pre.i151, i64 82
  %i.aab = load i16, ptr %i.aaa, align 2
  %i.aac = and i16 %i.aab, 1
  %.not48.i = icmp eq i16 %i.aac, 0
  br i1 %.not48.i, label %bb.gh, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zu, i64 82
  %i.aae = load i16, ptr %i.aad, align 2
  %i.aaf = and i16 %i.aae, 1
  %.not49.i = icmp eq i16 %i.aaf, 0
  br i1 %.not49.i, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.aag = load i128, ptr %.pre.i151, align 1
  %i.aah = load i128, ptr %i.zu, align 1
  %i.aai = xor i128 %i.aag, %i.aah
  %i.aaj = getelementptr i8, ptr %.pre.i151, i64 16
  %i.aak = getelementptr i8, ptr %i.zu, i64 16
  %i.aal = load i128, ptr %i.aaj, align 1
  %i.aam = load i128, ptr %i.aak, align 1
  %i.aan = xor i128 %i.aal, %i.aam
  %i.aao = or i128 %i.aai, %i.aan
  %i.aap = icmp ne i128 %i.aao, 0
  %i.aaq = zext i1 %i.aap to i32
  %.not.i.not.i = icmp eq i32 %i.aaq, 0
  br i1 %.not.i.not.i, label %bb.hl, label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf, %bb.ge
  %i.aar = load i32, ptr %i.zl, align 8, !tbaa !47
  %.not51.i = icmp eq i32 %i.aar, 0
  br i1 %.not51.i, label %bb.gi, label %bb.hl

bb.gi:                                            ; preds = %bb.gh
  %i.aas = getelementptr inbounds nuw i8, ptr %.pre.i151, i64 80
  %i.aat = load i16, ptr %i.aas, align 8, !tbaa !106
  %.not52.i = icmp eq i16 %i.aat, 0
  %i.aau = getelementptr inbounds nuw i8, ptr %i.zu, i64 80
  %i.aav = load i16, ptr %i.aau, align 8, !tbaa !106
  %.not55.i = icmp eq i16 %i.aav, 0               ; 2 uses
  br i1 %.not52.i, label %bb.he, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.aaw = load ptr, ptr %i.zm, align 8, !tbaa !148 ; 2 uses
  br i1 %.not55.i, label %bb.gx, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.aax = call i32 @diff_populate_filespec(ptr noundef %i.aaw, ptr noundef nonnull %.pre.i151, ptr noundef null) ; 0 uses
  %i.aay = load ptr, ptr %i.zm, align 8, !tbaa !148
  %i.aaz = load ptr, ptr %i.zt, align 8, !tbaa !262
  %i.aba = call i32 @diff_populate_filespec(ptr noundef %i.aay, ptr noundef %i.aaz, ptr noundef null) ; 0 uses
  %i.abb = load ptr, ptr %i.zm, align 8, !tbaa !148
  %i.abc = load ptr, ptr %i.zs, align 8, !tbaa !258
  %i.abd = load ptr, ptr %i.zt, align 8, !tbaa !262
  %i.abe = call i32 @diffcore_count_changes(ptr noundef %i.abb, ptr noundef %i.abc, ptr noundef %i.abd, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #33 ; 0 uses
  %i.abf = load ptr, ptr %i.zs, align 8, !tbaa !258 ; 7 uses
  %.not.i59.i = icmp eq ptr %i.abf, null
  br i1 %.not.i59.i, label %diff_free_filespec_data.exit.i, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 82 ; 3 uses
  %i.abh = load i16, ptr %i.abg, align 2          ; 2 uses
  %i.abi = and i16 %i.abh, 2
  %.not.i.i.i160 = icmp eq i16 %i.abi, 0
  br i1 %.not.i.i.i160, label %bb.gn, label %bb.gm
end_hunk_0
begin_hunk_1_@diff_flush:bb.a
cmp_in_block_with_wsd.exit.thread.i.i.i:          ; preds = %bb.kq
  store i32 %i.atp, ptr %i.atq, align 8, !tbaa !361
  br label %.critedge.i.i56.i

bb.kr:                                            ; preds = %bb.km
  br i1 %.not34.i.i.i, label %.thread46.i.i.i, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.kr
  %i.att = load ptr, ptr %i.atj, align 8, !tbaa !344
  %i.atu = getelementptr inbounds nuw i8, ptr %i.att, i64 24
  %i.atv = load i32, ptr %i.atu, align 8, !tbaa !57
  %i.atw = load i32, ptr %i.ate, align 8, !tbaa !57
  %.not57.i.i.i = icmp eq i32 %i.atv, %i.atw
  br i1 %.not57.i.i.i, label %.critedge.i.i56.i, label %.thread46.i.i.i

cmp_in_block_with_wsd.exit.i.i.i:                 ; preds = %bb.kq
  %.not56.i.i.i = icmp eq i32 %i.atp, %i.atr
  br i1 %.not56.i.i.i, label %.critedge.i.i56.i, label %.thread46.i.i.i

.critedge.i.i56.i:                                ; preds = %cmp_in_block_with_wsd.exit.i.i.i, %.split.i.i.i, %cmp_in_block_with_wsd.exit.thread.i.i.i, %bb.kp
  %i.atx = sext i32 %.02650.i.i.i to i64
  %i.aty = getelementptr inbounds [16 x i8], ptr %.0154252.i.i, i64 %i.atx ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aty, ptr noundef nonnull align 8 dereferenceable(16) %i.atg, i64 16, i1 false), !tbaa.struct !362
  %i.atz = add nsw i32 %.02650.i.i.i, 1
  store ptr %i.atj, ptr %i.aty, align 8, !tbaa !359
  br label %.thread46.i.i.i

.thread46.i.i.i:                                  ; preds = %.critedge.i.i56.i, %cmp_in_block_with_wsd.exit.i.i.i, %.split.i.i.i, %bb.kr, %bb.ko, %bb.kn, %bb.kl
  %.1.i.i54.i = phi i32 [ %i.atz, %.critedge.i.i56.i ], [ %.02650.i.i.i, %cmp_in_block_with_wsd.exit.i.i.i ], [ %.02650.i.i.i, %bb.kn ], [ %.02650.i.i.i, %bb.kr ], [ %.02650.i.i.i, %bb.kl ], [ %.02650.i.i.i, %bb.ko ], [ %.02650.i.i.i, %.split.i.i.i ] ; 3 uses
  %indvars.iv.next.i81.i.i = add nuw nsw i64 %indvars.iv.i79.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i81.i.i, %i.atf
  br i1 %exitcond.not.i.i, label %pmb_advance_or_null.exit.i.i, label %bb.kl, !llvm.loop !363

pmb_advance_or_null.exit.i.i:                     ; preds = %.thread46.i.i.i
  %i.aua = icmp eq i32 %.1.i.i54.i, 0
  br i1 %i.aua, label %bb.ks, label %.thread211.i.i

bb.ks:                                            ; preds = %pmb_advance_or_null.exit.i.i
  %.pr.i55.i = load i32, ptr %i.aik, align 8, !tbaa !167
  %i.aub = icmp eq i32 %.pr.i55.i, 1
  br i1 %i.aub, label %adjust_last_block.exit105.i.i, label %.preheader37.i82.i.i

.preheader37.i82.i.i:                             ; preds = %bb.ks, %bb.kk, %.thread175.thread.i.i
  %.2186284303.i.i = phi ptr [ %.0.i35.i, %bb.ks ], [ %.0.i35.i, %bb.kk ], [ %.2.i46.i, %.thread175.thread.i.i ] ; 4 uses
  %.155185285300.i.i = phi i32 [ %.054257.i.i, %bb.ks ], [ %.054257.i.i, %bb.kk ], [ %.155.i.i, %.thread175.thread.i.i ] ; 6 uses
  %.260184287298.i.i = phi i32 [ %.058256.i.i, %bb.ks ], [ %.058256.i.i, %bb.kk ], [ %.260.i45.i, %.thread175.thread.i.i ] ; 4 uses
  %.not42.i83.i.i = icmp slt i32 %.155185285300.i.i, 1
  br i1 %.not42.i83.i.i, label %adjust_last_block.exit105.thread.i.i, label %.lr.ph45.i84.i.i

.lr.ph45.i84.i.i:                                 ; preds = %.preheader37.i82.i.i
  %i.auc = load ptr, ptr %i.amk, align 8, !tbaa !59
  %i.aud = load ptr, ptr %i.auc, align 8, !tbaa !64 ; 6 uses
  %i.aue = add nuw i32 %.155185285300.i.i, 1
  %wide.trip.count.i85.i.i = zext i32 %i.aue to i64
  br label %bb.kt

bb.kt:                                            ; preds = %._crit_edge.i95.i.i, %.lr.ph45.i84.i.i
  %indvars.iv.i86.i.i = phi i64 [ 1, %.lr.ph45.i84.i.i ], [ %indvars.iv.next.i97.i.i, %._crit_edge.i95.i.i ] ; 2 uses
  %.02144.i87.i.i = phi i32 [ 0, %.lr.ph45.i84.i.i ], [ %.1.lcssa.i96.i.i, %._crit_edge.i95.i.i ] ; 2 uses
  %i.auf = sub nsw i64 %i.aqq, %indvars.iv.i86.i.i
  %i.aug = getelementptr inbounds [32 x i8], ptr %i.aud, i64 %i.auf
  %i.auh = load ptr, ptr %i.aug, align 8, !tbaa !51 ; 2 uses
  %i.aui = load i8, ptr %i.auh, align 1, !tbaa !40 ; 2 uses
  %.not3239.i88.i.i = icmp eq i8 %i.aui, 0
  br i1 %.not3239.i88.i.i, label %._crit_edge.i95.i.i, label %.lr.ph.i89.i.i

.lr.ph.i89.i.i:                                   ; preds = %bb.kt, %bb.kv
  %i.auj = phi i8 [ %i.aur, %bb.kv ], [ %i.aui, %bb.kt ]
  %.041.i90.i.i = phi ptr [ %i.auq, %bb.kv ], [ %i.auh, %bb.kt ]
  %.140.i91.i.i = phi i32 [ %.2.i93.i.i, %bb.kv ], [ %.02144.i87.i.i, %bb.kt ] ; 3 uses
  %i.auk = zext i8 %i.auj to i64
  %i.aul = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.auk
  %i.aum = load i8, ptr %i.aul, align 1, !tbaa !40
  %i.aun = and i8 %i.aum, 6
  %.not33.i92.i.i = icmp eq i8 %i.aun, 0
  br i1 %.not33.i92.i.i, label %bb.kv, label %bb.ku

bb.ku:                                            ; preds = %.lr.ph.i89.i.i
  %i.auo = add nsw i32 %.140.i91.i.i, 1
  %i.aup = icmp sgt i32 %.140.i91.i.i, 18
  br i1 %i.aup, label %adjust_last_block.exit105.thread.i.i, label %bb.kv

bb.kv:                                            ; preds = %bb.ku, %.lr.ph.i89.i.i
  %.2.i93.i.i = phi i32 [ %i.auo, %bb.ku ], [ %.140.i91.i.i, %.lr.ph.i89.i.i ] ; 2 uses
  %i.auq = getelementptr inbounds nuw i8, ptr %.041.i90.i.i, i64 1 ; 2 uses
  %i.aur = load i8, ptr %i.auq, align 1, !tbaa !40 ; 2 uses
  %.not32.i94.i.i = icmp eq i8 %i.aur, 0
  br i1 %.not32.i94.i.i, label %._crit_edge.i95.i.i, label %.lr.ph.i89.i.i, !llvm.loop !354

._crit_edge.i95.i.i:                              ; preds = %bb.kv, %bb.kt
  %.1.lcssa.i96.i.i = phi i32 [ %.02144.i87.i.i, %bb.kt ], [ %.2.i93.i.i, %bb.kv ]
  %indvars.iv.next.i97.i.i = add nuw nsw i64 %indvars.iv.i86.i.i, 1 ; 2 uses
  %exitcond.not.i98.i.i = icmp eq i64 %indvars.iv.next.i97.i.i, %wide.trip.count.i85.i.i
  br i1 %exitcond.not.i98.i.i, label %.preheader.i99.i.i.preheader, label %bb.kt, !llvm.loop !355

.preheader.i99.i.i.preheader:                     ; preds = %._crit_edge.i95.i.i
  %i.aus = zext nneg i32 %.155185285300.i.i to i64 ; 2 uses
  %xtraiter498 = and i64 %i.aus, 3                ; 3 uses
  %i.aut = icmp ult i32 %.155185285300.i.i, 4
  br i1 %i.aut, label %.preheader.i99.i.i.epil.preheader, label %.preheader.i99.i.i.preheader.new

.preheader.i99.i.i.preheader.new:                 ; preds = %.preheader.i99.i.i.preheader
  %unroll_iter502 = and i64 %i.aus, 2147483644
  %invariant.gep545 = getelementptr [32 x i8], ptr %i.aud, i64 %i.aqq
  br label %.preheader.i99.i.i

.preheader.i99.i.i:                               ; preds = %.preheader.i99.i.i, %.preheader.i99.i.i.preheader.new
  %indvars.iv51.i101.i.i = phi i64 [ 1, %.preheader.i99.i.i.preheader.new ], [ %indvars.iv.next52.i102.i.i.3, %.preheader.i99.i.i ] ; 5 uses
  %niter503 = phi i64 [ 0, %.preheader.i99.i.i.preheader.new ], [ %niter503.next.3, %.preheader.i99.i.i ]
  %i.auu = sub nsw i64 %i.aqq, %indvars.iv51.i101.i.i
  %i.auv = getelementptr inbounds [32 x i8], ptr %i.aud, i64 %i.auu
  %i.auw = getelementptr inbounds nuw i8, ptr %i.auv, i64 12 ; 2 uses
  %i.aux = load i32, ptr %i.auw, align 4, !tbaa !54
  %i.auy = and i32 %i.aux, -3145729
  store i32 %i.auy, ptr %i.auw, align 4, !tbaa !54
  %indvars.iv.next52.i102.i.i.neg = xor i64 %indvars.iv51.i101.i.i, -1
  %gep546 = getelementptr [32 x i8], ptr %invariant.gep545, i64 %indvars.iv.next52.i102.i.i.neg
  %i.auz = getelementptr inbounds nuw i8, ptr %gep546, i64 12 ; 2 uses
  %i.ava = load i32, ptr %i.auz, align 4, !tbaa !54
  %i.avb = and i32 %i.ava, -3145729
  store i32 %i.avb, ptr %i.auz, align 4, !tbaa !54
  %indvars.iv.next52.i102.i.i.1 = add nuw nsw i64 %indvars.iv51.i101.i.i, 2
  %i.avc = sub nsw i64 %i.aqq, %indvars.iv.next52.i102.i.i.1
  %i.avd = getelementptr inbounds [32 x i8], ptr %i.aud, i64 %i.avc
  %i.ave = getelementptr inbounds nuw i8, ptr %i.avd, i64 12 ; 2 uses
  %i.avf = load i32, ptr %i.ave, align 4, !tbaa !54
  %i.avg = and i32 %i.avf, -3145729
  store i32 %i.avg, ptr %i.ave, align 4, !tbaa !54
  %indvars.iv.next52.i102.i.i.2 = add nuw nsw i64 %indvars.iv51.i101.i.i, 3
  %i.avh = sub nsw i64 %i.aqq, %indvars.iv.next52.i102.i.i.2
  %i.avi = getelementptr inbounds [32 x i8], ptr %i.aud, i64 %i.avh
  %i.avj = getelementptr inbounds nuw i8, ptr %i.avi, i64 12 ; 2 uses
  %i.avk = load i32, ptr %i.avj, align 4, !tbaa !54
  %i.avl = and i32 %i.avk, -3145729
  store i32 %i.avl, ptr %i.avj, align 4, !tbaa !54
  %indvars.iv.next52.i102.i.i.3 = add nuw nsw i64 %indvars.iv51.i101.i.i, 4 ; 2 uses
  %niter503.next.3 = add nuw i64 %niter503, 4     ; 2 uses
  %niter503.ncmp.3 = icmp eq i64 %niter503.next.3, %unroll_iter502
  br i1 %niter503.ncmp.3, label %adjust_last_block.exit105.i.i.loopexit.unr-lcssa, label %.preheader.i99.i.i, !llvm.loop !356

adjust_last_block.exit105.i.i.loopexit.unr-lcssa: ; preds = %.preheader.i99.i.i
  %lcmp.mod500.not = icmp eq i64 %xtraiter498, 0
  br i1 %lcmp.mod500.not, label %adjust_last_block.exit105.i.i, label %.preheader.i99.i.i.epil.preheader

.preheader.i99.i.i.epil.preheader:                ; preds = %adjust_last_block.exit105.i.i.loopexit.unr-lcssa, %.preheader.i99.i.i.preheader
  %indvars.iv51.i101.i.i.epil.init = phi i64 [ 1, %.preheader.i99.i.i.preheader ], [ %indvars.iv.next52.i102.i.i.3, %adjust_last_block.exit105.i.i.loopexit.unr-lcssa ]
  %lcmp.mod501 = icmp ne i64 %xtraiter498, 0
  call void @llvm.assume(i1 %lcmp.mod501)
  br label %.preheader.i99.i.i.epil

.preheader.i99.i.i.epil:                          ; preds = %.preheader.i99.i.i.epil, %.preheader.i99.i.i.epil.preheader
  %indvars.iv51.i101.i.i.epil = phi i64 [ %indvars.iv.next52.i102.i.i.epil, %.preheader.i99.i.i.epil ], [ %indvars.iv51.i101.i.i.epil.init, %.preheader.i99.i.i.epil.preheader ] ; 2 uses
  %epil.iter499 = phi i64 [ %epil.iter499.next, %.preheader.i99.i.i.epil ], [ 0, %.preheader.i99.i.i.epil.preheader ]
  %i.avm = sub nsw i64 %i.aqq, %indvars.iv51.i101.i.i.epil
  %i.avn = getelementptr inbounds [32 x i8], ptr %i.aud, i64 %i.avm
  %i.avo = getelementptr inbounds nuw i8, ptr %i.avn, i64 12 ; 2 uses
  %i.avp = load i32, ptr %i.avo, align 4, !tbaa !54
  %i.avq = and i32 %i.avp, -3145729
  store i32 %i.avq, ptr %i.avo, align 4, !tbaa !54
  %indvars.iv.next52.i102.i.i.epil = add nuw nsw i64 %indvars.iv51.i101.i.i.epil, 1
  %epil.iter499.next = add i64 %epil.iter499, 1   ; 2 uses
  %epil.iter499.cmp.not = icmp eq i64 %epil.iter499.next, %xtraiter498
  br i1 %epil.iter499.cmp.not, label %adjust_last_block.exit105.i.i, label %.preheader.i99.i.i.epil, !llvm.loop !364

adjust_last_block.exit105.i.i:                    ; preds = %adjust_last_block.exit105.i.i.loopexit.unr-lcssa, %.preheader.i99.i.i.epil, %bb.ks
  %.2186284301.i.i = phi ptr [ %.0.i35.i, %bb.ks ], [ %.2186284303.i.i, %.preheader.i99.i.i.epil ], [ %.2186284303.i.i, %adjust_last_block.exit105.i.i.loopexit.unr-lcssa ]
  %.155185285299.i.i = phi i32 [ %.054257.i.i, %bb.ks ], [ %.155185285300.i.i, %.preheader.i99.i.i.epil ], [ %.155185285300.i.i, %adjust_last_block.exit105.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.260184289.i.i = phi i32 [ %.058256.i.i, %bb.ks ], [ %.260184287298.i.i, %.preheader.i99.i.i.epil ], [ %.260184287298.i.i, %adjust_last_block.exit105.i.i.loopexit.unr-lcssa ]
  %.226.i104.i.i = phi i32 [ %.054257.i.i, %bb.ks ], [ 0, %.preheader.i99.i.i.epil ], [ 0, %adjust_last_block.exit105.i.i.loopexit.unr-lcssa ] ; 2 uses
  %i.avr = icmp eq i32 %.226.i104.i.i, 0
  %i.avs = icmp sgt i32 %.155185285299.i.i, 1
  %or.cond3.i.i = select i1 %i.avr, i1 %i.avs, i1 false
  br i1 %or.cond3.i.i, label %.thread223.i.i, label %adjust_last_block.exit105.thread.i.i

.thread223.i.i:                                   ; preds = %adjust_last_block.exit105.i.i
  %i.avt = sub nsw i32 %.063255.i.i, %.155185285299.i.i
  br label %.thread168.i.i

adjust_last_block.exit105.thread.i.i:             ; preds = %bb.ku, %adjust_last_block.exit105.i.i, %.preheader37.i82.i.i
  %.2186284302.i.i = phi ptr [ %.2186284301.i.i, %adjust_last_block.exit105.i.i ], [ %.2186284303.i.i, %.preheader37.i82.i.i ], [ %.2186284303.i.i, %bb.ku ]
  %.260184290.i.i = phi i32 [ %.260184289.i.i, %adjust_last_block.exit105.i.i ], [ %.260184287298.i.i, %.preheader37.i82.i.i ], [ %.260184287298.i.i, %bb.ku ]
  %.226.i104198.i.i = phi i32 [ %.226.i104.i.i, %adjust_last_block.exit105.i.i ], [ 0, %.preheader37.i82.i.i ], [ 1, %bb.ku ]
  %i.avu = getelementptr i8, ptr %i.aqr, i64 20
  br label %bb.kw

bb.kw:                                            ; preds = %bb.la, %adjust_last_block.exit105.thread.i.i
  %indvars.iv.i106.i.i = phi i64 [ 0, %adjust_last_block.exit105.thread.i.i ], [ %indvars.iv.next.i107.i.i, %bb.la ] ; 3 uses
  %.02843.i.i.i = phi i32 [ %.0146254.i.i, %adjust_last_block.exit105.thread.i.i ], [ %.2.i109.i.i, %bb.la ] ; 3 uses
  %.02942.i.i.i = phi ptr [ %.0154252.i.i, %adjust_last_block.exit105.thread.i.i ], [ %.130.i.i.i, %bb.la ] ; 2 uses
  %.03141.i.i.i = phi ptr [ %.2186284302.i.i, %adjust_last_block.exit105.thread.i.i ], [ %i.awl, %bb.la ] ; 3 uses
  %indvars.iv.next.i107.i.i = add nuw nsw i64 %indvars.iv.i106.i.i, 1 ; 3 uses
  %i.avv = sext i32 %.02843.i.i.i to i64
  %.not34.i108.i.i = icmp slt i64 %indvars.iv.i106.i.i, %i.avv
  br i1 %.not34.i108.i.i, label %bb.ky, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.avw = mul i32 %.02843.i.i.i, 3
  %i.avx = add i32 %i.avw, 48
  %i.avy = sdiv i32 %i.avx, 2
  %i.avz = trunc nsw i64 %indvars.iv.next.i107.i.i to i32
  %..i.i.i = call i32 @llvm.smax.i32(i32 %i.avy, i32 %i.avz) ; 3 uses
  %i.awa = sext i32 %..i.i.i to i64               ; 2 uses
  %mul.ov.i.i.i.i = icmp slt i32 %..i.i.i, 0
  br i1 %mul.ov.i.i.i.i, label %29, label %st_mult.exit.i.i.i

29:                                               ; preds = %bb.kx
  call void (ptr, ...) @die(ptr noundef nonnull @.str.363, i64 noundef 16, i64 noundef %i.awa) #35
  unreachable

st_mult.exit.i.i.i:                               ; preds = %bb.kx
  %30 = shl nuw nsw i64 %i.awa, 4
  %31 = call ptr @xrealloc(ptr noundef %.02942.i.i.i, i64 noundef %30) #33
  br label %bb.ky

bb.ky:                                            ; preds = %st_mult.exit.i.i.i, %bb.kw
  %.130.i.i.i = phi ptr [ %31, %st_mult.exit.i.i.i ], [ %.02942.i.i.i, %bb.kw ] ; 4 uses
  %.2.i109.i.i = phi i32 [ %..i.i.i, %st_mult.exit.i.i.i ], [ %.02843.i.i.i, %bb.kw ] ; 3 uses
  %i.awb = load i32, ptr %i.aqn, align 4, !tbaa !168
  %i.awc = and i32 %i.awb, 32
  %.not36.i.i.i = icmp eq i32 %i.awc, 0
  br i1 %.not36.i.i.i, label %bb.la, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %i.awd = load ptr, ptr %.03141.i.i.i, align 8, !tbaa !344
  %.val.i110.i.i = load i32, ptr %i.avu, align 4, !tbaa !56 ; 2 uses
  %i.awe = getelementptr i8, ptr %i.awd, i64 20
  %.val37.i.i.i = load i32, ptr %i.awe, align 4, !tbaa !56 ; 2 uses
  %i.awf = icmp eq i32 %.val.i110.i.i, -2147483648
  %i.awg = icmp eq i32 %.val37.i.i.i, -2147483648
  %or.cond.i.i.i.i = select i1 %i.awf, i1 %i.awg, i1 false
  %i.awh = sub nsw i32 %.val.i110.i.i, %.val37.i.i.i
  %.0.i.i.i.i = select i1 %or.cond.i.i.i.i, i32 -2147483648, i32 %i.awh
  br label %bb.la

bb.la:                                            ; preds = %bb.kz, %bb.ky
  %.sink.i.i.i = phi i32 [ %.0.i.i.i.i, %bb.kz ], [ 0, %bb.ky ]
  %i.awi = getelementptr inbounds nuw [16 x i8], ptr %.130.i.i.i, i64 %indvars.iv.i106.i.i ; 2 uses
  %i.awj = getelementptr inbounds nuw i8, ptr %i.awi, i64 8
  store i32 %.sink.i.i.i, ptr %i.awj, align 8, !tbaa !361
  store ptr %.03141.i.i.i, ptr %i.awi, align 8, !tbaa !359
  %i.awk = getelementptr inbounds nuw i8, ptr %.03141.i.i.i, i64 16
  %i.awl = load ptr, ptr %i.awk, align 8, !tbaa !350 ; 2 uses
  %.not.i111.i.i = icmp eq ptr %i.awl, null
  br i1 %.not.i111.i.i, label %bb.lb, label %bb.kw, !llvm.loop !365

bb.lb:                                            ; preds = %bb.la
  %i.awm = trunc nsw i64 %indvars.iv.next.i107.i.i to i32 ; 2 uses
  %.not244.i.i = icmp ne i32 %.226.i104198.i.i, 0
  %.pre.i48.i = load i32, ptr %i.aqs, align 4, !tbaa !58 ; 2 uses
  %i.awn = icmp eq i32 %.051258.i.i, %.pre.i48.i
  %or.cond322.i.i = select i1 %.not244.i.i, i1 %i.awn, i1 false
  br i1 %or.cond322.i.i, label %bb.lc, label %.thread211.thread.i.i

bb.lc:                                            ; preds = %bb.lb
  %i.awo = xor i32 %.260184290.i.i, 1
  br label %.thread211.i.i

.thread211.thread.i.i:                            ; preds = %bb.lb
  %i.awp = getelementptr inbounds nuw i8, ptr %i.aqr, i64 12 ; 2 uses
  %i.awq = load i32, ptr %i.awp, align 4, !tbaa !54
  %i.awr = or i32 %i.awq, 1048576
  store i32 %i.awr, ptr %i.awp, align 4, !tbaa !54
  br label %.thread168.i.i

.thread211.i.i:                                   ; preds = %bb.lc, %pmb_advance_or_null.exit.i.i
  %.2156.i.i = phi ptr [ %.0154252.i.i, %pmb_advance_or_null.exit.i.i ], [ %.130.i.i.i, %bb.lc ] ; 3 uses
  %.3152.i.i = phi i32 [ %.1.i.i54.i, %pmb_advance_or_null.exit.i.i ], [ %i.awm, %bb.lc ] ; 3 uses
  %.2147.i.i = phi i32 [ %.0146254.i.i, %pmb_advance_or_null.exit.i.i ], [ %.2.i109.i.i, %bb.lc ] ; 3 uses
  %.462.i.i = phi i32 [ %.058256.i.i, %pmb_advance_or_null.exit.i.i ], [ %i.awo, %bb.lc ]
  %.256.i.i = phi i32 [ %.054257.i.i, %pmb_advance_or_null.exit.i.i ], [ 0, %bb.lc ]
  %i.aws = add nsw i32 %.256.i.i, 1               ; 3 uses
  %i.awt = getelementptr inbounds nuw i8, ptr %i.aqr, i64 12 ; 3 uses
  %i.awu = load i32, ptr %i.awt, align 4, !tbaa !54 ; 2 uses
  %i.awv = or i32 %i.awu, 1048576
  store i32 %i.awv, ptr %i.awt, align 4, !tbaa !54
  %.not74.i.i = icmp eq i32 %.462.i.i, 0
  br i1 %.not74.i.i, label %.thread168.i.i, label %bb.ld

bb.ld:                                            ; preds = %.thread211.i.i
  %i.aww = load i32, ptr %i.aik, align 8, !tbaa !167
  %.not75.i.i = icmp eq i32 %i.aww, 2
  br i1 %.not75.i.i, label %.thread168.i.i, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.awx = or i32 %i.awu, 3145728
  store i32 %i.awx, ptr %i.awt, align 4, !tbaa !54
  br label %.thread168.i.i

.thread168.i.i:                                   ; preds = %bb.le, %bb.ld, %.thread211.i.i, %.thread211.thread.i.i, %.thread223.i.i, %bb.kj, %adjust_last_block.exit.thread.i.i, %adjust_last_block.exit.i.i, %.thread.i.i
  %.3157.i.i = phi ptr [ %.0154252.i.i, %adjust_last_block.exit.thread.i.i ], [ %.0154252.i.i, %bb.kj ], [ %.0154252.i.i, %adjust_last_block.exit.i.i ], [ %.2156.i.i, %.thread211.i.i ], [ %.2156.i.i, %bb.ld ], [ %.2156.i.i, %bb.le ], [ %.0154252.i.i, %.thread.i.i ], [ %.0154252.i.i, %.thread223.i.i ], [ %.130.i.i.i, %.thread211.thread.i.i ] ; 5 uses
  %.4153.i.i = phi i32 [ 0, %adjust_last_block.exit.thread.i.i ], [ %.1150182292.i.i, %bb.kj ], [ 0, %adjust_last_block.exit.i.i ], [ %.3152.i.i, %.thread211.i.i ], [ %.3152.i.i, %bb.ld ], [ %.3152.i.i, %bb.le ], [ 0, %.thread.i.i ], [ 0, %.thread223.i.i ], [ %i.awm, %.thread211.thread.i.i ]
  %.3148.i.i = phi i32 [ %.0146254.i.i, %adjust_last_block.exit.thread.i.i ], [ %.0146254.i.i, %bb.kj ], [ %.0146254.i.i, %adjust_last_block.exit.i.i ], [ %.2147.i.i, %.thread211.i.i ], [ %.2147.i.i, %bb.ld ], [ %.2147.i.i, %bb.le ], [ %.0146254.i.i, %.thread.i.i ], [ %.0146254.i.i, %.thread223.i.i ], [ %.2.i109.i.i, %.thread211.thread.i.i ]
  %.568.i.i = phi i32 [ %.063255.i.i, %adjust_last_block.exit.thread.i.i ], [ %.063255.i.i, %bb.kj ], [ %i.asu, %adjust_last_block.exit.i.i ], [ %.063255.i.i, %.thread211.i.i ], [ %.063255.i.i, %bb.ld ], [ %.063255.i.i, %bb.le ], [ %.063255.i.i, %.thread.i.i ], [ %i.avt, %.thread223.i.i ], [ %.063255.i.i, %.thread211.thread.i.i ]
  %.5.i.i = phi i32 [ %.260.i45.i, %adjust_last_block.exit.thread.i.i ], [ %.260184288.i.i.a, %bb.kj ], [ 0, %adjust_last_block.exit.i.i ], [ 0, %.thread211.i.i ], [ 1, %bb.ld ], [ 1, %bb.le ], [ 0, %.thread.i.i ], [ 0, %.thread223.i.i ], [ 0, %.thread211.thread.i.i ]
  %.4.i49.i = phi i32 [ %.155.i.i, %adjust_last_block.exit.thread.i.i ], [ %.155185286.i.i, %bb.kj ], [ 0, %adjust_last_block.exit.i.i ], [ %i.aws, %.thread211.i.i ], [ %i.aws, %bb.ld ], [ %i.aws, %bb.le ], [ %.054257.i.i, %.thread.i.i ], [ 0, %.thread223.i.i ], [ 1, %.thread211.thread.i.i ] ; 5 uses
  %.3.i50.i = phi i32 [ 0, %adjust_last_block.exit.thread.i.i ], [ %.051258.i.i, %bb.kj ], [ 0, %adjust_last_block.exit.i.i ], [ %.051258.i.i, %.thread211.i.i ], [ %.051258.i.i, %bb.ld ], [ %.051258.i.i, %bb.le ], [ 0, %.thread.i.i ], [ 0, %.thread223.i.i ], [ %.pre.i48.i, %.thread211.thread.i.i ]
  %i.awy = add nsw i32 %.568.i.i, 1               ; 3 uses
  %i.awz = load ptr, ptr %i.amk, align 8, !tbaa !59 ; 3 uses
  %i.axa = getelementptr inbounds nuw i8, ptr %i.awz, i64 8
  %i.axb = load i32, ptr %i.axa, align 8, !tbaa !60
  %i.axc = icmp slt i32 %i.awy, %i.axb
  br i1 %i.axc, label %bb.ka, label %._crit_edge.i51.i, !llvm.loop !366

._crit_edge.i51.i:                                ; preds = %.thread168.i.i
  %i.axd = sext i32 %i.awy to i64                 ; 6 uses
  %i.axe = load i32, ptr %i.aik, align 8, !tbaa !167
  %i.axf = icmp eq i32 %i.axe, 1
  %.not42.i113.i.i = icmp slt i32 %.4.i49.i, 1
  %or.cond243.i.i = select i1 %i.axf, i1 true, i1 %.not42.i113.i.i
  br i1 %or.cond243.i.i, label %mark_color_as_moved.exit.i, label %.lr.ph45.i114.i.i

.lr.ph45.i114.i.i:                                ; preds = %._crit_edge.i51.i
  %i.axg = load ptr, ptr %i.awz, align 8, !tbaa !64 ; 6 uses
  %i.axh = add nuw i32 %.4.i49.i, 1
  %wide.trip.count.i115.i.i = zext i32 %i.axh to i64
  br label %bb.lf

bb.lf:                                            ; preds = %._crit_edge.i125.i.i, %.lr.ph45.i114.i.i
  %indvars.iv.i116.i.i = phi i64 [ 1, %.lr.ph45.i114.i.i ], [ %indvars.iv.next.i127.i.i, %._crit_edge.i125.i.i ] ; 2 uses
  %.02144.i117.i.i = phi i32 [ 0, %.lr.ph45.i114.i.i ], [ %.1.lcssa.i126.i.i, %._crit_edge.i125.i.i ] ; 2 uses
  %i.axi = sub nsw i64 %i.axd, %indvars.iv.i116.i.i
  %i.axj = getelementptr inbounds [32 x i8], ptr %i.axg, i64 %i.axi
  %i.axk = load ptr, ptr %i.axj, align 8, !tbaa !51 ; 2 uses
  %i.axl = load i8, ptr %i.axk, align 1, !tbaa !40 ; 2 uses
  %.not3239.i118.i.i = icmp eq i8 %i.axl, 0
  br i1 %.not3239.i118.i.i, label %._crit_edge.i125.i.i, label %.lr.ph.i119.i.i

.lr.ph.i119.i.i:                                  ; preds = %bb.lf, %bb.lh
  %i.axm = phi i8 [ %i.axu, %bb.lh ], [ %i.axl, %bb.lf ]
  %.041.i120.i.i = phi ptr [ %i.axt, %bb.lh ], [ %i.axk, %bb.lf ]
  %.140.i121.i.i = phi i32 [ %.2.i123.i.i, %bb.lh ], [ %.02144.i117.i.i, %bb.lf ] ; 3 uses
  %i.axn = zext i8 %i.axm to i64
  %i.axo = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.axn
  %i.axp = load i8, ptr %i.axo, align 1, !tbaa !40
  %i.axq = and i8 %i.axp, 6
  %.not33.i122.i.i = icmp eq i8 %i.axq, 0
  br i1 %.not33.i122.i.i, label %bb.lh, label %bb.lg

bb.lg:                                            ; preds = %.lr.ph.i119.i.i
  %i.axr = add nsw i32 %.140.i121.i.i, 1
  %i.axs = icmp sgt i32 %.140.i121.i.i, 18
  br i1 %i.axs, label %mark_color_as_moved.exit.i, label %bb.lh

bb.lh:                                            ; preds = %bb.lg, %.lr.ph.i119.i.i
  %.2.i123.i.i = phi i32 [ %i.axr, %bb.lg ], [ %.140.i121.i.i, %.lr.ph.i119.i.i ] ; 2 uses
  %i.axt = getelementptr inbounds nuw i8, ptr %.041.i120.i.i, i64 1 ; 2 uses
  %i.axu = load i8, ptr %i.axt, align 1, !tbaa !40 ; 2 uses
  %.not32.i124.i.i = icmp eq i8 %i.axu, 0
  br i1 %.not32.i124.i.i, label %._crit_edge.i125.i.i, label %.lr.ph.i119.i.i, !llvm.loop !354

._crit_edge.i125.i.i:                             ; preds = %bb.lh, %bb.lf
  %.1.lcssa.i126.i.i = phi i32 [ %.02144.i117.i.i, %bb.lf ], [ %.2.i123.i.i, %bb.lh ]
  %indvars.iv.next.i127.i.i = add nuw nsw i64 %indvars.iv.i116.i.i, 1 ; 2 uses
  %exitcond.not.i128.i.i = icmp eq i64 %indvars.iv.next.i127.i.i, %wide.trip.count.i115.i.i
  br i1 %exitcond.not.i128.i.i, label %.preheader.i129.i.i.preheader, label %bb.lf, !llvm.loop !355

.preheader.i129.i.i.preheader:                    ; preds = %._crit_edge.i125.i.i
  %i.axv = zext nneg i32 %.4.i49.i to i64         ; 2 uses
  %xtraiter504 = and i64 %i.axv, 3                ; 3 uses
  %i.axw = add nsw i32 %.4.i49.i, -1
  %i.axx = icmp ult i32 %i.axw, 3
  br i1 %i.axx, label %.preheader.i129.i.i.epil.preheader, label %.preheader.i129.i.i.preheader.new

.preheader.i129.i.i.preheader.new:                ; preds = %.preheader.i129.i.i.preheader
  %unroll_iter508 = and i64 %i.axv, 2147483644
  %invariant.gep547 = getelementptr [32 x i8], ptr %i.axg, i64 %i.axd
  br label %.preheader.i129.i.i

.preheader.i129.i.i:                              ; preds = %.preheader.i129.i.i, %.preheader.i129.i.i.preheader.new
  %indvars.iv51.i131.i.i = phi i64 [ 1, %.preheader.i129.i.i.preheader.new ], [ %indvars.iv.next52.i132.i.i.3, %.preheader.i129.i.i ] ; 5 uses
  %niter509 = phi i64 [ 0, %.preheader.i129.i.i.preheader.new ], [ %niter509.next.3, %.preheader.i129.i.i ]
  %i.axy = sub nsw i64 %i.axd, %indvars.iv51.i131.i.i
  %i.axz = getelementptr inbounds [32 x i8], ptr %i.axg, i64 %i.axy
  %i.aya = getelementptr inbounds nuw i8, ptr %i.axz, i64 12 ; 2 uses
  %i.ayb = load i32, ptr %i.aya, align 4, !tbaa !54
  %i.ayc = and i32 %i.ayb, -3145729
  store i32 %i.ayc, ptr %i.aya, align 4, !tbaa !54
  %indvars.iv.next52.i132.i.i.neg = xor i64 %indvars.iv51.i131.i.i, -1
  %gep548 = getelementptr [32 x i8], ptr %invariant.gep547, i64 %indvars.iv.next52.i132.i.i.neg
  %i.ayd = getelementptr inbounds nuw i8, ptr %gep548, i64 12 ; 2 uses
  %i.aye = load i32, ptr %i.ayd, align 4, !tbaa !54
  %i.ayf = and i32 %i.aye, -3145729
  store i32 %i.ayf, ptr %i.ayd, align 4, !tbaa !54
  %indvars.iv.next52.i132.i.i.1 = add nuw nsw i64 %indvars.iv51.i131.i.i, 2
  %i.ayg = sub nsw i64 %i.axd, %indvars.iv.next52.i132.i.i.1
  %i.ayh = getelementptr inbounds [32 x i8], ptr %i.axg, i64 %i.ayg
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.ayh, i64 12 ; 2 uses
  %i.ayj = load i32, ptr %i.ayi, align 4, !tbaa !54
  %i.ayk = and i32 %i.ayj, -3145729
  store i32 %i.ayk, ptr %i.ayi, align 4, !tbaa !54
  %indvars.iv.next52.i132.i.i.2 = add nuw nsw i64 %indvars.iv51.i131.i.i, 3
  %i.ayl = sub nsw i64 %i.axd, %indvars.iv.next52.i132.i.i.2
  %i.aym = getelementptr inbounds [32 x i8], ptr %i.axg, i64 %i.ayl
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.aym, i64 12 ; 2 uses
  %i.ayo = load i32, ptr %i.ayn, align 4, !tbaa !54
  %i.ayp = and i32 %i.ayo, -3145729
  store i32 %i.ayp, ptr %i.ayn, align 4, !tbaa !54
  %indvars.iv.next52.i132.i.i.3 = add nuw nsw i64 %indvars.iv51.i131.i.i, 4 ; 2 uses
  %niter509.next.3 = add nuw i64 %niter509, 4     ; 2 uses
  %niter509.ncmp.3 = icmp eq i64 %niter509.next.3, %unroll_iter508
  br i1 %niter509.ncmp.3, label %mark_color_as_moved.exit.i.loopexit.unr-lcssa, label %.preheader.i129.i.i, !llvm.loop !356

mark_color_as_moved.exit.i.loopexit.unr-lcssa:    ; preds = %.preheader.i129.i.i
  %lcmp.mod506.not = icmp eq i64 %xtraiter504, 0
  br i1 %lcmp.mod506.not, label %mark_color_as_moved.exit.i, label %.preheader.i129.i.i.epil.preheader

.preheader.i129.i.i.epil.preheader:               ; preds = %mark_color_as_moved.exit.i.loopexit.unr-lcssa, %.preheader.i129.i.i.preheader
  %indvars.iv51.i131.i.i.epil.init = phi i64 [ 1, %.preheader.i129.i.i.preheader ], [ %indvars.iv.next52.i132.i.i.3, %mark_color_as_moved.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod507 = icmp ne i64 %xtraiter504, 0
  call void @llvm.assume(i1 %lcmp.mod507)
  br label %.preheader.i129.i.i.epil

.preheader.i129.i.i.epil:                         ; preds = %.preheader.i129.i.i.epil, %.preheader.i129.i.i.epil.preheader
  %indvars.iv51.i131.i.i.epil = phi i64 [ %indvars.iv.next52.i132.i.i.epil, %.preheader.i129.i.i.epil ], [ %indvars.iv51.i131.i.i.epil.init, %.preheader.i129.i.i.epil.preheader ] ; 2 uses
  %epil.iter505 = phi i64 [ %epil.iter505.next, %.preheader.i129.i.i.epil ], [ 0, %.preheader.i129.i.i.epil.preheader ]
  %i.ayq = sub nsw i64 %i.axd, %indvars.iv51.i131.i.i.epil
  %i.ayr = getelementptr inbounds [32 x i8], ptr %i.axg, i64 %i.ayq
end_hunk_1
