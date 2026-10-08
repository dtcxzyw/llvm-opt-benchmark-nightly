Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/stardetector?download=true
inline.NumInlined: 338
inline.NumDeleted: 146
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN2cv11xfeatures2d16StarDetectorImpl6detectERKNS_11_InputArrayERSt6vectorINS_8KeyPointESaIS6_EES4_:bb.a
  %i.apq = load i32, ptr %i.app, align 4, !tbaa !28
  %i.apr = getelementptr inbounds nuw [2 x i8], ptr %i.ana, i64 %indvars.iv214.i315.i
  %i.aps = load i16, ptr %i.apr, align 2, !tbaa !34 ; 2 uses
  %i.apt = sext i16 %i.aps to i32
  %i.apu = add i32 %i.apm, %i.aoo
  %i.apv = add i32 %i.apu, %i.apo
  %i.apw = sub i32 %i.apv, %i.apq
  %i.apx = add i32 %i.apw, %i.apt
  %i.apy = getelementptr inbounds nuw [4 x i8], ptr %i.and, i64 %indvars.iv214.i315.i
  store i32 %i.apx, ptr %i.apy, align 4, !tbaa !28
  %indvars.iv.next215.i316.i = add nuw nsw i64 %indvars.iv214.i315.i, 1 ; 2 uses
  %exitcond218.not.i317.i = icmp eq i64 %indvars.iv.next215.i316.i, %wide.trip.count217.i308.i
  br i1 %exitcond218.not.i317.i, label %._crit_edge200.us.i318.i, label %bb.ba, !llvm.loop !75

._crit_edge200.us.i318.i:                         ; preds = %bb.ba
  %i.apz = getelementptr inbounds [4 x i8], ptr %i.anb, i64 %i.alz
  %i.aqa = load i32, ptr %i.apz, align 4, !tbaa !28
  %i.aqb = getelementptr inbounds [4 x i8], ptr %i.anb, i64 %i.amt
  %i.aqc = load i32, ptr %i.aqb, align 4, !tbaa !28
  %i.aqd = add nsw i32 %i.aqc, %i.aqa
  %i.aqe = getelementptr inbounds [4 x i8], ptr %i.anb, i64 %i.amv
  %i.aqf = load i32, ptr %i.aqe, align 4, !tbaa !28
  %i.aqg = sub i32 %i.aqd, %i.aqf
  %i.aqh = getelementptr inbounds [2 x i8], ptr %i.ana, i64 %i.alz
  %i.aqi = load i16, ptr %i.aqh, align 2, !tbaa !34
  %i.aqj = sext i16 %i.aqi to i32                 ; 2 uses
  %i.aqk = add nsw i32 %i.aqg, %i.aqj
  %i.aql = getelementptr inbounds nuw [4 x i8], ptr %i.anb, i64 %i.amg
  store i32 %i.aqk, ptr %i.aql, align 4, !tbaa !28
  %i.aqm = getelementptr inbounds [4 x i8], ptr %i.anc, i64 %i.amv
  %i.aqn = load i32, ptr %i.aqm, align 4, !tbaa !28
  %i.aqo = getelementptr inbounds [2 x i8], ptr %i.ana, i64 %i.amx
  %i.aqp = load i16, ptr %i.aqo, align 2, !tbaa !34
  %i.aqq = sext i16 %i.aqp to i32
  %i.aqr = add i32 %i.aqn, %i.aqj
  %i.aqs = add i32 %i.aqr, %i.aqq                 ; 2 uses
  %i.aqt = getelementptr inbounds nuw [4 x i8], ptr %i.and, i64 %i.amg
  store i32 %i.aqs, ptr %i.aqt, align 4, !tbaa !28
  %i.aqu = getelementptr inbounds nuw [4 x i8], ptr %i.anc, i64 %i.amg
  store i32 %i.aqs, ptr %i.aqu, align 4, !tbaa !28
  %i.aqv = add nuw i32 %.0179202.us.i314.i, 1
  %exitcond219.not.i319.i = icmp eq i32 %.0179202.us.i314.i, %i.ain
  br i1 %exitcond219.not.i319.i, label %_ZN2cv11xfeatures2dL21computeIntegralImagesIhiEEvRKNS_3MatERS2_S5_S5_i.exit.i, label %.lr.ph199.us.i309.i, !llvm.loop !76

.lr.ph208.split.i299.i:                           ; preds = %.lr.ph208.i294.i, %.lr.ph208.split.i299.i
  %.0206.i300.i = phi ptr [ %i.aqz, %.lr.ph208.split.i299.i ], [ %i.akk, %.lr.ph208.i294.i ]
  %.0176205.i301.i = phi ptr [ %i.aqy, %.lr.ph208.split.i299.i ], [ %i.akj, %.lr.ph208.i294.i ]
  %.0177204.i302.i = phi ptr [ %i.aqx, %.lr.ph208.split.i299.i ], [ %i.aki, %.lr.ph208.i294.i ]
  %.0178203.i303.i = phi ptr [ %i.aqw, %.lr.ph208.split.i299.i ], [ %i.ais, %.lr.ph208.i294.i ]
  %.0179202.i304.i = phi i32 [ %i.asw, %.lr.ph208.split.i299.i ], [ 2, %.lr.ph208.i294.i ] ; 2 uses
  %i.aqw = getelementptr inbounds i8, ptr %.0178203.i303.i, i64 %i.amk ; 6 uses
  %i.aqx = getelementptr inbounds [4 x i8], ptr %.0177204.i302.i, i64 %i.akh ; 9 uses
  %i.aqy = getelementptr inbounds [4 x i8], ptr %.0176205.i301.i, i64 %i.akh ; 7 uses
  %i.aqz = getelementptr inbounds [4 x i8], ptr %.0206.i300.i, i64 %i.akh ; 5 uses
  %i.ara = getelementptr inbounds [4 x i8], ptr %i.aqx, i64 %i.amm
  %i.arb = load i32, ptr %i.ara, align 4, !tbaa !28
  store i32 %i.arb, ptr %i.aqx, align 4, !tbaa !28
  %i.arc = getelementptr inbounds [4 x i8], ptr %i.aqx, i64 %i.amn
  %i.ard = load i32, ptr %i.arc, align 4, !tbaa !28
  %i.are = load i16, ptr %i.aqw, align 2, !tbaa !34
  %i.arf = sext i16 %i.are to i32                 ; 2 uses
  %i.arg = add nsw i32 %i.ard, %i.arf
  %i.arh = getelementptr inbounds nuw i8, ptr %i.aqx, i64 4
  store i32 %i.arg, ptr %i.arh, align 4, !tbaa !28
  %i.ari = getelementptr inbounds [4 x i8], ptr %i.aqy, i64 %i.amn
  %i.arj = load i32, ptr %i.ari, align 4, !tbaa !28
  store i32 %i.arj, ptr %i.aqy, align 4, !tbaa !28
  %i.ark = getelementptr inbounds [4 x i8], ptr %i.aqy, i64 %i.amo
  %i.arl = load i32, ptr %i.ark, align 4, !tbaa !28
  %i.arm = getelementptr inbounds i8, ptr %i.aqw, i64 %i.amp
  %i.arn = load i16, ptr %i.arm, align 2, !tbaa !34
  %i.aro = sext i16 %i.arn to i32
  %i.arp = add nsw i32 %i.aro, %i.arf             ; 2 uses
  %i.arq = add i32 %i.arp, %i.arl                 ; 2 uses
  store i32 %i.arq, ptr %i.aqz, align 4, !tbaa !28
  %i.arr = getelementptr inbounds nuw i8, ptr %i.aqy, i64 4
  store i32 %i.arq, ptr %i.arr, align 4, !tbaa !28
  %i.ars = getelementptr inbounds [4 x i8], ptr %i.aqz, i64 %i.amo
  %i.art = load i32, ptr %i.ars, align 4, !tbaa !28
  %i.aru = getelementptr inbounds nuw i8, ptr %i.aqw, i64 2
  %i.arv = load i16, ptr %i.aru, align 2, !tbaa !34
  %i.arw = sext i16 %i.arv to i32
  %i.arx = add i32 %i.art, %i.arp
  %i.ary = add i32 %i.arx, %i.arw
  %i.arz = getelementptr inbounds nuw i8, ptr %i.aqz, i64 4
  store i32 %i.ary, ptr %i.arz, align 4, !tbaa !28
  %i.asa = getelementptr inbounds [4 x i8], ptr %i.aqx, i64 %i.alz
  %i.asb = load i32, ptr %i.asa, align 4, !tbaa !28
  %i.asc = getelementptr inbounds [4 x i8], ptr %i.aqx, i64 %i.amt
  %i.asd = load i32, ptr %i.asc, align 4, !tbaa !28
  %i.ase = add nsw i32 %i.asd, %i.asb
  %i.asf = getelementptr inbounds [4 x i8], ptr %i.aqx, i64 %i.amv
  %i.asg = load i32, ptr %i.asf, align 4, !tbaa !28
  %i.ash = sub i32 %i.ase, %i.asg
  %i.asi = getelementptr inbounds [2 x i8], ptr %i.aqw, i64 %i.alz
  %i.asj = load i16, ptr %i.asi, align 2, !tbaa !34
  %i.ask = sext i16 %i.asj to i32                 ; 2 uses
  %i.asl = add nsw i32 %i.ash, %i.ask
  %i.asm = getelementptr inbounds [4 x i8], ptr %i.aqx, i64 %i.amg
  store i32 %i.asl, ptr %i.asm, align 4, !tbaa !28
  %i.asn = getelementptr inbounds [4 x i8], ptr %i.aqy, i64 %i.amv
  %i.aso = load i32, ptr %i.asn, align 4, !tbaa !28
  %i.asp = getelementptr inbounds [2 x i8], ptr %i.aqw, i64 %i.amx
  %i.asq = load i16, ptr %i.asp, align 2, !tbaa !34
  %i.asr = sext i16 %i.asq to i32
  %i.ass = add i32 %i.aso, %i.ask
  %i.ast = add i32 %i.ass, %i.asr                 ; 2 uses
  %i.asu = getelementptr inbounds [4 x i8], ptr %i.aqz, i64 %i.amg
  store i32 %i.ast, ptr %i.asu, align 4, !tbaa !28
  %i.asv = getelementptr inbounds [4 x i8], ptr %i.aqy, i64 %i.amg
  store i32 %i.ast, ptr %i.asv, align 4, !tbaa !28
  %i.asw = add nuw i32 %.0179202.i304.i, 1
  %exitcond213.not.i305.i = icmp eq i32 %.0179202.i304.i, %i.ain
  br i1 %exitcond213.not.i305.i, label %_ZN2cv11xfeatures2dL21computeIntegralImagesIhiEEvRKNS_3MatERS2_S5_S5_i.exit.i, label %.lr.ph208.split.i299.i, !llvm.loop !76

bb.bb:                                            ; preds = %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %23)
          to label %bb.bc unwind label %bb.be

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -210, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @__func__._ZN2cv11xfeatures2dL28StarDetectorComputeResponsesIiEEiRKNS_3MatERS2_S5_ii, ptr noundef nonnull @.str.13, i32 noundef 247) #20
          to label %bb.bd unwind label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  unreachable

bb.be:                                            ; preds = %bb.bb
  %i.asx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.bf:                                            ; preds = %bb.bc
  %i.asy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.asz = load ptr, ptr %22, align 8, !tbaa !26  ; 2 uses
  %i.ata = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.atb = icmp eq ptr %i.asz, %i.ata
  br i1 %i.atb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.bf
  %i.atc = load i64, ptr %i.ata, align 8, !tbaa !27
  %i.atd = add i64 %i.atc, 1
  call void @_ZdlPvm(ptr noundef %i.asz, i64 noundef %i.atd) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.be
  %.pn.i = phi { ptr, i32 } [ %i.asx, %bb.be ], [ %i.asy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.asy, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  br label %.body.i

_ZN2cv11xfeatures2dL21computeIntegralImagesIhiEEvRKNS_3MatERS2_S5_S5_i.exit.i: ; preds = %.lr.ph208.split.i299.i, %._crit_edge200.us.i318.i, %.lr.ph208.split.i258.i, %._crit_edge200.us.i277.i, %.lr.ph208.split.i217.i, %._crit_edge200.us.i236.i, %.lr.ph208.split.i.i, %._crit_edge200.us.i.i, %._crit_edge196.i292.i, %._crit_edge196.i251.i, %._crit_edge196.i210.i, %._crit_edge196.i.i
  %i.ate = phi ptr [ %i.dg, %.lr.ph208.split.i.i ], [ %i.dg, %._crit_edge200.us.i.i ], [ %i.aja, %._crit_edge200.us.i318.i ], [ %i.yq, %.lr.ph208.split.i258.i ], [ %i.yq, %._crit_edge200.us.i277.i ], [ %i.ny, %.lr.ph208.split.i217.i ], [ %i.ny, %._crit_edge200.us.i236.i ], [ %i.dg, %._crit_edge196.i.i ], [ %i.aja, %._crit_edge196.i292.i ], [ %i.yq, %._crit_edge196.i251.i ], [ %i.ny, %._crit_edge196.i210.i ], [ %i.aja, %.lr.ph208.split.i299.i ] ; 2 uses
  %i.atf = phi ptr [ %i.de, %.lr.ph208.split.i.i ], [ %i.de, %._crit_edge200.us.i.i ], [ %i.aiy, %._crit_edge200.us.i318.i ], [ %i.yo, %.lr.ph208.split.i258.i ], [ %i.yo, %._crit_edge200.us.i277.i ], [ %i.nw, %.lr.ph208.split.i217.i ], [ %i.nw, %._crit_edge200.us.i236.i ], [ %i.de, %._crit_edge196.i.i ], [ %i.aiy, %._crit_edge196.i292.i ], [ %i.yo, %._crit_edge196.i251.i ], [ %i.nw, %._crit_edge196.i210.i ], [ %i.aiy, %.lr.ph208.split.i299.i ] ; 2 uses
  %i.atg = phi ptr [ %i.db, %.lr.ph208.split.i.i ], [ %i.db, %._crit_edge200.us.i.i ], [ %i.aiv, %._crit_edge200.us.i318.i ], [ %i.yl, %.lr.ph208.split.i258.i ], [ %i.yl, %._crit_edge200.us.i277.i ], [ %i.nt, %.lr.ph208.split.i217.i ], [ %i.nt, %._crit_edge200.us.i236.i ], [ %i.db, %._crit_edge196.i.i ], [ %i.aiv, %._crit_edge196.i292.i ], [ %i.yl, %._crit_edge196.i251.i ], [ %i.nt, %._crit_edge196.i210.i ], [ %i.aiv, %.lr.ph208.split.i299.i ] ; 2 uses
  %i.ath = phi i64 [ %i.dw, %.lr.ph208.split.i.i ], [ %i.dw, %._crit_edge200.us.i.i ], [ %i.ajq, %._crit_edge200.us.i318.i ], [ %i.zg, %.lr.ph208.split.i258.i ], [ %i.zg, %._crit_edge200.us.i277.i ], [ %i.oo, %.lr.ph208.split.i217.i ], [ %i.oo, %._crit_edge200.us.i236.i ], [ %i.dw, %._crit_edge196.i.i ], [ %i.ajq, %._crit_edge196.i292.i ], [ %i.zg, %._crit_edge196.i251.i ], [ %i.oo, %._crit_edge196.i210.i ], [ %i.ajq, %.lr.ph208.split.i299.i ]
  %i.ati = load i32, ptr %19, align 8, !tbaa !133 ; 2 uses
  %i.atj = lshr i32 %i.ati, 5
  %i.atk = and i32 %i.atj, 127
  %i.atl = add nuw nsw i32 %i.atk, 1
  %i.atm = shl i32 %i.ati, 2
  %i.atn = and i32 %i.atm, 124
  %i.ato = zext nneg i32 %i.atn to i64
  %i.atp = lshr i64 1275511473185297, %i.ato
  %i.atq = trunc i64 %i.atp to i32
  %i.atr = and i32 %i.atq, 15
  %i.ats = mul nuw nsw i32 %i.atr, %i.atl
  %i.att = zext nneg i32 %i.ats to i64
  %i.atu = udiv i64 %i.ath, %i.att                ; 2 uses
  %i.atv = trunc i64 %i.atu to i32                ; 4 uses
  %.not189385.i = icmp slt i32 %i.cq, 0           ; 2 uses
  br i1 %.not189385.i, label %.lr.ph389.preheader.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2cv11xfeatures2dL21computeIntegralImagesIhiEEvRKNS_3MatERS2_S5_S5_i.exit.i
  %i.atw = add nuw i32 %i.cq, 1
  %i.atx = zext i32 %i.atw to i64                 ; 2 uses
  %i.aty = shl nuw nsw i64 %i.atx, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.e, ptr noundef nonnull align 16 dereferenceable(1) @_ZZN2cv11xfeatures2dL28StarDetectorComputeResponsesIdEEiRKNS_3MatERS2_S5_iiE6sizes0, i64 %i.aty, i1 false), !tbaa !28
  br label %bb.bg

._crit_edge.loopexit.i:                           ; preds = %bb.bg
  %.pre.i = load i32, ptr %i.e, align 16, !tbaa !28
  br label %.lr.ph389.preheader.i

.lr.ph389.preheader.i:                            ; preds = %._crit_edge.loopexit.i, %_ZN2cv11xfeatures2dL21computeIntegralImagesIhiEEvRKNS_3MatERS2_S5_S5_i.exit.i
  %i.atz = phi i32 [ %.pre.i, %._crit_edge.loopexit.i ], [ undef, %_ZN2cv11xfeatures2dL21computeIntegralImagesIhiEEvRKNS_3MatERS2_S5_S5_i.exit.i ]
  %i.aua = sub nsw i32 0, %i.atz
  store i32 %i.aua, ptr %i.e, align 16, !tbaa !28
  %i.aub = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.auc = load i32, ptr %i.aub, align 4, !tbaa !28
  %i.aud = sub nsw i32 0, %i.auc
  store i32 %i.aud, ptr %i.aub, align 4, !tbaa !28
  %i.aue = sext i32 %i.cq to i64                  ; 2 uses
  %i.auf = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.aue ; 2 uses
  %i.aug = load i32, ptr %i.auf, align 4, !tbaa !28
  %i.auh = sub nsw i32 0, %i.aug
  store i32 %i.auh, ptr %i.auf, align 4, !tbaa !28
  %i.aui = getelementptr inbounds [4 x i8], ptr @_ZZN2cv11xfeatures2dL28StarDetectorComputeResponsesIdEEiRKNS_3MatERS2_S5_iiE6sizes0, i64 %i.aue
  %i.auj = load i32, ptr %i.aui, align 4, !tbaa !28 ; 2 uses
  %min.iters.check310 = icmp samesign ult i64 %.0176.lcssa.i, 4
  br i1 %min.iters.check310, label %.lr.ph389.i.preheader, label %vector.ph311

vector.ph311:                                     ; preds = %.lr.ph389.preheader.i
  %n.vec312 = and i64 %.0176.lcssa.i, 12          ; 4 uses
  %i.auk = getelementptr inbounds nuw i8, ptr %18, i64 72
  %i.aul = getelementptr inbounds nuw i8, ptr %18, i64 144
  %i.aum = getelementptr inbounds nuw i8, ptr %18, i64 216
  %i.aun = load i32, ptr %18, align 16, !tbaa !142
  %i.auo = load i32, ptr %i.auk, align 8, !tbaa !142
  %i.aup = load i32, ptr %i.aul, align 16, !tbaa !142
  %i.auq = load i32, ptr %i.aum, align 8, !tbaa !142
  %i.aur = insertelement <4 x i32> poison, i32 %i.aun, i64 0
  %i.aus = insertelement <4 x i32> %i.aur, i32 %i.auo, i64 1
  %i.aut = insertelement <4 x i32> %i.aus, i32 %i.aup, i64 2
  %i.auu = insertelement <4 x i32> %i.aut, i32 %i.auq, i64 3 ; 2 uses
  %i.auv = getelementptr inbounds nuw i8, ptr %18, i64 72
  %i.auw = getelementptr inbounds nuw i8, ptr %18, i64 216
  %i.aux = getelementptr inbounds nuw i8, ptr %18, i64 288
  %i.auy = getelementptr inbounds nuw i8, ptr %18, i64 360
  %i.auz = load i32, ptr %i.auv, align 8, !tbaa !142
  %i.ava = load i32, ptr %i.auw, align 8, !tbaa !142
  %i.avb = load i32, ptr %i.aux, align 16, !tbaa !142
  %i.avc = load i32, ptr %i.auy, align 8, !tbaa !142
  %i.avd = insertelement <4 x i32> poison, i32 %i.auz, i64 0
  %i.ave = insertelement <4 x i32> %i.avd, i32 %i.ava, i64 1
  %i.avf = insertelement <4 x i32> %i.ave, i32 %i.avb, i64 2
  %i.avg = insertelement <4 x i32> %i.avf, i32 %i.avc, i64 3
  %i.avh = sub nsw <4 x i32> %i.avg, %i.auu
  %i.avi = shufflevector <4 x i32> %i.avh, <4 x i32> %i.auu, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.avj = sitofp <8 x i32> %i.avi to <8 x float>
  %interleaved.vec315 = fdiv <8 x float> splat (float 1.000000e+00), %i.avj
  store <8 x float> %interleaved.vec315, ptr %i.d, align 16, !tbaa !36
  %i.avk = icmp eq i64 %n.vec312, 4
  br i1 %i.avk, label %middle.block317, label %vector.body313.1

vector.body313.1:                                 ; preds = %vector.ph311
  %i.avl = getelementptr inbounds nuw i8, ptr %18, i64 288
  %i.avm = getelementptr inbounds nuw i8, ptr %18, i64 360
  %i.avn = getelementptr inbounds nuw i8, ptr %18, i64 432
  %i.avo = getelementptr inbounds nuw i8, ptr %18, i64 576
  %i.avp = load i32, ptr %i.avl, align 16, !tbaa !142
  %i.avq = load i32, ptr %i.avm, align 8, !tbaa !142
  %i.avr = load i32, ptr %i.avn, align 16, !tbaa !142
  %i.avs = load i32, ptr %i.avo, align 16, !tbaa !142
  %i.avt = insertelement <4 x i32> poison, i32 %i.avp, i64 0
  %i.avu = insertelement <4 x i32> %i.avt, i32 %i.avq, i64 1
  %i.avv = insertelement <4 x i32> %i.avu, i32 %i.avr, i64 2
  %i.avw = insertelement <4 x i32> %i.avv, i32 %i.avs, i64 3 ; 2 uses
  %i.avx = getelementptr inbounds nuw i8, ptr %18, i64 504
  %i.avy = getelementptr inbounds nuw i8, ptr %18, i64 576
  %i.avz = getelementptr inbounds nuw i8, ptr %18, i64 648
  %i.awa = getelementptr inbounds nuw i8, ptr %18, i64 792
  %i.awb = load i32, ptr %i.avx, align 8, !tbaa !142
  %i.awc = load i32, ptr %i.avy, align 16, !tbaa !142
  %i.awd = load i32, ptr %i.avz, align 8, !tbaa !142
  %i.awe = load i32, ptr %i.awa, align 8, !tbaa !142
  %i.awf = insertelement <4 x i32> poison, i32 %i.awb, i64 0
  %i.awg = insertelement <4 x i32> %i.awf, i32 %i.awc, i64 1
  %i.awh = insertelement <4 x i32> %i.awg, i32 %i.awd, i64 2
  %i.awi = insertelement <4 x i32> %i.awh, i32 %i.awe, i64 3
  %i.awj = sub nsw <4 x i32> %i.awi, %i.avw
  %i.awk = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.awl = shufflevector <4 x i32> %i.awj, <4 x i32> %i.avw, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.awm = sitofp <8 x i32> %i.awl to <8 x float>
  %interleaved.vec315.1 = fdiv <8 x float> splat (float 1.000000e+00), %i.awm
  store <8 x float> %interleaved.vec315.1, ptr %i.awk, align 16, !tbaa !36
  %i.awn = icmp eq i64 %n.vec312, 8
  br i1 %i.awn, label %middle.block317, label %vector.body313.2

vector.body313.2:                                 ; preds = %vector.body313.1
  %i.awo = getelementptr inbounds nuw i8, ptr %18, i64 720
  %i.awp = getelementptr inbounds nuw i8, ptr %18, i64 792
  %i.awq = getelementptr inbounds nuw i8, ptr %18, i64 864
  %i.awr = getelementptr inbounds nuw i8, ptr %18, i64 1008
  %i.aws = load i32, ptr %i.awo, align 16, !tbaa !142
  %i.awt = load i32, ptr %i.awp, align 8, !tbaa !142
  %i.awu = load i32, ptr %i.awq, align 16, !tbaa !142
  %i.awv = load i32, ptr %i.awr, align 16, !tbaa !142
  %i.aww = insertelement <4 x i32> poison, i32 %i.aws, i64 0
  %i.awx = insertelement <4 x i32> %i.aww, i32 %i.awt, i64 1
  %i.awy = insertelement <4 x i32> %i.awx, i32 %i.awu, i64 2
  %i.awz = insertelement <4 x i32> %i.awy, i32 %i.awv, i64 3 ; 2 uses
  %i.axa = getelementptr inbounds nuw i8, ptr %18, i64 936
  %i.axb = getelementptr inbounds nuw i8, ptr %18, i64 1008
  %i.axc = getelementptr inbounds nuw i8, ptr %18, i64 1080
  %i.axd = getelementptr inbounds nuw i8, ptr %18, i64 1152
  %i.axe = load i32, ptr %i.axa, align 8, !tbaa !142
  %i.axf = load i32, ptr %i.axb, align 16, !tbaa !142
  %i.axg = load i32, ptr %i.axc, align 8, !tbaa !142
  %i.axh = load i32, ptr %i.axd, align 16, !tbaa !142
  %i.axi = insertelement <4 x i32> poison, i32 %i.axe, i64 0
  %i.axj = insertelement <4 x i32> %i.axi, i32 %i.axf, i64 1
  %i.axk = insertelement <4 x i32> %i.axj, i32 %i.axg, i64 2
  %i.axl = insertelement <4 x i32> %i.axk, i32 %i.axh, i64 3
  %i.axm = sub nsw <4 x i32> %i.axl, %i.awz
  %i.axn = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.axo = shufflevector <4 x i32> %i.axm, <4 x i32> %i.awz, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.axp = sitofp <8 x i32> %i.axo to <8 x float>
  %interleaved.vec315.2 = fdiv <8 x float> splat (float 1.000000e+00), %i.axp
  store <8 x float> %interleaved.vec315.2, ptr %i.axn, align 16, !tbaa !36
  br label %middle.block317

middle.block317:                                  ; preds = %vector.body313.2, %vector.body313.1, %vector.ph311
  %cmp.n318 = icmp eq i64 %.0176.lcssa.i, %n.vec312
  br i1 %cmp.n318, label %.preheader375.i, label %.lr.ph389.i.preheader

.lr.ph389.i.preheader:                            ; preds = %.lr.ph389.preheader.i, %middle.block317
  %indvars.iv422.i.ph = phi i64 [ 0, %.lr.ph389.preheader.i ], [ %n.vec312, %middle.block317 ]
  br label %.lr.ph389.i

bb.bg:                                            ; preds = %bb.bg, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.bg ] ; 3 uses
  %i.axq = getelementptr inbounds nuw [4 x i8], ptr @_ZZN2cv11xfeatures2dL28StarDetectorComputeResponsesIdEEiRKNS_3MatERS2_S5_iiE6sizes0, i64 %indvars.iv.i
  %i.axr = load i32, ptr %i.axq, align 4, !tbaa !28 ; 6 uses
  %i.axs = sdiv i32 %i.axr, 2
  %i.axt = add nsw i32 %i.axs, %i.axr             ; 5 uses
  %i.axu = shl nsw i32 %i.axr, 1
  %i.axv = or disjoint i32 %i.axu, 1              ; 2 uses
  %i.axw = mul nsw i32 %i.axv, %i.axv
  %i.axx = mul nsw i32 %i.axt, %i.axt
  %i.axy = add nsw i32 %i.axt, 1                  ; 3 uses
  %i.axz = mul nsw i32 %i.axy, %i.axy
  %i.aya = add nsw i32 %i.axr, 1
  %i.ayb = mul nsw i32 %i.aya, %i.atv
  %i.ayc = sext i32 %i.ayb to i64
  %i.ayd = getelementptr inbounds [4 x i8], ptr %i.atg, i64 %i.ayc ; 2 uses
  %i.aye = sext i32 %i.axr to i64                 ; 3 uses
  %i.ayf = getelementptr inbounds [4 x i8], ptr %i.ayd, i64 %i.aye
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.ayf, i64 4
  %i.ayh = getelementptr inbounds nuw [72 x i8], ptr %18, i64 %indvars.iv.i ; 9 uses
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.ayh, i64 8
  store ptr %i.ayg, ptr %i.ayi, align 8, !tbaa !144
  %i.ayj = mul nsw i32 %i.axr, %i.atv
  %i.ayk = sext i32 %i.ayj to i64
  %i.ayl = sub nsw i64 0, %i.ayk
  %i.aym = getelementptr inbounds [4 x i8], ptr %i.atg, i64 %i.ayl ; 2 uses
  %i.ayn = getelementptr inbounds [4 x i8], ptr %i.aym, i64 %i.aye
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.ayn, i64 4
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.ayh, i64 16
  store ptr %i.ayo, ptr %i.ayp, align 8, !tbaa !144
  %i.ayq = sub nsw i64 0, %i.aye                  ; 2 uses
  %i.ayr = getelementptr inbounds [4 x i8], ptr %i.ayd, i64 %i.ayq
  %i.ays = getelementptr inbounds nuw i8, ptr %i.ayh, i64 24
  store ptr %i.ayr, ptr %i.ays, align 8, !tbaa !144
  %i.ayt = getelementptr inbounds [4 x i8], ptr %i.aym, i64 %i.ayq
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.ayh, i64 32
  store ptr %i.ayt, ptr %i.ayu, align 8, !tbaa !144
  %i.ayv = mul nsw i32 %i.axy, %i.atv
  %i.ayw = sext i32 %i.ayv to i64
  %i.ayx = getelementptr inbounds [4 x i8], ptr %i.atf, i64 %i.ayw
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ayx, i64 4
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.ayh, i64 40
  store ptr %i.ayy, ptr %i.ayz, align 8, !tbaa !144
  %i.aza = sext i32 %i.axt to i64                 ; 2 uses
  %i.azb = sub nsw i64 0, %i.aza
  %i.azc = getelementptr inbounds [4 x i8], ptr %i.ate, i64 %i.azb
  %i.azd = getelementptr inbounds nuw i8, ptr %i.ayh, i64 48
  store ptr %i.azc, ptr %i.azd, align 8, !tbaa !144
  %i.aze = getelementptr inbounds [4 x i8], ptr %i.ate, i64 %i.aza
  %i.azf = getelementptr inbounds nuw i8, ptr %i.aze, i64 4
  %i.azg = getelementptr inbounds nuw i8, ptr %i.ayh, i64 56
  store ptr %i.azf, ptr %i.azg, align 8, !tbaa !144
  %i.azh = mul nsw i32 %i.axt, %i.atv
  %i.azi = sext i32 %i.azh to i64
  %i.azj = sub nsw i64 0, %i.azi
  %i.azk = getelementptr inbounds [4 x i8], ptr %i.atf, i64 %i.azj
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azk, i64 4
  %i.azm = getelementptr inbounds nuw i8, ptr %i.ayh, i64 64
  store ptr %i.azl, ptr %i.azm, align 8, !tbaa !144
  %i.azn = add nuw nsw i32 %i.axw, %i.axx
  %i.azo = add nuw nsw i32 %i.azn, %i.axz
  store i32 %i.azo, ptr %i.ayh, align 8, !tbaa !142
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.atx
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.bg, !llvm.loop !77

.preheader375.i:                                  ; preds = %.lr.ph389.i, %middle.block317
  %i.azp = sdiv i32 %i.auj, 2
  %i.azq = add i32 %i.azp, %i.auj                 ; 8 uses
  %i.azr = icmp sgt i32 %i.azq, 0
  br i1 %i.azr, label %.lr.ph391.i, label %.preheader374.i

.lr.ph391.i:                                      ; preds = %.preheader375.i
  %i.azs = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.azt = getelementptr inbounds nuw i8, ptr %29, i64 128
  %i.azu = getelementptr inbounds nuw i8, ptr %30, i64 24
  %i.azv = getelementptr inbounds nuw i8, ptr %30, i64 128
  %i.azw = sext i32 %i.an to i64                  ; 2 uses
  %i.azx = shl nsw i64 %i.azw, 2                  ; 2 uses
  %i.azy = shl nsw i64 %i.azw, 1                  ; 2 uses
  %wide.trip.count430.i = zext nneg i32 %i.azq to i64
  br label %bb.bh

.lr.ph389.i:                                      ; preds = %.lr.ph389.i.preheader, %.lr.ph389.i
  %indvars.iv422.i = phi i64 [ %indvars.iv.next423.i, %.lr.ph389.i ], [ %indvars.iv422.i.ph, %.lr.ph389.i.preheader ] ; 3 uses
  %i.azz = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2cv11xfeatures2dL28StarDetectorComputeResponsesIdEEiRKNS_3MatERS2_S5_iiE5pairs, i64 %indvars.iv422.i ; 2 uses
  %i.baa = getelementptr inbounds nuw i8, ptr %i.azz, i64 4
  %i.bab = load i32, ptr %i.baa, align 4, !tbaa !28
  %i.bac = sext i32 %i.bab to i64
  %i.bad = getelementptr inbounds [72 x i8], ptr %18, i64 %i.bac
  %i.bae = load i32, ptr %i.bad, align 8, !tbaa !142 ; 2 uses
  %i.baf = load i32, ptr %i.azz, align 8, !tbaa !28
  %i.bag = sext i32 %i.baf to i64
  %i.bah = getelementptr inbounds [72 x i8], ptr %18, i64 %i.bag
  %i.bai = load i32, ptr %i.bah, align 8, !tbaa !142
  %i.baj = sub nsw i32 %i.bai, %i.bae
  %i.bak = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv422.i
  %i.bal = insertelement <2 x i32> poison, i32 %i.baj, i64 0
  %i.bam = insertelement <2 x i32> %i.bal, i32 %i.bae, i64 1
  %i.ban = sitofp <2 x i32> %i.bam to <2 x float>
  %i.bao = fdiv <2 x float> splat (float 1.000000e+00), %i.ban
  store <2 x float> %i.bao, ptr %i.bak, align 8, !tbaa !36
  %indvars.iv.next423.i = add nuw nsw i64 %indvars.iv422.i, 1 ; 2 uses
  %exitcond426.not.i = icmp eq i64 %indvars.iv.next423.i, %.0176.lcssa.i
  br i1 %exitcond426.not.i, label %.preheader375.i, label %.lr.ph389.i, !llvm.loop !78

.preheader374.i:                                  ; preds = %bb.bh, %.preheader375.i
  %i.bap = sub nsw i32 %i.al, %i.azq              ; 2 uses
  %i.baq = icmp slt i32 %i.azq, %i.bap
  br i1 %i.baq, label %.lr.ph407.i, label %_ZN2cv11xfeatures2dL28StarDetectorComputeResponsesIiEEiRKNS_3MatERS2_S5_ii.exit

.lr.ph407.i:                                      ; preds = %.preheader374.i
  %i.bar = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.bas = getelementptr inbounds nuw i8, ptr %29, i64 128
  %i.bat = getelementptr inbounds nuw i8, ptr %30, i64 24
  %i.bau = getelementptr inbounds nuw i8, ptr %30, i64 128
  %i.bav = sext i32 %i.azq to i64                 ; 6 uses
  %i.baw = shl nsw i64 %i.bav, 2                  ; 2 uses
  %i.bax = shl nsw i64 %i.bav, 1                  ; 2 uses
  %i.bay = sext i32 %i.an to i64                  ; 2 uses
  %i.baz = sub nsw i64 0, %i.bav                  ; 2 uses
  %i.bba = sub i32 %i.an, %i.azq                  ; 2 uses
  %i.bbb = icmp slt i32 %i.azq, %i.bba
  %i.bbc = add i32 %i.cq, 1
  %sext.i = shl i64 %i.atu, 32
  %i.bbd = ashr exact i64 %sext.i, 32
  %wide.trip.count468.i = sext i32 %i.bap to i64
  %wide.trip.count445.i = sext i32 %i.bba to i64  ; 2 uses
  %wide.trip.count435.i = zext i32 %i.bbc to i64
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bh, %.lr.ph391.i
  %indvars.iv427.i = phi i64 [ 0, %.lr.ph391.i ], [ %indvars.iv.next428.i, %bb.bh ] ; 4 uses
  %i.bbe = load ptr, ptr %i.azs, align 8, !tbaa !140 ; 2 uses
  %i.bbf = load i64, ptr %i.azt, align 8, !tbaa !30 ; 2 uses
  %i.bbg = mul i64 %i.bbf, %indvars.iv427.i
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.bbe, i64 %i.bbg
  %i.bbi = trunc i64 %indvars.iv427.i to i32
  %i.bbj = xor i32 %i.bbi, -1
  %i.bbk = add i32 %i.al, %i.bbj
  %i.bbl = sext i32 %i.bbk to i64                 ; 2 uses
  %i.bbm = mul i64 %i.bbf, %i.bbl
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.bbe, i64 %i.bbm
  %i.bbo = load ptr, ptr %i.azu, align 8, !tbaa !140 ; 2 uses
  %i.bbp = load i64, ptr %i.azv, align 8, !tbaa !30 ; 2 uses
  %i.bbq = mul i64 %i.bbp, %indvars.iv427.i
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.bbo, i64 %i.bbq
  %i.bbs = mul i64 %i.bbp, %i.bbl
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bbo, i64 %i.bbs
  call void @llvm.memset.p0.i64(ptr align 4 %i.bbh, i8 0, i64 %i.azx, i1 false)
  call void @llvm.memset.p0.i64(ptr align 4 %i.bbn, i8 0, i64 %i.azx, i1 false)
  call void @llvm.memset.p0.i64(ptr align 2 %i.bbr, i8 0, i64 %i.azy, i1 false)
  call void @llvm.memset.p0.i64(ptr align 2 %i.bbt, i8 0, i64 %i.azy, i1 false)
  %indvars.iv.next428.i = add nuw nsw i64 %indvars.iv427.i, 1 ; 2 uses
  %exitcond431.not.i = icmp eq i64 %indvars.iv.next428.i, %wide.trip.count430.i
  br i1 %exitcond431.not.i, label %.preheader374.i, label %bb.bh, !llvm.loop !79

bb.bi:                                            ; preds = %._crit_edge405.i, %.lr.ph407.i
  %indvars.iv465.i = phi i64 [ %i.bav, %.lr.ph407.i ], [ %indvars.iv.next466.i, %._crit_edge405.i ] ; 4 uses
  %i.bbu = load ptr, ptr %i.bar, align 8, !tbaa !140
  %i.bbv = load i64, ptr %i.bas, align 8, !tbaa !30
  %i.bbw = mul i64 %i.bbv, %indvars.iv465.i
  %i.bbx = getelementptr inbounds nuw i8, ptr %i.bbu, i64 %i.bbw ; 4 uses
  %i.bby = load ptr, ptr %i.bat, align 8, !tbaa !140
  %i.bbz = load i64, ptr %i.bau, align 8, !tbaa !30
  %i.bca = mul i64 %i.bbz, %indvars.iv465.i
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.bby, i64 %i.bca ; 4 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.bbx, i8 0, i64 %i.baw, i1 false)
  call void @llvm.memset.p0.i64(ptr align 2 %i.bcb, i8 0, i64 %i.bax, i1 false)
  %i.bcc = getelementptr inbounds [4 x i8], ptr %i.bbx, i64 %i.bay
  %i.bcd = getelementptr inbounds [4 x i8], ptr %i.bcc, i64 %i.baz
  call void @llvm.memset.p0.i64(ptr align 4 %i.bcd, i8 0, i64 %i.baw, i1 false)
  %i.bce = getelementptr inbounds [2 x i8], ptr %i.bcb, i64 %i.bay
  %i.bcf = getelementptr inbounds [2 x i8], ptr %i.bce, i64 %i.baz
  call void @llvm.memset.p0.i64(ptr align 2 %i.bcf, i8 0, i64 %i.bax, i1 false)
  br i1 %i.bbb, label %.lr.ph404.i, label %._crit_edge405.i

.lr.ph404.i:                                      ; preds = %bb.bi
  %i.bcg = mul nsw i64 %indvars.iv465.i, %i.bbd
  br i1 %.not189385.i, label %.preheader.us.us.i, label %.lr.ph395.i

.preheader.us.us.i:                               ; preds = %.lr.ph404.i, %._crit_edge400.us.us.i
  %indvars.iv452.i = phi i64 [ %indvars.iv.next453.i, %._crit_edge400.us.us.i ], [ %i.bav, %.lr.ph404.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bl, %.preheader.us.us.i
  %indvars.iv447.i = phi i64 [ %indvars.iv.next448.i, %bb.bl ], [ 0, %.preheader.us.us.i ] ; 3 uses
  %.0170397.us.us.i = phi i32 [ %.1.us.us.i, %bb.bl ], [ 0, %.preheader.us.us.i ]
  %.0171396.us.us.i = phi float [ %.1172.us.us.i, %bb.bl ], [ 0.000000e+00, %.preheader.us.us.i ] ; 2 uses
  %i.bch = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2cv11xfeatures2dL28StarDetectorComputeResponsesIdEEiRKNS_3MatERS2_S5_iiE5pairs, i64 %indvars.iv447.i ; 2 uses
  %i.bci = getelementptr inbounds nuw i8, ptr %i.bch, i64 4
  %i.bcj = load i32, ptr %i.bci, align 4, !tbaa !28
  %i.bck = sext i32 %i.bcj to i64
  %i.bcl = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.bck
  %i.bcm = load i32, ptr %i.bcl, align 4, !tbaa !28 ; 2 uses
  %i.bcn = load i32, ptr %i.bch, align 8, !tbaa !28
  %i.bco = sext i32 %i.bcn to i64                 ; 2 uses
  %i.bcp = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.bco
  %i.bcq = load i32, ptr %i.bcp, align 4, !tbaa !28
  %i.bcr = sub nsw i32 %i.bcq, %i.bcm
  %i.bcs = sitofp i32 %i.bcm to float
  %i.bct = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv447.i ; 2 uses
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bct, i64 4
  %i.bcv = load float, ptr %i.bcu, align 4, !tbaa !36
  %i.bcw = sitofp i32 %i.bcr to float
  %i.bcx = load float, ptr %i.bct, align 8, !tbaa !36
  %i.bcy = fneg float %i.bcw
  %i.bcz = fmul float %i.bcx, %i.bcy
  %i.bda = call float @llvm.fmuladd.f32(float %i.bcs, float %i.bcv, float %i.bcz) ; 2 uses
  %i.bdb = call float @llvm.fabs.f32(float %i.bda)
  %i.bdc = call float @llvm.fabs.f32(float %.0171396.us.us.i)
  %i.bdd = fcmp ogt float %i.bdb, %i.bdc
  br i1 %i.bdd, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.bde = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.bco
  %i.bdf = load i32, ptr %i.bde, align 4, !tbaa !28
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.1172.us.us.i = phi float [ %i.bda, %bb.bk ], [ %.0171396.us.us.i, %bb.bj ] ; 2 uses
  %.1.us.us.i = phi i32 [ %i.bdf, %bb.bk ], [ %.0170397.us.us.i, %bb.bj ] ; 2 uses
  %indvars.iv.next448.i = add nuw nsw i64 %indvars.iv447.i, 1 ; 2 uses
  %exitcond451.not.i = icmp eq i64 %indvars.iv.next448.i, %.0176.lcssa.i
  br i1 %exitcond451.not.i, label %._crit_edge400.us.us.i, label %bb.bj, !llvm.loop !80

._crit_edge400.us.us.i:                           ; preds = %bb.bl
  %i.bdg = getelementptr inbounds [4 x i8], ptr %i.bbx, i64 %indvars.iv452.i
  store float %.1172.us.us.i, ptr %i.bdg, align 4, !tbaa !36
  %i.bdh = trunc i32 %.1.us.us.i to i16
  %i.bdi = getelementptr inbounds [2 x i8], ptr %i.bcb, i64 %indvars.iv452.i
  store i16 %i.bdh, ptr %i.bdi, align 2, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  %indvars.iv.next453.i = add nsw i64 %indvars.iv452.i, 1 ; 2 uses
  %exitcond456.not.i = icmp eq i64 %indvars.iv.next453.i, %wide.trip.count445.i
  br i1 %exitcond456.not.i, label %._crit_edge405.i, label %.preheader.us.us.i, !llvm.loop !81

.lr.ph395.i:                                      ; preds = %.lr.ph404.i, %._crit_edge400.i.a
  %indvars.iv442.i = phi i64 [ %indvars.iv.next443.i, %._crit_edge400.i.a ], [ %i.bav, %.lr.ph404.i ] ; 4 uses
  %i.bdj = add nsw i64 %indvars.iv442.i, %i.bcg   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %.lr.ph395.i
  %indvars.iv432.i = phi i64 [ 0, %.lr.ph395.i ], [ %indvars.iv.next433.i, %bb.bm ] ; 3 uses
  %i.bdk = getelementptr inbounds nuw [72 x i8], ptr %18, i64 %indvars.iv432.i ; 8 uses
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.bdk, i64 8
  %i.bdm = load ptr, ptr %i.bdl, align 8, !tbaa !144
  %i.bdn = getelementptr inbounds [4 x i8], ptr %i.bdm, i64 %i.bdj
  %i.bdo = load i32, ptr %i.bdn, align 4, !tbaa !28
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.bdk, i64 16
  %i.bdq = load ptr, ptr %i.bdp, align 8, !tbaa !144
  %i.bdr = getelementptr inbounds [4 x i8], ptr %i.bdq, i64 %i.bdj
  %i.bds = load i32, ptr %i.bdr, align 4, !tbaa !28
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bdk, i64 24
  %i.bdu = load ptr, ptr %i.bdt, align 8, !tbaa !144
  %i.bdv = getelementptr inbounds [4 x i8], ptr %i.bdu, i64 %i.bdj
  %i.bdw = load i32, ptr %i.bdv, align 4, !tbaa !28
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.bdk, i64 32
  %i.bdy = load ptr, ptr %i.bdx, align 8, !tbaa !144
  %i.bdz = getelementptr inbounds [4 x i8], ptr %i.bdy, i64 %i.bdj
  %i.bea = load i32, ptr %i.bdz, align 4, !tbaa !28
  %i.beb = getelementptr inbounds nuw i8, ptr %i.bdk, i64 40
  %i.bec = load ptr, ptr %i.beb, align 8, !tbaa !144
  %i.bed = getelementptr inbounds [4 x i8], ptr %i.bec, i64 %i.bdj
  %i.bee = load i32, ptr %i.bed, align 4, !tbaa !28
  %i.bef = getelementptr inbounds nuw i8, ptr %i.bdk, i64 48
  %i.beg = load ptr, ptr %i.bef, align 8, !tbaa !144
  %i.beh = getelementptr inbounds [4 x i8], ptr %i.beg, i64 %i.bdj
  %i.bei = load i32, ptr %i.beh, align 4, !tbaa !28
  %i.bej = getelementptr inbounds nuw i8, ptr %i.bdk, i64 56
  %i.bek = load ptr, ptr %i.bej, align 8, !tbaa !144
  %i.bel = getelementptr inbounds [4 x i8], ptr %i.bek, i64 %i.bdj
  %i.bem = load i32, ptr %i.bel, align 4, !tbaa !28
  %i.ben = getelementptr inbounds nuw i8, ptr %i.bdk, i64 64
  %i.beo = load ptr, ptr %i.ben, align 8, !tbaa !144
  %i.bep = getelementptr inbounds [4 x i8], ptr %i.beo, i64 %i.bdj
  %i.beq = load i32, ptr %i.bep, align 4, !tbaa !28
  %i.ber = add i32 %i.bds, %i.bdw
  %.neg143 = sub i32 %i.bdo, %i.ber
  %.neg370.i = add i32 %.neg143, %i.bea
  %i.bes = add i32 %.neg370.i, %i.bee
  %i.bet = add i32 %i.bei, %i.bem
  %i.beu = sub i32 %i.bes, %i.bet
  %i.bev = add nsw i32 %i.beu, %i.beq
  %i.bew = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv432.i
  store i32 %i.bev, ptr %i.bew, align 4, !tbaa !28
  %indvars.iv.next433.i = add nuw nsw i64 %indvars.iv432.i, 1 ; 2 uses
  %exitcond436.not.i = icmp eq i64 %indvars.iv.next433.i, %wide.trip.count435.i
  br i1 %exitcond436.not.i, label %.lr.ph399.i, label %bb.bm, !llvm.loop !82

._crit_edge400.i.a:                               ; preds = %bb.bo
  %i.bex = getelementptr inbounds [4 x i8], ptr %i.bbx, i64 %indvars.iv442.i
  store float %.1172.i, ptr %i.bex, align 4, !tbaa !36
  %i.bey = trunc i32 %.1.i to i16
  %i.bez = getelementptr inbounds [2 x i8], ptr %i.bcb, i64 %indvars.iv442.i
  store i16 %i.bey, ptr %i.bez, align 2, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  %indvars.iv.next443.i = add nsw i64 %indvars.iv442.i, 1 ; 2 uses
  %exitcond446.not.i = icmp eq i64 %indvars.iv.next443.i, %wide.trip.count445.i
  br i1 %exitcond446.not.i, label %._crit_edge405.i, label %.lr.ph395.i, !llvm.loop !81

.lr.ph399.i:                                      ; preds = %bb.bm, %bb.bo
  %indvars.iv437.i = phi i64 [ %indvars.iv.next438.i, %bb.bo ], [ 0, %bb.bm ] ; 3 uses
  %.0170397.i = phi i32 [ %.1.i, %bb.bo ], [ 0, %bb.bm ]
  %.0171396.i = phi float [ %.1172.i, %bb.bo ], [ 0.000000e+00, %bb.bm ] ; 2 uses
  %i.bfa = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2cv11xfeatures2dL28StarDetectorComputeResponsesIdEEiRKNS_3MatERS2_S5_iiE5pairs, i64 %indvars.iv437.i ; 2 uses
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.bfa, i64 4
  %i.bfc = load i32, ptr %i.bfb, align 4, !tbaa !28
  %i.bfd = sext i32 %i.bfc to i64
  %i.bfe = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.bfd
  %i.bff = load i32, ptr %i.bfe, align 4, !tbaa !28 ; 2 uses
  %i.bfg = load i32, ptr %i.bfa, align 8, !tbaa !28
  %i.bfh = sext i32 %i.bfg to i64                 ; 2 uses
  %i.bfi = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.bfh
  %i.bfj = load i32, ptr %i.bfi, align 4, !tbaa !28
  %i.bfk = sub nsw i32 %i.bfj, %i.bff
  %i.bfl = sitofp i32 %i.bff to float
  %i.bfm = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv437.i ; 2 uses
  %i.bfn = getelementptr inbounds nuw i8, ptr %i.bfm, i64 4
  %i.bfo = load float, ptr %i.bfn, align 4, !tbaa !36
  %i.bfp = sitofp i32 %i.bfk to float
  %i.bfq = load float, ptr %i.bfm, align 8, !tbaa !36
  %i.bfr = fneg float %i.bfp
  %i.bfs = fmul float %i.bfq, %i.bfr
  %i.bft = call float @llvm.fmuladd.f32(float %i.bfl, float %i.bfo, float %i.bfs) ; 2 uses
  %i.bfu = call float @llvm.fabs.f32(float %i.bft)
  %i.bfv = call float @llvm.fabs.f32(float %.0171396.i)
  %i.bfw = fcmp ogt float %i.bfu, %i.bfv
  br i1 %i.bfw, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %.lr.ph399.i
  %i.bfx = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.bfh
  %i.bfy = load i32, ptr %i.bfx, align 4, !tbaa !28
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %.lr.ph399.i
  %.1172.i = phi float [ %i.bft, %bb.bn ], [ %.0171396.i, %.lr.ph399.i ] ; 2 uses
  %.1.i = phi i32 [ %i.bfy, %bb.bn ], [ %.0170397.i, %.lr.ph399.i ] ; 2 uses
  %indvars.iv.next438.i = add nuw nsw i64 %indvars.iv437.i, 1 ; 2 uses
  %exitcond441.not.i = icmp eq i64 %indvars.iv.next438.i, %.0176.lcssa.i
  br i1 %exitcond441.not.i, label %._crit_edge400.i.a, label %.lr.ph399.i, !llvm.loop !80

._crit_edge405.i:                                 ; preds = %._crit_edge400.i.a, %._crit_edge400.us.us.i, %bb.bi
  %indvars.iv.next466.i = add nsw i64 %indvars.iv465.i, 1 ; 2 uses
  %exitcond469.not.i = icmp eq i64 %indvars.iv.next466.i, %wide.trip.count468.i
  br i1 %exitcond469.not.i, label %_ZN2cv11xfeatures2dL28StarDetectorComputeResponsesIiEEiRKNS_3MatERS2_S5_ii.exit, label %bb.bi, !llvm.loop !83

.body.i:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i193.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %.pn187.i = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.cn, %bb.as ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i193.i ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %.body

_ZN2cv11xfeatures2dL28StarDetectorComputeResponsesIiEEiRKNS_3MatERS2_S5_ii.exit: ; preds = %._crit_edge405.i, %.preheader374.i
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %bb.dm

.loopexit:                                        ; preds = %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.us.i, %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i152.us.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.split.us.i.invoke, %bb.q, %_ZN2cv11xfeatures2dL26StarDetectorSuppressNonmaxERKNS_3MatES3_RSt6vectorINS_8KeyPointESaIS5_EEiiiii.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.body.i25, %.body.i
  %eh.lpad-body = phi { ptr, i32 } [ %.pn187.i, %.body.i ], [ %.pn187.i26, %.body.i25 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %30) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %29) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19
  br label %bb.ej

bb.bp:                                            ; preds = %bb.p, %bb.r
  %i.bfz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bga = load i32, ptr %i.bfz, align 8, !tbaa !14 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %10) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %11) #19
  %i.bgb = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 5 uses
  %i.bgc = load i32, ptr %i.bgb, align 8, !tbaa !137 ; 3 uses
  %i.bgd = getelementptr inbounds nuw i8, ptr %26, i64 12 ; 5 uses
  %i.bge = load i32, ptr %i.bgd, align 4, !tbaa !138 ; 4 uses
  %i.bgf = getelementptr inbounds nuw i8, ptr %26, i64 72 ; 2 uses
  %i.bgg = load i32, ptr %i.bgf, align 8, !tbaa !139 ; 6 uses
  %i.bgh = icmp slt i32 %i.bgg, 3
  br i1 %i.bgh, label %bb.bt, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc.i27 unwind label %bb.cp

.noexc.i27:                                       ; preds = %bb.bq
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.15, i32 noundef 109) #20
          to label %bb.br unwind label %bb.bs

bb.br:                                            ; preds = %.noexc.i27
  unreachable

bb.bs:                                            ; preds = %.noexc.i27
  %i.bgi = landingpad { ptr, i32 }
          cleanup
  %i.bgj = load ptr, ptr %6, align 8, !tbaa !26   ; 2 uses
  %i.bgk = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bgl = icmp eq ptr %i.bgj, %i.bgk
  br i1 %i.bgl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i28: ; preds = %bb.bs
  %i.bgm = load i64, ptr %i.bgk, align 8, !tbaa !27
  %i.bgn = add i64 %i.bgm, 1
  call void @_ZdlPvm(ptr noundef %i.bgj, i64 noundef %i.bgn) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i29

end_hunk_0
begin_hunk_1_@_ZN2cv11xfeatures2d16StarDetectorImpl6detectERKNS_11_InputArrayERSt6vectorINS_8KeyPointESaIS6_EES4_:bb.a
  %i.coo = sext i32 %i.con to i64
  %i.cop = getelementptr inbounds [2 x i8], ptr %i.cmj, i64 %i.coo
  %i.coq = load i16, ptr %i.cop, align 2, !tbaa !34
  %i.cor = sitofp i16 %i.coq to double
  %i.cos = fadd double %i.col, %i.cor
  %i.cot = fadd double %i.cos, %i.coa
  %i.cou = getelementptr inbounds nuw [8 x i8], ptr %i.cml, i64 %indvars.iv210.i291.i
  store double %i.cot, ptr %i.cou, align 8, !tbaa !146
  %i.cov = getelementptr inbounds [8 x i8], ptr %i.cmm, i64 %i.cnw
  %i.cow = load double, ptr %i.cov, align 8, !tbaa !146
  %i.cox = getelementptr inbounds [8 x i8], ptr %i.cmm, i64 %i.coe
  %i.coy = load double, ptr %i.cox, align 8, !tbaa !146
  %i.coz = fadd double %i.cow, %i.coy
  %i.cpa = getelementptr inbounds [8 x i8], ptr %i.cmm, i64 %i.coi
  %i.cpb = load double, ptr %i.cpa, align 8, !tbaa !146
  %i.cpc = fsub double %i.coz, %i.cpb
  %i.cpd = getelementptr inbounds nuw [2 x i8], ptr %i.cmj, i64 %indvars.iv210.i291.i
  %i.cpe = load i16, ptr %i.cpd, align 2, !tbaa !34 ; 2 uses
  %i.cpf = sitofp i16 %i.cpe to double
  %i.cpg = fadd double %i.cpc, %i.cpf
  %i.cph = fadd double %i.cpg, %i.coa
  %i.cpi = getelementptr inbounds nuw [8 x i8], ptr %i.cmm, i64 %indvars.iv210.i291.i
  store double %i.cph, ptr %i.cpi, align 8, !tbaa !146
  %indvars.iv.next211.i292.i = add nuw nsw i64 %indvars.iv210.i291.i, 1 ; 2 uses
  %exitcond214.not.i293.i = icmp eq i64 %indvars.iv.next211.i292.i, %wide.trip.count213.i284.i
  br i1 %exitcond214.not.i293.i, label %._crit_edge196.us.i294.i, label %bb.cx, !llvm.loop !94

._crit_edge196.us.i294.i:                         ; preds = %bb.cx
  %i.cpj = getelementptr inbounds [8 x i8], ptr %i.cmk, i64 %i.cli
  %i.cpk = load double, ptr %i.cpj, align 8, !tbaa !146
  %i.cpl = getelementptr inbounds [8 x i8], ptr %i.cmk, i64 %i.cmc
  %i.cpm = load double, ptr %i.cpl, align 8, !tbaa !146
  %i.cpn = fadd double %i.cpk, %i.cpm
  %i.cpo = getelementptr inbounds [8 x i8], ptr %i.cmk, i64 %i.cme
  %i.cpp = load double, ptr %i.cpo, align 8, !tbaa !146
  %i.cpq = fsub double %i.cpn, %i.cpp
  %i.cpr = getelementptr inbounds [2 x i8], ptr %i.cmj, i64 %i.cli
  %i.cps = load i16, ptr %i.cpr, align 2, !tbaa !34
  %i.cpt = sitofp i16 %i.cps to double            ; 2 uses
  %i.cpu = fadd double %i.cpq, %i.cpt
  %i.cpv = getelementptr inbounds nuw [8 x i8], ptr %i.cmk, i64 %i.clp
  store double %i.cpu, ptr %i.cpv, align 8, !tbaa !146
  %i.cpw = getelementptr inbounds [8 x i8], ptr %i.cml, i64 %i.cme
  %i.cpx = load double, ptr %i.cpw, align 8, !tbaa !146
  %i.cpy = getelementptr inbounds [2 x i8], ptr %i.cmj, i64 %i.cmg
  %i.cpz = load i16, ptr %i.cpy, align 2, !tbaa !34
  %i.cqa = sitofp i16 %i.cpz to double
  %i.cqb = fadd double %i.cpx, %i.cqa
  %i.cqc = fadd double %i.cqb, %i.cpt             ; 2 uses
  %i.cqd = getelementptr inbounds nuw [8 x i8], ptr %i.cmm, i64 %i.clp
  store double %i.cqc, ptr %i.cqd, align 8, !tbaa !146
  %i.cqe = getelementptr inbounds nuw [8 x i8], ptr %i.cml, i64 %i.clp
  store double %i.cqc, ptr %i.cqe, align 8, !tbaa !146
  %i.cqf = add nuw i32 %.0179198.us.i290.i, 1
  %exitcond215.not.i295.i = icmp eq i32 %.0179198.us.i290.i, %i.cis
  br i1 %exitcond215.not.i295.i, label %_ZN2cv11xfeatures2dL21computeIntegralImagesIhdEEvRKNS_3MatERS2_S5_S5_i.exit.i, label %.lr.ph195.us.i285.i, !llvm.loop !95

.lr.ph204.split.i275.i:                           ; preds = %.lr.ph204.i270.i, %.lr.ph204.split.i275.i
  %.0202.i276.i = phi ptr [ %i.cqj, %.lr.ph204.split.i275.i ], [ %i.ckp, %.lr.ph204.i270.i ]
  %.0176201.i277.i = phi ptr [ %i.cqi, %.lr.ph204.split.i275.i ], [ %i.cko, %.lr.ph204.i270.i ]
  %.0177200.i278.i = phi ptr [ %i.cqh, %.lr.ph204.split.i275.i ], [ %i.ckn, %.lr.ph204.i270.i ]
  %.0178199.i279.i = phi ptr [ %i.cqg, %.lr.ph204.split.i275.i ], [ %i.cix, %.lr.ph204.i270.i ]
  %.0179198.i280.i = phi i32 [ %i.csh, %.lr.ph204.split.i275.i ], [ 2, %.lr.ph204.i270.i ] ; 2 uses
  %i.cqg = getelementptr inbounds i8, ptr %.0178199.i279.i, i64 %i.clt ; 6 uses
  %i.cqh = getelementptr inbounds [8 x i8], ptr %.0177200.i278.i, i64 %i.ckm ; 9 uses
  %i.cqi = getelementptr inbounds [8 x i8], ptr %.0176201.i277.i, i64 %i.ckm ; 7 uses
  %i.cqj = getelementptr inbounds [8 x i8], ptr %.0202.i276.i, i64 %i.ckm ; 5 uses
  %i.cqk = getelementptr inbounds [8 x i8], ptr %i.cqh, i64 %i.clv
  %i.cql = load double, ptr %i.cqk, align 8, !tbaa !146
  store double %i.cql, ptr %i.cqh, align 8, !tbaa !146
  %i.cqm = getelementptr inbounds [8 x i8], ptr %i.cqh, i64 %i.clw
  %i.cqn = load double, ptr %i.cqm, align 8, !tbaa !146
  %i.cqo = load i16, ptr %i.cqg, align 2, !tbaa !34
  %i.cqp = sitofp i16 %i.cqo to double            ; 3 uses
  %i.cqq = fadd double %i.cqn, %i.cqp
  %i.cqr = getelementptr inbounds nuw i8, ptr %i.cqh, i64 8
  store double %i.cqq, ptr %i.cqr, align 8, !tbaa !146
  %i.cqs = getelementptr inbounds [8 x i8], ptr %i.cqi, i64 %i.clw
  %i.cqt = load double, ptr %i.cqs, align 8, !tbaa !146
  store double %i.cqt, ptr %i.cqi, align 8, !tbaa !146
  %i.cqu = getelementptr inbounds [8 x i8], ptr %i.cqi, i64 %i.clx
  %i.cqv = load double, ptr %i.cqu, align 8, !tbaa !146
  %i.cqw = getelementptr inbounds i8, ptr %i.cqg, i64 %i.cly
  %i.cqx = load i16, ptr %i.cqw, align 2, !tbaa !34
  %i.cqy = sitofp i16 %i.cqx to double            ; 2 uses
  %i.cqz = fadd double %i.cqv, %i.cqy
  %i.cra = fadd double %i.cqz, %i.cqp             ; 2 uses
  store double %i.cra, ptr %i.cqj, align 8, !tbaa !146
  %i.crb = getelementptr inbounds nuw i8, ptr %i.cqi, i64 8
  store double %i.cra, ptr %i.crb, align 8, !tbaa !146
  %i.crc = getelementptr inbounds [8 x i8], ptr %i.cqj, i64 %i.clx
  %i.crd = load double, ptr %i.crc, align 8, !tbaa !146
  %i.cre = fadd double %i.crd, %i.cqy
  %i.crf = getelementptr inbounds nuw i8, ptr %i.cqg, i64 2
  %i.crg = load i16, ptr %i.crf, align 2, !tbaa !34
  %i.crh = sitofp i16 %i.crg to double
  %i.cri = fadd double %i.cre, %i.crh
  %i.crj = fadd double %i.cri, %i.cqp
  %i.crk = getelementptr inbounds nuw i8, ptr %i.cqj, i64 8
  store double %i.crj, ptr %i.crk, align 8, !tbaa !146
  %i.crl = getelementptr inbounds [8 x i8], ptr %i.cqh, i64 %i.cli
  %i.crm = load double, ptr %i.crl, align 8, !tbaa !146
  %i.crn = getelementptr inbounds [8 x i8], ptr %i.cqh, i64 %i.cmc
  %i.cro = load double, ptr %i.crn, align 8, !tbaa !146
  %i.crp = fadd double %i.crm, %i.cro
  %i.crq = getelementptr inbounds [8 x i8], ptr %i.cqh, i64 %i.cme
  %i.crr = load double, ptr %i.crq, align 8, !tbaa !146
  %i.crs = fsub double %i.crp, %i.crr
  %i.crt = getelementptr inbounds [2 x i8], ptr %i.cqg, i64 %i.cli
  %i.cru = load i16, ptr %i.crt, align 2, !tbaa !34
  %i.crv = sitofp i16 %i.cru to double            ; 2 uses
  %i.crw = fadd double %i.crs, %i.crv
  %i.crx = getelementptr inbounds [8 x i8], ptr %i.cqh, i64 %i.clp
  store double %i.crw, ptr %i.crx, align 8, !tbaa !146
  %i.cry = getelementptr inbounds [8 x i8], ptr %i.cqi, i64 %i.cme
  %i.crz = load double, ptr %i.cry, align 8, !tbaa !146
  %i.csa = getelementptr inbounds [2 x i8], ptr %i.cqg, i64 %i.cmg
  %i.csb = load i16, ptr %i.csa, align 2, !tbaa !34
  %i.csc = sitofp i16 %i.csb to double
  %i.csd = fadd double %i.crz, %i.csc
  %i.cse = fadd double %i.csd, %i.crv             ; 2 uses
  %i.csf = getelementptr inbounds [8 x i8], ptr %i.cqj, i64 %i.clp
  store double %i.cse, ptr %i.csf, align 8, !tbaa !146
  %i.csg = getelementptr inbounds [8 x i8], ptr %i.cqi, i64 %i.clp
  store double %i.cse, ptr %i.csg, align 8, !tbaa !146
  %i.csh = add nuw i32 %.0179198.i280.i, 1
  %exitcond209.not.i281.i = icmp eq i32 %.0179198.i280.i, %i.cis
  br i1 %exitcond209.not.i281.i, label %_ZN2cv11xfeatures2dL21computeIntegralImagesIhdEEvRKNS_3MatERS2_S5_S5_i.exit.i, label %.lr.ph204.split.i275.i, !llvm.loop !95

bb.cy:                                            ; preds = %.critedge.i46
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.cz unwind label %bb.db

bb.cz:                                            ; preds = %bb.cy
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -210, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv11xfeatures2dL28StarDetectorComputeResponsesIiEEiRKNS_3MatERS2_S5_ii, ptr noundef nonnull @.str.13, i32 noundef 247) #20
          to label %bb.da unwind label %bb.dc

bb.da:                                            ; preds = %bb.cz
  unreachable

bb.db:                                            ; preds = %bb.cy
  %i.csi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i83

bb.dc:                                            ; preds = %bb.cz
  %i.csj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.csk = load ptr, ptr %12, align 8, !tbaa !26  ; 2 uses
  %i.csl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.csm = icmp eq ptr %i.csk, %i.csl
  br i1 %i.csm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85: ; preds = %bb.dc
  %i.csn = load i64, ptr %i.csl, align 8, !tbaa !27
  %i.cso = add i64 %i.csn, 1
  call void @_ZdlPvm(ptr noundef %i.csk, i64 noundef %i.cso) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i83: ; preds = %bb.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85, %bb.db
  %.pn.i84 = phi { ptr, i32 } [ %i.csi, %bb.db ], [ %i.csj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85 ], [ %i.csj, %bb.dc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %.body.i25

_ZN2cv11xfeatures2dL21computeIntegralImagesIhdEEvRKNS_3MatERS2_S5_S5_i.exit.i: ; preds = %.lr.ph204.split.i275.i, %._crit_edge196.us.i294.i, %.lr.ph204.split.i.i, %._crit_edge196.us.i.i, %._crit_edge196.i224.i, %._crit_edge196.i.i76, %._crit_edge192.i268.i, %._crit_edge192.i243.i, %._crit_edge192.i210.i, %._crit_edge192.i.i
  %.pre-phi428.i = phi i32 [ %i.cat, %._crit_edge196.us.i.i ], [ %i.bsk, %._crit_edge196.i224.i ], [ %i.bkb, %._crit_edge196.i.i76 ], [ %i.ckj, %._crit_edge196.us.i294.i ], [ %i.cat, %.lr.ph204.split.i.i ], [ %i.bkb, %._crit_edge192.i.i ], [ %i.ckj, %._crit_edge192.i268.i ], [ %i.cat, %._crit_edge192.i243.i ], [ %i.bsk, %._crit_edge192.i210.i ], [ %i.ckj, %.lr.ph204.split.i275.i ] ; 5 uses
  %i.csp = phi ptr [ %i.bzp, %._crit_edge196.us.i.i ], [ %i.brg, %._crit_edge196.i224.i ], [ %i.bix, %._crit_edge196.i.i76 ], [ %i.cjf, %._crit_edge196.us.i294.i ], [ %i.bzp, %.lr.ph204.split.i.i ], [ %i.bix, %._crit_edge192.i.i ], [ %i.cjf, %._crit_edge192.i268.i ], [ %i.bzp, %._crit_edge192.i243.i ], [ %i.brg, %._crit_edge192.i210.i ], [ %i.cjf, %.lr.ph204.split.i275.i ] ; 2 uses
  %i.csq = phi ptr [ %i.bzn, %._crit_edge196.us.i.i ], [ %i.bre, %._crit_edge196.i224.i ], [ %i.biv, %._crit_edge196.i.i76 ], [ %i.cjd, %._crit_edge196.us.i294.i ], [ %i.bzn, %.lr.ph204.split.i.i ], [ %i.biv, %._crit_edge192.i.i ], [ %i.cjd, %._crit_edge192.i268.i ], [ %i.bzn, %._crit_edge192.i243.i ], [ %i.bre, %._crit_edge192.i210.i ], [ %i.cjd, %.lr.ph204.split.i275.i ] ; 2 uses
  %i.csr = phi ptr [ %i.bzk, %._crit_edge196.us.i.i ], [ %i.brb, %._crit_edge196.i224.i ], [ %i.bis, %._crit_edge196.i.i76 ], [ %i.cja, %._crit_edge196.us.i294.i ], [ %i.bzk, %.lr.ph204.split.i.i ], [ %i.bis, %._crit_edge192.i.i ], [ %i.cja, %._crit_edge192.i268.i ], [ %i.bzk, %._crit_edge192.i243.i ], [ %i.brb, %._crit_edge192.i210.i ], [ %i.cja, %.lr.ph204.split.i275.i ] ; 2 uses
  %.not189334.i = icmp slt i32 %i.bih, 0          ; 2 uses
  br i1 %.not189334.i, label %.lr.ph338.preheader.i, label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %_ZN2cv11xfeatures2dL21computeIntegralImagesIhdEEvRKNS_3MatERS2_S5_S5_i.exit.i
  %i.css = add nuw i32 %i.bih, 1
  %i.cst = zext i32 %i.css to i64                 ; 2 uses
  %i.csu = shl nuw nsw i64 %i.cst, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, ptr noundef nonnull align 16 dereferenceable(1) @_ZZN2cv11xfeatures2dL28StarDetectorComputeResponsesIdEEiRKNS_3MatERS2_S5_iiE6sizes0, i64 %i.csu, i1 false), !tbaa !28
  br label %bb.dd

._crit_edge.loopexit.i52:                         ; preds = %bb.dd
  %.pre.i53 = load i32, ptr %i.b, align 16, !tbaa !28
  br label %.lr.ph338.preheader.i

.lr.ph338.preheader.i:                            ; preds = %._crit_edge.loopexit.i52, %_ZN2cv11xfeatures2dL21computeIntegralImagesIhdEEvRKNS_3MatERS2_S5_S5_i.exit.i
  %i.csv = phi i32 [ %.pre.i53, %._crit_edge.loopexit.i52 ], [ undef, %_ZN2cv11xfeatures2dL21computeIntegralImagesIhdEEvRKNS_3MatERS2_S5_S5_i.exit.i ]
  %i.csw = sub nsw i32 0, %i.csv
  store i32 %i.csw, ptr %i.b, align 16, !tbaa !28
  %i.csx = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.csy = load i32, ptr %i.csx, align 4, !tbaa !28
  %i.csz = sub nsw i32 0, %i.csy
  store i32 %i.csz, ptr %i.csx, align 4, !tbaa !28
  %i.cta = sext i32 %i.bih to i64                 ; 2 uses
  %i.ctb = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.cta ; 2 uses
  %i.ctc = load i32, ptr %i.ctb, align 4, !tbaa !28
  %i.ctd = sub nsw i32 0, %i.ctc
  store i32 %i.ctd, ptr %i.ctb, align 4, !tbaa !28
  %i.cte = getelementptr inbounds [4 x i8], ptr @_ZZN2cv11xfeatures2dL28StarDetectorComputeResponsesIdEEiRKNS_3MatERS2_S5_iiE6sizes0, i64 %i.cta
  %i.ctf = load i32, ptr %i.cte, align 4, !tbaa !28 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.0176.lcssa.i47, 4
  br i1 %min.iters.check, label %.lr.ph338.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph338.preheader.i
  %n.vec = and i64 %.0176.lcssa.i47, 12           ; 4 uses
  %i.ctg = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.cth = getelementptr inbounds nuw i8, ptr %8, i64 144
  %i.cti = getelementptr inbounds nuw i8, ptr %8, i64 216
  %i.ctj = load i32, ptr %8, align 16, !tbaa !148
  %i.ctk = load i32, ptr %i.ctg, align 8, !tbaa !148
  %i.ctl = load i32, ptr %i.cth, align 16, !tbaa !148
  %i.ctm = load i32, ptr %i.cti, align 8, !tbaa !148
  %i.ctn = insertelement <4 x i32> poison, i32 %i.ctj, i64 0
  %i.cto = insertelement <4 x i32> %i.ctn, i32 %i.ctk, i64 1
  %i.ctp = insertelement <4 x i32> %i.cto, i32 %i.ctl, i64 2
  %i.ctq = insertelement <4 x i32> %i.ctp, i32 %i.ctm, i64 3 ; 2 uses
  %i.ctr = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.cts = getelementptr inbounds nuw i8, ptr %8, i64 216
  %i.ctt = getelementptr inbounds nuw i8, ptr %8, i64 288
  %i.ctu = getelementptr inbounds nuw i8, ptr %8, i64 360
  %i.ctv = load i32, ptr %i.ctr, align 8, !tbaa !148
  %i.ctw = load i32, ptr %i.cts, align 8, !tbaa !148
  %i.ctx = load i32, ptr %i.ctt, align 16, !tbaa !148
  %i.cty = load i32, ptr %i.ctu, align 8, !tbaa !148
  %i.ctz = insertelement <4 x i32> poison, i32 %i.ctv, i64 0
  %i.cua = insertelement <4 x i32> %i.ctz, i32 %i.ctw, i64 1
  %i.cub = insertelement <4 x i32> %i.cua, i32 %i.ctx, i64 2
  %i.cuc = insertelement <4 x i32> %i.cub, i32 %i.cty, i64 3
  %i.cud = sub nsw <4 x i32> %i.cuc, %i.ctq
  %i.cue = shufflevector <4 x i32> %i.cud, <4 x i32> %i.ctq, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.cuf = sitofp <8 x i32> %i.cue to <8 x float>
  %interleaved.vec = fdiv <8 x float> splat (float 1.000000e+00), %i.cuf
  store <8 x float> %interleaved.vec, ptr %i.a, align 16, !tbaa !36
  %i.cug = icmp eq i64 %n.vec, 4
  br i1 %i.cug, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.cuh = getelementptr inbounds nuw i8, ptr %8, i64 288
  %i.cui = getelementptr inbounds nuw i8, ptr %8, i64 360
  %i.cuj = getelementptr inbounds nuw i8, ptr %8, i64 432
  %i.cuk = getelementptr inbounds nuw i8, ptr %8, i64 576
  %i.cul = load i32, ptr %i.cuh, align 16, !tbaa !148
  %i.cum = load i32, ptr %i.cui, align 8, !tbaa !148
  %i.cun = load i32, ptr %i.cuj, align 16, !tbaa !148
  %i.cuo = load i32, ptr %i.cuk, align 16, !tbaa !148
  %i.cup = insertelement <4 x i32> poison, i32 %i.cul, i64 0
  %i.cuq = insertelement <4 x i32> %i.cup, i32 %i.cum, i64 1
  %i.cur = insertelement <4 x i32> %i.cuq, i32 %i.cun, i64 2
  %i.cus = insertelement <4 x i32> %i.cur, i32 %i.cuo, i64 3 ; 2 uses
  %i.cut = getelementptr inbounds nuw i8, ptr %8, i64 504
  %i.cuu = getelementptr inbounds nuw i8, ptr %8, i64 576
  %i.cuv = getelementptr inbounds nuw i8, ptr %8, i64 648
  %i.cuw = getelementptr inbounds nuw i8, ptr %8, i64 792
  %i.cux = load i32, ptr %i.cut, align 8, !tbaa !148
  %i.cuy = load i32, ptr %i.cuu, align 16, !tbaa !148
  %i.cuz = load i32, ptr %i.cuv, align 8, !tbaa !148
  %i.cva = load i32, ptr %i.cuw, align 8, !tbaa !148
  %i.cvb = insertelement <4 x i32> poison, i32 %i.cux, i64 0
  %i.cvc = insertelement <4 x i32> %i.cvb, i32 %i.cuy, i64 1
  %i.cvd = insertelement <4 x i32> %i.cvc, i32 %i.cuz, i64 2
  %i.cve = insertelement <4 x i32> %i.cvd, i32 %i.cva, i64 3
  %i.cvf = sub nsw <4 x i32> %i.cve, %i.cus
  %i.cvg = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.cvh = shufflevector <4 x i32> %i.cvf, <4 x i32> %i.cus, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.cvi = sitofp <8 x i32> %i.cvh to <8 x float>
  %interleaved.vec.1 = fdiv <8 x float> splat (float 1.000000e+00), %i.cvi
  store <8 x float> %interleaved.vec.1, ptr %i.cvg, align 16, !tbaa !36
  %i.cvj = icmp eq i64 %n.vec, 8
  br i1 %i.cvj, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.cvk = getelementptr inbounds nuw i8, ptr %8, i64 720
  %i.cvl = getelementptr inbounds nuw i8, ptr %8, i64 792
  %i.cvm = getelementptr inbounds nuw i8, ptr %8, i64 864
  %i.cvn = getelementptr inbounds nuw i8, ptr %8, i64 1008
  %i.cvo = load i32, ptr %i.cvk, align 16, !tbaa !148
  %i.cvp = load i32, ptr %i.cvl, align 8, !tbaa !148
  %i.cvq = load i32, ptr %i.cvm, align 16, !tbaa !148
  %i.cvr = load i32, ptr %i.cvn, align 16, !tbaa !148
  %i.cvs = insertelement <4 x i32> poison, i32 %i.cvo, i64 0
  %i.cvt = insertelement <4 x i32> %i.cvs, i32 %i.cvp, i64 1
  %i.cvu = insertelement <4 x i32> %i.cvt, i32 %i.cvq, i64 2
  %i.cvv = insertelement <4 x i32> %i.cvu, i32 %i.cvr, i64 3 ; 2 uses
  %i.cvw = getelementptr inbounds nuw i8, ptr %8, i64 936
  %i.cvx = getelementptr inbounds nuw i8, ptr %8, i64 1008
  %i.cvy = getelementptr inbounds nuw i8, ptr %8, i64 1080
  %i.cvz = getelementptr inbounds nuw i8, ptr %8, i64 1152
  %i.cwa = load i32, ptr %i.cvw, align 8, !tbaa !148
  %i.cwb = load i32, ptr %i.cvx, align 16, !tbaa !148
  %i.cwc = load i32, ptr %i.cvy, align 8, !tbaa !148
  %i.cwd = load i32, ptr %i.cvz, align 16, !tbaa !148
  %i.cwe = insertelement <4 x i32> poison, i32 %i.cwa, i64 0
  %i.cwf = insertelement <4 x i32> %i.cwe, i32 %i.cwb, i64 1
  %i.cwg = insertelement <4 x i32> %i.cwf, i32 %i.cwc, i64 2
  %i.cwh = insertelement <4 x i32> %i.cwg, i32 %i.cwd, i64 3
  %i.cwi = sub nsw <4 x i32> %i.cwh, %i.cvv
  %i.cwj = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.cwk = shufflevector <4 x i32> %i.cwi, <4 x i32> %i.cvv, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.cwl = sitofp <8 x i32> %i.cwk to <8 x float>
  %interleaved.vec.2 = fdiv <8 x float> splat (float 1.000000e+00), %i.cwl
  store <8 x float> %interleaved.vec.2, ptr %i.cwj, align 16, !tbaa !36
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %.0176.lcssa.i47, %n.vec
  br i1 %cmp.n, label %.preheader326.i, label %.lr.ph338.i.preheader

.lr.ph338.i.preheader:                            ; preds = %.lr.ph338.preheader.i, %middle.block
  %indvars.iv369.i.ph = phi i64 [ 0, %.lr.ph338.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph338.i

bb.dd:                                            ; preds = %bb.dd, %.lr.ph.i48
  %indvars.iv.i49 = phi i64 [ 0, %.lr.ph.i48 ], [ %indvars.iv.next.i50, %bb.dd ] ; 3 uses
  %i.cwm = getelementptr inbounds nuw [4 x i8], ptr @_ZZN2cv11xfeatures2dL28StarDetectorComputeResponsesIdEEiRKNS_3MatERS2_S5_iiE6sizes0, i64 %indvars.iv.i49
  %i.cwn = load i32, ptr %i.cwm, align 4, !tbaa !28 ; 6 uses
  %i.cwo = sdiv i32 %i.cwn, 2
  %i.cwp = add nsw i32 %i.cwo, %i.cwn             ; 5 uses
  %i.cwq = shl nsw i32 %i.cwn, 1
  %i.cwr = or disjoint i32 %i.cwq, 1              ; 2 uses
  %i.cws = mul nsw i32 %i.cwr, %i.cwr
  %i.cwt = mul nsw i32 %i.cwp, %i.cwp
  %i.cwu = add nsw i32 %i.cwp, 1                  ; 3 uses
  %i.cwv = mul nsw i32 %i.cwu, %i.cwu
  %i.cww = add nsw i32 %i.cwn, 1
  %i.cwx = mul nsw i32 %i.cww, %.pre-phi428.i
  %i.cwy = sext i32 %i.cwx to i64
  %i.cwz = getelementptr inbounds [8 x i8], ptr %i.csr, i64 %i.cwy ; 2 uses
  %i.cxa = sext i32 %i.cwn to i64                 ; 3 uses
  %i.cxb = getelementptr inbounds [8 x i8], ptr %i.cwz, i64 %i.cxa
  %i.cxc = getelementptr inbounds nuw i8, ptr %i.cxb, i64 8
  %i.cxd = getelementptr inbounds nuw [72 x i8], ptr %8, i64 %indvars.iv.i49 ; 9 uses
  %i.cxe = getelementptr inbounds nuw i8, ptr %i.cxd, i64 8
  store ptr %i.cxc, ptr %i.cxe, align 8, !tbaa !150
  %i.cxf = mul nsw i32 %i.cwn, %.pre-phi428.i
  %i.cxg = sext i32 %i.cxf to i64
  %i.cxh = sub nsw i64 0, %i.cxg
  %i.cxi = getelementptr inbounds [8 x i8], ptr %i.csr, i64 %i.cxh ; 2 uses
  %i.cxj = getelementptr inbounds [8 x i8], ptr %i.cxi, i64 %i.cxa
  %i.cxk = getelementptr inbounds nuw i8, ptr %i.cxj, i64 8
  %i.cxl = getelementptr inbounds nuw i8, ptr %i.cxd, i64 16
  store ptr %i.cxk, ptr %i.cxl, align 8, !tbaa !150
  %i.cxm = sub nsw i64 0, %i.cxa                  ; 2 uses
  %i.cxn = getelementptr inbounds [8 x i8], ptr %i.cwz, i64 %i.cxm
  %i.cxo = getelementptr inbounds nuw i8, ptr %i.cxd, i64 24
  store ptr %i.cxn, ptr %i.cxo, align 8, !tbaa !150
  %i.cxp = getelementptr inbounds [8 x i8], ptr %i.cxi, i64 %i.cxm
  %i.cxq = getelementptr inbounds nuw i8, ptr %i.cxd, i64 32
  store ptr %i.cxp, ptr %i.cxq, align 8, !tbaa !150
  %i.cxr = mul nsw i32 %i.cwu, %.pre-phi428.i
  %i.cxs = sext i32 %i.cxr to i64
  %i.cxt = getelementptr inbounds [8 x i8], ptr %i.csq, i64 %i.cxs
  %i.cxu = getelementptr inbounds nuw i8, ptr %i.cxt, i64 8
  %i.cxv = getelementptr inbounds nuw i8, ptr %i.cxd, i64 40
  store ptr %i.cxu, ptr %i.cxv, align 8, !tbaa !150
  %i.cxw = sext i32 %i.cwp to i64                 ; 2 uses
  %i.cxx = sub nsw i64 0, %i.cxw
  %i.cxy = getelementptr inbounds [8 x i8], ptr %i.csp, i64 %i.cxx
  %i.cxz = getelementptr inbounds nuw i8, ptr %i.cxd, i64 48
  store ptr %i.cxy, ptr %i.cxz, align 8, !tbaa !150
  %i.cya = getelementptr inbounds [8 x i8], ptr %i.csp, i64 %i.cxw
  %i.cyb = getelementptr inbounds nuw i8, ptr %i.cya, i64 8
  %i.cyc = getelementptr inbounds nuw i8, ptr %i.cxd, i64 56
  store ptr %i.cyb, ptr %i.cyc, align 8, !tbaa !150
  %i.cyd = mul nsw i32 %i.cwp, %.pre-phi428.i
  %i.cye = sext i32 %i.cyd to i64
  %i.cyf = sub nsw i64 0, %i.cye
  %i.cyg = getelementptr inbounds [8 x i8], ptr %i.csq, i64 %i.cyf
  %i.cyh = getelementptr inbounds nuw i8, ptr %i.cyg, i64 8
  %i.cyi = getelementptr inbounds nuw i8, ptr %i.cxd, i64 64
  store ptr %i.cyh, ptr %i.cyi, align 8, !tbaa !150
  %i.cyj = add nuw nsw i32 %i.cws, %i.cwt
  %i.cyk = add nuw nsw i32 %i.cyj, %i.cwv
  store i32 %i.cyk, ptr %i.cxd, align 8, !tbaa !148
  %indvars.iv.next.i50 = add nuw nsw i64 %indvars.iv.i49, 1 ; 2 uses
  %exitcond.not.i51 = icmp eq i64 %indvars.iv.next.i50, %i.cst
  br i1 %exitcond.not.i51, label %._crit_edge.loopexit.i52, label %bb.dd, !llvm.loop !96

.preheader326.i:                                  ; preds = %.lr.ph338.i, %middle.block
  %i.cyl = sdiv i32 %i.ctf, 2
  %i.cym = add i32 %i.cyl, %i.ctf                 ; 8 uses
  %i.cyn = icmp sgt i32 %i.cym, 0
  br i1 %i.cyn, label %.lr.ph340.i, label %.preheader325.i

.lr.ph340.i:                                      ; preds = %.preheader326.i
  %i.cyo = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.cyp = getelementptr inbounds nuw i8, ptr %29, i64 128
  %i.cyq = getelementptr inbounds nuw i8, ptr %30, i64 24
  %i.cyr = getelementptr inbounds nuw i8, ptr %30, i64 128
  %i.cys = sext i32 %i.bge to i64                 ; 2 uses
  %i.cyt = shl nsw i64 %i.cys, 2                  ; 2 uses
  %i.cyu = shl nsw i64 %i.cys, 1                  ; 2 uses
  %wide.trip.count377.i = zext nneg i32 %i.cym to i64
  br label %bb.de

.lr.ph338.i:                                      ; preds = %.lr.ph338.i.preheader, %.lr.ph338.i
  %indvars.iv369.i = phi i64 [ %indvars.iv.next370.i, %.lr.ph338.i ], [ %indvars.iv369.i.ph, %.lr.ph338.i.preheader ] ; 3 uses
  %i.cyv = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2cv11xfeatures2dL28StarDetectorComputeResponsesIdEEiRKNS_3MatERS2_S5_iiE5pairs, i64 %indvars.iv369.i ; 2 uses
  %i.cyw = getelementptr inbounds nuw i8, ptr %i.cyv, i64 4
  %i.cyx = load i32, ptr %i.cyw, align 4, !tbaa !28
  %i.cyy = sext i32 %i.cyx to i64
  %i.cyz = getelementptr inbounds [72 x i8], ptr %8, i64 %i.cyy
  %i.cza = load i32, ptr %i.cyz, align 8, !tbaa !148 ; 2 uses
  %i.czb = load i32, ptr %i.cyv, align 8, !tbaa !28
  %i.czc = sext i32 %i.czb to i64
  %i.czd = getelementptr inbounds [72 x i8], ptr %8, i64 %i.czc
  %i.cze = load i32, ptr %i.czd, align 8, !tbaa !148
  %i.czf = sub nsw i32 %i.cze, %i.cza
  %i.czg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv369.i
  %i.czh = insertelement <2 x i32> poison, i32 %i.czf, i64 0
  %i.czi = insertelement <2 x i32> %i.czh, i32 %i.cza, i64 1
  %i.czj = sitofp <2 x i32> %i.czi to <2 x float>
  %i.czk = fdiv <2 x float> splat (float 1.000000e+00), %i.czj
  store <2 x float> %i.czk, ptr %i.czg, align 8, !tbaa !36
  %indvars.iv.next370.i = add nuw nsw i64 %indvars.iv369.i, 1 ; 2 uses
  %exitcond373.not.i = icmp eq i64 %indvars.iv.next370.i, %.0176.lcssa.i47
  br i1 %exitcond373.not.i, label %.preheader326.i, label %.lr.ph338.i, !llvm.loop !97

.preheader325.i:                                  ; preds = %bb.de, %.preheader326.i
  %i.czl = sub nsw i32 %i.bgc, %i.cym             ; 2 uses
  %i.czm = icmp slt i32 %i.cym, %i.czl
  br i1 %i.czm, label %.lr.ph356.i, label %_ZN2cv11xfeatures2dL28StarDetectorComputeResponsesIdEEiRKNS_3MatERS2_S5_ii.exit

.lr.ph356.i:                                      ; preds = %.preheader325.i
  %i.czn = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.czo = getelementptr inbounds nuw i8, ptr %29, i64 128
  %i.czp = getelementptr inbounds nuw i8, ptr %30, i64 24
  %i.czq = getelementptr inbounds nuw i8, ptr %30, i64 128
  %i.czr = sext i32 %i.cym to i64                 ; 6 uses
  %i.czs = shl nsw i64 %i.czr, 2                  ; 2 uses
  %i.czt = shl nsw i64 %i.czr, 1                  ; 2 uses
  %i.czu = sext i32 %i.bge to i64                 ; 2 uses
  %i.czv = sub nsw i64 0, %i.czr                  ; 2 uses
  %i.czw = sub i32 %i.bge, %i.cym                 ; 2 uses
  %i.czx = icmp slt i32 %i.cym, %i.czw
  %i.czy = add i32 %i.bih, 1
  %i.czz = sext i32 %.pre-phi428.i to i64
  %wide.trip.count415.i = sext i32 %i.czl to i64
  %wide.trip.count392.i = sext i32 %i.czw to i64  ; 2 uses
  %wide.trip.count382.i = zext i32 %i.czy to i64
  br label %bb.df

bb.de:                                            ; preds = %bb.de, %.lr.ph340.i
  %indvars.iv374.i = phi i64 [ 0, %.lr.ph340.i ], [ %indvars.iv.next375.i, %bb.de ] ; 4 uses
  %i.daa = load ptr, ptr %i.cyo, align 8, !tbaa !140 ; 2 uses
  %i.dab = load i64, ptr %i.cyp, align 8, !tbaa !30 ; 2 uses
  %i.dac = mul i64 %i.dab, %indvars.iv374.i
  %i.dad = getelementptr inbounds nuw i8, ptr %i.daa, i64 %i.dac
  %i.dae = trunc i64 %indvars.iv374.i to i32
  %i.daf = xor i32 %i.dae, -1
  %i.dag = add i32 %i.bgc, %i.daf
  %i.dah = sext i32 %i.dag to i64                 ; 2 uses
  %i.dai = mul i64 %i.dab, %i.dah
  %i.daj = getelementptr inbounds nuw i8, ptr %i.daa, i64 %i.dai
  %i.dak = load ptr, ptr %i.cyq, align 8, !tbaa !140 ; 2 uses
  %i.dal = load i64, ptr %i.cyr, align 8, !tbaa !30 ; 2 uses
  %i.dam = mul i64 %i.dal, %indvars.iv374.i
  %i.dan = getelementptr inbounds nuw i8, ptr %i.dak, i64 %i.dam
  %i.dao = mul i64 %i.dal, %i.dah
  %i.dap = getelementptr inbounds nuw i8, ptr %i.dak, i64 %i.dao
  call void @llvm.memset.p0.i64(ptr align 4 %i.dad, i8 0, i64 %i.cyt, i1 false)
  call void @llvm.memset.p0.i64(ptr align 4 %i.daj, i8 0, i64 %i.cyt, i1 false)
  call void @llvm.memset.p0.i64(ptr align 2 %i.dan, i8 0, i64 %i.cyu, i1 false)
  call void @llvm.memset.p0.i64(ptr align 2 %i.dap, i8 0, i64 %i.cyu, i1 false)
  %indvars.iv.next375.i = add nuw nsw i64 %indvars.iv374.i, 1 ; 2 uses
  %exitcond378.not.i = icmp eq i64 %indvars.iv.next375.i, %wide.trip.count377.i
  br i1 %exitcond378.not.i, label %.preheader325.i, label %bb.de, !llvm.loop !98

bb.df:                                            ; preds = %._crit_edge354.i, %.lr.ph356.i
  %indvars.iv412.i = phi i64 [ %i.czr, %.lr.ph356.i ], [ %indvars.iv.next413.i, %._crit_edge354.i ] ; 4 uses
  %i.daq = load ptr, ptr %i.czn, align 8, !tbaa !140
  %i.dar = load i64, ptr %i.czo, align 8, !tbaa !30
  %i.das = mul i64 %i.dar, %indvars.iv412.i
  %i.dat = getelementptr inbounds nuw i8, ptr %i.daq, i64 %i.das ; 4 uses
  %i.dau = load ptr, ptr %i.czp, align 8, !tbaa !140
  %i.dav = load i64, ptr %i.czq, align 8, !tbaa !30
  %i.daw = mul i64 %i.dav, %indvars.iv412.i
  %i.dax = getelementptr inbounds nuw i8, ptr %i.dau, i64 %i.daw ; 4 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.dat, i8 0, i64 %i.czs, i1 false)
  call void @llvm.memset.p0.i64(ptr align 2 %i.dax, i8 0, i64 %i.czt, i1 false)
  %i.day = getelementptr inbounds [4 x i8], ptr %i.dat, i64 %i.czu
  %i.daz = getelementptr inbounds [4 x i8], ptr %i.day, i64 %i.czv
  call void @llvm.memset.p0.i64(ptr align 4 %i.daz, i8 0, i64 %i.czs, i1 false)
  %i.dba = getelementptr inbounds [2 x i8], ptr %i.dax, i64 %i.czu
  %i.dbb = getelementptr inbounds [2 x i8], ptr %i.dba, i64 %i.czv
  call void @llvm.memset.p0.i64(ptr align 2 %i.dbb, i8 0, i64 %i.czt, i1 false)
  br i1 %i.czx, label %.lr.ph353.i, label %._crit_edge354.i

.lr.ph353.i:                                      ; preds = %bb.df
  %i.dbc = mul nsw i64 %indvars.iv412.i, %i.czz
  br i1 %.not189334.i, label %.preheader.us.us.i56, label %.lr.ph344.i

.preheader.us.us.i56:                             ; preds = %.lr.ph353.i, %._crit_edge349.us.us.i
  %indvars.iv399.i = phi i64 [ %indvars.iv.next400.i, %._crit_edge349.us.us.i ], [ %i.czr, %.lr.ph353.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  br label %bb.dg

bb.dg:                                            ; preds = %bb.di, %.preheader.us.us.i56
  %indvars.iv394.i = phi i64 [ %indvars.iv.next395.i, %bb.di ], [ 0, %.preheader.us.us.i56 ] ; 3 uses
  %.0170346.us.us.i = phi i32 [ %.1.us.us.i58, %bb.di ], [ 0, %.preheader.us.us.i56 ]
  %.0171345.us.us.i = phi float [ %.1172.us.us.i57, %bb.di ], [ 0.000000e+00, %.preheader.us.us.i56 ] ; 2 uses
  %i.dbd = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2cv11xfeatures2dL28StarDetectorComputeResponsesIdEEiRKNS_3MatERS2_S5_iiE5pairs, i64 %indvars.iv394.i ; 2 uses
  %i.dbe = getelementptr inbounds nuw i8, ptr %i.dbd, i64 4
  %i.dbf = load i32, ptr %i.dbe, align 4, !tbaa !28
  %i.dbg = sext i32 %i.dbf to i64
  %i.dbh = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.dbg
  %i.dbi = load i32, ptr %i.dbh, align 4, !tbaa !28 ; 2 uses
  %i.dbj = load i32, ptr %i.dbd, align 8, !tbaa !28
  %i.dbk = sext i32 %i.dbj to i64                 ; 2 uses
  %i.dbl = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.dbk
  %i.dbm = load i32, ptr %i.dbl, align 4, !tbaa !28
  %i.dbn = sub nsw i32 %i.dbm, %i.dbi
  %i.dbo = sitofp i32 %i.dbi to float
  %i.dbp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv394.i ; 2 uses
  %i.dbq = getelementptr inbounds nuw i8, ptr %i.dbp, i64 4
  %i.dbr = load float, ptr %i.dbq, align 4, !tbaa !36
  %i.dbs = sitofp i32 %i.dbn to float
  %i.dbt = load float, ptr %i.dbp, align 8, !tbaa !36
  %i.dbu = fneg float %i.dbs
  %i.dbv = fmul float %i.dbt, %i.dbu
  %i.dbw = call float @llvm.fmuladd.f32(float %i.dbo, float %i.dbr, float %i.dbv) ; 2 uses
  %i.dbx = call float @llvm.fabs.f32(float %i.dbw)
  %i.dby = call float @llvm.fabs.f32(float %.0171345.us.us.i)
  %i.dbz = fcmp ogt float %i.dbx, %i.dby
  br i1 %i.dbz, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.dca = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.dbk
  %i.dcb = load i32, ptr %i.dca, align 4, !tbaa !28
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.1172.us.us.i57 = phi float [ %i.dbw, %bb.dh ], [ %.0171345.us.us.i, %bb.dg ] ; 2 uses
  %.1.us.us.i58 = phi i32 [ %i.dcb, %bb.dh ], [ %.0170346.us.us.i, %bb.dg ] ; 2 uses
  %indvars.iv.next395.i = add nuw nsw i64 %indvars.iv394.i, 1 ; 2 uses
  %exitcond398.not.i = icmp eq i64 %indvars.iv.next395.i, %.0176.lcssa.i47
  br i1 %exitcond398.not.i, label %._crit_edge349.us.us.i, label %bb.dg, !llvm.loop !99

._crit_edge349.us.us.i:                           ; preds = %bb.di
  %i.dcc = getelementptr inbounds [4 x i8], ptr %i.dat, i64 %indvars.iv399.i
  store float %.1172.us.us.i57, ptr %i.dcc, align 4, !tbaa !36
  %i.dcd = trunc i32 %.1.us.us.i58 to i16
  %i.dce = getelementptr inbounds [2 x i8], ptr %i.dax, i64 %indvars.iv399.i
  store i16 %i.dcd, ptr %i.dce, align 2, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %indvars.iv.next400.i = add nsw i64 %indvars.iv399.i, 1 ; 2 uses
  %exitcond403.not.i = icmp eq i64 %indvars.iv.next400.i, %wide.trip.count392.i
  br i1 %exitcond403.not.i, label %._crit_edge354.i, label %.preheader.us.us.i56, !llvm.loop !100

.lr.ph344.i:                                      ; preds = %.lr.ph353.i, %._crit_edge349.i.a
  %indvars.iv389.i = phi i64 [ %indvars.iv.next390.i, %._crit_edge349.i.a ], [ %i.czr, %.lr.ph353.i ] ; 4 uses
  %i.dcf = add nsw i64 %indvars.iv389.i, %i.dbc   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dj, %.lr.ph344.i
  %indvars.iv379.i = phi i64 [ 0, %.lr.ph344.i ], [ %indvars.iv.next380.i, %bb.dj ] ; 3 uses
  %i.dcg = getelementptr inbounds nuw [72 x i8], ptr %8, i64 %indvars.iv379.i ; 8 uses
  %i.dch = getelementptr inbounds nuw i8, ptr %i.dcg, i64 8
  %i.dci = load ptr, ptr %i.dch, align 8, !tbaa !150
  %i.dcj = getelementptr inbounds [8 x i8], ptr %i.dci, i64 %i.dcf
  %i.dck = load double, ptr %i.dcj, align 8, !tbaa !146
  %i.dcl = getelementptr inbounds nuw i8, ptr %i.dcg, i64 16
  %i.dcm = load ptr, ptr %i.dcl, align 8, !tbaa !150
  %i.dcn = getelementptr inbounds [8 x i8], ptr %i.dcm, i64 %i.dcf
  %i.dco = load double, ptr %i.dcn, align 8, !tbaa !146
  %i.dcp = fsub double %i.dck, %i.dco
  %i.dcq = getelementptr inbounds nuw i8, ptr %i.dcg, i64 24
  %i.dcr = load ptr, ptr %i.dcq, align 8, !tbaa !150
  %i.dcs = getelementptr inbounds [8 x i8], ptr %i.dcr, i64 %i.dcf
  %i.dct = load double, ptr %i.dcs, align 8, !tbaa !146
  %i.dcu = fsub double %i.dcp, %i.dct
  %i.dcv = getelementptr inbounds nuw i8, ptr %i.dcg, i64 32
  %i.dcw = load ptr, ptr %i.dcv, align 8, !tbaa !150
  %i.dcx = getelementptr inbounds [8 x i8], ptr %i.dcw, i64 %i.dcf
  %i.dcy = load double, ptr %i.dcx, align 8, !tbaa !146
  %i.dcz = fadd double %i.dcu, %i.dcy
  %i.dda = getelementptr inbounds nuw i8, ptr %i.dcg, i64 40
  %i.ddb = load ptr, ptr %i.dda, align 8, !tbaa !150
  %i.ddc = getelementptr inbounds [8 x i8], ptr %i.ddb, i64 %i.dcf
  %i.ddd = load double, ptr %i.ddc, align 8, !tbaa !146
  %i.dde = fadd double %i.dcz, %i.ddd
  %i.ddf = getelementptr inbounds nuw i8, ptr %i.dcg, i64 48
  %i.ddg = load ptr, ptr %i.ddf, align 8, !tbaa !150
  %i.ddh = getelementptr inbounds [8 x i8], ptr %i.ddg, i64 %i.dcf
  %i.ddi = load double, ptr %i.ddh, align 8, !tbaa !146
  %i.ddj = fsub double %i.dde, %i.ddi
  %i.ddk = getelementptr inbounds nuw i8, ptr %i.dcg, i64 56
  %i.ddl = load ptr, ptr %i.ddk, align 8, !tbaa !150
  %i.ddm = getelementptr inbounds [8 x i8], ptr %i.ddl, i64 %i.dcf
  %i.ddn = load double, ptr %i.ddm, align 8, !tbaa !146
  %i.ddo = fsub double %i.ddj, %i.ddn
  %i.ddp = getelementptr inbounds nuw i8, ptr %i.dcg, i64 64
  %i.ddq = load ptr, ptr %i.ddp, align 8, !tbaa !150
  %i.ddr = getelementptr inbounds [8 x i8], ptr %i.ddq, i64 %i.dcf
  %i.dds = load double, ptr %i.ddr, align 8, !tbaa !146
  %i.ddt = fadd double %i.ddo, %i.dds
  %i.ddu = fptosi double %i.ddt to i32
  %i.ddv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv379.i
  store i32 %i.ddu, ptr %i.ddv, align 4, !tbaa !28
  %indvars.iv.next380.i = add nuw nsw i64 %indvars.iv379.i, 1 ; 2 uses
  %exitcond383.not.i = icmp eq i64 %indvars.iv.next380.i, %wide.trip.count382.i
  br i1 %exitcond383.not.i, label %.lr.ph348.i, label %bb.dj, !llvm.loop !101

._crit_edge349.i.a:                               ; preds = %bb.dl
  %i.ddw = getelementptr inbounds [4 x i8], ptr %i.dat, i64 %indvars.iv389.i
  store float %.1172.i54, ptr %i.ddw, align 4, !tbaa !36
  %i.ddx = trunc i32 %.1.i55 to i16
  %i.ddy = getelementptr inbounds [2 x i8], ptr %i.dax, i64 %indvars.iv389.i
  store i16 %i.ddx, ptr %i.ddy, align 2, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %indvars.iv.next390.i = add nsw i64 %indvars.iv389.i, 1 ; 2 uses
  %exitcond393.not.i = icmp eq i64 %indvars.iv.next390.i, %wide.trip.count392.i
  br i1 %exitcond393.not.i, label %._crit_edge354.i, label %.lr.ph344.i, !llvm.loop !100

.lr.ph348.i:                                      ; preds = %bb.dj, %bb.dl
  %indvars.iv384.i = phi i64 [ %indvars.iv.next385.i, %bb.dl ], [ 0, %bb.dj ] ; 3 uses
  %.0170346.i = phi i32 [ %.1.i55, %bb.dl ], [ 0, %bb.dj ]
  %.0171345.i = phi float [ %.1172.i54, %bb.dl ], [ 0.000000e+00, %bb.dj ] ; 2 uses
  %i.ddz = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2cv11xfeatures2dL28StarDetectorComputeResponsesIdEEiRKNS_3MatERS2_S5_iiE5pairs, i64 %indvars.iv384.i ; 2 uses
  %i.dea = getelementptr inbounds nuw i8, ptr %i.ddz, i64 4
  %i.deb = load i32, ptr %i.dea, align 4, !tbaa !28
  %i.dec = sext i32 %i.deb to i64
  %i.ded = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.dec
  %i.dee = load i32, ptr %i.ded, align 4, !tbaa !28 ; 2 uses
  %i.def = load i32, ptr %i.ddz, align 8, !tbaa !28
  %i.deg = sext i32 %i.def to i64                 ; 2 uses
  %i.deh = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.deg
  %i.dei = load i32, ptr %i.deh, align 4, !tbaa !28
  %i.dej = sub nsw i32 %i.dei, %i.dee
  %i.dek = sitofp i32 %i.dee to float
  %i.del = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv384.i ; 2 uses
  %i.dem = getelementptr inbounds nuw i8, ptr %i.del, i64 4
  %i.den = load float, ptr %i.dem, align 4, !tbaa !36
  %i.deo = sitofp i32 %i.dej to float
  %i.dep = load float, ptr %i.del, align 8, !tbaa !36
  %i.deq = fneg float %i.deo
  %i.der = fmul float %i.dep, %i.deq
  %i.des = call float @llvm.fmuladd.f32(float %i.dek, float %i.den, float %i.der) ; 2 uses
  %i.det = call float @llvm.fabs.f32(float %i.des)
  %i.deu = call float @llvm.fabs.f32(float %.0171345.i)
  %i.dev = fcmp ogt float %i.det, %i.deu
  br i1 %i.dev, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %.lr.ph348.i
  %i.dew = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.deg
  %i.dex = load i32, ptr %i.dew, align 4, !tbaa !28
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %.lr.ph348.i
  %.1172.i54 = phi float [ %i.des, %bb.dk ], [ %.0171345.i, %.lr.ph348.i ] ; 2 uses
  %.1.i55 = phi i32 [ %i.dex, %bb.dk ], [ %.0170346.i, %.lr.ph348.i ] ; 2 uses
  %indvars.iv.next385.i = add nuw nsw i64 %indvars.iv384.i, 1 ; 2 uses
  %exitcond388.not.i = icmp eq i64 %indvars.iv.next385.i, %.0176.lcssa.i47
  br i1 %exitcond388.not.i, label %._crit_edge349.i.a, label %.lr.ph348.i, !llvm.loop !99

._crit_edge354.i:                                 ; preds = %._crit_edge349.i.a, %._crit_edge349.us.us.i, %bb.df
  %indvars.iv.next413.i = add nsw i64 %indvars.iv412.i, 1 ; 2 uses
  %exitcond416.not.i = icmp eq i64 %indvars.iv.next413.i, %wide.trip.count415.i
  br i1 %exitcond416.not.i, label %_ZN2cv11xfeatures2dL28StarDetectorComputeResponsesIdEEiRKNS_3MatERS2_S5_ii.exit, label %bb.df, !llvm.loop !102

.body.i25:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i83, %bb.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i193.i37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i29
  %.pn187.i26 = phi { ptr, i32 } [ %.pn.i84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i83 ], [ %i.bgi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i29 ], [ %i.bie, %bb.cp ], [ %i.bhc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i193.i37 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %.body

_ZN2cv11xfeatures2dL28StarDetectorComputeResponsesIdEEiRKNS_3MatERS2_S5_ii.exit: ; preds = %._crit_edge354.i, %.preheader325.i
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.dm

bb.dm:                                            ; preds = %_ZN2cv11xfeatures2dL28StarDetectorComputeResponsesIdEEiRKNS_3MatERS2_S5_ii.exit, %_ZN2cv11xfeatures2dL28StarDetectorComputeResponsesIiEEiRKNS_3MatERS2_S5_ii.exit
  %.0 = phi i32 [ %i.azq, %_ZN2cv11xfeatures2dL28StarDetectorComputeResponsesIiEEiRKNS_3MatERS2_S5_ii.exit ], [ %i.cym, %_ZN2cv11xfeatures2dL28StarDetectorComputeResponsesIdEEiRKNS_3MatERS2_S5_ii.exit ] ; 6 uses
  %i.dey = load ptr, ptr %2, align 8, !tbaa !125  ; 4 uses
  %i.dez = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.dfa = load ptr, ptr %i.dez, align 8, !tbaa !126 ; 2 uses
  %.not.i.i100 = icmp eq ptr %i.dfa, %i.dey
  br i1 %.not.i.i100, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE5clearEv.exit102, label %_ZSt8_DestroyIPN2cv8KeyPointES1_EvT_S3_RSaIT0_E.exit.i.i101

_ZSt8_DestroyIPN2cv8KeyPointES1_EvT_S3_RSaIT0_E.exit.i.i101: ; preds = %bb.dm
  store ptr %i.dey, ptr %i.dez, align 8, !tbaa !126
  br label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE5clearEv.exit102

_ZNSt6vectorIN2cv8KeyPointESaIS1_EE5clearEv.exit102: ; preds = %bb.dm, %_ZSt8_DestroyIPN2cv8KeyPointES1_EvT_S3_RSaIT0_E.exit.i.i101
  %i.dfb = phi ptr [ %i.dfa, %bb.dm ], [ %i.dey, %_ZSt8_DestroyIPN2cv8KeyPointES1_EvT_S3_RSaIT0_E.exit.i.i101 ]
  %i.dfc = icmp sgt i32 %.0, -1
  br i1 %i.dfc, label %bb.dn, label %_ZN2cv11xfeatures2dL26StarDetectorSuppressNonmaxERKNS_3MatES3_RSt6vectorINS_8KeyPointESaIS5_EEiiiii.exit

bb.dn:                                            ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE5clearEv.exit102
  %i.dfd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dfe = load i32, ptr %i.dfd, align 8, !tbaa !16 ; 2 uses
  %i.dff = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.dfg = load i32, ptr %i.dff, align 4, !tbaa !17 ; 2 uses
  %i.dfh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dfi = load i32, ptr %i.dfh, align 8, !tbaa !18 ; 2 uses
  %i.dfj = sdiv i32 %i.dfi, 2                     ; 11 uses
  %i.dfk = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.dfl = load i32, ptr %i.dfk, align 8, !tbaa !137
  %i.dfm = getelementptr inbounds nuw i8, ptr %29, i64 24 ; 3 uses
  %i.dfn = load ptr, ptr %i.dfm, align 8, !tbaa !140 ; 3 uses
  %i.dfo = getelementptr inbounds nuw i8, ptr %29, i64 128 ; 3 uses
  %i.dfp = load i64, ptr %i.dfo, align 8, !tbaa !30
  %i.dfq = getelementptr inbounds nuw i8, ptr %30, i64 24 ; 3 uses
  %i.dfr = load ptr, ptr %i.dfq, align 8, !tbaa !140 ; 2 uses
  %i.dfs = getelementptr inbounds nuw i8, ptr %30, i64 128 ; 3 uses
  %i.dft = load i64, ptr %i.dfs, align 8, !tbaa !30
  %i.dfu = lshr i64 %i.dft, 1
  %i.dfv = trunc i64 %i.dfu to i32                ; 2 uses
  %i.dfw = sub nsw i32 %i.dfl, %.0                ; 3 uses
  %i.dfx = icmp slt i32 %.0, %i.dfw
  br i1 %i.dfx, label %.preheader223.lr.ph.i, label %_ZN2cv11xfeatures2dL26StarDetectorSuppressNonmaxERKNS_3MatES3_RSt6vectorINS_8KeyPointESaIS5_EEiiiii.exit

.preheader223.lr.ph.i:                            ; preds = %bb.dn
  %i.dfy = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.dfz = load i32, ptr %i.dfy, align 4, !tbaa !15 ; 2 uses
  %i.dga = getelementptr inbounds nuw i8, ptr %29, i64 12
  %i.dgb = load i32, ptr %i.dga, align 4, !tbaa !138
  %i.dgc = sub nsw i32 %i.dgb, %.0                ; 3 uses
  %i.dgd = icmp slt i32 %.0, %i.dgc
  %i.dge = sitofp i32 %i.dfz to float
  %i.dgf = sub nsw i32 0, %i.dfz
  %i.dgg = sitofp i32 %i.dgf to float
  %i.dgh = add nsw i32 %i.dfw, -1
  %i.dgi = add nsw i32 %i.dgc, -1
  %i.dgj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  br i1 %i.dgd, label %.preheader223.us.preheader.i, label %_ZN2cv11xfeatures2dL26StarDetectorSuppressNonmaxERKNS_3MatES3_RSt6vectorINS_8KeyPointESaIS5_EEiiiii.exit

.preheader223.us.preheader.i:                     ; preds = %.preheader223.lr.ph.i
  %i.dgk = zext nneg i32 %.0 to i64               ; 2 uses
  %narrow.i = add nsw i32 %i.dfj, 1
  %i.dgl = sext i32 %narrow.i to i64              ; 2 uses
  %i.dgm = shl i64 %i.dfp, 30
  %i.dgn = ashr i64 %i.dgm, 32                    ; 3 uses
  %.not134262.us.i = icmp slt i32 %i.dfi, -1      ; 2 uses
  br label %.preheader223.us.i

end_hunk_1
