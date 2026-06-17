inline.NumInlined: 150
inline.NumDeleted: 50
begin_hunk_0_@EncodeStreamHook:bb.a
bb.bx:                                            ; preds = %VP8LPutBits.exit30.i
  call void @VP8LPutBitsFlushBits(ptr noundef nonnull %i.n) #7
  %.pre.i31.i = load i32, ptr %i.ap, align 8, !tbaa !77
  %.pre33.i = load i64, ptr %i.n, align 8, !tbaa !87
  %.pre331 = load i32, ptr %i.i, align 4, !tbaa !3
  br label %ApplyCrossColorFilter.exit

ApplyCrossColorFilter.exit:                       ; preds = %VP8LPutBits.exit30.i, %bb.bx
  %i.aby = phi i32 [ %.pre331, %bb.bx ], [ %i.abv, %VP8LPutBits.exit30.i ] ; 3 uses
  %i.abz = phi i64 [ %.pre33.i, %bb.bx ], [ %i.abt, %VP8LPutBits.exit30.i ]
  %i.aca = phi i32 [ %.pre.i31.i, %bb.bx ], [ %i.abu, %VP8LPutBits.exit30.i ] ; 2 uses
  %i.acb = zext i32 %i.abw to i64
  %i.acc = zext nneg i32 %i.aca to i64
  %i.acd = shl i64 %i.acb, %i.acc
  %i.ace = or i64 %i.acd, %i.abz
  store i64 %i.ace, ptr %i.n, align 8, !tbaa !87
  %i.acf = add nsw i32 %i.aca, 3
  store i32 %i.acf, ptr %i.ap, align 8, !tbaa !77
  %i.acg = load ptr, ptr %i.bx, align 8, !tbaa !117
  %i.ach = shl nuw i32 1, %i.aby                  ; 2 uses
  %i.aci = add i32 %i.aaz, -1
  %i.acj = add i32 %i.aci, %i.ach
  %i.ack = lshr i32 %i.acj, %i.aby
  %i.acl = add i32 %i.bv, %i.ach
  %i.acm = lshr i32 %i.acl, %i.aby
  %i.acn = load ptr, ptr %i.bl, align 8, !tbaa !15
  %i.aco = sub nsw i32 %i.aay, %i.abe
  %i.acp = call fastcc i32 @EncodeImageNoHuffman(ptr noundef nonnull %i.n, ptr noundef %i.acg, ptr noundef nonnull %i.bp, ptr noundef nonnull %i.bg, i32 noundef %i.ack, i32 noundef %i.acm, i32 noundef %i.z, i32 noundef range(i32 0, 2) %i.ad, ptr noundef %i.acn, i32 noundef %i.aco, ptr noundef nonnull %i.g)
  %.not185 = icmp eq i32 %i.acp, 0
  br i1 %.not185, label %MakeInputImageCopy.exit.thread259, label %bb.by

bb.by:                                            ; preds = %ApplyCrossColorFilter.exit
  %i.acq = sub nsw i32 %.1, %i.aay
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bs
  %.2 = phi i32 [ %i.acq, %bb.by ], [ %.1, %bb.bs ] ; 3 uses
  %i.acr = load i32, ptr %i.ap, align 8, !tbaa !77 ; 2 uses
  %i.acs = icmp sgt i32 %i.acr, 31
  br i1 %i.acs, label %bb.ca, label %VP8LPutBits.exit

bb.ca:                                            ; preds = %bb.bz
  call void @VP8LPutBitsFlushBits(ptr noundef nonnull %i.n) #7
  %.pre.i209 = load i32, ptr %i.ap, align 8, !tbaa !77
  br label %VP8LPutBits.exit

VP8LPutBits.exit:                                 ; preds = %bb.bz, %bb.ca
  %i.act = phi i32 [ %.pre.i209, %bb.ca ], [ %i.acr, %bb.bz ]
  %i.acu = add nsw i32 %i.act, 1
  store i32 %i.acu, ptr %i.ap, align 8, !tbaa !77
  %i.acv = load ptr, ptr %i.bk, align 8, !tbaa !86 ; 2 uses
  %i.acw = load i32, ptr %i.br, align 8, !tbaa !97 ; 6 uses
  %i.acx = load i32, ptr %i.bz, align 4, !tbaa !30 ; 5 uses
  %i.acy = shl nuw i32 1, %i.acx                  ; 2 uses
  %i.acz = add i32 %i.acw, -1                     ; 2 uses
  %i.ada = add i32 %i.acy, %i.acz
  %i.adb = lshr i32 %i.ada, %i.acx
  %i.adc = add i32 %i.acy, %i.bv
  %i.add = lshr i32 %i.adc, %i.acx
  %i.ade = mul i32 %i.adb, %i.add                 ; 6 uses
  %i.adf = load i32, ptr %i.g, align 4, !tbaa !3
  %i.adg = call ptr @WebPSafeMalloc(i64 noundef 57, i64 noundef 16) #7 ; 3 uses
  %i.adh = zext i32 %i.ade to i64                 ; 3 uses
  %i.adi = call ptr @WebPSafeMalloc(i64 noundef %i.adh, i64 noundef 4) #7 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 48, i1 false), !tbaa.struct !78
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.adj = call i32 @VP8LBitWriterInit(ptr noundef nonnull %3, i64 noundef 0) #7
  %.not.i210 = icmp eq i32 %i.adj, 0
  br i1 %.not.i210, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %VP8LPutBits.exit
  %i.adk = call i32 @WebPEncodingSetError(ptr noundef %i.l, i32 noundef 1) #7 ; 0 uses
  br label %bb.dl

bb.cc:                                            ; preds = %VP8LPutBits.exit
  %i.adl = icmp eq ptr %i.adg, null
  %i.adm = icmp eq ptr %i.adi, null
  %or.cond.i211 = select i1 %i.adl, i1 true, i1 %i.adm
  br i1 %or.cond.i211, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.adn = call i32 @VP8LHashChainInit(ptr noundef nonnull %4, i32 noundef %i.ade) #7
  %.not250.i = icmp eq i32 %i.adn, 0
  br i1 %.not250.i, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.ado = call i32 @WebPEncodingSetError(ptr noundef %i.l, i32 noundef 1) #7 ; 0 uses
  br label %bb.dl

bb.cf:                                            ; preds = %bb.cd
  %i.adp = sdiv i32 %.2, 5                        ; 2 uses
  %i.adq = call i32 @VP8LHashChainFill(ptr noundef nonnull %i.bp, i32 noundef %i.z, ptr noundef %i.acv, i32 noundef %i.acw, i32 noundef %i.ah, i32 noundef range(i32 0, 2) %i.ad, ptr noundef %i.l, i32 noundef %i.adp, ptr noundef nonnull %i.g) #7
  %.not251.i = icmp eq i32 %i.adq, 0
  br i1 %.not251.i, label %bb.dl, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.adr = sub nsw i32 %.2, %i.adp
  %i.ads = load i32, ptr %i.bf, align 8, !tbaa !3 ; 2 uses
  %i.adt = icmp eq i32 %i.ads, 0
  %spec.select.i = select i1 %i.adt, i32 10, i32 %i.ads
  %i.adu = getelementptr inbounds nuw i8, ptr %i.cl, i64 24 ; 3 uses
  %i.adv = load i32, ptr %i.adu, align 4, !tbaa !47 ; 2 uses
  %i.adw = icmp sgt i32 %i.adv, 1
  br i1 %i.adw, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.adx = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  %i.ady = load i32, ptr %i.adx, align 4, !tbaa !46
  %.not252.i = icmp eq i32 %i.ady, 0
  br i1 %.not252.i, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.adz = call i32 @VP8LBitWriterClone(ptr noundef nonnull %i.n, ptr noundef nonnull %3) #7
  %.not253.i = icmp eq i32 %i.adz, 0
  br i1 %.not253.i, label %bb.cj, label %._crit_edge394.i

._crit_edge394.i:                                 ; preds = %bb.ci
  %.pre.i212 = load i32, ptr %i.adu, align 4, !tbaa !47
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.aea = call i32 @WebPEncodingSetError(ptr noundef %i.l, i32 noundef 1) #7 ; 0 uses
  br label %bb.dl

bb.ck:                                            ; preds = %._crit_edge394.i, %bb.ch
  %i.aeb = phi i32 [ %.pre.i212, %._crit_edge394.i ], [ %i.adv, %bb.ch ] ; 2 uses
  %i.aec = icmp sgt i32 %i.aeb, 0
  br i1 %i.aec, label %.lr.ph353.i, label %._crit_edge354.i

.lr.ph353.i:                                      ; preds = %bb.ck
  %i.aed = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %xtraiter533 = and i64 %i.adh, 1
  %i.aee = icmp eq i32 %i.ade, 1                  ; 0 uses
  %unroll_iter538 = and i64 %i.adh, 4294967294
  %lcmp.mod535.not = icmp eq i64 %xtraiter533, 0
  %lcmp.mod537 = trunc i32 %i.ade to i1
  br label %bb.cl

bb.cl:                                            ; preds = %.loopexit.i, %.lr.ph353.i
  %.4231 = phi i32 [ %.0227299, %.lr.ph353.i ], [ %.7234, %.loopexit.i ] ; 2 uses
  %.4 = phi i32 [ %.0224300, %.lr.ph353.i ], [ %.7, %.loopexit.i ] ; 2 uses
  %indvars.iv391.i = phi i64 [ 0, %.lr.ph353.i ], [ %indvars.iv.next392.i, %.loopexit.i ] ; 2 uses
  %i.aef = phi i32 [ %i.aeb, %.lr.ph353.i ], [ %i.aki, %.loopexit.i ]
  %.0206351.i = phi i64 [ -1, %.lr.ph353.i ], [ %.1207325.i, %.loopexit.i ]
  %i.aeg = getelementptr inbounds nuw [8 x i8], ptr %i.aed, i64 %indvars.iv391.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.aeh = sdiv i32 %i.adr, %i.aef                ; 2 uses
  %i.aei = sdiv i32 %i.aeh, 4                     ; 2 uses
  %i.aej = load i32, ptr %i.aeg, align 4, !tbaa !44
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aeg, i64 4 ; 2 uses
  %i.ael = load i32, ptr %i.aek, align 4, !tbaa !46
  %i.aem = call i32 @VP8LGetBackwardReferences(i32 noundef %i.acw, i32 noundef %i.ah, ptr noundef %i.acv, i32 noundef %i.z, i32 noundef range(i32 0, 2) %i.ad, i32 noundef %i.aej, i32 noundef %spec.select.i, i32 noundef %i.ael, ptr noundef nonnull %i.bp, ptr noundef nonnull %i.bg, ptr noundef nonnull %i.a, ptr noundef %i.l, i32 noundef %i.aei, ptr noundef nonnull %i.g) #7
  %.not254.i = icmp eq i32 %i.aem, 0
  br i1 %.not254.i, label %.loopexit317.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.aen = sub nsw i32 %i.aeh, %i.aei
  br label %bb.cn

bb.cn:                                            ; preds = %bb.dj, %bb.cm
  %.5232 = phi i32 [ %.4231, %bb.cm ], [ %.6233, %bb.dj ] ; 3 uses
  %.5 = phi i32 [ %.4, %bb.cm ], [ %.6, %bb.dj ]  ; 3 uses
  %i.aeo = phi i1 [ true, %bb.cm ], [ false, %bb.dj ] ; 2 uses
  %i.aep = phi i1 [ false, %bb.cm ], [ true, %bb.dj ]
  %indvars.iv388.i = phi i64 [ 0, %bb.cm ], [ 1, %bb.dj ]
  %.0202349.i = phi i32 [ %i.aen, %bb.cm ], [ %.1203416.i251256, %bb.dj ] ; 2 uses
  %.1207347.i = phi i64 [ %.0206351.i, %bb.cm ], [ %.2208.i, %bb.dj ] ; 3 uses
  %i.aeq = load i32, ptr %i.a, align 4            ; 2 uses
  %i.aer = select i1 %i.aeo, i32 %i.aeq, i32 0    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.acx, ptr %i.b, align 4, !tbaa !3
  %i.aes = icmp eq i32 %i.aeq, 0
  %or.cond3.i = select i1 %i.aep, i1 %i.aes, i1 false
  br i1 %or.cond3.i, label %bb.dk, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @VP8LBitWriterReset(ptr noundef nonnull %2, ptr noundef nonnull %i.n) #7
  %i.aet = call ptr @VP8LAllocateHistogramSet(i32 noundef %i.ade, i32 noundef %i.aer) #7 ; 9 uses
  %i.aeu = call ptr @VP8LAllocateHistogram(i32 noundef %i.aer) #7 ; 7 uses
  %i.aev = icmp eq ptr %i.aet, null
  %i.aew = icmp eq ptr %i.aeu, null
  %or.cond5.i = select i1 %i.aev, i1 true, i1 %i.aew
  br i1 %or.cond5.i, label %.thread274.sink.split.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.aex = sdiv i32 %.0202349.i, 3                ; 2 uses
  %i.aey = sub nsw i32 %.0202349.i, %i.aex        ; 4 uses
  %i.aez = getelementptr inbounds nuw [40 x i8], ptr %i.bg, i64 %indvars.iv388.i ; 2 uses
  %i.afa = load i32, ptr %i.b, align 4, !tbaa !3
  %i.afb = call i32 @VP8LGetHistoImageSymbols(i32 noundef %i.acw, i32 noundef %i.ah, ptr noundef nonnull %i.aez, i32 noundef %i.z, i32 noundef range(i32 0, 2) %i.ad, i32 noundef %i.afa, i32 noundef %i.aer, ptr noundef nonnull %i.aet, ptr noundef nonnull %i.aeu, ptr noundef %i.adi, ptr noundef %i.l, i32 noundef %i.aex, ptr noundef nonnull %i.g) #7
  %.not256.i = icmp eq i32 %i.afb, 0
  br i1 %.not256.i, label %.thread274.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.afc = load i32, ptr %i.aet, align 8, !tbaa !119
  %i.afd = mul i32 %i.afc, 5
  %i.afe = zext i32 %i.afd to i64
  %i.aff = call ptr @WebPSafeCalloc(i64 noundef %i.afe, i64 noundef 24) #7 ; 20 uses
  %i.afg = icmp eq ptr %i.aff, null
  br i1 %i.afg, label %.thread274.sink.split.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.afh = call fastcc i32 @GetHuffBitLengthsAndCodes(ptr noundef %i.aet, ptr noundef %i.aff)
  %.not257.i = icmp eq i32 %i.afh, 0
  br i1 %.not257.i, label %.thread274.sink.split.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @VP8LFreeHistogramSet(ptr noundef nonnull %i.aet) #7
  call void @VP8LFreeHistogram(ptr noundef nonnull %i.aeu) #7
  %i.afi = icmp sgt i32 %i.aer, 0
  %i.afj = load i32, ptr %i.ap, align 8, !tbaa !77 ; 3 uses
  %i.afk = icmp sgt i32 %i.afj, 31                ; 2 uses
  br i1 %i.afi, label %bb.ct, label %bb.cw

bb.ct:                                            ; preds = %bb.cs
  br i1 %i.afk, label %bb.cu, label %VP8LPutBits.exit.i221

bb.cu:                                            ; preds = %bb.ct
  call void @VP8LPutBitsFlushBits(ptr noundef nonnull %i.n) #7
  %.pre.i.i222 = load i32, ptr %i.ap, align 8, !tbaa !77
  br label %VP8LPutBits.exit.i221

VP8LPutBits.exit.i221:                            ; preds = %bb.cu, %bb.ct
  %i.afl = phi i32 [ %.pre.i.i222, %bb.cu ], [ %i.afj, %bb.ct ] ; 3 uses
  %i.afm = zext nneg i32 %i.afl to i64
  %i.afn = shl nuw i64 1, %i.afm
  %i.afo = load i64, ptr %i.n, align 8, !tbaa !87
  %i.afp = or i64 %i.afn, %i.afo                  ; 2 uses
  store i64 %i.afp, ptr %i.n, align 8, !tbaa !87
  %i.afq = add nsw i32 %i.afl, 1                  ; 2 uses
  store i32 %i.afq, ptr %i.ap, align 8, !tbaa !77
  %i.afr = icmp sgt i32 %i.afl, 30
  br i1 %i.afr, label %bb.cv, label %VP8LPutBits.exit266.i

bb.cv:                                            ; preds = %VP8LPutBits.exit.i221
  call void @VP8LPutBitsFlushBits(ptr noundef nonnull %i.n) #7
  %.pre.i265.i = load i32, ptr %i.ap, align 8, !tbaa !77
  %.pre395.i = load i64, ptr %i.n, align 8, !tbaa !87
  br label %VP8LPutBits.exit266.i

VP8LPutBits.exit266.i:                            ; preds = %bb.cv, %VP8LPutBits.exit.i221
  %i.afs = phi i64 [ %.pre395.i, %bb.cv ], [ %i.afp, %VP8LPutBits.exit.i221 ]
  %i.aft = phi i32 [ %.pre.i265.i, %bb.cv ], [ %i.afq, %VP8LPutBits.exit.i221 ] ; 2 uses
  %i.afu = zext nneg i32 %i.aer to i64
  %i.afv = zext nneg i32 %i.aft to i64
  %i.afw = shl i64 %i.afu, %i.afv
  %i.afx = or i64 %i.afw, %i.afs
  store i64 %i.afx, ptr %i.n, align 8, !tbaa !87
  %i.afy = add nsw i32 %i.aft, 4
  br label %bb.cy

bb.cw:                                            ; preds = %bb.cs
  br i1 %i.afk, label %bb.cx, label %VP8LPutBits.exit268.i

bb.cx:                                            ; preds = %bb.cw
  call void @VP8LPutBitsFlushBits(ptr noundef nonnull %i.n) #7
  %.pre.i267.i = load i32, ptr %i.ap, align 8, !tbaa !77
  br label %VP8LPutBits.exit268.i

VP8LPutBits.exit268.i:                            ; preds = %bb.cx, %bb.cw
  %i.afz = phi i32 [ %.pre.i267.i, %bb.cx ], [ %i.afj, %bb.cw ]
  %i.aga = add nsw i32 %i.afz, 1
  br label %bb.cy

bb.cy:                                            ; preds = %VP8LPutBits.exit268.i, %VP8LPutBits.exit266.i
  %i.agb = phi i32 [ %i.aga, %VP8LPutBits.exit268.i ], [ %i.afy, %VP8LPutBits.exit266.i ] ; 2 uses
  store i32 %i.agb, ptr %i.ap, align 8, !tbaa !77
  switch i32 %i.ade, label %.lr.ph.i213 [
    i32 0, label %._crit_edge.i217
    i32 1, label %.lr.ph.i213.epil.preheader
  ]

.lr.ph.i213:                                      ; preds = %bb.cy, %.lr.ph.i213
  %indvars.iv.i214 = phi i64 [ %indvars.iv.next.i215.1, %.lr.ph.i213 ], [ 0, %bb.cy ] ; 3 uses
  %.0225334.i = phi i32 [ %spec.select263.i.1, %.lr.ph.i213 ], [ 0, %bb.cy ] ; 2 uses
  %niter539 = phi i64 [ %niter539.next.1, %.lr.ph.i213 ], [ 0, %bb.cy ]
  %i.agc = getelementptr inbounds nuw [4 x i8], ptr %i.adi, i64 %indvars.iv.i214 ; 2 uses
  %i.agd = load i32, ptr %i.agc, align 4, !tbaa !3 ; 3 uses
  %.not261.i = icmp ult i32 %i.agd, %.0225334.i
  %i.age = add i32 %i.agd, 1
  %spec.select263.i = select i1 %.not261.i, i32 %.0225334.i, i32 %i.age ; 2 uses
  %i.agf = shl i32 %i.agd, 8
  store i32 %i.agf, ptr %i.agc, align 4, !tbaa !3
  %i.agg = getelementptr inbounds nuw [4 x i8], ptr %i.adi, i64 %indvars.iv.i214
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 4 ; 2 uses
  %i.agi = load i32, ptr %i.agh, align 4, !tbaa !3 ; 3 uses
  %.not261.i.1 = icmp ult i32 %i.agi, %spec.select263.i
  %i.agj = add i32 %i.agi, 1
  %spec.select263.i.1 = select i1 %.not261.i.1, i32 %spec.select263.i, i32 %i.agj ; 3 uses
  %i.agk = shl i32 %i.agi, 8
  store i32 %i.agk, ptr %i.agh, align 4, !tbaa !3
  %indvars.iv.next.i215.1 = add nuw nsw i64 %indvars.iv.i214, 2 ; 2 uses
  %niter539.next.1 = add i64 %niter539, 2         ; 2 uses
  %niter539.ncmp.1 = icmp eq i64 %niter539.next.1, %unroll_iter538
  br i1 %niter539.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i213, !llvm.loop !122

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i213
  br i1 %lcmp.mod535.not, label %._crit_edge.loopexit.i, label %.lr.ph.i213.epil.preheader

.lr.ph.i213.epil.preheader:                       ; preds = %bb.cy, %._crit_edge.loopexit.i.unr-lcssa
  %indvars.iv.i214.epil.init = phi i64 [ 0, %bb.cy ], [ %indvars.iv.next.i215.1, %._crit_edge.loopexit.i.unr-lcssa ]
  %.0225334.i.epil.init = phi i32 [ 0, %bb.cy ], [ %spec.select263.i.1, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod537)
  %i.agl = getelementptr inbounds nuw [4 x i8], ptr %i.adi, i64 %indvars.iv.i214.epil.init ; 2 uses
  %i.agm = load i32, ptr %i.agl, align 4, !tbaa !3 ; 3 uses
  %.not261.i.epil = icmp ult i32 %i.agm, %.0225334.i.epil.init
  %i.agn = add i32 %i.agm, 1
  %spec.select263.i.epil = select i1 %.not261.i.epil, i32 %.0225334.i.epil.init, i32 %i.agn
  %i.ago = shl i32 %i.agm, 8
  store i32 %i.ago, ptr %i.agl, align 4, !tbaa !3
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i213.epil.preheader
  %spec.select263.i.lcssa = phi i32 [ %spec.select263.i.1, %._crit_edge.loopexit.i.unr-lcssa ], [ %spec.select263.i.epil, %.lr.ph.i213.epil.preheader ]
  %.pre396.i = load i32, ptr %i.ap, align 8, !tbaa !77
  br label %._crit_edge.i217

._crit_edge.i217:                                 ; preds = %bb.cy, %._crit_edge.loopexit.i
  %i.agp = phi i32 [ %i.agb, %bb.cy ], [ %.pre396.i, %._crit_edge.loopexit.i ] ; 2 uses
  %.0225.lcssa.i = phi i32 [ 0, %bb.cy ], [ %spec.select263.i.lcssa, %._crit_edge.loopexit.i ] ; 3 uses
  %i.agq = icmp ugt i32 %.0225.lcssa.i, 1         ; 2 uses
  %i.agr = icmp sgt i32 %i.agp, 31
  br i1 %i.agr, label %bb.cz, label %VP8LPutBits.exit270.i

bb.cz:                                            ; preds = %._crit_edge.i217
  call void @VP8LPutBitsFlushBits(ptr noundef nonnull %i.n) #7
  %.pre.i269.i = load i32, ptr %i.ap, align 8, !tbaa !77
  br label %VP8LPutBits.exit270.i

VP8LPutBits.exit270.i:                            ; preds = %bb.cz, %._crit_edge.i217
  %i.ags = phi i32 [ %.pre.i269.i, %bb.cz ], [ %i.agp, %._crit_edge.i217 ] ; 2 uses
  %i.agt = zext i1 %i.agq to i64
  %i.agu = zext nneg i32 %i.ags to i64
  %i.agv = shl nuw i64 %i.agt, %i.agu
  %i.agw = load i64, ptr %i.n, align 8, !tbaa !87
  %i.agx = or i64 %i.agv, %i.agw
  store i64 %i.agx, ptr %i.n, align 8, !tbaa !87
  %i.agy = add nsw i32 %i.ags, 1
  store i32 %i.agy, ptr %i.ap, align 8, !tbaa !77
  br i1 %i.agq, label %bb.da, label %bb.dc

bb.da:                                            ; preds = %VP8LPutBits.exit270.i
  call void @VP8LOptimizeSampling(ptr noundef %i.adi, i32 noundef %i.acw, i32 noundef %i.ah, i32 noundef %i.acx, i32 noundef 9, ptr noundef nonnull %i.b) #7
  %i.agz = load i32, ptr %i.b, align 4, !tbaa !3  ; 2 uses
  %i.aha = add nsw i32 %i.agz, -2
  %i.ahb = load i32, ptr %i.ap, align 8, !tbaa !77 ; 2 uses
  %i.ahc = icmp sgt i32 %i.ahb, 31
  br i1 %i.ahc, label %bb.db, label %VP8LPutBits.exit272.i

bb.db:                                            ; preds = %bb.da
  call void @VP8LPutBitsFlushBits(ptr noundef nonnull %i.n) #7
  %.pre.i271.i = load i32, ptr %i.ap, align 8, !tbaa !77
  %.pre397.i = load i32, ptr %i.b, align 4, !tbaa !3
  br label %VP8LPutBits.exit272.i

VP8LPutBits.exit272.i:                            ; preds = %bb.db, %bb.da
  %i.ahd = phi i32 [ %.pre397.i, %bb.db ], [ %i.agz, %bb.da ] ; 3 uses
  %i.ahe = phi i32 [ %.pre.i271.i, %bb.db ], [ %i.ahb, %bb.da ] ; 2 uses
  %i.ahf = zext i32 %i.aha to i64
  %i.ahg = zext nneg i32 %i.ahe to i64
  %i.ahh = shl i64 %i.ahf, %i.ahg
  %i.ahi = load i64, ptr %i.n, align 8, !tbaa !87
  %i.ahj = or i64 %i.ahh, %i.ahi
  store i64 %i.ahj, ptr %i.n, align 8, !tbaa !87
  %i.ahk = add nsw i32 %i.ahe, 3
  store i32 %i.ahk, ptr %i.ap, align 8, !tbaa !77
  %i.ahl = sdiv i32 %i.aey, 2                     ; 2 uses
  %i.ahm = shl nuw i32 1, %i.ahd                  ; 2 uses
  %i.ahn = add i32 %i.ahm, %i.acz
  %i.aho = lshr i32 %i.ahn, %i.ahd
  %i.ahp = add i32 %i.ahm, %i.bv
  %i.ahq = lshr i32 %i.ahp, %i.ahd
  %i.ahr = call fastcc i32 @EncodeImageNoHuffman(ptr noundef nonnull %i.n, ptr noundef %i.adi, ptr noundef nonnull %4, ptr noundef nonnull %i.ca, i32 noundef %i.aho, i32 noundef %i.ahq, i32 noundef %i.z, i32 noundef range(i32 0, 2) %i.ad, ptr noundef %i.l, i32 noundef %i.ahl, ptr noundef nonnull %i.g)
  %.not258.i = icmp eq i32 %i.ahr, 0
  br i1 %.not258.i, label %.thread274.i, label %.thread412.i

.thread412.i:                                     ; preds = %VP8LPutBits.exit272.i
  %i.ahs = sub nsw i32 %i.aey, %i.ahl
  br label %.lr.ph339.preheader.i

bb.dc:                                            ; preds = %VP8LPutBits.exit270.i
  %.not356.i = icmp eq i32 %.0225.lcssa.i, 0
  br i1 %.not356.i, label %._crit_edge340.i, label %.lr.ph339.preheader.i

.lr.ph339.preheader.i:                            ; preds = %bb.dc, %.thread412.i
  %.1203415.i = phi i32 [ %i.ahs, %.thread412.i ], [ %i.aey, %bb.dc ]
  %i.aht = mul i32 %.0225.lcssa.i, 5              ; 2 uses
  %wide.trip.count380.i = zext i32 %i.aht to i64  ; 4 uses
  %min.iters.check = icmp ult i32 %i.aht, 9
  br i1 %min.iters.check, label %.lr.ph339.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph339.preheader.i
  %n.mod.vf = and i64 %wide.trip.count380.i, 7    ; 2 uses
  %7 = icmp eq i64 %n.mod.vf, 0
  %8 = select i1 %7, i64 8, i64 %n.mod.vf
  %n.vec = sub nsw i64 %wide.trip.count380.i, %8  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %32, %vector.body ]
  %vec.phi453 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %33, %vector.body ]
  %9 = getelementptr inbounds nuw [24 x i8], ptr %i.aff, i64 %index
  %i.ahu = getelementptr inbounds nuw [24 x i8], ptr %i.aff, i64 %index
  %10 = getelementptr inbounds nuw i8, ptr %i.ahu, i64 24
  %11 = getelementptr inbounds nuw [24 x i8], ptr %i.aff, i64 %index
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ahv = getelementptr inbounds nuw [24 x i8], ptr %i.aff, i64 %index
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 72
  %13 = getelementptr inbounds nuw [24 x i8], ptr %i.aff, i64 %index
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 96
  %i.ahx = getelementptr inbounds nuw [24 x i8], ptr %i.aff, i64 %index
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 120
  %15 = getelementptr inbounds nuw [24 x i8], ptr %i.aff, i64 %index
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 144
  %i.ahz = getelementptr inbounds nuw [24 x i8], ptr %i.aff, i64 %index
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 168
  %17 = load i32, ptr %9, align 8, !tbaa !123
  %18 = load i32, ptr %10, align 8, !tbaa !123
  %19 = load i32, ptr %12, align 8, !tbaa !123
  %20 = load i32, ptr %i.ahw, align 8, !tbaa !123
  %21 = insertelement <4 x i32> poison, i32 %17, i64 0
  %22 = insertelement <4 x i32> %21, i32 %18, i64 1
  %23 = insertelement <4 x i32> %22, i32 %19, i64 2
  %24 = insertelement <4 x i32> %23, i32 %20, i64 3
  %25 = load i32, ptr %14, align 8, !tbaa !123
  %26 = load i32, ptr %i.ahy, align 8, !tbaa !123
  %27 = load i32, ptr %16, align 8, !tbaa !123
  %i.aib = load i32, ptr %i.aia, align 8, !tbaa !123
  %28 = insertelement <4 x i32> poison, i32 %25, i64 0
  %29 = insertelement <4 x i32> %28, i32 %26, i64 1
  %30 = insertelement <4 x i32> %29, i32 %27, i64 2
  %31 = insertelement <4 x i32> %30, i32 %i.aib, i64 3
  %32 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %24) ; 2 uses
  %33 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi453, <4 x i32> %31) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aic = icmp eq i64 %index.next, %n.vec
  br i1 %i.aic, label %middle.block, label %vector.body, !llvm.loop !126

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %32, <4 x i32> %33)
  %34 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax)
  br label %.lr.ph339.i.preheader

.lr.ph339.i.preheader:                            ; preds = %.lr.ph339.preheader.i, %middle.block
  %indvars.iv377.i.ph = phi i64 [ 0, %.lr.ph339.preheader.i ], [ %n.vec, %middle.block ]
  %.0199337.i.ph = phi i32 [ 0, %.lr.ph339.preheader.i ], [ %34, %middle.block ]
  br label %.lr.ph339.i

.lr.ph339.i:                                      ; preds = %.lr.ph339.i.preheader, %.lr.ph339.i
  %indvars.iv377.i = phi i64 [ %indvars.iv.next378.i, %.lr.ph339.i ], [ %indvars.iv377.i.ph, %.lr.ph339.i.preheader ] ; 2 uses
  %.0199337.i.a = phi i32 [ %spec.select264.i.a, %.lr.ph339.i ], [ %.0199337.i.ph, %.lr.ph339.i.preheader ]
  %i.aid = getelementptr inbounds nuw [24 x i8], ptr %i.aff, i64 %indvars.iv377.i
  %i.aie = load i32, ptr %i.aid, align 8, !tbaa !123
  %spec.select264.i.a = call i32 @llvm.smax.i32(i32 %.0199337.i.a, i32 %i.aie) ; 2 uses
  %indvars.iv.next378.i = add nuw nsw i64 %indvars.iv377.i, 1 ; 2 uses
  %exitcond381.not.i = icmp eq i64 %indvars.iv.next378.i, %wide.trip.count380.i
  br i1 %exitcond381.not.i, label %._crit_edge340.i.thread, label %.lr.ph339.i, !llvm.loop !127

._crit_edge340.i:                                 ; preds = %bb.dc
  %35 = call ptr @WebPSafeMalloc(i64 noundef 0, i64 noundef 2) #7 ; 2 uses
  %.not259.i = icmp eq ptr %35, null
  br i1 %.not259.i, label %.thread274.sink.split.i, label %._crit_edge345.i

._crit_edge340.i.thread:                          ; preds = %.lr.ph339.i
  %i.aif = zext nneg i32 %spec.select264.i.a to i64
  %i.aig = call ptr @WebPSafeMalloc(i64 noundef %i.aif, i64 noundef 2) #7 ; 3 uses
  %.not259.i248 = icmp eq ptr %i.aig, null
  br i1 %.not259.i248, label %.thread274.sink.split.i, label %.lr.ph344.i

.lr.ph344.i:                                      ; preds = %._crit_edge340.i.thread, %ClearHuffmanTreeIfOnlyOneSymbol.exit.i
  %indvars.iv382.i = phi i64 [ %indvars.iv.next383.i, %ClearHuffmanTreeIfOnlyOneSymbol.exit.i ], [ 0, %._crit_edge340.i.thread ] ; 2 uses
  %i.aih = getelementptr inbounds nuw [24 x i8], ptr %i.aff, i64 %indvars.iv382.i ; 5 uses
  call fastcc void @StoreHuffmanCode(ptr noundef nonnull %i.n, ptr noundef %i.adg, ptr noundef %i.aig, ptr noundef %i.aih)
  %i.aii = load i32, ptr %i.aih, align 8, !tbaa !123 ; 2 uses
  %i.aij = icmp sgt i32 %i.aii, 0
  br i1 %i.aij, label %.lr.ph.i.i218, label %ClearHuffmanTreeIfOnlyOneSymbol.exit.i

.lr.ph.i.i218:                                    ; preds = %.lr.ph344.i
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aih, i64 8 ; 2 uses
  %i.ail = load ptr, ptr %i.aik, align 8, !tbaa !128
  %wide.trip.count.i.i = zext nneg i32 %i.aii to i64
  br label %bb.dd

.preheader.i.i220:                                ; preds = %bb.df
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aih, i64 16
  br label %bb.dg

bb.dd:                                            ; preds = %bb.df, %.lr.ph.i.i218
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i218 ], [ %indvars.iv.next.i.i, %bb.df ] ; 2 uses
  %.019.i.i = phi i32 [ 0, %.lr.ph.i.i218 ], [ %.1.i.i, %bb.df ] ; 2 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %i.ail, i64 %indvars.iv.i.i
  %i.aio = load i8, ptr %i.ain, align 1, !tbaa !41
  %.not.i.i219 = icmp eq i8 %i.aio, 0
  br i1 %.not.i.i219, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %.not16.i.i = icmp eq i32 %.019.i.i, 0
  br i1 %.not16.i.i, label %bb.df, label %ClearHuffmanTreeIfOnlyOneSymbol.exit.i

bb.df:                                            ; preds = %bb.de, %bb.dd
  %.1.i.i = phi i32 [ 1, %bb.de ], [ %.019.i.i, %bb.dd ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.preheader.i.i220, label %bb.dd, !llvm.loop !129

bb.dg:                                            ; preds = %bb.dg, %.preheader.i.i220
  %indvars.iv24.i.i = phi i64 [ 0, %.preheader.i.i220 ], [ %indvars.iv.next25.i.i, %bb.dg ] ; 3 uses
  %i.aip = load ptr, ptr %i.aik, align 8, !tbaa !128
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aip, i64 %indvars.iv24.i.i
  store i8 0, ptr %i.aiq, align 1, !tbaa !41
  %i.air = load ptr, ptr %i.aim, align 8, !tbaa !130
  %i.ais = getelementptr inbounds nuw [2 x i8], ptr %i.air, i64 %indvars.iv24.i.i
  store i16 0, ptr %i.ais, align 2, !tbaa !102
  %indvars.iv.next25.i.i = add nuw nsw i64 %indvars.iv24.i.i, 1 ; 2 uses
  %i.ait = load i32, ptr %i.aih, align 8, !tbaa !123
  %i.aiu = sext i32 %i.ait to i64
  %i.aiv = icmp slt i64 %indvars.iv.next25.i.i, %i.aiu
  br i1 %i.aiv, label %bb.dg, label %ClearHuffmanTreeIfOnlyOneSymbol.exit.i, !llvm.loop !131

ClearHuffmanTreeIfOnlyOneSymbol.exit.i:           ; preds = %bb.de, %bb.dg, %.lr.ph344.i
  %indvars.iv.next383.i = add nuw nsw i64 %indvars.iv382.i, 1 ; 2 uses
  %exitcond387.not.i = icmp eq i64 %indvars.iv.next383.i, %wide.trip.count380.i
  br i1 %exitcond387.not.i, label %._crit_edge345.i, label %.lr.ph344.i, !llvm.loop !132

._crit_edge345.i:                                 ; preds = %ClearHuffmanTreeIfOnlyOneSymbol.exit.i, %._crit_edge340.i
  %.1203416.i251256 = phi i32 [ %i.aey, %._crit_edge340.i ], [ %.1203415.i, %ClearHuffmanTreeIfOnlyOneSymbol.exit.i ]
  %i.aiw = phi ptr [ %35, %._crit_edge340.i ], [ %i.aig, %ClearHuffmanTreeIfOnlyOneSymbol.exit.i ] ; 2 uses
  %i.aix = load ptr, ptr %i.ai, align 8, !tbaa !74
  %i.aiy = load ptr, ptr %i.ak, align 8, !tbaa !76
  %i.aiz = ptrtoint ptr %i.aix to i64
  %i.aja = ptrtoint ptr %i.aiy to i64
  %i.ajb = load i32, ptr %i.ap, align 8, !tbaa !77
  %i.ajc = add nsw i32 %i.ajb, 7
  %i.ajd = ashr i32 %i.ajc, 3
  %i.aje = zext i32 %i.ajd to i64
  %i.ajf = add i64 %i.au, %i.aja
  %i.ajg = sub i64 %i.aiz, %i.ajf
  %i.ajh = add i64 %i.ajg, %i.aje                 ; 2 uses
  %i.aji = trunc i64 %i.ajh to i32
  %i.ajj = load i32, ptr %i.b, align 4, !tbaa !3
  %i.ajk = call fastcc i32 @StoreImageToBitMask(ptr noundef nonnull %i.n, i32 noundef %i.acw, i32 noundef %i.ajj, ptr noundef nonnull %i.aez, ptr noundef %i.adi, ptr noundef %i.aff, ptr noundef %i.l)
  %.not260.i = icmp eq i32 %i.ajk, 0
  br i1 %.not260.i, label %.thread274.i, label %bb.dh

bb.dh:                                            ; preds = %._crit_edge345.i
  %i.ajl = load ptr, ptr %i.ai, align 8, !tbaa !74
  %i.ajm = load ptr, ptr %i.ak, align 8, !tbaa !76
  %i.ajn = ptrtoint ptr %i.ajl to i64
  %i.ajo = ptrtoint ptr %i.ajm to i64
  %i.ajp = sub i64 %i.ajn, %i.ajo                 ; 2 uses
  %i.ajq = load i32, ptr %i.ap, align 8, !tbaa !77
  %i.ajr = add nsw i32 %i.ajq, 7
  %i.ajs = ashr i32 %i.ajr, 3
  %i.ajt = sext i32 %i.ajs to i64
  %i.aju = add nsw i64 %i.ajp, %i.ajt             ; 2 uses
  %i.ajv = icmp ult i64 %i.aju, %.1207347.i
  br i1 %i.ajv, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  store i32 %i.aer, ptr %i.bf, align 8, !tbaa !3
  %i.ajw = load i32, ptr %i.ap, align 8, !tbaa !77
  %i.ajx = add nsw i32 %i.ajw, 7
  %i.ajy = ashr i32 %i.ajx, 3
  %i.ajz = add i64 %i.ajh, %i.au
  %i.aka = sub i64 %i.ajp, %i.ajz
  %i.akb = trunc i64 %i.aka to i32
  %i.akc = add i32 %i.ajy, %i.akb
  call void @VP8LBitWriterSwap(ptr noundef nonnull %i.n, ptr noundef nonnull %3) #7
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %.6233 = phi i32 [ %i.aji, %bb.di ], [ %.5232, %bb.dh ] ; 2 uses
  %.6 = phi i32 [ %i.akc, %bb.di ], [ %.5, %bb.dh ] ; 2 uses
  %.2208.i = phi i64 [ %i.aju, %bb.di ], [ %.1207347.i, %bb.dh ] ; 2 uses
  call void @WebPSafeFree(ptr noundef nonnull %i.aiw) #7
  %i.akd = getelementptr inbounds nuw i8, ptr %i.aff, i64 16
  %i.ake = load ptr, ptr %i.akd, align 8, !tbaa !130
  call void @WebPSafeFree(ptr noundef %i.ake) #7
  call void @WebPSafeFree(ptr noundef nonnull %i.aff) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %i.akf = load i32, ptr %i.aek, align 4, !tbaa !46
  %.not255.i = icmp ne i32 %i.akf, 0
  %i.akg = and i1 %i.aeo, %.not255.i
  br i1 %i.akg, label %bb.cn, label %.loopexit.i, !llvm.loop !133

.thread274.sink.split.i:                          ; preds = %._crit_edge340.i.thread, %._crit_edge340.i, %bb.cr, %bb.cq, %bb.co
  %.3230.ph.ph.i = phi ptr [ null, %bb.co ], [ null, %bb.cq ], [ %i.aff, %bb.cr ], [ %i.aff, %._crit_edge340.i ], [ %i.aff, %._crit_edge340.i.thread ]
  %.2217.ph.ph.i = phi ptr [ %i.aeu, %bb.co ], [ %i.aeu, %bb.cq ], [ %i.aeu, %bb.cr ], [ null, %._crit_edge340.i ], [ null, %._crit_edge340.i.thread ]
  %.2211.ph.ph.i = phi ptr [ %i.aet, %bb.co ], [ %i.aet, %bb.cq ], [ %i.aet, %bb.cr ], [ null, %._crit_edge340.i ], [ null, %._crit_edge340.i.thread ]
  %i.akh = call i32 @WebPEncodingSetError(ptr noundef %i.l, i32 noundef 1) #7 ; 0 uses
  br label %.thread274.i

.thread274.i:                                     ; preds = %._crit_edge345.i, %VP8LPutBits.exit272.i, %bb.cp, %.thread274.sink.split.i
  %.2235.ph.i = phi ptr [ null, %.thread274.sink.split.i ], [ %i.aiw, %._crit_edge345.i ], [ null, %bb.cp ], [ null, %VP8LPutBits.exit272.i ]
  %.3230.ph.i = phi ptr [ %.3230.ph.ph.i, %.thread274.sink.split.i ], [ %i.aff, %._crit_edge345.i ], [ null, %bb.cp ], [ %i.aff, %VP8LPutBits.exit272.i ]
  %.2217.ph.i = phi ptr [ %.2217.ph.ph.i, %.thread274.sink.split.i ], [ null, %._crit_edge345.i ], [ %i.aeu, %bb.cp ], [ null, %VP8LPutBits.exit272.i ]
  %.2211.ph.i = phi ptr [ %.2211.ph.ph.i, %.thread274.sink.split.i ], [ null, %._crit_edge345.i ], [ %i.aet, %bb.cp ], [ null, %VP8LPutBits.exit272.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %.loopexit317.i

bb.dk:                                            ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %.loopexit.i

.loopexit317.i:                                   ; preds = %bb.cl, %.thread274.i
  %.8235 = phi i32 [ %.5232, %.thread274.i ], [ %.4231, %bb.cl ]
  %.8 = phi i32 [ %.5, %.thread274.i ], [ %.4, %bb.cl ]
  %.4237.i = phi ptr [ %.2235.ph.i, %.thread274.i ], [ null, %bb.cl ]
  %.5232.i = phi ptr [ %.3230.ph.i, %.thread274.i ], [ null, %bb.cl ]
  %.4219.i = phi ptr [ %.2217.ph.i, %.thread274.i ], [ null, %bb.cl ]
  %.4213.i = phi ptr [ %.2211.ph.i, %.thread274.i ], [ null, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.dl

.loopexit.i:                                      ; preds = %bb.dj, %bb.dk
  %.7234 = phi i32 [ %.5232, %bb.dk ], [ %.6233, %bb.dj ] ; 2 uses
  %.7 = phi i32 [ %.5, %bb.dk ], [ %.6, %bb.dj ]  ; 2 uses
  %.1207325.i = phi i64 [ %.1207347.i, %bb.dk ], [ %.2208.i, %bb.dj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %indvars.iv.next392.i = add nuw nsw i64 %indvars.iv391.i, 1 ; 2 uses
  %i.aki = load i32, ptr %i.adu, align 4, !tbaa !47 ; 2 uses
  %i.akj = sext i32 %i.aki to i64
  %i.akk = icmp slt i64 %indvars.iv.next392.i, %i.akj
  br i1 %i.akk, label %bb.cl, label %._crit_edge354.i, !llvm.loop !134

._crit_edge354.i:                                 ; preds = %.loopexit.i, %bb.ck
  %.2229 = phi i32 [ %.0227299, %bb.ck ], [ %.7234, %.loopexit.i ]
  %.2226 = phi i32 [ %.0224300, %bb.ck ], [ %.7, %.loopexit.i ]
  call void @VP8LBitWriterSwap(ptr noundef nonnull %i.n, ptr noundef nonnull %3) #7
  %i.akl = add i32 %i.adf, %.2
  %i.akm = call i32 @WebPReportProgress(ptr noundef %i.l, i32 noundef %i.akl, ptr noundef nonnull %i.g) #7 ; 0 uses
  br label %bb.dl

bb.dl:                                            ; preds = %._crit_edge354.i, %.loopexit317.i, %bb.cj, %bb.cf, %bb.ce, %bb.cb
  %.3230 = phi i32 [ %.0227299, %bb.cb ], [ %.0227299, %bb.ce ], [ %.0227299, %bb.cf ], [ %.0227299, %bb.cj ], [ %.8235, %.loopexit317.i ], [ %.2229, %._crit_edge354.i ] ; 2 uses
  %.3 = phi i32 [ %.0224300, %bb.cb ], [ %.0224300, %bb.ce ], [ %.0224300, %bb.cf ], [ %.0224300, %bb.cj ], [ %.8, %.loopexit317.i ], [ %.2226, %._crit_edge354.i ] ; 2 uses
  %.5238.i = phi ptr [ null, %bb.cb ], [ null, %bb.ce ], [ null, %bb.cf ], [ null, %bb.cj ], [ %.4237.i, %.loopexit317.i ], [ null, %._crit_edge354.i ]
  %.6.i = phi ptr [ null, %bb.cb ], [ null, %bb.ce ], [ null, %bb.cf ], [ null, %bb.cj ], [ %.5232.i, %.loopexit317.i ], [ null, %._crit_edge354.i ] ; 3 uses
  %.5220.i = phi ptr [ null, %bb.cb ], [ null, %bb.ce ], [ null, %bb.cf ], [ null, %bb.cj ], [ %.4219.i, %.loopexit317.i ], [ null, %._crit_edge354.i ]
  %.5214.i = phi ptr [ null, %bb.cb ], [ null, %bb.ce ], [ null, %bb.cf ], [ null, %bb.cj ], [ %.4213.i, %.loopexit317.i ], [ null, %._crit_edge354.i ]
  call void @WebPSafeFree(ptr noundef %.5238.i) #7
  call void @WebPSafeFree(ptr noundef %i.adg) #7
  call void @VP8LFreeHistogramSet(ptr noundef %.5214.i) #7
  call void @VP8LFreeHistogram(ptr noundef %.5220.i) #7
  call void @VP8LHashChainClear(ptr noundef nonnull %4) #7
  %.not262.i = icmp eq ptr %.6.i, null
  br i1 %.not262.i, label %EncodeImageInternal.exit, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.akn = getelementptr inbounds nuw i8, ptr %.6.i, i64 16
  %i.ako = load ptr, ptr %i.akn, align 8, !tbaa !130
  call void @WebPSafeFree(ptr noundef %i.ako) #7
  call void @WebPSafeFree(ptr noundef nonnull %.6.i) #7
  br label %EncodeImageInternal.exit

EncodeImageInternal.exit:                         ; preds = %bb.dl, %bb.dm
  call void @WebPSafeFree(ptr noundef %i.adi) #7
  call void @VP8LBitWriterWipeOut(ptr noundef nonnull %3) #7
  %i.akp = load i32, ptr %i.cb, align 8, !tbaa !73
  %.not266 = icmp eq i32 %i.akp, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  br i1 %.not266, label %bb.dn, label %MakeInputImageCopy.exit.thread259

bb.dn:                                            ; preds = %EncodeImageInternal.exit
  %i.akq = load ptr, ptr %i.ai, align 8, !tbaa !74
  %i.akr = load ptr, ptr %i.ak, align 8, !tbaa !76
  %i.aks = ptrtoint ptr %i.akq to i64
  %i.akt = ptrtoint ptr %i.akr to i64
  %i.aku = sub i64 %i.aks, %i.akt
  %i.akv = load i32, ptr %i.ap, align 8, !tbaa !77
  %i.akw = add nsw i32 %i.akv, 7
  %i.akx = ashr i32 %i.akw, 3
  %i.aky = sext i32 %i.akx to i64
  %i.akz = add nsw i64 %i.aku, %i.aky             ; 4 uses
  %i.ala = icmp ult i64 %i.akz, %.0158302
  br i1 %i.ala, label %bb.do, label %bb.dw

bb.do:                                            ; preds = %bb.dn
  call void @VP8LBitWriterSwap(ptr noundef nonnull %i.n, ptr noundef nonnull %6) #7
  br i1 %.not187, label %bb.dw, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.alb = load i32, ptr %i.bd, align 4, !tbaa !82
  %.not188 = icmp ne i32 %i.alb, 0
  %spec.store.select = zext i1 %.not188 to i32    ; 3 uses
  store i32 %spec.store.select, ptr %i.cc, align 4
  %i.alc = load i32, ptr %i.be, align 4, !tbaa !83
  %.not189 = icmp eq i32 %i.alc, 0
  br i1 %.not189, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ald = or disjoint i32 %spec.store.select, 2  ; 2 uses
  store i32 %i.ald, ptr %i.cc, align 4, !tbaa !135
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %i.ale = phi i32 [ %i.ald, %bb.dq ], [ %spec.store.select, %bb.dp ] ; 2 uses
  %i.alf = load i32, ptr %i.bc, align 8, !tbaa !81
  %.not190 = icmp eq i32 %i.alf, 0
  br i1 %.not190, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.alg = or i32 %i.ale, 4                       ; 2 uses
  store i32 %i.alg, ptr %i.cc, align 4, !tbaa !135
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %i.alh = phi i32 [ %i.alg, %bb.ds ], [ %i.ale, %bb.dr ]
  %i.ali = load i32, ptr %i.bb, align 8, !tbaa !80
  %.not191 = icmp eq i32 %i.ali, 0
  br i1 %.not191, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.alj = or i32 %i.alh, 8
  store i32 %i.alj, ptr %i.cc, align 4, !tbaa !135
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.alk = load i32, ptr %i.bz, align 4, !tbaa !30
  store i32 %i.alk, ptr %i.cd, align 4, !tbaa !137
  %i.all = load i32, ptr %i.h, align 4, !tbaa !3
  store i32 %i.all, ptr %i.ce, align 4, !tbaa !138
  %i.alm = load i32, ptr %i.i, align 4, !tbaa !3
  store i32 %i.alm, ptr %i.cf, align 4, !tbaa !139
  %i.aln = load i32, ptr %i.bf, align 8, !tbaa !84
  store i32 %i.aln, ptr %i.cg, align 4, !tbaa !140
  %i.alo = load i32, ptr %i.bn, align 4, !tbaa !26
  store i32 %i.alo, ptr %i.ch, align 4, !tbaa !141
  %i.alp = sub i64 %i.akz, %i.au
  %i.alq = trunc i64 %i.alp to i32
  store i32 %i.alq, ptr %i.ci, align 4, !tbaa !142
  store i32 %.3230, ptr %i.cj, align 4, !tbaa !143
  store i32 %.3, ptr %i.ck, align 4, !tbaa !144
  br label %bb.dw

bb.dw:                                            ; preds = %bb.do, %bb.dv, %bb.dn
  %.1159 = phi i64 [ %i.akz, %bb.dv ], [ %i.akz, %bb.do ], [ %.0158302, %bb.dn ]
  br i1 %i.aw, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  call void @VP8LBitWriterReset(ptr noundef nonnull %5, ptr noundef nonnull %i.n) #7
  br label %bb.dy

MakeInputImageCopy.exit.thread259.sink.split:     ; preds = %bb.k, %bb.m
  %.sink = phi ptr [ %i.dl, %bb.m ], [ %i.l, %bb.k ]
  %i.alr = call i32 @WebPEncodingSetError(ptr noundef %.sink, i32 noundef 1) #7 ; 0 uses
  br label %MakeInputImageCopy.exit.thread259

MakeInputImageCopy.exit.thread259:                ; preds = %EncodeImageInternal.exit, %ApplyCrossColorFilter.exit, %ApplyPredictFilter.exit, %EncodePalette.exit, %bb.i, %bb.az, %bb.r, %ApplyPalette.exit.i, %ClampBits.exit55.i, %bb.bt, %MakeInputImageCopy.exit.thread259.sink.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !145

._crit_edge:                                      ; preds = %bb.dy, %bb.e
  call void @VP8LBitWriterSwap(ptr noundef nonnull %6, ptr noundef nonnull %i.n) #7
  br label %bb.dz

bb.dz:                                            ; preds = %MakeInputImageCopy.exit.thread259, %._crit_edge, %bb.d
  call void @VP8LBitWriterWipeOut(ptr noundef nonnull %6) #7
  %i.als = load ptr, ptr %i.k, align 8, !tbaa !56
  %i.alt = getelementptr inbounds nuw i8, ptr %i.als, i64 136
  %i.alu = load i32, ptr %i.alt, align 8, !tbaa !73
  %i.alv = icmp eq i32 %i.alu, 0
  %i.alw = zext i1 %i.alv to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  ret i32 %i.alw
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @VP8LBitWriterSwap(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @VP8LBitWriterWipeOut(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden i32 @VP8LEncodeImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
end_hunk_0
begin_hunk_1_@StoreImageToBitMask:bb.a
  %i.fg = load i64, ptr %0, align 8, !tbaa !87
  %i.fh = or i64 %i.ff, %i.fg
  store i64 %i.fh, ptr %0, align 8, !tbaa !87
  %i.fi = add nsw i32 %i.fc, %i.ey
  store i32 %i.fi, ptr %i.m, align 8, !tbaa !77
  br label %WriteHuffmanCodeWithExtraBits.exit

WriteHuffmanCodeWithExtraBits.exit:               ; preds = %VP8LPrefixEncode.exit, %bb.z
  %i.fj = icmp slt i32 %.val91, 512
  br i1 %i.fj, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %WriteHuffmanCodeWithExtraBits.exit
  %i.fk = sext i32 %.val91 to i64                 ; 2 uses
  %i.fl = getelementptr inbounds [2 x i8], ptr @kPrefixEncodeCode, i64 %i.fk ; 2 uses
  %.sroa.0.0.copyload.i99 = load i8, ptr %i.fl, align 2, !tbaa !41
  %.sroa.4.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  %.sroa.4.0.copyload.i101 = load i8, ptr %.sroa.4.0..sroa_idx.i100, align 1, !tbaa !41
  %i.fm = sext i8 %.sroa.0.0.copyload.i99 to i32
  %i.fn = sext i8 %.sroa.4.0.copyload.i101 to i32
  %i.fo = getelementptr inbounds i8, ptr @kPrefixEncodeExtraBitsValue, i64 %i.fk
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !41
  %i.fq = zext i8 %i.fp to i32
  br label %VP8LPrefixEncode.exit102

bb.ab:                                            ; preds = %WriteHuffmanCodeWithExtraBits.exit
  %i.fr = add nsw i32 %.val91, -1                 ; 3 uses
  %i.fs = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 range(i32 -2147483648, 2147483647) %i.fr, i1 true) ; 3 uses
  %i.ft = sub nuw nsw i32 30, %i.fs               ; 2 uses
  %i.fu = lshr i32 %i.fr, %i.ft
  %i.fv = and i32 %i.fu, 1
  %i.fw = lshr i32 1073741823, %i.fs
  %i.fx = and i32 %i.fw, %i.fr
  %i.fy = shl nuw nsw i32 %i.fs, 1
  %i.fz = or disjoint i32 %i.fv, %i.fy
  %i.ga = xor i32 %i.fz, 62
  br label %VP8LPrefixEncode.exit102

VP8LPrefixEncode.exit102:                         ; preds = %bb.aa, %bb.ab
  %.1116 = phi i32 [ %i.fq, %bb.aa ], [ %i.fx, %bb.ab ]
  %.1114 = phi i32 [ %i.fn, %bb.aa ], [ %i.ft, %bb.ab ] ; 2 uses
  %.1112 = phi i32 [ %i.fm, %bb.aa ], [ %i.ga, %bb.ab ]
  %i.gb = getelementptr i8, ptr %.172, i64 104
  %.val84 = load ptr, ptr %i.gb, align 8, !tbaa !128
  %i.gc = getelementptr i8, ptr %.172, i64 112
  %.val85 = load ptr, ptr %i.gc, align 8, !tbaa !130
  %i.gd = sext i32 %.1112 to i64                  ; 2 uses
  %i.ge = getelementptr inbounds i8, ptr %.val84, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !41  ; 2 uses
  %i.gg = zext i8 %i.gf to i32
  %i.gh = getelementptr inbounds [2 x i8], ptr %.val85, i64 %i.gd
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !102
  %.not.i103 = icmp eq i8 %i.gf, 0
  br i1 %.not.i103, label %WriteHuffmanCode.exit105, label %bb.ac

bb.ac:                                            ; preds = %VP8LPrefixEncode.exit102
  %i.gj = load i32, ptr %i.m, align 8, !tbaa !77  ; 2 uses
  %i.gk = icmp sgt i32 %i.gj, 31
  br i1 %i.gk, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0) #7
  %.pre.i.i104 = load i32, ptr %i.m, align 8, !tbaa !77
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.gl = phi i32 [ %.pre.i.i104, %bb.ad ], [ %i.gj, %bb.ac ] ; 2 uses
  %i.gm = zext i16 %i.gi to i64
  %i.gn = zext nneg i32 %i.gl to i64
  %i.go = shl i64 %i.gm, %i.gn
  %i.gp = load i64, ptr %0, align 8, !tbaa !87
  %i.gq = or i64 %i.go, %i.gp
  store i64 %i.gq, ptr %0, align 8, !tbaa !87
  %i.gr = add nsw i32 %i.gl, %i.gg
  store i32 %i.gr, ptr %i.m, align 8, !tbaa !77
  br label %WriteHuffmanCode.exit105

WriteHuffmanCode.exit105:                         ; preds = %VP8LPrefixEncode.exit102, %bb.ae
  %i.gs = icmp sgt i32 %.1114, 0
  br i1 %i.gs, label %bb.af, label %WriteHuffmanCode.exit97

bb.af:                                            ; preds = %WriteHuffmanCode.exit105
  %i.gt = load i32, ptr %i.m, align 8, !tbaa !77  ; 2 uses
  %i.gu = icmp sgt i32 %i.gt, 31
  br i1 %i.gu, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @VP8LPutBitsFlushBits(ptr noundef nonnull %0) #7
  %.pre.i = load i32, ptr %i.m, align 8, !tbaa !77
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.gv = phi i32 [ %.pre.i, %bb.ag ], [ %i.gt, %bb.af ] ; 2 uses
  %i.gw = zext nneg i32 %.1116 to i64
  %i.gx = zext nneg i32 %i.gv to i64
  %i.gy = shl i64 %i.gw, %i.gx
  %i.gz = load i64, ptr %0, align 8, !tbaa !87
  %i.ha = or i64 %i.gy, %i.gz
  store i64 %i.ha, ptr %0, align 8, !tbaa !87
  %i.hb = add nsw i32 %i.gv, %.1114
  br label %WriteHuffmanCode.exit97.sink.split

WriteHuffmanCode.exit97.sink.split:               ; preds = %bb.t, %bb.ah, %bb.p
  %.sink = phi i32 [ %i.cy, %bb.p ], [ %i.hb, %bb.ah ], [ %i.dq, %bb.t ]
  store i32 %.sink, ptr %i.m, align 8, !tbaa !77
  br label %WriteHuffmanCode.exit97

WriteHuffmanCode.exit97:                          ; preds = %WriteHuffmanCode.exit97.sink.split, %WriteHuffmanCode.exit.2, %WriteHuffmanCode.exit105, %bb.q
  %i.hc = getelementptr i8, ptr %.val132, i64 2
  %.val94 = load i16, ptr %i.hc, align 2, !tbaa !175
  %i.hd = zext i16 %.val94 to i32
  %i.he = add i32 %.063131, %i.hd                 ; 3 uses
  %.not81121 = icmp slt i32 %i.he, %1
  br i1 %.not81121, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %WriteHuffmanCode.exit97, %.lr.ph
  %.1123 = phi i32 [ %i.hf, %.lr.ph ], [ %i.he, %WriteHuffmanCode.exit97 ]
  %.165122 = phi i32 [ %i.hg, %.lr.ph ], [ %.064130, %WriteHuffmanCode.exit97 ]
  %i.hf = sub nsw i32 %.1123, %1                  ; 3 uses
  %i.hg = add nsw i32 %.165122, 1                 ; 2 uses
  %.not81 = icmp slt i32 %i.hf, %1
  br i1 %.not81, label %._crit_edge, label %.lr.ph, !llvm.loop !176

._crit_edge:                                      ; preds = %.lr.ph, %WriteHuffmanCode.exit97
  %.165.lcssa = phi i32 [ %.064130, %WriteHuffmanCode.exit97 ], [ %i.hg, %.lr.ph ]
  %.1.lcssa = phi i32 [ %i.he, %WriteHuffmanCode.exit97 ], [ %i.hf, %.lr.ph ]
  %i.hh = load ptr, ptr %7, align 8, !tbaa !169
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8 ; 3 uses
  store ptr %i.hi, ptr %7, align 8, !tbaa !169
  %i.hj = load ptr, ptr %i.n, align 8, !tbaa !177
  %i.hk = icmp eq ptr %i.hi, %i.hj
  br i1 %i.hk, label %bb.ai, label %VP8LRefsCursorNext.exit

bb.ai:                                            ; preds = %._crit_edge
  call void @VP8LRefsCursorNextBlock(ptr noundef nonnull %7) #7
  %.val.pre = load ptr, ptr %7, align 8, !tbaa !169
  br label %VP8LRefsCursorNext.exit

VP8LRefsCursorNext.exit:                          ; preds = %._crit_edge, %bb.ai
  %.val = phi ptr [ %i.hi, %._crit_edge ], [ %.val.pre, %bb.ai ] ; 2 uses
  %.not117 = icmp eq ptr %.val, null
  br i1 %.not117, label %._crit_edge135, label %bb.b, !llvm.loop !178

._crit_edge135:                                   ; preds = %VP8LRefsCursorNext.exit, %bb.a
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !148
  %.not76 = icmp eq i32 %i.hm, 0
  br i1 %.not76, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge135
  %i.hn = call i32 @WebPEncodingSetError(ptr noundef %6, i32 noundef 1) #7
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge135, %bb.aj
  %.0 = phi i32 [ %i.hn, %bb.aj ], [ 1, %._crit_edge135 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  ret i32 %.0
}

declare void @VP8LFreeHistogramSet(ptr noundef) local_unnamed_addr #2

declare void @VP8LCreateHuffmanTree(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @VP8LCreateCompressedHuffmanTree(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @VP8LRefsCursorInit(ptr dead_on_unwind writable sret(%struct.VP8LRefsCursor) align 8, ptr noundef) local_unnamed_addr #2

declare void @VP8LRefsCursorNextBlock(ptr noundef) local_unnamed_addr #2

declare void @PrepareMapToPalette(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SearchColorNoIdx(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

declare i32 @VP8LResidualImage(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @VP8LColorSpaceTransform(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @VP8LPutBitsFlushBits(ptr noundef) local_unnamed_addr #2

declare ptr @VP8LAllocateHistogram(i32 noundef) local_unnamed_addr #2

declare i32 @VP8LGetHistoImageSymbols(i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @VP8LFreeHistogram(ptr noundef) local_unnamed_addr #2

declare void @VP8LOptimizeSampling(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @VP8LBitWriterFinish(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"", !9, i64 0, !11, i64 8, !12, i64 16, !4, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !13, i64 56, !4, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !4, i64 80, !4, i64 84, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !5, i64 104, !5, i64 1128, !5, i64 2152, !14, i64 2312}
!9 = !{!"p1 _ZTS10WebPConfig", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS11WebPPicture", !10, i64 0}
!12 = !{!"p1 int", !10, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"VP8LHashChain", !12, i64 0, !4, i64 8}
!15 = !{!8, !11, i64 8}
!16 = !{!8, !4, i64 24}
!17 = !{!8, !12, i64 48}
!18 = !{!19, !4, i64 8}
!19 = !{!"WebPPicture", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !20, i64 16, !20, i64 24, !20, i64 32, !4, i64 40, !4, i64 44, !20, i64 48, !4, i64 56, !5, i64 60, !12, i64 72, !4, i64 80, !5, i64 84, !10, i64 96, !10, i64 104, !4, i64 112, !20, i64 120, !21, i64 128, !4, i64 136, !10, i64 144, !10, i64 152, !5, i64 160, !20, i64 176, !20, i64 184, !5, i64 192, !10, i64 224, !10, i64 232, !5, i64 240}
!20 = !{!"p1 omnipotent char", !10, i64 0}
!21 = !{!"p1 _ZTS12WebPAuxStats", !10, i64 0}
!22 = !{!19, !4, i64 12}
!23 = !{!24, !4, i64 8}
!24 = !{!"WebPConfig", !4, i64 0, !25, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !25, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !4, i64 80, !4, i64 84, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112}
!25 = !{!"float", !5, i64 0}
!26 = !{!8, !4, i64 100}
!27 = distinct !{!27, !28, !29}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!"llvm.loop.peeled.count", i32 1}
!30 = !{!8, !4, i64 68}
!31 = !{!8, !4, i64 72}
!32 = !{!8, !4, i64 76}
!33 = !{!34, !4, i64 0}
!34 = !{!"", !4, i64 0, !4, i64 4, !5, i64 8, !4, i64 24}
!35 = !{!34, !4, i64 4}
!36 = !{!19, !12, i64 72}
!37 = !{!19, !4, i64 80}
!38 = distinct !{!38, !28}
!39 = distinct !{!39, !28}
!40 = !{!13, !13, i64 0}
!41 = !{!5, !5, i64 0}
!42 = distinct !{!42, !28}
!43 = !{!24, !25, i64 4}
!44 = !{!45, !4, i64 0}
!45 = !{!"", !4, i64 0, !4, i64 4}
!46 = !{!45, !4, i64 4}
!47 = !{!34, !4, i64 24}
!48 = distinct !{!48, !28}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = !{!24, !4, i64 84}
!52 = !{!53, !4, i64 424}
!53 = !{!"", !9, i64 0, !11, i64 8, !10, i64 16, !10, i64 24, !5, i64 32, !4, i64 424, !4, i64 428, !21, i64 432}
!54 = !{!53, !9, i64 0}
!55 = !{!53, !4, i64 428}
!56 = !{!53, !11, i64 8}
!57 = !{!19, !21, i64 128}
!58 = !{!53, !21, i64 432}
!59 = !{!53, !10, i64 16}
!60 = !{!53, !10, i64 24}
!61 = !{!62, !10, i64 0}
!62 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40}
!63 = !{!64, !10, i64 24}
!64 = !{!"", !10, i64 0, !4, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !4, i64 40}
!65 = !{!64, !10, i64 32}
!66 = !{!64, !10, i64 16}
!67 = !{!19, !10, i64 144}
!68 = !{!62, !10, i64 8}
!69 = !{!62, !10, i64 24}
!70 = !{!62, !10, i64 32}
!71 = !{!62, !10, i64 16}
!72 = !{!62, !10, i64 40}
!73 = !{!19, !4, i64 136}
!74 = !{!75, !20, i64 24}
!75 = !{!"", !13, i64 0, !4, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !4, i64 40}
!76 = !{!75, !20, i64 16}
!77 = !{!75, !4, i64 8}
!78 = !{i64 0, i64 8, !40, i64 8, i64 4, !3, i64 16, i64 8, !79, i64 24, i64 8, !79, i64 32, i64 8, !79, i64 40, i64 4, !3}
!79 = !{!20, !20, i64 0}
!80 = !{!8, !4, i64 96}
!81 = !{!8, !4, i64 88}
!82 = !{!8, !4, i64 92}
!83 = !{!8, !4, i64 84}
!84 = !{!8, !4, i64 80}
!85 = !{!24, !4, i64 92}
!86 = !{!8, !12, i64 16}
!87 = !{!75, !13, i64 0}
!88 = !{!89}
!89 = distinct !{!89, !90}
!90 = distinct !{!90, !"LVerDomain"}
!91 = !{!92}
!92 = distinct !{!92, !90}
!93 = distinct !{!93, !28, !94, !95}
!94 = !{!"llvm.loop.isvectorized", i32 1}
!95 = !{!"llvm.loop.unroll.runtime.disable"}
!96 = distinct !{!96, !28, !94}
!97 = !{!8, !4, i64 64}
!98 = distinct !{!98, !28}
!99 = !{!10, !10, i64 0}
!100 = distinct !{null, null}
!101 = distinct !{!101, !28}
!102 = !{!103, !103, i64 0}
!103 = !{!"short", !5, i64 0}
!104 = distinct !{!104, !28}
!105 = distinct !{!105, !28}
!106 = distinct !{!106, !28}
!107 = distinct !{!107, !28}
!108 = distinct !{!108, !28}
!109 = distinct !{!109, !28}
!110 = distinct !{!110, !28}
!111 = distinct !{!111, !28}
!112 = distinct !{!112, !28}
!113 = distinct !{!113, !28}
!114 = distinct !{!114, !50}
!115 = distinct !{null}
!116 = !{!8, !12, i64 32}
!117 = !{!8, !12, i64 40}
!118 = !{!24, !4, i64 96}
!119 = !{!120, !4, i64 0}
!120 = !{!"", !4, i64 0, !4, i64 4, !121, i64 8}
!121 = !{!"any p2 pointer", !10, i64 0}
!122 = distinct !{!122, !28}
!123 = !{!124, !4, i64 0}
!124 = !{!"", !4, i64 0, !20, i64 8, !125, i64 16}
!125 = !{!"p1 short", !10, i64 0}
!126 = distinct !{!126, !28, !94, !95}
!127 = distinct !{!127, !28, !95, !94}
!128 = !{!124, !20, i64 8}
!129 = distinct !{!129, !28}
!130 = !{!124, !125, i64 16}
!131 = distinct !{!131, !28}
!132 = distinct !{!132, !28}
!133 = distinct !{!133, !28}
!134 = distinct !{!134, !28}
!135 = !{!136, !4, i64 148}
!136 = !{!"WebPAuxStats", !4, i64 0, !5, i64 4, !5, i64 24, !5, i64 36, !5, i64 44, !5, i64 92, !5, i64 108, !5, i64 124, !4, i64 140, !4, i64 144, !4, i64 148, !4, i64 152, !4, i64 156, !4, i64 160, !4, i64 164, !4, i64 168, !4, i64 172, !4, i64 176, !4, i64 180, !5, i64 184}
!137 = !{!136, !4, i64 152}
!138 = !{!136, !4, i64 156}
!139 = !{!136, !4, i64 180}
!140 = !{!136, !4, i64 160}
!141 = !{!136, !4, i64 164}
!142 = !{!136, !4, i64 168}
!143 = !{!136, !4, i64 172}
!144 = !{!136, !4, i64 176}
!145 = distinct !{!145, !28}
!146 = !{!24, !4, i64 12}
!147 = !{!25, !25, i64 0}
!148 = !{!75, !4, i64 40}
!149 = !{!136, !4, i64 0}
!150 = !{!19, !20, i64 120}
!151 = !{!19, !10, i64 96}
!152 = distinct !{null}
!153 = !{!8, !13, i64 56}
!154 = !{!120, !121, i64 8}
!155 = !{!156, !4, i64 3240}
!156 = !{!"", !12, i64 0, !5, i64 8, !5, i64 1032, !5, i64 2056, !5, i64 3080, !4, i64 3240, !5, i64 3244, !13, i64 3256, !5, i64 3264, !5, i64 3304, !103, i64 3310}
!157 = distinct !{!157, !28}
!158 = distinct !{!158, !28}
!159 = !{!156, !12, i64 0}
!160 = distinct !{!160, !28}
!161 = distinct !{!161, !28}
!162 = !{!163, !5, i64 0}
!163 = !{!"", !5, i64 0, !5, i64 1}
!164 = distinct !{!164, !28}
!165 = distinct !{!165, !50}
!166 = distinct !{!166, !28}
!167 = !{!163, !5, i64 1}
!168 = distinct !{!168, !28}
!169 = !{!170, !10, i64 0}
!170 = !{!"", !10, i64 0, !171, i64 8, !10, i64 16}
!171 = !{!"p1 _ZTS14PixOrCopyBlock", !10, i64 0}
!172 = !{!173, !5, i64 0}
!173 = !{!"", !5, i64 0, !103, i64 2, !4, i64 4}
!174 = !{!173, !4, i64 4}
!175 = !{!173, !103, i64 2}
!176 = distinct !{!176, !28}
!177 = !{!170, !10, i64 16}
!178 = distinct !{!178, !28}
end_hunk_1
