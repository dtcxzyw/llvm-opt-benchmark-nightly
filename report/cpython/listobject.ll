Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/listobject?download=true
inline.NumInlined: 457
inline.NumDeleted: 100
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@list_sort_impl:bb.a
  br i1 %.not82.i, label %sortslice_reverse.exit97.i, label %sortslice_advance.exit.i

sortslice_advance.exit.i:                         ; preds = %bb.ao
  %i.ff = add i64 %.0146.i, 1                     ; 2 uses
  %i.fg = sub i64 %.169.in145.i, %.0146.i         ; 2 uses
  %i.fh = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %i.fg ; 3 uses
  %i.fi = getelementptr [8 x i8], ptr %.8.val.fr.i, i64 %i.fg ; 2 uses
  %spec.select.i205 = select i1 %.not.i83.i, ptr null, ptr %i.fi ; 3 uses
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
  br i1 %i.fo, label %.lr.ph.i.i93.i, label %reverse_slice.exit.i85.i, !llvm.loop !86

reverse_slice.exit.i85.i:                         ; preds = %.lr.ph.i.i93.i, %sortslice_advance.exit.i
  %.not.i86.i = icmp ne ptr %spec.select.i205, null
  %i.fp = getelementptr [8 x i8], ptr %spec.select.i205, i64 %i.ff
  %.01011.i6.i87.i = getelementptr i8, ptr %i.fp, i64 -8 ; 2 uses
  %i.fq = icmp ult ptr %spec.select.i205, %.01011.i6.i87.i
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
  br i1 %i.fu, label %.lr.ph.i7.i89.i, label %sortslice_reverse.exit97.i, !llvm.loop !86

bb.ap:                                            ; preds = %bb.an
  %i.fv = load ptr, ptr %i.dt, align 8, !tbaa !69
  %i.fw = load ptr, ptr %i.fb, align 8, !tbaa !50
  %i.fx = load ptr, ptr %i.ez, align 8, !tbaa !50
  %i.fy = call i32 %i.fv(ptr noundef %i.fw, ptr noundef %i.fx, ptr noundef nonnull %3) #13, !inline_history !87 ; 2 uses
  %i.fz = icmp slt i32 %i.fy, 0
  br i1 %i.fz, label %found_new_run.exit.thread283, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.not79.i = icmp eq i32 %i.fy, 0
  br i1 %.not79.i, label %bb.ar, label %._crit_edge149.i

bb.ar:                                            ; preds = %bb.aq
  %i.ga = add i64 %.0146.i, 1
  br label %sortslice_reverse.exit97.i

sortslice_reverse.exit97.i:                       ; preds = %.lr.ph.i7.i89.i, %bb.ar, %reverse_slice.exit.i85.i, %bb.ao
  %.1.i = phi i64 [ %i.ga, %bb.ar ], [ 0, %bb.ao ], [ 0, %reverse_slice.exit.i85.i ], [ 0, %.lr.ph.i7.i89.i ] ; 2 uses
  %.169.i = add nsw i64 %.169147.i, 1             ; 2 uses
  %exitcond166.not.i = icmp eq i64 %.169.i, %.0159
  br i1 %exitcond166.not.i, label %._crit_edge149.i, label %bb.am, !llvm.loop !89

._crit_edge149.i:                                 ; preds = %sortslice_reverse.exit97.i, %bb.aq
  %.169.in.lcssa.i = phi i64 [ %.169.in145.i, %bb.aq ], [ %.169147.i, %sortslice_reverse.exit97.i ]
  %.0.lcssa.i = phi i64 [ %.0146.i, %bb.aq ], [ %.1.i, %sortslice_reverse.exit97.i ] ; 3 uses
  %.169.lcssa.i = phi i64 [ %.169147.i, %bb.aq ], [ %.0159, %sortslice_reverse.exit97.i ] ; 3 uses
  %.not80.i = icmp eq i64 %.0.lcssa.i, 0
  br i1 %.not80.i, label %sortslice_reverse.exit113.i, label %sortslice_advance.exit99.i

sortslice_advance.exit99.i:                       ; preds = %._crit_edge149.i
  %i.gb = add i64 %.0.lcssa.i, 1                  ; 2 uses
  %i.gc = sub i64 %.169.in.lcssa.i, %.0.lcssa.i   ; 2 uses
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
  br i1 %i.gk, label %.lr.ph.i.i109.i, label %reverse_slice.exit.i101.i, !llvm.loop !86

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
  br i1 %i.gq, label %.lr.ph.i7.i105.i, label %sortslice_reverse.exit113.i, !llvm.loop !86

sortslice_reverse.exit113.i:                      ; preds = %.lr.ph.i7.i105.i, %reverse_slice.exit.i101.i, %._crit_edge149.i, %sortslice_reverse.exit.i
  %.169.lcssa191.i = phi i64 [ %.169144.i, %sortslice_reverse.exit.i ], [ %.169.lcssa.i, %._crit_edge149.i ], [ %.169.lcssa.i, %reverse_slice.exit.i101.i ], [ %.169.lcssa.i, %.lr.ph.i7.i105.i ] ; 5 uses
  %i.gr = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %.169.lcssa191.i
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
  br i1 %i.gw, label %.lr.ph.i.i123.i, label %reverse_slice.exit.i115.i, !llvm.loop !86

reverse_slice.exit.i115.i:                        ; preds = %.lr.ph.i.i123.i, %sortslice_reverse.exit113.i
  %.not.i116.i = icmp ne ptr %.8.val.fr.i, null
  %i.gx = getelementptr [8 x i8], ptr %.8.val.fr.i, i64 %.169.lcssa191.i
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
  br i1 %i.hc, label %.lr.ph.i7.i119.i, label %sortslice_reverse.exit127.i, !llvm.loop !86

sortslice_reverse.exit127.i:                      ; preds = %.lr.ph.i7.i119.i, %reverse_slice.exit.i115.i
  %i.hd = icmp slt i64 %.169.lcssa191.i, %.0159
  br i1 %i.hd, label %.lr.ph158.i, label %count_run.exit

.lr.ph158.i:                                      ; preds = %sortslice_reverse.exit127.i, %bb.at
  %.2157.i = phi i64 [ %i.hl, %bb.at ], [ %.169.lcssa191.i, %sortslice_reverse.exit127.i ] ; 3 uses
  %i.he = load ptr, ptr %i.dt, align 8, !tbaa !69
  %i.hf = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %.2157.i ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !50
  %i.hh = getelementptr i8, ptr %i.hf, i64 -8
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !50
  %i.hj = call i32 %i.he(ptr noundef %i.hg, ptr noundef %i.hi, ptr noundef nonnull %3) #13, !inline_history !87 ; 2 uses
  %i.hk = icmp slt i32 %i.hj, 0
  br i1 %i.hk, label %found_new_run.exit.thread283, label %bb.as

bb.as:                                            ; preds = %.lr.ph158.i
  %.not81.i = icmp eq i32 %i.hj, 0
  br i1 %.not81.i, label %bb.at, label %count_run.exit

bb.at:                                            ; preds = %bb.as
  %i.hl = add i64 %.2157.i, 1                     ; 2 uses
  %exitcond167.not.i = icmp eq i64 %i.hl, %.0159
  br i1 %exitcond167.not.i, label %count_run.exit, label %.lr.ph158.i, !llvm.loop !90

count_run.exit:                                   ; preds = %bb.ai, %bb.as, %bb.at, %sortslice_reverse.exit127.i
  %.070.i = phi i64 [ %.169.lcssa191.i, %sortslice_reverse.exit127.i ], [ %.0159, %bb.at ], [ %.2157.i, %bb.as ], [ %.0159, %bb.ai ] ; 2 uses
  %i.hm = icmp slt i64 %.070.i, 0
  br i1 %i.hm, label %found_new_run.exit.thread283, label %count_run.exit.thread275

count_run.exit.thread275:                         ; preds = %._crit_edge.thread182.i, %bb.ak, %count_run.exit
  %.070.i277 = phi i64 [ %.070.i, %count_run.exit ], [ 1, %._crit_edge.thread182.i ], [ %.068141.i, %bb.ak ] ; 3 uses
  %i.hn = load i64, ptr %i.cv, align 8, !tbaa !80
  %i.ho = load i64, ptr %i.df, align 8, !tbaa !85
  %i.hp = add i64 %i.ho, %i.hn                    ; 2 uses
  %i.hq = load i64, ptr %i.da, align 8, !tbaa !83
  %i.hr = ashr i64 %i.hp, %i.hq                   ; 2 uses
  %i.hs = load i64, ptr %i.de, align 8, !tbaa !84
  %i.ht = and i64 %i.hs, %i.hp
  store i64 %i.ht, ptr %i.df, align 8, !tbaa !85
  %i.hu = icmp slt i64 %.070.i277, %i.hr
  br i1 %i.hu, label %bb.au, label %binarysort.exit.thread

bb.au:                                            ; preds = %count_run.exit.thread275
  %i.hv = call i64 @llvm.smin.i64(i64 %.0159, i64 %i.hr) ; 6 uses
  %spec.select.i208 = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.070.i277, i64 1) ; 3 uses
  %i.hw = icmp slt i64 %spec.select.i208, %i.hv
  br i1 %i.hw, label %.lr.ph10.i, label %binarysort.exit.thread

.lr.ph10.i:                                       ; preds = %bb.au
  %.not.i209 = icmp eq ptr %.8.val.fr.i, null
  %scevgep21.i = getelementptr i8, ptr %.sroa.0.1, i64 8 ; 2 uses
  br i1 %.not.i209, label %.lr.ph10.split.us.i, label %.lr.ph10.split.preheader.i

.lr.ph10.split.preheader.i:                       ; preds = %.lr.ph10.i
  %scevgep17.i = getelementptr i8, ptr %.8.val.fr.i, i64 8
  br label %.lr.ph10.split.i

.lr.ph10.split.us.i:                              ; preds = %.lr.ph10.i, %._crit_edge.us.i
  %.1537.us.i = phi i64 [ %i.ij, %._crit_edge.us.i ], [ %spec.select.i208, %.lr.ph10.i ] ; 5 uses
  %i.hx = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %.1537.us.i
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !50 ; 2 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.aw, %.lr.ph10.split.us.i
  %.048.us.i = phi i64 [ 0, %.lr.ph10.split.us.i ], [ %.149.us.i, %bb.aw ] ; 2 uses
  %.0.us.i = phi i64 [ %.1537.us.i, %.lr.ph10.split.us.i ], [ %.1.us.i, %bb.aw ] ; 2 uses
  %i.hz = add i64 %.0.us.i, %.048.us.i
  %i.ia = ashr i64 %i.hz, 1                       ; 3 uses
  %i.ib = load ptr, ptr %i.dt, align 8, !tbaa !69
  %i.ic = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %i.ia
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !50
  %i.ie = call i32 %i.ib(ptr noundef %i.hy, ptr noundef %i.id, ptr noundef nonnull %3) #13, !inline_history !91 ; 2 uses
  %i.if = icmp slt i32 %i.ie, 0
  br i1 %i.if, label %found_new_run.exit.thread283, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.not60.us.i = icmp eq i32 %i.ie, 0             ; 2 uses
  %i.ig = add nsw i64 %i.ia, 1
  %.149.us.i = select i1 %.not60.us.i, i64 %i.ig, i64 %.048.us.i ; 6 uses
  %.1.us.i = select i1 %.not60.us.i, i64 %.0.us.i, i64 %i.ia ; 2 uses
  %i.ih = icmp slt i64 %.149.us.i, %.1.us.i
  br i1 %i.ih, label %bb.av, label %.preheader.us.i, !llvm.loop !92

._crit_edge.us.i:                                 ; preds = %.lr.ph.us.preheader.i, %.preheader.us.i
  %i.ii = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %.149.us.i
  store ptr %i.hy, ptr %i.ii, align 8, !tbaa !50
  %i.ij = add nuw nsw i64 %.1537.us.i, 1          ; 2 uses
  %exitcond27.not.i = icmp eq i64 %i.ij, %i.hv
  br i1 %exitcond27.not.i, label %binarysort.exit.thread, label %.lr.ph10.split.us.i, !llvm.loop !93

.preheader.us.i:                                  ; preds = %bb.aw
  %i.ik = icmp sgt i64 %.1537.us.i, %.149.us.i
  br i1 %i.ik, label %.lr.ph.us.preheader.i, label %._crit_edge.us.i

.lr.ph.us.preheader.i:                            ; preds = %.preheader.us.i
  %i.il = shl i64 %.149.us.i, 3                   ; 2 uses
  %scevgep23.i = getelementptr i8, ptr %scevgep21.i, i64 %i.il
  %scevgep24.i = getelementptr i8, ptr %.sroa.0.1, i64 %i.il
  %i.im = sub i64 %.1537.us.i, %.149.us.i
  %i.in = shl i64 %i.im, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep23.i, ptr align 8 %scevgep24.i, i64 %i.in, i1 false), !tbaa !50
  br label %._crit_edge.us.i

.lr.ph10.split.i:                                 ; preds = %._crit_edge6.i, %.lr.ph10.split.preheader.i
  %.1537.i = phi i64 [ %i.jl, %._crit_edge6.i ], [ %spec.select.i208, %.lr.ph10.split.preheader.i ] ; 7 uses
  %i.io = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %.1537.i
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !50 ; 3 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ay, %.lr.ph10.split.i
  %.048.i = phi i64 [ 0, %.lr.ph10.split.i ], [ %.149.i, %bb.ay ] ; 2 uses
  %.0.i = phi i64 [ %.1537.i, %.lr.ph10.split.i ], [ %.1.i210, %bb.ay ] ; 2 uses
  %i.iq = add i64 %.0.i, %.048.i
  %i.ir = ashr i64 %i.iq, 1                       ; 3 uses
  %i.is = load ptr, ptr %i.dt, align 8, !tbaa !69
  %i.it = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %i.ir
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !50
  %i.iv = call i32 %i.is(ptr noundef %i.ip, ptr noundef %i.iu, ptr noundef nonnull %3) #13, !inline_history !91 ; 2 uses
  %i.iw = icmp slt i32 %i.iv, 0
  br i1 %i.iw, label %found_new_run.exit.thread283, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.not60.i = icmp eq i32 %i.iv, 0                ; 2 uses
  %i.ix = add nsw i64 %i.ir, 1
  %.149.i = select i1 %.not60.i, i64 %i.ix, i64 %.048.i ; 8 uses
  %.1.i210 = select i1 %.not60.i, i64 %.0.i, i64 %i.ir ; 2 uses
  %i.iy = icmp slt i64 %.149.i, %.1.i210
  br i1 %i.iy, label %bb.ax, label %.preheader.i, !llvm.loop !92

.preheader.i:                                     ; preds = %bb.ay
  %i.iz = icmp sgt i64 %.1537.i, %.149.i
  br i1 %i.iz, label %.lr.ph5.preheader.i, label %._crit_edge.i211

._crit_edge.i211:                                 ; preds = %.preheader.i
  %i.ja = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %.149.i
  store ptr %i.ip, ptr %i.ja, align 8, !tbaa !50
  %i.jb = getelementptr [8 x i8], ptr %.8.val.fr.i, i64 %.1537.i
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !50
  br label %._crit_edge6.i

.lr.ph5.preheader.i:                              ; preds = %.preheader.i
  %i.jd = shl i64 %.149.i, 3                      ; 4 uses
  %scevgep15.i = getelementptr i8, ptr %scevgep21.i, i64 %i.jd
  %scevgep16.i = getelementptr i8, ptr %.sroa.0.1, i64 %i.jd
  %i.je = sub i64 %.1537.i, %.149.i
  %i.jf = shl i64 %i.je, 3                        ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep15.i, ptr align 8 %scevgep16.i, i64 %i.jf, i1 false), !tbaa !50
  %i.jg = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %.149.i
  store ptr %i.ip, ptr %i.jg, align 8, !tbaa !50
  %i.jh = getelementptr [8 x i8], ptr %.8.val.fr.i, i64 %.1537.i
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !50
  %scevgep19.i = getelementptr i8, ptr %scevgep17.i, i64 %i.jd
  %scevgep20.i = getelementptr i8, ptr %.8.val.fr.i, i64 %i.jd
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep19.i, ptr align 8 %scevgep20.i, i64 %i.jf, i1 false), !tbaa !50
  br label %._crit_edge6.i

._crit_edge6.i:                                   ; preds = %.lr.ph5.preheader.i, %._crit_edge.i211
  %i.jj = phi ptr [ %i.ji, %.lr.ph5.preheader.i ], [ %i.jc, %._crit_edge.i211 ]
  %i.jk = getelementptr [8 x i8], ptr %.8.val.fr.i, i64 %.149.i
  store ptr %i.jj, ptr %i.jk, align 8, !tbaa !50
  %i.jl = add nuw nsw i64 %.1537.i, 1             ; 2 uses
  %exitcond.not.i212 = icmp eq i64 %i.jl, %i.hv
  br i1 %exitcond.not.i212, label %binarysort.exit.thread, label %.lr.ph10.split.i, !llvm.loop !93

binarysort.exit.thread:                           ; preds = %._crit_edge6.i, %._crit_edge.us.i, %bb.au, %count_run.exit.thread275
  %.1 = phi i64 [ %.070.i277, %count_run.exit.thread275 ], [ %i.hv, %bb.au ], [ %i.hv, %._crit_edge.us.i ], [ %i.hv, %._crit_edge6.i ] ; 5 uses
  %i.jm = load i32, ptr %i.cu, align 8, !tbaa !78 ; 2 uses
  %.not.i213 = icmp eq i32 %i.jm, 0
  br i1 %.not.i213, label %found_new_run.exit, label %bb.az

bb.az:                                            ; preds = %binarysort.exit.thread
  %i.jn = add i32 %i.jm, -1
  %i.jo = sext i32 %i.jn to i64
  %i.jp = getelementptr [32 x i8], ptr %i.du, i64 %i.jo ; 2 uses
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !94
  %i.jr = load ptr, ptr %i.cw, align 8, !tbaa !81
  %i.js = ptrtoint ptr %i.jq to i64
  %i.jt = ptrtoint ptr %i.jr to i64
  %i.ju = sub i64 %i.js, %i.jt
  %i.jv = getelementptr i8, ptr %i.jp, i64 16
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !96 ; 2 uses
  %i.jx = load i64, ptr %i.cv, align 8, !tbaa !80 ; 4 uses
  %i.jy = ashr exact i64 %i.ju, 2
  %i.jz = add i64 %i.jy, %i.jw                    ; 2 uses
  %i.ka = add i64 %i.jw, %.1
  %i.kb = add i64 %i.ka, %i.jz
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bd, %bb.az
  %.019.i.i = phi i32 [ 0, %bb.az ], [ %i.kc, %bb.bd ]
  %.017.i.i = phi i64 [ %i.jz, %bb.az ], [ %i.kf, %bb.bd ] ; 3 uses
  %.0.i.i = phi i64 [ %i.kb, %bb.az ], [ %i.kg, %bb.bd ] ; 3 uses
  %i.kc = add i32 %.019.i.i, 1                    ; 3 uses
  %.not.i.i214 = icmp slt i64 %.017.i.i, %i.jx
  br i1 %.not.i.i214, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kd = sub i64 %.017.i.i, %i.jx
  %i.ke = sub i64 %.0.i.i, %i.jx
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %.not22.i.i = icmp slt i64 %.0.i.i, %i.jx
  br i1 %.not22.i.i, label %bb.bd, label %powerloop.exit.i

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.118.i.i = phi i64 [ %i.kd, %bb.bb ], [ %.017.i.i, %bb.bc ]
  %.1.i.i = phi i64 [ %i.ke, %bb.bb ], [ %.0.i.i, %bb.bc ]
  %i.kf = shl i64 %.118.i.i, 1
  %i.kg = shl i64 %.1.i.i, 1
  br label %bb.ba

powerloop.exit.i:                                 ; preds = %bb.bc, %bb.bf
  %i.kh = load i32, ptr %i.cu, align 8, !tbaa !78 ; 4 uses
  %i.ki = icmp sgt i32 %i.kh, 1
  br i1 %i.ki, label %bb.be, label %.thread.i

bb.be:                                            ; preds = %powerloop.exit.i
  %i.kj = add nsw i32 %i.kh, -2
  %i.kk = zext nneg i32 %i.kj to i64              ; 2 uses
  %i.kl = getelementptr [32 x i8], ptr %i.du, i64 %i.kk
  %i.km = getelementptr i8, ptr %i.kl, i64 24
  %i.kn = load i32, ptr %i.km, align 8, !tbaa !97
  %i.ko = icmp sgt i32 %i.kn, %i.kc
  br i1 %i.ko, label %bb.bf, label %.thread.i

bb.bf:                                            ; preds = %bb.be
  %i.kp = call fastcc i64 @merge_at(ptr noundef nonnull %3, i64 noundef %i.kk)
  %i.kq = icmp slt i64 %i.kp, 0
  br i1 %i.kq, label %found_new_run.exit.thread283, label %powerloop.exit.i, !llvm.loop !98

.thread.i:                                        ; preds = %bb.be, %powerloop.exit.i
  %i.kr = add i32 %i.kh, -1
  %i.ks = sext i32 %i.kr to i64
  %i.kt = getelementptr [32 x i8], ptr %i.du, i64 %i.ks
  %i.ku = getelementptr i8, ptr %i.kt, i64 24
  store i32 %i.kc, ptr %i.ku, align 8, !tbaa !97
  br label %found_new_run.exit

found_new_run.exit:                               ; preds = %binarysort.exit.thread, %.thread.i
  %i.kv = phi i32 [ 0, %binarysort.exit.thread ], [ %i.kh, %.thread.i ] ; 2 uses
  %i.kw = sext i32 %i.kv to i64
  %i.kx = getelementptr [32 x i8], ptr %i.du, i64 %i.kw ; 3 uses
  store ptr %.sroa.0.1, ptr %i.kx, align 8, !tbaa !99
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  store ptr %.8.val.fr.i, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !99
  %i.ky = getelementptr i8, ptr %i.kx, i64 16
  store i64 %.1, ptr %i.ky, align 8, !tbaa !96
  %i.kz = add i32 %i.kv, 1
  store i32 %i.kz, ptr %i.cu, align 8, !tbaa !78
  %i.la = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %.1
  %.not.i216 = icmp eq ptr %.8.val.fr.i, null
  %i.lb = getelementptr [8 x i8], ptr %.8.val.fr.i, i64 %.1
  %spec.select293 = select i1 %.not.i216, ptr null, ptr %i.lb
  %i.lc = sub i64 %.0159, %.1                     ; 2 uses
  %.not181 = icmp eq i64 %i.lc, 0
  br i1 %.not181, label %.preheader437, label %bb.ag, !llvm.loop !100

.preheader437:                                    ; preds = %found_new_run.exit, %bb.bi
  %i.ld = load i32, ptr %i.cu, align 8, !tbaa !78 ; 2 uses
  %i.le = icmp slt i32 %i.ld, 2                   ; 3 uses
  br i1 %i.le, label %found_new_run.exit.thread283, label %bb.bg

bb.bg:                                            ; preds = %.preheader437
  %i.lf = add nsw i32 %i.ld, -2                   ; 2 uses
  %.not.i217 = icmp eq i32 %i.lf, 0
  br i1 %.not.i217, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.lg = zext nneg i32 %i.lf to i64              ; 2 uses
  %i.lh = getelementptr [32 x i8], ptr %i.du, i64 %i.lg ; 2 uses
  %i.li = getelementptr i8, ptr %i.lh, i64 -16
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !96
  %i.lk = getelementptr i8, ptr %i.lh, i64 48
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !96
  %i.lm = icmp slt i64 %i.lj, %i.ll
  %i.ln = sext i1 %i.lm to i64
  %spec.select.i218 = add nsw i64 %i.ln, %i.lg
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.012.i219 = phi i64 [ 0, %bb.bg ], [ %spec.select.i218, %bb.bh ]
  %i.lo = call fastcc i64 @merge_at(ptr noundef nonnull %3, i64 noundef %.012.i219)
  %i.lp = icmp sgt i64 %i.lo, -1
  br i1 %i.lp, label %.preheader437, label %found_new_run.exit.thread283, !llvm.loop !101

found_new_run.exit.thread283:                     ; preds = %bb.aj, %count_run.exit, %.lr.ph.i206, %bb.ap, %bb.am, %.lr.ph158.i, %bb.bf, %bb.ax, %bb.av, %.preheader437, %bb.bi, %merge_init.exit
  %i.lq = phi i1 [ false, %.lr.ph.i206 ], [ false, %bb.ap ], [ true, %merge_init.exit ], [ false, %bb.ax ], [ %i.le, %.preheader437 ], [ false, %.lr.ph158.i ], [ false, %bb.av ], [ false, %bb.bf ], [ %i.le, %bb.bi ], [ false, %bb.am ], [ false, %count_run.exit ], [ false, %bb.aj ]
  %.0156 = phi ptr [ null, %.lr.ph.i206 ], [ null, %bb.ap ], [ @_Py_NoneStruct, %merge_init.exit ], [ null, %bb.ax ], [ @_Py_NoneStruct, %.preheader437 ], [ null, %.lr.ph158.i ], [ null, %bb.av ], [ null, %bb.bf ], [ null, %bb.bi ], [ null, %bb.am ], [ null, %count_run.exit ], [ null, %bb.aj ]
  %i.lr = icmp sgt i64 %.val189, 0
  %or.cond435 = select i1 %i.ck, i1 %i.lr, i1 false
  br i1 %or.cond435, label %.lr.ph338, label %._crit_edge339.thread

.lr.ph338:                                        ; preds = %found_new_run.exit.thread283, %Py_DECREF.exit
  %.3155337 = phi i64 [ %i.lx, %Py_DECREF.exit ], [ 0, %found_new_run.exit.thread283 ] ; 2 uses
  %i.ls = getelementptr [8 x i8], ptr %.1151411, i64 %.3155337
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !50 ; 3 uses
  %i.lu = load i32, ptr %i.lt, align 8, !tbaa !28 ; 2 uses
  %.not.i = icmp sgt i32 %i.lu, -1
  br i1 %.not.i, label %bb.bj, label %Py_DECREF.exit

bb.bj:                                            ; preds = %.lr.ph338
  %i.lv = add nsw i32 %i.lu, -1                   ; 2 uses
  store i32 %i.lv, ptr %i.lt, align 8, !tbaa !28
  %i.lw = icmp eq i32 %i.lv, 0
  br i1 %i.lw, label %bb.bk, label %Py_DECREF.exit

bb.bk:                                            ; preds = %bb.bj
  call void @_Py_Dealloc(ptr noundef nonnull %i.lt) #13
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %.lr.ph338, %bb.bj, %bb.bk
  %i.lx = add nuw nsw i64 %.3155337, 1            ; 2 uses
  %exitcond364.not = icmp eq i64 %i.lx, %.val189
  br i1 %exitcond364.not, label %._crit_edge339, label %.lr.ph338, !llvm.loop !102

._crit_edge339:                                   ; preds = %Py_DECREF.exit
  %i.ly = icmp sgt i64 %.val189, 127
  br i1 %i.ly, label %bb.bl, label %._crit_edge339.thread

bb.bl:                                            ; preds = %._crit_edge339
  call void @PyMem_Free(ptr noundef nonnull %.1151411) #13
  br label %._crit_edge339.thread

._crit_edge339.thread:                            ; preds = %._crit_edge339, %bb.bl, %found_new_run.exit.thread283
  %i.lz = load i64, ptr %i.e, align 8, !tbaa !30
  %i.ma = icmp ne i64 %i.lz, -1
  %or.cond9 = and i1 %i.lq, %i.ma
  br i1 %or.cond9, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %._crit_edge339.thread
  %i.mb = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !50
  call void @PyErr_SetString(ptr noundef %i.mb, ptr noundef nonnull @.str.10) #13
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %._crit_edge339.thread
  %.1157 = phi ptr [ null, %bb.bm ], [ %.0156, %._crit_edge339.thread ] ; 2 uses
  %i.mc = icmp ne i32 %2, 0
  %or.cond11 = and i1 %i.mc, %i.cj
  %i.md = getelementptr [8 x i8], ptr %i.d, i64 %.val189
  %.01011.i220 = getelementptr i8, ptr %i.md, i64 -8 ; 2 uses
  %i.me = icmp ult ptr %i.d, %.01011.i220
  %or.cond295 = select i1 %or.cond11, i1 %i.me, i1 false
  br i1 %or.cond295, label %.lr.ph.i222, label %reverse_slice.exit226

.lr.ph.i222:                                      ; preds = %bb.bn, %.lr.ph.i222
  %.01013.i223 = phi ptr [ %.010.i225, %.lr.ph.i222 ], [ %.01011.i220, %bb.bn ] ; 3 uses
  %.012.i224 = phi ptr [ %i.mh, %.lr.ph.i222 ], [ %i.d, %bb.bn ] ; 3 uses
  %i.mf = load ptr, ptr %.012.i224, align 8, !tbaa !50
  %i.mg = load ptr, ptr %.01013.i223, align 8, !tbaa !50
  store ptr %i.mg, ptr %.012.i224, align 8, !tbaa !50
  store ptr %i.mf, ptr %.01013.i223, align 8, !tbaa !50
  %i.mh = getelementptr i8, ptr %.012.i224, i64 8 ; 2 uses
  %.010.i225 = getelementptr i8, ptr %.01013.i223, i64 -8 ; 2 uses
  %i.mi = icmp ult ptr %i.mh, %.010.i225
  br i1 %i.mi, label %.lr.ph.i222, label %reverse_slice.exit226, !llvm.loop !86

reverse_slice.exit226:                            ; preds = %.lr.ph.i222, %bb.bn
  %i.mj = load ptr, ptr %i.ct, align 8, !tbaa !77 ; 2 uses
  %.not.i227 = icmp eq ptr %i.mj, %i.cs
  br i1 %.not.i227, label %merge_freemem.exit, label %bb.bo

end_hunk_0
