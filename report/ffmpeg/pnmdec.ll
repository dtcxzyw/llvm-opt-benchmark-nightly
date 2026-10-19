Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/pnmdec?download=true
inline.NumInlined: 16
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@pnm_decode_frame:bb.a
  %i.yt = mul <8 x i32> %broadcast.splat1192, %i.ys
  %i.yu = add <8 x i32> %i.yt, splat (i32 16384)
  %i.yv = lshr <8 x i32> %i.yu, splat (i32 15)
  %i.yw = trunc <8 x i32> %i.yv to <8 x i16>
  %i.yx = getelementptr inbounds nuw [2 x i8], ptr %.0498724, i64 %index1194
  store <8 x i16> %i.yw, ptr %i.yx, align 2, !tbaa !125, !alias.scope !134, !noalias !133
  %index.next1196 = add nuw i64 %index1194, 8     ; 2 uses
  %i.yy = icmp eq i64 %index.next1196, %n.vec1190
  br i1 %i.yy, label %middle.block1197, label %vector.body1193, !llvm.loop !64

middle.block1197:                                 ; preds = %vector.body1193
  br i1 %cmp.n1198, label %.lr.ph721.preheader, label %.lr.ph.preheader1358

.lr.ph.preheader1358:                             ; preds = %.lr.ph.preheader, %middle.block1197
  %indvars.iv848.ph = phi i64 [ %n.vec1190, %middle.block1197 ], [ 0, %.lr.ph.preheader ] ; 5 uses
  br i1 %lcmp.mod1388.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader1358
  %i.yz = shl nuw nsw i64 %indvars.iv848.ph, 1
  %i.za = getelementptr inbounds nuw i8, ptr %i.yn, i64 %i.yz
  %i.zb = load i16, ptr %i.za, align 1, !tbaa !118
  %i.zc = tail call i16 @llvm.bswap.i16(i16 %i.zb)
  %i.zd = zext i16 %i.zc to i32
  %i.ze = mul i32 %i.tt, %i.zd
  %i.zf = add i32 %i.ze, 16384
  %i.zg = lshr i32 %i.zf, 15
  %i.zh = trunc i32 %i.zg to i16
  %i.zi = getelementptr inbounds nuw [2 x i8], ptr %.0498724, i64 %indvars.iv848.ph
  store i16 %i.zh, ptr %i.zi, align 2, !tbaa !125
  %indvars.iv.next849.prol = or disjoint i64 %indvars.iv848.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader1358
  %indvars.iv848.unr = phi i64 [ %indvars.iv848.ph, %.lr.ph.preheader1358 ], [ %indvars.iv.next849.prol, %.lr.ph.prol ]
  %i.zj = icmp eq i64 %indvars.iv848.ph, %i.yi
  br i1 %i.zj, label %.lr.ph721.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv848 = phi i64 [ %indvars.iv.next849.1, %.lr.ph ], [ %indvars.iv848.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.zk = shl nuw i64 %indvars.iv848, 1
  %i.zl = and i64 %i.zk, 4294967294
  %i.zm = getelementptr inbounds nuw i8, ptr %i.yn, i64 %i.zl
  %i.zn = load i16, ptr %i.zm, align 1, !tbaa !118
  %i.zo = tail call i16 @llvm.bswap.i16(i16 %i.zn)
  %i.zp = zext i16 %i.zo to i32
  %i.zq = mul i32 %i.tt, %i.zp
  %i.zr = add i32 %i.zq, 16384
  %i.zs = lshr i32 %i.zr, 15
  %i.zt = trunc i32 %i.zs to i16
  %i.zu = getelementptr inbounds nuw [2 x i8], ptr %.0498724, i64 %indvars.iv848
  store i16 %i.zt, ptr %i.zu, align 2, !tbaa !125
  %indvars.iv.next849 = add nuw nsw i64 %indvars.iv848, 1 ; 2 uses
  %i.zv = shl nuw i64 %indvars.iv.next849, 1
  %i.zw = and i64 %i.zv, 4294967294
  %i.zx = getelementptr inbounds nuw i8, ptr %i.yn, i64 %i.zw
  %i.zy = load i16, ptr %i.zx, align 1, !tbaa !118
  %i.zz = tail call i16 @llvm.bswap.i16(i16 %i.zy)
  %i.aaa = zext i16 %i.zz to i32
  %i.aab = mul i32 %i.tt, %i.aaa
  %i.aac = add i32 %i.aab, 16384
  %i.aad = lshr i32 %i.aac, 15
  %i.aae = trunc i32 %i.aad to i16
  %i.aaf = getelementptr inbounds nuw [2 x i8], ptr %.0498724, i64 %indvars.iv.next849
  store i16 %i.aae, ptr %i.aaf, align 2, !tbaa !125
  %indvars.iv.next849.1 = add nuw nsw i64 %indvars.iv848, 2 ; 2 uses
  %exitcond852.not.1 = icmp eq i64 %indvars.iv.next849.1, %wide.trip.count851
  br i1 %exitcond852.not.1, label %.lr.ph721.preheader, label %.lr.ph, !llvm.loop !65

.lr.ph721.preheader:                              ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block1197
  %i.aag = getelementptr inbounds i8, ptr %i.yn, i64 %i.xe ; 5 uses
  store ptr %i.aag, ptr %i.f, align 8, !tbaa !111
  %brmerge1431 = select i1 %or.cond1338, i1 true, i1 %i.yl
  br i1 %brmerge1431, label %.lr.ph721.preheader1357, label %vector.body1171

vector.body1171:                                  ; preds = %.lr.ph721.preheader, %vector.body1171
  %index1172 = phi i64 [ %index.next1174, %vector.body1171 ], [ 0, %.lr.ph721.preheader ] ; 3 uses
  %i.aah = shl nuw i64 %index1172, 1
  %i.aai = and i64 %i.aah, 4294967280
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aag, i64 %i.aai
  %wide.load1173 = load <8 x i16>, ptr %i.aaj, align 1, !tbaa !118, !alias.scope !135
  %i.aak = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load1173)
  %i.aal = zext <8 x i16> %i.aak to <8 x i32>
  %i.aam = mul <8 x i32> %broadcast.splat1170, %i.aal
  %i.aan = add <8 x i32> %i.aam, splat (i32 16384)
  %i.aao = lshr <8 x i32> %i.aan, splat (i32 15)
  %i.aap = trunc <8 x i32> %i.aao to <8 x i16>
  %i.aaq = getelementptr inbounds nuw [2 x i8], ptr %.0497725, i64 %index1172
  store <8 x i16> %i.aap, ptr %i.aaq, align 2, !tbaa !125, !alias.scope !136, !noalias !135
  %index.next1174 = add nuw i64 %index1172, 8     ; 2 uses
  %i.aar = icmp eq i64 %index.next1174, %n.vec1168
  br i1 %i.aar, label %middle.block1175, label %vector.body1171, !llvm.loop !69

middle.block1175:                                 ; preds = %vector.body1171
  br i1 %cmp.n1176, label %._crit_edge722, label %.lr.ph721.preheader1357

.lr.ph721.preheader1357:                          ; preds = %.lr.ph721.preheader, %middle.block1175
  %indvars.iv853.ph = phi i64 [ %n.vec1168, %middle.block1175 ], [ 0, %.lr.ph721.preheader ] ; 5 uses
  br i1 %lcmp.mod1391.not, label %.lr.ph721.prol.loopexit, label %.lr.ph721.prol

.lr.ph721.prol:                                   ; preds = %.lr.ph721.preheader1357
  %i.aas = shl nuw nsw i64 %indvars.iv853.ph, 1
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aag, i64 %i.aas
  %i.aau = load i16, ptr %i.aat, align 1, !tbaa !118
  %i.aav = tail call i16 @llvm.bswap.i16(i16 %i.aau)
  %i.aaw = zext i16 %i.aav to i32
  %i.aax = mul i32 %i.tt, %i.aaw
  %i.aay = add i32 %i.aax, 16384
  %i.aaz = lshr i32 %i.aay, 15
  %i.aba = trunc i32 %i.aaz to i16
  %i.abb = getelementptr inbounds nuw [2 x i8], ptr %.0497725, i64 %indvars.iv853.ph
  store i16 %i.aba, ptr %i.abb, align 2, !tbaa !125
  %indvars.iv.next854.prol = or disjoint i64 %indvars.iv853.ph, 1
  br label %.lr.ph721.prol.loopexit

.lr.ph721.prol.loopexit:                          ; preds = %.lr.ph721.prol, %.lr.ph721.preheader1357
  %indvars.iv853.unr = phi i64 [ %indvars.iv853.ph, %.lr.ph721.preheader1357 ], [ %indvars.iv.next854.prol, %.lr.ph721.prol ]
  %i.abc = icmp eq i64 %indvars.iv853.ph, %i.ym
  br i1 %i.abc, label %._crit_edge722, label %.lr.ph721

.lr.ph721:                                        ; preds = %.lr.ph721.prol.loopexit, %.lr.ph721
  %indvars.iv853 = phi i64 [ %indvars.iv.next854.1, %.lr.ph721 ], [ %indvars.iv853.unr, %.lr.ph721.prol.loopexit ] ; 4 uses
  %i.abd = shl nuw i64 %indvars.iv853, 1
  %i.abe = and i64 %i.abd, 4294967294
  %i.abf = getelementptr inbounds nuw i8, ptr %i.aag, i64 %i.abe
  %i.abg = load i16, ptr %i.abf, align 1, !tbaa !118
  %i.abh = tail call i16 @llvm.bswap.i16(i16 %i.abg)
  %i.abi = zext i16 %i.abh to i32
  %i.abj = mul i32 %i.tt, %i.abi
  %i.abk = add i32 %i.abj, 16384
  %i.abl = lshr i32 %i.abk, 15
  %i.abm = trunc i32 %i.abl to i16
  %i.abn = getelementptr inbounds nuw [2 x i8], ptr %.0497725, i64 %indvars.iv853
  store i16 %i.abm, ptr %i.abn, align 2, !tbaa !125
  %indvars.iv.next854 = add nuw nsw i64 %indvars.iv853, 1 ; 2 uses
  %i.abo = shl nuw i64 %indvars.iv.next854, 1
  %i.abp = and i64 %i.abo, 4294967294
  %i.abq = getelementptr inbounds nuw i8, ptr %i.aag, i64 %i.abp
  %i.abr = load i16, ptr %i.abq, align 1, !tbaa !118
  %i.abs = tail call i16 @llvm.bswap.i16(i16 %i.abr)
  %i.abt = zext i16 %i.abs to i32
  %i.abu = mul i32 %i.tt, %i.abt
  %i.abv = add i32 %i.abu, 16384
  %i.abw = lshr i32 %i.abv, 15
  %i.abx = trunc i32 %i.abw to i16
  %i.aby = getelementptr inbounds nuw [2 x i8], ptr %.0497725, i64 %indvars.iv.next854
  store i16 %i.abx, ptr %i.aby, align 2, !tbaa !125
  %indvars.iv.next854.1 = add nuw nsw i64 %indvars.iv853, 2 ; 2 uses
  %exitcond858.not.1 = icmp eq i64 %indvars.iv.next854.1, %wide.trip.count857
  br i1 %exitcond858.not.1, label %._crit_edge722, label %.lr.ph721, !llvm.loop !70

._crit_edge722:                                   ; preds = %.lr.ph721.prol.loopexit, %.lr.ph721, %middle.block1175, %.preheader618
  %i.abz = getelementptr inbounds i8, ptr %i.yn, i64 %i.xe
  %i.aca = getelementptr inbounds i8, ptr %i.abz, i64 %i.xe ; 2 uses
  store ptr %i.aca, ptr %i.f, align 8, !tbaa !111
  %i.acb = getelementptr inbounds [2 x i8], ptr %.0498724, i64 %i.xi
  %i.acc = getelementptr inbounds [2 x i8], ptr %.0497725, i64 %i.xm
  %i.acd = add nuw nsw i32 %.4531723, 1           ; 2 uses
  %exitcond859.not = icmp eq i32 %i.acd, %i.wx
  br i1 %exitcond859.not, label %.loopexit, label %.preheader618, !llvm.loop !71

bb.as:                                            ; preds = %bb.f
  %i.ace = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.acf = load i32, ptr %i.ace, align 4, !tbaa !137
  %.not544 = icmp eq i32 %i.acf, 0
  %i.acg = load i32, ptr %i.q, align 8, !tbaa !115 ; 11 uses
  %i.ach = load i32, ptr %i.s, align 4, !tbaa !116 ; 10 uses
  %i.aci = load ptr, ptr %i.j, align 8, !tbaa !113
  %i.acj = load ptr, ptr %i.f, align 8, !tbaa !111 ; 5 uses
  %i.ack = ptrtoint ptr %i.aci to i64
  %i.acl = ptrtoint ptr %i.acj to i64
  %i.acm = sub i64 %i.ack, %i.acl                 ; 2 uses
  br i1 %.not544, label %bb.at, label %bb.ay

bb.at:                                            ; preds = %bb.as
  %i.acn = mul nsw i32 %i.ach, %i.acg
  %i.aco = sext i32 %i.acn to i64
  %i.acp = mul nsw i64 %i.aco, 12
  %i.acq = icmp sgt i64 %i.acp, %i.acm
  br i1 %i.acq, label %.critedge567, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.acr = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.acs = load float, ptr %i.acr, align 8, !tbaa !138
  %i.act = fdiv nsz float 1.000000e+00, %i.acs    ; 7 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.acv = load i32, ptr %i.acu, align 8, !tbaa !139
  %.not545 = icmp eq i32 %i.acv, 0
  %i.acw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.acx = load ptr, ptr %i.acw, align 8, !tbaa !121 ; 7 uses
  %i.acy = load ptr, ptr %1, align 8, !tbaa !121  ; 7 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ada = load ptr, ptr %i.acz, align 8, !tbaa !121 ; 7 uses
  %i.adb = icmp sgt i32 %i.ach, 0                 ; 2 uses
  br i1 %.not545, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  br i1 %i.adb, label %.preheader623.lr.ph, label %.loopexit622

.preheader623.lr.ph:                              ; preds = %bb.av
  %i.adc = icmp sgt i32 %i.acg, 0
  %i.add = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %4 = load <3 x i32>, ptr %i.add, align 8, !tbaa !122 ; 3 uses
  %5 = shufflevector <3 x i32> %4, <3 x i32> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 1>
  %i.ade = load i32, ptr %i.add, align 8, !tbaa !122
  %6 = extractelement <3 x i32> %4, i64 2
  %7 = sdiv i32 %6, 4
  %8 = sext i32 %7 to i64                         ; 2 uses
  %i.adf = sdiv i32 %i.ade, 4
  %i.adg = sext i32 %i.adf to i64                 ; 2 uses
  %9 = extractelement <3 x i32> %4, i64 1
  %i.adh = sdiv i32 %9, 4
  %i.adi = sext i32 %i.adh to i64                 ; 2 uses
  br i1 %i.adc, label %.preheader623.lr.ph.split, label %.loopexit622

.preheader623.lr.ph.split:                        ; preds = %.preheader623.lr.ph
  %wide.trip.count833 = zext nneg i32 %i.acg to i64 ; 7 uses
  %i.adj = add nsw i32 %i.ach, -1
  %i.adk = zext i32 %i.adj to i64                 ; 3 uses
  %i.adl = mul nsw i64 %8, %i.adk
  %i.adm = add nsw i64 %i.adl, %wide.trip.count833
  %i.adn = shl i64 %i.adm, 2
  %scevgep1063.a = getelementptr i8, ptr %i.acx, i64 %i.adn ; 4 uses
  %i.ado = mul nsw i64 %i.adg, %i.adk
  %i.adp = add nsw i64 %i.ado, %wide.trip.count833
  %i.adq = shl i64 %i.adp, 2
  %scevgep1064.a = getelementptr i8, ptr %i.acy, i64 %i.adq ; 4 uses
  %i.adr = mul nsw i64 %i.adi, %i.adk
  %i.ads = add nsw i64 %i.adr, %wide.trip.count833
  %i.adt = shl i64 %i.ads, 2
  %scevgep1065.a = getelementptr i8, ptr %i.ada, i64 %i.adt ; 4 uses
  %scevgep1066 = getelementptr i8, ptr %i.f, i64 8 ; 4 uses
  %i.adu = mul nuw nsw i64 %wide.trip.count833, 12
  %min.iters.check1120 = icmp ult i32 %i.acg, 22
  %bound01068 = icmp ult ptr %i.acx, %scevgep1064.a
  %bound11069 = icmp ult ptr %i.acy, %scevgep1063.a
  %found.conflict1070 = and i1 %bound01068, %bound11069
  %10 = icmp slt <4 x i32> %5, splat (i32 -3)
  %bound01073 = icmp ult ptr %i.acx, %scevgep1065.a
  %bound11074 = icmp ult ptr %i.ada, %scevgep1063.a
  %found.conflict1075 = and i1 %bound01073, %bound11074
  %bound01079 = icmp ult ptr %i.acx, %scevgep1066
  %bound11080 = icmp ult ptr %i.f, %scevgep1063.a
  %found.conflict1081 = and i1 %bound01079, %bound11080
  %bound01089 = icmp ult ptr %i.acy, %scevgep1065.a
  %bound11090 = icmp ult ptr %i.ada, %scevgep1064.a
  %found.conflict1091 = and i1 %bound01089, %bound11090
  %bound01095 = icmp ult ptr %i.acy, %scevgep1066
  %bound11096 = icmp ult ptr %i.f, %scevgep1064.a
  %found.conflict1097 = and i1 %bound01095, %bound11096
  %bound01105 = icmp ult ptr %i.ada, %scevgep1066
  %bound11106 = icmp ult ptr %i.f, %scevgep1065.a
  %found.conflict1107 = and i1 %bound01105, %bound11106
  %11 = bitcast <4 x i1> %10 to i4
  %12 = icmp ne i4 %11, 0
  %op.rdx = or i1 %12, %found.conflict1070
  %op.rdx1339 = or i1 %found.conflict1075, %found.conflict1081
  %op.rdx1343 = or i1 %op.rdx, %op.rdx1339
  %n.vec1122 = and i64 %wide.trip.count833, 2147483646 ; 4 uses
  %i.adv = mul nuw nsw i64 %n.vec1122, 12
  %broadcast.splatinsert1123 = insertelement <2 x float> poison, float %i.act, i64 0
  %broadcast.splat1124 = shufflevector <2 x float> %broadcast.splatinsert1123, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %cmp.n1131 = icmp eq i64 %n.vec1122, %wide.trip.count833
  br label %.preheader623

.preheader623:                                    ; preds = %.preheader623.lr.ph.split, %._crit_edge694
  %.promoted700 = phi ptr [ %i.acj, %.preheader623.lr.ph.split ], [ %.lcssa1007, %._crit_edge694 ] ; 10 uses
  %.0492698 = phi i32 [ 0, %.preheader623.lr.ph.split ], [ %i.afa, %._crit_edge694 ]
  %.0493697 = phi ptr [ %i.ada, %.preheader623.lr.ph.split ], [ %i.aez, %._crit_edge694 ] ; 3 uses
  %.0494696 = phi ptr [ %i.acy, %.preheader623.lr.ph.split ], [ %i.aey, %._crit_edge694 ] ; 3 uses
  %.0495695 = phi ptr [ %i.acx, %.preheader623.lr.ph.split ], [ %i.aex, %._crit_edge694 ] ; 3 uses
  br i1 %min.iters.check1120, label %scalar.ph1119.preheader, label %vector.memcheck1062

vector.memcheck1062:                              ; preds = %.preheader623
  %scevgep1067 = getelementptr i8, ptr %.promoted700, i64 %i.adu ; 4 uses
  %bound01084 = icmp ult ptr %i.acx, %scevgep1067
  %bound11085 = icmp ult ptr %.promoted700, %scevgep1063.a
  %found.conflict1086 = and i1 %bound01084, %bound11085
  %bound01100.a = icmp ult ptr %i.acy, %scevgep1067
  %bound11101.a = icmp ult ptr %.promoted700, %scevgep1064.a
  %found.conflict1102.a = and i1 %bound01100.a, %bound11101.a
  %bound01110 = icmp ult ptr %i.ada, %scevgep1067
  %bound11111 = icmp ult ptr %.promoted700, %scevgep1065.a
  %found.conflict1112 = and i1 %bound01110, %bound11111
  %bound01115 = icmp ult ptr %i.f, %scevgep1067
  %bound11116 = icmp ult ptr %.promoted700, %scevgep1066
  %found.conflict1117 = and i1 %bound01115, %bound11116
  %op.rdx1340 = or i1 %found.conflict1086, %found.conflict1091
  %op.rdx1341 = or i1 %found.conflict1097, %found.conflict1102.a
  %op.rdx1342 = or i1 %found.conflict1107, %found.conflict1112
  %op.rdx1344 = or i1 %op.rdx1340, %op.rdx1341
  %op.rdx1345 = or i1 %op.rdx1342, %found.conflict1117
  %op.rdx1346 = or i1 %op.rdx1343, %op.rdx1344
  %op.rdx1347 = or i1 %op.rdx1346, %op.rdx1345
  br i1 %op.rdx1347, label %scalar.ph1119.preheader, label %vector.ph1121

vector.ph1121:                                    ; preds = %vector.memcheck1062
  %i.adw = getelementptr i8, ptr %.promoted700, i64 %i.adv ; 2 uses
  br label %vector.body1125

vector.body1125:                                  ; preds = %vector.body1125, %vector.ph1121
  %index1126 = phi i64 [ 0, %vector.ph1121 ], [ %index.next1129, %vector.body1125 ] ; 5 uses
  %i.adx = mul i64 %index1126, 12                 ; 2 uses
  %next.gep1127 = getelementptr i8, ptr %.promoted700, i64 %i.adx ; 3 uses
  %i.ady = getelementptr i8, ptr %.promoted700, i64 %i.adx ; 4 uses
  %next.gep1128 = getelementptr i8, ptr %i.ady, i64 12
  %i.adz = load float, ptr %next.gep1127, align 1, !tbaa !118, !alias.scope !140
  %i.aea = load float, ptr %next.gep1128, align 1, !tbaa !118, !alias.scope !140
  %i.aeb = insertelement <2 x float> poison, float %i.adz, i64 0
  %i.aec = insertelement <2 x float> %i.aeb, float %i.aea, i64 1
  %i.aed = fmul nsz <2 x float> %broadcast.splat1124, %i.aec
  %i.aee = getelementptr inbounds nuw [4 x i8], ptr %.0495695, i64 %index1126
  store <2 x float> %i.aed, ptr %i.aee, align 4, !tbaa !141, !alias.scope !142, !noalias !143
  %i.aef = getelementptr inbounds nuw i8, ptr %next.gep1127, i64 4
  %i.aeg = getelementptr i8, ptr %i.ady, i64 16
  %i.aeh = load float, ptr %i.aef, align 1, !tbaa !118, !alias.scope !140
  %i.aei = load float, ptr %i.aeg, align 1, !tbaa !118, !alias.scope !140
  %i.aej = insertelement <2 x float> poison, float %i.aeh, i64 0
  %i.aek = insertelement <2 x float> %i.aej, float %i.aei, i64 1
  %i.ael = fmul nsz <2 x float> %broadcast.splat1124, %i.aek
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %.0494696, i64 %index1126
  store <2 x float> %i.ael, ptr %i.aem, align 4, !tbaa !141, !alias.scope !144, !noalias !145
  %i.aen = getelementptr inbounds nuw i8, ptr %next.gep1127, i64 8
  %i.aeo = getelementptr i8, ptr %i.ady, i64 20
  %i.aep = load float, ptr %i.aen, align 1, !tbaa !118, !alias.scope !140
  %i.aeq = load float, ptr %i.aeo, align 1, !tbaa !118, !alias.scope !140
  %i.aer = insertelement <2 x float> poison, float %i.aep, i64 0
  %i.aes = insertelement <2 x float> %i.aer, float %i.aeq, i64 1
  %i.aet = fmul nsz <2 x float> %broadcast.splat1124, %i.aes
  %i.aeu = getelementptr inbounds nuw [4 x i8], ptr %.0493697, i64 %index1126
  store <2 x float> %i.aet, ptr %i.aeu, align 4, !tbaa !141, !alias.scope !146, !noalias !147
  %index.next1129 = add nuw i64 %index1126, 2     ; 2 uses
  %i.aev = icmp eq i64 %index.next1129, %n.vec1122
  br i1 %i.aev, label %middle.block1130, label %vector.body1125, !llvm.loop !78

middle.block1130:                                 ; preds = %vector.body1125
  %i.aew = getelementptr i8, ptr %i.ady, i64 24
  store ptr %i.aew, ptr %i.f, align 8, !tbaa !111, !alias.scope !148, !noalias !140
  br i1 %cmp.n1131, label %._crit_edge694, label %scalar.ph1119.preheader

scalar.ph1119.preheader:                          ; preds = %vector.memcheck1062, %.preheader623, %middle.block1130
  %indvars.iv830.ph = phi i64 [ 0, %vector.memcheck1062 ], [ 0, %.preheader623 ], [ %n.vec1122, %middle.block1130 ]
  %.ph = phi ptr [ %.promoted700, %vector.memcheck1062 ], [ %.promoted700, %.preheader623 ], [ %i.adw, %middle.block1130 ]
  br label %scalar.ph1119

._crit_edge694:                                   ; preds = %scalar.ph1119, %middle.block1130
  %.lcssa1007 = phi ptr [ %i.adw, %middle.block1130 ], [ %i.afn, %scalar.ph1119 ]
  %i.aex = getelementptr inbounds [4 x i8], ptr %.0495695, i64 %8
  %i.aey = getelementptr inbounds [4 x i8], ptr %.0494696, i64 %i.adg
  %i.aez = getelementptr inbounds [4 x i8], ptr %.0493697, i64 %i.adi
  %i.afa = add nuw nsw i32 %.0492698, 1           ; 2 uses
  %exitcond835.not = icmp eq i32 %i.afa, %i.ach
  br i1 %exitcond835.not, label %.loopexit622, label %.preheader623, !llvm.loop !79

scalar.ph1119:                                    ; preds = %scalar.ph1119.preheader, %scalar.ph1119
  %indvars.iv830 = phi i64 [ %indvars.iv.next831, %scalar.ph1119 ], [ %indvars.iv830.ph, %scalar.ph1119.preheader ] ; 4 uses
  %i.afb = phi ptr [ %i.afn, %scalar.ph1119 ], [ %.ph, %scalar.ph1119.preheader ] ; 4 uses
  %i.afc = load float, ptr %i.afb, align 1, !tbaa !118
  %i.afd = fmul nsz float %i.act, %i.afc
  %i.afe = getelementptr inbounds nuw [4 x i8], ptr %.0495695, i64 %indvars.iv830
  store float %i.afd, ptr %i.afe, align 4, !tbaa !141
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afb, i64 4
  %i.afg = load float, ptr %i.aff, align 1, !tbaa !118
  %i.afh = fmul nsz float %i.act, %i.afg
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %.0494696, i64 %indvars.iv830
  store float %i.afh, ptr %i.afi, align 4, !tbaa !141
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afb, i64 8
  %i.afk = load float, ptr %i.afj, align 1, !tbaa !118
  %i.afl = fmul nsz float %i.act, %i.afk
  %i.afm = getelementptr inbounds nuw [4 x i8], ptr %.0493697, i64 %indvars.iv830
  store float %i.afl, ptr %i.afm, align 4, !tbaa !141
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afb, i64 12 ; 3 uses
  store ptr %i.afn, ptr %i.f, align 8, !tbaa !111
  %indvars.iv.next831 = add nuw nsw i64 %indvars.iv830, 1 ; 2 uses
  %exitcond834.not = icmp eq i64 %indvars.iv.next831, %wide.trip.count833
  br i1 %exitcond834.not, label %._crit_edge694, label %scalar.ph1119, !llvm.loop !80

bb.aw:                                            ; preds = %bb.au
  br i1 %i.adb, label %.preheader621.lr.ph, label %.loopexit622

.preheader621.lr.ph:                              ; preds = %bb.aw
  %i.afo = icmp sgt i32 %i.acg, 0
  %i.afp = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.afq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.afr = load i32, ptr %i.afq, align 8, !tbaa !122
  %i.afs = sdiv i32 %i.afr, 4
  %i.aft = sext i32 %i.afs to i64
  %i.afu = load <2 x i32>, ptr %i.afp, align 8, !tbaa !122
  %i.afv = sdiv <2 x i32> %i.afu, splat (i32 4)   ; 2 uses
  %i.afw = extractelement <2 x i32> %i.afv, i64 0
  %i.afx = sext i32 %i.afw to i64
  %i.afy = extractelement <2 x i32> %i.afv, i64 1
  %i.afz = sext i32 %i.afy to i64
  br i1 %i.afo, label %.preheader621.lr.ph.split, label %.loopexit622

.preheader621.lr.ph.split:                        ; preds = %.preheader621.lr.ph
  %wide.trip.count839 = zext nneg i32 %i.acg to i64
  br label %.preheader621

.preheader621:                                    ; preds = %.preheader621.lr.ph.split, %._crit_edge703
  %.promoted709 = phi ptr [ %i.acj, %.preheader621.lr.ph.split ], [ %i.agw, %._crit_edge703 ]
  %.0487707 = phi i32 [ 0, %.preheader621.lr.ph.split ], [ %i.agd, %._crit_edge703 ]
  %.0488706 = phi ptr [ %i.ada, %.preheader621.lr.ph.split ], [ %i.agc, %._crit_edge703 ] ; 2 uses
  %.0489705 = phi ptr [ %i.acy, %.preheader621.lr.ph.split ], [ %i.agb, %._crit_edge703 ] ; 2 uses
  %.0490704 = phi ptr [ %i.acx, %.preheader621.lr.ph.split ], [ %i.aga, %._crit_edge703 ] ; 2 uses
  br label %bb.ax

._crit_edge703:                                   ; preds = %bb.ax
  %i.aga = getelementptr inbounds [4 x i8], ptr %.0490704, i64 %i.aft
  %i.agb = getelementptr inbounds [4 x i8], ptr %.0489705, i64 %i.afx
  %i.agc = getelementptr inbounds [4 x i8], ptr %.0488706, i64 %i.afz
  %i.agd = add nuw nsw i32 %.0487707, 1           ; 2 uses
  %exitcond841.not = icmp eq i32 %i.agd, %i.ach
  br i1 %exitcond841.not, label %.loopexit622, label %.preheader621, !llvm.loop !81

bb.ax:                                            ; preds = %.preheader621, %bb.ax
  %indvars.iv836 = phi i64 [ 0, %.preheader621 ], [ %indvars.iv.next837, %bb.ax ] ; 4 uses
  %i.age = phi ptr [ %.promoted709, %.preheader621 ], [ %i.agw, %bb.ax ] ; 4 uses
  %i.agf = load i32, ptr %i.age, align 1, !tbaa !118
  %i.agg = tail call i32 @llvm.bswap.i32(i32 %i.agf)
  %i.agh = bitcast i32 %i.agg to float
  %i.agi = fmul nsz float %i.act, %i.agh
  %i.agj = getelementptr inbounds nuw [4 x i8], ptr %.0490704, i64 %indvars.iv836
  store float %i.agi, ptr %i.agj, align 4, !tbaa !141
  %i.agk = getelementptr inbounds nuw i8, ptr %i.age, i64 4
  %i.agl = load i32, ptr %i.agk, align 1, !tbaa !118
  %i.agm = tail call i32 @llvm.bswap.i32(i32 %i.agl)
  %i.agn = bitcast i32 %i.agm to float
  %i.ago = fmul nsz float %i.act, %i.agn
  %i.agp = getelementptr inbounds nuw [4 x i8], ptr %.0489705, i64 %indvars.iv836
  store float %i.ago, ptr %i.agp, align 4, !tbaa !141
  %i.agq = getelementptr inbounds nuw i8, ptr %i.age, i64 8
  %i.agr = load i32, ptr %i.agq, align 1, !tbaa !118
  %i.ags = tail call i32 @llvm.bswap.i32(i32 %i.agr)
  %i.agt = bitcast i32 %i.ags to float
  %i.agu = fmul nsz float %i.act, %i.agt
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %.0488706, i64 %indvars.iv836
  store float %i.agu, ptr %i.agv, align 4, !tbaa !141
  %i.agw = getelementptr inbounds nuw i8, ptr %i.age, i64 12 ; 3 uses
  store ptr %i.agw, ptr %i.f, align 8, !tbaa !111
  %indvars.iv.next837 = add nuw nsw i64 %indvars.iv836, 1 ; 2 uses
  %exitcond840.not = icmp eq i64 %indvars.iv.next837, %wide.trip.count839
  br i1 %exitcond840.not, label %._crit_edge703, label %bb.ax, !llvm.loop !82

bb.ay:                                            ; preds = %bb.as
  %i.agx = mul i32 %i.acg, 6
  %i.agy = mul i32 %i.agx, %i.ach
  %i.agz = sext i32 %i.agy to i64
  %i.aha = icmp slt i64 %i.acm, %i.agz
  br i1 %i.aha, label %.critedge567, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.ahc = load float, ptr %i.ahb, align 8, !tbaa !138
  %i.ahd = fdiv nsz float 1.000000e+00, %i.ahc    ; 6 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ahf = load i32, ptr %i.ahe, align 8, !tbaa !139
  %.not546 = icmp eq i32 %i.ahf, 0
  %i.ahg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ahh = load ptr, ptr %i.ahg, align 8, !tbaa !121 ; 2 uses
  %i.ahi = load ptr, ptr %1, align 8, !tbaa !121  ; 2 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ahk = load ptr, ptr %i.ahj, align 8, !tbaa !121 ; 2 uses
  %i.ahl = icmp sgt i32 %i.ach, 0                 ; 2 uses
  br i1 %.not546, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  br i1 %i.ahl, label %.preheader627.lr.ph, label %.loopexit622

.preheader627.lr.ph:                              ; preds = %bb.ba
  %i.ahm = icmp sgt i32 %i.acg, 0
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.f, i64 44 ; 3 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %i.f, i64 12588 ; 3 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.f, i64 12332 ; 3 uses
  %i.ahq = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ahr = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ahs = load i32, ptr %i.ahr, align 8, !tbaa !122
  %i.aht = sdiv i32 %i.ahs, 4
  %i.ahu = sext i32 %i.aht to i64
  %i.ahv = load <2 x i32>, ptr %i.ahq, align 8, !tbaa !122
  %i.ahw = sdiv <2 x i32> %i.ahv, splat (i32 4)   ; 2 uses
  %i.ahx = extractelement <2 x i32> %i.ahw, i64 0
  %i.ahy = sext i32 %i.ahx to i64
  %i.ahz = extractelement <2 x i32> %i.ahw, i64 1
  %i.aia = sext i32 %i.ahz to i64
  br i1 %i.ahm, label %.preheader627.lr.ph.split, label %.loopexit622

.preheader627.lr.ph.split:                        ; preds = %.preheader627.lr.ph
  %wide.trip.count821 = zext nneg i32 %i.acg to i64
  br label %.preheader627

.preheader627:                                    ; preds = %.preheader627.lr.ph.split, %._crit_edge676
  %.promoted682 = phi ptr [ %i.acj, %.preheader627.lr.ph.split ], [ %i.akk, %._crit_edge676 ]
  %.0482680 = phi i32 [ 0, %.preheader627.lr.ph.split ], [ %i.aie, %._crit_edge676 ]
  %.0483679 = phi ptr [ %i.ahk, %.preheader627.lr.ph.split ], [ %i.aid, %._crit_edge676 ] ; 2 uses
  %.0484678 = phi ptr [ %i.ahi, %.preheader627.lr.ph.split ], [ %i.aic, %._crit_edge676 ] ; 2 uses
  %.0485677 = phi ptr [ %i.ahh, %.preheader627.lr.ph.split ], [ %i.aib, %._crit_edge676 ] ; 2 uses
  br label %bb.bb

._crit_edge676:                                   ; preds = %bb.bb
  %i.aib = getelementptr inbounds [4 x i8], ptr %.0485677, i64 %i.ahu
  %i.aic = getelementptr inbounds [4 x i8], ptr %.0484678, i64 %i.ahy
  %i.aid = getelementptr inbounds [4 x i8], ptr %.0483679, i64 %i.aia
  %i.aie = add nuw nsw i32 %.0482680, 1           ; 2 uses
  %exitcond823.not = icmp eq i32 %i.aie, %i.ach
  br i1 %exitcond823.not, label %.loopexit622, label %.preheader627, !llvm.loop !83

bb.bb:                                            ; preds = %.preheader627, %bb.bb
  %indvars.iv818 = phi i64 [ 0, %.preheader627 ], [ %indvars.iv.next819, %bb.bb ] ; 4 uses
  %i.aif = phi ptr [ %.promoted682, %.preheader627 ], [ %i.akk, %bb.bb ] ; 4 uses
  %i.aig = load i16, ptr %i.aif, align 1, !tbaa !118
  %i.aih = zext i16 %i.aig to i32                 ; 2 uses
  %i.aii = lshr i32 %i.aih, 10
  %i.aij = zext nneg i32 %i.aii to i64            ; 2 uses
  %i.aik = getelementptr inbounds nuw [2 x i8], ptr %i.aho, i64 %i.aij
  %i.ail = load i16, ptr %i.aik, align 2, !tbaa !125
  %i.aim = zext i16 %i.ail to i32
  %i.ain = and i32 %i.aih, 1023
  %i.aio = add nuw nsw i32 %i.ain, %i.aim
  %i.aip = zext nneg i32 %i.aio to i64
  %i.aiq = getelementptr inbounds nuw [4 x i8], ptr %i.ahn, i64 %i.aip
  %i.air = load i32, ptr %i.aiq, align 4, !tbaa !122
  %i.ais = getelementptr inbounds nuw [4 x i8], ptr %i.ahp, i64 %i.aij
  %i.ait = load i32, ptr %i.ais, align 4, !tbaa !122
  %i.aiu = add i32 %i.ait, %i.air
  %i.aiv = bitcast i32 %i.aiu to float
  %i.aiw = fmul nsz float %i.ahd, %i.aiv
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %.0485677, i64 %indvars.iv818
  store float %i.aiw, ptr %i.aix, align 4, !tbaa !141
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aif, i64 2
  %i.aiz = load i16, ptr %i.aiy, align 1, !tbaa !118
  %i.aja = zext i16 %i.aiz to i32                 ; 2 uses
  %i.ajb = lshr i32 %i.aja, 10
  %i.ajc = zext nneg i32 %i.ajb to i64            ; 2 uses
  %i.ajd = getelementptr inbounds nuw [2 x i8], ptr %i.aho, i64 %i.ajc
  %i.aje = load i16, ptr %i.ajd, align 2, !tbaa !125
  %i.ajf = zext i16 %i.aje to i32
  %i.ajg = and i32 %i.aja, 1023
  %i.ajh = add nuw nsw i32 %i.ajg, %i.ajf
  %i.aji = zext nneg i32 %i.ajh to i64
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %i.ahn, i64 %i.aji
  %i.ajk = load i32, ptr %i.ajj, align 4, !tbaa !122
  %i.ajl = getelementptr inbounds nuw [4 x i8], ptr %i.ahp, i64 %i.ajc
  %i.ajm = load i32, ptr %i.ajl, align 4, !tbaa !122
  %i.ajn = add i32 %i.ajm, %i.ajk
  %i.ajo = bitcast i32 %i.ajn to float
  %i.ajp = fmul nsz float %i.ahd, %i.ajo
  %i.ajq = getelementptr inbounds nuw [4 x i8], ptr %.0484678, i64 %indvars.iv818
end_hunk_0
begin_hunk_1_@pnm_decode_frame:bb.a

.preheader625.lr.ph:                              ; preds = %bb.bc
  %i.akl = icmp sgt i32 %i.acg, 0
  %i.akm = getelementptr inbounds nuw i8, ptr %i.f, i64 44 ; 3 uses
  %i.akn = getelementptr inbounds nuw i8, ptr %i.f, i64 12588 ; 3 uses
  %i.ako = getelementptr inbounds nuw i8, ptr %i.f, i64 12332 ; 3 uses
  %i.akp = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.akq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.akr = load i32, ptr %i.akq, align 8, !tbaa !122
  %i.aks = sdiv i32 %i.akr, 4
  %i.akt = sext i32 %i.aks to i64
  %i.aku = load <2 x i32>, ptr %i.akp, align 8, !tbaa !122
  %i.akv = sdiv <2 x i32> %i.aku, splat (i32 4)   ; 2 uses
  %i.akw = extractelement <2 x i32> %i.akv, i64 0
  %i.akx = sext i32 %i.akw to i64
  %i.aky = extractelement <2 x i32> %i.akv, i64 1
  %i.akz = sext i32 %i.aky to i64
  br i1 %i.akl, label %.preheader625.lr.ph.split, label %.loopexit622

.preheader625.lr.ph.split:                        ; preds = %.preheader625.lr.ph
  %wide.trip.count827 = zext nneg i32 %i.acg to i64
  br label %.preheader625

.preheader625:                                    ; preds = %.preheader625.lr.ph.split, %._crit_edge685
  %.promoted691 = phi ptr [ %i.acj, %.preheader625.lr.ph.split ], [ %i.anm, %._crit_edge685 ]
  %.0477689 = phi i32 [ 0, %.preheader625.lr.ph.split ], [ %i.ald, %._crit_edge685 ]
  %.0478688 = phi ptr [ %i.ahk, %.preheader625.lr.ph.split ], [ %i.alc, %._crit_edge685 ] ; 2 uses
  %.0479687 = phi ptr [ %i.ahi, %.preheader625.lr.ph.split ], [ %i.alb, %._crit_edge685 ] ; 2 uses
  %.0480686 = phi ptr [ %i.ahh, %.preheader625.lr.ph.split ], [ %i.ala, %._crit_edge685 ] ; 2 uses
  br label %bb.bd

._crit_edge685:                                   ; preds = %bb.bd
  %i.ala = getelementptr inbounds [4 x i8], ptr %.0480686, i64 %i.akt
  %i.alb = getelementptr inbounds [4 x i8], ptr %.0479687, i64 %i.akx
  %i.alc = getelementptr inbounds [4 x i8], ptr %.0478688, i64 %i.akz
  %i.ald = add nuw nsw i32 %.0477689, 1           ; 2 uses
  %exitcond829.not = icmp eq i32 %i.ald, %i.ach
  br i1 %exitcond829.not, label %.loopexit622, label %.preheader625, !llvm.loop !85

bb.bd:                                            ; preds = %.preheader625, %bb.bd
  %indvars.iv824 = phi i64 [ 0, %.preheader625 ], [ %indvars.iv.next825, %bb.bd ] ; 4 uses
  %i.ale = phi ptr [ %.promoted691, %.preheader625 ], [ %i.anm, %bb.bd ] ; 4 uses
  %i.alf = load i16, ptr %i.ale, align 1, !tbaa !118
  %i.alg = tail call i16 @llvm.bswap.i16(i16 %i.alf)
  %i.alh = zext i16 %i.alg to i32                 ; 2 uses
  %i.ali = lshr i32 %i.alh, 10
  %i.alj = zext nneg i32 %i.ali to i64            ; 2 uses
  %i.alk = getelementptr inbounds nuw [2 x i8], ptr %i.akn, i64 %i.alj
  %i.all = load i16, ptr %i.alk, align 2, !tbaa !125
  %i.alm = zext i16 %i.all to i32
  %i.aln = and i32 %i.alh, 1023
  %i.alo = add nuw nsw i32 %i.aln, %i.alm
  %i.alp = zext nneg i32 %i.alo to i64
  %i.alq = getelementptr inbounds nuw [4 x i8], ptr %i.akm, i64 %i.alp
  %i.alr = load i32, ptr %i.alq, align 4, !tbaa !122
  %i.als = getelementptr inbounds nuw [4 x i8], ptr %i.ako, i64 %i.alj
  %i.alt = load i32, ptr %i.als, align 4, !tbaa !122
  %i.alu = add i32 %i.alt, %i.alr
  %i.alv = bitcast i32 %i.alu to float
  %i.alw = fmul nsz float %i.ahd, %i.alv
  %i.alx = getelementptr inbounds nuw [4 x i8], ptr %.0480686, i64 %indvars.iv824
  store float %i.alw, ptr %i.alx, align 4, !tbaa !141
  %i.aly = getelementptr inbounds nuw i8, ptr %i.ale, i64 2
  %i.alz = load i16, ptr %i.aly, align 1, !tbaa !118
  %i.ama = tail call i16 @llvm.bswap.i16(i16 %i.alz)
  %i.amb = zext i16 %i.ama to i32                 ; 2 uses
  %i.amc = lshr i32 %i.amb, 10
  %i.amd = zext nneg i32 %i.amc to i64            ; 2 uses
  %i.ame = getelementptr inbounds nuw [2 x i8], ptr %i.akn, i64 %i.amd
  %i.amf = load i16, ptr %i.ame, align 2, !tbaa !125
  %i.amg = zext i16 %i.amf to i32
  %i.amh = and i32 %i.amb, 1023
  %i.ami = add nuw nsw i32 %i.amh, %i.amg
  %i.amj = zext nneg i32 %i.ami to i64
  %i.amk = getelementptr inbounds nuw [4 x i8], ptr %i.akm, i64 %i.amj
  %i.aml = load i32, ptr %i.amk, align 4, !tbaa !122
  %i.amm = getelementptr inbounds nuw [4 x i8], ptr %i.ako, i64 %i.amd
  %i.amn = load i32, ptr %i.amm, align 4, !tbaa !122
  %i.amo = add i32 %i.amn, %i.aml
  %i.amp = bitcast i32 %i.amo to float
  %i.amq = fmul nsz float %i.ahd, %i.amp
  %i.amr = getelementptr inbounds nuw [4 x i8], ptr %.0479687, i64 %indvars.iv824
  store float %i.amq, ptr %i.amr, align 4, !tbaa !141
  %i.ams = getelementptr inbounds nuw i8, ptr %i.ale, i64 4
  %i.amt = load i16, ptr %i.ams, align 1, !tbaa !118
  %i.amu = tail call i16 @llvm.bswap.i16(i16 %i.amt)
  %i.amv = zext i16 %i.amu to i32                 ; 2 uses
  %i.amw = lshr i32 %i.amv, 10
  %i.amx = zext nneg i32 %i.amw to i64            ; 2 uses
  %i.amy = getelementptr inbounds nuw [2 x i8], ptr %i.akn, i64 %i.amx
  %i.amz = load i16, ptr %i.amy, align 2, !tbaa !125
  %i.ana = zext i16 %i.amz to i32
  %i.anb = and i32 %i.amv, 1023
  %i.anc = add nuw nsw i32 %i.anb, %i.ana
  %i.and = zext nneg i32 %i.anc to i64
  %i.ane = getelementptr inbounds nuw [4 x i8], ptr %i.akm, i64 %i.and
  %i.anf = load i32, ptr %i.ane, align 4, !tbaa !122
  %i.ang = getelementptr inbounds nuw [4 x i8], ptr %i.ako, i64 %i.amx
  %i.anh = load i32, ptr %i.ang, align 4, !tbaa !122
  %i.ani = add i32 %i.anh, %i.anf
  %i.anj = bitcast i32 %i.ani to float
  %i.ank = fmul nsz float %i.ahd, %i.anj
  %i.anl = getelementptr inbounds nuw [4 x i8], ptr %.0478688, i64 %indvars.iv824
  store float %i.ank, ptr %i.anl, align 4, !tbaa !141
  %i.anm = getelementptr inbounds nuw i8, ptr %i.ale, i64 6 ; 3 uses
  store ptr %i.anm, ptr %i.f, align 8, !tbaa !111
  %indvars.iv.next825 = add nuw nsw i64 %indvars.iv824, 1 ; 2 uses
  %exitcond828.not = icmp eq i64 %indvars.iv.next825, %wide.trip.count827
  br i1 %exitcond828.not, label %._crit_edge685, label %bb.bd, !llvm.loop !86

.loopexit622:                                     ; preds = %._crit_edge676, %._crit_edge685, %._crit_edge694, %._crit_edge703, %bb.ba, %.preheader627.lr.ph, %bb.bc, %.preheader625.lr.ph, %bb.av, %.preheader623.lr.ph, %bb.aw, %.preheader621.lr.ph
  %i.ann = add nsw i32 %i.ach, -1                 ; 3 uses
  %i.ano = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.anp = load i32, ptr %i.ano, align 8, !tbaa !122 ; 2 uses
  %i.anq = mul nsw i32 %i.ann, %i.anp
  %i.anr = load ptr, ptr %1, align 8, !tbaa !121
  %i.ans = sext i32 %i.anq to i64
  %i.ant = getelementptr inbounds i8, ptr %i.anr, i64 %i.ans
  store ptr %i.ant, ptr %1, align 8, !tbaa !121
  %i.anu = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.anv = load i32, ptr %i.anu, align 4, !tbaa !122 ; 2 uses
  %i.anw = mul nsw i32 %i.anv, %i.ann
  %i.anx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.any = load ptr, ptr %i.anx, align 8, !tbaa !121
  %i.anz = sext i32 %i.anw to i64
  %i.aoa = getelementptr inbounds i8, ptr %i.any, i64 %i.anz
  store ptr %i.aoa, ptr %i.anx, align 8, !tbaa !121
  %i.aob = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.aoc = load i32, ptr %i.aob, align 8, !tbaa !122 ; 2 uses
  %i.aod = mul nsw i32 %i.aoc, %i.ann
  %i.aoe = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aof = load ptr, ptr %i.aoe, align 8, !tbaa !121
  %i.aog = sext i32 %i.aod to i64
  %i.aoh = getelementptr inbounds i8, ptr %i.aof, i64 %i.aog
  store ptr %i.aoh, ptr %i.aoe, align 8, !tbaa !121
  %i.aoi = sub nsw i32 0, %i.anp
  store i32 %i.aoi, ptr %i.ano, align 8, !tbaa !122
  %i.aoj = sub nsw i32 0, %i.anv
  store i32 %i.aoj, ptr %i.anu, align 4, !tbaa !122
  %i.aok = sub nsw i32 0, %i.aoc
  store i32 %i.aok, ptr %i.aob, align 8, !tbaa !122
  br label %.loopexit

bb.be:                                            ; preds = %bb.f
  %i.aol = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.aom = load i32, ptr %i.aol, align 4, !tbaa !137
  %.not = icmp eq i32 %i.aom, 0
  %i.aon = load i32, ptr %i.q, align 8, !tbaa !115 ; 12 uses
  %i.aoo = load i32, ptr %i.s, align 4, !tbaa !116 ; 11 uses
  %i.aop = load ptr, ptr %i.j, align 8, !tbaa !113
  %i.aoq = load ptr, ptr %i.f, align 8, !tbaa !111 ; 5 uses
  %i.aor = ptrtoint ptr %i.aop to i64
  %i.aos = ptrtoint ptr %i.aoq to i64
  %i.aot = sub i64 %i.aor, %i.aos                 ; 2 uses
  br i1 %.not, label %bb.bf, label %bb.bj

bb.bf:                                            ; preds = %bb.be
  %i.aou = shl i32 %i.aon, 2
  %i.aov = mul i32 %i.aou, %i.aoo
  %i.aow = sext i32 %i.aov to i64
  %i.aox = icmp slt i64 %i.aot, %i.aow
  br i1 %i.aox, label %.critedge567, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.aoz = load float, ptr %i.aoy, align 8, !tbaa !138
  %i.apa = fdiv nsz float 1.000000e+00, %i.aoz    ; 10 uses
  %i.apb = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.apc = load i32, ptr %i.apb, align 8, !tbaa !139
  %.not542 = icmp eq i32 %i.apc, 0
  %i.apd = load ptr, ptr %1, align 8, !tbaa !121  ; 8 uses
  %i.ape = icmp sgt i32 %i.aoo, 0                 ; 2 uses
  br i1 %.not542, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.ape, label %.preheader631.lr.ph, label %.loopexit630

.preheader631.lr.ph:                              ; preds = %bb.bh
  %i.apf = icmp sgt i32 %i.aon, 0
  %i.apg = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aph = load i32, ptr %i.apg, align 8, !tbaa !122 ; 2 uses
  %i.api = sdiv i32 %i.aph, 4
  %i.apj = sext i32 %i.api to i64                 ; 2 uses
  br i1 %i.apf, label %.preheader631.lr.ph.split, label %.loopexit630

.preheader631.lr.ph.split:                        ; preds = %.preheader631.lr.ph
  %wide.trip.count809 = zext nneg i32 %i.aon to i64 ; 7 uses
  %i.apk = add nsw i32 %i.aoo, -1
  %i.apl = zext i32 %i.apk to i64
  %i.apm = mul nsw i64 %i.apj, %i.apl
  %i.apn = shl nuw nsw i64 %wide.trip.count809, 2
  %i.apo = add nsw i64 %i.apm, %wide.trip.count809
  %i.app = shl i64 %i.apo, 2
  %scevgep1014 = getelementptr i8, ptr %i.apd, i64 %i.app ; 2 uses
  %scevgep1015 = getelementptr i8, ptr %i.f, i64 8 ; 2 uses
  %min.iters.check = icmp ult i32 %i.aon, 10
  %bound0 = icmp ult ptr %i.apd, %scevgep1015
  %bound1 = icmp ult ptr %i.f, %scevgep1014
  %found.conflict = and i1 %bound0, %bound1
  %stride.check1020 = icmp slt i32 %i.aph, -3
  %invariant.op.a = or i1 %stride.check1020, %found.conflict
  %n.vec = and i64 %wide.trip.count809, 2147483644 ; 4 uses
  %i.apq = shl nuw nsw i64 %n.vec, 2
  %broadcast.splatinsert = insertelement <2 x float> poison, float %i.apa, i64 0
  %broadcast.splat = shufflevector <2 x float> %broadcast.splatinsert, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count809
  %xtraiter = and i64 %wide.trip.count809, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader631

.preheader631:                                    ; preds = %.preheader631.lr.ph.split, %._crit_edge662
  %.promoted666 = phi ptr [ %i.aoq, %.preheader631.lr.ph.split ], [ %.lcssa1011, %._crit_edge662 ] ; 8 uses
  %.0474664 = phi i32 [ 0, %.preheader631.lr.ph.split ], [ %i.aqj, %._crit_edge662 ]
  %.0475663 = phi ptr [ %i.apd, %.preheader631.lr.ph.split ], [ %i.aqi, %._crit_edge662 ] ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader631
  %scevgep1016 = getelementptr i8, ptr %.promoted666, i64 %i.apn ; 2 uses
  %bound01017 = icmp ult ptr %i.apd, %scevgep1016
  %bound11018 = icmp ult ptr %.promoted666, %scevgep1014
  %found.conflict1019 = and i1 %bound01017, %bound11018
  %conflict.rdx.reass = or i1 %found.conflict1019, %invariant.op.a
  %bound01021 = icmp ult ptr %i.f, %scevgep1016
  %bound11022 = icmp ult ptr %.promoted666, %scevgep1015
  %found.conflict1023 = and i1 %bound01021, %bound11022
  %conflict.rdx1024 = or i1 %conflict.rdx.reass, %found.conflict1023
  br i1 %conflict.rdx1024, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.apr = getelementptr i8, ptr %.promoted666, i64 %i.apq ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aps = shl i64 %index, 2                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted666, i64 %i.aps ; 2 uses
  %i.apt = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x float>, ptr %next.gep, align 1, !tbaa !118, !alias.scope !149
  %wide.load1026 = load <2 x float>, ptr %i.apt, align 1, !tbaa !118, !alias.scope !149
  %i.apu = fmul nsz <2 x float> %broadcast.splat, %wide.load
  %i.apv = fmul nsz <2 x float> %broadcast.splat, %wide.load1026
  %i.apw = getelementptr inbounds nuw [4 x i8], ptr %.0475663, i64 %index ; 2 uses
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apw, i64 8
  store <2 x float> %i.apu, ptr %i.apw, align 4, !tbaa !141, !alias.scope !150, !noalias !151
  store <2 x float> %i.apv, ptr %i.apx, align 4, !tbaa !141, !alias.scope !150, !noalias !151
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.apy = icmp eq i64 %index.next, %n.vec
  br i1 %i.apy, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %vector.body
  %i.apz = getelementptr i8, ptr %.promoted666, i64 %i.aps
  %i.aqa = getelementptr i8, ptr %i.apz, i64 16
  store ptr %i.aqa, ptr %i.f, align 8, !tbaa !111, !alias.scope !152, !noalias !149
  br i1 %cmp.n, label %._crit_edge662, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader631, %middle.block
  %indvars.iv806.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader631 ], [ %n.vec, %middle.block ] ; 3 uses
  %.ph1372 = phi ptr [ %.promoted666, %vector.memcheck ], [ %.promoted666, %.preheader631 ], [ %i.apr, %middle.block ] ; 2 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv806.prol = phi i64 [ %indvars.iv.next807.prol, %scalar.ph.prol ], [ %indvars.iv806.ph, %scalar.ph.preheader ] ; 2 uses
  %i.aqb = phi ptr [ %i.aqf, %scalar.ph.prol ], [ %.ph1372, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.aqc = load float, ptr %i.aqb, align 1, !tbaa !118
  %i.aqd = fmul nsz float %i.apa, %i.aqc
  %i.aqe = getelementptr inbounds nuw [4 x i8], ptr %.0475663, i64 %indvars.iv806.prol
  store float %i.aqd, ptr %i.aqe, align 4, !tbaa !141
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqb, i64 4 ; 4 uses
  store ptr %i.aqf, ptr %i.f, align 8, !tbaa !111
  %indvars.iv.next807.prol = add nuw nsw i64 %indvars.iv806.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !92

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa1375.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.aqf, %scalar.ph.prol ]
  %indvars.iv806.unr = phi i64 [ %indvars.iv806.ph, %scalar.ph.preheader ], [ %indvars.iv.next807.prol, %scalar.ph.prol ]
  %.unr = phi ptr [ %.ph1372, %scalar.ph.preheader ], [ %i.aqf, %scalar.ph.prol ]
  %i.aqg = sub nsw i64 %indvars.iv806.ph, %wide.trip.count809
  %i.aqh = icmp ugt i64 %i.aqg, -4
  br i1 %i.aqh, label %._crit_edge662, label %scalar.ph

._crit_edge662:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa1011 = phi ptr [ %i.apr, %middle.block ], [ %.lcssa1375.unr, %scalar.ph.prol.loopexit ], [ %i.ard, %scalar.ph ]
  %i.aqi = getelementptr inbounds [4 x i8], ptr %.0475663, i64 %i.apj
  %i.aqj = add nuw nsw i32 %.0474664, 1           ; 2 uses
  %exitcond811.not = icmp eq i32 %i.aqj, %i.aoo
  br i1 %exitcond811.not, label %.loopexit630, label %.preheader631, !llvm.loop !93

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv806 = phi i64 [ %indvars.iv.next807.3, %scalar.ph ], [ %indvars.iv806.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.aqk = phi ptr [ %i.ard, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.aql = load float, ptr %i.aqk, align 1, !tbaa !118
  %i.aqm = fmul nsz float %i.apa, %i.aql
  %i.aqn = getelementptr inbounds nuw [4 x i8], ptr %.0475663, i64 %indvars.iv806
  store float %i.aqm, ptr %i.aqn, align 4, !tbaa !141
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqk, i64 4 ; 2 uses
  store ptr %i.aqo, ptr %i.f, align 8, !tbaa !111
  %i.aqp = load float, ptr %i.aqo, align 1, !tbaa !118
  %i.aqq = fmul nsz float %i.apa, %i.aqp
  %i.aqr = getelementptr inbounds nuw [4 x i8], ptr %.0475663, i64 %indvars.iv806
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqr, i64 4
  store float %i.aqq, ptr %i.aqs, align 4, !tbaa !141
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqk, i64 8 ; 2 uses
  store ptr %i.aqt, ptr %i.f, align 8, !tbaa !111
  %i.aqu = load float, ptr %i.aqt, align 1, !tbaa !118
  %i.aqv = fmul nsz float %i.apa, %i.aqu
  %i.aqw = getelementptr inbounds nuw [4 x i8], ptr %.0475663, i64 %indvars.iv806
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqw, i64 8
  store float %i.aqv, ptr %i.aqx, align 4, !tbaa !141
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqk, i64 12 ; 2 uses
  store ptr %i.aqy, ptr %i.f, align 8, !tbaa !111
  %i.aqz = load float, ptr %i.aqy, align 1, !tbaa !118
  %i.ara = fmul nsz float %i.apa, %i.aqz
  %i.arb = getelementptr inbounds nuw [4 x i8], ptr %.0475663, i64 %indvars.iv806
  %i.arc = getelementptr inbounds nuw i8, ptr %i.arb, i64 12
  store float %i.ara, ptr %i.arc, align 4, !tbaa !141
  %i.ard = getelementptr inbounds nuw i8, ptr %i.aqk, i64 16 ; 3 uses
  store ptr %i.ard, ptr %i.f, align 8, !tbaa !111
  %indvars.iv.next807.3 = add nuw nsw i64 %indvars.iv806, 4 ; 2 uses
  %exitcond810.not.3 = icmp eq i64 %indvars.iv.next807.3, %wide.trip.count809
  br i1 %exitcond810.not.3, label %._crit_edge662, label %scalar.ph, !llvm.loop !94

bb.bi:                                            ; preds = %bb.bg
  br i1 %i.ape, label %.preheader629.lr.ph, label %.loopexit630

.preheader629.lr.ph:                              ; preds = %bb.bi
  %i.are = icmp sgt i32 %i.aon, 0
  %i.arf = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.arg = load i32, ptr %i.arf, align 8, !tbaa !122 ; 2 uses
  %i.arh = sdiv i32 %i.arg, 4
  %i.ari = sext i32 %i.arh to i64                 ; 2 uses
  br i1 %i.are, label %.preheader629.lr.ph.split, label %.loopexit630

.preheader629.lr.ph.split:                        ; preds = %.preheader629.lr.ph
  %wide.trip.count815 = zext nneg i32 %i.aon to i64 ; 7 uses
  %i.arj = add nsw i32 %i.aoo, -1
  %i.ark = zext i32 %i.arj to i64
  %i.arl = mul nsw i64 %i.ari, %i.ark
  %i.arm = shl nuw nsw i64 %wide.trip.count815, 2
  %i.arn = add nsw i64 %i.arl, %wide.trip.count815
  %i.aro = shl i64 %i.arn, 2
  %scevgep1029.a = getelementptr i8, ptr %i.apd, i64 %i.aro ; 2 uses
  %scevgep1030.a = getelementptr i8, ptr %i.f, i64 8 ; 2 uses
  %min.iters.check1046 = icmp ult i32 %i.aon, 8
  %bound01032 = icmp ult ptr %i.apd, %scevgep1030.a
  %bound11033 = icmp ult ptr %i.f, %scevgep1029.a
  %found.conflict1034 = and i1 %bound01032, %bound11033
  %stride.check1039 = icmp slt i32 %i.arg, -3
  %invariant.op1428 = or i1 %stride.check1039, %found.conflict1034
  %n.vec1048 = and i64 %wide.trip.count815, 2147483644 ; 4 uses
  %i.arp = shl nuw nsw i64 %n.vec1048, 2
  %broadcast.splatinsert1049 = insertelement <2 x float> poison, float %i.apa, i64 0
  %broadcast.splat1050 = shufflevector <2 x float> %broadcast.splatinsert1049, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n1059 = icmp eq i64 %n.vec1048, %wide.trip.count815
  %xtraiter1380 = and i64 %wide.trip.count815, 1
  %lcmp.mod1381.not = icmp eq i64 %xtraiter1380, 0
  %i.arq = add nsw i64 %wide.trip.count815, -1
  br label %.preheader629

.preheader629:                                    ; preds = %.preheader629.lr.ph.split, %._crit_edge669
  %.promoted673 = phi ptr [ %i.aoq, %.preheader629.lr.ph.split ], [ %.lcssa1010, %._crit_edge669 ] ; 8 uses
  %.0471671 = phi i32 [ 0, %.preheader629.lr.ph.split ], [ %i.asn, %._crit_edge669 ]
  %.0472670 = phi ptr [ %i.apd, %.preheader629.lr.ph.split ], [ %i.asm, %._crit_edge669 ] ; 5 uses
  br i1 %min.iters.check1046, label %scalar.ph1045.preheader, label %vector.memcheck1028

vector.memcheck1028:                              ; preds = %.preheader629
  %scevgep1031 = getelementptr i8, ptr %.promoted673, i64 %i.arm ; 2 uses
  %bound01036 = icmp ult ptr %i.apd, %scevgep1031
  %bound11037 = icmp ult ptr %.promoted673, %scevgep1029.a
  %found.conflict1038 = and i1 %bound01036, %bound11037
  %conflict.rdx1040.reass = or i1 %found.conflict1038, %invariant.op1428
  %bound01041 = icmp ult ptr %i.f, %scevgep1031
  %bound11042 = icmp ult ptr %.promoted673, %scevgep1030.a
  %found.conflict1043 = and i1 %bound01041, %bound11042
  %conflict.rdx1044 = or i1 %conflict.rdx1040.reass, %found.conflict1043
  br i1 %conflict.rdx1044, label %scalar.ph1045.preheader, label %vector.ph1047

vector.ph1047:                                    ; preds = %vector.memcheck1028
  %i.arr = getelementptr i8, ptr %.promoted673, i64 %i.arp ; 2 uses
  br label %vector.body1051

vector.body1051:                                  ; preds = %vector.body1051, %vector.ph1047
  %index1052 = phi i64 [ 0, %vector.ph1047 ], [ %index.next1057, %vector.body1051 ] ; 3 uses
  %i.ars = shl i64 %index1052, 2                  ; 2 uses
  %next.gep1053 = getelementptr i8, ptr %.promoted673, i64 %i.ars ; 2 uses
  %i.art = getelementptr i8, ptr %next.gep1053, i64 8
  %wide.load1055 = load <2 x i32>, ptr %next.gep1053, align 1, !tbaa !118, !alias.scope !153
  %wide.load1056 = load <2 x i32>, ptr %i.art, align 1, !tbaa !118, !alias.scope !153
  %i.aru = tail call <2 x i32> @llvm.bswap.v2i32(<2 x i32> %wide.load1055)
  %i.arv = tail call <2 x i32> @llvm.bswap.v2i32(<2 x i32> %wide.load1056)
  %i.arw = bitcast <2 x i32> %i.aru to <2 x float>
  %i.arx = bitcast <2 x i32> %i.arv to <2 x float>
  %i.ary = fmul nsz <2 x float> %broadcast.splat1050, %i.arw
  %i.arz = fmul nsz <2 x float> %broadcast.splat1050, %i.arx
  %i.asa = getelementptr inbounds nuw [4 x i8], ptr %.0472670, i64 %index1052 ; 2 uses
  %i.asb = getelementptr inbounds nuw i8, ptr %i.asa, i64 8
  store <2 x float> %i.ary, ptr %i.asa, align 4, !tbaa !141, !alias.scope !154, !noalias !155
  store <2 x float> %i.arz, ptr %i.asb, align 4, !tbaa !141, !alias.scope !154, !noalias !155
  %index.next1057 = add nuw i64 %index1052, 4     ; 2 uses
  %i.asc = icmp eq i64 %index.next1057, %n.vec1048
  br i1 %i.asc, label %middle.block1058, label %vector.body1051, !llvm.loop !99

middle.block1058:                                 ; preds = %vector.body1051
  %i.asd = getelementptr i8, ptr %.promoted673, i64 %i.ars
  %i.ase = getelementptr i8, ptr %i.asd, i64 16
  store ptr %i.ase, ptr %i.f, align 8, !tbaa !111, !alias.scope !156, !noalias !153
  br i1 %cmp.n1059, label %._crit_edge669, label %scalar.ph1045.preheader

scalar.ph1045.preheader:                          ; preds = %vector.memcheck1028, %.preheader629, %middle.block1058
  %indvars.iv812.ph = phi i64 [ 0, %vector.memcheck1028 ], [ 0, %.preheader629 ], [ %n.vec1048, %middle.block1058 ] ; 4 uses
  %.ph1369 = phi ptr [ %.promoted673, %vector.memcheck1028 ], [ %.promoted673, %.preheader629 ], [ %i.arr, %middle.block1058 ] ; 3 uses
  br i1 %lcmp.mod1381.not, label %scalar.ph1045.prol.loopexit, label %scalar.ph1045.prol

scalar.ph1045.prol:                               ; preds = %scalar.ph1045.preheader
  %i.asf = load i32, ptr %.ph1369, align 1, !tbaa !118
  %i.asg = tail call i32 @llvm.bswap.i32(i32 %i.asf)
  %i.ash = bitcast i32 %i.asg to float
  %i.asi = fmul nsz float %i.apa, %i.ash
  %i.asj = getelementptr inbounds nuw [4 x i8], ptr %.0472670, i64 %indvars.iv812.ph
  store float %i.asi, ptr %i.asj, align 4, !tbaa !141
  %i.ask = getelementptr inbounds nuw i8, ptr %.ph1369, i64 4 ; 3 uses
  store ptr %i.ask, ptr %i.f, align 8, !tbaa !111
  %indvars.iv.next813.prol = or disjoint i64 %indvars.iv812.ph, 1
  br label %scalar.ph1045.prol.loopexit

scalar.ph1045.prol.loopexit:                      ; preds = %scalar.ph1045.prol, %scalar.ph1045.preheader
  %.lcssa1371.unr = phi ptr [ poison, %scalar.ph1045.preheader ], [ %i.ask, %scalar.ph1045.prol ]
  %indvars.iv812.unr = phi i64 [ %indvars.iv812.ph, %scalar.ph1045.preheader ], [ %indvars.iv.next813.prol, %scalar.ph1045.prol ]
  %.unr1383 = phi ptr [ %.ph1369, %scalar.ph1045.preheader ], [ %i.ask, %scalar.ph1045.prol ]
  %i.asl = icmp eq i64 %indvars.iv812.ph, %i.arq
  br i1 %i.asl, label %._crit_edge669, label %scalar.ph1045

._crit_edge669:                                   ; preds = %scalar.ph1045.prol.loopexit, %scalar.ph1045, %middle.block1058
  %.lcssa1010 = phi ptr [ %i.arr, %middle.block1058 ], [ %.lcssa1371.unr, %scalar.ph1045.prol.loopexit ], [ %i.atb, %scalar.ph1045 ]
  %i.asm = getelementptr inbounds [4 x i8], ptr %.0472670, i64 %i.ari
  %i.asn = add nuw nsw i32 %.0471671, 1           ; 2 uses
  %exitcond817.not = icmp eq i32 %i.asn, %i.aoo
  br i1 %exitcond817.not, label %.loopexit630, label %.preheader629, !llvm.loop !100

scalar.ph1045:                                    ; preds = %scalar.ph1045.prol.loopexit, %scalar.ph1045
  %indvars.iv812 = phi i64 [ %indvars.iv.next813.1, %scalar.ph1045 ], [ %indvars.iv812.unr, %scalar.ph1045.prol.loopexit ] ; 3 uses
  %i.aso = phi ptr [ %i.atb, %scalar.ph1045 ], [ %.unr1383, %scalar.ph1045.prol.loopexit ] ; 3 uses
  %i.asp = load i32, ptr %i.aso, align 1, !tbaa !118
  %i.asq = tail call i32 @llvm.bswap.i32(i32 %i.asp)
  %i.asr = bitcast i32 %i.asq to float
  %i.ass = fmul nsz float %i.apa, %i.asr
  %i.ast = getelementptr inbounds nuw [4 x i8], ptr %.0472670, i64 %indvars.iv812
  store float %i.ass, ptr %i.ast, align 4, !tbaa !141
  %i.asu = getelementptr inbounds nuw i8, ptr %i.aso, i64 4 ; 2 uses
  store ptr %i.asu, ptr %i.f, align 8, !tbaa !111
  %i.asv = load i32, ptr %i.asu, align 1, !tbaa !118
  %i.asw = tail call i32 @llvm.bswap.i32(i32 %i.asv)
  %i.asx = bitcast i32 %i.asw to float
  %i.asy = fmul nsz float %i.apa, %i.asx
  %i.asz = getelementptr inbounds nuw [4 x i8], ptr %.0472670, i64 %indvars.iv812
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asz, i64 4
  store float %i.asy, ptr %i.ata, align 4, !tbaa !141
  %i.atb = getelementptr inbounds nuw i8, ptr %i.aso, i64 8 ; 3 uses
  store ptr %i.atb, ptr %i.f, align 8, !tbaa !111
  %indvars.iv.next813.1 = add nuw nsw i64 %indvars.iv812, 2 ; 2 uses
  %exitcond816.not.1 = icmp eq i64 %indvars.iv.next813.1, %wide.trip.count815
  br i1 %exitcond816.not.1, label %._crit_edge669, label %scalar.ph1045, !llvm.loop !101

bb.bj:                                            ; preds = %bb.be
  %i.atc = shl i32 %i.aon, 1
  %i.atd = mul i32 %i.atc, %i.aoo
  %i.ate = sext i32 %i.atd to i64
  %i.atf = icmp slt i64 %i.aot, %i.ate
  br i1 %i.atf, label %.critedge567, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.atg = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.ath = load float, ptr %i.atg, align 8, !tbaa !138
  %i.ati = fdiv nsz float 1.000000e+00, %i.ath    ; 2 uses
  %i.atj = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.atk = load i32, ptr %i.atj, align 8, !tbaa !139
  %.not543 = icmp eq i32 %i.atk, 0
  %i.atl = load ptr, ptr %1, align 8, !tbaa !121  ; 2 uses
  %i.atm = icmp sgt i32 %i.aoo, 0                 ; 2 uses
  br i1 %.not543, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  br i1 %i.atm, label %.preheader635.lr.ph, label %.loopexit630

.preheader635.lr.ph:                              ; preds = %bb.bl
  %i.atn = icmp sgt i32 %i.aon, 0
  %i.ato = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.atp = getelementptr inbounds nuw i8, ptr %i.f, i64 12588
  %i.atq = getelementptr inbounds nuw i8, ptr %i.f, i64 12332
  %i.atr = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ats = load i32, ptr %i.atr, align 8, !tbaa !122
  %i.att = sdiv i32 %i.ats, 4
  %i.atu = sext i32 %i.att to i64
  br i1 %i.atn, label %.preheader635.lr.ph.split, label %.loopexit630

.preheader635.lr.ph.split:                        ; preds = %.preheader635.lr.ph
  %wide.trip.count = zext nneg i32 %i.aon to i64
  br label %.preheader635

.preheader635:                                    ; preds = %.preheader635.lr.ph.split, %._crit_edge
  %.promoted652 = phi ptr [ %i.aoq, %.preheader635.lr.ph.split ], [ %i.auq, %._crit_edge ]
  %.0468650 = phi i32 [ 0, %.preheader635.lr.ph.split ], [ %i.atw, %._crit_edge ]
  %.0469649 = phi ptr [ %i.atl, %.preheader635.lr.ph.split ], [ %i.atv, %._crit_edge ] ; 2 uses
  br label %bb.bm

._crit_edge:                                      ; preds = %bb.bm
  %i.atv = getelementptr inbounds [4 x i8], ptr %.0469649, i64 %i.atu
  %i.atw = add nuw nsw i32 %.0468650, 1           ; 2 uses
  %exitcond799.not = icmp eq i32 %i.atw, %i.aoo
  br i1 %exitcond799.not, label %.loopexit630, label %.preheader635, !llvm.loop !102

bb.bm:                                            ; preds = %.preheader635, %bb.bm
  %indvars.iv = phi i64 [ 0, %.preheader635 ], [ %indvars.iv.next, %bb.bm ] ; 2 uses
  %i.atx = phi ptr [ %.promoted652, %.preheader635 ], [ %i.auq, %bb.bm ] ; 2 uses
  %i.aty = load i16, ptr %i.atx, align 1, !tbaa !118
  %i.atz = zext i16 %i.aty to i32                 ; 2 uses
  %i.aua = lshr i32 %i.atz, 10
  %i.aub = zext nneg i32 %i.aua to i64            ; 2 uses
  %i.auc = getelementptr inbounds nuw [2 x i8], ptr %i.atp, i64 %i.aub
  %i.aud = load i16, ptr %i.auc, align 2, !tbaa !125
  %i.aue = zext i16 %i.aud to i32
  %i.auf = and i32 %i.atz, 1023
  %i.aug = add nuw nsw i32 %i.auf, %i.aue
  %i.auh = zext nneg i32 %i.aug to i64
  %i.aui = getelementptr inbounds nuw [4 x i8], ptr %i.ato, i64 %i.auh
  %i.auj = load i32, ptr %i.aui, align 4, !tbaa !122
  %i.auk = getelementptr inbounds nuw [4 x i8], ptr %i.atq, i64 %i.aub
  %i.aul = load i32, ptr %i.auk, align 4, !tbaa !122
  %i.aum = add i32 %i.aul, %i.auj
  %i.aun = bitcast i32 %i.aum to float
  %i.auo = fmul nsz float %i.ati, %i.aun
  %i.aup = getelementptr inbounds nuw [4 x i8], ptr %.0469649, i64 %indvars.iv
  store float %i.auo, ptr %i.aup, align 4, !tbaa !141
  %i.auq = getelementptr inbounds nuw i8, ptr %i.atx, i64 2 ; 3 uses
  store ptr %i.auq, ptr %i.f, align 8, !tbaa !111
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.bm, !llvm.loop !103

bb.bn:                                            ; preds = %bb.bk
  br i1 %i.atm, label %.preheader633.lr.ph, label %.loopexit630

.preheader633.lr.ph:                              ; preds = %bb.bn
  %i.aur = icmp sgt i32 %i.aon, 0
  %i.aus = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.aut = getelementptr inbounds nuw i8, ptr %i.f, i64 12588
  %i.auu = getelementptr inbounds nuw i8, ptr %i.f, i64 12332
  %i.auv = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.auw = load i32, ptr %i.auv, align 8, !tbaa !122
  %i.aux = sdiv i32 %i.auw, 4
  %i.auy = sext i32 %i.aux to i64
  br i1 %i.aur, label %.preheader633.lr.ph.split, label %.loopexit630

.preheader633.lr.ph.split:                        ; preds = %.preheader633.lr.ph
  %wide.trip.count803 = zext nneg i32 %i.aon to i64
  br label %.preheader633

.preheader633:                                    ; preds = %.preheader633.lr.ph.split, %._crit_edge655
  %.promoted659 = phi ptr [ %i.aoq, %.preheader633.lr.ph.split ], [ %i.avv, %._crit_edge655 ]
  %.0465657 = phi i32 [ 0, %.preheader633.lr.ph.split ], [ %i.ava, %._crit_edge655 ]
  %.0466656 = phi ptr [ %i.atl, %.preheader633.lr.ph.split ], [ %i.auz, %._crit_edge655 ] ; 2 uses
  br label %bb.bo

._crit_edge655:                                   ; preds = %bb.bo
  %i.auz = getelementptr inbounds [4 x i8], ptr %.0466656, i64 %i.auy
  %i.ava = add nuw nsw i32 %.0465657, 1           ; 2 uses
  %exitcond805.not = icmp eq i32 %i.ava, %i.aoo
  br i1 %exitcond805.not, label %.loopexit630, label %.preheader633, !llvm.loop !104

bb.bo:                                            ; preds = %.preheader633, %bb.bo
  %indvars.iv800 = phi i64 [ 0, %.preheader633 ], [ %indvars.iv.next801, %bb.bo ] ; 2 uses
end_hunk_1
