Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui?download=true
inline.NumInlined: 3345
inline.NumDeleted: 600
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZN5ImGui8NewFrameEv:bb.a
bb.hj:                                            ; preds = %bb.hi, %bb.hh
  %i.awv = getelementptr inbounds nuw i8, ptr %i.arj, i64 8736
  store <2 x float> zeroinitializer, ptr %i.awv, align 8, !tbaa !8
  %i.aww = getelementptr inbounds nuw i8, ptr %i.arj, i64 8756
  %i.awx = select i1 %i.avf, i32 2, i32 3         ; 2 uses
  %i.awy = getelementptr inbounds nuw i8, ptr %i.arj, i64 8304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aww, i8 0, i64 16, i1 false)
  store i32 %i.awx, ptr %i.awy, align 8, !tbaa !653
  %i.awz = getelementptr inbounds nuw i8, ptr %i.arj, i64 8744
  store i32 %i.awx, ptr %i.awz, align 8, !tbaa !1050
  br i1 %or.cond3.i.i, label %bb.hk, label %_ZN5ImGui23SetKeyOwnersForKeyChordEiji.exit.i.i

bb.hk:                                            ; preds = %bb.hj
  %i.axa = getelementptr inbounds nuw i8, ptr %i.arj, i64 8700
  %i.axb = load i32, ptr %i.axa, align 4, !tbaa !662
  %i.axc = getelementptr inbounds nuw i8, ptr %i.arj, i64 8704
  %i.axd = load i32, ptr %i.axc, align 8, !tbaa !663
  %i.axe = or i32 %i.axd, %i.axb                  ; 4 uses
  %i.axf = and i32 %i.axe, 4096
  %.not.i259.i.i = icmp eq i32 %i.axf, 0
  br i1 %.not.i259.i.i, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.axg = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 4 uses
  %i.axh = getelementptr i8, ptr %i.axg, i64 7376
  %i.axi = getelementptr i8, ptr %i.axg, i64 7380
  store i32 %i.atj, ptr %i.axi, align 4, !tbaa !620
  store i32 %i.atj, ptr %i.axh, align 4, !tbaa !622
  %i.axj = getelementptr i8, ptr %i.axg, i64 7385
  store i8 0, ptr %i.axj, align 1, !tbaa !623
  %i.axk = getelementptr i8, ptr %i.axg, i64 7384
  store i8 0, ptr %i.axk, align 4, !tbaa !624
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %bb.hk
  %i.axl = and i32 %i.axe, 8192
  %.not16.i.i.i = icmp eq i32 %i.axl, 0
  br i1 %.not16.i.i.i, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.axm = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 4 uses
  %i.axn = getelementptr i8, ptr %i.axm, i64 7388
  %i.axo = getelementptr i8, ptr %i.axm, i64 7392
  store i32 %i.atj, ptr %i.axo, align 4, !tbaa !620
  store i32 %i.atj, ptr %i.axn, align 4, !tbaa !622
  %i.axp = getelementptr i8, ptr %i.axm, i64 7397
  store i8 0, ptr %i.axp, align 1, !tbaa !623
  %i.axq = getelementptr i8, ptr %i.axm, i64 7396
  store i8 0, ptr %i.axq, align 4, !tbaa !624
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %bb.hm
  %i.axr = and i32 %i.axe, 16384
  %.not17.i.i.i = icmp eq i32 %i.axr, 0
  br i1 %.not17.i.i.i, label %bb.hq, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.axs = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 4 uses
  %i.axt = getelementptr i8, ptr %i.axs, i64 7400
  %i.axu = getelementptr i8, ptr %i.axs, i64 7404
  store i32 %i.atj, ptr %i.axu, align 4, !tbaa !620
  store i32 %i.atj, ptr %i.axt, align 4, !tbaa !622
  %i.axv = getelementptr i8, ptr %i.axs, i64 7409
  store i8 0, ptr %i.axv, align 1, !tbaa !623
  %i.axw = getelementptr i8, ptr %i.axs, i64 7408
  store i8 0, ptr %i.axw, align 4, !tbaa !624
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %bb.ho
  %i.axx = and i32 %i.axe, 32768
  %.not18.i.i.i = icmp eq i32 %i.axx, 0
  br i1 %.not18.i.i.i, label %_ZN5ImGui23SetKeyOwnersForKeyChordEiji.exit.i.i, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.axy = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 4 uses
  %i.axz = getelementptr i8, ptr %i.axy, i64 7412
  %i.aya = getelementptr i8, ptr %i.axy, i64 7416
  store i32 %i.atj, ptr %i.aya, align 4, !tbaa !620
  store i32 %i.atj, ptr %i.axz, align 4, !tbaa !622
  %i.ayb = getelementptr i8, ptr %i.axy, i64 7421
  store i8 0, ptr %i.ayb, align 1, !tbaa !623
  %i.ayc = getelementptr i8, ptr %i.axy, i64 7420
  store i8 0, ptr %i.ayc, align 4, !tbaa !624
  br label %_ZN5ImGui23SetKeyOwnersForKeyChordEiji.exit.i.i

_ZN5ImGui23SetKeyOwnersForKeyChordEiji.exit.i.i:  ; preds = %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i.i, %bb.hr, %bb.hq, %bb.hj, %.lr.ph.i255.i.i, %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i, %bb.hb
  %.2205.i.i = phi i1 [ false, %bb.hb ], [ %.not226.i.i, %bb.hr ], [ %.not226.i.i, %bb.hj ], [ %.not226.i.i, %bb.hq ], [ false, %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i ], [ false, %.lr.ph.i255.i.i ], [ false, %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i.i ] ; 2 uses
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.arj, i64 8712 ; 5 uses
  %i.aye = load ptr, ptr %i.ayd, align 8, !tbaa !1045 ; 2 uses
  %.not228.i.i = icmp eq ptr %i.aye, null
  br i1 %.not228.i.i, label %bb.hs, label %.thread396.i.i

bb.hs:                                            ; preds = %_ZN5ImGui23SetKeyOwnersForKeyChordEiji.exit.i.i
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.arj, i64 8748
  %i.ayg = load i8, ptr %i.ayf, align 4, !tbaa !1049, !range !64, !noundef !204
  %i.ayh = trunc nuw i8 %i.ayg to i1
  br i1 %i.ayh, label %bb.ht, label %_ZL24NavUpdateWindowingTargeti.exit281.i.i

bb.ht:                                            ; preds = %bb.hs
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.arj, i64 8744
  %i.ayj = load i32, ptr %i.ayi, align 8, !tbaa !1050
  %i.ayk = icmp eq i32 %i.ayj, 3
  br i1 %i.ayk, label %._crit_edge.i.i351, label %_ZL24NavUpdateWindowingTargeti.exit281.i.i

._crit_edge.i.i351:                               ; preds = %bb.ht
  %.pre459.i.i = load ptr, ptr @GImGui, align 8, !tbaa !193
  br label %bb.iq

.thread396.i.i:                                   ; preds = %_ZN5ImGui23SetKeyOwnersForKeyChordEiji.exit.i.i
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.arj, i64 8744
  %i.aym = load i32, ptr %i.ayl, align 8, !tbaa !1050 ; 2 uses
  %i.ayn = icmp eq i32 %i.aym, 3
  br i1 %i.ayn, label %bb.hu, label %.thread512.i.i

bb.hu:                                            ; preds = %.thread396.i.i
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.arj, i64 64
  %i.ayp = load float, ptr %i.ayo, align 8, !tbaa !1010
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.arj, i64 8736 ; 2 uses
  %i.ayr = load float, ptr %i.ayq, align 8, !tbaa !1053
  %i.ays = fadd float %i.ayp, %i.ayr              ; 2 uses
  store float %i.ays, ptr %i.ayq, align 8, !tbaa !1053
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.arj, i64 8740 ; 3 uses
  %i.ayu = load float, ptr %i.ayt, align 4, !tbaa !1047 ; 2 uses
  %i.ayv = fadd float %i.ays, -2.000000e-01
  %i.ayw = fdiv float %i.ayv, 5.000000e-02        ; 3 uses
  %i.ayx = fcmp olt float %i.ayw, 0.000000e+00
  %i.ayy = fcmp ogt float %i.ayw, 1.000000e+00
  %i.ayz = select i1 %i.ayy, float 1.000000e+00, float %i.ayw
  %i.aza = select i1 %i.ayx, float 0.000000e+00, float %i.ayz ; 2 uses
  %i.azb = fcmp oge float %i.ayu, %i.aza
  %i.azc = select i1 %i.azb, float %i.ayu, float %i.aza
  store float %i.azc, ptr %i.ayt, align 4, !tbaa !1047
  %i.azd = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 21 uses
  %i.aze = getelementptr i8, ptr %i.azd, i64 2388
  %i.azf = load i8, ptr %i.aze, align 4, !tbaa !208, !range !64, !noundef !204
  %i.azg = trunc nuw i8 %i.azf to i1
  br i1 %i.azg, label %bb.hv, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit355.i.i

bb.hv:                                            ; preds = %bb.hu
  %i.azh = getelementptr i8, ptr %i.azd, i64 2392
  %i.azi = load float, ptr %i.azh, align 4, !tbaa !1008 ; 8 uses
  %i.azj = fcmp olt float %i.azi, 0.000000e+00
  br i1 %i.azj, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit355.i.i, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.azk = fcmp oeq float %i.azi, 0.000000e+00
  br i1 %i.azk, label %.thread398.i.i, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azd, i64 164
  %i.azm = load float, ptr %i.azl, align 4, !tbaa !911 ; 5 uses
  %i.azn = getelementptr inbounds nuw i8, ptr %i.azd, i64 168
  %i.azo = load float, ptr %i.azn, align 8, !tbaa !913 ; 2 uses
  %i.azp = fcmp ogt float %i.azi, %i.azm
  br i1 %i.azp, label %bb.hy, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit355.i.i

bb.hy:                                            ; preds = %bb.hx
  %i.azq = getelementptr inbounds nuw i8, ptr %i.azd, i64 64
  %i.azr = load float, ptr %i.azq, align 8, !tbaa !912
  %i.azs = fsub float %i.azi, %i.azr              ; 3 uses
  %i.azt = fcmp ult float %i.azs, %i.azi
  br i1 %i.azt, label %bb.hz, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit355.i.i

bb.hz:                                            ; preds = %bb.hy
  %i.azu = fcmp ugt float %i.azo, 0.000000e+00
  %i.azv = fcmp olt float %i.azs, %i.azm          ; 2 uses
  br i1 %i.azu, label %.split400.i.i, label %bb.ia

.split400.i.i:                                    ; preds = %bb.hz
  %i.azw = insertelement <2 x float> poison, float %i.azi, i64 0
  %i.azx = insertelement <2 x float> %i.azw, float %i.azs, i64 1
  %i.azy = insertelement <2 x float> poison, float %i.azm, i64 0
  %i.azz = shufflevector <2 x float> %i.azy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.baa = fsub <2 x float> %i.azx, %i.azz
  %i.bab = fcmp olt float %i.azi, %i.azm
  %i.bac = insertelement <2 x float> poison, float %i.azo, i64 0
  %i.bad = shufflevector <2 x float> %i.bac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bae = fdiv <2 x float> %i.baa, %i.bad
  %i.baf = fptosi <2 x float> %i.bae to <2 x i32>
  %i.bag = insertelement <2 x i1> poison, i1 %i.bab, i64 0
  %i.bah = insertelement <2 x i1> %i.bag, i1 %i.azv, i64 1
  %i.bai = select <2 x i1> %i.bah, <2 x i32> splat (i32 -1), <2 x i32> %i.baf ; 2 uses
  %shift = shufflevector <2 x i32> %i.bai, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.baj = icmp sgt <2 x i32> %i.bai, %shift
  %i.bak = extractelement <2 x i1> %i.baj, i64 0
  br i1 %i.bak, label %.thread398.i.i, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit355.i.i

bb.ia:                                            ; preds = %bb.hz
  %i.bal = fcmp oge float %i.azi, %i.azm
  %i.bam = and i1 %i.bal, %i.azv
  br i1 %i.bam, label %.thread398.i.i, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit355.i.i

.thread398.i.i:                                   ; preds = %bb.ia, %.split400.i.i, %bb.hw
  %i.ban = getelementptr i8, ptr %i.azd, i64 7132
  %i.bao = load i8, ptr %i.ban, align 4, !tbaa !624, !range !64, !noundef !204
  %i.bap = xor i8 %i.bao, 1
  %i.baq = zext nneg i8 %i.bap to i32
  br label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit355.i.i

_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit355.i.i:  ; preds = %.thread398.i.i, %bb.ia, %.split400.i.i, %bb.hy, %bb.hx, %bb.hv, %bb.hu
  %.230.i344.i.i = phi i32 [ 0, %bb.hu ], [ 0, %bb.hv ], [ 0, %bb.ia ], [ 0, %bb.hy ], [ 0, %bb.hx ], [ %i.baq, %.thread398.i.i ], [ 0, %.split400.i.i ]
  %i.bar = getelementptr i8, ptr %i.azd, i64 2404
  %i.bas = load i8, ptr %i.bar, align 4, !tbaa !208, !range !64, !noundef !204
  %i.bat = trunc nuw i8 %i.bas to i1
  br i1 %i.bat, label %bb.ib, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit370.i.i

bb.ib:                                            ; preds = %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit355.i.i
  %i.bau = getelementptr i8, ptr %i.azd, i64 2408
  %i.bav = load float, ptr %i.bau, align 4, !tbaa !1008 ; 8 uses
  %i.baw = fcmp olt float %i.bav, 0.000000e+00
  br i1 %i.baw, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit370.i.i, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.bax = fcmp oeq float %i.bav, 0.000000e+00
  br i1 %i.bax, label %.thread401.i.i, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.bay = getelementptr inbounds nuw i8, ptr %i.azd, i64 164
  %i.baz = load float, ptr %i.bay, align 4, !tbaa !911 ; 5 uses
  %i.bba = getelementptr inbounds nuw i8, ptr %i.azd, i64 168
  %i.bbb = load float, ptr %i.bba, align 8, !tbaa !913 ; 2 uses
  %i.bbc = fcmp ogt float %i.bav, %i.baz
  br i1 %i.bbc, label %bb.ie, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit370.i.i

bb.ie:                                            ; preds = %bb.id
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.azd, i64 64
  %i.bbe = load float, ptr %i.bbd, align 8, !tbaa !912
  %i.bbf = fsub float %i.bav, %i.bbe              ; 3 uses
  %i.bbg = fcmp ult float %i.bbf, %i.bav
  br i1 %i.bbg, label %bb.if, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit370.i.i

bb.if:                                            ; preds = %bb.ie
  %i.bbh = fcmp ugt float %i.bbb, 0.000000e+00
  %i.bbi = fcmp olt float %i.bbf, %i.baz          ; 2 uses
  br i1 %i.bbh, label %.split403.i.i, label %bb.ig

.split403.i.i:                                    ; preds = %bb.if
  %i.bbj = insertelement <2 x float> poison, float %i.bav, i64 0
  %i.bbk = insertelement <2 x float> %i.bbj, float %i.bbf, i64 1
  %i.bbl = insertelement <2 x float> poison, float %i.baz, i64 0
  %i.bbm = shufflevector <2 x float> %i.bbl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bbn = fsub <2 x float> %i.bbk, %i.bbm
  %i.bbo = fcmp olt float %i.bav, %i.baz
  %i.bbp = insertelement <2 x float> poison, float %i.bbb, i64 0
  %i.bbq = shufflevector <2 x float> %i.bbp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bbr = fdiv <2 x float> %i.bbn, %i.bbq
  %i.bbs = fptosi <2 x float> %i.bbr to <2 x i32>
  %i.bbt = insertelement <2 x i1> poison, i1 %i.bbo, i64 0
  %i.bbu = insertelement <2 x i1> %i.bbt, i1 %i.bbi, i64 1
  %i.bbv = select <2 x i1> %i.bbu, <2 x i32> splat (i32 -1), <2 x i32> %i.bbs ; 2 uses
  %shift780 = shufflevector <2 x i32> %i.bbv, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.bbw = icmp sgt <2 x i32> %i.bbv, %shift780
  %i.bbx = extractelement <2 x i1> %i.bbw, i64 0
  br i1 %i.bbx, label %.thread401.i.i, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit370.i.i

bb.ig:                                            ; preds = %bb.if
  %i.bby = fcmp oge float %i.bav, %i.baz
  %i.bbz = and i1 %i.bby, %i.bbi
  br i1 %i.bbz, label %.thread401.i.i, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit370.i.i

.thread401.i.i:                                   ; preds = %bb.ig, %.split403.i.i, %bb.ic
  %i.bca = getelementptr i8, ptr %i.azd, i64 7144
  %i.bcb = load i8, ptr %i.bca, align 4, !tbaa !624, !range !64, !noundef !204
  %sext.i.i = add nsw i8 %i.bcb, -1
  %i.bcc = sext i8 %sext.i.i to i32
  br label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit370.i.i

_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit370.i.i:  ; preds = %.thread401.i.i, %bb.ig, %.split403.i.i, %bb.ie, %bb.id, %bb.ib, %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit355.i.i
  %.230.i358.i.i = phi i32 [ 0, %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit355.i.i ], [ 0, %bb.ib ], [ 0, %bb.ig ], [ 0, %bb.ie ], [ 0, %bb.id ], [ %i.bcc, %.thread401.i.i ], [ 0, %.split403.i.i ]
  %i.bcd = add nsw i32 %.230.i358.i.i, %.230.i344.i.i ; 5 uses
  %i.bce = icmp eq i32 %i.bcd, 0
  %or.cond5.i.i = or i1 %.2205.i.i, %i.bce
  br i1 %or.cond5.i.i, label %bb.iq, label %bb.ih

bb.ih:                                            ; preds = %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit370.i.i
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.azd, i64 8712 ; 2 uses
  %i.bcg = load ptr, ptr %i.bcf, align 8, !tbaa !1045 ; 2 uses
  %i.bch = getelementptr inbounds nuw i8, ptr %i.bcg, i64 20
  %i.bci = load i32, ptr %i.bch, align 4, !tbaa !722
  %i.bcj = and i32 %i.bci, 134217728
  %.not.i260.i.i = icmp eq i32 %i.bcj, 0
  br i1 %.not.i260.i.i, label %bb.ii, label %_ZL24NavUpdateWindowingTargeti.exit.i.i

bb.ii:                                            ; preds = %bb.ih
  %i.bck = getelementptr i8, ptr %i.bcg, i64 226
  %.val.i.i.i = load i16, ptr %i.bck, align 2, !tbaa !899
  %i.bcl = sext i16 %.val.i.i.i to i32            ; 2 uses
  %i.bcm = add nsw i32 %i.bcd, %i.bcl             ; 2 uses
  %i.bcn = icmp sgt i32 %i.bcm, -1
  %i.bco = getelementptr inbounds nuw i8, ptr %i.azd, i64 5232
  %i.bcp = load i32, ptr %i.bco, align 8, !tbaa !1051 ; 4 uses
  br i1 %i.bcn, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ii
  %i.bcq = getelementptr inbounds nuw i8, ptr %i.azd, i64 5240
  br label %bb.ij

bb.ij:                                            ; preds = %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i.i.i, %.lr.ph.i.i.i.i
  %.01317.i.i.i.i = phi i32 [ %i.bcm, %.lr.ph.i.i.i.i ], [ %i.bde, %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i.i.i ] ; 3 uses
  %.not34.i.i.i = icmp slt i32 %.01317.i.i.i.i, %i.bcp
  br i1 %.not34.i.i.i, label %bb.ik, label %.loopexit.i.i.i

bb.ik:                                            ; preds = %bb.ij
  %i.bcr = load ptr, ptr %i.bcq, align 8, !tbaa !561
  %i.bcs = zext nneg i32 %.01317.i.i.i.i to i64
  %i.bct = getelementptr inbounds nuw [8 x i8], ptr %i.bcr, i64 %i.bcs
  %i.bcu = load ptr, ptr %i.bct, align 8, !tbaa !705 ; 5 uses
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.bcu, i64 205
  %i.bcw = load i8, ptr %i.bcv, align 1, !tbaa !436, !range !64, !noundef !204
  %i.bcx = trunc nuw i8 %i.bcw to i1
  br i1 %i.bcx, label %bb.il, label %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i.i.i

bb.il:                                            ; preds = %bb.ik
  %i.bcy = getelementptr inbounds nuw i8, ptr %i.bcu, i64 960
  %i.bcz = load ptr, ptr %i.bcy, align 8, !tbaa !847
  %i.bda = icmp eq ptr %i.bcu, %i.bcz
  br i1 %i.bda, label %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.i.i.i.i, label %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i.i.i

_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.i.i.i.i: ; preds = %bb.il
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.bcu, i64 20
  %i.bdc = load i32, ptr %i.bdb, align 4, !tbaa !722
  %i.bdd = and i32 %i.bdc, 131072
  %.not.i.i.i.i273.i = icmp eq i32 %i.bdd, 0
  br i1 %.not.i.i.i.i273.i, label %_ZL22FindWindowNavFocusableiii.exit.i.i.i, label %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i.i.i

_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i.i.i: ; preds = %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.i.i.i.i, %bb.il, %bb.ik
  %i.bde = add nsw i32 %.01317.i.i.i.i, %i.bcd    ; 2 uses
  %i.bdf = icmp sgt i32 %i.bde, -1
  br i1 %i.bdf, label %bb.ij, label %.loopexit.i.i.i, !llvm.loop !1052

.loopexit.i.i.i:                                  ; preds = %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i.i.i, %bb.ij, %bb.ii
  %i.bdg = icmp slt i32 %i.bcd, 0
  br i1 %i.bdg, label %bb.im, label %.lr.ph.i19.i.i.i

bb.im:                                            ; preds = %.loopexit.i.i.i
  %i.bdh = add nsw i32 %i.bcp, -1
  %i.bdi = icmp sgt i32 %i.bcp, 0
  br i1 %i.bdi, label %.lr.ph.i19.i.i.i, label %_ZL22FindWindowNavFocusableiii.exit.thread31.i.i.i

.lr.ph.i19.i.i.i:                                 ; preds = %bb.im, %.loopexit.i.i.i
  %i.bdj = phi i32 [ %i.bdh, %bb.im ], [ 0, %.loopexit.i.i.i ]
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.azd, i64 5240
  br label %bb.in

bb.in:                                            ; preds = %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i23.i.i.i, %.lr.ph.i19.i.i.i
  %.01317.i20.i.i.i = phi i32 [ %i.bdj, %.lr.ph.i19.i.i.i ], [ %i.bdz, %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i23.i.i.i ] ; 4 uses
  %i.bdl = icmp sge i32 %.01317.i20.i.i.i, %i.bcp
  %.not.i21.i.i.i = icmp eq i32 %.01317.i20.i.i.i, %i.bcl
  %or.cond.i22.i.i.i = or i1 %.not.i21.i.i.i, %i.bdl
  br i1 %or.cond.i22.i.i.i, label %_ZL22FindWindowNavFocusableiii.exit.thread31.i.i.i, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.bdm = load ptr, ptr %i.bdk, align 8, !tbaa !561
  %i.bdn = zext nneg i32 %.01317.i20.i.i.i to i64
  %i.bdo = getelementptr inbounds nuw [8 x i8], ptr %i.bdm, i64 %i.bdn
  %i.bdp = load ptr, ptr %i.bdo, align 8, !tbaa !705 ; 5 uses
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.bdp, i64 205
  %i.bdr = load i8, ptr %i.bdq, align 1, !tbaa !436, !range !64, !noundef !204
  %i.bds = trunc nuw i8 %i.bdr to i1
  br i1 %i.bds, label %bb.ip, label %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i23.i.i.i

bb.ip:                                            ; preds = %bb.io
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bdp, i64 960
  %i.bdu = load ptr, ptr %i.bdt, align 8, !tbaa !847
  %i.bdv = icmp eq ptr %i.bdp, %i.bdu
  br i1 %i.bdv, label %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.i24.i.i.i, label %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i23.i.i.i

_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.i24.i.i.i: ; preds = %bb.ip
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.bdp, i64 20
  %i.bdx = load i32, ptr %i.bdw, align 4, !tbaa !722
  %i.bdy = and i32 %i.bdx, 131072
  %.not.i.i25.i.i.i = icmp eq i32 %i.bdy, 0
  br i1 %.not.i.i25.i.i.i, label %_ZL22FindWindowNavFocusableiii.exit.i.i.i, label %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i23.i.i.i

_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i23.i.i.i: ; preds = %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.i24.i.i.i, %bb.ip, %bb.io
  %i.bdz = add nsw i32 %.01317.i20.i.i.i, %i.bcd  ; 2 uses
  %i.bea = icmp sgt i32 %i.bdz, -1
  br i1 %i.bea, label %bb.in, label %_ZL22FindWindowNavFocusableiii.exit.thread31.i.i.i, !llvm.loop !1052

_ZL22FindWindowNavFocusableiii.exit.i.i.i:        ; preds = %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.i.i.i.i, %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.i24.i.i.i
  %.0.i261.i.i = phi ptr [ %i.bdp, %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.i24.i.i.i ], [ %i.bcu, %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.i.i.i.i ] ; 2 uses
  %i.beb = getelementptr inbounds nuw i8, ptr %i.azd, i64 8720
  store ptr %.0.i261.i.i, ptr %i.beb, align 8, !tbaa !1046
  store ptr %.0.i261.i.i, ptr %i.bcf, align 8, !tbaa !1045
  %i.bec = getelementptr inbounds nuw i8, ptr %i.azd, i64 8756
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bec, i8 0, i64 16, i1 false)
  br label %_ZL22FindWindowNavFocusableiii.exit.thread31.i.i.i

_ZL22FindWindowNavFocusableiii.exit.thread31.i.i.i: ; preds = %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i23.i.i.i, %bb.in, %_ZL22FindWindowNavFocusableiii.exit.i.i.i, %bb.im
  %i.bed = getelementptr inbounds nuw i8, ptr %i.azd, i64 8748
  store i8 0, ptr %i.bed, align 4, !tbaa !1049
  br label %_ZL24NavUpdateWindowingTargeti.exit.i.i

_ZL24NavUpdateWindowingTargeti.exit.i.i:          ; preds = %_ZL22FindWindowNavFocusableiii.exit.thread31.i.i.i, %bb.ih
  store float 1.000000e+00, ptr %i.ayt, align 4, !tbaa !1047
  br label %bb.iq

bb.iq:                                            ; preds = %_ZL24NavUpdateWindowingTargeti.exit.i.i, %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit370.i.i, %._crit_edge.i.i351
  %i.bee = phi ptr [ %.pre459.i.i, %._crit_edge.i.i351 ], [ %i.azd, %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit370.i.i ], [ %i.azd, %_ZL24NavUpdateWindowingTargeti.exit.i.i ] ; 2 uses
  %i.bef = getelementptr i8, ptr %i.bee, i64 2260
  %i.beg = load i8, ptr %i.bef, align 4, !tbaa !208, !range !64, !noundef !204
  %i.beh = trunc nuw i8 %i.beg to i1
  br i1 %i.beh, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.i.i, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread.i.i

_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.i.i:           ; preds = %bb.iq
  %i.bei = getelementptr i8, ptr %i.bee, i64 7036
  %i.bej = load i8, ptr %i.bei, align 4, !tbaa !624, !range !64, !noundef !204
  %i.bek = icmp eq i8 %i.bej, 0
  br i1 %i.bek, label %bb.it, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread.i.i

_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread.i.i:    ; preds = %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.i.i, %bb.iq
  %i.bel = getelementptr inbounds nuw i8, ptr %i.arj, i64 8740
  %i.bem = load float, ptr %i.bel, align 4, !tbaa !1047
  %i.ben = fcmp olt float %i.bem, 1.000000e+00
  %i.beo = getelementptr inbounds nuw i8, ptr %i.arj, i64 8748 ; 2 uses
  %i.bep = load i8, ptr %i.beo, align 4, !tbaa !1049, !range !64, !noundef !204
  %i.beq = icmp ne i8 %i.bep, 0
  %i.ber = and i1 %i.ben, %i.beq
  br i1 %i.ber, label %bb.ir, label %bb.is

bb.ir:                                            ; preds = %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread.i.i
  %i.bes = getelementptr inbounds nuw i8, ptr %i.arj, i64 8224
  %i.bet = load ptr, ptr %i.bes, align 8, !tbaa !389
  %.not230.i.i = icmp ne ptr %i.bet, null
  br label %.thread406.i.i

bb.is:                                            ; preds = %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread.i.i
  %i.beu = load ptr, ptr %i.ayd, align 8, !tbaa !1045
  br label %.thread406.i.i

.thread406.i.i:                                   ; preds = %bb.is, %bb.ir
  %.0193.i.i = phi i1 [ false, %bb.is ], [ %.not230.i.i, %bb.ir ]
  %.0192.i.i = phi ptr [ %i.beu, %bb.is ], [ null, %bb.ir ]
  store ptr null, ptr %i.ayd, align 8, !tbaa !1045
  store i8 0, ptr %i.beo, align 4, !tbaa !1049
  br label %_ZL24NavUpdateWindowingTargeti.exit281.i.i

bb.it:                                            ; preds = %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.i.i
  %.pr.pre.i.i = load ptr, ptr %i.ayd, align 8, !tbaa !1045 ; 2 uses
  %.not231.i.i = icmp eq ptr %.pr.pre.i.i, null
  br i1 %.not231.i.i, label %_ZL24NavUpdateWindowingTargeti.exit281.i.i, label %..thread512.i_crit_edge.i

..thread512.i_crit_edge.i:                        ; preds = %bb.it
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.arj, i64 8744
  %.pre.i350 = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !1050
  br label %.thread512.i.i

.thread512.i.i:                                   ; preds = %..thread512.i_crit_edge.i, %.thread396.i.i
  %i.bev = phi i32 [ %.pre.i350, %..thread512.i_crit_edge.i ], [ %i.aym, %.thread396.i.i ]
  %.pr515.i.i = phi ptr [ %.pr.pre.i.i, %..thread512.i_crit_edge.i ], [ %i.aye, %.thread396.i.i ]
  %i.bew = icmp eq i32 %i.bev, 2
  br i1 %i.bew, label %bb.iu, label %_ZL24NavUpdateWindowingTargeti.exit281.i.i

bb.iu:                                            ; preds = %.thread512.i.i
  %i.bex = getelementptr inbounds nuw i8, ptr %i.arj, i64 8700
  %i.bey = load i32, ptr %i.bex, align 4, !tbaa !662 ; 2 uses
  %i.bez = getelementptr inbounds nuw i8, ptr %i.arj, i64 8704
  %i.bfa = load i32, ptr %i.bez, align 8, !tbaa !663 ; 2 uses
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.arj, i64 64
  %i.bfc = load float, ptr %i.bfb, align 8, !tbaa !1010
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.arj, i64 8736 ; 2 uses
  %i.bfe = load float, ptr %i.bfd, align 8, !tbaa !1053
  %i.bff = fadd float %i.bfc, %i.bfe              ; 2 uses
  store float %i.bff, ptr %i.bfd, align 8, !tbaa !1053
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.arj, i64 8740 ; 2 uses
  %i.bfh = load float, ptr %i.bfg, align 4, !tbaa !1047 ; 2 uses
  %i.bfi = fadd float %i.bff, -2.000000e-01
  %i.bfj = fdiv float %i.bfi, 5.000000e-02        ; 3 uses
  %i.bfk = fcmp olt float %i.bfj, 0.000000e+00
end_hunk_0
begin_hunk_1_@_ZN5ImGui8NewFrameEv:bb.a
bb.oo:                                            ; preds = %bb.on
  %i.cet = getelementptr inbounds nuw i8, ptr %i.ces, i64 20
  %i.ceu = load i32, ptr %i.cet, align 4, !tbaa !722
  %i.cev = and i32 %i.ceu, 65536
  %.not13.i.i287.i = icmp eq i32 %i.cev, 0
  br i1 %.not13.i.i287.i, label %bb.op, label %.sink.split.i.i288.i

bb.op:                                            ; preds = %bb.oo, %bb.on
  %i.cew = getelementptr inbounds nuw i8, ptr %i.ceq, i64 8304
  %i.cex = load i32, ptr %i.cew, align 8, !tbaa !653
  switch i32 %i.cex, label %.thread.i.i291.i [
    i32 2, label %bb.oq
    i32 3, label %bb.or
  ]

bb.oq:                                            ; preds = %bb.op
  %i.cey = getelementptr inbounds nuw i8, ptr %i.ceq, i64 40
  %i.cez = load i32, ptr %i.cey, align 8, !tbaa !934
  %i.cfa = and i32 %i.cez, 1
  %i.cfb = icmp eq i32 %i.cfa, 0
  br i1 %i.cfb, label %.sink.split.i.i288.i, label %.thread.i.i291.i

bb.or:                                            ; preds = %bb.op
  %i.cfc = getelementptr inbounds nuw i8, ptr %i.ceq, i64 40
  %i.cfd = load i32, ptr %i.cfc, align 8, !tbaa !934
  %i.cfe = and i32 %i.cfd, 2
  %i.cff = icmp eq i32 %i.cfe, 0
  br i1 %i.cff, label %.sink.split.i.i288.i, label %.thread.i.i291.i

.thread.i.i291.i:                                 ; preds = %bb.or, %bb.oq, %bb.op
  %i.cfg = getelementptr inbounds nuw i8, ptr %i.ceq, i64 118
  %i.cfh = load i8, ptr %i.cfg, align 2, !tbaa !880, !range !64, !noundef !204
  %i.cfi = trunc nuw i8 %i.cfh to i1
  br i1 %i.cfi, label %.sink.split.i.i288.i, label %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit.i290.i

.sink.split.i.i288.i:                             ; preds = %.thread.i.i291.i, %bb.or, %bb.oq, %bb.oo
  %.sink.i.i289.i = phi i8 [ 0, %bb.oo ], [ 0, %bb.or ], [ 0, %bb.oq ], [ 1, %.thread.i.i291.i ]
  %i.cfj = getelementptr inbounds nuw i8, ptr %i.ceq, i64 8216
  store i8 %.sink.i.i289.i, ptr %i.cfj, align 8, !tbaa !474
  br label %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit.i290.i

_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit.i290.i: ; preds = %.sink.split.i.i288.i, %.thread.i.i291.i
  %i.cfk = getelementptr inbounds nuw i8, ptr %i.ceq, i64 8218
  store i8 1, ptr %i.cfk, align 2, !tbaa !894
  %i.cfl = getelementptr inbounds nuw i8, ptr %i.ceq, i64 8217
  store i8 1, ptr %i.cfl, align 1, !tbaa !850
  br label %_ZN5ImGuiL27NavUpdateContextMenuRequestEv.exit.i

_ZN5ImGuiL27NavUpdateContextMenuRequestEv.exit.i: ; preds = %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit.i290.i, %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit30.i.i, %bb.nj, %_ZN5ImGuiL22NavUpdateCancelRequestEv.exit.i
  %i.cfm = phi ptr [ %i.bzs, %_ZN5ImGuiL22NavUpdateCancelRequestEv.exit.i ], [ %i.bzs, %bb.nj ], [ %i.bzs, %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit30.i.i ], [ %i.ceq, %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit.i290.i ] ; 49 uses
  %i.cfn = getelementptr inbounds nuw i8, ptr %i.aln, i64 8252 ; 2 uses
  %i.cfo = getelementptr inbounds nuw i8, ptr %i.aln, i64 8248 ; 3 uses
  %i.cfp = getelementptr inbounds nuw i8, ptr %i.aln, i64 8244 ; 5 uses
  %i.cfq = getelementptr inbounds nuw i8, ptr %i.aln, i64 8256 ; 4 uses
  %i.cfr = getelementptr inbounds nuw i8, ptr %i.aln, i64 8220
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cfp, i8 0, i64 16, i1 false)
  %i.cfs = load i32, ptr %i.cfr, align 4, !tbaa !400 ; 9 uses
  %.not230.i = icmp eq i32 %i.cfs, 0
  br i1 %.not230.i, label %bb.pp, label %bb.os

bb.os:                                            ; preds = %_ZN5ImGuiL27NavUpdateContextMenuRequestEv.exit.i
  %i.cft = getelementptr inbounds nuw i8, ptr %i.aln, i64 8216
  %i.cfu = load i8, ptr %i.cft, align 8, !tbaa !474, !range !64, !noundef !204
  %i.cfv = trunc nuw i8 %i.cfu to i1
  br i1 %i.cfv, label %bb.ot, label %bb.pp

bb.ot:                                            ; preds = %bb.os
  %i.cfw = getelementptr inbounds nuw i8, ptr %i.aln, i64 8712
  %i.cfx = load ptr, ptr %i.cfw, align 8, !tbaa !1045
  %.not231.i = icmp eq ptr %i.cfx, null
  br i1 %.not231.i, label %bb.ou, label %bb.pp

bb.ou:                                            ; preds = %bb.ot
  %i.cfy = load ptr, ptr %i.aqt, align 8, !tbaa !389 ; 2 uses
  %.not232.i = icmp eq ptr %i.cfy, null
  br i1 %.not232.i, label %.thread371.i, label %bb.ov

bb.ov:                                            ; preds = %bb.ou
  %i.cfz = getelementptr inbounds nuw i8, ptr %i.cfy, i64 20
  %i.cga = load i32, ptr %i.cfz, align 4, !tbaa !722
  %i.cgb = and i32 %i.cga, 65536
  %.not233.i = icmp eq i32 %i.cgb, 0
  br i1 %.not233.i, label %bb.ow, label %bb.pp

bb.ow:                                            ; preds = %bb.ov
  br i1 %i.anu, label %bb.ox, label %bb.pb

bb.ox:                                            ; preds = %bb.ow
  %i.cgc = getelementptr i8, ptr %i.cfm, i64 500
  %i.cgd = load i8, ptr %i.cgc, align 4, !tbaa !208, !range !64, !noundef !204
  %i.cge = trunc nuw i8 %i.cgd to i1
  br i1 %i.cge, label %bb.oy, label %_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit.i

bb.oy:                                            ; preds = %bb.ox
  %i.cgf = getelementptr inbounds nuw i8, ptr %i.cfm, i64 7772
  %i.cgg = load i8, ptr %i.cgf, align 4, !tbaa !650, !range !64, !noundef !204
  %i.cgh = trunc nuw i8 %i.cgg to i1
  br i1 %i.cgh, label %bb.oz, label %bb.pa

bb.oz:                                            ; preds = %bb.oy
  %i.cgi = getelementptr inbounds nuw i8, ptr %i.cfm, i64 5428
  %i.cgj = load i32, ptr %i.cgi, align 4, !tbaa !819
  %.not392.i = icmp eq i32 %i.cgj, -1
  br i1 %.not392.i, label %bb.pa, label %_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit.i

bb.pa:                                            ; preds = %bb.oz, %bb.oy
  %i.cgk = getelementptr i8, ptr %i.cfm, i64 5708
  %i.cgl = load i32, ptr %i.cgk, align 4, !tbaa !622
  %.not.i.i296.i = icmp eq i32 %i.cgl, -1
  br i1 %.not.i.i296.i, label %.thread355.i, label %_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit.i

_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit.i:            ; preds = %bb.pa, %bb.oz, %bb.ox
  br i1 %i.ant, label %bb.pc, label %.thread362.i.a

bb.pb:                                            ; preds = %bb.ow
  br i1 %i.ant, label %.thread356.i.a, label %.thread381.i

bb.pc:                                            ; preds = %_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit.i
  %i.cgm = getelementptr inbounds nuw i8, ptr %i.aln, i64 113
  %i.cgn = load i8, ptr %i.cgm, align 1, !tbaa !1059, !range !64, !noundef !204
  %i.cgo = trunc nuw i8 %i.cgn to i1
  %i.cgp = select i1 %i.cgo, i32 635, i32 637
  %i.cgq = call noundef zeroext i1 @_ZN5ImGui9IsKeyDownE8ImGuiKeyj(i32 noundef %i.cgp, i32 noundef -1)
  br i1 %i.cgq, label %.thread355.i, label %.thread362.i.a

.thread356.i.a:                                   ; preds = %bb.pb
  %i.cgr = getelementptr inbounds nuw i8, ptr %i.aln, i64 113
  %i.cgs = load i8, ptr %i.cgr, align 1, !tbaa !1059, !range !64, !noundef !204
  %i.cgt = trunc nuw i8 %i.cgs to i1
  %i.cgu = select i1 %i.cgt, i32 635, i32 637     ; 2 uses
  %i.cgv = call noundef zeroext i1 @_ZN5ImGui9IsKeyDownE8ImGuiKeyj(i32 noundef %i.cgu, i32 noundef -1)
  br i1 %i.cgv, label %.thread353.i, label %.thread381.i

.thread355.i:                                     ; preds = %bb.pc, %bb.pa
  %i.cgw = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyij(i32 noundef 524, i32 noundef 0, i32 noundef -1) ; 2 uses
  %.not243.i = xor i1 %i.ant, true
  %brmerge244.i = or i1 %i.cgw, %.not243.i
  br i1 %brmerge244.i, label %.thread362.i.a, label %.thread353.thread529.i

.thread353.thread529.i:                           ; preds = %.thread355.i
  %.phi.trans.insert418.i = getelementptr inbounds nuw i8, ptr %i.aln, i64 113
  %.pre419.i = load i8, ptr %.phi.trans.insert418.i, align 1, !tbaa !1059, !range !64
  %.pre420.i = trunc nuw i8 %.pre419.i to i1
  %.pre421.i = select i1 %.pre420.i, i32 635, i32 637
  %i.cgx = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyij(i32 noundef %.pre421.i, i32 noundef 0, i32 noundef -1)
  br label %.thread362.i.a

.thread353.i:                                     ; preds = %.thread356.i.a
  %i.cgy = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyij(i32 noundef %i.cgu, i32 noundef 0, i32 noundef -1)
  br label %.thread361.i

.thread362.i.a:                                   ; preds = %.thread353.thread529.i, %.thread355.i, %bb.pc, %_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit.i
  %i.cgz = phi i1 [ %i.cgx, %.thread353.thread529.i ], [ %i.cgw, %.thread355.i ], [ false, %_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit.i ], [ false, %bb.pc ] ; 2 uses
  %i.cha = phi i1 [ true, %.thread353.thread529.i ], [ true, %.thread355.i ], [ false, %_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit.i ], [ false, %bb.pc ] ; 2 uses
  %i.chb = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyij(i32 noundef 525, i32 noundef 0, i32 noundef -1)
  br i1 %i.chb, label %.thread361.i, label %bb.pd

bb.pd:                                            ; preds = %.thread362.i.a
  %i.chc = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyij(i32 noundef 627, i32 noundef 0, i32 noundef -1)
  br label %.thread361.i

.thread381.i:                                     ; preds = %.thread356.i.a, %bb.pb
  %i.chd = getelementptr inbounds nuw i8, ptr %i.aln, i64 5428
  %i.che = load i32, ptr %i.chd, align 4, !tbaa !819 ; 2 uses
  %i.chf = icmp eq i32 %i.che, 0
  br i1 %i.chf, label %bb.pl, label %bb.pk

.thread361.i:                                     ; preds = %bb.pd, %.thread362.i.a, %.thread353.i
  %i.chg = phi i1 [ %i.cgy, %.thread353.i ], [ %i.cgz, %.thread362.i.a ], [ %i.cgz, %bb.pd ] ; 3 uses
  %i.chh = phi i1 [ true, %.thread353.i ], [ %i.cha, %.thread362.i.a ], [ %i.cha, %bb.pd ] ; 4 uses
  %i.chi = phi i1 [ false, %.thread353.i ], [ true, %.thread362.i.a ], [ %i.chc, %bb.pd ] ; 3 uses
  %or.cond3.i = and i1 %i.ant, %i.chh
  br i1 %or.cond3.i, label %bb.pe, label %bb.pi

bb.pe:                                            ; preds = %.thread361.i
  %i.chj = getelementptr inbounds nuw i8, ptr %i.aln, i64 113
  %i.chk = load i8, ptr %i.chj, align 1, !tbaa !1059, !range !64, !noundef !204
  %i.chl = trunc nuw i8 %i.chk to i1
  %i.chm = select i1 %i.chl, i32 635, i32 637     ; 2 uses
  %i.chn = call noundef zeroext i1 @_ZN5ImGui9IsKeyDownE8ImGuiKeyj(i32 noundef %i.chm, i32 noundef -1)
  br i1 %i.chn, label %bb.pf, label %bb.pi

bb.pf:                                            ; preds = %bb.pe
  %i.cho = getelementptr inbounds nuw i8, ptr %i.aln, i64 8240
  %i.chp = load i32, ptr %i.cho, align 8, !tbaa !1065
  %i.chq = and i32 %i.chp, 1048576
  %.not234.i = icmp eq i32 %i.chq, 0
  br i1 %.not234.i, label %bb.pi, label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  %i.chr = zext nneg i32 %i.chm to i64
  %i.chs = getelementptr [16 x i8], ptr %i.cfm, i64 %i.chr ; 2 uses
  %i.cht = getelementptr i8, ptr %i.chs, i64 -7876
  %i.chu = load float, ptr %i.cht, align 4, !tbaa !1009
  %i.chv = fcmp olt float %i.chu, 6.000000e-01
  br i1 %i.chv, label %bb.ph, label %bb.pi

bb.ph:                                            ; preds = %bb.pg
  %i.chw = getelementptr i8, ptr %i.chs, i64 -7880
  %i.chx = load float, ptr %i.chw, align 4, !tbaa !1008
  %2 = fcmp ult float %i.chx, 6.000000e-01
  br i1 %2, label %bb.pi, label %3

3:                                                ; preds = %bb.ph
  br label %bb.pi

bb.pi:                                            ; preds = %3, %bb.ph, %bb.pg, %bb.pf, %bb.pe, %.thread361.i
  %.0.i342 = phi i1 [ true, %3 ], [ false, %bb.ph ], [ false, %bb.pg ], [ false, %bb.pf ], [ false, %bb.pe ], [ false, %.thread361.i ] ; 3 uses
  %i.chy = getelementptr inbounds nuw i8, ptr %i.aln, i64 5428
  %i.chz = load i32, ptr %i.chy, align 4, !tbaa !819 ; 2 uses
  %i.cia = icmp eq i32 %i.chz, 0                  ; 2 uses
  %or.cond5.i = and i1 %i.chg, %i.cia
  br i1 %or.cond5.i, label %.thread363.i, label %bb.pj

.thread363.i:                                     ; preds = %bb.pi
  store i32 %i.cfs, ptr %i.cfp, align 4, !tbaa !837
  store i32 2, ptr %i.cfq, align 8, !tbaa !1066
  br label %bb.pl

bb.pj:                                            ; preds = %bb.pi
  br i1 %i.cia, label %bb.pl, label %bb.pk

bb.pk:                                            ; preds = %bb.pj, %.thread381.i
  %i.cib = phi i1 [ false, %.thread381.i ], [ %i.chi, %bb.pj ] ; 3 uses
  %i.cic = phi i1 [ false, %.thread381.i ], [ %i.chh, %bb.pj ]
  %i.cid = phi i1 [ false, %.thread381.i ], [ %i.chg, %bb.pj ]
  %.0385391.i = phi i1 [ false, %.thread381.i ], [ %.0.i342, %bb.pj ] ; 3 uses
  %i.cie = phi i32 [ %i.che, %.thread381.i ], [ %i.chz, %bb.pj ]
  %i.cif = icmp eq i32 %i.cie, %i.cfs             ; 3 uses
  %or.cond7.i341 = or i1 %i.cib, %.0385391.i
  %or.cond246.i = and i1 %or.cond7.i341, %i.cif
  br i1 %or.cond246.i, label %bb.pm, label %.thread365.i.a

bb.pl:                                            ; preds = %bb.pj, %.thread363.i, %.thread381.i
  %.0384.i = phi i1 [ %.0.i342, %.thread363.i ], [ %.0.i342, %bb.pj ], [ false, %.thread381.i ] ; 3 uses
  %i.cig = phi i1 [ true, %.thread363.i ], [ %i.chg, %bb.pj ], [ false, %.thread381.i ]
  %i.cih = phi i1 [ %i.chh, %.thread363.i ], [ %i.chh, %bb.pj ], [ false, %.thread381.i ]
  %i.cii = phi i1 [ %i.chi, %.thread363.i ], [ %i.chi, %bb.pj ], [ false, %.thread381.i ] ; 3 uses
  %or.cond7.old.i = or i1 %.0384.i, %i.cii
  br i1 %or.cond7.old.i, label %.thread366.i.a, label %.thread364.i

.thread366.i.a:                                   ; preds = %bb.pl
  store i32 %i.cfs, ptr %i.cfp, align 4, !tbaa !837
  store i32 1, ptr %i.cfq, align 8, !tbaa !1066
  br label %.thread364.i

bb.pm:                                            ; preds = %bb.pk
  store i32 %i.cfs, ptr %i.cfp, align 4, !tbaa !837
  store i32 1, ptr %i.cfq, align 8, !tbaa !1066
  br label %.thread365.i.a

.thread365.i.a:                                   ; preds = %bb.pm, %bb.pk
  %or.cond9.i = or i1 %i.cib, %i.cic
  %or.cond11.i = or i1 %or.cond9.i, %.0385391.i
  %or.cond247.i = and i1 %or.cond11.i, %i.cif
  br i1 %or.cond247.i, label %bb.pn, label %.thread368.i.a

.thread364.i:                                     ; preds = %.thread366.i.a, %bb.pl
  %or.cond9.old.i = or i1 %i.cih, %i.cii
  %or.cond11.old.i = or i1 %.0384.i, %or.cond9.old.i
  br i1 %or.cond11.old.i, label %.thread369.i.a, label %.thread367.i

.thread369.i.a:                                   ; preds = %.thread364.i
  store i32 %i.cfs, ptr %i.cfo, align 8, !tbaa !1067
  br label %.thread367.i

bb.pn:                                            ; preds = %.thread365.i.a
  store i32 %i.cfs, ptr %i.cfo, align 8, !tbaa !1067
  br label %.thread368.i.a

.thread368.i.a:                                   ; preds = %bb.pn, %.thread365.i.a
  %or.cond13.i = or i1 %i.cib, %i.cid
  %or.cond15.i = or i1 %or.cond13.i, %.0385391.i
  %or.cond248.i = and i1 %or.cond15.i, %i.cif
  br i1 %or.cond248.i, label %bb.po, label %bb.pp

.thread367.i:                                     ; preds = %.thread369.i.a, %.thread364.i
  %or.cond13.old.i = or i1 %i.cig, %i.cii
  %or.cond15.old.i = or i1 %.0384.i, %or.cond13.old.i
  br i1 %or.cond15.old.i, label %bb.po, label %bb.pp

bb.po:                                            ; preds = %.thread367.i, %.thread368.i.a
  store i32 %i.cfs, ptr %i.cfn, align 4, !tbaa !1068
  %i.cij = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8280
  store i32 %i.cfs, ptr %i.cij, align 8, !tbaa !1069
  %i.cik = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8284
  store float 1.000000e-01, ptr %i.cik, align 4, !tbaa !1070
  br label %bb.pp

bb.pp:                                            ; preds = %bb.po, %.thread367.i, %.thread368.i.a, %bb.ov, %bb.ot, %bb.os, %_ZN5ImGuiL27NavUpdateContextMenuRequestEv.exit.i
  %.pr.i = load ptr, ptr %i.aqt, align 8, !tbaa !389 ; 2 uses
  %.not235.i = icmp eq ptr %.pr.i, null
  br i1 %.not235.i, label %.thread371.i, label %bb.pq

bb.pq:                                            ; preds = %bb.pp
  %i.cil = getelementptr inbounds nuw i8, ptr %.pr.i, i64 20
  %i.cim = load i32, ptr %i.cil, align 4, !tbaa !722
  %i.cin = and i32 %i.cim, 65536
  %.not236.i = icmp eq i32 %i.cin, 0
  br i1 %.not236.i, label %.thread371.i, label %.sink.split.i

.thread371.i:                                     ; preds = %bb.pq, %bb.pp, %bb.ou
  %i.cio = getelementptr inbounds nuw i8, ptr %i.aln, i64 119
  %i.cip = load i8, ptr %i.cio, align 1, !tbaa !1071, !range !64, !noundef !204
  %i.ciq = trunc nuw i8 %i.cip to i1
  br i1 %i.ciq, label %bb.pr, label %bb.ps

bb.pr:                                            ; preds = %.thread371.i
  %i.cir = load i8, ptr %i.apz, align 8, !tbaa !1042
  %i.cis = icmp eq i8 %i.cir, 0
  br i1 %i.cis, label %.sink.split.i, label %bb.ps

.sink.split.i:                                    ; preds = %bb.pr, %bb.pq
  %.sink.i = phi i8 [ 0, %bb.pq ], [ 1, %bb.pr ]
  %i.cit = getelementptr inbounds nuw i8, ptr %i.aln, i64 8216
  store i8 %.sink.i, ptr %i.cit, align 8, !tbaa !474
  br label %bb.ps

bb.ps:                                            ; preds = %.sink.split.i, %bb.pr, %.thread371.i
  %i.ciu = getelementptr inbounds nuw i8, ptr %i.aln, i64 8284 ; 2 uses
  %i.civ = load float, ptr %i.ciu, align 4, !tbaa !1070 ; 3 uses
  %i.ciw = fcmp ogt float %i.civ, 0.000000e+00
  br i1 %i.ciw, label %bb.pt, label %bb.pu

bb.pt:                                            ; preds = %bb.ps
  %i.cix = getelementptr inbounds nuw i8, ptr %i.aln, i64 64
  %i.ciy = load float, ptr %i.cix, align 8, !tbaa !1010
  %i.ciz = fsub float %i.civ, %i.ciy              ; 2 uses
  %i.cja = fcmp ole float %i.ciz, 0.000000e+00
  %i.cjb = select i1 %i.cja, float 0.000000e+00, float %i.ciz ; 2 uses
  store float %i.cjb, ptr %i.ciu, align 4, !tbaa !1070
  br label %bb.pu

bb.pu:                                            ; preds = %bb.pt, %bb.ps
  %i.cjc = phi float [ %i.cjb, %bb.pt ], [ %i.civ, %bb.ps ]
  %i.cjd = fcmp oeq float %i.cjc, 0.000000e+00
  br i1 %i.cjd, label %bb.pv, label %bb.pw

bb.pv:                                            ; preds = %bb.pu
  %i.cje = getelementptr inbounds nuw i8, ptr %i.aln, i64 8280
  store i32 0, ptr %i.cje, align 8, !tbaa !1069
  br label %bb.pw

bb.pw:                                            ; preds = %bb.pv, %bb.pu
  %i.cjf = getelementptr inbounds nuw i8, ptr %i.aln, i64 8296 ; 2 uses
  %i.cjg = load i32, ptr %i.cjf, align 8, !tbaa !1072 ; 4 uses
  %.not237.i = icmp eq i32 %i.cjg, 0
  br i1 %.not237.i, label %bb.py, label %bb.px

bb.px:                                            ; preds = %bb.pw
  store i32 %i.cjg, ptr %i.cfn, align 4, !tbaa !1068
  store i32 %i.cjg, ptr %i.cfo, align 8, !tbaa !1067
  store i32 %i.cjg, ptr %i.cfp, align 4, !tbaa !837
  %i.cjh = getelementptr inbounds nuw i8, ptr %i.aln, i64 8300
  %i.cji = load i32, ptr %i.cjh, align 4, !tbaa !1073
  store i32 %i.cji, ptr %i.cfq, align 8, !tbaa !1066
  br label %bb.py

bb.py:                                            ; preds = %bb.px, %bb.pw
  store i32 0, ptr %i.cjf, align 8, !tbaa !1072
  %i.cjj = getelementptr inbounds nuw i8, ptr %i.cfm, i64 40
  %i.cjk = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8224
  %i.cjl = load ptr, ptr %i.cjk, align 8, !tbaa !389 ; 20 uses
  %i.cjm = load i32, ptr %i.cjj, align 8, !tbaa !920 ; 2 uses
  %i.cjn = and i32 %i.cjm, 2
  %.not.i304.i = icmp eq i32 %i.cjn, 0
  br i1 %.not.i304.i, label %bb.qa, label %bb.pz

bb.pz:                                            ; preds = %bb.py
  %i.cjo = getelementptr inbounds nuw i8, ptr %i.cfm, i64 44
  %i.cjp = load i32, ptr %i.cjo, align 4, !tbaa !1007
  %i.cjq = trunc i32 %i.cjp to i1
  br label %bb.qa

bb.qa:                                            ; preds = %bb.pz, %bb.py
  %i.cjr = phi i1 [ false, %bb.py ], [ %i.cjq, %bb.pz ] ; 4 uses
  %i.cjs = trunc i32 %i.cjm to i1                 ; 5 uses
  %i.cjt = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8386 ; 2 uses
  %i.cju = load i8, ptr %i.cjt, align 2, !tbaa !656, !range !64, !noundef !204
  %i.cjv = trunc nuw i8 %i.cju to i1
  %i.cjw = icmp ne ptr %i.cjl, null               ; 5 uses
  %or.cond.i305.i = select i1 %i.cjv, i1 %i.cjw, i1 false
  br i1 %or.cond.i305.i, label %bb.qb, label %bb.qd

bb.qb:                                            ; preds = %bb.qa
  %i.cjx = getelementptr inbounds nuw i8, ptr %i.cfm, i64 10404
  %i.cjy = load i32, ptr %i.cjx, align 4, !tbaa !221
  %i.cjz = and i32 %i.cjy, 16
  %.not107.i.i = icmp eq i32 %i.cjz, 0
  br i1 %.not107.i.i, label %.thread.i314.i, label %bb.qc

bb.qc:                                            ; preds = %bb.qb
  %i.cka = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8400
  %i.ckb = load i32, ptr %i.cka, align 8, !tbaa !1074
  call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.760, i32 noundef %i.ckb)
  br label %.thread.i314.i

bb.qd:                                            ; preds = %bb.qa
  %i.ckc = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8400 ; 5 uses
  store i32 -1, ptr %i.ckc, align 8, !tbaa !1074
  %i.ckd = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8388
  store i32 0, ptr %i.ckd, align 4, !tbaa !396
  %i.cke = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8392
  store i32 0, ptr %i.cke, align 8, !tbaa !1075
  br i1 %i.cjw, label %bb.qe, label %bb.re

bb.qe:                                            ; preds = %bb.qd
  %i.ckf = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8712
end_hunk_1
begin_hunk_2_@_ZN5ImGui8NewFrameEv:bb.a
bb.qw:                                            ; preds = %bb.qv
  %i.ckw = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyij(i32 noundef 515, i32 noundef 5, i32 noundef -1)
  br i1 %i.ckw, label %bb.qx, label %bb.qy

bb.qx:                                            ; preds = %bb.qw, %bb.qu
  store i32 2, ptr %i.ckc, align 8, !tbaa !1074
  br label %bb.qy

bb.qy:                                            ; preds = %bb.qx, %bb.qw, %bb.qv, %bb.qs
  %i.ckx = phi i32 [ 2, %bb.qx ], [ %i.ckt, %bb.qw ], [ %i.ckt, %bb.qv ], [ %i.ckt, %bb.qs ] ; 3 uses
  %i.cky = and i32 %i.ckl, 8
  %.not243.i.i = icmp eq i32 %i.cky, 0
  br i1 %.not243.i.i, label %bb.qz, label %.thread234.i.i

bb.qz:                                            ; preds = %bb.qy
  br i1 %i.cjr, label %bb.ra, label %bb.rb

bb.ra:                                            ; preds = %bb.qz
  %i.ckz = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyij(i32 noundef 641, i32 noundef 5, i32 noundef -1)
  br i1 %i.ckz, label %bb.rd, label %bb.rb

bb.rb:                                            ; preds = %bb.ra, %bb.qz
  br i1 %i.cjs, label %bb.rc, label %.thread234.i.i

bb.rc:                                            ; preds = %bb.rb
  %i.cla = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyij(i32 noundef 516, i32 noundef 5, i32 noundef -1)
  br i1 %i.cla, label %bb.rd, label %.thread234.i.i

bb.rd:                                            ; preds = %bb.rc, %bb.ra
  store i32 3, ptr %i.ckc, align 8, !tbaa !1074
  br label %.thread234.i.i

.thread234.i.i:                                   ; preds = %bb.rd, %bb.rc, %bb.rb, %bb.qy, %bb.qf, %bb.qe
  %i.clb = phi i32 [ -1, %bb.qe ], [ -1, %bb.qf ], [ 3, %bb.rd ], [ %i.ckx, %bb.rc ], [ %i.ckx, %bb.rb ], [ %i.ckx, %bb.qy ]
  %i.clc = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8408
  store i32 %i.clb, ptr %i.clc, align 8, !tbaa !391
  %i.cld = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8428
  store <4 x float> <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF>, ptr %i.cld, align 4, !tbaa !8
  br label %.thread.i314.i

bb.re:                                            ; preds = %bb.qd
  %i.cle = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8408
  store i32 -1, ptr %i.cle, align 8, !tbaa !391
  %i.clf = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8428
  store <4 x float> <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF>, ptr %i.clf, align 4, !tbaa !8
  br label %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i

.thread.i314.i:                                   ; preds = %.thread234.i.i, %bb.qc, %bb.qb
  %i.clg = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8400
  %i.clh = load i32, ptr %i.clg, align 8, !tbaa !1074
  %i.cli = icmp eq i32 %i.clh, -1
  %or.cond3.i315.i = and i1 %i.cli, %i.cjs
  br i1 %or.cond3.i315.i, label %bb.rf, label %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i

bb.rf:                                            ; preds = %.thread.i314.i
  %i.clj = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 37 uses
  %i.clk = getelementptr inbounds nuw i8, ptr %i.clj, i64 8224
  %i.cll = load ptr, ptr %i.clk, align 8, !tbaa !389 ; 27 uses
  %i.clm = getelementptr inbounds nuw i8, ptr %i.cll, i64 20
  %i.cln = load i32, ptr %i.clm, align 4, !tbaa !722
  %i.clo = and i32 %i.cln, 65536
  %.not.i.i316.i = icmp eq i32 %i.clo, 0
  br i1 %.not.i.i316.i, label %bb.rg, label %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i

bb.rg:                                            ; preds = %bb.rf
  %i.clp = getelementptr inbounds nuw i8, ptr %i.clj, i64 8712
  %i.clq = load ptr, ptr %i.clp, align 8, !tbaa !1045
  %.not53.i.i.i = icmp eq ptr %i.clq, null
  br i1 %.not53.i.i.i, label %bb.rh, label %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i

bb.rh:                                            ; preds = %bb.rg
  %i.clr = getelementptr i8, ptr %i.clj, i64 388
  %i.cls = load i8, ptr %i.clr, align 4, !tbaa !208, !range !64, !noundef !204
  %i.clt = trunc nuw i8 %i.cls to i1
  br i1 %i.clt, label %bb.ri, label %_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit.i.i.i

bb.ri:                                            ; preds = %bb.rh
  %i.clu = getelementptr inbounds nuw i8, ptr %i.clj, i64 7772
  %i.clv = load i8, ptr %i.clu, align 4, !tbaa !650, !range !64, !noundef !204
  %i.clw = trunc nuw i8 %i.clv to i1
  br i1 %i.clw, label %bb.rj, label %bb.rk

bb.rj:                                            ; preds = %bb.ri
  %i.clx = getelementptr inbounds nuw i8, ptr %i.clj, i64 5428
  %i.cly = load i32, ptr %i.clx, align 4, !tbaa !819
  %.not101.i.i.i = icmp eq i32 %i.cly, -1
  br i1 %.not101.i.i.i, label %bb.rk, label %_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit.i.i.i

bb.rk:                                            ; preds = %bb.rj, %bb.ri
  %i.clz = getelementptr i8, ptr %i.clj, i64 5624
  %i.cma = load i32, ptr %i.clz, align 8, !tbaa !622
  %.not.i.i.i.i321.i = icmp eq i32 %i.cma, -1
  br label %_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit.i.i.i

_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit.i.i.i:        ; preds = %bb.rk, %bb.rj, %bb.rh
  %.0.i.i.i.i = phi i1 [ false, %bb.rh ], [ %.not.i.i.i.i321.i, %bb.rk ], [ false, %bb.rj ] ; 3 uses
  %i.cmb = getelementptr i8, ptr %i.clj, i64 404
  %i.cmc = load i8, ptr %i.cmb, align 4, !tbaa !208, !range !64, !noundef !204
  %i.cmd = trunc nuw i8 %i.cmc to i1
  br i1 %i.cmd, label %bb.rl, label %_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit57.i.i.i

bb.rl:                                            ; preds = %_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit.i.i.i
  %i.cme = getelementptr inbounds nuw i8, ptr %i.clj, i64 7772
  %i.cmf = load i8, ptr %i.cme, align 4, !tbaa !650, !range !64, !noundef !204
  %i.cmg = trunc nuw i8 %i.cmf to i1
  br i1 %i.cmg, label %bb.rm, label %bb.rn

bb.rm:                                            ; preds = %bb.rl
  %i.cmh = getelementptr inbounds nuw i8, ptr %i.clj, i64 5428
  %i.cmi = load i32, ptr %i.cmh, align 4, !tbaa !819
  %.not102.i.i.i = icmp eq i32 %i.cmi, -1
  br i1 %.not102.i.i.i, label %bb.rn, label %_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit57.i.i.i

bb.rn:                                            ; preds = %bb.rm, %bb.rl
  %i.cmj = getelementptr i8, ptr %i.clj, i64 5636
  %i.cmk = load i32, ptr %i.cmj, align 4, !tbaa !622
  %.not.i.i56.i.i.i = icmp eq i32 %i.cmk, -1
  %i.cml = xor i1 %.0.i.i.i.i, %.not.i.i56.i.i.i
  br label %_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit57.i.i.i

_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit57.i.i.i:      ; preds = %bb.rn, %bb.rm, %_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit.i.i.i
  %.0.i55.i.i.i = phi i1 [ %.0.i.i.i.i, %_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit.i.i.i ], [ %i.cml, %bb.rn ], [ %.0.i.i.i.i, %bb.rm ]
  %i.cmm = getelementptr i8, ptr %i.clj, i64 420
  %i.cmn = load i8, ptr %i.cmm, align 4, !tbaa !208, !range !64, !noundef !204
  %i.cmo = trunc nuw i8 %i.cmn to i1
  br i1 %i.cmo, label %bb.ro, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.i.i.i

bb.ro:                                            ; preds = %_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit57.i.i.i
  %i.cmp = getelementptr i8, ptr %i.clj, i64 424
  %i.cmq = load float, ptr %i.cmp, align 8, !tbaa !1008 ; 8 uses
  %i.cmr = fcmp olt float %i.cmq, 0.000000e+00
  br i1 %i.cmr, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.i.i.i, label %bb.rp

bb.rp:                                            ; preds = %bb.ro
  %i.cms = fcmp oeq float %i.cmq, 0.000000e+00
  br i1 %i.cms, label %.thread.i.i320.i, label %bb.rq

bb.rq:                                            ; preds = %bb.rp
  %i.cmt = getelementptr inbounds nuw i8, ptr %i.clj, i64 164
  %i.cmu = load float, ptr %i.cmt, align 4, !tbaa !911 ; 5 uses
  %i.cmv = getelementptr inbounds nuw i8, ptr %i.clj, i64 168
  %i.cmw = load float, ptr %i.cmv, align 8, !tbaa !913 ; 2 uses
  %i.cmx = fcmp ogt float %i.cmq, %i.cmu
  br i1 %i.cmx, label %bb.rr, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.i.i.i

bb.rr:                                            ; preds = %bb.rq
  %i.cmy = getelementptr inbounds nuw i8, ptr %i.clj, i64 64
  %i.cmz = load float, ptr %i.cmy, align 8, !tbaa !912
  %i.cna = fsub float %i.cmq, %i.cmz              ; 3 uses
  %i.cnb = fcmp ult float %i.cna, %i.cmq
  br i1 %i.cnb, label %bb.rs, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.i.i.i

bb.rs:                                            ; preds = %bb.rr
  %i.cnc = fcmp ugt float %i.cmw, 0.000000e+00
  %i.cnd = fcmp olt float %i.cna, %i.cmu          ; 2 uses
  br i1 %i.cnc, label %.split.i.i.i, label %bb.rt

.split.i.i.i:                                     ; preds = %bb.rs
  %i.cne = insertelement <2 x float> poison, float %i.cmq, i64 0
  %i.cnf = insertelement <2 x float> %i.cne, float %i.cna, i64 1
  %i.cng = insertelement <2 x float> poison, float %i.cmu, i64 0
  %i.cnh = shufflevector <2 x float> %i.cng, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cni = fsub <2 x float> %i.cnf, %i.cnh
  %i.cnj = fcmp olt float %i.cmq, %i.cmu
  %i.cnk = insertelement <2 x float> poison, float %i.cmw, i64 0
  %i.cnl = shufflevector <2 x float> %i.cnk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cnm = fdiv <2 x float> %i.cni, %i.cnl
  %i.cnn = fptosi <2 x float> %i.cnm to <2 x i32>
  %i.cno = insertelement <2 x i1> poison, i1 %i.cnj, i64 0
  %i.cnp = insertelement <2 x i1> %i.cno, i1 %i.cnd, i64 1
  %i.cnq = select <2 x i1> %i.cnp, <2 x i32> splat (i32 -1), <2 x i32> %i.cnn ; 2 uses
  %shift781 = shufflevector <2 x i32> %i.cnq, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.cnr = icmp sgt <2 x i32> %i.cnq, %shift781
  %i.cns = extractelement <2 x i1> %i.cnr, i64 0
  br i1 %i.cns, label %.thread.i.i320.i, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.i.i.i

bb.rt:                                            ; preds = %bb.rs
  %i.cnt = fcmp oge float %i.cmq, %i.cmu
  %i.cnu = and i1 %i.cnt, %i.cnd
  br i1 %i.cnu, label %.thread.i.i320.i, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.i.i.i

.thread.i.i320.i:                                 ; preds = %bb.rt, %.split.i.i.i, %bb.rp
  %i.cnv = getelementptr inbounds nuw i8, ptr %i.clj, i64 7772
  %i.cnw = load i8, ptr %i.cnv, align 4, !tbaa !650, !range !64, !noundef !204
  %i.cnx = trunc nuw i8 %i.cnw to i1
  br i1 %i.cnx, label %bb.ru, label %bb.rv

bb.ru:                                            ; preds = %.thread.i.i320.i
  %i.cny = getelementptr inbounds nuw i8, ptr %i.clj, i64 5428
  %i.cnz = load i32, ptr %i.cny, align 4, !tbaa !819
  %.not103.i.i.i = icmp eq i32 %i.cnz, -1
  br i1 %.not103.i.i.i, label %bb.rv, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.i.i.i

bb.rv:                                            ; preds = %bb.ru, %.thread.i.i320.i
  %i.coa = getelementptr i8, ptr %i.clj, i64 5648
  %i.cob = load i32, ptr %i.coa, align 8, !tbaa !622
  %.not.i.i58.i.i.i = icmp eq i32 %i.cob, -1
  br label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.i.i.i

_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.i.i.i:   ; preds = %bb.rv, %bb.ru, %bb.rt, %.split.i.i.i, %bb.rr, %bb.rq, %bb.ro, %_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit57.i.i.i
  %.230.i.i.i.i = phi i1 [ false, %_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit57.i.i.i ], [ false, %bb.ro ], [ false, %bb.rt ], [ false, %bb.rq ], [ %.not.i.i58.i.i.i, %bb.rv ], [ false, %bb.ru ], [ false, %bb.rr ], [ false, %.split.i.i.i ] ; 3 uses
  %i.coc = getelementptr i8, ptr %i.clj, i64 436
  %i.cod = load i8, ptr %i.coc, align 4, !tbaa !208, !range !64, !noundef !204
  %i.coe = trunc nuw i8 %i.cod to i1
  br i1 %i.coe, label %bb.rw, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit65.i.i.i

bb.rw:                                            ; preds = %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.i.i.i
  %i.cof = getelementptr i8, ptr %i.clj, i64 440
  %i.cog = load float, ptr %i.cof, align 8, !tbaa !1008 ; 8 uses
  %i.coh = fcmp olt float %i.cog, 0.000000e+00
  br i1 %i.coh, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit65.i.i.i, label %bb.rx

bb.rx:                                            ; preds = %bb.rw
  %i.coi = fcmp oeq float %i.cog, 0.000000e+00
  br i1 %i.coi, label %.thread83.i.i.i, label %bb.ry

bb.ry:                                            ; preds = %bb.rx
  %i.coj = getelementptr inbounds nuw i8, ptr %i.clj, i64 164
  %i.cok = load float, ptr %i.coj, align 4, !tbaa !911 ; 5 uses
  %i.col = getelementptr inbounds nuw i8, ptr %i.clj, i64 168
  %i.com = load float, ptr %i.col, align 8, !tbaa !913 ; 2 uses
  %i.con = fcmp ogt float %i.cog, %i.cok
  br i1 %i.con, label %bb.rz, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit65.i.i.i

bb.rz:                                            ; preds = %bb.ry
  %i.coo = getelementptr inbounds nuw i8, ptr %i.clj, i64 64
  %i.cop = load float, ptr %i.coo, align 8, !tbaa !912
  %i.coq = fsub float %i.cog, %i.cop              ; 3 uses
  %i.cor = fcmp ult float %i.coq, %i.cog
  br i1 %i.cor, label %bb.sa, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit65.i.i.i

bb.sa:                                            ; preds = %bb.rz
  %i.cos = fcmp ugt float %i.com, 0.000000e+00
  %i.cot = fcmp olt float %i.coq, %i.cok          ; 2 uses
  br i1 %i.cos, label %.split85.i.i.i, label %bb.sb

.split85.i.i.i:                                   ; preds = %bb.sa
  %i.cou = insertelement <2 x float> poison, float %i.cog, i64 0
  %i.cov = insertelement <2 x float> %i.cou, float %i.coq, i64 1
  %i.cow = insertelement <2 x float> poison, float %i.cok, i64 0
  %i.cox = shufflevector <2 x float> %i.cow, <2 x float> poison, <2 x i32> zeroinitializer
  %i.coy = fsub <2 x float> %i.cov, %i.cox
  %i.coz = fcmp olt float %i.cog, %i.cok
  %i.cpa = insertelement <2 x float> poison, float %i.com, i64 0
  %i.cpb = shufflevector <2 x float> %i.cpa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cpc = fdiv <2 x float> %i.coy, %i.cpb
  %i.cpd = fptosi <2 x float> %i.cpc to <2 x i32>
  %i.cpe = insertelement <2 x i1> poison, i1 %i.coz, i64 0
  %i.cpf = insertelement <2 x i1> %i.cpe, i1 %i.cot, i64 1
  %i.cpg = select <2 x i1> %i.cpf, <2 x i32> splat (i32 -1), <2 x i32> %i.cpd ; 2 uses
  %shift782 = shufflevector <2 x i32> %i.cpg, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.cph = icmp sgt <2 x i32> %i.cpg, %shift782
  %i.cpi = extractelement <2 x i1> %i.cph, i64 0
  br i1 %i.cpi, label %.thread83.i.i.i, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit65.i.i.i

bb.sb:                                            ; preds = %bb.sa
  %i.cpj = fcmp oge float %i.cog, %i.cok
  %i.cpk = and i1 %i.cpj, %i.cot
  br i1 %i.cpk, label %.thread83.i.i.i, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit65.i.i.i

.thread83.i.i.i:                                  ; preds = %bb.sb, %.split85.i.i.i, %bb.rx
  %i.cpl = getelementptr inbounds nuw i8, ptr %i.clj, i64 7772
  %i.cpm = load i8, ptr %i.cpl, align 4, !tbaa !650, !range !64, !noundef !204
  %i.cpn = trunc nuw i8 %i.cpm to i1
  br i1 %i.cpn, label %bb.sc, label %bb.sd

bb.sc:                                            ; preds = %.thread83.i.i.i
  %i.cpo = getelementptr inbounds nuw i8, ptr %i.clj, i64 5428
  %i.cpp = load i32, ptr %i.cpo, align 4, !tbaa !819
  %.not104.i.i.i = icmp eq i32 %i.cpp, -1
  br i1 %.not104.i.i.i, label %bb.sd, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit65.i.i.i

bb.sd:                                            ; preds = %bb.sc, %.thread83.i.i.i
  %i.cpq = getelementptr i8, ptr %i.clj, i64 5660
  %i.cpr = load i32, ptr %i.cpq, align 4, !tbaa !622
  %.not.i.i63.i.i.i = icmp eq i32 %i.cpr, -1
  br label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit65.i.i.i

_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit65.i.i.i: ; preds = %bb.sd, %bb.sc, %bb.sb, %.split85.i.i.i, %bb.rz, %bb.ry, %bb.rw, %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.i.i.i
  %.230.i60.i.i.i = phi i1 [ false, %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.i.i.i ], [ false, %bb.rw ], [ false, %bb.sb ], [ false, %bb.ry ], [ %.not.i.i63.i.i.i, %bb.sd ], [ false, %bb.sc ], [ false, %bb.rz ], [ false, %.split85.i.i.i ] ; 3 uses
  %i.cps = xor i1 %.230.i.i.i.i, %.230.i60.i.i.i
  %or.cond.i.i317.i = or i1 %.0.i55.i.i.i, %i.cps
  br i1 %or.cond.i.i317.i, label %bb.se, label %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i

bb.se:                                            ; preds = %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit65.i.i.i
  %i.cpt = getelementptr inbounds nuw i8, ptr %i.clj, i64 8236 ; 2 uses
  %i.cpu = load i32, ptr %i.cpt, align 4, !tbaa !895
  %.not54.i.i.i = icmp eq i32 %i.cpu, 0
  br i1 %.not54.i.i.i, label %bb.sg, label %bb.sf

bb.sf:                                            ; preds = %bb.se
  call fastcc void @_ZN5ImGuiL15NavRestoreLayerE13ImGuiNavLayer(i32 noundef 0)
  br label %bb.sg

bb.sg:                                            ; preds = %bb.sf, %bb.se
  %i.cpv = getelementptr inbounds nuw i8, ptr %i.cll, i64 372
  %i.cpw = load i16, ptr %i.cpv, align 4, !tbaa !1056
  %i.cpx = and i16 %i.cpw, 1
  %i.cpy = icmp eq i16 %i.cpx, 0
  br i1 %i.cpy, label %bb.sh, label %._crit_edge.i.i318.i

._crit_edge.i.i318.i:                             ; preds = %bb.sg
  %.pre.i.i319.i = load ptr, ptr @GImGui, align 8, !tbaa !193
  br label %bb.sx

bb.sh:                                            ; preds = %bb.sg
  %i.cpz = getelementptr inbounds nuw i8, ptr %i.cll, i64 378
  %i.cqa = load i8, ptr %i.cpz, align 2, !tbaa !1076, !range !64, !noundef !204
  %i.cqb = trunc nuw i8 %i.cqa to i1
  %.pre106.i.i.i = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 9 uses
  br i1 %i.cqb, label %bb.si, label %bb.sx

bb.si:                                            ; preds = %bb.sh
  %i.cqc = getelementptr i8, ptr %.pre106.i.i.i, i64 388
  %i.cqd = load i8, ptr %i.cqc, align 4, !tbaa !208, !range !64, !noundef !204
  %i.cqe = trunc nuw i8 %i.cqd to i1
  br i1 %i.cqe, label %bb.sj, label %bb.sr

bb.sj:                                            ; preds = %bb.si
  %i.cqf = getelementptr i8, ptr %.pre106.i.i.i, i64 392
  %i.cqg = load float, ptr %i.cqf, align 4, !tbaa !1008 ; 8 uses
  %i.cqh = fcmp olt float %i.cqg, 0.000000e+00
  br i1 %i.cqh, label %bb.sr, label %bb.sk

bb.sk:                                            ; preds = %bb.sj
  %i.cqi = fcmp oeq float %i.cqg, 0.000000e+00
  br i1 %i.cqi, label %.thread86.i.i.i, label %bb.sl

bb.sl:                                            ; preds = %bb.sk
  %i.cqj = getelementptr inbounds nuw i8, ptr %.pre106.i.i.i, i64 164
  %i.cqk = load float, ptr %i.cqj, align 4, !tbaa !911 ; 5 uses
  %i.cql = getelementptr inbounds nuw i8, ptr %.pre106.i.i.i, i64 168
  %i.cqm = load float, ptr %i.cql, align 8, !tbaa !913 ; 2 uses
  %i.cqn = fcmp ogt float %i.cqg, %i.cqk
  br i1 %i.cqn, label %bb.sm, label %bb.sr

bb.sm:                                            ; preds = %bb.sl
  %i.cqo = getelementptr inbounds nuw i8, ptr %.pre106.i.i.i, i64 64
  %i.cqp = load float, ptr %i.cqo, align 8, !tbaa !912
  %i.cqq = fsub float %i.cqg, %i.cqp              ; 3 uses
  %i.cqr = fcmp ult float %i.cqq, %i.cqg
  br i1 %i.cqr, label %bb.sn, label %bb.sr

bb.sn:                                            ; preds = %bb.sm
  %i.cqs = fcmp ugt float %i.cqm, 0.000000e+00
  %i.cqt = fcmp olt float %i.cqq, %i.cqk          ; 2 uses
  br i1 %i.cqs, label %.split88.i.i.i, label %bb.so

.split88.i.i.i:                                   ; preds = %bb.sn
  %i.cqu = insertelement <2 x float> poison, float %i.cqg, i64 0
  %i.cqv = insertelement <2 x float> %i.cqu, float %i.cqq, i64 1
  %i.cqw = insertelement <2 x float> poison, float %i.cqk, i64 0
  %i.cqx = shufflevector <2 x float> %i.cqw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cqy = fsub <2 x float> %i.cqv, %i.cqx
  %i.cqz = fcmp olt float %i.cqg, %i.cqk
  %i.cra = insertelement <2 x float> poison, float %i.cqm, i64 0
  %i.crb = shufflevector <2 x float> %i.cra, <2 x float> poison, <2 x i32> zeroinitializer
  %i.crc = fdiv <2 x float> %i.cqy, %i.crb
  %i.crd = fptosi <2 x float> %i.crc to <2 x i32>
  %i.cre = insertelement <2 x i1> poison, i1 %i.cqz, i64 0
  %i.crf = insertelement <2 x i1> %i.cre, i1 %i.cqt, i64 1
  %i.crg = select <2 x i1> %i.crf, <2 x i32> splat (i32 -1), <2 x i32> %i.crd ; 2 uses
  %shift783 = shufflevector <2 x i32> %i.crg, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.crh = icmp sgt <2 x i32> %i.crg, %shift783
  %i.cri = extractelement <2 x i1> %i.crh, i64 0
  br i1 %i.cri, label %.thread86.i.i.i, label %bb.sr

bb.so:                                            ; preds = %bb.sn
  %i.crj = fcmp oge float %i.cqg, %i.cqk
  %i.crk = and i1 %i.crj, %i.cqt
  br i1 %i.crk, label %.thread86.i.i.i, label %bb.sr

.thread86.i.i.i:                                  ; preds = %bb.so, %.split88.i.i.i, %bb.sk
  %i.crl = getelementptr inbounds nuw i8, ptr %.pre106.i.i.i, i64 7772
  %i.crm = load i8, ptr %i.crl, align 4, !tbaa !650, !range !64, !noundef !204
  %i.crn = trunc nuw i8 %i.crm to i1
  br i1 %i.crn, label %bb.sp, label %bb.sq

bb.sp:                                            ; preds = %.thread86.i.i.i
  %i.cro = getelementptr inbounds nuw i8, ptr %.pre106.i.i.i, i64 5428
  %i.crp = load i32, ptr %i.cro, align 4, !tbaa !819
  %.not105.i.i.i = icmp eq i32 %i.crp, -1
  br i1 %.not105.i.i.i, label %bb.sq, label %bb.sr

bb.sq:                                            ; preds = %bb.sp, %.thread86.i.i.i
  %i.crq = getelementptr i8, ptr %.pre106.i.i.i, i64 5624
  %i.crr = load i32, ptr %i.crq, align 4, !tbaa !622
  %.not.i.i69.i.i.i = icmp eq i32 %i.crr, -1
  br i1 %.not.i.i69.i.i.i, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit71.i.i.i, label %bb.sr

_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit71.i.i.i: ; preds = %bb.sq
  %i.crs = getelementptr inbounds nuw i8, ptr %i.cll, i64 156
  %i.crt = load float, ptr %i.crs, align 4, !tbaa !1077
  %i.cru = getelementptr inbounds nuw i8, ptr %i.cll, i64 564
  %i.crv = load float, ptr %i.cru, align 4, !tbaa !399
  %i.crw = getelementptr inbounds nuw i8, ptr %i.cll, i64 556
  %i.crx = load float, ptr %i.crw, align 4, !tbaa !398
  %i.cry = fsub float %i.crv, %i.crx
  %i.crz = fsub float %i.crt, %i.cry
  %i.csa = getelementptr inbounds nuw i8, ptr %i.cll, i64 172
  store float %i.crz, ptr %i.csa, align 4, !tbaa !1078
  %i.csb = getelementptr inbounds nuw i8, ptr %i.cll, i64 180
  store float 0.000000e+00, ptr %i.csb, align 4, !tbaa !1079
  %i.csc = getelementptr inbounds nuw i8, ptr %i.cll, i64 188
  store float 0.000000e+00, ptr %i.csc, align 4, !tbaa !1080
  br label %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i

bb.sr:                                            ; preds = %bb.sq, %bb.sp, %bb.so, %.split88.i.i.i, %bb.sm, %bb.sl, %bb.sj, %bb.si
  %i.csd = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyij(i32 noundef 518, i32 noundef 1, i32 noundef -1)
  br i1 %i.csd, label %bb.ss, label %bb.st

bb.ss:                                            ; preds = %bb.sr
  %i.cse = getelementptr inbounds nuw i8, ptr %i.cll, i64 156
  %i.csf = load float, ptr %i.cse, align 4, !tbaa !1077
  %i.csg = getelementptr inbounds nuw i8, ptr %i.cll, i64 564
  %i.csh = load float, ptr %i.csg, align 4, !tbaa !399
  %i.csi = getelementptr inbounds nuw i8, ptr %i.cll, i64 556
  %i.csj = load float, ptr %i.csi, align 4, !tbaa !398
  %i.csk = fsub float %i.csh, %i.csj
  %i.csl = fadd float %i.csf, %i.csk
  %i.csm = getelementptr inbounds nuw i8, ptr %i.cll, i64 172
  store float %i.csl, ptr %i.csm, align 4, !tbaa !1078
  %i.csn = getelementptr inbounds nuw i8, ptr %i.cll, i64 180
  store float 0.000000e+00, ptr %i.csn, align 4, !tbaa !1079
  %i.cso = getelementptr inbounds nuw i8, ptr %i.cll, i64 188
  store float 0.000000e+00, ptr %i.cso, align 4, !tbaa !1080
  br label %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i

bb.st:                                            ; preds = %bb.sr
  br i1 %.230.i.i.i.i, label %bb.su, label %bb.sv

bb.su:                                            ; preds = %bb.st
  %i.csp = getelementptr inbounds nuw i8, ptr %i.cll, i64 172
  store float 0.000000e+00, ptr %i.csp, align 4, !tbaa !1078
  %i.csq = getelementptr inbounds nuw i8, ptr %i.cll, i64 180
  store float 0.000000e+00, ptr %i.csq, align 4, !tbaa !1079
  %i.csr = getelementptr inbounds nuw i8, ptr %i.cll, i64 188
  store float 0.000000e+00, ptr %i.csr, align 4, !tbaa !1080
  br label %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i

bb.sv:                                            ; preds = %bb.st
  br i1 %.230.i60.i.i.i, label %bb.sw, label %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i

bb.sw:                                            ; preds = %bb.sv
  %i.css = getelementptr inbounds nuw i8, ptr %i.cll, i64 164
  %i.cst = load float, ptr %i.css, align 4, !tbaa !1081
  %i.csu = getelementptr inbounds nuw i8, ptr %i.cll, i64 172
  store float %i.cst, ptr %i.csu, align 4, !tbaa !1078
  %i.csv = getelementptr inbounds nuw i8, ptr %i.cll, i64 180
  store float 0.000000e+00, ptr %i.csv, align 4, !tbaa !1079
  %i.csw = getelementptr inbounds nuw i8, ptr %i.cll, i64 188
  store float 0.000000e+00, ptr %i.csw, align 4, !tbaa !1080
  br label %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i

bb.sx:                                            ; preds = %bb.sh, %._crit_edge.i.i318.i
  %i.csx = phi ptr [ %.pre.i.i319.i, %._crit_edge.i.i318.i ], [ %.pre106.i.i.i, %bb.sh ] ; 12 uses
  %i.csy = getelementptr inbounds nuw i8, ptr %i.cll, i64 1016
  %i.csz = load i32, ptr %i.cpt, align 4, !tbaa !895
  %i.cta = zext i32 %i.csz to i64
  %i.ctb = getelementptr inbounds nuw [16 x i8], ptr %i.csy, i64 %i.cta ; 8 uses
  %i.ctc = getelementptr inbounds nuw i8, ptr %i.cll, i64 564
  %i.ctd = load float, ptr %i.ctc, align 4, !tbaa !399
  %i.cte = getelementptr inbounds nuw i8, ptr %i.cll, i64 556
  %i.ctf = load float, ptr %i.cte, align 4, !tbaa !398
  %i.ctg = fsub float %i.ctd, %i.ctf
  %i.cth = getelementptr inbounds nuw i8, ptr %i.cll, i64 704
  %i.cti = load float, ptr %i.cth, align 8, !tbaa !794
  %i.ctj = fsub float %i.ctg, %i.cti
  %i.ctk = getelementptr inbounds nuw i8, ptr %i.ctb, i64 12 ; 3 uses
  %i.ctl = load float, ptr %i.ctk, align 4, !tbaa !399
  %i.ctm = getelementptr inbounds nuw i8, ptr %i.ctb, i64 4 ; 3 uses
  %i.ctn = load float, ptr %i.ctm, align 4, !tbaa !398
  %i.cto = fsub float %i.ctl, %i.ctn
  %i.ctp = fadd float %i.ctj, %i.cto              ; 2 uses
  %i.ctq = fcmp ole float %i.ctp, 0.000000e+00
  %i.ctr = select i1 %i.ctq, float 0.000000e+00, float %i.ctp ; 2 uses
  %i.cts = getelementptr i8, ptr %i.csx, i64 388
  %i.ctt = load i8, ptr %i.cts, align 4, !tbaa !208, !range !64, !noundef !204
  %i.ctu = trunc nuw i8 %i.ctt to i1
  br i1 %i.ctu, label %bb.sy, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit76.thread.i.i.i
end_hunk_2
begin_hunk_3_@_ZN5ImGui5BeginEPKcPbi:bb.a
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 8208
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !437
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !438 ; 6 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.xt, i64 32
  store ptr %i.yq, ptr %i.yr, align 8, !tbaa !1226
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yn, i64 5312
  store ptr %i.xt, ptr %i.ys, align 8, !tbaa !298
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yn, i64 5264
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yn, i64 5272
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !565
  %i.yw = load i32, ptr %i.yt, align 8, !tbaa !567
  %i.yx = sext i32 %i.yw to i64
  %i.yy = getelementptr [120 x i8], ptr %i.yv, i64 %i.yx
  %i.yz = getelementptr i8, ptr %i.yy, i64 -32
  %i.za = getelementptr inbounds nuw i8, ptr %i.yn, i64 10392
  store ptr %i.yz, ptr %i.za, align 8, !tbaa !680
  %i.zb = getelementptr inbounds nuw i8, ptr %i.xt, i64 464
  %i.zc = load i32, ptr %i.zb, align 8, !tbaa !1222 ; 2 uses
  %.not23.i569 = icmp eq i32 %i.zc, -1
  br i1 %.not23.i569, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yn, i64 9024
  %i.ze = load ptr, ptr %i.zd, align 8, !tbaa !700
  %i.zf = sext i32 %i.zc to i64
  %i.zg = getelementptr inbounds [592 x i8], ptr %i.ze, i64 %i.zf
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %.ph.i = phi ptr [ null, %bb.dw ], [ %i.zg, %bb.dx ]
  %i.zh = getelementptr inbounds nuw i8, ptr %i.yn, i64 8984
  store ptr %.ph.i, ptr %i.zh, align 8, !tbaa !338
  %i.zi = getelementptr inbounds nuw i8, ptr %i.yn, i64 4584
  store float 1.000000e+00, ptr %i.zi, align 8, !tbaa !1227
  %i.zj = getelementptr inbounds nuw i8, ptr %i.yn, i64 44
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !950
  %i.zl = and i32 %i.zk, 16
  %.not24.i570 = icmp eq i32 %i.zl, 0
  br i1 %.not24.i570, label %bb.ec, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.zm = getelementptr inbounds nuw i8, ptr %i.yq, i64 24
  %i.zn = load float, ptr %i.zm, align 8, !tbaa !1228 ; 2 uses
  %i.zo = fcmp une float %i.zn, 0.000000e+00
  br i1 %i.zo, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.zp = getelementptr inbounds nuw i8, ptr %i.yn, i64 56
  %i.zq = load float, ptr %i.zp, align 8, !tbaa !1229
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.zr = phi float [ %i.zq, %bb.ea ], [ %i.zn, %bb.dz ]
  %i.zs = getelementptr inbounds nuw i8, ptr %i.yn, i64 4580
  store float %i.zr, ptr %i.zs, align 4, !tbaa !1230
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.dy
  %i.zt = getelementptr inbounds nuw i8, ptr %i.xt, i64 209 ; 3 uses
  %i.zu = load i8, ptr %i.zt, align 1, !tbaa !1231, !range !64, !noundef !204
  store i8 0, ptr %i.zt, align 1, !tbaa !1231
  call void @_ZN5ImGui21UpdateCurrentFontSizeEf(float noundef 0.000000e+00)
  store i8 %i.zu, ptr %i.zt, align 1, !tbaa !1231
  %i.zv = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 8 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 5312
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !298 ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zv, i64 8984
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !338
  %i.aaa = icmp eq ptr %i.zz, null
  br i1 %i.aaa, label %bb.ed, label %_ZL16SetCurrentWindowP11ImGuiWindow.exit

bb.ed:                                            ; preds = %bb.ec
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zx, i64 456
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !333
  %i.aad = icmp eq ptr %i.aac, null
  %i.aae = zext i1 %i.aad to i8
  br label %_ZL16SetCurrentWindowP11ImGuiWindow.exit

_ZL16SetCurrentWindowP11ImGuiWindow.exit:         ; preds = %bb.ec, %bb.ed
  %i.aaf = phi i8 [ 0, %bb.ec ], [ %i.aae, %bb.ed ]
  %i.aag = getelementptr inbounds nuw i8, ptr %i.zx, i64 376
  store i8 %i.aaf, ptr %i.aag, align 8, !tbaa !1232
  br i1 %.not462, label %.thread964, label %bb.ee

.thread964:                                       ; preds = %_ZL16SetCurrentWindowP11ImGuiWindow.exit
  %i.aah = and i32 %.1403, 134217728
  %.not469 = icmp eq i32 %i.aah, 0
  %or.cond515 = and i1 %.not466, %.not469
  %.in470.v = select i1 %or.cond515, i64 3280, i64 3240
  %.in470 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.in470.v
  %i.aai = load float, ptr %.in470, align 4, !tbaa !8
  %i.aaj = load ptr, ptr %i.g, align 8, !tbaa !705 ; 3 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 100
  store float %i.aai, ptr %i.aak, align 4, !tbaa !1233
  %i.aal = getelementptr inbounds nuw i8, ptr %i.j, i64 3228
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aaj, i64 88
  %i.aan = load i64, ptr %i.aal, align 4          ; 2 uses
  store i64 %i.aan, ptr %i.aam, align 8
  %i.aao = trunc i64 %i.aan to i32
  %i.aap = bitcast i32 %i.aao to float
  br label %bb.ej

bb.ee:                                            ; preds = %_ZL16SetCurrentWindowP11ImGuiWindow.exit
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.j, i64 3272
  %i.aar = load float, ptr %i.aaq, align 8, !tbaa !1234 ; 2 uses
  %i.aas = load ptr, ptr %i.g, align 8, !tbaa !705 ; 7 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 100
  store float %i.aar, ptr %i.aat, align 4, !tbaa !1233
  %i.aau = getelementptr inbounds nuw i8, ptr %i.j, i64 3228
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aas, i64 88 ; 2 uses
  %i.aaw = load i64, ptr %i.aau, align 4          ; 2 uses
  store i64 %i.aaw, ptr %i.aav, align 8
  %i.aax = trunc i64 %i.aaw to i32
  %i.aay = bitcast i32 %i.aax to float            ; 2 uses
  br i1 %i.oy, label %bb.ej, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aas, i64 24
  %i.aba = load i32, ptr %i.aaz, align 8, !tbaa !1188
  %i.abb = and i32 %i.aba, 2
  %.not471 = icmp eq i32 %i.abb, 0
  %i.abc = fcmp oeq float %i.aar, 0.000000e+00
  %or.cond1192 = select i1 %.not471, i1 %i.abc, i1 false
  br i1 %or.cond1192, label %bb.eg, label %bb.ej

bb.eg:                                            ; preds = %bb.ef
  %i.abd = and i32 %.1403, 1024
  %.not472 = icmp eq i32 %i.abd, 0
  br i1 %.not472, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.abe = getelementptr inbounds nuw i8, ptr %i.j, i64 3232
  %i.abf = load i32, ptr %i.abe, align 8, !tbaa !1235
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eg, %bb.eh
  %i.abg = phi i32 [ %i.abf, %bb.eh ], [ 0, %bb.eg ]
  store i32 0, ptr %i.aav, align 8
  %.sroa_idx861 = getelementptr inbounds nuw i8, ptr %i.aas, i64 92
  store i32 %i.abg, ptr %.sroa_idx861, align 4
  br label %bb.ej

bb.ej:                                            ; preds = %.thread964, %bb.ee, %bb.ei, %bb.ef
  %i.abh = phi float [ %i.aap, %.thread964 ], [ %i.aay, %bb.ee ], [ 0.000000e+00, %bb.ei ], [ %i.aay, %bb.ef ] ; 2 uses
  %brmerge966 = phi i1 [ true, %.thread964 ], [ true, %bb.ee ], [ false, %bb.ei ], [ false, %bb.ef ]
  %i.abi = phi ptr [ %i.aaj, %.thread964 ], [ %i.aas, %bb.ee ], [ %i.aas, %bb.ei ], [ %i.aas, %bb.ef ] ; 28 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.j, i64 3300 ; 2 uses
  %i.abk = load float, ptr %i.abj, align 4, !tbaa !1236 ; 2 uses
  %i.abl = fcmp oge float %i.abh, %i.abk
  %i.abm = select i1 %i.abl, float %i.abh, float %i.abk ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.j, i64 8036
  %i.abo = load float, ptr %i.abn, align 4, !tbaa !1237 ; 2 uses
  %i.abp = fcmp oge float %i.abm, %i.abo
  %i.abq = select i1 %i.abp, float %i.abm, float %i.abo
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abi, i64 380
  store float %i.abq, ptr %i.abr, align 4, !tbaa !1238
  %i.abs = getelementptr inbounds nuw i8, ptr %i.j, i64 8040
  %i.abt = load float, ptr %i.abs, align 8, !tbaa !1239 ; 2 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abi, i64 384
  store float %i.abt, ptr %i.abu, align 4, !tbaa !1240
  %i.abv = and i32 %.1403, 1
  %.not473 = icmp eq i32 %i.abv, 0                ; 2 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %i.j, i64 4568
  %i.abx = load float, ptr %i.abw, align 8, !tbaa !454 ; 3 uses
  br i1 %.not473, label %bb.ek, label %._crit_edge1242

bb.ek:                                            ; preds = %bb.ej
  %i.aby = getelementptr inbounds nuw i8, ptr %i.j, i64 3288
  %i.abz = load float, ptr %i.aby, align 8, !tbaa !458
  %i.aca = call float @llvm.fmuladd.f32(float %i.abz, float 2.000000e+00, float %i.abx)
  br label %._crit_edge1242

._crit_edge1242:                                  ; preds = %bb.ej, %bb.ek
  %i.acb = phi float [ %i.aca, %bb.ek ], [ 0.000000e+00, %bb.ej ] ; 3 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abi, i64 104
  store float %i.acb, ptr %i.acc, align 8, !tbaa !909
  %i.acd = and i32 %.1403, 1024
  %.not474.not = icmp eq i32 %i.acd, 0
  %.phi.trans.insert1040 = getelementptr inbounds nuw i8, ptr %i.j, i64 4568 ; 2 uses
  br i1 %.not474.not, label %._crit_edge1039, label %bb.el

bb.el:                                            ; preds = %._crit_edge1242
  %i.ace = fadd float %i.abt, %i.abx
  %i.acf = getelementptr inbounds nuw i8, ptr %i.j, i64 3288
  %i.acg = load float, ptr %i.acf, align 8, !tbaa !458
  %i.ach = call float @llvm.fmuladd.f32(float %i.acg, float 2.000000e+00, float %i.ace)
  br label %._crit_edge1039

._crit_edge1039:                                  ; preds = %._crit_edge1242, %bb.el
  %i.aci = phi float [ %i.ach, %bb.el ], [ 0.000000e+00, %._crit_edge1242 ] ; 2 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %i.abi, i64 108
  store float %i.aci, ptr %i.acj, align 4, !tbaa !1241
  %i.ack = getelementptr inbounds nuw i8, ptr %i.abi, i64 704
  store float %i.abx, ptr %i.ack, align 8, !tbaa !794
  br i1 %.0420, label %bb.em, label %bb.en

bb.em:                                            ; preds = %._crit_edge1039
  %i.acl = getelementptr inbounds nuw i8, ptr %i.abi, i64 80
  %i.acm = load float, ptr %i.acl, align 8, !tbaa !1242
  %i.acn = fcmp une float %i.acm, 0.000000e+00
  br i1 %i.acn, label %31, label %bb.en

31:                                               ; preds = %bb.em
  br label %bb.en

bb.en:                                            ; preds = %31, %bb.em, %._crit_edge1039
  %.0412 = phi i1 [ true, %31 ], [ %i.eg, %bb.em ], [ %i.eg, %._crit_edge1039 ]
  br i1 %.0419, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.aco = getelementptr inbounds nuw i8, ptr %i.abi, i64 84
  %i.acp = load float, ptr %i.aco, align 4, !tbaa !1243
  %i.acq = fcmp une float %i.acp, 0.000000e+00
  br i1 %i.acq, label %32, label %bb.ep

32:                                               ; preds = %bb.eo
  br label %bb.ep

bb.ep:                                            ; preds = %32, %bb.eo, %bb.en
  %.0410 = phi i1 [ true, %32 ], [ %i.eg, %bb.eo ], [ %i.eg, %bb.en ] ; 3 uses
  %i.acr = and i32 %.1403, 33
  %or.cond516 = icmp eq i32 %i.acr, 0
  br i1 %or.cond516, label %bb.eq, label %bb.fb

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #41
  %i.acs = getelementptr inbounds nuw i8, ptr %i.abi, i64 40
  %i.act = getelementptr inbounds nuw i8, ptr %i.abi, i64 56
  %i.acu = load float, ptr %i.act, align 8, !tbaa !910
  %i.acv = load <2 x float>, ptr %i.acs, align 8, !tbaa !8 ; 2 uses
  %i.acw = insertelement <2 x float> poison, float %i.acu, i64 0
  %i.acx = insertelement <2 x float> %i.acw, float %i.acb, i64 1
  %i.acy = fadd <2 x float> %i.acx, %i.acv
  store <2 x float> %i.acv, ptr %27, align 8
  %i.acz = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  store <2 x float> %i.acy, ptr %i.acz, align 8
  %i.ada = getelementptr inbounds nuw i8, ptr %i.j, i64 5320
  %i.adb = load ptr, ptr %i.ada, align 8, !tbaa !853
  %i.adc = icmp eq ptr %i.adb, %i.abi
  br i1 %i.adc, label %bb.er, label %bb.ex

bb.er:                                            ; preds = %bb.eq
  %i.add = getelementptr inbounds nuw i8, ptr %i.j, i64 5404
  %i.ade = load i32, ptr %i.add, align 4, !tbaa !840
  %i.adf = icmp eq i32 %i.ade, 0
  br i1 %i.adf, label %bb.es, label %bb.ex

bb.es:                                            ; preds = %bb.er
  %i.adg = getelementptr inbounds nuw i8, ptr %i.j, i64 5408
  %i.adh = load i32, ptr %i.adg, align 8, !tbaa !842
  %i.adi = icmp eq i32 %i.adh, 0
  br i1 %i.adi, label %bb.et, label %bb.ex

bb.et:                                            ; preds = %bb.es
  %i.adj = getelementptr inbounds nuw i8, ptr %i.j, i64 5428
  %i.adk = load i32, ptr %i.adj, align 4, !tbaa !819
  %i.adl = icmp eq i32 %i.adk, 0
  br i1 %i.adl, label %bb.eu, label %bb.ex

bb.eu:                                            ; preds = %bb.et
  %i.adm = call noundef zeroext i1 @_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b(ptr noundef nonnull align 4 dereferenceable(8) %27, ptr noundef nonnull align 4 dereferenceable(8) %i.acz, i1 noundef zeroext true)
  br i1 %i.adm, label %bb.ev, label %bb.ex

bb.ev:                                            ; preds = %bb.eu
  %i.adn = getelementptr inbounds nuw i8, ptr %i.j, i64 2890
  %i.ado = load i16, ptr %i.adn, align 2, !tbaa !235
  %i.adp = icmp eq i16 %i.ado, 2
  br i1 %i.adp, label %_ZN5ImGui11GetKeyOwnerE8ImGuiKey.exit, label %bb.ex

_ZN5ImGui11GetKeyOwnerE8ImGuiKey.exit:            ; preds = %bb.ev
  %i.adq = getelementptr i8, ptr %i.zv, i64 7292  ; 2 uses
  %i.adr = load i32, ptr %i.adq, align 4, !tbaa !622
  %i.ads = icmp eq i32 %i.adr, -1
  br i1 %i.ads, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %_ZN5ImGui11GetKeyOwnerE8ImGuiKey.exit
  %i.adt = getelementptr inbounds nuw i8, ptr %i.abi, i64 208
  store i8 1, ptr %i.adt, align 8, !tbaa !1215
  %i.adu = getelementptr inbounds nuw i8, ptr %i.abi, i64 140
  %i.adv = load i32, ptr %i.adu, align 4, !tbaa !790 ; 2 uses
  %i.adw = getelementptr i8, ptr %i.zv, i64 7296
  store i32 %i.adv, ptr %i.adw, align 8, !tbaa !620
  store i32 %i.adv, ptr %i.adq, align 4, !tbaa !622
  %i.adx = getelementptr i8, ptr %i.zv, i64 7301
  store i8 0, ptr %i.adx, align 1, !tbaa !623
  %i.ady = getelementptr i8, ptr %i.zv, i64 7300
  store i8 0, ptr %i.ady, align 4, !tbaa !624
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ev, %_ZN5ImGui11GetKeyOwnerE8ImGuiKey.exit, %bb.ew, %bb.eu, %bb.et, %bb.es, %bb.er, %bb.eq
  %i.adz = getelementptr inbounds nuw i8, ptr %i.abi, i64 208
  %i.aea = load i8, ptr %i.adz, align 8, !tbaa !1215, !range !64, !noundef !204
  %i.aeb = trunc nuw i8 %i.aea to i1
  br i1 %i.aeb, label %bb.ey, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit

bb.ey:                                            ; preds = %bb.ex
  %i.aec = getelementptr inbounds nuw i8, ptr %i.abi, i64 207 ; 2 uses
  %i.aed = load i8, ptr %i.aec, align 1, !tbaa !721, !range !64, !noundef !204 ; 2 uses
  %i.aee = xor i8 %i.aed, 1
  store i8 %i.aee, ptr %i.aec, align 1, !tbaa !721
  %.not1002 = icmp ne i8 %i.aed, 0
  %spec.select517 = or i1 %.0410, %.not1002       ; 3 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %i.abi, i64 20
  %i.aeg = load i32, ptr %i.aef, align 4, !tbaa !722
  %i.aeh = and i32 %i.aeg, 256
  %.not.i574 = icmp eq i32 %i.aeh, 0
  br i1 %.not.i574, label %bb.ez, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit

bb.ez:                                            ; preds = %bb.ey
  %i.aei = getelementptr inbounds nuw i8, ptr %i.zv, i64 10068 ; 2 uses
  %i.aej = load float, ptr %i.aei, align 4, !tbaa !676
  %i.aek = fcmp ugt float %i.aej, 0.000000e+00
  br i1 %i.aek, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.ael = getelementptr inbounds nuw i8, ptr %i.zv, i64 68
  %i.aem = load float, ptr %i.ael, align 4, !tbaa !904
  store float %i.aem, ptr %i.aei, align 4, !tbaa !676
  br label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit

_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit: ; preds = %bb.fa, %bb.ez, %bb.ey, %bb.ex
  %.2 = phi i1 [ %.0410, %bb.ex ], [ %spec.select517, %bb.ey ], [ %spec.select517, %bb.ez ], [ %spec.select517, %bb.fa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #41
  br label %bb.fc

bb.fb:                                            ; preds = %bb.ep
  %i.aen = getelementptr inbounds nuw i8, ptr %i.abi, i64 207
  store i8 0, ptr %i.aen, align 1, !tbaa !721
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit
  %.3 = phi i1 [ %.0410, %bb.fb ], [ %.2, %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit ]
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.abi, i64 208
  store i8 0, ptr %i.aeo, align 8, !tbaa !1215
  %i.aep = getelementptr inbounds nuw i8, ptr %i.abi, i64 192 ; 2 uses
  %.sroa_idx856 = getelementptr inbounds nuw i8, ptr %i.abi, i64 196
  %i.aeq = load <2 x float>, ptr %i.aep, align 8
  %i.aer = getelementptr inbounds nuw i8, ptr %i.abi, i64 112
  store float 0.000000e+00, ptr %i.aer, align 8, !tbaa !1244
  %i.aes = getelementptr inbounds nuw i8, ptr %i.abi, i64 120
  %i.aet = fadd float %i.acb, %i.aci
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.abi, i64 116
  store float %i.aet, ptr %i.aeu, align 4, !tbaa !1245
  store <2 x float> zeroinitializer, ptr %i.aes, align 8, !tbaa !8
  store i32 0, ptr %i.aep, align 8
  store i32 0, ptr %.sroa_idx856, align 4
  %i.aev = and i32 %.1403, 64
  %.not476 = icmp eq i32 %i.aev, 0                ; 3 uses
  %or.cond518 = select i1 %.0420, i1 true, i1 %.not476
  br i1 %or.cond518, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.aew = getelementptr inbounds nuw i8, ptr %i.abi, i64 207
  %i.aex = load i8, ptr %i.aew, align 1, !tbaa !721, !range !64, !noundef !204
  %i.aey = trunc nuw i8 %i.aex to i1
  %i.aez = xor i1 %i.aey, true
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %i.afa = phi i1 [ %i.aez, %bb.fd ], [ false, %bb.fc ] ; 2 uses
  %or.cond519 = select i1 %.0419, i1 true, i1 %.not476
  br i1 %or.cond519, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.afb = getelementptr inbounds nuw i8, ptr %i.abi, i64 207
  %i.afc = load i8, ptr %i.afb, align 1, !tbaa !721, !range !64, !noundef !204
  %i.afd = trunc nuw i8 %i.afc to i1
  %i.afe = xor i1 %i.afd, true
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %i.aff = phi i1 [ %i.afe, %bb.ff ], [ false, %bb.fe ] ; 2 uses
  br i1 %.0420, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.afg = getelementptr inbounds nuw i8, ptr %i.abi, i64 232
  %i.afh = load i8, ptr %i.afg, align 8, !tbaa !720
  %i.afi = icmp sgt i8 %i.afh, 0
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %i.afj = phi i1 [ false, %bb.fg ], [ %i.afi, %bb.fh ]
  br i1 %.0419, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.afk = getelementptr inbounds nuw i8, ptr %i.abi, i64 233
  %i.afl = load i8, ptr %i.afk, align 1, !tbaa !719
  %i.afm = icmp sgt i8 %i.afl, 0
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %i.afn = phi i1 [ false, %bb.fi ], [ %i.afm, %bb.fj ]
  %or.cond7 = select i1 %i.afa, i1 true, i1 %i.afj ; 2 uses
  %spec.select520 = zext i1 %or.cond7 to i32      ; 2 uses
  %or.cond9 = select i1 %i.aff, i1 true, i1 %i.afn ; 2 uses
  %i.afo = or disjoint i32 %spec.select520, 2
  %.1409 = select i1 %or.cond9, i32 %i.afo, i32 %spec.select520
  %i.afp = getelementptr inbounds nuw i8, ptr %i.abi, i64 72
  %i.afq = call fastcc <2 x float> @_ZL21CalcWindowAutoFitSizeP11ImGuiWindowRK6ImVec2i(ptr noundef nonnull %i.abi, ptr noundef nonnull align 4 dereferenceable(8) %i.afp, i32 noundef %.1409) ; 4 uses
  %i.afr = load ptr, ptr %i.g, align 8, !tbaa !705 ; 6 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 56 ; 3 uses
  %.sroa.091.0.copyload = load float, ptr %i.afs, align 8, !tbaa !8 ; 4 uses
  %.sroa.492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.afr, i64 60 ; 2 uses
  %.sroa.492.0.copyload = load float, ptr %.sroa.492.0..sroa_idx, align 4, !tbaa !8 ; 4 uses
  br i1 %or.cond7, label %bb.fl, label %bb.fo

bb.fl:                                            ; preds = %bb.fk
  br i1 %i.afa, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %.sroa.093.0.vec.extract = extractelement <2 x float> %i.afq, i64 0
  br label %.sink.split

bb.fn:                                            ; preds = %bb.fl
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afr, i64 234
  %i.afu = load i8, ptr %i.aft, align 2, !tbaa !725, !range !64, !noundef !204
  %i.afv = trunc nuw i8 %i.afu to i1
  %.sroa.093.0.vec.extract95 = extractelement <2 x float> %i.afq, i64 0 ; 2 uses
  %i.afw = fcmp oge float %.sroa.091.0.copyload, %.sroa.093.0.vec.extract95
  %i.afx = select i1 %i.afv, i1 %i.afw, i1 false
  %i.afy = select i1 %i.afx, float %.sroa.091.0.copyload, float %.sroa.093.0.vec.extract95
  br label %.sink.split

.sink.split:                                      ; preds = %bb.fn, %bb.fm
  %.sroa.093.0.vec.extract.sink = phi float [ %.sroa.093.0.vec.extract, %bb.fm ], [ %i.afy, %bb.fn ] ; 2 uses
  store float %.sroa.093.0.vec.extract.sink, ptr %i.afs, align 8, !tbaa !910
  br label %bb.fo

bb.fo:                                            ; preds = %.sink.split, %bb.fk
  %i.afz = phi float [ %.sroa.091.0.copyload, %bb.fk ], [ %.sroa.093.0.vec.extract.sink, %.sink.split ]
  %.1413 = phi i1 [ %.0412, %bb.fk ], [ true, %.sink.split ] ; 9 uses
  br i1 %or.cond9, label %bb.fp, label %bb.fs

bb.fp:                                            ; preds = %bb.fo
  br i1 %i.aff, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %.sroa.093.4.vec.extract = extractelement <2 x float> %i.afq, i64 1
  br label %.sink.split1193

bb.fr:                                            ; preds = %bb.fp
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afr, i64 234
  %i.agb = load i8, ptr %i.aga, align 2, !tbaa !725, !range !64, !noundef !204
  %i.agc = trunc nuw i8 %i.agb to i1
  %.sroa.093.4.vec.extract99 = extractelement <2 x float> %i.afq, i64 1 ; 2 uses
  %i.agd = fcmp oge float %.sroa.492.0.copyload, %.sroa.093.4.vec.extract99
  %i.age = select i1 %i.agc, i1 %i.agd, i1 false
  %i.agf = select i1 %i.age, float %.sroa.492.0.copyload, float %.sroa.093.4.vec.extract99
  br label %.sink.split1193

.sink.split1193:                                  ; preds = %bb.fr, %bb.fq
  %.sroa.093.4.vec.extract.sink = phi float [ %.sroa.093.4.vec.extract, %bb.fq ], [ %i.agf, %bb.fr ] ; 2 uses
  store float %.sroa.093.4.vec.extract.sink, ptr %.sroa.492.0..sroa_idx, align 4, !tbaa !1210
  br label %bb.fs

bb.fs:                                            ; preds = %.sink.split1193, %bb.fo
  %i.agg = phi float [ %.sroa.492.0.copyload, %bb.fo ], [ %.sroa.093.4.vec.extract.sink, %.sink.split1193 ]
  %.4 = phi i1 [ %.3, %bb.fo ], [ true, %.sink.split1193 ] ; 9 uses
  %i.agh = fcmp une float %.sroa.091.0.copyload, %i.afz
  %i.agi = fcmp une float %.sroa.492.0.copyload, %i.agg
  %or.cond1195 = select i1 %i.agh, i1 true, i1 %i.agi
  br i1 %or.cond1195, label %bb.ft, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit576

bb.ft:                                            ; preds = %bb.fs
  %i.agj = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %i.afr, i64 20
  %i.agl = load i32, ptr %i.agk, align 4, !tbaa !722
  %i.agm = and i32 %i.agl, 256
  %.not.i575 = icmp eq i32 %i.agm, 0
  br i1 %.not.i575, label %bb.fu, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit576

bb.fu:                                            ; preds = %bb.ft
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agj, i64 10068 ; 2 uses
  %i.ago = load float, ptr %i.agn, align 4, !tbaa !676
  %i.agp = fcmp ugt float %i.ago, 0.000000e+00
  br i1 %i.agp, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit576, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agj, i64 68
  %i.agr = load float, ptr %i.agq, align 4, !tbaa !904
  store float %i.agr, ptr %i.agn, align 4, !tbaa !676
  br label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit576

_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit576: ; preds = %bb.fs, %bb.fv, %bb.fu, %bb.ft
  %.val = load i64, ptr %i.afs, align 8
  %i.ags = call fastcc <2 x float> @_ZL29CalcWindowSizeAfterConstraintP11ImGuiWindowRK6ImVec2(ptr noundef nonnull %i.afr, i64 %.val) ; 3 uses
  %i.agt = load ptr, ptr %i.g, align 8, !tbaa !705 ; 9 uses
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agt, i64 56
  store <2 x float> %i.ags, ptr %i.agu, align 8
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agt, i64 207
  %i.agw = load i8, ptr %i.agv, align 1, !tbaa !721, !range !64, !noundef !204
  %i.agx = trunc nuw i8 %i.agw to i1
  %i.agy = select i1 %i.agx, i1 %.not462, i1 false
  br i1 %i.agy, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit576
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agt, i64 40
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agt, i64 104
  %i.ahb = load float, ptr %i.aha, align 8, !tbaa !909
  %i.ahc = load <2 x float>, ptr %i.agz, align 8  ; 2 uses
  %i.ahd = insertelement <2 x float> %i.ags, float %i.ahb, i64 1
  %i.ahe = fadd <2 x float> %i.ahd, %i.ahc
  %i.ahf = fsub <2 x float> %i.ahe, %i.ahc
  br label %bb.fx

bb.fx:                                            ; preds = %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit576, %bb.fw
  %.sroa.088.0 = phi <2 x float> [ %i.ahf, %bb.fw ], [ %i.ags, %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit576 ]
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.agt, i64 48
  store <2 x float> %.sroa.088.0, ptr %i.ahg, align 8
  br i1 %.0407.in962, label %bb.fy, label %bb.gb

bb.fy:                                            ; preds = %bb.fx
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.agt, i64 228
  store i32 -1, ptr %i.ahh, align 4, !tbaa !791
  br i1 %i.oy, label %bb.fz, label %bb.gb

bb.fz:                                            ; preds = %bb.fy
  %i.ahi = and i32 %.1403, 134217728
  %i.ahj = icmp ne i32 %i.ahi, 0
  %or.cond15 = or i1 %i.ahj, %.0421.shrunk
  br i1 %or.cond15, label %bb.gb, label %bb.ga

end_hunk_3
begin_hunk_4_@_ZN5ImGui5BeginEPKcPbi:bb.a
  %.sink1216 = phi i64 [ 336, %bb.jg ], [ 2336, %bb.jf ]
  %.sink1213 = phi i64 [ 384, %bb.jg ], [ 2384, %bb.jf ]
  %.sink1208 = phi i64 [ 368, %bb.jg ], [ 2368, %bb.jf ]
  %i.bdc = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 4 uses
  %i.bdd = getelementptr i8, ptr %i.bdc, i64 %.sink1219
  %i.bde = load float, ptr %i.bdd, align 4, !tbaa !997
  %i.bdf = getelementptr i8, ptr %i.bdc, i64 %.sink1216
  %i.bdg = load float, ptr %i.bdf, align 4, !tbaa !997
  %i.bdh = getelementptr i8, ptr %i.bdc, i64 %.sink1213
  %i.bdi = load float, ptr %i.bdh, align 4, !tbaa !997
  %i.bdj = fsub float %i.bde, %i.bdg
  %i.bdk = getelementptr i8, ptr %i.bdc, i64 %.sink1208
  %i.bdl = load float, ptr %i.bdk, align 4, !tbaa !997
  %i.bdm = fsub float %i.bdi, %i.bdl
  %.sroa.0.0.vec.insert.i733 = insertelement <2 x float> poison, float %i.bdj, i64 0
  %.sroa.0.4.vec.insert.i734 = insertelement <2 x float> %.sroa.0.0.vec.insert.i733, float %i.bdm, i64 1
  br label %.thread975

.thread975:                                       ; preds = %.thread975.sink.split, %bb.jf, %bb.jg
  %.sroa.0892.1 = phi <2 x float> [ zeroinitializer, %bb.jg ], [ zeroinitializer, %bb.jf ], [ %.sroa.0.4.vec.insert.i734, %.thread975.sink.split ] ; 3 uses
  %.sroa.0892.0.vec.extract = extractelement <2 x float> %.sroa.0892.1, i64 0
  %i.bdn = fcmp une float %.sroa.0892.0.vec.extract, 0.000000e+00
  %.sroa.0892.4.vec.extract = extractelement <2 x float> %.sroa.0892.1, i64 1
  %i.bdo = fcmp une float %.sroa.0892.4.vec.extract, 0.000000e+00
  %or.cond16.i = select i1 %i.bdn, i1 true, i1 %i.bdo
  br i1 %or.cond16.i, label %bb.jh, label %bb.jj

bb.jh:                                            ; preds = %.thread975
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.ani, i64 64
  %i.bdq = load float, ptr %i.bdp, align 8, !tbaa !912
  %i.bdr = fmul float %i.bdq, 6.000000e+02
  %i.bds = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bds, i64 4528
  %i.bdu = load float, ptr %i.bdt, align 8, !tbaa !479
  %i.bdv = fmul float %i.bdr, %i.bdu
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.ani, i64 8764 ; 5 uses
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.ani, i64 8748
  store i8 0, ptr %i.bdx, align 4, !tbaa !1049
  %i.bdy = getelementptr inbounds nuw i8, ptr %i.ani, i64 8217
  store i8 1, ptr %i.bdy, align 1, !tbaa !850
  %i.bdz = insertelement <2 x float> poison, float %i.bdv, i64 0
  %i.bea = shufflevector <2 x float> %i.bdz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.beb = fmul <2 x float> %.sroa.0892.1, %i.bea
  %i.bec = load <2 x float>, ptr %i.bdw, align 4, !tbaa !8
  %i.bed = fadd <2 x float> %i.bec, %i.beb        ; 3 uses
  store <2 x float> %i.bed, ptr %i.bdw, align 4, !tbaa !8
  %i.bee = load <2 x float>, ptr %i.alz, align 8, !tbaa !8
  %i.bef = fsub <2 x float> %i.avz, %i.bee
  %i.beg = load <2 x float>, ptr %i.avi, align 8, !tbaa !8
  %i.beh = fsub <2 x float> %i.bef, %i.beg        ; 2 uses
  %i.bei = fcmp oge <2 x float> %i.bed, %i.beh
  %i.bej = select <2 x i1> %i.bei, <2 x float> %i.bed, <2 x float> %i.beh ; 2 uses
  store <2 x float> %i.bej, ptr %i.bdw, align 4
  %i.bek = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 33, float noundef 1.000000e+00), !inline_history !1250
  store i32 %i.bek, ptr %i.i, align 16, !tbaa !205
  %i.bel = fptosi <2 x float> %i.bej to <2 x i32> ; 2 uses
  %i.bem = icmp ne <2 x i32> %i.bel, zeroinitializer ; 2 uses
  %i.ben = extractelement <2 x i1> %i.bem, i64 0
  %i.beo = extractelement <2 x i1> %i.bem, i64 1
  %or.cond19.i = select i1 %i.ben, i1 true, i1 %i.beo
  br i1 %or.cond19.i, label %bb.ji, label %bb.jj

bb.ji:                                            ; preds = %bb.jh
  %i.bep = sitofp <2 x i32> %i.bel to <2 x float> ; 2 uses
  %i.beq = getelementptr inbounds nuw i8, ptr %i.ake, i64 56
  %i.ber = load <2 x float>, ptr %i.beq, align 8, !tbaa !8
  %i.bes = fadd <2 x float> %i.ber, %i.bep
  %i.bet = bitcast <2 x float> %i.bes to i64
  %i.beu = call fastcc <2 x float> @_ZL29CalcWindowSizeAfterConstraintP11ImGuiWindowRK6ImVec2(ptr noundef nonnull %i.ake, i64 %i.bet), !inline_history !1250
  store <2 x float> %i.beu, ptr %21, align 8
  %i.bev = load <2 x float>, ptr %i.bdw, align 4, !tbaa !8
  %i.bew = fsub <2 x float> %i.bev, %i.bep
  store <2 x float> %i.bew, ptr %i.bdw, align 4, !tbaa !8
  br label %bb.jj

bb.jj:                                            ; preds = %.thread975, %bb.ji, %bb.jh, %bb.je, %_ZN5ImGui5PopIDEv.exit
  %.sroa.022.0.copyload.i = load float, ptr %i.alz, align 8, !tbaa !8 ; 4 uses
  %.sroa.423.0.copyload.i = load float, ptr %i.ama, align 4, !tbaa !8 ; 4 uses
  %i.bex = getelementptr inbounds nuw i8, ptr %i.ake, i64 56 ; 2 uses
  %.sroa.020.0.copyload.i = load float, ptr %i.bex, align 8, !tbaa !8 ; 4 uses
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ake, i64 60 ; 2 uses
  %.sroa.421.0.copyload.i = load float, ptr %.sroa.421.0..sroa_idx.i, align 4, !tbaa !8 ; 4 uses
  %i.bey = load float, ptr %21, align 8, !tbaa !227 ; 6 uses
  %i.bez = fcmp une float %i.bey, f0x7F7FFFFF
  br i1 %i.bez, label %bb.jk, label %bb.jm

bb.jk:                                            ; preds = %bb.jj
  %i.bfa = load float, ptr %i.avi, align 8, !tbaa !723
  %i.bfb = fcmp une float %i.bfa, %i.bey
  %i.bfc = fcmp une float %.sroa.020.0.copyload.i, %i.bey
  %or.cond250.i = select i1 %i.bfb, i1 true, i1 %i.bfc
  br i1 %or.cond250.i, label %bb.jl, label %bb.jm

bb.jl:                                            ; preds = %bb.jk
  store float %i.bey, ptr %i.bex, align 8, !tbaa !910
  store float %i.bey, ptr %i.avi, align 8, !tbaa !723
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %bb.jk, %bb.jj
  %i.bfd = phi float [ %i.bey, %bb.jl ], [ %.sroa.020.0.copyload.i, %bb.jk ], [ %.sroa.020.0.copyload.i, %bb.jj ]
  %i.bfe = load float, ptr %i.aox, align 4, !tbaa !228 ; 6 uses
  %i.bff = fcmp une float %i.bfe, f0x7F7FFFFF
  br i1 %i.bff, label %bb.jn, label %bb.jp

bb.jn:                                            ; preds = %bb.jm
  %i.bfg = load float, ptr %i.avj, align 4, !tbaa !724
  %i.bfh = fcmp une float %i.bfg, %i.bfe
  %i.bfi = fcmp une float %.sroa.421.0.copyload.i, %i.bfe
  %or.cond996 = select i1 %i.bfh, i1 true, i1 %i.bfi
  br i1 %or.cond996, label %bb.jo, label %bb.jp

bb.jo:                                            ; preds = %bb.jn
  store float %i.bfe, ptr %.sroa.421.0..sroa_idx.i, align 4, !tbaa !1210
  store float %i.bfe, ptr %i.avj, align 4, !tbaa !724
  br label %bb.jp

bb.jp:                                            ; preds = %bb.jn, %bb.jo, %bb.jm
  %i.bfj = phi float [ %.sroa.421.0.copyload.i, %bb.jn ], [ %i.bfe, %bb.jo ], [ %.sroa.421.0.copyload.i, %bb.jm ]
  %i.bfk = load float, ptr %20, align 8, !tbaa !227 ; 2 uses
  %i.bfl = fcmp une float %i.bfk, f0x7F7FFFFF
  br i1 %i.bfl, label %bb.jq, label %bb.js

bb.jq:                                            ; preds = %bb.jp
  %i.bfm = fptosi float %i.bfk to i32
  %i.bfn = sitofp i32 %i.bfm to float             ; 3 uses
  %i.bfo = fcmp une float %.sroa.022.0.copyload.i, %i.bfn
  br i1 %i.bfo, label %bb.jr, label %bb.js

bb.jr:                                            ; preds = %bb.jq
  store float %i.bfn, ptr %i.alz, align 8, !tbaa !870
  br label %bb.js

bb.js:                                            ; preds = %bb.jr, %bb.jq, %bb.jp
  %i.bfp = phi float [ %i.bfn, %bb.jr ], [ %.sroa.022.0.copyload.i, %bb.jq ], [ %.sroa.022.0.copyload.i, %bb.jp ]
  %i.bfq = load float, ptr %i.aow, align 4, !tbaa !228 ; 2 uses
  %i.bfr = fcmp une float %i.bfq, f0x7F7FFFFF
  br i1 %i.bfr, label %bb.jt, label %bb.jv

bb.jt:                                            ; preds = %bb.js
  %i.bfs = fptosi float %i.bfq to i32
  %i.bft = sitofp i32 %i.bfs to float             ; 3 uses
  %i.bfu = fcmp une float %.sroa.423.0.copyload.i, %i.bft
  br i1 %i.bfu, label %bb.ju, label %bb.jv

bb.ju:                                            ; preds = %bb.jt
  store float %i.bft, ptr %i.ama, align 4, !tbaa !929
  br label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %bb.jt, %bb.js
  %i.bfv = phi float [ %i.bft, %bb.ju ], [ %.sroa.423.0.copyload.i, %bb.jt ], [ %.sroa.423.0.copyload.i, %bb.js ]
  %i.bfw = fcmp une float %.sroa.022.0.copyload.i, %i.bfp
  %i.bfx = fcmp une float %.sroa.423.0.copyload.i, %i.bfv
  %or.cond1220 = select i1 %i.bfw, i1 true, i1 %i.bfx
  %i.bfy = fcmp une float %.sroa.020.0.copyload.i, %i.bfd
  %or.cond1221 = select i1 %or.cond1220, i1 true, i1 %i.bfy
  %i.bfz = fcmp une float %.sroa.421.0.copyload.i, %i.bfj
  %or.cond1222 = select i1 %or.cond1221, i1 true, i1 %i.bfz
  br i1 %or.cond1222, label %bb.jw, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit713

bb.jw:                                            ; preds = %bb.jv
  %i.bga = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.bgb = load i32, ptr %i.anj, align 4, !tbaa !722
  %i.bgc = and i32 %i.bgb, 256
  %.not.i712 = icmp eq i32 %i.bgc, 0
  br i1 %.not.i712, label %bb.jx, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit713

bb.jx:                                            ; preds = %bb.jw
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.bga, i64 10068 ; 2 uses
  %i.bge = load float, ptr %i.bgd, align 4, !tbaa !676
  %i.bgf = fcmp ugt float %i.bge, 0.000000e+00
  br i1 %i.bgf, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit713, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.bga, i64 68
  %i.bgh = load float, ptr %i.bgg, align 4, !tbaa !904
  store float %i.bgh, ptr %i.bgd, align 4, !tbaa !676
  br label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit713

_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit713: ; preds = %bb.jv, %bb.jy, %bb.jx, %bb.jw
  %.not242.i = icmp eq i32 %.3954, -1
  br i1 %.not242.i, label %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit, label %bb.jz

bb.jz:                                            ; preds = %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit713
  %i.bgi = load float, ptr %i.aom, align 4, !tbaa !642
  %i.bgj = call fastcc { <2 x float>, <2 x float> } @_ZL19GetResizeBorderRectP11ImGuiWindowiff(ptr noundef nonnull %i.ake, i32 noundef %.3954, float noundef %i.aol, float noundef %i.bgi), !inline_history !1250 ; 2 uses
  %i.bgk = extractvalue { <2 x float>, <2 x float> } %i.bgj, 0
  %i.bgl = extractvalue { <2 x float>, <2 x float> } %i.bgj, 1
  store <2 x float> %i.bgk, ptr %i.avt, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ani, i64 9816
  store <2 x float> %i.bgl, ptr %.sroa.4.0..sroa_idx.i, align 8
  br label %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit

_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit: ; preds = %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit713, %bb.jz
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #41
  %.not483 = icmp eq i32 %.5.i, 0
  br i1 %.not483, label %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit.thread, label %bb.ka

bb.ka:                                            ; preds = %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit
  %.not484 = trunc i32 %.5.i to i1
  %spec.select530 = or i1 %.1413, %.not484
  %.not485 = icmp ne i32 %.5.i, 1
  %spec.select547 = or i1 %.4, %.not485
  br label %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit.thread

_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit.thread: ; preds = %bb.he, %bb.ha, %bb.hb, %bb.hd, %bb.gz, %bb.ka, %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit, %bb.gy, %bb.gx
  %.0956 = phi i32 [ -1, %bb.gy ], [ %.3959, %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit ], [ %.3959, %bb.ka ], [ -1, %bb.gx ], [ -1, %bb.gz ], [ -1, %bb.hd ], [ -1, %bb.hb ], [ -1, %bb.ha ], [ -1, %bb.he ]
  %.0951 = phi i32 [ -1, %bb.gy ], [ %.3954, %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit ], [ %.3954, %bb.ka ], [ -1, %bb.gx ], [ -1, %bb.gz ], [ -1, %bb.hd ], [ -1, %bb.hb ], [ -1, %bb.ha ], [ -1, %bb.he ]
  %.4416 = phi i1 [ %.1413, %bb.gy ], [ %.1413, %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit ], [ %spec.select530, %bb.ka ], [ %.1413, %bb.gx ], [ %.1413, %bb.gz ], [ %.1413, %bb.hd ], [ %.1413, %bb.hb ], [ %.1413, %bb.ha ], [ %.1413, %bb.he ]
  %.6 = phi i1 [ %.4, %bb.gy ], [ %.4, %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit ], [ %spec.select547, %bb.ka ], [ %.4, %bb.gx ], [ %.4, %bb.gz ], [ %.4, %bb.hd ], [ %.4, %bb.hb ], [ %.4, %bb.ha ], [ %.4, %bb.he ]
  %i.bgm = trunc i32 %.0956 to i8
  %i.bgn = load ptr, ptr %i.g, align 8, !tbaa !705 ; 40 uses
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.bgn, i64 216
  store i8 %i.bgm, ptr %i.bgo, align 8, !tbaa !1256
  %i.bgp = trunc i32 %.0951 to i8
  %i.bgq = getelementptr inbounds nuw i8, ptr %i.bgn, i64 217
  store i8 %i.bgp, ptr %i.bgq, align 1, !tbaa !1257
  %i.bgr = getelementptr inbounds nuw i8, ptr %i.bgn, i64 207
  %i.bgs = load i8, ptr %i.bgr, align 1, !tbaa !721, !range !64, !noundef !204
  %i.bgt = trunc nuw i8 %i.bgs to i1
  br i1 %i.bgt, label %_Z7ImClampRK6ImVec2S1_S1_.exit.i, label %bb.kb

bb.kb:                                            ; preds = %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit.thread
  %i.bgu = getelementptr inbounds nuw i8, ptr %i.bgn, i64 56
  %i.bgv = load float, ptr %i.bgu, align 8, !tbaa !910
  %i.bgw = getelementptr inbounds nuw i8, ptr %i.bgn, i64 60
  %i.bgx = load float, ptr %i.bgw, align 4, !tbaa !1210
  %i.bgy = getelementptr inbounds nuw i8, ptr %i.bgn, i64 116
  %i.bgz = load float, ptr %i.bgy, align 4, !tbaa !1245
  %i.bha = getelementptr inbounds nuw i8, ptr %i.bgn, i64 124 ; 2 uses
  %i.bhb = load float, ptr %i.bha, align 4, !tbaa !1258 ; 2 uses
  %i.bhc = fadd float %i.bgz, %i.bhb
  %i.bhd = fsub float %i.bgx, %i.bhc
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bgn, i64 552
  %i.bhf = getelementptr inbounds nuw i8, ptr %i.bgn, i64 560
  %i.bhg = load <2 x float>, ptr %i.bhf, align 8, !tbaa !8
  %i.bhh = load <2 x float>, ptr %i.bhe, align 8, !tbaa !8
  %i.bhi = fsub <2 x float> %i.bhg, %i.bhh
  %i.bhj = fadd <2 x float> %i.aeq, %i.bhi        ; 2 uses
  br i1 %i.eg, label %bb.kd, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.bhk = getelementptr inbounds nuw i8, ptr %i.bgn, i64 64
  %i.bhl = getelementptr inbounds nuw i8, ptr %i.bgn, i64 88
  %i.bhm = load <2 x float>, ptr %i.bhl, align 8, !tbaa !8
  %i.bhn = fmul <2 x float> %i.bhm, splat (float 2.000000e+00)
  %i.bho = load <2 x float>, ptr %i.bhk, align 8, !tbaa !8
  %i.bhp = fadd <2 x float> %i.bhn, %i.bho
  br label %bb.kd

bb.kd:                                            ; preds = %bb.kb, %bb.kc
  %.sroa.0824.0 = phi <2 x float> [ %i.bhp, %bb.kc ], [ zeroinitializer, %bb.kb ] ; 3 uses
  %i.bhq = extractelement <2 x float> %i.bhj, i64 0
  %i.bhr = select i1 %.4416, float %i.bgv, float %i.bhq
  %i.bhs = extractelement <2 x float> %i.bhj, i64 1
  %i.bht = select i1 %.6, float %i.bhd, float %i.bhs ; 2 uses
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.bgn, i64 200 ; 3 uses
  %i.bhv = load i8, ptr %i.bhu, align 8, !tbaa !1090, !range !64, !noundef !204
  %i.bhw = and i32 %.1403, 16384
  %.not486 = icmp eq i32 %i.bhw, 0
  br i1 %.not486, label %bb.ke, label %bb.kg

bb.ke:                                            ; preds = %bb.kd
  %.sroa.0824.4.vec.extract = extractelement <2 x float> %.sroa.0824.0, i64 1
  %i.bhx = fcmp ogt float %.sroa.0824.4.vec.extract, %i.bht
  br i1 %i.bhx, label %bb.kf, label %bb.kg

bb.kf:                                            ; preds = %bb.ke
  %i.bhy = and i32 %.1403, 8
  %.not487 = icmp eq i32 %i.bhy, 0
  %i.bhz = zext i1 %.not487 to i8
  br label %bb.kg

bb.kg:                                            ; preds = %bb.ke, %bb.kf, %bb.kd
  %i.bia = phi i8 [ 1, %bb.kd ], [ 0, %bb.ke ], [ %i.bhz, %bb.kf ] ; 4 uses
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bgn, i64 201 ; 2 uses
  store i8 %i.bia, ptr %i.bib, align 1, !tbaa !1259
  %i.bic = and i32 %.1403, 32768
  %.not488 = icmp eq i32 %i.bic, 0
  br i1 %.not488, label %bb.kh, label %bb.kl

bb.kh:                                            ; preds = %bb.kg
  %.sroa.0824.0.vec.extract = extractelement <2 x float> %.sroa.0824.0, i64 0
  %i.bid = trunc nuw i8 %i.bia to i1
  br i1 %i.bid, label %bb.ki, label %bb.kj

bb.ki:                                            ; preds = %bb.kh
  %i.bie = getelementptr inbounds nuw i8, ptr %i.j, i64 3340
  %i.bif = load float, ptr %i.bie, align 4, !tbaa !1260
  br label %bb.kj

bb.kj:                                            ; preds = %bb.kh, %bb.ki
  %i.big = phi float [ %i.bif, %bb.ki ], [ 0.000000e+00, %bb.kh ]
  %i.bih = fsub float %i.bhr, %i.big
  %i.bii = fcmp ogt float %.sroa.0824.0.vec.extract, %i.bih
  %i.bij = and i32 %.1403, 8
  %.not489 = icmp eq i32 %i.bij, 0
  %or.cond531 = select i1 %i.bii, i1 %.not489, i1 false
  br i1 %or.cond531, label %bb.kk, label %bb.kl

bb.kk:                                            ; preds = %bb.kj
  %i.bik = lshr i32 %.1403, 11
  %i.bil = trunc i32 %i.bik to i8
  %i.bim = and i8 %i.bil, 1
  br label %bb.kl

bb.kl:                                            ; preds = %bb.kj, %bb.kk, %bb.kg
  %i.bin = phi i8 [ 1, %bb.kg ], [ %i.bim, %bb.kk ], [ 0, %bb.kj ] ; 4 uses
  store i8 %i.bin, ptr %i.bhu, align 8, !tbaa !1090
  %i.bio = getelementptr inbounds nuw i8, ptr %i.bgn, i64 203 ; 2 uses
  %i.bip = load i8, ptr %i.bio, align 1, !tbaa !1261
  %i.biq = shl i8 %i.bip, 1
  %.not491 = icmp ne i8 %i.bhv, %i.bin
  %i.bir = zext i1 %.not491 to i8
  %i.bis = or disjoint i8 %i.biq, %i.bir          ; 3 uses
  store i8 %i.bis, ptr %i.bio, align 1, !tbaa !1261
  %.not492 = icmp eq i8 %i.bis, 0
  br i1 %.not492, label %.thread981, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.bit = zext i8 %i.bis to i32
  br label %.lr.ph.i624

.lr.ph.i624:                                      ; preds = %bb.km, %.lr.ph.i624
  %.08.i = phi i32 [ %i.biw, %.lr.ph.i624 ], [ 0, %bb.km ]
  %.057.i = phi i32 [ %i.biv, %.lr.ph.i624 ], [ %i.bit, %bb.km ] ; 2 uses
  %i.biu = add nsw i32 %.057.i, -1
  %i.biv = and i32 %i.biu, %.057.i                ; 2 uses
  %i.biw = add i32 %.08.i, 1                      ; 2 uses
  %.not.i625 = icmp eq i32 %i.biv, 0
  br i1 %.not.i625, label %bb.kn, label %.lr.ph.i624, !llvm.loop !1262

bb.kn:                                            ; preds = %.lr.ph.i624
  %i.bix = icmp ugt i32 %i.biw, 3
  br i1 %i.bix, label %bb.ko, label %.thread981

bb.ko:                                            ; preds = %bb.kn
  store i8 1, ptr %i.bhu, align 8, !tbaa !1090
  br label %.thread981

.thread981:                                       ; preds = %bb.kl, %bb.ko, %bb.kn
  %i.biy = phi i8 [ %i.bin, %bb.kn ], [ 1, %bb.ko ], [ %i.bin, %bb.kl ]
  %i.biz = phi i8 [ 0, %bb.kn ], [ 1, %bb.ko ], [ 0, %bb.kl ]
  %i.bja = getelementptr inbounds nuw i8, ptr %i.bgn, i64 202
  store i8 %i.biz, ptr %i.bja, align 2, !tbaa !1263
  %i.bjb = trunc nuw i8 %i.biy to i1              ; 2 uses
  %.not997 = xor i1 %i.bjb, true
  %i.bjc = trunc nuw i8 %i.bia to i1
  %or.cond998 = select i1 %.not997, i1 true, i1 %i.bjc
  br i1 %or.cond998, label %bb.kq, label %bb.kp

bb.kp:                                            ; preds = %.thread981
  %.sroa.0824.4.vec.extract827 = extractelement <2 x float> %.sroa.0824.0, i64 1
  %i.bjd = getelementptr inbounds nuw i8, ptr %i.j, i64 3340
  %i.bje = load float, ptr %i.bjd, align 4, !tbaa !1260
  %i.bjf = fsub float %i.bht, %i.bje
  %i.bjg = fcmp ogt float %.sroa.0824.4.vec.extract827, %i.bjf
  %i.bjh = and i32 %.1403, 8
  %.not493 = icmp eq i32 %i.bjh, 0
  %narrow = select i1 %i.bjg, i1 %.not493, i1 false
  %i.bji = zext i1 %narrow to i8                  ; 2 uses
  store i8 %i.bji, ptr %i.bib, align 1, !tbaa !1259
  br label %bb.kq

bb.kq:                                            ; preds = %bb.kp, %.thread981
  %i.bjj = phi i8 [ %i.bji, %bb.kp ], [ %i.bia, %.thread981 ]
  %i.bjk = trunc nuw i8 %i.bjj to i1
  br i1 %i.bjk, label %bb.kr, label %bb.ks

bb.kr:                                            ; preds = %bb.kq
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.j, i64 3340
  %i.bjm = load float, ptr %i.bjl, align 4, !tbaa !1260
  br label %bb.ks

bb.ks:                                            ; preds = %bb.kq, %bb.kr
  %.cast = phi float [ %i.bjm, %bb.kr ], [ 0.000000e+00, %bb.kq ] ; 2 uses
  br i1 %i.bjb, label %bb.kt, label %bb.ku

bb.kt:                                            ; preds = %bb.ks
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.j, i64 3340
  %i.bjo = load float, ptr %i.bjn, align 4, !tbaa !1260
  br label %bb.ku

bb.ku:                                            ; preds = %bb.ks, %bb.kt
  %.cast1006 = phi float [ %i.bjo, %bb.kt ], [ 0.000000e+00, %bb.ks ] ; 2 uses
  %i.bjp = getelementptr inbounds nuw i8, ptr %i.bgn, i64 192
  store float %.cast, ptr %i.bjp, align 8
  %.sroa_idx820 = getelementptr inbounds nuw i8, ptr %i.bgn, i64 196
  store float %.cast1006, ptr %.sroa_idx820, align 4
  %i.bjq = getelementptr inbounds nuw i8, ptr %i.bgn, i64 120 ; 2 uses
  %i.bjr = load float, ptr %i.bjq, align 8, !tbaa !1264
  %i.bjs = fadd float %.cast, %i.bjr
  store float %i.bjs, ptr %i.bjq, align 8, !tbaa !1264
  %i.bjt = fadd float %i.bhb, %.cast1006
  store float %i.bjt, ptr %i.bha, align 4, !tbaa !1258
  br label %_Z7ImClampRK6ImVec2S1_S1_.exit.i

_Z7ImClampRK6ImVec2S1_S1_.exit.i:                 ; preds = %bb.ku, %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #41
  %or.cond29 = or i1 %i.wf, %i.oy
  %or.cond532 = select i1 %.not462, i1 true, i1 %or.cond29 ; 2 uses
  %i.bju = getelementptr inbounds nuw i8, ptr %i.kb, i64 616
  %i.bjv = select i1 %or.cond532, ptr %28, ptr %i.bju
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 4 dereferenceable(16) %i.bjv, i64 16, i1 false), !tbaa.struct !419
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.bgn, i64 40
  %i.bjx = getelementptr inbounds nuw i8, ptr %i.bgn, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #41
  %i.bjy = getelementptr inbounds nuw i8, ptr %i.bgn, i64 56
  %i.bjz = load float, ptr %i.bjy, align 8, !tbaa !910
  %i.bka = getelementptr inbounds nuw i8, ptr %i.bgn, i64 104
end_hunk_4
begin_hunk_5_@_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj:bb.a
_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit: ; preds = %bb.d, %.split.i.i
  %.0.i = phi i32 [ %0, %bb.d ], [ %spec.select.i.i, %.split.i.i ]
  %i.t = sext i32 %.0.i to i64
  %i.u = getelementptr [12 x i8], ptr %i.f, i64 %i.t ; 3 uses
  %i.v = icmp eq i32 %1, 0
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit
  %i.w = getelementptr i8, ptr %i.u, i64 -572
  %i.x = load i8, ptr %i.w, align 4, !tbaa !624, !range !64, !noundef !204
  %i.y = icmp eq i8 %i.x, 0
  br label %_ZN5ImGui15IsNamedKeyOrModE8ImGuiKey.exit

bb.f:                                             ; preds = %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit
  %i.z = getelementptr i8, ptr %i.u, i64 -580
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !622 ; 2 uses
  %.not = icmp eq i32 %i.aa, %1
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr i8, ptr %i.u, i64 -572
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !624, !range !64, !noundef !204
  %i.ad = trunc nuw i8 %i.ac to i1
  %.not20 = icmp ne i32 %i.aa, -1
  %or.cond23.not = or i1 %.not20, %i.ad
  br i1 %or.cond23.not, label %_ZN5ImGui15IsNamedKeyOrModE8ImGuiKey.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br label %_ZN5ImGui15IsNamedKeyOrModE8ImGuiKey.exit

_ZN5ImGui15IsNamedKeyOrModE8ImGuiKey.exit:        ; preds = %switch.early.test.split.i, %switch.early.test.i, %bb.c, %bb.g, %bb.h, %bb.e
  %.2 = phi i1 [ false, %bb.g ], [ false, %bb.c ], [ %i.y, %bb.e ], [ true, %bb.h ], [ true, %switch.early.test.i ], [ true, %switch.early.test.split.i ]
  ret i1 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #24 {
bb.a:
  %i.a = zext i1 %1 to i32
  %i.b = tail call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyij(i32 noundef %0, i32 noundef %i.a, i32 noundef 0)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyij(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 14 uses
  %i.b = and i32 %0, 61440
  %.not.i.i = icmp ne i32 %i.b, 0
  %i.c = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %0)
  %i.d = icmp eq i32 %i.c, 1                      ; 2 uses
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.d, i1 false ; 3 uses
  br i1 %or.cond.i.i, label %.split.i.i.i, label %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit

.split.i.i.i:                                     ; preds = %bb.a
  %i.e = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %0, i1 true) ; 2 uses
  %i.f = and i32 %i.e, 28
  %i.g = icmp eq i32 %i.f, 12
  %switch.offset.i.i.i = add nuw nsw i32 %i.e, 651
  %spec.select.i.i.i = select i1 %i.g, i32 %switch.offset.i.i.i, i32 %0
  br label %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit

_ZN5ImGui10GetKeyDataE8ImGuiKey.exit:             ; preds = %bb.a, %.split.i.i.i
  %.0.i.i = phi i32 [ %0, %bb.a ], [ %spec.select.i.i.i, %.split.i.i.i ]
  %i.h = sext i32 %.0.i.i to i64
  %i.i = getelementptr [16 x i8], ptr %i.a, i64 %i.h ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -7884
  %i.k = load i8, ptr %i.j, align 4, !tbaa !208, !range !64, !noundef !204
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit

bb.b:                                             ; preds = %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit
  %i.m = getelementptr i8, ptr %i.i, i64 -7880
  %i.n = load float, ptr %i.m, align 4, !tbaa !1008 ; 4 uses
  %i.o = fcmp olt float %i.n, 0.000000e+00
  br i1 %i.o, label %_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = fcmp oeq float %i.n, 0.000000e+00        ; 2 uses
  %i.q = and i32 %1, 255
  %spec.select.narrow.not = icmp eq i32 %i.q, 0
  %or.cond = or i1 %spec.select.narrow.not, %i.p
  br i1 %or.cond, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = and i32 %1, 14
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 164
  %i.t = load float, ptr %i.s, align 4, !tbaa !911 ; 3 uses
  switch i32 %i.r, label %bb.g [
    i32 4, label %bb.e
    i32 8, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.u = fmul float %i.t, 7.200000e-01
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.w = load float, ptr %i.v, align 8, !tbaa !913
  %i.x = fmul float %i.w, 8.000000e-01
  br label %_ZN5ImGui22GetTypematicRepeatRateEiPfS0_.exit

bb.f:                                             ; preds = %bb.d
  %i.y = fmul float %i.t, 7.200000e-01
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.aa = load float, ptr %i.z, align 8, !tbaa !913
  %i.ab = fmul float %i.aa, 3.000000e-01
  br label %_ZN5ImGui22GetTypematicRepeatRateEiPfS0_.exit

bb.g:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !913
  br label %_ZN5ImGui22GetTypematicRepeatRateEiPfS0_.exit

_ZN5ImGui22GetTypematicRepeatRateEiPfS0_.exit:    ; preds = %bb.e, %bb.f, %bb.g
  %.048 = phi float [ %i.t, %bb.g ], [ %i.u, %bb.e ], [ %i.y, %bb.f ] ; 5 uses
  %.sink.i = phi float [ %i.ad, %bb.g ], [ %i.x, %bb.e ], [ %i.ab, %bb.f ] ; 2 uses
  %i.ae = fcmp ogt float %i.n, %.048
  br i1 %i.ae, label %bb.h, label %_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit

bb.h:                                             ; preds = %_ZN5ImGui22GetTypematicRepeatRateEiPfS0_.exit
  br i1 %or.cond.i.i, label %.split.i.i.i.i, label %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i

.split.i.i.i.i:                                   ; preds = %bb.h
  %i.af = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %0, i1 true) ; 2 uses
  %i.ag = and i32 %i.af, 28
  %i.ah = icmp eq i32 %i.ag, 12
  %switch.offset.i.i.i.i = add nuw nsw i32 %i.af, 651
  %spec.select.i.i.i.i = select i1 %i.ah, i32 %switch.offset.i.i.i.i, i32 %0
  br label %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i

_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i:           ; preds = %.split.i.i.i.i, %bb.h
  %.0.i.i.i = phi i32 [ %0, %bb.h ], [ %spec.select.i.i.i.i, %.split.i.i.i.i ]
  %i.ai = sext i32 %.0.i.i.i to i64
  %i.aj = getelementptr [16 x i8], ptr %i.a, i64 %i.ai ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 -7884
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !208, !range !64, !noundef !204
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.i, label %_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit

bb.i:                                             ; preds = %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i
  %i.an = getelementptr i8, ptr %i.aj, i64 -7880
  %i.ao = load float, ptr %i.an, align 4, !tbaa !1008 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !912
  %i.ar = fsub float %i.ao, %i.aq                 ; 3 uses
  %i.as = fcmp oeq float %i.ao, 0.000000e+00
  br i1 %i.as, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = fcmp ult float %i.ar, %i.ao
  br i1 %i.at, label %bb.k, label %_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit

bb.k:                                             ; preds = %bb.j
  %i.au = fcmp ugt float %.sink.i, 0.000000e+00
  %i.av = fcmp olt float %i.ar, %.048             ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = fcmp oge float %i.ao, %.048
  %i.ax = and i1 %i.aw, %i.av
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ay = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.az = insertelement <2 x float> %i.ay, float %i.ar, i64 1
  %i.ba = insertelement <2 x float> poison, float %.048, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = fsub <2 x float> %i.az, %i.bb
  %i.bd = fcmp olt float %i.ao, %.048
  %i.be = insertelement <2 x float> poison, float %.sink.i, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = fdiv <2 x float> %i.bc, %i.bf
  %i.bh = fptosi <2 x float> %i.bg to <2 x i32>
  %i.bi = insertelement <2 x i1> poison, i1 %i.bd, i64 0
  %i.bj = insertelement <2 x i1> %i.bi, i1 %i.av, i64 1
  %i.bk = select <2 x i1> %i.bj, <2 x i32> splat (i32 -1), <2 x i32> %i.bh ; 2 uses
  %shift = shufflevector <2 x i32> %i.bk, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.bl = icmp sgt <2 x i32> %i.bk, %shift
  %i.bm = extractelement <2 x i1> %i.bl, i64 0
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.i
  %.0.i = phi i1 [ %i.ax, %bb.l ], [ %i.bm, %bb.m ], [ true, %bb.i ] ; 2 uses
  %i.bn = and i32 %1, 240
  %.not35 = icmp ne i32 %i.bn, 0
  %or.cond40.not = and i1 %.not35, %.0.i
  br i1 %or.cond40.not, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !487
  %i.bq = fpext float %i.n to double
  %i.br = fsub double %i.bp, %i.bq
  %i.bs = fadd double %i.br, f0x3EE4F8B580000000  ; 3 uses
  %i.bt = and i32 %1, 32
  %.not36 = icmp eq i32 %i.bt, 0
  br i1 %.not36, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 5520
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !1005
  %3 = fcmp ogt double %i.bv, %i.bs
  br i1 %3, label %4, label %bb.q

4:                                                ; preds = %bb.p
  br label %bb.q

bb.q:                                             ; preds = %4, %bb.p, %bb.o
  %.0 = phi i1 [ false, %4 ], [ true, %bb.p ], [ true, %bb.o ] ; 2 uses
  %i.bw = and i32 %1, 64
  %.not37 = icmp eq i32 %i.bw, 0
  br i1 %.not37, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 5528
  %i.by = load double, ptr %i.bx, align 8, !tbaa !1006
  %5 = fcmp ogt double %i.by, %i.bs
  br i1 %5, label %6, label %bb.s

6:                                                ; preds = %bb.r
  br label %bb.s

bb.s:                                             ; preds = %6, %bb.r, %bb.q
  %.1 = phi i1 [ false, %6 ], [ %.0, %bb.r ], [ %.0, %bb.q ] ; 2 uses
  %i.bz = and i32 %1, 128
  %.not38 = icmp eq i32 %i.bz, 0
  br i1 %.not38, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 5536
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !648
  %7 = fcmp ogt double %i.cb, %i.bs
  br i1 %7, label %_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit, label %bb.u

bb.u:                                             ; preds = %bb.n, %bb.t, %bb.s, %bb.c
  %.4 = phi i1 [ %i.p, %bb.c ], [ %.0.i, %bb.n ], [ %.1, %bb.s ], [ %.1, %bb.t ]
  br i1 %.4, label %bb.v, label %_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit

bb.v:                                             ; preds = %bb.u
  %i.cc = add i32 %0, -512                        ; 2 uses
  %or.cond.i.i41 = icmp ult i32 %i.cc, 155
  br i1 %or.cond.i.i41, label %bb.w, label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %bb.v
  br i1 %i.d, label %switch.early.test.split.i.i, label %_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit

switch.early.test.split.i.i:                      ; preds = %switch.early.test.i.i
  %i.cd = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %0, i1 true)
  %i.ce = and i32 %i.cd, 28
  %switch.i.i = icmp eq i32 %i.ce, 12
  br i1 %switch.i.i, label %bb.w, label %_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit

bb.w:                                             ; preds = %switch.early.test.split.i.i, %bb.v
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 7772
  %i.cg = load i8, ptr %i.cf, align 4, !tbaa !650, !range !64, !noundef !204
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 5428
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !819
  %i.ck = icmp ne i32 %2, %i.cj
  %i.cl = icmp ne i32 %2, 0
  %or.cond.i = and i1 %i.cl, %i.ck
  %or.cond3.i = icmp ult i32 %i.cc, 120
  %or.cond21.i = and i1 %or.cond3.i, %or.cond.i
  br i1 %or.cond21.i, label %_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  br i1 %or.cond.i.i, label %.split.i.i.i44, label %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i

.split.i.i.i44:                                   ; preds = %bb.y
  %i.cm = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %0, i1 true) ; 2 uses
  %i.cn = and i32 %i.cm, 28
  %i.co = icmp eq i32 %i.cn, 12
  %switch.offset.i.i.i45 = add nuw nsw i32 %i.cm, 651
  %spec.select.i.i.i46 = select i1 %i.co, i32 %switch.offset.i.i.i45, i32 %0
  br label %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i

_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i: ; preds = %.split.i.i.i44, %bb.y
  %.0.i.i43 = phi i32 [ %0, %bb.y ], [ %spec.select.i.i.i46, %.split.i.i.i44 ]
  %i.cp = sext i32 %.0.i.i43 to i64
  %i.cq = getelementptr [12 x i8], ptr %i.a, i64 %i.cp ; 3 uses
  %i.cr = icmp eq i32 %2, 0
  br i1 %i.cr, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i
  %i.cs = getelementptr i8, ptr %i.cq, i64 -572
  %i.ct = load i8, ptr %i.cs, align 4, !tbaa !624, !range !64, !noundef !204
  %i.cu = icmp eq i8 %i.ct, 0
  br label %_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit

bb.aa:                                            ; preds = %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i
  %i.cv = getelementptr i8, ptr %i.cq, i64 -580
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !622 ; 2 uses
  %.not.i = icmp eq i32 %i.cw, %2
  br i1 %.not.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cx = getelementptr i8, ptr %i.cq, i64 -572
  %i.cy = load i8, ptr %i.cx, align 4, !tbaa !624, !range !64, !noundef !204
  %i.cz = trunc nuw i8 %i.cy to i1
  %.not20.i = icmp ne i32 %i.cw, -1
  %or.cond23.not.i = or i1 %.not20.i, %i.cz
  br i1 %or.cond23.not.i, label %_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  br label %_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit

_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit:          ; preds = %bb.t, %bb.j, %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i, %_ZN5ImGui22GetTypematicRepeatRateEiPfS0_.exit, %bb.ac, %bb.ab, %bb.z, %bb.x, %switch.early.test.split.i.i, %switch.early.test.i.i, %bb.b, %bb.u, %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit
  %.230 = phi i1 [ false, %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit ], [ false, %bb.b ], [ false, %bb.u ], [ true, %switch.early.test.split.i.i ], [ false, %bb.ab ], [ false, %bb.x ], [ %i.cu, %bb.z ], [ true, %bb.ac ], [ true, %switch.early.test.i.i ], [ false, %_ZN5ImGui22GetTypematicRepeatRateEiPfS0_.exit ], [ false, %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i ], [ false, %bb.j ], [ false, %bb.t ]
  ret i1 %.230
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN5ImGui13IsKeyReleasedE8ImGuiKey(i32 noundef %0) local_unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.b = and i32 %0, 61440
  %.not.i.i.i = icmp ne i32 %i.b, 0
  %i.c = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %0)
  %i.d = icmp eq i32 %i.c, 1                      ; 2 uses
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %i.d, i1 false ; 2 uses
  br i1 %or.cond.i.i.i, label %.split.i.i.i.i, label %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i

.split.i.i.i.i:                                   ; preds = %bb.a
  %i.e = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %0, i1 true) ; 2 uses
  %i.f = and i32 %i.e, 28
  %i.g = icmp eq i32 %i.f, 12
  %switch.offset.i.i.i.i = add nuw nsw i32 %i.e, 651
  %spec.select.i.i.i.i = select i1 %i.g, i32 %switch.offset.i.i.i.i, i32 %0
  br label %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i

_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i:           ; preds = %.split.i.i.i.i, %bb.a
  %.0.i.i.i = phi i32 [ %0, %bb.a ], [ %spec.select.i.i.i.i, %.split.i.i.i.i ]
  %i.h = sext i32 %.0.i.i.i to i64
  %i.i = getelementptr [16 x i8], ptr %i.a, i64 %i.h ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -7876
  %i.k = load float, ptr %i.j, align 4, !tbaa !1009
  %i.l = fcmp olt float %i.k, 0.000000e+00
  br i1 %i.l, label %_ZN5ImGui13IsKeyReleasedE8ImGuiKeyj.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i
  %i.m = getelementptr i8, ptr %i.i, i64 -7884
  %i.n = load i8, ptr %i.m, align 4, !tbaa !208, !range !64, !noundef !204
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN5ImGui13IsKeyReleasedE8ImGuiKeyj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = add i32 %0, -512
  %or.cond.i.i5.i = icmp ult i32 %i.p, 155
  br i1 %or.cond.i.i5.i, label %bb.d, label %switch.early.test.i.i.i

switch.early.test.i.i.i:                          ; preds = %bb.c
  br i1 %i.d, label %switch.early.test.split.i.i.i, label %_ZN5ImGui13IsKeyReleasedE8ImGuiKeyj.exit

switch.early.test.split.i.i.i:                    ; preds = %switch.early.test.i.i.i
  %i.q = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %0, i1 true)
  %i.r = and i32 %i.q, 28
  %switch.i.i.i = icmp eq i32 %i.r, 12
  br i1 %switch.i.i.i, label %bb.d, label %_ZN5ImGui13IsKeyReleasedE8ImGuiKeyj.exit

bb.d:                                             ; preds = %switch.early.test.split.i.i.i, %bb.c
  br i1 %or.cond.i.i.i, label %.split.i.i.i8.i, label %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i.i

.split.i.i.i8.i:                                  ; preds = %bb.d
  %i.s = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %0, i1 true) ; 2 uses
  %i.t = and i32 %i.s, 28
  %i.u = icmp eq i32 %i.t, 12
  %switch.offset.i.i.i9.i = add nuw nsw i32 %i.s, 651
  %spec.select.i.i.i10.i = select i1 %i.u, i32 %switch.offset.i.i.i9.i, i32 %0
  br label %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i.i

_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i.i: ; preds = %.split.i.i.i8.i, %bb.d
  %.0.i.i7.i = phi i32 [ %0, %bb.d ], [ %spec.select.i.i.i10.i, %.split.i.i.i8.i ]
  %i.v = sext i32 %.0.i.i7.i to i64
  %i.w = getelementptr [12 x i8], ptr %i.a, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 -572
  %i.y = load i8, ptr %i.x, align 4, !tbaa !624, !range !64, !noundef !204
  %i.z = icmp eq i8 %i.y, 0
  br label %_ZN5ImGui13IsKeyReleasedE8ImGuiKeyj.exit

_ZN5ImGui13IsKeyReleasedE8ImGuiKeyj.exit:         ; preds = %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i, %bb.b, %switch.early.test.i.i.i, %switch.early.test.split.i.i.i, %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i.i
  %.0.i = phi i1 [ false, %bb.b ], [ false, %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i ], [ true, %switch.early.test.i.i.i ], [ true, %switch.early.test.split.i.i.i ], [ %i.z, %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i.i ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN5ImGui13IsKeyReleasedE8ImGuiKeyj(i32 noundef %0, i32 noundef %1) local_unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 4 uses
  %i.b = and i32 %0, 61440
  %.not.i.i = icmp ne i32 %i.b, 0
  %i.c = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %0)
  %i.d = icmp eq i32 %i.c, 1                      ; 2 uses
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.d, i1 false ; 2 uses
  br i1 %or.cond.i.i, label %.split.i.i.i, label %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit

.split.i.i.i:                                     ; preds = %bb.a
  %i.e = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %0, i1 true) ; 2 uses
  %i.f = and i32 %i.e, 28
  %i.g = icmp eq i32 %i.f, 12
  %switch.offset.i.i.i = add nuw nsw i32 %i.e, 651
  %spec.select.i.i.i = select i1 %i.g, i32 %switch.offset.i.i.i, i32 %0
  br label %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit

_ZN5ImGui10GetKeyDataE8ImGuiKey.exit:             ; preds = %bb.a, %.split.i.i.i
  %.0.i.i = phi i32 [ %0, %bb.a ], [ %spec.select.i.i.i, %.split.i.i.i ]
  %i.h = sext i32 %.0.i.i to i64
  %i.i = getelementptr [16 x i8], ptr %i.a, i64 %i.h ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -7876
  %i.k = load float, ptr %i.j, align 4, !tbaa !1009
  %i.l = fcmp olt float %i.k, 0.000000e+00
  br i1 %i.l, label %_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit
  %i.m = getelementptr i8, ptr %i.i, i64 -7884
  %i.n = load i8, ptr %i.m, align 4, !tbaa !208, !range !64, !noundef !204
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = add i32 %0, -512                         ; 2 uses
  %or.cond.i.i5 = icmp ult i32 %i.p, 155
  br i1 %or.cond.i.i5, label %bb.d, label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %bb.c
  br i1 %i.d, label %switch.early.test.split.i.i, label %_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit

switch.early.test.split.i.i:                      ; preds = %switch.early.test.i.i
  %i.q = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %0, i1 true)
  %i.r = and i32 %i.q, 28
  %switch.i.i = icmp eq i32 %i.r, 12
  br i1 %switch.i.i, label %bb.d, label %_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit

bb.d:                                             ; preds = %switch.early.test.split.i.i, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 7772
  %i.t = load i8, ptr %i.s, align 4, !tbaa !650, !range !64, !noundef !204
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 5428
  %i.w = load i32, ptr %i.v, align 4, !tbaa !819
  %i.x = icmp ne i32 %1, %i.w
  %i.y = icmp ne i32 %1, 0
  %or.cond.i = and i1 %i.y, %i.x
  %or.cond3.i = icmp ult i32 %i.p, 120
  %or.cond21.i = and i1 %or.cond3.i, %or.cond.i
  br i1 %or.cond21.i, label %_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %or.cond.i.i, label %.split.i.i.i8, label %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i

.split.i.i.i8:                                    ; preds = %bb.f
  %i.z = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %0, i1 true) ; 2 uses
  %i.aa = and i32 %i.z, 28
  %i.ab = icmp eq i32 %i.aa, 12
  %switch.offset.i.i.i9 = add nuw nsw i32 %i.z, 651
  %spec.select.i.i.i10 = select i1 %i.ab, i32 %switch.offset.i.i.i9, i32 %0
  br label %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i

_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i: ; preds = %.split.i.i.i8, %bb.f
  %.0.i.i7 = phi i32 [ %0, %bb.f ], [ %spec.select.i.i.i10, %.split.i.i.i8 ]
  %i.ac = sext i32 %.0.i.i7 to i64
  %i.ad = getelementptr [12 x i8], ptr %i.a, i64 %i.ac ; 3 uses
  %i.ae = icmp eq i32 %1, 0
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i
  %i.af = getelementptr i8, ptr %i.ad, i64 -572
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !624, !range !64, !noundef !204
  %i.ah = icmp eq i8 %i.ag, 0
  br label %_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit

bb.h:                                             ; preds = %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i
  %i.ai = getelementptr i8, ptr %i.ad, i64 -580
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !622 ; 2 uses
  %.not.i = icmp eq i32 %i.aj, %1
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr i8, ptr %i.ad, i64 -572
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !624, !range !64, !noundef !204
  %i.am = trunc nuw i8 %i.al to i1
  %.not20.i = icmp ne i32 %i.aj, -1
  %or.cond23.not.i = or i1 %.not20.i, %i.am
  br i1 %or.cond23.not.i, label %_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br label %_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit

_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit:          ; preds = %bb.j, %bb.i, %bb.g, %bb.e, %switch.early.test.split.i.i, %switch.early.test.i.i, %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ false, %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit ], [ false, %bb.i ], [ false, %bb.e ], [ %i.ah, %bb.g ], [ true, %bb.j ], [ true, %switch.early.test.i.i ], [ true, %switch.early.test.split.i.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN5ImGui11IsMouseDownEij(i32 noundef %0, i32 noundef %1) local_unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  %i.c = sext i32 %0 to i64
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !215, !range !64, !noundef !204
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %0, 656                      ; 7 uses
  %i.h = add nsw i32 %0, 144                      ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN5ImGui15SetItemKeyOwnerE8ImGuiKeyi:bb.a

.split.i.i.i:                                     ; preds = %bb.i
  %i.af = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %0, i1 true) ; 2 uses
  %i.ag = and i32 %i.af, 28
  %i.ah = icmp eq i32 %i.ag, 12
  %switch.offset.i.i.i = add nuw nsw i32 %i.af, 651
  %spec.select.i.i.i = select i1 %i.ah, i32 %switch.offset.i.i.i, i32 %0
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.split.i.i.i
  %.0.i.i = phi i32 [ %0, %bb.i ], [ %spec.select.i.i.i, %.split.i.i.i ]
  %i.ai = sext i32 %.0.i.i to i64
  %i.aj = getelementptr [12 x i8], ptr %i.a, i64 %i.ai ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 -580
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !622 ; 2 uses
  %.not.i = icmp eq i32 %i.al, %i.c
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr i8, ptr %i.aj, i64 -572
  %i.an = load i8, ptr %i.am, align 4, !tbaa !624, !range !64, !noundef !204
  %i.ao = trunc nuw i8 %i.an to i1
  %.not20.i = icmp ne i32 %i.al, -1
  %or.cond23.not.i = or i1 %.not20.i, %i.ao
  br i1 %or.cond23.not.i, label %_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit, label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %switch.early.test.split.i.i, %switch.early.test.i.i
  %.pre-phi = phi i32 [ %i.ad, %bb.j ], [ %i.ad, %bb.k ], [ 1, %switch.early.test.split.i.i ], [ %i.s, %switch.early.test.i.i ]
  %i.ap = and i32 %0, 61440
  %.not.i.i25 = icmp ne i32 %i.ap, 0
  %i.aq = icmp eq i32 %.pre-phi, 1
  %or.cond.i.i26 = select i1 %.not.i.i25, i1 %i.aq, i1 false
  br i1 %or.cond.i.i26, label %.split.i.i.i30, label %_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji.exit

.split.i.i.i30:                                   ; preds = %bb.l
  %i.ar = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %0, i1 true) ; 2 uses
  %i.as = and i32 %i.ar, 28
  %i.at = icmp eq i32 %i.as, 12
  %switch.offset.i.i.i31 = add nuw nsw i32 %i.ar, 651
  %spec.select.i.i.i32 = select i1 %i.at, i32 %switch.offset.i.i.i31, i32 %0
  br label %_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji.exit

_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji.exit:          ; preds = %bb.l, %.split.i.i.i30
  %.0.i.i28 = phi i32 [ %0, %bb.l ], [ %spec.select.i.i.i32, %.split.i.i.i30 ]
  %i.au = sext i32 %.0.i.i28 to i64
  %i.av = getelementptr [12 x i8], ptr %i.a, i64 %i.au ; 4 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 -580
  %i.ax = getelementptr i8, ptr %i.av, i64 -576
  store i32 %i.c, ptr %i.ax, align 4, !tbaa !620
  store i32 %i.c, ptr %i.aw, align 4, !tbaa !622
  %i.ay = getelementptr i8, ptr %i.av, i64 -571
  %i.az = lshr i32 %spec.select, 21
  %i.ba = trunc i32 %i.az to i8
  %i.bb = and i8 %i.ba, 1                         ; 2 uses
  store i8 %i.bb, ptr %i.ay, align 1, !tbaa !623
  %i.bc = and i32 %spec.select, 1048576
  %.not.i29 = icmp eq i32 %i.bc, 0
  %i.bd = select i1 %.not.i29, i8 %i.bb, i8 1
  %i.be = getelementptr i8, ptr %i.av, i64 -572
  store i8 %i.bd, ptr %i.be, align 4, !tbaa !624
  br label %_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit

_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj.exit:          ; preds = %bb.k, %bb.h, %bb.e, %bb.a, %bb.c, %_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji.exit
  %.019 = phi i1 [ false, %bb.e ], [ true, %_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji.exit ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.h ], [ false, %bb.k ]
  ret i1 %.019
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN5ImGui15SetItemKeyOwnerE8ImGuiKey(i32 noundef %0) local_unnamed_addr #30 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN5ImGui15SetItemKeyOwnerE8ImGuiKeyi(i32 noundef %0, i32 noundef 0)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN5ImGui17IsKeyChordPressedEi(i32 noundef %0) local_unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 3 uses
  %i.b = and i32 %0, -61441                       ; 2 uses
  %i.c = add i32 %i.b, -527
  %i.d = icmp ult i32 %i.c, 8
  br i1 %i.d, label %bb.b, label %_ZN5ImGui13FixupKeyChordEi.exit.i

bb.b:                                             ; preds = %bb.a
  switch i32 %i.b, label %bb.c [
    i32 531, label %_ZL17GetModForLRModKey8ImGuiKey.exit.i.i
    i32 527, label %_ZL17GetModForLRModKey8ImGuiKey.exit.i.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %0, -61445
  %switch.tableidx = add i32 %i.e, -528           ; 2 uses
  %i.f = icmp ult i32 %switch.tableidx, 3
  br i1 %i.f, label %switch.lookup, label %_ZL17GetModForLRModKey8ImGuiKey.exit.i.i

switch.lookup:                                    ; preds = %bb.c
  %i.g = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN5ImGui17IsKeyChordPressedEiij, i64 %i.g
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  br label %_ZL17GetModForLRModKey8ImGuiKey.exit.i.i

_ZL17GetModForLRModKey8ImGuiKey.exit.i.i:         ; preds = %bb.c, %switch.lookup, %bb.b, %bb.b
  %.0.i.i.i = phi i32 [ 4096, %bb.b ], [ 4096, %bb.b ], [ %switch.ext, %switch.lookup ], [ 0, %bb.c ]
  %i.h = or i32 %.0.i.i.i, %0
  br label %_ZN5ImGui13FixupKeyChordEi.exit.i

_ZN5ImGui13FixupKeyChordEi.exit.i:                ; preds = %_ZL17GetModForLRModKey8ImGuiKey.exit.i.i, %bb.a
  %.0.i.i = phi i32 [ %i.h, %_ZL17GetModForLRModKey8ImGuiKey.exit.i.i ], [ %0, %bb.a ] ; 2 uses
  %i.i = and i32 %.0.i.i, 61440                   ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1023
  %.not.i = icmp eq i32 %i.k, %i.i
  br i1 %.not.i, label %bb.d, label %_ZN5ImGui17IsKeyChordPressedEiij.exit

bb.d:                                             ; preds = %_ZN5ImGui13FixupKeyChordEi.exit.i
  %i.l = and i32 %.0.i.i, -61441                  ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZN5ImGui25ConvertSingleModFlagToKeyE8ImGuiKey.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = tail call range(i32 0, 5) i32 @llvm.ctpop.i32(i32 %i.i)
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %.split.i.i, label %_ZN5ImGui25ConvertSingleModFlagToKeyE8ImGuiKey.exit.i

.split.i.i:                                       ; preds = %bb.e
  %i.p = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.i, i1 true) ; 2 uses
  %i.q = and i32 %i.p, 28
  %i.r = icmp eq i32 %i.q, 12
  %switch.offset.i.i = add nuw nsw i32 %i.p, 651
  %spec.select.i.i = select i1 %i.r, i32 %switch.offset.i.i, i32 %i.i
  br label %_ZN5ImGui25ConvertSingleModFlagToKeyE8ImGuiKey.exit.i

_ZN5ImGui25ConvertSingleModFlagToKeyE8ImGuiKey.exit.i: ; preds = %.split.i.i, %bb.e, %bb.d
  %.0.i = phi i32 [ %i.l, %bb.d ], [ %i.i, %bb.e ], [ %spec.select.i.i, %.split.i.i ] ; 10 uses
  %i.s = and i32 %.0.i, 61440
  %.not.i.i.i = icmp ne i32 %i.s, 0
  %i.t = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.0.i)
  %i.u = icmp eq i32 %i.t, 1                      ; 2 uses
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %i.u, i1 false ; 2 uses
  br i1 %or.cond.i.i.i, label %.split.i.i.i.i, label %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i

.split.i.i.i.i:                                   ; preds = %_ZN5ImGui25ConvertSingleModFlagToKeyE8ImGuiKey.exit.i
  %i.v = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i, i1 true) ; 2 uses
  %i.w = and i32 %i.v, 28
  %i.x = icmp eq i32 %i.w, 12
  %switch.offset.i.i.i.i = add nuw nsw i32 %i.v, 651
  %spec.select.i.i.i.i = select i1 %i.x, i32 %switch.offset.i.i.i.i, i32 %.0.i
  br label %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i

_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i:           ; preds = %.split.i.i.i.i, %_ZN5ImGui25ConvertSingleModFlagToKeyE8ImGuiKey.exit.i
  %.0.i.i.i1 = phi i32 [ %.0.i, %_ZN5ImGui25ConvertSingleModFlagToKeyE8ImGuiKey.exit.i ], [ %spec.select.i.i.i.i, %.split.i.i.i.i ]
  %i.y = sext i32 %.0.i.i.i1 to i64
  %i.z = getelementptr [16 x i8], ptr %i.a, i64 %i.y ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -7884
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !208, !range !64, !noundef !204
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.f, label %_ZN5ImGui17IsKeyChordPressedEiij.exit

bb.f:                                             ; preds = %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i
  %i.ad = getelementptr i8, ptr %i.z, i64 -7880
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !1008
  %i.af = fcmp oeq float %i.ae, 0.000000e+00
  br i1 %i.af, label %bb.g, label %_ZN5ImGui17IsKeyChordPressedEiij.exit

bb.g:                                             ; preds = %bb.f
  %i.ag = add i32 %.0.i, -512
  %or.cond.i.i41.i = icmp ult i32 %i.ag, 155
  br i1 %or.cond.i.i41.i, label %bb.h, label %switch.early.test.i.i.i

switch.early.test.i.i.i:                          ; preds = %bb.g
  br i1 %i.u, label %switch.early.test.split.i.i.i, label %_ZN5ImGui17IsKeyChordPressedEiij.exit

switch.early.test.split.i.i.i:                    ; preds = %switch.early.test.i.i.i
  %i.ah = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i, i1 true)
  %i.ai = and i32 %i.ah, 28
  %switch.i.i.i = icmp eq i32 %i.ai, 12
  br i1 %switch.i.i.i, label %bb.h, label %_ZN5ImGui17IsKeyChordPressedEiij.exit

bb.h:                                             ; preds = %switch.early.test.split.i.i.i, %bb.g
  br i1 %or.cond.i.i.i, label %.split.i.i.i44.i, label %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i.i

.split.i.i.i44.i:                                 ; preds = %bb.h
  %i.aj = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i, i1 true) ; 2 uses
  %i.ak = and i32 %i.aj, 28
  %i.al = icmp eq i32 %i.ak, 12
  %switch.offset.i.i.i45.i = add nuw nsw i32 %i.aj, 651
  %spec.select.i.i.i46.i = select i1 %i.al, i32 %switch.offset.i.i.i45.i, i32 %.0.i
  br label %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i.i

_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i.i: ; preds = %.split.i.i.i44.i, %bb.h
  %.0.i.i43.i = phi i32 [ %.0.i, %bb.h ], [ %spec.select.i.i.i46.i, %.split.i.i.i44.i ]
  %i.am = sext i32 %.0.i.i43.i to i64
  %i.an = getelementptr [12 x i8], ptr %i.a, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 -572
  %i.ap = load i8, ptr %i.ao, align 4, !tbaa !624, !range !64, !noundef !204
  %i.aq = icmp eq i8 %i.ap, 0
  br label %_ZN5ImGui17IsKeyChordPressedEiij.exit

_ZN5ImGui17IsKeyChordPressedEiij.exit:            ; preds = %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i.i, %switch.early.test.split.i.i.i, %switch.early.test.i.i.i, %bb.f, %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i, %_ZN5ImGui13FixupKeyChordEi.exit.i
  %.1.i = phi i1 [ false, %_ZN5ImGui13FixupKeyChordEi.exit.i ], [ false, %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i ], [ false, %bb.f ], [ true, %switch.early.test.i.i.i ], [ true, %switch.early.test.split.i.i.i ], [ %i.aq, %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i.i ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN5ImGui17IsKeyChordPressedEiij(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.b = and i32 %0, -61441                       ; 2 uses
  %i.c = add i32 %i.b, -527
  %i.d = icmp ult i32 %i.c, 8
  br i1 %i.d, label %bb.b, label %_ZN5ImGui13FixupKeyChordEi.exit

bb.b:                                             ; preds = %bb.a
  switch i32 %i.b, label %bb.c [
    i32 531, label %_ZL17GetModForLRModKey8ImGuiKey.exit.i
    i32 527, label %_ZL17GetModForLRModKey8ImGuiKey.exit.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %0, -61445
  %switch.tableidx = add i32 %i.e, -528           ; 2 uses
  %i.f = icmp ult i32 %switch.tableidx, 3
  br i1 %i.f, label %switch.lookup, label %_ZL17GetModForLRModKey8ImGuiKey.exit.i

switch.lookup:                                    ; preds = %bb.c
  %i.g = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN5ImGui17IsKeyChordPressedEiij, i64 %i.g
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  br label %_ZL17GetModForLRModKey8ImGuiKey.exit.i

_ZL17GetModForLRModKey8ImGuiKey.exit.i:           ; preds = %bb.c, %switch.lookup, %bb.b, %bb.b
  %.0.i.i = phi i32 [ 4096, %bb.b ], [ 4096, %bb.b ], [ %switch.ext, %switch.lookup ], [ 0, %bb.c ]
  %i.h = or i32 %.0.i.i, %0
  br label %_ZN5ImGui13FixupKeyChordEi.exit

_ZN5ImGui13FixupKeyChordEi.exit:                  ; preds = %bb.a, %_ZL17GetModForLRModKey8ImGuiKey.exit.i
  %.0.i = phi i32 [ %i.h, %_ZL17GetModForLRModKey8ImGuiKey.exit.i ], [ %0, %bb.a ] ; 2 uses
  %i.i = and i32 %.0.i, 61440                     ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1023
  %.not = icmp eq i32 %i.k, %i.i
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN5ImGui13FixupKeyChordEi.exit
  %i.l = and i32 %.0.i, -61441                    ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZN5ImGui25ConvertSingleModFlagToKeyE8ImGuiKey.exit

bb.e:                                             ; preds = %bb.d
  %i.n = tail call range(i32 0, 5) i32 @llvm.ctpop.i32(i32 %i.i)
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %.split.i, label %_ZN5ImGui25ConvertSingleModFlagToKeyE8ImGuiKey.exit

.split.i:                                         ; preds = %bb.e
  %i.p = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.i, i1 true) ; 2 uses
  %i.q = and i32 %i.p, 28
  %i.r = icmp eq i32 %i.q, 12
  %switch.offset.i = add nuw nsw i32 %i.p, 651
  %spec.select.i = select i1 %i.r, i32 %switch.offset.i, i32 %i.i
  br label %_ZN5ImGui25ConvertSingleModFlagToKeyE8ImGuiKey.exit

_ZN5ImGui25ConvertSingleModFlagToKeyE8ImGuiKey.exit: ; preds = %.split.i, %bb.e, %bb.d
  %.0 = phi i32 [ %i.l, %bb.d ], [ %i.i, %bb.e ], [ %spec.select.i, %.split.i ]
  %i.s = and i32 %1, 255
  %i.t = tail call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyij(i32 noundef %.0, i32 noundef %i.s, i32 noundef %2)
  br label %bb.f

bb.f:                                             ; preds = %_ZN5ImGui13FixupKeyChordEi.exit, %_ZN5ImGui25ConvertSingleModFlagToKeyE8ImGuiKey.exit
  %.1 = phi i1 [ %i.t, %_ZN5ImGui25ConvertSingleModFlagToKeyE8ImGuiKey.exit ], [ false, %_ZN5ImGui13FixupKeyChordEi.exit ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui19SetNextItemShortcutEii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #30 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7792 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !278
  %i.d = or i32 %i.c, 4
  store i32 %i.d, ptr %i.b, align 8, !tbaa !278
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 7820
  store i32 %0, ptr %i.e, align 4, !tbaa !1383
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 7824
  store i32 %1, ptr %i.f, align 8, !tbaa !1382
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN5ImGui30DebugCheckVersionAndDataLayoutEPKcmmmmmm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #17 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.84) #57
  %.not = icmp eq i32 %i.a, 0
  %.not13 = icmp eq i64 %1, 3048
  %.not14 = icmp eq i64 %2, 1328
  %.not31 = and i1 %.not13, %.not14
  %.not16 = icmp eq i64 %3, 8
  %.not30 = and i1 %.not16, %.not31
  %.not17 = icmp eq i64 %4, 16
  %.not28 = and i1 %.not17, %.not30
  %.not19 = icmp eq i64 %5, 20
  %.not26 = and i1 %.not19, %.not28
  %.not20 = icmp eq i64 %6, 2
  %.not24 = and i1 %.not20, %.not26
  %narrow21.not = select i1 %.not24, i1 %.not, i1 false
  ret i1 %narrow21.not
}

declare void @_ZN5ImGui8EndTableEv() local_unnamed_addr #2

declare void @_ZN5ImGui9EndTabBarEv() local_unnamed_addr #2

declare noundef ptr @_ZN5ImGui14EndMultiSelectEv() local_unnamed_addr #2

declare void @_ZN5ImGui10EndMenuBarEv() local_unnamed_addr #2

declare void @_ZN5ImGui7TreePopEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui8EndGroupEv() local_unnamed_addr #12 {
bb.a:
  %0 = alloca %struct.ImRect, align 8             ; 7 uses
  %1 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !298  ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8136 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8144
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !703
  %i.g = load i32, ptr %i.d, align 8, !tbaa !806
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr [60 x i8], ptr %i.f, i64 %i.h ; 14 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 280 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 345 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !1342, !range !64, !noundef !204
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.b, label %_ZN5ImGui51ErrorCheckUsingSetCursorPosToExtendParentBoundariesEv.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.k, align 1, !tbaa !1342
  %i.n = load float, ptr %i.j, align 8, !tbaa !1343
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  %i.p = load float, ptr %i.o, align 8, !tbaa !1344
  %i.q = fcmp ugt float %i.n, %i.p
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 284
  %i.s = load float, ptr %i.r, align 4, !tbaa !328
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 308
  %i.u = load float, ptr %i.t, align 4, !tbaa !329
  %i.v = fcmp ugt float %i.s, %i.u
  br i1 %i.v, label %bb.d, label %_ZN5ImGui51ErrorCheckUsingSetCursorPosToExtendParentBoundariesEv.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.x = load i8, ptr %i.w, align 1, !tbaa !1231, !range !64, !noundef !204
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %_ZN5ImGui51ErrorCheckUsingSetCursorPosToExtendParentBoundariesEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.124), !inline_history !1345 ; 0 uses
  br label %_ZN5ImGui51ErrorCheckUsingSetCursorPosToExtendParentBoundariesEv.exit

_ZN5ImGui51ErrorCheckUsingSetCursorPosToExtendParentBoundariesEv.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #41
  %i.aa = getelementptr i8, ptr %i.i, i64 -56     ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 304 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 7848 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 7860
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 7868
  %i.af = load i64, ptr %i.aa, align 4            ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.i, i64 -40
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.aj = getelementptr i8, ptr %i.i, i64 -48
  %i.ak = getelementptr i8, ptr %i.i, i64 -32
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 348
  %i.am = getelementptr i8, ptr %i.i, i64 -28
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 356
  %i.ao = getelementptr i8, ptr %i.i, i64 -24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  %i.aq = getelementptr i8, ptr %i.i, i64 -16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 336 ; 2 uses
  %i.as = getelementptr i8, ptr %i.i, i64 -5
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 344
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 10264
  %i.av = load <2 x float>, ptr %i.ab, align 4, !tbaa !8 ; 2 uses
  %i.aw = load <2 x float>, ptr %i.ae, align 4, !tbaa !8 ; 2 uses
  %i.ax = fcmp oge <2 x float> %i.av, %i.aw
  %i.ay = select <2 x i1> %i.ax, <2 x float> %i.av, <2 x float> %i.aw ; 2 uses
  %i.az = load <2 x float>, ptr %i.aa, align 4, !tbaa !8 ; 2 uses
  %i.ba = fcmp oge <2 x float> %i.ay, %i.az
  %i.bb = select <2 x i1> %i.ba, <2 x float> %i.ay, <2 x float> %i.az ; 4 uses
  store i64 %i.af, ptr %0, align 8
  store <2 x float> %i.bb, ptr %i.ag, align 8
  store i64 %i.af, ptr %i.j, align 8
  %i.bc = load i64, ptr %i.ah, align 4
  store i64 %i.bc, ptr %i.ai, align 8
  %i.bd = load <2 x float>, ptr %i.aj, align 4, !tbaa !8 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN5ImGuiL12NavScoreItemEP16ImGuiNavItemDataRK6ImRect:bb.a
bb.d:                                             ; preds = %bb.c
  %.sroa.13.12.vec.extract138 = extractelement <2 x float> %.sroa.13.0.copyload, i64 1 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 620
  %i.w = load float, ptr %i.v, align 4, !tbaa !398 ; 4 uses
  %i.x = fcmp ogt float %.sroa.13.12.vec.extract138, %i.w
  br i1 %i.x, label %bb.e, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.e:                                             ; preds = %bb.d
  %.sroa.0.0.vec.extract115 = extractelement <2 x float> %.sroa.0.0.copyload118, i64 0
  %i.y = load float, ptr %i.r, align 8, !tbaa !395 ; 4 uses
  %i.z = fcmp olt float %.sroa.0.0.vec.extract115, %i.y
  br i1 %i.z, label %_ZNK6ImRect8OverlapsERKS_.exit, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

_ZNK6ImRect8OverlapsERKS_.exit:                   ; preds = %bb.e
  %.sroa.13.8.vec.extract130 = extractelement <2 x float> %.sroa.13.0.copyload, i64 0 ; 3 uses
  %i.aa = load float, ptr %i.q, align 8, !tbaa !394 ; 2 uses
  %i.ab = fcmp ogt float %.sroa.13.8.vec.extract130, %i.aa
  br i1 %i.ab, label %_Z7ImClampRK6ImVec2S1_S1_.exit.i, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

_Z7ImClampRK6ImVec2S1_S1_.exit.i:                 ; preds = %_ZNK6ImRect8OverlapsERKS_.exit
  %i.ac = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %i.w, i64 1 ; 2 uses
  %i.ae = fcmp olt <2 x float> %.sroa.0.0.copyload118, %i.ad
  %i.af = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ag = insertelement <2 x float> %i.af, float %i.t, i64 1 ; 2 uses
  %i.ah = fcmp ogt <2 x float> %.sroa.0.0.copyload118, %i.ag
  %i.ai = select <2 x i1> %i.ah, <2 x float> %i.ag, <2 x float> %.sroa.0.0.copyload118
  %i.aj = select <2 x i1> %i.ae, <2 x float> %i.ad, <2 x float> %i.ai
  %i.ak = fcmp ogt float %.sroa.13.8.vec.extract130, %i.y
  %..i6.i = select i1 %i.ak, float %i.y, float %.sroa.13.8.vec.extract130
  %i.al = fcmp olt float %.sroa.13.12.vec.extract138, %i.w
  %i.am = fcmp ogt float %.sroa.13.12.vec.extract138, %i.t
  %.19.i7.i = select i1 %i.am, float %i.t, float %.sroa.13.12.vec.extract138
  %i.an = select i1 %i.al, float %i.w, float %.19.i7.i
  %.sroa.0.0.vec.insert.i8.i = insertelement <2 x float> poison, float %..i6.i, i64 0
  %.sroa.0.4.vec.insert.i9.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i8.i, float %i.an, i64 1
  br label %bb.f

bb.f:                                             ; preds = %_Z7ImClampRK6ImVec2S1_S1_.exit.i, %bb.b
  %.sroa.13.0 = phi <2 x float> [ %.sroa.0.4.vec.insert.i9.i, %_Z7ImClampRK6ImVec2S1_S1_.exit.i ], [ %.sroa.13.0.copyload, %bb.b ] ; 4 uses
  %.sroa.0.0 = phi <2 x float> [ %i.aj, %_Z7ImClampRK6ImVec2S1_S1_.exit.i ], [ %.sroa.0.0.copyload118, %bb.b ] ; 4 uses
  %.sroa.0.0.vec.extract = extractelement <2 x float> %.sroa.0.0, i64 0 ; 2 uses
  %.sroa.13.8.vec.extract128 = extractelement <2 x float> %.sroa.13.0, i64 0 ; 2 uses
  %i.ao = fcmp olt float %.sroa.13.8.vec.extract128, %.sroa.0.0.copyload
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ap = fsub float %.sroa.13.8.vec.extract128, %.sroa.0.0.copyload
  br label %_ZL24NavScoreItemDistIntervalffff.exit

bb.h:                                             ; preds = %bb.f
  %i.aq = fcmp olt float %.sroa.8.0.copyload, %.sroa.0.0.vec.extract
  br i1 %i.aq, label %bb.i, label %_ZL24NavScoreItemDistIntervalffff.exit

bb.i:                                             ; preds = %bb.h
  %i.ar = fsub float %.sroa.0.0.vec.extract, %.sroa.8.0.copyload
  br label %_ZL24NavScoreItemDistIntervalffff.exit

_ZL24NavScoreItemDistIntervalffff.exit:           ; preds = %bb.g, %bb.h, %bb.i
  %.0.i = phi float [ %i.ap, %bb.g ], [ %i.ar, %bb.i ], [ 0.000000e+00, %bb.h ] ; 5 uses
  %i.as = shufflevector <2 x float> %.sroa.13.0, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.at = insertelement <2 x float> %i.as, float %.sroa.10.0.copyload, i64 1
  %i.au = shufflevector <2 x float> %.sroa.0.0, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.av = insertelement <2 x float> %i.au, float %.sroa.5.0.copyload, i64 1 ; 2 uses
  %i.aw = fsub <2 x float> %i.at, %i.av
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ay = shufflevector <2 x float> %i.av, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.az = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ax, <4 x float> <float 2.000000e-01, float 2.000000e-01, float 8.000000e-01, float 8.000000e-01>, <4 x float> %i.ay) ; 4 uses
  %i.ba = extractelement <4 x float> %i.az, i64 1 ; 2 uses
  %i.bb = extractelement <4 x float> %i.az, i64 2 ; 2 uses
  %i.bc = fcmp olt float %i.bb, %i.ba
  br i1 %i.bc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZL24NavScoreItemDistIntervalffff.exit
  %i.bd = fsub float %i.bb, %i.ba
  br label %_ZL24NavScoreItemDistIntervalffff.exit109

bb.k:                                             ; preds = %_ZL24NavScoreItemDistIntervalffff.exit
  %i.be = extractelement <4 x float> %i.az, i64 0 ; 2 uses
  %i.bf = extractelement <4 x float> %i.az, i64 3 ; 2 uses
  %i.bg = fcmp olt float %i.bf, %i.be
  br i1 %i.bg, label %bb.l, label %_ZL24NavScoreItemDistIntervalffff.exit109.thread

bb.l:                                             ; preds = %bb.k
  %i.bh = fsub float %i.be, %i.bf
  br label %_ZL24NavScoreItemDistIntervalffff.exit109

_ZL24NavScoreItemDistIntervalffff.exit109:        ; preds = %bb.j, %bb.l
  %.0.i108 = phi float [ %i.bd, %bb.j ], [ %i.bh, %bb.l ] ; 3 uses
  %i.bi = fcmp une float %.0.i108, 0.000000e+00   ; 2 uses
  %i.bj = fcmp une float %.0.i, 0.000000e+00
  %or.cond = and i1 %i.bj, %i.bi
  br i1 %or.cond, label %bb.m, label %_ZL24NavScoreItemDistIntervalffff.exit109.thread

bb.m:                                             ; preds = %_ZL24NavScoreItemDistIntervalffff.exit109
  %i.bk = fdiv float %.0.i, 1.000000e+03
  %i.bl = fcmp ogt float %.0.i, 0.000000e+00
  %i.bm = select i1 %i.bl, float 1.000000e+00, float -1.000000e+00
  %i.bn = fadd float %i.bk, %i.bm
  br label %_ZL24NavScoreItemDistIntervalffff.exit109.thread

_ZL24NavScoreItemDistIntervalffff.exit109.thread: ; preds = %bb.k, %bb.m, %_ZL24NavScoreItemDistIntervalffff.exit109
  %i.bo = phi i1 [ true, %bb.m ], [ %i.bi, %_ZL24NavScoreItemDistIntervalffff.exit109 ], [ false, %bb.k ]
  %.0.i108143 = phi float [ %.0.i108, %bb.m ], [ %.0.i108, %_ZL24NavScoreItemDistIntervalffff.exit109 ], [ 0.000000e+00, %bb.k ] ; 4 uses
  %.096 = phi float [ %i.bn, %bb.m ], [ %.0.i, %_ZL24NavScoreItemDistIntervalffff.exit109 ], [ %.0.i, %bb.k ] ; 5 uses
  %i.bp = tail call float @llvm.fabs.f32(float %.096) ; 2 uses
  %i.bq = tail call float @llvm.fabs.f32(float %.0.i108143) ; 2 uses
  %i.br = fadd float %i.bq, %i.bp                 ; 4 uses
  %foldExtExtBinop = fadd <2 x float> %.sroa.13.0, %.sroa.0.0
  %i.bs = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bt = fadd float %.sroa.0.0.copyload, %.sroa.8.0.copyload
  %i.bu = fsub float %i.bs, %i.bt                 ; 4 uses
  %foldExtExtBinop160 = fadd <2 x float> %.sroa.13.0, %.sroa.0.0
  %i.bv = extractelement <2 x float> %foldExtExtBinop160, i64 1
  %i.bw = fadd float %.sroa.5.0.copyload, %.sroa.10.0.copyload
  %i.bx = fsub float %i.bv, %i.bw                 ; 4 uses
  %i.by = tail call float @llvm.fabs.f32(float %i.bu) ; 2 uses
  %i.bz = tail call float @llvm.fabs.f32(float %i.bx) ; 2 uses
  %i.ca = fadd float %i.by, %i.bz                 ; 5 uses
  %i.cb = fcmp une float %.096, 0.000000e+00
  %or.cond3 = or i1 %i.bo, %i.cb
  br i1 %or.cond3, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZL24NavScoreItemDistIntervalffff.exit109.thread
  %i.cc = fcmp ogt float %i.bp, %i.bq
  %i.cd = fcmp ogt float %.096, 0.000000e+00
  %i.ce = zext i1 %i.cd to i32
  %i.cf = fcmp ogt float %.0.i108143, 0.000000e+00
  %i.cg = select i1 %i.cf, i32 3, i32 2
  %.0.i110 = select i1 %i.cc, i32 %i.ce, i32 %i.cg
  br label %bb.r

bb.o:                                             ; preds = %_ZL24NavScoreItemDistIntervalffff.exit109.thread
  %i.ch = fcmp une float %i.bu, 0.000000e+00
  %i.ci = fcmp une float %i.bx, 0.000000e+00
  %or.cond5 = select i1 %i.ch, i1 true, i1 %i.ci
  br i1 %or.cond5, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cj = fcmp ogt float %i.by, %i.bz
  %i.ck = fcmp ogt float %i.bu, 0.000000e+00
  %i.cl = zext i1 %i.ck to i32
  %i.cm = fcmp ogt float %i.bx, 0.000000e+00
  %i.cn = select i1 %i.cm, i32 3, i32 2
  %.0.i111 = select i1 %i.cj, i32 %i.cl, i32 %i.cn
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 7848
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !475
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 8220
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !400
  %i.cs = icmp uge i32 %i.cp, %i.cr
  %i.ct = zext i1 %i.cs to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.n
  %.095 = phi i32 [ %.0.i110, %bb.n ], [ %.0.i111, %bb.p ], [ %i.ct, %bb.q ] ; 2 uses
  %.094 = phi float [ %.096, %bb.n ], [ %i.bu, %bb.p ], [ 0.000000e+00, %bb.q ] ; 2 uses
  %.093 = phi float [ %.0.i108143, %bb.n ], [ %i.bx, %bb.p ], [ 0.000000e+00, %bb.q ] ; 2 uses
  %.092 = phi float [ %i.br, %bb.n ], [ %i.ca, %bb.p ], [ 0.000000e+00, %bb.q ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 8400
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !1074 ; 5 uses
  %i.cw = icmp eq i32 %.095, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !1504 ; 3 uses
  br i1 %i.cw, label %bb.s, label %._crit_edge

bb.s:                                             ; preds = %bb.r
  %i.cz = fcmp olt float %i.br, %i.cy
  br i1 %i.cz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store float %i.br, ptr %i.cx, align 4, !tbaa !1504
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.ca, ptr %i.da, align 8, !tbaa !1506
  br label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.u:                                             ; preds = %bb.s
  %i.db = fcmp oeq float %i.br, %i.cy
  br i1 %i.db, label %bb.v, label %._crit_edge

bb.v:                                             ; preds = %bb.u
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dd = load float, ptr %i.dc, align 8, !tbaa !1506 ; 2 uses
  %i.de = fcmp olt float %i.ca, %i.dd
  br i1 %i.de, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store float %i.ca, ptr %i.dc, align 8, !tbaa !1506
  br label %._crit_edge

bb.x:                                             ; preds = %bb.v
  %i.df = fcmp oeq float %i.ca, %i.dd
  br i1 %i.df, label %bb.y, label %._crit_edge

bb.y:                                             ; preds = %bb.x
  %i.dg = icmp samesign ugt i32 %.095, 1
  %i.dh = select i1 %i.dg, float %.0.i108143, float %.096
  %i.di = fcmp olt float %i.dh, 0.000000e+00
  br i1 %i.di, label %2, label %._crit_edge

2:                                                ; preds = %bb.y
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.r, %bb.u, %bb.x, %2, %bb.y, %bb.w
  %.0 = phi i1 [ true, %bb.w ], [ true, %2 ], [ false, %bb.y ], [ false, %bb.x ], [ false, %bb.u ], [ false, %bb.r ] ; 4 uses
  %i.dj = fcmp oeq float %i.cy, f0x7F7FFFFF
  br i1 %i.dj, label %bb.z, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.z:                                             ; preds = %._crit_edge
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !627
  %i.dm = fcmp olt float %.092, %i.dl
  %i.dn = icmp eq i32 %i.e, 1
  %or.cond144 = and i1 %i.dn, %i.dm
  br i1 %or.cond144, label %bb.aa, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.do = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !722
  %i.dq = and i32 %i.dp, 268435456
  %.not107 = icmp eq i32 %i.dq, 0
  br i1 %.not107, label %bb.ab, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %i.dr = icmp eq i32 %i.cv, 0
  %i.ds = fcmp olt float %.094, 0.000000e+00
  %or.cond9 = select i1 %i.dr, i1 %i.ds, i1 false
  br i1 %or.cond9, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dt = icmp eq i32 %i.cv, 1
  %i.du = fcmp ogt float %.094, 0.000000e+00
  %or.cond11 = select i1 %i.dt, i1 %i.du, i1 false
  br i1 %or.cond11, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dv = icmp eq i32 %i.cv, 2
  %i.dw = fcmp olt float %.093, 0.000000e+00
  %or.cond13 = select i1 %i.dv, i1 %i.dw, i1 false
  br i1 %or.cond13, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dx = icmp eq i32 %i.cv, 3
  %i.dy = fcmp ogt float %.093, 0.000000e+00
  %or.cond15 = select i1 %i.dx, i1 %i.dy, i1 false
  br i1 %or.cond15, label %bb.af, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab
  store float %.092, ptr %i.dk, align 4, !tbaa !627
  br label %_ZNK6ImRect8OverlapsERKS_.exit.thread

_ZNK6ImRect8OverlapsERKS_.exit.thread:            ; preds = %bb.c, %bb.d, %bb.e, %_ZNK6ImRect8OverlapsERKS_.exit, %._crit_edge, %bb.z, %bb.ae, %bb.af, %bb.aa, %bb.t, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %_ZNK6ImRect8OverlapsERKS_.exit ], [ true, %bb.t ], [ %.0, %bb.aa ], [ true, %bb.af ], [ %.0, %bb.ae ], [ false, %bb.c ], [ %.0, %bb.z ], [ %.0, %._crit_edge ], [ false, %bb.e ], [ false, %bb.d ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5ImGuiL15NavRestoreLayerE13ImGuiNavLayer(i32 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 5 uses
  %i.b = icmp eq i32 %0, 0
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8224 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !389  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1000
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !893  ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 205
  %i.h = load i8, ptr %i.g, align 1, !tbaa !436, !range !64, !noundef !204
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi ptr [ %i.d, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  store ptr %.0.i, ptr %i.c, align 8, !tbaa !389
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8312
  store i64 -1, ptr %i.j, align 8, !tbaa !654
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 10404
  %i.l = load i32, ptr %i.k, align 4, !tbaa !221
  %i.m = and i32 %i.l, 4
  %.not20 = icmp eq i32 %i.m, 0
  br i1 %.not20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !299
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !299
  tail call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.758, ptr noundef %i.o, ptr noundef %i.q)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8224
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !389  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1008
  %i.u = zext i32 %0 to i64                       ; 4 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !205  ; 3 uses
  %.not21 = icmp eq i32 %i.w, 0
  br i1 %.not21, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 1016
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.u
  %i.z = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8220
  store i32 %i.w, ptr %i.aa, align 4, !tbaa !400
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8236
  store i32 %0, ptr %i.ab, align 4, !tbaa !895
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8232
  store i32 0, ptr %i.ac, align 8, !tbaa !896
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8264
  tail call void @_ZN8ImVectorI19ImGuiFocusScopeDataE6resizeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i32 noundef 0)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 8224
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !389 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1008
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.u
  store i32 %i.w, ptr %i.ah, align 4, !tbaa !205
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 1016
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.y, i64 16, i1 false), !tbaa.struct !419
  %i.ak = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8224
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !389
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 984
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !390
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1048
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 8236
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !895
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.as
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.at, align 4, !tbaa !8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 8236
  store i32 %0, ptr %i.au, align 4, !tbaa !895
  tail call void @_ZN5ImGui13NavInitWindowEP11ImGuiWindowb(ptr noundef nonnull %i.s, i1 noundef zeroext true)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @fork() local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare i32 @execvp(ptr noundef, ptr noundef) local_unnamed_addr #22

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #54

declare i32 @waitpid(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #26

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8ImVectorI19ImGuiStackLevelInfoE6resizeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1767 ; 4 uses
  %i.c = icmp sgt i32 %1, %i.b
  br i1 %i.c, label %bb.b, label %_ZN8ImVectorI19ImGuiStackLevelInfoE7reserveEi.exit

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK8ImVectorI19ImGuiStackLevelInfoE14_grow_capacityEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = sdiv i32 %i.b, 2
  %i.e = add nsw i32 %i.d, %i.b
  br label %_ZNK8ImVectorI19ImGuiStackLevelInfoE14_grow_capacityEi.exit

_ZNK8ImVectorI19ImGuiStackLevelInfoE14_grow_capacityEi.exit: ; preds = %bb.b, %bb.c
  %i.f = phi i32 [ %i.e, %bb.c ], [ 8, %bb.b ]
  %i.g = tail call noundef i32 @llvm.smax.i32(i32 %i.f, i32 %1) ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = mul nsw i64 %i.h, 12
  %i.j = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !191
  %i.k = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !191
  %i.l = tail call noundef ptr %i.j(i64 noundef %i.i, ptr noundef %i.k), !inline_history !1768 ; 2 uses
  %i.m = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 5 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZN5ImGui8MemAllocEm.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNK8ImVectorI19ImGuiStackLevelInfoE14_grow_capacityEi.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 10596 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !194  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 10608 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 10604 ; 2 uses
  %i.s = load i16, ptr %i.r, align 4, !tbaa !195  ; 2 uses
  %i.t = sext i16 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !196
end_hunk_7
