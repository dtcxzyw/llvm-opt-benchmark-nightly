Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_herringbone_wang_tile?download=true
inline.NumInlined: 76
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 43
begin_hunk_0_@stbhw_generate_image:bb.a
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !62
  %.not447 = icmp eq i8 %i.ej, %i.el
  br i1 %.not447, label %bb.ae, label %bb.as

bb.ae:                                            ; preds = %bb.ad
  %i.em = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.dy
  %i.en = getelementptr i8, ptr %i.em, i64 107
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !62
  %.not448 = icmp eq i8 %i.dx, %i.eo
  br i1 %.not448, label %bb.af, label %bb.as

bb.af:                                            ; preds = %bb.ae
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ed ; 2 uses
  %i.eq = getelementptr i8, ptr %i.ep, i64 107
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !62
  %.not449 = icmp eq i8 %i.ea, %i.er
  br i1 %.not449, label %bb.ag, label %bb.as

bb.ag:                                            ; preds = %bb.af
  %i.es = sub i64 %i.ed, %indvars.iv518
  %i.et = and i64 %i.es, 3                        ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !34 ; 6 uses
  %i.ew = icmp sgt i32 %i.ev, 1
  br i1 %i.ew, label %bb.ah, label %bb.as

bb.ah:                                            ; preds = %bb.ag
  %i.ex = sext i8 %i.ea to i32                    ; 2 uses
  br i1 %.not313, label %.thread418, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.et
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !71 ; 7 uses
  %.not.i338 = icmp eq ptr %i.ez, null
  br i1 %.not.i338, label %.thread418, label %.lr.ph.preheader.i342

.lr.ph.preheader.i342:                            ; preds = %bb.ai
  %i.fa = zext i32 %i.ex to i64                   ; 6 uses
  %wide.trip.count.i343 = zext nneg i32 %i.ev to i64 ; 3 uses
  %xtraiter627 = and i64 %wide.trip.count.i343, 3 ; 3 uses
  %i.fb = icmp ult i32 %i.ev, 4
  br i1 %i.fb, label %.lr.ph.i344.epil.preheader, label %.lr.ph.preheader.i342.new

.lr.ph.preheader.i342.new:                        ; preds = %.lr.ph.preheader.i342
  %unroll_iter632 = and i64 %wide.trip.count.i343, 2147483644
  br label %.lr.ph.i344

.lr.ph.i344:                                      ; preds = %bb.an, %.lr.ph.preheader.i342.new
  %indvars.iv.i345 = phi i64 [ 0, %.lr.ph.preheader.i342.new ], [ %indvars.iv.next.i349.3, %bb.an ] ; 6 uses
  %.02534.i346 = phi i32 [ 0, %.lr.ph.preheader.i342.new ], [ %.1.i348.3, %bb.an ] ; 2 uses
  %niter633 = phi i64 [ 0, %.lr.ph.preheader.i342.new ], [ %niter633.next.3, %bb.an ]
  %.not32.i347 = icmp eq i64 %indvars.iv.i345, %i.fa
  br i1 %.not32.i347, label %.lr.ph.i344.1, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i344
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv.i345
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !34
  %i.fe = add nsw i32 %i.fd, %.02534.i346
  br label %.lr.ph.i344.1

.lr.ph.i344.1:                                    ; preds = %bb.aj, %.lr.ph.i344
  %.1.i348 = phi i32 [ %i.fe, %bb.aj ], [ %.02534.i346, %.lr.ph.i344 ] ; 2 uses
  %indvars.iv.next.i349 = or disjoint i64 %indvars.iv.i345, 1 ; 2 uses
  %.not32.i347.1 = icmp eq i64 %indvars.iv.next.i349, %i.fa
  br i1 %.not32.i347.1, label %.lr.ph.i344.2, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i344.1
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv.next.i349
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !34
  %i.fh = add nsw i32 %i.fg, %.1.i348
  br label %.lr.ph.i344.2

.lr.ph.i344.2:                                    ; preds = %bb.ak, %.lr.ph.i344.1
  %.1.i348.1 = phi i32 [ %i.fh, %bb.ak ], [ %.1.i348, %.lr.ph.i344.1 ] ; 2 uses
  %indvars.iv.next.i349.1 = or disjoint i64 %indvars.iv.i345, 2 ; 2 uses
  %.not32.i347.2 = icmp eq i64 %indvars.iv.next.i349.1, %i.fa
  br i1 %.not32.i347.2, label %.lr.ph.i344.3, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i344.2
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv.next.i349.1
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !34
  %i.fk = add nsw i32 %i.fj, %.1.i348.1
  br label %.lr.ph.i344.3

.lr.ph.i344.3:                                    ; preds = %bb.al, %.lr.ph.i344.2
  %.1.i348.2 = phi i32 [ %i.fk, %bb.al ], [ %.1.i348.1, %.lr.ph.i344.2 ] ; 2 uses
  %indvars.iv.next.i349.2 = or disjoint i64 %indvars.iv.i345, 3 ; 2 uses
  %.not32.i347.3 = icmp eq i64 %indvars.iv.next.i349.2, %i.fa
  br i1 %.not32.i347.3, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i344.3
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv.next.i349.2
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !34
  %i.fn = add nsw i32 %i.fm, %.1.i348.2
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.lr.ph.i344.3
  %.1.i348.3 = phi i32 [ %i.fn, %bb.am ], [ %.1.i348.2, %.lr.ph.i344.3 ] ; 3 uses
  %indvars.iv.next.i349.3 = add nuw nsw i64 %indvars.iv.i345, 4 ; 2 uses
  %niter633.next.3 = add i64 %niter633, 4         ; 2 uses
  %niter633.ncmp.3 = icmp eq i64 %niter633.next.3, %unroll_iter632
  br i1 %niter633.ncmp.3, label %._crit_edge.i351.unr-lcssa, label %.lr.ph.i344, !llvm.loop !79

._crit_edge.i351.unr-lcssa:                       ; preds = %bb.an
  %lcmp.mod629.not = icmp eq i64 %xtraiter627, 0
  br i1 %lcmp.mod629.not, label %._crit_edge.i351, label %.lr.ph.i344.epil.preheader

.lr.ph.i344.epil.preheader:                       ; preds = %._crit_edge.i351.unr-lcssa, %.lr.ph.preheader.i342
  %indvars.iv.i345.epil.init = phi i64 [ 0, %.lr.ph.preheader.i342 ], [ %indvars.iv.next.i349.3, %._crit_edge.i351.unr-lcssa ]
  %.02534.i346.epil.init = phi i32 [ 0, %.lr.ph.preheader.i342 ], [ %.1.i348.3, %._crit_edge.i351.unr-lcssa ]
  %lcmp.mod631 = icmp ne i64 %xtraiter627, 0
  tail call void @llvm.assume(i1 %lcmp.mod631)
  br label %.lr.ph.i344.epil

.lr.ph.i344.epil:                                 ; preds = %bb.ap, %.lr.ph.i344.epil.preheader
  %indvars.iv.i345.epil = phi i64 [ %indvars.iv.i345.epil.init, %.lr.ph.i344.epil.preheader ], [ %indvars.iv.next.i349.epil, %bb.ap ] ; 3 uses
  %.02534.i346.epil = phi i32 [ %.02534.i346.epil.init, %.lr.ph.i344.epil.preheader ], [ %.1.i348.epil, %bb.ap ] ; 2 uses
  %epil.iter628 = phi i64 [ 0, %.lr.ph.i344.epil.preheader ], [ %epil.iter628.next, %bb.ap ]
  %.not32.i347.epil = icmp eq i64 %indvars.iv.i345.epil, %i.fa
  br i1 %.not32.i347.epil, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i344.epil
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv.i345.epil
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !34
  %i.fq = add nsw i32 %i.fp, %.02534.i346.epil
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.lr.ph.i344.epil
  %.1.i348.epil = phi i32 [ %i.fq, %bb.ao ], [ %.02534.i346.epil, %.lr.ph.i344.epil ] ; 2 uses
  %indvars.iv.next.i349.epil = add nuw nsw i64 %indvars.iv.i345.epil, 1
  %epil.iter628.next = add i64 %epil.iter628, 1   ; 2 uses
  %epil.iter628.cmp.not = icmp eq i64 %epil.iter628.next, %xtraiter627
  br i1 %epil.iter628.cmp.not, label %._crit_edge.i351, label %.lr.ph.i344.epil, !llvm.loop !92

._crit_edge.i351:                                 ; preds = %bb.ap, %._crit_edge.i351.unr-lcssa
  %.1.i348.lcssa = phi i32 [ %.1.i348.3, %._crit_edge.i351.unr-lcssa ], [ %.1.i348.epil, %bb.ap ]
  %i.fr = tail call i32 @rand() #16
  %i.fs = ashr i32 %i.fr, 4
  %i.ft = srem i32 %i.fs, %.1.i348.lcssa
  br label %.lr.ph38.i353

.lr.ph38.i353:                                    ; preds = %bb.ar, %._crit_edge.i351
  %indvars.iv43.i354 = phi i64 [ 0, %._crit_edge.i351 ], [ %indvars.iv.next44.i358, %bb.ar ] ; 4 uses
  %.236.i355 = phi i32 [ 0, %._crit_edge.i351 ], [ %.3.i357, %bb.ar ] ; 2 uses
  %.not31.i356 = icmp eq i64 %indvars.iv43.i354, %i.fa
  br i1 %.not31.i356, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph38.i353
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv43.i354
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !34
  %i.fw = add nsw i32 %i.fv, %.236.i355           ; 2 uses
  %i.fx = icmp slt i32 %i.ft, %i.fw
  br i1 %i.fx, label %.loopexit.loopexit.split.loop.exit53.i360, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.lr.ph38.i353
  %.3.i357 = phi i32 [ %i.fw, %bb.aq ], [ %.236.i355, %.lr.ph38.i353 ]
  %indvars.iv.next44.i358 = add nuw nsw i64 %indvars.iv43.i354, 1 ; 2 uses
  %exitcond47.not.i359 = icmp eq i64 %indvars.iv.next44.i358, %wide.trip.count.i343
  br i1 %exitcond47.not.i359, label %stbhw__change_color.exit361, label %.lr.ph38.i353, !llvm.loop !82

.thread418:                                       ; preds = %bb.ah, %bb.ai
  %i.fy = tail call i32 @rand() #16
  %i.fz = ashr i32 %i.fy, 4
  %i.ga = add nsw i32 %i.ev, -1
  %i.gb = srem i32 %i.fz, %i.ga
  %i.gc = add nsw i32 %i.ex, 1
  %i.gd = add nsw i32 %i.gc, %i.gb
  %i.ge = srem i32 %i.gd, %i.ev
  br label %stbhw__change_color.exit361

.loopexit.loopexit.split.loop.exit53.i360:        ; preds = %bb.aq
  %i.gf = trunc nuw nsw i64 %indvars.iv43.i354 to i32
  br label %stbhw__change_color.exit361

stbhw__change_color.exit361:                      ; preds = %bb.ar, %.thread418, %.loopexit.loopexit.split.loop.exit53.i360
  %.0.i341 = phi i32 [ %i.ge, %.thread418 ], [ %i.gf, %.loopexit.loopexit.split.loop.exit53.i360 ], [ %i.ev, %bb.ar ]
  %i.gg = trunc i32 %.0.i341 to i8
  store i8 %i.gg, ptr %i.ep, align 1, !tbaa !62
  br label %bb.as

bb.as:                                            ; preds = %._crit_edge544, %bb.ag, %stbhw__change_color.exit361, %.thread587, %bb.ac, %bb.ad, %bb.ae, %bb.af
  %indvars.iv.next513.pre-phi = phi i64 [ %.pre545, %._crit_edge544 ], [ %i.dy, %bb.ag ], [ %i.dy, %stbhw__change_color.exit361 ], [ %i.dy, %.thread587 ], [ %i.dy, %bb.ac ], [ %i.dy, %bb.ad ], [ %i.dy, %bb.ae ], [ %i.dy, %bb.af ] ; 2 uses
  %exitcond517.not = icmp eq i64 %indvars.iv.next513.pre-phi, %wide.trip.count516
  br i1 %exitcond517.not, label %._crit_edge, label %bb.k, !llvm.loop !93

._crit_edge:                                      ; preds = %bb.as
  %exitcond523.not = icmp eq i64 %indvars.iv.next519, %wide.trip.count522
  br i1 %exitcond523.not, label %._crit_edge465.split, label %.preheader, !llvm.loop !94

._crit_edge465.split:                             ; preds = %._crit_edge, %bb.d, %.preheader.lr.ph, %.preheader454
  %i.gh = sub nsw i32 0, %i.b                     ; 2 uses
  %.not306470 = icmp sgt i32 %5, %i.gh
  br i1 %.not306470, label %.lr.ph474, label %.critedge324

.lr.ph474:                                        ; preds = %._crit_edge465.split
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %factor.op.mul31.i = shl i32 %i.b, 1            ; 3 uses
  %i.gk = icmp sgt i32 %i.b, 0                    ; 2 uses
  %i.gl = sext i32 %4 to i64                      ; 3 uses
  %6 = sext i32 %5 to i64                         ; 3 uses
  %i.gm = sext i32 %3 to i64                      ; 2 uses
  %wide.trip.count39.i = zext nneg i32 %i.b to i64 ; 2 uses
  %wide.trip.count.i363 = zext i32 %factor.op.mul31.i to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 56
  %smax.i = tail call i32 @llvm.smax.i32(i32 %factor.op.mul31.i, i32 1)
  %wide.trip.count39.i369 = zext nneg i32 %smax.i to i64
  %i.gp = sext i32 %i.b to i64                    ; 2 uses
  %i.gq = sext i32 %i.gh to i64
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph474, %._crit_edge469
  %indvars.iv529 = phi i64 [ -1, %.lr.ph474 ], [ %indvars.iv.next530, %._crit_edge469 ] ; 3 uses
  %indvars.iv527 = phi i64 [ %i.gq, %.lr.ph474 ], [ %indvars.iv.next528, %._crit_edge469 ] ; 4 uses
  %i.gr = trunc nsw i64 %indvars.iv529 to i32     ; 2 uses
  %i.gs = and i32 %i.gr, 3
  %i.gt = icmp eq i32 %i.gs, 0
  %i.gu = or i32 %i.gr, -4
  %.2261 = select i1 %i.gt, i32 0, i32 %i.gu      ; 2 uses
  %i.gv = mul nsw i32 %.2261, %i.b                ; 2 uses
  %.not303466 = icmp slt i32 %i.gv, %4
  br i1 %.not303466, label %.lr.ph, label %._crit_edge469

.lr.ph:                                           ; preds = %bb.at
  %i.gw = getelementptr [106 x i8], ptr @c_color, i64 %indvars.iv529 ; 3 uses
  %i.gx = getelementptr i8, ptr %i.gw, i64 212    ; 5 uses
  %i.gy = getelementptr i8, ptr %i.gw, i64 318    ; 5 uses
  %i.gz = getelementptr i8, ptr %i.gw, i64 424    ; 2 uses
  %i.ha = sext i32 %.2261 to i64
  %i.hb = sext i32 %i.gv to i64
  %i.hc = trunc nsw i64 %indvars.iv527 to i32
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph, %.loopexit451
  %indvars.iv524 = phi i64 [ %i.ha, %.lr.ph ], [ %indvars.iv.next525, %.loopexit451 ] ; 6 uses
  %i.hd = phi i64 [ %i.hb, %.lr.ph ], [ %i.jn, %.loopexit451 ]
  %i.he = trunc nsw i64 %indvars.iv524 to i32
  %i.hf = add i32 %i.he, 2                        ; 2 uses
  %i.hg = mul i32 %i.hf, %i.b                     ; 2 uses
  %i.hh = or i32 %i.hg, %i.hc
  %or.cond10 = icmp sgt i32 %i.hh, -1
  br i1 %or.cond10, label %bb.av, label %stbhw__draw_h_tile.exit

bb.av:                                            ; preds = %bb.au
  %i.hi = load ptr, ptr %i.gi, align 8, !tbaa !95
  %i.hj = load i32, ptr %i.gj, align 8, !tbaa !96
  %i.hk = sext i32 %i.hf to i64                   ; 2 uses
  %i.hl = getelementptr inbounds i8, ptr %i.gx, i64 %i.hk
  %i.hm = add nsw i64 %indvars.iv524, 3           ; 2 uses
  %i.hn = getelementptr inbounds i8, ptr %i.gx, i64 %i.hm
  %i.ho = add nsw i64 %indvars.iv524, 4           ; 2 uses
  %i.hp = getelementptr inbounds i8, ptr %i.gx, i64 %i.ho
  %i.hq = getelementptr inbounds i8, ptr %i.gy, i64 %i.hk
  %i.hr = getelementptr inbounds i8, ptr %i.gy, i64 %i.hm
  %i.hs = getelementptr inbounds i8, ptr %i.gy, i64 %i.ho
  %i.ht = tail call ptr @stbhw__choose_tile(ptr noundef %i.hi, i32 noundef %i.hj, ptr noundef %i.hl, ptr noundef %i.hn, ptr noundef %i.hp, ptr noundef %i.hq, ptr noundef %i.hr, ptr noundef %i.hs, ptr noundef %1) ; 2 uses
  %.not304 = icmp eq ptr %i.ht, null
  br i1 %.not304, label %.critedge324, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  br i1 %i.gk, label %.lr.ph33.split.us.preheader.i, label %stbhw__draw_h_tile.exit

.lr.ph33.split.us.preheader.i:                    ; preds = %bb.aw
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 6
  br label %.lr.ph33.split.us.i

.lr.ph33.split.us.i:                              ; preds = %..loopexit_crit_edge.us.i, %.lr.ph33.split.us.preheader.i
  %indvars.iv36.i = phi i64 [ 0, %.lr.ph33.split.us.preheader.i ], [ %indvars.iv.next37.i, %..loopexit_crit_edge.us.i ] ; 3 uses
  %i.hv = add nsw i64 %indvars.iv36.i, %indvars.iv527 ; 2 uses
  %7 = icmp slt i64 %i.hv, %6
  br i1 %7, label %.preheader.us.i, label %..loopexit_crit_edge.us.i

bb.ax:                                            ; preds = %.preheader.us.i, %bb.az
  %indvars.iv.i364 = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i365, %bb.az ] ; 3 uses
  %i.hw = add nsw i64 %indvars.iv.i364, %i.hd     ; 3 uses
  %i.hx = icmp sgt i64 %i.hw, -1
  %i.hy = icmp slt i64 %i.hw, %i.gl
  %or.cond29.us.i = and i1 %i.hx, %i.hy
  br i1 %or.cond29.us.i, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.hz = add nsw i64 %indvars.iv.i364, %i.ih
  %i.ia = mul nsw i64 %i.hz, 3
  %i.ib = getelementptr inbounds i8, ptr %i.hu, i64 %i.ia
  %i.ic = mul nuw nsw i64 %i.hw, 3
  %i.id = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ic
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.id, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.ib, i64 3, i1 false)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %indvars.iv.next.i365 = add nuw nsw i64 %indvars.iv.i364, 1 ; 2 uses
  %exitcond.not.i366 = icmp eq i64 %indvars.iv.next.i365, %wide.trip.count.i363
  br i1 %exitcond.not.i366, label %..loopexit_crit_edge.us.i, label %bb.ax, !llvm.loop !58

..loopexit_crit_edge.us.i:                        ; preds = %bb.az, %.lr.ph33.split.us.i
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %exitcond40.not.i = icmp eq i64 %indvars.iv.next37.i, %wide.trip.count39.i
  br i1 %exitcond40.not.i, label %stbhw__draw_h_tile.exit, label %.lr.ph33.split.us.i, !llvm.loop !59

.preheader.us.i:                                  ; preds = %.lr.ph33.split.us.i
  %i.ie = trunc nuw nsw i64 %indvars.iv36.i to i32
  %factor.op.mul.reass.us.i = mul i32 %factor.op.mul31.i, %i.ie
  %i.if = mul nsw i64 %i.hv, %i.gm
  %i.ig = getelementptr inbounds i8, ptr %2, i64 %i.if
  %i.ih = sext i32 %factor.op.mul.reass.us.i to i64
  br label %bb.ax

stbhw__draw_h_tile.exit:                          ; preds = %..loopexit_crit_edge.us.i, %bb.aw, %bb.au
  %i.ii = add nsw i32 %i.hg, %i.b                 ; 2 uses
  %i.ij = icmp slt i32 %i.ii, %4
  br i1 %i.ij, label %bb.ba, label %.loopexit451

bb.ba:                                            ; preds = %stbhw__draw_h_tile.exit
  %i.ik = load ptr, ptr %i.gn, align 8, !tbaa !97
  %i.il = load i32, ptr %i.go, align 8, !tbaa !98
  %i.im = add nsw i64 %indvars.iv524, 5           ; 3 uses
  %i.in = getelementptr inbounds i8, ptr %i.gx, i64 %i.im
  %i.io = getelementptr inbounds i8, ptr %i.gy, i64 %i.im
  %i.ip = getelementptr inbounds i8, ptr %i.gz, i64 %i.im
  %i.iq = add nsw i64 %indvars.iv524, 6           ; 3 uses
  %i.ir = getelementptr inbounds i8, ptr %i.gx, i64 %i.iq
  %i.is = getelementptr inbounds i8, ptr %i.gy, i64 %i.iq
  %i.it = getelementptr inbounds i8, ptr %i.gz, i64 %i.iq
  %i.iu = tail call ptr @stbhw__choose_tile(ptr noundef %i.ik, i32 noundef %i.il, ptr noundef %i.in, ptr noundef %i.io, ptr noundef %i.ip, ptr noundef %i.ir, ptr noundef %i.is, ptr noundef %i.it, ptr noundef %1) ; 2 uses
  %.not305 = icmp eq ptr %i.iu, null
  br i1 %.not305, label %.critedge324, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.gk, label %.lr.ph33.split.us.preheader.i368, label %.loopexit451

.lr.ph33.split.us.preheader.i368:                 ; preds = %bb.bb
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 6
  %i.iw = sext i32 %i.ii to i64
  br label %.lr.ph33.split.us.i371

.lr.ph33.split.us.i371:                           ; preds = %..loopexit_crit_edge.us.i374, %.lr.ph33.split.us.preheader.i368
  %indvars.iv36.i372 = phi i64 [ 0, %.lr.ph33.split.us.preheader.i368 ], [ %indvars.iv.next37.i375, %..loopexit_crit_edge.us.i374 ] ; 3 uses
  %i.ix = add nsw i64 %indvars.iv36.i372, %indvars.iv527 ; 3 uses
  %i.iy = icmp sgt i64 %i.ix, -1
  %i.iz = icmp slt i64 %i.ix, %6
  %or.cond.us.i373 = and i1 %i.iy, %i.iz
  br i1 %or.cond.us.i373, label %.preheader.us.i377, label %..loopexit_crit_edge.us.i374

bb.bc:                                            ; preds = %.preheader.us.i377, %bb.be
  %indvars.iv.i378 = phi i64 [ 0, %.preheader.us.i377 ], [ %indvars.iv.next.i380, %bb.be ] ; 3 uses
  %i.ja = add nsw i64 %indvars.iv.i378, %i.iw     ; 3 uses
  %i.jb = icmp sgt i64 %i.ja, -1
  %i.jc = icmp slt i64 %i.ja, %i.gl
  %or.cond29.us.i379 = and i1 %i.jb, %i.jc
  br i1 %or.cond29.us.i379, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.jd = add nuw nsw i64 %indvars.iv.i378, %i.jm
  %i.je = mul nuw nsw i64 %i.jd, 3
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.je
  %i.jg = mul nuw nsw i64 %i.ja, 3
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jj, i64 %i.jg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.jh, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.jf, i64 3, i1 false)
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %indvars.iv.next.i380 = add nuw nsw i64 %indvars.iv.i378, 1 ; 2 uses
  %exitcond.not.i381 = icmp eq i64 %indvars.iv.next.i380, %wide.trip.count39.i
  br i1 %exitcond.not.i381, label %..loopexit_crit_edge.us.i374, label %bb.bc, !llvm.loop !60

..loopexit_crit_edge.us.i374:                     ; preds = %bb.be, %.lr.ph33.split.us.i371
  %indvars.iv.next37.i375 = add nuw nsw i64 %indvars.iv36.i372, 1 ; 2 uses
  %exitcond40.not.i376 = icmp eq i64 %indvars.iv.next37.i375, %wide.trip.count39.i369
  br i1 %exitcond40.not.i376, label %.loopexit451, label %.lr.ph33.split.us.i371, !llvm.loop !61

.preheader.us.i377:                               ; preds = %.lr.ph33.split.us.i371
  %i.ji = mul nsw i64 %i.ix, %i.gm
  %i.jj = getelementptr inbounds i8, ptr %2, i64 %i.ji
  %i.jk = trunc i64 %indvars.iv36.i372 to i32
  %i.jl = mul i32 %i.b, %i.jk
  %i.jm = zext i32 %i.jl to i64
  br label %bb.bc

.loopexit451:                                     ; preds = %..loopexit_crit_edge.us.i374, %stbhw__draw_h_tile.exit, %bb.bb
  %indvars.iv.next525 = add nsw i64 %indvars.iv524, 4 ; 2 uses
  %i.jn = mul nsw i64 %indvars.iv.next525, %i.gp  ; 2 uses
  %.not303 = icmp slt i64 %i.jn, %i.gl
  br i1 %.not303, label %bb.au, label %._crit_edge469

._crit_edge469:                                   ; preds = %.loopexit451, %bb.at
  %indvars.iv.next528 = add nsw i64 %indvars.iv527, %i.gp ; 2 uses
  %indvars.iv.next530 = add nsw i64 %indvars.iv529, 1
  %.not306 = icmp slt i64 %indvars.iv.next528, %6
  br i1 %.not306, label %bb.at, label %.critedge324, !llvm.loop !99

bb.bf:                                            ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(11130) @v_color, i8 -1, i64 11130, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(11130) @h_color, i8 -1, i64 11130, i1 false)
  %i.jo = sub nsw i32 0, %i.b                     ; 2 uses
  %.not302480 = icmp sgt i32 %5, %i.jo
  br i1 %.not302480, label %.lr.ph484, label %.critedge324

.lr.ph484:                                        ; preds = %bb.bf
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %factor.op.mul31.i382 = shl i32 %i.b, 1         ; 3 uses
  %i.jr = icmp sgt i32 %i.b, 0                    ; 2 uses
  %i.js = sext i32 %4 to i64                      ; 3 uses
  %8 = sext i32 %5 to i64                         ; 3 uses
  %i.jt = sext i32 %3 to i64                      ; 2 uses
  %wide.trip.count39.i385 = zext nneg i32 %i.b to i64 ; 2 uses
  %wide.trip.count.i386 = zext i32 %factor.op.mul31.i382 to i64
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %smax.i402 = tail call i32 @llvm.smax.i32(i32 %factor.op.mul31.i382, i32 1)
  %wide.trip.count39.i403 = zext nneg i32 %smax.i402 to i64
  %i.jw = sext i32 %i.b to i64                    ; 2 uses
  %i.jx = sext i32 %i.jo to i64
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph484, %._crit_edge479
  %indvars.iv539 = phi i64 [ -1, %.lr.ph484 ], [ %indvars.iv.next540, %._crit_edge479 ] ; 5 uses
  %indvars.iv537 = phi i64 [ %i.jx, %.lr.ph484 ], [ %indvars.iv.next538, %._crit_edge479 ] ; 4 uses
  %i.jy = trunc nsw i64 %indvars.iv539 to i32     ; 2 uses
  %i.jz = and i32 %i.jy, 3
  %i.ka = icmp eq i32 %i.jz, 0
  %i.kb = or i32 %i.jy, -4
  %.0253 = select i1 %i.ka, i32 0, i32 %i.kb      ; 2 uses
  %i.kc = mul nsw i32 %.0253, %i.b                ; 2 uses
  %.not299475 = icmp slt i32 %i.kc, %4
  br i1 %.not299475, label %.lr.ph478, label %._crit_edge479

.lr.ph478:                                        ; preds = %bb.bg
  %i.kd = add nsw i64 %indvars.iv539, 2           ; 2 uses
  %i.ke = getelementptr inbounds [106 x i8], ptr @h_color, i64 %i.kd ; 3 uses
  %i.kf = getelementptr inbounds [105 x i8], ptr @v_color, i64 %i.kd ; 4 uses
  %i.kg = getelementptr [106 x i8], ptr @h_color, i64 %indvars.iv539 ; 2 uses
  %i.kh = getelementptr i8, ptr %i.kg, i64 318    ; 2 uses
  %i.ki = getelementptr [105 x i8], ptr @v_color, i64 %indvars.iv539
  %i.kj = getelementptr i8, ptr %i.ki, i64 315    ; 2 uses
  %i.kk = getelementptr i8, ptr %i.kg, i64 424
  %i.kl = sext i32 %.0253 to i64
  %i.km = sext i32 %i.kc to i64
  %i.kn = trunc nsw i64 %indvars.iv537 to i32
  br label %bb.bh

bb.bh:                                            ; preds = %.lr.ph478, %.loopexit
  %indvars.iv534 = phi i64 [ %i.kl, %.lr.ph478 ], [ %indvars.iv.next535, %.loopexit ] ; 6 uses
  %i.ko = phi i64 [ %i.km, %.lr.ph478 ], [ %i.my, %.loopexit ]
  %i.kp = trunc nsw i64 %indvars.iv534 to i32
  %i.kq = add i32 %i.kp, 2                        ; 2 uses
  %i.kr = mul i32 %i.kq, %i.b                     ; 2 uses
  %i.ks = or i32 %i.kr, %i.kn
  %or.cond12 = icmp sgt i32 %i.ks, -1
  br i1 %or.cond12, label %bb.bi, label %stbhw__draw_h_tile.exit399

bb.bi:                                            ; preds = %bb.bh
  %i.kt = load ptr, ptr %i.jp, align 8, !tbaa !95
  %i.ku = load i32, ptr %i.jq, align 8, !tbaa !96
  %i.kv = sext i32 %i.kq to i64                   ; 3 uses
  %i.kw = getelementptr inbounds i8, ptr %i.ke, i64 %i.kv
  %i.kx = add nsw i64 %indvars.iv534, 3           ; 2 uses
  %i.ky = getelementptr inbounds i8, ptr %i.ke, i64 %i.kx
  %i.kz = getelementptr inbounds i8, ptr %i.kf, i64 %i.kv
  %i.la = getelementptr i8, ptr %i.kf, i64 %indvars.iv534
  %i.lb = getelementptr i8, ptr %i.la, i64 4
  %i.lc = getelementptr inbounds i8, ptr %i.kh, i64 %i.kv
  %i.ld = getelementptr inbounds i8, ptr %i.kh, i64 %i.kx
  %i.le = tail call ptr @stbhw__choose_tile(ptr noundef %i.kt, i32 noundef %i.ku, ptr noundef nonnull %i.kw, ptr noundef nonnull %i.ky, ptr noundef nonnull %i.kz, ptr noundef %i.lb, ptr noundef %i.lc, ptr noundef %i.ld, ptr noundef %1) ; 2 uses
  %.not300 = icmp eq ptr %i.le, null
  br i1 %.not300, label %.critedge324, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  br i1 %i.jr, label %.lr.ph33.split.us.preheader.i384, label %stbhw__draw_h_tile.exit399

.lr.ph33.split.us.preheader.i384:                 ; preds = %bb.bj
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 6
  br label %.lr.ph33.split.us.i387

.lr.ph33.split.us.i387:                           ; preds = %..loopexit_crit_edge.us.i390, %.lr.ph33.split.us.preheader.i384
  %indvars.iv36.i388 = phi i64 [ 0, %.lr.ph33.split.us.preheader.i384 ], [ %indvars.iv.next37.i391, %..loopexit_crit_edge.us.i390 ] ; 3 uses
  %i.lg = add nsw i64 %indvars.iv36.i388, %indvars.iv537 ; 2 uses
  %9 = icmp slt i64 %i.lg, %8
  br i1 %9, label %.preheader.us.i393, label %..loopexit_crit_edge.us.i390

bb.bk:                                            ; preds = %.preheader.us.i393, %bb.bm
  %indvars.iv.i395 = phi i64 [ 0, %.preheader.us.i393 ], [ %indvars.iv.next.i397, %bb.bm ] ; 3 uses
  %i.lh = add nsw i64 %indvars.iv.i395, %i.ko     ; 3 uses
  %i.li = icmp sgt i64 %i.lh, -1
  %i.lj = icmp slt i64 %i.lh, %i.js
  %or.cond29.us.i396 = and i1 %i.li, %i.lj
  br i1 %or.cond29.us.i396, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.lk = add nsw i64 %indvars.iv.i395, %i.ls
  %i.ll = mul nsw i64 %i.lk, 3
  %i.lm = getelementptr inbounds i8, ptr %i.lf, i64 %i.ll
  %i.ln = mul nuw nsw i64 %i.lh, 3
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.ln
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.lo, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.lm, i64 3, i1 false)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %indvars.iv.next.i397 = add nuw nsw i64 %indvars.iv.i395, 1 ; 2 uses
  %exitcond.not.i398 = icmp eq i64 %indvars.iv.next.i397, %wide.trip.count.i386
  br i1 %exitcond.not.i398, label %..loopexit_crit_edge.us.i390, label %bb.bk, !llvm.loop !58

..loopexit_crit_edge.us.i390:                     ; preds = %bb.bm, %.lr.ph33.split.us.i387
  %indvars.iv.next37.i391 = add nuw nsw i64 %indvars.iv36.i388, 1 ; 2 uses
  %exitcond40.not.i392 = icmp eq i64 %indvars.iv.next37.i391, %wide.trip.count39.i385
  br i1 %exitcond40.not.i392, label %stbhw__draw_h_tile.exit399, label %.lr.ph33.split.us.i387, !llvm.loop !59

.preheader.us.i393:                               ; preds = %.lr.ph33.split.us.i387
  %i.lp = trunc nuw nsw i64 %indvars.iv36.i388 to i32
  %factor.op.mul.reass.us.i394 = mul i32 %factor.op.mul31.i382, %i.lp
  %i.lq = mul nsw i64 %i.lg, %i.jt
  %i.lr = getelementptr inbounds i8, ptr %2, i64 %i.lq
  %i.ls = sext i32 %factor.op.mul.reass.us.i394 to i64
  br label %bb.bk

stbhw__draw_h_tile.exit399:                       ; preds = %..loopexit_crit_edge.us.i390, %bb.bj, %bb.bh
  %i.lt = add nsw i32 %i.kr, %i.b                 ; 2 uses
  %i.lu = icmp slt i32 %i.lt, %4
  br i1 %i.lu, label %bb.bn, label %.loopexit

bb.bn:                                            ; preds = %stbhw__draw_h_tile.exit399
  %i.lv = load ptr, ptr %i.ju, align 8, !tbaa !97
  %i.lw = load i32, ptr %i.jv, align 8, !tbaa !98
  %i.lx = add nsw i64 %indvars.iv534, 5           ; 4 uses
  %i.ly = getelementptr inbounds i8, ptr %i.ke, i64 %i.lx
  %i.lz = getelementptr inbounds i8, ptr %i.kf, i64 %i.lx
  %i.ma = add nsw i64 %indvars.iv534, 6           ; 2 uses
  %i.mb = getelementptr inbounds i8, ptr %i.kf, i64 %i.ma
  %i.mc = getelementptr inbounds i8, ptr %i.kj, i64 %i.lx
  %i.md = getelementptr inbounds i8, ptr %i.kj, i64 %i.ma
  %i.me = getelementptr inbounds i8, ptr %i.kk, i64 %i.lx
  %i.mf = tail call ptr @stbhw__choose_tile(ptr noundef %i.lv, i32 noundef %i.lw, ptr noundef nonnull %i.ly, ptr noundef nonnull %i.lz, ptr noundef nonnull %i.mb, ptr noundef %i.mc, ptr noundef %i.md, ptr noundef %i.me, ptr noundef %1) ; 2 uses
  %.not301 = icmp eq ptr %i.mf, null
  br i1 %.not301, label %.critedge324, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  br i1 %i.jr, label %.lr.ph33.split.us.preheader.i401, label %.loopexit

.lr.ph33.split.us.preheader.i401:                 ; preds = %bb.bo
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 6
  %i.mh = sext i32 %i.lt to i64
  br label %.lr.ph33.split.us.i405

.lr.ph33.split.us.i405:                           ; preds = %..loopexit_crit_edge.us.i408, %.lr.ph33.split.us.preheader.i401
  %indvars.iv36.i406 = phi i64 [ 0, %.lr.ph33.split.us.preheader.i401 ], [ %indvars.iv.next37.i409, %..loopexit_crit_edge.us.i408 ] ; 3 uses
  %i.mi = add nsw i64 %indvars.iv36.i406, %indvars.iv537 ; 3 uses
  %i.mj = icmp sgt i64 %i.mi, -1
  %i.mk = icmp slt i64 %i.mi, %8
  %or.cond.us.i407 = and i1 %i.mj, %i.mk
  br i1 %or.cond.us.i407, label %.preheader.us.i411, label %..loopexit_crit_edge.us.i408

bb.bp:                                            ; preds = %.preheader.us.i411, %bb.br
  %indvars.iv.i412 = phi i64 [ 0, %.preheader.us.i411 ], [ %indvars.iv.next.i414, %bb.br ] ; 3 uses
  %i.ml = add nsw i64 %indvars.iv.i412, %i.mh     ; 3 uses
  %i.mm = icmp sgt i64 %i.ml, -1
  %i.mn = icmp slt i64 %i.ml, %i.js
  %or.cond29.us.i413 = and i1 %i.mm, %i.mn
  br i1 %or.cond29.us.i413, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.mo = add nuw nsw i64 %indvars.iv.i412, %i.mx
  %i.mp = mul nuw nsw i64 %i.mo, 3
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.mp
  %i.mr = mul nuw nsw i64 %i.ml, 3
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.mr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ms, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.mq, i64 3, i1 false)
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %indvars.iv.next.i414 = add nuw nsw i64 %indvars.iv.i412, 1 ; 2 uses
  %exitcond.not.i415 = icmp eq i64 %indvars.iv.next.i414, %wide.trip.count39.i385
  br i1 %exitcond.not.i415, label %..loopexit_crit_edge.us.i408, label %bb.bp, !llvm.loop !60

..loopexit_crit_edge.us.i408:                     ; preds = %bb.br, %.lr.ph33.split.us.i405
  %indvars.iv.next37.i409 = add nuw nsw i64 %indvars.iv36.i406, 1 ; 2 uses
  %exitcond40.not.i410 = icmp eq i64 %indvars.iv.next37.i409, %wide.trip.count39.i403
  br i1 %exitcond40.not.i410, label %.loopexit, label %.lr.ph33.split.us.i405, !llvm.loop !61

.preheader.us.i411:                               ; preds = %.lr.ph33.split.us.i405
  %i.mt = mul nsw i64 %i.mi, %i.jt
  %i.mu = getelementptr inbounds i8, ptr %2, i64 %i.mt
  %i.mv = trunc i64 %indvars.iv36.i406 to i32
  %i.mw = mul i32 %i.b, %i.mv
  %i.mx = zext i32 %i.mw to i64
  br label %bb.bp

.loopexit:                                        ; preds = %..loopexit_crit_edge.us.i408, %stbhw__draw_h_tile.exit399, %bb.bo
  %indvars.iv.next535 = add nsw i64 %indvars.iv534, 4 ; 2 uses
  %i.my = mul nsw i64 %indvars.iv.next535, %i.jw  ; 2 uses
  %.not299 = icmp slt i64 %i.my, %i.js
  br i1 %.not299, label %bb.bh, label %._crit_edge479

._crit_edge479:                                   ; preds = %.loopexit, %bb.bg
  %indvars.iv.next538 = add nsw i64 %indvars.iv537, %i.jw ; 2 uses
  %indvars.iv.next540 = add nsw i64 %indvars.iv539, 1
  %.not302 = icmp slt i64 %indvars.iv.next538, %8
  br i1 %.not302, label %bb.bg, label %.critedge324, !llvm.loop !100

.critedge324:                                     ; preds = %._crit_edge469, %bb.ba, %bb.av, %._crit_edge479, %bb.bn, %bb.bi, %._crit_edge465.split, %bb.bf, %bb.b
  %.16 = phi i32 [ 0, %bb.b ], [ 1, %._crit_edge479 ], [ 1, %bb.bf ], [ 0, %bb.ba ], [ 1, %._crit_edge465.split ], [ 0, %bb.bn ], [ 0, %bb.bi ], [ 0, %bb.av ], [ 1, %._crit_edge469 ]
  ret i32 %.16
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define void @stbhw__parse_h_rect(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15   ; 5 uses
  %i.e = mul nsw i32 %i.d, 6                      ; 2 uses
  %i.f = mul nsw i32 %i.e, %i.d
  %i.g = sext i32 %i.f to i64
  %i.h = add nsw i64 %i.g, 6
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #17 ; 8 uses
  %i.j = trunc i32 %3 to i8
  store i8 %i.j, ptr %i.i, align 1, !tbaa !64
  %i.k = trunc i32 %4 to i8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.k, ptr %i.l, align 1, !tbaa !66
  %i.m = trunc i32 %5 to i8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.m, ptr %i.n, align 1, !tbaa !67
  %i.o = trunc i32 %6 to i8
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.o, ptr %i.p, align 1, !tbaa !68
  %i.q = trunc i32 %7 to i8
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i8 %i.q, ptr %i.r, align 1, !tbaa !69
  %i.s = trunc i32 %8 to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  store i8 %i.s, ptr %i.t, align 1, !tbaa !70
  %i.u = icmp sgt i32 %i.d, 0
  br i1 %i.u, label %.preheader.lr.ph.split, label %._crit_edge39.split

.preheader.lr.ph.split:                           ; preds = %bb.a
  %i.v = add nsw i32 %2, 1
  %i.w = add nsw i32 %1, 1
  %i.x = shl nuw i32 %i.d, 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !101
  %i.ac = load i32, ptr %i.z, align 8, !tbaa !102
  %i.ad = sext i32 %i.w to i64                    ; 3 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.x, i32 1) ; 3 uses
  %i.ae = zext nneg i32 %i.e to i64
  %i.af = sext i32 %i.v to i64
  %i.ag = sext i32 %i.ac to i64
  %wide.trip.count44 = zext nneg i32 %i.d to i64
  %wide.trip.count = zext nneg i32 %smax to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ah = icmp eq i32 %smax, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod46 = trunc i32 %smax to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv41 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next42, %._crit_edge ] ; 3 uses
  %i.ai = mul nuw nsw i64 %indvars.iv41, %i.ae
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ai ; 3 uses
  %i.ak = add nsw i64 %indvars.iv41, %i.af
  %i.al = mul nsw i64 %i.ak, %i.ag
  %i.am = getelementptr inbounds i8, ptr %i.ab, i64 %i.al ; 3 uses
  br i1 %i.ah, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.an = mul nuw nsw i64 %indvars.iv, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.an
  %i.ap = add nsw i64 %indvars.iv, %i.ad
  %i.aq = mul nsw i64 %i.ap, 3
  %i.ar = getelementptr inbounds i8, ptr %i.am, i64 %i.aq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ao, ptr noundef nonnull align 1 dereferenceable(3) %i.ar, i64 3, i1 false)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.as = mul nuw nsw i64 %indvars.iv.next, 3
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.as
  %i.au = add nsw i64 %indvars.iv.next, %i.ad
  %i.av = mul nsw i64 %i.au, 3
  %i.aw = getelementptr inbounds i8, ptr %i.am, i64 %i.av
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.at, ptr noundef nonnull align 1 dereferenceable(3) %i.aw, i64 3, i1 false)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !103

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod46)
  %i.ax = mul nuw nsw i64 %indvars.iv.epil.init, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ax
  %i.az = add nsw i64 %indvars.iv.epil.init, %i.ad
  %i.ba = mul nsw i64 %i.az, 3
  %i.bb = getelementptr inbounds i8, ptr %i.am, i64 %i.ba
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ay, ptr noundef nonnull align 1 dereferenceable(3) %i.bb, i64 3, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %exitcond45.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count44
  br i1 %exitcond45.not, label %._crit_edge39.split, label %.preheader, !llvm.loop !104

._crit_edge39.split:                              ; preds = %._crit_edge, %bb.a
  %i.bc = load ptr, ptr %0, align 8, !tbaa !105   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !95
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 48 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !96 ; 2 uses
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !96
  %i.bi = sext i32 %i.bg to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bi
  store ptr %i.i, ptr %i.bj, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define void @stbhw__parse_v_rect(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15   ; 8 uses
  %i.e = mul nsw i32 %i.d, 6
  %i.f = mul nsw i32 %i.e, %i.d
  %i.g = sext i32 %i.f to i64
  %i.h = add nsw i64 %i.g, 6
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #17 ; 8 uses
  %i.j = trunc i32 %3 to i8
  store i8 %i.j, ptr %i.i, align 1, !tbaa !64
  %i.k = trunc i32 %4 to i8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.k, ptr %i.l, align 1, !tbaa !66
  %i.m = trunc i32 %5 to i8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.m, ptr %i.n, align 1, !tbaa !67
  %i.o = trunc i32 %6 to i8
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.o, ptr %i.p, align 1, !tbaa !68
  %i.q = trunc i32 %7 to i8
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i8 %i.q, ptr %i.r, align 1, !tbaa !69
  %i.s = trunc i32 %8 to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  store i8 %i.s, ptr %i.t, align 1, !tbaa !70
  %factor.op.mul38 = mul i32 %i.d, 3
  %i.u = icmp sgt i32 %i.d, 0
  br i1 %i.u, label %.preheader.lr.ph.split, label %._crit_edge40.split

.preheader.lr.ph.split:                           ; preds = %bb.a
  %i.v = add nsw i32 %2, 1
  %i.w = add nsw i32 %1, 1
  %i.x = shl nuw i32 %i.d, 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !101
  %i.ac = load i32, ptr %i.z, align 8, !tbaa !102
  %i.ad = sext i32 %i.w to i64                    ; 3 uses
  %i.ae = sext i32 %i.v to i64
  %i.af = sext i32 %i.ac to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %i.x, i32 1)
  %wide.trip.count45 = zext nneg i32 %smax to i64
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ag = icmp eq i32 %i.d, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod47 = trunc i32 %i.d to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv42 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next43, %._crit_edge ] ; 3 uses
  %i.ah = trunc nuw nsw i64 %indvars.iv42 to i32
  %factor.op.mul.reass = mul i32 %factor.op.mul38, %i.ah
  %i.ai = sext i32 %factor.op.mul.reass to i64
  %i.aj = getelementptr inbounds i8, ptr %i.y, i64 %i.ai ; 3 uses
  %i.ak = add nsw i64 %indvars.iv42, %i.ae
  %i.al = mul nsw i64 %i.ak, %i.af
  %i.am = getelementptr inbounds i8, ptr %i.ab, i64 %i.al ; 3 uses
  br i1 %i.ag, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
end_hunk_0
