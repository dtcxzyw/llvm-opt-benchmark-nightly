inline.NumInlined: 457
inline.NumDeleted: 100
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@list_sort_impl:bb.a
  %i.fj = getelementptr [8 x i8], ptr %i.fh, i64 %i.ff
  %.01011.i.i84.i = getelementptr i8, ptr %i.fj, i64 -8 ; 2 uses
  %i.fk = icmp ult ptr %i.fh, %.01011.i.i84.i
  br i1 %i.fk, label %.lr.ph.i.i93.i, label %reverse_slice.exit.i85.i

.lr.ph.i.i93.i:                                   ; preds = %sortslice_advance.exit.i, %.lr.ph.i.i93.i
  %.01013.i.i94.i = phi ptr [ %.010.i.i96.i, %.lr.ph.i.i93.i ], [ %.01011.i.i84.i, %sortslice_advance.exit.i ] ; 3 uses
  %.012.i.i95.i = phi ptr [ %i.fn, %.lr.ph.i.i93.i ], [ %i.fh, %sortslice_advance.exit.i ] ; 3 uses
  %i.fl = load ptr, ptr %.012.i.i95.i, align 8, !tbaa !50
  %i.fm = load ptr, ptr %.01013.i.i94.i, align 8, !tbaa !50
  store ptr %i.fm, ptr %.012.i.i95.i, align 8, !tbaa !50
  store ptr %i.fl, ptr %.01013.i.i94.i, align 8, !tbaa !50
  %i.fn = getelementptr i8, ptr %.012.i.i95.i, i64 8 ; 2 uses
  %.010.i.i96.i = getelementptr i8, ptr %.01013.i.i94.i, i64 -8 ; 2 uses
  %i.fo = icmp ult ptr %i.fn, %.010.i.i96.i
  br i1 %i.fo, label %.lr.ph.i.i93.i, label %reverse_slice.exit.i85.i, !llvm.loop !90

reverse_slice.exit.i85.i:                         ; preds = %.lr.ph.i.i93.i, %sortslice_advance.exit.i
  %.not.i86.i = icmp ne ptr %spec.select.i207, null
  %i.fp = getelementptr [8 x i8], ptr %spec.select.i207, i64 %i.ff
  %.01011.i6.i87.i = getelementptr i8, ptr %i.fp, i64 -8 ; 2 uses
  %i.fq = icmp ult ptr %spec.select.i207, %.01011.i6.i87.i
  %or.cond.i88.i = and i1 %.not.i86.i, %i.fq
  br i1 %or.cond.i88.i, label %.lr.ph.i7.i89.i, label %sortslice_reverse.exit97.i

.lr.ph.i7.i89.i:                                  ; preds = %reverse_slice.exit.i85.i, %.lr.ph.i7.i89.i
  %.01013.i8.i90.i = phi ptr [ %.010.i10.i92.i, %.lr.ph.i7.i89.i ], [ %.01011.i6.i87.i, %reverse_slice.exit.i85.i ] ; 3 uses
  %.012.i9.i91.i = phi ptr [ %i.ft, %.lr.ph.i7.i89.i ], [ %i.fi, %reverse_slice.exit.i85.i ] ; 3 uses
  %i.fr = load ptr, ptr %.012.i9.i91.i, align 8, !tbaa !50
  %i.fs = load ptr, ptr %.01013.i8.i90.i, align 8, !tbaa !50
  store ptr %i.fs, ptr %.012.i9.i91.i, align 8, !tbaa !50
  store ptr %i.fr, ptr %.01013.i8.i90.i, align 8, !tbaa !50
  %i.ft = getelementptr i8, ptr %.012.i9.i91.i, i64 8 ; 2 uses
  %.010.i10.i92.i = getelementptr i8, ptr %.01013.i8.i90.i, i64 -8 ; 2 uses
  %i.fu = icmp ult ptr %i.ft, %.010.i10.i92.i
  br i1 %i.fu, label %.lr.ph.i7.i89.i, label %sortslice_reverse.exit97.i, !llvm.loop !90

bb.at:                                            ; preds = %bb.ar
  %i.fv = load ptr, ptr %i.dt, align 8, !tbaa !73
  %i.fw = load ptr, ptr %i.fb, align 8, !tbaa !50
  %i.fx = load ptr, ptr %i.ez, align 8, !tbaa !50
  %i.fy = call i32 %i.fv(ptr noundef %i.fw, ptr noundef %i.fx, ptr noundef nonnull %3) #13, !inline_history !91 ; 2 uses
  %i.fz = icmp slt i32 %i.fy, 0
  br i1 %i.fz, label %found_new_run.exit.thread282, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.not79.i = icmp eq i32 %i.fy, 0
  br i1 %.not79.i, label %bb.av, label %._crit_edge149.i

bb.av:                                            ; preds = %bb.au
  %i.ga = add i64 %.0146.i, 1
  br label %sortslice_reverse.exit97.i

sortslice_reverse.exit97.i:                       ; preds = %.lr.ph.i7.i89.i, %bb.av, %reverse_slice.exit.i85.i, %bb.as
  %.1.i = phi i64 [ %i.ga, %bb.av ], [ 0, %bb.as ], [ 0, %reverse_slice.exit.i85.i ], [ 0, %.lr.ph.i7.i89.i ] ; 2 uses
  %.170.i = add nsw i64 %.170147.i, 1             ; 2 uses
  %exitcond166.not.i = icmp eq i64 %.170.i, %.0138
  br i1 %exitcond166.not.i, label %._crit_edge149.i, label %bb.aq, !llvm.loop !93

._crit_edge149.i:                                 ; preds = %sortslice_reverse.exit97.i, %bb.au
  %.170.in.lcssa.i = phi i64 [ %.170.in145.i, %bb.au ], [ %.170147.i, %sortslice_reverse.exit97.i ]
  %.0.lcssa.i = phi i64 [ %.0146.i, %bb.au ], [ %.1.i, %sortslice_reverse.exit97.i ] ; 3 uses
  %.170.lcssa.i = phi i64 [ %.170147.i, %bb.au ], [ %.0138, %sortslice_reverse.exit97.i ] ; 3 uses
  %.not80.i = icmp eq i64 %.0.lcssa.i, 0
  br i1 %.not80.i, label %sortslice_reverse.exit113.i, label %sortslice_advance.exit99.i

sortslice_advance.exit99.i:                       ; preds = %._crit_edge149.i
  %i.gb = add i64 %.0.lcssa.i, 1                  ; 2 uses
  %i.gc = sub i64 %.170.in.lcssa.i, %.0.lcssa.i   ; 2 uses
  %i.gd = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %i.gc ; 3 uses
  %i.ge = getelementptr [8 x i8], ptr %.8.val.fr.i, i64 %i.gc ; 2 uses
  %spec.select134.i = select i1 %.not.i83.i, ptr null, ptr %i.ge ; 3 uses
  %i.gf = getelementptr [8 x i8], ptr %i.gd, i64 %i.gb
  %.01011.i.i100.i = getelementptr i8, ptr %i.gf, i64 -8 ; 2 uses
  %i.gg = icmp ult ptr %i.gd, %.01011.i.i100.i
  br i1 %i.gg, label %.lr.ph.i.i109.i, label %reverse_slice.exit.i101.i

.lr.ph.i.i109.i:                                  ; preds = %sortslice_advance.exit99.i, %.lr.ph.i.i109.i
  %.01013.i.i110.i = phi ptr [ %.010.i.i112.i, %.lr.ph.i.i109.i ], [ %.01011.i.i100.i, %sortslice_advance.exit99.i ] ; 3 uses
  %.012.i.i111.i = phi ptr [ %i.gj, %.lr.ph.i.i109.i ], [ %i.gd, %sortslice_advance.exit99.i ] ; 3 uses
  %i.gh = load ptr, ptr %.012.i.i111.i, align 8, !tbaa !50
  %i.gi = load ptr, ptr %.01013.i.i110.i, align 8, !tbaa !50
  store ptr %i.gi, ptr %.012.i.i111.i, align 8, !tbaa !50
  store ptr %i.gh, ptr %.01013.i.i110.i, align 8, !tbaa !50
  %i.gj = getelementptr i8, ptr %.012.i.i111.i, i64 8 ; 2 uses
  %.010.i.i112.i = getelementptr i8, ptr %.01013.i.i110.i, i64 -8 ; 2 uses
  %i.gk = icmp ult ptr %i.gj, %.010.i.i112.i
  br i1 %i.gk, label %.lr.ph.i.i109.i, label %reverse_slice.exit.i101.i, !llvm.loop !90

reverse_slice.exit.i101.i:                        ; preds = %.lr.ph.i.i109.i, %sortslice_advance.exit99.i
  %.not.i102.i = icmp ne ptr %spec.select134.i, null
  %i.gl = getelementptr [8 x i8], ptr %spec.select134.i, i64 %i.gb
  %.01011.i6.i103.i = getelementptr i8, ptr %i.gl, i64 -8 ; 2 uses
  %i.gm = icmp ult ptr %spec.select134.i, %.01011.i6.i103.i
  %or.cond.i104.i = and i1 %.not.i102.i, %i.gm
  br i1 %or.cond.i104.i, label %.lr.ph.i7.i105.i, label %sortslice_reverse.exit113.i

.lr.ph.i7.i105.i:                                 ; preds = %reverse_slice.exit.i101.i, %.lr.ph.i7.i105.i
  %.01013.i8.i106.i = phi ptr [ %.010.i10.i108.i, %.lr.ph.i7.i105.i ], [ %.01011.i6.i103.i, %reverse_slice.exit.i101.i ] ; 3 uses
  %.012.i9.i107.i = phi ptr [ %i.gp, %.lr.ph.i7.i105.i ], [ %i.ge, %reverse_slice.exit.i101.i ] ; 3 uses
  %i.gn = load ptr, ptr %.012.i9.i107.i, align 8, !tbaa !50
  %i.go = load ptr, ptr %.01013.i8.i106.i, align 8, !tbaa !50
  store ptr %i.go, ptr %.012.i9.i107.i, align 8, !tbaa !50
  store ptr %i.gn, ptr %.01013.i8.i106.i, align 8, !tbaa !50
  %i.gp = getelementptr i8, ptr %.012.i9.i107.i, i64 8 ; 2 uses
  %.010.i10.i108.i = getelementptr i8, ptr %.01013.i8.i106.i, i64 -8 ; 2 uses
  %i.gq = icmp ult ptr %i.gp, %.010.i10.i108.i
  br i1 %i.gq, label %.lr.ph.i7.i105.i, label %sortslice_reverse.exit113.i, !llvm.loop !90

sortslice_reverse.exit113.i:                      ; preds = %.lr.ph.i7.i105.i, %reverse_slice.exit.i101.i, %._crit_edge149.i, %sortslice_reverse.exit.i
  %.170.lcssa191.i = phi i64 [ %.170144.i, %sortslice_reverse.exit.i ], [ %.170.lcssa.i, %._crit_edge149.i ], [ %.170.lcssa.i, %reverse_slice.exit.i101.i ], [ %.170.lcssa.i, %.lr.ph.i7.i105.i ] ; 5 uses
  %i.gr = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %.170.lcssa191.i
  %.01011.i.i114.i = getelementptr i8, ptr %i.gr, i64 -8 ; 2 uses
  %i.gs = icmp ult ptr %.sroa.0.1, %.01011.i.i114.i
  br i1 %i.gs, label %.lr.ph.i.i123.i, label %reverse_slice.exit.i115.i

.lr.ph.i.i123.i:                                  ; preds = %sortslice_reverse.exit113.i, %.lr.ph.i.i123.i
  %.01013.i.i124.i = phi ptr [ %.010.i.i126.i, %.lr.ph.i.i123.i ], [ %.01011.i.i114.i, %sortslice_reverse.exit113.i ] ; 3 uses
  %.012.i.i125.i = phi ptr [ %i.gv, %.lr.ph.i.i123.i ], [ %.sroa.0.1, %sortslice_reverse.exit113.i ] ; 3 uses
  %i.gt = load ptr, ptr %.012.i.i125.i, align 8, !tbaa !50
  %i.gu = load ptr, ptr %.01013.i.i124.i, align 8, !tbaa !50
  store ptr %i.gu, ptr %.012.i.i125.i, align 8, !tbaa !50
  store ptr %i.gt, ptr %.01013.i.i124.i, align 8, !tbaa !50
  %i.gv = getelementptr i8, ptr %.012.i.i125.i, i64 8 ; 2 uses
  %.010.i.i126.i = getelementptr i8, ptr %.01013.i.i124.i, i64 -8 ; 2 uses
  %i.gw = icmp ult ptr %i.gv, %.010.i.i126.i
  br i1 %i.gw, label %.lr.ph.i.i123.i, label %reverse_slice.exit.i115.i, !llvm.loop !90

reverse_slice.exit.i115.i:                        ; preds = %.lr.ph.i.i123.i, %sortslice_reverse.exit113.i
  %.not.i116.i = icmp ne ptr %.8.val.fr.i, null
  %i.gx = getelementptr [8 x i8], ptr %.8.val.fr.i, i64 %.170.lcssa191.i
  %.01011.i6.i117.i = getelementptr i8, ptr %i.gx, i64 -8 ; 2 uses
  %i.gy = icmp ult ptr %.8.val.fr.i, %.01011.i6.i117.i
  %or.cond.i118.i = and i1 %.not.i116.i, %i.gy
  br i1 %or.cond.i118.i, label %.lr.ph.i7.i119.i, label %sortslice_reverse.exit127.i

.lr.ph.i7.i119.i:                                 ; preds = %reverse_slice.exit.i115.i, %.lr.ph.i7.i119.i
  %.01013.i8.i120.i = phi ptr [ %.010.i10.i122.i, %.lr.ph.i7.i119.i ], [ %.01011.i6.i117.i, %reverse_slice.exit.i115.i ] ; 3 uses
  %.012.i9.i121.i = phi ptr [ %i.hb, %.lr.ph.i7.i119.i ], [ %.8.val.fr.i, %reverse_slice.exit.i115.i ] ; 3 uses
  %i.gz = load ptr, ptr %.012.i9.i121.i, align 8, !tbaa !50
  %i.ha = load ptr, ptr %.01013.i8.i120.i, align 8, !tbaa !50
  store ptr %i.ha, ptr %.012.i9.i121.i, align 8, !tbaa !50
  store ptr %i.gz, ptr %.01013.i8.i120.i, align 8, !tbaa !50
  %i.hb = getelementptr i8, ptr %.012.i9.i121.i, i64 8 ; 2 uses
  %.010.i10.i122.i = getelementptr i8, ptr %.01013.i8.i120.i, i64 -8 ; 2 uses
  %i.hc = icmp ult ptr %i.hb, %.010.i10.i122.i
  br i1 %i.hc, label %.lr.ph.i7.i119.i, label %sortslice_reverse.exit127.i, !llvm.loop !90

sortslice_reverse.exit127.i:                      ; preds = %.lr.ph.i7.i119.i, %reverse_slice.exit.i115.i
  %i.hd = icmp slt i64 %.170.lcssa191.i, %.0138
  br i1 %i.hd, label %.lr.ph158.i, label %count_run.exit

.lr.ph158.i:                                      ; preds = %sortslice_reverse.exit127.i, %bb.ax
  %.2157.i = phi i64 [ %i.hl, %bb.ax ], [ %.170.lcssa191.i, %sortslice_reverse.exit127.i ] ; 3 uses
  %i.he = load ptr, ptr %i.dt, align 8, !tbaa !73
  %i.hf = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %.2157.i ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !50
  %i.hh = getelementptr i8, ptr %i.hf, i64 -8
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !50
  %i.hj = call i32 %i.he(ptr noundef %i.hg, ptr noundef %i.hi, ptr noundef nonnull %3) #13, !inline_history !91 ; 2 uses
  %i.hk = icmp slt i32 %i.hj, 0
  br i1 %i.hk, label %found_new_run.exit.thread282, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph158.i
  %.not81.i = icmp eq i32 %i.hj, 0
  br i1 %.not81.i, label %bb.ax, label %count_run.exit

bb.ax:                                            ; preds = %bb.aw
  %i.hl = add i64 %.2157.i, 1                     ; 2 uses
  %exitcond167.not.i = icmp eq i64 %i.hl, %.0138
  br i1 %exitcond167.not.i, label %count_run.exit, label %.lr.ph158.i, !llvm.loop !94

count_run.exit:                                   ; preds = %bb.am, %bb.aw, %bb.ax, %sortslice_reverse.exit127.i
  %.068.i = phi i64 [ %.170.lcssa191.i, %sortslice_reverse.exit127.i ], [ %.0138, %bb.ax ], [ %.2157.i, %bb.aw ], [ %.0138, %bb.am ] ; 2 uses
  %i.hm = icmp slt i64 %.068.i, 0
  br i1 %i.hm, label %found_new_run.exit.thread282, label %count_run.exit.thread274

count_run.exit.thread274:                         ; preds = %._crit_edge.thread182.i, %bb.ao, %count_run.exit
  %.068.i276 = phi i64 [ %.068.i, %count_run.exit ], [ 1, %._crit_edge.thread182.i ], [ %.069141.i, %bb.ao ] ; 3 uses
  %i.hn = load i64, ptr %i.cv, align 8, !tbaa !84
  %i.ho = load i64, ptr %i.df, align 8, !tbaa !89
  %i.hp = add i64 %i.ho, %i.hn                    ; 2 uses
  %i.hq = load i64, ptr %i.da, align 8, !tbaa !87
  %i.hr = ashr i64 %i.hp, %i.hq                   ; 2 uses
  %i.hs = load i64, ptr %i.de, align 8, !tbaa !88
  %i.ht = and i64 %i.hs, %i.hp
  store i64 %i.ht, ptr %i.df, align 8, !tbaa !89
  %i.hu = icmp slt i64 %.068.i276, %i.hr
  br i1 %i.hu, label %bb.ay, label %binarysort.exit.thread

bb.ay:                                            ; preds = %count_run.exit.thread274
  %i.hv = call i64 @llvm.smin.i64(i64 %.0138, i64 %i.hr) ; 6 uses
  %spec.select.i210 = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.068.i276, i64 1) ; 3 uses
  %i.hw = icmp slt i64 %spec.select.i210, %i.hv
  br i1 %i.hw, label %.lr.ph10.i, label %binarysort.exit.thread

.lr.ph10.i:                                       ; preds = %bb.ay
  %.not.i211 = icmp eq ptr %.8.val.fr.i, null
  br i1 %.not.i211, label %.lr.ph10.split.us.i, label %.lr.ph10.split.i

.lr.ph10.split.us.i:                              ; preds = %.lr.ph10.i, %.lr.ph.us.i
  %.1547.us.i = phi i64 [ %i.il, %.lr.ph.us.i ], [ %spec.select.i210, %.lr.ph10.i ] ; 8 uses
  %i.hx = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %.1547.us.i
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !50 ; 2 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.ba, %.lr.ph10.split.us.i
  %.048.us.i = phi i64 [ 0, %.lr.ph10.split.us.i ], [ %.149.us.i, %bb.ba ] ; 2 uses
  %.0.us.i = phi i64 [ %.1547.us.i, %.lr.ph10.split.us.i ], [ %.1.us.i, %bb.ba ] ; 2 uses
  %i.hz = add i64 %.0.us.i, %.048.us.i
  %i.ia = ashr i64 %i.hz, 1                       ; 3 uses
  %i.ib = load ptr, ptr %i.dt, align 8, !tbaa !73
  %i.ic = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %i.ia
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !50
  %i.ie = call i32 %i.ib(ptr noundef %i.hy, ptr noundef %i.id, ptr noundef nonnull %3) #13, !inline_history !95 ; 2 uses
  %i.if = icmp slt i32 %i.ie, 0
  br i1 %i.if, label %found_new_run.exit.thread282, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.not60.us.i = icmp eq i32 %i.ie, 0             ; 2 uses
  %i.ig = add nsw i64 %i.ia, 1
  %.149.us.i = select i1 %.not60.us.i, i64 %i.ig, i64 %.048.us.i ; 6 uses
  %.1.us.i = select i1 %.not60.us.i, i64 %.0.us.i, i64 %i.ia ; 2 uses
  %i.ih = icmp slt i64 %.149.us.i, %.1.us.i
  br i1 %i.ih, label %bb.az, label %.preheader.us.i, !llvm.loop !96

._crit_edge.us.i.a:                               ; preds = %.lr.ph.us.i.preheader495, %._crit_edge.us.i.a
  %.0502.us.i = phi i64 [ %i.ij, %._crit_edge.us.i.a ], [ %.0502.us.i.ph, %.lr.ph.us.i.preheader495 ] ; 2 uses
  %i.ii = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %.0502.us.i ; 2 uses
  %4 = getelementptr i8, ptr %i.ii, i64 -8
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  store ptr %5, ptr %i.ii, align 8, !tbaa !50
  %i.ij = add nsw i64 %.0502.us.i, -1             ; 2 uses
  %6 = icmp sgt i64 %i.ij, %.149.us.i
  br i1 %6, label %._crit_edge.us.i.a, label %.lr.ph.us.i, !llvm.loop !97

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i.a, %middle.block, %.preheader.us.i
  %i.ik = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %.149.us.i
  store ptr %i.hy, ptr %i.ik, align 8, !tbaa !50
  %i.il = add nuw nsw i64 %.1547.us.i, 1          ; 2 uses
  %exitcond23.not.i = icmp eq i64 %i.il, %i.hv
  br i1 %exitcond23.not.i, label %binarysort.exit.thread, label %.lr.ph10.split.us.i, !llvm.loop !98

.preheader.us.i:                                  ; preds = %bb.ba
  %i.im = icmp sgt i64 %.1547.us.i, %.149.us.i
  br i1 %i.im, label %.lr.ph.us.i.preheader, label %.lr.ph.us.i

.lr.ph.us.i.preheader:                            ; preds = %.preheader.us.i
  %i.in = sub i64 %.1547.us.i, %.149.us.i         ; 3 uses
  %min.iters.check = icmp ult i64 %i.in, 4
  br i1 %min.iters.check, label %.lr.ph.us.i.preheader495, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.i.preheader
  %n.vec = and i64 %i.in, -4                      ; 3 uses
  %i.io = sub i64 %.1547.us.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ip = sub i64 %.1547.us.i, %index
  %i.iq = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %i.ip ; 4 uses
  %i.ir = getelementptr i8, ptr %i.iq, i64 -16
  %i.is = getelementptr i8, ptr %i.iq, i64 -32
  %wide.load = load <2 x ptr>, ptr %i.ir, align 8, !tbaa !50
  %wide.load466 = load <2 x ptr>, ptr %i.is, align 8, !tbaa !50
  %i.it = getelementptr i8, ptr %i.iq, i64 -8
  %i.iu = getelementptr i8, ptr %i.iq, i64 -24
  store <2 x ptr> %wide.load, ptr %i.it, align 8, !tbaa !50
  store <2 x ptr> %wide.load466, ptr %i.iu, align 8, !tbaa !50
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.iv = icmp eq i64 %index.next, %n.vec
  br i1 %i.iv, label %middle.block, label %vector.body, !llvm.loop !99

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.in, %n.vec
  br i1 %cmp.n, label %.lr.ph.us.i, label %.lr.ph.us.i.preheader495

.lr.ph.us.i.preheader495:                         ; preds = %.lr.ph.us.i.preheader, %middle.block
  %.0502.us.i.ph = phi i64 [ %.1547.us.i, %.lr.ph.us.i.preheader ], [ %i.io, %middle.block ]
  br label %._crit_edge.us.i.a

.lr.ph10.split.i:                                 ; preds = %.lr.ph10.i, %._crit_edge6.i
  %.1547.i = phi i64 [ %i.ks, %._crit_edge6.i ], [ %spec.select.i210, %.lr.ph10.i ] ; 14 uses
  %i.iw = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %.1547.i
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !50 ; 3 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bc, %.lr.ph10.split.i
  %.048.i = phi i64 [ 0, %.lr.ph10.split.i ], [ %.149.i, %bb.bc ] ; 2 uses
  %.0.i = phi i64 [ %.1547.i, %.lr.ph10.split.i ], [ %.1.i212, %bb.bc ] ; 2 uses
  %i.iy = add i64 %.0.i, %.048.i
  %i.iz = ashr i64 %i.iy, 1                       ; 3 uses
  %i.ja = load ptr, ptr %i.dt, align 8, !tbaa !73
  %i.jb = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %i.iz
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !50
  %i.jd = call i32 %i.ja(ptr noundef %i.ix, ptr noundef %i.jc, ptr noundef nonnull %3) #13, !inline_history !95 ; 2 uses
  %i.je = icmp slt i32 %i.jd, 0
  br i1 %i.je, label %found_new_run.exit.thread282, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.not60.i = icmp eq i32 %i.jd, 0                ; 2 uses
  %i.jf = add nsw i64 %i.iz, 1
  %.149.i = select i1 %.not60.i, i64 %i.jf, i64 %.048.i ; 10 uses
  %.1.i212 = select i1 %.not60.i, i64 %.0.i, i64 %i.iz ; 2 uses
  %i.jg = icmp slt i64 %.149.i, %.1.i212
  br i1 %i.jg, label %bb.bb, label %.preheader.i, !llvm.loop !96

.preheader.i:                                     ; preds = %bb.bc
  %i.jh = icmp sgt i64 %.1547.i, %.149.i
  br i1 %i.jh, label %.lr.ph.i215.preheader, label %._crit_edge.i213

.lr.ph.i215.preheader:                            ; preds = %.preheader.i
  %i.ji = sub i64 %.1547.i, %.149.i               ; 3 uses
  %min.iters.check482 = icmp ult i64 %i.ji, 4
  br i1 %min.iters.check482, label %.lr.ph.i215.preheader497, label %vector.ph483

vector.ph483:                                     ; preds = %.lr.ph.i215.preheader
  %n.vec485 = and i64 %i.ji, -4                   ; 3 uses
  %i.jj = sub i64 %.1547.i, %n.vec485
  br label %vector.body486

vector.body486:                                   ; preds = %vector.body486, %vector.ph483
  %index487 = phi i64 [ 0, %vector.ph483 ], [ %index.next490, %vector.body486 ] ; 2 uses
  %i.jk = sub i64 %.1547.i, %index487
  %i.jl = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %i.jk ; 4 uses
  %i.jm = getelementptr i8, ptr %i.jl, i64 -16
  %i.jn = getelementptr i8, ptr %i.jl, i64 -32
  %wide.load488 = load <2 x ptr>, ptr %i.jm, align 8, !tbaa !50
  %wide.load489 = load <2 x ptr>, ptr %i.jn, align 8, !tbaa !50
  %i.jo = getelementptr i8, ptr %i.jl, i64 -8
  %i.jp = getelementptr i8, ptr %i.jl, i64 -24
  store <2 x ptr> %wide.load488, ptr %i.jo, align 8, !tbaa !50
  store <2 x ptr> %wide.load489, ptr %i.jp, align 8, !tbaa !50
  %index.next490 = add nuw i64 %index487, 4       ; 2 uses
  %i.jq = icmp eq i64 %index.next490, %n.vec485
  br i1 %i.jq, label %middle.block491, label %vector.body486, !llvm.loop !100

middle.block491:                                  ; preds = %vector.body486
  %cmp.n492 = icmp eq i64 %i.ji, %n.vec485
  br i1 %cmp.n492, label %.lr.ph5.preheader.i, label %.lr.ph.i215.preheader497

.lr.ph.i215.preheader497:                         ; preds = %.lr.ph.i215.preheader, %middle.block491
  %.0502.i.ph = phi i64 [ %.1547.i, %.lr.ph.i215.preheader ], [ %i.jj, %middle.block491 ]
  br label %.lr.ph.i215

.lr.ph.i215:                                      ; preds = %.lr.ph.i215.preheader497, %.lr.ph.i215
  %.0502.i = phi i64 [ %i.ju, %.lr.ph.i215 ], [ %.0502.i.ph, %.lr.ph.i215.preheader497 ] ; 2 uses
  %i.jr = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %.0502.i ; 2 uses
  %i.js = getelementptr i8, ptr %i.jr, i64 -8
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !50
  store ptr %i.jt, ptr %i.jr, align 8, !tbaa !50
  %i.ju = add nsw i64 %.0502.i, -1                ; 2 uses
  %i.jv = icmp sgt i64 %i.ju, %.149.i
  br i1 %i.jv, label %.lr.ph.i215, label %.lr.ph5.preheader.i, !llvm.loop !101

._crit_edge.i213:                                 ; preds = %.preheader.i
  %i.jw = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %.149.i
  store ptr %i.ix, ptr %i.jw, align 8, !tbaa !50
  %i.jx = getelementptr [8 x i8], ptr %.8.val.fr.i, i64 %.1547.i
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !50
  br label %._crit_edge6.i

.lr.ph5.preheader.i:                              ; preds = %.lr.ph.i215, %middle.block491
  %i.jz = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %.149.i
  store ptr %i.ix, ptr %i.jz, align 8, !tbaa !50
  %i.ka = getelementptr [8 x i8], ptr %.8.val.fr.i, i64 %.1547.i
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !50 ; 2 uses
  %i.kc = sub i64 %.1547.i, %.149.i               ; 3 uses
  %min.iters.check469 = icmp ult i64 %i.kc, 4
  br i1 %min.iters.check469, label %.lr.ph5.i.preheader, label %vector.ph470

vector.ph470:                                     ; preds = %.lr.ph5.preheader.i
  %n.vec472 = and i64 %i.kc, -4                   ; 3 uses
  %i.kd = sub i64 %.1547.i, %n.vec472
  br label %vector.body473

vector.body473:                                   ; preds = %vector.body473, %vector.ph470
  %index474 = phi i64 [ 0, %vector.ph470 ], [ %index.next477, %vector.body473 ] ; 2 uses
  %i.ke = sub i64 %.1547.i, %index474
  %i.kf = getelementptr [8 x i8], ptr %.8.val.fr.i, i64 %i.ke ; 4 uses
  %i.kg = getelementptr i8, ptr %i.kf, i64 -16
  %i.kh = getelementptr i8, ptr %i.kf, i64 -32
  %wide.load475 = load <2 x ptr>, ptr %i.kg, align 8, !tbaa !50
  %wide.load476 = load <2 x ptr>, ptr %i.kh, align 8, !tbaa !50
  %i.ki = getelementptr i8, ptr %i.kf, i64 -8
  %i.kj = getelementptr i8, ptr %i.kf, i64 -24
  store <2 x ptr> %wide.load475, ptr %i.ki, align 8, !tbaa !50
  store <2 x ptr> %wide.load476, ptr %i.kj, align 8, !tbaa !50
  %index.next477 = add nuw i64 %index474, 4       ; 2 uses
  %i.kk = icmp eq i64 %index.next477, %n.vec472
  br i1 %i.kk, label %middle.block478, label %vector.body473, !llvm.loop !102

middle.block478:                                  ; preds = %vector.body473
  %cmp.n479 = icmp eq i64 %i.kc, %n.vec472
  br i1 %cmp.n479, label %._crit_edge6.i, label %.lr.ph5.i.preheader

.lr.ph5.i.preheader:                              ; preds = %.lr.ph5.preheader.i, %middle.block478
  %.1513.i.ph = phi i64 [ %.1547.i, %.lr.ph5.preheader.i ], [ %i.kd, %middle.block478 ]
  br label %.lr.ph5.i

.lr.ph5.i:                                        ; preds = %.lr.ph5.i.preheader, %.lr.ph5.i
  %.1513.i = phi i64 [ %i.ko, %.lr.ph5.i ], [ %.1513.i.ph, %.lr.ph5.i.preheader ] ; 2 uses
  %i.kl = getelementptr [8 x i8], ptr %.8.val.fr.i, i64 %.1513.i ; 2 uses
  %i.km = getelementptr i8, ptr %i.kl, i64 -8
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !50
  store ptr %i.kn, ptr %i.kl, align 8, !tbaa !50
  %i.ko = add nsw i64 %.1513.i, -1                ; 2 uses
  %i.kp = icmp sgt i64 %i.ko, %.149.i
  br i1 %i.kp, label %.lr.ph5.i, label %._crit_edge6.i, !llvm.loop !103

._crit_edge6.i:                                   ; preds = %.lr.ph5.i, %middle.block478, %._crit_edge.i213
  %i.kq = phi ptr [ %i.jy, %._crit_edge.i213 ], [ %i.kb, %middle.block478 ], [ %i.kb, %.lr.ph5.i ]
  %i.kr = getelementptr [8 x i8], ptr %.8.val.fr.i, i64 %.149.i
  store ptr %i.kq, ptr %i.kr, align 8, !tbaa !50
  %i.ks = add nuw nsw i64 %.1547.i, 1             ; 2 uses
  %exitcond.not.i214 = icmp eq i64 %i.ks, %i.hv
  br i1 %exitcond.not.i214, label %binarysort.exit.thread, label %.lr.ph10.split.i, !llvm.loop !98

binarysort.exit.thread:                           ; preds = %._crit_edge6.i, %.lr.ph.us.i, %bb.ay, %count_run.exit.thread274
  %.1 = phi i64 [ %.068.i276, %count_run.exit.thread274 ], [ %i.hv, %bb.ay ], [ %i.hv, %.lr.ph.us.i ], [ %i.hv, %._crit_edge6.i ] ; 5 uses
  %i.kt = load i32, ptr %i.cu, align 8, !tbaa !82 ; 2 uses
  %.not.i216 = icmp eq i32 %i.kt, 0
  br i1 %.not.i216, label %found_new_run.exit, label %bb.bd

bb.bd:                                            ; preds = %binarysort.exit.thread
  %i.ku = add i32 %i.kt, -1
  %i.kv = sext i32 %i.ku to i64
  %i.kw = getelementptr [32 x i8], ptr %i.du, i64 %i.kv ; 2 uses
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !104
  %i.ky = load ptr, ptr %i.cw, align 8, !tbaa !85
  %i.kz = ptrtoint ptr %i.kx to i64
  %i.la = ptrtoint ptr %i.ky to i64
  %i.lb = sub i64 %i.kz, %i.la
  %i.lc = getelementptr i8, ptr %i.kw, i64 16
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !106 ; 2 uses
  %i.le = load i64, ptr %i.cv, align 8, !tbaa !84 ; 4 uses
  %i.lf = ashr exact i64 %i.lb, 2
  %i.lg = add i64 %i.lf, %i.ld                    ; 2 uses
  %i.lh = add i64 %i.ld, %.1
  %i.li = add i64 %i.lh, %i.lg
  br label %bb.be

bb.be:                                            ; preds = %bb.bh, %bb.bd
  %.019.i.i = phi i32 [ 0, %bb.bd ], [ %i.lj, %bb.bh ]
  %.017.i.i = phi i64 [ %i.lg, %bb.bd ], [ %i.lm, %bb.bh ] ; 3 uses
  %.0.i.i = phi i64 [ %i.li, %bb.bd ], [ %i.ln, %bb.bh ] ; 3 uses
  %i.lj = add i32 %.019.i.i, 1                    ; 3 uses
  %.not.i.i217 = icmp slt i64 %.017.i.i, %i.le
  br i1 %.not.i.i217, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.lk = sub i64 %.017.i.i, %i.le
  %i.ll = sub i64 %.0.i.i, %i.le
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %.not22.i.i = icmp slt i64 %.0.i.i, %i.le
  br i1 %.not22.i.i, label %bb.bh, label %powerloop.exit.i

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.118.i.i = phi i64 [ %i.lk, %bb.bf ], [ %.017.i.i, %bb.bg ]
  %.1.i.i = phi i64 [ %i.ll, %bb.bf ], [ %.0.i.i, %bb.bg ]
  %i.lm = shl i64 %.118.i.i, 1
  %i.ln = shl i64 %.1.i.i, 1
  br label %bb.be

powerloop.exit.i:                                 ; preds = %bb.bg, %bb.bj
  %i.lo = load i32, ptr %i.cu, align 8, !tbaa !82 ; 4 uses
  %i.lp = icmp sgt i32 %i.lo, 1
  br i1 %i.lp, label %bb.bi, label %.thread.i

bb.bi:                                            ; preds = %powerloop.exit.i
  %i.lq = add nsw i32 %i.lo, -2
  %i.lr = zext nneg i32 %i.lq to i64              ; 2 uses
  %i.ls = getelementptr [32 x i8], ptr %i.du, i64 %i.lr
  %i.lt = getelementptr i8, ptr %i.ls, i64 24
  %i.lu = load i32, ptr %i.lt, align 8, !tbaa !107
  %i.lv = icmp sgt i32 %i.lu, %i.lj
  br i1 %i.lv, label %bb.bj, label %.thread.i

bb.bj:                                            ; preds = %bb.bi
  %i.lw = call fastcc i64 @merge_at(ptr noundef nonnull %3, i64 noundef %i.lr)
  %i.lx = icmp slt i64 %i.lw, 0
  br i1 %i.lx, label %found_new_run.exit.thread282, label %powerloop.exit.i, !llvm.loop !108

.thread.i:                                        ; preds = %bb.bi, %powerloop.exit.i
  %i.ly = add i32 %i.lo, -1
  %i.lz = sext i32 %i.ly to i64
  %i.ma = getelementptr [32 x i8], ptr %i.du, i64 %i.lz
  %i.mb = getelementptr i8, ptr %i.ma, i64 24
  store i32 %i.lj, ptr %i.mb, align 8, !tbaa !107
  br label %found_new_run.exit

found_new_run.exit:                               ; preds = %binarysort.exit.thread, %.thread.i
  %i.mc = phi i32 [ 0, %binarysort.exit.thread ], [ %i.lo, %.thread.i ] ; 2 uses
  %i.md = sext i32 %i.mc to i64
  %i.me = getelementptr [32 x i8], ptr %i.du, i64 %i.md ; 3 uses
  store ptr %.sroa.0.1, ptr %i.me, align 8, !tbaa !109
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  store ptr %.8.val.fr.i, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !109
  %i.mf = getelementptr i8, ptr %i.me, i64 16
  store i64 %.1, ptr %i.mf, align 8, !tbaa !106
  %i.mg = add i32 %i.mc, 1
  store i32 %i.mg, ptr %i.cu, align 8, !tbaa !82
  %i.mh = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %.1
  %.not.i219 = icmp eq ptr %.8.val.fr.i, null
  %i.mi = getelementptr [8 x i8], ptr %.8.val.fr.i, i64 %.1
  %spec.select292 = select i1 %.not.i219, ptr null, ptr %i.mi
  %i.mj = sub i64 %.0138, %.1                     ; 2 uses
  %.not181 = icmp eq i64 %i.mj, 0
  br i1 %.not181, label %.preheader447, label %bb.ak, !llvm.loop !110

.preheader447:                                    ; preds = %found_new_run.exit, %bb.bm
  %i.mk = load i32, ptr %i.cu, align 8, !tbaa !82 ; 2 uses
  %i.ml = icmp slt i32 %i.mk, 2                   ; 3 uses
  br i1 %i.ml, label %found_new_run.exit.thread282, label %bb.bk

bb.bk:                                            ; preds = %.preheader447
  %i.mm = add nsw i32 %i.mk, -2                   ; 2 uses
  %.not.i220 = icmp eq i32 %i.mm, 0
  br i1 %.not.i220, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.mn = zext nneg i32 %i.mm to i64              ; 2 uses
  %i.mo = getelementptr [32 x i8], ptr %i.du, i64 %i.mn ; 2 uses
  %i.mp = getelementptr i8, ptr %i.mo, i64 -16
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !106
  %i.mr = getelementptr i8, ptr %i.mo, i64 48
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !106
  %i.mt = icmp slt i64 %i.mq, %i.ms
  %i.mu = sext i1 %i.mt to i64
  %spec.select.i221 = add nsw i64 %i.mu, %i.mn
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.012.i222 = phi i64 [ 0, %bb.bk ], [ %spec.select.i221, %bb.bl ]
  %i.mv = call fastcc i64 @merge_at(ptr noundef nonnull %3, i64 noundef %.012.i222)
  %i.mw = icmp sgt i64 %i.mv, -1
  br i1 %i.mw, label %.preheader447, label %found_new_run.exit.thread282, !llvm.loop !111

found_new_run.exit.thread282:                     ; preds = %bb.an, %count_run.exit, %.lr.ph.i208, %bb.at, %bb.aq, %.lr.ph158.i, %bb.bj, %bb.bb, %bb.az, %.preheader447, %bb.bm, %merge_init.exit
  %i.mx = phi i1 [ false, %.lr.ph.i208 ], [ false, %bb.at ], [ true, %merge_init.exit ], [ false, %bb.bb ], [ %i.ml, %.preheader447 ], [ false, %.lr.ph158.i ], [ false, %bb.az ], [ false, %bb.bj ], [ %i.ml, %bb.bm ], [ false, %bb.aq ], [ false, %count_run.exit ], [ false, %bb.an ]
  %.0151 = phi ptr [ null, %.lr.ph.i208 ], [ null, %bb.at ], [ @_Py_NoneStruct, %merge_init.exit ], [ null, %bb.bb ], [ @_Py_NoneStruct, %.preheader447 ], [ null, %.lr.ph158.i ], [ null, %bb.az ], [ null, %bb.bj ], [ null, %bb.bm ], [ null, %bb.aq ], [ null, %count_run.exit ], [ null, %bb.an ]
  %i.my = icmp sgt i64 %.val191, 0
  %or.cond445 = select i1 %i.ck, i1 %i.my, i1 false
  br i1 %or.cond445, label %.lr.ph337, label %._crit_edge338.thread

.lr.ph337:                                        ; preds = %found_new_run.exit.thread282, %Py_DECREF.exit
  %.3160336 = phi i64 [ %i.ne, %Py_DECREF.exit ], [ 0, %found_new_run.exit.thread282 ] ; 2 uses
  %i.mz = getelementptr [8 x i8], ptr %.1156421, i64 %.3160336
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !50 ; 3 uses
  %i.nb = load i32, ptr %i.na, align 8, !tbaa !28 ; 2 uses
  %.not.i = icmp sgt i32 %i.nb, -1
  br i1 %.not.i, label %bb.bn, label %Py_DECREF.exit

bb.bn:                                            ; preds = %.lr.ph337
  %i.nc = add nsw i32 %i.nb, -1                   ; 2 uses
  store i32 %i.nc, ptr %i.na, align 8, !tbaa !28
  %i.nd = icmp eq i32 %i.nc, 0
  br i1 %i.nd, label %bb.bo, label %Py_DECREF.exit

bb.bo:                                            ; preds = %bb.bn
  call void @_Py_Dealloc(ptr noundef nonnull %i.na) #13
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %.lr.ph337, %bb.bn, %bb.bo
  %i.ne = add nuw nsw i64 %.3160336, 1            ; 2 uses
  %exitcond372.not = icmp eq i64 %i.ne, %.val191
  br i1 %exitcond372.not, label %._crit_edge338, label %.lr.ph337, !llvm.loop !112

._crit_edge338:                                   ; preds = %Py_DECREF.exit
  %i.nf = icmp sgt i64 %.val191, 127
  br i1 %i.nf, label %bb.bp, label %._crit_edge338.thread

bb.bp:                                            ; preds = %._crit_edge338
  call void @PyMem_Free(ptr noundef nonnull %.1156421) #13
  br label %._crit_edge338.thread

._crit_edge338.thread:                            ; preds = %._crit_edge338, %bb.bp, %found_new_run.exit.thread282
  %i.ng = load i64, ptr %i.e, align 8, !tbaa !30
  %i.nh = icmp ne i64 %i.ng, -1
  %or.cond9 = and i1 %i.mx, %i.nh
  br i1 %or.cond9, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %._crit_edge338.thread
  %i.ni = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !50
  call void @PyErr_SetString(ptr noundef %i.ni, ptr noundef nonnull @.str.10) #13
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %._crit_edge338.thread
  %.1152 = phi ptr [ null, %bb.bq ], [ %.0151, %._crit_edge338.thread ] ; 2 uses
  %i.nj = icmp ne i32 %2, 0
  %or.cond11 = and i1 %i.nj, %i.cj
  %i.nk = getelementptr [8 x i8], ptr %i.d, i64 %.val191
  %.01011.i223 = getelementptr i8, ptr %i.nk, i64 -8 ; 2 uses
  %i.nl = icmp ult ptr %i.d, %.01011.i223
  %or.cond294 = select i1 %or.cond11, i1 %i.nl, i1 false
  br i1 %or.cond294, label %.lr.ph.i225, label %reverse_slice.exit229

.lr.ph.i225:                                      ; preds = %bb.br, %.lr.ph.i225
  %.01013.i226 = phi ptr [ %.010.i228, %.lr.ph.i225 ], [ %.01011.i223, %bb.br ] ; 3 uses
  %.012.i227 = phi ptr [ %i.no, %.lr.ph.i225 ], [ %i.d, %bb.br ] ; 3 uses
  %i.nm = load ptr, ptr %.012.i227, align 8, !tbaa !50
  %i.nn = load ptr, ptr %.01013.i226, align 8, !tbaa !50
  store ptr %i.nn, ptr %.012.i227, align 8, !tbaa !50
  store ptr %i.nm, ptr %.01013.i226, align 8, !tbaa !50
  %i.no = getelementptr i8, ptr %.012.i227, i64 8 ; 2 uses
  %.010.i228 = getelementptr i8, ptr %.01013.i226, i64 -8 ; 2 uses
  %i.np = icmp ult ptr %i.no, %.010.i228
  br i1 %i.np, label %.lr.ph.i225, label %reverse_slice.exit229, !llvm.loop !90

reverse_slice.exit229:                            ; preds = %.lr.ph.i225, %bb.br
  %i.nq = load ptr, ptr %i.ct, align 8, !tbaa !81 ; 2 uses
  %.not.i230 = icmp eq ptr %i.nq, %i.cs
  br i1 %.not.i230, label %merge_freemem.exit, label %bb.bs

bb.bs:                                            ; preds = %reverse_slice.exit229
  call void @PyMem_Free(ptr noundef %i.nq) #13
  store ptr null, ptr %i.ct, align 8, !tbaa !81
  br label %merge_freemem.exit
end_hunk_0
begin_hunk_1_@listreviter_reduce:bb.a
  br i1 %.not.i.i, label %bb.d, label %listiter_reduce_general.exit

bb.d:                                             ; preds = %bb.c
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.b, align 8, !tbaa !28
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %listiter_reduce_general.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #13, !inline_history !190
  br label %listiter_reduce_general.exit

bb.f:                                             ; preds = %.thread.i
  %i.m = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.45, ptr noundef %i.b, ptr noundef nonnull %i.h) #13, !inline_history !190
  br label %listiter_reduce_general.exit

listiter_reduce_general.exit:                     ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.2.i = phi ptr [ %i.g, %bb.b ], [ %i.m, %bb.f ], [ null, %bb.e ], [ null, %bb.c ], [ null, %bb.d ]
  ret ptr %.2.i
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @listreviter_setstate(ptr nofree noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i64 @PyLong_AsSsize_t(ptr noundef %1) #13 ; 3 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_Occurred() #13
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !125  ; 2 uses
  %.not13 = icmp eq ptr %i.e, null
  br i1 %.not13, label %bb.f, label %bb.d

.thread:                                          ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !125  ; 2 uses
  %.not1315 = icmp eq ptr %i.g, null
  br i1 %.not1315, label %bb.f, label %.thread16

bb.d:                                             ; preds = %bb.c
  %i.h = icmp slt i64 %i.a, -1
  br i1 %i.h, label %bb.e, label %.thread16

.thread16:                                        ; preds = %.thread, %bb.d
  %i.i = phi ptr [ %i.e, %bb.d ], [ %i.g, %.thread ]
  %i.j = getelementptr i8, ptr %i.i, i64 16
  %.val14 = load i64, ptr %i.j, align 8, !tbaa !29
  %i.k = add i64 %.val14, -1
  %spec.select = tail call i64 @llvm.smin.i64(i64 %i.a, i64 %i.k)
  br label %bb.e

bb.e:                                             ; preds = %.thread16, %bb.d
  %.0 = phi i64 [ %spec.select, %.thread16 ], [ -1, %bb.d ]
  %i.l = getelementptr i8, ptr %0, i64 16
  store i64 %.0, ptr %i.l, align 8, !tbaa !123
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.c, %bb.e, %bb.b
  %.010 = phi ptr [ null, %bb.b ], [ @_Py_NoneStruct, %bb.e ], [ @_Py_NoneStruct, %bb.c ], [ @_Py_NoneStruct, %.thread ]
  ret ptr %.010
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTS3_is", !13, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!15, !17, i64 376}
!15 = !{!"_Py_freelists", !16, i64 0, !16, i64 16, !16, i64 32, !9, i64 48, !16, i64 368, !16, i64 384, !16, i64 400, !16, i64 416, !16, i64 432, !16, i64 448, !16, i64 464, !16, i64 480, !16, i64 496, !16, i64 512, !16, i64 528, !16, i64 544, !16, i64 560, !16, i64 576, !16, i64 592, !16, i64 608, !16, i64 624, !16, i64 640}
!16 = !{!"_Py_freelist", !13, i64 0, !17, i64 8}
!17 = !{!"long", !9, i64 0}
!18 = !{!16, !13, i64 0}
!19 = !{!13, !13, i64 0}
!20 = !{!16, !17, i64 8}
!21 = !{!22, !26, i64 24}
!22 = !{!"", !23, i64 0, !26, i64 24, !17, i64 32}
!23 = !{!"PyVarObject", !24, i64 0, !17, i64 16}
!24 = !{!"_object", !9, i64 0, !25, i64 8}
!25 = !{!"p1 _ZTS11_typeobject", !13, i64 0}
!26 = !{!"p2 _ZTS7_object", !27, i64 0}
!27 = !{!"any p2 pointer", !13, i64 0}
!28 = !{!9, !9, i64 0}
!29 = !{!23, !17, i64 16}
!30 = !{!22, !17, i64 32}
!31 = !{!32, !17, i64 8}
!32 = !{!"", !17, i64 0, !17, i64 8}
!33 = !{!32, !17, i64 0}
!34 = !{!35, !8, i64 272}
!35 = !{!"_gc_runtime_state", !8, i64 0, !8, i64 4, !36, i64 8, !9, i64 32, !36, i64 80, !9, i64 104, !8, i64 224, !37, i64 232, !38, i64 240, !38, i64 248, !17, i64 256, !17, i64 264, !8, i64 272, !8, i64 276}
!36 = !{!"gc_generation", !32, i64 0, !8, i64 16, !8, i64 20}
!37 = !{!"p1 _ZTS19_PyInterpreterFrame", !13, i64 0}
!38 = !{!"p1 _ZTS7_object", !13, i64 0}
!39 = !{!35, !8, i64 28}
!40 = !{!35, !17, i64 256}
!41 = !{!35, !8, i64 24}
!42 = !{!24, !25, i64 8}
!43 = !{!44, !17, i64 168}
!44 = !{!"_typeobject", !23, i64 0, !45, i64 24, !17, i64 32, !17, i64 40, !13, i64 48, !17, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !17, i64 168, !45, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !17, i64 208, !13, i64 216, !13, i64 224, !46, i64 232, !47, i64 240, !48, i64 248, !25, i64 256, !38, i64 264, !13, i64 272, !13, i64 280, !17, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !38, i64 336, !38, i64 344, !38, i64 352, !13, i64 360, !38, i64 368, !13, i64 376, !8, i64 384, !13, i64 392, !13, i64 400, !9, i64 408, !49, i64 410}
!45 = !{!"p1 omnipotent char", !13, i64 0}
!46 = !{!"p1 _ZTS11PyMethodDef", !13, i64 0}
!47 = !{!"p1 _ZTS11PyMemberDef", !13, i64 0}
!48 = !{!"p1 _ZTS11PyGetSetDef", !13, i64 0}
!49 = !{!"short", !9, i64 0}
!50 = !{!38, !38, i64 0}
!51 = distinct !{!51, !52, !53, !54}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.isvectorized", i32 1}
!54 = !{!"llvm.loop.unroll.runtime.disable"}
!55 = distinct !{!55, !52, !54, !53}
!56 = !{!17, !17, i64 0}
!57 = distinct !{null}
!58 = distinct !{!58, !52}
!59 = distinct !{ptr @list_extend, null}
!60 = distinct !{null}
!61 = !{!62, !17, i64 24}
!62 = !{!"", !24, i64 0, !17, i64 16, !17, i64 24, !17, i64 32, !13, i64 40, !17, i64 48, !17, i64 56, !9, i64 64, !38, i64 192}
!63 = distinct !{!63, !52}
!64 = !{!65, !13, i64 16}
!65 = !{!"", !24, i64 0, !13, i64 16}
!66 = distinct !{!66, !52}
!67 = distinct !{!67, !52}
!68 = distinct !{!68, !52}
!69 = !{!70, !17, i64 16}
!70 = !{!"_longobject", !24, i64 0, !71, i64 16}
!71 = !{!"_PyLongValue", !17, i64 0, !9, i64 8}
!72 = distinct !{!72, !52}
!73 = !{!74, !13, i64 4152}
!74 = !{!"s_MergeState", !17, i64 0, !17, i64 8, !26, i64 16, !75, i64 24, !17, i64 40, !8, i64 48, !9, i64 56, !9, i64 2104, !13, i64 4152, !13, i64 4160, !13, i64 4168, !17, i64 4176, !17, i64 4184, !17, i64 4192}
!75 = !{!"", !26, i64 0, !26, i64 8}
!76 = !{!44, !13, i64 200}
!77 = !{!74, !13, i64 4160}
!78 = !{!74, !13, i64 4168}
!79 = !{!74, !17, i64 40}
!80 = !{!74, !26, i64 32}
!81 = !{!74, !26, i64 24}
!82 = !{!74, !8, i64 48}
!83 = !{!74, !17, i64 0}
!84 = !{!74, !17, i64 8}
!85 = !{!74, !26, i64 16}
!86 = distinct !{!86, !52}
!87 = !{!74, !17, i64 4184}
!88 = !{!74, !17, i64 4192}
!89 = !{!74, !17, i64 4176}
!90 = distinct !{!90, !52}
!91 = distinct !{null}
!92 = distinct !{!92, !52}
!93 = distinct !{!93, !52}
!94 = distinct !{!94, !52}
!95 = distinct !{null}
!96 = distinct !{!96, !52}
!97 = distinct !{!97, !52, !54, !53}
!98 = distinct !{!98, !52}
!99 = distinct !{!99, !52, !53, !54}
!100 = distinct !{!100, !52, !53, !54}
!101 = distinct !{!101, !52, !54, !53}
!102 = distinct !{!102, !52, !53, !54}
!103 = distinct !{!103, !52, !54, !53}
!104 = !{!105, !26, i64 0}
!105 = !{!"s_slice", !75, i64 0, !17, i64 16, !8, i64 24}
!106 = !{!105, !17, i64 16}
!107 = !{!105, !8, i64 24}
!108 = distinct !{!108, !52}
!109 = !{!26, !26, i64 0}
!110 = distinct !{!110, !52}
!111 = distinct !{!111, !52}
!112 = distinct !{!112, !52}
!113 = distinct !{!113, !52}
!114 = distinct !{!114, !52}
!115 = distinct !{null}
!116 = distinct !{null, null, null}
!117 = distinct !{!117, !52}
!118 = distinct !{!118, !52}
!119 = distinct !{!119, !52, !120}
!120 = !{!"llvm.loop.peeled.count", i32 1}
!121 = distinct !{!121, !52}
!122 = distinct !{!122, !52}
!123 = !{!124, !17, i64 16}
!124 = !{!"", !24, i64 0, !17, i64 16, !13, i64 24}
!125 = !{!124, !13, i64 24}
!126 = !{!44, !13, i64 312}
!127 = distinct !{null}
!128 = distinct !{!128, !52}
!129 = distinct !{!129, !52}
!130 = distinct !{!130, !52}
!131 = distinct !{!131, !52}
!132 = distinct !{!132, !52}
!133 = !{!134, !17, i64 16}
!134 = !{!"", !24, i64 0, !17, i64 16, !17, i64 24, !135, i64 32, !136, i64 40}
!135 = !{!"p1 _ZTS15_dictkeysobject", !13, i64 0}
!136 = !{!"p1 _ZTS11_dictvalues", !13, i64 0}
!137 = distinct !{!137, !52}
!138 = distinct !{!138, !52}
!139 = !{!44, !13, i64 224}
!140 = !{!141, !17, i64 16}
!141 = !{!"", !24, i64 0, !17, i64 16, !17, i64 24, !142, i64 32}
!142 = !{!"_PyUnicodeObject_state", !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0}
!143 = !{!144, !145, i64 16}
!144 = !{!"", !24, i64 0, !145, i64 16}
!145 = !{!"double", !9, i64 0}
!146 = distinct !{!146, !52}
!147 = !{i64 0, i64 8, !109, i64 8, i64 8, !109, i64 16, i64 8, !56, i64 24, i64 4, !7}
!148 = distinct !{null}
!149 = distinct !{!149, !52}
!150 = !{!75, !26, i64 0}
!151 = !{!75, !26, i64 8}
!152 = distinct !{null}
!153 = distinct !{!153, !120}
!154 = distinct !{null, null}
!155 = distinct !{null, ptr @gallop_left}
!156 = distinct !{!156, !52}
!157 = distinct !{!157, !52}
!158 = distinct !{null}
!159 = distinct !{!159, !120}
!160 = distinct !{!160, !52}
!161 = distinct !{!161, !52}
!162 = distinct !{!162, !52}
!163 = !{!44, !45, i64 24}
!164 = distinct !{null}
!165 = distinct !{null, null}
!166 = distinct !{!166, !52}
!167 = distinct !{!167, !52}
!168 = distinct !{null}
!169 = distinct !{null, null}
!170 = distinct !{!170, !52, !53, !54}
!171 = distinct !{!171, !52, !54, !53}
!172 = distinct !{!172, !52}
!173 = distinct !{!173, !52, !53, !54}
!174 = distinct !{!174, !52, !54, !53}
!175 = !{!44, !13, i64 96}
!176 = !{!177, !13, i64 264}
!177 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280}
!178 = distinct !{null}
!179 = distinct !{!179, !52, !53, !54}
!180 = distinct !{!180, !52, !54, !53}
!181 = distinct !{!181, !52}
!182 = distinct !{!182, !52}
!183 = distinct !{!183, !52}
!184 = distinct !{!184, !52}
!185 = distinct !{null}
!186 = !{!44, !17, i64 32}
!187 = distinct !{null}
!188 = distinct !{!188, !52}
!189 = distinct !{!189, !52}
!190 = distinct !{null}
end_hunk_1
