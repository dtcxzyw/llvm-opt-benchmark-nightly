Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_herringbone_wang_tile?download=true
inline.NumInlined: 76
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 43
begin_hunk_0_@stbhw_generate_image:bb.a
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
  %i.gm = sext i32 %5 to i64                      ; 3 uses
  %i.gn = sext i32 %3 to i64                      ; 2 uses
  %wide.trip.count39.i = zext nneg i32 %i.b to i64 ; 2 uses
  %wide.trip.count.i363 = zext i32 %factor.op.mul31.i to i64
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %smax.i = tail call i32 @llvm.smax.i32(i32 %factor.op.mul31.i, i32 1)
  %wide.trip.count39.i369 = zext nneg i32 %smax.i to i64
  %i.gq = sext i32 %i.b to i64                    ; 2 uses
  %i.gr = sext i32 %i.gh to i64
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph474, %._crit_edge469
  %indvars.iv529 = phi i64 [ -1, %.lr.ph474 ], [ %indvars.iv.next530, %._crit_edge469 ] ; 3 uses
  %indvars.iv527 = phi i64 [ %i.gr, %.lr.ph474 ], [ %indvars.iv.next528.a, %._crit_edge469 ] ; 4 uses
  %i.gs = trunc nsw i64 %indvars.iv529 to i32     ; 2 uses
  %i.gt = and i32 %i.gs, 3
  %i.gu = icmp eq i32 %i.gt, 0
  %i.gv = or i32 %i.gs, -4
  %.2261 = select i1 %i.gu, i32 0, i32 %i.gv      ; 2 uses
  %i.gw = mul nsw i32 %.2261, %i.b                ; 2 uses
  %.not303466 = icmp slt i32 %i.gw, %4
  br i1 %.not303466, label %.lr.ph, label %._crit_edge469

.lr.ph:                                           ; preds = %bb.at
  %i.gx = getelementptr [106 x i8], ptr @c_color, i64 %indvars.iv529 ; 3 uses
  %i.gy = getelementptr i8, ptr %i.gx, i64 212    ; 5 uses
  %i.gz = getelementptr i8, ptr %i.gx, i64 318    ; 5 uses
  %i.ha = getelementptr i8, ptr %i.gx, i64 424    ; 2 uses
  %i.hb = sext i32 %.2261 to i64
  %i.hc = sext i32 %i.gw to i64
  %i.hd = trunc nsw i64 %indvars.iv527 to i32
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph, %.loopexit451
  %indvars.iv524 = phi i64 [ %i.hb, %.lr.ph ], [ %indvars.iv.next525, %.loopexit451 ] ; 6 uses
  %i.he = phi i64 [ %i.hc, %.lr.ph ], [ %i.jp, %.loopexit451 ]
  %i.hf = trunc nsw i64 %indvars.iv524 to i32
  %i.hg = add i32 %i.hf, 2                        ; 2 uses
  %i.hh = mul i32 %i.hg, %i.b                     ; 2 uses
  %i.hi = or i32 %i.hh, %i.hd
  %or.cond10 = icmp sgt i32 %i.hi, -1
  br i1 %or.cond10, label %bb.av, label %stbhw__draw_h_tile.exit

bb.av:                                            ; preds = %bb.au
  %i.hj = load ptr, ptr %i.gi, align 8, !tbaa !95
  %i.hk = load i32, ptr %i.gj, align 8, !tbaa !96
  %i.hl = sext i32 %i.hg to i64                   ; 2 uses
  %i.hm = getelementptr inbounds i8, ptr %i.gy, i64 %i.hl
  %i.hn = add nsw i64 %indvars.iv524, 3           ; 2 uses
  %i.ho = getelementptr inbounds i8, ptr %i.gy, i64 %i.hn
  %i.hp = add nsw i64 %indvars.iv524, 4           ; 2 uses
  %i.hq = getelementptr inbounds i8, ptr %i.gy, i64 %i.hp
  %i.hr = getelementptr inbounds i8, ptr %i.gz, i64 %i.hl
  %i.hs = getelementptr inbounds i8, ptr %i.gz, i64 %i.hn
  %i.ht = getelementptr inbounds i8, ptr %i.gz, i64 %i.hp
  %i.hu = tail call ptr @stbhw__choose_tile(ptr noundef %i.hj, i32 noundef %i.hk, ptr noundef %i.hm, ptr noundef %i.ho, ptr noundef %i.hq, ptr noundef %i.hr, ptr noundef %i.hs, ptr noundef %i.ht, ptr noundef %1) ; 2 uses
  %.not304 = icmp eq ptr %i.hu, null
  br i1 %.not304, label %.critedge324, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  br i1 %i.gk, label %.lr.ph33.split.us.preheader.i, label %stbhw__draw_h_tile.exit

.lr.ph33.split.us.preheader.i:                    ; preds = %bb.aw
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 6
  br label %.lr.ph33.split.us.i

.lr.ph33.split.us.i:                              ; preds = %..loopexit_crit_edge.us.i, %.lr.ph33.split.us.preheader.i
  %indvars.iv36.i = phi i64 [ 0, %.lr.ph33.split.us.preheader.i ], [ %indvars.iv.next37.i, %..loopexit_crit_edge.us.i ] ; 3 uses
  %i.hw = add nsw i64 %indvars.iv36.i, %indvars.iv527 ; 2 uses
  %i.hx = icmp slt i64 %i.hw, %i.gm
  br i1 %i.hx, label %.preheader.us.i, label %..loopexit_crit_edge.us.i

bb.ax:                                            ; preds = %.preheader.us.i, %bb.az
  %indvars.iv.i364 = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i365, %bb.az ] ; 3 uses
  %i.hy = add nsw i64 %indvars.iv.i364, %i.he     ; 3 uses
  %i.hz = icmp sgt i64 %i.hy, -1
  %i.ia = icmp slt i64 %i.hy, %i.gl
  %or.cond29.us.i = and i1 %i.hz, %i.ia
  br i1 %or.cond29.us.i, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ib = add nsw i64 %indvars.iv.i364, %i.ij
  %i.ic = mul nsw i64 %i.ib, 3
  %i.id = getelementptr inbounds i8, ptr %i.hv, i64 %i.ic
  %i.ie = mul nuw nsw i64 %i.hy, 3
  %i.if = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.ie
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.if, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.id, i64 3, i1 false)
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
  %i.ig = trunc nuw nsw i64 %indvars.iv36.i to i32
  %factor.op.mul.reass.us.i = mul i32 %factor.op.mul31.i, %i.ig
  %i.ih = mul nsw i64 %i.hw, %i.gn
  %i.ii = getelementptr inbounds i8, ptr %2, i64 %i.ih
  %i.ij = sext i32 %factor.op.mul.reass.us.i to i64
  br label %bb.ax

stbhw__draw_h_tile.exit:                          ; preds = %..loopexit_crit_edge.us.i, %bb.aw, %bb.au
  %i.ik = add nsw i32 %i.hh, %i.b                 ; 2 uses
  %i.il = icmp slt i32 %i.ik, %4
  br i1 %i.il, label %bb.ba, label %.loopexit451

bb.ba:                                            ; preds = %stbhw__draw_h_tile.exit
  %i.im = load ptr, ptr %i.go, align 8, !tbaa !97
  %i.in = load i32, ptr %i.gp, align 8, !tbaa !98
  %i.io = add nsw i64 %indvars.iv524, 5           ; 3 uses
  %i.ip = getelementptr inbounds i8, ptr %i.gy, i64 %i.io
  %i.iq = getelementptr inbounds i8, ptr %i.gz, i64 %i.io
  %i.ir = getelementptr inbounds i8, ptr %i.ha, i64 %i.io
  %i.is = add nsw i64 %indvars.iv524, 6           ; 3 uses
  %i.it = getelementptr inbounds i8, ptr %i.gy, i64 %i.is
  %i.iu = getelementptr inbounds i8, ptr %i.gz, i64 %i.is
  %i.iv = getelementptr inbounds i8, ptr %i.ha, i64 %i.is
  %i.iw = tail call ptr @stbhw__choose_tile(ptr noundef %i.im, i32 noundef %i.in, ptr noundef %i.ip, ptr noundef %i.iq, ptr noundef %i.ir, ptr noundef %i.it, ptr noundef %i.iu, ptr noundef %i.iv, ptr noundef %1) ; 2 uses
  %.not305 = icmp eq ptr %i.iw, null
  br i1 %.not305, label %.critedge324, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.gk, label %.lr.ph33.split.us.preheader.i368, label %.loopexit451

.lr.ph33.split.us.preheader.i368:                 ; preds = %bb.bb
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 6
  %i.iy = sext i32 %i.ik to i64
  br label %.lr.ph33.split.us.i371

.lr.ph33.split.us.i371:                           ; preds = %..loopexit_crit_edge.us.i374, %.lr.ph33.split.us.preheader.i368
  %indvars.iv36.i372 = phi i64 [ 0, %.lr.ph33.split.us.preheader.i368 ], [ %indvars.iv.next37.i375, %..loopexit_crit_edge.us.i374 ] ; 3 uses
  %i.iz = add nsw i64 %indvars.iv36.i372, %indvars.iv527 ; 3 uses
  %i.ja = icmp sgt i64 %i.iz, -1
  %i.jb = icmp slt i64 %i.iz, %i.gm
  %or.cond.us.i373 = and i1 %i.ja, %i.jb
  br i1 %or.cond.us.i373, label %.preheader.us.i377, label %..loopexit_crit_edge.us.i374

bb.bc:                                            ; preds = %.preheader.us.i377, %bb.be
  %indvars.iv.i378 = phi i64 [ 0, %.preheader.us.i377 ], [ %indvars.iv.next.i380, %bb.be ] ; 3 uses
  %i.jc = add nsw i64 %indvars.iv.i378, %i.iy     ; 3 uses
  %i.jd = icmp sgt i64 %i.jc, -1
  %i.je = icmp slt i64 %i.jc, %i.gl
  %or.cond29.us.i379 = and i1 %i.jd, %i.je
  br i1 %or.cond29.us.i379, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.jf = add nuw nsw i64 %indvars.iv.i378, %i.jo
  %i.jg = mul nuw nsw i64 %i.jf, 3
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ix, i64 %i.jg
  %i.ji = mul nuw nsw i64 %i.jc, 3
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.ji
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.jj, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.jh, i64 3, i1 false)
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
  %i.jk = mul nsw i64 %i.iz, %i.gn
  %i.jl = getelementptr inbounds i8, ptr %2, i64 %i.jk
  %i.jm = trunc i64 %indvars.iv36.i372 to i32
  %i.jn = mul i32 %i.b, %i.jm
  %i.jo = zext i32 %i.jn to i64
  br label %bb.bc

.loopexit451:                                     ; preds = %..loopexit_crit_edge.us.i374, %stbhw__draw_h_tile.exit, %bb.bb
  %indvars.iv.next525 = add nsw i64 %indvars.iv524, 4 ; 2 uses
  %i.jp = mul nsw i64 %indvars.iv.next525, %i.gq  ; 2 uses
  %.not303 = icmp slt i64 %i.jp, %i.gl
  br i1 %.not303, label %bb.au, label %._crit_edge469

._crit_edge469:                                   ; preds = %.loopexit451, %bb.at
  %indvars.iv.next528.a = add nsw i64 %indvars.iv527, %i.gq ; 2 uses
  %indvars.iv.next530 = add nsw i64 %indvars.iv529, 1
  %.not306 = icmp slt i64 %indvars.iv.next528.a, %i.gm
  br i1 %.not306, label %bb.at, label %.critedge324, !llvm.loop !99

bb.bf:                                            ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(11130) @v_color, i8 -1, i64 11130, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(11130) @h_color, i8 -1, i64 11130, i1 false)
  %i.jq = sub nsw i32 0, %i.b                     ; 2 uses
  %.not302480 = icmp sgt i32 %5, %i.jq
  br i1 %.not302480, label %.lr.ph484, label %.critedge324

.lr.ph484:                                        ; preds = %bb.bf
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 48
  %factor.op.mul31.i382 = shl i32 %i.b, 1         ; 3 uses
  %i.jt = icmp sgt i32 %i.b, 0                    ; 2 uses
  %i.ju = sext i32 %4 to i64                      ; 3 uses
  %i.jv = sext i32 %5 to i64                      ; 3 uses
  %i.jw = sext i32 %3 to i64                      ; 2 uses
  %wide.trip.count39.i385 = zext nneg i32 %i.b to i64 ; 2 uses
  %wide.trip.count.i386 = zext i32 %factor.op.mul31.i382 to i64
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 56
  %smax.i402 = tail call i32 @llvm.smax.i32(i32 %factor.op.mul31.i382, i32 1)
  %wide.trip.count39.i403 = zext nneg i32 %smax.i402 to i64
  %i.jz = sext i32 %i.b to i64                    ; 2 uses
  %i.ka = sext i32 %i.jq to i64
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph484, %._crit_edge479
  %indvars.iv539 = phi i64 [ -1, %.lr.ph484 ], [ %indvars.iv.next540, %._crit_edge479 ] ; 5 uses
  %indvars.iv537 = phi i64 [ %i.ka, %.lr.ph484 ], [ %indvars.iv.next538, %._crit_edge479 ] ; 4 uses
  %i.kb = trunc nsw i64 %indvars.iv539 to i32     ; 2 uses
  %i.kc = and i32 %i.kb, 3
  %i.kd = icmp eq i32 %i.kc, 0
  %i.ke = or i32 %i.kb, -4
  %.0253 = select i1 %i.kd, i32 0, i32 %i.ke      ; 2 uses
  %i.kf = mul nsw i32 %.0253, %i.b                ; 2 uses
  %.not299475 = icmp slt i32 %i.kf, %4
  br i1 %.not299475, label %.lr.ph478, label %._crit_edge479

.lr.ph478:                                        ; preds = %bb.bg
  %i.kg = add nsw i64 %indvars.iv539, 2           ; 2 uses
  %i.kh = getelementptr inbounds [106 x i8], ptr @h_color, i64 %i.kg ; 3 uses
  %i.ki = getelementptr inbounds [105 x i8], ptr @v_color, i64 %i.kg ; 4 uses
  %i.kj = getelementptr [106 x i8], ptr @h_color, i64 %indvars.iv539 ; 2 uses
  %i.kk = getelementptr i8, ptr %i.kj, i64 318    ; 2 uses
  %i.kl = getelementptr [105 x i8], ptr @v_color, i64 %indvars.iv539
  %i.km = getelementptr i8, ptr %i.kl, i64 315    ; 2 uses
  %i.kn = getelementptr i8, ptr %i.kj, i64 424
  %i.ko = sext i32 %.0253 to i64
  %i.kp = sext i32 %i.kf to i64
  %i.kq = trunc nsw i64 %indvars.iv537 to i32
  br label %bb.bh

bb.bh:                                            ; preds = %.lr.ph478, %.loopexit
  %indvars.iv534 = phi i64 [ %i.ko, %.lr.ph478 ], [ %indvars.iv.next535, %.loopexit ] ; 6 uses
  %i.kr = phi i64 [ %i.kp, %.lr.ph478 ], [ %i.nc, %.loopexit ]
  %i.ks = trunc nsw i64 %indvars.iv534 to i32
  %i.kt = add i32 %i.ks, 2                        ; 2 uses
  %i.ku = mul i32 %i.kt, %i.b                     ; 2 uses
  %i.kv = or i32 %i.ku, %i.kq
  %or.cond12 = icmp sgt i32 %i.kv, -1
  br i1 %or.cond12, label %bb.bi, label %stbhw__draw_h_tile.exit399

bb.bi:                                            ; preds = %bb.bh
  %i.kw = load ptr, ptr %i.jr, align 8, !tbaa !95
  %i.kx = load i32, ptr %i.js, align 8, !tbaa !96
  %i.ky = sext i32 %i.kt to i64                   ; 3 uses
  %i.kz = getelementptr inbounds i8, ptr %i.kh, i64 %i.ky
  %i.la = add nsw i64 %indvars.iv534, 3           ; 2 uses
  %i.lb = getelementptr inbounds i8, ptr %i.kh, i64 %i.la
  %i.lc = getelementptr inbounds i8, ptr %i.ki, i64 %i.ky
  %i.ld = getelementptr i8, ptr %i.ki, i64 %indvars.iv534
  %i.le = getelementptr i8, ptr %i.ld, i64 4
  %i.lf = getelementptr inbounds i8, ptr %i.kk, i64 %i.ky
  %i.lg = getelementptr inbounds i8, ptr %i.kk, i64 %i.la
  %i.lh = tail call ptr @stbhw__choose_tile(ptr noundef %i.kw, i32 noundef %i.kx, ptr noundef nonnull %i.kz, ptr noundef nonnull %i.lb, ptr noundef nonnull %i.lc, ptr noundef %i.le, ptr noundef %i.lf, ptr noundef %i.lg, ptr noundef %1) ; 2 uses
  %.not300 = icmp eq ptr %i.lh, null
  br i1 %.not300, label %.critedge324, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  br i1 %i.jt, label %.lr.ph33.split.us.preheader.i384, label %stbhw__draw_h_tile.exit399

.lr.ph33.split.us.preheader.i384:                 ; preds = %bb.bj
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 6
  br label %.lr.ph33.split.us.i387

.lr.ph33.split.us.i387:                           ; preds = %..loopexit_crit_edge.us.i390, %.lr.ph33.split.us.preheader.i384
  %indvars.iv36.i388 = phi i64 [ 0, %.lr.ph33.split.us.preheader.i384 ], [ %indvars.iv.next37.i391, %..loopexit_crit_edge.us.i390 ] ; 3 uses
  %i.lj = add nsw i64 %indvars.iv36.i388, %indvars.iv537 ; 2 uses
  %i.lk = icmp slt i64 %i.lj, %i.jv
  br i1 %i.lk, label %.preheader.us.i393, label %..loopexit_crit_edge.us.i390

bb.bk:                                            ; preds = %.preheader.us.i393, %bb.bm
  %indvars.iv.i395 = phi i64 [ 0, %.preheader.us.i393 ], [ %indvars.iv.next.i397, %bb.bm ] ; 3 uses
  %i.ll = add nsw i64 %indvars.iv.i395, %i.kr     ; 3 uses
  %i.lm = icmp sgt i64 %i.ll, -1
  %i.ln = icmp slt i64 %i.ll, %i.ju
  %or.cond29.us.i396 = and i1 %i.lm, %i.ln
  br i1 %or.cond29.us.i396, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.lo = add nsw i64 %indvars.iv.i395, %i.lw
  %i.lp = mul nsw i64 %i.lo, 3
  %i.lq = getelementptr inbounds i8, ptr %i.li, i64 %i.lp
  %i.lr = mul nuw nsw i64 %i.ll, 3
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.lr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ls, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.lq, i64 3, i1 false)
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
  %i.lt = trunc nuw nsw i64 %indvars.iv36.i388 to i32
  %factor.op.mul.reass.us.i394 = mul i32 %factor.op.mul31.i382, %i.lt
  %i.lu = mul nsw i64 %i.lj, %i.jw
  %i.lv = getelementptr inbounds i8, ptr %2, i64 %i.lu
  %i.lw = sext i32 %factor.op.mul.reass.us.i394 to i64
  br label %bb.bk

stbhw__draw_h_tile.exit399:                       ; preds = %..loopexit_crit_edge.us.i390, %bb.bj, %bb.bh
  %i.lx = add nsw i32 %i.ku, %i.b                 ; 2 uses
  %i.ly = icmp slt i32 %i.lx, %4
  br i1 %i.ly, label %bb.bn, label %.loopexit

bb.bn:                                            ; preds = %stbhw__draw_h_tile.exit399
  %i.lz = load ptr, ptr %i.jx, align 8, !tbaa !97
  %i.ma = load i32, ptr %i.jy, align 8, !tbaa !98
  %i.mb = add nsw i64 %indvars.iv534, 5           ; 4 uses
  %i.mc = getelementptr inbounds i8, ptr %i.kh, i64 %i.mb
  %i.md = getelementptr inbounds i8, ptr %i.ki, i64 %i.mb
  %i.me = add nsw i64 %indvars.iv534, 6           ; 2 uses
  %i.mf = getelementptr inbounds i8, ptr %i.ki, i64 %i.me
  %i.mg = getelementptr inbounds i8, ptr %i.km, i64 %i.mb
  %i.mh = getelementptr inbounds i8, ptr %i.km, i64 %i.me
  %i.mi = getelementptr inbounds i8, ptr %i.kn, i64 %i.mb
  %i.mj = tail call ptr @stbhw__choose_tile(ptr noundef %i.lz, i32 noundef %i.ma, ptr noundef nonnull %i.mc, ptr noundef nonnull %i.md, ptr noundef nonnull %i.mf, ptr noundef %i.mg, ptr noundef %i.mh, ptr noundef %i.mi, ptr noundef %1) ; 2 uses
  %.not301 = icmp eq ptr %i.mj, null
  br i1 %.not301, label %.critedge324, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  br i1 %i.jt, label %.lr.ph33.split.us.preheader.i401, label %.loopexit

.lr.ph33.split.us.preheader.i401:                 ; preds = %bb.bo
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 6
  %i.ml = sext i32 %i.lx to i64
  br label %.lr.ph33.split.us.i405

.lr.ph33.split.us.i405:                           ; preds = %..loopexit_crit_edge.us.i408, %.lr.ph33.split.us.preheader.i401
  %indvars.iv36.i406 = phi i64 [ 0, %.lr.ph33.split.us.preheader.i401 ], [ %indvars.iv.next37.i409, %..loopexit_crit_edge.us.i408 ] ; 3 uses
  %i.mm = add nsw i64 %indvars.iv36.i406, %indvars.iv537 ; 3 uses
  %i.mn = icmp sgt i64 %i.mm, -1
  %i.mo = icmp slt i64 %i.mm, %i.jv
  %or.cond.us.i407 = and i1 %i.mn, %i.mo
  br i1 %or.cond.us.i407, label %.preheader.us.i411, label %..loopexit_crit_edge.us.i408

bb.bp:                                            ; preds = %.preheader.us.i411, %bb.br
  %indvars.iv.i412 = phi i64 [ 0, %.preheader.us.i411 ], [ %indvars.iv.next.i414, %bb.br ] ; 3 uses
  %i.mp = add nsw i64 %indvars.iv.i412, %i.ml     ; 3 uses
  %i.mq = icmp sgt i64 %i.mp, -1
  %i.mr = icmp slt i64 %i.mp, %i.ju
  %or.cond29.us.i413 = and i1 %i.mq, %i.mr
  br i1 %or.cond29.us.i413, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ms = add nuw nsw i64 %indvars.iv.i412, %i.nb
  %i.mt = mul nuw nsw i64 %i.ms, 3
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.mt
  %i.mv = mul nuw nsw i64 %i.mp, 3
  %i.mw = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.mv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.mw, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.mu, i64 3, i1 false)
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
  %i.mx = mul nsw i64 %i.mm, %i.jw
  %i.my = getelementptr inbounds i8, ptr %2, i64 %i.mx
  %i.mz = trunc i64 %indvars.iv36.i406 to i32
  %i.na = mul i32 %i.b, %i.mz
  %i.nb = zext i32 %i.na to i64
  br label %bb.bp

.loopexit:                                        ; preds = %..loopexit_crit_edge.us.i408, %stbhw__draw_h_tile.exit399, %bb.bo
end_hunk_0
