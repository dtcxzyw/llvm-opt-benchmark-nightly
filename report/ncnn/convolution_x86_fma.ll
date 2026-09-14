Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_fma?download=true
inline.NumInlined: 397
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 143
loop-unroll.NumUnrolled: 268
begin_hunk_0_@_ZN4ncnn19Convolution_x86_fma15create_pipelineERKNS_6OptionE:bb.a
  %i.ard = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 116
  store float %i.arc, ptr %i.ard, align 4, !tbaa !56
  %i.are = load float, ptr %i.aqq, align 4, !tbaa !56
  %i.arf = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 120
  store float %i.are, ptr %i.arf, align 4, !tbaa !56
  %i.arg = load float, ptr %i.aqr, align 4, !tbaa !56
  %i.arh = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 124
  store float %i.arg, ptr %i.arh, align 4, !tbaa !56
  %i.ari = getelementptr inbounds nuw [4 x i8], ptr %i.aqk, i64 %i.ais ; 2 uses
  %i.arj = getelementptr inbounds nuw [4 x i8], ptr %i.aql, i64 %i.ais ; 2 uses
  %i.ark = getelementptr inbounds nuw [4 x i8], ptr %i.aqm, i64 %i.ais ; 2 uses
  %i.arl = getelementptr inbounds nuw [4 x i8], ptr %i.aqn, i64 %i.ais ; 2 uses
  %i.arm = getelementptr inbounds nuw [4 x i8], ptr %i.aqo, i64 %i.ais ; 2 uses
  %i.arn = getelementptr inbounds nuw [4 x i8], ptr %i.aqp, i64 %i.ais ; 2 uses
  %i.aro = getelementptr inbounds nuw [4 x i8], ptr %i.aqq, i64 %i.ais ; 2 uses
  %i.arp = getelementptr inbounds nuw [4 x i8], ptr %i.aqr, i64 %i.ais ; 2 uses
  %i.arq = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 128
  %i.arr = load float, ptr %i.ari, align 4, !tbaa !56
  store float %i.arr, ptr %i.arq, align 4, !tbaa !56
  %i.ars = load float, ptr %i.arj, align 4, !tbaa !56
  %i.art = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 132
  store float %i.ars, ptr %i.art, align 4, !tbaa !56
  %i.aru = load float, ptr %i.ark, align 4, !tbaa !56
  %i.arv = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 136
  store float %i.aru, ptr %i.arv, align 4, !tbaa !56
  %i.arw = load float, ptr %i.arl, align 4, !tbaa !56
  %i.arx = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 140
  store float %i.arw, ptr %i.arx, align 4, !tbaa !56
  %i.ary = load float, ptr %i.arm, align 4, !tbaa !56
  %i.arz = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 144
  store float %i.ary, ptr %i.arz, align 4, !tbaa !56
  %i.asa = load float, ptr %i.arn, align 4, !tbaa !56
  %i.asb = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 148
  store float %i.asa, ptr %i.asb, align 4, !tbaa !56
  %i.asc = load float, ptr %i.aro, align 4, !tbaa !56
  %i.asd = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 152
  store float %i.asc, ptr %i.asd, align 4, !tbaa !56
  %i.ase = load float, ptr %i.arp, align 4, !tbaa !56
  %i.asf = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 156
  store float %i.ase, ptr %i.asf, align 4, !tbaa !56
  %i.asg = getelementptr inbounds nuw [4 x i8], ptr %i.ari, i64 %i.ais ; 2 uses
  %i.ash = getelementptr inbounds nuw [4 x i8], ptr %i.arj, i64 %i.ais ; 2 uses
  %i.asi = getelementptr inbounds nuw [4 x i8], ptr %i.ark, i64 %i.ais ; 2 uses
  %i.asj = getelementptr inbounds nuw [4 x i8], ptr %i.arl, i64 %i.ais ; 2 uses
  %i.ask = getelementptr inbounds nuw [4 x i8], ptr %i.arm, i64 %i.ais ; 2 uses
  %i.asl = getelementptr inbounds nuw [4 x i8], ptr %i.arn, i64 %i.ais ; 2 uses
  %i.asm = getelementptr inbounds nuw [4 x i8], ptr %i.aro, i64 %i.ais ; 2 uses
  %i.asn = getelementptr inbounds nuw [4 x i8], ptr %i.arp, i64 %i.ais ; 2 uses
  %i.aso = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 160
  %i.asp = load float, ptr %i.asg, align 4, !tbaa !56
  store float %i.asp, ptr %i.aso, align 4, !tbaa !56
  %i.asq = load float, ptr %i.ash, align 4, !tbaa !56
  %i.asr = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 164
  store float %i.asq, ptr %i.asr, align 4, !tbaa !56
  %i.ass = load float, ptr %i.asi, align 4, !tbaa !56
  %i.ast = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 168
  store float %i.ass, ptr %i.ast, align 4, !tbaa !56
  %i.asu = load float, ptr %i.asj, align 4, !tbaa !56
  %i.asv = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 172
  store float %i.asu, ptr %i.asv, align 4, !tbaa !56
  %i.asw = load float, ptr %i.ask, align 4, !tbaa !56
  %i.asx = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 176
  store float %i.asw, ptr %i.asx, align 4, !tbaa !56
  %i.asy = load float, ptr %i.asl, align 4, !tbaa !56
  %i.asz = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 180
  store float %i.asy, ptr %i.asz, align 4, !tbaa !56
  %i.ata = load float, ptr %i.asm, align 4, !tbaa !56
  %i.atb = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 184
  store float %i.ata, ptr %i.atb, align 4, !tbaa !56
  %i.atc = load float, ptr %i.asn, align 4, !tbaa !56
  %i.atd = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 188
  store float %i.atc, ptr %i.atd, align 4, !tbaa !56
  %i.ate = getelementptr inbounds nuw [4 x i8], ptr %i.asg, i64 %i.ais ; 2 uses
  %i.atf = getelementptr inbounds nuw [4 x i8], ptr %i.ash, i64 %i.ais ; 2 uses
  %i.atg = getelementptr inbounds nuw [4 x i8], ptr %i.asi, i64 %i.ais ; 2 uses
  %i.ath = getelementptr inbounds nuw [4 x i8], ptr %i.asj, i64 %i.ais ; 2 uses
  %i.ati = getelementptr inbounds nuw [4 x i8], ptr %i.ask, i64 %i.ais ; 2 uses
  %i.atj = getelementptr inbounds nuw [4 x i8], ptr %i.asl, i64 %i.ais ; 2 uses
  %i.atk = getelementptr inbounds nuw [4 x i8], ptr %i.asm, i64 %i.ais ; 2 uses
  %i.atl = getelementptr inbounds nuw [4 x i8], ptr %i.asn, i64 %i.ais ; 2 uses
  %i.atm = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 192
  %i.atn = load float, ptr %i.ate, align 4, !tbaa !56
  store float %i.atn, ptr %i.atm, align 4, !tbaa !56
  %i.ato = load float, ptr %i.atf, align 4, !tbaa !56
  %i.atp = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 196
  store float %i.ato, ptr %i.atp, align 4, !tbaa !56
  %i.atq = load float, ptr %i.atg, align 4, !tbaa !56
  %i.atr = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 200
  store float %i.atq, ptr %i.atr, align 4, !tbaa !56
  %i.ats = load float, ptr %i.ath, align 4, !tbaa !56
  %i.att = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 204
  store float %i.ats, ptr %i.att, align 4, !tbaa !56
  %i.atu = load float, ptr %i.ati, align 4, !tbaa !56
  %i.atv = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 208
  store float %i.atu, ptr %i.atv, align 4, !tbaa !56
  %i.atw = load float, ptr %i.atj, align 4, !tbaa !56
  %i.atx = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 212
  store float %i.atw, ptr %i.atx, align 4, !tbaa !56
  %i.aty = load float, ptr %i.atk, align 4, !tbaa !56
  %i.atz = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 216
  store float %i.aty, ptr %i.atz, align 4, !tbaa !56
  %i.aua = load float, ptr %i.atl, align 4, !tbaa !56
  %i.aub = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 220
  store float %i.aua, ptr %i.aub, align 4, !tbaa !56
  %i.auc = getelementptr inbounds nuw [4 x i8], ptr %i.ate, i64 %i.ais
  %i.aud = getelementptr inbounds nuw [4 x i8], ptr %i.atf, i64 %i.ais
  %i.aue = getelementptr inbounds nuw [4 x i8], ptr %i.atg, i64 %i.ais
  %i.auf = getelementptr inbounds nuw [4 x i8], ptr %i.ath, i64 %i.ais
  %i.aug = getelementptr inbounds nuw [4 x i8], ptr %i.ati, i64 %i.ais
  %i.auh = getelementptr inbounds nuw [4 x i8], ptr %i.atj, i64 %i.ais
  %i.aui = getelementptr inbounds nuw [4 x i8], ptr %i.atk, i64 %i.ais
  %i.auj = getelementptr inbounds nuw [4 x i8], ptr %i.atl, i64 %i.ais
  %i.auk = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 224
  %i.aul = load float, ptr %i.auc, align 4, !tbaa !56
  store float %i.aul, ptr %i.auk, align 4, !tbaa !56
  %i.aum = load float, ptr %i.aud, align 4, !tbaa !56
  %i.aun = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 228
  store float %i.aum, ptr %i.aun, align 4, !tbaa !56
  %i.auo = load float, ptr %i.aue, align 4, !tbaa !56
  %i.aup = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 232
  store float %i.auo, ptr %i.aup, align 4, !tbaa !56
  %i.auq = load float, ptr %i.auf, align 4, !tbaa !56
  %i.aur = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 236
  store float %i.auq, ptr %i.aur, align 4, !tbaa !56
  %i.aus = load float, ptr %i.aug, align 4, !tbaa !56
  %i.aut = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 240
  store float %i.aus, ptr %i.aut, align 4, !tbaa !56
  %i.auu = load float, ptr %i.auh, align 4, !tbaa !56
  %i.auv = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 244
  store float %i.auu, ptr %i.auv, align 4, !tbaa !56
  %i.auw = load float, ptr %i.aui, align 4, !tbaa !56
  %i.aux = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 248
  store float %i.auw, ptr %i.aux, align 4, !tbaa !56
  %i.auy = load float, ptr %i.auj, align 4, !tbaa !56
  %i.auz = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 252
  store float %i.auy, ptr %i.auz, align 4, !tbaa !56
  %i.ava = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 256 ; 3 uses
  %indvars.iv.next1650.i = add nuw nsw i64 %indvars.iv1649.i, 1 ; 2 uses
  %exitcond.not.i229 = icmp eq i64 %indvars.iv.next1650.i, %wide.trip.count.i
  br i1 %exitcond.not.i229, label %._crit_edge.us.i, label %bb.jy, !llvm.loop !134

._crit_edge.us.i:                                 ; preds = %bb.jy
  %i.avb = getelementptr inbounds nuw [4 x i8], ptr %.08391134.us.i, i64 %i.aiu ; 2 uses
  %i.avc = getelementptr inbounds nuw [4 x i8], ptr %.08471133.us.i, i64 %i.aiu ; 2 uses
  %i.avd = getelementptr inbounds nuw [4 x i8], ptr %.08501132.us.i, i64 %i.aiu ; 2 uses
  %i.ave = getelementptr inbounds nuw [4 x i8], ptr %.08541131.us.i, i64 %i.aiu ; 2 uses
  %i.avf = getelementptr inbounds nuw [4 x i8], ptr %.08571130.us.i, i64 %i.aiu ; 2 uses
  %i.avg = getelementptr inbounds nuw [4 x i8], ptr %.08801129.us.i, i64 %i.aiu ; 2 uses
  %i.avh = getelementptr inbounds nuw [4 x i8], ptr %.08831128.us.i, i64 %i.aiu ; 2 uses
  %i.avi = getelementptr inbounds nuw [4 x i8], ptr %.08861127.us.i, i64 %i.aiu ; 2 uses
  %i.avj = add nuw nsw i32 %.09461125.us.i, 8     ; 2 uses
  %i.avk = or disjoint i32 %i.avj, 7
  %i.avl = icmp slt i32 %i.avk, %i.cj
  br i1 %i.avl, label %.preheader1109.us.i, label %.preheader1112.i, !llvm.loop !135

.preheader1112.i:                                 ; preds = %._crit_edge.us.i, %_ZN4ncnn3MatD2Ev.exit1007.i
  %.0946.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1007.i ], [ %i.ajn, %._crit_edge.us.i ] ; 4 uses
  %.0889.lcssa.i = phi ptr [ %i.anq, %_ZN4ncnn3MatD2Ev.exit1007.i ], [ %i.ava, %._crit_edge.us.i ] ; 3 uses
  %.0886.lcssa.i = phi ptr [ %i.ano, %_ZN4ncnn3MatD2Ev.exit1007.i ], [ %i.avi, %._crit_edge.us.i ] ; 3 uses
  %.0883.lcssa.i = phi ptr [ %i.ank, %_ZN4ncnn3MatD2Ev.exit1007.i ], [ %i.avh, %._crit_edge.us.i ] ; 3 uses
  %.0880.lcssa.i = phi ptr [ %i.ang, %_ZN4ncnn3MatD2Ev.exit1007.i ], [ %i.avg, %._crit_edge.us.i ] ; 3 uses
  %.0857.lcssa.i = phi ptr [ %i.anc, %_ZN4ncnn3MatD2Ev.exit1007.i ], [ %i.avf, %._crit_edge.us.i ] ; 3 uses
  %.0854.lcssa.i = phi ptr [ %i.amy, %_ZN4ncnn3MatD2Ev.exit1007.i ], [ %i.ave, %._crit_edge.us.i ] ; 3 uses
  %.0850.lcssa.i = phi ptr [ %i.amu, %_ZN4ncnn3MatD2Ev.exit1007.i ], [ %i.avd, %._crit_edge.us.i ] ; 3 uses
  %.0847.lcssa.i = phi ptr [ %i.amq, %_ZN4ncnn3MatD2Ev.exit1007.i ], [ %i.avc, %._crit_edge.us.i ] ; 3 uses
  %.0839.lcssa.i = phi ptr [ %i.amm, %_ZN4ncnn3MatD2Ev.exit1007.i ], [ %i.avb, %._crit_edge.us.i ] ; 3 uses
  %i.avm = or disjoint i32 %.0946.lcssa.i, 3
  %i.avn = icmp slt i32 %i.avm, %i.cj
  br i1 %i.avn, label %.preheader1108.lr.ph.i, label %.preheader1111.i

.preheader1112.thread.i:                          ; preds = %.preheader1109.lr.ph.i
  br i1 %i.ajr, label %.preheader1108.preheader.i, label %.preheader1111.i

.preheader1108.lr.ph.i:                           ; preds = %.preheader1112.i
  br i1 %i.air, label %.preheader1108.us.i, label %.preheader1108.preheader.i

.preheader1108.preheader.i:                       ; preds = %.preheader1108.lr.ph.i, %.preheader1112.thread.i
  %.0946.lcssa18491878.i = phi i32 [ %.0946.lcssa.i, %.preheader1108.lr.ph.i ], [ %i.ajn, %.preheader1112.thread.i ] ; 2 uses
  %.0889.lcssa18501877.i = phi ptr [ %.0889.lcssa.i, %.preheader1108.lr.ph.i ], [ %i.anq, %.preheader1112.thread.i ]
  %.0886.lcssa18511876.i = phi ptr [ %.0886.lcssa.i, %.preheader1108.lr.ph.i ], [ %scevgep1648.i, %.preheader1112.thread.i ]
  %.0883.lcssa18521875.i = phi ptr [ %.0883.lcssa.i, %.preheader1108.lr.ph.i ], [ %scevgep1644.i, %.preheader1112.thread.i ]
  %.0880.lcssa18531874.i = phi ptr [ %.0880.lcssa.i, %.preheader1108.lr.ph.i ], [ %scevgep1640.i, %.preheader1112.thread.i ]
  %.0857.lcssa18541873.i = phi ptr [ %.0857.lcssa.i, %.preheader1108.lr.ph.i ], [ %scevgep1636.i, %.preheader1112.thread.i ]
  %.0854.lcssa18551872.i = phi ptr [ %.0854.lcssa.i, %.preheader1108.lr.ph.i ], [ %scevgep1632.i, %.preheader1112.thread.i ]
  %.0850.lcssa18561871.i = phi ptr [ %.0850.lcssa.i, %.preheader1108.lr.ph.i ], [ %scevgep1628.i, %.preheader1112.thread.i ]
  %.0847.lcssa18571870.i = phi ptr [ %.0847.lcssa.i, %.preheader1108.lr.ph.i ], [ %scevgep1624.i, %.preheader1112.thread.i ]
  %.0839.lcssa18581869.i = phi ptr [ %.0839.lcssa.i, %.preheader1108.lr.ph.i ], [ %scevgep1620.i, %.preheader1112.thread.i ]
  %i.avo = sub i32 %i.ajo, %.0946.lcssa18491878.i
  %i.avp = and i32 %i.avo, -4                     ; 2 uses
  %i.avq = zext i32 %i.avp to i64
  %i.avr = add nuw nsw i64 %i.avq, 4
  %i.avs = mul nsw i64 %i.avr, %i.aiw             ; 8 uses
  %scevgep1652.i = getelementptr i8, ptr %.0839.lcssa18581869.i, i64 %i.avs
  %scevgep1653.i = getelementptr i8, ptr %.0847.lcssa18571870.i, i64 %i.avs
  %scevgep1654.i = getelementptr i8, ptr %.0850.lcssa18561871.i, i64 %i.avs
  %scevgep1655.i = getelementptr i8, ptr %.0854.lcssa18551872.i, i64 %i.avs
  %scevgep1656.i = getelementptr i8, ptr %.0857.lcssa18541873.i, i64 %i.avs
  %scevgep1657.i = getelementptr i8, ptr %.0880.lcssa18531874.i, i64 %i.avs
  %scevgep1658.i = getelementptr i8, ptr %.0883.lcssa18521875.i, i64 %i.avs
  %scevgep1659.i = getelementptr i8, ptr %.0886.lcssa18511876.i, i64 %i.avs
  %i.avt = add nsw i32 %.0946.lcssa18491878.i, 4
  %i.avu = add i32 %i.avt, %i.avp
  br label %.preheader1111.i

.preheader1108.us.i:                              ; preds = %.preheader1108.lr.ph.i, %._crit_edge.us1186.i
  %.18401175.us.i = phi ptr [ %i.azn, %._crit_edge.us1186.i ], [ %.0839.lcssa.i, %.preheader1108.lr.ph.i ] ; 2 uses
  %.18481174.us.i = phi ptr [ %i.azo, %._crit_edge.us1186.i ], [ %.0847.lcssa.i, %.preheader1108.lr.ph.i ] ; 2 uses
  %.18511173.us.i = phi ptr [ %i.azp, %._crit_edge.us1186.i ], [ %.0850.lcssa.i, %.preheader1108.lr.ph.i ] ; 2 uses
  %.18551172.us.i = phi ptr [ %i.azq, %._crit_edge.us1186.i ], [ %.0854.lcssa.i, %.preheader1108.lr.ph.i ] ; 2 uses
  %.18581171.us.i = phi ptr [ %i.azr, %._crit_edge.us1186.i ], [ %.0857.lcssa.i, %.preheader1108.lr.ph.i ] ; 2 uses
  %.18811170.us.i = phi ptr [ %i.azs, %._crit_edge.us1186.i ], [ %.0880.lcssa.i, %.preheader1108.lr.ph.i ] ; 2 uses
  %.18841169.us.i = phi ptr [ %i.azt, %._crit_edge.us1186.i ], [ %.0883.lcssa.i, %.preheader1108.lr.ph.i ] ; 2 uses
  %.18871168.us.i = phi ptr [ %i.azu, %._crit_edge.us1186.i ], [ %.0886.lcssa.i, %.preheader1108.lr.ph.i ] ; 2 uses
  %.38921167.us.i = phi ptr [ %i.azm, %._crit_edge.us1186.i ], [ %.0889.lcssa.i, %.preheader1108.lr.ph.i ]
  %.19471166.us.i = phi i32 [ %i.azv, %._crit_edge.us1186.i ], [ %.0946.lcssa.i, %.preheader1108.lr.ph.i ]
  br label %bb.jz

bb.jz:                                            ; preds = %bb.jz, %.preheader1108.us.i
  %indvars.iv1661.i = phi i64 [ 0, %.preheader1108.us.i ], [ %indvars.iv.next1662.i, %bb.jz ] ; 9 uses
  %.48931165.us.i = phi ptr [ %.38921167.us.i, %.preheader1108.us.i ], [ %i.azm, %bb.jz ] ; 33 uses
  %i.avv = getelementptr inbounds nuw [4 x i8], ptr %.18401175.us.i, i64 %indvars.iv1661.i ; 2 uses
  %i.avw = getelementptr inbounds nuw [4 x i8], ptr %.18481174.us.i, i64 %indvars.iv1661.i ; 2 uses
  %i.avx = getelementptr inbounds nuw [4 x i8], ptr %.18511173.us.i, i64 %indvars.iv1661.i ; 2 uses
  %i.avy = getelementptr inbounds nuw [4 x i8], ptr %.18551172.us.i, i64 %indvars.iv1661.i ; 2 uses
  %i.avz = getelementptr inbounds nuw [4 x i8], ptr %.18581171.us.i, i64 %indvars.iv1661.i ; 2 uses
  %i.awa = getelementptr inbounds nuw [4 x i8], ptr %.18811170.us.i, i64 %indvars.iv1661.i ; 2 uses
  %i.awb = getelementptr inbounds nuw [4 x i8], ptr %.18841169.us.i, i64 %indvars.iv1661.i ; 2 uses
  %i.awc = getelementptr inbounds nuw [4 x i8], ptr %.18871168.us.i, i64 %indvars.iv1661.i ; 2 uses
  %i.awd = load float, ptr %i.avv, align 4, !tbaa !56
  store float %i.awd, ptr %.48931165.us.i, align 4, !tbaa !56
  %i.awe = load float, ptr %i.avw, align 4, !tbaa !56
  %i.awf = getelementptr inbounds nuw i8, ptr %.48931165.us.i, i64 4
  store float %i.awe, ptr %i.awf, align 4, !tbaa !56
  %i.awg = load float, ptr %i.avx, align 4, !tbaa !56
  %i.awh = getelementptr inbounds nuw i8, ptr %.48931165.us.i, i64 8
  store float %i.awg, ptr %i.awh, align 4, !tbaa !56
  %i.awi = load float, ptr %i.avy, align 4, !tbaa !56
  %i.awj = getelementptr inbounds nuw i8, ptr %.48931165.us.i, i64 12
  store float %i.awi, ptr %i.awj, align 4, !tbaa !56
  %i.awk = load float, ptr %i.avz, align 4, !tbaa !56
  %i.awl = getelementptr inbounds nuw i8, ptr %.48931165.us.i, i64 16
  store float %i.awk, ptr %i.awl, align 4, !tbaa !56
  %i.awm = load float, ptr %i.awa, align 4, !tbaa !56
  %i.awn = getelementptr inbounds nuw i8, ptr %.48931165.us.i, i64 20
  store float %i.awm, ptr %i.awn, align 4, !tbaa !56
  %i.awo = load float, ptr %i.awb, align 4, !tbaa !56
  %i.awp = getelementptr inbounds nuw i8, ptr %.48931165.us.i, i64 24
  store float %i.awo, ptr %i.awp, align 4, !tbaa !56
  %i.awq = load float, ptr %i.awc, align 4, !tbaa !56
  %i.awr = getelementptr inbounds nuw i8, ptr %.48931165.us.i, i64 28
  store float %i.awq, ptr %i.awr, align 4, !tbaa !56
  %i.aws = getelementptr inbounds nuw [4 x i8], ptr %i.avv, i64 %i.ais ; 2 uses
  %i.awt = getelementptr inbounds nuw [4 x i8], ptr %i.avw, i64 %i.ais ; 2 uses
  %i.awu = getelementptr inbounds nuw [4 x i8], ptr %i.avx, i64 %i.ais ; 2 uses
  %i.awv = getelementptr inbounds nuw [4 x i8], ptr %i.avy, i64 %i.ais ; 2 uses
  %i.aww = getelementptr inbounds nuw [4 x i8], ptr %i.avz, i64 %i.ais ; 2 uses
  %i.awx = getelementptr inbounds nuw [4 x i8], ptr %i.awa, i64 %i.ais ; 2 uses
  %i.awy = getelementptr inbounds nuw [4 x i8], ptr %i.awb, i64 %i.ais ; 2 uses
  %i.awz = getelementptr inbounds nuw [4 x i8], ptr %i.awc, i64 %i.ais ; 2 uses
  %i.axa = getelementptr inbounds nuw i8, ptr %.48931165.us.i, i64 32
  %i.axb = load float, ptr %i.aws, align 4, !tbaa !56
  store float %i.axb, ptr %i.axa, align 4, !tbaa !56
  %i.axc = load float, ptr %i.awt, align 4, !tbaa !56
  %i.axd = getelementptr inbounds nuw i8, ptr %.48931165.us.i, i64 36
  store float %i.axc, ptr %i.axd, align 4, !tbaa !56
  %i.axe = load float, ptr %i.awu, align 4, !tbaa !56
  %i.axf = getelementptr inbounds nuw i8, ptr %.48931165.us.i, i64 40
  store float %i.axe, ptr %i.axf, align 4, !tbaa !56
  %i.axg = load float, ptr %i.awv, align 4, !tbaa !56
  %i.axh = getelementptr inbounds nuw i8, ptr %.48931165.us.i, i64 44
  store float %i.axg, ptr %i.axh, align 4, !tbaa !56
  %i.axi = load float, ptr %i.aww, align 4, !tbaa !56
  %i.axj = getelementptr inbounds nuw i8, ptr %.48931165.us.i, i64 48
  store float %i.axi, ptr %i.axj, align 4, !tbaa !56
  %i.axk = load float, ptr %i.awx, align 4, !tbaa !56
  %i.axl = getelementptr inbounds nuw i8, ptr %.48931165.us.i, i64 52
  store float %i.axk, ptr %i.axl, align 4, !tbaa !56
  %i.axm = load float, ptr %i.awy, align 4, !tbaa !56
  %i.axn = getelementptr inbounds nuw i8, ptr %.48931165.us.i, i64 56
  store float %i.axm, ptr %i.axn, align 4, !tbaa !56
  %i.axo = load float, ptr %i.awz, align 4, !tbaa !56
  %i.axp = getelementptr inbounds nuw i8, ptr %.48931165.us.i, i64 60
  store float %i.axo, ptr %i.axp, align 4, !tbaa !56
  %i.axq = getelementptr inbounds nuw [4 x i8], ptr %i.aws, i64 %i.ais ; 2 uses
  %i.axr = getelementptr inbounds nuw [4 x i8], ptr %i.awt, i64 %i.ais ; 2 uses
  %i.axs = getelementptr inbounds nuw [4 x i8], ptr %i.awu, i64 %i.ais ; 2 uses
  %i.axt = getelementptr inbounds nuw [4 x i8], ptr %i.awv, i64 %i.ais ; 2 uses
  %i.axu = getelementptr inbounds nuw [4 x i8], ptr %i.aww, i64 %i.ais ; 2 uses
  %i.axv = getelementptr inbounds nuw [4 x i8], ptr %i.awx, i64 %i.ais ; 2 uses
  %i.axw = getelementptr inbounds nuw [4 x i8], ptr %i.awy, i64 %i.ais ; 2 uses
  %i.axx = getelementptr inbounds nuw [4 x i8], ptr %i.awz, i64 %i.ais ; 2 uses
  %i.axy = getelementptr inbounds nuw i8, ptr %.48931165.us.i, i64 64
  %i.axz = load float, ptr %i.axq, align 4, !tbaa !56
  store float %i.axz, ptr %i.axy, align 4, !tbaa !56
  %i.aya = load float, ptr %i.axr, align 4, !tbaa !56
  %i.ayb = getelementptr inbounds nuw i8, ptr %.48931165.us.i, i64 68
  store float %i.aya, ptr %i.ayb, align 4, !tbaa !56
  %i.ayc = load float, ptr %i.axs, align 4, !tbaa !56
  %i.ayd = getelementptr inbounds nuw i8, ptr %.48931165.us.i, i64 72
  store float %i.ayc, ptr %i.ayd, align 4, !tbaa !56
  %i.aye = load float, ptr %i.axt, align 4, !tbaa !56
  %i.ayf = getelementptr inbounds nuw i8, ptr %.48931165.us.i, i64 76
  store float %i.aye, ptr %i.ayf, align 4, !tbaa !56
  %i.ayg = load float, ptr %i.axu, align 4, !tbaa !56
  %i.ayh = getelementptr inbounds nuw i8, ptr %.48931165.us.i, i64 80
  store float %i.ayg, ptr %i.ayh, align 4, !tbaa !56
  %i.ayi = load float, ptr %i.axv, align 4, !tbaa !56
  %i.ayj = getelementptr inbounds nuw i8, ptr %.48931165.us.i, i64 84
  store float %i.ayi, ptr %i.ayj, align 4, !tbaa !56
  %i.ayk = load float, ptr %i.axw, align 4, !tbaa !56
  %i.ayl = getelementptr inbounds nuw i8, ptr %.48931165.us.i, i64 88
  store float %i.ayk, ptr %i.ayl, align 4, !tbaa !56
  %i.aym = load float, ptr %i.axx, align 4, !tbaa !56
  %i.ayn = getelementptr inbounds nuw i8, ptr %.48931165.us.i, i64 92
  store float %i.aym, ptr %i.ayn, align 4, !tbaa !56
  %i.ayo = getelementptr inbounds nuw [4 x i8], ptr %i.axq, i64 %i.ais
  %i.ayp = getelementptr inbounds nuw [4 x i8], ptr %i.axr, i64 %i.ais
  %i.ayq = getelementptr inbounds nuw [4 x i8], ptr %i.axs, i64 %i.ais
  %i.ayr = getelementptr inbounds nuw [4 x i8], ptr %i.axt, i64 %i.ais
  %i.ays = getelementptr inbounds nuw [4 x i8], ptr %i.axu, i64 %i.ais
  %i.ayt = getelementptr inbounds nuw [4 x i8], ptr %i.axv, i64 %i.ais
  %i.ayu = getelementptr inbounds nuw [4 x i8], ptr %i.axw, i64 %i.ais
  %i.ayv = getelementptr inbounds nuw [4 x i8], ptr %i.axx, i64 %i.ais
  %i.ayw = getelementptr inbounds nuw i8, ptr %.48931165.us.i, i64 96
  %i.ayx = load float, ptr %i.ayo, align 4, !tbaa !56
  store float %i.ayx, ptr %i.ayw, align 4, !tbaa !56
  %i.ayy = load float, ptr %i.ayp, align 4, !tbaa !56
  %i.ayz = getelementptr inbounds nuw i8, ptr %.48931165.us.i, i64 100
  store float %i.ayy, ptr %i.ayz, align 4, !tbaa !56
  %i.aza = load float, ptr %i.ayq, align 4, !tbaa !56
  %i.azb = getelementptr inbounds nuw i8, ptr %.48931165.us.i, i64 104
  store float %i.aza, ptr %i.azb, align 4, !tbaa !56
  %i.azc = load float, ptr %i.ayr, align 4, !tbaa !56
  %i.azd = getelementptr inbounds nuw i8, ptr %.48931165.us.i, i64 108
  store float %i.azc, ptr %i.azd, align 4, !tbaa !56
  %i.aze = load float, ptr %i.ays, align 4, !tbaa !56
  %i.azf = getelementptr inbounds nuw i8, ptr %.48931165.us.i, i64 112
  store float %i.aze, ptr %i.azf, align 4, !tbaa !56
  %i.azg = load float, ptr %i.ayt, align 4, !tbaa !56
  %i.azh = getelementptr inbounds nuw i8, ptr %.48931165.us.i, i64 116
  store float %i.azg, ptr %i.azh, align 4, !tbaa !56
  %i.azi = load float, ptr %i.ayu, align 4, !tbaa !56
  %i.azj = getelementptr inbounds nuw i8, ptr %.48931165.us.i, i64 120
  store float %i.azi, ptr %i.azj, align 4, !tbaa !56
  %i.azk = load float, ptr %i.ayv, align 4, !tbaa !56
  %i.azl = getelementptr inbounds nuw i8, ptr %.48931165.us.i, i64 124
  store float %i.azk, ptr %i.azl, align 4, !tbaa !56
  %i.azm = getelementptr inbounds nuw i8, ptr %.48931165.us.i, i64 128 ; 3 uses
  %indvars.iv.next1662.i = add nuw nsw i64 %indvars.iv1661.i, 1 ; 2 uses
  %exitcond1665.not.i = icmp eq i64 %indvars.iv.next1662.i, %wide.trip.count.i
  br i1 %exitcond1665.not.i, label %._crit_edge.us1186.i, label %bb.jz, !llvm.loop !136

._crit_edge.us1186.i:                             ; preds = %bb.jz
  %i.azn = getelementptr inbounds nuw [4 x i8], ptr %.18401175.us.i, i64 %i.aiw ; 2 uses
  %i.azo = getelementptr inbounds nuw [4 x i8], ptr %.18481174.us.i, i64 %i.aiw ; 2 uses
  %i.azp = getelementptr inbounds nuw [4 x i8], ptr %.18511173.us.i, i64 %i.aiw ; 2 uses
  %i.azq = getelementptr inbounds nuw [4 x i8], ptr %.18551172.us.i, i64 %i.aiw ; 2 uses
  %i.azr = getelementptr inbounds nuw [4 x i8], ptr %.18581171.us.i, i64 %i.aiw ; 2 uses
  %i.azs = getelementptr inbounds nuw [4 x i8], ptr %.18811170.us.i, i64 %i.aiw ; 2 uses
  %i.azt = getelementptr inbounds nuw [4 x i8], ptr %.18841169.us.i, i64 %i.aiw ; 2 uses
  %i.azu = getelementptr inbounds nuw [4 x i8], ptr %.18871168.us.i, i64 %i.aiw ; 2 uses
  %i.azv = add nuw nsw i32 %.19471166.us.i, 4     ; 3 uses
  %i.azw = or disjoint i32 %i.azv, 3
  %i.azx = icmp slt i32 %i.azw, %i.cj
  br i1 %i.azx, label %.preheader1108.us.i, label %.preheader1111.i, !llvm.loop !137

.preheader1111.i:                                 ; preds = %._crit_edge.us1186.i, %.preheader1108.preheader.i, %.preheader1112.thread.i, %.preheader1112.i
  %.1947.lcssa.i = phi i32 [ %.0946.lcssa.i, %.preheader1112.i ], [ %i.ajn, %.preheader1112.thread.i ], [ %i.avu, %.preheader1108.preheader.i ], [ %i.azv, %._crit_edge.us1186.i ] ; 3 uses
  %.3892.lcssa.i = phi ptr [ %.0889.lcssa.i, %.preheader1112.i ], [ %i.anq, %.preheader1112.thread.i ], [ %.0889.lcssa18501877.i, %.preheader1108.preheader.i ], [ %i.azm, %._crit_edge.us1186.i ] ; 2 uses
  %.1887.lcssa.i = phi ptr [ %.0886.lcssa.i, %.preheader1112.i ], [ %scevgep1648.i, %.preheader1112.thread.i ], [ %scevgep1659.i, %.preheader1108.preheader.i ], [ %i.azu, %._crit_edge.us1186.i ] ; 2 uses
  %.1884.lcssa.i = phi ptr [ %.0883.lcssa.i, %.preheader1112.i ], [ %scevgep1644.i, %.preheader1112.thread.i ], [ %scevgep1658.i, %.preheader1108.preheader.i ], [ %i.azt, %._crit_edge.us1186.i ] ; 2 uses
  %.1881.lcssa.i = phi ptr [ %.0880.lcssa.i, %.preheader1112.i ], [ %scevgep1640.i, %.preheader1112.thread.i ], [ %scevgep1657.i, %.preheader1108.preheader.i ], [ %i.azs, %._crit_edge.us1186.i ] ; 2 uses
  %.1858.lcssa.i = phi ptr [ %.0857.lcssa.i, %.preheader1112.i ], [ %scevgep1636.i, %.preheader1112.thread.i ], [ %scevgep1656.i, %.preheader1108.preheader.i ], [ %i.azr, %._crit_edge.us1186.i ] ; 2 uses
  %.1855.lcssa.i = phi ptr [ %.0854.lcssa.i, %.preheader1112.i ], [ %scevgep1632.i, %.preheader1112.thread.i ], [ %scevgep1655.i, %.preheader1108.preheader.i ], [ %i.azq, %._crit_edge.us1186.i ] ; 2 uses
  %.1851.lcssa.i = phi ptr [ %.0850.lcssa.i, %.preheader1112.i ], [ %scevgep1628.i, %.preheader1112.thread.i ], [ %scevgep1654.i, %.preheader1108.preheader.i ], [ %i.azp, %._crit_edge.us1186.i ] ; 2 uses
  %.1848.lcssa.i = phi ptr [ %.0847.lcssa.i, %.preheader1112.i ], [ %scevgep1624.i, %.preheader1112.thread.i ], [ %scevgep1653.i, %.preheader1108.preheader.i ], [ %i.azo, %._crit_edge.us1186.i ] ; 2 uses
  %.1840.lcssa.i = phi ptr [ %.0839.lcssa.i, %.preheader1112.i ], [ %scevgep1620.i, %.preheader1112.thread.i ], [ %scevgep1652.i, %.preheader1108.preheader.i ], [ %i.azn, %._crit_edge.us1186.i ] ; 2 uses
  %i.azy = or disjoint i32 %.1947.lcssa.i, 1
  %i.azz = icmp slt i32 %i.azy, %i.cj
  br i1 %i.azz, label %.preheader1107.lr.ph.i, label %.preheader1110.i

.preheader1107.lr.ph.i:                           ; preds = %.preheader1111.i
  br i1 %i.air, label %.preheader1107.us.i, label %._crit_edge1246.split.i

.preheader1107.us.i:                              ; preds = %.preheader1107.lr.ph.i, %._crit_edge.us1230.i
  %.28411219.us.i = phi ptr [ %i.bbw, %._crit_edge.us1230.i ], [ %.1840.lcssa.i, %.preheader1107.lr.ph.i ] ; 2 uses
  %.28491218.us.i = phi ptr [ %i.bbx, %._crit_edge.us1230.i ], [ %.1848.lcssa.i, %.preheader1107.lr.ph.i ] ; 2 uses
  %.28521217.us.i = phi ptr [ %i.bby, %._crit_edge.us1230.i ], [ %.1851.lcssa.i, %.preheader1107.lr.ph.i ] ; 2 uses
  %.28561216.us.i = phi ptr [ %i.bbz, %._crit_edge.us1230.i ], [ %.1855.lcssa.i, %.preheader1107.lr.ph.i ] ; 2 uses
  %.28591215.us.i = phi ptr [ %i.bca, %._crit_edge.us1230.i ], [ %.1858.lcssa.i, %.preheader1107.lr.ph.i ] ; 2 uses
  %.28821214.us.i = phi ptr [ %i.bcb, %._crit_edge.us1230.i ], [ %.1881.lcssa.i, %.preheader1107.lr.ph.i ] ; 2 uses
  %.28851213.us.i = phi ptr [ %i.bcc, %._crit_edge.us1230.i ], [ %.1884.lcssa.i, %.preheader1107.lr.ph.i ] ; 2 uses
  %.28881212.us.i = phi ptr [ %i.bcd, %._crit_edge.us1230.i ], [ %.1887.lcssa.i, %.preheader1107.lr.ph.i ] ; 2 uses
  %.68951211.us.i = phi ptr [ %i.bbv, %._crit_edge.us1230.i ], [ %.3892.lcssa.i, %.preheader1107.lr.ph.i ]
  %.29481210.us.i = phi i32 [ %i.bce, %._crit_edge.us1230.i ], [ %.1947.lcssa.i, %.preheader1107.lr.ph.i ]
  br label %bb.ka

bb.ka:                                            ; preds = %bb.ka, %.preheader1107.us.i
  %indvars.iv1674.i = phi i64 [ 0, %.preheader1107.us.i ], [ %indvars.iv.next1675.i, %bb.ka ] ; 9 uses
  %.78961209.us.i = phi ptr [ %.68951211.us.i, %.preheader1107.us.i ], [ %i.bbv, %bb.ka ] ; 17 uses
  %i.baa = getelementptr inbounds nuw [4 x i8], ptr %.28411219.us.i, i64 %indvars.iv1674.i ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnn19Convolution_x86_fma15create_pipelineERKNS_6OptionE:bb.a
  %i.bii = getelementptr inbounds [4 x i8], ptr %i.ajy, i64 %i.bih ; 2 uses
  %i.bij = lshr i32 %i.bhu, 3
  %i.bik = lshr i32 %i.bhu, 2
  %i.bil = and i32 %i.bik, 1
  %i.bim = add nuw nsw i32 %i.bil, %i.bij
  %i.bin = zext nneg i32 %i.bim to i64
  %.reass1343.i = mul i64 %factor.op.mul1342.i, %i.bin
  %i.bio = getelementptr inbounds nuw i8, ptr %i.aka, i64 %.reass1343.i ; 4 uses
  br i1 %i.akf, label %.preheader1101.lr.ph.i, label %.preheader1104.i

.preheader1101.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1006.i
  br i1 %i.akg, label %.preheader1101.us.i, label %.preheader1104.thread.i

.preheader1101.us.i:                              ; preds = %.preheader1101.lr.ph.i, %._crit_edge1257.us.i
  %.09191264.us.i = phi i32 [ %i.bml, %._crit_edge1257.us.i ], [ 0, %.preheader1101.lr.ph.i ]
  %.09231263.us.i = phi ptr [ %i.bmg, %._crit_edge1257.us.i ], [ %i.bio, %.preheader1101.lr.ph.i ]
  %.09341262.us.i = phi ptr [ %i.bmk, %._crit_edge1257.us.i ], [ %i.bii, %.preheader1101.lr.ph.i ] ; 2 uses
  %.09371261.us.i = phi ptr [ %i.bmj, %._crit_edge1257.us.i ], [ %i.bif, %.preheader1101.lr.ph.i ] ; 2 uses
  %.09401260.us.i = phi ptr [ %i.bmi, %._crit_edge1257.us.i ], [ %i.bib, %.preheader1101.lr.ph.i ] ; 2 uses
  %.09431259.us.i = phi ptr [ %i.bmh, %._crit_edge1257.us.i ], [ %i.bhx, %.preheader1101.lr.ph.i ] ; 2 uses
  br label %bb.kb

bb.kb:                                            ; preds = %bb.kb, %.preheader1101.us.i
  %indvars.iv1705.i = phi i64 [ 0, %.preheader1101.us.i ], [ %indvars.iv.next1706.i, %bb.kb ] ; 5 uses
  %.19241255.us.i = phi ptr [ %.09231263.us.i, %.preheader1101.us.i ], [ %i.bmg, %bb.kb ] ; 33 uses
  %i.bip = getelementptr inbounds nuw [4 x i8], ptr %.09431259.us.i, i64 %indvars.iv1705.i ; 2 uses
  %i.biq = getelementptr inbounds nuw [4 x i8], ptr %.09401260.us.i, i64 %indvars.iv1705.i ; 2 uses
  %i.bir = getelementptr inbounds nuw [4 x i8], ptr %.09371261.us.i, i64 %indvars.iv1705.i ; 2 uses
  %i.bis = getelementptr inbounds nuw [4 x i8], ptr %.09341262.us.i, i64 %indvars.iv1705.i ; 2 uses
  %i.bit = load float, ptr %i.bip, align 4, !tbaa !56
  store float %i.bit, ptr %.19241255.us.i, align 4, !tbaa !56
  %i.biu = load float, ptr %i.biq, align 4, !tbaa !56
  %i.biv = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 4
  store float %i.biu, ptr %i.biv, align 4, !tbaa !56
  %i.biw = load float, ptr %i.bir, align 4, !tbaa !56
  %i.bix = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 8
  store float %i.biw, ptr %i.bix, align 4, !tbaa !56
  %i.biy = load float, ptr %i.bis, align 4, !tbaa !56
  %i.biz = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 12
  store float %i.biy, ptr %i.biz, align 4, !tbaa !56
  %i.bja = getelementptr inbounds nuw [4 x i8], ptr %i.bip, i64 %i.akh ; 2 uses
  %i.bjb = getelementptr inbounds nuw [4 x i8], ptr %i.biq, i64 %i.akh ; 2 uses
  %i.bjc = getelementptr inbounds nuw [4 x i8], ptr %i.bir, i64 %i.akh ; 2 uses
  %i.bjd = getelementptr inbounds nuw [4 x i8], ptr %i.bis, i64 %i.akh ; 2 uses
  %i.bje = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 16
  %i.bjf = load float, ptr %i.bja, align 4, !tbaa !56
  store float %i.bjf, ptr %i.bje, align 4, !tbaa !56
  %i.bjg = load float, ptr %i.bjb, align 4, !tbaa !56
  %i.bjh = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 20
  store float %i.bjg, ptr %i.bjh, align 4, !tbaa !56
  %i.bji = load float, ptr %i.bjc, align 4, !tbaa !56
  %i.bjj = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 24
  store float %i.bji, ptr %i.bjj, align 4, !tbaa !56
  %i.bjk = load float, ptr %i.bjd, align 4, !tbaa !56
  %i.bjl = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 28
  store float %i.bjk, ptr %i.bjl, align 4, !tbaa !56
  %i.bjm = getelementptr inbounds nuw [4 x i8], ptr %i.bja, i64 %i.akh ; 2 uses
  %i.bjn = getelementptr inbounds nuw [4 x i8], ptr %i.bjb, i64 %i.akh ; 2 uses
  %i.bjo = getelementptr inbounds nuw [4 x i8], ptr %i.bjc, i64 %i.akh ; 2 uses
  %i.bjp = getelementptr inbounds nuw [4 x i8], ptr %i.bjd, i64 %i.akh ; 2 uses
  %i.bjq = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 32
  %i.bjr = load float, ptr %i.bjm, align 4, !tbaa !56
  store float %i.bjr, ptr %i.bjq, align 4, !tbaa !56
  %i.bjs = load float, ptr %i.bjn, align 4, !tbaa !56
  %i.bjt = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 36
  store float %i.bjs, ptr %i.bjt, align 4, !tbaa !56
  %i.bju = load float, ptr %i.bjo, align 4, !tbaa !56
  %i.bjv = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 40
  store float %i.bju, ptr %i.bjv, align 4, !tbaa !56
  %i.bjw = load float, ptr %i.bjp, align 4, !tbaa !56
  %i.bjx = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 44
  store float %i.bjw, ptr %i.bjx, align 4, !tbaa !56
  %i.bjy = getelementptr inbounds nuw [4 x i8], ptr %i.bjm, i64 %i.akh ; 2 uses
  %i.bjz = getelementptr inbounds nuw [4 x i8], ptr %i.bjn, i64 %i.akh ; 2 uses
  %i.bka = getelementptr inbounds nuw [4 x i8], ptr %i.bjo, i64 %i.akh ; 2 uses
  %i.bkb = getelementptr inbounds nuw [4 x i8], ptr %i.bjp, i64 %i.akh ; 2 uses
  %i.bkc = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 48
  %i.bkd = load float, ptr %i.bjy, align 4, !tbaa !56
  store float %i.bkd, ptr %i.bkc, align 4, !tbaa !56
  %i.bke = load float, ptr %i.bjz, align 4, !tbaa !56
  %i.bkf = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 52
  store float %i.bke, ptr %i.bkf, align 4, !tbaa !56
  %i.bkg = load float, ptr %i.bka, align 4, !tbaa !56
  %i.bkh = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 56
  store float %i.bkg, ptr %i.bkh, align 4, !tbaa !56
  %i.bki = load float, ptr %i.bkb, align 4, !tbaa !56
  %i.bkj = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 60
  store float %i.bki, ptr %i.bkj, align 4, !tbaa !56
  %i.bkk = getelementptr inbounds nuw [4 x i8], ptr %i.bjy, i64 %i.akh ; 2 uses
  %i.bkl = getelementptr inbounds nuw [4 x i8], ptr %i.bjz, i64 %i.akh ; 2 uses
  %i.bkm = getelementptr inbounds nuw [4 x i8], ptr %i.bka, i64 %i.akh ; 2 uses
  %i.bkn = getelementptr inbounds nuw [4 x i8], ptr %i.bkb, i64 %i.akh ; 2 uses
  %i.bko = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 64
  %i.bkp = load float, ptr %i.bkk, align 4, !tbaa !56
  store float %i.bkp, ptr %i.bko, align 4, !tbaa !56
  %i.bkq = load float, ptr %i.bkl, align 4, !tbaa !56
  %i.bkr = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 68
  store float %i.bkq, ptr %i.bkr, align 4, !tbaa !56
  %i.bks = load float, ptr %i.bkm, align 4, !tbaa !56
  %i.bkt = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 72
  store float %i.bks, ptr %i.bkt, align 4, !tbaa !56
  %i.bku = load float, ptr %i.bkn, align 4, !tbaa !56
  %i.bkv = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 76
  store float %i.bku, ptr %i.bkv, align 4, !tbaa !56
  %i.bkw = getelementptr inbounds nuw [4 x i8], ptr %i.bkk, i64 %i.akh ; 2 uses
  %i.bkx = getelementptr inbounds nuw [4 x i8], ptr %i.bkl, i64 %i.akh ; 2 uses
  %i.bky = getelementptr inbounds nuw [4 x i8], ptr %i.bkm, i64 %i.akh ; 2 uses
  %i.bkz = getelementptr inbounds nuw [4 x i8], ptr %i.bkn, i64 %i.akh ; 2 uses
  %i.bla = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 80
  %i.blb = load float, ptr %i.bkw, align 4, !tbaa !56
  store float %i.blb, ptr %i.bla, align 4, !tbaa !56
  %i.blc = load float, ptr %i.bkx, align 4, !tbaa !56
  %i.bld = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 84
  store float %i.blc, ptr %i.bld, align 4, !tbaa !56
  %i.ble = load float, ptr %i.bky, align 4, !tbaa !56
  %i.blf = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 88
  store float %i.ble, ptr %i.blf, align 4, !tbaa !56
  %i.blg = load float, ptr %i.bkz, align 4, !tbaa !56
  %i.blh = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 92
  store float %i.blg, ptr %i.blh, align 4, !tbaa !56
  %i.bli = getelementptr inbounds nuw [4 x i8], ptr %i.bkw, i64 %i.akh ; 2 uses
  %i.blj = getelementptr inbounds nuw [4 x i8], ptr %i.bkx, i64 %i.akh ; 2 uses
  %i.blk = getelementptr inbounds nuw [4 x i8], ptr %i.bky, i64 %i.akh ; 2 uses
  %i.bll = getelementptr inbounds nuw [4 x i8], ptr %i.bkz, i64 %i.akh ; 2 uses
  %i.blm = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 96
  %i.bln = load float, ptr %i.bli, align 4, !tbaa !56
  store float %i.bln, ptr %i.blm, align 4, !tbaa !56
  %i.blo = load float, ptr %i.blj, align 4, !tbaa !56
  %i.blp = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 100
  store float %i.blo, ptr %i.blp, align 4, !tbaa !56
  %i.blq = load float, ptr %i.blk, align 4, !tbaa !56
  %i.blr = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 104
  store float %i.blq, ptr %i.blr, align 4, !tbaa !56
  %i.bls = load float, ptr %i.bll, align 4, !tbaa !56
  %i.blt = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 108
  store float %i.bls, ptr %i.blt, align 4, !tbaa !56
  %i.blu = getelementptr inbounds nuw [4 x i8], ptr %i.bli, i64 %i.akh
  %i.blv = getelementptr inbounds nuw [4 x i8], ptr %i.blj, i64 %i.akh
  %i.blw = getelementptr inbounds nuw [4 x i8], ptr %i.blk, i64 %i.akh
  %i.blx = getelementptr inbounds nuw [4 x i8], ptr %i.bll, i64 %i.akh
  %i.bly = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 112
  %i.blz = load float, ptr %i.blu, align 4, !tbaa !56
  store float %i.blz, ptr %i.bly, align 4, !tbaa !56
  %i.bma = load float, ptr %i.blv, align 4, !tbaa !56
  %i.bmb = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 116
  store float %i.bma, ptr %i.bmb, align 4, !tbaa !56
  %i.bmc = load float, ptr %i.blw, align 4, !tbaa !56
  %i.bmd = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 120
  store float %i.bmc, ptr %i.bmd, align 4, !tbaa !56
  %i.bme = load float, ptr %i.blx, align 4, !tbaa !56
  %i.bmf = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 124
  store float %i.bme, ptr %i.bmf, align 4, !tbaa !56
  %i.bmg = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 128 ; 3 uses
  %indvars.iv.next1706.i = add nuw nsw i64 %indvars.iv1705.i, 1 ; 2 uses
  %exitcond1709.not.i = icmp eq i64 %indvars.iv.next1706.i, %wide.trip.count1708.i
  br i1 %exitcond1709.not.i, label %._crit_edge1257.us.i, label %bb.kb, !llvm.loop !156

._crit_edge1257.us.i:                             ; preds = %bb.kb
  %i.bmh = getelementptr inbounds nuw [4 x i8], ptr %.09431259.us.i, i64 %i.akj ; 2 uses
  %i.bmi = getelementptr inbounds nuw [4 x i8], ptr %.09401260.us.i, i64 %i.akj ; 2 uses
  %i.bmj = getelementptr inbounds nuw [4 x i8], ptr %.09371261.us.i, i64 %i.akj ; 2 uses
  %i.bmk = getelementptr inbounds nuw [4 x i8], ptr %.09341262.us.i, i64 %i.akj ; 2 uses
  %i.bml = add nuw nsw i32 %.09191264.us.i, 8     ; 2 uses
  %i.bmm = or disjoint i32 %i.bml, 7
  %i.bmn = icmp slt i32 %i.bmm, %i.cj
  br i1 %i.bmn, label %.preheader1101.us.i, label %.preheader1104.i, !llvm.loop !157

.preheader1104.i:                                 ; preds = %._crit_edge1257.us.i, %_ZN4ncnn3MatD2Ev.exit1006.i
  %.0943.lcssa.i = phi ptr [ %i.bhx, %_ZN4ncnn3MatD2Ev.exit1006.i ], [ %i.bmh, %._crit_edge1257.us.i ] ; 3 uses
  %.0940.lcssa.i = phi ptr [ %i.bib, %_ZN4ncnn3MatD2Ev.exit1006.i ], [ %i.bmi, %._crit_edge1257.us.i ] ; 3 uses
  %.0937.lcssa.i = phi ptr [ %i.bif, %_ZN4ncnn3MatD2Ev.exit1006.i ], [ %i.bmj, %._crit_edge1257.us.i ] ; 3 uses
  %.0934.lcssa.i = phi ptr [ %i.bii, %_ZN4ncnn3MatD2Ev.exit1006.i ], [ %i.bmk, %._crit_edge1257.us.i ] ; 3 uses
  %.0923.lcssa.i = phi ptr [ %i.bio, %_ZN4ncnn3MatD2Ev.exit1006.i ], [ %i.bmg, %._crit_edge1257.us.i ] ; 3 uses
  %.0919.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1006.i ], [ %i.alc, %._crit_edge1257.us.i ] ; 4 uses
  %i.bmo = or disjoint i32 %.0919.lcssa.i, 3
  %i.bmp = icmp slt i32 %i.bmo, %i.cj
  br i1 %i.bmp, label %.preheader1100.lr.ph.i, label %.preheader1103.i

.preheader1104.thread.i:                          ; preds = %.preheader1101.lr.ph.i
  br i1 %i.ali, label %.preheader1100.preheader.i, label %.preheader1103.i

.preheader1100.lr.ph.i:                           ; preds = %.preheader1104.i
  br i1 %i.akg, label %.preheader1100.us.i, label %.preheader1100.preheader.i

.preheader1100.preheader.i:                       ; preds = %.preheader1100.lr.ph.i, %.preheader1104.thread.i
  %.0943.lcssa18961913.i = phi ptr [ %.0943.lcssa.i, %.preheader1100.lr.ph.i ], [ %scevgep1691.i, %.preheader1104.thread.i ]
  %.0940.lcssa18971912.i = phi ptr [ %.0940.lcssa.i, %.preheader1100.lr.ph.i ], [ %scevgep1695.i, %.preheader1104.thread.i ]
  %.0937.lcssa18981911.i = phi ptr [ %.0937.lcssa.i, %.preheader1100.lr.ph.i ], [ %scevgep1699.i, %.preheader1104.thread.i ]
  %.0934.lcssa18991910.i = phi ptr [ %.0934.lcssa.i, %.preheader1100.lr.ph.i ], [ %scevgep1703.i, %.preheader1104.thread.i ]
  %.0923.lcssa19001909.i = phi ptr [ %.0923.lcssa.i, %.preheader1100.lr.ph.i ], [ %i.bio, %.preheader1104.thread.i ]
  %.0919.lcssa19011908.i = phi i32 [ %.0919.lcssa.i, %.preheader1100.lr.ph.i ], [ %i.alc, %.preheader1104.thread.i ] ; 2 uses
  %i.bmq = sub i32 %i.ald, %.0919.lcssa19011908.i
  %i.bmr = and i32 %i.bmq, -4                     ; 2 uses
  %i.bms = zext i32 %i.bmr to i64
  %i.bmt = add nuw nsw i64 %i.bms, 4
  %i.bmu = mul nsw i64 %i.bmt, %i.akl             ; 4 uses
  %scevgep1710.i = getelementptr i8, ptr %.0943.lcssa18961913.i, i64 %i.bmu
  %scevgep1711.i = getelementptr i8, ptr %.0940.lcssa18971912.i, i64 %i.bmu
  %scevgep1712.i = getelementptr i8, ptr %.0937.lcssa18981911.i, i64 %i.bmu
  %scevgep1713.i = getelementptr i8, ptr %.0934.lcssa18991910.i, i64 %i.bmu
  %i.bmv = add nsw i32 %.0919.lcssa19011908.i, 4
  %i.bmw = add i32 %i.bmv, %i.bmr
  br label %.preheader1103.i

.preheader1100.us.i:                              ; preds = %.preheader1100.lr.ph.i, %._crit_edge1285.us.i
  %.19201292.us.i = phi i32 [ %i.box, %._crit_edge1285.us.i ], [ %.0919.lcssa.i, %.preheader1100.lr.ph.i ]
  %.39261291.us.i = phi ptr [ %i.bos, %._crit_edge1285.us.i ], [ %.0923.lcssa.i, %.preheader1100.lr.ph.i ]
  %.19351290.us.i = phi ptr [ %i.bow, %._crit_edge1285.us.i ], [ %.0934.lcssa.i, %.preheader1100.lr.ph.i ] ; 2 uses
  %.19381289.us.i = phi ptr [ %i.bov, %._crit_edge1285.us.i ], [ %.0937.lcssa.i, %.preheader1100.lr.ph.i ] ; 2 uses
  %.19411288.us.i = phi ptr [ %i.bou, %._crit_edge1285.us.i ], [ %.0940.lcssa.i, %.preheader1100.lr.ph.i ] ; 2 uses
  %.19441287.us.i = phi ptr [ %i.bot, %._crit_edge1285.us.i ], [ %.0943.lcssa.i, %.preheader1100.lr.ph.i ] ; 2 uses
  br label %bb.kc

bb.kc:                                            ; preds = %bb.kc, %.preheader1100.us.i
  %indvars.iv1715.i = phi i64 [ 0, %.preheader1100.us.i ], [ %indvars.iv.next1716.i, %bb.kc ] ; 5 uses
  %.49271283.us.i = phi ptr [ %.39261291.us.i, %.preheader1100.us.i ], [ %i.bos, %bb.kc ] ; 17 uses
  %i.bmx = getelementptr inbounds nuw [4 x i8], ptr %.19441287.us.i, i64 %indvars.iv1715.i ; 2 uses
  %i.bmy = getelementptr inbounds nuw [4 x i8], ptr %.19411288.us.i, i64 %indvars.iv1715.i ; 2 uses
  %i.bmz = getelementptr inbounds nuw [4 x i8], ptr %.19381289.us.i, i64 %indvars.iv1715.i ; 2 uses
  %i.bna = getelementptr inbounds nuw [4 x i8], ptr %.19351290.us.i, i64 %indvars.iv1715.i ; 2 uses
  %i.bnb = load float, ptr %i.bmx, align 4, !tbaa !56
  store float %i.bnb, ptr %.49271283.us.i, align 4, !tbaa !56
  %i.bnc = load float, ptr %i.bmy, align 4, !tbaa !56
  %i.bnd = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 4
  store float %i.bnc, ptr %i.bnd, align 4, !tbaa !56
  %i.bne = load float, ptr %i.bmz, align 4, !tbaa !56
  %i.bnf = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 8
  store float %i.bne, ptr %i.bnf, align 4, !tbaa !56
  %i.bng = load float, ptr %i.bna, align 4, !tbaa !56
  %i.bnh = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 12
  store float %i.bng, ptr %i.bnh, align 4, !tbaa !56
  %i.bni = getelementptr inbounds nuw [4 x i8], ptr %i.bmx, i64 %i.akh ; 2 uses
  %i.bnj = getelementptr inbounds nuw [4 x i8], ptr %i.bmy, i64 %i.akh ; 2 uses
  %i.bnk = getelementptr inbounds nuw [4 x i8], ptr %i.bmz, i64 %i.akh ; 2 uses
  %i.bnl = getelementptr inbounds nuw [4 x i8], ptr %i.bna, i64 %i.akh ; 2 uses
  %i.bnm = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 16
  %i.bnn = load float, ptr %i.bni, align 4, !tbaa !56
  store float %i.bnn, ptr %i.bnm, align 4, !tbaa !56
  %i.bno = load float, ptr %i.bnj, align 4, !tbaa !56
  %i.bnp = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 20
  store float %i.bno, ptr %i.bnp, align 4, !tbaa !56
  %i.bnq = load float, ptr %i.bnk, align 4, !tbaa !56
  %i.bnr = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 24
  store float %i.bnq, ptr %i.bnr, align 4, !tbaa !56
  %i.bns = load float, ptr %i.bnl, align 4, !tbaa !56
  %i.bnt = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 28
  store float %i.bns, ptr %i.bnt, align 4, !tbaa !56
  %i.bnu = getelementptr inbounds nuw [4 x i8], ptr %i.bni, i64 %i.akh ; 2 uses
  %i.bnv = getelementptr inbounds nuw [4 x i8], ptr %i.bnj, i64 %i.akh ; 2 uses
  %i.bnw = getelementptr inbounds nuw [4 x i8], ptr %i.bnk, i64 %i.akh ; 2 uses
  %i.bnx = getelementptr inbounds nuw [4 x i8], ptr %i.bnl, i64 %i.akh ; 2 uses
  %i.bny = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 32
  %i.bnz = load float, ptr %i.bnu, align 4, !tbaa !56
  store float %i.bnz, ptr %i.bny, align 4, !tbaa !56
  %i.boa = load float, ptr %i.bnv, align 4, !tbaa !56
  %i.bob = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 36
  store float %i.boa, ptr %i.bob, align 4, !tbaa !56
  %i.boc = load float, ptr %i.bnw, align 4, !tbaa !56
  %i.bod = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 40
  store float %i.boc, ptr %i.bod, align 4, !tbaa !56
  %i.boe = load float, ptr %i.bnx, align 4, !tbaa !56
  %i.bof = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 44
  store float %i.boe, ptr %i.bof, align 4, !tbaa !56
  %i.bog = getelementptr inbounds nuw [4 x i8], ptr %i.bnu, i64 %i.akh
  %i.boh = getelementptr inbounds nuw [4 x i8], ptr %i.bnv, i64 %i.akh
  %i.boi = getelementptr inbounds nuw [4 x i8], ptr %i.bnw, i64 %i.akh
  %i.boj = getelementptr inbounds nuw [4 x i8], ptr %i.bnx, i64 %i.akh
  %i.bok = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 48
  %i.bol = load float, ptr %i.bog, align 4, !tbaa !56
  store float %i.bol, ptr %i.bok, align 4, !tbaa !56
  %i.bom = load float, ptr %i.boh, align 4, !tbaa !56
  %i.bon = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 52
  store float %i.bom, ptr %i.bon, align 4, !tbaa !56
  %i.boo = load float, ptr %i.boi, align 4, !tbaa !56
  %i.bop = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 56
  store float %i.boo, ptr %i.bop, align 4, !tbaa !56
  %i.boq = load float, ptr %i.boj, align 4, !tbaa !56
  %i.bor = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 60
  store float %i.boq, ptr %i.bor, align 4, !tbaa !56
  %i.bos = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 64 ; 3 uses
  %indvars.iv.next1716.i = add nuw nsw i64 %indvars.iv1715.i, 1 ; 2 uses
  %exitcond1719.not.i = icmp eq i64 %indvars.iv.next1716.i, %wide.trip.count1708.i
  br i1 %exitcond1719.not.i, label %._crit_edge1285.us.i, label %bb.kc, !llvm.loop !158

._crit_edge1285.us.i:                             ; preds = %bb.kc
  %i.bot = getelementptr inbounds nuw [4 x i8], ptr %.19441287.us.i, i64 %i.akl ; 2 uses
  %i.bou = getelementptr inbounds nuw [4 x i8], ptr %.19411288.us.i, i64 %i.akl ; 2 uses
  %i.bov = getelementptr inbounds nuw [4 x i8], ptr %.19381289.us.i, i64 %i.akl ; 2 uses
  %i.bow = getelementptr inbounds nuw [4 x i8], ptr %.19351290.us.i, i64 %i.akl ; 2 uses
  %i.box = add nuw nsw i32 %.19201292.us.i, 4     ; 3 uses
  %i.boy = or disjoint i32 %i.box, 3
  %i.boz = icmp slt i32 %i.boy, %i.cj
  br i1 %i.boz, label %.preheader1100.us.i, label %.preheader1103.i, !llvm.loop !159

.preheader1103.i:                                 ; preds = %._crit_edge1285.us.i, %.preheader1100.preheader.i, %.preheader1104.thread.i, %.preheader1104.i
  %.1944.lcssa.i = phi ptr [ %.0943.lcssa.i, %.preheader1104.i ], [ %scevgep1691.i, %.preheader1104.thread.i ], [ %scevgep1710.i, %.preheader1100.preheader.i ], [ %i.bot, %._crit_edge1285.us.i ] ; 6 uses
  %.1941.lcssa.i = phi ptr [ %.0940.lcssa.i, %.preheader1104.i ], [ %scevgep1695.i, %.preheader1104.thread.i ], [ %scevgep1711.i, %.preheader1100.preheader.i ], [ %i.bou, %._crit_edge1285.us.i ] ; 6 uses
  %.1938.lcssa.i = phi ptr [ %.0937.lcssa.i, %.preheader1104.i ], [ %scevgep1699.i, %.preheader1104.thread.i ], [ %scevgep1712.i, %.preheader1100.preheader.i ], [ %i.bov, %._crit_edge1285.us.i ] ; 6 uses
  %.1935.lcssa.i = phi ptr [ %.0934.lcssa.i, %.preheader1104.i ], [ %scevgep1703.i, %.preheader1104.thread.i ], [ %scevgep1713.i, %.preheader1100.preheader.i ], [ %i.bow, %._crit_edge1285.us.i ] ; 6 uses
  %.3926.lcssa.i = phi ptr [ %.0923.lcssa.i, %.preheader1104.i ], [ %i.bio, %.preheader1104.thread.i ], [ %.0923.lcssa19001909.i, %.preheader1100.preheader.i ], [ %i.bos, %._crit_edge1285.us.i ] ; 2 uses
  %.1920.lcssa.i = phi i32 [ %.0919.lcssa.i, %.preheader1104.i ], [ %i.alc, %.preheader1104.thread.i ], [ %i.bmw, %.preheader1100.preheader.i ], [ %i.box, %._crit_edge1285.us.i ] ; 4 uses
  %i.bpa = or disjoint i32 %.1920.lcssa.i, 1
  %i.bpb = icmp slt i32 %i.bpa, %i.cj
  br i1 %i.bpb, label %.preheader1099.lr.ph.i, label %.preheader1102.i

.preheader1099.lr.ph.i:                           ; preds = %.preheader1103.i
  br i1 %i.akg, label %.preheader1099.us.i.preheader, label %._crit_edge1339.split.i

.preheader1099.us.i.preheader:                    ; preds = %.preheader1099.lr.ph.i
  %scevgep779 = getelementptr i8, ptr %.1935.lcssa.i, i64 %i.alm
  %scevgep780 = getelementptr i8, ptr %.1935.lcssa.i, i64 %i.aln
  %i.bpc = sub i32 %i.alp, %.1920.lcssa.i
  %i.bpd = lshr i32 %i.bpc, 1
  %i.bpe = zext nneg i32 %i.bpd to i64
  %i.bpf = mul i64 %i.alo, %i.bpe                 ; 8 uses
  %scevgep781 = getelementptr i8, ptr %scevgep780, i64 %i.bpf
  %scevgep782 = getelementptr i8, ptr %.1938.lcssa.i, i64 %i.alm
  %scevgep783 = getelementptr i8, ptr %.1938.lcssa.i, i64 %i.aln
  %scevgep784 = getelementptr i8, ptr %scevgep783, i64 %i.bpf
  %scevgep785 = getelementptr i8, ptr %.1941.lcssa.i, i64 %i.alm
  %scevgep786 = getelementptr i8, ptr %.1941.lcssa.i, i64 %i.aln
  %scevgep787 = getelementptr i8, ptr %scevgep786, i64 %i.bpf
  %scevgep788 = getelementptr i8, ptr %.1944.lcssa.i, i64 %i.alm
  %scevgep789 = getelementptr i8, ptr %.1944.lcssa.i, i64 %i.aln
  %scevgep790 = getelementptr i8, ptr %scevgep789, i64 %i.bpf
  %scevgep791 = getelementptr i8, ptr %.1935.lcssa.i, i64 %i.alk
  %scevgep792 = getelementptr i8, ptr %scevgep791, i64 %i.bpf
  %scevgep793 = getelementptr i8, ptr %.1938.lcssa.i, i64 %i.alk
  %scevgep794 = getelementptr i8, ptr %scevgep793, i64 %i.bpf
  %scevgep795 = getelementptr i8, ptr %.1941.lcssa.i, i64 %i.alk
  %scevgep796 = getelementptr i8, ptr %scevgep795, i64 %i.bpf
  %scevgep797 = getelementptr i8, ptr %.1944.lcssa.i, i64 %i.alk
  %scevgep798 = getelementptr i8, ptr %scevgep797, i64 %i.bpf
  %i.bpg = insertelement <8 x ptr> poison, ptr %scevgep784, i64 0
  %i.bph = insertelement <8 x ptr> %i.bpg, ptr %scevgep781, i64 1
  %i.bpi = insertelement <8 x ptr> %i.bph, ptr %scevgep787, i64 2
  %i.bpj = insertelement <8 x ptr> %i.bpi, ptr %scevgep790, i64 3
  %i.bpk = insertelement <8 x ptr> %i.bpj, ptr %scevgep792, i64 4
  %i.bpl = insertelement <8 x ptr> %i.bpk, ptr %scevgep794, i64 5
  %i.bpm = insertelement <8 x ptr> %i.bpl, ptr %scevgep796, i64 6
  %i.bpn = insertelement <8 x ptr> %i.bpm, ptr %scevgep798, i64 7
  %i.bpo = insertelement <8 x ptr> poison, ptr %scevgep782, i64 0
  %i.bpp = insertelement <8 x ptr> %i.bpo, ptr %scevgep779, i64 1
  %i.bpq = insertelement <8 x ptr> %i.bpp, ptr %scevgep785, i64 2
  %i.bpr = insertelement <8 x ptr> %i.bpq, ptr %scevgep788, i64 3
  %i.bps = insertelement <8 x ptr> %i.bpr, ptr %.1935.lcssa.i, i64 4
  %i.bpt = insertelement <8 x ptr> %i.bps, ptr %.1938.lcssa.i, i64 5
  %i.bpu = insertelement <8 x ptr> %i.bpt, ptr %.1941.lcssa.i, i64 6
  %i.bpv = insertelement <8 x ptr> %i.bpu, ptr %.1944.lcssa.i, i64 7
  br label %.preheader1099.us.i

.preheader1099.us.i:                              ; preds = %.preheader1099.us.i.preheader, %._crit_edge1313.us.i
  %.29211320.us.i = phi i32 [ %i.bry, %._crit_edge1313.us.i ], [ %.1920.lcssa.i, %.preheader1099.us.i.preheader ]
  %.69291319.us.i = phi ptr [ %.lcssa659, %._crit_edge1313.us.i ], [ %.3926.lcssa.i, %.preheader1099.us.i.preheader ] ; 6 uses
  %.29361318.us.i = phi ptr [ %i.brx, %._crit_edge1313.us.i ], [ %.1935.lcssa.i, %.preheader1099.us.i.preheader ] ; 3 uses
  %.29391317.us.i = phi ptr [ %i.brw, %._crit_edge1313.us.i ], [ %.1938.lcssa.i, %.preheader1099.us.i.preheader ] ; 3 uses
  %.29421316.us.i = phi ptr [ %i.brv, %._crit_edge1313.us.i ], [ %.1941.lcssa.i, %.preheader1099.us.i.preheader ] ; 3 uses
  %.29451315.us.i = phi ptr [ %i.bru, %._crit_edge1313.us.i ], [ %.1944.lcssa.i, %.preheader1099.us.i.preheader ] ; 3 uses
  br i1 %min.iters.check838, label %scalar.ph837.preheader, label %vector.memcheck777

vector.memcheck777:                               ; preds = %.preheader1099.us.i
  %scevgep778 = getelementptr i8, ptr %.69291319.us.i, i64 %i.all
  %i.bpw = insertelement <8 x ptr> poison, ptr %.69291319.us.i, i64 0
  %i.bpx = shufflevector <8 x ptr> %i.bpw, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bpy = icmp ult <8 x ptr> %i.bpx, %i.bpn
  %i.bpz = insertelement <8 x ptr> poison, ptr %scevgep778, i64 0
  %i.bqa = shufflevector <8 x ptr> %i.bpz, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bqb = icmp ult <8 x ptr> %i.bpv, %i.bqa
  %i.bqc = and <8 x i1> %i.bpy, %i.bqb
  %i.bqd = bitcast <8 x i1> %i.bqc to i8
  %i.bqe = icmp ne i8 %i.bqd, 0
  %op.rdx1239 = or i1 %i.bqe, %stride.check805
  br i1 %op.rdx1239, label %scalar.ph837.preheader, label %vector.ph839

vector.ph839:                                     ; preds = %vector.memcheck777
  %i.bqf = getelementptr i8, ptr %.69291319.us.i, i64 %i.alq ; 2 uses
  br label %vector.body841

vector.body841:                                   ; preds = %vector.body841, %vector.ph839
  %index842 = phi i64 [ 0, %vector.ph839 ], [ %index.next853, %vector.body841 ] ; 6 uses
  %i.bqg = shl i64 %index842, 5
  %next.gep843 = getelementptr i8, ptr %.69291319.us.i, i64 %i.bqg
  %i.bqh = getelementptr inbounds nuw [4 x i8], ptr %.29451315.us.i, i64 %index842 ; 2 uses
  %i.bqi = getelementptr inbounds nuw [4 x i8], ptr %.29421316.us.i, i64 %index842 ; 2 uses
  %i.bqj = getelementptr inbounds nuw [4 x i8], ptr %.29391317.us.i, i64 %index842 ; 2 uses
  %i.bqk = getelementptr inbounds nuw [4 x i8], ptr %.29361318.us.i, i64 %index842 ; 2 uses
  %wide.load844 = load <8 x float>, ptr %i.bqh, align 4, !tbaa !56, !alias.scope !269
  %wide.load845 = load <8 x float>, ptr %i.bqi, align 4, !tbaa !56, !alias.scope !270
  %wide.load846 = load <8 x float>, ptr %i.bqj, align 4, !tbaa !56, !alias.scope !271
  %wide.load847 = load <8 x float>, ptr %i.bqk, align 4, !tbaa !56, !alias.scope !272
  %i.bql = getelementptr inbounds nuw [4 x i8], ptr %i.bqh, i64 %i.akh
  %i.bqm = getelementptr inbounds nuw [4 x i8], ptr %i.bqi, i64 %i.akh
  %i.bqn = getelementptr inbounds nuw [4 x i8], ptr %i.bqj, i64 %i.akh
  %i.bqo = getelementptr inbounds nuw [4 x i8], ptr %i.bqk, i64 %i.akh
  %wide.load848 = load <8 x float>, ptr %i.bql, align 4, !tbaa !56, !alias.scope !273
  %wide.load849 = load <8 x float>, ptr %i.bqm, align 4, !tbaa !56, !alias.scope !274
  %wide.load850 = load <8 x float>, ptr %i.bqn, align 4, !tbaa !56, !alias.scope !275
  %wide.load851 = load <8 x float>, ptr %i.bqo, align 4, !tbaa !56, !alias.scope !276
  %i.bqp = shufflevector <8 x float> %wide.load844, <8 x float> %wide.load845, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bqq = shufflevector <8 x float> %wide.load846, <8 x float> %wide.load847, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bqr = shufflevector <8 x float> %wide.load848, <8 x float> %wide.load849, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
end_hunk_1
begin_hunk_2_@_ZN4ncnn19Convolution_x86_fma15create_pipelineERKNS_6OptionE:bb.a
  %cmp.n1037 = icmp eq i64 %n.vec1027, %wide.trip.count1786.i
  %min.epilog.iters.check = icmp eq i64 %i.bxa, 0
  %n.vec1039 = and i64 %wide.trip.count1786.i, 2147483640 ; 4 uses
  %i.bxc = shl nuw nsw i64 %n.vec1039, 2
  %cmp.n1044 = icmp eq i64 %n.vec1039, %wide.trip.count1786.i
  %xtraiter1324 = and i64 %wide.trip.count1786.i, 7 ; 2 uses
  %lcmp.mod1325.not = icmp eq i64 %xtraiter1324, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i226

_ZN4ncnn3MatD2Ev.exit1005.i:                      ; preds = %._crit_edge1402.split.i, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i
  %indvars.iv1775.i = phi i64 [ %i.bgn, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next1776.i, %._crit_edge1402.split.i ] ; 2 uses
  %indvars.iv1747.i = phi i32 [ %i.bgj, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next1748.i, %._crit_edge1402.split.i ] ; 2 uses
  %indvars.iv1743.i = phi i32 [ %i.bgh, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next1744.i, %._crit_edge1402.split.i ] ; 2 uses
  %i.bxd = phi i32 [ %i.bez, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %i.chd, %._crit_edge1402.split.i ]
  %i.bxe = sext i32 %indvars.iv1743.i to i64
  %i.bxf = shl nsw i64 %i.bxe, 2
  %scevgep1745.i = getelementptr i8, ptr %scevgep1742.i, i64 %i.bxf ; 2 uses
  %i.bxg = sext i32 %indvars.iv1747.i to i64
  %i.bxh = shl nsw i64 %i.bxg, 2
  %scevgep1749.i = getelementptr i8, ptr %scevgep1742.i, i64 %i.bxh ; 2 uses
  %i.bxi = trunc i64 %indvars.iv1775.i to i32     ; 4 uses
  %i.bxj = mul i32 %i.bfc, %i.bxi
  %i.bxk = sext i32 %i.bxj to i64
  %i.bxl = getelementptr inbounds [4 x i8], ptr %i.bfb, i64 %i.bxk ; 2 uses
  %i.bxm = mul i32 %i.bxd, %i.bfc
  %i.bxn = sext i32 %i.bxm to i64
  %i.bxo = getelementptr inbounds [4 x i8], ptr %i.bfb, i64 %i.bxn ; 2 uses
  %i.bxp = lshr i32 %i.bxi, 3
  %i.bxq = lshr i32 %i.bxi, 2
  %i.bxr = and i32 %i.bxq, 1
  %i.bxs = add nuw nsw i32 %i.bxr, %i.bxp
  %i.bxt = lshr i32 %i.bxi, 1
  %i.bxu = and i32 %i.bxt, 1
  %i.bxv = add nuw nsw i32 %i.bxs, %i.bxu
  %i.bxw = zext nneg i32 %i.bxv to i64
  %.reass1406.i = mul i64 %factor.op.mul1405.i, %i.bxw
  %i.bxx = getelementptr inbounds nuw i8, ptr %i.bfd, i64 %.reass1406.i ; 4 uses
  br i1 %i.bfi, label %.preheader1093.lr.ph.i, label %.preheader1096.i

.preheader1093.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1005.i
  br i1 %i.bfj, label %.preheader1093.us.i, label %.preheader1096.thread.i

.preheader1093.us.i:                              ; preds = %.preheader1093.lr.ph.i, %._crit_edge1346.us.i
  %.08611351.us.i = phi i32 [ %i.bzw, %._crit_edge1346.us.i ], [ 0, %.preheader1093.lr.ph.i ]
  %.08651350.us.i = phi ptr [ %i.bzt, %._crit_edge1346.us.i ], [ %i.bxx, %.preheader1093.lr.ph.i ]
  %.08741349.us.i = phi ptr [ %i.bzv, %._crit_edge1346.us.i ], [ %i.bxo, %.preheader1093.lr.ph.i ] ; 2 uses
  %.08771348.us.i = phi ptr [ %i.bzu, %._crit_edge1346.us.i ], [ %i.bxl, %.preheader1093.lr.ph.i ] ; 2 uses
  br label %bb.kd

bb.kd:                                            ; preds = %bb.kd, %.preheader1093.us.i
  %indvars.iv1750.i = phi i64 [ 0, %.preheader1093.us.i ], [ %indvars.iv.next1751.i, %bb.kd ] ; 3 uses
  %.18661344.us.i = phi ptr [ %.08651350.us.i, %.preheader1093.us.i ], [ %i.bzt, %bb.kd ] ; 17 uses
  %i.bxy = getelementptr inbounds nuw [4 x i8], ptr %.08771348.us.i, i64 %indvars.iv1750.i ; 8 uses
  %i.bxz = getelementptr inbounds nuw [4 x i8], ptr %.08741349.us.i, i64 %indvars.iv1750.i ; 8 uses
  %i.bya = load float, ptr %i.bxy, align 4, !tbaa !56
  store float %i.bya, ptr %.18661344.us.i, align 4, !tbaa !56
  %i.byb = getelementptr inbounds nuw [4 x i8], ptr %i.bxy, i64 %i.bfk
  %i.byc = load float, ptr %i.byb, align 4, !tbaa !56
  %i.byd = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 4
  store float %i.byc, ptr %i.byd, align 4, !tbaa !56
  %i.bye = getelementptr inbounds nuw [4 x i8], ptr %i.bxy, i64 %i.bfm
  %i.byf = load float, ptr %i.bye, align 4, !tbaa !56
  %i.byg = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 8
  store float %i.byf, ptr %i.byg, align 4, !tbaa !56
  %i.byh = getelementptr inbounds nuw [4 x i8], ptr %i.bxy, i64 %i.bfo
  %i.byi = load float, ptr %i.byh, align 4, !tbaa !56
  %i.byj = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 12
  store float %i.byi, ptr %i.byj, align 4, !tbaa !56
  %i.byk = getelementptr inbounds nuw [4 x i8], ptr %i.bxy, i64 %i.bfq
  %i.byl = load float, ptr %i.byk, align 4, !tbaa !56
  %i.bym = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 16
  store float %i.byl, ptr %i.bym, align 4, !tbaa !56
  %i.byn = getelementptr inbounds nuw [4 x i8], ptr %i.bxy, i64 %i.bfs
  %i.byo = load float, ptr %i.byn, align 4, !tbaa !56
  %i.byp = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 20
  store float %i.byo, ptr %i.byp, align 4, !tbaa !56
  %i.byq = getelementptr inbounds nuw [4 x i8], ptr %i.bxy, i64 %i.bfu
  %i.byr = load float, ptr %i.byq, align 4, !tbaa !56
  %i.bys = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 24
  store float %i.byr, ptr %i.bys, align 4, !tbaa !56
  %i.byt = getelementptr inbounds nuw [4 x i8], ptr %i.bxy, i64 %i.bfw
  %i.byu = load float, ptr %i.byt, align 4, !tbaa !56
  %i.byv = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 28
  store float %i.byu, ptr %i.byv, align 4, !tbaa !56
  %i.byw = load float, ptr %i.bxz, align 4, !tbaa !56
  %i.byx = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 32
  store float %i.byw, ptr %i.byx, align 4, !tbaa !56
  %i.byy = getelementptr inbounds nuw [4 x i8], ptr %i.bxz, i64 %i.bfk
  %i.byz = load float, ptr %i.byy, align 4, !tbaa !56
  %i.bza = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 36
  store float %i.byz, ptr %i.bza, align 4, !tbaa !56
  %i.bzb = getelementptr inbounds nuw [4 x i8], ptr %i.bxz, i64 %i.bfm
  %i.bzc = load float, ptr %i.bzb, align 4, !tbaa !56
  %i.bzd = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 40
  store float %i.bzc, ptr %i.bzd, align 4, !tbaa !56
  %i.bze = getelementptr inbounds nuw [4 x i8], ptr %i.bxz, i64 %i.bfo
  %i.bzf = load float, ptr %i.bze, align 4, !tbaa !56
  %i.bzg = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 44
  store float %i.bzf, ptr %i.bzg, align 4, !tbaa !56
  %i.bzh = getelementptr inbounds nuw [4 x i8], ptr %i.bxz, i64 %i.bfq
  %i.bzi = load float, ptr %i.bzh, align 4, !tbaa !56
  %i.bzj = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 48
  store float %i.bzi, ptr %i.bzj, align 4, !tbaa !56
  %i.bzk = getelementptr inbounds nuw [4 x i8], ptr %i.bxz, i64 %i.bfs
  %i.bzl = load float, ptr %i.bzk, align 4, !tbaa !56
  %i.bzm = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 52
  store float %i.bzl, ptr %i.bzm, align 4, !tbaa !56
  %i.bzn = getelementptr inbounds nuw [4 x i8], ptr %i.bxz, i64 %i.bfu
  %i.bzo = load float, ptr %i.bzn, align 4, !tbaa !56
  %i.bzp = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 56
  store float %i.bzo, ptr %i.bzp, align 4, !tbaa !56
  %i.bzq = getelementptr inbounds nuw [4 x i8], ptr %i.bxz, i64 %i.bfw
  %i.bzr = load float, ptr %i.bzq, align 4, !tbaa !56
  %i.bzs = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 60
  store float %i.bzr, ptr %i.bzs, align 4, !tbaa !56
  %i.bzt = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 64 ; 3 uses
  %indvars.iv.next1751.i = add nuw nsw i64 %indvars.iv1750.i, 1 ; 2 uses
  %exitcond1754.not.i = icmp eq i64 %indvars.iv.next1751.i, %wide.trip.count1753.i
  br i1 %exitcond1754.not.i, label %._crit_edge1346.us.i, label %bb.kd, !llvm.loop !185

._crit_edge1346.us.i:                             ; preds = %bb.kd
  %i.bzu = getelementptr inbounds nuw [4 x i8], ptr %.08771348.us.i, i64 %i.bfy ; 2 uses
  %i.bzv = getelementptr inbounds nuw [4 x i8], ptr %.08741349.us.i, i64 %i.bfy ; 2 uses
  %i.bzw = add nuw nsw i32 %.08611351.us.i, 8     ; 2 uses
  %i.bzx = or disjoint i32 %i.bzw, 7
  %i.bzy = icmp slt i32 %i.bzx, %i.cj
  br i1 %i.bzy, label %.preheader1093.us.i, label %.preheader1096.i, !llvm.loop !186

.preheader1096.i:                                 ; preds = %._crit_edge1346.us.i, %_ZN4ncnn3MatD2Ev.exit1005.i
  %.0877.lcssa.i = phi ptr [ %i.bxl, %_ZN4ncnn3MatD2Ev.exit1005.i ], [ %i.bzu, %._crit_edge1346.us.i ] ; 11 uses
  %.0874.lcssa.i = phi ptr [ %i.bxo, %_ZN4ncnn3MatD2Ev.exit1005.i ], [ %i.bzv, %._crit_edge1346.us.i ] ; 11 uses
  %.0865.lcssa.i = phi ptr [ %i.bxx, %_ZN4ncnn3MatD2Ev.exit1005.i ], [ %i.bzt, %._crit_edge1346.us.i ] ; 3 uses
  %.0861.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1005.i ], [ %i.bgl, %._crit_edge1346.us.i ] ; 5 uses
  %i.bzz = or disjoint i32 %.0861.lcssa.i, 3
  %i.caa = icmp slt i32 %i.bzz, %i.cj
  br i1 %i.caa, label %.preheader1092.lr.ph.i, label %.preheader1095.i

.preheader1096.thread.i:                          ; preds = %.preheader1093.lr.ph.i
  br i1 %i.bgq, label %.preheader1092.preheader.i, label %.preheader1095.i

.preheader1092.lr.ph.i:                           ; preds = %.preheader1096.i
  br i1 %i.bfj, label %.preheader1092.us.i.preheader, label %.preheader1092.preheader.i

.preheader1092.us.i.preheader:                    ; preds = %.preheader1092.lr.ph.i
  %scevgep938 = getelementptr i8, ptr %.0874.lcssa.i, i64 %i.bgz
  %scevgep939 = getelementptr i8, ptr %.0874.lcssa.i, i64 %i.bhb
  %i.cab = sub i32 %i.bhd, %.0861.lcssa.i
  %i.cac = lshr i32 %i.cab, 2
  %i.cad = zext nneg i32 %i.cac to i64
  %i.cae = mul nsw i64 %i.bhc, %i.cad             ; 8 uses
  %scevgep940 = getelementptr i8, ptr %scevgep939, i64 %i.cae
  %scevgep941 = getelementptr i8, ptr %.0874.lcssa.i, i64 %i.bhe
  %scevgep942 = getelementptr i8, ptr %.0874.lcssa.i, i64 %i.bhf
  %scevgep943 = getelementptr i8, ptr %scevgep942, i64 %i.cae
  %scevgep944 = getelementptr i8, ptr %.0874.lcssa.i, i64 %i.bhg
  %scevgep945 = getelementptr i8, ptr %.0874.lcssa.i, i64 %i.bhh
  %scevgep946 = getelementptr i8, ptr %scevgep945, i64 %i.cae
  %scevgep947 = getelementptr i8, ptr %.0874.lcssa.i, i64 %i.bha
  %scevgep948 = getelementptr i8, ptr %scevgep947, i64 %i.cae
  %scevgep949 = getelementptr i8, ptr %.0877.lcssa.i, i64 %i.bgz
  %scevgep950 = getelementptr i8, ptr %.0877.lcssa.i, i64 %i.bhb
  %scevgep951 = getelementptr i8, ptr %scevgep950, i64 %i.cae
  %scevgep952 = getelementptr i8, ptr %.0877.lcssa.i, i64 %i.bhe
  %scevgep953 = getelementptr i8, ptr %.0877.lcssa.i, i64 %i.bhf
  %scevgep954 = getelementptr i8, ptr %scevgep953, i64 %i.cae
  %scevgep955 = getelementptr i8, ptr %.0877.lcssa.i, i64 %i.bhg
  %scevgep956 = getelementptr i8, ptr %.0877.lcssa.i, i64 %i.bhh
  %scevgep957 = getelementptr i8, ptr %scevgep956, i64 %i.cae
  %scevgep958 = getelementptr i8, ptr %.0877.lcssa.i, i64 %i.bha
  %scevgep959 = getelementptr i8, ptr %scevgep958, i64 %i.cae
  %i.caf = insertelement <8 x ptr> poison, ptr %scevgep943, i64 0
  %i.cag = insertelement <8 x ptr> %i.caf, ptr %scevgep940, i64 1
  %i.cah = insertelement <8 x ptr> %i.cag, ptr %scevgep946, i64 2
  %i.cai = insertelement <8 x ptr> %i.cah, ptr %scevgep948, i64 3
  %i.caj = insertelement <8 x ptr> %i.cai, ptr %scevgep951, i64 4
  %i.cak = insertelement <8 x ptr> %i.caj, ptr %scevgep954, i64 5
  %i.cal = insertelement <8 x ptr> %i.cak, ptr %scevgep957, i64 6
  %i.cam = insertelement <8 x ptr> %i.cal, ptr %scevgep959, i64 7
  %i.can = insertelement <8 x ptr> poison, ptr %scevgep941, i64 0
  %i.cao = insertelement <8 x ptr> %i.can, ptr %scevgep938, i64 1
  %i.cap = insertelement <8 x ptr> %i.cao, ptr %scevgep944, i64 2
  %i.caq = insertelement <8 x ptr> %i.cap, ptr %.0874.lcssa.i, i64 3
  %i.car = insertelement <8 x ptr> %i.caq, ptr %scevgep949, i64 4
  %i.cas = insertelement <8 x ptr> %i.car, ptr %scevgep952, i64 5
  %i.cat = insertelement <8 x ptr> %i.cas, ptr %scevgep955, i64 6
  %i.cau = insertelement <8 x ptr> %i.cat, ptr %.0877.lcssa.i, i64 7
  br label %.preheader1092.us.i

.preheader1092.preheader.i:                       ; preds = %.preheader1092.lr.ph.i, %.preheader1096.thread.i
  %.0877.lcssa19251936.i = phi ptr [ %.0877.lcssa.i, %.preheader1092.lr.ph.i ], [ %scevgep1745.i, %.preheader1096.thread.i ]
  %.0874.lcssa19261935.i = phi ptr [ %.0874.lcssa.i, %.preheader1092.lr.ph.i ], [ %scevgep1749.i, %.preheader1096.thread.i ]
  %.0865.lcssa19271934.i = phi ptr [ %.0865.lcssa.i, %.preheader1092.lr.ph.i ], [ %i.bxx, %.preheader1096.thread.i ]
  %.0861.lcssa19281933.i = phi i32 [ %.0861.lcssa.i, %.preheader1092.lr.ph.i ], [ %i.bgl, %.preheader1096.thread.i ] ; 2 uses
  %i.cav = sub i32 %i.bgm, %.0861.lcssa19281933.i
  %i.caw = and i32 %i.cav, -4                     ; 2 uses
  %i.cax = zext i32 %i.caw to i64
  %i.cay = add nuw nsw i64 %i.cax, 4
  %i.caz = mul nsw i64 %i.cay, %i.bfz             ; 2 uses
  %scevgep1755.i = getelementptr i8, ptr %.0877.lcssa19251936.i, i64 %i.caz
  %scevgep1756.i = getelementptr i8, ptr %.0874.lcssa19261935.i, i64 %i.caz
  %i.cba = add nsw i32 %.0861.lcssa19281933.i, 4
  %i.cbb = add i32 %i.cba, %i.caw
  br label %.preheader1095.i

.preheader1092.us.i:                              ; preds = %.preheader1092.us.i.preheader, %._crit_edge1362.us.i
  %.18621367.us.i = phi i32 [ %i.cdc, %._crit_edge1362.us.i ], [ %.0861.lcssa.i, %.preheader1092.us.i.preheader ]
  %.28671366.us.i = phi ptr [ %.lcssa639, %._crit_edge1362.us.i ], [ %.0865.lcssa.i, %.preheader1092.us.i.preheader ] ; 6 uses
  %.18751365.us.i = phi ptr [ %i.cdb, %._crit_edge1362.us.i ], [ %.0874.lcssa.i, %.preheader1092.us.i.preheader ] ; 3 uses
  %.18781364.us.i = phi ptr [ %i.cda, %._crit_edge1362.us.i ], [ %.0877.lcssa.i, %.preheader1092.us.i.preheader ] ; 3 uses
  br i1 %min.iters.check1000, label %scalar.ph999.preheader, label %vector.memcheck936

vector.memcheck936:                               ; preds = %.preheader1092.us.i
  %scevgep937 = getelementptr i8, ptr %.28671366.us.i, i64 %i.bgy
  %i.cbc = insertelement <8 x ptr> poison, ptr %.28671366.us.i, i64 0
  %i.cbd = shufflevector <8 x ptr> %i.cbc, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.cbe = icmp ult <8 x ptr> %i.cbd, %i.cam
  %i.cbf = insertelement <8 x ptr> poison, ptr %scevgep937, i64 0
  %i.cbg = shufflevector <8 x ptr> %i.cbf, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.cbh = icmp ult <8 x ptr> %i.cau, %i.cbg
  %i.cbi = and <8 x i1> %i.cbe, %i.cbh
  %i.cbj = bitcast <8 x i1> %i.cbi to i8
  %i.cbk = icmp ne i8 %i.cbj, 0
  %op.rdx1238 = or i1 %i.cbk, %stride.check967
  br i1 %op.rdx1238, label %scalar.ph999.preheader, label %vector.ph1001

vector.ph1001:                                    ; preds = %vector.memcheck936
  %i.cbl = getelementptr i8, ptr %.28671366.us.i, i64 %i.bhi ; 2 uses
  br label %vector.body1003

vector.body1003:                                  ; preds = %vector.body1003, %vector.ph1001
  %index1004 = phi i64 [ 0, %vector.ph1001 ], [ %index.next1015, %vector.body1003 ] ; 4 uses
  %i.cbm = shl i64 %index1004, 5
  %next.gep1005 = getelementptr i8, ptr %.28671366.us.i, i64 %i.cbm
  %i.cbn = getelementptr inbounds nuw [4 x i8], ptr %.18781364.us.i, i64 %index1004 ; 4 uses
  %i.cbo = getelementptr inbounds nuw [4 x i8], ptr %.18751365.us.i, i64 %index1004 ; 4 uses
  %wide.load1006 = load <8 x float>, ptr %i.cbn, align 4, !tbaa !56, !alias.scope !286
  %i.cbp = getelementptr inbounds nuw [4 x i8], ptr %i.cbn, i64 %i.bfk
  %wide.load1007 = load <8 x float>, ptr %i.cbp, align 4, !tbaa !56, !alias.scope !287
  %i.cbq = getelementptr inbounds nuw [4 x i8], ptr %i.cbn, i64 %i.bfm
  %wide.load1008 = load <8 x float>, ptr %i.cbq, align 4, !tbaa !56, !alias.scope !288
  %i.cbr = getelementptr inbounds nuw [4 x i8], ptr %i.cbn, i64 %i.bfo
  %wide.load1009 = load <8 x float>, ptr %i.cbr, align 4, !tbaa !56, !alias.scope !289
  %wide.load1010 = load <8 x float>, ptr %i.cbo, align 4, !tbaa !56, !alias.scope !290
  %i.cbs = getelementptr inbounds nuw [4 x i8], ptr %i.cbo, i64 %i.bfk
  %wide.load1011 = load <8 x float>, ptr %i.cbs, align 4, !tbaa !56, !alias.scope !291
  %i.cbt = getelementptr inbounds nuw [4 x i8], ptr %i.cbo, i64 %i.bfm
  %wide.load1012 = load <8 x float>, ptr %i.cbt, align 4, !tbaa !56, !alias.scope !292
  %i.cbu = getelementptr inbounds nuw [4 x i8], ptr %i.cbo, i64 %i.bfo
  %wide.load1013 = load <8 x float>, ptr %i.cbu, align 4, !tbaa !56, !alias.scope !293
  %i.cbv = shufflevector <8 x float> %wide.load1006, <8 x float> %wide.load1007, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cbw = shufflevector <8 x float> %wide.load1008, <8 x float> %wide.load1009, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cbx = shufflevector <8 x float> %wide.load1010, <8 x float> %wide.load1011, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cby = shufflevector <8 x float> %wide.load1012, <8 x float> %wide.load1013, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cbz = shufflevector <16 x float> %i.cbv, <16 x float> %i.cbw, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cca = shufflevector <16 x float> %i.cbx, <16 x float> %i.cby, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec1014 = shufflevector <32 x float> %i.cbz, <32 x float> %i.cca, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x float> %interleaved.vec1014, ptr %next.gep1005, align 4, !tbaa !56, !alias.scope !294, !noalias !295
  %index.next1015 = add nuw i64 %index1004, 8     ; 2 uses
  %i.ccb = icmp eq i64 %index.next1015, %n.vec1002
  br i1 %i.ccb, label %middle.block1016, label %vector.body1003, !llvm.loop !197

middle.block1016:                                 ; preds = %vector.body1003
  br i1 %cmp.n1017, label %._crit_edge1362.us.i, label %scalar.ph999.preheader

scalar.ph999.preheader:                           ; preds = %vector.memcheck936, %.preheader1092.us.i, %middle.block1016
  %indvars.iv1757.i.ph = phi i64 [ 0, %vector.memcheck936 ], [ 0, %.preheader1092.us.i ], [ %n.vec1002, %middle.block1016 ]
  %.38681360.us.i.ph = phi ptr [ %.28671366.us.i, %vector.memcheck936 ], [ %.28671366.us.i, %.preheader1092.us.i ], [ %i.cbl, %middle.block1016 ]
  br label %scalar.ph999

scalar.ph999:                                     ; preds = %scalar.ph999.preheader, %scalar.ph999
  %indvars.iv1757.i = phi i64 [ %indvars.iv.next1758.i, %scalar.ph999 ], [ %indvars.iv1757.i.ph, %scalar.ph999.preheader ] ; 3 uses
  %.38681360.us.i = phi ptr [ %i.ccz, %scalar.ph999 ], [ %.38681360.us.i.ph, %scalar.ph999.preheader ] ; 9 uses
  %i.ccc = getelementptr inbounds nuw [4 x i8], ptr %.18781364.us.i, i64 %indvars.iv1757.i ; 4 uses
  %i.ccd = getelementptr inbounds nuw [4 x i8], ptr %.18751365.us.i, i64 %indvars.iv1757.i ; 4 uses
  %i.cce = load float, ptr %i.ccc, align 4, !tbaa !56
  store float %i.cce, ptr %.38681360.us.i, align 4, !tbaa !56
  %i.ccf = getelementptr inbounds nuw [4 x i8], ptr %i.ccc, i64 %i.bfk
  %i.ccg = load float, ptr %i.ccf, align 4, !tbaa !56
  %i.cch = getelementptr inbounds nuw i8, ptr %.38681360.us.i, i64 4
  store float %i.ccg, ptr %i.cch, align 4, !tbaa !56
  %i.cci = getelementptr inbounds nuw [4 x i8], ptr %i.ccc, i64 %i.bfm
  %i.ccj = load float, ptr %i.cci, align 4, !tbaa !56
  %i.cck = getelementptr inbounds nuw i8, ptr %.38681360.us.i, i64 8
  store float %i.ccj, ptr %i.cck, align 4, !tbaa !56
  %i.ccl = getelementptr inbounds nuw [4 x i8], ptr %i.ccc, i64 %i.bfo
  %i.ccm = load float, ptr %i.ccl, align 4, !tbaa !56
  %i.ccn = getelementptr inbounds nuw i8, ptr %.38681360.us.i, i64 12
  store float %i.ccm, ptr %i.ccn, align 4, !tbaa !56
  %i.cco = load float, ptr %i.ccd, align 4, !tbaa !56
  %i.ccp = getelementptr inbounds nuw i8, ptr %.38681360.us.i, i64 16
  store float %i.cco, ptr %i.ccp, align 4, !tbaa !56
  %i.ccq = getelementptr inbounds nuw [4 x i8], ptr %i.ccd, i64 %i.bfk
  %i.ccr = load float, ptr %i.ccq, align 4, !tbaa !56
  %i.ccs = getelementptr inbounds nuw i8, ptr %.38681360.us.i, i64 20
  store float %i.ccr, ptr %i.ccs, align 4, !tbaa !56
  %i.cct = getelementptr inbounds nuw [4 x i8], ptr %i.ccd, i64 %i.bfm
  %i.ccu = load float, ptr %i.cct, align 4, !tbaa !56
  %i.ccv = getelementptr inbounds nuw i8, ptr %.38681360.us.i, i64 24
  store float %i.ccu, ptr %i.ccv, align 4, !tbaa !56
  %i.ccw = getelementptr inbounds nuw [4 x i8], ptr %i.ccd, i64 %i.bfo
  %i.ccx = load float, ptr %i.ccw, align 4, !tbaa !56
  %i.ccy = getelementptr inbounds nuw i8, ptr %.38681360.us.i, i64 28
  store float %i.ccx, ptr %i.ccy, align 4, !tbaa !56
  %i.ccz = getelementptr inbounds nuw i8, ptr %.38681360.us.i, i64 32 ; 2 uses
  %indvars.iv.next1758.i = add nuw nsw i64 %indvars.iv1757.i, 1 ; 2 uses
  %exitcond1761.not.i = icmp eq i64 %indvars.iv.next1758.i, %wide.trip.count1753.i
  br i1 %exitcond1761.not.i, label %._crit_edge1362.us.i, label %scalar.ph999, !llvm.loop !198

._crit_edge1362.us.i:                             ; preds = %scalar.ph999, %middle.block1016
  %.lcssa639 = phi ptr [ %i.cbl, %middle.block1016 ], [ %i.ccz, %scalar.ph999 ] ; 2 uses
  %i.cda = getelementptr inbounds nuw [4 x i8], ptr %.18781364.us.i, i64 %i.bfz ; 2 uses
  %i.cdb = getelementptr inbounds nuw [4 x i8], ptr %.18751365.us.i, i64 %i.bfz ; 2 uses
  %i.cdc = add nuw nsw i32 %.18621367.us.i, 4     ; 3 uses
  %i.cdd = or disjoint i32 %i.cdc, 3
  %i.cde = icmp slt i32 %i.cdd, %i.cj
  br i1 %i.cde, label %.preheader1092.us.i, label %.preheader1095.i, !llvm.loop !199

.preheader1095.i:                                 ; preds = %._crit_edge1362.us.i, %.preheader1092.preheader.i, %.preheader1096.thread.i, %.preheader1096.i
  %.1878.lcssa.i = phi ptr [ %.0877.lcssa.i, %.preheader1096.i ], [ %scevgep1745.i, %.preheader1096.thread.i ], [ %scevgep1755.i, %.preheader1092.preheader.i ], [ %i.cda, %._crit_edge1362.us.i ] ; 6 uses
  %.1875.lcssa.i = phi ptr [ %.0874.lcssa.i, %.preheader1096.i ], [ %scevgep1749.i, %.preheader1096.thread.i ], [ %scevgep1756.i, %.preheader1092.preheader.i ], [ %i.cdb, %._crit_edge1362.us.i ] ; 6 uses
  %.2867.lcssa.i = phi ptr [ %.0865.lcssa.i, %.preheader1096.i ], [ %i.bxx, %.preheader1096.thread.i ], [ %.0865.lcssa19271934.i, %.preheader1092.preheader.i ], [ %.lcssa639, %._crit_edge1362.us.i ] ; 2 uses
  %.1862.lcssa.i = phi i32 [ %.0861.lcssa.i, %.preheader1096.i ], [ %i.bgl, %.preheader1096.thread.i ], [ %i.cbb, %.preheader1092.preheader.i ], [ %i.cdc, %._crit_edge1362.us.i ] ; 4 uses
  %i.cdf = or disjoint i32 %.1862.lcssa.i, 1
  %i.cdg = icmp slt i32 %i.cdf, %i.cj
  br i1 %i.cdg, label %.preheader1091.lr.ph.i, label %.preheader1094.i

.preheader1091.lr.ph.i:                           ; preds = %.preheader1095.i
  br i1 %i.bfj, label %.preheader1091.us.i.preheader, label %._crit_edge1402.split.i

.preheader1091.us.i.preheader:                    ; preds = %.preheader1091.lr.ph.i
  %scevgep890 = getelementptr i8, ptr %.1875.lcssa.i, i64 %i.bgu
  %scevgep891 = getelementptr i8, ptr %.1875.lcssa.i, i64 %i.bgv
  %i.cdh = sub i32 %i.bgx, %.1862.lcssa.i
  %i.cdi = lshr i32 %i.cdh, 1
  %i.cdj = zext nneg i32 %i.cdi to i64
  %i.cdk = mul i64 %i.bgw, %i.cdj                 ; 4 uses
  %scevgep892 = getelementptr i8, ptr %scevgep891, i64 %i.cdk
  %scevgep893 = getelementptr i8, ptr %.1878.lcssa.i, i64 %i.bgu
  %scevgep894 = getelementptr i8, ptr %.1878.lcssa.i, i64 %i.bgv
  %scevgep895 = getelementptr i8, ptr %scevgep894, i64 %i.cdk
  %scevgep896 = getelementptr i8, ptr %.1875.lcssa.i, i64 %i.bgs
  %scevgep897 = getelementptr i8, ptr %scevgep896, i64 %i.cdk
  %scevgep898 = getelementptr i8, ptr %.1878.lcssa.i, i64 %i.bgs
  %scevgep899 = getelementptr i8, ptr %scevgep898, i64 %i.cdk
  br label %.preheader1091.us.i

.preheader1091.us.i:                              ; preds = %.preheader1091.us.i.preheader, %._crit_edge1382.us.i
  %.28631387.us.i = phi i32 [ %i.cfi, %._crit_edge1382.us.i ], [ %.1862.lcssa.i, %.preheader1091.us.i.preheader ]
  %.48691386.us.i = phi ptr [ %.lcssa643, %._crit_edge1382.us.i ], [ %.2867.lcssa.i, %.preheader1091.us.i.preheader ] ; 9 uses
  %.28761385.us.i = phi ptr [ %i.cfh, %._crit_edge1382.us.i ], [ %.1875.lcssa.i, %.preheader1091.us.i.preheader ] ; 5 uses
  %.28791384.us.i = phi ptr [ %i.cfg, %._crit_edge1382.us.i ], [ %.1878.lcssa.i, %.preheader1091.us.i.preheader ] ; 5 uses
  br i1 %min.iters.check920, label %scalar.ph919.preheader, label %vector.memcheck888

vector.memcheck888:                               ; preds = %.preheader1091.us.i
  %scevgep889 = getelementptr i8, ptr %.48691386.us.i, i64 %i.bgt ; 4 uses
  %bound0900 = icmp ult ptr %.48691386.us.i, %scevgep892
  %bound1901 = icmp ult ptr %scevgep890, %scevgep889
  %found.conflict902 = and i1 %bound0900, %bound1901
  %bound0904 = icmp ult ptr %.48691386.us.i, %scevgep895
  %bound1905 = icmp ult ptr %scevgep893, %scevgep889
  %found.conflict906 = and i1 %bound0904, %bound1905
  %i.cdl = or i1 %found.conflict906, %stride.check907
  %conflict.rdx908 = or i1 %found.conflict902, %i.cdl
  %bound0909 = icmp ult ptr %.48691386.us.i, %scevgep897
  %bound1910 = icmp ult ptr %.1875.lcssa.i, %scevgep889
  %found.conflict911 = and i1 %bound0909, %bound1910
  %conflict.rdx913 = or i1 %found.conflict911, %conflict.rdx908
  %bound0914 = icmp ult ptr %.48691386.us.i, %scevgep899
  %bound1915 = icmp ult ptr %.1878.lcssa.i, %scevgep889
  %found.conflict916 = and i1 %bound0914, %bound1915
  %conflict.rdx918 = or i1 %found.conflict916, %conflict.rdx913
  br i1 %conflict.rdx918, label %scalar.ph919.preheader, label %vector.ph921

vector.ph921:                                     ; preds = %vector.memcheck888
  %i.cdm = getelementptr i8, ptr %.48691386.us.i, i64 %i.bhj ; 2 uses
  br label %vector.body923

vector.body923:                                   ; preds = %vector.body923, %vector.ph921
  %index924 = phi i64 [ 0, %vector.ph921 ], [ %index.next931, %vector.body923 ] ; 4 uses
  %i.cdn = shl i64 %index924, 4
  %next.gep925 = getelementptr i8, ptr %.48691386.us.i, i64 %i.cdn
  %i.cdo = getelementptr inbounds nuw [4 x i8], ptr %.28791384.us.i, i64 %index924 ; 2 uses
  %i.cdp = getelementptr inbounds nuw [4 x i8], ptr %.28761385.us.i, i64 %index924 ; 2 uses
  %wide.load926 = load <8 x float>, ptr %i.cdo, align 4, !tbaa !56, !alias.scope !296
  %wide.load927 = load <8 x float>, ptr %i.cdp, align 4, !tbaa !56, !alias.scope !297
  %i.cdq = getelementptr inbounds nuw [4 x i8], ptr %i.cdo, i64 %i.bfk
  %i.cdr = getelementptr inbounds nuw [4 x i8], ptr %i.cdp, i64 %i.bfk
  %wide.load928 = load <8 x float>, ptr %i.cdq, align 4, !tbaa !56, !alias.scope !298
  %wide.load929 = load <8 x float>, ptr %i.cdr, align 4, !tbaa !56, !alias.scope !299
  %i.cds = shufflevector <8 x float> %wide.load926, <8 x float> %wide.load927, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cdt = shufflevector <8 x float> %wide.load928, <8 x float> %wide.load929, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec930 = shufflevector <16 x float> %i.cds, <16 x float> %i.cdt, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec930, ptr %next.gep925, align 4, !tbaa !56, !alias.scope !300, !noalias !301
  %index.next931 = add nuw i64 %index924, 8       ; 2 uses
  %i.cdu = icmp eq i64 %index.next931, %n.vec922
  br i1 %i.cdu, label %middle.block932, label %vector.body923, !llvm.loop !206

middle.block932:                                  ; preds = %vector.body923
  br i1 %cmp.n933, label %._crit_edge1382.us.i, label %scalar.ph919.preheader

scalar.ph919.preheader:                           ; preds = %vector.memcheck888, %.preheader1091.us.i, %middle.block932
end_hunk_2
begin_hunk_3_@_ZN4ncnn19Convolution_x86_fma15create_pipelineERKNS_6OptionE:bb.a
  %scevgep1162 = getelementptr i8, ptr %scevgep1161, i64 %i.chh
  %i.chi = sext i32 %indvars.iv1779.i to i64
  %i.chj = shl nsw i64 %i.chi, 2
  %scevgep1781.i = getelementptr i8, ptr %scevgep1778.i, i64 %i.chj ; 2 uses
  %i.chk = trunc i64 %indvars.iv1807.i to i32     ; 5 uses
  %i.chl = mul i32 %i.bub, %i.chk
  %i.chm = sext i32 %i.chl to i64
  %i.chn = getelementptr [4 x i8], ptr %i.bua, i64 %i.chm ; 3 uses
  %i.cho = lshr i32 %i.chk, 3
  %i.chp = lshr i32 %i.chk, 2
  %i.chq = and i32 %i.chp, 1
  %i.chr = lshr i32 %i.chk, 1
  %i.chs = and i32 %i.chr, 1
  %i.cht = and i32 %i.chk, 1
  %i.chu = add nuw nsw i32 %i.cht, %i.cho
  %i.chv = add nuw nsw i32 %i.chu, %i.chq
  %i.chw = add nuw nsw i32 %i.chv, %i.chs
  %i.chx = zext nneg i32 %i.chw to i64
  %.reass1465.i = mul i64 %factor.op.mul1464.i, %i.chx
  %i.chy = getelementptr inbounds nuw i8, ptr %i.buc, i64 %.reass1465.i ; 4 uses
  br i1 %i.buh, label %.preheader1085.lr.ph.i, label %.preheader1088.i

.preheader1085.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit.i226
  br i1 %i.bui, label %.preheader1085.us.i.preheader, label %.preheader1088.thread.i

.preheader1085.us.i.preheader:                    ; preds = %.preheader1085.lr.ph.i
  %i.chz = insertelement <8 x ptr> poison, ptr %scevgep1140, i64 0
  %i.cia = insertelement <8 x ptr> %i.chz, ptr %scevgep1136, i64 1
  %i.cib = insertelement <8 x ptr> %i.cia, ptr %scevgep1144, i64 2
  %i.cic = insertelement <8 x ptr> %i.cib, ptr %scevgep1148, i64 3
  %i.cid = insertelement <8 x ptr> %i.cic, ptr %scevgep1152, i64 4
  %i.cie = insertelement <8 x ptr> %i.cid, ptr %scevgep1156, i64 5
  %i.cif = insertelement <8 x ptr> %i.cie, ptr %scevgep1160, i64 6
  %i.cig = insertelement <8 x ptr> %i.cif, ptr %scevgep1162, i64 7
  %i.cih = insertelement <8 x ptr> poison, ptr %scevgep1138, i64 0
  %i.cii = insertelement <8 x ptr> %i.cih, ptr %scevgep1134, i64 1
  %i.cij = insertelement <8 x ptr> %i.cii, ptr %scevgep1142, i64 2
  %i.cik = insertelement <8 x ptr> %i.cij, ptr %scevgep1146, i64 3
  %i.cil = insertelement <8 x ptr> %i.cik, ptr %scevgep1150, i64 4
  %i.cim = insertelement <8 x ptr> %i.cil, ptr %scevgep1154, i64 5
  %i.cin = insertelement <8 x ptr> %i.cim, ptr %scevgep1158, i64 6
  %i.cio = insertelement <8 x ptr> %i.cin, ptr %i.chn, i64 7
  br label %.preheader1085.us.i

.preheader1085.us.i:                              ; preds = %.preheader1085.us.i.preheader, %._crit_edge1412.us.i
  %.08271416.us.i = phi i32 [ %i.cko, %._crit_edge1412.us.i ], [ 0, %.preheader1085.us.i.preheader ]
  %.08281415.us.i = phi ptr [ %.lcssa627, %._crit_edge1412.us.i ], [ %i.chy, %.preheader1085.us.i.preheader ] ; 6 uses
  %.08321414.us.i = phi ptr [ %i.ckn, %._crit_edge1412.us.i ], [ %i.chn, %.preheader1085.us.i.preheader ] ; 3 uses
  br i1 %min.iters.check1203, label %scalar.ph1202.preheader, label %vector.memcheck1131

vector.memcheck1131:                              ; preds = %.preheader1085.us.i
  %scevgep1132 = getelementptr i8, ptr %.08281415.us.i, i64 %i.bvp
  %i.cip = insertelement <8 x ptr> poison, ptr %.08281415.us.i, i64 0
  %i.ciq = shufflevector <8 x ptr> %i.cip, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.cir = icmp ult <8 x ptr> %i.ciq, %i.cig
  %i.cis = insertelement <8 x ptr> poison, ptr %scevgep1132, i64 0
  %i.cit = shufflevector <8 x ptr> %i.cis, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.ciu = icmp ult <8 x ptr> %i.cio, %i.cit
  %i.civ = and <8 x i1> %i.cir, %i.ciu
  %i.ciw = bitcast <8 x i1> %i.civ to i8
  %i.cix = icmp ne i8 %i.ciw, 0
  %op.rdx = or i1 %i.cix, %stride.check1170
  br i1 %op.rdx, label %scalar.ph1202.preheader, label %vector.ph1204

vector.ph1204:                                    ; preds = %vector.memcheck1131
  %i.ciy = getelementptr i8, ptr %.08281415.us.i, i64 %i.bww ; 2 uses
  br label %vector.body1206

vector.body1206:                                  ; preds = %vector.body1206, %vector.ph1204
  %index1207 = phi i64 [ 0, %vector.ph1204 ], [ %index.next1218, %vector.body1206 ] ; 3 uses
  %i.ciz = shl i64 %index1207, 5
  %next.gep1208 = getelementptr i8, ptr %.08281415.us.i, i64 %i.ciz
  %i.cja = getelementptr inbounds nuw [4 x i8], ptr %.08321414.us.i, i64 %index1207 ; 2 uses
  %wide.load1209 = load <8 x float>, ptr %i.cja, align 4, !tbaa !56, !alias.scope !306
  %i.cjb = getelementptr inbounds nuw [4 x i8], ptr %i.cja, i64 %i.buj ; 2 uses
  %wide.load1210 = load <8 x float>, ptr %i.cjb, align 4, !tbaa !56, !alias.scope !307
  %i.cjc = getelementptr inbounds nuw [4 x i8], ptr %i.cjb, i64 %i.buj ; 2 uses
  %wide.load1211 = load <8 x float>, ptr %i.cjc, align 4, !tbaa !56, !alias.scope !308
  %i.cjd = getelementptr inbounds nuw [4 x i8], ptr %i.cjc, i64 %i.buj ; 2 uses
  %wide.load1212 = load <8 x float>, ptr %i.cjd, align 4, !tbaa !56, !alias.scope !309
  %i.cje = getelementptr inbounds nuw [4 x i8], ptr %i.cjd, i64 %i.buj ; 2 uses
  %wide.load1213 = load <8 x float>, ptr %i.cje, align 4, !tbaa !56, !alias.scope !310
  %i.cjf = getelementptr inbounds nuw [4 x i8], ptr %i.cje, i64 %i.buj ; 2 uses
  %wide.load1214 = load <8 x float>, ptr %i.cjf, align 4, !tbaa !56, !alias.scope !311
  %i.cjg = getelementptr inbounds nuw [4 x i8], ptr %i.cjf, i64 %i.buj ; 2 uses
  %wide.load1215 = load <8 x float>, ptr %i.cjg, align 4, !tbaa !56, !alias.scope !312
  %i.cjh = getelementptr inbounds nuw [4 x i8], ptr %i.cjg, i64 %i.buj
  %wide.load1216 = load <8 x float>, ptr %i.cjh, align 4, !tbaa !56, !alias.scope !313
  %i.cji = shufflevector <8 x float> %wide.load1209, <8 x float> %wide.load1210, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cjj = shufflevector <8 x float> %wide.load1211, <8 x float> %wide.load1212, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cjk = shufflevector <8 x float> %wide.load1213, <8 x float> %wide.load1214, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cjl = shufflevector <8 x float> %wide.load1215, <8 x float> %wide.load1216, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cjm = shufflevector <16 x float> %i.cji, <16 x float> %i.cjj, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cjn = shufflevector <16 x float> %i.cjk, <16 x float> %i.cjl, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec1217 = shufflevector <32 x float> %i.cjm, <32 x float> %i.cjn, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x float> %interleaved.vec1217, ptr %next.gep1208, align 4, !tbaa !56, !alias.scope !314, !noalias !315
  %index.next1218 = add nuw i64 %index1207, 8     ; 2 uses
  %i.cjo = icmp eq i64 %index.next1218, %n.vec1205
  br i1 %i.cjo, label %middle.block1219, label %vector.body1206, !llvm.loop !228

middle.block1219:                                 ; preds = %vector.body1206
  br i1 %cmp.n1220, label %._crit_edge1412.us.i, label %scalar.ph1202.preheader

scalar.ph1202.preheader:                          ; preds = %vector.memcheck1131, %.preheader1085.us.i, %middle.block1219
  %indvars.iv1783.i.ph = phi i64 [ 0, %vector.memcheck1131 ], [ 0, %.preheader1085.us.i ], [ %n.vec1205, %middle.block1219 ]
  %.18291410.us.i.ph = phi ptr [ %.08281415.us.i, %vector.memcheck1131 ], [ %.08281415.us.i, %.preheader1085.us.i ], [ %i.ciy, %middle.block1219 ]
  br label %scalar.ph1202

scalar.ph1202:                                    ; preds = %scalar.ph1202.preheader, %scalar.ph1202
  %indvars.iv1783.i = phi i64 [ %indvars.iv.next1784.i, %scalar.ph1202 ], [ %indvars.iv1783.i.ph, %scalar.ph1202.preheader ] ; 2 uses
  %.18291410.us.i = phi ptr [ %i.ckm, %scalar.ph1202 ], [ %.18291410.us.i.ph, %scalar.ph1202.preheader ] ; 9 uses
  %i.cjp = getelementptr inbounds nuw [4 x i8], ptr %.08321414.us.i, i64 %indvars.iv1783.i ; 2 uses
  %i.cjq = load float, ptr %i.cjp, align 4, !tbaa !56
  store float %i.cjq, ptr %.18291410.us.i, align 4, !tbaa !56
  %i.cjr = getelementptr inbounds nuw [4 x i8], ptr %i.cjp, i64 %i.buj ; 2 uses
  %i.cjs = getelementptr inbounds nuw i8, ptr %.18291410.us.i, i64 4
  %i.cjt = load float, ptr %i.cjr, align 4, !tbaa !56
  store float %i.cjt, ptr %i.cjs, align 4, !tbaa !56
  %i.cju = getelementptr inbounds nuw [4 x i8], ptr %i.cjr, i64 %i.buj ; 2 uses
  %i.cjv = getelementptr inbounds nuw i8, ptr %.18291410.us.i, i64 8
  %i.cjw = load float, ptr %i.cju, align 4, !tbaa !56
  store float %i.cjw, ptr %i.cjv, align 4, !tbaa !56
  %i.cjx = getelementptr inbounds nuw [4 x i8], ptr %i.cju, i64 %i.buj ; 2 uses
  %i.cjy = getelementptr inbounds nuw i8, ptr %.18291410.us.i, i64 12
  %i.cjz = load float, ptr %i.cjx, align 4, !tbaa !56
  store float %i.cjz, ptr %i.cjy, align 4, !tbaa !56
  %i.cka = getelementptr inbounds nuw [4 x i8], ptr %i.cjx, i64 %i.buj ; 2 uses
  %i.ckb = getelementptr inbounds nuw i8, ptr %.18291410.us.i, i64 16
  %i.ckc = load float, ptr %i.cka, align 4, !tbaa !56
  store float %i.ckc, ptr %i.ckb, align 4, !tbaa !56
  %i.ckd = getelementptr inbounds nuw [4 x i8], ptr %i.cka, i64 %i.buj ; 2 uses
  %i.cke = getelementptr inbounds nuw i8, ptr %.18291410.us.i, i64 20
  %i.ckf = load float, ptr %i.ckd, align 4, !tbaa !56
  store float %i.ckf, ptr %i.cke, align 4, !tbaa !56
  %i.ckg = getelementptr inbounds nuw [4 x i8], ptr %i.ckd, i64 %i.buj ; 2 uses
  %i.ckh = getelementptr inbounds nuw i8, ptr %.18291410.us.i, i64 24
  %i.cki = load float, ptr %i.ckg, align 4, !tbaa !56
  store float %i.cki, ptr %i.ckh, align 4, !tbaa !56
  %i.ckj = getelementptr inbounds nuw [4 x i8], ptr %i.ckg, i64 %i.buj
  %i.ckk = getelementptr inbounds nuw i8, ptr %.18291410.us.i, i64 28
  %i.ckl = load float, ptr %i.ckj, align 4, !tbaa !56
  store float %i.ckl, ptr %i.ckk, align 4, !tbaa !56
  %i.ckm = getelementptr inbounds nuw i8, ptr %.18291410.us.i, i64 32 ; 2 uses
  %indvars.iv.next1784.i = add nuw nsw i64 %indvars.iv1783.i, 1 ; 2 uses
  %exitcond1787.not.i = icmp eq i64 %indvars.iv.next1784.i, %wide.trip.count1786.i
  br i1 %exitcond1787.not.i, label %._crit_edge1412.us.i, label %scalar.ph1202, !llvm.loop !229

._crit_edge1412.us.i:                             ; preds = %scalar.ph1202, %middle.block1219
  %.lcssa627 = phi ptr [ %i.ciy, %middle.block1219 ], [ %i.ckm, %scalar.ph1202 ] ; 2 uses
  %i.ckn = getelementptr inbounds nuw [4 x i8], ptr %.08321414.us.i, i64 %i.bul ; 2 uses
  %i.cko = add nuw nsw i32 %.08271416.us.i, 8     ; 2 uses
  %i.ckp = or disjoint i32 %i.cko, 7
  %i.ckq = icmp slt i32 %i.ckp, %i.cj
  br i1 %i.ckq, label %.preheader1085.us.i, label %.preheader1088.i, !llvm.loop !230

.preheader1088.i:                                 ; preds = %._crit_edge1412.us.i, %_ZN4ncnn3MatD2Ev.exit.i226
  %.0832.lcssa.i = phi ptr [ %i.chn, %_ZN4ncnn3MatD2Ev.exit.i226 ], [ %i.ckn, %._crit_edge1412.us.i ] ; 11 uses
  %.0828.lcssa.i = phi ptr [ %i.chy, %_ZN4ncnn3MatD2Ev.exit.i226 ], [ %.lcssa627, %._crit_edge1412.us.i ] ; 3 uses
  %.0827.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit.i226 ], [ %i.buy, %._crit_edge1412.us.i ] ; 5 uses
  %i.ckr = or disjoint i32 %.0827.lcssa.i, 3
  %i.cks = icmp slt i32 %i.ckr, %i.cj
  br i1 %i.cks, label %.preheader1084.lr.ph.i, label %.preheader1087.i

.preheader1088.thread.i:                          ; preds = %.preheader1085.lr.ph.i
  br i1 %i.bvc, label %.preheader1084.preheader.i, label %.preheader1087.i

.preheader1084.lr.ph.i:                           ; preds = %.preheader1088.i
  br i1 %i.bui, label %.preheader1084.us.i.preheader, label %.preheader1084.preheader.i

.preheader1084.us.i.preheader:                    ; preds = %.preheader1084.lr.ph.i
  %scevgep1084 = getelementptr i8, ptr %.0832.lcssa.i, i64 %i.bvj
  %i.ckt = getelementptr i8, ptr %.0832.lcssa.i, i64 %i.bvj
  %scevgep1085 = getelementptr i8, ptr %i.ckt, i64 %i.bvk
  %i.cku = sub i32 %i.bvm, %.0827.lcssa.i
  %i.ckv = lshr i32 %i.cku, 2
  %i.ckw = zext nneg i32 %i.ckv to i64
  %i.ckx = mul nsw i64 %i.bvl, %i.ckw             ; 4 uses
  %scevgep1086 = getelementptr i8, ptr %scevgep1085, i64 %i.ckx
  %scevgep1087 = getelementptr i8, ptr %.0832.lcssa.i, i64 %i.bvn
  %i.cky = getelementptr i8, ptr %.0832.lcssa.i, i64 %i.bvn
  %scevgep1088 = getelementptr i8, ptr %i.cky, i64 %i.bvk
  %scevgep1089 = getelementptr i8, ptr %scevgep1088, i64 %i.ckx
  %scevgep1090 = getelementptr i8, ptr %.0832.lcssa.i, i64 %i.bvo
  %i.ckz = getelementptr i8, ptr %.0832.lcssa.i, i64 %i.bvo
  %scevgep1091 = getelementptr i8, ptr %i.ckz, i64 %i.bvk
  %scevgep1092 = getelementptr i8, ptr %scevgep1091, i64 %i.ckx
  %scevgep1093 = getelementptr i8, ptr %.0832.lcssa.i, i64 %i.bvk
  %scevgep1094 = getelementptr i8, ptr %scevgep1093, i64 %i.ckx
  br label %.preheader1084.us.i

.preheader1084.preheader.i:                       ; preds = %.preheader1084.lr.ph.i, %.preheader1088.thread.i
  %.0832.lcssa19451953.i = phi ptr [ %.0832.lcssa.i, %.preheader1084.lr.ph.i ], [ %scevgep1781.i, %.preheader1088.thread.i ]
  %.0828.lcssa19461952.i = phi ptr [ %.0828.lcssa.i, %.preheader1084.lr.ph.i ], [ %i.chy, %.preheader1088.thread.i ]
  %.0827.lcssa19471951.i = phi i32 [ %.0827.lcssa.i, %.preheader1084.lr.ph.i ], [ %i.buy, %.preheader1088.thread.i ] ; 2 uses
  %i.cla = sub i32 %i.buz, %.0827.lcssa19471951.i
  %i.clb = and i32 %i.cla, -4                     ; 2 uses
  %i.clc = zext i32 %i.clb to i64
  %i.cld = add nuw nsw i64 %i.clc, 4
  %i.cle = mul nsw i64 %i.cld, %i.bun
  %scevgep1788.i = getelementptr i8, ptr %.0832.lcssa19451953.i, i64 %i.cle
  %i.clf = add nsw i32 %.0827.lcssa19471951.i, 4
  %i.clg = add i32 %i.clf, %i.clb
  br label %.preheader1087.i

.preheader1084.us.i:                              ; preds = %.preheader1084.us.i.preheader, %._crit_edge1428.us.i
  %.11432.us.i = phi i32 [ %i.cne, %._crit_edge1428.us.i ], [ %.0827.lcssa.i, %.preheader1084.us.i.preheader ]
  %.38311431.us.i = phi ptr [ %.lcssa629, %._crit_edge1428.us.i ], [ %.0828.lcssa.i, %.preheader1084.us.i.preheader ] ; 9 uses
  %.18331430.us.i = phi ptr [ %i.cnd, %._crit_edge1428.us.i ], [ %.0832.lcssa.i, %.preheader1084.us.i.preheader ] ; 5 uses
  br i1 %min.iters.check1115, label %scalar.ph1114.preheader, label %vector.memcheck1082

vector.memcheck1082:                              ; preds = %.preheader1084.us.i
  %scevgep1083 = getelementptr i8, ptr %.38311431.us.i, i64 %i.bvi ; 4 uses
  %bound01095 = icmp ult ptr %.38311431.us.i, %scevgep1086
  %bound11096 = icmp ult ptr %scevgep1084, %scevgep1083
  %found.conflict1097 = and i1 %bound01095, %bound11096
  %bound01099 = icmp ult ptr %.38311431.us.i, %scevgep1089
  %bound11100 = icmp ult ptr %scevgep1087, %scevgep1083
  %found.conflict1101 = and i1 %bound01099, %bound11100
  %i.clh = or i1 %found.conflict1101, %stride.check1102
  %conflict.rdx1103 = or i1 %found.conflict1097, %i.clh
  %bound01104 = icmp ult ptr %.38311431.us.i, %scevgep1092
  %bound11105 = icmp ult ptr %scevgep1090, %scevgep1083
  %found.conflict1106 = and i1 %bound01104, %bound11105
  %conflict.rdx1108 = or i1 %found.conflict1106, %conflict.rdx1103
  %bound01109 = icmp ult ptr %.38311431.us.i, %scevgep1094
  %bound11110 = icmp ult ptr %.0832.lcssa.i, %scevgep1083
  %found.conflict1111 = and i1 %bound01109, %bound11110
  %conflict.rdx1113 = or i1 %found.conflict1111, %conflict.rdx1108
  br i1 %conflict.rdx1113, label %scalar.ph1114.preheader, label %vector.ph1116

vector.ph1116:                                    ; preds = %vector.memcheck1082
  %i.cli = getelementptr i8, ptr %.38311431.us.i, i64 %i.bwx ; 2 uses
  br label %vector.body1118

vector.body1118:                                  ; preds = %vector.body1118, %vector.ph1116
  %index1119 = phi i64 [ 0, %vector.ph1116 ], [ %index.next1126, %vector.body1118 ] ; 3 uses
  %i.clj = shl i64 %index1119, 4
  %next.gep1120 = getelementptr i8, ptr %.38311431.us.i, i64 %i.clj
  %i.clk = getelementptr inbounds nuw [4 x i8], ptr %.18331430.us.i, i64 %index1119 ; 2 uses
  %wide.load1121 = load <8 x float>, ptr %i.clk, align 4, !tbaa !56, !alias.scope !316
  %i.cll = getelementptr inbounds nuw [4 x i8], ptr %i.clk, i64 %i.buj ; 2 uses
  %wide.load1122 = load <8 x float>, ptr %i.cll, align 4, !tbaa !56, !alias.scope !317
  %i.clm = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %i.buj ; 2 uses
  %wide.load1123 = load <8 x float>, ptr %i.clm, align 4, !tbaa !56, !alias.scope !318
  %i.cln = getelementptr inbounds nuw [4 x i8], ptr %i.clm, i64 %i.buj
  %wide.load1124 = load <8 x float>, ptr %i.cln, align 4, !tbaa !56, !alias.scope !319
  %i.clo = shufflevector <8 x float> %wide.load1121, <8 x float> %wide.load1122, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.clp = shufflevector <8 x float> %wide.load1123, <8 x float> %wide.load1124, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec1125 = shufflevector <16 x float> %i.clo, <16 x float> %i.clp, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec1125, ptr %next.gep1120, align 4, !tbaa !56, !alias.scope !320, !noalias !321
  %index.next1126 = add nuw i64 %index1119, 8     ; 2 uses
  %i.clq = icmp eq i64 %index.next1126, %n.vec1117
  br i1 %i.clq, label %middle.block1127, label %vector.body1118, !llvm.loop !237

middle.block1127:                                 ; preds = %vector.body1118
  br i1 %cmp.n1128, label %._crit_edge1428.us.i, label %scalar.ph1114.preheader

scalar.ph1114.preheader:                          ; preds = %vector.memcheck1082, %.preheader1084.us.i, %middle.block1127
  %indvars.iv1790.i.ph = phi i64 [ 0, %vector.memcheck1082 ], [ 0, %.preheader1084.us.i ], [ %n.vec1117, %middle.block1127 ] ; 4 uses
  %.41426.us.i.ph = phi ptr [ %.38311431.us.i, %vector.memcheck1082 ], [ %.38311431.us.i, %.preheader1084.us.i ], [ %i.cli, %middle.block1127 ] ; 6 uses
  br i1 %lcmp.mod1319.not, label %scalar.ph1114.prol.loopexit, label %scalar.ph1114.prol

scalar.ph1114.prol:                               ; preds = %scalar.ph1114.preheader
  %i.clr = getelementptr inbounds nuw [4 x i8], ptr %.18331430.us.i, i64 %indvars.iv1790.i.ph ; 2 uses
  %i.cls = load float, ptr %i.clr, align 4, !tbaa !56
  store float %i.cls, ptr %.41426.us.i.ph, align 4, !tbaa !56
  %i.clt = getelementptr inbounds nuw [4 x i8], ptr %i.clr, i64 %i.buj ; 2 uses
  %i.clu = getelementptr inbounds nuw i8, ptr %.41426.us.i.ph, i64 4
  %i.clv = load float, ptr %i.clt, align 4, !tbaa !56
  store float %i.clv, ptr %i.clu, align 4, !tbaa !56
  %i.clw = getelementptr inbounds nuw [4 x i8], ptr %i.clt, i64 %i.buj ; 2 uses
  %i.clx = getelementptr inbounds nuw i8, ptr %.41426.us.i.ph, i64 8
  %i.cly = load float, ptr %i.clw, align 4, !tbaa !56
  store float %i.cly, ptr %i.clx, align 4, !tbaa !56
  %i.clz = getelementptr inbounds nuw [4 x i8], ptr %i.clw, i64 %i.buj
  %i.cma = getelementptr inbounds nuw i8, ptr %.41426.us.i.ph, i64 12
  %i.cmb = load float, ptr %i.clz, align 4, !tbaa !56
  store float %i.cmb, ptr %i.cma, align 4, !tbaa !56
  %i.cmc = getelementptr inbounds nuw i8, ptr %.41426.us.i.ph, i64 16 ; 2 uses
  %indvars.iv.next1791.i.prol = or disjoint i64 %indvars.iv1790.i.ph, 1
  br label %scalar.ph1114.prol.loopexit

scalar.ph1114.prol.loopexit:                      ; preds = %scalar.ph1114.prol, %scalar.ph1114.preheader
  %.lcssa1247.unr = phi ptr [ poison, %scalar.ph1114.preheader ], [ %i.cmc, %scalar.ph1114.prol ]
  %indvars.iv1790.i.unr = phi i64 [ %indvars.iv1790.i.ph, %scalar.ph1114.preheader ], [ %indvars.iv.next1791.i.prol, %scalar.ph1114.prol ]
  %.41426.us.i.unr = phi ptr [ %.41426.us.i.ph, %scalar.ph1114.preheader ], [ %i.cmc, %scalar.ph1114.prol ]
  %i.cmd = icmp eq i64 %indvars.iv1790.i.ph, %i.bwy
  br i1 %i.cmd, label %._crit_edge1428.us.i, label %scalar.ph1114

scalar.ph1114:                                    ; preds = %scalar.ph1114.prol.loopexit, %scalar.ph1114
  %indvars.iv1790.i = phi i64 [ %indvars.iv.next1791.i.1, %scalar.ph1114 ], [ %indvars.iv1790.i.unr, %scalar.ph1114.prol.loopexit ] ; 3 uses
  %.41426.us.i = phi ptr [ %i.cnc, %scalar.ph1114 ], [ %.41426.us.i.unr, %scalar.ph1114.prol.loopexit ] ; 9 uses
  %i.cme = getelementptr inbounds nuw [4 x i8], ptr %.18331430.us.i, i64 %indvars.iv1790.i ; 2 uses
  %i.cmf = load float, ptr %i.cme, align 4, !tbaa !56
  store float %i.cmf, ptr %.41426.us.i, align 4, !tbaa !56
  %i.cmg = getelementptr inbounds nuw [4 x i8], ptr %i.cme, i64 %i.buj ; 2 uses
  %i.cmh = getelementptr inbounds nuw i8, ptr %.41426.us.i, i64 4
  %i.cmi = load float, ptr %i.cmg, align 4, !tbaa !56
  store float %i.cmi, ptr %i.cmh, align 4, !tbaa !56
  %i.cmj = getelementptr inbounds nuw [4 x i8], ptr %i.cmg, i64 %i.buj ; 2 uses
  %i.cmk = getelementptr inbounds nuw i8, ptr %.41426.us.i, i64 8
  %i.cml = load float, ptr %i.cmj, align 4, !tbaa !56
  store float %i.cml, ptr %i.cmk, align 4, !tbaa !56
  %i.cmm = getelementptr inbounds nuw [4 x i8], ptr %i.cmj, i64 %i.buj
  %i.cmn = getelementptr inbounds nuw i8, ptr %.41426.us.i, i64 12
  %i.cmo = load float, ptr %i.cmm, align 4, !tbaa !56
  store float %i.cmo, ptr %i.cmn, align 4, !tbaa !56
  %i.cmp = getelementptr inbounds nuw i8, ptr %.41426.us.i, i64 16
  %i.cmq = getelementptr inbounds nuw [4 x i8], ptr %.18331430.us.i, i64 %indvars.iv1790.i
  %i.cmr = getelementptr inbounds nuw i8, ptr %i.cmq, i64 4 ; 2 uses
  %i.cms = load float, ptr %i.cmr, align 4, !tbaa !56
  store float %i.cms, ptr %i.cmp, align 4, !tbaa !56
  %i.cmt = getelementptr inbounds nuw [4 x i8], ptr %i.cmr, i64 %i.buj ; 2 uses
  %i.cmu = getelementptr inbounds nuw i8, ptr %.41426.us.i, i64 20
  %i.cmv = load float, ptr %i.cmt, align 4, !tbaa !56
  store float %i.cmv, ptr %i.cmu, align 4, !tbaa !56
  %i.cmw = getelementptr inbounds nuw [4 x i8], ptr %i.cmt, i64 %i.buj ; 2 uses
  %i.cmx = getelementptr inbounds nuw i8, ptr %.41426.us.i, i64 24
  %i.cmy = load float, ptr %i.cmw, align 4, !tbaa !56
  store float %i.cmy, ptr %i.cmx, align 4, !tbaa !56
  %i.cmz = getelementptr inbounds nuw [4 x i8], ptr %i.cmw, i64 %i.buj
  %i.cna = getelementptr inbounds nuw i8, ptr %.41426.us.i, i64 28
  %i.cnb = load float, ptr %i.cmz, align 4, !tbaa !56
  store float %i.cnb, ptr %i.cna, align 4, !tbaa !56
  %i.cnc = getelementptr inbounds nuw i8, ptr %.41426.us.i, i64 32 ; 2 uses
  %indvars.iv.next1791.i.1 = add nuw nsw i64 %indvars.iv1790.i, 2 ; 2 uses
  %exitcond1794.not.i.1 = icmp eq i64 %indvars.iv.next1791.i.1, %wide.trip.count1786.i
  br i1 %exitcond1794.not.i.1, label %._crit_edge1428.us.i, label %scalar.ph1114, !llvm.loop !238

._crit_edge1428.us.i:                             ; preds = %scalar.ph1114.prol.loopexit, %scalar.ph1114, %middle.block1127
  %.lcssa629 = phi ptr [ %i.cli, %middle.block1127 ], [ %.lcssa1247.unr, %scalar.ph1114.prol.loopexit ], [ %i.cnc, %scalar.ph1114 ] ; 2 uses
  %i.cnd = getelementptr inbounds nuw [4 x i8], ptr %.18331430.us.i, i64 %i.bun ; 2 uses
  %i.cne = add nuw nsw i32 %.11432.us.i, 4        ; 3 uses
  %i.cnf = or disjoint i32 %i.cne, 3
  %i.cng = icmp slt i32 %i.cnf, %i.cj
  br i1 %i.cng, label %.preheader1084.us.i, label %.preheader1087.i, !llvm.loop !239

.preheader1087.i:                                 ; preds = %._crit_edge1428.us.i, %.preheader1084.preheader.i, %.preheader1088.thread.i, %.preheader1088.i
  %.1833.lcssa.i = phi ptr [ %.0832.lcssa.i, %.preheader1088.i ], [ %scevgep1781.i, %.preheader1088.thread.i ], [ %scevgep1788.i, %.preheader1084.preheader.i ], [ %i.cnd, %._crit_edge1428.us.i ] ; 6 uses
  %.3831.lcssa.i = phi ptr [ %.0828.lcssa.i, %.preheader1088.i ], [ %i.chy, %.preheader1088.thread.i ], [ %.0828.lcssa19461952.i, %.preheader1084.preheader.i ], [ %.lcssa629, %._crit_edge1428.us.i ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %.0827.lcssa.i, %.preheader1088.i ], [ %i.buy, %.preheader1088.thread.i ], [ %i.clg, %.preheader1084.preheader.i ], [ %i.cne, %._crit_edge1428.us.i ] ; 4 uses
  %i.cnh = or disjoint i32 %.1.lcssa.i, 1
  %i.cni = icmp slt i32 %i.cnh, %i.cj
  br i1 %i.cni, label %.preheader1083.lr.ph.i, label %.preheader1086.i

.preheader1083.lr.ph.i:                           ; preds = %.preheader1087.i
  br i1 %i.bui, label %.preheader1083.us.i.preheader, label %._crit_edge1461.split.i

.preheader1083.us.i.preheader:                    ; preds = %.preheader1083.lr.ph.i
  %scevgep1049 = getelementptr i8, ptr %.1833.lcssa.i, i64 %i.bve
  %i.cnj = getelementptr i8, ptr %.1833.lcssa.i, i64 %i.bve
  %scevgep1050 = getelementptr i8, ptr %i.cnj, i64 %i.bvf
  %i.cnk = sub i32 %i.bvh, %.1.lcssa.i
  %i.cnl = lshr i32 %i.cnk, 1
  %i.cnm = zext nneg i32 %i.cnl to i64
  %i.cnn = mul i64 %i.bvg, %i.cnm                 ; 2 uses
  %scevgep1051 = getelementptr i8, ptr %scevgep1050, i64 %i.cnn
  %scevgep1052 = getelementptr i8, ptr %.1833.lcssa.i, i64 %i.bvf
  %scevgep1053 = getelementptr i8, ptr %scevgep1052, i64 %i.cnn
  br label %.preheader1083.us.i

.preheader1083.us.i:                              ; preds = %.preheader1083.us.i.preheader, %._crit_edge1444.us.i
  %.21448.us.i = phi i32 [ %i.cph, %._crit_edge1444.us.i ], [ %.1.lcssa.i, %.preheader1083.us.i.preheader ]
  %.61447.us.i = phi ptr [ %.lcssa632, %._crit_edge1444.us.i ], [ %.3831.lcssa.i, %.preheader1083.us.i.preheader ] ; 8 uses
  %.28341446.us.i = phi ptr [ %i.cpg, %._crit_edge1444.us.i ], [ %.1833.lcssa.i, %.preheader1083.us.i.preheader ] ; 7 uses
  br i1 %min.iters.check1064, label %scalar.ph1063.preheader, label %vector.memcheck1047

vector.memcheck1047:                              ; preds = %.preheader1083.us.i
  %scevgep1048 = getelementptr i8, ptr %.61447.us.i, i64 %i.bvd ; 2 uses
  %bound01054 = icmp ult ptr %.61447.us.i, %scevgep1051
  %bound11055 = icmp ult ptr %scevgep1049, %scevgep1048
  %found.conflict1056 = and i1 %bound01054, %bound11055
  %bound01058 = icmp ult ptr %.61447.us.i, %scevgep1053
  %bound11059 = icmp ult ptr %.1833.lcssa.i, %scevgep1048
  %found.conflict1060 = and i1 %bound01058, %bound11059
  %i.cno = or i1 %found.conflict1060, %stride.check1061
  %conflict.rdx1062 = or i1 %found.conflict1056, %i.cno
  br i1 %conflict.rdx1062, label %scalar.ph1063.preheader, label %vector.ph1065

vector.ph1065:                                    ; preds = %vector.memcheck1047
  %i.cnp = getelementptr i8, ptr %.61447.us.i, i64 %i.bwz ; 2 uses
  br label %vector.body1067

vector.body1067:                                  ; preds = %vector.body1067, %vector.ph1065
  %index1068 = phi i64 [ 0, %vector.ph1065 ], [ %index.next1077, %vector.body1067 ] ; 3 uses
  %i.cnq = shl i64 %index1068, 3                  ; 2 uses
  %next.gep1069 = getelementptr i8, ptr %.61447.us.i, i64 %i.cnq
  %i.cnr = getelementptr i8, ptr %.61447.us.i, i64 %i.cnq
  %next.gep1070 = getelementptr i8, ptr %i.cnr, i64 16
  %i.cns = getelementptr inbounds nuw [4 x i8], ptr %.28341446.us.i, i64 %index1068 ; 3 uses
  %i.cnt = getelementptr inbounds nuw i8, ptr %i.cns, i64 8
  %wide.load1071 = load <2 x float>, ptr %i.cns, align 4, !tbaa !56, !alias.scope !322
  %wide.load1072 = load <2 x float>, ptr %i.cnt, align 4, !tbaa !56, !alias.scope !322
  %i.cnu = getelementptr inbounds nuw [4 x i8], ptr %i.cns, i64 %i.buj ; 2 uses
  %i.cnv = getelementptr inbounds nuw i8, ptr %i.cnu, i64 8
  %wide.load1073 = load <2 x float>, ptr %i.cnu, align 4, !tbaa !56, !alias.scope !323
  %wide.load1074 = load <2 x float>, ptr %i.cnv, align 4, !tbaa !56, !alias.scope !323
  %interleaved.vec1075 = shufflevector <2 x float> %wide.load1071, <2 x float> %wide.load1073, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec1075, ptr %next.gep1069, align 4, !tbaa !56, !alias.scope !324, !noalias !325
  %interleaved.vec1076 = shufflevector <2 x float> %wide.load1072, <2 x float> %wide.load1074, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec1076, ptr %next.gep1070, align 4, !tbaa !56, !alias.scope !324, !noalias !325
end_hunk_3
begin_hunk_4_@_ZNK4ncnn19Convolution_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %.316461755.i = phi <4 x float> [ %i.aow, %.lr.ph1761.i ], [ %.016431780.i, %bb.il ]
  %.316581754.i = phi <4 x float> [ %i.apb, %.lr.ph1761.i ], [ %.016551779.i, %bb.il ]
  %i.amw = getelementptr inbounds nuw [4 x i8], ptr %i.ajn, i64 %indvars.iv2272.i
  %i.amx = load i32, ptr %i.amw, align 4, !tbaa !81
  %i.amy = sext i32 %i.amx to i64                 ; 2 uses
  %i.amz = getelementptr inbounds [4 x i8], ptr %gep1792.i, i64 %i.amy ; 4 uses
  %i.ana = getelementptr inbounds [4 x i8], ptr %i.amv, i64 %i.amy ; 4 uses
  %i.anb = load <4 x float>, ptr %.36171758.i, align 16, !tbaa !114
  %i.anc = getelementptr inbounds nuw i8, ptr %.36171758.i, i64 16
  %i.and = load <4 x float>, ptr %i.anc, align 16, !tbaa !114
  %i.ane = getelementptr inbounds nuw i8, ptr %.36171758.i, i64 32
  %i.anf = load <4 x float>, ptr %i.ane, align 16, !tbaa !114
  %i.ang = getelementptr inbounds nuw i8, ptr %.36171758.i, i64 48
  %i.anh = load <4 x float>, ptr %i.ang, align 16, !tbaa !114
  %i.ani = getelementptr inbounds nuw i8, ptr %.36171758.i, i64 64
  %i.anj = load <4 x float>, ptr %i.ani, align 16, !tbaa !114
  %i.ank = getelementptr inbounds nuw i8, ptr %.36171758.i, i64 80
  %i.anl = load <4 x float>, ptr %i.ank, align 16, !tbaa !114
  %i.anm = getelementptr inbounds nuw i8, ptr %.36171758.i, i64 96
  %i.ann = load <4 x float>, ptr %i.anm, align 16, !tbaa !114
  %i.ano = getelementptr inbounds nuw i8, ptr %.36171758.i, i64 112
  %i.anp = load <4 x float>, ptr %i.ano, align 16, !tbaa !114
  %i.anq = load float, ptr %i.amz, align 4, !tbaa !56
  %i.anr = insertelement <4 x float> poison, float %i.anq, i64 0
  %i.ans = shufflevector <4 x float> %i.anr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ant = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.anb, <4 x float> nofpclass(nan inf) %i.ans, <4 x float> nofpclass(nan inf) %.416171757.i)
  %i.anu = getelementptr inbounds nuw i8, ptr %i.amz, i64 4
  %i.anv = load float, ptr %i.anu, align 4, !tbaa !56
  %i.anw = insertelement <4 x float> poison, float %i.anv, i64 0
  %i.anx = shufflevector <4 x float> %i.anw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.any = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.and, <4 x float> nofpclass(nan inf) %i.anx, <4 x float> nofpclass(nan inf) %.316321756.i)
  %i.anz = getelementptr inbounds nuw i8, ptr %i.amz, i64 8
  %i.aoa = load float, ptr %i.anz, align 4, !tbaa !56
  %i.aob = insertelement <4 x float> poison, float %i.aoa, i64 0
  %i.aoc = shufflevector <4 x float> %i.aob, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aod = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.anf, <4 x float> nofpclass(nan inf) %i.aoc, <4 x float> nofpclass(nan inf) %.316461755.i)
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.amz, i64 12
  %i.aof = load float, ptr %i.aoe, align 4, !tbaa !56
  %i.aog = insertelement <4 x float> poison, float %i.aof, i64 0
  %i.aoh = shufflevector <4 x float> %i.aog, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aoi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.anh, <4 x float> nofpclass(nan inf) %i.aoh, <4 x float> nofpclass(nan inf) %.316581754.i)
  %i.aoj = load float, ptr %i.ana, align 4, !tbaa !56
  %i.aok = insertelement <4 x float> poison, float %i.aoj, i64 0
  %i.aol = shufflevector <4 x float> %i.aok, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aom = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.anj, <4 x float> nofpclass(nan inf) %i.aol, <4 x float> nofpclass(nan inf) %i.ant) ; 2 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %i.ana, i64 4
  %i.aoo = load float, ptr %i.aon, align 4, !tbaa !56
  %i.aop = insertelement <4 x float> poison, float %i.aoo, i64 0
  %i.aoq = shufflevector <4 x float> %i.aop, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aor = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.anl, <4 x float> nofpclass(nan inf) %i.aoq, <4 x float> nofpclass(nan inf) %i.any) ; 2 uses
  %i.aos = getelementptr inbounds nuw i8, ptr %i.ana, i64 8
  %i.aot = load float, ptr %i.aos, align 4, !tbaa !56
  %i.aou = insertelement <4 x float> poison, float %i.aot, i64 0
  %i.aov = shufflevector <4 x float> %i.aou, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aow = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ann, <4 x float> nofpclass(nan inf) %i.aov, <4 x float> nofpclass(nan inf) %i.aod) ; 2 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %i.ana, i64 12
  %i.aoy = load float, ptr %i.aox, align 4, !tbaa !56
  %i.aoz = insertelement <4 x float> poison, float %i.aoy, i64 0
  %i.apa = shufflevector <4 x float> %i.aoz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.anp, <4 x float> nofpclass(nan inf) %i.apa, <4 x float> nofpclass(nan inf) %i.aoi) ; 2 uses
  %i.apc = getelementptr inbounds nuw i8, ptr %.36171758.i, i64 128
  %indvars.iv.next2273.i = add nuw nsw i64 %indvars.iv2272.i, 1 ; 2 uses
  %exitcond2278.not.i = icmp eq i64 %indvars.iv.next2273.i, %wide.trip.count2284.i
  br i1 %exitcond2278.not.i, label %.loopexit1726.loopexit.i, label %.lr.ph1761.i, !llvm.loop !348

.loopexit1726.loopexit.i:                         ; preds = %.lr.ph1761.i
  %scevgep2274.i = getelementptr i8, ptr %.06141783.i, i64 128
  %scevgep2275.i = getelementptr i8, ptr %scevgep2274.i, i64 %i.ajr
  br label %.loopexit1725.i

.loopexit1726.i:                                  ; preds = %.noexc789.i
  br i1 %i.aht, label %.preheader1724.i, label %.loopexit1725.i

.preheader1724.i:                                 ; preds = %.loopexit1726.i
  br i1 %i.ajm, label %.lr.ph1773.i, label %.loopexit1725.i

.lr.ph1773.i:                                     ; preds = %.preheader1724.i
  %i.apd = getelementptr [4 x i8], ptr %gep1792.i, i64 %i.ajo
  %i.ape = getelementptr i8, ptr %gep1792.i, i64 %.idx747.i
  %i.apf = getelementptr i8, ptr %gep1792.i, i64 %.idx748.i
  %i.apg = getelementptr i8, ptr %gep1792.i, i64 %.idx749.i
  %i.aph = getelementptr i8, ptr %gep1792.i, i64 %.idx750.i
  %i.api = getelementptr i8, ptr %gep1792.i, i64 %.idx751.i
  %i.apj = getelementptr i8, ptr %gep1792.i, i64 %.idx752.i
  br label %bb.im

bb.im:                                            ; preds = %bb.im, %.lr.ph1773.i
  %indvars.iv2279.i = phi i64 [ 0, %.lr.ph1773.i ], [ %indvars.iv.next2280.i, %bb.im ] ; 2 uses
  %.56191771.i = phi ptr [ %.06141783.i, %.lr.ph1773.i ], [ %i.arq, %bb.im ] ; 9 uses
  %.616191770.i = phi <4 x float> [ %.116141782.i, %.lr.ph1773.i ], [ %i.ara, %bb.im ]
  %.516341769.i = phi <4 x float> [ %.016291781.i, %.lr.ph1773.i ], [ %i.arf, %bb.im ]
  %.516481768.i = phi <4 x float> [ %.016431780.i, %.lr.ph1773.i ], [ %i.ark, %bb.im ]
  %.516601767.i = phi <4 x float> [ %.016551779.i, %.lr.ph1773.i ], [ %i.arp, %bb.im ]
  %i.apk = getelementptr inbounds nuw [4 x i8], ptr %i.ajn, i64 %indvars.iv2279.i
  %i.apl = load i32, ptr %i.apk, align 4, !tbaa !81
  %i.apm = load <4 x float>, ptr %.56191771.i, align 16, !tbaa !114
  %i.apn = getelementptr inbounds nuw i8, ptr %.56191771.i, i64 16
  %i.apo = load <4 x float>, ptr %i.apn, align 16, !tbaa !114
  %i.app = getelementptr inbounds nuw i8, ptr %.56191771.i, i64 32
  %i.apq = load <4 x float>, ptr %i.app, align 16, !tbaa !114
  %i.apr = getelementptr inbounds nuw i8, ptr %.56191771.i, i64 48
  %i.aps = load <4 x float>, ptr %i.apr, align 16, !tbaa !114
  %i.apt = getelementptr inbounds nuw i8, ptr %.56191771.i, i64 64
  %i.apu = load <4 x float>, ptr %i.apt, align 16, !tbaa !114
  %i.apv = getelementptr inbounds nuw i8, ptr %.56191771.i, i64 80
  %i.apw = load <4 x float>, ptr %i.apv, align 16, !tbaa !114
  %i.apx = getelementptr inbounds nuw i8, ptr %.56191771.i, i64 96
  %i.apy = load <4 x float>, ptr %i.apx, align 16, !tbaa !114
  %i.apz = getelementptr inbounds nuw i8, ptr %.56191771.i, i64 112
  %i.aqa = load <4 x float>, ptr %i.apz, align 16, !tbaa !114
  %i.aqb = sext i32 %i.apl to i64                 ; 8 uses
  %i.aqc = getelementptr inbounds [4 x i8], ptr %gep1792.i, i64 %i.aqb
  %i.aqd = load float, ptr %i.aqc, align 4, !tbaa !56
  %i.aqe = insertelement <4 x float> poison, float %i.aqd, i64 0
  %i.aqf = shufflevector <4 x float> %i.aqe, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.apm, <4 x float> nofpclass(nan inf) %i.aqf, <4 x float> nofpclass(nan inf) %.616191770.i)
  %i.aqh = getelementptr [4 x i8], ptr %i.apd, i64 %i.aqb
  %i.aqi = load float, ptr %i.aqh, align 4, !tbaa !56
  %i.aqj = insertelement <4 x float> poison, float %i.aqi, i64 0
  %i.aqk = shufflevector <4 x float> %i.aqj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aql = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.apo, <4 x float> nofpclass(nan inf) %i.aqk, <4 x float> nofpclass(nan inf) %.516341769.i)
  %i.aqm = getelementptr [4 x i8], ptr %i.ape, i64 %i.aqb
  %i.aqn = load float, ptr %i.aqm, align 4, !tbaa !56
  %i.aqo = insertelement <4 x float> poison, float %i.aqn, i64 0
  %i.aqp = shufflevector <4 x float> %i.aqo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.apq, <4 x float> nofpclass(nan inf) %i.aqp, <4 x float> nofpclass(nan inf) %.516481768.i)
  %i.aqr = getelementptr [4 x i8], ptr %i.apf, i64 %i.aqb
  %i.aqs = load float, ptr %i.aqr, align 4, !tbaa !56
  %i.aqt = insertelement <4 x float> poison, float %i.aqs, i64 0
  %i.aqu = shufflevector <4 x float> %i.aqt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aps, <4 x float> nofpclass(nan inf) %i.aqu, <4 x float> nofpclass(nan inf) %.516601767.i)
  %i.aqw = getelementptr [4 x i8], ptr %i.apg, i64 %i.aqb
  %i.aqx = load float, ptr %i.aqw, align 4, !tbaa !56
  %i.aqy = insertelement <4 x float> poison, float %i.aqx, i64 0
  %i.aqz = shufflevector <4 x float> %i.aqy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ara = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.apu, <4 x float> nofpclass(nan inf) %i.aqz, <4 x float> nofpclass(nan inf) %i.aqg) ; 2 uses
  %i.arb = getelementptr [4 x i8], ptr %i.aph, i64 %i.aqb
  %i.arc = load float, ptr %i.arb, align 4, !tbaa !56
  %i.ard = insertelement <4 x float> poison, float %i.arc, i64 0
  %i.are = shufflevector <4 x float> %i.ard, <4 x float> poison, <4 x i32> zeroinitializer
  %i.arf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.apw, <4 x float> nofpclass(nan inf) %i.are, <4 x float> nofpclass(nan inf) %i.aql) ; 2 uses
  %i.arg = getelementptr [4 x i8], ptr %i.api, i64 %i.aqb
  %i.arh = load float, ptr %i.arg, align 4, !tbaa !56
  %i.ari = insertelement <4 x float> poison, float %i.arh, i64 0
  %i.arj = shufflevector <4 x float> %i.ari, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ark = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.apy, <4 x float> nofpclass(nan inf) %i.arj, <4 x float> nofpclass(nan inf) %i.aqq) ; 2 uses
  %i.arl = getelementptr [4 x i8], ptr %i.apj, i64 %i.aqb
  %i.arm = load float, ptr %i.arl, align 4, !tbaa !56
  %i.arn = insertelement <4 x float> poison, float %i.arm, i64 0
  %i.aro = shufflevector <4 x float> %i.arn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.arp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aqa, <4 x float> nofpclass(nan inf) %i.aro, <4 x float> nofpclass(nan inf) %i.aqv) ; 2 uses
  %i.arq = getelementptr inbounds nuw i8, ptr %.56191771.i, i64 128
  %indvars.iv.next2280.i = add nuw nsw i64 %indvars.iv2279.i, 1 ; 2 uses
  %exitcond2285.not.i = icmp eq i64 %indvars.iv.next2280.i, %wide.trip.count2284.i
  br i1 %exitcond2285.not.i, label %.loopexit1725.loopexit.i, label %bb.im, !llvm.loop !349

.loopexit1725.loopexit.i:                         ; preds = %bb.im
  %scevgep2281.i = getelementptr i8, ptr %.06141783.i, i64 128
  %scevgep2282.i = getelementptr i8, ptr %scevgep2281.i, i64 %i.ajr
  br label %.loopexit1725.i

.loopexit1725.i:                                  ; preds = %.loopexit1725.loopexit.i, %.preheader1724.i, %.loopexit1726.i, %.loopexit1726.loopexit.i, %bb.il
  %.61661.i = phi nsz <4 x float> [ %.016551779.i, %.loopexit1726.i ], [ %.016551779.i, %.preheader1724.i ], [ %i.arp, %.loopexit1725.loopexit.i ], [ %.016551779.i, %bb.il ], [ %i.apb, %.loopexit1726.loopexit.i ] ; 2 uses
  %.61649.i = phi nsz <4 x float> [ %.016431780.i, %.loopexit1726.i ], [ %.016431780.i, %.preheader1724.i ], [ %i.ark, %.loopexit1725.loopexit.i ], [ %.016431780.i, %bb.il ], [ %i.aow, %.loopexit1726.loopexit.i ] ; 2 uses
  %.61635.i = phi nsz <4 x float> [ %.016291781.i, %.loopexit1726.i ], [ %.016291781.i, %.preheader1724.i ], [ %i.arf, %.loopexit1725.loopexit.i ], [ %.016291781.i, %bb.il ], [ %i.aor, %.loopexit1726.loopexit.i ] ; 2 uses
  %.71620.i = phi nsz <4 x float> [ %.116141782.i, %.loopexit1726.i ], [ %.116141782.i, %.preheader1724.i ], [ %i.ara, %.loopexit1725.loopexit.i ], [ %.116141782.i, %bb.il ], [ %i.aom, %.loopexit1726.loopexit.i ] ; 2 uses
  %.6620.i = phi ptr [ %.06141783.i, %.loopexit1726.i ], [ %.06141783.i, %.preheader1724.i ], [ %scevgep2282.i, %.loopexit1725.loopexit.i ], [ %.06141783.i, %bb.il ], [ %scevgep2275.i, %.loopexit1726.loopexit.i ] ; 2 uses
  %i.arr = add nuw nsw i32 %.06101784.i, 8        ; 2 uses
  %i.ars = or disjoint i32 %i.arr, 7
  %i.art = icmp slt i32 %i.ars, %i.ahb
  br i1 %i.art, label %.noexc789.i, label %.preheader1731.i, !llvm.loop !345

.preheader1730.i:                                 ; preds = %.loopexit1721.i, %.preheader1731.i
  %.71662.lcssa.i = phi <4 x float> [ %.01655.lcssa.i, %.preheader1731.i ], [ %.111666.i, %.loopexit1721.i ]
  %.71650.lcssa.i = phi <4 x float> [ %.01643.lcssa.i, %.preheader1731.i ], [ %.111654.i, %.loopexit1721.i ]
  %.71636.lcssa.i = phi <4 x float> [ %.01629.lcssa.i, %.preheader1731.i ], [ %.111640.i, %.loopexit1721.i ] ; 3 uses
  %.81621.lcssa.i = phi <4 x float> [ %.11614.lcssa.i, %.preheader1731.i ], [ %.121625.i, %.loopexit1721.i ] ; 3 uses
  %.7621.lcssa.i = phi ptr [ %.0614.lcssa.i, %.preheader1731.i ], [ %.11625.i, %.loopexit1721.i ] ; 3 uses
  %.1611.lcssa.i = phi i32 [ %.0610.lcssa.i, %.preheader1731.i ], [ %i.axd, %.loopexit1721.i ] ; 5 uses
  %i.aru = or disjoint i32 %.1611.lcssa.i, 1
  %i.arv = icmp slt i32 %i.aru, %i.ahb
  br i1 %i.arv, label %.noexc785.lr.ph.i, label %.preheader1729.i

.noexc785.lr.ph.i:                                ; preds = %.preheader1730.i
  %i.arw = load i32, ptr %i.mm, align 4, !tbaa !89, !noalias !404
  %i.arx = load ptr, ptr %11, align 8, !tbaa !37, !noalias !404
  %i.ary = load i64, ptr %i.mo, align 8, !tbaa !38, !noalias !404
  %i.arz = load i64, ptr %i.mj, align 8, !tbaa !79, !noalias !404 ; 2 uses
  %factor.op.mul1851.i = mul i64 %i.arz, %i.ary
  %i.asa = sext i32 %i.arw to i64
  %i.asb = mul nsw i64 %i.asa, %i.aii
  %i.asc = mul i64 %i.asb, %i.arz
  %invariant.gep1853.i = getelementptr i8, ptr %i.arx, i64 %i.asc
  %i.asd = mul nsw i64 %indvars.iv2320.i, %i.air
  %invariant.gep1854.i = getelementptr [4 x i8], ptr %invariant.gep1853.i, i64 %i.asd
  %i.ase = load ptr, ptr %i.g, align 8            ; 3 uses
  %i.asf = load i64, ptr %i.d, align 8
  br i1 %i.ail, label %.noexc785.us.preheader.i, label %.noexc785.preheader.i

.noexc785.preheader.i:                            ; preds = %.noexc785.lr.ph.i
  %i.asg = add nsw i32 %.1611.lcssa.i, 2
  %i.ash = sub i32 %i.aie, %.1611.lcssa.i
  %i.asi = and i32 %i.ash, -2
  %i.asj = add i32 %i.asg, %i.asi
  br label %.preheader1729.i

.noexc785.us.preheader.i:                         ; preds = %.noexc785.lr.ph.i
  %i.ask = zext i32 %.1611.lcssa.i to i64
  br label %.noexc785.us.i

.noexc785.us.i:                                   ; preds = %._crit_edge1839.us.i, %.noexc785.us.preheader.i
  %indvars.iv2307.i = phi i64 [ %i.ask, %.noexc785.us.preheader.i ], [ %indvars.iv.next2308.i, %._crit_edge1839.us.i ] ; 2 uses
  %.126261845.us.i = phi ptr [ %.7621.lcssa.i, %.noexc785.us.preheader.i ], [ %scevgep2303.i, %._crit_edge1839.us.i ] ; 3 uses
  %.1316261844.us.i = phi <4 x float> [ %.81621.lcssa.i, %.noexc785.us.preheader.i ], [ %.lcssa1220, %._crit_edge1839.us.i ] ; 2 uses
  %.1216411843.us.i = phi <4 x float> [ %.71636.lcssa.i, %.noexc785.us.preheader.i ], [ %.lcssa1219, %._crit_edge1839.us.i ] ; 2 uses
  %.reass1852.us.i = mul i64 %factor.op.mul1851.i, %indvars.iv2307.i
  %gep1855.us.i = getelementptr i8, ptr %invariant.gep1854.i, i64 %.reass1852.us.i ; 4 uses
  %i.asl = getelementptr [4 x i8], ptr %gep1855.us.i, i64 %i.asf ; 3 uses
  br i1 %i.ais, label %.epil.preheader, label %.noexc785.us.i.new

.noexc785.us.i.new:                               ; preds = %.noexc785.us.i, %.noexc785.us.i.new
  %indvars.iv2300.i = phi i64 [ %indvars.iv.next2301.i.1, %.noexc785.us.i.new ], [ 0, %.noexc785.us.i ] ; 3 uses
  %.136271836.us.i = phi ptr [ %i.atu, %.noexc785.us.i.new ], [ %.126261845.us.i, %.noexc785.us.i ] ; 5 uses
  %.1416271835.us.i = phi <4 x float> [ %i.ato, %.noexc785.us.i.new ], [ %.1316261844.us.i, %.noexc785.us.i ]
  %.1316421834.us.i = phi <4 x float> [ %i.att, %.noexc785.us.i.new ], [ %.1216411843.us.i, %.noexc785.us.i ]
  %niter = phi i64 [ %niter.next.1, %.noexc785.us.i.new ], [ 0, %.noexc785.us.i ]
  %i.asm = getelementptr inbounds nuw [4 x i8], ptr %i.ase, i64 %indvars.iv2300.i
  %i.asn = load i32, ptr %i.asm, align 4, !tbaa !81
  %i.aso = load <4 x float>, ptr %.136271836.us.i, align 16, !tbaa !114
  %i.asp = getelementptr inbounds nuw i8, ptr %.136271836.us.i, i64 16
  %i.asq = load <4 x float>, ptr %i.asp, align 16, !tbaa !114
  %i.asr = sext i32 %i.asn to i64                 ; 2 uses
  %i.ass = getelementptr inbounds [4 x i8], ptr %gep1855.us.i, i64 %i.asr
  %i.ast = load float, ptr %i.ass, align 4, !tbaa !56
  %i.asu = insertelement <4 x float> poison, float %i.ast, i64 0
  %i.asv = shufflevector <4 x float> %i.asu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.asw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aso, <4 x float> nofpclass(nan inf) %i.asv, <4 x float> nofpclass(nan inf) %.1416271835.us.i)
  %i.asx = getelementptr [4 x i8], ptr %i.asl, i64 %i.asr
  %i.asy = load float, ptr %i.asx, align 4, !tbaa !56
  %i.asz = insertelement <4 x float> poison, float %i.asy, i64 0
  %i.ata = shufflevector <4 x float> %i.asz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.atb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.asq, <4 x float> nofpclass(nan inf) %i.ata, <4 x float> nofpclass(nan inf) %.1316421834.us.i)
  %i.atc = getelementptr inbounds nuw i8, ptr %.136271836.us.i, i64 32
  %i.atd = getelementptr inbounds nuw [4 x i8], ptr %i.ase, i64 %indvars.iv2300.i
  %i.ate = getelementptr inbounds nuw i8, ptr %i.atd, i64 4
  %i.atf = load i32, ptr %i.ate, align 4, !tbaa !81
  %i.atg = load <4 x float>, ptr %i.atc, align 16, !tbaa !114
  %i.ath = getelementptr inbounds nuw i8, ptr %.136271836.us.i, i64 48
  %i.ati = load <4 x float>, ptr %i.ath, align 16, !tbaa !114
  %i.atj = sext i32 %i.atf to i64                 ; 2 uses
  %i.atk = getelementptr inbounds [4 x i8], ptr %gep1855.us.i, i64 %i.atj
  %i.atl = load float, ptr %i.atk, align 4, !tbaa !56
  %i.atm = insertelement <4 x float> poison, float %i.atl, i64 0
  %i.atn = shufflevector <4 x float> %i.atm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ato = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.atg, <4 x float> nofpclass(nan inf) %i.atn, <4 x float> nofpclass(nan inf) %i.asw) ; 3 uses
  %i.atp = getelementptr [4 x i8], ptr %i.asl, i64 %i.atj
  %i.atq = load float, ptr %i.atp, align 4, !tbaa !56
  %i.atr = insertelement <4 x float> poison, float %i.atq, i64 0
  %i.ats = shufflevector <4 x float> %i.atr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.att = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ati, <4 x float> nofpclass(nan inf) %i.ats, <4 x float> nofpclass(nan inf) %i.atb) ; 3 uses
  %i.atu = getelementptr inbounds nuw i8, ptr %.136271836.us.i, i64 64 ; 2 uses
  %indvars.iv.next2301.i.1 = add nuw nsw i64 %indvars.iv2300.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge1839.us.i.unr-lcssa, label %.noexc785.us.i.new, !llvm.loop !352

._crit_edge1839.us.i.unr-lcssa:                   ; preds = %.noexc785.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge1839.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge1839.us.i.unr-lcssa, %.noexc785.us.i
  %indvars.iv2300.i.epil.init = phi i64 [ 0, %.noexc785.us.i ], [ %indvars.iv.next2301.i.1, %._crit_edge1839.us.i.unr-lcssa ]
  %.136271836.us.i.epil.init = phi ptr [ %.126261845.us.i, %.noexc785.us.i ], [ %i.atu, %._crit_edge1839.us.i.unr-lcssa ] ; 2 uses
  %.1416271835.us.i.epil.init = phi <4 x float> [ %.1316261844.us.i, %.noexc785.us.i ], [ %i.ato, %._crit_edge1839.us.i.unr-lcssa ]
  %.1316421834.us.i.epil.init = phi <4 x float> [ %.1216411843.us.i, %.noexc785.us.i ], [ %i.att, %._crit_edge1839.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1226)
  %i.atv = getelementptr inbounds nuw [4 x i8], ptr %i.ase, i64 %indvars.iv2300.i.epil.init
  %i.atw = load i32, ptr %i.atv, align 4, !tbaa !81
  %i.atx = load <4 x float>, ptr %.136271836.us.i.epil.init, align 16, !tbaa !114
  %i.aty = getelementptr inbounds nuw i8, ptr %.136271836.us.i.epil.init, i64 16
  %i.atz = load <4 x float>, ptr %i.aty, align 16, !tbaa !114
  %i.aua = sext i32 %i.atw to i64                 ; 2 uses
  %i.aub = getelementptr inbounds [4 x i8], ptr %gep1855.us.i, i64 %i.aua
  %i.auc = load float, ptr %i.aub, align 4, !tbaa !56
  %i.aud = insertelement <4 x float> poison, float %i.auc, i64 0
  %i.aue = shufflevector <4 x float> %i.aud, <4 x float> poison, <4 x i32> zeroinitializer
  %i.auf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.atx, <4 x float> nofpclass(nan inf) %i.aue, <4 x float> nofpclass(nan inf) %.1416271835.us.i.epil.init)
  %i.aug = getelementptr [4 x i8], ptr %i.asl, i64 %i.aua
  %i.auh = load float, ptr %i.aug, align 4, !tbaa !56
  %i.aui = insertelement <4 x float> poison, float %i.auh, i64 0
  %i.auj = shufflevector <4 x float> %i.aui, <4 x float> poison, <4 x i32> zeroinitializer
  %i.auk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.atz, <4 x float> nofpclass(nan inf) %i.auj, <4 x float> nofpclass(nan inf) %.1316421834.us.i.epil.init)
  br label %._crit_edge1839.us.i

._crit_edge1839.us.i:                             ; preds = %._crit_edge1839.us.i.unr-lcssa, %.epil.preheader
  %.lcssa1220 = phi <4 x float> [ %i.ato, %._crit_edge1839.us.i.unr-lcssa ], [ %i.auf, %.epil.preheader ] ; 2 uses
  %.lcssa1219 = phi <4 x float> [ %i.att, %._crit_edge1839.us.i.unr-lcssa ], [ %i.auk, %.epil.preheader ] ; 2 uses
  %scevgep2302.i = getelementptr i8, ptr %.126261845.us.i, i64 32
  %scevgep2303.i = getelementptr i8, ptr %scevgep2302.i, i64 %i.aip ; 2 uses
  %indvars.iv.next2308.i = add nuw nsw i64 %indvars.iv2307.i, 2 ; 2 uses
  %i.aul = trunc i64 %indvars.iv.next2308.i to i32 ; 2 uses
  %i.aum = or i32 %i.aul, 1
  %i.aun = icmp slt i32 %i.aum, %i.ahb
  br i1 %i.aun, label %.noexc785.us.i, label %.preheader1729.i, !llvm.loop !353

.noexc787.i:                                      ; preds = %.loopexit1721.i, %.noexc787.lr.ph.i
  %.16111822.i = phi i32 [ %.0610.lcssa.i, %.noexc787.lr.ph.i ], [ %i.axd, %.loopexit1721.i ] ; 2 uses
  %.76211821.i = phi ptr [ %.0614.lcssa.i, %.noexc787.lr.ph.i ], [ %.11625.i, %.loopexit1721.i ] ; 7 uses
  %.816211820.i = phi <4 x float> [ %.11614.lcssa.i, %.noexc787.lr.ph.i ], [ %.121625.i, %.loopexit1721.i ] ; 5 uses
  %.716361819.i = phi <4 x float> [ %.01629.lcssa.i, %.noexc787.lr.ph.i ], [ %.111640.i, %.loopexit1721.i ] ; 5 uses
  %.716501818.i = phi <4 x float> [ %.01643.lcssa.i, %.noexc787.lr.ph.i ], [ %.111654.i, %.loopexit1721.i ] ; 5 uses
  %.716621817.i = phi <4 x float> [ %.01655.lcssa.i, %.noexc787.lr.ph.i ], [ %.111666.i, %.loopexit1721.i ] ; 5 uses
  %i.auo = sdiv i32 %.16111822.i, %i.agz
  %i.aup = sext i32 %i.auo to i64
  %.reass1830.i = mul i64 %factor.op.mul1829.i, %i.aup
  %gep1833.i = getelementptr i8, ptr %invariant.gep1832.i, i64 %.reass1830.i ; 5 uses
  br i1 %i.ahs, label %.preheader1722.i, label %.loopexit1723.i

.preheader1722.i:                                 ; preds = %.noexc787.i
  br i1 %i.amn, label %.lr.ph1799.i, label %.loopexit1721.i

.lr.ph1799.i:                                     ; preds = %.preheader1722.i, %.lr.ph1799.i
  %indvars.iv2286.i = phi i64 [ %indvars.iv.next2287.i, %.lr.ph1799.i ], [ 0, %.preheader1722.i ] ; 2 uses
  %.86221797.i = phi ptr [ %i.avu, %.lr.ph1799.i ], [ %.76211821.i, %.preheader1722.i ] ; 5 uses
  %.916221796.i = phi <4 x float> [ %i.ave, %.lr.ph1799.i ], [ %.816211820.i, %.preheader1722.i ]
  %.816371795.i = phi <4 x float> [ %i.avj, %.lr.ph1799.i ], [ %.716361819.i, %.preheader1722.i ]
  %.816511794.i = phi <4 x float> [ %i.avo, %.lr.ph1799.i ], [ %.716501818.i, %.preheader1722.i ]
  %.816631793.i = phi <4 x float> [ %i.avt, %.lr.ph1799.i ], [ %.716621817.i, %.preheader1722.i ]
  %i.auq = getelementptr inbounds nuw [4 x i8], ptr %i.amo, i64 %indvars.iv2286.i
  %i.aur = load i32, ptr %i.auq, align 4, !tbaa !81
  %i.aus = sext i32 %i.aur to i64
  %i.aut = getelementptr inbounds [4 x i8], ptr %gep1833.i, i64 %i.aus ; 4 uses
  %i.auu = load <4 x float>, ptr %.86221797.i, align 16, !tbaa !114
  %i.auv = getelementptr inbounds nuw i8, ptr %.86221797.i, i64 16
  %i.auw = load <4 x float>, ptr %i.auv, align 16, !tbaa !114
  %i.aux = getelementptr inbounds nuw i8, ptr %.86221797.i, i64 32
  %i.auy = load <4 x float>, ptr %i.aux, align 16, !tbaa !114
  %i.auz = getelementptr inbounds nuw i8, ptr %.86221797.i, i64 48
  %i.ava = load <4 x float>, ptr %i.auz, align 16, !tbaa !114
  %i.avb = load float, ptr %i.aut, align 4, !tbaa !56
  %i.avc = insertelement <4 x float> poison, float %i.avb, i64 0
  %i.avd = shufflevector <4 x float> %i.avc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ave = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.auu, <4 x float> nofpclass(nan inf) %i.avd, <4 x float> nofpclass(nan inf) %.916221796.i) ; 2 uses
  %i.avf = getelementptr inbounds nuw i8, ptr %i.aut, i64 4
  %i.avg = load float, ptr %i.avf, align 4, !tbaa !56
  %i.avh = insertelement <4 x float> poison, float %i.avg, i64 0
  %i.avi = shufflevector <4 x float> %i.avh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.avj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.auw, <4 x float> nofpclass(nan inf) %i.avi, <4 x float> nofpclass(nan inf) %.816371795.i) ; 2 uses
  %i.avk = getelementptr inbounds nuw i8, ptr %i.aut, i64 8
  %i.avl = load float, ptr %i.avk, align 4, !tbaa !56
  %i.avm = insertelement <4 x float> poison, float %i.avl, i64 0
  %i.avn = shufflevector <4 x float> %i.avm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.avo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.auy, <4 x float> nofpclass(nan inf) %i.avn, <4 x float> nofpclass(nan inf) %.816511794.i) ; 2 uses
  %i.avp = getelementptr inbounds nuw i8, ptr %i.aut, i64 12
  %i.avq = load float, ptr %i.avp, align 4, !tbaa !56
  %i.avr = insertelement <4 x float> poison, float %i.avq, i64 0
  %i.avs = shufflevector <4 x float> %i.avr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.avt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ava, <4 x float> nofpclass(nan inf) %i.avs, <4 x float> nofpclass(nan inf) %.816631793.i) ; 2 uses
  %i.avu = getelementptr inbounds nuw i8, ptr %.86221797.i, i64 64
  %indvars.iv.next2287.i = add nuw nsw i64 %indvars.iv2286.i, 1 ; 2 uses
  %exitcond2292.not.i = icmp eq i64 %indvars.iv.next2287.i, %wide.trip.count2298.i
  br i1 %exitcond2292.not.i, label %.loopexit1723.loopexit.i, label %.lr.ph1799.i, !llvm.loop !354

.loopexit1723.loopexit.i:                         ; preds = %.lr.ph1799.i
  %scevgep2288.i = getelementptr i8, ptr %.76211821.i, i64 64
  %scevgep2289.i = getelementptr i8, ptr %scevgep2288.i, i64 %i.ams
  br label %.loopexit1721.i

.loopexit1723.i:                                  ; preds = %.noexc787.i
  br i1 %i.aht, label %.preheader1720.i, label %.loopexit1721.i

.preheader1720.i:                                 ; preds = %.loopexit1723.i
  br i1 %i.amn, label %.lr.ph1811.i, label %.loopexit1721.i

.lr.ph1811.i:                                     ; preds = %.preheader1720.i
  %i.avv = getelementptr [4 x i8], ptr %gep1833.i, i64 %i.amp
  %i.avw = getelementptr i8, ptr %gep1833.i, i64 %.idx740.i
  %i.avx = getelementptr i8, ptr %gep1833.i, i64 %.idx741.i
  br label %bb.in

bb.in:                                            ; preds = %bb.in, %.lr.ph1811.i
  %indvars.iv2293.i = phi i64 [ 0, %.lr.ph1811.i ], [ %indvars.iv.next2294.i, %bb.in ] ; 2 uses
  %.106241809.i = phi ptr [ %.76211821.i, %.lr.ph1811.i ], [ %i.axc, %bb.in ] ; 5 uses
  %.1116241808.i = phi <4 x float> [ %.816211820.i, %.lr.ph1811.i ], [ %i.awm, %bb.in ]
  %.1016391807.i = phi <4 x float> [ %.716361819.i, %.lr.ph1811.i ], [ %i.awr, %bb.in ]
  %.1016531806.i = phi <4 x float> [ %.716501818.i, %.lr.ph1811.i ], [ %i.aww, %bb.in ]
  %.1016651805.i = phi <4 x float> [ %.716621817.i, %.lr.ph1811.i ], [ %i.axb, %bb.in ]
  %i.avy = getelementptr inbounds nuw [4 x i8], ptr %i.amo, i64 %indvars.iv2293.i
  %i.avz = load i32, ptr %i.avy, align 4, !tbaa !81
  %i.awa = load <4 x float>, ptr %.106241809.i, align 16, !tbaa !114
  %i.awb = getelementptr inbounds nuw i8, ptr %.106241809.i, i64 16
  %i.awc = load <4 x float>, ptr %i.awb, align 16, !tbaa !114
  %i.awd = getelementptr inbounds nuw i8, ptr %.106241809.i, i64 32
  %i.awe = load <4 x float>, ptr %i.awd, align 16, !tbaa !114
  %i.awf = getelementptr inbounds nuw i8, ptr %.106241809.i, i64 48
  %i.awg = load <4 x float>, ptr %i.awf, align 16, !tbaa !114
  %i.awh = sext i32 %i.avz to i64                 ; 4 uses
  %i.awi = getelementptr inbounds [4 x i8], ptr %gep1833.i, i64 %i.awh
  %i.awj = load float, ptr %i.awi, align 4, !tbaa !56
  %i.awk = insertelement <4 x float> poison, float %i.awj, i64 0
  %i.awl = shufflevector <4 x float> %i.awk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.awm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.awa, <4 x float> nofpclass(nan inf) %i.awl, <4 x float> nofpclass(nan inf) %.1116241808.i) ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN4ncnn19Convolution_x86_fma21create_pipeline_bf16sERKNS_6OptionE:bb.a
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %i.aay, i64 %i.ui ; 2 uses
  %i.abq = getelementptr inbounds nuw [4 x i8], ptr %i.aaz, i64 %i.ui ; 2 uses
  %i.abr = getelementptr inbounds nuw [4 x i8], ptr %i.aba, i64 %i.ui ; 2 uses
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %i.abb, i64 %i.ui ; 2 uses
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr %i.abc, i64 %i.ui ; 2 uses
  %i.abu = load i32, ptr %i.abm, align 4, !tbaa !56
  %i.abv = load i32, ptr %i.abn, align 4, !tbaa !56
  %i.abw = load i32, ptr %i.abo, align 4, !tbaa !56
  %i.abx = load i32, ptr %i.abp, align 4, !tbaa !56
  %i.aby = load i32, ptr %i.abq, align 4, !tbaa !56
  %i.abz = load i32, ptr %i.abr, align 4, !tbaa !56
  %i.aca = load i32, ptr %i.abs, align 4, !tbaa !56
  %i.acb = load i32, ptr %i.abt, align 4, !tbaa !56
  %i.acc = insertelement <16 x i32> poison, i32 %i.abe, i64 0
  %i.acd = insertelement <16 x i32> %i.acc, i32 %i.abf, i64 1
  %i.ace = insertelement <16 x i32> %i.acd, i32 %i.abg, i64 2
  %i.acf = insertelement <16 x i32> %i.ace, i32 %i.abh, i64 3
  %i.acg = insertelement <16 x i32> %i.acf, i32 %i.abi, i64 4
  %i.ach = insertelement <16 x i32> %i.acg, i32 %i.abj, i64 5
  %i.aci = insertelement <16 x i32> %i.ach, i32 %i.abk, i64 6
  %i.acj = insertelement <16 x i32> %i.aci, i32 %i.abl, i64 7
  %i.ack = insertelement <16 x i32> %i.acj, i32 %i.abu, i64 8
  %i.acl = insertelement <16 x i32> %i.ack, i32 %i.abv, i64 9
  %i.acm = insertelement <16 x i32> %i.acl, i32 %i.abw, i64 10
  %i.acn = insertelement <16 x i32> %i.acm, i32 %i.abx, i64 11
  %i.aco = insertelement <16 x i32> %i.acn, i32 %i.aby, i64 12
  %i.acp = insertelement <16 x i32> %i.aco, i32 %i.abz, i64 13
  %i.acq = insertelement <16 x i32> %i.acp, i32 %i.aca, i64 14
  %i.acr = insertelement <16 x i32> %i.acq, i32 %i.acb, i64 15
  %i.acs = lshr <16 x i32> %i.acr, splat (i32 16)
  %i.act = trunc nuw <16 x i32> %i.acs to <16 x i16>
  store <16 x i16> %i.act, ptr %i.abd, align 2, !tbaa !117
  %i.acu = getelementptr inbounds nuw [4 x i8], ptr %i.abm, i64 %i.ui ; 2 uses
  %i.acv = getelementptr inbounds nuw [4 x i8], ptr %i.abn, i64 %i.ui ; 2 uses
  %i.acw = getelementptr inbounds nuw [4 x i8], ptr %i.abo, i64 %i.ui ; 2 uses
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr %i.abp, i64 %i.ui ; 2 uses
  %i.acy = getelementptr inbounds nuw [4 x i8], ptr %i.abq, i64 %i.ui ; 2 uses
  %i.acz = getelementptr inbounds nuw [4 x i8], ptr %i.abr, i64 %i.ui ; 2 uses
  %i.ada = getelementptr inbounds nuw [4 x i8], ptr %i.abs, i64 %i.ui ; 2 uses
  %i.adb = getelementptr inbounds nuw [4 x i8], ptr %i.abt, i64 %i.ui ; 2 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 64
  %i.add = load i32, ptr %i.acu, align 4, !tbaa !56
  %i.ade = load i32, ptr %i.acv, align 4, !tbaa !56
  %i.adf = load i32, ptr %i.acw, align 4, !tbaa !56
  %i.adg = load i32, ptr %i.acx, align 4, !tbaa !56
  %i.adh = load i32, ptr %i.acy, align 4, !tbaa !56
  %i.adi = load i32, ptr %i.acz, align 4, !tbaa !56
  %i.adj = load i32, ptr %i.ada, align 4, !tbaa !56
  %i.adk = load i32, ptr %i.adb, align 4, !tbaa !56
  %i.adl = getelementptr inbounds nuw [4 x i8], ptr %i.acu, i64 %i.ui ; 2 uses
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %i.acv, i64 %i.ui ; 2 uses
  %i.adn = getelementptr inbounds nuw [4 x i8], ptr %i.acw, i64 %i.ui ; 2 uses
  %i.ado = getelementptr inbounds nuw [4 x i8], ptr %i.acx, i64 %i.ui ; 2 uses
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %i.acy, i64 %i.ui ; 2 uses
  %i.adq = getelementptr inbounds nuw [4 x i8], ptr %i.acz, i64 %i.ui ; 2 uses
  %i.adr = getelementptr inbounds nuw [4 x i8], ptr %i.ada, i64 %i.ui ; 2 uses
  %i.ads = getelementptr inbounds nuw [4 x i8], ptr %i.adb, i64 %i.ui ; 2 uses
  %i.adt = load i32, ptr %i.adl, align 4, !tbaa !56
  %i.adu = load i32, ptr %i.adm, align 4, !tbaa !56
  %i.adv = load i32, ptr %i.adn, align 4, !tbaa !56
  %i.adw = load i32, ptr %i.ado, align 4, !tbaa !56
  %i.adx = load i32, ptr %i.adp, align 4, !tbaa !56
  %i.ady = load i32, ptr %i.adq, align 4, !tbaa !56
  %i.adz = load i32, ptr %i.adr, align 4, !tbaa !56
  %i.aea = load i32, ptr %i.ads, align 4, !tbaa !56
  %i.aeb = insertelement <16 x i32> poison, i32 %i.add, i64 0
  %i.aec = insertelement <16 x i32> %i.aeb, i32 %i.ade, i64 1
  %i.aed = insertelement <16 x i32> %i.aec, i32 %i.adf, i64 2
  %i.aee = insertelement <16 x i32> %i.aed, i32 %i.adg, i64 3
  %i.aef = insertelement <16 x i32> %i.aee, i32 %i.adh, i64 4
  %i.aeg = insertelement <16 x i32> %i.aef, i32 %i.adi, i64 5
  %i.aeh = insertelement <16 x i32> %i.aeg, i32 %i.adj, i64 6
  %i.aei = insertelement <16 x i32> %i.aeh, i32 %i.adk, i64 7
  %i.aej = insertelement <16 x i32> %i.aei, i32 %i.adt, i64 8
  %i.aek = insertelement <16 x i32> %i.aej, i32 %i.adu, i64 9
  %i.ael = insertelement <16 x i32> %i.aek, i32 %i.adv, i64 10
  %i.aem = insertelement <16 x i32> %i.ael, i32 %i.adw, i64 11
  %i.aen = insertelement <16 x i32> %i.aem, i32 %i.adx, i64 12
  %i.aeo = insertelement <16 x i32> %i.aen, i32 %i.ady, i64 13
  %i.aep = insertelement <16 x i32> %i.aeo, i32 %i.adz, i64 14
  %i.aeq = insertelement <16 x i32> %i.aep, i32 %i.aea, i64 15
  %i.aer = lshr <16 x i32> %i.aeq, splat (i32 16)
  %i.aes = trunc nuw <16 x i32> %i.aer to <16 x i16>
  store <16 x i16> %i.aes, ptr %i.adc, align 2, !tbaa !117
  %i.aet = getelementptr inbounds nuw [4 x i8], ptr %i.adl, i64 %i.ui ; 2 uses
  %i.aeu = getelementptr inbounds nuw [4 x i8], ptr %i.adm, i64 %i.ui ; 2 uses
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %i.adn, i64 %i.ui ; 2 uses
  %i.aew = getelementptr inbounds nuw [4 x i8], ptr %i.ado, i64 %i.ui ; 2 uses
  %i.aex = getelementptr inbounds nuw [4 x i8], ptr %i.adp, i64 %i.ui ; 2 uses
  %i.aey = getelementptr inbounds nuw [4 x i8], ptr %i.adq, i64 %i.ui ; 2 uses
  %i.aez = getelementptr inbounds nuw [4 x i8], ptr %i.adr, i64 %i.ui ; 2 uses
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr %i.ads, i64 %i.ui ; 2 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 96
  %i.afc = load i32, ptr %i.aet, align 4, !tbaa !56
  %i.afd = load i32, ptr %i.aeu, align 4, !tbaa !56
  %i.afe = load i32, ptr %i.aev, align 4, !tbaa !56
  %i.aff = load i32, ptr %i.aew, align 4, !tbaa !56
  %i.afg = load i32, ptr %i.aex, align 4, !tbaa !56
  %i.afh = load i32, ptr %i.aey, align 4, !tbaa !56
  %i.afi = load i32, ptr %i.aez, align 4, !tbaa !56
  %i.afj = load i32, ptr %i.afa, align 4, !tbaa !56
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %i.aet, i64 %i.ui
  %i.afl = getelementptr inbounds nuw [4 x i8], ptr %i.aeu, i64 %i.ui
  %i.afm = getelementptr inbounds nuw [4 x i8], ptr %i.aev, i64 %i.ui
  %i.afn = getelementptr inbounds nuw [4 x i8], ptr %i.aew, i64 %i.ui
  %i.afo = getelementptr inbounds nuw [4 x i8], ptr %i.aex, i64 %i.ui
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %i.aey, i64 %i.ui
  %i.afq = getelementptr inbounds nuw [4 x i8], ptr %i.aez, i64 %i.ui
  %i.afr = getelementptr inbounds nuw [4 x i8], ptr %i.afa, i64 %i.ui
  %i.afs = load i32, ptr %i.afk, align 4, !tbaa !56
  %i.aft = load i32, ptr %i.afl, align 4, !tbaa !56
  %i.afu = load i32, ptr %i.afm, align 4, !tbaa !56
  %i.afv = load i32, ptr %i.afn, align 4, !tbaa !56
  %i.afw = load i32, ptr %i.afo, align 4, !tbaa !56
  %i.afx = load i32, ptr %i.afp, align 4, !tbaa !56
  %i.afy = load i32, ptr %i.afq, align 4, !tbaa !56
  %i.afz = load i32, ptr %i.afr, align 4, !tbaa !56
  %i.aga = insertelement <16 x i32> poison, i32 %i.afc, i64 0
  %i.agb = insertelement <16 x i32> %i.aga, i32 %i.afd, i64 1
  %i.agc = insertelement <16 x i32> %i.agb, i32 %i.afe, i64 2
  %i.agd = insertelement <16 x i32> %i.agc, i32 %i.aff, i64 3
  %i.age = insertelement <16 x i32> %i.agd, i32 %i.afg, i64 4
  %i.agf = insertelement <16 x i32> %i.age, i32 %i.afh, i64 5
  %i.agg = insertelement <16 x i32> %i.agf, i32 %i.afi, i64 6
  %i.agh = insertelement <16 x i32> %i.agg, i32 %i.afj, i64 7
  %i.agi = insertelement <16 x i32> %i.agh, i32 %i.afs, i64 8
  %i.agj = insertelement <16 x i32> %i.agi, i32 %i.aft, i64 9
  %i.agk = insertelement <16 x i32> %i.agj, i32 %i.afu, i64 10
  %i.agl = insertelement <16 x i32> %i.agk, i32 %i.afv, i64 11
  %i.agm = insertelement <16 x i32> %i.agl, i32 %i.afw, i64 12
  %i.agn = insertelement <16 x i32> %i.agm, i32 %i.afx, i64 13
  %i.ago = insertelement <16 x i32> %i.agn, i32 %i.afy, i64 14
  %i.agp = insertelement <16 x i32> %i.ago, i32 %i.afz, i64 15
  %i.agq = lshr <16 x i32> %i.agp, splat (i32 16)
  %i.agr = trunc nuw <16 x i32> %i.agq to <16 x i16>
  store <16 x i16> %i.agr, ptr %i.afb, align 2, !tbaa !117
  %i.ags = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 128 ; 3 uses
  %indvars.iv.next1650.i = add nuw nsw i64 %indvars.iv1649.i, 1 ; 2 uses
  %exitcond.not.i105 = icmp eq i64 %indvars.iv.next1650.i, %wide.trip.count.i
  br i1 %exitcond.not.i105, label %._crit_edge.us.i, label %bb.ek, !llvm.loop !597

._crit_edge.us.i:                                 ; preds = %bb.ek
  %i.agt = getelementptr inbounds nuw [4 x i8], ptr %.08391134.us.i, i64 %i.uk ; 2 uses
  %i.agu = getelementptr inbounds nuw [4 x i8], ptr %.08471133.us.i, i64 %i.uk ; 2 uses
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %.08501132.us.i, i64 %i.uk ; 2 uses
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr %.08541131.us.i, i64 %i.uk ; 2 uses
  %i.agx = getelementptr inbounds nuw [4 x i8], ptr %.08571130.us.i, i64 %i.uk ; 2 uses
  %i.agy = getelementptr inbounds nuw [4 x i8], ptr %.08801129.us.i, i64 %i.uk ; 2 uses
  %i.agz = getelementptr inbounds nuw [4 x i8], ptr %.08831128.us.i, i64 %i.uk ; 2 uses
  %i.aha = getelementptr inbounds nuw [4 x i8], ptr %.08861127.us.i, i64 %i.uk ; 2 uses
  %i.ahb = add nuw nsw i32 %.09461125.us.i, 8     ; 2 uses
  %i.ahc = or disjoint i32 %i.ahb, 7
  %i.ahd = icmp slt i32 %i.ahc, %i.p
  br i1 %i.ahd, label %.preheader1109.us.i, label %.preheader1112.i, !llvm.loop !598

.preheader1112.i:                                 ; preds = %._crit_edge.us.i, %_ZN4ncnn3MatD2Ev.exit1007.i
  %.0946.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1007.i ], [ %i.vd, %._crit_edge.us.i ] ; 4 uses
  %.0889.lcssa.i = phi ptr [ %i.yw, %_ZN4ncnn3MatD2Ev.exit1007.i ], [ %i.ags, %._crit_edge.us.i ] ; 3 uses
  %.0886.lcssa.i = phi ptr [ %i.yu, %_ZN4ncnn3MatD2Ev.exit1007.i ], [ %i.aha, %._crit_edge.us.i ] ; 3 uses
  %.0883.lcssa.i = phi ptr [ %i.yq, %_ZN4ncnn3MatD2Ev.exit1007.i ], [ %i.agz, %._crit_edge.us.i ] ; 3 uses
  %.0880.lcssa.i = phi ptr [ %i.ym, %_ZN4ncnn3MatD2Ev.exit1007.i ], [ %i.agy, %._crit_edge.us.i ] ; 3 uses
  %.0857.lcssa.i = phi ptr [ %i.yi, %_ZN4ncnn3MatD2Ev.exit1007.i ], [ %i.agx, %._crit_edge.us.i ] ; 3 uses
  %.0854.lcssa.i = phi ptr [ %i.ye, %_ZN4ncnn3MatD2Ev.exit1007.i ], [ %i.agw, %._crit_edge.us.i ] ; 3 uses
  %.0850.lcssa.i = phi ptr [ %i.ya, %_ZN4ncnn3MatD2Ev.exit1007.i ], [ %i.agv, %._crit_edge.us.i ] ; 3 uses
  %.0847.lcssa.i = phi ptr [ %i.xw, %_ZN4ncnn3MatD2Ev.exit1007.i ], [ %i.agu, %._crit_edge.us.i ] ; 3 uses
  %.0839.lcssa.i = phi ptr [ %i.xs, %_ZN4ncnn3MatD2Ev.exit1007.i ], [ %i.agt, %._crit_edge.us.i ] ; 3 uses
  %i.ahe = or disjoint i32 %.0946.lcssa.i, 3
  %i.ahf = icmp slt i32 %i.ahe, %i.p
  br i1 %i.ahf, label %.preheader1108.lr.ph.i, label %.preheader1111.i

.preheader1112.thread.i:                          ; preds = %.preheader1109.lr.ph.i
  br i1 %i.vh, label %.preheader1108.preheader.i, label %.preheader1111.i

.preheader1108.lr.ph.i:                           ; preds = %.preheader1112.i
  br i1 %i.uh, label %.preheader1108.us.i, label %.preheader1108.preheader.i

.preheader1108.preheader.i:                       ; preds = %.preheader1108.lr.ph.i, %.preheader1112.thread.i
  %.0946.lcssa18491878.i = phi i32 [ %.0946.lcssa.i, %.preheader1108.lr.ph.i ], [ %i.vd, %.preheader1112.thread.i ] ; 2 uses
  %.0889.lcssa18501877.i = phi ptr [ %.0889.lcssa.i, %.preheader1108.lr.ph.i ], [ %i.yw, %.preheader1112.thread.i ]
  %.0886.lcssa18511876.i = phi ptr [ %.0886.lcssa.i, %.preheader1108.lr.ph.i ], [ %scevgep1648.i, %.preheader1112.thread.i ]
  %.0883.lcssa18521875.i = phi ptr [ %.0883.lcssa.i, %.preheader1108.lr.ph.i ], [ %scevgep1644.i, %.preheader1112.thread.i ]
  %.0880.lcssa18531874.i = phi ptr [ %.0880.lcssa.i, %.preheader1108.lr.ph.i ], [ %scevgep1640.i, %.preheader1112.thread.i ]
  %.0857.lcssa18541873.i = phi ptr [ %.0857.lcssa.i, %.preheader1108.lr.ph.i ], [ %scevgep1636.i, %.preheader1112.thread.i ]
  %.0854.lcssa18551872.i = phi ptr [ %.0854.lcssa.i, %.preheader1108.lr.ph.i ], [ %scevgep1632.i, %.preheader1112.thread.i ]
  %.0850.lcssa18561871.i = phi ptr [ %.0850.lcssa.i, %.preheader1108.lr.ph.i ], [ %scevgep1628.i, %.preheader1112.thread.i ]
  %.0847.lcssa18571870.i = phi ptr [ %.0847.lcssa.i, %.preheader1108.lr.ph.i ], [ %scevgep1624.i, %.preheader1112.thread.i ]
  %.0839.lcssa18581869.i = phi ptr [ %.0839.lcssa.i, %.preheader1108.lr.ph.i ], [ %scevgep1620.i, %.preheader1112.thread.i ]
  %i.ahg = sub i32 %i.ve, %.0946.lcssa18491878.i
  %i.ahh = and i32 %i.ahg, -4                     ; 2 uses
  %i.ahi = zext i32 %i.ahh to i64
  %i.ahj = add nuw nsw i64 %i.ahi, 4
  %i.ahk = mul nsw i64 %i.ahj, %i.um              ; 8 uses
  %scevgep1652.i = getelementptr i8, ptr %.0839.lcssa18581869.i, i64 %i.ahk
  %scevgep1653.i = getelementptr i8, ptr %.0847.lcssa18571870.i, i64 %i.ahk
  %scevgep1654.i = getelementptr i8, ptr %.0850.lcssa18561871.i, i64 %i.ahk
  %scevgep1655.i = getelementptr i8, ptr %.0854.lcssa18551872.i, i64 %i.ahk
  %scevgep1656.i = getelementptr i8, ptr %.0857.lcssa18541873.i, i64 %i.ahk
  %scevgep1657.i = getelementptr i8, ptr %.0880.lcssa18531874.i, i64 %i.ahk
  %scevgep1658.i = getelementptr i8, ptr %.0883.lcssa18521875.i, i64 %i.ahk
  %scevgep1659.i = getelementptr i8, ptr %.0886.lcssa18511876.i, i64 %i.ahk
  %i.ahl = add nsw i32 %.0946.lcssa18491878.i, 4
  %i.ahm = add i32 %i.ahl, %i.ahh
  br label %.preheader1111.i

.preheader1108.us.i:                              ; preds = %.preheader1108.lr.ph.i, %._crit_edge.us1186.i
  %.18401175.us.i = phi ptr [ %i.all, %._crit_edge.us1186.i ], [ %.0839.lcssa.i, %.preheader1108.lr.ph.i ] ; 2 uses
  %.18481174.us.i = phi ptr [ %i.alm, %._crit_edge.us1186.i ], [ %.0847.lcssa.i, %.preheader1108.lr.ph.i ] ; 2 uses
  %.18511173.us.i = phi ptr [ %i.aln, %._crit_edge.us1186.i ], [ %.0850.lcssa.i, %.preheader1108.lr.ph.i ] ; 2 uses
  %.18551172.us.i = phi ptr [ %i.alo, %._crit_edge.us1186.i ], [ %.0854.lcssa.i, %.preheader1108.lr.ph.i ] ; 2 uses
  %.18581171.us.i = phi ptr [ %i.alp, %._crit_edge.us1186.i ], [ %.0857.lcssa.i, %.preheader1108.lr.ph.i ] ; 2 uses
  %.18811170.us.i = phi ptr [ %i.alq, %._crit_edge.us1186.i ], [ %.0880.lcssa.i, %.preheader1108.lr.ph.i ] ; 2 uses
  %.18841169.us.i = phi ptr [ %i.alr, %._crit_edge.us1186.i ], [ %.0883.lcssa.i, %.preheader1108.lr.ph.i ] ; 2 uses
  %.18871168.us.i = phi ptr [ %i.als, %._crit_edge.us1186.i ], [ %.0886.lcssa.i, %.preheader1108.lr.ph.i ] ; 2 uses
  %.38921167.us.i = phi ptr [ %i.alk, %._crit_edge.us1186.i ], [ %.0889.lcssa.i, %.preheader1108.lr.ph.i ]
  %.19471166.us.i = phi i32 [ %i.alt, %._crit_edge.us1186.i ], [ %.0946.lcssa.i, %.preheader1108.lr.ph.i ]
  br label %bb.el

bb.el:                                            ; preds = %bb.el, %.preheader1108.us.i
  %indvars.iv1661.i = phi i64 [ 0, %.preheader1108.us.i ], [ %indvars.iv.next1662.i, %bb.el ] ; 9 uses
  %.48931165.us.i = phi ptr [ %.38921167.us.i, %.preheader1108.us.i ], [ %i.alk, %bb.el ] ; 3 uses
  %i.ahn = getelementptr inbounds nuw [4 x i8], ptr %.18401175.us.i, i64 %indvars.iv1661.i ; 2 uses
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %.18481174.us.i, i64 %indvars.iv1661.i ; 2 uses
  %i.ahp = getelementptr inbounds nuw [4 x i8], ptr %.18511173.us.i, i64 %indvars.iv1661.i ; 2 uses
  %i.ahq = getelementptr inbounds nuw [4 x i8], ptr %.18551172.us.i, i64 %indvars.iv1661.i ; 2 uses
  %i.ahr = getelementptr inbounds nuw [4 x i8], ptr %.18581171.us.i, i64 %indvars.iv1661.i ; 2 uses
  %i.ahs = getelementptr inbounds nuw [4 x i8], ptr %.18811170.us.i, i64 %indvars.iv1661.i ; 2 uses
  %i.aht = getelementptr inbounds nuw [4 x i8], ptr %.18841169.us.i, i64 %indvars.iv1661.i ; 2 uses
  %i.ahu = getelementptr inbounds nuw [4 x i8], ptr %.18871168.us.i, i64 %indvars.iv1661.i ; 2 uses
  %i.ahv = load i32, ptr %i.ahn, align 4, !tbaa !56
  %i.ahw = load i32, ptr %i.aho, align 4, !tbaa !56
  %i.ahx = load i32, ptr %i.ahp, align 4, !tbaa !56
  %i.ahy = load i32, ptr %i.ahq, align 4, !tbaa !56
  %i.ahz = load i32, ptr %i.ahr, align 4, !tbaa !56
  %i.aia = load i32, ptr %i.ahs, align 4, !tbaa !56
  %i.aib = load i32, ptr %i.aht, align 4, !tbaa !56
  %i.aic = load i32, ptr %i.ahu, align 4, !tbaa !56
  %i.aid = getelementptr inbounds nuw [4 x i8], ptr %i.ahn, i64 %i.ui ; 2 uses
  %i.aie = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %i.ui ; 2 uses
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr %i.ahp, i64 %i.ui ; 2 uses
  %i.aig = getelementptr inbounds nuw [4 x i8], ptr %i.ahq, i64 %i.ui ; 2 uses
  %i.aih = getelementptr inbounds nuw [4 x i8], ptr %i.ahr, i64 %i.ui ; 2 uses
  %i.aii = getelementptr inbounds nuw [4 x i8], ptr %i.ahs, i64 %i.ui ; 2 uses
  %i.aij = getelementptr inbounds nuw [4 x i8], ptr %i.aht, i64 %i.ui ; 2 uses
  %i.aik = getelementptr inbounds nuw [4 x i8], ptr %i.ahu, i64 %i.ui ; 2 uses
  %i.ail = load i32, ptr %i.aid, align 4, !tbaa !56
  %i.aim = load i32, ptr %i.aie, align 4, !tbaa !56
  %i.ain = load i32, ptr %i.aif, align 4, !tbaa !56
  %i.aio = load i32, ptr %i.aig, align 4, !tbaa !56
  %i.aip = load i32, ptr %i.aih, align 4, !tbaa !56
  %i.aiq = load i32, ptr %i.aii, align 4, !tbaa !56
  %i.air = load i32, ptr %i.aij, align 4, !tbaa !56
  %i.ais = load i32, ptr %i.aik, align 4, !tbaa !56
  %i.ait = insertelement <16 x i32> poison, i32 %i.ahv, i64 0
  %i.aiu = insertelement <16 x i32> %i.ait, i32 %i.ahw, i64 1
  %i.aiv = insertelement <16 x i32> %i.aiu, i32 %i.ahx, i64 2
  %i.aiw = insertelement <16 x i32> %i.aiv, i32 %i.ahy, i64 3
  %i.aix = insertelement <16 x i32> %i.aiw, i32 %i.ahz, i64 4
  %i.aiy = insertelement <16 x i32> %i.aix, i32 %i.aia, i64 5
  %i.aiz = insertelement <16 x i32> %i.aiy, i32 %i.aib, i64 6
  %i.aja = insertelement <16 x i32> %i.aiz, i32 %i.aic, i64 7
  %i.ajb = insertelement <16 x i32> %i.aja, i32 %i.ail, i64 8
  %i.ajc = insertelement <16 x i32> %i.ajb, i32 %i.aim, i64 9
  %i.ajd = insertelement <16 x i32> %i.ajc, i32 %i.ain, i64 10
  %i.aje = insertelement <16 x i32> %i.ajd, i32 %i.aio, i64 11
  %i.ajf = insertelement <16 x i32> %i.aje, i32 %i.aip, i64 12
  %i.ajg = insertelement <16 x i32> %i.ajf, i32 %i.aiq, i64 13
  %i.ajh = insertelement <16 x i32> %i.ajg, i32 %i.air, i64 14
  %i.aji = insertelement <16 x i32> %i.ajh, i32 %i.ais, i64 15
  %i.ajj = lshr <16 x i32> %i.aji, splat (i32 16)
  %i.ajk = trunc nuw <16 x i32> %i.ajj to <16 x i16>
  store <16 x i16> %i.ajk, ptr %.48931165.us.i, align 2, !tbaa !117
  %i.ajl = getelementptr inbounds nuw [4 x i8], ptr %i.aid, i64 %i.ui ; 2 uses
  %i.ajm = getelementptr inbounds nuw [4 x i8], ptr %i.aie, i64 %i.ui ; 2 uses
  %i.ajn = getelementptr inbounds nuw [4 x i8], ptr %i.aif, i64 %i.ui ; 2 uses
  %i.ajo = getelementptr inbounds nuw [4 x i8], ptr %i.aig, i64 %i.ui ; 2 uses
  %i.ajp = getelementptr inbounds nuw [4 x i8], ptr %i.aih, i64 %i.ui ; 2 uses
  %i.ajq = getelementptr inbounds nuw [4 x i8], ptr %i.aii, i64 %i.ui ; 2 uses
  %i.ajr = getelementptr inbounds nuw [4 x i8], ptr %i.aij, i64 %i.ui ; 2 uses
  %i.ajs = getelementptr inbounds nuw [4 x i8], ptr %i.aik, i64 %i.ui ; 2 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr %.48931165.us.i, i64 32
  %i.aju = load i32, ptr %i.ajl, align 4, !tbaa !56
  %i.ajv = load i32, ptr %i.ajm, align 4, !tbaa !56
  %i.ajw = load i32, ptr %i.ajn, align 4, !tbaa !56
  %i.ajx = load i32, ptr %i.ajo, align 4, !tbaa !56
  %i.ajy = load i32, ptr %i.ajp, align 4, !tbaa !56
  %i.ajz = load i32, ptr %i.ajq, align 4, !tbaa !56
  %i.aka = load i32, ptr %i.ajr, align 4, !tbaa !56
  %i.akb = load i32, ptr %i.ajs, align 4, !tbaa !56
  %i.akc = getelementptr inbounds nuw [4 x i8], ptr %i.ajl, i64 %i.ui
  %i.akd = getelementptr inbounds nuw [4 x i8], ptr %i.ajm, i64 %i.ui
  %i.ake = getelementptr inbounds nuw [4 x i8], ptr %i.ajn, i64 %i.ui
  %i.akf = getelementptr inbounds nuw [4 x i8], ptr %i.ajo, i64 %i.ui
  %i.akg = getelementptr inbounds nuw [4 x i8], ptr %i.ajp, i64 %i.ui
  %i.akh = getelementptr inbounds nuw [4 x i8], ptr %i.ajq, i64 %i.ui
  %i.aki = getelementptr inbounds nuw [4 x i8], ptr %i.ajr, i64 %i.ui
  %i.akj = getelementptr inbounds nuw [4 x i8], ptr %i.ajs, i64 %i.ui
  %i.akk = load i32, ptr %i.akc, align 4, !tbaa !56
  %i.akl = load i32, ptr %i.akd, align 4, !tbaa !56
  %i.akm = load i32, ptr %i.ake, align 4, !tbaa !56
  %i.akn = load i32, ptr %i.akf, align 4, !tbaa !56
  %i.ako = load i32, ptr %i.akg, align 4, !tbaa !56
  %i.akp = load i32, ptr %i.akh, align 4, !tbaa !56
  %i.akq = load i32, ptr %i.aki, align 4, !tbaa !56
  %i.akr = load i32, ptr %i.akj, align 4, !tbaa !56
  %i.aks = insertelement <16 x i32> poison, i32 %i.aju, i64 0
  %i.akt = insertelement <16 x i32> %i.aks, i32 %i.ajv, i64 1
  %i.aku = insertelement <16 x i32> %i.akt, i32 %i.ajw, i64 2
  %i.akv = insertelement <16 x i32> %i.aku, i32 %i.ajx, i64 3
  %i.akw = insertelement <16 x i32> %i.akv, i32 %i.ajy, i64 4
  %i.akx = insertelement <16 x i32> %i.akw, i32 %i.ajz, i64 5
  %i.aky = insertelement <16 x i32> %i.akx, i32 %i.aka, i64 6
  %i.akz = insertelement <16 x i32> %i.aky, i32 %i.akb, i64 7
  %i.ala = insertelement <16 x i32> %i.akz, i32 %i.akk, i64 8
  %i.alb = insertelement <16 x i32> %i.ala, i32 %i.akl, i64 9
  %i.alc = insertelement <16 x i32> %i.alb, i32 %i.akm, i64 10
  %i.ald = insertelement <16 x i32> %i.alc, i32 %i.akn, i64 11
  %i.ale = insertelement <16 x i32> %i.ald, i32 %i.ako, i64 12
  %i.alf = insertelement <16 x i32> %i.ale, i32 %i.akp, i64 13
  %i.alg = insertelement <16 x i32> %i.alf, i32 %i.akq, i64 14
  %i.alh = insertelement <16 x i32> %i.alg, i32 %i.akr, i64 15
  %i.ali = lshr <16 x i32> %i.alh, splat (i32 16)
  %i.alj = trunc nuw <16 x i32> %i.ali to <16 x i16>
  store <16 x i16> %i.alj, ptr %i.ajt, align 2, !tbaa !117
  %i.alk = getelementptr inbounds nuw i8, ptr %.48931165.us.i, i64 64 ; 3 uses
  %indvars.iv.next1662.i = add nuw nsw i64 %indvars.iv1661.i, 1 ; 2 uses
  %exitcond1665.not.i = icmp eq i64 %indvars.iv.next1662.i, %wide.trip.count.i
  br i1 %exitcond1665.not.i, label %._crit_edge.us1186.i, label %bb.el, !llvm.loop !599

._crit_edge.us1186.i:                             ; preds = %bb.el
  %i.all = getelementptr inbounds nuw [4 x i8], ptr %.18401175.us.i, i64 %i.um ; 2 uses
  %i.alm = getelementptr inbounds nuw [4 x i8], ptr %.18481174.us.i, i64 %i.um ; 2 uses
  %i.aln = getelementptr inbounds nuw [4 x i8], ptr %.18511173.us.i, i64 %i.um ; 2 uses
  %i.alo = getelementptr inbounds nuw [4 x i8], ptr %.18551172.us.i, i64 %i.um ; 2 uses
  %i.alp = getelementptr inbounds nuw [4 x i8], ptr %.18581171.us.i, i64 %i.um ; 2 uses
  %i.alq = getelementptr inbounds nuw [4 x i8], ptr %.18811170.us.i, i64 %i.um ; 2 uses
  %i.alr = getelementptr inbounds nuw [4 x i8], ptr %.18841169.us.i, i64 %i.um ; 2 uses
  %i.als = getelementptr inbounds nuw [4 x i8], ptr %.18871168.us.i, i64 %i.um ; 2 uses
  %i.alt = add nuw nsw i32 %.19471166.us.i, 4     ; 3 uses
  %i.alu = or disjoint i32 %i.alt, 3
  %i.alv = icmp slt i32 %i.alu, %i.p
  br i1 %i.alv, label %.preheader1108.us.i, label %.preheader1111.i, !llvm.loop !600

.preheader1111.i:                                 ; preds = %._crit_edge.us1186.i, %.preheader1108.preheader.i, %.preheader1112.thread.i, %.preheader1112.i
  %.1947.lcssa.i = phi i32 [ %.0946.lcssa.i, %.preheader1112.i ], [ %i.vd, %.preheader1112.thread.i ], [ %i.ahm, %.preheader1108.preheader.i ], [ %i.alt, %._crit_edge.us1186.i ] ; 3 uses
  %.3892.lcssa.i = phi ptr [ %.0889.lcssa.i, %.preheader1112.i ], [ %i.yw, %.preheader1112.thread.i ], [ %.0889.lcssa18501877.i, %.preheader1108.preheader.i ], [ %i.alk, %._crit_edge.us1186.i ] ; 2 uses
  %.1887.lcssa.i = phi ptr [ %.0886.lcssa.i, %.preheader1112.i ], [ %scevgep1648.i, %.preheader1112.thread.i ], [ %scevgep1659.i, %.preheader1108.preheader.i ], [ %i.als, %._crit_edge.us1186.i ] ; 2 uses
  %.1884.lcssa.i = phi ptr [ %.0883.lcssa.i, %.preheader1112.i ], [ %scevgep1644.i, %.preheader1112.thread.i ], [ %scevgep1658.i, %.preheader1108.preheader.i ], [ %i.alr, %._crit_edge.us1186.i ] ; 2 uses
  %.1881.lcssa.i = phi ptr [ %.0880.lcssa.i, %.preheader1112.i ], [ %scevgep1640.i, %.preheader1112.thread.i ], [ %scevgep1657.i, %.preheader1108.preheader.i ], [ %i.alq, %._crit_edge.us1186.i ] ; 2 uses
  %.1858.lcssa.i = phi ptr [ %.0857.lcssa.i, %.preheader1112.i ], [ %scevgep1636.i, %.preheader1112.thread.i ], [ %scevgep1656.i, %.preheader1108.preheader.i ], [ %i.alp, %._crit_edge.us1186.i ] ; 2 uses
  %.1855.lcssa.i = phi ptr [ %.0854.lcssa.i, %.preheader1112.i ], [ %scevgep1632.i, %.preheader1112.thread.i ], [ %scevgep1655.i, %.preheader1108.preheader.i ], [ %i.alo, %._crit_edge.us1186.i ] ; 2 uses
  %.1851.lcssa.i = phi ptr [ %.0850.lcssa.i, %.preheader1112.i ], [ %scevgep1628.i, %.preheader1112.thread.i ], [ %scevgep1654.i, %.preheader1108.preheader.i ], [ %i.aln, %._crit_edge.us1186.i ] ; 2 uses
  %.1848.lcssa.i = phi ptr [ %.0847.lcssa.i, %.preheader1112.i ], [ %scevgep1624.i, %.preheader1112.thread.i ], [ %scevgep1653.i, %.preheader1108.preheader.i ], [ %i.alm, %._crit_edge.us1186.i ] ; 2 uses
  %.1840.lcssa.i = phi ptr [ %.0839.lcssa.i, %.preheader1112.i ], [ %scevgep1620.i, %.preheader1112.thread.i ], [ %scevgep1652.i, %.preheader1108.preheader.i ], [ %i.all, %._crit_edge.us1186.i ] ; 2 uses
  %i.alw = or disjoint i32 %.1947.lcssa.i, 1
  %i.alx = icmp slt i32 %i.alw, %i.p
  br i1 %i.alx, label %.preheader1107.lr.ph.i, label %.preheader1110.i

.preheader1107.lr.ph.i:                           ; preds = %.preheader1111.i
  br i1 %i.uh, label %.preheader1107.us.i, label %._crit_edge1246.split.i

.preheader1107.us.i:                              ; preds = %.preheader1107.lr.ph.i, %._crit_edge.us1230.i
  %.28411219.us.i = phi ptr [ %i.anx, %._crit_edge.us1230.i ], [ %.1840.lcssa.i, %.preheader1107.lr.ph.i ] ; 2 uses
  %.28491218.us.i = phi ptr [ %i.any, %._crit_edge.us1230.i ], [ %.1848.lcssa.i, %.preheader1107.lr.ph.i ] ; 2 uses
  %.28521217.us.i = phi ptr [ %i.anz, %._crit_edge.us1230.i ], [ %.1851.lcssa.i, %.preheader1107.lr.ph.i ] ; 2 uses
  %.28561216.us.i = phi ptr [ %i.aoa, %._crit_edge.us1230.i ], [ %.1855.lcssa.i, %.preheader1107.lr.ph.i ] ; 2 uses
  %.28591215.us.i = phi ptr [ %i.aob, %._crit_edge.us1230.i ], [ %.1858.lcssa.i, %.preheader1107.lr.ph.i ] ; 2 uses
  %.28821214.us.i = phi ptr [ %i.aoc, %._crit_edge.us1230.i ], [ %.1881.lcssa.i, %.preheader1107.lr.ph.i ] ; 2 uses
  %.28851213.us.i = phi ptr [ %i.aod, %._crit_edge.us1230.i ], [ %.1884.lcssa.i, %.preheader1107.lr.ph.i ] ; 2 uses
  %.28881212.us.i = phi ptr [ %i.aoe, %._crit_edge.us1230.i ], [ %.1887.lcssa.i, %.preheader1107.lr.ph.i ] ; 2 uses
  %.68951211.us.i = phi ptr [ %i.anw, %._crit_edge.us1230.i ], [ %.3892.lcssa.i, %.preheader1107.lr.ph.i ]
  %.29481210.us.i = phi i32 [ %i.aof, %._crit_edge.us1230.i ], [ %.1947.lcssa.i, %.preheader1107.lr.ph.i ]
  br label %bb.em

bb.em:                                            ; preds = %bb.em, %.preheader1107.us.i
  %indvars.iv1674.i = phi i64 [ 0, %.preheader1107.us.i ], [ %indvars.iv.next1675.i, %bb.em ] ; 9 uses
  %.78961209.us.i = phi ptr [ %.68951211.us.i, %.preheader1107.us.i ], [ %i.anw, %bb.em ] ; 2 uses
  %i.aly = getelementptr inbounds nuw [4 x i8], ptr %.28411219.us.i, i64 %indvars.iv1674.i ; 2 uses
  %i.alz = getelementptr inbounds nuw [4 x i8], ptr %.28491218.us.i, i64 %indvars.iv1674.i ; 2 uses
  %i.ama = getelementptr inbounds nuw [4 x i8], ptr %.28521217.us.i, i64 %indvars.iv1674.i ; 2 uses
  %i.amb = getelementptr inbounds nuw [4 x i8], ptr %.28561216.us.i, i64 %indvars.iv1674.i ; 2 uses
  %i.amc = getelementptr inbounds nuw [4 x i8], ptr %.28591215.us.i, i64 %indvars.iv1674.i ; 2 uses
  %i.amd = getelementptr inbounds nuw [4 x i8], ptr %.28821214.us.i, i64 %indvars.iv1674.i ; 2 uses
  %i.ame = getelementptr inbounds nuw [4 x i8], ptr %.28851213.us.i, i64 %indvars.iv1674.i ; 2 uses
  %i.amf = getelementptr inbounds nuw [4 x i8], ptr %.28881212.us.i, i64 %indvars.iv1674.i ; 2 uses
  %i.amg = load i32, ptr %i.aly, align 4, !tbaa !56
  %i.amh = load i32, ptr %i.alz, align 4, !tbaa !56
  %i.ami = load i32, ptr %i.ama, align 4, !tbaa !56
  %i.amj = load i32, ptr %i.amb, align 4, !tbaa !56
  %i.amk = load i32, ptr %i.amc, align 4, !tbaa !56
  %i.aml = load i32, ptr %i.amd, align 4, !tbaa !56
  %i.amm = load i32, ptr %i.ame, align 4, !tbaa !56
  %i.amn = load i32, ptr %i.amf, align 4, !tbaa !56
  %i.amo = getelementptr inbounds nuw [4 x i8], ptr %i.aly, i64 %i.ui
  %i.amp = getelementptr inbounds nuw [4 x i8], ptr %i.alz, i64 %i.ui
  %i.amq = getelementptr inbounds nuw [4 x i8], ptr %i.ama, i64 %i.ui
  %i.amr = getelementptr inbounds nuw [4 x i8], ptr %i.amb, i64 %i.ui
  %i.ams = getelementptr inbounds nuw [4 x i8], ptr %i.amc, i64 %i.ui
  %i.amt = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %i.ui
  %i.amu = getelementptr inbounds nuw [4 x i8], ptr %i.ame, i64 %i.ui
  %i.amv = getelementptr inbounds nuw [4 x i8], ptr %i.amf, i64 %i.ui
  %i.amw = load i32, ptr %i.amo, align 4, !tbaa !56
end_hunk_5
begin_hunk_6_@_ZN4ncnn19Convolution_x86_fma21create_pipeline_bf16sERKNS_6OptionE:bb.a
  %i.avh = trunc nuw i32 %i.avg to i16
  %i.avi = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 12
  store i16 %i.avh, ptr %i.avi, align 2, !tbaa !117
  %i.avj = load i32, ptr %i.auw, align 4, !tbaa !56
  %i.avk = lshr i32 %i.avj, 16
  %i.avl = trunc nuw i32 %i.avk to i16
  %i.avm = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 14
  store i16 %i.avl, ptr %i.avm, align 2, !tbaa !117
  %i.avn = getelementptr inbounds nuw [4 x i8], ptr %i.aut, i64 %i.vv ; 2 uses
  %i.avo = getelementptr inbounds nuw [4 x i8], ptr %i.auu, i64 %i.vv ; 2 uses
  %i.avp = getelementptr inbounds nuw [4 x i8], ptr %i.auv, i64 %i.vv ; 2 uses
  %i.avq = getelementptr inbounds nuw [4 x i8], ptr %i.auw, i64 %i.vv ; 2 uses
  %i.avr = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 16
  %i.avs = load i32, ptr %i.avn, align 4, !tbaa !56
  %i.avt = lshr i32 %i.avs, 16
  %i.avu = trunc nuw i32 %i.avt to i16
  store i16 %i.avu, ptr %i.avr, align 2, !tbaa !117
  %i.avv = load i32, ptr %i.avo, align 4, !tbaa !56
  %i.avw = lshr i32 %i.avv, 16
  %i.avx = trunc nuw i32 %i.avw to i16
  %i.avy = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 18
  store i16 %i.avx, ptr %i.avy, align 2, !tbaa !117
  %i.avz = load i32, ptr %i.avp, align 4, !tbaa !56
  %i.awa = lshr i32 %i.avz, 16
  %i.awb = trunc nuw i32 %i.awa to i16
  %i.awc = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 20
  store i16 %i.awb, ptr %i.awc, align 2, !tbaa !117
  %i.awd = load i32, ptr %i.avq, align 4, !tbaa !56
  %i.awe = lshr i32 %i.awd, 16
  %i.awf = trunc nuw i32 %i.awe to i16
  %i.awg = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 22
  store i16 %i.awf, ptr %i.awg, align 2, !tbaa !117
  %i.awh = getelementptr inbounds nuw [4 x i8], ptr %i.avn, i64 %i.vv ; 2 uses
  %i.awi = getelementptr inbounds nuw [4 x i8], ptr %i.avo, i64 %i.vv ; 2 uses
  %i.awj = getelementptr inbounds nuw [4 x i8], ptr %i.avp, i64 %i.vv ; 2 uses
  %i.awk = getelementptr inbounds nuw [4 x i8], ptr %i.avq, i64 %i.vv ; 2 uses
  %i.awl = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 24
  %i.awm = load i32, ptr %i.awh, align 4, !tbaa !56
  %i.awn = lshr i32 %i.awm, 16
  %i.awo = trunc nuw i32 %i.awn to i16
  store i16 %i.awo, ptr %i.awl, align 2, !tbaa !117
  %i.awp = load i32, ptr %i.awi, align 4, !tbaa !56
  %i.awq = lshr i32 %i.awp, 16
  %i.awr = trunc nuw i32 %i.awq to i16
  %i.aws = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 26
  store i16 %i.awr, ptr %i.aws, align 2, !tbaa !117
  %i.awt = load i32, ptr %i.awj, align 4, !tbaa !56
  %i.awu = lshr i32 %i.awt, 16
  %i.awv = trunc nuw i32 %i.awu to i16
  %i.aww = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 28
  store i16 %i.awv, ptr %i.aww, align 2, !tbaa !117
  %i.awx = load i32, ptr %i.awk, align 4, !tbaa !56
  %i.awy = lshr i32 %i.awx, 16
  %i.awz = trunc nuw i32 %i.awy to i16
  %i.axa = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 30
  store i16 %i.awz, ptr %i.axa, align 2, !tbaa !117
  %i.axb = getelementptr inbounds nuw [4 x i8], ptr %i.awh, i64 %i.vv ; 2 uses
  %i.axc = getelementptr inbounds nuw [4 x i8], ptr %i.awi, i64 %i.vv ; 2 uses
  %i.axd = getelementptr inbounds nuw [4 x i8], ptr %i.awj, i64 %i.vv ; 2 uses
  %i.axe = getelementptr inbounds nuw [4 x i8], ptr %i.awk, i64 %i.vv ; 2 uses
  %i.axf = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 32
  %i.axg = load i32, ptr %i.axb, align 4, !tbaa !56
  %i.axh = lshr i32 %i.axg, 16
  %i.axi = trunc nuw i32 %i.axh to i16
  store i16 %i.axi, ptr %i.axf, align 2, !tbaa !117
  %i.axj = load i32, ptr %i.axc, align 4, !tbaa !56
  %i.axk = lshr i32 %i.axj, 16
  %i.axl = trunc nuw i32 %i.axk to i16
  %i.axm = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 34
  store i16 %i.axl, ptr %i.axm, align 2, !tbaa !117
  %i.axn = load i32, ptr %i.axd, align 4, !tbaa !56
  %i.axo = lshr i32 %i.axn, 16
  %i.axp = trunc nuw i32 %i.axo to i16
  %i.axq = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 36
  store i16 %i.axp, ptr %i.axq, align 2, !tbaa !117
  %i.axr = load i32, ptr %i.axe, align 4, !tbaa !56
  %i.axs = lshr i32 %i.axr, 16
  %i.axt = trunc nuw i32 %i.axs to i16
  %i.axu = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 38
  store i16 %i.axt, ptr %i.axu, align 2, !tbaa !117
  %i.axv = getelementptr inbounds nuw [4 x i8], ptr %i.axb, i64 %i.vv ; 2 uses
  %i.axw = getelementptr inbounds nuw [4 x i8], ptr %i.axc, i64 %i.vv ; 2 uses
  %i.axx = getelementptr inbounds nuw [4 x i8], ptr %i.axd, i64 %i.vv ; 2 uses
  %i.axy = getelementptr inbounds nuw [4 x i8], ptr %i.axe, i64 %i.vv ; 2 uses
  %i.axz = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 40
  %i.aya = load i32, ptr %i.axv, align 4, !tbaa !56
  %i.ayb = lshr i32 %i.aya, 16
  %i.ayc = trunc nuw i32 %i.ayb to i16
  store i16 %i.ayc, ptr %i.axz, align 2, !tbaa !117
  %i.ayd = load i32, ptr %i.axw, align 4, !tbaa !56
  %i.aye = lshr i32 %i.ayd, 16
  %i.ayf = trunc nuw i32 %i.aye to i16
  %i.ayg = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 42
  store i16 %i.ayf, ptr %i.ayg, align 2, !tbaa !117
  %i.ayh = load i32, ptr %i.axx, align 4, !tbaa !56
  %i.ayi = lshr i32 %i.ayh, 16
  %i.ayj = trunc nuw i32 %i.ayi to i16
  %i.ayk = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 44
  store i16 %i.ayj, ptr %i.ayk, align 2, !tbaa !117
  %i.ayl = load i32, ptr %i.axy, align 4, !tbaa !56
  %i.aym = lshr i32 %i.ayl, 16
  %i.ayn = trunc nuw i32 %i.aym to i16
  %i.ayo = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 46
  store i16 %i.ayn, ptr %i.ayo, align 2, !tbaa !117
  %i.ayp = getelementptr inbounds nuw [4 x i8], ptr %i.axv, i64 %i.vv ; 2 uses
  %i.ayq = getelementptr inbounds nuw [4 x i8], ptr %i.axw, i64 %i.vv ; 2 uses
  %i.ayr = getelementptr inbounds nuw [4 x i8], ptr %i.axx, i64 %i.vv ; 2 uses
  %i.ays = getelementptr inbounds nuw [4 x i8], ptr %i.axy, i64 %i.vv ; 2 uses
  %i.ayt = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 48
  %i.ayu = load i32, ptr %i.ayp, align 4, !tbaa !56
  %i.ayv = lshr i32 %i.ayu, 16
  %i.ayw = trunc nuw i32 %i.ayv to i16
  store i16 %i.ayw, ptr %i.ayt, align 2, !tbaa !117
  %i.ayx = load i32, ptr %i.ayq, align 4, !tbaa !56
  %i.ayy = lshr i32 %i.ayx, 16
  %i.ayz = trunc nuw i32 %i.ayy to i16
  %i.aza = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 50
  store i16 %i.ayz, ptr %i.aza, align 2, !tbaa !117
  %i.azb = load i32, ptr %i.ayr, align 4, !tbaa !56
  %i.azc = lshr i32 %i.azb, 16
  %i.azd = trunc nuw i32 %i.azc to i16
  %i.aze = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 52
  store i16 %i.azd, ptr %i.aze, align 2, !tbaa !117
  %i.azf = load i32, ptr %i.ays, align 4, !tbaa !56
  %i.azg = lshr i32 %i.azf, 16
  %i.azh = trunc nuw i32 %i.azg to i16
  %i.azi = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 54
  store i16 %i.azh, ptr %i.azi, align 2, !tbaa !117
  %i.azj = getelementptr inbounds nuw [4 x i8], ptr %i.ayp, i64 %i.vv
  %i.azk = getelementptr inbounds nuw [4 x i8], ptr %i.ayq, i64 %i.vv
  %i.azl = getelementptr inbounds nuw [4 x i8], ptr %i.ayr, i64 %i.vv
  %i.azm = getelementptr inbounds nuw [4 x i8], ptr %i.ays, i64 %i.vv
  %i.azn = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 56
  %i.azo = load i32, ptr %i.azj, align 4, !tbaa !56
  %i.azp = lshr i32 %i.azo, 16
  %i.azq = trunc nuw i32 %i.azp to i16
  store i16 %i.azq, ptr %i.azn, align 2, !tbaa !117
  %i.azr = load i32, ptr %i.azk, align 4, !tbaa !56
  %i.azs = lshr i32 %i.azr, 16
  %i.azt = trunc nuw i32 %i.azs to i16
  %i.azu = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 58
  store i16 %i.azt, ptr %i.azu, align 2, !tbaa !117
  %i.azv = load i32, ptr %i.azl, align 4, !tbaa !56
  %i.azw = lshr i32 %i.azv, 16
  %i.azx = trunc nuw i32 %i.azw to i16
  %i.azy = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 60
  store i16 %i.azx, ptr %i.azy, align 2, !tbaa !117
  %i.azz = load i32, ptr %i.azm, align 4, !tbaa !56
  %i.baa = lshr i32 %i.azz, 16
  %i.bab = trunc nuw i32 %i.baa to i16
  %i.bac = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 62
  store i16 %i.bab, ptr %i.bac, align 2, !tbaa !117
  %i.bad = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 64 ; 3 uses
  %indvars.iv.next1706.i = add nuw nsw i64 %indvars.iv1705.i, 1 ; 2 uses
  %exitcond1709.not.i = icmp eq i64 %indvars.iv.next1706.i, %wide.trip.count1708.i
  br i1 %exitcond1709.not.i, label %._crit_edge1257.us.i, label %bb.en, !llvm.loop !609

._crit_edge1257.us.i:                             ; preds = %bb.en
  %i.bae = getelementptr inbounds nuw [4 x i8], ptr %.09431259.us.i, i64 %i.vx ; 2 uses
  %i.baf = getelementptr inbounds nuw [4 x i8], ptr %.09401260.us.i, i64 %i.vx ; 2 uses
  %i.bag = getelementptr inbounds nuw [4 x i8], ptr %.09371261.us.i, i64 %i.vx ; 2 uses
  %i.bah = getelementptr inbounds nuw [4 x i8], ptr %.09341262.us.i, i64 %i.vx ; 2 uses
  %i.bai = add nuw nsw i32 %.09191264.us.i, 8     ; 2 uses
  %i.baj = or disjoint i32 %i.bai, 7
  %i.bak = icmp slt i32 %i.baj, %i.p
  br i1 %i.bak, label %.preheader1101.us.i, label %.preheader1104.i, !llvm.loop !610

.preheader1104.i:                                 ; preds = %._crit_edge1257.us.i, %_ZN4ncnn3MatD2Ev.exit1006.i
  %.0943.lcssa.i = phi ptr [ %i.ati, %_ZN4ncnn3MatD2Ev.exit1006.i ], [ %i.bae, %._crit_edge1257.us.i ] ; 3 uses
  %.0940.lcssa.i = phi ptr [ %i.atm, %_ZN4ncnn3MatD2Ev.exit1006.i ], [ %i.baf, %._crit_edge1257.us.i ] ; 3 uses
  %.0937.lcssa.i = phi ptr [ %i.atq, %_ZN4ncnn3MatD2Ev.exit1006.i ], [ %i.bag, %._crit_edge1257.us.i ] ; 3 uses
  %.0934.lcssa.i = phi ptr [ %i.att, %_ZN4ncnn3MatD2Ev.exit1006.i ], [ %i.bah, %._crit_edge1257.us.i ] ; 3 uses
  %.0923.lcssa.i = phi ptr [ %i.atz, %_ZN4ncnn3MatD2Ev.exit1006.i ], [ %i.bad, %._crit_edge1257.us.i ] ; 3 uses
  %.0919.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1006.i ], [ %i.wq, %._crit_edge1257.us.i ] ; 4 uses
  %i.bal = or disjoint i32 %.0919.lcssa.i, 3
  %i.bam = icmp slt i32 %i.bal, %i.p
  br i1 %i.bam, label %.preheader1100.lr.ph.i, label %.preheader1103.i

.preheader1104.thread.i:                          ; preds = %.preheader1101.lr.ph.i
  br i1 %i.ww, label %.preheader1100.preheader.i, label %.preheader1103.i

.preheader1100.lr.ph.i:                           ; preds = %.preheader1104.i
  br i1 %i.vu, label %.preheader1100.us.i, label %.preheader1100.preheader.i

.preheader1100.preheader.i:                       ; preds = %.preheader1100.lr.ph.i, %.preheader1104.thread.i
  %.0943.lcssa18961913.i = phi ptr [ %.0943.lcssa.i, %.preheader1100.lr.ph.i ], [ %scevgep1691.i, %.preheader1104.thread.i ]
  %.0940.lcssa18971912.i = phi ptr [ %.0940.lcssa.i, %.preheader1100.lr.ph.i ], [ %scevgep1695.i, %.preheader1104.thread.i ]
  %.0937.lcssa18981911.i = phi ptr [ %.0937.lcssa.i, %.preheader1100.lr.ph.i ], [ %scevgep1699.i, %.preheader1104.thread.i ]
  %.0934.lcssa18991910.i = phi ptr [ %.0934.lcssa.i, %.preheader1100.lr.ph.i ], [ %scevgep1703.i, %.preheader1104.thread.i ]
  %.0923.lcssa19001909.i = phi ptr [ %.0923.lcssa.i, %.preheader1100.lr.ph.i ], [ %i.atz, %.preheader1104.thread.i ]
  %.0919.lcssa19011908.i = phi i32 [ %.0919.lcssa.i, %.preheader1100.lr.ph.i ], [ %i.wq, %.preheader1104.thread.i ] ; 2 uses
  %i.ban = sub i32 %i.wr, %.0919.lcssa19011908.i
  %i.bao = and i32 %i.ban, -4                     ; 2 uses
  %i.bap = zext i32 %i.bao to i64
  %i.baq = add nuw nsw i64 %i.bap, 4
  %i.bar = mul nsw i64 %i.baq, %i.vz              ; 4 uses
  %scevgep1710.i = getelementptr i8, ptr %.0943.lcssa18961913.i, i64 %i.bar
  %scevgep1711.i = getelementptr i8, ptr %.0940.lcssa18971912.i, i64 %i.bar
  %scevgep1712.i = getelementptr i8, ptr %.0937.lcssa18981911.i, i64 %i.bar
  %scevgep1713.i = getelementptr i8, ptr %.0934.lcssa18991910.i, i64 %i.bar
  %i.bas = add nsw i32 %.0919.lcssa19011908.i, 4
  %i.bat = add i32 %i.bas, %i.bao
  br label %.preheader1103.i

.preheader1100.us.i:                              ; preds = %.preheader1100.lr.ph.i, %._crit_edge1285.us.i
  %.19201292.us.i = phi i32 [ %i.bea, %._crit_edge1285.us.i ], [ %.0919.lcssa.i, %.preheader1100.lr.ph.i ]
  %.39261291.us.i = phi ptr [ %i.bdv, %._crit_edge1285.us.i ], [ %.0923.lcssa.i, %.preheader1100.lr.ph.i ]
  %.19351290.us.i = phi ptr [ %i.bdz, %._crit_edge1285.us.i ], [ %.0934.lcssa.i, %.preheader1100.lr.ph.i ] ; 2 uses
  %.19381289.us.i = phi ptr [ %i.bdy, %._crit_edge1285.us.i ], [ %.0937.lcssa.i, %.preheader1100.lr.ph.i ] ; 2 uses
  %.19411288.us.i = phi ptr [ %i.bdx, %._crit_edge1285.us.i ], [ %.0940.lcssa.i, %.preheader1100.lr.ph.i ] ; 2 uses
  %.19441287.us.i = phi ptr [ %i.bdw, %._crit_edge1285.us.i ], [ %.0943.lcssa.i, %.preheader1100.lr.ph.i ] ; 2 uses
  br label %bb.eo

bb.eo:                                            ; preds = %bb.eo, %.preheader1100.us.i
  %indvars.iv1715.i = phi i64 [ 0, %.preheader1100.us.i ], [ %indvars.iv.next1716.i, %bb.eo ] ; 5 uses
  %.49271283.us.i = phi ptr [ %.39261291.us.i, %.preheader1100.us.i ], [ %i.bdv, %bb.eo ] ; 17 uses
  %i.bau = getelementptr inbounds nuw [4 x i8], ptr %.19441287.us.i, i64 %indvars.iv1715.i ; 2 uses
  %i.bav = getelementptr inbounds nuw [4 x i8], ptr %.19411288.us.i, i64 %indvars.iv1715.i ; 2 uses
  %i.baw = getelementptr inbounds nuw [4 x i8], ptr %.19381289.us.i, i64 %indvars.iv1715.i ; 2 uses
  %i.bax = getelementptr inbounds nuw [4 x i8], ptr %.19351290.us.i, i64 %indvars.iv1715.i ; 2 uses
  %i.bay = load i32, ptr %i.bau, align 4, !tbaa !56
  %i.baz = lshr i32 %i.bay, 16
  %i.bba = trunc nuw i32 %i.baz to i16
  store i16 %i.bba, ptr %.49271283.us.i, align 2, !tbaa !117
  %i.bbb = load i32, ptr %i.bav, align 4, !tbaa !56
  %i.bbc = lshr i32 %i.bbb, 16
  %i.bbd = trunc nuw i32 %i.bbc to i16
  %i.bbe = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 2
  store i16 %i.bbd, ptr %i.bbe, align 2, !tbaa !117
  %i.bbf = load i32, ptr %i.baw, align 4, !tbaa !56
  %i.bbg = lshr i32 %i.bbf, 16
  %i.bbh = trunc nuw i32 %i.bbg to i16
  %i.bbi = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 4
  store i16 %i.bbh, ptr %i.bbi, align 2, !tbaa !117
  %i.bbj = load i32, ptr %i.bax, align 4, !tbaa !56
  %i.bbk = lshr i32 %i.bbj, 16
  %i.bbl = trunc nuw i32 %i.bbk to i16
  %i.bbm = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 6
  store i16 %i.bbl, ptr %i.bbm, align 2, !tbaa !117
  %i.bbn = getelementptr inbounds nuw [4 x i8], ptr %i.bau, i64 %i.vv ; 2 uses
  %i.bbo = getelementptr inbounds nuw [4 x i8], ptr %i.bav, i64 %i.vv ; 2 uses
  %i.bbp = getelementptr inbounds nuw [4 x i8], ptr %i.baw, i64 %i.vv ; 2 uses
  %i.bbq = getelementptr inbounds nuw [4 x i8], ptr %i.bax, i64 %i.vv ; 2 uses
  %i.bbr = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 8
  %i.bbs = load i32, ptr %i.bbn, align 4, !tbaa !56
  %i.bbt = lshr i32 %i.bbs, 16
  %i.bbu = trunc nuw i32 %i.bbt to i16
  store i16 %i.bbu, ptr %i.bbr, align 2, !tbaa !117
  %i.bbv = load i32, ptr %i.bbo, align 4, !tbaa !56
  %i.bbw = lshr i32 %i.bbv, 16
  %i.bbx = trunc nuw i32 %i.bbw to i16
  %i.bby = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 10
  store i16 %i.bbx, ptr %i.bby, align 2, !tbaa !117
  %i.bbz = load i32, ptr %i.bbp, align 4, !tbaa !56
  %i.bca = lshr i32 %i.bbz, 16
  %i.bcb = trunc nuw i32 %i.bca to i16
  %i.bcc = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 12
  store i16 %i.bcb, ptr %i.bcc, align 2, !tbaa !117
  %i.bcd = load i32, ptr %i.bbq, align 4, !tbaa !56
  %i.bce = lshr i32 %i.bcd, 16
  %i.bcf = trunc nuw i32 %i.bce to i16
  %i.bcg = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 14
  store i16 %i.bcf, ptr %i.bcg, align 2, !tbaa !117
  %i.bch = getelementptr inbounds nuw [4 x i8], ptr %i.bbn, i64 %i.vv ; 2 uses
  %i.bci = getelementptr inbounds nuw [4 x i8], ptr %i.bbo, i64 %i.vv ; 2 uses
  %i.bcj = getelementptr inbounds nuw [4 x i8], ptr %i.bbp, i64 %i.vv ; 2 uses
  %i.bck = getelementptr inbounds nuw [4 x i8], ptr %i.bbq, i64 %i.vv ; 2 uses
  %i.bcl = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 16
  %i.bcm = load i32, ptr %i.bch, align 4, !tbaa !56
  %i.bcn = lshr i32 %i.bcm, 16
  %i.bco = trunc nuw i32 %i.bcn to i16
  store i16 %i.bco, ptr %i.bcl, align 2, !tbaa !117
  %i.bcp = load i32, ptr %i.bci, align 4, !tbaa !56
  %i.bcq = lshr i32 %i.bcp, 16
  %i.bcr = trunc nuw i32 %i.bcq to i16
  %i.bcs = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 18
  store i16 %i.bcr, ptr %i.bcs, align 2, !tbaa !117
  %i.bct = load i32, ptr %i.bcj, align 4, !tbaa !56
  %i.bcu = lshr i32 %i.bct, 16
  %i.bcv = trunc nuw i32 %i.bcu to i16
  %i.bcw = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 20
  store i16 %i.bcv, ptr %i.bcw, align 2, !tbaa !117
  %i.bcx = load i32, ptr %i.bck, align 4, !tbaa !56
  %i.bcy = lshr i32 %i.bcx, 16
  %i.bcz = trunc nuw i32 %i.bcy to i16
  %i.bda = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 22
  store i16 %i.bcz, ptr %i.bda, align 2, !tbaa !117
  %i.bdb = getelementptr inbounds nuw [4 x i8], ptr %i.bch, i64 %i.vv
  %i.bdc = getelementptr inbounds nuw [4 x i8], ptr %i.bci, i64 %i.vv
  %i.bdd = getelementptr inbounds nuw [4 x i8], ptr %i.bcj, i64 %i.vv
  %i.bde = getelementptr inbounds nuw [4 x i8], ptr %i.bck, i64 %i.vv
  %i.bdf = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 24
  %i.bdg = load i32, ptr %i.bdb, align 4, !tbaa !56
  %i.bdh = lshr i32 %i.bdg, 16
  %i.bdi = trunc nuw i32 %i.bdh to i16
  store i16 %i.bdi, ptr %i.bdf, align 2, !tbaa !117
  %i.bdj = load i32, ptr %i.bdc, align 4, !tbaa !56
  %i.bdk = lshr i32 %i.bdj, 16
  %i.bdl = trunc nuw i32 %i.bdk to i16
  %i.bdm = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 26
  store i16 %i.bdl, ptr %i.bdm, align 2, !tbaa !117
  %i.bdn = load i32, ptr %i.bdd, align 4, !tbaa !56
  %i.bdo = lshr i32 %i.bdn, 16
  %i.bdp = trunc nuw i32 %i.bdo to i16
  %i.bdq = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 28
  store i16 %i.bdp, ptr %i.bdq, align 2, !tbaa !117
  %i.bdr = load i32, ptr %i.bde, align 4, !tbaa !56
  %i.bds = lshr i32 %i.bdr, 16
  %i.bdt = trunc nuw i32 %i.bds to i16
  %i.bdu = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 30
  store i16 %i.bdt, ptr %i.bdu, align 2, !tbaa !117
  %i.bdv = getelementptr inbounds nuw i8, ptr %.49271283.us.i, i64 32 ; 3 uses
  %indvars.iv.next1716.i = add nuw nsw i64 %indvars.iv1715.i, 1 ; 2 uses
  %exitcond1719.not.i = icmp eq i64 %indvars.iv.next1716.i, %wide.trip.count1708.i
  br i1 %exitcond1719.not.i, label %._crit_edge1285.us.i, label %bb.eo, !llvm.loop !611

._crit_edge1285.us.i:                             ; preds = %bb.eo
  %i.bdw = getelementptr inbounds nuw [4 x i8], ptr %.19441287.us.i, i64 %i.vz ; 2 uses
  %i.bdx = getelementptr inbounds nuw [4 x i8], ptr %.19411288.us.i, i64 %i.vz ; 2 uses
  %i.bdy = getelementptr inbounds nuw [4 x i8], ptr %.19381289.us.i, i64 %i.vz ; 2 uses
  %i.bdz = getelementptr inbounds nuw [4 x i8], ptr %.19351290.us.i, i64 %i.vz ; 2 uses
  %i.bea = add nuw nsw i32 %.19201292.us.i, 4     ; 3 uses
  %i.beb = or disjoint i32 %i.bea, 3
  %i.bec = icmp slt i32 %i.beb, %i.p
  br i1 %i.bec, label %.preheader1100.us.i, label %.preheader1103.i, !llvm.loop !612

.preheader1103.i:                                 ; preds = %._crit_edge1285.us.i, %.preheader1100.preheader.i, %.preheader1104.thread.i, %.preheader1104.i
  %.1944.lcssa.i = phi ptr [ %.0943.lcssa.i, %.preheader1104.i ], [ %scevgep1691.i, %.preheader1104.thread.i ], [ %scevgep1710.i, %.preheader1100.preheader.i ], [ %i.bdw, %._crit_edge1285.us.i ] ; 2 uses
  %.1941.lcssa.i = phi ptr [ %.0940.lcssa.i, %.preheader1104.i ], [ %scevgep1695.i, %.preheader1104.thread.i ], [ %scevgep1711.i, %.preheader1100.preheader.i ], [ %i.bdx, %._crit_edge1285.us.i ] ; 2 uses
  %.1938.lcssa.i = phi ptr [ %.0937.lcssa.i, %.preheader1104.i ], [ %scevgep1699.i, %.preheader1104.thread.i ], [ %scevgep1712.i, %.preheader1100.preheader.i ], [ %i.bdy, %._crit_edge1285.us.i ] ; 2 uses
  %.1935.lcssa.i = phi ptr [ %.0934.lcssa.i, %.preheader1104.i ], [ %scevgep1703.i, %.preheader1104.thread.i ], [ %scevgep1713.i, %.preheader1100.preheader.i ], [ %i.bdz, %._crit_edge1285.us.i ] ; 2 uses
  %.3926.lcssa.i = phi ptr [ %.0923.lcssa.i, %.preheader1104.i ], [ %i.atz, %.preheader1104.thread.i ], [ %.0923.lcssa19001909.i, %.preheader1100.preheader.i ], [ %i.bdv, %._crit_edge1285.us.i ] ; 2 uses
  %.1920.lcssa.i = phi i32 [ %.0919.lcssa.i, %.preheader1104.i ], [ %i.wq, %.preheader1104.thread.i ], [ %i.bat, %.preheader1100.preheader.i ], [ %i.bea, %._crit_edge1285.us.i ] ; 3 uses
  %i.bed = or disjoint i32 %.1920.lcssa.i, 1
  %i.bee = icmp slt i32 %i.bed, %i.p
  br i1 %i.bee, label %.preheader1099.lr.ph.i, label %.preheader1102.i

.preheader1099.lr.ph.i:                           ; preds = %.preheader1103.i
  br i1 %i.vu, label %.preheader1099.us.i, label %._crit_edge1339.split.i

.preheader1099.us.i:                              ; preds = %.preheader1099.lr.ph.i, %._crit_edge1313.us.i
  %.29211320.us.i = phi i32 [ %i.bgy, %._crit_edge1313.us.i ], [ %.1920.lcssa.i, %.preheader1099.lr.ph.i ]
  %.69291319.us.i = phi ptr [ %.lcssa439, %._crit_edge1313.us.i ], [ %.3926.lcssa.i, %.preheader1099.lr.ph.i ] ; 3 uses
  %.29361318.us.i = phi ptr [ %i.bgx, %._crit_edge1313.us.i ], [ %.1935.lcssa.i, %.preheader1099.lr.ph.i ] ; 3 uses
  %.29391317.us.i = phi ptr [ %i.bgw, %._crit_edge1313.us.i ], [ %.1938.lcssa.i, %.preheader1099.lr.ph.i ] ; 3 uses
  %.29421316.us.i = phi ptr [ %i.bgv, %._crit_edge1313.us.i ], [ %.1941.lcssa.i, %.preheader1099.lr.ph.i ] ; 3 uses
  %.29451315.us.i = phi ptr [ %i.bgu, %._crit_edge1313.us.i ], [ %.1944.lcssa.i, %.preheader1099.lr.ph.i ] ; 3 uses
  br i1 %min.iters.check502, label %scalar.ph501.preheader, label %vector.ph503

vector.ph503:                                     ; preds = %.preheader1099.us.i
  %i.bef = getelementptr i8, ptr %.69291319.us.i, i64 %i.wx ; 2 uses
  br label %vector.body505

vector.body505:                                   ; preds = %vector.body505, %vector.ph503
  %index506 = phi i64 [ 0, %vector.ph503 ], [ %index.next517, %vector.body505 ] ; 6 uses
  %i.beg = shl i64 %index506, 4
  %next.gep507 = getelementptr i8, ptr %.69291319.us.i, i64 %i.beg
  %i.beh = getelementptr inbounds nuw [4 x i8], ptr %.29451315.us.i, i64 %index506 ; 2 uses
  %i.bei = getelementptr inbounds nuw [4 x i8], ptr %.29421316.us.i, i64 %index506 ; 2 uses
  %i.bej = getelementptr inbounds nuw [4 x i8], ptr %.29391317.us.i, i64 %index506 ; 2 uses
  %i.bek = getelementptr inbounds nuw [4 x i8], ptr %.29361318.us.i, i64 %index506 ; 2 uses
  %wide.load508 = load <4 x i32>, ptr %i.beh, align 4, !tbaa !56
  %i.bel = lshr <4 x i32> %wide.load508, splat (i32 16)
  %wide.load509 = load <4 x i32>, ptr %i.bei, align 4, !tbaa !56
  %i.bem = lshr <4 x i32> %wide.load509, splat (i32 16)
  %wide.load510 = load <4 x i32>, ptr %i.bej, align 4, !tbaa !56
  %i.ben = lshr <4 x i32> %wide.load510, splat (i32 16)
  %wide.load511 = load <4 x i32>, ptr %i.bek, align 4, !tbaa !56
  %i.beo = lshr <4 x i32> %wide.load511, splat (i32 16)
  %i.bep = getelementptr inbounds nuw [4 x i8], ptr %i.beh, i64 %i.vv
  %i.beq = getelementptr inbounds nuw [4 x i8], ptr %i.bei, i64 %i.vv
  %i.ber = getelementptr inbounds nuw [4 x i8], ptr %i.bej, i64 %i.vv
  %i.bes = getelementptr inbounds nuw [4 x i8], ptr %i.bek, i64 %i.vv
  %wide.load512 = load <4 x i32>, ptr %i.bep, align 4, !tbaa !56
  %i.bet = lshr <4 x i32> %wide.load512, splat (i32 16)
  %wide.load513 = load <4 x i32>, ptr %i.beq, align 4, !tbaa !56
  %i.beu = lshr <4 x i32> %wide.load513, splat (i32 16)
  %wide.load514 = load <4 x i32>, ptr %i.ber, align 4, !tbaa !56
  %i.bev = lshr <4 x i32> %wide.load514, splat (i32 16)
  %wide.load515 = load <4 x i32>, ptr %i.bes, align 4, !tbaa !56
  %i.bew = lshr <4 x i32> %wide.load515, splat (i32 16)
  %i.bex = shufflevector <4 x i32> %i.bel, <4 x i32> %i.bem, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bey = shufflevector <4 x i32> %i.ben, <4 x i32> %i.beo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bez = shufflevector <4 x i32> %i.bet, <4 x i32> %i.beu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bfa = shufflevector <4 x i32> %i.bev, <4 x i32> %i.bew, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bfb = shufflevector <8 x i32> %i.bex, <8 x i32> %i.bey, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bfc = trunc nuw <16 x i32> %i.bfb to <16 x i16>
  %i.bfd = shufflevector <8 x i32> %i.bez, <8 x i32> %i.bfa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bfe = trunc nuw <16 x i32> %i.bfd to <16 x i16>
  %interleaved.vec516 = shufflevector <16 x i16> %i.bfc, <16 x i16> %i.bfe, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x i16> %interleaved.vec516, ptr %next.gep507, align 2, !tbaa !117
  %index.next517 = add nuw i64 %index506, 4       ; 2 uses
  %i.bff = icmp eq i64 %index.next517, %n.vec504
  br i1 %i.bff, label %middle.block518, label %vector.body505, !llvm.loop !613

middle.block518:                                  ; preds = %vector.body505
  br i1 %cmp.n519, label %._crit_edge1313.us.i, label %scalar.ph501.preheader

scalar.ph501.preheader:                           ; preds = %.preheader1099.us.i, %middle.block518
  %indvars.iv1724.i.ph = phi i64 [ 0, %.preheader1099.us.i ], [ %n.vec504, %middle.block518 ]
  %.79301311.us.i.ph = phi ptr [ %.69291319.us.i, %.preheader1099.us.i ], [ %i.bef, %middle.block518 ]
end_hunk_6
begin_hunk_7_@_ZN4ncnn19Convolution_x86_fma21create_pipeline_bf16sERKNS_6OptionE:bb.a
  br label %.preheader1089.i

.preheader1089.i:                                 ; preds = %.preheader1089.loopexit.i, %.preheader1097.i
  %.2837.lcssa.i = phi i32 [ %.1836.lcssa.i, %.preheader1097.i ], [ %i.bim, %.preheader1089.loopexit.i ] ; 3 uses
  %i.bin = icmp slt i32 %.2837.lcssa.i, %i.eg
  br i1 %i.bin, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.i, label %_ZN4ncnnL41convolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii.exit

_ZN4ncnn3MatD2Ev.exit.lr.ph.i:                    ; preds = %.preheader1089.i
  %i.bio = load ptr, ptr %i.nw, align 8, !tbaa !37 ; 2 uses
  %i.bip = mul i32 %i.ny, %i.p                    ; 3 uses
  %i.biq = load ptr, ptr %i.nx, align 8, !tbaa !37, !noalias !651
  %i.bir = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.bis = load i64, ptr %i.bir, align 8, !tbaa !38, !noalias !651
  %i.bit = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.biu = load i64, ptr %i.bit, align 8, !tbaa !79, !noalias !651
  %factor.op.mul1464.i = mul i64 %i.biu, %i.bis
  %i.biv = icmp sgt i32 %i.p, 7
  %i.biw = icmp sgt i32 %i.ny, 0                  ; 3 uses
  %i.bix = sext i32 %i.ny to i64                  ; 22 uses
  %i.biy = shl i32 %i.ny, 3
  %i.biz = sext i32 %i.biy to i64                 ; 2 uses
  %i.bja = shl i32 %i.ny, 2
  %i.bjb = sext i32 %i.bja to i64                 ; 2 uses
  %i.bjc = shl i32 %i.ny, 1
  %i.bjd = sext i32 %i.bjc to i64
  %i.bje = icmp slt i32 %i.ny, 1
  %i.bjf = add i32 %i.p, -8                       ; 2 uses
  %i.bjg = lshr i32 %i.bjf, 1
  %i.bjh = and i32 %i.bjg, 2147483644
  %narrow1838.i = add nuw i32 %i.bjh, 4
  %i.bji = zext i32 %narrow1838.i to i64
  %i.bjj = mul nsw i64 %i.biz, %i.bji
  %scevgep1778.i = getelementptr i8, ptr %i.bio, i64 %i.bjj
  %i.bjk = mul i32 %i.bip, %.2837.lcssa.i
  %i.bjl = and i32 %i.bjf, -8
  %i.bjm = add nuw i32 %i.bjl, 8                  ; 4 uses
  %i.bjn = add i32 %i.p, -4
  %i.bjo = sext i32 %.2837.lcssa.i to i64
  %wide.trip.count1810.i = sext i32 %i.eg to i64
  %i.bjp = or disjoint i32 %i.bjm, 3
  %i.bjq = icmp slt i32 %i.bjp, %i.p
  %wide.trip.count1786.i = zext i32 %i.ny to i64  ; 15 uses
  %min.iters.check636 = icmp ult i32 %i.ny, 4
  %n.vec638 = and i64 %wide.trip.count1786.i, 2147483644 ; 4 uses
  %i.bjr = shl nuw nsw i64 %n.vec638, 4
  %cmp.n653 = icmp eq i64 %n.vec638, %wide.trip.count1786.i
  %min.iters.check619 = icmp ult i32 %i.ny, 4
  %n.vec621 = and i64 %wide.trip.count1786.i, 2147483644 ; 4 uses
  %i.bjs = shl nuw nsw i64 %n.vec621, 3
  %cmp.n632 = icmp eq i64 %n.vec621, %wide.trip.count1786.i
  %min.iters.check600 = icmp ult i32 %i.ny, 8
  %n.vec602 = and i64 %wide.trip.count1786.i, 2147483640 ; 4 uses
  %i.bjt = shl nuw nsw i64 %n.vec602, 2
  %cmp.n615 = icmp eq i64 %n.vec602, %wide.trip.count1786.i
  %min.iters.check576 = icmp ult i32 %i.ny, 4
  %min.iters.check577 = icmp ult i32 %i.ny, 32
  %i.bju = and i64 %wide.trip.count1786.i, 28
  %n.vec579 = and i64 %wide.trip.count1786.i, 2147483616 ; 5 uses
  %i.bjv = shl nuw nsw i64 %n.vec579, 1
  %cmp.n589 = icmp eq i64 %n.vec579, %wide.trip.count1786.i
  %min.epilog.iters.check = icmp eq i64 %i.bju, 0
  %n.vec591 = and i64 %wide.trip.count1786.i, 2147483644 ; 4 uses
  %i.bjw = shl nuw nsw i64 %n.vec591, 1
  %cmp.n596 = icmp eq i64 %n.vec591, %wide.trip.count1786.i
  br label %_ZN4ncnn3MatD2Ev.exit.i102

_ZN4ncnn3MatD2Ev.exit1005.i:                      ; preds = %._crit_edge1402.split.i, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i
  %indvars.iv1775.i = phi i64 [ %i.asq, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next1776.i, %._crit_edge1402.split.i ] ; 2 uses
  %indvars.iv1747.i = phi i32 [ %i.asm, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next1748.i, %._crit_edge1402.split.i ] ; 2 uses
  %indvars.iv1743.i = phi i32 [ %i.ask, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next1744.i, %._crit_edge1402.split.i ] ; 2 uses
  %i.bjx = phi i32 [ %i.arc, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %i.bsk, %._crit_edge1402.split.i ]
  %i.bjy = sext i32 %indvars.iv1743.i to i64
  %i.bjz = shl nsw i64 %i.bjy, 2
  %scevgep1745.i = getelementptr i8, ptr %scevgep1742.i, i64 %i.bjz ; 2 uses
  %i.bka = sext i32 %indvars.iv1747.i to i64
  %i.bkb = shl nsw i64 %i.bka, 2
  %scevgep1749.i = getelementptr i8, ptr %scevgep1742.i, i64 %i.bkb ; 2 uses
  %i.bkc = trunc i64 %indvars.iv1775.i to i32     ; 4 uses
  %i.bkd = mul i32 %i.arf, %i.bkc
  %i.bke = sext i32 %i.bkd to i64
  %i.bkf = getelementptr inbounds [4 x i8], ptr %i.are, i64 %i.bke ; 2 uses
  %i.bkg = mul i32 %i.bjx, %i.arf
  %i.bkh = sext i32 %i.bkg to i64
  %i.bki = getelementptr inbounds [4 x i8], ptr %i.are, i64 %i.bkh ; 2 uses
  %i.bkj = lshr i32 %i.bkc, 3
  %i.bkk = lshr i32 %i.bkc, 2
  %i.bkl = and i32 %i.bkk, 1
  %i.bkm = add nuw nsw i32 %i.bkl, %i.bkj
  %i.bkn = lshr i32 %i.bkc, 1
  %i.bko = and i32 %i.bkn, 1
  %i.bkp = add nuw nsw i32 %i.bkm, %i.bko
  %i.bkq = zext nneg i32 %i.bkp to i64
  %.reass1406.i = mul i64 %factor.op.mul1405.i, %i.bkq
  %i.bkr = getelementptr inbounds nuw i8, ptr %i.arg, i64 %.reass1406.i ; 4 uses
  br i1 %i.arl, label %.preheader1093.lr.ph.i, label %.preheader1096.i

.preheader1093.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1005.i
  br i1 %i.arm, label %.preheader1093.us.i, label %.preheader1096.thread.i

.preheader1093.us.i:                              ; preds = %.preheader1093.lr.ph.i, %._crit_edge1346.us.i
  %.08611351.us.i = phi i32 [ %i.bmt, %._crit_edge1346.us.i ], [ 0, %.preheader1093.lr.ph.i ]
  %.08651350.us.i = phi ptr [ %i.bmq, %._crit_edge1346.us.i ], [ %i.bkr, %.preheader1093.lr.ph.i ]
  %.08741349.us.i = phi ptr [ %i.bms, %._crit_edge1346.us.i ], [ %i.bki, %.preheader1093.lr.ph.i ] ; 2 uses
  %.08771348.us.i = phi ptr [ %i.bmr, %._crit_edge1346.us.i ], [ %i.bkf, %.preheader1093.lr.ph.i ] ; 2 uses
  br label %bb.ep

bb.ep:                                            ; preds = %bb.ep, %.preheader1093.us.i
  %indvars.iv1750.i = phi i64 [ 0, %.preheader1093.us.i ], [ %indvars.iv.next1751.i, %bb.ep ] ; 3 uses
  %.18661344.us.i = phi ptr [ %.08651350.us.i, %.preheader1093.us.i ], [ %i.bmq, %bb.ep ] ; 2 uses
  %i.bks = getelementptr inbounds nuw [4 x i8], ptr %.08771348.us.i, i64 %indvars.iv1750.i ; 8 uses
  %i.bkt = getelementptr inbounds nuw [4 x i8], ptr %.08741349.us.i, i64 %indvars.iv1750.i ; 8 uses
  %i.bku = load i32, ptr %i.bks, align 4, !tbaa !56
  %i.bkv = getelementptr inbounds nuw [4 x i8], ptr %i.bks, i64 %i.arn
  %i.bkw = load i32, ptr %i.bkv, align 4, !tbaa !56
  %i.bkx = getelementptr inbounds nuw [4 x i8], ptr %i.bks, i64 %i.arp
  %i.bky = load i32, ptr %i.bkx, align 4, !tbaa !56
  %i.bkz = getelementptr inbounds nuw [4 x i8], ptr %i.bks, i64 %i.arr
  %i.bla = load i32, ptr %i.bkz, align 4, !tbaa !56
  %i.blb = getelementptr inbounds nuw [4 x i8], ptr %i.bks, i64 %i.art
  %i.blc = load i32, ptr %i.blb, align 4, !tbaa !56
  %i.bld = getelementptr inbounds nuw [4 x i8], ptr %i.bks, i64 %i.arv
  %i.ble = load i32, ptr %i.bld, align 4, !tbaa !56
  %i.blf = getelementptr inbounds nuw [4 x i8], ptr %i.bks, i64 %i.arx
  %i.blg = load i32, ptr %i.blf, align 4, !tbaa !56
  %i.blh = getelementptr inbounds nuw [4 x i8], ptr %i.bks, i64 %i.arz
  %i.bli = load i32, ptr %i.blh, align 4, !tbaa !56
  %i.blj = load i32, ptr %i.bkt, align 4, !tbaa !56
  %i.blk = getelementptr inbounds nuw [4 x i8], ptr %i.bkt, i64 %i.arn
  %i.bll = load i32, ptr %i.blk, align 4, !tbaa !56
  %i.blm = getelementptr inbounds nuw [4 x i8], ptr %i.bkt, i64 %i.arp
  %i.bln = load i32, ptr %i.blm, align 4, !tbaa !56
  %i.blo = getelementptr inbounds nuw [4 x i8], ptr %i.bkt, i64 %i.arr
  %i.blp = load i32, ptr %i.blo, align 4, !tbaa !56
  %i.blq = getelementptr inbounds nuw [4 x i8], ptr %i.bkt, i64 %i.art
  %i.blr = load i32, ptr %i.blq, align 4, !tbaa !56
  %i.bls = getelementptr inbounds nuw [4 x i8], ptr %i.bkt, i64 %i.arv
  %i.blt = load i32, ptr %i.bls, align 4, !tbaa !56
  %i.blu = getelementptr inbounds nuw [4 x i8], ptr %i.bkt, i64 %i.arx
  %i.blv = load i32, ptr %i.blu, align 4, !tbaa !56
  %i.blw = getelementptr inbounds nuw [4 x i8], ptr %i.bkt, i64 %i.arz
  %i.blx = load i32, ptr %i.blw, align 4, !tbaa !56
  %i.bly = insertelement <16 x i32> poison, i32 %i.bku, i64 0
  %i.blz = insertelement <16 x i32> %i.bly, i32 %i.bkw, i64 1
  %i.bma = insertelement <16 x i32> %i.blz, i32 %i.bky, i64 2
  %i.bmb = insertelement <16 x i32> %i.bma, i32 %i.bla, i64 3
  %i.bmc = insertelement <16 x i32> %i.bmb, i32 %i.blc, i64 4
  %i.bmd = insertelement <16 x i32> %i.bmc, i32 %i.ble, i64 5
  %i.bme = insertelement <16 x i32> %i.bmd, i32 %i.blg, i64 6
  %i.bmf = insertelement <16 x i32> %i.bme, i32 %i.bli, i64 7
  %i.bmg = insertelement <16 x i32> %i.bmf, i32 %i.blj, i64 8
  %i.bmh = insertelement <16 x i32> %i.bmg, i32 %i.bll, i64 9
  %i.bmi = insertelement <16 x i32> %i.bmh, i32 %i.bln, i64 10
  %i.bmj = insertelement <16 x i32> %i.bmi, i32 %i.blp, i64 11
  %i.bmk = insertelement <16 x i32> %i.bmj, i32 %i.blr, i64 12
  %i.bml = insertelement <16 x i32> %i.bmk, i32 %i.blt, i64 13
  %i.bmm = insertelement <16 x i32> %i.bml, i32 %i.blv, i64 14
  %i.bmn = insertelement <16 x i32> %i.bmm, i32 %i.blx, i64 15
  %i.bmo = lshr <16 x i32> %i.bmn, splat (i32 16)
  %i.bmp = trunc nuw <16 x i32> %i.bmo to <16 x i16>
  store <16 x i16> %i.bmp, ptr %.18661344.us.i, align 2, !tbaa !117
  %i.bmq = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 32 ; 3 uses
  %indvars.iv.next1751.i = add nuw nsw i64 %indvars.iv1750.i, 1 ; 2 uses
  %exitcond1754.not.i = icmp eq i64 %indvars.iv.next1751.i, %wide.trip.count1753.i
  br i1 %exitcond1754.not.i, label %._crit_edge1346.us.i, label %bb.ep, !llvm.loop !622

._crit_edge1346.us.i:                             ; preds = %bb.ep
  %i.bmr = getelementptr inbounds nuw [4 x i8], ptr %.08771348.us.i, i64 %i.asb ; 2 uses
  %i.bms = getelementptr inbounds nuw [4 x i8], ptr %.08741349.us.i, i64 %i.asb ; 2 uses
  %i.bmt = add nuw nsw i32 %.08611351.us.i, 8     ; 2 uses
  %i.bmu = or disjoint i32 %i.bmt, 7
  %i.bmv = icmp slt i32 %i.bmu, %i.p
  br i1 %i.bmv, label %.preheader1093.us.i, label %.preheader1096.i, !llvm.loop !623

.preheader1096.i:                                 ; preds = %._crit_edge1346.us.i, %_ZN4ncnn3MatD2Ev.exit1005.i
  %.0877.lcssa.i = phi ptr [ %i.bkf, %_ZN4ncnn3MatD2Ev.exit1005.i ], [ %i.bmr, %._crit_edge1346.us.i ] ; 3 uses
  %.0874.lcssa.i = phi ptr [ %i.bki, %_ZN4ncnn3MatD2Ev.exit1005.i ], [ %i.bms, %._crit_edge1346.us.i ] ; 3 uses
  %.0865.lcssa.i = phi ptr [ %i.bkr, %_ZN4ncnn3MatD2Ev.exit1005.i ], [ %i.bmq, %._crit_edge1346.us.i ] ; 3 uses
  %.0861.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1005.i ], [ %i.aso, %._crit_edge1346.us.i ] ; 4 uses
  %i.bmw = or disjoint i32 %.0861.lcssa.i, 3
  %i.bmx = icmp slt i32 %i.bmw, %i.p
  br i1 %i.bmx, label %.preheader1092.lr.ph.i, label %.preheader1095.i

.preheader1096.thread.i:                          ; preds = %.preheader1093.lr.ph.i
  br i1 %i.ast, label %.preheader1092.preheader.i, label %.preheader1095.i

.preheader1092.lr.ph.i:                           ; preds = %.preheader1096.i
  br i1 %i.arm, label %.preheader1092.us.i, label %.preheader1092.preheader.i

.preheader1092.preheader.i:                       ; preds = %.preheader1092.lr.ph.i, %.preheader1096.thread.i
  %.0877.lcssa19251936.i = phi ptr [ %.0877.lcssa.i, %.preheader1092.lr.ph.i ], [ %scevgep1745.i, %.preheader1096.thread.i ]
  %.0874.lcssa19261935.i = phi ptr [ %.0874.lcssa.i, %.preheader1092.lr.ph.i ], [ %scevgep1749.i, %.preheader1096.thread.i ]
  %.0865.lcssa19271934.i = phi ptr [ %.0865.lcssa.i, %.preheader1092.lr.ph.i ], [ %i.bkr, %.preheader1096.thread.i ]
  %.0861.lcssa19281933.i = phi i32 [ %.0861.lcssa.i, %.preheader1092.lr.ph.i ], [ %i.aso, %.preheader1096.thread.i ] ; 2 uses
  %i.bmy = sub i32 %i.asp, %.0861.lcssa19281933.i
  %i.bmz = and i32 %i.bmy, -4                     ; 2 uses
  %i.bna = zext i32 %i.bmz to i64
  %i.bnb = add nuw nsw i64 %i.bna, 4
  %i.bnc = mul nsw i64 %i.bnb, %i.asc             ; 2 uses
  %scevgep1755.i = getelementptr i8, ptr %.0877.lcssa19251936.i, i64 %i.bnc
  %scevgep1756.i = getelementptr i8, ptr %.0874.lcssa19261935.i, i64 %i.bnc
  %i.bnd = add nsw i32 %.0861.lcssa19281933.i, 4
  %i.bne = add i32 %i.bnd, %i.bmz
  br label %.preheader1095.i

.preheader1092.us.i:                              ; preds = %.preheader1092.lr.ph.i, %._crit_edge1362.us.i
  %.18621367.us.i = phi i32 [ %i.bpw, %._crit_edge1362.us.i ], [ %.0861.lcssa.i, %.preheader1092.lr.ph.i ]
  %.28671366.us.i = phi ptr [ %.lcssa419, %._crit_edge1362.us.i ], [ %.0865.lcssa.i, %.preheader1092.lr.ph.i ] ; 3 uses
  %.18751365.us.i = phi ptr [ %i.bpv, %._crit_edge1362.us.i ], [ %.0874.lcssa.i, %.preheader1092.lr.ph.i ] ; 3 uses
  %.18781364.us.i = phi ptr [ %i.bpu, %._crit_edge1362.us.i ], [ %.0877.lcssa.i, %.preheader1092.lr.ph.i ] ; 3 uses
  br i1 %min.iters.check555, label %scalar.ph554.preheader, label %vector.ph556

vector.ph556:                                     ; preds = %.preheader1092.us.i
  %i.bnf = getelementptr i8, ptr %.28671366.us.i, i64 %i.asu ; 2 uses
  br label %vector.body558

vector.body558:                                   ; preds = %vector.body558, %vector.ph556
  %index559 = phi i64 [ 0, %vector.ph556 ], [ %index.next570, %vector.body558 ] ; 4 uses
  %i.bng = shl i64 %index559, 4
  %next.gep560 = getelementptr i8, ptr %.28671366.us.i, i64 %i.bng
  %i.bnh = getelementptr inbounds nuw [4 x i8], ptr %.18781364.us.i, i64 %index559 ; 4 uses
  %i.bni = getelementptr inbounds nuw [4 x i8], ptr %.18751365.us.i, i64 %index559 ; 4 uses
  %wide.load561 = load <4 x i32>, ptr %i.bnh, align 4, !tbaa !56
  %i.bnj = lshr <4 x i32> %wide.load561, splat (i32 16)
  %i.bnk = getelementptr inbounds nuw [4 x i8], ptr %i.bnh, i64 %i.arn
  %wide.load562 = load <4 x i32>, ptr %i.bnk, align 4, !tbaa !56
  %i.bnl = lshr <4 x i32> %wide.load562, splat (i32 16)
  %i.bnm = getelementptr inbounds nuw [4 x i8], ptr %i.bnh, i64 %i.arp
  %wide.load563 = load <4 x i32>, ptr %i.bnm, align 4, !tbaa !56
  %i.bnn = lshr <4 x i32> %wide.load563, splat (i32 16)
  %i.bno = getelementptr inbounds nuw [4 x i8], ptr %i.bnh, i64 %i.arr
  %wide.load564 = load <4 x i32>, ptr %i.bno, align 4, !tbaa !56
  %i.bnp = lshr <4 x i32> %wide.load564, splat (i32 16)
  %wide.load565 = load <4 x i32>, ptr %i.bni, align 4, !tbaa !56
  %i.bnq = lshr <4 x i32> %wide.load565, splat (i32 16)
  %i.bnr = getelementptr inbounds nuw [4 x i8], ptr %i.bni, i64 %i.arn
  %wide.load566 = load <4 x i32>, ptr %i.bnr, align 4, !tbaa !56
  %i.bns = lshr <4 x i32> %wide.load566, splat (i32 16)
  %i.bnt = getelementptr inbounds nuw [4 x i8], ptr %i.bni, i64 %i.arp
  %wide.load567 = load <4 x i32>, ptr %i.bnt, align 4, !tbaa !56
  %i.bnu = lshr <4 x i32> %wide.load567, splat (i32 16)
  %i.bnv = getelementptr inbounds nuw [4 x i8], ptr %i.bni, i64 %i.arr
  %wide.load568 = load <4 x i32>, ptr %i.bnv, align 4, !tbaa !56
  %i.bnw = lshr <4 x i32> %wide.load568, splat (i32 16)
  %i.bnx = shufflevector <4 x i32> %i.bnj, <4 x i32> %i.bnl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bny = shufflevector <4 x i32> %i.bnn, <4 x i32> %i.bnp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bnz = shufflevector <4 x i32> %i.bnq, <4 x i32> %i.bns, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.boa = shufflevector <4 x i32> %i.bnu, <4 x i32> %i.bnw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bob = shufflevector <8 x i32> %i.bnx, <8 x i32> %i.bny, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.boc = trunc nuw <16 x i32> %i.bob to <16 x i16>
  %i.bod = shufflevector <8 x i32> %i.bnz, <8 x i32> %i.boa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.boe = trunc nuw <16 x i32> %i.bod to <16 x i16>
  %interleaved.vec569 = shufflevector <16 x i16> %i.boc, <16 x i16> %i.boe, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x i16> %interleaved.vec569, ptr %next.gep560, align 2, !tbaa !117
  %index.next570 = add nuw i64 %index559, 4       ; 2 uses
  %i.bof = icmp eq i64 %index.next570, %n.vec557
  br i1 %i.bof, label %middle.block571, label %vector.body558, !llvm.loop !624

middle.block571:                                  ; preds = %vector.body558
  br i1 %cmp.n572, label %._crit_edge1362.us.i, label %scalar.ph554.preheader

scalar.ph554.preheader:                           ; preds = %.preheader1092.us.i, %middle.block571
  %indvars.iv1757.i.ph = phi i64 [ 0, %.preheader1092.us.i ], [ %n.vec557, %middle.block571 ]
  %.38681360.us.i.ph = phi ptr [ %.28671366.us.i, %.preheader1092.us.i ], [ %i.bnf, %middle.block571 ]
  br label %scalar.ph554

scalar.ph554:                                     ; preds = %scalar.ph554.preheader, %scalar.ph554
  %indvars.iv1757.i = phi i64 [ %indvars.iv.next1758.i, %scalar.ph554 ], [ %indvars.iv1757.i.ph, %scalar.ph554.preheader ] ; 3 uses
  %.38681360.us.i = phi ptr [ %i.bpt, %scalar.ph554 ], [ %.38681360.us.i.ph, %scalar.ph554.preheader ] ; 9 uses
  %i.bog = getelementptr inbounds nuw [4 x i8], ptr %.18781364.us.i, i64 %indvars.iv1757.i ; 4 uses
  %i.boh = getelementptr inbounds nuw [4 x i8], ptr %.18751365.us.i, i64 %indvars.iv1757.i ; 4 uses
  %i.boi = load i32, ptr %i.bog, align 4, !tbaa !56
  %i.boj = lshr i32 %i.boi, 16
  %i.bok = trunc nuw i32 %i.boj to i16
  store i16 %i.bok, ptr %.38681360.us.i, align 2, !tbaa !117
  %i.bol = getelementptr inbounds nuw [4 x i8], ptr %i.bog, i64 %i.arn
  %i.bom = load i32, ptr %i.bol, align 4, !tbaa !56
  %i.bon = lshr i32 %i.bom, 16
  %i.boo = trunc nuw i32 %i.bon to i16
  %i.bop = getelementptr inbounds nuw i8, ptr %.38681360.us.i, i64 2
  store i16 %i.boo, ptr %i.bop, align 2, !tbaa !117
  %i.boq = getelementptr inbounds nuw [4 x i8], ptr %i.bog, i64 %i.arp
  %i.bor = load i32, ptr %i.boq, align 4, !tbaa !56
  %i.bos = lshr i32 %i.bor, 16
  %i.bot = trunc nuw i32 %i.bos to i16
  %i.bou = getelementptr inbounds nuw i8, ptr %.38681360.us.i, i64 4
  store i16 %i.bot, ptr %i.bou, align 2, !tbaa !117
  %i.bov = getelementptr inbounds nuw [4 x i8], ptr %i.bog, i64 %i.arr
  %i.bow = load i32, ptr %i.bov, align 4, !tbaa !56
  %i.box = lshr i32 %i.bow, 16
  %i.boy = trunc nuw i32 %i.box to i16
  %i.boz = getelementptr inbounds nuw i8, ptr %.38681360.us.i, i64 6
  store i16 %i.boy, ptr %i.boz, align 2, !tbaa !117
  %i.bpa = load i32, ptr %i.boh, align 4, !tbaa !56
  %i.bpb = lshr i32 %i.bpa, 16
  %i.bpc = trunc nuw i32 %i.bpb to i16
  %i.bpd = getelementptr inbounds nuw i8, ptr %.38681360.us.i, i64 8
  store i16 %i.bpc, ptr %i.bpd, align 2, !tbaa !117
  %i.bpe = getelementptr inbounds nuw [4 x i8], ptr %i.boh, i64 %i.arn
  %i.bpf = load i32, ptr %i.bpe, align 4, !tbaa !56
  %i.bpg = lshr i32 %i.bpf, 16
  %i.bph = trunc nuw i32 %i.bpg to i16
  %i.bpi = getelementptr inbounds nuw i8, ptr %.38681360.us.i, i64 10
  store i16 %i.bph, ptr %i.bpi, align 2, !tbaa !117
  %i.bpj = getelementptr inbounds nuw [4 x i8], ptr %i.boh, i64 %i.arp
  %i.bpk = load i32, ptr %i.bpj, align 4, !tbaa !56
  %i.bpl = lshr i32 %i.bpk, 16
  %i.bpm = trunc nuw i32 %i.bpl to i16
  %i.bpn = getelementptr inbounds nuw i8, ptr %.38681360.us.i, i64 12
  store i16 %i.bpm, ptr %i.bpn, align 2, !tbaa !117
  %i.bpo = getelementptr inbounds nuw [4 x i8], ptr %i.boh, i64 %i.arr
  %i.bpp = load i32, ptr %i.bpo, align 4, !tbaa !56
  %i.bpq = lshr i32 %i.bpp, 16
  %i.bpr = trunc nuw i32 %i.bpq to i16
  %i.bps = getelementptr inbounds nuw i8, ptr %.38681360.us.i, i64 14
  store i16 %i.bpr, ptr %i.bps, align 2, !tbaa !117
  %i.bpt = getelementptr inbounds nuw i8, ptr %.38681360.us.i, i64 16 ; 2 uses
  %indvars.iv.next1758.i = add nuw nsw i64 %indvars.iv1757.i, 1 ; 2 uses
  %exitcond1761.not.i = icmp eq i64 %indvars.iv.next1758.i, %wide.trip.count1753.i
  br i1 %exitcond1761.not.i, label %._crit_edge1362.us.i, label %scalar.ph554, !llvm.loop !625

._crit_edge1362.us.i:                             ; preds = %scalar.ph554, %middle.block571
  %.lcssa419 = phi ptr [ %i.bnf, %middle.block571 ], [ %i.bpt, %scalar.ph554 ] ; 2 uses
  %i.bpu = getelementptr inbounds nuw [4 x i8], ptr %.18781364.us.i, i64 %i.asc ; 2 uses
  %i.bpv = getelementptr inbounds nuw [4 x i8], ptr %.18751365.us.i, i64 %i.asc ; 2 uses
  %i.bpw = add nuw nsw i32 %.18621367.us.i, 4     ; 3 uses
  %i.bpx = or disjoint i32 %i.bpw, 3
  %i.bpy = icmp slt i32 %i.bpx, %i.p
  br i1 %i.bpy, label %.preheader1092.us.i, label %.preheader1095.i, !llvm.loop !626

.preheader1095.i:                                 ; preds = %._crit_edge1362.us.i, %.preheader1092.preheader.i, %.preheader1096.thread.i, %.preheader1096.i
  %.1878.lcssa.i = phi ptr [ %.0877.lcssa.i, %.preheader1096.i ], [ %scevgep1745.i, %.preheader1096.thread.i ], [ %scevgep1755.i, %.preheader1092.preheader.i ], [ %i.bpu, %._crit_edge1362.us.i ] ; 2 uses
  %.1875.lcssa.i = phi ptr [ %.0874.lcssa.i, %.preheader1096.i ], [ %scevgep1749.i, %.preheader1096.thread.i ], [ %scevgep1756.i, %.preheader1092.preheader.i ], [ %i.bpv, %._crit_edge1362.us.i ] ; 2 uses
  %.2867.lcssa.i = phi ptr [ %.0865.lcssa.i, %.preheader1096.i ], [ %i.bkr, %.preheader1096.thread.i ], [ %.0865.lcssa19271934.i, %.preheader1092.preheader.i ], [ %.lcssa419, %._crit_edge1362.us.i ] ; 2 uses
  %.1862.lcssa.i = phi i32 [ %.0861.lcssa.i, %.preheader1096.i ], [ %i.aso, %.preheader1096.thread.i ], [ %i.bne, %.preheader1092.preheader.i ], [ %i.bpw, %._crit_edge1362.us.i ] ; 3 uses
  %i.bpz = or disjoint i32 %.1862.lcssa.i, 1
  %i.bqa = icmp slt i32 %i.bpz, %i.p
  br i1 %i.bqa, label %.preheader1091.lr.ph.i, label %.preheader1094.i

.preheader1091.lr.ph.i:                           ; preds = %.preheader1095.i
  br i1 %i.arm, label %.preheader1091.us.i, label %._crit_edge1402.split.i

.preheader1091.us.i:                              ; preds = %.preheader1091.lr.ph.i, %._crit_edge1382.us.i
  %.28631387.us.i = phi i32 [ %i.brl, %._crit_edge1382.us.i ], [ %.1862.lcssa.i, %.preheader1091.lr.ph.i ]
  %.48691386.us.i = phi ptr [ %.lcssa423, %._crit_edge1382.us.i ], [ %.2867.lcssa.i, %.preheader1091.lr.ph.i ] ; 3 uses
  %.28761385.us.i = phi ptr [ %i.brk, %._crit_edge1382.us.i ], [ %.1875.lcssa.i, %.preheader1091.lr.ph.i ] ; 3 uses
  %.28791384.us.i = phi ptr [ %i.brj, %._crit_edge1382.us.i ], [ %.1878.lcssa.i, %.preheader1091.lr.ph.i ] ; 3 uses
  br i1 %min.iters.check538, label %scalar.ph537.preheader, label %vector.ph539

vector.ph539:                                     ; preds = %.preheader1091.us.i
  %i.bqb = getelementptr i8, ptr %.48691386.us.i, i64 %i.asv ; 2 uses
  br label %vector.body541

vector.body541:                                   ; preds = %vector.body541, %vector.ph539
  %index542 = phi i64 [ 0, %vector.ph539 ], [ %index.next549, %vector.body541 ] ; 4 uses
  %i.bqc = shl i64 %index542, 3
  %next.gep543 = getelementptr i8, ptr %.48691386.us.i, i64 %i.bqc
  %i.bqd = getelementptr inbounds nuw [4 x i8], ptr %.28791384.us.i, i64 %index542 ; 2 uses
  %i.bqe = getelementptr inbounds nuw [4 x i8], ptr %.28761385.us.i, i64 %index542 ; 2 uses
  %wide.load544 = load <4 x i32>, ptr %i.bqd, align 4, !tbaa !56
  %i.bqf = lshr <4 x i32> %wide.load544, splat (i32 16)
  %wide.load545 = load <4 x i32>, ptr %i.bqe, align 4, !tbaa !56
  %i.bqg = lshr <4 x i32> %wide.load545, splat (i32 16)
  %i.bqh = getelementptr inbounds nuw [4 x i8], ptr %i.bqd, i64 %i.arn
  %i.bqi = getelementptr inbounds nuw [4 x i8], ptr %i.bqe, i64 %i.arn
  %wide.load546 = load <4 x i32>, ptr %i.bqh, align 4, !tbaa !56
  %i.bqj = lshr <4 x i32> %wide.load546, splat (i32 16)
  %wide.load547 = load <4 x i32>, ptr %i.bqi, align 4, !tbaa !56
  %i.bqk = lshr <4 x i32> %wide.load547, splat (i32 16)
  %i.bql = shufflevector <4 x i32> %i.bqf, <4 x i32> %i.bqg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bqm = shufflevector <4 x i32> %i.bqj, <4 x i32> %i.bqk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bqn = shufflevector <8 x i32> %i.bql, <8 x i32> %i.bqm, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %interleaved.vec548 = trunc nuw <16 x i32> %i.bqn to <16 x i16>
  store <16 x i16> %interleaved.vec548, ptr %next.gep543, align 2, !tbaa !117
  %index.next549 = add nuw i64 %index542, 4       ; 2 uses
  %i.bqo = icmp eq i64 %index.next549, %n.vec540
  br i1 %i.bqo, label %middle.block550, label %vector.body541, !llvm.loop !627

middle.block550:                                  ; preds = %vector.body541
  br i1 %cmp.n551, label %._crit_edge1382.us.i, label %scalar.ph537.preheader

scalar.ph537.preheader:                           ; preds = %.preheader1091.us.i, %middle.block550
  %indvars.iv1764.i.ph = phi i64 [ 0, %.preheader1091.us.i ], [ %n.vec540, %middle.block550 ]
  %.58701380.us.i.ph = phi ptr [ %.48691386.us.i, %.preheader1091.us.i ], [ %i.bqb, %middle.block550 ]
  br label %scalar.ph537

scalar.ph537:                                     ; preds = %scalar.ph537.preheader, %scalar.ph537
  %indvars.iv1764.i = phi i64 [ %indvars.iv.next1765.i, %scalar.ph537 ], [ %indvars.iv1764.i.ph, %scalar.ph537.preheader ] ; 3 uses
  %.58701380.us.i = phi ptr [ %i.bri, %scalar.ph537 ], [ %.58701380.us.i.ph, %scalar.ph537.preheader ] ; 5 uses
  %i.bqp = getelementptr inbounds nuw [4 x i8], ptr %.28791384.us.i, i64 %indvars.iv1764.i ; 2 uses
  %i.bqq = getelementptr inbounds nuw [4 x i8], ptr %.28761385.us.i, i64 %indvars.iv1764.i ; 2 uses
  %i.bqr = load i32, ptr %i.bqp, align 4, !tbaa !56
  %i.bqs = lshr i32 %i.bqr, 16
  %i.bqt = trunc nuw i32 %i.bqs to i16
  store i16 %i.bqt, ptr %.58701380.us.i, align 2, !tbaa !117
  %i.bqu = load i32, ptr %i.bqq, align 4, !tbaa !56
  %i.bqv = lshr i32 %i.bqu, 16
  %i.bqw = trunc nuw i32 %i.bqv to i16
  %i.bqx = getelementptr inbounds nuw i8, ptr %.58701380.us.i, i64 2
  store i16 %i.bqw, ptr %i.bqx, align 2, !tbaa !117
  %i.bqy = getelementptr inbounds nuw [4 x i8], ptr %i.bqp, i64 %i.arn
  %i.bqz = getelementptr inbounds nuw [4 x i8], ptr %i.bqq, i64 %i.arn
end_hunk_7
begin_hunk_8_@_ZN4ncnn19Convolution_x86_fma21create_pipeline_bf16sERKNS_6OptionE:bb.a
  %.88731396.i = phi ptr [ %i.bsh, %scalar.ph522 ], [ %.88731396.i.ph, %scalar.ph522.preheader ] ; 3 uses
  %i.bry = getelementptr inbounds nuw [4 x i8], ptr %.2879.lcssa.i, i64 %indvars.iv1769.i
  %i.brz = getelementptr inbounds nuw [4 x i8], ptr %.2876.lcssa.i, i64 %indvars.iv1769.i
  %i.bsa = load i32, ptr %i.bry, align 4, !tbaa !56
  %i.bsb = lshr i32 %i.bsa, 16
  %i.bsc = trunc nuw i32 %i.bsb to i16
  store i16 %i.bsc, ptr %.88731396.i, align 2, !tbaa !117
  %i.bsd = load i32, ptr %i.brz, align 4, !tbaa !56
  %i.bse = lshr i32 %i.bsd, 16
  %i.bsf = trunc nuw i32 %i.bse to i16
  %i.bsg = getelementptr inbounds nuw i8, ptr %.88731396.i, i64 2
  store i16 %i.bsf, ptr %i.bsg, align 2, !tbaa !117
  %i.bsh = getelementptr inbounds nuw i8, ptr %.88731396.i, i64 4 ; 2 uses
  %indvars.iv.next1770.i = add nuw nsw i64 %indvars.iv1769.i, 1 ; 2 uses
  %exitcond1773.not.i = icmp eq i64 %indvars.iv.next1770.i, %wide.trip.count1753.i
  br i1 %exitcond1773.not.i, label %._crit_edge1398.i, label %scalar.ph522, !llvm.loop !632

._crit_edge1402.split.i:                          ; preds = %._crit_edge1398.i, %.preheader1094.i, %.preheader1091.lr.ph.i
  %indvars.iv.next1776.i = add nuw nsw i64 %indvars.iv1775.i, 2 ; 3 uses
  %i.bsi = or disjoint i64 %indvars.iv.next1776.i, 1 ; 2 uses
  %i.bsj = icmp slt i64 %i.bsi, %i.asr
  %indvars.iv.next1744.i = add i32 %indvars.iv1743.i, %i.asl
  %indvars.iv.next1748.i = add i32 %indvars.iv1747.i, %i.asl
  %i.bsk = trunc nsw i64 %i.bsi to i32
  br i1 %i.bsj, label %_ZN4ncnn3MatD2Ev.exit1005.i, label %.preheader1089.loopexit.i, !llvm.loop !633

_ZN4ncnn3MatD2Ev.exit.i102:                       ; preds = %._crit_edge1461.split.i, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i
  %indvars.iv1807.i = phi i64 [ %i.bjo, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i ], [ %indvars.iv.next1808.i, %._crit_edge1461.split.i ] ; 2 uses
  %indvars.iv1779.i = phi i32 [ %i.bjk, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i ], [ %indvars.iv.next1780.i, %._crit_edge1461.split.i ] ; 2 uses
  %i.bsl = sext i32 %indvars.iv1779.i to i64
  %i.bsm = shl nsw i64 %i.bsl, 2
  %scevgep1781.i = getelementptr i8, ptr %scevgep1778.i, i64 %i.bsm ; 2 uses
  %i.bsn = trunc nsw i64 %indvars.iv1807.i to i32 ; 5 uses
  %i.bso = mul i32 %i.bip, %i.bsn
  %i.bsp = sext i32 %i.bso to i64
  %i.bsq = getelementptr inbounds [4 x i8], ptr %i.bio, i64 %i.bsp ; 2 uses
  %i.bsr = lshr i32 %i.bsn, 3
  %i.bss = lshr i32 %i.bsn, 2
  %i.bst = and i32 %i.bss, 1
  %i.bsu = lshr i32 %i.bsn, 1
  %i.bsv = and i32 %i.bsu, 1
  %i.bsw = and i32 %i.bsn, 1
  %i.bsx = add nuw nsw i32 %i.bsw, %i.bsr
  %i.bsy = add nuw nsw i32 %i.bsx, %i.bst
  %i.bsz = add nuw nsw i32 %i.bsy, %i.bsv
  %i.bta = zext nneg i32 %i.bsz to i64
  %.reass1465.i = mul i64 %factor.op.mul1464.i, %i.bta
  %i.btb = getelementptr inbounds nuw i8, ptr %i.biq, i64 %.reass1465.i ; 4 uses
  br i1 %i.biv, label %.preheader1085.lr.ph.i, label %.preheader1088.i

.preheader1085.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit.i102
  br i1 %i.biw, label %.preheader1085.us.i, label %.preheader1088.thread.i

.preheader1085.us.i:                              ; preds = %.preheader1085.lr.ph.i, %._crit_edge1412.us.i
  %.08271416.us.i = phi i32 [ %i.bvs, %._crit_edge1412.us.i ], [ 0, %.preheader1085.lr.ph.i ]
  %.08281415.us.i = phi ptr [ %.lcssa407, %._crit_edge1412.us.i ], [ %i.btb, %.preheader1085.lr.ph.i ] ; 3 uses
  %.08321414.us.i = phi ptr [ %i.bvr, %._crit_edge1412.us.i ], [ %i.bsq, %.preheader1085.lr.ph.i ] ; 3 uses
  br i1 %min.iters.check636, label %scalar.ph635.preheader, label %vector.ph637

vector.ph637:                                     ; preds = %.preheader1085.us.i
  %i.btc = getelementptr i8, ptr %.08281415.us.i, i64 %i.bjr ; 2 uses
  br label %vector.body639

vector.body639:                                   ; preds = %vector.body639, %vector.ph637
  %index640 = phi i64 [ 0, %vector.ph637 ], [ %index.next651, %vector.body639 ] ; 3 uses
  %i.btd = shl i64 %index640, 4
  %next.gep641 = getelementptr i8, ptr %.08281415.us.i, i64 %i.btd
  %i.bte = getelementptr inbounds nuw [4 x i8], ptr %.08321414.us.i, i64 %index640 ; 2 uses
  %wide.load642 = load <4 x i32>, ptr %i.bte, align 4, !tbaa !56
  %i.btf = lshr <4 x i32> %wide.load642, splat (i32 16)
  %i.btg = getelementptr inbounds nuw [4 x i8], ptr %i.bte, i64 %i.bix ; 2 uses
  %wide.load643 = load <4 x i32>, ptr %i.btg, align 4, !tbaa !56
  %i.bth = lshr <4 x i32> %wide.load643, splat (i32 16)
  %i.bti = getelementptr inbounds nuw [4 x i8], ptr %i.btg, i64 %i.bix ; 2 uses
  %wide.load644 = load <4 x i32>, ptr %i.bti, align 4, !tbaa !56
  %i.btj = lshr <4 x i32> %wide.load644, splat (i32 16)
  %i.btk = getelementptr inbounds nuw [4 x i8], ptr %i.bti, i64 %i.bix ; 2 uses
  %wide.load645 = load <4 x i32>, ptr %i.btk, align 4, !tbaa !56
  %i.btl = lshr <4 x i32> %wide.load645, splat (i32 16)
  %i.btm = getelementptr inbounds nuw [4 x i8], ptr %i.btk, i64 %i.bix ; 2 uses
  %wide.load646 = load <4 x i32>, ptr %i.btm, align 4, !tbaa !56
  %i.btn = lshr <4 x i32> %wide.load646, splat (i32 16)
  %i.bto = getelementptr inbounds nuw [4 x i8], ptr %i.btm, i64 %i.bix ; 2 uses
  %wide.load647 = load <4 x i32>, ptr %i.bto, align 4, !tbaa !56
  %i.btp = lshr <4 x i32> %wide.load647, splat (i32 16)
  %i.btq = getelementptr inbounds nuw [4 x i8], ptr %i.bto, i64 %i.bix ; 2 uses
  %wide.load648 = load <4 x i32>, ptr %i.btq, align 4, !tbaa !56
  %i.btr = lshr <4 x i32> %wide.load648, splat (i32 16)
  %i.bts = getelementptr inbounds nuw [4 x i8], ptr %i.btq, i64 %i.bix
  %wide.load649 = load <4 x i32>, ptr %i.bts, align 4, !tbaa !56
  %i.btt = lshr <4 x i32> %wide.load649, splat (i32 16)
  %i.btu = shufflevector <4 x i32> %i.btf, <4 x i32> %i.bth, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.btv = shufflevector <4 x i32> %i.btj, <4 x i32> %i.btl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.btw = shufflevector <4 x i32> %i.btn, <4 x i32> %i.btp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.btx = shufflevector <4 x i32> %i.btr, <4 x i32> %i.btt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bty = shufflevector <8 x i32> %i.btu, <8 x i32> %i.btv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.btz = trunc nuw <16 x i32> %i.bty to <16 x i16>
  %i.bua = shufflevector <8 x i32> %i.btw, <8 x i32> %i.btx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bub = trunc nuw <16 x i32> %i.bua to <16 x i16>
  %interleaved.vec650 = shufflevector <16 x i16> %i.btz, <16 x i16> %i.bub, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x i16> %interleaved.vec650, ptr %next.gep641, align 2, !tbaa !117
  %index.next651 = add nuw i64 %index640, 4       ; 2 uses
  %i.buc = icmp eq i64 %index.next651, %n.vec638
  br i1 %i.buc, label %middle.block652, label %vector.body639, !llvm.loop !634

middle.block652:                                  ; preds = %vector.body639
  br i1 %cmp.n653, label %._crit_edge1412.us.i, label %scalar.ph635.preheader

scalar.ph635.preheader:                           ; preds = %.preheader1085.us.i, %middle.block652
  %indvars.iv1783.i.ph = phi i64 [ 0, %.preheader1085.us.i ], [ %n.vec638, %middle.block652 ]
  %.18291410.us.i.ph = phi ptr [ %.08281415.us.i, %.preheader1085.us.i ], [ %i.btc, %middle.block652 ]
  br label %scalar.ph635

scalar.ph635:                                     ; preds = %scalar.ph635.preheader, %scalar.ph635
  %indvars.iv1783.i = phi i64 [ %indvars.iv.next1784.i, %scalar.ph635 ], [ %indvars.iv1783.i.ph, %scalar.ph635.preheader ] ; 2 uses
  %.18291410.us.i = phi ptr [ %i.bvq, %scalar.ph635 ], [ %.18291410.us.i.ph, %scalar.ph635.preheader ] ; 9 uses
  %i.bud = getelementptr inbounds nuw [4 x i8], ptr %.08321414.us.i, i64 %indvars.iv1783.i ; 2 uses
  %i.bue = load i32, ptr %i.bud, align 4, !tbaa !56
  %i.buf = lshr i32 %i.bue, 16
  %i.bug = trunc nuw i32 %i.buf to i16
  store i16 %i.bug, ptr %.18291410.us.i, align 2, !tbaa !117
  %i.buh = getelementptr inbounds nuw [4 x i8], ptr %i.bud, i64 %i.bix ; 2 uses
  %i.bui = getelementptr inbounds nuw i8, ptr %.18291410.us.i, i64 2
  %i.buj = load i32, ptr %i.buh, align 4, !tbaa !56
  %i.buk = lshr i32 %i.buj, 16
  %i.bul = trunc nuw i32 %i.buk to i16
  store i16 %i.bul, ptr %i.bui, align 2, !tbaa !117
  %i.bum = getelementptr inbounds nuw [4 x i8], ptr %i.buh, i64 %i.bix ; 2 uses
  %i.bun = getelementptr inbounds nuw i8, ptr %.18291410.us.i, i64 4
  %i.buo = load i32, ptr %i.bum, align 4, !tbaa !56
  %i.bup = lshr i32 %i.buo, 16
  %i.buq = trunc nuw i32 %i.bup to i16
  store i16 %i.buq, ptr %i.bun, align 2, !tbaa !117
  %i.bur = getelementptr inbounds nuw [4 x i8], ptr %i.bum, i64 %i.bix ; 2 uses
  %i.bus = getelementptr inbounds nuw i8, ptr %.18291410.us.i, i64 6
  %i.but = load i32, ptr %i.bur, align 4, !tbaa !56
  %i.buu = lshr i32 %i.but, 16
  %i.buv = trunc nuw i32 %i.buu to i16
  store i16 %i.buv, ptr %i.bus, align 2, !tbaa !117
  %i.buw = getelementptr inbounds nuw [4 x i8], ptr %i.bur, i64 %i.bix ; 2 uses
  %i.bux = getelementptr inbounds nuw i8, ptr %.18291410.us.i, i64 8
  %i.buy = load i32, ptr %i.buw, align 4, !tbaa !56
  %i.buz = lshr i32 %i.buy, 16
  %i.bva = trunc nuw i32 %i.buz to i16
  store i16 %i.bva, ptr %i.bux, align 2, !tbaa !117
  %i.bvb = getelementptr inbounds nuw [4 x i8], ptr %i.buw, i64 %i.bix ; 2 uses
  %i.bvc = getelementptr inbounds nuw i8, ptr %.18291410.us.i, i64 10
  %i.bvd = load i32, ptr %i.bvb, align 4, !tbaa !56
  %i.bve = lshr i32 %i.bvd, 16
  %i.bvf = trunc nuw i32 %i.bve to i16
  store i16 %i.bvf, ptr %i.bvc, align 2, !tbaa !117
  %i.bvg = getelementptr inbounds nuw [4 x i8], ptr %i.bvb, i64 %i.bix ; 2 uses
  %i.bvh = getelementptr inbounds nuw i8, ptr %.18291410.us.i, i64 12
  %i.bvi = load i32, ptr %i.bvg, align 4, !tbaa !56
  %i.bvj = lshr i32 %i.bvi, 16
  %i.bvk = trunc nuw i32 %i.bvj to i16
  store i16 %i.bvk, ptr %i.bvh, align 2, !tbaa !117
  %i.bvl = getelementptr inbounds nuw [4 x i8], ptr %i.bvg, i64 %i.bix
  %i.bvm = getelementptr inbounds nuw i8, ptr %.18291410.us.i, i64 14
  %i.bvn = load i32, ptr %i.bvl, align 4, !tbaa !56
  %i.bvo = lshr i32 %i.bvn, 16
  %i.bvp = trunc nuw i32 %i.bvo to i16
  store i16 %i.bvp, ptr %i.bvm, align 2, !tbaa !117
  %i.bvq = getelementptr inbounds nuw i8, ptr %.18291410.us.i, i64 16 ; 2 uses
  %indvars.iv.next1784.i = add nuw nsw i64 %indvars.iv1783.i, 1 ; 2 uses
  %exitcond1787.not.i = icmp eq i64 %indvars.iv.next1784.i, %wide.trip.count1786.i
  br i1 %exitcond1787.not.i, label %._crit_edge1412.us.i, label %scalar.ph635, !llvm.loop !635

._crit_edge1412.us.i:                             ; preds = %scalar.ph635, %middle.block652
  %.lcssa407 = phi ptr [ %i.btc, %middle.block652 ], [ %i.bvq, %scalar.ph635 ] ; 2 uses
  %i.bvr = getelementptr inbounds nuw [4 x i8], ptr %.08321414.us.i, i64 %i.biz ; 2 uses
  %i.bvs = add nuw nsw i32 %.08271416.us.i, 8     ; 2 uses
  %i.bvt = or disjoint i32 %i.bvs, 7
  %i.bvu = icmp slt i32 %i.bvt, %i.p
  br i1 %i.bvu, label %.preheader1085.us.i, label %.preheader1088.i, !llvm.loop !636

.preheader1088.i:                                 ; preds = %._crit_edge1412.us.i, %_ZN4ncnn3MatD2Ev.exit.i102
  %.0832.lcssa.i = phi ptr [ %i.bsq, %_ZN4ncnn3MatD2Ev.exit.i102 ], [ %i.bvr, %._crit_edge1412.us.i ] ; 3 uses
  %.0828.lcssa.i = phi ptr [ %i.btb, %_ZN4ncnn3MatD2Ev.exit.i102 ], [ %.lcssa407, %._crit_edge1412.us.i ] ; 3 uses
  %.0827.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit.i102 ], [ %i.bjm, %._crit_edge1412.us.i ] ; 4 uses
  %i.bvv = or disjoint i32 %.0827.lcssa.i, 3
  %i.bvw = icmp slt i32 %i.bvv, %i.p
  br i1 %i.bvw, label %.preheader1084.lr.ph.i, label %.preheader1087.i

.preheader1088.thread.i:                          ; preds = %.preheader1085.lr.ph.i
  br i1 %i.bjq, label %.preheader1084.preheader.i, label %.preheader1087.i

.preheader1084.lr.ph.i:                           ; preds = %.preheader1088.i
  br i1 %i.biw, label %.preheader1084.us.i, label %.preheader1084.preheader.i

.preheader1084.preheader.i:                       ; preds = %.preheader1084.lr.ph.i, %.preheader1088.thread.i
  %.0832.lcssa19451953.i = phi ptr [ %.0832.lcssa.i, %.preheader1084.lr.ph.i ], [ %scevgep1781.i, %.preheader1088.thread.i ]
  %.0828.lcssa19461952.i = phi ptr [ %.0828.lcssa.i, %.preheader1084.lr.ph.i ], [ %i.btb, %.preheader1088.thread.i ]
  %.0827.lcssa19471951.i = phi i32 [ %.0827.lcssa.i, %.preheader1084.lr.ph.i ], [ %i.bjm, %.preheader1088.thread.i ] ; 2 uses
  %i.bvx = sub i32 %i.bjn, %.0827.lcssa19471951.i
  %i.bvy = and i32 %i.bvx, -4                     ; 2 uses
  %i.bvz = zext i32 %i.bvy to i64
  %i.bwa = add nuw nsw i64 %i.bvz, 4
  %i.bwb = mul nsw i64 %i.bwa, %i.bjb
  %scevgep1788.i = getelementptr i8, ptr %.0832.lcssa19451953.i, i64 %i.bwb
  %i.bwc = add nsw i32 %.0827.lcssa19471951.i, 4
  %i.bwd = add i32 %i.bwc, %i.bvy
  br label %.preheader1087.i

.preheader1084.us.i:                              ; preds = %.preheader1084.lr.ph.i, %._crit_edge1428.us.i
  %.11432.us.i = phi i32 [ %i.bxn, %._crit_edge1428.us.i ], [ %.0827.lcssa.i, %.preheader1084.lr.ph.i ]
  %.38311431.us.i = phi ptr [ %.lcssa409, %._crit_edge1428.us.i ], [ %.0828.lcssa.i, %.preheader1084.lr.ph.i ] ; 3 uses
  %.18331430.us.i = phi ptr [ %i.bxm, %._crit_edge1428.us.i ], [ %.0832.lcssa.i, %.preheader1084.lr.ph.i ] ; 3 uses
  br i1 %min.iters.check619, label %scalar.ph618.preheader, label %vector.ph620

vector.ph620:                                     ; preds = %.preheader1084.us.i
  %i.bwe = getelementptr i8, ptr %.38311431.us.i, i64 %i.bjs ; 2 uses
  br label %vector.body622

vector.body622:                                   ; preds = %vector.body622, %vector.ph620
  %index623 = phi i64 [ 0, %vector.ph620 ], [ %index.next630, %vector.body622 ] ; 3 uses
  %i.bwf = shl i64 %index623, 3
  %next.gep624 = getelementptr i8, ptr %.38311431.us.i, i64 %i.bwf
  %i.bwg = getelementptr inbounds nuw [4 x i8], ptr %.18331430.us.i, i64 %index623 ; 2 uses
  %wide.load625 = load <4 x i32>, ptr %i.bwg, align 4, !tbaa !56
  %i.bwh = lshr <4 x i32> %wide.load625, splat (i32 16)
  %i.bwi = getelementptr inbounds nuw [4 x i8], ptr %i.bwg, i64 %i.bix ; 2 uses
  %wide.load626 = load <4 x i32>, ptr %i.bwi, align 4, !tbaa !56
  %i.bwj = lshr <4 x i32> %wide.load626, splat (i32 16)
  %i.bwk = getelementptr inbounds nuw [4 x i8], ptr %i.bwi, i64 %i.bix ; 2 uses
  %wide.load627 = load <4 x i32>, ptr %i.bwk, align 4, !tbaa !56
  %i.bwl = lshr <4 x i32> %wide.load627, splat (i32 16)
  %i.bwm = getelementptr inbounds nuw [4 x i8], ptr %i.bwk, i64 %i.bix
  %wide.load628 = load <4 x i32>, ptr %i.bwm, align 4, !tbaa !56
  %i.bwn = lshr <4 x i32> %wide.load628, splat (i32 16)
  %i.bwo = shufflevector <4 x i32> %i.bwh, <4 x i32> %i.bwj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bwp = shufflevector <4 x i32> %i.bwl, <4 x i32> %i.bwn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bwq = shufflevector <8 x i32> %i.bwo, <8 x i32> %i.bwp, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %interleaved.vec629 = trunc nuw <16 x i32> %i.bwq to <16 x i16>
  store <16 x i16> %interleaved.vec629, ptr %next.gep624, align 2, !tbaa !117
  %index.next630 = add nuw i64 %index623, 4       ; 2 uses
  %i.bwr = icmp eq i64 %index.next630, %n.vec621
  br i1 %i.bwr, label %middle.block631, label %vector.body622, !llvm.loop !637

middle.block631:                                  ; preds = %vector.body622
  br i1 %cmp.n632, label %._crit_edge1428.us.i, label %scalar.ph618.preheader

scalar.ph618.preheader:                           ; preds = %.preheader1084.us.i, %middle.block631
  %indvars.iv1790.i.ph = phi i64 [ 0, %.preheader1084.us.i ], [ %n.vec621, %middle.block631 ]
  %.41426.us.i.ph = phi ptr [ %.38311431.us.i, %.preheader1084.us.i ], [ %i.bwe, %middle.block631 ]
  br label %scalar.ph618

scalar.ph618:                                     ; preds = %scalar.ph618.preheader, %scalar.ph618
  %indvars.iv1790.i = phi i64 [ %indvars.iv.next1791.i, %scalar.ph618 ], [ %indvars.iv1790.i.ph, %scalar.ph618.preheader ] ; 2 uses
  %.41426.us.i = phi ptr [ %i.bxl, %scalar.ph618 ], [ %.41426.us.i.ph, %scalar.ph618.preheader ] ; 5 uses
  %i.bws = getelementptr inbounds nuw [4 x i8], ptr %.18331430.us.i, i64 %indvars.iv1790.i ; 2 uses
  %i.bwt = load i32, ptr %i.bws, align 4, !tbaa !56
  %i.bwu = lshr i32 %i.bwt, 16
  %i.bwv = trunc nuw i32 %i.bwu to i16
  store i16 %i.bwv, ptr %.41426.us.i, align 2, !tbaa !117
  %i.bww = getelementptr inbounds nuw [4 x i8], ptr %i.bws, i64 %i.bix ; 2 uses
  %i.bwx = getelementptr inbounds nuw i8, ptr %.41426.us.i, i64 2
  %i.bwy = load i32, ptr %i.bww, align 4, !tbaa !56
  %i.bwz = lshr i32 %i.bwy, 16
  %i.bxa = trunc nuw i32 %i.bwz to i16
  store i16 %i.bxa, ptr %i.bwx, align 2, !tbaa !117
  %i.bxb = getelementptr inbounds nuw [4 x i8], ptr %i.bww, i64 %i.bix ; 2 uses
  %i.bxc = getelementptr inbounds nuw i8, ptr %.41426.us.i, i64 4
  %i.bxd = load i32, ptr %i.bxb, align 4, !tbaa !56
  %i.bxe = lshr i32 %i.bxd, 16
  %i.bxf = trunc nuw i32 %i.bxe to i16
  store i16 %i.bxf, ptr %i.bxc, align 2, !tbaa !117
  %i.bxg = getelementptr inbounds nuw [4 x i8], ptr %i.bxb, i64 %i.bix
  %i.bxh = getelementptr inbounds nuw i8, ptr %.41426.us.i, i64 6
  %i.bxi = load i32, ptr %i.bxg, align 4, !tbaa !56
  %i.bxj = lshr i32 %i.bxi, 16
  %i.bxk = trunc nuw i32 %i.bxj to i16
  store i16 %i.bxk, ptr %i.bxh, align 2, !tbaa !117
  %i.bxl = getelementptr inbounds nuw i8, ptr %.41426.us.i, i64 8 ; 2 uses
  %indvars.iv.next1791.i = add nuw nsw i64 %indvars.iv1790.i, 1 ; 2 uses
  %exitcond1794.not.i = icmp eq i64 %indvars.iv.next1791.i, %wide.trip.count1786.i
  br i1 %exitcond1794.not.i, label %._crit_edge1428.us.i, label %scalar.ph618, !llvm.loop !638

._crit_edge1428.us.i:                             ; preds = %scalar.ph618, %middle.block631
  %.lcssa409 = phi ptr [ %i.bwe, %middle.block631 ], [ %i.bxl, %scalar.ph618 ] ; 2 uses
  %i.bxm = getelementptr inbounds nuw [4 x i8], ptr %.18331430.us.i, i64 %i.bjb ; 2 uses
  %i.bxn = add nuw nsw i32 %.11432.us.i, 4        ; 3 uses
  %i.bxo = or disjoint i32 %i.bxn, 3
  %i.bxp = icmp slt i32 %i.bxo, %i.p
  br i1 %i.bxp, label %.preheader1084.us.i, label %.preheader1087.i, !llvm.loop !639

.preheader1087.i:                                 ; preds = %._crit_edge1428.us.i, %.preheader1084.preheader.i, %.preheader1088.thread.i, %.preheader1088.i
  %.1833.lcssa.i = phi ptr [ %.0832.lcssa.i, %.preheader1088.i ], [ %scevgep1781.i, %.preheader1088.thread.i ], [ %scevgep1788.i, %.preheader1084.preheader.i ], [ %i.bxm, %._crit_edge1428.us.i ] ; 2 uses
  %.3831.lcssa.i = phi ptr [ %.0828.lcssa.i, %.preheader1088.i ], [ %i.btb, %.preheader1088.thread.i ], [ %.0828.lcssa19461952.i, %.preheader1084.preheader.i ], [ %.lcssa409, %._crit_edge1428.us.i ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %.0827.lcssa.i, %.preheader1088.i ], [ %i.bjm, %.preheader1088.thread.i ], [ %i.bwd, %.preheader1084.preheader.i ], [ %i.bxn, %._crit_edge1428.us.i ] ; 3 uses
  %i.bxq = or disjoint i32 %.1.lcssa.i, 1
  %i.bxr = icmp slt i32 %i.bxq, %i.p
  br i1 %i.bxr, label %.preheader1083.lr.ph.i, label %.preheader1086.i

.preheader1083.lr.ph.i:                           ; preds = %.preheader1087.i
  br i1 %i.biw, label %.preheader1083.us.i, label %._crit_edge1461.split.i

.preheader1083.us.i:                              ; preds = %.preheader1083.lr.ph.i, %._crit_edge1444.us.i
  %.21448.us.i = phi i32 [ %i.byr, %._crit_edge1444.us.i ], [ %.1.lcssa.i, %.preheader1083.lr.ph.i ]
  %.61447.us.i = phi ptr [ %.lcssa412, %._crit_edge1444.us.i ], [ %.3831.lcssa.i, %.preheader1083.lr.ph.i ] ; 4 uses
  %.28341446.us.i = phi ptr [ %i.byq, %._crit_edge1444.us.i ], [ %.1833.lcssa.i, %.preheader1083.lr.ph.i ] ; 3 uses
  br i1 %min.iters.check600, label %scalar.ph599.preheader, label %vector.ph601

vector.ph601:                                     ; preds = %.preheader1083.us.i
  %i.bxs = getelementptr i8, ptr %.61447.us.i, i64 %i.bjt ; 2 uses
  br label %vector.body603

vector.body603:                                   ; preds = %vector.body603, %vector.ph601
  %index604 = phi i64 [ 0, %vector.ph601 ], [ %index.next613, %vector.body603 ] ; 3 uses
  %i.bxt = shl i64 %index604, 2                   ; 2 uses
  %next.gep605 = getelementptr i8, ptr %.61447.us.i, i64 %i.bxt
  %i.bxu = getelementptr i8, ptr %.61447.us.i, i64 %i.bxt
  %next.gep606 = getelementptr i8, ptr %i.bxu, i64 16
  %i.bxv = getelementptr inbounds nuw [4 x i8], ptr %.28341446.us.i, i64 %index604 ; 3 uses
  %i.bxw = getelementptr inbounds nuw i8, ptr %i.bxv, i64 16
  %wide.load607 = load <4 x i32>, ptr %i.bxv, align 4, !tbaa !56
  %wide.load608 = load <4 x i32>, ptr %i.bxw, align 4, !tbaa !56
  %i.bxx = lshr <4 x i32> %wide.load607, splat (i32 16)
  %i.bxy = lshr <4 x i32> %wide.load608, splat (i32 16)
  %i.bxz = getelementptr inbounds nuw [4 x i8], ptr %i.bxv, i64 %i.bix ; 2 uses
  %i.bya = getelementptr inbounds nuw i8, ptr %i.bxz, i64 16
  %wide.load609 = load <4 x i32>, ptr %i.bxz, align 4, !tbaa !56
  %wide.load610 = load <4 x i32>, ptr %i.bya, align 4, !tbaa !56
  %i.byb = lshr <4 x i32> %wide.load609, splat (i32 16)
  %i.byc = lshr <4 x i32> %wide.load610, splat (i32 16)
  %i.byd = shufflevector <4 x i32> %i.bxx, <4 x i32> %i.byb, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec611 = trunc nuw <8 x i32> %i.byd to <8 x i16>
  store <8 x i16> %interleaved.vec611, ptr %next.gep605, align 2, !tbaa !117
  %i.bye = shufflevector <4 x i32> %i.bxy, <4 x i32> %i.byc, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec612 = trunc nuw <8 x i32> %i.bye to <8 x i16>
  store <8 x i16> %interleaved.vec612, ptr %next.gep606, align 2, !tbaa !117
  %index.next613 = add nuw i64 %index604, 8       ; 2 uses
  %i.byf = icmp eq i64 %index.next613, %n.vec602
  br i1 %i.byf, label %middle.block614, label %vector.body603, !llvm.loop !640

middle.block614:                                  ; preds = %vector.body603
  br i1 %cmp.n615, label %._crit_edge1444.us.i, label %scalar.ph599.preheader

scalar.ph599.preheader:                           ; preds = %.preheader1083.us.i, %middle.block614
  %indvars.iv1796.i.ph = phi i64 [ 0, %.preheader1083.us.i ], [ %n.vec602, %middle.block614 ]
  %.71442.us.i.ph = phi ptr [ %.61447.us.i, %.preheader1083.us.i ], [ %i.bxs, %middle.block614 ]
  br label %scalar.ph599

scalar.ph599:                                     ; preds = %scalar.ph599.preheader, %scalar.ph599
  %indvars.iv1796.i = phi i64 [ %indvars.iv.next1797.i, %scalar.ph599 ], [ %indvars.iv1796.i.ph, %scalar.ph599.preheader ] ; 2 uses
  %.71442.us.i = phi ptr [ %i.byp, %scalar.ph599 ], [ %.71442.us.i.ph, %scalar.ph599.preheader ] ; 3 uses
  %i.byg = getelementptr inbounds nuw [4 x i8], ptr %.28341446.us.i, i64 %indvars.iv1796.i ; 2 uses
  %i.byh = load i32, ptr %i.byg, align 4, !tbaa !56
  %i.byi = lshr i32 %i.byh, 16
  %i.byj = trunc nuw i32 %i.byi to i16
  store i16 %i.byj, ptr %.71442.us.i, align 2, !tbaa !117
  %i.byk = getelementptr inbounds nuw [4 x i8], ptr %i.byg, i64 %i.bix
  %i.byl = getelementptr inbounds nuw i8, ptr %.71442.us.i, i64 2
  %i.bym = load i32, ptr %i.byk, align 4, !tbaa !56
  %i.byn = lshr i32 %i.bym, 16
  %i.byo = trunc nuw i32 %i.byn to i16
  store i16 %i.byo, ptr %i.byl, align 2, !tbaa !117
  %i.byp = getelementptr inbounds nuw i8, ptr %.71442.us.i, i64 4 ; 2 uses
  %indvars.iv.next1797.i = add nuw nsw i64 %indvars.iv1796.i, 1 ; 2 uses
  %exitcond1800.not.i = icmp eq i64 %indvars.iv.next1797.i, %wide.trip.count1786.i
  br i1 %exitcond1800.not.i, label %._crit_edge1444.us.i, label %scalar.ph599, !llvm.loop !641

._crit_edge1444.us.i:                             ; preds = %scalar.ph599, %middle.block614
  %.lcssa412 = phi ptr [ %i.bxs, %middle.block614 ], [ %i.byp, %scalar.ph599 ] ; 2 uses
  %i.byq = getelementptr inbounds nuw [4 x i8], ptr %.28341446.us.i, i64 %i.bjd ; 2 uses
  %i.byr = add nuw nsw i32 %.21448.us.i, 2        ; 3 uses
  %i.bys = or disjoint i32 %i.byr, 1
  %i.byt = icmp slt i32 %i.bys, %i.p
  br i1 %i.byt, label %.preheader1083.us.i, label %.preheader1086.i, !llvm.loop !642

.preheader1086.i:                                 ; preds = %._crit_edge1444.us.i, %.preheader1087.i
  %.2834.lcssa.i = phi ptr [ %.1833.lcssa.i, %.preheader1087.i ], [ %i.byq, %._crit_edge1444.us.i ] ; 3 uses
  %.6.lcssa.i = phi ptr [ %.3831.lcssa.i, %.preheader1087.i ], [ %.lcssa412, %._crit_edge1444.us.i ]
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %.preheader1087.i ], [ %i.byr, %._crit_edge1444.us.i ] ; 2 uses
  %i.byu = icmp sge i32 %.2.lcssa.i, %i.p
  %brmerge1475.i = or i1 %i.bje, %i.byu
  br i1 %brmerge1475.i, label %._crit_edge1461.split.i, label %iter.check

iter.check:                                       ; preds = %.preheader1086.i, %._crit_edge1457.i
  %.31460.i = phi i32 [ %i.bzt, %._crit_edge1457.i ], [ %.2.lcssa.i, %.preheader1086.i ]
  %.91459.i = phi ptr [ %.lcssa415, %._crit_edge1457.i ], [ %.6.lcssa.i, %.preheader1086.i ] ; 5 uses
  br i1 %min.iters.check576, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check577, label %vec.epilog.ph, label %vector.ph578

vector.ph578:                                     ; preds = %vector.main.loop.iter.check
  %i.byv = getelementptr i8, ptr %.91459.i, i64 %i.bjv ; 2 uses
  br label %vector.body580

vector.body580:                                   ; preds = %vector.body580, %vector.ph578
  %index581 = phi i64 [ 0, %vector.ph578 ], [ %index.next587, %vector.body580 ] ; 3 uses
  %i.byw = shl i64 %index581, 1
  %next.gep582 = getelementptr i8, ptr %.91459.i, i64 %i.byw ; 4 uses
  %i.byx = getelementptr inbounds nuw [4 x i8], ptr %.2834.lcssa.i, i64 %index581 ; 4 uses
  %i.byy = getelementptr inbounds nuw i8, ptr %i.byx, i64 32
  %i.byz = getelementptr inbounds nuw i8, ptr %i.byx, i64 64
  %i.bza = getelementptr inbounds nuw i8, ptr %i.byx, i64 96
  %wide.load583 = load <8 x i32>, ptr %i.byx, align 4, !tbaa !56
  %wide.load584 = load <8 x i32>, ptr %i.byy, align 4, !tbaa !56
  %wide.load585 = load <8 x i32>, ptr %i.byz, align 4, !tbaa !56
end_hunk_8
begin_hunk_9_@_ZNK4ncnn19Convolution_x86_fma13forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.amp = insertelement <4 x i32> poison, i32 %i.amo, i64 0
  %i.amq = bitcast <4 x i32> %i.amp to <4 x float>
  %i.amr = shufflevector <4 x float> %i.amq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ams = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aki, <4 x float> nofpclass(nan inf) %i.amr, <4 x float> nofpclass(nan inf) %i.aln) ; 2 uses
  %i.amt = getelementptr inbounds nuw i8, ptr %.36171828.i, i64 64
  %indvars.iv.next2343.i = add nuw nsw i64 %indvars.iv2342.i, 1 ; 2 uses
  %exitcond2348.not.i = icmp eq i64 %indvars.iv.next2343.i, %wide.trip.count2354.i
  br i1 %exitcond2348.not.i, label %.loopexit1796.loopexit.i, label %.lr.ph1831.i, !llvm.loop !939

.loopexit1796.loopexit.i:                         ; preds = %.lr.ph1831.i
  %scevgep2344.i = getelementptr i8, ptr %.06141853.i, i64 64
  %scevgep2345.i = getelementptr i8, ptr %scevgep2344.i, i64 %i.acx
  br label %.loopexit1795.i

.loopexit1796.i:                                  ; preds = %.noexc789.i
  br i1 %i.aba, label %.preheader1794.i, label %.loopexit1795.i

.preheader1794.i:                                 ; preds = %.loopexit1796.i
  br i1 %i.acs, label %.lr.ph1843.i, label %.loopexit1795.i

.lr.ph1843.i:                                     ; preds = %.preheader1794.i
  %i.amu = getelementptr [2 x i8], ptr %gep1862.i, i64 %i.acu
  %i.amv = getelementptr i8, ptr %gep1862.i, i64 %.idx747.i
  %i.amw = getelementptr i8, ptr %gep1862.i, i64 %.idx748.i
  %i.amx = getelementptr i8, ptr %gep1862.i, i64 %.idx749.i
  %i.amy = getelementptr i8, ptr %gep1862.i, i64 %.idx750.i
  %i.amz = getelementptr i8, ptr %gep1862.i, i64 %.idx751.i
  %i.ana = getelementptr i8, ptr %gep1862.i, i64 %.idx752.i
  br label %bb.fu

bb.fu:                                            ; preds = %bb.fu, %.lr.ph1843.i
  %indvars.iv2349.i = phi i64 [ 0, %.lr.ph1843.i ], [ %indvars.iv.next2350.i, %bb.fu ] ; 2 uses
  %.56191841.i = phi ptr [ %.06141853.i, %.lr.ph1843.i ], [ %i.arl, %bb.fu ] ; 9 uses
  %.616651840.i = phi <4 x float> [ %.116601852.i, %.lr.ph1843.i ], [ %i.aqm, %bb.fu ]
  %.516801839.i = phi <4 x float> [ %.016751851.i, %.lr.ph1843.i ], [ %i.aqu, %bb.fu ]
  %.516941838.i = phi <4 x float> [ %.016891850.i, %.lr.ph1843.i ], [ %i.arc, %bb.fu ]
  %.517061837.i = phi <4 x float> [ %.017011849.i, %.lr.ph1843.i ], [ %i.ark, %bb.fu ]
  %i.anb = getelementptr inbounds nuw [4 x i8], ptr %i.act, i64 %indvars.iv2349.i
  %i.anc = load i32, ptr %i.anb, align 4, !tbaa !81
  %i.and = load i64, ptr %.56191841.i, align 1, !tbaa !114
  %i.ane = insertelement <2 x i64> poison, i64 %i.and, i64 0
  %i.anf = bitcast <2 x i64> %i.ane to <8 x i16>
  %i.ang = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.anf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.anh = bitcast <8 x i16> %i.ang to <4 x float>
  %i.ani = getelementptr inbounds nuw i8, ptr %.56191841.i, i64 8
  %i.anj = load i64, ptr %i.ani, align 1, !tbaa !114
  %i.ank = insertelement <2 x i64> poison, i64 %i.anj, i64 0
  %i.anl = bitcast <2 x i64> %i.ank to <8 x i16>
  %i.anm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.anl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ann = bitcast <8 x i16> %i.anm to <4 x float>
  %i.ano = getelementptr inbounds nuw i8, ptr %.56191841.i, i64 16
  %i.anp = load i64, ptr %i.ano, align 1, !tbaa !114
  %i.anq = insertelement <2 x i64> poison, i64 %i.anp, i64 0
  %i.anr = bitcast <2 x i64> %i.anq to <8 x i16>
  %i.ans = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.anr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ant = bitcast <8 x i16> %i.ans to <4 x float>
  %i.anu = getelementptr inbounds nuw i8, ptr %.56191841.i, i64 24
  %i.anv = load i64, ptr %i.anu, align 1, !tbaa !114
  %i.anw = insertelement <2 x i64> poison, i64 %i.anv, i64 0
  %i.anx = bitcast <2 x i64> %i.anw to <8 x i16>
  %i.any = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.anx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.anz = bitcast <8 x i16> %i.any to <4 x float>
  %i.aoa = getelementptr inbounds nuw i8, ptr %.56191841.i, i64 32
  %i.aob = load i64, ptr %i.aoa, align 1, !tbaa !114
  %i.aoc = insertelement <2 x i64> poison, i64 %i.aob, i64 0
  %i.aod = bitcast <2 x i64> %i.aoc to <8 x i16>
  %i.aoe = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aod, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aof = bitcast <8 x i16> %i.aoe to <4 x float>
  %i.aog = getelementptr inbounds nuw i8, ptr %.56191841.i, i64 40
  %i.aoh = load i64, ptr %i.aog, align 1, !tbaa !114
  %i.aoi = insertelement <2 x i64> poison, i64 %i.aoh, i64 0
  %i.aoj = bitcast <2 x i64> %i.aoi to <8 x i16>
  %i.aok = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aoj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aol = bitcast <8 x i16> %i.aok to <4 x float>
  %i.aom = getelementptr inbounds nuw i8, ptr %.56191841.i, i64 48
  %i.aon = load i64, ptr %i.aom, align 1, !tbaa !114
  %i.aoo = insertelement <2 x i64> poison, i64 %i.aon, i64 0
  %i.aop = bitcast <2 x i64> %i.aoo to <8 x i16>
  %i.aoq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aop, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aor = bitcast <8 x i16> %i.aoq to <4 x float>
  %i.aos = getelementptr inbounds nuw i8, ptr %.56191841.i, i64 56
  %i.aot = load i64, ptr %i.aos, align 1, !tbaa !114
  %i.aou = insertelement <2 x i64> poison, i64 %i.aot, i64 0
  %i.aov = bitcast <2 x i64> %i.aou to <8 x i16>
  %i.aow = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aov, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aox = bitcast <8 x i16> %i.aow to <4 x float>
  %i.aoy = sext i32 %i.anc to i64                 ; 8 uses
  %i.aoz = getelementptr inbounds [2 x i8], ptr %gep1862.i, i64 %i.aoy
  %i.apa = load i16, ptr %i.aoz, align 2, !tbaa !117
  %i.apb = zext i16 %i.apa to i32
  %i.apc = shl nuw i32 %i.apb, 16
  %i.apd = insertelement <4 x i32> poison, i32 %i.apc, i64 0
  %i.ape = bitcast <4 x i32> %i.apd to <4 x float>
  %i.apf = shufflevector <4 x float> %i.ape, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.anh, <4 x float> nofpclass(nan inf) %i.apf, <4 x float> nofpclass(nan inf) %.616651840.i)
  %i.aph = getelementptr [2 x i8], ptr %i.amu, i64 %i.aoy
  %i.api = load i16, ptr %i.aph, align 2, !tbaa !117
  %i.apj = zext i16 %i.api to i32
  %i.apk = shl nuw i32 %i.apj, 16
  %i.apl = insertelement <4 x i32> poison, i32 %i.apk, i64 0
  %i.apm = bitcast <4 x i32> %i.apl to <4 x float>
  %i.apn = shufflevector <4 x float> %i.apm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ann, <4 x float> nofpclass(nan inf) %i.apn, <4 x float> nofpclass(nan inf) %.516801839.i)
  %i.app = getelementptr [2 x i8], ptr %i.amv, i64 %i.aoy
  %i.apq = load i16, ptr %i.app, align 2, !tbaa !117
  %i.apr = zext i16 %i.apq to i32
  %i.aps = shl nuw i32 %i.apr, 16
  %i.apt = insertelement <4 x i32> poison, i32 %i.aps, i64 0
  %i.apu = bitcast <4 x i32> %i.apt to <4 x float>
  %i.apv = shufflevector <4 x float> %i.apu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ant, <4 x float> nofpclass(nan inf) %i.apv, <4 x float> nofpclass(nan inf) %.516941838.i)
  %i.apx = getelementptr [2 x i8], ptr %i.amw, i64 %i.aoy
  %i.apy = load i16, ptr %i.apx, align 2, !tbaa !117
  %i.apz = zext i16 %i.apy to i32
  %i.aqa = shl nuw i32 %i.apz, 16
  %i.aqb = insertelement <4 x i32> poison, i32 %i.aqa, i64 0
  %i.aqc = bitcast <4 x i32> %i.aqb to <4 x float>
  %i.aqd = shufflevector <4 x float> %i.aqc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqe = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.anz, <4 x float> nofpclass(nan inf) %i.aqd, <4 x float> nofpclass(nan inf) %.517061837.i)
  %i.aqf = getelementptr [2 x i8], ptr %i.amx, i64 %i.aoy
  %i.aqg = load i16, ptr %i.aqf, align 2, !tbaa !117
  %i.aqh = zext i16 %i.aqg to i32
  %i.aqi = shl nuw i32 %i.aqh, 16
  %i.aqj = insertelement <4 x i32> poison, i32 %i.aqi, i64 0
  %i.aqk = bitcast <4 x i32> %i.aqj to <4 x float>
  %i.aql = shufflevector <4 x float> %i.aqk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aof, <4 x float> nofpclass(nan inf) %i.aql, <4 x float> nofpclass(nan inf) %i.apg) ; 2 uses
  %i.aqn = getelementptr [2 x i8], ptr %i.amy, i64 %i.aoy
  %i.aqo = load i16, ptr %i.aqn, align 2, !tbaa !117
  %i.aqp = zext i16 %i.aqo to i32
  %i.aqq = shl nuw i32 %i.aqp, 16
  %i.aqr = insertelement <4 x i32> poison, i32 %i.aqq, i64 0
  %i.aqs = bitcast <4 x i32> %i.aqr to <4 x float>
  %i.aqt = shufflevector <4 x float> %i.aqs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aol, <4 x float> nofpclass(nan inf) %i.aqt, <4 x float> nofpclass(nan inf) %i.apo) ; 2 uses
  %i.aqv = getelementptr [2 x i8], ptr %i.amz, i64 %i.aoy
  %i.aqw = load i16, ptr %i.aqv, align 2, !tbaa !117
  %i.aqx = zext i16 %i.aqw to i32
  %i.aqy = shl nuw i32 %i.aqx, 16
  %i.aqz = insertelement <4 x i32> poison, i32 %i.aqy, i64 0
  %i.ara = bitcast <4 x i32> %i.aqz to <4 x float>
  %i.arb = shufflevector <4 x float> %i.ara, <4 x float> poison, <4 x i32> zeroinitializer
  %i.arc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aor, <4 x float> nofpclass(nan inf) %i.arb, <4 x float> nofpclass(nan inf) %i.apw) ; 2 uses
  %i.ard = getelementptr [2 x i8], ptr %i.ana, i64 %i.aoy
  %i.are = load i16, ptr %i.ard, align 2, !tbaa !117
  %i.arf = zext i16 %i.are to i32
  %i.arg = shl nuw i32 %i.arf, 16
  %i.arh = insertelement <4 x i32> poison, i32 %i.arg, i64 0
  %i.ari = bitcast <4 x i32> %i.arh to <4 x float>
  %i.arj = shufflevector <4 x float> %i.ari, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ark = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aox, <4 x float> nofpclass(nan inf) %i.arj, <4 x float> nofpclass(nan inf) %i.aqe) ; 2 uses
  %i.arl = getelementptr inbounds nuw i8, ptr %.56191841.i, i64 64
  %indvars.iv.next2350.i = add nuw nsw i64 %indvars.iv2349.i, 1 ; 2 uses
  %exitcond2355.not.i = icmp eq i64 %indvars.iv.next2350.i, %wide.trip.count2354.i
  br i1 %exitcond2355.not.i, label %.loopexit1795.loopexit.i, label %bb.fu, !llvm.loop !940

.loopexit1795.loopexit.i:                         ; preds = %bb.fu
  %scevgep2351.i = getelementptr i8, ptr %.06141853.i, i64 64
  %scevgep2352.i = getelementptr i8, ptr %scevgep2351.i, i64 %i.acx
  br label %.loopexit1795.i

.loopexit1795.i:                                  ; preds = %.loopexit1795.loopexit.i, %.preheader1794.i, %.loopexit1796.i, %.loopexit1796.loopexit.i, %bb.ft
  %.61707.i = phi nsz <4 x float> [ %.017011849.i, %.loopexit1796.i ], [ %.017011849.i, %.preheader1794.i ], [ %i.ark, %.loopexit1795.loopexit.i ], [ %.017011849.i, %bb.ft ], [ %i.ams, %.loopexit1796.loopexit.i ] ; 2 uses
  %.61695.i = phi nsz <4 x float> [ %.016891850.i, %.loopexit1796.i ], [ %.016891850.i, %.preheader1794.i ], [ %i.arc, %.loopexit1795.loopexit.i ], [ %.016891850.i, %bb.ft ], [ %i.amk, %.loopexit1796.loopexit.i ] ; 2 uses
  %.61681.i = phi nsz <4 x float> [ %.016751851.i, %.loopexit1796.i ], [ %.016751851.i, %.preheader1794.i ], [ %i.aqu, %.loopexit1795.loopexit.i ], [ %.016751851.i, %bb.ft ], [ %i.amc, %.loopexit1796.loopexit.i ] ; 2 uses
  %.71666.i = phi nsz <4 x float> [ %.116601852.i, %.loopexit1796.i ], [ %.116601852.i, %.preheader1794.i ], [ %i.aqm, %.loopexit1795.loopexit.i ], [ %.116601852.i, %bb.ft ], [ %i.alu, %.loopexit1796.loopexit.i ] ; 2 uses
  %.6620.i = phi ptr [ %.06141853.i, %.loopexit1796.i ], [ %.06141853.i, %.preheader1794.i ], [ %scevgep2352.i, %.loopexit1795.loopexit.i ], [ %.06141853.i, %bb.ft ], [ %scevgep2345.i, %.loopexit1796.loopexit.i ] ; 2 uses
  %i.arm = add nuw nsw i32 %.06101854.i, 8        ; 2 uses
  %i.arn = or disjoint i32 %i.arm, 7
  %i.aro = icmp slt i32 %i.arn, %i.aak
  br i1 %i.aro, label %.noexc789.i, label %.preheader1801.i, !llvm.loop !936

.preheader1800.i:                                 ; preds = %.loopexit1791.i, %.preheader1801.i
  %.71708.lcssa.i = phi <4 x float> [ %.01701.lcssa.i, %.preheader1801.i ], [ %.111712.i, %.loopexit1791.i ]
  %.71696.lcssa.i = phi <4 x float> [ %.01689.lcssa.i, %.preheader1801.i ], [ %.111700.i, %.loopexit1791.i ]
  %.71682.lcssa.i = phi <4 x float> [ %.01675.lcssa.i, %.preheader1801.i ], [ %.111686.i, %.loopexit1791.i ] ; 3 uses
  %.81667.lcssa.i = phi <4 x float> [ %.11660.lcssa.i, %.preheader1801.i ], [ %.121671.i, %.loopexit1791.i ] ; 3 uses
  %.7621.lcssa.i = phi ptr [ %.0614.lcssa.i, %.preheader1801.i ], [ %.11625.i, %.loopexit1791.i ] ; 3 uses
  %.1611.lcssa.i = phi i32 [ %.0610.lcssa.i, %.preheader1801.i ], [ %i.axs, %.loopexit1791.i ] ; 5 uses
  %i.arp = or disjoint i32 %.1611.lcssa.i, 1
  %i.arq = icmp slt i32 %i.arp, %i.aak
  br i1 %i.arq, label %.noexc785.lr.ph.i, label %.preheader1799.i

.noexc785.lr.ph.i:                                ; preds = %.preheader1800.i
  %i.arr = load i32, ptr %i.ka, align 4, !tbaa !89, !noalias !991
  %i.ars = load ptr, ptr %10, align 8, !tbaa !37, !noalias !991
  %i.art = load i64, ptr %i.kc, align 8, !tbaa !38, !noalias !991
  %i.aru = load i64, ptr %i.jx, align 8, !tbaa !79, !noalias !991 ; 2 uses
  %factor.op.mul1921.i = mul i64 %i.aru, %i.art
  %i.arv = sext i32 %i.arr to i64
  %i.arw = mul nsw i64 %i.arv, %i.abo
  %i.arx = mul i64 %i.arw, %i.aru
  %invariant.gep1923.i = getelementptr i8, ptr %i.ars, i64 %i.arx
  %i.ary = mul nsw i64 %indvars.iv2390.i, %i.abw
  %invariant.gep1924.i = getelementptr [2 x i8], ptr %invariant.gep1923.i, i64 %i.ary
  %i.arz = load ptr, ptr %i.g, align 8
  %i.asa = load i64, ptr %i.d, align 8
  br i1 %i.abr, label %.noexc785.us.preheader.i, label %.noexc785.preheader.i

.noexc785.preheader.i:                            ; preds = %.noexc785.lr.ph.i
  %i.asb = add nsw i32 %.1611.lcssa.i, 2
  %i.asc = sub i32 %i.abl, %.1611.lcssa.i
  %i.asd = and i32 %i.asc, -2
  %i.ase = add i32 %i.asb, %i.asd
  br label %.preheader1799.i

.noexc785.us.preheader.i:                         ; preds = %.noexc785.lr.ph.i
  %i.asf = zext i32 %.1611.lcssa.i to i64
  br label %.noexc785.us.i

.noexc785.us.i:                                   ; preds = %._crit_edge1909.us.i, %.noexc785.us.preheader.i
  %indvars.iv2377.i = phi i64 [ %i.asf, %.noexc785.us.preheader.i ], [ %indvars.iv.next2378.i, %._crit_edge1909.us.i ] ; 2 uses
  %.126261915.us.i = phi ptr [ %.7621.lcssa.i, %.noexc785.us.preheader.i ], [ %scevgep2373.i, %._crit_edge1909.us.i ] ; 2 uses
  %.1316721914.us.i = phi <4 x float> [ %.81667.lcssa.i, %.noexc785.us.preheader.i ], [ %i.atc, %._crit_edge1909.us.i ]
  %.1216871913.us.i = phi <4 x float> [ %.71682.lcssa.i, %.noexc785.us.preheader.i ], [ %i.atk, %._crit_edge1909.us.i ]
  %.reass1922.us.i = mul i64 %factor.op.mul1921.i, %indvars.iv2377.i
  %gep1925.us.i = getelementptr i8, ptr %invariant.gep1924.i, i64 %.reass1922.us.i ; 2 uses
  %i.asg = getelementptr [2 x i8], ptr %gep1925.us.i, i64 %i.asa
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fv, %.noexc785.us.i
  %indvars.iv2370.i = phi i64 [ 0, %.noexc785.us.i ], [ %indvars.iv.next2371.i, %bb.fv ] ; 2 uses
  %.136271906.us.i = phi ptr [ %.126261915.us.i, %.noexc785.us.i ], [ %i.atl, %bb.fv ] ; 3 uses
  %.1416731905.us.i = phi <4 x float> [ %.1316721914.us.i, %.noexc785.us.i ], [ %i.atc, %bb.fv ]
  %.1316881904.us.i = phi <4 x float> [ %.1216871913.us.i, %.noexc785.us.i ], [ %i.atk, %bb.fv ]
  %i.ash = getelementptr inbounds nuw [4 x i8], ptr %i.arz, i64 %indvars.iv2370.i
  %i.asi = load i32, ptr %i.ash, align 4, !tbaa !81
  %i.asj = load i64, ptr %.136271906.us.i, align 1, !tbaa !114
  %i.ask = insertelement <2 x i64> poison, i64 %i.asj, i64 0
  %i.asl = bitcast <2 x i64> %i.ask to <8 x i16>
  %i.asm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.asl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.asn = bitcast <8 x i16> %i.asm to <4 x float>
  %i.aso = getelementptr inbounds nuw i8, ptr %.136271906.us.i, i64 8
  %i.asp = load i64, ptr %i.aso, align 1, !tbaa !114
  %i.asq = insertelement <2 x i64> poison, i64 %i.asp, i64 0
  %i.asr = bitcast <2 x i64> %i.asq to <8 x i16>
  %i.ass = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.asr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ast = bitcast <8 x i16> %i.ass to <4 x float>
  %i.asu = sext i32 %i.asi to i64                 ; 2 uses
  %i.asv = getelementptr inbounds [2 x i8], ptr %gep1925.us.i, i64 %i.asu
  %i.asw = load i16, ptr %i.asv, align 2, !tbaa !117
  %i.asx = zext i16 %i.asw to i32
  %i.asy = shl nuw i32 %i.asx, 16
  %i.asz = insertelement <4 x i32> poison, i32 %i.asy, i64 0
  %i.ata = bitcast <4 x i32> %i.asz to <4 x float>
  %i.atb = shufflevector <4 x float> %i.ata, <4 x float> poison, <4 x i32> zeroinitializer
  %i.atc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.asn, <4 x float> nofpclass(nan inf) %i.atb, <4 x float> nofpclass(nan inf) %.1416731905.us.i) ; 3 uses
  %i.atd = getelementptr [2 x i8], ptr %i.asg, i64 %i.asu
  %i.ate = load i16, ptr %i.atd, align 2, !tbaa !117
  %i.atf = zext i16 %i.ate to i32
  %i.atg = shl nuw i32 %i.atf, 16
  %i.ath = insertelement <4 x i32> poison, i32 %i.atg, i64 0
  %i.ati = bitcast <4 x i32> %i.ath to <4 x float>
  %i.atj = shufflevector <4 x float> %i.ati, <4 x float> poison, <4 x i32> zeroinitializer
  %i.atk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ast, <4 x float> nofpclass(nan inf) %i.atj, <4 x float> nofpclass(nan inf) %.1316881904.us.i) ; 3 uses
  %i.atl = getelementptr inbounds nuw i8, ptr %.136271906.us.i, i64 16
  %indvars.iv.next2371.i = add nuw nsw i64 %indvars.iv2370.i, 1 ; 2 uses
  %exitcond2376.not.i = icmp eq i64 %indvars.iv.next2371.i, %wide.trip.count2375.i
  br i1 %exitcond2376.not.i, label %._crit_edge1909.us.i, label %bb.fv, !llvm.loop !943

._crit_edge1909.us.i:                             ; preds = %bb.fv
  %scevgep2372.i = getelementptr i8, ptr %.126261915.us.i, i64 16
  %scevgep2373.i = getelementptr i8, ptr %scevgep2372.i, i64 %i.abu ; 2 uses
  %indvars.iv.next2378.i = add nuw nsw i64 %indvars.iv2377.i, 2 ; 2 uses
  %i.atm = trunc i64 %indvars.iv.next2378.i to i32 ; 2 uses
  %i.atn = or i32 %i.atm, 1
  %i.ato = icmp slt i32 %i.atn, %i.aak
  br i1 %i.ato, label %.noexc785.us.i, label %.preheader1799.i, !llvm.loop !944

.noexc787.i:                                      ; preds = %.loopexit1791.i, %.noexc787.lr.ph.i
  %.16111892.i = phi i32 [ %.0610.lcssa.i, %.noexc787.lr.ph.i ], [ %i.axs, %.loopexit1791.i ] ; 2 uses
  %.76211891.i = phi ptr [ %.0614.lcssa.i, %.noexc787.lr.ph.i ], [ %.11625.i, %.loopexit1791.i ] ; 7 uses
  %.816671890.i = phi <4 x float> [ %.11660.lcssa.i, %.noexc787.lr.ph.i ], [ %.121671.i, %.loopexit1791.i ] ; 5 uses
  %.716821889.i = phi <4 x float> [ %.01675.lcssa.i, %.noexc787.lr.ph.i ], [ %.111686.i, %.loopexit1791.i ] ; 5 uses
  %.716961888.i = phi <4 x float> [ %.01689.lcssa.i, %.noexc787.lr.ph.i ], [ %.111700.i, %.loopexit1791.i ] ; 5 uses
  %.717081887.i = phi <4 x float> [ %.01701.lcssa.i, %.noexc787.lr.ph.i ], [ %.111712.i, %.loopexit1791.i ] ; 5 uses
  %i.atp = sdiv i32 %.16111892.i, %i.aai
  %i.atq = sext i32 %i.atp to i64
  %.reass1900.i = mul i64 %factor.op.mul1899.i, %i.atq
  %gep1903.i = getelementptr i8, ptr %invariant.gep1902.i, i64 %.reass1900.i ; 5 uses
  br i1 %i.aaz, label %.preheader1792.i, label %.loopexit1793.i

.preheader1792.i:                                 ; preds = %.noexc787.i
  br i1 %i.aia, label %.lr.ph1869.i, label %.loopexit1791.i

.lr.ph1869.i:                                     ; preds = %.preheader1792.i, %.lr.ph1869.i
  %indvars.iv2356.i = phi i64 [ %indvars.iv.next2357.i, %.lr.ph1869.i ], [ 0, %.preheader1792.i ] ; 2 uses
  %.86221867.i = phi ptr [ %i.avh, %.lr.ph1869.i ], [ %.76211891.i, %.preheader1792.i ] ; 5 uses
  %.916681866.i = phi <4 x float> [ %i.aux, %.lr.ph1869.i ], [ %.816671890.i, %.preheader1792.i ]
  %.816831865.i = phi <4 x float> [ %i.ava, %.lr.ph1869.i ], [ %.716821889.i, %.preheader1792.i ]
  %.816971864.i = phi <4 x float> [ %i.avd, %.lr.ph1869.i ], [ %.716961888.i, %.preheader1792.i ]
  %.817091863.i = phi <4 x float> [ %i.avg, %.lr.ph1869.i ], [ %.717081887.i, %.preheader1792.i ]
  %i.atr = getelementptr inbounds nuw [4 x i8], ptr %i.aib, i64 %indvars.iv2356.i
  %i.ats = load i32, ptr %i.atr, align 4, !tbaa !81
  %i.att = sext i32 %i.ats to i64
  %i.atu = getelementptr inbounds [2 x i8], ptr %gep1903.i, i64 %i.att
  %i.atv = load i64, ptr %.86221867.i, align 1, !tbaa !114
  %i.atw = insertelement <2 x i64> poison, i64 %i.atv, i64 0
  %i.atx = bitcast <2 x i64> %i.atw to <8 x i16>
  %i.aty = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.atx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.atz = bitcast <8 x i16> %i.aty to <4 x float>
  %i.aua = getelementptr inbounds nuw i8, ptr %.86221867.i, i64 8
  %i.aub = load i64, ptr %i.aua, align 1, !tbaa !114
  %i.auc = insertelement <2 x i64> poison, i64 %i.aub, i64 0
  %i.aud = bitcast <2 x i64> %i.auc to <8 x i16>
  %i.aue = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aud, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.auf = bitcast <8 x i16> %i.aue to <4 x float>
  %i.aug = getelementptr inbounds nuw i8, ptr %.86221867.i, i64 16
  %i.auh = load i64, ptr %i.aug, align 1, !tbaa !114
  %i.aui = insertelement <2 x i64> poison, i64 %i.auh, i64 0
  %i.auj = bitcast <2 x i64> %i.aui to <8 x i16>
  %i.auk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.auj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aul = bitcast <8 x i16> %i.auk to <4 x float>
  %i.aum = getelementptr inbounds nuw i8, ptr %.86221867.i, i64 24
  %i.aun = load i64, ptr %i.aum, align 1, !tbaa !114
  %i.auo = insertelement <2 x i64> poison, i64 %i.aun, i64 0
  %i.aup = bitcast <2 x i64> %i.auo to <8 x i16>
  %i.auq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aup, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aur = bitcast <8 x i16> %i.auq to <4 x float>
  %i.aus = load <4 x i16>, ptr %i.atu, align 2, !tbaa !117
  %i.aut = zext <4 x i16> %i.aus to <4 x i32>
  %i.auu = shl nuw <4 x i32> %i.aut, splat (i32 16) ; 4 uses
  %i.auv = bitcast <4 x i32> %i.auu to <4 x float>
  %i.auw = shufflevector <4 x float> %i.auv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aux = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.atz, <4 x float> nofpclass(nan inf) %i.auw, <4 x float> nofpclass(nan inf) %.916681866.i) ; 2 uses
  %i.auy = bitcast <4 x i32> %i.auu to <4 x float>
  %i.auz = shufflevector <4 x float> %i.auy, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ava = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.auf, <4 x float> nofpclass(nan inf) %i.auz, <4 x float> nofpclass(nan inf) %.816831865.i) ; 2 uses
  %i.avb = bitcast <4 x i32> %i.auu to <4 x float>
  %i.avc = shufflevector <4 x float> %i.avb, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.avd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aul, <4 x float> nofpclass(nan inf) %i.avc, <4 x float> nofpclass(nan inf) %.816971864.i) ; 2 uses
  %i.ave = bitcast <4 x i32> %i.auu to <4 x float>
  %i.avf = shufflevector <4 x float> %i.ave, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.avg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aur, <4 x float> nofpclass(nan inf) %i.avf, <4 x float> nofpclass(nan inf) %.817091863.i) ; 2 uses
  %i.avh = getelementptr inbounds nuw i8, ptr %.86221867.i, i64 32
  %indvars.iv.next2357.i = add nuw nsw i64 %indvars.iv2356.i, 1 ; 2 uses
  %exitcond2362.not.i = icmp eq i64 %indvars.iv.next2357.i, %wide.trip.count2368.i
  br i1 %exitcond2362.not.i, label %.loopexit1793.loopexit.i, label %.lr.ph1869.i, !llvm.loop !945

.loopexit1793.loopexit.i:                         ; preds = %.lr.ph1869.i
  %scevgep2358.i = getelementptr i8, ptr %.76211891.i, i64 32
  %scevgep2359.i = getelementptr i8, ptr %scevgep2358.i, i64 %i.aif
  br label %.loopexit1791.i

.loopexit1793.i:                                  ; preds = %.noexc787.i
  br i1 %i.aba, label %.preheader1790.i, label %.loopexit1791.i

.preheader1790.i:                                 ; preds = %.loopexit1793.i
  br i1 %i.aia, label %.lr.ph1881.i, label %.loopexit1791.i

.lr.ph1881.i:                                     ; preds = %.preheader1790.i
  %i.avi = getelementptr [2 x i8], ptr %gep1903.i, i64 %i.aic
  %i.avj = getelementptr i8, ptr %gep1903.i, i64 %.idx740.i
  %i.avk = getelementptr i8, ptr %gep1903.i, i64 %.idx741.i
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fw, %.lr.ph1881.i
  %indvars.iv2363.i = phi i64 [ 0, %.lr.ph1881.i ], [ %indvars.iv.next2364.i, %bb.fw ] ; 2 uses
  %.106241879.i = phi ptr [ %.76211891.i, %.lr.ph1881.i ], [ %i.axr, %bb.fw ] ; 5 uses
  %.1116701878.i = phi <4 x float> [ %.816671890.i, %.lr.ph1881.i ], [ %i.aws, %bb.fw ]
  %.1016851877.i = phi <4 x float> [ %.716821889.i, %.lr.ph1881.i ], [ %i.axa, %bb.fw ]
  %.1016991876.i = phi <4 x float> [ %.716961888.i, %.lr.ph1881.i ], [ %i.axi, %bb.fw ]
  %.1017111875.i = phi <4 x float> [ %.717081887.i, %.lr.ph1881.i ], [ %i.axq, %bb.fw ]
  %i.avl = getelementptr inbounds nuw [4 x i8], ptr %i.aib, i64 %indvars.iv2363.i
  %i.avm = load i32, ptr %i.avl, align 4, !tbaa !81
  %i.avn = load i64, ptr %.106241879.i, align 1, !tbaa !114
  %i.avo = insertelement <2 x i64> poison, i64 %i.avn, i64 0
  %i.avp = bitcast <2 x i64> %i.avo to <8 x i16>
  %i.avq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.avp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.avr = bitcast <8 x i16> %i.avq to <4 x float>
  %i.avs = getelementptr inbounds nuw i8, ptr %.106241879.i, i64 8
  %i.avt = load i64, ptr %i.avs, align 1, !tbaa !114
  %i.avu = insertelement <2 x i64> poison, i64 %i.avt, i64 0
  %i.avv = bitcast <2 x i64> %i.avu to <8 x i16>
  %i.avw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.avv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.avx = bitcast <8 x i16> %i.avw to <4 x float>
  %i.avy = getelementptr inbounds nuw i8, ptr %.106241879.i, i64 16
  %i.avz = load i64, ptr %i.avy, align 1, !tbaa !114
  %i.awa = insertelement <2 x i64> poison, i64 %i.avz, i64 0
  %i.awb = bitcast <2 x i64> %i.awa to <8 x i16>
  %i.awc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.awb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.awd = bitcast <8 x i16> %i.awc to <4 x float>
  %i.awe = getelementptr inbounds nuw i8, ptr %.106241879.i, i64 24
  %i.awf = load i64, ptr %i.awe, align 1, !tbaa !114
  %i.awg = insertelement <2 x i64> poison, i64 %i.awf, i64 0
  %i.awh = bitcast <2 x i64> %i.awg to <8 x i16>
  %i.awi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.awh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.awj = bitcast <8 x i16> %i.awi to <4 x float>
  %i.awk = sext i32 %i.avm to i64                 ; 4 uses
  %i.awl = getelementptr inbounds [2 x i8], ptr %gep1903.i, i64 %i.awk
  %i.awm = load i16, ptr %i.awl, align 2, !tbaa !117
  %i.awn = zext i16 %i.awm to i32
  %i.awo = shl nuw i32 %i.awn, 16
  %i.awp = insertelement <4 x i32> poison, i32 %i.awo, i64 0
  %i.awq = bitcast <4 x i32> %i.awp to <4 x float>
  %i.awr = shufflevector <4 x float> %i.awq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aws = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.avr, <4 x float> nofpclass(nan inf) %i.awr, <4 x float> nofpclass(nan inf) %.1116701878.i) ; 2 uses
  %i.awt = getelementptr [2 x i8], ptr %i.avi, i64 %i.awk
  %i.awu = load i16, ptr %i.awt, align 2, !tbaa !117
  %i.awv = zext i16 %i.awu to i32
  %i.aww = shl nuw i32 %i.awv, 16
end_hunk_9
begin_hunk_10_@_ZN4ncnnL20conv3x3s1_winograd23ERKNS_3MatERS0_S2_S2_iRKNS_6OptionE.omp_outlined.3:bb.a

_ZN4ncnn3MatD2Ev.exit506.us.i:                    ; preds = %bb.aj, %.lr.ph.us106.i
  %indvars.iv177.i = phi i64 [ 0, %.lr.ph.us106.i ], [ %indvars.iv.next178.i, %bb.aj ] ; 3 uses
  %.idx251.i = shl nuw nsw i64 %indvars.iv177.i, 4
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 %.idx251.i ; 5 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %i.ij ; 2 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %i.il ; 2 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %i.in ; 2 uses
  %i.jf = load <4 x float>, ptr %i.jc, align 16, !tbaa !114 ; 2 uses
  %i.jg = load <4 x float>, ptr %i.jd, align 16, !tbaa !114 ; 2 uses
  %i.jh = load <4 x float>, ptr %i.je, align 16, !tbaa !114
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %i.io ; 2 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %i.io ; 2 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %i.io ; 2 uses
  %i.jl = load <4 x float>, ptr %i.ji, align 16, !tbaa !114 ; 2 uses
  %i.jm = load <4 x float>, ptr %i.jj, align 16, !tbaa !114 ; 2 uses
  %i.jn = load <4 x float>, ptr %i.jk, align 16, !tbaa !114
  %i.jo = fsub fast <4 x float> %i.jl, %i.jm
  %i.jp = fadd fast <4 x float> %i.jo, %i.jn
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %i.io ; 2 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.io ; 2 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %i.io ; 2 uses
  %i.jt = load <4 x float>, ptr %i.jq, align 16, !tbaa !114 ; 2 uses
  %i.ju = load <4 x float>, ptr %i.jr, align 16, !tbaa !114 ; 2 uses
  %i.jv = load <4 x float>, ptr %i.js, align 16, !tbaa !114
  %i.jw = fsub fast <4 x float> %i.jt, %i.ju
  %i.jx = fadd fast <4 x float> %i.jw, %i.jv      ; 2 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %i.io
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.io
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.io
  %i.kb = load <4 x float>, ptr %i.jy, align 16, !tbaa !114 ; 2 uses
  %i.kc = load <4 x float>, ptr %i.jz, align 16, !tbaa !114 ; 2 uses
  %i.kd = load <4 x float>, ptr %i.ka, align 16, !tbaa !114
  %i.ke = trunc i64 %indvars.iv177.i to i32
  %i.kf = add i32 %.044156, %i.ke                 ; 2 uses
  %i.kg = sdiv i32 %i.kf, %i.cg
  %i.kh = srem i32 %i.kf, %i.cg
  %i.ki = load i32, ptr %i.an, align 4, !tbaa !89, !noalias !1072
  %i.kj = load ptr, ptr %12, align 8, !tbaa !37, !noalias !1072
  %i.kk = load i64, ptr %i.aq, align 8, !tbaa !38, !noalias !1072
  %i.kl = mul i64 %i.kk, %i.ja
  %i.km = load i64, ptr %i.ar, align 8, !tbaa !79, !noalias !1072 ; 2 uses
  %i.kn = mul i64 %i.kl, %i.km
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.kn
  %i.kp = sext i32 %i.ki to i64
  %i.kq = shl nsw i32 %i.kg, 1                    ; 3 uses
  %i.kr = sext i32 %i.kq to i64
  %i.ks = mul nsw i64 %i.kp, %i.kr
  %i.kt = mul i64 %i.ks, %i.km
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.kt
  %i.kv = shl nsw i32 %i.kh, 1                    ; 2 uses
  %i.kw = mul nsw i32 %i.kv, %i.cb
  %i.kx = sext i32 %i.kw to i64
  %i.ky = getelementptr inbounds [4 x i8], ptr %i.ku, i64 %i.kx ; 9 uses
  %i.kz = or disjoint i32 %i.kv, 1
  %i.la = icmp slt i32 %i.kz, %i.bz               ; 4 uses
  %.not495.us.i = icmp slt i32 %i.kq, %i.ca
  br i1 %.not495.us.i, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit506.us.i
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %i.io ; 2 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %i.io ; 2 uses
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %i.io
  %i.le = load <4 x float>, ptr %i.ld, align 16, !tbaa !114
  %i.lf = load <4 x float>, ptr %i.lc, align 16, !tbaa !114
  %i.lg = fadd fast <4 x float> %i.ju, %i.jt
  %i.lh = fadd fast <4 x float> %i.lg, %i.lf      ; 2 uses
  %i.li = load <4 x float>, ptr %i.lb, align 16, !tbaa !114
  %i.lj = fadd fast <4 x float> %i.jm, %i.jl
  %i.lk = fadd fast <4 x float> %i.lj, %i.li      ; 2 uses
  %i.ll = load <4 x float>, ptr %i.jb, align 16, !tbaa !114
  %i.lm = fadd fast <4 x float> %i.jf, %i.iu
  %i.ln = fadd fast <4 x float> %i.lm, %i.jg
  %i.lo = fadd fast <4 x float> %i.ln, %i.ll
  %i.lp = fadd fast <4 x float> %i.lo, %i.lh
  %i.lq = fadd fast <4 x float> %i.lp, %i.lk      ; 5 uses
  %i.lr = fadd fast <4 x float> %i.kb, %i.iu
  %i.ls = fadd fast <4 x float> %i.lr, %i.kc
  %i.lt = fadd fast <4 x float> %i.ls, %i.le
  %i.lu = fsub fast <4 x float> %i.lt, %i.lh
  %i.lv = fadd fast <4 x float> %i.lu, %i.lk      ; 5 uses
  switch i32 %i.cb, label %bb.ac [
    i32 4, label %bb.aa
    i32 1, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.ce ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ky, i64 %.idx.i ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ky, i64 %.idx496.i ; 2 uses
  %.sroa.028.0.vec.extract.us.i = extractelement <4 x float> %i.lq, i64 0
  store float %.sroa.028.0.vec.extract.us.i, ptr %i.ky, align 4, !tbaa !56
  %.sroa.028.4.vec.extract.us.i = extractelement <4 x float> %i.lq, i64 1
  store float %.sroa.028.4.vec.extract.us.i, ptr %i.lw, align 4, !tbaa !56
  %.sroa.028.8.vec.extract.us.i = extractelement <4 x float> %i.lq, i64 2
  store float %.sroa.028.8.vec.extract.us.i, ptr %i.lx, align 4, !tbaa !56
  %.sroa.028.12.vec.extract.us.i = extractelement <4 x float> %i.lq, i64 3
  store float %.sroa.028.12.vec.extract.us.i, ptr %i.ly, align 4, !tbaa !56
  br i1 %i.la, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %.sroa.729.16.vec.extract.us.i = extractelement <4 x float> %i.lv, i64 0
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ky, i64 4
  store float %.sroa.729.16.vec.extract.us.i, ptr %i.lz, align 4, !tbaa !56
  %.sroa.729.20.vec.extract.us.i = extractelement <4 x float> %i.lv, i64 1
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lw, i64 4
  store float %.sroa.729.20.vec.extract.us.i, ptr %i.ma, align 4, !tbaa !56
  %.sroa.729.24.vec.extract.us.i = extractelement <4 x float> %i.lv, i64 2
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lx, i64 4
  store float %.sroa.729.24.vec.extract.us.i, ptr %i.mb, align 4, !tbaa !56
  %.sroa.729.28.vec.extract.us.i = extractelement <4 x float> %i.lv, i64 3
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ly, i64 4
  store float %.sroa.729.28.vec.extract.us.i, ptr %i.mc, align 4, !tbaa !56
  br label %bb.ac

bb.aa:                                            ; preds = %bb.x
  store <4 x float> %i.lq, ptr %i.ky, align 16, !tbaa !114
  br i1 %i.la, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.md = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  store <4 x float> %i.lv, ptr %i.md, align 16, !tbaa !114
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x
  %i.me = getelementptr inbounds [4 x i8], ptr %i.ky, i64 %i.iq
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZN4ncnn3MatD2Ev.exit506.us.i
  %.1465.us.i = phi ptr [ %i.ky, %_ZN4ncnn3MatD2Ev.exit506.us.i ], [ %i.me, %bb.ac ] ; 7 uses
  %i.mf = or disjoint i32 %i.kq, 1
  %.not495.us.1.i = icmp slt i32 %i.mf, %i.ca
  br i1 %.not495.us.1.i, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %i.mg = fadd fast <4 x float> %i.jp, %i.iu      ; 2 uses
  %i.mh = fadd fast <4 x float> %i.mg, %i.jf
  %i.mi = fsub fast <4 x float> %i.mh, %i.jg
  %i.mj = fadd fast <4 x float> %i.mi, %i.jh
  %i.mk = fadd fast <4 x float> %i.mj, %i.jx      ; 5 uses
  %i.ml = fadd fast <4 x float> %i.mg, %i.kb
  %i.mm = fadd fast <4 x float> %i.jx, %i.kc
  %i.mn = fsub fast <4 x float> %i.ml, %i.mm
  %i.mo = fadd fast <4 x float> %i.mn, %i.kd      ; 5 uses
  switch i32 %i.cb, label %bb.aj [
    i32 4, label %bb.ah
    i32 1, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %.1465.us.i, i64 %i.ce ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.1465.us.i, i64 %.idx.i ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.1465.us.i, i64 %.idx496.i ; 2 uses
  %.sroa.028.0.vec.extract.us.1.i = extractelement <4 x float> %i.mk, i64 0
  store float %.sroa.028.0.vec.extract.us.1.i, ptr %.1465.us.i, align 4, !tbaa !56
  %.sroa.028.4.vec.extract.us.1.i = extractelement <4 x float> %i.mk, i64 1
  store float %.sroa.028.4.vec.extract.us.1.i, ptr %i.mp, align 4, !tbaa !56
  %.sroa.028.8.vec.extract.us.1.i = extractelement <4 x float> %i.mk, i64 2
  store float %.sroa.028.8.vec.extract.us.1.i, ptr %i.mq, align 4, !tbaa !56
  %.sroa.028.12.vec.extract.us.1.i = extractelement <4 x float> %i.mk, i64 3
  store float %.sroa.028.12.vec.extract.us.1.i, ptr %i.mr, align 4, !tbaa !56
  br i1 %i.la, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %.sroa.729.16.vec.extract.us.1.i = extractelement <4 x float> %i.mo, i64 0
  %i.ms = getelementptr inbounds nuw i8, ptr %.1465.us.i, i64 4
  store float %.sroa.729.16.vec.extract.us.1.i, ptr %i.ms, align 4, !tbaa !56
  %.sroa.729.20.vec.extract.us.1.i = extractelement <4 x float> %i.mo, i64 1
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mp, i64 4
  store float %.sroa.729.20.vec.extract.us.1.i, ptr %i.mt, align 4, !tbaa !56
  %.sroa.729.24.vec.extract.us.1.i = extractelement <4 x float> %i.mo, i64 2
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mq, i64 4
  store float %.sroa.729.24.vec.extract.us.1.i, ptr %i.mu, align 4, !tbaa !56
  %.sroa.729.28.vec.extract.us.1.i = extractelement <4 x float> %i.mo, i64 3
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
  store float %.sroa.729.28.vec.extract.us.1.i, ptr %i.mv, align 4, !tbaa !56
  br label %bb.aj

bb.ah:                                            ; preds = %bb.ae
  store <4 x float> %i.mk, ptr %.1465.us.i, align 16, !tbaa !114
  br i1 %i.la, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.mw = getelementptr inbounds nuw i8, ptr %.1465.us.i, i64 16
  store <4 x float> %i.mo, ptr %i.mw, align 16, !tbaa !114
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad
  %indvars.iv.next178.i = add nuw nsw i64 %indvars.iv177.i, 1 ; 2 uses
  %exitcond181.not.i = icmp eq i64 %indvars.iv.next178.i, %wide.trip.count180.i
  br i1 %exitcond181.not.i, label %._crit_edge.us107.i, label %_ZN4ncnn3MatD2Ev.exit506.us.i, !llvm.loop !1050

._crit_edge.us107.i:                              ; preds = %bb.aj
  %indvars.iv.next183.i = add nuw nsw i64 %indvars.iv182.i, 4 ; 3 uses
  %i.mx = icmp slt i64 %indvars.iv.next183.i, %invariant.op.i
  br i1 %i.mx, label %.lr.ph103.split.us.i, label %.preheader76.loopexit.i, !llvm.loop !1051

.lr.ph103.split.i:                                ; preds = %.lr.ph103.i
  %i.my = sub i32 %i.bm, %.0475.lcssa.i
  %i.mz = and i32 %i.my, -4
  %i.na = add nsw i32 %.0475.lcssa.i, 4
  %i.nb = add i32 %i.na, %i.mz
  br label %.preheader76.i

.preheader76.loopexit.i:                          ; preds = %._crit_edge.us107.i
  %i.nc = trunc nsw i64 %indvars.iv.next183.i to i32
  br label %.preheader76.i

.preheader76.i:                                   ; preds = %.preheader76.loopexit.i, %.lr.ph103.split.i, %.preheader77.i
  %.1476.lcssa.i = phi i32 [ %.0475.lcssa.i, %.preheader77.i ], [ %i.nb, %.lr.ph103.split.i ], [ %i.nc, %.preheader76.loopexit.i ] ; 3 uses
  %i.nd = or disjoint i32 %.1476.lcssa.i, 1
  %i.ne = icmp slt i32 %i.nd, %.sroa.speculated121
  br i1 %i.ne, label %.lr.ph124.i, label %.preheader.i

.lr.ph124.i:                                      ; preds = %.preheader76.i
  %.not492.i = icmp eq ptr %.val78, null
  %i.nf = icmp sgt i32 %.sroa.speculated117, 0
  %i.ng = shl nuw nsw i32 %.sroa.speculated117, 1
  %i.nh = zext nneg i32 %i.ng to i64
  %i.ni = shl nuw nsw i32 %.sroa.speculated117, 2
  %i.nj = zext nneg i32 %i.ni to i64
  %i.nk = mul nuw nsw i32 %.sroa.speculated117, 6
  %i.nl = zext nneg i32 %i.nk to i64
  %i.nm = shl nuw nsw i32 %.sroa.speculated117, 3
  %i.nn = zext nneg i32 %i.nm to i64              ; 12 uses
  %i.no = sext i32 %i.bz to i64
  %i.np = sext i32 %.1476.lcssa.i to i64          ; 4 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %.val78, i64 %i.bj
  %wide.trip.count195.i = zext nneg i32 %.sroa.speculated117 to i64
  br i1 %i.nf, label %.lr.ph124.i.split.us, label %.lr.ph124.i.split

.lr.ph124.i.split.us:                             ; preds = %.lr.ph124.i
  %i.nq = load i32, ptr %i.an, align 4, !tbaa !89, !noalias !1073
  %i.nr = load ptr, ptr %12, align 8, !tbaa !37, !noalias !1073
  %i.ns = load i64, ptr %i.aq, align 8, !tbaa !38, !noalias !1073
  %i.nt = load i64, ptr %i.ar, align 8, !tbaa !79, !noalias !1073 ; 2 uses
  %factor.op.mul = mul i64 %i.ns, %i.nt
  %i.nu = sext i32 %i.nq to i64
  %factor.op.mul120.i.us = mul i64 %i.nt, %i.nu
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge.i.loopexit.us, %.lr.ph124.i.split.us
  %indvars.iv197.i.us = phi i64 [ %i.np, %.lr.ph124.i.split.us ], [ %indvars.iv.next198.i.us, %._crit_edge.i.loopexit.us ] ; 4 uses
  br i1 %.not492.i, label %.thread.i.us, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %gep.i.us = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv197.i.us
  %i.nv = load <2 x float>, ptr %gep.i.us, align 4, !tbaa !56
  br label %.thread.i.us

.thread.i.us:                                     ; preds = %bb.al, %bb.ak
  %i.nw = phi <2 x float> [ %i.nv, %bb.al ], [ zeroinitializer, %bb.ak ] ; 2 uses
  %i.nx = trunc nsw i64 %indvars.iv197.i.us to i32
  %factor.op.mul.reass.i.us = mul i32 %factor.op.mul86.i, %i.nx
  %i.ny = sext i32 %factor.op.mul.reass.i.us to i64
  %i.nz = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.ny
  %i.oa = add nsw i64 %indvars.iv197.i.us, %i.bj
  %.reass = mul i64 %factor.op.mul, %i.oa
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nr, i64 %.reass
  br label %_ZN4ncnn3MatD2Ev.exit505.i.us

_ZN4ncnn3MatD2Ev.exit505.i.us:                    ; preds = %bb.as, %.thread.i.us
  %indvars.iv192.i.us = phi i64 [ 0, %.thread.i.us ], [ %indvars.iv.next193.i.us, %bb.as ] ; 3 uses
  %.idx252.i.us = shl nuw nsw i64 %indvars.iv192.i.us, 3
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nz, i64 %.idx252.i.us ; 5 uses
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.oc, i64 %i.nh ; 2 uses
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.oc, i64 %i.nj ; 2 uses
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.oc, i64 %i.nl ; 2 uses
  %i.og = load <2 x float>, ptr %i.od, align 4, !tbaa !56 ; 2 uses
  %i.oh = load <2 x float>, ptr %i.oe, align 4, !tbaa !56 ; 2 uses
  %i.oi = fsub fast <2 x float> %i.og, %i.oh
  %i.oj = load <2 x float>, ptr %i.of, align 4, !tbaa !56
  %i.ok = fadd fast <2 x float> %i.oi, %i.oj
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.oc, i64 %i.nn ; 2 uses
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %i.nn ; 2 uses
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.oe, i64 %i.nn ; 2 uses
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %i.nn ; 2 uses
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %i.nn ; 2 uses
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.om, i64 %i.nn ; 2 uses
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %i.nn ; 2 uses
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %i.nn ; 2 uses
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %i.nn
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %i.nn
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %i.nn
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %i.nn
  %i.ox = load <2 x float>, ptr %i.om, align 4, !tbaa !56 ; 2 uses
  %i.oy = load <2 x float>, ptr %i.on, align 4, !tbaa !56 ; 2 uses
  %i.oz = load <2 x float>, ptr %i.oo, align 4, !tbaa !56
  %i.pa = load <2 x float>, ptr %i.oq, align 4, !tbaa !56 ; 2 uses
  %i.pb = load <2 x float>, ptr %i.or, align 4, !tbaa !56 ; 2 uses
  %i.pc = load <2 x float>, ptr %i.op, align 4, !tbaa !56
  %i.pd = load <2 x float>, ptr %i.ot, align 4, !tbaa !56
  %i.pe = fadd fast <2 x float> %i.pa, %i.pc
  %i.pf = fadd fast <2 x float> %i.pe, %i.pb      ; 2 uses
  %i.pg = fsub fast <2 x float> %i.pa, %i.pb
  %i.ph = load <2 x float>, ptr %i.os, align 4, !tbaa !56
  %i.pi = fadd fast <2 x float> %i.ph, %i.pg      ; 2 uses
  %i.pj = load <2 x float>, ptr %i.ou, align 4, !tbaa !56 ; 2 uses
  %i.pk = load <2 x float>, ptr %i.ov, align 4, !tbaa !56 ; 2 uses
  %i.pl = load <2 x float>, ptr %i.ow, align 4, !tbaa !56
  %i.pm = trunc i64 %indvars.iv192.i.us to i32
  %i.pn = add i32 %.044156, %i.pm                 ; 2 uses
  %i.po = sdiv i32 %i.pn, %i.cg
  %i.pp = srem i32 %i.pn, %i.cg
  %i.pq = shl nsw i32 %i.po, 1                    ; 3 uses
  %i.pr = sext i32 %i.pq to i64
  %.reass121.i.us = mul i64 %factor.op.mul120.i.us, %i.pr
  %i.ps = getelementptr inbounds nuw i8, ptr %i.ob, i64 %.reass121.i.us
  %i.pt = shl nsw i32 %i.pp, 1                    ; 2 uses
  %i.pu = sext i32 %i.pt to i64
  %i.pv = getelementptr inbounds [4 x i8], ptr %i.ps, i64 %i.pu ; 5 uses
  %i.pw = or disjoint i32 %i.pt, 1
  %i.px = icmp slt i32 %i.pw, %i.bz               ; 2 uses
  %.not493.i.us = icmp slt i32 %i.pq, %i.ca
  br i1 %.not493.i.us, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit505.i.us
  %i.py = load <2 x float>, ptr %i.ol, align 4, !tbaa !56
  %i.pz = fadd fast <2 x float> %i.ox, %i.nw
  %i.qa = fadd fast <2 x float> %i.pz, %i.oy
  %i.qb = fadd fast <2 x float> %i.qa, %i.py      ; 2 uses
  %i.qc = load <2 x float>, ptr %i.oc, align 4, !tbaa !56
  %i.qd = fadd fast <2 x float> %i.oh, %i.og
  %i.qe = fadd fast <2 x float> %i.qd, %i.pf
  %i.qf = fadd fast <2 x float> %i.qe, %i.qc
  %i.qg = fadd fast <2 x float> %i.qf, %i.qb      ; 2 uses
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.pv, i64 %i.ce ; 2 uses
  %i.qi = extractelement <2 x float> %i.qg, i64 0
  store float %i.qi, ptr %i.pv, align 4, !tbaa !56
  %i.qj = extractelement <2 x float> %i.qg, i64 1
  store float %i.qj, ptr %i.qh, align 4, !tbaa !56
  br i1 %i.px, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.qk = fsub fast <2 x float> %i.pd, %i.pf
  %i.ql = fadd fast <2 x float> %i.qk, %i.pj
  %i.qm = fadd fast <2 x float> %i.ql, %i.pk
  %i.qn = fadd fast <2 x float> %i.qm, %i.qb      ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.pv, i64 4
  %i.qp = extractelement <2 x float> %i.qn, i64 0
  store float %i.qp, ptr %i.qo, align 4, !tbaa !56
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qh, i64 4
  %i.qr = extractelement <2 x float> %i.qn, i64 1
  store float %i.qr, ptr %i.qq, align 4, !tbaa !56
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.qs = getelementptr inbounds [4 x i8], ptr %i.pv, i64 %i.no
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %_ZN4ncnn3MatD2Ev.exit505.i.us
  %.1456.i.us = phi ptr [ %i.pv, %_ZN4ncnn3MatD2Ev.exit505.i.us ], [ %i.qs, %bb.ao ] ; 3 uses
  %i.qt = or disjoint i32 %i.pq, 1
  %.not493.1.i.us = icmp slt i32 %i.qt, %i.ca
  br i1 %.not493.1.i.us, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.qu = fadd fast <2 x float> %i.ox, %i.nw
  %i.qv = fsub fast <2 x float> %i.qu, %i.oy
  %i.qw = fadd fast <2 x float> %i.qv, %i.oz      ; 2 uses
  %i.qx = fadd fast <2 x float> %i.ok, %i.qw
  %i.qy = fadd fast <2 x float> %i.qx, %i.pi      ; 2 uses
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %.1456.i.us, i64 %i.ce ; 2 uses
  %i.ra = extractelement <2 x float> %i.qy, i64 0
  store float %i.ra, ptr %.1456.i.us, align 4, !tbaa !56
  %i.rb = extractelement <2 x float> %i.qy, i64 1
  store float %i.rb, ptr %i.qz, align 4, !tbaa !56
  br i1 %i.px, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.rc = fadd fast <2 x float> %i.qw, %i.pj
  %i.rd = fadd fast <2 x float> %i.pi, %i.pk
  %i.re = fsub fast <2 x float> %i.rc, %i.rd
  %i.rf = fadd fast <2 x float> %i.re, %i.pl      ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %.1456.i.us, i64 4
  %i.rh = extractelement <2 x float> %i.rf, i64 0
  store float %i.rh, ptr %i.rg, align 4, !tbaa !56
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qz, i64 4
  %i.rj = extractelement <2 x float> %i.rf, i64 1
  store float %i.rj, ptr %i.ri, align 4, !tbaa !56
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %indvars.iv.next193.i.us = add nuw nsw i64 %indvars.iv192.i.us, 1 ; 2 uses
  %exitcond196.not.i.us = icmp eq i64 %indvars.iv.next193.i.us, %wide.trip.count195.i
  br i1 %exitcond196.not.i.us, label %._crit_edge.i.loopexit.us, label %_ZN4ncnn3MatD2Ev.exit505.i.us, !llvm.loop !1054

._crit_edge.i.loopexit.us:                        ; preds = %bb.as
  %indvars.iv.next198.i.us = add nuw nsw i64 %indvars.iv197.i.us, 2 ; 3 uses
  %i.rk = icmp slt i64 %indvars.iv.next198.i.us, %invariant.op253.i
  br i1 %i.rk, label %bb.ak, label %.preheader.loopexit.i, !llvm.loop !1055

.lr.ph124.i.split:                                ; preds = %.lr.ph124.i
  %i.rl = add nsw i64 %i.np, 2
  %smax166 = call i64 @llvm.smax.i64(i64 %i.br, i64 %i.rl)
  %i.rm = xor i64 %i.np, -1
  %i.rn = add i64 %smax166, %i.rm
  %i.ro = and i64 %i.rn, -2
  %i.rp = add i64 %i.ro, 2
  %i.rq = add i64 %i.rp, %i.np
  br label %.preheader.loopexit.i
end_hunk_10
begin_hunk_11_@_ZN4ncnnL20conv3x3s1_winograd43ERKNS_3MatERS0_S2_S2_iRKNS_6OptionE.omp_outlined.4:bb.a
  store float %.sroa.729.24.vec.extract.us.2.i, ptr %i.yw, align 4, !tbaa !56
  %.sroa.729.28.vec.extract.us.2.i = extractelement <4 x float> %i.yl, i64 3
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yt, i64 4
  store float %.sroa.729.28.vec.extract.us.2.i, ptr %i.yx, align 4, !tbaa !56
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  br i1 %i.un, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %.sroa.12.32.vec.extract.us.2.i = extractelement <4 x float> %i.yn, i64 0
  %i.yy = getelementptr inbounds nuw i8, ptr %.1736.us.1.i, i64 8
  store float %.sroa.12.32.vec.extract.us.2.i, ptr %i.yy, align 4, !tbaa !56
  %.sroa.12.36.vec.extract.us.2.i = extractelement <4 x float> %i.yn, i64 1
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yr, i64 8
  store float %.sroa.12.36.vec.extract.us.2.i, ptr %i.yz, align 4, !tbaa !56
  %.sroa.12.40.vec.extract.us.2.i = extractelement <4 x float> %i.yn, i64 2
  %i.za = getelementptr inbounds nuw i8, ptr %i.ys, i64 8
  store float %.sroa.12.40.vec.extract.us.2.i, ptr %i.za, align 4, !tbaa !56
  %.sroa.12.44.vec.extract.us.2.i = extractelement <4 x float> %i.yn, i64 3
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yt, i64 8
  store float %.sroa.12.44.vec.extract.us.2.i, ptr %i.zb, align 4, !tbaa !56
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  br i1 %i.up, label %bb.bn, label %bb.bu

bb.bn:                                            ; preds = %bb.bm
  %.sroa.1730.48.vec.extract.us.2.i = extractelement <4 x float> %i.yq, i64 0
  %i.zc = getelementptr inbounds nuw i8, ptr %.1736.us.1.i, i64 12
  store float %.sroa.1730.48.vec.extract.us.2.i, ptr %i.zc, align 4, !tbaa !56
  %.sroa.1730.52.vec.extract.us.2.i = extractelement <4 x float> %i.yq, i64 1
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yr, i64 12
  store float %.sroa.1730.52.vec.extract.us.2.i, ptr %i.zd, align 4, !tbaa !56
  %.sroa.1730.56.vec.extract.us.2.i = extractelement <4 x float> %i.yq, i64 2
  %i.ze = getelementptr inbounds nuw i8, ptr %i.ys, i64 12
  store float %.sroa.1730.56.vec.extract.us.2.i, ptr %i.ze, align 4, !tbaa !56
  %.sroa.1730.60.vec.extract.us.2.i = extractelement <4 x float> %i.yq, i64 3
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yt, i64 12
  store float %.sroa.1730.60.vec.extract.us.2.i, ptr %i.zf, align 4, !tbaa !56
  br label %bb.bu

bb.bo:                                            ; preds = %bb.bh
  store <4 x float> %i.yj, ptr %.1736.us.1.i, align 16, !tbaa !114
  br i1 %i.ul, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.zg = getelementptr inbounds nuw i8, ptr %.1736.us.1.i, i64 16
  store <4 x float> %i.yl, ptr %i.zg, align 16, !tbaa !114
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  br i1 %i.un, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.zh = getelementptr inbounds nuw i8, ptr %.1736.us.1.i, i64 32
  store <4 x float> %i.yn, ptr %i.zh, align 16, !tbaa !114
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  br i1 %i.up, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.zi = getelementptr inbounds nuw i8, ptr %.1736.us.1.i, i64 48
  store <4 x float> %i.yq, ptr %i.zi, align 16, !tbaa !114
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %bb.bn, %bb.bm, %bb.bh
  %i.zj = getelementptr inbounds [4 x i8], ptr %.1736.us.1.i, i64 %i.on
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bg
  %.1736.us.2.i = phi ptr [ %.1736.us.1.i, %bb.bg ], [ %i.zj, %bb.bu ] ; 11 uses
  %i.zk = or disjoint i32 %i.ub, 3
  %.not767.us.3.i = icmp slt i32 %i.zk, %i.cy
  br i1 %.not767.us.3.i, label %bb.bw, label %bb.cj

bb.bw:                                            ; preds = %bb.bv
  %i.zl = fadd fast <4 x float> %i.rg, %i.qm      ; 2 uses
  %i.zm = fadd fast <4 x float> %i.su, %i.sa      ; 2 uses
  %i.zn = fsub fast <4 x float> %i.qm, %i.rg      ; 2 uses
  %i.zo = fsub fast <4 x float> %i.sa, %i.su      ; 2 uses
  %i.zp = fadd fast <4 x float> %i.ps, %i.or
  %i.zq = fadd fast <4 x float> %i.zp, %i.zl
  %i.zr = fadd fast <4 x float> %i.zq, %i.zm      ; 5 uses
  %i.zs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.zn, <4 x float> nofpclass(nan inf) splat (float f0x3F3504F3), <4 x float> nofpclass(nan inf) %i.or)
  %i.zt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.zo, <4 x float> nofpclass(nan inf) splat (float f0x3FB504F3), <4 x float> nofpclass(nan inf) %i.zs) ; 5 uses
  %i.zu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.zl, <4 x float> nofpclass(nan inf) splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.or)
  %i.zv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.zm, <4 x float> nofpclass(nan inf) splat (float 2.000000e+00), <4 x float> nofpclass(nan inf) %i.zu) ; 5 uses
  %i.zw = fadd fast <4 x float> %i.to, %i.or
  %i.zx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.zn, <4 x float> nofpclass(nan inf) splat (float f0x3EB504F3), <4 x float> nofpclass(nan inf) %i.zw)
  %i.zy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.zo, <4 x float> nofpclass(nan inf) splat (float f0x403504F3), <4 x float> nofpclass(nan inf) %i.zx) ; 5 uses
  switch i32 %i.cz, label %bb.cj [
    i32 4, label %bb.cd
    i32 1, label %bb.bx
  ]

bb.bx:                                            ; preds = %bb.bw
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %.1736.us.2.i, i64 %i.dc ; 4 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %.1736.us.2.i, i64 %.idx.i ; 4 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %.1736.us.2.i, i64 %.idx768.i ; 4 uses
  %.sroa.028.0.vec.extract.us.3.i = extractelement <4 x float> %i.zr, i64 0
  store float %.sroa.028.0.vec.extract.us.3.i, ptr %.1736.us.2.i, align 4, !tbaa !56
  %.sroa.028.4.vec.extract.us.3.i = extractelement <4 x float> %i.zr, i64 1
  store float %.sroa.028.4.vec.extract.us.3.i, ptr %i.zz, align 4, !tbaa !56
  %.sroa.028.8.vec.extract.us.3.i = extractelement <4 x float> %i.zr, i64 2
  store float %.sroa.028.8.vec.extract.us.3.i, ptr %i.aaa, align 4, !tbaa !56
  %.sroa.028.12.vec.extract.us.3.i = extractelement <4 x float> %i.zr, i64 3
  store float %.sroa.028.12.vec.extract.us.3.i, ptr %i.aab, align 4, !tbaa !56
  br i1 %i.ul, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %.sroa.729.16.vec.extract.us.3.i = extractelement <4 x float> %i.zt, i64 0
  %i.aac = getelementptr inbounds nuw i8, ptr %.1736.us.2.i, i64 4
  store float %.sroa.729.16.vec.extract.us.3.i, ptr %i.aac, align 4, !tbaa !56
  %.sroa.729.20.vec.extract.us.3.i = extractelement <4 x float> %i.zt, i64 1
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zz, i64 4
  store float %.sroa.729.20.vec.extract.us.3.i, ptr %i.aad, align 4, !tbaa !56
  %.sroa.729.24.vec.extract.us.3.i = extractelement <4 x float> %i.zt, i64 2
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aaa, i64 4
  store float %.sroa.729.24.vec.extract.us.3.i, ptr %i.aae, align 4, !tbaa !56
  %.sroa.729.28.vec.extract.us.3.i = extractelement <4 x float> %i.zt, i64 3
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aab, i64 4
  store float %.sroa.729.28.vec.extract.us.3.i, ptr %i.aaf, align 4, !tbaa !56
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  br i1 %i.un, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %.sroa.12.32.vec.extract.us.3.i = extractelement <4 x float> %i.zv, i64 0
  %i.aag = getelementptr inbounds nuw i8, ptr %.1736.us.2.i, i64 8
  store float %.sroa.12.32.vec.extract.us.3.i, ptr %i.aag, align 4, !tbaa !56
  %.sroa.12.36.vec.extract.us.3.i = extractelement <4 x float> %i.zv, i64 1
  %i.aah = getelementptr inbounds nuw i8, ptr %i.zz, i64 8
  store float %.sroa.12.36.vec.extract.us.3.i, ptr %i.aah, align 4, !tbaa !56
  %.sroa.12.40.vec.extract.us.3.i = extractelement <4 x float> %i.zv, i64 2
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aaa, i64 8
  store float %.sroa.12.40.vec.extract.us.3.i, ptr %i.aai, align 4, !tbaa !56
  %.sroa.12.44.vec.extract.us.3.i = extractelement <4 x float> %i.zv, i64 3
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aab, i64 8
  store float %.sroa.12.44.vec.extract.us.3.i, ptr %i.aaj, align 4, !tbaa !56
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  br i1 %i.up, label %bb.cc, label %bb.cj

bb.cc:                                            ; preds = %bb.cb
  %.sroa.1730.48.vec.extract.us.3.i = extractelement <4 x float> %i.zy, i64 0
  %i.aak = getelementptr inbounds nuw i8, ptr %.1736.us.2.i, i64 12
  store float %.sroa.1730.48.vec.extract.us.3.i, ptr %i.aak, align 4, !tbaa !56
  %.sroa.1730.52.vec.extract.us.3.i = extractelement <4 x float> %i.zy, i64 1
  %i.aal = getelementptr inbounds nuw i8, ptr %i.zz, i64 12
  store float %.sroa.1730.52.vec.extract.us.3.i, ptr %i.aal, align 4, !tbaa !56
  %.sroa.1730.56.vec.extract.us.3.i = extractelement <4 x float> %i.zy, i64 2
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aaa, i64 12
  store float %.sroa.1730.56.vec.extract.us.3.i, ptr %i.aam, align 4, !tbaa !56
  %.sroa.1730.60.vec.extract.us.3.i = extractelement <4 x float> %i.zy, i64 3
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aab, i64 12
  store float %.sroa.1730.60.vec.extract.us.3.i, ptr %i.aan, align 4, !tbaa !56
  br label %bb.cj

bb.cd:                                            ; preds = %bb.bw
  store <4 x float> %i.zr, ptr %.1736.us.2.i, align 16, !tbaa !114
  br i1 %i.ul, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.aao = getelementptr inbounds nuw i8, ptr %.1736.us.2.i, i64 16
  store <4 x float> %i.zt, ptr %i.aao, align 16, !tbaa !114
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  br i1 %i.un, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.aap = getelementptr inbounds nuw i8, ptr %.1736.us.2.i, i64 32
  store <4 x float> %i.zv, ptr %i.aap, align 16, !tbaa !114
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  br i1 %i.up, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.aaq = getelementptr inbounds nuw i8, ptr %.1736.us.2.i, i64 48
  store <4 x float> %i.zy, ptr %i.aaq, align 16, !tbaa !114
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch, %bb.cc, %bb.cb, %bb.bw, %bb.bv
  %indvars.iv.next251.i = add nuw nsw i64 %indvars.iv250.i, 1 ; 2 uses
  %exitcond254.not.i = icmp eq i64 %indvars.iv.next251.i, %wide.trip.count253.i
  br i1 %exitcond254.not.i, label %._crit_edge.us179.i, label %_ZN4ncnn3MatD2Ev.exit778.us.i, !llvm.loop !1201

._crit_edge.us179.i:                              ; preds = %bb.cj
  %indvars.iv.next256.i = add nuw nsw i64 %indvars.iv255.i, 4 ; 3 uses
  %i.aar = icmp slt i64 %indvars.iv.next256.i, %invariant.op.i
  br i1 %i.aar, label %.lr.ph175.split.us.i, label %.preheader144.loopexit.i, !llvm.loop !1202

.lr.ph175.split.i:                                ; preds = %.lr.ph175.i
  %i.aas = sub i32 %i.ck, %.0723.lcssa.i
  %i.aat = and i32 %i.aas, -4
  %i.aau = add nsw i32 %.0723.lcssa.i, 4
  %i.aav = add i32 %i.aau, %i.aat
  br label %.preheader144.i

.preheader144.loopexit.i:                         ; preds = %._crit_edge.us179.i
  %i.aaw = trunc nsw i64 %indvars.iv.next256.i to i32
  br label %.preheader144.i

.preheader144.i:                                  ; preds = %.preheader144.loopexit.i, %.lr.ph175.split.i, %.preheader145.i
  %.1724.lcssa.i = phi i32 [ %.0723.lcssa.i, %.preheader145.i ], [ %i.aav, %.lr.ph175.split.i ], [ %i.aaw, %.preheader144.loopexit.i ] ; 3 uses
  %i.aax = or disjoint i32 %.1724.lcssa.i, 1
  %i.aay = icmp slt i32 %i.aax, %.sroa.speculated121
  br i1 %i.aay, label %.lr.ph198.i, label %.preheader.i

.lr.ph198.i:                                      ; preds = %.preheader144.i
  %.not764.i = icmp eq ptr %.val78, null
  %i.aaz = icmp sgt i32 %.sroa.speculated117, 0
  %i.aba = shl nuw nsw i32 %.sroa.speculated117, 1
  %i.abb = zext nneg i32 %i.aba to i64
  %i.abc = shl nuw nsw i32 %.sroa.speculated117, 2
  %i.abd = zext nneg i32 %i.abc to i64
  %i.abe = mul nuw nsw i32 %.sroa.speculated117, 6
  %i.abf = zext nneg i32 %i.abe to i64
  %i.abg = shl nuw nsw i32 %.sroa.speculated117, 3
  %i.abh = zext nneg i32 %i.abg to i64
  %i.abi = mul nuw nsw i32 %.sroa.speculated117, 10
  %i.abj = zext nneg i32 %i.abi to i64
  %i.abk = mul nuw nsw i32 %.sroa.speculated117, 12
  %i.abl = zext nneg i32 %i.abk to i64            ; 30 uses
  %i.abm = sext i32 %i.cx to i64                  ; 3 uses
  %i.abn = sext i32 %.1724.lcssa.i to i64         ; 4 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %.val78, i64 %i.ch
  %wide.trip.count269.i = zext nneg i32 %.sroa.speculated117 to i64
  br i1 %i.aaz, label %.lr.ph198.i.split.us, label %.lr.ph198.i.split

.lr.ph198.i.split.us:                             ; preds = %.lr.ph198.i
  %i.abo = load i32, ptr %i.ao, align 4, !tbaa !89, !noalias !1224
  %i.abp = load ptr, ptr %12, align 8, !tbaa !37, !noalias !1224
  %i.abq = load i64, ptr %i.ar, align 8, !tbaa !38, !noalias !1224
  %i.abr = load i64, ptr %i.av, align 8, !tbaa !79, !noalias !1224 ; 2 uses
  %factor.op.mul = mul i64 %i.abq, %i.abr
  %i.abs = sext i32 %i.abo to i64
  %factor.op.mul194.i.us = mul i64 %i.abr, %i.abs
  br label %bb.ck

bb.ck:                                            ; preds = %._crit_edge.i.loopexit.us, %.lr.ph198.i.split.us
  %indvars.iv271.i.us = phi i64 [ %i.abn, %.lr.ph198.i.split.us ], [ %indvars.iv.next272.i.us, %._crit_edge.i.loopexit.us ] ; 4 uses
  br i1 %.not764.i, label %.thread.i.us, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %gep.i.us = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv271.i.us
  %i.abt = load <2 x float>, ptr %gep.i.us, align 4, !tbaa !56
  br label %.thread.i.us

.thread.i.us:                                     ; preds = %bb.cl, %bb.ck
  %i.abu = phi <2 x float> [ %i.abt, %bb.cl ], [ zeroinitializer, %bb.ck ] ; 14 uses
  %i.abv = trunc nsw i64 %indvars.iv271.i.us to i32
  %factor.op.mul.reass.i.us = mul i32 %factor.op.mul156.i, %i.abv
  %i.abw = sext i32 %factor.op.mul.reass.i.us to i64
  %i.abx = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.abw
  %i.aby = add nsw i64 %indvars.iv271.i.us, %i.ch
  %.reass = mul i64 %factor.op.mul, %i.aby
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abp, i64 %.reass
  %i.aca = extractelement <2 x float> %i.abu, i64 0 ; 4 uses
  %i.acb = extractelement <2 x float> %i.abu, i64 1 ; 4 uses
  br label %_ZN4ncnn3MatD2Ev.exit777.i.us

_ZN4ncnn3MatD2Ev.exit777.i.us:                    ; preds = %bb.dq, %.thread.i.us
  %indvars.iv266.i.us = phi i64 [ 0, %.thread.i.us ], [ %indvars.iv.next267.i.us, %bb.dq ] ; 3 uses
  %.idx322.i.us = shl nuw nsw i64 %indvars.iv266.i.us, 3
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abx, i64 %.idx322.i.us ; 7 uses
  %i.acd = getelementptr inbounds nuw [4 x i8], ptr %i.acc, i64 %i.abj ; 2 uses
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %i.acc, i64 %i.abh ; 2 uses
  %i.acf = getelementptr inbounds nuw [4 x i8], ptr %i.acc, i64 %i.abf ; 2 uses
  %i.acg = getelementptr inbounds nuw [4 x i8], ptr %i.acc, i64 %i.abd ; 2 uses
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %i.acc, i64 %i.abb ; 2 uses
  %i.aci = load <2 x float>, ptr %i.ach, align 4, !tbaa !56 ; 2 uses
  %i.acj = load <2 x float>, ptr %i.acg, align 4, !tbaa !56 ; 2 uses
  %i.ack = fadd fast <2 x float> %i.acj, %i.aci   ; 2 uses
  %i.acl = load <2 x float>, ptr %i.acf, align 4, !tbaa !56 ; 2 uses
  %i.acm = load <2 x float>, ptr %i.ace, align 4, !tbaa !56 ; 2 uses
  %i.acn = fadd fast <2 x float> %i.acm, %i.acl   ; 2 uses
  %i.aco = fsub fast <2 x float> %i.aci, %i.acj   ; 2 uses
  %i.acp = fsub fast <2 x float> %i.acl, %i.acm   ; 2 uses
  %i.acq = fmul fast <2 x float> %i.aco, splat (float f0x3F3504F3)
  %i.acr = fmul fast <2 x float> %i.acp, splat (float f0x3FB504F3)
  %i.acs = fadd fast <2 x float> %i.acr, %i.acq
  %i.act = fmul fast <2 x float> %i.ack, splat (float 5.000000e-01)
  %i.acu = fmul fast <2 x float> %i.acn, splat (float 2.000000e+00)
  %i.acv = fadd fast <2 x float> %i.acu, %i.act
  %i.acw = load <2 x float>, ptr %i.acd, align 4, !tbaa !56
  %i.acx = fmul fast <2 x float> %i.aco, splat (float f0x3EB504F3)
  %i.acy = fadd fast <2 x float> %i.acx, %i.acw
  %i.acz = fmul fast <2 x float> %i.acp, splat (float f0x403504F3)
  %i.ada = fadd fast <2 x float> %i.acy, %i.acz
  %i.adb = getelementptr inbounds nuw [4 x i8], ptr %i.ach, i64 %i.abl ; 2 uses
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %i.acg, i64 %i.abl ; 2 uses
  %i.add = getelementptr inbounds nuw [4 x i8], ptr %i.acf, i64 %i.abl ; 2 uses
  %i.ade = getelementptr inbounds nuw [4 x i8], ptr %i.ace, i64 %i.abl ; 2 uses
  %i.adf = getelementptr inbounds nuw [4 x i8], ptr %i.acd, i64 %i.abl ; 2 uses
  %i.adg = load <2 x float>, ptr %i.adb, align 4, !tbaa !56 ; 2 uses
  %i.adh = load <2 x float>, ptr %i.adc, align 4, !tbaa !56 ; 2 uses
  %i.adi = fadd fast <2 x float> %i.adh, %i.adg   ; 2 uses
  %i.adj = load <2 x float>, ptr %i.add, align 4, !tbaa !56 ; 2 uses
  %i.adk = load <2 x float>, ptr %i.ade, align 4, !tbaa !56 ; 2 uses
  %i.adl = fadd fast <2 x float> %i.adk, %i.adj   ; 2 uses
  %i.adm = fsub fast <2 x float> %i.adg, %i.adh   ; 2 uses
  %i.adn = fsub fast <2 x float> %i.adj, %i.adk   ; 2 uses
  %i.ado = fmul fast <2 x float> %i.adm, splat (float f0x3F3504F3)
  %i.adp = fmul fast <2 x float> %i.adn, splat (float f0x3FB504F3)
  %i.adq = fadd fast <2 x float> %i.adp, %i.ado   ; 2 uses
  %i.adr = fmul fast <2 x float> %i.adi, splat (float 5.000000e-01)
  %i.ads = fmul fast <2 x float> %i.adl, splat (float 2.000000e+00)
  %i.adt = fadd fast <2 x float> %i.ads, %i.adr   ; 2 uses
  %i.adu = load <2 x float>, ptr %i.adf, align 4, !tbaa !56
  %i.adv = fmul fast <2 x float> %i.adm, splat (float f0x3EB504F3)
  %i.adw = fadd fast <2 x float> %i.adv, %i.adu
  %i.adx = fmul fast <2 x float> %i.adn, splat (float f0x403504F3)
  %i.ady = fadd fast <2 x float> %i.adw, %i.adx   ; 2 uses
  %i.adz = getelementptr inbounds nuw [4 x i8], ptr %i.adb, i64 %i.abl ; 2 uses
  %i.aea = getelementptr inbounds nuw [4 x i8], ptr %i.adc, i64 %i.abl ; 2 uses
  %i.aeb = getelementptr inbounds nuw [4 x i8], ptr %i.add, i64 %i.abl ; 2 uses
  %i.aec = getelementptr inbounds nuw [4 x i8], ptr %i.ade, i64 %i.abl ; 2 uses
  %i.aed = getelementptr inbounds nuw [4 x i8], ptr %i.adf, i64 %i.abl ; 2 uses
  %i.aee = load <2 x float>, ptr %i.adz, align 4, !tbaa !56 ; 2 uses
  %i.aef = load <2 x float>, ptr %i.aea, align 4, !tbaa !56 ; 2 uses
  %i.aeg = fadd fast <2 x float> %i.aef, %i.aee   ; 2 uses
  %i.aeh = load <2 x float>, ptr %i.aeb, align 4, !tbaa !56 ; 2 uses
  %i.aei = load <2 x float>, ptr %i.aec, align 4, !tbaa !56 ; 2 uses
  %i.aej = fadd fast <2 x float> %i.aei, %i.aeh   ; 2 uses
  %i.aek = fsub fast <2 x float> %i.aee, %i.aef   ; 2 uses
  %i.ael = fsub fast <2 x float> %i.aeh, %i.aei   ; 2 uses
  %i.aem = fmul fast <2 x float> %i.aek, splat (float f0x3F3504F3)
  %i.aen = fmul fast <2 x float> %i.ael, splat (float f0x3FB504F3)
  %i.aeo = fadd fast <2 x float> %i.aen, %i.aem   ; 2 uses
  %i.aep = fmul fast <2 x float> %i.aeg, splat (float 5.000000e-01)
  %i.aeq = fmul fast <2 x float> %i.aej, splat (float 2.000000e+00)
  %i.aer = fadd fast <2 x float> %i.aeq, %i.aep   ; 2 uses
  %i.aes = load <2 x float>, ptr %i.aed, align 4, !tbaa !56
  %i.aet = fmul fast <2 x float> %i.aek, splat (float f0x3EB504F3)
  %i.aeu = fadd fast <2 x float> %i.aet, %i.aes
  %i.aev = fmul fast <2 x float> %i.ael, splat (float f0x403504F3)
  %i.aew = fadd fast <2 x float> %i.aeu, %i.aev   ; 2 uses
  %i.aex = getelementptr inbounds nuw [4 x i8], ptr %i.adz, i64 %i.abl ; 2 uses
  %i.aey = getelementptr inbounds nuw [4 x i8], ptr %i.aea, i64 %i.abl ; 2 uses
  %i.aez = getelementptr inbounds nuw [4 x i8], ptr %i.aeb, i64 %i.abl ; 2 uses
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr %i.aec, i64 %i.abl ; 2 uses
  %i.afb = getelementptr inbounds nuw [4 x i8], ptr %i.aed, i64 %i.abl ; 2 uses
  %i.afc = load <2 x float>, ptr %i.aex, align 4, !tbaa !56 ; 2 uses
  %i.afd = load <2 x float>, ptr %i.aey, align 4, !tbaa !56 ; 2 uses
  %i.afe = fadd fast <2 x float> %i.afd, %i.afc   ; 2 uses
  %i.aff = load <2 x float>, ptr %i.aez, align 4, !tbaa !56 ; 2 uses
  %i.afg = load <2 x float>, ptr %i.afa, align 4, !tbaa !56 ; 2 uses
  %i.afh = fadd fast <2 x float> %i.afg, %i.aff   ; 2 uses
  %i.afi = fsub fast <2 x float> %i.afc, %i.afd   ; 2 uses
  %i.afj = fsub fast <2 x float> %i.aff, %i.afg   ; 2 uses
  %i.afk = fmul fast <2 x float> %i.afi, splat (float f0x3F3504F3)
  %i.afl = fmul fast <2 x float> %i.afj, splat (float f0x3FB504F3)
  %i.afm = fadd fast <2 x float> %i.afl, %i.afk   ; 2 uses
  %i.afn = fmul fast <2 x float> %i.afe, splat (float 5.000000e-01)
  %i.afo = fmul fast <2 x float> %i.afh, splat (float 2.000000e+00)
  %i.afp = fadd fast <2 x float> %i.afo, %i.afn   ; 2 uses
  %i.afq = load <2 x float>, ptr %i.afb, align 4, !tbaa !56
  %i.afr = fmul fast <2 x float> %i.afi, splat (float f0x3EB504F3)
  %i.afs = fadd fast <2 x float> %i.afr, %i.afq
  %i.aft = fmul fast <2 x float> %i.afj, splat (float f0x403504F3)
  %i.afu = fadd fast <2 x float> %i.afs, %i.aft   ; 2 uses
  %i.afv = getelementptr inbounds nuw [4 x i8], ptr %i.aex, i64 %i.abl ; 2 uses
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %i.aey, i64 %i.abl ; 2 uses
  %i.afx = getelementptr inbounds nuw [4 x i8], ptr %i.aez, i64 %i.abl ; 2 uses
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %i.afa, i64 %i.abl ; 2 uses
  %i.afz = getelementptr inbounds nuw [4 x i8], ptr %i.afb, i64 %i.abl ; 2 uses
  %i.aga = load <2 x float>, ptr %i.afv, align 4, !tbaa !56 ; 2 uses
  %i.agb = load <2 x float>, ptr %i.afw, align 4, !tbaa !56 ; 2 uses
  %i.agc = fadd fast <2 x float> %i.agb, %i.aga   ; 2 uses
  %i.agd = load <2 x float>, ptr %i.afx, align 4, !tbaa !56 ; 2 uses
  %i.age = load <2 x float>, ptr %i.afy, align 4, !tbaa !56 ; 2 uses
  %i.agf = fadd fast <2 x float> %i.age, %i.agd   ; 2 uses
  %i.agg = fsub fast <2 x float> %i.aga, %i.agb   ; 2 uses
  %i.agh = fsub fast <2 x float> %i.agd, %i.age   ; 2 uses
  %i.agi = fmul fast <2 x float> %i.agg, splat (float f0x3F3504F3)
  %i.agj = fmul fast <2 x float> %i.agh, splat (float f0x3FB504F3)
  %i.agk = fadd fast <2 x float> %i.agj, %i.agi   ; 2 uses
  %i.agl = fmul fast <2 x float> %i.agc, splat (float 5.000000e-01)
  %i.agm = fmul fast <2 x float> %i.agf, splat (float 2.000000e+00)
  %i.agn = fadd fast <2 x float> %i.agm, %i.agl   ; 2 uses
  %i.ago = load <2 x float>, ptr %i.afz, align 4, !tbaa !56
  %i.agp = fmul fast <2 x float> %i.agg, splat (float f0x3EB504F3)
  %i.agq = fadd fast <2 x float> %i.agp, %i.ago
  %i.agr = fmul fast <2 x float> %i.agh, splat (float f0x403504F3)
  %i.ags = fadd fast <2 x float> %i.agq, %i.agr   ; 2 uses
  %i.agt = getelementptr inbounds nuw [4 x i8], ptr %i.afv, i64 %i.abl
  %i.agu = getelementptr inbounds nuw [4 x i8], ptr %i.afw, i64 %i.abl
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %i.afx, i64 %i.abl
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr %i.afy, i64 %i.abl
  %i.agx = getelementptr inbounds nuw [4 x i8], ptr %i.afz, i64 %i.abl
  %i.agy = load <2 x float>, ptr %i.agt, align 4, !tbaa !56 ; 2 uses
  %i.agz = load <2 x float>, ptr %i.agu, align 4, !tbaa !56 ; 2 uses
  %i.aha = fadd fast <2 x float> %i.agz, %i.agy   ; 2 uses
  %i.ahb = load <2 x float>, ptr %i.agv, align 4, !tbaa !56 ; 2 uses
  %i.ahc = load <2 x float>, ptr %i.agw, align 4, !tbaa !56 ; 2 uses
end_hunk_11
begin_hunk_12_@_ZN4ncnnL20conv3x3s1_winograd63ERKNS_3MatERS0_S2_S2_iRKNS_6OptionE.omp_outlined.5:bb.a
  %i.abt = load <4 x float>, ptr %i.abs, align 16, !tbaa !114 ; 2 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abg, i64 112
  %i.abv = load <4 x float>, ptr %i.abu, align 16, !tbaa !114
  %i.abw = fadd fast <4 x float> %i.abl, %i.abj   ; 3 uses
  %i.abx = fsub fast <4 x float> %i.abj, %i.abl   ; 3 uses
  %i.aby = fadd fast <4 x float> %i.abp, %i.abn   ; 3 uses
  %i.abz = fsub fast <4 x float> %i.abn, %i.abp   ; 3 uses
  %i.aca = fadd fast <4 x float> %i.abt, %i.abr   ; 3 uses
  %i.acb = fsub fast <4 x float> %i.abr, %i.abt   ; 3 uses
  %i.acc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aca, <4 x float> nofpclass(nan inf) splat (float 3.200000e+01), <4 x float> nofpclass(nan inf) %i.aby)
  %i.acd = fadd fast <4 x float> %i.abh, %i.os
  %i.ace = fadd fast <4 x float> %i.acd, %i.abw
  %i.acf = fadd fast <4 x float> %i.ace, %i.acc   ; 5 uses
  %i.acg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.abz, <4 x float> nofpclass(nan inf) splat (float 2.000000e+00), <4 x float> nofpclass(nan inf) %i.abx)
  %i.ach = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.acb, <4 x float> nofpclass(nan inf) splat (float 1.600000e+01), <4 x float> nofpclass(nan inf) %i.acg)
  %i.aci = fadd fast <4 x float> %i.ach, %i.os    ; 5 uses
  %i.acj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aby, <4 x float> nofpclass(nan inf) splat (float 4.000000e+00), <4 x float> nofpclass(nan inf) %i.abw)
  %i.ack = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aca, <4 x float> nofpclass(nan inf) splat (float 8.000000e+00), <4 x float> nofpclass(nan inf) %i.acj)
  %i.acl = fadd fast <4 x float> %i.ack, %i.os    ; 5 uses
  %i.acm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.abz, <4 x float> nofpclass(nan inf) splat (float 8.000000e+00), <4 x float> nofpclass(nan inf) %i.abx)
  %i.acn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.acb, <4 x float> nofpclass(nan inf) splat (float 4.000000e+00), <4 x float> nofpclass(nan inf) %i.acm)
  %i.aco = fadd fast <4 x float> %i.acn, %i.os    ; 5 uses
  %i.acp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aby, <4 x float> nofpclass(nan inf) splat (float 1.600000e+01), <4 x float> nofpclass(nan inf) %i.abw)
  %i.acq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aca, <4 x float> nofpclass(nan inf) splat (float 2.000000e+00), <4 x float> nofpclass(nan inf) %i.acp)
  %i.acr = fadd fast <4 x float> %i.acq, %i.os    ; 5 uses
  %i.acs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.abz, <4 x float> nofpclass(nan inf) splat (float 3.200000e+01), <4 x float> nofpclass(nan inf) %i.acb)
  %i.act = fadd fast <4 x float> %i.abx, %i.os
  %i.acu = fadd fast <4 x float> %i.act, %i.abv
  %i.acv = fadd fast <4 x float> %i.acu, %i.acs   ; 5 uses
  switch i32 %i.ep, label %bb.bn [
    i32 4, label %bb.bd
    i32 1, label %bb.at
  ]

bb.at:                                            ; preds = %bb.as
  %i.acw = getelementptr inbounds nuw [4 x i8], ptr %.01046238.us.i, i64 %i.es ; 6 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %.01046238.us.i, i64 %.idx.i ; 6 uses
  %i.acy = getelementptr inbounds nuw i8, ptr %.01046238.us.i, i64 %.idx1076.i ; 6 uses
  %.sroa.028.0.vec.extract.us.i = extractelement <4 x float> %i.acf, i64 0
  store float %.sroa.028.0.vec.extract.us.i, ptr %.01046238.us.i, align 4, !tbaa !56
  %.sroa.028.4.vec.extract.us.i = extractelement <4 x float> %i.acf, i64 1
  store float %.sroa.028.4.vec.extract.us.i, ptr %i.acw, align 4, !tbaa !56
  %.sroa.028.8.vec.extract.us.i = extractelement <4 x float> %i.acf, i64 2
  store float %.sroa.028.8.vec.extract.us.i, ptr %i.acx, align 4, !tbaa !56
  %.sroa.028.12.vec.extract.us.i = extractelement <4 x float> %i.acf, i64 3
  store float %.sroa.028.12.vec.extract.us.i, ptr %i.acy, align 4, !tbaa !56
  br i1 %i.aax, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %.sroa.729.16.vec.extract.us.i = extractelement <4 x float> %i.aci, i64 0
  %i.acz = getelementptr inbounds nuw i8, ptr %.01046238.us.i, i64 4
  store float %.sroa.729.16.vec.extract.us.i, ptr %i.acz, align 4, !tbaa !56
  %.sroa.729.20.vec.extract.us.i = extractelement <4 x float> %i.aci, i64 1
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acw, i64 4
  store float %.sroa.729.20.vec.extract.us.i, ptr %i.ada, align 4, !tbaa !56
  %.sroa.729.24.vec.extract.us.i = extractelement <4 x float> %i.aci, i64 2
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acx, i64 4
  store float %.sroa.729.24.vec.extract.us.i, ptr %i.adb, align 4, !tbaa !56
  %.sroa.729.28.vec.extract.us.i = extractelement <4 x float> %i.aci, i64 3
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acy, i64 4
  store float %.sroa.729.28.vec.extract.us.i, ptr %i.adc, align 4, !tbaa !56
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  br i1 %i.aaz, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %.sroa.12.32.vec.extract.us.i = extractelement <4 x float> %i.acl, i64 0
  %i.add = getelementptr inbounds nuw i8, ptr %.01046238.us.i, i64 8
  store float %.sroa.12.32.vec.extract.us.i, ptr %i.add, align 4, !tbaa !56
  %.sroa.12.36.vec.extract.us.i = extractelement <4 x float> %i.acl, i64 1
  %i.ade = getelementptr inbounds nuw i8, ptr %i.acw, i64 8
  store float %.sroa.12.36.vec.extract.us.i, ptr %i.ade, align 4, !tbaa !56
  %.sroa.12.40.vec.extract.us.i = extractelement <4 x float> %i.acl, i64 2
  %i.adf = getelementptr inbounds nuw i8, ptr %i.acx, i64 8
  store float %.sroa.12.40.vec.extract.us.i, ptr %i.adf, align 4, !tbaa !56
  %.sroa.12.44.vec.extract.us.i = extractelement <4 x float> %i.acl, i64 3
  %i.adg = getelementptr inbounds nuw i8, ptr %i.acy, i64 8
  store float %.sroa.12.44.vec.extract.us.i, ptr %i.adg, align 4, !tbaa !56
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  br i1 %i.abb, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %.sroa.1730.48.vec.extract.us.i = extractelement <4 x float> %i.aco, i64 0
  %i.adh = getelementptr inbounds nuw i8, ptr %.01046238.us.i, i64 12
  store float %.sroa.1730.48.vec.extract.us.i, ptr %i.adh, align 4, !tbaa !56
  %.sroa.1730.52.vec.extract.us.i = extractelement <4 x float> %i.aco, i64 1
  %i.adi = getelementptr inbounds nuw i8, ptr %i.acw, i64 12
  store float %.sroa.1730.52.vec.extract.us.i, ptr %i.adi, align 4, !tbaa !56
  %.sroa.1730.56.vec.extract.us.i = extractelement <4 x float> %i.aco, i64 2
  %i.adj = getelementptr inbounds nuw i8, ptr %i.acx, i64 12
  store float %.sroa.1730.56.vec.extract.us.i, ptr %i.adj, align 4, !tbaa !56
  %.sroa.1730.60.vec.extract.us.i = extractelement <4 x float> %i.aco, i64 3
  %i.adk = getelementptr inbounds nuw i8, ptr %i.acy, i64 12
  store float %.sroa.1730.60.vec.extract.us.i, ptr %i.adk, align 4, !tbaa !56
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  br i1 %i.abd, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %.sroa.2231.64.vec.extract.us.i = extractelement <4 x float> %i.acr, i64 0
  %i.adl = getelementptr inbounds nuw i8, ptr %.01046238.us.i, i64 16
  store float %.sroa.2231.64.vec.extract.us.i, ptr %i.adl, align 4, !tbaa !56
  %.sroa.2231.68.vec.extract.us.i = extractelement <4 x float> %i.acr, i64 1
  %i.adm = getelementptr inbounds nuw i8, ptr %i.acw, i64 16
  store float %.sroa.2231.68.vec.extract.us.i, ptr %i.adm, align 4, !tbaa !56
  %.sroa.2231.72.vec.extract.us.i = extractelement <4 x float> %i.acr, i64 2
  %i.adn = getelementptr inbounds nuw i8, ptr %i.acx, i64 16
  store float %.sroa.2231.72.vec.extract.us.i, ptr %i.adn, align 4, !tbaa !56
  %.sroa.2231.76.vec.extract.us.i = extractelement <4 x float> %i.acr, i64 3
  %i.ado = getelementptr inbounds nuw i8, ptr %i.acy, i64 16
  store float %.sroa.2231.76.vec.extract.us.i, ptr %i.ado, align 4, !tbaa !56
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  br i1 %i.abf, label %bb.bc, label %bb.bn

bb.bc:                                            ; preds = %bb.bb
  %.sroa.27.80.vec.extract.us.i = extractelement <4 x float> %i.acv, i64 0
  %i.adp = getelementptr inbounds nuw i8, ptr %.01046238.us.i, i64 20
  store float %.sroa.27.80.vec.extract.us.i, ptr %i.adp, align 4, !tbaa !56
  %.sroa.27.84.vec.extract.us.i = extractelement <4 x float> %i.acv, i64 1
  %i.adq = getelementptr inbounds nuw i8, ptr %i.acw, i64 20
  store float %.sroa.27.84.vec.extract.us.i, ptr %i.adq, align 4, !tbaa !56
  %.sroa.27.88.vec.extract.us.i = extractelement <4 x float> %i.acv, i64 2
  %i.adr = getelementptr inbounds nuw i8, ptr %i.acx, i64 20
  store float %.sroa.27.88.vec.extract.us.i, ptr %i.adr, align 4, !tbaa !56
  %.sroa.27.92.vec.extract.us.i = extractelement <4 x float> %i.acv, i64 3
  %i.ads = getelementptr inbounds nuw i8, ptr %i.acy, i64 20
  store float %.sroa.27.92.vec.extract.us.i, ptr %i.ads, align 4, !tbaa !56
  br label %bb.bn

bb.bd:                                            ; preds = %bb.as
  store <4 x float> %i.acf, ptr %.01046238.us.i, align 16, !tbaa !114
  br i1 %i.aax, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.adt = getelementptr inbounds nuw i8, ptr %.01046238.us.i, i64 16
  store <4 x float> %i.aci, ptr %i.adt, align 16, !tbaa !114
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  br i1 %i.aaz, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.adu = getelementptr inbounds nuw i8, ptr %.01046238.us.i, i64 32
  store <4 x float> %i.acl, ptr %i.adu, align 16, !tbaa !114
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  br i1 %i.abb, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.adv = getelementptr inbounds nuw i8, ptr %.01046238.us.i, i64 48
  store <4 x float> %i.aco, ptr %i.adv, align 16, !tbaa !114
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  br i1 %i.abd, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.adw = getelementptr inbounds nuw i8, ptr %.01046238.us.i, i64 64
  store <4 x float> %i.acr, ptr %i.adw, align 16, !tbaa !114
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  br i1 %i.abf, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.adx = getelementptr inbounds nuw i8, ptr %.01046238.us.i, i64 80
  store <4 x float> %i.acv, ptr %i.adx, align 16, !tbaa !114
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bc, %bb.bb, %bb.as
  %i.ady = getelementptr inbounds [4 x i8], ptr %.01046238.us.i, i64 %i.on
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.ar
  %.11047.us.i = phi ptr [ %.01046238.us.i, %bb.ar ], [ %i.ady, %bb.bn ]
  %indvars.iv.next322.i = add nuw nsw i64 %indvars.iv321.i, 1 ; 2 uses
  %exitcond324.not.i = icmp eq i64 %indvars.iv.next322.i, 6
  br i1 %exitcond324.not.i, label %bb.bp, label %bb.ar, !llvm.loop !1274

bb.bp:                                            ; preds = %bb.bo
  %indvars.iv.next326.i = add nuw nsw i64 %indvars.iv325.i, 1 ; 2 uses
  %exitcond329.not.i = icmp eq i64 %indvars.iv.next326.i, %wide.trip.count328.i
  br i1 %exitcond329.not.i, label %._crit_edge.us247.i, label %_ZN4ncnn3MatD2Ev.exit1086.us.i, !llvm.loop !1275

._crit_edge.us247.i:                              ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %indvars.iv.next331.i = add nuw nsw i64 %indvars.iv330.i, 4 ; 3 uses
  %i.adz = icmp slt i64 %indvars.iv.next331.i, %invariant.op375.i
  br i1 %i.adz, label %.lr.ph243.split.us.i, label %.preheader208.loopexit.i, !llvm.loop !1276

.lr.ph243.split.i:                                ; preds = %.lr.ph243.i
  %i.aea = sub i32 %i.ea, %.01025.lcssa.i
  %i.aeb = and i32 %i.aea, -4
  %i.aec = add nsw i32 %.01025.lcssa.i, 4
  %i.aed = add i32 %i.aec, %i.aeb
  br label %.preheader208.i

.preheader208.loopexit.i:                         ; preds = %._crit_edge.us247.i
  %i.aee = trunc nsw i64 %indvars.iv.next331.i to i32
  br label %.preheader208.i

.preheader208.i:                                  ; preds = %.preheader208.loopexit.i, %.lr.ph243.split.i, %.preheader209.i
  %.11026.lcssa.i = phi i32 [ %.01025.lcssa.i, %.preheader209.i ], [ %i.aed, %.lr.ph243.split.i ], [ %i.aee, %.preheader208.loopexit.i ] ; 3 uses
  %i.aef = or disjoint i32 %.11026.lcssa.i, 1
  %i.aeg = icmp slt i32 %i.aef, %.sroa.speculated121
  br i1 %i.aeg, label %.lr.ph268.i, label %.preheader.i

.lr.ph268.i:                                      ; preds = %.preheader208.i
  %.not1072.i = icmp eq ptr %.val78, null
  %i.aeh = icmp sgt i32 %.sroa.speculated117, 0
  %i.aei = shl nuw nsw i32 %.sroa.speculated117, 1
  %i.aej = zext nneg i32 %i.aei to i64
  %i.aek = shl nuw nsw i32 %.sroa.speculated117, 2
  %i.ael = zext nneg i32 %i.aek to i64
  %i.aem = mul nuw nsw i32 %.sroa.speculated117, 6
  %i.aen = zext nneg i32 %i.aem to i64
  %i.aeo = shl nuw nsw i32 %.sroa.speculated117, 3
  %i.aep = zext nneg i32 %i.aeo to i64
  %i.aeq = mul nuw nsw i32 %.sroa.speculated117, 10
  %i.aer = zext nneg i32 %i.aeq to i64
  %i.aes = mul nuw nsw i32 %.sroa.speculated117, 12
  %i.aet = zext nneg i32 %i.aes to i64
  %i.aeu = mul nuw nsw i32 %.sroa.speculated117, 14
  %i.aev = zext nneg i32 %i.aeu to i64
  %i.aew = shl nuw nsw i32 %.sroa.speculated117, 4
  %i.aex = zext nneg i32 %i.aew to i64            ; 8 uses
  %i.aey = sext i32 %i.en to i64
  %i.aez = sext i32 %i.eo to i64
  %i.afa = sext i32 %.11026.lcssa.i to i64        ; 4 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %.val78, i64 %i.dx
  %wide.trip.count344.i = zext nneg i32 %.sroa.speculated117 to i64
  br i1 %i.aeh, label %.lr.ph268.i.split.us, label %.lr.ph268.i.split

.lr.ph268.i.split.us:                             ; preds = %.lr.ph268.i
  %i.afb = load i32, ptr %i.ar, align 4, !tbaa !89, !noalias !1302
  %i.afc = load ptr, ptr %12, align 8, !tbaa !37, !noalias !1302
  %i.afd = load i64, ptr %i.au, align 8, !tbaa !38, !noalias !1302
  %i.afe = load i64, ptr %i.ba, align 8, !tbaa !79, !noalias !1302 ; 2 uses
  %factor.op.mul = mul i64 %i.afd, %i.afe
  %i.aff = sext i32 %i.afb to i64
  %factor.op.mul264.i.us = mul i64 %i.afe, %i.aff
  br label %bb.bq

bb.bq:                                            ; preds = %._crit_edge.i.loopexit.us, %.lr.ph268.i.split.us
  %indvars.iv346.i.us = phi i64 [ %i.afa, %.lr.ph268.i.split.us ], [ %indvars.iv.next347.i.us, %._crit_edge.i.loopexit.us ] ; 4 uses
  br i1 %.not1072.i, label %.thread.i.us, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %gep.i.us = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv346.i.us
  %i.afg = load <2 x float>, ptr %gep.i.us, align 4, !tbaa !56
  br label %.thread.i.us

.thread.i.us:                                     ; preds = %bb.br, %bb.bq
  %i.afh = phi <2 x float> [ %i.afg, %bb.br ], [ zeroinitializer, %bb.bq ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.afi = trunc nsw i64 %indvars.iv346.i.us to i32
  %factor.op.mul.reass.i.us = mul i32 %factor.op.mul222.i, %i.afi
  %i.afj = sext i32 %factor.op.mul.reass.i.us to i64
  %i.afk = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.afj
  %i.afl = add nsw i64 %indvars.iv346.i.us, %i.dx
  %.reass = mul i64 %factor.op.mul, %i.afl
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afc, i64 %.reass
  br label %bb.bs

bb.bs:                                            ; preds = %bb.ch, %.thread.i.us
  %indvars.iv341.i.us = phi i64 [ 0, %.thread.i.us ], [ %indvars.iv.next342.i.us, %bb.ch ] ; 3 uses
  %.idx373.i.us = shl nuw nsw i64 %indvars.iv341.i.us, 3
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afk, i64 %.idx373.i.us ; 8 uses
  %i.afo = getelementptr inbounds nuw [4 x i8], ptr %i.afn, i64 %i.aej
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %i.afn, i64 %i.ael
  %i.afq = getelementptr inbounds nuw [4 x i8], ptr %i.afn, i64 %i.aen
  %i.afr = getelementptr inbounds nuw [4 x i8], ptr %i.afn, i64 %i.aep
  %i.afs = getelementptr inbounds nuw [4 x i8], ptr %i.afn, i64 %i.aer
  %i.aft = getelementptr inbounds nuw [4 x i8], ptr %i.afn, i64 %i.aet
  %i.afu = getelementptr inbounds nuw [4 x i8], ptr %i.afn, i64 %i.aev
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bt, %bb.bs
  %indvars.iv333.i.us = phi i64 [ 0, %bb.bs ], [ %indvars.iv.next334.i.us, %bb.bt ] ; 7 uses
  %.01036259.i.us = phi ptr [ %i.afu, %bb.bs ], [ %i.ahu, %bb.bt ] ; 2 uses
  %.01037258.i.us = phi ptr [ %i.aft, %bb.bs ], [ %i.aht, %bb.bt ] ; 2 uses
  %.01038257.i.us = phi ptr [ %i.afs, %bb.bs ], [ %i.ahs, %bb.bt ] ; 2 uses
  %.01039256.i.us = phi ptr [ %i.afr, %bb.bs ], [ %i.ahr, %bb.bt ] ; 2 uses
  %.01040255.i.us = phi ptr [ %i.afq, %bb.bs ], [ %i.ahq, %bb.bt ] ; 2 uses
  %.01041254.i.us = phi ptr [ %i.afp, %bb.bs ], [ %i.ahp, %bb.bt ] ; 2 uses
  %.01042253.i.us = phi ptr [ %i.afo, %bb.bs ], [ %i.aho, %bb.bt ] ; 2 uses
  %.01043252.i.us = phi ptr [ %i.afn, %bb.bs ], [ %i.ahn, %bb.bt ] ; 2 uses
  %i.afv = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv333.i.us
  %i.afw = load <2 x float>, ptr %.01042253.i.us, align 4, !tbaa !56 ; 2 uses
  %i.afx = load <2 x float>, ptr %.01041254.i.us, align 4, !tbaa !56 ; 2 uses
  %i.afy = fadd fast <2 x float> %i.afx, %i.afw   ; 3 uses
  %i.afz = load <2 x float>, ptr %.01040255.i.us, align 4, !tbaa !56 ; 2 uses
  %i.aga = load <2 x float>, ptr %.01039256.i.us, align 4, !tbaa !56 ; 2 uses
  %i.agb = fadd fast <2 x float> %i.aga, %i.afz   ; 3 uses
  %i.agc = load <2 x float>, ptr %.01038257.i.us, align 4, !tbaa !56 ; 2 uses
  %i.agd = load <2 x float>, ptr %.01037258.i.us, align 4, !tbaa !56 ; 2 uses
  %i.age = fadd fast <2 x float> %i.agd, %i.agc   ; 3 uses
  %i.agf = load <2 x float>, ptr %.01043252.i.us, align 4, !tbaa !56
  %i.agg = fmul fast <2 x float> %i.age, splat (float 3.200000e+01)
  %i.agh = fadd fast <2 x float> %i.agb, %i.afy
  %i.agi = fadd fast <2 x float> %i.agh, %i.agg
  %i.agj = fadd fast <2 x float> %i.agi, %i.agf
  store <2 x float> %i.agj, ptr %i.afv, align 8, !tbaa !56
  %i.agk = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv333.i.us
  %i.agl = fsub fast <2 x float> %i.afw, %i.afx   ; 3 uses
  %i.agm = fsub fast <2 x float> %i.afz, %i.aga   ; 3 uses
  %i.agn = fsub fast <2 x float> %i.agc, %i.agd   ; 3 uses
  %i.ago = fmul fast <2 x float> %i.agn, splat (float 1.600000e+01)
  %i.agp = fmul fast <2 x float> %i.agm, splat (float 2.000000e+00)
  %i.agq = fadd fast <2 x float> %i.agl, %i.ago
  %i.agr = fadd fast <2 x float> %i.agq, %i.agp
  store <2 x float> %i.agr, ptr %i.agk, align 8, !tbaa !56
  %i.ags = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv333.i.us
  %i.agt = fmul fast <2 x float> %i.agb, splat (float 4.000000e+00)
  %i.agu = fadd fast <2 x float> %i.afy, %i.agt
  %i.agv = fmul fast <2 x float> %i.age, splat (float 8.000000e+00)
  %i.agw = fadd fast <2 x float> %i.agv, %i.agu
  store <2 x float> %i.agw, ptr %i.ags, align 8, !tbaa !56
  %i.agx = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv333.i.us
  %i.agy = fmul fast <2 x float> %i.agm, splat (float 8.000000e+00)
  %i.agz = fadd fast <2 x float> %i.agl, %i.agy
  %i.aha = fmul fast <2 x float> %i.agn, splat (float 4.000000e+00)
  %i.ahb = fadd fast <2 x float> %i.aha, %i.agz
  store <2 x float> %i.ahb, ptr %i.agx, align 8, !tbaa !56
  %i.ahc = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv333.i.us
  %i.ahd = fmul fast <2 x float> %i.agb, splat (float 1.600000e+01)
  %i.ahe = fadd fast <2 x float> %i.afy, %i.ahd
  %i.ahf = fmul fast <2 x float> %i.age, splat (float 2.000000e+00)
  %i.ahg = fadd fast <2 x float> %i.ahf, %i.ahe
  store <2 x float> %i.ahg, ptr %i.ahc, align 8, !tbaa !56
  %i.ahh = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv333.i.us
  %i.ahi = load <2 x float>, ptr %.01036259.i.us, align 4, !tbaa !56
  %i.ahj = fmul fast <2 x float> %i.agm, splat (float 3.200000e+01)
  %i.ahk = fadd fast <2 x float> %i.agl, %i.ahj
  %i.ahl = fadd fast <2 x float> %i.agn, %i.ahk
  %i.ahm = fadd fast <2 x float> %i.ahl, %i.ahi
  store <2 x float> %i.ahm, ptr %i.ahh, align 8, !tbaa !56
  %i.ahn = getelementptr inbounds nuw [4 x i8], ptr %.01043252.i.us, i64 %i.aex
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %.01042253.i.us, i64 %i.aex
  %i.ahp = getelementptr inbounds nuw [4 x i8], ptr %.01041254.i.us, i64 %i.aex
  %i.ahq = getelementptr inbounds nuw [4 x i8], ptr %.01040255.i.us, i64 %i.aex
  %i.ahr = getelementptr inbounds nuw [4 x i8], ptr %.01039256.i.us, i64 %i.aex
  %i.ahs = getelementptr inbounds nuw [4 x i8], ptr %.01038257.i.us, i64 %i.aex
  %i.aht = getelementptr inbounds nuw [4 x i8], ptr %.01037258.i.us, i64 %i.aex
  %i.ahu = getelementptr inbounds nuw [4 x i8], ptr %.01036259.i.us, i64 %i.aex
  %indvars.iv.next334.i.us = add nuw nsw i64 %indvars.iv333.i.us, 1 ; 2 uses
  %exitcond336.not.i.us = icmp eq i64 %indvars.iv.next334.i.us, 8
  br i1 %exitcond336.not.i.us, label %_ZN4ncnn3MatD2Ev.exit1085.i.us, label %bb.bt, !llvm.loop !1279

_ZN4ncnn3MatD2Ev.exit1085.i.us:                   ; preds = %bb.bt
  %i.ahv = trunc i64 %indvars.iv341.i.us to i32
  %i.ahw = add i32 %.044136, %i.ahv               ; 2 uses
  %i.ahx = sdiv i32 %i.ahw, %i.eu
  %i.ahy = srem i32 %i.ahw, %i.eu
  %i.ahz = mul nsw i32 %i.ahx, 6
  %i.aia = sext i32 %i.ahz to i64                 ; 2 uses
  %.reass265.i.us = mul i64 %factor.op.mul264.i.us, %i.aia
  %i.aib = getelementptr inbounds nuw i8, ptr %i.afm, i64 %.reass265.i.us
  %i.aic = mul nsw i32 %i.ahy, 6                  ; 6 uses
  %i.aid = sext i32 %i.aic to i64
  %i.aie = getelementptr inbounds [4 x i8], ptr %i.aib, i64 %i.aid
  %i.aif = or disjoint i32 %i.aic, 1
  %i.aig = icmp slt i32 %i.aif, %i.en
  %i.aih = add nsw i32 %i.aic, 2
  %i.aii = icmp slt i32 %i.aih, %i.en
  %i.aij = add nsw i32 %i.aic, 3
  %i.aik = icmp slt i32 %i.aij, %i.en
  %i.ail = add nsw i32 %i.aic, 4
  %i.aim = icmp slt i32 %i.ail, %i.en
  %i.ain = add nsw i32 %i.aic, 5
  %i.aio = icmp slt i32 %i.ain, %i.en
  %invariant.op376.i.us = sub nsw i64 %i.aez, %i.aia
  br label %bb.bu

bb.bu:                                            ; preds = %bb.cg, %_ZN4ncnn3MatD2Ev.exit1085.i.us
  %indvars.iv337.i.us = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit1085.i.us ], [ %indvars.iv.next338.i.us, %bb.cg ] ; 3 uses
  %.01023261.i.us = phi ptr [ %i.aie, %_ZN4ncnn3MatD2Ev.exit1085.i.us ], [ %.11024.i.us, %bb.cg ] ; 9 uses
  %.not1073.i.us = icmp slt i64 %indvars.iv337.i.us, %invariant.op376.i.us
  br i1 %.not1073.i.us, label %bb.bv, label %bb.cg

bb.bv:                                            ; preds = %bb.bu
  %i.aip = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %indvars.iv337.i.us ; 9 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aip, i64 8
  %i.air = getelementptr inbounds nuw i8, ptr %i.aip, i64 16
  %i.ais = getelementptr inbounds nuw i8, ptr %i.aip, i64 24
  %i.ait = getelementptr inbounds nuw i8, ptr %i.aip, i64 32
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.aip, i64 40
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aip, i64 48
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aip, i64 56
  %i.aix = load float, ptr %i.aiw, align 8, !tbaa !56
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aip, i64 60
  %i.aiz = load float, ptr %i.aiy, align 4, !tbaa !56
  %i.aja = load <2 x float>, ptr %i.aiq, align 8, !tbaa !56 ; 2 uses
  %i.ajb = load <2 x float>, ptr %i.air, align 16, !tbaa !56 ; 2 uses
end_hunk_12
begin_hunk_13_@_ZN4ncnnL18convolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.ge = load float, ptr %i.fn, align 4, !tbaa !56
  %i.gf = insertelement <8 x float> poison, float %i.ge, i64 0
  %i.gg = shufflevector <8 x float> %i.gf, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fp, <8 x float> nofpclass(nan inf) %i.gg, <8 x float> nofpclass(nan inf) %.4691727)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !56
  %i.gk = insertelement <8 x float> poison, float %i.gj, i64 0
  %i.gl = shufflevector <8 x float> %i.gk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fr, <8 x float> nofpclass(nan inf) %i.gl, <8 x float> nofpclass(nan inf) %.3676728)
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.go = load float, ptr %i.gn, align 4, !tbaa !56
  %i.gp = insertelement <8 x float> poison, float %i.go, i64 0
  %i.gq = shufflevector <8 x float> %i.gp, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ft, <8 x float> nofpclass(nan inf) %i.gq, <8 x float> nofpclass(nan inf) %.3664729)
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fn, i64 12
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !56
  %i.gu = insertelement <8 x float> poison, float %i.gt, i64 0
  %i.gv = shufflevector <8 x float> %i.gu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fv, <8 x float> nofpclass(nan inf) %i.gv, <8 x float> nofpclass(nan inf) %.3652730)
  %i.gx = load float, ptr %i.fo, align 4, !tbaa !56
  %i.gy = insertelement <8 x float> poison, float %i.gx, i64 0
  %i.gz = shufflevector <8 x float> %i.gy, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ha = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fx, <8 x float> nofpclass(nan inf) %i.gz, <8 x float> nofpclass(nan inf) %i.gh) ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !56
  %i.hd = insertelement <8 x float> poison, float %i.hc, i64 0
  %i.he = shufflevector <8 x float> %i.hd, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fz, <8 x float> nofpclass(nan inf) %i.he, <8 x float> nofpclass(nan inf) %i.gm) ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !56
  %i.hi = insertelement <8 x float> poison, float %i.hh, i64 0
  %i.hj = shufflevector <8 x float> %i.hi, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gb, <8 x float> nofpclass(nan inf) %i.hj, <8 x float> nofpclass(nan inf) %i.gr) ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.fo, i64 12
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !56
  %i.hn = insertelement <8 x float> poison, float %i.hm, i64 0
  %i.ho = shufflevector <8 x float> %i.hn, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gd, <8 x float> nofpclass(nan inf) %i.ho, <8 x float> nofpclass(nan inf) %i.gw) ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.3225731, i64 256
  %indvars.iv.next897 = add nuw nsw i64 %indvars.iv896, 1 ; 2 uses
  %exitcond902.not = icmp eq i64 %indvars.iv.next897, %wide.trip.count901
  br i1 %exitcond902.not, label %.loopexit710.loopexit, label %bb.g, !llvm.loop !1640

.loopexit710.loopexit:                            ; preds = %bb.g
  %scevgep898 = getelementptr i8, ptr %.0222755, i64 256
  %i.hr = add nsw i32 %i.fh, -1
  %i.hs = zext nneg i32 %i.hr to i64
  %i.ht = shl nuw nsw i64 %i.hs, 8
  %scevgep899 = getelementptr i8, ptr %scevgep898, i64 %i.ht
  br label %.loopexit709

.loopexit710:                                     ; preds = %.loopexit712
  br i1 %i.ar, label %.preheader708, label %.loopexit709

.preheader708:                                    ; preds = %.loopexit710
  %i.hu = load i32, ptr %10, align 4, !tbaa !81   ; 3 uses
  %i.hv = icmp sgt i32 %i.hu, 0
  br i1 %i.hv, label %.lr.ph745, label %.loopexit709

.lr.ph745:                                        ; preds = %.preheader708
  %i.hw = load ptr, ptr %11, align 8, !tbaa !109
  %i.hx = load i64, ptr %12, align 8, !tbaa !108  ; 7 uses
  %i.hy = getelementptr [4 x i8], ptr %gep764, i64 %i.hx
  %.idx243 = shl i64 %i.hx, 3
  %i.hz = getelementptr i8, ptr %gep764, i64 %.idx243
  %.idx244 = mul i64 %i.hx, 12
  %i.ia = getelementptr i8, ptr %gep764, i64 %.idx244
  %.idx245 = shl i64 %i.hx, 4
  %i.ib = getelementptr i8, ptr %gep764, i64 %.idx245
  %.idx246 = mul i64 %i.hx, 20
  %i.ic = getelementptr i8, ptr %gep764, i64 %.idx246
  %.idx247 = mul i64 %i.hx, 24
  %i.id = getelementptr i8, ptr %gep764, i64 %.idx247
  %.idx248 = mul i64 %i.hx, 28
  %i.ie = getelementptr i8, ptr %gep764, i64 %.idx248
  %wide.trip.count908 = zext nneg i32 %i.hu to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph745, %bb.h
  %indvars.iv903 = phi i64 [ 0, %.lr.ph745 ], [ %indvars.iv.next904, %bb.h ] ; 2 uses
  %.5743 = phi ptr [ %.0222755, %.lr.ph745 ], [ %i.kl, %bb.h ] ; 9 uses
  %.5654742 = phi <8 x float> [ %.0649754, %.lr.ph745 ], [ %i.kk, %bb.h ]
  %.5666741 = phi <8 x float> [ %.0661753, %.lr.ph745 ], [ %i.kf, %bb.h ]
  %.5678740 = phi <8 x float> [ %.0673752, %.lr.ph745 ], [ %i.ka, %bb.h ]
  %.6693739 = phi <8 x float> [ %.1688751, %.lr.ph745 ], [ %i.jv, %bb.h ]
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %indvars.iv903
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !81
  %i.ih = load <8 x float>, ptr %.5743, align 32, !tbaa !114
  %i.ii = getelementptr inbounds nuw i8, ptr %.5743, i64 32
  %i.ij = load <8 x float>, ptr %i.ii, align 32, !tbaa !114
  %i.ik = getelementptr inbounds nuw i8, ptr %.5743, i64 64
  %i.il = load <8 x float>, ptr %i.ik, align 32, !tbaa !114
  %i.im = getelementptr inbounds nuw i8, ptr %.5743, i64 96
  %i.in = load <8 x float>, ptr %i.im, align 32, !tbaa !114
  %i.io = getelementptr inbounds nuw i8, ptr %.5743, i64 128
  %i.ip = load <8 x float>, ptr %i.io, align 32, !tbaa !114
  %i.iq = getelementptr inbounds nuw i8, ptr %.5743, i64 160
  %i.ir = load <8 x float>, ptr %i.iq, align 32, !tbaa !114
  %i.is = getelementptr inbounds nuw i8, ptr %.5743, i64 192
  %i.it = load <8 x float>, ptr %i.is, align 32, !tbaa !114
  %i.iu = getelementptr inbounds nuw i8, ptr %.5743, i64 224
  %i.iv = load <8 x float>, ptr %i.iu, align 32, !tbaa !114
  %i.iw = sext i32 %i.ig to i64                   ; 8 uses
  %i.ix = getelementptr inbounds [4 x i8], ptr %gep764, i64 %i.iw
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !56
  %i.iz = insertelement <8 x float> poison, float %i.iy, i64 0
  %i.ja = shufflevector <8 x float> %i.iz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ih, <8 x float> nofpclass(nan inf) %i.ja, <8 x float> nofpclass(nan inf) %.6693739)
  %i.jc = getelementptr [4 x i8], ptr %i.hy, i64 %i.iw
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !56
  %i.je = insertelement <8 x float> poison, float %i.jd, i64 0
  %i.jf = shufflevector <8 x float> %i.je, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ij, <8 x float> nofpclass(nan inf) %i.jf, <8 x float> nofpclass(nan inf) %.5678740)
  %i.jh = getelementptr [4 x i8], ptr %i.hz, i64 %i.iw
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !56
  %i.jj = insertelement <8 x float> poison, float %i.ji, i64 0
  %i.jk = shufflevector <8 x float> %i.jj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.il, <8 x float> nofpclass(nan inf) %i.jk, <8 x float> nofpclass(nan inf) %.5666741)
  %i.jm = getelementptr [4 x i8], ptr %i.ia, i64 %i.iw
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !56
  %i.jo = insertelement <8 x float> poison, float %i.jn, i64 0
  %i.jp = shufflevector <8 x float> %i.jo, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.in, <8 x float> nofpclass(nan inf) %i.jp, <8 x float> nofpclass(nan inf) %.5654742)
  %i.jr = getelementptr [4 x i8], ptr %i.ib, i64 %i.iw
  %i.js = load float, ptr %i.jr, align 4, !tbaa !56
  %i.jt = insertelement <8 x float> poison, float %i.js, i64 0
  %i.ju = shufflevector <8 x float> %i.jt, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ip, <8 x float> nofpclass(nan inf) %i.ju, <8 x float> nofpclass(nan inf) %i.jb) ; 2 uses
  %i.jw = getelementptr [4 x i8], ptr %i.ic, i64 %i.iw
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !56
  %i.jy = insertelement <8 x float> poison, float %i.jx, i64 0
  %i.jz = shufflevector <8 x float> %i.jy, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ka = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ir, <8 x float> nofpclass(nan inf) %i.jz, <8 x float> nofpclass(nan inf) %i.jg) ; 2 uses
  %i.kb = getelementptr [4 x i8], ptr %i.id, i64 %i.iw
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !56
  %i.kd = insertelement <8 x float> poison, float %i.kc, i64 0
  %i.ke = shufflevector <8 x float> %i.kd, <8 x float> poison, <8 x i32> zeroinitializer
  %i.kf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.it, <8 x float> nofpclass(nan inf) %i.ke, <8 x float> nofpclass(nan inf) %i.jl) ; 2 uses
  %i.kg = getelementptr [4 x i8], ptr %i.ie, i64 %i.iw
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !56
  %i.ki = insertelement <8 x float> poison, float %i.kh, i64 0
  %i.kj = shufflevector <8 x float> %i.ki, <8 x float> poison, <8 x i32> zeroinitializer
  %i.kk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.iv, <8 x float> nofpclass(nan inf) %i.kj, <8 x float> nofpclass(nan inf) %i.jq) ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.5743, i64 256
  %indvars.iv.next904 = add nuw nsw i64 %indvars.iv903, 1 ; 2 uses
  %exitcond909.not = icmp eq i64 %indvars.iv.next904, %wide.trip.count908
  br i1 %exitcond909.not, label %.loopexit709.loopexit, label %bb.h, !llvm.loop !1641

.loopexit709.loopexit:                            ; preds = %bb.h
  %scevgep905 = getelementptr i8, ptr %.0222755, i64 256
  %i.km = add nsw i32 %i.hu, -1
  %i.kn = zext nneg i32 %i.km to i64
  %i.ko = shl nuw nsw i64 %i.kn, 8
  %scevgep906 = getelementptr i8, ptr %scevgep905, i64 %i.ko
  br label %.loopexit709

.loopexit709:                                     ; preds = %.preheader711, %.loopexit712.loopexit, %bb.f, %.loopexit710.loopexit, %.loopexit709.loopexit, %.preheader708, %.loopexit710
  %.7694 = phi nsz <8 x float> [ %.1688751, %.loopexit710 ], [ %.1688751, %.preheader708 ], [ %i.jv, %.loopexit709.loopexit ], [ %.1688751, %bb.f ], [ %i.ha, %.loopexit710.loopexit ], [ %i.el, %.loopexit712.loopexit ], [ %.1688751, %.preheader711 ] ; 2 uses
  %.6679 = phi nsz <8 x float> [ %.0673752, %.loopexit710 ], [ %.0673752, %.preheader708 ], [ %i.ka, %.loopexit709.loopexit ], [ %.0673752, %bb.f ], [ %i.hf, %.loopexit710.loopexit ], [ %i.eq, %.loopexit712.loopexit ], [ %.0673752, %.preheader711 ] ; 2 uses
  %.6667 = phi nsz <8 x float> [ %.0661753, %.loopexit710 ], [ %.0661753, %.preheader708 ], [ %i.kf, %.loopexit709.loopexit ], [ %.0661753, %bb.f ], [ %i.hk, %.loopexit710.loopexit ], [ %i.ev, %.loopexit712.loopexit ], [ %.0661753, %.preheader711 ] ; 2 uses
  %.6655 = phi nsz <8 x float> [ %.0649754, %.loopexit710 ], [ %.0649754, %.preheader708 ], [ %i.kk, %.loopexit709.loopexit ], [ %.0649754, %bb.f ], [ %i.hp, %.loopexit710.loopexit ], [ %i.fa, %.loopexit712.loopexit ], [ %.0649754, %.preheader711 ] ; 2 uses
  %.6 = phi ptr [ %.0222755, %.loopexit710 ], [ %.0222755, %.preheader708 ], [ %scevgep906, %.loopexit709.loopexit ], [ %.0222755, %bb.f ], [ %scevgep899, %.loopexit710.loopexit ], [ %scevgep894, %.loopexit712.loopexit ], [ %.0222755, %.preheader711 ] ; 2 uses
  %i.kp = add nuw nsw i32 %.0221756, 8            ; 2 uses
  %i.kq = or disjoint i32 %i.kp, 7
  %i.kr = icmp slt i32 %i.kq, %i.ad
  br i1 %i.kr, label %.noexc253, label %.preheader715, !llvm.loop !1642

.preheader714:                                    ; preds = %.loopexit, %.preheader715
  %.8695.lcssa = phi <8 x float> [ %.1688.lcssa, %.preheader715 ], [ %.12699, %.loopexit ] ; 3 uses
  %.7680.lcssa = phi <8 x float> [ %.0673.lcssa, %.preheader715 ], [ %.11684, %.loopexit ] ; 3 uses
  %.7668.lcssa = phi <8 x float> [ %.0661.lcssa, %.preheader715 ], [ %.11672, %.loopexit ]
  %.7656.lcssa = phi <8 x float> [ %.0649.lcssa, %.preheader715 ], [ %.11660, %.loopexit ]
  %.7.lcssa = phi ptr [ %.0222.lcssa, %.preheader715 ], [ %.11, %.loopexit ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0221.lcssa, %.preheader715 ], [ %i.qz, %.loopexit ] ; 5 uses
  %i.ks = or disjoint i32 %.1.lcssa, 1
  %i.kt = icmp slt i32 %i.ks, %i.ad
  br i1 %i.kt, label %.noexc249.lr.ph, label %.preheader713

.noexc249.lr.ph:                                  ; preds = %.preheader714
  %i.ku = load i32, ptr %i.u, align 4, !tbaa !89, !noalias !1659
  %i.kv = load ptr, ptr %4, align 8, !tbaa !37, !noalias !1659
  %i.kw = load i64, ptr %i.v, align 8, !tbaa !38, !noalias !1659
  %i.kx = load i64, ptr %i.w, align 8, !tbaa !79, !noalias !1659 ; 2 uses
  %factor.op.mul822 = mul i64 %i.kw, %i.kx
  %i.ky = sext i32 %i.ku to i64
  %i.kz = load i32, ptr %8, align 4, !tbaa !81
  %i.la = mul nsw i32 %i.kz, %.0227853
  %i.lb = sext i32 %i.la to i64
  %i.lc = mul i64 %i.kx, %i.ky
  %i.ld = mul i64 %i.lc, %i.lb
  %invariant.gep824 = getelementptr i8, ptr %i.kv, i64 %i.ld
  %i.le = load i32, ptr %9, align 4, !tbaa !81
  %i.lf = mul nsw i32 %i.le, %.0226849
  %i.lg = sext i32 %i.lf to i64
  %invariant.gep825 = getelementptr [4 x i8], ptr %invariant.gep824, i64 %i.lg
  %i.lh = load i32, ptr %10, align 4, !tbaa !81   ; 5 uses
  %i.li = icmp sgt i32 %i.lh, 0
  br i1 %i.li, label %.noexc249.lr.ph.split.us, label %.noexc249.preheader

.noexc249.preheader:                              ; preds = %.noexc249.lr.ph
  %i.lj = add nsw i32 %.1.lcssa, 2
  %i.lk = sub i32 %i.bb, %.1.lcssa
  %i.ll = and i32 %i.lk, -2
  %i.lm = add i32 %i.lj, %i.ll
  br label %.preheader713

.noexc249.lr.ph.split.us:                         ; preds = %.noexc249.lr.ph
  %i.ln = load ptr, ptr %11, align 8, !tbaa !109  ; 3 uses
  %i.lo = load i64, ptr %12, align 8, !tbaa !108
  %i.lp = add nsw i32 %i.lh, -1
  %i.lq = zext nneg i32 %i.lp to i64
  %i.lr = shl nuw nsw i64 %i.lq, 6
  %i.ls = zext i32 %.1.lcssa to i64
  %wide.trip.count929 = zext nneg i32 %i.lh to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count929, 1
  %i.lt = icmp eq i32 %i.lh, 1
  %unroll_iter = and i64 %wide.trip.count929, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1049 = trunc i32 %i.lh to i1
  br label %.noexc249.us

.noexc249.us:                                     ; preds = %._crit_edge.us, %.noexc249.lr.ph.split.us
  %indvars.iv931 = phi i64 [ %indvars.iv.next932, %._crit_edge.us ], [ %i.ls, %.noexc249.lr.ph.split.us ] ; 2 uses
  %.12816.us = phi ptr [ %scevgep927, %._crit_edge.us ], [ %.7.lcssa, %.noexc249.lr.ph.split.us ] ; 3 uses
  %.12685815.us = phi <8 x float> [ %.lcssa1044, %._crit_edge.us ], [ %.7680.lcssa, %.noexc249.lr.ph.split.us ] ; 2 uses
  %.13700814.us = phi <8 x float> [ %.lcssa1045, %._crit_edge.us ], [ %.8695.lcssa, %.noexc249.lr.ph.split.us ] ; 2 uses
  %.reass823.us = mul i64 %factor.op.mul822, %indvars.iv931
  %gep826.us = getelementptr i8, ptr %invariant.gep825, i64 %.reass823.us ; 4 uses
  %i.lu = getelementptr [4 x i8], ptr %gep826.us, i64 %i.lo ; 3 uses
  br i1 %i.lt, label %.epil.preheader, label %.noexc249.us.new

.noexc249.us.new:                                 ; preds = %.noexc249.us, %.noexc249.us.new
  %indvars.iv924 = phi i64 [ %indvars.iv.next925.1, %.noexc249.us.new ], [ 0, %.noexc249.us ] ; 3 uses
  %.13808.us = phi ptr [ %i.nd, %.noexc249.us.new ], [ %.12816.us, %.noexc249.us ] ; 5 uses
  %.13686807.us = phi <8 x float> [ %i.nc, %.noexc249.us.new ], [ %.12685815.us, %.noexc249.us ]
  %.14701806.us = phi <8 x float> [ %i.mx, %.noexc249.us.new ], [ %.13700814.us, %.noexc249.us ]
  %niter = phi i64 [ %niter.next.1, %.noexc249.us.new ], [ 0, %.noexc249.us ]
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %indvars.iv924
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !81
  %i.lx = load <8 x float>, ptr %.13808.us, align 32, !tbaa !114
  %i.ly = getelementptr inbounds nuw i8, ptr %.13808.us, i64 32
  %i.lz = load <8 x float>, ptr %i.ly, align 32, !tbaa !114
  %i.ma = sext i32 %i.lw to i64                   ; 2 uses
  %i.mb = getelementptr inbounds [4 x i8], ptr %gep826.us, i64 %i.ma
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !56
  %i.md = insertelement <8 x float> poison, float %i.mc, i64 0
  %i.me = shufflevector <8 x float> %i.md, <8 x float> poison, <8 x i32> zeroinitializer
  %i.mf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lx, <8 x float> nofpclass(nan inf) %i.me, <8 x float> nofpclass(nan inf) %.14701806.us)
  %i.mg = getelementptr [4 x i8], ptr %i.lu, i64 %i.ma
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !56
  %i.mi = insertelement <8 x float> poison, float %i.mh, i64 0
  %i.mj = shufflevector <8 x float> %i.mi, <8 x float> poison, <8 x i32> zeroinitializer
  %i.mk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lz, <8 x float> nofpclass(nan inf) %i.mj, <8 x float> nofpclass(nan inf) %.13686807.us)
  %i.ml = getelementptr inbounds nuw i8, ptr %.13808.us, i64 64
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %indvars.iv924
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 4
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !81
  %i.mp = load <8 x float>, ptr %i.ml, align 32, !tbaa !114
  %i.mq = getelementptr inbounds nuw i8, ptr %.13808.us, i64 96
  %i.mr = load <8 x float>, ptr %i.mq, align 32, !tbaa !114
  %i.ms = sext i32 %i.mo to i64                   ; 2 uses
  %i.mt = getelementptr inbounds [4 x i8], ptr %gep826.us, i64 %i.ms
  %i.mu = load float, ptr %i.mt, align 4, !tbaa !56
  %i.mv = insertelement <8 x float> poison, float %i.mu, i64 0
  %i.mw = shufflevector <8 x float> %i.mv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.mx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mp, <8 x float> nofpclass(nan inf) %i.mw, <8 x float> nofpclass(nan inf) %i.mf) ; 3 uses
  %i.my = getelementptr [4 x i8], ptr %i.lu, i64 %i.ms
  %i.mz = load float, ptr %i.my, align 4, !tbaa !56
  %i.na = insertelement <8 x float> poison, float %i.mz, i64 0
  %i.nb = shufflevector <8 x float> %i.na, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mr, <8 x float> nofpclass(nan inf) %i.nb, <8 x float> nofpclass(nan inf) %i.mk) ; 3 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %.13808.us, i64 128 ; 2 uses
  %indvars.iv.next925.1 = add nuw nsw i64 %indvars.iv924, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.noexc249.us.new, !llvm.loop !1645

._crit_edge.us.unr-lcssa:                         ; preds = %.noexc249.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.noexc249.us
  %indvars.iv924.epil.init = phi i64 [ 0, %.noexc249.us ], [ %indvars.iv.next925.1, %._crit_edge.us.unr-lcssa ]
  %.13808.us.epil.init = phi ptr [ %.12816.us, %.noexc249.us ], [ %i.nd, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.13686807.us.epil.init = phi <8 x float> [ %.12685815.us, %.noexc249.us ], [ %i.nc, %._crit_edge.us.unr-lcssa ]
  %.14701806.us.epil.init = phi <8 x float> [ %.13700814.us, %.noexc249.us ], [ %i.mx, %._crit_edge.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1049)
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %indvars.iv924.epil.init
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !81
  %i.ng = load <8 x float>, ptr %.13808.us.epil.init, align 32, !tbaa !114
  %i.nh = getelementptr inbounds nuw i8, ptr %.13808.us.epil.init, i64 32
  %i.ni = load <8 x float>, ptr %i.nh, align 32, !tbaa !114
  %i.nj = sext i32 %i.nf to i64                   ; 2 uses
  %i.nk = getelementptr inbounds [4 x i8], ptr %gep826.us, i64 %i.nj
  %i.nl = load float, ptr %i.nk, align 4, !tbaa !56
  %i.nm = insertelement <8 x float> poison, float %i.nl, i64 0
  %i.nn = shufflevector <8 x float> %i.nm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.no = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ng, <8 x float> nofpclass(nan inf) %i.nn, <8 x float> nofpclass(nan inf) %.14701806.us.epil.init)
  %i.np = getelementptr [4 x i8], ptr %i.lu, i64 %i.nj
  %i.nq = load float, ptr %i.np, align 4, !tbaa !56
  %i.nr = insertelement <8 x float> poison, float %i.nq, i64 0
  %i.ns = shufflevector <8 x float> %i.nr, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ni, <8 x float> nofpclass(nan inf) %i.ns, <8 x float> nofpclass(nan inf) %.13686807.us.epil.init)
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %.lcssa1045 = phi <8 x float> [ %i.mx, %._crit_edge.us.unr-lcssa ], [ %i.no, %.epil.preheader ] ; 2 uses
  %.lcssa1044 = phi <8 x float> [ %i.nc, %._crit_edge.us.unr-lcssa ], [ %i.nt, %.epil.preheader ] ; 2 uses
  %scevgep926 = getelementptr i8, ptr %.12816.us, i64 64
  %scevgep927 = getelementptr i8, ptr %scevgep926, i64 %i.lr ; 2 uses
  %indvars.iv.next932 = add nuw nsw i64 %indvars.iv931, 2 ; 3 uses
  %i.nu = trunc i64 %indvars.iv.next932 to i32
  %i.nv = or i32 %i.nu, 1
  %i.nw = icmp slt i32 %i.nv, %i.ad
  br i1 %i.nw, label %.noexc249.us, label %.preheader713.loopexit, !llvm.loop !1646

.noexc251:                                        ; preds = %.noexc251.lr.ph, %.loopexit
  %.1794 = phi i32 [ %.0221.lcssa, %.noexc251.lr.ph ], [ %i.qz, %.loopexit ] ; 2 uses
  %.7793 = phi ptr [ %.0222.lcssa, %.noexc251.lr.ph ], [ %.11, %.loopexit ] ; 7 uses
  %.7656792 = phi <8 x float> [ %.0649.lcssa, %.noexc251.lr.ph ], [ %.11660, %.loopexit ] ; 5 uses
  %.7668791 = phi <8 x float> [ %.0661.lcssa, %.noexc251.lr.ph ], [ %.11672, %.loopexit ] ; 5 uses
  %.7680790 = phi <8 x float> [ %.0673.lcssa, %.noexc251.lr.ph ], [ %.11684, %.loopexit ] ; 5 uses
  %.8695789 = phi <8 x float> [ %.1688.lcssa, %.noexc251.lr.ph ], [ %.12699, %.loopexit ] ; 5 uses
  %i.nx = sdiv i32 %.1794, %i.ab
  %i.ny = sext i32 %i.nx to i64
  %.reass802 = mul i64 %factor.op.mul801, %i.ny
  %gep805 = getelementptr i8, ptr %invariant.gep804, i64 %.reass802 ; 5 uses
  br i1 %i.aq, label %.preheader706, label %.loopexit707

.preheader706:                                    ; preds = %.noexc251
  %i.nz = load i32, ptr %10, align 4, !tbaa !81   ; 3 uses
  %i.oa = icmp sgt i32 %i.nz, 0
  br i1 %i.oa, label %.lr.ph771, label %.loopexit

.lr.ph771:                                        ; preds = %.preheader706
  %i.ob = load ptr, ptr %11, align 8, !tbaa !109
  %wide.trip.count915 = zext nneg i32 %i.nz to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph771, %bb.i
  %indvars.iv910 = phi i64 [ 0, %.lr.ph771 ], [ %indvars.iv.next911, %bb.i ] ; 2 uses
  %.8769 = phi ptr [ %.7793, %.lr.ph771 ], [ %i.pg, %bb.i ] ; 5 uses
  %.8657768 = phi <8 x float> [ %.7656792, %.lr.ph771 ], [ %i.pf, %bb.i ]
  %.8669767 = phi <8 x float> [ %.7668791, %.lr.ph771 ], [ %i.pa, %bb.i ]
  %.8681766 = phi <8 x float> [ %.7680790, %.lr.ph771 ], [ %i.ov, %bb.i ]
  %.9696765 = phi <8 x float> [ %.8695789, %.lr.ph771 ], [ %i.oq, %bb.i ]
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %indvars.iv910
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !81
  %i.oe = sext i32 %i.od to i64
  %i.of = getelementptr inbounds [4 x i8], ptr %gep805, i64 %i.oe ; 4 uses
  %i.og = load <8 x float>, ptr %.8769, align 32, !tbaa !114
  %i.oh = getelementptr inbounds nuw i8, ptr %.8769, i64 32
  %i.oi = load <8 x float>, ptr %i.oh, align 32, !tbaa !114
  %i.oj = getelementptr inbounds nuw i8, ptr %.8769, i64 64
  %i.ok = load <8 x float>, ptr %i.oj, align 32, !tbaa !114
  %i.ol = getelementptr inbounds nuw i8, ptr %.8769, i64 96
  %i.om = load <8 x float>, ptr %i.ol, align 32, !tbaa !114
  %i.on = load float, ptr %i.of, align 4, !tbaa !56
  %i.oo = insertelement <8 x float> poison, float %i.on, i64 0
  %i.op = shufflevector <8 x float> %i.oo, <8 x float> poison, <8 x i32> zeroinitializer
  %i.oq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.og, <8 x float> nofpclass(nan inf) %i.op, <8 x float> nofpclass(nan inf) %.9696765) ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.of, i64 4
  %i.os = load float, ptr %i.or, align 4, !tbaa !56
  %i.ot = insertelement <8 x float> poison, float %i.os, i64 0
  %i.ou = shufflevector <8 x float> %i.ot, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ov = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oi, <8 x float> nofpclass(nan inf) %i.ou, <8 x float> nofpclass(nan inf) %.8681766) ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  %i.ox = load float, ptr %i.ow, align 4, !tbaa !56
  %i.oy = insertelement <8 x float> poison, float %i.ox, i64 0
  %i.oz = shufflevector <8 x float> %i.oy, <8 x float> poison, <8 x i32> zeroinitializer
  %i.pa = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ok, <8 x float> nofpclass(nan inf) %i.oz, <8 x float> nofpclass(nan inf) %.8669767) ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.of, i64 12
  %i.pc = load float, ptr %i.pb, align 4, !tbaa !56
  %i.pd = insertelement <8 x float> poison, float %i.pc, i64 0
  %i.pe = shufflevector <8 x float> %i.pd, <8 x float> poison, <8 x i32> zeroinitializer
  %i.pf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.om, <8 x float> nofpclass(nan inf) %i.pe, <8 x float> nofpclass(nan inf) %.8657768) ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %.8769, i64 128
  %indvars.iv.next911 = add nuw nsw i64 %indvars.iv910, 1 ; 2 uses
  %exitcond916.not = icmp eq i64 %indvars.iv.next911, %wide.trip.count915
  br i1 %exitcond916.not, label %.loopexit707.loopexit, label %bb.i, !llvm.loop !1647

.loopexit707.loopexit:                            ; preds = %bb.i
  %scevgep912 = getelementptr i8, ptr %.7793, i64 128
  %i.ph = add nsw i32 %i.nz, -1
  %i.pi = zext nneg i32 %i.ph to i64
  %i.pj = shl nuw nsw i64 %i.pi, 7
  %scevgep913 = getelementptr i8, ptr %scevgep912, i64 %i.pj
  br label %.loopexit

.loopexit707:                                     ; preds = %.noexc251
  br i1 %i.ar, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.loopexit707
  %i.pk = load i32, ptr %10, align 4, !tbaa !81   ; 3 uses
  %i.pl = icmp sgt i32 %i.pk, 0
  br i1 %i.pl, label %.lr.ph783, label %.loopexit

.lr.ph783:                                        ; preds = %.preheader
  %i.pm = load ptr, ptr %11, align 8, !tbaa !109
  %i.pn = load i64, ptr %12, align 8, !tbaa !108  ; 3 uses
  %i.po = getelementptr [4 x i8], ptr %gep805, i64 %i.pn
  %.idx241 = shl i64 %i.pn, 3
end_hunk_13
begin_hunk_14_@_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.12:bb.a
  %i.mp = icmp slt i32 %i.mo, %i.en               ; 2 uses
  %i.mq = or disjoint i32 %i.mk, 2
  %i.mr = icmp slt i32 %i.mq, %i.en               ; 2 uses
  %i.ms = or disjoint i32 %i.mk, 3
  %i.mt = icmp slt i32 %i.ms, %i.en               ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.t, %.preheader776.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.t ], [ 0, %.preheader776.us.i ] ; 3 uses
  %.0682794.us.i = phi ptr [ %.1683.us.i, %bb.t ], [ %i.mn, %.preheader776.us.i ] ; 13 uses
  %i.mu = trunc i64 %indvars.iv.i to i32
  %i.mv = or i32 %i.mf, %i.mu
  %.not704.us.i = icmp slt i32 %i.mv, %i.eo
  br i1 %.not704.us.i, label %bb.f, label %bb.t

bb.f:                                             ; preds = %bb.e
  %i.mw = getelementptr inbounds nuw [96 x i8], ptr %i.a, i64 %indvars.iv.i ; 6 uses
  %i.mx = load <4 x i32>, ptr %i.mw, align 16, !tbaa !114
  %i.my = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  %i.mz = load <4 x i32>, ptr %i.my, align 16, !tbaa !114 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mw, i64 32
  %i.nb = load <4 x i32>, ptr %i.na, align 16, !tbaa !114 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mw, i64 48
  %i.nd = load <4 x i32>, ptr %i.nc, align 16, !tbaa !114 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mw, i64 64
  %i.nf = load <4 x i32>, ptr %i.ne, align 16, !tbaa !114 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mw, i64 80
  %i.nh = load <4 x i32>, ptr %i.ng, align 16, !tbaa !114
  %i.ni = add <4 x i32> %i.nb, %i.mz              ; 2 uses
  %i.nj = add <4 x i32> %i.nf, %i.nd              ; 2 uses
  %i.nk = sub <4 x i32> %i.mz, %i.nb              ; 2 uses
  %i.nl = sub <4 x i32> %i.nd, %i.nf              ; 2 uses
  %i.nm = add <4 x i32> %i.ni, %i.mx
  %i.nn = add <4 x i32> %i.nm, %i.nj
  %i.no = shl <4 x i32> %i.nl, splat (i32 1)
  %i.np = add <4 x i32> %i.no, %i.nk
  %i.nq = shl <4 x i32> %i.nj, splat (i32 2)
  %i.nr = add <4 x i32> %i.nq, %i.ni
  %i.ns = shl <4 x i32> %i.nl, splat (i32 3)
  %i.nt = add <4 x i32> %i.nh, %i.nk
  %i.nu = add <4 x i32> %i.nt, %i.ns
  %i.nv = sitofp fast <4 x i32> %i.nn to <4 x float>
  %i.nw = fmul fast <4 x float> %i.nv, splat (float f0x3AE38E39)
  %i.nx = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nw) ; 5 uses
  %i.ny = sitofp fast <4 x i32> %i.np to <4 x float>
  %i.nz = fmul fast <4 x float> %i.ny, splat (float f0x3AE38E39)
  %i.oa = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nz) ; 5 uses
  %i.ob = sitofp fast <4 x i32> %i.nr to <4 x float>
  %i.oc = fmul fast <4 x float> %i.ob, splat (float f0x3AE38E39)
  %i.od = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.oc) ; 5 uses
  %i.oe = sitofp fast <4 x i32> %i.nu to <4 x float>
  %i.of = fmul fast <4 x float> %i.oe, splat (float f0x3AE38E39)
  %i.og = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.of) ; 5 uses
  switch i32 %i.ep, label %bb.s [
    i32 4, label %bb.m
    i32 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %.0682794.us.i, i64 %i.es ; 4 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %.0682794.us.i, i64 %.idx.i ; 4 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.0682794.us.i, i64 %.idx705.i ; 4 uses
  %.sroa.0748.0.vec.extract.us.i = extractelement <4 x i32> %i.nx, i64 0
  store i32 %.sroa.0748.0.vec.extract.us.i, ptr %.0682794.us.i, align 4, !tbaa !81
  %.sroa.0748.4.vec.extract.us.i = extractelement <4 x i32> %i.nx, i64 1
  store i32 %.sroa.0748.4.vec.extract.us.i, ptr %i.oh, align 4, !tbaa !81
  %.sroa.0748.8.vec.extract.us.i = extractelement <4 x i32> %i.nx, i64 2
  store i32 %.sroa.0748.8.vec.extract.us.i, ptr %i.oi, align 4, !tbaa !81
  %.sroa.0748.12.vec.extract.us.i = extractelement <4 x i32> %i.nx, i64 3
  store i32 %.sroa.0748.12.vec.extract.us.i, ptr %i.oj, align 4, !tbaa !81
  br i1 %i.mp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.7750.16.vec.extract.us.i = extractelement <4 x i32> %i.oa, i64 0
  %i.ok = getelementptr inbounds nuw i8, ptr %.0682794.us.i, i64 4
  store i32 %.sroa.7750.16.vec.extract.us.i, ptr %i.ok, align 4, !tbaa !81
  %.sroa.7750.20.vec.extract.us.i = extractelement <4 x i32> %i.oa, i64 1
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oh, i64 4
  store i32 %.sroa.7750.20.vec.extract.us.i, ptr %i.ol, align 4, !tbaa !81
  %.sroa.7750.24.vec.extract.us.i = extractelement <4 x i32> %i.oa, i64 2
  %i.om = getelementptr inbounds nuw i8, ptr %i.oi, i64 4
  store i32 %.sroa.7750.24.vec.extract.us.i, ptr %i.om, align 4, !tbaa !81
  %.sroa.7750.28.vec.extract.us.i = extractelement <4 x i32> %i.oa, i64 3
  %i.on = getelementptr inbounds nuw i8, ptr %i.oj, i64 4
  store i32 %.sroa.7750.28.vec.extract.us.i, ptr %i.on, align 4, !tbaa !81
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br i1 %i.mr, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.sroa.12.32.vec.extract.us.i = extractelement <4 x i32> %i.od, i64 0
  %i.oo = getelementptr inbounds nuw i8, ptr %.0682794.us.i, i64 8
  store i32 %.sroa.12.32.vec.extract.us.i, ptr %i.oo, align 4, !tbaa !81
  %.sroa.12.36.vec.extract.us.i = extractelement <4 x i32> %i.od, i64 1
  %i.op = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  store i32 %.sroa.12.36.vec.extract.us.i, ptr %i.op, align 4, !tbaa !81
  %.sroa.12.40.vec.extract.us.i = extractelement <4 x i32> %i.od, i64 2
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  store i32 %.sroa.12.40.vec.extract.us.i, ptr %i.oq, align 4, !tbaa !81
  %.sroa.12.44.vec.extract.us.i = extractelement <4 x i32> %i.od, i64 3
  %i.or = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  store i32 %.sroa.12.44.vec.extract.us.i, ptr %i.or, align 4, !tbaa !81
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %i.mt, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %.sroa.17753.48.vec.extract.us.i = extractelement <4 x i32> %i.og, i64 0
  %i.os = getelementptr inbounds nuw i8, ptr %.0682794.us.i, i64 12
  store i32 %.sroa.17753.48.vec.extract.us.i, ptr %i.os, align 4, !tbaa !81
  %.sroa.17753.52.vec.extract.us.i = extractelement <4 x i32> %i.og, i64 1
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oh, i64 12
  store i32 %.sroa.17753.52.vec.extract.us.i, ptr %i.ot, align 4, !tbaa !81
  %.sroa.17753.56.vec.extract.us.i = extractelement <4 x i32> %i.og, i64 2
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oi, i64 12
  store i32 %.sroa.17753.56.vec.extract.us.i, ptr %i.ou, align 4, !tbaa !81
  %.sroa.17753.60.vec.extract.us.i = extractelement <4 x i32> %i.og, i64 3
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oj, i64 12
  store i32 %.sroa.17753.60.vec.extract.us.i, ptr %i.ov, align 4, !tbaa !81
  br label %bb.s

bb.m:                                             ; preds = %bb.f
  store <4 x i32> %i.nx, ptr %.0682794.us.i, align 16, !tbaa !114
  br i1 %i.mp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ow = getelementptr inbounds nuw i8, ptr %.0682794.us.i, i64 16
  store <4 x i32> %i.oa, ptr %i.ow, align 16, !tbaa !114
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  br i1 %i.mr, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ox = getelementptr inbounds nuw i8, ptr %.0682794.us.i, i64 32
  store <4 x i32> %i.od, ptr %i.ox, align 16, !tbaa !114
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %i.mt, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.oy = getelementptr inbounds nuw i8, ptr %.0682794.us.i, i64 48
  store <4 x i32> %i.og, ptr %i.oy, align 16, !tbaa !114
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.l, %bb.k, %bb.f
  %i.oz = getelementptr inbounds [4 x i8], ptr %.0682794.us.i, i64 %i.fj
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.e
  %.1683.us.i = phi ptr [ %.0682794.us.i, %bb.e ], [ %i.oz, %bb.s ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4
  br i1 %exitcond.not.i, label %bb.u, label %bb.e, !llvm.loop !1763

bb.u:                                             ; preds = %bb.t
  %indvars.iv.next996.i = add nuw nsw i64 %indvars.iv995.i, 1 ; 2 uses
  %exitcond998.not.i = icmp eq i64 %indvars.iv.next996.i, %wide.trip.count.i
  br i1 %exitcond998.not.i, label %._crit_edge.us.i, label %.preheader776.us.i, !llvm.loop !1764

._crit_edge.us.i:                                 ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %indvars.iv.next1000.i = add nuw nsw i64 %indvars.iv999.i, 4 ; 3 uses
  %i.pa = or disjoint i64 %indvars.iv.next1000.i, 3
  %i.pb = icmp samesign ult i64 %i.pa, %i.ec
  br i1 %i.pb, label %.lr.ph.us.i, label %.preheader775.loopexit.i, !llvm.loop !1765

.preheader775.loopexit.i:                         ; preds = %._crit_edge.us.i
  %i.pc = trunc nuw nsw i64 %indvars.iv.next1000.i to i32
  br label %.preheader775.i

.preheader775.i:                                  ; preds = %.lr.ph799.i, %.preheader775.loopexit.i, %._crit_edge
  %.0647.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %i.pc, %.preheader775.loopexit.i ], [ %i.eb, %.lr.ph799.i ] ; 5 uses
  %i.pd = or disjoint i32 %.0647.lcssa.i, 1
  %i.pe = icmp slt i32 %i.pd, %.sroa.speculated118
  br i1 %i.pe, label %.lr.ph850.i, label %.preheader773.i

.lr.ph850.i:                                      ; preds = %.preheader775.i
  %i.pf = icmp sgt i32 %.sroa.speculated114, 0
  %i.pg = shl nuw nsw i32 %.sroa.speculated114, 1
  %i.ph = zext nneg i32 %i.pg to i64
  %i.pi = shl nuw nsw i32 %.sroa.speculated114, 2
  %i.pj = zext nneg i32 %i.pi to i64
  %i.pk = mul nuw nsw i32 %.sroa.speculated114, 6
  %i.pl = zext nneg i32 %i.pk to i64
  %i.pm = shl nuw nsw i32 %.sroa.speculated114, 3
  %i.pn = zext nneg i32 %i.pm to i64
  %i.po = mul nuw nsw i32 %.sroa.speculated114, 10
  %i.pp = zext nneg i32 %i.po to i64
  %i.pq = mul nuw nsw i32 %.sroa.speculated114, 12
  %i.pr = zext nneg i32 %i.pq to i64              ; 30 uses
  %i.ps = sext i32 %i.en to i64
  br i1 %i.pf, label %.lr.ph850.split.us.i, label %.lr.ph850.split.preheader.i

.lr.ph850.split.preheader.i:                      ; preds = %.lr.ph850.i
  %i.pt = sub i32 %i.ed, %.0647.lcssa.i
  %i.pu = and i32 %i.pt, -2
  %i.pv = add nsw i32 %.0647.lcssa.i, 2
  %i.pw = add i32 %i.pv, %i.pu
  br label %.preheader773.i

.lr.ph850.split.us.i:                             ; preds = %.lr.ph850.i
  %i.px = load ptr, ptr %12, align 8, !tbaa !37, !noalias !1787
  %i.py = load i64, ptr %i.as, align 8, !tbaa !38, !noalias !1787
  %i.pz = load i64, ptr %i.ba, align 8, !tbaa !79, !noalias !1787 ; 2 uses
  %factor.op.mul.i = mul i64 %i.pz, %i.py
  %i.qa = sext i32 %.0647.lcssa.i to i64
  %wide.trip.count1013.i = zext nneg i32 %.sroa.speculated114 to i64
  br label %.lr.ph.us853.i

.lr.ph.us853.i:                                   ; preds = %._crit_edge.us854.i, %.lr.ph850.split.us.i
  %indvars.iv1015.i = phi i64 [ %indvars.iv.next1016.i, %._crit_edge.us854.i ], [ %i.qa, %.lr.ph850.split.us.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.qb = trunc nsw i64 %indvars.iv1015.i to i32
  %factor.op.mul.reass.us852.i = mul i32 %factor.op.mul796.i, %i.qb
  %i.qc = sext i32 %factor.op.mul.reass.us852.i to i64
  %i.qd = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.qc
  %i.qe = add nsw i64 %indvars.iv1015.i, %i.ef
  %.reass.i = mul i64 %factor.op.mul.i, %i.qe
  %i.qf = getelementptr inbounds nuw i8, ptr %i.px, i64 %.reass.i
  br label %.preheader774.us.i

.preheader774.us.i:                               ; preds = %bb.ae, %.lr.ph.us853.i
  %indvars.iv1010.i = phi i64 [ 0, %.lr.ph.us853.i ], [ %indvars.iv.next1011.i, %bb.ae ] ; 3 uses
  %.idx1040.i = shl nuw nsw i64 %indvars.iv1010.i, 3
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qd, i64 %.idx1040.i ; 8 uses
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.qg, i64 %i.ph ; 3 uses
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.qg, i64 %i.pj ; 3 uses
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.qg, i64 %i.pl ; 3 uses
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.qg, i64 %i.pn ; 3 uses
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.qg, i64 %i.pp ; 3 uses
  %i.qm = load i32, ptr %i.qh, align 4, !tbaa !81 ; 2 uses
  %i.qn = load i32, ptr %i.qi, align 4, !tbaa !81 ; 2 uses
  %i.qo = add nsw i32 %i.qn, %i.qm                ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qh, i64 4
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !81 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qi, i64 4
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !81 ; 2 uses
  %i.qt = add nsw i32 %i.qs, %i.qq                ; 2 uses
  %i.qu = load i32, ptr %i.qj, align 4, !tbaa !81 ; 2 uses
  %i.qv = load i32, ptr %i.qk, align 4, !tbaa !81 ; 2 uses
  %i.qw = add nsw i32 %i.qv, %i.qu                ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qj, i64 4
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !81 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qk, i64 4
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !81 ; 2 uses
  %i.rb = add nsw i32 %i.ra, %i.qy                ; 2 uses
  %i.rc = sub nsw i32 %i.qm, %i.qn                ; 2 uses
  %i.rd = sub nsw i32 %i.qq, %i.qs                ; 2 uses
  %i.re = sub nsw i32 %i.qu, %i.qv                ; 2 uses
  %i.rf = sub nsw i32 %i.qy, %i.ra                ; 2 uses
  %i.rg = add nsw i32 %i.qw, %i.qo
  %i.rh = load i32, ptr %i.qg, align 4, !tbaa !81
  %i.ri = add nsw i32 %i.rg, %i.rh
  %i.rj = add nsw i32 %i.rb, %i.qt
  %i.rk = getelementptr inbounds nuw i8, ptr %i.qg, i64 4
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !81
  %i.rm = add nsw i32 %i.rj, %i.rl
  %i.rn = shl nsw i32 %i.re, 1
  %i.ro = add nsw i32 %i.rn, %i.rc
  %i.rp = shl nsw i32 %i.rf, 1
  %i.rq = add nsw i32 %i.rp, %i.rd
  %i.rr = shl nsw i32 %i.qw, 2
  %i.rs = add nsw i32 %i.rr, %i.qo
  %i.rt = shl nsw i32 %i.rb, 2
  %i.ru = add nsw i32 %i.rt, %i.qt
  %i.rv = shl nsw i32 %i.re, 3
  %i.rw = add nsw i32 %i.rv, %i.rc
  %i.rx = load i32, ptr %i.ql, align 4, !tbaa !81
  %i.ry = shl nsw i32 %i.rx, 2
  %i.rz = add nsw i32 %i.rw, %i.ry
  %i.sa = shl nsw i32 %i.rf, 3
  %i.sb = add nsw i32 %i.sa, %i.rd
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ql, i64 4
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !81
  %i.se = shl nsw i32 %i.sd, 2
  %i.sf = add nsw i32 %i.sb, %i.se
  store i32 %i.ri, ptr %i.b, align 16, !tbaa !81
  store i32 %i.rm, ptr %i.cb, align 4, !tbaa !81
  store i32 %i.ro, ptr %i.br, align 16, !tbaa !81
  store i32 %i.rq, ptr %i.cc, align 4, !tbaa !81
  store i32 %i.rs, ptr %i.bs, align 16, !tbaa !81
  store i32 %i.ru, ptr %i.cd, align 4, !tbaa !81
  store i32 %i.rz, ptr %i.bt, align 16, !tbaa !81
  store i32 %i.sf, ptr %i.ce, align 4, !tbaa !81
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.qg, i64 %i.pr ; 3 uses
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.qh, i64 %i.pr ; 3 uses
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.qi, i64 %i.pr ; 3 uses
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.qj, i64 %i.pr ; 3 uses
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.qk, i64 %i.pr ; 3 uses
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.ql, i64 %i.pr ; 3 uses
  %i.sm = load i32, ptr %i.sh, align 4, !tbaa !81 ; 2 uses
  %i.sn = load i32, ptr %i.si, align 4, !tbaa !81 ; 2 uses
  %i.so = add nsw i32 %i.sn, %i.sm                ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sh, i64 4
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !81 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.si, i64 4
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !81 ; 2 uses
  %i.st = add nsw i32 %i.ss, %i.sq                ; 2 uses
  %i.su = load i32, ptr %i.sj, align 4, !tbaa !81 ; 2 uses
  %i.sv = load i32, ptr %i.sk, align 4, !tbaa !81 ; 2 uses
  %i.sw = add nsw i32 %i.sv, %i.su                ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sj, i64 4
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !81 ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sk, i64 4
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !81 ; 2 uses
  %i.tb = add nsw i32 %i.ta, %i.sy                ; 2 uses
  %i.tc = sub nsw i32 %i.sm, %i.sn                ; 2 uses
  %i.td = sub nsw i32 %i.sq, %i.ss                ; 2 uses
  %i.te = sub nsw i32 %i.su, %i.sv                ; 2 uses
  %i.tf = sub nsw i32 %i.sy, %i.ta                ; 2 uses
  %i.tg = add nsw i32 %i.sw, %i.so
  %i.th = load i32, ptr %i.sg, align 4, !tbaa !81
  %i.ti = add nsw i32 %i.tg, %i.th
  %i.tj = add nsw i32 %i.tb, %i.st
  %i.tk = getelementptr inbounds nuw i8, ptr %i.sg, i64 4
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !81
  %i.tm = add nsw i32 %i.tj, %i.tl
  %i.tn = shl nsw i32 %i.te, 1
  %i.to = add nsw i32 %i.tn, %i.tc
  %i.tp = shl nsw i32 %i.tf, 1
  %i.tq = add nsw i32 %i.tp, %i.td
  %i.tr = shl nsw i32 %i.sw, 2
  %i.ts = add nsw i32 %i.tr, %i.so
  %i.tt = shl nsw i32 %i.tb, 2
  %i.tu = add nsw i32 %i.tt, %i.st
  %i.tv = shl nsw i32 %i.te, 3
  %i.tw = add nsw i32 %i.tv, %i.tc
  %i.tx = load i32, ptr %i.sl, align 4, !tbaa !81
  %i.ty = shl nsw i32 %i.tx, 2
  %i.tz = add nsw i32 %i.tw, %i.ty
  %i.ua = shl nsw i32 %i.tf, 3
  %i.ub = add nsw i32 %i.ua, %i.td
  %i.uc = getelementptr inbounds nuw i8, ptr %i.sl, i64 4
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !81
  %i.ue = shl nsw i32 %i.ud, 2
  %i.uf = add nsw i32 %i.ub, %i.ue
  store i32 %i.ti, ptr %i.cf, align 8, !tbaa !81
  store i32 %i.tm, ptr %i.cg, align 4, !tbaa !81
  store i32 %i.to, ptr %i.ch, align 8, !tbaa !81
  store i32 %i.tq, ptr %i.ci, align 4, !tbaa !81
  store i32 %i.ts, ptr %i.cj, align 8, !tbaa !81
  store i32 %i.tu, ptr %i.ck, align 4, !tbaa !81
  store i32 %i.tz, ptr %i.cl, align 8, !tbaa !81
  store i32 %i.uf, ptr %i.cm, align 4, !tbaa !81
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.sg, i64 %i.pr ; 3 uses
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.sh, i64 %i.pr ; 3 uses
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %i.pr ; 3 uses
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %i.pr ; 3 uses
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.sk, i64 %i.pr ; 3 uses
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %i.pr ; 3 uses
  %i.um = load i32, ptr %i.uh, align 4, !tbaa !81 ; 2 uses
  %i.un = load i32, ptr %i.ui, align 4, !tbaa !81 ; 2 uses
  %i.uo = add nsw i32 %i.un, %i.um                ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.uh, i64 4
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !81 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.ui, i64 4
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !81 ; 2 uses
  %i.ut = add nsw i32 %i.us, %i.uq                ; 2 uses
  %i.uu = load i32, ptr %i.uj, align 4, !tbaa !81 ; 2 uses
  %i.uv = load i32, ptr %i.uk, align 4, !tbaa !81 ; 2 uses
  %i.uw = add nsw i32 %i.uv, %i.uu                ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uj, i64 4
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !81 ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uk, i64 4
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !81 ; 2 uses
  %i.vb = add nsw i32 %i.va, %i.uy                ; 2 uses
  %i.vc = sub nsw i32 %i.um, %i.un                ; 2 uses
  %i.vd = sub nsw i32 %i.uq, %i.us                ; 2 uses
  %i.ve = sub nsw i32 %i.uu, %i.uv                ; 2 uses
  %i.vf = sub nsw i32 %i.uy, %i.va                ; 2 uses
  %i.vg = add nsw i32 %i.uw, %i.uo
  %i.vh = load i32, ptr %i.ug, align 4, !tbaa !81
  %i.vi = add nsw i32 %i.vg, %i.vh
  %i.vj = add nsw i32 %i.vb, %i.ut
  %i.vk = getelementptr inbounds nuw i8, ptr %i.ug, i64 4
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !81
  %i.vm = add nsw i32 %i.vj, %i.vl
  %i.vn = shl nsw i32 %i.ve, 1
  %i.vo = add nsw i32 %i.vn, %i.vc
  %i.vp = shl nsw i32 %i.vf, 1
  %i.vq = add nsw i32 %i.vp, %i.vd
  %i.vr = shl nsw i32 %i.uw, 2
  %i.vs = add nsw i32 %i.vr, %i.uo
  %i.vt = shl nsw i32 %i.vb, 2
  %i.vu = add nsw i32 %i.vt, %i.ut
  %i.vv = shl nsw i32 %i.ve, 3
  %i.vw = add nsw i32 %i.vv, %i.vc
  %i.vx = load i32, ptr %i.ul, align 4, !tbaa !81
  %i.vy = shl nsw i32 %i.vx, 2
  %i.vz = add nsw i32 %i.vw, %i.vy
  %i.wa = shl nsw i32 %i.vf, 3
  %i.wb = add nsw i32 %i.wa, %i.vd
  %i.wc = getelementptr inbounds nuw i8, ptr %i.ul, i64 4
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !81
  %i.we = shl nsw i32 %i.wd, 2
  %i.wf = add nsw i32 %i.wb, %i.we
  store i32 %i.vi, ptr %i.cn, align 16, !tbaa !81
end_hunk_14
begin_hunk_15_@_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.13:bb.a
  %i.dn = load <4 x i32>, ptr %i.dk, align 16, !tbaa !114 ; 2 uses
  %i.do = load <4 x i32>, ptr %i.dl, align 16, !tbaa !114
  %i.dp = sub <4 x i32> %i.dm, %i.dn
  %i.dq = add <4 x i32> %i.dp, %i.do              ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.cj
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.cj
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.cj
  %i.du = load <4 x i32>, ptr %i.dr, align 16, !tbaa !114 ; 2 uses
  %i.dv = load <4 x i32>, ptr %i.ds, align 16, !tbaa !114 ; 2 uses
  %i.dw = load <4 x i32>, ptr %i.dt, align 16, !tbaa !114
  %i.dx = trunc i64 %indvars.iv.i to i32
  %i.dy = add i32 %.044143, %i.dx                 ; 2 uses
  %i.dz = sdiv i32 %i.dy, %i.cb
  %i.ea = srem i32 %i.dy, %i.cb
  %i.eb = load i32, ptr %i.an, align 4, !tbaa !89, !noalias !1909
  %i.ec = load ptr, ptr %12, align 8, !tbaa !37, !noalias !1909
  %i.ed = load i64, ptr %i.aq, align 8, !tbaa !38, !noalias !1909
  %i.ee = mul i64 %i.ed, %i.cr
  %i.ef = load i64, ptr %i.ar, align 8, !tbaa !79, !noalias !1909 ; 2 uses
  %i.eg = mul i64 %i.ee, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.eg
  %i.ei = sext i32 %i.eb to i64
  %i.ej = shl nsw i32 %i.dz, 1                    ; 3 uses
  %i.ek = sext i32 %i.ej to i64
  %i.el = mul nsw i64 %i.ei, %i.ek
  %i.em = mul i64 %i.el, %i.ef
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.em
  %i.eo = shl nsw i32 %i.ea, 1                    ; 2 uses
  %i.ep = mul nsw i32 %i.eo, %i.bw
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [4 x i8], ptr %i.en, i64 %i.eq ; 9 uses
  %i.es = or disjoint i32 %i.eo, 1
  %i.et = icmp slt i32 %i.es, %i.bu               ; 4 uses
  %.not299.us.i = icmp slt i32 %i.ej, %i.bv
  br i1 %.not299.us.i, label %bb.e, label %bb.k

bb.e:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit302.us.i
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.cj ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.cj ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.cj
  %i.ex = load <4 x i32>, ptr %i.ew, align 16, !tbaa !114
  %i.ey = load <4 x i32>, ptr %i.ev, align 16, !tbaa !114
  %i.ez = add <4 x i32> %i.dn, %i.dm
  %i.fa = add <4 x i32> %i.ez, %i.ey              ; 2 uses
  %i.fb = load <4 x i32>, ptr %i.eu, align 16, !tbaa !114
  %i.fc = add <4 x i32> %i.df, %i.de
  %i.fd = add <4 x i32> %i.fc, %i.fb              ; 2 uses
  %i.fe = load <4 x i32>, ptr %i.cs, align 16, !tbaa !114
  %i.ff = add <4 x i32> %i.cx, %i.cw
  %i.fg = add <4 x i32> %i.ff, %i.fe
  %i.fh = add <4 x i32> %i.fg, %i.fa
  %i.fi = add <4 x i32> %i.fh, %i.fd
  %i.fj = add <4 x i32> %i.dv, %i.du
  %i.fk = add <4 x i32> %i.fj, %i.ex
  %i.fl = sub <4 x i32> %i.fk, %i.fa
  %i.fm = add <4 x i32> %i.fl, %i.fd
  %i.fn = ashr <4 x i32> %i.fi, splat (i32 2)     ; 5 uses
  %i.fo = ashr <4 x i32> %i.fm, splat (i32 2)     ; 5 uses
  switch i32 %i.bw, label %bb.j [
    i32 4, label %bb.h
    i32 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.bz ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.er, i64 %.idx.i ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.er, i64 %.idx300.i ; 2 uses
  %.sroa.026.0.vec.extract.us.i = extractelement <4 x i32> %i.fn, i64 0
  store i32 %.sroa.026.0.vec.extract.us.i, ptr %i.er, align 4, !tbaa !81
  %.sroa.026.4.vec.extract.us.i = extractelement <4 x i32> %i.fn, i64 1
  store i32 %.sroa.026.4.vec.extract.us.i, ptr %i.fp, align 4, !tbaa !81
  %.sroa.026.8.vec.extract.us.i = extractelement <4 x i32> %i.fn, i64 2
  store i32 %.sroa.026.8.vec.extract.us.i, ptr %i.fq, align 4, !tbaa !81
  %.sroa.026.12.vec.extract.us.i = extractelement <4 x i32> %i.fn, i64 3
  store i32 %.sroa.026.12.vec.extract.us.i, ptr %i.fr, align 4, !tbaa !81
  br i1 %i.et, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %.sroa.728.16.vec.extract.us.i = extractelement <4 x i32> %i.fo, i64 0
  %i.fs = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  store i32 %.sroa.728.16.vec.extract.us.i, ptr %i.fs, align 4, !tbaa !81
  %.sroa.728.20.vec.extract.us.i = extractelement <4 x i32> %i.fo, i64 1
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  store i32 %.sroa.728.20.vec.extract.us.i, ptr %i.ft, align 4, !tbaa !81
  %.sroa.728.24.vec.extract.us.i = extractelement <4 x i32> %i.fo, i64 2
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  store i32 %.sroa.728.24.vec.extract.us.i, ptr %i.fu, align 4, !tbaa !81
  %.sroa.728.28.vec.extract.us.i = extractelement <4 x i32> %i.fo, i64 3
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  store i32 %.sroa.728.28.vec.extract.us.i, ptr %i.fv, align 4, !tbaa !81
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  store <4 x i32> %i.fn, ptr %i.er, align 16, !tbaa !114
  br i1 %i.et, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.fw = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store <4 x i32> %i.fo, ptr %i.fw, align 16, !tbaa !114
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.cl
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN4ncnn3MatD2Ev.exit302.us.i
  %.1286.us.i = phi ptr [ %i.er, %_ZN4ncnn3MatD2Ev.exit302.us.i ], [ %i.fx, %bb.j ] ; 7 uses
  %i.fy = or disjoint i32 %i.ej, 1
  %.not299.us.1.i = icmp slt i32 %i.fy, %i.bv
  br i1 %.not299.us.1.i, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.fz = add <4 x i32> %i.da, %i.di
  %i.ga = add <4 x i32> %i.fz, %i.dq
  %i.gb = add <4 x i32> %i.di, %i.du
  %i.gc = add <4 x i32> %i.dq, %i.dv
  %i.gd = sub <4 x i32> %i.gb, %i.gc
  %i.ge = add <4 x i32> %i.gd, %i.dw
  %i.gf = ashr <4 x i32> %i.ga, splat (i32 2)     ; 5 uses
  %i.gg = ashr <4 x i32> %i.ge, splat (i32 2)     ; 5 uses
  switch i32 %i.bw, label %bb.q [
    i32 4, label %bb.o
    i32 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %.1286.us.i, i64 %i.bz ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.1286.us.i, i64 %.idx.i ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.1286.us.i, i64 %.idx300.i ; 2 uses
  %.sroa.026.0.vec.extract.us.1.i = extractelement <4 x i32> %i.gf, i64 0
  store i32 %.sroa.026.0.vec.extract.us.1.i, ptr %.1286.us.i, align 4, !tbaa !81
  %.sroa.026.4.vec.extract.us.1.i = extractelement <4 x i32> %i.gf, i64 1
  store i32 %.sroa.026.4.vec.extract.us.1.i, ptr %i.gh, align 4, !tbaa !81
  %.sroa.026.8.vec.extract.us.1.i = extractelement <4 x i32> %i.gf, i64 2
  store i32 %.sroa.026.8.vec.extract.us.1.i, ptr %i.gi, align 4, !tbaa !81
  %.sroa.026.12.vec.extract.us.1.i = extractelement <4 x i32> %i.gf, i64 3
  store i32 %.sroa.026.12.vec.extract.us.1.i, ptr %i.gj, align 4, !tbaa !81
  br i1 %i.et, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %.sroa.728.16.vec.extract.us.1.i = extractelement <4 x i32> %i.gg, i64 0
  %i.gk = getelementptr inbounds nuw i8, ptr %.1286.us.i, i64 4
  store i32 %.sroa.728.16.vec.extract.us.1.i, ptr %i.gk, align 4, !tbaa !81
  %.sroa.728.20.vec.extract.us.1.i = extractelement <4 x i32> %i.gg, i64 1
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  store i32 %.sroa.728.20.vec.extract.us.1.i, ptr %i.gl, align 4, !tbaa !81
  %.sroa.728.24.vec.extract.us.1.i = extractelement <4 x i32> %i.gg, i64 2
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  store i32 %.sroa.728.24.vec.extract.us.1.i, ptr %i.gm, align 4, !tbaa !81
  %.sroa.728.28.vec.extract.us.1.i = extractelement <4 x i32> %i.gg, i64 3
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  store i32 %.sroa.728.28.vec.extract.us.1.i, ptr %i.gn, align 4, !tbaa !81
  br label %bb.q

bb.o:                                             ; preds = %bb.l
  store <4 x i32> %i.gf, ptr %.1286.us.i, align 16, !tbaa !114
  br i1 %i.et, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.go = getelementptr inbounds nuw i8, ptr %.1286.us.i, i64 16
  store <4 x i32> %i.gg, ptr %i.go, align 16, !tbaa !114
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %_ZN4ncnn3MatD2Ev.exit302.us.i, !llvm.loop !1888

._crit_edge.us.i:                                 ; preds = %bb.q
  %indvars.iv.next119.i = add nuw nsw i64 %indvars.iv118.i, 4 ; 3 uses
  %i.gp = or disjoint i64 %indvars.iv.next119.i, 3
  %i.gq = icmp samesign ult i64 %i.gp, %i.bj
  br i1 %i.gq, label %.lr.ph.us.i, label %.preheader55.loopexit.i, !llvm.loop !1889

.preheader55.loopexit.i:                          ; preds = %._crit_edge.us.i
  %i.gr = trunc nuw nsw i64 %indvars.iv.next119.i to i32
  br label %.preheader55.i

.preheader55.i:                                   ; preds = %.lr.ph67.i, %.preheader55.loopexit.i, %._crit_edge
  %.0287.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %i.gr, %.preheader55.loopexit.i ], [ %i.bi, %.lr.ph67.i ] ; 5 uses
  %i.gs = or disjoint i32 %.0287.lcssa.i, 1
  %i.gt = icmp slt i32 %i.gs, %.sroa.speculated119
  br i1 %i.gt, label %.lr.ph78.i, label %.preheader.i

.lr.ph78.i:                                       ; preds = %.preheader55.i
  %i.gu = icmp sgt i32 %.sroa.speculated115, 0
  %i.gv = shl nuw nsw i32 %.sroa.speculated115, 1
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = shl nuw nsw i32 %.sroa.speculated115, 2
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = mul nuw nsw i32 %.sroa.speculated115, 6
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = shl nuw nsw i32 %.sroa.speculated115, 3
  %i.hc = zext nneg i32 %i.hb to i64              ; 12 uses
  %i.hd = sext i32 %i.bu to i64
  br i1 %i.gu, label %.lr.ph78.split.us.i, label %.lr.ph78.split.preheader.i

.lr.ph78.split.preheader.i:                       ; preds = %.lr.ph78.i
  %i.he = sub i32 %i.bk, %.0287.lcssa.i
  %i.hf = and i32 %i.he, -2
  %i.hg = add nsw i32 %.0287.lcssa.i, 2
  %i.hh = add i32 %i.hg, %i.hf
  br label %.preheader.i

.lr.ph78.split.us.i:                              ; preds = %.lr.ph78.i
  %i.hi = load ptr, ptr %12, align 8, !tbaa !37, !noalias !1910
  %i.hj = load i64, ptr %i.aq, align 8, !tbaa !38, !noalias !1910
  %i.hk = load i64, ptr %i.ar, align 8, !tbaa !79, !noalias !1910 ; 2 uses
  %factor.op.mul.i = mul i64 %i.hk, %i.hj
  %i.hl = sext i32 %.0287.lcssa.i to i64
  %wide.trip.count131.i = zext nneg i32 %.sroa.speculated115 to i64
  br label %.lr.ph.us81.i

.lr.ph.us81.i:                                    ; preds = %._crit_edge.us82.i, %.lr.ph78.split.us.i
  %indvars.iv133.i = phi i64 [ %indvars.iv.next134.i, %._crit_edge.us82.i ], [ %i.hl, %.lr.ph78.split.us.i ] ; 3 uses
  %i.hm = trunc nsw i64 %indvars.iv133.i to i32
  %factor.op.mul.reass.us80.i = mul i32 %factor.op.mul64.i, %i.hm
  %i.hn = sext i32 %factor.op.mul.reass.us80.i to i64
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.hn
  %i.hp = add nsw i64 %indvars.iv133.i, %i.bm
  %.reass.i = mul i64 %factor.op.mul.i, %i.hp
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.reass.i
  br label %_ZN4ncnn3MatD2Ev.exit301.us.i

_ZN4ncnn3MatD2Ev.exit301.us.i:                    ; preds = %bb.x, %.lr.ph.us81.i
  %indvars.iv128.i = phi i64 [ 0, %.lr.ph.us81.i ], [ %indvars.iv.next129.i, %bb.x ] ; 3 uses
  %.idx178.i = shl nuw nsw i64 %indvars.iv128.i, 3
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 %.idx178.i ; 6 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.gw ; 3 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.gy ; 3 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.ha ; 3 uses
  %i.hv = load i32, ptr %i.hs, align 4, !tbaa !81 ; 2 uses
  %i.hw = load i32, ptr %i.ht, align 4, !tbaa !81 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !81 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !81 ; 2 uses
  %i.ib = sub i32 %i.hv, %i.hw
  %i.ic = load i32, ptr %i.hu, align 4, !tbaa !81
  %i.id = add nsw i32 %i.ib, %i.ic
  %i.ie = sub i32 %i.hy, %i.ia
  %i.if = getelementptr inbounds nuw i8, ptr %i.hu, i64 4
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !81
  %i.ih = add nsw i32 %i.ie, %i.ig
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.hc ; 3 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %i.hc ; 3 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.hc ; 3 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.hc ; 3 uses
  %i.im = load i32, ptr %i.ii, align 4, !tbaa !81
  %i.in = load i32, ptr %i.ij, align 4, !tbaa !81 ; 2 uses
  %i.io = add nsw i32 %i.in, %i.im
  %i.ip = load i32, ptr %i.ik, align 4, !tbaa !81 ; 2 uses
  %i.iq = add nsw i32 %i.io, %i.ip                ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !81
  %i.it = getelementptr inbounds nuw i8, ptr %i.ij, i64 4
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !81 ; 2 uses
  %i.iv = add nsw i32 %i.iu, %i.is
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ik, i64 4
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !81 ; 2 uses
  %i.iy = add nsw i32 %i.iv, %i.ix                ; 2 uses
  %i.iz = sub i32 %i.in, %i.ip
  %i.ja = load i32, ptr %i.il, align 4, !tbaa !81
  %i.jb = add nsw i32 %i.ja, %i.iz                ; 2 uses
  %i.jc = sub i32 %i.iu, %i.ix
  %i.jd = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !81
  %i.jf = add nsw i32 %i.je, %i.jc                ; 2 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.hc ; 3 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %i.hc ; 3 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %i.hc ; 3 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.hc ; 3 uses
  %i.jk = load i32, ptr %i.jg, align 4, !tbaa !81
  %i.jl = load i32, ptr %i.jh, align 4, !tbaa !81 ; 2 uses
  %i.jm = add nsw i32 %i.jl, %i.jk
  %i.jn = load i32, ptr %i.ji, align 4, !tbaa !81 ; 2 uses
  %i.jo = add nsw i32 %i.jm, %i.jn                ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !81
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jh, i64 4
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !81 ; 2 uses
  %i.jt = add nsw i32 %i.js, %i.jq
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !81 ; 2 uses
  %i.jw = add nsw i32 %i.jt, %i.jv                ; 2 uses
  %i.jx = sub i32 %i.jl, %i.jn
  %i.jy = load i32, ptr %i.jj, align 4, !tbaa !81
  %i.jz = add nsw i32 %i.jy, %i.jx                ; 2 uses
  %i.ka = sub i32 %i.js, %i.jv
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jj, i64 4
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !81
  %i.kd = add nsw i32 %i.kc, %i.ka                ; 2 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.hc ; 2 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.hc ; 2 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %i.hc ; 2 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.hc ; 2 uses
  %i.ki = load i32, ptr %i.ke, align 4, !tbaa !81
  %i.kj = load i32, ptr %i.kf, align 4, !tbaa !81 ; 2 uses
  %i.kk = load i32, ptr %i.kg, align 4, !tbaa !81 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ke, i64 4
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !81
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !81 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !81 ; 2 uses
  %i.kr = load i32, ptr %i.kh, align 4, !tbaa !81
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !81
  %i.ku = trunc i64 %indvars.iv128.i to i32
  %i.kv = add i32 %.044143, %i.ku                 ; 2 uses
  %i.kw = sdiv i32 %i.kv, %i.cb
  %i.kx = srem i32 %i.kv, %i.cb
  %i.ky = load i32, ptr %i.an, align 4, !tbaa !89, !noalias !1910
  %i.kz = sext i32 %i.ky to i64
  %i.la = shl nsw i32 %i.kw, 1                    ; 3 uses
  %i.lb = sext i32 %i.la to i64
  %i.lc = mul i64 %i.hk, %i.lb
  %i.ld = mul i64 %i.lc, %i.kz
  %i.le = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.ld
  %i.lf = shl nsw i32 %i.kx, 1                    ; 2 uses
  %i.lg = sext i32 %i.lf to i64
  %i.lh = getelementptr inbounds [4 x i8], ptr %i.le, i64 %i.lg ; 5 uses
  %i.li = or disjoint i32 %i.lf, 1
  %i.lj = icmp slt i32 %i.li, %i.bu               ; 2 uses
  %.not298.us.i = icmp slt i32 %i.la, %i.bv
  br i1 %.not298.us.i, label %bb.r, label %bb.u

bb.r:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit301.us.i
  %i.lk = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !81
  %i.lm = load i32, ptr %i.hr, align 4, !tbaa !81
  %i.ln = add i32 %i.hw, %i.hv
  %i.lo = add i32 %i.ln, %i.iq
  %i.lp = add i32 %i.lo, %i.jo
  %i.lq = add i32 %i.lp, %i.lm
  %i.lr = add i32 %i.ia, %i.hy
  %i.ls = add i32 %i.lr, %i.iy
  %i.lt = add i32 %i.ls, %i.jw
  %i.lu = add i32 %i.lt, %i.ll
  %i.lv = ashr i32 %i.lq, 2
  %i.lw = ashr i32 %i.lu, 2
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %i.bz ; 2 uses
  store i32 %i.lv, ptr %i.lh, align 4, !tbaa !81
  store i32 %i.lw, ptr %i.lx, align 4, !tbaa !81
  br i1 %i.lj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ly = sub i32 %i.iy, %i.jw
  %i.lz = add i32 %i.ly, %i.km
  %i.ma = add i32 %i.lz, %i.ko
  %i.mb = add i32 %i.ma, %i.kq
  %i.mc = ashr i32 %i.mb, 2
  %i.md = sub i32 %i.iq, %i.jo
  %i.me = add i32 %i.md, %i.ki
  %i.mf = add i32 %i.me, %i.kj
  %i.mg = add i32 %i.mf, %i.kk
  %i.mh = ashr i32 %i.mg, 2
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lh, i64 4
  store i32 %i.mh, ptr %i.mi, align 4, !tbaa !81
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lx, i64 4
  store i32 %i.mc, ptr %i.mj, align 4, !tbaa !81
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.mk = getelementptr inbounds [4 x i8], ptr %i.lh, i64 %i.hd
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN4ncnn3MatD2Ev.exit301.us.i
  %.1277.us.i = phi ptr [ %i.lh, %_ZN4ncnn3MatD2Ev.exit301.us.i ], [ %i.mk, %bb.t ] ; 3 uses
  %i.ml = or disjoint i32 %i.la, 1
  %.not298.us.1.i = icmp slt i32 %i.ml, %i.bv
  br i1 %.not298.us.1.i, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.mm = add nsw i32 %i.id, %i.jb
  %i.mn = add nsw i32 %i.mm, %i.jz
  %i.mo = add nsw i32 %i.ih, %i.jf
  %i.mp = add nsw i32 %i.mo, %i.kd
  %i.mq = ashr i32 %i.mn, 2
  %i.mr = ashr i32 %i.mp, 2
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %.1277.us.i, i64 %i.bz ; 2 uses
  store i32 %i.mq, ptr %.1277.us.i, align 4, !tbaa !81
  store i32 %i.mr, ptr %i.ms, align 4, !tbaa !81
  br i1 %i.lj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.mt = add i32 %i.jf, %i.ko
  %i.mu = add i32 %i.kd, %i.kq
  %i.mv = sub i32 %i.mt, %i.mu
  %i.mw = add i32 %i.mv, %i.kt
  %i.mx = ashr i32 %i.mw, 2
  %i.my = add i32 %i.jb, %i.kj
  %i.mz = add i32 %i.jz, %i.kk
  %i.na = sub i32 %i.my, %i.mz
  %i.nb = add i32 %i.na, %i.kr
  %i.nc = ashr i32 %i.nb, 2
  %i.nd = getelementptr inbounds nuw i8, ptr %.1277.us.i, i64 4
  store i32 %i.nc, ptr %i.nd, align 4, !tbaa !81
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ms, i64 4
  store i32 %i.mx, ptr %i.ne, align 4, !tbaa !81
  br label %bb.x
end_hunk_15
begin_hunk_16_@_ZN4ncnnL26conv3x3s1_winograd23_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined.16:bb.a
  %i.aek = sitofp fast <4 x i32> %i.aej to <4 x float> ; 2 uses
  %i.ael = fcmp fast olt <4 x float> %i.aei, %i.aek
  %i.aem = select <4 x i1> %i.ael, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.aen = fsub fast <4 x float> %i.aek, %i.aem   ; 2 uses
  %i.aeo = fneg fast <4 x float> %i.aen           ; 2 uses
  %i.aep = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.aeo, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.aeg)
  %i.aeq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.aeo, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.aep) ; 8 uses
  %i.aer = fmul fast <4 x float> %i.aeq, %i.aeq
  %i.aes = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aeq, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.aet = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aes, <4 x float> nofpclass(nan inf) %i.aeq, <4 x float> splat (float f0x3C088908))
  %i.aeu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aet, <4 x float> nofpclass(nan inf) %i.aeq, <4 x float> splat (float f0x3D2AA9C1))
  %i.aev = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aeu, <4 x float> nofpclass(nan inf) %i.aeq, <4 x float> splat (float f0x3E2AAAAA))
  %i.aew = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aev, <4 x float> nofpclass(nan inf) %i.aeq, <4 x float> splat (float 5.000000e-01))
  %i.aex = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aew, <4 x float> nofpclass(nan inf) %i.aer, <4 x float> nofpclass(nan inf) %i.aeq)
  %i.aey = fadd fast <4 x float> %i.aex, splat (float 1.000000e+00)
  %i.aez = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aen)
  %i.afa = shl <4 x i32> %i.aez, splat (i32 23)
  %i.afb = add <4 x i32> %i.afa, splat (i32 1065353216)
  %i.afc = bitcast <4 x i32> %i.afb to <4 x float>
  %i.afd = fmul fast <4 x float> %i.aey, %i.afc
  %i.afe = fadd fast <4 x float> %i.afd, splat (float 1.000000e+00)
  %i.aff = fdiv fast <4 x float> splat (float 2.000000e+00), %i.afe
  %i.afg = fadd fast <4 x float> %i.aff, splat (float -1.000000e+00)
  %i.afh = fmul fast <4 x float> %i.afg, %i.xx
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit548.thread636.us.i: ; preds = %bb.s
  %i.afi = fneg fast <4 x float> %i.xv
  %i.afj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.afi, <4 x float> splat (float f0x42B0C0A5))
  %i.afk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.afj, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.afl = fmul fast <4 x float> %i.afk, splat (float f0x3FB8AA3B)
  %i.afm = fadd fast <4 x float> %i.afl, splat (float 5.000000e-01) ; 2 uses
  %i.afn = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.afm)
  %i.afo = sitofp fast <4 x i32> %i.afn to <4 x float> ; 2 uses
  %i.afp = fcmp fast olt <4 x float> %i.afm, %i.afo
  %i.afq = select <4 x i1> %i.afp, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.afr = fsub fast <4 x float> %i.afo, %i.afq   ; 2 uses
  %i.afs = fneg fast <4 x float> %i.afr           ; 2 uses
  %i.aft = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.afs, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.afk)
  %i.afu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.afs, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.aft) ; 8 uses
  %i.afv = fmul fast <4 x float> %i.afu, %i.afu
  %i.afw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.afu, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.afx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.afw, <4 x float> nofpclass(nan inf) %i.afu, <4 x float> splat (float f0x3C088908))
  %i.afy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.afx, <4 x float> nofpclass(nan inf) %i.afu, <4 x float> splat (float f0x3D2AA9C1))
  %i.afz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.afy, <4 x float> nofpclass(nan inf) %i.afu, <4 x float> splat (float f0x3E2AAAAA))
  %i.aga = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.afz, <4 x float> nofpclass(nan inf) %i.afu, <4 x float> splat (float 5.000000e-01))
  %i.agb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aga, <4 x float> nofpclass(nan inf) %i.afv, <4 x float> nofpclass(nan inf) %i.afu)
  %i.agc = fadd fast <4 x float> %i.agb, splat (float 1.000000e+00)
  %i.agd = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.afr)
  %i.age = shl <4 x i32> %i.agd, splat (i32 23)
  %i.agf = add <4 x i32> %i.age, splat (i32 1065353216)
  %i.agg = bitcast <4 x i32> %i.agf to <4 x float>
  %i.agh = fmul fast <4 x float> %i.agc, %i.agg
  %i.agi = fadd fast <4 x float> %i.agh, splat (float 1.000000e+00)
  %i.agj = fdiv fast <4 x float> splat (float 1.000000e+00), %i.agi
  %i.agk = fneg fast <4 x float> %i.xx
  %i.agl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.agk, <4 x float> splat (float f0x42B0C0A5))
  %i.agm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.agl, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.agn = fmul fast <4 x float> %i.agm, splat (float f0x3FB8AA3B)
  %i.ago = fadd fast <4 x float> %i.agn, splat (float 5.000000e-01) ; 2 uses
  %i.agp = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ago)
  %i.agq = sitofp fast <4 x i32> %i.agp to <4 x float> ; 2 uses
  %i.agr = fcmp fast olt <4 x float> %i.ago, %i.agq
  %i.ags = select <4 x i1> %i.agr, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.agt = fsub fast <4 x float> %i.agq, %i.ags   ; 2 uses
  %i.agu = fneg fast <4 x float> %i.agt           ; 2 uses
  %i.agv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.agu, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.agm)
  %i.agw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.agu, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.agv) ; 8 uses
  %i.agx = fmul fast <4 x float> %i.agw, %i.agw
  %i.agy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.agw, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.agz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.agy, <4 x float> nofpclass(nan inf) %i.agw, <4 x float> splat (float f0x3C088908))
  %i.aha = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.agz, <4 x float> nofpclass(nan inf) %i.agw, <4 x float> splat (float f0x3D2AA9C1))
  %i.ahb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aha, <4 x float> nofpclass(nan inf) %i.agw, <4 x float> splat (float f0x3E2AAAAA))
  %i.ahc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ahb, <4 x float> nofpclass(nan inf) %i.agw, <4 x float> splat (float 5.000000e-01))
  %i.ahd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ahc, <4 x float> nofpclass(nan inf) %i.agx, <4 x float> nofpclass(nan inf) %i.agw)
  %i.ahe = fadd fast <4 x float> %i.ahd, splat (float 1.000000e+00)
  %i.ahf = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.agt)
  %i.ahg = shl <4 x i32> %i.ahf, splat (i32 23)
  %i.ahh = add <4 x i32> %i.ahg, splat (i32 1065353216)
  %i.ahi = bitcast <4 x i32> %i.ahh to <4 x float>
  %i.ahj = fmul fast <4 x float> %i.ahe, %i.ahi
  %i.ahk = fadd fast <4 x float> %i.ahj, splat (float 1.000000e+00)
  %i.ahl = fdiv fast <4 x float> splat (float 1.000000e+00), %i.ahk
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit548.thread633.us.i: ; preds = %bb.s
  %i.ahm = load ptr, ptr %15, align 8, !tbaa !37  ; 2 uses
  %i.ahn = load float, ptr %i.ahm, align 4, !tbaa !56
  %i.aho = insertelement <4 x float> poison, float %i.ahn, i64 0
  %i.ahp = shufflevector <4 x float> %i.aho, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahm, i64 4
  %i.ahr = load float, ptr %i.ahq, align 4, !tbaa !56
  %i.ahs = insertelement <4 x float> poison, float %i.ahr, i64 0
  %i.aht = shufflevector <4 x float> %i.ahs, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ahu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.xv, <4 x float> nofpclass(nan inf) %i.ahp)
  %i.ahv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ahu, <4 x float> nofpclass(nan inf) %i.aht)
  %i.ahw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.xx, <4 x float> nofpclass(nan inf) %i.ahp)
  %i.ahx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ahw, <4 x float> nofpclass(nan inf) %i.aht)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit548.thread630.us.i: ; preds = %bb.s
  %i.ahy = load ptr, ptr %15, align 8, !tbaa !37
  %i.ahz = load float, ptr %i.ahy, align 4, !tbaa !56
  %i.aia = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.xv)
  %i.aib = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.xv)
  %i.aic = insertelement <4 x float> poison, float %i.ahz, i64 0
  %i.aid = shufflevector <4 x float> %i.aic, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aie = fmul fast <4 x float> %i.aid, %i.aib
  %i.aif = fadd fast <4 x float> %i.aie, %i.aia
  %i.aig = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.xx)
  %i.aih = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.xx)
  %i.aii = fmul fast <4 x float> %i.aih, %i.aid
  %i.aij = fadd fast <4 x float> %i.aii, %i.aig
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit548.thread.us.i: ; preds = %bb.s
  %i.aik = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.xv, <4 x float> zeroinitializer)
  %i.ail = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.xx, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i: ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit548.thread.us.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit548.thread630.us.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit548.thread633.us.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit548.thread636.us.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit548.thread639.us.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit548.thread642.us.i, %bb.s
  %.0.i547629.us.i = phi <4 x float> [ %i.yk, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit548.thread642.us.i ], [ %i.aik, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit548.thread.us.i ], [ %i.aif, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit548.thread630.us.i ], [ %i.ahv, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit548.thread633.us.i ], [ %i.agj, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit548.thread636.us.i ], [ %i.aby, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit548.thread639.us.i ], [ %i.xv, %bb.s ] ; 2 uses
  %.0.i546.us.i = phi nsz <4 x float> [ %i.yp, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit548.thread642.us.i ], [ %i.ail, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit548.thread.us.i ], [ %i.aij, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit548.thread630.us.i ], [ %i.ahx, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit548.thread633.us.i ], [ %i.ahl, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit548.thread636.us.i ], [ %i.afh, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit548.thread639.us.i ], [ %i.xx, %bb.s ] ; 2 uses
  switch i32 %i.cq, label %bb.x [
    i32 4, label %bb.v
    i32 1, label %bb.t
  ]

bb.t:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i
  %i.aim = getelementptr inbounds nuw [2 x i8], ptr %.0478802.us.i, i64 %i.ct ; 2 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %.0478802.us.i, i64 %.idx.i ; 2 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %.0478802.us.i, i64 %.idx510.i ; 2 uses
  %i.aip = bitcast <4 x float> %.0.i547629.us.i to <8 x i16> ; 4 uses
  %i.aiq = extractelement <8 x i16> %i.aip, i64 1
  store i16 %i.aiq, ptr %.0478802.us.i, align 2, !tbaa !117
  %i.air = extractelement <8 x i16> %i.aip, i64 3
  store i16 %i.air, ptr %i.aim, align 2, !tbaa !117
  %i.ais = extractelement <8 x i16> %i.aip, i64 5
  store i16 %i.ais, ptr %i.ain, align 2, !tbaa !117
  %i.ait = extractelement <8 x i16> %i.aip, i64 7
  store i16 %i.ait, ptr %i.aio, align 2, !tbaa !117
  br i1 %i.xj, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.aiu = bitcast <4 x float> %.0.i546.us.i to <8 x i16> ; 4 uses
  %i.aiv = extractelement <8 x i16> %i.aiu, i64 1
  %i.aiw = getelementptr inbounds nuw i8, ptr %.0478802.us.i, i64 2
  store i16 %i.aiv, ptr %i.aiw, align 2, !tbaa !117
  %i.aix = extractelement <8 x i16> %i.aiu, i64 3
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aim, i64 2
  store i16 %i.aix, ptr %i.aiy, align 2, !tbaa !117
  %i.aiz = extractelement <8 x i16> %i.aiu, i64 5
  %i.aja = getelementptr inbounds nuw i8, ptr %i.ain, i64 2
  store i16 %i.aiz, ptr %i.aja, align 2, !tbaa !117
  %i.ajb = extractelement <8 x i16> %i.aiu, i64 7
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.aio, i64 2
  store i16 %i.ajb, ptr %i.ajc, align 2, !tbaa !117
  br label %bb.x

bb.v:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i
  %i.ajd = bitcast <4 x float> %.0.i547629.us.i to <4 x i32>
  %i.aje = lshr <4 x i32> %i.ajd, splat (i32 16)
  %i.ajf = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.aje, <4 x i32> poison)
  %i.ajg = bitcast <8 x i16> %i.ajf to <2 x i64>
  %i.ajh = extractelement <2 x i64> %i.ajg, i64 0
  store i64 %i.ajh, ptr %.0478802.us.i, align 1, !tbaa !114
  br i1 %i.xj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.aji = getelementptr inbounds nuw i8, ptr %.0478802.us.i, i64 8
  %i.ajj = bitcast <4 x float> %.0.i546.us.i to <4 x i32>
  %i.ajk = lshr <4 x i32> %i.ajj, splat (i32 16)
  %i.ajl = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ajk, <4 x i32> poison)
  %i.ajm = bitcast <8 x i16> %i.ajl to <2 x i64>
  %i.ajn = extractelement <2 x i64> %i.ajm, i64 0
  store i64 %i.ajn, ptr %i.aji, align 1, !tbaa !114
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i
  %i.ajo = getelementptr inbounds [2 x i8], ptr %.0478802.us.i, i64 %i.ug
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.r
  %.1479.us.i = phi ptr [ %.0478802.us.i, %bb.r ], [ %i.ajo, %bb.x ]
  br i1 %i.xk, label %bb.r, label %bb.z, !llvm.loop !2218

bb.z:                                             ; preds = %bb.y
  %indvars.iv.next877.i = add nuw nsw i64 %indvars.iv876.i, 1 ; 2 uses
  %exitcond880.not.i = icmp eq i64 %indvars.iv.next877.i, %wide.trip.count879.i
  br i1 %exitcond880.not.i, label %._crit_edge.us811.i, label %_ZN4ncnn3MatD2Ev.exit520.us.i, !llvm.loop !2219

._crit_edge.us811.i:                              ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %indvars.iv.next882.i = add nuw nsw i64 %indvars.iv881.i, 4 ; 3 uses
  %i.ajp = icmp slt i64 %indvars.iv.next882.i, %invariant.op.i
  br i1 %i.ajp, label %.lr.ph807.split.us.i, label %.preheader780.loopexit.i, !llvm.loop !2220

.lr.ph807.split.i:                                ; preds = %.lr.ph807.i
  %i.ajq = sub i32 %i.ca, %.0489.lcssa.i
  %i.ajr = and i32 %i.ajq, -4
  %i.ajs = add nsw i32 %.0489.lcssa.i, 4
  %i.ajt = add i32 %i.ajs, %i.ajr
  br label %.preheader780.i

.preheader780.loopexit.i:                         ; preds = %._crit_edge.us811.i
  %i.aju = trunc nsw i64 %indvars.iv.next882.i to i32
  br label %.preheader780.i

.preheader780.i:                                  ; preds = %.preheader780.loopexit.i, %.lr.ph807.split.i, %.preheader781.i
  %.1490.lcssa.i = phi i32 [ %.0489.lcssa.i, %.preheader781.i ], [ %i.ajt, %.lr.ph807.split.i ], [ %i.aju, %.preheader780.loopexit.i ] ; 3 uses
  %i.ajv = or disjoint i32 %.1490.lcssa.i, 1
  %i.ajw = icmp slt i32 %i.ajv, %.sroa.speculated123
  br i1 %i.ajw, label %.lr.ph828.i, label %.preheader.i

.lr.ph828.i:                                      ; preds = %.preheader780.i
  %.not506.i = icmp eq ptr %.val, null
  %i.ajx = icmp sgt i32 %.sroa.speculated119, 0
  %i.ajy = shl nuw nsw i32 %.sroa.speculated119, 1
  %i.ajz = zext nneg i32 %i.ajy to i64
  %i.aka = shl nuw nsw i32 %.sroa.speculated119, 2
  %i.akb = zext nneg i32 %i.aka to i64
  %i.akc = mul nuw nsw i32 %.sroa.speculated119, 6
  %i.akd = zext nneg i32 %i.akc to i64
  %i.ake = shl nuw nsw i32 %.sroa.speculated119, 3
  %i.akf = zext nneg i32 %i.ake to i64            ; 12 uses
  %i.akg = sext i32 %i.co to i64
  %i.akh = sext i32 %.1490.lcssa.i to i64         ; 4 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %.val, i64 %i.bx
  %wide.trip.count894.i = zext nneg i32 %.sroa.speculated119 to i64
  br i1 %i.ajx, label %.lr.ph828.i.split.us, label %.lr.ph828.i.split

.lr.ph828.i.split.us:                             ; preds = %.lr.ph828.i
  %i.aki = load i32, ptr %i.ap, align 4, !tbaa !89, !noalias !2242
  %i.akj = load ptr, ptr %12, align 8, !tbaa !37, !noalias !2242
  %i.akk = load i64, ptr %i.as, align 8, !tbaa !38, !noalias !2242
  %i.akl = load i64, ptr %i.at, align 8, !tbaa !79, !noalias !2242 ; 2 uses
  %factor.op.mul = mul i64 %i.akk, %i.akl
  %i.akm = sext i32 %i.aki to i64
  %factor.op.mul824.i.us = mul i64 %i.akl, %i.akm
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge.i.loopexit.us, %.lr.ph828.i.split.us
  %indvars.iv896.i.us = phi i64 [ %i.akh, %.lr.ph828.i.split.us ], [ %indvars.iv.next897.i.us, %._crit_edge.i.loopexit.us ] ; 4 uses
  br i1 %.not506.i, label %.thread.i.us, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %gep.i.us = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv896.i.us
  %i.akn = load <2 x float>, ptr %gep.i.us, align 4, !tbaa !56
  br label %.thread.i.us

.thread.i.us:                                     ; preds = %bb.ab, %bb.aa
  %i.ako = phi <2 x float> [ %i.akn, %bb.ab ], [ zeroinitializer, %bb.aa ] ; 2 uses
  %i.akp = trunc nsw i64 %indvars.iv896.i.us to i32
  %factor.op.mul.reass.i.us = mul i32 %factor.op.mul790.i, %i.akp
  %i.akq = sext i32 %factor.op.mul.reass.i.us to i64
  %i.akr = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.akq
  %i.aks = add nsw i64 %indvars.iv896.i.us, %i.bx
  %.reass = mul i64 %factor.op.mul, %i.aks
  %i.akt = getelementptr inbounds nuw i8, ptr %i.akj, i64 %.reass
  br label %_ZN4ncnn3MatD2Ev.exit519.i.us

_ZN4ncnn3MatD2Ev.exit519.i.us:                    ; preds = %bb.ba, %.thread.i.us
  %indvars.iv891.i.us = phi i64 [ 0, %.thread.i.us ], [ %indvars.iv.next892.i.us, %bb.ba ] ; 3 uses
  %.idx954.i.us = shl nuw nsw i64 %indvars.iv891.i.us, 3
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akr, i64 %.idx954.i.us ; 5 uses
  %i.akv = getelementptr inbounds nuw [4 x i8], ptr %i.aku, i64 %i.ajz ; 2 uses
  %i.akw = getelementptr inbounds nuw [4 x i8], ptr %i.aku, i64 %i.akb ; 2 uses
  %i.akx = getelementptr inbounds nuw [4 x i8], ptr %i.aku, i64 %i.akd ; 2 uses
  %i.aky = load <2 x float>, ptr %i.akv, align 4, !tbaa !56 ; 2 uses
  %i.akz = load <2 x float>, ptr %i.akw, align 4, !tbaa !56 ; 2 uses
  %i.ala = fsub fast <2 x float> %i.aky, %i.akz
  %i.alb = load <2 x float>, ptr %i.akx, align 4, !tbaa !56
  %i.alc = fadd fast <2 x float> %i.ala, %i.alb
  %i.ald = getelementptr inbounds nuw [4 x i8], ptr %i.akv, i64 %i.akf ; 2 uses
  %i.ale = getelementptr inbounds nuw [4 x i8], ptr %i.akw, i64 %i.akf ; 2 uses
  %i.alf = getelementptr inbounds nuw [4 x i8], ptr %i.akx, i64 %i.akf ; 2 uses
  %i.alg = getelementptr inbounds nuw [4 x i8], ptr %i.ald, i64 %i.akf ; 2 uses
  %i.alh = getelementptr inbounds nuw [4 x i8], ptr %i.ale, i64 %i.akf ; 2 uses
  %i.ali = getelementptr inbounds nuw [4 x i8], ptr %i.alf, i64 %i.akf ; 2 uses
  %i.alj = getelementptr inbounds nuw [4 x i8], ptr %i.alg, i64 %i.akf
  %i.alk = getelementptr inbounds nuw [4 x i8], ptr %i.alh, i64 %i.akf
  %i.all = getelementptr inbounds nuw [4 x i8], ptr %i.ali, i64 %i.akf
  %i.alm = load <2 x float>, ptr %i.ald, align 4, !tbaa !56 ; 2 uses
  %i.aln = load <2 x float>, ptr %i.ale, align 4, !tbaa !56 ; 2 uses
  %i.alo = load <2 x float>, ptr %i.alf, align 4, !tbaa !56
  %i.alp = load <2 x float>, ptr %i.alg, align 4, !tbaa !56 ; 2 uses
  %i.alq = load <2 x float>, ptr %i.alh, align 4, !tbaa !56 ; 2 uses
  %i.alr = fsub fast <2 x float> %i.alp, %i.alq
  %i.als = load <2 x float>, ptr %i.ali, align 4, !tbaa !56
  %i.alt = fadd fast <2 x float> %i.als, %i.alr   ; 2 uses
  %i.alu = load <2 x float>, ptr %i.alj, align 4, !tbaa !56 ; 2 uses
  %i.alv = load <2 x float>, ptr %i.alk, align 4, !tbaa !56 ; 2 uses
  %i.alw = load <2 x float>, ptr %i.all, align 4, !tbaa !56
  %i.alx = trunc i64 %indvars.iv891.i.us to i32
  %i.aly = add i32 %.047162, %i.alx               ; 2 uses
  %i.alz = sdiv i32 %i.aly, %i.cv
  %i.ama = srem i32 %i.aly, %i.cv
  %i.amb = shl nsw i32 %i.alz, 1                  ; 3 uses
  %i.amc = sext i32 %i.amb to i64
  %.reass825.i.us = mul i64 %factor.op.mul824.i.us, %i.amc
  %i.amd = getelementptr inbounds nuw i8, ptr %i.akt, i64 %.reass825.i.us
  %i.ame = shl nsw i32 %i.ama, 1                  ; 2 uses
  %i.amf = sext i32 %i.ame to i64
  %i.amg = getelementptr inbounds [2 x i8], ptr %i.amd, i64 %i.amf ; 5 uses
  %i.amh = or disjoint i32 %i.ame, 1
  %i.ami = icmp slt i32 %i.amh, %i.co             ; 2 uses
  %.not507.i.us = icmp slt i32 %i.amb, %i.cp
  br i1 %.not507.i.us, label %bb.ac, label %bb.ao

bb.ac:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit519.i.us
  %i.amj = getelementptr inbounds nuw [4 x i8], ptr %i.aku, i64 %i.akf ; 2 uses
  %i.amk = getelementptr inbounds nuw [4 x i8], ptr %i.amj, i64 %i.akf ; 2 uses
  %i.aml = getelementptr inbounds nuw [4 x i8], ptr %i.amk, i64 %i.akf
  %i.amm = load <2 x float>, ptr %i.aml, align 4, !tbaa !56
  %i.amn = load <2 x float>, ptr %i.amk, align 4, !tbaa !56
  %i.amo = fadd fast <2 x float> %i.alq, %i.alp
  %i.amp = fadd fast <2 x float> %i.amo, %i.amn   ; 2 uses
  %i.amq = load <2 x float>, ptr %i.amj, align 4, !tbaa !56
  %i.amr = fadd fast <2 x float> %i.alm, %i.ako
  %i.ams = fadd fast <2 x float> %i.amr, %i.aln
  %i.amt = fadd fast <2 x float> %i.ams, %i.amq   ; 2 uses
  %i.amu = load <2 x float>, ptr %i.aku, align 4, !tbaa !56
  %i.amv = fadd fast <2 x float> %i.akz, %i.aky
  %i.amw = fadd fast <2 x float> %i.amv, %i.amp
  %i.amx = fadd fast <2 x float> %i.amw, %i.amu
  %i.amy = fadd fast <2 x float> %i.amx, %i.amt   ; 11 uses
  %i.amz = fsub fast <2 x float> %i.amt, %i.amp
  %i.ana = fadd fast <2 x float> %i.alv, %i.alu
  %i.anb = fadd fast <2 x float> %i.ana, %i.amm
  %i.anc = fadd fast <2 x float> %i.anb, %i.amz   ; 13 uses
  switch i32 %i.cn, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit550.i.us [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit553.thread653.i.us
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit553.thread656.i.us
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit553.thread650.i.us
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit553.thread659.i.us
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit553.thread662.i.us
    i32 6, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.and = load ptr, ptr %15, align 8, !tbaa !37  ; 2 uses
  %i.ane = load float, ptr %i.and, align 4, !tbaa !56 ; 9 uses
  %i.anf = getelementptr inbounds nuw i8, ptr %i.and, i64 4
  %i.ang = load float, ptr %i.anf, align 4, !tbaa !56 ; 5 uses
  %i.anh = fneg fast float %i.ang
  %i.ani = fdiv fast float %i.anh, %i.ane         ; 8 uses
  %i.anj = extractelement <2 x float> %i.amy, i64 0 ; 5 uses
  %i.ank = fcmp fast olt float %i.anj, %i.ani
  br i1 %i.ank, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit553.thread.i.us, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.anl = fdiv fast float 1.000000e+00, %i.ane
  %i.anm = fadd fast float %i.ani, %i.anl
  %i.ann = fcmp fast ogt float %i.anj, %i.anm
  br i1 %i.ann, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit553.thread.i.us, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ano = fmul fast float %i.ane, %i.anj
  %i.anp = fadd fast float %i.ano, %i.ang
  %i.anq = fmul fast float %i.anp, %i.anj
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit553.thread.i.us

_ZL13activation_ssfiRKN4ncnn3MatE.exit553.thread.i.us: ; preds = %bb.af, %bb.ae, %bb.ad
  %.1598646.i.us = phi float [ %i.anq, %bb.af ], [ 0.000000e+00, %bb.ad ], [ %i.anj, %bb.ae ]
  %i.anr = extractelement <2 x float> %i.amy, i64 1 ; 5 uses
  %i.ans = fcmp fast olt float %i.anr, %i.ani
  br i1 %i.ans, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit552.thread.i.us, label %bb.ag

bb.ag:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit553.thread.i.us
  %i.ant = fdiv fast float 1.000000e+00, %i.ane
  %i.anu = fadd fast float %i.ani, %i.ant
  %i.anv = fcmp fast ogt float %i.anr, %i.anu
  br i1 %i.anv, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit552.thread.i.us, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.anw = fmul fast float %i.ane, %i.anr
  %i.anx = fadd fast float %i.anw, %i.ang
  %i.any = fmul fast float %i.anx, %i.anr
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit552.thread.i.us

_ZL13activation_ssfiRKN4ncnn3MatE.exit552.thread.i.us: ; preds = %bb.ah, %bb.ag, %_ZL13activation_ssfiRKN4ncnn3MatE.exit553.thread.i.us
  %.1600669.i.us = phi float [ %i.any, %bb.ah ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit553.thread.i.us ], [ %i.anr, %bb.ag ]
  %i.anz = extractelement <2 x float> %i.anc, i64 0 ; 5 uses
  %i.aoa = fcmp fast olt float %i.anz, %i.ani
  br i1 %i.aoa, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit551.thread.i.us, label %bb.ai

bb.ai:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit552.thread.i.us
  %i.aob = fdiv fast float 1.000000e+00, %i.ane
  %i.aoc = fadd fast float %i.ani, %i.aob
  %i.aod = fcmp fast ogt float %i.anz, %i.aoc
  br i1 %i.aod, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit551.thread.i.us, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.aoe = fmul fast float %i.ane, %i.anz
  %i.aof = fadd fast float %i.aoe, %i.ang
  %i.aog = fmul fast float %i.aof, %i.anz
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit551.thread.i.us

_ZL13activation_ssfiRKN4ncnn3MatE.exit551.thread.i.us: ; preds = %bb.aj, %bb.ai, %_ZL13activation_ssfiRKN4ncnn3MatE.exit552.thread.i.us
  %.1602705.i.us = phi float [ %i.aog, %bb.aj ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit552.thread.i.us ], [ %i.anz, %bb.ai ] ; 2 uses
  %i.aoh = extractelement <2 x float> %i.anc, i64 1 ; 4 uses
end_hunk_16
begin_hunk_17_@_ZN4ncnnL26conv3x3s1_winograd43_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined.17:bb.a
  %i.bod = fdiv fast <4 x float> splat (float 1.000000e+00), %i.boc
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit842.thread1342.us.i: ; preds = %bb.ae
  %i.boe = load ptr, ptr %15, align 8, !tbaa !37  ; 2 uses
  %i.bof = load float, ptr %i.boe, align 4, !tbaa !56
  %i.bog = insertelement <4 x float> poison, float %i.bof, i64 0
  %i.boh = shufflevector <4 x float> %i.bog, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.boi = getelementptr inbounds nuw i8, ptr %i.boe, i64 4
  %i.boj = load float, ptr %i.boi, align 4, !tbaa !56
  %i.bok = insertelement <4 x float> poison, float %i.boj, i64 0
  %i.bol = shufflevector <4 x float> %i.bok, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bom = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.avc, <4 x float> nofpclass(nan inf) %i.boh)
  %i.bon = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.bom, <4 x float> nofpclass(nan inf) %i.bol)
  %i.boo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ave, <4 x float> nofpclass(nan inf) %i.boh)
  %i.bop = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.boo, <4 x float> nofpclass(nan inf) %i.bol)
  %i.boq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.avg, <4 x float> nofpclass(nan inf) %i.boh)
  %i.bor = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.boq, <4 x float> nofpclass(nan inf) %i.bol)
  %i.bos = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.avj, <4 x float> nofpclass(nan inf) %i.boh)
  %i.bot = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.bos, <4 x float> nofpclass(nan inf) %i.bol)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit842.thread1339.us.i: ; preds = %bb.ae
  %i.bou = load ptr, ptr %15, align 8, !tbaa !37
  %i.bov = load float, ptr %i.bou, align 4, !tbaa !56
  %i.bow = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.avc)
  %i.box = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.avc)
  %i.boy = insertelement <4 x float> poison, float %i.bov, i64 0
  %i.boz = shufflevector <4 x float> %i.boy, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bpa = fmul fast <4 x float> %i.boz, %i.box
  %i.bpb = fadd fast <4 x float> %i.bpa, %i.bow
  %i.bpc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ave)
  %i.bpd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ave)
  %i.bpe = fmul fast <4 x float> %i.bpd, %i.boz
  %i.bpf = fadd fast <4 x float> %i.bpe, %i.bpc
  %i.bpg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.avg)
  %i.bph = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.avg)
  %i.bpi = fmul fast <4 x float> %i.bph, %i.boz
  %i.bpj = fadd fast <4 x float> %i.bpi, %i.bpg
  %i.bpk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.avj)
  %i.bpl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.avj)
  %i.bpm = fmul fast <4 x float> %i.bpl, %i.boz
  %i.bpn = fadd fast <4 x float> %i.bpm, %i.bpk
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit842.thread.us.i: ; preds = %bb.ae
  %i.bpo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.avc, <4 x float> zeroinitializer)
  %i.bpp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ave, <4 x float> zeroinitializer)
  %i.bpq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.avg, <4 x float> zeroinitializer)
  %i.bpr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.avj, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i: ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit842.thread.us.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit842.thread1339.us.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit842.thread1342.us.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit842.thread1345.us.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit842.thread1348.us.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit842.thread1351.us.i, %bb.ae
  %.0.i8371394.us.i = phi <4 x float> [ %i.awg, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit842.thread1351.us.i ], [ %i.bpq, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit842.thread.us.i ], [ %i.bpj, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit842.thread1339.us.i ], [ %i.bor, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit842.thread1342.us.i ], [ %i.bnb, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit842.thread1345.us.i ], [ %i.bgm, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit842.thread1348.us.i ], [ %i.avg, %bb.ae ] ; 2 uses
  %.0.i841133813571392.us.i = phi <4 x float> [ %i.avw, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit842.thread1351.us.i ], [ %i.bpo, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit842.thread.us.i ], [ %i.bpb, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit842.thread1339.us.i ], [ %i.bon, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit842.thread1342.us.i ], [ %i.bkx, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit842.thread1345.us.i ], [ %i.azu, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit842.thread1348.us.i ], [ %i.avc, %bb.ae ] ; 2 uses
  %.0.i83913591390.us.i = phi <4 x float> [ %i.awb, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit842.thread1351.us.i ], [ %i.bpp, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit842.thread.us.i ], [ %i.bpf, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit842.thread1339.us.i ], [ %i.bop, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit842.thread1342.us.i ], [ %i.blz, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit842.thread1345.us.i ], [ %i.bdd, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit842.thread1348.us.i ], [ %i.ave, %bb.ae ] ; 2 uses
  %.0.i836.us.i = phi nsz <4 x float> [ %i.awl, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit842.thread1351.us.i ], [ %i.bpr, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit842.thread.us.i ], [ %i.bpn, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit842.thread1339.us.i ], [ %i.bot, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit842.thread1342.us.i ], [ %i.bod, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit842.thread1345.us.i ], [ %i.bjv, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit842.thread1348.us.i ], [ %i.avj, %bb.ae ] ; 2 uses
  switch i32 %i.ew, label %bb.ar [
    i32 4, label %bb.al
    i32 1, label %bb.af
  ]

bb.af:                                            ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i
  %i.bps = getelementptr inbounds nuw [2 x i8], ptr %.07631979.us.i, i64 %i.ez ; 4 uses
  %i.bpt = getelementptr inbounds nuw i8, ptr %.07631979.us.i, i64 %.idx.i ; 4 uses
  %i.bpu = getelementptr inbounds nuw i8, ptr %.07631979.us.i, i64 %.idx796.i ; 4 uses
  %i.bpv = bitcast <4 x float> %.0.i841133813571392.us.i to <8 x i16> ; 4 uses
  %i.bpw = extractelement <8 x i16> %i.bpv, i64 1
  store i16 %i.bpw, ptr %.07631979.us.i, align 2, !tbaa !117
  %i.bpx = extractelement <8 x i16> %i.bpv, i64 3
  store i16 %i.bpx, ptr %i.bps, align 2, !tbaa !117
  %i.bpy = extractelement <8 x i16> %i.bpv, i64 5
  store i16 %i.bpy, ptr %i.bpt, align 2, !tbaa !117
  %i.bpz = extractelement <8 x i16> %i.bpv, i64 7
  store i16 %i.bpz, ptr %i.bpu, align 2, !tbaa !117
  br i1 %i.aud, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.bqa = bitcast <4 x float> %.0.i83913591390.us.i to <8 x i16> ; 4 uses
  %i.bqb = extractelement <8 x i16> %i.bqa, i64 1
  %i.bqc = getelementptr inbounds nuw i8, ptr %.07631979.us.i, i64 2
  store i16 %i.bqb, ptr %i.bqc, align 2, !tbaa !117
  %i.bqd = extractelement <8 x i16> %i.bqa, i64 3
  %i.bqe = getelementptr inbounds nuw i8, ptr %i.bps, i64 2
  store i16 %i.bqd, ptr %i.bqe, align 2, !tbaa !117
  %i.bqf = extractelement <8 x i16> %i.bqa, i64 5
  %i.bqg = getelementptr inbounds nuw i8, ptr %i.bpt, i64 2
  store i16 %i.bqf, ptr %i.bqg, align 2, !tbaa !117
  %i.bqh = extractelement <8 x i16> %i.bqa, i64 7
  %i.bqi = getelementptr inbounds nuw i8, ptr %i.bpu, i64 2
  store i16 %i.bqh, ptr %i.bqi, align 2, !tbaa !117
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  br i1 %i.auf, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.bqj = bitcast <4 x float> %.0.i8371394.us.i to <8 x i16> ; 4 uses
  %i.bqk = extractelement <8 x i16> %i.bqj, i64 1
  %i.bql = getelementptr inbounds nuw i8, ptr %.07631979.us.i, i64 4
  store i16 %i.bqk, ptr %i.bql, align 2, !tbaa !117
  %i.bqm = extractelement <8 x i16> %i.bqj, i64 3
  %i.bqn = getelementptr inbounds nuw i8, ptr %i.bps, i64 4
  store i16 %i.bqm, ptr %i.bqn, align 2, !tbaa !117
  %i.bqo = extractelement <8 x i16> %i.bqj, i64 5
  %i.bqp = getelementptr inbounds nuw i8, ptr %i.bpt, i64 4
  store i16 %i.bqo, ptr %i.bqp, align 2, !tbaa !117
  %i.bqq = extractelement <8 x i16> %i.bqj, i64 7
  %i.bqr = getelementptr inbounds nuw i8, ptr %i.bpu, i64 4
  store i16 %i.bqq, ptr %i.bqr, align 2, !tbaa !117
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  br i1 %i.auh, label %bb.ak, label %bb.ar

bb.ak:                                            ; preds = %bb.aj
  %i.bqs = bitcast <4 x float> %.0.i836.us.i to <8 x i16> ; 4 uses
  %i.bqt = extractelement <8 x i16> %i.bqs, i64 1
  %i.bqu = getelementptr inbounds nuw i8, ptr %.07631979.us.i, i64 6
  store i16 %i.bqt, ptr %i.bqu, align 2, !tbaa !117
  %i.bqv = extractelement <8 x i16> %i.bqs, i64 3
  %i.bqw = getelementptr inbounds nuw i8, ptr %i.bps, i64 6
  store i16 %i.bqv, ptr %i.bqw, align 2, !tbaa !117
  %i.bqx = extractelement <8 x i16> %i.bqs, i64 5
  %i.bqy = getelementptr inbounds nuw i8, ptr %i.bpt, i64 6
  store i16 %i.bqx, ptr %i.bqy, align 2, !tbaa !117
  %i.bqz = extractelement <8 x i16> %i.bqs, i64 7
  %i.bra = getelementptr inbounds nuw i8, ptr %i.bpu, i64 6
  store i16 %i.bqz, ptr %i.bra, align 2, !tbaa !117
  br label %bb.ar

bb.al:                                            ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i
  %i.brb = bitcast <4 x float> %.0.i841133813571392.us.i to <4 x i32>
  %i.brc = lshr <4 x i32> %i.brb, splat (i32 16)
  %i.brd = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.brc, <4 x i32> poison)
  %i.bre = bitcast <8 x i16> %i.brd to <2 x i64>
  %i.brf = extractelement <2 x i64> %i.bre, i64 0
  store i64 %i.brf, ptr %.07631979.us.i, align 1, !tbaa !114
  br i1 %i.aud, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.brg = getelementptr inbounds nuw i8, ptr %.07631979.us.i, i64 8
  %i.brh = bitcast <4 x float> %.0.i83913591390.us.i to <4 x i32>
  %i.bri = lshr <4 x i32> %i.brh, splat (i32 16)
  %i.brj = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bri, <4 x i32> poison)
  %i.brk = bitcast <8 x i16> %i.brj to <2 x i64>
  %i.brl = extractelement <2 x i64> %i.brk, i64 0
  store i64 %i.brl, ptr %i.brg, align 1, !tbaa !114
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  br i1 %i.auf, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.brm = getelementptr inbounds nuw i8, ptr %.07631979.us.i, i64 16
  %i.brn = bitcast <4 x float> %.0.i8371394.us.i to <4 x i32>
  %i.bro = lshr <4 x i32> %i.brn, splat (i32 16)
  %i.brp = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bro, <4 x i32> poison)
  %i.brq = bitcast <8 x i16> %i.brp to <2 x i64>
  %i.brr = extractelement <2 x i64> %i.brq, i64 0
  store i64 %i.brr, ptr %i.brm, align 1, !tbaa !114
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  br i1 %i.auh, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.brs = getelementptr inbounds nuw i8, ptr %.07631979.us.i, i64 24
  %i.brt = bitcast <4 x float> %.0.i836.us.i to <4 x i32>
  %i.bru = lshr <4 x i32> %i.brt, splat (i32 16)
  %i.brv = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bru, <4 x i32> poison)
  %i.brw = bitcast <8 x i16> %i.brv to <2 x i64>
  %i.brx = extractelement <2 x i64> %i.brw, i64 0
  store i64 %i.brx, ptr %i.brs, align 1, !tbaa !114
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ak, %bb.aj, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.us.i
  %i.bry = getelementptr inbounds [2 x i8], ptr %.07631979.us.i, i64 %i.ani
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ad
  %.1764.us.i = phi ptr [ %.07631979.us.i, %bb.ad ], [ %i.bry, %bb.ar ]
  %indvars.iv.next2056.i = add nuw nsw i64 %indvars.iv2055.i, 1 ; 2 uses
  %exitcond2058.not.i = icmp eq i64 %indvars.iv.next2056.i, 4
  br i1 %exitcond2058.not.i, label %bb.at, label %bb.ad, !llvm.loop !2286

bb.at:                                            ; preds = %bb.as
  %indvars.iv.next2060.i = add nuw nsw i64 %indvars.iv2059.i, 1 ; 2 uses
  %exitcond2063.not.i = icmp eq i64 %indvars.iv.next2060.i, %wide.trip.count2062.i
  br i1 %exitcond2063.not.i, label %._crit_edge.us1988.i, label %_ZN4ncnn3MatD2Ev.exit806.us.i, !llvm.loop !2287

._crit_edge.us1988.i:                             ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %indvars.iv.next2065.i = add nuw nsw i64 %indvars.iv2064.i, 4 ; 3 uses
  %i.brz = icmp slt i64 %indvars.iv.next2065.i, %invariant.op.i
  br i1 %i.brz, label %.lr.ph1984.split.us.i, label %.preheader1953.loopexit.i, !llvm.loop !2288

.lr.ph1984.split.i:                               ; preds = %.lr.ph1984.i
  %i.bsa = sub i32 %i.eg, %.0751.lcssa.i
  %i.bsb = and i32 %i.bsa, -4
  %i.bsc = add nsw i32 %.0751.lcssa.i, 4
  %i.bsd = add i32 %i.bsc, %i.bsb
  br label %.preheader1953.i

.preheader1953.loopexit.i:                        ; preds = %._crit_edge.us1988.i
  %i.bse = trunc nsw i64 %indvars.iv.next2065.i to i32
  br label %.preheader1953.i

.preheader1953.i:                                 ; preds = %.preheader1953.loopexit.i, %.lr.ph1984.split.i, %.preheader1954.i
  %.1752.lcssa.i = phi i32 [ %.0751.lcssa.i, %.preheader1954.i ], [ %i.bsd, %.lr.ph1984.split.i ], [ %i.bse, %.preheader1953.loopexit.i ] ; 3 uses
  %i.bsf = or disjoint i32 %.1752.lcssa.i, 1
  %i.bsg = icmp slt i32 %i.bsf, %.sroa.speculated124
  br i1 %i.bsg, label %.lr.ph2007.i, label %.preheader.i

.lr.ph2007.i:                                     ; preds = %.preheader1953.i
  %.not792.i = icmp eq ptr %.val81, null
  %i.bsh = icmp sgt i32 %.sroa.speculated120, 0
  %i.bsi = shl nuw nsw i32 %.sroa.speculated120, 1
  %i.bsj = zext nneg i32 %i.bsi to i64
  %i.bsk = shl nuw nsw i32 %.sroa.speculated120, 2
  %i.bsl = zext nneg i32 %i.bsk to i64
  %i.bsm = mul nuw nsw i32 %.sroa.speculated120, 6
  %i.bsn = zext nneg i32 %i.bsm to i64
  %i.bso = shl nuw nsw i32 %.sroa.speculated120, 3
  %i.bsp = zext nneg i32 %i.bso to i64
  %i.bsq = mul nuw nsw i32 %.sroa.speculated120, 10
  %i.bsr = zext nneg i32 %i.bsq to i64
  %i.bss = mul nuw nsw i32 %.sroa.speculated120, 12
  %i.bst = zext nneg i32 %i.bss to i64            ; 30 uses
  %i.bsu = sext i32 %i.eu to i64
  %i.bsv = sext i32 %.1752.lcssa.i to i64         ; 4 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %.val81, i64 %i.ed
  %wide.trip.count2078.i = zext nneg i32 %.sroa.speculated120 to i64
  br i1 %i.bsh, label %.lr.ph2007.i.split.us, label %.lr.ph2007.i.split

.lr.ph2007.i.split.us:                            ; preds = %.lr.ph2007.i
  %i.bsw = load i32, ptr %i.aq, align 4, !tbaa !89, !noalias !2311
  %i.bsx = load ptr, ptr %12, align 8, !tbaa !37, !noalias !2311
  %i.bsy = load i64, ptr %i.at, align 8, !tbaa !38, !noalias !2311
  %i.bsz = load i64, ptr %i.ax, align 8, !tbaa !79, !noalias !2311 ; 2 uses
  %factor.op.mul = mul i64 %i.bsy, %i.bsz
  %i.bta = sext i32 %i.bsw to i64
  %factor.op.mul2003.i.us = mul i64 %i.bsz, %i.bta
  br label %bb.au

bb.au:                                            ; preds = %._crit_edge.i.loopexit.us, %.lr.ph2007.i.split.us
  %indvars.iv2080.i.us = phi i64 [ %i.bsv, %.lr.ph2007.i.split.us ], [ %indvars.iv.next2081.i.us, %._crit_edge.i.loopexit.us ] ; 4 uses
  br i1 %.not792.i, label %.thread.i.us, label %bb.av

bb.av:                                            ; preds = %bb.au
  %gep.i.us = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv2080.i.us
  %i.btb = load <2 x float>, ptr %gep.i.us, align 4, !tbaa !56
  br label %.thread.i.us

.thread.i.us:                                     ; preds = %bb.av, %bb.au
  %i.btc = phi <2 x float> [ %i.btb, %bb.av ], [ zeroinitializer, %bb.au ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.btd = trunc nsw i64 %indvars.iv2080.i.us to i32
  %factor.op.mul.reass.i.us = mul i32 %factor.op.mul1965.i, %i.btd
  %i.bte = sext i32 %factor.op.mul.reass.i.us to i64
  %i.btf = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.bte
  %i.btg = add nsw i64 %indvars.iv2080.i.us, %i.ed
  %.reass = mul i64 %factor.op.mul, %i.btg
  %i.bth = getelementptr inbounds nuw i8, ptr %i.bsx, i64 %.reass
  br label %_ZN4ncnn3MatD2Ev.exit805.i.us

_ZN4ncnn3MatD2Ev.exit805.i.us:                    ; preds = %bb.bw, %.thread.i.us
  %indvars.iv2075.i.us = phi i64 [ 0, %.thread.i.us ], [ %indvars.iv.next2076.i.us, %bb.bw ] ; 3 uses
  %.idx2127.i.us = shl nuw nsw i64 %indvars.iv2075.i.us, 3
  %i.bti = getelementptr inbounds nuw i8, ptr %i.btf, i64 %.idx2127.i.us ; 7 uses
  %i.btj = getelementptr inbounds nuw [4 x i8], ptr %i.bti, i64 %i.bsr ; 2 uses
  %i.btk = getelementptr inbounds nuw [4 x i8], ptr %i.bti, i64 %i.bsp ; 2 uses
  %i.btl = getelementptr inbounds nuw [4 x i8], ptr %i.bti, i64 %i.bsn ; 2 uses
  %i.btm = getelementptr inbounds nuw [4 x i8], ptr %i.bti, i64 %i.bsl ; 2 uses
  %i.btn = getelementptr inbounds nuw [4 x i8], ptr %i.bti, i64 %i.bsj ; 2 uses
  %i.bto = load <2 x float>, ptr %i.btn, align 4, !tbaa !56 ; 2 uses
  %i.btp = load <2 x float>, ptr %i.btm, align 4, !tbaa !56 ; 2 uses
  %i.btq = fadd fast <2 x float> %i.btp, %i.bto   ; 2 uses
  %i.btr = load <2 x float>, ptr %i.btl, align 4, !tbaa !56 ; 2 uses
  %i.bts = load <2 x float>, ptr %i.btk, align 4, !tbaa !56 ; 2 uses
  %i.btt = fadd fast <2 x float> %i.bts, %i.btr   ; 2 uses
  %i.btu = load <2 x float>, ptr %i.bti, align 4, !tbaa !56
  %i.btv = fadd fast <2 x float> %i.btt, %i.btq
  %i.btw = fadd fast <2 x float> %i.btv, %i.btu
  store <2 x float> %i.btw, ptr %i.c, align 16, !tbaa !56
  %i.btx = fsub fast <2 x float> %i.bto, %i.btp   ; 2 uses
  %i.bty = fsub fast <2 x float> %i.btr, %i.bts   ; 2 uses
  %i.btz = fmul fast <2 x float> %i.btx, splat (float f0x3F3504F3)
  %i.bua = fmul fast <2 x float> %i.bty, splat (float f0x3FB504F3)
  %i.bub = fadd fast <2 x float> %i.bua, %i.btz
  store <2 x float> %i.bub, ptr %i.cp, align 16, !tbaa !56
  %i.buc = fmul fast <2 x float> %i.btq, splat (float 5.000000e-01)
  %i.bud = fmul fast <2 x float> %i.btt, splat (float 2.000000e+00)
  %i.bue = fadd fast <2 x float> %i.bud, %i.buc
  store <2 x float> %i.bue, ptr %i.cq, align 16, !tbaa !56
  %i.buf = load <2 x float>, ptr %i.btj, align 4, !tbaa !56
  %i.bug = fmul fast <2 x float> %i.btx, splat (float f0x3EB504F3)
  %i.buh = fadd fast <2 x float> %i.bug, %i.buf
  %i.bui = fmul fast <2 x float> %i.bty, splat (float f0x403504F3)
  %i.buj = fadd fast <2 x float> %i.buh, %i.bui
  store <2 x float> %i.buj, ptr %i.cr, align 16, !tbaa !56
  %i.buk = getelementptr inbounds nuw [4 x i8], ptr %i.bti, i64 %i.bst ; 2 uses
  %i.bul = getelementptr inbounds nuw [4 x i8], ptr %i.btn, i64 %i.bst ; 2 uses
  %i.bum = getelementptr inbounds nuw [4 x i8], ptr %i.btm, i64 %i.bst ; 2 uses
  %i.bun = getelementptr inbounds nuw [4 x i8], ptr %i.btl, i64 %i.bst ; 2 uses
  %i.buo = getelementptr inbounds nuw [4 x i8], ptr %i.btk, i64 %i.bst ; 2 uses
  %i.bup = getelementptr inbounds nuw [4 x i8], ptr %i.btj, i64 %i.bst ; 2 uses
  %i.buq = load <2 x float>, ptr %i.bul, align 4, !tbaa !56 ; 2 uses
  %i.bur = load <2 x float>, ptr %i.bum, align 4, !tbaa !56 ; 2 uses
  %i.bus = fadd fast <2 x float> %i.bur, %i.buq   ; 2 uses
  %i.but = load <2 x float>, ptr %i.bun, align 4, !tbaa !56 ; 2 uses
  %i.buu = load <2 x float>, ptr %i.buo, align 4, !tbaa !56 ; 2 uses
  %i.buv = fadd fast <2 x float> %i.buu, %i.but   ; 2 uses
  %i.buw = load <2 x float>, ptr %i.buk, align 4, !tbaa !56
  %i.bux = fadd fast <2 x float> %i.buv, %i.bus
  %i.buy = fadd fast <2 x float> %i.bux, %i.buw
  store <2 x float> %i.buy, ptr %i.ct, align 8, !tbaa !56
  %i.buz = fsub fast <2 x float> %i.buq, %i.bur   ; 2 uses
  %i.bva = fsub fast <2 x float> %i.but, %i.buu   ; 2 uses
  %i.bvb = fmul fast <2 x float> %i.buz, splat (float f0x3F3504F3)
  %i.bvc = fmul fast <2 x float> %i.bva, splat (float f0x3FB504F3)
  %i.bvd = fadd fast <2 x float> %i.bvc, %i.bvb
  store <2 x float> %i.bvd, ptr %i.cu, align 8, !tbaa !56
  %i.bve = fmul fast <2 x float> %i.bus, splat (float 5.000000e-01)
  %i.bvf = fmul fast <2 x float> %i.buv, splat (float 2.000000e+00)
  %i.bvg = fadd fast <2 x float> %i.bvf, %i.bve
  store <2 x float> %i.bvg, ptr %i.cv, align 8, !tbaa !56
  %i.bvh = load <2 x float>, ptr %i.bup, align 4, !tbaa !56
  %i.bvi = fmul fast <2 x float> %i.buz, splat (float f0x3EB504F3)
  %i.bvj = fadd fast <2 x float> %i.bvi, %i.bvh
  %i.bvk = fmul fast <2 x float> %i.bva, splat (float f0x403504F3)
  %i.bvl = fadd fast <2 x float> %i.bvj, %i.bvk
  store <2 x float> %i.bvl, ptr %i.cw, align 8, !tbaa !56
  %i.bvm = getelementptr inbounds nuw [4 x i8], ptr %i.buk, i64 %i.bst ; 2 uses
  %i.bvn = getelementptr inbounds nuw [4 x i8], ptr %i.bul, i64 %i.bst ; 2 uses
  %i.bvo = getelementptr inbounds nuw [4 x i8], ptr %i.bum, i64 %i.bst ; 2 uses
  %i.bvp = getelementptr inbounds nuw [4 x i8], ptr %i.bun, i64 %i.bst ; 2 uses
  %i.bvq = getelementptr inbounds nuw [4 x i8], ptr %i.buo, i64 %i.bst ; 2 uses
  %i.bvr = getelementptr inbounds nuw [4 x i8], ptr %i.bup, i64 %i.bst ; 2 uses
  %i.bvs = load <2 x float>, ptr %i.bvn, align 4, !tbaa !56 ; 2 uses
  %i.bvt = load <2 x float>, ptr %i.bvo, align 4, !tbaa !56 ; 2 uses
  %i.bvu = fadd fast <2 x float> %i.bvt, %i.bvs   ; 2 uses
  %i.bvv = load <2 x float>, ptr %i.bvp, align 4, !tbaa !56 ; 2 uses
  %i.bvw = load <2 x float>, ptr %i.bvq, align 4, !tbaa !56 ; 2 uses
  %i.bvx = fadd fast <2 x float> %i.bvw, %i.bvv   ; 2 uses
  %i.bvy = load <2 x float>, ptr %i.bvm, align 4, !tbaa !56
  %i.bvz = fadd fast <2 x float> %i.bvx, %i.bvu
  %i.bwa = fadd fast <2 x float> %i.bvz, %i.bvy
  store <2 x float> %i.bwa, ptr %i.cx, align 16, !tbaa !56
  %i.bwb = fsub fast <2 x float> %i.bvs, %i.bvt   ; 2 uses
  %i.bwc = fsub fast <2 x float> %i.bvv, %i.bvw   ; 2 uses
  %i.bwd = fmul fast <2 x float> %i.bwb, splat (float f0x3F3504F3)
  %i.bwe = fmul fast <2 x float> %i.bwc, splat (float f0x3FB504F3)
  %i.bwf = fadd fast <2 x float> %i.bwe, %i.bwd
  store <2 x float> %i.bwf, ptr %i.cy, align 16, !tbaa !56
  %i.bwg = fmul fast <2 x float> %i.bvu, splat (float 5.000000e-01)
  %i.bwh = fmul fast <2 x float> %i.bvx, splat (float 2.000000e+00)
  %i.bwi = fadd fast <2 x float> %i.bwh, %i.bwg
  store <2 x float> %i.bwi, ptr %i.cz, align 16, !tbaa !56
  %i.bwj = load <2 x float>, ptr %i.bvr, align 4, !tbaa !56
  %i.bwk = fmul fast <2 x float> %i.bwb, splat (float f0x3EB504F3)
  %i.bwl = fadd fast <2 x float> %i.bwk, %i.bwj
  %i.bwm = fmul fast <2 x float> %i.bwc, splat (float f0x403504F3)
  %i.bwn = fadd fast <2 x float> %i.bwl, %i.bwm
  store <2 x float> %i.bwn, ptr %i.da, align 16, !tbaa !56
  %i.bwo = getelementptr inbounds nuw [4 x i8], ptr %i.bvm, i64 %i.bst ; 2 uses
  %i.bwp = getelementptr inbounds nuw [4 x i8], ptr %i.bvn, i64 %i.bst ; 2 uses
  %i.bwq = getelementptr inbounds nuw [4 x i8], ptr %i.bvo, i64 %i.bst ; 2 uses
  %i.bwr = getelementptr inbounds nuw [4 x i8], ptr %i.bvp, i64 %i.bst ; 2 uses
  %i.bws = getelementptr inbounds nuw [4 x i8], ptr %i.bvq, i64 %i.bst ; 2 uses
  %i.bwt = getelementptr inbounds nuw [4 x i8], ptr %i.bvr, i64 %i.bst ; 2 uses
  %i.bwu = load <2 x float>, ptr %i.bwp, align 4, !tbaa !56 ; 2 uses
  %i.bwv = load <2 x float>, ptr %i.bwq, align 4, !tbaa !56 ; 2 uses
  %i.bww = fadd fast <2 x float> %i.bwv, %i.bwu   ; 2 uses
  %i.bwx = load <2 x float>, ptr %i.bwr, align 4, !tbaa !56 ; 2 uses
  %i.bwy = load <2 x float>, ptr %i.bws, align 4, !tbaa !56 ; 2 uses
  %i.bwz = fadd fast <2 x float> %i.bwy, %i.bwx   ; 2 uses
  %i.bxa = load <2 x float>, ptr %i.bwo, align 4, !tbaa !56
  %i.bxb = fadd fast <2 x float> %i.bwz, %i.bww
  %i.bxc = fadd fast <2 x float> %i.bxb, %i.bxa
  store <2 x float> %i.bxc, ptr %i.db, align 8, !tbaa !56
  %i.bxd = fsub fast <2 x float> %i.bwu, %i.bwv   ; 2 uses
  %i.bxe = fsub fast <2 x float> %i.bwx, %i.bwy   ; 2 uses
  %i.bxf = fmul fast <2 x float> %i.bxd, splat (float f0x3F3504F3)
  %i.bxg = fmul fast <2 x float> %i.bxe, splat (float f0x3FB504F3)
  %i.bxh = fadd fast <2 x float> %i.bxg, %i.bxf
  store <2 x float> %i.bxh, ptr %i.dc, align 8, !tbaa !56
  %i.bxi = fmul fast <2 x float> %i.bww, splat (float 5.000000e-01)
  %i.bxj = fmul fast <2 x float> %i.bwz, splat (float 2.000000e+00)
  %i.bxk = fadd fast <2 x float> %i.bxj, %i.bxi
  store <2 x float> %i.bxk, ptr %i.dd, align 8, !tbaa !56
  %i.bxl = load <2 x float>, ptr %i.bwt, align 4, !tbaa !56
  %i.bxm = fmul fast <2 x float> %i.bxd, splat (float f0x3EB504F3)
  %i.bxn = fadd fast <2 x float> %i.bxm, %i.bxl
  %i.bxo = fmul fast <2 x float> %i.bxe, splat (float f0x403504F3)
  %i.bxp = fadd fast <2 x float> %i.bxn, %i.bxo
  store <2 x float> %i.bxp, ptr %i.de, align 8, !tbaa !56
  %i.bxq = getelementptr inbounds nuw [4 x i8], ptr %i.bwo, i64 %i.bst ; 2 uses
  %i.bxr = getelementptr inbounds nuw [4 x i8], ptr %i.bwp, i64 %i.bst ; 2 uses
  %i.bxs = getelementptr inbounds nuw [4 x i8], ptr %i.bwq, i64 %i.bst ; 2 uses
  %i.bxt = getelementptr inbounds nuw [4 x i8], ptr %i.bwr, i64 %i.bst ; 2 uses
end_hunk_17
begin_hunk_18_@_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.md = icmp sgt i32 %i.mc, 0
  br i1 %i.md, label %.lr.ph818, label %.loopexit782

.lr.ph818:                                        ; preds = %.preheader781
  %i.me = load ptr, ptr %11, align 8, !tbaa !109
  %i.mf = load i64, ptr %12, align 8, !tbaa !108  ; 7 uses
  %i.mg = getelementptr [2 x i8], ptr %gep837, i64 %i.mf
  %.idx243 = shl i64 %i.mf, 2
  %i.mh = getelementptr i8, ptr %gep837, i64 %.idx243
  %.idx244 = mul i64 %i.mf, 6
  %i.mi = getelementptr i8, ptr %gep837, i64 %.idx244
  %.idx245 = shl i64 %i.mf, 3
  %i.mj = getelementptr i8, ptr %gep837, i64 %.idx245
  %.idx246 = mul i64 %i.mf, 10
  %i.mk = getelementptr i8, ptr %gep837, i64 %.idx246
  %.idx247 = mul i64 %i.mf, 12
  %i.ml = getelementptr i8, ptr %gep837, i64 %.idx247
  %.idx248 = mul i64 %i.mf, 14
  %i.mm = getelementptr i8, ptr %gep837, i64 %.idx248
  %wide.trip.count981 = zext nneg i32 %i.mc to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph818, %bb.h
  %indvars.iv976 = phi i64 [ 0, %.lr.ph818 ], [ %indvars.iv.next977, %bb.h ] ; 2 uses
  %.5816 = phi ptr [ %.0222828, %.lr.ph818 ], [ %i.qx, %bb.h ] ; 9 uses
  %.6728815 = phi <8 x float> [ %.1723827, %.lr.ph818 ], [ %i.py, %bb.h ]
  %.5743814 = phi <8 x float> [ %.0738826, %.lr.ph818 ], [ %i.qg, %bb.h ]
  %.5757813 = phi <8 x float> [ %.0752825, %.lr.ph818 ], [ %i.qo, %bb.h ]
  %.5769812 = phi <8 x float> [ %.0764824, %.lr.ph818 ], [ %i.qw, %bb.h ]
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %indvars.iv976
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !81
  %i.mp = load <8 x i16>, ptr %.5816, align 16, !tbaa !114 ; 2 uses
  %i.mq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mr = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.mp, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ms = shufflevector <8 x i16> %i.mq, <8 x i16> %i.mr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mt = bitcast <16 x i16> %i.ms to <8 x float>
  %i.mu = getelementptr inbounds nuw i8, ptr %.5816, i64 16
  %i.mv = load <8 x i16>, ptr %i.mu, align 16, !tbaa !114 ; 2 uses
  %i.mw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mx = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.mv, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.my = shufflevector <8 x i16> %i.mw, <8 x i16> %i.mx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mz = bitcast <16 x i16> %i.my to <8 x float>
  %i.na = getelementptr inbounds nuw i8, ptr %.5816, i64 32
  %i.nb = load <8 x i16>, ptr %i.na, align 16, !tbaa !114 ; 2 uses
  %i.nc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.nb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.nd = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.nb, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ne = shufflevector <8 x i16> %i.nc, <8 x i16> %i.nd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.nf = bitcast <16 x i16> %i.ne to <8 x float>
  %i.ng = getelementptr inbounds nuw i8, ptr %.5816, i64 48
  %i.nh = load <8 x i16>, ptr %i.ng, align 16, !tbaa !114 ; 2 uses
  %i.ni = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.nh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.nj = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.nh, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.nk = shufflevector <8 x i16> %i.ni, <8 x i16> %i.nj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.nl = bitcast <16 x i16> %i.nk to <8 x float>
  %i.nm = getelementptr inbounds nuw i8, ptr %.5816, i64 64
  %i.nn = load <8 x i16>, ptr %i.nm, align 16, !tbaa !114 ; 2 uses
  %i.no = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.nn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.np = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.nn, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.nq = shufflevector <8 x i16> %i.no, <8 x i16> %i.np, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.nr = bitcast <16 x i16> %i.nq to <8 x float>
  %i.ns = getelementptr inbounds nuw i8, ptr %.5816, i64 80
  %i.nt = load <8 x i16>, ptr %i.ns, align 16, !tbaa !114 ; 2 uses
  %i.nu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.nt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.nv = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.nt, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.nw = shufflevector <8 x i16> %i.nu, <8 x i16> %i.nv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.nx = bitcast <16 x i16> %i.nw to <8 x float>
  %i.ny = getelementptr inbounds nuw i8, ptr %.5816, i64 96
  %i.nz = load <8 x i16>, ptr %i.ny, align 16, !tbaa !114 ; 2 uses
  %i.oa = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.nz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ob = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.nz, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.oc = shufflevector <8 x i16> %i.oa, <8 x i16> %i.ob, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.od = bitcast <16 x i16> %i.oc to <8 x float>
  %i.oe = getelementptr inbounds nuw i8, ptr %.5816, i64 112
  %i.of = load <8 x i16>, ptr %i.oe, align 16, !tbaa !114 ; 2 uses
  %i.og = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.of, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.oh = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.of, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.oi = shufflevector <8 x i16> %i.og, <8 x i16> %i.oh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.oj = bitcast <16 x i16> %i.oi to <8 x float>
  %i.ok = sext i32 %i.mo to i64                   ; 8 uses
  %i.ol = getelementptr inbounds [2 x i8], ptr %gep837, i64 %i.ok
  %i.om = load i16, ptr %i.ol, align 2, !tbaa !117
  %i.on = zext i16 %i.om to i32
  %i.oo = shl nuw i32 %i.on, 16
  %i.op = insertelement <8 x i32> poison, i32 %i.oo, i64 0
  %i.oq = bitcast <8 x i32> %i.op to <8 x float>
  %i.or = shufflevector <8 x float> %i.oq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.os = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mt, <8 x float> nofpclass(nan inf) %i.or, <8 x float> nofpclass(nan inf) %.6728815)
  %i.ot = getelementptr [2 x i8], ptr %i.mg, i64 %i.ok
  %i.ou = load i16, ptr %i.ot, align 2, !tbaa !117
  %i.ov = zext i16 %i.ou to i32
  %i.ow = shl nuw i32 %i.ov, 16
  %i.ox = insertelement <8 x i32> poison, i32 %i.ow, i64 0
  %i.oy = bitcast <8 x i32> %i.ox to <8 x float>
  %i.oz = shufflevector <8 x float> %i.oy, <8 x float> poison, <8 x i32> zeroinitializer
  %i.pa = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mz, <8 x float> nofpclass(nan inf) %i.oz, <8 x float> nofpclass(nan inf) %.5743814)
  %i.pb = getelementptr [2 x i8], ptr %i.mh, i64 %i.ok
  %i.pc = load i16, ptr %i.pb, align 2, !tbaa !117
  %i.pd = zext i16 %i.pc to i32
  %i.pe = shl nuw i32 %i.pd, 16
  %i.pf = insertelement <8 x i32> poison, i32 %i.pe, i64 0
  %i.pg = bitcast <8 x i32> %i.pf to <8 x float>
  %i.ph = shufflevector <8 x float> %i.pg, <8 x float> poison, <8 x i32> zeroinitializer
  %i.pi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nf, <8 x float> nofpclass(nan inf) %i.ph, <8 x float> nofpclass(nan inf) %.5757813)
  %i.pj = getelementptr [2 x i8], ptr %i.mi, i64 %i.ok
  %i.pk = load i16, ptr %i.pj, align 2, !tbaa !117
  %i.pl = zext i16 %i.pk to i32
  %i.pm = shl nuw i32 %i.pl, 16
  %i.pn = insertelement <8 x i32> poison, i32 %i.pm, i64 0
  %i.po = bitcast <8 x i32> %i.pn to <8 x float>
  %i.pp = shufflevector <8 x float> %i.po, <8 x float> poison, <8 x i32> zeroinitializer
  %i.pq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nl, <8 x float> nofpclass(nan inf) %i.pp, <8 x float> nofpclass(nan inf) %.5769812)
  %i.pr = getelementptr [2 x i8], ptr %i.mj, i64 %i.ok
  %i.ps = load i16, ptr %i.pr, align 2, !tbaa !117
  %i.pt = zext i16 %i.ps to i32
  %i.pu = shl nuw i32 %i.pt, 16
  %i.pv = insertelement <8 x i32> poison, i32 %i.pu, i64 0
  %i.pw = bitcast <8 x i32> %i.pv to <8 x float>
  %i.px = shufflevector <8 x float> %i.pw, <8 x float> poison, <8 x i32> zeroinitializer
  %i.py = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nr, <8 x float> nofpclass(nan inf) %i.px, <8 x float> nofpclass(nan inf) %i.os) ; 2 uses
  %i.pz = getelementptr [2 x i8], ptr %i.mk, i64 %i.ok
  %i.qa = load i16, ptr %i.pz, align 2, !tbaa !117
  %i.qb = zext i16 %i.qa to i32
  %i.qc = shl nuw i32 %i.qb, 16
  %i.qd = insertelement <8 x i32> poison, i32 %i.qc, i64 0
  %i.qe = bitcast <8 x i32> %i.qd to <8 x float>
  %i.qf = shufflevector <8 x float> %i.qe, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nx, <8 x float> nofpclass(nan inf) %i.qf, <8 x float> nofpclass(nan inf) %i.pa) ; 2 uses
  %i.qh = getelementptr [2 x i8], ptr %i.ml, i64 %i.ok
  %i.qi = load i16, ptr %i.qh, align 2, !tbaa !117
  %i.qj = zext i16 %i.qi to i32
  %i.qk = shl nuw i32 %i.qj, 16
  %i.ql = insertelement <8 x i32> poison, i32 %i.qk, i64 0
  %i.qm = bitcast <8 x i32> %i.ql to <8 x float>
  %i.qn = shufflevector <8 x float> %i.qm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.od, <8 x float> nofpclass(nan inf) %i.qn, <8 x float> nofpclass(nan inf) %i.pi) ; 2 uses
  %i.qp = getelementptr [2 x i8], ptr %i.mm, i64 %i.ok
  %i.qq = load i16, ptr %i.qp, align 2, !tbaa !117
  %i.qr = zext i16 %i.qq to i32
  %i.qs = shl nuw i32 %i.qr, 16
  %i.qt = insertelement <8 x i32> poison, i32 %i.qs, i64 0
  %i.qu = bitcast <8 x i32> %i.qt to <8 x float>
  %i.qv = shufflevector <8 x float> %i.qu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oj, <8 x float> nofpclass(nan inf) %i.qv, <8 x float> nofpclass(nan inf) %i.pq) ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %.5816, i64 128
  %indvars.iv.next977 = add nuw nsw i64 %indvars.iv976, 1 ; 2 uses
  %exitcond982.not = icmp eq i64 %indvars.iv.next977, %wide.trip.count981
  br i1 %exitcond982.not, label %.loopexit782.loopexit, label %bb.h, !llvm.loop !2522

.loopexit782.loopexit:                            ; preds = %bb.h
  %scevgep978 = getelementptr i8, ptr %.0222828, i64 128
  %i.qy = add nsw i32 %i.mc, -1
  %i.qz = zext nneg i32 %i.qy to i64
  %i.ra = shl nuw nsw i64 %i.qz, 7
  %scevgep979 = getelementptr i8, ptr %scevgep978, i64 %i.ra
  br label %.loopexit782

.loopexit782:                                     ; preds = %.preheader784, %.loopexit785.loopexit, %bb.f, %.loopexit783.loopexit, %.loopexit782.loopexit, %.preheader781, %.loopexit783
  %.6770 = phi nsz <8 x float> [ %.0764824, %.loopexit783 ], [ %.0764824, %.preheader781 ], [ %i.qw, %.loopexit782.loopexit ], [ %.0764824, %bb.f ], [ %i.lx, %.loopexit783.loopexit ], [ %i.he, %.loopexit785.loopexit ], [ %.0764824, %.preheader784 ] ; 2 uses
  %.6758 = phi nsz <8 x float> [ %.0752825, %.loopexit783 ], [ %.0752825, %.preheader781 ], [ %i.qo, %.loopexit782.loopexit ], [ %.0752825, %bb.f ], [ %i.lp, %.loopexit783.loopexit ], [ %i.gw, %.loopexit785.loopexit ], [ %.0752825, %.preheader784 ] ; 2 uses
  %.6744 = phi nsz <8 x float> [ %.0738826, %.loopexit783 ], [ %.0738826, %.preheader781 ], [ %i.qg, %.loopexit782.loopexit ], [ %.0738826, %bb.f ], [ %i.lh, %.loopexit783.loopexit ], [ %i.go, %.loopexit785.loopexit ], [ %.0738826, %.preheader784 ] ; 2 uses
  %.7729 = phi nsz <8 x float> [ %.1723827, %.loopexit783 ], [ %.1723827, %.preheader781 ], [ %i.py, %.loopexit782.loopexit ], [ %.1723827, %bb.f ], [ %i.kz, %.loopexit783.loopexit ], [ %i.gg, %.loopexit785.loopexit ], [ %.1723827, %.preheader784 ] ; 2 uses
  %.6 = phi ptr [ %.0222828, %.loopexit783 ], [ %.0222828, %.preheader781 ], [ %scevgep979, %.loopexit782.loopexit ], [ %.0222828, %bb.f ], [ %scevgep972, %.loopexit783.loopexit ], [ %scevgep967, %.loopexit785.loopexit ], [ %.0222828, %.preheader784 ] ; 2 uses
  %i.rb = add nuw nsw i32 %.0221829, 8            ; 2 uses
  %i.rc = or disjoint i32 %i.rb, 7
  %i.rd = icmp slt i32 %i.rc, %i.ad
  br i1 %i.rd, label %.noexc253, label %.preheader788, !llvm.loop !2523

.preheader787:                                    ; preds = %.loopexit, %.preheader788
  %.7771.lcssa = phi <8 x float> [ %.0764.lcssa, %.preheader788 ], [ %.11775, %.loopexit ]
  %.7759.lcssa = phi <8 x float> [ %.0752.lcssa, %.preheader788 ], [ %.11763, %.loopexit ]
  %.7745.lcssa = phi <8 x float> [ %.0738.lcssa, %.preheader788 ], [ %.11749, %.loopexit ] ; 3 uses
  %.8730.lcssa = phi <8 x float> [ %.1723.lcssa, %.preheader788 ], [ %.12734, %.loopexit ] ; 3 uses
  %.7.lcssa = phi ptr [ %.0222.lcssa, %.preheader788 ], [ %.11, %.loopexit ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0221.lcssa, %.preheader788 ], [ %i.ye, %.loopexit ] ; 5 uses
  %i.re = or disjoint i32 %.1.lcssa, 1
  %i.rf = icmp slt i32 %i.re, %i.ad
  br i1 %i.rf, label %.noexc249.lr.ph, label %.preheader786

.noexc249.lr.ph:                                  ; preds = %.preheader787
  %i.rg = load i32, ptr %i.u, align 4, !tbaa !89, !noalias !2540
  %i.rh = load ptr, ptr %4, align 8, !tbaa !37, !noalias !2540
  %i.ri = load i64, ptr %i.v, align 8, !tbaa !38, !noalias !2540
  %i.rj = load i64, ptr %i.w, align 8, !tbaa !79, !noalias !2540 ; 2 uses
  %factor.op.mul895 = mul i64 %i.ri, %i.rj
  %i.rk = sext i32 %i.rg to i64
  %i.rl = load i32, ptr %8, align 4, !tbaa !81
  %i.rm = mul nsw i32 %i.rl, %.0227926
  %i.rn = sext i32 %i.rm to i64
  %i.ro = mul i64 %i.rj, %i.rk
  %i.rp = mul i64 %i.ro, %i.rn
  %invariant.gep897 = getelementptr i8, ptr %i.rh, i64 %i.rp
  %i.rq = load i32, ptr %9, align 4, !tbaa !81
  %i.rr = mul nsw i32 %i.rq, %.0226922
  %i.rs = sext i32 %i.rr to i64
  %invariant.gep898 = getelementptr [2 x i8], ptr %invariant.gep897, i64 %i.rs
  %i.rt = load i32, ptr %10, align 4, !tbaa !81   ; 3 uses
  %i.ru = icmp sgt i32 %i.rt, 0
  br i1 %i.ru, label %.noexc249.lr.ph.split.us, label %.noexc249.preheader

.noexc249.preheader:                              ; preds = %.noexc249.lr.ph
  %i.rv = add nsw i32 %.1.lcssa, 2
  %i.rw = sub i32 %i.bb, %.1.lcssa
  %i.rx = and i32 %i.rw, -2
  %i.ry = add i32 %i.rv, %i.rx
  br label %.preheader786

.noexc249.lr.ph.split.us:                         ; preds = %.noexc249.lr.ph
  %i.rz = load ptr, ptr %11, align 8, !tbaa !109
  %i.sa = load i64, ptr %12, align 8, !tbaa !108
  %i.sb = add nsw i32 %i.rt, -1
  %i.sc = zext nneg i32 %i.sb to i64
  %i.sd = shl nuw nsw i64 %i.sc, 5
  %i.se = zext i32 %.1.lcssa to i64
  %wide.trip.count1002 = zext nneg i32 %i.rt to i64
  br label %.noexc249.us

.noexc249.us:                                     ; preds = %._crit_edge.us, %.noexc249.lr.ph.split.us
  %indvars.iv1004 = phi i64 [ %indvars.iv.next1005, %._crit_edge.us ], [ %i.se, %.noexc249.lr.ph.split.us ] ; 2 uses
  %.12889.us = phi ptr [ %scevgep1000, %._crit_edge.us ], [ %.7.lcssa, %.noexc249.lr.ph.split.us ] ; 2 uses
  %.13735888.us = phi <8 x float> [ %i.tb, %._crit_edge.us ], [ %.8730.lcssa, %.noexc249.lr.ph.split.us ]
  %.12750887.us = phi <8 x float> [ %i.tj, %._crit_edge.us ], [ %.7745.lcssa, %.noexc249.lr.ph.split.us ]
  %.reass896.us = mul i64 %factor.op.mul895, %indvars.iv1004
  %gep899.us = getelementptr i8, ptr %invariant.gep898, i64 %.reass896.us ; 2 uses
  %i.sf = getelementptr [2 x i8], ptr %gep899.us, i64 %i.sa
  br label %bb.i

bb.i:                                             ; preds = %.noexc249.us, %bb.i
  %indvars.iv997 = phi i64 [ 0, %.noexc249.us ], [ %indvars.iv.next998, %bb.i ] ; 2 uses
  %.13881.us = phi ptr [ %.12889.us, %.noexc249.us ], [ %i.tk, %bb.i ] ; 3 uses
  %.14736880.us = phi <8 x float> [ %.13735888.us, %.noexc249.us ], [ %i.tb, %bb.i ]
  %.13751879.us = phi <8 x float> [ %.12750887.us, %.noexc249.us ], [ %i.tj, %bb.i ]
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %indvars.iv997
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !81
  %i.si = load <8 x i16>, ptr %.13881.us, align 16, !tbaa !114 ; 2 uses
  %i.sj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.si, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sk = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.si, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.sl = shufflevector <8 x i16> %i.sj, <8 x i16> %i.sk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.sm = bitcast <16 x i16> %i.sl to <8 x float>
  %i.sn = getelementptr inbounds nuw i8, ptr %.13881.us, i64 16
  %i.so = load <8 x i16>, ptr %i.sn, align 16, !tbaa !114 ; 2 uses
  %i.sp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.so, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sq = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.so, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.sr = shufflevector <8 x i16> %i.sp, <8 x i16> %i.sq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ss = bitcast <16 x i16> %i.sr to <8 x float>
  %i.st = sext i32 %i.sh to i64                   ; 2 uses
  %i.su = getelementptr inbounds [2 x i8], ptr %gep899.us, i64 %i.st
  %i.sv = load i16, ptr %i.su, align 2, !tbaa !117
  %i.sw = zext i16 %i.sv to i32
  %i.sx = shl nuw i32 %i.sw, 16
  %i.sy = insertelement <8 x i32> poison, i32 %i.sx, i64 0
  %i.sz = bitcast <8 x i32> %i.sy to <8 x float>
  %i.ta = shufflevector <8 x float> %i.sz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.tb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.sm, <8 x float> nofpclass(nan inf) %i.ta, <8 x float> nofpclass(nan inf) %.14736880.us) ; 3 uses
  %i.tc = getelementptr [2 x i8], ptr %i.sf, i64 %i.st
  %i.td = load i16, ptr %i.tc, align 2, !tbaa !117
  %i.te = zext i16 %i.td to i32
  %i.tf = shl nuw i32 %i.te, 16
  %i.tg = insertelement <8 x i32> poison, i32 %i.tf, i64 0
  %i.th = bitcast <8 x i32> %i.tg to <8 x float>
  %i.ti = shufflevector <8 x float> %i.th, <8 x float> poison, <8 x i32> zeroinitializer
  %i.tj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ss, <8 x float> nofpclass(nan inf) %i.ti, <8 x float> nofpclass(nan inf) %.13751879.us) ; 3 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %.13881.us, i64 32
  %indvars.iv.next998 = add nuw nsw i64 %indvars.iv997, 1 ; 2 uses
  %exitcond1003.not = icmp eq i64 %indvars.iv.next998, %wide.trip.count1002
  br i1 %exitcond1003.not, label %._crit_edge.us, label %bb.i, !llvm.loop !2526

._crit_edge.us:                                   ; preds = %bb.i
  %scevgep999 = getelementptr i8, ptr %.12889.us, i64 32
  %scevgep1000 = getelementptr i8, ptr %scevgep999, i64 %i.sd ; 2 uses
  %indvars.iv.next1005 = add nuw nsw i64 %indvars.iv1004, 2 ; 3 uses
  %i.tl = trunc i64 %indvars.iv.next1005 to i32
  %i.tm = or i32 %i.tl, 1
  %i.tn = icmp slt i32 %i.tm, %i.ad
  br i1 %i.tn, label %.noexc249.us, label %.preheader786.loopexit, !llvm.loop !2527

.noexc251:                                        ; preds = %.noexc251.lr.ph, %.loopexit
  %.1867 = phi i32 [ %.0221.lcssa, %.noexc251.lr.ph ], [ %i.ye, %.loopexit ] ; 2 uses
  %.7866 = phi ptr [ %.0222.lcssa, %.noexc251.lr.ph ], [ %.11, %.loopexit ] ; 7 uses
  %.8730865 = phi <8 x float> [ %.1723.lcssa, %.noexc251.lr.ph ], [ %.12734, %.loopexit ] ; 5 uses
  %.7745864 = phi <8 x float> [ %.0738.lcssa, %.noexc251.lr.ph ], [ %.11749, %.loopexit ] ; 5 uses
  %.7759863 = phi <8 x float> [ %.0752.lcssa, %.noexc251.lr.ph ], [ %.11763, %.loopexit ] ; 5 uses
  %.7771862 = phi <8 x float> [ %.0764.lcssa, %.noexc251.lr.ph ], [ %.11775, %.loopexit ] ; 5 uses
  %i.to = sdiv i32 %.1867, %i.ab
  %i.tp = sext i32 %i.to to i64
  %.reass875 = mul i64 %factor.op.mul874, %i.tp
  %gep878 = getelementptr i8, ptr %invariant.gep877, i64 %.reass875 ; 5 uses
  br i1 %i.aq, label %.preheader779, label %.loopexit780

.preheader779:                                    ; preds = %.noexc251
  %i.tq = load i32, ptr %10, align 4, !tbaa !81   ; 3 uses
  %i.tr = icmp sgt i32 %i.tq, 0
  br i1 %i.tr, label %.lr.ph844, label %.loopexit

.lr.ph844:                                        ; preds = %.preheader779
  %i.ts = load ptr, ptr %11, align 8, !tbaa !109
  %wide.trip.count988 = zext nneg i32 %i.tq to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph844, %bb.j
  %indvars.iv983 = phi i64 [ 0, %.lr.ph844 ], [ %indvars.iv.next984, %bb.j ] ; 2 uses
  %.8842 = phi ptr [ %.7866, %.lr.ph844 ], [ %i.vj, %bb.j ] ; 5 uses
  %.9731841 = phi <8 x float> [ %.8730865, %.lr.ph844 ], [ %i.uz, %bb.j ]
  %.8746840 = phi <8 x float> [ %.7745864, %.lr.ph844 ], [ %i.vc, %bb.j ]
  %.8760839 = phi <8 x float> [ %.7759863, %.lr.ph844 ], [ %i.vf, %bb.j ]
  %.8772838 = phi <8 x float> [ %.7771862, %.lr.ph844 ], [ %i.vi, %bb.j ]
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.ts, i64 %indvars.iv983
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !81
  %i.tv = sext i32 %i.tu to i64
  %i.tw = getelementptr inbounds [2 x i8], ptr %gep878, i64 %i.tv
  %i.tx = load <8 x i16>, ptr %.8842, align 16, !tbaa !114 ; 2 uses
  %i.ty = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.tx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.tz = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.tx, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ua = shufflevector <8 x i16> %i.ty, <8 x i16> %i.tz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ub = bitcast <16 x i16> %i.ua to <8 x float>
  %i.uc = getelementptr inbounds nuw i8, ptr %.8842, i64 16
  %i.ud = load <8 x i16>, ptr %i.uc, align 16, !tbaa !114 ; 2 uses
  %i.ue = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ud, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.uf = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ud, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ug = shufflevector <8 x i16> %i.ue, <8 x i16> %i.uf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.uh = bitcast <16 x i16> %i.ug to <8 x float>
  %i.ui = getelementptr inbounds nuw i8, ptr %.8842, i64 32
  %i.uj = load <8 x i16>, ptr %i.ui, align 16, !tbaa !114 ; 2 uses
  %i.uk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.uj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ul = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.uj, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.um = shufflevector <8 x i16> %i.uk, <8 x i16> %i.ul, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.un = bitcast <16 x i16> %i.um to <8 x float>
  %i.uo = getelementptr inbounds nuw i8, ptr %.8842, i64 48
  %i.up = load <8 x i16>, ptr %i.uo, align 16, !tbaa !114 ; 2 uses
  %i.uq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.up, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ur = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.up, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.us = shufflevector <8 x i16> %i.uq, <8 x i16> %i.ur, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ut = bitcast <16 x i16> %i.us to <8 x float>
  %i.uu = load <4 x i16>, ptr %i.tw, align 2, !tbaa !117
  %i.uv = zext <4 x i16> %i.uu to <4 x i32>
  %i.uw = shl nuw <4 x i32> %i.uv, splat (i32 16) ; 4 uses
  %i.ux = bitcast <4 x i32> %i.uw to <4 x float>
  %i.uy = shufflevector <4 x float> %i.ux, <4 x float> poison, <8 x i32> zeroinitializer
  %i.uz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ub, <8 x float> nofpclass(nan inf) %i.uy, <8 x float> nofpclass(nan inf) %.9731841) ; 2 uses
  %i.va = bitcast <4 x i32> %i.uw to <4 x float>
  %i.vb = shufflevector <4 x float> %i.va, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.vc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.uh, <8 x float> nofpclass(nan inf) %i.vb, <8 x float> nofpclass(nan inf) %.8746840) ; 2 uses
  %i.vd = bitcast <4 x i32> %i.uw to <4 x float>
  %i.ve = shufflevector <4 x float> %i.vd, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.vf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.un, <8 x float> nofpclass(nan inf) %i.ve, <8 x float> nofpclass(nan inf) %.8760839) ; 2 uses
  %i.vg = bitcast <4 x i32> %i.uw to <4 x float>
  %i.vh = shufflevector <4 x float> %i.vg, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.vi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ut, <8 x float> nofpclass(nan inf) %i.vh, <8 x float> nofpclass(nan inf) %.8772838) ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %.8842, i64 64
  %indvars.iv.next984 = add nuw nsw i64 %indvars.iv983, 1 ; 2 uses
  %exitcond989.not = icmp eq i64 %indvars.iv.next984, %wide.trip.count988
  br i1 %exitcond989.not, label %.loopexit780.loopexit, label %bb.j, !llvm.loop !2528

.loopexit780.loopexit:                            ; preds = %bb.j
  %scevgep985 = getelementptr i8, ptr %.7866, i64 64
  %i.vk = add nsw i32 %i.tq, -1
  %i.vl = zext nneg i32 %i.vk to i64
  %i.vm = shl nuw nsw i64 %i.vl, 6
  %scevgep986 = getelementptr i8, ptr %scevgep985, i64 %i.vm
  br label %.loopexit

.loopexit780:                                     ; preds = %.noexc251
  br i1 %i.ar, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.loopexit780
  %i.vn = load i32, ptr %10, align 4, !tbaa !81   ; 3 uses
  %i.vo = icmp sgt i32 %i.vn, 0
  br i1 %i.vo, label %.lr.ph856, label %.loopexit

.lr.ph856:                                        ; preds = %.preheader
  %i.vp = load ptr, ptr %11, align 8, !tbaa !109
  %i.vq = load i64, ptr %12, align 8, !tbaa !108  ; 3 uses
  %i.vr = getelementptr [2 x i8], ptr %gep878, i64 %i.vq
  %.idx241 = shl i64 %i.vq, 2
  %i.vs = getelementptr i8, ptr %gep878, i64 %.idx241
  %.idx242 = mul i64 %i.vq, 6
  %i.vt = getelementptr i8, ptr %gep878, i64 %.idx242
  %wide.trip.count995 = zext nneg i32 %i.vn to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph856, %bb.k
  %indvars.iv990 = phi i64 [ 0, %.lr.ph856 ], [ %indvars.iv.next991, %bb.k ] ; 2 uses
  %.10854 = phi ptr [ %.7866, %.lr.ph856 ], [ %i.ya, %bb.k ] ; 5 uses
  %.11733853 = phi <8 x float> [ %.8730865, %.lr.ph856 ], [ %i.xb, %bb.k ]
  %.10748852 = phi <8 x float> [ %.7745864, %.lr.ph856 ], [ %i.xj, %bb.k ]
  %.10762851 = phi <8 x float> [ %.7759863, %.lr.ph856 ], [ %i.xr, %bb.k ]
  %.10774850 = phi <8 x float> [ %.7771862, %.lr.ph856 ], [ %i.xz, %bb.k ]
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.vp, i64 %indvars.iv990
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !81
  %i.vw = load <8 x i16>, ptr %.10854, align 16, !tbaa !114 ; 2 uses
  %i.vx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.vw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.vy = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.vw, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.vz = shufflevector <8 x i16> %i.vx, <8 x i16> %i.vy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.wa = bitcast <16 x i16> %i.vz to <8 x float>
  %i.wb = getelementptr inbounds nuw i8, ptr %.10854, i64 16
  %i.wc = load <8 x i16>, ptr %i.wb, align 16, !tbaa !114 ; 2 uses
  %i.wd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.wc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.we = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.wc, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.wf = shufflevector <8 x i16> %i.wd, <8 x i16> %i.we, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.wg = bitcast <16 x i16> %i.wf to <8 x float>
  %i.wh = getelementptr inbounds nuw i8, ptr %.10854, i64 32
  %i.wi = load <8 x i16>, ptr %i.wh, align 16, !tbaa !114 ; 2 uses
end_hunk_18
