Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/snowdec?download=true
inline.NumInlined: 37
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@decode_frame:bb.a
  %i.aai = mul nsw i32 %i.aab, %i.zj
  %i.aaj = sext i32 %i.aai to i64
  %i.aak = sub nsw i64 0, %i.aaj
  %i.aal = call i32 @llvm.smin.i32(i32 %i.aab, i32 0)
  %.0239.i = add i32 %i.zi, %i.aal                ; 2 uses
  %.0236.i = call i32 @llvm.smax.i32(i32 %i.aab, i32 0) ; 8 uses
  %i.aam = add i32 %.0236.i, %.0239.i
  %i.aan = icmp sgt i32 %i.aam, %i.zs
  %i.aao = sub i32 %i.zs, %.0236.i
  %spec.select262.i = select i1 %i.aan, i32 %i.aao, i32 %.0239.i ; 6 uses
  %i.aap = icmp slt i32 %spec.select262.i, 1
  %i.aaq = mul i32 %i.zr, %.0236.i                ; 2 uses
  %i.aar = mul i32 %.0236.i, %i.zo                ; 2 uses
  %i.aas = mul i32 %i.aaf, 3
  %i.aat = sext i32 %i.aas to i64                 ; 2 uses
  %i.aau = sext i32 %i.aaf to i64                 ; 3 uses
  %i.aav = sext i32 %i.zo to i64                  ; 6 uses
  %i.aaw = lshr i32 %i.zj, 1                      ; 2 uses
  %i.aax = zext nneg i32 %i.aaw to i64            ; 4 uses
  %i.aay = mul i32 %i.aaw, %i.zj
  %i.aaz = zext i32 %i.aay to i64                 ; 5 uses
  %i.aba = sext i32 %i.zr to i64                  ; 2 uses
  %i.abb = sext i32 %spec.select262.i to i64      ; 2 uses
  %i.abc = zext i32 %i.zj to i64                  ; 2 uses
  %i.abd = zext i32 %i.zh to i64                  ; 2 uses
  %i.abe = zext nneg i32 %i.zy to i64             ; 2 uses
  %i.abf = add nuw i32 %i.yv, 1
  %wide.trip.count746 = zext i32 %i.abf to i64
  %.1234.i.idx = select i1 %i.aah, i64 %i.aak, i64 0 ; 6 uses
  %invariant.gep979 = getelementptr i8, ptr %i.zk, i64 %.1234.i.idx
  %smax = call i64 @llvm.smax.i64(i64 %i.abb, i64 1)
  %i.abg = add nsw i64 %smax, -1                  ; 3 uses
  %i.abh = mul i64 %i.abg, %i.aav                 ; 5 uses
  %scevgep1036 = getelementptr i8, ptr %i.zq, i64 %i.abh
  %i.abi = add nsw i64 %.1234.i.idx, %i.aax       ; 2 uses
  %i.abj = getelementptr i8, ptr %i.zk, i64 %i.abi
  %scevgep1040 = getelementptr i8, ptr %i.abj, i64 %i.aaz
  %i.abk = mul i64 %i.abg, %i.abc                 ; 4 uses
  %i.abl = getelementptr i8, ptr %i.zk, i64 %i.abi
  %i.abm = getelementptr i8, ptr %i.abl, i64 %i.abk
  %scevgep1043 = getelementptr i8, ptr %i.abm, i64 %i.aaz
  %i.abn = getelementptr i8, ptr %i.zk, i64 %.1234.i.idx
  %scevgep1045 = getelementptr i8, ptr %i.abn, i64 %i.aaz
  %i.abo = getelementptr i8, ptr %i.zk, i64 %.1234.i.idx
  %i.abp = getelementptr i8, ptr %i.abo, i64 %i.abk
  %scevgep1047 = getelementptr i8, ptr %i.abp, i64 %i.aaz
  %i.abq = add nsw i64 %.1234.i.idx, %i.aax       ; 2 uses
  %scevgep1049 = getelementptr i8, ptr %i.zk, i64 %i.abq
  %i.abr = getelementptr i8, ptr %i.zk, i64 %i.abq
  %scevgep1051 = getelementptr i8, ptr %i.abr, i64 %i.abk
  %i.abs = getelementptr i8, ptr %i.zk, i64 %.1234.i.idx
  %scevgep1053 = getelementptr i8, ptr %i.abs, i64 %i.abk
  %i.abt = shl i64 %i.abg, 1
  %i.abu = mul i64 %i.abt, %i.aba
  %scevgep1063 = getelementptr i8, ptr %i.ym, i64 %i.abu
  %i.abv = or i32 %i.zr, %i.zo
  %op.rdx1152 = icmp slt i32 %i.abv, 0
  br label %bb.dr

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.abw = icmp eq i32 %.0.i652, %i.yx
  br i1 %i.abw, label %predict_slice.exit, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.abx = mul i32 %i.zi, %.0.i652                ; 2 uses
  %i.aby = add nuw nsw i32 %.0.i652, 1
  %i.abz = mul nsw i32 %i.zi, %i.aby
  %..i390 = call i32 @llvm.smin.i32(i32 %i.zs, i32 %i.abz) ; 2 uses
  %i.aca = icmp slt i32 %i.abx, %..i390
  %i.acb = icmp sgt i32 %i.zr, 0
  %or.cond707 = select i1 %i.aca, i1 %i.acb, i1 false
  br i1 %or.cond707, label %.preheader.preheader, label %predict_slice.exit

.preheader.preheader:                             ; preds = %bb.dq
  %i.acc = sext i32 %i.abx to i64                 ; 3 uses
  %i.acd = sext i32 %i.zo to i64                  ; 3 uses
  %i.ace = zext nneg i32 %i.zr to i64
  %i.acf = sext i32 %..i390 to i64                ; 3 uses
  %wide.trip.count732 = zext nneg i32 %i.zr to i64 ; 8 uses
  %i.acg = mul nsw i64 %i.acd, %i.acc
  %scevgep1133 = getelementptr i8, ptr %i.zq, i64 %i.acg
  %i.ach = add nsw i64 %i.acf, -1
  %i.aci = mul i64 %i.ach, %i.acd
  %i.acj = getelementptr i8, ptr %i.zq, i64 %i.aci
  %scevgep1134 = getelementptr i8, ptr %i.acj, i64 %wide.trip.count732
  %i.ack = shl nsw i64 %i.acc, 1
  %i.acl = mul nsw i64 %i.ack, %wide.trip.count732
  %scevgep1135 = getelementptr i8, ptr %i.ym, i64 %i.acl
  %i.acm = shl nsw i64 %i.acf, 1
  %i.acn = mul nsw i64 %i.acm, %wide.trip.count732
  %scevgep1136 = getelementptr i8, ptr %i.ym, i64 %i.acn
  %min.iters.check1142 = icmp ult i32 %i.zr, 8
  %bound01137 = icmp ult ptr %scevgep1133, %scevgep1136
  %bound11138 = icmp ult ptr %scevgep1135, %scevgep1134
  %found.conflict1139 = and i1 %bound01137, %bound11138
  %stride.check1140 = icmp slt i32 %i.zo, 0
  %i.aco = or i1 %found.conflict1139, %stride.check1140
  %n.vec1144 = and i64 %wide.trip.count732, 2147483640 ; 3 uses
  %cmp.n1150 = icmp eq i64 %n.vec1144, %wide.trip.count732
  %xtraiter = and i64 %wide.trip.count732, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.acp = add nsw i64 %wide.trip.count732, -1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge639
  %indvars.iv734 = phi i64 [ %i.acc, %.preheader.preheader ], [ %indvars.iv.next735, %._crit_edge639 ] ; 3 uses
  %i.acq = mul nsw i64 %indvars.iv734, %i.ace
  %i.acr = mul nsw i64 %indvars.iv734, %i.acd
  %invariant.gep = getelementptr [2 x i8], ptr %i.ym, i64 %i.acq ; 4 uses
  %invariant.gep975 = getelementptr i8, ptr %i.zq, i64 %i.acr ; 4 uses
  %brmerge = select i1 %min.iters.check1142, i1 true, i1 %i.aco
  br i1 %brmerge, label %scalar.ph1141.preheader, label %vector.body1145

vector.body1145:                                  ; preds = %.preheader, %vector.body1145
  %index1146 = phi i64 [ %index.next1148, %vector.body1145 ], [ 0, %.preheader ] ; 3 uses
  %i.acs = getelementptr [2 x i8], ptr %invariant.gep, i64 %index1146
  %wide.load1147 = load <8 x i16>, ptr %i.acs, align 2, !tbaa !55, !alias.scope !176 ; 2 uses
  %i.act = sext <8 x i16> %wide.load1147 to <8 x i32>
  %i.acu = add nsw <8 x i32> %i.act, splat (i32 2056)
  %i.acv = ashr <8 x i32> %i.acu, splat (i32 4)   ; 2 uses
  %i.acw = icmp ugt <8 x i32> %i.acv, splat (i32 255)
  %i.acx = icmp sgt <8 x i16> %wide.load1147, splat (i16 -2057)
  %i.acy = sext <8 x i1> %i.acx to <8 x i32>
  %i.acz = select <8 x i1> %i.acw, <8 x i32> %i.acy, <8 x i32> %i.acv
  %i.ada = trunc <8 x i32> %i.acz to <8 x i8>
  %i.adb = getelementptr i8, ptr %invariant.gep975, i64 %index1146
  store <8 x i8> %i.ada, ptr %i.adb, align 1, !tbaa !44, !alias.scope !177, !noalias !176
  %index.next1148 = add nuw i64 %index1146, 8     ; 2 uses
  %i.adc = icmp eq i64 %index.next1148, %n.vec1144
  br i1 %i.adc, label %middle.block1149, label %vector.body1145, !llvm.loop !73

middle.block1149:                                 ; preds = %vector.body1145
  br i1 %cmp.n1150, label %._crit_edge639, label %scalar.ph1141.preheader

scalar.ph1141.preheader:                          ; preds = %.preheader, %middle.block1149
  %indvars.iv729.ph = phi i64 [ %n.vec1144, %middle.block1149 ], [ 0, %.preheader ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph1141.prol.loopexit, label %scalar.ph1141.prol

scalar.ph1141.prol:                               ; preds = %scalar.ph1141.preheader
  %gep.prol = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv729.ph
  %i.add = load i16, ptr %gep.prol, align 2, !tbaa !55 ; 2 uses
  %i.ade = sext i16 %i.add to i32
  %i.adf = add nsw i32 %i.ade, 2056
  %i.adg = ashr i32 %i.adf, 4                     ; 2 uses
  %i.adh = icmp ugt i32 %i.adg, 255
  %isnotneg.i391.prol = icmp sgt i16 %i.add, -2057
  %i.adi = sext i1 %isnotneg.i391.prol to i32
  %.0.i392.prol = select i1 %i.adh, i32 %i.adi, i32 %i.adg
  %i.adj = trunc i32 %.0.i392.prol to i8
  %gep976.prol = getelementptr i8, ptr %invariant.gep975, i64 %indvars.iv729.ph
  store i8 %i.adj, ptr %gep976.prol, align 1, !tbaa !44
  %indvars.iv.next730.prol = or disjoint i64 %indvars.iv729.ph, 1
  br label %scalar.ph1141.prol.loopexit

scalar.ph1141.prol.loopexit:                      ; preds = %scalar.ph1141.prol, %scalar.ph1141.preheader
  %indvars.iv729.unr = phi i64 [ %indvars.iv729.ph, %scalar.ph1141.preheader ], [ %indvars.iv.next730.prol, %scalar.ph1141.prol ]
  %i.adk = icmp eq i64 %indvars.iv729.ph, %i.acp
  br i1 %i.adk, label %._crit_edge639, label %scalar.ph1141

scalar.ph1141:                                    ; preds = %scalar.ph1141.prol.loopexit, %scalar.ph1141
  %indvars.iv729 = phi i64 [ %indvars.iv.next730.1, %scalar.ph1141 ], [ %indvars.iv729.unr, %scalar.ph1141.prol.loopexit ] ; 4 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv729
  %i.adl = load i16, ptr %gep, align 2, !tbaa !55 ; 2 uses
  %i.adm = sext i16 %i.adl to i32
  %i.adn = add nsw i32 %i.adm, 2056
  %i.ado = ashr i32 %i.adn, 4                     ; 2 uses
  %i.adp = icmp ugt i32 %i.ado, 255
  %isnotneg.i391 = icmp sgt i16 %i.adl, -2057
  %i.adq = sext i1 %isnotneg.i391 to i32
  %.0.i392 = select i1 %i.adp, i32 %i.adq, i32 %i.ado
  %i.adr = trunc i32 %.0.i392 to i8
  %gep976 = getelementptr i8, ptr %invariant.gep975, i64 %indvars.iv729
  store i8 %i.adr, ptr %gep976, align 1, !tbaa !44
  %indvars.iv.next730 = add nuw nsw i64 %indvars.iv729, 1 ; 2 uses
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv.next730
  %i.ads = load i16, ptr %gep.1, align 2, !tbaa !55 ; 2 uses
  %i.adt = sext i16 %i.ads to i32
  %i.adu = add nsw i32 %i.adt, 2056
  %i.adv = ashr i32 %i.adu, 4                     ; 2 uses
  %i.adw = icmp ugt i32 %i.adv, 255
  %isnotneg.i391.1 = icmp sgt i16 %i.ads, -2057
  %i.adx = sext i1 %isnotneg.i391.1 to i32
  %.0.i392.1 = select i1 %i.adw, i32 %i.adx, i32 %i.adv
  %i.ady = trunc i32 %.0.i392.1 to i8
  %gep976.1 = getelementptr i8, ptr %invariant.gep975, i64 %indvars.iv.next730
  store i8 %i.ady, ptr %gep976.1, align 1, !tbaa !44
  %indvars.iv.next730.1 = add nuw nsw i64 %indvars.iv729, 2 ; 2 uses
  %exitcond733.not.1 = icmp eq i64 %indvars.iv.next730.1, %wide.trip.count732
  br i1 %exitcond733.not.1, label %._crit_edge639, label %scalar.ph1141, !llvm.loop !74

._crit_edge639:                                   ; preds = %scalar.ph1141.prol.loopexit, %scalar.ph1141, %middle.block1149
  %indvars.iv.next735 = add nsw i64 %indvars.iv734, 1 ; 2 uses
  %i.adz = icmp slt i64 %indvars.iv.next735, %i.acf
  br i1 %i.adz, label %.preheader, label %predict_slice.exit, !llvm.loop !75

bb.dr:                                            ; preds = %.lr.ph650, %add_yblock.exit
  %indvars.iv743 = phi i64 [ 0, %.lr.ph650 ], [ %indvars.iv.next744, %add_yblock.exit ] ; 6 uses
  %i.aea = mul i64 %indvars.iv743, %i.abd         ; 2 uses
  %i.aeb = trunc i64 %i.aea to i32
  %i.aec = sub i32 %i.aeb, %i.zy                  ; 2 uses
  %smin = call i32 @llvm.smin.i32(i32 %i.aec, i32 0)
  %5 = add i32 %i.zh, %smin
  %smax1037 = call i32 @llvm.smax.i32(i32 %i.aec, i32 0) ; 4 uses
  %i.aed = add i32 %5, %smax1037
  %smin1038 = call i32 @llvm.smin.i32(i32 %i.zr, i32 %i.aed)
  %i.aee = sub i32 %smin1038, %smax1037
  %i.aef = call i32 @llvm.umax.i32(i32 %i.aee, i32 1)
  %umax = zext i32 %i.aef to i64                  ; 7 uses
  %i.aeg = add i32 %i.aar, %smax1037
  %i.aeh = sext i32 %i.aeg to i64
  %i.aei = getelementptr i8, ptr %scevgep1036, i64 %umax
  %scevgep1039 = getelementptr i8, ptr %i.aei, i64 %i.aeh ; 2 uses
  %i.aej = sub i64 %i.aea, %i.abe
  %smin1041 = call i64 @llvm.smin.i64(i64 %i.aej, i64 0) ; 2 uses
  %i.aek = sub nsw i64 0, %smin1041               ; 3 uses
  %scevgep1042 = getelementptr i8, ptr %scevgep1040, i64 %i.aek
  %i.ael = sub i64 %umax, %smin1041               ; 4 uses
  %scevgep1044 = getelementptr i8, ptr %scevgep1043, i64 %i.ael
  %scevgep1046 = getelementptr i8, ptr %scevgep1045, i64 %i.aek
  %scevgep1048 = getelementptr i8, ptr %scevgep1047, i64 %i.ael
  %scevgep1050 = getelementptr i8, ptr %scevgep1049, i64 %i.aek
  %scevgep1052 = getelementptr i8, ptr %scevgep1051, i64 %i.ael
  %scevgep1054 = getelementptr i8, ptr %scevgep1053, i64 %i.ael
  %i.aem = add i32 %i.aaq, %smax1037
  %i.aen = sext i32 %i.aem to i64
  %i.aeo = add nsw i64 %umax, %i.aen
  %i.aep = shl nsw i64 %i.aeo, 1
  %scevgep1064 = getelementptr i8, ptr %scevgep1063, i64 %i.aep
  %i.aeq = mul nuw nsw i64 %indvars.iv743, %i.abd
  %i.aer = sub nsw i64 %i.aeq, %i.abe             ; 2 uses
  %i.aes = load i32, ptr %i.wt, align 8, !tbaa !52
  %i.aet = load i32, ptr %i.sr, align 8, !tbaa !47 ; 2 uses
  %i.aeu = shl i32 %i.aes, %i.aet                 ; 2 uses
  %i.aev = load i32, ptr %i.wv, align 4, !tbaa !169
  %i.aew = shl i32 %i.aev, %i.aet
  %i.aex = load ptr, ptr %i.xk, align 8, !tbaa !56
  %i.aey = mul nsw i32 %i.aeu, %i.aac
  %i.aez = sext i32 %i.aey to i64
  %i.afa = getelementptr [10 x i8], ptr %i.aex, i64 %indvars.iv743
  %i.afb = getelementptr i8, ptr %i.afa, i64 -10
  %i.afc = getelementptr [10 x i8], ptr %i.afb, i64 %i.aez ; 4 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 10 ; 3 uses
  %i.afe = sext i32 %i.aeu to i64                 ; 2 uses
  %i.aff = getelementptr inbounds [10 x i8], ptr %i.afc, i64 %i.afe ; 3 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 10 ; 3 uses
  %i.afh = load ptr, ptr %i.xl, align 8, !tbaa !180 ; 6 uses
  %i.afi = icmp eq i64 %indvars.iv743, 0
  br i1 %i.afi, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %.not.i393 = icmp slt i64 %indvars.iv743, %i.afe ; 2 uses
  %spec.select.i = select i1 %.not.i393, ptr %i.afd, ptr %i.afc
  %spec.select257.i = select i1 %.not.i393, ptr %i.afg, ptr %i.aff
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %.0228.i = phi ptr [ %i.afc, %bb.ds ], [ %i.afd, %bb.dr ] ; 2 uses
  %.0226.i = phi ptr [ %spec.select.i, %bb.ds ], [ %i.afd, %bb.dr ] ; 2 uses
  %.0224.i = phi ptr [ %i.aff, %bb.ds ], [ %i.afg, %bb.dr ] ; 3 uses
  %.0222.i = phi ptr [ %spec.select257.i, %bb.ds ], [ %i.afg, %bb.dr ] ; 3 uses
  br i1 %i.aag, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %.not249.i = icmp slt i32 %.0.i652, %i.aew      ; 2 uses
  %spec.select258.i = select i1 %.not249.i, ptr %.0224.i, ptr %.0228.i
  %spec.select259.i = select i1 %.not249.i, ptr %.0222.i, ptr %.0226.i
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %.1229.i = phi ptr [ %.0228.i, %bb.du ], [ %.0224.i, %bb.dt ] ; 20 uses
  %.1227.i = phi ptr [ %.0226.i, %bb.du ], [ %.0222.i, %bb.dt ] ; 22 uses
  %.1225.i = phi ptr [ %spec.select258.i, %bb.du ], [ %.0224.i, %bb.dt ] ; 21 uses
  %.1223.i = phi ptr [ %spec.select259.i, %bb.du ], [ %.0222.i, %bb.dt ] ; 20 uses
  %i.afj = trunc nsw i64 %i.aer to i32            ; 2 uses
  %i.afk = call i32 @llvm.smin.i32(i32 %i.afj, i32 0)
  %.0237.i = add nsw i32 %i.afk, %i.zh            ; 2 uses
  %.0235.i = call i32 @llvm.smax.i32(i32 %i.afj, i32 0) ; 8 uses
  %i.afl = call i64 @llvm.smin.i64(i64 %i.aer, i64 0)
  %.0233.i.idx = sub i64 0, %i.afl
  %i.afm = add nsw i32 %.0237.i, %.0235.i
  %i.afn = icmp sgt i32 %i.afm, %i.zr
  %i.afo = sub nsw i32 %i.zr, %.0235.i
  %spec.select261.i = select i1 %i.afn, i32 %i.afo, i32 %.0237.i ; 7 uses
  %gep980 = getelementptr i8, ptr %invariant.gep979, i64 %.0233.i.idx ; 2 uses
  %i.afp = icmp slt i32 %spec.select261.i, 1
  %or.cond5.i = select i1 %i.afp, i1 true, i1 %i.aap
  br i1 %or.cond5.i, label %add_yblock.exit, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.afq = add i32 %.0235.i, %i.aaq
  %i.afr = sext i32 %i.afq to i64
  %i.afs = getelementptr [2 x i8], ptr %i.ym, i64 %i.afr ; 2 uses
  %i.aft = add i32 %.0235.i, %i.aar
  %i.afu = sext i32 %i.aft to i64
  %i.afv = getelementptr i8, ptr %i.zq, i64 %i.afu ; 4 uses
  %i.afw = getelementptr inbounds i8, ptr %i.afh, i64 %i.aat ; 11 uses
  %i.afx = getelementptr inbounds i8, ptr %i.afw, i64 %i.aau ; 5 uses
  call void @ff_snow_pred_block(ptr noundef nonnull %i.i, ptr noundef %i.afw, ptr noundef %i.afh, i64 noundef %i.aav, i32 noundef %.0235.i, i32 noundef %.0236.i, i32 noundef %spec.select261.i, i32 noundef %spec.select262.i, ptr noundef %.1229.i, i32 noundef %i.yq, i32 noundef %i.zr, i32 noundef %i.zs) #9
  %i.afy = getelementptr inbounds nuw i8, ptr %.1229.i, i64 8 ; 3 uses
  %i.afz = load i8, ptr %i.afy, align 2, !tbaa !58 ; 4 uses
  %i.aga = and i8 %i.afz, 1
  %.not.i501 = icmp eq i8 %i.aga, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.1227.i, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !58 ; 2 uses
  %i.agb = and i8 %.pre, 1
  %.not16.i502 = icmp eq i8 %i.agb, 0
  %or.cond987 = select i1 %.not.i501, i1 true, i1 %.not16.i502
  br i1 %or.cond987, label %same_block.exit507, label %.split

.split:                                           ; preds = %bb.dw
  %i.agc = getelementptr inbounds nuw i8, ptr %.1229.i, i64 5
  %i.agd = load i8, ptr %i.agc, align 1, !tbaa !44
  %i.age = getelementptr inbounds nuw i8, ptr %.1227.i, i64 5
  %i.agf = load i8, ptr %i.age, align 1, !tbaa !44
  %i.agg = getelementptr inbounds nuw i8, ptr %.1229.i, i64 6
  %i.agh = load i8, ptr %i.agg, align 2, !tbaa !44
  %i.agi = getelementptr inbounds nuw i8, ptr %.1227.i, i64 6
  %i.agj = load i8, ptr %i.agi, align 2, !tbaa !44
  %i.agk = getelementptr inbounds nuw i8, ptr %.1229.i, i64 7
  %i.agl = load i8, ptr %i.agk, align 1, !tbaa !44
  %i.agm = getelementptr inbounds nuw i8, ptr %.1227.i, i64 7
  %i.agn = load i8, ptr %i.agm, align 1, !tbaa !44
  %i.ago = icmp eq i8 %i.agd, %i.agf
  %i.agp = icmp eq i8 %i.agh, %i.agj
  %i.agq = and i1 %i.ago, %i.agp
  %i.agr = icmp eq i8 %i.agl, %i.agn
  %.not18.i503 = and i1 %i.agq, %i.agr
  br i1 %.not18.i503, label %bb.dy, label %bb.dx

same_block.exit507:                               ; preds = %bb.dw
  %i.ags = load i16, ptr %.1229.i, align 2, !tbaa !59
  %i.agt = sext i16 %i.ags to i32
  %i.agu = load i16, ptr %.1227.i, align 2, !tbaa !59
  %i.agv = sext i16 %i.agu to i32
  %i.agw = sub nsw i32 %i.agt, %i.agv
  %i.agx = getelementptr inbounds nuw i8, ptr %.1229.i, i64 2
  %i.agy = load i16, ptr %i.agx, align 2, !tbaa !60
  %i.agz = sext i16 %i.agy to i32
  %i.aha = getelementptr inbounds nuw i8, ptr %.1227.i, i64 2
  %i.ahb = load i16, ptr %i.aha, align 2, !tbaa !60
  %i.ahc = sext i16 %i.ahb to i32
  %i.ahd = sub nsw i32 %i.agz, %i.ahc
  %i.ahe = or i32 %i.ahd, %i.agw
  %i.ahf = getelementptr inbounds nuw i8, ptr %.1229.i, i64 4
  %i.ahg = load i8, ptr %i.ahf, align 2, !tbaa !61
  %i.ahh = zext i8 %i.ahg to i32
  %i.ahi = getelementptr inbounds nuw i8, ptr %.1227.i, i64 4
  %i.ahj = load i8, ptr %i.ahi, align 2, !tbaa !61
  %i.ahk = zext i8 %i.ahj to i32
  %i.ahl = sub nsw i32 %i.ahh, %i.ahk
  %i.ahm = or i32 %i.ahe, %i.ahl
  %i.ahn = xor i8 %.pre, %i.afz
  %i.aho = and i8 %i.ahn, 1
  %i.ahp = zext nneg i8 %i.aho to i32
  %i.ahq = or i32 %i.ahm, %i.ahp
  %.not17.i506 = icmp eq i32 %i.ahq, 0
  br i1 %.not17.i506, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %.split, %same_block.exit507
  %i.ahr = getelementptr inbounds i8, ptr %i.afx, i64 %i.aau
  call void @ff_snow_pred_block(ptr noundef nonnull %i.i, ptr noundef %i.afx, ptr noundef %i.afh, i64 noundef %i.aav, i32 noundef %.0235.i, i32 noundef %.0236.i, i32 noundef %spec.select261.i, i32 noundef %spec.select262.i, ptr noundef nonnull %.1227.i, i32 noundef %i.yq, i32 noundef %i.zr, i32 noundef %i.zs) #9
  %.pre799 = load i8, ptr %i.afy, align 2, !tbaa !58
  br label %bb.dy

bb.dy:                                            ; preds = %.split, %same_block.exit507, %bb.dx
  %i.ahs = phi i8 [ %.pre799, %bb.dx ], [ %i.afz, %same_block.exit507 ], [ %i.afz, %.split ] ; 6 uses
  %.sroa.7.0 = phi ptr [ %i.afx, %bb.dx ], [ %i.afw, %same_block.exit507 ], [ %i.afw, %.split ] ; 8 uses
  %.0221.i = phi ptr [ %i.ahr, %bb.dx ], [ %i.afx, %same_block.exit507 ], [ %i.afx, %.split ] ; 7 uses
  %i.aht = and i8 %i.ahs, 1
  %.not.i494 = icmp eq i8 %i.aht, 0
  %.phi.trans.insert801 = getelementptr inbounds nuw i8, ptr %.1225.i, i64 8
  %.pre802 = load i8, ptr %.phi.trans.insert801, align 2, !tbaa !58 ; 4 uses
  %i.ahu = and i8 %.pre802, 1
  %.not16.i495 = icmp eq i8 %i.ahu, 0
  %or.cond988 = select i1 %.not.i494, i1 true, i1 %.not16.i495
  br i1 %or.cond988, label %same_block.exit500, label %.split948

.split948:                                        ; preds = %bb.dy
  %i.ahv = getelementptr inbounds nuw i8, ptr %.1229.i, i64 5
  %i.ahw = load i8, ptr %i.ahv, align 1, !tbaa !44
  %i.ahx = getelementptr inbounds nuw i8, ptr %.1225.i, i64 5
  %i.ahy = load i8, ptr %i.ahx, align 1, !tbaa !44
  %i.ahz = getelementptr inbounds nuw i8, ptr %.1229.i, i64 6
  %i.aia = load i8, ptr %i.ahz, align 2, !tbaa !44
  %i.aib = getelementptr inbounds nuw i8, ptr %.1225.i, i64 6
  %i.aic = load i8, ptr %i.aib, align 2, !tbaa !44
  %i.aid = getelementptr inbounds nuw i8, ptr %.1229.i, i64 7
  %i.aie = load i8, ptr %i.aid, align 1, !tbaa !44
  %i.aif = getelementptr inbounds nuw i8, ptr %.1225.i, i64 7
  %i.aig = load i8, ptr %i.aif, align 1, !tbaa !44
  %i.aih = icmp eq i8 %i.ahw, %i.ahy
  %i.aii = icmp eq i8 %i.aia, %i.aic
  %i.aij = and i1 %i.aih, %i.aii
  %i.aik = icmp eq i8 %i.aie, %i.aig
  %.not18.i496 = and i1 %i.aij, %i.aik
  br i1 %.not18.i496, label %bb.eb, label %bb.dz

same_block.exit500:                               ; preds = %bb.dy
  %i.ail = load i16, ptr %.1229.i, align 2, !tbaa !59
  %i.aim = sext i16 %i.ail to i32
  %i.ain = load i16, ptr %.1225.i, align 2, !tbaa !59
  %i.aio = sext i16 %i.ain to i32
  %i.aip = sub nsw i32 %i.aim, %i.aio
  %i.aiq = getelementptr inbounds nuw i8, ptr %.1229.i, i64 2
end_hunk_0
