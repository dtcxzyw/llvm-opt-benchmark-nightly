Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/timeline?download=true
inline.NumInlined: 87
inline.NumDeleted: 19
begin_hunk_0_@_lib_timeline_draw_callback:bb.a
  %i.hb = load i32, ptr %i.cw, align 4, !tbaa !81
  %.not22.i142.i = icmp eq i32 %.sroa.432.0.copyload.i, %i.hb
  br i1 %.not22.i142.i, label %bb.ca, label %_time_compare_at_zoom.exit151.thread170.i

bb.ca:                                            ; preds = %bb.bz
  %.not23.i143.i = icmp eq i32 %i.gl, 0
  br i1 %.not23.i143.i, label %_block_get_bar_width.exit153.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.hc = load i32, ptr %i.cx, align 8, !tbaa !82
  %.not24.i144.i = icmp eq i32 %.sroa.533.0.copyload.i, %i.hc
  br i1 %.not24.i144.i, label %bb.cc, label %_time_compare_at_zoom.exit151.thread170.i

bb.cc:                                            ; preds = %bb.cb
  %i.hd = icmp ugt i32 %i.gl, 2
  br i1 %i.hd, label %bb.cd, label %_time_compare_at_zoom.exit151.thread.i

bb.cd:                                            ; preds = %bb.cc
  %i.he = sdiv i32 %.sroa.634.0.copyload.i, 2
  %i.hf = load i32, ptr %i.cz, align 4, !tbaa !83 ; 2 uses
  %i.hg = sdiv i32 %i.hf, 2
  %.not25.i145.i = icmp eq i32 %i.he, %i.hg
  br i1 %.not25.i145.i, label %bb.ce, label %_time_compare_at_zoom.exit151.thread170.i

bb.ce:                                            ; preds = %bb.cd
  %.not26.i146.i = icmp eq i32 %i.gl, 3
  br i1 %.not26.i146.i, label %_block_get_bar_width.exit153.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %.not27.i147.i = icmp eq i32 %.sroa.634.0.copyload.i, %i.hf
  br i1 %.not27.i147.i, label %bb.cg, label %_time_compare_at_zoom.exit151.thread170.i

bb.cg:                                            ; preds = %bb.cf
  %i.hh = icmp ugt i32 %i.gl, 4
  br i1 %i.hh, label %bb.ch, label %_block_get_bar_width.exit153.i

bb.ch:                                            ; preds = %bb.cg
  %i.hi = sdiv i32 %.sroa.735.0.copyload.i, 3
  %i.hj = load i32, ptr %i.cy, align 8, !tbaa !84 ; 2 uses
  %i.hk = sdiv i32 %i.hj, 3
  %.not28.i148.i = icmp eq i32 %i.hi, %i.hk
  br i1 %.not28.i148.i, label %bb.ci, label %_time_compare_at_zoom.exit151.thread170.i

bb.ci:                                            ; preds = %bb.ch
  %.not29.i149.i = icmp eq i32 %i.gl, 5
  br i1 %.not29.i149.i, label %_block_get_bar_width.exit153.i, label %_time_compare_at_zoom.exit151.i

_time_compare_at_zoom.exit151.i:                  ; preds = %bb.ci
  %i.hl = icmp eq i32 %.sroa.735.0.copyload.i, %i.hj
  br i1 %i.hl, label %_time_compare_at_zoom.exit151.thread.i, label %_time_compare_at_zoom.exit151.thread170.i

_time_compare_at_zoom.exit151.thread.i:           ; preds = %_time_compare_at_zoom.exit151.i, %bb.cc
  %switch.selectcmp185.i = icmp eq i32 %i.gl, 6
  %switch.select186.i = select i1 %switch.selectcmp185.i, i32 2, i32 1
  %switch.selectcmp187.i = icmp eq i32 %i.gl, 2
  %switch.select188.i = select i1 %switch.selectcmp187.i, i32 4, i32 %switch.select186.i
  br label %_block_get_bar_width.exit153.i

_block_get_bar_width.exit153.i:                   ; preds = %_time_compare_at_zoom.exit151.thread.i, %bb.ci, %bb.cg, %bb.ce, %bb.ca
  %.0.i152.i = phi i32 [ 5, %bb.cg ], [ 10, %bb.ca ], [ %switch.select188.i, %_time_compare_at_zoom.exit151.thread.i ], [ 1, %bb.ce ], [ 1, %bb.ci ]
  %i.hm = trunc i64 %indvars.iv.i to i32
  %i.hn = add i32 %i.hm, 1
  %i.ho = mul nuw nsw i32 %.0.i152.i, %i.hn
  %i.hp = add nsw i32 %i.ho, %.0101.i
  store i32 %i.hp, ptr %i.db, align 4, !tbaa !122
  br label %_time_compare_at_zoom.exit151.thread170.i

_time_compare_at_zoom.exit151.thread170.i:        ; preds = %_block_get_bar_width.exit153.i, %_time_compare_at_zoom.exit151.i, %bb.ch, %bb.cf, %bb.cd, %bb.cb, %bb.bz, %_time_compare_at_zoom.exit137.thread168.i
  %i.hq = icmp eq i32 %.1117.i, 100
  br i1 %i.hq, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_time_compare_at_zoom.exit151.thread170.i, %bb.cu
  %.2100111.i = phi i32 [ %i.iy, %bb.cu ], [ %.199116.i, %_time_compare_at_zoom.exit151.thread170.i ] ; 8 uses
  %i.hr = load i32, ptr %i.v, align 8, !tbaa !73  ; 12 uses
  %i.hs = load i32, ptr %5, align 8, !tbaa !80
  %i.ht = load i32, ptr %4, align 8, !tbaa !80
  %.not.i154.i = icmp eq i32 %i.hs, %i.ht
  br i1 %.not.i154.i, label %bb.cj, label %.critedge.i

bb.cj:                                            ; preds = %.lr.ph.i
  %i.hu = load i32, ptr %i.cw, align 4, !tbaa !81
  %i.hv = load i32, ptr %i.dc, align 4, !tbaa !81
  %.not22.i156.i = icmp eq i32 %i.hu, %i.hv
  br i1 %.not22.i156.i, label %bb.ck, label %.critedge.i

bb.ck:                                            ; preds = %bb.cj
  %.not23.i157.i = icmp eq i32 %i.hr, 0
  br i1 %.not23.i157.i, label %_time_compare_at_zoom.exit165.thread.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.hw = load i32, ptr %i.cx, align 8, !tbaa !82
  %i.hx = load i32, ptr %i.dd, align 8, !tbaa !82
  %.not24.i158.i = icmp eq i32 %i.hw, %i.hx
  br i1 %.not24.i158.i, label %bb.cm, label %.critedge.i

bb.cm:                                            ; preds = %bb.cl
  %i.hy = icmp ugt i32 %i.hr, 2
  br i1 %i.hy, label %bb.cn, label %_time_compare_at_zoom.exit165.thread.i

bb.cn:                                            ; preds = %bb.cm
  %i.hz = load i32, ptr %i.cz, align 4, !tbaa !83 ; 2 uses
  %i.ia = sdiv i32 %i.hz, 2
  %i.ib = load i32, ptr %i.de, align 4, !tbaa !83 ; 2 uses
  %i.ic = sdiv i32 %i.ib, 2
  %.not25.i159.i = icmp eq i32 %i.ia, %i.ic
  br i1 %.not25.i159.i, label %bb.co, label %.critedge.i

bb.co:                                            ; preds = %bb.cn
  %.not26.i160.i = icmp eq i32 %i.hr, 3
  br i1 %.not26.i160.i, label %_time_compare_at_zoom.exit165.thread.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %.not27.i161.i = icmp eq i32 %i.hz, %i.ib
  br i1 %.not27.i161.i, label %bb.cq, label %.critedge.i

bb.cq:                                            ; preds = %bb.cp
  %i.id = icmp ugt i32 %i.hr, 4
  br i1 %i.id, label %bb.cr, label %_time_compare_at_zoom.exit165.thread.i

bb.cr:                                            ; preds = %bb.cq
  %i.ie = load i32, ptr %i.cy, align 8, !tbaa !84 ; 2 uses
  %i.if = sdiv i32 %i.ie, 3
  %i.ig = load i32, ptr %i.df, align 8, !tbaa !84 ; 2 uses
  %i.ih = sdiv i32 %i.ig, 3
  %.not28.i162.i = icmp eq i32 %i.if, %i.ih
  br i1 %.not28.i162.i, label %bb.cs, label %.critedge.i

bb.cs:                                            ; preds = %bb.cr
  %.not29.i163.i = icmp eq i32 %i.hr, 5
  %i.ii = icmp eq i32 %i.ie, %i.ig
  %or.cond189.i = or i1 %.not29.i163.i, %i.ii
  br i1 %or.cond189.i, label %_time_compare_at_zoom.exit165.thread.i, label %.critedge.i

_time_compare_at_zoom.exit165.thread.i:           ; preds = %bb.cs, %bb.cq, %bb.co, %bb.cm, %bb.ck
  %i.ij = load ptr, ptr %i.gc, align 8, !tbaa !127
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %indvars.iv.i ; 2 uses
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !72
  %i.im = add nsw i32 %i.il, 1
  store i32 %i.im, ptr %i.ik, align 4, !tbaa !72
  %i.in = icmp sgt i32 %.2100111.i, 0
  br i1 %i.in, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %_time_compare_at_zoom.exit165.thread.i
  %i.io = load ptr, ptr %i.gd, align 8, !tbaa !128
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %indvars.iv.i ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !72
  %i.ir = add nsw i32 %i.iq, 1
  store i32 %i.ir, ptr %i.ip, align 4, !tbaa !72
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %_time_compare_at_zoom.exit165.thread.i
  %i.is = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.it = call i32 @sqlite3_step(ptr noundef %i.is) #15 ; 2 uses
  %i.iu = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.iv = call i64 @sqlite3_column_int64(ptr noundef %i.iu, i32 noundef 0) #15
  %i.iw = call i32 @dt_datetime_gtimespan_to_numbers(ptr noundef nonnull %4, i64 noundef %i.iv) #15 ; 0 uses
  %i.ix = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.iy = call i32 @sqlite3_column_int(ptr noundef %i.ix, i32 noundef 1) #15 ; 2 uses
  %i.iz = icmp eq i32 %i.it, 100
  br i1 %i.iz, label %.lr.ph.i, label %..critedge.loopexit_crit_edge.i

..critedge.loopexit_crit_edge.i:                  ; preds = %bb.cu
  %.pre.pre.i = load i32, ptr %i.v, align 8, !tbaa !73
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.cs, %bb.cr, %bb.cp, %bb.cn, %bb.cl, %bb.cj, %.lr.ph.i, %..critedge.loopexit_crit_edge.i, %_time_compare_at_zoom.exit151.thread170.i
  %i.ja = phi i32 [ %i.gl, %_time_compare_at_zoom.exit151.thread170.i ], [ %.pre.pre.i, %..critedge.loopexit_crit_edge.i ], [ %i.hr, %.lr.ph.i ], [ %i.hr, %bb.cj ], [ %i.hr, %bb.cl ], [ %i.hr, %bb.cn ], [ %i.hr, %bb.cp ], [ %i.hr, %bb.cr ], [ %i.hr, %bb.cs ] ; 2 uses
  %.2100.lcssa.i = phi i32 [ %.199116.i, %_time_compare_at_zoom.exit151.thread170.i ], [ %i.iy, %..critedge.loopexit_crit_edge.i ], [ %.2100111.i, %.lr.ph.i ], [ %.2100111.i, %bb.cj ], [ %.2100111.i, %bb.cl ], [ %.2100111.i, %bb.cn ], [ %.2100111.i, %bb.cp ], [ %.2100111.i, %bb.cr ], [ %.2100111.i, %bb.cs ] ; 2 uses
  %.2.lcssa.i = phi i32 [ %.1117.i, %_time_compare_at_zoom.exit151.thread170.i ], [ %i.it, %..critedge.loopexit_crit_edge.i ], [ 100, %.lr.ph.i ], [ 100, %bb.cj ], [ 100, %bb.cl ], [ 100, %bb.cn ], [ 100, %bb.cp ], [ 100, %bb.cr ], [ 100, %bb.cs ] ; 2 uses
  switch i32 %i.ja, label %_time_add.exit.i [
    i32 0, label %bb.cv
    i32 1, label %bb.cx
    i32 2, label %bb.cx
    i32 3, label %bb.dj
    i32 4, label %bb.dk
    i32 5, label %bb.dl
    i32 6, label %bb.dm
  ]

bb.cv:                                            ; preds = %.critedge.i
  %i.jb = load i32, ptr %i.cw, align 4, !tbaa !81 ; 2 uses
  %i.jc = add i32 %i.jb, 1                        ; 3 uses
  %i.jd = icmp sgt i32 %i.jc, 12
  %.promoted244.i.i.pre = load i32, ptr %5, align 8, !tbaa !80 ; 2 uses
  br i1 %i.jd, label %.lr.ph238.i.i, label %.preheader129.i.i

.lr.ph238.i.i:                                    ; preds = %bb.cv
  %i.je = call i32 @llvm.usub.sat.i32(i32 %i.jc, i32 24)
  %i.jf = add nuw nsw i32 %i.je, 11
  %i.jg = udiv i32 %i.jf, 12                      ; 2 uses
  %i.jh = add nuw nsw i32 %i.jg, 1
  %i.ji = add i32 %i.jh, %.promoted244.i.i.pre    ; 2 uses
  %i.jj = add nsw i32 %i.jb, -11
  %.neg319.i.i = mul nsw i32 %i.jg, -12
  %i.jk = add nsw i32 %i.jj, %.neg319.i.i
  store i32 %i.ji, ptr %5, align 8, !tbaa !80
  br label %.preheader129.i.i

.preheader129.i.i:                                ; preds = %.lr.ph238.i.i, %bb.cv
  %.promoted244.i.i = phi i32 [ %i.ji, %.lr.ph238.i.i ], [ %.promoted244.i.i.pre, %bb.cv ] ; 2 uses
  %storemerge.lcssa235.i.i = phi i32 [ %i.jk, %.lr.ph238.i.i ], [ %i.jc, %bb.cv ] ; 5 uses
  store i32 %storemerge.lcssa235.i.i, ptr %i.cw, align 4, !tbaa !81
  %i.jl = icmp slt i32 %storemerge.lcssa235.i.i, 1
  br i1 %i.jl, label %.lr.ph243.i.i, label %thread-pre-split127.i.i

.lr.ph243.i.i:                                    ; preds = %.preheader129.i.i
  %smax296.i.i = call i32 @llvm.smax.i32(i32 %storemerge.lcssa235.i.i, i32 -11)
  %.neg108.i = sub i32 %smax296.i.i, %storemerge.lcssa235.i.i
  %i.jm = add i32 %.neg108.i, 11
  %i.jn = udiv i32 %i.jm, 12                      ; 2 uses
  %i.jo = xor i32 %i.jn, -1
  %i.jp = add i32 %.promoted244.i.i, %i.jo        ; 2 uses
  %i.jq = mul nuw i32 %i.jn, 12
  %i.jr = add nsw i32 %storemerge.lcssa235.i.i, 12
  %i.js = add i32 %i.jr, %i.jq
  store i32 %i.jp, ptr %5, align 8, !tbaa !80
  store i32 %i.js, ptr %i.cw, align 4, !tbaa !81
  br label %thread-pre-split127.i.i

thread-pre-split127.i.i:                          ; preds = %.lr.ph243.i.i, %.preheader129.i.i
  %.pr128.i.i = phi i32 [ %i.jp, %.lr.ph243.i.i ], [ %.promoted244.i.i, %.preheader129.i.i ]
  %i.jt = icmp slt i32 %.pr128.i.i, 0
  br i1 %i.jt, label %bb.cw, label %_time_add.exit.i

bb.cw:                                            ; preds = %thread-pre-split127.i.i
  store i32 0, ptr %5, align 8, !tbaa !80
  br label %_time_add.exit.i

bb.cx:                                            ; preds = %.critedge.i, %.critedge.i
  %i.ju = load i32, ptr %i.cx, align 8, !tbaa !82
  %i.jv = add nsw i32 %i.ju, 1                    ; 2 uses
  store i32 %i.jv, ptr %i.cx, align 8, !tbaa !82
  %.promoted161.i.i = load i32, ptr %5, align 8, !tbaa !80
  %.promoted.i.i = load i32, ptr %i.cw, align 4, !tbaa !81
  br label %_time_add.exit113.i.i

_time_add.exit113.i.i:                            ; preds = %_time_add.exit113.i.i.backedge, %bb.cx
  %.lcssa145.promoted.i.i = phi i32 [ %.promoted.i.i, %bb.cx ], [ %.lcssa159167.i.i, %_time_add.exit113.i.i.backedge ] ; 7 uses
  %.promoted185.i.i = phi i32 [ %.promoted161.i.i, %bb.cx ], [ %.promoted185.i.i.be, %_time_add.exit113.i.i.backedge ] ; 11 uses
  %.pr123.i.i = phi i32 [ %i.jv, %bb.cx ], [ %i.la, %_time_add.exit113.i.i.backedge ] ; 5 uses
  switch i32 %.lcssa145.promoted.i.i, label %bb.cz [
    i32 2, label %bb.cy
    i32 1, label %_time_days_in_month.exit105.i.i
    i32 3, label %_time_days_in_month.exit105.i.i
    i32 5, label %_time_days_in_month.exit105.i.i
    i32 7, label %_time_days_in_month.exit105.i.i
    i32 8, label %_time_days_in_month.exit105.i.i
    i32 10, label %_time_days_in_month.exit105.i.i
    i32 12, label %_time_days_in_month.exit105.i.i
  ]

bb.cy:                                            ; preds = %_time_add.exit113.i.i
  %i.jw = and i32 %.promoted185.i.i, 3
  %i.jx = icmp eq i32 %i.jw, 0
  %i.jy = srem i32 %.promoted185.i.i, 100
  %.not.i101.i.i = icmp ne i32 %i.jy, 0
  %or.cond.not8.i102.i.i = and i1 %i.jx, %.not.i101.i.i
  %i.jz = srem i32 %.promoted185.i.i, 400
  %i.ka = icmp eq i32 %i.jz, 0
  %or.cond6.i103.i.i = or i1 %i.ka, %or.cond.not8.i102.i.i
  %spec.select.i104.i.i = select i1 %or.cond6.i103.i.i, i32 29, i32 28
  br label %_time_days_in_month.exit105.i.i

bb.cz:                                            ; preds = %_time_add.exit113.i.i
  br label %_time_days_in_month.exit105.i.i

_time_days_in_month.exit105.i.i:                  ; preds = %bb.cz, %bb.cy, %_time_add.exit113.i.i, %_time_add.exit113.i.i, %_time_add.exit113.i.i, %_time_add.exit113.i.i, %_time_add.exit113.i.i, %_time_add.exit113.i.i, %_time_add.exit113.i.i
  %.0.i100.i.i = phi i32 [ 30, %bb.cz ], [ %spec.select.i104.i.i, %bb.cy ], [ 31, %_time_add.exit113.i.i ], [ 31, %_time_add.exit113.i.i ], [ 31, %_time_add.exit113.i.i ], [ 31, %_time_add.exit113.i.i ], [ 31, %_time_add.exit113.i.i ], [ 31, %_time_add.exit113.i.i ], [ 31, %_time_add.exit113.i.i ]
  %i.kb = icmp sgt i32 %.pr123.i.i, %.0.i100.i.i
  br i1 %i.kb, label %bb.da, label %thread-pre-split122.i.i

bb.da:                                            ; preds = %_time_days_in_month.exit105.i.i
  switch i32 %.lcssa145.promoted.i.i, label %bb.db [
    i32 2, label %.preheader136.thread.i.i
    i32 1, label %_time_days_in_month.exit111.i.i
    i32 3, label %_time_days_in_month.exit111.i.i
    i32 5, label %_time_days_in_month.exit111.i.i
    i32 7, label %_time_days_in_month.exit111.i.i
    i32 8, label %_time_days_in_month.exit111.i.i
    i32 10, label %_time_days_in_month.exit111.i.i
    i32 12, label %_time_days_in_month.exit111.i.i
  ]

.preheader136.thread.i.i:                         ; preds = %bb.da
  %i.kc = and i32 %.promoted185.i.i, 3
  %i.kd = icmp eq i32 %i.kc, 0
  %i.ke = srem i32 %.promoted185.i.i, 100
  %.not.i107.i.i = icmp ne i32 %i.ke, 0
  %or.cond.not8.i108.i.i = and i1 %i.kd, %.not.i107.i.i
  %i.kf = srem i32 %.promoted185.i.i, 400
  %i.kg = icmp eq i32 %i.kf, 0
  %or.cond6.i109.i.i = or i1 %i.kg, %or.cond.not8.i108.i.i
  %spec.select.i110.neg.i.i = select i1 %or.cond6.i109.i.i, i32 -29, i32 -28
  %i.kh = add nsw i32 %spec.select.i110.neg.i.i, %.pr123.i.i ; 2 uses
  store i32 %i.kh, ptr %i.cx, align 8, !tbaa !82
  br label %.sink.split330.i.i

bb.db:                                            ; preds = %bb.da
  br label %_time_days_in_month.exit111.i.i

_time_days_in_month.exit111.i.i:                  ; preds = %bb.db, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da, %bb.da
  %.0.i106.neg.i.i = phi i32 [ -30, %bb.db ], [ -31, %bb.da ], [ -31, %bb.da ], [ -31, %bb.da ], [ -31, %bb.da ], [ -31, %bb.da ], [ -31, %bb.da ], [ -31, %bb.da ]
  %i.ki = add nsw i32 %.0.i106.neg.i.i, %.pr123.i.i ; 3 uses
  store i32 %i.ki, ptr %i.cx, align 8, !tbaa !82
  %i.kj = add i32 %.lcssa145.promoted.i.i, 1      ; 2 uses
  %i.kk = icmp sgt i32 %.lcssa145.promoted.i.i, 11
  br i1 %i.kk, label %.lr.ph153.preheader.i.i, label %.preheader136.i.i

.lr.ph153.preheader.i.i:                          ; preds = %_time_days_in_month.exit111.i.i
  %i.kl = add i32 %.promoted185.i.i, 1
  %i.km = add nuw i32 %.lcssa145.promoted.i.i, 12
  %smin.i.i = call i32 @llvm.smin.i32(i32 %i.kj, i32 24)
  %i.kn = sub i32 %i.km, %smin.i.i
  %i.ko = udiv i32 %i.kn, 12                      ; 2 uses
  %i.kp = add i32 %i.kl, %i.ko                    ; 2 uses
  %i.kq = add nsw i32 %.lcssa145.promoted.i.i, -11
  %.neg316.i.i = mul i32 %i.ko, -12
  %i.kr = add i32 %i.kq, %.neg316.i.i
  store i32 %i.kp, ptr %5, align 8, !tbaa !80
  br label %.preheader136.i.i

.preheader136.i.i:                                ; preds = %.lr.ph153.preheader.i.i, %_time_days_in_month.exit111.i.i
  %.lcssa158165.i.i = phi i32 [ %i.kp, %.lr.ph153.preheader.i.i ], [ %.promoted185.i.i, %_time_days_in_month.exit111.i.i ] ; 2 uses
  %storemerge.i112.lcssa151.i.i = phi i32 [ %i.kr, %.lr.ph153.preheader.i.i ], [ %i.kj, %_time_days_in_month.exit111.i.i ] ; 6 uses
  store i32 %storemerge.i112.lcssa151.i.i, ptr %i.cw, align 4, !tbaa !81
  %i.ks = icmp slt i32 %storemerge.i112.lcssa151.i.i, 1
  br i1 %i.ks, label %.lr.ph156.preheader.i.i, label %bb.dc

.lr.ph156.preheader.i.i:                          ; preds = %.preheader136.i.i
  %smax.i.i = call i32 @llvm.smax.i32(i32 %storemerge.i112.lcssa151.i.i, i32 -11)
  %.neg107.i = sub i32 %smax.i.i, %storemerge.i112.lcssa151.i.i
  %i.kt = add i32 %.neg107.i, 11
  %i.ku = udiv i32 %i.kt, 12                      ; 2 uses
  %i.kv = xor i32 %i.ku, -1
  %i.kw = add i32 %.lcssa158165.i.i, %i.kv        ; 2 uses
  %i.kx = add nsw i32 %storemerge.i112.lcssa151.i.i, 12
  %i.ky = mul nuw i32 %i.ku, 12
  %i.kz = add i32 %i.kx, %i.ky
  store i32 %i.kw, ptr %5, align 8, !tbaa !80
  br label %.sink.split330.i.i

.sink.split330.i.i:                               ; preds = %.lr.ph156.preheader.i.i, %.preheader136.thread.i.i
  %.sink332.i.i = phi i32 [ 3, %.preheader136.thread.i.i ], [ %i.kz, %.lr.ph156.preheader.i.i ] ; 2 uses
  %.ph331.i.i = phi i32 [ %i.kh, %.preheader136.thread.i.i ], [ %i.ki, %.lr.ph156.preheader.i.i ]
  %.lcssa158164.ph.i.i = phi i32 [ %.promoted185.i.i, %.preheader136.thread.i.i ], [ %i.kw, %.lr.ph156.preheader.i.i ]
  store i32 %.sink332.i.i, ptr %i.cw, align 4, !tbaa !81
  br label %bb.dc

bb.dc:                                            ; preds = %.sink.split330.i.i, %.preheader136.i.i
  %i.la = phi i32 [ %i.ki, %.preheader136.i.i ], [ %.ph331.i.i, %.sink.split330.i.i ]
  %.lcssa159167.i.i = phi i32 [ %storemerge.i112.lcssa151.i.i, %.preheader136.i.i ], [ %.sink332.i.i, %.sink.split330.i.i ]
  %.lcssa158164.i.i = phi i32 [ %.lcssa158165.i.i, %.preheader136.i.i ], [ %.lcssa158164.ph.i.i, %.sink.split330.i.i ] ; 2 uses
  %i.lb = icmp slt i32 %.lcssa158164.i.i, 0
  br i1 %i.lb, label %bb.dd, label %_time_add.exit113.i.i.backedge

bb.dd:                                            ; preds = %bb.dc
  store i32 0, ptr %5, align 8, !tbaa !80
  br label %_time_add.exit113.i.i.backedge

_time_add.exit113.i.i.backedge:                   ; preds = %bb.dd, %bb.dc
  %.promoted185.i.i.be = phi i32 [ 0, %bb.dd ], [ %.lcssa158164.i.i, %bb.dc ]
  br label %_time_add.exit113.i.i

thread-pre-split122.i.i:                          ; preds = %_time_days_in_month.exit105.i.i
  %i.lc = icmp slt i32 %.pr123.i.i, 1
  br i1 %i.lc, label %.lr.ph182.i.i, label %thread-pre-split127.i166.i

.lr.ph182.i.i:                                    ; preds = %thread-pre-split122.i.i, %_time_days_in_month.exit121.i.i
  %.lcssa180186.i.i = phi i32 [ %.lcssa180187.i.i, %_time_days_in_month.exit121.i.i ], [ %.promoted185.i.i, %thread-pre-split122.i.i ] ; 2 uses
  %.lcssa181183.i.i = phi i32 [ %.lcssa181184.i.i, %_time_days_in_month.exit121.i.i ], [ %.lcssa145.promoted.i.i, %thread-pre-split122.i.i ] ; 4 uses
  %i.ld = phi i32 [ %i.mc, %_time_days_in_month.exit121.i.i ], [ %.pr123.i.i, %thread-pre-split122.i.i ]
  %i.le = add i32 %.lcssa181183.i.i, -1           ; 2 uses
  %i.lf = icmp sgt i32 %.lcssa181183.i.i, 13
  br i1 %i.lf, label %.lr.ph171.preheader.i.i, label %.preheader134.i.i

.lr.ph171.preheader.i.i:                          ; preds = %.lr.ph182.i.i
  %i.lg = add i32 %.lcssa180186.i.i, 1
  %i.lh = add nuw i32 %.lcssa181183.i.i, 10
  %i.li = call i32 @llvm.umin.i32(i32 %i.le, i32 24)
  %i.lj = sub nuw i32 %i.lh, %i.li
  %i.lk = udiv i32 %i.lj, 12                      ; 2 uses
  %i.ll = add i32 %i.lg, %i.lk                    ; 2 uses
  %i.lm = add nsw i32 %.lcssa181183.i.i, -13
  %.neg.i.i = mul nsw i32 %i.lk, -12
  %i.ln = add nsw i32 %i.lm, %.neg.i.i
  store i32 %i.ll, ptr %5, align 8, !tbaa !80
  br label %.preheader134.i.i

.preheader134.i.i:                                ; preds = %.lr.ph171.preheader.i.i, %.lr.ph182.i.i
  %.lcssa180189.i.i = phi i32 [ %i.ll, %.lr.ph171.preheader.i.i ], [ %.lcssa180186.i.i, %.lr.ph182.i.i ] ; 2 uses
  %storemerge.i114.lcssa168.i.i = phi i32 [ %i.ln, %.lr.ph171.preheader.i.i ], [ %i.le, %.lr.ph182.i.i ] ; 5 uses
  %i.lo = icmp slt i32 %storemerge.i114.lcssa168.i.i, 1
  br i1 %i.lo, label %.lr.ph176.preheader.i.i, label %bb.de

.lr.ph176.preheader.i.i:                          ; preds = %.preheader134.i.i
  %smax287.i.i = call i32 @llvm.smax.i32(i32 %storemerge.i114.lcssa168.i.i, i32 -11)
  %.neg106.i = sub i32 %smax287.i.i, %storemerge.i114.lcssa168.i.i
  %i.lp = add i32 %.neg106.i, 11
  %i.lq = udiv i32 %i.lp, 12                      ; 2 uses
  %i.lr = xor i32 %i.lq, -1
  %i.ls = add i32 %.lcssa180189.i.i, %i.lr        ; 2 uses
  %i.lt = add nsw i32 %storemerge.i114.lcssa168.i.i, 12
  %i.lu = mul nuw i32 %i.lq, 12
  %i.lv = add i32 %i.lt, %i.lu
  store i32 %i.ls, ptr %5, align 8, !tbaa !80
  br label %bb.de

bb.de:                                            ; preds = %.lr.ph176.preheader.i.i, %.preheader134.i.i
  %.lcssa180188.i.i = phi i32 [ %i.ls, %.lr.ph176.preheader.i.i ], [ %.lcssa180189.i.i, %.preheader134.i.i ] ; 2 uses
  %.lcssa181184.i.i = phi i32 [ %i.lv, %.lr.ph176.preheader.i.i ], [ %storemerge.i114.lcssa168.i.i, %.preheader134.i.i ] ; 3 uses
  %i.lw = icmp slt i32 %.lcssa180188.i.i, 0
  br i1 %i.lw, label %bb.df, label %_time_add.exit115.i.i

bb.df:                                            ; preds = %bb.de
  store i32 0, ptr %5, align 8, !tbaa !80
  br label %_time_add.exit115.i.i

_time_add.exit115.i.i:                            ; preds = %bb.df, %bb.de
  %.lcssa180187.i.i = phi i32 [ %.lcssa180188.i.i, %bb.de ], [ 0, %bb.df ] ; 4 uses
  switch i32 %.lcssa181184.i.i, label %bb.dh [
    i32 2, label %bb.dg
    i32 1, label %_time_days_in_month.exit121.i.i
    i32 3, label %_time_days_in_month.exit121.i.i
    i32 5, label %_time_days_in_month.exit121.i.i
    i32 7, label %_time_days_in_month.exit121.i.i
    i32 8, label %_time_days_in_month.exit121.i.i
    i32 10, label %_time_days_in_month.exit121.i.i
    i32 12, label %_time_days_in_month.exit121.i.i
  ]

bb.dg:                                            ; preds = %_time_add.exit115.i.i
  %i.lx = and i32 %.lcssa180187.i.i, 3
  %i.ly = icmp eq i32 %i.lx, 0
  %i.lz = urem i32 %.lcssa180187.i.i, 100
  %.not.i117.i.i = icmp ne i32 %i.lz, 0
  %or.cond.not8.i118.i.i = and i1 %i.ly, %.not.i117.i.i
  %i.ma = urem i32 %.lcssa180187.i.i, 400
  %i.mb = icmp eq i32 %i.ma, 0
  %or.cond6.i119.i.i = or i1 %i.mb, %or.cond.not8.i118.i.i
  %spec.select.i120.i.i = select i1 %or.cond6.i119.i.i, i32 29, i32 28
  br label %_time_days_in_month.exit121.i.i

bb.dh:                                            ; preds = %_time_add.exit115.i.i
  br label %_time_days_in_month.exit121.i.i

_time_days_in_month.exit121.i.i:                  ; preds = %bb.dh, %bb.dg, %_time_add.exit115.i.i, %_time_add.exit115.i.i, %_time_add.exit115.i.i, %_time_add.exit115.i.i, %_time_add.exit115.i.i, %_time_add.exit115.i.i, %_time_add.exit115.i.i
  %.0.i116.i.i = phi i32 [ 30, %bb.dh ], [ %spec.select.i120.i.i, %bb.dg ], [ 31, %_time_add.exit115.i.i ], [ 31, %_time_add.exit115.i.i ], [ 31, %_time_add.exit115.i.i ], [ 31, %_time_add.exit115.i.i ], [ 31, %_time_add.exit115.i.i ], [ 31, %_time_add.exit115.i.i ], [ 31, %_time_add.exit115.i.i ]
  %i.mc = add nsw i32 %.0.i116.i.i, %i.ld         ; 3 uses
  %i.md = icmp slt i32 %i.mc, 1
  br i1 %i.md, label %.lr.ph182.i.i, label %thread-pre-split127.i166.thread.i

thread-pre-split127.i166.thread.i:                ; preds = %_time_days_in_month.exit121.i.i
  store i32 %.lcssa181184.i.i, ptr %i.cw, align 4, !tbaa !81
  store i32 %i.mc, ptr %i.cx, align 8, !tbaa !82
  br label %_time_add.exit.i

thread-pre-split127.i166.i:                       ; preds = %thread-pre-split122.i.i
  %i.me = icmp slt i32 %.promoted185.i.i, 0
  br i1 %i.me, label %bb.di, label %_time_add.exit.i

bb.di:                                            ; preds = %thread-pre-split127.i166.i
  store i32 0, ptr %5, align 8, !tbaa !80
  br label %_time_add.exit.i

bb.dj:                                            ; preds = %.critedge.i
  call fastcc void @_time_add(ptr noundef nonnull %5, i32 noundef 2, i32 noundef 6)
  br label %_time_add.exit.i

bb.dk:                                            ; preds = %.critedge.i
  call fastcc void @_time_add(ptr noundef nonnull %5, i32 noundef 1, i32 noundef 6)
  br label %_time_add.exit.i

bb.dl:                                            ; preds = %.critedge.i
  call fastcc void @_time_add(ptr noundef nonnull %5, i32 noundef 3, i32 noundef 8)
  br label %_time_add.exit.i

bb.dm:                                            ; preds = %.critedge.i
  call fastcc void @_time_add(ptr noundef nonnull %5, i32 noundef 1, i32 noundef 8)
  br label %_time_add.exit.i

_time_add.exit.i:                                 ; preds = %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %thread-pre-split127.i166.i, %thread-pre-split127.i166.thread.i, %bb.cw, %thread-pre-split127.i.i, %.critedge.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.mf = load i32, ptr %i.gb, align 8, !tbaa !126
  %i.mg = sext i32 %i.mf to i64
  %i.mh = icmp slt i64 %indvars.iv.next.i, %i.mg
  br i1 %i.mh, label %.lr.ph119.i, label %._crit_edge.i

bb.dn:                                            ; preds = %._crit_edge.i
  %i.mi = load i32, ptr %i.v, align 8, !tbaa !73  ; 10 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.t, align 4, !tbaa !72 ; 2 uses
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.48.0..sroa_idx.i, align 8, !tbaa !72 ; 2 uses
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.59.0..sroa_idx.i, align 4, !tbaa !72 ; 2 uses
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.610.0..sroa_idx.i, align 8, !tbaa !72 ; 3 uses
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.711.0..sroa_idx.i, align 4, !tbaa !72 ; 2 uses
  %i.mj = load i32, ptr %5, align 8, !tbaa !80    ; 4 uses
  %.not.i169.i = icmp eq i32 %.sroa.0.0.copyload.i, %i.mj
  br i1 %.not.i169.i, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.mk = sub nsw i32 %.sroa.0.0.copyload.i, %i.mj
  br label %_time_compare_at_zoom.exit180.i

bb.dp:                                            ; preds = %bb.dn
  %i.ml = load i32, ptr %i.cw, align 4, !tbaa !81 ; 2 uses
  %.not22.i171.i = icmp eq i32 %.sroa.4.0.copyload.i, %i.ml
  br i1 %.not22.i171.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.mm = sub nsw i32 %.sroa.4.0.copyload.i, %i.ml
  br label %_time_compare_at_zoom.exit180.i

bb.dr:                                            ; preds = %bb.dp
  %.not23.i172.i = icmp eq i32 %i.mi, 0
  br i1 %.not23.i172.i, label %_time_compare_at_zoom.exit180.thread.i, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.mn = load i32, ptr %i.cx, align 8, !tbaa !82 ; 2 uses
  %.not24.i173.i = icmp eq i32 %.sroa.5.0.copyload.i, %i.mn
  br i1 %.not24.i173.i, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.mo = sub nsw i32 %.sroa.5.0.copyload.i, %i.mn
  br label %_time_compare_at_zoom.exit180.i

bb.du:                                            ; preds = %bb.ds
  %i.mp = icmp ugt i32 %i.mi, 2
  br i1 %i.mp, label %bb.dv, label %_time_compare_at_zoom.exit180.thread.i

bb.dv:                                            ; preds = %bb.du
  %i.mq = sdiv i32 %.sroa.6.0.copyload.i, 2       ; 2 uses
  %i.mr = load i32, ptr %i.cz, align 4, !tbaa !83 ; 3 uses
  %i.ms = sdiv i32 %i.mr, 2                       ; 2 uses
  %.not25.i174.i = icmp eq i32 %i.mq, %i.ms
  br i1 %.not25.i174.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.mt = sub nsw i32 %i.mq, %i.ms
  br label %_time_compare_at_zoom.exit180.i

bb.dx:                                            ; preds = %bb.dv
  %.not26.i175.i = icmp eq i32 %i.mi, 3
  br i1 %.not26.i175.i, label %_time_compare_at_zoom.exit180.thread.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %.not27.i176.i = icmp eq i32 %.sroa.6.0.copyload.i, %i.mr
  br i1 %.not27.i176.i, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.mu = sub nsw i32 %.sroa.6.0.copyload.i, %i.mr
  br label %_time_compare_at_zoom.exit180.i

bb.ea:                                            ; preds = %bb.dy
  %i.mv = icmp ugt i32 %i.mi, 4
  br i1 %i.mv, label %bb.eb, label %_time_compare_at_zoom.exit180.thread.i

bb.eb:                                            ; preds = %bb.ea
  %i.mw = sdiv i32 %.sroa.7.0.copyload.i, 3       ; 2 uses
  %i.mx = load i32, ptr %i.cy, align 8, !tbaa !84 ; 2 uses
  %i.my = sdiv i32 %i.mx, 3                       ; 2 uses
  %.not28.i177.i = icmp eq i32 %i.mw, %i.my
  br i1 %.not28.i177.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.mz = sub nsw i32 %i.mw, %i.my
  br label %_time_compare_at_zoom.exit180.i

bb.ed:                                            ; preds = %bb.eb
  %.not29.i178.i = icmp eq i32 %i.mi, 5
  %i.na = sub nsw i32 %.sroa.7.0.copyload.i, %i.mx
  br i1 %.not29.i178.i, label %_time_compare_at_zoom.exit180.thread.i, label %_time_compare_at_zoom.exit180.i

_time_compare_at_zoom.exit180.i:                  ; preds = %bb.ed, %bb.ec, %bb.dz, %bb.dw, %bb.dt, %bb.dq, %bb.do
  %.0.i170.i = phi i32 [ %i.mk, %bb.do ], [ %i.mm, %bb.dq ], [ %i.mo, %bb.dt ], [ %i.mt, %bb.dw ], [ %i.mu, %bb.dz ], [ %i.mz, %bb.ec ], [ %i.na, %bb.ed ]
  %i.nb = icmp sgt i32 %.0.i170.i, -1
  br i1 %i.nb, label %_time_compare_at_zoom.exit180.thread.i, label %bb.ee

_time_compare_at_zoom.exit180.thread.i:           ; preds = %_time_compare_at_zoom.exit180.i, %bb.ed, %bb.ea, %bb.dx, %bb.du, %bb.dr
  %i.nc = getelementptr inbounds nuw i8, ptr %.val, i64 112
  %i.nd = load i32, ptr %i.nc, align 8, !tbaa !79
  %i.ne = add nsw i32 %i.nd, 1
  store i32 %i.ne, ptr %i.da, align 8, !tbaa !121
  br label %bb.ee

bb.ee:                                            ; preds = %_time_compare_at_zoom.exit180.thread.i, %_time_compare_at_zoom.exit180.i
  %.sroa.037.0.copyload.i = load i32, ptr %i.am, align 8 ; 2 uses
  %.sroa.438.0.copyload.i = load i32, ptr %.sroa.420.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.539.0.copyload.i = load i32, ptr %.sroa.521.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.640.0.copyload.i = load i32, ptr %.sroa.622.0..sroa_idx.i, align 4 ; 3 uses
  %.sroa.741.0.copyload.i = load i32, ptr %.sroa.723.0..sroa_idx.i, align 8 ; 2 uses
  %.not.i181.i = icmp eq i32 %.sroa.037.0.copyload.i, %i.mj
  br i1 %.not.i181.i, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.nf = sub nsw i32 %.sroa.037.0.copyload.i, %i.mj
  br label %_time_compare_at_zoom.exit192.i

bb.eg:                                            ; preds = %bb.ee
  %i.ng = load i32, ptr %i.cw, align 4, !tbaa !81 ; 2 uses
  %.not22.i183.i = icmp eq i32 %.sroa.438.0.copyload.i, %i.ng
  br i1 %.not22.i183.i, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.nh = sub nsw i32 %.sroa.438.0.copyload.i, %i.ng
end_hunk_0
begin_hunk_1_@_selection_stop:bb.a
  %i.r = load i32, ptr %i.q, align 4, !tbaa !83
  %.not13.i = icmp eq i32 %i.r, 0
  br i1 %.not13.i, label %bb.g, label %_time_compare.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !84
  br label %_time_compare.exit

_time_compare.exit:                               ; preds = %bb.c, %bb.e, %bb.g
  %.0.i = phi i32 [ %i.t, %bb.g ], [ %i.m, %bb.c ], [ %i.p, %bb.e ]
  %i.u = icmp eq i32 %.0.i, 0
  br i1 %i.u, label %bb.h, label %_time_compare.exit.thread

bb.h:                                             ; preds = %_time_compare.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.v, ptr noundef nonnull align 4 dereferenceable(28) %i.w, i64 28, i1 false), !tbaa.struct !77
  br label %bb.n

_time_compare.exit.thread:                        ; preds = %bb.f, %dt_action_lib.exit, %_time_compare.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 176 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.x, ptr noundef nonnull align 8 dereferenceable(28) %1, i64 28, i1 false), !tbaa.struct !77
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.z = load i32, ptr %i.y, align 8, !tbaa !73   ; 3 uses
  %i.aa = icmp ult i32 %i.z, 6
  br i1 %i.aa, label %bb.i, label %bb.n

bb.i:                                             ; preds = %_time_compare.exit.thread
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  store i32 59, ptr %i.ab, align 8, !tbaa !152
  %i.ac = icmp samesign ult i32 %i.z, 4
  br i1 %i.ac, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 188
  store i32 23, ptr %i.ad, align 4, !tbaa !153
  %i.ae = icmp samesign ult i32 %i.z, 2
  br i1 %i.ae, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 180
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !154
  switch i32 %i.ag, label %bb.m [
    i32 2, label %bb.l
    i32 1, label %_time_days_in_month.exit
    i32 3, label %_time_days_in_month.exit
    i32 5, label %_time_days_in_month.exit
    i32 7, label %_time_days_in_month.exit
    i32 8, label %_time_days_in_month.exit
    i32 10, label %_time_days_in_month.exit
    i32 12, label %_time_days_in_month.exit
  ]

bb.l:                                             ; preds = %bb.k
  %i.ah = load i32, ptr %i.x, align 8, !tbaa !155 ; 3 uses
  %i.ai = and i32 %i.ah, 3
  %i.aj = icmp eq i32 %i.ai, 0
  %i.ak = srem i32 %i.ah, 100
  %.not.i21 = icmp ne i32 %i.ak, 0
  %or.cond.not8.i = and i1 %i.aj, %.not.i21
  %i.al = srem i32 %i.ah, 400
  %i.am = icmp eq i32 %i.al, 0
  %or.cond6.i = or i1 %i.am, %or.cond.not8.i
  %spec.select.i = select i1 %or.cond6.i, i32 29, i32 28
  br label %_time_days_in_month.exit

bb.m:                                             ; preds = %bb.k
  br label %_time_days_in_month.exit

_time_days_in_month.exit:                         ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.l, %bb.m
  %.0.i20 = phi i32 [ 30, %bb.m ], [ %spec.select.i, %bb.l ], [ 31, %bb.k ], [ 31, %bb.k ], [ 31, %bb.k ], [ 31, %bb.k ], [ 31, %bb.k ], [ 31, %bb.k ], [ 31, %bb.k ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 184
  store i32 %.0.i20, ptr %i.an, align 8, !tbaa !156
  br label %bb.n

bb.n:                                             ; preds = %_time_compare.exit.thread, %bb.j, %_time_days_in_month.exit, %bb.i, %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  store i32 0, ptr %i.ao, align 8, !tbaa !139
  call fastcc void @_selection_collect(ptr noundef nonnull %i.f, i32 noundef 0)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !87
  call void @gtk_widget_queue_draw(ptr noundef %i.aq) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_cleanup(ptr nofree noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !74   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @g_list_free_full(ptr noundef nonnull %i.d, ptr noundef nonnull @_block_free) #15
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 568
  store ptr null, ptr %i.g, align 8, !tbaa !95
  tail call void @free(ptr noundef %i.e) #15
  store ptr null, ptr %i.a, align 8, !tbaa !11
  ret void
}

declare void @g_list_free_full(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @_block_free(ptr noundef captures(address_is_null) %0) #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !124
  tail call void @g_free(ptr noundef %i.a) #15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !127
  tail call void @free(ptr noundef %i.c) #15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !128
  tail call void @free(ptr noundef %i.e) #15
  tail call void @free(ptr noundef nonnull %0) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

declare i32 @sqlite3_prepare_v2(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @dt_database_get(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

declare ptr @sqlite3_errmsg(ptr noundef) local_unnamed_addr #5

declare i32 @sqlite3_step(ptr noundef) local_unnamed_addr #5

declare i32 @dt_datetime_gtimespan_to_numbers(ptr noundef, i64 noundef) local_unnamed_addr #5

declare i64 @sqlite3_column_int64(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @sqlite3_finalize(ptr noundef) local_unnamed_addr #5

declare ptr @g_list_last(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_time_add(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 {
bb.a:
  switch i32 %2, label %thread-pre-split127 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.p
    i32 5, label %bb.aa
    i32 6, label %bb.ab
    i32 8, label %bb.ac
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 4, !tbaa !80
  %i.b = add nsw i32 %i.a, %1                     ; 2 uses
  store i32 %i.b, ptr %0, align 4, !tbaa !80
  br label %bb.ad

bb.c:                                             ; preds = %bb.a
  %i.c = shl nsw i32 %1, 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !81
  %i.f = add i32 %i.e, %i.c                       ; 4 uses
  %i.g = icmp sgt i32 %i.f, 12
  br i1 %i.g, label %.lr.ph250, label %.preheader

.lr.ph250:                                        ; preds = %bb.c
  %.promoted253 = load i32, ptr %0, align 4, !tbaa !80
  %i.h = tail call i32 @llvm.usub.sat.i32(i32 %i.f, i32 24)
  %i.i = add nuw i32 %i.h, 11
  %i.j = udiv i32 %i.i, 12                        ; 2 uses
  %i.k = add i32 %.promoted253, %i.j
  %i.l = add i32 %i.k, 1
  %i.m = add nsw i32 %i.f, -12
  %.neg320 = mul nsw i32 %i.j, -12
  %i.n = add nsw i32 %.neg320, %i.m
  store i32 %i.l, ptr %0, align 4, !tbaa !80
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph250, %bb.c
  %storemerge85.lcssa247 = phi i32 [ %i.n, %.lr.ph250 ], [ %i.f, %bb.c ] ; 5 uses
  store i32 %storemerge85.lcssa247, ptr %i.d, align 4, !tbaa !81
  %i.o = icmp slt i32 %storemerge85.lcssa247, 1
  br i1 %i.o, label %.lr.ph255, label %thread-pre-split127

.lr.ph255:                                        ; preds = %.preheader
  %.promoted256 = load i32, ptr %0, align 4, !tbaa !80
  %smax299 = tail call i32 @llvm.smax.i32(i32 %storemerge85.lcssa247, i32 -11)
  %i.p = add nsw i32 %smax299, 11
  %i.q = sub i32 %i.p, %storemerge85.lcssa247
  %i.r = udiv i32 %i.q, 12                        ; 2 uses
  %i.s = xor i32 %i.r, -1
  %i.t = add i32 %.promoted256, %i.s
  %i.u = mul nuw i32 %i.r, 12
  %i.v = add i32 %storemerge85.lcssa247, %i.u
  %i.w = add i32 %i.v, 12
  store i32 %i.t, ptr %0, align 4, !tbaa !80
  store i32 %i.w, ptr %i.d, align 4, !tbaa !81
  br label %thread-pre-split127

bb.d:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !81
  %i.z = add i32 %i.y, %1                         ; 4 uses
  %i.aa = icmp sgt i32 %i.z, 12
  br i1 %i.aa, label %.lr.ph238, label %.preheader129

.lr.ph238:                                        ; preds = %bb.d
  %.promoted241 = load i32, ptr %0, align 4, !tbaa !80
  %i.ab = tail call i32 @llvm.usub.sat.i32(i32 %i.z, i32 24)
  %i.ac = add nuw i32 %i.ab, 11
  %i.ad = udiv i32 %i.ac, 12                      ; 2 uses
  %i.ae = add i32 %.promoted241, %i.ad
  %i.af = add i32 %i.ae, 1
  %i.ag = add nsw i32 %i.z, -12
  %.neg319 = mul nsw i32 %i.ad, -12
  %i.ah = add nsw i32 %.neg319, %i.ag
  store i32 %i.af, ptr %0, align 4, !tbaa !80
  br label %.preheader129

.preheader129:                                    ; preds = %.lr.ph238, %bb.d
  %storemerge.lcssa235 = phi i32 [ %i.ah, %.lr.ph238 ], [ %i.z, %bb.d ] ; 5 uses
  store i32 %storemerge.lcssa235, ptr %i.x, align 4, !tbaa !81
  %i.ai = icmp slt i32 %storemerge.lcssa235, 1
  br i1 %i.ai, label %.lr.ph243, label %thread-pre-split127

.lr.ph243:                                        ; preds = %.preheader129
  %.promoted244 = load i32, ptr %0, align 4, !tbaa !80
  %smax296 = tail call i32 @llvm.smax.i32(i32 %storemerge.lcssa235, i32 -11)
  %i.aj = add nsw i32 %smax296, 11
  %i.ak = sub i32 %i.aj, %storemerge.lcssa235
  %i.al = udiv i32 %i.ak, 12                      ; 2 uses
  %i.am = xor i32 %i.al, -1
  %i.an = add i32 %.promoted244, %i.am
  %i.ao = mul nuw i32 %i.al, 12
  %i.ap = add i32 %storemerge.lcssa235, %i.ao
  %i.aq = add i32 %i.ap, 12
  store i32 %i.an, ptr %0, align 4, !tbaa !80
  store i32 %i.aq, ptr %i.x, align 4, !tbaa !81
  br label %thread-pre-split127

bb.e:                                             ; preds = %bb.a
  %i.ar = mul nsw i32 %1, 10
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !82
  %i.au = add nsw i32 %i.at, %i.ar                ; 2 uses
  store i32 %i.au, ptr %i.as, align 4, !tbaa !82
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %.promoted204 = load i32, ptr %0, align 4, !tbaa !80
  %.promoted209 = load i32, ptr %i.av, align 4, !tbaa !81
  br label %_time_add.exit

_time_add.exit:                                   ; preds = %_time_add.exit.backedge, %bb.e
  %.lcssa143.promoted = phi i32 [ %.promoted209, %bb.e ], [ %.lcssa202211, %_time_add.exit.backedge ] ; 8 uses
  %.promoted229 = phi i32 [ %.promoted204, %bb.e ], [ %.promoted229.be, %_time_add.exit.backedge ] ; 10 uses
  %.pr = phi i32 [ %i.au, %bb.e ], [ %i.cc, %_time_add.exit.backedge ] ; 5 uses
  switch i32 %.lcssa143.promoted, label %bb.g [
    i32 2, label %bb.f
    i32 1, label %_time_days_in_month.exit
    i32 3, label %_time_days_in_month.exit
    i32 5, label %_time_days_in_month.exit
    i32 7, label %_time_days_in_month.exit
    i32 8, label %_time_days_in_month.exit
    i32 10, label %_time_days_in_month.exit
    i32 12, label %_time_days_in_month.exit
  ]

bb.f:                                             ; preds = %_time_add.exit
  %i.aw = and i32 %.promoted229, 3
  %i.ax = icmp eq i32 %i.aw, 0
  %i.ay = srem i32 %.promoted229, 100
  %.not.i = icmp ne i32 %i.ay, 0
  %or.cond.not8.i = and i1 %i.ax, %.not.i
  %i.az = srem i32 %.promoted229, 400
  %i.ba = icmp eq i32 %i.az, 0
  %or.cond6.i = or i1 %i.ba, %or.cond.not8.i
  %spec.select.i = select i1 %or.cond6.i, i32 29, i32 28
  br label %_time_days_in_month.exit

bb.g:                                             ; preds = %_time_add.exit
  br label %_time_days_in_month.exit

_time_days_in_month.exit:                         ; preds = %_time_add.exit, %_time_add.exit, %_time_add.exit, %_time_add.exit, %_time_add.exit, %_time_add.exit, %_time_add.exit, %bb.f, %bb.g
  %.0.i = phi i32 [ 30, %bb.g ], [ %spec.select.i, %bb.f ], [ 31, %_time_add.exit ], [ 31, %_time_add.exit ], [ 31, %_time_add.exit ], [ 31, %_time_add.exit ], [ 31, %_time_add.exit ], [ 31, %_time_add.exit ], [ 31, %_time_add.exit ]
  %i.bb = icmp sgt i32 %.pr, %.0.i
  br i1 %i.bb, label %bb.h, label %thread-pre-split

bb.h:                                             ; preds = %_time_days_in_month.exit
  switch i32 %.lcssa143.promoted, label %bb.i [
    i32 2, label %.preheader133.thread
    i32 1, label %_time_days_in_month.exit91
    i32 3, label %_time_days_in_month.exit91
    i32 5, label %_time_days_in_month.exit91
    i32 7, label %_time_days_in_month.exit91
    i32 8, label %_time_days_in_month.exit91
    i32 10, label %_time_days_in_month.exit91
    i32 12, label %_time_days_in_month.exit91
  ]

.preheader133.thread:                             ; preds = %bb.h
  %i.bc = and i32 %.promoted229, 3
  %i.bd = icmp eq i32 %i.bc, 0
  %i.be = srem i32 %.promoted229, 100
  %.not.i87 = icmp ne i32 %i.be, 0
  %or.cond.not8.i88 = and i1 %i.bd, %.not.i87
  %i.bf = srem i32 %.promoted229, 400
  %i.bg = icmp eq i32 %i.bf, 0
  %or.cond6.i89 = or i1 %i.bg, %or.cond.not8.i88
  %spec.select.i90.neg = select i1 %or.cond6.i89, i32 -29, i32 -28
  %i.bh = add nsw i32 %spec.select.i90.neg, %.pr  ; 2 uses
  store i32 %i.bh, ptr %i.as, align 4, !tbaa !82
  %i.bi = add nuw nsw i32 %.lcssa143.promoted, 1
  br label %.sink.split

bb.i:                                             ; preds = %bb.h
  br label %_time_days_in_month.exit91

_time_days_in_month.exit91:                       ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.i
  %.0.i86.neg = phi i32 [ -30, %bb.i ], [ -31, %bb.h ], [ -31, %bb.h ], [ -31, %bb.h ], [ -31, %bb.h ], [ -31, %bb.h ], [ -31, %bb.h ], [ -31, %bb.h ]
  %i.bj = add nsw i32 %.0.i86.neg, %.pr           ; 3 uses
  store i32 %i.bj, ptr %i.as, align 4, !tbaa !82
  %i.bk = add i32 %.lcssa143.promoted, 1          ; 2 uses
  %i.bl = icmp sgt i32 %.lcssa143.promoted, 11
  br i1 %i.bl, label %.lr.ph193.preheader, label %.preheader133

.lr.ph193.preheader:                              ; preds = %_time_days_in_month.exit91
  %i.bm = add i32 %.promoted229, 1
  %i.bn = add nuw i32 %.lcssa143.promoted, 12
  %smin289 = tail call i32 @llvm.smin.i32(i32 %i.bk, i32 24)
  %i.bo = sub i32 %i.bn, %smin289
  %i.bp = udiv i32 %i.bo, 12                      ; 2 uses
  %i.bq = add i32 %i.bm, %i.bp                    ; 2 uses
  %i.br = add nsw i32 %.lcssa143.promoted, -11
  %.neg318 = mul i32 %i.bp, -12
  %i.bs = add i32 %.neg318, %i.br
  store i32 %i.bq, ptr %0, align 4, !tbaa !80
  br label %.preheader133

.preheader133:                                    ; preds = %.lr.ph193.preheader, %_time_days_in_month.exit91
  %.lcssa201208 = phi i32 [ %i.bq, %.lr.ph193.preheader ], [ %.promoted229, %_time_days_in_month.exit91 ] ; 2 uses
  %storemerge.i.lcssa191 = phi i32 [ %i.bs, %.lr.ph193.preheader ], [ %i.bk, %_time_days_in_month.exit91 ] ; 6 uses
  store i32 %storemerge.i.lcssa191, ptr %i.av, align 4, !tbaa !81
  %i.bt = icmp slt i32 %storemerge.i.lcssa191, 1
  br i1 %i.bt, label %.lr.ph198.preheader, label %bb.j

.lr.ph198.preheader:                              ; preds = %.preheader133
  %smax290 = tail call i32 @llvm.smax.i32(i32 %storemerge.i.lcssa191, i32 -11)
  %i.bu = add nsw i32 %smax290, 11
  %i.bv = sub i32 %i.bu, %storemerge.i.lcssa191
  %i.bw = udiv i32 %i.bv, 12                      ; 2 uses
  %i.bx = xor i32 %i.bw, -1
  %i.by = add i32 %.lcssa201208, %i.bx            ; 2 uses
  %i.bz = add nsw i32 %storemerge.i.lcssa191, 12
  %i.ca = mul nuw i32 %i.bw, 12
  %i.cb = add i32 %i.bz, %i.ca                    ; 2 uses
  store i32 %i.by, ptr %0, align 4, !tbaa !80
  br label %.sink.split

.sink.split:                                      ; preds = %.lr.ph198.preheader, %.preheader133.thread
  %.sink = phi i32 [ %i.bi, %.preheader133.thread ], [ %i.cb, %.lr.ph198.preheader ]
  %.ph = phi i32 [ %i.bh, %.preheader133.thread ], [ %i.bj, %.lr.ph198.preheader ]
  %.lcssa202211.ph = phi i32 [ 3, %.preheader133.thread ], [ %i.cb, %.lr.ph198.preheader ]
  %.lcssa201207.ph = phi i32 [ %.promoted229, %.preheader133.thread ], [ %i.by, %.lr.ph198.preheader ]
  store i32 %.sink, ptr %i.av, align 4, !tbaa !81
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %.preheader133
  %i.cc = phi i32 [ %i.bj, %.preheader133 ], [ %.ph, %.sink.split ]
  %.lcssa202211 = phi i32 [ %storemerge.i.lcssa191, %.preheader133 ], [ %.lcssa202211.ph, %.sink.split ]
  %.lcssa201207 = phi i32 [ %.lcssa201208, %.preheader133 ], [ %.lcssa201207.ph, %.sink.split ] ; 2 uses
  %i.cd = icmp slt i32 %.lcssa201207, 0
  br i1 %i.cd, label %bb.k, label %_time_add.exit.backedge

_time_add.exit.backedge:                          ; preds = %bb.j, %bb.k
  %.promoted229.be = phi i32 [ %.lcssa201207, %bb.j ], [ 0, %bb.k ]
  br label %_time_add.exit

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %0, align 4, !tbaa !80
  br label %_time_add.exit.backedge

thread-pre-split:                                 ; preds = %_time_days_in_month.exit
  %i.ce = icmp slt i32 %.pr, 1
  br i1 %i.ce, label %.lr.ph226, label %thread-pre-split127

.lr.ph226:                                        ; preds = %thread-pre-split, %_time_days_in_month.exit99
  %.lcssa224230 = phi i32 [ %.lcssa224231, %_time_days_in_month.exit99 ], [ %.promoted229, %thread-pre-split ] ; 2 uses
  %.lcssa225227 = phi i32 [ %.lcssa225228, %_time_days_in_month.exit99 ], [ %.lcssa143.promoted, %thread-pre-split ] ; 4 uses
  %i.cf = phi i32 [ %i.df, %_time_days_in_month.exit99 ], [ %.pr, %thread-pre-split ]
  %i.cg = add i32 %.lcssa225227, -1               ; 2 uses
  %i.ch = icmp sgt i32 %.lcssa225227, 13
  br i1 %i.ch, label %.lr.ph215.preheader, label %.preheader131

.lr.ph215.preheader:                              ; preds = %.lr.ph226
  %i.ci = add i32 %.lcssa224230, 1
  %i.cj = add nuw i32 %.lcssa225227, 10
  %i.ck = tail call i32 @llvm.umin.i32(i32 %i.cg, i32 24)
  %i.cl = sub nuw i32 %i.cj, %i.ck
  %i.cm = udiv i32 %i.cl, 12                      ; 2 uses
  %i.cn = add i32 %i.ci, %i.cm                    ; 2 uses
  %i.co = add nsw i32 %.lcssa225227, -13
  %.neg317 = mul nsw i32 %i.cm, -12
  %i.cp = add nsw i32 %.neg317, %i.co
  store i32 %i.cn, ptr %0, align 4, !tbaa !80
  br label %.preheader131

.preheader131:                                    ; preds = %.lr.ph215.preheader, %.lr.ph226
  %.lcssa224233 = phi i32 [ %i.cn, %.lr.ph215.preheader ], [ %.lcssa224230, %.lr.ph226 ] ; 2 uses
  %storemerge.i92.lcssa212 = phi i32 [ %i.cp, %.lr.ph215.preheader ], [ %i.cg, %.lr.ph226 ] ; 5 uses
  %i.cq = icmp slt i32 %storemerge.i92.lcssa212, 1
  br i1 %i.cq, label %.lr.ph220.preheader, label %bb.l

.lr.ph220.preheader:                              ; preds = %.preheader131
  %smax293 = tail call i32 @llvm.smax.i32(i32 %storemerge.i92.lcssa212, i32 -11)
  %i.cr = add nsw i32 %smax293, 11
  %i.cs = sub i32 %i.cr, %storemerge.i92.lcssa212
  %i.ct = udiv i32 %i.cs, 12                      ; 2 uses
  %i.cu = xor i32 %i.ct, -1
  %i.cv = add i32 %.lcssa224233, %i.cu            ; 2 uses
  %i.cw = add nsw i32 %storemerge.i92.lcssa212, 12
  %i.cx = mul nuw i32 %i.ct, 12
  %i.cy = add i32 %i.cw, %i.cx
  store i32 %i.cv, ptr %0, align 4, !tbaa !80
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph220.preheader, %.preheader131
  %.lcssa224232 = phi i32 [ %i.cv, %.lr.ph220.preheader ], [ %.lcssa224233, %.preheader131 ] ; 2 uses
  %.lcssa225228 = phi i32 [ %i.cy, %.lr.ph220.preheader ], [ %storemerge.i92.lcssa212, %.preheader131 ] ; 3 uses
  %i.cz = icmp slt i32 %.lcssa224232, 0
  br i1 %i.cz, label %bb.m, label %_time_add.exit93

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %0, align 4, !tbaa !80
  br label %_time_add.exit93

_time_add.exit93:                                 ; preds = %bb.l, %bb.m
  %.lcssa224231 = phi i32 [ %.lcssa224232, %bb.l ], [ 0, %bb.m ] ; 4 uses
  switch i32 %.lcssa225228, label %bb.o [
    i32 2, label %bb.n
    i32 1, label %_time_days_in_month.exit99
    i32 3, label %_time_days_in_month.exit99
    i32 5, label %_time_days_in_month.exit99
    i32 7, label %_time_days_in_month.exit99
    i32 8, label %_time_days_in_month.exit99
    i32 10, label %_time_days_in_month.exit99
    i32 12, label %_time_days_in_month.exit99
  ]

bb.n:                                             ; preds = %_time_add.exit93
  %i.da = and i32 %.lcssa224231, 3
  %i.db = icmp eq i32 %i.da, 0
  %i.dc = urem i32 %.lcssa224231, 100
  %.not.i95 = icmp ne i32 %i.dc, 0
  %or.cond.not8.i96 = and i1 %i.db, %.not.i95
  %i.dd = urem i32 %.lcssa224231, 400
  %i.de = icmp eq i32 %i.dd, 0
  %or.cond6.i97 = or i1 %i.de, %or.cond.not8.i96
  %spec.select.i98 = select i1 %or.cond6.i97, i32 29, i32 28
  br label %_time_days_in_month.exit99

bb.o:                                             ; preds = %_time_add.exit93
  br label %_time_days_in_month.exit99

_time_days_in_month.exit99:                       ; preds = %_time_add.exit93, %_time_add.exit93, %_time_add.exit93, %_time_add.exit93, %_time_add.exit93, %_time_add.exit93, %_time_add.exit93, %bb.n, %bb.o
  %.0.i94 = phi i32 [ 30, %bb.o ], [ %spec.select.i98, %bb.n ], [ 31, %_time_add.exit93 ], [ 31, %_time_add.exit93 ], [ 31, %_time_add.exit93 ], [ 31, %_time_add.exit93 ], [ 31, %_time_add.exit93 ], [ 31, %_time_add.exit93 ], [ 31, %_time_add.exit93 ]
  %i.df = add nsw i32 %.0.i94, %i.cf              ; 3 uses
  %i.dg = icmp slt i32 %i.df, 1
  br i1 %i.dg, label %.lr.ph226, label %.thread-pre-split127.loopexit132_crit_edge

bb.p:                                             ; preds = %bb.a
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !82
  %i.dj = add nsw i32 %i.di, %1                   ; 2 uses
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !82
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %.promoted161 = load i32, ptr %0, align 4, !tbaa !80
  %.promoted = load i32, ptr %i.dk, align 4, !tbaa !81
  br label %_time_add.exit113

_time_add.exit113:                                ; preds = %_time_add.exit113.backedge, %bb.p
  %.lcssa145.promoted = phi i32 [ %.promoted, %bb.p ], [ %.lcssa159167, %_time_add.exit113.backedge ] ; 8 uses
  %.promoted185 = phi i32 [ %.promoted161, %bb.p ], [ %.promoted185.be, %_time_add.exit113.backedge ] ; 10 uses
  %.pr123 = phi i32 [ %i.dj, %bb.p ], [ %i.er, %_time_add.exit113.backedge ] ; 5 uses
  switch i32 %.lcssa145.promoted, label %bb.r [
    i32 2, label %bb.q
    i32 1, label %_time_days_in_month.exit105
    i32 3, label %_time_days_in_month.exit105
    i32 5, label %_time_days_in_month.exit105
    i32 7, label %_time_days_in_month.exit105
    i32 8, label %_time_days_in_month.exit105
    i32 10, label %_time_days_in_month.exit105
    i32 12, label %_time_days_in_month.exit105
  ]

bb.q:                                             ; preds = %_time_add.exit113
  %i.dl = and i32 %.promoted185, 3
  %i.dm = icmp eq i32 %i.dl, 0
  %i.dn = srem i32 %.promoted185, 100
  %.not.i101 = icmp ne i32 %i.dn, 0
  %or.cond.not8.i102 = and i1 %i.dm, %.not.i101
  %i.do = srem i32 %.promoted185, 400
  %i.dp = icmp eq i32 %i.do, 0
  %or.cond6.i103 = or i1 %i.dp, %or.cond.not8.i102
  %spec.select.i104 = select i1 %or.cond6.i103, i32 29, i32 28
  br label %_time_days_in_month.exit105

bb.r:                                             ; preds = %_time_add.exit113
  br label %_time_days_in_month.exit105

_time_days_in_month.exit105:                      ; preds = %_time_add.exit113, %_time_add.exit113, %_time_add.exit113, %_time_add.exit113, %_time_add.exit113, %_time_add.exit113, %_time_add.exit113, %bb.q, %bb.r
  %.0.i100 = phi i32 [ 30, %bb.r ], [ %spec.select.i104, %bb.q ], [ 31, %_time_add.exit113 ], [ 31, %_time_add.exit113 ], [ 31, %_time_add.exit113 ], [ 31, %_time_add.exit113 ], [ 31, %_time_add.exit113 ], [ 31, %_time_add.exit113 ], [ 31, %_time_add.exit113 ]
  %i.dq = icmp sgt i32 %.pr123, %.0.i100
  br i1 %i.dq, label %bb.s, label %thread-pre-split122

bb.s:                                             ; preds = %_time_days_in_month.exit105
  switch i32 %.lcssa145.promoted, label %bb.t [
    i32 2, label %.preheader136.thread
    i32 1, label %_time_days_in_month.exit111
    i32 3, label %_time_days_in_month.exit111
    i32 5, label %_time_days_in_month.exit111
    i32 7, label %_time_days_in_month.exit111
    i32 8, label %_time_days_in_month.exit111
    i32 10, label %_time_days_in_month.exit111
    i32 12, label %_time_days_in_month.exit111
  ]

.preheader136.thread:                             ; preds = %bb.s
  %i.dr = and i32 %.promoted185, 3
  %i.ds = icmp eq i32 %i.dr, 0
  %i.dt = srem i32 %.promoted185, 100
  %.not.i107 = icmp ne i32 %i.dt, 0
  %or.cond.not8.i108 = and i1 %i.ds, %.not.i107
  %i.du = srem i32 %.promoted185, 400
  %i.dv = icmp eq i32 %i.du, 0
  %or.cond6.i109 = or i1 %i.dv, %or.cond.not8.i108
  %spec.select.i110.neg = select i1 %or.cond6.i109, i32 -29, i32 -28
  %i.dw = add nsw i32 %spec.select.i110.neg, %.pr123 ; 2 uses
  store i32 %i.dw, ptr %i.dh, align 4, !tbaa !82
  %i.dx = add nuw nsw i32 %.lcssa145.promoted, 1
  br label %.sink.split330

bb.t:                                             ; preds = %bb.s
  br label %_time_days_in_month.exit111

_time_days_in_month.exit111:                      ; preds = %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.t
  %.0.i106.neg = phi i32 [ -30, %bb.t ], [ -31, %bb.s ], [ -31, %bb.s ], [ -31, %bb.s ], [ -31, %bb.s ], [ -31, %bb.s ], [ -31, %bb.s ], [ -31, %bb.s ]
  %i.dy = add nsw i32 %.0.i106.neg, %.pr123       ; 3 uses
  store i32 %i.dy, ptr %i.dh, align 4, !tbaa !82
  %i.dz = add i32 %.lcssa145.promoted, 1          ; 2 uses
  %i.ea = icmp sgt i32 %.lcssa145.promoted, 11
  br i1 %i.ea, label %.lr.ph153.preheader, label %.preheader136

.lr.ph153.preheader:                              ; preds = %_time_days_in_month.exit111
  %i.eb = add i32 %.promoted185, 1
  %i.ec = add nuw i32 %.lcssa145.promoted, 12
  %smin = tail call i32 @llvm.smin.i32(i32 %i.dz, i32 24)
  %i.ed = sub i32 %i.ec, %smin
  %i.ee = udiv i32 %i.ed, 12                      ; 2 uses
  %i.ef = add i32 %i.eb, %i.ee                    ; 2 uses
  %i.eg = add nsw i32 %.lcssa145.promoted, -11
  %.neg316 = mul i32 %i.ee, -12
  %i.eh = add i32 %.neg316, %i.eg
  store i32 %i.ef, ptr %0, align 4, !tbaa !80
  br label %.preheader136

.preheader136:                                    ; preds = %.lr.ph153.preheader, %_time_days_in_month.exit111
  %.lcssa158165 = phi i32 [ %i.ef, %.lr.ph153.preheader ], [ %.promoted185, %_time_days_in_month.exit111 ] ; 2 uses
  %storemerge.i112.lcssa151 = phi i32 [ %i.eh, %.lr.ph153.preheader ], [ %i.dz, %_time_days_in_month.exit111 ] ; 6 uses
  store i32 %storemerge.i112.lcssa151, ptr %i.dk, align 4, !tbaa !81
  %i.ei = icmp slt i32 %storemerge.i112.lcssa151, 1
  br i1 %i.ei, label %.lr.ph156.preheader, label %bb.u

.lr.ph156.preheader:                              ; preds = %.preheader136
  %smax = tail call i32 @llvm.smax.i32(i32 %storemerge.i112.lcssa151, i32 -11)
  %i.ej = add nsw i32 %smax, 11
  %i.ek = sub i32 %i.ej, %storemerge.i112.lcssa151
  %i.el = udiv i32 %i.ek, 12                      ; 2 uses
  %i.em = xor i32 %i.el, -1
  %i.en = add i32 %.lcssa158165, %i.em            ; 2 uses
  %i.eo = add nsw i32 %storemerge.i112.lcssa151, 12
  %i.ep = mul nuw i32 %i.el, 12
  %i.eq = add i32 %i.eo, %i.ep                    ; 2 uses
  store i32 %i.en, ptr %0, align 4, !tbaa !80
  br label %.sink.split330

.sink.split330:                                   ; preds = %.lr.ph156.preheader, %.preheader136.thread
  %.sink332 = phi i32 [ %i.dx, %.preheader136.thread ], [ %i.eq, %.lr.ph156.preheader ]
  %.ph331 = phi i32 [ %i.dw, %.preheader136.thread ], [ %i.dy, %.lr.ph156.preheader ]
  %.lcssa159167.ph = phi i32 [ 3, %.preheader136.thread ], [ %i.eq, %.lr.ph156.preheader ]
  %.lcssa158164.ph = phi i32 [ %.promoted185, %.preheader136.thread ], [ %i.en, %.lr.ph156.preheader ]
  store i32 %.sink332, ptr %i.dk, align 4, !tbaa !81
  br label %bb.u

bb.u:                                             ; preds = %.sink.split330, %.preheader136
  %i.er = phi i32 [ %i.dy, %.preheader136 ], [ %.ph331, %.sink.split330 ]
  %.lcssa159167 = phi i32 [ %storemerge.i112.lcssa151, %.preheader136 ], [ %.lcssa159167.ph, %.sink.split330 ]
  %.lcssa158164 = phi i32 [ %.lcssa158165, %.preheader136 ], [ %.lcssa158164.ph, %.sink.split330 ] ; 2 uses
  %i.es = icmp slt i32 %.lcssa158164, 0
  br i1 %i.es, label %bb.v, label %_time_add.exit113.backedge

_time_add.exit113.backedge:                       ; preds = %bb.u, %bb.v
  %.promoted185.be = phi i32 [ %.lcssa158164, %bb.u ], [ 0, %bb.v ]
  br label %_time_add.exit113

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %0, align 4, !tbaa !80
  br label %_time_add.exit113.backedge

thread-pre-split122:                              ; preds = %_time_days_in_month.exit105
  %i.et = icmp slt i32 %.pr123, 1
  br i1 %i.et, label %.lr.ph182, label %thread-pre-split127

.lr.ph182:                                        ; preds = %thread-pre-split122, %_time_days_in_month.exit121
  %.lcssa180186 = phi i32 [ %.lcssa180187, %_time_days_in_month.exit121 ], [ %.promoted185, %thread-pre-split122 ] ; 2 uses
  %.lcssa181183 = phi i32 [ %.lcssa181184, %_time_days_in_month.exit121 ], [ %.lcssa145.promoted, %thread-pre-split122 ] ; 4 uses
  %i.eu = phi i32 [ %i.fu, %_time_days_in_month.exit121 ], [ %.pr123, %thread-pre-split122 ]
  %i.ev = add i32 %.lcssa181183, -1               ; 2 uses
  %i.ew = icmp sgt i32 %.lcssa181183, 13
  br i1 %i.ew, label %.lr.ph171.preheader, label %.preheader134

.lr.ph171.preheader:                              ; preds = %.lr.ph182
  %i.ex = add i32 %.lcssa180186, 1
  %i.ey = add nuw i32 %.lcssa181183, 10
  %i.ez = tail call i32 @llvm.umin.i32(i32 %i.ev, i32 24)
  %i.fa = sub nuw i32 %i.ey, %i.ez
  %i.fb = udiv i32 %i.fa, 12                      ; 2 uses
  %i.fc = add i32 %i.ex, %i.fb                    ; 2 uses
  %i.fd = add nsw i32 %.lcssa181183, -13
  %.neg = mul nsw i32 %i.fb, -12
  %i.fe = add nsw i32 %.neg, %i.fd
  store i32 %i.fc, ptr %0, align 4, !tbaa !80
  br label %.preheader134

.preheader134:                                    ; preds = %.lr.ph171.preheader, %.lr.ph182
  %.lcssa180189 = phi i32 [ %i.fc, %.lr.ph171.preheader ], [ %.lcssa180186, %.lr.ph182 ] ; 2 uses
  %storemerge.i114.lcssa168 = phi i32 [ %i.fe, %.lr.ph171.preheader ], [ %i.ev, %.lr.ph182 ] ; 5 uses
  %i.ff = icmp slt i32 %storemerge.i114.lcssa168, 1
  br i1 %i.ff, label %.lr.ph176.preheader, label %bb.w

.lr.ph176.preheader:                              ; preds = %.preheader134
  %smax287 = tail call i32 @llvm.smax.i32(i32 %storemerge.i114.lcssa168, i32 -11)
  %i.fg = add nsw i32 %smax287, 11
  %i.fh = sub i32 %i.fg, %storemerge.i114.lcssa168
  %i.fi = udiv i32 %i.fh, 12                      ; 2 uses
  %i.fj = xor i32 %i.fi, -1
  %i.fk = add i32 %.lcssa180189, %i.fj            ; 2 uses
  %i.fl = add nsw i32 %storemerge.i114.lcssa168, 12
  %i.fm = mul nuw i32 %i.fi, 12
  %i.fn = add i32 %i.fl, %i.fm
  store i32 %i.fk, ptr %0, align 4, !tbaa !80
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph176.preheader, %.preheader134
  %.lcssa180188 = phi i32 [ %i.fk, %.lr.ph176.preheader ], [ %.lcssa180189, %.preheader134 ] ; 2 uses
  %.lcssa181184 = phi i32 [ %i.fn, %.lr.ph176.preheader ], [ %storemerge.i114.lcssa168, %.preheader134 ] ; 3 uses
  %i.fo = icmp slt i32 %.lcssa180188, 0
  br i1 %i.fo, label %bb.x, label %_time_add.exit115

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %0, align 4, !tbaa !80
  br label %_time_add.exit115

_time_add.exit115:                                ; preds = %bb.w, %bb.x
  %.lcssa180187 = phi i32 [ %.lcssa180188, %bb.w ], [ 0, %bb.x ] ; 4 uses
  switch i32 %.lcssa181184, label %bb.z [
    i32 2, label %bb.y
    i32 1, label %_time_days_in_month.exit121
    i32 3, label %_time_days_in_month.exit121
    i32 5, label %_time_days_in_month.exit121
    i32 7, label %_time_days_in_month.exit121
    i32 8, label %_time_days_in_month.exit121
    i32 10, label %_time_days_in_month.exit121
    i32 12, label %_time_days_in_month.exit121
  ]

bb.y:                                             ; preds = %_time_add.exit115
  %i.fp = and i32 %.lcssa180187, 3
  %i.fq = icmp eq i32 %i.fp, 0
  %i.fr = urem i32 %.lcssa180187, 100
  %.not.i117 = icmp ne i32 %i.fr, 0
  %or.cond.not8.i118 = and i1 %i.fq, %.not.i117
  %i.fs = urem i32 %.lcssa180187, 400
  %i.ft = icmp eq i32 %i.fs, 0
  %or.cond6.i119 = or i1 %i.ft, %or.cond.not8.i118
  %spec.select.i120 = select i1 %or.cond6.i119, i32 29, i32 28
  br label %_time_days_in_month.exit121

bb.z:                                             ; preds = %_time_add.exit115
  br label %_time_days_in_month.exit121

_time_days_in_month.exit121:                      ; preds = %_time_add.exit115, %_time_add.exit115, %_time_add.exit115, %_time_add.exit115, %_time_add.exit115, %_time_add.exit115, %_time_add.exit115, %bb.y, %bb.z
  %.0.i116 = phi i32 [ 30, %bb.z ], [ %spec.select.i120, %bb.y ], [ 31, %_time_add.exit115 ], [ 31, %_time_add.exit115 ], [ 31, %_time_add.exit115 ], [ 31, %_time_add.exit115 ], [ 31, %_time_add.exit115 ], [ 31, %_time_add.exit115 ], [ 31, %_time_add.exit115 ]
  %i.fu = add nsw i32 %.0.i116, %i.eu             ; 3 uses
  %i.fv = icmp slt i32 %i.fu, 1
  br i1 %i.fv, label %.lr.ph182, label %.thread-pre-split127.loopexit135_crit_edge

bb.aa:                                            ; preds = %bb.a
  %i.fw = mul nsw i32 %1, 6
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 6 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !83
  %i.fz = add nsw i32 %i.fy, %i.fw                ; 4 uses
  store i32 %i.fz, ptr %i.fx, align 4, !tbaa !83
  %i.ga = icmp sgt i32 %i.fz, 23
  br i1 %i.ga, label %.lr.ph149, label %.preheader137

.preheader137:                                    ; preds = %.lr.ph149, %bb.aa
  %i.gb = phi i32 [ %i.fz, %bb.aa ], [ %.pr124, %.lr.ph149 ] ; 2 uses
  %i.gc = icmp slt i32 %i.gb, 0
  br i1 %i.gc, label %.lr.ph150, label %thread-pre-split127

.lr.ph149:                                        ; preds = %bb.aa, %.lr.ph149
  %i.gd = phi i32 [ %.pr124, %.lr.ph149 ], [ %i.fz, %bb.aa ]
  %i.ge = add nsw i32 %i.gd, -24
  store i32 %i.ge, ptr %i.fx, align 4, !tbaa !83
  tail call fastcc void @_time_add(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 4)
  %.pr124 = load i32, ptr %i.fx, align 4, !tbaa !83 ; 3 uses
  %i.gf = icmp sgt i32 %.pr124, 23
  br i1 %i.gf, label %.lr.ph149, label %.preheader137

.lr.ph150:                                        ; preds = %.preheader137, %.lr.ph150
  %i.gg = phi i32 [ %i.gi, %.lr.ph150 ], [ %i.gb, %.preheader137 ]
  %i.gh = add nsw i32 %i.gg, 24
  store i32 %i.gh, ptr %i.fx, align 4, !tbaa !83
  tail call fastcc void @_time_add(ptr noundef nonnull %0, i32 noundef -1, i32 noundef 4)
  %i.gi = load i32, ptr %i.fx, align 4, !tbaa !83 ; 2 uses
  %i.gj = icmp slt i32 %i.gi, 0
  br i1 %i.gj, label %.lr.ph150, label %thread-pre-split127

bb.ab:                                            ; preds = %bb.a
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 6 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !83
  %i.gm = add nsw i32 %i.gl, %1                   ; 4 uses
  store i32 %i.gm, ptr %i.gk, align 4, !tbaa !83
  %i.gn = icmp sgt i32 %i.gm, 23
  br i1 %i.gn, label %.lr.ph147, label %.preheader139

.preheader139:                                    ; preds = %.lr.ph147, %bb.ab
  %i.go = phi i32 [ %i.gm, %bb.ab ], [ %.pr125, %.lr.ph147 ] ; 2 uses
  %i.gp = icmp slt i32 %i.go, 0
  br i1 %i.gp, label %.lr.ph148, label %thread-pre-split127

.lr.ph147:                                        ; preds = %bb.ab, %.lr.ph147
  %i.gq = phi i32 [ %.pr125, %.lr.ph147 ], [ %i.gm, %bb.ab ]
  %i.gr = add nsw i32 %i.gq, -24
  store i32 %i.gr, ptr %i.gk, align 4, !tbaa !83
  tail call fastcc void @_time_add(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 4)
  %.pr125 = load i32, ptr %i.gk, align 4, !tbaa !83 ; 3 uses
  %i.gs = icmp sgt i32 %.pr125, 23
  br i1 %i.gs, label %.lr.ph147, label %.preheader139

.lr.ph148:                                        ; preds = %.preheader139, %.lr.ph148
  %i.gt = phi i32 [ %i.gv, %.lr.ph148 ], [ %i.go, %.preheader139 ]
  %i.gu = add nsw i32 %i.gt, 24
  store i32 %i.gu, ptr %i.gk, align 4, !tbaa !83
  tail call fastcc void @_time_add(ptr noundef nonnull %0, i32 noundef -1, i32 noundef 4)
  %i.gv = load i32, ptr %i.gk, align 4, !tbaa !83 ; 2 uses
  %i.gw = icmp slt i32 %i.gv, 0
  br i1 %i.gw, label %.lr.ph148, label %thread-pre-split127

bb.ac:                                            ; preds = %bb.a
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !84
  %i.gz = add nsw i32 %i.gy, %1                   ; 4 uses
  store i32 %i.gz, ptr %i.gx, align 4, !tbaa !84
  %i.ha = icmp sgt i32 %i.gz, 59
  br i1 %i.ha, label %.lr.ph, label %.preheader141

.preheader141:                                    ; preds = %.lr.ph, %bb.ac
  %i.hb = phi i32 [ %i.gz, %bb.ac ], [ %.pr126, %.lr.ph ] ; 2 uses
  %i.hc = icmp slt i32 %i.hb, 0
  br i1 %i.hc, label %.lr.ph146, label %thread-pre-split127

.lr.ph:                                           ; preds = %bb.ac, %.lr.ph
  %i.hd = phi i32 [ %.pr126, %.lr.ph ], [ %i.gz, %bb.ac ]
  %i.he = add nsw i32 %i.hd, -60
  store i32 %i.he, ptr %i.gx, align 4, !tbaa !84
  tail call fastcc void @_time_add(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 6)
  %.pr126 = load i32, ptr %i.gx, align 4, !tbaa !84 ; 3 uses
  %i.hf = icmp sgt i32 %.pr126, 59
  br i1 %i.hf, label %.lr.ph, label %.preheader141

.lr.ph146:                                        ; preds = %.preheader141, %.lr.ph146
  %i.hg = phi i32 [ %i.hi, %.lr.ph146 ], [ %i.hb, %.preheader141 ]
  %i.hh = add nsw i32 %i.hg, 60
  store i32 %i.hh, ptr %i.gx, align 4, !tbaa !84
  tail call fastcc void @_time_add(ptr noundef nonnull %0, i32 noundef -1, i32 noundef 6)
  %i.hi = load i32, ptr %i.gx, align 4, !tbaa !84 ; 2 uses
  %i.hj = icmp slt i32 %i.hi, 0
  br i1 %i.hj, label %.lr.ph146, label %thread-pre-split127

.thread-pre-split127.loopexit132_crit_edge:       ; preds = %_time_days_in_month.exit99
  store i32 %.lcssa225228, ptr %i.av, align 4, !tbaa !81
  store i32 %i.df, ptr %i.as, align 4, !tbaa !82
  br label %thread-pre-split127

.thread-pre-split127.loopexit135_crit_edge:       ; preds = %_time_days_in_month.exit121
  store i32 %.lcssa181184, ptr %i.dk, align 4, !tbaa !81
  store i32 %i.fu, ptr %i.dh, align 4, !tbaa !82
  br label %thread-pre-split127

thread-pre-split127:                              ; preds = %.lr.ph146, %.lr.ph148, %.lr.ph150, %.preheader141, %.preheader139, %.preheader137, %thread-pre-split122, %.thread-pre-split127.loopexit135_crit_edge, %thread-pre-split, %.thread-pre-split127.loopexit132_crit_edge, %.preheader129, %.lr.ph243, %.preheader, %.lr.ph255, %bb.a
  %.pr128 = load i32, ptr %0, align 4, !tbaa !80
  br label %bb.ad

bb.ad:                                            ; preds = %thread-pre-split127, %bb.b
  %i.hk = phi i32 [ %.pr128, %thread-pre-split127 ], [ %i.b, %bb.b ]
  %i.hl = icmp slt i32 %i.hk, 0
  br i1 %i.hl, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %0, align 4, !tbaa !80
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare void @gtk_widget_get_allocation(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @cairo_create(ptr noundef) local_unnamed_addr #5

declare void @dt_gui_gtk_set_source_rgb(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @cairo_paint(ptr noundef) local_unnamed_addr #5

declare void @cairo_set_font_size(ptr noundef, double noundef) local_unnamed_addr #5

declare void @cairo_text_extents(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @cairo_move_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #5

declare void @cairo_show_text(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @cairo_rectangle(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #5

declare void @cairo_fill(ptr noundef) local_unnamed_addr #5

declare void @dt_gui_gtk_set_source_rgba(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #5

declare void @cairo_destroy(ptr noundef) local_unnamed_addr #5

declare void @cairo_set_source_surface(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #5

declare void @cairo_line_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #5

end_hunk_1
