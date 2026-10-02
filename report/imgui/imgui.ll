Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui?download=true
inline.NumInlined: 3345
inline.NumDeleted: 600
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZN5ImGui17ShowMetricsWindowEPb:bb.a
  %.not6.i = icmp eq ptr %i.apf, null
  br i1 %.not6.i, label %_ZN8ImVectorIcE7reserveEi.exit, label %bb.ey

bb.ey:                                            ; preds = %_ZN5ImGui8MemAllocEm.exit.i
  %i.apg = load i32, ptr %i.alp, align 8, !tbaa !280
  %i.aph = sext i32 %i.apg to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aoe, ptr nonnull align 1 %i.apf, i64 %i.aph, i1 false)
  %i.api = load ptr, ptr %i.ape, align 8, !tbaa !281 ; 2 uses
  %.not.i7.i = icmp eq ptr %i.api, null
  br i1 %.not.i7.i, label %_ZN5ImGui7MemFreeEPv.exit.i, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.apj = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 5 uses
  %.not7.i.i = icmp eq ptr %i.apj, null
  br i1 %.not7.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.apk = getelementptr inbounds nuw i8, ptr %i.apj, i64 4
  %i.apl = load i32, ptr %i.apk, align 4, !tbaa !228 ; 2 uses
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apj, i64 10608 ; 3 uses
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apj, i64 10604 ; 2 uses
  %i.apo = load i16, ptr %i.apn, align 4, !tbaa !229 ; 2 uses
  %i.app = sext i16 %i.apo to i64                 ; 2 uses
  %i.apq = getelementptr inbounds [8 x i8], ptr %i.apm, i64 %i.app ; 2 uses
  %i.apr = load i32, ptr %i.apq, align 4, !tbaa !231
  %.not.i.i8.i = icmp eq i32 %i.apr, %i.apl
  br i1 %.not.i.i8.i, label %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i, label %bb.fb

._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i: ; preds = %bb.fa
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.apq, i64 6
  %.pre.i.i930 = load i16, ptr %.phi.trans.insert.i.i, align 2, !tbaa !233
  %i.aps = add i16 %.pre.i.i930, 1
  br label %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i

bb.fb:                                            ; preds = %bb.fa
  %i.apt = sext i16 %i.apo to i32
  %i.apu = add nsw i32 %i.apt, 1
  %i.apv = srem i32 %i.apu, 6                     ; 2 uses
  %i.apw = trunc nsw i32 %i.apv to i16
  store i16 %i.apw, ptr %i.apn, align 4, !tbaa !229
  %i.apx = sext i32 %i.apv to i64                 ; 2 uses
  %i.apy = getelementptr inbounds [8 x i8], ptr %i.apm, i64 %i.apx ; 3 uses
  store i32 %i.apl, ptr %i.apy, align 4, !tbaa !231
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apy, i64 6
  store i16 0, ptr %i.apz, align 2, !tbaa !233
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apy, i64 4
  store i16 0, ptr %i.aqa, align 4, !tbaa !232
  br label %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i

_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i: ; preds = %bb.fb, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i
  %i.aqb = phi i16 [ 1, %bb.fb ], [ %i.aps, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i ]
  %i.aqc = phi i64 [ %i.apx, %bb.fb ], [ %i.app, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i ]
  %i.aqd = getelementptr inbounds [8 x i8], ptr %i.apm, i64 %i.aqc
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aqd, i64 6
  store i16 %i.aqb, ptr %i.aqe, align 2, !tbaa !233
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.apj, i64 10600 ; 2 uses
  %i.aqg = load i32, ptr %i.aqf, align 4, !tbaa !235
  %i.aqh = add nsw i32 %i.aqg, 1
  store i32 %i.aqh, ptr %i.aqf, align 4, !tbaa !235
  br label %_ZN5ImGui7MemFreeEPv.exit.i

_ZN5ImGui7MemFreeEPv.exit.i:                      ; preds = %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i, %bb.ez, %bb.ey
  %i.aqi = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !226
  %i.aqj = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !226
  call void %i.aqi(ptr noundef %i.api, ptr noundef %i.aqj), !inline_history !623
  br label %_ZN8ImVectorIcE7reserveEi.exit

_ZN8ImVectorIcE7reserveEi.exit:                   ; preds = %_ZN5ImGui8MemAllocEm.exit.i, %_ZN5ImGui7MemFreeEPv.exit.i
  store ptr %i.aoe, ptr %i.ape, align 8, !tbaa !281
  store i32 8, ptr %i.alq, align 4, !tbaa !279
  %.pre.i.i.pre = load i32, ptr %i.alp, align 8, !tbaa !280
  %i.aqk = sext i32 %.pre.i.i.pre to i64
  br label %_ZN8ImVectorIcE9push_backERKc.exit.i

_ZN8ImVectorIcE9push_backERKc.exit.i:             ; preds = %_ZN8ImVectorIcE7reserveEi.exit, %_ZN8ImVectorIcE6resizeEi.exit.i
  %i.aql = phi i64 [ %i.aqk, %_ZN8ImVectorIcE7reserveEi.exit ], [ 0, %_ZN8ImVectorIcE6resizeEi.exit.i ]
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aln, i64 10080
  %i.aqn = load ptr, ptr %i.aqm, align 8, !tbaa !281
  %i.aqo = getelementptr inbounds i8, ptr %i.aqn, i64 %i.aql
  store i8 0, ptr %i.aqo, align 1
  %i.aqp = load i32, ptr %i.alp, align 8, !tbaa !280
  %i.aqq = add nsw i32 %i.aqp, 1
  store i32 %i.aqq, ptr %i.alp, align 8, !tbaa !280
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aln, i64 10088
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aln, i64 10096
  %i.aqt = load ptr, ptr %i.aqs, align 8, !tbaa !517 ; 2 uses
  %i.aqu = load i32, ptr %i.aqr, align 8, !tbaa !519 ; 2 uses
  %i.aqv = sext i32 %i.aqu to i64
  %.idx.i668 = mul nsw i64 %i.aqv, 80
  %i.aqw = getelementptr inbounds i8, ptr %i.aqt, i64 %.idx.i668
  %.not21.i = icmp eq i32 %i.aqu, 0
  br i1 %.not21.i, label %_ZN5ImGui23SaveIniSettingsToMemoryEPm.exit, label %.lr.ph.i669

.lr.ph.i669:                                      ; preds = %_ZN8ImVectorIcE9push_backERKc.exit.i, %.lr.ph.i669
  %.022.i = phi ptr [ %i.aqz, %.lr.ph.i669 ], [ %i.aqt, %_ZN8ImVectorIcE9push_backERKc.exit.i ] ; 3 uses
  %i.aqx = getelementptr inbounds nuw i8, ptr %.022.i, i64 56
  %i.aqy = load ptr, ptr %i.aqx, align 8, !tbaa !448
  call void %i.aqy(ptr noundef nonnull %i.aln, ptr noundef %.022.i, ptr noundef nonnull %i.alp), !inline_history !624
  %i.aqz = getelementptr inbounds nuw i8, ptr %.022.i, i64 80 ; 2 uses
  %.not.i670 = icmp eq ptr %i.aqz, %i.aqw
  br i1 %.not.i670, label %_ZN5ImGui23SaveIniSettingsToMemoryEPm.exit, label %.lr.ph.i669

_ZN5ImGui23SaveIniSettingsToMemoryEPm.exit:       ; preds = %.lr.ph.i669, %_ZN8ImVectorIcE9push_backERKc.exit.i, %_ZN5ImGui8SameLineEff.exit667
  %i.ara = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.arb = getelementptr inbounds nuw i8, ptr %i.ara, i64 5312
  %i.arc = load ptr, ptr %i.arb, align 8, !tbaa !289 ; 10 uses
  %i.ard = getelementptr inbounds nuw i8, ptr %i.arc, i64 209
  %i.are = load i8, ptr %i.ard, align 1, !tbaa !927, !range !100, !noundef !236
  %i.arf = trunc nuw i8 %i.are to i1
  br i1 %i.arf, label %_ZN5ImGui8SameLineEff.exit672, label %bb.fc

bb.fc:                                            ; preds = %_ZN5ImGui23SaveIniSettingsToMemoryEPm.exit
  %i.arg = getelementptr inbounds nuw i8, ptr %i.ara, i64 3300
  %i.arh = load float, ptr %i.arg, align 4, !tbaa !993
  %i.ari = getelementptr inbounds nuw i8, ptr %i.arc, i64 280
  %i.arj = getelementptr inbounds nuw i8, ptr %i.arc, i64 288
  %i.ark = load float, ptr %i.arj, align 8, !tbaa !992
  %i.arl = fadd float %i.arh, %i.ark
  store float %i.arl, ptr %i.ari, align 8, !tbaa !979
  %i.arm = getelementptr inbounds nuw i8, ptr %i.arc, i64 292
  %i.arn = load float, ptr %i.arm, align 4, !tbaa !321
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arc, i64 284
  store float %i.arn, ptr %i.aro, align 4, !tbaa !318
  %i.arp = getelementptr inbounds nuw i8, ptr %i.arc, i64 328
  %i.arq = getelementptr inbounds nuw i8, ptr %i.arc, i64 320
  %i.arr = load i64, ptr %i.arp, align 8, !tbaa !75
  store i64 %i.arr, ptr %i.arq, align 8, !tbaa !75
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arc, i64 340
  %i.art = load float, ptr %i.ars, align 4, !tbaa !971
  %i.aru = getelementptr inbounds nuw i8, ptr %i.arc, i64 336
  store float %i.art, ptr %i.aru, align 8, !tbaa !972
  %i.arv = getelementptr inbounds nuw i8, ptr %i.arc, i64 344
  store i8 1, ptr %i.arv, align 8, !tbaa !973
  br label %_ZN5ImGui8SameLineEff.exit672

_ZN5ImGui8SameLineEff.exit672:                    ; preds = %_ZN5ImGui23SaveIniSettingsToMemoryEPm.exit, %bb.fc
  %i.arw = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.347)
  br i1 %i.arw, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %_ZN5ImGui8SameLineEff.exit672
  %i.arx = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.ary = load ptr, ptr %i.arx, align 8, !tbaa !486
  call void @_ZN5ImGui21SaveIniSettingsToDiskEPKc(ptr noundef %i.ary)
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %_ZN5ImGui8SameLineEff.exit672
  %i.arz = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.asa = getelementptr inbounds nuw i8, ptr %i.arz, i64 5312
  %i.asb = load ptr, ptr %i.asa, align 8, !tbaa !289 ; 10 uses
  %i.asc = getelementptr inbounds nuw i8, ptr %i.asb, i64 209
  %i.asd = load i8, ptr %i.asc, align 1, !tbaa !927, !range !100, !noundef !236
  %i.ase = trunc nuw i8 %i.asd to i1
  br i1 %i.ase, label %_ZN5ImGui8SameLineEff.exit674, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.asf = getelementptr inbounds nuw i8, ptr %i.arz, i64 3300
  %i.asg = load float, ptr %i.asf, align 4, !tbaa !993
  %i.ash = getelementptr inbounds nuw i8, ptr %i.asb, i64 280
  %i.asi = getelementptr inbounds nuw i8, ptr %i.asb, i64 288
  %i.asj = load float, ptr %i.asi, align 8, !tbaa !992
  %i.ask = fadd float %i.asg, %i.asj
  store float %i.ask, ptr %i.ash, align 8, !tbaa !979
  %i.asl = getelementptr inbounds nuw i8, ptr %i.asb, i64 292
  %i.asm = load float, ptr %i.asl, align 4, !tbaa !321
  %i.asn = getelementptr inbounds nuw i8, ptr %i.asb, i64 284
  store float %i.asm, ptr %i.asn, align 4, !tbaa !318
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asb, i64 328
  %i.asp = getelementptr inbounds nuw i8, ptr %i.asb, i64 320
  %i.asq = load i64, ptr %i.aso, align 8, !tbaa !75
  store i64 %i.asq, ptr %i.asp, align 8, !tbaa !75
  %i.asr = getelementptr inbounds nuw i8, ptr %i.asb, i64 340
  %i.ass = load float, ptr %i.asr, align 4, !tbaa !971
  %i.ast = getelementptr inbounds nuw i8, ptr %i.asb, i64 336
  store float %i.ass, ptr %i.ast, align 8, !tbaa !972
  %i.asu = getelementptr inbounds nuw i8, ptr %i.asb, i64 344
  store i8 1, ptr %i.asu, align 8, !tbaa !973
  br label %_ZN5ImGui8SameLineEff.exit674

_ZN5ImGui8SameLineEff.exit674:                    ; preds = %bb.fe, %bb.ff
  %i.asv = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.asw = load ptr, ptr %i.asv, align 8, !tbaa !486 ; 2 uses
  %.not549 = icmp eq ptr %i.asw, null
  br i1 %.not549, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %_ZN5ImGui8SameLineEff.exit674
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.348, ptr noundef nonnull %i.asw)
  br label %bb.fi

bb.fh:                                            ; preds = %_ZN5ImGui8SameLineEff.exit674
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.165, ptr noundef null)
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %i.asx = getelementptr inbounds nuw i8, ptr %i.g, i64 10068
  %i.asy = load float, ptr %i.asx, align 4, !tbaa !573
  %i.asz = fpext float %i.asy to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.349, double noundef %i.asz)
  %i.ata = getelementptr inbounds nuw i8, ptr %i.g, i64 3148 ; 3 uses
  %i.atb = load i32, ptr %i.ata, align 4, !tbaa !1694
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.350, i32 noundef %i.atb)
  %i.atc = load i32, ptr %i.ata, align 4, !tbaa !1694 ; 2 uses
  %i.atd = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 6 uses
  %i.ate = getelementptr inbounds nuw i8, ptr %i.atd, i64 7784 ; 3 uses
  %i.atf = load i32, ptr %i.ate, align 8, !tbaa !792 ; 2 uses
  %i.atg = and i32 %i.atf, 64                     ; 2 uses
  %24 = or i32 %i.atg, %i.atc
  %or.cond.i676 = icmp eq i32 %24, 0
  br i1 %or.cond.i676, label %.thread1023, label %bb.fj

.thread1023:                                      ; preds = %bb.fi
  %i.ath = getelementptr inbounds nuw i8, ptr %i.atd, i64 3220 ; 2 uses
  %i.ati = load float, ptr %i.ath, align 4, !tbaa !916 ; 2 uses
  %i.atj = getelementptr inbounds nuw i8, ptr %i.atd, i64 9852
  store float %i.ati, ptr %i.atj, align 4, !tbaa !917
  %i.atk = getelementptr inbounds nuw i8, ptr %i.atd, i64 3224
  %i.atl = load float, ptr %i.atk, align 8, !tbaa !1019
  %i.atm = fmul float %i.ati, %i.atl
  store float %i.atm, ptr %i.ath, align 4, !tbaa !916
  br label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %25 = icmp ne i32 %i.atg, 0
  %26 = icmp eq i32 %i.atc, 0
  %or.cond3.i = or i1 %26, %25
  br i1 %or.cond3.i, label %bb.fk, label %_ZN5ImGui13BeginDisabledEb.exit

bb.fk:                                            ; preds = %.thread1023, %bb.fj
  %i.atn = or i32 %i.atf, 64
  store i32 %i.atn, ptr %i.ate, align 8, !tbaa !792
  br label %_ZN5ImGui13BeginDisabledEb.exit

_ZN5ImGui13BeginDisabledEb.exit:                  ; preds = %bb.fj, %bb.fk
  %i.ato = getelementptr inbounds nuw i8, ptr %i.atd, i64 8120
  call void @_ZN8ImVectorIiE9push_backERKi(ptr noundef nonnull align 8 dereferenceable(16) %i.ato, ptr noundef nonnull align 4 dereferenceable(4) %i.ate)
  %i.atp = getelementptr inbounds nuw i8, ptr %i.atd, i64 9856 ; 2 uses
  %i.atq = load i16, ptr %i.atp, align 8, !tbaa !884
  %i.atr = add i16 %i.atq, 1
  store i16 %i.atr, ptr %i.atp, align 8, !tbaa !884
  %i.ats = getelementptr inbounds nuw i8, ptr %i.g, i64 10524 ; 2 uses
  %i.att = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.351, ptr noundef nonnull %i.ats) ; 0 uses
  %i.atu = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 5 uses
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atu, i64 4568
  %i.atw = load float, ptr %i.atv, align 8, !tbaa !410
  %i.atx = fmul float %i.atw, 8.000000e+00
  %i.aty = getelementptr inbounds nuw i8, ptr %i.atu, i64 7792 ; 2 uses
  %i.atz = load i32, ptr %i.aty, align 8, !tbaa !275
  %i.aua = or i32 %i.atz, 1
  store i32 %i.aua, ptr %i.aty, align 8, !tbaa !275
  %i.aub = getelementptr inbounds nuw i8, ptr %i.atu, i64 7816
  store float %i.atx, ptr %i.aub, align 8, !tbaa !276
  %i.auc = getelementptr inbounds nuw i8, ptr %i.atu, i64 5312
  %i.aud = load ptr, ptr %i.auc, align 8, !tbaa !289 ; 10 uses
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aud, i64 209
  %i.auf = load i8, ptr %i.aue, align 1, !tbaa !927, !range !100, !noundef !236
  %i.aug = trunc nuw i8 %i.auf to i1
  br i1 %i.aug, label %_ZN5ImGui8SameLineEff.exit678, label %bb.fl

bb.fl:                                            ; preds = %_ZN5ImGui13BeginDisabledEb.exit
  %i.auh = getelementptr inbounds nuw i8, ptr %i.atu, i64 3300
  %i.aui = load float, ptr %i.auh, align 4, !tbaa !993
  %i.auj = getelementptr inbounds nuw i8, ptr %i.aud, i64 280
  %i.auk = getelementptr inbounds nuw i8, ptr %i.aud, i64 288
  %i.aul = load float, ptr %i.auk, align 8, !tbaa !992
  %i.aum = fadd float %i.aui, %i.aul
  store float %i.aum, ptr %i.auj, align 8, !tbaa !979
  %i.aun = getelementptr inbounds nuw i8, ptr %i.aud, i64 292
  %i.auo = load float, ptr %i.aun, align 4, !tbaa !321
  %i.aup = getelementptr inbounds nuw i8, ptr %i.aud, i64 284
  store float %i.auo, ptr %i.aup, align 4, !tbaa !318
  %i.auq = getelementptr inbounds nuw i8, ptr %i.aud, i64 328
  %i.aur = getelementptr inbounds nuw i8, ptr %i.aud, i64 320
  %i.aus = load i64, ptr %i.auq, align 8, !tbaa !75
  store i64 %i.aus, ptr %i.aur, align 8, !tbaa !75
  %i.aut = getelementptr inbounds nuw i8, ptr %i.aud, i64 340
  %i.auu = load float, ptr %i.aut, align 4, !tbaa !971
  %i.auv = getelementptr inbounds nuw i8, ptr %i.aud, i64 336
  store float %i.auu, ptr %i.auv, align 8, !tbaa !972
  %i.auw = getelementptr inbounds nuw i8, ptr %i.aud, i64 344
  store i8 1, ptr %i.auw, align 8, !tbaa !973
  br label %_ZN5ImGui8SameLineEff.exit678

_ZN5ImGui8SameLineEff.exit678:                    ; preds = %_ZN5ImGui13BeginDisabledEb.exit, %bb.fl
  %i.aux = getelementptr inbounds nuw i8, ptr %i.g, i64 10520 ; 2 uses
  %i.auy = call noundef zeroext i1 @_ZN5ImGui9SliderIntEPKcPiiiS1_i(ptr noundef nonnull @.str.352, ptr noundef nonnull %i.aux, i32 noundef 1, i32 noundef 24, ptr noundef nonnull @.str.217, i32 noundef 0) ; 0 uses
  %i.auz = load i8, ptr %i.ats, align 4, !tbaa !533, !range !100, !noundef !236
  %i.ava = trunc nuw i8 %i.auz to i1
  br i1 %i.ava, label %bb.fm, label %bb.ft

bb.fm:                                            ; preds = %_ZN5ImGui8SameLineEff.exit678
  %i.avb = load i32, ptr %i.aux, align 8, !tbaa !532 ; 6 uses
  %i.avc = icmp sgt i32 %i.avb, 0
  br i1 %i.avc, label %.lr.ph.preheader.i, label %bb.ft

.lr.ph.preheader.i:                               ; preds = %bb.fm
  %i.avd = load i32, ptr %i.ata, align 4, !tbaa !1694 ; 3 uses
  %i.ave = sdiv i32 %i.avd, 10000
  %i.avf = trunc i32 %i.ave to i16
  %i.avg = add i16 %i.avf, 48                     ; 2 uses
  %i.avh = and i16 %i.avg, 127
  %i.avi = sdiv i32 %i.avd, 100
  %i.avj = srem i32 %i.avi, 100
  %i.avk = trunc nsw i32 %i.avj to i16
  %i.avl = shl nsw i16 %i.avk, 7                  ; 2 uses
  %i.avm = srem i32 %i.avd, 100
  %i.avn = trunc nsw i32 %i.avm to i16
  %i.avo = shl i16 %i.avn, 11                     ; 2 uses
  %.masked.i = and i16 %i.avl, 1920               ; 2 uses
  %i.avp = or disjoint i16 %i.avh, %.masked.i
  %i.avq = or disjoint i16 %i.avp, %i.avo         ; 2 uses
  %xtraiter1379 = and i32 %i.avb, 1
  %lcmp.mod1380.not = icmp eq i32 %xtraiter1379, 0
  br i1 %lcmp.mod1380.not, label %.lr.ph.i679.prol.loopexit, label %.lr.ph.i679.prol

.lr.ph.i679.prol:                                 ; preds = %.lr.ph.preheader.i
  %i.avr = icmp eq i16 %.masked.i, 128            ; 2 uses
  %.neg.i.prol = sext i1 %i.avr to i16
  %i.avs = add i16 %i.avg, %.neg.i.prol
  %i.avt = and i16 %i.avs, 127                    ; 2 uses
  %i.avu = add nsw i16 %i.avl, 1920
  %i.avv = and i16 %i.avu, 1920
  %i.avw = select i1 %i.avr, i16 1536, i16 %i.avv ; 2 uses
  %i.avx = or disjoint i16 %i.avw, %i.avo
  %i.avy = or disjoint i16 %i.avx, %i.avt
  %i.avz = add nsw i32 %i.avb, -1
  br label %.lr.ph.i679.prol.loopexit

.lr.ph.i679.prol.loopexit:                        ; preds = %.lr.ph.i679.prol, %.lr.ph.preheader.i
  %.03.i.unr = phi i32 [ %i.avb, %.lr.ph.preheader.i ], [ %i.avz, %.lr.ph.i679.prol ]
  %.unr = phi i16 [ %i.avq, %.lr.ph.preheader.i ], [ %i.avy, %.lr.ph.i679.prol ]
  %.lcssa1374.unr = phi i16 [ poison, %.lr.ph.preheader.i ], [ %i.avt, %.lr.ph.i679.prol ]
  %.lcssa.unr = phi i16 [ poison, %.lr.ph.preheader.i ], [ %i.avw, %.lr.ph.i679.prol ]
  %i.awa = icmp eq i32 %i.avb, 1
  br i1 %i.awa, label %_ZN15ImGuiPackedDate14SubtractMonthsEi.exit, label %.lr.ph.i679

.lr.ph.i679:                                      ; preds = %.lr.ph.i679.prol.loopexit, %.lr.ph.i679
  %.03.i = phi i32 [ %i.awr, %.lr.ph.i679 ], [ %.03.i.unr, %.lr.ph.i679.prol.loopexit ] ; 2 uses
  %i.awb = phi i16 [ %i.awq, %.lr.ph.i679 ], [ %.unr, %.lr.ph.i679.prol.loopexit ] ; 4 uses
  %i.awc = and i16 %i.awb, 1920
  %i.awd = icmp eq i16 %i.awc, 128                ; 2 uses
  %.neg.i = sext i1 %i.awd to i16
  %i.awe = add i16 %i.awb, %.neg.i                ; 2 uses
  %i.awf = and i16 %i.awb, -2048                  ; 2 uses
  %i.awg = add i16 %i.awb, 1920
  %i.awh = and i16 %i.awg, 1920
  %i.awi = select i1 %i.awd, i16 1536, i16 %i.awh ; 3 uses
  %i.awj = icmp eq i16 %i.awi, 128                ; 2 uses
  %.neg.i.1 = sext i1 %i.awj to i16
  %i.awk = add i16 %i.awe, %.neg.i.1
  %i.awl = and i16 %i.awk, 127                    ; 2 uses
  %i.awm = add nuw nsw i16 %i.awi, 1920
  %i.awn = and i16 %i.awm, 1920
  %i.awo = select i1 %i.awj, i16 1536, i16 %i.awn ; 2 uses
  %i.awp = or disjoint i16 %i.awo, %i.awf
  %i.awq = or disjoint i16 %i.awp, %i.awl
  %i.awr = add nsw i32 %.03.i, -2
  %i.aws = icmp sgt i32 %.03.i, 2
  br i1 %i.aws, label %.lr.ph.i679, label %_ZN15ImGuiPackedDate14SubtractMonthsEi.exit.unr-lcssa, !llvm.loop !61

_ZN15ImGuiPackedDate14SubtractMonthsEi.exit.unr-lcssa: ; preds = %.lr.ph.i679
  %i.awt = and i16 %i.awe, 127
  %i.awu = or disjoint i16 %i.awf, %i.awt
  %i.awv = or disjoint i16 %i.awu, %i.awi
  br label %_ZN15ImGuiPackedDate14SubtractMonthsEi.exit

_ZN15ImGuiPackedDate14SubtractMonthsEi.exit:      ; preds = %.lr.ph.i679.prol.loopexit, %_ZN15ImGuiPackedDate14SubtractMonthsEi.exit.unr-lcssa
  %.lcssa1375 = phi i16 [ %i.avq, %.lr.ph.i679.prol.loopexit ], [ %i.awv, %_ZN15ImGuiPackedDate14SubtractMonthsEi.exit.unr-lcssa ]
  %.lcssa1374 = phi i16 [ %.lcssa1374.unr, %.lr.ph.i679.prol.loopexit ], [ %i.awl, %_ZN15ImGuiPackedDate14SubtractMonthsEi.exit.unr-lcssa ] ; 2 uses
  %.lcssa = phi i16 [ %.lcssa.unr, %.lr.ph.i679.prol.loopexit ], [ %i.awo, %_ZN15ImGuiPackedDate14SubtractMonthsEi.exit.unr-lcssa ] ; 2 uses
  %.not.i680 = icmp eq i16 %.lcssa1374, 0
  br i1 %.not.i680, label %_ZNK15ImGuiPackedDate6UnpackEv.exit, label %bb.fn

bb.fn:                                            ; preds = %_ZN15ImGuiPackedDate14SubtractMonthsEi.exit
  %i.aww = lshr exact i16 %.lcssa, 7
  %.not3.i = icmp eq i16 %.lcssa, 0
  br i1 %.not3.i, label %_ZNK15ImGuiPackedDate6UnpackEv.exit, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.awx = lshr i16 %.lcssa1375, 11               ; 2 uses
  %.not4.i = icmp eq i16 %i.awx, 0
  br i1 %.not4.i, label %_ZNK15ImGuiPackedDate6UnpackEv.exit, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %narrow.i = add nuw nsw i16 %.lcssa1374, 2000
  %i.awy = zext nneg i16 %narrow.i to i32
  %i.awz = mul nuw nsw i32 %i.awy, 10000
  %narrow5.i = mul nuw nsw i16 %i.aww, 100
  %narrow6.i = add nuw nsw i16 %narrow5.i, %i.awx
  %i.axa = zext nneg i16 %narrow6.i to i32
  %i.axb = add nuw nsw i32 %i.awz, %i.axa
  br label %_ZNK15ImGuiPackedDate6UnpackEv.exit

_ZNK15ImGuiPackedDate6UnpackEv.exit:              ; preds = %_ZN15ImGuiPackedDate14SubtractMonthsEi.exit, %bb.fn, %bb.fo, %bb.fp
  %i.axc = phi i32 [ %i.axb, %bb.fp ], [ 0, %bb.fo ], [ 0, %bb.fn ], [ 0, %_ZN15ImGuiPackedDate14SubtractMonthsEi.exit ]
  %i.axd = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.axe = getelementptr inbounds nuw i8, ptr %i.axd, i64 5312
  %i.axf = load ptr, ptr %i.axe, align 8, !tbaa !289 ; 10 uses
  %i.axg = getelementptr inbounds nuw i8, ptr %i.axf, i64 209
  %i.axh = load i8, ptr %i.axg, align 1, !tbaa !927, !range !100, !noundef !236
  %i.axi = trunc nuw i8 %i.axh to i1
  br i1 %i.axi, label %_ZN5ImGui8SameLineEff.exit682, label %bb.fq

bb.fq:                                            ; preds = %_ZNK15ImGuiPackedDate6UnpackEv.exit
  %i.axj = getelementptr inbounds nuw i8, ptr %i.axd, i64 3300
  %i.axk = load float, ptr %i.axj, align 4, !tbaa !993
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axf, i64 280
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axf, i64 288
  %i.axn = load float, ptr %i.axm, align 8, !tbaa !992
  %i.axo = fadd float %i.axk, %i.axn
  store float %i.axo, ptr %i.axl, align 8, !tbaa !979
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axf, i64 292
  %i.axq = load float, ptr %i.axp, align 4, !tbaa !321
  %i.axr = getelementptr inbounds nuw i8, ptr %i.axf, i64 284
  store float %i.axq, ptr %i.axr, align 4, !tbaa !318
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axf, i64 328
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axf, i64 320
  %i.axu = load i64, ptr %i.axs, align 8, !tbaa !75
  store i64 %i.axu, ptr %i.axt, align 8, !tbaa !75
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axf, i64 340
  %i.axw = load float, ptr %i.axv, align 4, !tbaa !971
  %i.axx = getelementptr inbounds nuw i8, ptr %i.axf, i64 336
  store float %i.axw, ptr %i.axx, align 8, !tbaa !972
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axf, i64 344
  store i8 1, ptr %i.axy, align 8, !tbaa !973
  br label %_ZN5ImGui8SameLineEff.exit682
end_hunk_0
