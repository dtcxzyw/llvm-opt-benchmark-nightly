Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/diff?download=true
inline.NumInlined: 585
inline.NumDeleted: 138
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 24
begin_hunk_0_@diff_flush:bb.a
  %i.vk = and i8 %i.vi, 8
  %.not265.i = icmp eq i8 %i.vk, 0
  %i.vl = sub i64 0, %i.vg
  %i.vm = icmp eq i64 %i.ve, %i.vl
  %or.cond286.i = select i1 %.not265.i, i1 %i.vm, i1 false
  br i1 %or.cond286.i, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %i.vn = add nsw i32 %.0224347.i, -1
  br label %bb.fj

bb.fg:                                            ; preds = %bb.fe
  %i.vo = and i8 %i.vi, 2
  %.not266.i = icmp eq i8 %i.vo, 0                ; 2 uses
  %i.vp = trunc i64 %i.ve to i32
  %i.vq = trunc i64 %i.vg to i32
  %i.vr = select i1 %.not266.i, i32 %i.vp, i32 0
  %.1236.i = add i32 %i.vr, %.0235345.i           ; 3 uses
  %i.vs = select i1 %.not266.i, i32 %i.vq, i32 0
  %.1233.i = add i32 %i.vs, %.0232346.i           ; 3 uses
  %i.vt = icmp samesign ult i64 %indvars.iv360.i, %i.qz
  br i1 %i.vt, label %bb.fj, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %.not267.i = icmp eq i32 %.0210348.i, 0
  br i1 %.not267.i, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  call fastcc void @emit_diff_symbol(ptr noundef %0, i32 noundef 6, ptr noundef null, i32 noundef 0, i32 noundef 0)
  %.pre365.i = load i32, ptr %24, align 8, !tbaa !73
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh, %bb.fg, %bb.ff
  %i.vu = phi i32 [ %i.uz, %bb.ff ], [ %i.uz, %bb.fg ], [ %.pre365.i, %bb.fi ], [ %i.uz, %bb.fh ] ; 2 uses
  %.2237.i = phi i32 [ %.0235345.i, %bb.ff ], [ %.1236.i, %bb.fg ], [ %.1236.i, %bb.fi ], [ %.1236.i, %bb.fh ] ; 2 uses
  %.2234.i = phi i32 [ %.0232346.i, %bb.ff ], [ %.1233.i, %bb.fg ], [ %.1233.i, %bb.fi ], [ %.1233.i, %bb.fh ] ; 2 uses
  %.1225.i = phi i32 [ %i.vn, %bb.ff ], [ %.0224347.i, %bb.fg ], [ %.0224347.i, %bb.fi ], [ %.0224347.i, %bb.fh ] ; 2 uses
  %.1211.i = phi i32 [ %.0210348.i, %bb.ff ], [ %.0210348.i, %bb.fg ], [ 1, %bb.fi ], [ 1, %bb.fh ]
  %indvars.iv.next361.i = add nuw nsw i64 %indvars.iv360.i, 1 ; 2 uses
  %i.vv = sext i32 %i.vu to i64
  %i.vw = icmp slt i64 %indvars.iv.next361.i, %i.vv
  br i1 %i.vw, label %bb.fd, label %._crit_edge.i, !llvm.loop !403

._crit_edge.i:                                    ; preds = %bb.fj, %.preheader.i
  %.0235.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %.2237.i, %bb.fj ]
  %.0232.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %.2234.i, %bb.fj ]
  %.0224.lcssa.i = phi i32 [ %i.mg, %.preheader.i ], [ %.1225.i, %bb.fj ]
  call fastcc void @print_stat_summary_inserts_deletes(ptr noundef %0, i32 noundef %.0224.lcssa.i, i32 noundef %.0235.lcssa.i, i32 noundef %.0232.lcssa.i)
  call void @strbuf_release(ptr noundef nonnull %16) #33
  %.pre293.pre297.pre.pre = load i32, ptr %24, align 8, !tbaa !73
  br label %show_stats.exit

show_stats.exit:                                  ; preds = %diff_line_prefix.exit.i114, %._crit_edge.i
  %.pre293.pre297.pre = phi i32 [ 0, %diff_line_prefix.exit.i114 ], [ %.pre293.pre297.pre.pre, %._crit_edge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33
  br label %bb.fk

bb.fk:                                            ; preds = %show_stats.exit, %show_numstat.exit
  %.pre293.pre297 = phi i32 [ %.pre293.pre297.pre, %show_stats.exit ], [ %i.mg, %show_numstat.exit ] ; 6 uses
  %i.vx = and i32 %i.e, 32
  %.not88 = icmp eq i32 %i.vx, 0
  br i1 %.not88, label %show_shortstats.exit, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.vy = getelementptr inbounds nuw i8, ptr %24, i64 8
  %.val107 = load ptr, ptr %i.vy, align 8
  %i.vz = icmp eq i32 %.pre293.pre297, 0
  br i1 %i.vz, label %show_shortstats.exit.thread, label %.preheader.i125

.preheader.i125:                                  ; preds = %bb.fl
  %i.wa = icmp sgt i32 %.pre293.pre297, 0
  br i1 %i.wa, label %.lr.ph.preheader.i, label %._crit_edge.i126

.lr.ph.preheader.i:                               ; preds = %.preheader.i125
  %wide.trip.count.i127 = zext nneg i32 %.pre293.pre297 to i64
  br label %.lr.ph.i128

.lr.ph.i128:                                      ; preds = %bb.fq, %.lr.ph.preheader.i
  %indvars.iv.i129 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i131, %bb.fq ] ; 2 uses
  %.04.i = phi i32 [ %.pre293.pre297, %.lr.ph.preheader.i ], [ %.1.i, %bb.fq ] ; 3 uses
  %.0253.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.126.i, %bb.fq ] ; 3 uses
  %.0272.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.128.i, %bb.fq ] ; 3 uses
  %i.wb = getelementptr inbounds nuw [8 x i8], ptr %.val107, i64 %indvars.iv.i129
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !76 ; 3 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 40
  %i.we = load i64, ptr %i.wd, align 8, !tbaa !243
  %i.wf = trunc i64 %i.we to i32                  ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wc, i64 48
  %i.wh = load i64, ptr %i.wg, align 8, !tbaa !244
  %i.wi = trunc i64 %i.wh to i32                  ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wc, i64 32
  %i.wk = load i8, ptr %i.wj, align 8             ; 3 uses
  %i.wl = and i8 %i.wk, 1
  %.not.i130 = icmp eq i8 %i.wl, 0
  br i1 %.not.i130, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %.lr.ph.i128
  %i.wm = and i8 %i.wk, 8
  %.not31.i = icmp eq i8 %i.wm, 0
  %i.wn = sub i32 0, %i.wi
  %i.wo = icmp eq i32 %i.wf, %i.wn
  %or.cond.i133 = select i1 %.not31.i, i1 %i.wo, i1 false
  br i1 %or.cond.i133, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm, %.lr.ph.i128
  %i.wp = add nsw i32 %.04.i, -1
  br label %bb.fq

bb.fo:                                            ; preds = %bb.fm
  %i.wq = and i8 %i.wk, 2
  %.not32.i = icmp eq i8 %i.wq, 0
  br i1 %.not32.i, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.wr = add nsw i32 %.0272.i, %i.wf
  %i.ws = add nsw i32 %.0253.i, %i.wi
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo, %bb.fn
  %.128.i = phi i32 [ %.0272.i, %bb.fn ], [ %.0272.i, %bb.fo ], [ %i.wr, %bb.fp ] ; 2 uses
  %.126.i = phi i32 [ %.0253.i, %bb.fn ], [ %.0253.i, %bb.fo ], [ %i.ws, %bb.fp ] ; 2 uses
  %.1.i = phi i32 [ %i.wp, %bb.fn ], [ %.04.i, %bb.fo ], [ %.04.i, %bb.fp ] ; 2 uses
  %indvars.iv.next.i131 = add nuw nsw i64 %indvars.iv.i129, 1 ; 2 uses
  %exitcond.not.i132 = icmp eq i64 %indvars.iv.next.i131, %wide.trip.count.i127
  br i1 %exitcond.not.i132, label %._crit_edge.i126, label %.lr.ph.i128, !llvm.loop !404

._crit_edge.i126:                                 ; preds = %bb.fq, %.preheader.i125
  %.027.lcssa.i = phi i32 [ 0, %.preheader.i125 ], [ %.128.i, %bb.fq ]
  %.025.lcssa.i = phi i32 [ 0, %.preheader.i125 ], [ %.126.i, %bb.fq ]
  %.0.lcssa.i = phi i32 [ %.pre293.pre297, %.preheader.i125 ], [ %.1.i, %bb.fq ]
  call fastcc void @print_stat_summary_inserts_deletes(ptr noundef %0, i32 noundef %.0.lcssa.i, i32 noundef %.027.lcssa.i, i32 noundef %.025.lcssa.i)
  %.pre293.pre = load i32, ptr %24, align 8, !tbaa !73
  br label %show_shortstats.exit

show_shortstats.exit:                             ; preds = %._crit_edge.i126, %bb.fk
  %.pre293 = phi i32 [ %.pre293.pre, %._crit_edge.i126 ], [ %.pre293.pre297, %bb.fk ] ; 4 uses
  %or.cond3 = and i1 %i.jp, %i.js
  br i1 %or.cond3, label %bb.fr, label %bb.fx

show_shortstats.exit.thread:                      ; preds = %bb.fl
  %or.cond3377 = and i1 %i.jp, %i.js
  br i1 %or.cond3377, label %.thread379, label %free_diffstat_info.exit

.thread379:                                       ; preds = %show_shortstats.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  br label %show_dirstat_by_line.exit

bb.fr:                                            ; preds = %show_shortstats.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  %i.wt = icmp eq i32 %.pre293, 0
  br i1 %i.wt, label %show_dirstat_by_line.exit, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.wu = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.wv = getelementptr inbounds nuw i8, ptr %14, i64 12
  %i.ww = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.wx = load i32, ptr %i.ww, align 8, !tbaa !45
  %i.wy = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 %i.wx, ptr %i.wy, align 8, !tbaa !248
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !51
  %i.xb = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 %i.xa, ptr %i.xb, align 4, !tbaa !249
  %i.xc = icmp sgt i32 %.pre293, 0
  br i1 %i.xc, label %.lr.ph.i134, label %conclude_dirstat.exit.i

.lr.ph.i134:                                      ; preds = %bb.fs
  %i.xd = getelementptr inbounds nuw i8, ptr %24, i64 8
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fu, %.lr.ph.i134
  %i.xe = phi i32 [ %.pre293, %.lr.ph.i134 ], [ %i.ya, %bb.fu ]
  %indvars.iv47.i = phi i64 [ 0, %.lr.ph.i134 ], [ %indvars.iv.next48.i, %bb.fu ] ; 5 uses
  %.01735.i = phi i64 [ 0, %.lr.ph.i134 ], [ %i.yg, %bb.fu ]
  %.2933.i = phi i32 [ 0, %.lr.ph.i134 ], [ %.28.i, %bb.fu ] ; 3 uses
  %i.xf = phi ptr [ null, %.lr.ph.i134 ], [ %i.yb, %bb.fu ] ; 2 uses
  %i.xg = load ptr, ptr %i.xd, align 8, !tbaa !74
  %i.xh = getelementptr inbounds nuw [8 x i8], ptr %i.xg, i64 %indvars.iv47.i
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !76 ; 4 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 40
  %i.xk = load i64, ptr %i.xj, align 8, !tbaa !243
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xi, i64 48
  %i.xm = load i64, ptr %i.xl, align 8, !tbaa !244
  %i.xn = add i64 %i.xm, %i.xk                    ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xi, i64 32
  %i.xp = load i8, ptr %i.xo, align 8
  %i.xq = and i8 %i.xp, 2
  %.not.i136 = icmp eq i8 %i.xq, 0
  %i.xr = add i64 %i.xn, 63
  %i.xs = lshr i64 %i.xr, 6
  %.0.i137 = select i1 %.not.i136, i64 %i.xn, i64 %i.xs ; 2 uses
  %indvars.iv.next48.i = add nuw nsw i64 %indvars.iv47.i, 1 ; 5 uses
  %i.xt = sext i32 %.2933.i to i64
  %.not22.i = icmp slt i64 %indvars.iv47.i, %i.xt
  br i1 %.not22.i, label %bb.fu, label %st_mult.exit.i

st_mult.exit.i:                                   ; preds = %bb.ft
  %i.xu = mul i32 %.2933.i, 3
  %i.xv = add i32 %i.xu, 48
  %i.xw = sdiv i32 %i.xv, 2
  %i.xx = trunc nsw i64 %indvars.iv.next48.i to i32
  %..i138 = call i32 @llvm.smax.i32(i32 %i.xw, i32 %i.xx) ; 2 uses
  %25 = sext i32 %..i138 to i64
  %i.xy = shl nuw nsw i64 %25, 4
  %i.xz = call ptr @xrealloc(ptr noundef %i.xf, i64 noundef %i.xy) #33
  %.pre.i139 = load i32, ptr %24, align 8, !tbaa !73
  br label %bb.fu

bb.fu:                                            ; preds = %st_mult.exit.i, %bb.ft
  %i.ya = phi i32 [ %.pre.i139, %st_mult.exit.i ], [ %i.xe, %bb.ft ] ; 2 uses
  %i.yb = phi ptr [ %i.xz, %st_mult.exit.i ], [ %i.xf, %bb.ft ] ; 6 uses
  %.28.i = phi i32 [ %..i138, %st_mult.exit.i ], [ %.2933.i, %bb.ft ] ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xi, i64 8
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !79
  %i.ye = getelementptr inbounds nuw [16 x i8], ptr %i.yb, i64 %indvars.iv47.i ; 2 uses
  store ptr %i.yd, ptr %i.ye, align 8, !tbaa !251
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 8
  store i64 %.0.i137, ptr %i.yf, align 8, !tbaa !252
  %i.yg = add i64 %.0.i137, %.01735.i             ; 3 uses
  %i.yh = sext i32 %i.ya to i64
  %i.yi = icmp slt i64 %indvars.iv.next48.i, %i.yh
  br i1 %i.yi, label %bb.ft, label %._crit_edge.i141, !llvm.loop !405

._crit_edge.i141:                                 ; preds = %bb.fu
  %i.yj = trunc nsw i64 %indvars.iv.next48.i to i32
  store i32 %i.yj, ptr %i.wv, align 4
  store i32 %.28.i, ptr %i.wu, align 8
  store ptr %i.yb, ptr %14, align 8
  %.not.i.i142 = icmp eq i64 %i.yg, 0
  br i1 %.not.i.i142, label %conclude_dirstat.exit.i, label %bb.fv

bb.fv:                                            ; preds = %._crit_edge.i141
  %.not62.i = icmp eq i64 %indvars.iv47.i, 0
  br i1 %.not62.i, label %sane_qsort.exit.i.i, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  call void @qsort(ptr noundef nonnull %i.yb, i64 noundef range(i64 -2147483648, 2147483648) %indvars.iv.next48.i, i64 noundef 16, ptr noundef nonnull @dirstat_compare) #33
  br label %sane_qsort.exit.i.i

sane_qsort.exit.i.i:                              ; preds = %bb.fw, %bb.fv
  %i.yk = call fastcc i64 @gather_dirstat(ptr noundef %0, ptr noundef nonnull %14, i64 noundef %i.yg, ptr noundef nonnull @.str.41, i32 noundef 0) ; 0 uses
  br label %conclude_dirstat.exit.i

conclude_dirstat.exit.i:                          ; preds = %sane_qsort.exit.i.i, %._crit_edge.i141, %bb.fs
  %.lcssa3158.i = phi ptr [ %i.yb, %sane_qsort.exit.i.i ], [ %i.yb, %._crit_edge.i141 ], [ null, %bb.fs ]
  call void @free(ptr noundef %.lcssa3158.i) #33
  %.pre.pre = load i32, ptr %24, align 8, !tbaa !73
  br label %show_dirstat_by_line.exit

show_dirstat_by_line.exit:                        ; preds = %.thread379, %bb.fr, %conclude_dirstat.exit.i
  %.pre = phi i32 [ 0, %bb.fr ], [ %.pre.pre, %conclude_dirstat.exit.i ], [ 0, %.thread379 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  br label %bb.fx

bb.fx:                                            ; preds = %show_dirstat_by_line.exit, %show_shortstats.exit
  %i.yl = phi i32 [ %.pre, %show_dirstat_by_line.exit ], [ %.pre293, %show_shortstats.exit ]
  %i.ym = icmp sgt i32 %i.yl, 0
  br i1 %i.ym, label %.lr.ph.i144, label %free_diffstat_info.exit

.lr.ph.i144:                                      ; preds = %bb.fx
  %i.yn = getelementptr inbounds nuw i8, ptr %24, i64 8
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fy, %.lr.ph.i144
  %indvars.iv.i145 = phi i64 [ 0, %.lr.ph.i144 ], [ %indvars.iv.next.i146, %bb.fy ] ; 2 uses
  %i.yo = load ptr, ptr %i.yn, align 8, !tbaa !74
  %i.yp = getelementptr inbounds nuw [8 x i8], ptr %i.yo, i64 %indvars.iv.i145
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !76 ; 4 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 16
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !78
  call void @free(ptr noundef %i.ys) #33
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yq, i64 8
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !79
  call void @free(ptr noundef %i.yu) #33
  %i.yv = load ptr, ptr %i.yq, align 8, !tbaa !80
  call void @free(ptr noundef %i.yv) #33
  call void @free(ptr noundef %i.yq) #33
  %indvars.iv.next.i146 = add nuw nsw i64 %indvars.iv.i145, 1 ; 2 uses
  %i.yw = load i32, ptr %24, align 8, !tbaa !73
  %i.yx = sext i32 %i.yw to i64
  %i.yy = icmp slt i64 %indvars.iv.next.i146, %i.yx
  br i1 %i.yy, label %bb.fy, label %free_diffstat_info.exit, !llvm.loop !0

free_diffstat_info.exit:                          ; preds = %bb.fy, %show_shortstats.exit.thread, %bb.fx
  %i.yz = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.za = load ptr, ptr %i.yz, align 8, !tbaa !74
  call void @free(ptr noundef %i.za) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #33
  br label %bb.fz

bb.fz:                                            ; preds = %bb.cb, %free_diffstat_info.exit
  %.1 = phi i32 [ 1, %free_diffstat_info.exit ], [ %.079, %bb.cb ]
  %i.zb = icmp eq i32 %i.jo, 0
  %or.cond5 = or i1 %i.zb, %i.js
  br i1 %or.cond5, label %bb.hr, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  %i.zc = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.zd = getelementptr inbounds nuw i8, ptr %12, i64 12
  %i.ze = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %i.zf = load i32, ptr %i.ze, align 8, !tbaa !45
  %i.zg = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 %i.zf, ptr %i.zg, align 8, !tbaa !248
  %i.zh = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.zi = load i32, ptr %i.zh, align 4, !tbaa !51
  %i.zj = getelementptr inbounds nuw i8, ptr %12, i64 20
  store i32 %i.zi, ptr %i.zj, align 4, !tbaa !249
  %i.zk = load i32, ptr getelementptr inbounds nuw (i8, ptr @diff_queued_diff, i64 12), align 4, !tbaa !203 ; 2 uses
  %i.zl = icmp sgt i32 %i.zk, 0
  br i1 %i.zl, label %.lr.ph.i148, label %show_dirstat.exit

.lr.ph.i148:                                      ; preds = %bb.ga
  %i.zm = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.zn = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 4 uses
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ho, %.lr.ph.i148
  %i.zo = phi i32 [ %i.zk, %.lr.ph.i148 ], [ %i.aeq, %bb.ho ]
  %indvars.iv.i149 = phi i64 [ 0, %.lr.ph.i148 ], [ %indvars.iv.next.i157, %bb.ho ] ; 2 uses
  %.04291.i = phi i64 [ 0, %.lr.ph.i148 ], [ %.1.i156, %bb.ho ] ; 2 uses
  %i.zp = phi i32 [ 0, %.lr.ph.i148 ], [ %i.aes, %bb.ho ] ; 4 uses
  %.8589.i = phi i32 [ 0, %.lr.ph.i148 ], [ %.83.i, %bb.ho ] ; 4 uses
  %i.zq = phi ptr [ null, %.lr.ph.i148 ], [ %i.aer, %bb.ho ] ; 3 uses
  %i.zr = load ptr, ptr @diff_queued_diff, align 8, !tbaa !205
  %i.zs = getelementptr inbounds nuw [8 x i8], ptr %i.zr, i64 %indvars.iv.i149
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !207 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) @__const.diff_filespec_size.dpf_options, i64 24, i1 false)
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 8 ; 5 uses
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !212 ; 6 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 40
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !107 ; 2 uses
  %.not.i150 = icmp eq ptr %i.zx, null
  %.pre.i151 = load ptr, ptr %i.zt, align 8, !tbaa !211 ; 7 uses
  br i1 %.not.i150, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.zy = getelementptr inbounds nuw i8, ptr %.pre.i151, i64 40
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !107
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  %i.aaa = phi ptr [ %i.zz, %bb.gc ], [ %i.zx, %bb.gb ]
  %i.aab = getelementptr inbounds nuw i8, ptr %.pre.i151, i64 82
  %i.aac = load i16, ptr %i.aab, align 2
  %i.aad = and i16 %i.aac, 1
  %.not48.i = icmp eq i16 %i.aad, 0
  br i1 %.not48.i, label %bb.gg, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zv, i64 82
  %i.aaf = load i16, ptr %i.aae, align 2
  %i.aag = and i16 %i.aaf, 1
  %.not49.i = icmp eq i16 %i.aag, 0
  br i1 %.not49.i, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.aah = load i128, ptr %.pre.i151, align 1
  %i.aai = load i128, ptr %i.zv, align 1
  %i.aaj = xor i128 %i.aah, %i.aai
  %i.aak = getelementptr i8, ptr %.pre.i151, i64 16
  %i.aal = getelementptr i8, ptr %i.zv, i64 16
  %i.aam = load i128, ptr %i.aak, align 1
  %i.aan = load i128, ptr %i.aal, align 1
  %i.aao = xor i128 %i.aam, %i.aan
  %i.aap = or i128 %i.aaj, %i.aao
  %i.aaq = icmp ne i128 %i.aap, 0
  %i.aar = zext i1 %i.aaq to i32
  %.not.i.not.i = icmp eq i32 %i.aar, 0
  br i1 %.not.i.not.i, label %bb.hk, label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge, %bb.gd
  %i.aas = load i32, ptr %i.zm, align 8, !tbaa !50
  %.not51.i = icmp eq i32 %i.aas, 0
  br i1 %.not51.i, label %bb.gh, label %bb.hk

bb.gh:                                            ; preds = %bb.gg
  %i.aat = getelementptr inbounds nuw i8, ptr %.pre.i151, i64 80
  %i.aau = load i16, ptr %i.aat, align 8, !tbaa !106
  %.not52.i = icmp eq i16 %i.aau, 0
  %i.aav = getelementptr inbounds nuw i8, ptr %i.zv, i64 80
  %i.aaw = load i16, ptr %i.aav, align 8, !tbaa !106
  %.not55.i = icmp eq i16 %i.aaw, 0               ; 2 uses
  br i1 %.not52.i, label %bb.hd, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.aax = load ptr, ptr %i.zn, align 8, !tbaa !131 ; 2 uses
  br i1 %.not55.i, label %bb.gw, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.aay = call i32 @diff_populate_filespec(ptr noundef %i.aax, ptr noundef nonnull %.pre.i151, ptr noundef null) ; 0 uses
  %i.aaz = load ptr, ptr %i.zn, align 8, !tbaa !131
  %i.aba = load ptr, ptr %i.zu, align 8, !tbaa !212
  %i.abb = call i32 @diff_populate_filespec(ptr noundef %i.aaz, ptr noundef %i.aba, ptr noundef null) ; 0 uses
  %i.abc = load ptr, ptr %i.zn, align 8, !tbaa !131
  %i.abd = load ptr, ptr %i.zt, align 8, !tbaa !211
  %i.abe = load ptr, ptr %i.zu, align 8, !tbaa !212
  %i.abf = call i32 @diffcore_count_changes(ptr noundef %i.abc, ptr noundef %i.abd, ptr noundef %i.abe, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #33 ; 0 uses
  %i.abg = load ptr, ptr %i.zt, align 8, !tbaa !211 ; 7 uses
  %.not.i59.i = icmp eq ptr %i.abg, null
  br i1 %.not.i59.i, label %diff_free_filespec_data.exit.i, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 82 ; 3 uses
  %i.abi = load i16, ptr %i.abh, align 2          ; 2 uses
  %i.abj = and i16 %i.abi, 2
  %.not.i.i.i160 = icmp eq i16 %i.abj, 0
  br i1 %.not.i.i.i160, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abg, i64 48
  %i.abl = load ptr, ptr %i.abk, align 8, !tbaa !112
  call void @free(ptr noundef %i.abl) #33
  br label %bb.go

bb.gm:                                            ; preds = %bb.gk
  %i.abm = and i16 %i.abi, 4
  %.not10.i.i.i = icmp eq i16 %i.abm, 0
  br i1 %.not10.i.i.i, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
end_hunk_0
begin_hunk_1_@diff_flush:bb.a

cmp_in_block_with_wsd.exit.thread.i.i.i:          ; preds = %bb.kp
  store i32 %i.atq, ptr %i.atr, align 8, !tbaa !445
  br label %.critedge.i.i56.i

bb.kq:                                            ; preds = %bb.kl
  br i1 %.not34.i.i.i, label %.thread46.i.i.i, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.kq
  %i.atu = load ptr, ptr %i.atk, align 8, !tbaa !435
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atu, i64 24
  %i.atw = load i32, ptr %i.atv, align 8, !tbaa !58
  %i.atx = load i32, ptr %i.atf, align 8, !tbaa !58
  %.not57.i.i.i = icmp eq i32 %i.atw, %i.atx
  br i1 %.not57.i.i.i, label %.critedge.i.i56.i, label %.thread46.i.i.i

cmp_in_block_with_wsd.exit.i.i.i:                 ; preds = %bb.kp
  %.not56.i.i.i = icmp eq i32 %i.atq, %i.ats
  br i1 %.not56.i.i.i, label %.critedge.i.i56.i, label %.thread46.i.i.i

.critedge.i.i56.i:                                ; preds = %cmp_in_block_with_wsd.exit.i.i.i, %.split.i.i.i, %cmp_in_block_with_wsd.exit.thread.i.i.i, %bb.ko
  %i.aty = sext i32 %.02650.i.i.i to i64
  %i.atz = getelementptr inbounds [16 x i8], ptr %.0154252.i.i, i64 %i.aty ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.atz, ptr noundef nonnull align 8 dereferenceable(16) %i.ath, i64 16, i1 false), !tbaa.struct !446
  %i.aua = add nsw i32 %.02650.i.i.i, 1
  store ptr %i.atk, ptr %i.atz, align 8, !tbaa !444
  br label %.thread46.i.i.i

.thread46.i.i.i:                                  ; preds = %.critedge.i.i56.i, %cmp_in_block_with_wsd.exit.i.i.i, %.split.i.i.i, %bb.kq, %bb.kn, %bb.km, %bb.kk
  %.1.i.i54.i = phi i32 [ %i.aua, %.critedge.i.i56.i ], [ %.02650.i.i.i, %cmp_in_block_with_wsd.exit.i.i.i ], [ %.02650.i.i.i, %bb.km ], [ %.02650.i.i.i, %bb.kq ], [ %.02650.i.i.i, %bb.kk ], [ %.02650.i.i.i, %bb.kn ], [ %.02650.i.i.i, %.split.i.i.i ] ; 3 uses
  %indvars.iv.next.i81.i.i = add nuw nsw i64 %indvars.iv.i79.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i81.i.i, %i.atg
  br i1 %exitcond.not.i.i, label %pmb_advance_or_null.exit.i.i, label %bb.kk, !llvm.loop !420

pmb_advance_or_null.exit.i.i:                     ; preds = %.thread46.i.i.i
  %i.aub = icmp eq i32 %.1.i.i54.i, 0
  br i1 %i.aub, label %bb.kr, label %.thread211.i.i

bb.kr:                                            ; preds = %pmb_advance_or_null.exit.i.i
  %.pr.i55.i = load i32, ptr %i.ail, align 8, !tbaa !144
  %i.auc = icmp eq i32 %.pr.i55.i, 1
  br i1 %i.auc, label %adjust_last_block.exit105.i.i, label %.preheader37.i82.i.i

.preheader37.i82.i.i:                             ; preds = %bb.kr, %bb.kj, %.thread175.thread.i.i
  %.2186282301.i.i = phi ptr [ %.0.i35.i, %bb.kr ], [ %.0.i35.i, %bb.kj ], [ %.2.i46.i, %.thread175.thread.i.i ] ; 4 uses
  %.155185283298.i.i = phi i32 [ %.054257.i.i, %bb.kr ], [ %.054257.i.i, %bb.kj ], [ %.155.i.i, %.thread175.thread.i.i ] ; 6 uses
  %.260184285296.i.i = phi i32 [ %.058256.i.i, %bb.kr ], [ %.058256.i.i, %bb.kj ], [ %.260.i45.i, %.thread175.thread.i.i ] ; 4 uses
  %.not42.i83.i.i = icmp slt i32 %.155185283298.i.i, 1
  br i1 %.not42.i83.i.i, label %adjust_last_block.exit105.thread.i.i, label %.lr.ph45.i84.i.i

.lr.ph45.i84.i.i:                                 ; preds = %.preheader37.i82.i.i
  %i.aud = load ptr, ptr %i.aml, align 8, !tbaa !60
  %i.aue = load ptr, ptr %i.aud, align 8, !tbaa !65 ; 6 uses
  %i.auf = add nuw i32 %.155185283298.i.i, 1
  %wide.trip.count.i85.i.i = zext i32 %i.auf to i64
  br label %bb.ks

bb.ks:                                            ; preds = %._crit_edge.i95.i.i, %.lr.ph45.i84.i.i
  %indvars.iv.i86.i.i = phi i64 [ 1, %.lr.ph45.i84.i.i ], [ %indvars.iv.next.i97.i.i, %._crit_edge.i95.i.i ] ; 2 uses
  %.02144.i87.i.i = phi i32 [ 0, %.lr.ph45.i84.i.i ], [ %.1.lcssa.i96.i.i, %._crit_edge.i95.i.i ] ; 2 uses
  %i.aug = sub nsw i64 %i.aqr, %indvars.iv.i86.i.i
  %i.auh = getelementptr inbounds [32 x i8], ptr %i.aue, i64 %i.aug
  %i.aui = load ptr, ptr %i.auh, align 8, !tbaa !53 ; 2 uses
  %i.auj = load i8, ptr %i.aui, align 1, !tbaa !44 ; 2 uses
  %.not3239.i88.i.i = icmp eq i8 %i.auj, 0
  br i1 %.not3239.i88.i.i, label %._crit_edge.i95.i.i, label %.lr.ph.i89.i.i

.lr.ph.i89.i.i:                                   ; preds = %bb.ks, %bb.ku
  %i.auk = phi i8 [ %i.aus, %bb.ku ], [ %i.auj, %bb.ks ]
  %.041.i90.i.i = phi ptr [ %i.aur, %bb.ku ], [ %i.aui, %bb.ks ]
  %.140.i91.i.i = phi i32 [ %.2.i93.i.i, %bb.ku ], [ %.02144.i87.i.i, %bb.ks ] ; 3 uses
  %i.aul = zext i8 %i.auk to i64
  %i.aum = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.aul
  %i.aun = load i8, ptr %i.aum, align 1, !tbaa !44
  %i.auo = and i8 %i.aun, 6
  %.not33.i92.i.i = icmp eq i8 %i.auo, 0
  br i1 %.not33.i92.i.i, label %bb.ku, label %bb.kt

bb.kt:                                            ; preds = %.lr.ph.i89.i.i
  %i.aup = add nsw i32 %.140.i91.i.i, 1
  %i.auq = icmp sgt i32 %.140.i91.i.i, 18
  br i1 %i.auq, label %adjust_last_block.exit105.thread.i.i, label %bb.ku

bb.ku:                                            ; preds = %bb.kt, %.lr.ph.i89.i.i
  %.2.i93.i.i = phi i32 [ %i.aup, %bb.kt ], [ %.140.i91.i.i, %.lr.ph.i89.i.i ] ; 2 uses
  %i.aur = getelementptr inbounds nuw i8, ptr %.041.i90.i.i, i64 1 ; 2 uses
  %i.aus = load i8, ptr %i.aur, align 1, !tbaa !44 ; 2 uses
  %.not32.i94.i.i = icmp eq i8 %i.aus, 0
  br i1 %.not32.i94.i.i, label %._crit_edge.i95.i.i, label %.lr.ph.i89.i.i, !llvm.loop !416

._crit_edge.i95.i.i:                              ; preds = %bb.ku, %bb.ks
  %.1.lcssa.i96.i.i = phi i32 [ %.02144.i87.i.i, %bb.ks ], [ %.2.i93.i.i, %bb.ku ]
  %indvars.iv.next.i97.i.i = add nuw nsw i64 %indvars.iv.i86.i.i, 1 ; 2 uses
  %exitcond.not.i98.i.i = icmp eq i64 %indvars.iv.next.i97.i.i, %wide.trip.count.i85.i.i
  br i1 %exitcond.not.i98.i.i, label %.preheader.i99.i.i.preheader, label %bb.ks, !llvm.loop !417

.preheader.i99.i.i.preheader:                     ; preds = %._crit_edge.i95.i.i
  %i.aut = zext nneg i32 %.155185283298.i.i to i64 ; 2 uses
  %xtraiter476 = and i64 %i.aut, 3                ; 3 uses
  %i.auu = icmp ult i32 %.155185283298.i.i, 4
  br i1 %i.auu, label %.preheader.i99.i.i.epil.preheader, label %.preheader.i99.i.i.preheader.new

.preheader.i99.i.i.preheader.new:                 ; preds = %.preheader.i99.i.i.preheader
  %unroll_iter480 = and i64 %i.aut, 2147483644
  %invariant.gep518 = getelementptr [32 x i8], ptr %i.aue, i64 %i.aqr
  br label %.preheader.i99.i.i

.preheader.i99.i.i:                               ; preds = %.preheader.i99.i.i, %.preheader.i99.i.i.preheader.new
  %indvars.iv51.i101.i.i = phi i64 [ 1, %.preheader.i99.i.i.preheader.new ], [ %indvars.iv.next52.i102.i.i.3, %.preheader.i99.i.i ] ; 5 uses
  %niter481 = phi i64 [ 0, %.preheader.i99.i.i.preheader.new ], [ %niter481.next.3, %.preheader.i99.i.i ]
  %i.auv = sub nsw i64 %i.aqr, %indvars.iv51.i101.i.i
  %i.auw = getelementptr inbounds [32 x i8], ptr %i.aue, i64 %i.auv
  %i.aux = getelementptr inbounds nuw i8, ptr %i.auw, i64 12 ; 2 uses
  %i.auy = load i32, ptr %i.aux, align 4, !tbaa !55
  %i.auz = and i32 %i.auy, -3145729
  store i32 %i.auz, ptr %i.aux, align 4, !tbaa !55
  %indvars.iv.next52.i102.i.i.neg = xor i64 %indvars.iv51.i101.i.i, -1
  %gep519 = getelementptr [32 x i8], ptr %invariant.gep518, i64 %indvars.iv.next52.i102.i.i.neg
  %i.ava = getelementptr inbounds nuw i8, ptr %gep519, i64 12 ; 2 uses
  %i.avb = load i32, ptr %i.ava, align 4, !tbaa !55
  %i.avc = and i32 %i.avb, -3145729
  store i32 %i.avc, ptr %i.ava, align 4, !tbaa !55
  %indvars.iv.next52.i102.i.i.1 = add nuw nsw i64 %indvars.iv51.i101.i.i, 2
  %i.avd = sub nsw i64 %i.aqr, %indvars.iv.next52.i102.i.i.1
  %i.ave = getelementptr inbounds [32 x i8], ptr %i.aue, i64 %i.avd
  %i.avf = getelementptr inbounds nuw i8, ptr %i.ave, i64 12 ; 2 uses
  %i.avg = load i32, ptr %i.avf, align 4, !tbaa !55
  %i.avh = and i32 %i.avg, -3145729
  store i32 %i.avh, ptr %i.avf, align 4, !tbaa !55
  %indvars.iv.next52.i102.i.i.2 = add nuw nsw i64 %indvars.iv51.i101.i.i, 3
  %i.avi = sub nsw i64 %i.aqr, %indvars.iv.next52.i102.i.i.2
  %i.avj = getelementptr inbounds [32 x i8], ptr %i.aue, i64 %i.avi
  %i.avk = getelementptr inbounds nuw i8, ptr %i.avj, i64 12 ; 2 uses
  %i.avl = load i32, ptr %i.avk, align 4, !tbaa !55
  %i.avm = and i32 %i.avl, -3145729
  store i32 %i.avm, ptr %i.avk, align 4, !tbaa !55
  %indvars.iv.next52.i102.i.i.3 = add nuw nsw i64 %indvars.iv51.i101.i.i, 4 ; 2 uses
  %niter481.next.3 = add nuw i64 %niter481, 4     ; 2 uses
  %niter481.ncmp.3 = icmp eq i64 %niter481.next.3, %unroll_iter480
  br i1 %niter481.ncmp.3, label %adjust_last_block.exit105.i.i.loopexit.unr-lcssa, label %.preheader.i99.i.i, !llvm.loop !418

adjust_last_block.exit105.i.i.loopexit.unr-lcssa: ; preds = %.preheader.i99.i.i
  %lcmp.mod478.not = icmp eq i64 %xtraiter476, 0
  br i1 %lcmp.mod478.not, label %adjust_last_block.exit105.i.i, label %.preheader.i99.i.i.epil.preheader

.preheader.i99.i.i.epil.preheader:                ; preds = %adjust_last_block.exit105.i.i.loopexit.unr-lcssa, %.preheader.i99.i.i.preheader
  %indvars.iv51.i101.i.i.epil.init = phi i64 [ 1, %.preheader.i99.i.i.preheader ], [ %indvars.iv.next52.i102.i.i.3, %adjust_last_block.exit105.i.i.loopexit.unr-lcssa ]
  %lcmp.mod479 = icmp ne i64 %xtraiter476, 0
  call void @llvm.assume(i1 %lcmp.mod479)
  br label %.preheader.i99.i.i.epil

.preheader.i99.i.i.epil:                          ; preds = %.preheader.i99.i.i.epil, %.preheader.i99.i.i.epil.preheader
  %indvars.iv51.i101.i.i.epil = phi i64 [ %indvars.iv.next52.i102.i.i.epil, %.preheader.i99.i.i.epil ], [ %indvars.iv51.i101.i.i.epil.init, %.preheader.i99.i.i.epil.preheader ] ; 2 uses
  %epil.iter477 = phi i64 [ %epil.iter477.next, %.preheader.i99.i.i.epil ], [ 0, %.preheader.i99.i.i.epil.preheader ]
  %i.avn = sub nsw i64 %i.aqr, %indvars.iv51.i101.i.i.epil
  %i.avo = getelementptr inbounds [32 x i8], ptr %i.aue, i64 %i.avn
  %i.avp = getelementptr inbounds nuw i8, ptr %i.avo, i64 12 ; 2 uses
  %i.avq = load i32, ptr %i.avp, align 4, !tbaa !55
  %i.avr = and i32 %i.avq, -3145729
  store i32 %i.avr, ptr %i.avp, align 4, !tbaa !55
  %indvars.iv.next52.i102.i.i.epil = add nuw nsw i64 %indvars.iv51.i101.i.i.epil, 1
  %epil.iter477.next = add i64 %epil.iter477, 1   ; 2 uses
  %epil.iter477.cmp.not = icmp eq i64 %epil.iter477.next, %xtraiter476
  br i1 %epil.iter477.cmp.not, label %adjust_last_block.exit105.i.i, label %.preheader.i99.i.i.epil, !llvm.loop !421

adjust_last_block.exit105.i.i:                    ; preds = %adjust_last_block.exit105.i.i.loopexit.unr-lcssa, %.preheader.i99.i.i.epil, %bb.kr
  %.2186282299.i.i = phi ptr [ %.0.i35.i, %bb.kr ], [ %.2186282301.i.i, %.preheader.i99.i.i.epil ], [ %.2186282301.i.i, %adjust_last_block.exit105.i.i.loopexit.unr-lcssa ]
  %.155185283297.i.i = phi i32 [ %.054257.i.i, %bb.kr ], [ %.155185283298.i.i, %.preheader.i99.i.i.epil ], [ %.155185283298.i.i, %adjust_last_block.exit105.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.260184287.i.i = phi i32 [ %.058256.i.i, %bb.kr ], [ %.260184285296.i.i, %.preheader.i99.i.i.epil ], [ %.260184285296.i.i, %adjust_last_block.exit105.i.i.loopexit.unr-lcssa ]
  %.226.i104.i.i = phi i32 [ %.054257.i.i, %bb.kr ], [ 0, %.preheader.i99.i.i.epil ], [ 0, %adjust_last_block.exit105.i.i.loopexit.unr-lcssa ] ; 2 uses
  %i.avs = icmp eq i32 %.226.i104.i.i, 0
  %i.avt = icmp sgt i32 %.155185283297.i.i, 1
  %or.cond3.i.i = select i1 %i.avs, i1 %i.avt, i1 false
  br i1 %or.cond3.i.i, label %.thread223.i.i, label %adjust_last_block.exit105.thread.i.i

.thread223.i.i:                                   ; preds = %adjust_last_block.exit105.i.i
  %i.avu = sub nsw i32 %.063255.i.i, %.155185283297.i.i
  br label %.thread168.i.i

adjust_last_block.exit105.thread.i.i:             ; preds = %bb.kt, %adjust_last_block.exit105.i.i, %.preheader37.i82.i.i
  %.2186282300.i.i = phi ptr [ %.2186282299.i.i, %adjust_last_block.exit105.i.i ], [ %.2186282301.i.i, %.preheader37.i82.i.i ], [ %.2186282301.i.i, %bb.kt ]
  %.260184288.i.i = phi i32 [ %.260184287.i.i, %adjust_last_block.exit105.i.i ], [ %.260184285296.i.i, %.preheader37.i82.i.i ], [ %.260184285296.i.i, %bb.kt ]
  %.226.i104198.i.i = phi i32 [ %.226.i104.i.i, %adjust_last_block.exit105.i.i ], [ 0, %.preheader37.i82.i.i ], [ 1, %bb.kt ]
  %i.avv = getelementptr i8, ptr %i.aqs, i64 20
  br label %bb.kv

bb.kv:                                            ; preds = %bb.ky, %adjust_last_block.exit105.thread.i.i
  %indvars.iv.i106.i.i = phi i64 [ 0, %adjust_last_block.exit105.thread.i.i ], [ %indvars.iv.next.i107.i.i, %bb.ky ] ; 3 uses
  %.02843.i.i.i = phi i32 [ %.0146254.i.i, %adjust_last_block.exit105.thread.i.i ], [ %.2.i109.i.i, %bb.ky ] ; 3 uses
  %.02942.i.i.i = phi ptr [ %.0154252.i.i, %adjust_last_block.exit105.thread.i.i ], [ %.130.i.i.i, %bb.ky ] ; 2 uses
  %.03141.i.i.i = phi ptr [ %.2186282300.i.i, %adjust_last_block.exit105.thread.i.i ], [ %i.awo, %bb.ky ] ; 3 uses
  %indvars.iv.next.i107.i.i = add nuw nsw i64 %indvars.iv.i106.i.i, 1 ; 3 uses
  %i.avw = sext i32 %.02843.i.i.i to i64
  %.not34.i108.i.i = icmp slt i64 %indvars.iv.i106.i.i, %i.avw
  br i1 %.not34.i108.i.i, label %bb.kw, label %st_mult.exit.i.i.i

st_mult.exit.i.i.i:                               ; preds = %bb.kv
  %i.avx = mul i32 %.02843.i.i.i, 3
  %i.avy = add i32 %i.avx, 48
  %i.avz = sdiv i32 %i.avy, 2
  %i.awa = trunc nsw i64 %indvars.iv.next.i107.i.i to i32
  %..i.i.i = call i32 @llvm.smax.i32(i32 %i.avz, i32 %i.awa) ; 2 uses
  %i.awb = sext i32 %..i.i.i to i64
  %i.awc = shl nuw nsw i64 %i.awb, 4
  %i.awd = call ptr @xrealloc(ptr noundef %.02942.i.i.i, i64 noundef %i.awc) #33
  br label %bb.kw

bb.kw:                                            ; preds = %st_mult.exit.i.i.i, %bb.kv
  %.130.i.i.i = phi ptr [ %i.awd, %st_mult.exit.i.i.i ], [ %.02942.i.i.i, %bb.kv ] ; 4 uses
  %.2.i109.i.i = phi i32 [ %..i.i.i, %st_mult.exit.i.i.i ], [ %.02843.i.i.i, %bb.kv ] ; 3 uses
  %i.awe = load i32, ptr %i.aqo, align 4, !tbaa !145
  %i.awf = and i32 %i.awe, 32
  %.not36.i.i.i = icmp eq i32 %i.awf, 0
  br i1 %.not36.i.i.i, label %bb.ky, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.awg = load ptr, ptr %.03141.i.i.i, align 8, !tbaa !435
  %.val.i110.i.i = load i32, ptr %i.avv, align 4, !tbaa !57 ; 2 uses
  %i.awh = getelementptr i8, ptr %i.awg, i64 20
  %.val37.i.i.i = load i32, ptr %i.awh, align 4, !tbaa !57 ; 2 uses
  %i.awi = icmp eq i32 %.val.i110.i.i, -2147483648
  %i.awj = icmp eq i32 %.val37.i.i.i, -2147483648
  %or.cond.i.i.i.i = select i1 %i.awi, i1 %i.awj, i1 false
  %i.awk = sub nsw i32 %.val.i110.i.i, %.val37.i.i.i
  %.0.i.i.i.i = select i1 %or.cond.i.i.i.i, i32 -2147483648, i32 %i.awk
  br label %bb.ky

bb.ky:                                            ; preds = %bb.kx, %bb.kw
  %.sink.i.i.i = phi i32 [ %.0.i.i.i.i, %bb.kx ], [ 0, %bb.kw ]
  %i.awl = getelementptr inbounds nuw [16 x i8], ptr %.130.i.i.i, i64 %indvars.iv.i106.i.i ; 2 uses
  %i.awm = getelementptr inbounds nuw i8, ptr %i.awl, i64 8
  store i32 %.sink.i.i.i, ptr %i.awm, align 8, !tbaa !445
  store ptr %.03141.i.i.i, ptr %i.awl, align 8, !tbaa !444
  %i.awn = getelementptr inbounds nuw i8, ptr %.03141.i.i.i, i64 16
  %i.awo = load ptr, ptr %i.awn, align 8, !tbaa !439 ; 2 uses
  %.not.i111.i.i = icmp eq ptr %i.awo, null
  br i1 %.not.i111.i.i, label %bb.kz, label %bb.kv, !llvm.loop !422

bb.kz:                                            ; preds = %bb.ky
  %i.awp = trunc nsw i64 %indvars.iv.next.i107.i.i to i32 ; 2 uses
  %.not244.i.i = icmp ne i32 %.226.i104198.i.i, 0
  %.pre.i48.i = load i32, ptr %i.aqt, align 4, !tbaa !59 ; 2 uses
  %i.awq = icmp eq i32 %.051258.i.i, %.pre.i48.i
  %or.cond318.i.i = select i1 %.not244.i.i, i1 %i.awq, i1 false
  br i1 %or.cond318.i.i, label %bb.la, label %.thread211.thread.i.i

bb.la:                                            ; preds = %bb.kz
  %i.awr = xor i32 %.260184288.i.i, 1
  br label %.thread211.i.i

.thread211.thread.i.i:                            ; preds = %bb.kz
  %i.aws = getelementptr inbounds nuw i8, ptr %i.aqs, i64 12 ; 2 uses
  %i.awt = load i32, ptr %i.aws, align 4, !tbaa !55
  %i.awu = or i32 %i.awt, 1048576
  store i32 %i.awu, ptr %i.aws, align 4, !tbaa !55
  br label %.thread168.i.i

.thread211.i.i:                                   ; preds = %bb.la, %pmb_advance_or_null.exit.i.i
  %.2156.i.i = phi ptr [ %.0154252.i.i, %pmb_advance_or_null.exit.i.i ], [ %.130.i.i.i, %bb.la ] ; 3 uses
  %.3152.i.i = phi i32 [ %.1.i.i54.i, %pmb_advance_or_null.exit.i.i ], [ %i.awp, %bb.la ] ; 3 uses
  %.2147.i.i = phi i32 [ %.0146254.i.i, %pmb_advance_or_null.exit.i.i ], [ %.2.i109.i.i, %bb.la ] ; 3 uses
  %.462.i.i = phi i32 [ %.058256.i.i, %pmb_advance_or_null.exit.i.i ], [ %i.awr, %bb.la ]
  %.256.i.i = phi i32 [ %.054257.i.i, %pmb_advance_or_null.exit.i.i ], [ 0, %bb.la ]
  %i.awv = add nsw i32 %.256.i.i, 1               ; 3 uses
  %i.aww = getelementptr inbounds nuw i8, ptr %i.aqs, i64 12 ; 3 uses
  %i.awx = load i32, ptr %i.aww, align 4, !tbaa !55 ; 2 uses
  %i.awy = or i32 %i.awx, 1048576
  store i32 %i.awy, ptr %i.aww, align 4, !tbaa !55
  %.not74.i.i = icmp eq i32 %.462.i.i, 0
  br i1 %.not74.i.i, label %.thread168.i.i, label %bb.lb

bb.lb:                                            ; preds = %.thread211.i.i
  %i.awz = load i32, ptr %i.ail, align 8, !tbaa !144
  %.not75.i.i = icmp eq i32 %i.awz, 2
  br i1 %.not75.i.i, label %.thread168.i.i, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.axa = or i32 %i.awx, 3145728
  store i32 %i.axa, ptr %i.aww, align 4, !tbaa !55
  br label %.thread168.i.i

.thread168.i.i:                                   ; preds = %bb.lc, %bb.lb, %.thread211.i.i, %.thread211.thread.i.i, %.thread223.i.i, %bb.ki, %adjust_last_block.exit.thread.i.i, %adjust_last_block.exit.i.i, %.thread.i.i
  %.3157.i.i = phi ptr [ %.0154252.i.i, %adjust_last_block.exit.thread.i.i ], [ %.0154252.i.i, %bb.ki ], [ %.0154252.i.i, %adjust_last_block.exit.i.i ], [ %.2156.i.i, %.thread211.i.i ], [ %.2156.i.i, %bb.lb ], [ %.2156.i.i, %bb.lc ], [ %.0154252.i.i, %.thread.i.i ], [ %.0154252.i.i, %.thread223.i.i ], [ %.130.i.i.i, %.thread211.thread.i.i ] ; 5 uses
  %.4153.i.i = phi i32 [ 0, %adjust_last_block.exit.thread.i.i ], [ %.1150182290.i.i, %bb.ki ], [ 0, %adjust_last_block.exit.i.i ], [ %.3152.i.i, %.thread211.i.i ], [ %.3152.i.i, %bb.lb ], [ %.3152.i.i, %bb.lc ], [ 0, %.thread.i.i ], [ 0, %.thread223.i.i ], [ %i.awp, %.thread211.thread.i.i ]
  %.3148.i.i = phi i32 [ %.0146254.i.i, %adjust_last_block.exit.thread.i.i ], [ %.0146254.i.i, %bb.ki ], [ %.0146254.i.i, %adjust_last_block.exit.i.i ], [ %.2147.i.i, %.thread211.i.i ], [ %.2147.i.i, %bb.lb ], [ %.2147.i.i, %bb.lc ], [ %.0146254.i.i, %.thread.i.i ], [ %.0146254.i.i, %.thread223.i.i ], [ %.2.i109.i.i, %.thread211.thread.i.i ]
  %.568.i.i = phi i32 [ %.063255.i.i, %adjust_last_block.exit.thread.i.i ], [ %.063255.i.i, %bb.ki ], [ %i.asv, %adjust_last_block.exit.i.i ], [ %.063255.i.i, %.thread211.i.i ], [ %.063255.i.i, %bb.lb ], [ %.063255.i.i, %bb.lc ], [ %.063255.i.i, %.thread.i.i ], [ %i.avu, %.thread223.i.i ], [ %.063255.i.i, %.thread211.thread.i.i ]
  %.5.i.i = phi i32 [ %.260.i45.i, %adjust_last_block.exit.thread.i.i ], [ %.260184286.i.i, %bb.ki ], [ 0, %adjust_last_block.exit.i.i ], [ 0, %.thread211.i.i ], [ 1, %bb.lb ], [ 1, %bb.lc ], [ 0, %.thread.i.i ], [ 0, %.thread223.i.i ], [ 0, %.thread211.thread.i.i ]
  %.4.i49.i = phi i32 [ %.155.i.i, %adjust_last_block.exit.thread.i.i ], [ %.155185284.i.i, %bb.ki ], [ 0, %adjust_last_block.exit.i.i ], [ %i.awv, %.thread211.i.i ], [ %i.awv, %bb.lb ], [ %i.awv, %bb.lc ], [ %.054257.i.i, %.thread.i.i ], [ 0, %.thread223.i.i ], [ 1, %.thread211.thread.i.i ] ; 5 uses
  %.3.i50.i = phi i32 [ 0, %adjust_last_block.exit.thread.i.i ], [ %.051258.i.i, %bb.ki ], [ 0, %adjust_last_block.exit.i.i ], [ %.051258.i.i, %.thread211.i.i ], [ %.051258.i.i, %bb.lb ], [ %.051258.i.i, %bb.lc ], [ 0, %.thread.i.i ], [ 0, %.thread223.i.i ], [ %.pre.i48.i, %.thread211.thread.i.i ]
  %i.axb = add nsw i32 %.568.i.i, 1               ; 3 uses
  %i.axc = load ptr, ptr %i.aml, align 8, !tbaa !60 ; 3 uses
  %i.axd = getelementptr inbounds nuw i8, ptr %i.axc, i64 8
  %i.axe = load i32, ptr %i.axd, align 8, !tbaa !63
  %i.axf = icmp slt i32 %i.axb, %i.axe
  br i1 %i.axf, label %bb.jz, label %._crit_edge.i51.i, !llvm.loop !423

._crit_edge.i51.i:                                ; preds = %.thread168.i.i
  %i.axg = sext i32 %i.axb to i64                 ; 6 uses
  %i.axh = load i32, ptr %i.ail, align 8, !tbaa !144
  %i.axi = icmp eq i32 %i.axh, 1
  %.not42.i113.i.i = icmp slt i32 %.4.i49.i, 1
  %or.cond243.i.i = select i1 %i.axi, i1 true, i1 %.not42.i113.i.i
  br i1 %or.cond243.i.i, label %mark_color_as_moved.exit.i, label %.lr.ph45.i114.i.i

.lr.ph45.i114.i.i:                                ; preds = %._crit_edge.i51.i
  %i.axj = load ptr, ptr %i.axc, align 8, !tbaa !65 ; 6 uses
  %i.axk = add nuw i32 %.4.i49.i, 1
  %wide.trip.count.i115.i.i = zext i32 %i.axk to i64
  br label %bb.ld

bb.ld:                                            ; preds = %._crit_edge.i125.i.i, %.lr.ph45.i114.i.i
  %indvars.iv.i116.i.i = phi i64 [ 1, %.lr.ph45.i114.i.i ], [ %indvars.iv.next.i127.i.i, %._crit_edge.i125.i.i ] ; 2 uses
  %.02144.i117.i.i = phi i32 [ 0, %.lr.ph45.i114.i.i ], [ %.1.lcssa.i126.i.i, %._crit_edge.i125.i.i ] ; 2 uses
  %i.axl = sub nsw i64 %i.axg, %indvars.iv.i116.i.i
  %i.axm = getelementptr inbounds [32 x i8], ptr %i.axj, i64 %i.axl
  %i.axn = load ptr, ptr %i.axm, align 8, !tbaa !53 ; 2 uses
  %i.axo = load i8, ptr %i.axn, align 1, !tbaa !44 ; 2 uses
  %.not3239.i118.i.i = icmp eq i8 %i.axo, 0
  br i1 %.not3239.i118.i.i, label %._crit_edge.i125.i.i, label %.lr.ph.i119.i.i

.lr.ph.i119.i.i:                                  ; preds = %bb.ld, %bb.lf
  %i.axp = phi i8 [ %i.axx, %bb.lf ], [ %i.axo, %bb.ld ]
  %.041.i120.i.i = phi ptr [ %i.axw, %bb.lf ], [ %i.axn, %bb.ld ]
  %.140.i121.i.i = phi i32 [ %.2.i123.i.i, %bb.lf ], [ %.02144.i117.i.i, %bb.ld ] ; 3 uses
  %i.axq = zext i8 %i.axp to i64
  %i.axr = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.axq
  %i.axs = load i8, ptr %i.axr, align 1, !tbaa !44
  %i.axt = and i8 %i.axs, 6
  %.not33.i122.i.i = icmp eq i8 %i.axt, 0
  br i1 %.not33.i122.i.i, label %bb.lf, label %bb.le

bb.le:                                            ; preds = %.lr.ph.i119.i.i
  %i.axu = add nsw i32 %.140.i121.i.i, 1
  %i.axv = icmp sgt i32 %.140.i121.i.i, 18
  br i1 %i.axv, label %mark_color_as_moved.exit.i, label %bb.lf

bb.lf:                                            ; preds = %bb.le, %.lr.ph.i119.i.i
  %.2.i123.i.i = phi i32 [ %i.axu, %bb.le ], [ %.140.i121.i.i, %.lr.ph.i119.i.i ] ; 2 uses
  %i.axw = getelementptr inbounds nuw i8, ptr %.041.i120.i.i, i64 1 ; 2 uses
  %i.axx = load i8, ptr %i.axw, align 1, !tbaa !44 ; 2 uses
  %.not32.i124.i.i = icmp eq i8 %i.axx, 0
  br i1 %.not32.i124.i.i, label %._crit_edge.i125.i.i, label %.lr.ph.i119.i.i, !llvm.loop !416

._crit_edge.i125.i.i:                             ; preds = %bb.lf, %bb.ld
  %.1.lcssa.i126.i.i = phi i32 [ %.02144.i117.i.i, %bb.ld ], [ %.2.i123.i.i, %bb.lf ]
  %indvars.iv.next.i127.i.i = add nuw nsw i64 %indvars.iv.i116.i.i, 1 ; 2 uses
  %exitcond.not.i128.i.i = icmp eq i64 %indvars.iv.next.i127.i.i, %wide.trip.count.i115.i.i
  br i1 %exitcond.not.i128.i.i, label %.preheader.i129.i.i.preheader, label %bb.ld, !llvm.loop !417

.preheader.i129.i.i.preheader:                    ; preds = %._crit_edge.i125.i.i
  %i.axy = zext nneg i32 %.4.i49.i to i64         ; 2 uses
  %xtraiter482 = and i64 %i.axy, 3                ; 3 uses
  %i.axz = add nsw i32 %.4.i49.i, -1
  %i.aya = icmp ult i32 %i.axz, 3
  br i1 %i.aya, label %.preheader.i129.i.i.epil.preheader, label %.preheader.i129.i.i.preheader.new

.preheader.i129.i.i.preheader.new:                ; preds = %.preheader.i129.i.i.preheader
  %unroll_iter486 = and i64 %i.axy, 2147483644
  %invariant.gep520 = getelementptr [32 x i8], ptr %i.axj, i64 %i.axg
  br label %.preheader.i129.i.i

.preheader.i129.i.i:                              ; preds = %.preheader.i129.i.i, %.preheader.i129.i.i.preheader.new
  %indvars.iv51.i131.i.i = phi i64 [ 1, %.preheader.i129.i.i.preheader.new ], [ %indvars.iv.next52.i132.i.i.3, %.preheader.i129.i.i ] ; 5 uses
  %niter487 = phi i64 [ 0, %.preheader.i129.i.i.preheader.new ], [ %niter487.next.3, %.preheader.i129.i.i ]
  %i.ayb = sub nsw i64 %i.axg, %indvars.iv51.i131.i.i
  %i.ayc = getelementptr inbounds [32 x i8], ptr %i.axj, i64 %i.ayb
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.ayc, i64 12 ; 2 uses
  %i.aye = load i32, ptr %i.ayd, align 4, !tbaa !55
  %i.ayf = and i32 %i.aye, -3145729
  store i32 %i.ayf, ptr %i.ayd, align 4, !tbaa !55
  %indvars.iv.next52.i132.i.i.neg = xor i64 %indvars.iv51.i131.i.i, -1
  %gep521 = getelementptr [32 x i8], ptr %invariant.gep520, i64 %indvars.iv.next52.i132.i.i.neg
  %i.ayg = getelementptr inbounds nuw i8, ptr %gep521, i64 12 ; 2 uses
  %i.ayh = load i32, ptr %i.ayg, align 4, !tbaa !55
  %i.ayi = and i32 %i.ayh, -3145729
  store i32 %i.ayi, ptr %i.ayg, align 4, !tbaa !55
  %indvars.iv.next52.i132.i.i.1 = add nuw nsw i64 %indvars.iv51.i131.i.i, 2
  %i.ayj = sub nsw i64 %i.axg, %indvars.iv.next52.i132.i.i.1
  %i.ayk = getelementptr inbounds [32 x i8], ptr %i.axj, i64 %i.ayj
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.ayk, i64 12 ; 2 uses
  %i.aym = load i32, ptr %i.ayl, align 4, !tbaa !55
  %i.ayn = and i32 %i.aym, -3145729
  store i32 %i.ayn, ptr %i.ayl, align 4, !tbaa !55
  %indvars.iv.next52.i132.i.i.2 = add nuw nsw i64 %indvars.iv51.i131.i.i, 3
  %i.ayo = sub nsw i64 %i.axg, %indvars.iv.next52.i132.i.i.2
  %i.ayp = getelementptr inbounds [32 x i8], ptr %i.axj, i64 %i.ayo
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.ayp, i64 12 ; 2 uses
  %i.ayr = load i32, ptr %i.ayq, align 4, !tbaa !55
  %i.ays = and i32 %i.ayr, -3145729
  store i32 %i.ays, ptr %i.ayq, align 4, !tbaa !55
  %indvars.iv.next52.i132.i.i.3 = add nuw nsw i64 %indvars.iv51.i131.i.i, 4 ; 2 uses
  %niter487.next.3 = add nuw i64 %niter487, 4     ; 2 uses
  %niter487.ncmp.3 = icmp eq i64 %niter487.next.3, %unroll_iter486
  br i1 %niter487.ncmp.3, label %mark_color_as_moved.exit.i.loopexit.unr-lcssa, label %.preheader.i129.i.i, !llvm.loop !418

mark_color_as_moved.exit.i.loopexit.unr-lcssa:    ; preds = %.preheader.i129.i.i
  %lcmp.mod484.not = icmp eq i64 %xtraiter482, 0
  br i1 %lcmp.mod484.not, label %mark_color_as_moved.exit.i, label %.preheader.i129.i.i.epil.preheader

.preheader.i129.i.i.epil.preheader:               ; preds = %mark_color_as_moved.exit.i.loopexit.unr-lcssa, %.preheader.i129.i.i.preheader
  %indvars.iv51.i131.i.i.epil.init = phi i64 [ 1, %.preheader.i129.i.i.preheader ], [ %indvars.iv.next52.i132.i.i.3, %mark_color_as_moved.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod485 = icmp ne i64 %xtraiter482, 0
  call void @llvm.assume(i1 %lcmp.mod485)
  br label %.preheader.i129.i.i.epil

.preheader.i129.i.i.epil:                         ; preds = %.preheader.i129.i.i.epil, %.preheader.i129.i.i.epil.preheader
  %indvars.iv51.i131.i.i.epil = phi i64 [ %indvars.iv.next52.i132.i.i.epil, %.preheader.i129.i.i.epil ], [ %indvars.iv51.i131.i.i.epil.init, %.preheader.i129.i.i.epil.preheader ] ; 2 uses
  %epil.iter483 = phi i64 [ %epil.iter483.next, %.preheader.i129.i.i.epil ], [ 0, %.preheader.i129.i.i.epil.preheader ]
  %i.ayt = sub nsw i64 %i.axg, %indvars.iv51.i131.i.i.epil
  %i.ayu = getelementptr inbounds [32 x i8], ptr %i.axj, i64 %i.ayt
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.ayu, i64 12 ; 2 uses
  %i.ayw = load i32, ptr %i.ayv, align 4, !tbaa !55
  %i.ayx = and i32 %i.ayw, -3145729
  store i32 %i.ayx, ptr %i.ayv, align 4, !tbaa !55
  %indvars.iv.next52.i132.i.i.epil = add nuw nsw i64 %indvars.iv51.i131.i.i.epil, 1
  %epil.iter483.next = add i64 %epil.iter483, 1   ; 2 uses
  %epil.iter483.cmp.not = icmp eq i64 %epil.iter483.next, %xtraiter482
  br i1 %epil.iter483.cmp.not, label %mark_color_as_moved.exit.i, label %.preheader.i129.i.i.epil, !llvm.loop !424

mark_color_as_moved.exit.i:                       ; preds = %bb.le, %mark_color_as_moved.exit.i.loopexit.unr-lcssa, %.preheader.i129.i.i.epil, %._crit_edge.i51.i, %add_lines_to_move_detection.exit.i
  %.0154.lcssa315.i.i = phi ptr [ %.3157.i.i, %mark_color_as_moved.exit.i.loopexit.unr-lcssa ], [ null, %add_lines_to_move_detection.exit.i ], [ %.3157.i.i, %._crit_edge.i51.i ], [ %.3157.i.i, %.preheader.i129.i.i.epil ], [ %.3157.i.i, %bb.le ]
  call void @free(ptr noundef %.0154.lcssa315.i.i) #33
  %i.ayy = load i32, ptr %i.ail, align 8, !tbaa !144
  %i.ayz = icmp eq i32 %i.ayy, 4
  br i1 %i.ayz, label %bb.lg, label %dim_moved_lines.exit.i

bb.lg:                                            ; preds = %mark_color_as_moved.exit.i
  %i.aza = load ptr, ptr %i.aml, align 8, !tbaa !60 ; 2 uses
  %i.azb = getelementptr inbounds nuw i8, ptr %i.aza, i64 8
  %i.azc = load i32, ptr %i.azb, align 8, !tbaa !63 ; 4 uses
  %i.azd = icmp sgt i32 %i.azc, 0
  br i1 %i.azd, label %bb.lh, label %dim_moved_lines.exit.i

bb.lh:                                            ; preds = %bb.lg
  %i.aze = load ptr, ptr %i.aza, align 8, !tbaa !65 ; 5 uses
  %i.azf = add nsw i32 %i.azc, -1                 ; 2 uses
  %i.azg = zext nneg i32 %i.azf to i64
  %wide.trip.count.i.i = zext nneg i32 %i.azc to i64
  %.not62.peel.not.i.i = icmp eq i32 %i.azf, 0
  %i.azh = getelementptr inbounds nuw i8, ptr %i.aze, i64 28
end_hunk_1
