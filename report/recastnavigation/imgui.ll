Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/imgui?download=true
inline.NumInlined: 3240
inline.NumDeleted: 627
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 90
begin_hunk_0_@_ZN5ImGui17ShowMetricsWindowEPb:bb.a
  %i.avo = load i16, ptr %i.avn, align 2, !tbaa !251
  %i.avp = sext i16 %i.avo to i32                 ; 2 uses
  %i.avq = sub nsw i32 %i.avm, %i.avp
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.357, i32 noundef %i.avj, i32 noundef %i.avq, i32 noundef %i.avm, i32 noundef %i.avp) #35
  %.pre1142.a = load i16, ptr %i.avb, align 8, !tbaa !247
  %i.avr = sext i16 %.pre1142.a to i32
  %i.avs = add nsw i32 %i.avr, 2
  %i.avt = srem i32 %i.avs, 6
  %i.avu = sext i32 %i.avt to i64
  %i.avv = getelementptr inbounds [8 x i8], ptr %i.ava, i64 %i.avu ; 3 uses
  %i.avw = load i32, ptr %i.avv, align 4, !tbaa !249
  %i.avx = getelementptr inbounds nuw i8, ptr %i.avv, i64 4
  %i.avy = load i16, ptr %i.avx, align 4, !tbaa !250
  %i.avz = sext i16 %i.avy to i32                 ; 2 uses
  %i.awa = getelementptr inbounds nuw i8, ptr %i.avv, i64 6
  %i.awb = load i16, ptr %i.awa, align 2, !tbaa !251
  %i.awc = sext i16 %i.awb to i32                 ; 2 uses
  %i.awd = sub nsw i32 %i.avz, %i.awc
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.357, i32 noundef %i.avw, i32 noundef %i.awd, i32 noundef %i.avz, i32 noundef %i.awc) #35
  %.pre1144.a = load i16, ptr %i.avb, align 8, !tbaa !247
  %i.awe = sext i16 %.pre1144.a to i32
  %i.awf = add nsw i32 %i.awe, 3
  %i.awg = srem i32 %i.awf, 6
  %i.awh = sext i32 %i.awg to i64
  %i.awi = getelementptr inbounds [8 x i8], ptr %i.ava, i64 %i.awh ; 3 uses
  %i.awj = load i32, ptr %i.awi, align 4, !tbaa !249
  %i.awk = getelementptr inbounds nuw i8, ptr %i.awi, i64 4
  %i.awl = load i16, ptr %i.awk, align 4, !tbaa !250
  %i.awm = sext i16 %i.awl to i32                 ; 2 uses
  %i.awn = getelementptr inbounds nuw i8, ptr %i.awi, i64 6
  %i.awo = load i16, ptr %i.awn, align 2, !tbaa !251
  %i.awp = sext i16 %i.awo to i32                 ; 2 uses
  %i.awq = sub nsw i32 %i.awm, %i.awp
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.357, i32 noundef %i.awj, i32 noundef %i.awq, i32 noundef %i.awm, i32 noundef %i.awp) #35
  %.pre1146.a = load i16, ptr %i.avb, align 8, !tbaa !247
  %i.awr = sext i16 %.pre1146.a to i32
  %i.aws = add nsw i32 %i.awr, 4
  %i.awt = srem i32 %i.aws, 6
  %i.awu = sext i32 %i.awt to i64
  %i.awv = getelementptr inbounds [8 x i8], ptr %i.ava, i64 %i.awu ; 3 uses
  %i.aww = load i32, ptr %i.awv, align 4, !tbaa !249
  %i.awx = getelementptr inbounds nuw i8, ptr %i.awv, i64 4
  %i.awy = load i16, ptr %i.awx, align 4, !tbaa !250
  %i.awz = sext i16 %i.awy to i32                 ; 2 uses
  %i.axa = getelementptr inbounds nuw i8, ptr %i.awv, i64 6
  %i.axb = load i16, ptr %i.axa, align 2, !tbaa !251
  %i.axc = sext i16 %i.axb to i32                 ; 2 uses
  %i.axd = sub nsw i32 %i.awz, %i.axc
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.357, i32 noundef %i.aww, i32 noundef %i.axd, i32 noundef %i.awz, i32 noundef %i.axc) #35
  %.pre1148.a = load i16, ptr %i.avb, align 8, !tbaa !247
  %i.axe = sext i16 %.pre1148.a to i32
  %i.axf = add nsw i32 %i.axe, 5
  %i.axg = srem i32 %i.axf, 6
  %i.axh = sext i32 %i.axg to i64
  %i.axi = getelementptr inbounds [8 x i8], ptr %i.ava, i64 %i.axh ; 3 uses
  %i.axj = load i32, ptr %i.axi, align 4, !tbaa !249
  %i.axk = getelementptr inbounds nuw i8, ptr %i.axi, i64 4
  %i.axl = load i16, ptr %i.axk, align 4, !tbaa !250
  %i.axm = sext i16 %i.axl to i32                 ; 2 uses
  %i.axn = getelementptr inbounds nuw i8, ptr %i.axi, i64 6
  %i.axo = load i16, ptr %i.axn, align 2, !tbaa !251
  %i.axp = sext i16 %i.axo to i32                 ; 2 uses
  %i.axq = sub nsw i32 %i.axm, %i.axp
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.357, i32 noundef %i.axj, i32 noundef %i.axq, i32 noundef %i.axm, i32 noundef %i.axp) #35
  %.pre1150.a = load i16, ptr %i.avb, align 8, !tbaa !247
  %i.axr = sext i16 %.pre1150.a to i32
  %i.axs = add nsw i32 %i.axr, 6
  %i.axt = srem i32 %i.axs, 6
  %i.axu = sext i32 %i.axt to i64
  %i.axv = getelementptr inbounds [8 x i8], ptr %i.ava, i64 %i.axu ; 4 uses
  %i.axw = load i32, ptr %i.axv, align 4, !tbaa !249
  %i.axx = getelementptr inbounds nuw i8, ptr %i.axv, i64 4
  %i.axy = load i16, ptr %i.axx, align 4, !tbaa !250
  %i.axz = sext i16 %i.axy to i32                 ; 2 uses
  %i.aya = getelementptr inbounds nuw i8, ptr %i.axv, i64 6
  %i.ayb = load i16, ptr %i.aya, align 2, !tbaa !251
  %i.ayc = sext i16 %i.ayb to i32                 ; 2 uses
  %i.ayd = sub nsw i32 %i.axz, %i.ayc
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.357, i32 noundef %i.axw, i32 noundef %i.ayd, i32 noundef %i.axz, i32 noundef %i.ayc) #35
  %i.aye = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.aye, i64 5184
  %i.ayg = load ptr, ptr %i.ayf, align 8, !tbaa !309 ; 10 uses
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.ayg, i64 209
  %i.ayi = load i8, ptr %i.ayh, align 1, !tbaa !918, !range !119, !noundef !254
  %i.ayj = trunc nuw i8 %i.ayi to i1
  br i1 %i.ayj, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.aye, i64 3228
  %i.ayl = load float, ptr %i.ayk, align 4, !tbaa !976
  %i.aym = getelementptr inbounds nuw i8, ptr %i.ayg, i64 280
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.ayg, i64 288
  %i.ayo = load float, ptr %i.ayn, align 8, !tbaa !977
  %i.ayp = fadd float %i.ayl, %i.ayo
  store float %i.ayp, ptr %i.aym, align 8, !tbaa !978
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.ayg, i64 292
  %i.ayr = load float, ptr %i.ayq, align 4, !tbaa !342
  %i.ays = getelementptr inbounds nuw i8, ptr %i.ayg, i64 284
  store float %i.ayr, ptr %i.ays, align 4, !tbaa !339
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.ayg, i64 328
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.ayg, i64 320
  %i.ayv = load i64, ptr %i.ayt, align 8
  store i64 %i.ayv, ptr %i.ayu, align 8
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayg, i64 340
  %i.ayx = load float, ptr %i.ayw, align 4, !tbaa !973
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ayg, i64 336
  store float %i.ayx, ptr %i.ayy, align 8, !tbaa !974
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.ayg, i64 344
  store i8 1, ptr %i.ayz, align 8, !tbaa !975
  br label %bb.fu

bb.fu:                                            ; preds = %bb.fs, %bb.ft
  %i.aza = load i32, ptr %i.avc, align 8, !tbaa !246
  %i.azb = load i32, ptr %i.axv, align 4, !tbaa !249
  %i.azc = sub nsw i32 %i.aza, %i.azb
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.358, i32 noundef %i.azc) #35
  call void @_ZN5ImGui7TreePopEv() #35
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.fp
  %i.azd = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.359) #35
  br i1 %i.azd, label %bb.fw, label %bb.iu

bb.fw:                                            ; preds = %bb.fv
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.360) #35
  %i.aze = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.azf = getelementptr inbounds nuw i8, ptr %i.aze, i64 5184
  %i.azg = load ptr, ptr %i.azf, align 8, !tbaa !309 ; 5 uses
  %i.azh = getelementptr inbounds nuw i8, ptr %i.azg, i64 206
  store i8 1, ptr %i.azh, align 2, !tbaa !688
  %i.azi = getelementptr inbounds nuw i8, ptr %i.aze, i64 3260
  %i.azj = load float, ptr %i.azi, align 4, !tbaa !1040
  %i.azk = getelementptr inbounds nuw i8, ptr %i.azg, i64 280
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azg, i64 348 ; 2 uses
  %i.azm = load float, ptr %i.azl, align 4, !tbaa !945
  %i.azn = fadd float %i.azj, %i.azm              ; 2 uses
  store float %i.azn, ptr %i.azl, align 4, !tbaa !945
  %i.azo = getelementptr inbounds nuw i8, ptr %i.azg, i64 40
  %i.azp = load float, ptr %i.azo, align 8, !tbaa !704
  %i.azq = fadd float %i.azn, %i.azp
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azg, i64 352
  %i.azs = load float, ptr %i.azr, align 8, !tbaa !999
  %i.azt = fadd float %i.azq, %i.azs
  store float %i.azt, ptr %i.azk, align 8, !tbaa !978
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.361) #35
  %.pre1153.a = load ptr, ptr @GImGui, align 8, !tbaa !245
  br label %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i

bb.fx:                                            ; preds = %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread941
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.364) #35
  br label %bb.gb

_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i:         ; preds = %bb.fw, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread941
  %i.azu = phi ptr [ %.pre1153.a, %bb.fw ], [ %i.bcc, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread941 ] ; 6 uses
  %indvars.iv1090 = phi i64 [ 512, %bb.fw ], [ %indvars.iv.next1091, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread941 ] ; 6 uses
  %i.azv = getelementptr [16 x i8], ptr %i.azu, i64 %indvars.iv1090
  %i.azw = getelementptr i8, ptr %i.azv, i64 -7932
  %i.azx = load i8, ptr %i.azw, align 4, !tbaa !257, !range !119, !noundef !254
  %i.azy = trunc nuw i8 %i.azx to i1
  br i1 %i.azy, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread941

_ZN5ImGui9IsKeyDownE8ImGuiKey.exit:               ; preds = %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i
  %i.azz = getelementptr [12 x i8], ptr %i.azu, i64 %indvars.iv1090
  %i.baa = getelementptr i8, ptr %i.azz, i64 -716
  %i.bab = load i8, ptr %i.baa, align 4, !tbaa !535, !range !119, !noundef !254
  %i.bac = icmp eq i8 %i.bab, 0
  br i1 %i.bac, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread941

_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread:        ; preds = %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit
  %i.bad = getelementptr inbounds nuw i8, ptr %i.azu, i64 5184
  %i.bae = load ptr, ptr %i.bad, align 8, !tbaa !309 ; 10 uses
  %i.baf = getelementptr inbounds nuw i8, ptr %i.bae, i64 209
  %i.bag = load i8, ptr %i.baf, align 1, !tbaa !918, !range !119, !noundef !254
  %i.bah = trunc nuw i8 %i.bag to i1
  br i1 %i.bah, label %_ZN5ImGui8SameLineEff.exit657, label %bb.fy

bb.fy:                                            ; preds = %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread
  %i.bai = getelementptr inbounds nuw i8, ptr %i.azu, i64 3228
  %i.baj = load float, ptr %i.bai, align 4, !tbaa !976
  %i.bak = getelementptr inbounds nuw i8, ptr %i.bae, i64 280
  %i.bal = getelementptr inbounds nuw i8, ptr %i.bae, i64 288
  %i.bam = load float, ptr %i.bal, align 8, !tbaa !977
  %i.ban = fadd float %i.baj, %i.bam
  store float %i.ban, ptr %i.bak, align 8, !tbaa !978
  %i.bao = getelementptr inbounds nuw i8, ptr %i.bae, i64 292
  %i.bap = load float, ptr %i.bao, align 4, !tbaa !342
  %i.baq = getelementptr inbounds nuw i8, ptr %i.bae, i64 284
  store float %i.bap, ptr %i.baq, align 4, !tbaa !339
  %i.bar = getelementptr inbounds nuw i8, ptr %i.bae, i64 328
  %i.bas = getelementptr inbounds nuw i8, ptr %i.bae, i64 320
  %i.bat = load i64, ptr %i.bar, align 8
  store i64 %i.bat, ptr %i.bas, align 8
  %i.bau = getelementptr inbounds nuw i8, ptr %i.bae, i64 340
  %i.bav = load float, ptr %i.bau, align 4, !tbaa !973
  %i.baw = getelementptr inbounds nuw i8, ptr %i.bae, i64 336
  store float %i.bav, ptr %i.baw, align 8, !tbaa !974
  %i.bax = getelementptr inbounds nuw i8, ptr %i.bae, i64 344
  store i8 1, ptr %i.bax, align 8, !tbaa !975
  br label %_ZN5ImGui8SameLineEff.exit657

_ZN5ImGui8SameLineEff.exit657:                    ; preds = %bb.fy, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread
  %i.bay = getelementptr [8 x i8], ptr @_ZL9GKeyNames, i64 %indvars.iv1090
  %i.baz = getelementptr i8, ptr %i.bay, i64 -4096
  %i.bba = load ptr, ptr %i.baz, align 8, !tbaa !276
  %i.bbb = trunc nuw nsw i64 %indvars.iv1090 to i32
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.341, ptr noundef %i.bba, i32 noundef %i.bbb) #35
  %i.bbc = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 3 uses
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.bbc, i64 5184
  %i.bbe = load ptr, ptr %i.bbd, align 8, !tbaa !309 ; 10 uses
  %i.bbf = getelementptr inbounds nuw i8, ptr %i.bbe, i64 209
  %i.bbg = load i8, ptr %i.bbf, align 1, !tbaa !918, !range !119, !noundef !254
  %i.bbh = trunc nuw i8 %i.bbg to i1
  br i1 %i.bbh, label %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit, label %bb.fz

bb.fz:                                            ; preds = %_ZN5ImGui8SameLineEff.exit657
  %i.bbi = getelementptr inbounds nuw i8, ptr %i.bbc, i64 3228
  %i.bbj = load float, ptr %i.bbi, align 4, !tbaa !976
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.bbe, i64 280
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.bbe, i64 288
  %i.bbm = load float, ptr %i.bbl, align 8, !tbaa !977
  %i.bbn = fadd float %i.bbj, %i.bbm
  store float %i.bbn, ptr %i.bbk, align 8, !tbaa !978
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.bbe, i64 292
  %i.bbp = load float, ptr %i.bbo, align 4, !tbaa !342
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.bbe, i64 284
  store float %i.bbp, ptr %i.bbq, align 4, !tbaa !339
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.bbe, i64 328
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.bbe, i64 320
  %i.bbt = load i64, ptr %i.bbr, align 8
  store i64 %i.bbt, ptr %i.bbs, align 8
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.bbe, i64 340
  %i.bbv = load float, ptr %i.bbu, align 4, !tbaa !973
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.bbe, i64 336
  store float %i.bbv, ptr %i.bbw, align 8, !tbaa !974
  %i.bbx = getelementptr inbounds nuw i8, ptr %i.bbe, i64 344
  store i8 1, ptr %i.bbx, align 8, !tbaa !975
  br label %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit

_ZN5ImGui10GetKeyDataE8ImGuiKey.exit:             ; preds = %bb.fz, %_ZN5ImGui8SameLineEff.exit657
  %i.bby = getelementptr [16 x i8], ptr %i.bbc, i64 %indvars.iv1090
  %i.bbz = getelementptr i8, ptr %i.bby, i64 -7928
  %i.bca = load float, ptr %i.bbz, align 4, !tbaa !788
  %i.bcb = fpext float %i.bca to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.363, double noundef %i.bcb) #35
  %.pre1152.a = load ptr, ptr @GImGui, align 8, !tbaa !245
  br label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread941

_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread941:     ; preds = %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit, %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit
  %i.bcc = phi ptr [ %i.azu, %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i ], [ %i.azu, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit ], [ %.pre1152.a, %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit ]
  %indvars.iv.next1091 = add nuw nsw i64 %indvars.iv1090, 1 ; 2 uses
  %exitcond1093.not = icmp eq i64 %indvars.iv.next1091, 667
  br i1 %exitcond1093.not, label %bb.fx, label %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i, !llvm.loop !1618

bb.ga:                                            ; preds = %bb.ge
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.365) #35
  %.pre1155.a = load ptr, ptr @GImGui, align 8, !tbaa !245
  br label %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i679

bb.gb:                                            ; preds = %bb.fx, %bb.ge
  %indvars.iv1094 = phi i64 [ 512, %bb.fx ], [ %indvars.iv.next1095, %bb.ge ] ; 3 uses
  %i.bcd = trunc nuw nsw i64 %indvars.iv1094 to i32 ; 2 uses
  %i.bce = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyij(i32 noundef %i.bcd, i32 noundef 1, i32 noundef 0)
  br i1 %i.bce, label %bb.gc, label %bb.ge

bb.gc:                                            ; preds = %bb.gb
  %i.bcf = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.bcg = getelementptr inbounds nuw i8, ptr %i.bcf, i64 5184
  %i.bch = load ptr, ptr %i.bcg, align 8, !tbaa !309 ; 10 uses
  %i.bci = getelementptr inbounds nuw i8, ptr %i.bch, i64 209
  %i.bcj = load i8, ptr %i.bci, align 1, !tbaa !918, !range !119, !noundef !254
  %i.bck = trunc nuw i8 %i.bcj to i1
  br i1 %i.bck, label %_ZN5ImGui8SameLineEff.exit667, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.bcf, i64 3228
  %i.bcm = load float, ptr %i.bcl, align 4, !tbaa !976
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.bch, i64 280
  %i.bco = getelementptr inbounds nuw i8, ptr %i.bch, i64 288
  %i.bcp = load float, ptr %i.bco, align 8, !tbaa !977
  %i.bcq = fadd float %i.bcm, %i.bcp
  store float %i.bcq, ptr %i.bcn, align 8, !tbaa !978
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.bch, i64 292
  %i.bcs = load float, ptr %i.bcr, align 4, !tbaa !342
  %i.bct = getelementptr inbounds nuw i8, ptr %i.bch, i64 284
  store float %i.bcs, ptr %i.bct, align 4, !tbaa !339
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bch, i64 328
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.bch, i64 320
  %i.bcw = load i64, ptr %i.bcu, align 8
  store i64 %i.bcw, ptr %i.bcv, align 8
  %i.bcx = getelementptr inbounds nuw i8, ptr %i.bch, i64 340
  %i.bcy = load float, ptr %i.bcx, align 4, !tbaa !973
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.bch, i64 336
  store float %i.bcy, ptr %i.bcz, align 8, !tbaa !974
  %i.bda = getelementptr inbounds nuw i8, ptr %i.bch, i64 344
  store i8 1, ptr %i.bda, align 8, !tbaa !975
  br label %_ZN5ImGui8SameLineEff.exit667

_ZN5ImGui8SameLineEff.exit667:                    ; preds = %bb.gc, %bb.gd
  %i.bdb = getelementptr [8 x i8], ptr @_ZL9GKeyNames, i64 %indvars.iv1094
  %i.bdc = getelementptr i8, ptr %i.bdb, i64 -4096
  %i.bdd = load ptr, ptr %i.bdc, align 8, !tbaa !276
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.341, ptr noundef %i.bdd, i32 noundef %i.bcd) #35
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gb, %_ZN5ImGui8SameLineEff.exit667
  %indvars.iv.next1095 = add nuw nsw i64 %indvars.iv1094, 1 ; 2 uses
  %exitcond1097.not = icmp eq i64 %indvars.iv.next1095, 667
  br i1 %exitcond1097.not, label %bb.ga, label %bb.gb, !llvm.loop !1619

bb.gf:                                            ; preds = %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.thread945
  %i.bde = getelementptr inbounds nuw i8, ptr %i.g, i64 252
  %i.bdf = load i8, ptr %i.bde, align 4, !tbaa !781, !range !119, !noundef !254
  %i.bdg = trunc nuw i8 %i.bdf to i1
  %i.bdh = select i1 %i.bdg, ptr @.str.367, ptr @.str.4
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.g, i64 253
  %i.bdj = load i8, ptr %i.bdi, align 1, !tbaa !782, !range !119, !noundef !254
  %i.bdk = trunc nuw i8 %i.bdj to i1
  %i.bdl = select i1 %i.bdk, ptr @.str.368, ptr @.str.4
  %i.bdm = getelementptr inbounds nuw i8, ptr %i.g, i64 254
  %i.bdn = load i8, ptr %i.bdm, align 2, !tbaa !783, !range !119, !noundef !254
  %i.bdo = trunc nuw i8 %i.bdn to i1
  %i.bdp = select i1 %i.bdo, ptr @.str.369, ptr @.str.4
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.g, i64 255
  %i.bdr = load i8, ptr %i.bdq, align 1, !tbaa !784, !range !119, !noundef !254
  %i.bds = trunc nuw i8 %i.bdr to i1
  %i.bdt = select i1 %i.bds, ptr @.str.370, ptr @.str.4
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.366, ptr noundef nonnull %i.bdh, ptr noundef nonnull %i.bdl, ptr noundef nonnull %i.bdp, ptr noundef nonnull %i.bdt) #35
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.371) #35
  %i.bdu = getelementptr inbounds nuw i8, ptr %i.g, i64 2992 ; 2 uses
  %i.bdv = load i32, ptr %i.bdu, align 8, !tbaa !811
  %i.bdw = icmp sgt i32 %i.bdv, 0
  br i1 %i.bdw, label %.lr.ph1037, label %._crit_edge1038

.lr.ph1037:                                       ; preds = %bb.gf
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.g, i64 3000
  br label %bb.gi

_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i679:      ; preds = %bb.ga, %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.thread945
  %i.bdy = phi ptr [ %.pre1155.a, %bb.ga ], [ %i.bfj, %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.thread945 ] ; 7 uses
  %indvars.iv1098 = phi i64 [ 512, %bb.ga ], [ %indvars.iv.next1099, %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.thread945 ] ; 5 uses
  %i.bdz = getelementptr [16 x i8], ptr %i.bdy, i64 %indvars.iv1098 ; 2 uses
  %i.bea = getelementptr i8, ptr %i.bdz, i64 -7924
  %i.beb = load float, ptr %i.bea, align 4, !tbaa !789
  %i.bec = fcmp olt float %i.beb, 0.000000e+00
  br i1 %i.bec, label %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.thread945, label %bb.gg

bb.gg:                                            ; preds = %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i679
  %i.bed = getelementptr i8, ptr %i.bdz, i64 -7932
  %i.bee = load i8, ptr %i.bed, align 4, !tbaa !257, !range !119, !noundef !254
  %i.bef = trunc nuw i8 %i.bee to i1
  br i1 %i.bef, label %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.thread945, label %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit

_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit:          ; preds = %bb.gg
  %i.beg = getelementptr [12 x i8], ptr %i.bdy, i64 %indvars.iv1098
  %i.beh = getelementptr i8, ptr %i.beg, i64 -716
  %i.bei = load i8, ptr %i.beh, align 4, !tbaa !535, !range !119, !noundef !254
  %i.bej = icmp eq i8 %i.bei, 0
  br i1 %i.bej, label %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.thread, label %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.thread945

_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.thread:   ; preds = %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit
  %i.bek = getelementptr inbounds nuw i8, ptr %i.bdy, i64 5184
  %i.bel = load ptr, ptr %i.bek, align 8, !tbaa !309 ; 10 uses
  %i.bem = getelementptr inbounds nuw i8, ptr %i.bel, i64 209
  %i.ben = load i8, ptr %i.bem, align 1, !tbaa !918, !range !119, !noundef !254
  %i.beo = trunc nuw i8 %i.ben to i1
  br i1 %i.beo, label %_ZN5ImGui8SameLineEff.exit690, label %bb.gh

bb.gh:                                            ; preds = %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.thread
  %i.bep = getelementptr inbounds nuw i8, ptr %i.bdy, i64 3228
  %i.beq = load float, ptr %i.bep, align 4, !tbaa !976
  %i.ber = getelementptr inbounds nuw i8, ptr %i.bel, i64 280
  %i.bes = getelementptr inbounds nuw i8, ptr %i.bel, i64 288
  %i.bet = load float, ptr %i.bes, align 8, !tbaa !977
  %i.beu = fadd float %i.beq, %i.bet
  store float %i.beu, ptr %i.ber, align 8, !tbaa !978
  %i.bev = getelementptr inbounds nuw i8, ptr %i.bel, i64 292
  %i.bew = load float, ptr %i.bev, align 4, !tbaa !342
  %i.bex = getelementptr inbounds nuw i8, ptr %i.bel, i64 284
  store float %i.bew, ptr %i.bex, align 4, !tbaa !339
  %i.bey = getelementptr inbounds nuw i8, ptr %i.bel, i64 328
  %i.bez = getelementptr inbounds nuw i8, ptr %i.bel, i64 320
  %i.bfa = load i64, ptr %i.bey, align 8
  store i64 %i.bfa, ptr %i.bez, align 8
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.bel, i64 340
  %i.bfc = load float, ptr %i.bfb, align 4, !tbaa !973
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.bel, i64 336
  store float %i.bfc, ptr %i.bfd, align 8, !tbaa !974
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.bel, i64 344
  store i8 1, ptr %i.bfe, align 8, !tbaa !975
  br label %_ZN5ImGui8SameLineEff.exit690

_ZN5ImGui8SameLineEff.exit690:                    ; preds = %bb.gh, %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.thread
  %i.bff = getelementptr [8 x i8], ptr @_ZL9GKeyNames, i64 %indvars.iv1098
  %i.bfg = getelementptr i8, ptr %i.bff, i64 -4096
  %i.bfh = load ptr, ptr %i.bfg, align 8, !tbaa !276
  %i.bfi = trunc nuw nsw i64 %indvars.iv1098 to i32
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.341, ptr noundef %i.bfh, i32 noundef %i.bfi) #35
  %.pre1154.a = load ptr, ptr @GImGui, align 8, !tbaa !245
  br label %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.thread945

_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.thread945: ; preds = %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i679, %bb.gg, %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit, %_ZN5ImGui8SameLineEff.exit690
  %i.bfj = phi ptr [ %i.bdy, %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i679 ], [ %i.bdy, %bb.gg ], [ %i.bdy, %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit ], [ %.pre1154.a, %_ZN5ImGui8SameLineEff.exit690 ]
  %indvars.iv.next1099 = add nuw nsw i64 %indvars.iv1098, 1 ; 2 uses
  %exitcond1101.not = icmp eq i64 %indvars.iv.next1099, 667
  br i1 %exitcond1101.not, label %bb.gf, label %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i679, !llvm.loop !1620

._crit_edge1038:                                  ; preds = %_ZN5ImGui8SameLineEff.exit702, %bb.gf
  %i.bfk = load ptr, ptr @GImGui, align 8, !tbaa !245
  %i.bfl = getelementptr inbounds nuw i8, ptr %i.bfk, i64 5184
  %i.bfm = load ptr, ptr %i.bfl, align 8, !tbaa !309 ; 2 uses
  %i.bfn = getelementptr inbounds nuw i8, ptr %i.bfm, i64 206
  store i8 1, ptr %i.bfn, align 2, !tbaa !688
  %i.bfo = getelementptr inbounds nuw i8, ptr %i.bfm, i64 712
  %i.bfp = load ptr, ptr %i.bfo, align 8, !tbaa !423
  call void @_ZN5ImGui26DebugRenderKeyboardPreviewEP10ImDrawList(ptr noundef %i.bfp)
  %i.bfq = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.bfq, i64 5184
  %i.bfs = load ptr, ptr %i.bfr, align 8, !tbaa !309 ; 5 uses
  %i.bft = getelementptr inbounds nuw i8, ptr %i.bfs, i64 206
  store i8 1, ptr %i.bft, align 2, !tbaa !688
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.bfq, i64 3260
  %i.bfv = load float, ptr %i.bfu, align 4, !tbaa !1040
  %i.bfw = getelementptr inbounds nuw i8, ptr %i.bfs, i64 280
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.bfs, i64 348 ; 2 uses
  %i.bfy = load float, ptr %i.bfx, align 4, !tbaa !945
  %i.bfz = fsub float %i.bfy, %i.bfv              ; 2 uses
  store float %i.bfz, ptr %i.bfx, align 4, !tbaa !945
  %i.bga = getelementptr inbounds nuw i8, ptr %i.bfs, i64 40
  %i.bgb = load float, ptr %i.bga, align 8, !tbaa !704
  %i.bgc = fadd float %i.bfz, %i.bgb
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.bfs, i64 352
  %i.bge = load float, ptr %i.bgd, align 8, !tbaa !999
  %i.bgf = fadd float %i.bgc, %i.bge
  store float %i.bgf, ptr %i.bfw, align 8, !tbaa !978
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.373) #35
  %i.bgg = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 4 uses
  %i.bgh = getelementptr inbounds nuw i8, ptr %i.bgg, i64 5184
  %i.bgi = load ptr, ptr %i.bgh, align 8, !tbaa !309 ; 5 uses
  %i.bgj = getelementptr inbounds nuw i8, ptr %i.bgi, i64 206
  store i8 1, ptr %i.bgj, align 2, !tbaa !688
  %i.bgk = getelementptr inbounds nuw i8, ptr %i.bgg, i64 3260
  %i.bgl = load float, ptr %i.bgk, align 4, !tbaa !1040
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.bgi, i64 280
  %i.bgn = getelementptr inbounds nuw i8, ptr %i.bgi, i64 348 ; 2 uses
  %i.bgo = load float, ptr %i.bgn, align 4, !tbaa !945
  %i.bgp = fadd float %i.bgl, %i.bgo              ; 2 uses
  store float %i.bgp, ptr %i.bgn, align 4, !tbaa !945
  %i.bgq = getelementptr inbounds nuw i8, ptr %i.bgi, i64 40
  %i.bgr = load float, ptr %i.bgq, align 8, !tbaa !704
  %i.bgs = fadd float %i.bgp, %i.bgr
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.bgi, i64 352
  %i.bgu = load float, ptr %i.bgt, align 8, !tbaa !999
  %i.bgv = fadd float %i.bgs, %i.bgu
  store float %i.bgv, ptr %i.bgm, align 8, !tbaa !978
  %i.bgw = getelementptr inbounds nuw i8, ptr %i.bgg, i64 224
  %.sroa.0.0.copyload.i700 = load float, ptr %i.bgw, align 8, !tbaa !86
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bgg, i64 228
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !86
  %i.bgx = fcmp oge float %.sroa.0.0.copyload.i700, -2.560000e+05
  %i.bgy = fcmp oge float %.sroa.4.0.copyload.i, -2.560000e+05
  %i.bgz = select i1 %i.bgx, i1 %i.bgy, i1 false
  br i1 %i.bgz, label %bb.gk, label %bb.gl

bb.gi:                                            ; preds = %.lr.ph1037, %_ZN5ImGui8SameLineEff.exit702
  %indvars.iv1102 = phi i64 [ 0, %.lr.ph1037 ], [ %indvars.iv.next1103, %_ZN5ImGui8SameLineEff.exit702 ] ; 2 uses
  %i.bha = load ptr, ptr %i.bdx, align 8, !tbaa !259
  %i.bhb = getelementptr inbounds nuw [2 x i8], ptr %i.bha, i64 %indvars.iv1102
  %i.bhc = load i16, ptr %i.bhb, align 2, !tbaa !275 ; 2 uses
  %i.bhd = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bhd, i64 5184
  %i.bhf = load ptr, ptr %i.bhe, align 8, !tbaa !309 ; 10 uses
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.bhf, i64 209
  %i.bhh = load i8, ptr %i.bhg, align 1, !tbaa !918, !range !119, !noundef !254
  %i.bhi = trunc nuw i8 %i.bhh to i1
  br i1 %i.bhi, label %_ZN5ImGui8SameLineEff.exit702, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.bhd, i64 3228
  %i.bhk = load float, ptr %i.bhj, align 4, !tbaa !976
  %i.bhl = getelementptr inbounds nuw i8, ptr %i.bhf, i64 280
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bhf, i64 288
  %i.bhn = load float, ptr %i.bhm, align 8, !tbaa !977
  %i.bho = fadd float %i.bhk, %i.bhn
  store float %i.bho, ptr %i.bhl, align 8, !tbaa !978
  %i.bhp = getelementptr inbounds nuw i8, ptr %i.bhf, i64 292
  %i.bhq = load float, ptr %i.bhp, align 4, !tbaa !342
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bhf, i64 284
  store float %i.bhq, ptr %i.bhr, align 4, !tbaa !339
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bhf, i64 328
  %i.bht = getelementptr inbounds nuw i8, ptr %i.bhf, i64 320
  %i.bhu = load i64, ptr %i.bhs, align 8
  store i64 %i.bhu, ptr %i.bht, align 8
  %i.bhv = getelementptr inbounds nuw i8, ptr %i.bhf, i64 340
  %i.bhw = load float, ptr %i.bhv, align 4, !tbaa !973
  %i.bhx = getelementptr inbounds nuw i8, ptr %i.bhf, i64 336
  store float %i.bhw, ptr %i.bhx, align 8, !tbaa !974
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.bhf, i64 344
  store i8 1, ptr %i.bhy, align 8, !tbaa !975
  br label %_ZN5ImGui8SameLineEff.exit702

_ZN5ImGui8SameLineEff.exit702:                    ; preds = %bb.gi, %bb.gj
  %i.bhz = zext i16 %i.bhc to i32                 ; 2 uses
  %i.bia = add i16 %i.bhc, -33
  %or.cond4 = icmp ult i16 %i.bia, 223
  %sext = shl i32 %i.bhz, 24
  %i.bib = ashr exact i32 %sext, 24
  %i.bic = select i1 %or.cond4, i32 %i.bib, i32 63
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.372, i32 noundef %i.bic, i32 noundef %i.bhz) #35
  %indvars.iv.next1103 = add nuw nsw i64 %indvars.iv1102, 1 ; 2 uses
  %i.bid = load i32, ptr %i.bdu, align 8, !tbaa !811
  %i.bie = sext i32 %i.bid to i64
  %i.bif = icmp slt i64 %indvars.iv.next1103, %i.bie
  br i1 %i.bif, label %bb.gi, label %._crit_edge1038, !llvm.loop !1621

bb.gk:                                            ; preds = %._crit_edge1038
  %i.big = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %i.bih = load <2 x float>, ptr %i.big, align 8, !tbaa !86
  %i.bii = fpext <2 x float> %i.bih to <2 x double> ; 2 uses
  %i.bij = extractelement <2 x double> %i.bii, i64 0
  %i.bik = extractelement <2 x double> %i.bii, i64 1
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.374, double noundef %i.bij, double noundef %i.bik) #35
  br label %bb.gm

bb.gl:                                            ; preds = %._crit_edge1038
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.375) #35
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gk
  %i.bil = getelementptr inbounds nuw i8, ptr %i.g, i64 204
  %i.bim = load <2 x float>, ptr %i.bil, align 4, !tbaa !86
  %i.bin = fpext <2 x float> %i.bim to <2 x double> ; 2 uses
  %i.bio = extractelement <2 x double> %i.bin, i64 0
  %i.bip = extractelement <2 x double> %i.bin, i64 1
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.376, double noundef %i.bio, double noundef %i.bip) #35
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.377) #35
  %i.biq = getelementptr inbounds nuw i8, ptr %i.g, i64 2924
  %i.bir = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 6 uses
  %i.bis = getelementptr inbounds nuw i8, ptr %i.bir, i64 232
  %i.bit = load i8, ptr %i.bis, align 1, !tbaa !261, !range !119, !noundef !254
  %i.biu = trunc nuw i8 %i.bit to i1
  br i1 %i.biu, label %_ZN5ImGui11IsMouseDownEi.exit, label %_ZN5ImGui11IsMouseDownEi.exit.thread

_ZN5ImGui11IsMouseDownEi.exit:                    ; preds = %bb.gm
  %i.biv = getelementptr i8, ptr %i.bir, i64 7156
  %i.biw = load i8, ptr %i.biv, align 4, !tbaa !535, !range !119, !noundef !254
  %i.bix = icmp eq i8 %i.biw, 0
  br i1 %i.bix, label %bb.gn, label %_ZN5ImGui11IsMouseDownEi.exit.thread

bb.gn:                                            ; preds = %_ZN5ImGui11IsMouseDownEi.exit
  %i.biy = getelementptr inbounds nuw i8, ptr %i.bir, i64 5184
  %i.biz = load ptr, ptr %i.biy, align 8, !tbaa !309 ; 10 uses
  %i.bja = getelementptr inbounds nuw i8, ptr %i.biz, i64 209
  %i.bjb = load i8, ptr %i.bja, align 1, !tbaa !918, !range !119, !noundef !254
  %i.bjc = trunc nuw i8 %i.bjb to i1
  br i1 %i.bjc, label %_ZN5ImGui8SameLineEff.exit706, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.bjd = getelementptr inbounds nuw i8, ptr %i.bir, i64 3228
  %i.bje = load float, ptr %i.bjd, align 4, !tbaa !976
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.biz, i64 280
  %i.bjg = getelementptr inbounds nuw i8, ptr %i.biz, i64 288
  %i.bjh = load float, ptr %i.bjg, align 8, !tbaa !977
  %i.bji = fadd float %i.bje, %i.bjh
  store float %i.bji, ptr %i.bjf, align 8, !tbaa !978
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.biz, i64 292
  %i.bjk = load float, ptr %i.bjj, align 4, !tbaa !342
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.biz, i64 284
  store float %i.bjk, ptr %i.bjl, align 4, !tbaa !339
  %i.bjm = getelementptr inbounds nuw i8, ptr %i.biz, i64 328
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.biz, i64 320
  %i.bjo = load i64, ptr %i.bjm, align 8
  store i64 %i.bjo, ptr %i.bjn, align 8
  %i.bjp = getelementptr inbounds nuw i8, ptr %i.biz, i64 340
  %i.bjq = load float, ptr %i.bjp, align 4, !tbaa !973
  %i.bjr = getelementptr inbounds nuw i8, ptr %i.biz, i64 336
  store float %i.bjq, ptr %i.bjr, align 8, !tbaa !974
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.biz, i64 344
  store i8 1, ptr %i.bjs, align 8, !tbaa !975
  br label %_ZN5ImGui8SameLineEff.exit706

_ZN5ImGui8SameLineEff.exit706:                    ; preds = %bb.gn, %bb.go
  %i.bjt = load float, ptr %i.biq, align 4, !tbaa !86
  %i.bju = fpext float %i.bjt to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.378, i32 noundef 0, double noundef %i.bju) #35
  %.pre1156.a = load ptr, ptr @GImGui, align 8, !tbaa !245
  br label %_ZN5ImGui11IsMouseDownEi.exit.thread

_ZN5ImGui11IsMouseDownEi.exit.thread:             ; preds = %bb.gm, %_ZN5ImGui11IsMouseDownEi.exit, %_ZN5ImGui8SameLineEff.exit706
  %i.bjv = phi ptr [ %i.bir, %bb.gm ], [ %i.bir, %_ZN5ImGui11IsMouseDownEi.exit ], [ %.pre1156.a, %_ZN5ImGui8SameLineEff.exit706 ] ; 6 uses
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.bjv, i64 233
  %i.bjx = load i8, ptr %i.bjw, align 1, !tbaa !261, !range !119, !noundef !254
  %i.bjy = trunc nuw i8 %i.bjx to i1
end_hunk_0
