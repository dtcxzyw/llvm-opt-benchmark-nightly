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

common.resume:                                    ; preds = %bb.qv, %bb.qy, %bb.rg, %_ZN14DDBufferAccessIiED2Ev.exit238.i, %bb.jj, %bb.fe
  %common.resume.op = phi { ptr, i32 } [ %i.arc, %bb.fe ], [ %.pn.i, %bb.jj ], [ %.pn.pn.pn.pn.i, %_ZN14DDBufferAccessIiED2Ev.exit238.i ], [ %.pn446.pn, %bb.rg ], [ %.pn.i587, %bb.qy ], [ %.pn.i587, %bb.qv ]
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
  br i1 %or.cond.i513, label %.thread1005, label %._crit_edge.thread.i

.thread1005:                                      ; preds = %._crit_edge.i512
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

.lr.ph.i.i:                                       ; preds = %.thread1005, %bb.fg
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
  %xtraiter1742 = and i64 %wide.trip.count.i.i504, 1
  %i.ask = icmp eq i32 %i.aoz, 3
  br i1 %i.ask, label %.epil.preheader1741, label %.peel.next.i.i.new

.peel.next.i.i.new:                               ; preds = %.peel.next.i.i
  %i.asl = and i64 %wide.trip.count.i.i504, 4294967294
  %i.asm = add nsw i64 %i.asl, -4
  br label %bb.fh

.lr.ph454.i.i.loopexit.unr-lcssa:                 ; preds = %bb.fh
  %lcmp.mod1744.not = icmp eq i64 %xtraiter1742, 0
  br i1 %lcmp.mod1744.not, label %.lr.ph454.i.i, label %.epil.preheader1741

.epil.preheader1741:                              ; preds = %.lr.ph454.i.i.loopexit.unr-lcssa, %.peel.next.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 2, %.peel.next.i.i ], [ %indvars.iv.next.i.i.1, %.lr.ph454.i.i.loopexit.unr-lcssa ]
  %lcmp.mod1745 = trunc i32 %i.aoz to i1
  call void @llvm.assume(i1 %lcmp.mod1745)
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

.lr.ph454.i.i:                                    ; preds = %.epil.preheader1741, %.lr.ph454.i.i.loopexit.unr-lcssa, %.lr.ph.i.i
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
  %i.ats = add i32 %i.aoz, -1                     ; 2 uses
  %i.att = zext nneg i32 %i.ats to i64            ; 2 uses
  %i.atu = shl nuw nsw i64 %i.atq, 5
  %i.atv = add nuw nsw i64 %i.atu, 776
  %i.atw = sub nsw i32 3, %i.aoz
  %invariant.op = sub i32 2, %i.aoz
  %invariant.op1875 = sub i32 3, %i.aoz
  br label %bb.fi

bb.fh:                                            ; preds = %bb.fh, %.peel.next.i.i.new
  %indvars.iv.i.i = phi i64 [ 2, %.peel.next.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.fh ] ; 3 uses
  %niter1747 = phi i64 [ 0, %.peel.next.i.i.new ], [ %niter1747.next.1, %bb.fh ] ; 2 uses
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
  %niter1747.next.1 = add i64 %niter1747, 2
  %niter1747.ncmp.1 = icmp eq i64 %niter1747, %i.asm
  br i1 %niter1747.ncmp.1, label %.lr.ph454.i.i.loopexit.unr-lcssa, label %bb.fh, !llvm.loop !477

._crit_edge455.i.i:                               ; preds = %._crit_edge451.i.i
  %.pre538.i.i = load i32, ptr %i.aoy, align 8, !tbaa !208
  %i.auy = icmp sgt i32 %.pre538.i.i, 1
  br i1 %i.auy, label %bb.gk, label %_ZL13dd_move_cellxP12gmx_domdec_tPK11gmx_ddbox_tPfS4_.exit.i.thread

bb.fi:                                            ; preds = %._crit_edge451.i.i, %.lr.ph454.i.i
  %indvars.iv77.i = phi i32 [ %indvars.iv.next78.i.pre-phi, %._crit_edge451.i.i ], [ %i.atw, %.lr.ph454.i.i ] ; 2 uses
  %indvar.i.i = phi i64 [ %indvar.next.i.i, %._crit_edge451.i.i ], [ 0, %.lr.ph454.i.i ] ; 7 uses
  %indvars.iv488.i.i = phi i64 [ %indvars.iv.next489.i.i, %._crit_edge451.i.i ], [ %i.att, %.lr.ph454.i.i ] ; 5 uses
  %indvars.iv480.i.i = phi i32 [ %indvars.iv.next481.i.i, %._crit_edge451.i.i ], [ %i.atr, %.lr.ph454.i.i ] ; 5 uses
  %indvars.iv471.i.i = phi i64 [ %indvars.iv.next472.i.i, %._crit_edge451.i.i ], [ %i.atq, %.lr.ph454.i.i ] ; 28 uses
  %i.auz = trunc i64 %indvar.i.i to i32
  %i.ava = sub i32 %i.aoz, %i.auz
  %i.avb = trunc i64 %indvar.i.i to i32
  %i.avc = sub i32 %i.avb, %i.aoz
  %i.avd = trunc i64 %indvars.iv471.i.i to i32
  %smax = call i32 @llvm.smax.i32(i32 %i.avd, i32 1)
  %i.ave = trunc i64 %indvar.i.i to i32
  %.reass = add i32 %i.ave, %invariant.op
  %i.avf = add i32 %smax, %.reass                 ; 3 uses
  %i.avg = zext i32 %i.avf to i64
  %i.avh = add nuw nsw i64 %i.avg, 1              ; 5 uses
  %indvars79.i = trunc i64 %indvars.iv471.i.i to i32 ; 4 uses
  %i.avi = shl i64 %indvar.i.i, 5
  %i.avj = sub i64 %i.atv, %i.avi
  %scevgep.i.i = getelementptr i8, ptr %i.aox, i64 %i.avj
  %i.avk = trunc i64 %indvar.i.i to i32
  %.reass.i.reass.i.reass.reass = add i32 %i.avk, %invariant.op1875
  %i.avl = zext i32 %.reass.i.reass.i.reass.reass to i64 ; 2 uses
  %i.avm = shl nuw nsw i64 %i.avl, 6
  %scevgep510.i.i = getelementptr i8, ptr %scevgep.i.i, i64 %i.avm
  %i.avn = shl nuw nsw i64 %i.avl, 5
  %i.avo = add nuw nsw i64 %i.avn, 32
  %i.avp = getelementptr inbounds nuw [4 x i8], ptr %i.ari, i64 %indvars.iv471.i.i
  %i.avq = load i32, ptr %i.avp, align 4, !tbaa !210 ; 5 uses
  %i.avr = load i32, ptr %51, align 4, !tbaa !665
  %i.avs = icmp slt i32 %i.avq, %i.avr            ; 4 uses
  %i.avt = add nuw nsw i64 %indvars.iv471.i.i, 1  ; 4 uses
  %i.avu = getelementptr inbounds nuw [48 x i8], ptr %i.atb, i64 %i.avt ; 2 uses
  %i.avv = getelementptr inbounds nuw i8, ptr %i.avu, i64 32
  %i.avw = load float, ptr %i.avv, align 8, !tbaa !227
  %i.avx = getelementptr inbounds nuw [12 x i8], ptr %40, i64 %indvars.iv471.i.i ; 6 uses
  store float %i.avw, ptr %i.avx, align 4, !tbaa !211
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avu, i64 36
  %i.avz = load float, ptr %i.avy, align 4, !tbaa !225
  %i.awa = getelementptr inbounds nuw i8, ptr %i.avx, i64 4
  %i.awb = insertelement <2 x float> poison, float %i.avz, i64 0
  %i.awc = shufflevector <2 x float> %i.awb, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %i.awc, ptr %i.awa, align 4, !tbaa !211
  %i.awd = load i32, ptr %i.aoy, align 8, !tbaa !208 ; 4 uses
  %i.awe = add nsw i32 %i.awd, -1
  %i.awf = sext i32 %i.awe to i64
  %i.awg = icmp slt i64 %indvars.iv471.i.i, %i.awf
  br i1 %i.awg, label %.lr.ph418.i.i, label %._crit_edge419.i.i

.lr.ph418.i.i:                                    ; preds = %bb.fi
  %i.awh = sext i32 %i.avq to i64
  %i.awi = getelementptr inbounds nuw [4 x i8], ptr %i.atd, i64 %i.awh
  %i.awj = add i32 %i.awd, %indvars.iv480.i.i     ; 4 uses
  %wide.trip.count482.i.i = zext i32 %i.awj to i64 ; 3 uses
  %.pre.i.i = load float, ptr %i.awi, align 4, !tbaa !211 ; 2 uses
  %min.iters.check1255 = icmp ult i32 %i.awj, 8
  br i1 %min.iters.check1255, label %scalar.ph1254.preheader, label %vector.ph1256

vector.ph1256:                                    ; preds = %.lr.ph418.i.i
  %n.vec1257 = and i64 %wide.trip.count482.i.i, 4294967288 ; 4 uses
  %i.awk = add i64 %indvars.iv471.i.i, %n.vec1257
  %broadcast.splatinsert1258 = insertelement <8 x float> poison, float %.pre.i.i, i64 0
  %broadcast.splat1259 = shufflevector <8 x float> %broadcast.splatinsert1258, <8 x float> poison, <8 x i32> zeroinitializer
  %i.awl = getelementptr inbounds nuw [12 x i8], ptr %40, i64 %indvars.iv471.i.i
  br label %vector.body1260

vector.body1260:                                  ; preds = %vector.body1260, %vector.ph1256
  %index1261 = phi i64 [ 0, %vector.ph1256 ], [ %index.next1275, %vector.body1260 ] ; 2 uses
  %vec.ind1262 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph1256 ], [ %vec.ind.next1276, %vector.body1260 ] ; 2 uses
  %wide.gep1263 = getelementptr inbounds nuw [32 x i8], ptr %37, <8 x i64> %vec.ind1262 ; 8 uses
  %i.awm = getelementptr inbounds nuw [12 x i8], ptr %i.awl, i64 %index1261
  %wide.vec1264 = load <24 x float>, ptr %i.awm, align 4, !tbaa !211 ; 3 uses
  %strided.vec1265 = shufflevector <24 x float> %wide.vec1264, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1266 = shufflevector <24 x float> %wide.vec1264, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1267 = shufflevector <24 x float> %wide.vec1264, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec1266, <8 x ptr> align 4 %wide.gep1263, <8 x i1> splat (i1 true)), !tbaa !667
  %wide.gep1268 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1263, i64 4
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec1265, <8 x ptr> align 4 %wide.gep1268, <8 x i1> splat (i1 true)), !tbaa !668
  %wide.gep1269 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1263, i64 8
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec1267, <8 x ptr> align 4 %wide.gep1269, <8 x i1> splat (i1 true)), !tbaa !669
  %wide.gep1270 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1263, i64 12
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 4 %wide.gep1270, <8 x i1> splat (i1 true)), !tbaa !670
  %wide.gep1271 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1263, i64 16
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 4 %wide.gep1271, <8 x i1> splat (i1 true)), !tbaa !671
  %wide.gep1272 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1263, i64 20
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %broadcast.splat1259, <8 x ptr> align 4 %wide.gep1272, <8 x i1> splat (i1 true)), !tbaa !672
  %wide.gep1273 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1263, i64 24
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 4 %wide.gep1273, <8 x i1> splat (i1 true)), !tbaa !673
  %wide.gep1274 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1263, i64 28
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> splat (float 1.000000e+00), <8 x ptr> align 4 %wide.gep1274, <8 x i1> splat (i1 true)), !tbaa !674
  %index.next1275 = add nuw i64 %index1261, 8     ; 2 uses
  %vec.ind.next1276 = add nuw nsw <8 x i64> %vec.ind1262, splat (i64 8)
  %i.awn = icmp eq i64 %index.next1275, %n.vec1257
  br i1 %i.awn, label %middle.block1277, label %vector.body1260, !llvm.loop !478

middle.block1277:                                 ; preds = %vector.body1260
  %cmp.n1278 = icmp eq i64 %n.vec1257, %wide.trip.count482.i.i
  br i1 %cmp.n1278, label %._crit_edge419.i.i, label %scalar.ph1254.preheader

scalar.ph1254.preheader:                          ; preds = %.lr.ph418.i.i, %middle.block1277
  %indvars.iv475.i.i.ph = phi i64 [ 0, %.lr.ph418.i.i ], [ %n.vec1257, %middle.block1277 ]
  %indvars.iv473.i.i.ph = phi i64 [ %indvars.iv471.i.i, %.lr.ph418.i.i ], [ %i.awk, %middle.block1277 ]
  br label %scalar.ph1254

._crit_edge419.i.i:                               ; preds = %scalar.ph1254, %middle.block1277, %bb.fi
  %.0316.lcssa.i.i = phi i32 [ 0, %bb.fi ], [ %i.awj, %middle.block1277 ], [ %i.awj, %scalar.ph1254 ] ; 3 uses
  %i.awo = icmp eq i32 %i.awd, 2
  %.v.i.i = select i1 %i.awo, i64 712, i64 776
  %i.awp = getelementptr inbounds nuw i8, ptr %i.aox, i64 %.v.i.i
  %i.awq = zext nneg i32 %.0316.lcssa.i.i to i64
  %i.awr = getelementptr inbounds nuw [32 x i8], ptr %37, i64 %i.awq ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.awr, ptr noundef nonnull align 4 dereferenceable(32) %i.awp, i64 32, i1 false), !tbaa.struct !676
  %i.aws = add nuw nsw i32 %.0316.lcssa.i.i, 1    ; 2 uses
  %i.awt = icmp eq i32 %i.awd, 3
  %i.awu = icmp eq i64 %indvars.iv471.i.i, 0      ; 5 uses
  %or.cond.i.i = and i1 %i.awu, %i.awt
  br i1 %or.cond.i.i, label %bb.fj, label %bb.fk

scalar.ph1254:                                    ; preds = %scalar.ph1254.preheader, %scalar.ph1254
  %indvars.iv475.i.i = phi i64 [ %indvars.iv.next476.i.i, %scalar.ph1254 ], [ %indvars.iv475.i.i.ph, %scalar.ph1254.preheader ] ; 2 uses
  %indvars.iv473.i.i = phi i64 [ %indvars.iv.next474.i.i, %scalar.ph1254 ], [ %indvars.iv473.i.i.ph, %scalar.ph1254.preheader ] ; 2 uses
  %i.awv = getelementptr inbounds nuw [32 x i8], ptr %37, i64 %indvars.iv475.i.i ; 5 uses
  %i.aww = getelementptr inbounds nuw [12 x i8], ptr %40, i64 %indvars.iv473.i.i ; 2 uses
  %i.awx = load <2 x float>, ptr %i.aww, align 4, !tbaa !211
  %i.awy = shufflevector <2 x float> %i.awx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.awy, ptr %i.awv, align 16, !tbaa !211
  %i.awz = getelementptr inbounds nuw i8, ptr %i.aww, i64 8
  %i.axa = load float, ptr %i.awz, align 4, !tbaa !211
  %i.axb = getelementptr inbounds nuw i8, ptr %i.awv, i64 8
  store float %i.axa, ptr %i.axb, align 8, !tbaa !669
  %i.axc = getelementptr inbounds nuw i8, ptr %i.awv, i64 12
  store <2 x float> zeroinitializer, ptr %i.axc, align 4, !tbaa !211
  %i.axd = getelementptr inbounds nuw i8, ptr %i.awv, i64 20
  store float %.pre.i.i, ptr %i.axd, align 4, !tbaa !672
  %i.axe = getelementptr inbounds nuw i8, ptr %i.awv, i64 24
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.axe, align 8, !tbaa !211
  %indvars.iv.next476.i.i = add nuw nsw i64 %indvars.iv475.i.i, 1 ; 2 uses
  %indvars.iv.next474.i.i = add nuw nsw i64 %indvars.iv473.i.i, 1
  %exitcond483.not.i.i = icmp eq i64 %indvars.iv.next476.i.i, %wide.trip.count482.i.i
  br i1 %exitcond483.not.i.i, label %._crit_edge419.i.i, label %scalar.ph1254, !llvm.loop !479

bb.fj:                                            ; preds = %._crit_edge419.i.i
  %i.axf = zext nneg i32 %i.aws to i64
  %i.axg = getelementptr inbounds nuw [32 x i8], ptr %37, i64 %i.axf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.axg, ptr noundef nonnull align 8 dereferenceable(32) %i.ate, i64 32, i1 false), !tbaa.struct !676
  %i.axh = getelementptr inbounds nuw i8, ptr %i.awr, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.axh, ptr noundef nonnull align 8 dereferenceable(32) %i.arl, i64 32, i1 false), !tbaa.struct !676
  %i.axi = add nuw nsw i32 %.0316.lcssa.i.i, 3
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %._crit_edge419.i.i
  %.1317.i.i = phi i32 [ %i.axi, %bb.fj ], [ %i.aws, %._crit_edge419.i.i ] ; 5 uses
  %i.axj = getelementptr inbounds nuw [32 x i8], ptr %i.atf, i64 %indvars.iv471.i.i ; 2 uses
  %i.axk = getelementptr inbounds nuw i8, ptr %i.axj, i64 8
  %i.axl = load ptr, ptr %i.axk, align 8, !tbaa !678
  %i.axm = load ptr, ptr %i.axj, align 8, !tbaa !679
  %i.axn = ptrtoint ptr %i.axl to i64
  %i.axo = ptrtoint ptr %i.axm to i64
  %i.axp = sub i64 %i.axn, %i.axo
  %i.axq = sdiv exact i64 %i.axp, 112
  %i.axr = trunc i64 %i.axq to i32                ; 7 uses
  br i1 %i.avs, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  %i.axs = sext i32 %i.avq to i64
  %i.axt = getelementptr inbounds nuw [4 x i8], ptr %i.atg, i64 %i.axs
  %i.axu = load i32, ptr %i.axt, align 4, !tbaa !210
  %i.axv = xor i32 %i.axr, -1
  %i.axw = add i32 %i.axu, %i.axv
  %.sroa.speculated371.i.i = call i32 @llvm.smin.i32(i32 %i.axw, i32 %i.axr)
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %.0314.i.i = phi i32 [ %.sroa.speculated371.i.i, %bb.fl ], [ %i.axr, %bb.fk ] ; 2 uses
  %i.axx = icmp sgt i32 %.0314.i.i, 0
  br i1 %i.axx, label %.lr.ph426.i.i, label %.preheader410.i.i

.lr.ph426.i.i:                                    ; preds = %bb.fm
  %i.axy = sext i32 %i.avq to i64
  %i.axz = getelementptr inbounds nuw [4 x i8], ptr %i.ath, i64 %i.axy
  %i.aya = xor i32 %indvars79.i, -1               ; 2 uses
  %i.ayb = getelementptr inbounds nuw [12 x i8], ptr %41, i64 %indvars.iv471.i.i ; 3 uses
  store ptr %i.ayb, ptr %42, align 8
  %74 = trunc i64 %indvar.i.i to i32
  %75 = sub i32 %i.ats, %74
  br label %bb.fn

.preheader410.i.i:                                ; preds = %.loopexit409.i.i, %bb.fm
  %i.ayc = icmp sgt i32 %i.axr, 0
  br i1 %i.ayc, label %.lr.ph450.i.i, label %.preheader410.i.i.._crit_edge451.i.i_crit_edge

.preheader410.i.i.._crit_edge451.i.i_crit_edge:   ; preds = %.preheader410.i.i
  %.pre818 = add i32 %indvars.iv77.i, 1
  br label %._crit_edge451.i.i

.lr.ph450.i.i:                                    ; preds = %.preheader410.i.i
  %i.ayd = sext i32 %i.avq to i64                 ; 6 uses
  %i.aye = getelementptr inbounds nuw [4 x i8], ptr %i.ath, i64 %i.ayd ; 2 uses
  %i.ayf = getelementptr inbounds nuw [4 x i8], ptr %i.atg, i64 %i.ayd ; 2 uses
  %i.ayg = shl nsw i32 %.1317.i.i, 3
  %i.ayh = sext i32 %i.ayg to i64                 ; 2 uses
  %i.ayi = getelementptr inbounds nuw [4 x i8], ptr %37, i64 %i.ayh
  %i.ayj = getelementptr inbounds nuw [4 x i8], ptr %38, i64 %i.ayh
  store ptr %38, ptr %43, align 8
  store ptr %i.ayj, ptr %i.atj, align 8
  %i.ayk = getelementptr inbounds nuw [4 x i8], ptr %i.atk, i64 %i.ayd
  %i.ayl = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ayd
  %i.aym = getelementptr inbounds [36 x i8], ptr %i.atm, i64 %i.ayd
  %invariant.gep.i.i = getelementptr [4 x i8], ptr %i.aym, i64 %i.ayd ; 3 uses
  %i.ayn = icmp sgt i32 %.1317.i.i, 0             ; 3 uses
  %i.ayo = add nsw i32 %.1317.i.i, -1
  %i.ayp = add nsw i32 %i.axr, -1                 ; 2 uses
  %i.ayq = icmp eq i64 %indvars.iv471.i.i, 1      ; 2 uses
  %i.ayr = sub nuw nsw i64 1, %indvars.iv471.i.i
  %i.ays = getelementptr [64 x i8], ptr %i.aox, i64 %i.ayr ; 6 uses
  %i.ayt = zext i32 %.1317.i.i to i64             ; 4 uses
  %i.ayu = shl nuw nsw i64 %i.ayt, 5              ; 3 uses
  %i.ayv = zext i32 %i.ayo to i64                 ; 2 uses
  %i.ayw = add i32 %indvars.iv77.i, 1             ; 2 uses
  %i.ayx = getelementptr inbounds nuw [4 x i8], ptr %i.ari, i64 %indvars.iv488.i.i
  %i.ayy = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv488.i.i
  %indvars.iv.next491.i.i.prol = add nuw nsw i64 %indvars.iv488.i.i, 1
  %min.iters.check1199 = icmp ult i32 %.1317.i.i, 9
  %i.ayz = and i64 %i.ayt, 7                      ; 2 uses
  %i.aza = icmp eq i64 %i.ayz, 0
  %i.azb = select i1 %i.aza, i64 8, i64 %i.ayz
  %n.vec1201 = sub nsw i64 %i.ayt, %i.azb         ; 2 uses
  %broadcast.splatinsert1202 = insertelement <8 x i64> poison, i64 %i.ayv, i64 0
  %broadcast.splat1203 = shufflevector <8 x i64> %broadcast.splatinsert1202, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1204 = insertelement <8 x i64> poison, i64 %i.avt, i64 0
  %broadcast.splat1205 = shufflevector <8 x i64> %broadcast.splatinsert1204, <8 x i64> poison, <8 x i32> zeroinitializer
  %min.iters.check1157 = icmp ult i32 %i.avf, 3
  %min.iters.check1159 = icmp ult i32 %i.avf, 31
  %i.azc = and i64 %i.avh, 28
  %n.vec1161 = and i64 %i.avh, 8589934560         ; 4 uses
  %i.azd = add i64 %indvars.iv471.i.i, %n.vec1161 ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %indvars.iv471.i.i, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nuw nsw <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %cmp.n1176 = icmp eq i64 %i.avh, %n.vec1161
  %min.epilog.iters.check1182 = icmp eq i64 %i.azc, 0
  %n.vec1184 = and i64 %i.avh, 8589934588         ; 3 uses
  %i.aze = add i64 %indvars.iv471.i.i, %n.vec1184
  %cmp.n1196 = icmp eq i64 %i.avh, %n.vec1184
  %i.azf = getelementptr inbounds nuw [12 x i8], ptr %40, i64 %indvars.iv471.i.i
  br label %bb.fp

bb.fn:                                            ; preds = %.loopexit409.i.i, %.lr.ph426.i.i
  %.0313424.i.i = phi i32 [ 0, %.lr.ph426.i.i ], [ %i.bbd, %.loopexit409.i.i ]
  br i1 %i.avs, label %.preheader408.critedge.i.i, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.azg = load i32, ptr %i.axz, align 4, !tbaa !210
  %i.azh = icmp sgt i32 %i.azg, 0
  %i.azi = load i32, ptr %i.aoy, align 8, !tbaa !208
  %i.azj = add i32 %i.azi, %i.aya
  %i.azk = sext i32 %i.azj to i64                 ; 2 uses
  %i.azl = getelementptr inbounds nuw [12 x i8], ptr %i.avx, i64 %i.azk
  %i.azm = getelementptr inbounds nuw [12 x i8], ptr %i.ayb, i64 %i.azk
  store ptr %i.azm, ptr %i.ati, align 8
  call void @_Z10ddSendrecvIN3gmx11BasicVectorIfEEEvPK12gmx_domdec_tiiNS0_8ArrayRefIT_EES8_(ptr noundef nonnull %3, i32 noundef %indvars79.i, i32 noundef 0, ptr nonnull %i.avx, ptr nonnull %i.azl, ptr noundef nonnull byval(%"class.gmx::ArrayRef.598") align 8 %42)
  br i1 %i.azh, label %.preheader408.i.i, label %.loopexit409.i.i

.preheader408.critedge.i.i:                       ; preds = %bb.fn
  %i.azn = load i32, ptr %i.aoy, align 8, !tbaa !208
  %i.azo = add i32 %i.azn, %i.aya
  %i.azp = sext i32 %i.azo to i64                 ; 2 uses
  %i.azq = getelementptr inbounds nuw [12 x i8], ptr %i.avx, i64 %i.azp
  %i.azr = getelementptr inbounds nuw [12 x i8], ptr %i.ayb, i64 %i.azp
  store ptr %i.azr, ptr %i.ati, align 8
  call void @_Z10ddSendrecvIN3gmx11BasicVectorIfEEEvPK12gmx_domdec_tiiNS0_8ArrayRefIT_EES8_(ptr noundef nonnull %3, i32 noundef %indvars79.i, i32 noundef 0, ptr nonnull %i.avx, ptr nonnull %i.azq, ptr noundef nonnull byval(%"class.gmx::ArrayRef.598") align 8 %42)
  br label %.preheader408.i.i

.preheader408.i.i:                                ; preds = %.preheader408.critedge.i.i, %bb.fo
  %i.azs = load i32, ptr %i.aoy, align 8, !tbaa !208
  %i.azt = add nsw i32 %i.azs, -1                 ; 3 uses
  %i.azu = sext i32 %i.azt to i64
  %i.azv = icmp slt i64 %indvars.iv471.i.i, %i.azu
  br i1 %i.azv, label %.lr.ph423.i.i.preheader, label %.loopexit409.i.i

.lr.ph423.i.i.preheader:                          ; preds = %.preheader408.i.i
  %i.azw = call i32 @llvm.smax.i32(i32 %75, i32 %i.azt)
  %i.azx = add i32 %i.azw, %indvars.iv480.i.i     ; 2 uses
  %i.azy = zext i32 %i.azx to i64
  %i.azz = add nuw nsw i64 %i.azy, 1              ; 2 uses
  %min.iters.check1236 = icmp ult i32 %i.azx, 7
  br i1 %min.iters.check1236, label %.lr.ph423.i.i.preheader1708, label %vector.ph1237

vector.ph1237:                                    ; preds = %.lr.ph423.i.i.preheader
  %n.vec1238 = and i64 %i.azz, 8589934584         ; 3 uses
  %i.baa = add i64 %indvars.iv471.i.i, %n.vec1238
  br label %vector.body1239

vector.body1239:                                  ; preds = %vector.body1239, %vector.ph1237
  %index1240 = phi i64 [ 0, %vector.ph1237 ], [ %index.next1250, %vector.body1239 ] ; 2 uses
  %i.bab = add nuw i64 %indvars.iv471.i.i, %index1240 ; 2 uses
  %i.bac = getelementptr inbounds nuw [12 x i8], ptr %40, i64 %i.bab ; 2 uses
  %i.bad = getelementptr inbounds nuw [12 x i8], ptr %41, i64 %i.bab
  %wide.vec1241 = load <24 x float>, ptr %i.bac, align 4, !tbaa !211 ; 3 uses
  %strided.vec1242 = shufflevector <24 x float> %wide.vec1241, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec1243 = shufflevector <24 x float> %wide.vec1241, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22> ; 2 uses
  %strided.vec1244 = shufflevector <24 x float> %wide.vec1241, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23> ; 2 uses
  %wide.vec1245 = load <24 x float>, ptr %i.bad, align 4, !tbaa !211 ; 3 uses
  %strided.vec1246 = shufflevector <24 x float> %wide.vec1245, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec1247 = shufflevector <24 x float> %wide.vec1245, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22> ; 2 uses
  %strided.vec1248 = shufflevector <24 x float> %wide.vec1245, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23> ; 2 uses
  %i.bae = fcmp olt <8 x float> %strided.vec1242, %strided.vec1246
  %i.baf = select <8 x i1> %i.bae, <8 x float> %strided.vec1246, <8 x float> %strided.vec1242
  %i.bag = fcmp olt <8 x float> %strided.vec1247, %strided.vec1243
  %i.bah = select <8 x i1> %i.bag, <8 x float> %strided.vec1247, <8 x float> %strided.vec1243
  %i.bai = fcmp olt <8 x float> %strided.vec1248, %strided.vec1244
  %i.baj = select <8 x i1> %i.bai, <8 x float> %strided.vec1248, <8 x float> %strided.vec1244
  %i.bak = shufflevector <8 x float> %i.baf, <8 x float> %i.bah, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bal = shufflevector <8 x float> %i.baj, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec1249 = shufflevector <16 x float> %i.bak, <16 x float> %i.bal, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec1249, ptr %i.bac, align 4, !tbaa !211
  %index.next1250 = add nuw i64 %index1240, 8     ; 2 uses
  %i.bam = icmp eq i64 %index.next1250, %n.vec1238
  br i1 %i.bam, label %middle.block1251, label %vector.body1239, !llvm.loop !480

middle.block1251:                                 ; preds = %vector.body1239
  %cmp.n1252 = icmp eq i64 %i.azz, %n.vec1238
  br i1 %cmp.n1252, label %.loopexit409.i.i, label %.lr.ph423.i.i.preheader1708

.lr.ph423.i.i.preheader1708:                      ; preds = %.lr.ph423.i.i.preheader, %middle.block1251
  %indvars.iv484.i.i.ph = phi i64 [ %indvars.iv471.i.i, %.lr.ph423.i.i.preheader ], [ %i.baa, %middle.block1251 ]
  br label %.lr.ph423.i.i

.lr.ph423.i.i:                                    ; preds = %.lr.ph423.i.i.preheader1708, %.lr.ph423.i.i
  %indvars.iv484.i.i = phi i64 [ %indvars.iv.next485.i.i, %.lr.ph423.i.i ], [ %indvars.iv484.i.i.ph, %.lr.ph423.i.i.preheader1708 ] ; 3 uses
  %i.ban = getelementptr inbounds nuw [12 x i8], ptr %40, i64 %indvars.iv484.i.i ; 3 uses
  %i.bao = getelementptr inbounds nuw [12 x i8], ptr %41, i64 %indvars.iv484.i.i ; 2 uses
  %i.bap = load <2 x float>, ptr %i.bao, align 4, !tbaa !211 ; 3 uses
  %i.baq = load <2 x float>, ptr %i.ban, align 4, !tbaa !211 ; 3 uses
  %i.bar = shufflevector <2 x float> %i.baq, <2 x float> %i.bap, <2 x i32> <i32 0, i32 3>
  %i.bas = shufflevector <2 x float> %i.bap, <2 x float> %i.baq, <2 x i32> <i32 0, i32 3>
  %i.bat = fcmp olt <2 x float> %i.bar, %i.bas
  %i.bau = select <2 x i1> %i.bat, <2 x float> %i.bap, <2 x float> %i.baq
  store <2 x float> %i.bau, ptr %i.ban, align 4, !tbaa !211
  %i.bav = getelementptr inbounds nuw i8, ptr %i.ban, i64 8 ; 2 uses
  %i.baw = getelementptr inbounds nuw i8, ptr %i.bao, i64 8
  %i.bax = load float, ptr %i.baw, align 4, !tbaa !211 ; 2 uses
  %i.bay = load float, ptr %i.bav, align 4, !tbaa !211 ; 2 uses
  %i.baz = fcmp olt float %i.bax, %i.bay
  %i.bba = select i1 %i.baz, float %i.bax, float %i.bay
  store float %i.bba, ptr %i.bav, align 4, !tbaa !211
  %indvars.iv.next485.i.i = add nuw nsw i64 %indvars.iv484.i.i, 1 ; 2 uses
  %i.bbb = trunc nuw i64 %indvars.iv.next485.i.i to i32
  %i.bbc = icmp sgt i32 %i.azt, %i.bbb
  br i1 %i.bbc, label %.lr.ph423.i.i, label %.loopexit409.i.i, !llvm.loop !481

.loopexit409.i.i:                                 ; preds = %.lr.ph423.i.i, %middle.block1251, %.preheader408.i.i, %bb.fo
  %i.bbd = add nuw nsw i32 %.0313424.i.i, 1       ; 2 uses
  %exitcond487.not.i.i = icmp eq i32 %i.bbd, %.0314.i.i
  br i1 %exitcond487.not.i.i, label %.preheader410.i.i, label %bb.fn, !llvm.loop !482

._crit_edge451.i.i:                               ; preds = %.critedge.i.i, %.preheader410.i.i.._crit_edge451.i.i_crit_edge
  %indvars.iv.next78.i.pre-phi = phi i32 [ %.pre818, %.preheader410.i.i.._crit_edge451.i.i_crit_edge ], [ %i.ayw, %.critedge.i.i ]
  %indvars.iv.next472.i.i = add nsw i64 %indvars.iv471.i.i, -1
  %indvars.iv.next481.i.i = add i32 %indvars.iv480.i.i, 1
  %indvars.iv.next489.i.i = add nsw i64 %indvars.iv488.i.i, -1
  %indvar.next.i.i = add nuw nsw i64 %indvar.i.i, 1 ; 2 uses
  %exitcond522.not.i.i = icmp eq i64 %indvar.next.i.i, %i.att
  br i1 %exitcond522.not.i.i, label %._crit_edge455.i.i, label %bb.fi, !llvm.loop !483

bb.fp:                                            ; preds = %.critedge.i.i, %.lr.ph450.i.i
  %.0310448.i.i = phi i32 [ 0, %.lr.ph450.i.i ], [ %i.bhf, %.critedge.i.i ] ; 5 uses
  br i1 %i.avs, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.bbe = load i32, ptr %i.aye, align 4, !tbaa !210
  %i.bbf = load i32, ptr %i.ayf, align 4, !tbaa !210
  %i.bbg = add nsw i32 %i.bbf, -1
  %i.bbh = icmp slt i32 %i.bbe, %i.bbg
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %i.bbi = phi i1 [ true, %bb.fp ], [ %i.bbh, %bb.fq ]
  call void @_Z10ddSendrecvIfEvPK12gmx_domdec_tiiN3gmx8ArrayRefIT_EES6_(ptr noundef %3, i32 noundef %indvars79.i, i32 noundef 1, ptr nonnull %37, ptr nonnull %i.ayi, ptr noundef nonnull byval(%"class.gmx::ArrayRef.564") align 8 %43)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ah, i8 0, i64 12, i1 false)
  %.not337.i.i = icmp eq i32 %.0310448.i.i, 0
  br i1 %.not337.i.i, label %.loopexit407.i.thread100.i, label %.preheader406.i.i

.preheader406.i.i:                                ; preds = %bb.fr
  %i.bbj = load i32, ptr %i.aoy, align 8, !tbaa !208 ; 4 uses
  %i.bbk = sext i32 %i.bbj to i64
  %i.bbl = icmp slt i64 %i.avt, %i.bbk
  br i1 %i.bbl, label %.lr.ph428.i.i, label %.loopexit407.i.thread.i

.lr.ph428.i.i:                                    ; preds = %.preheader406.i.i
  %i.bbm = load float, ptr %i.ayk, align 4, !tbaa !211
  %i.bbn = load float, ptr %i.atl, align 4, !tbaa !672
  %i.bbo = fsub float %i.bbm, %i.bbn              ; 5 uses
  %i.bbp = load float, ptr %i.atn, align 4, !tbaa !680 ; 5 uses
  %i.bbq = fmul float %i.bbp, %i.bbp              ; 3 uses
  %i.bbr = fneg float %i.bbo
  %i.bbs = fmul float %i.bbo, %i.bbr              ; 3 uses
  %.pre537.i.i = load i32, ptr %i.ayl, align 4, !tbaa !210
  %.not338.i.i = icmp eq i32 %.pre537.i.i, 0      ; 3 uses
  %smax1748 = call i32 @llvm.smax.i32(i32 %i.bbj, i32 %i.ava) ; 2 uses
  %i.bbt = add i32 %indvars.iv480.i.i, %smax1748
  %xtraiter1749 = and i32 %i.bbt, 1
  %lcmp.mod1750.not = icmp eq i32 %xtraiter1749, 0
  br i1 %lcmp.mod1750.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph428.i.i
  br i1 %.not338.i.i, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %.prol.preheader
  %i.bbu = load i32, ptr %i.ayx, align 4, !tbaa !210
  %i.bbv = sext i32 %i.bbu to i64
  %gep.i.i.prol = getelementptr [12 x i8], ptr %invariant.gep.i.i, i64 %i.bbv
  %i.bbw = load float, ptr %gep.i.i.prol, align 4, !tbaa !211
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %.prol.preheader
  %.0308.i.i.prol = phi float [ %i.bbw, %bb.fs ], [ 0.000000e+00, %.prol.preheader ] ; 3 uses
  %i.bbx = call float @llvm.fmuladd.f32(float %.0308.i.i.prol, float %.0308.i.i.prol, float 1.000000e+00) ; 2 uses
  %i.bby = call float @llvm.fmuladd.f32(float %i.bbx, float %i.bbq, float %i.bbs) ; 2 uses
  %i.bbz = fcmp ogt float %i.bby, 0.000000e+00
  br i1 %i.bbz, label %bb.fu, label %.prol.loopexit.unr-lcssa

bb.fu:                                            ; preds = %bb.ft
  %i.bca = call noundef float @sqrtf(float noundef %i.bby) #19
  %i.bcb = call float @llvm.fmuladd.f32(float %.0308.i.i.prol, float %i.bbo, float %i.bca)
  %i.bcc = fdiv float %i.bcb, %i.bbx
  %i.bcd = fsub float %i.bbp, %i.bcc
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.fu, %bb.ft
  %.sink.i.i.prol = phi float [ %i.bcd, %bb.fu ], [ -1.000000e+00, %bb.ft ]
  store float %.sink.i.i.prol, ptr %i.ayy, align 4, !tbaa !211
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph428.i.i
  %indvars.iv490.i.i.unr = phi i64 [ %indvars.iv488.i.i, %.lr.ph428.i.i ], [ %indvars.iv.next491.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.bce = sub i32 0, %smax1748
  %i.bcf = icmp eq i32 %i.avc, %i.bce
  br i1 %i.bcf, label %.loopexit407.i.i, label %.lr.ph428.i.i.new

.lr.ph428.i.i.new:                                ; preds = %.prol.loopexit, %bb.gc
  %indvars.iv490.i.i = phi i64 [ %indvars.iv.next491.i.i.1, %bb.gc ], [ %indvars.iv490.i.i.unr, %.prol.loopexit ] ; 4 uses
  br i1 %.not338.i.i, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %.lr.ph428.i.i.new
  %i.bcg = getelementptr inbounds nuw [4 x i8], ptr %i.ari, i64 %indvars.iv490.i.i
  %i.bch = load i32, ptr %i.bcg, align 4, !tbaa !210
  %i.bci = sext i32 %i.bch to i64
  %gep.i.i = getelementptr [12 x i8], ptr %invariant.gep.i.i, i64 %i.bci
  %i.bcj = load float, ptr %gep.i.i, align 4, !tbaa !211
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %.lr.ph428.i.i.new
  %.0308.i.i = phi float [ %i.bcj, %bb.fv ], [ 0.000000e+00, %.lr.ph428.i.i.new ] ; 3 uses
  %i.bck = call float @llvm.fmuladd.f32(float %.0308.i.i, float %.0308.i.i, float 1.000000e+00) ; 2 uses
  %i.bcl = call float @llvm.fmuladd.f32(float %i.bck, float %i.bbq, float %i.bbs) ; 2 uses
  %i.bcm = fcmp ogt float %i.bcl, 0.000000e+00
  br i1 %i.bcm, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.bcn = call noundef float @sqrtf(float noundef %i.bcl) #19
  %i.bco = call float @llvm.fmuladd.f32(float %.0308.i.i, float %i.bbo, float %i.bcn)
  %i.bcp = fdiv float %i.bco, %i.bck
  %i.bcq = fsub float %i.bbp, %i.bcp
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %.sink.i.i = phi float [ %i.bcq, %bb.fx ], [ -1.000000e+00, %bb.fw ]
  %i.bcr = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv490.i.i
  store float %.sink.i.i, ptr %i.bcr, align 4, !tbaa !211
  %indvars.iv.next491.i.i = add nuw nsw i64 %indvars.iv490.i.i, 1 ; 2 uses
  br i1 %.not338.i.i, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.bcs = getelementptr inbounds nuw [4 x i8], ptr %i.ari, i64 %indvars.iv.next491.i.i
  %i.bct = load i32, ptr %i.bcs, align 4, !tbaa !210
  %i.bcu = sext i32 %i.bct to i64
  %gep.i.i.1 = getelementptr [12 x i8], ptr %invariant.gep.i.i, i64 %i.bcu
  %i.bcv = load float, ptr %gep.i.i.1, align 4, !tbaa !211
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  %.0308.i.i.1 = phi float [ %i.bcv, %bb.fz ], [ 0.000000e+00, %bb.fy ] ; 3 uses
  %i.bcw = call float @llvm.fmuladd.f32(float %.0308.i.i.1, float %.0308.i.i.1, float 1.000000e+00) ; 2 uses
  %i.bcx = call float @llvm.fmuladd.f32(float %i.bcw, float %i.bbq, float %i.bbs) ; 2 uses
  %i.bcy = fcmp ogt float %i.bcx, 0.000000e+00
  br i1 %i.bcy, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.bcz = call noundef float @sqrtf(float noundef %i.bcx) #19
  %i.bda = call float @llvm.fmuladd.f32(float %.0308.i.i.1, float %i.bbo, float %i.bcz)
  %i.bdb = fdiv float %i.bda, %i.bcw
  %i.bdc = fsub float %i.bbp, %i.bdb
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %.sink.i.i.1 = phi float [ %i.bdc, %bb.gb ], [ -1.000000e+00, %bb.ga ]
  %i.bdd = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next491.i.i
  store float %.sink.i.i.1, ptr %i.bdd, align 4, !tbaa !211
  %indvars.iv.next491.i.i.1 = add nuw nsw i64 %indvars.iv490.i.i, 2 ; 2 uses
  %i.bde = trunc nuw i64 %indvars.iv.next491.i.i.1 to i32
  %i.bdf = icmp sgt i32 %i.bbj, %i.bde
  br i1 %i.bdf, label %.lr.ph428.i.i.new, label %.loopexit407.i.i, !llvm.loop !484

.loopexit407.i.i:                                 ; preds = %bb.gc, %.prol.loopexit
  br i1 %i.ayn, label %.lr.ph431.preheader.i.split.i, label %._crit_edge432.i.i

.loopexit407.i.thread100.i:                       ; preds = %bb.fr
  br i1 %i.ayn, label %.lr.ph431.preheader.i.thread101.i, label %._crit_edge432.i.i

.lr.ph431.preheader.i.thread101.i:                ; preds = %.loopexit407.i.thread100.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %37, ptr noundef nonnull align 16 dereferenceable(1) %38, i64 %i.ayu, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %39, ptr noundef nonnull align 16 dereferenceable(1) %38, i64 %i.ayu, i1 false)
  br label %._crit_edge432.i.i

.loopexit407.i.thread.i:                          ; preds = %.preheader406.i.i
  br i1 %i.ayn, label %.lr.ph431.preheader.i.split.i, label %._crit_edge432.i.i

.lr.ph431.preheader.i.split.i:                    ; preds = %.loopexit407.i.i, %.loopexit407.i.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %37, ptr noundef nonnull align 16 dereferenceable(1) %38, i64 %i.ayu, i1 false)
  br i1 %i.bbi, label %.lr.ph431.preheader.i.split.split.i, label %._crit_edge432.i.i

.lr.ph431.preheader.i.split.split.i:              ; preds = %.lr.ph431.preheader.i.split.i
  %i.bdg = icmp eq i32 %i.bbj, 3
  %or.cond3.i.i = and i1 %i.awu, %i.bdg           ; 2 uses
  br i1 %min.iters.check1199, label %.lr.ph431.i.i.preheader, label %vector.body1206

.lr.ph431.i.i.preheader:                          ; preds = %vector.body1206, %.lr.ph431.preheader.i.split.split.i
  %indvars.iv493.i.i.ph = phi i64 [ 0, %.lr.ph431.preheader.i.split.split.i ], [ %n.vec1201, %vector.body1206 ]
  br label %.lr.ph431.i.i

vector.body1206:                                  ; preds = %.lr.ph431.preheader.i.split.split.i, %vector.body1206
  %index1207 = phi i64 [ %index.next1231, %vector.body1206 ], [ 0, %.lr.ph431.preheader.i.split.split.i ]
  %vec.ind1208 = phi <8 x i64> [ %vec.ind.next1232, %vector.body1206 ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %.lr.ph431.preheader.i.split.split.i ] ; 4 uses
  %wide.gep1209 = getelementptr inbounds nuw [32 x i8], ptr %39, <8 x i64> %vec.ind1208 ; 6 uses
  %wide.gep1210 = getelementptr inbounds nuw [32 x i8], ptr %38, <8 x i64> %vec.ind1208 ; 5 uses
  %wide.masked.gather1211 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1210, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !211 ; 2 uses
  %wide.masked.gather1212 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1209, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !211 ; 2 uses
  %i.bdh = fcmp olt <8 x float> %wide.masked.gather1211, %wide.masked.gather1212
  %i.bdi = select <8 x i1> %i.bdh, <8 x float> %wide.masked.gather1211, <8 x float> %wide.masked.gather1212
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.bdi, <8 x ptr> align 16 %wide.gep1209, <8 x i1> splat (i1 true)), !tbaa !667
  %wide.gep1213 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1209, i64 4 ; 2 uses
  %wide.gep1214 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1210, i64 4
  %wide.masked.gather1215 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1213, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !211 ; 2 uses
  %wide.masked.gather1216 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1214, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !211 ; 2 uses
  %i.bdj = fcmp olt <8 x float> %wide.masked.gather1215, %wide.masked.gather1216
  %i.bdk = select <8 x i1> %i.bdj, <8 x float> %wide.masked.gather1216, <8 x float> %wide.masked.gather1215
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.bdk, <8 x ptr> align 4 %wide.gep1213, <8 x i1> splat (i1 true)), !tbaa !668
  %wide.gep1217 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1209, i64 8 ; 2 uses
  %wide.gep1218 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1210, i64 8
  %wide.masked.gather1219 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1218, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !211 ; 2 uses
  %wide.masked.gather1220 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1217, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !211 ; 2 uses
  %i.bdl = fcmp olt <8 x float> %wide.masked.gather1219, %wide.masked.gather1220
  %i.bdm = select <8 x i1> %i.bdl, <8 x float> %wide.masked.gather1219, <8 x float> %wide.masked.gather1220
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.bdm, <8 x ptr> align 8 %wide.gep1217, <8 x i1> splat (i1 true)), !tbaa !669
  %i.bdn = icmp eq <8 x i64> %vec.ind1208, %broadcast.splat1203
  %i.bdo = select i1 %or.cond3.i.i, <8 x i1> %i.bdn, <8 x i1> zeroinitializer
  %i.bdp = select <8 x i1> %i.bdo, <8 x i64> splat (i64 1), <8 x i64> %broadcast.splat1205
  %wide.gep1221 = getelementptr inbounds nuw [4 x i8], ptr %i.ah, <8 x i64> %i.bdp
  %wide.masked.gather1222 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1221, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !211 ; 3 uses
end_hunk_0
