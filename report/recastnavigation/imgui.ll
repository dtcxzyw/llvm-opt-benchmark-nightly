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
