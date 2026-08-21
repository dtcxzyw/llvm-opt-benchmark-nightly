inline.NumInlined: 2414
inline.NumDeleted: 435
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZN5ImGui8NewFrameEv:bb.a

_ZN5ImGuiL35NavSaveLastChildNavWindowIntoParentEP11ImGuiWindow.exit.i: ; preds = %bb.fb, %bb.fc, %.critedge.i.i
  %i.adk = getelementptr inbounds nuw i8, ptr %i.ada, i64 864 ; 2 uses
  %i.adl = load ptr, ptr %i.adk, align 8, !tbaa !697
  %.not228.i = icmp eq ptr %i.adl, null
  br i1 %.not228.i, label %_ZN5ImGuiL35NavSaveLastChildNavWindowIntoParentEP11ImGuiWindow.exit.thread.i, label %bb.fd

bb.fd:                                            ; preds = %_ZN5ImGuiL35NavSaveLastChildNavWindowIntoParentEP11ImGuiWindow.exit.i
  %i.adm = getelementptr inbounds nuw i8, ptr %i.oj, i64 7752
  %i.adn = load i32, ptr %i.adm, align 8, !tbaa !593
  %i.ado = icmp eq i32 %i.adn, 0
  br i1 %i.ado, label %bb.fe, label %_ZN5ImGuiL35NavSaveLastChildNavWindowIntoParentEP11ImGuiWindow.exit.thread.i

bb.fe:                                            ; preds = %bb.fd
  store ptr null, ptr %i.adk, align 8, !tbaa !697
  br label %_ZN5ImGuiL35NavSaveLastChildNavWindowIntoParentEP11ImGuiWindow.exit.thread.i

_ZN5ImGuiL35NavSaveLastChildNavWindowIntoParentEP11ImGuiWindow.exit.thread.i: ; preds = %bb.fe, %bb.fd, %_ZN5ImGuiL35NavSaveLastChildNavWindowIntoParentEP11ImGuiWindow.exit.i, %bb.ez
  %i.adp = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 102 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adp, i64 8
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adp, i64 7640 ; 2 uses
  %i.ads = load i32, ptr %i.adr, align 8, !tbaa !602 ; 2 uses
  %i.adt = icmp slt i32 %i.ads, 1
  br i1 %i.adt, label %_ZN5ImGui20GetTopMostPopupModalEv.exit.thread.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5ImGuiL35NavSaveLastChildNavWindowIntoParentEP11ImGuiWindow.exit.thread.i
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adp, i64 7648
  %i.adv = load ptr, ptr %i.adu, align 8, !tbaa !607
  %i.adw = zext nneg i32 %i.ads to i64
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fh, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.adw, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.fh ] ; 2 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 2 uses
  %i.adx = getelementptr inbounds nuw [48 x i8], ptr %i.adv, i64 %indvars.iv.next.i.i.i
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 8
  %i.adz = load ptr, ptr %i.ady, align 8, !tbaa !608 ; 2 uses
  %.not.i.i.i249 = icmp eq ptr %i.adz, null
  br i1 %.not.i.i.i249, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adz, i64 12
  %i.aeb = load i32, ptr %i.aea, align 4, !tbaa !428
  %i.aec = and i32 %i.aeb, 134217728
  %.not15.i.i.i = icmp eq i32 %i.aec, 0
  br i1 %.not15.i.i.i, label %bb.fh, label %_ZN5ImGui20GetTopMostPopupModalEv.exit.i.i

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %i.aed = icmp samesign ult i64 %indvars.iv.i.i.i, 2
  br i1 %i.aed, label %_ZN5ImGui20GetTopMostPopupModalEv.exit.thread.i.i, label %bb.ff, !llvm.loop !609

_ZN5ImGui20GetTopMostPopupModalEv.exit.i.i:       ; preds = %bb.fg
  %i.aee = getelementptr inbounds nuw i8, ptr %i.adp, i64 7984
  store ptr null, ptr %i.aee, align 8, !tbaa !698
  br label %_ZN5ImGui20GetTopMostPopupModalEv.exit.thread.i.i

_ZN5ImGui20GetTopMostPopupModalEv.exit.thread.i.i: ; preds = %bb.fh, %_ZN5ImGui20GetTopMostPopupModalEv.exit.i.i, %_ZN5ImGuiL35NavSaveLastChildNavWindowIntoParentEP11ImGuiWindow.exit.thread.i
  %i.aef = phi i1 [ false, %_ZN5ImGui20GetTopMostPopupModalEv.exit.i.i ], [ true, %_ZN5ImGuiL35NavSaveLastChildNavWindowIntoParentEP11ImGuiWindow.exit.thread.i ], [ true, %bb.fh ]
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.adp, i64 7992 ; 5 uses
  %i.aeh = load ptr, ptr %i.aeg, align 8, !tbaa !699
  %.not.i256.i = icmp eq ptr %i.aeh, null
  br i1 %.not.i256.i, label %bb.fl, label %bb.fi

bb.fi:                                            ; preds = %_ZN5ImGui20GetTopMostPopupModalEv.exit.thread.i.i
  %i.aei = getelementptr inbounds nuw i8, ptr %i.adp, i64 7984
  %i.aej = load ptr, ptr %i.aei, align 8, !tbaa !698
  %i.aek = icmp eq ptr %i.aej, null
  br i1 %i.aek, label %bb.fj, label %bb.fl

bb.fj:                                            ; preds = %bb.fi
  %i.ael = getelementptr inbounds nuw i8, ptr %i.adp, i64 8012 ; 2 uses
  %i.aem = load float, ptr %i.ael, align 4, !tbaa !700
  %i.aen = getelementptr inbounds nuw i8, ptr %i.adp, i64 24
  %i.aeo = load float, ptr %i.aen, align 8, !tbaa !694
  %i.aep = fneg float %i.aeo
  %i.aeq = call float @llvm.fmuladd.f32(float %i.aep, float 1.000000e+01, float %i.aem) ; 2 uses
  %i.aer = fcmp oge float %i.aeq, 0.000000e+00
  %i.aes = select i1 %i.aer, float %i.aeq, float 0.000000e+00 ; 2 uses
  store float %i.aes, ptr %i.ael, align 4, !tbaa !700
  %i.aet = getelementptr inbounds nuw i8, ptr %i.adp, i64 8052
  %i.aeu = load float, ptr %i.aet, align 4, !tbaa !701
  %i.aev = fcmp ugt float %i.aeu, 0.000000e+00
  %i.aew = fcmp ugt float %i.aes, 0.000000e+00
  %or.cond173.i.i = or i1 %i.aev, %i.aew
  br i1 %or.cond173.i.i, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  store ptr null, ptr %i.aeg, align 8, !tbaa !699
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj, %bb.fi, %_ZN5ImGui20GetTopMostPopupModalEv.exit.thread.i.i
  %i.aex = load i32, ptr %i.adq, align 8, !tbaa !628
  %i.aey = trunc i32 %i.aex to i1                 ; 2 uses
  br i1 %i.aef, label %bb.fm, label %_ZN5ImGui15IsKeyPressedMapEib.exit.i.i

bb.fm:                                            ; preds = %bb.fl
  %i.aez = getelementptr inbounds nuw i8, ptr %i.adp, i64 7984
  %i.afa = load ptr, ptr %i.aez, align 8, !tbaa !698
  %.not153.i.i = icmp eq ptr %i.afa, null
  br i1 %.not153.i.i, label %bb.fn, label %_ZN5ImGui15IsKeyPressedMapEib.exit.i.i

bb.fn:                                            ; preds = %bb.fm
  %i.afb = getelementptr inbounds nuw i8, ptr %i.adp, i64 5296
  %i.afc = load float, ptr %i.afb, align 8, !tbaa !9
  %i.afd = fcmp oeq float %i.afc, 0.000000e+00    ; 8 uses
  %i.afe = zext i1 %i.afd to i8                   ; 8 uses
  br i1 %i.aey, label %bb.fo, label %_ZN5ImGui15IsKeyPressedMapEib.exit.i.i

bb.fo:                                            ; preds = %bb.fn
  %i.aff = getelementptr inbounds nuw i8, ptr %i.adp, i64 320
  %i.afg = load i8, ptr %i.aff, align 8, !tbaa !692, !range !210, !noundef !211
  %i.afh = trunc nuw i8 %i.afg to i1
  br i1 %i.afh, label %bb.fp, label %_ZN5ImGui15IsKeyPressedMapEib.exit.i.i

bb.fp:                                            ; preds = %bb.fo
  %i.afi = getelementptr inbounds nuw i8, ptr %i.adp, i64 60
  %i.afj = load i32, ptr %i.afi, align 4, !tbaa !34 ; 2 uses
  %i.afk = icmp sgt i32 %i.afj, -1
  br i1 %i.afk, label %bb.fq, label %_ZN5ImGui15IsKeyPressedMapEib.exit.i.i

bb.fq:                                            ; preds = %bb.fp
  %i.afl = getelementptr inbounds nuw i8, ptr %i.adp, i64 1188
  %i.afm = zext nneg i32 %i.afj to i64
  %i.afn = getelementptr inbounds nuw [4 x i8], ptr %i.afl, i64 %i.afm
  %i.afo = load float, ptr %i.afn, align 4, !tbaa !9 ; 7 uses
  %i.afp = fcmp oeq float %i.afo, 0.000000e+00
  br i1 %i.afp, label %_ZN5ImGui15IsKeyPressedMapEib.exit.thread.i.i, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.afq = getelementptr inbounds nuw i8, ptr %i.adp, i64 148
  %i.afr = load float, ptr %i.afq, align 4, !tbaa !702 ; 5 uses
  %i.afs = fcmp ogt float %i.afo, %i.afr
  br i1 %i.afs, label %bb.fs, label %_ZN5ImGui15IsKeyPressedMapEib.exit.i.i

bb.fs:                                            ; preds = %bb.fr
  %i.aft = getelementptr inbounds nuw i8, ptr %i.adp, i64 152
  %i.afu = load float, ptr %i.aft, align 8, !tbaa !703 ; 2 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %i.adp, i64 24
  %i.afw = load float, ptr %i.afv, align 8, !tbaa !641
  %i.afx = fsub float %i.afo, %i.afw              ; 3 uses
  %i.afy = fcmp ult float %i.afx, %i.afo
  br i1 %i.afy, label %bb.ft, label %_ZN5ImGui15IsKeyPressedMapEib.exit.i.i

bb.ft:                                            ; preds = %bb.fs
  %i.afz = fcmp ugt float %i.afu, 0.000000e+00
  %i.aga = fcmp olt float %i.afx, %i.afr          ; 2 uses
  br i1 %i.afz, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.agb = fcmp oge float %i.afo, %i.afr
  %i.agc = and i1 %i.agb, %i.aga
  br label %_ZN5ImGui15IsKeyPressedMapEib.exit.i.i

bb.fv:                                            ; preds = %bb.ft
  %i.agd = insertelement <2 x float> poison, float %i.afo, i64 0
  %i.age = insertelement <2 x float> %i.agd, float %i.afx, i64 1
  %i.agf = insertelement <2 x float> poison, float %i.afr, i64 0
  %i.agg = shufflevector <2 x float> %i.agf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agh = fsub <2 x float> %i.age, %i.agg
  %i.agi = fcmp olt float %i.afo, %i.afr
  %i.agj = insertelement <2 x float> poison, float %i.afu, i64 0
  %i.agk = shufflevector <2 x float> %i.agj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agl = fdiv <2 x float> %i.agh, %i.agk
  %i.agm = fptosi <2 x float> %i.agl to <2 x i32>
  %i.agn = insertelement <2 x i1> poison, i1 %i.agi, i64 0
  %i.ago = insertelement <2 x i1> %i.agn, i1 %i.aga, i64 1
  %i.agp = select <2 x i1> %i.ago, <2 x i32> splat (i32 -1), <2 x i32> %i.agm ; 2 uses
  %shift = shufflevector <2 x i32> %i.agp, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.agq = icmp sgt <2 x i32> %i.agp, %shift
  %i.agr = extractelement <2 x i1> %i.agq, i64 0
  br label %_ZN5ImGui15IsKeyPressedMapEib.exit.i.i

_ZN5ImGui15IsKeyPressedMapEib.exit.i.i:           ; preds = %bb.fv, %bb.fu, %bb.fs, %bb.fr, %bb.fp, %bb.fo, %bb.fn, %bb.fm, %bb.fl
  %i.ags = phi i8 [ %i.afe, %bb.fo ], [ %i.afe, %bb.fu ], [ %i.afe, %bb.fn ], [ %i.afe, %bb.fp ], [ %i.afe, %bb.fv ], [ %i.afe, %bb.fr ], [ %i.afe, %bb.fs ], [ 0, %bb.fl ], [ 0, %bb.fm ]
  %i.agt = phi i1 [ %i.afd, %bb.fo ], [ %i.afd, %bb.fu ], [ %i.afd, %bb.fn ], [ %i.afd, %bb.fp ], [ %i.afd, %bb.fv ], [ %i.afd, %bb.fr ], [ %i.afd, %bb.fs ], [ false, %bb.fl ], [ false, %bb.fm ]
  %i.agu = phi i1 [ false, %bb.fo ], [ %i.agc, %bb.fu ], [ false, %bb.fn ], [ false, %bb.fp ], [ %i.agr, %bb.fv ], [ false, %bb.fr ], [ false, %bb.fs ], [ false, %bb.fl ], [ false, %bb.fm ] ; 2 uses
  %or.cond3.i.i = or i1 %i.agt, %i.agu
  br i1 %or.cond3.i.i, label %_ZN5ImGui15IsKeyPressedMapEib.exit.thread.i.i, label %_ZL22FindWindowNavFocusableiii.exit.thread.i.i

_ZN5ImGui15IsKeyPressedMapEib.exit.thread.i.i:    ; preds = %_ZN5ImGui15IsKeyPressedMapEib.exit.i.i, %bb.fq
  %i.agv = phi i1 [ %i.agu, %_ZN5ImGui15IsKeyPressedMapEib.exit.i.i ], [ true, %bb.fq ]
  %i.agw = phi i8 [ %i.ags, %_ZN5ImGui15IsKeyPressedMapEib.exit.i.i ], [ %i.afe, %bb.fq ]
  %i.agx = getelementptr inbounds nuw i8, ptr %i.adp, i64 7688
  %i.agy = load ptr, ptr %i.agx, align 8, !tbaa !425 ; 2 uses
  %.not154.i.i = icmp eq ptr %i.agy, null
  br i1 %.not154.i.i, label %bb.fw, label %_ZN5ImGui15IsKeyPressedMapEib.exit.thread._ZL22FindWindowNavFocusableiii.exit_crit_edge.i.i

_ZN5ImGui15IsKeyPressedMapEib.exit.thread._ZL22FindWindowNavFocusableiii.exit_crit_edge.i.i: ; preds = %_ZN5ImGui15IsKeyPressedMapEib.exit.thread.i.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.agy, i64 832
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !426
  br label %_ZL22FindWindowNavFocusableiii.exit.i.i

bb.fw:                                            ; preds = %_ZN5ImGui15IsKeyPressedMapEib.exit.thread.i.i
  %i.agz = getelementptr inbounds nuw i8, ptr %i.adp, i64 7104
  %i.aha = load i32, ptr %i.agz, align 8, !tbaa !704 ; 2 uses
  %i.ahb = icmp sgt i32 %i.aha, 0
  br i1 %i.ahb, label %.lr.ph.i181.i.i, label %_ZL22FindWindowNavFocusableiii.exit.thread.i.i

.lr.ph.i181.i.i:                                  ; preds = %bb.fw
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.adp, i64 7112
  %1 = zext nneg i32 %i.aha to i64
  %2 = load ptr, ptr %i.ahc, align 8, !tbaa !353
  br label %bb.fx

bb.fx:                                            ; preds = %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i.i, %.lr.ph.i181.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i.i ], [ %1, %.lr.ph.i181.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.ahd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i.i
  %i.ahe = load ptr, ptr %i.ahd, align 8, !tbaa !530 ; 4 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahe, i64 143
  %i.ahg = load i8, ptr %i.ahf, align 1, !tbaa !427, !range !210, !noundef !211
  %i.ahh = trunc nuw i8 %i.ahg to i1
  br i1 %i.ahh, label %bb.fy, label %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i.i

bb.fy:                                            ; preds = %bb.fx
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahe, i64 832
  %i.ahj = load ptr, ptr %i.ahi, align 8, !tbaa !426 ; 2 uses
  %i.ahk = icmp eq ptr %i.ahe, %i.ahj
  br i1 %i.ahk, label %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.i.i.i, label %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i.i

_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.i.i.i: ; preds = %bb.fy
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahe, i64 12
  %i.ahm = load i32, ptr %i.ahl, align 4, !tbaa !428
  %i.ahn = and i32 %i.ahm, 524288
  %.not.i.i.i.i = icmp eq i32 %i.ahn, 0
  br i1 %.not.i.i.i.i, label %_ZL22FindWindowNavFocusableiii.exit.i.i, label %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i.i

_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i.i: ; preds = %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.i.i.i, %bb.fy, %bb.fx
  %i.aho = icmp samesign ugt i64 %indvars.iv.i.i, 1
  br i1 %i.aho, label %bb.fx, label %_ZL22FindWindowNavFocusableiii.exit.thread.i.i, !llvm.loop !705

_ZL22FindWindowNavFocusableiii.exit.i.i:          ; preds = %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.i.i.i, %_ZN5ImGui15IsKeyPressedMapEib.exit.thread._ZL22FindWindowNavFocusableiii.exit_crit_edge.i.i
  %i.ahp = phi ptr [ %.pre.i.i, %_ZN5ImGui15IsKeyPressedMapEib.exit.thread._ZL22FindWindowNavFocusableiii.exit_crit_edge.i.i ], [ %i.ahj, %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.i.i.i ] ; 2 uses
  store ptr %i.ahp, ptr %i.aeg, align 8, !tbaa !699
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.adp, i64 7984
  store ptr %i.ahp, ptr %i.ahq, align 8, !tbaa !698
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.adp, i64 8008
  store <2 x float> zeroinitializer, ptr %i.ahr, align 8, !tbaa !9
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.adp, i64 8016
  store i8 %i.agw, ptr %i.ahs, align 8, !tbaa !706
  %i.aht = select i1 %i.agv, i32 2, i32 3
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.adp, i64 7748
  store i32 %i.aht, ptr %i.ahu, align 4, !tbaa !691
  br label %_ZL22FindWindowNavFocusableiii.exit.thread.i.i

_ZL22FindWindowNavFocusableiii.exit.thread.i.i:   ; preds = %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i.i, %_ZL22FindWindowNavFocusableiii.exit.i.i, %bb.fw, %_ZN5ImGui15IsKeyPressedMapEib.exit.i.i
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.adp, i64 24
  %i.ahw = load float, ptr %i.ahv, align 8, !tbaa !694 ; 5 uses
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.adp, i64 8008 ; 2 uses
  %i.ahy = load float, ptr %i.ahx, align 8, !tbaa !707
  %i.ahz = fadd float %i.ahw, %i.ahy              ; 3 uses
  store float %i.ahz, ptr %i.ahx, align 8, !tbaa !707
  %i.aia = getelementptr inbounds nuw i8, ptr %i.adp, i64 7984 ; 5 uses
  %i.aib = load ptr, ptr %i.aia, align 8, !tbaa !698 ; 9 uses
  %.not156.i.i = icmp eq ptr %i.aib, null
  br i1 %.not156.i.i, label %.thread264.i.i, label %bb.fz

bb.fz:                                            ; preds = %_ZL22FindWindowNavFocusableiii.exit.thread.i.i
  %i.aic = getelementptr inbounds nuw i8, ptr %i.adp, i64 7748
  %i.aid = load i32, ptr %i.aic, align 4, !tbaa !691 ; 2 uses
  %i.aie = icmp eq i32 %i.aid, 3
  br i1 %i.aie, label %bb.ga, label %.thread352.i.i

bb.ga:                                            ; preds = %bb.fz
  %i.aif = getelementptr inbounds nuw i8, ptr %i.adp, i64 8012 ; 3 uses
  %i.aig = load float, ptr %i.aif, align 4, !tbaa !700 ; 2 uses
  %i.aih = fadd float %i.ahz, -2.000000e-01
  %i.aii = fdiv float %i.aih, 5.000000e-02        ; 3 uses
  %i.aij = fcmp olt float %i.aii, 0.000000e+00
  %i.aik = fcmp ogt float %i.aii, 1.000000e+00
  %i.ail = select i1 %i.aik, float 1.000000e+00, float %i.aii
  %i.aim = select i1 %i.aij, float 0.000000e+00, float %i.ail ; 2 uses
  %i.ain = fcmp oge float %i.aig, %i.aim
  %i.aio = select i1 %i.ain, float %i.aig, float %i.aim ; 2 uses
  store float %i.aio, ptr %i.aif, align 4, !tbaa !700
  %i.aip = getelementptr inbounds nuw i8, ptr %i.adp, i64 5332
  %i.aiq = load float, ptr %i.aip, align 4, !tbaa !9 ; 7 uses
  %i.air = fcmp olt float %i.aiq, 0.000000e+00
  br i1 %i.air, label %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit236.i.i, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.ais = fsub float %i.aiq, %i.ahw              ; 3 uses
  %i.ait = getelementptr inbounds nuw i8, ptr %i.adp, i64 148
  %i.aiu = load float, ptr %i.ait, align 4, !tbaa !702
  %i.aiv = fmul float %i.aiu, 1.250000e+00        ; 4 uses
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.adp, i64 152
  %i.aix = load float, ptr %i.aiw, align 8, !tbaa !703
  %i.aiy = fmul float %i.aix, 2.000000e+00        ; 2 uses
  %i.aiz = fcmp oeq float %i.aiq, 0.000000e+00
  br i1 %i.aiz, label %_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit34.i.i.i, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.aja = fcmp ult float %i.ais, %i.aiq
  br i1 %i.aja, label %bb.gd, label %_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit34.i.i.i

bb.gd:                                            ; preds = %bb.gc
  %i.ajb = fcmp ugt float %i.aiy, 0.000000e+00
  %i.ajc = fcmp olt float %i.ais, %i.aiv          ; 2 uses
  br i1 %i.ajb, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.ajd = fcmp oge float %i.aiq, %i.aiv
  %i.aje = and i1 %i.ajc, %i.ajd
  br label %_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit34.i.i.i

bb.gf:                                            ; preds = %bb.gd
  %i.ajf = insertelement <2 x float> poison, float %i.aiq, i64 0
  %i.ajg = insertelement <2 x float> %i.ajf, float %i.ais, i64 1
  %i.ajh = insertelement <2 x float> poison, float %i.aiv, i64 0
  %i.aji = shufflevector <2 x float> %i.ajh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ajj = fsub <2 x float> %i.ajg, %i.aji
  %i.ajk = fcmp olt float %i.aiq, %i.aiv
  %i.ajl = insertelement <2 x float> poison, float %i.aiy, i64 0
  %i.ajm = shufflevector <2 x float> %i.ajl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ajn = fdiv <2 x float> %i.ajj, %i.ajm
  %i.ajo = fptosi <2 x float> %i.ajn to <2 x i32>
  %i.ajp = insertelement <2 x i1> poison, i1 %i.ajk, i64 0
  %i.ajq = insertelement <2 x i1> %i.ajp, i1 %i.ajc, i64 1
  %i.ajr = select <2 x i1> %i.ajq, <2 x i32> splat (i32 -1), <2 x i32> %i.ajo ; 2 uses
  %shift671 = shufflevector <2 x i32> %i.ajr, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.ajs = icmp sgt <2 x i32> %i.ajr, %shift671
  %i.ajt = extractelement <2 x i1> %i.ajs, i64 0
  br label %_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit34.i.i.i

_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit34.i.i.i: ; preds = %bb.gf, %bb.ge, %bb.gc, %bb.gb
  %.0.i33.i.i.i = phi i1 [ %i.ajt, %bb.gf ], [ true, %bb.gb ], [ %i.aje, %bb.ge ], [ false, %bb.gc ]
  %i.aju = zext i1 %.0.i33.i.i.i to i32
  br label %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit236.i.i

_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit236.i.i: ; preds = %_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit34.i.i.i, %bb.ga
  %.1.i235.i.i = phi i32 [ %i.aju, %_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit34.i.i.i ], [ 0, %bb.ga ]
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.adp, i64 5336
  %i.ajw = load float, ptr %i.ajv, align 8, !tbaa !9 ; 7 uses
  %i.ajx = fcmp olt float %i.ajw, 0.000000e+00
  br i1 %i.ajx, label %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit241.i.i, label %bb.gg

bb.gg:                                            ; preds = %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit236.i.i
  %i.ajy = fsub float %i.ajw, %i.ahw              ; 3 uses
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.adp, i64 148
  %i.aka = load float, ptr %i.ajz, align 4, !tbaa !702
  %i.akb = fmul float %i.aka, 1.250000e+00        ; 4 uses
  %i.akc = getelementptr inbounds nuw i8, ptr %i.adp, i64 152
  %i.akd = load float, ptr %i.akc, align 8, !tbaa !703
  %i.ake = fmul float %i.akd, 2.000000e+00        ; 2 uses
  %i.akf = fcmp oeq float %i.ajw, 0.000000e+00
  br i1 %i.akf, label %_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit34.i238.i.i, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.akg = fcmp ult float %i.ajy, %i.ajw
  br i1 %i.akg, label %bb.gi, label %_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit34.i238.i.i

bb.gi:                                            ; preds = %bb.gh
  %i.akh = fcmp ugt float %i.ake, 0.000000e+00
  %i.aki = fcmp olt float %i.ajy, %i.akb          ; 2 uses
  br i1 %i.akh, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.akj = fcmp oge float %i.ajw, %i.akb
  %i.akk = and i1 %i.aki, %i.akj
  br label %_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit34.i238.i.i

bb.gk:                                            ; preds = %bb.gi
  %i.akl = insertelement <2 x float> poison, float %i.ajw, i64 0
  %i.akm = insertelement <2 x float> %i.akl, float %i.ajy, i64 1
  %i.akn = insertelement <2 x float> poison, float %i.akb, i64 0
  %i.ako = shufflevector <2 x float> %i.akn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.akp = fsub <2 x float> %i.akm, %i.ako
  %i.akq = fcmp olt float %i.ajw, %i.akb
  %i.akr = insertelement <2 x float> poison, float %i.ake, i64 0
  %i.aks = shufflevector <2 x float> %i.akr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.akt = fdiv <2 x float> %i.akp, %i.aks
  %i.aku = fptosi <2 x float> %i.akt to <2 x i32>
  %i.akv = insertelement <2 x i1> poison, i1 %i.akq, i64 0
  %i.akw = insertelement <2 x i1> %i.akv, i1 %i.aki, i64 1
  %i.akx = select <2 x i1> %i.akw, <2 x i32> splat (i32 -1), <2 x i32> %i.aku ; 2 uses
  %shift672 = shufflevector <2 x i32> %i.akx, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.aky = icmp sgt <2 x i32> %i.akx, %shift672
  %i.akz = extractelement <2 x i1> %i.aky, i64 0
  br label %_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit34.i238.i.i

_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit34.i238.i.i: ; preds = %bb.gk, %bb.gj, %bb.gh, %bb.gg
  %.0.i33.i239.i.i = phi i1 [ %i.akz, %bb.gk ], [ true, %bb.gg ], [ %i.akk, %bb.gj ], [ false, %bb.gh ]
  %i.ala = sext i1 %.0.i33.i239.i.i to i32
  br label %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit241.i.i

_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit241.i.i: ; preds = %_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit34.i238.i.i, %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit236.i.i
  %.1.i240.i.i = phi i32 [ %i.ala, %_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit34.i238.i.i ], [ 0, %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit236.i.i ]
  %i.alb = add nsw i32 %.1.i240.i.i, %.1.i235.i.i ; 5 uses
  %.not157.i.i = icmp eq i32 %i.alb, 0
  br i1 %.not157.i.i, label %bb.gu, label %bb.gl

bb.gl:                                            ; preds = %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit241.i.i
  %i.alc = getelementptr inbounds nuw i8, ptr %i.aib, i64 12
  %i.ald = load i32, ptr %i.alc, align 4, !tbaa !428
  %i.ale = and i32 %i.ald, 134217728
  %.not.i183.i.i = icmp eq i32 %i.ale, 0
  br i1 %.not.i183.i.i, label %bb.gm, label %_ZL33NavUpdateWindowingHighlightWindowi.exit.i.i

bb.gm:                                            ; preds = %bb.gl
  %i.alf = getelementptr i8, ptr %i.aib, i64 160
  %.val.i.i.i = load i16, ptr %i.alf, align 8, !tbaa !594
  %i.alg = sext i16 %.val.i.i.i to i32            ; 2 uses
  %i.alh = add nsw i32 %i.alb, %i.alg             ; 2 uses
  %i.ali = icmp sgt i32 %i.alh, -1
  %i.alj = getelementptr inbounds nuw i8, ptr %i.adp, i64 7104
  %i.alk = load i32, ptr %i.alj, align 8, !tbaa !704 ; 4 uses
  br i1 %i.ali, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

end_hunk_0
