inline.NumInlined: 2654
inline.NumDeleted: 1066
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN3gmx19dd_partition_systemEP8_IO_FILERKNS_8MDLoggerElP12gmx_domdec_tbP7t_stateRK10gmx_mtop_tRK10t_inputrecRKNS_18MDModulesNotifiersEPNS_10ImdSessionEP6pull_tS8_PNS_12ForceBuffersEPNS_7MDAtomsEP14gmx_localtop_tP10t_forcerecPNS_19VirtualSitesHandlerEPNS_11ConstraintsEP6t_nrnbP13gmx_wallcycleb:bb.a
._crit_edge.i512:                                 ; preds = %bb.ff
  %.val51.i = load i32, ptr %i.apg, align 4, !tbaa !348
  %i.are = and i32 %.val51.i, -2
  %spec.select.i53.i = icmp eq i32 %i.are, 4
  %i.arf = icmp ne i32 %i.apa, 1                  ; 2 uses
  %or.cond.i513 = and i1 %i.arf, %spec.select.i53.i
  br i1 %or.cond.i513, label %.thread996, label %._crit_edge.thread.i

.thread996:                                       ; preds = %._crit_edge.i512
  call void @llvm.lifetime.start.p0(ptr nonnull %42)
  call void @llvm.lifetime.start.p0(ptr nonnull %43)
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %37, i8 0, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %38, i8 0, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %39, i8 0, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #19
  br label %.lr.ph.i.i

._crit_edge.thread.i:                             ; preds = %._crit_edge.i512, %bb.eu
  %i.arg = phi i1 [ %i.arf, %._crit_edge.i512 ], [ false, %bb.eu ]
  %i.arh = load i32, ptr %i.aoo, align 4, !tbaa !517
  %i.ari = icmp slt i32 %i.arh, 3
  br i1 %i.ari, label %bb.fg, label %_ZL21comm_dd_ns_cell_sizesP12gmx_domdec_tP11gmx_ddbox_tPfS3_l.exit

bb.fg:                                            ; preds = %._crit_edge.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %42)
  call void @llvm.lifetime.start.p0(ptr nonnull %43)
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %37, i8 0, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %38, i8 0, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %39, i8 0, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #19
  br i1 %i.arg, label %.lr.ph.i.i, label %_ZL13dd_move_cellxP12gmx_domdec_tPK11gmx_ddbox_tPfS4_.exit.i.thread

.lr.ph.i.i:                                       ; preds = %.thread996, %bb.fg
  %i.arj = getelementptr inbounds nuw i8, ptr %3, i64 180 ; 7 uses
  %wide.trip.count.i.i504 = zext i32 %i.apa to i64 ; 2 uses
  %i.ark = getelementptr inbounds nuw i8, ptr %3, i64 184 ; 2 uses
  %i.arl = load i32, ptr %i.ark, align 8, !tbaa !208
  %i.arm = getelementptr inbounds nuw i8, ptr %i.aoy, i64 712 ; 4 uses
  %i.arn = sext i32 %i.arl to i64                 ; 2 uses
  %i.aro = getelementptr inbounds [4 x i8], ptr %61, i64 %i.arn ; 3 uses
  %i.arp = load float, ptr %i.aro, align 4, !tbaa !209
  store float %i.arp, ptr %i.arm, align 4, !tbaa !521
  %i.arq = getelementptr inbounds [4 x i8], ptr %62, i64 %i.arn ; 3 uses
  %i.arr = load float, ptr %i.arq, align 4, !tbaa !209 ; 2 uses
  %i.ars = getelementptr inbounds nuw i8, ptr %i.aoy, i64 716 ; 3 uses
  store float %i.arr, ptr %i.ars, align 4, !tbaa !523
  %i.art = getelementptr inbounds nuw i8, ptr %i.aoy, i64 720
  store float %i.arr, ptr %i.art, align 4, !tbaa !524
  %i.aru = load float, ptr %i.aro, align 4, !tbaa !209
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aoy, i64 724 ; 2 uses
  store float %i.aru, ptr %i.arv, align 4, !tbaa !525
  %i.arw = load float, ptr %i.arq, align 4, !tbaa !209
  %i.arx = getelementptr inbounds nuw i8, ptr %i.aoy, i64 728
  store float %i.arw, ptr %i.arx, align 4, !tbaa !526
  %i.ary = load float, ptr %i.aro, align 4, !tbaa !209
  %i.arz = getelementptr inbounds nuw i8, ptr %i.aoy, i64 732 ; 2 uses
  store float %i.ary, ptr %i.arz, align 4, !tbaa !527
  %i.asa = load float, ptr %i.arq, align 4, !tbaa !209
  %i.asb = getelementptr inbounds nuw i8, ptr %i.aoy, i64 736
  %i.asc = getelementptr inbounds nuw i8, ptr %i.aoy, i64 740
  %i.asd = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.asa, i64 0
  store <2 x float> %i.asd, ptr %i.asb, align 4, !tbaa !209
  %exitcond.peel.not.i.i = icmp eq i32 %i.apa, 2
  br i1 %exitcond.peel.not.i.i, label %.lr.ph454.i.i, label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %.lr.ph.i.i
  %i.ase = getelementptr inbounds nuw i8, ptr %i.aoy, i64 776 ; 3 uses
  %i.asf = getelementptr inbounds nuw i8, ptr %i.aoy, i64 780 ; 3 uses
  %i.asg = getelementptr inbounds nuw i8, ptr %i.aoy, i64 784 ; 3 uses
  %i.ash = getelementptr inbounds nuw i8, ptr %i.aoy, i64 788 ; 3 uses
  %i.asi = getelementptr inbounds nuw i8, ptr %i.aoy, i64 792 ; 3 uses
  %i.asj = getelementptr inbounds nuw i8, ptr %i.aoy, i64 796 ; 3 uses
  %i.ask = getelementptr inbounds nuw i8, ptr %i.aoy, i64 800 ; 3 uses
  %xtraiter1726 = and i64 %wide.trip.count.i.i504, 1
  %i.asl = icmp eq i32 %i.apa, 3
  br i1 %i.asl, label %.epil.preheader1725, label %.peel.next.i.i.new

.peel.next.i.i.new:                               ; preds = %.peel.next.i.i
  %i.asm = and i64 %wide.trip.count.i.i504, 4294967294
  %i.asn = add nsw i64 %i.asm, -4
  br label %bb.fh

.lr.ph454.i.i.loopexit.unr-lcssa:                 ; preds = %bb.fh
  %lcmp.mod1728.not = icmp eq i64 %xtraiter1726, 0
  br i1 %lcmp.mod1728.not, label %.lr.ph454.i.i, label %.epil.preheader1725

.epil.preheader1725:                              ; preds = %.lr.ph454.i.i.loopexit.unr-lcssa, %.peel.next.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 2, %.peel.next.i.i ], [ %indvars.iv.next.i.i.1, %.lr.ph454.i.i.loopexit.unr-lcssa ]
  %lcmp.mod1729 = trunc i32 %i.apa to i1
  call void @llvm.assume(i1 %lcmp.mod1729)
  %i.aso = getelementptr inbounds nuw [4 x i8], ptr %i.arj, i64 %indvars.iv.i.i.epil.init
  %i.asp = load i32, ptr %i.aso, align 4, !tbaa !208
  %i.asq = sext i32 %i.asp to i64                 ; 2 uses
  %i.asr = getelementptr inbounds [4 x i8], ptr %61, i64 %i.asq ; 3 uses
  %i.ass = load float, ptr %i.asr, align 4, !tbaa !209
  store float %i.ass, ptr %i.ase, align 4, !tbaa !521
  %i.ast = getelementptr inbounds [4 x i8], ptr %62, i64 %i.asq ; 3 uses
  %i.asu = load float, ptr %i.ast, align 4, !tbaa !209 ; 2 uses
  store float %i.asu, ptr %i.asf, align 4, !tbaa !523
  store float %i.asu, ptr %i.asg, align 4, !tbaa !524
  %i.asv = load float, ptr %i.asr, align 4, !tbaa !209
  store float %i.asv, ptr %i.ash, align 4, !tbaa !525
  %i.asw = load float, ptr %i.ast, align 4, !tbaa !209
  store float %i.asw, ptr %i.asi, align 4, !tbaa !526
  %i.asx = load float, ptr %i.asr, align 4, !tbaa !209
  store float %i.asx, ptr %i.asj, align 4, !tbaa !527
  %i.asy = load float, ptr %i.ast, align 4, !tbaa !209
  %i.asz = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.asy, i64 0
  store <2 x float> %i.asz, ptr %i.ask, align 4, !tbaa !209
  br label %.lr.ph454.i.i

.lr.ph454.i.i:                                    ; preds = %.epil.preheader1725, %.lr.ph454.i.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %i.ata = getelementptr inbounds nuw i8, ptr %i.aoy, i64 1480
  %i.atb = load ptr, ptr %i.ata, align 8, !tbaa !207 ; 2 uses
  %i.atc = add nsw i32 %i.apa, -2
  %i.atd = getelementptr inbounds nuw i8, ptr %i.aoy, i64 664
  %i.ate = getelementptr inbounds nuw i8, ptr %i.aoy, i64 808 ; 3 uses
  %i.atf = getelementptr inbounds nuw i8, ptr %i.aoy, i64 904
  %i.atg = getelementptr inbounds nuw i8, ptr %3, i64 164 ; 2 uses
  %i.ath = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.ati = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  %i.atj = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.atk = getelementptr inbounds nuw i8, ptr %i.aoy, i64 676
  %i.atl = getelementptr inbounds nuw i8, ptr %38, i64 20
  %i.atm = getelementptr inbounds nuw i8, ptr %51, i64 56
  %i.atn = getelementptr inbounds nuw i8, ptr %i.aoy, i64 540
  %i.ato = getelementptr inbounds nuw i8, ptr %i.aoy, i64 772 ; 2 uses
  %i.atp = getelementptr inbounds nuw i8, ptr %i.aoy, i64 744 ; 3 uses
  %i.atq = zext nneg i32 %i.atc to i64            ; 2 uses
  %i.atr = sub i32 1, %i.apa
  %i.ats = add i32 %i.apa, -1
  %i.att = zext i32 %i.ats to i64                 ; 2 uses
  %i.atu = shl nuw nsw i64 %i.atq, 5
  %i.atv = add nuw nsw i64 %i.atu, 776
  %i.atw = sub nsw i32 3, %i.apa
  %invariant.op = sub i32 2, %i.apa
  %invariant.op1859 = sub i32 3, %i.apa
  br label %bb.fi

bb.fh:                                            ; preds = %bb.fh, %.peel.next.i.i.new
  %indvars.iv.i.i = phi i64 [ 2, %.peel.next.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.fh ] ; 3 uses
  %niter1731 = phi i64 [ 0, %.peel.next.i.i.new ], [ %niter1731.next.1, %bb.fh ] ; 2 uses
  %i.atx = getelementptr inbounds nuw [4 x i8], ptr %i.arj, i64 %indvars.iv.i.i
  %i.aty = load i32, ptr %i.atx, align 4, !tbaa !208
  %i.atz = sext i32 %i.aty to i64                 ; 2 uses
  %i.aua = getelementptr inbounds [4 x i8], ptr %61, i64 %i.atz ; 3 uses
  %i.aub = load float, ptr %i.aua, align 4, !tbaa !209
  store float %i.aub, ptr %i.ase, align 4, !tbaa !521
  %i.auc = getelementptr inbounds [4 x i8], ptr %62, i64 %i.atz ; 3 uses
  %i.aud = load float, ptr %i.auc, align 4, !tbaa !209 ; 2 uses
  store float %i.aud, ptr %i.asf, align 4, !tbaa !523
  store float %i.aud, ptr %i.asg, align 4, !tbaa !524
  %i.aue = load float, ptr %i.aua, align 4, !tbaa !209
  store float %i.aue, ptr %i.ash, align 4, !tbaa !525
  %i.auf = load float, ptr %i.auc, align 4, !tbaa !209
  store float %i.auf, ptr %i.asi, align 4, !tbaa !526
  %i.aug = load float, ptr %i.aua, align 4, !tbaa !209
  store float %i.aug, ptr %i.asj, align 4, !tbaa !527
  %i.auh = load float, ptr %i.auc, align 4, !tbaa !209
  %i.aui = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.auh, i64 0
  store <2 x float> %i.aui, ptr %i.ask, align 4, !tbaa !209
  %i.auj = getelementptr inbounds nuw [4 x i8], ptr %i.arj, i64 %indvars.iv.i.i
  %i.auk = getelementptr inbounds nuw i8, ptr %i.auj, i64 4
  %i.aul = load i32, ptr %i.auk, align 4, !tbaa !208
  %i.aum = sext i32 %i.aul to i64                 ; 2 uses
  %i.aun = getelementptr inbounds [4 x i8], ptr %61, i64 %i.aum ; 3 uses
  %i.auo = load float, ptr %i.aun, align 4, !tbaa !209
  store float %i.auo, ptr %i.ase, align 4, !tbaa !521
  %i.aup = getelementptr inbounds [4 x i8], ptr %62, i64 %i.aum ; 3 uses
  %i.auq = load float, ptr %i.aup, align 4, !tbaa !209 ; 2 uses
  store float %i.auq, ptr %i.asf, align 4, !tbaa !523
  store float %i.auq, ptr %i.asg, align 4, !tbaa !524
  %i.aur = load float, ptr %i.aun, align 4, !tbaa !209
  store float %i.aur, ptr %i.ash, align 4, !tbaa !525
  %i.aus = load float, ptr %i.aup, align 4, !tbaa !209
  store float %i.aus, ptr %i.asi, align 4, !tbaa !526
  %i.aut = load float, ptr %i.aun, align 4, !tbaa !209
  store float %i.aut, ptr %i.asj, align 4, !tbaa !527
  %i.auu = load float, ptr %i.aup, align 4, !tbaa !209
  %i.auv = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.auu, i64 0
  store <2 x float> %i.auv, ptr %i.ask, align 4, !tbaa !209
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter1731.next.1 = add i64 %niter1731, 2
  %niter1731.ncmp.1 = icmp eq i64 %niter1731, %i.asn
  br i1 %niter1731.ncmp.1, label %.lr.ph454.i.i.loopexit.unr-lcssa, label %bb.fh, !llvm.loop !528

._crit_edge455.i.i:                               ; preds = %._crit_edge451.i.i
  %.pre538.i.i = load i32, ptr %i.aoz, align 8, !tbaa !120
  %i.auw = icmp sgt i32 %.pre538.i.i, 1
  br i1 %i.auw, label %bb.gk, label %_ZL13dd_move_cellxP12gmx_domdec_tPK11gmx_ddbox_tPfS4_.exit.i.thread

bb.fi:                                            ; preds = %._crit_edge451.i.i, %.lr.ph454.i.i
  %indvars.iv77.i = phi i32 [ %indvars.iv.next78.i.pre-phi, %._crit_edge451.i.i ], [ %i.atw, %.lr.ph454.i.i ] ; 2 uses
  %indvars.iv520.i.i = phi i64 [ %indvars.iv.next521.i.i, %._crit_edge451.i.i ], [ %i.atq, %.lr.ph454.i.i ] ; 28 uses
  %indvar.i.i = phi i64 [ %indvar.next.i.i, %._crit_edge451.i.i ], [ 0, %.lr.ph454.i.i ] ; 6 uses
  %indvars.iv488.i.i = phi i64 [ %indvars.iv.next489.i.i, %._crit_edge451.i.i ], [ %i.att, %.lr.ph454.i.i ] ; 6 uses
  %indvars.iv480.i.i = phi i32 [ %indvars.iv.next481.i.i, %._crit_edge451.i.i ], [ %i.atr, %.lr.ph454.i.i ] ; 5 uses
  %i.aux = trunc i64 %indvar.i.i to i32
  %i.auy = sub i32 %i.apa, %i.aux
  %i.auz = trunc i64 %indvar.i.i to i32
  %i.ava = sub i32 %i.auz, %i.apa
  %i.avb = trunc i64 %indvars.iv488.i.i to i32
  %i.avc = trunc i64 %indvars.iv520.i.i to i32
  %smax = call i32 @llvm.smax.i32(i32 %i.avc, i32 1)
  %i.avd = trunc i64 %indvar.i.i to i32
  %.reass = add i32 %i.avd, %invariant.op
  %i.ave = add i32 %smax, %.reass                 ; 3 uses
  %i.avf = zext i32 %i.ave to i64
  %i.avg = add nuw nsw i64 %i.avf, 1              ; 5 uses
  %indvars79.i = trunc i64 %indvars.iv520.i.i to i32 ; 4 uses
  %i.avh = shl i64 %indvar.i.i, 5
  %i.avi = sub i64 %i.atv, %i.avh
  %scevgep.i.i = getelementptr i8, ptr %i.aoy, i64 %i.avi
  %i.avj = trunc i64 %indvar.i.i to i32
  %.reass.i.reass.i.reass.reass = add i32 %i.avj, %invariant.op1859
  %i.avk = zext i32 %.reass.i.reass.i.reass.reass to i64 ; 2 uses
  %i.avl = shl nuw nsw i64 %i.avk, 6
  %scevgep510.i.i = getelementptr i8, ptr %scevgep.i.i, i64 %i.avl
  %i.avm = shl nuw nsw i64 %i.avk, 5
  %i.avn = add nuw nsw i64 %i.avm, 32
  %i.avo = getelementptr inbounds nuw [4 x i8], ptr %i.arj, i64 %indvars.iv520.i.i
  %i.avp = load i32, ptr %i.avo, align 4, !tbaa !208 ; 5 uses
  %i.avq = load i32, ptr %51, align 4, !tbaa !519
  %i.avr = icmp slt i32 %i.avp, %i.avq            ; 4 uses
  %i.avs = add nuw nsw i64 %indvars.iv520.i.i, 1  ; 4 uses
  %i.avt = getelementptr inbounds nuw [48 x i8], ptr %i.atb, i64 %i.avs ; 2 uses
  %i.avu = getelementptr inbounds nuw i8, ptr %i.avt, i64 32
  %i.avv = load float, ptr %i.avu, align 8, !tbaa !225
  %i.avw = getelementptr inbounds nuw [12 x i8], ptr %40, i64 %indvars.iv520.i.i ; 7 uses
  store float %i.avv, ptr %i.avw, align 4, !tbaa !209
  %i.avx = getelementptr inbounds nuw i8, ptr %i.avt, i64 36
  %i.avy = load float, ptr %i.avx, align 4, !tbaa !210 ; 2 uses
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avw, i64 4
  store float %i.avy, ptr %i.avz, align 4, !tbaa !209
  %i.awa = getelementptr inbounds nuw i8, ptr %i.avw, i64 8
  store float %i.avy, ptr %i.awa, align 4, !tbaa !209
  %i.awb = load i32, ptr %i.aoz, align 8, !tbaa !120 ; 4 uses
  %i.awc = add nsw i32 %i.awb, -1
  %i.awd = sext i32 %i.awc to i64
  %i.awe = icmp slt i64 %indvars.iv520.i.i, %i.awd
  br i1 %i.awe, label %.lr.ph418.i.i, label %._crit_edge419.i.i

.lr.ph418.i.i:                                    ; preds = %bb.fi
  %i.awf = sext i32 %i.avp to i64
  %i.awg = getelementptr inbounds nuw [4 x i8], ptr %i.atd, i64 %i.awf
  %i.awh = add i32 %i.awb, %indvars.iv480.i.i     ; 4 uses
  %wide.trip.count482.i.i = zext i32 %i.awh to i64 ; 3 uses
  %.pre.i.i = load float, ptr %i.awg, align 4, !tbaa !209 ; 2 uses
  %min.iters.check1247 = icmp ult i32 %i.awh, 8
  br i1 %min.iters.check1247, label %scalar.ph1246.preheader, label %vector.ph1248

vector.ph1248:                                    ; preds = %.lr.ph418.i.i
  %n.vec1249 = and i64 %wide.trip.count482.i.i, 4294967288 ; 4 uses
  %i.awi = add i64 %indvars.iv520.i.i, %n.vec1249
  %broadcast.splatinsert1250 = insertelement <8 x float> poison, float %.pre.i.i, i64 0
  %broadcast.splat1251 = shufflevector <8 x float> %broadcast.splatinsert1250, <8 x float> poison, <8 x i32> zeroinitializer
  %i.awj = getelementptr inbounds nuw [12 x i8], ptr %40, i64 %indvars.iv520.i.i
  br label %vector.body1252

vector.body1252:                                  ; preds = %vector.body1252, %vector.ph1248
  %index1253 = phi i64 [ 0, %vector.ph1248 ], [ %index.next1267, %vector.body1252 ] ; 2 uses
  %vec.ind1254 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph1248 ], [ %vec.ind.next1268, %vector.body1252 ] ; 2 uses
  %wide.gep1255 = getelementptr inbounds nuw [32 x i8], ptr %37, <8 x i64> %vec.ind1254 ; 8 uses
  %i.awk = getelementptr inbounds nuw [12 x i8], ptr %i.awj, i64 %index1253
  %wide.vec1256 = load <24 x float>, ptr %i.awk, align 4, !tbaa !209 ; 3 uses
  %strided.vec1257 = shufflevector <24 x float> %wide.vec1256, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1258 = shufflevector <24 x float> %wide.vec1256, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1259 = shufflevector <24 x float> %wide.vec1256, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec1258, <8 x ptr> align 4 %wide.gep1255, <8 x i1> splat (i1 true)), !tbaa !521
  %wide.gep1260 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1255, i64 4
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec1257, <8 x ptr> align 4 %wide.gep1260, <8 x i1> splat (i1 true)), !tbaa !523
  %wide.gep1261 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1255, i64 8
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec1259, <8 x ptr> align 4 %wide.gep1261, <8 x i1> splat (i1 true)), !tbaa !524
  %wide.gep1262 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1255, i64 12
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 4 %wide.gep1262, <8 x i1> splat (i1 true)), !tbaa !525
  %wide.gep1263 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1255, i64 16
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 4 %wide.gep1263, <8 x i1> splat (i1 true)), !tbaa !526
  %wide.gep1264 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1255, i64 20
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %broadcast.splat1251, <8 x ptr> align 4 %wide.gep1264, <8 x i1> splat (i1 true)), !tbaa !527
  %wide.gep1265 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1255, i64 24
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 4 %wide.gep1265, <8 x i1> splat (i1 true)), !tbaa !530
  %wide.gep1266 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1255, i64 28
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> splat (float 1.000000e+00), <8 x ptr> align 4 %wide.gep1266, <8 x i1> splat (i1 true)), !tbaa !531
  %index.next1267 = add nuw i64 %index1253, 8     ; 2 uses
  %vec.ind.next1268 = add nuw nsw <8 x i64> %vec.ind1254, splat (i64 8)
  %i.awl = icmp eq i64 %index.next1267, %n.vec1249
  br i1 %i.awl, label %middle.block1269, label %vector.body1252, !llvm.loop !532

middle.block1269:                                 ; preds = %vector.body1252
  %cmp.n1270 = icmp eq i64 %n.vec1249, %wide.trip.count482.i.i
  br i1 %cmp.n1270, label %._crit_edge419.i.i, label %scalar.ph1246.preheader

scalar.ph1246.preheader:                          ; preds = %.lr.ph418.i.i, %middle.block1269
  %indvars.iv475.i.i.ph = phi i64 [ %indvars.iv520.i.i, %.lr.ph418.i.i ], [ %i.awi, %middle.block1269 ]
  %indvars.iv471.i.i.ph = phi i64 [ 0, %.lr.ph418.i.i ], [ %n.vec1249, %middle.block1269 ]
  br label %scalar.ph1246

._crit_edge419.i.i:                               ; preds = %scalar.ph1246, %middle.block1269, %bb.fi
  %.0311.lcssa.i.i = phi i32 [ 0, %bb.fi ], [ %i.awh, %middle.block1269 ], [ %i.awh, %scalar.ph1246 ] ; 3 uses
  %i.awm = icmp eq i32 %i.awb, 2
  %.v.i.i = select i1 %i.awm, i64 712, i64 776
  %i.awn = getelementptr inbounds nuw i8, ptr %i.aoy, i64 %.v.i.i
  %i.awo = zext nneg i32 %.0311.lcssa.i.i to i64
  %i.awp = getelementptr inbounds nuw [32 x i8], ptr %37, i64 %i.awo ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.awp, ptr noundef nonnull align 4 dereferenceable(32) %i.awn, i64 32, i1 false), !tbaa.struct !533
  %i.awq = add nuw nsw i32 %.0311.lcssa.i.i, 1    ; 2 uses
  %i.awr = icmp eq i32 %i.awb, 3
  %i.aws = icmp eq i64 %indvars.iv520.i.i, 0      ; 5 uses
  %or.cond.i.i = and i1 %i.aws, %i.awr
  br i1 %or.cond.i.i, label %bb.fj, label %bb.fk

scalar.ph1246:                                    ; preds = %scalar.ph1246.preheader, %scalar.ph1246
  %indvars.iv475.i.i = phi i64 [ %indvars.iv.next476.i.i, %scalar.ph1246 ], [ %indvars.iv475.i.i.ph, %scalar.ph1246.preheader ] ; 2 uses
  %indvars.iv471.i.i = phi i64 [ %indvars.iv.next472.i.i, %scalar.ph1246 ], [ %indvars.iv471.i.i.ph, %scalar.ph1246.preheader ] ; 2 uses
  %i.awt = getelementptr inbounds nuw [32 x i8], ptr %37, i64 %indvars.iv471.i.i ; 5 uses
  %i.awu = getelementptr inbounds nuw [12 x i8], ptr %40, i64 %indvars.iv475.i.i ; 2 uses
  %i.awv = load <2 x float>, ptr %i.awu, align 4, !tbaa !209
  %i.aww = shufflevector <2 x float> %i.awv, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.aww, ptr %i.awt, align 16, !tbaa !209
  %i.awx = getelementptr inbounds nuw i8, ptr %i.awu, i64 8
  %i.awy = load float, ptr %i.awx, align 4, !tbaa !209
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awt, i64 8
  store float %i.awy, ptr %i.awz, align 8, !tbaa !524
  %i.axa = getelementptr inbounds nuw i8, ptr %i.awt, i64 12
  store <2 x float> zeroinitializer, ptr %i.axa, align 4, !tbaa !209
  %i.axb = getelementptr inbounds nuw i8, ptr %i.awt, i64 20
  store float %.pre.i.i, ptr %i.axb, align 4, !tbaa !527
  %i.axc = getelementptr inbounds nuw i8, ptr %i.awt, i64 24
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.axc, align 8, !tbaa !209
  %indvars.iv.next472.i.i = add nuw nsw i64 %indvars.iv471.i.i, 1 ; 2 uses
  %indvars.iv.next476.i.i = add nuw nsw i64 %indvars.iv475.i.i, 1
  %exitcond483.not.i.i = icmp eq i64 %indvars.iv.next472.i.i, %wide.trip.count482.i.i
  br i1 %exitcond483.not.i.i, label %._crit_edge419.i.i, label %scalar.ph1246, !llvm.loop !534

bb.fj:                                            ; preds = %._crit_edge419.i.i
  %i.axd = zext nneg i32 %i.awq to i64
  %i.axe = getelementptr inbounds nuw [32 x i8], ptr %37, i64 %i.axd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.axe, ptr noundef nonnull align 8 dereferenceable(32) %i.ate, i64 32, i1 false), !tbaa.struct !533
  %i.axf = getelementptr inbounds nuw i8, ptr %i.awp, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.axf, ptr noundef nonnull align 4 dereferenceable(32) %i.arm, i64 32, i1 false), !tbaa.struct !533
  %i.axg = add nuw nsw i32 %.0311.lcssa.i.i, 3
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %._crit_edge419.i.i
  %.1312.i.i = phi i32 [ %i.axg, %bb.fj ], [ %i.awq, %._crit_edge419.i.i ] ; 5 uses
  %i.axh = getelementptr inbounds nuw [32 x i8], ptr %i.atf, i64 %indvars.iv520.i.i ; 2 uses
  %i.axi = getelementptr inbounds nuw i8, ptr %i.axh, i64 8
  %i.axj = load ptr, ptr %i.axi, align 8, !tbaa !535
  %i.axk = load ptr, ptr %i.axh, align 8, !tbaa !538
  %i.axl = ptrtoint ptr %i.axj to i64
  %i.axm = ptrtoint ptr %i.axk to i64
  %i.axn = sub i64 %i.axl, %i.axm
  %i.axo = sdiv exact i64 %i.axn, 112
  %i.axp = trunc i64 %i.axo to i32                ; 7 uses
  br i1 %i.avr, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  %i.axq = sext i32 %i.avp to i64
  %i.axr = getelementptr inbounds nuw [4 x i8], ptr %i.atg, i64 %i.axq
  %i.axs = load i32, ptr %i.axr, align 4, !tbaa !208
  %i.axt = xor i32 %i.axp, -1
  %i.axu = add i32 %i.axs, %i.axt
  %.sroa.speculated371.i.i = call i32 @llvm.smin.i32(i32 %i.axu, i32 %i.axp)
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %.0315.i.i = phi i32 [ %.sroa.speculated371.i.i, %bb.fl ], [ %i.axp, %bb.fk ] ; 2 uses
  %i.axv = icmp sgt i32 %.0315.i.i, 0
  br i1 %i.axv, label %.lr.ph426.i.i, label %.preheader410.i.i

.lr.ph426.i.i:                                    ; preds = %bb.fm
  %i.axw = sext i32 %i.avp to i64
  %i.axx = getelementptr inbounds nuw [4 x i8], ptr %i.ath, i64 %i.axw
  %i.axy = xor i32 %indvars79.i, -1               ; 2 uses
  %i.axz = getelementptr inbounds nuw [12 x i8], ptr %41, i64 %indvars.iv520.i.i ; 3 uses
  store ptr %i.axz, ptr %42, align 8
  br label %bb.fn

.preheader410.i.i:                                ; preds = %.loopexit409.i.i, %bb.fm
  %i.aya = icmp sgt i32 %i.axp, 0
  br i1 %i.aya, label %.lr.ph450.i.i, label %.preheader410.i.i.._crit_edge451.i.i_crit_edge

.preheader410.i.i.._crit_edge451.i.i_crit_edge:   ; preds = %.preheader410.i.i
  %.pre817 = add i32 %indvars.iv77.i, 1
  br label %._crit_edge451.i.i

.lr.ph450.i.i:                                    ; preds = %.preheader410.i.i
  %i.ayb = sext i32 %i.avp to i64                 ; 6 uses
  %i.ayc = getelementptr inbounds nuw [4 x i8], ptr %i.ath, i64 %i.ayb ; 2 uses
  %i.ayd = getelementptr inbounds nuw [4 x i8], ptr %i.atg, i64 %i.ayb ; 2 uses
  %i.aye = shl nsw i32 %.1312.i.i, 3
  %i.ayf = sext i32 %i.aye to i64                 ; 2 uses
  %i.ayg = getelementptr inbounds nuw [4 x i8], ptr %37, i64 %i.ayf
  %i.ayh = getelementptr inbounds nuw [4 x i8], ptr %38, i64 %i.ayf
  store ptr %38, ptr %43, align 8
  store ptr %i.ayh, ptr %i.atj, align 8
  %i.ayi = getelementptr inbounds nuw [4 x i8], ptr %i.atk, i64 %i.ayb
  %i.ayj = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ayb
  %i.ayk = getelementptr inbounds [36 x i8], ptr %i.atm, i64 %i.ayb
  %invariant.gep.i.i = getelementptr [4 x i8], ptr %i.ayk, i64 %i.ayb ; 3 uses
  %i.ayl = icmp sgt i32 %.1312.i.i, 0             ; 3 uses
  %i.aym = add nsw i32 %.1312.i.i, -1
  %i.ayn = add nsw i32 %i.axp, -1                 ; 2 uses
  %i.ayo = icmp eq i64 %indvars.iv520.i.i, 1      ; 2 uses
  %i.ayp = sub nsw i64 1, %indvars.iv520.i.i
  %i.ayq = getelementptr [64 x i8], ptr %i.aoy, i64 %i.ayp ; 6 uses
  %i.ayr = zext i32 %.1312.i.i to i64             ; 4 uses
  %i.ays = shl nuw nsw i64 %i.ayr, 5              ; 3 uses
  %i.ayt = zext i32 %i.aym to i64                 ; 2 uses
  %i.ayu = add i32 %indvars.iv77.i, 1             ; 2 uses
  %i.ayv = getelementptr inbounds nuw [4 x i8], ptr %i.arj, i64 %indvars.iv488.i.i
  %i.ayw = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv488.i.i
  %indvars.iv.next491.i.i.prol = add nuw nsw i64 %indvars.iv488.i.i, 1
  %min.iters.check1190 = icmp ult i32 %.1312.i.i, 9
  %i.ayx = and i64 %i.ayr, 7                      ; 2 uses
  %i.ayy = icmp eq i64 %i.ayx, 0
  %i.ayz = select i1 %i.ayy, i64 8, i64 %i.ayx
  %n.vec1192 = sub nsw i64 %i.ayr, %i.ayz         ; 2 uses
  %broadcast.splatinsert1193 = insertelement <8 x i64> poison, i64 %i.ayt, i64 0
  %broadcast.splat1194 = shufflevector <8 x i64> %broadcast.splatinsert1193, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1195 = insertelement <8 x i64> poison, i64 %i.avs, i64 0
  %broadcast.splat1196 = shufflevector <8 x i64> %broadcast.splatinsert1195, <8 x i64> poison, <8 x i32> zeroinitializer
  %min.iters.check1148 = icmp ult i32 %i.ave, 3
  %min.iters.check1150 = icmp ult i32 %i.ave, 31
  %i.aza = and i64 %i.avg, 28
  %n.vec1152 = and i64 %i.avg, 8589934560         ; 4 uses
  %i.azb = add i64 %indvars.iv520.i.i, %n.vec1152 ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %indvars.iv520.i.i, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nuw nsw <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %cmp.n1167 = icmp eq i64 %i.avg, %n.vec1152
  %min.epilog.iters.check1173 = icmp eq i64 %i.aza, 0
  %n.vec1175 = and i64 %i.avg, 8589934588         ; 3 uses
  %i.azc = add i64 %indvars.iv520.i.i, %n.vec1175
  %cmp.n1187 = icmp eq i64 %i.avg, %n.vec1175
  %i.azd = getelementptr inbounds nuw [12 x i8], ptr %40, i64 %indvars.iv520.i.i
  br label %bb.fp

bb.fn:                                            ; preds = %.loopexit409.i.i, %.lr.ph426.i.i
  %.0316424.i.i = phi i32 [ 0, %.lr.ph426.i.i ], [ %i.bba, %.loopexit409.i.i ]
  br i1 %i.avr, label %.preheader408.critedge.i.i, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.aze = load i32, ptr %i.axx, align 4, !tbaa !208
  %i.azf = icmp sgt i32 %i.aze, 0
  %i.azg = load i32, ptr %i.aoz, align 8, !tbaa !120
  %i.azh = add i32 %i.azg, %i.axy
  %i.azi = sext i32 %i.azh to i64                 ; 2 uses
  %i.azj = getelementptr inbounds nuw [12 x i8], ptr %i.avw, i64 %i.azi
  %i.azk = getelementptr inbounds nuw [12 x i8], ptr %i.axz, i64 %i.azi
  store ptr %i.azk, ptr %i.ati, align 8
  call void @_Z10ddSendrecvIN3gmx11BasicVectorIfEEEvPK12gmx_domdec_tiiNS0_8ArrayRefIT_EES8_(ptr noundef nonnull %3, i32 noundef %indvars79.i, i32 noundef 0, ptr nonnull %i.avw, ptr nonnull %i.azj, ptr noundef nonnull byval(%"class.gmx::ArrayRef.598") align 8 %42)
  br i1 %i.azf, label %.preheader408.i.i, label %.loopexit409.i.i

.preheader408.critedge.i.i:                       ; preds = %bb.fn
  %i.azl = load i32, ptr %i.aoz, align 8, !tbaa !120
  %i.azm = add i32 %i.azl, %i.axy
  %i.azn = sext i32 %i.azm to i64                 ; 2 uses
  %i.azo = getelementptr inbounds nuw [12 x i8], ptr %i.avw, i64 %i.azn
  %i.azp = getelementptr inbounds nuw [12 x i8], ptr %i.axz, i64 %i.azn
  store ptr %i.azp, ptr %i.ati, align 8
  call void @_Z10ddSendrecvIN3gmx11BasicVectorIfEEEvPK12gmx_domdec_tiiNS0_8ArrayRefIT_EES8_(ptr noundef nonnull %3, i32 noundef %indvars79.i, i32 noundef 0, ptr nonnull %i.avw, ptr nonnull %i.azo, ptr noundef nonnull byval(%"class.gmx::ArrayRef.598") align 8 %42)
  br label %.preheader408.i.i

.preheader408.i.i:                                ; preds = %.preheader408.critedge.i.i, %bb.fo
  %i.azq = load i32, ptr %i.aoz, align 8, !tbaa !120
  %i.azr = add nsw i32 %i.azq, -1                 ; 3 uses
  %i.azs = sext i32 %i.azr to i64
  %i.azt = icmp slt i64 %indvars.iv520.i.i, %i.azs
  br i1 %i.azt, label %.lr.ph423.i.i.preheader, label %.loopexit409.i.i

.lr.ph423.i.i.preheader:                          ; preds = %.preheader408.i.i
  %smax1226 = call i32 @llvm.smax.i32(i32 %i.avb, i32 %i.azr)
  %i.azu = add i32 %indvars.iv480.i.i, %smax1226  ; 2 uses
  %i.azv = zext i32 %i.azu to i64
  %i.azw = add nuw nsw i64 %i.azv, 1              ; 2 uses
  %min.iters.check1228 = icmp ult i32 %i.azu, 7
  br i1 %min.iters.check1228, label %.lr.ph423.i.i.preheader1692, label %vector.ph1229

vector.ph1229:                                    ; preds = %.lr.ph423.i.i.preheader
  %n.vec1230 = and i64 %i.azw, 8589934584         ; 3 uses
  %i.azx = add i64 %indvars.iv520.i.i, %n.vec1230
  br label %vector.body1231

vector.body1231:                                  ; preds = %vector.body1231, %vector.ph1229
  %index1232 = phi i64 [ 0, %vector.ph1229 ], [ %index.next1242, %vector.body1231 ] ; 2 uses
  %i.azy = add nuw i64 %indvars.iv520.i.i, %index1232 ; 2 uses
  %i.azz = getelementptr inbounds nuw [12 x i8], ptr %40, i64 %i.azy ; 2 uses
  %i.baa = getelementptr inbounds nuw [12 x i8], ptr %41, i64 %i.azy
  %wide.vec1233 = load <24 x float>, ptr %i.azz, align 4, !tbaa !209 ; 3 uses
  %strided.vec1234 = shufflevector <24 x float> %wide.vec1233, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec1235 = shufflevector <24 x float> %wide.vec1233, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22> ; 2 uses
  %strided.vec1236 = shufflevector <24 x float> %wide.vec1233, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23> ; 2 uses
  %wide.vec1237 = load <24 x float>, ptr %i.baa, align 4, !tbaa !209 ; 3 uses
  %strided.vec1238 = shufflevector <24 x float> %wide.vec1237, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec1239 = shufflevector <24 x float> %wide.vec1237, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22> ; 2 uses
  %strided.vec1240 = shufflevector <24 x float> %wide.vec1237, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23> ; 2 uses
  %i.bab = fcmp olt <8 x float> %strided.vec1234, %strided.vec1238
  %i.bac = select <8 x i1> %i.bab, <8 x float> %strided.vec1238, <8 x float> %strided.vec1234
  %i.bad = fcmp olt <8 x float> %strided.vec1239, %strided.vec1235
  %i.bae = select <8 x i1> %i.bad, <8 x float> %strided.vec1239, <8 x float> %strided.vec1235
  %i.baf = fcmp olt <8 x float> %strided.vec1240, %strided.vec1236
  %i.bag = select <8 x i1> %i.baf, <8 x float> %strided.vec1240, <8 x float> %strided.vec1236
  %i.bah = shufflevector <8 x float> %i.bac, <8 x float> %i.bae, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bai = shufflevector <8 x float> %i.bag, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec1241 = shufflevector <16 x float> %i.bah, <16 x float> %i.bai, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec1241, ptr %i.azz, align 4, !tbaa !209
  %index.next1242 = add nuw i64 %index1232, 8     ; 2 uses
  %i.baj = icmp eq i64 %index.next1242, %n.vec1230
  br i1 %i.baj, label %middle.block1243, label %vector.body1231, !llvm.loop !539

middle.block1243:                                 ; preds = %vector.body1231
  %cmp.n1244 = icmp eq i64 %i.azw, %n.vec1230
  br i1 %cmp.n1244, label %.loopexit409.i.i, label %.lr.ph423.i.i.preheader1692

.lr.ph423.i.i.preheader1692:                      ; preds = %.lr.ph423.i.i.preheader, %middle.block1243
  %indvars.iv484.i.i.ph = phi i64 [ %indvars.iv520.i.i, %.lr.ph423.i.i.preheader ], [ %i.azx, %middle.block1243 ]
  br label %.lr.ph423.i.i

.lr.ph423.i.i:                                    ; preds = %.lr.ph423.i.i.preheader1692, %.lr.ph423.i.i
  %indvars.iv484.i.i = phi i64 [ %indvars.iv.next485.i.i, %.lr.ph423.i.i ], [ %indvars.iv484.i.i.ph, %.lr.ph423.i.i.preheader1692 ] ; 3 uses
  %i.bak = getelementptr inbounds nuw [12 x i8], ptr %40, i64 %indvars.iv484.i.i ; 3 uses
  %i.bal = getelementptr inbounds nuw [12 x i8], ptr %41, i64 %indvars.iv484.i.i ; 2 uses
  %i.bam = load <2 x float>, ptr %i.bal, align 4, !tbaa !209 ; 3 uses
  %i.ban = load <2 x float>, ptr %i.bak, align 4, !tbaa !209 ; 3 uses
  %i.bao = shufflevector <2 x float> %i.ban, <2 x float> %i.bam, <2 x i32> <i32 0, i32 3>
  %i.bap = shufflevector <2 x float> %i.bam, <2 x float> %i.ban, <2 x i32> <i32 0, i32 3>
  %i.baq = fcmp olt <2 x float> %i.bao, %i.bap
  %i.bar = select <2 x i1> %i.baq, <2 x float> %i.bam, <2 x float> %i.ban
  store <2 x float> %i.bar, ptr %i.bak, align 4, !tbaa !209
  %i.bas = getelementptr inbounds nuw i8, ptr %i.bak, i64 8 ; 2 uses
  %i.bat = getelementptr inbounds nuw i8, ptr %i.bal, i64 8
  %i.bau = load float, ptr %i.bat, align 4, !tbaa !209 ; 2 uses
  %i.bav = load float, ptr %i.bas, align 4, !tbaa !209 ; 2 uses
  %i.baw = fcmp olt float %i.bau, %i.bav
  %i.bax = select i1 %i.baw, float %i.bau, float %i.bav
  store float %i.bax, ptr %i.bas, align 4, !tbaa !209
  %indvars.iv.next485.i.i = add nuw nsw i64 %indvars.iv484.i.i, 1 ; 2 uses
  %i.bay = trunc nuw i64 %indvars.iv.next485.i.i to i32
  %i.baz = icmp sgt i32 %i.azr, %i.bay
  br i1 %i.baz, label %.lr.ph423.i.i, label %.loopexit409.i.i, !llvm.loop !540

.loopexit409.i.i:                                 ; preds = %.lr.ph423.i.i, %middle.block1243, %.preheader408.i.i, %bb.fo
  %i.bba = add nuw nsw i32 %.0316424.i.i, 1       ; 2 uses
  %exitcond487.not.i.i = icmp eq i32 %i.bba, %.0315.i.i
  br i1 %exitcond487.not.i.i, label %.preheader410.i.i, label %bb.fn, !llvm.loop !541

._crit_edge451.i.i:                               ; preds = %.critedge.i.i, %.preheader410.i.i.._crit_edge451.i.i_crit_edge
  %indvars.iv.next78.i.pre-phi = phi i32 [ %.pre817, %.preheader410.i.i.._crit_edge451.i.i_crit_edge ], [ %i.ayu, %.critedge.i.i ]
  %indvars.iv.next521.i.i = add i64 %indvars.iv520.i.i, -1
  %indvars.iv.next481.i.i = add i32 %indvars.iv480.i.i, 1
  %indvars.iv.next489.i.i = add i64 %indvars.iv488.i.i, -1
  %indvar.next.i.i = add nuw nsw i64 %indvar.i.i, 1 ; 2 uses
  %exitcond524.not.i.i = icmp eq i64 %indvar.next.i.i, %i.att
  br i1 %exitcond524.not.i.i, label %._crit_edge455.i.i, label %bb.fi, !llvm.loop !542

bb.fp:                                            ; preds = %.critedge.i.i, %.lr.ph450.i.i
  %.0318448.i.i = phi i32 [ 0, %.lr.ph450.i.i ], [ %i.bhd, %.critedge.i.i ] ; 5 uses
  br i1 %i.avr, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.bbb = load i32, ptr %i.ayc, align 4, !tbaa !208
  %i.bbc = load i32, ptr %i.ayd, align 4, !tbaa !208
  %i.bbd = add nsw i32 %i.bbc, -1
  %i.bbe = icmp slt i32 %i.bbb, %i.bbd
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %i.bbf = phi i1 [ true, %bb.fp ], [ %i.bbe, %bb.fq ]
  call void @_Z10ddSendrecvIfEvPK12gmx_domdec_tiiN3gmx8ArrayRefIT_EES6_(ptr noundef %3, i32 noundef %indvars79.i, i32 noundef 1, ptr nonnull %37, ptr nonnull %i.ayg, ptr noundef nonnull byval(%"class.gmx::ArrayRef.564") align 8 %43)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ah, i8 0, i64 12, i1 false)
  %.not337.i.i = icmp eq i32 %.0318448.i.i, 0
  br i1 %.not337.i.i, label %.loopexit407.i.thread100.i, label %.preheader406.i.i

.preheader406.i.i:                                ; preds = %bb.fr
  %i.bbg = load i32, ptr %i.aoz, align 8, !tbaa !120 ; 4 uses
  %i.bbh = sext i32 %i.bbg to i64
  %i.bbi = icmp slt i64 %i.avs, %i.bbh
  br i1 %i.bbi, label %.lr.ph428.i.i, label %.loopexit407.i.thread.i

.lr.ph428.i.i:                                    ; preds = %.preheader406.i.i
  %i.bbj = load float, ptr %i.ayi, align 4, !tbaa !209
  %i.bbk = load float, ptr %i.atl, align 4, !tbaa !527
  %i.bbl = fsub float %i.bbj, %i.bbk              ; 5 uses
  %i.bbm = load float, ptr %i.atn, align 4, !tbaa !543 ; 5 uses
  %i.bbn = fmul float %i.bbm, %i.bbm              ; 3 uses
  %i.bbo = fneg float %i.bbl
  %i.bbp = fmul float %i.bbl, %i.bbo              ; 3 uses
  %i.bbq = load i32, ptr %i.ayj, align 4, !tbaa !208
  %.not338.i.i = icmp eq i32 %i.bbq, 0            ; 3 uses
  %smax1732 = call i32 @llvm.smax.i32(i32 %i.bbg, i32 %i.auy) ; 2 uses
  %i.bbr = add i32 %indvars.iv480.i.i, %smax1732
  %xtraiter1733 = and i32 %i.bbr, 1
  %lcmp.mod1734.not = icmp eq i32 %xtraiter1733, 0
  br i1 %lcmp.mod1734.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph428.i.i
  br i1 %.not338.i.i, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %.prol.preheader
  %i.bbs = load i32, ptr %i.ayv, align 4, !tbaa !208
  %i.bbt = sext i32 %i.bbs to i64
  %gep.i.i.prol = getelementptr [12 x i8], ptr %invariant.gep.i.i, i64 %i.bbt
  %i.bbu = load float, ptr %gep.i.i.prol, align 4, !tbaa !209
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %.prol.preheader
  %.0310.i.i.prol = phi float [ %i.bbu, %bb.fs ], [ 0.000000e+00, %.prol.preheader ] ; 3 uses
  %i.bbv = call float @llvm.fmuladd.f32(float %.0310.i.i.prol, float %.0310.i.i.prol, float 1.000000e+00) ; 2 uses
  %i.bbw = call float @llvm.fmuladd.f32(float %i.bbv, float %i.bbn, float %i.bbp) ; 2 uses
  %i.bbx = fcmp ogt float %i.bbw, 0.000000e+00
  br i1 %i.bbx, label %bb.fu, label %.prol.loopexit.unr-lcssa

bb.fu:                                            ; preds = %bb.ft
  %i.bby = call noundef float @sqrtf(float noundef %i.bbw) #19
  %i.bbz = call float @llvm.fmuladd.f32(float %.0310.i.i.prol, float %i.bbl, float %i.bby)
  %i.bca = fdiv float %i.bbz, %i.bbv
  %i.bcb = fsub float %i.bbm, %i.bca
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.fu, %bb.ft
  %.sink.i.i.prol = phi float [ %i.bcb, %bb.fu ], [ -1.000000e+00, %bb.ft ]
  store float %.sink.i.i.prol, ptr %i.ayw, align 4, !tbaa !209
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph428.i.i
  %indvars.iv490.i.i.unr = phi i64 [ %indvars.iv488.i.i, %.lr.ph428.i.i ], [ %indvars.iv.next491.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.bcc = sub i32 0, %smax1732
  %i.bcd = icmp eq i32 %i.ava, %i.bcc
  br i1 %i.bcd, label %.loopexit407.i.i, label %.lr.ph428.i.i.new

.lr.ph428.i.i.new:                                ; preds = %.prol.loopexit, %bb.gc
  %indvars.iv490.i.i = phi i64 [ %indvars.iv.next491.i.i.1, %bb.gc ], [ %indvars.iv490.i.i.unr, %.prol.loopexit ] ; 4 uses
  br i1 %.not338.i.i, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %.lr.ph428.i.i.new
  %i.bce = getelementptr inbounds nuw [4 x i8], ptr %i.arj, i64 %indvars.iv490.i.i
  %i.bcf = load i32, ptr %i.bce, align 4, !tbaa !208
  %i.bcg = sext i32 %i.bcf to i64
  %gep.i.i = getelementptr [12 x i8], ptr %invariant.gep.i.i, i64 %i.bcg
  %i.bch = load float, ptr %gep.i.i, align 4, !tbaa !209
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %.lr.ph428.i.i.new
  %.0310.i.i = phi float [ %i.bch, %bb.fv ], [ 0.000000e+00, %.lr.ph428.i.i.new ] ; 3 uses
  %i.bci = call float @llvm.fmuladd.f32(float %.0310.i.i, float %.0310.i.i, float 1.000000e+00) ; 2 uses
  %i.bcj = call float @llvm.fmuladd.f32(float %i.bci, float %i.bbn, float %i.bbp) ; 2 uses
  %i.bck = fcmp ogt float %i.bcj, 0.000000e+00
  br i1 %i.bck, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.bcl = call noundef float @sqrtf(float noundef %i.bcj) #19
  %i.bcm = call float @llvm.fmuladd.f32(float %.0310.i.i, float %i.bbl, float %i.bcl)
  %i.bcn = fdiv float %i.bcm, %i.bci
  %i.bco = fsub float %i.bbm, %i.bcn
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %.sink.i.i = phi float [ %i.bco, %bb.fx ], [ -1.000000e+00, %bb.fw ]
  %i.bcp = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv490.i.i
  store float %.sink.i.i, ptr %i.bcp, align 4, !tbaa !209
  %indvars.iv.next491.i.i = add nuw nsw i64 %indvars.iv490.i.i, 1 ; 2 uses
  br i1 %.not338.i.i, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.bcq = getelementptr inbounds nuw [4 x i8], ptr %i.arj, i64 %indvars.iv.next491.i.i
  %i.bcr = load i32, ptr %i.bcq, align 4, !tbaa !208
  %i.bcs = sext i32 %i.bcr to i64
  %gep.i.i.1 = getelementptr [12 x i8], ptr %invariant.gep.i.i, i64 %i.bcs
  %i.bct = load float, ptr %gep.i.i.1, align 4, !tbaa !209
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  %.0310.i.i.1 = phi float [ %i.bct, %bb.fz ], [ 0.000000e+00, %bb.fy ] ; 3 uses
  %i.bcu = call float @llvm.fmuladd.f32(float %.0310.i.i.1, float %.0310.i.i.1, float 1.000000e+00) ; 2 uses
  %i.bcv = call float @llvm.fmuladd.f32(float %i.bcu, float %i.bbn, float %i.bbp) ; 2 uses
  %i.bcw = fcmp ogt float %i.bcv, 0.000000e+00
  br i1 %i.bcw, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.bcx = call noundef float @sqrtf(float noundef %i.bcv) #19
  %i.bcy = call float @llvm.fmuladd.f32(float %.0310.i.i.1, float %i.bbl, float %i.bcx)
  %i.bcz = fdiv float %i.bcy, %i.bcu
  %i.bda = fsub float %i.bbm, %i.bcz
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %.sink.i.i.1 = phi float [ %i.bda, %bb.gb ], [ -1.000000e+00, %bb.ga ]
  %i.bdb = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next491.i.i
  store float %.sink.i.i.1, ptr %i.bdb, align 4, !tbaa !209
  %indvars.iv.next491.i.i.1 = add nuw nsw i64 %indvars.iv490.i.i, 2 ; 2 uses
  %i.bdc = trunc nuw i64 %indvars.iv.next491.i.i.1 to i32
  %i.bdd = icmp sgt i32 %i.bbg, %i.bdc
  br i1 %i.bdd, label %.lr.ph428.i.i.new, label %.loopexit407.i.i, !llvm.loop !544

.loopexit407.i.i:                                 ; preds = %bb.gc, %.prol.loopexit
  br i1 %i.ayl, label %.lr.ph431.preheader.i.split.i, label %._crit_edge432.i.i

.loopexit407.i.thread100.i:                       ; preds = %bb.fr
  br i1 %i.ayl, label %.lr.ph431.preheader.i.thread101.i, label %._crit_edge432.i.i

.lr.ph431.preheader.i.thread101.i:                ; preds = %.loopexit407.i.thread100.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %37, ptr noundef nonnull align 16 dereferenceable(1) %38, i64 %i.ays, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %39, ptr noundef nonnull align 16 dereferenceable(1) %38, i64 %i.ays, i1 false)
  br label %._crit_edge432.i.i

.loopexit407.i.thread.i:                          ; preds = %.preheader406.i.i
  br i1 %i.ayl, label %.lr.ph431.preheader.i.split.i, label %._crit_edge432.i.i

.lr.ph431.preheader.i.split.i:                    ; preds = %.loopexit407.i.i, %.loopexit407.i.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %37, ptr noundef nonnull align 16 dereferenceable(1) %38, i64 %i.ays, i1 false)
  br i1 %i.bbf, label %.lr.ph431.preheader.i.split.split.i, label %._crit_edge432.i.i

.lr.ph431.preheader.i.split.split.i:              ; preds = %.lr.ph431.preheader.i.split.i
  %i.bde = icmp eq i32 %i.bbg, 3
  %or.cond3.i.i = and i1 %i.aws, %i.bde           ; 2 uses
  br i1 %min.iters.check1190, label %.lr.ph431.i.i.preheader, label %vector.body1197

.lr.ph431.i.i.preheader:                          ; preds = %vector.body1197, %.lr.ph431.preheader.i.split.split.i
  %indvars.iv493.i.i.ph = phi i64 [ 0, %.lr.ph431.preheader.i.split.split.i ], [ %n.vec1192, %vector.body1197 ]
  br label %.lr.ph431.i.i

vector.body1197:                                  ; preds = %.lr.ph431.preheader.i.split.split.i, %vector.body1197
  %index1198 = phi i64 [ %index.next1222, %vector.body1197 ], [ 0, %.lr.ph431.preheader.i.split.split.i ]
  %vec.ind1199 = phi <8 x i64> [ %vec.ind.next1223, %vector.body1197 ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %.lr.ph431.preheader.i.split.split.i ] ; 4 uses
  %wide.gep1200 = getelementptr inbounds nuw [32 x i8], ptr %39, <8 x i64> %vec.ind1199 ; 6 uses
  %wide.gep1201 = getelementptr inbounds nuw [32 x i8], ptr %38, <8 x i64> %vec.ind1199 ; 5 uses
  %wide.masked.gather1202 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1201, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !209 ; 2 uses
  %wide.masked.gather1203 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1200, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !209 ; 2 uses
  %i.bdf = fcmp olt <8 x float> %wide.masked.gather1202, %wide.masked.gather1203
  %i.bdg = select <8 x i1> %i.bdf, <8 x float> %wide.masked.gather1202, <8 x float> %wide.masked.gather1203
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.bdg, <8 x ptr> align 16 %wide.gep1200, <8 x i1> splat (i1 true)), !tbaa !521
  %wide.gep1204 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1200, i64 4 ; 2 uses
  %wide.gep1205 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1201, i64 4
  %wide.masked.gather1206 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1204, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !209 ; 2 uses
  %wide.masked.gather1207 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1205, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !209 ; 2 uses
  %i.bdh = fcmp olt <8 x float> %wide.masked.gather1206, %wide.masked.gather1207
  %i.bdi = select <8 x i1> %i.bdh, <8 x float> %wide.masked.gather1207, <8 x float> %wide.masked.gather1206
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.bdi, <8 x ptr> align 4 %wide.gep1204, <8 x i1> splat (i1 true)), !tbaa !523
  %wide.gep1208 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1200, i64 8 ; 2 uses
  %wide.gep1209 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1201, i64 8
  %wide.masked.gather1210 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1209, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !209 ; 2 uses
  %wide.masked.gather1211 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1208, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !209 ; 2 uses
  %i.bdj = fcmp olt <8 x float> %wide.masked.gather1210, %wide.masked.gather1211
  %i.bdk = select <8 x i1> %i.bdj, <8 x float> %wide.masked.gather1210, <8 x float> %wide.masked.gather1211
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.bdk, <8 x ptr> align 8 %wide.gep1208, <8 x i1> splat (i1 true)), !tbaa !524
  %i.bdl = icmp eq <8 x i64> %vec.ind1199, %broadcast.splat1194
  %i.bdm = select i1 %or.cond3.i.i, <8 x i1> %i.bdl, <8 x i1> zeroinitializer
  %i.bdn = select <8 x i1> %i.bdm, <8 x i64> splat (i64 1), <8 x i64> %broadcast.splat1196
  %wide.gep1212 = getelementptr inbounds nuw [4 x i8], ptr %i.ah, <8 x i64> %i.bdn
  %wide.masked.gather1213 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1212, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !209 ; 3 uses
  %i.bdo = fcmp oge <8 x float> %wide.masked.gather1213, zeroinitializer ; 6 uses
  %wide.gep1214 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1200, i64 12 ; 2 uses
end_hunk_0
