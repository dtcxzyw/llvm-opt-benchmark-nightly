Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 90
loop-unroll.NumUnrolled: 367
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_str_vappendf:bb.a
..thread_crit_edge.i:                             ; preds = %bb.gd
  %.pre216.i = sext i32 %.1135.i to i64
  br label %.thread.i

bb.ge:                                            ; preds = %bb.gd
  %i.wd = sub nsw i32 %i.wc, %.0688               ; 3 uses
  %i.we = icmp eq i32 %i.wd, 0
  %i.wf = sext i32 %.1135.i to i64
  %i.wg = getelementptr inbounds i8, ptr %i.ag, i64 %i.wf ; 4 uses
  br i1 %i.we, label %bb.gf, label %bb.gh

bb.gf:                                            ; preds = %bb.ge
  %i.wh = load i8, ptr %i.wg, align 1, !tbaa !231
  %i.wi = icmp sgt i8 %i.wh, 52
  br i1 %i.wi, label %bb.gg, label %.loopexit.i

bb.gg:                                            ; preds = %bb.gf
  %i.wj = add nsw i32 %.1135.i, -1
  %i.wk = sext i32 %i.wj to i64                   ; 2 uses
  %i.wl = getelementptr inbounds i8, ptr %i.ag, i64 %i.wk
  store i8 48, ptr %i.wl, align 1, !tbaa !231
  %i.wm = sub i32 21, %.1135.i
  %i.wn = load i32, ptr %i.af, align 4, !tbaa !336
  %i.wo = add nsw i32 %i.wn, 1                    ; 2 uses
  store i32 %i.wo, ptr %i.af, align 4, !tbaa !336
  br label %.thread.i

.thread.i:                                        ; preds = %bb.gg, %..thread_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre216.i, %..thread_crit_edge.i ], [ %i.wk, %bb.gg ]
  %i.wp = phi i32 [ %i.wc, %..thread_crit_edge.i ], [ %i.wo, %bb.gg ]
  %.0130.ph.i = phi i32 [ %i.wb, %..thread_crit_edge.i ], [ %i.wm, %bb.gg ]
  %.0125.ph.i = phi i32 [ %.0688, %..thread_crit_edge.i ], [ 1, %bb.gg ]
  %i.wq = getelementptr inbounds i8, ptr %i.ag, i64 %.pre-phi.i
  br label %bb.gi

bb.gh:                                            ; preds = %bb.ge
  %i.wr = icmp sgt i32 %i.wd, 0
  br i1 %i.wr, label %bb.gi, label %.loopexit.i

bb.gi:                                            ; preds = %bb.gh, %.thread.i
  %i.ws = phi i32 [ %i.wp, %.thread.i ], [ %i.wc, %bb.gh ] ; 2 uses
  %i.wt = phi ptr [ %i.wq, %.thread.i ], [ %i.wg, %bb.gh ] ; 37 uses
  %.0125162.i = phi i32 [ %.0125.ph.i, %.thread.i ], [ %i.wd, %bb.gh ] ; 2 uses
  %.0130161.i = phi i32 [ %.0130.ph.i, %.thread.i ], [ %i.wb, %bb.gh ] ; 6 uses
  %i.wu = icmp slt i32 %.0125162.i, %.0130161.i
  %i.wv = icmp sgt i32 %.0130161.i, %i.se
  %or.cond149.i = or i1 %i.wu, %i.wv
  br i1 %or.cond149.i, label %bb.gj, label %.loopexit.i

bb.gj:                                            ; preds = %bb.gi
  %i.ww = call i32 @llvm.umin.i32(i32 %.0125162.i, i32 range(i32 16, 21) %i.se) ; 2 uses
  %i.wx = icmp eq i32 %i.ww, 17
  br i1 %i.wx, label %bb.gk, label %.thread169.i

bb.gk:                                            ; preds = %bb.gj
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wt, i64 15
  %i.wz = load i8, ptr %i.wy, align 1, !tbaa !231 ; 2 uses
  %i.xa = icmp eq i8 %i.wz, 57
  br i1 %i.xa, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  %i.xb = getelementptr i8, ptr %i.wt, i64 14
  %i.xc = load i8, ptr %i.xb, align 1, !tbaa !231
  %i.xd = icmp eq i8 %i.xc, 57
  br i1 %i.xd, label %.preheader171.preheader.i, label %.thread167.i

.preheader171.preheader.i:                        ; preds = %bb.gl
  %i.xe = getelementptr i8, ptr %i.wt, i64 13
  %i.xf = load i8, ptr %i.xe, align 1, !tbaa !231
  %i.xg = icmp eq i8 %i.xf, 57
  br i1 %i.xg, label %.preheader171.1.i, label %.lr.ph188.preheader.i

.preheader171.1.i:                                ; preds = %.preheader171.preheader.i
  %i.xh = getelementptr i8, ptr %i.wt, i64 12
  %i.xi = load i8, ptr %i.xh, align 1, !tbaa !231
  %i.xj = icmp eq i8 %i.xi, 57
  br i1 %i.xj, label %.preheader171.2.i, label %.lr.ph188.preheader.i

.preheader171.2.i:                                ; preds = %.preheader171.1.i
  %i.xk = getelementptr i8, ptr %i.wt, i64 11
  %i.xl = load i8, ptr %i.xk, align 1, !tbaa !231
  %i.xm = icmp eq i8 %i.xl, 57
  br i1 %i.xm, label %.preheader171.3.i, label %.lr.ph188.preheader.i

.preheader171.3.i:                                ; preds = %.preheader171.2.i
  %i.xn = getelementptr i8, ptr %i.wt, i64 10
  %i.xo = load i8, ptr %i.xn, align 1, !tbaa !231
  %i.xp = icmp eq i8 %i.xo, 57
  br i1 %i.xp, label %.preheader171.4.i, label %.lr.ph188.preheader.i

.preheader171.4.i:                                ; preds = %.preheader171.3.i
  %i.xq = getelementptr i8, ptr %i.wt, i64 9
  %i.xr = load i8, ptr %i.xq, align 1, !tbaa !231
  %i.xs = icmp eq i8 %i.xr, 57
  br i1 %i.xs, label %.preheader171.5.i, label %.lr.ph188.preheader.i

.preheader171.5.i:                                ; preds = %.preheader171.4.i
  %i.xt = getelementptr i8, ptr %i.wt, i64 8
  %i.xu = load i8, ptr %i.xt, align 1, !tbaa !231
  %i.xv = icmp eq i8 %i.xu, 57
  br i1 %i.xv, label %.preheader171.6.i, label %.lr.ph188.preheader.i

.preheader171.6.i:                                ; preds = %.preheader171.5.i
  %i.xw = getelementptr i8, ptr %i.wt, i64 7
  %i.xx = load i8, ptr %i.xw, align 1, !tbaa !231
  %i.xy = icmp eq i8 %i.xx, 57
  br i1 %i.xy, label %.preheader171.7.i, label %.lr.ph188.preheader.i

.preheader171.7.i:                                ; preds = %.preheader171.6.i
  %i.xz = getelementptr i8, ptr %i.wt, i64 6
  %i.ya = load i8, ptr %i.xz, align 1, !tbaa !231
  %i.yb = icmp eq i8 %i.ya, 57
  br i1 %i.yb, label %.preheader171.8.i, label %.lr.ph188.preheader.i

.preheader171.8.i:                                ; preds = %.preheader171.7.i
  %i.yc = getelementptr i8, ptr %i.wt, i64 5
  %i.yd = load i8, ptr %i.yc, align 1, !tbaa !231
  %i.ye = icmp eq i8 %i.yd, 57
  br i1 %i.ye, label %.preheader171.9.i, label %.lr.ph188.preheader.i

.preheader171.9.i:                                ; preds = %.preheader171.8.i
  %i.yf = getelementptr i8, ptr %i.wt, i64 4
  %i.yg = load i8, ptr %i.yf, align 1, !tbaa !231
  %i.yh = icmp eq i8 %i.yg, 57
  br i1 %i.yh, label %.preheader171.10.i, label %.lr.ph188.preheader.i

.preheader171.10.i:                               ; preds = %.preheader171.9.i
  %i.yi = getelementptr i8, ptr %i.wt, i64 3
  %i.yj = load i8, ptr %i.yi, align 1, !tbaa !231
  %i.yk = icmp eq i8 %i.yj, 57
  br i1 %i.yk, label %.preheader171.11.i, label %.lr.ph188.preheader.i

.preheader171.11.i:                               ; preds = %.preheader171.10.i
  %i.yl = getelementptr i8, ptr %i.wt, i64 2
  %i.ym = load i8, ptr %i.yl, align 1, !tbaa !231
  %i.yn = icmp eq i8 %i.ym, 57
  br i1 %i.yn, label %.preheader171.12.i, label %.lr.ph188.preheader.i

.preheader171.12.i:                               ; preds = %.preheader171.11.i
  %i.yo = getelementptr i8, ptr %i.wt, i64 1
  %i.yp = load i8, ptr %i.yo, align 1, !tbaa !231
  %i.yq = icmp eq i8 %i.yp, 57
  br i1 %i.yq, label %.preheader171.13.i, label %.lr.ph188.preheader.i

.preheader171.13.i:                               ; preds = %.preheader171.12.i
  %i.yr = load i8, ptr %i.wt, align 1, !tbaa !231 ; 2 uses
  %i.ys = icmp eq i8 %i.yr, 57
  br i1 %i.ys, label %.thread169.sink.split.i, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.preheader171.13.i
  %i.yt = sext i8 %i.yr to i64
  br label %._crit_edge189.i

.lr.ph188.preheader.i:                            ; preds = %.preheader171.12.i, %.preheader171.11.i, %.preheader171.10.i, %.preheader171.9.i, %.preheader171.8.i, %.preheader171.7.i, %.preheader171.6.i, %.preheader171.5.i, %.preheader171.4.i, %.preheader171.3.i, %.preheader171.2.i, %.preheader171.1.i, %.preheader171.preheader.i
  %.0123185.lcssa.ph.i = phi i32 [ 2, %.preheader171.12.i ], [ 3, %.preheader171.11.i ], [ 4, %.preheader171.10.i ], [ 5, %.preheader171.9.i ], [ 6, %.preheader171.8.i ], [ 7, %.preheader171.7.i ], [ 8, %.preheader171.6.i ], [ 9, %.preheader171.5.i ], [ 10, %.preheader171.4.i ], [ 11, %.preheader171.3.i ], [ 12, %.preheader171.2.i ], [ 13, %.preheader171.1.i ], [ 14, %.preheader171.preheader.i ] ; 4 uses
  %.pre229.i = load i8, ptr %i.wt, align 1, !tbaa !231
  %i.yu = sext i8 %.pre229.i to i64               ; 2 uses
  %wide.trip.count208.i = zext nneg i32 %.0123185.lcssa.ph.i to i64
  %i.yv = add nsw i64 %wide.trip.count208.i, -1   ; 2 uses
  %xtraiter2236 = and i64 %i.yv, 3                ; 3 uses
  %i.yw = add nsw i32 %.0123185.lcssa.ph.i, -2
  %i.yx = icmp ult i32 %i.yw, 3
  br i1 %i.yx, label %.lr.ph188.i.epil.preheader, label %.lr.ph188.preheader.i.new

.lr.ph188.preheader.i.new:                        ; preds = %.lr.ph188.preheader.i
  %unroll_iter2241 = and i64 %i.yv, -4
  br label %.lr.ph188.i

.lr.ph188.i:                                      ; preds = %.lr.ph188.i, %.lr.ph188.preheader.i.new
  %indvars.iv205.i = phi i64 [ 1, %.lr.ph188.preheader.i.new ], [ %indvars.iv.next206.i.3, %.lr.ph188.i ] ; 5 uses
  %.0121.in187.i = phi i64 [ %i.yu, %.lr.ph188.preheader.i.new ], [ %i.zy, %.lr.ph188.i ]
  %niter2242 = phi i64 [ 0, %.lr.ph188.preheader.i.new ], [ %niter2242.next.3, %.lr.ph188.i ]
  %i.yy = mul i64 %.0121.in187.i, 10
  %i.yz = add i64 %i.yy, -480
  %i.za = getelementptr inbounds nuw i8, ptr %i.wt, i64 %indvars.iv205.i
  %i.zb = load i8, ptr %i.za, align 1, !tbaa !231
  %i.zc = sext i8 %i.zb to i64
  %i.zd = add i64 %i.yz, %i.zc
  %i.ze = mul i64 %i.zd, 10
  %i.zf = add i64 %i.ze, -480
  %i.zg = getelementptr inbounds nuw i8, ptr %i.wt, i64 %indvars.iv205.i
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 1
  %i.zi = load i8, ptr %i.zh, align 1, !tbaa !231
  %i.zj = sext i8 %i.zi to i64
  %i.zk = add i64 %i.zf, %i.zj
  %i.zl = mul i64 %i.zk, 10
  %i.zm = add i64 %i.zl, -480
  %i.zn = getelementptr inbounds nuw i8, ptr %i.wt, i64 %indvars.iv205.i
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 2
  %i.zp = load i8, ptr %i.zo, align 1, !tbaa !231
  %i.zq = sext i8 %i.zp to i64
  %i.zr = add i64 %i.zm, %i.zq
  %i.zs = mul i64 %i.zr, 10
  %i.zt = add i64 %i.zs, -480
  %i.zu = getelementptr inbounds nuw i8, ptr %i.wt, i64 %indvars.iv205.i
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 3
  %i.zw = load i8, ptr %i.zv, align 1, !tbaa !231
  %i.zx = sext i8 %i.zw to i64
  %i.zy = add i64 %i.zt, %i.zx                    ; 3 uses
  %indvars.iv.next206.i.3 = add nuw nsw i64 %indvars.iv205.i, 4 ; 2 uses
  %niter2242.next.3 = add nuw nsw i64 %niter2242, 4 ; 2 uses
  %niter2242.ncmp.3 = icmp eq i64 %niter2242.next.3, %unroll_iter2241
  br i1 %niter2242.ncmp.3, label %._crit_edge189.i.loopexit.unr-lcssa, label %.lr.ph188.i, !llvm.loop !340

._crit_edge189.i.loopexit.unr-lcssa:              ; preds = %.lr.ph188.i
  %lcmp.mod2238.not = icmp eq i64 %xtraiter2236, 0
  br i1 %lcmp.mod2238.not, label %._crit_edge189.i, label %.lr.ph188.i.epil.preheader

.lr.ph188.i.epil.preheader:                       ; preds = %._crit_edge189.i.loopexit.unr-lcssa, %.lr.ph188.preheader.i
  %indvars.iv205.i.epil.init = phi i64 [ 1, %.lr.ph188.preheader.i ], [ %indvars.iv.next206.i.3, %._crit_edge189.i.loopexit.unr-lcssa ]
  %.0121.in187.i.epil.init = phi i64 [ %i.yu, %.lr.ph188.preheader.i ], [ %i.zy, %._crit_edge189.i.loopexit.unr-lcssa ]
  %lcmp.mod2240 = icmp ne i64 %xtraiter2236, 0
  call void @llvm.assume(i1 %lcmp.mod2240)
  br label %.lr.ph188.i.epil

.lr.ph188.i.epil:                                 ; preds = %.lr.ph188.i.epil, %.lr.ph188.i.epil.preheader
  %indvars.iv205.i.epil = phi i64 [ %indvars.iv205.i.epil.init, %.lr.ph188.i.epil.preheader ], [ %indvars.iv.next206.i.epil, %.lr.ph188.i.epil ] ; 2 uses
  %.0121.in187.i.epil = phi i64 [ %.0121.in187.i.epil.init, %.lr.ph188.i.epil.preheader ], [ %i.aae, %.lr.ph188.i.epil ]
  %epil.iter2237 = phi i64 [ 0, %.lr.ph188.i.epil.preheader ], [ %epil.iter2237.next, %.lr.ph188.i.epil ]
  %i.zz = mul i64 %.0121.in187.i.epil, 10
  %i.aaa = add i64 %i.zz, -480
  %i.aab = getelementptr inbounds nuw i8, ptr %i.wt, i64 %indvars.iv205.i.epil
  %i.aac = load i8, ptr %i.aab, align 1, !tbaa !231
  %i.aad = sext i8 %i.aac to i64
  %i.aae = add i64 %i.aaa, %i.aad                 ; 2 uses
  %indvars.iv.next206.i.epil = add nuw nsw i64 %indvars.iv205.i.epil, 1
  %epil.iter2237.next = add i64 %epil.iter2237, 1 ; 2 uses
  %epil.iter2237.cmp.not = icmp eq i64 %epil.iter2237.next, %xtraiter2236
  br i1 %epil.iter2237.cmp.not, label %._crit_edge189.i, label %.lr.ph188.i.epil, !llvm.loop !341

._crit_edge189.i:                                 ; preds = %._crit_edge189.i.loopexit.unr-lcssa, %.lr.ph188.i.epil, %.critedge.thread.i
  %.0123185.lcssa230.i = phi i32 [ 1, %.critedge.thread.i ], [ %.0123185.lcssa.ph.i, %.lr.ph188.i.epil ], [ %.0123185.lcssa.ph.i, %._crit_edge189.i.loopexit.unr-lcssa ]
  %.0121.in.lcssa.i = phi i64 [ %i.yt, %.critedge.thread.i ], [ %i.zy, %._crit_edge189.i.loopexit.unr-lcssa ], [ %i.aae, %.lr.ph188.i.epil ]
  %i.aaf = add i64 %.0121.in.lcssa.i, -47
  br label %.thread169.sink.split.i

bb.gm:                                            ; preds = %bb.gk
  %.not147.i = icmp slt i32 %i.ws, %.0130161.i
  br i1 %.not147.i, label %bb.gn, label %.preheader2176

.thread167.i:                                     ; preds = %bb.gl
  %.not147168.i = icmp slt i32 %i.ws, %.0130161.i
  br i1 %.not147168.i, label %.thread169.i, label %.preheader2176

bb.gn:                                            ; preds = %bb.gm
  %i.aag = icmp eq i8 %i.wz, 48
  br i1 %i.aag, label %bb.go, label %.thread169.i

bb.go:                                            ; preds = %bb.gn
  %i.aah = getelementptr inbounds nuw i8, ptr %i.wt, i64 14
  %i.aai = load i8, ptr %i.aah, align 1, !tbaa !231
  %i.aaj = icmp eq i8 %i.aai, 48
  br i1 %i.aaj, label %bb.gp, label %.thread169.i

bb.gp:                                            ; preds = %bb.go
  %i.aak = getelementptr inbounds nuw i8, ptr %i.wt, i64 13
  %i.aal = load i8, ptr %i.aak, align 1, !tbaa !231
  %i.aam = icmp eq i8 %i.aal, 48
  br i1 %i.aam, label %.preheader2176, label %.thread169.i

.preheader2176:                                   ; preds = %bb.gp, %.thread167.i, %bb.gm
  br label %bb.gq

bb.gq:                                            ; preds = %.preheader2176, %bb.gq
  %indvars.iv197.i = phi i64 [ %indvars.iv.next198.i, %bb.gq ], [ 13, %.preheader2176 ] ; 5 uses
  %i.aan = getelementptr i8, ptr %i.wt, i64 %indvars.iv197.i
  %i.aao = getelementptr i8, ptr %i.aan, i64 -1
  %i.aap = load i8, ptr %i.aao, align 1, !tbaa !231
  %i.aaq = icmp eq i8 %i.aap, 48
  %indvars.iv.next198.i = add i64 %indvars.iv197.i, -1
  br i1 %i.aaq, label %bb.gq, label %bb.gr, !llvm.loop !343

bb.gr:                                            ; preds = %bb.gq
  %indvars1525.le = trunc i64 %indvars.iv197.i to i32 ; 3 uses
  %i.aar = load i8, ptr %i.wt, align 1, !tbaa !231
  %i.aas = sext i8 %i.aar to i64
  %.0118178.i = add nsw i64 %i.aas, -48           ; 3 uses
  %i.aat = icmp sgt i64 %indvars.iv197.i, 1
  br i1 %i.aat, label %.lr.ph182.preheader.i, label %.thread169.sink.split.i

.lr.ph182.preheader.i:                            ; preds = %bb.gr
  %wide.trip.count.i = and i64 %indvars.iv197.i, 4294967295 ; 2 uses
  %i.aau = add nsw i64 %wide.trip.count.i, -1     ; 2 uses
  %i.aav = add nsw i64 %wide.trip.count.i, -2
  %xtraiter2230 = and i64 %i.aau, 3               ; 3 uses
  %i.aaw = icmp ult i64 %i.aav, 3
  br i1 %i.aaw, label %.lr.ph182.i.epil.preheader, label %.lr.ph182.preheader.i.new

.lr.ph182.preheader.i.new:                        ; preds = %.lr.ph182.preheader.i
  %unroll_iter2234 = and i64 %i.aau, -4
  br label %.lr.ph182.i

.lr.ph182.i:                                      ; preds = %.lr.ph182.i, %.lr.ph182.preheader.i.new
  %indvars.iv200.i = phi i64 [ 1, %.lr.ph182.preheader.i.new ], [ %indvars.iv.next201.i.3, %.lr.ph182.i ] ; 5 uses
  %.0118180.i = phi i64 [ %.0118178.i, %.lr.ph182.preheader.i.new ], [ %.0118.i.3, %.lr.ph182.i ]
  %niter2235 = phi i64 [ 0, %.lr.ph182.preheader.i.new ], [ %niter2235.next.3, %.lr.ph182.i ]
  %i.aax = mul i64 %.0118180.i, 10
  %i.aay = getelementptr inbounds nuw i8, ptr %i.wt, i64 %indvars.iv200.i
  %i.aaz = load i8, ptr %i.aay, align 1, !tbaa !231
  %i.aba = sext i8 %i.aaz to i64
  %i.abb = add i64 %i.aax, -48
  %.0118.i = add i64 %i.abb, %i.aba
  %i.abc = mul i64 %.0118.i, 10
  %i.abd = getelementptr inbounds nuw i8, ptr %i.wt, i64 %indvars.iv200.i
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 1
  %i.abf = load i8, ptr %i.abe, align 1, !tbaa !231
  %i.abg = sext i8 %i.abf to i64
  %i.abh = add i64 %i.abc, -48
  %.0118.i.1 = add i64 %i.abh, %i.abg
  %i.abi = mul i64 %.0118.i.1, 10
  %i.abj = getelementptr inbounds nuw i8, ptr %i.wt, i64 %indvars.iv200.i
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 2
  %i.abl = load i8, ptr %i.abk, align 1, !tbaa !231
  %i.abm = sext i8 %i.abl to i64
  %i.abn = add i64 %i.abi, -48
  %.0118.i.2 = add i64 %i.abn, %i.abm
  %i.abo = mul i64 %.0118.i.2, 10
  %i.abp = getelementptr inbounds nuw i8, ptr %i.wt, i64 %indvars.iv200.i
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 3
  %i.abr = load i8, ptr %i.abq, align 1, !tbaa !231
  %i.abs = sext i8 %i.abr to i64
  %indvars.iv.next201.i.3 = add nuw nsw i64 %indvars.iv200.i, 4 ; 2 uses
  %i.abt = add i64 %i.abo, -48
  %.0118.i.3 = add i64 %i.abt, %i.abs             ; 3 uses
  %niter2235.next.3 = add nuw nsw i64 %niter2235, 4 ; 2 uses
  %niter2235.ncmp.3 = icmp eq i64 %niter2235.next.3, %unroll_iter2234
  br i1 %niter2235.ncmp.3, label %.thread169.sink.split.i.loopexit.unr-lcssa, label %.lr.ph182.i, !llvm.loop !344

.thread169.sink.split.i.loopexit.unr-lcssa:       ; preds = %.lr.ph182.i
  %lcmp.mod2231.not = icmp eq i64 %xtraiter2230, 0
  br i1 %lcmp.mod2231.not, label %.thread169.sink.split.i, label %.lr.ph182.i.epil.preheader

.lr.ph182.i.epil.preheader:                       ; preds = %.thread169.sink.split.i.loopexit.unr-lcssa, %.lr.ph182.preheader.i
  %indvars.iv200.i.epil.init = phi i64 [ 1, %.lr.ph182.preheader.i ], [ %indvars.iv.next201.i.3, %.thread169.sink.split.i.loopexit.unr-lcssa ]
  %.0118180.i.epil.init = phi i64 [ %.0118178.i, %.lr.ph182.preheader.i ], [ %.0118.i.3, %.thread169.sink.split.i.loopexit.unr-lcssa ]
  %lcmp.mod2233 = icmp ne i64 %xtraiter2230, 0
  call void @llvm.assume(i1 %lcmp.mod2233)
  br label %.lr.ph182.i.epil

.lr.ph182.i.epil:                                 ; preds = %.lr.ph182.i.epil, %.lr.ph182.i.epil.preheader
  %indvars.iv200.i.epil = phi i64 [ %indvars.iv200.i.epil.init, %.lr.ph182.i.epil.preheader ], [ %indvars.iv.next201.i.epil, %.lr.ph182.i.epil ] ; 2 uses
  %.0118180.i.epil = phi i64 [ %.0118180.i.epil.init, %.lr.ph182.i.epil.preheader ], [ %.0118.i.epil, %.lr.ph182.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph182.i.epil.preheader ], [ %epil.iter.next, %.lr.ph182.i.epil ]
  %i.abu = mul i64 %.0118180.i.epil, 10
  %i.abv = getelementptr inbounds nuw i8, ptr %i.wt, i64 %indvars.iv200.i.epil
  %i.abw = load i8, ptr %i.abv, align 1, !tbaa !231
  %i.abx = sext i8 %i.abw to i64
  %indvars.iv.next201.i.epil = add nuw nsw i64 %indvars.iv200.i.epil, 1
  %i.aby = add i64 %i.abu, -48
  %.0118.i.epil = add i64 %i.aby, %i.abx          ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter2230
  br i1 %epil.iter.cmp.not, label %.thread169.sink.split.i, label %.lr.ph182.i.epil, !llvm.loop !345

.thread169.sink.split.i:                          ; preds = %.thread169.sink.split.i.loopexit.unr-lcssa, %.lr.ph182.i.epil, %bb.gr, %._crit_edge189.i, %.preheader171.13.i
  %.0123174.sink237.i = phi i32 [ 0, %.preheader171.13.i ], [ %.0123185.lcssa230.i, %._crit_edge189.i ], [ %indvars1525.le, %bb.gr ], [ %indvars1525.le, %.lr.ph182.i.epil ], [ %indvars1525.le, %.thread169.sink.split.i.loopexit.unr-lcssa ] ; 2 uses
  %.1.sink.i = phi i64 [ 1, %.preheader171.13.i ], [ %i.aaf, %._crit_edge189.i ], [ %.0118178.i, %bb.gr ], [ %.0118.i.3, %.thread169.sink.split.i.loopexit.unr-lcssa ], [ %.0118.i.epil, %.lr.ph182.i.epil ]
  %i.abz = add i32 %i.tc, %.0123174.sink237.i
  %i.aca = sub i32 %.0130161.i, %i.abz
  %i.acb = call fastcc double @sqlite3Fp10Convert2(i64 noundef %.1.sink.i, i32 noundef %i.aca)
  %i.acc = fcmp oeq double %.0124.i, %i.acb
  %i.acd = add nsw i32 %.0123174.sink237.i, 1
  %.2.i = select i1 %i.acc, i32 %i.acd, i32 17
  br label %.thread169.i

.thread169.i:                                     ; preds = %.thread169.sink.split.i, %bb.gp, %bb.go, %bb.gn, %.thread167.i, %bb.gj
  %.4.i = phi i32 [ %i.ww, %bb.gj ], [ 17, %.thread167.i ], [ 17, %bb.gp ], [ 17, %bb.go ], [ 17, %bb.gn ], [ %.2.i, %.thread169.sink.split.i ] ; 4 uses
  %i.ace = sext i32 %.4.i to i64                  ; 2 uses
  %i.acf = getelementptr inbounds i8, ptr %i.wt, i64 %i.ace
  %i.acg = load i8, ptr %i.acf, align 1, !tbaa !231
  %i.ach = icmp sgt i8 %i.acg, 52
  br i1 %i.ach, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %.thread169.i, %bb.gs
  %indvars.iv210.i = phi i64 [ %indvars.iv.next211.i, %bb.gs ], [ %i.ace, %.thread169.i ]
  %indvars.iv.next211.i = add nsw i64 %indvars.iv210.i, -1 ; 3 uses
  %i.aci = getelementptr inbounds i8, ptr %i.wt, i64 %indvars.iv.next211.i ; 3 uses
  %i.acj = load i8, ptr %i.aci, align 1, !tbaa !231
  %i.ack = add i8 %i.acj, 1                       ; 2 uses
  store i8 %i.ack, ptr %i.aci, align 1, !tbaa !231
  %i.acl = icmp slt i8 %i.ack, 58
  br i1 %i.acl, label %.loopexit.i, label %bb.gs

bb.gs:                                            ; preds = %.preheader.i
  store i8 48, ptr %i.aci, align 1, !tbaa !231
  %i.acm = icmp eq i64 %indvars.iv.next211.i, 0
  br i1 %i.acm, label %bb.gt, label %.preheader.i

bb.gt:                                            ; preds = %bb.gs
  %i.acn = getelementptr inbounds i8, ptr %i.wt, i64 -1 ; 2 uses
  store i8 49, ptr %i.acn, align 1, !tbaa !231
  %i.aco = add nsw i32 %.4.i, 1
  %i.acp = load i32, ptr %i.af, align 4, !tbaa !336
  %i.acq = add nsw i32 %i.acp, 1
  store i32 %i.acq, ptr %i.af, align 4, !tbaa !336
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i, %bb.gt, %.thread169.i, %bb.gi, %bb.gh, %bb.gf
  %.2132.i = phi i32 [ %i.wb, %bb.gh ], [ %.4.i, %.thread169.i ], [ %.0130161.i, %bb.gi ], [ %i.wb, %bb.gf ], [ %i.aco, %bb.gt ], [ %.4.i, %.preheader.i ]
  %.1128.i = phi ptr [ %i.wg, %bb.gh ], [ %i.wt, %.thread169.i ], [ %i.wt, %bb.gi ], [ %i.wg, %bb.gf ], [ %i.acn, %bb.gt ], [ %i.wt, %.preheader.i ] ; 2 uses
  %i.acr = sext i32 %.2132.i to i64
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gu, %.loopexit.i
  %indvars.iv213.i = phi i64 [ %indvars.iv.next214.i, %bb.gu ], [ %i.acr, %.loopexit.i ] ; 3 uses
  %i.acs = getelementptr i8, ptr %.1128.i, i64 %indvars.iv213.i
  %i.act = getelementptr i8, ptr %i.acs, i64 -1
  %i.acu = load i8, ptr %i.act, align 1, !tbaa !231
  %i.acv = icmp eq i8 %i.acu, 48
  %indvars.iv.next214.i = add nsw i64 %indvars.iv213.i, -1
  br i1 %i.acv, label %bb.gu, label %bb.gv, !llvm.loop !346

bb.gv:                                            ; preds = %bb.gu
  %i.acw = trunc nsw i64 %indvars.iv213.i to i32
  store i32 %i.acw, ptr %3, align 8, !tbaa !335
  %.pr.pre = load i8, ptr %i.ad, align 2, !tbaa !332
  br label %sqlite3FpDecode.exit

sqlite3FpDecode.exit:                             ; preds = %bb.gv, %bb.fo
  %i.acx = phi i8 [ %i.sm, %bb.fo ], [ %.pr.pre, %bb.gv ]
  %.1128.sink.i = phi ptr [ %i.ag, %bb.fo ], [ %.1128.i, %bb.gv ] ; 2 uses
  store ptr %.1128.sink.i, ptr %i.ah, align 8, !tbaa !337
  switch i8 %i.acx, label %bb.gx [
    i8 0, label %sqlite3FpDecode.exit.sqlite3FpDecode.exit._crit_edge_crit_edge
    i8 2, label %bb.gw
  ]

sqlite3FpDecode.exit.sqlite3FpDecode.exit._crit_edge_crit_edge: ; preds = %sqlite3FpDecode.exit
  %.pre.pre.pre = load i32, ptr %i.af, align 4
  br label %sqlite3FpDecode.exit._crit_edge

bb.gw:                                            ; preds = %sqlite3FpDecode.exit
  %.not948 = icmp eq i8 %.175811661938, 0         ; 2 uses
  %i.acy = select i1 %.not948, ptr @.str.2, ptr @.str.1
  %i.acz = select i1 %.not948, i32 3, i32 4
  br label %sqlite3StrAccumSetError.exit.thread

bb.gx:                                            ; preds = %sqlite3FpDecode.exit
  %.not932 = icmp eq i8 %.175811661938, 0
  br i1 %.not932, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  store i8 57, ptr %.1128.sink.i, align 1, !tbaa !231
  store i32 1000, ptr %i.af, align 4, !tbaa !336
  store i32 1, ptr %3, align 8, !tbaa !335
  br label %sqlite3FpDecode.exit._crit_edge

bb.gz:                                            ; preds = %bb.gx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @.str.3, i64 5, i1 false)
  %i.ada = load i8, ptr %i.ae, align 1, !tbaa !334
  %i.adb = icmp eq i8 %i.ada, 45
  br i1 %i.adb, label %bb.hc, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %.not933 = icmp eq i8 %.176911601968, 0
  br i1 %.not933, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  store i8 %.176911601968, ptr %i.a, align 16, !tbaa !231
  br label %bb.hc

bb.hc:                                            ; preds = %bb.ha, %bb.hb, %bb.gz
  %.9820 = phi ptr [ %i.a, %bb.gz ], [ %i.a, %bb.hb ], [ %i.z, %bb.ha ] ; 2 uses
  %i.adc = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.9820) #59
  %i.add = trunc i64 %i.adc to i32
  %i.ade = and i32 %i.add, 1073741823
  br label %sqlite3StrAccumSetError.exit.thread

sqlite3FpDecode.exit._crit_edge:                  ; preds = %sqlite3FpDecode.exit.sqlite3FpDecode.exit._crit_edge_crit_edge, %bb.gy
  %.pre.ph = phi i32 [ %.pre.pre.pre, %sqlite3FpDecode.exit.sqlite3FpDecode.exit._crit_edge_crit_edge ], [ 1000, %bb.gy ] ; 3 uses
  %.pr = load i8, ptr %i.ae, align 1, !tbaa !334
  %i.adf = icmp eq i8 %.pr, 45
  br i1 %i.adf, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %sqlite3FpDecode.exit._crit_edge
  %i.adg = icmp eq i8 %.176311621955, 0
  %i.adh = icmp ne i8 %.176911601968, 0
  %or.cond8.not936.not1282 = select i1 %i.adg, i1 true, i1 %i.adh
  %or.cond11.not1279 = or i1 %or.cond8.not936.not1282, %i.rz
  %.not937 = icmp sgt i32 %.pre.ph, %.0688
  %or.cond = select i1 %or.cond11.not1279, i1 true, i1 %.not937
  %spec.select983 = select i1 %or.cond, i8 45, i8 0
  br label %bb.he

bb.he:                                            ; preds = %sqlite3FpDecode.exit._crit_edge.thread, %bb.hd, %sqlite3FpDecode.exit._crit_edge
  %.pre2065 = phi i32 [ %.pre.ph, %bb.hd ], [ %.pre.ph, %sqlite3FpDecode.exit._crit_edge ], [ 1, %sqlite3FpDecode.exit._crit_edge.thread ] ; 4 uses
  %.2741 = phi i8 [ %spec.select983, %bb.hd ], [ %.176911601968, %sqlite3FpDecode.exit._crit_edge ], [ %.176911601968, %sqlite3FpDecode.exit._crit_edge.thread ] ; 3 uses
  %i.adi = and i32 %.07842051, -9                 ; 2 uses
  %i.adj = icmp eq i32 %i.adi, 3
  br i1 %i.adj, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he
  %i.adk = xor i8 %.176311621955, 1
  %i.adl = icmp slt i32 %.pre2065, -3
  %i.adm = icmp sgt i32 %.pre2065, %.6805
  %or.cond968 = select i1 %i.adl, i1 true, i1 %i.adm ; 2 uses
  %i.adn = sub i32 0, %.pre2065
  %spec.select984.p = select i1 %or.cond968, i32 -1, i32 %i.adn
  %spec.select984 = add i32 %spec.select984.p, %.6805
  br label %bb.hh

bb.hg:                                            ; preds = %bb.he
  %i.ado = icmp eq i32 %i.adi, 1
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hf, %bb.hg
  %.7806 = phi i32 [ %.6805, %bb.hg ], [ %spec.select984, %bb.hf ] ; 5 uses
  %.1744 = phi i1 [ %i.ado, %bb.hg ], [ %or.cond968, %bb.hf ] ; 2 uses
  %.0711 = phi i8 [ %.176011641948, %bb.hg ], [ %i.adk, %bb.hf ] ; 2 uses
  %i.adp = add nsw i32 %.pre2065, -1              ; 2 uses
  %.0712 = select i1 %.1744, i32 0, i32 %i.adp    ; 8 uses
  %i.adq = icmp sgt i32 %.0712, 0
  %i.adr = call i32 @llvm.smax.i32(i32 %.0712, i32 0)
  %i.ads = zext nneg i32 %i.adr to i64
  %i.adt = sext i32 %.7806 to i64
  %i.adu = zext nneg i32 %.377611551998 to i64
  %i.adv = add nuw nsw i64 %i.adu, 10
  %i.adw = add nsw i64 %i.adv, %i.adt
  %i.adx = add nsw i64 %i.adw, %i.ads             ; 2 uses
  %i.ady = icmp ne i8 %.174711701932, 0
  %or.cond13 = select i1 %i.ady, i1 %i.adq, i1 false
  br i1 %or.cond13, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  %i.adz = add nuw nsw i32 %.0712, 2
end_hunk_0
begin_hunk_1_@sqlite3LockAndPrepare:bb.a
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %sqlite3SafetyCheckOk.exit.thread, %sqlite3SafetyCheckOk.exit
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 21, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.1807, i32 noundef 148759, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !11
  br label %sqlite3_mutex_leave.exit

bb.d:                                             ; preds = %sqlite3SafetyCheckOk.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28   ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %sqlite3_mutex_enter.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  tail call void %i.g(ptr noundef nonnull %i.f) #58, !inline_history !20
  br label %sqlite3_mutex_enter.exit

sqlite3_mutex_enter.exit:                         ; preds = %bb.d, %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 111 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !63
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %sqlite3BtreeEnterAll.exit

bb.f:                                             ; preds = %sqlite3_mutex_enter.exit
  tail call fastcc void @btreeEnterAll(ptr noundef nonnull %0)
  br label %sqlite3BtreeEnterAll.exit

sqlite3BtreeEnterAll.exit:                        ; preds = %sqlite3_mutex_enter.exit, %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 103 ; 2 uses
  %i.l = tail call fastcc i32 @sqlite3Prepare(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %6) ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.critedge5, label %.lr.ph

.lr.ph:                                           ; preds = %sqlite3BtreeEnterAll.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %.critedge.backedge
  %i.q = phi i32 [ %i.l, %.lr.ph ], [ %i.am, %.critedge.backedge ] ; 4 uses
  %.040 = phi i32 [ 0, %.lr.ph ], [ %.0.be, %.critedge.backedge ] ; 3 uses
  %i.r = load i8, ptr %i.k, align 1, !tbaa !563
  %.not = icmp eq i8 %i.r, 0
  br i1 %.not, label %bb.h, label %.critedge5

bb.h:                                             ; preds = %bb.g
  %i.s = add nsw i32 %.040, 1
  %i.t = icmp eq i32 %i.q, 513
  %i.u = icmp slt i32 %.040, 25
  %or.cond3 = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond3, label %.critedge.backedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = icmp eq i32 %i.q, 17
  br i1 %i.v, label %bb.j, label %.critedge5

bb.j:                                             ; preds = %bb.i
  %i.w = load i32, ptr %i.n, align 8, !tbaa !700
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %.preheader.i, label %sqlite3ResetOneSchema.exit

.preheader.i:                                     ; preds = %bb.j
  %i.y = load i32, ptr %i.o, align 8, !tbaa !64   ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph.i, label %sqlite3ResetOneSchema.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.l
  %i.aa = phi i32 [ %i.ai, %bb.l ], [ %i.y, %.preheader.i ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.l ], [ 0, %.preheader.i ] ; 2 uses
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !65
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.ab, i64 %indvars.iv.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !105 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 114
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !701
  %i.ah = and i16 %i.ag, 8
  %.not.i35 = icmp eq i16 %i.ah, 0
  br i1 %.not.i35, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  tail call void @sqlite3SchemaClear(ptr noundef nonnull %i.ae)
  %.pre.i = load i32, ptr %i.o, align 8, !tbaa !64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i
  %i.ai = phi i32 [ %i.aa, %.lr.ph.i ], [ %.pre.i, %bb.k ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next.i, %i.aj
  br i1 %i.ak, label %.lr.ph.i, label %sqlite3ResetOneSchema.exit, !llvm.loop !1058

sqlite3ResetOneSchema.exit:                       ; preds = %bb.l, %bb.j, %.preheader.i
  %i.al = icmp eq i32 %.040, 0
  br i1 %i.al, label %.critedge.backedge, label %.critedge5

.critedge.backedge:                               ; preds = %sqlite3ResetOneSchema.exit, %bb.h
  %.0.be = phi i32 [ %i.s, %bb.h ], [ 1, %sqlite3ResetOneSchema.exit ]
  %i.am = tail call fastcc i32 @sqlite3Prepare(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %6) ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.critedge5, label %bb.g, !llvm.loop !1059

.critedge5:                                       ; preds = %sqlite3ResetOneSchema.exit, %bb.g, %.critedge.backedge, %bb.i, %sqlite3BtreeEnterAll.exit
  %.lcssa = phi i32 [ 0, %sqlite3BtreeEnterAll.exit ], [ %i.q, %bb.i ], [ 0, %.critedge.backedge ], [ %i.q, %bb.g ], [ 17, %sqlite3ResetOneSchema.exit ] ; 2 uses
  %i.ao = load i8, ptr %i.h, align 1, !tbaa !63
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.m, label %sqlite3BtreeLeaveAll.exit

bb.m:                                             ; preds = %.critedge5
  tail call fastcc void @btreeLeaveAll(ptr noundef nonnull readonly %0)
  br label %sqlite3BtreeLeaveAll.exit

sqlite3BtreeLeaveAll.exit:                        ; preds = %.critedge5, %bb.m
  %i.aq = load i8, ptr %i.k, align 1, !tbaa !563
  %i.ar = icmp ne i8 %i.aq, 0
  %i.as = icmp ne i32 %.lcssa, 0
  %or.cond.i = or i1 %i.as, %i.ar
  br i1 %or.cond.i, label %bb.n, label %sqlite3ApiExit.exit

bb.n:                                             ; preds = %sqlite3BtreeLeaveAll.exit
  %i.at = tail call fastcc i32 @apiHandleError(ptr noundef nonnull %0, i32 noundef %.lcssa)
  br label %sqlite3ApiExit.exit

sqlite3ApiExit.exit:                              ; preds = %sqlite3BtreeLeaveAll.exit, %bb.n
  %.0.i36 = phi i32 [ %i.at, %bb.n ], [ 0, %sqlite3BtreeLeaveAll.exit ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 656
  store i32 0, ptr %i.au, align 8, !tbaa !1060
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !28  ; 2 uses
  %.not.i37 = icmp eq ptr %i.av, null
  br i1 %.not.i37, label %sqlite3_mutex_leave.exit, label %bb.o

bb.o:                                             ; preds = %sqlite3ApiExit.exit
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  tail call void %i.aw(ptr noundef nonnull %i.av) #58, !inline_history !23
  br label %sqlite3_mutex_leave.exit

sqlite3_mutex_leave.exit:                         ; preds = %bb.o, %sqlite3ApiExit.exit, %bb.c
  %.031 = phi i32 [ 21, %bb.c ], [ %.0.i36, %sqlite3ApiExit.exit ], [ %.0.i36, %bb.o ]
  ret i32 %.031
}

; Function Attrs: nounwind uwtable
define i32 @sqlite3_prepare_v3(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4, ptr noundef %5) #0 {
bb.a:
  %i.a = and i32 %3, 63
  %i.b = or disjoint i32 %i.a, 128
  %i.c = tail call fastcc i32 @sqlite3LockAndPrepare(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %i.b, ptr noundef null, ptr noundef %4, ptr noundef %5)
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define i32 @sqlite3_prepare16(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3, ptr nofree noundef writeonly captures(address_is_null) %4) #0 {
bb.a:
  %i.a = tail call fastcc i32 @sqlite3Prepare16(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 0, ptr noundef %3, ptr noundef %4)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3Prepare16(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef range(i32 0, 192) %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4, ptr nofree noundef writeonly captures(address_is_null) %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.sqlite3_value, align 8      ; 12 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  store ptr null, ptr %i.a, align 8, !tbaa !259
  store ptr null, ptr %4, align 8, !tbaa !522
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %sqlite3SafetyCheckOk.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 113
  %i.d = load i8, ptr %i.c, align 1, !tbaa !614
  switch i8 %i.d, label %sqlite3SafetyCheckOk.exit.thread [
    i8 118, label %sqlite3SafetyCheckOk.exit
    i8 -70, label %sqlite3SafetyCheckSickOrOk.exit.i
    i8 109, label %sqlite3SafetyCheckSickOrOk.exit.i
  ]

sqlite3SafetyCheckSickOrOk.exit.i:                ; preds = %bb.b, %bb.b
  br label %sqlite3SafetyCheckOk.exit.thread

sqlite3SafetyCheckOk.exit.thread:                 ; preds = %bb.a, %bb.b, %sqlite3SafetyCheckSickOrOk.exit.i
  %.str.1495.sink.i = phi ptr [ @.str.5, %bb.a ], [ @.str.651, %sqlite3SafetyCheckSickOrOk.exit.i ], [ @.str.1495, %bb.b ]
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 21, ptr noundef nonnull @.str.652, ptr noundef nonnull %.str.1495.sink.i), !inline_history !615
  br label %bb.c

sqlite3SafetyCheckOk.exit:                        ; preds = %bb.b
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %sqlite3SafetyCheckOk.exit.thread, %sqlite3SafetyCheckOk.exit
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 21, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.1807, i32 noundef 148910, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !11
  br label %sqlite3_mutex_leave.exit

bb.d:                                             ; preds = %sqlite3SafetyCheckOk.exit
  %i.f = icmp sgt i32 %2, -1
  br i1 %i.f, label %.preheader, label %.preheader80

.preheader:                                       ; preds = %bb.d
  %.not85 = icmp eq i32 %2, 0
  br i1 %.not85, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %sext90 = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge3
  %indvars.iv88 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next89, %.critedge3 ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv88 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !231
  %.not60 = icmp eq i8 %i.h, 0
  br i1 %.not60, label %bb.e, label %.critedge3

bb.e:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !231
  %.not61 = icmp eq i8 %i.j, 0
  br i1 %.not61, label %.critedge.loopexit, label %.critedge3

.critedge3:                                       ; preds = %.lr.ph, %bb.e
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 2 ; 3 uses
  %7 = icmp samesign ult i64 %indvars.iv.next89, %sext90
  br i1 %7, label %.lr.ph, label %.critedge.loopexit, !llvm.loop !1061

.preheader80:                                     ; preds = %bb.d, %.critedge5
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge5 ], [ 0, %bb.d ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !231
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %bb.f, label %.critedge5

bb.f:                                             ; preds = %.preheader80
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !231
  %.not59 = icmp eq i8 %i.n, 0
  br i1 %.not59, label %.critedge, label %.critedge5

.critedge5:                                       ; preds = %.preheader80, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  br label %.preheader80, !llvm.loop !1062

.critedge.loopexit:                               ; preds = %bb.e, %.critedge3
  %.053.ph = phi i64 [ %indvars.iv.next89, %.critedge3 ], [ %indvars.iv88, %bb.e ]
  %i.o = and i64 %.053.ph, 4294967295
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %.critedge.loopexit, %.preheader
  %.053 = phi i64 [ %i.o, %.critedge.loopexit ], [ 0, %.preheader ], [ %indvars.iv, %bb.f ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !28   ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %sqlite3_mutex_enter.exit, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  tail call void %i.r(ptr noundef nonnull %i.q) #58, !inline_history !20
  br label %sqlite3_mutex_enter.exit

sqlite3_mutex_enter.exit:                         ; preds = %.critedge, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %0, ptr %i.s, align 8, !tbaa !161
  %i.t = call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef nonnull %6, ptr noundef nonnull %1, i64 noundef %.053, i8 noundef zeroext 2, ptr noundef null), !inline_history !1063 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %i.v = load i16, ptr %i.u, align 4, !tbaa !166
  %i.w = and i16 %i.v, 2
  %.not.i.i = icmp eq i16 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 22 ; 2 uses
  br i1 %.not.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %sqlite3_mutex_enter.exit
  store i8 1, ptr %i.x, align 2, !tbaa !351
  br label %sqlite3VdbeChangeEncoding.exit.i

bb.i:                                             ; preds = %sqlite3_mutex_enter.exit
  %i.y = load i8, ptr %i.x, align 2, !tbaa !351
  %i.z = icmp eq i8 %i.y, 1
  br i1 %i.z, label %sqlite3VdbeChangeEncoding.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = call fastcc i32 @sqlite3VdbeMemTranslate(ptr noundef nonnull %6, i8 noundef zeroext 1), !inline_history !1064 ; 0 uses
  br label %sqlite3VdbeChangeEncoding.exit.i

sqlite3VdbeChangeEncoding.exit.i:                 ; preds = %bb.j, %bb.i, %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 103 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !563
  %.not.i63 = icmp eq i8 %i.ac, 0
  br i1 %.not.i63, label %sqlite3Utf16to8.exit, label %bb.k

bb.k:                                             ; preds = %sqlite3VdbeChangeEncoding.exit.i
  %i.ad = load i16, ptr %i.u, align 4, !tbaa !166
  %i.ae = and i16 %i.ad, -28672
  %.not.i4.i = icmp eq i16 %i.ae, 0
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ag = load i32, ptr %i.af, align 8
  %.not3.i.i = icmp eq i32 %i.ag, 0
  %or.cond.i = select i1 %.not.i4.i, i1 %.not3.i.i, i1 false
  br i1 %or.cond.i, label %sqlite3Utf16to8.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  call fastcc void @vdbeMemClear(ptr noundef nonnull %6), !inline_history !1063
  br label %sqlite3Utf16to8.exit.thread

sqlite3Utf16to8.exit.thread:                      ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  br label %sqlite3DbFree.exit

sqlite3Utf16to8.exit:                             ; preds = %sqlite3VdbeChangeEncoding.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !297 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  %.not62 = icmp eq ptr %.pre.i, null
  br i1 %.not62, label %sqlite3DbFree.exit, label %bb.m

bb.m:                                             ; preds = %sqlite3Utf16to8.exit
  %i.ah = call fastcc i32 @sqlite3LockAndPrepare(ptr noundef nonnull %0, ptr noundef nonnull %.pre.i, i32 noundef -1, i32 noundef %3, ptr noundef null, ptr noundef nonnull %4, ptr noundef nonnull %i.a)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !259 ; 2 uses
  %i.ai = icmp ne ptr %.pre, null
  %i.aj = icmp ne ptr %5, null
  %or.cond7 = and i1 %i.aj, %i.ai
  br i1 %or.cond7, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ak = ptrtoint ptr %.pre to i64
  %i.al = ptrtoint ptr %.pre.i to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 2 uses
  %i.an = and i64 %i.am, 2147483648
  %i.ao = icmp eq i64 %i.an, 0
  %i.ap = and i64 %i.am, 4294967295
  %i.aq = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.ap
  %.0.i64 = select i1 %i.ao, ptr %i.aq, ptr inttoptr (i64 -1 to ptr) ; 2 uses
  %i.ar = load i8, ptr %.pre.i, align 1, !tbaa !231 ; 2 uses
  %i.as = icmp ne i8 %i.ar, 0
  %i.at = icmp ult ptr %.pre.i, %.0.i64
  %i.au = select i1 %i.as, i1 %i.at, i1 false
  br i1 %i.au, label %.lr.ph.i, label %sqlite3Utf8CharLen.exit.thread

sqlite3Utf8CharLen.exit.thread:                   ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %sqlite3Utf16ByteLen.exit

.lr.ph.i:                                         ; preds = %bb.n, %.loopexit.i
  %i.aw = phi i8 [ %i.bc, %.loopexit.i ], [ %i.ar, %bb.n ]
  %.01116.i = phi ptr [ %.2.i, %.loopexit.i ], [ %.pre.i, %bb.n ]
  %.01215.i = phi i32 [ %i.bd, %.loopexit.i ], [ 0, %bb.n ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.01116.i, i64 1 ; 3 uses
  %i.ay = icmp ugt i8 %i.aw, -65
  br i1 %i.ay, label %.preheader.i, label %.lr.ph..loopexit_crit_edge.i

.lr.ph..loopexit_crit_edge.i:                     ; preds = %.lr.ph.i
  %.pre.i65 = load i8, ptr %i.ax, align 1, !tbaa !231
  br label %.loopexit.i

.preheader.i:                                     ; preds = %.lr.ph.i, %.preheader.i
  %.1.i = phi ptr [ %i.bb, %.preheader.i ], [ %i.ax, %.lr.ph.i ] ; 3 uses
  %i.az = load i8, ptr %.1.i, align 1, !tbaa !231 ; 2 uses
  %i.ba = icmp slt i8 %i.az, -64
  %i.bb = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  br i1 %i.ba, label %.preheader.i, label %.loopexit.i, !llvm.loop !1065

.loopexit.i:                                      ; preds = %.preheader.i, %.lr.ph..loopexit_crit_edge.i
  %i.bc = phi i8 [ %.pre.i65, %.lr.ph..loopexit_crit_edge.i ], [ %i.az, %.preheader.i ] ; 2 uses
  %.2.i = phi ptr [ %i.ax, %.lr.ph..loopexit_crit_edge.i ], [ %.1.i, %.preheader.i ] ; 2 uses
  %i.bd = add nuw nsw i32 %.01215.i, 1
  %i.be = icmp ne i8 %i.bc, 0
  %i.bf = icmp ult ptr %.2.i, %.0.i64
  %i.bg = select i1 %i.be, i1 %i.bf, i1 false
  br i1 %i.bg, label %.lr.ph.i, label %sqlite3Utf8CharLen.exit, !llvm.loop !1066

sqlite3Utf8CharLen.exit:                          ; preds = %.loopexit.i
  %i.bh = getelementptr i8, ptr %1, i64 %.053
  %i.bi = getelementptr i8, ptr %i.bh, i64 -1     ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %.not79 = icmp ugt ptr %i.bj, %i.bi
  br i1 %.not79, label %sqlite3Utf16ByteLen.exit, label %.lr.ph.i66

.lr.ph.i66:                                       ; preds = %sqlite3Utf8CharLen.exit, %bb.p
  %.028.i = phi i32 [ %i.bq, %bb.p ], [ 0, %sqlite3Utf8CharLen.exit ] ; 2 uses
  %.02027.i = phi ptr [ %.1.i69, %bb.p ], [ %i.bj, %sqlite3Utf8CharLen.exit ] ; 3 uses
  %i.bk = load i8, ptr %.02027.i, align 1, !tbaa !231
  %i.bl = getelementptr inbounds nuw i8, ptr %.02027.i, i64 2 ; 4 uses
  %i.bm = and i8 %i.bk, -4
  %or.cond.i67 = icmp ne i8 %i.bm, -40
  %.not.i68 = icmp ugt ptr %i.bl, %i.bi
  %or.cond25.i = select i1 %or.cond.i67, i1 true, i1 %.not.i68
  br i1 %or.cond25.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i66
  %i.bn = load i8, ptr %i.bl, align 1, !tbaa !231
  %i.bo = and i8 %i.bn, -4
  %or.cond26.i = icmp eq i8 %i.bo, -36
  %i.bp = getelementptr inbounds nuw i8, ptr %.02027.i, i64 4
  %spec.select.i = select i1 %or.cond26.i, ptr %i.bp, ptr %i.bl
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i66
  %.1.i69 = phi ptr [ %spec.select.i, %bb.o ], [ %i.bl, %.lr.ph.i66 ] ; 3 uses
  %i.bq = add nuw nsw i32 %.028.i, 1
  %i.br = icmp samesign ult i32 %.028.i, %.01215.i
  %i.bs = icmp ule ptr %.1.i69, %i.bi
  %i.bt = select i1 %i.br, i1 %i.bs, i1 false
  br i1 %i.bt, label %.lr.ph.i66, label %sqlite3Utf16ByteLen.exit, !llvm.loop !1067

sqlite3Utf16ByteLen.exit:                         ; preds = %bb.p, %sqlite3Utf8CharLen.exit.thread, %sqlite3Utf8CharLen.exit
  %.020.lcssa.i = phi ptr [ %i.bj, %sqlite3Utf8CharLen.exit ], [ %i.av, %sqlite3Utf8CharLen.exit.thread ], [ %.1.i69, %bb.p ]
  %i.bu = ptrtoint ptr %.020.lcssa.i to i64
  %i.bv = ptrtoint ptr %1 to i64
  %i.bw = xor i64 %i.bv, -1
  %i.bx = add i64 %i.bu, %i.bw
  %sext = shl i64 %i.bx, 32
  %i.by = ashr exact i64 %sext, 32
  %i.bz = getelementptr inbounds i8, ptr %1, i64 %i.by
  store ptr %i.bz, ptr %5, align 8, !tbaa !459
  br label %bb.q

bb.q:                                             ; preds = %sqlite3Utf16ByteLen.exit, %bb.m
  call fastcc void @sqlite3DbFreeNN(ptr noundef nonnull %0, ptr noundef nonnull %.pre.i)
  br label %sqlite3DbFree.exit

sqlite3DbFree.exit:                               ; preds = %sqlite3Utf16to8.exit.thread, %sqlite3Utf16to8.exit, %bb.q
  %.052109115 = phi i32 [ %i.ah, %bb.q ], [ 0, %sqlite3Utf16to8.exit ], [ 0, %sqlite3Utf16to8.exit.thread ] ; 2 uses
end_hunk_1
begin_hunk_2_@sqlite3_test_control:bb.a
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !27 ; 3 uses
  %.not45.i.i = icmp eq i32 %i.fs, 0
  %.not46.i.i = icmp eq i32 %i.fs, %i.fp
  %or.cond.i.i = select i1 %.not45.i.i, i1 true, i1 %.not46.i.i
  br i1 %or.cond.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ft = add i32 %i.fs, -1
  %i.fu = urem i32 %i.ft, 124                     ; 2 uses
  %i.fv = add i32 %i.fq, 1                        ; 2 uses
  store i32 %i.fv, ptr %i.fo, align 4, !tbaa !1342
  %i.fw = zext nneg i32 %i.fu to i64              ; 2 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.fw
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !231
  %.not4753.i.i = icmp eq i32 %i.fy, 0
  br i1 %.not4753.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.av, %.lr.ph.i.i
  %.054.i.i = phi i32 [ %spec.store.select.i.i, %.lr.ph.i.i ], [ %i.fu, %bb.av ]
  %i.fz = add i32 %.054.i.i, 1                    ; 2 uses
  %i.ga = icmp ugt i32 %i.fz, 123
  %spec.store.select.i.i = select i1 %i.ga, i32 0, i32 %i.fz ; 2 uses
  %i.gb = zext i32 %spec.store.select.i.i to i64  ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !231
  %.not47.i.i = icmp eq i32 %i.gd, 0
  br i1 %.not47.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !1343

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.av
  %.lcssa52.i.i = phi i64 [ %i.fw, %bb.av ], [ %i.gb, %.lr.ph.i.i ]
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.lcssa52.i.i
  %i.gf = load i32, ptr %i.fr, align 4, !tbaa !27
  store i32 %i.gf, ptr %i.ge, align 4, !tbaa !231
  br label %bb.aw

bb.aw:                                            ; preds = %._crit_edge.i.i, %bb.au
  %i.gg = phi i32 [ %i.fq, %bb.au ], [ %i.fv, %._crit_edge.i.i ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 124
  br i1 %exitcond.not.i.i, label %.backedge.i, label %bb.au, !llvm.loop !1344

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.ad
  br i1 %i.cz, label %.loopexit.i, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge.i
  %i.gh = load i32, ptr %.052.i, align 8, !tbaa !1337 ; 3 uses
  %.not.i.i72.i = icmp ult i32 %i.cl, %i.gh
  br i1 %.not.i.i72.i, label %.preheader.i.i.i, label %sqlite3BitvecTest.exit85.i

.preheader.i.i.i:                                 ; preds = %bb.ax, %bb.ay
  %.025.i.i.i = phi ptr [ %i.gp, %bb.ay ], [ %.052.i, %bb.ax ] ; 5 uses
  %.024.i.i.i = phi i32 [ %i.gl, %bb.ay ], [ %i.cl, %bb.ax ]
  %.024.fr.i.i.i = freeze i32 %.024.i.i.i         ; 6 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.025.i.i.i, i64 8
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !1341 ; 3 uses
  %.not30.i.i.i = icmp eq i32 %i.gj, 0
  br i1 %.not30.i.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.preheader.i.i.i
  %i.gk = udiv i32 %.024.fr.i.i.i, %i.gj
  %i.gl = urem i32 %.024.fr.i.i.i, %i.gj
  %i.gm = getelementptr inbounds nuw i8, ptr %.025.i.i.i, i64 16
  %i.gn = zext i32 %i.gk to i64
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.gn
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !231 ; 2 uses
  %.not32.not.i.i.i = icmp eq ptr %i.gp, null
  br i1 %.not32.not.i.i.i, label %sqlite3BitvecTest.exit85.i, label %.preheader.i.i.i

bb.az:                                            ; preds = %.preheader.i.i.i
  %i.gq = load i32, ptr %.025.i.i.i, align 8, !tbaa !1337
  %i.gr = icmp ult i32 %i.gq, 3969
  br i1 %i.gr, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.gs = getelementptr inbounds nuw i8, ptr %.025.i.i.i, i64 16
  %i.gt = lshr i32 %.024.fr.i.i.i, 3
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gu
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !231
  %i.gx = zext i8 %i.gw to i32
  %i.gy = and i32 %.024.fr.i.i.i, 7
  %i.gz = lshr i32 %i.gx, %i.gy
  %i.ha = and i32 %i.gz, 1
  br label %sqlite3BitvecTest.exit85.i

bb.bb:                                            ; preds = %bb.az
  %i.hb = add i32 %.024.fr.i.i.i, 1
  %i.hc = urem i32 %.024.fr.i.i.i, 124            ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.025.i.i.i, i64 16 ; 2 uses
  %i.he = zext nneg i32 %i.hc to i64
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.he
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !231 ; 2 uses
  %.not3136.i.i.i = icmp eq i32 %i.hg, 0
  br i1 %.not3136.i.i.i, label %sqlite3BitvecTest.exit85.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bb, %bb.bc
  %i.hh = phi i32 [ %i.ho, %bb.bc ], [ %i.hg, %bb.bb ]
  %.037.i.i.i = phi i32 [ %i.hl, %bb.bc ], [ %i.hc, %bb.bb ]
  %i.hi = icmp eq i32 %i.hh, %i.hb
  br i1 %i.hi, label %sqlite3BitvecTest.exit85.i, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i.i.i
  %i.hj = add i32 %.037.i.i.i, 1                  ; 2 uses
  %i.hk = icmp eq i32 %i.hj, 124
  %i.hl = select i1 %i.hk, i32 0, i32 %i.hj       ; 2 uses
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !231 ; 2 uses
  %.not31.i.i.i = icmp eq i32 %i.ho, 0
  br i1 %.not31.i.i.i, label %sqlite3BitvecTest.exit85.i, label %.lr.ph.i.i.i, !llvm.loop !1345

sqlite3BitvecTest.exit85.i:                       ; preds = %bb.ay, %bb.bc, %.lr.ph.i.i.i, %bb.bb, %bb.ba, %bb.ax
  %i.hp = phi i32 [ 1, %.lr.ph.i.i.i ], [ 0, %bb.ax ], [ 0, %bb.bb ], [ %i.ha, %bb.ba ], [ 0, %bb.bc ], [ 0, %bb.ay ]
  %i.hq = sub i32 %i.hp, %i.cl
  %i.hr = add i32 %i.hq, %i.gh                    ; 2 uses
  store i32 1, ptr %i.a, align 4, !tbaa !27
  br i1 %i.co, label %.loopexit.i, label %.lr.ph128.i

.lr.ph128.i:                                      ; preds = %sqlite3BitvecTest.exit85.i, %bb.bi
  %storemerge127.i = phi i32 [ %i.jj, %bb.bi ], [ 1, %sqlite3BitvecTest.exit85.i ] ; 6 uses
  %i.hs = lshr i32 %storemerge127.i, 3
  %i.ht = zext nneg i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw i8, ptr %.051.i, i64 %i.ht
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !231
  %i.hw = zext i8 %i.hv to i32
  %i.hx = and i32 %storemerge127.i, 7
  %i.hy = lshr i32 %i.hw, %i.hx
  %i.hz = and i32 %i.hy, 1
  %i.ia = add nsw i32 %storemerge127.i, -1        ; 2 uses
  %.not.i.i87.i = icmp ult i32 %i.ia, %i.gh
  br i1 %.not.i.i87.i, label %.preheader.i.i88.i, label %sqlite3BitvecTest.exit98.i

.preheader.i.i88.i:                               ; preds = %.lr.ph128.i, %bb.bd
  %.025.i.i89.i = phi ptr [ %i.ii, %bb.bd ], [ %.052.i, %.lr.ph128.i ] ; 5 uses
  %.024.i.i90.i = phi i32 [ %i.ie, %bb.bd ], [ %i.ia, %.lr.ph128.i ]
  %.024.fr.i.i91.i = freeze i32 %.024.i.i90.i     ; 6 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.025.i.i89.i, i64 8
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !1341 ; 3 uses
  %.not30.i.i92.i = icmp eq i32 %i.ic, 0
  br i1 %.not30.i.i92.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.preheader.i.i88.i
  %i.id = udiv i32 %.024.fr.i.i91.i, %i.ic
  %i.ie = urem i32 %.024.fr.i.i91.i, %i.ic
  %i.if = getelementptr inbounds nuw i8, ptr %.025.i.i89.i, i64 16
  %i.ig = zext i32 %i.id to i64
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.ig
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !231 ; 2 uses
  %.not32.not.i.i93.i = icmp eq ptr %i.ii, null
  br i1 %.not32.not.i.i93.i, label %sqlite3BitvecTest.exit98.i, label %.preheader.i.i88.i

bb.be:                                            ; preds = %.preheader.i.i88.i
  %i.ij = load i32, ptr %.025.i.i89.i, align 8, !tbaa !1337
  %i.ik = icmp ult i32 %i.ij, 3969
  br i1 %i.ik, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.il = getelementptr inbounds nuw i8, ptr %.025.i.i89.i, i64 16
  %i.im = lshr i32 %.024.fr.i.i91.i, 3
  %i.in = zext nneg i32 %i.im to i64
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.in
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !231
  %i.iq = zext i8 %i.ip to i32
  %i.ir = and i32 %.024.fr.i.i91.i, 7
  %i.is = lshr i32 %i.iq, %i.ir
  %i.it = and i32 %i.is, 1
  br label %sqlite3BitvecTest.exit98.i

bb.bg:                                            ; preds = %bb.be
  %i.iu = add i32 %.024.fr.i.i91.i, 1
  %i.iv = urem i32 %.024.fr.i.i91.i, 124          ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.025.i.i89.i, i64 16 ; 2 uses
  %i.ix = zext nneg i32 %i.iv to i64
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %i.ix
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !231 ; 2 uses
  %.not3136.i.i94.i = icmp eq i32 %i.iz, 0
  br i1 %.not3136.i.i94.i, label %sqlite3BitvecTest.exit98.i, label %.lr.ph.i.i95.i

.lr.ph.i.i95.i:                                   ; preds = %bb.bg, %bb.bh
  %i.ja = phi i32 [ %i.jh, %bb.bh ], [ %i.iz, %bb.bg ]
  %.037.i.i96.i = phi i32 [ %i.je, %bb.bh ], [ %i.iv, %bb.bg ]
  %i.jb = icmp eq i32 %i.ja, %i.iu
  br i1 %i.jb, label %sqlite3BitvecTest.exit98.i, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph.i.i95.i
  %i.jc = add i32 %.037.i.i96.i, 1                ; 2 uses
  %i.jd = icmp eq i32 %i.jc, 124
  %i.je = select i1 %i.jd, i32 0, i32 %i.jc       ; 2 uses
  %i.jf = zext nneg i32 %i.je to i64
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %i.jf
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !231 ; 2 uses
  %.not31.i.i97.i = icmp eq i32 %i.jh, 0
  br i1 %.not31.i.i97.i, label %sqlite3BitvecTest.exit98.i, label %.lr.ph.i.i95.i, !llvm.loop !1345

sqlite3BitvecTest.exit98.i:                       ; preds = %bb.bd, %bb.bh, %.lr.ph.i.i95.i, %bb.bg, %bb.bf, %.lr.ph128.i
  %i.ji = phi i32 [ 1, %.lr.ph.i.i95.i ], [ 0, %.lr.ph128.i ], [ 0, %bb.bg ], [ %i.it, %bb.bf ], [ 0, %bb.bh ], [ 0, %bb.bd ]
  %.not61.i = icmp eq i32 %i.hz, %i.ji
  br i1 %.not61.i, label %bb.bi, label %.loopexit.i

bb.bi:                                            ; preds = %sqlite3BitvecTest.exit98.i
  %i.jj = add nuw nsw i32 %storemerge127.i, 1     ; 2 uses
  store i32 %i.jj, ptr %i.a, align 4, !tbaa !27
  %exitcond.not.i = icmp eq i32 %storemerge127.i, %i.cl
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph128.i, !llvm.loop !1346

.loopexit.i:                                      ; preds = %bb.am, %bb.bi, %sqlite3BitvecTest.exit98.i, %sqlite3BitvecTest.exit85.i, %._crit_edge.i, %sqlite3_malloc64.exit.i
  %.050.i = phi i32 [ -1, %sqlite3_malloc64.exit.i ], [ %storemerge127.i, %sqlite3BitvecTest.exit98.i ], [ %i.hr, %sqlite3BitvecTest.exit85.i ], [ 0, %._crit_edge.i ], [ %i.hr, %bb.bi ], [ -1, %bb.am ] ; 2 uses
  br i1 %i.cy, label %sqlite3_free.exit.i, label %.loopexit.thread.i

.loopexit.thread.i:                               ; preds = %.loopexit.i, %bb.ac
  %.050167.i = phi i32 [ %.050.i, %.loopexit.i ], [ -1, %bb.ac ] ; 3 uses
  %i.jk = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i99.i = icmp eq i32 %i.jk, 0
  br i1 %.not.i99.i, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %.loopexit.thread.i
  %i.jl = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i100.i = icmp eq ptr %i.jl, null
  br i1 %.not.i.i100.i, label %sqlite3_mutex_enter.exit.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  call void %i.jm(ptr noundef nonnull %i.jl) #58, !inline_history !1347
  br label %sqlite3_mutex_enter.exit.i.i

sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.bk, %bb.bj
  %i.jn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.jo = call i32 %i.jn(ptr noundef nonnull %i.cw) #58, !inline_history !1348
  %i.jp = sext i32 %i.jo to i64
  %i.jq = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.jr = sub nsw i64 %i.jq, %i.jp
  store i64 %i.jr, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.js = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.jt = add nsw i64 %i.js, -1
  store i64 %i.jt, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.ju = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  call void %i.ju(ptr noundef nonnull %i.cw) #58, !inline_history !1349
  %i.jv = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.jv, null
  br i1 %.not.i4.i.i, label %sqlite3_free.exit.i, label %bb.bl

bb.bl:                                            ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.jw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  call void %i.jw(ptr noundef nonnull %i.jv) #58, !inline_history !1350
  br label %sqlite3_free.exit.i

bb.bm:                                            ; preds = %.loopexit.thread.i
  %i.jx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  call void %i.jx(ptr noundef nonnull %i.cw) #58, !inline_history !1349
  br label %sqlite3_free.exit.i

sqlite3_free.exit.i:                              ; preds = %bb.bm, %bb.bl, %sqlite3_mutex_enter.exit.i.i, %.loopexit.i, %sqlite3BitvecCreate.exit.i
  %.050111.i = phi i32 [ %.050167.i, %bb.bm ], [ %.050.i, %.loopexit.i ], [ %.050167.i, %sqlite3_mutex_enter.exit.i.i ], [ %.050167.i, %bb.bl ], [ -1, %sqlite3BitvecCreate.exit.i ]
  %i.jy = icmp eq ptr %.051.i, null
  br i1 %i.jy, label %sqlite3BitvecBuiltinTest.exit, label %bb.bn

bb.bn:                                            ; preds = %sqlite3_free.exit.i
  %i.jz = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i101.i = icmp eq i32 %i.jz, 0
  br i1 %.not.i101.i, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ka = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i102.i = icmp eq ptr %i.ka, null
  br i1 %.not.i.i102.i, label %sqlite3_mutex_enter.exit.i103.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.kb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  call void %i.kb(ptr noundef nonnull %i.ka) #58, !inline_history !1347
  br label %sqlite3_mutex_enter.exit.i103.i

sqlite3_mutex_enter.exit.i103.i:                  ; preds = %bb.bp, %bb.bo
  %i.kc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.kd = call i32 %i.kc(ptr noundef nonnull %.051.i) #58, !inline_history !1348
  %i.ke = sext i32 %i.kd to i64
  %i.kf = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.kg = sub nsw i64 %i.kf, %i.ke
  store i64 %i.kg, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.kh = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.ki = add nsw i64 %i.kh, -1
  store i64 %i.ki, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.kj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  call void %i.kj(ptr noundef nonnull %.051.i) #58, !inline_history !1349
  %i.kk = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i4.i104.i = icmp eq ptr %i.kk, null
  br i1 %.not.i4.i104.i, label %sqlite3BitvecBuiltinTest.exit, label %bb.bq

bb.bq:                                            ; preds = %sqlite3_mutex_enter.exit.i103.i
  %i.kl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  call void %i.kl(ptr noundef nonnull %i.kk) #58, !inline_history !1350
  br label %sqlite3BitvecBuiltinTest.exit

bb.br:                                            ; preds = %bb.bn
  %i.km = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  call void %i.km(ptr noundef nonnull %.051.i) #58, !inline_history !1349
  br label %sqlite3BitvecBuiltinTest.exit

sqlite3BitvecBuiltinTest.exit:                    ; preds = %sqlite3_free.exit.i, %sqlite3_mutex_enter.exit.i103.i, %bb.bq, %bb.br
  call fastcc void @sqlite3BitvecDestroy(ptr noundef %.052.i), !inline_history !1336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br label %sqlite3_randomness.exit

bb.bs:                                            ; preds = %bb.a
  %i.kn = load i32, ptr %1, align 16              ; 3 uses
  %i.ko = icmp ult i32 %i.kn, 41
  br i1 %i.ko, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.kq = load ptr, ptr %i.kp, align 16
  %i.kr = zext nneg i32 %i.kn to i64
  %i.ks = getelementptr i8, ptr %i.kq, i64 %i.kr
  %i.kt = add nuw nsw i32 %i.kn, 8
  store i32 %i.kt, ptr %1, align 16
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.kv = load ptr, ptr %i.ku, align 8            ; 2 uses
  %i.kw = getelementptr i8, ptr %i.kv, i64 8
  store ptr %i.kw, ptr %i.ku, align 8
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.kx = phi ptr [ %i.ks, %bb.bt ], [ %i.kv, %bb.bu ]
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !459 ; 3 uses
  store ptr %i.ky, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 400), align 8, !tbaa !730
  %.not.i100 = icmp eq ptr %i.ky, null
  br i1 %.not.i100, label %sqlite3_randomness.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.kz = call i32 %i.ky(i32 noundef 0) #58, !inline_history !731
  br label %sqlite3_randomness.exit

bb.bx:                                            ; preds = %bb.a
  %i.la = load i32, ptr %1, align 16              ; 5 uses
  %i.lb = icmp ult i32 %i.la, 41
  br i1 %i.lb, label %bb.by, label %.thread280

.thread280:                                       ; preds = %bb.bx
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ld = load ptr, ptr %i.lc, align 8            ; 2 uses
  %i.le = getelementptr i8, ptr %i.ld, i64 8
  store ptr %i.le, ptr %i.lc, align 8
  %i.lf = load ptr, ptr %i.ld, align 8, !tbaa !459
  br label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.lh = load ptr, ptr %i.lg, align 16
  %i.li = zext nneg i32 %i.la to i64
  %i.lj = getelementptr i8, ptr %i.lh, i64 %i.li
  %i.lk = add nuw nsw i32 %i.la, 8                ; 2 uses
  store i32 %i.lk, ptr %1, align 16
  %i.ll = load ptr, ptr %i.lj, align 8, !tbaa !459 ; 2 uses
  %i.lm = icmp ult i32 %i.la, 33
  br i1 %i.lm, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.ln = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.lo = load ptr, ptr %i.ln, align 16
  %i.lp = zext nneg i32 %i.lk to i64
  %i.lq = getelementptr i8, ptr %i.lo, i64 %i.lp
  %i.lr = add nuw nsw i32 %i.la, 16
  store i32 %i.lr, ptr %1, align 16
  br label %bb.cb

bb.ca:                                            ; preds = %.thread280, %bb.by
  %i.ls = phi ptr [ %i.lf, %.thread280 ], [ %i.ll, %bb.by ]
  %i.lt = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.lu = load ptr, ptr %i.lt, align 8            ; 2 uses
  %i.lv = getelementptr i8, ptr %i.lu, i64 8
  store ptr %i.lv, ptr %i.lt, align 8
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.lw = phi ptr [ %i.ll, %bb.bz ], [ %i.ls, %bb.ca ]
  %i.lx = phi ptr [ %i.lq, %bb.bz ], [ %i.lu, %bb.ca ]
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !459
  store ptr %i.lw, ptr @sqlite3Hooks.0, align 8, !tbaa !1236
  store ptr %i.ly, ptr @sqlite3Hooks.1, align 8, !tbaa !1239
  br label %sqlite3_randomness.exit

bb.cc:                                            ; preds = %bb.a
  %i.lz = load i32, ptr @sqlite3PendingByte, align 4, !tbaa !27 ; 2 uses
  %i.ma = load i32, ptr %1, align 16              ; 3 uses
  %i.mb = icmp ult i32 %i.ma, 41
  br i1 %i.mb, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.md = load ptr, ptr %i.mc, align 16
  %i.me = zext nneg i32 %i.ma to i64
  %i.mf = getelementptr i8, ptr %i.md, i64 %i.me
  %i.mg = add nuw nsw i32 %i.ma, 8
  store i32 %i.mg, ptr %1, align 16
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  %i.mh = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.mi = load ptr, ptr %i.mh, align 8            ; 2 uses
end_hunk_2
begin_hunk_3_@sqlite3MemRealValueNoRC:bb.a
  %i.w = icmp eq ptr %i.v, @sqlite3RCStrUnref
  br i1 %i.w, label %sqlite3VdbeMemZeroTerminateIfAble.exit, label %sqlite3VdbeMemZeroTerminateIfAble.exit.thread

bb.i:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !163
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !818 ; 2 uses
  %.not18.not.i = icmp sgt i32 %i.y, %i.aa
  br i1 %.not18.not.i, label %.sink.split.sink.split.i, label %sqlite3VdbeMemZeroTerminateIfAble.exit.thread

.sink.split.sink.split.i:                         ; preds = %sqlite3_msize.exit.i..sink.split.sink.split.i_crit_edge, %bb.i
  %.sink24.i = phi ptr [ %.sink24.i.pre, %sqlite3_msize.exit.i..sink.split.sink.split.i_crit_edge ], [ %i.c, %bb.i ]
  %.sink.i = phi i32 [ %i.t, %sqlite3_msize.exit.i..sink.split.sink.split.i_crit_edge ], [ %i.aa, %bb.i ]
  %i.ab = sext i32 %.sink.i to i64
  %i.ac = getelementptr inbounds i8, ptr %.sink24.i, i64 %i.ab
  store i8 0, ptr %i.ac, align 1, !tbaa !231
  br label %sqlite3VdbeMemZeroTerminateIfAble.exit

sqlite3VdbeMemZeroTerminateIfAble.exit:           ; preds = %bb.h, %.sink.split.sink.split.i
  %i.ad = load i16, ptr %i.h, align 4, !tbaa !166
  %i.ae = or i16 %i.ad, 512
  store i16 %i.ae, ptr %i.h, align 4, !tbaa !166
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !297
  br label %bb.j

bb.j:                                             ; preds = %sqlite3VdbeMemZeroTerminateIfAble.exit, %bb.d
  %i.af = phi ptr [ %.pre, %sqlite3VdbeMemZeroTerminateIfAble.exit ], [ %i.c, %bb.d ]
  %i.ag = call fastcc i32 @sqlite3AtoF(ptr noundef %i.af, ptr noundef nonnull %i.a), !inline_history !2285 ; 0 uses
  br label %sqlite3MemRealValueRC.exit

sqlite3VdbeMemZeroTerminateIfAble.exit.thread:    ; preds = %bb.h, %bb.i, %bb.e, %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !818
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %sqlite3VdbeMemZeroTerminateIfAble.exit.thread
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !330
  br label %sqlite3MemRealValueRC.exit

bb.l:                                             ; preds = %sqlite3VdbeMemZeroTerminateIfAble.exit.thread
  %i.ak = call fastcc i32 @sqlite3MemRealValueRCSlowPath(ptr noundef nonnull %0, ptr noundef nonnull %i.a), !inline_history !2285 ; 0 uses
  br label %sqlite3MemRealValueRC.exit

sqlite3MemRealValueRC.exit:                       ; preds = %bb.b, %bb.j, %bb.k, %bb.l
  %i.al = load double, ptr %i.a, align 8, !tbaa !330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  ret double %i.al
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3MemRealValueRC(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !297  ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store double 0.000000e+00, ptr %1, align 8, !tbaa !330
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.e = load i8, ptr %i.d, align 2, !tbaa !351
  %i.f = icmp eq i8 %i.e, 1
  br i1 %i.f, label %bb.d, label %sqlite3VdbeMemZeroTerminateIfAble.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.h = load i16, ptr %i.g, align 4, !tbaa !166  ; 2 uses
  %i.i = and i16 %i.h, 512
  %.not = icmp eq i16 %i.i, 0
  br i1 %.not, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.j = zext i16 %i.h to i32                     ; 2 uses
  %i.k = and i32 %i.j, 24578
  %.not.i = icmp eq i32 %i.k, 2
  br i1 %.not.i, label %bb.f, label %sqlite3VdbeMemZeroTerminateIfAble.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.l = and i32 %i.j, 4096
  %.not17.i = icmp eq i32 %i.l, 0
  br i1 %.not17.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !827  ; 2 uses
  %i.o = icmp eq ptr %i.n, @sqlite3_free
  br i1 %i.o, label %sqlite3_msize.exit.i, label %bb.h

sqlite3_msize.exit.i:                             ; preds = %bb.g
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.q = tail call i32 %i.p(ptr noundef nonnull %i.b) #58, !inline_history !839
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !818  ; 2 uses
  %i.t = add nsw i32 %i.s, 1
  %.not19.i = icmp ult i32 %i.q, %i.t
  br i1 %.not19.i, label %thread-pre-split.i, label %sqlite3_msize.exit.i..sink.split.sink.split.i_crit_edge

sqlite3_msize.exit.i..sink.split.sink.split.i_crit_edge: ; preds = %sqlite3_msize.exit.i
  %.sink24.i.pre = load ptr, ptr %i.a, align 8, !tbaa !297
  br label %.sink.split.sink.split.i

thread-pre-split.i:                               ; preds = %sqlite3_msize.exit.i
  %.pr.i = load ptr, ptr %i.m, align 8, !tbaa !827
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split.i, %bb.g
  %i.u = phi ptr [ %.pr.i, %thread-pre-split.i ], [ %i.n, %bb.g ]
  %i.v = icmp eq ptr %i.u, @sqlite3RCStrUnref
  br i1 %i.v, label %sqlite3VdbeMemZeroTerminateIfAble.exit, label %sqlite3VdbeMemZeroTerminateIfAble.exit.thread

bb.i:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !163
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !818  ; 2 uses
  %.not18.not.i = icmp sgt i32 %i.x, %i.z
  br i1 %.not18.not.i, label %.sink.split.sink.split.i, label %sqlite3VdbeMemZeroTerminateIfAble.exit.thread

.sink.split.sink.split.i:                         ; preds = %sqlite3_msize.exit.i..sink.split.sink.split.i_crit_edge, %bb.i
  %.sink24.i = phi ptr [ %.sink24.i.pre, %sqlite3_msize.exit.i..sink.split.sink.split.i_crit_edge ], [ %i.b, %bb.i ]
  %.sink.i = phi i32 [ %i.s, %sqlite3_msize.exit.i..sink.split.sink.split.i_crit_edge ], [ %i.z, %bb.i ]
  %i.aa = sext i32 %.sink.i to i64
  %i.ab = getelementptr inbounds i8, ptr %.sink24.i, i64 %i.aa
  store i8 0, ptr %i.ab, align 1, !tbaa !231
  br label %sqlite3VdbeMemZeroTerminateIfAble.exit

sqlite3VdbeMemZeroTerminateIfAble.exit:           ; preds = %bb.h, %.sink.split.sink.split.i
  %i.ac = load i16, ptr %i.g, align 4, !tbaa !166
  %i.ad = or i16 %i.ac, 512
  store i16 %i.ad, ptr %i.g, align 4, !tbaa !166
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !297
  br label %bb.j

bb.j:                                             ; preds = %sqlite3VdbeMemZeroTerminateIfAble.exit, %bb.d
  %i.ae = phi ptr [ %.pre, %sqlite3VdbeMemZeroTerminateIfAble.exit ], [ %i.b, %bb.d ]
  %i.af = tail call fastcc i32 @sqlite3AtoF(ptr noundef %i.ae, ptr noundef %1)
  br label %bb.m

sqlite3VdbeMemZeroTerminateIfAble.exit.thread:    ; preds = %bb.h, %bb.i, %bb.e, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !818
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %sqlite3VdbeMemZeroTerminateIfAble.exit.thread
  store double 0.000000e+00, ptr %1, align 8, !tbaa !330
  br label %bb.m

bb.l:                                             ; preds = %sqlite3VdbeMemZeroTerminateIfAble.exit.thread
  %i.aj = tail call fastcc i32 @sqlite3MemRealValueRCSlowPath(ptr noundef nonnull %0, ptr noundef %1)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.af, %bb.j ], [ 0, %bb.k ], [ %i.aj, %bb.l ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sqlite3MemRealValueRCSlowPath(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) unnamed_addr #5 {
bb.a:
  store double 0.000000e+00, ptr %1, align 8, !tbaa !330
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.b = load i8, ptr %i.a, align 2, !tbaa !351
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !297  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !818
  %i.i = sext i32 %i.h to i64                     ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %sqlite3DbStrNDup.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !161
  %i.k = add nsw i64 %i.i, 1
  %i.l = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.j, i64 noundef %i.k), !inline_history !2286 ; 5 uses
  %.not9.i = icmp eq ptr %i.l, null
  br i1 %.not9.i, label %sqlite3DbStrNDup.exit.thread, label %sqlite3DbFree.exit

sqlite3DbFree.exit:                               ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull align 1 %i.f, i64 range(i64 -2147483648, 4294967296) %i.i, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  store i8 0, ptr %i.m, align 1, !tbaa !231
  %i.n = tail call fastcc i32 @sqlite3AtoF(ptr noundef nonnull %i.l, ptr noundef nonnull %1)
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !161
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.o, ptr noundef nonnull %i.l)
  br label %sqlite3DbStrNDup.exit.thread

bb.d:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !818  ; 3 uses
  %i.r = and i32 %i.q, -2                         ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !161  ; 2 uses
  %i.u = ashr i32 %i.q, 1
  %i.v = add nsw i32 %i.u, 2
  %i.w = sext i32 %i.v to i64                     ; 2 uses
  %.not.i58 = icmp eq ptr %i.t, null
  br i1 %.not.i58, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.t, i64 noundef %i.w), !inline_history !617
  br label %sqlite3DbMallocRaw.exit

bb.f:                                             ; preds = %bb.d
  %i.y = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.w), !inline_history !617
  br label %sqlite3DbMallocRaw.exit

sqlite3DbMallocRaw.exit:                          ; preds = %bb.e, %bb.f
  %.0.i = phi ptr [ %i.x, %bb.e ], [ %i.y, %bb.f ] ; 6 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %sqlite3DbStrNDup.exit.thread, label %bb.g

bb.g:                                             ; preds = %sqlite3DbMallocRaw.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !297 ; 2 uses
  %i.ab = load i8, ptr %i.a, align 2, !tbaa !351
  %i.ac = icmp eq i8 %i.ab, 2
  %i.ad = icmp sgt i32 %i.q, 1                    ; 2 uses
  br i1 %i.ac, label %.preheader, label %.preheader64

.preheader64:                                     ; preds = %bb.g
  br i1 %i.ad, label %.lr.ph.preheader, label %sqlite3DbFree.exit60

.lr.ph.preheader:                                 ; preds = %.preheader64
  %2 = add nsw i32 %i.r, -1
  %sext = sext i32 %2 to i64
  br label %.lr.ph

.preheader:                                       ; preds = %bb.g
  br i1 %i.ad, label %.lr.ph74.preheader, label %sqlite3DbFree.exit60

.lr.ph74.preheader:                               ; preds = %.preheader
  %3 = add nsw i32 %i.r, -1
  %sext92 = sext i32 %3 to i64
  br label %.lr.ph74

.lr.ph74:                                         ; preds = %.lr.ph74.preheader, %bb.h
  %indvars.iv90 = phi i64 [ 0, %.lr.ph74.preheader ], [ %indvars.iv.next91, %bb.h ] ; 3 uses
  %indvars.iv88 = phi i64 [ 0, %.lr.ph74.preheader ], [ %indvars.iv.next89, %bb.h ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv90 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !231
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i, i64 %indvars.iv88
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !231
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !231
  %.not55 = icmp eq i8 %i.ai, 0
  br i1 %.not55, label %bb.h, label %sqlite3DbFree.exit60.loopexit.split.loop.exit104

bb.h:                                             ; preds = %.lr.ph74
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 2 ; 3 uses
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %4 = icmp slt i64 %indvars.iv.next91, %sext92
  br i1 %4, label %.lr.ph74, label %sqlite3DbFree.exit60.loopexit.split.loop.exit104, !llvm.loop !2287

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %indvars.iv83 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next84, %bb.i ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv83 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !231
  %.not54 = icmp eq i8 %i.ak, 0
  br i1 %.not54, label %bb.i, label %sqlite3DbFree.exit60.loopexit98.split.loop.exit101

bb.i:                                             ; preds = %.lr.ph
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !231
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i, i64 %indvars.iv
  store i8 %i.am, ptr %i.an, align 1, !tbaa !231
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 2 ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %5 = icmp slt i64 %indvars.iv.next84, %sext
  br i1 %5, label %.lr.ph, label %sqlite3DbFree.exit60.loopexit98.split.loop.exit101, !llvm.loop !2288

sqlite3DbFree.exit60.loopexit.split.loop.exit104: ; preds = %bb.h, %.lr.ph74
  %.248.ph.in = phi i64 [ %indvars.iv90, %.lr.ph74 ], [ %indvars.iv.next91, %bb.h ]
  %.2.ph.in = phi i64 [ %indvars.iv88, %.lr.ph74 ], [ %indvars.iv.next89, %bb.h ]
  %i.ao = trunc i64 %.248.ph.in to i32
  br label %sqlite3DbFree.exit60

sqlite3DbFree.exit60.loopexit98.split.loop.exit101: ; preds = %bb.i, %.lr.ph
  %.248.ph81.in = phi i64 [ %indvars.iv.next84, %bb.i ], [ %indvars.iv83, %.lr.ph ]
  %.2.ph82.in = phi i64 [ %indvars.iv.next, %bb.i ], [ %indvars.iv, %.lr.ph ]
  %i.ap = trunc i64 %.248.ph81.in to i32
  br label %sqlite3DbFree.exit60

sqlite3DbFree.exit60:                             ; preds = %sqlite3DbFree.exit60.loopexit98.split.loop.exit101, %sqlite3DbFree.exit60.loopexit.split.loop.exit104, %.preheader64, %.preheader
  %.248 = phi i32 [ 0, %.preheader64 ], [ 0, %.preheader ], [ %i.ao, %sqlite3DbFree.exit60.loopexit.split.loop.exit104 ], [ %i.ap, %sqlite3DbFree.exit60.loopexit98.split.loop.exit101 ]
  %.2 = phi i64 [ 0, %.preheader64 ], [ 0, %.preheader ], [ %.2.ph.in, %sqlite3DbFree.exit60.loopexit.split.loop.exit104 ], [ %.2.ph82.in, %sqlite3DbFree.exit60.loopexit98.split.loop.exit101 ]
  %i.aq = and i64 %.2, 4294967295
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.aq
  store i8 0, ptr %i.ar, align 1, !tbaa !231
  %i.as = tail call fastcc i32 @sqlite3AtoF(ptr noundef nonnull %.0.i, ptr noundef nonnull %1)
  %i.at = icmp slt i32 %.248, %i.r
  %spec.store.select = select i1 %i.at, i32 -100, i32 %i.as
  %i.au = load ptr, ptr %i.s, align 8, !tbaa !161
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.au, ptr noundef nonnull %.0.i)
  br label %sqlite3DbStrNDup.exit.thread

sqlite3DbStrNDup.exit.thread:                     ; preds = %bb.b, %bb.c, %sqlite3DbMallocRaw.exit, %sqlite3DbFree.exit60, %sqlite3DbFree.exit
  %.051 = phi i32 [ 0, %sqlite3DbMallocRaw.exit ], [ %i.n, %sqlite3DbFree.exit ], [ %spec.store.select, %sqlite3DbFree.exit60 ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.051
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @memIntValue(ptr nofree noundef readonly captures(none) %0) unnamed_addr #34 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  store i64 0, ptr %i.a, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !297
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !818
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.g = load i8, ptr %i.f, align 2, !tbaa !351
  %i.h = call fastcc i32 @sqlite3Atoi64(ptr noundef %i.c, ptr noundef nonnull %i.a, i32 noundef %i.e, i8 noundef zeroext %i.g) ; 0 uses
  %i.i = load i64, ptr %i.a, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  ret i64 %i.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 -1, 4) i32 @sqlite3Atoi64(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #19 {
bb.a:
  %i.a = zext i8 %3 to i32                        ; 3 uses
  %i.b = icmp eq i8 %3, 1
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %2, -2                           ; 2 uses
  %i.d = sub nsw i32 3, %i.a                      ; 2 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.b
  %narrow = sub nsw i32 3, %i.a
  %i.f = sext i32 %narrow to i64
  %i.g = sext i32 %i.c to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ %i.f, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %0, i64 %indvars.iv
  %i.i = load i8, ptr %i.h, align 1, !tbaa !231
  %.not184.not.not = icmp ne i8 %i.i, 0           ; 2 uses
  br i1 %.not184.not.not, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, 2   ; 3 uses
  %i.j = icmp slt i64 %indvars.iv.next, %i.g
  br i1 %i.j, label %.lr.ph, label %.critedge.loopexit, !llvm.loop !2289

.critedge.loopexit:                               ; preds = %bb.c, %.lr.ph
  %.090.lcssa.ph.in = phi i64 [ %indvars.iv.next, %bb.c ], [ %indvars.iv, %.lr.ph ]
  %.090.lcssa.ph = trunc i64 %.090.lcssa.ph.in to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.b
  %.090.lcssa = phi i32 [ %i.d, %bb.b ], [ %.090.lcssa.ph, %.critedge.loopexit ]
  %.lcssa119 = phi i1 [ false, %bb.b ], [ %.not184.not.not, %.critedge.loopexit ]
  %i.k = xor i32 %.090.lcssa, 1
  %i.l = and i32 %i.a, 1
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %.critedge
  %.096 = phi ptr [ %i.n, %.critedge ], [ %0, %bb.a ] ; 3 uses
  %.094 = phi i32 [ 2, %.critedge ], [ 1, %bb.a ] ; 7 uses
  %.089 = phi i1 [ %.lcssa119, %.critedge ], [ false, %bb.a ] ; 2 uses
  %.pn.in = phi i32 [ %i.k, %.critedge ], [ %2, %bb.a ]
  %.pn = sext i32 %.pn.in to i64
  %.087 = getelementptr inbounds i8, ptr %0, i64 %.pn ; 7 uses
  %i.o = icmp ult ptr %.096, %.087
  br i1 %i.o, label %.lr.ph126, label %.critedge110

.lr.ph126:                                        ; preds = %bb.d
  %i.p = zext nneg i32 %.094 to i64               ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph126, %bb.f
  %.197125 = phi ptr [ %.096, %.lr.ph126 ], [ %i.v, %bb.f ] ; 5 uses
  %i.q = load i8, ptr %.197125, align 1, !tbaa !231 ; 2 uses
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !231
  %i.u = and i8 %i.t, 1
  %.not = icmp eq i8 %i.u, 0
  br i1 %.not, label %.critedge2, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.197125, i64 %i.p ; 3 uses
  %i.w = icmp ult ptr %i.v, %.087
  br i1 %i.w, label %bb.e, label %.critedge110, !llvm.loop !2290

.critedge2:                                       ; preds = %bb.e
  switch i8 %i.q, label %.critedge110 [
    i8 45, label %bb.g
    i8 43, label %bb.h
  ]

bb.g:                                             ; preds = %.critedge2
  %i.x = getelementptr inbounds nuw i8, ptr %.197125, i64 %i.p
  br label %.critedge110

bb.h:                                             ; preds = %.critedge2
  %i.y = getelementptr inbounds nuw i8, ptr %.197125, i64 %i.p
  br label %.critedge110

.critedge110:                                     ; preds = %bb.f, %bb.d, %.critedge2, %bb.g, %bb.h
  %.2 = phi ptr [ %i.x, %bb.g ], [ %i.y, %bb.h ], [ %.197125, %.critedge2 ], [ %.096, %bb.d ], [ %i.v, %bb.f ] ; 4 uses
  %.not104 = phi i1 [ false, %bb.g ], [ true, %bb.h ], [ true, %.critedge2 ], [ true, %bb.d ], [ true, %bb.f ] ; 5 uses
  %i.z = icmp ult ptr %.2, %.087
  br i1 %i.z, label %.lr.ph129, label %.critedge4

.lr.ph129:                                        ; preds = %.critedge110
  %i.aa = zext nneg i32 %.094 to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph129, %bb.j
  %.3128 = phi ptr [ %.2, %.lr.ph129 ], [ %i.ad, %bb.j ] ; 3 uses
  %i.ab = load i8, ptr %.3128, align 1, !tbaa !231
  %i.ac = icmp eq i8 %i.ab, 48
  br i1 %i.ac, label %bb.j, label %.critedge4

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.3128, i64 %i.aa ; 3 uses
  %i.ae = icmp ult ptr %i.ad, %.087
  br i1 %i.ae, label %bb.i, label %.critedge4, !llvm.loop !2291

.critedge4:                                       ; preds = %bb.i, %bb.j, %.critedge110
  %.3.lcssa = phi ptr [ %.2, %.critedge110 ], [ %i.ad, %bb.j ], [ %.3128, %bb.i ] ; 8 uses
  %.not143 = icmp ult ptr %.3.lcssa, %.087
  br i1 %.not143, label %.lr.ph135.preheader, label %.critedge6.thread

.lr.ph135.preheader:                              ; preds = %.critedge4
  %i.af = zext nneg i32 %.094 to i64
  br label %.lr.ph135

.lr.ph135:                                        ; preds = %.lr.ph135.preheader, %bb.k
  %indvars.iv152 = phi i64 [ 0, %.lr.ph135.preheader ], [ %indvars.iv.next153, %bb.k ] ; 3 uses
  %.093133 = phi i64 [ 0, %.lr.ph135.preheader ], [ %i.an, %bb.k ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 %indvars.iv152
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !231
  %i.ai = sext i8 %i.ah to i32
  %i.aj = add nsw i32 %i.ai, -48                  ; 2 uses
  %i.ak = icmp ult i32 %i.aj, 10
  br i1 %i.ak, label %bb.k, label %.critedge6

bb.k:                                             ; preds = %.lr.ph135
  %i.al = mul i64 %.093133, 10
  %i.am = zext nneg i32 %i.aj to i64
  %i.an = add i64 %i.al, %i.am                    ; 2 uses
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, %i.af ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 %indvars.iv.next153
  %.not144 = icmp ult ptr %i.ao, %.087
  br i1 %.not144, label %.lr.ph135, label %.critedge6, !llvm.loop !2292

.critedge6:                                       ; preds = %.lr.ph135, %bb.k
  %.093.lcssa.ph = phi i64 [ %.093133, %.lr.ph135 ], [ %i.an, %bb.k ] ; 2 uses
  %.191.lcssa.ph.in = phi i64 [ %indvars.iv152, %.lr.ph135 ], [ %indvars.iv.next153, %bb.k ]
  %.lcssa116.ph = phi i1 [ %.089, %.lr.ph135 ], [ true, %bb.k ] ; 2 uses
  %.191.lcssa.ph = trunc i64 %.191.lcssa.ph.in to i32 ; 2 uses
  %i.ap = icmp slt i64 %.093.lcssa.ph, 0
  br i1 %i.ap, label %bb.l, label %.critedge6.thread

bb.l:                                             ; preds = %.critedge6
  %i.aq = select i1 %.not104, i64 9223372036854775807, i64 -9223372036854775808
  br label %bb.m

.critedge6.thread:                                ; preds = %.critedge4, %.critedge6
  %.lcssa116175 = phi i1 [ %.lcssa116.ph, %.critedge6 ], [ true, %.critedge4 ]
  %.191.lcssa173 = phi i32 [ %.191.lcssa.ph, %.critedge6 ], [ 0, %.critedge4 ]
  %.093.lcssa171 = phi i64 [ %.093.lcssa.ph, %.critedge6 ], [ 0, %.critedge4 ] ; 2 uses
  %i.ar = sub nsw i64 0, %.093.lcssa171
  %spec.select183 = select i1 %.not104, i64 %.093.lcssa171, i64 %i.ar
  br label %bb.m

bb.m:                                             ; preds = %.critedge6.thread, %bb.l
  %.sink = phi i64 [ %spec.select183, %.critedge6.thread ], [ %i.aq, %bb.l ]
  %.lcssa116174 = phi i1 [ %.lcssa116175, %.critedge6.thread ], [ %.lcssa116.ph, %bb.l ]
  %.191.lcssa172 = phi i32 [ %.191.lcssa173, %.critedge6.thread ], [ %.191.lcssa.ph, %bb.l ] ; 4 uses
  store i64 %.sink, ptr %1, align 8, !tbaa !21
  %i.as = icmp eq i32 %.191.lcssa172, 0
  %i.at = icmp eq ptr %.2, %.3.lcssa
  %or.cond = and i1 %i.as, %i.at
  br i1 %or.cond, label %.loopexit, label %bb.n

end_hunk_3
begin_hunk_4_@sqlite3VdbeExec:bb.a
  %i.eml = sext i32 %i.emk to i64
  %i.emm = icmp sle i64 %.03033, %i.eml
  %cond.fr5070 = freeze i1 %i.emm
  br i1 %cond.fr5070, label %.thread4743, label %.critedge

bb.ahg:                                           ; preds = %bb.h, %bb.h
  %i.emn = load i32, ptr %i.fs, align 4, !tbaa !27
  %i.emo = add i32 %i.emn, 1
  store i32 %i.emo, ptr %i.fs, align 4, !tbaa !27
  br label %bb.ahh

bb.ahh:                                           ; preds = %bb.ahg, %bb.h
  %i.emp = load ptr, ptr %i.ca, align 8, !tbaa !989
  %i.emq = getelementptr inbounds nuw i8, ptr %.02972, i64 4
  %i.emr = load i32, ptr %i.emq, align 4, !tbaa !572
  %i.ems = sext i32 %i.emr to i64
  %i.emt = getelementptr inbounds [8 x i8], ptr %i.emp, i64 %i.ems
  %i.emu = load ptr, ptr %i.emt, align 8, !tbaa !994 ; 5 uses
  %i.emv = load i8, ptr %i.emu, align 8, !tbaa !231
  %i.emw = icmp eq i8 %i.emv, 1
  %i.emx = getelementptr i8, ptr %i.emu, i64 40
  %.val4094 = load ptr, ptr %i.emx, align 8, !tbaa !231 ; 18 uses
  br i1 %i.emw, label %bb.ahi, label %bb.alg

bb.ahi:                                           ; preds = %bb.ahh
  %i.emy = getelementptr inbounds nuw i8, ptr %.val4094, i64 88
  %i.emz = load i8, ptr %i.emy, align 8, !tbaa !231
  %i.ena = icmp eq i8 %i.emz, 0
  br i1 %i.ena, label %bb.ahj, label %bb.ahl

bb.ahj:                                           ; preds = %bb.ahi
  %i.enb = getelementptr inbounds nuw i8, ptr %.val4094, i64 56 ; 2 uses
  %i.enc = load ptr, ptr %i.enb, align 8, !tbaa !2159
  %.not.i4355 = icmp eq ptr %i.enc, null
  br i1 %.not.i4355, label %sqlite3VdbeSorterRewind.exit.thread5084, label %bb.ahk

bb.ahk:                                           ; preds = %bb.ahj
  %i.end = getelementptr inbounds nuw i8, ptr %.val4094, i64 96
  %i.ene = call fastcc i32 @vdbeSorterSort(ptr noundef nonnull %i.end, ptr noundef nonnull %i.enb), !inline_history !2368
  br label %sqlite3VdbeSorterRewind.exit

bb.ahl:                                           ; preds = %bb.ahi
  %i.enf = call fastcc i32 @vdbeSorterFlushPMA(ptr noundef nonnull %.val4094), !inline_history !2368
  %i.eng = call fastcc i32 @vdbeSorterJoinAll(ptr noundef nonnull %.val4094, i32 noundef %i.enf), !inline_history !2368 ; 2 uses
  %i.enh = icmp eq i32 %i.eng, 0
  br i1 %i.enh, label %bb.ahm, label %sqlite3VdbeMemSetNull.exit4222.loopexit12572

bb.ahm:                                           ; preds = %bb.ahl
  %i.eni = getelementptr inbounds nuw i8, ptr %.val4094, i64 96 ; 12 uses
  %i.enj = getelementptr inbounds nuw i8, ptr %.val4094, i64 112
  %i.enk = load ptr, ptr %i.enj, align 8, !tbaa !2157
  %i.enl = getelementptr inbounds nuw i8, ptr %i.enk, i64 32
  %i.enm = load ptr, ptr %i.enl, align 8, !tbaa !842 ; 2 uses
  %i.enn = getelementptr i8, ptr %.val4094, i64 92
  %.val.i.i4350 = load i8, ptr %i.enn, align 4, !tbaa !231 ; 2 uses
  %switch.selectcmp.i.i.i = icmp eq i8 %.val.i.i4350, 2
  %switch.select.i.i.i = select i1 %switch.selectcmp.i.i.i, ptr @vdbeSorterCompareText, ptr @vdbeSorterCompare
  %switch.selectcmp4.i.i.i = icmp eq i8 %.val.i.i4350, 1
  %switch.select5.i.i.i = select i1 %switch.selectcmp4.i.i.i, ptr @vdbeSorterCompareInt, ptr %switch.select.i.i.i ; 9 uses
  %i.eno = getelementptr inbounds nuw i8, ptr %.val4094, i64 91 ; 5 uses
  %i.enp = load i8, ptr %i.eno, align 1, !tbaa !231 ; 5 uses
  %i.enq = zext i8 %i.enp to i32
  %.not146.i.i = icmp eq i8 %i.enp, 0
  br i1 %.not146.i.i, label %.lr.ph113.i.i.i.preheader, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ahm
  %wide.trip.count.i.i = zext i8 %i.enp to i64    ; 2 uses
  %xtraiter13345 = and i64 %wide.trip.count.i.i, 7 ; 3 uses
  %i.enr = icmp ult i8 %i.enp, 8
  br i1 %i.enr, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 248
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.7, %.lr.ph.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.7, %.lr.ph.i.i ]
  %i.ens = getelementptr inbounds nuw [104 x i8], ptr %i.eni, i64 %indvars.iv.i.i
  %i.ent = getelementptr inbounds nuw i8, ptr %i.ens, i64 56
  store ptr %switch.select5.i.i.i, ptr %i.ent, align 8, !tbaa !2369
  %i.enu = getelementptr inbounds nuw [104 x i8], ptr %i.eni, i64 %indvars.iv.i.i
  %i.env = getelementptr inbounds nuw i8, ptr %i.enu, i64 160
  store ptr %switch.select5.i.i.i, ptr %i.env, align 8, !tbaa !2369
  %i.enw = getelementptr inbounds nuw [104 x i8], ptr %i.eni, i64 %indvars.iv.i.i
  %i.enx = getelementptr inbounds nuw i8, ptr %i.enw, i64 264
  store ptr %switch.select5.i.i.i, ptr %i.enx, align 8, !tbaa !2369
  %i.eny = getelementptr inbounds nuw [104 x i8], ptr %i.eni, i64 %indvars.iv.i.i
  %i.enz = getelementptr inbounds nuw i8, ptr %i.eny, i64 368
  store ptr %switch.select5.i.i.i, ptr %i.enz, align 8, !tbaa !2369
  %i.eoa = getelementptr inbounds nuw [104 x i8], ptr %i.eni, i64 %indvars.iv.i.i
  %i.eob = getelementptr inbounds nuw i8, ptr %i.eoa, i64 472
  store ptr %switch.select5.i.i.i, ptr %i.eob, align 8, !tbaa !2369
  %i.eoc = getelementptr inbounds nuw [104 x i8], ptr %i.eni, i64 %indvars.iv.i.i
  %i.eod = getelementptr inbounds nuw i8, ptr %i.eoc, i64 576
  store ptr %switch.select5.i.i.i, ptr %i.eod, align 8, !tbaa !2369
  %i.eoe = getelementptr inbounds nuw [104 x i8], ptr %i.eni, i64 %indvars.iv.i.i
  %i.eof = getelementptr inbounds nuw i8, ptr %i.eoe, i64 680
  store ptr %switch.select5.i.i.i, ptr %i.eof, align 8, !tbaa !2369
  %i.eog = getelementptr inbounds nuw [104 x i8], ptr %i.eni, i64 %indvars.iv.i.i
  %i.eoh = getelementptr inbounds nuw i8, ptr %i.eog, i64 784
  store ptr %switch.select5.i.i.i, ptr %i.eoh, align 8, !tbaa !2369
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !2370

._crit_edge.i.i.unr-lcssa:                        ; preds = %.lr.ph.i.i
  %lcmp.mod13346.not = icmp eq i64 %xtraiter13345, 0
  br i1 %lcmp.mod13346.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.7, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod13347 = icmp ne i64 %xtraiter13345, 0
  call void @llvm.assume(i1 %lcmp.mod13347)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  %i.eoi = getelementptr inbounds nuw [104 x i8], ptr %i.eni, i64 %indvars.iv.i.i.epil
  %i.eoj = getelementptr inbounds nuw i8, ptr %i.eoi, i64 56
  store ptr %switch.select5.i.i.i, ptr %i.eoj, align 8, !tbaa !2369
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter13345
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil, !llvm.loop !2371

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.epil, %._crit_edge.i.i.unr-lcssa
  %.not253.i.i = icmp eq i8 %i.enp, 1
  br i1 %.not253.i.i, label %.lr.ph113.i.i.i.preheader, label %.preheader117.i.i

.preheader117.i.i:                                ; preds = %._crit_edge.i.i, %.preheader117.i.i
  %.0.i.i.i.i4351 = phi i32 [ %i.eol, %.preheader117.i.i ], [ 2, %._crit_edge.i.i ] ; 4 uses
  %i.eok = icmp slt i32 %.0.i.i.i.i4351, %i.enq
  %i.eol = shl nsw i32 %.0.i.i.i.i4351, 1
  br i1 %i.eok, label %.preheader117.i.i, label %bb.ahn, !llvm.loop !2372

bb.ahn:                                           ; preds = %.preheader117.i.i
  %i.eom = zext nneg i32 %.0.i.i.i.i4351 to i64   ; 2 uses
  %i.eon = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 400), align 8, !tbaa !730 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.eon, null
  br i1 %.not.i.i.i.i.i, label %sqlite3FaultSim.exit.thread.i.i.i.i, label %sqlite3FaultSim.exit.i.i.i.i

sqlite3FaultSim.exit.i.i.i.i:                     ; preds = %bb.ahn
  %i.eoo = call i32 %i.eon(i32 noundef 100) #58, !inline_history !2373
  %.not.i.i.i.i4352 = icmp eq i32 %i.eoo, 0
  br i1 %.not.i.i.i.i4352, label %sqlite3FaultSim.exit.thread.i.i.i.i, label %sqlite3VdbeMemSetNull.exit4222.loopexit12572

sqlite3FaultSim.exit.thread.i.i.i.i:              ; preds = %sqlite3FaultSim.exit.i.i.i.i, %bb.ahn
  %i.eop = mul nuw nsw i64 %i.eom, 84
  %i.eoq = add nuw nsw i64 %i.eop, 32             ; 2 uses
  %i.eor = call fastcc ptr @sqlite3Malloc(i64 noundef range(i64 -180388626400, 180388626381) %i.eoq), !inline_history !2374 ; 8 uses
  %.not.i17.i.i.i.i = icmp eq ptr %i.eor, null
  br i1 %.not.i17.i.i.i.i, label %sqlite3VdbeMemSetNull.exit4222.loopexit12572, label %vdbeMergeEngineNew.exit.i.i.i

vdbeMergeEngineNew.exit.i.i.i:                    ; preds = %sqlite3FaultSim.exit.thread.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.eor, i8 0, i64 range(i64 -180388626400, 180388626381) %i.eoq, i1 false)
  store i32 %.0.i.i.i.i4351, ptr %i.eor, align 8, !tbaa !2128
  %i.eos = getelementptr inbounds nuw i8, ptr %i.eor, i64 8
  store ptr null, ptr %i.eos, align 8, !tbaa !2375
  %i.eot = getelementptr inbounds nuw i8, ptr %i.eor, i64 32 ; 2 uses
  %i.eou = getelementptr inbounds nuw i8, ptr %i.eor, i64 24
  store ptr %i.eot, ptr %i.eou, align 8, !tbaa !2135
  %i.eov = getelementptr inbounds nuw [80 x i8], ptr %i.eot, i64 %i.eom
  %i.eow = getelementptr inbounds nuw i8, ptr %i.eor, i64 16
  store ptr %i.eov, ptr %i.eow, align 8, !tbaa !2360
  br label %.lr.ph113.i.i.i.preheader

.lr.ph113.i.i.i.preheader:                        ; preds = %vdbeMergeEngineNew.exit.i.i.i, %._crit_edge.i.i, %bb.ahm
  %.142110.i.i.i.ph = phi ptr [ null, %bb.ahm ], [ null, %._crit_edge.i.i ], [ %i.eor, %vdbeMergeEngineNew.exit.i.i.i ]
  br label %.lr.ph113.i.i.i

.lr.ph113.i.i.i:                                  ; preds = %.lr.ph113.i.i.i.preheader, %bb.ajx
  %indvars.iv122.i.i.i = phi i64 [ %indvars.iv.next123.i.i.i, %bb.ajx ], [ 0, %.lr.ph113.i.i.i.preheader ] ; 4 uses
  %.142110.i.i.i = phi ptr [ %.344.i.i.i, %bb.ajx ], [ %.142110.i.i.i.ph, %.lr.ph113.i.i.i.preheader ] ; 27 uses
  %i.eox = load i8, ptr %i.eno, align 1, !tbaa !231
  %i.eoy = zext i8 %i.eox to i64                  ; 2 uses
  %i.eoz = icmp samesign ult i64 %indvars.iv122.i.i.i, %i.eoy
  br i1 %i.eoz, label %bb.aho, label %vdbeSorterMergeTreeBuild.exit.i.i

bb.aho:                                           ; preds = %.lr.ph113.i.i.i
  %i.epa = getelementptr inbounds nuw [104 x i8], ptr %i.eni, i64 %indvars.iv122.i.i.i ; 8 uses
  %i.epb = getelementptr inbounds nuw i8, ptr %i.epa, i64 12 ; 3 uses
  %i.epc = load i32, ptr %i.epb, align 4, !tbaa !2376 ; 4 uses
  %.not52.i.i.i = icmp eq i32 %i.epc, 0
  br i1 %.not52.i.i.i, label %bb.ajx, label %bb.ahp

bb.ahp:                                           ; preds = %bb.aho
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #58
  store ptr null, ptr %i.i, align 8, !tbaa !2126
  %i.epd = zext nneg i32 %i.epc to i64
  %i.epe = icmp sgt i32 %i.epc, 16
  br i1 %i.epe, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ahp, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i = phi i32 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i.i ], [ 1, %bb.ahp ] ; 3 uses
  %.07.i.i.i.i = phi i64 [ %i.epf, %.lr.ph.i.i.i.i ], [ 16, %bb.ahp ]
  %.056.i.i.i.i = phi i32 [ %i.epg, %.lr.ph.i.i.i.i ], [ 0, %bb.ahp ] ; 4 uses
  %i.epf = shl nsw i64 %.07.i.i.i.i, 4            ; 2 uses
  %i.epg = add nuw nsw i32 %.056.i.i.i.i, 1
  %i.eph = icmp slt i64 %i.epf, %i.epd
  %indvars.iv.next.i.i.i = add nuw nsw i32 %indvars.iv.i.i.i, 1
  br i1 %i.eph, label %.lr.ph.i.i.i.i, label %bb.ahq, !llvm.loop !2377

bb.ahq:                                           ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #58
  store i64 0, ptr %i.j, align 8, !tbaa !21
  %i.epi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 400), align 8, !tbaa !730 ; 2 uses
  %.not.i.i58.i.i.i = icmp eq ptr %i.epi, null
  br i1 %.not.i.i58.i.i.i, label %sqlite3FaultSim.exit.thread.i61.i.i.i, label %sqlite3FaultSim.exit.i59.i.i.i

sqlite3FaultSim.exit.i59.i.i.i:                   ; preds = %bb.ahq
  %i.epj = call i32 %i.epi(i32 noundef 100) #58, !inline_history !2373
  %.not.i60.i.i.i = icmp eq i32 %i.epj, 0
  br i1 %.not.i60.i.i.i, label %sqlite3FaultSim.exit.thread.i61.i.i.i, label %vdbeMergeEngineFree.exit.i.i.i

sqlite3FaultSim.exit.thread.i61.i.i.i:            ; preds = %sqlite3FaultSim.exit.i59.i.i.i, %bb.ahq
  %i.epk = call fastcc ptr @sqlite3Malloc(i64 noundef range(i64 -180388626400, 180388626381) 1376), !inline_history !2374 ; 13 uses
  %.not.i17.i62.i.i.i = icmp eq ptr %i.epk, null
  br i1 %.not.i17.i62.i.i.i, label %vdbeMergeEngineFree.exit.i.i.i, label %vdbeMergeEngineNew.exit63.i.i.i

vdbeMergeEngineNew.exit63.i.i.i:                  ; preds = %sqlite3FaultSim.exit.thread.i61.i.i.i
  %i.epl = getelementptr inbounds nuw i8, ptr %i.epk, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1372) %i.epl, i8 0, i64 range(i64 -180388626400, 180388626381) 1372, i1 false)
  store i32 16, ptr %i.epk, align 8, !tbaa !2128
  %i.epm = getelementptr inbounds nuw i8, ptr %i.epk, i64 32
  %i.epn = getelementptr inbounds nuw i8, ptr %i.epk, i64 24
  store ptr %i.epm, ptr %i.epn, align 8, !tbaa !2135
  %i.epo = getelementptr inbounds nuw i8, ptr %i.epk, i64 1312
  %i.epp = getelementptr inbounds nuw i8, ptr %i.epk, i64 16
  store ptr %i.epo, ptr %i.epp, align 8, !tbaa !2360
  store ptr %i.epk, ptr %i.i, align 8, !tbaa !2126
  %i.epq = load i32, ptr %i.epb, align 4, !tbaa !2376 ; 2 uses
  %i.epr = icmp sgt i32 %i.epq, 0
  br i1 %i.epr, label %.lr.ph.i.i.i, label %.loopexit.thread186.i.i.i

.lr.ph.i.i.i:                                     ; preds = %vdbeMergeEngineNew.exit63.i.i.i
  %.not.i.i.i4354 = icmp eq i32 %.056.i.i.i.i, 0
  %i.eps = getelementptr inbounds nuw i8, ptr %i.epa, i64 16
  %i.ept = getelementptr inbounds nuw i8, ptr %i.epa, i64 88 ; 2 uses
  %i.epu = add nsw i32 %indvars.iv.i.i.i, -2
  %xtraiter13348 = and i32 %.056.i.i.i.i, 7       ; 3 uses
  %i.epv = icmp ult i32 %i.epu, 7
  %unroll_iter13353 = and i32 %.056.i.i.i.i, 2147483640
  %lcmp.mod13350.not = icmp eq i32 %xtraiter13348, 0
  %lcmp.mod13352 = icmp ne i32 %xtraiter13348, 0
  br label %bb.ahr

bb.ahr:                                           ; preds = %.loopexit193.i.i.i, %.lr.ph.i.i.i
  %i.epw = phi i32 [ %i.epq, %.lr.ph.i.i.i ], [ %i.eyb, %.loopexit193.i.i.i ]
  %.0108.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.eqa, %.loopexit193.i.i.i ] ; 3 uses
  %.037107.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.eya, %.loopexit193.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #58
  store ptr null, ptr %i.k, align 8, !tbaa !2126
  %i.epx = sub nsw i32 %i.epw, %.037107.i.i.i
  %spec.select56.i.i.i = call i32 @llvm.smin.i32(i32 %i.epx, i32 16)
  %i.epy = call fastcc i32 @vdbeMergeEngineLevel0(ptr noundef nonnull %i.epa, i32 noundef %spec.select56.i.i.i, ptr noundef %i.j, ptr noundef %i.k), !inline_history !2374 ; 2 uses
  %i.epz = icmp eq i32 %i.epy, 0
  br i1 %i.epz, label %bb.ahs, label %.loopexit.thread.sink.split.i.i.i

bb.ahs:                                           ; preds = %bb.ahr
  %i.eqa = add nuw nsw i32 %.0108.i.i.i, 1
  %i.eqb = load ptr, ptr %i.k, align 8, !tbaa !2126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #58
  %i.eqc = call fastcc i32 @vdbeIncrMergerNew(ptr noundef nonnull %i.epa, ptr noundef %i.eqb, ptr noundef nonnull %i.h), !inline_history !2374 ; 4 uses
  br i1 %.not.i.i.i4354, label %.preheader42.thread.i.i.i.i, label %.lr.ph.i64.i.i.i.preheader

.lr.ph.i64.i.i.i.preheader:                       ; preds = %bb.ahs
  br i1 %i.epv, label %.lr.ph.i64.i.i.i.epil.preheader, label %.lr.ph.i64.i.i.i

.preheader42.thread.i.i.i.i:                      ; preds = %bb.ahs
  %i.eqd = icmp eq i32 %i.eqc, 0
  br i1 %i.eqd, label %.loopexit193.i.i.i, label %._crit_edge.thread.i.i.i.i

.preheader42.i.i.i.i.unr-lcssa:                   ; preds = %.lr.ph.i64.i.i.i
  br i1 %lcmp.mod13350.not, label %.preheader42.i.i.i.i, label %.lr.ph.i64.i.i.i.epil.preheader

.lr.ph.i64.i.i.i.epil.preheader:                  ; preds = %.preheader42.i.i.i.i.unr-lcssa, %.lr.ph.i64.i.i.i.preheader
  %.02843.i.i.i.i.epil.init = phi i32 [ 1, %.lr.ph.i64.i.i.i.preheader ], [ 0, %.preheader42.i.i.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod13352)
  br label %.lr.ph.i64.i.i.i.epil

.lr.ph.i64.i.i.i.epil:                            ; preds = %.lr.ph.i64.i.i.i.epil, %.lr.ph.i64.i.i.i.epil.preheader
  %.02843.i.i.i.i.epil = phi i32 [ %i.eqe, %.lr.ph.i64.i.i.i.epil ], [ %.02843.i.i.i.i.epil.init, %.lr.ph.i64.i.i.i.epil.preheader ]
  %epil.iter13349 = phi i32 [ %epil.iter13349.next, %.lr.ph.i64.i.i.i.epil ], [ 0, %.lr.ph.i64.i.i.i.epil.preheader ]
  %i.eqe = shl nsw i32 %.02843.i.i.i.i.epil, 4    ; 2 uses
  %epil.iter13349.next = add i32 %epil.iter13349, 1 ; 2 uses
  %epil.iter13349.cmp.not = icmp eq i32 %epil.iter13349.next, %xtraiter13348
  br i1 %epil.iter13349.cmp.not, label %.preheader42.i.i.i.i, label %.lr.ph.i64.i.i.i.epil, !llvm.loop !2378

.preheader42.i.i.i.i:                             ; preds = %.lr.ph.i64.i.i.i.epil, %.preheader42.i.i.i.i.unr-lcssa
  %.lcssa12590 = phi i32 [ 0, %.preheader42.i.i.i.i.unr-lcssa ], [ %i.eqe, %.lr.ph.i64.i.i.i.epil ]
  %i.eqf = icmp eq i32 %i.eqc, 0
  br i1 %i.eqf, label %.lr.ph48.i.i.i.i, label %._crit_edge.thread.i.i.i.i

.lr.ph.i64.i.i.i:                                 ; preds = %.lr.ph.i64.i.i.i.preheader, %.lr.ph.i64.i.i.i
  %niter13354 = phi i32 [ %niter13354.next.7, %.lr.ph.i64.i.i.i ], [ 0, %.lr.ph.i64.i.i.i.preheader ]
  %niter13354.next.7 = add i32 %niter13354, 8     ; 2 uses
  %niter13354.ncmp.7 = icmp eq i32 %niter13354.next.7, %unroll_iter13353
  br i1 %niter13354.ncmp.7, label %.preheader42.i.i.i.i.unr-lcssa, label %.lr.ph.i64.i.i.i, !llvm.loop !2379

.lr.ph48.i.i.i.i:                                 ; preds = %.preheader42.i.i.i.i, %.thread40.i.i.i.i
  %.047.i.i.i.i = phi ptr [ %i.etq, %.thread40.i.i.i.i ], [ %i.epk, %.preheader42.i.i.i.i ]
  %.12746.i.i.i.i = phi i32 [ %i.ets, %.thread40.i.i.i.i ], [ 1, %.preheader42.i.i.i.i ]
  %.12945.i.i.i.i = phi i32 [ %i.etr, %.thread40.i.i.i.i ], [ %.lcssa12590, %.preheader42.i.i.i.i ] ; 2 uses
  %i.eqg = sdiv i32 %.0108.i.i.i, %.12945.i.i.i.i
  %i.eqh = srem i32 %i.eqg, 16
  %i.eqi = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i, i64 24
  %i.eqj = load ptr, ptr %i.eqi, align 8, !tbaa !2135
  %i.eqk = sext i32 %i.eqh to i64
  %i.eql = getelementptr inbounds [80 x i8], ptr %i.eqj, i64 %i.eqk
  %i.eqm = getelementptr inbounds nuw i8, ptr %i.eql, i64 72 ; 3 uses
  %i.eqn = load ptr, ptr %i.eqm, align 8, !tbaa !2179 ; 2 uses
  %i.eqo = icmp eq ptr %i.eqn, null
  br i1 %i.eqo, label %.preheader.preheader.i.i.i.i, label %.lr.ph48.i..thread40.i_crit_edge.i.i.i

.lr.ph48.i..thread40.i_crit_edge.i.i.i:           ; preds = %.lr.ph48.i.i.i.i
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.eqn, i64 8
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !2193
  br label %.thread40.i.i.i.i

.preheader.preheader.i.i.i.i:                     ; preds = %.lr.ph48.i.i.i.i
  %i.eqp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 400), align 8, !tbaa !730 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.eqp, null
  br i1 %.not.i.i.i.i.i.i, label %sqlite3FaultSim.exit.thread.i.i.i.i.i, label %sqlite3FaultSim.exit.i.i.i.i.i

sqlite3FaultSim.exit.i.i.i.i.i:                   ; preds = %.preheader.preheader.i.i.i.i
  %i.eqq = call i32 %i.eqp(i32 noundef 100) #58, !inline_history !2380
  %.not.i.i65.i.i.i = icmp eq i32 %i.eqq, 0
  br i1 %.not.i.i65.i.i.i, label %sqlite3FaultSim.exit.thread.i.i.i.i.i, label %._crit_edge.thread.i.i.i.i

sqlite3FaultSim.exit.thread.i.i.i.i.i:            ; preds = %sqlite3FaultSim.exit.i.i.i.i.i, %.preheader.preheader.i.i.i.i
  %i.eqr = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i90.i.i.i = icmp eq i32 %i.eqr, 0
  br i1 %.not.i90.i.i.i, label %bb.aig, label %bb.aht

bb.aht:                                           ; preds = %sqlite3FaultSim.exit.thread.i.i.i.i.i
  %i.eqs = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i91.i.i.i = icmp eq ptr %i.eqs, null
  br i1 %.not.i.i91.i.i.i, label %sqlite3_mutex_enter.exit.i.i.i.i, label %bb.ahu

bb.ahu:                                           ; preds = %bb.aht
  %i.eqt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  call void %i.eqt(ptr noundef nonnull %i.eqs) #58, !inline_history !2381
  br label %sqlite3_mutex_enter.exit.i.i.i.i

sqlite3_mutex_enter.exit.i.i.i.i:                 ; preds = %bb.ahu, %bb.aht
  %i.equ = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 64), align 8, !tbaa !106
  %i.eqv = call i32 %i.equ(i32 noundef range(i32 1, 2147483392) 1376) #58, !inline_history !2382 ; 2 uses
  %i.eqw = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 120), align 8, !tbaa !21
  %i.eqx = icmp slt i64 %i.eqw, 1376
  br i1 %i.eqx, label %bb.ahv, label %sqlite3StatusHighwater.exit.i.i.i.i.i

bb.ahv:                                           ; preds = %sqlite3_mutex_enter.exit.i.i.i.i
  store i64 1376, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 120), align 8, !tbaa !21
  br label %sqlite3StatusHighwater.exit.i.i.i.i.i

sqlite3StatusHighwater.exit.i.i.i.i.i:            ; preds = %bb.ahv, %sqlite3_mutex_enter.exit.i.i.i.i
  %i.eqy = load i64, ptr getelementptr inbounds nuw (i8, ptr @mem0, i64 8), align 8, !tbaa !264 ; 2 uses
  %i.eqz = icmp sgt i64 %i.eqy, 0
  br i1 %i.eqz, label %bb.ahw, label %bb.aib

bb.ahw:                                           ; preds = %sqlite3StatusHighwater.exit.i.i.i.i.i
  %i.era = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.erb = sext i32 %i.eqv to i64                 ; 2 uses
  %i.erc = sub nsw i64 %i.eqy, %i.erb
  %.not.i5.i.i.i.i = icmp slt i64 %i.era, %i.erc
  br i1 %.not.i5.i.i.i.i, label %bb.aia, label %bb.ahx

bb.ahx:                                           ; preds = %bb.ahw
  store atomic i32 1, ptr getelementptr inbounds nuw (i8, ptr @mem0, i64 24) monotonic, align 8
  %i.erd = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i.i.i93.i.i.i = icmp eq ptr %i.erd, null
  br i1 %.not.i.i.i.i93.i.i.i, label %sqlite3MallocAlarm.exit.i.i.i.i.i, label %sqlite3_mutex_leave.exit.i.i.i.i.i.i

sqlite3_mutex_leave.exit.i.i.i.i.i.i:             ; preds = %bb.ahx
  %i.ere = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  call void %i.ere(ptr noundef nonnull %i.erd) #58, !inline_history !2383
  %.pr.i.i.i.i.i.i = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i1.i.i.i.i.i.i = icmp eq ptr %.pr.i.i.i.i.i.i, null
  br i1 %.not.i1.i.i.i.i.i.i, label %sqlite3MallocAlarm.exit.i.i.i.i.i, label %bb.ahy

bb.ahy:                                           ; preds = %sqlite3_mutex_leave.exit.i.i.i.i.i.i
  %i.erf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  call void %i.erf(ptr noundef nonnull %.pr.i.i.i.i.i.i) #58, !inline_history !2384
  br label %sqlite3MallocAlarm.exit.i.i.i.i.i

sqlite3MallocAlarm.exit.i.i.i.i.i:                ; preds = %bb.ahy, %sqlite3_mutex_leave.exit.i.i.i.i.i.i, %bb.ahx
  %i.erg = load i64, ptr getelementptr inbounds nuw (i8, ptr @mem0, i64 16), align 8, !tbaa !265 ; 2 uses
  %.not17.i.i.i.i.i = icmp eq i64 %i.erg, 0
  br i1 %.not17.i.i.i.i.i, label %bb.aib, label %bb.ahz

bb.ahz:                                           ; preds = %sqlite3MallocAlarm.exit.i.i.i.i.i
  %i.erh = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.eri = sub nsw i64 %i.erg, %i.erb
  %.not18.i.i.i.i.i = icmp slt i64 %i.erh, %i.eri
  br i1 %.not18.i.i.i.i.i, label %bb.aib, label %mallocWithAlarm.exit.i.i.i.i

bb.aia:                                           ; preds = %bb.ahw
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @mem0, i64 24) monotonic, align 8
  br label %bb.aib

bb.aib:                                           ; preds = %bb.aia, %bb.ahz, %sqlite3MallocAlarm.exit.i.i.i.i.i, %sqlite3StatusHighwater.exit.i.i.i.i.i
  %i.erj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 32), align 8, !tbaa !216
  %i.erk = call ptr %i.erj(i32 noundef %i.eqv) #58, !inline_history !2382 ; 4 uses
  %.not19.i.i.i.i.i = icmp eq ptr %i.erk, null
  br i1 %.not19.i.i.i.i.i, label %mallocWithAlarm.exit.i.i.i.i, label %bb.aic

bb.aic:                                           ; preds = %bb.aib
  %i.erl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.erm = call i32 %i.erl(ptr noundef nonnull %i.erk) #58, !inline_history !2385
  %i.ern = sext i32 %i.erm to i64
  %i.ero = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.erp = add nsw i64 %i.ero, %i.ern             ; 3 uses
  store i64 %i.erp, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.erq = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 80), align 8, !tbaa !21
  %i.err = icmp sgt i64 %i.erp, %i.erq
  br i1 %i.err, label %bb.aid, label %sqlite3StatusUp.exit.i.i.i.i.i

bb.aid:                                           ; preds = %bb.aic
  store i64 %i.erp, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 80), align 8, !tbaa !21
  br label %sqlite3StatusUp.exit.i.i.i.i.i

sqlite3StatusUp.exit.i.i.i.i.i:                   ; preds = %bb.aid, %bb.aic
  %i.ers = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21 ; 2 uses
  %i.ert = add nsw i64 %i.ers, 1                  ; 2 uses
  store i64 %i.ert, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.eru = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 152), align 8, !tbaa !21
  %.not21.i.i.i.i.i = icmp slt i64 %i.ers, %i.eru
  br i1 %.not21.i.i.i.i.i, label %mallocWithAlarm.exit.i.i.i.i, label %bb.aie

bb.aie:                                           ; preds = %sqlite3StatusUp.exit.i.i.i.i.i
  store i64 %i.ert, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 152), align 8, !tbaa !21
  br label %mallocWithAlarm.exit.i.i.i.i

mallocWithAlarm.exit.i.i.i.i:                     ; preds = %bb.aie, %sqlite3StatusUp.exit.i.i.i.i.i, %bb.aib, %bb.ahz
  %storemerge.i.i.i.i.i = phi ptr [ null, %bb.ahz ], [ %i.erk, %bb.aie ], [ %i.erk, %sqlite3StatusUp.exit.i.i.i.i.i ], [ null, %bb.aib ] ; 2 uses
  %i.erv = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i6.i.i.i.i = icmp eq ptr %i.erv, null
  br i1 %.not.i6.i.i.i.i, label %sqlite3Malloc.exit.i.i.i, label %bb.aif

bb.aif:                                           ; preds = %mallocWithAlarm.exit.i.i.i.i
  %i.erw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  call void %i.erw(ptr noundef nonnull %i.erv) #58, !inline_history !2386
  br label %sqlite3Malloc.exit.i.i.i

bb.aig:                                           ; preds = %sqlite3FaultSim.exit.thread.i.i.i.i.i
  %i.erx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 32), align 8, !tbaa !216
  %i.ery = call ptr %i.erx(i32 noundef 1376) #58, !inline_history !2387
  br label %sqlite3Malloc.exit.i.i.i

sqlite3Malloc.exit.i.i.i:                         ; preds = %bb.aig, %bb.aif, %mallocWithAlarm.exit.i.i.i.i
  %.0.i92.i.i.i = phi ptr [ %storemerge.i.i.i.i.i, %bb.aif ], [ %i.ery, %bb.aig ], [ %storemerge.i.i.i.i.i, %mallocWithAlarm.exit.i.i.i.i ] ; 15 uses
  %.not.i17.i.i.i.i.i = icmp eq ptr %.0.i92.i.i.i, null
  br i1 %.not.i17.i.i.i.i.i, label %._crit_edge.thread.i.i.i.i, label %bb.aih

bb.aih:                                           ; preds = %sqlite3Malloc.exit.i.i.i
  %i.erz = getelementptr inbounds nuw i8, ptr %.0.i92.i.i.i, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1372) %i.erz, i8 0, i64 range(i64 -180388626400, 180388626381) 1372, i1 false)
  store i32 16, ptr %.0.i92.i.i.i, align 8, !tbaa !2128
  %i.esa = getelementptr inbounds nuw i8, ptr %.0.i92.i.i.i, i64 32
  %i.esb = getelementptr inbounds nuw i8, ptr %.0.i92.i.i.i, i64 24
  store ptr %i.esa, ptr %i.esb, align 8, !tbaa !2135
  %i.esc = getelementptr inbounds nuw i8, ptr %.0.i92.i.i.i, i64 1312
  %i.esd = getelementptr inbounds nuw i8, ptr %.0.i92.i.i.i, i64 16
  store ptr %i.esc, ptr %i.esd, align 8, !tbaa !2360
  %i.ese = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 400), align 8, !tbaa !730 ; 2 uses
  %.not.i.i81.i.i.i = icmp eq ptr %i.ese, null
  br i1 %.not.i.i81.i.i.i, label %sqlite3FaultSim.exit.thread.i89.i.i.i, label %sqlite3FaultSim.exit.i82.i.i.i

sqlite3FaultSim.exit.i82.i.i.i:                   ; preds = %bb.aih
  %i.esf = call i32 %i.ese(i32 noundef 100) #58, !inline_history !2388
  %.not.i83.i.i.i = icmp eq i32 %i.esf, 0
  br i1 %.not.i83.i.i.i, label %sqlite3FaultSim.exit.thread.i89.i.i.i, label %.preheader.i.i.i.i.i

sqlite3FaultSim.exit.thread.i89.i.i.i:            ; preds = %sqlite3FaultSim.exit.i82.i.i.i, %bb.aih
  %i.esg = call fastcc ptr @sqlite3Malloc(i64 noundef 72), !inline_history !2374 ; 6 uses
  %.not.i18.i.i.i.i = icmp eq ptr %i.esg, null
  br i1 %.not.i18.i.i.i.i, label %.preheader.i.i.i.i.i, label %..thread_crit_edge.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %sqlite3FaultSim.exit.thread.i89.i.i.i, %sqlite3FaultSim.exit.i82.i.i.i
  %i.esh = getelementptr inbounds nuw i8, ptr %.0.i92.i.i.i, i64 24
  store ptr null, ptr %i.eqm, align 8, !tbaa !2389
  %i.esi = load i32, ptr %.0.i92.i.i.i, align 8, !tbaa !2128
  %i.esj = icmp sgt i32 %i.esi, 0
  br i1 %i.esj, label %.lr.ph.i.i.i.i.i, label %.split6.i.i.i.i.i

.split6.i.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i.i, %.preheader.i.i.i.i.i
  %i.esk = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i.i.i84.i.i.i = icmp eq i32 %i.esk, 0
  br i1 %.not.i.i.i84.i.i.i, label %bb.ail, label %bb.aii

bb.aii:                                           ; preds = %.split6.i.i.i.i.i
  %i.esl = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i.i.i85.i.i.i = icmp eq ptr %i.esl, null
  br i1 %.not.i.i.i.i85.i.i.i, label %sqlite3_mutex_enter.exit.i.i.i86.i.i.i, label %bb.aij

bb.aij:                                           ; preds = %bb.aii
  %i.esm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  call void %i.esm(ptr noundef nonnull %i.esl) #58, !inline_history !2390
  br label %sqlite3_mutex_enter.exit.i.i.i86.i.i.i

sqlite3_mutex_enter.exit.i.i.i86.i.i.i:           ; preds = %bb.aij, %bb.aii
  %i.esn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.eso = call i32 %i.esn(ptr noundef nonnull %.0.i92.i.i.i) #58, !inline_history !2391
  %i.esp = sext i32 %i.eso to i64
  %i.esq = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.esr = sub nsw i64 %i.esq, %i.esp
  store i64 %i.esr, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.ess = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.est = add nsw i64 %i.ess, -1
  store i64 %i.est, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.esu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  call void %i.esu(ptr noundef nonnull %.0.i92.i.i.i) #58, !inline_history !2392
  %i.esv = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i4.i.i.i87.i.i.i = icmp eq ptr %i.esv, null
  br i1 %.not.i4.i.i.i87.i.i.i, label %._crit_edge.thread.i.i.i.i, label %bb.aik

bb.aik:                                           ; preds = %sqlite3_mutex_enter.exit.i.i.i86.i.i.i
  %i.esw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  call void %i.esw(ptr noundef nonnull %i.esv) #58, !inline_history !2393
  br label %._crit_edge.thread.i.i.i.i

bb.ail:                                           ; preds = %.split6.i.i.i.i.i
  %i.esx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  call void %i.esx(ptr noundef nonnull %.0.i92.i.i.i) #58, !inline_history !2392
  br label %._crit_edge.thread.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i ] ; 2 uses
  %i.esy = load ptr, ptr %i.esh, align 8, !tbaa !2135
  %i.esz = getelementptr inbounds nuw [80 x i8], ptr %i.esy, i64 %indvars.iv.i.i.i.i.i
  call fastcc void @vdbePmaReaderClear(ptr noundef %i.esz), !inline_history !2394
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %i.eta = load i32, ptr %.0.i92.i.i.i, align 8, !tbaa !2128
  %i.etb = sext i32 %i.eta to i64
  %i.etc = icmp slt i64 %indvars.iv.next.i.i.i.i.i, %i.etb
  br i1 %i.etc, label %.lr.ph.i.i.i.i.i, label %.split6.i.i.i.i.i, !llvm.loop !2137

..thread_crit_edge.i.i.i.i:                       ; preds = %sqlite3FaultSim.exit.thread.i89.i.i.i
  %i.etd = getelementptr inbounds nuw i8, ptr %i.esg, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.etd, i8 0, i64 56, i1 false)
  store ptr %i.esg, ptr %i.eqm, align 8, !tbaa !2389
  %i.ete = getelementptr inbounds nuw i8, ptr %i.esg, i64 8
  store ptr %.0.i92.i.i.i, ptr %i.ete, align 8, !tbaa !2193
  store ptr %i.epa, ptr %i.esg, align 8, !tbaa !2182
  %i.etf = load ptr, ptr %i.eps, align 8, !tbaa !2157 ; 2 uses
  %i.etg = getelementptr inbounds nuw i8, ptr %i.etf, i64 8
  %i.eth = load i32, ptr %i.etg, align 8, !tbaa !27
  %i.eti = add nsw i32 %i.eth, 9
  %i.etj = getelementptr inbounds nuw i8, ptr %i.etf, i64 4
  %i.etk = load i32, ptr %i.etj, align 4, !tbaa !27
  %i.etl = sdiv i32 %i.etk, 2
  %..i.i.i.i = call i32 @llvm.smax.i32(i32 %i.eti, i32 %i.etl) ; 2 uses
  %i.etm = getelementptr inbounds nuw i8, ptr %i.esg, i64 24
  store i32 %..i.i.i.i, ptr %i.etm, align 8, !tbaa !2395
  %i.etn = sext i32 %..i.i.i.i to i64
  %i.eto = load i64, ptr %i.ept, align 8, !tbaa !2396
  %i.etp = add nsw i64 %i.eto, %i.etn
  store i64 %i.etp, ptr %i.ept, align 8, !tbaa !2396
  br label %.thread40.i.i.i.i

.thread40.i.i.i.i:                                ; preds = %..thread_crit_edge.i.i.i.i, %.lr.ph48.i..thread40.i_crit_edge.i.i.i
  %i.etq = phi ptr [ %.0.i92.i.i.i, %..thread_crit_edge.i.i.i.i ], [ %.pre.i.i.i, %.lr.ph48.i..thread40.i_crit_edge.i.i.i ] ; 2 uses
  %i.etr = sdiv i32 %.12945.i.i.i.i, 16
  %i.ets = add nuw nsw i32 %.12746.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.ets, %indvars.iv.i.i.i
  br i1 %exitcond.not.i.i.i, label %.loopexit193.i.i.i, label %.lr.ph48.i.i.i.i, !llvm.loop !2397

._crit_edge.thread.i.i.i.i:                       ; preds = %.preheader42.i.i.i.i, %.preheader42.thread.i.i.i.i, %sqlite3Malloc.exit.i.i.i, %sqlite3FaultSim.exit.i.i.i.i.i, %bb.ail, %bb.aik, %sqlite3_mutex_enter.exit.i.i.i86.i.i.i
  %.030.lcssa87.i.i.i.i = phi i32 [ 7, %sqlite3_mutex_enter.exit.i.i.i86.i.i.i ], [ 7, %bb.aik ], [ 7, %sqlite3Malloc.exit.i.i.i ], [ 7, %bb.ail ], [ 7, %sqlite3FaultSim.exit.i.i.i.i.i ], [ %i.eqc, %.preheader42.thread.i.i.i.i ], [ %i.eqc, %.preheader42.i.i.i.i ]
  %i.ett = load ptr, ptr %i.h, align 8, !tbaa !2389 ; 9 uses
  %.not.i35.i.i.i.i = icmp eq ptr %i.ett, null
  br i1 %.not.i35.i.i.i.i, label %.thread182.i.i.i, label %bb.aim

bb.aim:                                           ; preds = %._crit_edge.thread.i.i.i.i
  %i.etu = getelementptr inbounds nuw i8, ptr %i.ett, i64 32
  %i.etv = load i32, ptr %i.etu, align 8, !tbaa !2180
  %.not11.i.i.i.i.i = icmp eq i32 %i.etv, 0
  br i1 %.not11.i.i.i.i.i, label %sqlite3OsCloseFree.exit22.i.i.i.i.i, label %bb.ain

bb.ain:                                           ; preds = %bb.aim
  %i.etw = load ptr, ptr %i.ett, align 8, !tbaa !2182 ; 3 uses
  %i.etx = load ptr, ptr %i.etw, align 8, !tbaa !2162 ; 7 uses
  %.not.i.i36.i.i.i.i = icmp eq ptr %i.etx, null
  br i1 %.not.i.i36.i.i.i.i, label %vdbeSorterJoinThread.exit.i.i.i.i.i, label %bb.aio

bb.aio:                                           ; preds = %bb.ain
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #58
  store ptr inttoptr (i64 1 to ptr), ptr %i.g, align 8, !tbaa !459
  %i.ety = getelementptr inbounds nuw i8, ptr %i.etx, i64 8
  %i.etz = load i32, ptr %i.ety, align 8, !tbaa !2163
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.etz, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.aiq, label %bb.aip

bb.aip:                                           ; preds = %bb.aio
  %i.eua = getelementptr inbounds nuw i8, ptr %i.etx, i64 16
  %i.eub = load ptr, ptr %i.eua, align 8, !tbaa !2165
  store ptr %i.eub, ptr %i.g, align 8, !tbaa !459
  br label %bb.air

bb.aiq:                                           ; preds = %bb.aio
  %i.euc = load i64, ptr %i.etx, align 8, !tbaa !2166
  %i.eud = call i32 @pthread_join(i64 noundef %i.euc, ptr noundef nonnull %i.g) #58, !inline_history !2398 ; 0 uses
  br label %bb.air

bb.air:                                           ; preds = %bb.aiq, %bb.aip
  %i.eue = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.eue, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.aiv, label %bb.ais

bb.ais:                                           ; preds = %bb.air
  %i.euf = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.euf, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %sqlite3_mutex_enter.exit.i.i.i.i.i.i.i.i, label %bb.ait

bb.ait:                                           ; preds = %bb.ais
  %i.eug = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  call void %i.eug(ptr noundef nonnull %i.euf) #58, !inline_history !2399
  br label %sqlite3_mutex_enter.exit.i.i.i.i.i.i.i.i

sqlite3_mutex_enter.exit.i.i.i.i.i.i.i.i:         ; preds = %bb.ait, %bb.ais
  %i.euh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.eui = call i32 %i.euh(ptr noundef nonnull %i.etx) #58, !inline_history !2400
  %i.euj = sext i32 %i.eui to i64
  %i.euk = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.eul = sub nsw i64 %i.euk, %i.euj
  store i64 %i.eul, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.eum = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.eun = add nsw i64 %i.eum, -1
  store i64 %i.eun, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.euo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  call void %i.euo(ptr noundef nonnull %i.etx) #58, !inline_history !2401
  %i.eup = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i4.i.i.i.i.i.i.i.i = icmp eq ptr %i.eup, null
  br i1 %.not.i4.i.i.i.i.i.i.i.i, label %sqlite3ThreadJoin.exit.i.i.i.i.i.i, label %bb.aiu

bb.aiu:                                           ; preds = %sqlite3_mutex_enter.exit.i.i.i.i.i.i.i.i
  %i.euq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  call void %i.euq(ptr noundef nonnull %i.eup) #58, !inline_history !2402
  br label %sqlite3ThreadJoin.exit.i.i.i.i.i.i

bb.aiv:                                           ; preds = %bb.air
  %i.eur = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  call void %i.eur(ptr noundef nonnull %i.etx) #58, !inline_history !2401
  br label %sqlite3ThreadJoin.exit.i.i.i.i.i.i

sqlite3ThreadJoin.exit.i.i.i.i.i.i:               ; preds = %bb.aiv, %bb.aiu, %sqlite3_mutex_enter.exit.i.i.i.i.i.i.i.i
  %i.eus = getelementptr inbounds nuw i8, ptr %i.etw, i64 8
  store i32 0, ptr %i.eus, align 8, !tbaa !2171
  store ptr null, ptr %i.etw, align 8, !tbaa !2162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #58
  br label %vdbeSorterJoinThread.exit.i.i.i.i.i

vdbeSorterJoinThread.exit.i.i.i.i.i:              ; preds = %sqlite3ThreadJoin.exit.i.i.i.i.i.i, %bb.ain
  %i.eut = getelementptr inbounds nuw i8, ptr %i.ett, i64 40
  %i.euu = load ptr, ptr %i.eut, align 8, !tbaa !2187 ; 7 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.euu, null
  br i1 %.not12.i.i.i.i.i, label %sqlite3OsCloseFree.exit.i.i.i.i.i, label %bb.aiw

bb.aiw:                                           ; preds = %vdbeSorterJoinThread.exit.i.i.i.i.i
  %i.euv = load ptr, ptr %i.euu, align 8, !tbaa !483 ; 2 uses
  %.not.i.i14.i.i.i.i.i = icmp eq ptr %i.euv, null
  br i1 %.not.i.i14.i.i.i.i.i, label %sqlite3OsClose.exit.i.i.i.i.i.i, label %bb.aix

bb.aix:                                           ; preds = %bb.aiw
  %i.euw = getelementptr inbounds nuw i8, ptr %i.euv, i64 8
  %i.eux = load ptr, ptr %i.euw, align 8, !tbaa !1636
  %i.euy = call i32 %i.eux(ptr noundef nonnull %i.euu) #58, !inline_history !2403 ; 0 uses
  store ptr null, ptr %i.euu, align 8, !tbaa !483
  br label %sqlite3OsClose.exit.i.i.i.i.i.i

sqlite3OsClose.exit.i.i.i.i.i.i:                  ; preds = %bb.aix, %bb.aiw
  %i.euz = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i2.i.i.i.i.i.i = icmp eq i32 %i.euz, 0
  br i1 %.not.i2.i.i.i.i.i.i, label %bb.ajb, label %bb.aiy

bb.aiy:                                           ; preds = %sqlite3OsClose.exit.i.i.i.i.i.i
  %i.eva = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i.i15.i.i.i.i.i = icmp eq ptr %i.eva, null
  br i1 %.not.i.i.i15.i.i.i.i.i, label %sqlite3_mutex_enter.exit.i.i.i.i.i.i.i, label %bb.aiz

bb.aiz:                                           ; preds = %bb.aiy
  %i.evb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  call void %i.evb(ptr noundef nonnull %i.eva) #58, !inline_history !2404
  br label %sqlite3_mutex_enter.exit.i.i.i.i.i.i.i

sqlite3_mutex_enter.exit.i.i.i.i.i.i.i:           ; preds = %bb.aiz, %bb.aiy
  %i.evc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.evd = call i32 %i.evc(ptr noundef nonnull %i.euu) #58, !inline_history !2405
  %i.eve = sext i32 %i.evd to i64
  %i.evf = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.evg = sub nsw i64 %i.evf, %i.eve
  store i64 %i.evg, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.evh = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.evi = add nsw i64 %i.evh, -1
  store i64 %i.evi, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.evj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  call void %i.evj(ptr noundef nonnull %i.euu) #58, !inline_history !2406
  %i.evk = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i4.i.i.i.i.i.i.i = icmp eq ptr %i.evk, null
  br i1 %.not.i4.i.i.i.i.i.i.i, label %sqlite3OsCloseFree.exit.i.i.i.i.i, label %bb.aja

bb.aja:                                           ; preds = %sqlite3_mutex_enter.exit.i.i.i.i.i.i.i
  %i.evl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  call void %i.evl(ptr noundef nonnull %i.evk) #58, !inline_history !2407
  br label %sqlite3OsCloseFree.exit.i.i.i.i.i

bb.ajb:                                           ; preds = %sqlite3OsClose.exit.i.i.i.i.i.i
  %i.evm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  call void %i.evm(ptr noundef nonnull %i.euu) #58, !inline_history !2406
  br label %sqlite3OsCloseFree.exit.i.i.i.i.i

sqlite3OsCloseFree.exit.i.i.i.i.i:                ; preds = %bb.ajb, %bb.aja, %sqlite3_mutex_enter.exit.i.i.i.i.i.i.i, %vdbeSorterJoinThread.exit.i.i.i.i.i
  %i.evn = getelementptr inbounds nuw i8, ptr %i.ett, i64 56
  %i.evo = load ptr, ptr %i.evn, align 8, !tbaa !2187 ; 7 uses
  %.not13.i.i.i.i.i = icmp eq ptr %i.evo, null
  br i1 %.not13.i.i.i.i.i, label %sqlite3OsCloseFree.exit22.i.i.i.i.i, label %bb.ajc

bb.ajc:                                           ; preds = %sqlite3OsCloseFree.exit.i.i.i.i.i
  %i.evp = load ptr, ptr %i.evo, align 8, !tbaa !483 ; 2 uses
  %.not.i.i16.i.i.i.i.i = icmp eq ptr %i.evp, null
  br i1 %.not.i.i16.i.i.i.i.i, label %sqlite3OsClose.exit.i17.i.i.i.i.i, label %bb.ajd

bb.ajd:                                           ; preds = %bb.ajc
  %i.evq = getelementptr inbounds nuw i8, ptr %i.evp, i64 8
  %i.evr = load ptr, ptr %i.evq, align 8, !tbaa !1636
  %i.evs = call i32 %i.evr(ptr noundef nonnull %i.evo) #58, !inline_history !2403 ; 0 uses
  store ptr null, ptr %i.evo, align 8, !tbaa !483
  br label %sqlite3OsClose.exit.i17.i.i.i.i.i

sqlite3OsClose.exit.i17.i.i.i.i.i:                ; preds = %bb.ajd, %bb.ajc
  %i.evt = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i2.i18.i.i.i.i.i = icmp eq i32 %i.evt, 0
  br i1 %.not.i2.i18.i.i.i.i.i, label %bb.ajh, label %bb.aje

bb.aje:                                           ; preds = %sqlite3OsClose.exit.i17.i.i.i.i.i
  %i.evu = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i.i19.i.i.i.i.i = icmp eq ptr %i.evu, null
  br i1 %.not.i.i.i19.i.i.i.i.i, label %sqlite3_mutex_enter.exit.i.i20.i.i.i.i.i, label %bb.ajf

bb.ajf:                                           ; preds = %bb.aje
  %i.evv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  call void %i.evv(ptr noundef nonnull %i.evu) #58, !inline_history !2404
  br label %sqlite3_mutex_enter.exit.i.i20.i.i.i.i.i

sqlite3_mutex_enter.exit.i.i20.i.i.i.i.i:         ; preds = %bb.ajf, %bb.aje
  %i.evw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.evx = call i32 %i.evw(ptr noundef nonnull %i.evo) #58, !inline_history !2405
  %i.evy = sext i32 %i.evx to i64
  %i.evz = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.ewa = sub nsw i64 %i.evz, %i.evy
  store i64 %i.ewa, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.ewb = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.ewc = add nsw i64 %i.ewb, -1
  store i64 %i.ewc, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.ewd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  call void %i.ewd(ptr noundef nonnull %i.evo) #58, !inline_history !2406
  %i.ewe = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i4.i.i21.i.i.i.i.i = icmp eq ptr %i.ewe, null
  br i1 %.not.i4.i.i21.i.i.i.i.i, label %sqlite3OsCloseFree.exit22.i.i.i.i.i, label %bb.ajg

bb.ajg:                                           ; preds = %sqlite3_mutex_enter.exit.i.i20.i.i.i.i.i
  %i.ewf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  call void %i.ewf(ptr noundef nonnull %i.ewe) #58, !inline_history !2407
  br label %sqlite3OsCloseFree.exit22.i.i.i.i.i
end_hunk_4
begin_hunk_5_@sqlite3ExprCodeTarget:bb.a

.backedge:                                        ; preds = %bb.e, %bb.e, %bb.ga
  %.0531.be.in = getelementptr inbounds nuw i8, ptr %.0531900, i64 16
  %.0531.be = load ptr, ptr %.0531.be.in, align 8, !tbaa !376 ; 2 uses
  %i.aep = icmp eq ptr %.0531.be, null
  br i1 %i.aep, label %.thread, label %.lr.ph.splitthread-pre-split, !llvm.loop !3862

.split1007.us:                                    ; preds = %bb.e, %.lr.ph.split.us
  %.us-phi1009 = phi ptr [ %.0531900.us, %.lr.ph.split.us ], [ %.0531900, %bb.e ] ; 3 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %.us-phi1009, i64 64 ; 2 uses
  %i.aer = load ptr, ptr %i.aeq, align 8, !tbaa !231 ; 3 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %.us-phi1009, i64 48 ; 2 uses
  %i.aet = load i16, ptr %i.aes, align 8, !tbaa !3235 ; 3 uses
  %i.aeu = sext i16 %i.aet to i64                 ; 2 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %.us-phi1009, i64 44 ; 2 uses
  %i.aew = load i32, ptr %i.aev, align 4, !tbaa !3389
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aer, i64 54
  %i.aey = load i16, ptr %i.aex, align 2, !tbaa !914
  %i.aez = sext i16 %i.aey to i32
  %i.afa = add nsw i32 %i.aez, 1
  %i.afb = mul nsw i32 %i.afa, %i.aew
  %i.afc = tail call fastcc signext i16 @sqlite3TableColumnToStorage(ptr noundef %i.aer, i16 noundef signext %i.aet)
  %i.afd = sext i16 %i.afc to i32
  %i.afe = add nsw i32 %i.afd, 1
  %i.aff = add i32 %i.afe, %i.afb
  %i.afg = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %i.h, i32 noundef 159, i32 noundef %i.aff, i32 noundef %2) ; 0 uses
  %i.afh = load i32, ptr %i.aev, align 4, !tbaa !3389
  %.not590 = icmp eq i32 %i.afh, 0
  %i.afi = select i1 %.not590, ptr @.str.685, ptr @.str.684
  %i.afj = load i16, ptr %i.aes, align 8, !tbaa !3235
  %i.afk = icmp slt i16 %i.afj, 0
  br i1 %i.afk, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %.split1007.us
  %i.afl = load ptr, ptr %i.aeq, align 8, !tbaa !231
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afl, i64 8
  %i.afn = load ptr, ptr %i.afm, align 8, !tbaa !913
  %i.afo = getelementptr inbounds [16 x i8], ptr %i.afn, i64 %i.aeu
  %i.afp = load ptr, ptr %i.afo, align 8, !tbaa !917
  br label %bb.gc

bb.gc:                                            ; preds = %.split1007.us, %bb.gb
  %i.afq = phi ptr [ %i.afp, %bb.gb ], [ @.str.600, %.split1007.us ]
  tail call void (ptr, ptr, ...) @sqlite3VdbeComment(ptr noundef %i.h, ptr noundef nonnull @.str.683, i32 noundef %2, ptr noundef nonnull %i.afi, ptr noundef %i.afq)
  %i.afr = icmp sgt i16 %i.aet, -1
  br i1 %i.afr, label %bb.gd, label %codeVectorCompare.exit

bb.gd:                                            ; preds = %bb.gc
  %i.afs = getelementptr inbounds nuw i8, ptr %i.aer, i64 8
  %i.aft = load ptr, ptr %i.afs, align 8, !tbaa !913
  %i.afu = getelementptr inbounds nuw [16 x i8], ptr %i.aft, i64 %i.aeu
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 9
  %i.afw = load i8, ptr %i.afv, align 1, !tbaa !2314
  %i.afx = icmp eq i8 %i.afw, 69
  br i1 %i.afx, label %bb.ge, label %codeVectorCompare.exit

bb.ge:                                            ; preds = %bb.gd
  %i.afy = tail call fastcc i32 @sqlite3VdbeAddOp1(ptr noundef %i.h, i32 noundef 89, i32 noundef %2) ; 0 uses
  br label %codeVectorCompare.exit

.split1011.us:                                    ; preds = %bb.e, %.lr.ph.split.us
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.686)
  br label %codeVectorCompare.exit

.split1014.us:                                    ; preds = %bb.e, %.lr.ph.split.us
  %.us-phi1016 = phi ptr [ %.0531900.us, %.lr.ph.split.us ], [ %.0531900, %bb.e ] ; 5 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %0, i64 39 ; 5 uses
  %i.aga = load i16, ptr %i.afz, align 1
  %i.agb = getelementptr inbounds nuw i8, ptr %.us-phi1016, i64 56
  %i.agc = load ptr, ptr %i.agb, align 8, !tbaa !3848 ; 6 uses
  %.not587 = icmp eq ptr %i.agc, null
  br i1 %.not587, label %bb.gj, label %bb.gf

bb.gf:                                            ; preds = %.split1014.us
  %i.agd = load i8, ptr %i.agc, align 8, !tbaa !3594
  %.not588 = icmp eq i8 %i.agd, 0
  br i1 %.not588, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %i.age = getelementptr inbounds nuw i8, ptr %i.agc, i64 16
  %i.agf = load i32, ptr %i.age, align 8, !tbaa !3589
  %i.agg = getelementptr inbounds nuw i8, ptr %.us-phi1016, i64 50
  %i.agh = load i16, ptr %i.agg, align 2, !tbaa !3276
  %i.agi = sext i16 %i.agh to i32
  %i.agj = add nsw i32 %i.agf, %i.agi
  br label %codeVectorCompare.exit

bb.gh:                                            ; preds = %bb.gf
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agc, i64 1
  %i.agl = load i8, ptr %i.agk, align 1, !tbaa !3599
  %.not589 = icmp eq i8 %i.agl, 0
  br i1 %.not589, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agc, i64 12
  %i.agn = load i32, ptr %i.agm, align 4, !tbaa !3598
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agc, i64 32
  %i.agp = load ptr, ptr %i.ago, align 8, !tbaa !3590
  %i.agq = getelementptr inbounds nuw i8, ptr %.us-phi1016, i64 50
  %i.agr = load i16, ptr %i.agq, align 2, !tbaa !3276
  %i.ags = sext i16 %i.agr to i64
  %i.agt = getelementptr inbounds [32 x i8], ptr %i.agp, i64 %i.ags
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agt, i64 24
  %i.agv = load i32, ptr %i.agu, align 8, !tbaa !3591
  %i.agw = tail call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef %i.h, i32 noundef 96, i32 noundef %i.agn, i32 noundef %i.agv, i32 noundef %2) ; 0 uses
  br label %codeVectorCompare.exit

bb.gj:                                            ; preds = %bb.gh, %.split1014.us
  %i.agx = getelementptr inbounds nuw i8, ptr %.us-phi1016, i64 44
  %i.agy = load i32, ptr %i.agx, align 4, !tbaa !3389
  %i.agz = tail call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef %i.h, i32 noundef 20, i32 noundef %i.agy, i32 noundef 0, i32 noundef %2)
  %i.aha = load i16, ptr %i.afz, align 1
  %i.ahb = and i16 %i.aha, -129
  store i16 %i.ahb, ptr %i.afz, align 1
  %i.ahc = getelementptr inbounds nuw i8, ptr %.us-phi1016, i64 16
  %i.ahd = load ptr, ptr %i.ahc, align 8, !tbaa !376
  tail call fastcc void @sqlite3ExprCode(ptr noundef nonnull %0, ptr noundef %i.ahd, i32 noundef %2)
  %i.ahe = and i16 %i.aga, 128
  %i.ahf = load i16, ptr %i.afz, align 1
  %i.ahg = and i16 %i.ahf, -129
  %i.ahh = or disjoint i16 %i.ahg, %i.ahe
  store i16 %i.ahh, ptr %i.afz, align 1
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.ahj = load i32, ptr %i.ahi, align 8, !tbaa !189
  %i.ahk = load ptr, ptr %i.h, align 8, !tbaa !150
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 103
  %i.ahm = load i8, ptr %i.ahl, align 1, !tbaa !563
  %.not.i.i.i666 = icmp eq i8 %i.ahm, 0
  br i1 %.not.i.i.i666, label %bb.gk, label %sqlite3VdbeJumpHere.exit668

bb.gk:                                            ; preds = %bb.gj
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.aho = load ptr, ptr %i.ahn, align 8, !tbaa !188
  %i.ahp = sext i32 %i.agz to i64
  %i.ahq = getelementptr inbounds [32 x i8], ptr %i.aho, i64 %i.ahp
  br label %sqlite3VdbeJumpHere.exit668

sqlite3VdbeJumpHere.exit668:                      ; preds = %bb.gj, %bb.gk
  %.0.i.i.i667 = phi ptr [ %i.ahq, %bb.gk ], [ @sqlite3VdbeGetOp.dummy, %bb.gj ]
  %i.ahr = getelementptr inbounds nuw i8, ptr %.0.i.i.i667, i64 8
  store i32 %i.ahj, ptr %i.ahr, align 8, !tbaa !574
  br label %codeVectorCompare.exit

.split1018.us:                                    ; preds = %bb.e, %.lr.ph.split.us
  %.us-phi1019 = phi i32 [ undef, %.lr.ph.split.us ], [ %i.y, %bb.e ]
  %.us-phi1020 = phi ptr [ %.0531900.us, %.lr.ph.split.us ], [ %.0531900, %bb.e ] ; 2 uses
  store i32 %.us-phi1019, ptr %i.e, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #58
  %i.ahs = load ptr, ptr %0, align 8, !tbaa !657  ; 4 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %.us-phi1020, i64 32
  %i.ahu = load ptr, ptr %i.aht, align 8, !tbaa !231 ; 2 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahu, i64 8 ; 2 uses
  %i.ahw = load i32, ptr %i.ahu, align 8, !tbaa !27 ; 3 uses
  %i.ahx = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 4 uses
  %i.ahy = load i32, ptr %i.ahx, align 4, !tbaa !3024
  %i.ahz = add nsw i32 %i.ahy, -1                 ; 4 uses
  store i32 %i.ahz, ptr %i.ahx, align 4, !tbaa !3024
  %i.aia = getelementptr inbounds nuw i8, ptr %.us-phi1020, i64 16
  %i.aib = load ptr, ptr %i.aia, align 8, !tbaa !376 ; 2 uses
  %.not584 = icmp eq ptr %i.aib, null             ; 2 uses
  br i1 %.not584, label %bb.go, label %sqlite3ExprDup.exit

sqlite3ExprDup.exit:                              ; preds = %.split1018.us
  %i.aic = tail call fastcc ptr @exprDup(ptr noundef %i.ahs, ptr noundef nonnull readonly %i.aib, i32 noundef 0, ptr noundef null), !inline_history !3386 ; 6 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %i.ahs, i64 103
  %i.aie = load i8, ptr %i.aid, align 1, !tbaa !563
  %.not585 = icmp eq i8 %i.aie, 0
  br i1 %.not585, label %bb.gn, label %bb.gl

bb.gl:                                            ; preds = %sqlite3ExprDup.exit
  %.not.i670 = icmp eq ptr %i.aic, null
  br i1 %.not.i670, label %sqlite3ExprDelete.exit, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  tail call fastcc void @sqlite3ExprDeleteNN(ptr noundef nonnull %i.ahs, ptr noundef %i.aic), !inline_history !148
  br label %sqlite3ExprDelete.exit

bb.gn:                                            ; preds = %sqlite3ExprDup.exit
  %i.aif = call fastcc i32 @exprCodeVector(ptr noundef nonnull %0, ptr noundef %i.aic, ptr noundef %i.c)
  tail call fastcc void @sqlite3ExprToRegister(ptr noundef %i.aic, i32 noundef %i.aif)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %6, i8 0, i64 72, i1 false)
  store i8 54, ptr %6, align 8, !tbaa !2750
  %i.aig = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.aic, ptr %i.aig, align 8, !tbaa !376
  store i32 0, ptr %i.c, align 4, !tbaa !27
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %.split1018.us
  %.0526 = phi ptr [ %6, %bb.gn ], [ null, %.split1018.us ]
  %.0 = phi ptr [ %i.aic, %bb.gn ], [ null, %.split1018.us ] ; 2 uses
  %i.aih = add nsw i32 %i.ahw, -1                 ; 2 uses
  %i.aii = icmp sgt i32 %i.ahw, 1
  br i1 %i.aii, label %.lr.ph1032, label %._crit_edge

.lr.ph1032:                                       ; preds = %bb.go
  %i.aij = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.aik = getelementptr inbounds nuw i8, ptr %i.h, i64 144 ; 3 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %i.h, i64 148
  %i.aim = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.ain = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %sext = zext nneg i32 %i.aih to i64
  br label %bb.gp

bb.gp:                                            ; preds = %.lr.ph1032, %sqlite3VdbeResolveLabel.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph1032 ], [ %indvars.iv.next, %sqlite3VdbeResolveLabel.exit ] ; 2 uses
  %.11031 = phi ptr [ %.0526, %.lr.ph1032 ], [ %.2, %sqlite3VdbeResolveLabel.exit ]
  %i.aio = getelementptr inbounds nuw [24 x i8], ptr %i.ahv, i64 %indvars.iv ; 2 uses
  %i.aip = load ptr, ptr %i.aio, align 8, !tbaa !3229 ; 2 uses
  br i1 %.not584, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  store ptr %i.aip, ptr %i.aij, align 8, !tbaa !1162
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gp, %bb.gq
  %.2 = phi ptr [ %.11031, %bb.gq ], [ %i.aip, %bb.gp ] ; 2 uses
  %i.aiq = load i32, ptr %i.ahx, align 4, !tbaa !3024 ; 2 uses
  %i.air = add nsw i32 %i.aiq, -1                 ; 2 uses
  store i32 %i.air, ptr %i.ahx, align 4, !tbaa !3024
  call void @sqlite3ExprIfFalse(ptr noundef nonnull %0, ptr noundef %.2, i32 noundef %i.air, i32 noundef 16)
  %i.ais = getelementptr inbounds nuw i8, ptr %i.aio, i64 24
  %i.ait = load ptr, ptr %i.ais, align 8, !tbaa !3229
  call fastcc void @sqlite3ExprCode(ptr noundef nonnull %0, ptr noundef %i.ait, i32 noundef %2)
  %i.aiu = load i32, ptr %i.aik, align 8, !tbaa !189 ; 3 uses
  %i.aiv = load i32, ptr %i.ail, align 4, !tbaa !934
  %.not.i.i671 = icmp sgt i32 %i.aiv, %i.aiu
  br i1 %.not.i.i671, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.aiw = call fastcc i32 @growOp3(ptr noundef nonnull %i.h, i32 noundef 9, i32 noundef 0, i32 noundef %i.ahz, i32 noundef 0), !inline_history !3336 ; 0 uses
  br label %sqlite3VdbeGoto.exit

bb.gt:                                            ; preds = %bb.gr
  %i.aix = add nsw i32 %i.aiu, 1
  store i32 %i.aix, ptr %i.aik, align 8, !tbaa !189
  %i.aiy = load ptr, ptr %i.aim, align 8, !tbaa !188
  %i.aiz = sext i32 %i.aiu to i64
  %i.aja = getelementptr inbounds [32 x i8], ptr %i.aiy, i64 %i.aiz ; 6 uses
  store i8 9, ptr %i.aja, align 8, !tbaa !576
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aja, i64 2
  store i16 0, ptr %i.ajb, align 2, !tbaa !577
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.aja, i64 4
  store i32 0, ptr %i.ajc, align 4, !tbaa !572
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.aja, i64 8
  store i32 %i.ahz, ptr %i.ajd, align 8, !tbaa !574
  %i.aje = getelementptr inbounds nuw i8, ptr %i.aja, i64 12
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aja, i64 1
  store i8 0, ptr %i.ajf, align 1, !tbaa !936
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.aje, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeGoto.exit

sqlite3VdbeGoto.exit:                             ; preds = %bb.gs, %bb.gt
  %i.ajg = load ptr, ptr %i.ain, align 8, !tbaa !975 ; 4 uses
  %i.ajh = sub i32 0, %i.aiq                      ; 2 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajg, i64 80
  %i.ajj = load i32, ptr %i.aji, align 8, !tbaa !3729
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajg, i64 76
  %i.ajl = load i32, ptr %i.ajk, align 4, !tbaa !3024
  %i.ajm = add nsw i32 %i.ajl, %i.ajj
  %i.ajn = icmp slt i32 %i.ajm, 0
  br i1 %i.ajn, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %sqlite3VdbeGoto.exit
  call fastcc void @resizeResolveLabel(ptr noundef nonnull %i.ajg, ptr noundef nonnull readonly %i.h, i32 noundef %i.ajh), !inline_history !3730
  br label %sqlite3VdbeResolveLabel.exit

bb.gv:                                            ; preds = %sqlite3VdbeGoto.exit
  %i.ajo = load i32, ptr %i.aik, align 8, !tbaa !189
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajg, i64 88
  %i.ajq = load ptr, ptr %i.ajp, align 8, !tbaa !1008
  %i.ajr = sext i32 %i.ajh to i64
  %i.ajs = getelementptr inbounds [4 x i8], ptr %i.ajq, i64 %i.ajr
  store i32 %i.ajo, ptr %i.ajs, align 4, !tbaa !27
  br label %sqlite3VdbeResolveLabel.exit

sqlite3VdbeResolveLabel.exit:                     ; preds = %bb.gu, %bb.gv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %7 = icmp samesign ult i64 %indvars.iv.next, %sext
  br i1 %7, label %bb.gp, label %._crit_edge, !llvm.loop !3863

._crit_edge:                                      ; preds = %sqlite3VdbeResolveLabel.exit, %bb.go
  %i.ajt = and i32 %i.ahw, 1
  %.not586 = icmp eq i32 %i.ajt, 0
  br i1 %.not586, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %._crit_edge
  %i.aju = sext i32 %i.aih to i64
  %i.ajv = getelementptr inbounds [24 x i8], ptr %i.ahv, i64 %i.aju
  %i.ajw = load ptr, ptr %i.ajv, align 8, !tbaa !3229
  call fastcc void @sqlite3ExprCode(ptr noundef nonnull %0, ptr noundef %i.ajw, i32 noundef %2)
  br label %bb.gy

bb.gx:                                            ; preds = %._crit_edge
  %i.ajx = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %i.h, i32 noundef 77, i32 noundef 0, i32 noundef %2) ; 0 uses
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gw
  %.not.i673 = icmp eq ptr %.0, null
  br i1 %.not.i673, label %sqlite3ExprDelete.exit674, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  call fastcc void @sqlite3ExprDeleteNN(ptr noundef %i.ahs, ptr noundef %.0), !inline_history !148
  br label %sqlite3ExprDelete.exit674

sqlite3ExprDelete.exit674:                        ; preds = %bb.gy, %bb.gz
  call fastcc void @setDoNotMergeFlagOnCopy(ptr noundef %i.h)
  call fastcc void @sqlite3VdbeResolveLabel(ptr noundef %i.h, i32 noundef %i.ahz)
  br label %sqlite3ExprDelete.exit

sqlite3ExprDelete.exit:                           ; preds = %bb.gm, %bb.gl, %sqlite3ExprDelete.exit674
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  br label %codeVectorCompare.exit

.split1022.us:                                    ; preds = %bb.e, %.lr.ph.split.us
  %.us-phi1023 = phi i32 [ undef, %.lr.ph.split.us ], [ %i.y, %bb.e ]
  %.us-phi1024 = phi ptr [ %.0531900.us, %.lr.ph.split.us ], [ %.0531900, %bb.e ] ; 2 uses
  store i32 %.us-phi1023, ptr %i.e, align 4
  %i.ajy = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ajz = load ptr, ptr %i.ajy, align 8, !tbaa !3641
  %.not581 = icmp eq ptr %i.ajz, null
  br i1 %.not581, label %bb.ha, label %bb.hc

bb.ha:                                            ; preds = %.split1022.us
  %i.aka = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.akb = load i8, ptr %i.aka, align 2, !tbaa !3286
  %.not582 = icmp eq i8 %i.akb, 0
  br i1 %.not582, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.687)
  br label %.critedge

bb.hc:                                            ; preds = %bb.ha, %.split1022.us
  %i.akc = getelementptr inbounds nuw i8, ptr %.us-phi1024, i64 1 ; 3 uses
  %i.akd = load i8, ptr %i.akc, align 1, !tbaa !3237 ; 2 uses
  %i.ake = icmp eq i8 %i.akd, 2
  br i1 %i.ake, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %i.akf = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.akg = load ptr, ptr %i.akf, align 8, !tbaa !3339 ; 2 uses
  %.not.i675 = icmp eq ptr %i.akg, null
  %..i = select i1 %.not.i675, ptr %0, ptr %i.akg
  %i.akh = getelementptr inbounds nuw i8, ptr %..i, i64 39 ; 2 uses
  %i.aki = load i16, ptr %i.akh, align 1
  %i.akj = or i16 %i.aki, 2
  store i16 %i.akj, ptr %i.akh, align 1
  %.pr = load i8, ptr %i.akc, align 1, !tbaa !3237
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.hc
  %i.akk = phi i8 [ %.pr, %bb.hd ], [ %i.akd, %bb.hc ]
  %i.akl = icmp eq i8 %i.akk, 4
  br i1 %i.akl, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he
  %i.akm = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %i.h, i32 noundef 72, i32 noundef 0, i32 noundef 4) ; 0 uses
  br label %codeVectorCompare.exit

bb.hg:                                            ; preds = %bb.he
  %i.akn = getelementptr inbounds nuw i8, ptr %.us-phi1024, i64 16
  %i.ako = load ptr, ptr %i.akn, align 8, !tbaa !376
  %i.akp = call fastcc i32 @sqlite3ExprCodeTemp(ptr noundef nonnull %0, ptr noundef %i.ako, ptr noundef %i.c)
  %i.akq = load ptr, ptr %i.ajy, align 8, !tbaa !3641
  %.not583 = icmp eq ptr %i.akq, null
  %i.akr = select i1 %.not583, i32 1, i32 1811
  %i.aks = load i8, ptr %i.akc, align 1, !tbaa !3237
  %i.akt = sext i8 %i.aks to i32
  %i.aku = tail call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef %i.h, i32 noundef 72, i32 noundef %i.akr, i32 noundef %i.akt, i32 noundef %i.akp) ; 0 uses
  br label %codeVectorCompare.exit

codeVectorCompare.exit:                           ; preds = %bb.fr, %bb.fq, %sqlite3ReleaseTempRange.exit, %.thread751, %bb.do, %bb.dn, %bb.ct, %bb.cs, %bb.cl, %sqlite3VdbeJumpHere.exit681, %bb.az, %sqlite3ExprVectorSize.exit732, %bb.p, %bb.gg, %bb.gi, %sqlite3VdbeJumpHere.exit668, %bb.gc, %bb.gd, %bb.ge, %bb.dm, %sqlite3VdbeAddOp3.exit637, %sqlite3VdbeAddOp2.exit646, %sqlite3VdbeAddOp3.exit, %sqlite3VdbeJumpHere.exit, %bb.hf, %bb.hg, %sqlite3ExprDelete.exit, %.split1011.us, %sqlite3VdbeJumpHere.exit660, %.split972.us, %.split952.us
  %.1543 = phi i32 [ %2, %bb.p ], [ %2, %bb.hg ], [ %2, %.split952.us ], [ %i.agj, %bb.gg ], [ %2, %bb.dm ], [ %2, %bb.ct ], [ %2, %.split972.us ], [ %2, %sqlite3VdbeJumpHere.exit660 ], [ %2, %.thread751 ], [ %2, %sqlite3ReleaseTempRange.exit ], [ %2, %bb.do ], [ %2, %sqlite3VdbeAddOp3.exit637 ], [ %2, %.split1011.us ], [ %2, %bb.gc ], [ %2, %sqlite3ExprDelete.exit ], [ %2, %bb.hf ], [ %2, %bb.cl ], [ %2, %sqlite3VdbeJumpHere.exit ], [ %2, %sqlite3VdbeAddOp3.exit ], [ %2, %sqlite3VdbeAddOp2.exit646 ], [ %2, %bb.ge ], [ %2, %bb.gd ], [ %2, %bb.gi ], [ %2, %sqlite3VdbeJumpHere.exit668 ], [ %2, %sqlite3ExprVectorSize.exit732 ], [ %2, %bb.az ], [ %2, %sqlite3VdbeJumpHere.exit681 ], [ %2, %bb.cs ], [ %2, %bb.dn ], [ %2, %bb.fq ], [ %2, %bb.fr ] ; 3 uses
  %i.akv = load i32, ptr %i.c, align 4, !tbaa !27 ; 2 uses
  %.not.i676 = icmp eq i32 %i.akv, 0
  br i1 %.not.i676, label %sqlite3ReleaseTempReg.exit, label %bb.hh

bb.hh:                                            ; preds = %codeVectorCompare.exit
  %i.akw = getelementptr inbounds nuw i8, ptr %0, i64 31 ; 2 uses
  %i.akx = load i8, ptr %i.akw, align 1, !tbaa !3539 ; 3 uses
  %i.aky = icmp ult i8 %i.akx, 8
  br i1 %i.aky, label %bb.hi, label %sqlite3ReleaseTempReg.exit

bb.hi:                                            ; preds = %bb.hh
  %i.akz = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ala = add nuw nsw i8 %i.akx, 1
  store i8 %i.ala, ptr %i.akw, align 1, !tbaa !3539
  %i.alb = zext nneg i8 %i.akx to i64
  %i.alc = getelementptr inbounds nuw [4 x i8], ptr %i.akz, i64 %i.alb
  store i32 %i.akv, ptr %i.alc, align 4, !tbaa !27
  br label %sqlite3ReleaseTempReg.exit

sqlite3ReleaseTempReg.exit:                       ; preds = %codeVectorCompare.exit, %bb.hh, %bb.hi
  %i.ald = load i32, ptr %i.d, align 4, !tbaa !27 ; 2 uses
  %.not.i677 = icmp eq i32 %i.ald, 0
  br i1 %.not.i677, label %.critedge, label %bb.hj

bb.hj:                                            ; preds = %sqlite3ReleaseTempReg.exit
  %i.ale = getelementptr inbounds nuw i8, ptr %0, i64 31 ; 2 uses
  %i.alf = load i8, ptr %i.ale, align 1, !tbaa !3539 ; 3 uses
  %i.alg = icmp ult i8 %i.alf, 8
  br i1 %i.alg, label %bb.hk, label %.critedge

bb.hk:                                            ; preds = %bb.hj
  %i.alh = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ali = add nuw nsw i8 %i.alf, 1
  store i8 %i.ali, ptr %i.ale, align 1, !tbaa !3539
  %i.alj = zext nneg i8 %i.alf to i64
  %i.alk = getelementptr inbounds nuw [4 x i8], ptr %i.alh, i64 %i.alj
  store i32 %i.ald, ptr %i.alk, align 4, !tbaa !27
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.aj, %bb.ai, %bb.fm, %bb.fl, %bb.fk, %bb.fj, %bb.fi, %bb.fg, %bb.ei, %bb.eb, %bb.dz, %bb.l, %bb.m, %bb.k, %bb.i, %bb.o, %bb.g, %bb.hk, %bb.hj, %sqlite3ReleaseTempReg.exit, %bb.fs, %.split990.us, %bb.dy, %bb.dk, %bb.dl, %bb.ah, %sqlite3TableColumnAffinity.exit.thread, %sqlite3TableColumnAffinity.exit, %bb.ac, %bb.ad, %bb.ab, %bb.y, %bb.v, %bb.ag, %bb.hb, %.split1026.us, %.split1003.us, %.split999.us, %bb.fz, %.split940.us, %.split936.us, %.split932.us, %.split928.us, %.split924.us, %.split920.us, %.split916.us, %.split912.us, %.split908.us
  %.7 = phi i32 [ %2, %bb.aj ], [ %.1543, %bb.hk ], [ %i.yn, %bb.dz ], [ 0, %.split990.us ], [ %2, %.split908.us ], [ %2, %.split912.us ], [ %2, %.split916.us ], [ %2, %.split920.us ], [ %2, %.split924.us ], [ %2, %.split928.us ], [ %2, %.split932.us ], [ %i.gi, %.split936.us ], [ %2, %.split940.us ], [ %i.ek, %bb.ag ], [ %i.yd, %bb.dy ], [ %i.ao, %bb.g ], [ %2, %bb.dk ], [ %i.aeb, %bb.fz ], [ %2, %.split999.us ], [ %2, %.split1003.us ], [ %2, %.split1026.us ], [ 0, %bb.hb ], [ %i.dr, %bb.ac ], [ %i.cg, %sqlite3TableColumnAffinity.exit ], [ %2, %bb.ah ], [ %i.cg, %sqlite3TableColumnAffinity.exit.thread ], [ %i.dk, %bb.v ], [ 0, %bb.y ], [ %i.dr, %bb.ab ], [ %2, %bb.ad ], [ %2, %bb.dl ], [ %i.acx, %bb.fs ], [ %.1543, %sqlite3ReleaseTempReg.exit ], [ %.1543, %bb.hj ], [ %2, %bb.l ], [ %2, %bb.m ], [ %2, %bb.k ], [ %2, %bb.i ], [ %2, %bb.o ], [ %2, %bb.fm ], [ %2, %bb.fl ], [ %2, %bb.fk ], [ %2, %bb.fj ], [ %2, %bb.fi ], [ %2, %bb.fg ], [ %i.zt, %bb.ei ], [ %i.yv, %bb.eb ], [ %2, %bb.ai ], [ %i.w, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  ret i32 %.7
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @sqlite3ExprSkipCollateAndLikely(ptr nofree noundef readonly captures(address_is_null, ret: address, provenance) %0) unnamed_addr #14 {
bb.a:
  %.not9 = icmp eq ptr %0, null
  br i1 %.not9, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.010 = phi ptr [ %.1, %bb.f ], [ %0, %bb.a ]   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.010, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !372  ; 2 uses
  %i.c = and i32 %i.b, 532480
  %.not7 = icmp eq i32 %i.c, 0
  br i1 %.not7, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = and i32 %i.b, 524288
  %.not8 = icmp eq i32 %i.d, 0
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.010, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !231
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = load i8, ptr %.010, align 8, !tbaa !2750
  %i.i = icmp eq i8 %i.h, 114
  br i1 %i.i, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.010, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.1.in = phi ptr [ %i.g, %bb.c ], [ %i.j, %bb.e ]
  %.1 = load ptr, ptr %.1.in, align 8, !tbaa !371 ; 2 uses
  %.not = icmp eq ptr %.1, null
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !3838

.critedge:                                        ; preds = %.lr.ph, %bb.d, %bb.f, %bb.a
  %.0.lcssa = phi ptr [ null, %bb.a ], [ null, %bb.f ], [ %.010, %bb.d ], [ %.010, %.lr.ph ]
  ret ptr %.0.lcssa
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc noundef i32 @sqlite3IndexedExprLookup(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2) unnamed_addr #5 {
bb.a:
  %3 = alloca %struct.Walker, align 8             ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %.05685 = load ptr, ptr %i.a, align 8, !tbaa !3864 ; 2 uses
  %.not86 = icmp eq ptr %.05685, null
  br i1 %.not86, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
end_hunk_5
begin_hunk_6_@recomputeColumnsUsedExpr:bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !3533
  %i.ag = or i64 %i.af, %.0.i
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !3533
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.b, %bb.a, %sqlite3ExprColUsed.exit
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 8) i32 @multiSelectByMerge(ptr noundef %0, ptr noundef nonnull %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.SelectDest, align 8         ; 10 uses
  %4 = alloca %struct.SelectDest, align 8         ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  %i.a = load ptr, ptr %0, align 8, !tbaa !657    ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !976  ; 82 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3024 ; 5 uses
  %i.f = add nsw i32 %i.e, -1                     ; 15 uses
  %i.g = add nsw i32 %i.e, -2                     ; 5 uses
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3024
  %i.h = load i8, ptr %1, align 8, !tbaa !3273    ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2769 ; 4 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !27   ; 3 uses
  %.not = icmp eq i8 %i.h, -120                   ; 4 uses
  br i1 %.not, label %.critedge, label %.preheader474

.preheader474:                                    ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 103 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !563
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %.lr.ph484, label %.critedge

.lr.ph484:                                        ; preds = %.preheader474
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph484, %bb.j
  %.0301483 = phi i32 [ %i.k, %.lr.ph484 ], [ %.4, %bb.j ] ; 8 uses
  %.0303482 = phi ptr [ %i.j, %.lr.ph484 ], [ %.3306, %bb.j ] ; 10 uses
  %.0325481 = phi i32 [ 1, %.lr.ph484 ], [ %i.aw, %bb.j ] ; 5 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2764
  %i.q = load i32, ptr %i.p, align 8, !tbaa !27
  %.not342 = icmp sgt i32 %.0325481, %i.q
  br i1 %.not342, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.0303482, i64 8 ; 2 uses
  %i.s = icmp sgt i32 %.0301483, 0
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.0298478 = phi ptr [ %i.y, %bb.d ], [ %i.r, %bb.c ] ; 2 uses
  %.0324477 = phi i32 [ %i.x, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0298478, i64 20
  %i.u = load i16, ptr %i.t, align 4, !tbaa !231
  %i.v = zext i16 %i.u to i32
  %i.w = icmp eq i32 %.0325481, %i.v
  br i1 %i.w, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.x = add nuw nsw i32 %.0324477, 1             ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0298478, i64 24
  %exitcond.not = icmp eq i32 %i.x, %.0301483
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !4397

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.0324.lcssa = phi i32 [ 0, %bb.c ], [ %.0324477, %.lr.ph ]
  %i.z = icmp eq i32 %.0324.lcssa, %.0301483
  br i1 %i.z, label %._crit_edge.thread, label %bb.j

._crit_edge.thread:                               ; preds = %bb.d, %._crit_edge
  %i.aa = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.a, i64 noundef 72), !inline_history !3691 ; 10 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %.critedge354, label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aa, i8 0, i64 72, i1 false)
  store i8 -100, ptr %i.aa, align 8, !tbaa !2750
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 50
  store i16 -1, ptr %i.ab, align 2, !tbaa !3276
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i32 276826112, ptr %i.ac, align 4, !tbaa !372
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i32 %.0325481, ptr %i.ad, align 8, !tbaa !231
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store i32 1, ptr %i.ae, align 8, !tbaa !3277
  %i.af = icmp eq ptr %.0303482, null
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %0, align 8, !tbaa !657
  %i.ah = tail call fastcc ptr @sqlite3ExprListAppendNew(ptr noundef %i.ag, ptr noundef nonnull %i.aa), !inline_history !3280
  br label %sqlite3ExprListAppend.exit

bb.g:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %.0303482, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !27
  %i.ak = load i32, ptr %.0303482, align 8, !tbaa !27 ; 3 uses
  %.not.i361 = icmp sgt i32 %i.aj, %i.ak
  br i1 %.not.i361, label %sqlite3ExprListAppend.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = load ptr, ptr %0, align 8, !tbaa !657
  %i.am = tail call fastcc ptr @sqlite3ExprListAppendGrow(ptr noundef %i.al, ptr noundef %.0303482, ptr noundef nonnull %i.aa), !inline_history !3280
  br label %sqlite3ExprListAppend.exit

sqlite3ExprListAppend.exit.thread:                ; preds = %bb.g
  %i.an = add nsw i32 %i.ak, 1
  store i32 %i.an, ptr %.0303482, align 8, !tbaa !27
  %i.ao = sext i32 %i.ak to i64
  %i.ap = getelementptr inbounds [24 x i8], ptr %i.r, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  store ptr %i.aa, ptr %i.ap, align 8, !tbaa !3229
  store ptr %.0303482, ptr %i.i, align 8, !tbaa !2769
  br label %bb.i

sqlite3ExprListAppend.exit:                       ; preds = %bb.f, %bb.h
  %.0.i = phi ptr [ %i.ah, %bb.f ], [ %i.am, %bb.h ] ; 3 uses
  store ptr %.0.i, ptr %i.i, align 8, !tbaa !2769
  %.not351 = icmp eq ptr %.0.i, null
  br i1 %.not351, label %bb.j, label %bb.i

bb.i:                                             ; preds = %sqlite3ExprListAppend.exit.thread, %sqlite3ExprListAppend.exit
  %.0.i445 = phi ptr [ %.0303482, %sqlite3ExprListAppend.exit.thread ], [ %.0.i, %sqlite3ExprListAppend.exit ] ; 2 uses
  %i.ar = trunc i32 %.0325481 to i16
  %i.as = add nsw i32 %.0301483, 1
  %i.at = sext i32 %.0301483 to i64
  %i.au = getelementptr [24 x i8], ptr %.0.i445, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 28
  store i16 %i.ar, ptr %i.av, align 4, !tbaa !231
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %sqlite3ExprListAppend.exit, %._crit_edge
  %.3306 = phi ptr [ %.0303482, %._crit_edge ], [ null, %sqlite3ExprListAppend.exit ], [ %.0.i445, %bb.i ] ; 2 uses
  %.4 = phi i32 [ %.0301483, %._crit_edge ], [ %.0301483, %sqlite3ExprListAppend.exit ], [ %i.as, %bb.i ] ; 2 uses
  %i.aw = add nuw nsw i32 %.0325481, 1
  %i.ax = load i8, ptr %i.l, align 1, !tbaa !563
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.b, label %.critedge, !llvm.loop !4398

.critedge:                                        ; preds = %bb.j, %bb.b, %.preheader474, %bb.a
  %.4307 = phi ptr [ %i.j, %bb.a ], [ %i.j, %.preheader474 ], [ %.0303482, %bb.b ], [ %.3306, %bb.j ] ; 2 uses
  %.5 = phi i32 [ %i.k, %bb.a ], [ %i.k, %.preheader474 ], [ %.0301483, %bb.b ], [ %.4, %bb.j ] ; 5 uses
  %i.az = add i32 %.5, 1                          ; 3 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = shl nsw i64 %i.ba, 2
  %i.bc = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.a, i64 noundef %i.bb) ; 7 uses
  %.not343 = icmp eq ptr %i.bc, null
  br i1 %.not343, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.critedge
  store i32 %.5, ptr %i.bc, align 4, !tbaa !27
  %.not344490 = icmp slt i32 %.5, 1
  br i1 %.not344490, label %._crit_edge496.thread, label %.lr.ph495.preheader

.lr.ph495.preheader:                              ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %.4307, i64 8 ; 2 uses
  %wide.trip.count = zext i32 %i.az to i64
  %i.be = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter = and i64 %i.be, 1
  %i.bf = icmp eq i32 %i.az, 2
  br i1 %i.bf, label %.lr.ph495.epil.preheader, label %.lr.ph495.preheader.new

.lr.ph495.preheader.new:                          ; preds = %.lr.ph495.preheader
  %unroll_iter = and i64 %i.be, -2
  br label %.lr.ph495

.lr.ph495:                                        ; preds = %.lr.ph495, %.lr.ph495.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph495.preheader.new ], [ %indvars.iv.next.1, %.lr.ph495 ] ; 4 uses
  %.0493 = phi i32 [ 0, %.lr.ph495.preheader.new ], [ %spec.select.1, %.lr.ph495 ]
  %.0295492 = phi ptr [ %i.bd, %.lr.ph495.preheader.new ], [ %i.bt, %.lr.ph495 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph495.preheader.new ], [ %niter.next.1, %.lr.ph495 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0295492, i64 20
  %i.bh = load i16, ptr %i.bg, align 4, !tbaa !231 ; 2 uses
  %i.bi = zext i16 %i.bh to i32
  %i.bj = add nsw i32 %i.bi, -1
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !27
  %i.bl = zext i16 %i.bh to i64
  %.not350 = icmp eq i64 %indvars.iv, %i.bl
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0295492, i64 44
  %i.bn = load i16, ptr %i.bm, align 4, !tbaa !231 ; 2 uses
  %i.bo = zext i16 %i.bn to i32
  %i.bp = add nsw i32 %i.bo, -1
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.next
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !27
  %i.br = zext i16 %i.bn to i64
  %.not350.1 = icmp eq i64 %indvars.iv.next, %i.br
  %i.bs = select i1 %.not350.1, i1 %.not350, i1 false
  %spec.select.1 = select i1 %i.bs, i32 %.0493, i32 1 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0295492, i64 48 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge496.unr-lcssa, label %.lr.ph495, !llvm.loop !4399

._crit_edge496.unr-lcssa:                         ; preds = %.lr.ph495
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge496, label %.lr.ph495.epil.preheader

.lr.ph495.epil.preheader:                         ; preds = %._crit_edge496.unr-lcssa, %.lr.ph495.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph495.preheader ], [ %indvars.iv.next.1, %._crit_edge496.unr-lcssa ] ; 2 uses
  %.0493.epil.init = phi i32 [ 0, %.lr.ph495.preheader ], [ %spec.select.1, %._crit_edge496.unr-lcssa ]
  %.0295492.epil.init = phi ptr [ %i.bd, %.lr.ph495.preheader ], [ %i.bt, %._crit_edge496.unr-lcssa ]
  %lcmp.mod617 = trunc i64 %i.be to i1
  tail call void @llvm.assume(i1 %lcmp.mod617)
  %i.bu = getelementptr inbounds nuw i8, ptr %.0295492.epil.init, i64 20
  %i.bv = load i16, ptr %i.bu, align 4, !tbaa !231 ; 2 uses
  %i.bw = zext i16 %i.bv to i32
  %i.bx = add nsw i32 %i.bw, -1
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.epil.init
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !27
  %i.bz = zext i16 %i.bv to i64
  %.not350.epil = icmp eq i64 %indvars.iv.epil.init, %i.bz
  %spec.select.epil = select i1 %.not350.epil, i32 %.0493.epil.init, i32 1
  br label %._crit_edge496

._crit_edge496:                                   ; preds = %._crit_edge496.unr-lcssa, %.lr.ph495.epil.preheader
  %spec.select.lcssa = phi i32 [ %spec.select.1, %._crit_edge496.unr-lcssa ], [ %spec.select.epil, %.lr.ph495.epil.preheader ]
  %i.ca = icmp eq i32 %spec.select.lcssa, 0
  br i1 %i.ca, label %._crit_edge496.thread, label %bb.l

._crit_edge496.thread:                            ; preds = %bb.k, %._crit_edge496
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.a, ptr noundef nonnull %i.bc)
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge496, %._crit_edge496.thread, %.critedge
  %.1300 = phi ptr [ null, %.critedge ], [ null, %._crit_edge496.thread ], [ %i.bc, %._crit_edge496 ] ; 14 uses
  %i.cb = tail call fastcc ptr @multiSelectByMergeKeyInfo(ptr noundef nonnull %0, ptr noundef %1) ; 2 uses
  br i1 %.not, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !2764
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !27 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !944
  %i.ch = add i32 %i.cg, 1                        ; 5 uses
  %i.ci = add i32 %i.ch, %i.ce
  store i32 %i.ci, ptr %i.cf, align 4, !tbaa !944
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 144 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !189 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 148
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !934
  %.not.i.i = icmp sgt i32 %i.cm, %i.ck
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cn = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.c, i32 noundef 73, i32 noundef 0, i32 noundef %i.ch, i32 noundef 0), !inline_history !977 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit

bb.o:                                             ; preds = %bb.m
  %i.co = add nsw i32 %i.ck, 1
  store i32 %i.co, ptr %i.cj, align 8, !tbaa !189
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !188
  %i.cr = sext i32 %i.ck to i64
  %i.cs = getelementptr inbounds [32 x i8], ptr %i.cq, i64 %i.cr ; 6 uses
  store i8 73, ptr %i.cs, align 8, !tbaa !576
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  store i16 0, ptr %i.ct, align 2, !tbaa !577
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  store i32 0, ptr %i.cu, align 4, !tbaa !572
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i32 %i.ch, ptr %i.cv, align 8, !tbaa !574
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  store i8 0, ptr %i.cx, align 1, !tbaa !936
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cw, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp2.exit

sqlite3VdbeAddOp2.exit:                           ; preds = %bb.n, %bb.o
  %i.cy = tail call fastcc ptr @sqlite3KeyInfoAlloc(ptr noundef %i.a, i32 noundef %i.ce, i32 noundef 1) ; 5 uses
  %.not345 = icmp ne ptr %i.cy, null
  %i.cz = icmp sgt i32 %i.ce, 0
  %or.cond = select i1 %.not345, i1 %i.cz, i1 false
  br i1 %or.cond, label %.lr.ph499, label %.loopexit

.lr.ph499:                                        ; preds = %sqlite3VdbeAddOp2.exit
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %wide.trip.count514 = zext nneg i32 %i.ce to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph499, %bb.p
  %indvars.iv511 = phi i64 [ 0, %.lr.ph499 ], [ %indvars.iv.next512, %bb.p ] ; 4 uses
  %i.dc = trunc nuw nsw i64 %indvars.iv511 to i32
  %i.dd = tail call fastcc ptr @multiSelectCollSeq(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.dc)
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv511
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !2309
  %i.df = load ptr, ptr %i.db, align 8, !tbaa !259
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %indvars.iv511
  store i8 0, ptr %i.dg, align 1, !tbaa !231
  %indvars.iv.next512 = add nuw nsw i64 %indvars.iv511, 1 ; 2 uses
  %exitcond515.not = icmp eq i64 %indvars.iv.next512, %wide.trip.count514
  br i1 %exitcond515.not, label %.loopexit, label %bb.p, !llvm.loop !4400

.loopexit:                                        ; preds = %bb.p, %sqlite3VdbeAddOp2.exit
  %i.dh = icmp eq i8 %i.h, -121
  br i1 %i.dh, label %.thread, label %.critedge4.thread

.thread:                                          ; preds = %bb.l, %.loopexit
  %.0308453 = phi ptr [ %i.cy, %.loopexit ], [ null, %bb.l ] ; 5 uses
  %.0309451 = phi i32 [ %i.ch, %.loopexit ], [ 0, %bb.l ] ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !1351
  %i.dk = and i32 %i.dj, 2097152
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %.preheader472, label %.critedge4.thread

.preheader472:                                    ; preds = %.thread
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !2763 ; 2 uses
  %.not346500 = icmp eq ptr %i.dn, null
  br i1 %.not346500, label %.critedge4.thread, label %.lr.ph503

.lr.ph503:                                        ; preds = %.preheader472, %bb.q
  %i.do = phi ptr [ %i.dt, %bb.q ], [ %i.dn, %.preheader472 ] ; 2 uses
  %.0319502 = phi i32 [ %i.dr, %bb.q ], [ 1, %.preheader472 ] ; 2 uses
  %.0321501 = phi ptr [ %i.do, %bb.q ], [ %1, %.preheader472 ]
  %i.dp = load i8, ptr %.0321501, align 8, !tbaa !3273
  %i.dq = icmp eq i8 %i.dp, %i.h
  br i1 %i.dq, label %bb.q, label %.critedge4

bb.q:                                             ; preds = %.lr.ph503
  %i.dr = add nuw nsw i32 %.0319502, 1            ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 72
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !2763 ; 2 uses
  %.not346 = icmp eq ptr %i.dt, null
  br i1 %.not346, label %.critedge4, label %.lr.ph503, !llvm.loop !4401

.critedge4:                                       ; preds = %bb.q, %.lr.ph503
  %.0319.lcssa = phi i32 [ %.0319502, %.lr.ph503 ], [ %i.dr, %bb.q ] ; 2 uses
  %i.du = icmp samesign ult i32 %.0319.lcssa, 4
  br i1 %i.du, label %.critedge4.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.critedge4
  %i.dv = add i32 %.0319.lcssa, -3                ; 2 uses
  %i.dw = lshr i32 %i.dv, 1
  %i.dx = add nuw i32 %i.dw, 1                    ; 2 uses
  %xtraiter618 = and i32 %i.dx, 7                 ; 3 uses
  %i.dy = icmp ult i32 %i.dv, 14
  br i1 %i.dy, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter622 = and i32 %i.dx, -8
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.1322508 = phi ptr [ %1, %.preheader.preheader.new ], [ %i.eo, %.preheader ]
  %niter623 = phi i32 [ 0, %.preheader.preheader.new ], [ %niter623.next.7, %.preheader ]
  %i.dz = getelementptr inbounds nuw i8, ptr %.1322508, i64 72
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !2763
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 72
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !2763
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 72
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !2763
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 72
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !2763
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 72
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !2763
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 72
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !2763
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 72
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !2763
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 72
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !2763 ; 3 uses
  %niter623.next.7 = add i32 %niter623, 8         ; 2 uses
  %niter623.ncmp.7.not = icmp eq i32 %niter623.next.7, %unroll_iter622
  br i1 %niter623.ncmp.7.not, label %.critedge4.thread.loopexit.unr-lcssa, label %.preheader, !llvm.loop !4402

.critedge4.thread.loopexit.unr-lcssa:             ; preds = %.preheader
  %lcmp.mod619.not = icmp eq i32 %xtraiter618, 0
  br i1 %lcmp.mod619.not, label %.critedge4.thread, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.critedge4.thread.loopexit.unr-lcssa, %.preheader.preheader
  %.1322508.epil.init = phi ptr [ %1, %.preheader.preheader ], [ %i.eo, %.critedge4.thread.loopexit.unr-lcssa ]
  %lcmp.mod621 = icmp ne i32 %xtraiter618, 0
  tail call void @llvm.assume(i1 %lcmp.mod621)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.1322508.epil = phi ptr [ %i.eq, %.preheader.epil ], [ %.1322508.epil.init, %.preheader.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.1322508.epil, i64 72
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !2763 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter618
  br i1 %epil.iter.cmp.not, label %.critedge4.thread, label %.preheader.epil, !llvm.loop !4403

.critedge4.thread:                                ; preds = %.critedge4.thread.loopexit.unr-lcssa, %.preheader.epil, %.preheader472, %.loopexit, %.thread, %.critedge4
  %.0309450462 = phi i32 [ %.0309451, %.thread ], [ %.0309451, %.critedge4 ], [ %i.ch, %.loopexit ], [ %.0309451, %.preheader472 ], [ %.0309451, %.preheader.epil ], [ %.0309451, %.critedge4.thread.loopexit.unr-lcssa ] ; 2 uses
  %.0308452461 = phi ptr [ %.0308453, %.thread ], [ %.0308453, %.critedge4 ], [ %i.cy, %.loopexit ], [ %.0308453, %.preheader472 ], [ %.0308453, %.preheader.epil ], [ %.0308453, %.critedge4.thread.loopexit.unr-lcssa ] ; 3 uses
end_hunk_6
begin_hunk_7_@sqlite3WhereCodeOneLoopStart:bb.a
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akv, i64 4
  store i32 %i.xn, ptr %i.akx, align 4, !tbaa !572
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akv, i64 8
  store i32 %.08.i1274, ptr %i.aky, align 8, !tbaa !574
  %i.akz = getelementptr inbounds nuw i8, ptr %i.akv, i64 12
  %i.ala = trunc i64 %i.akn to i32
  store i32 %i.ala, ptr %i.akz, align 4, !tbaa !575
  %i.alb = getelementptr inbounds nuw i8, ptr %i.akv, i64 16
  %i.alc = getelementptr inbounds nuw i8, ptr %i.akv, i64 1
  store i8 0, ptr %i.alc, align 1, !tbaa !936
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.alb, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp3.exit1277

sqlite3VdbeAddOp3.exit1277:                       ; preds = %bb.hi, %bb.hj
  %indvars.iv.next1578 = add nuw nsw i64 %indvars.iv1577, 1 ; 2 uses
  %i.ald = load i16, ptr %i.aju, align 2, !tbaa !924 ; 2 uses
  %i.ale = zext i16 %i.ald to i64
  %i.alf = icmp samesign ult i64 %indvars.iv.next1578, %i.ale
  br i1 %i.alf, label %bb.hf, label %._crit_edge1489.loopexit, !llvm.loop !4496

._crit_edge1489.loopexit:                         ; preds = %sqlite3VdbeAddOp3.exit1277
  %i.alg = zext i16 %i.ald to i32
  br label %._crit_edge1489

._crit_edge1489:                                  ; preds = %._crit_edge1489.loopexit, %sqlite3PrimaryKeyIndex.exit
  %.lcssa1445.in = phi i32 [ 0, %sqlite3PrimaryKeyIndex.exit ], [ %i.alg, %._crit_edge1489.loopexit ]
  %i.alh = tail call fastcc i32 @sqlite3VdbeAddOp4Int(ptr noundef nonnull %1, i32 noundef 28, i32 noundef %i.o, i32 noundef %i.an, i32 noundef %i.ajx, i32 noundef %.lcssa1445.in) ; 0 uses
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hc, %._crit_edge1489, %bb.hd, %bb.hb
  %spec.select1155 = phi ptr [ %i.xl, %bb.hc ], [ %i.xl, %._crit_edge1489 ], [ %i.xl, %bb.hd ], [ null, %bb.hb ]
  %i.ali = load i32, ptr %4, align 8, !tbaa !4329
  %i.alj = icmp eq i32 %i.ali, 0
  br i1 %i.alj, label %bb.hl, label %bb.ho

bb.hl:                                            ; preds = %bb.hk
  %i.alk = getelementptr inbounds nuw i8, ptr %i.xl, i64 72
  %i.all = load ptr, ptr %i.alk, align 8, !tbaa !2455 ; 2 uses
  %.not1098 = icmp eq ptr %i.all, null
  br i1 %.not1098, label %bb.ho, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.alm = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.aln = load ptr, ptr %i.alm, align 8, !tbaa !3561
  %i.alo = icmp eq ptr %i.aln, null
  br i1 %i.alo, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  tail call fastcc void @whereApplyPartialIndexConstraints(ptr noundef nonnull %i.all, i32 noundef %i.o, ptr noundef nonnull %i.c)
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hk, %bb.hl, %bb.hm, %bb.hn
  %i.alp = load i32, ptr %i.dc, align 8, !tbaa !4221 ; 3 uses
  %i.alq = and i32 %i.alp, 4096
  %.not1099 = icmp eq i32 %i.alq, 0
  br i1 %.not1099, label %bb.hp, label %bb.hr

bb.hp:                                            ; preds = %bb.ho
  %i.alr = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.als = load i32, ptr %i.alr, align 8, !tbaa !231
  %i.alt = icmp ne i32 %i.als, 0
  %or.cond17 = and i1 %.not1082, %i.alt
  br i1 %or.cond17, label %bb.hq, label %bb.hs

bb.hq:                                            ; preds = %bb.hp
  %i.alu = tail call fastcc i32 @whereLoopIsOneRow(ptr noundef nonnull %i.f)
  %.not1100 = icmp eq i32 %i.alu, 0
  br i1 %.not1100, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.ho
  %i.alv = getelementptr inbounds nuw i8, ptr %4, i64 73
  store i8 -67, ptr %i.alv, align 1, !tbaa !4328
  br label %bb.hv

bb.hs:                                            ; preds = %bb.hq, %bb.hp
  %.not1101 = icmp eq i32 %i.ah, 0
  %i.alw = getelementptr inbounds nuw i8, ptr %4, i64 73 ; 2 uses
  br i1 %.not1101, label %bb.hu, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  store i8 39, ptr %i.alw, align 1, !tbaa !4328
  br label %bb.hv

bb.hu:                                            ; preds = %bb.hs
  store i8 40, ptr %i.alw, align 1, !tbaa !4328
  br label %bb.hv

bb.hv:                                            ; preds = %bb.ht, %bb.hu, %bb.hr
  %i.alx = getelementptr inbounds nuw i8, ptr %4, i64 76
  store i32 %i.xn, ptr %i.alx, align 4, !tbaa !4332
  %i.aly = lshr i32 %i.alp, 16
  %i.alz = trunc i32 %i.aly to i8
  %i.ama = and i8 %i.alz, 1
  %i.amb = getelementptr inbounds nuw i8, ptr %4, i64 74
  store i8 %i.ama, ptr %i.amb, align 2, !tbaa !4333
  %i.amc = and i32 %i.alp, 15
  %i.amd = icmp eq i32 %i.amc, 0
  br i1 %i.amd, label %bb.hw, label %bb.hx

bb.hw:                                            ; preds = %bb.hv
  %i.ame = getelementptr inbounds nuw i8, ptr %4, i64 75
  store i8 1, ptr %i.ame, align 1, !tbaa !4334
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hv, %bb.hw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  br label %.critedge1157

bb.hy:                                            ; preds = %bb.dp
  %i.amf = and i32 %i.dd, 8192
  %.not1054 = icmp eq i32 %i.amf, 0
  br i1 %.not1054, label %bb.km, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.amg = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.amh = load i32, ptr %i.amg, align 8, !tbaa !945 ; 3 uses
  %i.ami = add nsw i32 %i.amh, 1
  store i32 %i.ami, ptr %i.amg, align 8, !tbaa !945
  %i.amj = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 6 uses
  %i.amk = load i32, ptr %i.amj, align 4, !tbaa !944
  %i.aml = add nsw i32 %i.amk, 1                  ; 5 uses
  store i32 %i.aml, ptr %i.amj, align 4, !tbaa !944
  %i.amm = load i32, ptr %i.al, align 4, !tbaa !3024
  %i.amn = add nsw i32 %i.amm, -1                 ; 4 uses
  store i32 %i.amn, ptr %i.al, align 4, !tbaa !3024
  %i.amo = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.amp = load ptr, ptr %i.amo, align 8, !tbaa !2745 ; 6 uses
  %i.amq = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.amr = load ptr, ptr %i.amq, align 8, !tbaa !4216
  %i.ams = load ptr, ptr %i.amr, align 8, !tbaa !4254 ; 3 uses
  %i.amt = getelementptr inbounds nuw i8, ptr %i.ams, i64 32
  %i.amu = load ptr, ptr %i.amt, align 8, !tbaa !231 ; 2 uses
  %i.amv = getelementptr inbounds nuw i8, ptr %4, i64 73
  store i8 69, ptr %i.amv, align 1, !tbaa !4328
  %i.amw = getelementptr inbounds nuw i8, ptr %4, i64 76
  store i32 %i.aml, ptr %i.amw, align 4, !tbaa !4332
  %i.amx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.amy = load i8, ptr %i.amx, align 8, !tbaa !231 ; 2 uses
  %i.amz = icmp ugt i8 %i.amy, 1
  br i1 %i.amz, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.ana = getelementptr inbounds nuw i8, ptr %i.m, i64 27
  %i.anb = load i8, ptr %i.ana, align 1
  %i.anc = and i8 %i.anb, 4
  %.not1056 = icmp eq i8 %i.anc, 0
  br i1 %.not1056, label %bb.id, label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %bb.hz
  %i.and = zext i8 %i.amy to i32
  %i.ane = sub nsw i32 %i.and, %3                 ; 5 uses
  %i.anf = sext i32 %i.ane to i64
  %i.ang = mul nsw i64 %i.anf, 72
  %i.anh = add nsw i64 %i.ang, 8
  %i.ani = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.d, i64 noundef %i.anh) ; 6 uses
  %.not1058 = icmp eq ptr %i.ani, null
  br i1 %.not1058, label %.critedge, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.anj = and i32 %i.ane, 255                    ; 2 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %i.ani, i64 4
  store i32 %i.anj, ptr %i.ank, align 4, !tbaa !27
  store i32 %i.anj, ptr %i.ani, align 8, !tbaa !27
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ani, i64 8 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.anl, ptr noundef nonnull align 8 dereferenceable(72) %i.m, i64 72, i1 false)
  %i.anm = load ptr, ptr %i.g, align 8, !tbaa !4072
  %i.ann = getelementptr inbounds nuw i8, ptr %i.anm, i64 8 ; 3 uses
  %.not1057.not1491 = icmp sgt i32 %i.ane, 1
  br i1 %.not1057.not1491, label %.lr.ph1494.preheader, label %._crit_edge1495

.lr.ph1494.preheader:                             ; preds = %bb.ic
  %wide.trip.count1583 = zext nneg i32 %i.ane to i64
  %i.ano = add nsw i64 %wide.trip.count1583, -1   ; 3 uses
  %xtraiter = and i64 %i.ano, 1
  %i.anp = icmp eq i32 %i.ane, 2
  br i1 %i.anp, label %.lr.ph1494.epil.preheader, label %.lr.ph1494.preheader.new

.lr.ph1494.preheader.new:                         ; preds = %.lr.ph1494.preheader
  %unroll_iter = and i64 %i.ano, -2
  br label %.lr.ph1494

.lr.ph1494:                                       ; preds = %.lr.ph1494, %.lr.ph1494.preheader.new
  %indvars.iv1580 = phi i64 [ 1, %.lr.ph1494.preheader.new ], [ %indvars.iv.next1581.1, %.lr.ph1494 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph1494.preheader.new ], [ %niter.next.1, %.lr.ph1494 ]
  %i.anq = getelementptr inbounds nuw [72 x i8], ptr %i.anl, i64 %indvars.iv1580
  %i.anr = getelementptr inbounds nuw [120 x i8], ptr %4, i64 %indvars.iv1580
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anr, i64 72
  %i.ant = load i8, ptr %i.ans, align 8, !tbaa !4272
  %i.anu = zext i8 %i.ant to i64
  %i.anv = getelementptr inbounds nuw [72 x i8], ptr %i.ann, i64 %i.anu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.anq, ptr noundef nonnull align 8 dereferenceable(72) %i.anv, i64 72, i1 false)
  %indvars.iv.next1581 = add nuw nsw i64 %indvars.iv1580, 1 ; 2 uses
  %i.anw = getelementptr inbounds nuw [72 x i8], ptr %i.anl, i64 %indvars.iv.next1581
  %i.anx = getelementptr inbounds nuw [120 x i8], ptr %4, i64 %indvars.iv.next1581
  %i.any = getelementptr inbounds nuw i8, ptr %i.anx, i64 72
  %i.anz = load i8, ptr %i.any, align 8, !tbaa !4272
  %i.aoa = zext i8 %i.anz to i64
  %i.aob = getelementptr inbounds nuw [72 x i8], ptr %i.ann, i64 %i.aoa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.anw, ptr noundef nonnull align 8 dereferenceable(72) %i.aob, i64 72, i1 false)
  %indvars.iv.next1581.1 = add nuw nsw i64 %indvars.iv1580, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge1495.loopexit.unr-lcssa, label %.lr.ph1494, !llvm.loop !4497

._crit_edge1495.loopexit.unr-lcssa:               ; preds = %.lr.ph1494
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge1495, label %.lr.ph1494.epil.preheader

.lr.ph1494.epil.preheader:                        ; preds = %._crit_edge1495.loopexit.unr-lcssa, %.lr.ph1494.preheader
  %indvars.iv1580.epil.init = phi i64 [ 1, %.lr.ph1494.preheader ], [ %indvars.iv.next1581.1, %._crit_edge1495.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1900 = trunc i64 %i.ano to i1
  tail call void @llvm.assume(i1 %lcmp.mod1900)
  %i.aoc = getelementptr inbounds nuw [72 x i8], ptr %i.anl, i64 %indvars.iv1580.epil.init
  %i.aod = getelementptr inbounds nuw [120 x i8], ptr %4, i64 %indvars.iv1580.epil.init
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aod, i64 72
  %i.aof = load i8, ptr %i.aoe, align 8, !tbaa !4272
  %i.aog = zext i8 %i.aof to i64
  %i.aoh = getelementptr inbounds nuw [72 x i8], ptr %i.ann, i64 %i.aog
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aoc, ptr noundef nonnull align 8 dereferenceable(72) %i.aoh, i64 72, i1 false)
  br label %._crit_edge1495

._crit_edge1495:                                  ; preds = %.lr.ph1494.epil.preheader, %._crit_edge1495.loopexit.unr-lcssa, %bb.ic
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.ani, i64 35 ; 2 uses
  %i.aoj = load i8, ptr %i.aoi, align 1
  %i.aok = and i8 %i.aoj, -5
  store i8 %i.aok, ptr %i.aoi, align 1
  br label %bb.ie

bb.id:                                            ; preds = %bb.ia
  %i.aol = load ptr, ptr %i.g, align 8, !tbaa !4072
  br label %bb.ie

bb.ie:                                            ; preds = %._crit_edge1495, %bb.id
  %.0970 = phi ptr [ %i.ani, %._crit_edge1495 ], [ %i.aol, %bb.id ] ; 4 uses
  %i.aom = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 2 uses
  %i.aon = load i16, ptr %i.aom, align 4, !tbaa !338
  %i.aoo = and i16 %i.aon, 16
  %i.aop = icmp eq i16 %i.aoo, 0
  br i1 %i.aop, label %bb.if, label %bb.ik

bb.if:                                            ; preds = %bb.ie
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.amp, i64 48
  %i.aor = load i32, ptr %i.aoq, align 8, !tbaa !802
  %i.aos = and i32 %i.aor, 128
  %i.aot = icmp eq i32 %i.aos, 0
  br i1 %i.aot, label %bb.ig, label %bb.ih

bb.ig:                                            ; preds = %bb.if
  %i.aou = load i32, ptr %i.amj, align 4, !tbaa !944
  %i.aov = add nsw i32 %i.aou, 1                  ; 3 uses
  store i32 %i.aov, ptr %i.amj, align 4, !tbaa !944
  %i.aow = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %1, i32 noundef 77, i32 noundef 0, i32 noundef %i.aov) ; 0 uses
  br label %bb.ij

bb.ih:                                            ; preds = %bb.if
  %i.aox = getelementptr inbounds nuw i8, ptr %i.amp, i64 16
  %.06.i1278 = load ptr, ptr %i.aox, align 8, !tbaa !923 ; 2 uses
  %.not7.i1279 = icmp eq ptr %.06.i1278, null
  br i1 %.not7.i1279, label %sqlite3PrimaryKeyIndex.exit1287, label %.lr.ph.i1280

.lr.ph.i1280:                                     ; preds = %bb.ih, %bb.ii
  %.08.i1281 = phi ptr [ %.0.i1283, %bb.ii ], [ %.06.i1278, %bb.ih ] ; 3 uses
  %i.aoy = getelementptr inbounds nuw i8, ptr %.08.i1281, i64 99
  %i.aoz = load i16, ptr %i.aoy, align 1
  %i.apa = and i16 %i.aoz, 3
  %.not5.i1282 = icmp eq i16 %i.apa, 2
  br i1 %.not5.i1282, label %sqlite3PrimaryKeyIndex.exit1287, label %bb.ii

bb.ii:                                            ; preds = %.lr.ph.i1280
  %i.apb = getelementptr inbounds nuw i8, ptr %.08.i1281, i64 40
  %.0.i1283 = load ptr, ptr %i.apb, align 8, !tbaa !923 ; 2 uses
  %.not.i1284 = icmp eq ptr %.0.i1283, null
  br i1 %.not.i1284, label %sqlite3PrimaryKeyIndex.exit1287, label %.lr.ph.i1280, !llvm.loop !2986

sqlite3PrimaryKeyIndex.exit1287:                  ; preds = %.lr.ph.i1280, %bb.ii, %bb.ih
  %.0.lcssa.i1286 = phi ptr [ null, %bb.ih ], [ null, %bb.ii ], [ %.08.i1281, %.lr.ph.i1280 ] ; 2 uses
  %i.apc = load i32, ptr %i.amg, align 8, !tbaa !945 ; 3 uses
  %i.apd = add nsw i32 %i.apc, 1
  store i32 %i.apd, ptr %i.amg, align 8, !tbaa !945
  %i.ape = getelementptr inbounds nuw i8, ptr %.0.lcssa.i1286, i64 94
  %i.apf = load i16, ptr %i.ape, align 2, !tbaa !924
  %i.apg = zext i16 %i.apf to i32
  %i.aph = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %1, i32 noundef 120, i32 noundef %i.apc, i32 noundef %i.apg) ; 0 uses
  tail call fastcc void @sqlite3VdbeSetP4KeyInfo(ptr noundef nonnull %0, ptr noundef %.0.lcssa.i1286)
  br label %bb.ij

bb.ij:                                            ; preds = %sqlite3PrimaryKeyIndex.exit1287, %bb.ig
  %.0962 = phi i32 [ %i.aov, %bb.ig ], [ %i.apc, %sqlite3PrimaryKeyIndex.exit1287 ]
  %i.api = load i32, ptr %i.amj, align 4, !tbaa !944
  %i.apj = add nsw i32 %i.api, 1                  ; 2 uses
  store i32 %i.apj, ptr %i.amj, align 4, !tbaa !944
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ij, %bb.ie
  %.1963 = phi i32 [ %.0962, %bb.ij ], [ 0, %bb.ie ] ; 3 uses
  %.0961 = phi i32 [ %i.apj, %bb.ij ], [ 0, %bb.ie ] ; 4 uses
  %i.apk = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %1, i32 noundef 73, i32 noundef 0, i32 noundef %i.aml)
  %i.apl = getelementptr inbounds nuw i8, ptr %2, i64 124 ; 2 uses
  %i.apm = load i32, ptr %i.apl, align 4, !tbaa !1155 ; 2 uses
  %i.apn = icmp sgt i32 %i.apm, 1
  br i1 %i.apn, label %.lr.ph1498, label %bb.ir

.lr.ph1498:                                       ; preds = %bb.ik
  %i.apo = getelementptr inbounds nuw i8, ptr %2, i64 136
  br label %bb.il

bb.il:                                            ; preds = %.lr.ph1498, %bb.ip
  %i.app = phi i32 [ %i.apm, %.lr.ph1498 ], [ %i.aqg, %bb.ip ] ; 4 uses
  %indvars.iv1585 = phi i64 [ 0, %.lr.ph1498 ], [ %indvars.iv.next1586, %bb.ip ] ; 2 uses
  %.09501496 = phi ptr [ null, %.lr.ph1498 ], [ %.1951, %bb.ip ] ; 5 uses
  %i.apq = load ptr, ptr %i.apo, align 8, !tbaa !1159
  %i.apr = getelementptr inbounds nuw [56 x i8], ptr %i.apq, i64 %indvars.iv1585 ; 4 uses
  %i.aps = load ptr, ptr %i.apr, align 8, !tbaa !1160 ; 2 uses
  %i.apt = icmp eq ptr %i.apr, %i.ams
  br i1 %i.apt, label %bb.ip, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apr, i64 18
  %i.apv = load i16, ptr %i.apu, align 2, !tbaa !4238
  %i.apw = and i16 %i.apv, -32762
  %.not1074 = icmp eq i16 %i.apw, 0
  br i1 %.not1074, label %bb.in, label %bb.ip

bb.in:                                            ; preds = %bb.im
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apr, i64 20
  %i.apy = load i16, ptr %i.apx, align 4, !tbaa !4464
  %i.apz = and i16 %i.apy, 16383
  %i.aqa = icmp eq i16 %i.apz, 0
  br i1 %i.aqa, label %bb.ip, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.aps, i64 4
  %i.aqc = load i32, ptr %i.aqb, align 4, !tbaa !372
  %i.aqd = and i32 %i.aqc, 4194304
  %.not1075 = icmp eq i32 %i.aqd, 0
  br i1 %.not1075, label %sqlite3ExprDup.exit, label %bb.ip

sqlite3ExprDup.exit:                              ; preds = %bb.io
  %i.aqe = tail call fastcc ptr @exprDup(ptr noundef %i.d, ptr noundef readonly %i.aps, i32 noundef 0, ptr noundef null), !inline_history !3386
  %i.aqf = tail call fastcc ptr @sqlite3ExprAnd(ptr noundef nonnull %0, ptr noundef %.09501496, ptr noundef %i.aqe)
  %.pre1604 = load i32, ptr %i.apl, align 4, !tbaa !1155
  br label %bb.ip

bb.ip:                                            ; preds = %bb.io, %bb.in, %bb.im, %bb.il, %sqlite3ExprDup.exit
  %i.aqg = phi i32 [ %.pre1604, %sqlite3ExprDup.exit ], [ %i.app, %bb.il ], [ %i.app, %bb.im ], [ %i.app, %bb.in ], [ %i.app, %bb.io ] ; 2 uses
  %.1951 = phi ptr [ %i.aqf, %sqlite3ExprDup.exit ], [ %.09501496, %bb.il ], [ %.09501496, %bb.im ], [ %.09501496, %bb.in ], [ %.09501496, %bb.io ] ; 3 uses
  %indvars.iv.next1586 = add nuw nsw i64 %indvars.iv1585, 1 ; 2 uses
  %i.aqh = sext i32 %i.aqg to i64
  %i.aqi = icmp slt i64 %indvars.iv.next1586, %i.aqh
  br i1 %i.aqi, label %bb.il, label %._crit_edge1499, !llvm.loop !4498

._crit_edge1499:                                  ; preds = %bb.ip
  %.not1059 = icmp eq ptr %.1951, null
  br i1 %.not1059, label %bb.ir, label %bb.iq

bb.iq:                                            ; preds = %._crit_edge1499
  %i.aqj = tail call fastcc ptr @sqlite3PExpr(ptr noundef nonnull %0, i32 noundef 65580, ptr noundef null, ptr noundef nonnull %.1951)
  br label %bb.ir

bb.ir:                                            ; preds = %._crit_edge1499, %bb.iq, %bb.ik
  %.3953 = phi ptr [ null, %bb.ik ], [ %i.aqj, %bb.iq ], [ null, %._crit_edge1499 ] ; 6 uses
  tail call void (ptr, i8, ptr, ...) @sqlite3VdbeExplain(ptr noundef nonnull %0, i8 noundef zeroext 1, ptr noundef nonnull @.str.977)
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.amu, i64 20 ; 3 uses
  %i.aql = load i32, ptr %i.aqk, align 4, !tbaa !1155
  %i.aqm = icmp sgt i32 %i.aql, 0
  br i1 %i.aqm, label %.lr.ph1510, label %._crit_edge1511

.lr.ph1510:                                       ; preds = %bb.ir
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.amu, i64 32
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.d, i64 103 ; 2 uses
  %.not1066 = icmp eq ptr %.3953, null
  %i.aqp = getelementptr inbounds nuw i8, ptr %.3953, i64 16
  %i.aqq = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.aqr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aqs = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.amp, i64 48 ; 2 uses
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.amp, i64 16
  %i.aqv = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 4 uses
  %i.aqw = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  %i.aqx = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.aqy = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aqz = getelementptr inbounds nuw i8, ptr %0, i64 31 ; 2 uses
  %i.ara = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.arb = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.arc = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 2 uses
  br label %bb.is

bb.is:                                            ; preds = %.lr.ph1510, %sqlite3ExprDelete.exit1292
  %indvars.iv1593 = phi i64 [ 0, %.lr.ph1510 ], [ %indvars.iv.next1594, %sqlite3ExprDelete.exit1292 ] ; 5 uses
  %.09551505 = phi i32 [ 0, %.lr.ph1510 ], [ %.5960, %sqlite3ExprDelete.exit1292 ] ; 6 uses
  %.09641504 = phi ptr [ null, %.lr.ph1510 ], [ %.5969, %sqlite3ExprDelete.exit1292 ] ; 6 uses
  %i.ard = load ptr, ptr %i.aqn, align 8, !tbaa !1159
  %i.are = getelementptr inbounds nuw [56 x i8], ptr %i.ard, i64 %indvars.iv1593 ; 3 uses
  %i.arf = getelementptr inbounds nuw i8, ptr %i.are, i64 28
  %i.arg = load i32, ptr %i.arf, align 4, !tbaa !4418
  %i.arh = icmp eq i32 %i.arg, %i.o
  br i1 %i.arh, label %bb.iu, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.ari = getelementptr inbounds nuw i8, ptr %i.are, i64 20
  %i.arj = load i16, ptr %i.ari, align 4, !tbaa !4464
end_hunk_7
begin_hunk_8_@whereLoopAddOr:bb.a

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.an
  %.promoted = phi i16 [ 0, %.preheader.lr.ph ], [ %i.gg, %bb.an ]
  %indvars.iv114 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next115, %bb.an ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %indvars.iv114 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 10
  br label %bb.q

bb.q:                                             ; preds = %.preheader, %whereOrInsert.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %whereOrInsert.exit ] ; 2 uses
  %i.cm = phi i16 [ %.promoted, %.preheader ], [ %i.gg, %whereOrInsert.exit ] ; 10 uses
  %i.cn = load i64, ptr %i.cj, align 8, !tbaa !4597
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %indvars.iv ; 3 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !4597
  %i.cq = or i64 %i.cp, %i.cn                     ; 4 uses
  %i.cr = load i16, ptr %i.ck, align 8, !tbaa !4599 ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.ct = load i16, ptr %i.cs, align 8, !tbaa !4599 ; 5 uses
  %i.cu = sext i16 %i.cr to i32                   ; 6 uses
  %i.cv = sext i16 %i.ct to i32                   ; 6 uses
  %.not.i = icmp slt i16 %i.cr, %i.ct
  br i1 %.not.i, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cw = add nsw i32 %i.cv, 49
  %i.cx = icmp slt i32 %i.cw, %i.cu
  br i1 %i.cx, label %sqlite3LogEstAdd.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cy = add nsw i32 %i.cv, 31
  %i.cz = icmp slt i32 %i.cy, %i.cu
  br i1 %i.cz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.da = add i16 %i.cr, 1
  br label %sqlite3LogEstAdd.exit

bb.u:                                             ; preds = %bb.s
  %i.db = sub nsw i32 %i.cu, %i.cv
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds i8, ptr @sqlite3LogEstAdd.x, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !231
  %i.df = zext i8 %i.de to i16
  %i.dg = add i16 %i.cr, %i.df
  br label %sqlite3LogEstAdd.exit

bb.v:                                             ; preds = %bb.q
  %i.dh = add nsw i32 %i.cu, 49
  %i.di = icmp slt i32 %i.dh, %i.cv
  br i1 %i.di, label %sqlite3LogEstAdd.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dj = add nsw i32 %i.cu, 31
  %i.dk = icmp slt i32 %i.dj, %i.cv
  br i1 %i.dk, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dl = add i16 %i.ct, 1
  br label %sqlite3LogEstAdd.exit

bb.y:                                             ; preds = %bb.w
  %i.dm = sub nsw i32 %i.cv, %i.cu
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds i8, ptr @sqlite3LogEstAdd.x, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !231
  %i.dq = zext i8 %i.dp to i16
  %i.dr = add i16 %i.ct, %i.dq
  br label %sqlite3LogEstAdd.exit

sqlite3LogEstAdd.exit:                            ; preds = %bb.r, %bb.t, %bb.u, %bb.v, %bb.x, %bb.y
  %.0.i = phi i16 [ %i.dr, %bb.y ], [ %i.da, %bb.t ], [ %i.dg, %bb.u ], [ %i.cr, %bb.r ], [ %i.dl, %bb.x ], [ %i.ct, %bb.v ] ; 4 uses
  %i.ds = load i16, ptr %i.cl, align 2, !tbaa !4600 ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.co, i64 10
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !4600 ; 5 uses
  %i.dv = sext i16 %i.ds to i32                   ; 6 uses
  %i.dw = sext i16 %i.du to i32                   ; 6 uses
  %.not.i81 = icmp slt i16 %i.ds, %i.du
  br i1 %.not.i81, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %sqlite3LogEstAdd.exit
  %i.dx = add nsw i32 %i.dw, 49
  %i.dy = icmp slt i32 %i.dx, %i.dv
  br i1 %i.dy, label %sqlite3LogEstAdd.exit83, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dz = add nsw i32 %i.dw, 31
  %i.ea = icmp slt i32 %i.dz, %i.dv
  br i1 %i.ea, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.eb = add i16 %i.ds, 1
  br label %sqlite3LogEstAdd.exit83

bb.ac:                                            ; preds = %bb.aa
  %i.ec = sub nsw i32 %i.dv, %i.dw
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds i8, ptr @sqlite3LogEstAdd.x, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !231
  %i.eg = zext i8 %i.ef to i16
  %i.eh = add i16 %i.ds, %i.eg
  br label %sqlite3LogEstAdd.exit83

bb.ad:                                            ; preds = %sqlite3LogEstAdd.exit
  %i.ei = add nsw i32 %i.dv, 49
  %i.ej = icmp slt i32 %i.ei, %i.dw
  br i1 %i.ej, label %sqlite3LogEstAdd.exit83, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ek = add nsw i32 %i.dv, 31
  %i.el = icmp slt i32 %i.ek, %i.dw
  br i1 %i.el, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.em = add i16 %i.du, 1
  br label %sqlite3LogEstAdd.exit83

bb.ag:                                            ; preds = %bb.ae
  %i.en = sub nsw i32 %i.dw, %i.dv
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds i8, ptr @sqlite3LogEstAdd.x, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !231
  %i.er = zext i8 %i.eq to i16
  %i.es = add i16 %i.du, %i.er
  br label %sqlite3LogEstAdd.exit83

sqlite3LogEstAdd.exit83:                          ; preds = %bb.z, %bb.ab, %bb.ac, %bb.ad, %bb.af, %bb.ag
  %.0.i82 = phi i16 [ %i.es, %bb.ag ], [ %i.eb, %bb.ab ], [ %i.eh, %bb.ac ], [ %i.ds, %bb.z ], [ %i.em, %bb.af ], [ %i.du, %bb.ad ] ; 3 uses
  %.not49.i = icmp eq i16 %i.cm, 0
  br i1 %.not49.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %sqlite3LogEstAdd.exit83, %bb.ak
  %.051.i = phi ptr [ %i.fc, %bb.ak ], [ %i.ah, %sqlite3LogEstAdd.exit83 ] ; 5 uses
  %.03950.i = phi i16 [ %i.fb, %bb.ak ], [ %i.cm, %sqlite3LogEstAdd.exit83 ]
  %i.et = getelementptr inbounds nuw i8, ptr %.051.i, i64 8
  %i.eu = load i16, ptr %i.et, align 8, !tbaa !4599 ; 2 uses
  %.not44.i = icmp sgt i16 %.0.i, %i.eu
  br i1 %.not44.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i
  %i.ev = load i64, ptr %.051.i, align 8, !tbaa !4597
  %i.ew = and i64 %i.ev, %i.cq
  %i.ex = icmp eq i64 %i.ew, %i.cq
  br i1 %i.ex, label %.loopexit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.lr.ph.i
  %.not45.i = icmp sgt i16 %i.eu, %.0.i
  br i1 %.not45.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ey = load i64, ptr %.051.i, align 8, !tbaa !4597 ; 2 uses
  %i.ez = and i64 %i.ey, %i.cq
  %i.fa = icmp eq i64 %i.ez, %i.ey
  br i1 %i.fa, label %whereOrInsert.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.fb = add i16 %.03950.i, -1                   ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.051.i, i64 16
  %.not.i84 = icmp eq i16 %i.fb, 0
  br i1 %.not.i84, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !4601

._crit_edge.i:                                    ; preds = %bb.ak
  %i.fd = icmp ult i16 %i.cm, 3
  br i1 %i.fd, label %._crit_edge.thread.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %._crit_edge.i
  %wide.trip.count.i = zext i16 %i.cm to i64      ; 2 uses
  %i.fe = add nsw i64 %wide.trip.count.i, -1      ; 3 uses
  %xtraiter = and i64 %i.fe, 1
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 8, !tbaa !4599
  %unroll_iter = and i64 %i.fe, -2
  br label %.preheader.i

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %sqlite3LogEstAdd.exit83
  %i.ff = add nuw nsw i16 %i.cm, 1
  %i.fg = zext nneg i16 %i.cm to i64
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.fg ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 10
  store i16 %.0.i82, ptr %i.fi, align 2, !tbaa !4600
  br label %.loopexit.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %i.fj = phi i16 [ %.pre.i, %.preheader.preheader.i ], [ %i.fu, %.preheader.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ 1, %.preheader.preheader.i ], [ %indvars.iv.next.i.1, %.preheader.i ] ; 3 uses
  %.153.i = phi ptr [ %i.ah, %.preheader.preheader.i ], [ %.2.i.1, %.preheader.i ]
  %niter = phi i64 [ 0, %.preheader.preheader.i ], [ %niter.next.1, %.preheader.i ]
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %indvars.iv.i ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load i16, ptr %i.fl, align 8, !tbaa !4599 ; 2 uses
  %i.fn = icmp sgt i16 %i.fj, %i.fm
  %.2.i = select i1 %i.fn, ptr %i.fk, ptr %.153.i ; 2 uses
  %i.fo = call i16 @llvm.smin.i16(i16 %i.fj, i16 %i.fm) ; 2 uses
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %indvars.iv.i ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fs = load i16, ptr %i.fr, align 8, !tbaa !4599 ; 2 uses
  %i.ft = icmp sgt i16 %i.fo, %i.fs               ; 2 uses
  %.2.i.1 = select i1 %i.ft, ptr %i.fq, ptr %.2.i ; 4 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.fu = call i16 @llvm.smin.i16(i16 %i.fo, i16 %i.fs) ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader.i, !llvm.loop !4602

.unr-lcssa:                                       ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.al, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %.unr-lcssa
  %lcmp.mod154 = trunc i64 %i.fe to i1
  call void @llvm.assume(i1 %lcmp.mod154)
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load i16, ptr %i.fw, align 8, !tbaa !4599
  %i.fy = icmp sgt i16 %i.fu, %i.fx               ; 2 uses
  %.2.i.epil = select i1 %i.fy, ptr %i.fv, ptr %.2.i.1
  br label %bb.al

bb.al:                                            ; preds = %.unr-lcssa, %.preheader.i.epil.preheader
  %.153.i.lcssa = phi ptr [ %.2.i, %.unr-lcssa ], [ %.2.i.1, %.preheader.i.epil.preheader ]
  %.lcssa = phi i1 [ %i.ft, %.unr-lcssa ], [ %i.fy, %.preheader.i.epil.preheader ]
  %.2.i.lcssa = phi ptr [ %.2.i.1, %.unr-lcssa ], [ %.2.i.epil, %.preheader.i.epil.preheader ]
  %i.fz = shl nuw nsw i64 %wide.trip.count.i, 4
  %scevgep113 = getelementptr i8, ptr %5, i64 %i.fz
  %.153.i.lcssa.sroa.gep = getelementptr inbounds nuw i8, ptr %.153.i.lcssa, i64 8
  %.2.i.sroa.sel.v.sroa.sel = select i1 %.lcssa, ptr %scevgep113, ptr %.153.i.lcssa.sroa.gep
  %i.ga = load i16, ptr %.2.i.sroa.sel.v.sroa.sel, align 8, !tbaa !4599
  %.not43.i = icmp sgt i16 %i.ga, %.0.i
  br i1 %.not43.i, label %.loopexit.i, label %whereOrInsert.exit

.loopexit.i:                                      ; preds = %bb.ah, %bb.al, %._crit_edge.thread.i
  %i.gb = phi i16 [ %i.cm, %bb.al ], [ %i.ff, %._crit_edge.thread.i ], [ %i.cm, %bb.ah ] ; 2 uses
  %.3.i = phi ptr [ %.2.i.lcssa, %bb.al ], [ %i.fh, %._crit_edge.thread.i ], [ %.051.i, %bb.ah ] ; 3 uses
  store i64 %i.cq, ptr %.3.i, align 8, !tbaa !4597
  %i.gc = getelementptr inbounds nuw i8, ptr %.3.i, i64 8
  store i16 %.0.i, ptr %i.gc, align 8, !tbaa !4599
  %i.gd = getelementptr inbounds nuw i8, ptr %.3.i, i64 10 ; 2 uses
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !4600
  %i.gf = icmp sgt i16 %i.ge, %.0.i82
  br i1 %i.gf, label %bb.am, label %whereOrInsert.exit

bb.am:                                            ; preds = %.loopexit.i
  store i16 %.0.i82, ptr %i.gd, align 2, !tbaa !4600
  br label %whereOrInsert.exit

whereOrInsert.exit:                               ; preds = %bb.aj, %bb.al, %.loopexit.i, %bb.am
  %i.gg = phi i16 [ %i.gb, %bb.am ], [ %i.cm, %bb.al ], [ %i.gb, %.loopexit.i ], [ %i.cm, %bb.aj ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.an, label %bb.q, !llvm.loop !4603

bb.an:                                            ; preds = %whereOrInsert.exit
  store i16 %i.gg, ptr %5, align 8
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count117
  br i1 %exitcond118.not, label %._crit_edge, label %.preheader, !llvm.loop !4604

._crit_edge:                                      ; preds = %bb.an, %bb.p
  %i.gh = phi i16 [ 0, %bb.p ], [ %i.gg, %bb.an ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58
  br label %bb.ao

bb.ao:                                            ; preds = %._crit_edge, %bb.o, %bb.f
  %i.gi = phi i16 [ %i.cd, %bb.o ], [ %i.gh, %._crit_edge ], [ %i.bk, %bb.f ] ; 2 uses
  %i.gj = phi i16 [ %i.cd, %bb.o ], [ %i.gh, %._crit_edge ], [ %i.bl, %bb.f ]
  %.4 = phi i32 [ %.3, %bb.o ], [ %.3, %._crit_edge ], [ %.17496, %bb.f ] ; 2 uses
  %.171 = phi i32 [ 0, %bb.o ], [ 0, %._crit_edge ], [ %.07098, %bb.f ]
  %i.gk = getelementptr inbounds nuw i8, ptr %.07297, i64 56 ; 2 uses
  %i.gl = icmp ult ptr %i.gk, %i.bh
  br i1 %i.gl, label %.lr.ph, label %.loopexit85, !llvm.loop !4605

.loopexit85:                                      ; preds = %bb.ao, %bb.m, %bb.d
  %i.gm = phi i16 [ %i.ar, %bb.d ], [ 0, %bb.m ], [ %i.gi, %bb.ao ] ; 6 uses
  %.5 = phi i32 [ 0, %bb.d ], [ %.3, %bb.m ], [ %.4, %bb.ao ] ; 2 uses
  store i16 1, ptr %i.ak, align 4, !tbaa !4219
  %i.gn = load ptr, ptr %i.al, align 8, !tbaa !4216
  store ptr %.075104, ptr %i.gn, align 8, !tbaa !4254
  store i32 8192, ptr %i.am, align 8, !tbaa !4221
  store i16 0, ptr %i.an, align 2, !tbaa !4442
  store i8 0, ptr %i.ao, align 1, !tbaa !4584
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  %i.go = icmp eq i32 %.5, 0
  %i.gp = icmp ne i16 %i.gm, 0
  %i.gq = select i1 %i.go, i1 %i.gp, i1 false
  br i1 %i.gq, label %.lr.ph102.preheader, label %.loopexit

.lr.ph102.preheader:                              ; preds = %.loopexit85
  %i.gr = zext i16 %i.gm to i64
  br label %.lr.ph102

.lr.ph102:                                        ; preds = %.lr.ph102.preheader, %.lr.ph102
  %indvars.iv119 = phi i64 [ 0, %.lr.ph102.preheader ], [ %indvars.iv.next120, %.lr.ph102 ] ; 2 uses
  %i.gs = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %indvars.iv119 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gu = load <2 x i16>, ptr %i.gt, align 8, !tbaa !338
  %i.gv = add <2 x i16> %i.gu, <i16 1, i16 0>
  store <2 x i16> %i.gv, ptr %i.aq, align 4, !tbaa !338
  %i.gw = load i64, ptr %i.gs, align 8, !tbaa !4597
  store i64 %i.gw, ptr %i.k, align 8, !tbaa !4430
  %i.gx = call fastcc i32 @whereLoopInsert(ptr noundef %0, ptr noundef nonnull %i.k) ; 2 uses
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %i.gy = icmp eq i32 %i.gx, 0
  %i.gz = icmp samesign ult i64 %indvars.iv.next120, %i.gr
  %i.ha = select i1 %i.gy, i1 %i.gz, i1 false
  br i1 %i.ha, label %.lr.ph102, label %.loopexit, !llvm.loop !4606

.loopexit:                                        ; preds = %.lr.ph102, %.loopexit85, %bb.b, %bb.c
  %i.hb = phi i16 [ %i.ar, %bb.b ], [ %i.ar, %bb.c ], [ %i.gm, %.loopexit85 ], [ %i.gm, %.lr.ph102 ]
  %i.hc = phi i16 [ %i.as, %bb.b ], [ %i.as, %bb.c ], [ %i.gm, %.loopexit85 ], [ %i.gm, %.lr.ph102 ]
  %.7 = phi i32 [ 0, %bb.b ], [ 0, %bb.c ], [ %.5, %.loopexit85 ], [ %i.gx, %.lr.ph102 ] ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.075104, i64 56 ; 2 uses
  %i.he = icmp ult ptr %i.hd, %i.i
  %i.hf = icmp eq i32 %.7, 0
  %i.hg = and i1 %i.he, %i.hf
  br i1 %i.hg, label %bb.b, label %.loopexit87, !llvm.loop !4607

.loopexit87:                                      ; preds = %.loopexit, %bb.a
  %.076 = phi i32 [ 0, %bb.a ], [ %.7, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  ret i32 %.076
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 8) i32 @whereLoopResize(ptr noundef %0, ptr nofree noundef captures(address) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !4220
  %i.c = zext i16 %i.b to i32
  %.not = icmp sgt i32 %2, %i.c
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw nsw i32 %2, 7
  %i.e = and i32 %i.d, -8                         ; 2 uses
  %i.f = zext nneg i32 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 3
  %i.h = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %0, i64 noundef %i.g) ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !4216
  %i.l = load i16, ptr %i.a, align 8, !tbaa !4220
  %i.m = zext i16 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.h, ptr align 8 %i.k, i64 %i.n, i1 false)
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !4216 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.not20 = icmp eq ptr %i.o, %i.p
  br i1 %.not20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %0, ptr noundef %i.o)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr %i.h, ptr %i.j, align 8, !tbaa !4216
  %i.q = trunc i32 %i.e to i16
  store i16 %i.q, ptr %i.a, align 8, !tbaa !4220
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ 0, %bb.a ], [ 7, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @freeIndexInfo(ptr nofree noundef captures(address_is_null) %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !1145   ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %sqlite3ValueFree.exit
  %i.d = phi i32 [ %i.a, %.lr.ph ], [ %i.n, %sqlite3ValueFree.exit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %sqlite3ValueFree.exit ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !296  ; 6 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %sqlite3ValueFree.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.h = load i16, ptr %i.g, align 4, !tbaa !166
  %i.i = and i16 %i.h, -28672
  %.not.i.i = icmp eq i16 %i.i, 0
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !163
  %.not3.i.i = icmp eq i32 %i.k, 0
  br i1 %.not3.i.i, label %sqlite3VdbeMemRelease.exit.i, label %bb.e
end_hunk_8
begin_hunk_9_@whereLoopInsert:bb.a

bb.q:                                             ; preds = %bb.p
  %i.cr = load ptr, ptr %i.v, align 8, !tbaa !231
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !231
  %i.cu = icmp eq ptr %i.cr, %i.ct
  %.pre71.i = load i16, ptr %i.w, align 2, !tbaa !4241 ; 2 uses
  %i.cv = icmp eq i16 %.pre71.i, 0
  %or.cond78.i = select i1 %i.cu, i1 %i.cv, i1 false
  br i1 %or.cond78.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i, i64 54
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !4241
  %i.cy = icmp eq i16 %i.cx, 0
  br i1 %i.cy, label %whereLoopCheaperProperSubset.exit61.i, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i
  %i.cz = phi i16 [ %.pre.i, %._crit_edge.i ], [ 0, %bb.r ], [ %.pre71.i, %bb.q ] ; 2 uses
  %i.da = load i16, ptr %i.x, align 4, !tbaa !4219 ; 3 uses
  %i.db = zext i16 %i.da to i32
  %i.dc = zext i16 %i.cz to i32
  %i.dd = sub nsw i32 %i.db, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i, i64 52
  %i.df = load i16, ptr %i.de, align 4, !tbaa !4219 ; 3 uses
  %i.dg = zext i16 %i.df to i32
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i, i64 54
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !4241 ; 2 uses
  %i.dj = zext i16 %i.di to i32
  %i.dk = sub nsw i32 %i.dg, %i.dj
  %.not.i47.i = icmp sge i32 %i.dd, %i.dk
  %i.dl = icmp ugt i16 %i.di, %i.cz
  %or.cond.i48.i = or i1 %i.dl, %.not.i47.i
  br i1 %or.cond.i48.i, label %whereLoopCheaperProperSubset.exit61.thread.i, label %.preheader34.i49.i

.preheader34.i49.i:                               ; preds = %bb.s
  %.not37.i50.i = icmp eq i16 %i.da, 0
  br i1 %.not37.i50.i, label %._crit_edge.i59.i, label %.lr.ph.i51.i

.lr.ph.i51.i:                                     ; preds = %.preheader34.i49.i
  %i.dm = load ptr, ptr %i.y, align 8, !tbaa !4216
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  %i.do = zext i16 %i.df to i64
  %i.dp = zext i16 %i.da to i64
  %.not170 = icmp eq i16 %i.df, 0
  br label %bb.t

bb.t:                                             ; preds = %.loopexit.i58.i, %.lr.ph.i51.i
  %indvars.iv39.i52.i = phi i64 [ %i.dp, %.lr.ph.i51.i ], [ %indvars.iv.next40.i53.i, %.loopexit.i58.i ] ; 2 uses
  %indvars.iv.next40.i53.i = add nsw i64 %indvars.iv39.i52.i, -1 ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv.next40.i53.i
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !4254 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %.loopexit.i58.i, label %.preheader.i54.i.preheader

.preheader.i54.i.preheader:                       ; preds = %bb.t
  br i1 %.not170, label %whereLoopCheaperProperSubset.exit61.thread.i, label %.lr.ph168.preheader

.lr.ph168.preheader:                              ; preds = %.preheader.i54.i.preheader
  %i.dt = load ptr, ptr %i.dn, align 8, !tbaa !4216
  br label %.lr.ph168

.preheader.i54.i:                                 ; preds = %.lr.ph168
  %i.du = icmp sgt i64 %indvars.iv.i55.i167, 1
  br i1 %i.du, label %.lr.ph168, label %whereLoopCheaperProperSubset.exit61.thread.i, !llvm.loop !4633

.lr.ph168:                                        ; preds = %.lr.ph168.preheader, %.preheader.i54.i
  %indvars.iv.i55.i167 = phi i64 [ %indvars.iv.next.i57.i, %.preheader.i54.i ], [ %i.do, %.lr.ph168.preheader ] ; 2 uses
  %indvars.iv.next.i57.i = add nsw i64 %indvars.iv.i55.i167, -1 ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %indvars.iv.next.i57.i
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !4254
  %i.dx = icmp eq ptr %i.dw, %i.dr
  br i1 %i.dx, label %.loopexit.i58.i, label %.preheader.i54.i, !llvm.loop !4633

.loopexit.i58.i:                                  ; preds = %.lr.ph168, %bb.t
  %i.dy = icmp sgt i64 %indvars.iv39.i52.i, 1
  br i1 %i.dy, label %bb.t, label %._crit_edge.i59.i, !llvm.loop !4634

._crit_edge.i59.i:                                ; preds = %.loopexit.i58.i, %.preheader34.i49.i
  %i.dz = and i32 %i.ae, 64
  %i.ea = icmp eq i32 %i.dz, 0
  %or.cond69.i = and i1 %.not33.i60.i, %i.ea
  br i1 %or.cond69.i, label %whereLoopCheaperProperSubset.exit61.thread.i, label %whereLoopCheaperProperSubset.exit61.i

whereLoopCheaperProperSubset.exit61.i:            ; preds = %._crit_edge.i59.i, %bb.r
  %.46.i = tail call i16 @llvm.smax.i16(i16 %i.ai, i16 %i.aj)
  store i16 %.46.i, ptr %i.s, align 4, !tbaa !4260
  %i.eb = getelementptr inbounds nuw i8, ptr %.0.i, i64 22
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !4261 ; 2 uses
  %i.ed = load i16, ptr %i.t, align 2, !tbaa !4261 ; 2 uses
  %.not43.i = icmp slt i16 %i.ec, %i.ed
  %i.ee = add i16 %i.ec, 1
  %i.ef = select i1 %.not43.i, i16 %i.ed, i16 %i.ee
  br label %whereLoopCheaperProperSubset.exit61.thread.sink.split.i

whereLoopCheaperProperSubset.exit61.thread.sink.split.i: ; preds = %whereLoopCheaperProperSubset.exit61.i, %whereLoopCheaperProperSubset.exit.i
  %.sink.i = phi i16 [ %i.ch, %whereLoopCheaperProperSubset.exit.i ], [ %i.ef, %whereLoopCheaperProperSubset.exit61.i ]
  store i16 %.sink.i, ptr %i.t, align 2, !tbaa !4261
  br label %whereLoopCheaperProperSubset.exit61.thread.i

whereLoopCheaperProperSubset.exit61.thread.i:     ; preds = %.preheader.i54.i.preheader, %.preheader.i54.i, %whereLoopCheaperProperSubset.exit61.thread.sink.split.i, %._crit_edge.i59.i, %bb.s, %bb.o, %bb.f, %bb.e
  %i.eg = getelementptr inbounds nuw i8, ptr %.0.i, i64 72
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !4428 ; 2 uses
  %.old1.not.i = icmp eq ptr %i.eh, null
  br i1 %.old1.not.i, label %whereLoopAdjustCost.exit, label %bb.e

whereLoopAdjustCost.exit:                         ; preds = %whereLoopCheaperProperSubset.exit61.thread.i, %bb.d
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !4582 ; 5 uses
  %.not = icmp eq ptr %i.ej, null
  br i1 %.not, label %bb.ac, label %bb.u

bb.u:                                             ; preds = %whereLoopAdjustCost.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.el = load i16, ptr %i.ek, align 4, !tbaa !4219
  %.not57 = icmp eq i16 %i.el, 0
  br i1 %.not57, label %whereOrInsert.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.em = load i64, ptr %1, align 8, !tbaa !4430  ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.eo = load i16, ptr %i.en, align 4, !tbaa !4260 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !4261 ; 3 uses
  %i.er = load i16, ptr %i.ej, align 8, !tbaa !4595 ; 6 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 6 uses
  %.not49.i = icmp eq i16 %i.er, 0
  br i1 %.not49.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.v, %bb.z
  %.051.i = phi ptr [ %i.fc, %bb.z ], [ %i.es, %bb.v ] ; 5 uses
  %.03950.i = phi i16 [ %i.fb, %bb.z ], [ %i.er, %bb.v ]
  %i.et = getelementptr inbounds nuw i8, ptr %.051.i, i64 8
  %i.eu = load i16, ptr %i.et, align 8, !tbaa !4599 ; 2 uses
  %.not44.i = icmp sgt i16 %i.eo, %i.eu
  br i1 %.not44.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i
  %i.ev = load i64, ptr %.051.i, align 8, !tbaa !4597
  %i.ew = and i64 %i.ev, %i.em
  %i.ex = icmp eq i64 %i.ew, %i.em
  br i1 %i.ex, label %.loopexit.i65, label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph.i
  %.not45.i59 = icmp sgt i16 %i.eu, %i.eo
  br i1 %.not45.i59, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ey = load i64, ptr %.051.i, align 8, !tbaa !4597 ; 2 uses
  %i.ez = and i64 %i.ey, %i.em
  %i.fa = icmp eq i64 %i.ez, %i.ey
  br i1 %i.fa, label %whereOrInsert.exit, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.fb = add i16 %.03950.i, -1                   ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.051.i, i64 16
  %.not.i60 = icmp eq i16 %i.fb, 0
  br i1 %.not.i60, label %._crit_edge.i61, label %.lr.ph.i, !llvm.loop !4601

._crit_edge.i61:                                  ; preds = %bb.z
  %i.fd = icmp ult i16 %i.er, 3
  br i1 %i.fd, label %._crit_edge.thread.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %._crit_edge.i61
  %wide.trip.count.i = zext i16 %i.er to i64
  %i.fe = add nsw i64 %wide.trip.count.i, -1      ; 3 uses
  %xtraiter = and i64 %i.fe, 1
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %.pre.i62 = load i16, ptr %.phi.trans.insert.i, align 8, !tbaa !4599
  %unroll_iter = and i64 %i.fe, -2
  br label %.preheader.i63

._crit_edge.thread.i:                             ; preds = %._crit_edge.i61, %bb.v
  %i.ff = add nuw nsw i16 %i.er, 1
  store i16 %i.ff, ptr %i.ej, align 8, !tbaa !4595
  %i.fg = zext nneg i16 %i.er to i64
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %i.es, i64 %i.fg ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 10
  store i16 %i.eq, ptr %i.fi, align 2, !tbaa !4600
  br label %.loopexit.i65

.preheader.i63:                                   ; preds = %.preheader.i63, %.preheader.preheader.i
  %i.fj = phi i16 [ %.pre.i62, %.preheader.preheader.i ], [ %i.fu, %.preheader.i63 ] ; 2 uses
  %indvars.iv.i = phi i64 [ 1, %.preheader.preheader.i ], [ %indvars.iv.next.i.1, %.preheader.i63 ] ; 3 uses
  %.153.i = phi ptr [ %i.es, %.preheader.preheader.i ], [ %.2.i.1, %.preheader.i63 ]
  %niter = phi i64 [ 0, %.preheader.preheader.i ], [ %niter.next.1, %.preheader.i63 ]
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.es, i64 %indvars.iv.i ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load i16, ptr %i.fl, align 8, !tbaa !4599 ; 2 uses
  %i.fn = icmp sgt i16 %i.fj, %i.fm
  %.2.i = select i1 %i.fn, ptr %i.fk, ptr %.153.i
  %i.fo = tail call i16 @llvm.smin.i16(i16 %i.fj, i16 %i.fm) ; 2 uses
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.es, i64 %indvars.iv.i ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fs = load i16, ptr %i.fr, align 8, !tbaa !4599 ; 2 uses
  %i.ft = icmp sgt i16 %i.fo, %i.fs
  %.2.i.1 = select i1 %i.ft, ptr %i.fq, ptr %.2.i ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.fu = tail call i16 @llvm.smin.i16(i16 %i.fo, i16 %i.fs) ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader.i63, !llvm.loop !4602

.unr-lcssa:                                       ; preds = %.preheader.i63
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.aa, label %.preheader.i63.epil.preheader

.preheader.i63.epil.preheader:                    ; preds = %.unr-lcssa
  %lcmp.mod182 = trunc i64 %i.fe to i1
  tail call void @llvm.assume(i1 %lcmp.mod182)
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %i.es, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load i16, ptr %i.fw, align 8, !tbaa !4599
  %i.fy = icmp sgt i16 %i.fu, %i.fx
  %.2.i.epil = select i1 %i.fy, ptr %i.fv, ptr %.2.i.1
  br label %bb.aa

bb.aa:                                            ; preds = %.unr-lcssa, %.preheader.i63.epil.preheader
  %.2.i.lcssa = phi ptr [ %.2.i.1, %.unr-lcssa ], [ %.2.i.epil, %.preheader.i63.epil.preheader ] ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.2.i.lcssa, i64 8
  %i.ga = load i16, ptr %i.fz, align 8, !tbaa !4599
  %.not43.i64 = icmp sgt i16 %i.ga, %i.eo
  br i1 %.not43.i64, label %.loopexit.i65, label %whereOrInsert.exit

.loopexit.i65:                                    ; preds = %bb.w, %bb.aa, %._crit_edge.thread.i
  %.3.i = phi ptr [ %.2.i.lcssa, %bb.aa ], [ %i.fh, %._crit_edge.thread.i ], [ %.051.i, %bb.w ] ; 3 uses
  store i64 %i.em, ptr %.3.i, align 8, !tbaa !4597
  %i.gb = getelementptr inbounds nuw i8, ptr %.3.i, i64 8
  store i16 %i.eo, ptr %i.gb, align 8, !tbaa !4599
  %i.gc = getelementptr inbounds nuw i8, ptr %.3.i, i64 10 ; 2 uses
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !4600
  %i.ge = icmp sgt i16 %i.gd, %i.eq
  br i1 %i.ge, label %bb.ab, label %whereOrInsert.exit

bb.ab:                                            ; preds = %.loopexit.i65
  store i16 %i.eq, ptr %i.gc, align 2, !tbaa !4600
  br label %whereOrInsert.exit

bb.ac:                                            ; preds = %whereLoopAdjustCost.exit
  %.not46.i = icmp eq ptr %i.k, null
  br i1 %.not46.i, label %.thread, label %.lr.ph.i66

.lr.ph.i66:                                       ; preds = %bb.ac
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gg = load i8, ptr %i.gf, align 8, !tbaa !4266
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 54
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 22 ; 2 uses
  %i.gm = and i32 %i.m, 513
  %or.cond.not.i = icmp eq i32 %i.gm, 513
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ao, %.lr.ph.i66
  %.048.i = phi ptr [ %i.k, %.lr.ph.i66 ], [ %.0.i67, %bb.ao ] ; 17 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.048.i, i64 16
  %i.go = load i8, ptr %i.gn, align 8, !tbaa !4266
  %.not35.i = icmp eq i8 %i.go, %i.gg
  br i1 %.not35.i, label %bb.ae, label %bb.ao

bb.ae:                                            ; preds = %bb.ad
  %i.gp = getelementptr inbounds nuw i8, ptr %.048.i, i64 17
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !4584
  %i.gr = load i8, ptr %i.gh, align 1, !tbaa !4584
  %.not36.i = icmp eq i8 %i.gq, %i.gr
  br i1 %.not36.i, label %bb.af, label %bb.ao

bb.af:                                            ; preds = %bb.ae
  %i.gs = getelementptr inbounds nuw i8, ptr %.048.i, i64 48
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !4221
  %i.gu = and i32 %i.gt, 16384
  %.not37.i = icmp eq i32 %i.gu, 0
  br i1 %.not37.i, label %._crit_edge, label %bb.ag

._crit_edge:                                      ; preds = %bb.af
  %.pre = load i64, ptr %.048.i, align 8, !tbaa !4430
  %.pre123 = load i64, ptr %1, align 8, !tbaa !4430
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.gv = load i16, ptr %i.gi, align 2, !tbaa !4241
  %i.gw = icmp eq i16 %i.gv, 0
  %or.cond = and i1 %or.cond.not.i, %i.gw
  %.pre122 = load i64, ptr %.048.i, align 8, !tbaa !4430 ; 2 uses
  %.pre124 = load i64, ptr %1, align 8, !tbaa !4430 ; 3 uses
  %i.gx = and i64 %.pre124, %.pre122
  %i.gy = icmp eq i64 %i.gx, %.pre124
  %or.cond157 = select i1 %or.cond, i1 %i.gy, i1 false
  br i1 %or.cond157, label %bb.aq, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge, %bb.ag
  %i.gz = phi i64 [ %.pre123, %._crit_edge ], [ %.pre124, %bb.ag ] ; 2 uses
  %i.ha = phi i64 [ %.pre, %._crit_edge ], [ %.pre122, %bb.ag ] ; 2 uses
  %i.hb = and i64 %i.gz, %i.ha                    ; 2 uses
  %i.hc = icmp eq i64 %i.hb, %i.ha
  br i1 %i.hc, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.hd = getelementptr inbounds nuw i8, ptr %.048.i, i64 18
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !4442
  %i.hf = load i16, ptr %i.gj, align 2, !tbaa !4442
  %.not40.i = icmp sgt i16 %i.he, %i.hf
  br i1 %.not40.i, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hg = getelementptr inbounds nuw i8, ptr %.048.i, i64 20
  %i.hh = load i16, ptr %i.hg, align 4, !tbaa !4260
  %i.hi = load i16, ptr %i.gk, align 4, !tbaa !4260
  %.not41.i = icmp sgt i16 %i.hh, %i.hi
  br i1 %.not41.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hj = getelementptr inbounds nuw i8, ptr %.048.i, i64 22
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !4261
  %i.hl = load i16, ptr %i.gl, align 2, !tbaa !4261
  %.not42.i = icmp sgt i16 %i.hk, %i.hl
  br i1 %.not42.i, label %bb.al, label %whereOrInsert.exit

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah
  %i.hm = icmp eq i64 %i.hb, %i.gz
  br i1 %i.hm, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.hn = getelementptr inbounds nuw i8, ptr %.048.i, i64 20
  %i.ho = load i16, ptr %i.hn, align 4, !tbaa !4260
  %i.hp = load i16, ptr %i.gk, align 4, !tbaa !4260
  %.not43.i70 = icmp slt i16 %i.ho, %i.hp
  br i1 %.not43.i70, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hq = getelementptr inbounds nuw i8, ptr %.048.i, i64 22
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !4261
  %i.hs = load i16, ptr %i.gl, align 2, !tbaa !4261
  %.not44.i71 = icmp slt i16 %i.hr, %i.hs
  br i1 %.not44.i71, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al, %bb.ae, %bb.ad
  %i.ht = getelementptr inbounds nuw i8, ptr %.048.i, i64 72
  %.0.i67 = load ptr, ptr %i.ht, align 8, !tbaa !4427 ; 2 uses
  %.not.i68 = icmp eq ptr %.0.i67, null
  br i1 %.not.i68, label %.thread.loopexit, label %bb.ad, !llvm.loop !4635

.thread.loopexit:                                 ; preds = %bb.ao
  %i.hu = getelementptr inbounds nuw i8, ptr %.048.i, i64 72
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.ac
  %.033.i.ph98 = phi ptr [ %i.j, %bb.ac ], [ %i.hu, %.thread.loopexit ]
  %i.hv = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.c, i64 noundef 104) ; 9 uses
  store ptr %i.hv, ptr %.033.i.ph98, align 8, !tbaa !4427
  %i.hw = icmp eq ptr %i.hv, null
  br i1 %i.hw, label %whereOrInsert.exit, label %bb.ap

bb.ap:                                            ; preds = %.thread
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 80
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 64
  store ptr %i.hx, ptr %i.hy, align 8, !tbaa !4216
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 52
  store i16 0, ptr %i.hz, align 4, !tbaa !4219
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 56
  store i16 3, ptr %i.ia, align 8, !tbaa !4220
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hv, i64 48
  store i32 0, ptr %i.ib, align 8, !tbaa !4221
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hv, i64 72
  store ptr null, ptr %i.ic, align 8, !tbaa !4428
  br label %whereLoopFindLesser.exit90

bb.aq:                                            ; preds = %bb.ag, %bb.an
  %i.id = getelementptr inbounds nuw i8, ptr %.048.i, i64 72 ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !4427 ; 2 uses
  %.not55112 = icmp eq ptr %i.ie, null
  br i1 %.not55112, label %whereLoopFindLesser.exit90, label %.lr.ph.i74.lr.ph

.lr.ph.i74.lr.ph:                                 ; preds = %bb.aq
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 54
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 22 ; 2 uses
  br label %.lr.ph.i74

.lr.ph.i74:                                       ; preds = %.lr.ph.i74.lr.ph, %bb.bf
  %i.il = phi ptr [ %i.ie, %.lr.ph.i74.lr.ph ], [ %i.ka, %bb.bf ]
  %.0113 = phi ptr [ %i.id, %.lr.ph.i74.lr.ph ], [ %.03447.i76, %bb.bf ]
  %i.im = load i8, ptr %i.if, align 8, !tbaa !4266
  br label %bb.ar

bb.ar:                                            ; preds = %bb.be, %.lr.ph.i74
  %.pr102 = phi ptr [ %i.il, %.lr.ph.i74 ], [ %.0.i78, %bb.be ] ; 13 uses
  %.03447.i76 = phi ptr [ %.0113, %.lr.ph.i74 ], [ %i.jx, %bb.be ] ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.pr102, i64 16
  %i.io = load i8, ptr %i.in, align 8, !tbaa !4266
  %.not35.i77 = icmp eq i8 %i.io, %i.im
  br i1 %.not35.i77, label %bb.as, label %bb.be

bb.as:                                            ; preds = %bb.ar
  %i.ip = getelementptr inbounds nuw i8, ptr %.pr102, i64 17
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !4584
end_hunk_9
begin_hunk_10_@jsonExtractFunc:bb.a
bb.bv:                                            ; preds = %jsonAppendSeparator.exit111
  call fastcc void @jsonStringExpandAndAppend(ptr noundef nonnull %3, ptr noundef nonnull @.str.1, i32 noundef 4), !inline_history !3181
  br label %bb.by

bb.bw:                                            ; preds = %jsonAppendSeparator.exit111
  %i.gz = load ptr, ptr %i.p, align 8, !tbaa !3079
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.gw
  store i32 1819047278, ptr %i.ha, align 1
  %i.hb = load i64, ptr %i.r, align 8, !tbaa !3097
  %i.hc = add i64 %i.hb, 4
  store i64 %i.hc, ptr %i.r, align 8, !tbaa !3097
  br label %bb.by

bb.bx:                                            ; preds = %bb.bo
  call fastcc void @jsonBadPathError(ptr noundef %0, ptr noundef %.0.i.i, i32 noundef %.0)
  br label %sqlite3_result_subtype.exit

bb.by:                                            ; preds = %jsonAppendSeparator.exit, %bb.bd, %bb.be, %bb.bc, %bb.bi, %bb.bb, %bb.bh, %bb.bv, %bb.bw
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !5134

._crit_edge:                                      ; preds = %bb.by
  br i1 %.not, label %sqlite3_result_subtype.exit, label %bb.bz

bb.bz:                                            ; preds = %._crit_edge
  %i.hd = load i64, ptr %i.r, align 8, !tbaa !3097 ; 3 uses
  %i.he = load i64, ptr %i.q, align 8, !tbaa !3080
  %.not.i114 = icmp ult i64 %i.hd, %i.he
  br i1 %.not.i114, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call fastcc void @jsonAppendCharExpand(ptr noundef nonnull %3, i8 noundef signext 93), !inline_history !3182
  br label %jsonAppendChar.exit115

bb.cb:                                            ; preds = %bb.bz
  %i.hf = load ptr, ptr %i.p, align 8, !tbaa !3079
  %i.hg = add nuw i64 %i.hd, 1
  store i64 %i.hg, ptr %i.r, align 8, !tbaa !3097
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hd
  store i8 93, ptr %i.hh, align 1, !tbaa !231
  br label %jsonAppendChar.exit115

jsonAppendChar.exit115:                           ; preds = %bb.ca, %bb.cb
  call fastcc void @jsonReturnString(ptr noundef %3, ptr noundef null, ptr noundef null)
  %i.hi = and i32 %i.m, 16
  %i.hj = icmp eq i32 %i.hi, 0
  br i1 %i.hj, label %bb.cc, label %sqlite3_result_subtype.exit

bb.cc:                                            ; preds = %jsonAppendChar.exit115
  %i.hk = load ptr, ptr %i.h, align 8, !tbaa !234 ; 3 uses
  %.not.i116 = icmp eq ptr %i.hk, null
  br i1 %.not.i116, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !837
  %i.hn = and i32 %i.hm, 16777216
  %i.ho = icmp eq i32 %i.hn, 0
  br i1 %i.ho, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hk, i64 56
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !227
  %i.hr = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 200, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.21, ptr noundef %i.hq), !inline_history !3115 ; 0 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 1, ptr %i.hs, align 4, !tbaa !27
  %i.ht = load ptr, ptr %0, align 8, !tbaa !296
  %i.hu = call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef %i.ht, ptr noundef nonnull %i.a, i64 noundef -1, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr)), !inline_history !3116 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br label %sqlite3_result_subtype.exit

bb.cf:                                            ; preds = %bb.cd, %bb.cc
  %i.hv = load ptr, ptr %0, align 8, !tbaa !296   ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 23
  store i8 74, ptr %i.hw, align 1, !tbaa !823
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 20 ; 2 uses
  %i.hy = load i16, ptr %i.hx, align 4, !tbaa !166
  %i.hz = or i16 %i.hy, 2048
  store i16 %i.hz, ptr %i.hx, align 4, !tbaa !166
  br label %sqlite3_result_subtype.exit

sqlite3_result_subtype.exit:                      ; preds = %bb.h, %bb.d, %sqlite3_value_text.exit, %bb.bp, %bb.cf, %bb.ce, %bb.ao, %bb.bx, %._crit_edge, %jsonAppendChar.exit115
  %i.ia = load i8, ptr %i.s, align 8, !tbaa !3081
  %.not.i118 = icmp eq i8 %i.ia, 0
  br i1 %.not.i118, label %bb.cg, label %bb.cn

bb.cg:                                            ; preds = %sqlite3_result_subtype.exit
  %i.ib = load ptr, ptr %i.p, align 8, !tbaa !3079
  %i.ic = getelementptr inbounds i8, ptr %i.ib, i64 -8 ; 5 uses
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !2118 ; 2 uses
  %i.ie = icmp ugt i64 %i.id, 1
  br i1 %i.ie, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.if = add i64 %i.id, -1
  store i64 %i.if, ptr %i.ic, align 8, !tbaa !2118
  br label %bb.cn

bb.ci:                                            ; preds = %bb.cg
  %i.ig = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i.i.i119 = icmp eq i32 %i.ig, 0
  br i1 %.not.i.i.i119, label %bb.cm, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ih = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i.i.i120 = icmp eq ptr %i.ih, null
  br i1 %.not.i.i.i.i120, label %sqlite3_mutex_enter.exit.i.i.i121, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ii = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  call void %i.ii(ptr noundef nonnull %i.ih) #58, !inline_history !3120
  br label %sqlite3_mutex_enter.exit.i.i.i121

sqlite3_mutex_enter.exit.i.i.i121:                ; preds = %bb.ck, %bb.cj
  %i.ij = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.ik = call i32 %i.ij(ptr noundef nonnull %i.ic) #58, !inline_history !3121
  %i.il = sext i32 %i.ik to i64
  %i.im = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.in = sub nsw i64 %i.im, %i.il
  store i64 %i.in, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.io = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.ip = add nsw i64 %i.io, -1
  store i64 %i.ip, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.iq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  call void %i.iq(ptr noundef nonnull %i.ic) #58, !inline_history !3122
  %i.ir = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i4.i.i.i122 = icmp eq ptr %i.ir, null
  br i1 %.not.i4.i.i.i122, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %sqlite3_mutex_enter.exit.i.i.i121
  %i.is = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  call void %i.is(ptr noundef nonnull %i.ir) #58, !inline_history !3123
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ci
  %i.it = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  call void %i.it(ptr noundef nonnull %i.ic) #58, !inline_history !3122
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %sqlite3_mutex_enter.exit.i.i.i121, %bb.ch, %sqlite3_result_subtype.exit
  store ptr %i.o, ptr %i.p, align 8, !tbaa !3079
  store i64 100, ptr %i.q, align 8, !tbaa !3080
  store i64 0, ptr %i.r, align 8, !tbaa !3097
  store i8 1, ptr %i.s, align 8, !tbaa !3081
  %i.iu = getelementptr inbounds nuw i8, ptr %i.f, i64 36 ; 2 uses
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !3198 ; 2 uses
  %i.iw = icmp ugt i32 %i.iv, 1
  br i1 %i.iw, label %bb.co, label %sqlite3DbFree.exit.i

bb.co:                                            ; preds = %bb.cn
  %i.ix = add i32 %i.iv, -1
  store i32 %i.ix, ptr %i.iu, align 4, !tbaa !3198
  br label %jsonParseFree.exit

sqlite3DbFree.exit.i:                             ; preds = %bb.cn
  call fastcc void @jsonParseReset(ptr noundef nonnull %i.f)
  %i.iy = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !3129
  call fastcc void @sqlite3DbFreeNN(ptr noundef %i.iz, ptr noundef nonnull %i.f)
  br label %jsonParseFree.exit

jsonParseFree.exit:                               ; preds = %sqlite3DbFree.exit.i, %bb.co, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @jsonObjectFunc(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = alloca [200 x i8], align 16              ; 4 uses
  %3 = alloca %struct.JsonString, align 8         ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  %i.b = and i32 %1, 1
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %jsonAppendChar.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 1, ptr %i.c, align 4, !tbaa !27
  %i.d = load ptr, ptr %0, align 8, !tbaa !296
  %i.e = tail call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef %i.d, ptr noundef nonnull @.str.1454, i64 noundef -1, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr)), !inline_history !838 ; 0 uses
  br label %sqlite3_result_subtype.exit

jsonAppendChar.exit:                              ; preds = %bb.a
  store ptr %0, ptr %3, align 8, !tbaa !3165
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 0, ptr %i.f, align 1, !tbaa !3164
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 34 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !3079
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store i64 100, ptr %i.i, align 8, !tbaa !3080
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store i8 1, ptr %i.k, align 8, !tbaa !3081
  store i64 1, ptr %i.j, align 8, !tbaa !3097
  store i8 123, ptr %i.g, align 2, !tbaa !231
  %i.l = icmp sgt i32 %1, 0
  br i1 %i.l, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %jsonAppendChar.exit
  %sext = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %jsonAppendChar.exit23
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %jsonAppendChar.exit23 ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !296
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.p = load i16, ptr %i.o, align 4, !tbaa !166
  %i.q = and i16 %i.p, 63
  %i.r = zext nneg i16 %i.q to i64
  %i.s = shl nuw i64 1, %i.r
  %i.t = and i64 %i.s, 1125899907104772
  %.not17.not = icmp eq i64 %i.t, 0
  br i1 %.not17.not, label %bb.c, label %bb.k

bb.c:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 1, ptr %i.u, align 4, !tbaa !27
  %i.v = load ptr, ptr %0, align 8, !tbaa !296
  %i.w = call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef %i.v, ptr noundef nonnull @.str.1455, i64 noundef -1, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr)), !inline_history !838 ; 0 uses
  %i.x = load i8, ptr %i.k, align 8, !tbaa !3081
  %.not.i18 = icmp eq i8 %i.x, 0
  br i1 %.not.i18, label %bb.d, label %sqlite3_result_subtype.exit

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !3079
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -8 ; 5 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !2118 ; 2 uses
  %i.ab = icmp ugt i64 %i.aa, 1
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = add i64 %i.aa, -1
  store i64 %i.ac, ptr %i.z, align 8, !tbaa !2118
  br label %sqlite3_result_subtype.exit

bb.f:                                             ; preds = %bb.d
  %i.ad = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i, label %sqlite3_mutex_enter.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  call void %i.af(ptr noundef nonnull %i.ae) #58, !inline_history !3120
  br label %sqlite3_mutex_enter.exit.i.i.i

sqlite3_mutex_enter.exit.i.i.i:                   ; preds = %bb.h, %bb.g
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.ah = call i32 %i.ag(ptr noundef nonnull %i.z) #58, !inline_history !3121
  %i.ai = sext i32 %i.ah to i64
  %i.aj = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.ak = sub nsw i64 %i.aj, %i.ai
  store i64 %i.ak, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.al = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.am = add nsw i64 %i.al, -1
  store i64 %i.am, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  call void %i.an(ptr noundef nonnull %i.z) #58, !inline_history !3122
  %i.ao = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i4.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i4.i.i.i, label %sqlite3_result_subtype.exit, label %bb.i

bb.i:                                             ; preds = %sqlite3_mutex_enter.exit.i.i.i
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  call void %i.ap(ptr noundef nonnull %i.ao) #58, !inline_history !3123
  br label %sqlite3_result_subtype.exit

bb.j:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  call void %i.aq(ptr noundef nonnull %i.z) #58, !inline_history !3122
  br label %sqlite3_result_subtype.exit

bb.k:                                             ; preds = %.lr.ph
  %i.ar = load i64, ptr %i.j, align 8, !tbaa !3097 ; 4 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %jsonAppendSeparator.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !3079
  %i.au = getelementptr i8, ptr %i.at, i64 %i.ar  ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 -1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !231
  %i.ax = and i8 %i.aw, -33
  %or.cond.i = icmp eq i8 %i.ax, 91
  br i1 %or.cond.i, label %jsonAppendSeparator.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = load i64, ptr %i.i, align 8, !tbaa !3080
  %.not.i.i = icmp ult i64 %i.ar, %i.ay
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call fastcc void @jsonAppendCharExpand(ptr noundef nonnull %3, i8 noundef signext 44), !inline_history !5116
  br label %jsonAppendSeparator.exit

bb.o:                                             ; preds = %bb.m
  %i.az = add nuw i64 %i.ar, 1
  store i64 %i.az, ptr %i.j, align 8, !tbaa !3097
  store i8 44, ptr %i.au, align 1, !tbaa !231
  br label %jsonAppendSeparator.exit

jsonAppendSeparator.exit:                         ; preds = %bb.k, %bb.l, %bb.n, %bb.o
  %i.ba = load ptr, ptr %i.m, align 8, !tbaa !296, !nonnull !1098, !noundef !1098 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 20
  %i.bc = load i16, ptr %i.bb, align 4, !tbaa !166 ; 2 uses
  %i.bd = and i16 %i.bc, 514
  %i.be = icmp eq i16 %i.bd, 514
  br i1 %i.be, label %bb.p, label %bb.r

bb.p:                                             ; preds = %jsonAppendSeparator.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 22
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !351
  %i.bh = icmp eq i8 %i.bg, 1
  br i1 %i.bh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !297
  br label %sqlite3_value_text.exit

bb.r:                                             ; preds = %bb.p, %jsonAppendSeparator.exit
  %i.bk = and i16 %i.bc, 1
  %.not9.i.i = icmp eq i16 %i.bk, 0
  br i1 %.not9.i.i, label %bb.s, label %sqlite3_value_text.exit

bb.s:                                             ; preds = %bb.r
  %i.bl = call fastcc ptr @valueToText(ptr noundef nonnull %i.ba, i8 noundef zeroext 1), !inline_history !596
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !296
  br label %sqlite3_value_text.exit

sqlite3_value_text.exit:                          ; preds = %bb.q, %bb.r, %bb.s
  %i.bm = phi ptr [ %i.ba, %bb.q ], [ %i.ba, %bb.r ], [ %.pre, %bb.s ] ; 6 uses
  %.0.i.i = phi ptr [ %i.bj, %bb.q ], [ null, %bb.r ], [ %i.bl, %bb.s ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 20
  %i.bo = load i16, ptr %i.bn, align 4, !tbaa !166 ; 2 uses
  %i.bp = and i16 %i.bo, 2
  %.not.i.i20 = icmp eq i16 %i.bp, 0
  br i1 %.not.i.i20, label %.thread.i.i, label %bb.t

bb.t:                                             ; preds = %sqlite3_value_text.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 22
  %i.br = load i8, ptr %i.bq, align 2, !tbaa !351
  %i.bs = icmp eq i8 %i.br, 1
  br i1 %i.bs, label %bb.u, label %.thread.i.i

bb.u:                                             ; preds = %bb.t
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !818
  br label %sqlite3_value_bytes.exit

.thread.i.i:                                      ; preds = %bb.t, %sqlite3_value_text.exit
  %i.bv = zext i16 %i.bo to i32                   ; 3 uses
  %i.bw = and i32 %i.bv, 16
  %.not20.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not20.i.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %.thread.i.i
  %i.bx = and i32 %i.bv, 1024
  %.not22.i.i = icmp eq i32 %i.bx, 0
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !818 ; 2 uses
  br i1 %.not22.i.i, label %sqlite3_value_bytes.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ca = load i32, ptr %i.bm, align 8, !tbaa !231
  %i.cb = add nsw i32 %i.ca, %i.bz
  br label %sqlite3_value_bytes.exit

bb.x:                                             ; preds = %.thread.i.i
  %i.cc = and i32 %i.bv, 1
  %.not21.i.i = icmp eq i32 %i.cc, 0
  br i1 %.not21.i.i, label %bb.y, label %sqlite3_value_bytes.exit

bb.y:                                             ; preds = %bb.x
  %i.cd = call fastcc i32 @valueBytes(ptr noundef nonnull %i.bm, i8 noundef zeroext 1), !inline_history !882
  br label %sqlite3_value_bytes.exit

sqlite3_value_bytes.exit:                         ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %bb.y
  %.0.i.i21 = phi i32 [ %i.bu, %bb.u ], [ %i.bz, %bb.v ], [ %i.cb, %bb.w ], [ 0, %bb.x ], [ %i.cd, %bb.y ]
  call fastcc void @jsonAppendString(ptr noundef nonnull %3, ptr noundef %.0.i.i, i32 noundef %.0.i.i21)
  %i.ce = load i64, ptr %i.j, align 8, !tbaa !3097 ; 3 uses
  %i.cf = load i64, ptr %i.i, align 8, !tbaa !3080
  %.not.i22 = icmp ult i64 %i.ce, %i.cf
  br i1 %.not.i22, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %sqlite3_value_bytes.exit
  call fastcc void @jsonAppendCharExpand(ptr noundef nonnull %3, i8 noundef signext 58), !inline_history !3182
  br label %jsonAppendChar.exit23

bb.aa:                                            ; preds = %sqlite3_value_bytes.exit
  %i.cg = load ptr, ptr %i.h, align 8, !tbaa !3079
  %i.ch = add nuw i64 %i.ce, 1
  store i64 %i.ch, ptr %i.j, align 8, !tbaa !3097
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ce
  store i8 58, ptr %i.ci, align 1, !tbaa !231
  br label %jsonAppendChar.exit23

jsonAppendChar.exit23:                            ; preds = %bb.z, %bb.aa
  %i.cj = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !296
  call fastcc void @jsonAppendSqlValue(ptr noundef %3, ptr noundef %i.ck)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %4 = icmp samesign ult i64 %indvars.iv.next, %sext
  br i1 %4, label %.lr.ph, label %._crit_edge, !llvm.loop !5135

._crit_edge:                                      ; preds = %jsonAppendChar.exit23
  %.pre29 = load i64, ptr %i.j, align 8, !tbaa !3097 ; 2 uses
  %.pre30 = load i64, ptr %i.i, align 8, !tbaa !3080
  %i.cl = icmp ult i64 %.pre29, %.pre30
  br i1 %i.cl, label %._crit_edge.thread, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge
  call fastcc void @jsonAppendCharExpand(ptr noundef nonnull %3, i8 noundef signext 125), !inline_history !3182
  br label %jsonAppendChar.exit25

._crit_edge.thread:                               ; preds = %jsonAppendChar.exit, %._crit_edge
  %i.cm = phi i64 [ %.pre29, %._crit_edge ], [ 1, %jsonAppendChar.exit ] ; 2 uses
  %i.cn = load ptr, ptr %i.h, align 8, !tbaa !3079
  %i.co = add nuw i64 %i.cm, 1
  store i64 %i.co, ptr %i.j, align 8, !tbaa !3097
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cm
  store i8 125, ptr %i.cp, align 1, !tbaa !231
  br label %jsonAppendChar.exit25

jsonAppendChar.exit25:                            ; preds = %bb.ab, %._crit_edge.thread
  call fastcc void @jsonReturnString(ptr noundef %3, ptr noundef null, ptr noundef null)
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !234 ; 3 uses
  %.not.i26 = icmp eq ptr %i.cr, null
  br i1 %.not.i26, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %jsonAppendChar.exit25
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !837
  %i.cu = and i32 %i.ct, 16777216
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !227
  %i.cy = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 200, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.21, ptr noundef %i.cx), !inline_history !3115 ; 0 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 1, ptr %i.cz, align 4, !tbaa !27
  %i.da = load ptr, ptr %0, align 8, !tbaa !296
  %i.db = call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef %i.da, ptr noundef nonnull %i.a, i64 noundef -1, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr)), !inline_history !3116 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br label %sqlite3_result_subtype.exit

bb.ae:                                            ; preds = %bb.ac, %jsonAppendChar.exit25
  %i.dc = load ptr, ptr %0, align 8, !tbaa !296   ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 23
  store i8 74, ptr %i.dd, align 1, !tbaa !823
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 20 ; 2 uses
  %i.df = load i16, ptr %i.de, align 4, !tbaa !166
  %i.dg = or i16 %i.df, 2048
  store i16 %i.dg, ptr %i.de, align 4, !tbaa !166
  br label %sqlite3_result_subtype.exit

sqlite3_result_subtype.exit:                      ; preds = %bb.j, %bb.i, %sqlite3_mutex_enter.exit.i.i.i, %bb.e, %bb.c, %bb.ae, %bb.ad, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @jsonPatchFunc(ptr noundef %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !296
  %i.b = tail call fastcc ptr @jsonParseFuncArg(ptr noundef %0, ptr noundef %i.a, i32 noundef 1) ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %jsonParseFree.exit21, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !296
  %i.f = tail call fastcc ptr @jsonParseFuncArg(ptr noundef %0, ptr noundef %i.e, i32 noundef 0) ; 6 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %jsonParseFree.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call fastcc i32 @jsonMergePatch(ptr noundef %i.b, i32 noundef 0, ptr noundef %i.f, i32 noundef 0, i32 noundef 0)
  switch i32 %i.g, label %bb.n [
    i32 0, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.m
  ]

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @jsonReturnParse(ptr noundef %0, ptr noundef %i.b)
  br label %sqlite3_result_error_nomem.exit

bb.e:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8, !tbaa !296    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20 ; 2 uses
  %i.j = load i16, ptr %i.i, align 4, !tbaa !166
  %i.k = and i16 %i.j, -28672
  %.not.i.i = icmp eq i16 %i.k, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @vdbeMemClearExternAndSetNull(ptr noundef nonnull %i.h), !inline_history !828
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !296
  br label %sqlite3VdbeMemSetNull.exit.i

bb.g:                                             ; preds = %bb.e
  store i16 1, ptr %i.i, align 4, !tbaa !166
  br label %sqlite3VdbeMemSetNull.exit.i

sqlite3VdbeMemSetNull.exit.i:                     ; preds = %bb.g, %bb.f
  %i.l = phi ptr [ %.pre.i, %bb.f ], [ %i.h, %bb.g ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 7, ptr %i.m, align 4, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !161  ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 103 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !563
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.h, label %sqlite3_result_error_nomem.exit

bb.h:                                             ; preds = %sqlite3VdbeMemSetNull.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.t = load i8, ptr %i.s, align 8, !tbaa !564
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.i, label %sqlite3_result_error_nomem.exit

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.p, align 1, !tbaa !563
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 220
  %i.w = load i32, ptr %i.v, align 4, !tbaa !565
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 400
  store atomic volatile i32 1, ptr %i.y monotonic, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 408 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !566
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !566
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 412
  store i16 0, ptr %i.ac, align 4, !tbaa !567
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 344 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !309 ; 2 uses
  %.not.i3.i = icmp eq ptr %i.ae, null
  br i1 %.not.i3.i, label %sqlite3_result_error_nomem.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.ae, ptr noundef nonnull @.str.125), !inline_history !829
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !309 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i32 7, ptr %i.ag, align 8, !tbaa !310
  %.0.in17.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 224
  %.018.i.i = load ptr, ptr %.0.in17.i.i, align 8, !tbaa !569 ; 2 uses
  %.not1619.i.i = icmp eq ptr %.018.i.i, null
  br i1 %.not1619.i.i, label %sqlite3_result_error_nomem.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  %.020.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.018.i.i, %bb.l ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 52 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !321
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !321
  %i.ak = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 24
  store i32 7, ptr %i.ak, align 8, !tbaa !310
  %.0.in.i.i = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 224
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8, !tbaa !569 ; 2 uses
  %.not16.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not16.i.i, label %sqlite3_result_error_nomem.exit, label %.lr.ph.i.i, !llvm.loop !570

bb.m:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 1, ptr %i.al, align 4, !tbaa !27
  %i.am = load ptr, ptr %0, align 8, !tbaa !296
  %i.an = tail call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef %i.am, ptr noundef nonnull @.str.645, i64 noundef -1, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr)), !inline_history !838 ; 0 uses
  br label %sqlite3_result_error_nomem.exit

bb.n:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 1, ptr %i.ao, align 4, !tbaa !27
  %i.ap = load ptr, ptr %0, align 8, !tbaa !296
  %i.aq = tail call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef %i.ap, ptr noundef nonnull @.str.619, i64 noundef -1, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr)), !inline_history !838 ; 0 uses
  br label %sqlite3_result_error_nomem.exit

sqlite3_result_error_nomem.exit:                  ; preds = %.lr.ph.i.i, %bb.d, %bb.m, %bb.n, %sqlite3VdbeMemSetNull.exit.i, %bb.h, %bb.k, %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 36 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !3198 ; 2 uses
  %i.at = icmp ugt i32 %i.as, 1
  br i1 %i.at, label %bb.o, label %sqlite3DbFree.exit.i

bb.o:                                             ; preds = %sqlite3_result_error_nomem.exit
  %i.au = add i32 %i.as, -1
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !3198
  br label %jsonParseFree.exit

sqlite3DbFree.exit.i:                             ; preds = %sqlite3_result_error_nomem.exit
  tail call fastcc void @jsonParseReset(ptr noundef nonnull %i.f)
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !3129
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.aw, ptr noundef nonnull %i.f)
  br label %jsonParseFree.exit
end_hunk_10
