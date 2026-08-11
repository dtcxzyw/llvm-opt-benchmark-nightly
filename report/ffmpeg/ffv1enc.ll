inline.NumInlined: 336
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 53
begin_hunk_0_@encode_slice:bb.a
  br i1 %brmerge1073.a, label %load_plane.exit491, label %.preheader.lr.ph.split.i592

.preheader.lr.ph.split.i592:                      ; preds = %.preheader1.i
  %.not.i593 = icmp eq i32 %.val326, 0
  %i.bqe = load ptr, ptr %i.aim, align 8, !tbaa !148 ; 4 uses
  %i.bqf = load ptr, ptr %i.ais, align 8, !tbaa !148 ; 4 uses
  %i.bqg = load ptr, ptr %i.aiy, align 8, !tbaa !148 ; 4 uses
  %i.bqh = load i32, ptr %i.ajb, align 4, !tbaa !63 ; 2 uses
  br i1 %.not.i593, label %.preheader.lr.ph.split.split.us.i599, label %.preheader.lr.ph.split.split.i594

.preheader.lr.ph.split.split.us.i599:             ; preds = %.preheader.lr.ph.split.i592
  %i.bqi = load i32, ptr %i.ay, align 8, !tbaa !63
  %i.bqj = load i32, ptr %i.aja, align 8, !tbaa !63
  %i.bqk = sext i32 %i.bqi to i64
  %i.bql = sext i32 %i.bqh to i64
  %i.bqm = sext i32 %i.bqj to i64
  br label %.preheader.us.i600

.preheader.us.i600:                               ; preds = %._crit_edge.split.us.us.i601, %.preheader.lr.ph.split.split.us.i599
  %indvars.iv41.i = phi i64 [ %indvars.iv.next42.i, %._crit_edge.split.us.us.i601 ], [ 0, %.preheader.lr.ph.split.split.us.i599 ] ; 4 uses
  %i.bqn = mul nsw i64 %indvars.iv41.i, %i.bqk
  %invariant.gep12.us.i = getelementptr i8, ptr %i.bc, i64 %i.bqn ; 3 uses
  %i.bqo = mul nsw i64 %indvars.iv41.i, %i.bql
  %invariant.gep14.us.i = getelementptr i8, ptr %i.bm, i64 %i.bqo ; 3 uses
  %i.bqp = mul nsw i64 %indvars.iv41.i, %i.bqm
  %invariant.gep16.us.i = getelementptr i8, ptr %i.bw, i64 %i.bqp ; 3 uses
  br i1 %i.alk, label %.epil.preheader2505, label %.preheader.us.i600.new

.preheader.us.i600.new:                           ; preds = %.preheader.us.i600, %.preheader.us.i600.new
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i.1, %.preheader.us.i600.new ], [ 0, %.preheader.us.i600 ] ; 3 uses
  %niter2511 = phi i64 [ %niter2511.next.1, %.preheader.us.i600.new ], [ 0, %.preheader.us.i600 ]
  %i.bqq = shl nuw nsw i64 %indvars.iv36.i, 1     ; 3 uses
  %gep13.us.i = getelementptr i8, ptr %invariant.gep12.us.i, i64 %i.bqq
  %gep15.us.i = getelementptr i8, ptr %invariant.gep14.us.i, i64 %i.bqq
  %gep17.us.i = getelementptr i8, ptr %invariant.gep16.us.i, i64 %i.bqq
  %.051.in.us.us.i = load i16, ptr %gep17.us.i, align 2, !tbaa !78
  %.052.in.us.us.i = load i16, ptr %gep15.us.i, align 2, !tbaa !78
  %.053.in.us.us.i = load i16, ptr %gep13.us.i, align 2, !tbaa !78
  %i.bqr = zext i16 %.052.in.us.us.i to i64
  %i.bqs = getelementptr inbounds nuw [2 x i8], ptr %i.bqe, i64 %i.bqr
  store i16 1, ptr %i.bqs, align 2, !tbaa !78
  %i.bqt = zext i16 %.053.in.us.us.i to i64
  %i.bqu = getelementptr inbounds nuw [2 x i8], ptr %i.bqf, i64 %i.bqt
  store i16 1, ptr %i.bqu, align 2, !tbaa !78
  %i.bqv = zext i16 %.051.in.us.us.i to i64
  %i.bqw = getelementptr inbounds nuw [2 x i8], ptr %i.bqg, i64 %i.bqv
  store i16 1, ptr %i.bqw, align 2, !tbaa !78
  %indvars.iv.next37.i = shl nuw i64 %indvars.iv36.i, 1
  %i.bqx = or disjoint i64 %indvars.iv.next37.i, 2 ; 3 uses
  %gep13.us.i.1 = getelementptr i8, ptr %invariant.gep12.us.i, i64 %i.bqx
  %gep15.us.i.1 = getelementptr i8, ptr %invariant.gep14.us.i, i64 %i.bqx
  %gep17.us.i.1 = getelementptr i8, ptr %invariant.gep16.us.i, i64 %i.bqx
  %.051.in.us.us.i.1 = load i16, ptr %gep17.us.i.1, align 2, !tbaa !78
  %.052.in.us.us.i.1 = load i16, ptr %gep15.us.i.1, align 2, !tbaa !78
  %.053.in.us.us.i.1 = load i16, ptr %gep13.us.i.1, align 2, !tbaa !78
  %i.bqy = zext i16 %.052.in.us.us.i.1 to i64
  %i.bqz = getelementptr inbounds nuw [2 x i8], ptr %i.bqe, i64 %i.bqy
  store i16 1, ptr %i.bqz, align 2, !tbaa !78
  %i.bra = zext i16 %.053.in.us.us.i.1 to i64
  %i.brb = getelementptr inbounds nuw [2 x i8], ptr %i.bqf, i64 %i.bra
  store i16 1, ptr %i.brb, align 2, !tbaa !78
  %i.brc = zext i16 %.051.in.us.us.i.1 to i64
  %i.brd = getelementptr inbounds nuw [2 x i8], ptr %i.bqg, i64 %i.brc
  store i16 1, ptr %i.brd, align 2, !tbaa !78
  %indvars.iv.next37.i.1 = add nuw nsw i64 %indvars.iv36.i, 2 ; 2 uses
  %niter2511.next.1 = add i64 %niter2511, 2       ; 2 uses
  %niter2511.ncmp.1 = icmp eq i64 %niter2511.next.1, %unroll_iter2510
  br i1 %niter2511.ncmp.1, label %._crit_edge.split.us.us.i601.unr-lcssa, label %.preheader.us.i600.new, !llvm.loop !283

._crit_edge.split.us.us.i601.unr-lcssa:           ; preds = %.preheader.us.i600.new
  br i1 %lcmp.mod2508.not, label %._crit_edge.split.us.us.i601, label %.epil.preheader2505

.epil.preheader2505:                              ; preds = %._crit_edge.split.us.us.i601.unr-lcssa, %.preheader.us.i600
  %indvars.iv36.i.epil.init = phi i64 [ 0, %.preheader.us.i600 ], [ %indvars.iv.next37.i.1, %._crit_edge.split.us.us.i601.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod2509)
  %i.bre = shl nuw nsw i64 %indvars.iv36.i.epil.init, 1 ; 3 uses
  %gep13.us.i.epil = getelementptr i8, ptr %invariant.gep12.us.i, i64 %i.bre
  %gep15.us.i.epil = getelementptr i8, ptr %invariant.gep14.us.i, i64 %i.bre
  %gep17.us.i.epil = getelementptr i8, ptr %invariant.gep16.us.i, i64 %i.bre
  %.051.in.us.us.i.epil = load i16, ptr %gep17.us.i.epil, align 2, !tbaa !78
  %.052.in.us.us.i.epil = load i16, ptr %gep15.us.i.epil, align 2, !tbaa !78
  %.053.in.us.us.i.epil = load i16, ptr %gep13.us.i.epil, align 2, !tbaa !78
  %i.brf = zext i16 %.052.in.us.us.i.epil to i64
  %i.brg = getelementptr inbounds nuw [2 x i8], ptr %i.bqe, i64 %i.brf
  store i16 1, ptr %i.brg, align 2, !tbaa !78
  %i.brh = zext i16 %.053.in.us.us.i.epil to i64
  %i.bri = getelementptr inbounds nuw [2 x i8], ptr %i.bqf, i64 %i.brh
  store i16 1, ptr %i.bri, align 2, !tbaa !78
  %i.brj = zext i16 %.051.in.us.us.i.epil to i64
  %i.brk = getelementptr inbounds nuw [2 x i8], ptr %i.bqg, i64 %i.brj
  store i16 1, ptr %i.brk, align 2, !tbaa !78
  br label %._crit_edge.split.us.us.i601

._crit_edge.split.us.us.i601:                     ; preds = %._crit_edge.split.us.us.i601.unr-lcssa, %.epil.preheader2505
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %exitcond45.not.i = icmp eq i64 %indvars.iv.next42.i, %wide.trip.count57.i498
  br i1 %exitcond45.not.i, label %load_plane.exit491, label %.preheader.us.i600, !llvm.loop !284

.preheader.lr.ph.split.split.i594:                ; preds = %.preheader.lr.ph.split.i592
  %i.brl = load i32, ptr %i.aja, align 8, !tbaa !63
  %i.brm = load i32, ptr %i.ay, align 8, !tbaa !63
  %i.brn = load i32, ptr %i.aix, align 4, !tbaa !63
  %i.bro = load ptr, ptr %i.aiz, align 8, !tbaa !148
  %i.brp = sext i32 %i.brm to i64
  %i.brq = sext i32 %i.bqh to i64
  %i.brr = sext i32 %i.brl to i64
  %i.brs = sext i32 %i.brn to i64
  br label %.preheader.i595

bb.bt:                                            ; preds = %bb.bt, %.lr.ph.i602.new
  %indvars.iv.i605 = phi i64 [ 0, %.lr.ph.i602.new ], [ %indvars.iv.next.i606.7, %bb.bt ] ; 9 uses
  %niter2504 = phi i64 [ 0, %.lr.ph.i602.new ], [ %niter2504.next.7, %bb.bt ]
  %i.brt = getelementptr inbounds nuw [8 x i8], ptr %i.aim, i64 %indvars.iv.i605
  %i.bru = load ptr, ptr %i.brt, align 8, !tbaa !148
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(131072) %i.bru, i8 0, i64 131072, i1 false)
  %i.brv = getelementptr inbounds nuw [8 x i8], ptr %i.aim, i64 %indvars.iv.i605
  %i.brw = getelementptr inbounds nuw i8, ptr %i.brv, i64 8
  %i.brx = load ptr, ptr %i.brw, align 8, !tbaa !148
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(131072) %i.brx, i8 0, i64 131072, i1 false)
  %i.bry = getelementptr inbounds nuw [8 x i8], ptr %i.aim, i64 %indvars.iv.i605
  %i.brz = getelementptr inbounds nuw i8, ptr %i.bry, i64 16
  %i.bsa = load ptr, ptr %i.brz, align 8, !tbaa !148
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(131072) %i.bsa, i8 0, i64 131072, i1 false)
  %i.bsb = getelementptr inbounds nuw [8 x i8], ptr %i.aim, i64 %indvars.iv.i605
  %i.bsc = getelementptr inbounds nuw i8, ptr %i.bsb, i64 24
  %i.bsd = load ptr, ptr %i.bsc, align 8, !tbaa !148
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(131072) %i.bsd, i8 0, i64 131072, i1 false)
  %i.bse = getelementptr inbounds nuw [8 x i8], ptr %i.aim, i64 %indvars.iv.i605
  %i.bsf = getelementptr inbounds nuw i8, ptr %i.bse, i64 32
  %i.bsg = load ptr, ptr %i.bsf, align 8, !tbaa !148
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(131072) %i.bsg, i8 0, i64 131072, i1 false)
  %i.bsh = getelementptr inbounds nuw [8 x i8], ptr %i.aim, i64 %indvars.iv.i605
  %i.bsi = getelementptr inbounds nuw i8, ptr %i.bsh, i64 40
  %i.bsj = load ptr, ptr %i.bsi, align 8, !tbaa !148
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(131072) %i.bsj, i8 0, i64 131072, i1 false)
  %i.bsk = getelementptr inbounds nuw [8 x i8], ptr %i.aim, i64 %indvars.iv.i605
  %i.bsl = getelementptr inbounds nuw i8, ptr %i.bsk, i64 48
  %i.bsm = load ptr, ptr %i.bsl, align 8, !tbaa !148
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(131072) %i.bsm, i8 0, i64 131072, i1 false)
  %i.bsn = getelementptr inbounds nuw [8 x i8], ptr %i.aim, i64 %indvars.iv.i605
  %i.bso = getelementptr inbounds nuw i8, ptr %i.bsn, i64 56
  %i.bsp = load ptr, ptr %i.bso, align 8, !tbaa !148
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(131072) %i.bsp, i8 0, i64 131072, i1 false)
  %indvars.iv.next.i606.7 = add nuw nsw i64 %indvars.iv.i605, 8 ; 2 uses
  %niter2504.next.7 = add i64 %niter2504, 8       ; 2 uses
  %niter2504.ncmp.7 = icmp eq i64 %niter2504.next.7, %unroll_iter2503
  br i1 %niter2504.ncmp.7, label %.preheader1.i.loopexit.unr-lcssa, label %bb.bt, !llvm.loop !285

.preheader.i595:                                  ; preds = %._crit_edge.split.i598, %.preheader.lr.ph.split.split.i594
  %indvars.iv31.i = phi i64 [ 0, %.preheader.lr.ph.split.split.i594 ], [ %indvars.iv.next32.i, %._crit_edge.split.i598 ] ; 5 uses
  %i.bsq = mul nsw i64 %indvars.iv31.i, %i.brr
  %invariant.gep.i596 = getelementptr i8, ptr %i.bw, i64 %i.bsq
  %i.bsr = mul nsw i64 %indvars.iv31.i, %i.brq
  %invariant.gep6.i = getelementptr i8, ptr %i.bm, i64 %i.bsr
  %i.bss = mul nsw i64 %indvars.iv31.i, %i.brp
  %invariant.gep8.i = getelementptr i8, ptr %i.bc, i64 %i.bss
  %i.bst = mul nsw i64 %indvars.iv31.i, %i.brs
  %invariant.gep10.i = getelementptr i8, ptr %i.cg, i64 %i.bst
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bu, %.preheader.i595
  %indvars.iv26.i = phi i64 [ 0, %.preheader.i595 ], [ %indvars.iv.next27.i, %bb.bu ] ; 2 uses
  %i.bsu = shl nuw nsw i64 %indvars.iv26.i, 1     ; 4 uses
  %gep.i597 = getelementptr i8, ptr %invariant.gep.i596, i64 %i.bsu
  %gep7.i = getelementptr i8, ptr %invariant.gep6.i, i64 %i.bsu
  %gep9.i = getelementptr i8, ptr %invariant.gep8.i, i64 %i.bsu
  %gep11.i = getelementptr i8, ptr %invariant.gep10.i, i64 %i.bsu
  %i.bsv = load i16, ptr %gep11.i, align 2, !tbaa !78
  %.051.in.i = load i16, ptr %gep.i597, align 2, !tbaa !78
  %.052.in.i = load i16, ptr %gep9.i, align 2, !tbaa !78
  %.053.in.i = load i16, ptr %gep7.i, align 2, !tbaa !78
  %i.bsw = zext i16 %.052.in.i to i64
  %i.bsx = getelementptr inbounds nuw [2 x i8], ptr %i.bqe, i64 %i.bsw
  store i16 1, ptr %i.bsx, align 2, !tbaa !78
  %i.bsy = zext i16 %.053.in.i to i64
  %i.bsz = getelementptr inbounds nuw [2 x i8], ptr %i.bqf, i64 %i.bsy
  store i16 1, ptr %i.bsz, align 2, !tbaa !78
  %i.bta = zext i16 %.051.in.i to i64
  %i.btb = getelementptr inbounds nuw [2 x i8], ptr %i.bqg, i64 %i.bta
  store i16 1, ptr %i.btb, align 2, !tbaa !78
  %i.btc = zext i16 %i.bsv to i64
  %i.btd = getelementptr inbounds nuw [2 x i8], ptr %i.bro, i64 %i.btc
  store i16 1, ptr %i.btd, align 2, !tbaa !78
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1 ; 2 uses
  %exitcond30.not.i = icmp eq i64 %indvars.iv.next27.i, %wide.trip.count.i499
  br i1 %exitcond30.not.i, label %._crit_edge.split.i598, label %bb.bu, !llvm.loop !283

._crit_edge.split.i598:                           ; preds = %bb.bu
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1 ; 2 uses
  %exitcond35.not.i = icmp eq i64 %indvars.iv.next32.i, %wide.trip.count57.i498
  br i1 %exitcond35.not.i, label %load_plane.exit491, label %.preheader.i595, !llvm.loop !284

load_plane.exit491.critedge:                      ; preds = %bb.bf
  %i.bte = load ptr, ptr %i.ais, align 8, !tbaa !148
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(131072) %i.bte, i8 0, i64 131072, i1 false)
  br label %load_plane.exit491

load_plane.exit491:                               ; preds = %._crit_edge.split.i, %._crit_edge.split.us.us.i, %._crit_edge.split.i598, %._crit_edge.split.us.us.i601, %..loopexit41_crit_edge.i548, %..loopexit39_crit_edge.us.i560, %..loopexit_crit_edge.us.i574, %..loopexit41_crit_edge.i462, %..loopexit39_crit_edge.us.i474, %..loopexit_crit_edge.us.i488, %.preheader1.i, %.preheader3.i, %load_plane.exit491.critedge, %.lr.ph49.split.split.i539, %.lr.ph49.split.split.us.i551, %.lr.ph49.split.us.i563, %.lr.ph49.split.split.i453, %.lr.ph49.split.split.us.i465, %.lr.ph49.split.us.i477, %bb.bb, %load_plane.exit448
  %i.btf = load i32, ptr %i.ail, align 4, !tbaa !45
  %.fr105.i = freeze i32 %i.btf                   ; 2 uses
  %i.btg = shl nuw nsw i32 1, %.fr105.i
  %i.bth = load i32, ptr %i.aik, align 8, !tbaa !150
  %i.bti = icmp eq i32 %i.bth, 2
  %i.btj = load i32, ptr %i.ajc, align 4, !tbaa !46
  %i.btk = shl nsw i32 %i.btj, 1
  %i.btl = or disjoint i32 %i.btk, 1
  %i.btm = load i32, ptr %i.aiu, align 8, !tbaa !56
  %i.btn = add nsw i32 %i.btl, %i.btm
  %i.bto = icmp sgt i32 %i.btn, 0
  br i1 %i.bto, label %.lr.ph103.i, label %encode_histogram_remap.exit

.lr.ph103.i:                                      ; preds = %load_plane.exit491
  %.not.i608 = icmp eq i32 %.fr105.i, 31
  br i1 %.not.i608, label %.lr.ph103.split.i, label %.lr.ph96.us.i

.lr.ph96.us.i:                                    ; preds = %.lr.ph103.i, %bb.dq
  %indvars.iv117.i = phi i64 [ %indvars.iv.next118.i, %bb.dq ], [ 0, %.lr.ph103.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.n, i8 -128, i64 64, i1 false)
  call fastcc void @put_symbol(ptr noundef nonnull %i.aj, ptr noundef %i.n, i32 noundef 0, i32 noundef 0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.n, i8 -128, i64 64, i1 false)
  %i.btp = getelementptr inbounds nuw [8 x i8], ptr %i.aim, i64 %indvars.iv117.i
  br label %bb.bv

bb.bv:                                            ; preds = %put_symbol_inline.exit.us.i, %.lr.ph96.us.i
  %.03694.us.i = phi i32 [ 0, %.lr.ph96.us.i ], [ %i.chu, %put_symbol_inline.exit.us.i ] ; 3 uses
  %.03793.us.i = phi i32 [ 0, %.lr.ph96.us.i ], [ %.1.us.i, %put_symbol_inline.exit.us.i ] ; 7 uses
  %.03892.us.i = phi i32 [ 0, %.lr.ph96.us.i ], [ %.2.us.i, %put_symbol_inline.exit.us.i ] ; 6 uses
  %.04091.us.i = phi i32 [ 0, %.lr.ph96.us.i ], [ %i.bua, %put_symbol_inline.exit.us.i ] ; 2 uses
  %i.btq = and i32 %.03694.us.i, 32768
  %.not42.us.i = icmp eq i32 %i.btq, 0
  %i.btr = select i1 %.not42.us.i, i1 %i.bti, i1 false
  %i.bts = select i1 %i.btr, i32 32767, i32 0
  %i.btt = xor i32 %i.bts, %.03694.us.i
  %i.btu = load ptr, ptr %i.btp, align 8, !tbaa !148
  %i.btv = zext nneg i32 %i.btt to i64
  %i.btw = getelementptr inbounds nuw [2 x i8], ptr %i.btu, i64 %i.btv ; 2 uses
  %i.btx = load i16, ptr %i.btw, align 2, !tbaa !78
  %i.bty = zext i16 %i.btx to i32                 ; 4 uses
  %i.btz = trunc i32 %.04091.us.i to i16
  store i16 %i.btz, ptr %i.btw, align 2, !tbaa !78
  %i.bua = add nuw nsw i32 %.04091.us.i, %i.bty   ; 2 uses
  %i.bub = icmp eq i32 %.03892.us.i, %i.bty
  br i1 %i.bub, label %bb.do, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.buc = zext nneg i32 %.03892.us.i to i64
  %i.bud = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.buc ; 10 uses
  %.not.i.us.i = icmp eq i32 %.03793.us.i, 0
  br i1 %.not.i.us.i, label %bb.dj, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %.not.i43.us.i = icmp ult i32 %.03793.us.i, 65536 ; 2 uses
  %i.bue = lshr i32 %.03793.us.i, 16
  %spec.select.i.us.i = select i1 %.not.i43.us.i, i32 %.03793.us.i, i32 %i.bue ; 3 uses
  %spec.select12.i.us.i = select i1 %.not.i43.us.i, i32 0, i32 16 ; 2 uses
  %.not11.i.us.i = icmp samesign ult i32 %spec.select.i.us.i, 256 ; 2 uses
  %i.buf = lshr i32 %spec.select.i.us.i, 8
  %i.bug = or disjoint i32 %spec.select12.i.us.i, 8
  %.110.i.us.i = select i1 %.not11.i.us.i, i32 %spec.select.i.us.i, i32 %i.buf
  %.1.i44.us.i = select i1 %.not11.i.us.i, i32 %spec.select12.i.us.i, i32 %i.bug
  %i.buh = zext nneg i32 %.110.i.us.i to i64
  %i.bui = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.buh
  %i.buj = load i8, ptr %i.bui, align 1, !tbaa !41
  %i.buk = zext i8 %i.buj to i32
  %i.bul = add nuw nsw i32 %.1.i44.us.i, %i.buk   ; 6 uses
  %i.bum = load i32, ptr %i.aid, align 4, !tbaa !47 ; 2 uses
  %i.bun = load i8, ptr %i.bud, align 16, !tbaa !41 ; 2 uses
  %i.buo = zext i8 %i.bun to i32
  %i.bup = mul nsw i32 %i.bum, %i.buo
  %i.buq = ashr i32 %i.bup, 8
  %i.bur = sub nsw i32 %i.bum, %i.buq             ; 4 uses
  store i32 %i.bur, ptr %i.aid, align 4, !tbaa !47
  %i.bus = zext i8 %i.bun to i64
  %i.but = getelementptr inbounds nuw i8, ptr %i.ajf, i64 %i.bus
  %storemerge.i183.i.us.i = load i8, ptr %i.but, align 1, !tbaa !41
  store i8 %storemerge.i183.i.us.i, ptr %i.bud, align 16, !tbaa !41
  %i.buu = icmp slt i32 %i.bur, 256
  br i1 %i.buu, label %bb.by, label %put_rac.exit184.i.us.i

bb.by:                                            ; preds = %bb.bx
  %i.buv = load i32, ptr %i.aj, align 8, !tbaa !49 ; 2 uses
  %i.buw = add nsw i32 %i.buv, -65281             ; 2 uses
  %i.bux = icmp ugt i32 %i.buw, 254
  br i1 %i.bux, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.buy = load i32, ptr %i.aie, align 8, !tbaa !52
  %i.buz = add nsw i32 %i.buy, 1
  store i32 %i.buz, ptr %i.aie, align 8, !tbaa !52
  br label %renorm_encoder.exit.us.i

bb.ca:                                            ; preds = %bb.by
  %i.bva = ashr i32 %i.buw, 31                    ; 2 uses
  %i.bvb = load i32, ptr %i.aif, align 4, !tbaa !50
  %i.bvc = add nsw i32 %i.bva, 1
  %i.bvd = add i32 %i.bvc, %i.bvb
  %i.bve = trunc i32 %i.bvd to i8
  %i.bvf = load ptr, ptr %i.aig, align 8, !tbaa !51
  store i8 %i.bve, ptr %i.bvf, align 1, !tbaa !41
  %i.bvg = load i32, ptr %i.aif, align 4, !tbaa !50
  %i.bvh = icmp sgt i32 %i.bvg, -1
  %i.bvi = load ptr, ptr %i.aig, align 8, !tbaa !51
  %i.bvj = zext i1 %i.bvh to i64
  %i.bvk = getelementptr inbounds nuw i8, ptr %i.bvi, i64 %i.bvj
  store ptr %i.bvk, ptr %i.aig, align 8, !tbaa !51
  %i.bvl = load i32, ptr %i.aie, align 8, !tbaa !52
  %.not16.i.us.i = icmp eq i32 %i.bvl, 0
  br i1 %.not16.i.us.i, label %._crit_edge.i.us.i, label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %bb.ca
  %i.bvm = trunc nsw i32 %i.bva to i8
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cb, %.lr.ph.i.us.i
  %i.bvn = load ptr, ptr %i.aig, align 8, !tbaa !51 ; 2 uses
  %i.bvo = getelementptr inbounds nuw i8, ptr %i.bvn, i64 1
  store ptr %i.bvo, ptr %i.aig, align 8, !tbaa !51
  store i8 %i.bvm, ptr %i.bvn, align 1, !tbaa !41
  %i.bvp = load i32, ptr %i.aie, align 8, !tbaa !52
  %i.bvq = add nsw i32 %i.bvp, -1                 ; 2 uses
  store i32 %i.bvq, ptr %i.aie, align 8, !tbaa !52
  %.not.i45.us.i = icmp eq i32 %i.bvq, 0
  br i1 %.not.i45.us.i, label %._crit_edge.i.us.i, label %bb.cb, !llvm.loop !53

._crit_edge.i.us.i:                               ; preds = %bb.cb, %bb.ca
  %i.bvr = load i32, ptr %i.aj, align 8, !tbaa !49 ; 2 uses
  %i.bvs = ashr i32 %i.bvr, 8
  store i32 %i.bvs, ptr %i.aif, align 4, !tbaa !50
  %.pre.i617 = load i32, ptr %i.aid, align 4, !tbaa !47
  br label %renorm_encoder.exit.us.i

renorm_encoder.exit.us.i:                         ; preds = %._crit_edge.i.us.i, %bb.bz
  %i.bvt = phi i32 [ %i.bur, %bb.bz ], [ %.pre.i617, %._crit_edge.i.us.i ]
  %i.bvu = phi i32 [ %i.buv, %bb.bz ], [ %i.bvr, %._crit_edge.i.us.i ]
  %i.bvv = shl i32 %i.bvu, 8
  %i.bvw = and i32 %i.bvv, 65280
  store i32 %i.bvw, ptr %i.aj, align 8, !tbaa !49
  %i.bvx = shl i32 %i.bvt, 8                      ; 2 uses
  store i32 %i.bvx, ptr %i.aid, align 4, !tbaa !47
  br label %put_rac.exit184.i.us.i

put_rac.exit184.i.us.i:                           ; preds = %renorm_encoder.exit.us.i, %bb.bx
  %i.bvy = phi i32 [ %i.bvx, %renorm_encoder.exit.us.i ], [ %i.bur, %bb.bx ] ; 3 uses
  %i.bvz = icmp samesign ult i32 %i.bul, 10
  br i1 %i.bvz, label %.preheader.us.i612, label %.preheader83.us.i

bb.cc:                                            ; preds = %.preheader83.us.i, %put_rac.exit167.i.us.i
  %i.bwa = phi i32 [ %.pre124.i, %.preheader83.us.i ], [ %i.bxq, %put_rac.exit167.i.us.i ]
  %i.bwb = phi i32 [ %i.bvy, %.preheader83.us.i ], [ %i.bxr, %put_rac.exit167.i.us.i ] ; 2 uses
  %.2.i84.us.i = phi i32 [ 0, %.preheader83.us.i ], [ %i.bxs, %put_rac.exit167.i.us.i ] ; 2 uses
  %i.bwc = call i32 @llvm.umin.i32(i32 %.2.i84.us.i, i32 9)
  %i.bwd = zext nneg i32 %i.bwc to i64
  %i.bwe = getelementptr inbounds nuw i8, ptr %i.cif, i64 %i.bwd ; 2 uses
  %i.bwf = load i8, ptr %i.bwe, align 1, !tbaa !41 ; 2 uses
  %i.bwg = zext i8 %i.bwf to i32
  %i.bwh = mul nsw i32 %i.bwb, %i.bwg
  %i.bwi = ashr i32 %i.bwh, 8                     ; 5 uses
  %i.bwj = sub nsw i32 %i.bwb, %i.bwi
  %i.bwk = add nsw i32 %i.bwj, %i.bwa             ; 4 uses
  store i32 %i.bwk, ptr %i.aj, align 8, !tbaa !49
  store i32 %i.bwi, ptr %i.aid, align 4, !tbaa !47
  %i.bwl = zext i8 %i.bwf to i64
  %i.bwm = getelementptr inbounds nuw i8, ptr %i.ajg, i64 %i.bwl
  %storemerge.i166.i.us.i = load i8, ptr %i.bwm, align 1, !tbaa !41
  store i8 %storemerge.i166.i.us.i, ptr %i.bwe, align 1, !tbaa !41
  %i.bwn = icmp slt i32 %i.bwi, 256
  br i1 %i.bwn, label %bb.cd, label %put_rac.exit167.i.us.i

bb.cd:                                            ; preds = %bb.cc
  %i.bwo = add nsw i32 %i.bwk, -65281             ; 2 uses
  %i.bwp = icmp ugt i32 %i.bwo, 254
  br i1 %i.bwp, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.bwq = load i32, ptr %i.aie, align 8, !tbaa !52
  %i.bwr = add nsw i32 %i.bwq, 1
  store i32 %i.bwr, ptr %i.aie, align 8, !tbaa !52
  br label %renorm_encoder.exit65.us.i

bb.cf:                                            ; preds = %bb.cd
  %i.bws = ashr i32 %i.bwo, 31                    ; 2 uses
  %i.bwt = load i32, ptr %i.aif, align 4, !tbaa !50
  %i.bwu = add nsw i32 %i.bws, 1
  %i.bwv = add i32 %i.bwu, %i.bwt
  %i.bww = trunc i32 %i.bwv to i8
  %i.bwx = load ptr, ptr %i.aig, align 8, !tbaa !51
  store i8 %i.bww, ptr %i.bwx, align 1, !tbaa !41
  %i.bwy = load i32, ptr %i.aif, align 4, !tbaa !50
  %i.bwz = icmp sgt i32 %i.bwy, -1
  %i.bxa = load ptr, ptr %i.aig, align 8, !tbaa !51
  %i.bxb = zext i1 %i.bwz to i64
  %i.bxc = getelementptr inbounds nuw i8, ptr %i.bxa, i64 %i.bxb
  store ptr %i.bxc, ptr %i.aig, align 8, !tbaa !51
  %i.bxd = load i32, ptr %i.aie, align 8, !tbaa !52
  %.not16.i61.us.i = icmp eq i32 %i.bxd, 0
  br i1 %.not16.i61.us.i, label %._crit_edge.i64.us.i, label %.lr.ph.i62.us.i

.lr.ph.i62.us.i:                                  ; preds = %bb.cf
  %i.bxe = trunc nsw i32 %i.bws to i8
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cg, %.lr.ph.i62.us.i
  %i.bxf = load ptr, ptr %i.aig, align 8, !tbaa !51 ; 2 uses
  %i.bxg = getelementptr inbounds nuw i8, ptr %i.bxf, i64 1
  store ptr %i.bxg, ptr %i.aig, align 8, !tbaa !51
  store i8 %i.bxe, ptr %i.bxf, align 1, !tbaa !41
  %i.bxh = load i32, ptr %i.aie, align 8, !tbaa !52
  %i.bxi = add nsw i32 %i.bxh, -1                 ; 2 uses
  store i32 %i.bxi, ptr %i.aie, align 8, !tbaa !52
  %.not.i63.us.i = icmp eq i32 %i.bxi, 0
  br i1 %.not.i63.us.i, label %._crit_edge.i64.us.i, label %bb.cg, !llvm.loop !53

._crit_edge.i64.us.i:                             ; preds = %bb.cg, %bb.cf
  %i.bxj = load i32, ptr %i.aj, align 8, !tbaa !49 ; 2 uses
  %i.bxk = ashr i32 %i.bxj, 8
  store i32 %i.bxk, ptr %i.aif, align 4, !tbaa !50
end_hunk_0
begin_hunk_1_@encode_slice:bb.a
  %i.cef = phi i32 [ %i.cdg, %bb.cz ], [ %i.cec, %._crit_edge.i54.us.i ]
  %i.ceg = shl i32 %i.cef, 8
  %i.ceh = and i32 %i.ceg, 65280
  store i32 %i.ceh, ptr %i.aj, align 8, !tbaa !49
  %i.cei = shl i32 %i.cee, 8                      ; 2 uses
  store i32 %i.cei, ptr %i.aid, align 4, !tbaa !47
  br label %put_rac.exit178.i.us.i

put_rac.exit178.i.us.i:                           ; preds = %renorm_encoder.exit55.us.i, %._crit_edge.us.i616
  %i.cej = phi i32 [ %i.cei, %renorm_encoder.exit55.us.i ], [ %i.cdc, %._crit_edge.us.i616 ]
  br i1 %.not106.i, label %put_symbol_inline.exit.us.i, label %.lr.ph90.us.i

bb.dc:                                            ; preds = %.lr.ph90.us.i, %put_rac.exit175.i.us.i
  %i.cek = phi i32 [ %i.cej, %.lr.ph90.us.i ], [ %i.cge, %put_rac.exit175.i.us.i ] ; 2 uses
  %indvars.iv113.i = phi i64 [ %i.cii, %.lr.ph90.us.i ], [ %indvars.iv.next114.i, %put_rac.exit175.i.us.i ] ; 2 uses
  %indvars.iv.next114.i = add nsw i64 %indvars.iv113.i, -1 ; 3 uses
  %i.cel = getelementptr inbounds nuw i8, ptr %i.cih, i64 %indvars.iv.next114.i ; 2 uses
  %i.cem = load i8, ptr %i.cel, align 1, !tbaa !41 ; 2 uses
  %i.cen = zext i8 %i.cem to i32
  %i.ceo = mul nsw i32 %i.cek, %i.cen
  %i.cep = ashr i32 %i.ceo, 8                     ; 2 uses
  %i.ceq = trunc nuw nsw i64 %indvars.iv.next114.i to i32
  %i.cer = shl nuw i32 1, %i.ceq
  %i.ces = and i32 %i.cer, %.03793.us.i
  %.not.i172.i.us.i = icmp eq i32 %i.ces, 0
  %i.cet = sub i32 %i.cek, %i.cep                 ; 2 uses
  br i1 %.not.i172.i.us.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ceu = load i32, ptr %i.aj, align 8, !tbaa !49
  %i.cev = add nsw i32 %i.ceu, %i.cet
  store i32 %i.cev, ptr %i.aj, align 8, !tbaa !49
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.cew = phi i64 [ 376, %bb.dd ], [ 120, %bb.dc ]
  %.sink123.i = phi i32 [ %i.cep, %bb.dd ], [ %i.cet, %bb.dc ] ; 4 uses
  %i.cex = getelementptr inbounds nuw i8, ptr %1, i64 %i.cew
  %i.cey = zext i8 %i.cem to i64
  %i.cez = getelementptr inbounds nuw i8, ptr %i.cex, i64 %i.cey
  store i32 %.sink123.i, ptr %i.aid, align 4, !tbaa !47
  %storemerge.i174.i.us.i = load i8, ptr %i.cez, align 1, !tbaa !41
  store i8 %storemerge.i174.i.us.i, ptr %i.cel, align 1, !tbaa !41
  %i.cfa = icmp slt i32 %.sink123.i, 256
  br i1 %i.cfa, label %bb.df, label %put_rac.exit175.i.us.i

bb.df:                                            ; preds = %bb.de
  %i.cfb = load i32, ptr %i.aj, align 8, !tbaa !49 ; 2 uses
  %i.cfc = add nsw i32 %i.cfb, -65281             ; 2 uses
  %i.cfd = icmp ugt i32 %i.cfc, 254
  br i1 %i.cfd, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.cfe = load i32, ptr %i.aie, align 8, !tbaa !52
  %i.cff = add nsw i32 %i.cfe, 1
  store i32 %i.cff, ptr %i.aie, align 8, !tbaa !52
  br label %renorm_encoder.exit60.us.i

bb.dh:                                            ; preds = %bb.df
  %i.cfg = ashr i32 %i.cfc, 31                    ; 2 uses
  %i.cfh = load i32, ptr %i.aif, align 4, !tbaa !50
  %i.cfi = add nsw i32 %i.cfg, 1
  %i.cfj = add i32 %i.cfi, %i.cfh
  %i.cfk = trunc i32 %i.cfj to i8
  %i.cfl = load ptr, ptr %i.aig, align 8, !tbaa !51
  store i8 %i.cfk, ptr %i.cfl, align 1, !tbaa !41
  %i.cfm = load i32, ptr %i.aif, align 4, !tbaa !50
  %i.cfn = icmp sgt i32 %i.cfm, -1
  %i.cfo = load ptr, ptr %i.aig, align 8, !tbaa !51
  %i.cfp = zext i1 %i.cfn to i64
  %i.cfq = getelementptr inbounds nuw i8, ptr %i.cfo, i64 %i.cfp
  store ptr %i.cfq, ptr %i.aig, align 8, !tbaa !51
  %i.cfr = load i32, ptr %i.aie, align 8, !tbaa !52
  %.not16.i56.us.i = icmp eq i32 %i.cfr, 0
  br i1 %.not16.i56.us.i, label %._crit_edge.i59.us.i, label %.lr.ph.i57.us.i

.lr.ph.i57.us.i:                                  ; preds = %bb.dh
  %i.cfs = trunc nsw i32 %i.cfg to i8
  br label %bb.di

bb.di:                                            ; preds = %bb.di, %.lr.ph.i57.us.i
  %i.cft = load ptr, ptr %i.aig, align 8, !tbaa !51 ; 2 uses
  %i.cfu = getelementptr inbounds nuw i8, ptr %i.cft, i64 1
  store ptr %i.cfu, ptr %i.aig, align 8, !tbaa !51
  store i8 %i.cfs, ptr %i.cft, align 1, !tbaa !41
  %i.cfv = load i32, ptr %i.aie, align 8, !tbaa !52
  %i.cfw = add nsw i32 %i.cfv, -1                 ; 2 uses
  store i32 %i.cfw, ptr %i.aie, align 8, !tbaa !52
  %.not.i58.us.i = icmp eq i32 %i.cfw, 0
  br i1 %.not.i58.us.i, label %._crit_edge.i59.us.i, label %bb.di, !llvm.loop !53

._crit_edge.i59.us.i:                             ; preds = %bb.di, %bb.dh
  %i.cfx = load i32, ptr %i.aj, align 8, !tbaa !49 ; 2 uses
  %i.cfy = ashr i32 %i.cfx, 8
  store i32 %i.cfy, ptr %i.aif, align 4, !tbaa !50
  %.pre131.i = load i32, ptr %i.aid, align 4, !tbaa !47
  br label %renorm_encoder.exit60.us.i

renorm_encoder.exit60.us.i:                       ; preds = %._crit_edge.i59.us.i, %bb.dg
  %i.cfz = phi i32 [ %.sink123.i, %bb.dg ], [ %.pre131.i, %._crit_edge.i59.us.i ]
  %i.cga = phi i32 [ %i.cfb, %bb.dg ], [ %i.cfx, %._crit_edge.i59.us.i ]
  %i.cgb = shl i32 %i.cga, 8
  %i.cgc = and i32 %i.cgb, 65280
  store i32 %i.cgc, ptr %i.aj, align 8, !tbaa !49
  %i.cgd = shl i32 %i.cfz, 8                      ; 2 uses
  store i32 %i.cgd, ptr %i.aid, align 4, !tbaa !47
  br label %put_rac.exit175.i.us.i

put_rac.exit175.i.us.i:                           ; preds = %renorm_encoder.exit60.us.i, %bb.de
  %i.cge = phi i32 [ %i.cgd, %renorm_encoder.exit60.us.i ], [ %.sink123.i, %bb.de ]
  %i.cgf = icmp samesign ugt i64 %indvars.iv113.i, 1
  br i1 %i.cgf, label %bb.dc, label %put_symbol_inline.exit.us.i, !llvm.loop !75

bb.dj:                                            ; preds = %bb.bw
  %i.cgg = load i32, ptr %i.aid, align 4, !tbaa !47 ; 2 uses
  %i.cgh = load i8, ptr %i.bud, align 16, !tbaa !41 ; 2 uses
  %i.cgi = zext i8 %i.cgh to i32
  %i.cgj = mul nsw i32 %i.cgg, %i.cgi
  %i.cgk = ashr i32 %i.cgj, 8                     ; 4 uses
  %i.cgl = sub nsw i32 %i.cgg, %i.cgk
  %i.cgm = load i32, ptr %i.aj, align 8, !tbaa !49
  %i.cgn = add nsw i32 %i.cgl, %i.cgm             ; 3 uses
  store i32 %i.cgn, ptr %i.aj, align 8, !tbaa !49
  store i32 %i.cgk, ptr %i.aid, align 4, !tbaa !47
  %i.cgo = zext i8 %i.cgh to i64
  %i.cgp = getelementptr inbounds nuw i8, ptr %i.ajg, i64 %i.cgo
  %storemerge.i.i.us.i = load i8, ptr %i.cgp, align 1, !tbaa !41
  store i8 %storemerge.i.i.us.i, ptr %i.bud, align 16, !tbaa !41
  %i.cgq = icmp slt i32 %i.cgk, 256
  br i1 %i.cgq, label %bb.dk, label %put_symbol_inline.exit.us.i

bb.dk:                                            ; preds = %bb.dj
  %i.cgr = add nsw i32 %i.cgn, -65281             ; 2 uses
  %i.cgs = icmp ugt i32 %i.cgr, 254
  br i1 %i.cgs, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.cgt = load i32, ptr %i.aie, align 8, !tbaa !52
  %i.cgu = add nsw i32 %i.cgt, 1
  store i32 %i.cgu, ptr %i.aie, align 8, !tbaa !52
  br label %renorm_encoder.exit80.us.i

bb.dm:                                            ; preds = %bb.dk
  %i.cgv = ashr i32 %i.cgr, 31                    ; 2 uses
  %i.cgw = load i32, ptr %i.aif, align 4, !tbaa !50
  %i.cgx = add nsw i32 %i.cgv, 1
  %i.cgy = add i32 %i.cgx, %i.cgw
  %i.cgz = trunc i32 %i.cgy to i8
  %i.cha = load ptr, ptr %i.aig, align 8, !tbaa !51
  store i8 %i.cgz, ptr %i.cha, align 1, !tbaa !41
  %i.chb = load i32, ptr %i.aif, align 4, !tbaa !50
  %i.chc = icmp sgt i32 %i.chb, -1
  %i.chd = load ptr, ptr %i.aig, align 8, !tbaa !51
  %i.che = zext i1 %i.chc to i64
  %i.chf = getelementptr inbounds nuw i8, ptr %i.chd, i64 %i.che
  store ptr %i.chf, ptr %i.aig, align 8, !tbaa !51
  %i.chg = load i32, ptr %i.aie, align 8, !tbaa !52
  %.not16.i76.us.i = icmp eq i32 %i.chg, 0
  br i1 %.not16.i76.us.i, label %._crit_edge.i79.us.i, label %.lr.ph.i77.us.i

.lr.ph.i77.us.i:                                  ; preds = %bb.dm
  %i.chh = trunc nsw i32 %i.cgv to i8
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dn, %.lr.ph.i77.us.i
  %i.chi = load ptr, ptr %i.aig, align 8, !tbaa !51 ; 2 uses
  %i.chj = getelementptr inbounds nuw i8, ptr %i.chi, i64 1
  store ptr %i.chj, ptr %i.aig, align 8, !tbaa !51
  store i8 %i.chh, ptr %i.chi, align 1, !tbaa !41
  %i.chk = load i32, ptr %i.aie, align 8, !tbaa !52
  %i.chl = add nsw i32 %i.chk, -1                 ; 2 uses
  store i32 %i.chl, ptr %i.aie, align 8, !tbaa !52
  %.not.i78.us.i = icmp eq i32 %i.chl, 0
  br i1 %.not.i78.us.i, label %._crit_edge.i79.us.i, label %bb.dn, !llvm.loop !53

._crit_edge.i79.us.i:                             ; preds = %bb.dn, %bb.dm
  %i.chm = load i32, ptr %i.aj, align 8, !tbaa !49 ; 2 uses
  %i.chn = ashr i32 %i.chm, 8
  store i32 %i.chn, ptr %i.aif, align 4, !tbaa !50
  %.pre132.i = load i32, ptr %i.aid, align 4, !tbaa !47
  br label %renorm_encoder.exit80.us.i

renorm_encoder.exit80.us.i:                       ; preds = %._crit_edge.i79.us.i, %bb.dl
  %i.cho = phi i32 [ %i.cgk, %bb.dl ], [ %.pre132.i, %._crit_edge.i79.us.i ]
  %i.chp = phi i32 [ %i.cgn, %bb.dl ], [ %i.chm, %._crit_edge.i79.us.i ]
  %i.chq = shl i32 %i.chp, 8
  %i.chr = and i32 %i.chq, 65280
  store i32 %i.chr, ptr %i.aj, align 8, !tbaa !49
  %i.chs = shl i32 %i.cho, 8
  store i32 %i.chs, ptr %i.aid, align 4, !tbaa !47
  br label %put_symbol_inline.exit.us.i

bb.do:                                            ; preds = %bb.bv
  %i.cht = add nsw i32 %.03793.us.i, 1
  br label %put_symbol_inline.exit.us.i

put_symbol_inline.exit.us.i:                      ; preds = %put_rac.exit161.i.us.i, %put_rac.exit175.i.us.i, %bb.do, %renorm_encoder.exit80.us.i, %bb.dj, %put_rac.exit178.i.us.i
  %.2.us.i = phi i32 [ %.03892.us.i, %bb.do ], [ %i.bty, %bb.dj ], [ %i.bty, %renorm_encoder.exit80.us.i ], [ %.03892.us.i, %put_rac.exit178.i.us.i ], [ %.03892.us.i, %put_rac.exit175.i.us.i ], [ %.03892.us.i, %put_rac.exit161.i.us.i ] ; 2 uses
  %.1.us.i = phi i32 [ %i.cht, %bb.do ], [ 0, %bb.dj ], [ 0, %renorm_encoder.exit80.us.i ], [ 0, %put_rac.exit178.i.us.i ], [ 0, %put_rac.exit175.i.us.i ], [ 0, %put_rac.exit161.i.us.i ] ; 3 uses
  %i.chu = add nuw nsw i32 %.03694.us.i, 1        ; 2 uses
  %exitcond116.not.i = icmp eq i32 %i.chu, %i.btg
  br i1 %exitcond116.not.i, label %._crit_edge97.us.i, label %bb.bv, !llvm.loop !286

bb.dp:                                            ; preds = %._crit_edge97.us.i
  %i.chv = zext nneg i32 %.2.us.i to i64
  %i.chw = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.chv
  call fastcc void @put_symbol(ptr noundef nonnull %i.aj, ptr noundef %i.chw, i32 noundef %.1.us.i, i32 noundef 0)
  br label %bb.dq

bb.dq:                                            ; preds = %._crit_edge97.us.i, %bb.dp
  %i.chx = getelementptr inbounds nuw [4 x i8], ptr %i.ajh, i64 %indvars.iv117.i
  store i32 %i.bua, ptr %i.chx, align 4, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #19
  %indvars.iv.next118.i = add nuw nsw i64 %indvars.iv117.i, 1 ; 2 uses
  %i.chy = load i32, ptr %i.ajc, align 4, !tbaa !46
  %i.chz = shl nsw i32 %i.chy, 1
  %i.cia = or disjoint i32 %i.chz, 1
  %i.cib = load i32, ptr %i.aiu, align 8, !tbaa !56
  %i.cic = add nsw i32 %i.cia, %i.cib
  %i.cid = sext i32 %i.cic to i64
  %i.cie = icmp slt i64 %indvars.iv.next118.i, %i.cid
  br i1 %i.cie, label %.lr.ph96.us.i, label %encode_histogram_remap.exit, !llvm.loop !287

.preheader.us.i612:                               ; preds = %put_rac.exit184.i.us.i
  %.not106.i = icmp eq i32 %i.bul, 0              ; 2 uses
  br i1 %.not106.i, label %._crit_edge.us.i616, label %.lr.ph.us.i

.preheader83.us.i:                                ; preds = %put_rac.exit184.i.us.i
  %i.cif = getelementptr inbounds nuw i8, ptr %i.bud, i64 1
  %.pre124.i = load i32, ptr %i.aj, align 8, !tbaa !49
  br label %bb.cc

.lr.ph.us.i:                                      ; preds = %.preheader.us.i612
  %i.cig = getelementptr inbounds nuw i8, ptr %i.bud, i64 1
  %wide.trip.count.i613 = zext nneg i32 %i.bul to i64 ; 2 uses
  %.pre128.i = load i32, ptr %i.aj, align 8, !tbaa !49
  br label %bb.ct

.lr.ph90.us.i:                                    ; preds = %put_rac.exit178.i.us.i
  %i.cih = getelementptr inbounds nuw i8, ptr %i.bud, i64 22
  %i.cii = zext nneg i32 %i.bul to i64
  br label %bb.dc

._crit_edge97.us.i:                               ; preds = %put_symbol_inline.exit.us.i
  %.not.us.i = icmp eq i32 %.1.us.i, 0
  br i1 %.not.us.i, label %bb.dq, label %bb.dp

.lr.ph103.split.i:                                ; preds = %.lr.ph103.i, %.lr.ph103.split.i
  %indvars.iv120.i = phi i64 [ %indvars.iv.next121.i, %.lr.ph103.split.i ], [ 0, %.lr.ph103.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.n, i8 -128, i64 64, i1 false)
  call fastcc void @put_symbol(ptr noundef nonnull %i.aj, ptr noundef %i.n, i32 noundef 0, i32 noundef 0)
  %i.cij = getelementptr inbounds nuw [4 x i8], ptr %i.ajh, i64 %indvars.iv120.i
  store i32 0, ptr %i.cij, align 4, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #19
  %indvars.iv.next121.i = add nuw nsw i64 %indvars.iv120.i, 1 ; 2 uses
  %i.cik = load i32, ptr %i.ajc, align 4, !tbaa !46
  %i.cil = shl nsw i32 %i.cik, 1
  %i.cim = or disjoint i32 %i.cil, 1
  %i.cin = load i32, ptr %i.aiu, align 8, !tbaa !56
  %i.cio = add nsw i32 %i.cim, %i.cin
  %i.cip = sext i32 %i.cio to i64
  %i.ciq = icmp slt i64 %indvars.iv.next121.i, %i.cip
  br i1 %i.ciq, label %.lr.ph103.split.i, label %encode_histogram_remap.exit, !llvm.loop !287

bb.dr:                                            ; preds = %bb.an
  %.val327 = load i32, ptr %i.aiu, align 8, !tbaa !56 ; 2 uses
  br i1 %i.ain, label %.preheader61.lr.ph.i, label %.._crit_edge91.i_crit_edge

.._crit_edge91.i_crit_edge:                       ; preds = %bb.dr
  %.pre1318.a = load ptr, ptr %i.ajl, align 8, !tbaa !145
  br label %._crit_edge91.i

.preheader61.lr.ph.i:                             ; preds = %bb.dr
  %.not629.i = icmp eq i32 %.val327, 0            ; 2 uses
  %.pre1319.a = load ptr, ptr %i.ajl, align 8, !tbaa !145 ; 8 uses
  br i1 %i.aio, label %.preheader61.lr.ph.split.us.i, label %._crit_edge91.i

.preheader61.lr.ph.split.us.i:                    ; preds = %.preheader61.lr.ph.i
  %i.cir = icmp eq i32 %i.api, 2
  %i.cis = load ptr, ptr %i.ajk, align 8, !tbaa !145 ; 4 uses
  %i.cit = load ptr, ptr %i.ajj, align 8, !tbaa !145 ; 4 uses
  br i1 %i.cir, label %.preheader61.lr.ph.split.us.split.us.i, label %.preheader61.us.i

.preheader61.lr.ph.split.us.split.us.i:           ; preds = %.preheader61.lr.ph.split.us.i
  br i1 %.not629.i, label %.preheader61.us.us.us.i, label %.preheader61.lr.ph.split.us.split.us.split.i

.preheader61.us.us.us.i:                          ; preds = %.preheader61.lr.ph.split.us.split.us.i, %._crit_edge.split.us.us.us.split.us.us.i
  %indvars.iv244.i = phi i64 [ %indvars.iv.next245.i, %._crit_edge.split.us.us.us.split.us.us.i ], [ 0, %.preheader61.lr.ph.split.us.split.us.i ] ; 3 uses
  %.058889.us.us.us.i = phi i64 [ %indvars.iv.next236.i, %._crit_edge.split.us.us.us.split.us.us.i ], [ 0, %.preheader61.lr.ph.split.us.split.us.i ]
  %i.ciu = mul nuw nsw i64 %indvars.iv244.i, %wide.trip.count.i499
  %i.civ = trunc nuw nsw i64 %indvars.iv244.i to i32 ; 3 uses
  br label %bb.ds

bb.ds:                                            ; preds = %bb.ds, %.preheader61.us.us.us.i
  %indvars.iv237.i = phi i64 [ %indvars.iv.next238.i, %bb.ds ], [ 0, %.preheader61.us.us.us.i ] ; 3 uses
  %indvars.iv235.i = phi i64 [ %indvars.iv.next236.i, %bb.ds ], [ %.058889.us.us.us.i, %.preheader61.us.us.us.i ] ; 4 uses
  %i.ciw = shl nuw nsw i64 %indvars.iv237.i, 2    ; 3 uses
  %i.cix = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ciw
  %i.ciy = load i32, ptr %i.ay, align 8, !tbaa !63
  %i.ciz = mul nsw i32 %i.ciy, %i.civ
  %i.cja = sext i32 %i.ciz to i64
  %i.cjb = getelementptr inbounds i8, ptr %i.cix, i64 %i.cja
  %i.cjc = load i32, ptr %i.cjb, align 4, !tbaa !63 ; 3 uses
  %i.cjd = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.ciw
  %i.cje = load i32, ptr %i.ajb, align 4, !tbaa !63
  %i.cjf = mul nsw i32 %i.cje, %i.civ
  %i.cjg = sext i32 %i.cjf to i64
  %i.cjh = getelementptr inbounds i8, ptr %i.cjd, i64 %i.cjg
  %i.cji = load i32, ptr %i.cjh, align 4, !tbaa !63 ; 3 uses
  %i.cjj = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.ciw
  %i.cjk = load i32, ptr %i.aja, align 8, !tbaa !63
  %i.cjl = mul nsw i32 %i.cjk, %i.civ
  %i.cjm = sext i32 %i.cjl to i64
  %i.cjn = getelementptr inbounds i8, ptr %i.cjj, i64 %i.cjm
  %i.cjo = load i32, ptr %i.cjn, align 4, !tbaa !63 ; 3 uses
  %i.cjp = xor i32 %i.cjc, 2147483647
  %.not630631.us.us.us.us.us.i = icmp slt i32 %i.cjc, 0
  %i.cjq = select i1 %.not630631.us.us.us.us.us.i, i32 %i.cjc, i32 %i.cjp
  %i.cjr = xor i32 %i.cji, 2147483647
  %.not632633.us.us.us.us.us.i = icmp slt i32 %i.cji, 0
  %i.cjs = select i1 %.not632633.us.us.us.us.us.i, i32 %i.cji, i32 %i.cjr
  %i.cjt = xor i32 %i.cjo, 2147483647
  %.not634635.us.us.us.us.us.i = icmp slt i32 %i.cjo, 0
  %i.cju = select i1 %.not634635.us.us.us.us.us.i, i32 %i.cjo, i32 %i.cjt
  %i.cjv = getelementptr inbounds [8 x i8], ptr %.pre1319.a, i64 %indvars.iv235.i ; 2 uses
  store i32 %i.cjq, ptr %i.cjv, align 4, !tbaa !288
  %i.cjw = add nuw nsw i64 %indvars.iv237.i, %i.ciu
  %i.cjx = getelementptr inbounds nuw i8, ptr %i.cjv, i64 4
  %i.cjy = trunc nuw i64 %i.cjw to i32            ; 3 uses
  store i32 %i.cjy, ptr %i.cjx, align 4, !tbaa !290
  %i.cjz = getelementptr inbounds [8 x i8], ptr %i.cis, i64 %indvars.iv235.i ; 2 uses
  store i32 %i.cjs, ptr %i.cjz, align 4, !tbaa !288
  %i.cka = getelementptr inbounds nuw i8, ptr %i.cjz, i64 4
  store i32 %i.cjy, ptr %i.cka, align 4, !tbaa !290
  %i.ckb = getelementptr inbounds [8 x i8], ptr %i.cit, i64 %indvars.iv235.i ; 2 uses
  store i32 %i.cju, ptr %i.ckb, align 4, !tbaa !288
  %i.ckc = getelementptr inbounds nuw i8, ptr %i.ckb, i64 4
  store i32 %i.cjy, ptr %i.ckc, align 4, !tbaa !290
  %indvars.iv.next236.i = add nsw i64 %indvars.iv235.i, 1 ; 3 uses
  %indvars.iv.next238.i = add nuw nsw i64 %indvars.iv237.i, 1 ; 2 uses
  %exitcond243.not.i = icmp eq i64 %indvars.iv.next238.i, %wide.trip.count.i499
  br i1 %exitcond243.not.i, label %._crit_edge.split.us.us.us.split.us.us.i, label %bb.ds, !llvm.loop !291

._crit_edge.split.us.us.us.split.us.us.i:         ; preds = %bb.ds
  %indvars.iv.next245.i = add nuw nsw i64 %indvars.iv244.i, 1 ; 2 uses
  %exitcond248.not.i = icmp eq i64 %indvars.iv.next245.i, %wide.trip.count57.i498
  br i1 %exitcond248.not.i, label %._crit_edge91.i, label %.preheader61.us.us.us.i, !llvm.loop !292

.preheader61.lr.ph.split.us.split.us.split.i:     ; preds = %.preheader61.lr.ph.split.us.split.us.i
  %i.ckd = load ptr, ptr %i.aji, align 8, !tbaa !145
  br label %.preheader61.us.us.i

.preheader61.us.us.i:                             ; preds = %._crit_edge.split.us.us.us.split.i, %.preheader61.lr.ph.split.us.split.us.split.i
  %indvars.iv230.i = phi i64 [ %indvars.iv.next231.i, %._crit_edge.split.us.us.us.split.i ], [ 0, %.preheader61.lr.ph.split.us.split.us.split.i ] ; 3 uses
  %.058889.us.us.i = phi i64 [ %indvars.iv.next222.i, %._crit_edge.split.us.us.us.split.i ], [ 0, %.preheader61.lr.ph.split.us.split.us.split.i ]
  %i.cke = mul nuw nsw i64 %indvars.iv230.i, %wide.trip.count.i499
  %i.ckf = trunc nuw nsw i64 %indvars.iv230.i to i32 ; 4 uses
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dt, %.preheader61.us.us.i
  %indvars.iv223.i = phi i64 [ %indvars.iv.next224.i, %bb.dt ], [ 0, %.preheader61.us.us.i ] ; 3 uses
  %indvars.iv221.i = phi i64 [ %indvars.iv.next222.i, %bb.dt ], [ %.058889.us.us.i, %.preheader61.us.us.i ] ; 5 uses
  %i.ckg = shl nuw nsw i64 %indvars.iv223.i, 2    ; 4 uses
  %i.ckh = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ckg
  %i.cki = load i32, ptr %i.ay, align 8, !tbaa !63
  %i.ckj = mul nsw i32 %i.cki, %i.ckf
  %i.ckk = sext i32 %i.ckj to i64
  %i.ckl = getelementptr inbounds i8, ptr %i.ckh, i64 %i.ckk
  %i.ckm = load i32, ptr %i.ckl, align 4, !tbaa !63 ; 3 uses
  %i.ckn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.ckg
  %i.cko = load i32, ptr %i.ajb, align 4, !tbaa !63
  %i.ckp = mul nsw i32 %i.cko, %i.ckf
  %i.ckq = sext i32 %i.ckp to i64
  %i.ckr = getelementptr inbounds i8, ptr %i.ckn, i64 %i.ckq
  %i.cks = load i32, ptr %i.ckr, align 4, !tbaa !63 ; 3 uses
  %i.ckt = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.ckg
  %i.cku = load i32, ptr %i.aja, align 8, !tbaa !63
  %i.ckv = mul nsw i32 %i.cku, %i.ckf
  %i.ckw = sext i32 %i.ckv to i64
  %i.ckx = getelementptr inbounds i8, ptr %i.ckt, i64 %i.ckw
  %i.cky = load i32, ptr %i.ckx, align 4, !tbaa !63 ; 3 uses
  %i.ckz = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ckg
  %i.cla = load i32, ptr %i.aix, align 4, !tbaa !63
  %i.clb = mul nsw i32 %i.cla, %i.ckf
  %i.clc = sext i32 %i.clb to i64
  %i.cld = getelementptr inbounds i8, ptr %i.ckz, i64 %i.clc
  %i.cle = load i32, ptr %i.cld, align 4, !tbaa !63
  %i.clf = xor i32 %i.ckm, 2147483647
  %.not630631.us.us.us.i = icmp slt i32 %i.ckm, 0
  %i.clg = select i1 %.not630631.us.us.us.i, i32 %i.ckm, i32 %i.clf
  %i.clh = xor i32 %i.cks, 2147483647
  %.not632633.us.us.us.i = icmp slt i32 %i.cks, 0
  %i.cli = select i1 %.not632633.us.us.us.i, i32 %i.cks, i32 %i.clh
  %i.clj = xor i32 %i.cky, 2147483647
  %.not634635.us.us.us.i = icmp slt i32 %i.cky, 0
  %i.clk = select i1 %.not634635.us.us.us.i, i32 %i.cky, i32 %i.clj
  %i.cll = getelementptr inbounds [8 x i8], ptr %.pre1319.a, i64 %indvars.iv221.i ; 2 uses
  store i32 %i.clg, ptr %i.cll, align 4, !tbaa !288
  %i.clm = add nuw nsw i64 %indvars.iv223.i, %i.cke
  %i.cln = getelementptr inbounds nuw i8, ptr %i.cll, i64 4
end_hunk_1
