Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_widgets?download=true
inline.NumInlined: 1842
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN5ImGui11InputTextExEPKcS1_PciRK6ImVec2iPFiP26ImGuiInputTextCallbackDataEPv:bb.a
  %.not.i.i1438 = icmp eq i64 %.1.i.i, 0
  br i1 %.not.i.i1438, label %_ZL12ImLowerBoundPiS_i.exit.i, label %.lr.ph.i.i1437, !llvm.loop !689

_ZL12ImLowerBoundPiS_i.exit.i:                    ; preds = %.lr.ph.i.i1437
  %i.bch = icmp ugt ptr %.114.i.i, %.val1400
  br i1 %i.bch, label %bb.nw, label %bb.oc

bb.nw:                                            ; preds = %_ZL12ImLowerBoundPiS_i.exit.i
  %i.bci = icmp eq ptr %.114.i.i, %i.bca
  br i1 %i.bci, label %bb.ob, label %bb.nx

bb.nx:                                            ; preds = %bb.nw
  %i.bcj = load i32, ptr %.114.i.i, align 4, !tbaa !208
  %.not.i1441 = icmp eq i32 %i.bcj, %i.bbv
  br i1 %.not.i1441, label %bb.ny, label %bb.ob

bb.ny:                                            ; preds = %bb.nx
  %i.bck = getelementptr inbounds nuw i8, ptr %.012601537, i64 104
  %i.bcl = load float, ptr %i.bck, align 8, !tbaa !414
  %i.bcm = fcmp ogt float %i.bcl, 0.000000e+00
  br i1 %i.bcm, label %bb.nz, label %bb.oc

bb.nz:                                            ; preds = %bb.ny
  %i.bcn = getelementptr inbounds nuw i8, ptr %.012601537, i64 118
  %i.bco = load i8, ptr %i.bcn, align 2, !tbaa !436
  %i.bcp = icmp eq i8 %i.bco, 1
  br i1 %i.bcp, label %bb.oa, label %bb.oc

bb.oa:                                            ; preds = %bb.nz
  %i.bcq = getelementptr inbounds i8, ptr %i.bby, i64 -1
  %i.bcr = load i8, ptr %i.bcq, align 1, !tbaa !351
  switch i8 %i.bcr, label %bb.ob [
    i8 10, label %bb.oc
    i8 0, label %bb.oc
  ]

bb.ob:                                            ; preds = %bb.oa, %bb.nx, %bb.nw
  %i.bcs = getelementptr inbounds i8, ptr %.114.i.i, i64 -4
  br label %bb.oc

bb.oc:                                            ; preds = %bb.ob, %bb.oa, %bb.oa, %bb.nz, %bb.ny, %_ZL12ImLowerBoundPiS_i.exit.i
  %.0.i1439 = phi ptr [ %i.bcs, %bb.ob ], [ %.114.i.i, %bb.oa ], [ %.114.i.i, %bb.oa ], [ %.114.i.i, %bb.nz ], [ %.114.i.i, %bb.ny ], [ %.114.i.i, %_ZL12ImLowerBoundPiS_i.exit.i ] ; 2 uses
  %i.bct = icmp eq ptr %.0.i1439, %.val1400
  %i.bcu = ptrtoint ptr %.0.i1439 to i64
  %i.bcv = ptrtoint ptr %.val1400 to i64
  %i.bcw = sub i64 %i.bcu, %i.bcv
  %i.bcx = lshr exact i64 %i.bcw, 2
  %i.bcy = trunc i64 %i.bcx to i32
  %.ph.i = select i1 %i.bct, i32 0, i32 %i.bcy    ; 2 uses
  %i.bcz = sext i32 %.ph.i to i64
  %i.bda = getelementptr inbounds [4 x i8], ptr %.val1400, i64 %i.bcz
  %i.bdb = load i32, ptr %i.bda, align 4, !tbaa !208
  %i.bdc = sext i32 %i.bdb to i64
  %i.bdd = add nsw i32 %.ph.i, 1
  %i.bde = sitofp i32 %i.bdd to float
  br label %.thread1609

.thread1609:                                      ; preds = %bb.nv, %bb.oc
  %i.bdf = phi float [ %i.bde, %bb.oc ], [ 1.000000e+00, %bb.nv ]
  %i.bdg = phi i64 [ %i.bdc, %bb.oc ], [ 0, %bb.nv ]
  %i.bdh = getelementptr inbounds i8, ptr %.012081595, i64 %i.bdg
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.i, i64 4552
  %i.bdj = load ptr, ptr %i.bdi, align 8, !tbaa !401
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.i, i64 9520
  %i.bdl = load float, ptr %i.bdk, align 8, !tbaa !414
  %i.bdm = call <2 x float> @_Z20ImFontCalcTextSizeExP6ImFontfffPKcS2_S2_PS2_P6ImVec2i(ptr noundef %i.bdj, float noundef %i.bbq, float noundef f0x7F7FFFFF, float noundef %i.bdl, ptr noundef %i.bdh, ptr noundef %i.bby, ptr noundef %.41679, ptr noundef null, ptr noundef null, i32 noundef 2)
  %i.bdn = load float, ptr %i.bbp, align 8, !tbaa !205
  %i.bdo = fmul float %i.bdf, %i.bdn
  %.sroa.0.4.vec.insert.i1440 = insertelement <2 x float> %i.bdm, float %i.bdo, i64 1
  %i.bdp = zext i1 %.01232.in15841591 to i32
  %i.bdq = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.bdp, float noundef 1.000000e+00)
  %i.bdr = trunc nuw i8 %.112411796 to i1
  %i.bds = getelementptr inbounds nuw i8, ptr %.012601537, i64 100
  store i32 %.01207, ptr %i.bds, align 4, !tbaa !437
  br label %bb.of

bb.od:                                            ; preds = %_ZL23InputTextLineIndexBuildiP14ImGuiTextIndexPKcS2_fiPS2_.exit
  %i.bdt = zext i1 %.01232.in15841591 to i32
  %i.bdu = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.bdt, float noundef 1.000000e+00) ; 3 uses
  %i.bdv = trunc nuw i8 %.112411796 to i1         ; 3 uses
  %or.cond175 = select i1 %i.bbs, i1 true, i1 %i.bdv
  br i1 %or.cond175, label %bb.oe, label %.loopexit

bb.oe:                                            ; preds = %bb.od
  %i.bdw = getelementptr inbounds nuw i8, ptr %.012601537, i64 100
  store i32 %.01207, ptr %i.bdw, align 4, !tbaa !437
  br i1 %i.bbs, label %bb.of, label %bb.os

bb.of:                                            ; preds = %.thread1609, %bb.oe
  %.sroa.01483.016051611 = phi <2 x float> [ %.sroa.0.4.vec.insert.i1440, %.thread1609 ], [ zeroinitializer, %bb.oe ] ; 4 uses
  %i.bdx = phi i32 [ %i.bdq, %.thread1609 ], [ %i.bdu, %bb.oe ] ; 2 uses
  %i.bdy = phi i1 [ %i.bdr, %.thread1609 ], [ %i.bdv, %bb.oe ] ; 2 uses
  %i.bdz = getelementptr inbounds nuw i8, ptr %.012601537, i64 112 ; 2 uses
  %i.bea = load i8, ptr %i.bdz, align 8, !tbaa !419, !range !184, !noundef !185
  %i.beb = trunc nuw i8 %i.bea to i1
  br i1 %i.beb, label %bb.og, label %bb.os

bb.og:                                            ; preds = %bb.of
  %i.bec = and i32 %5, 32768
  %.not1339 = icmp eq i32 %i.bec, 0
  br i1 %.not1339, label %bb.oh, label %bb.ol

bb.oh:                                            ; preds = %bb.og
  %i.bed = fmul float %.sroa.0780.2, 2.500000e-01 ; 2 uses
  %.sroa.01483.0.vec.extract = extractelement <2 x float> %.sroa.01483.016051611, i64 0 ; 3 uses
  %i.bee = getelementptr inbounds nuw i8, ptr %.012601537, i64 92 ; 3 uses
  %i.bef = load float, ptr %i.bee, align 4, !tbaa !701 ; 2 uses
  %i.beg = fcmp olt float %.sroa.01483.0.vec.extract, %i.bef
  br i1 %i.beg, label %bb.oi, label %bb.oj

bb.oi:                                            ; preds = %bb.oh
  %i.beh = fsub float %.sroa.01483.0.vec.extract, %i.bed ; 2 uses
  %i.bei = fcmp ole float %i.beh, 0.000000e+00
  %i.bej = select i1 %i.bei, float 0.000000e+00, float %i.beh
  %i.bek = fptosi float %i.bej to i32
  %i.bel = sitofp i32 %i.bek to float
  store float %i.bel, ptr %i.bee, align 4, !tbaa !701
  br label %bb.om

bb.oj:                                            ; preds = %bb.oh
  %i.bem = load float, ptr %i.aa, align 4, !tbaa !206
  %i.ben = fsub float %.sroa.0780.2, %i.bem
  %i.beo = fsub float %.sroa.01483.0.vec.extract, %i.ben ; 2 uses
  %i.bep = fcmp ult float %i.beo, %i.bef
  br i1 %i.bep, label %bb.om, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  %i.beq = fadd float %i.bed, %i.beo
  %i.ber = fptosi float %i.beq to i32
  %i.bes = sitofp i32 %i.ber to float
  store float %i.bes, ptr %i.bee, align 4, !tbaa !701
  br label %bb.om

bb.ol:                                            ; preds = %bb.og
  %i.bet = getelementptr inbounds nuw i8, ptr %.012601537, i64 92
  store float 0.000000e+00, ptr %i.bet, align 4, !tbaa !701
  br label %bb.om

bb.om:                                            ; preds = %bb.oi, %bb.ok, %bb.oj, %bb.ol
  br i1 %i.r, label %bb.on, label %bb.or

bb.on:                                            ; preds = %bb.om
  %.sroa.01483.4.vec.extract = extractelement <2 x float> %.sroa.01483.016051611, i64 1 ; 3 uses
  %i.beu = load float, ptr %i.bbp, align 8, !tbaa !205
  %i.bev = fsub float %.sroa.01483.4.vec.extract, %i.beu ; 3 uses
  %i.bew = fcmp olt float %i.bev, %.112501790
  br i1 %i.bew, label %bb.oo, label %bb.op

bb.oo:                                            ; preds = %bb.on
  %i.bex = fcmp ole float %i.bev, 0.000000e+00
  %i.bey = select i1 %i.bex, float 0.000000e+00, float %i.bev
  br label %bb.or

bb.op:                                            ; preds = %bb.on
  %i.bez = load float, ptr %i.ab, align 8, !tbaa !203 ; 2 uses
  %i.bfa = fneg float %i.bez
  %i.bfb = call float @llvm.fmuladd.f32(float %i.bfa, float 2.000000e+00, float %.sroa.01509.4.vec.extract1517)
  %i.bfc = fsub float %.sroa.01483.4.vec.extract, %i.bfb
  %i.bfd = fcmp ult float %i.bfc, %.112501790
  br i1 %i.bfd, label %bb.or, label %bb.oq

bb.oq:                                            ; preds = %bb.op
  %i.bfe = fsub float %.sroa.01483.4.vec.extract, %.sroa.01509.4.vec.extract1517
  %i.bff = call float @llvm.fmuladd.f32(float %i.bez, float 2.000000e+00, float %i.bfe)
  br label %bb.or

bb.or:                                            ; preds = %bb.oo, %bb.oq, %bb.op, %bb.om
  %.01203 = phi float [ %i.bey, %bb.oo ], [ %i.bff, %bb.oq ], [ %.112501790, %bb.op ], [ %.112501790, %bb.om ]
  store i8 0, ptr %i.bdz, align 8, !tbaa !419
  br label %bb.os

bb.os:                                            ; preds = %bb.or, %bb.of, %bb.oe
  %i.bfg = phi i32 [ %i.bdx, %bb.or ], [ %i.bdx, %bb.of ], [ %i.bdu, %bb.oe ] ; 3 uses
  %i.bfh = phi i1 [ %i.bdy, %bb.or ], [ %i.bdy, %bb.of ], [ %i.bdv, %bb.oe ]
  %.sroa.01483.01606 = phi <2 x float> [ %.sroa.01483.016051611, %bb.or ], [ %.sroa.01483.016051611, %bb.of ], [ zeroinitializer, %bb.oe ] ; 4 uses
  %.11204 = phi float [ %.01203, %bb.or ], [ %.112501790, %bb.of ], [ %.112501790, %bb.oe ] ; 2 uses
  %i.bfi = getelementptr inbounds nuw i8, ptr %.012601537, i64 113 ; 2 uses
  %i.bfj = load i8, ptr %i.bfi, align 1, !tbaa !710, !range !184, !noundef !185
  %i.bfk = trunc nuw i8 %i.bfj to i1
  br i1 %i.bfk, label %bb.ot, label %bb.ow

bb.ot:                                            ; preds = %bb.os
  br i1 %i.r, label %bb.ou, label %bb.ov

bb.ou:                                            ; preds = %bb.ot
  %.sroa.01483.4.vec.extract1488 = extractelement <2 x float> %.sroa.01483.01606, i64 1
  %i.bfl = load float, ptr %i.bbp, align 8, !tbaa !205
  %i.bfm = fsub float %.sroa.01483.4.vec.extract1488, %i.bfl
  %i.bfn = load float, ptr %i.ab, align 8, !tbaa !203
  %i.bfo = fneg float %i.bfn
  %i.bfp = call float @llvm.fmuladd.f32(float %.sroa.01509.4.vec.extract1517, float 5.000000e-01, float %i.bfo)
  %i.bfq = fsub float %i.bfm, %i.bfp
  br label %bb.ov

bb.ov:                                            ; preds = %bb.ou, %bb.ot
  %.21205 = phi float [ %i.bfq, %bb.ou ], [ %.11204, %bb.ot ]
  store i8 0, ptr %i.bfi, align 1, !tbaa !710
  br label %bb.ow

bb.ow:                                            ; preds = %bb.ov, %bb.os
  %.31245 = phi i8 [ 0, %bb.ov ], [ %.212441793, %bb.os ] ; 4 uses
  %.31206 = phi float [ %.21205, %bb.ov ], [ %.11204, %bb.os ] ; 4 uses
  %i.bfr = fcmp une float %.31206, %.112501790
  br i1 %i.bfr, label %bb.ox, label %bb.oy

bb.ox:                                            ; preds = %bb.ow
  %i.bfs = load float, ptr %i.ab, align 8, !tbaa !203
  %i.bft = call float @llvm.fmuladd.f32(float %i.bfs, float 2.000000e+00, float %i.bbr)
  %i.bfu = fsub float %i.bft, %.sroa.01509.4.vec.extract1517 ; 2 uses
  %i.bfv = fcmp oge float %i.bfu, 0.000000e+00
  %i.bfw = select i1 %i.bfv, float %i.bfu, float 0.000000e+00 ; 2 uses
  %i.bfx = fcmp olt float %.31206, 0.000000e+00
  %i.bfy = fcmp ogt float %.31206, %i.bfw
  %i.bfz = select i1 %i.bfy, float %i.bfw, float %.31206
  %i.bga = select i1 %i.bfx, float 0.000000e+00, float %i.bfz ; 2 uses
  %i.bgb = getelementptr inbounds nuw i8, ptr %.21264, i64 156 ; 2 uses
  %i.bgc = load float, ptr %i.bgb, align 4, !tbaa !698
  %i.bgd = fsub float %i.bgc, %i.bga
  %i.bge = getelementptr inbounds nuw i8, ptr %18, i64 4 ; 2 uses
  %i.bgf = load float, ptr %i.bge, align 4, !tbaa !197
  %i.bgg = fadd float %i.bgf, %i.bgd
  store float %i.bgg, ptr %i.bge, align 4, !tbaa !197
  store float %i.bga, ptr %i.bgb, align 4, !tbaa !698
  %i.bgh = load float, ptr %i.bbp, align 8, !tbaa !205
  call void @_ZN5ImGui25CalcClipRectVisibleItemsYERK6ImRectRK6ImVec2fPiS6_(ptr noundef nonnull align 4 dereferenceable(16) %19, ptr noundef nonnull align 4 dereferenceable(8) %18, float noundef %i.bgh, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h)
  %i.bgi = load i32, ptr %i.h, align 4, !tbaa !208
  %i.bgj = call noundef i32 @llvm.smin.i32(i32 %i.bgi, i32 %.01207)
  store i32 %i.bgj, ptr %i.h, align 4, !tbaa !208
  br label %bb.oy

bb.oy:                                            ; preds = %bb.ox, %bb.ow
  %i.bgk = getelementptr inbounds nuw i8, ptr %.012601537, i64 92
  %i.bgl = load float, ptr %i.bgk, align 4, !tbaa !701 ; 4 uses
  br i1 %i.bfh, label %bb.oz, label %.loopexit

bb.oz:                                            ; preds = %bb.oy
  %23 = trunc nuw i8 %.31245 to i1
  %i.bgm = select i1 %23, float 1.000000e+00, float 6.000000e-01
  %i.bgn = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 52, float noundef %i.bgm)
  %i.bgo = select i1 %i.r, float 0.000000e+00, float -1.000000e+00
  %i.bgp = select i1 %i.r, float 0.000000e+00, float 2.000000e+00
  %i.bgq = getelementptr inbounds nuw i8, ptr %i.i, i64 4560
  %i.bgr = load ptr, ptr %i.bgq, align 8, !tbaa !313
  %i.bgs = call noundef float @_ZN11ImFontBaked14GetCharAdvanceEt(ptr noundef nonnull align 8 dereferenceable(104) %i.bgr, i16 noundef zeroext 32)
  %i.bgt = fmul float %i.bgs, 5.000000e-01
  %i.bgu = fptosi float %i.bgt to i32
  %i.bgv = sitofp i32 %i.bgu to float
  %i.bgw = getelementptr inbounds nuw i8, ptr %.012601537, i64 8
  %i.bgx = load ptr, ptr %i.bgw, align 8, !tbaa !378 ; 2 uses
  %i.bgy = getelementptr inbounds nuw i8, ptr %i.bgx, i64 4
  %i.bgz = load i32, ptr %i.bgy, align 4, !tbaa !394 ; 2 uses
  %i.bha = getelementptr inbounds nuw i8, ptr %i.bgx, i64 8
  %i.bhb = load i32, ptr %i.bha, align 4, !tbaa !395 ; 2 uses
  %i.bhc = call noundef i32 @llvm.smin.i32(i32 %i.bgz, i32 %i.bhb)
  %i.bhd = sext i32 %i.bhc to i64
  %i.bhe = getelementptr inbounds i8, ptr %.012081595, i64 %i.bhd ; 3 uses
  %i.bhf = call noundef i32 @llvm.smax.i32(i32 %i.bgz, i32 %i.bhb)
  %i.bhg = sext i32 %i.bhf to i64
  %i.bhh = getelementptr inbounds i8, ptr %.012081595, i64 %i.bhg ; 3 uses
  %i.bhi = load i32, ptr %i.g, align 4, !tbaa !208 ; 2 uses
  %i.bhj = load i32, ptr %i.h, align 4, !tbaa !208
  %i.bhk = icmp slt i32 %i.bhi, %i.bhj
  br i1 %i.bhk, label %.lr.ph1663, label %.loopexit

.lr.ph1663:                                       ; preds = %bb.oz
  %i.bhl = getelementptr inbounds nuw i8, ptr %i.i, i64 9552 ; 2 uses
  %i.bhm = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.bhn = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.bho = getelementptr inbounds nuw i8, ptr %.21264, i64 712
  %i.bhp = sext i32 %i.bhi to i64
  br label %bb.pa

bb.pa:                                            ; preds = %.lr.ph1663, %bb.pi
  %indvars.iv1671 = phi i64 [ %i.bhp, %.lr.ph1663 ], [ %indvars.iv.next1672, %bb.pi ] ; 3 uses
  %i.bhq = load i32, ptr %i.auf, align 8, !tbaa !733 ; 2 uses
  %.not.i1442 = icmp eq i32 %i.bhq, 0
  br i1 %.not.i1442, label %_ZN14ImGuiTextIndex14get_line_beginEPKci.exit, label %bb.pb

bb.pb:                                            ; preds = %bb.pa
  %i.bhr = load ptr, ptr %i.bhl, align 8, !tbaa !730
  %i.bhs = getelementptr inbounds [4 x i8], ptr %i.bhr, i64 %indvars.iv1671
  %i.bht = load i32, ptr %i.bhs, align 4, !tbaa !208
  %i.bhu = sext i32 %i.bht to i64
  br label %_ZN14ImGuiTextIndex14get_line_beginEPKci.exit

_ZN14ImGuiTextIndex14get_line_beginEPKci.exit:    ; preds = %bb.pa, %bb.pb
  %i.bhv = phi i64 [ %i.bhu, %bb.pb ], [ 0, %bb.pa ]
  %i.bhw = getelementptr inbounds i8, ptr %.012081595, i64 %i.bhv ; 3 uses
  %indvars.iv.next1672 = add nsw i64 %indvars.iv1671, 1 ; 4 uses
  %i.bhx = sext i32 %i.bhq to i64
  %i.bhy = icmp slt i64 %indvars.iv.next1672, %i.bhx
  br i1 %i.bhy, label %bb.pc, label %bb.pd

bb.pc:                                            ; preds = %_ZN14ImGuiTextIndex14get_line_beginEPKci.exit
  %i.bhz = load ptr, ptr %i.bhl, align 8, !tbaa !730
  %i.bia = getelementptr inbounds [4 x i8], ptr %i.bhz, i64 %indvars.iv.next1672
  %i.bib = load i32, ptr %i.bia, align 4, !tbaa !208
  %i.bic = add nsw i32 %i.bib, -1
  br label %_ZN14ImGuiTextIndex12get_line_endEPKci.exit

bb.pd:                                            ; preds = %_ZN14ImGuiTextIndex14get_line_beginEPKci.exit
  %i.bid = load i32, ptr %i.bbl, align 8, !tbaa !732
  br label %_ZN14ImGuiTextIndex12get_line_endEPKci.exit

_ZN14ImGuiTextIndex12get_line_endEPKci.exit:      ; preds = %bb.pc, %bb.pd
  %i.bie = phi i32 [ %i.bic, %bb.pc ], [ %i.bid, %bb.pd ]
  %i.bif = sext i32 %i.bie to i64
  %i.big = getelementptr inbounds i8, ptr %.012081595, i64 %i.bif ; 4 uses
  %i.bih = icmp ult ptr %i.big, %.41679
  br i1 %i.bih, label %bb.pe, label %.thread1613

bb.pe:                                            ; preds = %_ZN14ImGuiTextIndex12get_line_endEPKci.exit
  %i.bii = load i8, ptr %i.big, align 1, !tbaa !351
  %.fr = freeze i8 %i.bii
  %i.bij = icmp ne i8 %.fr, 10                    ; 2 uses
  %spec.select1619.idx = zext i1 %i.bij to i64
  %spec.select1619 = getelementptr inbounds nuw i8, ptr %i.big, i64 %spec.select1619.idx
  br label %.thread1613

.thread1613:                                      ; preds = %bb.pe, %_ZN14ImGuiTextIndex12get_line_endEPKci.exit
  %i.bik = phi i1 [ false, %_ZN14ImGuiTextIndex12get_line_endEPKci.exit ], [ %i.bij, %bb.pe ]
  %i.bil = phi ptr [ %i.big, %_ZN14ImGuiTextIndex12get_line_endEPKci.exit ], [ %spec.select1619, %bb.pe ] ; 4 uses
  %i.bim = icmp ugt ptr %i.bhe, %i.bhw
  %i.bin = select i1 %i.bim, ptr %i.bhe, ptr %i.bhw ; 3 uses
  %i.bio = icmp ult ptr %i.bhh, %i.bil
  %i.bip = select i1 %i.bio, ptr %i.bhh, ptr %i.bil ; 2 uses
  %i.biq = icmp ult ptr %i.bin, %i.bip
  br i1 %i.biq, label %bb.pf, label %bb.pg

bb.pf:                                            ; preds = %.thread1613
  %i.bir = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %i.bin, ptr noundef nonnull %i.bip, i1 noundef zeroext false, float noundef -1.000000e+00)
  %.sroa.0217.0.vec.extract = extractelement <2 x float> %i.bir, i64 0
  %i.bis = fadd float %.sroa.0217.0.vec.extract, 0.000000e+00
  br label %bb.pg

bb.pg:                                            ; preds = %bb.pf, %.thread1613
  %.01199 = phi float [ %i.bis, %bb.pf ], [ 0.000000e+00, %.thread1613 ] ; 2 uses
  %.not1344 = icmp ugt ptr %i.bhe, %i.bil
  %i.bit = icmp ule ptr %i.bhh, %i.bil
  %or.cond178 = or i1 %i.bik, %i.bit
  %or.cond1393 = select i1 %.not1344, i1 true, i1 %or.cond178
  %i.biu = fadd float %.01199, %i.bgv
  %.11200 = select i1 %or.cond1393, float %.01199, float %i.biu ; 2 uses
  %i.biv = fcmp oeq float %.11200, 0.000000e+00
  br i1 %i.biv, label %bb.pi, label %bb.ph

bb.ph:                                            ; preds = %bb.pg
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  %i.biw = load float, ptr %18, align 8, !tbaa !194
  %i.bix = fsub float %i.biw, %i.bgl
  %i.biy = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %i.bhw, ptr noundef %i.bin, i1 noundef zeroext false, float noundef -1.000000e+00)
  %.sroa.0216.0.vec.extract = extractelement <2 x float> %i.biy, i64 0
  %i.biz = fadd float %i.bix, %.sroa.0216.0.vec.extract ; 2 uses
  %i.bja = load float, ptr %i.bhm, align 4, !tbaa !197
  %i.bjb = trunc nsw i64 %indvars.iv1671 to i32
  %i.bjc = sitofp i32 %i.bjb to float
  %i.bjd = load float, ptr %i.bbp, align 8, !tbaa !205 ; 2 uses
  %i.bje = call float @llvm.fmuladd.f32(float %i.bjc, float %i.bjd, float %i.bja) ; 2 uses
  %i.bjf = fadd float %.11200, %i.biz
  %i.bjg = fadd float %i.bgp, %i.bje
  %i.bjh = fadd float %i.bjd, %i.bjg
  %i.bji = fadd float %i.bgo, %i.bje
  %i.bjj = load <4 x float>, ptr %19, align 16, !tbaa !190 ; 3 uses
  %i.bjk = insertelement <4 x float> poison, float %i.biz, i64 0
  %i.bjl = insertelement <4 x float> %i.bjk, float %i.bji, i64 1
  %i.bjm = insertelement <4 x float> %i.bjl, float %i.bjf, i64 2
  %i.bjn = insertelement <4 x float> %i.bjm, float %i.bjh, i64 3 ; 3 uses
  %i.bjo = fcmp oge <4 x float> %i.bjn, %i.bjj
  %i.bjp = fcmp olt <4 x float> %i.bjn, %i.bjj
  %i.bjq = shufflevector <4 x i1> %i.bjo, <4 x i1> %i.bjp, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bjr = select <4 x i1> %i.bjq, <4 x float> %i.bjn, <4 x float> %i.bjj ; 2 uses
  %i.bjs = shufflevector <4 x float> %i.bjr, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.bjs, ptr %20, align 8, !tbaa !190
  %i.bjt = shufflevector <4 x float> %i.bjr, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %i.bjt, ptr %i.bhn, align 8, !tbaa !190
  %i.bju = load ptr, ptr %i.bho, align 8, !tbaa !202
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.bju, ptr noundef nonnull align 4 dereferenceable(8) %20, ptr noundef nonnull align 4 dereferenceable(8) %i.bhn, i32 noundef %i.bgn, float noundef 0.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #41
  br label %bb.pi

bb.pi:                                            ; preds = %bb.pg, %bb.ph
  %i.bjv = load i32, ptr %i.h, align 4, !tbaa !208
  %i.bjw = sext i32 %i.bjv to i64
  %i.bjx = icmp slt i64 %indvars.iv.next1672, %i.bjw
  br i1 %i.bjx, label %bb.pa, label %.loopexit, !llvm.loop !690

.loopexit:                                        ; preds = %bb.pi, %bb.oz, %bb.oy, %bb.od
  %i.bjy = phi i1 [ false, %bb.od ], [ false, %bb.oy ], [ true, %bb.oz ], [ true, %bb.pi ]
  %i.bjz = phi i32 [ %i.bdu, %bb.od ], [ %i.bfg, %bb.oy ], [ %i.bfg, %bb.oz ], [ %i.bfg, %bb.pi ] ; 3 uses
  %.sroa.01483.01607 = phi <2 x float> [ zeroinitializer, %bb.od ], [ %.sroa.01483.01606, %bb.oy ], [ %.sroa.01483.01606, %bb.oz ], [ %.sroa.01483.01606, %bb.pi ] ; 2 uses
  %.sroa.01478.0 = phi float [ 0.000000e+00, %bb.od ], [ %i.bgl, %bb.oy ], [ %i.bgl, %bb.oz ], [ %i.bgl, %bb.pi ] ; 2 uses
  %.41246 = phi i8 [ 0, %bb.od ], [ %.31245, %bb.oy ], [ %.31245, %bb.oz ], [ %.31245, %bb.pi ] ; 2 uses
  %i.bka = load i32, ptr %i.ei, align 4, !tbaa !218
  %.not1340 = icmp eq i32 %i.bka, %i.s
  br i1 %.not1340, label %bb.pl, label %bb.pj

bb.pj:                                            ; preds = %.loopexit
  %i.bkb = and i32 %5, 131072
  %i.bkc = icmp eq i32 %i.bkb, 0
  %24 = trunc nuw i8 %.41246 to i1
  %or.cond181 = select i1 %i.bkc, i1 true, i1 %24
  %or.cond184 = or i1 %i.bjy, %or.cond181
  br i1 %or.cond184, label %bb.pl, label %bb.pk

bb.pk:                                            ; preds = %bb.pj
  %i.bkd = load float, ptr %18, align 8, !tbaa !194 ; 2 uses
  %i.bke = load float, ptr %i.ao, align 8, !tbaa !238
  %i.bkf = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %.012081595, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00)
  %.sroa.0215.0.vec.extract = extractelement <2 x float> %i.bkf, i64 0
  %i.bkg = fsub float %i.bke, %.sroa.0215.0.vec.extract
  %i.bkh = load float, ptr %i.aa, align 4, !tbaa !206
  %i.bki = fsub float %i.bkg, %i.bkh              ; 2 uses
  %i.bkj = fcmp olt float %i.bkd, %i.bki
  %i.bkk = select i1 %i.bkj, float %i.bkd, float %i.bki
  store float %i.bkk, ptr %18, align 8, !tbaa !194
  br label %bb.pl

bb.pl:                                            ; preds = %bb.pk, %bb.pj, %.loopexit
  br i1 %i.r, label %bb.pn, label %bb.pm

bb.pm:                                            ; preds = %bb.pl
  %i.bkl = icmp sgt i64 %i.bbj, 2097151
  %.not1341 = icmp ult i32 %i.bjz, 16777216
  %or.cond1394 = or i1 %.not1341, %i.bkl
  br i1 %or.cond1394, label %bb.pt, label %bb.po

bb.pn:                                            ; preds = %bb.pl
  %.not1341.old = icmp ult i32 %i.bjz, 16777216
  br i1 %.not1341.old, label %bb.pt, label %bb.po

bb.po:                                            ; preds = %bb.pm, %bb.pn
  %i.bkm = load i32, ptr %i.g, align 4, !tbaa !208 ; 3 uses
  %i.bkn = load i32, ptr %i.h, align 4, !tbaa !208 ; 3 uses
  %i.bko = icmp slt i32 %i.bkm, %i.bkn
  br i1 %i.bko, label %bb.pp, label %bb.pt

bb.pp:                                            ; preds = %bb.po
  %i.bkp = getelementptr inbounds nuw i8, ptr %i.i, i64 4552
  %i.bkq = load ptr, ptr %i.bkp, align 8, !tbaa !401
  %i.bkr = getelementptr inbounds nuw i8, ptr %.21264, i64 712
  %i.bks = load ptr, ptr %i.bkr, align 8, !tbaa !202
  %i.bkt = load float, ptr %i.bbp, align 8, !tbaa !205 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #41
  %i.bku = sitofp i32 %i.bkm to float
  %i.bkv = load <2 x float>, ptr %18, align 8, !tbaa !190 ; 2 uses
  %i.bkw = extractelement <2 x float> %i.bkv, i64 0
  %i.bkx = fsub float %i.bkw, %.sroa.01478.0
  %i.bky = fmul float %i.bkt, %i.bku
  %i.bkz = insertelement <2 x float> poison, float %i.bkx, i64 0
  %i.bla = insertelement <2 x float> %i.bkz, float %i.bky, i64 1
  %i.blb = insertelement <2 x float> %i.bkv, float 0.000000e+00, i64 0
  %i.blc = fadd <2 x float> %i.bla, %i.blb
  store <2 x float> %i.blc, ptr %21, align 8
  %i.bld = load i32, ptr %i.auf, align 8, !tbaa !733 ; 2 uses
  %.not.i1455 = icmp eq i32 %i.bld, 0
  br i1 %.not.i1455, label %_ZN14ImGuiTextIndex14get_line_beginEPKci.exit1456, label %bb.pq

bb.pq:                                            ; preds = %bb.pp
  %i.ble = getelementptr inbounds nuw i8, ptr %i.i, i64 9552
  %i.blf = load ptr, ptr %i.ble, align 8, !tbaa !730
  %i.blg = sext i32 %i.bkm to i64
  %i.blh = getelementptr inbounds [4 x i8], ptr %i.blf, i64 %i.blg
  %i.bli = load i32, ptr %i.blh, align 4, !tbaa !208
  %i.blj = sext i32 %i.bli to i64
  br label %_ZN14ImGuiTextIndex14get_line_beginEPKci.exit1456

_ZN14ImGuiTextIndex14get_line_beginEPKci.exit1456: ; preds = %bb.pp, %bb.pq
  %i.blk = phi i64 [ %i.blj, %bb.pq ], [ 0, %bb.pp ]
  %i.bll = getelementptr inbounds i8, ptr %.012081595, i64 %i.blk
  %i.blm = icmp slt i32 %i.bkn, %i.bld
  br i1 %i.blm, label %bb.pr, label %bb.ps

bb.pr:                                            ; preds = %_ZN14ImGuiTextIndex14get_line_beginEPKci.exit1456
  %i.bln = getelementptr inbounds nuw i8, ptr %i.i, i64 9552
  %i.blo = load ptr, ptr %i.bln, align 8, !tbaa !730
  %i.blp = sext i32 %i.bkn to i64
  %i.blq = getelementptr inbounds [4 x i8], ptr %i.blo, i64 %i.blp
  %i.blr = load i32, ptr %i.blq, align 4, !tbaa !208
  %i.bls = add nsw i32 %i.blr, -1
  br label %_ZN14ImGuiTextIndex12get_line_endEPKci.exit1457

bb.ps:                                            ; preds = %_ZN14ImGuiTextIndex14get_line_beginEPKci.exit1456
  %i.blt = load i32, ptr %i.bbl, align 8, !tbaa !732
  br label %_ZN14ImGuiTextIndex12get_line_endEPKci.exit1457

_ZN14ImGuiTextIndex12get_line_endEPKci.exit1457:  ; preds = %bb.pr, %bb.ps
  %i.blu = phi i32 [ %i.bls, %bb.pr ], [ %i.blt, %bb.ps ]
  %i.blv = sext i32 %i.blu to i64
  %i.blw = getelementptr inbounds i8, ptr %.012081595, i64 %i.blv
  call void @_ZN6ImFont10RenderTextEP10ImDrawListfRK6ImVec2jRK6ImVec4PKcS9_fi(ptr noundef nonnull align 8 dereferenceable(76) %i.bkq, ptr noundef %i.bks, float noundef %i.bkt, ptr noundef nonnull align 4 dereferenceable(8) %21, i32 noundef %i.bjz, ptr noundef nonnull align 4 dereferenceable(16) %19, ptr noundef %i.bll, ptr noundef %i.blw, float noundef %.01259, i32 noundef 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #41
  br label %bb.pt

bb.pt:                                            ; preds = %_ZN14ImGuiTextIndex12get_line_endEPKci.exit1457, %bb.po, %bb.pn, %bb.pm
  %25 = trunc nuw i8 %.41246 to i1
  br i1 %25, label %bb.pu, label %bb.qa

bb.pu:                                            ; preds = %bb.pt
  %i.blx = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.bly = load float, ptr %i.blx, align 8, !tbaa !734
  %i.blz = getelementptr inbounds nuw i8, ptr %.012601537, i64 108 ; 2 uses
  %i.bma = load float, ptr %i.blz, align 4, !tbaa !391
  %i.bmb = fadd float %i.bly, %i.bma              ; 3 uses
  store float %i.bmb, ptr %i.blz, align 4, !tbaa !391
  %i.bmc = getelementptr inbounds nuw i8, ptr %i.i, i64 122
  %i.bmd = load i8, ptr %i.bmc, align 2, !tbaa !735, !range !184, !noundef !185
  %i.bme = trunc nuw i8 %i.bmd to i1
  %i.bmf = fcmp ugt float %i.bmb, 0.000000e+00
  %or.cond1395 = select i1 %i.bme, i1 %i.bmf, i1 false
  br i1 %or.cond1395, label %bb.pv, label %bb.pw

bb.pv:                                            ; preds = %bb.pu
  %i.bmg = call float @fmodf(float noundef %i.bmb, float noundef 1.200000e+00) #41
  %i.bmh = fcmp ole float %i.bmg, 8.000000e-01
  br label %bb.pw

bb.pw:                                            ; preds = %bb.pv, %bb.pu
  %i.bmi = phi i1 [ %i.bmh, %bb.pv ], [ true, %bb.pu ]
  %i.bmj = load float, ptr %18, align 8, !tbaa !194
  %.sroa.01483.0.vec.extract1486 = extractelement <2 x float> %.sroa.01483.01607, i64 0
  %i.bmk = fadd float %.sroa.01483.0.vec.extract1486, %i.bmj
  %i.bml = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.bmm = load float, ptr %i.bml, align 4, !tbaa !197
  %.sroa.01483.4.vec.extract1491 = extractelement <2 x float> %.sroa.01483.01607, i64 1
  %i.bmn = load float, ptr %i.bbp, align 8, !tbaa !205
  %i.bmo = fadd float %.sroa.01483.4.vec.extract1491, %i.bmm
  %i.bmp = fsub float %i.bmk, %.sroa.01478.0
  %i.bmq = insertelement <4 x float> poison, float %i.bmo, i64 0
  %i.bmr = insertelement <4 x float> %i.bmq, float %i.bmp, i64 1
  %i.bms = fptosi <4 x float> %i.bmr to <4 x i32>
  %i.bmt = sitofp <4 x i32> %i.bms to <4 x float> ; 4 uses
  %i.bmu = shufflevector <4 x float> %i.bmt, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.bmv = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, float %i.bmn, i64 3
  %i.bmw = fsub <4 x float> %i.bmu, %i.bmv
  %i.bmx = fadd <4 x float> %i.bmw, <float 1.000000e+00, float -1.500000e+00, float -0.000000e+00, float 5.000000e-01> ; 4 uses
  %i.bmy = load <4 x float>, ptr %19, align 16    ; 2 uses
  %i.bmz = fcmp ogt <4 x float> %i.bmy, %i.bmx
  %i.bna = fcmp olt <4 x float> %i.bmy, %i.bmx
  %i.bnb = shufflevector <4 x i1> %i.bna, <4 x i1> %i.bmz, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bnc = freeze <4 x i1> %i.bnb
  %i.bnd = bitcast <4 x i1> %i.bnc to i4
  %i.bne = icmp eq i4 %i.bnd, -1
  %op.rdx = select i1 %i.bne, i1 %i.bmi, i1 false
  br i1 %op.rdx, label %bb.px, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.px:                                            ; preds = %bb.pw
  %i.bnf = getelementptr inbounds nuw i8, ptr %.21264, i64 712
  %i.bng = load ptr, ptr %i.bnf, align 8, !tbaa !202
  %i.bnh = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 34, float noundef 1.000000e+00)
  %i.bni = getelementptr inbounds nuw i8, ptr %i.i, i64 3472
  %i.bnj = load float, ptr %i.bni, align 8, !tbaa !736
  %i.bnk = extractelement <4 x float> %i.bmx, i64 1
  %i.bnl = extractelement <4 x float> %i.bmx, i64 3
  %i.bnm = extractelement <4 x float> %i.bmt, i64 1
  call void @_ZN10ImDrawList8AddLineVEfffjf(ptr noundef nonnull align 8 dereferenceable(224) %i.bng, float noundef %i.bnm, float noundef %i.bnl, float noundef %i.bnk, i32 noundef %i.bnh, float noundef %i.bnj)
  br label %_ZNK6ImRect8OverlapsERKS_.exit.thread

_ZNK6ImRect8OverlapsERKS_.exit.thread:            ; preds = %bb.px, %bb.pw
  br i1 %i.dl, label %bb.qa, label %bb.py

bb.py:                                            ; preds = %_ZNK6ImRect8OverlapsERKS_.exit.thread
  %i.bnn = load i32, ptr %i.ei, align 4, !tbaa !218
  %i.bno = icmp eq i32 %i.bnn, %i.s
  br i1 %i.bno, label %bb.pz, label %bb.qa

bb.pz:                                            ; preds = %bb.py
  %i.bnp = getelementptr inbounds nuw i8, ptr %i.i, i64 10008
  store i8 1, ptr %i.bnp, align 8, !tbaa !737
  %i.bnq = getelementptr inbounds nuw i8, ptr %i.i, i64 10009
  store i8 1, ptr %i.bnq, align 1, !tbaa !738
  %i.bnr = extractelement <4 x float> %i.bmt, i64 1
  %i.bns = fadd float %i.bnr, -1.000000e+00
  %i.bnt = load float, ptr %i.bbp, align 8, !tbaa !205 ; 2 uses
  %i.bnu = extractelement <4 x float> %i.bmt, i64 0
  %i.bnv = fsub float %i.bnu, %i.bnt
  %i.bnw = getelementptr inbounds nuw i8, ptr %i.i, i64 10012
  store float %i.bns, ptr %i.bnw, align 4, !tbaa !190
  %.sroa_idx1467 = getelementptr inbounds nuw i8, ptr %i.i, i64 10016
  store float %i.bnv, ptr %.sroa_idx1467, align 8, !tbaa !190
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.i, i64 10020
  store float %i.bnt, ptr %i.bnx, align 4, !tbaa !739
  %i.bny = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.bnz = load ptr, ptr %i.bny, align 8, !tbaa !247
  %i.boa = load i32, ptr %i.bnz, align 8, !tbaa !741
  %i.bob = getelementptr inbounds nuw i8, ptr %i.i, i64 10024
  store i32 %i.boa, ptr %i.bob, align 8, !tbaa !742
  br label %bb.qa

bb.qa:                                            ; preds = %_ZNK6ImRect8OverlapsERKS_.exit.thread, %bb.py, %bb.pz, %bb.pt
  %or.cond188 = or i1 %i.dn, %.01232.in15841591   ; 2 uses
  br i1 %or.cond188, label %bb.qc, label %bb.qb

bb.qb:                                            ; preds = %bb.qa
  %i.boc = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 9 uses
  %i.bod = getelementptr inbounds nuw i8, ptr %i.boc, i64 9592 ; 2 uses
  %i.boe = getelementptr inbounds nuw i8, ptr %i.boc, i64 9696
  %i.bof = load i32, ptr %i.boe, align 8, !tbaa !406
  %i.bog = getelementptr inbounds nuw i8, ptr %i.boc, i64 4552
  %i.boh = load ptr, ptr %i.bog, align 8, !tbaa !401
  %i.boi = getelementptr inbounds nuw i8, ptr %i.boh, i64 16
  store i32 %i.bof, ptr %i.boi, align 8, !tbaa !405
  %i.boj = getelementptr inbounds nuw i8, ptr %i.boc, i64 9656
  %i.bok = load i32, ptr %i.boj, align 8, !tbaa !407
  %i.bol = getelementptr inbounds nuw i8, ptr %i.boc, i64 4560
  %i.bom = load ptr, ptr %i.bol, align 8, !tbaa !313 ; 7 uses
  %i.bon = getelementptr inbounds nuw i8, ptr %i.bom, i64 64
  store i32 %i.bok, ptr %i.bon, align 8, !tbaa !407
  %i.boo = getelementptr inbounds nuw i8, ptr %i.boc, i64 9608
  %i.bop = load float, ptr %i.boo, align 8, !tbaa !408
  %i.boq = getelementptr inbounds nuw i8, ptr %i.bom, i64 16
  store float %i.bop, ptr %i.boq, align 8, !tbaa !408
  %i.bor = getelementptr inbounds nuw i8, ptr %i.bom, i64 32 ; 2 uses
  %i.bos = getelementptr inbounds nuw i8, ptr %i.boc, i64 9624 ; 2 uses
  %i.bot = load <2 x i32>, ptr %i.bos, align 8, !tbaa !208
  %i.bou = load <2 x i32>, ptr %i.bor, align 8, !tbaa !208
  store <2 x i32> %i.bou, ptr %i.bos, align 8, !tbaa !208
  store <2 x i32> %i.bot, ptr %i.bor, align 8, !tbaa !208
  %i.bov = getelementptr inbounds nuw i8, ptr %i.boc, i64 9632 ; 2 uses
  %i.bow = load ptr, ptr %i.bov, align 8, !tbaa !409
  %i.box = getelementptr inbounds nuw i8, ptr %i.bom, i64 40 ; 2 uses
  %i.boy = load ptr, ptr %i.box, align 8, !tbaa !409
  store ptr %i.boy, ptr %i.bov, align 8, !tbaa !409
  store ptr %i.bow, ptr %i.box, align 8, !tbaa !409
  %i.boz = load <2 x i32>, ptr %i.bod, align 8, !tbaa !208
  %i.bpa = load <2 x i32>, ptr %i.bom, align 8, !tbaa !208
  store <2 x i32> %i.bpa, ptr %i.bod, align 8, !tbaa !208
  store <2 x i32> %i.boz, ptr %i.bom, align 8, !tbaa !208
  %i.bpb = getelementptr inbounds nuw i8, ptr %i.boc, i64 9600 ; 2 uses
  %i.bpc = load ptr, ptr %i.bpb, align 8, !tbaa !410
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.bom, i64 8 ; 2 uses
  %i.bpe = load ptr, ptr %i.bpd, align 8, !tbaa !410
  store ptr %i.bpe, ptr %i.bpb, align 8, !tbaa !410
  store ptr %i.bpc, ptr %i.bpd, align 8, !tbaa !410
  br label %bb.qc

bb.qc:                                            ; preds = %bb.qb, %bb.qa
  br i1 %i.r, label %bb.qd, label %bb.qh

bb.qd:                                            ; preds = %bb.qc
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #41
  %i.bpf = load float, ptr %i.ab, align 8, !tbaa !203
  %i.bpg = fadd float %i.bbr, %i.bpf              ; 2 uses
  store float 0.000000e+00, ptr %22, align 4, !tbaa !194
  %i.bph = getelementptr inbounds nuw i8, ptr %22, i64 4
  store float %i.bpg, ptr %i.bph, align 4, !tbaa !197
  %i.bpi = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.bpj = getelementptr inbounds nuw i8, ptr %i.bpi, i64 5312
  %i.bpk = load ptr, ptr %i.bpj, align 8, !tbaa !158 ; 3 uses
  %i.bpl = getelementptr inbounds nuw i8, ptr %i.bpk, i64 206
  store i8 1, ptr %i.bpl, align 2, !tbaa !182
  %i.bpm = getelementptr inbounds nuw i8, ptr %i.bpk, i64 209
  %i.bpn = load i8, ptr %i.bpm, align 1, !tbaa !183, !range !184, !noundef !185
  %i.bpo = trunc nuw i8 %i.bpn to i1
  br i1 %i.bpo, label %_ZN5ImGui5DummyERK6ImVec2.exit, label %bb.qe

bb.qe:                                            ; preds = %bb.qd
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  %i.bpp = getelementptr inbounds nuw i8, ptr %i.bpk, i64 280
  %i.bpq = load <2 x float>, ptr %i.bpp, align 4, !tbaa !190 ; 2 uses
  %i.bpr = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.bpg, i64 1
  %i.bps = fadd <2 x float> %i.bpr, %i.bpq
  store <2 x float> %i.bpq, ptr %8, align 8, !tbaa !190
  %i.bpt = getelementptr inbounds nuw i8, ptr %8, i64 8
  store <2 x float> %i.bps, ptr %i.bpt, align 8, !tbaa !190
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %22, float noundef -1.000000e+00)
  %i.bpu = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %8, i32 noundef 0, ptr noundef null, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  br label %_ZN5ImGui5DummyERK6ImVec2.exit

_ZN5ImGui5DummyERK6ImVec2.exit:                   ; preds = %bb.qd, %bb.qe
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #41
  %i.bpv = getelementptr inbounds nuw i8, ptr %i.i, i64 7796 ; 2 uses
  %i.bpw = load i32, ptr %i.bpv, align 4, !tbaa !306
  %i.bpx = or i32 %i.bpw, 1048577
  store i32 %i.bpx, ptr %i.bpv, align 4, !tbaa !306
  call void @_ZN5ImGui8EndChildEv()
  %i.bpy = getelementptr inbounds nuw i8, ptr %i.i, i64 7856 ; 2 uses
  %i.bpz = load i32, ptr %i.bpy, align 8, !tbaa !275
  %i.bqa = and i32 %i.bpz, 128
  %i.bqb = or i32 %i.bqa, %.sroa.71499.0
  call void @_ZN5ImGui8EndGroupEv()
  %i.bqc = load i32, ptr %i.ct, align 8, !tbaa !207 ; 2 uses
  %i.bqd = icmp eq i32 %i.bqc, 0
  br i1 %i.bqd, label %bb.qg, label %bb.qf

bb.qf:                                            ; preds = %_ZN5ImGui5DummyERK6ImVec2.exit
  %i.bqe = call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %.21264, ptr noundef nonnull @.str.5, ptr noundef null)
  %.not1342 = icmp eq i32 %i.bqc, %i.bqe
  br i1 %.not1342, label %bb.qh, label %bb.qg

bb.qg:                                            ; preds = %bb.qf, %_ZN5ImGui5DummyERK6ImVec2.exit
  store i32 %i.s, ptr %i.ct, align 8, !tbaa !207
  store i32 %.sroa.51497.0, ptr %i.cu, align 4, !tbaa !255
  store i32 %i.bqb, ptr %i.bpy, align 8, !tbaa !275
  br label %bb.qh

end_hunk_0
begin_hunk_1_@_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_:bb.a

bb.aj:                                            ; preds = %bb.ai
  %i.eu = and i32 %.0273, 131072
  %.not297 = icmp eq i32 %i.eu, 0
  br i1 %.not297, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ev = getelementptr inbounds nuw i8, ptr %i.f, i64 8219
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !472, !range !184, !noundef !185
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ey = getelementptr inbounds nuw i8, ptr %i.f, i64 8400
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !473
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.fb = getelementptr inbounds nuw i8, ptr %i.f, i64 8224
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !346
  %i.fd = icmp eq ptr %i.fc, %i.h
  br i1 %i.fd, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fe = call noundef zeroext i1 @_ZN5ImGui28NavMoveRequestButNoResultYetEv()
  %spec.select = select i1 %i.fe, i1 true, i1 %i.es
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.aj, %bb.ak, %bb.am, %bb.al, %bb.ai
  %.0281.shrunk = phi i1 [ false, %bb.ai ], [ %i.es, %bb.ak ], [ %i.es, %bb.aj ], [ %spec.select, %bb.an ], [ %i.es, %bb.am ], [ %i.es, %bb.al ] ; 2 uses
  %i.ff = and i32 %.0273, 256
  %.not298 = icmp eq i32 %i.ff, 0                 ; 4 uses
  br i1 %.0282.in, label %bb.ax, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fg = and i32 %.0273, 1048576
  %.not299 = icmp eq i32 %i.fg, 0
  br i1 %.not299, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fh = getelementptr inbounds nuw i8, ptr %i.h, i64 424 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !474 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.h, i64 416
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !475
  %i.fl = add nsw i32 %i.fk, -1
  %i.fm = shl nuw i32 1, %i.fl                    ; 2 uses
  %i.fn = and i32 %i.fm, %i.fi
  %.not300 = icmp eq i32 %i.fn, 0
  br i1 %.not300, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fo = getelementptr inbounds nuw i8, ptr %i.f, i64 8184
  %i.fp = getelementptr inbounds nuw i8, ptr %i.f, i64 8192
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !476
  %i.fr = load i32, ptr %i.fo, align 8, !tbaa !477
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr [40 x i8], ptr %i.fq, i64 %i.fs
  %i.fu = getelementptr i8, ptr %i.ft, i64 -8     ; 2 uses
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !479 ; 2 uses
  %i.fw = load float, ptr %i.cc, align 4, !tbaa !187 ; 2 uses
  %i.fx = fcmp oge float %i.fv, %i.fw
  %i.fy = select i1 %i.fx, float %i.fv, float %i.fw
  store float %i.fy, ptr %i.fu, align 4, !tbaa !479
  %i.fz = load float, ptr %i.bz, align 4, !tbaa !195
  %i.ga = getelementptr inbounds nuw i8, ptr %i.h, i64 628
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !199
  %i.gc = fcmp ult float %i.fz, %i.gb
  br i1 %i.gc, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gd = xor i32 %i.fm, -1
  %i.ge = and i32 %i.fi, %i.gd
  store i32 %i.ge, ptr %i.fh, align 8, !tbaa !474
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as, %bb.aq, %bb.ap
  %or.cond3 = select i1 %i.dq, i1 %.0281.shrunk, i1 false
  br i1 %or.cond3, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gf = fsub float %i.cx, %i.aa
  call fastcc void @_ZL22TreeNodeStoreStackDataif(i32 noundef %.0273, float noundef %i.gf)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %brmerge.not = and i1 %i.dq, %.not296
  br i1 %brmerge.not, label %bb.aw, label %bb.dl

bb.aw:                                            ; preds = %bb.av
  %i.gg = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 5312
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !158
  call void @_ZN5ImGui6IndentEf(float noundef 0.000000e+00)
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 416 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !475
  %i.gl = add nsw i32 %i.gk, 1
  store i32 %i.gl, ptr %i.gj, align 8, !tbaa !475
  call void @_ZN5ImGui14PushOverrideIDEj(i32 noundef %0)
  br label %bb.dl

bb.ax:                                            ; preds = %bb.ao
  br i1 %or.cond, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN5ImGui26TablePushBackgroundChannelEv()
  %i.gm = load i32, ptr %i.eb, align 8, !tbaa !275
  %i.gn = or i32 %i.gm, 512
  store i32 %i.gn, ptr %i.eb, align 8, !tbaa !275
  %i.go = getelementptr inbounds nuw i8, ptr %i.h, i64 616
  %i.gp = getelementptr inbounds nuw i8, ptr %i.f, i64 7908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gp, ptr noundef nonnull align 8 dereferenceable(16) %i.go, i64 16, i1 false), !tbaa.struct !236
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.gq = and i32 %.0273, 4
  %.not301 = icmp eq i32 %i.gq, 0
  br i1 %.not301, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.gr = getelementptr inbounds nuw i8, ptr %i.f, i64 7852
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !255
  %i.gt = and i32 %i.gs, 16384
  %.not302 = icmp eq i32 %i.gt, 0
  br i1 %.not302, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.gu = phi i32 [ 4096, %bb.bb ], [ 0, %bb.ba ] ; 2 uses
  %i.gv = or disjoint i32 %i.gu, 512
  %spec.select360 = select i1 %.not298, i32 %i.gv, i32 %i.gu
  %i.gw = fsub float %i.cx, %i.aa                 ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.f, i64 3324
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !779 ; 2 uses
  %i.gz = fsub float %i.gw, %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.f, i64 272
  %i.hb = load float, ptr %i.ha, align 8, !tbaa !480 ; 2 uses
  %i.hc = fcmp ult float %i.hb, %i.gz
  br i1 %i.hc, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hd = load float, ptr %i.x, align 8, !tbaa !205
  %i.he = call float @llvm.fmuladd.f32(float %.sroa.0328.0, float 2.000000e+00, float %i.hd)
  %i.hf = fadd float %i.gw, %i.he
  %i.hg = fadd float %i.gy, %i.hf
  %i.hh = fcmp olt float %i.hb, %i.hg
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.hi = phi i1 [ false, %bb.bc ], [ %i.hh, %bb.bd ] ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.f, i64 7852
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !255
  %i.hl = and i32 %i.hk, 4194304
  %i.hm = icmp ne i32 %i.hl, 0                    ; 5 uses
  %i.hn = and i32 %.0273, 192
  %i.ho = icmp eq i32 %i.hn, 0
  %i.hp = select i1 %i.ho, i32 192, i32 128
  %i.hq = select i1 %i.hm, i32 %i.hp, i32 0
  %.1274 = or i32 %i.hq, %.0273                   ; 5 uses
  %i.hr = and i32 %.1274, 64
  %.not303 = icmp eq i32 %i.hr, 0
  %. = select i1 %.not303, i32 32, i32 288
  %.sink361 = select i1 %i.hi, i32 16, i32 %.
  %i.hs = or disjoint i32 %spec.select360, %.sink361
  %i.ht = lshr i32 %.0273, 9
  %i.hu = and i32 %i.ht, 262144
  %spec.select363 = or disjoint i32 %i.hs, %i.hu  ; 3 uses
  store i32 %spec.select363, ptr %i.a, align 4, !tbaa !208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.hv = trunc i32 %.0273 to i8
  %i.hw = and i8 %i.hv, 1
  store i8 %i.hw, ptr %i.b, align 1, !tbaa !231
  br i1 %i.hm, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  call void @_ZN5ImGui21MultiSelectItemHeaderEjPbPi(i32 noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !208 ; 2 uses
  br i1 %i.hi, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.hx = and i32 %.pre, -49
  %i.hy = or disjoint i32 %i.hx, 16
  br label %bb.bi

bb.bh:                                            ; preds = %bb.be
  %i.hz = getelementptr inbounds nuw i8, ptr %i.f, i64 5320
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !209
  %i.ib = icmp eq ptr %i.h, %i.ia
  %or.cond7 = and i1 %i.hi, %i.ib
  %i.ic = or i32 %spec.select363, 65536
  %spec.select362 = select i1 %or.cond7, i32 %spec.select363, i32 %i.ic
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bf, %bb.bg
  %i.id = phi i32 [ %i.hy, %bb.bg ], [ %spec.select362, %bb.bh ], [ %.pre, %bb.bf ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #41
  %i.ie = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %8, i32 noundef %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef %i.id) ; 2 uses
  br i1 %.not298, label %bb.bj, label %bb.bx

bb.bj:                                            ; preds = %bb.bi
  br i1 %i.ie, label %bb.bk, label %.critedge

bb.bk:                                            ; preds = %bb.bj
  %i.if = getelementptr inbounds nuw i8, ptr %i.f, i64 8920
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !214
  %.not305 = icmp eq i32 %i.ig, %0
  br i1 %.not305, label %bb.bu, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ih = and i32 %.1274, 192
  %i.ii = icmp eq i32 %i.ih, 0
  br i1 %i.ii, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ij = getelementptr inbounds nuw i8, ptr %i.f, i64 8244
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !224
  %i.il = icmp ne i32 %i.ik, %0
  %or.cond9 = or i1 %i.hm, %i.il
  br i1 %or.cond9, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.0277 = phi i8 [ 1, %bb.bn ], [ 0, %bb.bm ]    ; 2 uses
  %i.im = and i32 %.1274, 128
  %.not306 = icmp eq i32 %i.im, 0
  br i1 %.not306, label %bb.bs, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  br i1 %i.hi, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.in = getelementptr inbounds nuw i8, ptr %i.f, i64 8217
  %i.io = load i8, ptr %i.in, align 1, !tbaa !223, !range !184, !noundef !185
  %i.ip = xor i8 %i.io, 1
  %i.iq = zext nneg i8 %i.ip to i32
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.ir = phi i32 [ 0, %bb.bp ], [ %i.iq, %bb.bq ]
  %i.is = zext nneg i8 %.0277 to i32
  %i.it = or i32 %i.ir, %i.is
  %i.iu = icmp ne i32 %i.it, 0
  %i.iv = zext i1 %i.iu to i8
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bo
  %.1278 = phi i8 [ %i.iv, %bb.br ], [ %.0277, %bb.bo ] ; 2 uses
  %i.iw = and i32 %.1274, 64
  %.not307 = icmp eq i32 %i.iw, 0
  br i1 %.not307, label %.critedge, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ix = getelementptr inbounds nuw i8, ptr %i.f, i64 2890
  %i.iy = load i16, ptr %i.ix, align 2, !tbaa !219
  %i.iz = icmp eq i16 %i.iy, 2
  %spec.select316 = select i1 %i.iz, i8 1, i8 %.1278
  br label %.critedge

bb.bu:                                            ; preds = %bb.bk
  %not. = xor i1 %i.dq, true                      ; 2 uses
  %.317 = zext i1 %not. to i8
  br label %.critedge

.critedge:                                        ; preds = %bb.bt, %bb.bj, %bb.bu, %bb.bs
  %.0279 = phi i1 [ %not., %bb.bu ], [ false, %bb.bj ], [ true, %bb.bs ], [ true, %bb.bt ] ; 2 uses
  %.2 = phi i8 [ %.317, %bb.bu ], [ 0, %bb.bj ], [ %.1278, %bb.bs ], [ %spec.select316, %bb.bt ] ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.f, i64 8220 ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !222
  %i.jc = icmp eq i32 %i.jb, %0
  br i1 %i.jc, label %bb.bv, label %.thread356

bb.bv:                                            ; preds = %.critedge
  %i.jd = getelementptr inbounds nuw i8, ptr %i.f, i64 8400
  %i.je = load i32, ptr %i.jd, align 8, !tbaa !473
  %i.jf = icmp eq i32 %i.je, 0
  %or.cond11 = and i1 %i.dq, %i.jf
  br i1 %or.cond11, label %bb.bw, label %.thread

bb.bw:                                            ; preds = %bb.bv
  call void @_ZN5ImGui27NavClearPreferredPosForAxisE9ImGuiAxis(i32 noundef 0)
  call void @_ZN5ImGui20NavMoveRequestCancelEv()
  %.pre344 = load i32, ptr %i.ja, align 4, !tbaa !222
  %i.jg = icmp eq i32 %.pre344, %0
  br i1 %i.jg, label %.thread, label %.thread358

.thread:                                          ; preds = %bb.bv, %bb.bw
  %.3355 = phi i8 [ 1, %bb.bw ], [ %.2, %bb.bv ]
  %i.jh = getelementptr inbounds nuw i8, ptr %i.f, i64 8400
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !473
  %i.jj = icmp ne i32 %i.ji, 1
  %or.cond13 = or i1 %i.dq, %i.jj
  br i1 %or.cond13, label %.thread356, label %.thread340

.thread340:                                       ; preds = %.thread
  call void @_ZN5ImGui27NavClearPreferredPosForAxisE9ImGuiAxis(i32 noundef 0)
  call void @_ZN5ImGui20NavMoveRequestCancelEv()
  br label %.thread358

.thread356:                                       ; preds = %.critedge, %.thread
  %.3354 = phi i8 [ %.3355, %.thread ], [ %.2, %.critedge ]
  %i.jk = trunc nuw i8 %.3354 to i1
  br i1 %i.jk, label %.thread358, label %bb.bx

.thread358:                                       ; preds = %bb.bw, %.thread340, %.thread356
  %i.jl = xor i1 %i.dq, true                      ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.h, i64 448
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !481
  %i.jo = zext i1 %i.jl to i32
  call void @_ZN12ImGuiStorage6SetIntEji(ptr noundef nonnull align 8 dereferenceable(16) %i.jn, i32 noundef %i.dp, i32 noundef %i.jo)
  %i.jp = load i32, ptr %i.eb, align 8, !tbaa !275
  %i.jq = or i32 %i.jp, 16
  store i32 %i.jq, ptr %i.eb, align 8, !tbaa !275
  br label %bb.bx

bb.bx:                                            ; preds = %.thread356, %.thread358, %bb.bi
  %.0283.in = phi i1 [ %i.dq, %bb.bi ], [ %i.jl, %.thread358 ], [ %i.dq, %.thread356 ] ; 5 uses
  %.1280 = phi i1 [ %i.ie, %bb.bi ], [ %.0279, %.thread358 ], [ %.0279, %.thread356 ] ; 2 uses
  %.5 = phi i8 [ 1, %bb.bi ], [ 0, %.thread358 ], [ 1, %.thread356 ]
  br i1 %i.hm, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #41
  %11 = select i1 %.1280, i8 %.5, i8 0
  store i8 %11, ptr %i.e, align 1, !tbaa !231
  call void @_ZN5ImGui21MultiSelectItemFooterEjPbS0_i(i32 noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, i32 noundef 0)
  br i1 %.1280, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.jr = getelementptr inbounds nuw i8, ptr %i.h, i64 368
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !348
  %i.jt = getelementptr inbounds nuw i8, ptr %i.f, i64 7780
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !344
  call void @_ZN5ImGui8SetNavIDEj13ImGuiNavLayerjRK6ImRect(i32 noundef %0, i32 noundef %i.js, i32 noundef %i.ju, ptr noundef nonnull align 4 dereferenceable(16) %8)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bx
  %i.jv = load i8, ptr %i.b, align 1, !tbaa !231, !range !184, !noundef !185 ; 2 uses
  %i.jw = zext nneg i8 %i.jv to i32
  %i.jx = and i32 %.0273, 1
  %.not308 = icmp eq i32 %i.jx, %i.jw
  br i1 %.not308, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jy = load i32, ptr %i.eb, align 8, !tbaa !275
  %i.jz = or i32 %i.jy, 8
  store i32 %i.jz, ptr %i.eb, align 8, !tbaa !275
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.ka = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 0, float noundef 1.000000e+00) ; 4 uses
  %spec.select318 = select i1 %i.hm, i32 6, i32 2 ; 2 uses
  br i1 %.not288, label %bb.cp, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.kb = load i8, ptr %i.d, align 1, !tbaa !231, !range !184, !noundef !185
  %i.kc = trunc nuw i8 %i.kb to i1
  %i.kd = load i8, ptr %i.c, align 1, !range !184
  %i.ke = trunc nuw i8 %i.kd to i1
  %i.kf = select i1 %i.kc, i32 27, i32 26
  %i.kg = select i1 %i.ke, i32 %i.kf, i32 25
  %i.kh = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.kg, float noundef 1.000000e+00)
  %.sroa.030.0.copyload = load <2 x float>, ptr %5, align 8, !tbaa !190
  %.sroa.029.0.copyload = load <2 x float>, ptr %i.cg, align 8, !tbaa !190
  %i.ki = getelementptr inbounds nuw i8, ptr %i.f, i64 3292
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !233
  call void @_ZN5ImGui11RenderFrameE6ImVec2S0_jbf(<2 x float> %.sroa.030.0.copyload, <2 x float> %.sroa.029.0.copyload, i32 noundef %i.kh, i1 noundef zeroext true, float noundef %i.kj)
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectjif(ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %0, i32 noundef %spec.select318, float noundef -1.000000e+00)
  %.not = xor i1 %i.au, true
  %or.cond17 = select i1 %.not, i1 true, i1 %i.az
  br i1 %or.cond17, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @_ZN5ImGui25TablePopBackgroundChannelEv()
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.kk = and i32 %.0273, 512
  %.not311 = icmp eq i32 %i.kk, 0
  br i1 %.not311, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.kl = getelementptr inbounds nuw i8, ptr %i.h, i64 712
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !202
  %i.kn = fneg float %i.aa
  %i.ko = load float, ptr %i.x, align 8, !tbaa !205
  %i.kp = insertelement <2 x float> poison, float %i.kn, i64 0
  %i.kq = insertelement <2 x float> %i.kp, float %i.ko, i64 1
  %i.kr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kq, <2 x float> <float 6.000000e-01, float 5.000000e-01>, <2 x float> %i.cw)
  call void @_ZN5ImGui12RenderBulletEP10ImDrawList6ImVec2j(ptr noundef %i.km, <2 x float> %i.kr, i32 noundef %i.ka)
  br label %bb.cl

bb.ci:                                            ; preds = %bb.cg
  br i1 %.not298, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.ks = getelementptr inbounds nuw i8, ptr %i.h, i64 712
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !202
  %i.ku = fadd float %.sroa.0328.0, %i.gw
  %i.kv = insertelement <2 x float> %i.cw, float %i.ku, i64 0
  %i.kw = and i32 %.0273, 536870912
  %.not312 = icmp eq i32 %i.kw, 0
  %i.kx = select i1 %.not312, i32 3, i32 2
  %i.ky = select i1 %.0283.in, i32 %i.kx, i32 1
  call void @_ZN5ImGui11RenderArrowEP10ImDrawList6ImVec2j8ImGuiDirf(ptr noundef %i.kt, <2 x float> %i.kv, i32 noundef %i.ka, i32 noundef %i.ky, float noundef 1.000000e+00)
  br label %bb.cl

bb.ck:                                            ; preds = %bb.ci
  %i.kz = fsub float %i.aa, %.sroa.0328.0
  %i.la = fsub float %i.cx, %i.kz                 ; 2 uses
  store float %i.la, ptr %6, align 8, !tbaa !194
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cj, %bb.ck, %bb.ch
  %i.lb = phi float [ %i.cx, %bb.cj ], [ %i.la, %bb.ck ], [ %i.cx, %bb.ch ] ; 2 uses
  %i.lc = and i32 %.0273, 268435456
  %.not313 = icmp eq i32 %i.lc, 0
  br i1 %.not313, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ld = load float, ptr %i.x, align 8, !tbaa !205
  %i.le = load float, ptr %.sroa.0328.0.in, align 4, !tbaa !206
  %i.lf = fadd float %i.ld, %i.le
  %i.lg = load float, ptr %i.cg, align 8, !tbaa !238
  %i.lh = fsub float %i.lg, %i.lf
  store float %i.lh, ptr %i.cg, align 8, !tbaa !238
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.li = getelementptr inbounds nuw i8, ptr %i.f, i64 10264
  %i.lj = load i8, ptr %i.li, align 8, !tbaa !191, !range !184, !noundef !185
  %i.lk = trunc nuw i8 %i.lj to i1
  br i1 %i.lk, label %bb.co, label %bb.cz

bb.co:                                            ; preds = %bb.cn
  call void @_ZN5ImGui24LogSetNextTextDecorationEPKcS1_(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.100)
  br label %bb.cz

bb.cp:                                            ; preds = %bb.cd
  %i.ll = load i8, ptr %i.c, align 1, !tbaa !231, !range !184, !noundef !185 ; 3 uses
  %i.lm = or i8 %i.ll, %i.jv
  %or.cond19.not = icmp eq i8 %i.lm, 0
  br i1 %or.cond19.not, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ln = trunc nuw i8 %i.ll to i1
  %i.lo = load i8, ptr %i.d, align 1, !tbaa !231, !range !184, !noundef !185
  %i.lp = and i8 %i.lo, %i.ll
  %or.cond21.not = icmp eq i8 %i.lp, 0
  %i.lq = select i1 %i.ln, i32 26, i32 25
  %i.lr = select i1 %or.cond21.not, i32 %i.lq, i32 27
  %i.ls = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.lr, float noundef 1.000000e+00)
  %.sroa.028.0.copyload = load <2 x float>, ptr %5, align 8, !tbaa !190
  %.sroa.027.0.copyload = load <2 x float>, ptr %i.cg, align 8, !tbaa !190
  call void @_ZN5ImGui11RenderFrameE6ImVec2S0_jbf(<2 x float> %.sroa.028.0.copyload, <2 x float> %.sroa.027.0.copyload, i32 noundef %i.ls, i1 noundef zeroext false, float noundef 0.000000e+00)
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cp, %bb.cq
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectjif(ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %0, i32 noundef %spec.select318, float noundef 0.000000e+00)
  %.not22 = xor i1 %i.au, true
  %or.cond24 = select i1 %.not22, i1 true, i1 %i.az
  br i1 %or.cond24, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @_ZN5ImGui25TablePopBackgroundChannelEv()
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.lt = and i32 %.0273, 512
  %.not309 = icmp eq i32 %i.lt, 0
  br i1 %.not309, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.lu = getelementptr inbounds nuw i8, ptr %i.h, i64 712
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !202
  %i.lw = fneg float %i.aa
  %i.lx = load float, ptr %i.x, align 8, !tbaa !205
  %i.ly = insertelement <2 x float> poison, float %i.lw, i64 0
  %i.lz = insertelement <2 x float> %i.ly, float %i.lx, i64 1
  %i.ma = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lz, <2 x float> splat (float 5.000000e-01), <2 x float> %i.cw)
  call void @_ZN5ImGui12RenderBulletEP10ImDrawList6ImVec2j(ptr noundef %i.lv, <2 x float> %i.ma, i32 noundef %i.ka)
  br label %bb.cx

bb.cv:                                            ; preds = %bb.ct
  br i1 %.not298, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.mb = getelementptr inbounds nuw i8, ptr %i.h, i64 712
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !202
  %i.md = fadd float %.sroa.0328.0, %i.gw
  %i.me = load float, ptr %i.x, align 8, !tbaa !205
  %i.mf = extractelement <2 x float> %i.cw, i64 1
  %i.mg = call float @llvm.fmuladd.f32(float %i.me, float 1.500000e-01, float %i.mf)
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.md, i64 0
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %i.mg, i64 1
  %i.mh = and i32 %.0273, 536870912
  %.not310 = icmp eq i32 %i.mh, 0
  %i.mi = select i1 %.not310, i32 3, i32 2
  %i.mj = select i1 %.0283.in, i32 %i.mi, i32 1
  call void @_ZN5ImGui11RenderArrowEP10ImDrawList6ImVec2j8ImGuiDirf(ptr noundef %i.mc, <2 x float> %.sroa.0.4.vec.insert, i32 noundef %i.ka, i32 noundef %i.mj, float noundef f0x3F333333)
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cv, %bb.cw, %bb.cu
  %i.mk = getelementptr inbounds nuw i8, ptr %i.f, i64 10264
  %i.ml = load i8, ptr %i.mk, align 8, !tbaa !191, !range !184, !noundef !185
  %i.mm = trunc nuw i8 %i.ml to i1
  br i1 %i.mm, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  call void @_ZN5ImGui24LogSetNextTextDecorationEPKcS1_(ptr noundef nonnull @.str.101, ptr noundef null)
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cn, %bb.co, %bb.cx, %bb.cy
  %i.mn = phi float [ %i.lb, %bb.cn ], [ %i.lb, %bb.co ], [ %i.cx, %bb.cx ], [ %i.cx, %bb.cy ]
  br i1 %i.es, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  %i.mo = fsub float %i.mn, %i.aa
  %i.mp = fadd float %.sroa.0328.0, %i.mo
  %i.mq = load float, ptr %i.x, align 8, !tbaa !205
end_hunk_1
