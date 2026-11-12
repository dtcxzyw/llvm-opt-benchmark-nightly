Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/imgui?download=true
inline.NumInlined: 3240
inline.NumDeleted: 627
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 90
begin_hunk_0_@_ZN5ImGui8NewFrameEv:bb.a
  %i.ano = getelementptr i8, ptr %i.anl, i64 2212
  %i.anp = load i8, ptr %i.ano, align 4, !tbaa !257, !range !120, !noundef !254
  %i.anq = trunc nuw i8 %i.anp to i1
  br i1 %i.anq, label %bb.fb, label %_ZN5ImGui8ShortcutEiij.exit.i.i

bb.fb:                                            ; preds = %bb.fa
  %i.anr = getelementptr i8, ptr %i.anl, i64 2216
  %i.ans = load float, ptr %i.anr, align 8, !tbaa !788
  %i.ant = fcmp oeq float %i.ans, 0.000000e+00
  br i1 %i.ant, label %bb.fc, label %_ZN5ImGui8ShortcutEiij.exit.i.i

bb.fc:                                            ; preds = %bb.fb
  %i.anu = getelementptr i8, ptr %i.anl, i64 6884
  %i.anv = load i32, ptr %i.anu, align 4, !tbaa !534 ; 2 uses
  %.not.i.i336.i.i = icmp eq i32 %i.anv, -714949741
  br i1 %.not.i.i336.i.i, label %_ZN5ImGui8ShortcutEiij.exit.thread517.i.i, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.anw = getelementptr i8, ptr %i.anl, i64 6892
  %i.anx = load i8, ptr %i.anw, align 4, !tbaa !536, !range !120, !noundef !254
  %i.any = trunc nuw i8 %i.anx to i1
  %.not20.i.i.i.i = icmp ne i32 %i.anv, -1
  %or.cond23.not.i.i.i.i = or i1 %.not20.i.i.i.i, %i.any
  br i1 %or.cond23.not.i.i.i.i, label %_ZN5ImGui8ShortcutEiij.exit.i.i, label %_ZN5ImGui8ShortcutEiij.exit.thread517.i.i

_ZN5ImGui8ShortcutEiij.exit.thread517.i.i:        ; preds = %bb.fd, %bb.fc
  %i.anz = load ptr, ptr %i.ane, align 8, !tbaa !803 ; 2 uses
  %.not224520.i.i = icmp eq ptr %i.anz, null
  %spec.select521.i.i = and i1 %or.cond5393.i.i, %.not224520.i.i
  br label %bb.fe

_ZN5ImGui8ShortcutEiij.exit.i.i:                  ; preds = %bb.fd, %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.ew, %bb.ev, %.split392.i.i
  %or.cond5391.ph.i.i = phi i1 [ %or.cond5393.i.i, %bb.fd ], [ %or.cond5393.i.i, %bb.fb ], [ %or.cond5393.i.i, %bb.ez ], [ %or.cond5393.i.i, %bb.ey ], [ %or.cond5393.i.i, %bb.ex ], [ %or.cond5393.i.i, %bb.ew ], [ %.ph.i.i, %bb.ev ], [ %i.and, %.split392.i.i ], [ %or.cond5393.i.i, %bb.fa ] ; 2 uses
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.ali, i64 8552
  %i.aob = load ptr, ptr %i.aoa, align 8, !tbaa !803 ; 2 uses
  %.not224.i.i = icmp eq ptr %i.aob, null
  %spec.select.i.i301 = and i1 %or.cond5391.ph.i.i, %.not224.i.i
  br i1 %spec.select.i.i301, label %bb.fe, label %_ZN5ImGui23SetKeyOwnersForKeyChordEiji.exit.i.i

bb.fe:                                            ; preds = %_ZN5ImGui8ShortcutEiij.exit.i.i, %_ZN5ImGui8ShortcutEiij.exit.thread517.i.i
  %i.aoc = phi ptr [ %i.anz, %_ZN5ImGui8ShortcutEiij.exit.thread517.i.i ], [ null, %_ZN5ImGui8ShortcutEiij.exit.i.i ] ; 4 uses
  %spec.select523.i.i = phi i1 [ %spec.select521.i.i, %_ZN5ImGui8ShortcutEiij.exit.thread517.i.i ], [ true, %_ZN5ImGui8ShortcutEiij.exit.i.i ] ; 2 uses
  %i.aod = phi i8 [ 1, %_ZN5ImGui8ShortcutEiij.exit.thread517.i.i ], [ 0, %_ZN5ImGui8ShortcutEiij.exit.i.i ]
  %or.cond5391.ph522.i.i = phi i1 [ %or.cond5393.i.i, %_ZN5ImGui8ShortcutEiij.exit.thread517.i.i ], [ true, %_ZN5ImGui8ShortcutEiij.exit.i.i ] ; 4 uses
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.ali, i64 8080
  %i.aof = load ptr, ptr %i.aoe, align 8, !tbaa !388 ; 2 uses
  %.not225.i.i = icmp eq ptr %i.aof, null         ; 4 uses
  br i1 %.not225.i.i, label %bb.ff, label %_ZL22FindWindowNavFocusableiii.exit.i.i

bb.ff:                                            ; preds = %bb.fe
  %i.aog = getelementptr inbounds nuw i8, ptr %i.ali, i64 5104
  %i.aoh = load i32, ptr %i.aog, align 8, !tbaa !808 ; 3 uses
  %i.aoi = icmp sgt i32 %i.aoh, 0
  br i1 %i.aoi, label %.lr.ph.i254.i.i, label %_ZN5ImGui23SetKeyOwnersForKeyChordEiji.exit.i.i

.lr.ph.i254.i.i:                                  ; preds = %bb.ff
  %i.aoj = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aoj, i64 5104
  %i.aol = load i32, ptr %i.aok, align 8, !tbaa !808
  %.not441.not.i.i = icmp sgt i32 %i.aoh, %i.aol
  br i1 %.not441.not.i.i, label %_ZN5ImGui23SetKeyOwnersForKeyChordEiji.exit.i.i, label %.lr.ph.i254.i.split.i

.lr.ph.i254.i.split.i:                            ; preds = %.lr.ph.i254.i.i
  %i.aom = zext nneg i32 %i.aoh to i64
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aoj, i64 5112
  %i.aoo = load ptr, ptr %i.aon, align 8, !tbaa !500
  br label %bb.fg

bb.fg:                                            ; preds = %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i.i, %.lr.ph.i254.i.split.i
  %indvars.iv.i.i302 = phi i64 [ %indvars.iv.next.i.i303, %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i.i ], [ %i.aom, %.lr.ph.i254.i.split.i ] ; 2 uses
  %indvars.iv.next.i.i303 = add nsw i64 %indvars.iv.i.i302, -1 ; 2 uses
  %i.aop = getelementptr inbounds nuw [8 x i8], ptr %i.aoo, i64 %indvars.iv.next.i.i303
  %i.aoq = load ptr, ptr %i.aop, align 8, !tbaa !595 ; 5 uses
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aoq, i64 205
  %i.aos = load i8, ptr %i.aor, align 1, !tbaa !414, !range !120, !noundef !254
  %i.aot = trunc nuw i8 %i.aos to i1
  br i1 %i.aot, label %bb.fh, label %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i.i

bb.fh:                                            ; preds = %bb.fg
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aoq, i64 960
  %i.aov = load ptr, ptr %i.aou, align 8, !tbaa !683
  %i.aow = icmp eq ptr %i.aoq, %i.aov
  br i1 %i.aow, label %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.i.i.i, label %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i.i

_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.i.i.i: ; preds = %bb.fh
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aoq, i64 20
  %i.aoy = load i32, ptr %i.aox, align 4, !tbaa !608
  %i.aoz = and i32 %i.aoy, 131072
  %.not.i.i257.i.i = icmp eq i32 %i.aoz, 0
  br i1 %.not.i.i257.i.i, label %_ZL22FindWindowNavFocusableiii.exit.i.i, label %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i.i

_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i.i: ; preds = %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.i.i.i, %bb.fh, %bb.fg
  %i.apa = icmp samesign ugt i64 %indvars.iv.i.i302, 1
  br i1 %i.apa, label %bb.fg, label %_ZN5ImGui23SetKeyOwnersForKeyChordEiji.exit.i.i, !llvm.loop !1326

_ZL22FindWindowNavFocusableiii.exit.i.i:          ; preds = %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.i.i.i, %bb.fe
  %i.apb = phi ptr [ %i.aof, %bb.fe ], [ %i.aoq, %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.i.i.i ]
  br i1 %spec.select523.i.i, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %_ZL22FindWindowNavFocusableiii.exit.i.i
  %i.apc = getelementptr inbounds nuw i8, ptr %i.ali, i64 8538
  %i.apd = load i8, ptr %i.apc, align 2, !tbaa !563, !range !120, !noundef !254
  %i.ape = trunc nuw i8 %i.apd to i1
  br i1 %i.ape, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi, %_ZL22FindWindowNavFocusableiii.exit.i.i
  %i.apf = getelementptr inbounds nuw i8, ptr %i.apb, i64 960
  %i.apg = load ptr, ptr %i.apf, align 8, !tbaa !683 ; 3 uses
  store ptr %i.apg, ptr %i.alz, align 8, !tbaa !804
  %i.aph = getelementptr inbounds nuw i8, ptr %i.ali, i64 8552
  store ptr %i.apg, ptr %i.aph, align 8, !tbaa !803
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %i.api = phi ptr [ %i.apg, %bb.fj ], [ %i.aoc, %bb.fi ] ; 3 uses
  %i.apj = getelementptr inbounds nuw i8, ptr %i.ali, i64 8576
  store <2 x float> zeroinitializer, ptr %i.apj, align 8, !tbaa !86
  %i.apk = getelementptr inbounds nuw i8, ptr %i.ali, i64 8596
  %i.apl = getelementptr inbounds nuw i8, ptr %i.ali, i64 8588
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.apk, i8 0, i64 16, i1 false)
  store i8 %i.aod, ptr %i.apl, align 4, !tbaa !809
  %i.apm = select i1 %spec.select523.i.i, i32 2, i32 3 ; 2 uses
  %i.apn = getelementptr inbounds nuw i8, ptr %i.ali, i64 8144
  store i32 %i.apm, ptr %i.apn, align 8, !tbaa !556
  %i.apo = getelementptr inbounds nuw i8, ptr %i.ali, i64 8584
  store i32 %i.apm, ptr %i.apo, align 8, !tbaa !1361
  br i1 %or.cond5391.ph522.i.i, label %bb.fl, label %_ZN5ImGui23SetKeyOwnersForKeyChordEiji.exit.i.i

bb.fl:                                            ; preds = %bb.fk
  %i.app = load i32, ptr %i.amx, align 4, !tbaa !564
  %i.apq = load i32, ptr %i.ana, align 8, !tbaa !565
  %i.apr = or i32 %i.apq, %i.app                  ; 4 uses
  %i.aps = and i32 %i.apr, 4096
  %.not.i258.i.i = icmp eq i32 %i.aps, 0
  br i1 %.not.i258.i.i, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.apt = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 4 uses
  %i.apu = getelementptr i8, ptr %i.apt, i64 7232
  %i.apv = getelementptr i8, ptr %i.apt, i64 7236
  store i32 -714949741, ptr %i.apv, align 4, !tbaa !533
  store i32 -714949741, ptr %i.apu, align 4, !tbaa !534
  %i.apw = getelementptr i8, ptr %i.apt, i64 7241
  store i8 0, ptr %i.apw, align 1, !tbaa !535
  %i.apx = getelementptr i8, ptr %i.apt, i64 7240
  store i8 0, ptr %i.apx, align 4, !tbaa !536
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  %i.apy = and i32 %i.apr, 8192
  %.not16.i.i.i = icmp eq i32 %i.apy, 0
  br i1 %.not16.i.i.i, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.apz = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 4 uses
  %i.aqa = getelementptr i8, ptr %i.apz, i64 7244
  %i.aqb = getelementptr i8, ptr %i.apz, i64 7248
  store i32 -714949741, ptr %i.aqb, align 4, !tbaa !533
  store i32 -714949741, ptr %i.aqa, align 4, !tbaa !534
  %i.aqc = getelementptr i8, ptr %i.apz, i64 7253
  store i8 0, ptr %i.aqc, align 1, !tbaa !535
  %i.aqd = getelementptr i8, ptr %i.apz, i64 7252
  store i8 0, ptr %i.aqd, align 4, !tbaa !536
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %i.aqe = and i32 %i.apr, 16384
  %.not17.i.i.i = icmp eq i32 %i.aqe, 0
  br i1 %.not17.i.i.i, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.aqf = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 4 uses
  %i.aqg = getelementptr i8, ptr %i.aqf, i64 7256
  %i.aqh = getelementptr i8, ptr %i.aqf, i64 7260
  store i32 -714949741, ptr %i.aqh, align 4, !tbaa !533
  store i32 -714949741, ptr %i.aqg, align 4, !tbaa !534
  %i.aqi = getelementptr i8, ptr %i.aqf, i64 7265
  store i8 0, ptr %i.aqi, align 1, !tbaa !535
  %i.aqj = getelementptr i8, ptr %i.aqf, i64 7264
  store i8 0, ptr %i.aqj, align 4, !tbaa !536
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %i.aqk = and i32 %i.apr, 32768
  %.not18.i.i.i = icmp eq i32 %i.aqk, 0
  br i1 %.not18.i.i.i, label %_ZN5ImGui23SetKeyOwnersForKeyChordEiji.exit.i.i, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.aql = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 4 uses
  %i.aqm = getelementptr i8, ptr %i.aql, i64 7268
  %i.aqn = getelementptr i8, ptr %i.aql, i64 7272
  store i32 -714949741, ptr %i.aqn, align 4, !tbaa !533
  store i32 -714949741, ptr %i.aqm, align 4, !tbaa !534
  %i.aqo = getelementptr i8, ptr %i.aql, i64 7277
  store i8 0, ptr %i.aqo, align 1, !tbaa !535
  %i.aqp = getelementptr i8, ptr %i.aql, i64 7276
  store i8 0, ptr %i.aqp, align 4, !tbaa !536
  br label %_ZN5ImGui23SetKeyOwnersForKeyChordEiji.exit.i.i

_ZN5ImGui23SetKeyOwnersForKeyChordEiji.exit.i.i:  ; preds = %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i.i, %bb.fs, %bb.fr, %bb.fk, %.lr.ph.i254.i.i, %bb.ff, %_ZN5ImGui8ShortcutEiij.exit.i.i, %._ZN5ImGui23SetKeyOwnersForKeyChordEiji.exit.i_crit_edge.i
  %i.aqq = phi ptr [ %i.aob, %_ZN5ImGui8ShortcutEiij.exit.i.i ], [ %i.api, %bb.fs ], [ %i.api, %bb.fk ], [ %i.api, %bb.fr ], [ %i.aoc, %bb.ff ], [ %i.aoc, %.lr.ph.i254.i.i ], [ %.pre.i289, %._ZN5ImGui23SetKeyOwnersForKeyChordEiji.exit.i_crit_edge.i ], [ %i.aoc, %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i.i ] ; 2 uses
  %or.cond5391400516.i.i = phi i1 [ %or.cond5391.ph.i.i, %_ZN5ImGui8ShortcutEiij.exit.i.i ], [ true, %bb.fs ], [ false, %bb.fk ], [ true, %bb.fr ], [ %or.cond5391.ph522.i.i, %bb.ff ], [ %or.cond5391.ph522.i.i, %.lr.ph.i254.i.i ], [ false, %._ZN5ImGui23SetKeyOwnersForKeyChordEiji.exit.i_crit_edge.i ], [ %or.cond5391.ph522.i.i, %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i.i ]
  %i.aqr = phi i1 [ %.ph.i.i, %_ZN5ImGui8ShortcutEiij.exit.i.i ], [ %.ph.i.i, %bb.fs ], [ %.ph.i.i, %bb.fk ], [ %.ph.i.i, %bb.fr ], [ %.ph.i.i, %bb.ff ], [ %.ph.i.i, %.lr.ph.i254.i.i ], [ false, %._ZN5ImGui23SetKeyOwnersForKeyChordEiji.exit.i_crit_edge.i ], [ %.ph.i.i, %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i.i ] ; 2 uses
  %.2204.i.i = phi i1 [ false, %_ZN5ImGui8ShortcutEiij.exit.i.i ], [ %.not225.i.i, %bb.fs ], [ %.not225.i.i, %bb.fk ], [ %.not225.i.i, %bb.fr ], [ false, %bb.ff ], [ false, %.lr.ph.i254.i.i ], [ false, %._ZN5ImGui23SetKeyOwnersForKeyChordEiji.exit.i_crit_edge.i ], [ false, %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i.i.i ] ; 2 uses
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.ali, i64 8552 ; 4 uses
  %.not227.i.i = icmp eq ptr %i.aqq, null
  br i1 %.not227.i.i, label %bb.ft, label %.thread403.i.i

bb.ft:                                            ; preds = %_ZN5ImGui23SetKeyOwnersForKeyChordEiji.exit.i.i
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.ali, i64 8588
  %i.aqu = load i8, ptr %i.aqt, align 4, !tbaa !809, !range !120, !noundef !254
  %i.aqv = trunc nuw i8 %i.aqu to i1
  br i1 %i.aqv, label %bb.fu, label %_ZL24NavUpdateWindowingTargeti.exit280.i.i

bb.fu:                                            ; preds = %bb.ft
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.ali, i64 8584
  %i.aqx = load i32, ptr %i.aqw, align 8, !tbaa !1361
  %i.aqy = icmp eq i32 %i.aqx, 3
  br i1 %i.aqy, label %._crit_edge.i.i300, label %_ZL24NavUpdateWindowingTargeti.exit280.i.i

._crit_edge.i.i300:                               ; preds = %bb.fu
  %.pre467.i.i = load ptr, ptr @GImGui, align 8, !tbaa !245
  br label %bb.gr

.thread403.i.i:                                   ; preds = %_ZN5ImGui23SetKeyOwnersForKeyChordEiji.exit.i.i
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.ali, i64 8584
  %i.ara = load i32, ptr %i.aqz, align 8, !tbaa !1361 ; 2 uses
  %i.arb = icmp eq i32 %i.ara, 3
  br i1 %i.arb, label %bb.fv, label %.thread526.i.i

bb.fv:                                            ; preds = %.thread403.i.i
  %i.arc = getelementptr inbounds nuw i8, ptr %i.ali, i64 32
  %i.ard = load float, ptr %i.arc, align 8, !tbaa !1357
  %i.are = getelementptr inbounds nuw i8, ptr %i.ali, i64 8576 ; 2 uses
  %i.arf = load float, ptr %i.are, align 8, !tbaa !810
  %i.arg = fadd float %i.ard, %i.arf              ; 2 uses
  store float %i.arg, ptr %i.are, align 8, !tbaa !810
  %i.arh = getelementptr inbounds nuw i8, ptr %i.ali, i64 8580 ; 3 uses
  %i.ari = load float, ptr %i.arh, align 4, !tbaa !805 ; 2 uses
  %i.arj = fadd float %i.arg, -2.000000e-01
  %i.ark = fdiv float %i.arj, 5.000000e-02        ; 3 uses
  %i.arl = fcmp olt float %i.ark, 0.000000e+00
  %i.arm = fcmp ogt float %i.ark, 1.000000e+00
  %i.arn = select i1 %i.arm, float 1.000000e+00, float %i.ark
  %i.aro = select i1 %i.arl, float 0.000000e+00, float %i.arn ; 2 uses
  %i.arp = fcmp oge float %i.ari, %i.aro
  %i.arq = select i1 %i.arp, float %i.ari, float %i.aro
  store float %i.arq, ptr %i.arh, align 4, !tbaa !805
  %i.arr = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 21 uses
  %i.ars = getelementptr i8, ptr %i.arr, i64 2340
  %i.art = load i8, ptr %i.ars, align 4, !tbaa !257, !range !120, !noundef !254
  %i.aru = trunc nuw i8 %i.art to i1
  br i1 %i.aru, label %bb.fw, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit352.i.i

bb.fw:                                            ; preds = %bb.fv
  %i.arv = getelementptr i8, ptr %i.arr, i64 2344
  %i.arw = load float, ptr %i.arv, align 4, !tbaa !788 ; 8 uses
  %i.arx = fcmp olt float %i.arw, 0.000000e+00
  br i1 %i.arx, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit352.i.i, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.ary = fcmp oeq float %i.arw, 0.000000e+00
  br i1 %i.ary, label %.thread405.i.i, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.arz = getelementptr inbounds nuw i8, ptr %i.arr, i64 116
  %i.asa = getelementptr inbounds nuw i8, ptr %i.arr, i64 120
  %i.asb = load float, ptr %i.arz, align 4, !tbaa !811 ; 5 uses
  %i.asc = load float, ptr %i.asa, align 8, !tbaa !812 ; 2 uses
  %i.asd = fcmp ogt float %i.arw, %i.asb
  br i1 %i.asd, label %bb.fz, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit352.i.i

bb.fz:                                            ; preds = %bb.fy
  %i.ase = getelementptr inbounds nuw i8, ptr %i.arr, i64 32
  %i.asf = load float, ptr %i.ase, align 8, !tbaa !750
  %i.asg = fsub float %i.arw, %i.asf              ; 3 uses
  %i.ash = fcmp ult float %i.asg, %i.arw
  br i1 %i.ash, label %bb.ga, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit352.i.i

bb.ga:                                            ; preds = %bb.fz
  %i.asi = fcmp ugt float %i.asc, 0.000000e+00
  %i.asj = fcmp olt float %i.asg, %i.asb          ; 2 uses
  br i1 %i.asi, label %.split407.i.i, label %bb.gb

.split407.i.i:                                    ; preds = %bb.ga
  %i.ask = insertelement <2 x float> poison, float %i.arw, i64 0
  %i.asl = insertelement <2 x float> %i.ask, float %i.asg, i64 1
  %i.asm = insertelement <2 x float> poison, float %i.asb, i64 0
  %i.asn = shufflevector <2 x float> %i.asm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aso = fsub <2 x float> %i.asl, %i.asn
  %i.asp = fcmp olt float %i.arw, %i.asb
  %i.asq = insertelement <2 x float> poison, float %i.asc, i64 0
  %i.asr = shufflevector <2 x float> %i.asq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ass = fdiv <2 x float> %i.aso, %i.asr
  %i.ast = fptosi <2 x float> %i.ass to <2 x i32>
  %i.asu = insertelement <2 x i1> poison, i1 %i.asp, i64 0
  %i.asv = insertelement <2 x i1> %i.asu, i1 %i.asj, i64 1
  %i.asw = select <2 x i1> %i.asv, <2 x i32> splat (i32 -1), <2 x i32> %i.ast ; 2 uses
  %shift = shufflevector <2 x i32> %i.asw, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.asx = icmp sgt <2 x i32> %i.asw, %shift
  %i.asy = extractelement <2 x i1> %i.asx, i64 0
  br i1 %i.asy, label %.thread405.i.i, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit352.i.i

bb.gb:                                            ; preds = %bb.ga
  %i.asz = fcmp oge float %i.arw, %i.asb
  %i.ata = and i1 %i.asz, %i.asj
  br i1 %i.ata, label %.thread405.i.i, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit352.i.i

.thread405.i.i:                                   ; preds = %bb.gb, %.split407.i.i, %bb.fx
  %i.atb = getelementptr i8, ptr %i.arr, i64 6988
  %i.atc = load i8, ptr %i.atb, align 4, !tbaa !536, !range !120, !noundef !254
  %i.atd = xor i8 %i.atc, 1
  %i.ate = zext nneg i8 %i.atd to i32
  br label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit352.i.i

_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit352.i.i:  ; preds = %.thread405.i.i, %bb.gb, %.split407.i.i, %bb.fz, %bb.fy, %bb.fw, %bb.fv
  %.230.i342.i.i = phi i32 [ 0, %bb.fv ], [ 0, %bb.fw ], [ 0, %bb.gb ], [ %i.ate, %.thread405.i.i ], [ 0, %bb.fz ], [ 0, %bb.fy ], [ 0, %.split407.i.i ]
  %i.atf = getelementptr i8, ptr %i.arr, i64 2356
  %i.atg = load i8, ptr %i.atf, align 4, !tbaa !257, !range !120, !noundef !254
  %i.ath = trunc nuw i8 %i.atg to i1
  br i1 %i.ath, label %bb.gc, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit366.i.i

bb.gc:                                            ; preds = %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit352.i.i
  %i.ati = getelementptr i8, ptr %i.arr, i64 2360
  %i.atj = load float, ptr %i.ati, align 4, !tbaa !788 ; 8 uses
  %i.atk = fcmp olt float %i.atj, 0.000000e+00
  br i1 %i.atk, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit366.i.i, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.atl = fcmp oeq float %i.atj, 0.000000e+00
  br i1 %i.atl, label %.thread408.i.i, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.atm = getelementptr inbounds nuw i8, ptr %i.arr, i64 116
  %i.atn = getelementptr inbounds nuw i8, ptr %i.arr, i64 120
  %i.ato = load float, ptr %i.atm, align 4, !tbaa !811 ; 5 uses
  %i.atp = load float, ptr %i.atn, align 8, !tbaa !812 ; 2 uses
  %i.atq = fcmp ogt float %i.atj, %i.ato
  br i1 %i.atq, label %bb.gf, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit366.i.i

bb.gf:                                            ; preds = %bb.ge
  %i.atr = getelementptr inbounds nuw i8, ptr %i.arr, i64 32
  %i.ats = load float, ptr %i.atr, align 8, !tbaa !750
  %i.att = fsub float %i.atj, %i.ats              ; 3 uses
  %i.atu = fcmp ult float %i.att, %i.atj
  br i1 %i.atu, label %bb.gg, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit366.i.i

bb.gg:                                            ; preds = %bb.gf
  %i.atv = fcmp ugt float %i.atp, 0.000000e+00
  %i.atw = fcmp olt float %i.att, %i.ato          ; 2 uses
  br i1 %i.atv, label %.split410.i.i, label %bb.gh

.split410.i.i:                                    ; preds = %bb.gg
  %i.atx = insertelement <2 x float> poison, float %i.atj, i64 0
  %i.aty = insertelement <2 x float> %i.atx, float %i.att, i64 1
  %i.atz = insertelement <2 x float> poison, float %i.ato, i64 0
  %i.aua = shufflevector <2 x float> %i.atz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aub = fsub <2 x float> %i.aty, %i.aua
  %i.auc = fcmp olt float %i.atj, %i.ato
  %i.aud = insertelement <2 x float> poison, float %i.atp, i64 0
  %i.aue = shufflevector <2 x float> %i.aud, <2 x float> poison, <2 x i32> zeroinitializer
  %i.auf = fdiv <2 x float> %i.aub, %i.aue
  %i.aug = fptosi <2 x float> %i.auf to <2 x i32>
  %i.auh = insertelement <2 x i1> poison, i1 %i.auc, i64 0
  %i.aui = insertelement <2 x i1> %i.auh, i1 %i.atw, i64 1
  %i.auj = select <2 x i1> %i.aui, <2 x i32> splat (i32 -1), <2 x i32> %i.aug ; 2 uses
  %shift662 = shufflevector <2 x i32> %i.auj, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.auk = icmp sgt <2 x i32> %i.auj, %shift662
  %i.aul = extractelement <2 x i1> %i.auk, i64 0
  br i1 %i.aul, label %.thread408.i.i, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit366.i.i

bb.gh:                                            ; preds = %bb.gg
  %i.aum = fcmp oge float %i.atj, %i.ato
  %i.aun = and i1 %i.aum, %i.atw
  br i1 %i.aun, label %.thread408.i.i, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit366.i.i

.thread408.i.i:                                   ; preds = %bb.gh, %.split410.i.i, %bb.gd
  %i.auo = getelementptr i8, ptr %i.arr, i64 7000
  %i.aup = load i8, ptr %i.auo, align 4, !tbaa !536, !range !120, !noundef !254
  %sext.i.i = add nsw i8 %i.aup, -1
  %i.auq = sext i8 %sext.i.i to i32
  br label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit366.i.i

_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit366.i.i:  ; preds = %.thread408.i.i, %bb.gh, %.split410.i.i, %bb.gf, %bb.ge, %bb.gc, %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit352.i.i
  %.230.i355.i.i = phi i32 [ 0, %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit352.i.i ], [ 0, %bb.gc ], [ 0, %bb.gh ], [ %i.auq, %.thread408.i.i ], [ 0, %bb.gf ], [ 0, %bb.ge ], [ 0, %.split410.i.i ]
  %i.aur = add nsw i32 %.230.i355.i.i, %.230.i342.i.i ; 5 uses
  %i.aus = icmp eq i32 %i.aur, 0
  %or.cond7.i.i = or i1 %.2204.i.i, %i.aus
  br i1 %or.cond7.i.i, label %bb.gr, label %bb.gi

bb.gi:                                            ; preds = %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit366.i.i
  %i.aut = getelementptr inbounds nuw i8, ptr %i.arr, i64 8552 ; 2 uses
  %i.auu = load ptr, ptr %i.aut, align 8, !tbaa !803 ; 2 uses
  %i.auv = getelementptr inbounds nuw i8, ptr %i.auu, i64 20
  %i.auw = load i32, ptr %i.auv, align 4, !tbaa !608
  %i.aux = and i32 %i.auw, 134217728
  %.not.i259.i.i = icmp eq i32 %i.aux, 0
  br i1 %.not.i259.i.i, label %bb.gj, label %_ZL24NavUpdateWindowingTargeti.exit.i.i

bb.gj:                                            ; preds = %bb.gi
  %i.auy = getelementptr i8, ptr %i.auu, i64 226
  %.val.i.i.i = load i16, ptr %i.auy, align 2, !tbaa !728
  %i.auz = sext i16 %.val.i.i.i to i32            ; 2 uses
  %i.ava = add nsw i32 %i.aur, %i.auz             ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5ImGui17DebugNodeDrawListEP11ImGuiWindowP14ImGuiViewportPPK10ImDrawListPKc:bb.a
bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 3228
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !977
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 280
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 288
  %i.al = load float, ptr %i.ak, align 8, !tbaa !978
  %i.am = fadd float %i.ai, %i.al
  store float %i.am, ptr %i.aj, align 8, !tbaa !979
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 292
  %i.ao = load float, ptr %i.an, align 4, !tbaa !341
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 284
  store float %i.ao, ptr %i.ap, align 4, !tbaa !338
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 328
  %i.ar = getelementptr inbounds nuw i8, ptr %i.z, i64 320
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !86
  store i64 %i.as, ptr %i.ar, align 8, !tbaa !86
  %i.at = getelementptr inbounds nuw i8, ptr %i.z, i64 340
  %i.au = load float, ptr %i.at, align 4, !tbaa !974
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 336
  store float %i.au, ptr %i.av, align 8, !tbaa !975
  %i.aw = getelementptr inbounds nuw i8, ptr %i.z, i64 344
  store i8 1, ptr %i.aw, align 8, !tbaa !976
  br label %_ZN5ImGui8SameLineEff.exit

_ZN5ImGui8SameLineEff.exit:                       ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  store <4 x float> <float 1.000000e+00, float 4.000000e-01, float 4.000000e-01, float 1.000000e+00>, ptr %4, align 16, !tbaa !86
  call void (ptr, ptr, ...) @_ZN5ImGui11TextColoredERK6ImVec4PKcz(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull @.str.440) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br i1 %i.w, label %.sink.split, label %bb.ba

bb.g:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 8064
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !415
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !416
  %i.ba = tail call fastcc noundef ptr @_ZL23GetViewportBgFgDrawListP14ImGuiViewportPmPKc(ptr noundef %i.az, i64 noundef 1, ptr noundef nonnull @.str.83) ; 8 uses
  %.not133 = icmp eq ptr %0, null
  br i1 %.not133, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = tail call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0)
  %i.bc = icmp ne ptr %i.ba, null
  %or.cond = and i1 %i.bc, %i.bb
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bf = load <2 x float>, ptr %i.bd, align 4, !tbaa !86
  %i.bg = load <2 x float>, ptr %i.be, align 4, !tbaa !86
  %i.bh = fadd <2 x float> %i.bf, %i.bg
  store <2 x float> %i.bh, ptr %5, align 8
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(224) %i.ba, ptr noundef nonnull align 4 dereferenceable(8) %i.bd, ptr noundef nonnull align 4 dereferenceable(8) %5, i32 noundef -16711681, float noundef 0.000000e+00, i32 noundef 0, float noundef 1.000000e+00) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br i1 %i.w, label %bb.k, label %bb.ba

.thread:                                          ; preds = %bb.g
  br i1 %i.w, label %.thread143, label %bb.ba

bb.k:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 205
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !414, !range !120, !noundef !254
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %.thread143, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.441) #35
  br label %.thread143

.thread143:                                       ; preds = %.thread, %bb.l, %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.bm = sext i32 %.0120 to i64
  %i.bn = icmp sgt i32 %.0120, 0
  br i1 %i.bn, label %.lr.ph165, label %.sink.split

.lr.ph165:                                        ; preds = %.thread143
  %i.bo = load ptr, ptr %i.bl, align 8, !tbaa !1678
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 10249
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 10250 ; 2 uses
  %i.bt = icmp ne ptr %i.ba, null                 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.ba, i64 48 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph165, %bb.az
  %.0119164 = phi ptr [ %i.bo, %.lr.ph165 ], [ %i.jw, %bb.az ] ; 13 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0119164, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !1677 ; 2 uses
  %.not134 = icmp eq ptr %i.cc, null
  br i1 %.not134, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %.0119164, i64 56
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1679
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.442, ptr noundef nonnull %i.cc, ptr noundef %i.ce) #35
  br label %bb.az

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  %i.cf = getelementptr inbounds nuw i8, ptr %.0119164, i64 16 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1680 ; 2 uses
  %.not.i = icmp eq ptr %i.cg, null
  br i1 %.not.i, label %_ZL30FormatTextureIDForDebugDisplayPciPK9ImDrawCmd.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !1075
  %i.ci = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 30, ptr noundef nonnull @.str.767, i32 noundef %i.ch)
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds i8, ptr %i.a, i64 %i.cj
  %.pre.i = load ptr, ptr %i.cf, align 8, !tbaa !1681
  br label %_ZL30FormatTextureIDForDebugDisplayPciPK9ImDrawCmd.exit

_ZL30FormatTextureIDForDebugDisplayPciPK9ImDrawCmd.exit: ; preds = %bb.o, %bb.p
  %i.cl = phi ptr [ %.pre.i, %bb.p ], [ null, %bb.o ] ; 2 uses
  %.0.i = phi ptr [ %i.ck, %bb.p ], [ %i.a, %bb.o ] ; 2 uses
  %i.cm = ptrtoint ptr %.0.i to i64
  %i.cn = sub i64 %i.bq, %i.cm
  %.not.i.i = icmp eq ptr %i.cl, null
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %.0119164, i64 24
  %.in.i.i = select i1 %.not.i.i, ptr %i.cp, ptr %i.co
  %i.cq = load i64, ptr %.in.i.i, align 8, !tbaa !451
  %i.cr = shl i64 %i.cn, 32
  %i.cs = ashr exact i64 %i.cr, 32
  %.sroa.0.0..sroa.0.0..cast.i.i = inttoptr i64 %i.cq to ptr
  %i.ct = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %.0.i, i64 noundef %i.cs, ptr noundef nonnull @.str.761, ptr noundef %.sroa.0.0..sroa.0.0..cast.i.i) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  %i.cu = getelementptr inbounds nuw i8, ptr %.0119164, i64 40 ; 3 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !944
  %i.cw = udiv i32 %i.cv, 3
  %i.cx = load <4 x float>, ptr %.0119164, align 8, !tbaa !86
  %i.cy = fpext <4 x float> %i.cx to <4 x double> ; 4 uses
  %i.cz = extractelement <4 x double> %i.cy, i64 0
  %i.da = extractelement <4 x double> %i.cy, i64 1
  %i.db = extractelement <4 x double> %i.cy, i64 2
  %i.dc = extractelement <4 x double> %i.cy, i64 3
  %i.dd = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.b, i64 noundef 300, ptr noundef nonnull @.str.443, i32 noundef %i.cw, ptr noundef nonnull %i.a, double noundef %i.cz, double noundef %i.da, double noundef %i.db, double noundef %i.dc) ; 0 uses
  %i.de = load ptr, ptr %i.bl, align 8, !tbaa !941
  %i.df = ptrtoint ptr %.0119164 to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = sdiv exact i64 %i.dh, 72
  %i.dj = inttoptr i64 %i.di to ptr
  %i.dk = call noundef zeroext i1 (ptr, ptr, ...) @_ZN5ImGui8TreeNodeEPKvPKcz(ptr noundef %i.dj, ptr noundef nonnull @.str.80, ptr noundef nonnull %i.b) #35
  %i.dl = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0)
  br i1 %i.dl, label %bb.q, label %bb.t

bb.q:                                             ; preds = %_ZL30FormatTextureIDForDebugDisplayPciPK9ImDrawCmd.exit
  %i.dm = load i8, ptr %i.br, align 1, !tbaa !1682, !range !120, !noundef !254
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.do = load i8, ptr %i.bs, align 2, !tbaa !1683, !range !120, !noundef !254
  %i.dp = trunc nuw i8 %i.do to i1
  %or.cond3 = and i1 %i.bt, %i.dp
  br i1 %or.cond3, label %.split121, label %bb.t

.split121:                                        ; preds = %bb.r
  call void @_ZN5ImGui38DebugNodeDrawCmdShowMeshAndBoundingBoxEP10ImDrawListPKS0_PK9ImDrawCmdbb(ptr noundef nonnull %i.ba, ptr noundef nonnull %2, ptr noundef nonnull %.0119164, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  br i1 %i.bt, label %.split, label %bb.t

.split:                                           ; preds = %bb.s
  %i.dq = load i8, ptr %i.bs, align 2, !tbaa !1683, !range !120, !noundef !254
  %i.dr = trunc nuw i8 %i.dq to i1
  call void @_ZN5ImGui38DebugNodeDrawCmdShowMeshAndBoundingBoxEP10ImDrawListPKS0_PK9ImDrawCmdbb(ptr noundef nonnull %i.ba, ptr noundef nonnull %2, ptr noundef nonnull %.0119164, i1 noundef zeroext true, i1 noundef zeroext %i.dr)
  br label %bb.t

bb.t:                                             ; preds = %.split, %.split121, %bb.s, %bb.r, %_ZL30FormatTextureIDForDebugDisplayPciPK9ImDrawCmd.exit
  br i1 %i.dk, label %bb.u, label %bb.ay

bb.u:                                             ; preds = %bb.t
  %i.ds = load i32, ptr %i.u, align 8, !tbaa !1096
  %i.dt = icmp sgt i32 %i.ds, 0
  br i1 %i.dt, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.du = load ptr, ptr %i.bu, align 8, !tbaa !1097
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.dv = phi ptr [ %i.du, %bb.v ], [ null, %bb.u ] ; 8 uses
  %i.dw = load ptr, ptr %i.bv, align 8, !tbaa !1098
  %i.dx = getelementptr inbounds nuw i8, ptr %.0119164, i64 32
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !1099 ; 2 uses
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [20 x i8], ptr %i.dw, i64 %i.dz ; 9 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.0119164, i64 36 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !1100 ; 5 uses
  %i.ed = load i32, ptr %i.cu, align 8, !tbaa !944 ; 2 uses
  %i.ee = add i32 %i.ed, %i.ec                    ; 3 uses
  %i.ef = icmp ult i32 %i.ec, %i.ee
  br i1 %i.ef, label %.lr.ph, label %.preheader146.split.preheader

.lr.ph:                                           ; preds = %bb.w
  %.not141 = icmp eq ptr %i.dv, null
  br i1 %.not141, label %._crit_edge.a, label %.split150.us

._crit_edge.a:                                    ; preds = %.lr.ph, %._crit_edge.a
  %.0116152.us = phi i32 [ %24, %._crit_edge.a ], [ %i.ec, %.lr.ph ] ; 4 uses
  %.0118151.us = phi float [ %33, %._crit_edge.a ], [ 0.000000e+00, %.lr.ph ]
  %10 = zext i32 %.0116152.us to i64
  %11 = getelementptr inbounds nuw [20 x i8], ptr %i.ea, i64 %10 ; 2 uses
  %12 = load float, ptr %11, align 4
  %.sroa_idx181 = getelementptr inbounds nuw i8, ptr %11, i64 4
  %13 = load float, ptr %.sroa_idx181, align 4    ; 2 uses
  %14 = add nuw i32 %.0116152.us, 1
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds nuw [20 x i8], ptr %i.ea, i64 %15 ; 2 uses
  %17 = load float, ptr %16, align 4
  %.sroa_idx185 = getelementptr inbounds nuw i8, ptr %16, i64 4
  %18 = load float, ptr %.sroa_idx185, align 4    ; 2 uses
  %19 = add i32 %.0116152.us, 2
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds nuw [20 x i8], ptr %i.ea, i64 %20 ; 2 uses
  %22 = load float, ptr %21, align 4
  %.sroa_idx189 = getelementptr inbounds nuw i8, ptr %21, i64 4
  %23 = load float, ptr %.sroa_idx189, align 4    ; 2 uses
  %24 = add i32 %.0116152.us, 3                   ; 2 uses
  %25 = fsub float %18, %23
  %26 = fsub float %23, %13
  %27 = fmul float %17, %26
  %28 = call float @llvm.fmuladd.f32(float %12, float %25, float %27)
  %29 = fsub float %13, %18
  %30 = call float @llvm.fmuladd.f32(float %22, float %29, float %28)
  %31 = call float @llvm.fabs.f32(float %30)
  %32 = fmul float %31, 5.000000e-01
  %33 = fadd float %.0118151.us, %32              ; 2 uses
  %34 = icmp ult i32 %24, %i.ee
  br i1 %34, label %._crit_edge.a, label %.preheader146.a, !llvm.loop !1673

.preheader146.a:                                  ; preds = %.split150.us, %._crit_edge.a
  %.0118151.a = phi float [ %33, %._crit_edge.a ], [ %i.eo, %.split150.us ]
  %35 = fpext float %.0118151.a to double
  br label %.preheader146.split.preheader

.preheader146.split.preheader:                    ; preds = %.preheader146.a, %bb.w
  %.0118.lcssa = phi double [ 0.000000e+00, %bb.w ], [ %35, %.preheader146.a ]
  %36 = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.b, i64 noundef 300, ptr noundef nonnull @.str.444, i32 noundef %i.ed, i32 noundef %i.dy, i32 noundef %i.ec, double noundef %.0118.lcssa) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  store <2 x float> zeroinitializer, ptr %6, align 8, !tbaa !86
  %37 = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.b, i1 noundef zeroext false, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %6) #35 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  %38 = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0)
  %or.cond6 = and i1 %i.bt, %38
  br i1 %or.cond6, label %bb.x, label %bb.y

.split150.us:                                     ; preds = %.lr.ph, %.split150.us
  %.0116152 = phi i32 [ %56, %.split150.us ], [ %i.ec, %.lr.ph ] ; 4 uses
  %.0118151 = phi float [ %i.eo, %.split150.us ], [ 0.000000e+00, %.lr.ph ]
  %39 = zext i32 %.0116152 to i64
  %40 = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %39
  %41 = load i16, ptr %40, align 2, !tbaa !275
  %42 = zext i16 %41 to i64
  %.sroa.15.0.in = getelementptr inbounds nuw [20 x i8], ptr %i.ea, i64 %42 ; 2 uses
  %43 = load float, ptr %.sroa.15.0.in, align 4
  %.sroa.18.0.in = getelementptr inbounds nuw i8, ptr %.sroa.15.0.in, i64 4
  %.sroa.18.0 = load float, ptr %.sroa.18.0.in, align 4 ; 2 uses
  %44 = add nuw i32 %.0116152, 1
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %45
  %47 = load i16, ptr %46, align 2, !tbaa !275
  %48 = zext i16 %47 to i64
  %.sroa.9.0.in = getelementptr inbounds nuw [20 x i8], ptr %i.ea, i64 %48 ; 2 uses
  %49 = load float, ptr %.sroa.9.0.in, align 4
  %.sroa.12.0.in = getelementptr inbounds nuw i8, ptr %.sroa.9.0.in, i64 4
  %.sroa.12.0 = load float, ptr %.sroa.12.0.in, align 4 ; 2 uses
  %50 = add i32 %.0116152, 2
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %51
  %53 = load i16, ptr %52, align 2, !tbaa !275
  %54 = zext i16 %53 to i64
  %.sroa.0.0.in = getelementptr inbounds nuw [20 x i8], ptr %i.ea, i64 %54 ; 2 uses
  %55 = load float, ptr %.sroa.0.0.in, align 4
  %.sroa.6.0.in = getelementptr inbounds nuw i8, ptr %.sroa.0.0.in, i64 4
  %.sroa.6.0 = load float, ptr %.sroa.6.0.in, align 4 ; 2 uses
  %56 = add i32 %.0116152, 3                      ; 2 uses
  %i.eg = fsub float %.sroa.12.0, %.sroa.6.0
  %i.eh = fsub float %.sroa.6.0, %.sroa.18.0
  %i.ei = fmul float %49, %i.eh
  %i.ej = call float @llvm.fmuladd.f32(float %43, float %i.eg, float %i.ei)
  %i.ek = fsub float %.sroa.18.0, %.sroa.12.0
  %i.el = call float @llvm.fmuladd.f32(float %55, float %i.ek, float %i.ej)
  %i.em = call float @llvm.fabs.f32(float %i.el)
  %i.en = fmul float %i.em, 5.000000e-01
  %i.eo = fadd float %.0118151, %i.en             ; 2 uses
  %i.ep = icmp ult i32 %56, %i.ee
  br i1 %i.ep, label %.split150.us, label %.preheader146.a, !llvm.loop !1673

bb.x:                                             ; preds = %.preheader146.split.preheader
  call void @_ZN5ImGui38DebugNodeDrawCmdShowMeshAndBoundingBoxEP10ImDrawListPKS0_PK9ImDrawCmdbb(ptr noundef nonnull %i.ba, ptr noundef nonnull %2, ptr noundef nonnull %.0119164, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.preheader146.split.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, i8 0, i64 48, i1 false)
  %i.eq = load i32, ptr %i.cu, align 8, !tbaa !944
  %i.er = udiv i32 %i.eq, 3
  call void @_ZN16ImGuiListClipper5BeginEif(ptr noundef nonnull align 8 dereferenceable(48) %7, i32 noundef %i.er, float noundef -1.000000e+00)
  %i.es = call noundef zeroext i1 @_ZN16ImGuiListClipper4StepEv(ptr noundef nonnull align 8 dereferenceable(48) %7)
  br i1 %i.es, label %.lr.ph162, label %._crit_edge163

.lr.ph162:                                        ; preds = %bb.y
  %.not136 = icmp eq ptr %i.dv, null              ; 3 uses
  br label %bb.z

.loopexit:                                        ; preds = %_ZN5ImGui13IsItemHoveredEi.exit.thread, %bb.z
  %i.et = call noundef zeroext i1 @_ZN16ImGuiListClipper4StepEv(ptr noundef nonnull align 8 dereferenceable(48) %7)
  br i1 %i.et, label %bb.z, label %._crit_edge163, !llvm.loop !1674

bb.z:                                             ; preds = %.lr.ph162, %.loopexit
  %i.eu = load i32, ptr %i.bw, align 8, !tbaa !335 ; 3 uses
  %i.ev = load i32, ptr %i.bx, align 4, !tbaa !377
  %i.ew = icmp slt i32 %i.eu, %i.ev
  br i1 %i.ew, label %.lr.ph160.preheader, label %.loopexit

.lr.ph160.preheader:                              ; preds = %bb.z
  %i.ex = load i32, ptr %i.eb, align 4, !tbaa !1100
  %i.ey = mul nsw i32 %i.eu, 3
  %i.ez = add i32 %i.ex, %i.ey
  br label %.lr.ph160

.lr.ph160:                                        ; preds = %.lr.ph160.preheader, %_ZN5ImGui13IsItemHoveredEi.exit.thread
  %.0113158 = phi i32 [ %indvars.iv.next175.2, %_ZN5ImGui13IsItemHoveredEi.exit.thread ], [ %i.ez, %.lr.ph160.preheader ] ; 3 uses
  %.0114157 = phi i32 [ %i.jt, %_ZN5ImGui13IsItemHoveredEi.exit.thread ], [ %i.eu, %.lr.ph160.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, i8 0, i64 24, i1 false), !tbaa !86
  %i.fa = sext i32 %.0113158 to i64               ; 4 uses
  br i1 %.not136, label %.preheader.1, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph160
  %i.fb = getelementptr inbounds [2 x i8], ptr %i.dv, i64 %i.fa
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !275
  %.pre = zext i16 %i.fc to i64
  br label %.preheader.1

.preheader.1:                                     ; preds = %.lr.ph160, %bb.aa
  %.pre-phi = phi i64 [ %i.fa, %.lr.ph160 ], [ %.pre, %bb.aa ]
  %i.fd = getelementptr inbounds [20 x i8], ptr %i.ea, i64 %.pre-phi ; 3 uses
  %i.fe = load i64, ptr %i.fd, align 4, !tbaa !86
  store i64 %i.fe, ptr %8, align 16, !tbaa !86
  %i.ff = load <4 x float>, ptr %i.fd, align 4, !tbaa !86
  %i.fg = fpext <4 x float> %i.ff to <4 x double> ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !1685
  %i.fj = extractelement <4 x double> %i.fg, i64 0
  %i.fk = extractelement <4 x double> %i.fg, i64 1
  %i.fl = extractelement <4 x double> %i.fg, i64 2
  %i.fm = extractelement <4 x double> %i.fg, i64 3
  %i.fn = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.b, i64 noundef 300, ptr noundef nonnull @.str.445, ptr noundef nonnull @.str.446, i32 noundef %.0113158, double noundef %i.fj, double noundef %i.fk, double noundef %i.fl, double noundef %i.fm, i32 noundef %i.fi)
  %i.fo = sext i32 %i.fn to i64                   ; 3 uses
  %i.fp = getelementptr inbounds i8, ptr %i.b, i64 %i.fo ; 2 uses
  %indvars.iv.next175 = add nsw i64 %i.fa, 1      ; 3 uses
  %i.fq = trunc nsw i64 %indvars.iv.next175 to i32
  br i1 %.not136, label %.preheader.2, label %bb.ab

bb.ab:                                            ; preds = %.preheader.1
  %i.fr = getelementptr inbounds [2 x i8], ptr %i.dv, i64 %indvars.iv.next175
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !275
  %i.ft = zext i16 %i.fs to i64
  br label %.preheader.2

.preheader.2:                                     ; preds = %bb.ab, %.preheader.1
  %i.fu = phi i64 [ %i.ft, %bb.ab ], [ %indvars.iv.next175, %.preheader.1 ]
  %i.fv = getelementptr inbounds [20 x i8], ptr %i.ea, i64 %i.fu ; 3 uses
  %i.fw = load i64, ptr %i.fv, align 4, !tbaa !86
  store i64 %i.fw, ptr %i.bz, align 8, !tbaa !86
  %gepdiff = sub nsw i64 300, %i.fo
  %i.fx = load <4 x float>, ptr %i.fv, align 4, !tbaa !86
  %i.fy = fpext <4 x float> %i.fx to <4 x double> ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !1685
  %i.gb = extractelement <4 x double> %i.fy, i64 0
  %i.gc = extractelement <4 x double> %i.fy, i64 1
  %i.gd = extractelement <4 x double> %i.fy, i64 2
  %i.ge = extractelement <4 x double> %i.fy, i64 3
  %i.gf = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.fp, i64 noundef %gepdiff, ptr noundef nonnull @.str.445, ptr noundef nonnull @.str.447, i32 noundef %i.fq, double noundef %i.gb, double noundef %i.gc, double noundef %i.gd, double noundef %i.ge, i32 noundef %i.ga)
  %i.gg = sext i32 %i.gf to i64                   ; 2 uses
  %i.gh = getelementptr inbounds i8, ptr %i.fp, i64 %i.gg
  %indvars.iv.next175.1 = add nsw i64 %i.fa, 2    ; 3 uses
  %i.gi = trunc nsw i64 %indvars.iv.next175.1 to i32
  br i1 %.not136, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.preheader.2
  %i.gj = getelementptr inbounds [2 x i8], ptr %i.dv, i64 %indvars.iv.next175.1
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !275
  %i.gl = zext i16 %i.gk to i64
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.preheader.2
  %i.gm = phi i64 [ %i.gl, %bb.ac ], [ %indvars.iv.next175.1, %.preheader.2 ]
  %i.gn = getelementptr inbounds [20 x i8], ptr %i.ea, i64 %i.gm ; 3 uses
  %i.go = load i64, ptr %i.gn, align 4, !tbaa !86
  store i64 %i.go, ptr %i.ca, align 16, !tbaa !86
  %i.gp = add nsw i64 %i.fo, %i.gg
  %gepdiff216 = sub nsw i64 300, %i.gp
  %i.gq = load <4 x float>, ptr %i.gn, align 4, !tbaa !86
  %i.gr = fpext <4 x float> %i.gq to <4 x double> ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !1685
  %i.gu = extractelement <4 x double> %i.gr, i64 0
  %i.gv = extractelement <4 x double> %i.gr, i64 1
  %i.gw = extractelement <4 x double> %i.gr, i64 2
  %i.gx = extractelement <4 x double> %i.gr, i64 3
  %i.gy = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.gh, i64 noundef %gepdiff216, ptr noundef nonnull @.str.445, ptr noundef nonnull @.str.447, i32 noundef %i.gi, double noundef %i.gu, double noundef %i.gv, double noundef %i.gw, double noundef %i.gx, i32 noundef %i.gt) ; 0 uses
  %indvars.iv.next175.2 = add i32 %.0113158, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  store <2 x float> zeroinitializer, ptr %9, align 8, !tbaa !86
  %i.gz = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.b, i1 noundef zeroext false, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %9) #35 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  br i1 %i.bt, label %bb.ae, label %_ZN5ImGui13IsItemHoveredEi.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.ha = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 15 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 5184
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !309 ; 5 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 8073
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !685, !range !120, !noundef !254
  %i.hf = trunc nuw i8 %i.he to i1
  br i1 %i.hf, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ha, i64 8072
  %i.hh = load i8, ptr %i.hg, align 8, !tbaa !440, !range !120, !noundef !254
  %i.hi = trunc nuw i8 %i.hh to i1
  br i1 %i.hi, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ha, i64 8076
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !394 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ha, i64 7704
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !441
  %i.hn = icmp eq i32 %i.hk, %i.hm
  %i.ho = icmp ne i32 %i.hk, 0
  %spec.select.i.i = and i1 %i.ho, %i.hn
  br i1 %spec.select.i.i, label %bb.ah, label %_ZN5ImGui13IsItemHoveredEi.exit.thread

bb.ah:                                            ; preds = %bb.ag
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ha, i64 7708
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !442
  %i.hr = and i32 %i.hq, 1024
  %.not70.i.not = icmp eq i32 %i.hr, 0
  br i1 %.not70.i.not, label %_ZN5ImGui13IsItemHoveredEi.exit, label %_ZN5ImGui13IsItemHoveredEi.exit.thread

bb.ai:                                            ; preds = %bb.af, %bb.ae
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ha, i64 7704
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ha, i64 7712
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !682 ; 2 uses
  %i.hv = and i32 %i.hu, 1
  %.not73.i = icmp eq i32 %i.hv, 0
  br i1 %.not73.i, label %_ZN5ImGui13IsItemHoveredEi.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ha, i64 5192
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !687
  %.not75.i = icmp ne ptr %i.hx, %i.hc
  %i.hy = and i32 %i.hu, 128
  %i.hz = icmp eq i32 %i.hy, 0
  %or.cond94.i = and i1 %i.hz, %.not75.i
  br i1 %or.cond94.i, label %_ZN5ImGui13IsItemHoveredEi.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ia = load i32, ptr %i.hs, align 8, !tbaa !441 ; 4 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ha, i64 5300
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !665 ; 3 uses
  %.not76.i = icmp eq i32 %i.ic, 0
  %.not77.i = icmp eq i32 %i.ic, %i.ia
  %or.cond95.i = select i1 %.not76.i, i1 true, i1 %.not77.i
  br i1 %or.cond95.i, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.id = getelementptr inbounds nuw i8, ptr %i.ha, i64 5313
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !671, !range !120, !noundef !254
  %i.if = trunc nuw i8 %i.ie to i1
  br i1 %i.if, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hc, i64 140
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !645
  %.not78.i = icmp eq i32 %i.ic, %i.ih
  br i1 %.not78.i, label %bb.an, label %_ZN5ImGui13IsItemHoveredEi.exit.thread

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ha, i64 8080
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !388 ; 2 uses
  %.not.i105.i = icmp eq ptr %i.ij, null
  br i1 %.not.i105.i, label %_ZN5ImGui24IsWindowContentHoverableEP11ImGuiWindowi.exit.thread.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 960
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !683 ; 6 uses
  %.not20.i.i = icmp eq ptr %i.il, null
  br i1 %.not20.i.i, label %_ZN5ImGui24IsWindowContentHoverableEP11ImGuiWindowi.exit.thread.i, label %bb.ap

end_hunk_1
