inline.NumInlined: 64
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 15
begin_hunk_0_@SIM4:bb.a
.lr.ph260.i:                                      ; preds = %bb.hb
  %i.bqe = getelementptr inbounds nuw i8, ptr %i.bpl, i64 8
  %i.bqf = xor i32 %i.bqc, -1
  br label %bb.hc

bb.hc:                                            ; preds = %splice_score_compare.exit190.thread.i, %.lr.ph260.i
  %.0258.i = phi i32 [ 0, %.lr.ph260.i ], [ %i.bsd, %splice_score_compare.exit190.thread.i ] ; 3 uses
  %.sroa.5.1255.i = phi i32 [ %.sroa.5.0269.i, %.lr.ph260.i ], [ %.sroa.5.2.i, %splice_score_compare.exit190.thread.i ] ; 3 uses
  %.sroa.6.0254.i = phi i32 [ -1, %.lr.ph260.i ], [ %.sroa.6.1.i, %splice_score_compare.exit190.thread.i ] ; 4 uses
  %.sroa.9.0253.i = phi i32 [ 0, %.lr.ph260.i ], [ %.sroa.9.1.i, %splice_score_compare.exit190.thread.i ] ; 5 uses
  %.sroa.12.0252.i = phi i32 [ 0, %.lr.ph260.i ], [ %.sroa.12.1.i, %splice_score_compare.exit190.thread.i ] ; 5 uses
  %.sroa.14.1251.i = phi i32 [ %.sroa.14.0268.i, %.lr.ph260.i ], [ %.sroa.14.2.i, %splice_score_compare.exit190.thread.i ] ; 3 uses
  %i.bqg = phi <2 x i32> [ %i.bph, %.lr.ph260.i ], [ %i.bsc, %splice_score_compare.exit190.thread.i ] ; 3 uses
  %i.bqh = load i32, ptr %i.bqe, align 4, !tbaa !50
  %i.bqi = add i32 %.0258.i, %i.bqf               ; 2 uses
  %i.bqj = add i32 %i.bqh, %i.bqi                 ; 5 uses
  store i32 %i.bqj, ptr %5, align 8, !tbaa !115
  %i.bqk = load i32, ptr %i.bpw, align 4, !tbaa !51
  %i.bql = add i32 %i.bqk, %i.bqi                 ; 5 uses
  store i32 %i.bql, ptr %i.au, align 4, !tbaa !117
  %i.bqm = load i32, ptr %i.bpm, align 4, !tbaa !35
  %i.bqn = add i32 %i.bqm, %.0258.i               ; 5 uses
  store i32 %i.bqn, ptr %i.av, align 8, !tbaa !118
  %i.bqo = load i32, ptr %i.boz, align 8, !tbaa !112 ; 2 uses
  %i.bqp = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 44), align 4, !tbaa !109
  %i.bqq = shl i32 %i.bqp, 1
  %i.bqr = add i32 %i.bqq, 4
  %i.bqs = zext i32 %i.bqr to i64
  %i.bqt = call ptr @xmalloc(i64 noundef %i.bqs) #18 ; 5 uses
  store i32 0, ptr %i.aw, align 8, !tbaa !124
  store i32 0, ptr %i.ax, align 4, !tbaa !125
  store i32 -1, ptr %i.ay, align 4, !tbaa !119
  %i.bqu = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 16), align 8, !tbaa !126
  %.not.i183.i = icmp eq i32 %i.bqu, 0
  br i1 %.not.i183.i, label %compute_max_score.exit.i, label %.lr.ph.i184.i

.lr.ph.i184.i:                                    ; preds = %bb.hc
  %i.bqv = icmp sgt i32 %i.bqo, -1
  br i1 %i.bqv, label %.lr.ph.split.us.i.i, label %.thread.i185.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i184.i
  %i.bqw = icmp eq i32 %i.bqo, 0
  br i1 %i.bqw, label %.thread.us.us.i.i, label %.lr.ph.split.us.split.i.i

.thread.us.us.i.i:                                ; preds = %.lr.ph.split.us.i.i, %.thread.us.us.i.i
  %indvars.iv35.i.i = phi i64 [ %indvars.iv.next36.i.i, %.thread.us.us.i.i ], [ 0, %.lr.ph.split.us.i.i ] ; 4 uses
  %i.bqx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @options, i64 8), align 8, !tbaa !127
  %i.bqy = getelementptr inbounds nuw [8 x i8], ptr %i.bqx, i64 %indvars.iv35.i.i
  %i.bqz = trunc nuw i64 %indvars.iv35.i.i to i32 ; 2 uses
  call fastcc void @compute_max_score_1(ptr noundef readonly %i.bpa, ptr noundef readonly %i.bpb, ptr noundef nonnull %5, i32 noundef %i.bqz, i32 noundef %i.bqj, i32 noundef %i.bql, i32 noundef %i.bqn, ptr noundef %i.bqt, ptr noundef %i.bqy, i32 noundef 1)
  %i.bra = load ptr, ptr getelementptr inbounds nuw (i8, ptr @options, i64 8), align 8, !tbaa !127
  %i.brb = getelementptr inbounds nuw [8 x i8], ptr %i.bra, i64 %indvars.iv35.i.i
  %i.brc = getelementptr inbounds nuw i8, ptr %i.brb, i64 4
  call fastcc void @compute_max_score_1(ptr noundef readonly %i.bpa, ptr noundef readonly %i.bpb, ptr noundef nonnull %5, i32 noundef %i.bqz, i32 noundef %i.bqj, i32 noundef %i.bql, i32 noundef %i.bqn, ptr noundef %i.bqt, ptr noundef nonnull %i.brc, i32 noundef -1)
  %indvars.iv.next36.i.i = add nuw nsw i64 %indvars.iv35.i.i, 1 ; 2 uses
  %i.brd = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 16), align 8, !tbaa !126
  %i.bre = zext i32 %i.brd to i64
  %i.brf = icmp samesign ult i64 %indvars.iv.next36.i.i, %i.bre
  br i1 %i.brf, label %.thread.us.us.i.i, label %compute_max_score.exit.i, !llvm.loop !128

.lr.ph.split.us.split.i.i:                        ; preds = %.lr.ph.split.us.i.i, %.lr.ph.split.us.split.i.i
  %indvars.iv32.i.i = phi i64 [ %indvars.iv.next33.i.i, %.lr.ph.split.us.split.i.i ], [ 0, %.lr.ph.split.us.i.i ] ; 3 uses
  %i.brg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @options, i64 8), align 8, !tbaa !127
  %i.brh = getelementptr inbounds nuw [8 x i8], ptr %i.brg, i64 %indvars.iv32.i.i
  %i.bri = trunc nuw i64 %indvars.iv32.i.i to i32
  call fastcc void @compute_max_score_1(ptr noundef readonly %i.bpa, ptr noundef readonly %i.bpb, ptr noundef nonnull %5, i32 noundef %i.bri, i32 noundef %i.bqj, i32 noundef %i.bql, i32 noundef %i.bqn, ptr noundef %i.bqt, ptr noundef %i.brh, i32 noundef 1)
  %indvars.iv.next33.i.i = add nuw nsw i64 %indvars.iv32.i.i, 1 ; 2 uses
  %i.brj = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 16), align 8, !tbaa !126
  %i.brk = zext i32 %i.brj to i64
  %i.brl = icmp samesign ult i64 %indvars.iv.next33.i.i, %i.brk
  br i1 %i.brl, label %.lr.ph.split.us.split.i.i, label %compute_max_score.exit.i, !llvm.loop !128

.thread.i185.i:                                   ; preds = %.lr.ph.i184.i, %.thread.i185.i
  %indvars.iv.i186.i = phi i64 [ %indvars.iv.next.i187.i, %.thread.i185.i ], [ 0, %.lr.ph.i184.i ] ; 3 uses
  %i.brm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @options, i64 8), align 8, !tbaa !127
  %i.brn = getelementptr inbounds nuw [8 x i8], ptr %i.brm, i64 %indvars.iv.i186.i
  %i.bro = getelementptr inbounds nuw i8, ptr %i.brn, i64 4
  %i.brp = trunc nuw i64 %indvars.iv.i186.i to i32
  call fastcc void @compute_max_score_1(ptr noundef readonly %i.bpa, ptr noundef readonly %i.bpb, ptr noundef nonnull %5, i32 noundef %i.brp, i32 noundef %i.bqj, i32 noundef %i.bql, i32 noundef %i.bqn, ptr noundef %i.bqt, ptr noundef nonnull %i.bro, i32 noundef -1)
  %indvars.iv.next.i187.i = add nuw nsw i64 %indvars.iv.i186.i, 1 ; 2 uses
  %i.brq = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 16), align 8, !tbaa !126
  %i.brr = zext i32 %i.brq to i64
  %i.brs = icmp samesign ult i64 %indvars.iv.next.i187.i, %i.brr
  br i1 %i.brs, label %.thread.i185.i, label %compute_max_score.exit.i, !llvm.loop !128

compute_max_score.exit.i:                         ; preds = %.thread.i185.i, %.lr.ph.split.us.split.i.i, %.thread.us.us.i.i, %bb.hc
  call void @free(ptr noundef %i.bqt) #18
  %i.brt = load i32, ptr %i.aw, align 8, !tbaa !124 ; 3 uses
  %i.bru = icmp ult i32 %i.brt, %.sroa.9.0253.i
  br i1 %i.bru, label %splice_score_compare.exit190.thread.i, label %bb.hd

bb.hd:                                            ; preds = %compute_max_score.exit.i
  %i.brv = icmp ugt i32 %i.brt, %.sroa.9.0253.i
  br i1 %i.brv, label %.splice_score_compare.exit190.thread207_crit_edge.i, label %bb.he

.splice_score_compare.exit190.thread207_crit_edge.i: ; preds = %bb.hd
  %.sroa.6.0.copyload.pre.i = load i32, ptr %i.ay, align 4, !tbaa !4
  %.sroa.12.0.copyload.pre.i = load i32, ptr %i.ax, align 4, !tbaa !4
  br label %splice_score_compare.exit190.thread207.i

bb.he:                                            ; preds = %bb.hd
  %i.brw = load i32, ptr %i.ax, align 4, !tbaa !125 ; 3 uses
  %i.brx = icmp ult i32 %i.brw, %.sroa.12.0252.i
  br i1 %i.brx, label %splice_score_compare.exit190.thread.i, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.bry = icmp ugt i32 %i.brw, %.sroa.12.0252.i
  %i.brz = load i32, ptr %i.ay, align 4           ; 2 uses
  %i.bsa = icmp ult i32 %i.brz, %.sroa.6.0254.i
  %or.cond278.i = select i1 %i.bry, i1 true, i1 %i.bsa
  br i1 %or.cond278.i, label %splice_score_compare.exit190.thread207.i, label %splice_score_compare.exit190.thread.i

splice_score_compare.exit190.thread207.i:         ; preds = %bb.hf, %.splice_score_compare.exit190.thread207_crit_edge.i
  %.sroa.12.0.copyload.i = phi i32 [ %.sroa.12.0.copyload.pre.i, %.splice_score_compare.exit190.thread207_crit_edge.i ], [ %i.brw, %bb.hf ]
  %.sroa.6.0.copyload.i = phi i32 [ %.sroa.6.0.copyload.pre.i, %.splice_score_compare.exit190.thread207_crit_edge.i ], [ %i.brz, %bb.hf ]
  %i.bsb = load <2 x i32>, ptr %5, align 8, !tbaa !4
  %.sroa.5.0.copyload.i = load i32, ptr %i.av, align 8, !tbaa !4
  %.sroa.14.0.copyload.i = load i32, ptr %.sroa.14.0..sroa_idx.i, align 8, !tbaa !4
  br label %splice_score_compare.exit190.thread.i

splice_score_compare.exit190.thread.i:            ; preds = %splice_score_compare.exit190.thread207.i, %bb.hf, %bb.he, %compute_max_score.exit.i
  %.sroa.14.2.i = phi i32 [ %.sroa.14.0.copyload.i, %splice_score_compare.exit190.thread207.i ], [ %.sroa.14.1251.i, %bb.he ], [ %.sroa.14.1251.i, %bb.hf ], [ %.sroa.14.1251.i, %compute_max_score.exit.i ] ; 2 uses
  %.sroa.12.1.i = phi i32 [ %.sroa.12.0.copyload.i, %splice_score_compare.exit190.thread207.i ], [ %.sroa.12.0252.i, %bb.he ], [ %.sroa.12.0252.i, %bb.hf ], [ %.sroa.12.0252.i, %compute_max_score.exit.i ]
  %.sroa.9.1.i = phi i32 [ %i.brt, %splice_score_compare.exit190.thread207.i ], [ %.sroa.9.0253.i, %bb.he ], [ %.sroa.9.0253.i, %bb.hf ], [ %.sroa.9.0253.i, %compute_max_score.exit.i ] ; 2 uses
  %.sroa.6.1.i = phi i32 [ %.sroa.6.0.copyload.i, %splice_score_compare.exit190.thread207.i ], [ %.sroa.6.0254.i, %bb.he ], [ %.sroa.6.0254.i, %bb.hf ], [ %.sroa.6.0254.i, %compute_max_score.exit.i ] ; 2 uses
  %.sroa.5.2.i = phi i32 [ %.sroa.5.0.copyload.i, %splice_score_compare.exit190.thread207.i ], [ %.sroa.5.1255.i, %bb.he ], [ %.sroa.5.1255.i, %bb.hf ], [ %.sroa.5.1255.i, %compute_max_score.exit.i ] ; 2 uses
  %i.bsc = phi <2 x i32> [ %i.bsb, %splice_score_compare.exit190.thread207.i ], [ %i.bqg, %bb.he ], [ %i.bqg, %bb.hf ], [ %i.bqg, %compute_max_score.exit.i ] ; 2 uses
  %i.bsd = add nuw i32 %.0258.i, 1                ; 2 uses
  %exitcond303.not.i = icmp eq i32 %i.bsd, %i.bqd
  br i1 %exitcond303.not.i, label %._crit_edge261.loopexit.i, label %bb.hc, !llvm.loop !131

._crit_edge261.loopexit.i:                        ; preds = %splice_score_compare.exit190.thread.i
  %.pre312.i = load i64, ptr %i.bpn, align 4
  %i.bse = and i32 %.sroa.6.1.i, 255
  %i.bsf = zext nneg i32 %i.bse to i64
  %i.bsg = shl nuw i64 %i.bsf, 56
  %i.bsh = and i32 %.sroa.9.1.i, 4194303
  %i.bsi = zext nneg i32 %i.bsh to i64
  %i.bsj = shl nuw nsw i64 %i.bsi, 34
  br label %._crit_edge261.i

._crit_edge261.i:                                 ; preds = %._crit_edge261.loopexit.i, %bb.hb
  %i.bsk = phi i64 [ %i.bpo, %bb.hb ], [ %.pre312.i, %._crit_edge261.loopexit.i ]
  %.sroa.14.1.lcssa.i = phi i32 [ %.sroa.14.0268.i, %bb.hb ], [ %.sroa.14.2.i, %._crit_edge261.loopexit.i ] ; 2 uses
  %.sroa.9.0.lcssa.i = phi i64 [ 0, %bb.hb ], [ %i.bsj, %._crit_edge261.loopexit.i ]
  %.sroa.6.0.lcssa.i = phi i64 [ -72057594037927936, %bb.hb ], [ %i.bsg, %._crit_edge261.loopexit.i ]
  %.sroa.5.1.lcssa.i = phi i32 [ %.sroa.5.0269.i, %bb.hb ], [ %.sroa.5.2.i, %._crit_edge261.loopexit.i ] ; 2 uses
  %i.bsl = phi <2 x i32> [ %i.bph, %bb.hb ], [ %i.bsc, %._crit_edge261.loopexit.i ] ; 3 uses
  %i.bsm = and i32 %.sroa.14.1.lcssa.i, 3
  %i.bsn = zext nneg i32 %i.bsm to i64
  %i.bso = shl nuw nsw i64 %i.bsn, 32
  %i.bsp = and i64 %i.bsk, 4294967295
  %i.bsq = or disjoint i64 %i.bso, %i.bsp
  %i.bsr = or disjoint i64 %i.bsq, %.sroa.6.0.lcssa.i
  %i.bss = add nuw nsw i64 %i.bsr, %.sroa.9.0.lcssa.i
  store i64 %i.bss, ptr %i.bpn, align 4
  %i.bst = getelementptr inbounds nuw i8, ptr %i.bpl, i64 8
  store <2 x i32> %i.bsl, ptr %i.bst, align 4, !tbaa !4
  %i.bsu = extractelement <2 x i32> %i.bsl, i64 1
  %i.bsv = add i32 %i.bsu, 1
  store i32 %i.bsv, ptr %i.bpz, align 4, !tbaa !33
  store i32 %.sroa.5.1.lcssa.i, ptr %i.bpm, align 4, !tbaa !35
  %.pre313.i = load i32, ptr %i.bl, align 8, !tbaa !113 ; 2 uses
  br label %bb.hg

bb.hg:                                            ; preds = %._crit_edge261.i, %bb.ha, %bb.gz
  %i.bsw = phi i32 [ %i.bpf, %bb.gz ], [ %i.bpf, %bb.ha ], [ %.pre313.i, %._crit_edge261.i ] ; 2 uses
  %i.bsx = phi i32 [ %i.bpg, %bb.gz ], [ %i.bpg, %bb.ha ], [ %.pre313.i, %._crit_edge261.i ] ; 2 uses
  %.sroa.14.3.i = phi i32 [ %.sroa.14.0268.i, %bb.gz ], [ %.sroa.14.0268.i, %bb.ha ], [ %.sroa.14.1.lcssa.i, %._crit_edge261.i ]
  %.sroa.5.3.i = phi i32 [ %.sroa.5.0269.i, %bb.gz ], [ %.sroa.5.0269.i, %bb.ha ], [ %.sroa.5.1.lcssa.i, %._crit_edge261.i ]
  %i.bsy = phi <2 x i32> [ %i.bph, %bb.gz ], [ %i.bph, %bb.ha ], [ %i.bsl, %._crit_edge261.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %indvars.iv.next305.i = add nuw nsw i64 %indvars.iv304.i, 1 ; 2 uses
  %i.bsz = zext i32 %i.bsx to i64
  %i.bta = icmp samesign ult i64 %indvars.iv.next305.i, %i.bsz
  br i1 %i.bta, label %.lr.ph274.i, label %slide_intron.exit, !llvm.loop !132

slide_intron.exit:                                ; preds = %bb.hg, %._crit_edge232.i.thread, %bb.gy
  %i.btb = phi i32 [ 0, %._crit_edge232.i.thread ], [ %i.bpc, %bb.gy ], [ %i.bsw, %bb.hg ]
  %i.btc = load ptr, ptr %i.w, align 8, !tbaa !30 ; 3 uses
  %i.btd = load ptr, ptr %i.o, align 8, !tbaa !21 ; 3 uses
  %i.bte = load i32, ptr %i.f, align 8, !tbaa !8  ; 3 uses
  %i.btf = load i32, ptr %i.i, align 4, !tbaa !14 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store ptr null, ptr %i.be, align 8, !tbaa !133
  %i.btg = add nsw i32 %i.bte, 1
  store i32 %i.btg, ptr %3, align 4, !tbaa !35
  %i.bth = add nsw i32 %i.btf, 1
  store i32 %i.bth, ptr %i.az, align 4, !tbaa !33
  store i32 0, ptr %i.ba, align 4, !tbaa !50
  store i32 0, ptr %i.bb, align 4, !tbaa !51
  %.0189250.i = add i32 %i.btb, -1                ; 2 uses
  %i.bti = icmp sgt i32 %.0189250.i, -1
  br i1 %i.bti, label %.lr.ph259.preheader.i, label %pluri_align.exit

.lr.ph259.preheader.i:                            ; preds = %slide_intron.exit
  %i.btj = zext nneg i32 %.0189250.i to i64
  br label %.lr.ph259.i

.lr.ph259.i:                                      ; preds = %._crit_edge.i510, %.lr.ph259.preheader.i
  %11 = phi i32 [ 0, %.lr.ph259.preheader.i ], [ %i.bzl, %._crit_edge.i510 ] ; 2 uses
  %indvars.iv.i502 = phi i64 [ %i.btj, %.lr.ph259.preheader.i ], [ %indvars.iv.next.i511, %._crit_edge.i510 ] ; 4 uses
  %.0161256.i = phi ptr [ %3, %.lr.ph259.preheader.i ], [ %i.btm, %._crit_edge.i510 ] ; 4 uses
  %.0167255.i = phi i32 [ %i.bte, %.lr.ph259.preheader.i ], [ %.2169.i, %._crit_edge.i510 ] ; 3 uses
  %.0170254.i = phi i32 [ %i.btf, %.lr.ph259.preheader.i ], [ %.1171.i, %._crit_edge.i510 ] ; 4 uses
  %.0185253.i = phi i32 [ 0, %.lr.ph259.preheader.i ], [ %i.bzk, %._crit_edge.i510 ] ; 5 uses
  %.0190252.i = phi ptr [ null, %.lr.ph259.preheader.i ], [ %i.bzz, %._crit_edge.i510 ] ; 5 uses
  %.0194251.i = phi i32 [ 0, %.lr.ph259.preheader.i ], [ %.1195.lcssa.i, %._crit_edge.i510 ] ; 2 uses
  %i.btk = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.btl = getelementptr inbounds nuw [8 x i8], ptr %i.btk, i64 %indvars.iv.i502
  %i.btm = load ptr, ptr %i.btl, align 8, !tbaa !31 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.btn = getelementptr inbounds nuw i8, ptr %.0161256.i, i64 4 ; 2 uses
  %i.bto = load i32, ptr %i.btn, align 4, !tbaa !33
  %i.btp = getelementptr inbounds nuw i8, ptr %i.btm, i64 12 ; 5 uses
  %i.btq = load i32, ptr %i.btp, align 4, !tbaa !51 ; 4 uses
  %.neg.i = add i32 %i.btq, 1
  %.not205.i = icmp eq i32 %i.bto, %.neg.i
  br i1 %.not205.i, label %bb.hk, label %bb.hh

bb.hh:                                            ; preds = %.lr.ph259.i
  %.not208.i = icmp eq i32 %11, 0
  br i1 %.not208.i, label %bb.hj, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.btr = call ptr @xmalloc(i64 noundef 40) #18  ; 8 uses
  %i.bts = load ptr, ptr %i.be, align 8, !tbaa !133
  store ptr %i.bts, ptr %i.btr, align 8, !tbaa !134
  store ptr %i.btr, ptr %i.be, align 8, !tbaa !133
  %i.btt = getelementptr inbounds nuw i8, ptr %i.btr, i64 8
  store ptr %.0190252.i, ptr %i.btt, align 8, !tbaa !137
  %i.btu = load i32, ptr %.0161256.i, align 4, !tbaa !35 ; 2 uses
  %i.btv = getelementptr inbounds nuw i8, ptr %i.btr, i64 16
  store i32 %i.btu, ptr %i.btv, align 8, !tbaa !138
  %i.btw = load i32, ptr %i.btn, align 4, !tbaa !33 ; 2 uses
  %i.btx = getelementptr inbounds nuw i8, ptr %i.btr, i64 20
  store i32 %i.btw, ptr %i.btx, align 4, !tbaa !139
  %i.bty = add i32 %.0167255.i, 1
  %i.btz = sub i32 %i.bty, %i.btu
  %i.bua = getelementptr inbounds nuw i8, ptr %i.btr, i64 24
  store i32 %i.btz, ptr %i.bua, align 8, !tbaa !140
  %i.bub = add i32 %.0170254.i, 1
  %i.buc = sub i32 %i.bub, %i.btw
  %i.bud = getelementptr inbounds nuw i8, ptr %i.btr, i64 28
  store i32 %i.buc, ptr %i.bud, align 4, !tbaa !141
  %i.bue = getelementptr inbounds nuw i8, ptr %i.btr, i64 32
  store i32 %.0185253.i, ptr %i.bue, align 8, !tbaa !142
  %.pre.i503 = load i32, ptr %i.btp, align 4, !tbaa !51
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh
  %i.buf = phi i32 [ %.pre.i503, %bb.hi ], [ %i.btq, %bb.hh ] ; 2 uses
  %.1191.i = phi ptr [ null, %bb.hi ], [ %.0190252.i, %bb.hh ]
  %.1186.i = phi i32 [ 0, %bb.hi ], [ %.0185253.i, %bb.hh ]
  %i.bug = getelementptr inbounds nuw i8, ptr %i.btm, i64 8
  %i.buh = load i32, ptr %i.bug, align 4, !tbaa !50 ; 2 uses
  br label %.critedge.i504

bb.hk:                                            ; preds = %.lr.ph259.i
  %i.bui = load i32, ptr %.0161256.i, align 4, !tbaa !35
  %i.buj = getelementptr inbounds nuw i8, ptr %i.btm, i64 8 ; 2 uses
  %i.buk = load i32, ptr %i.buj, align 4, !tbaa !50 ; 4 uses
  %i.bul = xor i32 %i.buk, -1
  %i.bum = add i32 %i.bui, %i.bul                 ; 2 uses
  %.not206.i = icmp eq i32 %i.bum, 0
  br i1 %.not206.i, label %.critedge.i504, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %.not207.i = icmp eq i32 %11, 0
  br i1 %.not207.i, label %.critedge.i504, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.bun = call ptr @xmalloc(i64 noundef 16) #18  ; 4 uses
  %i.buo = getelementptr inbounds nuw i8, ptr %i.bun, i64 12
  store i8 1, ptr %i.buo, align 4, !tbaa !143
  %i.bup = getelementptr inbounds nuw i8, ptr %i.bun, i64 8
  store i32 %i.bum, ptr %i.bup, align 8, !tbaa !145
  store ptr %.0190252.i, ptr %i.bun, align 8, !tbaa !146
  %.pre278.i = load i32, ptr %i.buj, align 4, !tbaa !50
  %.pre279.i = load i32, ptr %i.btp, align 4, !tbaa !51
  br label %.critedge.i504

.critedge.i504:                                   ; preds = %bb.hm, %bb.hl, %bb.hk, %bb.hj
  %i.buq = phi i32 [ %i.buf, %bb.hj ], [ %.pre279.i, %bb.hm ], [ %i.btq, %bb.hk ], [ %i.btq, %bb.hl ] ; 2 uses
  %i.bur = phi i32 [ %i.buh, %bb.hj ], [ %.pre278.i, %bb.hm ], [ %i.buk, %bb.hk ], [ %i.buk, %bb.hl ]
  %.2192.i = phi ptr [ %.1191.i, %bb.hj ], [ %i.bun, %bb.hm ], [ %.0190252.i, %bb.hk ], [ %.0190252.i, %bb.hl ] ; 4 uses
  %.2187.i = phi i32 [ %.1186.i, %bb.hj ], [ %.0185253.i, %bb.hm ], [ %.0185253.i, %bb.hk ], [ %.0185253.i, %bb.hl ] ; 2 uses
  %.1171.i = phi i32 [ %i.buf, %bb.hj ], [ %.0170254.i, %bb.hm ], [ %.0170254.i, %bb.hk ], [ %.0170254.i, %bb.hl ] ; 3 uses
  %.1168.i = phi i32 [ %i.buh, %bb.hj ], [ %.0167255.i, %bb.hm ], [ %.0167255.i, %bb.hk ], [ %i.buk, %bb.hl ] ; 3 uses
  %i.bus = load i32, ptr %i.btm, align 4, !tbaa !35
  %i.but = add i32 %i.bus, -1
  %i.buu = getelementptr inbounds nuw i8, ptr %i.btm, i64 4 ; 6 uses
  %i.buv = load i32, ptr %i.buu, align 4, !tbaa !33 ; 2 uses
  %i.buw = add i32 %i.buv, -1
  %i.bux = getelementptr inbounds nuw i8, ptr %i.btm, i64 8 ; 4 uses
  %reass.sub.i505 = add i32 %i.buq, 1
  %i.buy = sub i32 %reass.sub.i505, %i.buv
  %i.buz = uitofp i32 %i.buy to double
  %i.bva = fmul nnan double %i.buz, 2.000000e-01  ; 2 uses
  %i.bvb = fcmp ogt double %i.bva, 1.000000e+03
  %i.bvc = select i1 %i.bvb, double %i.bva, double 1.000000e+03
  %i.bvd = fptosi double %i.bvc to i32
  %i.bve = call i32 @align_get_dist(ptr noundef %i.btc, ptr noundef %i.btd, i32 noundef %i.but, i32 noundef %i.buw, i32 noundef %i.bur, i32 noundef %i.buq, i32 noundef %i.bvd) #18 ; 5 uses
  %i.bvf = icmp slt i32 %i.bve, 0
  br i1 %i.bvf, label %pluri_align.exit.thread, label %bb.hn

bb.hn:                                            ; preds = %.critedge.i504
  %i.bvg = load i32, ptr %i.btm, align 4, !tbaa !35
  %i.bvh = add i32 %i.bvg, -1
  %i.bvi = load i32, ptr %i.buu, align 4, !tbaa !33
  %i.bvj = add i32 %i.bvi, -1
  %i.bvk = load i32, ptr %i.bux, align 4, !tbaa !50
  %i.bvl = load i32, ptr %i.btp, align 4, !tbaa !51
  call void @align_path(ptr noundef %i.btc, ptr noundef %i.btd, i32 noundef %i.bvh, i32 noundef %i.bvj, i32 noundef %i.bvk, i32 noundef %i.bvl, i32 noundef %i.bve, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef %i.bte, i32 noundef %i.btf) #18
  %i.bvm = load ptr, ptr %i.c, align 8, !tbaa !147
  %i.bvn = icmp eq ptr %i.bvm, null
  br i1 %i.bvn, label %pluri_align.exit.thread, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  call void @Condense_both_Ends(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #18
  %i.bvo = getelementptr inbounds nuw i8, ptr %.0161256.i, i64 8
  %i.bvp = load i32, ptr %i.bvo, align 4, !tbaa !50
  %.not209.i = icmp eq i32 %i.bvp, 0
  br i1 %.not209.i, label %bb.hp, label %bb.hu

bb.hp:                                            ; preds = %bb.ho
  %i.bvq = load ptr, ptr %i.c, align 8, !tbaa !147 ; 3 uses
  %i.bvr = getelementptr inbounds nuw i8, ptr %i.bvq, i64 12
  %i.bvs = load i8, ptr %i.bvr, align 4, !tbaa !143
  %i.bvt = icmp eq i8 %i.bvs, 1
  br i1 %i.bvt, label %bb.hq, label %bb.hu

bb.hq:                                            ; preds = %bb.hp
  %i.bvu = getelementptr inbounds nuw i8, ptr %i.bvq, i64 8
  %i.bvv = load i32, ptr %i.bvu, align 8, !tbaa !145 ; 4 uses
  %i.bvw = sub nsw i32 %i.bve, %i.bvv
  %i.bvx = load i32, ptr %i.bux, align 4, !tbaa !50
  %i.bvy = sub i32 %i.bvx, %i.bvv
  store i32 %i.bvy, ptr %i.bux, align 4, !tbaa !50
  %i.bvz = sub nsw i32 %.1168.i, %i.bvv
  %.not210.i = icmp eq ptr %.2192.i, null
  br i1 %.not210.i, label %bb.ht, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.bwa = getelementptr inbounds nuw i8, ptr %.2192.i, i64 12
  %i.bwb = load i8, ptr %i.bwa, align 4, !tbaa !143
  %i.bwc = icmp eq i8 %i.bwb, 1
  br i1 %i.bwc, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %bb.hr
  %i.bwd = getelementptr inbounds nuw i8, ptr %.2192.i, i64 8 ; 2 uses
  %i.bwe = load i32, ptr %i.bwd, align 8, !tbaa !145
  %i.bwf = add nsw i32 %i.bwe, %i.bvv
  store i32 %i.bwf, ptr %i.bwd, align 8, !tbaa !145
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hr, %bb.hq
  call void @free(ptr noundef nonnull %i.bvq) #18
  %i.bwg = load ptr, ptr %i.d, align 8, !tbaa !147
  store ptr null, ptr %i.bwg, align 8, !tbaa !146
  %i.bwh = load ptr, ptr %i.d, align 8, !tbaa !147
  store ptr %i.bwh, ptr %i.c, align 8, !tbaa !147
  br label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %bb.hp, %bb.ho
  %.2169.i = phi i32 [ %.1168.i, %bb.ho ], [ %i.bvz, %bb.ht ], [ %.1168.i, %bb.hp ] ; 3 uses
  %.0165.i = phi i32 [ %i.bve, %bb.ho ], [ %i.bvw, %bb.ht ], [ %i.bve, %bb.hp ] ; 3 uses
  %i.bwi = icmp eq i64 %indvars.iv.i502, 0
  %i.bwj = load ptr, ptr %i.b, align 8            ; 8 uses
  %i.bwk = icmp ne ptr %i.bwj, null
  %or.cond.i506 = select i1 %i.bwi, i1 %i.bwk, i1 false
  br i1 %or.cond.i506, label %bb.hv, label %bb.hz

bb.hv:                                            ; preds = %bb.hu
  %i.bwl = getelementptr inbounds nuw i8, ptr %i.bwj, i64 12
  %i.bwm = load i8, ptr %i.bwl, align 4, !tbaa !143
  %i.bwn = icmp eq i8 %i.bwm, 1
  br i1 %i.bwn, label %bb.hw, label %.thread.i

.thread.i:                                        ; preds = %bb.hv
  %i.bwo = add nsw i32 %.0165.i, %.2187.i
  %i.bwp = load i32, ptr %i.btm, align 4, !tbaa !35
  %i.bwq = load i32, ptr %i.buu, align 4, !tbaa !33
  br label %.lr.ph246.preheader.i

bb.hw:                                            ; preds = %bb.hv
  %i.bwr = getelementptr inbounds nuw i8, ptr %i.bwj, i64 8
  %i.bws = load i32, ptr %i.bwr, align 8, !tbaa !145 ; 2 uses
  %i.bwt = sub nsw i32 %.0165.i, %i.bws
  %i.bwu = load i32, ptr %i.btm, align 4, !tbaa !35
  %i.bwv = add i32 %i.bwu, %i.bws
  store i32 %i.bwv, ptr %i.btm, align 4, !tbaa !35
  %i.bww = load ptr, ptr %i.bwj, align 8, !tbaa !146 ; 3 uses
  %i.bwx = load ptr, ptr %i.c, align 8, !tbaa !147
  %i.bwy = icmp eq ptr %i.bwx, %i.bwj
  br i1 %i.bwy, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %bb.hw
  store ptr %i.bww, ptr %i.c, align 8, !tbaa !147
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hx, %bb.hw
  call void @free(ptr noundef nonnull %i.bwj) #18
  store ptr %i.bww, ptr %i.b, align 8, !tbaa !147
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.hu
  %.0184238.i = phi ptr [ %i.bww, %bb.hy ], [ %i.bwj, %bb.hu ] ; 2 uses
  %.1166.i = phi i32 [ %i.bwt, %bb.hy ], [ %.0165.i, %bb.hu ]
  %i.bwz = add nsw i32 %.1166.i, %.2187.i         ; 2 uses
  %i.bxa = load i32, ptr %i.btm, align 4, !tbaa !35 ; 2 uses
  %i.bxb = load i32, ptr %i.buu, align 4, !tbaa !33 ; 2 uses
  %.not211239.i = icmp eq ptr %.0184238.i, null
  br i1 %.not211239.i, label %._crit_edge.i510, label %.lr.ph246.preheader.i

.lr.ph246.preheader.i:                            ; preds = %bb.hz, %.thread.i
  %i.bxc = phi i32 [ %i.bwq, %.thread.i ], [ %i.bxb, %bb.hz ] ; 2 uses
  %i.bxd = phi i32 [ %i.bwp, %.thread.i ], [ %i.bxa, %bb.hz ] ; 2 uses
  %i.bxe = phi i32 [ %i.bwo, %.thread.i ], [ %i.bwz, %bb.hz ]
  %.0184238288.i = phi ptr [ %i.bwj, %.thread.i ], [ %.0184238.i, %bb.hz ]
  %i.bxf = zext i32 %i.bxc to i64
  %i.bxg = getelementptr inbounds nuw i8, ptr %i.btd, i64 %i.bxf
  %i.bxh = getelementptr inbounds i8, ptr %i.bxg, i64 -1
  %i.bxi = zext i32 %i.bxd to i64
  %i.bxj = getelementptr inbounds nuw i8, ptr %i.btc, i64 %i.bxi
  %i.bxk = getelementptr inbounds i8, ptr %i.bxj, i64 -1
  br label %.lr.ph246.i

.lr.ph246.i:                                      ; preds = %.loopexit.i508, %.lr.ph246.preheader.i
  %.0184245.i = phi ptr [ %.0184.i, %.loopexit.i508 ], [ %.0184238288.i, %.lr.ph246.preheader.i ] ; 5 uses
  %.0172244.i = phi i32 [ %.1173.i, %.loopexit.i508 ], [ 0, %.lr.ph246.preheader.i ] ; 5 uses
  %.0174243.i = phi i32 [ %.3177.i, %.loopexit.i508 ], [ 0, %.lr.ph246.preheader.i ] ; 6 uses
  %.0178242.i = phi ptr [ %.2180.i, %.loopexit.i508 ], [ %i.bxh, %.lr.ph246.preheader.i ] ; 8 uses
  %.0181241.i = phi ptr [ %.2183.i, %.loopexit.i508 ], [ %i.bxk, %.lr.ph246.preheader.i ] ; 8 uses
  %.1195240.i = phi i32 [ %.4.i509, %.loopexit.i508 ], [ %.0194251.i, %.lr.ph246.preheader.i ] ; 6 uses
  %i.bxl = getelementptr inbounds nuw i8, ptr %.0184245.i, i64 12
  %i.bxm = load i8, ptr %i.bxl, align 4, !tbaa !143
  switch i8 %i.bxm, label %.loopexit.i508 [
    i8 1, label %bb.ia
    i8 2, label %bb.ib
    i8 3, label %.preheader.i507
  ]

.preheader.i507:                                  ; preds = %.lr.ph246.i
  %i.bxn = getelementptr inbounds nuw i8, ptr %.0184245.i, i64 8
  %i.bxo = load i32, ptr %i.bxn, align 8, !tbaa !145 ; 5 uses
  %i.bxp = icmp sgt i32 %i.bxo, 0
  br i1 %i.bxp, label %.lr.ph.i513.preheader, label %.loopexit.i508

.lr.ph.i513.preheader:                            ; preds = %.preheader.i507
  %i.bxq = zext nneg i32 %i.bxo to i64            ; 2 uses
  %min.iters.check = icmp ult i32 %i.bxo, 8
  br i1 %min.iters.check, label %.lr.ph.i513.preheader1118, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i513.preheader
  %n.vec = and i64 %i.bxq, 2147483640             ; 5 uses
  %i.bxr = trunc nuw nsw i64 %n.vec to i32
  %i.bxs = getelementptr i8, ptr %.0178242.i, i64 %n.vec
  %i.bxt = getelementptr i8, ptr %.0181241.i, i64 %n.vec
  %i.bxu = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0174243.i, i64 0
  %i.bxv = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.1195240.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.bxu, %vector.ph ], [ %i.byi, %vector.body ]
  %vec.phi1020 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.byj, %vector.body ]
  %vec.phi1021 = phi <4 x i32> [ %i.bxv, %vector.ph ], [ %i.byc, %vector.body ]
  %vec.phi1022 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.byd, %vector.body ]
  %next.gep = getelementptr i8, ptr %.0178242.i, i64 %index ; 2 uses
  %next.gep1023 = getelementptr i8, ptr %.0181241.i, i64 %index ; 2 uses
  %i.bxw = getelementptr i8, ptr %next.gep1023, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep1023, align 1, !tbaa !20
  %wide.load1024 = load <4 x i8>, ptr %i.bxw, align 1, !tbaa !20
  %i.bxx = getelementptr i8, ptr %next.gep, i64 4
  %wide.load1025 = load <4 x i8>, ptr %next.gep, align 1, !tbaa !20
  %wide.load1026 = load <4 x i8>, ptr %i.bxx, align 1, !tbaa !20
  %i.bxy = icmp eq <4 x i8> %wide.load, %wide.load1025 ; 2 uses
  %i.bxz = icmp eq <4 x i8> %wide.load1024, %wide.load1026 ; 2 uses
  %i.bya = zext <4 x i1> %i.bxy to <4 x i32>
  %i.byb = zext <4 x i1> %i.bxz to <4 x i32>
  %i.byc = add <4 x i32> %vec.phi1021, %i.bya     ; 2 uses
  %i.byd = add <4 x i32> %vec.phi1022, %i.byb     ; 2 uses
  %i.bye = xor <4 x i1> %i.bxy, splat (i1 true)
  %i.byf = xor <4 x i1> %i.bxz, splat (i1 true)
  %i.byg = zext <4 x i1> %i.bye to <4 x i32>
  %i.byh = zext <4 x i1> %i.byf to <4 x i32>
  %i.byi = add <4 x i32> %vec.phi, %i.byg         ; 2 uses
  %i.byj = add <4 x i32> %vec.phi1020, %i.byh     ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.byk = icmp eq i64 %index.next, %n.vec
  br i1 %i.byk, label %middle.block, label %vector.body, !llvm.loop !148

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.byj, %i.byi
  %i.byl = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %bin.rdx1027 = add <4 x i32> %i.byd, %i.byc
  %i.bym = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1027) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bxq
  br i1 %cmp.n, label %.loopexit.loopexit.i, label %.lr.ph.i513.preheader1118

.lr.ph.i513.preheader1118:                        ; preds = %.lr.ph.i513.preheader, %middle.block
  %.0163234.i.ph = phi i32 [ 0, %.lr.ph.i513.preheader ], [ %i.bxr, %middle.block ]
  %.1175233.i.ph = phi i32 [ %.0174243.i, %.lr.ph.i513.preheader ], [ %i.byl, %middle.block ]
  %.1179232.i.ph = phi ptr [ %.0178242.i, %.lr.ph.i513.preheader ], [ %i.bxs, %middle.block ]
  %.1182231.i.ph = phi ptr [ %.0181241.i, %.lr.ph.i513.preheader ], [ %i.bxt, %middle.block ]
  %.2196230.i.ph = phi i32 [ %.1195240.i, %.lr.ph.i513.preheader ], [ %i.bym, %middle.block ]
  br label %.lr.ph.i513

bb.ia:                                            ; preds = %.lr.ph246.i
  %i.byn = getelementptr inbounds nuw i8, ptr %.0184245.i, i64 8
  %i.byo = load i32, ptr %i.byn, align 8, !tbaa !145 ; 3 uses
  %i.byp = add nsw i32 %i.byo, %.0172244.i
  %i.byq = add nsw i32 %i.byo, %.0174243.i
  %i.byr = sext i32 %i.byo to i64
  %i.bys = getelementptr inbounds i8, ptr %.0181241.i, i64 %i.byr
  br label %.loopexit.i508

bb.ib:                                            ; preds = %.lr.ph246.i
  %i.byt = getelementptr inbounds nuw i8, ptr %.0184245.i, i64 8
  %i.byu = load i32, ptr %i.byt, align 8, !tbaa !145 ; 3 uses
  %i.byv = add nsw i32 %i.byu, %.0172244.i
  %i.byw = add nsw i32 %i.byu, %.0174243.i
  %i.byx = sext i32 %i.byu to i64
  %i.byy = getelementptr inbounds i8, ptr %.0178242.i, i64 %i.byx
  br label %.loopexit.i508

.lr.ph.i513:                                      ; preds = %.lr.ph.i513.preheader1118, %.lr.ph.i513
  %.0163234.i = phi i32 [ %i.bzd, %.lr.ph.i513 ], [ %.0163234.i.ph, %.lr.ph.i513.preheader1118 ]
  %.1175233.i = phi i32 [ %.2176.i, %.lr.ph.i513 ], [ %.1175233.i.ph, %.lr.ph.i513.preheader1118 ]
  %.1179232.i = phi ptr [ %i.bzf, %.lr.ph.i513 ], [ %.1179232.i.ph, %.lr.ph.i513.preheader1118 ] ; 2 uses
  %.1182231.i = phi ptr [ %i.bze, %.lr.ph.i513 ], [ %.1182231.i.ph, %.lr.ph.i513.preheader1118 ] ; 2 uses
  %.2196230.i = phi i32 [ %.3197.i, %.lr.ph.i513 ], [ %.2196230.i.ph, %.lr.ph.i513.preheader1118 ]
  %i.byz = load i8, ptr %.1182231.i, align 1, !tbaa !20
  %i.bza = load i8, ptr %.1179232.i, align 1, !tbaa !20
  %.not212.i = icmp eq i8 %i.byz, %i.bza          ; 2 uses
  %i.bzb = zext i1 %.not212.i to i32
  %.3197.i = add i32 %.2196230.i, %i.bzb          ; 2 uses
  %not..not212.i = xor i1 %.not212.i, true
  %i.bzc = zext i1 %not..not212.i to i32
  %.2176.i = add nsw i32 %.1175233.i, %i.bzc      ; 2 uses
  %i.bzd = add nuw nsw i32 %.0163234.i, 1         ; 2 uses
  %i.bze = getelementptr inbounds nuw i8, ptr %.1182231.i, i64 1
  %i.bzf = getelementptr inbounds nuw i8, ptr %.1179232.i, i64 1
  %exitcond.not.i514 = icmp eq i32 %i.bzd, %i.bxo
  br i1 %exitcond.not.i514, label %.loopexit.loopexit.i, label %.lr.ph.i513, !llvm.loop !149

.loopexit.loopexit.i:                             ; preds = %.lr.ph.i513, %middle.block
  %.3197.i.lcssa = phi i32 [ %i.bym, %middle.block ], [ %.3197.i, %.lr.ph.i513 ]
  %.2176.i.lcssa = phi i32 [ %i.byl, %middle.block ], [ %.2176.i, %.lr.ph.i513 ]
  %scevgep.i515 = getelementptr i8, ptr %.0181241.i, i64 1
  %i.bzg = add nsw i32 %i.bxo, -1
  %i.bzh = zext nneg i32 %i.bzg to i64            ; 2 uses
  %scevgep274.i = getelementptr i8, ptr %scevgep.i515, i64 %i.bzh
  %scevgep275.i = getelementptr i8, ptr %.0178242.i, i64 1
  %scevgep276.i = getelementptr i8, ptr %scevgep275.i, i64 %i.bzh
  br label %.loopexit.i508

.loopexit.i508:                                   ; preds = %.loopexit.loopexit.i, %bb.ib, %bb.ia, %.preheader.i507, %.lr.ph246.i
  %.4.i509 = phi i32 [ %.1195240.i, %.lr.ph246.i ], [ %.1195240.i, %bb.ia ], [ %.1195240.i, %bb.ib ], [ %.1195240.i, %.preheader.i507 ], [ %.3197.i.lcssa, %.loopexit.loopexit.i ] ; 2 uses
  %.2183.i = phi ptr [ %.0181241.i, %.lr.ph246.i ], [ %i.bys, %bb.ia ], [ %.0181241.i, %bb.ib ], [ %.0181241.i, %.preheader.i507 ], [ %scevgep274.i, %.loopexit.loopexit.i ]
  %.2180.i = phi ptr [ %.0178242.i, %.lr.ph246.i ], [ %.0178242.i, %bb.ia ], [ %i.byy, %bb.ib ], [ %.0178242.i, %.preheader.i507 ], [ %scevgep276.i, %.loopexit.loopexit.i ]
  %.3177.i = phi i32 [ %.0174243.i, %.lr.ph246.i ], [ %i.byq, %bb.ia ], [ %i.byw, %bb.ib ], [ %.0174243.i, %.preheader.i507 ], [ %.2176.i.lcssa, %.loopexit.loopexit.i ] ; 2 uses
  %.1173.i = phi i32 [ %.0172244.i, %.lr.ph246.i ], [ %i.byp, %bb.ia ], [ %i.byv, %bb.ib ], [ %.0172244.i, %.preheader.i507 ], [ %.0172244.i, %.loopexit.loopexit.i ] ; 2 uses
  %.0184.i = load ptr, ptr %.0184245.i, align 8, !tbaa !147 ; 2 uses
  %.not211.i = icmp eq ptr %.0184.i, null
  br i1 %.not211.i, label %._crit_edge.i510, label %.lr.ph246.i, !llvm.loop !150

._crit_edge.i510:                                 ; preds = %.loopexit.i508, %bb.hz
  %i.bzi = phi i32 [ %i.bxb, %bb.hz ], [ %i.bxc, %.loopexit.i508 ]
  %i.bzj = phi i32 [ %i.bxa, %bb.hz ], [ %i.bxd, %.loopexit.i508 ]
  %i.bzk = phi i32 [ %i.bwz, %bb.hz ], [ %i.bxe, %.loopexit.i508 ] ; 2 uses
  %.1195.lcssa.i = phi i32 [ %.0194251.i, %bb.hz ], [ %.4.i509, %.loopexit.i508 ] ; 3 uses
  %.0174.lcssa.i = phi i32 [ 0, %bb.hz ], [ %.3177.i, %.loopexit.i508 ]
  %.0172.lcssa.i = phi i32 [ 0, %bb.hz ], [ %.1173.i, %.loopexit.i508 ]
  %i.bzl = load i32, ptr %i.bux, align 4, !tbaa !50 ; 2 uses
  %i.bzm = load i32, ptr %i.btp, align 4, !tbaa !51
  %i.bzn = add i32 %i.bzi, %i.bzj
  %reass.sub679 = sub i32 %.0172.lcssa.i, %i.bzn
  %i.bzo = add i32 %reass.sub679, 2
  %i.bzp = add i32 %i.bzo, %i.bzl
  %i.bzq = add i32 %i.bzp, %i.bzm
  %i.bzr = uitofp i32 %i.bzq to double
  %i.bzs = fmul nnan double %i.bzr, 5.000000e-01
  %i.bzt = fptosi double %i.bzs to i32            ; 2 uses
  %i.bzu = sub nsw i32 %i.bzt, %.0174.lcssa.i
  %i.bzv = mul nsw i32 %i.bzu, 100
  %i.bzw = sdiv i32 %i.bzv, %i.bzt
  %i.bzx = getelementptr inbounds nuw i8, ptr %i.btm, i64 16
  store i32 %i.bzw, ptr %i.bzx, align 4, !tbaa !151
  %i.bzy = load ptr, ptr %i.c, align 8, !tbaa !147
  store ptr %.2192.i, ptr %i.bzy, align 8, !tbaa !146
  %i.bzz = load ptr, ptr %i.b, align 8, !tbaa !147 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %indvars.iv.next.i511 = add nsw i64 %indvars.iv.i502, -1
  %i.caa = icmp sgt i64 %indvars.iv.i502, 0
  br i1 %i.caa, label %.lr.ph259.i, label %._crit_edge260.i, !llvm.loop !152

._crit_edge260.i:                                 ; preds = %._crit_edge.i510
  %.pre281.i = load i32, ptr %i.buu, align 4, !tbaa !33
  %i.cab = add i32 %.pre281.i, -1                 ; 2 uses
  %.not.i512 = icmp eq i32 %i.cab, 0
  %.not203.i = icmp eq i32 %i.cab, %i.btf         ; 2 uses
  %or.cond215.i = or i1 %.not.i512, %.not203.i
  br i1 %or.cond215.i, label %bb.id, label %bb.ic

bb.ic:                                            ; preds = %._crit_edge260.i
  %i.cac = call ptr @xmalloc(i64 noundef 40) #18  ; 6 uses
  %i.cad = load ptr, ptr %i.be, align 8, !tbaa !133
  store ptr %i.cad, ptr %i.cac, align 8, !tbaa !134
  store ptr %i.cac, ptr %i.be, align 8, !tbaa !133
  %i.cae = load i32, ptr %i.btm, align 4, !tbaa !35 ; 2 uses
  %i.caf = getelementptr inbounds nuw i8, ptr %i.cac, i64 16
  store i32 %i.cae, ptr %i.caf, align 8, !tbaa !138
  %i.cag = load i32, ptr %i.buu, align 4, !tbaa !33 ; 2 uses
  %i.cah = getelementptr inbounds nuw i8, ptr %i.cac, i64 20
  store i32 %i.cag, ptr %i.cah, align 4, !tbaa !139
  %i.cai = add i32 %.2169.i, 1
  %i.caj = sub i32 %i.cai, %i.cae
  %i.cak = getelementptr inbounds nuw i8, ptr %i.cac, i64 24
  store i32 %i.caj, ptr %i.cak, align 8, !tbaa !140
  %i.cal = add i32 %.1171.i, 1
  %i.cam = sub i32 %i.cal, %i.cag
  br label %.thread306.sink.split.i

bb.id:                                            ; preds = %._crit_edge260.i
  br i1 %.not203.i, label %pluri_align.exit, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.can = call ptr @xmalloc(i64 noundef 40) #18  ; 6 uses
  %i.cao = load ptr, ptr %i.be, align 8, !tbaa !133
  store ptr %i.cao, ptr %i.can, align 8, !tbaa !134
  store ptr %i.can, ptr %i.be, align 8, !tbaa !133
  %i.cap = load i32, ptr %i.btm, align 4, !tbaa !35 ; 2 uses
  %i.caq = getelementptr inbounds nuw i8, ptr %i.can, i64 16
  store i32 %i.cap, ptr %i.caq, align 8, !tbaa !138
  %i.car = getelementptr inbounds nuw i8, ptr %i.can, i64 20
  store i32 1, ptr %i.car, align 4, !tbaa !139
  %i.cas = add i32 %.2169.i, 1
  %i.cat = sub i32 %i.cas, %i.cap
  %i.cau = getelementptr inbounds nuw i8, ptr %i.can, i64 24
  store i32 %i.cat, ptr %i.cau, align 8, !tbaa !140
  br label %.thread306.sink.split.i

.thread306.sink.split.i:                          ; preds = %bb.ie, %bb.ic
  %.sink322.i = phi ptr [ %i.can, %bb.ie ], [ %i.cac, %bb.ic ] ; 3 uses
  %.1171.lcssa317.sink.i = phi i32 [ %.1171.i, %bb.ie ], [ %i.cam, %bb.ic ]
  %i.cav = getelementptr inbounds nuw i8, ptr %.sink322.i, i64 28
  store i32 %.1171.lcssa317.sink.i, ptr %i.cav, align 4, !tbaa !141
  %i.caw = getelementptr inbounds nuw i8, ptr %.sink322.i, i64 8
  store ptr %i.bzz, ptr %i.caw, align 8, !tbaa !137
  %i.cax = getelementptr inbounds nuw i8, ptr %.sink322.i, i64 32
  store i32 %i.bzk, ptr %i.cax, align 8, !tbaa !142
  br label %pluri_align.exit

pluri_align.exit.thread:                          ; preds = %.critedge.i504, %bb.hn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.if

pluri_align.exit:                                 ; preds = %slide_intron.exit, %bb.id, %.thread306.sink.split.i
  %.0194.lcssa298.i = phi i32 [ %.1195.lcssa.i, %bb.id ], [ 0, %slide_intron.exit ], [ %.1195.lcssa.i, %.thread306.sink.split.i ]
  store i32 %.0194.lcssa298.i, ptr %i.bg, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.cay = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 20), align 4
  %.not580 = icmp eq i32 %i.cay, 0
  br i1 %.not580, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %pluri_align.exit.thread, %pluri_align.exit
  %i.caz = load ptr, ptr %i.be, align 8, !tbaa !153 ; 2 uses
  %.not5.i = icmp eq ptr %i.caz, null
  br i1 %.not5.i, label %free_align.exit, label %.lr.ph.i516

.lr.ph.i516:                                      ; preds = %bb.if, %.lr.ph.i516
  %.06.i = phi ptr [ %i.cba, %.lr.ph.i516 ], [ %i.caz, %bb.if ] ; 3 uses
  %i.cba = load ptr, ptr %.06.i, align 8, !tbaa !134 ; 2 uses
  %i.cbb = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  %i.cbc = load ptr, ptr %i.cbb, align 8, !tbaa !137
  call void @Free_script(ptr noundef %i.cbc) #18
  call void @free(ptr noundef nonnull %.06.i) #18
  %.not.i517 = icmp eq ptr %i.cba, null
  br i1 %.not.i517, label %free_align.exit, label %.lr.ph.i516, !llvm.loop !154

free_align.exit:                                  ; preds = %.lr.ph.i516, %bb.if
  store ptr null, ptr %i.be, align 8, !tbaa !153
  br label %bb.ig

bb.ig:                                            ; preds = %._crit_edge, %bb.q, %free_align.exit, %pluri_align.exit, %bb.d
  %indvars.iv.next754 = add nuw nsw i64 %indvars.iv753, 1 ; 2 uses
  %i.cbd = load i32, ptr %i.u, align 8, !tbaa !19
  %i.cbe = zext i32 %i.cbd to i64
  %i.cbf = icmp samesign ult i64 %indvars.iv.next754, %i.cbe
  br i1 %i.cbf, label %bb.d, label %._crit_edge674.loopexit, !llvm.loop !155

._crit_edge674.loopexit:                          ; preds = %bb.ig
  %.pre768 = load ptr, ptr %7, align 8, !tbaa !20
  br label %._crit_edge674

._crit_edge674:                                   ; preds = %._crit_edge674.loopexit, %bb.c
  %i.cbg = phi ptr [ %.pre768, %._crit_edge674.loopexit ], [ null, %bb.c ]
  %i.cbh = load ptr, ptr %6, align 8, !tbaa !20
  call void @free(ptr noundef %i.cbh) #18
  call void @free(ptr noundef %i.cbg) #18
  br label %bb.ih

bb.ih:                                            ; preds = %bb.a, %bb.b, %._crit_edge674
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @init_col(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %1, ptr %i.a, align 4, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !19
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i32 %1 to i64
  %i.d = shl nuw nsw i64 %i.c, 3
  %i.e = tail call ptr @xmalloc(i64 noundef %i.d) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !20
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @exon_cores(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef nonnull captures(none) %6, ptr nofree noundef captures(none) %7, ptr nofree noundef captures(address_is_null) %8) unnamed_addr #0 {
bb.a:
  %9 = alloca %struct._hash_node_t, align 4       ; 7 uses
  %i.a = icmp ne ptr %8, null
  %i.b = zext i1 %i.a to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !8
  %i.e = add i32 %2, 1
  %i.f = add i32 %i.e, %i.d
  %i.g = zext i32 %i.f to i64
  %i.h = tail call ptr @xcalloc(i64 noundef %i.g, i64 noundef 4) #18 ; 2 uses
  %i.i = load i32, ptr %i.c, align 8, !tbaa !8
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.j
  %.not82.i = icmp eq i32 %2, 0
  br i1 %.not82.i, label %search.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = zext i32 %2 to i64                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.o
  %i.q = ptrtoint ptr %1 to i64
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  br label %.critedge.i

.critedge.i.backedge:                             ; preds = %.lr.ph.i, %.lr.ph72.i
  %.141.i.be = phi i32 [ %i.as, %.lr.ph72.i ], [ %i.af, %.lr.ph.i ]
  %.1.i.be = phi ptr [ %i.an, %.lr.ph72.i ], [ %i.aa, %.lr.ph.i ]
  br label %.critedge.i

end_hunk_0
