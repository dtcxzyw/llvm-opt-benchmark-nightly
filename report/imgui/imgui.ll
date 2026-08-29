Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui?download=true
inline.NumInlined: 3345
inline.NumDeleted: 600
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZN5ImGui17ShowMetricsWindowEPb:bb.a
  %i.bfn = load i16, ptr %i.bfm, align 2, !tbaa !199
  %i.bfo = sext i16 %i.bfn to i32                 ; 2 uses
  %i.bfp = sub nsw i32 %i.bfl, %i.bfo
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.369, i32 noundef %i.bfi, i32 noundef %i.bfp, i32 noundef %i.bfl, i32 noundef %i.bfo)
  %.pre1243.a = load i16, ptr %i.bfa, align 4, !tbaa !195
  %i.bfq = sext i16 %.pre1243.a to i32
  %i.bfr = add nsw i32 %i.bfq, 2
  %i.bfs = srem i32 %i.bfr, 6
  %i.bft = sext i32 %i.bfs to i64
  %i.bfu = getelementptr inbounds [8 x i8], ptr %i.bez, i64 %i.bft ; 3 uses
  %i.bfv = load i32, ptr %i.bfu, align 4, !tbaa !196
  %i.bfw = getelementptr inbounds nuw i8, ptr %i.bfu, i64 4
  %i.bfx = load i16, ptr %i.bfw, align 4, !tbaa !198
  %i.bfy = sext i16 %i.bfx to i32                 ; 2 uses
  %i.bfz = getelementptr inbounds nuw i8, ptr %i.bfu, i64 6
  %i.bga = load i16, ptr %i.bfz, align 2, !tbaa !199
  %i.bgb = sext i16 %i.bga to i32                 ; 2 uses
  %i.bgc = sub nsw i32 %i.bfy, %i.bgb
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.369, i32 noundef %i.bfv, i32 noundef %i.bgc, i32 noundef %i.bfy, i32 noundef %i.bgb)
  %.pre1245.a = load i16, ptr %i.bfa, align 4, !tbaa !195
  %i.bgd = sext i16 %.pre1245.a to i32
  %i.bge = add nsw i32 %i.bgd, 3
  %i.bgf = srem i32 %i.bge, 6
  %i.bgg = sext i32 %i.bgf to i64
  %i.bgh = getelementptr inbounds [8 x i8], ptr %i.bez, i64 %i.bgg ; 3 uses
  %i.bgi = load i32, ptr %i.bgh, align 4, !tbaa !196
  %i.bgj = getelementptr inbounds nuw i8, ptr %i.bgh, i64 4
  %i.bgk = load i16, ptr %i.bgj, align 4, !tbaa !198
  %i.bgl = sext i16 %i.bgk to i32                 ; 2 uses
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.bgh, i64 6
  %i.bgn = load i16, ptr %i.bgm, align 2, !tbaa !199
  %i.bgo = sext i16 %i.bgn to i32                 ; 2 uses
  %i.bgp = sub nsw i32 %i.bgl, %i.bgo
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.369, i32 noundef %i.bgi, i32 noundef %i.bgp, i32 noundef %i.bgl, i32 noundef %i.bgo)
  %.pre1247.a = load i16, ptr %i.bfa, align 4, !tbaa !195
  %i.bgq = sext i16 %.pre1247.a to i32
  %i.bgr = add nsw i32 %i.bgq, 4
  %i.bgs = srem i32 %i.bgr, 6
  %i.bgt = sext i32 %i.bgs to i64
  %i.bgu = getelementptr inbounds [8 x i8], ptr %i.bez, i64 %i.bgt ; 3 uses
  %i.bgv = load i32, ptr %i.bgu, align 4, !tbaa !196
  %i.bgw = getelementptr inbounds nuw i8, ptr %i.bgu, i64 4
  %i.bgx = load i16, ptr %i.bgw, align 4, !tbaa !198
  %i.bgy = sext i16 %i.bgx to i32                 ; 2 uses
  %i.bgz = getelementptr inbounds nuw i8, ptr %i.bgu, i64 6
  %i.bha = load i16, ptr %i.bgz, align 2, !tbaa !199
  %i.bhb = sext i16 %i.bha to i32                 ; 2 uses
  %i.bhc = sub nsw i32 %i.bgy, %i.bhb
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.369, i32 noundef %i.bgv, i32 noundef %i.bhc, i32 noundef %i.bgy, i32 noundef %i.bhb)
  %.pre1249.a = load i16, ptr %i.bfa, align 4, !tbaa !195
  %i.bhd = sext i16 %.pre1249.a to i32
  %i.bhe = add nsw i32 %i.bhd, 5
  %i.bhf = srem i32 %i.bhe, 6
  %i.bhg = sext i32 %i.bhf to i64
  %i.bhh = getelementptr inbounds [8 x i8], ptr %i.bez, i64 %i.bhg ; 3 uses
  %i.bhi = load i32, ptr %i.bhh, align 4, !tbaa !196
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.bhh, i64 4
  %i.bhk = load i16, ptr %i.bhj, align 4, !tbaa !198
  %i.bhl = sext i16 %i.bhk to i32                 ; 2 uses
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bhh, i64 6
  %i.bhn = load i16, ptr %i.bhm, align 2, !tbaa !199
  %i.bho = sext i16 %i.bhn to i32                 ; 2 uses
  %i.bhp = sub nsw i32 %i.bhl, %i.bho
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.369, i32 noundef %i.bhi, i32 noundef %i.bhp, i32 noundef %i.bhl, i32 noundef %i.bho)
  %.pre1251.a = load i16, ptr %i.bfa, align 4, !tbaa !195
  %i.bhq = sext i16 %.pre1251.a to i32
  %i.bhr = add nsw i32 %i.bhq, 6
  %i.bhs = srem i32 %i.bhr, 6
  %i.bht = sext i32 %i.bhs to i64
  %i.bhu = getelementptr inbounds [8 x i8], ptr %i.bez, i64 %i.bht ; 4 uses
  %i.bhv = load i32, ptr %i.bhu, align 4, !tbaa !196
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.bhu, i64 4
  %i.bhx = load i16, ptr %i.bhw, align 4, !tbaa !198
  %i.bhy = sext i16 %i.bhx to i32                 ; 2 uses
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.bhu, i64 6
  %i.bia = load i16, ptr %i.bhz, align 2, !tbaa !199
  %i.bib = sext i16 %i.bia to i32                 ; 2 uses
  %i.bic = sub nsw i32 %i.bhy, %i.bib
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.369, i32 noundef %i.bhv, i32 noundef %i.bic, i32 noundef %i.bhy, i32 noundef %i.bib)
  %i.bid = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.bie = getelementptr inbounds nuw i8, ptr %i.bid, i64 5312
  %i.bif = load ptr, ptr %i.bie, align 8, !tbaa !298 ; 10 uses
  %i.big = getelementptr inbounds nuw i8, ptr %i.bif, i64 209
  %i.bih = load i8, ptr %i.big, align 1, !tbaa !1231, !range !64, !noundef !204
  %i.bii = trunc nuw i8 %i.bih to i1
  br i1 %i.bii, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.bij = getelementptr inbounds nuw i8, ptr %i.bid, i64 3300
  %i.bik = load float, ptr %i.bij, align 4, !tbaa !1374
  %i.bil = getelementptr inbounds nuw i8, ptr %i.bif, i64 280
  %i.bim = getelementptr inbounds nuw i8, ptr %i.bif, i64 288
  %i.bin = load float, ptr %i.bim, align 8, !tbaa !1373
  %i.bio = fadd float %i.bik, %i.bin
  store float %i.bio, ptr %i.bil, align 8, !tbaa !1343
  %i.bip = getelementptr inbounds nuw i8, ptr %i.bif, i64 292
  %i.biq = load float, ptr %i.bip, align 4, !tbaa !331
  %i.bir = getelementptr inbounds nuw i8, ptr %i.bif, i64 284
  store float %i.biq, ptr %i.bir, align 4, !tbaa !328
  %i.bis = getelementptr inbounds nuw i8, ptr %i.bif, i64 328
  %i.bit = getelementptr inbounds nuw i8, ptr %i.bif, i64 320
  %i.biu = load i64, ptr %i.bis, align 8
  store i64 %i.biu, ptr %i.bit, align 8
  %i.biv = getelementptr inbounds nuw i8, ptr %i.bif, i64 340
  %i.biw = load float, ptr %i.biv, align 4, !tbaa !1335
  %i.bix = getelementptr inbounds nuw i8, ptr %i.bif, i64 336
  store float %i.biw, ptr %i.bix, align 8, !tbaa !1336
  %i.biy = getelementptr inbounds nuw i8, ptr %i.bif, i64 344
  store i8 1, ptr %i.biy, align 8, !tbaa !1337
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hl, %bb.hm
  %i.biz = load i32, ptr %i.bfb, align 4, !tbaa !194
  %i.bja = load i32, ptr %i.bhu, align 4, !tbaa !196
  %i.bjb = sub nsw i32 %i.biz, %i.bja
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.370, i32 noundef %i.bjb)
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %bb.hi
  %i.bjc = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.371)
  br i1 %i.bjc, label %bb.hp, label %bb.la

bb.hp:                                            ; preds = %bb.ho
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.372)
  %i.bjd = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.bje = getelementptr inbounds nuw i8, ptr %i.bjd, i64 5312
  %i.bjf = load ptr, ptr %i.bje, align 8, !tbaa !298 ; 5 uses
  %i.bjg = getelementptr inbounds nuw i8, ptr %i.bjf, i64 206
  store i8 1, ptr %i.bjg, align 2, !tbaa !854
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.bjd, i64 3332
  %i.bji = load float, ptr %i.bjh, align 4, !tbaa !1480
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.bjf, i64 280
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bjf, i64 348 ; 2 uses
  %i.bjl = load float, ptr %i.bjk, align 4, !tbaa !1287
  %i.bjm = fadd float %i.bji, %i.bjl              ; 2 uses
  store float %i.bjm, ptr %i.bjk, align 4, !tbaa !1287
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.bjf, i64 40
  %i.bjo = load float, ptr %i.bjn, align 8, !tbaa !870
  %i.bjp = fadd float %i.bjm, %i.bjo
  %i.bjq = getelementptr inbounds nuw i8, ptr %i.bjf, i64 352
  %i.bjr = load float, ptr %i.bjq, align 8, !tbaa !1372
  %i.bjs = fadd float %i.bjp, %i.bjr
  store float %i.bjs, ptr %i.bjj, align 8, !tbaa !1343
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.373)
  %.pre1254.a = load ptr, ptr @GImGui, align 8, !tbaa !193
  br label %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i

bb.hq:                                            ; preds = %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread1031
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.376)
  br label %bb.hu

_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i:         ; preds = %bb.hp, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread1031
  %i.bjt = phi ptr [ %.pre1254.a, %bb.hp ], [ %i.bmb, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread1031 ] ; 6 uses
  %indvars.iv1190 = phi i64 [ 512, %bb.hp ], [ %indvars.iv.next1191, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread1031 ] ; 6 uses
  %i.bju = getelementptr [16 x i8], ptr %i.bjt, i64 %indvars.iv1190
  %i.bjv = getelementptr i8, ptr %i.bju, i64 -7884
  %i.bjw = load i8, ptr %i.bjv, align 4, !tbaa !208, !range !64, !noundef !204
  %i.bjx = trunc nuw i8 %i.bjw to i1
  br i1 %i.bjx, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread1031

_ZN5ImGui9IsKeyDownE8ImGuiKey.exit:               ; preds = %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i
  %i.bjy = getelementptr [12 x i8], ptr %i.bjt, i64 %indvars.iv1190
  %i.bjz = getelementptr i8, ptr %i.bjy, i64 -572
  %i.bka = load i8, ptr %i.bjz, align 4, !tbaa !624, !range !64, !noundef !204
  %i.bkb = icmp eq i8 %i.bka, 0
  br i1 %i.bkb, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread1031

_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread:        ; preds = %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.bjt, i64 5312
  %i.bkd = load ptr, ptr %i.bkc, align 8, !tbaa !298 ; 10 uses
  %i.bke = getelementptr inbounds nuw i8, ptr %i.bkd, i64 209
  %i.bkf = load i8, ptr %i.bke, align 1, !tbaa !1231, !range !64, !noundef !204
  %i.bkg = trunc nuw i8 %i.bkf to i1
  br i1 %i.bkg, label %_ZN5ImGui8SameLineEff.exit718, label %bb.hr

bb.hr:                                            ; preds = %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread
  %i.bkh = getelementptr inbounds nuw i8, ptr %i.bjt, i64 3300
  %i.bki = load float, ptr %i.bkh, align 4, !tbaa !1374
  %i.bkj = getelementptr inbounds nuw i8, ptr %i.bkd, i64 280
  %i.bkk = getelementptr inbounds nuw i8, ptr %i.bkd, i64 288
  %i.bkl = load float, ptr %i.bkk, align 8, !tbaa !1373
  %i.bkm = fadd float %i.bki, %i.bkl
  store float %i.bkm, ptr %i.bkj, align 8, !tbaa !1343
  %i.bkn = getelementptr inbounds nuw i8, ptr %i.bkd, i64 292
  %i.bko = load float, ptr %i.bkn, align 4, !tbaa !331
  %i.bkp = getelementptr inbounds nuw i8, ptr %i.bkd, i64 284
  store float %i.bko, ptr %i.bkp, align 4, !tbaa !328
  %i.bkq = getelementptr inbounds nuw i8, ptr %i.bkd, i64 328
  %i.bkr = getelementptr inbounds nuw i8, ptr %i.bkd, i64 320
  %i.bks = load i64, ptr %i.bkq, align 8
  store i64 %i.bks, ptr %i.bkr, align 8
  %i.bkt = getelementptr inbounds nuw i8, ptr %i.bkd, i64 340
  %i.bku = load float, ptr %i.bkt, align 4, !tbaa !1335
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.bkd, i64 336
  store float %i.bku, ptr %i.bkv, align 8, !tbaa !1336
  %i.bkw = getelementptr inbounds nuw i8, ptr %i.bkd, i64 344
  store i8 1, ptr %i.bkw, align 8, !tbaa !1337
  br label %_ZN5ImGui8SameLineEff.exit718

_ZN5ImGui8SameLineEff.exit718:                    ; preds = %bb.hr, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread
  %i.bkx = getelementptr [8 x i8], ptr @_ZL9GKeyNames, i64 %indvars.iv1190
  %i.bky = getelementptr i8, ptr %i.bkx, i64 -4096
  %i.bkz = load ptr, ptr %i.bky, align 8, !tbaa !243
  %i.bla = trunc nuw nsw i64 %indvars.iv1190 to i32
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.348, ptr noundef %i.bkz, i32 noundef %i.bla)
  %i.blb = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 3 uses
  %i.blc = getelementptr inbounds nuw i8, ptr %i.blb, i64 5312
  %i.bld = load ptr, ptr %i.blc, align 8, !tbaa !298 ; 10 uses
  %i.ble = getelementptr inbounds nuw i8, ptr %i.bld, i64 209
  %i.blf = load i8, ptr %i.ble, align 1, !tbaa !1231, !range !64, !noundef !204
  %i.blg = trunc nuw i8 %i.blf to i1
  br i1 %i.blg, label %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit, label %bb.hs

bb.hs:                                            ; preds = %_ZN5ImGui8SameLineEff.exit718
  %i.blh = getelementptr inbounds nuw i8, ptr %i.blb, i64 3300
  %i.bli = load float, ptr %i.blh, align 4, !tbaa !1374
  %i.blj = getelementptr inbounds nuw i8, ptr %i.bld, i64 280
  %i.blk = getelementptr inbounds nuw i8, ptr %i.bld, i64 288
  %i.bll = load float, ptr %i.blk, align 8, !tbaa !1373
  %i.blm = fadd float %i.bli, %i.bll
  store float %i.blm, ptr %i.blj, align 8, !tbaa !1343
  %i.bln = getelementptr inbounds nuw i8, ptr %i.bld, i64 292
  %i.blo = load float, ptr %i.bln, align 4, !tbaa !331
  %i.blp = getelementptr inbounds nuw i8, ptr %i.bld, i64 284
  store float %i.blo, ptr %i.blp, align 4, !tbaa !328
  %i.blq = getelementptr inbounds nuw i8, ptr %i.bld, i64 328
  %i.blr = getelementptr inbounds nuw i8, ptr %i.bld, i64 320
  %i.bls = load i64, ptr %i.blq, align 8
  store i64 %i.bls, ptr %i.blr, align 8
  %i.blt = getelementptr inbounds nuw i8, ptr %i.bld, i64 340
  %i.blu = load float, ptr %i.blt, align 4, !tbaa !1335
  %i.blv = getelementptr inbounds nuw i8, ptr %i.bld, i64 336
  store float %i.blu, ptr %i.blv, align 8, !tbaa !1336
  %i.blw = getelementptr inbounds nuw i8, ptr %i.bld, i64 344
  store i8 1, ptr %i.blw, align 8, !tbaa !1337
  br label %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit

_ZN5ImGui10GetKeyDataE8ImGuiKey.exit:             ; preds = %bb.hs, %_ZN5ImGui8SameLineEff.exit718
  %i.blx = getelementptr [16 x i8], ptr %i.blb, i64 %indvars.iv1190
  %i.bly = getelementptr i8, ptr %i.blx, i64 -7880
  %i.blz = load float, ptr %i.bly, align 4, !tbaa !1008
  %i.bma = fpext float %i.blz to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.375, double noundef %i.bma)
  %.pre1253.a = load ptr, ptr @GImGui, align 8, !tbaa !193
  br label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread1031

_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread1031:    ; preds = %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit, %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit
  %i.bmb = phi ptr [ %i.bjt, %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i ], [ %i.bjt, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit ], [ %.pre1253.a, %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit ]
  %indvars.iv.next1191 = add nuw nsw i64 %indvars.iv1190, 1 ; 2 uses
  %exitcond1193.not = icmp eq i64 %indvars.iv.next1191, 667
  br i1 %exitcond1193.not, label %bb.hq, label %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i, !llvm.loop !1672

bb.ht:                                            ; preds = %bb.hx
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.377)
  %.pre1256.a = load ptr, ptr @GImGui, align 8, !tbaa !193
  br label %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i740

bb.hu:                                            ; preds = %bb.hq, %bb.hx
  %indvars.iv1194 = phi i64 [ 512, %bb.hq ], [ %indvars.iv.next1195, %bb.hx ] ; 3 uses
  %i.bmc = trunc nuw nsw i64 %indvars.iv1194 to i32 ; 2 uses
  %i.bmd = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyij(i32 noundef %i.bmc, i32 noundef 1, i32 noundef 0)
  br i1 %i.bmd, label %bb.hv, label %bb.hx

bb.hv:                                            ; preds = %bb.hu
  %i.bme = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.bmf = getelementptr inbounds nuw i8, ptr %i.bme, i64 5312
  %i.bmg = load ptr, ptr %i.bmf, align 8, !tbaa !298 ; 10 uses
  %i.bmh = getelementptr inbounds nuw i8, ptr %i.bmg, i64 209
  %i.bmi = load i8, ptr %i.bmh, align 1, !tbaa !1231, !range !64, !noundef !204
  %i.bmj = trunc nuw i8 %i.bmi to i1
  br i1 %i.bmj, label %_ZN5ImGui8SameLineEff.exit728, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.bmk = getelementptr inbounds nuw i8, ptr %i.bme, i64 3300
  %i.bml = load float, ptr %i.bmk, align 4, !tbaa !1374
  %i.bmm = getelementptr inbounds nuw i8, ptr %i.bmg, i64 280
  %i.bmn = getelementptr inbounds nuw i8, ptr %i.bmg, i64 288
  %i.bmo = load float, ptr %i.bmn, align 8, !tbaa !1373
  %i.bmp = fadd float %i.bml, %i.bmo
  store float %i.bmp, ptr %i.bmm, align 8, !tbaa !1343
  %i.bmq = getelementptr inbounds nuw i8, ptr %i.bmg, i64 292
  %i.bmr = load float, ptr %i.bmq, align 4, !tbaa !331
  %i.bms = getelementptr inbounds nuw i8, ptr %i.bmg, i64 284
  store float %i.bmr, ptr %i.bms, align 4, !tbaa !328
  %i.bmt = getelementptr inbounds nuw i8, ptr %i.bmg, i64 328
  %i.bmu = getelementptr inbounds nuw i8, ptr %i.bmg, i64 320
  %i.bmv = load i64, ptr %i.bmt, align 8
  store i64 %i.bmv, ptr %i.bmu, align 8
  %i.bmw = getelementptr inbounds nuw i8, ptr %i.bmg, i64 340
  %i.bmx = load float, ptr %i.bmw, align 4, !tbaa !1335
  %i.bmy = getelementptr inbounds nuw i8, ptr %i.bmg, i64 336
  store float %i.bmx, ptr %i.bmy, align 8, !tbaa !1336
  %i.bmz = getelementptr inbounds nuw i8, ptr %i.bmg, i64 344
  store i8 1, ptr %i.bmz, align 8, !tbaa !1337
  br label %_ZN5ImGui8SameLineEff.exit728

_ZN5ImGui8SameLineEff.exit728:                    ; preds = %bb.hv, %bb.hw
  %i.bna = getelementptr [8 x i8], ptr @_ZL9GKeyNames, i64 %indvars.iv1194
  %i.bnb = getelementptr i8, ptr %i.bna, i64 -4096
  %i.bnc = load ptr, ptr %i.bnb, align 8, !tbaa !243
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.348, ptr noundef %i.bnc, i32 noundef %i.bmc)
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hu, %_ZN5ImGui8SameLineEff.exit728
  %indvars.iv.next1195 = add nuw nsw i64 %indvars.iv1194, 1 ; 2 uses
  %exitcond1197.not = icmp eq i64 %indvars.iv.next1195, 667
  br i1 %exitcond1197.not, label %bb.ht, label %bb.hu, !llvm.loop !1673

bb.hy:                                            ; preds = %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.thread1035
  %i.bnd = getelementptr inbounds nuw i8, ptr %i.g, i64 300
  %i.bne = load i8, ptr %i.bnd, align 4, !tbaa !1001, !range !64, !noundef !204
  %i.bnf = trunc nuw i8 %i.bne to i1
  %i.bng = select i1 %i.bnf, ptr @.str.379, ptr @.str.4
  %i.bnh = getelementptr inbounds nuw i8, ptr %i.g, i64 301
  %i.bni = load i8, ptr %i.bnh, align 1, !tbaa !1002, !range !64, !noundef !204
  %i.bnj = trunc nuw i8 %i.bni to i1
  %i.bnk = select i1 %i.bnj, ptr @.str.380, ptr @.str.4
  %i.bnl = getelementptr inbounds nuw i8, ptr %i.g, i64 302
  %i.bnm = load i8, ptr %i.bnl, align 2, !tbaa !1003, !range !64, !noundef !204
  %i.bnn = trunc nuw i8 %i.bnm to i1
  %i.bno = select i1 %i.bnn, ptr @.str.381, ptr @.str.4
  %i.bnp = getelementptr inbounds nuw i8, ptr %i.g, i64 303
  %i.bnq = load i8, ptr %i.bnp, align 1, !tbaa !1004, !range !64, !noundef !204
  %i.bnr = trunc nuw i8 %i.bnq to i1
  %i.bns = select i1 %i.bnr, ptr @.str.382, ptr @.str.4
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.378, ptr noundef nonnull %i.bng, ptr noundef nonnull %i.bnk, ptr noundef nonnull %i.bno, ptr noundef nonnull %i.bns)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.383)
  %i.bnt = getelementptr inbounds nuw i8, ptr %i.g, i64 3040 ; 2 uses
  %i.bnu = load i32, ptr %i.bnt, align 8, !tbaa !1054
  %i.bnv = icmp sgt i32 %i.bnu, 0
  br i1 %i.bnv, label %.lr.ph1131, label %._crit_edge1132

.lr.ph1131:                                       ; preds = %bb.hy
  %i.bnw = getelementptr inbounds nuw i8, ptr %i.g, i64 3048
  br label %bb.ib

_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i740:      ; preds = %bb.ht, %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.thread1035
  %i.bnx = phi ptr [ %.pre1256.a, %bb.ht ], [ %i.bpi, %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.thread1035 ] ; 7 uses
  %indvars.iv1198 = phi i64 [ 512, %bb.ht ], [ %indvars.iv.next1199, %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.thread1035 ] ; 5 uses
  %i.bny = getelementptr [16 x i8], ptr %i.bnx, i64 %indvars.iv1198 ; 2 uses
  %i.bnz = getelementptr i8, ptr %i.bny, i64 -7876
  %i.boa = load float, ptr %i.bnz, align 4, !tbaa !1009
  %i.bob = fcmp olt float %i.boa, 0.000000e+00
  br i1 %i.bob, label %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.thread1035, label %bb.hz

bb.hz:                                            ; preds = %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i740
  %i.boc = getelementptr i8, ptr %i.bny, i64 -7884
  %i.bod = load i8, ptr %i.boc, align 4, !tbaa !208, !range !64, !noundef !204
  %i.boe = trunc nuw i8 %i.bod to i1
  br i1 %i.boe, label %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.thread1035, label %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit

_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit:          ; preds = %bb.hz
  %i.bof = getelementptr [12 x i8], ptr %i.bnx, i64 %indvars.iv1198
  %i.bog = getelementptr i8, ptr %i.bof, i64 -572
  %i.boh = load i8, ptr %i.bog, align 4, !tbaa !624, !range !64, !noundef !204
  %i.boi = icmp eq i8 %i.boh, 0
  br i1 %i.boi, label %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.thread, label %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.thread1035

_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.thread:   ; preds = %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit
  %i.boj = getelementptr inbounds nuw i8, ptr %i.bnx, i64 5312
  %i.bok = load ptr, ptr %i.boj, align 8, !tbaa !298 ; 10 uses
  %i.bol = getelementptr inbounds nuw i8, ptr %i.bok, i64 209
  %i.bom = load i8, ptr %i.bol, align 1, !tbaa !1231, !range !64, !noundef !204
  %i.bon = trunc nuw i8 %i.bom to i1
  br i1 %i.bon, label %_ZN5ImGui8SameLineEff.exit751, label %bb.ia

bb.ia:                                            ; preds = %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.thread
  %i.boo = getelementptr inbounds nuw i8, ptr %i.bnx, i64 3300
  %i.bop = load float, ptr %i.boo, align 4, !tbaa !1374
  %i.boq = getelementptr inbounds nuw i8, ptr %i.bok, i64 280
  %i.bor = getelementptr inbounds nuw i8, ptr %i.bok, i64 288
  %i.bos = load float, ptr %i.bor, align 8, !tbaa !1373
  %i.bot = fadd float %i.bop, %i.bos
  store float %i.bot, ptr %i.boq, align 8, !tbaa !1343
  %i.bou = getelementptr inbounds nuw i8, ptr %i.bok, i64 292
  %i.bov = load float, ptr %i.bou, align 4, !tbaa !331
  %i.bow = getelementptr inbounds nuw i8, ptr %i.bok, i64 284
  store float %i.bov, ptr %i.bow, align 4, !tbaa !328
  %i.box = getelementptr inbounds nuw i8, ptr %i.bok, i64 328
  %i.boy = getelementptr inbounds nuw i8, ptr %i.bok, i64 320
  %i.boz = load i64, ptr %i.box, align 8
  store i64 %i.boz, ptr %i.boy, align 8
  %i.bpa = getelementptr inbounds nuw i8, ptr %i.bok, i64 340
  %i.bpb = load float, ptr %i.bpa, align 4, !tbaa !1335
  %i.bpc = getelementptr inbounds nuw i8, ptr %i.bok, i64 336
  store float %i.bpb, ptr %i.bpc, align 8, !tbaa !1336
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.bok, i64 344
  store i8 1, ptr %i.bpd, align 8, !tbaa !1337
  br label %_ZN5ImGui8SameLineEff.exit751

_ZN5ImGui8SameLineEff.exit751:                    ; preds = %bb.ia, %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.thread
  %i.bpe = getelementptr [8 x i8], ptr @_ZL9GKeyNames, i64 %indvars.iv1198
  %i.bpf = getelementptr i8, ptr %i.bpe, i64 -4096
  %i.bpg = load ptr, ptr %i.bpf, align 8, !tbaa !243
  %i.bph = trunc nuw nsw i64 %indvars.iv1198 to i32
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.348, ptr noundef %i.bpg, i32 noundef %i.bph)
  %.pre1255.a = load ptr, ptr @GImGui, align 8, !tbaa !193
  br label %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.thread1035

_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit.thread1035: ; preds = %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i740, %bb.hz, %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit, %_ZN5ImGui8SameLineEff.exit751
  %i.bpi = phi ptr [ %i.bnx, %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i740 ], [ %i.bnx, %bb.hz ], [ %i.bnx, %_ZN5ImGui13IsKeyReleasedE8ImGuiKey.exit ], [ %.pre1255.a, %_ZN5ImGui8SameLineEff.exit751 ]
  %indvars.iv.next1199 = add nuw nsw i64 %indvars.iv1198, 1 ; 2 uses
  %exitcond1201.not = icmp eq i64 %indvars.iv.next1199, 667
  br i1 %exitcond1201.not, label %bb.hy, label %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i740, !llvm.loop !1674

._crit_edge1132:                                  ; preds = %_ZN5ImGui8SameLineEff.exit764, %bb.hy
  %i.bpj = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.bpk = getelementptr inbounds nuw i8, ptr %i.bpj, i64 5312
  %i.bpl = load ptr, ptr %i.bpk, align 8, !tbaa !298 ; 2 uses
  %i.bpm = getelementptr inbounds nuw i8, ptr %i.bpl, i64 206
  store i8 1, ptr %i.bpm, align 2, !tbaa !854
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.bpl, i64 712
  %i.bpo = load ptr, ptr %i.bpn, align 8, !tbaa !452
  call void @_ZN5ImGui26DebugRenderKeyboardPreviewEP10ImDrawList(ptr noundef %i.bpo)
  %i.bpp = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.bpq = getelementptr inbounds nuw i8, ptr %i.bpp, i64 5312
  %i.bpr = load ptr, ptr %i.bpq, align 8, !tbaa !298 ; 5 uses
  %i.bps = getelementptr inbounds nuw i8, ptr %i.bpr, i64 206
  store i8 1, ptr %i.bps, align 2, !tbaa !854
  %i.bpt = getelementptr inbounds nuw i8, ptr %i.bpp, i64 3332
  %i.bpu = load float, ptr %i.bpt, align 4, !tbaa !1480
  %i.bpv = getelementptr inbounds nuw i8, ptr %i.bpr, i64 280
  %i.bpw = getelementptr inbounds nuw i8, ptr %i.bpr, i64 348 ; 2 uses
  %i.bpx = load float, ptr %i.bpw, align 4, !tbaa !1287
  %i.bpy = fsub float %i.bpx, %i.bpu              ; 2 uses
  store float %i.bpy, ptr %i.bpw, align 4, !tbaa !1287
  %i.bpz = getelementptr inbounds nuw i8, ptr %i.bpr, i64 40
  %i.bqa = load float, ptr %i.bpz, align 8, !tbaa !870
  %i.bqb = fadd float %i.bpy, %i.bqa
  %i.bqc = getelementptr inbounds nuw i8, ptr %i.bpr, i64 352
  %i.bqd = load float, ptr %i.bqc, align 8, !tbaa !1372
  %i.bqe = fadd float %i.bqb, %i.bqd
  store float %i.bqe, ptr %i.bpv, align 8, !tbaa !1343
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.385)
  %i.bqf = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 4 uses
  %i.bqg = getelementptr inbounds nuw i8, ptr %i.bqf, i64 5312
  %i.bqh = load ptr, ptr %i.bqg, align 8, !tbaa !298 ; 5 uses
  %i.bqi = getelementptr inbounds nuw i8, ptr %i.bqh, i64 206
  store i8 1, ptr %i.bqi, align 2, !tbaa !854
  %i.bqj = getelementptr inbounds nuw i8, ptr %i.bqf, i64 3332
  %i.bqk = load float, ptr %i.bqj, align 4, !tbaa !1480
  %i.bql = getelementptr inbounds nuw i8, ptr %i.bqh, i64 280
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bqh, i64 348 ; 2 uses
  %i.bqn = load float, ptr %i.bqm, align 4, !tbaa !1287
  %i.bqo = fadd float %i.bqk, %i.bqn              ; 2 uses
  store float %i.bqo, ptr %i.bqm, align 4, !tbaa !1287
  %i.bqp = getelementptr inbounds nuw i8, ptr %i.bqh, i64 40
  %i.bqq = load float, ptr %i.bqp, align 8, !tbaa !870
  %i.bqr = fadd float %i.bqo, %i.bqq
  %i.bqs = getelementptr inbounds nuw i8, ptr %i.bqh, i64 352
  %i.bqt = load float, ptr %i.bqs, align 8, !tbaa !1372
  %i.bqu = fadd float %i.bqr, %i.bqt
  store float %i.bqu, ptr %i.bql, align 8, !tbaa !1343
  %i.bqv = getelementptr inbounds nuw i8, ptr %i.bqf, i64 272
  %.sroa.0.0.copyload.i761 = load float, ptr %i.bqv, align 8, !tbaa !8
  %.sroa.4.0..sroa_idx.i762 = getelementptr inbounds nuw i8, ptr %i.bqf, i64 276
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0..sroa_idx.i762, align 4, !tbaa !8
  %i.bqw = fcmp oge float %.sroa.0.0.copyload.i761, -2.560000e+05
  %i.bqx = fcmp oge float %.sroa.4.0.copyload.i, -2.560000e+05
  %i.bqy = select i1 %i.bqw, i1 %i.bqx, i1 false
  br i1 %i.bqy, label %bb.id, label %bb.ie

bb.ib:                                            ; preds = %.lr.ph1131, %_ZN5ImGui8SameLineEff.exit764
  %indvars.iv1202 = phi i64 [ 0, %.lr.ph1131 ], [ %indvars.iv.next1203, %_ZN5ImGui8SameLineEff.exit764 ] ; 2 uses
  %i.bqz = load ptr, ptr %i.bnw, align 8, !tbaa !212
  %i.bra = getelementptr inbounds nuw [2 x i8], ptr %i.bqz, i64 %indvars.iv1202
  %i.brb = load i16, ptr %i.bra, align 2, !tbaa !235 ; 2 uses
  %i.brc = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.brd = getelementptr inbounds nuw i8, ptr %i.brc, i64 5312
  %i.bre = load ptr, ptr %i.brd, align 8, !tbaa !298 ; 10 uses
  %i.brf = getelementptr inbounds nuw i8, ptr %i.bre, i64 209
  %i.brg = load i8, ptr %i.brf, align 1, !tbaa !1231, !range !64, !noundef !204
  %i.brh = trunc nuw i8 %i.brg to i1
  br i1 %i.brh, label %_ZN5ImGui8SameLineEff.exit764, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.bri = getelementptr inbounds nuw i8, ptr %i.brc, i64 3300
  %i.brj = load float, ptr %i.bri, align 4, !tbaa !1374
  %i.brk = getelementptr inbounds nuw i8, ptr %i.bre, i64 280
  %i.brl = getelementptr inbounds nuw i8, ptr %i.bre, i64 288
  %i.brm = load float, ptr %i.brl, align 8, !tbaa !1373
  %i.brn = fadd float %i.brj, %i.brm
  store float %i.brn, ptr %i.brk, align 8, !tbaa !1343
  %i.bro = getelementptr inbounds nuw i8, ptr %i.bre, i64 292
  %i.brp = load float, ptr %i.bro, align 4, !tbaa !331
  %i.brq = getelementptr inbounds nuw i8, ptr %i.bre, i64 284
  store float %i.brp, ptr %i.brq, align 4, !tbaa !328
  %i.brr = getelementptr inbounds nuw i8, ptr %i.bre, i64 328
  %i.brs = getelementptr inbounds nuw i8, ptr %i.bre, i64 320
  %i.brt = load i64, ptr %i.brr, align 8
  store i64 %i.brt, ptr %i.brs, align 8
  %i.bru = getelementptr inbounds nuw i8, ptr %i.bre, i64 340
  %i.brv = load float, ptr %i.bru, align 4, !tbaa !1335
  %i.brw = getelementptr inbounds nuw i8, ptr %i.bre, i64 336
  store float %i.brv, ptr %i.brw, align 8, !tbaa !1336
  %i.brx = getelementptr inbounds nuw i8, ptr %i.bre, i64 344
  store i8 1, ptr %i.brx, align 8, !tbaa !1337
  br label %_ZN5ImGui8SameLineEff.exit764

_ZN5ImGui8SameLineEff.exit764:                    ; preds = %bb.ib, %bb.ic
  %i.bry = zext i16 %i.brb to i32                 ; 2 uses
  %i.brz = add i16 %i.brb, -33
  %or.cond4 = icmp ult i16 %i.brz, 223
  %sext = shl i32 %i.bry, 24
  %i.bsa = ashr exact i32 %sext, 24
  %i.bsb = select i1 %or.cond4, i32 %i.bsa, i32 63
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.384, i32 noundef %i.bsb, i32 noundef %i.bry)
  %indvars.iv.next1203 = add nuw nsw i64 %indvars.iv1202, 1 ; 2 uses
  %i.bsc = load i32, ptr %i.bnt, align 8, !tbaa !1054
  %i.bsd = sext i32 %i.bsc to i64
  %i.bse = icmp slt i64 %indvars.iv.next1203, %i.bsd
  br i1 %i.bse, label %bb.ib, label %._crit_edge1132, !llvm.loop !1675

bb.id:                                            ; preds = %._crit_edge1132
  %i.bsf = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.bsg = load <2 x float>, ptr %i.bsf, align 8, !tbaa !8
  %i.bsh = fpext <2 x float> %i.bsg to <2 x double> ; 2 uses
  %i.bsi = extractelement <2 x double> %i.bsh, i64 0
  %i.bsj = extractelement <2 x double> %i.bsh, i64 1
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.386, double noundef %i.bsi, double noundef %i.bsj)
  br label %bb.if

bb.ie:                                            ; preds = %._crit_edge1132
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.387)
  br label %bb.if

bb.if:                                            ; preds = %bb.ie, %bb.id
  %i.bsk = getelementptr inbounds nuw i8, ptr %i.g, i64 252
  %i.bsl = load <2 x float>, ptr %i.bsk, align 4, !tbaa !8
  %i.bsm = fpext <2 x float> %i.bsl to <2 x double> ; 2 uses
  %i.bsn = extractelement <2 x double> %i.bsm, i64 0
  %i.bso = extractelement <2 x double> %i.bsm, i64 1
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.388, double noundef %i.bsn, double noundef %i.bso)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.389)
  %i.bsp = getelementptr inbounds nuw i8, ptr %i.g, i64 2972
  %i.bsq = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 6 uses
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.bsq, i64 280
  %i.bss = load i8, ptr %i.bsr, align 1, !tbaa !215, !range !64, !noundef !204
  %i.bst = trunc nuw i8 %i.bss to i1
  br i1 %i.bst, label %_ZN5ImGui11IsMouseDownEi.exit, label %_ZN5ImGui11IsMouseDownEi.exit.thread

_ZN5ImGui11IsMouseDownEi.exit:                    ; preds = %bb.if
  %i.bsu = getelementptr i8, ptr %i.bsq, i64 7300
  %i.bsv = load i8, ptr %i.bsu, align 4, !tbaa !624, !range !64, !noundef !204
  %i.bsw = icmp eq i8 %i.bsv, 0
  br i1 %i.bsw, label %bb.ig, label %_ZN5ImGui11IsMouseDownEi.exit.thread

bb.ig:                                            ; preds = %_ZN5ImGui11IsMouseDownEi.exit
  %i.bsx = getelementptr inbounds nuw i8, ptr %i.bsq, i64 5312
  %i.bsy = load ptr, ptr %i.bsx, align 8, !tbaa !298 ; 10 uses
  %i.bsz = getelementptr inbounds nuw i8, ptr %i.bsy, i64 209
  %i.bta = load i8, ptr %i.bsz, align 1, !tbaa !1231, !range !64, !noundef !204
  %i.btb = trunc nuw i8 %i.bta to i1
  br i1 %i.btb, label %_ZN5ImGui8SameLineEff.exit769, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.btc = getelementptr inbounds nuw i8, ptr %i.bsq, i64 3300
  %i.btd = load float, ptr %i.btc, align 4, !tbaa !1374
  %i.bte = getelementptr inbounds nuw i8, ptr %i.bsy, i64 280
  %i.btf = getelementptr inbounds nuw i8, ptr %i.bsy, i64 288
  %i.btg = load float, ptr %i.btf, align 8, !tbaa !1373
  %i.bth = fadd float %i.btd, %i.btg
  store float %i.bth, ptr %i.bte, align 8, !tbaa !1343
  %i.bti = getelementptr inbounds nuw i8, ptr %i.bsy, i64 292
  %i.btj = load float, ptr %i.bti, align 4, !tbaa !331
  %i.btk = getelementptr inbounds nuw i8, ptr %i.bsy, i64 284
  store float %i.btj, ptr %i.btk, align 4, !tbaa !328
  %i.btl = getelementptr inbounds nuw i8, ptr %i.bsy, i64 328
  %i.btm = getelementptr inbounds nuw i8, ptr %i.bsy, i64 320
  %i.btn = load i64, ptr %i.btl, align 8
  store i64 %i.btn, ptr %i.btm, align 8
  %i.bto = getelementptr inbounds nuw i8, ptr %i.bsy, i64 340
  %i.btp = load float, ptr %i.bto, align 4, !tbaa !1335
  %i.btq = getelementptr inbounds nuw i8, ptr %i.bsy, i64 336
  store float %i.btp, ptr %i.btq, align 8, !tbaa !1336
  %i.btr = getelementptr inbounds nuw i8, ptr %i.bsy, i64 344
  store i8 1, ptr %i.btr, align 8, !tbaa !1337
  br label %_ZN5ImGui8SameLineEff.exit769

_ZN5ImGui8SameLineEff.exit769:                    ; preds = %bb.ig, %bb.ih
  %i.bts = load float, ptr %i.bsp, align 4, !tbaa !8
  %i.btt = fpext float %i.bts to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.390, i32 noundef 0, double noundef %i.btt)
  %.pre1257.a = load ptr, ptr @GImGui, align 8, !tbaa !193
  br label %_ZN5ImGui11IsMouseDownEi.exit.thread

_ZN5ImGui11IsMouseDownEi.exit.thread:             ; preds = %bb.if, %_ZN5ImGui11IsMouseDownEi.exit, %_ZN5ImGui8SameLineEff.exit769
  %i.btu = phi ptr [ %i.bsq, %bb.if ], [ %i.bsq, %_ZN5ImGui11IsMouseDownEi.exit ], [ %.pre1257.a, %_ZN5ImGui8SameLineEff.exit769 ] ; 6 uses
  %i.btv = getelementptr inbounds nuw i8, ptr %i.btu, i64 281
  %i.btw = load i8, ptr %i.btv, align 1, !tbaa !215, !range !64, !noundef !204
  %i.btx = trunc nuw i8 %i.btw to i1
end_hunk_0
