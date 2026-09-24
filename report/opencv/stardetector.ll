Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/stardetector?download=true
inline.NumInlined: 338
inline.NumDeleted: 146
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN2cv11xfeatures2d16StarDetectorImpl6detectERKNS_11_InputArrayERSt6vectorINS_8KeyPointESaIS6_EES4_:bb.a
  %i.app = load i32, ptr %i.apo, align 4, !tbaa !28
  %i.apq = getelementptr inbounds nuw [2 x i8], ptr %i.amz, i64 %indvars.iv214.i317.i
  %i.apr = load i16, ptr %i.apq, align 2, !tbaa !34 ; 2 uses
  %i.aps = sext i16 %i.apr to i32
  %i.apt = add i32 %i.apl, %i.aon
  %i.apu = add i32 %i.apt, %i.apn
  %i.apv = sub i32 %i.apu, %i.app
  %i.apw = add i32 %i.apv, %i.aps
  %i.apx = getelementptr inbounds nuw [4 x i8], ptr %i.anc, i64 %indvars.iv214.i317.i
  store i32 %i.apw, ptr %i.apx, align 4, !tbaa !28
  %indvars.iv.next215.i318.i = add nuw nsw i64 %indvars.iv214.i317.i, 1 ; 2 uses
  %exitcond218.not.i319.i = icmp eq i64 %indvars.iv.next215.i318.i, %wide.trip.count217.i310.i
  br i1 %exitcond218.not.i319.i, label %._crit_edge200.us.i320.i, label %bb.ba, !llvm.loop !75

._crit_edge200.us.i320.i:                         ; preds = %bb.ba
  %i.apy = getelementptr inbounds [4 x i8], ptr %i.ana, i64 %i.aly
  %i.apz = load i32, ptr %i.apy, align 4, !tbaa !28
  %i.aqa = getelementptr inbounds [4 x i8], ptr %i.ana, i64 %i.ams
  %i.aqb = load i32, ptr %i.aqa, align 4, !tbaa !28
  %i.aqc = add nsw i32 %i.aqb, %i.apz
  %i.aqd = getelementptr inbounds [4 x i8], ptr %i.ana, i64 %i.amu
  %i.aqe = load i32, ptr %i.aqd, align 4, !tbaa !28
  %i.aqf = sub i32 %i.aqc, %i.aqe
  %i.aqg = getelementptr inbounds [2 x i8], ptr %i.amz, i64 %i.aly
  %i.aqh = load i16, ptr %i.aqg, align 2, !tbaa !34
  %i.aqi = sext i16 %i.aqh to i32                 ; 2 uses
  %i.aqj = add nsw i32 %i.aqf, %i.aqi
  %i.aqk = getelementptr inbounds nuw [4 x i8], ptr %i.ana, i64 %i.amf
  store i32 %i.aqj, ptr %i.aqk, align 4, !tbaa !28
  %i.aql = getelementptr inbounds [4 x i8], ptr %i.anb, i64 %i.amu
  %i.aqm = load i32, ptr %i.aql, align 4, !tbaa !28
  %i.aqn = getelementptr inbounds [2 x i8], ptr %i.amz, i64 %i.amw
  %i.aqo = load i16, ptr %i.aqn, align 2, !tbaa !34
  %i.aqp = sext i16 %i.aqo to i32
  %i.aqq = add i32 %i.aqm, %i.aqi
  %i.aqr = add i32 %i.aqq, %i.aqp                 ; 2 uses
  %i.aqs = getelementptr inbounds nuw [4 x i8], ptr %i.anc, i64 %i.amf
  store i32 %i.aqr, ptr %i.aqs, align 4, !tbaa !28
  %i.aqt = getelementptr inbounds nuw [4 x i8], ptr %i.anb, i64 %i.amf
  store i32 %i.aqr, ptr %i.aqt, align 4, !tbaa !28
  %i.aqu = add nuw i32 %.0179202.us.i316.i, 1
  %exitcond219.not.i321.i = icmp eq i32 %.0179202.us.i316.i, %i.aim
  br i1 %exitcond219.not.i321.i, label %_ZN2cv11xfeatures2dL21computeIntegralImagesIhiEEvRKNS_3MatERS2_S5_S5_i.exit.i, label %.lr.ph199.us.i311.i, !llvm.loop !76

.lr.ph208.split.i301.i:                           ; preds = %.lr.ph208.i296.i, %.lr.ph208.split.i301.i
  %.0206.i302.i = phi ptr [ %i.aqy, %.lr.ph208.split.i301.i ], [ %i.akj, %.lr.ph208.i296.i ]
  %.0176205.i303.i = phi ptr [ %i.aqx, %.lr.ph208.split.i301.i ], [ %i.aki, %.lr.ph208.i296.i ]
  %.0177204.i304.i = phi ptr [ %i.aqw, %.lr.ph208.split.i301.i ], [ %i.akh, %.lr.ph208.i296.i ]
  %.0178203.i305.i = phi ptr [ %i.aqv, %.lr.ph208.split.i301.i ], [ %i.air, %.lr.ph208.i296.i ]
  %.0179202.i306.i = phi i32 [ %i.asv, %.lr.ph208.split.i301.i ], [ 2, %.lr.ph208.i296.i ] ; 2 uses
  %i.aqv = getelementptr inbounds i8, ptr %.0178203.i305.i, i64 %i.amj ; 6 uses
  %i.aqw = getelementptr inbounds [4 x i8], ptr %.0177204.i304.i, i64 %i.akg ; 9 uses
  %i.aqx = getelementptr inbounds [4 x i8], ptr %.0176205.i303.i, i64 %i.akg ; 7 uses
  %i.aqy = getelementptr inbounds [4 x i8], ptr %.0206.i302.i, i64 %i.akg ; 5 uses
  %i.aqz = getelementptr inbounds [4 x i8], ptr %i.aqw, i64 %i.aml
  %i.ara = load i32, ptr %i.aqz, align 4, !tbaa !28
  store i32 %i.ara, ptr %i.aqw, align 4, !tbaa !28
  %i.arb = getelementptr inbounds [4 x i8], ptr %i.aqw, i64 %i.amm
  %i.arc = load i32, ptr %i.arb, align 4, !tbaa !28
  %i.ard = load i16, ptr %i.aqv, align 2, !tbaa !34
  %i.are = sext i16 %i.ard to i32                 ; 2 uses
  %i.arf = add nsw i32 %i.arc, %i.are
  %i.arg = getelementptr inbounds nuw i8, ptr %i.aqw, i64 4
  store i32 %i.arf, ptr %i.arg, align 4, !tbaa !28
  %i.arh = getelementptr inbounds [4 x i8], ptr %i.aqx, i64 %i.amm
  %i.ari = load i32, ptr %i.arh, align 4, !tbaa !28
  store i32 %i.ari, ptr %i.aqx, align 4, !tbaa !28
  %i.arj = getelementptr inbounds [4 x i8], ptr %i.aqx, i64 %i.amn
  %i.ark = load i32, ptr %i.arj, align 4, !tbaa !28
  %i.arl = getelementptr inbounds i8, ptr %i.aqv, i64 %i.amo
  %i.arm = load i16, ptr %i.arl, align 2, !tbaa !34
  %i.arn = sext i16 %i.arm to i32
  %i.aro = add nsw i32 %i.arn, %i.are             ; 2 uses
  %i.arp = add i32 %i.aro, %i.ark                 ; 2 uses
  store i32 %i.arp, ptr %i.aqy, align 4, !tbaa !28
  %i.arq = getelementptr inbounds nuw i8, ptr %i.aqx, i64 4
  store i32 %i.arp, ptr %i.arq, align 4, !tbaa !28
  %i.arr = getelementptr inbounds [4 x i8], ptr %i.aqy, i64 %i.amn
  %i.ars = load i32, ptr %i.arr, align 4, !tbaa !28
  %i.art = getelementptr inbounds nuw i8, ptr %i.aqv, i64 2
  %i.aru = load i16, ptr %i.art, align 2, !tbaa !34
  %i.arv = sext i16 %i.aru to i32
  %i.arw = add i32 %i.ars, %i.aro
  %i.arx = add i32 %i.arw, %i.arv
  %i.ary = getelementptr inbounds nuw i8, ptr %i.aqy, i64 4
  store i32 %i.arx, ptr %i.ary, align 4, !tbaa !28
  %i.arz = getelementptr inbounds [4 x i8], ptr %i.aqw, i64 %i.aly
  %i.asa = load i32, ptr %i.arz, align 4, !tbaa !28
  %i.asb = getelementptr inbounds [4 x i8], ptr %i.aqw, i64 %i.ams
  %i.asc = load i32, ptr %i.asb, align 4, !tbaa !28
  %i.asd = add nsw i32 %i.asc, %i.asa
  %i.ase = getelementptr inbounds [4 x i8], ptr %i.aqw, i64 %i.amu
  %i.asf = load i32, ptr %i.ase, align 4, !tbaa !28
  %i.asg = sub i32 %i.asd, %i.asf
  %i.ash = getelementptr inbounds [2 x i8], ptr %i.aqv, i64 %i.aly
  %i.asi = load i16, ptr %i.ash, align 2, !tbaa !34
  %i.asj = sext i16 %i.asi to i32                 ; 2 uses
  %i.ask = add nsw i32 %i.asg, %i.asj
  %i.asl = getelementptr inbounds [4 x i8], ptr %i.aqw, i64 %i.amf
  store i32 %i.ask, ptr %i.asl, align 4, !tbaa !28
  %i.asm = getelementptr inbounds [4 x i8], ptr %i.aqx, i64 %i.amu
  %i.asn = load i32, ptr %i.asm, align 4, !tbaa !28
  %i.aso = getelementptr inbounds [2 x i8], ptr %i.aqv, i64 %i.amw
  %i.asp = load i16, ptr %i.aso, align 2, !tbaa !34
  %i.asq = sext i16 %i.asp to i32
  %i.asr = add i32 %i.asn, %i.asj
  %i.ass = add i32 %i.asr, %i.asq                 ; 2 uses
  %i.ast = getelementptr inbounds [4 x i8], ptr %i.aqy, i64 %i.amf
  store i32 %i.ass, ptr %i.ast, align 4, !tbaa !28
  %i.asu = getelementptr inbounds [4 x i8], ptr %i.aqx, i64 %i.amf
  store i32 %i.ass, ptr %i.asu, align 4, !tbaa !28
  %i.asv = add nuw i32 %.0179202.i306.i, 1
  %exitcond213.not.i307.i = icmp eq i32 %.0179202.i306.i, %i.aim
  br i1 %exitcond213.not.i307.i, label %_ZN2cv11xfeatures2dL21computeIntegralImagesIhiEEvRKNS_3MatERS2_S5_S5_i.exit.i, label %.lr.ph208.split.i301.i, !llvm.loop !76

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
  %i.asw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.bf:                                            ; preds = %bb.bc
  %i.asx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.asy = load ptr, ptr %22, align 8, !tbaa !26  ; 2 uses
  %i.asz = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.ata = icmp eq ptr %i.asy, %i.asz
  br i1 %i.ata, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.bf
  %i.atb = load i64, ptr %i.asz, align 8, !tbaa !27
  %i.atc = add i64 %i.atb, 1
  call void @_ZdlPvm(ptr noundef %i.asy, i64 noundef %i.atc) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.be
  %.pn.i = phi { ptr, i32 } [ %i.asw, %bb.be ], [ %i.asx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.asx, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  br label %.body.i

_ZN2cv11xfeatures2dL21computeIntegralImagesIhiEEvRKNS_3MatERS2_S5_S5_i.exit.i: ; preds = %.lr.ph208.split.i301.i, %._crit_edge200.us.i320.i, %.lr.ph208.split.i260.i, %._crit_edge200.us.i279.i, %.lr.ph208.split.i219.i, %._crit_edge200.us.i238.i, %.lr.ph208.split.i.i, %._crit_edge200.us.i.i, %._crit_edge196.i294.i, %._crit_edge196.i253.i, %._crit_edge196.i212.i, %._crit_edge196.i.i
  %i.atd = phi ptr [ %i.df, %.lr.ph208.split.i.i ], [ %i.df, %._crit_edge200.us.i.i ], [ %i.aiz, %._crit_edge200.us.i320.i ], [ %i.yp, %.lr.ph208.split.i260.i ], [ %i.yp, %._crit_edge200.us.i279.i ], [ %i.nx, %.lr.ph208.split.i219.i ], [ %i.nx, %._crit_edge200.us.i238.i ], [ %i.df, %._crit_edge196.i.i ], [ %i.aiz, %._crit_edge196.i294.i ], [ %i.yp, %._crit_edge196.i253.i ], [ %i.nx, %._crit_edge196.i212.i ], [ %i.aiz, %.lr.ph208.split.i301.i ] ; 2 uses
  %i.ate = phi ptr [ %i.dd, %.lr.ph208.split.i.i ], [ %i.dd, %._crit_edge200.us.i.i ], [ %i.aix, %._crit_edge200.us.i320.i ], [ %i.yn, %.lr.ph208.split.i260.i ], [ %i.yn, %._crit_edge200.us.i279.i ], [ %i.nv, %.lr.ph208.split.i219.i ], [ %i.nv, %._crit_edge200.us.i238.i ], [ %i.dd, %._crit_edge196.i.i ], [ %i.aix, %._crit_edge196.i294.i ], [ %i.yn, %._crit_edge196.i253.i ], [ %i.nv, %._crit_edge196.i212.i ], [ %i.aix, %.lr.ph208.split.i301.i ] ; 2 uses
  %i.atf = phi ptr [ %i.da, %.lr.ph208.split.i.i ], [ %i.da, %._crit_edge200.us.i.i ], [ %i.aiu, %._crit_edge200.us.i320.i ], [ %i.yk, %.lr.ph208.split.i260.i ], [ %i.yk, %._crit_edge200.us.i279.i ], [ %i.ns, %.lr.ph208.split.i219.i ], [ %i.ns, %._crit_edge200.us.i238.i ], [ %i.da, %._crit_edge196.i.i ], [ %i.aiu, %._crit_edge196.i294.i ], [ %i.yk, %._crit_edge196.i253.i ], [ %i.ns, %._crit_edge196.i212.i ], [ %i.aiu, %.lr.ph208.split.i301.i ] ; 2 uses
  %i.atg = phi i64 [ %i.dv, %.lr.ph208.split.i.i ], [ %i.dv, %._crit_edge200.us.i.i ], [ %i.ajp, %._crit_edge200.us.i320.i ], [ %i.zf, %.lr.ph208.split.i260.i ], [ %i.zf, %._crit_edge200.us.i279.i ], [ %i.on, %.lr.ph208.split.i219.i ], [ %i.on, %._crit_edge200.us.i238.i ], [ %i.dv, %._crit_edge196.i.i ], [ %i.ajp, %._crit_edge196.i294.i ], [ %i.zf, %._crit_edge196.i253.i ], [ %i.on, %._crit_edge196.i212.i ], [ %i.ajp, %.lr.ph208.split.i301.i ]
  %i.ath = load i32, ptr %19, align 8, !tbaa !133 ; 2 uses
  %i.ati = lshr i32 %i.ath, 5
  %i.atj = and i32 %i.ati, 127
  %i.atk = add nuw nsw i32 %i.atj, 1
  %i.atl = shl i32 %i.ath, 2
  %i.atm = and i32 %i.atl, 124
  %i.atn = zext nneg i32 %i.atm to i64
  %i.ato = lshr i64 1275511473185297, %i.atn
  %i.atp = trunc i64 %i.ato to i32
  %i.atq = and i32 %i.atp, 15
  %i.atr = mul nuw nsw i32 %i.atq, %i.atk
  %i.ats = zext nneg i32 %i.atr to i64
  %i.att = udiv i64 %i.atg, %i.ats                ; 2 uses
  %i.atu = trunc i64 %i.att to i32                ; 4 uses
  %.not189387.i = icmp slt i32 %i.cp, 0           ; 2 uses
  br i1 %.not189387.i, label %.lr.ph391.preheader.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2cv11xfeatures2dL21computeIntegralImagesIhiEEvRKNS_3MatERS2_S5_S5_i.exit.i
  %i.atv = add nuw i32 %i.cp, 1
  %i.atw = zext i32 %i.atv to i64                 ; 2 uses
  %i.atx = shl nuw nsw i64 %i.atw, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.e, ptr noundef nonnull align 16 dereferenceable(1) @_ZZN2cv11xfeatures2dL28StarDetectorComputeResponsesIdEEiRKNS_3MatERS2_S5_iiE6sizes0, i64 %i.atx, i1 false), !tbaa !28
  br label %bb.bg

._crit_edge.loopexit.i:                           ; preds = %bb.bg
  %.pre.i = load i32, ptr %i.e, align 16, !tbaa !28
  br label %.lr.ph391.preheader.i

.lr.ph391.preheader.i:                            ; preds = %._crit_edge.loopexit.i, %_ZN2cv11xfeatures2dL21computeIntegralImagesIhiEEvRKNS_3MatERS2_S5_S5_i.exit.i
  %i.aty = phi i32 [ %.pre.i, %._crit_edge.loopexit.i ], [ undef, %_ZN2cv11xfeatures2dL21computeIntegralImagesIhiEEvRKNS_3MatERS2_S5_S5_i.exit.i ]
  %i.atz = sub nsw i32 0, %i.aty
  store i32 %i.atz, ptr %i.e, align 16, !tbaa !28
  %i.aua = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.aub = load i32, ptr %i.aua, align 4, !tbaa !28
  %i.auc = sub nsw i32 0, %i.aub
  store i32 %i.auc, ptr %i.aua, align 4, !tbaa !28
  %i.aud = sext i32 %i.cp to i64                  ; 2 uses
  %i.aue = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.aud ; 2 uses
  %i.auf = load i32, ptr %i.aue, align 4, !tbaa !28
  %i.aug = sub nsw i32 0, %i.auf
  store i32 %i.aug, ptr %i.aue, align 4, !tbaa !28
  %i.auh = getelementptr inbounds [4 x i8], ptr @_ZZN2cv11xfeatures2dL28StarDetectorComputeResponsesIdEEiRKNS_3MatERS2_S5_iiE6sizes0, i64 %i.aud
  %i.aui = load i32, ptr %i.auh, align 4, !tbaa !28 ; 3 uses
  %min.iters.check312 = icmp samesign ult i64 %.0176.lcssa.i, 4
  br i1 %min.iters.check312, label %.lr.ph391.i.preheader, label %vector.ph313

vector.ph313:                                     ; preds = %.lr.ph391.preheader.i
  %n.vec314 = and i64 %.0176.lcssa.i, 12          ; 4 uses
  %i.auj = getelementptr inbounds nuw i8, ptr %18, i64 72
  %i.auk = getelementptr inbounds nuw i8, ptr %18, i64 144
  %i.aul = getelementptr inbounds nuw i8, ptr %18, i64 216
  %i.aum = load i32, ptr %18, align 16, !tbaa !142
  %i.aun = load i32, ptr %i.auj, align 8, !tbaa !142
  %i.auo = load i32, ptr %i.auk, align 16, !tbaa !142
  %i.aup = load i32, ptr %i.aul, align 8, !tbaa !142
  %i.auq = insertelement <4 x i32> poison, i32 %i.aum, i64 0
  %i.aur = insertelement <4 x i32> %i.auq, i32 %i.aun, i64 1
  %i.aus = insertelement <4 x i32> %i.aur, i32 %i.auo, i64 2
  %i.aut = insertelement <4 x i32> %i.aus, i32 %i.aup, i64 3 ; 2 uses
  %i.auu = getelementptr inbounds nuw i8, ptr %18, i64 72
  %i.auv = getelementptr inbounds nuw i8, ptr %18, i64 216
  %i.auw = getelementptr inbounds nuw i8, ptr %18, i64 288
  %i.aux = getelementptr inbounds nuw i8, ptr %18, i64 360
  %i.auy = load i32, ptr %i.auu, align 8, !tbaa !142
  %i.auz = load i32, ptr %i.auv, align 8, !tbaa !142
  %i.ava = load i32, ptr %i.auw, align 16, !tbaa !142
  %i.avb = load i32, ptr %i.aux, align 8, !tbaa !142
  %i.avc = insertelement <4 x i32> poison, i32 %i.auy, i64 0
  %i.avd = insertelement <4 x i32> %i.avc, i32 %i.auz, i64 1
  %i.ave = insertelement <4 x i32> %i.avd, i32 %i.ava, i64 2
  %i.avf = insertelement <4 x i32> %i.ave, i32 %i.avb, i64 3
  %i.avg = sub nsw <4 x i32> %i.avf, %i.aut
  %i.avh = shufflevector <4 x i32> %i.avg, <4 x i32> %i.aut, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.avi = sitofp <8 x i32> %i.avh to <8 x float>
  %interleaved.vec317 = fdiv <8 x float> splat (float 1.000000e+00), %i.avi
  store <8 x float> %interleaved.vec317, ptr %i.d, align 16, !tbaa !36
  %i.avj = icmp eq i64 %n.vec314, 4
  br i1 %i.avj, label %middle.block319, label %vector.body315.1

vector.body315.1:                                 ; preds = %vector.ph313
  %i.avk = getelementptr inbounds nuw i8, ptr %18, i64 288
  %i.avl = getelementptr inbounds nuw i8, ptr %18, i64 360
  %i.avm = getelementptr inbounds nuw i8, ptr %18, i64 432
  %i.avn = getelementptr inbounds nuw i8, ptr %18, i64 576
  %i.avo = load i32, ptr %i.avk, align 16, !tbaa !142
  %i.avp = load i32, ptr %i.avl, align 8, !tbaa !142
  %i.avq = load i32, ptr %i.avm, align 16, !tbaa !142
  %i.avr = load i32, ptr %i.avn, align 16, !tbaa !142
  %i.avs = insertelement <4 x i32> poison, i32 %i.avo, i64 0
  %i.avt = insertelement <4 x i32> %i.avs, i32 %i.avp, i64 1
  %i.avu = insertelement <4 x i32> %i.avt, i32 %i.avq, i64 2
  %i.avv = insertelement <4 x i32> %i.avu, i32 %i.avr, i64 3 ; 2 uses
  %i.avw = getelementptr inbounds nuw i8, ptr %18, i64 504
  %i.avx = getelementptr inbounds nuw i8, ptr %18, i64 576
  %i.avy = getelementptr inbounds nuw i8, ptr %18, i64 648
  %i.avz = getelementptr inbounds nuw i8, ptr %18, i64 792
  %i.awa = load i32, ptr %i.avw, align 8, !tbaa !142
  %i.awb = load i32, ptr %i.avx, align 16, !tbaa !142
  %i.awc = load i32, ptr %i.avy, align 8, !tbaa !142
  %i.awd = load i32, ptr %i.avz, align 8, !tbaa !142
  %i.awe = insertelement <4 x i32> poison, i32 %i.awa, i64 0
  %i.awf = insertelement <4 x i32> %i.awe, i32 %i.awb, i64 1
  %i.awg = insertelement <4 x i32> %i.awf, i32 %i.awc, i64 2
  %i.awh = insertelement <4 x i32> %i.awg, i32 %i.awd, i64 3
  %i.awi = sub nsw <4 x i32> %i.awh, %i.avv
  %i.awj = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.awk = shufflevector <4 x i32> %i.awi, <4 x i32> %i.avv, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.awl = sitofp <8 x i32> %i.awk to <8 x float>
  %interleaved.vec317.1 = fdiv <8 x float> splat (float 1.000000e+00), %i.awl
  store <8 x float> %interleaved.vec317.1, ptr %i.awj, align 16, !tbaa !36
  %i.awm = icmp eq i64 %n.vec314, 8
  br i1 %i.awm, label %middle.block319, label %vector.body315.2

vector.body315.2:                                 ; preds = %vector.body315.1
  %i.awn = getelementptr inbounds nuw i8, ptr %18, i64 720
  %i.awo = getelementptr inbounds nuw i8, ptr %18, i64 792
  %i.awp = getelementptr inbounds nuw i8, ptr %18, i64 864
  %i.awq = getelementptr inbounds nuw i8, ptr %18, i64 1008
  %i.awr = load i32, ptr %i.awn, align 16, !tbaa !142
  %i.aws = load i32, ptr %i.awo, align 8, !tbaa !142
  %i.awt = load i32, ptr %i.awp, align 16, !tbaa !142
  %i.awu = load i32, ptr %i.awq, align 16, !tbaa !142
  %i.awv = insertelement <4 x i32> poison, i32 %i.awr, i64 0
  %i.aww = insertelement <4 x i32> %i.awv, i32 %i.aws, i64 1
  %i.awx = insertelement <4 x i32> %i.aww, i32 %i.awt, i64 2
  %i.awy = insertelement <4 x i32> %i.awx, i32 %i.awu, i64 3 ; 2 uses
  %i.awz = getelementptr inbounds nuw i8, ptr %18, i64 936
  %i.axa = getelementptr inbounds nuw i8, ptr %18, i64 1008
  %i.axb = getelementptr inbounds nuw i8, ptr %18, i64 1080
  %i.axc = getelementptr inbounds nuw i8, ptr %18, i64 1152
  %i.axd = load i32, ptr %i.awz, align 8, !tbaa !142
  %i.axe = load i32, ptr %i.axa, align 16, !tbaa !142
  %i.axf = load i32, ptr %i.axb, align 8, !tbaa !142
  %i.axg = load i32, ptr %i.axc, align 16, !tbaa !142
  %i.axh = insertelement <4 x i32> poison, i32 %i.axd, i64 0
  %i.axi = insertelement <4 x i32> %i.axh, i32 %i.axe, i64 1
  %i.axj = insertelement <4 x i32> %i.axi, i32 %i.axf, i64 2
  %i.axk = insertelement <4 x i32> %i.axj, i32 %i.axg, i64 3
  %i.axl = sub nsw <4 x i32> %i.axk, %i.awy
  %i.axm = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.axn = shufflevector <4 x i32> %i.axl, <4 x i32> %i.awy, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.axo = sitofp <8 x i32> %i.axn to <8 x float>
  %interleaved.vec317.2 = fdiv <8 x float> splat (float 1.000000e+00), %i.axo
  store <8 x float> %interleaved.vec317.2, ptr %i.axm, align 16, !tbaa !36
  br label %middle.block319

middle.block319:                                  ; preds = %vector.body315.2, %vector.body315.1, %vector.ph313
  %cmp.n320 = icmp eq i64 %.0176.lcssa.i, %n.vec314
  br i1 %cmp.n320, label %.preheader377.i, label %.lr.ph391.i.preheader

.lr.ph391.i.preheader:                            ; preds = %.lr.ph391.preheader.i, %middle.block319
  %indvars.iv424.i.ph = phi i64 [ 0, %.lr.ph391.preheader.i ], [ %n.vec314, %middle.block319 ]
  br label %.lr.ph391.i

bb.bg:                                            ; preds = %bb.bg, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.bg ] ; 3 uses
  %i.axp = getelementptr inbounds nuw [4 x i8], ptr @_ZZN2cv11xfeatures2dL28StarDetectorComputeResponsesIdEEiRKNS_3MatERS2_S5_iiE6sizes0, i64 %indvars.iv.i
  %i.axq = load i32, ptr %i.axp, align 4, !tbaa !28 ; 6 uses
  %i.axr = sdiv i32 %i.axq, 2
  %i.axs = add nsw i32 %i.axr, %i.axq             ; 5 uses
  %i.axt = shl nsw i32 %i.axq, 1
  %i.axu = or disjoint i32 %i.axt, 1              ; 2 uses
  %i.axv = mul nsw i32 %i.axu, %i.axu
  %i.axw = mul nsw i32 %i.axs, %i.axs
  %i.axx = add nsw i32 %i.axs, 1                  ; 3 uses
  %i.axy = mul nsw i32 %i.axx, %i.axx
  %i.axz = add nsw i32 %i.axq, 1
  %i.aya = mul nsw i32 %i.axz, %i.atu
  %i.ayb = sext i32 %i.aya to i64
  %i.ayc = getelementptr inbounds [4 x i8], ptr %i.atf, i64 %i.ayb ; 2 uses
  %i.ayd = sext i32 %i.axq to i64                 ; 3 uses
  %i.aye = getelementptr inbounds [4 x i8], ptr %i.ayc, i64 %i.ayd
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.aye, i64 4
  %i.ayg = getelementptr inbounds nuw [72 x i8], ptr %18, i64 %indvars.iv.i ; 9 uses
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.ayg, i64 8
  store ptr %i.ayf, ptr %i.ayh, align 8, !tbaa !144
  %i.ayi = mul nsw i32 %i.axq, %i.atu
  %i.ayj = sext i32 %i.ayi to i64
  %i.ayk = sub nsw i64 0, %i.ayj
  %i.ayl = getelementptr inbounds [4 x i8], ptr %i.atf, i64 %i.ayk ; 2 uses
  %i.aym = getelementptr inbounds [4 x i8], ptr %i.ayl, i64 %i.ayd
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.aym, i64 4
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.ayg, i64 16
  store ptr %i.ayn, ptr %i.ayo, align 8, !tbaa !144
  %i.ayp = sub nsw i64 0, %i.ayd                  ; 2 uses
  %i.ayq = getelementptr inbounds [4 x i8], ptr %i.ayc, i64 %i.ayp
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayg, i64 24
  store ptr %i.ayq, ptr %i.ayr, align 8, !tbaa !144
  %i.ays = getelementptr inbounds [4 x i8], ptr %i.ayl, i64 %i.ayp
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.ayg, i64 32
  store ptr %i.ays, ptr %i.ayt, align 8, !tbaa !144
  %i.ayu = mul nsw i32 %i.axx, %i.atu
  %i.ayv = sext i32 %i.ayu to i64
  %i.ayw = getelementptr inbounds [4 x i8], ptr %i.ate, i64 %i.ayv
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ayw, i64 4
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ayg, i64 40
  store ptr %i.ayx, ptr %i.ayy, align 8, !tbaa !144
  %i.ayz = sext i32 %i.axs to i64                 ; 2 uses
  %i.aza = sub nsw i64 0, %i.ayz
  %i.azb = getelementptr inbounds [4 x i8], ptr %i.atd, i64 %i.aza
  %i.azc = getelementptr inbounds nuw i8, ptr %i.ayg, i64 48
  store ptr %i.azb, ptr %i.azc, align 8, !tbaa !144
  %i.azd = getelementptr inbounds [4 x i8], ptr %i.atd, i64 %i.ayz
  %i.aze = getelementptr inbounds nuw i8, ptr %i.azd, i64 4
  %i.azf = getelementptr inbounds nuw i8, ptr %i.ayg, i64 56
  store ptr %i.aze, ptr %i.azf, align 8, !tbaa !144
  %i.azg = mul nsw i32 %i.axs, %i.atu
  %i.azh = sext i32 %i.azg to i64
  %i.azi = sub nsw i64 0, %i.azh
  %i.azj = getelementptr inbounds [4 x i8], ptr %i.ate, i64 %i.azi
  %i.azk = getelementptr inbounds nuw i8, ptr %i.azj, i64 4
  %i.azl = getelementptr inbounds nuw i8, ptr %i.ayg, i64 64
  store ptr %i.azk, ptr %i.azl, align 8, !tbaa !144
  %i.azm = add nuw nsw i32 %i.axv, %i.axw
  %i.azn = add nuw nsw i32 %i.azm, %i.axy
  store i32 %i.azn, ptr %i.ayg, align 8, !tbaa !142
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.atw
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.bg, !llvm.loop !77

.preheader377.i:                                  ; preds = %.lr.ph391.i, %middle.block319
  %i.azo = sdiv i32 %i.aui, 2                     ; 2 uses
  %i.azp = add nsw i32 %i.azo, %i.aui             ; 8 uses
  %i.azq = icmp sgt i32 %i.azp, 0
  br i1 %i.azq, label %.lr.ph393.i, label %.preheader376.i

.lr.ph393.i:                                      ; preds = %.preheader377.i
  %i.azr = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.azs = getelementptr inbounds nuw i8, ptr %29, i64 128
  %i.azt = getelementptr inbounds nuw i8, ptr %30, i64 24
  %i.azu = getelementptr inbounds nuw i8, ptr %30, i64 128
  %i.azv = sext i32 %i.an to i64                  ; 2 uses
  %i.azw = shl nsw i64 %i.azv, 2                  ; 2 uses
  %i.azx = shl nsw i64 %i.azv, 1                  ; 2 uses
  %wide.trip.count432.i = zext nneg i32 %i.azp to i64
  br label %bb.bh

.lr.ph391.i:                                      ; preds = %.lr.ph391.i.preheader, %.lr.ph391.i
  %indvars.iv424.i = phi i64 [ %indvars.iv.next425.i, %.lr.ph391.i ], [ %indvars.iv424.i.ph, %.lr.ph391.i.preheader ] ; 3 uses
  %i.azy = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2cv11xfeatures2dL28StarDetectorComputeResponsesIdEEiRKNS_3MatERS2_S5_iiE5pairs, i64 %indvars.iv424.i ; 2 uses
  %i.azz = getelementptr inbounds nuw i8, ptr %i.azy, i64 4
  %i.baa = load i32, ptr %i.azz, align 4, !tbaa !28
  %i.bab = sext i32 %i.baa to i64
  %i.bac = getelementptr inbounds [72 x i8], ptr %18, i64 %i.bab
  %i.bad = load i32, ptr %i.bac, align 8, !tbaa !142 ; 2 uses
  %i.bae = load i32, ptr %i.azy, align 8, !tbaa !28
  %i.baf = sext i32 %i.bae to i64
  %i.bag = getelementptr inbounds [72 x i8], ptr %18, i64 %i.baf
  %i.bah = load i32, ptr %i.bag, align 8, !tbaa !142
  %i.bai = sub nsw i32 %i.bah, %i.bad
  %i.baj = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv424.i
  %i.bak = insertelement <2 x i32> poison, i32 %i.bai, i64 0
  %i.bal = insertelement <2 x i32> %i.bak, i32 %i.bad, i64 1
  %i.bam = sitofp <2 x i32> %i.bal to <2 x float>
  %i.ban = fdiv <2 x float> splat (float 1.000000e+00), %i.bam
  store <2 x float> %i.ban, ptr %i.baj, align 8, !tbaa !36
  %indvars.iv.next425.i = add nuw nsw i64 %indvars.iv424.i, 1 ; 2 uses
  %exitcond428.not.i = icmp eq i64 %indvars.iv.next425.i, %.0176.lcssa.i
  br i1 %exitcond428.not.i, label %.preheader377.i, label %.lr.ph391.i, !llvm.loop !78

.preheader376.i:                                  ; preds = %bb.bh, %.preheader377.i
  %i.bao = sub nsw i32 %i.al, %i.azp              ; 2 uses
  %i.bap = icmp slt i32 %i.azp, %i.bao
  br i1 %i.bap, label %.lr.ph409.i, label %_ZN2cv11xfeatures2dL28StarDetectorComputeResponsesIiEEiRKNS_3MatERS2_S5_ii.exit

.lr.ph409.i:                                      ; preds = %.preheader376.i
  %i.baq = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.bar = getelementptr inbounds nuw i8, ptr %29, i64 128
  %i.bas = getelementptr inbounds nuw i8, ptr %30, i64 24
  %i.bat = getelementptr inbounds nuw i8, ptr %30, i64 128
  %i.bau = sext i32 %i.azp to i64                 ; 3 uses
  %i.bav = shl nsw i64 %i.bau, 2                  ; 2 uses
  %i.baw = shl nsw i64 %i.bau, 1                  ; 2 uses
  %i.bax = sext i32 %i.an to i64                  ; 2 uses
  %i.bay = sub nsw i64 0, %i.bau                  ; 2 uses
  %i.baz = sub nsw i32 %i.an, %i.azp              ; 2 uses
  %i.bba = icmp slt i32 %i.azp, %i.baz
  %i.bbb = add i32 %i.cp, 1
  %31 = sext i32 %i.aui to i64
  %32 = sext i32 %i.azo to i64
  %33 = add nsw i64 %32, %31                      ; 3 uses
  %sext.i = shl i64 %i.att, 32
  %i.bbc = ashr exact i64 %sext.i, 32
  %wide.trip.count470.i = sext i32 %i.bao to i64
  %wide.trip.count447.i = sext i32 %i.baz to i64  ; 2 uses
  %wide.trip.count437.i = zext i32 %i.bbb to i64
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bh, %.lr.ph393.i
  %indvars.iv429.i = phi i64 [ 0, %.lr.ph393.i ], [ %indvars.iv.next430.i, %bb.bh ] ; 4 uses
  %i.bbd = load ptr, ptr %i.azr, align 8, !tbaa !140 ; 2 uses
  %i.bbe = load i64, ptr %i.azs, align 8, !tbaa !30 ; 2 uses
  %i.bbf = mul i64 %i.bbe, %indvars.iv429.i
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.bbd, i64 %i.bbf
  %i.bbh = trunc i64 %indvars.iv429.i to i32
  %i.bbi = xor i32 %i.bbh, -1
  %i.bbj = add i32 %i.al, %i.bbi
  %i.bbk = sext i32 %i.bbj to i64                 ; 2 uses
  %i.bbl = mul i64 %i.bbe, %i.bbk
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.bbd, i64 %i.bbl
  %i.bbn = load ptr, ptr %i.azt, align 8, !tbaa !140 ; 2 uses
  %i.bbo = load i64, ptr %i.azu, align 8, !tbaa !30 ; 2 uses
  %i.bbp = mul i64 %i.bbo, %indvars.iv429.i
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.bbn, i64 %i.bbp
  %i.bbr = mul i64 %i.bbo, %i.bbk
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.bbn, i64 %i.bbr
  call void @llvm.memset.p0.i64(ptr align 4 %i.bbg, i8 0, i64 %i.azw, i1 false)
  call void @llvm.memset.p0.i64(ptr align 4 %i.bbm, i8 0, i64 %i.azw, i1 false)
  call void @llvm.memset.p0.i64(ptr align 2 %i.bbq, i8 0, i64 %i.azx, i1 false)
  call void @llvm.memset.p0.i64(ptr align 2 %i.bbs, i8 0, i64 %i.azx, i1 false)
  %indvars.iv.next430.i = add nuw nsw i64 %indvars.iv429.i, 1 ; 2 uses
  %exitcond433.not.i = icmp eq i64 %indvars.iv.next430.i, %wide.trip.count432.i
  br i1 %exitcond433.not.i, label %.preheader376.i, label %bb.bh, !llvm.loop !79

bb.bi:                                            ; preds = %._crit_edge407.i, %.lr.ph409.i
  %indvars.iv467.i = phi i64 [ %33, %.lr.ph409.i ], [ %indvars.iv.next468.i, %._crit_edge407.i ] ; 4 uses
  %i.bbt = load ptr, ptr %i.baq, align 8, !tbaa !140
  %i.bbu = load i64, ptr %i.bar, align 8, !tbaa !30
  %i.bbv = mul i64 %i.bbu, %indvars.iv467.i
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.bbt, i64 %i.bbv ; 4 uses
  %i.bbx = load ptr, ptr %i.bas, align 8, !tbaa !140
  %i.bby = load i64, ptr %i.bat, align 8, !tbaa !30
  %i.bbz = mul i64 %i.bby, %indvars.iv467.i
  %i.bca = getelementptr inbounds nuw i8, ptr %i.bbx, i64 %i.bbz ; 4 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.bbw, i8 0, i64 %i.bav, i1 false)
  call void @llvm.memset.p0.i64(ptr align 2 %i.bca, i8 0, i64 %i.baw, i1 false)
  %i.bcb = getelementptr inbounds [4 x i8], ptr %i.bbw, i64 %i.bax
  %i.bcc = getelementptr inbounds [4 x i8], ptr %i.bcb, i64 %i.bay
  call void @llvm.memset.p0.i64(ptr align 4 %i.bcc, i8 0, i64 %i.bav, i1 false)
  %i.bcd = getelementptr inbounds [2 x i8], ptr %i.bca, i64 %i.bax
  %i.bce = getelementptr inbounds [2 x i8], ptr %i.bcd, i64 %i.bay
  call void @llvm.memset.p0.i64(ptr align 2 %i.bce, i8 0, i64 %i.baw, i1 false)
  br i1 %i.bba, label %.lr.ph406.i, label %._crit_edge407.i

.lr.ph406.i:                                      ; preds = %bb.bi
  %i.bcf = mul nsw i64 %indvars.iv467.i, %i.bbc
  br i1 %.not189387.i, label %.preheader.us.us.i, label %.lr.ph397.i

.preheader.us.us.i:                               ; preds = %.lr.ph406.i, %._crit_edge402.us.us.i
  %indvars.iv454.i = phi i64 [ %indvars.iv.next455.i, %._crit_edge402.us.us.i ], [ %33, %.lr.ph406.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bl, %.preheader.us.us.i
  %indvars.iv449.i = phi i64 [ 0, %.preheader.us.us.i ], [ %indvars.iv.next450.i, %bb.bl ] ; 3 uses
  %.0170399.us.us.i = phi i32 [ 0, %.preheader.us.us.i ], [ %.1.us.us.i, %bb.bl ]
  %.0171398.us.us.i = phi float [ 0.000000e+00, %.preheader.us.us.i ], [ %.1172.us.us.i, %bb.bl ] ; 2 uses
  %i.bcg = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2cv11xfeatures2dL28StarDetectorComputeResponsesIdEEiRKNS_3MatERS2_S5_iiE5pairs, i64 %indvars.iv449.i ; 2 uses
  %i.bch = getelementptr inbounds nuw i8, ptr %i.bcg, i64 4
  %i.bci = load i32, ptr %i.bch, align 4, !tbaa !28
  %i.bcj = sext i32 %i.bci to i64
  %i.bck = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.bcj
  %i.bcl = load i32, ptr %i.bck, align 4, !tbaa !28 ; 2 uses
  %i.bcm = load i32, ptr %i.bcg, align 8, !tbaa !28
  %i.bcn = sext i32 %i.bcm to i64                 ; 2 uses
  %i.bco = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.bcn
  %i.bcp = load i32, ptr %i.bco, align 4, !tbaa !28
  %i.bcq = sub nsw i32 %i.bcp, %i.bcl
  %i.bcr = sitofp i32 %i.bcl to float
  %i.bcs = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv449.i ; 2 uses
  %i.bct = getelementptr inbounds nuw i8, ptr %i.bcs, i64 4
  %i.bcu = load float, ptr %i.bct, align 4, !tbaa !36
  %i.bcv = sitofp i32 %i.bcq to float
  %i.bcw = load float, ptr %i.bcs, align 8, !tbaa !36
  %i.bcx = fneg float %i.bcv
  %i.bcy = fmul float %i.bcw, %i.bcx
  %i.bcz = call float @llvm.fmuladd.f32(float %i.bcr, float %i.bcu, float %i.bcy) ; 2 uses
  %i.bda = call float @llvm.fabs.f32(float %i.bcz)
  %i.bdb = call float @llvm.fabs.f32(float %.0171398.us.us.i)
  %i.bdc = fcmp ogt float %i.bda, %i.bdb
  br i1 %i.bdc, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.bdd = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.bcn
  %i.bde = load i32, ptr %i.bdd, align 4, !tbaa !28
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.1172.us.us.i = phi float [ %i.bcz, %bb.bk ], [ %.0171398.us.us.i, %bb.bj ] ; 2 uses
  %.1.us.us.i = phi i32 [ %i.bde, %bb.bk ], [ %.0170399.us.us.i, %bb.bj ] ; 2 uses
  %indvars.iv.next450.i = add nuw nsw i64 %indvars.iv449.i, 1 ; 2 uses
  %exitcond453.not.i = icmp eq i64 %indvars.iv.next450.i, %.0176.lcssa.i
  br i1 %exitcond453.not.i, label %._crit_edge402.us.us.i, label %bb.bj, !llvm.loop !80

._crit_edge402.us.us.i:                           ; preds = %bb.bl
  %i.bdf = getelementptr inbounds [4 x i8], ptr %i.bbw, i64 %indvars.iv454.i
  store float %.1172.us.us.i, ptr %i.bdf, align 4, !tbaa !36
  %i.bdg = trunc i32 %.1.us.us.i to i16
  %i.bdh = getelementptr inbounds [2 x i8], ptr %i.bca, i64 %indvars.iv454.i
  store i16 %i.bdg, ptr %i.bdh, align 2, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  %indvars.iv.next455.i = add nsw i64 %indvars.iv454.i, 1 ; 2 uses
  %exitcond458.not.i = icmp eq i64 %indvars.iv.next455.i, %wide.trip.count447.i
  br i1 %exitcond458.not.i, label %._crit_edge407.i, label %.preheader.us.us.i, !llvm.loop !81

.lr.ph397.i:                                      ; preds = %.lr.ph406.i, %._crit_edge402.i.a
  %indvars.iv444.i = phi i64 [ %indvars.iv.next445.i, %._crit_edge402.i.a ], [ %33, %.lr.ph406.i ] ; 4 uses
  %i.bdi = add nsw i64 %indvars.iv444.i, %i.bcf   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %.lr.ph397.i
  %indvars.iv434.i = phi i64 [ 0, %.lr.ph397.i ], [ %indvars.iv.next435.i, %bb.bm ] ; 3 uses
  %i.bdj = getelementptr inbounds nuw [72 x i8], ptr %18, i64 %indvars.iv434.i ; 8 uses
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.bdj, i64 8
  %i.bdl = load ptr, ptr %i.bdk, align 8, !tbaa !144
  %i.bdm = getelementptr inbounds [4 x i8], ptr %i.bdl, i64 %i.bdi
  %i.bdn = load i32, ptr %i.bdm, align 4, !tbaa !28
  %i.bdo = getelementptr inbounds nuw i8, ptr %i.bdj, i64 16
  %i.bdp = load ptr, ptr %i.bdo, align 8, !tbaa !144
  %i.bdq = getelementptr inbounds [4 x i8], ptr %i.bdp, i64 %i.bdi
  %i.bdr = load i32, ptr %i.bdq, align 4, !tbaa !28
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdj, i64 24
  %i.bdt = load ptr, ptr %i.bds, align 8, !tbaa !144
  %i.bdu = getelementptr inbounds [4 x i8], ptr %i.bdt, i64 %i.bdi
  %i.bdv = load i32, ptr %i.bdu, align 4, !tbaa !28
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.bdj, i64 32
  %i.bdx = load ptr, ptr %i.bdw, align 8, !tbaa !144
  %i.bdy = getelementptr inbounds [4 x i8], ptr %i.bdx, i64 %i.bdi
  %i.bdz = load i32, ptr %i.bdy, align 4, !tbaa !28
  %i.bea = getelementptr inbounds nuw i8, ptr %i.bdj, i64 40
  %i.beb = load ptr, ptr %i.bea, align 8, !tbaa !144
  %i.bec = getelementptr inbounds [4 x i8], ptr %i.beb, i64 %i.bdi
  %i.bed = load i32, ptr %i.bec, align 4, !tbaa !28
  %i.bee = getelementptr inbounds nuw i8, ptr %i.bdj, i64 48
  %i.bef = load ptr, ptr %i.bee, align 8, !tbaa !144
  %i.beg = getelementptr inbounds [4 x i8], ptr %i.bef, i64 %i.bdi
  %i.beh = load i32, ptr %i.beg, align 4, !tbaa !28
  %i.bei = getelementptr inbounds nuw i8, ptr %i.bdj, i64 56
  %i.bej = load ptr, ptr %i.bei, align 8, !tbaa !144
  %i.bek = getelementptr inbounds [4 x i8], ptr %i.bej, i64 %i.bdi
  %i.bel = load i32, ptr %i.bek, align 4, !tbaa !28
  %i.bem = getelementptr inbounds nuw i8, ptr %i.bdj, i64 64
  %i.ben = load ptr, ptr %i.bem, align 8, !tbaa !144
  %i.beo = getelementptr inbounds [4 x i8], ptr %i.ben, i64 %i.bdi
  %i.bep = load i32, ptr %i.beo, align 4, !tbaa !28
  %i.beq = add i32 %i.bdr, %i.bdv
  %.neg150 = sub i32 %i.bdn, %i.beq
  %.neg372.i = add i32 %.neg150, %i.bdz
  %i.ber = add i32 %.neg372.i, %i.bed
  %i.bes = add i32 %i.beh, %i.bel
  %i.bet = sub i32 %i.ber, %i.bes
  %i.beu = add nsw i32 %i.bet, %i.bep
  %i.bev = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv434.i
  store i32 %i.beu, ptr %i.bev, align 4, !tbaa !28
  %indvars.iv.next435.i = add nuw nsw i64 %indvars.iv434.i, 1 ; 2 uses
  %exitcond438.not.i = icmp eq i64 %indvars.iv.next435.i, %wide.trip.count437.i
  br i1 %exitcond438.not.i, label %.lr.ph401.i, label %bb.bm, !llvm.loop !82

._crit_edge402.i.a:                               ; preds = %bb.bo
  %i.bew = getelementptr inbounds [4 x i8], ptr %i.bbw, i64 %indvars.iv444.i
  store float %.1172.i, ptr %i.bew, align 4, !tbaa !36
  %i.bex = trunc i32 %.1.i to i16
  %i.bey = getelementptr inbounds [2 x i8], ptr %i.bca, i64 %indvars.iv444.i
  store i16 %i.bex, ptr %i.bey, align 2, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  %indvars.iv.next445.i = add nsw i64 %indvars.iv444.i, 1 ; 2 uses
  %exitcond448.not.i = icmp eq i64 %indvars.iv.next445.i, %wide.trip.count447.i
  br i1 %exitcond448.not.i, label %._crit_edge407.i, label %.lr.ph397.i, !llvm.loop !81

.lr.ph401.i:                                      ; preds = %bb.bm, %bb.bo
  %indvars.iv439.i = phi i64 [ %indvars.iv.next440.i, %bb.bo ], [ 0, %bb.bm ] ; 3 uses
  %.0170399.i = phi i32 [ %.1.i, %bb.bo ], [ 0, %bb.bm ]
  %.0171398.i = phi float [ %.1172.i, %bb.bo ], [ 0.000000e+00, %bb.bm ] ; 2 uses
  %i.bez = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2cv11xfeatures2dL28StarDetectorComputeResponsesIdEEiRKNS_3MatERS2_S5_iiE5pairs, i64 %indvars.iv439.i ; 2 uses
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.bez, i64 4
  %i.bfb = load i32, ptr %i.bfa, align 4, !tbaa !28
  %i.bfc = sext i32 %i.bfb to i64
  %i.bfd = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.bfc
  %i.bfe = load i32, ptr %i.bfd, align 4, !tbaa !28 ; 2 uses
  %i.bff = load i32, ptr %i.bez, align 8, !tbaa !28
  %i.bfg = sext i32 %i.bff to i64                 ; 2 uses
  %i.bfh = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.bfg
  %i.bfi = load i32, ptr %i.bfh, align 4, !tbaa !28
  %i.bfj = sub nsw i32 %i.bfi, %i.bfe
  %i.bfk = sitofp i32 %i.bfe to float
  %i.bfl = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv439.i ; 2 uses
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.bfl, i64 4
  %i.bfn = load float, ptr %i.bfm, align 4, !tbaa !36
  %i.bfo = sitofp i32 %i.bfj to float
  %i.bfp = load float, ptr %i.bfl, align 8, !tbaa !36
  %i.bfq = fneg float %i.bfo
  %i.bfr = fmul float %i.bfp, %i.bfq
  %i.bfs = call float @llvm.fmuladd.f32(float %i.bfk, float %i.bfn, float %i.bfr) ; 2 uses
  %i.bft = call float @llvm.fabs.f32(float %i.bfs)
  %i.bfu = call float @llvm.fabs.f32(float %.0171398.i)
  %i.bfv = fcmp ogt float %i.bft, %i.bfu
  br i1 %i.bfv, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %.lr.ph401.i
  %i.bfw = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.bfg
  %i.bfx = load i32, ptr %i.bfw, align 4, !tbaa !28
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %.lr.ph401.i
  %.1172.i = phi float [ %i.bfs, %bb.bn ], [ %.0171398.i, %.lr.ph401.i ] ; 2 uses
  %.1.i = phi i32 [ %i.bfx, %bb.bn ], [ %.0170399.i, %.lr.ph401.i ] ; 2 uses
  %indvars.iv.next440.i = add nuw nsw i64 %indvars.iv439.i, 1 ; 2 uses
  %exitcond443.not.i = icmp eq i64 %indvars.iv.next440.i, %.0176.lcssa.i
  br i1 %exitcond443.not.i, label %._crit_edge402.i.a, label %.lr.ph401.i, !llvm.loop !80

._crit_edge407.i:                                 ; preds = %._crit_edge402.i.a, %._crit_edge402.us.us.i, %bb.bi
  %indvars.iv.next468.i = add nsw i64 %indvars.iv467.i, 1 ; 2 uses
  %exitcond471.not.i = icmp eq i64 %indvars.iv.next468.i, %wide.trip.count470.i
  br i1 %exitcond471.not.i, label %_ZN2cv11xfeatures2dL28StarDetectorComputeResponsesIiEEiRKNS_3MatERS2_S5_ii.exit, label %bb.bi, !llvm.loop !83

.body.i:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i193.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %.pn187.i = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.cm, %bb.as ], [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i193.i ]
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

_ZN2cv11xfeatures2dL28StarDetectorComputeResponsesIiEEiRKNS_3MatERS2_S5_ii.exit: ; preds = %._crit_edge407.i, %.preheader376.i
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

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.body.i26, %.body.i
  %eh.lpad-body = phi { ptr, i32 } [ %.pn187.i, %.body.i ], [ %.pn187.i27, %.body.i26 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %30) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %29) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19
  br label %bb.ej

bb.bp:                                            ; preds = %bb.p, %bb.r
  %i.bfy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bfz = load i32, ptr %i.bfy, align 8, !tbaa !14 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %10) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %11) #19
  %i.bga = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 5 uses
  %i.bgb = load i32, ptr %i.bga, align 8, !tbaa !137 ; 3 uses
  %i.bgc = getelementptr inbounds nuw i8, ptr %26, i64 12 ; 5 uses
  %i.bgd = load i32, ptr %i.bgc, align 4, !tbaa !138 ; 4 uses
  %i.bge = getelementptr inbounds nuw i8, ptr %26, i64 72 ; 2 uses
  %i.bgf = load i32, ptr %i.bge, align 8, !tbaa !139 ; 6 uses
  %i.bgg = icmp slt i32 %i.bgf, 3
  br i1 %i.bgg, label %bb.bt, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc.i28 unwind label %bb.cp

.noexc.i28:                                       ; preds = %bb.bq
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.15, i32 noundef 109) #20
          to label %bb.br unwind label %bb.bs

bb.br:                                            ; preds = %.noexc.i28
  unreachable

bb.bs:                                            ; preds = %.noexc.i28
  %i.bgh = landingpad { ptr, i32 }
          cleanup
  %i.bgi = load ptr, ptr %6, align 8, !tbaa !26   ; 2 uses
  %i.bgj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bgk = icmp eq ptr %i.bgi, %i.bgj
  br i1 %i.bgk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i29: ; preds = %bb.bs
  %i.bgl = load i64, ptr %i.bgj, align 8, !tbaa !27
  %i.bgm = add i64 %i.bgl, 1
  call void @_ZdlPvm(ptr noundef %i.bgi, i64 noundef %i.bgm) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30

end_hunk_0
begin_hunk_1_@_ZN2cv11xfeatures2d16StarDetectorImpl6detectERKNS_11_InputArrayERSt6vectorINS_8KeyPointESaIS6_EES4_:bb.a
  %i.com = sext i32 %i.col to i64
  %i.con = getelementptr inbounds [2 x i8], ptr %i.cmh, i64 %i.com
  %i.coo = load i16, ptr %i.con, align 2, !tbaa !34
  %i.cop = sitofp i16 %i.coo to double
  %i.coq = fadd double %i.coj, %i.cop
  %i.cor = fadd double %i.coq, %i.cny
  %i.cos = getelementptr inbounds nuw [8 x i8], ptr %i.cmj, i64 %indvars.iv210.i293.i
  store double %i.cor, ptr %i.cos, align 8, !tbaa !146
  %i.cot = getelementptr inbounds [8 x i8], ptr %i.cmk, i64 %i.cnu
  %i.cou = load double, ptr %i.cot, align 8, !tbaa !146
  %i.cov = getelementptr inbounds [8 x i8], ptr %i.cmk, i64 %i.coc
  %i.cow = load double, ptr %i.cov, align 8, !tbaa !146
  %i.cox = fadd double %i.cou, %i.cow
  %i.coy = getelementptr inbounds [8 x i8], ptr %i.cmk, i64 %i.cog
  %i.coz = load double, ptr %i.coy, align 8, !tbaa !146
  %i.cpa = fsub double %i.cox, %i.coz
  %i.cpb = getelementptr inbounds nuw [2 x i8], ptr %i.cmh, i64 %indvars.iv210.i293.i
  %i.cpc = load i16, ptr %i.cpb, align 2, !tbaa !34 ; 2 uses
  %i.cpd = sitofp i16 %i.cpc to double
  %i.cpe = fadd double %i.cpa, %i.cpd
  %i.cpf = fadd double %i.cpe, %i.cny
  %i.cpg = getelementptr inbounds nuw [8 x i8], ptr %i.cmk, i64 %indvars.iv210.i293.i
  store double %i.cpf, ptr %i.cpg, align 8, !tbaa !146
  %indvars.iv.next211.i294.i = add nuw nsw i64 %indvars.iv210.i293.i, 1 ; 2 uses
  %exitcond214.not.i295.i = icmp eq i64 %indvars.iv.next211.i294.i, %wide.trip.count213.i286.i
  br i1 %exitcond214.not.i295.i, label %._crit_edge196.us.i296.i, label %bb.cx, !llvm.loop !94

._crit_edge196.us.i296.i:                         ; preds = %bb.cx
  %i.cph = getelementptr inbounds [8 x i8], ptr %i.cmi, i64 %i.clg
  %i.cpi = load double, ptr %i.cph, align 8, !tbaa !146
  %i.cpj = getelementptr inbounds [8 x i8], ptr %i.cmi, i64 %i.cma
  %i.cpk = load double, ptr %i.cpj, align 8, !tbaa !146
  %i.cpl = fadd double %i.cpi, %i.cpk
  %i.cpm = getelementptr inbounds [8 x i8], ptr %i.cmi, i64 %i.cmc
  %i.cpn = load double, ptr %i.cpm, align 8, !tbaa !146
  %i.cpo = fsub double %i.cpl, %i.cpn
  %i.cpp = getelementptr inbounds [2 x i8], ptr %i.cmh, i64 %i.clg
  %i.cpq = load i16, ptr %i.cpp, align 2, !tbaa !34
  %i.cpr = sitofp i16 %i.cpq to double            ; 2 uses
  %i.cps = fadd double %i.cpo, %i.cpr
  %i.cpt = getelementptr inbounds nuw [8 x i8], ptr %i.cmi, i64 %i.cln
  store double %i.cps, ptr %i.cpt, align 8, !tbaa !146
  %i.cpu = getelementptr inbounds [8 x i8], ptr %i.cmj, i64 %i.cmc
  %i.cpv = load double, ptr %i.cpu, align 8, !tbaa !146
  %i.cpw = getelementptr inbounds [2 x i8], ptr %i.cmh, i64 %i.cme
  %i.cpx = load i16, ptr %i.cpw, align 2, !tbaa !34
  %i.cpy = sitofp i16 %i.cpx to double
  %i.cpz = fadd double %i.cpv, %i.cpy
  %i.cqa = fadd double %i.cpz, %i.cpr             ; 2 uses
  %i.cqb = getelementptr inbounds nuw [8 x i8], ptr %i.cmk, i64 %i.cln
  store double %i.cqa, ptr %i.cqb, align 8, !tbaa !146
  %i.cqc = getelementptr inbounds nuw [8 x i8], ptr %i.cmj, i64 %i.cln
  store double %i.cqa, ptr %i.cqc, align 8, !tbaa !146
  %i.cqd = add nuw i32 %.0179198.us.i292.i, 1
  %exitcond215.not.i297.i = icmp eq i32 %.0179198.us.i292.i, %i.ciq
  br i1 %exitcond215.not.i297.i, label %_ZN2cv11xfeatures2dL21computeIntegralImagesIhdEEvRKNS_3MatERS2_S5_S5_i.exit.i, label %.lr.ph195.us.i287.i, !llvm.loop !95

.lr.ph204.split.i277.i:                           ; preds = %.lr.ph204.i272.i, %.lr.ph204.split.i277.i
  %.0202.i278.i = phi ptr [ %i.cqh, %.lr.ph204.split.i277.i ], [ %i.ckn, %.lr.ph204.i272.i ]
  %.0176201.i279.i = phi ptr [ %i.cqg, %.lr.ph204.split.i277.i ], [ %i.ckm, %.lr.ph204.i272.i ]
  %.0177200.i280.i = phi ptr [ %i.cqf, %.lr.ph204.split.i277.i ], [ %i.ckl, %.lr.ph204.i272.i ]
  %.0178199.i281.i = phi ptr [ %i.cqe, %.lr.ph204.split.i277.i ], [ %i.civ, %.lr.ph204.i272.i ]
  %.0179198.i282.i = phi i32 [ %i.csf, %.lr.ph204.split.i277.i ], [ 2, %.lr.ph204.i272.i ] ; 2 uses
  %i.cqe = getelementptr inbounds i8, ptr %.0178199.i281.i, i64 %i.clr ; 6 uses
  %i.cqf = getelementptr inbounds [8 x i8], ptr %.0177200.i280.i, i64 %i.ckk ; 9 uses
  %i.cqg = getelementptr inbounds [8 x i8], ptr %.0176201.i279.i, i64 %i.ckk ; 7 uses
  %i.cqh = getelementptr inbounds [8 x i8], ptr %.0202.i278.i, i64 %i.ckk ; 5 uses
  %i.cqi = getelementptr inbounds [8 x i8], ptr %i.cqf, i64 %i.clt
  %i.cqj = load double, ptr %i.cqi, align 8, !tbaa !146
  store double %i.cqj, ptr %i.cqf, align 8, !tbaa !146
  %i.cqk = getelementptr inbounds [8 x i8], ptr %i.cqf, i64 %i.clu
  %i.cql = load double, ptr %i.cqk, align 8, !tbaa !146
  %i.cqm = load i16, ptr %i.cqe, align 2, !tbaa !34
  %i.cqn = sitofp i16 %i.cqm to double            ; 3 uses
  %i.cqo = fadd double %i.cql, %i.cqn
  %i.cqp = getelementptr inbounds nuw i8, ptr %i.cqf, i64 8
  store double %i.cqo, ptr %i.cqp, align 8, !tbaa !146
  %i.cqq = getelementptr inbounds [8 x i8], ptr %i.cqg, i64 %i.clu
  %i.cqr = load double, ptr %i.cqq, align 8, !tbaa !146
  store double %i.cqr, ptr %i.cqg, align 8, !tbaa !146
  %i.cqs = getelementptr inbounds [8 x i8], ptr %i.cqg, i64 %i.clv
  %i.cqt = load double, ptr %i.cqs, align 8, !tbaa !146
  %i.cqu = getelementptr inbounds i8, ptr %i.cqe, i64 %i.clw
  %i.cqv = load i16, ptr %i.cqu, align 2, !tbaa !34
  %i.cqw = sitofp i16 %i.cqv to double            ; 2 uses
  %i.cqx = fadd double %i.cqt, %i.cqw
  %i.cqy = fadd double %i.cqx, %i.cqn             ; 2 uses
  store double %i.cqy, ptr %i.cqh, align 8, !tbaa !146
  %i.cqz = getelementptr inbounds nuw i8, ptr %i.cqg, i64 8
  store double %i.cqy, ptr %i.cqz, align 8, !tbaa !146
  %i.cra = getelementptr inbounds [8 x i8], ptr %i.cqh, i64 %i.clv
  %i.crb = load double, ptr %i.cra, align 8, !tbaa !146
  %i.crc = fadd double %i.crb, %i.cqw
  %i.crd = getelementptr inbounds nuw i8, ptr %i.cqe, i64 2
  %i.cre = load i16, ptr %i.crd, align 2, !tbaa !34
  %i.crf = sitofp i16 %i.cre to double
  %i.crg = fadd double %i.crc, %i.crf
  %i.crh = fadd double %i.crg, %i.cqn
  %i.cri = getelementptr inbounds nuw i8, ptr %i.cqh, i64 8
  store double %i.crh, ptr %i.cri, align 8, !tbaa !146
  %i.crj = getelementptr inbounds [8 x i8], ptr %i.cqf, i64 %i.clg
  %i.crk = load double, ptr %i.crj, align 8, !tbaa !146
  %i.crl = getelementptr inbounds [8 x i8], ptr %i.cqf, i64 %i.cma
  %i.crm = load double, ptr %i.crl, align 8, !tbaa !146
  %i.crn = fadd double %i.crk, %i.crm
  %i.cro = getelementptr inbounds [8 x i8], ptr %i.cqf, i64 %i.cmc
  %i.crp = load double, ptr %i.cro, align 8, !tbaa !146
  %i.crq = fsub double %i.crn, %i.crp
  %i.crr = getelementptr inbounds [2 x i8], ptr %i.cqe, i64 %i.clg
  %i.crs = load i16, ptr %i.crr, align 2, !tbaa !34
  %i.crt = sitofp i16 %i.crs to double            ; 2 uses
  %i.cru = fadd double %i.crq, %i.crt
  %i.crv = getelementptr inbounds [8 x i8], ptr %i.cqf, i64 %i.cln
  store double %i.cru, ptr %i.crv, align 8, !tbaa !146
  %i.crw = getelementptr inbounds [8 x i8], ptr %i.cqg, i64 %i.cmc
  %i.crx = load double, ptr %i.crw, align 8, !tbaa !146
  %i.cry = getelementptr inbounds [2 x i8], ptr %i.cqe, i64 %i.cme
  %i.crz = load i16, ptr %i.cry, align 2, !tbaa !34
  %i.csa = sitofp i16 %i.crz to double
  %i.csb = fadd double %i.crx, %i.csa
  %i.csc = fadd double %i.csb, %i.crt             ; 2 uses
  %i.csd = getelementptr inbounds [8 x i8], ptr %i.cqh, i64 %i.cln
  store double %i.csc, ptr %i.csd, align 8, !tbaa !146
  %i.cse = getelementptr inbounds [8 x i8], ptr %i.cqg, i64 %i.cln
  store double %i.csc, ptr %i.cse, align 8, !tbaa !146
  %i.csf = add nuw i32 %.0179198.i282.i, 1
  %exitcond209.not.i283.i = icmp eq i32 %.0179198.i282.i, %i.ciq
  br i1 %exitcond209.not.i283.i, label %_ZN2cv11xfeatures2dL21computeIntegralImagesIhdEEvRKNS_3MatERS2_S5_S5_i.exit.i, label %.lr.ph204.split.i277.i, !llvm.loop !95

bb.cy:                                            ; preds = %.critedge.i49
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
  %i.csg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i86

bb.dc:                                            ; preds = %bb.cz
  %i.csh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.csi = load ptr, ptr %12, align 8, !tbaa !26  ; 2 uses
  %i.csj = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.csk = icmp eq ptr %i.csi, %i.csj
  br i1 %i.csk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88: ; preds = %bb.dc
  %i.csl = load i64, ptr %i.csj, align 8, !tbaa !27
  %i.csm = add i64 %i.csl, 1
  call void @_ZdlPvm(ptr noundef %i.csi, i64 noundef %i.csm) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i86: ; preds = %bb.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88, %bb.db
  %.pn.i87 = phi { ptr, i32 } [ %i.csg, %bb.db ], [ %i.csh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88 ], [ %i.csh, %bb.dc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %.body.i26

_ZN2cv11xfeatures2dL21computeIntegralImagesIhdEEvRKNS_3MatERS2_S5_S5_i.exit.i: ; preds = %.lr.ph204.split.i277.i, %._crit_edge196.us.i296.i, %.lr.ph204.split.i.i, %._crit_edge196.us.i.i, %._crit_edge196.i226.i, %._crit_edge196.i.i79, %._crit_edge192.i270.i, %._crit_edge192.i245.i, %._crit_edge192.i212.i, %._crit_edge192.i.i
  %.pre-phi430.i = phi i32 [ %i.car, %._crit_edge196.us.i.i ], [ %i.bsi, %._crit_edge196.i226.i ], [ %i.bjz, %._crit_edge196.i.i79 ], [ %i.ckh, %._crit_edge196.us.i296.i ], [ %i.car, %.lr.ph204.split.i.i ], [ %i.bjz, %._crit_edge192.i.i ], [ %i.ckh, %._crit_edge192.i270.i ], [ %i.car, %._crit_edge192.i245.i ], [ %i.bsi, %._crit_edge192.i212.i ], [ %i.ckh, %.lr.ph204.split.i277.i ] ; 5 uses
  %i.csn = phi ptr [ %i.bzn, %._crit_edge196.us.i.i ], [ %i.bre, %._crit_edge196.i226.i ], [ %i.biv, %._crit_edge196.i.i79 ], [ %i.cjd, %._crit_edge196.us.i296.i ], [ %i.bzn, %.lr.ph204.split.i.i ], [ %i.biv, %._crit_edge192.i.i ], [ %i.cjd, %._crit_edge192.i270.i ], [ %i.bzn, %._crit_edge192.i245.i ], [ %i.bre, %._crit_edge192.i212.i ], [ %i.cjd, %.lr.ph204.split.i277.i ] ; 2 uses
  %i.cso = phi ptr [ %i.bzl, %._crit_edge196.us.i.i ], [ %i.brc, %._crit_edge196.i226.i ], [ %i.bit, %._crit_edge196.i.i79 ], [ %i.cjb, %._crit_edge196.us.i296.i ], [ %i.bzl, %.lr.ph204.split.i.i ], [ %i.bit, %._crit_edge192.i.i ], [ %i.cjb, %._crit_edge192.i270.i ], [ %i.bzl, %._crit_edge192.i245.i ], [ %i.brc, %._crit_edge192.i212.i ], [ %i.cjb, %.lr.ph204.split.i277.i ] ; 2 uses
  %i.csp = phi ptr [ %i.bzi, %._crit_edge196.us.i.i ], [ %i.bqz, %._crit_edge196.i226.i ], [ %i.biq, %._crit_edge196.i.i79 ], [ %i.ciy, %._crit_edge196.us.i296.i ], [ %i.bzi, %.lr.ph204.split.i.i ], [ %i.biq, %._crit_edge192.i.i ], [ %i.ciy, %._crit_edge192.i270.i ], [ %i.bzi, %._crit_edge192.i245.i ], [ %i.bqz, %._crit_edge192.i212.i ], [ %i.ciy, %.lr.ph204.split.i277.i ] ; 2 uses
  %.not189336.i = icmp slt i32 %i.bif, 0          ; 2 uses
  br i1 %.not189336.i, label %.lr.ph340.preheader.i, label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %_ZN2cv11xfeatures2dL21computeIntegralImagesIhdEEvRKNS_3MatERS2_S5_S5_i.exit.i
  %i.csq = add nuw i32 %i.bif, 1
  %i.csr = zext i32 %i.csq to i64                 ; 2 uses
  %i.css = shl nuw nsw i64 %i.csr, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, ptr noundef nonnull align 16 dereferenceable(1) @_ZZN2cv11xfeatures2dL28StarDetectorComputeResponsesIdEEiRKNS_3MatERS2_S5_iiE6sizes0, i64 %i.css, i1 false), !tbaa !28
  br label %bb.dd

._crit_edge.loopexit.i55:                         ; preds = %bb.dd
  %.pre.i56 = load i32, ptr %i.b, align 16, !tbaa !28
  br label %.lr.ph340.preheader.i

.lr.ph340.preheader.i:                            ; preds = %._crit_edge.loopexit.i55, %_ZN2cv11xfeatures2dL21computeIntegralImagesIhdEEvRKNS_3MatERS2_S5_S5_i.exit.i
  %i.cst = phi i32 [ %.pre.i56, %._crit_edge.loopexit.i55 ], [ undef, %_ZN2cv11xfeatures2dL21computeIntegralImagesIhdEEvRKNS_3MatERS2_S5_S5_i.exit.i ]
  %i.csu = sub nsw i32 0, %i.cst
  store i32 %i.csu, ptr %i.b, align 16, !tbaa !28
  %i.csv = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.csw = load i32, ptr %i.csv, align 4, !tbaa !28
  %i.csx = sub nsw i32 0, %i.csw
  store i32 %i.csx, ptr %i.csv, align 4, !tbaa !28
  %i.csy = sext i32 %i.bif to i64                 ; 2 uses
  %i.csz = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.csy ; 2 uses
  %i.cta = load i32, ptr %i.csz, align 4, !tbaa !28
  %i.ctb = sub nsw i32 0, %i.cta
  store i32 %i.ctb, ptr %i.csz, align 4, !tbaa !28
  %i.ctc = getelementptr inbounds [4 x i8], ptr @_ZZN2cv11xfeatures2dL28StarDetectorComputeResponsesIdEEiRKNS_3MatERS2_S5_iiE6sizes0, i64 %i.csy
  %i.ctd = load i32, ptr %i.ctc, align 4, !tbaa !28 ; 3 uses
  %min.iters.check = icmp samesign ult i64 %.0176.lcssa.i50, 4
  br i1 %min.iters.check, label %.lr.ph340.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph340.preheader.i
  %n.vec = and i64 %.0176.lcssa.i50, 12           ; 4 uses
  %i.cte = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.ctf = getelementptr inbounds nuw i8, ptr %8, i64 144
  %i.ctg = getelementptr inbounds nuw i8, ptr %8, i64 216
  %i.cth = load i32, ptr %8, align 16, !tbaa !148
  %i.cti = load i32, ptr %i.cte, align 8, !tbaa !148
  %i.ctj = load i32, ptr %i.ctf, align 16, !tbaa !148
  %i.ctk = load i32, ptr %i.ctg, align 8, !tbaa !148
  %i.ctl = insertelement <4 x i32> poison, i32 %i.cth, i64 0
  %i.ctm = insertelement <4 x i32> %i.ctl, i32 %i.cti, i64 1
  %i.ctn = insertelement <4 x i32> %i.ctm, i32 %i.ctj, i64 2
  %i.cto = insertelement <4 x i32> %i.ctn, i32 %i.ctk, i64 3 ; 2 uses
  %i.ctp = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.ctq = getelementptr inbounds nuw i8, ptr %8, i64 216
  %i.ctr = getelementptr inbounds nuw i8, ptr %8, i64 288
  %i.cts = getelementptr inbounds nuw i8, ptr %8, i64 360
  %i.ctt = load i32, ptr %i.ctp, align 8, !tbaa !148
  %i.ctu = load i32, ptr %i.ctq, align 8, !tbaa !148
  %i.ctv = load i32, ptr %i.ctr, align 16, !tbaa !148
  %i.ctw = load i32, ptr %i.cts, align 8, !tbaa !148
  %i.ctx = insertelement <4 x i32> poison, i32 %i.ctt, i64 0
  %i.cty = insertelement <4 x i32> %i.ctx, i32 %i.ctu, i64 1
  %i.ctz = insertelement <4 x i32> %i.cty, i32 %i.ctv, i64 2
  %i.cua = insertelement <4 x i32> %i.ctz, i32 %i.ctw, i64 3
  %i.cub = sub nsw <4 x i32> %i.cua, %i.cto
  %i.cuc = shufflevector <4 x i32> %i.cub, <4 x i32> %i.cto, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.cud = sitofp <8 x i32> %i.cuc to <8 x float>
  %interleaved.vec = fdiv <8 x float> splat (float 1.000000e+00), %i.cud
  store <8 x float> %interleaved.vec, ptr %i.a, align 16, !tbaa !36
  %i.cue = icmp eq i64 %n.vec, 4
  br i1 %i.cue, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.cuf = getelementptr inbounds nuw i8, ptr %8, i64 288
  %i.cug = getelementptr inbounds nuw i8, ptr %8, i64 360
  %i.cuh = getelementptr inbounds nuw i8, ptr %8, i64 432
  %i.cui = getelementptr inbounds nuw i8, ptr %8, i64 576
  %i.cuj = load i32, ptr %i.cuf, align 16, !tbaa !148
  %i.cuk = load i32, ptr %i.cug, align 8, !tbaa !148
  %i.cul = load i32, ptr %i.cuh, align 16, !tbaa !148
  %i.cum = load i32, ptr %i.cui, align 16, !tbaa !148
  %i.cun = insertelement <4 x i32> poison, i32 %i.cuj, i64 0
  %i.cuo = insertelement <4 x i32> %i.cun, i32 %i.cuk, i64 1
  %i.cup = insertelement <4 x i32> %i.cuo, i32 %i.cul, i64 2
  %i.cuq = insertelement <4 x i32> %i.cup, i32 %i.cum, i64 3 ; 2 uses
  %i.cur = getelementptr inbounds nuw i8, ptr %8, i64 504
  %i.cus = getelementptr inbounds nuw i8, ptr %8, i64 576
  %i.cut = getelementptr inbounds nuw i8, ptr %8, i64 648
  %i.cuu = getelementptr inbounds nuw i8, ptr %8, i64 792
  %i.cuv = load i32, ptr %i.cur, align 8, !tbaa !148
  %i.cuw = load i32, ptr %i.cus, align 16, !tbaa !148
  %i.cux = load i32, ptr %i.cut, align 8, !tbaa !148
  %i.cuy = load i32, ptr %i.cuu, align 8, !tbaa !148
  %i.cuz = insertelement <4 x i32> poison, i32 %i.cuv, i64 0
  %i.cva = insertelement <4 x i32> %i.cuz, i32 %i.cuw, i64 1
  %i.cvb = insertelement <4 x i32> %i.cva, i32 %i.cux, i64 2
  %i.cvc = insertelement <4 x i32> %i.cvb, i32 %i.cuy, i64 3
  %i.cvd = sub nsw <4 x i32> %i.cvc, %i.cuq
  %i.cve = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.cvf = shufflevector <4 x i32> %i.cvd, <4 x i32> %i.cuq, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.cvg = sitofp <8 x i32> %i.cvf to <8 x float>
  %interleaved.vec.1 = fdiv <8 x float> splat (float 1.000000e+00), %i.cvg
  store <8 x float> %interleaved.vec.1, ptr %i.cve, align 16, !tbaa !36
  %i.cvh = icmp eq i64 %n.vec, 8
  br i1 %i.cvh, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.cvi = getelementptr inbounds nuw i8, ptr %8, i64 720
  %i.cvj = getelementptr inbounds nuw i8, ptr %8, i64 792
  %i.cvk = getelementptr inbounds nuw i8, ptr %8, i64 864
  %i.cvl = getelementptr inbounds nuw i8, ptr %8, i64 1008
  %i.cvm = load i32, ptr %i.cvi, align 16, !tbaa !148
  %i.cvn = load i32, ptr %i.cvj, align 8, !tbaa !148
  %i.cvo = load i32, ptr %i.cvk, align 16, !tbaa !148
  %i.cvp = load i32, ptr %i.cvl, align 16, !tbaa !148
  %i.cvq = insertelement <4 x i32> poison, i32 %i.cvm, i64 0
  %i.cvr = insertelement <4 x i32> %i.cvq, i32 %i.cvn, i64 1
  %i.cvs = insertelement <4 x i32> %i.cvr, i32 %i.cvo, i64 2
  %i.cvt = insertelement <4 x i32> %i.cvs, i32 %i.cvp, i64 3 ; 2 uses
  %i.cvu = getelementptr inbounds nuw i8, ptr %8, i64 936
  %i.cvv = getelementptr inbounds nuw i8, ptr %8, i64 1008
  %i.cvw = getelementptr inbounds nuw i8, ptr %8, i64 1080
  %i.cvx = getelementptr inbounds nuw i8, ptr %8, i64 1152
  %i.cvy = load i32, ptr %i.cvu, align 8, !tbaa !148
  %i.cvz = load i32, ptr %i.cvv, align 16, !tbaa !148
  %i.cwa = load i32, ptr %i.cvw, align 8, !tbaa !148
  %i.cwb = load i32, ptr %i.cvx, align 16, !tbaa !148
  %i.cwc = insertelement <4 x i32> poison, i32 %i.cvy, i64 0
  %i.cwd = insertelement <4 x i32> %i.cwc, i32 %i.cvz, i64 1
  %i.cwe = insertelement <4 x i32> %i.cwd, i32 %i.cwa, i64 2
  %i.cwf = insertelement <4 x i32> %i.cwe, i32 %i.cwb, i64 3
  %i.cwg = sub nsw <4 x i32> %i.cwf, %i.cvt
  %i.cwh = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.cwi = shufflevector <4 x i32> %i.cwg, <4 x i32> %i.cvt, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.cwj = sitofp <8 x i32> %i.cwi to <8 x float>
  %interleaved.vec.2 = fdiv <8 x float> splat (float 1.000000e+00), %i.cwj
  store <8 x float> %interleaved.vec.2, ptr %i.cwh, align 16, !tbaa !36
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %.0176.lcssa.i50, %n.vec
  br i1 %cmp.n, label %.preheader328.i, label %.lr.ph340.i.preheader

.lr.ph340.i.preheader:                            ; preds = %.lr.ph340.preheader.i, %middle.block
  %indvars.iv371.i.ph = phi i64 [ 0, %.lr.ph340.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph340.i

bb.dd:                                            ; preds = %bb.dd, %.lr.ph.i51
  %indvars.iv.i52 = phi i64 [ 0, %.lr.ph.i51 ], [ %indvars.iv.next.i53, %bb.dd ] ; 3 uses
  %i.cwk = getelementptr inbounds nuw [4 x i8], ptr @_ZZN2cv11xfeatures2dL28StarDetectorComputeResponsesIdEEiRKNS_3MatERS2_S5_iiE6sizes0, i64 %indvars.iv.i52
  %i.cwl = load i32, ptr %i.cwk, align 4, !tbaa !28 ; 6 uses
  %i.cwm = sdiv i32 %i.cwl, 2
  %i.cwn = add nsw i32 %i.cwm, %i.cwl             ; 5 uses
  %i.cwo = shl nsw i32 %i.cwl, 1
  %i.cwp = or disjoint i32 %i.cwo, 1              ; 2 uses
  %i.cwq = mul nsw i32 %i.cwp, %i.cwp
  %i.cwr = mul nsw i32 %i.cwn, %i.cwn
  %i.cws = add nsw i32 %i.cwn, 1                  ; 3 uses
  %i.cwt = mul nsw i32 %i.cws, %i.cws
  %i.cwu = add nsw i32 %i.cwl, 1
  %i.cwv = mul nsw i32 %i.cwu, %.pre-phi430.i
  %i.cww = sext i32 %i.cwv to i64
  %i.cwx = getelementptr inbounds [8 x i8], ptr %i.csp, i64 %i.cww ; 2 uses
  %i.cwy = sext i32 %i.cwl to i64                 ; 3 uses
  %i.cwz = getelementptr inbounds [8 x i8], ptr %i.cwx, i64 %i.cwy
  %i.cxa = getelementptr inbounds nuw i8, ptr %i.cwz, i64 8
  %i.cxb = getelementptr inbounds nuw [72 x i8], ptr %8, i64 %indvars.iv.i52 ; 9 uses
  %i.cxc = getelementptr inbounds nuw i8, ptr %i.cxb, i64 8
  store ptr %i.cxa, ptr %i.cxc, align 8, !tbaa !150
  %i.cxd = mul nsw i32 %i.cwl, %.pre-phi430.i
  %i.cxe = sext i32 %i.cxd to i64
  %i.cxf = sub nsw i64 0, %i.cxe
  %i.cxg = getelementptr inbounds [8 x i8], ptr %i.csp, i64 %i.cxf ; 2 uses
  %i.cxh = getelementptr inbounds [8 x i8], ptr %i.cxg, i64 %i.cwy
  %i.cxi = getelementptr inbounds nuw i8, ptr %i.cxh, i64 8
  %i.cxj = getelementptr inbounds nuw i8, ptr %i.cxb, i64 16
  store ptr %i.cxi, ptr %i.cxj, align 8, !tbaa !150
  %i.cxk = sub nsw i64 0, %i.cwy                  ; 2 uses
  %i.cxl = getelementptr inbounds [8 x i8], ptr %i.cwx, i64 %i.cxk
  %i.cxm = getelementptr inbounds nuw i8, ptr %i.cxb, i64 24
  store ptr %i.cxl, ptr %i.cxm, align 8, !tbaa !150
  %i.cxn = getelementptr inbounds [8 x i8], ptr %i.cxg, i64 %i.cxk
  %i.cxo = getelementptr inbounds nuw i8, ptr %i.cxb, i64 32
  store ptr %i.cxn, ptr %i.cxo, align 8, !tbaa !150
  %i.cxp = mul nsw i32 %i.cws, %.pre-phi430.i
  %i.cxq = sext i32 %i.cxp to i64
  %i.cxr = getelementptr inbounds [8 x i8], ptr %i.cso, i64 %i.cxq
  %i.cxs = getelementptr inbounds nuw i8, ptr %i.cxr, i64 8
  %i.cxt = getelementptr inbounds nuw i8, ptr %i.cxb, i64 40
  store ptr %i.cxs, ptr %i.cxt, align 8, !tbaa !150
  %i.cxu = sext i32 %i.cwn to i64                 ; 2 uses
  %i.cxv = sub nsw i64 0, %i.cxu
  %i.cxw = getelementptr inbounds [8 x i8], ptr %i.csn, i64 %i.cxv
  %i.cxx = getelementptr inbounds nuw i8, ptr %i.cxb, i64 48
  store ptr %i.cxw, ptr %i.cxx, align 8, !tbaa !150
  %i.cxy = getelementptr inbounds [8 x i8], ptr %i.csn, i64 %i.cxu
  %i.cxz = getelementptr inbounds nuw i8, ptr %i.cxy, i64 8
  %i.cya = getelementptr inbounds nuw i8, ptr %i.cxb, i64 56
  store ptr %i.cxz, ptr %i.cya, align 8, !tbaa !150
  %i.cyb = mul nsw i32 %i.cwn, %.pre-phi430.i
  %i.cyc = sext i32 %i.cyb to i64
  %i.cyd = sub nsw i64 0, %i.cyc
  %i.cye = getelementptr inbounds [8 x i8], ptr %i.cso, i64 %i.cyd
  %i.cyf = getelementptr inbounds nuw i8, ptr %i.cye, i64 8
  %i.cyg = getelementptr inbounds nuw i8, ptr %i.cxb, i64 64
  store ptr %i.cyf, ptr %i.cyg, align 8, !tbaa !150
  %i.cyh = add nuw nsw i32 %i.cwq, %i.cwr
  %i.cyi = add nuw nsw i32 %i.cyh, %i.cwt
  store i32 %i.cyi, ptr %i.cxb, align 8, !tbaa !148
  %indvars.iv.next.i53 = add nuw nsw i64 %indvars.iv.i52, 1 ; 2 uses
  %exitcond.not.i54 = icmp eq i64 %indvars.iv.next.i53, %i.csr
  br i1 %exitcond.not.i54, label %._crit_edge.loopexit.i55, label %bb.dd, !llvm.loop !96

.preheader328.i:                                  ; preds = %.lr.ph340.i, %middle.block
  %i.cyj = sdiv i32 %i.ctd, 2                     ; 2 uses
  %i.cyk = add nsw i32 %i.cyj, %i.ctd             ; 8 uses
  %i.cyl = icmp sgt i32 %i.cyk, 0
  br i1 %i.cyl, label %.lr.ph342.i, label %.preheader327.i

.lr.ph342.i:                                      ; preds = %.preheader328.i
  %i.cym = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.cyn = getelementptr inbounds nuw i8, ptr %29, i64 128
  %i.cyo = getelementptr inbounds nuw i8, ptr %30, i64 24
  %i.cyp = getelementptr inbounds nuw i8, ptr %30, i64 128
  %i.cyq = sext i32 %i.bgd to i64                 ; 2 uses
  %i.cyr = shl nsw i64 %i.cyq, 2                  ; 2 uses
  %i.cys = shl nsw i64 %i.cyq, 1                  ; 2 uses
  %wide.trip.count379.i = zext nneg i32 %i.cyk to i64
  br label %bb.de

.lr.ph340.i:                                      ; preds = %.lr.ph340.i.preheader, %.lr.ph340.i
  %indvars.iv371.i = phi i64 [ %indvars.iv.next372.i, %.lr.ph340.i ], [ %indvars.iv371.i.ph, %.lr.ph340.i.preheader ] ; 3 uses
  %i.cyt = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2cv11xfeatures2dL28StarDetectorComputeResponsesIdEEiRKNS_3MatERS2_S5_iiE5pairs, i64 %indvars.iv371.i ; 2 uses
  %i.cyu = getelementptr inbounds nuw i8, ptr %i.cyt, i64 4
  %i.cyv = load i32, ptr %i.cyu, align 4, !tbaa !28
  %i.cyw = sext i32 %i.cyv to i64
  %i.cyx = getelementptr inbounds [72 x i8], ptr %8, i64 %i.cyw
  %i.cyy = load i32, ptr %i.cyx, align 8, !tbaa !148 ; 2 uses
  %i.cyz = load i32, ptr %i.cyt, align 8, !tbaa !28
  %i.cza = sext i32 %i.cyz to i64
  %i.czb = getelementptr inbounds [72 x i8], ptr %8, i64 %i.cza
  %i.czc = load i32, ptr %i.czb, align 8, !tbaa !148
  %i.czd = sub nsw i32 %i.czc, %i.cyy
  %i.cze = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv371.i
  %i.czf = insertelement <2 x i32> poison, i32 %i.czd, i64 0
  %i.czg = insertelement <2 x i32> %i.czf, i32 %i.cyy, i64 1
  %i.czh = sitofp <2 x i32> %i.czg to <2 x float>
  %i.czi = fdiv <2 x float> splat (float 1.000000e+00), %i.czh
  store <2 x float> %i.czi, ptr %i.cze, align 8, !tbaa !36
  %indvars.iv.next372.i = add nuw nsw i64 %indvars.iv371.i, 1 ; 2 uses
  %exitcond375.not.i = icmp eq i64 %indvars.iv.next372.i, %.0176.lcssa.i50
  br i1 %exitcond375.not.i, label %.preheader328.i, label %.lr.ph340.i, !llvm.loop !97

.preheader327.i:                                  ; preds = %bb.de, %.preheader328.i
  %i.czj = sub nsw i32 %i.bgb, %i.cyk             ; 2 uses
  %i.czk = icmp slt i32 %i.cyk, %i.czj
  br i1 %i.czk, label %.lr.ph358.i, label %_ZN2cv11xfeatures2dL28StarDetectorComputeResponsesIdEEiRKNS_3MatERS2_S5_ii.exit

.lr.ph358.i:                                      ; preds = %.preheader327.i
  %i.czl = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.czm = getelementptr inbounds nuw i8, ptr %29, i64 128
  %i.czn = getelementptr inbounds nuw i8, ptr %30, i64 24
  %i.czo = getelementptr inbounds nuw i8, ptr %30, i64 128
  %i.czp = sext i32 %i.cyk to i64                 ; 3 uses
  %i.czq = shl nsw i64 %i.czp, 2                  ; 2 uses
  %i.czr = shl nsw i64 %i.czp, 1                  ; 2 uses
  %i.czs = sext i32 %i.bgd to i64                 ; 2 uses
  %i.czt = sub nsw i64 0, %i.czp                  ; 2 uses
  %i.czu = sub nsw i32 %i.bgd, %i.cyk             ; 2 uses
  %i.czv = icmp slt i32 %i.cyk, %i.czu
  %i.czw = add i32 %i.bif, 1
  %34 = sext i32 %i.ctd to i64
  %35 = sext i32 %i.cyj to i64
  %36 = add nsw i64 %35, %34                      ; 3 uses
  %i.czx = sext i32 %.pre-phi430.i to i64
  %wide.trip.count417.i = sext i32 %i.czj to i64
  %wide.trip.count394.i = sext i32 %i.czu to i64  ; 2 uses
  %wide.trip.count384.i = zext i32 %i.czw to i64
  br label %bb.df

bb.de:                                            ; preds = %bb.de, %.lr.ph342.i
  %indvars.iv376.i = phi i64 [ 0, %.lr.ph342.i ], [ %indvars.iv.next377.i, %bb.de ] ; 4 uses
  %i.czy = load ptr, ptr %i.cym, align 8, !tbaa !140 ; 2 uses
  %i.czz = load i64, ptr %i.cyn, align 8, !tbaa !30 ; 2 uses
  %i.daa = mul i64 %i.czz, %indvars.iv376.i
  %i.dab = getelementptr inbounds nuw i8, ptr %i.czy, i64 %i.daa
  %i.dac = trunc i64 %indvars.iv376.i to i32
  %i.dad = xor i32 %i.dac, -1
  %i.dae = add i32 %i.bgb, %i.dad
  %i.daf = sext i32 %i.dae to i64                 ; 2 uses
  %i.dag = mul i64 %i.czz, %i.daf
  %i.dah = getelementptr inbounds nuw i8, ptr %i.czy, i64 %i.dag
  %i.dai = load ptr, ptr %i.cyo, align 8, !tbaa !140 ; 2 uses
  %i.daj = load i64, ptr %i.cyp, align 8, !tbaa !30 ; 2 uses
  %i.dak = mul i64 %i.daj, %indvars.iv376.i
  %i.dal = getelementptr inbounds nuw i8, ptr %i.dai, i64 %i.dak
  %i.dam = mul i64 %i.daj, %i.daf
  %i.dan = getelementptr inbounds nuw i8, ptr %i.dai, i64 %i.dam
  call void @llvm.memset.p0.i64(ptr align 4 %i.dab, i8 0, i64 %i.cyr, i1 false)
  call void @llvm.memset.p0.i64(ptr align 4 %i.dah, i8 0, i64 %i.cyr, i1 false)
  call void @llvm.memset.p0.i64(ptr align 2 %i.dal, i8 0, i64 %i.cys, i1 false)
  call void @llvm.memset.p0.i64(ptr align 2 %i.dan, i8 0, i64 %i.cys, i1 false)
  %indvars.iv.next377.i = add nuw nsw i64 %indvars.iv376.i, 1 ; 2 uses
  %exitcond380.not.i = icmp eq i64 %indvars.iv.next377.i, %wide.trip.count379.i
  br i1 %exitcond380.not.i, label %.preheader327.i, label %bb.de, !llvm.loop !98

bb.df:                                            ; preds = %._crit_edge356.i, %.lr.ph358.i
  %indvars.iv414.i = phi i64 [ %36, %.lr.ph358.i ], [ %indvars.iv.next415.i, %._crit_edge356.i ] ; 4 uses
  %i.dao = load ptr, ptr %i.czl, align 8, !tbaa !140
  %i.dap = load i64, ptr %i.czm, align 8, !tbaa !30
  %i.daq = mul i64 %i.dap, %indvars.iv414.i
  %i.dar = getelementptr inbounds nuw i8, ptr %i.dao, i64 %i.daq ; 4 uses
  %i.das = load ptr, ptr %i.czn, align 8, !tbaa !140
  %i.dat = load i64, ptr %i.czo, align 8, !tbaa !30
  %i.dau = mul i64 %i.dat, %indvars.iv414.i
  %i.dav = getelementptr inbounds nuw i8, ptr %i.das, i64 %i.dau ; 4 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.dar, i8 0, i64 %i.czq, i1 false)
  call void @llvm.memset.p0.i64(ptr align 2 %i.dav, i8 0, i64 %i.czr, i1 false)
  %i.daw = getelementptr inbounds [4 x i8], ptr %i.dar, i64 %i.czs
  %i.dax = getelementptr inbounds [4 x i8], ptr %i.daw, i64 %i.czt
  call void @llvm.memset.p0.i64(ptr align 4 %i.dax, i8 0, i64 %i.czq, i1 false)
  %i.day = getelementptr inbounds [2 x i8], ptr %i.dav, i64 %i.czs
  %i.daz = getelementptr inbounds [2 x i8], ptr %i.day, i64 %i.czt
  call void @llvm.memset.p0.i64(ptr align 2 %i.daz, i8 0, i64 %i.czr, i1 false)
  br i1 %i.czv, label %.lr.ph355.i, label %._crit_edge356.i

.lr.ph355.i:                                      ; preds = %bb.df
  %i.dba = mul nsw i64 %indvars.iv414.i, %i.czx
  br i1 %.not189336.i, label %.preheader.us.us.i59, label %.lr.ph346.i

.preheader.us.us.i59:                             ; preds = %.lr.ph355.i, %._crit_edge351.us.us.i
  %indvars.iv401.i = phi i64 [ %indvars.iv.next402.i, %._crit_edge351.us.us.i ], [ %36, %.lr.ph355.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  br label %bb.dg

bb.dg:                                            ; preds = %bb.di, %.preheader.us.us.i59
  %indvars.iv396.i = phi i64 [ 0, %.preheader.us.us.i59 ], [ %indvars.iv.next397.i, %bb.di ] ; 3 uses
  %.0170348.us.us.i = phi i32 [ 0, %.preheader.us.us.i59 ], [ %.1.us.us.i61, %bb.di ]
  %.0171347.us.us.i = phi float [ 0.000000e+00, %.preheader.us.us.i59 ], [ %.1172.us.us.i60, %bb.di ] ; 2 uses
  %i.dbb = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2cv11xfeatures2dL28StarDetectorComputeResponsesIdEEiRKNS_3MatERS2_S5_iiE5pairs, i64 %indvars.iv396.i ; 2 uses
  %i.dbc = getelementptr inbounds nuw i8, ptr %i.dbb, i64 4
  %i.dbd = load i32, ptr %i.dbc, align 4, !tbaa !28
  %i.dbe = sext i32 %i.dbd to i64
  %i.dbf = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.dbe
  %i.dbg = load i32, ptr %i.dbf, align 4, !tbaa !28 ; 2 uses
  %i.dbh = load i32, ptr %i.dbb, align 8, !tbaa !28
  %i.dbi = sext i32 %i.dbh to i64                 ; 2 uses
  %i.dbj = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.dbi
  %i.dbk = load i32, ptr %i.dbj, align 4, !tbaa !28
  %i.dbl = sub nsw i32 %i.dbk, %i.dbg
  %i.dbm = sitofp i32 %i.dbg to float
  %i.dbn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv396.i ; 2 uses
  %i.dbo = getelementptr inbounds nuw i8, ptr %i.dbn, i64 4
  %i.dbp = load float, ptr %i.dbo, align 4, !tbaa !36
  %i.dbq = sitofp i32 %i.dbl to float
  %i.dbr = load float, ptr %i.dbn, align 8, !tbaa !36
  %i.dbs = fneg float %i.dbq
  %i.dbt = fmul float %i.dbr, %i.dbs
  %i.dbu = call float @llvm.fmuladd.f32(float %i.dbm, float %i.dbp, float %i.dbt) ; 2 uses
  %i.dbv = call float @llvm.fabs.f32(float %i.dbu)
  %i.dbw = call float @llvm.fabs.f32(float %.0171347.us.us.i)
  %i.dbx = fcmp ogt float %i.dbv, %i.dbw
  br i1 %i.dbx, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.dby = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.dbi
  %i.dbz = load i32, ptr %i.dby, align 4, !tbaa !28
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.1172.us.us.i60 = phi float [ %i.dbu, %bb.dh ], [ %.0171347.us.us.i, %bb.dg ] ; 2 uses
  %.1.us.us.i61 = phi i32 [ %i.dbz, %bb.dh ], [ %.0170348.us.us.i, %bb.dg ] ; 2 uses
  %indvars.iv.next397.i = add nuw nsw i64 %indvars.iv396.i, 1 ; 2 uses
  %exitcond400.not.i = icmp eq i64 %indvars.iv.next397.i, %.0176.lcssa.i50
  br i1 %exitcond400.not.i, label %._crit_edge351.us.us.i, label %bb.dg, !llvm.loop !99

._crit_edge351.us.us.i:                           ; preds = %bb.di
  %i.dca = getelementptr inbounds [4 x i8], ptr %i.dar, i64 %indvars.iv401.i
  store float %.1172.us.us.i60, ptr %i.dca, align 4, !tbaa !36
  %i.dcb = trunc i32 %.1.us.us.i61 to i16
  %i.dcc = getelementptr inbounds [2 x i8], ptr %i.dav, i64 %indvars.iv401.i
  store i16 %i.dcb, ptr %i.dcc, align 2, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %indvars.iv.next402.i = add nsw i64 %indvars.iv401.i, 1 ; 2 uses
  %exitcond405.not.i = icmp eq i64 %indvars.iv.next402.i, %wide.trip.count394.i
  br i1 %exitcond405.not.i, label %._crit_edge356.i, label %.preheader.us.us.i59, !llvm.loop !100

.lr.ph346.i:                                      ; preds = %.lr.ph355.i, %._crit_edge351.i.a
  %indvars.iv391.i = phi i64 [ %indvars.iv.next392.i, %._crit_edge351.i.a ], [ %36, %.lr.ph355.i ] ; 4 uses
  %i.dcd = add nsw i64 %indvars.iv391.i, %i.dba   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dj, %.lr.ph346.i
  %indvars.iv381.i = phi i64 [ 0, %.lr.ph346.i ], [ %indvars.iv.next382.i, %bb.dj ] ; 3 uses
  %i.dce = getelementptr inbounds nuw [72 x i8], ptr %8, i64 %indvars.iv381.i ; 8 uses
  %i.dcf = getelementptr inbounds nuw i8, ptr %i.dce, i64 8
  %i.dcg = load ptr, ptr %i.dcf, align 8, !tbaa !150
  %i.dch = getelementptr inbounds [8 x i8], ptr %i.dcg, i64 %i.dcd
  %i.dci = load double, ptr %i.dch, align 8, !tbaa !146
  %i.dcj = getelementptr inbounds nuw i8, ptr %i.dce, i64 16
  %i.dck = load ptr, ptr %i.dcj, align 8, !tbaa !150
  %i.dcl = getelementptr inbounds [8 x i8], ptr %i.dck, i64 %i.dcd
  %i.dcm = load double, ptr %i.dcl, align 8, !tbaa !146
  %i.dcn = fsub double %i.dci, %i.dcm
  %i.dco = getelementptr inbounds nuw i8, ptr %i.dce, i64 24
  %i.dcp = load ptr, ptr %i.dco, align 8, !tbaa !150
  %i.dcq = getelementptr inbounds [8 x i8], ptr %i.dcp, i64 %i.dcd
  %i.dcr = load double, ptr %i.dcq, align 8, !tbaa !146
  %i.dcs = fsub double %i.dcn, %i.dcr
  %i.dct = getelementptr inbounds nuw i8, ptr %i.dce, i64 32
  %i.dcu = load ptr, ptr %i.dct, align 8, !tbaa !150
  %i.dcv = getelementptr inbounds [8 x i8], ptr %i.dcu, i64 %i.dcd
  %i.dcw = load double, ptr %i.dcv, align 8, !tbaa !146
  %i.dcx = fadd double %i.dcs, %i.dcw
  %i.dcy = getelementptr inbounds nuw i8, ptr %i.dce, i64 40
  %i.dcz = load ptr, ptr %i.dcy, align 8, !tbaa !150
  %i.dda = getelementptr inbounds [8 x i8], ptr %i.dcz, i64 %i.dcd
  %i.ddb = load double, ptr %i.dda, align 8, !tbaa !146
  %i.ddc = fadd double %i.dcx, %i.ddb
  %i.ddd = getelementptr inbounds nuw i8, ptr %i.dce, i64 48
  %i.dde = load ptr, ptr %i.ddd, align 8, !tbaa !150
  %i.ddf = getelementptr inbounds [8 x i8], ptr %i.dde, i64 %i.dcd
  %i.ddg = load double, ptr %i.ddf, align 8, !tbaa !146
  %i.ddh = fsub double %i.ddc, %i.ddg
  %i.ddi = getelementptr inbounds nuw i8, ptr %i.dce, i64 56
  %i.ddj = load ptr, ptr %i.ddi, align 8, !tbaa !150
  %i.ddk = getelementptr inbounds [8 x i8], ptr %i.ddj, i64 %i.dcd
  %i.ddl = load double, ptr %i.ddk, align 8, !tbaa !146
  %i.ddm = fsub double %i.ddh, %i.ddl
  %i.ddn = getelementptr inbounds nuw i8, ptr %i.dce, i64 64
  %i.ddo = load ptr, ptr %i.ddn, align 8, !tbaa !150
  %i.ddp = getelementptr inbounds [8 x i8], ptr %i.ddo, i64 %i.dcd
  %i.ddq = load double, ptr %i.ddp, align 8, !tbaa !146
  %i.ddr = fadd double %i.ddm, %i.ddq
  %i.dds = fptosi double %i.ddr to i32
  %i.ddt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv381.i
  store i32 %i.dds, ptr %i.ddt, align 4, !tbaa !28
  %indvars.iv.next382.i = add nuw nsw i64 %indvars.iv381.i, 1 ; 2 uses
  %exitcond385.not.i = icmp eq i64 %indvars.iv.next382.i, %wide.trip.count384.i
  br i1 %exitcond385.not.i, label %.lr.ph350.i, label %bb.dj, !llvm.loop !101

._crit_edge351.i.a:                               ; preds = %bb.dl
  %i.ddu = getelementptr inbounds [4 x i8], ptr %i.dar, i64 %indvars.iv391.i
  store float %.1172.i57, ptr %i.ddu, align 4, !tbaa !36
  %i.ddv = trunc i32 %.1.i58 to i16
  %i.ddw = getelementptr inbounds [2 x i8], ptr %i.dav, i64 %indvars.iv391.i
  store i16 %i.ddv, ptr %i.ddw, align 2, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %indvars.iv.next392.i = add nsw i64 %indvars.iv391.i, 1 ; 2 uses
  %exitcond395.not.i = icmp eq i64 %indvars.iv.next392.i, %wide.trip.count394.i
  br i1 %exitcond395.not.i, label %._crit_edge356.i, label %.lr.ph346.i, !llvm.loop !100

.lr.ph350.i:                                      ; preds = %bb.dj, %bb.dl
  %indvars.iv386.i = phi i64 [ %indvars.iv.next387.i, %bb.dl ], [ 0, %bb.dj ] ; 3 uses
  %.0170348.i = phi i32 [ %.1.i58, %bb.dl ], [ 0, %bb.dj ]
  %.0171347.i = phi float [ %.1172.i57, %bb.dl ], [ 0.000000e+00, %bb.dj ] ; 2 uses
  %i.ddx = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2cv11xfeatures2dL28StarDetectorComputeResponsesIdEEiRKNS_3MatERS2_S5_iiE5pairs, i64 %indvars.iv386.i ; 2 uses
  %i.ddy = getelementptr inbounds nuw i8, ptr %i.ddx, i64 4
  %i.ddz = load i32, ptr %i.ddy, align 4, !tbaa !28
  %i.dea = sext i32 %i.ddz to i64
  %i.deb = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.dea
  %i.dec = load i32, ptr %i.deb, align 4, !tbaa !28 ; 2 uses
  %i.ded = load i32, ptr %i.ddx, align 8, !tbaa !28
  %i.dee = sext i32 %i.ded to i64                 ; 2 uses
  %i.def = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.dee
  %i.deg = load i32, ptr %i.def, align 4, !tbaa !28
  %i.deh = sub nsw i32 %i.deg, %i.dec
  %i.dei = sitofp i32 %i.dec to float
  %i.dej = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv386.i ; 2 uses
  %i.dek = getelementptr inbounds nuw i8, ptr %i.dej, i64 4
  %i.del = load float, ptr %i.dek, align 4, !tbaa !36
  %i.dem = sitofp i32 %i.deh to float
  %i.den = load float, ptr %i.dej, align 8, !tbaa !36
  %i.deo = fneg float %i.dem
  %i.dep = fmul float %i.den, %i.deo
  %i.deq = call float @llvm.fmuladd.f32(float %i.dei, float %i.del, float %i.dep) ; 2 uses
  %i.der = call float @llvm.fabs.f32(float %i.deq)
  %i.des = call float @llvm.fabs.f32(float %.0171347.i)
  %i.det = fcmp ogt float %i.der, %i.des
  br i1 %i.det, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %.lr.ph350.i
  %i.deu = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.dee
  %i.dev = load i32, ptr %i.deu, align 4, !tbaa !28
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %.lr.ph350.i
  %.1172.i57 = phi float [ %i.deq, %bb.dk ], [ %.0171347.i, %.lr.ph350.i ] ; 2 uses
  %.1.i58 = phi i32 [ %i.dev, %bb.dk ], [ %.0170348.i, %.lr.ph350.i ] ; 2 uses
  %indvars.iv.next387.i = add nuw nsw i64 %indvars.iv386.i, 1 ; 2 uses
  %exitcond390.not.i = icmp eq i64 %indvars.iv.next387.i, %.0176.lcssa.i50
  br i1 %exitcond390.not.i, label %._crit_edge351.i.a, label %.lr.ph350.i, !llvm.loop !99

._crit_edge356.i:                                 ; preds = %._crit_edge351.i.a, %._crit_edge351.us.us.i, %bb.df
  %indvars.iv.next415.i = add nsw i64 %indvars.iv414.i, 1 ; 2 uses
  %exitcond418.not.i = icmp eq i64 %indvars.iv.next415.i, %wide.trip.count417.i
  br i1 %exitcond418.not.i, label %_ZN2cv11xfeatures2dL28StarDetectorComputeResponsesIdEEiRKNS_3MatERS2_S5_ii.exit, label %bb.df, !llvm.loop !102

.body.i26:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i86, %bb.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i193.i39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30
  %.pn187.i27 = phi { ptr, i32 } [ %.pn.i87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i86 ], [ %i.bgh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30 ], [ %i.bic, %bb.cp ], [ %i.bha, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i193.i39 ]
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

_ZN2cv11xfeatures2dL28StarDetectorComputeResponsesIdEEiRKNS_3MatERS2_S5_ii.exit: ; preds = %._crit_edge356.i, %.preheader327.i
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
  %.0 = phi i32 [ %i.azp, %_ZN2cv11xfeatures2dL28StarDetectorComputeResponsesIiEEiRKNS_3MatERS2_S5_ii.exit ], [ %i.cyk, %_ZN2cv11xfeatures2dL28StarDetectorComputeResponsesIdEEiRKNS_3MatERS2_S5_ii.exit ] ; 6 uses
  %i.dew = load ptr, ptr %2, align 8, !tbaa !125  ; 4 uses
  %i.dex = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.dey = load ptr, ptr %i.dex, align 8, !tbaa !126 ; 2 uses
  %.not.i.i105 = icmp eq ptr %i.dey, %i.dew
  br i1 %.not.i.i105, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE5clearEv.exit107, label %_ZSt8_DestroyIPN2cv8KeyPointES1_EvT_S3_RSaIT0_E.exit.i.i106

_ZSt8_DestroyIPN2cv8KeyPointES1_EvT_S3_RSaIT0_E.exit.i.i106: ; preds = %bb.dm
  store ptr %i.dew, ptr %i.dex, align 8, !tbaa !126
  br label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE5clearEv.exit107

_ZNSt6vectorIN2cv8KeyPointESaIS1_EE5clearEv.exit107: ; preds = %bb.dm, %_ZSt8_DestroyIPN2cv8KeyPointES1_EvT_S3_RSaIT0_E.exit.i.i106
  %i.dez = phi ptr [ %i.dey, %bb.dm ], [ %i.dew, %_ZSt8_DestroyIPN2cv8KeyPointES1_EvT_S3_RSaIT0_E.exit.i.i106 ]
  %i.dfa = icmp sgt i32 %.0, -1
  br i1 %i.dfa, label %bb.dn, label %_ZN2cv11xfeatures2dL26StarDetectorSuppressNonmaxERKNS_3MatES3_RSt6vectorINS_8KeyPointESaIS5_EEiiiii.exit

bb.dn:                                            ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE5clearEv.exit107
  %i.dfb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dfc = load i32, ptr %i.dfb, align 8, !tbaa !16 ; 2 uses
  %i.dfd = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.dfe = load i32, ptr %i.dfd, align 4, !tbaa !17 ; 2 uses
  %i.dff = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dfg = load i32, ptr %i.dff, align 8, !tbaa !18 ; 2 uses
  %i.dfh = sdiv i32 %i.dfg, 2                     ; 11 uses
  %i.dfi = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.dfj = load i32, ptr %i.dfi, align 8, !tbaa !137
  %i.dfk = getelementptr inbounds nuw i8, ptr %29, i64 24 ; 3 uses
  %i.dfl = load ptr, ptr %i.dfk, align 8, !tbaa !140 ; 3 uses
  %i.dfm = getelementptr inbounds nuw i8, ptr %29, i64 128 ; 3 uses
  %i.dfn = load i64, ptr %i.dfm, align 8, !tbaa !30
  %i.dfo = getelementptr inbounds nuw i8, ptr %30, i64 24 ; 3 uses
  %i.dfp = load ptr, ptr %i.dfo, align 8, !tbaa !140 ; 2 uses
  %i.dfq = getelementptr inbounds nuw i8, ptr %30, i64 128 ; 3 uses
  %i.dfr = load i64, ptr %i.dfq, align 8, !tbaa !30
  %i.dfs = lshr i64 %i.dfr, 1
  %i.dft = trunc i64 %i.dfs to i32                ; 2 uses
  %i.dfu = sub nsw i32 %i.dfj, %.0                ; 3 uses
  %i.dfv = icmp slt i32 %.0, %i.dfu
  br i1 %i.dfv, label %.preheader223.lr.ph.i, label %_ZN2cv11xfeatures2dL26StarDetectorSuppressNonmaxERKNS_3MatES3_RSt6vectorINS_8KeyPointESaIS5_EEiiiii.exit

.preheader223.lr.ph.i:                            ; preds = %bb.dn
  %i.dfw = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.dfx = load i32, ptr %i.dfw, align 4, !tbaa !15 ; 2 uses
  %i.dfy = getelementptr inbounds nuw i8, ptr %29, i64 12
  %i.dfz = load i32, ptr %i.dfy, align 4, !tbaa !138
  %i.dga = sub nsw i32 %i.dfz, %.0                ; 3 uses
  %i.dgb = icmp slt i32 %.0, %i.dga
  %i.dgc = sitofp i32 %i.dfx to float
  %i.dgd = sub nsw i32 0, %i.dfx
  %i.dge = sitofp i32 %i.dgd to float
  %i.dgf = add nsw i32 %i.dfu, -1
  %i.dgg = add nsw i32 %i.dga, -1
  %i.dgh = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  br i1 %i.dgb, label %.preheader223.us.preheader.i, label %_ZN2cv11xfeatures2dL26StarDetectorSuppressNonmaxERKNS_3MatES3_RSt6vectorINS_8KeyPointESaIS5_EEiiiii.exit

.preheader223.us.preheader.i:                     ; preds = %.preheader223.lr.ph.i
  %i.dgi = zext nneg i32 %.0 to i64               ; 2 uses
  %narrow.i = add nsw i32 %i.dfh, 1
  %i.dgj = sext i32 %narrow.i to i64              ; 2 uses
  %i.dgk = shl i64 %i.dfn, 30
  %i.dgl = ashr i64 %i.dgk, 32                    ; 3 uses
  %.not134262.us.i = icmp slt i32 %i.dfg, -1      ; 2 uses
  br label %.preheader223.us.i

end_hunk_1
