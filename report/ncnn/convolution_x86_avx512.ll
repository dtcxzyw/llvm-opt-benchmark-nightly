Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx512?download=true
inline.NumInlined: 384
inline.NumDeleted: 86
loop-unroll.NumCompletelyUnrolled: 153
loop-unroll.NumRuntimeUnrolled: 222
loop-unroll.NumUnrolled: 375
begin_hunk_0_@_ZN4ncnnL41conv3x3s1_winograd23_transform_input_tileERKNS_3MatERS0_iiiii:bb.a
  %i.aar = load float, ptr %i.aap, align 4, !tbaa !39 ; 2 uses
  br i1 %i.xs, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aan, i64 4
  %i.aat = load float, ptr %i.aas, align 4, !tbaa !39
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aap, i64 4
  %i.aav = load float, ptr %i.aau, align 4, !tbaa !39
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %.0441.us.3 = phi nsz float [ %i.aat, %bb.dl ], [ 0.000000e+00, %bb.dk ] ; 2 uses
  %.0439.us.3 = phi nsz float [ %i.aav, %bb.dl ], [ 0.000000e+00, %bb.dk ] ; 2 uses
  br i1 %i.xu, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aan, i64 8
  %i.aax = load float, ptr %i.aaw, align 4, !tbaa !39
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aap, i64 8
  %i.aaz = load float, ptr %i.aay, align 4, !tbaa !39
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %.0437.us.3 = phi nsz float [ %i.aax, %bb.dn ], [ 0.000000e+00, %bb.dm ] ; 2 uses
  %.0435.us.3 = phi nsz float [ %i.aaz, %bb.dn ], [ 0.000000e+00, %bb.dm ] ; 2 uses
  br i1 %i.xw, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aan, i64 12
  %i.abb = load float, ptr %i.aba, align 4, !tbaa !39
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aap, i64 12
  %i.abd = load float, ptr %i.abc, align 4, !tbaa !39
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do, %bb.dj
  %.0444.us.3 = phi nsz float [ 0.000000e+00, %bb.dj ], [ %i.aaq, %bb.dp ], [ %i.aaq, %bb.do ]
  %.0443.us.3 = phi nsz float [ 0.000000e+00, %bb.dj ], [ %i.aar, %bb.dp ], [ %i.aar, %bb.do ]
  %.1442.us.3 = phi nsz float [ 0.000000e+00, %bb.dj ], [ %.0441.us.3, %bb.dp ], [ %.0441.us.3, %bb.do ] ; 3 uses
  %.1440.us.3 = phi nsz float [ 0.000000e+00, %bb.dj ], [ %.0439.us.3, %bb.dp ], [ %.0439.us.3, %bb.do ] ; 3 uses
  %.1438.us.3 = phi nsz float [ 0.000000e+00, %bb.dj ], [ %.0437.us.3, %bb.dp ], [ %.0437.us.3, %bb.do ] ; 3 uses
  %.1436.us.3 = phi nsz float [ 0.000000e+00, %bb.dj ], [ %.0435.us.3, %bb.dp ], [ %.0435.us.3, %bb.do ] ; 3 uses
  %.1434.us.3 = phi nsz float [ 0.000000e+00, %bb.dj ], [ %i.abb, %bb.dp ], [ 0.000000e+00, %bb.do ]
  %.1432.us.3 = phi nsz float [ 0.000000e+00, %bb.dj ], [ %i.abd, %bb.dp ], [ 0.000000e+00, %bb.do ]
  %i.abe = fadd fast float %.1438.us.3, %.1442.us.3
  %i.abf = fadd fast float %.1436.us.3, %.1440.us.3
  %.idx812 = shl nuw nsw i64 %indvars.iv731, 3
  %i.abg = getelementptr inbounds nuw i8, ptr %i.xe, i64 %.idx812 ; 6 uses
  %i.abh = getelementptr inbounds nuw [4 x i8], ptr %i.abg, i64 %i.we ; 3 uses
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %i.abg, i64 %i.wg ; 3 uses
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %i.abg, i64 %i.wi ; 3 uses
  %i.abk = fadd fast float %.1438.us, %i.aaf
  %i.abl = fsub fast float %.0444.us, %i.abk
  store float %i.abl, ptr %i.abg, align 4, !tbaa !39
  %i.abm = fadd fast float %.1436.us, %i.aag
  %i.abn = fsub fast float %.0443.us, %i.abm
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abg, i64 4
  store float %i.abn, ptr %i.abo, align 4, !tbaa !39
  %i.abp = fadd fast float %i.aaf, %i.zg
  store float %i.abp, ptr %i.abh, align 4, !tbaa !39
  %i.abq = fadd fast float %i.aag, %i.zh
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abh, i64 4
  store float %i.abq, ptr %i.abr, align 4, !tbaa !39
  %i.abs = fsub fast float %i.aaf, %i.zg
  store float %i.abs, ptr %i.abi, align 4, !tbaa !39
  %i.abt = fsub fast float %i.aag, %i.zh
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abi, i64 4
  store float %i.abt, ptr %i.abu, align 4, !tbaa !39
  %i.abv = fadd fast float %.1438.us.3, %i.zg
  %i.abw = fsub fast float %.0444.us.3, %i.abv
  store float %i.abw, ptr %i.abj, align 4, !tbaa !39
  %i.abx = fadd fast float %.1436.us.3, %i.zh
  %i.aby = fsub fast float %.0443.us.3, %i.abx
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abj, i64 4
  store float %i.aby, ptr %i.abz, align 4, !tbaa !39
  %i.aca = getelementptr inbounds nuw [4 x i8], ptr %i.abg, i64 %i.wk ; 3 uses
  %i.acb = getelementptr inbounds nuw [4 x i8], ptr %i.abh, i64 %i.wk ; 3 uses
  %i.acc = getelementptr inbounds nuw [4 x i8], ptr %i.abi, i64 %i.wk ; 3 uses
  %i.acd = getelementptr inbounds nuw [4 x i8], ptr %i.abj, i64 %i.wk ; 3 uses
  %i.ace = fsub fast float %i.yn, %i.aah
  store float %i.ace, ptr %i.aca, align 4, !tbaa !39
  %i.acf = fsub fast float %i.yo, %i.aai
  %i.acg = getelementptr inbounds nuw i8, ptr %i.aca, i64 4
  store float %i.acf, ptr %i.acg, align 4, !tbaa !39
  %i.ach = fadd fast float %i.aah, %i.zi
  store float %i.ach, ptr %i.acb, align 4, !tbaa !39
  %i.aci = fadd fast float %i.aai, %i.zj
  %i.acj = getelementptr inbounds nuw i8, ptr %i.acb, i64 4
  store float %i.aci, ptr %i.acj, align 4, !tbaa !39
  %i.ack = fsub fast float %i.aah, %i.zi
  store float %i.ack, ptr %i.acc, align 4, !tbaa !39
  %i.acl = fsub fast float %i.aai, %i.zj
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acc, i64 4
  store float %i.acl, ptr %i.acm, align 4, !tbaa !39
  %i.acn = fsub fast float %i.abe, %i.zi
  store float %i.acn, ptr %i.acd, align 4, !tbaa !39
  %i.aco = fsub fast float %i.abf, %i.zj
  %i.acp = getelementptr inbounds nuw i8, ptr %i.acd, i64 4
  store float %i.aco, ptr %i.acp, align 4, !tbaa !39
  %i.acq = getelementptr inbounds nuw [4 x i8], ptr %i.aca, i64 %i.wk ; 3 uses
  %i.acr = getelementptr inbounds nuw [4 x i8], ptr %i.acb, i64 %i.wk ; 3 uses
  %i.acs = getelementptr inbounds nuw [4 x i8], ptr %i.acc, i64 %i.wk ; 3 uses
  %i.act = getelementptr inbounds nuw [4 x i8], ptr %i.acd, i64 %i.wk ; 3 uses
  %i.acu = fadd fast float %.1442.us, %i.aaj
  %i.acv = fsub fast float %.1438.us, %i.acu
  store float %i.acv, ptr %i.acq, align 4, !tbaa !39
  %i.acw = fadd fast float %.1440.us, %i.aak
  %i.acx = fsub fast float %.1436.us, %i.acw
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acq, i64 4
  store float %i.acx, ptr %i.acy, align 4, !tbaa !39
  %i.acz = fadd fast float %i.aaj, %i.zk
  store float %i.acz, ptr %i.acr, align 4, !tbaa !39
  %i.ada = fadd fast float %i.aak, %i.zl
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acr, i64 4
  store float %i.ada, ptr %i.adb, align 4, !tbaa !39
  %i.adc = fsub fast float %i.aaj, %i.zk
  store float %i.adc, ptr %i.acs, align 4, !tbaa !39
  %i.add = fsub fast float %i.aak, %i.zl
  %i.ade = getelementptr inbounds nuw i8, ptr %i.acs, i64 4
  store float %i.add, ptr %i.ade, align 4, !tbaa !39
  %i.adf = fadd fast float %.1442.us.3, %i.zk
  %i.adg = fsub fast float %.1438.us.3, %i.adf
  store float %i.adg, ptr %i.act, align 4, !tbaa !39
  %i.adh = fadd fast float %.1440.us.3, %i.zl
  %i.adi = fsub fast float %.1436.us.3, %i.adh
  %i.adj = getelementptr inbounds nuw i8, ptr %i.act, i64 4
  store float %i.adi, ptr %i.adj, align 4, !tbaa !39
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %i.acq, i64 %i.wk ; 2 uses
  %i.adl = getelementptr inbounds nuw [4 x i8], ptr %i.acr, i64 %i.wk ; 2 uses
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %i.acs, i64 %i.wk ; 2 uses
  %i.adn = getelementptr inbounds nuw [4 x i8], ptr %i.act, i64 %i.wk ; 2 uses
  %i.ado = fadd fast float %.1442.us, %i.aal
  %i.adp = fsub fast float %.1434.us, %i.ado
  store float %i.adp, ptr %i.adk, align 4, !tbaa !39
  %i.adq = fadd fast float %.1440.us, %i.aam
  %i.adr = fsub fast float %.1432.us, %i.adq
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adk, i64 4
  store float %i.adr, ptr %i.ads, align 4, !tbaa !39
  %i.adt = fadd fast float %i.aal, %i.zm
  store float %i.adt, ptr %i.adl, align 4, !tbaa !39
  %i.adu = fadd fast float %i.aam, %i.zn
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adl, i64 4
  store float %i.adu, ptr %i.adv, align 4, !tbaa !39
  %i.adw = fsub fast float %i.aal, %i.zm
  store float %i.adw, ptr %i.adm, align 4, !tbaa !39
  %i.adx = fsub fast float %i.aam, %i.zn
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adm, i64 4
  store float %i.adx, ptr %i.ady, align 4, !tbaa !39
  %i.adz = fadd fast float %.1442.us.3, %i.zm
  %i.aea = fsub fast float %.1434.us.3, %i.adz
  store float %i.aea, ptr %i.adn, align 4, !tbaa !39
  %i.aeb = fadd fast float %.1440.us.3, %i.zn
  %i.aec = fsub fast float %.1432.us.3, %i.aeb
  %i.aed = getelementptr inbounds nuw i8, ptr %i.adn, i64 4
  store float %i.aec, ptr %i.aed, align 4, !tbaa !39
  %indvars.iv.next732 = add nuw nsw i64 %indvars.iv731, 1 ; 2 uses
  %exitcond735.not = icmp eq i64 %indvars.iv.next732, %wide.trip.count734
  br i1 %exitcond735.not, label %._crit_edge.us671, label %_ZN4ncnn3MatD2Ev.exit494.us, !llvm.loop !859

._crit_edge.us671:                                ; preds = %bb.dq
  %indvars.iv.next737 = add nuw nsw i64 %indvars.iv736, 1 ; 2 uses
  %exitcond740.not = icmp eq i64 %indvars.iv.next737, %wide.trip.count739
  br i1 %exitcond740.not, label %._crit_edge666, label %_ZN4ncnn3MatD2Ev.exit494.lr.ph.us, !llvm.loop !860

._crit_edge666:                                   ; preds = %._crit_edge.us671, %.lr.ph665, %._crit_edge648
  %i.aee = shl nsw i32 %i.vw, 1
  %i.aef = add nsw i32 %i.aee, %i.vu              ; 2 uses
  %i.aeg = icmp slt i32 %i.aef, %5
  br i1 %i.aeg, label %.lr.ph686, label %._crit_edge687

.lr.ph686:                                        ; preds = %._crit_edge666
  %i.aeh = load i32, ptr %i.b, align 4, !tbaa !67 ; 7 uses
  %i.aei = icmp sgt i32 %i.aeh, 0
  %i.aej = load i32, ptr %i.h, align 4            ; 2 uses
  %i.aek = load i32, ptr %i.d, align 4
  %i.ael = sext i32 %i.aek to i64                 ; 3 uses
  %factor.op.mul688 = shl i32 %i.aeh, 4
  %i.aem = sext i32 %i.aeh to i64
  %i.aen = shl nsw i32 %i.aeh, 1
  %i.aeo = sext i32 %i.aen to i64
  %i.aep = mul nsw i32 %i.aeh, 3
  %i.aeq = sext i32 %i.aep to i64
  %i.aer = shl nsw i32 %i.aeh, 2
  %i.aes = sext i32 %i.aer to i64                 ; 12 uses
  br i1 %i.aei, label %.lr.ph686.split.us, label %._crit_edge687

.lr.ph686.split.us:                               ; preds = %.lr.ph686
  %i.aet = load i32, ptr %i.e, align 4            ; 2 uses
  %i.aeu = load i32, ptr %i.c, align 4
  %i.aev = load i32, ptr %i.a, align 4
  %i.aew = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aex = load i32, ptr %i.k, align 4, !tbaa !75, !noalias !861
  %i.aey = load ptr, ptr %0, align 8, !tbaa !18, !noalias !861
  %i.aez = load i64, ptr %i.q, align 8, !tbaa !20, !noalias !861
  %i.afa = load i64, ptr %i.aew, align 8, !tbaa !65, !noalias !861 ; 2 uses
  %factor.op.mul691 = mul i64 %i.aez, %i.afa
  %i.afb = sext i32 %i.aex to i64
  %factor.op.mul682.us = mul i64 %i.afa, %i.afb
  %i.afc = load ptr, ptr %1, align 8, !tbaa !18
  %i.afd = sext i32 %i.aet to i64                 ; 3 uses
  %i.afe = sext i32 %i.aef to i64
  %i.aff = sext i32 %5 to i64
  %i.afg = sext i32 %i.aeu to i64
  %wide.trip.count752 = zext nneg i32 %i.aeh to i64
  %invariant.op821 = add nsw i64 %i.afd, -1
  %invariant.op822 = add nsw i64 %i.afd, -2
  %invariant.op823 = add nsw i64 %i.afd, -3
  br label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us

_ZN4ncnn3MatD2Ev.exit.lr.ph.us:                   ; preds = %._crit_edge.us690, %.lr.ph686.split.us
  %indvars.iv754 = phi i64 [ %indvars.iv.next755, %._crit_edge.us690 ], [ %i.afe, %.lr.ph686.split.us ] ; 3 uses
  %i.afh = add nsw i64 %indvars.iv754, %i.afg
  %.reass692 = mul i64 %factor.op.mul691, %i.afh
  %i.afi = getelementptr inbounds nuw i8, ptr %i.aey, i64 %.reass692
  %i.afj = trunc nsw i64 %indvars.iv754 to i32
  %.reass689.us = mul i32 %factor.op.mul688, %i.afj
  %i.afk = sext i32 %.reass689.us to i64
  %i.afl = getelementptr inbounds [4 x i8], ptr %i.afc, i64 %i.afk
  br label %_ZN4ncnn3MatD2Ev.exit.us

_ZN4ncnn3MatD2Ev.exit.us:                         ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, %bb.es
  %indvars.iv749 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit.lr.ph.us ], [ %indvars.iv.next750, %bb.es ] ; 3 uses
  %i.afm = trunc i64 %indvars.iv749 to i32
  %i.afn = add i32 %i.aev, %i.afm                 ; 2 uses
  %i.afo = sdiv i32 %i.afn, %i.aej
  %i.afp = srem i32 %i.afn, %i.aej
  %i.afq = shl nsw i32 %i.afo, 1                  ; 2 uses
  %i.afr = sext i32 %i.afq to i64                 ; 4 uses
  %.reass683.us = mul i64 %factor.op.mul682.us, %i.afr
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afi, i64 %.reass683.us
  %i.aft = shl nsw i32 %i.afp, 1                  ; 4 uses
  %i.afu = sext i32 %i.aft to i64
  %i.afv = getelementptr inbounds [4 x i8], ptr %i.afs, i64 %i.afu ; 5 uses
  %i.afw = or disjoint i32 %i.aft, 1
  %i.afx = load i32, ptr %i.d, align 4            ; 3 uses
  %i.afy = icmp slt i32 %i.afw, %i.afx            ; 4 uses
  %i.afz = add nsw i32 %i.aft, 2
  %i.aga = icmp slt i32 %i.afz, %i.afx            ; 4 uses
  %i.agb = add nsw i32 %i.aft, 3
  %i.agc = icmp slt i32 %i.agb, %i.afx            ; 4 uses
  %i.agd = icmp slt i32 %i.afq, %i.aet
  br i1 %i.agd, label %bb.dr, label %bb.dx

bb.dr:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.us
  %i.age = load float, ptr %i.afv, align 4, !tbaa !39 ; 2 uses
  br i1 %i.afy, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.agf = getelementptr inbounds nuw i8, ptr %i.afv, i64 4
  %i.agg = load float, ptr %i.agf, align 4, !tbaa !39
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %.0405.us = phi nsz float [ %i.agg, %bb.ds ], [ 0.000000e+00, %bb.dr ] ; 2 uses
  br i1 %i.aga, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.agh = getelementptr inbounds nuw i8, ptr %i.afv, i64 8
  %i.agi = load float, ptr %i.agh, align 4, !tbaa !39
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %.0404.us = phi nsz float [ %i.agi, %bb.du ], [ 0.000000e+00, %bb.dt ] ; 2 uses
  br i1 %i.agc, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.agj = getelementptr inbounds nuw i8, ptr %i.afv, i64 12
  %i.agk = load float, ptr %i.agj, align 4, !tbaa !39
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv, %_ZN4ncnn3MatD2Ev.exit.us
  %.0407.us = phi nsz float [ %i.age, %bb.dw ], [ %i.age, %bb.dv ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit.us ]
  %.1406.us = phi nsz float [ %.0405.us, %bb.dw ], [ %.0405.us, %bb.dv ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit.us ] ; 3 uses
  %.1.us = phi nsz float [ %.0404.us, %bb.dw ], [ %.0404.us, %bb.dv ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit.us ] ; 3 uses
  %.0403.us = phi nsz float [ %i.agk, %bb.dw ], [ 0.000000e+00, %bb.dv ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit.us ]
  %i.agl = fadd fast float %.1.us, %.1406.us
  %i.agm = getelementptr inbounds [4 x i8], ptr %i.afv, i64 %i.ael ; 5 uses
  %i.agn = icmp sgt i64 %invariant.op821, %i.afr
  br i1 %i.agn, label %bb.dy, label %bb.ee

bb.dy:                                            ; preds = %bb.dx
  %i.ago = load float, ptr %i.agm, align 4, !tbaa !39 ; 2 uses
  br i1 %i.afy, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agm, i64 4
  %i.agq = load float, ptr %i.agp, align 4, !tbaa !39
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %.0405.us.1 = phi nsz float [ %i.agq, %bb.dz ], [ 0.000000e+00, %bb.dy ] ; 2 uses
  br i1 %i.aga, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agm, i64 8
  %i.ags = load float, ptr %i.agr, align 4, !tbaa !39
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %.0404.us.1 = phi nsz float [ %i.ags, %bb.eb ], [ 0.000000e+00, %bb.ea ] ; 2 uses
  br i1 %i.agc, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agm, i64 12
  %i.agu = load float, ptr %i.agt, align 4, !tbaa !39
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec, %bb.dx
  %.0407.us.1 = phi nsz float [ %i.ago, %bb.ed ], [ %i.ago, %bb.ec ], [ 0.000000e+00, %bb.dx ]
  %.1406.us.1 = phi nsz float [ %.0405.us.1, %bb.ed ], [ %.0405.us.1, %bb.ec ], [ 0.000000e+00, %bb.dx ] ; 3 uses
  %.1.us.1 = phi nsz float [ %.0404.us.1, %bb.ed ], [ %.0404.us.1, %bb.ec ], [ 0.000000e+00, %bb.dx ] ; 3 uses
  %.0403.us.1 = phi nsz float [ %i.agu, %bb.ed ], [ 0.000000e+00, %bb.ec ], [ 0.000000e+00, %bb.dx ]
  %i.agv = fsub fast float %.0407.us.1, %.1.us.1  ; 3 uses
  %i.agw = fadd fast float %.1.us.1, %.1406.us.1  ; 3 uses
  %i.agx = fsub fast float %.1.us.1, %.1406.us.1  ; 3 uses
  %i.agy = fsub fast float %.0403.us.1, %.1406.us.1 ; 3 uses
  %i.agz = getelementptr inbounds [4 x i8], ptr %i.agm, i64 %i.ael ; 5 uses
  %i.aha = icmp sgt i64 %invariant.op822, %i.afr
  br i1 %i.aha, label %bb.ef, label %bb.el

bb.ef:                                            ; preds = %bb.ee
  %i.ahb = load float, ptr %i.agz, align 4, !tbaa !39 ; 2 uses
  br i1 %i.afy, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.agz, i64 4
  %i.ahd = load float, ptr %i.ahc, align 4, !tbaa !39
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %.0405.us.2 = phi nsz float [ %i.ahd, %bb.eg ], [ 0.000000e+00, %bb.ef ] ; 2 uses
  br i1 %i.aga, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.agz, i64 8
  %i.ahf = load float, ptr %i.ahe, align 4, !tbaa !39
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %.0404.us.2 = phi nsz float [ %i.ahf, %bb.ei ], [ 0.000000e+00, %bb.eh ] ; 2 uses
  br i1 %i.agc, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.agz, i64 12
  %i.ahh = load float, ptr %i.ahg, align 4, !tbaa !39
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej, %bb.ee
  %.0407.us.2 = phi nsz float [ %i.ahb, %bb.ek ], [ %i.ahb, %bb.ej ], [ 0.000000e+00, %bb.ee ]
  %.1406.us.2 = phi nsz float [ %.0405.us.2, %bb.ek ], [ %.0405.us.2, %bb.ej ], [ 0.000000e+00, %bb.ee ] ; 3 uses
  %.1.us.2 = phi nsz float [ %.0404.us.2, %bb.ek ], [ %.0404.us.2, %bb.ej ], [ 0.000000e+00, %bb.ee ] ; 3 uses
  %.0403.us.2 = phi nsz float [ %i.ahh, %bb.ek ], [ 0.000000e+00, %bb.ej ], [ 0.000000e+00, %bb.ee ]
  %i.ahi = fsub fast float %.0407.us.2, %.1.us.2  ; 3 uses
  %i.ahj = fadd fast float %.1.us.2, %.1406.us.2  ; 3 uses
  %i.ahk = fsub fast float %.1.us.2, %.1406.us.2  ; 3 uses
  %i.ahl = fsub fast float %.0403.us.2, %.1406.us.2 ; 3 uses
  %i.ahm = getelementptr inbounds [4 x i8], ptr %i.agz, i64 %i.ael ; 4 uses
  %i.ahn = icmp sgt i64 %invariant.op823, %i.afr
  br i1 %i.ahn, label %bb.em, label %bb.es

bb.em:                                            ; preds = %bb.el
  %i.aho = load float, ptr %i.ahm, align 4, !tbaa !39 ; 2 uses
  br i1 %i.afy, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahm, i64 4
  %i.ahq = load float, ptr %i.ahp, align 4, !tbaa !39
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %.0405.us.3 = phi nsz float [ %i.ahq, %bb.en ], [ 0.000000e+00, %bb.em ] ; 2 uses
  br i1 %i.aga, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahm, i64 8
  %i.ahs = load float, ptr %i.ahr, align 4, !tbaa !39
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %.0404.us.3 = phi nsz float [ %i.ahs, %bb.ep ], [ 0.000000e+00, %bb.eo ] ; 2 uses
  br i1 %i.agc, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahm, i64 12
  %i.ahu = load float, ptr %i.aht, align 4, !tbaa !39
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq, %bb.el
  %.0407.us.3 = phi nsz float [ %i.aho, %bb.er ], [ %i.aho, %bb.eq ], [ 0.000000e+00, %bb.el ]
  %.1406.us.3 = phi nsz float [ %.0405.us.3, %bb.er ], [ %.0405.us.3, %bb.eq ], [ 0.000000e+00, %bb.el ] ; 3 uses
  %.1.us.3 = phi nsz float [ %.0404.us.3, %bb.er ], [ %.0404.us.3, %bb.eq ], [ 0.000000e+00, %bb.el ] ; 3 uses
  %.0403.us.3 = phi nsz float [ %i.ahu, %bb.er ], [ 0.000000e+00, %bb.eq ], [ 0.000000e+00, %bb.el ]
  %i.ahv = fadd fast float %.1.us.3, %.1406.us.3
  %i.ahw = getelementptr inbounds nuw [4 x i8], ptr %i.afl, i64 %indvars.iv749 ; 5 uses
  %i.ahx = getelementptr inbounds nuw [4 x i8], ptr %i.ahw, i64 %i.aem ; 2 uses
  %i.ahy = getelementptr inbounds nuw [4 x i8], ptr %i.ahw, i64 %i.aeo ; 2 uses
  %i.ahz = getelementptr inbounds nuw [4 x i8], ptr %i.ahw, i64 %i.aeq ; 2 uses
  %i.aia = fadd fast float %.1.us, %i.ahi
  %i.aib = fsub fast float %.0407.us, %i.aia
  store float %i.aib, ptr %i.ahw, align 4, !tbaa !39
  %i.aic = fadd fast float %i.ahi, %i.agv
  store float %i.aic, ptr %i.ahx, align 4, !tbaa !39
  %i.aid = fsub fast float %i.ahi, %i.agv
  store float %i.aid, ptr %i.ahy, align 4, !tbaa !39
  %i.aie = fadd fast float %.1.us.3, %i.agv
  %i.aif = fsub fast float %.0407.us.3, %i.aie
  store float %i.aif, ptr %i.ahz, align 4, !tbaa !39
  %i.aig = getelementptr inbounds nuw [4 x i8], ptr %i.ahw, i64 %i.aes ; 2 uses
  %i.aih = getelementptr inbounds nuw [4 x i8], ptr %i.ahx, i64 %i.aes ; 2 uses
  %i.aii = getelementptr inbounds nuw [4 x i8], ptr %i.ahy, i64 %i.aes ; 2 uses
  %i.aij = getelementptr inbounds nuw [4 x i8], ptr %i.ahz, i64 %i.aes ; 2 uses
  %i.aik = fsub fast float %i.agl, %i.ahj
  store float %i.aik, ptr %i.aig, align 4, !tbaa !39
  %i.ail = fadd fast float %i.ahj, %i.agw
  store float %i.ail, ptr %i.aih, align 4, !tbaa !39
  %i.aim = fsub fast float %i.ahj, %i.agw
  store float %i.aim, ptr %i.aii, align 4, !tbaa !39
  %i.ain = fsub fast float %i.ahv, %i.agw
  store float %i.ain, ptr %i.aij, align 4, !tbaa !39
  %i.aio = getelementptr inbounds nuw [4 x i8], ptr %i.aig, i64 %i.aes ; 2 uses
  %i.aip = getelementptr inbounds nuw [4 x i8], ptr %i.aih, i64 %i.aes ; 2 uses
  %i.aiq = getelementptr inbounds nuw [4 x i8], ptr %i.aii, i64 %i.aes ; 2 uses
  %i.air = getelementptr inbounds nuw [4 x i8], ptr %i.aij, i64 %i.aes ; 2 uses
  %i.ais = fadd fast float %.1406.us, %i.ahk
  %i.ait = fsub fast float %.1.us, %i.ais
  store float %i.ait, ptr %i.aio, align 4, !tbaa !39
  %i.aiu = fadd fast float %i.ahk, %i.agx
  store float %i.aiu, ptr %i.aip, align 4, !tbaa !39
  %i.aiv = fsub fast float %i.ahk, %i.agx
  store float %i.aiv, ptr %i.aiq, align 4, !tbaa !39
  %i.aiw = fadd fast float %.1406.us.3, %i.agx
  %i.aix = fsub fast float %.1.us.3, %i.aiw
  store float %i.aix, ptr %i.air, align 4, !tbaa !39
  %i.aiy = getelementptr inbounds nuw [4 x i8], ptr %i.aio, i64 %i.aes
  %i.aiz = getelementptr inbounds nuw [4 x i8], ptr %i.aip, i64 %i.aes
  %i.aja = getelementptr inbounds nuw [4 x i8], ptr %i.aiq, i64 %i.aes
  %i.ajb = getelementptr inbounds nuw [4 x i8], ptr %i.air, i64 %i.aes
  %i.ajc = fadd fast float %.1406.us, %i.ahl
  %i.ajd = fsub fast float %.0403.us, %i.ajc
  store float %i.ajd, ptr %i.aiy, align 4, !tbaa !39
  %i.aje = fadd fast float %i.ahl, %i.agy
  store float %i.aje, ptr %i.aiz, align 4, !tbaa !39
  %i.ajf = fsub fast float %i.ahl, %i.agy
  store float %i.ajf, ptr %i.aja, align 4, !tbaa !39
  %i.ajg = fadd fast float %.1406.us.3, %i.agy
  %i.ajh = fsub fast float %.0403.us.3, %i.ajg
  store float %i.ajh, ptr %i.ajb, align 4, !tbaa !39
  %indvars.iv.next750 = add nuw nsw i64 %indvars.iv749, 1 ; 2 uses
  %exitcond753.not = icmp eq i64 %indvars.iv.next750, %wide.trip.count752
  br i1 %exitcond753.not, label %._crit_edge.us690, label %_ZN4ncnn3MatD2Ev.exit.us, !llvm.loop !864

._crit_edge.us690:                                ; preds = %bb.es
  %indvars.iv.next755 = add nsw i64 %indvars.iv754, 1 ; 2 uses
  %7 = icmp slt i64 %indvars.iv.next755, %i.aff
  br i1 %7, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, label %._crit_edge687, !llvm.loop !865

._crit_edge687:                                   ; preds = %._crit_edge.us690, %.lr.ph686, %._crit_edge666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL20conv3x3s1_winograd23ERKNS_3MatERS0_S2_S2_iRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %i.h = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i32 %i.j, ptr %i.e, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store i32 1, ptr %i.f, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store i32 0, ptr %i.g, align 4, !tbaa !67
  %i.k = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f, i32 1, i32 1)
  %i.l = load i32, ptr %i.e, align 4, !tbaa !67
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 2 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !67
  %i.n = load i32, ptr %i.d, align 4, !tbaa !67   ; 2 uses
  %.not66 = icmp sgt i32 %i.n, %i.m
  br i1 %.not66, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 52
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 52
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.067 = phi i32 [ %i.n, %.lr.ph ], [ %i.dv, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.at = load i32, ptr %3, align 4, !tbaa !67    ; 2 uses
  %i.au = sdiv i32 %.067, %i.at
  %i.av = srem i32 %.067, %i.at
  %i.aw = load i32, ptr %4, align 4, !tbaa !67    ; 2 uses
  %i.ax = mul nsw i32 %i.aw, %i.au                ; 3 uses
  %i.ay = load i32, ptr %5, align 4, !tbaa !67    ; 2 uses
  %i.az = mul nsw i32 %i.ay, %i.av                ; 3 uses
  %i.ba = load i32, ptr %6, align 4, !tbaa !67
  %i.bb = sub nsw i32 %i.ba, %i.ax
  %.sroa.speculated63 = call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.bb) ; 2 uses
  %i.bc = load i32, ptr %7, align 4, !tbaa !67
  %i.bd = sub nsw i32 %i.bc, %i.az
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ay, i32 %i.bd) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.be = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %bb.d unwind label %bb.s

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !866)
  %i.bf = load i32, ptr %i.o, align 4, !tbaa !75, !noalias !866 ; 2 uses
  %i.bg = load i32, ptr %i.p, align 8, !tbaa !76, !noalias !866 ; 2 uses
  %i.bh = load i32, ptr %i.q, align 4, !tbaa !226, !noalias !866
  %i.bi = load ptr, ptr %8, align 8, !tbaa !18, !noalias !866
  %i.bj = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !866
  %i.bk = sext i32 %i.be to i64
  %i.bl = mul i64 %i.bj, %i.bk
  %i.bm = load i64, ptr %i.s, align 8, !tbaa !65, !noalias !866 ; 4 uses
  %i.bn = mul i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bn
  %i.bp = load i32, ptr %i.t, align 8, !tbaa !66, !noalias !866
  %i.bq = load ptr, ptr %i.u, align 8, !tbaa !17, !noalias !866
  store ptr %i.bo, ptr %11, align 8, !tbaa !18, !alias.scope !866
  store ptr null, ptr %i.v, align 8, !tbaa !11, !alias.scope !866
  store i64 %i.bm, ptr %i.w, align 8, !tbaa !65, !alias.scope !866
  store i32 %i.bp, ptr %i.x, align 8, !tbaa !66, !alias.scope !866
  store ptr %i.bq, ptr %i.y, align 8, !tbaa !17, !alias.scope !866
  store i32 %i.bf, ptr %i.aa, align 4, !tbaa !75, !alias.scope !866
  store i32 %i.bg, ptr %i.ab, align 8, !tbaa !76, !alias.scope !866
  store i32 1, ptr %i.ac, align 4, !tbaa !226, !alias.scope !866
  store i32 %i.bh, ptr %i.ad, align 8, !tbaa !68, !alias.scope !866
  %i.br = sext i32 %i.bf to i64
  %i.bs = sext i32 %i.bg to i64
  %i.bt = mul nsw i64 %i.bs, %i.br                ; 2 uses
  %i.bu = mul i64 %i.bm, %i.bt
  %i.bv = add i64 %i.bu, 15
  %i.bw = and i64 %i.bv, -16
  %i.bx = udiv i64 %i.bw, %i.bm
  store i64 %i.bx, ptr %i.ae, align 8, !tbaa !20, !alias.scope !866
  %i.by = load i32, ptr %i.af, align 8, !tbaa !225, !noalias !866 ; 2 uses
  %i.bz = add nsw i32 %i.by, -1
  store i32 %i.bz, ptr %i.z, align 8, !tbaa !225, !alias.scope !866
  %i.ca = icmp eq i32 %i.by, 4
  br i1 %i.ca, label %bb.e, label %_ZN4ncnn3Mat7channelEi.exit48

bb.e:                                             ; preds = %bb.d
  store i64 %i.bt, ptr %i.ae, align 8, !tbaa !20, !alias.scope !866
  br label %_ZN4ncnn3Mat7channelEi.exit48

_ZN4ncnn3Mat7channelEi.exit48:                    ; preds = %bb.e, %bb.d
  call fastcc void @_ZN4ncnnL41conv3x3s1_winograd23_transform_input_tileERKNS_3MatERS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.ax, i32 noundef %.sroa.speculated63, i32 noundef %i.az, i32 noundef %.sroa.speculated, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.cb = load i32, ptr %4, align 4, !tbaa !67
  %i.cc = sdiv i32 %i.ax, %i.cb
  %i.cd = load ptr, ptr %10, align 8, !tbaa !18, !noalias !869
  %i.ce = load i64, ptr %i.ai, align 8, !tbaa !20, !noalias !869
  %i.cf = sext i32 %i.cc to i64
  %i.cg = mul i64 %i.ce, %i.cf
  %i.ch = load i64, ptr %i.aj, align 8, !tbaa !65, !noalias !869 ; 3 uses
  %i.ci = mul i64 %i.cg, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ci
  %i.ck = load i32, ptr %i.ak, align 8, !tbaa !66, !noalias !869
  %i.cl = load ptr, ptr %i.al, align 8, !tbaa !17, !noalias !869
  %i.cm = load i32, ptr %5, align 4, !tbaa !67
  %i.cn = sdiv i32 %i.az, %i.cm
  %i.co = sext i32 %i.cn to i64
  store ptr null, ptr %i.am, align 8, !tbaa !11
  store i64 %i.ch, ptr %i.an, align 8, !tbaa !65
  store i32 %i.ck, ptr %i.ao, align 8, !tbaa !66
  store ptr %i.cl, ptr %i.ap, align 8, !tbaa !17
  %i.cp = load <2 x i32>, ptr %i.ag, align 4, !tbaa !67, !noalias !869
  %i.cq = load i32, ptr %i.ah, align 8, !tbaa !76, !noalias !869
  %i.cr = load i32, ptr %i.ag, align 4, !tbaa !75, !noalias !869
  %i.cs = sext i32 %i.cr to i64
  %i.ct = sext i32 %i.cq to i64
  %i.cu = mul nsw i64 %i.ct, %i.cs                ; 2 uses
  %i.cv = mul i64 %i.ch, %i.cu
  %i.cw = mul i64 %i.cv, %i.co
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cw
  store ptr %i.cx, ptr %12, align 8, !tbaa !18
  %i.cy = shufflevector <2 x i32> %i.cp, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.cz = shufflevector <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, <4 x i32> %i.cy, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i32> %i.cz, ptr %i.aq, align 8, !tbaa !67
  store i32 1, ptr %i.ar, align 8, !tbaa !68
  store i64 %i.cu, ptr %i.as, align 8, !tbaa !20, !alias.scope !872
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.da = call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 16, ptr %i.a, align 4, !tbaa !67
  store i32 %.sroa.speculated63, ptr %i.b, align 4, !tbaa !67
  store i32 %.sroa.speculated, ptr %i.c, align 4, !tbaa !67
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.da, i32 1)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN4ncnnL21transpose_pack_B_tileERKNS_3MatERS0_iiii.omp_outlined, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %12, ptr nonnull %i.b, ptr nonnull align 8 dereferenceable(72) %11, ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.db = load ptr, ptr %i.am, align 8, !tbaa !11 ; 2 uses
  %.not.i35 = icmp eq ptr %i.db, null
  br i1 %.not.i35, label %_ZN4ncnn3MatD2Ev.exit33, label %bb.f

bb.f:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit48
  %i.dc = atomicrmw add ptr %i.db, i32 -1 acq_rel, align 4
  %i.dd = icmp eq i32 %i.dc, 1
  br i1 %i.dd, label %bb.g, label %_ZN4ncnn3MatD2Ev.exit33

bb.g:                                             ; preds = %bb.f
  %i.de = load ptr, ptr %i.ap, align 8, !tbaa !17 ; 3 uses
  %.not3.i36 = icmp eq ptr %i.de, null
end_hunk_0
begin_hunk_1_@_ZN4ncnnL41conv3x3s1_winograd43_transform_input_tileERKNS_3MatERS0_iiiii:bb.a
  %i.brs = getelementptr inbounds nuw [4 x i8], ptr %i.bqm, i64 %i.bje ; 2 uses
  %i.brt = getelementptr inbounds nuw [4 x i8], ptr %i.bqn, i64 %i.bje ; 2 uses
  %i.bru = getelementptr inbounds nuw [4 x i8], ptr %i.bqo, i64 %i.bje ; 2 uses
  %i.brv = load <2 x float>, ptr %i.bkd, align 16, !tbaa !39
  %i.brw = load <2 x float>, ptr %i.bkf, align 16, !tbaa !39 ; 3 uses
  %i.brx = load <2 x float>, ptr %i.bkh, align 16, !tbaa !39 ; 3 uses
  %i.bry = fmul fast <2 x float> %i.brw, splat (float -2.500000e+00)
  %i.brz = fadd fast <2 x float> %i.brv, %i.bry
  %i.bsa = fadd fast <2 x float> %i.brx, %i.brz
  store <2 x float> %i.bsa, ptr %i.brp, align 4, !tbaa !39
  %i.bsb = load <2 x float>, ptr %i.bke, align 8, !tbaa !39 ; 3 uses
  %i.bsc = load <2 x float>, ptr %i.bkg, align 8, !tbaa !39 ; 3 uses
  %i.bsd = fmul fast <2 x float> %i.bsb, splat (float f0x3FB504F3)
  %i.bse = fmul fast <2 x float> %i.bsc, splat (float f0x3F3504F3)
  %i.bsf = fsub fast <2 x float> %i.bsd, %i.bse   ; 2 uses
  %i.bsg = fmul fast <2 x float> %i.brw, splat (float 2.000000e+00)
  %i.bsh = fsub fast <2 x float> %i.brx, %i.bsg   ; 2 uses
  %i.bsi = fsub fast <2 x float> %i.bsh, %i.bsf
  store <2 x float> %i.bsi, ptr %i.brq, align 4, !tbaa !39
  %i.bsj = fadd fast <2 x float> %i.bsh, %i.bsf
  store <2 x float> %i.bsj, ptr %i.brr, align 4, !tbaa !39
  %i.bsk = fmul fast <2 x float> %i.brw, splat (float 5.000000e-01)
  %i.bsl = fsub fast <2 x float> %i.brx, %i.bsk   ; 2 uses
  %i.bsm = fmul fast <2 x float> %i.bsc, splat (float f0x3FB504F3)
  %i.bsn = fmul fast <2 x float> %i.bsb, splat (float f0x3F3504F3)
  %i.bso = fsub fast <2 x float> %i.bsm, %i.bsn   ; 2 uses
  %i.bsp = fadd fast <2 x float> %i.bsl, %i.bso
  store <2 x float> %i.bsp, ptr %i.brs, align 4, !tbaa !39
  %i.bsq = fsub fast <2 x float> %i.bsl, %i.bso
  store <2 x float> %i.bsq, ptr %i.brt, align 4, !tbaa !39
  %i.bsr = load <2 x float>, ptr %i.bki, align 8, !tbaa !39
  %i.bss = fmul fast <2 x float> %i.bsc, splat (float -2.500000e+00)
  %i.bst = fadd fast <2 x float> %i.bsb, %i.bss
  %i.bsu = fadd fast <2 x float> %i.bsr, %i.bst
  store <2 x float> %i.bsu, ptr %i.bru, align 4, !tbaa !39
  %i.bsv = getelementptr inbounds nuw [4 x i8], ptr %i.brp, i64 %i.bje ; 2 uses
  %i.bsw = getelementptr inbounds nuw [4 x i8], ptr %i.brq, i64 %i.bje ; 2 uses
  %i.bsx = getelementptr inbounds nuw [4 x i8], ptr %i.brr, i64 %i.bje ; 2 uses
  %i.bsy = getelementptr inbounds nuw [4 x i8], ptr %i.brs, i64 %i.bje ; 2 uses
  %i.bsz = getelementptr inbounds nuw [4 x i8], ptr %i.brt, i64 %i.bje ; 2 uses
  %i.bta = getelementptr inbounds nuw [4 x i8], ptr %i.bru, i64 %i.bje ; 2 uses
  %i.btb = load <2 x float>, ptr %i.bkj, align 16, !tbaa !39
  %i.btc = load <2 x float>, ptr %i.bkl, align 16, !tbaa !39 ; 3 uses
  %i.btd = load <2 x float>, ptr %i.bkn, align 16, !tbaa !39 ; 3 uses
  %i.bte = fmul fast <2 x float> %i.btc, splat (float -2.500000e+00)
  %i.btf = fadd fast <2 x float> %i.btb, %i.bte
  %i.btg = fadd fast <2 x float> %i.btd, %i.btf
  store <2 x float> %i.btg, ptr %i.bsv, align 4, !tbaa !39
  %i.bth = load <2 x float>, ptr %i.bkk, align 8, !tbaa !39 ; 3 uses
  %i.bti = load <2 x float>, ptr %i.bkm, align 8, !tbaa !39 ; 3 uses
  %i.btj = fmul fast <2 x float> %i.bth, splat (float f0x3FB504F3)
  %i.btk = fmul fast <2 x float> %i.bti, splat (float f0x3F3504F3)
  %i.btl = fsub fast <2 x float> %i.btj, %i.btk   ; 2 uses
  %i.btm = fmul fast <2 x float> %i.btc, splat (float 2.000000e+00)
  %i.btn = fsub fast <2 x float> %i.btd, %i.btm   ; 2 uses
  %i.bto = fsub fast <2 x float> %i.btn, %i.btl
  store <2 x float> %i.bto, ptr %i.bsw, align 4, !tbaa !39
  %i.btp = fadd fast <2 x float> %i.btn, %i.btl
  store <2 x float> %i.btp, ptr %i.bsx, align 4, !tbaa !39
  %i.btq = fmul fast <2 x float> %i.btc, splat (float 5.000000e-01)
  %i.btr = fsub fast <2 x float> %i.btd, %i.btq   ; 2 uses
  %i.bts = fmul fast <2 x float> %i.bti, splat (float f0x3FB504F3)
  %i.btt = fmul fast <2 x float> %i.bth, splat (float f0x3F3504F3)
  %i.btu = fsub fast <2 x float> %i.bts, %i.btt   ; 2 uses
  %i.btv = fadd fast <2 x float> %i.btr, %i.btu
  store <2 x float> %i.btv, ptr %i.bsy, align 4, !tbaa !39
  %i.btw = fsub fast <2 x float> %i.btr, %i.btu
  store <2 x float> %i.btw, ptr %i.bsz, align 4, !tbaa !39
  %i.btx = load <2 x float>, ptr %i.bko, align 8, !tbaa !39
  %i.bty = fmul fast <2 x float> %i.bti, splat (float -2.500000e+00)
  %i.btz = fadd fast <2 x float> %i.bth, %i.bty
  %i.bua = fadd fast <2 x float> %i.btx, %i.btz
  store <2 x float> %i.bua, ptr %i.bta, align 4, !tbaa !39
  %i.bub = getelementptr inbounds nuw [4 x i8], ptr %i.bsv, i64 %i.bje ; 2 uses
  %i.buc = getelementptr inbounds nuw [4 x i8], ptr %i.bsw, i64 %i.bje ; 2 uses
  %i.bud = getelementptr inbounds nuw [4 x i8], ptr %i.bsx, i64 %i.bje ; 2 uses
  %i.bue = getelementptr inbounds nuw [4 x i8], ptr %i.bsy, i64 %i.bje ; 2 uses
  %i.buf = getelementptr inbounds nuw [4 x i8], ptr %i.bsz, i64 %i.bje ; 2 uses
  %i.bug = getelementptr inbounds nuw [4 x i8], ptr %i.bta, i64 %i.bje ; 2 uses
  %i.buh = load <2 x float>, ptr %i.bkp, align 16, !tbaa !39
  %i.bui = load <2 x float>, ptr %i.bkr, align 16, !tbaa !39 ; 3 uses
  %i.buj = load <2 x float>, ptr %i.bkt, align 16, !tbaa !39 ; 3 uses
  %i.buk = fmul fast <2 x float> %i.bui, splat (float -2.500000e+00)
  %i.bul = fadd fast <2 x float> %i.buh, %i.buk
  %i.bum = fadd fast <2 x float> %i.buj, %i.bul
  store <2 x float> %i.bum, ptr %i.bub, align 4, !tbaa !39
  %i.bun = load <2 x float>, ptr %i.bkq, align 8, !tbaa !39 ; 3 uses
  %i.buo = load <2 x float>, ptr %i.bks, align 8, !tbaa !39 ; 3 uses
  %i.bup = fmul fast <2 x float> %i.bun, splat (float f0x3FB504F3)
  %i.buq = fmul fast <2 x float> %i.buo, splat (float f0x3F3504F3)
  %i.bur = fsub fast <2 x float> %i.bup, %i.buq   ; 2 uses
  %i.bus = fmul fast <2 x float> %i.bui, splat (float 2.000000e+00)
  %i.but = fsub fast <2 x float> %i.buj, %i.bus   ; 2 uses
  %i.buu = fsub fast <2 x float> %i.but, %i.bur
  store <2 x float> %i.buu, ptr %i.buc, align 4, !tbaa !39
  %i.buv = fadd fast <2 x float> %i.but, %i.bur
  store <2 x float> %i.buv, ptr %i.bud, align 4, !tbaa !39
  %i.buw = fmul fast <2 x float> %i.bui, splat (float 5.000000e-01)
  %i.bux = fsub fast <2 x float> %i.buj, %i.buw   ; 2 uses
  %i.buy = fmul fast <2 x float> %i.buo, splat (float f0x3FB504F3)
  %i.buz = fmul fast <2 x float> %i.bun, splat (float f0x3F3504F3)
  %i.bva = fsub fast <2 x float> %i.buy, %i.buz   ; 2 uses
  %i.bvb = fadd fast <2 x float> %i.bux, %i.bva
  store <2 x float> %i.bvb, ptr %i.bue, align 4, !tbaa !39
  %i.bvc = fsub fast <2 x float> %i.bux, %i.bva
  store <2 x float> %i.bvc, ptr %i.buf, align 4, !tbaa !39
  %i.bvd = load <2 x float>, ptr %i.bku, align 8, !tbaa !39
  %i.bve = fmul fast <2 x float> %i.buo, splat (float -2.500000e+00)
  %i.bvf = fadd fast <2 x float> %i.bun, %i.bve
  %i.bvg = fadd fast <2 x float> %i.bvd, %i.bvf
  store <2 x float> %i.bvg, ptr %i.bug, align 4, !tbaa !39
  %i.bvh = getelementptr inbounds nuw [4 x i8], ptr %i.bub, i64 %i.bje
  %i.bvi = getelementptr inbounds nuw [4 x i8], ptr %i.buc, i64 %i.bje
  %i.bvj = getelementptr inbounds nuw [4 x i8], ptr %i.bud, i64 %i.bje
  %i.bvk = getelementptr inbounds nuw [4 x i8], ptr %i.bue, i64 %i.bje
  %i.bvl = getelementptr inbounds nuw [4 x i8], ptr %i.buf, i64 %i.bje
  %i.bvm = getelementptr inbounds nuw [4 x i8], ptr %i.bug, i64 %i.bje
  %i.bvn = load <2 x float>, ptr %i.bkv, align 16, !tbaa !39
  %i.bvo = load <2 x float>, ptr %i.bkx, align 16, !tbaa !39 ; 3 uses
  %i.bvp = load <2 x float>, ptr %i.bkz, align 16, !tbaa !39 ; 3 uses
  %i.bvq = fmul fast <2 x float> %i.bvo, splat (float -2.500000e+00)
  %i.bvr = fadd fast <2 x float> %i.bvn, %i.bvq
  %i.bvs = fadd fast <2 x float> %i.bvp, %i.bvr
  store <2 x float> %i.bvs, ptr %i.bvh, align 4, !tbaa !39
  %i.bvt = load <2 x float>, ptr %i.bkw, align 8, !tbaa !39 ; 3 uses
  %i.bvu = load <2 x float>, ptr %i.bky, align 8, !tbaa !39 ; 3 uses
  %i.bvv = fmul fast <2 x float> %i.bvt, splat (float f0x3FB504F3)
  %i.bvw = fmul fast <2 x float> %i.bvu, splat (float f0x3F3504F3)
  %i.bvx = fsub fast <2 x float> %i.bvv, %i.bvw   ; 2 uses
  %i.bvy = fmul fast <2 x float> %i.bvo, splat (float 2.000000e+00)
  %i.bvz = fsub fast <2 x float> %i.bvp, %i.bvy   ; 2 uses
  %i.bwa = fsub fast <2 x float> %i.bvz, %i.bvx
  store <2 x float> %i.bwa, ptr %i.bvi, align 4, !tbaa !39
  %i.bwb = fadd fast <2 x float> %i.bvz, %i.bvx
  store <2 x float> %i.bwb, ptr %i.bvj, align 4, !tbaa !39
  %i.bwc = fmul fast <2 x float> %i.bvo, splat (float 5.000000e-01)
  %i.bwd = fsub fast <2 x float> %i.bvp, %i.bwc   ; 2 uses
  %i.bwe = fmul fast <2 x float> %i.bvu, splat (float f0x3FB504F3)
  %i.bwf = fmul fast <2 x float> %i.bvt, splat (float f0x3F3504F3)
  %i.bwg = fsub fast <2 x float> %i.bwe, %i.bwf   ; 2 uses
  %i.bwh = fadd fast <2 x float> %i.bwd, %i.bwg
  store <2 x float> %i.bwh, ptr %i.bvk, align 4, !tbaa !39
  %i.bwi = fsub fast <2 x float> %i.bwd, %i.bwg
  store <2 x float> %i.bwi, ptr %i.bvl, align 4, !tbaa !39
  %i.bwj = load <2 x float>, ptr %i.bla, align 8, !tbaa !39
  %i.bwk = fmul fast <2 x float> %i.bvu, splat (float -2.500000e+00)
  %i.bwl = fadd fast <2 x float> %i.bvt, %i.bwk
  %i.bwm = fadd fast <2 x float> %i.bwj, %i.bwl
  store <2 x float> %i.bwm, ptr %i.bvm, align 4, !tbaa !39
  %indvars.iv.next1091 = add nuw nsw i64 %indvars.iv1090, 1 ; 2 uses
  %exitcond1094.not = icmp eq i64 %indvars.iv.next1091, %wide.trip.count1093
  br i1 %exitcond1094.not, label %._crit_edge.us1028, label %_ZN4ncnn3MatD2Ev.exit701.us, !llvm.loop !1040

._crit_edge.us1028:                               ; preds = %bb.iu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #12
  %indvars.iv.next1096 = add nuw nsw i64 %indvars.iv1095, 1 ; 2 uses
  %exitcond1099.not = icmp eq i64 %indvars.iv.next1096, %wide.trip.count1098
  br i1 %exitcond1099.not, label %._crit_edge1023, label %_ZN4ncnn3MatD2Ev.exit701.lr.ph.us, !llvm.loop !1041

._crit_edge1023:                                  ; preds = %._crit_edge.us1028, %.lr.ph1022, %._crit_edge1002
  %i.bwn = shl nsw i32 %i.bih, 1
  %i.bwo = add nsw i32 %i.bwn, %i.bif             ; 2 uses
  %i.bwp = icmp slt i32 %i.bwo, %5
  br i1 %i.bwp, label %.lr.ph1045, label %._crit_edge1046

.lr.ph1045:                                       ; preds = %._crit_edge1023
  %i.bwq = load i32, ptr %i.b, align 4, !tbaa !67 ; 9 uses
  %i.bwr = icmp sgt i32 %i.bwq, 0
  %i.bws = load i32, ptr %i.j, align 4            ; 2 uses
  %i.bwt = load i32, ptr %i.f, align 4
  %i.bwu = sext i32 %i.bwt to i64                 ; 5 uses
  %factor.op.mul1047 = mul i32 %i.bwq, 36
  %i.bwv = sext i32 %i.bwq to i64
  %i.bww = shl nsw i32 %i.bwq, 1
  %i.bwx = sext i32 %i.bww to i64
  %i.bwy = mul nsw i32 %i.bwq, 3
  %i.bwz = sext i32 %i.bwy to i64
  %i.bxa = shl nsw i32 %i.bwq, 2
  %i.bxb = sext i32 %i.bxa to i64
  %i.bxc = mul nsw i32 %i.bwq, 5
  %i.bxd = sext i32 %i.bxc to i64
  %i.bxe = mul nsw i32 %i.bwq, 6
  %i.bxf = sext i32 %i.bxe to i64                 ; 30 uses
  br i1 %i.bwr, label %.lr.ph1045.split.us, label %._crit_edge1046

.lr.ph1045.split.us:                              ; preds = %.lr.ph1045
  %i.bxg = load i32, ptr %i.g, align 4            ; 2 uses
  %i.bxh = load i32, ptr %i.c, align 4
  %i.bxi = load i32, ptr %i.a, align 4
  %i.bxj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bxk = load i32, ptr %i.n, align 4, !tbaa !75, !noalias !1042
  %i.bxl = load ptr, ptr %0, align 8, !tbaa !18, !noalias !1042
  %i.bxm = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !1042
  %i.bxn = load i64, ptr %i.bxj, align 8, !tbaa !65, !noalias !1042 ; 2 uses
  %factor.op.mul1050 = mul i64 %i.bxm, %i.bxn
  %i.bxo = sext i32 %i.bxk to i64
  %factor.op.mul1041.us = mul i64 %i.bxn, %i.bxo
  %i.bxp = load ptr, ptr %1, align 8, !tbaa !18
  %i.bxq = sext i32 %i.bxg to i64                 ; 5 uses
  %i.bxr = sext i32 %i.bwo to i64
  %i.bxs = sext i32 %5 to i64
  %i.bxt = sext i32 %i.bxh to i64
  %wide.trip.count1111 = zext nneg i32 %i.bwq to i64
  %invariant.op1206 = add nsw i64 %i.bxq, -1
  %invariant.op1207 = add nsw i64 %i.bxq, -2
  %invariant.op1208 = add nsw i64 %i.bxq, -3
  %invariant.op1209 = add nsw i64 %i.bxq, -4
  %invariant.op1210 = add nsw i64 %i.bxq, -5
  br label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us

_ZN4ncnn3MatD2Ev.exit.lr.ph.us:                   ; preds = %._crit_edge.us1049, %.lr.ph1045.split.us
  %indvars.iv1113 = phi i64 [ %indvars.iv.next1114, %._crit_edge.us1049 ], [ %i.bxr, %.lr.ph1045.split.us ] ; 3 uses
  %i.bxu = add nsw i64 %indvars.iv1113, %i.bxt
  %.reass1051 = mul i64 %factor.op.mul1050, %i.bxu
  %i.bxv = getelementptr inbounds nuw i8, ptr %i.bxl, i64 %.reass1051
  %i.bxw = trunc nsw i64 %indvars.iv1113 to i32
  %.reass1048.us = mul i32 %factor.op.mul1047, %i.bxw
  %i.bxx = sext i32 %.reass1048.us to i64
  %i.bxy = getelementptr inbounds [4 x i8], ptr %i.bxp, i64 %i.bxx
  br label %_ZN4ncnn3MatD2Ev.exit.us

_ZN4ncnn3MatD2Ev.exit.us:                         ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, %bb.li
  %indvars.iv1108 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit.lr.ph.us ], [ %indvars.iv.next1109, %bb.li ] ; 3 uses
  %i.bxz = trunc i64 %indvars.iv1108 to i32
  %i.bya = add i32 %i.bxi, %i.bxz                 ; 2 uses
  %i.byb = sdiv i32 %i.bya, %i.bws
  %i.byc = srem i32 %i.bya, %i.bws
  %i.byd = shl nsw i32 %i.byb, 2                  ; 2 uses
  %i.bye = sext i32 %i.byd to i64                 ; 6 uses
  %.reass1042.us = mul i64 %factor.op.mul1041.us, %i.bye
  %i.byf = getelementptr inbounds nuw i8, ptr %i.bxv, i64 %.reass1042.us
  %i.byg = shl nsw i32 %i.byc, 2                  ; 6 uses
  %i.byh = sext i32 %i.byg to i64
  %i.byi = getelementptr inbounds [4 x i8], ptr %i.byf, i64 %i.byh ; 7 uses
  %i.byj = or disjoint i32 %i.byg, 1
  %i.byk = load i32, ptr %i.f, align 4            ; 5 uses
  %i.byl = icmp slt i32 %i.byj, %i.byk            ; 6 uses
  %i.bym = or disjoint i32 %i.byg, 2
  %i.byn = icmp slt i32 %i.bym, %i.byk            ; 6 uses
  %i.byo = or disjoint i32 %i.byg, 3
  %i.byp = icmp slt i32 %i.byo, %i.byk            ; 6 uses
  %i.byq = add nsw i32 %i.byg, 4
  %i.byr = icmp slt i32 %i.byq, %i.byk            ; 6 uses
  %i.bys = add nsw i32 %i.byg, 5
  %i.byt = icmp slt i32 %i.bys, %i.byk            ; 6 uses
  %i.byu = icmp slt i32 %i.byd, %i.bxg
  br i1 %i.byu, label %bb.iv, label %bb.jf

bb.iv:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.us
  %i.byv = load float, ptr %i.byi, align 4, !tbaa !39 ; 2 uses
  br i1 %i.byl, label %bb.iw, label %bb.ix

bb.iw:                                            ; preds = %bb.iv
  %i.byw = getelementptr inbounds nuw i8, ptr %i.byi, i64 4
  %i.byx = load float, ptr %i.byw, align 4, !tbaa !39
  br label %bb.ix

bb.ix:                                            ; preds = %bb.iw, %bb.iv
  %.0625.us = phi nsz float [ %i.byx, %bb.iw ], [ 0.000000e+00, %bb.iv ] ; 4 uses
  br i1 %i.byn, label %bb.iy, label %bb.iz

bb.iy:                                            ; preds = %bb.ix
  %i.byy = getelementptr inbounds nuw i8, ptr %i.byi, i64 8
  %i.byz = load float, ptr %i.byy, align 4, !tbaa !39
  br label %bb.iz

bb.iz:                                            ; preds = %bb.iy, %bb.ix
  %.0623.us = phi nsz float [ %i.byz, %bb.iy ], [ 0.000000e+00, %bb.ix ] ; 2 uses
  br i1 %i.byp, label %bb.ja, label %bb.jb

bb.ja:                                            ; preds = %bb.iz
  %i.bza = getelementptr inbounds nuw i8, ptr %i.byi, i64 12
  %i.bzb = load float, ptr %i.bza, align 4, !tbaa !39
  br label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %bb.iz
  %.0621.us = phi nsz float [ %i.bzb, %bb.ja ], [ 0.000000e+00, %bb.iz ] ; 2 uses
  br i1 %i.byr, label %bb.jc, label %bb.jd

bb.jc:                                            ; preds = %bb.jb
  %i.bzc = getelementptr inbounds nuw i8, ptr %i.byi, i64 16
  %i.bzd = load float, ptr %i.bzc, align 4, !tbaa !39
  br label %bb.jd

bb.jd:                                            ; preds = %bb.jc, %bb.jb
  %.0619.us = phi nsz float [ %i.bzd, %bb.jc ], [ 0.000000e+00, %bb.jb ] ; 2 uses
  br i1 %i.byt, label %bb.je, label %bb.jf

bb.je:                                            ; preds = %bb.jd
  %i.bze = getelementptr inbounds nuw i8, ptr %i.byi, i64 20
  %i.bzf = load float, ptr %i.bze, align 4, !tbaa !39
  %i.bzg = fadd fast float %i.bzf, %.0625.us
  br label %bb.jf

bb.jf:                                            ; preds = %bb.je, %bb.jd, %_ZN4ncnn3MatD2Ev.exit.us
  %.0627.us = phi nsz float [ %i.byv, %bb.je ], [ %i.byv, %bb.jd ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit.us ]
  %.1626.us = phi nsz float [ %.0625.us, %bb.je ], [ %.0625.us, %bb.jd ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit.us ] ; 2 uses
  %.1624.us = phi nsz float [ %.0623.us, %bb.je ], [ %.0623.us, %bb.jd ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit.us ] ; 3 uses
  %.1622.us = phi nsz float [ %.0621.us, %bb.je ], [ %.0621.us, %bb.jd ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit.us ] ; 3 uses
  %.1620.us = phi nsz float [ %.0619.us, %bb.je ], [ %.0619.us, %bb.jd ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit.us ] ; 3 uses
  %.0618.us = phi float [ %i.bzg, %bb.je ], [ %.0625.us, %bb.jd ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit.us ]
  %i.bzh = fmul fast float %.1626.us, f0x3FB504F3
  %i.bzi = fmul fast float %.1622.us, f0x3F3504F3
  %i.bzj = fsub fast float %i.bzh, %i.bzi         ; 2 uses
  %i.bzk = fmul fast float %.1624.us, 2.000000e+00
  %i.bzl = fsub fast float %.1620.us, %i.bzk      ; 2 uses
  %i.bzm = fmul fast float %.1622.us, f0x3FB504F3
  %i.bzn = fmul fast float %.1626.us, f0x3F3504F3
  %i.bzo = fsub fast float %i.bzm, %i.bzn         ; 2 uses
  %i.bzp = fmul fast float %.1624.us, 5.000000e-01
  %i.bzq = fsub fast float %.1620.us, %i.bzp      ; 2 uses
  %.neg969.us = fmul fast float %.1624.us, -2.500000e+00
  %i.bzr = fadd fast float %.0627.us, %.neg969.us
  %i.bzs = fadd fast float %i.bzr, %.1620.us
  %i.bzt = fsub fast float %i.bzl, %i.bzj
  %i.bzu = fadd fast float %i.bzl, %i.bzj
  %i.bzv = fadd fast float %i.bzq, %i.bzo
  %i.bzw = fsub fast float %i.bzq, %i.bzo
  %i.bzx = fmul fast float %.1622.us, 2.500000e+00
  %i.bzy = fsub fast float %.0618.us, %i.bzx
  %i.bzz = getelementptr inbounds [4 x i8], ptr %i.byi, i64 %i.bwu ; 7 uses
  %i.caa = icmp sgt i64 %invariant.op1206, %i.bye
  br i1 %i.caa, label %bb.jg, label %bb.jq

bb.jg:                                            ; preds = %bb.jf
  %i.cab = load float, ptr %i.bzz, align 4, !tbaa !39 ; 2 uses
  br i1 %i.byl, label %bb.jh, label %bb.ji

bb.jh:                                            ; preds = %bb.jg
  %i.cac = getelementptr inbounds nuw i8, ptr %i.bzz, i64 4
  %i.cad = load float, ptr %i.cac, align 4, !tbaa !39
  br label %bb.ji

bb.ji:                                            ; preds = %bb.jh, %bb.jg
  %.0625.us.1 = phi nsz float [ %i.cad, %bb.jh ], [ 0.000000e+00, %bb.jg ] ; 4 uses
  br i1 %i.byn, label %bb.jj, label %bb.jk

bb.jj:                                            ; preds = %bb.ji
  %i.cae = getelementptr inbounds nuw i8, ptr %i.bzz, i64 8
  %i.caf = load float, ptr %i.cae, align 4, !tbaa !39
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %bb.ji
  %.0623.us.1 = phi nsz float [ %i.caf, %bb.jj ], [ 0.000000e+00, %bb.ji ] ; 2 uses
  br i1 %i.byp, label %bb.jl, label %bb.jm

bb.jl:                                            ; preds = %bb.jk
  %i.cag = getelementptr inbounds nuw i8, ptr %i.bzz, i64 12
  %i.cah = load float, ptr %i.cag, align 4, !tbaa !39
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %bb.jk
  %.0621.us.1 = phi nsz float [ %i.cah, %bb.jl ], [ 0.000000e+00, %bb.jk ] ; 2 uses
  br i1 %i.byr, label %bb.jn, label %bb.jo

bb.jn:                                            ; preds = %bb.jm
  %i.cai = getelementptr inbounds nuw i8, ptr %i.bzz, i64 16
  %i.caj = load float, ptr %i.cai, align 4, !tbaa !39
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jn, %bb.jm
  %.0619.us.1 = phi nsz float [ %i.caj, %bb.jn ], [ 0.000000e+00, %bb.jm ] ; 2 uses
  br i1 %i.byt, label %bb.jp, label %bb.jq

bb.jp:                                            ; preds = %bb.jo
  %i.cak = getelementptr inbounds nuw i8, ptr %i.bzz, i64 20
  %i.cal = load float, ptr %i.cak, align 4, !tbaa !39
  %i.cam = fadd fast float %i.cal, %.0625.us.1
  br label %bb.jq

bb.jq:                                            ; preds = %bb.jp, %bb.jo, %bb.jf
  %.0627.us.1 = phi nsz float [ %i.cab, %bb.jp ], [ %i.cab, %bb.jo ], [ 0.000000e+00, %bb.jf ]
  %.1626.us.1 = phi nsz float [ %.0625.us.1, %bb.jp ], [ %.0625.us.1, %bb.jo ], [ 0.000000e+00, %bb.jf ] ; 2 uses
  %.1624.us.1 = phi nsz float [ %.0623.us.1, %bb.jp ], [ %.0623.us.1, %bb.jo ], [ 0.000000e+00, %bb.jf ] ; 3 uses
  %.1622.us.1 = phi nsz float [ %.0621.us.1, %bb.jp ], [ %.0621.us.1, %bb.jo ], [ 0.000000e+00, %bb.jf ] ; 3 uses
  %.1620.us.1 = phi nsz float [ %.0619.us.1, %bb.jp ], [ %.0619.us.1, %bb.jo ], [ 0.000000e+00, %bb.jf ] ; 3 uses
  %.0618.us.1 = phi float [ %i.cam, %bb.jp ], [ %.0625.us.1, %bb.jo ], [ 0.000000e+00, %bb.jf ]
  %i.can = fmul fast float %.1626.us.1, f0x3FB504F3
  %i.cao = fmul fast float %.1622.us.1, f0x3F3504F3
  %i.cap = fsub fast float %i.can, %i.cao         ; 2 uses
  %i.caq = fmul fast float %.1624.us.1, 2.000000e+00
  %i.car = fsub fast float %.1620.us.1, %i.caq    ; 2 uses
  %i.cas = fmul fast float %.1622.us.1, f0x3FB504F3
  %i.cat = fmul fast float %.1626.us.1, f0x3F3504F3
  %i.cau = fsub fast float %i.cas, %i.cat         ; 2 uses
  %i.cav = fmul fast float %.1624.us.1, 5.000000e-01
  %i.caw = fsub fast float %.1620.us.1, %i.cav    ; 2 uses
  %.neg969.us.1 = fmul fast float %.1624.us.1, -2.500000e+00
  %i.cax = fadd fast float %.0627.us.1, %.neg969.us.1
  %i.cay = fadd fast float %i.cax, %.1620.us.1    ; 3 uses
  %i.caz = fsub fast float %i.car, %i.cap         ; 3 uses
  %i.cba = fadd fast float %i.car, %i.cap         ; 3 uses
  %i.cbb = fadd fast float %i.caw, %i.cau         ; 3 uses
  %i.cbc = fsub fast float %i.caw, %i.cau         ; 3 uses
  %i.cbd = fmul fast float %.1622.us.1, 2.500000e+00
  %i.cbe = fsub fast float %.0618.us.1, %i.cbd    ; 3 uses
  %i.cbf = getelementptr inbounds [4 x i8], ptr %i.bzz, i64 %i.bwu ; 7 uses
  %i.cbg = icmp sgt i64 %invariant.op1207, %i.bye
  br i1 %i.cbg, label %bb.jr, label %bb.kb

bb.jr:                                            ; preds = %bb.jq
  %i.cbh = load float, ptr %i.cbf, align 4, !tbaa !39 ; 2 uses
  br i1 %i.byl, label %bb.js, label %bb.jt

bb.js:                                            ; preds = %bb.jr
  %i.cbi = getelementptr inbounds nuw i8, ptr %i.cbf, i64 4
  %i.cbj = load float, ptr %i.cbi, align 4, !tbaa !39
  br label %bb.jt

bb.jt:                                            ; preds = %bb.js, %bb.jr
  %.0625.us.2 = phi nsz float [ %i.cbj, %bb.js ], [ 0.000000e+00, %bb.jr ] ; 4 uses
  br i1 %i.byn, label %bb.ju, label %bb.jv

end_hunk_1
begin_hunk_2_@_ZN4ncnnL41conv3x3s1_winograd43_transform_input_tileERKNS_3MatERS0_iiiii:bb.a
  %i.cgb = fmul fast float %.1622.us.5, 2.500000e+00
  %i.cgc = fsub fast float %.0618.us.5, %i.cgb
  %i.cgd = getelementptr inbounds nuw [4 x i8], ptr %i.bxy, i64 %indvars.iv1108 ; 7 uses
  %i.cge = getelementptr inbounds nuw [4 x i8], ptr %i.cgd, i64 %i.bwv ; 2 uses
  %i.cgf = getelementptr inbounds nuw [4 x i8], ptr %i.cgd, i64 %i.bwx ; 2 uses
  %i.cgg = getelementptr inbounds nuw [4 x i8], ptr %i.cgd, i64 %i.bwz ; 2 uses
  %i.cgh = getelementptr inbounds nuw [4 x i8], ptr %i.cgd, i64 %i.bxb ; 2 uses
  %i.cgi = getelementptr inbounds nuw [4 x i8], ptr %i.cgd, i64 %i.bxd ; 2 uses
  %i.cgj = fmul fast float %i.cay, f0x3FB504F3
  %i.cgk = fmul fast float %i.cdk, f0x3F3504F3
  %i.cgl = fsub fast float %i.cgj, %i.cgk         ; 2 uses
  %i.cgm = fmul fast float %i.cce, 2.000000e+00
  %i.cgn = fsub fast float %i.ceq, %i.cgm         ; 2 uses
  %i.cgo = fmul fast float %i.cdk, f0x3FB504F3
  %i.cgp = fmul fast float %i.cay, f0x3F3504F3
  %i.cgq = fsub fast float %i.cgo, %i.cgp         ; 2 uses
  %i.cgr = fmul fast float %i.cce, 5.000000e-01
  %i.cgs = fsub fast float %i.ceq, %i.cgr         ; 2 uses
  %.neg.us = fmul fast float %i.cce, -2.500000e+00
  %i.cgt = fadd fast float %i.bzs, %.neg.us
  %i.cgu = fadd fast float %i.cgt, %i.ceq
  store float %i.cgu, ptr %i.cgd, align 4, !tbaa !39
  %i.cgv = fsub fast float %i.cgn, %i.cgl
  store float %i.cgv, ptr %i.cge, align 4, !tbaa !39
  %i.cgw = fadd fast float %i.cgn, %i.cgl
  store float %i.cgw, ptr %i.cgf, align 4, !tbaa !39
  %i.cgx = fadd fast float %i.cgs, %i.cgq
  store float %i.cgx, ptr %i.cgg, align 4, !tbaa !39
  %i.cgy = fsub fast float %i.cgs, %i.cgq
  store float %i.cgy, ptr %i.cgh, align 4, !tbaa !39
  %.neg968.us = fmul fast float %i.cdk, -2.500000e+00
  %i.cgz = fadd fast float %i.cay, %.neg968.us
  %i.cha = fadd fast float %i.cgz, %i.cfw
  store float %i.cha, ptr %i.cgi, align 4, !tbaa !39
  %i.chb = getelementptr inbounds nuw [4 x i8], ptr %i.cgd, i64 %i.bxf ; 2 uses
  %i.chc = getelementptr inbounds nuw [4 x i8], ptr %i.cge, i64 %i.bxf ; 2 uses
  %i.chd = getelementptr inbounds nuw [4 x i8], ptr %i.cgf, i64 %i.bxf ; 2 uses
  %i.che = getelementptr inbounds nuw [4 x i8], ptr %i.cgg, i64 %i.bxf ; 2 uses
  %i.chf = getelementptr inbounds nuw [4 x i8], ptr %i.cgh, i64 %i.bxf ; 2 uses
  %i.chg = getelementptr inbounds nuw [4 x i8], ptr %i.cgi, i64 %i.bxf ; 2 uses
  %i.chh = fmul fast float %i.caz, f0x3FB504F3
  %i.chi = fmul fast float %i.cdl, f0x3F3504F3
  %i.chj = fsub fast float %i.chh, %i.chi         ; 2 uses
  %i.chk = fmul fast float %i.ccf, 2.000000e+00
  %i.chl = fsub fast float %i.cer, %i.chk         ; 2 uses
  %i.chm = fmul fast float %i.cdl, f0x3FB504F3
  %i.chn = fmul fast float %i.caz, f0x3F3504F3
  %i.cho = fsub fast float %i.chm, %i.chn         ; 2 uses
  %i.chp = fmul fast float %i.ccf, 5.000000e-01
  %i.chq = fsub fast float %i.cer, %i.chp         ; 2 uses
  %.neg.us.1 = fmul fast float %i.ccf, -2.500000e+00
  %i.chr = fadd fast float %i.bzt, %.neg.us.1
  %i.chs = fadd fast float %i.chr, %i.cer
  store float %i.chs, ptr %i.chb, align 4, !tbaa !39
  %i.cht = fsub fast float %i.chl, %i.chj
  store float %i.cht, ptr %i.chc, align 4, !tbaa !39
  %i.chu = fadd fast float %i.chl, %i.chj
  store float %i.chu, ptr %i.chd, align 4, !tbaa !39
  %i.chv = fadd fast float %i.chq, %i.cho
  store float %i.chv, ptr %i.che, align 4, !tbaa !39
  %i.chw = fsub fast float %i.chq, %i.cho
  store float %i.chw, ptr %i.chf, align 4, !tbaa !39
  %.neg968.us.1 = fmul fast float %i.cdl, -2.500000e+00
  %i.chx = fadd fast float %i.caz, %.neg968.us.1
  %i.chy = fadd fast float %i.chx, %i.cfx
  store float %i.chy, ptr %i.chg, align 4, !tbaa !39
  %i.chz = getelementptr inbounds nuw [4 x i8], ptr %i.chb, i64 %i.bxf ; 2 uses
  %i.cia = getelementptr inbounds nuw [4 x i8], ptr %i.chc, i64 %i.bxf ; 2 uses
  %i.cib = getelementptr inbounds nuw [4 x i8], ptr %i.chd, i64 %i.bxf ; 2 uses
  %i.cic = getelementptr inbounds nuw [4 x i8], ptr %i.che, i64 %i.bxf ; 2 uses
  %i.cid = getelementptr inbounds nuw [4 x i8], ptr %i.chf, i64 %i.bxf ; 2 uses
  %i.cie = getelementptr inbounds nuw [4 x i8], ptr %i.chg, i64 %i.bxf ; 2 uses
  %i.cif = fmul fast float %i.cba, f0x3FB504F3
  %i.cig = fmul fast float %i.cdm, f0x3F3504F3
  %i.cih = fsub fast float %i.cif, %i.cig         ; 2 uses
  %i.cii = fmul fast float %i.ccg, 2.000000e+00
  %i.cij = fsub fast float %i.ces, %i.cii         ; 2 uses
  %i.cik = fmul fast float %i.cdm, f0x3FB504F3
  %i.cil = fmul fast float %i.cba, f0x3F3504F3
  %i.cim = fsub fast float %i.cik, %i.cil         ; 2 uses
  %i.cin = fmul fast float %i.ccg, 5.000000e-01
  %i.cio = fsub fast float %i.ces, %i.cin         ; 2 uses
  %.neg.us.2 = fmul fast float %i.ccg, -2.500000e+00
  %i.cip = fadd fast float %i.bzu, %.neg.us.2
  %i.ciq = fadd fast float %i.cip, %i.ces
  store float %i.ciq, ptr %i.chz, align 4, !tbaa !39
  %i.cir = fsub fast float %i.cij, %i.cih
  store float %i.cir, ptr %i.cia, align 4, !tbaa !39
  %i.cis = fadd fast float %i.cij, %i.cih
  store float %i.cis, ptr %i.cib, align 4, !tbaa !39
  %i.cit = fadd fast float %i.cio, %i.cim
  store float %i.cit, ptr %i.cic, align 4, !tbaa !39
  %i.ciu = fsub fast float %i.cio, %i.cim
  store float %i.ciu, ptr %i.cid, align 4, !tbaa !39
  %.neg968.us.2 = fmul fast float %i.cdm, -2.500000e+00
  %i.civ = fadd fast float %i.cba, %.neg968.us.2
  %i.ciw = fadd fast float %i.civ, %i.cfy
  store float %i.ciw, ptr %i.cie, align 4, !tbaa !39
  %i.cix = getelementptr inbounds nuw [4 x i8], ptr %i.chz, i64 %i.bxf ; 2 uses
  %i.ciy = getelementptr inbounds nuw [4 x i8], ptr %i.cia, i64 %i.bxf ; 2 uses
  %i.ciz = getelementptr inbounds nuw [4 x i8], ptr %i.cib, i64 %i.bxf ; 2 uses
  %i.cja = getelementptr inbounds nuw [4 x i8], ptr %i.cic, i64 %i.bxf ; 2 uses
  %i.cjb = getelementptr inbounds nuw [4 x i8], ptr %i.cid, i64 %i.bxf ; 2 uses
  %i.cjc = getelementptr inbounds nuw [4 x i8], ptr %i.cie, i64 %i.bxf ; 2 uses
  %i.cjd = fmul fast float %i.cbb, f0x3FB504F3
  %i.cje = fmul fast float %i.cdn, f0x3F3504F3
  %i.cjf = fsub fast float %i.cjd, %i.cje         ; 2 uses
  %i.cjg = fmul fast float %i.cch, 2.000000e+00
  %i.cjh = fsub fast float %i.cet, %i.cjg         ; 2 uses
  %i.cji = fmul fast float %i.cdn, f0x3FB504F3
  %i.cjj = fmul fast float %i.cbb, f0x3F3504F3
  %i.cjk = fsub fast float %i.cji, %i.cjj         ; 2 uses
  %i.cjl = fmul fast float %i.cch, 5.000000e-01
  %i.cjm = fsub fast float %i.cet, %i.cjl         ; 2 uses
  %.neg.us.3 = fmul fast float %i.cch, -2.500000e+00
  %i.cjn = fadd fast float %i.bzv, %.neg.us.3
  %i.cjo = fadd fast float %i.cjn, %i.cet
  store float %i.cjo, ptr %i.cix, align 4, !tbaa !39
  %i.cjp = fsub fast float %i.cjh, %i.cjf
  store float %i.cjp, ptr %i.ciy, align 4, !tbaa !39
  %i.cjq = fadd fast float %i.cjh, %i.cjf
  store float %i.cjq, ptr %i.ciz, align 4, !tbaa !39
  %i.cjr = fadd fast float %i.cjm, %i.cjk
  store float %i.cjr, ptr %i.cja, align 4, !tbaa !39
  %i.cjs = fsub fast float %i.cjm, %i.cjk
  store float %i.cjs, ptr %i.cjb, align 4, !tbaa !39
  %.neg968.us.3 = fmul fast float %i.cdn, -2.500000e+00
  %i.cjt = fadd fast float %i.cbb, %.neg968.us.3
  %i.cju = fadd fast float %i.cjt, %i.cfz
  store float %i.cju, ptr %i.cjc, align 4, !tbaa !39
  %i.cjv = getelementptr inbounds nuw [4 x i8], ptr %i.cix, i64 %i.bxf ; 2 uses
  %i.cjw = getelementptr inbounds nuw [4 x i8], ptr %i.ciy, i64 %i.bxf ; 2 uses
  %i.cjx = getelementptr inbounds nuw [4 x i8], ptr %i.ciz, i64 %i.bxf ; 2 uses
  %i.cjy = getelementptr inbounds nuw [4 x i8], ptr %i.cja, i64 %i.bxf ; 2 uses
  %i.cjz = getelementptr inbounds nuw [4 x i8], ptr %i.cjb, i64 %i.bxf ; 2 uses
  %i.cka = getelementptr inbounds nuw [4 x i8], ptr %i.cjc, i64 %i.bxf ; 2 uses
  %i.ckb = fmul fast float %i.cbc, f0x3FB504F3
  %i.ckc = fmul fast float %i.cdo, f0x3F3504F3
  %i.ckd = fsub fast float %i.ckb, %i.ckc         ; 2 uses
  %i.cke = fmul fast float %i.cci, 2.000000e+00
  %i.ckf = fsub fast float %i.ceu, %i.cke         ; 2 uses
  %i.ckg = fmul fast float %i.cdo, f0x3FB504F3
  %i.ckh = fmul fast float %i.cbc, f0x3F3504F3
  %i.cki = fsub fast float %i.ckg, %i.ckh         ; 2 uses
  %i.ckj = fmul fast float %i.cci, 5.000000e-01
  %i.ckk = fsub fast float %i.ceu, %i.ckj         ; 2 uses
  %.neg.us.4 = fmul fast float %i.cci, -2.500000e+00
  %i.ckl = fadd fast float %i.bzw, %.neg.us.4
  %i.ckm = fadd fast float %i.ckl, %i.ceu
  store float %i.ckm, ptr %i.cjv, align 4, !tbaa !39
  %i.ckn = fsub fast float %i.ckf, %i.ckd
  store float %i.ckn, ptr %i.cjw, align 4, !tbaa !39
  %i.cko = fadd fast float %i.ckf, %i.ckd
  store float %i.cko, ptr %i.cjx, align 4, !tbaa !39
  %i.ckp = fadd fast float %i.ckk, %i.cki
  store float %i.ckp, ptr %i.cjy, align 4, !tbaa !39
  %i.ckq = fsub fast float %i.ckk, %i.cki
  store float %i.ckq, ptr %i.cjz, align 4, !tbaa !39
  %.neg968.us.4 = fmul fast float %i.cdo, -2.500000e+00
  %i.ckr = fadd fast float %i.cbc, %.neg968.us.4
  %i.cks = fadd fast float %i.ckr, %i.cga
  store float %i.cks, ptr %i.cka, align 4, !tbaa !39
  %i.ckt = getelementptr inbounds nuw [4 x i8], ptr %i.cjv, i64 %i.bxf
  %i.cku = getelementptr inbounds nuw [4 x i8], ptr %i.cjw, i64 %i.bxf
  %i.ckv = getelementptr inbounds nuw [4 x i8], ptr %i.cjx, i64 %i.bxf
  %i.ckw = getelementptr inbounds nuw [4 x i8], ptr %i.cjy, i64 %i.bxf
  %i.ckx = getelementptr inbounds nuw [4 x i8], ptr %i.cjz, i64 %i.bxf
  %i.cky = getelementptr inbounds nuw [4 x i8], ptr %i.cka, i64 %i.bxf
  %i.ckz = fmul fast float %i.cbe, f0x3FB504F3
  %i.cla = fmul fast float %i.cdq, f0x3F3504F3
  %i.clb = fsub fast float %i.ckz, %i.cla         ; 2 uses
  %i.clc = fmul fast float %i.cck, 2.000000e+00
  %i.cld = fsub fast float %i.cew, %i.clc         ; 2 uses
  %i.cle = fmul fast float %i.cdq, f0x3FB504F3
  %i.clf = fmul fast float %i.cbe, f0x3F3504F3
  %i.clg = fsub fast float %i.cle, %i.clf         ; 2 uses
  %i.clh = fmul fast float %i.cck, 5.000000e-01
  %i.cli = fsub fast float %i.cew, %i.clh         ; 2 uses
  %.neg.us.5 = fmul fast float %i.cck, -2.500000e+00
  %i.clj = fadd fast float %i.bzy, %.neg.us.5
  %i.clk = fadd fast float %i.clj, %i.cew
  store float %i.clk, ptr %i.ckt, align 4, !tbaa !39
  %i.cll = fsub fast float %i.cld, %i.clb
  store float %i.cll, ptr %i.cku, align 4, !tbaa !39
  %i.clm = fadd fast float %i.cld, %i.clb
  store float %i.clm, ptr %i.ckv, align 4, !tbaa !39
  %i.cln = fadd fast float %i.cli, %i.clg
  store float %i.cln, ptr %i.ckw, align 4, !tbaa !39
  %i.clo = fsub fast float %i.cli, %i.clg
  store float %i.clo, ptr %i.ckx, align 4, !tbaa !39
  %.neg968.us.5 = fmul fast float %i.cdq, -2.500000e+00
  %i.clp = fadd fast float %i.cbe, %.neg968.us.5
  %i.clq = fadd fast float %i.clp, %i.cgc
  store float %i.clq, ptr %i.cky, align 4, !tbaa !39
  %indvars.iv.next1109 = add nuw nsw i64 %indvars.iv1108, 1 ; 2 uses
  %exitcond1112.not = icmp eq i64 %indvars.iv.next1109, %wide.trip.count1111
  br i1 %exitcond1112.not, label %._crit_edge.us1049, label %_ZN4ncnn3MatD2Ev.exit.us, !llvm.loop !1045

._crit_edge.us1049:                               ; preds = %bb.li
  %indvars.iv.next1114 = add nsw i64 %indvars.iv1113, 1 ; 2 uses
  %7 = icmp slt i64 %indvars.iv.next1114, %i.bxs
  br i1 %7, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, label %._crit_edge1046, !llvm.loop !1046

._crit_edge1046:                                  ; preds = %._crit_edge.us1049, %.lr.ph1045, %._crit_edge1023
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL20conv3x3s1_winograd43ERKNS_3MatERS0_S2_S2_iRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %i.h = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i32 %i.j, ptr %i.e, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store i32 1, ptr %i.f, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store i32 0, ptr %i.g, align 4, !tbaa !67
  %i.k = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f, i32 1, i32 1)
  %i.l = load i32, ptr %i.e, align 4, !tbaa !67
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 2 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !67
  %i.n = load i32, ptr %i.d, align 4, !tbaa !67   ; 2 uses
  %.not66 = icmp sgt i32 %i.n, %i.m
  br i1 %.not66, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 52
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 52
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.067 = phi i32 [ %i.n, %.lr.ph ], [ %i.dv, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.at = load i32, ptr %3, align 4, !tbaa !67    ; 2 uses
  %i.au = sdiv i32 %.067, %i.at
  %i.av = srem i32 %.067, %i.at
  %i.aw = load i32, ptr %4, align 4, !tbaa !67    ; 2 uses
  %i.ax = mul nsw i32 %i.aw, %i.au                ; 3 uses
  %i.ay = load i32, ptr %5, align 4, !tbaa !67    ; 2 uses
  %i.az = mul nsw i32 %i.ay, %i.av                ; 3 uses
  %i.ba = load i32, ptr %6, align 4, !tbaa !67
  %i.bb = sub nsw i32 %i.ba, %i.ax
  %.sroa.speculated63 = call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.bb) ; 2 uses
  %i.bc = load i32, ptr %7, align 4, !tbaa !67
  %i.bd = sub nsw i32 %i.bc, %i.az
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ay, i32 %i.bd) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.be = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %bb.d unwind label %bb.s

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1047)
  %i.bf = load i32, ptr %i.o, align 4, !tbaa !75, !noalias !1047 ; 2 uses
  %i.bg = load i32, ptr %i.p, align 8, !tbaa !76, !noalias !1047 ; 2 uses
  %i.bh = load i32, ptr %i.q, align 4, !tbaa !226, !noalias !1047
  %i.bi = load ptr, ptr %8, align 8, !tbaa !18, !noalias !1047
  %i.bj = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !1047
  %i.bk = sext i32 %i.be to i64
  %i.bl = mul i64 %i.bj, %i.bk
  %i.bm = load i64, ptr %i.s, align 8, !tbaa !65, !noalias !1047 ; 4 uses
  %i.bn = mul i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bn
  %i.bp = load i32, ptr %i.t, align 8, !tbaa !66, !noalias !1047
  %i.bq = load ptr, ptr %i.u, align 8, !tbaa !17, !noalias !1047
  store ptr %i.bo, ptr %11, align 8, !tbaa !18, !alias.scope !1047
  store ptr null, ptr %i.v, align 8, !tbaa !11, !alias.scope !1047
  store i64 %i.bm, ptr %i.w, align 8, !tbaa !65, !alias.scope !1047
  store i32 %i.bp, ptr %i.x, align 8, !tbaa !66, !alias.scope !1047
  store ptr %i.bq, ptr %i.y, align 8, !tbaa !17, !alias.scope !1047
  store i32 %i.bf, ptr %i.aa, align 4, !tbaa !75, !alias.scope !1047
  store i32 %i.bg, ptr %i.ab, align 8, !tbaa !76, !alias.scope !1047
  store i32 1, ptr %i.ac, align 4, !tbaa !226, !alias.scope !1047
  store i32 %i.bh, ptr %i.ad, align 8, !tbaa !68, !alias.scope !1047
  %i.br = sext i32 %i.bf to i64
  %i.bs = sext i32 %i.bg to i64
  %i.bt = mul nsw i64 %i.bs, %i.br                ; 2 uses
  %i.bu = mul i64 %i.bm, %i.bt
  %i.bv = add i64 %i.bu, 15
  %i.bw = and i64 %i.bv, -16
  %i.bx = udiv i64 %i.bw, %i.bm
  store i64 %i.bx, ptr %i.ae, align 8, !tbaa !20, !alias.scope !1047
  %i.by = load i32, ptr %i.af, align 8, !tbaa !225, !noalias !1047 ; 2 uses
  %i.bz = add nsw i32 %i.by, -1
  store i32 %i.bz, ptr %i.z, align 8, !tbaa !225, !alias.scope !1047
  %i.ca = icmp eq i32 %i.by, 4
  br i1 %i.ca, label %bb.e, label %_ZN4ncnn3Mat7channelEi.exit48

bb.e:                                             ; preds = %bb.d
  store i64 %i.bt, ptr %i.ae, align 8, !tbaa !20, !alias.scope !1047
  br label %_ZN4ncnn3Mat7channelEi.exit48

_ZN4ncnn3Mat7channelEi.exit48:                    ; preds = %bb.e, %bb.d
  call fastcc void @_ZN4ncnnL41conv3x3s1_winograd43_transform_input_tileERKNS_3MatERS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.ax, i32 noundef %.sroa.speculated63, i32 noundef %i.az, i32 noundef %.sroa.speculated, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.cb = load i32, ptr %4, align 4, !tbaa !67
  %i.cc = sdiv i32 %i.ax, %i.cb
  %i.cd = load ptr, ptr %10, align 8, !tbaa !18, !noalias !1050
  %i.ce = load i64, ptr %i.ai, align 8, !tbaa !20, !noalias !1050
  %i.cf = sext i32 %i.cc to i64
  %i.cg = mul i64 %i.ce, %i.cf
  %i.ch = load i64, ptr %i.aj, align 8, !tbaa !65, !noalias !1050 ; 3 uses
  %i.ci = mul i64 %i.cg, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ci
  %i.ck = load i32, ptr %i.ak, align 8, !tbaa !66, !noalias !1050
  %i.cl = load ptr, ptr %i.al, align 8, !tbaa !17, !noalias !1050
  %i.cm = load i32, ptr %5, align 4, !tbaa !67
  %i.cn = sdiv i32 %i.az, %i.cm
  %i.co = sext i32 %i.cn to i64
  store ptr null, ptr %i.am, align 8, !tbaa !11
  store i64 %i.ch, ptr %i.an, align 8, !tbaa !65
  store i32 %i.ck, ptr %i.ao, align 8, !tbaa !66
  store ptr %i.cl, ptr %i.ap, align 8, !tbaa !17
  %i.cp = load <2 x i32>, ptr %i.ag, align 4, !tbaa !67, !noalias !1050
  %i.cq = load i32, ptr %i.ah, align 8, !tbaa !76, !noalias !1050
  %i.cr = load i32, ptr %i.ag, align 4, !tbaa !75, !noalias !1050
  %i.cs = sext i32 %i.cr to i64
  %i.ct = sext i32 %i.cq to i64
  %i.cu = mul nsw i64 %i.ct, %i.cs                ; 2 uses
  %i.cv = mul i64 %i.ch, %i.cu
  %i.cw = mul i64 %i.cv, %i.co
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cw
  store ptr %i.cx, ptr %12, align 8, !tbaa !18
  %i.cy = shufflevector <2 x i32> %i.cp, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.cz = shufflevector <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, <4 x i32> %i.cy, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i32> %i.cz, ptr %i.aq, align 8, !tbaa !67
  store i32 1, ptr %i.ar, align 8, !tbaa !68
  store i64 %i.cu, ptr %i.as, align 8, !tbaa !20, !alias.scope !1053
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.da = call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 36, ptr %i.a, align 4, !tbaa !67
  store i32 %.sroa.speculated63, ptr %i.b, align 4, !tbaa !67
  store i32 %.sroa.speculated, ptr %i.c, align 4, !tbaa !67
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.da, i32 1)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN4ncnnL21transpose_pack_B_tileERKNS_3MatERS0_iiii.omp_outlined, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %12, ptr nonnull %i.b, ptr nonnull align 8 dereferenceable(72) %11, ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.db = load ptr, ptr %i.am, align 8, !tbaa !11 ; 2 uses
  %.not.i35 = icmp eq ptr %i.db, null
  br i1 %.not.i35, label %_ZN4ncnn3MatD2Ev.exit33, label %bb.f

bb.f:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit48
  %i.dc = atomicrmw add ptr %i.db, i32 -1 acq_rel, align 4
  %i.dd = icmp eq i32 %i.dc, 1
  br i1 %i.dd, label %bb.g, label %_ZN4ncnn3MatD2Ev.exit33

bb.g:                                             ; preds = %bb.f
end_hunk_2
begin_hunk_3_@_ZN4ncnnL41conv3x3s1_winograd63_transform_input_tileERKNS_3MatERS0_iiiii:bb.a
  store float %i.cnr, ptr %i.cns, align 4, !tbaa !39
  %i.cnt = fadd fast float %i.clx, %i.cmf
  %i.cnu = getelementptr inbounds nuw [8 x i8], ptr %i.chq, i64 %indvars.iv1508 ; 2 uses
  store float %i.cnt, ptr %i.cnu, align 8, !tbaa !39
  %i.cnv = fadd fast float %i.cma, %i.cmk
  %i.cnw = getelementptr inbounds nuw i8, ptr %i.cnu, i64 4
  store float %i.cnv, ptr %i.cnw, align 4, !tbaa !39
  %i.cnx = fsub fast float %i.clx, %i.cmf
  %i.cny = getelementptr inbounds nuw [8 x i8], ptr %i.chr, i64 %indvars.iv1508 ; 2 uses
  store float %i.cnx, ptr %i.cny, align 8, !tbaa !39
  %i.cnz = fsub fast float %i.cma, %i.cmk
  %i.coa = getelementptr inbounds nuw i8, ptr %i.cny, i64 4
  store float %i.cnz, ptr %i.coa, align 4, !tbaa !39
  %i.cob = fadd fast float %i.cmo, %i.cmw
  %i.coc = getelementptr inbounds nuw [8 x i8], ptr %i.chs, i64 %indvars.iv1508 ; 2 uses
  store float %i.cob, ptr %i.coc, align 8, !tbaa !39
  %i.cod = fadd fast float %i.cms, %i.cna
  %i.coe = getelementptr inbounds nuw i8, ptr %i.coc, i64 4
  store float %i.cod, ptr %i.coe, align 4, !tbaa !39
  %i.cof = fsub fast float %i.cmo, %i.cmw
  %i.cog = getelementptr inbounds nuw [8 x i8], ptr %i.cht, i64 %indvars.iv1508 ; 2 uses
  store float %i.cof, ptr %i.cog, align 8, !tbaa !39
  %i.coh = fsub fast float %i.cms, %i.cna
  %i.coi = getelementptr inbounds nuw i8, ptr %i.cog, i64 4
  store float %i.coh, ptr %i.coi, align 4, !tbaa !39
  %i.coj = fsub fast float %.1930.us, %.1922.us
  %i.cok = fmul fast float %i.coj, 5.250000e+00
  %i.col = fsub fast float %i.cok, %.1938.us
  %i.com = fadd fast float %i.col, %.1914.us
  %i.con = getelementptr inbounds nuw [8 x i8], ptr %i.chu, i64 %indvars.iv1508 ; 2 uses
  store float %i.com, ptr %i.con, align 8, !tbaa !39
  %i.coo = fsub fast float %.1928.us, %.1920.us
  %i.cop = fmul fast float %i.coo, 5.250000e+00
  %i.coq = fsub fast float %i.cop, %.1936.us
  %i.cor = fadd fast float %i.coq, %.1912.us
  %i.cos = getelementptr inbounds nuw i8, ptr %i.con, i64 4
  store float %i.cor, ptr %i.cos, align 4, !tbaa !39
  %i.cot = getelementptr inbounds [4 x i8], ptr %.09421428.us, i64 %i.chw
  %indvars.iv.next1509 = add nuw nsw i64 %indvars.iv1508, 1 ; 2 uses
  %exitcond1511.not = icmp eq i64 %indvars.iv.next1509, 8
  br i1 %exitcond1511.not, label %bb.ox, label %bb.oh, !llvm.loop !1120

bb.ox:                                            ; preds = %bb.ow
  %.idx1549 = shl nuw nsw i64 %indvars.iv1516, 3
  %i.cou = getelementptr inbounds nuw i8, ptr %i.cjh, i64 %.idx1549 ; 8 uses
  %i.cov = getelementptr inbounds nuw [4 x i8], ptr %i.cou, i64 %i.chy
  %i.cow = getelementptr inbounds nuw [4 x i8], ptr %i.cou, i64 %i.cia
  %i.cox = getelementptr inbounds nuw [4 x i8], ptr %i.cou, i64 %i.cic
  %i.coy = getelementptr inbounds nuw [4 x i8], ptr %i.cou, i64 %i.cie
  %i.coz = getelementptr inbounds nuw [4 x i8], ptr %i.cou, i64 %i.cig
  %i.cpa = getelementptr inbounds nuw [4 x i8], ptr %i.cou, i64 %i.cii
  %i.cpb = getelementptr inbounds nuw [4 x i8], ptr %i.cou, i64 %i.cik
  br label %bb.oy

bb.oy:                                            ; preds = %bb.oy, %bb.ox
  %indvars.iv1512 = phi i64 [ %indvars.iv.next1513, %bb.oy ], [ 0, %bb.ox ] ; 2 uses
  %.08941437.us = phi ptr [ %i.crk, %bb.oy ], [ %i.cpb, %bb.ox ] ; 2 uses
  %.08951436.us = phi ptr [ %i.crj, %bb.oy ], [ %i.cpa, %bb.ox ] ; 2 uses
  %.08961435.us = phi ptr [ %i.cri, %bb.oy ], [ %i.coz, %bb.ox ] ; 2 uses
  %.08971434.us = phi ptr [ %i.crh, %bb.oy ], [ %i.coy, %bb.ox ] ; 2 uses
  %.08981433.us = phi ptr [ %i.crg, %bb.oy ], [ %i.cox, %bb.ox ] ; 2 uses
  %.08991432.us = phi ptr [ %i.crf, %bb.oy ], [ %i.cow, %bb.ox ] ; 2 uses
  %.09001431.us = phi ptr [ %i.cre, %bb.oy ], [ %i.cov, %bb.ox ] ; 2 uses
  %.09011430.us = phi ptr [ %i.crd, %bb.oy ], [ %i.cou, %bb.ox ] ; 2 uses
  %i.cpc = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %indvars.iv1512 ; 8 uses
  %i.cpd = getelementptr inbounds nuw i8, ptr %i.cpc, i64 8
  %i.cpe = getelementptr inbounds nuw i8, ptr %i.cpc, i64 16
  %i.cpf = getelementptr inbounds nuw i8, ptr %i.cpc, i64 24
  %i.cpg = getelementptr inbounds nuw i8, ptr %i.cpc, i64 32
  %i.cph = getelementptr inbounds nuw i8, ptr %i.cpc, i64 40
  %i.cpi = getelementptr inbounds nuw i8, ptr %i.cpc, i64 48
  %i.cpj = getelementptr inbounds nuw i8, ptr %i.cpc, i64 56
  %i.cpk = load <2 x float>, ptr %i.cpc, align 16, !tbaa !39
  %i.cpl = load <2 x float>, ptr %i.cpe, align 16, !tbaa !39 ; 4 uses
  %i.cpm = load <2 x float>, ptr %i.cpg, align 16, !tbaa !39 ; 4 uses
  %i.cpn = load <2 x float>, ptr %i.cpi, align 16, !tbaa !39 ; 4 uses
  %i.cpo = fsub fast <2 x float> %i.cpm, %i.cpl
  %i.cpp = fmul fast <2 x float> %i.cpo, splat (float 5.250000e+00)
  %i.cpq = fadd fast <2 x float> %i.cpp, %i.cpk
  %i.cpr = fsub fast <2 x float> %i.cpq, %i.cpn
  store <2 x float> %i.cpr, ptr %.09011430.us, align 4, !tbaa !39
  %i.cps = load <2 x float>, ptr %i.cpd, align 8, !tbaa !39 ; 4 uses
  %i.cpt = load <2 x float>, ptr %i.cpf, align 8, !tbaa !39 ; 3 uses
  %i.cpu = load <2 x float>, ptr %i.cph, align 8, !tbaa !39 ; 4 uses
  %i.cpv = fmul fast <2 x float> %i.cpt, splat (float 4.250000e+00)
  %i.cpw = fsub fast <2 x float> %i.cps, %i.cpv
  %i.cpx = fadd fast <2 x float> %i.cpw, %i.cpu   ; 2 uses
  %i.cpy = fmul fast <2 x float> %i.cpm, splat (float 4.250000e+00)
  %i.cpz = fsub fast <2 x float> %i.cpl, %i.cpy
  %i.cqa = fadd fast <2 x float> %i.cpz, %i.cpn   ; 2 uses
  %i.cqb = fadd fast <2 x float> %i.cqa, %i.cpx
  store <2 x float> %i.cqb, ptr %.09001431.us, align 4, !tbaa !39
  %i.cqc = fsub fast <2 x float> %i.cqa, %i.cpx
  store <2 x float> %i.cqc, ptr %.08991432.us, align 4, !tbaa !39
  %i.cqd = fmul fast <2 x float> %i.cpl, splat (float 2.500000e-01)
  %i.cqe = fadd fast <2 x float> %i.cqd, %i.cpn
  %i.cqf = fmul fast <2 x float> %i.cpm, splat (float -1.250000e+00)
  %i.cqg = fadd fast <2 x float> %i.cqe, %i.cqf   ; 2 uses
  %i.cqh = fmul fast <2 x float> %i.cps, splat (float 5.000000e-01)
  %i.cqi = fmul fast <2 x float> %i.cpt, splat (float 2.500000e+00) ; 2 uses
  %i.cqj = fsub fast <2 x float> %i.cqh, %i.cqi
  %i.cqk = fmul fast <2 x float> %i.cpu, splat (float 2.000000e+00)
  %i.cql = fadd fast <2 x float> %i.cqk, %i.cqj   ; 2 uses
  %i.cqm = fadd fast <2 x float> %i.cqg, %i.cql
  store <2 x float> %i.cqm, ptr %.08981433.us, align 4, !tbaa !39
  %i.cqn = fsub fast <2 x float> %i.cqg, %i.cql
  store <2 x float> %i.cqn, ptr %.08971434.us, align 4, !tbaa !39
  %i.cqo = fmul fast <2 x float> %i.cpl, splat (float 4.000000e+00)
  %i.cqp = fmul fast <2 x float> %i.cpm, splat (float 5.000000e+00)
  %i.cqq = fsub fast <2 x float> %i.cqo, %i.cqp
  %i.cqr = fadd fast <2 x float> %i.cpn, %i.cqq   ; 2 uses
  %i.cqs = fmul fast <2 x float> %i.cps, splat (float 2.000000e+00)
  %i.cqt = fmul fast <2 x float> %i.cpu, splat (float 5.000000e-01)
  %i.cqu = fsub fast <2 x float> %i.cqs, %i.cqi
  %i.cqv = fadd fast <2 x float> %i.cqt, %i.cqu   ; 2 uses
  %i.cqw = fadd fast <2 x float> %i.cqr, %i.cqv
  store <2 x float> %i.cqw, ptr %.08961435.us, align 4, !tbaa !39
  %i.cqx = fsub fast <2 x float> %i.cqr, %i.cqv
  store <2 x float> %i.cqx, ptr %.08951436.us, align 4, !tbaa !39
  %i.cqy = load <2 x float>, ptr %i.cpj, align 8, !tbaa !39
  %i.cqz = fsub fast <2 x float> %i.cpt, %i.cpu
  %i.cra = fmul fast <2 x float> %i.cqz, splat (float 5.250000e+00)
  %i.crb = fsub fast <2 x float> %i.cra, %i.cps
  %i.crc = fadd fast <2 x float> %i.crb, %i.cqy
  store <2 x float> %i.crc, ptr %.08941437.us, align 4, !tbaa !39
  %i.crd = getelementptr inbounds nuw [4 x i8], ptr %.09011430.us, i64 %i.cim
  %i.cre = getelementptr inbounds nuw [4 x i8], ptr %.09001431.us, i64 %i.cim
  %i.crf = getelementptr inbounds nuw [4 x i8], ptr %.08991432.us, i64 %i.cim
  %i.crg = getelementptr inbounds nuw [4 x i8], ptr %.08981433.us, i64 %i.cim
  %i.crh = getelementptr inbounds nuw [4 x i8], ptr %.08971434.us, i64 %i.cim
  %i.cri = getelementptr inbounds nuw [4 x i8], ptr %.08961435.us, i64 %i.cim
  %i.crj = getelementptr inbounds nuw [4 x i8], ptr %.08951436.us, i64 %i.cim
  %i.crk = getelementptr inbounds nuw [4 x i8], ptr %.08941437.us, i64 %i.cim
  %indvars.iv.next1513 = add nuw nsw i64 %indvars.iv1512, 1 ; 2 uses
  %exitcond1515.not = icmp eq i64 %indvars.iv.next1513, 8
  br i1 %exitcond1515.not, label %bb.oz, label %bb.oy, !llvm.loop !1121

bb.oz:                                            ; preds = %bb.oy
  %indvars.iv.next1517 = add nuw nsw i64 %indvars.iv1516, 1 ; 2 uses
  %exitcond1520.not = icmp eq i64 %indvars.iv.next1517, %wide.trip.count1519
  br i1 %exitcond1520.not, label %._crit_edge.us1449, label %_ZN4ncnn3MatD2Ev.exit957.us, !llvm.loop !1122

._crit_edge.us1449:                               ; preds = %bb.oz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #12
  %indvars.iv.next1522 = add nuw nsw i64 %indvars.iv1521, 1 ; 2 uses
  %exitcond1525.not = icmp eq i64 %indvars.iv.next1522, %wide.trip.count1524
  br i1 %exitcond1525.not, label %._crit_edge1444, label %_ZN4ncnn3MatD2Ev.exit957.lr.ph.us, !llvm.loop !1123

._crit_edge1444:                                  ; preds = %._crit_edge.us1449, %.lr.ph1443, %._crit_edge1422
  %i.crl = shl nsw i32 %i.chj, 1
  %i.crm = add nsw i32 %i.crl, %i.chh             ; 2 uses
  %i.crn = icmp slt i32 %i.crm, %5
  br i1 %i.crn, label %.lr.ph1468, label %._crit_edge1469

.lr.ph1468:                                       ; preds = %._crit_edge1444
  %i.cro = load i32, ptr %i.b, align 4, !tbaa !67 ; 11 uses
  %i.crp = icmp sgt i32 %i.cro, 0
  %i.crq = load i32, ptr %i.h, align 4            ; 2 uses
  %i.crr = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.crs = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.crt = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.cru = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.crv = getelementptr inbounds nuw i8, ptr %i.m, i64 160
  %i.crw = getelementptr inbounds nuw i8, ptr %i.m, i64 192
  %i.crx = getelementptr inbounds nuw i8, ptr %i.m, i64 224
  %i.cry = load i32, ptr %i.d, align 4
  %i.crz = sext i32 %i.cry to i64
  %factor.op.mul1470 = shl i32 %i.cro, 6
  %i.csa = sext i32 %i.cro to i64
  %i.csb = shl nsw i32 %i.cro, 1
  %i.csc = sext i32 %i.csb to i64
  %i.csd = mul nsw i32 %i.cro, 3
  %i.cse = sext i32 %i.csd to i64
  %i.csf = shl nsw i32 %i.cro, 2
  %i.csg = sext i32 %i.csf to i64
  %i.csh = mul nsw i32 %i.cro, 5
  %i.csi = sext i32 %i.csh to i64
  %i.csj = mul nsw i32 %i.cro, 6
  %i.csk = sext i32 %i.csj to i64
  %i.csl = mul nsw i32 %i.cro, 7
  %i.csm = sext i32 %i.csl to i64
  %i.csn = shl nsw i32 %i.cro, 3
  %i.cso = sext i32 %i.csn to i64                 ; 8 uses
  br i1 %i.crp, label %.lr.ph1468.split.us, label %._crit_edge1469

.lr.ph1468.split.us:                              ; preds = %.lr.ph1468
  %i.csp = load i32, ptr %i.e, align 4
  %i.csq = load i32, ptr %i.c, align 4
  %i.csr = load i32, ptr %i.a, align 4
  %i.css = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cst = load i32, ptr %i.o, align 4, !tbaa !75, !noalias !1124
  %i.csu = load ptr, ptr %0, align 8, !tbaa !18, !noalias !1124
  %i.csv = load i64, ptr %i.u, align 8, !tbaa !20, !noalias !1124
  %i.csw = load i64, ptr %i.css, align 8, !tbaa !65, !noalias !1124 ; 2 uses
  %factor.op.mul1473 = mul i64 %i.csv, %i.csw
  %i.csx = sext i32 %i.cst to i64
  %factor.op.mul1464.us = mul i64 %i.csw, %i.csx
  %i.csy = load ptr, ptr %1, align 8, !tbaa !18
  %i.csz = sext i32 %i.csp to i64
  %i.cta = sext i32 %i.crm to i64
  %i.ctb = sext i32 %5 to i64
  %i.ctc = sext i32 %i.csq to i64
  %wide.trip.count1537 = zext nneg i32 %i.cro to i64
  br label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us

_ZN4ncnn3MatD2Ev.exit.lr.ph.us:                   ; preds = %._crit_edge.us1472, %.lr.ph1468.split.us
  %indvars.iv1539 = phi i64 [ %indvars.iv.next1540, %._crit_edge.us1472 ], [ %i.cta, %.lr.ph1468.split.us ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #12
  %i.ctd = add nsw i64 %indvars.iv1539, %i.ctc
  %.reass1474 = mul i64 %factor.op.mul1473, %i.ctd
  %i.cte = getelementptr inbounds nuw i8, ptr %i.csu, i64 %.reass1474
  %i.ctf = trunc nsw i64 %indvars.iv1539 to i32
  %.reass1471.us = mul i32 %factor.op.mul1470, %i.ctf
  %i.ctg = sext i32 %.reass1471.us to i64
  %i.cth = getelementptr inbounds [4 x i8], ptr %i.csy, i64 %i.ctg
  br label %_ZN4ncnn3MatD2Ev.exit.us

_ZN4ncnn3MatD2Ev.exit.us:                         ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, %bb.ps
  %indvars.iv1534 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit.lr.ph.us ], [ %indvars.iv.next1535, %bb.ps ] ; 3 uses
  %i.cti = trunc i64 %indvars.iv1534 to i32
  %i.ctj = add i32 %i.csr, %i.cti                 ; 2 uses
  %i.ctk = sdiv i32 %i.ctj, %i.crq
  %i.ctl = srem i32 %i.ctj, %i.crq
  %i.ctm = mul nsw i32 %i.ctk, 6
  %i.ctn = sext i32 %i.ctm to i64                 ; 2 uses
  %.reass1465.us = mul i64 %factor.op.mul1464.us, %i.ctn
  %i.cto = getelementptr inbounds nuw i8, ptr %i.cte, i64 %.reass1465.us
  %i.ctp = mul nsw i32 %i.ctl, 6                  ; 8 uses
  %i.ctq = sext i32 %i.ctp to i64
  %i.ctr = getelementptr inbounds [4 x i8], ptr %i.cto, i64 %i.ctq
  %i.cts = or disjoint i32 %i.ctp, 1
  %i.ctt = load i32, ptr %i.d, align 4            ; 7 uses
  %i.ctu = icmp slt i32 %i.cts, %i.ctt
  %i.ctv = add nsw i32 %i.ctp, 2
  %i.ctw = icmp slt i32 %i.ctv, %i.ctt
  %i.ctx = add nsw i32 %i.ctp, 3
  %i.cty = icmp slt i32 %i.ctx, %i.ctt
  %i.ctz = add nsw i32 %i.ctp, 4
  %i.cua = icmp slt i32 %i.ctz, %i.ctt
  %i.cub = add nsw i32 %i.ctp, 5
  %i.cuc = icmp slt i32 %i.cub, %i.ctt
  %i.cud = add nsw i32 %i.ctp, 6
  %i.cue = icmp slt i32 %i.cud, %i.ctt
  %i.cuf = add nsw i32 %i.ctp, 7
  %i.cug = icmp slt i32 %i.cuf, %i.ctt
  %invariant.op1564 = sub nsw i64 %i.csz, %i.ctn
  br label %bb.pa

bb.pa:                                            ; preds = %bb.pp, %_ZN4ncnn3MatD2Ev.exit.us
  %indvars.iv1526 = phi i64 [ %indvars.iv.next1527, %bb.pp ], [ 0, %_ZN4ncnn3MatD2Ev.exit.us ] ; 10 uses
  %.08661452.us = phi ptr [ %i.cwn, %bb.pp ], [ %i.ctr, %_ZN4ncnn3MatD2Ev.exit.us ] ; 9 uses
  %i.cuh = icmp slt i64 %indvars.iv1526, %invariant.op1564
  br i1 %i.cuh, label %bb.pb, label %bb.pp

bb.pb:                                            ; preds = %bb.pa
  %i.cui = load float, ptr %.08661452.us, align 4, !tbaa !39 ; 2 uses
  br i1 %i.ctu, label %bb.pc, label %bb.pd

bb.pc:                                            ; preds = %bb.pb
  %i.cuj = getelementptr inbounds nuw i8, ptr %.08661452.us, i64 4
  %i.cuk = load float, ptr %i.cuj, align 4, !tbaa !39
  br label %bb.pd

bb.pd:                                            ; preds = %bb.pc, %bb.pb
  %.0862.us = phi nsz float [ %i.cuk, %bb.pc ], [ 0.000000e+00, %bb.pb ] ; 2 uses
  br i1 %i.ctw, label %bb.pe, label %bb.pf

bb.pe:                                            ; preds = %bb.pd
  %i.cul = getelementptr inbounds nuw i8, ptr %.08661452.us, i64 8
  %i.cum = load float, ptr %i.cul, align 4, !tbaa !39
  br label %bb.pf

bb.pf:                                            ; preds = %bb.pe, %bb.pd
  %.0860.us = phi nsz float [ %i.cum, %bb.pe ], [ 0.000000e+00, %bb.pd ] ; 2 uses
  br i1 %i.cty, label %bb.pg, label %bb.ph

bb.pg:                                            ; preds = %bb.pf
  %i.cun = getelementptr inbounds nuw i8, ptr %.08661452.us, i64 12
  %i.cuo = load float, ptr %i.cun, align 4, !tbaa !39
  br label %bb.ph

bb.ph:                                            ; preds = %bb.pg, %bb.pf
  %.0858.us = phi nsz float [ %i.cuo, %bb.pg ], [ 0.000000e+00, %bb.pf ] ; 2 uses
  br i1 %i.cua, label %bb.pi, label %bb.pj

bb.pi:                                            ; preds = %bb.ph
  %i.cup = getelementptr inbounds nuw i8, ptr %.08661452.us, i64 16
  %i.cuq = load float, ptr %i.cup, align 4, !tbaa !39
  br label %bb.pj

bb.pj:                                            ; preds = %bb.pi, %bb.ph
  %.0856.us = phi nsz float [ %i.cuq, %bb.pi ], [ 0.000000e+00, %bb.ph ] ; 2 uses
  br i1 %i.cuc, label %bb.pk, label %bb.pl

bb.pk:                                            ; preds = %bb.pj
  %i.cur = getelementptr inbounds nuw i8, ptr %.08661452.us, i64 20
  %i.cus = load float, ptr %i.cur, align 4, !tbaa !39
  br label %bb.pl

bb.pl:                                            ; preds = %bb.pk, %bb.pj
  %.0854.us = phi nsz float [ %i.cus, %bb.pk ], [ 0.000000e+00, %bb.pj ] ; 2 uses
  br i1 %i.cue, label %bb.pm, label %bb.pn

bb.pm:                                            ; preds = %bb.pl
  %i.cut = getelementptr inbounds nuw i8, ptr %.08661452.us, i64 24
  %i.cuu = load float, ptr %i.cut, align 4, !tbaa !39
  br label %bb.pn

bb.pn:                                            ; preds = %bb.pm, %bb.pl
  %.0852.us = phi nsz float [ %i.cuu, %bb.pm ], [ 0.000000e+00, %bb.pl ] ; 2 uses
  br i1 %i.cug, label %bb.po, label %bb.pp

bb.po:                                            ; preds = %bb.pn
  %i.cuv = getelementptr inbounds nuw i8, ptr %.08661452.us, i64 28
  %i.cuw = load float, ptr %i.cuv, align 4, !tbaa !39
  br label %bb.pp

bb.pp:                                            ; preds = %bb.po, %bb.pn, %bb.pa
  %.0864.us = phi nsz float [ %i.cui, %bb.po ], [ %i.cui, %bb.pn ], [ 0.000000e+00, %bb.pa ]
  %.1863.us = phi nsz float [ %.0862.us, %bb.po ], [ %.0862.us, %bb.pn ], [ 0.000000e+00, %bb.pa ] ; 4 uses
  %.1861.us = phi nsz float [ %.0860.us, %bb.po ], [ %.0860.us, %bb.pn ], [ 0.000000e+00, %bb.pa ] ; 4 uses
  %.1859.us = phi nsz float [ %.0858.us, %bb.po ], [ %.0858.us, %bb.pn ], [ 0.000000e+00, %bb.pa ] ; 3 uses
  %.1857.us = phi nsz float [ %.0856.us, %bb.po ], [ %.0856.us, %bb.pn ], [ 0.000000e+00, %bb.pa ] ; 4 uses
  %.1855.us = phi nsz float [ %.0854.us, %bb.po ], [ %.0854.us, %bb.pn ], [ 0.000000e+00, %bb.pa ] ; 4 uses
  %.1853.us = phi nsz float [ %.0852.us, %bb.po ], [ %.0852.us, %bb.pn ], [ 0.000000e+00, %bb.pa ] ; 4 uses
  %.0851.us = phi nsz float [ %i.cuw, %bb.po ], [ 0.000000e+00, %bb.pn ], [ 0.000000e+00, %bb.pa ]
  %.neg1371.us = fmul fast float %.1857.us, 4.250000e+00
  %i.cux = fsub fast float %.1861.us, %.neg1371.us
  %i.cuy = fadd fast float %i.cux, %.1853.us      ; 2 uses
  %.neg1372.us = fmul fast float %.1859.us, 4.250000e+00
  %i.cuz = fsub fast float %.1863.us, %.neg1372.us
  %i.cva = fadd fast float %i.cuz, %.1855.us      ; 2 uses
  %i.cvb = fmul fast float %.1861.us, 2.500000e-01
  %i.cvc = fadd fast float %i.cvb, %.1853.us
  %.neg1373.us = fmul fast float %.1857.us, -1.250000e+00
  %i.cvd = fadd fast float %i.cvc, %.neg1373.us   ; 2 uses
  %i.cve = fmul fast float %.1863.us, 5.000000e-01
  %i.cvf = fmul fast float %.1859.us, 2.500000e+00 ; 2 uses
  %i.cvg = fsub fast float %i.cve, %i.cvf
  %i.cvh = fmul fast float %.1855.us, 2.000000e+00
  %i.cvi = fadd fast float %i.cvh, %i.cvg         ; 2 uses
  %i.cvj = fmul fast float %.1861.us, 4.000000e+00
  %i.cvk = fmul fast float %.1857.us, 5.000000e+00
  %i.cvl = fsub fast float %i.cvj, %i.cvk
  %i.cvm = fadd fast float %i.cvl, %.1853.us      ; 2 uses
  %i.cvn = fmul fast float %.1863.us, 2.000000e+00
  %i.cvo = fsub fast float %i.cvn, %i.cvf
  %i.cvp = fmul fast float %.1855.us, 5.000000e-01
  %i.cvq = fadd fast float %i.cvp, %i.cvo         ; 2 uses
  %i.cvr = fsub fast float %.0864.us, %.1853.us
  %i.cvs = fsub fast float %.1857.us, %.1861.us
  %i.cvt = fmul fast float %i.cvs, 5.250000e+00
  %i.cvu = fadd fast float %i.cvr, %i.cvt
  %i.cvv = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv1526
  store float %i.cvu, ptr %i.cvv, align 4, !tbaa !39
  %i.cvw = fadd fast float %i.cuy, %i.cva
  %i.cvx = getelementptr inbounds nuw [4 x i8], ptr %i.crr, i64 %indvars.iv1526
  store float %i.cvw, ptr %i.cvx, align 4, !tbaa !39
  %i.cvy = fsub fast float %i.cuy, %i.cva
  %i.cvz = getelementptr inbounds nuw [4 x i8], ptr %i.crs, i64 %indvars.iv1526
  store float %i.cvy, ptr %i.cvz, align 4, !tbaa !39
  %i.cwa = fadd fast float %i.cvd, %i.cvi
  %i.cwb = getelementptr inbounds nuw [4 x i8], ptr %i.crt, i64 %indvars.iv1526
  store float %i.cwa, ptr %i.cwb, align 4, !tbaa !39
  %i.cwc = fsub fast float %i.cvd, %i.cvi
  %i.cwd = getelementptr inbounds nuw [4 x i8], ptr %i.cru, i64 %indvars.iv1526
  store float %i.cwc, ptr %i.cwd, align 4, !tbaa !39
  %i.cwe = fadd fast float %i.cvm, %i.cvq
  %i.cwf = getelementptr inbounds nuw [4 x i8], ptr %i.crv, i64 %indvars.iv1526
  store float %i.cwe, ptr %i.cwf, align 4, !tbaa !39
  %i.cwg = fsub fast float %i.cvm, %i.cvq
  %i.cwh = getelementptr inbounds nuw [4 x i8], ptr %i.crw, i64 %indvars.iv1526
  store float %i.cwg, ptr %i.cwh, align 4, !tbaa !39
  %i.cwi = fsub fast float %.0851.us, %.1863.us
  %i.cwj = fsub fast float %.1859.us, %.1855.us
  %i.cwk = fmul fast float %i.cwj, 5.250000e+00
  %i.cwl = fadd fast float %i.cwi, %i.cwk
  %i.cwm = getelementptr inbounds nuw [4 x i8], ptr %i.crx, i64 %indvars.iv1526
  store float %i.cwl, ptr %i.cwm, align 4, !tbaa !39
  %i.cwn = getelementptr inbounds [4 x i8], ptr %.08661452.us, i64 %i.crz
  %indvars.iv.next1527 = add nuw nsw i64 %indvars.iv1526, 1 ; 2 uses
  %exitcond1529.not = icmp eq i64 %indvars.iv.next1527, 8
  br i1 %exitcond1529.not, label %bb.pq, label %bb.pa, !llvm.loop !1127

bb.pq:                                            ; preds = %bb.pp
  %i.cwo = getelementptr inbounds nuw [4 x i8], ptr %i.cth, i64 %indvars.iv1534 ; 8 uses
  %i.cwp = getelementptr inbounds nuw [4 x i8], ptr %i.cwo, i64 %i.csa
  %i.cwq = getelementptr inbounds nuw [4 x i8], ptr %i.cwo, i64 %i.csc
  %i.cwr = getelementptr inbounds nuw [4 x i8], ptr %i.cwo, i64 %i.cse
  %i.cws = getelementptr inbounds nuw [4 x i8], ptr %i.cwo, i64 %i.csg
  %i.cwt = getelementptr inbounds nuw [4 x i8], ptr %i.cwo, i64 %i.csi
  %i.cwu = getelementptr inbounds nuw [4 x i8], ptr %i.cwo, i64 %i.csk
  %i.cwv = getelementptr inbounds nuw [4 x i8], ptr %i.cwo, i64 %i.csm
  br label %bb.pr

bb.pr:                                            ; preds = %bb.pr, %bb.pq
  %indvars.iv1530 = phi i64 [ %indvars.iv.next1531, %bb.pr ], [ 0, %bb.pq ] ; 2 uses
  %.08431461.us = phi ptr [ %i.cza, %bb.pr ], [ %i.cwv, %bb.pq ] ; 2 uses
  %.08441460.us = phi ptr [ %i.cyz, %bb.pr ], [ %i.cwu, %bb.pq ] ; 2 uses
  %.08451459.us = phi ptr [ %i.cyy, %bb.pr ], [ %i.cwt, %bb.pq ] ; 2 uses
  %.08461458.us = phi ptr [ %i.cyx, %bb.pr ], [ %i.cws, %bb.pq ] ; 2 uses
  %.08471457.us = phi ptr [ %i.cyw, %bb.pr ], [ %i.cwr, %bb.pq ] ; 2 uses
  %.08481456.us = phi ptr [ %i.cyv, %bb.pr ], [ %i.cwq, %bb.pq ] ; 2 uses
  %.08491455.us = phi ptr [ %i.cyu, %bb.pr ], [ %i.cwp, %bb.pq ] ; 2 uses
  %.08501454.us = phi ptr [ %i.cyt, %bb.pr ], [ %i.cwo, %bb.pq ] ; 2 uses
  %i.cww = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %indvars.iv1530 ; 5 uses
  %i.cwx = load float, ptr %i.cww, align 16, !tbaa !39
  %i.cwy = getelementptr inbounds nuw i8, ptr %i.cww, i64 4
  %i.cwz = getelementptr inbounds nuw i8, ptr %i.cww, i64 12
  %i.cxa = getelementptr inbounds nuw i8, ptr %i.cww, i64 20
  %i.cxb = getelementptr inbounds nuw i8, ptr %i.cww, i64 28
  %i.cxc = load float, ptr %i.cxb, align 4, !tbaa !39
  %i.cxd = load <2 x float>, ptr %i.cwy, align 4, !tbaa !39 ; 4 uses
  %i.cxe = load <2 x float>, ptr %i.cwz, align 4, !tbaa !39 ; 4 uses
  %i.cxf = load <2 x float>, ptr %i.cxa, align 4, !tbaa !39 ; 5 uses
  %i.cxg = fmul fast <2 x float> %i.cxe, splat (float 4.250000e+00)
  %i.cxh = fsub fast <2 x float> %i.cxd, %i.cxg
  %i.cxi = fadd fast <2 x float> %i.cxh, %i.cxf   ; 2 uses
  %i.cxj = extractelement <2 x float> %i.cxd, i64 1 ; 2 uses
  %i.cxk = fmul fast float %i.cxj, 2.500000e-01
  %i.cxl = extractelement <2 x float> %i.cxe, i64 1 ; 2 uses
  %.neg1368.us = fmul fast float %i.cxl, -1.250000e+00
  %i.cxm = extractelement <2 x float> %i.cxd, i64 0 ; 2 uses
  %i.cxn = fmul fast float %i.cxm, 5.000000e-01
  %i.cxo = extractelement <2 x float> %i.cxf, i64 0
  %i.cxp = fmul fast float %i.cxo, 2.000000e+00
  %i.cxq = extractelement <2 x float> %i.cxf, i64 1 ; 2 uses
  %i.cxr = fadd fast float %i.cxk, %i.cxq
  %i.cxs = fadd fast float %i.cxr, %.neg1368.us   ; 2 uses
  %i.cxt = fmul fast <2 x float> %i.cxe, <float 2.500000e+00, float 5.000000e+00> ; 2 uses
  %i.cxu = extractelement <2 x float> %i.cxt, i64 0
  %i.cxv = fsub fast float %i.cxn, %i.cxu
  %i.cxw = fadd fast float %i.cxp, %i.cxv         ; 2 uses
  %i.cxx = fmul fast <2 x float> %i.cxd, <float 2.000000e+00, float 4.000000e+00>
  %i.cxy = fmul reassoc nsz arcp contract afn <2 x float> %i.cxf, <float 5.000000e-01, float 1.000000e+00>
  %i.cxz = fadd reassoc nsz arcp contract afn <2 x float> %i.cxx, %i.cxy
  %i.cya = fsub reassoc nsz arcp contract afn <2 x float> %i.cxz, %i.cxt ; 2 uses
  %i.cyb = fsub fast float %i.cwx, %i.cxq
  %i.cyc = fsub fast float %i.cxl, %i.cxj
  %i.cyd = fmul fast float %i.cyc, 5.250000e+00
  %i.cye = fadd fast float %i.cyb, %i.cyd
  store float %i.cye, ptr %.08501454.us, align 4, !tbaa !39
  %i.cyf = extractelement <2 x float> %i.cxi, i64 0 ; 2 uses
  %i.cyg = extractelement <2 x float> %i.cxi, i64 1 ; 2 uses
  %i.cyh = fadd fast float %i.cyg, %i.cyf
  store float %i.cyh, ptr %.08491455.us, align 4, !tbaa !39
  %i.cyi = fsub fast float %i.cyg, %i.cyf
  store float %i.cyi, ptr %.08481456.us, align 4, !tbaa !39
  %i.cyj = fadd fast float %i.cxs, %i.cxw
  store float %i.cyj, ptr %.08471457.us, align 4, !tbaa !39
  %i.cyk = fsub fast float %i.cxs, %i.cxw
  store float %i.cyk, ptr %.08461458.us, align 4, !tbaa !39
  %i.cyl = extractelement <2 x float> %i.cya, i64 0 ; 2 uses
  %i.cym = extractelement <2 x float> %i.cya, i64 1 ; 2 uses
  %i.cyn = fadd fast float %i.cym, %i.cyl
  store float %i.cyn, ptr %.08451459.us, align 4, !tbaa !39
  %i.cyo = fsub fast float %i.cym, %i.cyl
  store float %i.cyo, ptr %.08441460.us, align 4, !tbaa !39
  %i.cyp = fsub fast float %i.cxc, %i.cxm
  %foldExtExtBinop = fsub fast <2 x float> %i.cxe, %i.cxf
  %i.cyq = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cyr = fmul fast float %i.cyq, 5.250000e+00
  %i.cys = fadd fast float %i.cyp, %i.cyr
  store float %i.cys, ptr %.08431461.us, align 4, !tbaa !39
  %i.cyt = getelementptr inbounds nuw [4 x i8], ptr %.08501454.us, i64 %i.cso
  %i.cyu = getelementptr inbounds nuw [4 x i8], ptr %.08491455.us, i64 %i.cso
  %i.cyv = getelementptr inbounds nuw [4 x i8], ptr %.08481456.us, i64 %i.cso
  %i.cyw = getelementptr inbounds nuw [4 x i8], ptr %.08471457.us, i64 %i.cso
  %i.cyx = getelementptr inbounds nuw [4 x i8], ptr %.08461458.us, i64 %i.cso
  %i.cyy = getelementptr inbounds nuw [4 x i8], ptr %.08451459.us, i64 %i.cso
  %i.cyz = getelementptr inbounds nuw [4 x i8], ptr %.08441460.us, i64 %i.cso
  %i.cza = getelementptr inbounds nuw [4 x i8], ptr %.08431461.us, i64 %i.cso
  %indvars.iv.next1531 = add nuw nsw i64 %indvars.iv1530, 1 ; 2 uses
  %exitcond1533.not = icmp eq i64 %indvars.iv.next1531, 8
  br i1 %exitcond1533.not, label %bb.ps, label %bb.pr, !llvm.loop !1128

bb.ps:                                            ; preds = %bb.pr
  %indvars.iv.next1535 = add nuw nsw i64 %indvars.iv1534, 1 ; 2 uses
  %exitcond1538.not = icmp eq i64 %indvars.iv.next1535, %wide.trip.count1537
  br i1 %exitcond1538.not, label %._crit_edge.us1472, label %_ZN4ncnn3MatD2Ev.exit.us, !llvm.loop !1129

._crit_edge.us1472:                               ; preds = %bb.ps
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #12
  %indvars.iv.next1540 = add nsw i64 %indvars.iv1539, 1 ; 2 uses
  %7 = icmp slt i64 %indvars.iv.next1540, %i.ctb
  br i1 %7, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, label %._crit_edge1469, !llvm.loop !1130

._crit_edge1469:                                  ; preds = %._crit_edge.us1472, %.lr.ph1468, %._crit_edge1444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL20conv3x3s1_winograd63ERKNS_3MatERS0_S2_S2_iRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %i.h = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i32 %i.j, ptr %i.e, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store i32 1, ptr %i.f, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store i32 0, ptr %i.g, align 4, !tbaa !67
  %i.k = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f, i32 1, i32 1)
  %i.l = load i32, ptr %i.e, align 4, !tbaa !67
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 2 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !67
  %i.n = load i32, ptr %i.d, align 4, !tbaa !67   ; 2 uses
  %.not66 = icmp sgt i32 %i.n, %i.m
  br i1 %.not66, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 52
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 52
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.067 = phi i32 [ %i.n, %.lr.ph ], [ %i.dv, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.at = load i32, ptr %3, align 4, !tbaa !67    ; 2 uses
  %i.au = sdiv i32 %.067, %i.at
  %i.av = srem i32 %.067, %i.at
  %i.aw = load i32, ptr %4, align 4, !tbaa !67    ; 2 uses
  %i.ax = mul nsw i32 %i.aw, %i.au                ; 3 uses
  %i.ay = load i32, ptr %5, align 4, !tbaa !67    ; 2 uses
  %i.az = mul nsw i32 %i.ay, %i.av                ; 3 uses
  %i.ba = load i32, ptr %6, align 4, !tbaa !67
  %i.bb = sub nsw i32 %i.ba, %i.ax
  %.sroa.speculated63 = call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.bb) ; 2 uses
  %i.bc = load i32, ptr %7, align 4, !tbaa !67
  %i.bd = sub nsw i32 %i.bc, %i.az
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ay, i32 %i.bd) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.be = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %bb.d unwind label %bb.s

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1131)
  %i.bf = load i32, ptr %i.o, align 4, !tbaa !75, !noalias !1131 ; 2 uses
  %i.bg = load i32, ptr %i.p, align 8, !tbaa !76, !noalias !1131 ; 2 uses
  %i.bh = load i32, ptr %i.q, align 4, !tbaa !226, !noalias !1131
  %i.bi = load ptr, ptr %8, align 8, !tbaa !18, !noalias !1131
  %i.bj = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !1131
  %i.bk = sext i32 %i.be to i64
  %i.bl = mul i64 %i.bj, %i.bk
  %i.bm = load i64, ptr %i.s, align 8, !tbaa !65, !noalias !1131 ; 4 uses
  %i.bn = mul i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bn
  %i.bp = load i32, ptr %i.t, align 8, !tbaa !66, !noalias !1131
  %i.bq = load ptr, ptr %i.u, align 8, !tbaa !17, !noalias !1131
  store ptr %i.bo, ptr %11, align 8, !tbaa !18, !alias.scope !1131
  store ptr null, ptr %i.v, align 8, !tbaa !11, !alias.scope !1131
  store i64 %i.bm, ptr %i.w, align 8, !tbaa !65, !alias.scope !1131
  store i32 %i.bp, ptr %i.x, align 8, !tbaa !66, !alias.scope !1131
  store ptr %i.bq, ptr %i.y, align 8, !tbaa !17, !alias.scope !1131
  store i32 %i.bf, ptr %i.aa, align 4, !tbaa !75, !alias.scope !1131
  store i32 %i.bg, ptr %i.ab, align 8, !tbaa !76, !alias.scope !1131
  store i32 1, ptr %i.ac, align 4, !tbaa !226, !alias.scope !1131
  store i32 %i.bh, ptr %i.ad, align 8, !tbaa !68, !alias.scope !1131
  %i.br = sext i32 %i.bf to i64
  %i.bs = sext i32 %i.bg to i64
  %i.bt = mul nsw i64 %i.bs, %i.br                ; 2 uses
  %i.bu = mul i64 %i.bm, %i.bt
  %i.bv = add i64 %i.bu, 15
  %i.bw = and i64 %i.bv, -16
  %i.bx = udiv i64 %i.bw, %i.bm
  store i64 %i.bx, ptr %i.ae, align 8, !tbaa !20, !alias.scope !1131
  %i.by = load i32, ptr %i.af, align 8, !tbaa !225, !noalias !1131 ; 2 uses
  %i.bz = add nsw i32 %i.by, -1
  store i32 %i.bz, ptr %i.z, align 8, !tbaa !225, !alias.scope !1131
  %i.ca = icmp eq i32 %i.by, 4
  br i1 %i.ca, label %bb.e, label %_ZN4ncnn3Mat7channelEi.exit48

bb.e:                                             ; preds = %bb.d
  store i64 %i.bt, ptr %i.ae, align 8, !tbaa !20, !alias.scope !1131
  br label %_ZN4ncnn3Mat7channelEi.exit48

_ZN4ncnn3Mat7channelEi.exit48:                    ; preds = %bb.e, %bb.d
  call fastcc void @_ZN4ncnnL41conv3x3s1_winograd63_transform_input_tileERKNS_3MatERS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.ax, i32 noundef %.sroa.speculated63, i32 noundef %i.az, i32 noundef %.sroa.speculated, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.cb = load i32, ptr %4, align 4, !tbaa !67
  %i.cc = sdiv i32 %i.ax, %i.cb
  %i.cd = load ptr, ptr %10, align 8, !tbaa !18, !noalias !1134
  %i.ce = load i64, ptr %i.ai, align 8, !tbaa !20, !noalias !1134
  %i.cf = sext i32 %i.cc to i64
  %i.cg = mul i64 %i.ce, %i.cf
  %i.ch = load i64, ptr %i.aj, align 8, !tbaa !65, !noalias !1134 ; 3 uses
  %i.ci = mul i64 %i.cg, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ci
  %i.ck = load i32, ptr %i.ak, align 8, !tbaa !66, !noalias !1134
  %i.cl = load ptr, ptr %i.al, align 8, !tbaa !17, !noalias !1134
  %i.cm = load i32, ptr %5, align 4, !tbaa !67
  %i.cn = sdiv i32 %i.az, %i.cm
  %i.co = sext i32 %i.cn to i64
  store ptr null, ptr %i.am, align 8, !tbaa !11
  store i64 %i.ch, ptr %i.an, align 8, !tbaa !65
  store i32 %i.ck, ptr %i.ao, align 8, !tbaa !66
  store ptr %i.cl, ptr %i.ap, align 8, !tbaa !17
  %i.cp = load <2 x i32>, ptr %i.ag, align 4, !tbaa !67, !noalias !1134
  %i.cq = load i32, ptr %i.ah, align 8, !tbaa !76, !noalias !1134
  %i.cr = load i32, ptr %i.ag, align 4, !tbaa !75, !noalias !1134
  %i.cs = sext i32 %i.cr to i64
  %i.ct = sext i32 %i.cq to i64
  %i.cu = mul nsw i64 %i.ct, %i.cs                ; 2 uses
  %i.cv = mul i64 %i.ch, %i.cu
  %i.cw = mul i64 %i.cv, %i.co
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cw
  store ptr %i.cx, ptr %12, align 8, !tbaa !18
  %i.cy = shufflevector <2 x i32> %i.cp, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.cz = shufflevector <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, <4 x i32> %i.cy, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i32> %i.cz, ptr %i.aq, align 8, !tbaa !67
  store i32 1, ptr %i.ar, align 8, !tbaa !68
  store i64 %i.cu, ptr %i.as, align 8, !tbaa !20, !alias.scope !1137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.da = call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 64, ptr %i.a, align 4, !tbaa !67
  store i32 %.sroa.speculated63, ptr %i.b, align 4, !tbaa !67
  store i32 %.sroa.speculated, ptr %i.c, align 4, !tbaa !67
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.da, i32 1)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN4ncnnL21transpose_pack_B_tileERKNS_3MatERS0_iiii.omp_outlined, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %12, ptr nonnull %i.b, ptr nonnull align 8 dereferenceable(72) %11, ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.db = load ptr, ptr %i.am, align 8, !tbaa !11 ; 2 uses
  %.not.i35 = icmp eq ptr %i.db, null
  br i1 %.not.i35, label %_ZN4ncnn3MatD2Ev.exit33, label %bb.f

bb.f:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit48
  %i.dc = atomicrmw add ptr %i.db, i32 -1 acq_rel, align 4
  %i.dd = icmp eq i32 %i.dc, 1
  br i1 %i.dd, label %bb.g, label %_ZN4ncnn3MatD2Ev.exit33

bb.g:                                             ; preds = %bb.f
  %i.de = load ptr, ptr %i.ap, align 8, !tbaa !17 ; 3 uses
  %.not3.i36 = icmp eq ptr %i.de, null
end_hunk_3
begin_hunk_4_@_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE:bb.a
  %.not3.i148 = icmp eq ptr %i.hm, null
  %i.hn = load ptr, ptr %8, align 8, !tbaa !18    ; 3 uses
  br i1 %.not3.i148, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ho = load ptr, ptr %i.hm, align 8, !tbaa !9
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  %i.hq = load ptr, ptr %i.hp, align 8
  invoke void %i.hq(ptr noundef nonnull align 8 dereferenceable(8) %i.hm, ptr noundef %i.hn)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.ax, !inline_history !19

bb.av:                                            ; preds = %bb.at
  %.not.i151 = icmp eq ptr %i.hn, null
  br i1 %.not.i151, label %_ZN4ncnn3MatD2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @free(ptr noundef nonnull %i.hn) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.ax:                                            ; preds = %bb.au
  %i.hr = landingpad { ptr, i32 }
          catch ptr null
  %i.hs = extractvalue { ptr, i32 } %i.hr, 0
  call void @__clang_call_terminate(ptr %i.hs) #36
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.as, %.critedge90, %bb.au, %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZN4ncnn3MatD2Ev.exit91, %_ZN4ncnn3MatD2Ev.exit94
  %.374 = phi i32 [ %.273, %_ZN4ncnn3MatD2Ev.exit94 ], [ -100, %_ZN4ncnn3MatD2Ev.exit91 ], [ -100, %_ZN4ncnn3MatD2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #12
  br label %_ZNK4ncnn3Mat5emptyEv.exit181.thread

bb.az:                                            ; preds = %bb.ae, %bb.v, %bb.h
  %.pn85.pn = phi { ptr, i32 } [ %i.go, %bb.ae ], [ %i.cp, %bb.h ], [ %i.fn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #12
  %i.ht = load ptr, ptr %i.ax, align 8, !tbaa !11 ; 2 uses
  %.not.i139 = icmp eq ptr %i.ht, null
  br i1 %.not.i139, label %_ZN4ncnn3MatD2Ev.exit92, label %bb.bg

_ZNK4ncnn3Mat5emptyEv.exit181.thread:             ; preds = %bb.e, %_ZNK4ncnn3Mat5emptyEv.exit181, %bb.ay
  %.475 = phi i32 [ %.374, %bb.ay ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit181 ], [ -100, %bb.e ]
  %i.hu = load ptr, ptr %i.ax, align 8, !tbaa !11 ; 2 uses
  %.not.i135 = icmp eq ptr %i.hu, null
  br i1 %.not.i135, label %_ZN4ncnn3MatD2Ev.exit93, label %bb.ba

bb.ba:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit181.thread
  %i.hv = atomicrmw add ptr %i.hu, i32 -1 acq_rel, align 4
  %i.hw = icmp eq i32 %i.hv, 1
  br i1 %i.hw, label %bb.bb, label %_ZN4ncnn3MatD2Ev.exit93

bb.bb:                                            ; preds = %bb.ba
  %i.hx = load ptr, ptr %i.ba, align 8, !tbaa !17 ; 3 uses
  %.not3.i136 = icmp eq ptr %i.hx, null
  %i.hy = load ptr, ptr %5, align 8, !tbaa !18    ; 3 uses
  br i1 %.not3.i136, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hz = load ptr, ptr %i.hx, align 8, !tbaa !9
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %i.ib = load ptr, ptr %i.ia, align 8
  invoke void %i.ib(ptr noundef nonnull align 8 dereferenceable(8) %i.hx, ptr noundef %i.hy)
          to label %_ZN4ncnn3MatD2Ev.exit93 unwind label %bb.bf, !inline_history !19

bb.bd:                                            ; preds = %bb.bb
  %.not.i156 = icmp eq ptr %i.hy, null
  br i1 %.not.i156, label %_ZN4ncnn3MatD2Ev.exit93, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @free(ptr noundef nonnull %i.hy) #12
  br label %_ZN4ncnn3MatD2Ev.exit93

bb.bf:                                            ; preds = %bb.bc
  %i.ic = landingpad { ptr, i32 }
          catch ptr null
  %i.id = extractvalue { ptr, i32 } %i.ic, 0
  call void @__clang_call_terminate(ptr %i.id) #36
  unreachable

_ZN4ncnn3MatD2Ev.exit93:                          ; preds = %bb.ba, %_ZNK4ncnn3Mat5emptyEv.exit181.thread, %bb.bc, %bb.bd, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.bm

bb.bg:                                            ; preds = %bb.az
  %i.ie = atomicrmw add ptr %i.ht, i32 -1 acq_rel, align 4
  %i.if = icmp eq i32 %i.ie, 1
  br i1 %i.if, label %bb.bh, label %_ZN4ncnn3MatD2Ev.exit92

bb.bh:                                            ; preds = %bb.bg
  %i.ig = load ptr, ptr %i.ba, align 8, !tbaa !17 ; 3 uses
  %.not3.i140 = icmp eq ptr %i.ig, null
  %i.ih = load ptr, ptr %5, align 8, !tbaa !18    ; 3 uses
  br i1 %.not3.i140, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ii = load ptr, ptr %i.ig, align 8, !tbaa !9
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  %i.ik = load ptr, ptr %i.ij, align 8
  invoke void %i.ik(ptr noundef nonnull align 8 dereferenceable(8) %i.ig, ptr noundef %i.ih)
          to label %_ZN4ncnn3MatD2Ev.exit92 unwind label %bb.bl, !inline_history !19

bb.bj:                                            ; preds = %bb.bh
  %.not.i154 = icmp eq ptr %i.ih, null
  br i1 %.not.i154, label %_ZN4ncnn3MatD2Ev.exit92, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @free(ptr noundef nonnull %i.ih) #12
  br label %_ZN4ncnn3MatD2Ev.exit92

bb.bl:                                            ; preds = %bb.bi
  %i.il = landingpad { ptr, i32 }
          catch ptr null
  %i.im = extractvalue { ptr, i32 } %i.il, 0
  call void @__clang_call_terminate(ptr %i.im) #36
  unreachable

_ZN4ncnn3MatD2Ev.exit92:                          ; preds = %bb.bg, %bb.az, %bb.bi, %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  resume { ptr, i32 } %.pn85.pn

bb.bm:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit93, %bb.d, %bb.b
  %.576 = phi i32 [ %i.o, %bb.b ], [ %i.q, %bb.d ], [ %.475, %_ZN4ncnn3MatD2Ev.exit93 ]
  ret i32 %.576
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef nonnull align 8 dereferenceable(64) %9) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 44 uses
  %i.b = alloca i32, align 4                      ; 44 uses
  %i.c = alloca i32, align 4                      ; 28 uses
  %i.d = alloca i32, align 4                      ; 26 uses
  %i.e = alloca i32, align 4                      ; 12 uses
  %i.f = alloca i32, align 4                      ; 46 uses
  %i.g = alloca ptr, align 8                      ; 46 uses
  %i.h = alloca i32, align 4                      ; 11 uses
  %i.i = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %7, ptr %i.a, align 4, !tbaa !67
  store i32 %8, ptr %i.b, align 4, !tbaa !67
  %i.j = tail call noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_vnniEv()
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn34convolution_packed_int8_avx512vnniERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef nonnull align 8 dereferenceable(64) %9)
  br label %bb.ay

bb.c:                                             ; preds = %bb.a
  %i.k = tail call noundef i32 @_ZN4ncnn24cpu_support_x86_avx_vnniEv()
  %.not3051 = icmp eq i32 %i.k, 0
  br i1 %.not3051, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4ncnn31convolution_packed_int8_avxvnniERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef nonnull align 8 dereferenceable(64) %9)
  br label %bb.ay

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 49 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !66   ; 6 uses
  store i32 %i.o, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load i32, ptr %i.p, align 8, !tbaa !68
  %i.r = mul nsw i32 %i.q, %i.o
  store i32 %i.r, ptr %i.d, align 4, !tbaa !67
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 52 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !20
  %i.u = sext i32 %i.o to i64
  %i.v = mul i64 %i.t, %i.u                       ; 153 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 4 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !75   ; 15 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !66 ; 2 uses
  store i32 %i.ab, ptr %i.e, align 4, !tbaa !67
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !68
  %i.ae = mul nsw i32 %i.ad, %i.ab                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.af = mul nsw i32 %4, %3                      ; 4 uses
  store i32 %i.af, ptr %i.f, align 4, !tbaa !67
  %i.ag = sext i32 %i.af to i64                   ; 3 uses
  %i.ah = icmp slt i32 %i.af, 0
  br i1 %i.ah, label %.noexc4449, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc4449:                                       ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #39
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.e
  %.not.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %.noexc4450

.noexc4450:                                       ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ai = shl nuw nsw i64 %i.ag, 2
  %i.aj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #40 ; 5 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ag ; 2 uses
  store i32 0, ptr %i.aj, align 4, !tbaa !67
  %i.al = add nsw i64 %i.ag, -1                   ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc4450
  %i.an = getelementptr i8, ptr %i.aj, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.al, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.an, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !67
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc4450, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.10.0 = phi ptr [ %i.ak, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ak, %.noexc4450 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.07489.0 = phi ptr [ %i.aj, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.aj, %.noexc4450 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store ptr %.sroa.07489.0, ptr %i.g, align 8, !tbaa !232
  %i.ao = mul nsw i32 %i.m, %6
  %i.ap = mul nsw i32 %5, %3
  %i.aq = sub i32 %i.ao, %i.ap
  %i.ar = icmp sgt i32 %4, 0
  %i.as = icmp sgt i32 %3, 0
  %or.cond = and i1 %i.ar, %i.as
  br i1 %or.cond, label %.preheader7793.preheader, label %._crit_edge7911.split

.preheader7793.preheader:                         ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.at = zext nneg i32 %3 to i64                 ; 5 uses
  %min.iters.check = icmp ult i32 %3, 8
  %min.iters.check11225 = icmp ult i32 %3, 64
  %i.au = and i64 %i.at, 56
  %n.vec = and i64 %i.at, 2147483584              ; 5 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %5, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.av = trunc nuw nsw i64 %n.vec to i32
  %i.aw = mul i32 %5, %i.av
  %i.ax = shl <16 x i32> %broadcast.splat, splat (i32 4) ; 5 uses
  %broadcast.splatinsert11226 = insertelement <16 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat11227 = shufflevector <16 x i32> %broadcast.splatinsert11226, <16 x i32> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.ay = mul nsw <16 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %invariant.op = add <16 x i32> %i.ax, %i.ax     ; 2 uses
  %invariant.op12454 = add <16 x i32> %invariant.op, %i.ax ; 2 uses
  %invariant.op12456 = add <16 x i32> %invariant.op12454, %i.ax
  %cmp.n = icmp eq i64 %n.vec, %i.at
  %min.epilog.iters.check = icmp eq i64 %i.au, 0
  %n.vec11231 = and i64 %i.at, 2147483640         ; 4 uses
  %i.az = trunc nuw nsw i64 %n.vec11231 to i32
  %i.ba = mul i32 %5, %i.az
  %broadcast.splatinsert11232 = insertelement <8 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat11233 = shufflevector <8 x i32> %broadcast.splatinsert11232, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert11236.a = insertelement <8 x i32> poison, i32 %5, i64 0
  %broadcast.splat11237.a = shufflevector <8 x i32> %broadcast.splatinsert11236.a, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bb = mul nsw <8 x i32> %broadcast.splat11237.a, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bc = shl nsw i32 %5, 3
  %broadcast.splatinsert11239 = insertelement <8 x i32> poison, i32 %i.bc, i64 0
  %broadcast.splat11240 = shufflevector <8 x i32> %broadcast.splatinsert11239, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n11245 = icmp eq i64 %n.vec11231, %i.at
  br label %iter.check

iter.check:                                       ; preds = %.preheader7793.preheader, %._crit_edge
  %.027427910 = phi i32 [ %i.be, %._crit_edge ], [ 0, %.preheader7793.preheader ] ; 2 uses
  %.027467909 = phi i32 [ %i.cg, %._crit_edge ], [ 0, %.preheader7793.preheader ] ; 5 uses
  %.027487908 = phi i32 [ %i.ch, %._crit_edge ], [ 0, %.preheader7793.preheader ]
  %i.bd = sext i32 %.027427910 to i64             ; 5 uses
  %i.be = add i32 %3, %.027427910                 ; 2 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check11225, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bf = add nsw i64 %n.vec, %i.bd
  %i.bg = add i32 %.027467909, %i.aw              ; 3 uses
  %broadcast.splatinsert11228 = insertelement <16 x i32> poison, i32 %.027467909, i64 0
  %broadcast.splat11229 = shufflevector <16 x i32> %broadcast.splatinsert11228, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction = add nsw <16 x i32> %broadcast.splat11229, %i.ay
  %invariant.gep12455 = getelementptr [4 x i8], ptr %.sroa.07489.0, i64 %i.bd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i32> [ %induction, %vector.ph ], [ %vec.ind.next.reass, %vector.body ] ; 5 uses
  %step.add = add nsw <16 x i32> %vec.ind, %i.ax
  %step.add.2.reass = add <16 x i32> %vec.ind, %invariant.op
  %step.add.3.reass = add <16 x i32> %vec.ind, %invariant.op12454
  %i.bh = mul nsw <16 x i32> %broadcast.splat11227, %vec.ind
  %i.bi = mul nsw <16 x i32> %broadcast.splat11227, %step.add
  %i.bj = mul nsw <16 x i32> %broadcast.splat11227, %step.add.2.reass
  %i.bk = mul nsw <16 x i32> %broadcast.splat11227, %step.add.3.reass
  %gep = getelementptr [4 x i8], ptr %invariant.gep12455, i64 %index ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.bm = getelementptr inbounds nuw i8, ptr %gep, i64 128
  %i.bn = getelementptr inbounds nuw i8, ptr %gep, i64 192
  store <16 x i32> %i.bh, ptr %gep, align 4, !tbaa !67
  store <16 x i32> %i.bi, ptr %i.bl, align 4, !tbaa !67
  store <16 x i32> %i.bj, ptr %i.bm, align 4, !tbaa !67
  store <16 x i32> %i.bk, ptr %i.bn, align 4, !tbaa !67
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %vec.ind.next.reass = add <16 x i32> %vec.ind, %invariant.op12456
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !1684

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !216

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val11230 = phi i32 [ %i.bg, %vec.epilog.iter.check ], [ %.027467909, %vector.main.loop.iter.check ]
  %i.bp = add nsw i64 %n.vec11231, %i.bd
  %i.bq = add i32 %.027467909, %i.ba              ; 2 uses
  %broadcast.splatinsert11234 = insertelement <8 x i32> poison, i32 %bc.resume.val11230, i64 0
  %broadcast.splat11235 = shufflevector <8 x i32> %broadcast.splatinsert11234, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction11238 = add nsw <8 x i32> %broadcast.splat11235, %i.bb
  %invariant.gep12457 = getelementptr [4 x i8], ptr %.sroa.07489.0, i64 %i.bd
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11241 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11243, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind11242 = phi <8 x i32> [ %induction11238, %vec.epilog.ph ], [ %vec.ind.next11244, %vec.epilog.vector.body ] ; 2 uses
  %i.br = mul nsw <8 x i32> %broadcast.splat11233, %vec.ind11242
  %gep12458 = getelementptr [4 x i8], ptr %invariant.gep12457, i64 %index11241
  store <8 x i32> %i.br, ptr %gep12458, align 4, !tbaa !67
  %index.next11243 = add nuw i64 %index11241, 8   ; 2 uses
  %vec.ind.next11244 = add nsw <8 x i32> %vec.ind11242, %broadcast.splat11240
  %i.bs = icmp eq i64 %index.next11243, %n.vec11231
  br i1 %i.bs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1685

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n11245, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.bd, %iter.check ], [ %i.bf, %vec.epilog.iter.check ], [ %i.bp, %vec.epilog.middle.block ]
  %.127477905.ph = phi i32 [ %.027467909, %iter.check ], [ %i.bg, %vec.epilog.iter.check ], [ %i.bq, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge7911.split:                            ; preds = %._crit_edge, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  %i.bt = sdiv i32 %i.ae, 16
  store i32 %i.bt, ptr %i.h, align 4, !tbaa !67
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !44
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.i, i32 %i.bv)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 11, ptr nonnull @_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE.omp_outlined, ptr nonnull %i.h, ptr nonnull %1, ptr nonnull %0, ptr nonnull %i.c, ptr nonnull %i.e, ptr nonnull %2, ptr nonnull %i.d, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %i.f, ptr nonnull %i.g)
  %i.bw = load i32, ptr %i.h, align 4, !tbaa !67
  %i.bx = shl nsw i32 %i.bw, 4                    ; 3 uses
  %i.by = sub nsw i32 %i.ae, %i.bx                ; 2 uses
  %i.bz = sdiv i32 %i.by, 8                       ; 2 uses
  store i32 %i.bz, ptr %i.h, align 4, !tbaa !67
  %i.ca = icmp sgt i32 %i.by, 7
  br i1 %i.ca, label %_ZN4ncnn3MatD2Ev.exit3674.lr.ph, label %._crit_edge8319

_ZN4ncnn3MatD2Ev.exit3674.lr.ph:                  ; preds = %._crit_edge7911.split
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  br label %_ZN4ncnn3MatD2Ev.exit3674

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa11224 = phi i32 [ %i.bq, %vec.epilog.middle.block ], [ %i.bg, %middle.block ], [ %i.ck, %vec.epilog.scalar.ph ]
  %i.cg = add nsw i32 %i.aq, %.lcssa11224
  %i.ch = add nuw nsw i32 %.027487908, 1          ; 2 uses
  %exitcond10036.not = icmp eq i32 %i.ch, %4
  br i1 %exitcond10036.not, label %._crit_edge7911.split, label %iter.check, !llvm.loop !1686

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.127477905 = phi i32 [ %i.ck, %vec.epilog.scalar.ph ], [ %.127477905.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ci = mul nsw i32 %i.o, %.127477905
  %i.cj = getelementptr inbounds [4 x i8], ptr %.sroa.07489.0, i64 %indvars.iv
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !67
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ck = add nsw i32 %.127477905, %5             ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.be, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !1687

._crit_edge8319:                                  ; preds = %._crit_edge8317, %._crit_edge7911.split
  %.lcssa7903 = phi i32 [ %i.bz, %._crit_edge7911.split ], [ %i.bhs, %._crit_edge8317 ]
end_hunk_4
begin_hunk_5_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
  %i.mdm = load i8, ptr %i.lys, align 1, !tbaa !100
  %i.mdn = load i8, ptr %i.lyu, align 1, !tbaa !100
  %i.mdo = load i8, ptr %i.lyw, align 1, !tbaa !100
  %i.mdp = load i8, ptr %i.lyy, align 1, !tbaa !100
  %i.mdq = load i8, ptr %i.lza, align 1, !tbaa !100
  %i.mdr = load i8, ptr %i.lzc, align 1, !tbaa !100
  %i.mds = load i8, ptr %i.lze, align 1, !tbaa !100
  %i.mdt = load i8, ptr %i.lzg, align 1, !tbaa !100
  %i.mdu = load i8, ptr %i.lzi, align 1, !tbaa !100
  %i.mdv = load i8, ptr %i.lzk, align 1, !tbaa !100
  %i.mdw = load i8, ptr %i.lzm, align 1, !tbaa !100
  %i.mdx = load i8, ptr %i.lzo, align 1, !tbaa !100
  %i.mdy = load i8, ptr %i.lzq, align 1, !tbaa !100
  %i.mdz = insertelement <16 x i8> poison, i8 %i.mdj, i64 0
  %i.mea = insertelement <16 x i8> %i.mdz, i8 %i.mdk, i64 1
  %i.meb = insertelement <16 x i8> %i.mea, i8 %i.mdl, i64 2
  %i.mec = insertelement <16 x i8> %i.meb, i8 %i.mdm, i64 3
  %i.med = insertelement <16 x i8> %i.mec, i8 %i.mdn, i64 4
  %i.mee = insertelement <16 x i8> %i.med, i8 %i.mdo, i64 5
  %i.mef = insertelement <16 x i8> %i.mee, i8 %i.mdp, i64 6
  %i.meg = insertelement <16 x i8> %i.mef, i8 %i.mdq, i64 7
  %i.meh = insertelement <16 x i8> %i.meg, i8 %i.mdr, i64 8
  %i.mei = insertelement <16 x i8> %i.meh, i8 %i.mds, i64 9
  %i.mej = insertelement <16 x i8> %i.mei, i8 %i.mdt, i64 10
  %i.mek = insertelement <16 x i8> %i.mej, i8 %i.mdu, i64 11
  %i.mel = insertelement <16 x i8> %i.mek, i8 %i.mdv, i64 12
  %i.mem = insertelement <16 x i8> %i.mel, i8 %i.mdw, i64 13
  %i.men = insertelement <16 x i8> %i.mem, i8 %i.mdx, i64 14
  %i.meo = insertelement <16 x i8> %i.men, i8 %i.mdy, i64 15
  %i.mep = sext <16 x i8> %i.maw to <16 x i32>
  %i.meq = sext <16 x i8> %i.mcc to <16 x i32>
  %i.mer = sext <16 x i8> %i.mdi to <16 x i32>
  %i.mes = sext <16 x i8> %i.meo to <16 x i32>
  %i.met = getelementptr i8, ptr %next.gep11510, i64 16
  %i.meu = getelementptr i8, ptr %next.gep11510, i64 32
  %i.mev = getelementptr i8, ptr %next.gep11510, i64 48
  %wide.load11515 = load <16 x i8>, ptr %next.gep11510, align 1, !tbaa !100
  %wide.load11516 = load <16 x i8>, ptr %i.met, align 1, !tbaa !100
  %wide.load11517 = load <16 x i8>, ptr %i.meu, align 1, !tbaa !100
  %wide.load11518 = load <16 x i8>, ptr %i.mev, align 1, !tbaa !100
  %i.mew = sext <16 x i8> %wide.load11515 to <16 x i32>
  %i.mex = sext <16 x i8> %wide.load11516 to <16 x i32>
  %i.mey = sext <16 x i8> %wide.load11517 to <16 x i32>
  %i.mez = sext <16 x i8> %wide.load11518 to <16 x i32>
  %i.mfa = mul nsw <16 x i32> %i.mew, %i.mep
  %i.mfb = mul nsw <16 x i32> %i.mex, %i.meq
  %i.mfc = mul nsw <16 x i32> %i.mey, %i.mer
  %i.mfd = mul nsw <16 x i32> %i.mez, %i.mes
  %i.mfe = add <16 x i32> %i.mfa, %vec.phi11506   ; 2 uses
  %i.mff = add <16 x i32> %i.mfb, %vec.phi11507   ; 2 uses
  %i.mfg = add <16 x i32> %i.mfc, %vec.phi11508   ; 2 uses
  %i.mfh = add <16 x i32> %i.mfd, %vec.phi11509   ; 2 uses
  %index.next11519 = add nuw i64 %index11505, 64  ; 2 uses
  %i.mfi = icmp eq i64 %index.next11519, %n.vec11503
  br i1 %i.mfi, label %middle.block11520, label %vector.body11504, !llvm.loop !2003

middle.block11520:                                ; preds = %vector.body11504
  %bin.rdx11521 = add <16 x i32> %i.mff, %i.mfe
  %bin.rdx11522 = add <16 x i32> %i.mfg, %bin.rdx11521
  %bin.rdx11523 = add <16 x i32> %i.mfh, %bin.rdx11522
  %i.mfj = call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %bin.rdx11523) ; 3 uses
  br i1 %cmp.n11524, label %._crit_edge9633.us, label %vec.epilog.iter.check11529

vec.epilog.iter.check11529:                       ; preds = %middle.block11520
  br i1 %min.epilog.iters.check11530, label %vec.epilog.scalar.ph11528.preheader, label %vec.epilog.ph11531, !prof !2004

vec.epilog.ph11531:                               ; preds = %vector.main.loop.iter.check11500, %vec.epilog.iter.check11529
  %vec.epilog.resume.val11525 = phi i64 [ %n.vec11503, %vec.epilog.iter.check11529 ], [ 0, %vector.main.loop.iter.check11500 ]
  %bc.merge.rdx11526 = phi i32 [ %i.mfj, %vec.epilog.iter.check11529 ], [ %.225369636.us, %vector.main.loop.iter.check11500 ]
  %i.mfk = getelementptr i8, ptr %.69637.us, i64 %n.vec11532
  %i.mfl = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx11526, i64 0
  br label %vec.epilog.vector.body11533

vec.epilog.vector.body11533:                      ; preds = %vec.epilog.vector.body11533, %vec.epilog.ph11531
  %index11534 = phi i64 [ %vec.epilog.resume.val11525, %vec.epilog.ph11531 ], [ %index.next11539, %vec.epilog.vector.body11533 ] ; 3 uses
  %vec.phi11535 = phi <16 x i32> [ %i.mfl, %vec.epilog.ph11531 ], [ %i.mid, %vec.epilog.vector.body11533 ]
  %next.gep11536 = getelementptr i8, ptr %.69637.us, i64 %index11534
  %i.mfm = getelementptr inbounds nuw [4 x i8], ptr %i.luf, i64 %index11534
  %wide.load11537 = load <16 x i32>, ptr %i.mfm, align 4, !tbaa !67
  %i.mfn = sext <16 x i32> %wide.load11537 to <16 x i64> ; 16 uses
  %i.mfo = extractelement <16 x i64> %i.mfn, i64 0
  %i.mfp = getelementptr inbounds i8, ptr %gep9645.us, i64 %i.mfo
  %i.mfq = extractelement <16 x i64> %i.mfn, i64 1
  %i.mfr = getelementptr inbounds i8, ptr %gep9645.us, i64 %i.mfq
  %i.mfs = extractelement <16 x i64> %i.mfn, i64 2
  %i.mft = getelementptr inbounds i8, ptr %gep9645.us, i64 %i.mfs
  %i.mfu = extractelement <16 x i64> %i.mfn, i64 3
  %i.mfv = getelementptr inbounds i8, ptr %gep9645.us, i64 %i.mfu
  %i.mfw = extractelement <16 x i64> %i.mfn, i64 4
  %i.mfx = getelementptr inbounds i8, ptr %gep9645.us, i64 %i.mfw
  %i.mfy = extractelement <16 x i64> %i.mfn, i64 5
  %i.mfz = getelementptr inbounds i8, ptr %gep9645.us, i64 %i.mfy
  %i.mga = extractelement <16 x i64> %i.mfn, i64 6
  %i.mgb = getelementptr inbounds i8, ptr %gep9645.us, i64 %i.mga
  %i.mgc = extractelement <16 x i64> %i.mfn, i64 7
  %i.mgd = getelementptr inbounds i8, ptr %gep9645.us, i64 %i.mgc
  %i.mge = extractelement <16 x i64> %i.mfn, i64 8
  %i.mgf = getelementptr inbounds i8, ptr %gep9645.us, i64 %i.mge
  %i.mgg = extractelement <16 x i64> %i.mfn, i64 9
  %i.mgh = getelementptr inbounds i8, ptr %gep9645.us, i64 %i.mgg
  %i.mgi = extractelement <16 x i64> %i.mfn, i64 10
  %i.mgj = getelementptr inbounds i8, ptr %gep9645.us, i64 %i.mgi
  %i.mgk = extractelement <16 x i64> %i.mfn, i64 11
  %i.mgl = getelementptr inbounds i8, ptr %gep9645.us, i64 %i.mgk
  %i.mgm = extractelement <16 x i64> %i.mfn, i64 12
  %i.mgn = getelementptr inbounds i8, ptr %gep9645.us, i64 %i.mgm
  %i.mgo = extractelement <16 x i64> %i.mfn, i64 13
  %i.mgp = getelementptr inbounds i8, ptr %gep9645.us, i64 %i.mgo
  %i.mgq = extractelement <16 x i64> %i.mfn, i64 14
  %i.mgr = getelementptr inbounds i8, ptr %gep9645.us, i64 %i.mgq
  %i.mgs = extractelement <16 x i64> %i.mfn, i64 15
  %i.mgt = getelementptr inbounds i8, ptr %gep9645.us, i64 %i.mgs
  %i.mgu = load i8, ptr %i.mfp, align 1, !tbaa !100
  %i.mgv = load i8, ptr %i.mfr, align 1, !tbaa !100
  %i.mgw = load i8, ptr %i.mft, align 1, !tbaa !100
  %i.mgx = load i8, ptr %i.mfv, align 1, !tbaa !100
  %i.mgy = load i8, ptr %i.mfx, align 1, !tbaa !100
  %i.mgz = load i8, ptr %i.mfz, align 1, !tbaa !100
  %i.mha = load i8, ptr %i.mgb, align 1, !tbaa !100
  %i.mhb = load i8, ptr %i.mgd, align 1, !tbaa !100
  %i.mhc = load i8, ptr %i.mgf, align 1, !tbaa !100
  %i.mhd = load i8, ptr %i.mgh, align 1, !tbaa !100
  %i.mhe = load i8, ptr %i.mgj, align 1, !tbaa !100
  %i.mhf = load i8, ptr %i.mgl, align 1, !tbaa !100
  %i.mhg = load i8, ptr %i.mgn, align 1, !tbaa !100
  %i.mhh = load i8, ptr %i.mgp, align 1, !tbaa !100
  %i.mhi = load i8, ptr %i.mgr, align 1, !tbaa !100
  %i.mhj = load i8, ptr %i.mgt, align 1, !tbaa !100
  %i.mhk = insertelement <16 x i8> poison, i8 %i.mgu, i64 0
  %i.mhl = insertelement <16 x i8> %i.mhk, i8 %i.mgv, i64 1
  %i.mhm = insertelement <16 x i8> %i.mhl, i8 %i.mgw, i64 2
  %i.mhn = insertelement <16 x i8> %i.mhm, i8 %i.mgx, i64 3
  %i.mho = insertelement <16 x i8> %i.mhn, i8 %i.mgy, i64 4
  %i.mhp = insertelement <16 x i8> %i.mho, i8 %i.mgz, i64 5
  %i.mhq = insertelement <16 x i8> %i.mhp, i8 %i.mha, i64 6
  %i.mhr = insertelement <16 x i8> %i.mhq, i8 %i.mhb, i64 7
  %i.mhs = insertelement <16 x i8> %i.mhr, i8 %i.mhc, i64 8
  %i.mht = insertelement <16 x i8> %i.mhs, i8 %i.mhd, i64 9
  %i.mhu = insertelement <16 x i8> %i.mht, i8 %i.mhe, i64 10
  %i.mhv = insertelement <16 x i8> %i.mhu, i8 %i.mhf, i64 11
  %i.mhw = insertelement <16 x i8> %i.mhv, i8 %i.mhg, i64 12
  %i.mhx = insertelement <16 x i8> %i.mhw, i8 %i.mhh, i64 13
  %i.mhy = insertelement <16 x i8> %i.mhx, i8 %i.mhi, i64 14
  %i.mhz = insertelement <16 x i8> %i.mhy, i8 %i.mhj, i64 15
  %i.mia = sext <16 x i8> %i.mhz to <16 x i32>
  %wide.load11538 = load <16 x i8>, ptr %next.gep11536, align 1, !tbaa !100
  %i.mib = sext <16 x i8> %wide.load11538 to <16 x i32>
  %i.mic = mul nsw <16 x i32> %i.mib, %i.mia
  %i.mid = add <16 x i32> %i.mic, %vec.phi11535   ; 2 uses
  %index.next11539 = add nuw i64 %index11534, 16  ; 2 uses
  %i.mie = icmp eq i64 %index.next11539, %n.vec11532
  br i1 %i.mie, label %vec.epilog.middle.block11540, label %vec.epilog.vector.body11533, !llvm.loop !2005

vec.epilog.middle.block11540:                     ; preds = %vec.epilog.vector.body11533
  %i.mif = call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.mid) ; 2 uses
  br i1 %cmp.n11541, label %._crit_edge9633.us, label %vec.epilog.scalar.ph11528.preheader

vec.epilog.scalar.ph11528.preheader:              ; preds = %iter.check11527, %vec.epilog.iter.check11529, %vec.epilog.middle.block11540
  %indvars.iv10621.ph = phi i64 [ 0, %iter.check11527 ], [ %n.vec11503, %vec.epilog.iter.check11529 ], [ %n.vec11532, %vec.epilog.middle.block11540 ]
  %.79630.us.ph = phi ptr [ %.69637.us, %iter.check11527 ], [ %i.luj, %vec.epilog.iter.check11529 ], [ %i.mfk, %vec.epilog.middle.block11540 ]
  %.325379629.us.ph = phi i32 [ %.225369636.us, %iter.check11527 ], [ %i.mfj, %vec.epilog.iter.check11529 ], [ %i.mif, %vec.epilog.middle.block11540 ]
  br label %vec.epilog.scalar.ph11528

vec.epilog.scalar.ph11528:                        ; preds = %vec.epilog.scalar.ph11528.preheader, %vec.epilog.scalar.ph11528
  %indvars.iv10621 = phi i64 [ %indvars.iv.next10622, %vec.epilog.scalar.ph11528 ], [ %indvars.iv10621.ph, %vec.epilog.scalar.ph11528.preheader ] ; 2 uses
  %.79630.us = phi ptr [ %i.miq, %vec.epilog.scalar.ph11528 ], [ %.79630.us.ph, %vec.epilog.scalar.ph11528.preheader ] ; 2 uses
  %.325379629.us = phi i32 [ %i.mip, %vec.epilog.scalar.ph11528 ], [ %.325379629.us.ph, %vec.epilog.scalar.ph11528.preheader ]
  %i.mig = getelementptr inbounds nuw [4 x i8], ptr %i.luf, i64 %indvars.iv10621
  %i.mih = load i32, ptr %i.mig, align 4, !tbaa !67
  %i.mii = sext i32 %i.mih to i64
  %i.mij = getelementptr inbounds i8, ptr %gep9645.us, i64 %i.mii
  %i.mik = load i8, ptr %i.mij, align 1, !tbaa !100
  %i.mil = sext i8 %i.mik to i32
  %i.mim = load i8, ptr %.79630.us, align 1, !tbaa !100
  %i.min = sext i8 %i.mim to i32
  %i.mio = mul nsw i32 %i.min, %i.mil
  %i.mip = add nsw i32 %i.mio, %.325379629.us     ; 2 uses
  %i.miq = getelementptr inbounds nuw i8, ptr %.79630.us, i64 1
  %indvars.iv.next10622 = add nuw nsw i64 %indvars.iv10621, 1 ; 2 uses
  %exitcond10627.not = icmp eq i64 %indvars.iv.next10622, %wide.trip.count10626
  br i1 %exitcond10627.not, label %._crit_edge9633.us, label %vec.epilog.scalar.ph11528, !llvm.loop !2006

._crit_edge9633.us:                               ; preds = %vec.epilog.scalar.ph11528, %vec.epilog.middle.block11540, %middle.block11520
  %.lcssa11056 = phi i32 [ %i.mif, %vec.epilog.middle.block11540 ], [ %i.mfj, %middle.block11520 ], [ %i.mip, %vec.epilog.scalar.ph11528 ] ; 2 uses
  %i.mir = getelementptr i8, ptr %.69637.us, i64 %i.luh
  %indvars.iv.next10629 = add nuw nsw i64 %indvars.iv10628, 1 ; 2 uses
  %i.mis = trunc nuw i64 %indvars.iv.next10629 to i32
  %i.mit = icmp sgt i32 %i.kve, %i.mis
  br i1 %i.mit, label %iter.check11527, label %._crit_edge9639, !llvm.loop !2007

._crit_edge9639:                                  ; preds = %._crit_edge9633.us, %.noexc.lr.ph, %.preheader
  %.22536.lcssa = phi i32 [ %.02534.lcssa, %.preheader ], [ %.02534.lcssa, %.noexc.lr.ph ], [ %.lcssa11056, %._crit_edge9633.us ]
  store i32 %.22536.lcssa, ptr %.228149647, align 4, !tbaa !67
  %i.miu = getelementptr inbounds nuw i8, ptr %.228149647, i64 4
  %i.miv = add nuw nsw i32 %.228119648, 1         ; 2 uses
  %exitcond10631.not = icmp eq i32 %i.miv, %i.dnw
  br i1 %exitcond10631.not, label %._crit_edge9649, label %.noexc3307, !llvm.loop !2008

._crit_edge9649:                                  ; preds = %._crit_edge9639, %.preheader7774
  %indvars.iv.next10633 = add nsw i64 %indvars.iv10632, 1 ; 2 uses
  %10 = icmp slt i64 %indvars.iv.next10633, %i.doj
  br i1 %10, label %_ZN4ncnn3MatD2Ev.exit3577, label %._crit_edge9651, !llvm.loop !2009

bb.ay:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.d, %bb.b
  ret void
}

declare void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN4ncnn29requantize_from_int32_to_int8ERKNS_3MatERS0_S2_S2_S2_iS2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN4ncnn21dequantize_from_int32ERKNS_3MatERS0_S2_S2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare noundef i32 @_ZN4ncnn36conv3x3s1_winograd43_int8_avx512vnniERKNS_3MatERS0_S2_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare noundef i32 @_ZN4ncnn33conv3x3s1_winograd43_int8_avxvnniERKNS_3MatERS0_S2_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN4ncnnL46conv3x3s1_winograd43_transform_input_tile_int8ERKNS_3MatERS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef range(i32 1, -2147483648) %6) unnamed_addr #19 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 9 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i32, align 4                      ; 7 uses
  %i.i = alloca i32, align 4                      ; 7 uses
  %i.j = alloca [6 x [6 x [2 x i16]]], align 16   ; 9 uses
  %i.k = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %2, ptr %i.a, align 4, !tbaa !67
  store i32 %3, ptr %i.b, align 4, !tbaa !67
  store i32 %4, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !75   ; 2 uses
  store i32 %i.m, ptr %i.d, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !76
  store i32 %i.o, ptr %i.e, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !66   ; 2 uses
  store i32 %i.q, ptr %i.f, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !20
  %i.t = sext i32 %i.q to i64
  %i.u = mul i64 %i.s, %i.t
  store i64 %i.u, ptr %i.g, align 8, !tbaa !231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  %i.v = add nsw i32 %i.m, 1
  %i.w = sdiv i32 %i.v, 4
  store i32 %i.w, ptr %i.h, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #12
  %i.x = sdiv i32 %5, 16
  store i32 %i.x, ptr %i.i, align 4, !tbaa !67
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.k, i32 %6)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 11, ptr nonnull @_ZN4ncnnL46conv3x3s1_winograd43_transform_input_tile_int8ERKNS_3MatERS0_iiiii.omp_outlined, ptr nonnull %i.i, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %i.h, ptr nonnull %0, ptr nonnull %i.c, ptr nonnull %i.f, ptr nonnull %i.e, ptr nonnull %i.d, ptr nonnull %i.g, ptr nonnull %1)
  %i.y = load i32, ptr %i.i, align 4, !tbaa !67
  %i.z = shl nsw i32 %i.y, 4                      ; 3 uses
  %i.aa = sub nsw i32 %5, %i.z                    ; 2 uses
  %i.ab = sdiv i32 %i.aa, 8                       ; 3 uses
  store i32 %i.ab, ptr %i.i, align 4, !tbaa !67
  %i.ac = icmp sgt i32 %i.aa, 7
  br i1 %i.ac, label %.lr.ph, label %._crit_edge642

.lr.ph:                                           ; preds = %bb.a
  %i.ad = load i32, ptr %i.b, align 4, !tbaa !67  ; 9 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  %i.af = load i32, ptr %i.h, align 4             ; 2 uses
  %i.ag = load i32, ptr %i.f, align 4             ; 9 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load i32, ptr %i.d, align 4             ; 6 uses
  %i.aj = mul nsw i32 %i.ag, %i.ai
  %i.ak = sext i32 %i.aj to i64                   ; 5 uses
  %i.al = load i64, ptr %i.g, align 8
  %i.am = trunc i64 %i.al to i32
  %i.an = insertelement <8 x i32> poison, i32 %i.am, i64 0
  %i.ao = shufflevector <8 x i32> %i.an, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ap = mul <8 x i32> %i.ao, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 36 uses
  %factor.op.mul = mul i32 %i.ad, 36
  %i.aq = shl nsw i32 %i.ad, 3
  %i.ar = sext i32 %i.aq to i64
  %i.as = shl nsw i32 %i.ad, 4
  %i.at = sext i32 %i.as to i64
  %i.au = mul nsw i32 %i.ad, 24
  %i.av = sext i32 %i.au to i64
  %i.aw = shl nsw i32 %i.ad, 5
  %i.ax = sext i32 %i.aw to i64
  %i.ay = mul nsw i32 %i.ad, 40
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul nsw i32 %i.ad, 48
  %i.bb = sext i32 %i.ba to i64                   ; 30 uses
  br i1 %i.ae, label %_ZN4ncnn3MatD2Ev.exit557.lr.ph.us.preheader, label %._crit_edge642

_ZN4ncnn3MatD2Ev.exit557.lr.ph.us.preheader:      ; preds = %.lr.ph
  %i.bc = load i32, ptr %i.e, align 4             ; 2 uses
  %i.bd = load i32, ptr %i.c, align 4
  %i.be = load i32, ptr %i.a, align 4
  %i.bf = sext i32 %i.bc to i64                   ; 5 uses
  %i.bg = zext i32 %i.z to i64
  %wide.trip.count695 = zext nneg i32 %i.ab to i64
  %wide.trip.count = zext nneg i32 %i.ad to i64
  %invariant.op = add nsw i64 %i.bf, -1
  %invariant.op773 = add nsw i64 %i.bf, -2
  %invariant.op774 = add nsw i64 %i.bf, -3
  %invariant.op775 = add nsw i64 %i.bf, -4
  %invariant.op776 = add nsw i64 %i.bf, -5
  br label %_ZN4ncnn3MatD2Ev.exit557.lr.ph.us

_ZN4ncnn3MatD2Ev.exit557.lr.ph.us:                ; preds = %_ZN4ncnn3MatD2Ev.exit557.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv692 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit557.lr.ph.us.preheader ], [ %indvars.iv.next693, %._crit_edge.us ] ; 2 uses
  %i.bh = shl nuw nsw i64 %indvars.iv692, 3
  %i.bi = add nuw i64 %i.bh, %i.bg                ; 2 uses
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = add i32 %i.bd, %i.bj
  %i.bl = sdiv i32 %i.bk, %i.ag
  %i.bm = sext i32 %i.bl to i64
  %i.bn = trunc i64 %i.bi to i32
  %.reass.us = mul i32 %factor.op.mul, %i.bn
  %i.bo = sext i32 %.reass.us to i64
  br label %_ZN4ncnn3MatD2Ev.exit557.us

_ZN4ncnn3MatD2Ev.exit557.us:                      ; preds = %_ZN4ncnn3MatD2Ev.exit557.lr.ph.us, %.thread.us.5
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit557.lr.ph.us ], [ %indvars.iv.next, %.thread.us.5 ] ; 3 uses
  %i.bp = trunc i64 %indvars.iv to i32
  %i.bq = add i32 %i.be, %i.bp                    ; 2 uses
  %i.br = sdiv i32 %i.bq, %i.af
  %i.bs = srem i32 %i.bq, %i.af
  %i.bt = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !2010
  %i.bu = load ptr, ptr %0, align 8, !tbaa !18, !noalias !2010
  %i.bv = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !2010
  %i.bw = mul i64 %i.bv, %i.bm
  %i.bx = load i64, ptr %i.ah, align 8, !tbaa !65, !noalias !2010 ; 2 uses
  %i.by = mul i64 %i.bw, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.by
  %i.ca = sext i32 %i.bt to i64
  %i.cb = shl nsw i32 %i.br, 2                    ; 2 uses
  %i.cc = sext i32 %i.cb to i64                   ; 6 uses
  %i.cd = mul nsw i64 %i.ca, %i.cc
  %i.ce = mul i64 %i.cd, %i.bx
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ce
  %i.cg = shl nsw i32 %i.bs, 2                    ; 6 uses
  %i.ch = mul nsw i32 %i.ag, %i.cg
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds i8, ptr %i.cf, i64 %i.ci ; 13 uses
  %i.ck = or disjoint i32 %i.cg, 1
  %i.cl = icmp slt i32 %i.ck, %i.ai               ; 12 uses
  %i.cm = or disjoint i32 %i.cg, 2
  %i.cn = icmp slt i32 %i.cm, %i.ai               ; 12 uses
  %i.co = or disjoint i32 %i.cg, 3
  %i.cp = icmp slt i32 %i.co, %i.ai               ; 12 uses
  %i.cq = add nsw i32 %i.cg, 4
  %i.cr = icmp slt i32 %i.cq, %i.ai               ; 12 uses
  %i.cs = add nsw i32 %i.cg, 5
  %i.ct = icmp slt i32 %i.cs, %i.ai               ; 12 uses
  %i.cu = icmp slt i32 %i.cb, %i.bc
  br i1 %i.cu, label %bb.b, label %.thread.us

bb.b:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit557.us
  switch i32 %i.ag, label %.thread.us [
    i32 8, label %bb.m
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.cv = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.cj, <8 x i32> %i.ap, <8 x i32> splat (i32 -1), i8 1)
  %i.cw = trunc <8 x i32> %i.cv to <8 x i8>
  %i.cx = sext <8 x i8> %i.cw to <8 x i16>
  %i.cy = bitcast <8 x i16> %i.cx to <2 x i64>    ; 2 uses
  br i1 %i.cl, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  %i.da = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.cz, <8 x i32> %i.ap, <8 x i32> splat (i32 -1), i8 1)
  %i.db = trunc <8 x i32> %i.da to <8 x i8>
  %i.dc = sext <8 x i8> %i.db to <8 x i16>
  %i.dd = bitcast <8 x i16> %i.dc to <2 x i64>
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.2.us = phi <2 x i64> [ %i.dd, %bb.d ], [ zeroinitializer, %bb.c ] ; 2 uses
  br i1 %i.cn, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.de = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  %i.df = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.de, <8 x i32> %i.ap, <8 x i32> splat (i32 -1), i8 1)
  %i.dg = trunc <8 x i32> %i.df to <8 x i8>
  %i.dh = sext <8 x i8> %i.dg to <8 x i16>
  %i.di = bitcast <8 x i16> %i.dh to <2 x i64>
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2486.us = phi <2 x i64> [ %i.di, %bb.f ], [ zeroinitializer, %bb.e ] ; 2 uses
  br i1 %i.cp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cj, i64 3
  %i.dk = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.dj, <8 x i32> %i.ap, <8 x i32> splat (i32 -1), i8 1)
end_hunk_5
begin_hunk_6_@_ZN4ncnnL46conv3x3s1_winograd43_transform_input_tile_int8ERKNS_3MatERS0_iiiii:bb.a
  %i.agw = trunc nsw i32 %i.agv to i16
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agu, i64 2
  store i16 %i.agw, ptr %i.agx, align 2, !tbaa !595
  %i.agy = sub nsw i32 %i.agb, %i.afx
  %i.agz = trunc nsw i32 %i.agy to i16
  %i.aha = getelementptr inbounds nuw [4 x i8], ptr %i.acc, i64 %indvars.iv697 ; 2 uses
  store i16 %i.agz, ptr %i.aha, align 4, !tbaa !595
  %i.ahb = sub nsw i32 %i.agd, %i.afz
  %i.ahc = trunc nsw i32 %i.ahb to i16
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.aha, i64 2
  store i16 %i.ahc, ptr %i.ahd, align 2, !tbaa !595
  %i.ahe = trunc nsw i32 %i.agi to i16            ; 2 uses
  %i.ahf = add nsw i16 %i.agf, %i.ahe
  %i.ahg = getelementptr inbounds nuw [4 x i8], ptr %i.acd, i64 %indvars.iv697 ; 2 uses
  store i16 %i.ahf, ptr %i.ahg, align 4, !tbaa !595
  %i.ahh = trunc nsw i32 %i.agj to i16            ; 2 uses
  %i.ahi = add nsw i16 %i.agh, %i.ahh
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahg, i64 2
  store i16 %i.ahi, ptr %i.ahj, align 2, !tbaa !595
  %i.ahk = sub nsw i16 %i.ahe, %i.agf
  %i.ahl = getelementptr inbounds nuw [4 x i8], ptr %i.ace, i64 %indvars.iv697 ; 2 uses
  store i16 %i.ahk, ptr %i.ahl, align 4, !tbaa !595
  %i.ahm = sub nsw i16 %i.ahh, %i.agh
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahl, i64 2
  store i16 %i.ahm, ptr %i.ahn, align 2, !tbaa !595
  %.neg552.us = mul nsw i32 %.1528.us, 65531
  %i.aho = add nsw i32 %.neg552.us, %.1536.us
  %i.ahp = add nsw i32 %i.aho, %i.afw
  %i.ahq = trunc i32 %i.ahp to i16
  %i.ahr = getelementptr inbounds nuw [4 x i8], ptr %i.acf, i64 %indvars.iv697 ; 2 uses
  store i16 %i.ahq, ptr %i.ahr, align 4, !tbaa !595
  %.neg553.us = mul nsw i32 %.1530.us, 65531
  %i.ahs = add nsw i32 %.neg553.us, %.1534.us
  %i.aht = add nsw i32 %i.ahs, %i.afy
  %i.ahu = trunc i32 %i.aht to i16
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahr, i64 2
  store i16 %i.ahu, ptr %i.ahv, align 2, !tbaa !595
  %i.ahw = getelementptr inbounds i8, ptr %.0508644.us, i64 %i.ach
  %indvars.iv.next698 = add nuw nsw i64 %indvars.iv697, 1 ; 2 uses
  %exitcond700.not = icmp eq i64 %indvars.iv.next698, 6
  br i1 %exitcond700.not, label %bb.ek, label %bb.dx, !llvm.loop !2018

bb.ek:                                            ; preds = %bb.ej
  %.idx771 = shl nuw nsw i64 %indvars.iv705, 2
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.adn, i64 %.idx771 ; 6 uses
  %i.ahy = getelementptr inbounds nuw [2 x i8], ptr %i.ahx, i64 %i.acj
  %i.ahz = getelementptr inbounds nuw [2 x i8], ptr %i.ahx, i64 %i.acl
  %i.aia = getelementptr inbounds nuw [2 x i8], ptr %i.ahx, i64 %i.acn
  %i.aib = getelementptr inbounds nuw [2 x i8], ptr %i.ahx, i64 %i.acp
  %i.aic = getelementptr inbounds nuw [2 x i8], ptr %i.ahx, i64 %i.acr
  br label %bb.el

bb.el:                                            ; preds = %bb.el, %bb.ek
  %indvars.iv701 = phi i64 [ %indvars.iv.next702, %bb.el ], [ 0, %bb.ek ] ; 2 uses
  %.0512650.us = phi ptr [ %i.akv, %bb.el ], [ %i.aic, %bb.ek ] ; 3 uses
  %.0513649.us = phi ptr [ %i.aku, %bb.el ], [ %i.aib, %bb.ek ] ; 3 uses
  %.0514648.us = phi ptr [ %i.akt, %bb.el ], [ %i.aia, %bb.ek ] ; 3 uses
  %.0515647.us = phi ptr [ %i.aks, %bb.el ], [ %i.ahz, %bb.ek ] ; 3 uses
  %.0516646.us = phi ptr [ %i.akr, %bb.el ], [ %i.ahy, %bb.ek ] ; 3 uses
  %.0517645.us = phi ptr [ %i.akq, %bb.el ], [ %i.ahx, %bb.ek ] ; 2 uses
  %i.aid = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %indvars.iv701 ; 9 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aid, i64 4
  %i.aif = load i16, ptr %i.aie, align 4, !tbaa !595 ; 2 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aid, i64 6
  %i.aih = load i16, ptr %i.aig, align 2, !tbaa !595 ; 2 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aid, i64 8
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aid, i64 12
  %i.aik = load i16, ptr %i.aij, align 4, !tbaa !595 ; 3 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aid, i64 14
  %i.aim = load i16, ptr %i.ail, align 2, !tbaa !595 ; 3 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aid, i64 16
  %i.aio = getelementptr inbounds nuw i8, ptr %i.aid, i64 20
  %i.aip = load i16, ptr %i.aio, align 4, !tbaa !595
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aid, i64 22
  %i.air = load i16, ptr %i.aiq, align 2, !tbaa !595
  %i.ais = zext i16 %i.aik to i32
  %i.ait = sext i16 %i.aif to i32
  %i.aiu = shl nsw i32 %i.ait, 2                  ; 2 uses
  %i.aiv = trunc i32 %i.aiu to i16
  %i.aiw = sub i16 %i.aik, %i.aiv                 ; 2 uses
  %i.aix = zext i16 %i.aim to i32
  %i.aiy = sext i16 %i.aih to i32
  %i.aiz = shl nsw i32 %i.aiy, 2                  ; 2 uses
  %i.aja = trunc i32 %i.aiz to i16
  %i.ajb = sub i16 %i.aim, %i.aja                 ; 2 uses
  %i.ajc = sub i16 %i.aik, %i.aif
  %i.ajd = shl i16 %i.ajc, 1                      ; 2 uses
  %i.aje = sub i16 %i.aim, %i.aih
  %i.ajf = shl i16 %i.aje, 1                      ; 2 uses
  %i.ajg = load <2 x i16>, ptr %i.aid, align 8, !tbaa !595
  %i.ajh = load <2 x i16>, ptr %i.aii, align 8, !tbaa !595 ; 3 uses
  %i.aji = load <2 x i16>, ptr %i.ain, align 8, !tbaa !595 ; 3 uses
  %i.ajj = extractelement <2 x i16> %i.ajh, i64 0 ; 2 uses
  %i.ajk = shl i16 %i.ajj, 2
  %i.ajl = extractelement <2 x i16> %i.aji, i64 0 ; 2 uses
  %i.ajm = sub i16 %i.ajl, %i.ajk                 ; 2 uses
  %i.ajn = extractelement <2 x i16> %i.ajh, i64 1 ; 2 uses
  %i.ajo = shl i16 %i.ajn, 2
  %i.ajp = extractelement <2 x i16> %i.aji, i64 1 ; 2 uses
  %i.ajq = sub i16 %i.ajp, %i.ajo                 ; 2 uses
  %i.ajr = sub i16 %i.ajl, %i.ajj                 ; 2 uses
  %i.ajs = sub i16 %i.ajp, %i.ajn                 ; 2 uses
  %i.ajt = shl <2 x i16> %i.ajg, splat (i16 2)
  %i.aju = mul <2 x i16> %i.ajh, splat (i16 -5)
  %i.ajv = add <2 x i16> %i.aju, %i.ajt
  %i.ajw = add <2 x i16> %i.ajv, %i.aji
  store <2 x i16> %i.ajw, ptr %.0517645.us, align 2, !tbaa !595
  %i.ajx = add i16 %i.ajm, %i.aiw
  store i16 %i.ajx, ptr %.0516646.us, align 2, !tbaa !595
  %i.ajy = add i16 %i.ajq, %i.ajb
  %i.ajz = getelementptr inbounds nuw i8, ptr %.0516646.us, i64 2
  store i16 %i.ajy, ptr %i.ajz, align 2, !tbaa !595
  %i.aka = sub i16 %i.ajm, %i.aiw
  store i16 %i.aka, ptr %.0515647.us, align 2, !tbaa !595
  %i.akb = sub i16 %i.ajq, %i.ajb
  %i.akc = getelementptr inbounds nuw i8, ptr %.0515647.us, i64 2
  store i16 %i.akb, ptr %i.akc, align 2, !tbaa !595
  %i.akd = add i16 %i.ajr, %i.ajd
  store i16 %i.akd, ptr %.0514648.us, align 2, !tbaa !595
  %i.ake = add i16 %i.ajs, %i.ajf
  %i.akf = getelementptr inbounds nuw i8, ptr %.0514648.us, i64 2
  store i16 %i.ake, ptr %i.akf, align 2, !tbaa !595
  %i.akg = sub i16 %i.ajr, %i.ajd
  store i16 %i.akg, ptr %.0513649.us, align 2, !tbaa !595
  %i.akh = sub i16 %i.ajs, %i.ajf
  %i.aki = getelementptr inbounds nuw i8, ptr %.0513649.us, i64 2
  store i16 %i.akh, ptr %i.aki, align 2, !tbaa !595
  %.neg546.us = mul nuw i32 %i.ais, 65531
  %i.akj = add i32 %.neg546.us, %i.aiu
  %i.akk = trunc i32 %i.akj to i16
  %i.akl = add i16 %i.aip, %i.akk
  store i16 %i.akl, ptr %.0512650.us, align 2, !tbaa !595
  %.neg547.us = mul nuw i32 %i.aix, 65531
  %i.akm = add i32 %.neg547.us, %i.aiz
  %i.akn = trunc i32 %i.akm to i16
  %i.ako = add i16 %i.air, %i.akn
  %i.akp = getelementptr inbounds nuw i8, ptr %.0512650.us, i64 2
  store i16 %i.ako, ptr %i.akp, align 2, !tbaa !595
  %i.akq = getelementptr inbounds nuw [2 x i8], ptr %.0517645.us, i64 %i.act
  %i.akr = getelementptr inbounds nuw [2 x i8], ptr %.0516646.us, i64 %i.act
  %i.aks = getelementptr inbounds nuw [2 x i8], ptr %.0515647.us, i64 %i.act
  %i.akt = getelementptr inbounds nuw [2 x i8], ptr %.0514648.us, i64 %i.act
  %i.aku = getelementptr inbounds nuw [2 x i8], ptr %.0513649.us, i64 %i.act
  %i.akv = getelementptr inbounds nuw [2 x i8], ptr %.0512650.us, i64 %i.act
  %indvars.iv.next702 = add nuw nsw i64 %indvars.iv701, 1 ; 2 uses
  %exitcond704.not = icmp eq i64 %indvars.iv.next702, 6
  br i1 %exitcond704.not, label %bb.em, label %bb.el, !llvm.loop !2019

bb.em:                                            ; preds = %bb.el
  %indvars.iv.next706 = add nuw nsw i64 %indvars.iv705, 1 ; 2 uses
  %exitcond709.not = icmp eq i64 %indvars.iv.next706, %wide.trip.count708
  br i1 %exitcond709.not, label %._crit_edge.us662, label %_ZN4ncnn3MatD2Ev.exit556.us, !llvm.loop !2020

._crit_edge.us662:                                ; preds = %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #12
  %indvars.iv.next711 = add nuw nsw i64 %indvars.iv710, 1 ; 2 uses
  %exitcond714.not = icmp eq i64 %indvars.iv.next711, %wide.trip.count713
  br i1 %exitcond714.not, label %._crit_edge657, label %_ZN4ncnn3MatD2Ev.exit556.lr.ph.us, !llvm.loop !2021

._crit_edge657:                                   ; preds = %._crit_edge.us662, %.lr.ph656, %._crit_edge642
  %i.akw = shl nsw i32 %i.abw, 1
  %i.akx = add nsw i32 %i.akw, %i.abu             ; 2 uses
  %i.aky = icmp slt i32 %i.akx, %5
  br i1 %i.aky, label %.lr.ph679, label %._crit_edge680

.lr.ph679:                                        ; preds = %._crit_edge657
  %i.akz = load i32, ptr %i.b, align 4, !tbaa !67 ; 9 uses
  %i.ala = icmp sgt i32 %i.akz, 0
  %i.alb = load i32, ptr %i.h, align 4            ; 2 uses
  %i.alc = load i32, ptr %i.d, align 4
  %i.ald = sext i32 %i.alc to i64                 ; 5 uses
  %factor.op.mul681 = mul i32 %i.akz, 36
  %i.ale = sext i32 %i.akz to i64
  %i.alf = shl nsw i32 %i.akz, 1
  %i.alg = sext i32 %i.alf to i64
  %i.alh = mul nsw i32 %i.akz, 3
  %i.ali = sext i32 %i.alh to i64
  %i.alj = shl nsw i32 %i.akz, 2
  %i.alk = sext i32 %i.alj to i64
  %i.all = mul nsw i32 %i.akz, 5
  %i.alm = sext i32 %i.all to i64
  %i.aln = mul nsw i32 %i.akz, 6
  %i.alo = sext i32 %i.aln to i64                 ; 30 uses
  br i1 %i.ala, label %.lr.ph679.split.us, label %._crit_edge680

.lr.ph679.split.us:                               ; preds = %.lr.ph679
  %i.alp = load i32, ptr %i.e, align 4            ; 2 uses
  %i.alq = load i32, ptr %i.c, align 4
  %i.alr = load i32, ptr %i.a, align 4
  %i.als = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.alt = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !2022
  %i.alu = load ptr, ptr %0, align 8, !tbaa !18, !noalias !2022
  %i.alv = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !2022
  %i.alw = load i64, ptr %i.als, align 8, !tbaa !65, !noalias !2022 ; 2 uses
  %factor.op.mul684 = mul i64 %i.alv, %i.alw
  %i.alx = sext i32 %i.alt to i64
  %factor.op.mul675.us = mul i64 %i.alw, %i.alx
  %i.aly = load ptr, ptr %1, align 8, !tbaa !18
  %i.alz = sext i32 %i.alp to i64                 ; 5 uses
  %i.ama = sext i32 %i.akx to i64
  %i.amb = sext i32 %5 to i64
  %i.amc = sext i32 %i.alq to i64
  %wide.trip.count726 = zext nneg i32 %i.akz to i64
  %invariant.op778 = add nsw i64 %i.alz, -1
  %invariant.op779 = add nsw i64 %i.alz, -2
  %invariant.op780 = add nsw i64 %i.alz, -3
  %invariant.op781 = add nsw i64 %i.alz, -4
  %invariant.op782 = add nsw i64 %i.alz, -5
  br label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us

_ZN4ncnn3MatD2Ev.exit.lr.ph.us:                   ; preds = %._crit_edge.us683, %.lr.ph679.split.us
  %indvars.iv728 = phi i64 [ %indvars.iv.next729, %._crit_edge.us683 ], [ %i.ama, %.lr.ph679.split.us ] ; 3 uses
  %i.amd = add nsw i64 %indvars.iv728, %i.amc
  %.reass685 = mul i64 %factor.op.mul684, %i.amd
  %i.ame = getelementptr inbounds nuw i8, ptr %i.alu, i64 %.reass685
  %i.amf = trunc nsw i64 %indvars.iv728 to i32
  %.reass682.us = mul i32 %factor.op.mul681, %i.amf
  %i.amg = sext i32 %.reass682.us to i64
  %i.amh = getelementptr inbounds [2 x i8], ptr %i.aly, i64 %i.amg
  br label %_ZN4ncnn3MatD2Ev.exit.us

_ZN4ncnn3MatD2Ev.exit.us:                         ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, %bb.ha
  %indvars.iv723 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit.lr.ph.us ], [ %indvars.iv.next724, %bb.ha ] ; 3 uses
  %i.ami = trunc i64 %indvars.iv723 to i32
  %i.amj = add i32 %i.alr, %i.ami                 ; 2 uses
  %i.amk = sdiv i32 %i.amj, %i.alb
  %i.aml = srem i32 %i.amj, %i.alb
  %i.amm = shl nsw i32 %i.amk, 2                  ; 2 uses
  %i.amn = sext i32 %i.amm to i64                 ; 6 uses
  %.reass676.us = mul i64 %factor.op.mul675.us, %i.amn
  %i.amo = getelementptr inbounds nuw i8, ptr %i.ame, i64 %.reass676.us
  %i.amp = shl nsw i32 %i.aml, 2                  ; 6 uses
  %i.amq = sext i32 %i.amp to i64
  %i.amr = getelementptr inbounds i8, ptr %i.amo, i64 %i.amq ; 7 uses
  %i.ams = or disjoint i32 %i.amp, 1
  %i.amt = load i32, ptr %i.d, align 4            ; 5 uses
  %i.amu = icmp slt i32 %i.ams, %i.amt            ; 6 uses
  %i.amv = or disjoint i32 %i.amp, 2
  %i.amw = icmp slt i32 %i.amv, %i.amt            ; 6 uses
  %i.amx = or disjoint i32 %i.amp, 3
  %i.amy = icmp slt i32 %i.amx, %i.amt            ; 6 uses
  %i.amz = add nsw i32 %i.amp, 4
  %i.ana = icmp slt i32 %i.amz, %i.amt            ; 6 uses
  %i.anb = add nsw i32 %i.amp, 5
  %i.anc = icmp slt i32 %i.anb, %i.amt            ; 6 uses
  %i.and = icmp slt i32 %i.amm, %i.alp
  br i1 %i.and, label %bb.en, label %bb.ex

bb.en:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.us
  %i.ane = load i8, ptr %i.amr, align 1, !tbaa !100 ; 2 uses
  br i1 %i.amu, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.anf = getelementptr inbounds nuw i8, ptr %i.amr, i64 1
  %i.ang = load i8, ptr %i.anf, align 1, !tbaa !100
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %.0477.us = phi i8 [ %i.ang, %bb.eo ], [ 0, %bb.en ] ; 2 uses
  br i1 %i.amw, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.anh = getelementptr inbounds nuw i8, ptr %i.amr, i64 2
  %i.ani = load i8, ptr %i.anh, align 1, !tbaa !100
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %.0475.us = phi i8 [ %i.ani, %bb.eq ], [ 0, %bb.ep ] ; 2 uses
  br i1 %i.amy, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.anj = getelementptr inbounds nuw i8, ptr %i.amr, i64 3
  %i.ank = load i8, ptr %i.anj, align 1, !tbaa !100
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %.0473.us = phi i8 [ %i.ank, %bb.es ], [ 0, %bb.er ] ; 2 uses
  br i1 %i.ana, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.anl = getelementptr inbounds nuw i8, ptr %i.amr, i64 4
  %i.anm = load i8, ptr %i.anl, align 1, !tbaa !100
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %.0471.us = phi i8 [ %i.anm, %bb.eu ], [ 0, %bb.et ] ; 2 uses
  br i1 %i.anc, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.ann = getelementptr inbounds nuw i8, ptr %i.amr, i64 5
  %i.ano = load i8, ptr %i.ann, align 1, !tbaa !100
  %i.anp = sext i8 %i.ano to i32
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev, %_ZN4ncnn3MatD2Ev.exit.us
  %.0479.us = phi i8 [ %i.ane, %bb.ew ], [ %i.ane, %bb.ev ], [ 0, %_ZN4ncnn3MatD2Ev.exit.us ]
  %.1478.us = phi i8 [ %.0477.us, %bb.ew ], [ %.0477.us, %bb.ev ], [ 0, %_ZN4ncnn3MatD2Ev.exit.us ]
  %.1476.us = phi i8 [ %.0475.us, %bb.ew ], [ %.0475.us, %bb.ev ], [ 0, %_ZN4ncnn3MatD2Ev.exit.us ]
  %.1474.us = phi i8 [ %.0473.us, %bb.ew ], [ %.0473.us, %bb.ev ], [ 0, %_ZN4ncnn3MatD2Ev.exit.us ]
  %.1472.us = phi i8 [ %.0471.us, %bb.ew ], [ %.0471.us, %bb.ev ], [ 0, %_ZN4ncnn3MatD2Ev.exit.us ]
  %.0470.us = phi i32 [ %i.anp, %bb.ew ], [ 0, %bb.ev ], [ 0, %_ZN4ncnn3MatD2Ev.exit.us ]
  %i.anq = sext i8 %.1474.us to i32               ; 3 uses
  %i.anr = sext i8 %.1478.us to i32               ; 2 uses
  %i.ans = shl nsw i32 %i.anr, 2                  ; 2 uses
  %i.ant = sub nsw i32 %i.anq, %i.ans             ; 2 uses
  %i.anu = sext i8 %.1472.us to i32               ; 3 uses
  %i.anv = sext i8 %.1476.us to i32               ; 3 uses
  %i.anw = shl nsw i32 %i.anv, 2
  %i.anx = sub nsw i32 %i.anu, %i.anw             ; 2 uses
  %i.any = sub nsw i32 %i.anq, %i.anr
  %.tr.us = trunc nsw i32 %i.any to i16
  %i.anz = shl nsw i16 %.tr.us, 1                 ; 2 uses
  %i.aoa = sub nsw i32 %i.anu, %i.anv
  %i.aob = sext i8 %.0479.us to i32
  %i.aoc = shl nsw i32 %i.aob, 2
  %.neg542.us = mul nsw i32 %i.anv, 16379
  %i.aod = add nsw i32 %.neg542.us, %i.aoc
  %i.aoe = add nsw i32 %i.aod, %i.anu
  %i.aof = trunc i32 %i.aoe to i16
  %i.aog = add nsw i32 %i.anx, %i.ant
  %i.aoh = trunc nsw i32 %i.aog to i16
  %i.aoi = sub nsw i32 %i.anx, %i.ant
  %i.aoj = trunc nsw i32 %i.aoi to i16
  %i.aok = trunc nsw i32 %i.aoa to i16            ; 2 uses
  %i.aol = add nsw i16 %i.anz, %i.aok
  %i.aom = sub nsw i16 %i.aok, %i.anz
  %i.aon = add nsw i32 %.0470.us, %i.ans
  %.neg543.us = mul nsw i32 %i.anq, 16379
  %i.aoo = add nsw i32 %i.aon, %.neg543.us
  %i.aop = trunc i32 %i.aoo to i16
  %i.aoq = getelementptr inbounds i8, ptr %i.amr, i64 %i.ald ; 7 uses
  %i.aor = icmp sgt i64 %invariant.op778, %i.amn
  br i1 %i.aor, label %bb.ey, label %bb.fi

bb.ey:                                            ; preds = %bb.ex
  %i.aos = load i8, ptr %i.aoq, align 1, !tbaa !100 ; 2 uses
  br i1 %i.amu, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aoq, i64 1
  %i.aou = load i8, ptr %i.aot, align 1, !tbaa !100
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %.0477.us.1 = phi i8 [ %i.aou, %bb.ez ], [ 0, %bb.ey ] ; 2 uses
  br i1 %i.amw, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aoq, i64 2
  %i.aow = load i8, ptr %i.aov, align 1, !tbaa !100
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %.0475.us.1 = phi i8 [ %i.aow, %bb.fb ], [ 0, %bb.fa ] ; 2 uses
  br i1 %i.amy, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aoq, i64 3
  %i.aoy = load i8, ptr %i.aox, align 1, !tbaa !100
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %.0473.us.1 = phi i8 [ %i.aoy, %bb.fd ], [ 0, %bb.fc ] ; 2 uses
  br i1 %i.ana, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aoq, i64 4
  %i.apa = load i8, ptr %i.aoz, align 1, !tbaa !100
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %.0471.us.1 = phi i8 [ %i.apa, %bb.ff ], [ 0, %bb.fe ] ; 2 uses
  br i1 %i.anc, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  %i.apb = getelementptr inbounds nuw i8, ptr %i.aoq, i64 5
  %i.apc = load i8, ptr %i.apb, align 1, !tbaa !100
  %i.apd = sext i8 %i.apc to i32
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg, %bb.ex
  %.0479.us.1 = phi i8 [ %i.aos, %bb.fh ], [ %i.aos, %bb.fg ], [ 0, %bb.ex ]
  %.1478.us.1 = phi i8 [ %.0477.us.1, %bb.fh ], [ %.0477.us.1, %bb.fg ], [ 0, %bb.ex ]
  %.1476.us.1 = phi i8 [ %.0475.us.1, %bb.fh ], [ %.0475.us.1, %bb.fg ], [ 0, %bb.ex ]
  %.1474.us.1 = phi i8 [ %.0473.us.1, %bb.fh ], [ %.0473.us.1, %bb.fg ], [ 0, %bb.ex ]
  %.1472.us.1 = phi i8 [ %.0471.us.1, %bb.fh ], [ %.0471.us.1, %bb.fg ], [ 0, %bb.ex ]
  %.0470.us.1 = phi i32 [ %i.apd, %bb.fh ], [ 0, %bb.fg ], [ 0, %bb.ex ]
  %i.ape = sext i8 %.1474.us.1 to i32             ; 3 uses
  %i.apf = sext i8 %.1478.us.1 to i32             ; 2 uses
  %i.apg = shl nsw i32 %i.apf, 2                  ; 2 uses
  %i.aph = sub nsw i32 %i.ape, %i.apg             ; 2 uses
  %i.api = sext i8 %.1472.us.1 to i32             ; 3 uses
  %i.apj = sext i8 %.1476.us.1 to i32             ; 3 uses
  %i.apk = shl nsw i32 %i.apj, 2
  %i.apl = sub nsw i32 %i.api, %i.apk             ; 2 uses
  %i.apm = sub nsw i32 %i.ape, %i.apf
  %.tr.us.1 = trunc nsw i32 %i.apm to i16
  %i.apn = shl nsw i16 %.tr.us.1, 1               ; 2 uses
  %i.apo = sub nsw i32 %i.api, %i.apj
  %i.app = sext i8 %.0479.us.1 to i32
  %i.apq = shl nsw i32 %i.app, 2
  %.neg542.us.1 = mul nsw i32 %i.apj, 65531
  %i.apr = add nsw i32 %.neg542.us.1, %i.apq
  %i.aps = add nsw i32 %i.apr, %i.api             ; 2 uses
  %i.apt = trunc i32 %i.aps to i16
  %i.apu = add nsw i32 %i.apl, %i.aph             ; 2 uses
  %i.apv = trunc nsw i32 %i.apu to i16
  %i.apw = sub nsw i32 %i.apl, %i.aph             ; 2 uses
  %i.apx = trunc nsw i32 %i.apw to i16
  %i.apy = trunc nsw i32 %i.apo to i16            ; 2 uses
  %i.apz = add nsw i16 %i.apn, %i.apy             ; 2 uses
  %i.aqa = sub nsw i16 %i.apy, %i.apn             ; 2 uses
  %i.aqb = add nsw i32 %.0470.us.1, %i.apg
end_hunk_6
begin_hunk_7_@_ZN4ncnnL46conv3x3s1_winograd43_transform_input_tile_int8ERKNS_3MatERS0_iiiii:bb.a
  %i.awm = getelementptr inbounds nuw [2 x i8], ptr %i.awi, i64 %i.alk ; 2 uses
  %i.awn = getelementptr inbounds nuw [2 x i8], ptr %i.awi, i64 %i.alm ; 2 uses
  %sext = shl i32 %i.aps, 16
  %i.awo = ashr exact i32 %sext, 14               ; 2 uses
  %i.awp = trunc i32 %i.awo to i16
  %i.awq = sub i16 %i.asv, %i.awp                 ; 2 uses
  %i.awr = shl i16 %i.arh, 2
  %i.aws = sub i16 %i.auj, %i.awr                 ; 2 uses
  %i.awt = sub i16 %i.asv, %i.apt
  %i.awu = shl i16 %i.awt, 1                      ; 2 uses
  %i.awv = sub i16 %i.auj, %i.arh                 ; 2 uses
  %i.aww = shl i16 %i.aof, 2
  %.neg.us = mul i16 %i.arh, -5
  %i.awx = add i16 %.neg.us, %i.aww
  %i.awy = add i16 %i.awx, %i.auj
  store i16 %i.awy, ptr %i.awi, align 2, !tbaa !595
  %i.awz = add i16 %i.aws, %i.awq
  store i16 %i.awz, ptr %i.awj, align 2, !tbaa !595
  %i.axa = sub i16 %i.aws, %i.awq
  store i16 %i.axa, ptr %i.awk, align 2, !tbaa !595
  %i.axb = add i16 %i.awv, %i.awu
  store i16 %i.axb, ptr %i.awl, align 2, !tbaa !595
  %i.axc = sub i16 %i.awv, %i.awu
  store i16 %i.axc, ptr %i.awm, align 2, !tbaa !595
  %.neg541.us = mul i32 %i.asu, 65531
  %i.axd = add i32 %.neg541.us, %i.awo
  %i.axe = trunc i32 %i.axd to i16
  %i.axf = add i16 %i.avx, %i.axe
  store i16 %i.axf, ptr %i.awn, align 2, !tbaa !595
  %i.axg = getelementptr inbounds nuw [2 x i8], ptr %i.awi, i64 %i.alo ; 2 uses
  %i.axh = getelementptr inbounds nuw [2 x i8], ptr %i.awj, i64 %i.alo ; 2 uses
  %i.axi = getelementptr inbounds nuw [2 x i8], ptr %i.awk, i64 %i.alo ; 2 uses
  %i.axj = getelementptr inbounds nuw [2 x i8], ptr %i.awl, i64 %i.alo ; 2 uses
  %i.axk = getelementptr inbounds nuw [2 x i8], ptr %i.awm, i64 %i.alo ; 2 uses
  %i.axl = getelementptr inbounds nuw [2 x i8], ptr %i.awn, i64 %i.alo ; 2 uses
  %i.axm = shl nsw i32 %i.apu, 2                  ; 2 uses
  %i.axn = trunc nsw i32 %i.axm to i16
  %i.axo = sub nsw i16 %i.asx, %i.axn             ; 2 uses
  %i.axp = shl nsw i16 %i.arj, 2
  %i.axq = sub nsw i16 %i.aul, %i.axp             ; 2 uses
  %i.axr = sub nsw i16 %i.asx, %i.apv
  %i.axs = shl nsw i16 %i.axr, 1                  ; 2 uses
  %i.axt = sub nsw i16 %i.aul, %i.arj             ; 2 uses
  %i.axu = shl nsw i16 %i.aoh, 2
  %.neg.us.1 = mul nsw i16 %i.arj, -5
  %i.axv = add nsw i16 %.neg.us.1, %i.axu
  %i.axw = add nsw i16 %i.axv, %i.aul
  store i16 %i.axw, ptr %i.axg, align 2, !tbaa !595
  %i.axx = add nsw i16 %i.axq, %i.axo
  store i16 %i.axx, ptr %i.axh, align 2, !tbaa !595
  %i.axy = sub nsw i16 %i.axq, %i.axo
  store i16 %i.axy, ptr %i.axi, align 2, !tbaa !595
  %i.axz = add nsw i16 %i.axt, %i.axs
  store i16 %i.axz, ptr %i.axj, align 2, !tbaa !595
  %i.aya = sub nsw i16 %i.axt, %i.axs
  store i16 %i.aya, ptr %i.axk, align 2, !tbaa !595
  %.neg541.us.1 = mul nsw i32 %i.asw, 65531
  %i.ayb = add nsw i32 %.neg541.us.1, %i.axm
  %i.ayc = trunc i32 %i.ayb to i16
  %i.ayd = add i16 %i.avz, %i.ayc
  store i16 %i.ayd, ptr %i.axl, align 2, !tbaa !595
  %i.aye = getelementptr inbounds nuw [2 x i8], ptr %i.axg, i64 %i.alo ; 2 uses
  %i.ayf = getelementptr inbounds nuw [2 x i8], ptr %i.axh, i64 %i.alo ; 2 uses
  %i.ayg = getelementptr inbounds nuw [2 x i8], ptr %i.axi, i64 %i.alo ; 2 uses
  %i.ayh = getelementptr inbounds nuw [2 x i8], ptr %i.axj, i64 %i.alo ; 2 uses
  %i.ayi = getelementptr inbounds nuw [2 x i8], ptr %i.axk, i64 %i.alo ; 2 uses
  %i.ayj = getelementptr inbounds nuw [2 x i8], ptr %i.axl, i64 %i.alo ; 2 uses
  %i.ayk = shl nsw i32 %i.apw, 2                  ; 2 uses
  %i.ayl = trunc nsw i32 %i.ayk to i16
  %i.aym = sub nsw i16 %i.asz, %i.ayl             ; 2 uses
  %i.ayn = shl nsw i16 %i.arl, 2
  %i.ayo = sub nsw i16 %i.aun, %i.ayn             ; 2 uses
  %i.ayp = sub nsw i16 %i.asz, %i.apx
  %i.ayq = shl nsw i16 %i.ayp, 1                  ; 2 uses
  %i.ayr = sub nsw i16 %i.aun, %i.arl             ; 2 uses
  %i.ays = shl nsw i16 %i.aoj, 2
  %.neg.us.2 = mul nsw i16 %i.arl, -5
  %i.ayt = add nsw i16 %.neg.us.2, %i.ays
  %i.ayu = add nsw i16 %i.ayt, %i.aun
  store i16 %i.ayu, ptr %i.aye, align 2, !tbaa !595
  %i.ayv = add nsw i16 %i.ayo, %i.aym
  store i16 %i.ayv, ptr %i.ayf, align 2, !tbaa !595
  %i.ayw = sub nsw i16 %i.ayo, %i.aym
  store i16 %i.ayw, ptr %i.ayg, align 2, !tbaa !595
  %i.ayx = add nsw i16 %i.ayr, %i.ayq
  store i16 %i.ayx, ptr %i.ayh, align 2, !tbaa !595
  %i.ayy = sub nsw i16 %i.ayr, %i.ayq
  store i16 %i.ayy, ptr %i.ayi, align 2, !tbaa !595
  %.neg541.us.2 = mul nsw i32 %i.asy, 65531
  %i.ayz = add nsw i32 %.neg541.us.2, %i.ayk
  %i.aza = trunc i32 %i.ayz to i16
  %i.azb = add i16 %i.awb, %i.aza
  store i16 %i.azb, ptr %i.ayj, align 2, !tbaa !595
  %i.azc = getelementptr inbounds nuw [2 x i8], ptr %i.aye, i64 %i.alo ; 2 uses
  %i.azd = getelementptr inbounds nuw [2 x i8], ptr %i.ayf, i64 %i.alo ; 2 uses
  %i.aze = getelementptr inbounds nuw [2 x i8], ptr %i.ayg, i64 %i.alo ; 2 uses
  %i.azf = getelementptr inbounds nuw [2 x i8], ptr %i.ayh, i64 %i.alo ; 2 uses
  %i.azg = getelementptr inbounds nuw [2 x i8], ptr %i.ayi, i64 %i.alo ; 2 uses
  %i.azh = getelementptr inbounds nuw [2 x i8], ptr %i.ayj, i64 %i.alo ; 2 uses
  %i.azi = zext i16 %i.atb to i32
  %i.azj = sext i16 %i.apz to i32
  %i.azk = shl nsw i32 %i.azj, 2                  ; 2 uses
  %i.azl = trunc nsw i32 %i.azk to i16
  %i.azm = sub nsw i16 %i.atb, %i.azl             ; 2 uses
  %i.azn = shl nsw i16 %i.arn, 2
  %i.azo = sub nsw i16 %i.aup, %i.azn             ; 2 uses
  %i.azp = sub nsw i16 %i.atb, %i.apz
  %i.azq = shl nsw i16 %i.azp, 1                  ; 2 uses
  %i.azr = sub nsw i16 %i.aup, %i.arn             ; 2 uses
  %i.azs = shl nsw i16 %i.aol, 2
  %.neg.us.3 = mul nsw i16 %i.arn, -5
  %i.azt = add nsw i16 %.neg.us.3, %i.azs
  %i.azu = add nsw i16 %i.azt, %i.aup
  store i16 %i.azu, ptr %i.azc, align 2, !tbaa !595
  %i.azv = add nsw i16 %i.azo, %i.azm
  store i16 %i.azv, ptr %i.azd, align 2, !tbaa !595
  %i.azw = sub nsw i16 %i.azo, %i.azm
  store i16 %i.azw, ptr %i.aze, align 2, !tbaa !595
  %i.azx = add nsw i16 %i.azr, %i.azq
  store i16 %i.azx, ptr %i.azf, align 2, !tbaa !595
  %i.azy = sub nsw i16 %i.azr, %i.azq
  store i16 %i.azy, ptr %i.azg, align 2, !tbaa !595
  %.neg541.us.3 = mul nuw i32 %i.azi, 65531
  %i.azz = add i32 %.neg541.us.3, %i.azk
  %i.baa = trunc i32 %i.azz to i16
  %i.bab = add i16 %i.awd, %i.baa
  store i16 %i.bab, ptr %i.azh, align 2, !tbaa !595
  %i.bac = getelementptr inbounds nuw [2 x i8], ptr %i.azc, i64 %i.alo ; 2 uses
  %i.bad = getelementptr inbounds nuw [2 x i8], ptr %i.azd, i64 %i.alo ; 2 uses
  %i.bae = getelementptr inbounds nuw [2 x i8], ptr %i.aze, i64 %i.alo ; 2 uses
  %i.baf = getelementptr inbounds nuw [2 x i8], ptr %i.azf, i64 %i.alo ; 2 uses
  %i.bag = getelementptr inbounds nuw [2 x i8], ptr %i.azg, i64 %i.alo ; 2 uses
  %i.bah = getelementptr inbounds nuw [2 x i8], ptr %i.azh, i64 %i.alo ; 2 uses
  %i.bai = zext i16 %i.atc to i32
  %i.baj = sext i16 %i.aqa to i32
  %i.bak = shl nsw i32 %i.baj, 2                  ; 2 uses
  %i.bal = trunc nsw i32 %i.bak to i16
  %i.bam = sub nsw i16 %i.atc, %i.bal             ; 2 uses
  %i.ban = shl nsw i16 %i.aro, 2
  %i.bao = sub nsw i16 %i.auq, %i.ban             ; 2 uses
  %i.bap = sub nsw i16 %i.atc, %i.aqa
  %i.baq = shl nsw i16 %i.bap, 1                  ; 2 uses
  %i.bar = sub nsw i16 %i.auq, %i.aro             ; 2 uses
  %i.bas = shl nsw i16 %i.aom, 2
  %.neg.us.4 = mul nsw i16 %i.aro, -5
  %i.bat = add nsw i16 %.neg.us.4, %i.bas
  %i.bau = add nsw i16 %i.bat, %i.auq
  store i16 %i.bau, ptr %i.bac, align 2, !tbaa !595
  %i.bav = add nsw i16 %i.bao, %i.bam
  store i16 %i.bav, ptr %i.bad, align 2, !tbaa !595
  %i.baw = sub nsw i16 %i.bao, %i.bam
  store i16 %i.baw, ptr %i.bae, align 2, !tbaa !595
  %i.bax = add nsw i16 %i.bar, %i.baq
  store i16 %i.bax, ptr %i.baf, align 2, !tbaa !595
  %i.bay = sub nsw i16 %i.bar, %i.baq
  store i16 %i.bay, ptr %i.bag, align 2, !tbaa !595
  %.neg541.us.4 = mul nuw i32 %i.bai, 65531
  %i.baz = add i32 %.neg541.us.4, %i.bak
  %i.bba = trunc i32 %i.baz to i16
  %i.bbb = add i16 %i.awe, %i.bba
  store i16 %i.bbb, ptr %i.bah, align 2, !tbaa !595
  %i.bbc = getelementptr inbounds nuw [2 x i8], ptr %i.bac, i64 %i.alo
  %i.bbd = getelementptr inbounds nuw [2 x i8], ptr %i.bad, i64 %i.alo
  %i.bbe = getelementptr inbounds nuw [2 x i8], ptr %i.bae, i64 %i.alo
  %i.bbf = getelementptr inbounds nuw [2 x i8], ptr %i.baf, i64 %i.alo
  %i.bbg = getelementptr inbounds nuw [2 x i8], ptr %i.bag, i64 %i.alo
  %i.bbh = getelementptr inbounds nuw [2 x i8], ptr %i.bah, i64 %i.alo
  %sext772 = shl i32 %i.aqc, 16
  %i.bbi = ashr exact i32 %sext772, 14            ; 2 uses
  %i.bbj = trunc i32 %i.bbi to i16
  %i.bbk = sub i16 %i.atf, %i.bbj                 ; 2 uses
  %i.bbl = shl i16 %i.arr, 2
  %i.bbm = sub i16 %i.aut, %i.bbl                 ; 2 uses
  %i.bbn = sub i16 %i.atf, %i.aqd
  %i.bbo = shl i16 %i.bbn, 1                      ; 2 uses
  %i.bbp = sub i16 %i.aut, %i.arr                 ; 2 uses
  %i.bbq = shl i16 %i.aop, 2
  %.neg.us.5 = mul i16 %i.arr, -5
  %i.bbr = add i16 %.neg.us.5, %i.bbq
  %i.bbs = add i16 %i.bbr, %i.aut
  store i16 %i.bbs, ptr %i.bbc, align 2, !tbaa !595
  %i.bbt = add i16 %i.bbm, %i.bbk
  store i16 %i.bbt, ptr %i.bbd, align 2, !tbaa !595
  %i.bbu = sub i16 %i.bbm, %i.bbk
  store i16 %i.bbu, ptr %i.bbe, align 2, !tbaa !595
  %i.bbv = add i16 %i.bbp, %i.bbo
  store i16 %i.bbv, ptr %i.bbf, align 2, !tbaa !595
  %i.bbw = sub i16 %i.bbp, %i.bbo
  store i16 %i.bbw, ptr %i.bbg, align 2, !tbaa !595
  %.neg541.us.5 = mul i32 %i.ate, 65531
  %i.bbx = add i32 %.neg541.us.5, %i.bbi
  %i.bby = trunc i32 %i.bbx to i16
  %i.bbz = add i16 %i.awh, %i.bby
  store i16 %i.bbz, ptr %i.bbh, align 2, !tbaa !595
  %indvars.iv.next724 = add nuw nsw i64 %indvars.iv723, 1 ; 2 uses
  %exitcond727.not = icmp eq i64 %indvars.iv.next724, %wide.trip.count726
  br i1 %exitcond727.not, label %._crit_edge.us683, label %_ZN4ncnn3MatD2Ev.exit.us, !llvm.loop !2025

._crit_edge.us683:                                ; preds = %bb.ha
  %indvars.iv.next729 = add nsw i64 %indvars.iv728, 1 ; 2 uses
  %7 = icmp slt i64 %indvars.iv.next729, %i.amb
  br i1 %7, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, label %._crit_edge680, !llvm.loop !2026

._crit_edge680:                                   ; preds = %._crit_edge.us683, %.lr.ph679, %._crit_edge657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %i.h = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i32 %i.j, ptr %i.e, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store i32 1, ptr %i.f, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store i32 0, ptr %i.g, align 4, !tbaa !67
  %i.k = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f, i32 1, i32 1)
  %i.l = load i32, ptr %i.e, align 4, !tbaa !67
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 2 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !67
  %i.n = load i32, ptr %i.d, align 4, !tbaa !67   ; 2 uses
  %.not66 = icmp sgt i32 %i.n, %i.m
  br i1 %.not66, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 52
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 52
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.067 = phi i32 [ %i.n, %.lr.ph ], [ %i.dv, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.at = load i32, ptr %3, align 4, !tbaa !67    ; 2 uses
  %i.au = sdiv i32 %.067, %i.at
  %i.av = srem i32 %.067, %i.at
  %i.aw = load i32, ptr %4, align 4, !tbaa !67    ; 2 uses
  %i.ax = mul nsw i32 %i.aw, %i.au                ; 3 uses
  %i.ay = load i32, ptr %5, align 4, !tbaa !67    ; 2 uses
  %i.az = mul nsw i32 %i.ay, %i.av                ; 3 uses
  %i.ba = load i32, ptr %6, align 4, !tbaa !67
  %i.bb = sub nsw i32 %i.ba, %i.ax
  %.sroa.speculated63 = call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.bb) ; 2 uses
  %i.bc = load i32, ptr %7, align 4, !tbaa !67
  %i.bd = sub nsw i32 %i.bc, %i.az
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ay, i32 %i.bd) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.be = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %bb.d unwind label %bb.s

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !2027)
  %i.bf = load i32, ptr %i.o, align 4, !tbaa !75, !noalias !2027 ; 2 uses
  %i.bg = load i32, ptr %i.p, align 8, !tbaa !76, !noalias !2027 ; 2 uses
  %i.bh = load i32, ptr %i.q, align 4, !tbaa !226, !noalias !2027
  %i.bi = load ptr, ptr %8, align 8, !tbaa !18, !noalias !2027
  %i.bj = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !2027
  %i.bk = sext i32 %i.be to i64
  %i.bl = mul i64 %i.bj, %i.bk
  %i.bm = load i64, ptr %i.s, align 8, !tbaa !65, !noalias !2027 ; 4 uses
  %i.bn = mul i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bn
  %i.bp = load i32, ptr %i.t, align 8, !tbaa !66, !noalias !2027
  %i.bq = load ptr, ptr %i.u, align 8, !tbaa !17, !noalias !2027
  store ptr %i.bo, ptr %11, align 8, !tbaa !18, !alias.scope !2027
  store ptr null, ptr %i.v, align 8, !tbaa !11, !alias.scope !2027
  store i64 %i.bm, ptr %i.w, align 8, !tbaa !65, !alias.scope !2027
  store i32 %i.bp, ptr %i.x, align 8, !tbaa !66, !alias.scope !2027
  store ptr %i.bq, ptr %i.y, align 8, !tbaa !17, !alias.scope !2027
  store i32 %i.bf, ptr %i.aa, align 4, !tbaa !75, !alias.scope !2027
  store i32 %i.bg, ptr %i.ab, align 8, !tbaa !76, !alias.scope !2027
  store i32 1, ptr %i.ac, align 4, !tbaa !226, !alias.scope !2027
  store i32 %i.bh, ptr %i.ad, align 8, !tbaa !68, !alias.scope !2027
  %i.br = sext i32 %i.bf to i64
  %i.bs = sext i32 %i.bg to i64
  %i.bt = mul nsw i64 %i.bs, %i.br                ; 2 uses
  %i.bu = mul i64 %i.bm, %i.bt
  %i.bv = add i64 %i.bu, 15
  %i.bw = and i64 %i.bv, -16
  %i.bx = udiv i64 %i.bw, %i.bm
  store i64 %i.bx, ptr %i.ae, align 8, !tbaa !20, !alias.scope !2027
  %i.by = load i32, ptr %i.af, align 8, !tbaa !225, !noalias !2027 ; 2 uses
  %i.bz = add nsw i32 %i.by, -1
  store i32 %i.bz, ptr %i.z, align 8, !tbaa !225, !alias.scope !2027
  %i.ca = icmp eq i32 %i.by, 4
  br i1 %i.ca, label %bb.e, label %_ZN4ncnn3Mat7channelEi.exit48

bb.e:                                             ; preds = %bb.d
  store i64 %i.bt, ptr %i.ae, align 8, !tbaa !20, !alias.scope !2027
  br label %_ZN4ncnn3Mat7channelEi.exit48

_ZN4ncnn3Mat7channelEi.exit48:                    ; preds = %bb.e, %bb.d
  call fastcc void @_ZN4ncnnL46conv3x3s1_winograd43_transform_input_tile_int8ERKNS_3MatERS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.ax, i32 noundef %.sroa.speculated63, i32 noundef %i.az, i32 noundef %.sroa.speculated, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.cb = load i32, ptr %4, align 4, !tbaa !67
  %i.cc = sdiv i32 %i.ax, %i.cb
  %i.cd = load ptr, ptr %10, align 8, !tbaa !18, !noalias !2030
  %i.ce = load i64, ptr %i.ai, align 8, !tbaa !20, !noalias !2030
  %i.cf = sext i32 %i.cc to i64
  %i.cg = mul i64 %i.ce, %i.cf
  %i.ch = load i64, ptr %i.aj, align 8, !tbaa !65, !noalias !2030 ; 3 uses
  %i.ci = mul i64 %i.cg, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ci
  %i.ck = load i32, ptr %i.ak, align 8, !tbaa !66, !noalias !2030
  %i.cl = load ptr, ptr %i.al, align 8, !tbaa !17, !noalias !2030
  %i.cm = load i32, ptr %5, align 4, !tbaa !67
  %i.cn = sdiv i32 %i.az, %i.cm
  %i.co = sext i32 %i.cn to i64
  store ptr null, ptr %i.am, align 8, !tbaa !11
  store i64 %i.ch, ptr %i.an, align 8, !tbaa !65
  store i32 %i.ck, ptr %i.ao, align 8, !tbaa !66
  store ptr %i.cl, ptr %i.ap, align 8, !tbaa !17
  %i.cp = load <2 x i32>, ptr %i.ag, align 4, !tbaa !67, !noalias !2030
  %i.cq = load i32, ptr %i.ah, align 8, !tbaa !76, !noalias !2030
  %i.cr = load i32, ptr %i.ag, align 4, !tbaa !75, !noalias !2030
  %i.cs = sext i32 %i.cr to i64
  %i.ct = sext i32 %i.cq to i64
  %i.cu = mul nsw i64 %i.ct, %i.cs                ; 2 uses
  %i.cv = mul i64 %i.ch, %i.cu
  %i.cw = mul i64 %i.cv, %i.co
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cw
  store ptr %i.cx, ptr %12, align 8, !tbaa !18
  %i.cy = shufflevector <2 x i32> %i.cp, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.cz = shufflevector <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, <4 x i32> %i.cy, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i32> %i.cz, ptr %i.aq, align 8, !tbaa !67
  store i32 1, ptr %i.ar, align 8, !tbaa !68
  store i64 %i.cu, ptr %i.as, align 8, !tbaa !20, !alias.scope !2033
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.da = call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 36, ptr %i.a, align 4, !tbaa !67
  store i32 %.sroa.speculated63, ptr %i.b, align 4, !tbaa !67
  store i32 %.sroa.speculated, ptr %i.c, align 4, !tbaa !67
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.da, i32 1)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN4ncnnL26transpose_pack_B_tile_int8ERKNS_3MatERS0_iiii.omp_outlined, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %12, ptr nonnull %i.b, ptr nonnull align 8 dereferenceable(72) %11, ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.db = load ptr, ptr %i.am, align 8, !tbaa !11 ; 2 uses
  %.not.i35 = icmp eq ptr %i.db, null
  br i1 %.not.i35, label %_ZN4ncnn3MatD2Ev.exit33, label %bb.f

bb.f:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit48
  %i.dc = atomicrmw add ptr %i.db, i32 -1 acq_rel, align 4
  %i.dd = icmp eq i32 %i.dc, 1
  br i1 %i.dd, label %bb.g, label %_ZN4ncnn3MatD2Ev.exit33

bb.g:                                             ; preds = %bb.f
  %i.de = load ptr, ptr %i.ap, align 8, !tbaa !17 ; 3 uses
  %.not3.i36 = icmp eq ptr %i.de, null
end_hunk_7
begin_hunk_8_@_ZN4ncnnL46conv3x3s1_winograd23_transform_input_tile_int8ERKNS_3MatERS0_iiiii:bb.a
  br i1 %i.nk, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sf, i64 2
  %i.sr = load i8, ptr %i.sq, align 1, !tbaa !100
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sh, i64 2
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !100
  %i.su = sext i8 %i.sr to i32
  %i.sv = sext i8 %i.st to i32
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.0303.us.3 = phi i32 [ %i.su, %bb.cc ], [ 0, %bb.cb ]
  %.0301.us.3 = phi i32 [ %i.sv, %bb.cc ], [ 0, %bb.cb ]
  br i1 %i.nm, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sf, i64 3
  %i.sx = load i8, ptr %i.sw, align 1, !tbaa !100
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sh, i64 3
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !100
  %i.ta = sext i8 %i.sx to i32
  %i.tb = sext i8 %i.sz to i32
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.0299.us.3 = phi i32 [ %i.ta, %bb.ce ], [ 0, %bb.cd ]
  %.0297.us.3 = phi i32 [ %i.tb, %bb.ce ], [ 0, %bb.cd ]
  %i.tc = sext i8 %i.si to i32
  %i.td = sext i8 %i.sj to i32
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.by
  %.0310.us.3 = phi i32 [ %i.tc, %bb.cf ], [ 0, %bb.by ]
  %.0309.us.3 = phi i32 [ %i.td, %bb.cf ], [ 0, %bb.by ]
  %.1308.us.3 = phi i32 [ %.0307.us.3, %bb.cf ], [ 0, %bb.by ] ; 3 uses
  %.1306.us.3 = phi i32 [ %.0305.us.3, %bb.cf ], [ 0, %bb.by ] ; 3 uses
  %.1304.us.3 = phi i32 [ %.0303.us.3, %bb.cf ], [ 0, %bb.by ] ; 3 uses
  %.1302.us.3 = phi i32 [ %.0301.us.3, %bb.cf ], [ 0, %bb.by ] ; 3 uses
  %.1300.us.3 = phi i32 [ %.0299.us.3, %bb.cf ], [ 0, %bb.by ]
  %.1298.us.3 = phi i32 [ %.0297.us.3, %bb.cf ], [ 0, %bb.by ]
  %i.te = sub nsw i32 %.0310.us.3, %.1304.us.3
  %i.tf = trunc nsw i32 %i.te to i16
  %i.tg = sub nsw i32 %.0309.us.3, %.1302.us.3
  %i.th = trunc nsw i32 %i.tg to i16
  %i.ti = add nsw i32 %.1304.us.3, %.1308.us.3
  %i.tj = trunc nsw i32 %i.ti to i16
  %i.tk = add nsw i32 %.1302.us.3, %.1306.us.3
  %i.tl = trunc nsw i32 %i.tk to i16
  %i.tm = sub nsw i32 %.1304.us.3, %.1308.us.3
  %i.tn = trunc nsw i32 %i.tm to i16
  %i.to = sub nsw i32 %.1302.us.3, %.1306.us.3
  %i.tp = trunc nsw i32 %i.to to i16
  %i.tq = sub nsw i32 %.1300.us.3, %.1308.us.3
  %i.tr = trunc nsw i32 %i.tq to i16
  %i.ts = sub nsw i32 %.1298.us.3, %.1306.us.3
  %i.tt = trunc nsw i32 %i.ts to i16
  %.idx524 = shl nuw nsw i64 %indvars.iv462, 2
  %i.tu = getelementptr inbounds nuw i8, ptr %i.mu, i64 %.idx524 ; 6 uses
  %i.tv = getelementptr inbounds nuw [2 x i8], ptr %i.tu, i64 %i.lu ; 3 uses
  %i.tw = getelementptr inbounds nuw [2 x i8], ptr %i.tu, i64 %i.lw ; 3 uses
  %i.tx = getelementptr inbounds nuw [2 x i8], ptr %i.tu, i64 %i.ly ; 3 uses
  %i.ty = sub nsw i16 %i.om, %i.rq
  store i16 %i.ty, ptr %i.tu, align 2, !tbaa !595
  %i.tz = sub nsw i16 %i.oo, %i.rs
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tu, i64 2
  store i16 %i.tz, ptr %i.ua, align 2, !tbaa !595
  %i.ub = add nsw i16 %i.rq, %i.qb
  store i16 %i.ub, ptr %i.tv, align 2, !tbaa !595
  %i.uc = add nsw i16 %i.rs, %i.qd
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tv, i64 2
  store i16 %i.uc, ptr %i.ud, align 2, !tbaa !595
  %i.ue = sub nsw i16 %i.rq, %i.qb
  store i16 %i.ue, ptr %i.tw, align 2, !tbaa !595
  %i.uf = sub nsw i16 %i.rs, %i.qd
  %i.ug = getelementptr inbounds nuw i8, ptr %i.tw, i64 2
  store i16 %i.uf, ptr %i.ug, align 2, !tbaa !595
  %i.uh = sub nsw i16 %i.tf, %i.qb
  store i16 %i.uh, ptr %i.tx, align 2, !tbaa !595
  %i.ui = sub nsw i16 %i.th, %i.qd
  %i.uj = getelementptr inbounds nuw i8, ptr %i.tx, i64 2
  store i16 %i.ui, ptr %i.uj, align 2, !tbaa !595
  %i.uk = getelementptr inbounds nuw [2 x i8], ptr %i.tu, i64 %i.ma ; 3 uses
  %i.ul = getelementptr inbounds nuw [2 x i8], ptr %i.tv, i64 %i.ma ; 3 uses
  %i.um = getelementptr inbounds nuw [2 x i8], ptr %i.tw, i64 %i.ma ; 3 uses
  %i.un = getelementptr inbounds nuw [2 x i8], ptr %i.tx, i64 %i.ma ; 3 uses
  %i.uo = sub nsw i16 %i.oq, %i.ru
  store i16 %i.uo, ptr %i.uk, align 2, !tbaa !595
  %i.up = sub nsw i16 %i.os, %i.rw
  %i.uq = getelementptr inbounds nuw i8, ptr %i.uk, i64 2
  store i16 %i.up, ptr %i.uq, align 2, !tbaa !595
  %i.ur = add nsw i16 %i.ru, %i.qf
  store i16 %i.ur, ptr %i.ul, align 2, !tbaa !595
  %i.us = add nsw i16 %i.rw, %i.qh
  %i.ut = getelementptr inbounds nuw i8, ptr %i.ul, i64 2
  store i16 %i.us, ptr %i.ut, align 2, !tbaa !595
  %i.uu = sub nsw i16 %i.ru, %i.qf
  store i16 %i.uu, ptr %i.um, align 2, !tbaa !595
  %i.uv = sub nsw i16 %i.rw, %i.qh
  %i.uw = getelementptr inbounds nuw i8, ptr %i.um, i64 2
  store i16 %i.uv, ptr %i.uw, align 2, !tbaa !595
  %i.ux = sub nsw i16 %i.tj, %i.qf
  store i16 %i.ux, ptr %i.un, align 2, !tbaa !595
  %i.uy = sub nsw i16 %i.tl, %i.qh
  %i.uz = getelementptr inbounds nuw i8, ptr %i.un, i64 2
  store i16 %i.uy, ptr %i.uz, align 2, !tbaa !595
  %i.va = getelementptr inbounds nuw [2 x i8], ptr %i.uk, i64 %i.ma ; 3 uses
  %i.vb = getelementptr inbounds nuw [2 x i8], ptr %i.ul, i64 %i.ma ; 3 uses
  %i.vc = getelementptr inbounds nuw [2 x i8], ptr %i.um, i64 %i.ma ; 3 uses
  %i.vd = getelementptr inbounds nuw [2 x i8], ptr %i.un, i64 %i.ma ; 3 uses
  %i.ve = sub nsw i16 %i.ou, %i.ry
  store i16 %i.ve, ptr %i.va, align 2, !tbaa !595
  %i.vf = sub nsw i16 %i.ow, %i.sa
  %i.vg = getelementptr inbounds nuw i8, ptr %i.va, i64 2
  store i16 %i.vf, ptr %i.vg, align 2, !tbaa !595
  %i.vh = add nsw i16 %i.ry, %i.qj
  store i16 %i.vh, ptr %i.vb, align 2, !tbaa !595
  %i.vi = add nsw i16 %i.sa, %i.ql
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vb, i64 2
  store i16 %i.vi, ptr %i.vj, align 2, !tbaa !595
  %i.vk = sub nsw i16 %i.ry, %i.qj
  store i16 %i.vk, ptr %i.vc, align 2, !tbaa !595
  %i.vl = sub nsw i16 %i.sa, %i.ql
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vc, i64 2
  store i16 %i.vl, ptr %i.vm, align 2, !tbaa !595
  %i.vn = sub nsw i16 %i.tn, %i.qj
  store i16 %i.vn, ptr %i.vd, align 2, !tbaa !595
  %i.vo = sub nsw i16 %i.tp, %i.ql
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vd, i64 2
  store i16 %i.vo, ptr %i.vp, align 2, !tbaa !595
  %i.vq = getelementptr inbounds nuw [2 x i8], ptr %i.va, i64 %i.ma ; 2 uses
  %i.vr = getelementptr inbounds nuw [2 x i8], ptr %i.vb, i64 %i.ma ; 2 uses
  %i.vs = getelementptr inbounds nuw [2 x i8], ptr %i.vc, i64 %i.ma ; 2 uses
  %i.vt = getelementptr inbounds nuw [2 x i8], ptr %i.vd, i64 %i.ma ; 2 uses
  %i.vu = sub nsw i16 %i.oy, %i.sc
  store i16 %i.vu, ptr %i.vq, align 2, !tbaa !595
  %i.vv = sub nsw i16 %i.pa, %i.se
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vq, i64 2
  store i16 %i.vv, ptr %i.vw, align 2, !tbaa !595
  %i.vx = add nsw i16 %i.sc, %i.qn
  store i16 %i.vx, ptr %i.vr, align 2, !tbaa !595
  %i.vy = add nsw i16 %i.se, %i.qp
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vr, i64 2
  store i16 %i.vy, ptr %i.vz, align 2, !tbaa !595
  %i.wa = sub nsw i16 %i.sc, %i.qn
  store i16 %i.wa, ptr %i.vs, align 2, !tbaa !595
  %i.wb = sub nsw i16 %i.se, %i.qp
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vs, i64 2
  store i16 %i.wb, ptr %i.wc, align 2, !tbaa !595
  %i.wd = sub nsw i16 %i.tr, %i.qn
  store i16 %i.wd, ptr %i.vt, align 2, !tbaa !595
  %i.we = sub nsw i16 %i.tt, %i.qp
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vt, i64 2
  store i16 %i.we, ptr %i.wf, align 2, !tbaa !595
  %indvars.iv.next463 = add nuw nsw i64 %indvars.iv462, 1 ; 2 uses
  %exitcond466.not = icmp eq i64 %indvars.iv.next463, %wide.trip.count465
  br i1 %exitcond466.not, label %._crit_edge.us421, label %_ZN4ncnn3MatD2Ev.exit327.us, !llvm.loop !2220

._crit_edge.us421:                                ; preds = %bb.cg
  %indvars.iv.next468 = add nuw nsw i64 %indvars.iv467, 1 ; 2 uses
  %exitcond471.not = icmp eq i64 %indvars.iv.next468, %wide.trip.count470
  br i1 %exitcond471.not, label %._crit_edge416, label %_ZN4ncnn3MatD2Ev.exit327.lr.ph.us, !llvm.loop !2221

._crit_edge416:                                   ; preds = %._crit_edge.us421, %.lr.ph415, %._crit_edge403
  %i.wg = shl nsw i32 %i.lm, 1
  %i.wh = add nsw i32 %i.wg, %i.lk                ; 2 uses
  %i.wi = icmp slt i32 %i.wh, %5
  br i1 %i.wi, label %.lr.ph436, label %._crit_edge437

.lr.ph436:                                        ; preds = %._crit_edge416
  %i.wj = load i32, ptr %i.b, align 4, !tbaa !67  ; 7 uses
  %i.wk = icmp sgt i32 %i.wj, 0
  %i.wl = load i32, ptr %i.h, align 4             ; 2 uses
  %i.wm = load i32, ptr %i.d, align 4
  %i.wn = sext i32 %i.wm to i64                   ; 3 uses
  %factor.op.mul438 = shl i32 %i.wj, 4
  %i.wo = sext i32 %i.wj to i64
  %i.wp = shl nsw i32 %i.wj, 1
  %i.wq = sext i32 %i.wp to i64
  %i.wr = mul nsw i32 %i.wj, 3
  %i.ws = sext i32 %i.wr to i64
  %i.wt = shl nsw i32 %i.wj, 2
  %i.wu = sext i32 %i.wt to i64                   ; 12 uses
  br i1 %i.wk, label %.lr.ph436.split.us, label %._crit_edge437

.lr.ph436.split.us:                               ; preds = %.lr.ph436
  %i.wv = load i32, ptr %i.e, align 4             ; 2 uses
  %i.ww = load i32, ptr %i.c, align 4
  %i.wx = load i32, ptr %i.a, align 4
  %i.wy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.wz = load i32, ptr %i.k, align 4, !tbaa !75, !noalias !2222
  %i.xa = load ptr, ptr %0, align 8, !tbaa !18, !noalias !2222
  %i.xb = load i64, ptr %i.q, align 8, !tbaa !20, !noalias !2222
  %i.xc = load i64, ptr %i.wy, align 8, !tbaa !65, !noalias !2222 ; 2 uses
  %factor.op.mul441 = mul i64 %i.xb, %i.xc
  %i.xd = sext i32 %i.wz to i64
  %factor.op.mul432.us = mul i64 %i.xc, %i.xd
  %i.xe = load ptr, ptr %1, align 8, !tbaa !18
  %i.xf = sext i32 %i.wv to i64                   ; 3 uses
  %i.xg = sext i32 %i.wh to i64
  %i.xh = sext i32 %5 to i64
  %i.xi = sext i32 %i.ww to i64
  %wide.trip.count483 = zext nneg i32 %i.wj to i64
  %invariant.op530 = add nsw i64 %i.xf, -1
  %invariant.op531 = add nsw i64 %i.xf, -2
  %invariant.op532 = add nsw i64 %i.xf, -3
  br label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us

_ZN4ncnn3MatD2Ev.exit.lr.ph.us:                   ; preds = %._crit_edge.us440, %.lr.ph436.split.us
  %indvars.iv485 = phi i64 [ %indvars.iv.next486, %._crit_edge.us440 ], [ %i.xg, %.lr.ph436.split.us ] ; 3 uses
  %i.xj = add nsw i64 %indvars.iv485, %i.xi
  %.reass442 = mul i64 %factor.op.mul441, %i.xj
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xa, i64 %.reass442
  %i.xl = trunc nsw i64 %indvars.iv485 to i32
  %.reass439.us = mul i32 %factor.op.mul438, %i.xl
  %i.xm = sext i32 %.reass439.us to i64
  %i.xn = getelementptr inbounds [2 x i8], ptr %i.xe, i64 %i.xm
  br label %_ZN4ncnn3MatD2Ev.exit.us

_ZN4ncnn3MatD2Ev.exit.us:                         ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, %bb.di
  %indvars.iv480 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit.lr.ph.us ], [ %indvars.iv.next481, %bb.di ] ; 3 uses
  %i.xo = trunc i64 %indvars.iv480 to i32
  %i.xp = add i32 %i.wx, %i.xo                    ; 2 uses
  %i.xq = sdiv i32 %i.xp, %i.wl
  %i.xr = srem i32 %i.xp, %i.wl
  %i.xs = shl nsw i32 %i.xq, 1                    ; 2 uses
  %i.xt = sext i32 %i.xs to i64                   ; 4 uses
  %.reass433.us = mul i64 %factor.op.mul432.us, %i.xt
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xk, i64 %.reass433.us
  %i.xv = shl nsw i32 %i.xr, 1                    ; 4 uses
  %i.xw = sext i32 %i.xv to i64
  %i.xx = getelementptr inbounds i8, ptr %i.xu, i64 %i.xw ; 5 uses
  %i.xy = or disjoint i32 %i.xv, 1
  %i.xz = load i32, ptr %i.d, align 4             ; 3 uses
  %i.ya = icmp slt i32 %i.xy, %i.xz               ; 4 uses
  %i.yb = add nsw i32 %i.xv, 2
  %i.yc = icmp slt i32 %i.yb, %i.xz               ; 4 uses
  %i.yd = add nsw i32 %i.xv, 3
  %i.ye = icmp slt i32 %i.yd, %i.xz               ; 4 uses
  %i.yf = icmp slt i32 %i.xs, %i.wv
  br i1 %i.yf, label %bb.ch, label %bb.cn

bb.ch:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.us
  %i.yg = load i8, ptr %i.xx, align 1, !tbaa !100 ; 2 uses
  br i1 %i.ya, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.yh = getelementptr inbounds nuw i8, ptr %i.xx, i64 1
  %i.yi = load i8, ptr %i.yh, align 1, !tbaa !100
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.0274.us = phi i8 [ %i.yi, %bb.ci ], [ 0, %bb.ch ] ; 2 uses
  br i1 %i.yc, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.yj = getelementptr inbounds nuw i8, ptr %i.xx, i64 2
  %i.yk = load i8, ptr %i.yj, align 1, !tbaa !100
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.0273.us = phi i8 [ %i.yk, %bb.ck ], [ 0, %bb.cj ] ; 2 uses
  br i1 %i.ye, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.yl = getelementptr inbounds nuw i8, ptr %i.xx, i64 3
  %i.ym = load i8, ptr %i.yl, align 1, !tbaa !100
  %i.yn = sext i8 %i.ym to i32
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %_ZN4ncnn3MatD2Ev.exit.us
  %.0276.us = phi i8 [ %i.yg, %bb.cm ], [ %i.yg, %bb.cl ], [ 0, %_ZN4ncnn3MatD2Ev.exit.us ]
  %.1275.us = phi i8 [ %.0274.us, %bb.cm ], [ %.0274.us, %bb.cl ], [ 0, %_ZN4ncnn3MatD2Ev.exit.us ]
  %.1.us = phi i8 [ %.0273.us, %bb.cm ], [ %.0273.us, %bb.cl ], [ 0, %_ZN4ncnn3MatD2Ev.exit.us ]
  %.0272.us = phi i32 [ %i.yn, %bb.cm ], [ 0, %bb.cl ], [ 0, %_ZN4ncnn3MatD2Ev.exit.us ]
  %i.yo = sext i8 %.0276.us to i32
  %i.yp = sext i8 %.1.us to i32                   ; 3 uses
  %i.yq = sub nsw i32 %i.yo, %i.yp
  %i.yr = trunc nsw i32 %i.yq to i16
  %i.ys = sext i8 %.1275.us to i32                ; 3 uses
  %i.yt = add nsw i32 %i.yp, %i.ys
  %i.yu = trunc nsw i32 %i.yt to i16
  %i.yv = sub nsw i32 %i.yp, %i.ys
  %i.yw = trunc nsw i32 %i.yv to i16
  %i.yx = sub nsw i32 %.0272.us, %i.ys
  %i.yy = trunc nsw i32 %i.yx to i16
  %i.yz = getelementptr inbounds i8, ptr %i.xx, i64 %i.wn ; 5 uses
  %i.za = icmp sgt i64 %invariant.op530, %i.xt
  br i1 %i.za, label %bb.co, label %bb.cu

bb.co:                                            ; preds = %bb.cn
  %i.zb = load i8, ptr %i.yz, align 1, !tbaa !100 ; 2 uses
  br i1 %i.ya, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yz, i64 1
  %i.zd = load i8, ptr %i.zc, align 1, !tbaa !100
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.0274.us.1 = phi i8 [ %i.zd, %bb.cp ], [ 0, %bb.co ] ; 2 uses
  br i1 %i.yc, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yz, i64 2
  %i.zf = load i8, ptr %i.ze, align 1, !tbaa !100
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.0273.us.1 = phi i8 [ %i.zf, %bb.cr ], [ 0, %bb.cq ] ; 2 uses
  br i1 %i.ye, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.zg = getelementptr inbounds nuw i8, ptr %i.yz, i64 3
  %i.zh = load i8, ptr %i.zg, align 1, !tbaa !100
  %i.zi = sext i8 %i.zh to i32
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs, %bb.cn
  %.0276.us.1 = phi i8 [ %i.zb, %bb.ct ], [ %i.zb, %bb.cs ], [ 0, %bb.cn ]
  %.1275.us.1 = phi i8 [ %.0274.us.1, %bb.ct ], [ %.0274.us.1, %bb.cs ], [ 0, %bb.cn ]
  %.1.us.1 = phi i8 [ %.0273.us.1, %bb.ct ], [ %.0273.us.1, %bb.cs ], [ 0, %bb.cn ]
  %.0272.us.1 = phi i32 [ %i.zi, %bb.ct ], [ 0, %bb.cs ], [ 0, %bb.cn ]
  %i.zj = sext i8 %.0276.us.1 to i32
  %i.zk = sext i8 %.1.us.1 to i32                 ; 3 uses
  %i.zl = sub nsw i32 %i.zj, %i.zk
  %i.zm = trunc nsw i32 %i.zl to i16              ; 3 uses
  %i.zn = sext i8 %.1275.us.1 to i32              ; 3 uses
  %i.zo = add nsw i32 %i.zk, %i.zn
  %i.zp = trunc nsw i32 %i.zo to i16              ; 3 uses
  %i.zq = sub nsw i32 %i.zk, %i.zn
  %i.zr = trunc nsw i32 %i.zq to i16              ; 3 uses
  %i.zs = sub nsw i32 %.0272.us.1, %i.zn
  %i.zt = trunc nsw i32 %i.zs to i16              ; 3 uses
  %i.zu = getelementptr inbounds i8, ptr %i.yz, i64 %i.wn ; 5 uses
  %i.zv = icmp sgt i64 %invariant.op531, %i.xt
  br i1 %i.zv, label %bb.cv, label %bb.db

bb.cv:                                            ; preds = %bb.cu
  %i.zw = load i8, ptr %i.zu, align 1, !tbaa !100 ; 2 uses
  br i1 %i.ya, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zu, i64 1
  %i.zy = load i8, ptr %i.zx, align 1, !tbaa !100
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.0274.us.2 = phi i8 [ %i.zy, %bb.cw ], [ 0, %bb.cv ] ; 2 uses
  br i1 %i.yc, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zu, i64 2
  %i.aaa = load i8, ptr %i.zz, align 1, !tbaa !100
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.0273.us.2 = phi i8 [ %i.aaa, %bb.cy ], [ 0, %bb.cx ] ; 2 uses
  br i1 %i.ye, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zu, i64 3
  %i.aac = load i8, ptr %i.aab, align 1, !tbaa !100
  %i.aad = sext i8 %i.aac to i32
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %bb.cu
  %.0276.us.2 = phi i8 [ %i.zw, %bb.da ], [ %i.zw, %bb.cz ], [ 0, %bb.cu ]
  %.1275.us.2 = phi i8 [ %.0274.us.2, %bb.da ], [ %.0274.us.2, %bb.cz ], [ 0, %bb.cu ]
  %.1.us.2 = phi i8 [ %.0273.us.2, %bb.da ], [ %.0273.us.2, %bb.cz ], [ 0, %bb.cu ]
  %.0272.us.2 = phi i32 [ %i.aad, %bb.da ], [ 0, %bb.cz ], [ 0, %bb.cu ]
  %i.aae = sext i8 %.0276.us.2 to i32
  %i.aaf = sext i8 %.1.us.2 to i32                ; 3 uses
  %i.aag = sub nsw i32 %i.aae, %i.aaf
  %i.aah = trunc nsw i32 %i.aag to i16            ; 3 uses
  %i.aai = sext i8 %.1275.us.2 to i32             ; 3 uses
  %i.aaj = add nsw i32 %i.aaf, %i.aai
  %i.aak = trunc nsw i32 %i.aaj to i16            ; 3 uses
  %i.aal = sub nsw i32 %i.aaf, %i.aai
  %i.aam = trunc nsw i32 %i.aal to i16            ; 3 uses
  %i.aan = sub nsw i32 %.0272.us.2, %i.aai
  %i.aao = trunc nsw i32 %i.aan to i16            ; 3 uses
  %i.aap = getelementptr inbounds i8, ptr %i.zu, i64 %i.wn ; 4 uses
  %i.aaq = icmp sgt i64 %invariant.op532, %i.xt
  br i1 %i.aaq, label %bb.dc, label %bb.di

bb.dc:                                            ; preds = %bb.db
  %i.aar = load i8, ptr %i.aap, align 1, !tbaa !100 ; 2 uses
  br i1 %i.ya, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aap, i64 1
  %i.aat = load i8, ptr %i.aas, align 1, !tbaa !100
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.0274.us.3 = phi i8 [ %i.aat, %bb.dd ], [ 0, %bb.dc ] ; 2 uses
  br i1 %i.yc, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aap, i64 2
  %i.aav = load i8, ptr %i.aau, align 1, !tbaa !100
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %.0273.us.3 = phi i8 [ %i.aav, %bb.df ], [ 0, %bb.de ] ; 2 uses
  br i1 %i.ye, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aap, i64 3
  %i.aax = load i8, ptr %i.aaw, align 1, !tbaa !100
  %i.aay = sext i8 %i.aax to i32
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg, %bb.db
  %.0276.us.3 = phi i8 [ %i.aar, %bb.dh ], [ %i.aar, %bb.dg ], [ 0, %bb.db ]
  %.1275.us.3 = phi i8 [ %.0274.us.3, %bb.dh ], [ %.0274.us.3, %bb.dg ], [ 0, %bb.db ]
  %.1.us.3 = phi i8 [ %.0273.us.3, %bb.dh ], [ %.0273.us.3, %bb.dg ], [ 0, %bb.db ]
  %.0272.us.3 = phi i32 [ %i.aay, %bb.dh ], [ 0, %bb.dg ], [ 0, %bb.db ]
  %i.aaz = sext i8 %.0276.us.3 to i32
  %i.aba = sext i8 %.1.us.3 to i32                ; 3 uses
  %i.abb = sub nsw i32 %i.aaz, %i.aba
  %i.abc = trunc nsw i32 %i.abb to i16
  %i.abd = sext i8 %.1275.us.3 to i32             ; 3 uses
  %i.abe = add nsw i32 %i.aba, %i.abd
  %i.abf = trunc nsw i32 %i.abe to i16
  %i.abg = sub nsw i32 %i.aba, %i.abd
  %i.abh = trunc nsw i32 %i.abg to i16
  %i.abi = sub nsw i32 %.0272.us.3, %i.abd
  %i.abj = trunc nsw i32 %i.abi to i16
  %i.abk = getelementptr inbounds nuw [2 x i8], ptr %i.xn, i64 %indvars.iv480 ; 5 uses
  %i.abl = getelementptr inbounds nuw [2 x i8], ptr %i.abk, i64 %i.wo ; 2 uses
  %i.abm = getelementptr inbounds nuw [2 x i8], ptr %i.abk, i64 %i.wq ; 2 uses
  %i.abn = getelementptr inbounds nuw [2 x i8], ptr %i.abk, i64 %i.ws ; 2 uses
  %i.abo = sub nsw i16 %i.yr, %i.aah
  store i16 %i.abo, ptr %i.abk, align 2, !tbaa !595
  %i.abp = add nsw i16 %i.aah, %i.zm
  store i16 %i.abp, ptr %i.abl, align 2, !tbaa !595
  %i.abq = sub nsw i16 %i.aah, %i.zm
  store i16 %i.abq, ptr %i.abm, align 2, !tbaa !595
  %i.abr = sub nsw i16 %i.abc, %i.zm
  store i16 %i.abr, ptr %i.abn, align 2, !tbaa !595
  %i.abs = getelementptr inbounds nuw [2 x i8], ptr %i.abk, i64 %i.wu ; 2 uses
  %i.abt = getelementptr inbounds nuw [2 x i8], ptr %i.abl, i64 %i.wu ; 2 uses
  %i.abu = getelementptr inbounds nuw [2 x i8], ptr %i.abm, i64 %i.wu ; 2 uses
  %i.abv = getelementptr inbounds nuw [2 x i8], ptr %i.abn, i64 %i.wu ; 2 uses
  %i.abw = sub nsw i16 %i.yu, %i.aak
  store i16 %i.abw, ptr %i.abs, align 2, !tbaa !595
  %i.abx = add nsw i16 %i.aak, %i.zp
  store i16 %i.abx, ptr %i.abt, align 2, !tbaa !595
  %i.aby = sub nsw i16 %i.aak, %i.zp
  store i16 %i.aby, ptr %i.abu, align 2, !tbaa !595
  %i.abz = sub nsw i16 %i.abf, %i.zp
  store i16 %i.abz, ptr %i.abv, align 2, !tbaa !595
  %i.aca = getelementptr inbounds nuw [2 x i8], ptr %i.abs, i64 %i.wu ; 2 uses
  %i.acb = getelementptr inbounds nuw [2 x i8], ptr %i.abt, i64 %i.wu ; 2 uses
  %i.acc = getelementptr inbounds nuw [2 x i8], ptr %i.abu, i64 %i.wu ; 2 uses
  %i.acd = getelementptr inbounds nuw [2 x i8], ptr %i.abv, i64 %i.wu ; 2 uses
  %i.ace = sub nsw i16 %i.yw, %i.aam
  store i16 %i.ace, ptr %i.aca, align 2, !tbaa !595
  %i.acf = add nsw i16 %i.aam, %i.zr
  store i16 %i.acf, ptr %i.acb, align 2, !tbaa !595
  %i.acg = sub nsw i16 %i.aam, %i.zr
  store i16 %i.acg, ptr %i.acc, align 2, !tbaa !595
  %i.ach = sub nsw i16 %i.abh, %i.zr
  store i16 %i.ach, ptr %i.acd, align 2, !tbaa !595
  %i.aci = getelementptr inbounds nuw [2 x i8], ptr %i.aca, i64 %i.wu
  %i.acj = getelementptr inbounds nuw [2 x i8], ptr %i.acb, i64 %i.wu
  %i.ack = getelementptr inbounds nuw [2 x i8], ptr %i.acc, i64 %i.wu
  %i.acl = getelementptr inbounds nuw [2 x i8], ptr %i.acd, i64 %i.wu
  %i.acm = sub nsw i16 %i.yy, %i.aao
  store i16 %i.acm, ptr %i.aci, align 2, !tbaa !595
  %i.acn = add nsw i16 %i.aao, %i.zt
  store i16 %i.acn, ptr %i.acj, align 2, !tbaa !595
  %i.aco = sub nsw i16 %i.aao, %i.zt
  store i16 %i.aco, ptr %i.ack, align 2, !tbaa !595
  %i.acp = sub nsw i16 %i.abj, %i.zt
  store i16 %i.acp, ptr %i.acl, align 2, !tbaa !595
  %indvars.iv.next481 = add nuw nsw i64 %indvars.iv480, 1 ; 2 uses
  %exitcond484.not = icmp eq i64 %indvars.iv.next481, %wide.trip.count483
  br i1 %exitcond484.not, label %._crit_edge.us440, label %_ZN4ncnn3MatD2Ev.exit.us, !llvm.loop !2225

._crit_edge.us440:                                ; preds = %bb.di
  %indvars.iv.next486 = add nsw i64 %indvars.iv485, 1 ; 2 uses
  %7 = icmp slt i64 %indvars.iv.next486, %i.xh
  br i1 %7, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, label %._crit_edge437, !llvm.loop !2226

._crit_edge437:                                   ; preds = %._crit_edge.us440, %.lr.ph436, %._crit_edge416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %i.h = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i32 %i.j, ptr %i.e, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store i32 1, ptr %i.f, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store i32 0, ptr %i.g, align 4, !tbaa !67
  %i.k = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f, i32 1, i32 1)
  %i.l = load i32, ptr %i.e, align 4, !tbaa !67
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 2 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !67
  %i.n = load i32, ptr %i.d, align 4, !tbaa !67   ; 2 uses
  %.not66 = icmp sgt i32 %i.n, %i.m
  br i1 %.not66, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 52
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 52
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.067 = phi i32 [ %i.n, %.lr.ph ], [ %i.dv, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.at = load i32, ptr %3, align 4, !tbaa !67    ; 2 uses
  %i.au = sdiv i32 %.067, %i.at
  %i.av = srem i32 %.067, %i.at
  %i.aw = load i32, ptr %4, align 4, !tbaa !67    ; 2 uses
  %i.ax = mul nsw i32 %i.aw, %i.au                ; 3 uses
  %i.ay = load i32, ptr %5, align 4, !tbaa !67    ; 2 uses
  %i.az = mul nsw i32 %i.ay, %i.av                ; 3 uses
  %i.ba = load i32, ptr %6, align 4, !tbaa !67
  %i.bb = sub nsw i32 %i.ba, %i.ax
  %.sroa.speculated63 = call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.bb) ; 2 uses
  %i.bc = load i32, ptr %7, align 4, !tbaa !67
  %i.bd = sub nsw i32 %i.bc, %i.az
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ay, i32 %i.bd) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.be = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %bb.d unwind label %bb.s

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !2227)
  %i.bf = load i32, ptr %i.o, align 4, !tbaa !75, !noalias !2227 ; 2 uses
  %i.bg = load i32, ptr %i.p, align 8, !tbaa !76, !noalias !2227 ; 2 uses
  %i.bh = load i32, ptr %i.q, align 4, !tbaa !226, !noalias !2227
  %i.bi = load ptr, ptr %8, align 8, !tbaa !18, !noalias !2227
  %i.bj = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !2227
  %i.bk = sext i32 %i.be to i64
  %i.bl = mul i64 %i.bj, %i.bk
  %i.bm = load i64, ptr %i.s, align 8, !tbaa !65, !noalias !2227 ; 4 uses
  %i.bn = mul i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bn
  %i.bp = load i32, ptr %i.t, align 8, !tbaa !66, !noalias !2227
  %i.bq = load ptr, ptr %i.u, align 8, !tbaa !17, !noalias !2227
  store ptr %i.bo, ptr %11, align 8, !tbaa !18, !alias.scope !2227
  store ptr null, ptr %i.v, align 8, !tbaa !11, !alias.scope !2227
  store i64 %i.bm, ptr %i.w, align 8, !tbaa !65, !alias.scope !2227
  store i32 %i.bp, ptr %i.x, align 8, !tbaa !66, !alias.scope !2227
  store ptr %i.bq, ptr %i.y, align 8, !tbaa !17, !alias.scope !2227
  store i32 %i.bf, ptr %i.aa, align 4, !tbaa !75, !alias.scope !2227
  store i32 %i.bg, ptr %i.ab, align 8, !tbaa !76, !alias.scope !2227
  store i32 1, ptr %i.ac, align 4, !tbaa !226, !alias.scope !2227
  store i32 %i.bh, ptr %i.ad, align 8, !tbaa !68, !alias.scope !2227
  %i.br = sext i32 %i.bf to i64
  %i.bs = sext i32 %i.bg to i64
  %i.bt = mul nsw i64 %i.bs, %i.br                ; 2 uses
  %i.bu = mul i64 %i.bm, %i.bt
  %i.bv = add i64 %i.bu, 15
  %i.bw = and i64 %i.bv, -16
  %i.bx = udiv i64 %i.bw, %i.bm
  store i64 %i.bx, ptr %i.ae, align 8, !tbaa !20, !alias.scope !2227
  %i.by = load i32, ptr %i.af, align 8, !tbaa !225, !noalias !2227 ; 2 uses
  %i.bz = add nsw i32 %i.by, -1
  store i32 %i.bz, ptr %i.z, align 8, !tbaa !225, !alias.scope !2227
  %i.ca = icmp eq i32 %i.by, 4
  br i1 %i.ca, label %bb.e, label %_ZN4ncnn3Mat7channelEi.exit48

bb.e:                                             ; preds = %bb.d
  store i64 %i.bt, ptr %i.ae, align 8, !tbaa !20, !alias.scope !2227
  br label %_ZN4ncnn3Mat7channelEi.exit48

_ZN4ncnn3Mat7channelEi.exit48:                    ; preds = %bb.e, %bb.d
  call fastcc void @_ZN4ncnnL46conv3x3s1_winograd23_transform_input_tile_int8ERKNS_3MatERS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.ax, i32 noundef %.sroa.speculated63, i32 noundef %i.az, i32 noundef %.sroa.speculated, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.cb = load i32, ptr %4, align 4, !tbaa !67
  %i.cc = sdiv i32 %i.ax, %i.cb
  %i.cd = load ptr, ptr %10, align 8, !tbaa !18, !noalias !2230
  %i.ce = load i64, ptr %i.ai, align 8, !tbaa !20, !noalias !2230
  %i.cf = sext i32 %i.cc to i64
  %i.cg = mul i64 %i.ce, %i.cf
  %i.ch = load i64, ptr %i.aj, align 8, !tbaa !65, !noalias !2230 ; 3 uses
  %i.ci = mul i64 %i.cg, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ci
  %i.ck = load i32, ptr %i.ak, align 8, !tbaa !66, !noalias !2230
  %i.cl = load ptr, ptr %i.al, align 8, !tbaa !17, !noalias !2230
  %i.cm = load i32, ptr %5, align 4, !tbaa !67
  %i.cn = sdiv i32 %i.az, %i.cm
  %i.co = sext i32 %i.cn to i64
  store ptr null, ptr %i.am, align 8, !tbaa !11
  store i64 %i.ch, ptr %i.an, align 8, !tbaa !65
  store i32 %i.ck, ptr %i.ao, align 8, !tbaa !66
  store ptr %i.cl, ptr %i.ap, align 8, !tbaa !17
  %i.cp = load <2 x i32>, ptr %i.ag, align 4, !tbaa !67, !noalias !2230
  %i.cq = load i32, ptr %i.ah, align 8, !tbaa !76, !noalias !2230
  %i.cr = load i32, ptr %i.ag, align 4, !tbaa !75, !noalias !2230
  %i.cs = sext i32 %i.cr to i64
  %i.ct = sext i32 %i.cq to i64
  %i.cu = mul nsw i64 %i.ct, %i.cs                ; 2 uses
  %i.cv = mul i64 %i.ch, %i.cu
  %i.cw = mul i64 %i.cv, %i.co
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cw
  store ptr %i.cx, ptr %12, align 8, !tbaa !18
  %i.cy = shufflevector <2 x i32> %i.cp, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.cz = shufflevector <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, <4 x i32> %i.cy, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i32> %i.cz, ptr %i.aq, align 8, !tbaa !67
  store i32 1, ptr %i.ar, align 8, !tbaa !68
  store i64 %i.cu, ptr %i.as, align 8, !tbaa !20, !alias.scope !2233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.da = call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 16, ptr %i.a, align 4, !tbaa !67
  store i32 %.sroa.speculated63, ptr %i.b, align 4, !tbaa !67
  store i32 %.sroa.speculated, ptr %i.c, align 4, !tbaa !67
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.da, i32 1)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN4ncnnL26transpose_pack_B_tile_int8ERKNS_3MatERS0_iiii.omp_outlined, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %12, ptr nonnull %i.b, ptr nonnull align 8 dereferenceable(72) %11, ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.db = load ptr, ptr %i.am, align 8, !tbaa !11 ; 2 uses
  %.not.i35 = icmp eq ptr %i.db, null
  br i1 %.not.i35, label %_ZN4ncnn3MatD2Ev.exit33, label %bb.f

bb.f:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit48
  %i.dc = atomicrmw add ptr %i.db, i32 -1 acq_rel, align 4
  %i.dd = icmp eq i32 %i.dc, 1
  br i1 %i.dd, label %bb.g, label %_ZN4ncnn3MatD2Ev.exit33

bb.g:                                             ; preds = %bb.f
  %i.de = load ptr, ptr %i.ap, align 8, !tbaa !17 ; 3 uses
  %.not3.i36 = icmp eq ptr %i.de, null
end_hunk_8
begin_hunk_9_@_ZN4ncnnL26conv3x3s1_winograd63_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE:bb.a
  %i.ht = load ptr, ptr %i.fm, align 8, !tbaa !11 ; 2 uses
  %.not.i145 = icmp eq ptr %i.ht, null
  br i1 %.not.i145, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %.critedge88
  %i.hu = atomicrmw add ptr %i.ht, i32 -1 acq_rel, align 4
  %i.hv = icmp eq i32 %i.hu, 1
  br i1 %i.hv, label %bb.az, label %_ZN4ncnn3MatD2Ev.exit

bb.az:                                            ; preds = %bb.ay
  %i.hw = load ptr, ptr %i.fn, align 8, !tbaa !17 ; 3 uses
  %.not3.i146 = icmp eq ptr %i.hw, null
  %i.hx = load ptr, ptr %11, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i146, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hy = load ptr, ptr %i.hw, align 8, !tbaa !9
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  %i.ia = load ptr, ptr %i.hz, align 8
  invoke void %i.ia(ptr noundef nonnull align 8 dereferenceable(8) %i.hw, ptr noundef %i.hx)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.bd, !inline_history !19

bb.bb:                                            ; preds = %bb.az
  %.not.i149 = icmp eq ptr %i.hx, null
  br i1 %.not.i149, label %_ZN4ncnn3MatD2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @free(ptr noundef nonnull %i.hx) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.bd:                                            ; preds = %bb.ba
  %i.ib = landingpad { ptr, i32 }
          catch ptr null
  %i.ic = extractvalue { ptr, i32 } %i.ib, 0
  call void @__clang_call_terminate(ptr %i.ic) #36
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.ay, %.critedge88, %bb.ba, %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  br label %bb.be

bb.be:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZN4ncnn3MatD2Ev.exit89, %_ZN4ncnn3MatD2Ev.exit92
  %.373 = phi i32 [ %.272, %_ZN4ncnn3MatD2Ev.exit92 ], [ -100, %_ZN4ncnn3MatD2Ev.exit89 ], [ -100, %_ZN4ncnn3MatD2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #12
  br label %_ZNK4ncnn3Mat5emptyEv.exit179.thread

bb.bf:                                            ; preds = %bb.ak, %bb.ab, %_ZN4ncnn3MatD2Ev.exit96
  %.pn83.pn = phi { ptr, i32 } [ %i.gy, %bb.ak ], [ %.pn78.pn.pn.pn, %_ZN4ncnn3MatD2Ev.exit96 ], [ %i.fx, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #12
  %i.id = load ptr, ptr %i.aw, align 8, !tbaa !11 ; 2 uses
  %.not.i137 = icmp eq ptr %i.id, null
  br i1 %.not.i137, label %_ZN4ncnn3MatD2Ev.exit90, label %bb.bm

_ZNK4ncnn3Mat5emptyEv.exit179.thread:             ; preds = %bb.c, %_ZNK4ncnn3Mat5emptyEv.exit179, %bb.be
  %.474 = phi i32 [ %.373, %bb.be ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit179 ], [ -100, %bb.c ]
  %i.ie = load ptr, ptr %i.aw, align 8, !tbaa !11 ; 2 uses
  %.not.i133 = icmp eq ptr %i.ie, null
  br i1 %.not.i133, label %_ZN4ncnn3MatD2Ev.exit91, label %bb.bg

bb.bg:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit179.thread
  %i.if = atomicrmw add ptr %i.ie, i32 -1 acq_rel, align 4
  %i.ig = icmp eq i32 %i.if, 1
  br i1 %i.ig, label %bb.bh, label %_ZN4ncnn3MatD2Ev.exit91

bb.bh:                                            ; preds = %bb.bg
  %i.ih = load ptr, ptr %i.az, align 8, !tbaa !17 ; 3 uses
  %.not3.i134 = icmp eq ptr %i.ih, null
  %i.ii = load ptr, ptr %8, align 8, !tbaa !18    ; 3 uses
  br i1 %.not3.i134, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ij = load ptr, ptr %i.ih, align 8, !tbaa !9
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  %i.il = load ptr, ptr %i.ik, align 8
  invoke void %i.il(ptr noundef nonnull align 8 dereferenceable(8) %i.ih, ptr noundef %i.ii)
          to label %_ZN4ncnn3MatD2Ev.exit91 unwind label %bb.bl, !inline_history !19

bb.bj:                                            ; preds = %bb.bh
  %.not.i154 = icmp eq ptr %i.ii, null
  br i1 %.not.i154, label %_ZN4ncnn3MatD2Ev.exit91, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @free(ptr noundef nonnull %i.ii) #12
  br label %_ZN4ncnn3MatD2Ev.exit91

bb.bl:                                            ; preds = %bb.bi
  %i.im = landingpad { ptr, i32 }
          catch ptr null
  %i.in = extractvalue { ptr, i32 } %i.im, 0
  call void @__clang_call_terminate(ptr %i.in) #36
  unreachable

_ZN4ncnn3MatD2Ev.exit91:                          ; preds = %bb.bg, %_ZNK4ncnn3Mat5emptyEv.exit179.thread, %bb.bi, %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  br label %bb.bs

bb.bm:                                            ; preds = %bb.bf
  %i.io = atomicrmw add ptr %i.id, i32 -1 acq_rel, align 4
  %i.ip = icmp eq i32 %i.io, 1
  br i1 %i.ip, label %bb.bn, label %_ZN4ncnn3MatD2Ev.exit90

bb.bn:                                            ; preds = %bb.bm
  %i.iq = load ptr, ptr %i.az, align 8, !tbaa !17 ; 3 uses
  %.not3.i138 = icmp eq ptr %i.iq, null
  %i.ir = load ptr, ptr %8, align 8, !tbaa !18    ; 3 uses
  br i1 %.not3.i138, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.is = load ptr, ptr %i.iq, align 8, !tbaa !9
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 24
  %i.iu = load ptr, ptr %i.it, align 8
  invoke void %i.iu(ptr noundef nonnull align 8 dereferenceable(8) %i.iq, ptr noundef %i.ir)
          to label %_ZN4ncnn3MatD2Ev.exit90 unwind label %bb.br, !inline_history !19

bb.bp:                                            ; preds = %bb.bn
  %.not.i152 = icmp eq ptr %i.ir, null
  br i1 %.not.i152, label %_ZN4ncnn3MatD2Ev.exit90, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @free(ptr noundef nonnull %i.ir) #12
  br label %_ZN4ncnn3MatD2Ev.exit90

bb.br:                                            ; preds = %bb.bo
  %i.iv = landingpad { ptr, i32 }
          catch ptr null
  %i.iw = extractvalue { ptr, i32 } %i.iv, 0
  call void @__clang_call_terminate(ptr %i.iw) #36
  unreachable

_ZN4ncnn3MatD2Ev.exit90:                          ; preds = %bb.bm, %bb.bf, %bb.bo, %bb.bp, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  resume { ptr, i32 } %.pn83.pn

bb.bs:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit91, %bb.b
  %.575 = phi i32 [ %i.p, %bb.b ], [ %.474, %_ZN4ncnn3MatD2Ev.exit91 ]
  ret i32 %.575
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, ptr noundef nonnull align 8 dereferenceable(72) %11, ptr noundef nonnull align 8 dereferenceable(64) %12) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 20 uses
  %i.e = alloca i64, align 8                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 20 uses
  %i.g = alloca ptr, align 8                      ; 24 uses
  %i.h = alloca ptr, align 8                      ; 8 uses
  %i.i = alloca i32, align 4                      ; 8 uses
  %i.j = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %8, ptr %i.a, align 4, !tbaa !67
  store i32 %9, ptr %i.b, align 4, !tbaa !67
  store i32 %10, ptr %i.c, align 4, !tbaa !67
  %i.k = tail call noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev()
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn35convolution_packed_bf16s_avx512bf16ERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, ptr noundef nonnull align 8 dereferenceable(72) %11, ptr noundef nonnull align 8 dereferenceable(64) %12)
  br label %bb.bk

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 21 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !75
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !66   ; 15 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !68
  %i.r = mul i32 %i.q, %i.o                       ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 21 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !20
  %i.u = sext i32 %i.o to i64
  %i.v = mul i64 %i.t, %i.u
  store i64 %i.v, ptr %i.d, align 8, !tbaa !231
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 4 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !75   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !76   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !66 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !68
  %i.ae = mul nsw i32 %i.ad, %i.ab                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !20
  %i.ah = sext i32 %i.ab to i64
  %i.ai = mul i64 %i.ag, %i.ah
  store i64 %i.ai, ptr %i.e, align 8, !tbaa !231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.aj = mul nsw i32 %5, %4                      ; 4 uses
  store i32 %i.aj, ptr %i.f, align 4, !tbaa !67
  %i.ak = sext i32 %i.aj to i64                   ; 3 uses
  %i.al = icmp slt i32 %i.aj, 0
  br i1 %i.al, label %.noexc2195, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc2195:                                       ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #39
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.c
  %.not.i.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %.noexc2196

.noexc2196:                                       ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.am = shl nuw nsw i64 %i.ak, 2
  %i.an = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #40 ; 5 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ak ; 2 uses
  store i32 0, ptr %i.an, align 4, !tbaa !67
  %i.ap = add nsw i64 %i.ak, -1                   ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc2196
  %i.ar = getelementptr i8, ptr %i.an, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ap, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ar, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !67
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc2196, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.10.0 = phi ptr [ %i.ao, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ao, %.noexc2196 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.03509.0 = phi ptr [ %i.an, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.an, %.noexc2196 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store ptr %.sroa.03509.0, ptr %i.g, align 8, !tbaa !232
  %i.as = mul nsw i32 %i.m, %7
  %i.at = mul nsw i32 %6, %4
  %i.au = sub i32 %i.as, %i.at
  %i.av = icmp sgt i32 %5, 0
  %i.aw = icmp sgt i32 %4, 0
  %or.cond = and i1 %i.av, %i.aw
  br i1 %or.cond, label %.preheader4108.preheader, label %._crit_edge4118.split

.preheader4108.preheader:                         ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.ax = zext nneg i32 %4 to i64                 ; 5 uses
  %min.iters.check = icmp ult i32 %4, 8
  %min.iters.check5940 = icmp ult i32 %4, 64
  %i.ay = and i64 %i.ax, 56
  %n.vec = and i64 %i.ax, 2147483584              ; 5 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %6, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.az = trunc nuw nsw i64 %n.vec to i32
  %i.ba = mul i32 %6, %i.az
  %i.bb = shl <16 x i32> %broadcast.splat, splat (i32 4) ; 5 uses
  %broadcast.splatinsert5941 = insertelement <16 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat5942 = shufflevector <16 x i32> %broadcast.splatinsert5941, <16 x i32> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.bc = mul nsw <16 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %invariant.op = add <16 x i32> %i.bb, %i.bb     ; 2 uses
  %invariant.op6521 = add <16 x i32> %invariant.op, %i.bb ; 2 uses
  %invariant.op6523 = add <16 x i32> %invariant.op6521, %i.bb
  %cmp.n = icmp eq i64 %n.vec, %i.ax
  %min.epilog.iters.check = icmp eq i64 %i.ay, 0
  %n.vec5946 = and i64 %i.ax, 2147483640          ; 4 uses
  %i.bd = trunc nuw nsw i64 %n.vec5946 to i32
  %i.be = mul i32 %6, %i.bd
  %broadcast.splatinsert5947 = insertelement <8 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat5948 = shufflevector <8 x i32> %broadcast.splatinsert5947, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert5951.a = insertelement <8 x i32> poison, i32 %6, i64 0
  %broadcast.splat5952.a = shufflevector <8 x i32> %broadcast.splatinsert5951.a, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bf = mul nsw <8 x i32> %broadcast.splat5952.a, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bg = shl nsw i32 %6, 3
  %broadcast.splatinsert5954 = insertelement <8 x i32> poison, i32 %i.bg, i64 0
  %broadcast.splat5955 = shufflevector <8 x i32> %broadcast.splatinsert5954, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n5960 = icmp eq i64 %n.vec5946, %i.ax
  br label %iter.check

iter.check:                                       ; preds = %.preheader4108.preheader, %._crit_edge
  %.015184117 = phi i32 [ %i.bi, %._crit_edge ], [ 0, %.preheader4108.preheader ] ; 2 uses
  %.015614116 = phi i32 [ %i.cl, %._crit_edge ], [ 0, %.preheader4108.preheader ] ; 5 uses
  %.015704115 = phi i32 [ %i.cm, %._crit_edge ], [ 0, %.preheader4108.preheader ]
  %i.bh = sext i32 %.015184117 to i64             ; 5 uses
  %i.bi = add i32 %4, %.015184117                 ; 2 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check5940, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bj = add nsw i64 %n.vec, %i.bh
  %i.bk = add i32 %.015614116, %i.ba              ; 3 uses
  %broadcast.splatinsert5943 = insertelement <16 x i32> poison, i32 %.015614116, i64 0
  %broadcast.splat5944 = shufflevector <16 x i32> %broadcast.splatinsert5943, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction = add nsw <16 x i32> %broadcast.splat5944, %i.bc
  %invariant.gep6522 = getelementptr [4 x i8], ptr %.sroa.03509.0, i64 %i.bh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i32> [ %induction, %vector.ph ], [ %vec.ind.next.reass, %vector.body ] ; 5 uses
  %step.add = add nsw <16 x i32> %vec.ind, %i.bb
  %step.add.2.reass = add <16 x i32> %vec.ind, %invariant.op
  %step.add.3.reass = add <16 x i32> %vec.ind, %invariant.op6521
  %i.bl = mul nsw <16 x i32> %vec.ind, %broadcast.splat5942
  %i.bm = mul nsw <16 x i32> %step.add, %broadcast.splat5942
  %i.bn = mul nsw <16 x i32> %step.add.2.reass, %broadcast.splat5942
  %i.bo = mul nsw <16 x i32> %step.add.3.reass, %broadcast.splat5942
  %gep = getelementptr [4 x i8], ptr %invariant.gep6522, i64 %index ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.bq = getelementptr inbounds nuw i8, ptr %gep, i64 128
  %i.br = getelementptr inbounds nuw i8, ptr %gep, i64 192
  store <16 x i32> %i.bl, ptr %gep, align 4, !tbaa !67
  store <16 x i32> %i.bm, ptr %i.bp, align 4, !tbaa !67
  store <16 x i32> %i.bn, ptr %i.bq, align 4, !tbaa !67
  store <16 x i32> %i.bo, ptr %i.br, align 4, !tbaa !67
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %vec.ind.next.reass = add <16 x i32> %vec.ind, %invariant.op6523
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !2603

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !216

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val5945 = phi i32 [ %i.bk, %vec.epilog.iter.check ], [ %.015614116, %vector.main.loop.iter.check ]
  %i.bt = add nsw i64 %n.vec5946, %i.bh
  %i.bu = add i32 %.015614116, %i.be              ; 2 uses
  %broadcast.splatinsert5949 = insertelement <8 x i32> poison, i32 %bc.resume.val5945, i64 0
  %broadcast.splat5950 = shufflevector <8 x i32> %broadcast.splatinsert5949, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction5953 = add nsw <8 x i32> %broadcast.splat5950, %i.bf
  %invariant.gep6524 = getelementptr [4 x i8], ptr %.sroa.03509.0, i64 %i.bh
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index5956 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next5958, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind5957 = phi <8 x i32> [ %induction5953, %vec.epilog.ph ], [ %vec.ind.next5959, %vec.epilog.vector.body ] ; 2 uses
  %i.bv = mul nsw <8 x i32> %vec.ind5957, %broadcast.splat5948
  %gep6525 = getelementptr [4 x i8], ptr %invariant.gep6524, i64 %index5956
  store <8 x i32> %i.bv, ptr %gep6525, align 4, !tbaa !67
  %index.next5958 = add nuw i64 %index5956, 8     ; 2 uses
  %vec.ind.next5959 = add nsw <8 x i32> %vec.ind5957, %broadcast.splat5955
  %i.bw = icmp eq i64 %index.next5958, %n.vec5946
  br i1 %i.bw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2604

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n5960, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.bh, %iter.check ], [ %i.bj, %vec.epilog.iter.check ], [ %i.bt, %vec.epilog.middle.block ]
  %.115624112.ph = phi i32 [ %.015614116, %iter.check ], [ %i.bk, %vec.epilog.iter.check ], [ %i.bu, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge4118.split:                            ; preds = %._crit_edge, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  %i.bx = load ptr, ptr %3, align 8, !tbaa !18
  store ptr %i.bx, ptr %i.h, align 8, !tbaa !235
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #12
  %i.by = sdiv i32 %i.ae, 16
  store i32 %i.by, ptr %i.i, align 4, !tbaa !67
  %i.bz = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !44
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.j, i32 %i.ca)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 13, ptr nonnull @_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined, ptr nonnull %i.i, ptr nonnull %0, ptr nonnull %1, ptr nonnull %i.h, ptr nonnull %2, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %i.f, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %11, ptr nonnull %i.e)
  %i.cb = load i32, ptr %i.i, align 4, !tbaa !67
  %i.cc = shl nsw i32 %i.cb, 4                    ; 3 uses
  %i.cd = sub nsw i32 %i.ae, %i.cc                ; 2 uses
  %i.ce = sdiv i32 %i.cd, 8                       ; 3 uses
  store i32 %i.ce, ptr %i.i, align 4, !tbaa !67
  %i.cf = icmp sgt i32 %i.cd, 7
  br i1 %i.cf, label %_ZN4ncnn3MatD2Ev.exit1981.lr.ph, label %._crit_edge4335

_ZN4ncnn3MatD2Ev.exit1981.lr.ph:                  ; preds = %._crit_edge4118.split
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.ck = sext i32 %i.cc to i64
  %wide.trip.count5227 = zext nneg i32 %i.ce to i64
  br label %_ZN4ncnn3MatD2Ev.exit1981

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa5939 = phi i32 [ %i.bu, %vec.epilog.middle.block ], [ %i.bk, %middle.block ], [ %i.cp, %vec.epilog.scalar.ph ]
  %i.cl = add nsw i32 %i.au, %.lcssa5939
  %i.cm = add nuw nsw i32 %.015704115, 1          ; 2 uses
  %exitcond5136.not = icmp eq i32 %i.cm, %5
  br i1 %exitcond5136.not, label %._crit_edge4118.split, label %iter.check, !llvm.loop !2605

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.115624112 = phi i32 [ %i.cp, %vec.epilog.scalar.ph ], [ %.115624112.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.cn = mul nsw i32 %.115624112, %i.o
end_hunk_9
begin_hunk_10_@_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %i.fwe = load float, ptr %i.fwd, align 4, !tbaa !39
  %i.fwf = fcmp fast ogt <2 x float> %i.fwb, zeroinitializer
  %i.fwg = insertelement <2 x float> poison, float %i.fwe, i64 0
  %i.fwh = shufflevector <2 x float> %i.fwg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fwi = select <2 x i1> %i.fwf, <2 x float> splat (float 1.000000e+00), <2 x float> %i.fwh
  %i.fwj = fmul fast <2 x float> %i.fwi, %i.fwb
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2169

_ZL13activation_ssfiRKN4ncnn3MatE.exit2170.thread4008: ; preds = %._crit_edge4716
  %i.fwk = load ptr, ptr %11, align 8, !tbaa !18  ; 2 uses
  %i.fwl = load float, ptr %i.fwk, align 4, !tbaa !39 ; 2 uses
  %i.fwm = getelementptr inbounds nuw i8, ptr %i.fwk, i64 4
  %i.fwn = load float, ptr %i.fwm, align 4, !tbaa !39 ; 4 uses
  %i.fwo = extractelement <2 x float> %i.fwb, i64 0
  %.03785 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.fwo, float %i.fwl) ; 2 uses
  %i.fwp = fcmp fast ogt float %.03785, %i.fwn
  %.137864010 = select i1 %i.fwp, float %i.fwn, float %.03785
  %i.fwq = extractelement <2 x float> %i.fwb, i64 1
  %.03787 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.fwq, float %i.fwl) ; 2 uses
  %i.fwr = fcmp fast ogt float %.03787, %i.fwn
  %i.fws = insertelement <2 x float> poison, float %.137864010, i64 0
  %i.fwt = insertelement <2 x float> %i.fws, float %.03787, i64 1 ; 2 uses
  br i1 %i.fwr, label %bb.ap, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2169

_ZL13activation_ssfiRKN4ncnn3MatE.exit2170.thread4017: ; preds = %._crit_edge4716
  %i.fwu = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.fwb, <2 x float> splat (float f0x42B0C0A5))
  %i.fwv = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fwu, <2 x float> splat (float f0xC2B0C0A5))
  %i.fww = fneg fast <2 x float> %i.fwv
  %i.fwx = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.fww)
  %i.fwy = fadd fast <2 x float> %i.fwx, splat (float 1.000000e+00)
  %i.fwz = fdiv fast <2 x float> splat (float 1.000000e+00), %i.fwy
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2169

_ZL13activation_ssfiRKN4ncnn3MatE.exit2170.thread4020: ; preds = %._crit_edge4716
  %i.fxa = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.fwb)
  %i.fxb = fadd fast <2 x float> %i.fxa, splat (float 1.000000e+00)
  %i.fxc = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.fxb)
  %i.fxd = call fast <2 x float> @llvm.tanh.v2f32(<2 x float> %i.fxc)
  %i.fxe = fmul fast <2 x float> %i.fxd, %i.fwb
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2169

bb.am:                                            ; preds = %._crit_edge4716
  %i.fxf = load ptr, ptr %11, align 8, !tbaa !18  ; 2 uses
  %i.fxg = load float, ptr %i.fxf, align 4, !tbaa !39 ; 5 uses
  %i.fxh = getelementptr inbounds nuw i8, ptr %i.fxf, i64 4
  %i.fxi = load float, ptr %i.fxh, align 4, !tbaa !39 ; 3 uses
  %i.fxj = fneg fast float %i.fxi
  %i.fxk = fdiv fast float %i.fxj, %i.fxg         ; 4 uses
  %i.fxl = extractelement <2 x float> %i.fwb, i64 0 ; 5 uses
  %i.fxm = fcmp fast olt float %i.fxl, %i.fxk
  br i1 %i.fxm, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2170.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fxn = fdiv fast float 1.000000e+00, %i.fxg
  %i.fxo = fadd fast float %i.fxk, %i.fxn
  %i.fxp = fcmp fast ogt float %i.fxl, %i.fxo
  br i1 %i.fxp, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2170.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fxq = fmul fast float %i.fxg, %i.fxl
  %i.fxr = fadd fast float %i.fxq, %i.fxi
  %i.fxs = fmul fast float %i.fxr, %i.fxl
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2170.thread

bb.ap:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit2170.thread4008
  %i.fxt = insertelement <2 x float> %i.fwt, float %i.fwn, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2169

_ZL13activation_ssfiRKN4ncnn3MatE.exit2170.thread: ; preds = %bb.am, %bb.an, %bb.ao
  %.137864004 = phi float [ %i.fxs, %bb.ao ], [ 0.000000e+00, %bb.am ], [ %i.fxl, %bb.an ] ; 2 uses
  %i.fxu = extractelement <2 x float> %i.fwb, i64 1 ; 4 uses
  %i.fxv = fcmp fast olt float %i.fxu, %i.fxk
  %i.fxw = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.137864004, i64 0 ; 2 uses
  br i1 %i.fxv, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2169, label %bb.aq

bb.aq:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit2170.thread
  %i.fxx = fdiv fast float 1.000000e+00, %i.fxg
  %i.fxy = fadd fast float %i.fxk, %i.fxx
  %i.fxz = fcmp fast ogt float %i.fxu, %i.fxy
  %i.fya = insertelement <2 x float> %i.fwb, float %.137864004, i64 0
  br i1 %i.fxz, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2169, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fyb = fmul fast float %i.fxg, %i.fxu
  %i.fyc = fadd fast float %i.fyb, %i.fxi
  %i.fyd = fmul fast float %i.fyc, %i.fxu
  %i.fye = insertelement <2 x float> %i.fxw, float %i.fyd, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2169

_ZL13activation_ssfiRKN4ncnn3MatE.exit2169:       ; preds = %._crit_edge4716, %bb.ar, %bb.aq, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2170.thread4020, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2170.thread4017, %bb.ap, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2170.thread4008, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2170.thread4014, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2170.thread4011, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2170.thread
  %i.fyf = phi <2 x float> [ %i.fxw, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2170.thread ], [ %i.fwc, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2170.thread4011 ], [ %i.fwj, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2170.thread4014 ], [ %i.fxt, %bb.ap ], [ %i.fwt, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2170.thread4008 ], [ %i.fwz, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2170.thread4017 ], [ %i.fxe, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2170.thread4020 ], [ %i.fye, %bb.ar ], [ %i.fya, %bb.aq ], [ %i.fwb, %._crit_edge4716 ]
  %i.fyg = bitcast <2 x float> %i.fyf to <2 x i32>
  %i.fyh = lshr <2 x i32> %i.fyg, splat (i32 16)
  %i.fyi = trunc nuw <2 x i32> %i.fyh to <2 x i16> ; 2 uses
  %i.fyj = extractelement <2 x i16> %i.fyi, i64 0
  store i16 %i.fyj, ptr %.116274726, align 2, !tbaa !595
  %i.fyk = extractelement <2 x i16> %i.fyi, i64 1
  store i16 %i.fyk, ptr %.116254727, align 2, !tbaa !595
  %i.fyl = getelementptr inbounds nuw i8, ptr %.116274726, i64 2 ; 2 uses
  %i.fym = getelementptr inbounds nuw i8, ptr %.116254727, i64 2 ; 2 uses
  %indvars.iv.next5409 = add nuw nsw i64 %indvars.iv5408, 1 ; 2 uses
  %exitcond5412.not = icmp eq i64 %indvars.iv.next5409, %wide.trip.count5411
  br i1 %exitcond5412.not, label %._crit_edge4730, label %bb.ae, !llvm.loop !2736

._crit_edge4901.split:                            ; preds = %._crit_edge4899, %_ZN4ncnn3MatD2Ev.exit1959.lr.ph, %._crit_edge4744.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  %.not.i.i.i = icmp eq ptr %.sroa.03509.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %._crit_edge4901.split
  %i.fyn = ptrtoint ptr %.sroa.10.0 to i64
  %i.fyo = ptrtoint ptr %.sroa.03509.0 to i64
  %i.fyp = sub i64 %i.fyn, %i.fyo
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.03509.0, i64 noundef %i.fyp) #37
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge4901.split, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.bk

_ZN4ncnn3MatD2Ev.exit1959:                        ; preds = %_ZN4ncnn3MatD2Ev.exit1959.lr.ph.split.split, %._crit_edge4899
  %indvars.iv5509 = phi i64 [ %i.drw, %_ZN4ncnn3MatD2Ev.exit1959.lr.ph.split.split ], [ %indvars.iv.next5510, %._crit_edge4899 ] ; 4 uses
  %.reass4903 = mul i64 %factor.op.mul4902, %indvars.iv5509
  %i.fyq = getelementptr inbounds nuw i8, ptr %i.drc, i64 %.reass4903
  %i.fyr = load ptr, ptr %i.h, align 8            ; 2 uses
  %.not1729 = icmp eq ptr %i.fyr, null
  %i.fys = getelementptr inbounds [4 x i8], ptr %i.fyr, i64 %indvars.iv5509
  %i.fyt = trunc nsw i64 %indvars.iv5509 to i32   ; 2 uses
  %i.fyu = sdiv i32 %i.fyt, 16
  %i.fyv = insertelement <4 x i32> poison, i32 %i.fyt, i64 0
  %i.fyw = shufflevector <4 x i32> %i.fyv, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.fyx = srem <4 x i32> %i.fyw, <i32 16, i32 8, i32 4, i32 2> ; 4 uses
  %i.fyy = bitcast <4 x i32> %i.fyx to <16 x i8>
  %.lhs.trunc4027 = extractelement <16 x i8> %i.fyy, i64 0
  %i.fyz = sdiv i8 %.lhs.trunc4027, 8
  %.sext4028 = sext i8 %i.fyz to i32
  %i.fza = bitcast <4 x i32> %i.fyx to <16 x i8>
  %.lhs.trunc4029 = extractelement <16 x i8> %i.fza, i64 4
  %i.fzb = sdiv i8 %.lhs.trunc4029, 4
  %.sext4030 = sext i8 %i.fzb to i32
  %i.fzc = bitcast <4 x i32> %i.fyx to <16 x i8>
  %.lhs.trunc4031 = extractelement <16 x i8> %i.fzc, i64 8
  %i.fzd = sdiv i8 %.lhs.trunc4031, 2
  %.sext4032 = sext i8 %i.fzd to i32
  %i.fze = extractelement <4 x i32> %i.fyx, i64 3
  %i.fzf = add nsw i32 %i.fze, %i.fyu
  %i.fzg = add nsw i32 %i.fzf, %.sext4028
  %i.fzh = add nsw i32 %i.fzg, %.sext4030
  %i.fzi = add nsw i32 %i.fzh, %.sext4032
  %i.fzj = sext i32 %i.fzi to i64
  %i.fzk = load i32, ptr %i.c, align 4
  %.reass4906 = mul i64 %factor.op.mul4905, %i.fzj
  %i.fzl = getelementptr inbounds nuw i8, ptr %i.drs, i64 %.reass4906 ; 2 uses
  br label %.preheader4050

.preheader4050:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit1959, %._crit_edge4889
  %.015574898 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1959 ], [ %i.gad, %._crit_edge4889 ] ; 2 uses
  %.015584897 = phi ptr [ %i.fyq, %_ZN4ncnn3MatD2Ev.exit1959 ], [ %i.igb, %._crit_edge4889 ]
  %i.fzm = load i32, ptr %i.b, align 4
  %i.fzn = mul nsw i32 %i.fzm, %.015574898
  %i.fzo = sext i32 %i.fzn to i64                 ; 5 uses
  %i.fzp = load i32, ptr %i.a, align 4            ; 2 uses
  %factor.op.mul4891 = mul i32 %i.o, %i.fzp       ; 3 uses
  %i.fzq = load i32, ptr %i.f, align 4            ; 8 uses
  %i.fzr = icmp sgt i32 %i.fzq, 0                 ; 2 uses
  %i.fzs = add i32 %i.fzq, -1
  %i.fzt = zext i32 %i.fzs to i64                 ; 2 uses
  %i.fzu = shl nuw nsw i64 %i.fzt, 2
  %i.fzv = shl nuw nsw i64 %i.fzt, 1
  %i.fzw = sext i32 %i.fzp to i64                 ; 2 uses
  %wide.trip.count5488 = zext i32 %i.fzq to i64   ; 11 uses
  %wide.trip.count5498 = zext nneg i32 %i.fzq to i64
  %min.iters.check6128 = icmp ult i32 %i.fzq, 8
  %min.iters.check6130 = icmp ult i32 %i.fzq, 64
  %i.fzx = and i64 %wide.trip.count5488, 56
  %n.vec6132 = and i64 %wide.trip.count5488, 2147483584 ; 5 uses
  %i.fzy = shl nuw nsw i64 %n.vec6132, 2
  %cmp.n6164 = icmp eq i64 %n.vec6132, %wide.trip.count5488
  %min.epilog.iters.check6170 = icmp eq i64 %i.fzx, 0
  %n.vec6172 = and i64 %wide.trip.count5488, 2147483640 ; 4 uses
  %i.fzz = shl nuw nsw i64 %n.vec6172, 2
  %cmp.n6183 = icmp eq i64 %n.vec6172, %wide.trip.count5488
  %min.iters.check6082 = icmp ult i32 %i.fzq, 8
  %min.iters.check6084 = icmp ult i32 %i.fzq, 64
  %i.gaa = and i64 %wide.trip.count5488, 56
  %n.vec6086 = and i64 %wide.trip.count5488, 2147483584 ; 5 uses
  %i.gab = shl nuw nsw i64 %n.vec6086, 1
  %cmp.n6107 = icmp eq i64 %n.vec6086, %wide.trip.count5488
  %min.epilog.iters.check6113 = icmp eq i64 %i.gaa, 0
  %n.vec6115 = and i64 %wide.trip.count5488, 2147483640 ; 4 uses
  %i.gac = shl nuw nsw i64 %n.vec6115, 1
  %cmp.n6124 = icmp eq i64 %n.vec6115, %wide.trip.count5488
  br label %bb.at

._crit_edge4899:                                  ; preds = %._crit_edge4889
  %indvars.iv.next5510 = add nsw i64 %indvars.iv5509, 1 ; 2 uses
  %13 = icmp slt i64 %indvars.iv.next5510, %i.drx
  br i1 %13, label %_ZN4ncnn3MatD2Ev.exit1959, label %._crit_edge4901.split, !llvm.loop !2737

._crit_edge4889:                                  ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %i.gad = add nuw nsw i32 %.015574898, 1         ; 2 uses
  %exitcond5508.not = icmp eq i32 %i.gad, %i.z
  br i1 %exitcond5508.not, label %._crit_edge4899, label %.preheader4050, !llvm.loop !2738

bb.at:                                            ; preds = %.preheader4050, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %indvars.iv5503 = phi i64 [ 0, %.preheader4050 ], [ %indvars.iv.next5504, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 6 uses
  %.115594886 = phi ptr [ %.015584897, %.preheader4050 ], [ %i.igb, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 2 uses
  br i1 %.not1729, label %.noexc1916, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gae = load float, ptr %i.fys, align 4, !tbaa !39
  br label %.noexc1916

.noexc1916:                                       ; preds = %bb.at, %bb.au
  %.01551 = phi nsz float [ %i.gae, %bb.au ], [ 0.000000e+00, %bb.at ]
  br i1 %i.dri, label %.noexc1914.lr.ph, label %._crit_edge4783

.noexc1914.lr.ph:                                 ; preds = %.noexc1916
  %i.gaf = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !2739
  %i.gag = load ptr, ptr %0, align 8, !tbaa !18, !noalias !2739
  %i.gah = load i64, ptr %i.s, align 8, !tbaa !20, !noalias !2739
  %i.gai = load i64, ptr %i.drj, align 8, !tbaa !65, !noalias !2739 ; 2 uses
  %factor.op.mul4787 = mul i64 %i.gah, %i.gai
  %i.gaj = sext i32 %i.gaf to i64
  %i.gak = mul i64 %i.gai, %i.gaj
  %i.gal = mul i64 %i.gak, %i.fzo
  %invariant.gep4789 = getelementptr i8, ptr %i.gag, i64 %i.gal
  %i.gam = trunc nuw nsw i64 %indvars.iv5503 to i32
  %.reass4892 = mul i32 %factor.op.mul4891, %i.gam
  %i.gan = sext i32 %.reass4892 to i64
  %invariant.gep4790 = getelementptr [2 x i8], ptr %invariant.gep4789, i64 %i.gan
  %i.gao = load i32, ptr %i.f, align 4            ; 7 uses
  %i.gap = icmp slt i32 %i.gao, 1                 ; 2 uses
  %i.gaq = load ptr, ptr %i.g, align 8            ; 4 uses
  %i.gar = load i64, ptr %i.d, align 8            ; 17 uses
  %i.gas = icmp sgt i32 %i.gao, 0                 ; 2 uses
  %.idx1744 = shl i64 %i.gar, 2                   ; 2 uses
  %.idx1745 = mul i64 %i.gar, 6                   ; 2 uses
  %.idx1746 = mul i64 %i.gar, 30
  %.idx1747 = mul i64 %i.gar, 28
  %.idx1748 = mul i64 %i.gar, 26
  %.idx1749 = mul i64 %i.gar, 24
  %.idx1750 = mul i64 %i.gar, 22
  %.idx1751 = mul i64 %i.gar, 20
  %.idx1752 = mul i64 %i.gar, 18
  %.idx1753 = shl i64 %i.gar, 4
  %.idx1754 = mul i64 %i.gar, 14
  %.idx1755 = mul i64 %i.gar, 12
  %.idx1756 = mul i64 %i.gar, 10
  %.idx1757 = shl i64 %i.gar, 3
  %i.gat = add i32 %i.gao, -1
  %i.gau = zext i32 %i.gat to i64
  %i.gav = shl nuw nsw i64 %i.gau, 5              ; 4 uses
  %brmerge4932 = select i1 %i.drk, i1 true, i1 %i.gap
  %wide.trip.count5424 = zext nneg i32 %i.gao to i64
  %brmerge4935 = select i1 %i.drn, i1 true, i1 %i.gap
  %wide.trip.count5445 = zext nneg i32 %i.gao to i64
  %wide.trip.count5438 = zext nneg i32 %i.gao to i64
  %wide.trip.count5431 = zext nneg i32 %i.gao to i64
  br label %.noexc1914

.noexc1914:                                       ; preds = %.noexc1914.lr.ph, %.loopexit4044
  %.015214782 = phi i32 [ 0, %.noexc1914.lr.ph ], [ %i.ght, %.loopexit4044 ] ; 2 uses
  %.015264781 = phi ptr [ %i.fzl, %.noexc1914.lr.ph ], [ %.81534, %.loopexit4044 ] ; 11 uses
  %.037784780 = phi <16 x float> [ zeroinitializer, %.noexc1914.lr.ph ], [ %.8, %.loopexit4044 ] ; 7 uses
  %i.gaw = sdiv i32 %.015214782, %i.o
  %i.gax = sext i32 %i.gaw to i64
  %.reass4788 = mul i64 %factor.op.mul4787, %i.gax
  %gep4791 = getelementptr i8, ptr %invariant.gep4790, i64 %.reass4788 ; 23 uses
  br i1 %brmerge4932, label %.loopexit4048, label %.lr.ph4757

.lr.ph4757:                                       ; preds = %.noexc1914, %.lr.ph4757
  %indvars.iv5419 = phi i64 [ %indvars.iv.next5420, %.lr.ph4757 ], [ 0, %.noexc1914 ] ; 2 uses
  %.115274755 = phi ptr [ %i.gbv, %.lr.ph4757 ], [ %.015264781, %.noexc1914 ] ; 2 uses
  %.137794754 = phi <16 x float> [ %i.gbu, %.lr.ph4757 ], [ %.037784780, %.noexc1914 ]
  %i.gay = getelementptr inbounds nuw [4 x i8], ptr %i.gaq, i64 %indvars.iv5419
  %i.gaz = load i32, ptr %i.gay, align 4, !tbaa !67
  %i.gba = sext i32 %i.gaz to i64
  %i.gbb = getelementptr inbounds [2 x i8], ptr %gep4791, i64 %i.gba
  %i.gbc = load <16 x i16>, ptr %i.gbb, align 1, !tbaa !100 ; 2 uses
  %i.gbd = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.gbc, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.gbe = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.gbc, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.gbf = shufflevector <16 x i16> %i.gbd, <16 x i16> %i.gbe, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.gbg = shufflevector <16 x i16> %i.gbd, <16 x i16> %i.gbe, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gbh = bitcast <16 x i16> %i.gbf to <8 x i32>
  %i.gbi = bitcast <16 x i16> %i.gbg to <8 x i32>
  %i.gbj = shufflevector <8 x i32> %i.gbh, <8 x i32> %i.gbi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gbk = bitcast <16 x i32> %i.gbj to <16 x float>
  %i.gbl = load <16 x i16>, ptr %.115274755, align 32, !tbaa !100 ; 2 uses
  %i.gbm = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.gbl, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.gbn = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.gbl, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.gbo = shufflevector <16 x i16> %i.gbm, <16 x i16> %i.gbn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.gbp = shufflevector <16 x i16> %i.gbm, <16 x i16> %i.gbn, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gbq = bitcast <16 x i16> %i.gbo to <8 x i32>
  %i.gbr = bitcast <16 x i16> %i.gbp to <8 x i32>
  %i.gbs = shufflevector <8 x i32> %i.gbq, <8 x i32> %i.gbr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gbt = bitcast <16 x i32> %i.gbs to <16 x float>
  %i.gbu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gbk, <16 x float> nofpclass(nan inf) %i.gbt, <16 x float> nofpclass(nan inf) %.137794754) ; 2 uses
  %i.gbv = getelementptr inbounds nuw i8, ptr %.115274755, i64 32
  %indvars.iv.next5420 = add nuw nsw i64 %indvars.iv5419, 1 ; 2 uses
  %exitcond5425.not = icmp eq i64 %indvars.iv.next5420, %wide.trip.count5424
  br i1 %exitcond5425.not, label %.loopexit4048.thread, label %.lr.ph4757, !llvm.loop !2742

.loopexit4048.thread:                             ; preds = %.lr.ph4757
  %scevgep5421 = getelementptr i8, ptr %.015264781, i64 32
  %scevgep5422 = getelementptr i8, ptr %scevgep5421, i64 %i.gav
  br label %.loopexit4044

.loopexit4048:                                    ; preds = %.noexc1914
  br i1 %i.drl, label %bb.av, label %.loopexit4046

bb.av:                                            ; preds = %.loopexit4048
  %i.gbw = getelementptr inbounds nuw [2 x i8], ptr %gep4791, i64 %i.gar
  br i1 %i.gas, label %.lr.ph4764, label %.loopexit4044

.lr.ph4764:                                       ; preds = %bb.av, %.lr.ph4764
  %indvars.iv5426 = phi i64 [ %indvars.iv.next5427, %.lr.ph4764 ], [ 0, %bb.av ] ; 2 uses
  %.315294761 = phi ptr [ %i.gcy, %.lr.ph4764 ], [ %.015264781, %bb.av ] ; 2 uses
  %.337814760 = phi <16 x float> [ %i.gcx, %.lr.ph4764 ], [ %.037784780, %bb.av ]
  %i.gbx = getelementptr inbounds nuw [4 x i8], ptr %i.gaq, i64 %indvars.iv5426
  %i.gby = load i32, ptr %i.gbx, align 4, !tbaa !67
  %i.gbz = sext i32 %i.gby to i64                 ; 2 uses
  %i.gca = getelementptr inbounds [2 x i8], ptr %gep4791, i64 %i.gbz
  %i.gcb = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.gca)
  %i.gcc = bitcast <16 x i8> %i.gcb to <8 x i16>  ; 2 uses
  %i.gcd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gcc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gce = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.gcc, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.gcf = shufflevector <8 x i16> %i.gcd, <8 x i16> %i.gce, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gcg = getelementptr inbounds [2 x i8], ptr %i.gbw, i64 %i.gbz
  %i.gch = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.gcg)
  %i.gci = bitcast <16 x i8> %i.gch to <8 x i16>  ; 2 uses
  %i.gcj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gci, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gck = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.gci, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.gcl = shufflevector <8 x i16> %i.gcj, <8 x i16> %i.gck, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gcm = shufflevector <16 x i16> %i.gcf, <16 x i16> %i.gcl, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gcn = bitcast <32 x i16> %i.gcm to <16 x float>
  %i.gco = load <16 x i16>, ptr %.315294761, align 32, !tbaa !100 ; 2 uses
  %i.gcp = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.gco, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.gcq = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.gco, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.gcr = shufflevector <16 x i16> %i.gcp, <16 x i16> %i.gcq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.gcs = shufflevector <16 x i16> %i.gcp, <16 x i16> %i.gcq, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gct = bitcast <16 x i16> %i.gcr to <8 x i32>
  %i.gcu = bitcast <16 x i16> %i.gcs to <8 x i32>
  %i.gcv = shufflevector <8 x i32> %i.gct, <8 x i32> %i.gcu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gcw = bitcast <16 x i32> %i.gcv to <16 x float>
  %i.gcx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gcn, <16 x float> nofpclass(nan inf) %i.gcw, <16 x float> nofpclass(nan inf) %.337814760) ; 2 uses
  %i.gcy = getelementptr inbounds nuw i8, ptr %.315294761, i64 32
  %indvars.iv.next5427 = add nuw nsw i64 %indvars.iv5426, 1 ; 2 uses
  %exitcond5432.not = icmp eq i64 %indvars.iv.next5427, %wide.trip.count5431
  br i1 %exitcond5432.not, label %.loopexit4046.loopexit, label %.lr.ph4764, !llvm.loop !2743

.loopexit4046.loopexit:                           ; preds = %.lr.ph4764
  %scevgep5428 = getelementptr i8, ptr %.015264781, i64 32
  %scevgep5429 = getelementptr i8, ptr %scevgep5428, i64 %i.gav
  br label %.loopexit4044

.loopexit4046:                                    ; preds = %.loopexit4048
  br i1 %i.drm, label %bb.aw, label %.loopexit4045

bb.aw:                                            ; preds = %.loopexit4046
  %i.gcz = getelementptr inbounds nuw [2 x i8], ptr %gep4791, i64 %i.gar
  %i.gda = getelementptr inbounds nuw i8, ptr %gep4791, i64 %.idx1744
  %i.gdb = getelementptr inbounds nuw i8, ptr %gep4791, i64 %.idx1745
  br i1 %i.gas, label %.lr.ph4771, label %.loopexit4044

.lr.ph4771:                                       ; preds = %bb.aw, %.lr.ph4771
  %indvars.iv5433 = phi i64 [ %indvars.iv.next5434, %.lr.ph4771 ], [ 0, %bb.aw ] ; 2 uses
  %.515314768 = phi ptr [ %i.geq, %.lr.ph4771 ], [ %.015264781, %bb.aw ] ; 2 uses
  %.537834767 = phi <16 x float> [ %i.gep, %.lr.ph4771 ], [ %.037784780, %bb.aw ]
  %i.gdc = getelementptr inbounds nuw [4 x i8], ptr %i.gaq, i64 %indvars.iv5433
  %i.gdd = load i32, ptr %i.gdc, align 4, !tbaa !67
  %i.gde = sext i32 %i.gdd to i64                 ; 4 uses
  %i.gdf = getelementptr inbounds [2 x i8], ptr %gep4791, i64 %i.gde
  %i.gdg = load i64, ptr %i.gdf, align 1, !tbaa !100
  %i.gdh = insertelement <2 x i64> poison, i64 %i.gdg, i64 0
  %i.gdi = bitcast <2 x i64> %i.gdh to <8 x i16>
  %i.gdj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gdi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gdk = bitcast <8 x i16> %i.gdj to <4 x float>
  %i.gdl = getelementptr inbounds [2 x i8], ptr %i.gcz, i64 %i.gde
  %i.gdm = load i64, ptr %i.gdl, align 1, !tbaa !100
  %i.gdn = insertelement <2 x i64> poison, i64 %i.gdm, i64 0
  %i.gdo = bitcast <2 x i64> %i.gdn to <8 x i16>
  %i.gdp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gdo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gdq = bitcast <8 x i16> %i.gdp to <4 x float>
  %i.gdr = getelementptr inbounds [2 x i8], ptr %i.gda, i64 %i.gde
  %i.gds = load i64, ptr %i.gdr, align 1, !tbaa !100
  %i.gdt = insertelement <2 x i64> poison, i64 %i.gds, i64 0
  %i.gdu = bitcast <2 x i64> %i.gdt to <8 x i16>
  %i.gdv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gdu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gdw = bitcast <8 x i16> %i.gdv to <4 x float>
  %i.gdx = getelementptr inbounds [2 x i8], ptr %i.gdb, i64 %i.gde
  %i.gdy = load i64, ptr %i.gdx, align 1, !tbaa !100
  %i.gdz = insertelement <2 x i64> poison, i64 %i.gdy, i64 0
  %i.gea = bitcast <2 x i64> %i.gdz to <8 x i16>
  %i.geb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gea, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gec = bitcast <8 x i16> %i.geb to <4 x float>
  %i.ged = shufflevector <4 x float> %i.gdk, <4 x float> %i.gdq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gee = shufflevector <4 x float> %i.gdw, <4 x float> %i.gec, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
end_hunk_10
begin_hunk_11_@_ZN4ncnnL47conv3x3s1_winograd23_transform_input_tile_bf16sERKNS_3MatERS0_iiiii:bb.a
  %i.atm = shl nuw <2 x i32> %i.atl, splat (i32 16)
  %i.atn = bitcast <2 x i32> %i.atm to <2 x float>
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.ato = phi <2 x float> [ %i.atn, %bb.di ], [ zeroinitializer, %bb.dh ] ; 2 uses
  br i1 %i.aon, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.atp = getelementptr inbounds nuw i8, ptr %i.asi, i64 6
  %i.atq = load i16, ptr %i.atp, align 2, !tbaa !595
  %i.atr = getelementptr inbounds nuw i8, ptr %i.ask, i64 6
  %i.ats = load i16, ptr %i.atr, align 2, !tbaa !595
  %i.att = zext i16 %i.ats to i32
  %i.atu = zext i16 %i.atq to i32
  %i.atv = insertelement <2 x i32> poison, i32 %i.atu, i64 0
  %i.atw = insertelement <2 x i32> %i.atv, i32 %i.att, i64 1
  %i.atx = shl nuw <2 x i32> %i.atw, splat (i32 16)
  %i.aty = bitcast <2 x i32> %i.atx to <2 x float>
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj, %bb.de
  %i.atz = phi <2 x float> [ zeroinitializer, %bb.de ], [ %i.aty, %bb.dk ], [ zeroinitializer, %bb.dj ]
  %i.aua = phi <2 x float> [ zeroinitializer, %bb.de ], [ %i.atd, %bb.dk ], [ %i.atd, %bb.dj ] ; 3 uses
  %i.aub = phi <2 x float> [ zeroinitializer, %bb.de ], [ %i.ato, %bb.dk ], [ %i.ato, %bb.dj ] ; 3 uses
  %i.auc = phi <2 x float> [ zeroinitializer, %bb.de ], [ %i.ass, %bb.dk ], [ %i.ass, %bb.dj ]
  %i.aud = fsub fast <2 x float> %i.auc, %i.aub   ; 3 uses
  %i.aue = fadd fast <2 x float> %i.aub, %i.aua   ; 3 uses
  %i.auf = fsub fast <2 x float> %i.aub, %i.aua   ; 3 uses
  %i.aug = fsub fast <2 x float> %i.atz, %i.aua   ; 3 uses
  %i.auh = getelementptr inbounds [2 x i8], ptr %i.asi, i64 %i.amt ; 5 uses
  %i.aui = icmp sgt i64 %invariant.op856, %i.aoc
  br i1 %i.aui, label %bb.dm, label %bb.ds

bb.dm:                                            ; preds = %bb.dl
  %i.auj = getelementptr inbounds nuw [2 x i8], ptr %i.auh, i64 %i.aoh ; 4 uses
  %i.auk = load i16, ptr %i.auh, align 2, !tbaa !595
  %i.aul = load i16, ptr %i.auj, align 2, !tbaa !595
  %i.aum = zext i16 %i.aul to i32
  %i.aun = zext i16 %i.auk to i32
  %i.auo = insertelement <2 x i32> poison, i32 %i.aun, i64 0
  %i.aup = insertelement <2 x i32> %i.auo, i32 %i.aum, i64 1
  %i.auq = shl nuw <2 x i32> %i.aup, splat (i32 16)
  %i.aur = bitcast <2 x i32> %i.auq to <2 x float> ; 2 uses
  br i1 %i.aoj, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.aus = getelementptr inbounds nuw i8, ptr %i.auh, i64 2
  %i.aut = load i16, ptr %i.aus, align 2, !tbaa !595
  %i.auu = getelementptr inbounds nuw i8, ptr %i.auj, i64 2
  %i.auv = load i16, ptr %i.auu, align 2, !tbaa !595
  %i.auw = zext i16 %i.auv to i32
  %i.aux = zext i16 %i.aut to i32
  %i.auy = insertelement <2 x i32> poison, i32 %i.aux, i64 0
  %i.auz = insertelement <2 x i32> %i.auy, i32 %i.auw, i64 1
  %i.ava = shl nuw <2 x i32> %i.auz, splat (i32 16)
  %i.avb = bitcast <2 x i32> %i.ava to <2 x float>
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.avc = phi <2 x float> [ %i.avb, %bb.dn ], [ zeroinitializer, %bb.dm ] ; 2 uses
  br i1 %i.aol, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.avd = getelementptr inbounds nuw i8, ptr %i.auh, i64 4
  %i.ave = load i16, ptr %i.avd, align 2, !tbaa !595
  %i.avf = getelementptr inbounds nuw i8, ptr %i.auj, i64 4
  %i.avg = load i16, ptr %i.avf, align 2, !tbaa !595
  %i.avh = zext i16 %i.avg to i32
  %i.avi = zext i16 %i.ave to i32
  %i.avj = insertelement <2 x i32> poison, i32 %i.avi, i64 0
  %i.avk = insertelement <2 x i32> %i.avj, i32 %i.avh, i64 1
  %i.avl = shl nuw <2 x i32> %i.avk, splat (i32 16)
  %i.avm = bitcast <2 x i32> %i.avl to <2 x float>
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.avn = phi <2 x float> [ %i.avm, %bb.dp ], [ zeroinitializer, %bb.do ] ; 2 uses
  br i1 %i.aon, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.avo = getelementptr inbounds nuw i8, ptr %i.auh, i64 6
  %i.avp = load i16, ptr %i.avo, align 2, !tbaa !595
  %i.avq = getelementptr inbounds nuw i8, ptr %i.auj, i64 6
  %i.avr = load i16, ptr %i.avq, align 2, !tbaa !595
  %i.avs = zext i16 %i.avr to i32
  %i.avt = zext i16 %i.avp to i32
  %i.avu = insertelement <2 x i32> poison, i32 %i.avt, i64 0
  %i.avv = insertelement <2 x i32> %i.avu, i32 %i.avs, i64 1
  %i.avw = shl nuw <2 x i32> %i.avv, splat (i32 16)
  %i.avx = bitcast <2 x i32> %i.avw to <2 x float>
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq, %bb.dl
  %i.avy = phi <2 x float> [ zeroinitializer, %bb.dl ], [ %i.avx, %bb.dr ], [ zeroinitializer, %bb.dq ]
  %i.avz = phi <2 x float> [ zeroinitializer, %bb.dl ], [ %i.avc, %bb.dr ], [ %i.avc, %bb.dq ] ; 3 uses
  %i.awa = phi <2 x float> [ zeroinitializer, %bb.dl ], [ %i.avn, %bb.dr ], [ %i.avn, %bb.dq ] ; 3 uses
  %i.awb = phi <2 x float> [ zeroinitializer, %bb.dl ], [ %i.aur, %bb.dr ], [ %i.aur, %bb.dq ]
  %.idx848 = shl nuw nsw i64 %indvars.iv767, 3
  %i.awc = getelementptr inbounds nuw i8, ptr %i.anw, i64 %.idx848 ; 5 uses
  %i.awd = getelementptr inbounds nuw [4 x i8], ptr %i.awc, i64 %i.amv ; 2 uses
  %i.awe = getelementptr inbounds nuw [4 x i8], ptr %i.awc, i64 %i.amx ; 2 uses
  %i.awf = getelementptr inbounds nuw [4 x i8], ptr %i.awc, i64 %i.amz ; 2 uses
  %i.awg = fadd fast <2 x float> %i.aqg, %i.aud
  %i.awh = fsub fast <2 x float> %i.aqh, %i.awg
  store <2 x float> %i.awh, ptr %i.awc, align 4, !tbaa !39
  %i.awi = fadd fast <2 x float> %i.aud, %i.ase
  store <2 x float> %i.awi, ptr %i.awd, align 4, !tbaa !39
  %i.awj = fsub fast <2 x float> %i.aud, %i.ase
  store <2 x float> %i.awj, ptr %i.awe, align 4, !tbaa !39
  %i.awk = fadd fast <2 x float> %i.awa, %i.ase
  %i.awl = fsub fast <2 x float> %i.awb, %i.awk
  store <2 x float> %i.awl, ptr %i.awf, align 4, !tbaa !39
  %i.awm = getelementptr inbounds nuw [4 x i8], ptr %i.awc, i64 %i.anb ; 2 uses
  %i.awn = getelementptr inbounds nuw [4 x i8], ptr %i.awd, i64 %i.anb ; 2 uses
  %i.awo = getelementptr inbounds nuw [4 x i8], ptr %i.awe, i64 %i.anb ; 2 uses
  %i.awp = getelementptr inbounds nuw [4 x i8], ptr %i.awf, i64 %i.anb ; 2 uses
  %i.awq = fsub fast <2 x float> %i.aqi, %i.aue
  store <2 x float> %i.awq, ptr %i.awm, align 4, !tbaa !39
  %i.awr = fadd fast <2 x float> %i.aue, %i.asf
  store <2 x float> %i.awr, ptr %i.awn, align 4, !tbaa !39
  %i.aws = fsub fast <2 x float> %i.aue, %i.asf
  store <2 x float> %i.aws, ptr %i.awo, align 4, !tbaa !39
  %i.awt = fadd fast <2 x float> %i.awa, %i.avz
  %i.awu = fsub fast <2 x float> %i.awt, %i.asf
  store <2 x float> %i.awu, ptr %i.awp, align 4, !tbaa !39
  %i.awv = getelementptr inbounds nuw [4 x i8], ptr %i.awm, i64 %i.anb ; 2 uses
  %i.aww = getelementptr inbounds nuw [4 x i8], ptr %i.awn, i64 %i.anb ; 2 uses
  %i.awx = getelementptr inbounds nuw [4 x i8], ptr %i.awo, i64 %i.anb ; 2 uses
  %i.awy = getelementptr inbounds nuw [4 x i8], ptr %i.awp, i64 %i.anb ; 2 uses
  %i.awz = fadd fast <2 x float> %i.aqf, %i.auf
  %i.axa = fsub fast <2 x float> %i.aqg, %i.awz
  store <2 x float> %i.axa, ptr %i.awv, align 4, !tbaa !39
  %i.axb = fadd fast <2 x float> %i.auf, %i.asg
  store <2 x float> %i.axb, ptr %i.aww, align 4, !tbaa !39
  %i.axc = fsub fast <2 x float> %i.auf, %i.asg
  store <2 x float> %i.axc, ptr %i.awx, align 4, !tbaa !39
  %i.axd = fadd fast <2 x float> %i.avz, %i.asg
  %i.axe = fsub fast <2 x float> %i.awa, %i.axd
  store <2 x float> %i.axe, ptr %i.awy, align 4, !tbaa !39
  %i.axf = getelementptr inbounds nuw [4 x i8], ptr %i.awv, i64 %i.anb
  %i.axg = getelementptr inbounds nuw [4 x i8], ptr %i.aww, i64 %i.anb
  %i.axh = getelementptr inbounds nuw [4 x i8], ptr %i.awx, i64 %i.anb
  %i.axi = getelementptr inbounds nuw [4 x i8], ptr %i.awy, i64 %i.anb
  %i.axj = fadd fast <2 x float> %i.aqf, %i.aug
  %i.axk = fsub fast <2 x float> %i.aqe, %i.axj
  store <2 x float> %i.axk, ptr %i.axf, align 4, !tbaa !39
  %i.axl = fadd fast <2 x float> %i.aug, %i.ash
  store <2 x float> %i.axl, ptr %i.axg, align 4, !tbaa !39
  %i.axm = fsub fast <2 x float> %i.aug, %i.ash
  store <2 x float> %i.axm, ptr %i.axh, align 4, !tbaa !39
  %i.axn = fadd fast <2 x float> %i.avz, %i.ash
  %i.axo = fsub fast <2 x float> %i.avy, %i.axn
  store <2 x float> %i.axo, ptr %i.axi, align 4, !tbaa !39
  %indvars.iv.next768 = add nuw nsw i64 %indvars.iv767, 1 ; 2 uses
  %exitcond771.not = icmp eq i64 %indvars.iv.next768, %wide.trip.count770
  br i1 %exitcond771.not, label %._crit_edge.us707, label %_ZN4ncnn3MatD2Ev.exit498.us, !llvm.loop !2788

._crit_edge.us707:                                ; preds = %bb.ds
  %indvars.iv.next773 = add nuw nsw i64 %indvars.iv772, 1 ; 2 uses
  %exitcond776.not = icmp eq i64 %indvars.iv.next773, %wide.trip.count775
  br i1 %exitcond776.not, label %._crit_edge702, label %_ZN4ncnn3MatD2Ev.exit498.lr.ph.us, !llvm.loop !2789

._crit_edge702:                                   ; preds = %._crit_edge.us707, %.lr.ph701, %._crit_edge684
  %i.axp = shl nsw i32 %i.amn, 1
  %i.axq = add nsw i32 %i.axp, %i.aml             ; 2 uses
  %i.axr = icmp slt i32 %i.axq, %5
  br i1 %i.axr, label %.lr.ph722, label %._crit_edge723

.lr.ph722:                                        ; preds = %._crit_edge702
  %i.axs = load i32, ptr %i.b, align 4, !tbaa !67 ; 7 uses
  %i.axt = icmp sgt i32 %i.axs, 0
  %i.axu = load i32, ptr %i.h, align 4            ; 2 uses
  %i.axv = load i32, ptr %i.d, align 4
  %i.axw = sext i32 %i.axv to i64                 ; 3 uses
  %factor.op.mul724 = shl i32 %i.axs, 4
  %i.axx = sext i32 %i.axs to i64
  %i.axy = shl nsw i32 %i.axs, 1
  %i.axz = sext i32 %i.axy to i64
  %i.aya = mul nsw i32 %i.axs, 3
  %i.ayb = sext i32 %i.aya to i64
  %i.ayc = shl nsw i32 %i.axs, 2
  %i.ayd = sext i32 %i.ayc to i64                 ; 12 uses
  br i1 %i.axt, label %.lr.ph722.split.us, label %._crit_edge723

.lr.ph722.split.us:                               ; preds = %.lr.ph722
  %i.aye = load i32, ptr %i.e, align 4            ; 2 uses
  %i.ayf = load i32, ptr %i.c, align 4
  %i.ayg = load i32, ptr %i.a, align 4
  %i.ayh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ayi = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !2790
  %i.ayj = load ptr, ptr %0, align 8, !tbaa !18, !noalias !2790
  %i.ayk = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !2790
  %i.ayl = load i64, ptr %i.ayh, align 8, !tbaa !65, !noalias !2790 ; 2 uses
  %factor.op.mul727 = mul i64 %i.ayk, %i.ayl
  %i.aym = sext i32 %i.ayi to i64
  %factor.op.mul718.us = mul i64 %i.ayl, %i.aym
  %i.ayn = load ptr, ptr %1, align 8, !tbaa !18
  %i.ayo = sext i32 %i.aye to i64                 ; 3 uses
  %i.ayp = sext i32 %i.axq to i64
  %i.ayq = sext i32 %5 to i64
  %i.ayr = sext i32 %i.ayf to i64
  %wide.trip.count788 = zext nneg i32 %i.axs to i64
  %invariant.op857 = add nsw i64 %i.ayo, -1
  %invariant.op858 = add nsw i64 %i.ayo, -2
  %invariant.op859 = add nsw i64 %i.ayo, -3
  br label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us

_ZN4ncnn3MatD2Ev.exit.lr.ph.us:                   ; preds = %._crit_edge.us726, %.lr.ph722.split.us
  %indvars.iv790 = phi i64 [ %indvars.iv.next791, %._crit_edge.us726 ], [ %i.ayp, %.lr.ph722.split.us ] ; 3 uses
  %i.ays = add nsw i64 %indvars.iv790, %i.ayr
  %.reass728 = mul i64 %factor.op.mul727, %i.ays
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.ayj, i64 %.reass728
  %i.ayu = trunc nsw i64 %indvars.iv790 to i32
  %.reass725.us = mul i32 %factor.op.mul724, %i.ayu
  %i.ayv = sext i32 %.reass725.us to i64
  %i.ayw = getelementptr inbounds [4 x i8], ptr %i.ayn, i64 %i.ayv
  br label %_ZN4ncnn3MatD2Ev.exit.us

_ZN4ncnn3MatD2Ev.exit.us:                         ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, %bb.eu
  %indvars.iv785 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit.lr.ph.us ], [ %indvars.iv.next786, %bb.eu ] ; 3 uses
  %i.ayx = trunc i64 %indvars.iv785 to i32
  %i.ayy = add i32 %i.ayg, %i.ayx                 ; 2 uses
  %i.ayz = sdiv i32 %i.ayy, %i.axu
  %i.aza = srem i32 %i.ayy, %i.axu
  %i.azb = shl nsw i32 %i.ayz, 1                  ; 2 uses
  %i.azc = sext i32 %i.azb to i64                 ; 4 uses
  %.reass719.us = mul i64 %factor.op.mul718.us, %i.azc
  %i.azd = getelementptr inbounds nuw i8, ptr %i.ayt, i64 %.reass719.us
  %i.aze = shl nsw i32 %i.aza, 1                  ; 4 uses
  %i.azf = sext i32 %i.aze to i64
  %i.azg = getelementptr inbounds [2 x i8], ptr %i.azd, i64 %i.azf ; 5 uses
  %i.azh = or disjoint i32 %i.aze, 1
  %i.azi = load i32, ptr %i.d, align 4            ; 3 uses
  %i.azj = icmp slt i32 %i.azh, %i.azi            ; 4 uses
  %i.azk = add nsw i32 %i.aze, 2
  %i.azl = icmp slt i32 %i.azk, %i.azi            ; 4 uses
  %i.azm = add nsw i32 %i.aze, 3
  %i.azn = icmp slt i32 %i.azm, %i.azi            ; 4 uses
  %i.azo = icmp slt i32 %i.azb, %i.aye
  br i1 %i.azo, label %bb.dt, label %bb.dz

bb.dt:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.us
  %i.azp = load i16, ptr %i.azg, align 2, !tbaa !595
  %i.azq = zext i16 %i.azp to i32
  %i.azr = shl nuw i32 %i.azq, 16
  %i.azs = bitcast i32 %i.azr to float            ; 2 uses
  br i1 %i.azj, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azg, i64 2
  %i.azu = load i16, ptr %i.azt, align 2, !tbaa !595
  %i.azv = zext i16 %i.azu to i32
  %i.azw = shl nuw i32 %i.azv, 16
  %i.azx = bitcast i32 %i.azw to float
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %.0409.us = phi nsz float [ %i.azx, %bb.du ], [ 0.000000e+00, %bb.dt ] ; 2 uses
  br i1 %i.azl, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.azy = getelementptr inbounds nuw i8, ptr %i.azg, i64 4
  %i.azz = load i16, ptr %i.azy, align 2, !tbaa !595
  %i.baa = zext i16 %i.azz to i32
  %i.bab = shl nuw i32 %i.baa, 16
  %i.bac = bitcast i32 %i.bab to float
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %.0408.us = phi nsz float [ %i.bac, %bb.dw ], [ 0.000000e+00, %bb.dv ] ; 2 uses
  br i1 %i.azn, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.bad = getelementptr inbounds nuw i8, ptr %i.azg, i64 6
  %i.bae = load i16, ptr %i.bad, align 2, !tbaa !595
  %i.baf = zext i16 %i.bae to i32
  %i.bag = shl nuw i32 %i.baf, 16
  %i.bah = bitcast i32 %i.bag to float
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx, %_ZN4ncnn3MatD2Ev.exit.us
  %.0411.us = phi nsz float [ %i.azs, %bb.dy ], [ %i.azs, %bb.dx ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit.us ]
  %.1410.us = phi nsz float [ %.0409.us, %bb.dy ], [ %.0409.us, %bb.dx ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit.us ] ; 3 uses
  %.1.us = phi nsz float [ %.0408.us, %bb.dy ], [ %.0408.us, %bb.dx ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit.us ] ; 3 uses
  %.0407.us = phi nsz float [ %i.bah, %bb.dy ], [ 0.000000e+00, %bb.dx ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit.us ]
  %i.bai = fadd fast float %.1.us, %.1410.us
  %i.baj = getelementptr inbounds [2 x i8], ptr %i.azg, i64 %i.axw ; 5 uses
  %i.bak = icmp sgt i64 %invariant.op857, %i.azc
  br i1 %i.bak, label %bb.ea, label %bb.eg

bb.ea:                                            ; preds = %bb.dz
  %i.bal = load i16, ptr %i.baj, align 2, !tbaa !595
  %i.bam = zext i16 %i.bal to i32
  %i.ban = shl nuw i32 %i.bam, 16
  %i.bao = bitcast i32 %i.ban to float            ; 2 uses
  br i1 %i.azj, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.bap = getelementptr inbounds nuw i8, ptr %i.baj, i64 2
  %i.baq = load i16, ptr %i.bap, align 2, !tbaa !595
  %i.bar = zext i16 %i.baq to i32
  %i.bas = shl nuw i32 %i.bar, 16
  %i.bat = bitcast i32 %i.bas to float
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %.0409.us.1 = phi nsz float [ %i.bat, %bb.eb ], [ 0.000000e+00, %bb.ea ] ; 2 uses
  br i1 %i.azl, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.bau = getelementptr inbounds nuw i8, ptr %i.baj, i64 4
  %i.bav = load i16, ptr %i.bau, align 2, !tbaa !595
  %i.baw = zext i16 %i.bav to i32
  %i.bax = shl nuw i32 %i.baw, 16
  %i.bay = bitcast i32 %i.bax to float
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %.0408.us.1 = phi nsz float [ %i.bay, %bb.ed ], [ 0.000000e+00, %bb.ec ] ; 2 uses
  br i1 %i.azn, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.baz = getelementptr inbounds nuw i8, ptr %i.baj, i64 6
  %i.bba = load i16, ptr %i.baz, align 2, !tbaa !595
  %i.bbb = zext i16 %i.bba to i32
  %i.bbc = shl nuw i32 %i.bbb, 16
  %i.bbd = bitcast i32 %i.bbc to float
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee, %bb.dz
  %.0411.us.1 = phi nsz float [ %i.bao, %bb.ef ], [ %i.bao, %bb.ee ], [ 0.000000e+00, %bb.dz ]
  %.1410.us.1 = phi nsz float [ %.0409.us.1, %bb.ef ], [ %.0409.us.1, %bb.ee ], [ 0.000000e+00, %bb.dz ] ; 3 uses
  %.1.us.1 = phi nsz float [ %.0408.us.1, %bb.ef ], [ %.0408.us.1, %bb.ee ], [ 0.000000e+00, %bb.dz ] ; 3 uses
  %.0407.us.1 = phi nsz float [ %i.bbd, %bb.ef ], [ 0.000000e+00, %bb.ee ], [ 0.000000e+00, %bb.dz ]
  %i.bbe = fsub fast float %.0411.us.1, %.1.us.1  ; 3 uses
  %i.bbf = fadd fast float %.1.us.1, %.1410.us.1  ; 3 uses
  %i.bbg = fsub fast float %.1.us.1, %.1410.us.1  ; 3 uses
  %i.bbh = fsub fast float %.0407.us.1, %.1410.us.1 ; 3 uses
  %i.bbi = getelementptr inbounds [2 x i8], ptr %i.baj, i64 %i.axw ; 5 uses
  %i.bbj = icmp sgt i64 %invariant.op858, %i.azc
  br i1 %i.bbj, label %bb.eh, label %bb.en

bb.eh:                                            ; preds = %bb.eg
  %i.bbk = load i16, ptr %i.bbi, align 2, !tbaa !595
  %i.bbl = zext i16 %i.bbk to i32
  %i.bbm = shl nuw i32 %i.bbl, 16
  %i.bbn = bitcast i32 %i.bbm to float            ; 2 uses
  br i1 %i.azj, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.bbi, i64 2
  %i.bbp = load i16, ptr %i.bbo, align 2, !tbaa !595
  %i.bbq = zext i16 %i.bbp to i32
  %i.bbr = shl nuw i32 %i.bbq, 16
  %i.bbs = bitcast i32 %i.bbr to float
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %.0409.us.2 = phi nsz float [ %i.bbs, %bb.ei ], [ 0.000000e+00, %bb.eh ] ; 2 uses
  br i1 %i.azl, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bbi, i64 4
  %i.bbu = load i16, ptr %i.bbt, align 2, !tbaa !595
  %i.bbv = zext i16 %i.bbu to i32
  %i.bbw = shl nuw i32 %i.bbv, 16
  %i.bbx = bitcast i32 %i.bbw to float
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %.0408.us.2 = phi nsz float [ %i.bbx, %bb.ek ], [ 0.000000e+00, %bb.ej ] ; 2 uses
  br i1 %i.azn, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.bby = getelementptr inbounds nuw i8, ptr %i.bbi, i64 6
  %i.bbz = load i16, ptr %i.bby, align 2, !tbaa !595
  %i.bca = zext i16 %i.bbz to i32
  %i.bcb = shl nuw i32 %i.bca, 16
  %i.bcc = bitcast i32 %i.bcb to float
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el, %bb.eg
  %.0411.us.2 = phi nsz float [ %i.bbn, %bb.em ], [ %i.bbn, %bb.el ], [ 0.000000e+00, %bb.eg ]
  %.1410.us.2 = phi nsz float [ %.0409.us.2, %bb.em ], [ %.0409.us.2, %bb.el ], [ 0.000000e+00, %bb.eg ] ; 3 uses
  %.1.us.2 = phi nsz float [ %.0408.us.2, %bb.em ], [ %.0408.us.2, %bb.el ], [ 0.000000e+00, %bb.eg ] ; 3 uses
  %.0407.us.2 = phi nsz float [ %i.bcc, %bb.em ], [ 0.000000e+00, %bb.el ], [ 0.000000e+00, %bb.eg ]
  %i.bcd = fsub fast float %.0411.us.2, %.1.us.2  ; 3 uses
  %i.bce = fadd fast float %.1.us.2, %.1410.us.2  ; 3 uses
  %i.bcf = fsub fast float %.1.us.2, %.1410.us.2  ; 3 uses
  %i.bcg = fsub fast float %.0407.us.2, %.1410.us.2 ; 3 uses
  %i.bch = getelementptr inbounds [2 x i8], ptr %i.bbi, i64 %i.axw ; 4 uses
  %i.bci = icmp sgt i64 %invariant.op859, %i.azc
  br i1 %i.bci, label %bb.eo, label %bb.eu

bb.eo:                                            ; preds = %bb.en
  %i.bcj = load i16, ptr %i.bch, align 2, !tbaa !595
  %i.bck = zext i16 %i.bcj to i32
  %i.bcl = shl nuw i32 %i.bck, 16
  %i.bcm = bitcast i32 %i.bcl to float            ; 2 uses
  br i1 %i.azj, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.bch, i64 2
  %i.bco = load i16, ptr %i.bcn, align 2, !tbaa !595
  %i.bcp = zext i16 %i.bco to i32
  %i.bcq = shl nuw i32 %i.bcp, 16
  %i.bcr = bitcast i32 %i.bcq to float
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %.0409.us.3 = phi nsz float [ %i.bcr, %bb.ep ], [ 0.000000e+00, %bb.eo ] ; 2 uses
  br i1 %i.azl, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.bch, i64 4
  %i.bct = load i16, ptr %i.bcs, align 2, !tbaa !595
  %i.bcu = zext i16 %i.bct to i32
  %i.bcv = shl nuw i32 %i.bcu, 16
  %i.bcw = bitcast i32 %i.bcv to float
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %.0408.us.3 = phi nsz float [ %i.bcw, %bb.er ], [ 0.000000e+00, %bb.eq ] ; 2 uses
  br i1 %i.azn, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.bcx = getelementptr inbounds nuw i8, ptr %i.bch, i64 6
  %i.bcy = load i16, ptr %i.bcx, align 2, !tbaa !595
  %i.bcz = zext i16 %i.bcy to i32
  %i.bda = shl nuw i32 %i.bcz, 16
  %i.bdb = bitcast i32 %i.bda to float
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es, %bb.en
  %.0411.us.3 = phi nsz float [ %i.bcm, %bb.et ], [ %i.bcm, %bb.es ], [ 0.000000e+00, %bb.en ]
  %.1410.us.3 = phi nsz float [ %.0409.us.3, %bb.et ], [ %.0409.us.3, %bb.es ], [ 0.000000e+00, %bb.en ] ; 3 uses
  %.1.us.3 = phi nsz float [ %.0408.us.3, %bb.et ], [ %.0408.us.3, %bb.es ], [ 0.000000e+00, %bb.en ] ; 3 uses
  %.0407.us.3 = phi nsz float [ %i.bdb, %bb.et ], [ 0.000000e+00, %bb.es ], [ 0.000000e+00, %bb.en ]
  %i.bdc = fadd fast float %.1.us.3, %.1410.us.3
  %i.bdd = getelementptr inbounds nuw [4 x i8], ptr %i.ayw, i64 %indvars.iv785 ; 5 uses
  %i.bde = getelementptr inbounds nuw [4 x i8], ptr %i.bdd, i64 %i.axx ; 2 uses
  %i.bdf = getelementptr inbounds nuw [4 x i8], ptr %i.bdd, i64 %i.axz ; 2 uses
  %i.bdg = getelementptr inbounds nuw [4 x i8], ptr %i.bdd, i64 %i.ayb ; 2 uses
  %i.bdh = fadd fast float %.1.us, %i.bcd
  %i.bdi = fsub fast float %.0411.us, %i.bdh
  store float %i.bdi, ptr %i.bdd, align 4, !tbaa !39
  %i.bdj = fadd fast float %i.bcd, %i.bbe
  store float %i.bdj, ptr %i.bde, align 4, !tbaa !39
  %i.bdk = fsub fast float %i.bcd, %i.bbe
  store float %i.bdk, ptr %i.bdf, align 4, !tbaa !39
  %i.bdl = fadd fast float %.1.us.3, %i.bbe
  %i.bdm = fsub fast float %.0411.us.3, %i.bdl
  store float %i.bdm, ptr %i.bdg, align 4, !tbaa !39
  %i.bdn = getelementptr inbounds nuw [4 x i8], ptr %i.bdd, i64 %i.ayd ; 2 uses
  %i.bdo = getelementptr inbounds nuw [4 x i8], ptr %i.bde, i64 %i.ayd ; 2 uses
  %i.bdp = getelementptr inbounds nuw [4 x i8], ptr %i.bdf, i64 %i.ayd ; 2 uses
  %i.bdq = getelementptr inbounds nuw [4 x i8], ptr %i.bdg, i64 %i.ayd ; 2 uses
  %i.bdr = fsub fast float %i.bai, %i.bce
  store float %i.bdr, ptr %i.bdn, align 4, !tbaa !39
  %i.bds = fadd fast float %i.bce, %i.bbf
  store float %i.bds, ptr %i.bdo, align 4, !tbaa !39
  %i.bdt = fsub fast float %i.bce, %i.bbf
  store float %i.bdt, ptr %i.bdp, align 4, !tbaa !39
  %i.bdu = fsub fast float %i.bdc, %i.bbf
  store float %i.bdu, ptr %i.bdq, align 4, !tbaa !39
  %i.bdv = getelementptr inbounds nuw [4 x i8], ptr %i.bdn, i64 %i.ayd ; 2 uses
  %i.bdw = getelementptr inbounds nuw [4 x i8], ptr %i.bdo, i64 %i.ayd ; 2 uses
  %i.bdx = getelementptr inbounds nuw [4 x i8], ptr %i.bdp, i64 %i.ayd ; 2 uses
  %i.bdy = getelementptr inbounds nuw [4 x i8], ptr %i.bdq, i64 %i.ayd ; 2 uses
  %i.bdz = fadd fast float %.1410.us, %i.bcf
  %i.bea = fsub fast float %.1.us, %i.bdz
  store float %i.bea, ptr %i.bdv, align 4, !tbaa !39
  %i.beb = fadd fast float %i.bcf, %i.bbg
  store float %i.beb, ptr %i.bdw, align 4, !tbaa !39
  %i.bec = fsub fast float %i.bcf, %i.bbg
  store float %i.bec, ptr %i.bdx, align 4, !tbaa !39
  %i.bed = fadd fast float %.1410.us.3, %i.bbg
  %i.bee = fsub fast float %.1.us.3, %i.bed
  store float %i.bee, ptr %i.bdy, align 4, !tbaa !39
  %i.bef = getelementptr inbounds nuw [4 x i8], ptr %i.bdv, i64 %i.ayd
  %i.beg = getelementptr inbounds nuw [4 x i8], ptr %i.bdw, i64 %i.ayd
  %i.beh = getelementptr inbounds nuw [4 x i8], ptr %i.bdx, i64 %i.ayd
  %i.bei = getelementptr inbounds nuw [4 x i8], ptr %i.bdy, i64 %i.ayd
  %i.bej = fadd fast float %.1410.us, %i.bcg
  %i.bek = fsub fast float %.0407.us, %i.bej
  store float %i.bek, ptr %i.bef, align 4, !tbaa !39
  %i.bel = fadd fast float %i.bcg, %i.bbh
  store float %i.bel, ptr %i.beg, align 4, !tbaa !39
  %i.bem = fsub fast float %i.bcg, %i.bbh
  store float %i.bem, ptr %i.beh, align 4, !tbaa !39
  %i.ben = fadd fast float %.1410.us.3, %i.bbh
  %i.beo = fsub fast float %.0407.us.3, %i.ben
  store float %i.beo, ptr %i.bei, align 4, !tbaa !39
  %indvars.iv.next786 = add nuw nsw i64 %indvars.iv785, 1 ; 2 uses
  %exitcond789.not = icmp eq i64 %indvars.iv.next786, %wide.trip.count788
  br i1 %exitcond789.not, label %._crit_edge.us726, label %_ZN4ncnn3MatD2Ev.exit.us, !llvm.loop !2793

._crit_edge.us726:                                ; preds = %bb.eu
  %indvars.iv.next791 = add nsw i64 %indvars.iv790, 1 ; 2 uses
  %7 = icmp slt i64 %indvars.iv.next791, %i.ayq
  br i1 %7, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, label %._crit_edge723, !llvm.loop !2794

._crit_edge723:                                   ; preds = %._crit_edge.us726, %.lr.ph722, %._crit_edge702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.ev

bb.ev:                                            ; preds = %._crit_edge723, %bb.b
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL26conv3x3s1_winograd23_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %i.h = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i32 %i.j, ptr %i.e, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store i32 1, ptr %i.f, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store i32 0, ptr %i.g, align 4, !tbaa !67
  %i.k = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f, i32 1, i32 1)
  %i.l = load i32, ptr %i.e, align 4, !tbaa !67
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 2 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !67
  %i.n = load i32, ptr %i.d, align 4, !tbaa !67   ; 2 uses
  %.not66 = icmp sgt i32 %i.n, %i.m
  br i1 %.not66, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 52
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 52
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.067 = phi i32 [ %i.n, %.lr.ph ], [ %i.dv, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.at = load i32, ptr %3, align 4, !tbaa !67    ; 2 uses
  %i.au = sdiv i32 %.067, %i.at
  %i.av = srem i32 %.067, %i.at
  %i.aw = load i32, ptr %4, align 4, !tbaa !67    ; 2 uses
  %i.ax = mul nsw i32 %i.aw, %i.au                ; 3 uses
  %i.ay = load i32, ptr %5, align 4, !tbaa !67    ; 2 uses
  %i.az = mul nsw i32 %i.ay, %i.av                ; 3 uses
  %i.ba = load i32, ptr %6, align 4, !tbaa !67
  %i.bb = sub nsw i32 %i.ba, %i.ax
  %.sroa.speculated63 = call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.bb) ; 2 uses
  %i.bc = load i32, ptr %7, align 4, !tbaa !67
  %i.bd = sub nsw i32 %i.bc, %i.az
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ay, i32 %i.bd) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.be = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %bb.d unwind label %bb.s

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !2795)
  %i.bf = load i32, ptr %i.o, align 4, !tbaa !75, !noalias !2795 ; 2 uses
  %i.bg = load i32, ptr %i.p, align 8, !tbaa !76, !noalias !2795 ; 2 uses
  %i.bh = load i32, ptr %i.q, align 4, !tbaa !226, !noalias !2795
  %i.bi = load ptr, ptr %8, align 8, !tbaa !18, !noalias !2795
  %i.bj = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !2795
  %i.bk = sext i32 %i.be to i64
  %i.bl = mul i64 %i.bj, %i.bk
  %i.bm = load i64, ptr %i.s, align 8, !tbaa !65, !noalias !2795 ; 4 uses
  %i.bn = mul i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bn
  %i.bp = load i32, ptr %i.t, align 8, !tbaa !66, !noalias !2795
  %i.bq = load ptr, ptr %i.u, align 8, !tbaa !17, !noalias !2795
  store ptr %i.bo, ptr %11, align 8, !tbaa !18, !alias.scope !2795
  store ptr null, ptr %i.v, align 8, !tbaa !11, !alias.scope !2795
  store i64 %i.bm, ptr %i.w, align 8, !tbaa !65, !alias.scope !2795
  store i32 %i.bp, ptr %i.x, align 8, !tbaa !66, !alias.scope !2795
  store ptr %i.bq, ptr %i.y, align 8, !tbaa !17, !alias.scope !2795
  store i32 %i.bf, ptr %i.aa, align 4, !tbaa !75, !alias.scope !2795
  store i32 %i.bg, ptr %i.ab, align 8, !tbaa !76, !alias.scope !2795
  store i32 1, ptr %i.ac, align 4, !tbaa !226, !alias.scope !2795
  store i32 %i.bh, ptr %i.ad, align 8, !tbaa !68, !alias.scope !2795
  %i.br = sext i32 %i.bf to i64
  %i.bs = sext i32 %i.bg to i64
  %i.bt = mul nsw i64 %i.bs, %i.br                ; 2 uses
  %i.bu = mul i64 %i.bm, %i.bt
  %i.bv = add i64 %i.bu, 15
  %i.bw = and i64 %i.bv, -16
  %i.bx = udiv i64 %i.bw, %i.bm
  store i64 %i.bx, ptr %i.ae, align 8, !tbaa !20, !alias.scope !2795
  %i.by = load i32, ptr %i.af, align 8, !tbaa !225, !noalias !2795 ; 2 uses
  %i.bz = add nsw i32 %i.by, -1
  store i32 %i.bz, ptr %i.z, align 8, !tbaa !225, !alias.scope !2795
  %i.ca = icmp eq i32 %i.by, 4
  br i1 %i.ca, label %bb.e, label %_ZN4ncnn3Mat7channelEi.exit48

bb.e:                                             ; preds = %bb.d
  store i64 %i.bt, ptr %i.ae, align 8, !tbaa !20, !alias.scope !2795
  br label %_ZN4ncnn3Mat7channelEi.exit48

_ZN4ncnn3Mat7channelEi.exit48:                    ; preds = %bb.e, %bb.d
  invoke fastcc void @_ZN4ncnnL47conv3x3s1_winograd23_transform_input_tile_bf16sERKNS_3MatERS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.ax, i32 noundef %.sroa.speculated63, i32 noundef %i.az, i32 noundef %.sroa.speculated, i32 noundef 1)
          to label %_ZN4ncnn3MatD2Ev.exit34 unwind label %bb.s

_ZN4ncnn3MatD2Ev.exit34:                          ; preds = %_ZN4ncnn3Mat7channelEi.exit48
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.cb = load i32, ptr %4, align 4, !tbaa !67
  %i.cc = sdiv i32 %i.ax, %i.cb
  %i.cd = load ptr, ptr %10, align 8, !tbaa !18, !noalias !2798
  %i.ce = load i64, ptr %i.ai, align 8, !tbaa !20, !noalias !2798
  %i.cf = sext i32 %i.cc to i64
  %i.cg = mul i64 %i.ce, %i.cf
  %i.ch = load i64, ptr %i.aj, align 8, !tbaa !65, !noalias !2798 ; 3 uses
  %i.ci = mul i64 %i.cg, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ci
  %i.ck = load i32, ptr %i.ak, align 8, !tbaa !66, !noalias !2798
  %i.cl = load ptr, ptr %i.al, align 8, !tbaa !17, !noalias !2798
  %i.cm = load i32, ptr %5, align 4, !tbaa !67
  %i.cn = sdiv i32 %i.az, %i.cm
  %i.co = sext i32 %i.cn to i64
  store ptr null, ptr %i.am, align 8, !tbaa !11
  store i64 %i.ch, ptr %i.an, align 8, !tbaa !65
  store i32 %i.ck, ptr %i.ao, align 8, !tbaa !66
  store ptr %i.cl, ptr %i.ap, align 8, !tbaa !17
  %i.cp = load <2 x i32>, ptr %i.ag, align 4, !tbaa !67, !noalias !2798
  %i.cq = load i32, ptr %i.ah, align 8, !tbaa !76, !noalias !2798
  %i.cr = load i32, ptr %i.ag, align 4, !tbaa !75, !noalias !2798
  %i.cs = sext i32 %i.cr to i64
  %i.ct = sext i32 %i.cq to i64
  %i.cu = mul nsw i64 %i.ct, %i.cs                ; 2 uses
  %i.cv = mul i64 %i.ch, %i.cu
  %i.cw = mul i64 %i.cv, %i.co
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cw
  store ptr %i.cx, ptr %12, align 8, !tbaa !18
  %i.cy = shufflevector <2 x i32> %i.cp, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.cz = shufflevector <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, <4 x i32> %i.cy, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i32> %i.cz, ptr %i.aq, align 8, !tbaa !67
  store i32 1, ptr %i.ar, align 8, !tbaa !68
  store i64 %i.cu, ptr %i.as, align 8, !tbaa !20, !alias.scope !2801
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.da = call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 16, ptr %i.a, align 4, !tbaa !67
  store i32 %.sroa.speculated63, ptr %i.b, align 4, !tbaa !67
  store i32 %.sroa.speculated, ptr %i.c, align 4, !tbaa !67
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.da, i32 1)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN4ncnnL21transpose_pack_B_tileERKNS_3MatERS0_iiii.omp_outlined, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %12, ptr nonnull %i.b, ptr nonnull align 8 dereferenceable(72) %11, ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.db = load ptr, ptr %i.am, align 8, !tbaa !11 ; 2 uses
  %.not.i35 = icmp eq ptr %i.db, null
  br i1 %.not.i35, label %_ZN4ncnn3MatD2Ev.exit33, label %bb.f

bb.f:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit34
  %i.dc = atomicrmw add ptr %i.db, i32 -1 acq_rel, align 4
end_hunk_11
begin_hunk_12_@_ZN4ncnnL47conv3x3s1_winograd43_transform_input_tile_bf16sERKNS_3MatERS0_iiiii:bb.a
  %i.dtb = fmul fast <2 x float> %i.dkf, splat (float f0x3F3504F3)
  %i.dtc = fsub fast <2 x float> %i.dta, %i.dtb   ; 2 uses
  %i.dtd = fmul fast <2 x float> %i.dgr, splat (float 2.000000e+00)
  %i.dte = fsub fast <2 x float> %i.dnt, %i.dtd   ; 2 uses
  %i.dtf = fsub fast <2 x float> %i.dte, %i.dtc
  %i.dtg = fadd fast <2 x float> %i.dte, %i.dtc
  %i.dth = fmul fast <2 x float> %i.dgr, splat (float 5.000000e-01)
  %i.dti = fsub fast <2 x float> %i.dnt, %i.dth   ; 2 uses
  %i.dtj = fmul fast <2 x float> %i.dkf, splat (float f0x3FB504F3)
  %i.dtk = fmul fast <2 x float> %i.ddd, splat (float f0x3F3504F3)
  %i.dtl = fsub fast <2 x float> %i.dtj, %i.dtk   ; 2 uses
  %i.dtm = fadd fast <2 x float> %i.dti, %i.dtl
  %i.dtn = fsub fast <2 x float> %i.dti, %i.dtl
  store <2 x float> %i.dsz, ptr %i.dsr, align 4, !tbaa !39
  store <2 x float> %i.dtf, ptr %i.dss, align 4, !tbaa !39
  store <2 x float> %i.dtg, ptr %i.dst, align 4, !tbaa !39
  store <2 x float> %i.dtm, ptr %i.dsu, align 4, !tbaa !39
  store <2 x float> %i.dtn, ptr %i.dsv, align 4, !tbaa !39
  %i.dto = fmul fast <2 x float> %i.dkf, splat (float -2.500000e+00)
  %i.dtp = fadd fast <2 x float> %i.ddd, %i.dto
  %i.dtq = fadd fast <2 x float> %i.dru, %i.dtp
  store <2 x float> %i.dtq, ptr %i.dsw, align 4, !tbaa !39
  %i.dtr = getelementptr inbounds nuw [4 x i8], ptr %i.dsr, i64 %i.cuv ; 2 uses
  %i.dts = getelementptr inbounds nuw [4 x i8], ptr %i.dss, i64 %i.cuv ; 2 uses
  %i.dtt = getelementptr inbounds nuw [4 x i8], ptr %i.dst, i64 %i.cuv ; 2 uses
  %i.dtu = getelementptr inbounds nuw [4 x i8], ptr %i.dsu, i64 %i.cuv ; 2 uses
  %i.dtv = getelementptr inbounds nuw [4 x i8], ptr %i.dsv, i64 %i.cuv ; 2 uses
  %i.dtw = getelementptr inbounds nuw [4 x i8], ptr %i.dsw, i64 %i.cuv ; 2 uses
  %i.dtx = fmul fast <2 x float> %i.dgs, splat (float -2.500000e+00)
  %i.dty = fadd fast <2 x float> %i.czq, %i.dtx
  %i.dtz = fadd fast <2 x float> %i.dnu, %i.dty
  %i.dua = fmul fast <2 x float> %i.dde, splat (float f0x3FB504F3)
  %i.dub = fmul fast <2 x float> %i.dkg, splat (float f0x3F3504F3)
  %i.duc = fsub fast <2 x float> %i.dua, %i.dub   ; 2 uses
  %i.dud = fmul fast <2 x float> %i.dgs, splat (float 2.000000e+00)
  %i.due = fsub fast <2 x float> %i.dnu, %i.dud   ; 2 uses
  %i.duf = fsub fast <2 x float> %i.due, %i.duc
  %i.dug = fadd fast <2 x float> %i.due, %i.duc
  %i.duh = fmul fast <2 x float> %i.dgs, splat (float 5.000000e-01)
  %i.dui = fsub fast <2 x float> %i.dnu, %i.duh   ; 2 uses
  %i.duj = fmul fast <2 x float> %i.dkg, splat (float f0x3FB504F3)
  %i.duk = fmul fast <2 x float> %i.dde, splat (float f0x3F3504F3)
  %i.dul = fsub fast <2 x float> %i.duj, %i.duk   ; 2 uses
  %i.dum = fadd fast <2 x float> %i.dui, %i.dul
  %i.dun = fsub fast <2 x float> %i.dui, %i.dul
  store <2 x float> %i.dtz, ptr %i.dtr, align 4, !tbaa !39
  store <2 x float> %i.duf, ptr %i.dts, align 4, !tbaa !39
  store <2 x float> %i.dug, ptr %i.dtt, align 4, !tbaa !39
  store <2 x float> %i.dum, ptr %i.dtu, align 4, !tbaa !39
  store <2 x float> %i.dun, ptr %i.dtv, align 4, !tbaa !39
  %i.duo = fmul fast <2 x float> %i.dkg, splat (float -2.500000e+00)
  %i.dup = fadd fast <2 x float> %i.dde, %i.duo
  %i.duq = fadd fast <2 x float> %i.drt, %i.dup
  store <2 x float> %i.duq, ptr %i.dtw, align 4, !tbaa !39
  %i.dur = getelementptr inbounds nuw [4 x i8], ptr %i.dtr, i64 %i.cuv ; 2 uses
  %i.dus = getelementptr inbounds nuw [4 x i8], ptr %i.dts, i64 %i.cuv ; 2 uses
  %i.dut = getelementptr inbounds nuw [4 x i8], ptr %i.dtt, i64 %i.cuv ; 2 uses
  %i.duu = getelementptr inbounds nuw [4 x i8], ptr %i.dtu, i64 %i.cuv ; 2 uses
  %i.duv = getelementptr inbounds nuw [4 x i8], ptr %i.dtv, i64 %i.cuv ; 2 uses
  %i.duw = getelementptr inbounds nuw [4 x i8], ptr %i.dtw, i64 %i.cuv ; 2 uses
  %i.dux = fmul fast <2 x float> %i.dgx, splat (float -2.500000e+00)
  %i.duy = fadd fast <2 x float> %i.czv, %i.dux
  %i.duz = fadd fast <2 x float> %i.dnz, %i.duy
  %i.dva = fmul fast <2 x float> %i.ddj, splat (float f0x3FB504F3)
  %i.dvb = fmul fast <2 x float> %i.dkl, splat (float f0x3F3504F3)
  %i.dvc = fsub fast <2 x float> %i.dva, %i.dvb   ; 2 uses
  %i.dvd = fmul fast <2 x float> %i.dgx, splat (float 2.000000e+00)
  %i.dve = fsub fast <2 x float> %i.dnz, %i.dvd   ; 2 uses
  %i.dvf = fsub fast <2 x float> %i.dve, %i.dvc
  %i.dvg = fadd fast <2 x float> %i.dve, %i.dvc
  %i.dvh = fmul fast <2 x float> %i.dgx, splat (float 5.000000e-01)
  %i.dvi = fsub fast <2 x float> %i.dnz, %i.dvh   ; 2 uses
  %i.dvj = fmul fast <2 x float> %i.dkl, splat (float f0x3FB504F3)
  %i.dvk = fmul fast <2 x float> %i.ddj, splat (float f0x3F3504F3)
  %i.dvl = fsub fast <2 x float> %i.dvj, %i.dvk   ; 2 uses
  %i.dvm = fadd fast <2 x float> %i.dvi, %i.dvl
  %i.dvn = fsub fast <2 x float> %i.dvi, %i.dvl
  store <2 x float> %i.duz, ptr %i.dur, align 4, !tbaa !39
  store <2 x float> %i.dvf, ptr %i.dus, align 4, !tbaa !39
  store <2 x float> %i.dvg, ptr %i.dut, align 4, !tbaa !39
  store <2 x float> %i.dvm, ptr %i.duu, align 4, !tbaa !39
  store <2 x float> %i.dvn, ptr %i.duv, align 4, !tbaa !39
  %i.dvo = fmul fast <2 x float> %i.dkl, splat (float -2.500000e+00)
  %i.dvp = fadd fast <2 x float> %i.ddj, %i.dvo
  %i.dvq = fadd fast <2 x float> %i.drn, %i.dvp
  store <2 x float> %i.dvq, ptr %i.duw, align 4, !tbaa !39
  %i.dvr = getelementptr inbounds nuw [4 x i8], ptr %i.dur, i64 %i.cuv ; 2 uses
  %i.dvs = getelementptr inbounds nuw [4 x i8], ptr %i.dus, i64 %i.cuv ; 2 uses
  %i.dvt = getelementptr inbounds nuw [4 x i8], ptr %i.dut, i64 %i.cuv ; 2 uses
  %i.dvu = getelementptr inbounds nuw [4 x i8], ptr %i.duu, i64 %i.cuv ; 2 uses
  %i.dvv = getelementptr inbounds nuw [4 x i8], ptr %i.duv, i64 %i.cuv ; 2 uses
  %i.dvw = getelementptr inbounds nuw [4 x i8], ptr %i.duw, i64 %i.cuv ; 2 uses
  %i.dvx = fmul fast <2 x float> %i.dgy, splat (float -2.500000e+00)
  %i.dvy = fadd fast <2 x float> %i.czw, %i.dvx
  %i.dvz = fadd fast <2 x float> %i.doa, %i.dvy
  %i.dwa = fmul fast <2 x float> %i.ddk, splat (float f0x3FB504F3)
  %i.dwb = fmul fast <2 x float> %i.dkm, splat (float f0x3F3504F3)
  %i.dwc = fsub fast <2 x float> %i.dwa, %i.dwb   ; 2 uses
  %i.dwd = fmul fast <2 x float> %i.dgy, splat (float 2.000000e+00)
  %i.dwe = fsub fast <2 x float> %i.doa, %i.dwd   ; 2 uses
  %i.dwf = fsub fast <2 x float> %i.dwe, %i.dwc
  %i.dwg = fadd fast <2 x float> %i.dwe, %i.dwc
  %i.dwh = fmul fast <2 x float> %i.dgy, splat (float 5.000000e-01)
  %i.dwi = fsub fast <2 x float> %i.doa, %i.dwh   ; 2 uses
  %i.dwj = fmul fast <2 x float> %i.dkm, splat (float f0x3FB504F3)
  %i.dwk = fmul fast <2 x float> %i.ddk, splat (float f0x3F3504F3)
  %i.dwl = fsub fast <2 x float> %i.dwj, %i.dwk   ; 2 uses
  %i.dwm = fadd fast <2 x float> %i.dwi, %i.dwl
  %i.dwn = fsub fast <2 x float> %i.dwi, %i.dwl
  store <2 x float> %i.dvz, ptr %i.dvr, align 4, !tbaa !39
  store <2 x float> %i.dwf, ptr %i.dvs, align 4, !tbaa !39
  store <2 x float> %i.dwg, ptr %i.dvt, align 4, !tbaa !39
  store <2 x float> %i.dwm, ptr %i.dvu, align 4, !tbaa !39
  store <2 x float> %i.dwn, ptr %i.dvv, align 4, !tbaa !39
  %i.dwo = fmul fast <2 x float> %i.dkm, splat (float -2.500000e+00)
  %i.dwp = fadd fast <2 x float> %i.ddk, %i.dwo
  %i.dwq = fadd fast <2 x float> %i.drm, %i.dwp
  store <2 x float> %i.dwq, ptr %i.dvw, align 4, !tbaa !39
  %i.dwr = getelementptr inbounds nuw [4 x i8], ptr %i.dvr, i64 %i.cuv
  %i.dws = getelementptr inbounds nuw [4 x i8], ptr %i.dvs, i64 %i.cuv
  %i.dwt = getelementptr inbounds nuw [4 x i8], ptr %i.dvt, i64 %i.cuv
  %i.dwu = getelementptr inbounds nuw [4 x i8], ptr %i.dvu, i64 %i.cuv
  %i.dwv = getelementptr inbounds nuw [4 x i8], ptr %i.dvv, i64 %i.cuv
  %i.dww = getelementptr inbounds nuw [4 x i8], ptr %i.dvw, i64 %i.cuv
  %i.dwx = fmul fast <2 x float> %i.dha, splat (float -2.500000e+00)
  %i.dwy = fadd fast <2 x float> %i.czy, %i.dwx
  %i.dwz = fadd fast <2 x float> %i.doc, %i.dwy
  %i.dxa = fmul fast <2 x float> %i.ddm, splat (float f0x3FB504F3)
  %i.dxb = fmul fast <2 x float> %i.dko, splat (float f0x3F3504F3)
  %i.dxc = fsub fast <2 x float> %i.dxa, %i.dxb   ; 2 uses
  %i.dxd = fmul fast <2 x float> %i.dha, splat (float 2.000000e+00)
  %i.dxe = fsub fast <2 x float> %i.doc, %i.dxd   ; 2 uses
  %i.dxf = fsub fast <2 x float> %i.dxe, %i.dxc
  %i.dxg = fadd fast <2 x float> %i.dxe, %i.dxc
  %i.dxh = fmul fast <2 x float> %i.dha, splat (float 5.000000e-01)
  %i.dxi = fsub fast <2 x float> %i.doc, %i.dxh   ; 2 uses
  %i.dxj = fmul fast <2 x float> %i.dko, splat (float f0x3FB504F3)
  %i.dxk = fmul fast <2 x float> %i.ddm, splat (float f0x3F3504F3)
  %i.dxl = fsub fast <2 x float> %i.dxj, %i.dxk   ; 2 uses
  %i.dxm = fadd fast <2 x float> %i.dxi, %i.dxl
  %i.dxn = fsub fast <2 x float> %i.dxi, %i.dxl
  store <2 x float> %i.dwz, ptr %i.dwr, align 4, !tbaa !39
  store <2 x float> %i.dxf, ptr %i.dws, align 4, !tbaa !39
  store <2 x float> %i.dxg, ptr %i.dwt, align 4, !tbaa !39
  store <2 x float> %i.dxm, ptr %i.dwu, align 4, !tbaa !39
  store <2 x float> %i.dxn, ptr %i.dwv, align 4, !tbaa !39
  %i.dxo = fmul fast <2 x float> %i.dko, splat (float -2.500000e+00)
  %i.dxp = fadd fast <2 x float> %i.ddm, %i.dxo
  %i.dxq = fadd fast <2 x float> %i.drg, %i.dxp
  store <2 x float> %i.dxq, ptr %i.dww, align 4, !tbaa !39
  %indvars.iv.next1137 = add nuw nsw i64 %indvars.iv1136, 1 ; 2 uses
  %exitcond1140.not = icmp eq i64 %indvars.iv.next1137, %wide.trip.count1139
  br i1 %exitcond1140.not, label %._crit_edge.us1074, label %_ZN4ncnn3MatD2Ev.exit705.us, !llvm.loop !2867

._crit_edge.us1074:                               ; preds = %bb.lc
  %indvars.iv.next1142 = add nuw nsw i64 %indvars.iv1141, 1 ; 2 uses
  %exitcond1145.not = icmp eq i64 %indvars.iv.next1142, %wide.trip.count1144
  br i1 %exitcond1145.not, label %._crit_edge1069, label %_ZN4ncnn3MatD2Ev.exit705.lr.ph.us, !llvm.loop !2868

._crit_edge1069:                                  ; preds = %._crit_edge.us1074, %.lr.ph1068, %._crit_edge1048
  %i.dxr = shl nsw i32 %i.cud, 1
  %i.dxs = add nsw i32 %i.dxr, %i.cub             ; 2 uses
  %i.dxt = icmp slt i32 %i.dxs, %5
  br i1 %i.dxt, label %.lr.ph1091, label %._crit_edge1092

.lr.ph1091:                                       ; preds = %._crit_edge1069
  %i.dxu = load i32, ptr %i.b, align 4, !tbaa !67 ; 9 uses
  %i.dxv = icmp sgt i32 %i.dxu, 0
  %i.dxw = load i32, ptr %i.j, align 4            ; 2 uses
  %i.dxx = load i32, ptr %i.f, align 4
  %i.dxy = sext i32 %i.dxx to i64                 ; 5 uses
  %factor.op.mul1093 = mul i32 %i.dxu, 36
  %i.dxz = sext i32 %i.dxu to i64
  %i.dya = shl nsw i32 %i.dxu, 1
  %i.dyb = sext i32 %i.dya to i64
  %i.dyc = mul nsw i32 %i.dxu, 3
  %i.dyd = sext i32 %i.dyc to i64
  %i.dye = shl nsw i32 %i.dxu, 2
  %i.dyf = sext i32 %i.dye to i64
  %i.dyg = mul nsw i32 %i.dxu, 5
  %i.dyh = sext i32 %i.dyg to i64
  %i.dyi = mul nsw i32 %i.dxu, 6
  %i.dyj = sext i32 %i.dyi to i64                 ; 30 uses
  br i1 %i.dxv, label %.lr.ph1091.split.us, label %._crit_edge1092

.lr.ph1091.split.us:                              ; preds = %.lr.ph1091
  %i.dyk = load i32, ptr %i.g, align 4            ; 2 uses
  %i.dyl = load i32, ptr %i.c, align 4
  %i.dym = load i32, ptr %i.a, align 4
  %i.dyn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dyo = load i32, ptr %i.n, align 4, !tbaa !75, !noalias !2869
  %i.dyp = load ptr, ptr %0, align 8, !tbaa !18, !noalias !2869
  %i.dyq = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !2869
  %i.dyr = load i64, ptr %i.dyn, align 8, !tbaa !65, !noalias !2869 ; 2 uses
  %factor.op.mul1096 = mul i64 %i.dyq, %i.dyr
  %i.dys = sext i32 %i.dyo to i64
  %factor.op.mul1087.us = mul i64 %i.dyr, %i.dys
  %i.dyt = load ptr, ptr %1, align 8, !tbaa !18
  %i.dyu = sext i32 %i.dyk to i64                 ; 5 uses
  %i.dyv = sext i32 %i.dxs to i64
  %i.dyw = sext i32 %5 to i64
  %i.dyx = sext i32 %i.dyl to i64
  %wide.trip.count1157 = zext nneg i32 %i.dxu to i64
  %invariant.op1256 = add nsw i64 %i.dyu, -1
  %invariant.op1257 = add nsw i64 %i.dyu, -2
  %invariant.op1258 = add nsw i64 %i.dyu, -3
  %invariant.op1259 = add nsw i64 %i.dyu, -4
  %invariant.op1260 = add nsw i64 %i.dyu, -5
  br label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us

_ZN4ncnn3MatD2Ev.exit.lr.ph.us:                   ; preds = %._crit_edge.us1095, %.lr.ph1091.split.us
  %indvars.iv1159 = phi i64 [ %indvars.iv.next1160, %._crit_edge.us1095 ], [ %i.dyv, %.lr.ph1091.split.us ] ; 3 uses
  %i.dyy = add nsw i64 %indvars.iv1159, %i.dyx
  %.reass1097 = mul i64 %factor.op.mul1096, %i.dyy
  %i.dyz = getelementptr inbounds nuw i8, ptr %i.dyp, i64 %.reass1097
  %i.dza = trunc nsw i64 %indvars.iv1159 to i32
  %.reass1094.us = mul i32 %factor.op.mul1093, %i.dza
  %i.dzb = sext i32 %.reass1094.us to i64
  %i.dzc = getelementptr inbounds [4 x i8], ptr %i.dyt, i64 %i.dzb
  br label %_ZN4ncnn3MatD2Ev.exit.us

_ZN4ncnn3MatD2Ev.exit.us:                         ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, %bb.nq
  %indvars.iv1154 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit.lr.ph.us ], [ %indvars.iv.next1155, %bb.nq ] ; 3 uses
  %i.dzd = trunc i64 %indvars.iv1154 to i32
  %i.dze = add i32 %i.dym, %i.dzd                 ; 2 uses
  %i.dzf = sdiv i32 %i.dze, %i.dxw
  %i.dzg = srem i32 %i.dze, %i.dxw
  %i.dzh = shl nsw i32 %i.dzf, 2                  ; 2 uses
  %i.dzi = sext i32 %i.dzh to i64                 ; 6 uses
  %.reass1088.us = mul i64 %factor.op.mul1087.us, %i.dzi
  %i.dzj = getelementptr inbounds nuw i8, ptr %i.dyz, i64 %.reass1088.us
  %i.dzk = shl nsw i32 %i.dzg, 2                  ; 6 uses
  %i.dzl = sext i32 %i.dzk to i64
  %i.dzm = getelementptr inbounds [2 x i8], ptr %i.dzj, i64 %i.dzl ; 7 uses
  %i.dzn = or disjoint i32 %i.dzk, 1
  %i.dzo = load i32, ptr %i.f, align 4            ; 5 uses
  %i.dzp = icmp slt i32 %i.dzn, %i.dzo            ; 6 uses
  %i.dzq = or disjoint i32 %i.dzk, 2
  %i.dzr = icmp slt i32 %i.dzq, %i.dzo            ; 6 uses
  %i.dzs = or disjoint i32 %i.dzk, 3
  %i.dzt = icmp slt i32 %i.dzs, %i.dzo            ; 6 uses
  %i.dzu = add nsw i32 %i.dzk, 4
  %i.dzv = icmp slt i32 %i.dzu, %i.dzo            ; 6 uses
  %i.dzw = add nsw i32 %i.dzk, 5
  %i.dzx = icmp slt i32 %i.dzw, %i.dzo            ; 6 uses
  %i.dzy = icmp slt i32 %i.dzh, %i.dyk
  br i1 %i.dzy, label %bb.ld, label %bb.ln

bb.ld:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.us
  %i.dzz = load i16, ptr %i.dzm, align 2, !tbaa !595
  %i.eaa = zext i16 %i.dzz to i32
  %i.eab = shl nuw i32 %i.eaa, 16
  %i.eac = bitcast i32 %i.eab to float            ; 2 uses
  br i1 %i.dzp, label %bb.le, label %bb.lf

bb.le:                                            ; preds = %bb.ld
  %i.ead = getelementptr inbounds nuw i8, ptr %i.dzm, i64 2
  %i.eae = load i16, ptr %i.ead, align 2, !tbaa !595
  %i.eaf = zext i16 %i.eae to i32
  %i.eag = shl nuw i32 %i.eaf, 16
  %i.eah = bitcast i32 %i.eag to float
  br label %bb.lf

bb.lf:                                            ; preds = %bb.le, %bb.ld
  %.0629.us = phi nsz float [ %i.eah, %bb.le ], [ 0.000000e+00, %bb.ld ] ; 4 uses
  br i1 %i.dzr, label %bb.lg, label %bb.lh

bb.lg:                                            ; preds = %bb.lf
  %i.eai = getelementptr inbounds nuw i8, ptr %i.dzm, i64 4
  %i.eaj = load i16, ptr %i.eai, align 2, !tbaa !595
  %i.eak = zext i16 %i.eaj to i32
  %i.eal = shl nuw i32 %i.eak, 16
  %i.eam = bitcast i32 %i.eal to float
  br label %bb.lh

bb.lh:                                            ; preds = %bb.lg, %bb.lf
  %.0627.us = phi nsz float [ %i.eam, %bb.lg ], [ 0.000000e+00, %bb.lf ] ; 2 uses
  br i1 %i.dzt, label %bb.li, label %bb.lj

bb.li:                                            ; preds = %bb.lh
  %i.ean = getelementptr inbounds nuw i8, ptr %i.dzm, i64 6
  %i.eao = load i16, ptr %i.ean, align 2, !tbaa !595
  %i.eap = zext i16 %i.eao to i32
  %i.eaq = shl nuw i32 %i.eap, 16
  %i.ear = bitcast i32 %i.eaq to float
  br label %bb.lj

bb.lj:                                            ; preds = %bb.li, %bb.lh
  %.0625.us = phi nsz float [ %i.ear, %bb.li ], [ 0.000000e+00, %bb.lh ] ; 2 uses
  br i1 %i.dzv, label %bb.lk, label %bb.ll

bb.lk:                                            ; preds = %bb.lj
  %i.eas = getelementptr inbounds nuw i8, ptr %i.dzm, i64 8
  %i.eat = load i16, ptr %i.eas, align 2, !tbaa !595
  %i.eau = zext i16 %i.eat to i32
  %i.eav = shl nuw i32 %i.eau, 16
  %i.eaw = bitcast i32 %i.eav to float
  br label %bb.ll

bb.ll:                                            ; preds = %bb.lk, %bb.lj
  %.0623.us = phi nsz float [ %i.eaw, %bb.lk ], [ 0.000000e+00, %bb.lj ] ; 2 uses
  br i1 %i.dzx, label %bb.lm, label %bb.ln

bb.lm:                                            ; preds = %bb.ll
  %i.eax = getelementptr inbounds nuw i8, ptr %i.dzm, i64 10
  %i.eay = load i16, ptr %i.eax, align 2, !tbaa !595
  %i.eaz = zext i16 %i.eay to i32
  %i.eba = shl nuw i32 %i.eaz, 16
  %i.ebb = bitcast i32 %i.eba to float
  %i.ebc = fadd fast float %.0629.us, %i.ebb
  br label %bb.ln

bb.ln:                                            ; preds = %bb.lm, %bb.ll, %_ZN4ncnn3MatD2Ev.exit.us
  %.0631.us = phi nsz float [ %i.eac, %bb.lm ], [ %i.eac, %bb.ll ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit.us ]
  %.1630.us = phi nsz float [ %.0629.us, %bb.lm ], [ %.0629.us, %bb.ll ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit.us ] ; 2 uses
  %.1628.us = phi nsz float [ %.0627.us, %bb.lm ], [ %.0627.us, %bb.ll ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit.us ] ; 3 uses
  %.1626.us = phi nsz float [ %.0625.us, %bb.lm ], [ %.0625.us, %bb.ll ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit.us ] ; 3 uses
  %.1624.us = phi nsz float [ %.0623.us, %bb.lm ], [ %.0623.us, %bb.ll ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit.us ] ; 3 uses
  %.0622.us = phi float [ %i.ebc, %bb.lm ], [ %.0629.us, %bb.ll ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit.us ]
  %i.ebd = fmul fast float %.1630.us, f0x3FB504F3
  %i.ebe = fmul fast float %.1626.us, f0x3F3504F3
  %i.ebf = fsub fast float %i.ebd, %i.ebe         ; 2 uses
  %i.ebg = fmul fast float %.1628.us, 2.000000e+00
  %i.ebh = fsub fast float %.1624.us, %i.ebg      ; 2 uses
  %i.ebi = fmul fast float %.1626.us, f0x3FB504F3
  %i.ebj = fmul fast float %.1630.us, f0x3F3504F3
  %i.ebk = fsub fast float %i.ebi, %i.ebj         ; 2 uses
  %i.ebl = fmul fast float %.1628.us, 5.000000e-01
  %i.ebm = fsub fast float %.1624.us, %i.ebl      ; 2 uses
  %.neg1015.us = fmul fast float %.1628.us, -2.500000e+00
  %i.ebn = fadd fast float %.0631.us, %.neg1015.us
  %i.ebo = fadd fast float %i.ebn, %.1624.us
  %i.ebp = fsub fast float %i.ebh, %i.ebf
  %i.ebq = fadd fast float %i.ebh, %i.ebf
  %i.ebr = fadd fast float %i.ebm, %i.ebk
  %i.ebs = fsub fast float %i.ebm, %i.ebk
  %i.ebt = fmul fast float %.1626.us, 2.500000e+00
  %i.ebu = fsub fast float %.0622.us, %i.ebt
  %i.ebv = getelementptr inbounds [2 x i8], ptr %i.dzm, i64 %i.dxy ; 7 uses
  %i.ebw = icmp sgt i64 %invariant.op1256, %i.dzi
  br i1 %i.ebw, label %bb.lo, label %bb.ly

bb.lo:                                            ; preds = %bb.ln
  %i.ebx = load i16, ptr %i.ebv, align 2, !tbaa !595
  %i.eby = zext i16 %i.ebx to i32
  %i.ebz = shl nuw i32 %i.eby, 16
  %i.eca = bitcast i32 %i.ebz to float            ; 2 uses
  br i1 %i.dzp, label %bb.lp, label %bb.lq

bb.lp:                                            ; preds = %bb.lo
  %i.ecb = getelementptr inbounds nuw i8, ptr %i.ebv, i64 2
  %i.ecc = load i16, ptr %i.ecb, align 2, !tbaa !595
  %i.ecd = zext i16 %i.ecc to i32
  %i.ece = shl nuw i32 %i.ecd, 16
  %i.ecf = bitcast i32 %i.ece to float
  br label %bb.lq

bb.lq:                                            ; preds = %bb.lp, %bb.lo
  %.0629.us.1 = phi nsz float [ %i.ecf, %bb.lp ], [ 0.000000e+00, %bb.lo ] ; 4 uses
  br i1 %i.dzr, label %bb.lr, label %bb.ls

bb.lr:                                            ; preds = %bb.lq
  %i.ecg = getelementptr inbounds nuw i8, ptr %i.ebv, i64 4
  %i.ech = load i16, ptr %i.ecg, align 2, !tbaa !595
  %i.eci = zext i16 %i.ech to i32
  %i.ecj = shl nuw i32 %i.eci, 16
  %i.eck = bitcast i32 %i.ecj to float
  br label %bb.ls

bb.ls:                                            ; preds = %bb.lr, %bb.lq
  %.0627.us.1 = phi nsz float [ %i.eck, %bb.lr ], [ 0.000000e+00, %bb.lq ] ; 2 uses
  br i1 %i.dzt, label %bb.lt, label %bb.lu

bb.lt:                                            ; preds = %bb.ls
  %i.ecl = getelementptr inbounds nuw i8, ptr %i.ebv, i64 6
  %i.ecm = load i16, ptr %i.ecl, align 2, !tbaa !595
  %i.ecn = zext i16 %i.ecm to i32
  %i.eco = shl nuw i32 %i.ecn, 16
  %i.ecp = bitcast i32 %i.eco to float
  br label %bb.lu

bb.lu:                                            ; preds = %bb.lt, %bb.ls
  %.0625.us.1 = phi nsz float [ %i.ecp, %bb.lt ], [ 0.000000e+00, %bb.ls ] ; 2 uses
  br i1 %i.dzv, label %bb.lv, label %bb.lw

bb.lv:                                            ; preds = %bb.lu
  %i.ecq = getelementptr inbounds nuw i8, ptr %i.ebv, i64 8
  %i.ecr = load i16, ptr %i.ecq, align 2, !tbaa !595
  %i.ecs = zext i16 %i.ecr to i32
  %i.ect = shl nuw i32 %i.ecs, 16
  %i.ecu = bitcast i32 %i.ect to float
  br label %bb.lw

bb.lw:                                            ; preds = %bb.lv, %bb.lu
  %.0623.us.1 = phi nsz float [ %i.ecu, %bb.lv ], [ 0.000000e+00, %bb.lu ] ; 2 uses
  br i1 %i.dzx, label %bb.lx, label %bb.ly

bb.lx:                                            ; preds = %bb.lw
  %i.ecv = getelementptr inbounds nuw i8, ptr %i.ebv, i64 10
  %i.ecw = load i16, ptr %i.ecv, align 2, !tbaa !595
  %i.ecx = zext i16 %i.ecw to i32
  %i.ecy = shl nuw i32 %i.ecx, 16
  %i.ecz = bitcast i32 %i.ecy to float
  %i.eda = fadd fast float %.0629.us.1, %i.ecz
  br label %bb.ly

bb.ly:                                            ; preds = %bb.lx, %bb.lw, %bb.ln
  %.0631.us.1 = phi nsz float [ %i.eca, %bb.lx ], [ %i.eca, %bb.lw ], [ 0.000000e+00, %bb.ln ]
  %.1630.us.1 = phi nsz float [ %.0629.us.1, %bb.lx ], [ %.0629.us.1, %bb.lw ], [ 0.000000e+00, %bb.ln ] ; 2 uses
  %.1628.us.1 = phi nsz float [ %.0627.us.1, %bb.lx ], [ %.0627.us.1, %bb.lw ], [ 0.000000e+00, %bb.ln ] ; 3 uses
  %.1626.us.1 = phi nsz float [ %.0625.us.1, %bb.lx ], [ %.0625.us.1, %bb.lw ], [ 0.000000e+00, %bb.ln ] ; 3 uses
  %.1624.us.1 = phi nsz float [ %.0623.us.1, %bb.lx ], [ %.0623.us.1, %bb.lw ], [ 0.000000e+00, %bb.ln ] ; 3 uses
  %.0622.us.1 = phi float [ %i.eda, %bb.lx ], [ %.0629.us.1, %bb.lw ], [ 0.000000e+00, %bb.ln ]
end_hunk_12
begin_hunk_13_@_ZN4ncnnL47conv3x3s1_winograd43_transform_input_tile_bf16sERKNS_3MatERS0_iiiii:bb.a
  %i.elj = fmul fast float %.1626.us.5, 2.500000e+00
  %i.elk = fsub fast float %.0622.us.5, %i.elj
  %i.ell = getelementptr inbounds nuw [4 x i8], ptr %i.dzc, i64 %indvars.iv1154 ; 7 uses
  %i.elm = getelementptr inbounds nuw [4 x i8], ptr %i.ell, i64 %i.dxz ; 2 uses
  %i.eln = getelementptr inbounds nuw [4 x i8], ptr %i.ell, i64 %i.dyb ; 2 uses
  %i.elo = getelementptr inbounds nuw [4 x i8], ptr %i.ell, i64 %i.dyd ; 2 uses
  %i.elp = getelementptr inbounds nuw [4 x i8], ptr %i.ell, i64 %i.dyf ; 2 uses
  %i.elq = getelementptr inbounds nuw [4 x i8], ptr %i.ell, i64 %i.dyh ; 2 uses
  %i.elr = fmul fast float %i.edm, f0x3FB504F3
  %i.els = fmul fast float %i.ehi, f0x3F3504F3
  %i.elt = fsub fast float %i.elr, %i.els         ; 2 uses
  %i.elu = fmul fast float %i.efk, 2.000000e+00
  %i.elv = fsub fast float %i.ejg, %i.elu         ; 2 uses
  %i.elw = fmul fast float %i.ehi, f0x3FB504F3
  %i.elx = fmul fast float %i.edm, f0x3F3504F3
  %i.ely = fsub fast float %i.elw, %i.elx         ; 2 uses
  %i.elz = fmul fast float %i.efk, 5.000000e-01
  %i.ema = fsub fast float %i.ejg, %i.elz         ; 2 uses
  %.neg.us = fmul fast float %i.efk, -2.500000e+00
  %i.emb = fadd fast float %i.ebo, %.neg.us
  %i.emc = fadd fast float %i.emb, %i.ejg
  store float %i.emc, ptr %i.ell, align 4, !tbaa !39
  %i.emd = fsub fast float %i.elv, %i.elt
  store float %i.emd, ptr %i.elm, align 4, !tbaa !39
  %i.eme = fadd fast float %i.elv, %i.elt
  store float %i.eme, ptr %i.eln, align 4, !tbaa !39
  %i.emf = fadd fast float %i.ema, %i.ely
  store float %i.emf, ptr %i.elo, align 4, !tbaa !39
  %i.emg = fsub fast float %i.ema, %i.ely
  store float %i.emg, ptr %i.elp, align 4, !tbaa !39
  %.neg1014.us = fmul fast float %i.ehi, -2.500000e+00
  %i.emh = fadd fast float %i.edm, %.neg1014.us
  %i.emi = fadd fast float %i.emh, %i.ele
  store float %i.emi, ptr %i.elq, align 4, !tbaa !39
  %i.emj = getelementptr inbounds nuw [4 x i8], ptr %i.ell, i64 %i.dyj ; 2 uses
  %i.emk = getelementptr inbounds nuw [4 x i8], ptr %i.elm, i64 %i.dyj ; 2 uses
  %i.eml = getelementptr inbounds nuw [4 x i8], ptr %i.eln, i64 %i.dyj ; 2 uses
  %i.emm = getelementptr inbounds nuw [4 x i8], ptr %i.elo, i64 %i.dyj ; 2 uses
  %i.emn = getelementptr inbounds nuw [4 x i8], ptr %i.elp, i64 %i.dyj ; 2 uses
  %i.emo = getelementptr inbounds nuw [4 x i8], ptr %i.elq, i64 %i.dyj ; 2 uses
  %i.emp = fmul fast float %i.edn, f0x3FB504F3
  %i.emq = fmul fast float %i.ehj, f0x3F3504F3
  %i.emr = fsub fast float %i.emp, %i.emq         ; 2 uses
  %i.ems = fmul fast float %i.efl, 2.000000e+00
  %i.emt = fsub fast float %i.ejh, %i.ems         ; 2 uses
  %i.emu = fmul fast float %i.ehj, f0x3FB504F3
  %i.emv = fmul fast float %i.edn, f0x3F3504F3
  %i.emw = fsub fast float %i.emu, %i.emv         ; 2 uses
  %i.emx = fmul fast float %i.efl, 5.000000e-01
  %i.emy = fsub fast float %i.ejh, %i.emx         ; 2 uses
  %.neg.us.1 = fmul fast float %i.efl, -2.500000e+00
  %i.emz = fadd fast float %i.ebp, %.neg.us.1
  %i.ena = fadd fast float %i.emz, %i.ejh
  store float %i.ena, ptr %i.emj, align 4, !tbaa !39
  %i.enb = fsub fast float %i.emt, %i.emr
  store float %i.enb, ptr %i.emk, align 4, !tbaa !39
  %i.enc = fadd fast float %i.emt, %i.emr
  store float %i.enc, ptr %i.eml, align 4, !tbaa !39
  %i.end = fadd fast float %i.emy, %i.emw
  store float %i.end, ptr %i.emm, align 4, !tbaa !39
  %i.ene = fsub fast float %i.emy, %i.emw
  store float %i.ene, ptr %i.emn, align 4, !tbaa !39
  %.neg1014.us.1 = fmul fast float %i.ehj, -2.500000e+00
  %i.enf = fadd fast float %i.edn, %.neg1014.us.1
  %i.eng = fadd fast float %i.enf, %i.elf
  store float %i.eng, ptr %i.emo, align 4, !tbaa !39
  %i.enh = getelementptr inbounds nuw [4 x i8], ptr %i.emj, i64 %i.dyj ; 2 uses
  %i.eni = getelementptr inbounds nuw [4 x i8], ptr %i.emk, i64 %i.dyj ; 2 uses
  %i.enj = getelementptr inbounds nuw [4 x i8], ptr %i.eml, i64 %i.dyj ; 2 uses
  %i.enk = getelementptr inbounds nuw [4 x i8], ptr %i.emm, i64 %i.dyj ; 2 uses
  %i.enl = getelementptr inbounds nuw [4 x i8], ptr %i.emn, i64 %i.dyj ; 2 uses
  %i.enm = getelementptr inbounds nuw [4 x i8], ptr %i.emo, i64 %i.dyj ; 2 uses
  %i.enn = fmul fast float %i.edo, f0x3FB504F3
  %i.eno = fmul fast float %i.ehk, f0x3F3504F3
  %i.enp = fsub fast float %i.enn, %i.eno         ; 2 uses
  %i.enq = fmul fast float %i.efm, 2.000000e+00
  %i.enr = fsub fast float %i.eji, %i.enq         ; 2 uses
  %i.ens = fmul fast float %i.ehk, f0x3FB504F3
  %i.ent = fmul fast float %i.edo, f0x3F3504F3
  %i.enu = fsub fast float %i.ens, %i.ent         ; 2 uses
  %i.env = fmul fast float %i.efm, 5.000000e-01
  %i.enw = fsub fast float %i.eji, %i.env         ; 2 uses
  %.neg.us.2 = fmul fast float %i.efm, -2.500000e+00
  %i.enx = fadd fast float %i.ebq, %.neg.us.2
  %i.eny = fadd fast float %i.enx, %i.eji
  store float %i.eny, ptr %i.enh, align 4, !tbaa !39
  %i.enz = fsub fast float %i.enr, %i.enp
  store float %i.enz, ptr %i.eni, align 4, !tbaa !39
  %i.eoa = fadd fast float %i.enr, %i.enp
  store float %i.eoa, ptr %i.enj, align 4, !tbaa !39
  %i.eob = fadd fast float %i.enw, %i.enu
  store float %i.eob, ptr %i.enk, align 4, !tbaa !39
  %i.eoc = fsub fast float %i.enw, %i.enu
  store float %i.eoc, ptr %i.enl, align 4, !tbaa !39
  %.neg1014.us.2 = fmul fast float %i.ehk, -2.500000e+00
  %i.eod = fadd fast float %i.edo, %.neg1014.us.2
  %i.eoe = fadd fast float %i.eod, %i.elg
  store float %i.eoe, ptr %i.enm, align 4, !tbaa !39
  %i.eof = getelementptr inbounds nuw [4 x i8], ptr %i.enh, i64 %i.dyj ; 2 uses
  %i.eog = getelementptr inbounds nuw [4 x i8], ptr %i.eni, i64 %i.dyj ; 2 uses
  %i.eoh = getelementptr inbounds nuw [4 x i8], ptr %i.enj, i64 %i.dyj ; 2 uses
  %i.eoi = getelementptr inbounds nuw [4 x i8], ptr %i.enk, i64 %i.dyj ; 2 uses
  %i.eoj = getelementptr inbounds nuw [4 x i8], ptr %i.enl, i64 %i.dyj ; 2 uses
  %i.eok = getelementptr inbounds nuw [4 x i8], ptr %i.enm, i64 %i.dyj ; 2 uses
  %i.eol = fmul fast float %i.edp, f0x3FB504F3
  %i.eom = fmul fast float %i.ehl, f0x3F3504F3
  %i.eon = fsub fast float %i.eol, %i.eom         ; 2 uses
  %i.eoo = fmul fast float %i.efn, 2.000000e+00
  %i.eop = fsub fast float %i.ejj, %i.eoo         ; 2 uses
  %i.eoq = fmul fast float %i.ehl, f0x3FB504F3
  %i.eor = fmul fast float %i.edp, f0x3F3504F3
  %i.eos = fsub fast float %i.eoq, %i.eor         ; 2 uses
  %i.eot = fmul fast float %i.efn, 5.000000e-01
  %i.eou = fsub fast float %i.ejj, %i.eot         ; 2 uses
  %.neg.us.3 = fmul fast float %i.efn, -2.500000e+00
  %i.eov = fadd fast float %i.ebr, %.neg.us.3
  %i.eow = fadd fast float %i.eov, %i.ejj
  store float %i.eow, ptr %i.eof, align 4, !tbaa !39
  %i.eox = fsub fast float %i.eop, %i.eon
  store float %i.eox, ptr %i.eog, align 4, !tbaa !39
  %i.eoy = fadd fast float %i.eop, %i.eon
  store float %i.eoy, ptr %i.eoh, align 4, !tbaa !39
  %i.eoz = fadd fast float %i.eou, %i.eos
  store float %i.eoz, ptr %i.eoi, align 4, !tbaa !39
  %i.epa = fsub fast float %i.eou, %i.eos
  store float %i.epa, ptr %i.eoj, align 4, !tbaa !39
  %.neg1014.us.3 = fmul fast float %i.ehl, -2.500000e+00
  %i.epb = fadd fast float %i.edp, %.neg1014.us.3
  %i.epc = fadd fast float %i.epb, %i.elh
  store float %i.epc, ptr %i.eok, align 4, !tbaa !39
  %i.epd = getelementptr inbounds nuw [4 x i8], ptr %i.eof, i64 %i.dyj ; 2 uses
  %i.epe = getelementptr inbounds nuw [4 x i8], ptr %i.eog, i64 %i.dyj ; 2 uses
  %i.epf = getelementptr inbounds nuw [4 x i8], ptr %i.eoh, i64 %i.dyj ; 2 uses
  %i.epg = getelementptr inbounds nuw [4 x i8], ptr %i.eoi, i64 %i.dyj ; 2 uses
  %i.eph = getelementptr inbounds nuw [4 x i8], ptr %i.eoj, i64 %i.dyj ; 2 uses
  %i.epi = getelementptr inbounds nuw [4 x i8], ptr %i.eok, i64 %i.dyj ; 2 uses
  %i.epj = fmul fast float %i.edq, f0x3FB504F3
  %i.epk = fmul fast float %i.ehm, f0x3F3504F3
  %i.epl = fsub fast float %i.epj, %i.epk         ; 2 uses
  %i.epm = fmul fast float %i.efo, 2.000000e+00
  %i.epn = fsub fast float %i.ejk, %i.epm         ; 2 uses
  %i.epo = fmul fast float %i.ehm, f0x3FB504F3
  %i.epp = fmul fast float %i.edq, f0x3F3504F3
  %i.epq = fsub fast float %i.epo, %i.epp         ; 2 uses
  %i.epr = fmul fast float %i.efo, 5.000000e-01
  %i.eps = fsub fast float %i.ejk, %i.epr         ; 2 uses
  %.neg.us.4 = fmul fast float %i.efo, -2.500000e+00
  %i.ept = fadd fast float %i.ebs, %.neg.us.4
  %i.epu = fadd fast float %i.ept, %i.ejk
  store float %i.epu, ptr %i.epd, align 4, !tbaa !39
  %i.epv = fsub fast float %i.epn, %i.epl
  store float %i.epv, ptr %i.epe, align 4, !tbaa !39
  %i.epw = fadd fast float %i.epn, %i.epl
  store float %i.epw, ptr %i.epf, align 4, !tbaa !39
  %i.epx = fadd fast float %i.eps, %i.epq
  store float %i.epx, ptr %i.epg, align 4, !tbaa !39
  %i.epy = fsub fast float %i.eps, %i.epq
  store float %i.epy, ptr %i.eph, align 4, !tbaa !39
  %.neg1014.us.4 = fmul fast float %i.ehm, -2.500000e+00
  %i.epz = fadd fast float %i.edq, %.neg1014.us.4
  %i.eqa = fadd fast float %i.epz, %i.eli
  store float %i.eqa, ptr %i.epi, align 4, !tbaa !39
  %i.eqb = getelementptr inbounds nuw [4 x i8], ptr %i.epd, i64 %i.dyj
  %i.eqc = getelementptr inbounds nuw [4 x i8], ptr %i.epe, i64 %i.dyj
  %i.eqd = getelementptr inbounds nuw [4 x i8], ptr %i.epf, i64 %i.dyj
  %i.eqe = getelementptr inbounds nuw [4 x i8], ptr %i.epg, i64 %i.dyj
  %i.eqf = getelementptr inbounds nuw [4 x i8], ptr %i.eph, i64 %i.dyj
  %i.eqg = getelementptr inbounds nuw [4 x i8], ptr %i.epi, i64 %i.dyj
  %i.eqh = fmul fast float %i.eds, f0x3FB504F3
  %i.eqi = fmul fast float %i.eho, f0x3F3504F3
  %i.eqj = fsub fast float %i.eqh, %i.eqi         ; 2 uses
  %i.eqk = fmul fast float %i.efq, 2.000000e+00
  %i.eql = fsub fast float %i.ejm, %i.eqk         ; 2 uses
  %i.eqm = fmul fast float %i.eho, f0x3FB504F3
  %i.eqn = fmul fast float %i.eds, f0x3F3504F3
  %i.eqo = fsub fast float %i.eqm, %i.eqn         ; 2 uses
  %i.eqp = fmul fast float %i.efq, 5.000000e-01
  %i.eqq = fsub fast float %i.ejm, %i.eqp         ; 2 uses
  %.neg.us.5 = fmul fast float %i.efq, -2.500000e+00
  %i.eqr = fadd fast float %i.ebu, %.neg.us.5
  %i.eqs = fadd fast float %i.eqr, %i.ejm
  store float %i.eqs, ptr %i.eqb, align 4, !tbaa !39
  %i.eqt = fsub fast float %i.eql, %i.eqj
  store float %i.eqt, ptr %i.eqc, align 4, !tbaa !39
  %i.equ = fadd fast float %i.eql, %i.eqj
  store float %i.equ, ptr %i.eqd, align 4, !tbaa !39
  %i.eqv = fadd fast float %i.eqq, %i.eqo
  store float %i.eqv, ptr %i.eqe, align 4, !tbaa !39
  %i.eqw = fsub fast float %i.eqq, %i.eqo
  store float %i.eqw, ptr %i.eqf, align 4, !tbaa !39
  %.neg1014.us.5 = fmul fast float %i.eho, -2.500000e+00
  %i.eqx = fadd fast float %i.eds, %.neg1014.us.5
  %i.eqy = fadd fast float %i.eqx, %i.elk
  store float %i.eqy, ptr %i.eqg, align 4, !tbaa !39
  %indvars.iv.next1155 = add nuw nsw i64 %indvars.iv1154, 1 ; 2 uses
  %exitcond1158.not = icmp eq i64 %indvars.iv.next1155, %wide.trip.count1157
  br i1 %exitcond1158.not, label %._crit_edge.us1095, label %_ZN4ncnn3MatD2Ev.exit.us, !llvm.loop !2872

._crit_edge.us1095:                               ; preds = %bb.nq
  %indvars.iv.next1160 = add nsw i64 %indvars.iv1159, 1 ; 2 uses
  %7 = icmp slt i64 %indvars.iv.next1160, %i.dyw
  br i1 %7, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, label %._crit_edge1092, !llvm.loop !2873

._crit_edge1092:                                  ; preds = %._crit_edge.us1095, %.lr.ph1091, %._crit_edge1069
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.nr

bb.nr:                                            ; preds = %._crit_edge1092, %bb.b
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL26conv3x3s1_winograd43_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %i.h = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i32 %i.j, ptr %i.e, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store i32 1, ptr %i.f, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store i32 0, ptr %i.g, align 4, !tbaa !67
  %i.k = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f, i32 1, i32 1)
  %i.l = load i32, ptr %i.e, align 4, !tbaa !67
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 2 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !67
  %i.n = load i32, ptr %i.d, align 4, !tbaa !67   ; 2 uses
  %.not66 = icmp sgt i32 %i.n, %i.m
  br i1 %.not66, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 52
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 52
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.067 = phi i32 [ %i.n, %.lr.ph ], [ %i.dv, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.at = load i32, ptr %3, align 4, !tbaa !67    ; 2 uses
  %i.au = sdiv i32 %.067, %i.at
  %i.av = srem i32 %.067, %i.at
  %i.aw = load i32, ptr %4, align 4, !tbaa !67    ; 2 uses
  %i.ax = mul nsw i32 %i.aw, %i.au                ; 3 uses
  %i.ay = load i32, ptr %5, align 4, !tbaa !67    ; 2 uses
  %i.az = mul nsw i32 %i.ay, %i.av                ; 3 uses
  %i.ba = load i32, ptr %6, align 4, !tbaa !67
  %i.bb = sub nsw i32 %i.ba, %i.ax
  %.sroa.speculated63 = call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.bb) ; 2 uses
  %i.bc = load i32, ptr %7, align 4, !tbaa !67
  %i.bd = sub nsw i32 %i.bc, %i.az
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ay, i32 %i.bd) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.be = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %bb.d unwind label %bb.s

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !2874)
  %i.bf = load i32, ptr %i.o, align 4, !tbaa !75, !noalias !2874 ; 2 uses
  %i.bg = load i32, ptr %i.p, align 8, !tbaa !76, !noalias !2874 ; 2 uses
  %i.bh = load i32, ptr %i.q, align 4, !tbaa !226, !noalias !2874
  %i.bi = load ptr, ptr %8, align 8, !tbaa !18, !noalias !2874
  %i.bj = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !2874
  %i.bk = sext i32 %i.be to i64
  %i.bl = mul i64 %i.bj, %i.bk
  %i.bm = load i64, ptr %i.s, align 8, !tbaa !65, !noalias !2874 ; 4 uses
  %i.bn = mul i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bn
  %i.bp = load i32, ptr %i.t, align 8, !tbaa !66, !noalias !2874
  %i.bq = load ptr, ptr %i.u, align 8, !tbaa !17, !noalias !2874
  store ptr %i.bo, ptr %11, align 8, !tbaa !18, !alias.scope !2874
  store ptr null, ptr %i.v, align 8, !tbaa !11, !alias.scope !2874
  store i64 %i.bm, ptr %i.w, align 8, !tbaa !65, !alias.scope !2874
  store i32 %i.bp, ptr %i.x, align 8, !tbaa !66, !alias.scope !2874
  store ptr %i.bq, ptr %i.y, align 8, !tbaa !17, !alias.scope !2874
  store i32 %i.bf, ptr %i.aa, align 4, !tbaa !75, !alias.scope !2874
  store i32 %i.bg, ptr %i.ab, align 8, !tbaa !76, !alias.scope !2874
  store i32 1, ptr %i.ac, align 4, !tbaa !226, !alias.scope !2874
  store i32 %i.bh, ptr %i.ad, align 8, !tbaa !68, !alias.scope !2874
  %i.br = sext i32 %i.bf to i64
  %i.bs = sext i32 %i.bg to i64
  %i.bt = mul nsw i64 %i.bs, %i.br                ; 2 uses
  %i.bu = mul i64 %i.bm, %i.bt
  %i.bv = add i64 %i.bu, 15
  %i.bw = and i64 %i.bv, -16
  %i.bx = udiv i64 %i.bw, %i.bm
  store i64 %i.bx, ptr %i.ae, align 8, !tbaa !20, !alias.scope !2874
  %i.by = load i32, ptr %i.af, align 8, !tbaa !225, !noalias !2874 ; 2 uses
  %i.bz = add nsw i32 %i.by, -1
  store i32 %i.bz, ptr %i.z, align 8, !tbaa !225, !alias.scope !2874
  %i.ca = icmp eq i32 %i.by, 4
  br i1 %i.ca, label %bb.e, label %_ZN4ncnn3Mat7channelEi.exit48

bb.e:                                             ; preds = %bb.d
  store i64 %i.bt, ptr %i.ae, align 8, !tbaa !20, !alias.scope !2874
  br label %_ZN4ncnn3Mat7channelEi.exit48

_ZN4ncnn3Mat7channelEi.exit48:                    ; preds = %bb.e, %bb.d
  invoke fastcc void @_ZN4ncnnL47conv3x3s1_winograd43_transform_input_tile_bf16sERKNS_3MatERS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.ax, i32 noundef %.sroa.speculated63, i32 noundef %i.az, i32 noundef %.sroa.speculated, i32 noundef 1)
          to label %_ZN4ncnn3MatD2Ev.exit34 unwind label %bb.s

_ZN4ncnn3MatD2Ev.exit34:                          ; preds = %_ZN4ncnn3Mat7channelEi.exit48
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.cb = load i32, ptr %4, align 4, !tbaa !67
  %i.cc = sdiv i32 %i.ax, %i.cb
  %i.cd = load ptr, ptr %10, align 8, !tbaa !18, !noalias !2877
  %i.ce = load i64, ptr %i.ai, align 8, !tbaa !20, !noalias !2877
  %i.cf = sext i32 %i.cc to i64
  %i.cg = mul i64 %i.ce, %i.cf
  %i.ch = load i64, ptr %i.aj, align 8, !tbaa !65, !noalias !2877 ; 3 uses
  %i.ci = mul i64 %i.cg, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ci
  %i.ck = load i32, ptr %i.ak, align 8, !tbaa !66, !noalias !2877
  %i.cl = load ptr, ptr %i.al, align 8, !tbaa !17, !noalias !2877
  %i.cm = load i32, ptr %5, align 4, !tbaa !67
  %i.cn = sdiv i32 %i.az, %i.cm
  %i.co = sext i32 %i.cn to i64
  store ptr null, ptr %i.am, align 8, !tbaa !11
  store i64 %i.ch, ptr %i.an, align 8, !tbaa !65
  store i32 %i.ck, ptr %i.ao, align 8, !tbaa !66
  store ptr %i.cl, ptr %i.ap, align 8, !tbaa !17
  %i.cp = load <2 x i32>, ptr %i.ag, align 4, !tbaa !67, !noalias !2877
  %i.cq = load i32, ptr %i.ah, align 8, !tbaa !76, !noalias !2877
  %i.cr = load i32, ptr %i.ag, align 4, !tbaa !75, !noalias !2877
  %i.cs = sext i32 %i.cr to i64
  %i.ct = sext i32 %i.cq to i64
  %i.cu = mul nsw i64 %i.ct, %i.cs                ; 2 uses
  %i.cv = mul i64 %i.ch, %i.cu
  %i.cw = mul i64 %i.cv, %i.co
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cw
  store ptr %i.cx, ptr %12, align 8, !tbaa !18
  %i.cy = shufflevector <2 x i32> %i.cp, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.cz = shufflevector <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, <4 x i32> %i.cy, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i32> %i.cz, ptr %i.aq, align 8, !tbaa !67
  store i32 1, ptr %i.ar, align 8, !tbaa !68
  store i64 %i.cu, ptr %i.as, align 8, !tbaa !20, !alias.scope !2880
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.da = call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 36, ptr %i.a, align 4, !tbaa !67
  store i32 %.sroa.speculated63, ptr %i.b, align 4, !tbaa !67
  store i32 %.sroa.speculated, ptr %i.c, align 4, !tbaa !67
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.da, i32 1)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN4ncnnL21transpose_pack_B_tileERKNS_3MatERS0_iiii.omp_outlined, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %12, ptr nonnull %i.b, ptr nonnull align 8 dereferenceable(72) %11, ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.db = load ptr, ptr %i.am, align 8, !tbaa !11 ; 2 uses
  %.not.i35 = icmp eq ptr %i.db, null
  br i1 %.not.i35, label %_ZN4ncnn3MatD2Ev.exit33, label %bb.f

end_hunk_13
begin_hunk_14_@_ZN4ncnnL47conv3x3s1_winograd63_transform_input_tile_bf16sERKNS_3MatERS0_iiiii:bb.a
  %i.fcy = fsub fast <2 x float> %i.fct, %i.fcv
  store <2 x float> %i.fcy, ptr %i.fcx, align 8, !tbaa !39
  %i.fcz = getelementptr inbounds nuw [8 x i8], ptr %i.ewd, i64 %indvars.iv1576
  %i.fda = fmul fast <2 x float> %i.fcd, splat (float 2.500000e-01)
  %i.fdb = fadd fast <2 x float> %i.fda, %i.fcf
  %i.fdc = fmul fast <2 x float> %i.fcc, splat (float -1.250000e+00)
  %i.fdd = fadd fast <2 x float> %i.fdb, %i.fdc   ; 2 uses
  %i.fde = fmul fast <2 x float> %i.fcg, splat (float 5.000000e-01)
  %i.fdf = fmul fast <2 x float> %i.fch, splat (float 2.500000e+00) ; 2 uses
  %i.fdg = fsub fast <2 x float> %i.fde, %i.fdf
  %i.fdh = fmul fast <2 x float> %i.fci, splat (float 2.000000e+00)
  %i.fdi = fadd fast <2 x float> %i.fdh, %i.fdg   ; 2 uses
  %i.fdj = fadd fast <2 x float> %i.fdd, %i.fdi
  store <2 x float> %i.fdj, ptr %i.fcz, align 8, !tbaa !39
  %i.fdk = getelementptr inbounds nuw [8 x i8], ptr %i.ewe, i64 %indvars.iv1576
  %i.fdl = fsub fast <2 x float> %i.fdd, %i.fdi
  store <2 x float> %i.fdl, ptr %i.fdk, align 8, !tbaa !39
  %i.fdm = getelementptr inbounds nuw [8 x i8], ptr %i.ewf, i64 %indvars.iv1576
  %i.fdn = fmul fast <2 x float> %i.fcd, splat (float 4.000000e+00)
  %i.fdo = fmul fast <2 x float> %i.fcc, splat (float 5.000000e+00)
  %i.fdp = fsub fast <2 x float> %i.fdn, %i.fdo
  %i.fdq = fadd fast <2 x float> %i.fcf, %i.fdp   ; 2 uses
  %i.fdr = fmul fast <2 x float> %i.fcg, splat (float 2.000000e+00)
  %i.fds = fmul fast <2 x float> %i.fci, splat (float 5.000000e-01)
  %i.fdt = fsub fast <2 x float> %i.fdr, %i.fdf
  %i.fdu = fadd fast <2 x float> %i.fds, %i.fdt   ; 2 uses
  %i.fdv = fadd fast <2 x float> %i.fdq, %i.fdu
  store <2 x float> %i.fdv, ptr %i.fdm, align 8, !tbaa !39
  %i.fdw = getelementptr inbounds nuw [8 x i8], ptr %i.ewg, i64 %indvars.iv1576
  %i.fdx = fsub fast <2 x float> %i.fdq, %i.fdu
  store <2 x float> %i.fdx, ptr %i.fdw, align 8, !tbaa !39
  %i.fdy = getelementptr inbounds nuw [8 x i8], ptr %i.ewh, i64 %indvars.iv1576
  %i.fdz = fsub fast <2 x float> %i.fch, %i.fci
  %i.fea = fmul fast <2 x float> %i.fdz, splat (float 5.250000e+00)
  %i.feb = fsub fast <2 x float> %i.fea, %i.fcg
  %i.fec = fadd fast <2 x float> %i.feb, %i.fcj
  store <2 x float> %i.fec, ptr %i.fdy, align 8, !tbaa !39
  %i.fed = getelementptr inbounds [2 x i8], ptr %.09461496.us, i64 %i.ewj
  %indvars.iv.next1577 = add nuw nsw i64 %indvars.iv1576, 1 ; 2 uses
  %exitcond1579.not = icmp eq i64 %indvars.iv.next1577, 8
  br i1 %exitcond1579.not, label %bb.oz, label %bb.oj, !llvm.loop !2949

bb.oz:                                            ; preds = %bb.oy
  %.idx1617 = shl nuw nsw i64 %indvars.iv1584, 3
  %i.fee = getelementptr inbounds nuw i8, ptr %i.exu, i64 %.idx1617 ; 8 uses
  %i.fef = getelementptr inbounds nuw [4 x i8], ptr %i.fee, i64 %i.ewl
  %i.feg = getelementptr inbounds nuw [4 x i8], ptr %i.fee, i64 %i.ewn
  %i.feh = getelementptr inbounds nuw [4 x i8], ptr %i.fee, i64 %i.ewp
  %i.fei = getelementptr inbounds nuw [4 x i8], ptr %i.fee, i64 %i.ewr
  %i.fej = getelementptr inbounds nuw [4 x i8], ptr %i.fee, i64 %i.ewt
  %i.fek = getelementptr inbounds nuw [4 x i8], ptr %i.fee, i64 %i.ewv
  %i.fel = getelementptr inbounds nuw [4 x i8], ptr %i.fee, i64 %i.ewx
  br label %bb.pa

bb.pa:                                            ; preds = %bb.pa, %bb.oz
  %indvars.iv1580 = phi i64 [ %indvars.iv.next1581, %bb.pa ], [ 0, %bb.oz ] ; 2 uses
  %.08981505.us = phi ptr [ %i.fgu, %bb.pa ], [ %i.fel, %bb.oz ] ; 2 uses
  %.08991504.us = phi ptr [ %i.fgt, %bb.pa ], [ %i.fek, %bb.oz ] ; 2 uses
  %.09001503.us = phi ptr [ %i.fgs, %bb.pa ], [ %i.fej, %bb.oz ] ; 2 uses
  %.09011502.us = phi ptr [ %i.fgr, %bb.pa ], [ %i.fei, %bb.oz ] ; 2 uses
  %.09021501.us = phi ptr [ %i.fgq, %bb.pa ], [ %i.feh, %bb.oz ] ; 2 uses
  %.09031500.us = phi ptr [ %i.fgp, %bb.pa ], [ %i.feg, %bb.oz ] ; 2 uses
  %.09041499.us = phi ptr [ %i.fgo, %bb.pa ], [ %i.fef, %bb.oz ] ; 2 uses
  %.09051498.us = phi ptr [ %i.fgn, %bb.pa ], [ %i.fee, %bb.oz ] ; 2 uses
  %i.fem = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %indvars.iv1580 ; 8 uses
  %i.fen = getelementptr inbounds nuw i8, ptr %i.fem, i64 8
  %i.feo = getelementptr inbounds nuw i8, ptr %i.fem, i64 16
  %i.fep = getelementptr inbounds nuw i8, ptr %i.fem, i64 24
  %i.feq = getelementptr inbounds nuw i8, ptr %i.fem, i64 32
  %i.fer = getelementptr inbounds nuw i8, ptr %i.fem, i64 40
  %i.fes = getelementptr inbounds nuw i8, ptr %i.fem, i64 48
  %i.fet = getelementptr inbounds nuw i8, ptr %i.fem, i64 56
  %i.feu = load <2 x float>, ptr %i.fem, align 16, !tbaa !39
  %i.fev = load <2 x float>, ptr %i.feo, align 16, !tbaa !39 ; 4 uses
  %i.few = load <2 x float>, ptr %i.feq, align 16, !tbaa !39 ; 4 uses
  %i.fex = load <2 x float>, ptr %i.fes, align 16, !tbaa !39 ; 4 uses
  %i.fey = fsub fast <2 x float> %i.few, %i.fev
  %i.fez = fmul fast <2 x float> %i.fey, splat (float 5.250000e+00)
  %i.ffa = fadd fast <2 x float> %i.fez, %i.feu
  %i.ffb = fsub fast <2 x float> %i.ffa, %i.fex
  store <2 x float> %i.ffb, ptr %.09051498.us, align 4, !tbaa !39
  %i.ffc = load <2 x float>, ptr %i.fen, align 8, !tbaa !39 ; 4 uses
  %i.ffd = load <2 x float>, ptr %i.fep, align 8, !tbaa !39 ; 3 uses
  %i.ffe = load <2 x float>, ptr %i.fer, align 8, !tbaa !39 ; 4 uses
  %i.fff = fmul fast <2 x float> %i.ffd, splat (float 4.250000e+00)
  %i.ffg = fsub fast <2 x float> %i.ffc, %i.fff
  %i.ffh = fadd fast <2 x float> %i.ffg, %i.ffe   ; 2 uses
  %i.ffi = fmul fast <2 x float> %i.few, splat (float 4.250000e+00)
  %i.ffj = fsub fast <2 x float> %i.fev, %i.ffi
  %i.ffk = fadd fast <2 x float> %i.ffj, %i.fex   ; 2 uses
  %i.ffl = fadd fast <2 x float> %i.ffk, %i.ffh
  store <2 x float> %i.ffl, ptr %.09041499.us, align 4, !tbaa !39
  %i.ffm = fsub fast <2 x float> %i.ffk, %i.ffh
  store <2 x float> %i.ffm, ptr %.09031500.us, align 4, !tbaa !39
  %i.ffn = fmul fast <2 x float> %i.fev, splat (float 2.500000e-01)
  %i.ffo = fadd fast <2 x float> %i.ffn, %i.fex
  %i.ffp = fmul fast <2 x float> %i.few, splat (float -1.250000e+00)
  %i.ffq = fadd fast <2 x float> %i.ffo, %i.ffp   ; 2 uses
  %i.ffr = fmul fast <2 x float> %i.ffc, splat (float 5.000000e-01)
  %i.ffs = fmul fast <2 x float> %i.ffd, splat (float 2.500000e+00) ; 2 uses
  %i.fft = fsub fast <2 x float> %i.ffr, %i.ffs
  %i.ffu = fmul fast <2 x float> %i.ffe, splat (float 2.000000e+00)
  %i.ffv = fadd fast <2 x float> %i.ffu, %i.fft   ; 2 uses
  %i.ffw = fadd fast <2 x float> %i.ffq, %i.ffv
  store <2 x float> %i.ffw, ptr %.09021501.us, align 4, !tbaa !39
  %i.ffx = fsub fast <2 x float> %i.ffq, %i.ffv
  store <2 x float> %i.ffx, ptr %.09011502.us, align 4, !tbaa !39
  %i.ffy = fmul fast <2 x float> %i.fev, splat (float 4.000000e+00)
  %i.ffz = fmul fast <2 x float> %i.few, splat (float 5.000000e+00)
  %i.fga = fsub fast <2 x float> %i.ffy, %i.ffz
  %i.fgb = fadd fast <2 x float> %i.fex, %i.fga   ; 2 uses
  %i.fgc = fmul fast <2 x float> %i.ffc, splat (float 2.000000e+00)
  %i.fgd = fmul fast <2 x float> %i.ffe, splat (float 5.000000e-01)
  %i.fge = fsub fast <2 x float> %i.fgc, %i.ffs
  %i.fgf = fadd fast <2 x float> %i.fgd, %i.fge   ; 2 uses
  %i.fgg = fadd fast <2 x float> %i.fgb, %i.fgf
  store <2 x float> %i.fgg, ptr %.09001503.us, align 4, !tbaa !39
  %i.fgh = fsub fast <2 x float> %i.fgb, %i.fgf
  store <2 x float> %i.fgh, ptr %.08991504.us, align 4, !tbaa !39
  %i.fgi = load <2 x float>, ptr %i.fet, align 8, !tbaa !39
  %i.fgj = fsub fast <2 x float> %i.ffd, %i.ffe
  %i.fgk = fmul fast <2 x float> %i.fgj, splat (float 5.250000e+00)
  %i.fgl = fsub fast <2 x float> %i.fgk, %i.ffc
  %i.fgm = fadd fast <2 x float> %i.fgl, %i.fgi
  store <2 x float> %i.fgm, ptr %.08981505.us, align 4, !tbaa !39
  %i.fgn = getelementptr inbounds nuw [4 x i8], ptr %.09051498.us, i64 %i.ewz
  %i.fgo = getelementptr inbounds nuw [4 x i8], ptr %.09041499.us, i64 %i.ewz
  %i.fgp = getelementptr inbounds nuw [4 x i8], ptr %.09031500.us, i64 %i.ewz
  %i.fgq = getelementptr inbounds nuw [4 x i8], ptr %.09021501.us, i64 %i.ewz
  %i.fgr = getelementptr inbounds nuw [4 x i8], ptr %.09011502.us, i64 %i.ewz
  %i.fgs = getelementptr inbounds nuw [4 x i8], ptr %.09001503.us, i64 %i.ewz
  %i.fgt = getelementptr inbounds nuw [4 x i8], ptr %.08991504.us, i64 %i.ewz
  %i.fgu = getelementptr inbounds nuw [4 x i8], ptr %.08981505.us, i64 %i.ewz
  %indvars.iv.next1581 = add nuw nsw i64 %indvars.iv1580, 1 ; 2 uses
  %exitcond1583.not = icmp eq i64 %indvars.iv.next1581, 8
  br i1 %exitcond1583.not, label %bb.pb, label %bb.pa, !llvm.loop !2950

bb.pb:                                            ; preds = %bb.pa
  %indvars.iv.next1585 = add nuw nsw i64 %indvars.iv1584, 1 ; 2 uses
  %exitcond1588.not = icmp eq i64 %indvars.iv.next1585, %wide.trip.count1587
  br i1 %exitcond1588.not, label %._crit_edge.us1517, label %_ZN4ncnn3MatD2Ev.exit961.us, !llvm.loop !2951

._crit_edge.us1517:                               ; preds = %bb.pb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #12
  %indvars.iv.next1590 = add nuw nsw i64 %indvars.iv1589, 1 ; 2 uses
  %exitcond1593.not = icmp eq i64 %indvars.iv.next1590, %wide.trip.count1592
  br i1 %exitcond1593.not, label %._crit_edge1512, label %_ZN4ncnn3MatD2Ev.exit961.lr.ph.us, !llvm.loop !2952

._crit_edge1512:                                  ; preds = %._crit_edge.us1517, %.lr.ph1511, %._crit_edge1490
  %i.fgv = shl nsw i32 %i.evw, 1
  %i.fgw = add nsw i32 %i.fgv, %i.evu             ; 2 uses
  %i.fgx = icmp slt i32 %i.fgw, %5
  br i1 %i.fgx, label %.lr.ph1536, label %._crit_edge1537

.lr.ph1536:                                       ; preds = %._crit_edge1512
  %i.fgy = load i32, ptr %i.b, align 4, !tbaa !67 ; 11 uses
  %i.fgz = icmp sgt i32 %i.fgy, 0
  %i.fha = load i32, ptr %i.h, align 4            ; 2 uses
  %i.fhb = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.fhc = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.fhd = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.fhe = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.fhf = getelementptr inbounds nuw i8, ptr %i.m, i64 160
  %i.fhg = getelementptr inbounds nuw i8, ptr %i.m, i64 192
  %i.fhh = getelementptr inbounds nuw i8, ptr %i.m, i64 224
  %i.fhi = load i32, ptr %i.d, align 4
  %i.fhj = sext i32 %i.fhi to i64
  %factor.op.mul1538 = shl i32 %i.fgy, 6
  %i.fhk = sext i32 %i.fgy to i64
  %i.fhl = shl nsw i32 %i.fgy, 1
  %i.fhm = sext i32 %i.fhl to i64
  %i.fhn = mul nsw i32 %i.fgy, 3
  %i.fho = sext i32 %i.fhn to i64
  %i.fhp = shl nsw i32 %i.fgy, 2
  %i.fhq = sext i32 %i.fhp to i64
  %i.fhr = mul nsw i32 %i.fgy, 5
  %i.fhs = sext i32 %i.fhr to i64
  %i.fht = mul nsw i32 %i.fgy, 6
  %i.fhu = sext i32 %i.fht to i64
  %i.fhv = mul nsw i32 %i.fgy, 7
  %i.fhw = sext i32 %i.fhv to i64
  %i.fhx = shl nsw i32 %i.fgy, 3
  %i.fhy = sext i32 %i.fhx to i64                 ; 8 uses
  br i1 %i.fgz, label %.lr.ph1536.split.us, label %._crit_edge1537

.lr.ph1536.split.us:                              ; preds = %.lr.ph1536
  %i.fhz = load i32, ptr %i.e, align 4
  %i.fia = load i32, ptr %i.c, align 4
  %i.fib = load i32, ptr %i.a, align 4
  %i.fic = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fid = load i32, ptr %i.p, align 4, !tbaa !75, !noalias !2953
  %i.fie = load ptr, ptr %0, align 8, !tbaa !18, !noalias !2953
  %i.fif = load i64, ptr %i.v, align 8, !tbaa !20, !noalias !2953
  %i.fig = load i64, ptr %i.fic, align 8, !tbaa !65, !noalias !2953 ; 2 uses
  %factor.op.mul1541 = mul i64 %i.fif, %i.fig
  %i.fih = sext i32 %i.fid to i64
  %factor.op.mul1532.us = mul i64 %i.fig, %i.fih
  %i.fii = load ptr, ptr %1, align 8, !tbaa !18
  %i.fij = sext i32 %i.fhz to i64
  %i.fik = sext i32 %i.fgw to i64
  %i.fil = sext i32 %5 to i64
  %i.fim = sext i32 %i.fia to i64
  %wide.trip.count1605 = zext nneg i32 %i.fgy to i64
  br label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us

_ZN4ncnn3MatD2Ev.exit.lr.ph.us:                   ; preds = %._crit_edge.us1540, %.lr.ph1536.split.us
  %indvars.iv1607 = phi i64 [ %indvars.iv.next1608, %._crit_edge.us1540 ], [ %i.fik, %.lr.ph1536.split.us ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #12
  %i.fin = add nsw i64 %indvars.iv1607, %i.fim
  %.reass1542 = mul i64 %factor.op.mul1541, %i.fin
  %i.fio = getelementptr inbounds nuw i8, ptr %i.fie, i64 %.reass1542
  %i.fip = trunc nsw i64 %indvars.iv1607 to i32
  %.reass1539.us = mul i32 %factor.op.mul1538, %i.fip
  %i.fiq = sext i32 %.reass1539.us to i64
  %i.fir = getelementptr inbounds [4 x i8], ptr %i.fii, i64 %i.fiq
  br label %_ZN4ncnn3MatD2Ev.exit.us

_ZN4ncnn3MatD2Ev.exit.us:                         ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, %bb.pu
  %indvars.iv1602 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit.lr.ph.us ], [ %indvars.iv.next1603, %bb.pu ] ; 3 uses
  %i.fis = trunc i64 %indvars.iv1602 to i32
  %i.fit = add i32 %i.fib, %i.fis                 ; 2 uses
  %i.fiu = sdiv i32 %i.fit, %i.fha
  %i.fiv = srem i32 %i.fit, %i.fha
  %i.fiw = mul nsw i32 %i.fiu, 6
  %i.fix = sext i32 %i.fiw to i64                 ; 2 uses
  %.reass1533.us = mul i64 %factor.op.mul1532.us, %i.fix
  %i.fiy = getelementptr inbounds nuw i8, ptr %i.fio, i64 %.reass1533.us
  %i.fiz = mul nsw i32 %i.fiv, 6                  ; 8 uses
  %i.fja = sext i32 %i.fiz to i64
  %i.fjb = getelementptr inbounds [2 x i8], ptr %i.fiy, i64 %i.fja
  %i.fjc = or disjoint i32 %i.fiz, 1
  %i.fjd = load i32, ptr %i.d, align 4            ; 7 uses
  %i.fje = icmp slt i32 %i.fjc, %i.fjd
  %i.fjf = add nsw i32 %i.fiz, 2
  %i.fjg = icmp slt i32 %i.fjf, %i.fjd
  %i.fjh = add nsw i32 %i.fiz, 3
  %i.fji = icmp slt i32 %i.fjh, %i.fjd
  %i.fjj = add nsw i32 %i.fiz, 4
  %i.fjk = icmp slt i32 %i.fjj, %i.fjd
  %i.fjl = add nsw i32 %i.fiz, 5
  %i.fjm = icmp slt i32 %i.fjl, %i.fjd
  %i.fjn = add nsw i32 %i.fiz, 6
  %i.fjo = icmp slt i32 %i.fjn, %i.fjd
  %i.fjp = add nsw i32 %i.fiz, 7
  %i.fjq = icmp slt i32 %i.fjp, %i.fjd
  %invariant.op1632 = sub nsw i64 %i.fij, %i.fix
  br label %bb.pc

bb.pc:                                            ; preds = %bb.pr, %_ZN4ncnn3MatD2Ev.exit.us
  %indvars.iv1594 = phi i64 [ %indvars.iv.next1595, %bb.pr ], [ 0, %_ZN4ncnn3MatD2Ev.exit.us ] ; 10 uses
  %.08701520.us = phi ptr [ %i.fmv, %bb.pr ], [ %i.fjb, %_ZN4ncnn3MatD2Ev.exit.us ] ; 9 uses
  %i.fjr = icmp slt i64 %indvars.iv1594, %invariant.op1632
  br i1 %i.fjr, label %bb.pd, label %bb.pr

bb.pd:                                            ; preds = %bb.pc
  %i.fjs = load i16, ptr %.08701520.us, align 2, !tbaa !595
  %i.fjt = zext i16 %i.fjs to i32
  %i.fju = shl nuw i32 %i.fjt, 16
  %i.fjv = bitcast i32 %i.fju to float            ; 2 uses
  br i1 %i.fje, label %bb.pe, label %bb.pf

bb.pe:                                            ; preds = %bb.pd
  %i.fjw = getelementptr inbounds nuw i8, ptr %.08701520.us, i64 2
  %i.fjx = load i16, ptr %i.fjw, align 2, !tbaa !595
  %i.fjy = zext i16 %i.fjx to i32
  %i.fjz = shl nuw i32 %i.fjy, 16
  %i.fka = bitcast i32 %i.fjz to float
  br label %bb.pf

bb.pf:                                            ; preds = %bb.pe, %bb.pd
  %.0866.us = phi nsz float [ %i.fka, %bb.pe ], [ 0.000000e+00, %bb.pd ] ; 2 uses
  br i1 %i.fjg, label %bb.pg, label %bb.ph

bb.pg:                                            ; preds = %bb.pf
  %i.fkb = getelementptr inbounds nuw i8, ptr %.08701520.us, i64 4
  %i.fkc = load i16, ptr %i.fkb, align 2, !tbaa !595
  %i.fkd = zext i16 %i.fkc to i32
  %i.fke = shl nuw i32 %i.fkd, 16
  %i.fkf = bitcast i32 %i.fke to float
  br label %bb.ph

bb.ph:                                            ; preds = %bb.pg, %bb.pf
  %.0864.us = phi nsz float [ %i.fkf, %bb.pg ], [ 0.000000e+00, %bb.pf ] ; 2 uses
  br i1 %i.fji, label %bb.pi, label %bb.pj

bb.pi:                                            ; preds = %bb.ph
  %i.fkg = getelementptr inbounds nuw i8, ptr %.08701520.us, i64 6
  %i.fkh = load i16, ptr %i.fkg, align 2, !tbaa !595
  %i.fki = zext i16 %i.fkh to i32
  %i.fkj = shl nuw i32 %i.fki, 16
  %i.fkk = bitcast i32 %i.fkj to float
  br label %bb.pj

bb.pj:                                            ; preds = %bb.pi, %bb.ph
  %.0862.us = phi nsz float [ %i.fkk, %bb.pi ], [ 0.000000e+00, %bb.ph ] ; 2 uses
  br i1 %i.fjk, label %bb.pk, label %bb.pl

bb.pk:                                            ; preds = %bb.pj
  %i.fkl = getelementptr inbounds nuw i8, ptr %.08701520.us, i64 8
  %i.fkm = load i16, ptr %i.fkl, align 2, !tbaa !595
  %i.fkn = zext i16 %i.fkm to i32
  %i.fko = shl nuw i32 %i.fkn, 16
  %i.fkp = bitcast i32 %i.fko to float
  br label %bb.pl

bb.pl:                                            ; preds = %bb.pk, %bb.pj
  %.0860.us = phi nsz float [ %i.fkp, %bb.pk ], [ 0.000000e+00, %bb.pj ] ; 2 uses
  br i1 %i.fjm, label %bb.pm, label %bb.pn

bb.pm:                                            ; preds = %bb.pl
  %i.fkq = getelementptr inbounds nuw i8, ptr %.08701520.us, i64 10
  %i.fkr = load i16, ptr %i.fkq, align 2, !tbaa !595
  %i.fks = zext i16 %i.fkr to i32
  %i.fkt = shl nuw i32 %i.fks, 16
  %i.fku = bitcast i32 %i.fkt to float
  br label %bb.pn

bb.pn:                                            ; preds = %bb.pm, %bb.pl
  %.0858.us = phi nsz float [ %i.fku, %bb.pm ], [ 0.000000e+00, %bb.pl ] ; 2 uses
  br i1 %i.fjo, label %bb.po, label %bb.pp

bb.po:                                            ; preds = %bb.pn
  %i.fkv = getelementptr inbounds nuw i8, ptr %.08701520.us, i64 12
  %i.fkw = load i16, ptr %i.fkv, align 2, !tbaa !595
  %i.fkx = zext i16 %i.fkw to i32
  %i.fky = shl nuw i32 %i.fkx, 16
  %i.fkz = bitcast i32 %i.fky to float
  br label %bb.pp

bb.pp:                                            ; preds = %bb.po, %bb.pn
  %.0856.us = phi nsz float [ %i.fkz, %bb.po ], [ 0.000000e+00, %bb.pn ] ; 2 uses
  br i1 %i.fjq, label %bb.pq, label %bb.pr

bb.pq:                                            ; preds = %bb.pp
  %i.fla = getelementptr inbounds nuw i8, ptr %.08701520.us, i64 14
  %i.flb = load i16, ptr %i.fla, align 2, !tbaa !595
  %i.flc = zext i16 %i.flb to i32
  %i.fld = shl nuw i32 %i.flc, 16
  %i.fle = bitcast i32 %i.fld to float
  br label %bb.pr

bb.pr:                                            ; preds = %bb.pq, %bb.pp, %bb.pc
  %.0868.us = phi nsz float [ %i.fjv, %bb.pq ], [ %i.fjv, %bb.pp ], [ 0.000000e+00, %bb.pc ]
  %.1867.us = phi nsz float [ %.0866.us, %bb.pq ], [ %.0866.us, %bb.pp ], [ 0.000000e+00, %bb.pc ] ; 4 uses
  %.1865.us = phi nsz float [ %.0864.us, %bb.pq ], [ %.0864.us, %bb.pp ], [ 0.000000e+00, %bb.pc ] ; 4 uses
  %.1863.us = phi nsz float [ %.0862.us, %bb.pq ], [ %.0862.us, %bb.pp ], [ 0.000000e+00, %bb.pc ] ; 3 uses
  %.1861.us = phi nsz float [ %.0860.us, %bb.pq ], [ %.0860.us, %bb.pp ], [ 0.000000e+00, %bb.pc ] ; 4 uses
  %.1859.us = phi nsz float [ %.0858.us, %bb.pq ], [ %.0858.us, %bb.pp ], [ 0.000000e+00, %bb.pc ] ; 4 uses
  %.1857.us = phi nsz float [ %.0856.us, %bb.pq ], [ %.0856.us, %bb.pp ], [ 0.000000e+00, %bb.pc ] ; 4 uses
  %.0855.us = phi nsz float [ %i.fle, %bb.pq ], [ 0.000000e+00, %bb.pp ], [ 0.000000e+00, %bb.pc ]
  %.neg1439.us = fmul fast float %.1861.us, 4.250000e+00
  %i.flf = fsub fast float %.1865.us, %.neg1439.us
  %i.flg = fadd fast float %i.flf, %.1857.us      ; 2 uses
  %.neg1440.us = fmul fast float %.1863.us, 4.250000e+00
  %i.flh = fsub fast float %.1867.us, %.neg1440.us
  %i.fli = fadd fast float %i.flh, %.1859.us      ; 2 uses
  %i.flj = fmul fast float %.1865.us, 2.500000e-01
  %i.flk = fadd fast float %i.flj, %.1857.us
  %.neg1441.us = fmul fast float %.1861.us, -1.250000e+00
  %i.fll = fadd fast float %i.flk, %.neg1441.us   ; 2 uses
  %i.flm = fmul fast float %.1867.us, 5.000000e-01
  %i.fln = fmul fast float %.1863.us, 2.500000e+00 ; 2 uses
  %i.flo = fsub fast float %i.flm, %i.fln
  %i.flp = fmul fast float %.1859.us, 2.000000e+00
  %i.flq = fadd fast float %i.flp, %i.flo         ; 2 uses
  %i.flr = fmul fast float %.1865.us, 4.000000e+00
  %i.fls = fmul fast float %.1861.us, 5.000000e+00
  %i.flt = fsub fast float %i.flr, %i.fls
  %i.flu = fadd fast float %i.flt, %.1857.us      ; 2 uses
  %i.flv = fmul fast float %.1867.us, 2.000000e+00
  %i.flw = fsub fast float %i.flv, %i.fln
  %i.flx = fmul fast float %.1859.us, 5.000000e-01
  %i.fly = fadd fast float %i.flx, %i.flw         ; 2 uses
  %i.flz = fsub fast float %.0868.us, %.1857.us
  %i.fma = fsub fast float %.1861.us, %.1865.us
  %i.fmb = fmul fast float %i.fma, 5.250000e+00
  %i.fmc = fadd fast float %i.flz, %i.fmb
  %i.fmd = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv1594
  store float %i.fmc, ptr %i.fmd, align 4, !tbaa !39
  %i.fme = fadd fast float %i.flg, %i.fli
  %i.fmf = getelementptr inbounds nuw [4 x i8], ptr %i.fhb, i64 %indvars.iv1594
  store float %i.fme, ptr %i.fmf, align 4, !tbaa !39
  %i.fmg = fsub fast float %i.flg, %i.fli
  %i.fmh = getelementptr inbounds nuw [4 x i8], ptr %i.fhc, i64 %indvars.iv1594
  store float %i.fmg, ptr %i.fmh, align 4, !tbaa !39
  %i.fmi = fadd fast float %i.fll, %i.flq
  %i.fmj = getelementptr inbounds nuw [4 x i8], ptr %i.fhd, i64 %indvars.iv1594
  store float %i.fmi, ptr %i.fmj, align 4, !tbaa !39
  %i.fmk = fsub fast float %i.fll, %i.flq
  %i.fml = getelementptr inbounds nuw [4 x i8], ptr %i.fhe, i64 %indvars.iv1594
  store float %i.fmk, ptr %i.fml, align 4, !tbaa !39
  %i.fmm = fadd fast float %i.flu, %i.fly
  %i.fmn = getelementptr inbounds nuw [4 x i8], ptr %i.fhf, i64 %indvars.iv1594
  store float %i.fmm, ptr %i.fmn, align 4, !tbaa !39
  %i.fmo = fsub fast float %i.flu, %i.fly
  %i.fmp = getelementptr inbounds nuw [4 x i8], ptr %i.fhg, i64 %indvars.iv1594
  store float %i.fmo, ptr %i.fmp, align 4, !tbaa !39
  %i.fmq = fsub fast float %.0855.us, %.1867.us
  %i.fmr = fsub fast float %.1863.us, %.1859.us
  %i.fms = fmul fast float %i.fmr, 5.250000e+00
  %i.fmt = fadd fast float %i.fmq, %i.fms
  %i.fmu = getelementptr inbounds nuw [4 x i8], ptr %i.fhh, i64 %indvars.iv1594
  store float %i.fmt, ptr %i.fmu, align 4, !tbaa !39
  %i.fmv = getelementptr inbounds [2 x i8], ptr %.08701520.us, i64 %i.fhj
  %indvars.iv.next1595 = add nuw nsw i64 %indvars.iv1594, 1 ; 2 uses
  %exitcond1597.not = icmp eq i64 %indvars.iv.next1595, 8
  br i1 %exitcond1597.not, label %bb.ps, label %bb.pc, !llvm.loop !2956

bb.ps:                                            ; preds = %bb.pr
  %i.fmw = getelementptr inbounds nuw [4 x i8], ptr %i.fir, i64 %indvars.iv1602 ; 8 uses
  %i.fmx = getelementptr inbounds nuw [4 x i8], ptr %i.fmw, i64 %i.fhk
  %i.fmy = getelementptr inbounds nuw [4 x i8], ptr %i.fmw, i64 %i.fhm
  %i.fmz = getelementptr inbounds nuw [4 x i8], ptr %i.fmw, i64 %i.fho
  %i.fna = getelementptr inbounds nuw [4 x i8], ptr %i.fmw, i64 %i.fhq
  %i.fnb = getelementptr inbounds nuw [4 x i8], ptr %i.fmw, i64 %i.fhs
  %i.fnc = getelementptr inbounds nuw [4 x i8], ptr %i.fmw, i64 %i.fhu
  %i.fnd = getelementptr inbounds nuw [4 x i8], ptr %i.fmw, i64 %i.fhw
  br label %bb.pt

bb.pt:                                            ; preds = %bb.pt, %bb.ps
  %indvars.iv1598 = phi i64 [ %indvars.iv.next1599, %bb.pt ], [ 0, %bb.ps ] ; 2 uses
  %.08471529.us = phi ptr [ %i.fpi, %bb.pt ], [ %i.fnd, %bb.ps ] ; 2 uses
  %.08481528.us = phi ptr [ %i.fph, %bb.pt ], [ %i.fnc, %bb.ps ] ; 2 uses
  %.08491527.us = phi ptr [ %i.fpg, %bb.pt ], [ %i.fnb, %bb.ps ] ; 2 uses
  %.08501526.us = phi ptr [ %i.fpf, %bb.pt ], [ %i.fna, %bb.ps ] ; 2 uses
  %.08511525.us = phi ptr [ %i.fpe, %bb.pt ], [ %i.fmz, %bb.ps ] ; 2 uses
  %.08521524.us = phi ptr [ %i.fpd, %bb.pt ], [ %i.fmy, %bb.ps ] ; 2 uses
  %.08531523.us = phi ptr [ %i.fpc, %bb.pt ], [ %i.fmx, %bb.ps ] ; 2 uses
  %.08541522.us = phi ptr [ %i.fpb, %bb.pt ], [ %i.fmw, %bb.ps ] ; 2 uses
  %i.fne = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %indvars.iv1598 ; 5 uses
  %i.fnf = load float, ptr %i.fne, align 16, !tbaa !39
  %i.fng = getelementptr inbounds nuw i8, ptr %i.fne, i64 4
  %i.fnh = getelementptr inbounds nuw i8, ptr %i.fne, i64 12
  %i.fni = getelementptr inbounds nuw i8, ptr %i.fne, i64 20
  %i.fnj = getelementptr inbounds nuw i8, ptr %i.fne, i64 28
  %i.fnk = load float, ptr %i.fnj, align 4, !tbaa !39
  %i.fnl = load <2 x float>, ptr %i.fng, align 4, !tbaa !39 ; 4 uses
  %i.fnm = load <2 x float>, ptr %i.fnh, align 4, !tbaa !39 ; 4 uses
  %i.fnn = load <2 x float>, ptr %i.fni, align 4, !tbaa !39 ; 5 uses
  %i.fno = fmul fast <2 x float> %i.fnm, splat (float 4.250000e+00)
  %i.fnp = fsub fast <2 x float> %i.fnl, %i.fno
  %i.fnq = fadd fast <2 x float> %i.fnp, %i.fnn   ; 2 uses
  %i.fnr = extractelement <2 x float> %i.fnl, i64 1 ; 2 uses
  %i.fns = fmul fast float %i.fnr, 2.500000e-01
  %i.fnt = extractelement <2 x float> %i.fnm, i64 1 ; 2 uses
  %.neg1436.us = fmul fast float %i.fnt, -1.250000e+00
  %i.fnu = extractelement <2 x float> %i.fnl, i64 0 ; 2 uses
  %i.fnv = fmul fast float %i.fnu, 5.000000e-01
  %i.fnw = extractelement <2 x float> %i.fnn, i64 0
  %i.fnx = fmul fast float %i.fnw, 2.000000e+00
  %i.fny = extractelement <2 x float> %i.fnn, i64 1 ; 2 uses
  %i.fnz = fadd fast float %i.fns, %i.fny
  %i.foa = fadd fast float %i.fnz, %.neg1436.us   ; 2 uses
  %i.fob = fmul fast <2 x float> %i.fnm, <float 2.500000e+00, float 5.000000e+00> ; 2 uses
  %i.foc = extractelement <2 x float> %i.fob, i64 0
  %i.fod = fsub fast float %i.fnv, %i.foc
  %i.foe = fadd fast float %i.fnx, %i.fod         ; 2 uses
  %i.fof = fmul fast <2 x float> %i.fnl, <float 2.000000e+00, float 4.000000e+00>
  %i.fog = fmul reassoc nsz arcp contract afn <2 x float> %i.fnn, <float 5.000000e-01, float 1.000000e+00>
  %i.foh = fadd reassoc nsz arcp contract afn <2 x float> %i.fof, %i.fog
  %i.foi = fsub reassoc nsz arcp contract afn <2 x float> %i.foh, %i.fob ; 2 uses
  %i.foj = fsub fast float %i.fnf, %i.fny
  %i.fok = fsub fast float %i.fnt, %i.fnr
  %i.fol = fmul fast float %i.fok, 5.250000e+00
  %i.fom = fadd fast float %i.foj, %i.fol
  store float %i.fom, ptr %.08541522.us, align 4, !tbaa !39
  %i.fon = extractelement <2 x float> %i.fnq, i64 0 ; 2 uses
  %i.foo = extractelement <2 x float> %i.fnq, i64 1 ; 2 uses
  %i.fop = fadd fast float %i.foo, %i.fon
  store float %i.fop, ptr %.08531523.us, align 4, !tbaa !39
  %i.foq = fsub fast float %i.foo, %i.fon
  store float %i.foq, ptr %.08521524.us, align 4, !tbaa !39
  %i.for = fadd fast float %i.foa, %i.foe
  store float %i.for, ptr %.08511525.us, align 4, !tbaa !39
  %i.fos = fsub fast float %i.foa, %i.foe
  store float %i.fos, ptr %.08501526.us, align 4, !tbaa !39
  %i.fot = extractelement <2 x float> %i.foi, i64 0 ; 2 uses
  %i.fou = extractelement <2 x float> %i.foi, i64 1 ; 2 uses
  %i.fov = fadd fast float %i.fou, %i.fot
  store float %i.fov, ptr %.08491527.us, align 4, !tbaa !39
  %i.fow = fsub fast float %i.fou, %i.fot
  store float %i.fow, ptr %.08481528.us, align 4, !tbaa !39
  %i.fox = fsub fast float %i.fnk, %i.fnu
  %foldExtExtBinop = fsub fast <2 x float> %i.fnm, %i.fnn
  %i.foy = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.foz = fmul fast float %i.foy, 5.250000e+00
  %i.fpa = fadd fast float %i.fox, %i.foz
  store float %i.fpa, ptr %.08471529.us, align 4, !tbaa !39
  %i.fpb = getelementptr inbounds nuw [4 x i8], ptr %.08541522.us, i64 %i.fhy
  %i.fpc = getelementptr inbounds nuw [4 x i8], ptr %.08531523.us, i64 %i.fhy
  %i.fpd = getelementptr inbounds nuw [4 x i8], ptr %.08521524.us, i64 %i.fhy
  %i.fpe = getelementptr inbounds nuw [4 x i8], ptr %.08511525.us, i64 %i.fhy
  %i.fpf = getelementptr inbounds nuw [4 x i8], ptr %.08501526.us, i64 %i.fhy
  %i.fpg = getelementptr inbounds nuw [4 x i8], ptr %.08491527.us, i64 %i.fhy
  %i.fph = getelementptr inbounds nuw [4 x i8], ptr %.08481528.us, i64 %i.fhy
  %i.fpi = getelementptr inbounds nuw [4 x i8], ptr %.08471529.us, i64 %i.fhy
  %indvars.iv.next1599 = add nuw nsw i64 %indvars.iv1598, 1 ; 2 uses
  %exitcond1601.not = icmp eq i64 %indvars.iv.next1599, 8
  br i1 %exitcond1601.not, label %bb.pu, label %bb.pt, !llvm.loop !2957

bb.pu:                                            ; preds = %bb.pt
  %indvars.iv.next1603 = add nuw nsw i64 %indvars.iv1602, 1 ; 2 uses
  %exitcond1606.not = icmp eq i64 %indvars.iv.next1603, %wide.trip.count1605
  br i1 %exitcond1606.not, label %._crit_edge.us1540, label %_ZN4ncnn3MatD2Ev.exit.us, !llvm.loop !2958

._crit_edge.us1540:                               ; preds = %bb.pu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #12
  %indvars.iv.next1608 = add nsw i64 %indvars.iv1607, 1 ; 2 uses
  %7 = icmp slt i64 %indvars.iv.next1608, %i.fil
  br i1 %7, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, label %._crit_edge1537, !llvm.loop !2959

._crit_edge1537:                                  ; preds = %._crit_edge.us1540, %.lr.ph1536, %._crit_edge1512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.pv

bb.pv:                                            ; preds = %._crit_edge1537, %bb.b
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL26conv3x3s1_winograd63_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %i.h = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i32 %i.j, ptr %i.e, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store i32 1, ptr %i.f, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store i32 0, ptr %i.g, align 4, !tbaa !67
  %i.k = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f, i32 1, i32 1)
  %i.l = load i32, ptr %i.e, align 4, !tbaa !67
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 2 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !67
  %i.n = load i32, ptr %i.d, align 4, !tbaa !67   ; 2 uses
  %.not66 = icmp sgt i32 %i.n, %i.m
  br i1 %.not66, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 52
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 52
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.067 = phi i32 [ %i.n, %.lr.ph ], [ %i.dv, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.at = load i32, ptr %3, align 4, !tbaa !67    ; 2 uses
  %i.au = sdiv i32 %.067, %i.at
  %i.av = srem i32 %.067, %i.at
  %i.aw = load i32, ptr %4, align 4, !tbaa !67    ; 2 uses
  %i.ax = mul nsw i32 %i.aw, %i.au                ; 3 uses
  %i.ay = load i32, ptr %5, align 4, !tbaa !67    ; 2 uses
  %i.az = mul nsw i32 %i.ay, %i.av                ; 3 uses
  %i.ba = load i32, ptr %6, align 4, !tbaa !67
  %i.bb = sub nsw i32 %i.ba, %i.ax
  %.sroa.speculated63 = call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.bb) ; 2 uses
  %i.bc = load i32, ptr %7, align 4, !tbaa !67
  %i.bd = sub nsw i32 %i.bc, %i.az
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ay, i32 %i.bd) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.be = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %bb.d unwind label %bb.s

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !2960)
  %i.bf = load i32, ptr %i.o, align 4, !tbaa !75, !noalias !2960 ; 2 uses
  %i.bg = load i32, ptr %i.p, align 8, !tbaa !76, !noalias !2960 ; 2 uses
  %i.bh = load i32, ptr %i.q, align 4, !tbaa !226, !noalias !2960
  %i.bi = load ptr, ptr %8, align 8, !tbaa !18, !noalias !2960
  %i.bj = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !2960
  %i.bk = sext i32 %i.be to i64
  %i.bl = mul i64 %i.bj, %i.bk
  %i.bm = load i64, ptr %i.s, align 8, !tbaa !65, !noalias !2960 ; 4 uses
  %i.bn = mul i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bn
  %i.bp = load i32, ptr %i.t, align 8, !tbaa !66, !noalias !2960
  %i.bq = load ptr, ptr %i.u, align 8, !tbaa !17, !noalias !2960
  store ptr %i.bo, ptr %11, align 8, !tbaa !18, !alias.scope !2960
  store ptr null, ptr %i.v, align 8, !tbaa !11, !alias.scope !2960
  store i64 %i.bm, ptr %i.w, align 8, !tbaa !65, !alias.scope !2960
  store i32 %i.bp, ptr %i.x, align 8, !tbaa !66, !alias.scope !2960
  store ptr %i.bq, ptr %i.y, align 8, !tbaa !17, !alias.scope !2960
  store i32 %i.bf, ptr %i.aa, align 4, !tbaa !75, !alias.scope !2960
  store i32 %i.bg, ptr %i.ab, align 8, !tbaa !76, !alias.scope !2960
  store i32 1, ptr %i.ac, align 4, !tbaa !226, !alias.scope !2960
  store i32 %i.bh, ptr %i.ad, align 8, !tbaa !68, !alias.scope !2960
  %i.br = sext i32 %i.bf to i64
  %i.bs = sext i32 %i.bg to i64
  %i.bt = mul nsw i64 %i.bs, %i.br                ; 2 uses
  %i.bu = mul i64 %i.bm, %i.bt
  %i.bv = add i64 %i.bu, 15
  %i.bw = and i64 %i.bv, -16
  %i.bx = udiv i64 %i.bw, %i.bm
  store i64 %i.bx, ptr %i.ae, align 8, !tbaa !20, !alias.scope !2960
  %i.by = load i32, ptr %i.af, align 8, !tbaa !225, !noalias !2960 ; 2 uses
  %i.bz = add nsw i32 %i.by, -1
  store i32 %i.bz, ptr %i.z, align 8, !tbaa !225, !alias.scope !2960
  %i.ca = icmp eq i32 %i.by, 4
  br i1 %i.ca, label %bb.e, label %_ZN4ncnn3Mat7channelEi.exit48

bb.e:                                             ; preds = %bb.d
  store i64 %i.bt, ptr %i.ae, align 8, !tbaa !20, !alias.scope !2960
  br label %_ZN4ncnn3Mat7channelEi.exit48

_ZN4ncnn3Mat7channelEi.exit48:                    ; preds = %bb.e, %bb.d
  invoke fastcc void @_ZN4ncnnL47conv3x3s1_winograd63_transform_input_tile_bf16sERKNS_3MatERS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.ax, i32 noundef %.sroa.speculated63, i32 noundef %i.az, i32 noundef %.sroa.speculated, i32 noundef 1)
          to label %_ZN4ncnn3MatD2Ev.exit34 unwind label %bb.s

_ZN4ncnn3MatD2Ev.exit34:                          ; preds = %_ZN4ncnn3Mat7channelEi.exit48
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.cb = load i32, ptr %4, align 4, !tbaa !67
  %i.cc = sdiv i32 %i.ax, %i.cb
  %i.cd = load ptr, ptr %10, align 8, !tbaa !18, !noalias !2963
  %i.ce = load i64, ptr %i.ai, align 8, !tbaa !20, !noalias !2963
  %i.cf = sext i32 %i.cc to i64
  %i.cg = mul i64 %i.ce, %i.cf
  %i.ch = load i64, ptr %i.aj, align 8, !tbaa !65, !noalias !2963 ; 3 uses
  %i.ci = mul i64 %i.cg, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ci
  %i.ck = load i32, ptr %i.ak, align 8, !tbaa !66, !noalias !2963
  %i.cl = load ptr, ptr %i.al, align 8, !tbaa !17, !noalias !2963
  %i.cm = load i32, ptr %5, align 4, !tbaa !67
  %i.cn = sdiv i32 %i.az, %i.cm
  %i.co = sext i32 %i.cn to i64
  store ptr null, ptr %i.am, align 8, !tbaa !11
  store i64 %i.ch, ptr %i.an, align 8, !tbaa !65
  store i32 %i.ck, ptr %i.ao, align 8, !tbaa !66
  store ptr %i.cl, ptr %i.ap, align 8, !tbaa !17
  %i.cp = load <2 x i32>, ptr %i.ag, align 4, !tbaa !67, !noalias !2963
  %i.cq = load i32, ptr %i.ah, align 8, !tbaa !76, !noalias !2963
  %i.cr = load i32, ptr %i.ag, align 4, !tbaa !75, !noalias !2963
  %i.cs = sext i32 %i.cr to i64
  %i.ct = sext i32 %i.cq to i64
  %i.cu = mul nsw i64 %i.ct, %i.cs                ; 2 uses
  %i.cv = mul i64 %i.ch, %i.cu
  %i.cw = mul i64 %i.cv, %i.co
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cw
  store ptr %i.cx, ptr %12, align 8, !tbaa !18
  %i.cy = shufflevector <2 x i32> %i.cp, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.cz = shufflevector <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, <4 x i32> %i.cy, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i32> %i.cz, ptr %i.aq, align 8, !tbaa !67
  store i32 1, ptr %i.ar, align 8, !tbaa !68
  store i64 %i.cu, ptr %i.as, align 8, !tbaa !20, !alias.scope !2966
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.da = call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 64, ptr %i.a, align 4, !tbaa !67
  store i32 %.sroa.speculated63, ptr %i.b, align 4, !tbaa !67
  store i32 %.sroa.speculated, ptr %i.c, align 4, !tbaa !67
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.da, i32 1)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN4ncnnL21transpose_pack_B_tileERKNS_3MatERS0_iiii.omp_outlined, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %12, ptr nonnull %i.b, ptr nonnull align 8 dereferenceable(72) %11, ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.db = load ptr, ptr %i.am, align 8, !tbaa !11 ; 2 uses
  %.not.i35 = icmp eq ptr %i.db, null
  br i1 %.not.i35, label %_ZN4ncnn3MatD2Ev.exit33, label %bb.f

bb.f:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit34
  %i.dc = atomicrmw add ptr %i.db, i32 -1 acq_rel, align 4
end_hunk_14
