Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/partition?download=true
inline.NumInlined: 2655
inline.NumDeleted: 1066
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN3gmx19dd_partition_systemEP8_IO_FILERKNS_8MDLoggerElP12gmx_domdec_tbP7t_stateRK10gmx_mtop_tRK10t_inputrecRKNS_18MDModulesNotifiersEPNS_10ImdSessionEP6pull_tS8_PNS_12ForceBuffersEPNS_7MDAtomsEP14gmx_localtop_tP10t_forcerecPNS_19VirtualSitesHandlerEPNS_11ConstraintsEP6t_nrnbP13gmx_wallcycleb:bb.a
  %i.aqc = fmul float %i.apz, %i.aqb
  %i.aqd = getelementptr inbounds nuw [4 x i8], ptr %i.api, i64 %i.apu
  %i.aqe = load float, ptr %i.aqd, align 4, !tbaa !211
  %i.aqf = fcmp olt float %i.aqc, %i.aqe
  br i1 %i.aqf, label %bb.fa, label %bb.ff

bb.fa:                                            ; preds = %bb.ez
  %i.aqg = getelementptr inbounds nuw [4 x i8], ptr %i.apg, i64 %i.apu
  %i.aqh = getelementptr inbounds nuw [4 x i8], ptr %i.aph, i64 %i.apu
  %i.aqi = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.apu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #19
  call void @_ZNSt10filesystem7__cxx114pathC2IA65_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %44, ptr noundef nonnull align 1 dereferenceable(65) @.str.1, i8 noundef zeroext 2)
  %i.aqj = invoke noundef ptr @_Z12gmx_step_strlPc(i64 noundef %2, ptr noundef nonnull %i.ai)
          to label %bb.fb unwind label %bb.fe

bb.fb:                                            ; preds = %bb.fa
  %i.aqk = invoke noundef signext i8 @_Z8dim2chari(i32 noundef %i.apk)
          to label %bb.fc unwind label %bb.fe

bb.fc:                                            ; preds = %bb.fb
  %i.aql = sext i8 %i.aqk to i32
  %i.aqm = load float, ptr %i.aqg, align 4, !tbaa !211
  %i.aqn = load float, ptr %i.aqh, align 4, !tbaa !211
  %i.aqo = fsub float %i.aqm, %i.aqn
  %i.aqp = fpext float %i.aqo to double
  %i.aqq = load float, ptr %i.aqi, align 4, !tbaa !211
  %i.aqr = fpext float %i.aqq to double
  %i.aqs = load ptr, ptr %i.by, align 8, !tbaa !15
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqs, i64 604
  %i.aqu = getelementptr inbounds nuw [4 x i8], ptr %i.aqt, i64 %i.apu
  %i.aqv = load float, ptr %i.aqu, align 4, !tbaa !211
  %i.aqw = fpext float %i.aqv to double
  %i.aqx = load i32, ptr %i.apd, align 4, !tbaa !210
  %i.aqy = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.aqz = load i32, ptr %i.aqy, align 8, !tbaa !210
  %i.ara = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.arb = load i32, ptr %i.ara, align 4, !tbaa !210
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %44, i32 noundef 759, ptr noundef nonnull @.str.133, ptr noundef %i.aqj, i32 noundef %i.aql, double noundef %i.aqp, double noundef %i.aqr, double noundef %i.aqw, i32 noundef %i.aqx, i32 noundef %i.aqz, i32 noundef %i.arb) #29
          to label %bb.fd unwind label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  unreachable

common.resume:                                    ; preds = %bb.qq, %bb.qt, %bb.rb, %_ZN14DDBufferAccessIiED2Ev.exit238.i, %bb.ji, %bb.fe
  %common.resume.op = phi { ptr, i32 } [ %i.arc, %bb.fe ], [ %.pn.i, %bb.ji ], [ %.pn.pn.pn.pn.i, %_ZN14DDBufferAccessIiED2Ev.exit238.i ], [ %.pn446.pn, %bb.rb ], [ %.pn.i587, %bb.qt ], [ %.pn.i587, %bb.qq ]
  resume { ptr, i32 } %common.resume.op

bb.fe:                                            ; preds = %bb.fc, %bb.fb, %bb.fa
  %i.arc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %44) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #19
  br label %common.resume

bb.ff:                                            ; preds = %bb.ez, %bb.ey, %bb.ex, %bb.ew
  %indvars.iv.next.i510 = add nuw nsw i64 %indvars.iv.i507, 1 ; 2 uses
  %exitcond.not.i511 = icmp eq i64 %indvars.iv.next.i510, %wide.trip.count.i
  br i1 %exitcond.not.i511, label %._crit_edge.i512, label %bb.ev, !llvm.loop !476

._crit_edge.i512:                                 ; preds = %bb.ff
  %.val51.i = load i32, ptr %i.apf, align 4, !tbaa !345
  %i.ard = and i32 %.val51.i, -2
  %spec.select.i53.i = icmp eq i32 %i.ard, 4
  %i.are = icmp ne i32 %i.aoz, 1                  ; 2 uses
  %or.cond.i513 = and i1 %i.are, %spec.select.i53.i
  br i1 %or.cond.i513, label %.thread1003, label %._crit_edge.thread.i

.thread1003:                                      ; preds = %._crit_edge.i512
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
  %i.arf = phi i1 [ %i.are, %._crit_edge.i512 ], [ false, %bb.eu ]
  %i.arg = load i32, ptr %i.aon, align 4, !tbaa !664
  %i.arh = icmp slt i32 %i.arg, 3
  br i1 %i.arh, label %bb.fg, label %_ZL21comm_dd_ns_cell_sizesP12gmx_domdec_tP11gmx_ddbox_tPfS3_l.exit

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
  br i1 %i.arf, label %.lr.ph.i.i, label %_ZL13dd_move_cellxP12gmx_domdec_tPK11gmx_ddbox_tPfS4_.exit.i.thread

.lr.ph.i.i:                                       ; preds = %.thread1003, %bb.fg
  %i.ari = getelementptr inbounds nuw i8, ptr %3, i64 180 ; 7 uses
  %wide.trip.count.i.i504 = zext i32 %i.aoz to i64 ; 2 uses
  %i.arj = getelementptr inbounds nuw i8, ptr %3, i64 184 ; 2 uses
  %i.ark = load i32, ptr %i.arj, align 8, !tbaa !210
  %i.arl = getelementptr inbounds nuw i8, ptr %i.aox, i64 712 ; 4 uses
  %i.arm = sext i32 %i.ark to i64                 ; 2 uses
  %i.arn = getelementptr inbounds [4 x i8], ptr %61, i64 %i.arm ; 3 uses
  %i.aro = load float, ptr %i.arn, align 4, !tbaa !211
  store float %i.aro, ptr %i.arl, align 4, !tbaa !667
  %i.arp = getelementptr inbounds [4 x i8], ptr %62, i64 %i.arm ; 3 uses
  %i.arq = load float, ptr %i.arp, align 4, !tbaa !211 ; 2 uses
  %i.arr = getelementptr inbounds nuw i8, ptr %i.aox, i64 716 ; 3 uses
  store float %i.arq, ptr %i.arr, align 4, !tbaa !668
  %i.ars = getelementptr inbounds nuw i8, ptr %i.aox, i64 720
  store float %i.arq, ptr %i.ars, align 4, !tbaa !669
  %i.art = load float, ptr %i.arn, align 4, !tbaa !211
  %i.aru = getelementptr inbounds nuw i8, ptr %i.aox, i64 724 ; 2 uses
  store float %i.art, ptr %i.aru, align 4, !tbaa !670
  %i.arv = load float, ptr %i.arp, align 4, !tbaa !211
  %i.arw = getelementptr inbounds nuw i8, ptr %i.aox, i64 728
  store float %i.arv, ptr %i.arw, align 4, !tbaa !671
  %i.arx = load float, ptr %i.arn, align 4, !tbaa !211
  %i.ary = getelementptr inbounds nuw i8, ptr %i.aox, i64 732 ; 2 uses
  store float %i.arx, ptr %i.ary, align 4, !tbaa !672
  %i.arz = load float, ptr %i.arp, align 4, !tbaa !211
  %i.asa = getelementptr inbounds nuw i8, ptr %i.aox, i64 736
  %i.asb = getelementptr inbounds nuw i8, ptr %i.aox, i64 740
  %i.asc = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.arz, i64 0
  store <2 x float> %i.asc, ptr %i.asa, align 4, !tbaa !211
  %exitcond.peel.not.i.i = icmp eq i32 %i.aoz, 2
  br i1 %exitcond.peel.not.i.i, label %.lr.ph454.i.i, label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %.lr.ph.i.i
  %i.asd = getelementptr inbounds nuw i8, ptr %i.aox, i64 776 ; 3 uses
  %i.ase = getelementptr inbounds nuw i8, ptr %i.aox, i64 780 ; 3 uses
  %i.asf = getelementptr inbounds nuw i8, ptr %i.aox, i64 788 ; 3 uses
  %i.asg = getelementptr inbounds nuw i8, ptr %i.aox, i64 792 ; 3 uses
  %i.ash = getelementptr inbounds nuw i8, ptr %i.aox, i64 796 ; 3 uses
  %i.asi = getelementptr inbounds nuw i8, ptr %i.aox, i64 800 ; 3 uses
  %i.asj = getelementptr inbounds nuw i8, ptr %i.aox, i64 804 ; 3 uses
  %xtraiter1736 = and i64 %wide.trip.count.i.i504, 1
  %i.ask = icmp eq i32 %i.aoz, 3
  br i1 %i.ask, label %.epil.preheader1735, label %.peel.next.i.i.new

.peel.next.i.i.new:                               ; preds = %.peel.next.i.i
  %i.asl = and i64 %wide.trip.count.i.i504, 4294967294
  %i.asm = add nsw i64 %i.asl, -4
  br label %bb.fh

.lr.ph454.i.i.loopexit.unr-lcssa:                 ; preds = %bb.fh
  %lcmp.mod1738.not = icmp eq i64 %xtraiter1736, 0
  br i1 %lcmp.mod1738.not, label %.lr.ph454.i.i, label %.epil.preheader1735

.epil.preheader1735:                              ; preds = %.lr.ph454.i.i.loopexit.unr-lcssa, %.peel.next.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 2, %.peel.next.i.i ], [ %indvars.iv.next.i.i.1, %.lr.ph454.i.i.loopexit.unr-lcssa ]
  %lcmp.mod1739 = trunc i32 %i.aoz to i1
  call void @llvm.assume(i1 %lcmp.mod1739)
  %i.asn = getelementptr inbounds nuw [4 x i8], ptr %i.ari, i64 %indvars.iv.i.i.epil.init
  %i.aso = load i32, ptr %i.asn, align 4, !tbaa !210
  %i.asp = sext i32 %i.aso to i64                 ; 2 uses
  %i.asq = getelementptr inbounds [4 x i8], ptr %61, i64 %i.asp ; 3 uses
  %i.asr = load float, ptr %i.asq, align 4, !tbaa !211
  store float %i.asr, ptr %i.asd, align 4, !tbaa !667
  %i.ass = getelementptr inbounds [4 x i8], ptr %62, i64 %i.asp ; 3 uses
  %i.ast = load float, ptr %i.ass, align 4, !tbaa !211
  %i.asu = insertelement <2 x float> poison, float %i.ast, i64 0
  %i.asv = shufflevector <2 x float> %i.asu, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.asv, ptr %i.ase, align 4, !tbaa !211
  %i.asw = load float, ptr %i.asq, align 4, !tbaa !211
  store float %i.asw, ptr %i.asf, align 4, !tbaa !670
  %i.asx = load float, ptr %i.ass, align 4, !tbaa !211
  store float %i.asx, ptr %i.asg, align 4, !tbaa !671
  %i.asy = load float, ptr %i.asq, align 4, !tbaa !211
  store float %i.asy, ptr %i.ash, align 4, !tbaa !672
  %i.asz = load float, ptr %i.ass, align 4, !tbaa !211
  store float %i.asz, ptr %i.asi, align 4, !tbaa !673
  store float 1.000000e+00, ptr %i.asj, align 4, !tbaa !674
  br label %.lr.ph454.i.i

.lr.ph454.i.i:                                    ; preds = %.epil.preheader1735, %.lr.ph454.i.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %i.ata = getelementptr inbounds nuw i8, ptr %i.aox, i64 1480
  %i.atb = load ptr, ptr %i.ata, align 8, !tbaa !209 ; 2 uses
  %i.atc = add nsw i32 %i.aoz, -2
  %i.atd = getelementptr inbounds nuw i8, ptr %i.aox, i64 664
  %i.ate = getelementptr inbounds nuw i8, ptr %i.aox, i64 808 ; 3 uses
  %i.atf = getelementptr inbounds nuw i8, ptr %i.aox, i64 904
  %i.atg = getelementptr inbounds nuw i8, ptr %3, i64 164 ; 2 uses
  %i.ath = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.ati = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  %i.atj = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.atk = getelementptr inbounds nuw i8, ptr %i.aox, i64 676
  %i.atl = getelementptr inbounds nuw i8, ptr %38, i64 20
  %i.atm = getelementptr inbounds nuw i8, ptr %51, i64 56
  %i.atn = getelementptr inbounds nuw i8, ptr %i.aox, i64 540
  %i.ato = getelementptr inbounds nuw i8, ptr %i.aox, i64 772 ; 2 uses
  %i.atp = getelementptr inbounds nuw i8, ptr %i.aox, i64 744 ; 3 uses
  %i.atq = zext nneg i32 %i.atc to i64            ; 2 uses
  %i.atr = sub i32 1, %i.aoz
  %i.ats = add i32 %i.aoz, -1
  %i.att = zext i32 %i.ats to i64                 ; 2 uses
  %i.atu = shl nuw nsw i64 %i.atq, 5
  %i.atv = add nuw nsw i64 %i.atu, 776
  %i.atw = sub nsw i32 3, %i.aoz
  %invariant.op = sub i32 2, %i.aoz
  %invariant.op1865 = sub i32 3, %i.aoz
  br label %bb.fi

bb.fh:                                            ; preds = %bb.fh, %.peel.next.i.i.new
  %indvars.iv.i.i = phi i64 [ 2, %.peel.next.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.fh ] ; 3 uses
  %niter1741 = phi i64 [ 0, %.peel.next.i.i.new ], [ %niter1741.next.1, %bb.fh ] ; 2 uses
  %i.atx = getelementptr inbounds nuw [4 x i8], ptr %i.ari, i64 %indvars.iv.i.i
  %i.aty = load i32, ptr %i.atx, align 4, !tbaa !210
  %i.atz = sext i32 %i.aty to i64                 ; 2 uses
  %i.aua = getelementptr inbounds [4 x i8], ptr %61, i64 %i.atz ; 3 uses
  %i.aub = load float, ptr %i.aua, align 4, !tbaa !211
  store float %i.aub, ptr %i.asd, align 4, !tbaa !667
  %i.auc = getelementptr inbounds [4 x i8], ptr %62, i64 %i.atz ; 3 uses
  %i.aud = load float, ptr %i.auc, align 4, !tbaa !211
  %i.aue = insertelement <2 x float> poison, float %i.aud, i64 0
  %i.auf = shufflevector <2 x float> %i.aue, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.auf, ptr %i.ase, align 4, !tbaa !211
  %i.aug = load float, ptr %i.aua, align 4, !tbaa !211
  store float %i.aug, ptr %i.asf, align 4, !tbaa !670
  %i.auh = load float, ptr %i.auc, align 4, !tbaa !211
  store float %i.auh, ptr %i.asg, align 4, !tbaa !671
  %i.aui = load float, ptr %i.aua, align 4, !tbaa !211
  store float %i.aui, ptr %i.ash, align 4, !tbaa !672
  %i.auj = load float, ptr %i.auc, align 4, !tbaa !211
  store float %i.auj, ptr %i.asi, align 4, !tbaa !673
  store float 1.000000e+00, ptr %i.asj, align 4, !tbaa !674
  %i.auk = getelementptr inbounds nuw [4 x i8], ptr %i.ari, i64 %indvars.iv.i.i
  %i.aul = getelementptr inbounds nuw i8, ptr %i.auk, i64 4
  %i.aum = load i32, ptr %i.aul, align 4, !tbaa !210
  %i.aun = sext i32 %i.aum to i64                 ; 2 uses
  %i.auo = getelementptr inbounds [4 x i8], ptr %61, i64 %i.aun ; 3 uses
  %i.aup = load float, ptr %i.auo, align 4, !tbaa !211
  store float %i.aup, ptr %i.asd, align 4, !tbaa !667
  %i.auq = getelementptr inbounds [4 x i8], ptr %62, i64 %i.aun ; 3 uses
  %i.aur = load float, ptr %i.auq, align 4, !tbaa !211
  %i.aus = insertelement <2 x float> poison, float %i.aur, i64 0
  %i.aut = shufflevector <2 x float> %i.aus, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.aut, ptr %i.ase, align 4, !tbaa !211
  %i.auu = load float, ptr %i.auo, align 4, !tbaa !211
  store float %i.auu, ptr %i.asf, align 4, !tbaa !670
  %i.auv = load float, ptr %i.auq, align 4, !tbaa !211
  store float %i.auv, ptr %i.asg, align 4, !tbaa !671
  %i.auw = load float, ptr %i.auo, align 4, !tbaa !211
  store float %i.auw, ptr %i.ash, align 4, !tbaa !672
  %i.aux = load float, ptr %i.auq, align 4, !tbaa !211
  store float %i.aux, ptr %i.asi, align 4, !tbaa !673
  store float 1.000000e+00, ptr %i.asj, align 4, !tbaa !674
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter1741.next.1 = add i64 %niter1741, 2
  %niter1741.ncmp.1 = icmp eq i64 %niter1741, %i.asm
  br i1 %niter1741.ncmp.1, label %.lr.ph454.i.i.loopexit.unr-lcssa, label %bb.fh, !llvm.loop !477

._crit_edge455.i.i:                               ; preds = %._crit_edge451.i.i
  %.pre538.i.i = load i32, ptr %i.aoy, align 8, !tbaa !208
  %i.auy = icmp sgt i32 %.pre538.i.i, 1
  br i1 %i.auy, label %bb.gk, label %_ZL13dd_move_cellxP12gmx_domdec_tPK11gmx_ddbox_tPfS4_.exit.i.thread

bb.fi:                                            ; preds = %._crit_edge451.i.i, %.lr.ph454.i.i
  %indvars.iv77.i = phi i32 [ %indvars.iv.next78.i.pre-phi, %._crit_edge451.i.i ], [ %i.atw, %.lr.ph454.i.i ] ; 2 uses
  %indvar.i.i = phi i64 [ %indvar.next.i.i, %._crit_edge451.i.i ], [ 0, %.lr.ph454.i.i ] ; 6 uses
  %indvars.iv488.i.i = phi i64 [ %indvars.iv.next489.i.i, %._crit_edge451.i.i ], [ %i.att, %.lr.ph454.i.i ] ; 6 uses
  %indvars.iv480.i.i = phi i32 [ %indvars.iv.next481.i.i, %._crit_edge451.i.i ], [ %i.atr, %.lr.ph454.i.i ] ; 5 uses
  %indvars.iv471.i.i = phi i64 [ %indvars.iv.next472.i.i, %._crit_edge451.i.i ], [ %i.atq, %.lr.ph454.i.i ] ; 28 uses
  %i.auz = trunc i64 %indvar.i.i to i32
  %i.ava = sub i32 %i.aoz, %i.auz
  %i.avb = trunc i64 %indvar.i.i to i32
  %i.avc = sub i32 %i.avb, %i.aoz
  %i.avd = trunc i64 %indvars.iv488.i.i to i32
  %i.ave = trunc i64 %indvars.iv471.i.i to i32
  %smax = call i32 @llvm.smax.i32(i32 %i.ave, i32 1)
  %i.avf = trunc i64 %indvar.i.i to i32
  %.reass = add i32 %i.avf, %invariant.op
  %i.avg = add i32 %smax, %.reass                 ; 3 uses
  %i.avh = zext i32 %i.avg to i64
  %i.avi = add nuw nsw i64 %i.avh, 1              ; 5 uses
  %indvars79.i = trunc i64 %indvars.iv471.i.i to i32 ; 4 uses
  %i.avj = shl i64 %indvar.i.i, 5
  %i.avk = sub i64 %i.atv, %i.avj
  %scevgep.i.i = getelementptr i8, ptr %i.aox, i64 %i.avk
  %i.avl = trunc i64 %indvar.i.i to i32
  %.reass.i.reass.i.reass.reass = add i32 %i.avl, %invariant.op1865
  %i.avm = zext i32 %.reass.i.reass.i.reass.reass to i64 ; 2 uses
  %i.avn = shl nuw nsw i64 %i.avm, 6
  %scevgep510.i.i = getelementptr i8, ptr %scevgep.i.i, i64 %i.avn
  %i.avo = shl nuw nsw i64 %i.avm, 5
  %i.avp = add nuw nsw i64 %i.avo, 32
  %i.avq = getelementptr inbounds nuw [4 x i8], ptr %i.ari, i64 %indvars.iv471.i.i
  %i.avr = load i32, ptr %i.avq, align 4, !tbaa !210 ; 5 uses
  %i.avs = load i32, ptr %51, align 4, !tbaa !665
  %i.avt = icmp slt i32 %i.avr, %i.avs            ; 4 uses
  %i.avu = add nuw nsw i64 %indvars.iv471.i.i, 1  ; 4 uses
  %i.avv = getelementptr inbounds nuw [48 x i8], ptr %i.atb, i64 %i.avu ; 2 uses
  %i.avw = getelementptr inbounds nuw i8, ptr %i.avv, i64 32
  %i.avx = load float, ptr %i.avw, align 8, !tbaa !227
  %i.avy = getelementptr inbounds nuw [12 x i8], ptr %40, i64 %indvars.iv471.i.i ; 6 uses
  store float %i.avx, ptr %i.avy, align 4, !tbaa !211
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avv, i64 36
  %i.awa = load float, ptr %i.avz, align 4, !tbaa !225
  %i.awb = getelementptr inbounds nuw i8, ptr %i.avy, i64 4
  %i.awc = insertelement <2 x float> poison, float %i.awa, i64 0
  %i.awd = shufflevector <2 x float> %i.awc, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.awd, ptr %i.awb, align 4, !tbaa !211
  %i.awe = load i32, ptr %i.aoy, align 8, !tbaa !208 ; 4 uses
  %i.awf = add nsw i32 %i.awe, -1
  %i.awg = sext i32 %i.awf to i64
  %i.awh = icmp slt i64 %indvars.iv471.i.i, %i.awg
  br i1 %i.awh, label %.lr.ph418.i.i, label %._crit_edge419.i.i

.lr.ph418.i.i:                                    ; preds = %bb.fi
  %i.awi = sext i32 %i.avr to i64
  %i.awj = getelementptr inbounds nuw [4 x i8], ptr %i.atd, i64 %i.awi
  %i.awk = add i32 %i.awe, %indvars.iv480.i.i     ; 4 uses
  %wide.trip.count482.i.i = zext i32 %i.awk to i64 ; 3 uses
  %.pre.i.i = load float, ptr %i.awj, align 4, !tbaa !211 ; 2 uses
  %min.iters.check1245 = icmp ult i32 %i.awk, 8
  br i1 %min.iters.check1245, label %scalar.ph1244.preheader, label %vector.ph1246

vector.ph1246:                                    ; preds = %.lr.ph418.i.i
  %n.vec1247 = and i64 %wide.trip.count482.i.i, 4294967288 ; 4 uses
  %i.awl = add i64 %indvars.iv471.i.i, %n.vec1247
  %broadcast.splatinsert1248 = insertelement <8 x float> poison, float %.pre.i.i, i64 0
  %broadcast.splat1249 = shufflevector <8 x float> %broadcast.splatinsert1248, <8 x float> poison, <8 x i32> zeroinitializer
  %i.awm = getelementptr inbounds nuw [12 x i8], ptr %40, i64 %indvars.iv471.i.i
  br label %vector.body1250

vector.body1250:                                  ; preds = %vector.body1250, %vector.ph1246
  %index1251 = phi i64 [ 0, %vector.ph1246 ], [ %index.next1265, %vector.body1250 ] ; 2 uses
  %vec.ind1252 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph1246 ], [ %vec.ind.next1266, %vector.body1250 ] ; 2 uses
  %wide.gep1253 = getelementptr inbounds nuw [32 x i8], ptr %37, <8 x i64> %vec.ind1252 ; 8 uses
  %i.awn = getelementptr inbounds nuw [12 x i8], ptr %i.awm, i64 %index1251
  %wide.vec1254 = load <24 x float>, ptr %i.awn, align 4, !tbaa !211 ; 3 uses
  %strided.vec1255 = shufflevector <24 x float> %wide.vec1254, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1256 = shufflevector <24 x float> %wide.vec1254, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1257 = shufflevector <24 x float> %wide.vec1254, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec1256, <8 x ptr> align 4 %wide.gep1253, <8 x i1> splat (i1 true)), !tbaa !667
  %wide.gep1258 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1253, i64 4
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec1255, <8 x ptr> align 4 %wide.gep1258, <8 x i1> splat (i1 true)), !tbaa !668
  %wide.gep1259 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1253, i64 8
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec1257, <8 x ptr> align 4 %wide.gep1259, <8 x i1> splat (i1 true)), !tbaa !669
  %wide.gep1260 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1253, i64 12
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 4 %wide.gep1260, <8 x i1> splat (i1 true)), !tbaa !670
  %wide.gep1261 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1253, i64 16
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 4 %wide.gep1261, <8 x i1> splat (i1 true)), !tbaa !671
  %wide.gep1262 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1253, i64 20
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %broadcast.splat1249, <8 x ptr> align 4 %wide.gep1262, <8 x i1> splat (i1 true)), !tbaa !672
  %wide.gep1263 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1253, i64 24
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 4 %wide.gep1263, <8 x i1> splat (i1 true)), !tbaa !673
  %wide.gep1264 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1253, i64 28
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> splat (float 1.000000e+00), <8 x ptr> align 4 %wide.gep1264, <8 x i1> splat (i1 true)), !tbaa !674
  %index.next1265 = add nuw i64 %index1251, 8     ; 2 uses
  %vec.ind.next1266 = add nuw nsw <8 x i64> %vec.ind1252, splat (i64 8)
  %i.awo = icmp eq i64 %index.next1265, %n.vec1247
  br i1 %i.awo, label %middle.block1267, label %vector.body1250, !llvm.loop !478

middle.block1267:                                 ; preds = %vector.body1250
  %cmp.n1268 = icmp eq i64 %n.vec1247, %wide.trip.count482.i.i
  br i1 %cmp.n1268, label %._crit_edge419.i.i, label %scalar.ph1244.preheader

scalar.ph1244.preheader:                          ; preds = %.lr.ph418.i.i, %middle.block1267
  %indvars.iv475.i.i.ph = phi i64 [ 0, %.lr.ph418.i.i ], [ %n.vec1247, %middle.block1267 ]
  %indvars.iv473.i.i.ph = phi i64 [ %indvars.iv471.i.i, %.lr.ph418.i.i ], [ %i.awl, %middle.block1267 ]
  br label %scalar.ph1244

._crit_edge419.i.i:                               ; preds = %scalar.ph1244, %middle.block1267, %bb.fi
  %.0316.lcssa.i.i = phi i32 [ 0, %bb.fi ], [ %i.awk, %middle.block1267 ], [ %i.awk, %scalar.ph1244 ] ; 3 uses
  %i.awp = icmp eq i32 %i.awe, 2
  %.v.i.i = select i1 %i.awp, i64 712, i64 776
  %i.awq = getelementptr inbounds nuw i8, ptr %i.aox, i64 %.v.i.i
  %i.awr = zext nneg i32 %.0316.lcssa.i.i to i64
  %i.aws = getelementptr inbounds nuw [32 x i8], ptr %37, i64 %i.awr ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.aws, ptr noundef nonnull align 4 dereferenceable(32) %i.awq, i64 32, i1 false), !tbaa.struct !676
  %i.awt = add nuw nsw i32 %.0316.lcssa.i.i, 1    ; 2 uses
  %i.awu = icmp eq i32 %i.awe, 3
  %i.awv = icmp eq i64 %indvars.iv471.i.i, 0      ; 5 uses
  %or.cond.i.i = and i1 %i.awv, %i.awu
  br i1 %or.cond.i.i, label %bb.fj, label %bb.fk

scalar.ph1244:                                    ; preds = %scalar.ph1244.preheader, %scalar.ph1244
  %indvars.iv475.i.i = phi i64 [ %indvars.iv.next476.i.i, %scalar.ph1244 ], [ %indvars.iv475.i.i.ph, %scalar.ph1244.preheader ] ; 2 uses
  %indvars.iv473.i.i = phi i64 [ %indvars.iv.next474.i.i, %scalar.ph1244 ], [ %indvars.iv473.i.i.ph, %scalar.ph1244.preheader ] ; 2 uses
  %i.aww = getelementptr inbounds nuw [32 x i8], ptr %37, i64 %indvars.iv475.i.i ; 5 uses
  %i.awx = getelementptr inbounds nuw [12 x i8], ptr %40, i64 %indvars.iv473.i.i ; 2 uses
  %i.awy = load <2 x float>, ptr %i.awx, align 4, !tbaa !211
  %i.awz = shufflevector <2 x float> %i.awy, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.awz, ptr %i.aww, align 16, !tbaa !211
  %i.axa = getelementptr inbounds nuw i8, ptr %i.awx, i64 8
  %i.axb = load float, ptr %i.axa, align 4, !tbaa !211
  %i.axc = getelementptr inbounds nuw i8, ptr %i.aww, i64 8
  store float %i.axb, ptr %i.axc, align 8, !tbaa !669
  %i.axd = getelementptr inbounds nuw i8, ptr %i.aww, i64 12
  store <2 x float> zeroinitializer, ptr %i.axd, align 4, !tbaa !211
  %i.axe = getelementptr inbounds nuw i8, ptr %i.aww, i64 20
  store float %.pre.i.i, ptr %i.axe, align 4, !tbaa !672
  %i.axf = getelementptr inbounds nuw i8, ptr %i.aww, i64 24
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.axf, align 8, !tbaa !211
  %indvars.iv.next476.i.i = add nuw nsw i64 %indvars.iv475.i.i, 1 ; 2 uses
  %indvars.iv.next474.i.i = add nuw nsw i64 %indvars.iv473.i.i, 1
  %exitcond483.not.i.i = icmp eq i64 %indvars.iv.next476.i.i, %wide.trip.count482.i.i
  br i1 %exitcond483.not.i.i, label %._crit_edge419.i.i, label %scalar.ph1244, !llvm.loop !479

bb.fj:                                            ; preds = %._crit_edge419.i.i
  %i.axg = zext nneg i32 %i.awt to i64
  %i.axh = getelementptr inbounds nuw [32 x i8], ptr %37, i64 %i.axg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.axh, ptr noundef nonnull align 8 dereferenceable(32) %i.ate, i64 32, i1 false), !tbaa.struct !676
  %i.axi = getelementptr inbounds nuw i8, ptr %i.aws, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.axi, ptr noundef nonnull align 8 dereferenceable(32) %i.arl, i64 32, i1 false), !tbaa.struct !676
  %i.axj = add nuw nsw i32 %.0316.lcssa.i.i, 3
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %._crit_edge419.i.i
  %.1317.i.i = phi i32 [ %i.axj, %bb.fj ], [ %i.awt, %._crit_edge419.i.i ] ; 5 uses
  %i.axk = getelementptr inbounds nuw [32 x i8], ptr %i.atf, i64 %indvars.iv471.i.i ; 2 uses
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axk, i64 8
  %i.axm = load ptr, ptr %i.axl, align 8, !tbaa !678
  %i.axn = load ptr, ptr %i.axk, align 8, !tbaa !679
  %i.axo = ptrtoint ptr %i.axm to i64
  %i.axp = ptrtoint ptr %i.axn to i64
  %i.axq = sub i64 %i.axo, %i.axp
  %i.axr = sdiv exact i64 %i.axq, 112
  %i.axs = trunc i64 %i.axr to i32                ; 7 uses
  br i1 %i.avt, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  %i.axt = sext i32 %i.avr to i64
  %i.axu = getelementptr inbounds nuw [4 x i8], ptr %i.atg, i64 %i.axt
  %i.axv = load i32, ptr %i.axu, align 4, !tbaa !210
  %i.axw = xor i32 %i.axs, -1
  %i.axx = add i32 %i.axv, %i.axw
  %.sroa.speculated371.i.i = call i32 @llvm.smin.i32(i32 %i.axx, i32 %i.axs)
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %.0314.i.i = phi i32 [ %.sroa.speculated371.i.i, %bb.fl ], [ %i.axs, %bb.fk ] ; 2 uses
  %i.axy = icmp sgt i32 %.0314.i.i, 0
  br i1 %i.axy, label %.lr.ph426.i.i, label %.preheader410.i.i

.lr.ph426.i.i:                                    ; preds = %bb.fm
  %i.axz = sext i32 %i.avr to i64
  %i.aya = getelementptr inbounds nuw [4 x i8], ptr %i.ath, i64 %i.axz
  %i.ayb = xor i32 %indvars79.i, -1               ; 2 uses
  %i.ayc = getelementptr inbounds nuw [12 x i8], ptr %41, i64 %indvars.iv471.i.i ; 3 uses
  store ptr %i.ayc, ptr %42, align 8
  br label %bb.fn

.preheader410.i.i:                                ; preds = %.loopexit409.i.i, %bb.fm
  %i.ayd = icmp sgt i32 %i.axs, 0
  br i1 %i.ayd, label %.lr.ph450.i.i, label %.preheader410.i.i.._crit_edge451.i.i_crit_edge

.preheader410.i.i.._crit_edge451.i.i_crit_edge:   ; preds = %.preheader410.i.i
  %.pre816 = add i32 %indvars.iv77.i, 1
  br label %._crit_edge451.i.i

.lr.ph450.i.i:                                    ; preds = %.preheader410.i.i
  %i.aye = sext i32 %i.avr to i64                 ; 6 uses
  %i.ayf = getelementptr inbounds nuw [4 x i8], ptr %i.ath, i64 %i.aye ; 2 uses
  %i.ayg = getelementptr inbounds nuw [4 x i8], ptr %i.atg, i64 %i.aye ; 2 uses
  %i.ayh = shl nsw i32 %.1317.i.i, 3
  %i.ayi = sext i32 %i.ayh to i64                 ; 2 uses
  %i.ayj = getelementptr inbounds nuw [4 x i8], ptr %37, i64 %i.ayi
  %i.ayk = getelementptr inbounds nuw [4 x i8], ptr %38, i64 %i.ayi
  store ptr %38, ptr %43, align 8
  store ptr %i.ayk, ptr %i.atj, align 8
  %i.ayl = getelementptr inbounds nuw [4 x i8], ptr %i.atk, i64 %i.aye
  %i.aym = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.aye
  %i.ayn = getelementptr inbounds [36 x i8], ptr %i.atm, i64 %i.aye
  %invariant.gep.i.i = getelementptr [4 x i8], ptr %i.ayn, i64 %i.aye ; 3 uses
  %i.ayo = icmp sgt i32 %.1317.i.i, 0             ; 3 uses
  %i.ayp = add nsw i32 %.1317.i.i, -1
  %i.ayq = add nsw i32 %i.axs, -1                 ; 2 uses
  %i.ayr = icmp eq i64 %indvars.iv471.i.i, 1      ; 2 uses
  %i.ays = sub nuw nsw i64 1, %indvars.iv471.i.i
  %i.ayt = getelementptr [64 x i8], ptr %i.aox, i64 %i.ays ; 6 uses
  %i.ayu = zext i32 %.1317.i.i to i64             ; 4 uses
  %i.ayv = shl nuw nsw i64 %i.ayu, 5              ; 3 uses
  %i.ayw = zext i32 %i.ayp to i64                 ; 2 uses
  %i.ayx = add i32 %indvars.iv77.i, 1             ; 2 uses
  %i.ayy = getelementptr inbounds nuw [4 x i8], ptr %i.ari, i64 %indvars.iv488.i.i
  %i.ayz = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv488.i.i
  %indvars.iv.next491.i.i.prol = add nuw nsw i64 %indvars.iv488.i.i, 1
  %min.iters.check1189 = icmp ult i32 %.1317.i.i, 9
  %i.aza = and i64 %i.ayu, 7                      ; 2 uses
  %i.azb = icmp eq i64 %i.aza, 0
  %i.azc = select i1 %i.azb, i64 8, i64 %i.aza
  %n.vec1191 = sub nsw i64 %i.ayu, %i.azc         ; 2 uses
  %broadcast.splatinsert1192 = insertelement <8 x i64> poison, i64 %i.ayw, i64 0
  %broadcast.splat1193 = shufflevector <8 x i64> %broadcast.splatinsert1192, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1194 = insertelement <8 x i64> poison, i64 %i.avu, i64 0
  %broadcast.splat1195 = shufflevector <8 x i64> %broadcast.splatinsert1194, <8 x i64> poison, <8 x i32> zeroinitializer
  %min.iters.check1147 = icmp ult i32 %i.avg, 3
  %min.iters.check1149 = icmp ult i32 %i.avg, 31
  %i.azd = and i64 %i.avi, 28
  %n.vec1151 = and i64 %i.avi, 8589934560         ; 4 uses
  %i.aze = add i64 %indvars.iv471.i.i, %n.vec1151 ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %indvars.iv471.i.i, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nuw nsw <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %cmp.n1166 = icmp eq i64 %i.avi, %n.vec1151
  %min.epilog.iters.check1172 = icmp eq i64 %i.azd, 0
  %n.vec1174 = and i64 %i.avi, 8589934588         ; 3 uses
  %i.azf = add i64 %indvars.iv471.i.i, %n.vec1174
  %cmp.n1186 = icmp eq i64 %i.avi, %n.vec1174
  %i.azg = getelementptr inbounds nuw [12 x i8], ptr %40, i64 %indvars.iv471.i.i
  br label %bb.fp

bb.fn:                                            ; preds = %.loopexit409.i.i, %.lr.ph426.i.i
  %.0313424.i.i = phi i32 [ 0, %.lr.ph426.i.i ], [ %i.bbe, %.loopexit409.i.i ]
  br i1 %i.avt, label %.preheader408.critedge.i.i, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.azh = load i32, ptr %i.aya, align 4, !tbaa !210
  %i.azi = icmp sgt i32 %i.azh, 0
  %i.azj = load i32, ptr %i.aoy, align 8, !tbaa !208
  %i.azk = add i32 %i.azj, %i.ayb
  %i.azl = sext i32 %i.azk to i64                 ; 2 uses
  %i.azm = getelementptr inbounds nuw [12 x i8], ptr %i.avy, i64 %i.azl
  %i.azn = getelementptr inbounds nuw [12 x i8], ptr %i.ayc, i64 %i.azl
  store ptr %i.azn, ptr %i.ati, align 8
  call void @_Z10ddSendrecvIN3gmx11BasicVectorIfEEEvPK12gmx_domdec_tiiNS0_8ArrayRefIT_EES8_(ptr noundef nonnull %3, i32 noundef %indvars79.i, i32 noundef 0, ptr nonnull %i.avy, ptr nonnull %i.azm, ptr noundef nonnull byval(%"class.gmx::ArrayRef.598") align 8 %42)
  br i1 %i.azi, label %.preheader408.i.i, label %.loopexit409.i.i

.preheader408.critedge.i.i:                       ; preds = %bb.fn
  %i.azo = load i32, ptr %i.aoy, align 8, !tbaa !208
  %i.azp = add i32 %i.azo, %i.ayb
  %i.azq = sext i32 %i.azp to i64                 ; 2 uses
  %i.azr = getelementptr inbounds nuw [12 x i8], ptr %i.avy, i64 %i.azq
  %i.azs = getelementptr inbounds nuw [12 x i8], ptr %i.ayc, i64 %i.azq
  store ptr %i.azs, ptr %i.ati, align 8
  call void @_Z10ddSendrecvIN3gmx11BasicVectorIfEEEvPK12gmx_domdec_tiiNS0_8ArrayRefIT_EES8_(ptr noundef nonnull %3, i32 noundef %indvars79.i, i32 noundef 0, ptr nonnull %i.avy, ptr nonnull %i.azr, ptr noundef nonnull byval(%"class.gmx::ArrayRef.598") align 8 %42)
  br label %.preheader408.i.i

.preheader408.i.i:                                ; preds = %.preheader408.critedge.i.i, %bb.fo
  %i.azt = load i32, ptr %i.aoy, align 8, !tbaa !208
  %i.azu = add nsw i32 %i.azt, -1                 ; 3 uses
  %i.azv = sext i32 %i.azu to i64
  %i.azw = icmp slt i64 %indvars.iv471.i.i, %i.azv
  br i1 %i.azw, label %.lr.ph423.i.i.preheader, label %.loopexit409.i.i

.lr.ph423.i.i.preheader:                          ; preds = %.preheader408.i.i
  %i.azx = call i32 @llvm.smax.i32(i32 %i.avd, i32 %i.azu)
  %i.azy = add i32 %i.azx, %indvars.iv480.i.i     ; 2 uses
  %i.azz = zext i32 %i.azy to i64
  %i.baa = add nuw nsw i64 %i.azz, 1              ; 2 uses
  %min.iters.check1226 = icmp ult i32 %i.azy, 7
  br i1 %min.iters.check1226, label %.lr.ph423.i.i.preheader1702, label %vector.ph1227

vector.ph1227:                                    ; preds = %.lr.ph423.i.i.preheader
  %n.vec1228 = and i64 %i.baa, 8589934584         ; 3 uses
  %i.bab = add i64 %indvars.iv471.i.i, %n.vec1228
  br label %vector.body1229

vector.body1229:                                  ; preds = %vector.body1229, %vector.ph1227
  %index1230 = phi i64 [ 0, %vector.ph1227 ], [ %index.next1240, %vector.body1229 ] ; 2 uses
  %i.bac = add nuw i64 %indvars.iv471.i.i, %index1230 ; 2 uses
  %i.bad = getelementptr inbounds nuw [12 x i8], ptr %40, i64 %i.bac ; 2 uses
  %i.bae = getelementptr inbounds nuw [12 x i8], ptr %41, i64 %i.bac
  %wide.vec1231 = load <24 x float>, ptr %i.bad, align 4, !tbaa !211 ; 3 uses
  %strided.vec1232 = shufflevector <24 x float> %wide.vec1231, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec1233 = shufflevector <24 x float> %wide.vec1231, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22> ; 2 uses
  %strided.vec1234 = shufflevector <24 x float> %wide.vec1231, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23> ; 2 uses
  %wide.vec1235 = load <24 x float>, ptr %i.bae, align 4, !tbaa !211 ; 3 uses
  %strided.vec1236 = shufflevector <24 x float> %wide.vec1235, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec1237 = shufflevector <24 x float> %wide.vec1235, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22> ; 2 uses
  %strided.vec1238 = shufflevector <24 x float> %wide.vec1235, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23> ; 2 uses
  %i.baf = fcmp olt <8 x float> %strided.vec1232, %strided.vec1236
  %i.bag = select <8 x i1> %i.baf, <8 x float> %strided.vec1236, <8 x float> %strided.vec1232
  %i.bah = fcmp olt <8 x float> %strided.vec1237, %strided.vec1233
  %i.bai = select <8 x i1> %i.bah, <8 x float> %strided.vec1237, <8 x float> %strided.vec1233
  %i.baj = fcmp olt <8 x float> %strided.vec1238, %strided.vec1234
  %i.bak = select <8 x i1> %i.baj, <8 x float> %strided.vec1238, <8 x float> %strided.vec1234
  %i.bal = shufflevector <8 x float> %i.bag, <8 x float> %i.bai, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bam = shufflevector <8 x float> %i.bak, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec1239 = shufflevector <16 x float> %i.bal, <16 x float> %i.bam, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec1239, ptr %i.bad, align 4, !tbaa !211
  %index.next1240 = add nuw i64 %index1230, 8     ; 2 uses
  %i.ban = icmp eq i64 %index.next1240, %n.vec1228
  br i1 %i.ban, label %middle.block1241, label %vector.body1229, !llvm.loop !480

middle.block1241:                                 ; preds = %vector.body1229
  %cmp.n1242 = icmp eq i64 %i.baa, %n.vec1228
  br i1 %cmp.n1242, label %.loopexit409.i.i, label %.lr.ph423.i.i.preheader1702

.lr.ph423.i.i.preheader1702:                      ; preds = %.lr.ph423.i.i.preheader, %middle.block1241
  %indvars.iv484.i.i.ph = phi i64 [ %indvars.iv471.i.i, %.lr.ph423.i.i.preheader ], [ %i.bab, %middle.block1241 ]
  br label %.lr.ph423.i.i

.lr.ph423.i.i:                                    ; preds = %.lr.ph423.i.i.preheader1702, %.lr.ph423.i.i
  %indvars.iv484.i.i = phi i64 [ %indvars.iv.next485.i.i, %.lr.ph423.i.i ], [ %indvars.iv484.i.i.ph, %.lr.ph423.i.i.preheader1702 ] ; 3 uses
  %i.bao = getelementptr inbounds nuw [12 x i8], ptr %40, i64 %indvars.iv484.i.i ; 3 uses
  %i.bap = getelementptr inbounds nuw [12 x i8], ptr %41, i64 %indvars.iv484.i.i ; 2 uses
  %i.baq = load <2 x float>, ptr %i.bap, align 4, !tbaa !211 ; 3 uses
  %i.bar = load <2 x float>, ptr %i.bao, align 4, !tbaa !211 ; 3 uses
  %i.bas = shufflevector <2 x float> %i.bar, <2 x float> %i.baq, <2 x i32> <i32 0, i32 3>
  %i.bat = shufflevector <2 x float> %i.baq, <2 x float> %i.bar, <2 x i32> <i32 0, i32 3>
  %i.bau = fcmp olt <2 x float> %i.bas, %i.bat
  %i.bav = select <2 x i1> %i.bau, <2 x float> %i.baq, <2 x float> %i.bar
  store <2 x float> %i.bav, ptr %i.bao, align 4, !tbaa !211
  %i.baw = getelementptr inbounds nuw i8, ptr %i.bao, i64 8 ; 2 uses
  %i.bax = getelementptr inbounds nuw i8, ptr %i.bap, i64 8
  %i.bay = load float, ptr %i.bax, align 4, !tbaa !211 ; 2 uses
  %i.baz = load float, ptr %i.baw, align 4, !tbaa !211 ; 2 uses
  %i.bba = fcmp olt float %i.bay, %i.baz
  %i.bbb = select i1 %i.bba, float %i.bay, float %i.baz
  store float %i.bbb, ptr %i.baw, align 4, !tbaa !211
  %indvars.iv.next485.i.i = add nuw nsw i64 %indvars.iv484.i.i, 1 ; 2 uses
  %i.bbc = trunc nuw i64 %indvars.iv.next485.i.i to i32
  %i.bbd = icmp sgt i32 %i.azu, %i.bbc
  br i1 %i.bbd, label %.lr.ph423.i.i, label %.loopexit409.i.i, !llvm.loop !481

.loopexit409.i.i:                                 ; preds = %.lr.ph423.i.i, %middle.block1241, %.preheader408.i.i, %bb.fo
  %i.bbe = add nuw nsw i32 %.0313424.i.i, 1       ; 2 uses
  %exitcond487.not.i.i = icmp eq i32 %i.bbe, %.0314.i.i
  br i1 %exitcond487.not.i.i, label %.preheader410.i.i, label %bb.fn, !llvm.loop !482

._crit_edge451.i.i:                               ; preds = %.critedge.i.i, %.preheader410.i.i.._crit_edge451.i.i_crit_edge
  %indvars.iv.next78.i.pre-phi = phi i32 [ %.pre816, %.preheader410.i.i.._crit_edge451.i.i_crit_edge ], [ %i.ayx, %.critedge.i.i ]
  %indvars.iv.next472.i.i = add nsw i64 %indvars.iv471.i.i, -1
  %indvars.iv.next481.i.i = add i32 %indvars.iv480.i.i, 1
  %indvars.iv.next489.i.i = add i64 %indvars.iv488.i.i, -1
  %indvar.next.i.i = add nuw nsw i64 %indvar.i.i, 1 ; 2 uses
  %exitcond522.not.i.i = icmp eq i64 %indvar.next.i.i, %i.att
  br i1 %exitcond522.not.i.i, label %._crit_edge455.i.i, label %bb.fi, !llvm.loop !483

bb.fp:                                            ; preds = %.critedge.i.i, %.lr.ph450.i.i
  %.0310448.i.i = phi i32 [ 0, %.lr.ph450.i.i ], [ %i.bhg, %.critedge.i.i ] ; 5 uses
  br i1 %i.avt, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.bbf = load i32, ptr %i.ayf, align 4, !tbaa !210
  %i.bbg = load i32, ptr %i.ayg, align 4, !tbaa !210
  %i.bbh = add nsw i32 %i.bbg, -1
  %i.bbi = icmp slt i32 %i.bbf, %i.bbh
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %i.bbj = phi i1 [ true, %bb.fp ], [ %i.bbi, %bb.fq ]
  call void @_Z10ddSendrecvIfEvPK12gmx_domdec_tiiN3gmx8ArrayRefIT_EES6_(ptr noundef %3, i32 noundef %indvars79.i, i32 noundef 1, ptr nonnull %37, ptr nonnull %i.ayj, ptr noundef nonnull byval(%"class.gmx::ArrayRef.564") align 8 %43)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ah, i8 0, i64 12, i1 false)
  %.not337.i.i = icmp eq i32 %.0310448.i.i, 0
  br i1 %.not337.i.i, label %.loopexit407.i.thread100.i, label %.preheader406.i.i

.preheader406.i.i:                                ; preds = %bb.fr
  %i.bbk = load i32, ptr %i.aoy, align 8, !tbaa !208 ; 4 uses
  %i.bbl = sext i32 %i.bbk to i64
  %i.bbm = icmp slt i64 %i.avu, %i.bbl
  br i1 %i.bbm, label %.lr.ph428.i.i, label %.loopexit407.i.thread.i

.lr.ph428.i.i:                                    ; preds = %.preheader406.i.i
  %i.bbn = load float, ptr %i.ayl, align 4, !tbaa !211
  %i.bbo = load float, ptr %i.atl, align 4, !tbaa !672
  %i.bbp = fsub float %i.bbn, %i.bbo              ; 5 uses
  %i.bbq = load float, ptr %i.atn, align 4, !tbaa !680 ; 5 uses
  %i.bbr = fmul float %i.bbq, %i.bbq              ; 3 uses
  %i.bbs = fneg float %i.bbp
  %i.bbt = fmul float %i.bbp, %i.bbs              ; 3 uses
  %.pre537.i.i = load i32, ptr %i.aym, align 4, !tbaa !210
  %.not338.i.i = icmp eq i32 %.pre537.i.i, 0      ; 3 uses
  %smax1742 = call i32 @llvm.smax.i32(i32 %i.bbk, i32 %i.ava) ; 2 uses
  %i.bbu = add i32 %indvars.iv480.i.i, %smax1742
  %xtraiter1743 = and i32 %i.bbu, 1
  %lcmp.mod1744.not = icmp eq i32 %xtraiter1743, 0
  br i1 %lcmp.mod1744.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph428.i.i
  br i1 %.not338.i.i, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %.prol.preheader
  %i.bbv = load i32, ptr %i.ayy, align 4, !tbaa !210
  %i.bbw = sext i32 %i.bbv to i64
  %gep.i.i.prol = getelementptr [12 x i8], ptr %invariant.gep.i.i, i64 %i.bbw
  %i.bbx = load float, ptr %gep.i.i.prol, align 4, !tbaa !211
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %.prol.preheader
  %.0308.i.i.prol = phi float [ %i.bbx, %bb.fs ], [ 0.000000e+00, %.prol.preheader ] ; 3 uses
  %i.bby = call float @llvm.fmuladd.f32(float %.0308.i.i.prol, float %.0308.i.i.prol, float 1.000000e+00) ; 2 uses
  %i.bbz = call float @llvm.fmuladd.f32(float %i.bby, float %i.bbr, float %i.bbt) ; 2 uses
  %i.bca = fcmp ogt float %i.bbz, 0.000000e+00
  br i1 %i.bca, label %bb.fu, label %.prol.loopexit.unr-lcssa

bb.fu:                                            ; preds = %bb.ft
  %i.bcb = call noundef float @sqrtf(float noundef %i.bbz) #19
  %i.bcc = call float @llvm.fmuladd.f32(float %.0308.i.i.prol, float %i.bbp, float %i.bcb)
  %i.bcd = fdiv float %i.bcc, %i.bby
  %i.bce = fsub float %i.bbq, %i.bcd
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.fu, %bb.ft
  %.sink.i.i.prol = phi float [ %i.bce, %bb.fu ], [ -1.000000e+00, %bb.ft ]
  store float %.sink.i.i.prol, ptr %i.ayz, align 4, !tbaa !211
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph428.i.i
  %indvars.iv490.i.i.unr = phi i64 [ %indvars.iv488.i.i, %.lr.ph428.i.i ], [ %indvars.iv.next491.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.bcf = sub i32 0, %smax1742
  %i.bcg = icmp eq i32 %i.avc, %i.bcf
  br i1 %i.bcg, label %.loopexit407.i.i, label %.lr.ph428.i.i.new

.lr.ph428.i.i.new:                                ; preds = %.prol.loopexit, %bb.gc
  %indvars.iv490.i.i = phi i64 [ %indvars.iv.next491.i.i.1, %bb.gc ], [ %indvars.iv490.i.i.unr, %.prol.loopexit ] ; 4 uses
  br i1 %.not338.i.i, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %.lr.ph428.i.i.new
  %i.bch = getelementptr inbounds nuw [4 x i8], ptr %i.ari, i64 %indvars.iv490.i.i
  %i.bci = load i32, ptr %i.bch, align 4, !tbaa !210
  %i.bcj = sext i32 %i.bci to i64
  %gep.i.i = getelementptr [12 x i8], ptr %invariant.gep.i.i, i64 %i.bcj
  %i.bck = load float, ptr %gep.i.i, align 4, !tbaa !211
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %.lr.ph428.i.i.new
  %.0308.i.i = phi float [ %i.bck, %bb.fv ], [ 0.000000e+00, %.lr.ph428.i.i.new ] ; 3 uses
  %i.bcl = call float @llvm.fmuladd.f32(float %.0308.i.i, float %.0308.i.i, float 1.000000e+00) ; 2 uses
  %i.bcm = call float @llvm.fmuladd.f32(float %i.bcl, float %i.bbr, float %i.bbt) ; 2 uses
  %i.bcn = fcmp ogt float %i.bcm, 0.000000e+00
  br i1 %i.bcn, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.bco = call noundef float @sqrtf(float noundef %i.bcm) #19
  %i.bcp = call float @llvm.fmuladd.f32(float %.0308.i.i, float %i.bbp, float %i.bco)
  %i.bcq = fdiv float %i.bcp, %i.bcl
  %i.bcr = fsub float %i.bbq, %i.bcq
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %.sink.i.i = phi float [ %i.bcr, %bb.fx ], [ -1.000000e+00, %bb.fw ]
  %i.bcs = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv490.i.i
  store float %.sink.i.i, ptr %i.bcs, align 4, !tbaa !211
  %indvars.iv.next491.i.i = add nuw nsw i64 %indvars.iv490.i.i, 1 ; 2 uses
  br i1 %.not338.i.i, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.bct = getelementptr inbounds nuw [4 x i8], ptr %i.ari, i64 %indvars.iv.next491.i.i
  %i.bcu = load i32, ptr %i.bct, align 4, !tbaa !210
  %i.bcv = sext i32 %i.bcu to i64
  %gep.i.i.1 = getelementptr [12 x i8], ptr %invariant.gep.i.i, i64 %i.bcv
  %i.bcw = load float, ptr %gep.i.i.1, align 4, !tbaa !211
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  %.0308.i.i.1 = phi float [ %i.bcw, %bb.fz ], [ 0.000000e+00, %bb.fy ] ; 3 uses
  %i.bcx = call float @llvm.fmuladd.f32(float %.0308.i.i.1, float %.0308.i.i.1, float 1.000000e+00) ; 2 uses
  %i.bcy = call float @llvm.fmuladd.f32(float %i.bcx, float %i.bbr, float %i.bbt) ; 2 uses
  %i.bcz = fcmp ogt float %i.bcy, 0.000000e+00
  br i1 %i.bcz, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.bda = call noundef float @sqrtf(float noundef %i.bcy) #19
  %i.bdb = call float @llvm.fmuladd.f32(float %.0308.i.i.1, float %i.bbp, float %i.bda)
  %i.bdc = fdiv float %i.bdb, %i.bcx
  %i.bdd = fsub float %i.bbq, %i.bdc
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %.sink.i.i.1 = phi float [ %i.bdd, %bb.gb ], [ -1.000000e+00, %bb.ga ]
  %i.bde = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next491.i.i
  store float %.sink.i.i.1, ptr %i.bde, align 4, !tbaa !211
  %indvars.iv.next491.i.i.1 = add nuw nsw i64 %indvars.iv490.i.i, 2 ; 2 uses
  %i.bdf = trunc nuw i64 %indvars.iv.next491.i.i.1 to i32
  %i.bdg = icmp sgt i32 %i.bbk, %i.bdf
  br i1 %i.bdg, label %.lr.ph428.i.i.new, label %.loopexit407.i.i, !llvm.loop !484

.loopexit407.i.i:                                 ; preds = %bb.gc, %.prol.loopexit
  br i1 %i.ayo, label %.lr.ph431.preheader.i.split.i, label %._crit_edge432.i.i

.loopexit407.i.thread100.i:                       ; preds = %bb.fr
  br i1 %i.ayo, label %.lr.ph431.preheader.i.thread101.i, label %._crit_edge432.i.i

.lr.ph431.preheader.i.thread101.i:                ; preds = %.loopexit407.i.thread100.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %37, ptr noundef nonnull align 16 dereferenceable(1) %38, i64 %i.ayv, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %39, ptr noundef nonnull align 16 dereferenceable(1) %38, i64 %i.ayv, i1 false)
  br label %._crit_edge432.i.i

.loopexit407.i.thread.i:                          ; preds = %.preheader406.i.i
  br i1 %i.ayo, label %.lr.ph431.preheader.i.split.i, label %._crit_edge432.i.i

.lr.ph431.preheader.i.split.i:                    ; preds = %.loopexit407.i.i, %.loopexit407.i.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %37, ptr noundef nonnull align 16 dereferenceable(1) %38, i64 %i.ayv, i1 false)
  br i1 %i.bbj, label %.lr.ph431.preheader.i.split.split.i, label %._crit_edge432.i.i

.lr.ph431.preheader.i.split.split.i:              ; preds = %.lr.ph431.preheader.i.split.i
  %i.bdh = icmp eq i32 %i.bbk, 3
  %or.cond3.i.i = and i1 %i.awv, %i.bdh           ; 2 uses
  br i1 %min.iters.check1189, label %.lr.ph431.i.i.preheader, label %vector.body1196

.lr.ph431.i.i.preheader:                          ; preds = %vector.body1196, %.lr.ph431.preheader.i.split.split.i
  %indvars.iv493.i.i.ph = phi i64 [ 0, %.lr.ph431.preheader.i.split.split.i ], [ %n.vec1191, %vector.body1196 ]
  br label %.lr.ph431.i.i

vector.body1196:                                  ; preds = %.lr.ph431.preheader.i.split.split.i, %vector.body1196
  %index1197 = phi i64 [ %index.next1221, %vector.body1196 ], [ 0, %.lr.ph431.preheader.i.split.split.i ]
  %vec.ind1198 = phi <8 x i64> [ %vec.ind.next1222, %vector.body1196 ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %.lr.ph431.preheader.i.split.split.i ] ; 4 uses
  %wide.gep1199 = getelementptr inbounds nuw [32 x i8], ptr %39, <8 x i64> %vec.ind1198 ; 6 uses
  %wide.gep1200 = getelementptr inbounds nuw [32 x i8], ptr %38, <8 x i64> %vec.ind1198 ; 5 uses
  %wide.masked.gather1201 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1200, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !211 ; 2 uses
  %wide.masked.gather1202 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1199, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !211 ; 2 uses
  %i.bdi = fcmp olt <8 x float> %wide.masked.gather1201, %wide.masked.gather1202
  %i.bdj = select <8 x i1> %i.bdi, <8 x float> %wide.masked.gather1201, <8 x float> %wide.masked.gather1202
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.bdj, <8 x ptr> align 16 %wide.gep1199, <8 x i1> splat (i1 true)), !tbaa !667
  %wide.gep1203 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1199, i64 4 ; 2 uses
  %wide.gep1204 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1200, i64 4
  %wide.masked.gather1205 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1203, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !211 ; 2 uses
  %wide.masked.gather1206 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1204, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !211 ; 2 uses
  %i.bdk = fcmp olt <8 x float> %wide.masked.gather1205, %wide.masked.gather1206
  %i.bdl = select <8 x i1> %i.bdk, <8 x float> %wide.masked.gather1206, <8 x float> %wide.masked.gather1205
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.bdl, <8 x ptr> align 4 %wide.gep1203, <8 x i1> splat (i1 true)), !tbaa !668
  %wide.gep1207 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1199, i64 8 ; 2 uses
  %wide.gep1208 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1200, i64 8
  %wide.masked.gather1209 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1208, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !211 ; 2 uses
  %wide.masked.gather1210 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1207, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !211 ; 2 uses
  %i.bdm = fcmp olt <8 x float> %wide.masked.gather1209, %wide.masked.gather1210
  %i.bdn = select <8 x i1> %i.bdm, <8 x float> %wide.masked.gather1209, <8 x float> %wide.masked.gather1210
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.bdn, <8 x ptr> align 8 %wide.gep1207, <8 x i1> splat (i1 true)), !tbaa !669
  %i.bdo = icmp eq <8 x i64> %vec.ind1198, %broadcast.splat1193
  %i.bdp = select i1 %or.cond3.i.i, <8 x i1> %i.bdo, <8 x i1> zeroinitializer
  %i.bdq = select <8 x i1> %i.bdp, <8 x i64> splat (i64 1), <8 x i64> %broadcast.splat1195
  %wide.gep1211 = getelementptr inbounds nuw [4 x i8], ptr %i.ah, <8 x i64> %i.bdq
  %wide.masked.gather1212 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1211, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !211 ; 3 uses
end_hunk_0
