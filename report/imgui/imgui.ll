Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui?download=true
inline.NumInlined: 3345
inline.NumDeleted: 600
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZL30WindowSettingsHandler_ApplyAllP12ImGuiContextP20ImGuiSettingsHandler:bb.a
  br i1 %.not.i, label %select.unfold._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load ptr, ptr @GImGui, align 8           ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 5280
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 5288
  br label %bb.b

select.unfold._crit_edge:                         ; preds = %select.unfold, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %select.unfold
  %i.h = phi ptr [ %i.c, %.lr.ph ], [ %i.bp, %select.unfold ]
  %.019 = phi ptr [ %i.d, %.lr.ph ], [ %i.bt, %select.unfold ] ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.019, i64 14 ; 4 uses
  %i.j = load i8, ptr %i.i, align 2               ; 4 uses
  %i.k = and i8 %i.j, 4
  %.not12 = icmp eq i8 %i.k, 0
  br i1 %.not12, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %.019, align 4, !tbaa !608 ; 2 uses
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !262  ; 3 uses
  %i.n = load i32, ptr %i.f, align 8, !tbaa !261  ; 2 uses
  %i.o = sext i32 %i.n to i64                     ; 2 uses
  %.idx.i.i = shl nsw i64 %i.o, 4
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 %.idx.i.i
  %.not15.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not15.i.i.i, label %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.017.i.i.i = phi i64 [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.o, %bb.c ] ; 2 uses
  %.01316.i.i.i = phi ptr [ %.114.i.i.i, %.lr.ph.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.q = lshr i64 %.017.i.i.i, 1                  ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.01316.i.i.i, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !260
  %i.t = icmp ult i32 %i.s, %i.l                  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.neg.i.i.i = xor i64 %i.q, -1
  %i.v = add i64 %.017.i.i.i, %.neg.i.i.i
  %.114.i.i.i = select i1 %i.t, ptr %i.u, ptr %.01316.i.i.i ; 2 uses
  %.1.i.i.i = select i1 %i.t, i64 %i.v, i64 %i.q  ; 2 uses
  %.not.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not.i.i.i, label %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !8

_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.c
  %.013.lcssa.i.i.i = phi ptr [ %i.m, %bb.c ], [ %.114.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.w = icmp eq ptr %.013.lcssa.i.i.i, %i.p
  br i1 %i.w, label %_ZN5ImGui14FindWindowByIDEj.exit.thread, label %bb.d

bb.d:                                             ; preds = %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i
  %i.x = load i32, ptr %.013.lcssa.i.i.i, align 8, !tbaa !260
  %.not.i.i = icmp eq i32 %i.x, %i.l
  br i1 %.not.i.i, label %_ZN5ImGui14FindWindowByIDEj.exit, label %_ZN5ImGui14FindWindowByIDEj.exit.thread

_ZN5ImGui14FindWindowByIDEj.exit:                 ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.013.lcssa.i.i.i, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !82   ; 17 uses
  %.not13 = icmp eq ptr %i.z, null
  br i1 %.not13, label %_ZN5ImGui14FindWindowByIDEj.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN5ImGui14FindWindowByIDEj.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %.019, i64 4
  %i.ab = load <2 x i16>, ptr %i.aa, align 4, !tbaa !255
  %i.ac = sitofp <2 x i16> %i.ab to <2 x float>   ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store <2 x float> %i.ac, ptr %i.ad, align 8, !tbaa !75
  %i.ae = getelementptr inbounds nuw i8, ptr %.019, i64 8 ; 2 uses
  %i.af = load i16, ptr %i.ae, align 4, !tbaa !609
  %i.ag = icmp sgt i16 %i.af, 0
  br i1 %i.ag, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.019, i64 10
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !610
  %i.aj = icmp sgt i16 %i.ai, 0
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ak = load <2 x i16>, ptr %i.ae, align 4, !tbaa !255
  %i.al = uitofp nneg <2 x i16> %i.ak to <2 x float> ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  store <2 x float> %i.al, ptr %i.am, align 8, !tbaa !75
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store <2 x float> %i.al, ptr %i.an, align 8, !tbaa !75
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 233
  store i8 0, ptr %i.ao, align 1, !tbaa !611
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 232
  store i8 0, ptr %i.ap, align 8, !tbaa !612
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %i.aq = load i8, ptr %i.i, align 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.z, i64 207
  %i.as = and i8 %i.aq, 1
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !613
  %i.at = getelementptr inbounds nuw i8, ptr %i.z, i64 239 ; 2 uses
  %i.au = load i32, ptr %i.at, align 1
  %i.av = and i32 %i.au, -67372033
  store i32 %i.av, ptr %i.at, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.z, i64 312
  store <2 x float> %i.ac, ptr %i.aw, align 8, !tbaa !75
  %i.ax = getelementptr inbounds nuw i8, ptr %i.z, i64 304
  store <2 x float> %i.ac, ptr %i.ax, align 8, !tbaa !75
  %i.ay = getelementptr inbounds nuw i8, ptr %i.z, i64 296
  store <2 x float> %i.ac, ptr %i.ay, align 8, !tbaa !75
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !614
  %i.bb = and i32 %i.ba, 64
  %.not31.i = icmp eq i32 %i.bb, 0
  br i1 %.not31.i, label %bb.i, label %_ZL19ApplyWindowSettingsP11ImGuiWindowP19ImGuiWindowSettings.exit

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.bd = load float, ptr %i.bc, align 8, !tbaa !615
  %i.be = fcmp ole float %i.bd, 0.000000e+00      ; 2 uses
  %i.bf = select i1 %i.be, i8 2, i8 0
  %i.bg = getelementptr inbounds nuw i8, ptr %i.z, i64 52
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !616
  %i.bi = fcmp ole float %i.bh, 0.000000e+00      ; 2 uses
  %i.bj = select i1 %i.bi, i8 2, i8 0
  %narrow.i = select i1 %i.be, i1 true, i1 %i.bi
  %spec.select.i = zext i1 %narrow.i to i8
  br label %_ZL19ApplyWindowSettingsP11ImGuiWindowP19ImGuiWindowSettings.exit

_ZL19ApplyWindowSettingsP11ImGuiWindowP19ImGuiWindowSettings.exit: ; preds = %bb.h, %bb.i
  %.sink37.i = phi i8 [ %i.bf, %bb.i ], [ 2, %bb.h ]
  %.sink36.i = phi i8 [ %i.bj, %bb.i ], [ 2, %bb.h ]
  %.sink.i = phi i8 [ %spec.select.i, %bb.i ], [ 0, %bb.h ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.z, i64 232
  store i8 %.sink37.i, ptr %i.bk, align 8, !tbaa !612
  %i.bl = getelementptr inbounds nuw i8, ptr %i.z, i64 233
  store i8 %.sink36.i, ptr %i.bl, align 1, !tbaa !611
  %i.bm = getelementptr inbounds nuw i8, ptr %i.z, i64 234
  store i8 %.sink.i, ptr %i.bm, align 2, !tbaa !617
  %.pre = load i8, ptr %i.i, align 2
  br label %_ZN5ImGui14FindWindowByIDEj.exit.thread

_ZN5ImGui14FindWindowByIDEj.exit.thread:          ; preds = %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i, %bb.d, %_ZL19ApplyWindowSettingsP11ImGuiWindowP19ImGuiWindowSettings.exit, %_ZN5ImGui14FindWindowByIDEj.exit
  %i.bn = phi i8 [ %i.j, %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i ], [ %i.j, %bb.d ], [ %.pre, %_ZL19ApplyWindowSettingsP11ImGuiWindowP19ImGuiWindowSettings.exit ], [ %i.j, %_ZN5ImGui14FindWindowByIDEj.exit ]
  %i.bo = and i8 %i.bn, -5
  store i8 %i.bo, ptr %i.i, align 2
  %.pre20 = load ptr, ptr %i.b, align 8, !tbaa !603
  br label %select.unfold

select.unfold:                                    ; preds = %bb.b, %_ZN5ImGui14FindWindowByIDEj.exit.thread
  %i.bp = phi ptr [ %i.h, %bb.b ], [ %.pre20, %_ZN5ImGui14FindWindowByIDEj.exit.thread ] ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %.019, i64 -4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !237
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds i8, ptr %.019, i64 %i.bs ; 2 uses
  %i.bu = load i32, ptr %i.a, align 8, !tbaa !606
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds i8, ptr %i.bp, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.by = icmp eq ptr %i.bt, %i.bx
  br i1 %i.by, label %select.unfold._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL30WindowSettingsHandler_WriteAllP12ImGuiContextP20ImGuiSettingsHandlerP15ImGuiTextBuffer(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5216
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5224
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !494  ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !496  ; 2 uses
  %i.e = sext i32 %i.d to i64
  %.idx = shl nsw i64 %i.e, 3
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 %.idx
  %.not85 = icmp eq i32 %i.d, 0
  br i1 %.not85, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 10064 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 10112
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %i.i = load i32, ptr %2, align 8, !tbaa !278
  %spec.select.i = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.i, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 10104 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !606
  %i.l = mul nsw i32 %i.k, 6
  %i.m = add nsw i32 %i.l, %spec.select.i
  tail call void @_ZN8ImVectorIcE7reserveEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 10112 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !603  ; 3 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %select.unfold._crit_edge, label %.lr.ph89

.lr.ph89:                                         ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 133
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.g

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.05986 = phi ptr [ %i.c, %.lr.ph ], [ %i.ch, %bb.f ] ; 2 uses
  %i.t = load ptr, ptr %.05986, align 8, !tbaa !601 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 20 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !614  ; 3 uses
  %i.w = and i32 %i.v, 256
  %.not66 = icmp eq i32 %i.w, 0
  br i1 %.not66, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 708 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !602  ; 2 uses
  %.not.i68 = icmp eq i32 %i.y, -1
  br i1 %.not.i68, label %bb.d, label %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !618
  %i.ab = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 10104
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 10112
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !603 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i, label %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.thread, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %select.unfold.i.i, %.lr.ph.i.preheader.i
  %.0914.i.i = phi ptr [ %i.ao, %select.unfold.i.i ], [ %i.af, %.lr.ph.i.preheader.i ] ; 5 uses
  %i.ag = load i32, ptr %.0914.i.i, align 4, !tbaa !608
  %i.ah = icmp eq i32 %i.ag, %i.aa
  br i1 %i.ah, label %bb.e, label %select.unfold.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0914.i.i, i64 14
  %i.aj = load i8, ptr %i.ai, align 2
  %i.ak = and i8 %i.aj, 8
  %.not11.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not11.i.i, label %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.thread77, label %select.unfold.i.i

select.unfold.i.i:                                ; preds = %bb.e, %.lr.ph.i.i
  %i.al = getelementptr inbounds i8, ptr %.0914.i.i, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !237
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %.0914.i.i, i64 %i.an ; 2 uses
  %i.ap = load i32, ptr %i.ac, align 8, !tbaa !606
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %i.ae, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = icmp eq ptr %i.ao, %i.as
  br i1 %i.at, label %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.thread, label %.lr.ph.i.i

_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit: ; preds = %bb.c
  %i.au = load ptr, ptr @GImGui, align 8, !tbaa !227
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 10112
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !603 ; 2 uses
  %i.ax = sext i32 %i.y to i64
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 %i.ax
  %.not67 = icmp eq ptr %i.aw, null
  br i1 %.not67, label %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.thread, label %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.thread77

_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.thread: ; preds = %select.unfold.i.i, %bb.d, %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !313
  %i.bb = tail call noundef ptr @_ZN5ImGui23CreateNewWindowSettingsEPKc(ptr noundef %i.ba) ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %i.bd = load i16, ptr %i.g, align 8, !tbaa !82
  store i16 %i.bd, ptr %i.bc, align 4, !tbaa !82
  %i.be = load ptr, ptr %i.h, align 8, !tbaa !603
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = trunc i64 %i.bh to i32
  store i32 %i.bi, ptr %i.x, align 4, !tbaa !602
  %.pre = load i32, ptr %i.u, align 4, !tbaa !614
  br label %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.thread77

_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.thread77: ; preds = %bb.e, %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.thread, %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit
  %3 = phi i32 [ %i.v, %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit ], [ %.pre, %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.thread ], [ %i.v, %bb.e ]
  %.058 = phi ptr [ %i.ay, %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit ], [ %i.bb, %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.thread ], [ %.0914.i.i, %bb.e ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.bk = getelementptr inbounds nuw i8, ptr %.058, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.bm = load <2 x float>, ptr %i.bj, align 4, !tbaa !75 ; 2 uses
  %i.bn = load <2 x float>, ptr %i.bl, align 4, !tbaa !75 ; 2 uses
  %i.bo = shufflevector <2 x float> %i.bm, <2 x float> %i.bn, <2 x i32> <i32 0, i32 2>
  %i.bp = fptosi <2 x float> %i.bo to <2 x i16>
  %i.bq = shufflevector <2 x float> %i.bm, <2 x float> %i.bn, <2 x i32> <i32 1, i32 3>
  %i.br = fptosi <2 x float> %i.bq to <2 x i16>
  %i.bs = zext <2 x i16> %i.br to <2 x i32>
  %i.bt = shl nuw <2 x i32> %i.bs, splat (i32 16)
  %i.bu = zext <2 x i16> %i.bp to <2 x i32>
  %i.bv = or disjoint <2 x i32> %i.bt, %i.bu
  store <2 x i32> %i.bv, ptr %i.bk, align 4, !tbaa !255
  %i.bw = getelementptr inbounds nuw i8, ptr %.058, i64 14 ; 3 uses
  %i.bx = load i8, ptr %i.bw, align 2
  %sh.diff = lshr i32 %3, 23
  %tr.sh.diff = trunc i32 %sh.diff to i8
  %i.by = and i8 %tr.sh.diff, 2
  %i.bz = and i8 %i.bx, -3
  %i.ca = or disjoint i8 %i.by, %i.bz             ; 2 uses
  store i8 %i.ca, ptr %i.bw, align 2
  %i.cb = getelementptr inbounds nuw i8, ptr %i.t, i64 207
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !613, !range !100, !noundef !236
  %i.cd = and i8 %i.ca, -10
  %i.ce = or disjoint i8 %i.cd, %i.cc
  store i8 %i.ce, ptr %i.bw, align 2
  %i.cf = getelementptr inbounds nuw i8, ptr %.058, i64 12
  %i.cg = load i16, ptr %i.g, align 8, !tbaa !82
  store i16 %i.cg, ptr %i.cf, align 4, !tbaa !82
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.thread77
  %i.ch = getelementptr inbounds nuw i8, ptr %.05986, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ch, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b

select.unfold._crit_edge:                         ; preds = %select.unfold, %._crit_edge
  ret void

bb.g:                                             ; preds = %.lr.ph89, %select.unfold
  %i.ci = phi ptr [ %i.o, %.lr.ph89 ], [ %i.em, %select.unfold ]
  %.087 = phi ptr [ %i.p, %.lr.ph89 ], [ %i.eq, %select.unfold ] ; 11 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.087, i64 14 ; 3 uses
  %i.ck = load i8, ptr %i.cj, align 2
  %i.cl = and i8 %i.ck, 8
  %.not63 = icmp eq i8 %i.cl, 0
  br i1 %.not63, label %bb.h, label %select.unfold

bb.h:                                             ; preds = %bb.g
  %i.cm = getelementptr inbounds nuw i8, ptr %.087, i64 16
  %i.cn = load ptr, ptr %1, align 8, !tbaa !441
  tail call void (ptr, ptr, ...) @_ZN15ImGuiTextBuffer7appendfEPKcz(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.771, ptr noundef %i.cn, ptr noundef nonnull %i.cm)
  %i.co = load i8, ptr %i.cj, align 2
  %i.cp = and i8 %i.co, 2
  %.not64 = icmp eq i8 %i.cp, 0
  br i1 %.not64, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ptr, ...) @_ZN15ImGuiTextBuffer7appendfEPKcz(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.772)
  %i.cq = getelementptr inbounds nuw i8, ptr %.087, i64 8
  %i.cr = load i16, ptr %i.cq, align 4, !tbaa !609
  %i.cs = sext i16 %i.cr to i32
  %i.ct = getelementptr inbounds nuw i8, ptr %.087, i64 10
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !610
  %i.cv = sext i16 %i.cu to i32
  tail call void (ptr, ptr, ...) @_ZN15ImGuiTextBuffer7appendfEPKcz(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.773, i32 noundef %i.cs, i32 noundef %i.cv)
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cw = getelementptr inbounds nuw i8, ptr %.087, i64 4
  %i.cx = load i16, ptr %i.cw, align 4, !tbaa !619
  %i.cy = sext i16 %i.cx to i32
  %i.cz = getelementptr inbounds nuw i8, ptr %.087, i64 6
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !620
  %i.db = sext i16 %i.da to i32
  tail call void (ptr, ptr, ...) @_ZN15ImGuiTextBuffer7appendfEPKcz(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.774, i32 noundef %i.cy, i32 noundef %i.db)
  %i.dc = getelementptr inbounds nuw i8, ptr %.087, i64 8
  %i.dd = load i16, ptr %i.dc, align 4, !tbaa !609
  %i.de = sext i16 %i.dd to i32
  %i.df = getelementptr inbounds nuw i8, ptr %.087, i64 10
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !610
  %i.dh = sext i16 %i.dg to i32
  tail call void (ptr, ptr, ...) @_ZN15ImGuiTextBuffer7appendfEPKcz(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.773, i32 noundef %i.de, i32 noundef %i.dh)
  %i.di = load i8, ptr %i.cj, align 2
  %i.dj = trunc i8 %i.di to i1
  br i1 %i.dj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ptr, ...) @_ZN15ImGuiTextBuffer7appendfEPKcz(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.775)
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  %i.dk = load i8, ptr %i.q, align 1, !tbaa !1255, !range !100, !noundef !236
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.m, label %_ZNK15ImGuiPackedDate6UnpackEv.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.dm = getelementptr inbounds nuw i8, ptr %.087, i64 12
  %i.dn = load i16, ptr %i.dm, align 2            ; 3 uses
  %i.do = and i16 %i.dn, 127                      ; 2 uses
  %.not.i70 = icmp eq i16 %i.do, 0
  br i1 %.not.i70, label %_ZNK15ImGuiPackedDate6UnpackEv.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dp = lshr i16 %i.dn, 7
  %i.dq = and i16 %i.dp, 15                       ; 2 uses
  %.not3.i = icmp eq i16 %i.dq, 0
  br i1 %.not3.i, label %_ZNK15ImGuiPackedDate6UnpackEv.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dr = lshr i16 %i.dn, 11                      ; 2 uses
  %.not4.i = icmp eq i16 %i.dr, 0
  br i1 %.not4.i, label %_ZNK15ImGuiPackedDate6UnpackEv.exit.thread, label %_ZNK15ImGuiPackedDate6UnpackEv.exit

_ZNK15ImGuiPackedDate6UnpackEv.exit:              ; preds = %bb.o
  %narrow.i = add nuw nsw i16 %i.do, 2000
  %i.ds = zext nneg i16 %narrow.i to i32
  %i.dt = mul nuw nsw i32 %i.ds, 10000
  %narrow5.i = mul nuw nsw i16 %i.dq, 100
  %narrow6.i = add nuw nsw i16 %narrow5.i, %i.dr
  %i.du = zext nneg i16 %narrow6.i to i32
  %i.dv = add nuw nsw i32 %i.dt, %i.du
  tail call void (ptr, ptr, ...) @_ZN15ImGuiTextBuffer7appendfEPKcz(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.776, i32 noundef %i.dv)
  br label %_ZNK15ImGuiPackedDate6UnpackEv.exit.thread

_ZNK15ImGuiPackedDate6UnpackEv.exit.thread:       ; preds = %bb.m, %bb.n, %bb.o, %_ZNK15ImGuiPackedDate6UnpackEv.exit, %bb.l
  %i.dw = load i32, ptr %2, align 8, !tbaa !278
  %spec.select.i71 = tail call i32 @llvm.umax.i32(i32 %i.dw, i32 1) ; 3 uses
  %i.dx = add nsw i32 %spec.select.i71, 1         ; 4 uses
  %i.dy = load i32, ptr %i.r, align 4, !tbaa !279 ; 3 uses
  %.not22.i = icmp slt i32 %i.dx, %i.dy
  br i1 %.not22.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNK15ImGuiPackedDate6UnpackEv.exit.thread
  %i.dz = shl nsw i32 %i.dy, 1
  %i.ea = tail call i32 @llvm.smax.i32(i32 %i.dx, i32 %i.dz)
  tail call void @_ZN8ImVectorIcE7reserveEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.ea)
  %.pr.i = load i32, ptr %i.r, align 4, !tbaa !279
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNK15ImGuiPackedDate6UnpackEv.exit.thread
  %i.eb = phi i32 [ %.pr.i, %bb.p ], [ %i.dy, %_ZNK15ImGuiPackedDate6UnpackEv.exit.thread ] ; 4 uses
  %.not83 = icmp slt i32 %spec.select.i71, %i.eb
  br i1 %.not83, label %_ZN15ImGuiTextBuffer6appendEPKcS1_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not.i.i.i72 = icmp eq i32 %i.eb, 0
  br i1 %.not.i.i.i72, label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ec = sdiv i32 %i.eb, 2
  %i.ed = add nsw i32 %i.ec, %i.eb
  br label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i

_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i:      ; preds = %bb.s, %bb.r
  %i.ee = phi i32 [ %i.ed, %bb.s ], [ 8, %bb.r ]
  %i.ef = tail call noundef i32 @llvm.smax.i32(i32 %i.ee, i32 %i.dx)
  tail call void @_ZN8ImVectorIcE7reserveEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.ef)
  br label %_ZN15ImGuiTextBuffer6appendEPKcS1_.exit

_ZN15ImGuiTextBuffer6appendEPKcS1_.exit:          ; preds = %bb.q, %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i
  store i32 %i.dx, ptr %2, align 8, !tbaa !280
  %i.eg = load ptr, ptr %i.s, align 8, !tbaa !281
  %i.eh = sext i32 %spec.select.i71 to i64        ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eg, i64 %i.eh
  %i.ej = getelementptr i8, ptr %i.ei, i64 -1
  store i8 10, ptr %i.ej, align 1
  %i.ek = load ptr, ptr %i.s, align 8, !tbaa !281
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 %i.eh
  store i8 0, ptr %i.el, align 1, !tbaa !82
  %.pre91 = load ptr, ptr %i.n, align 8, !tbaa !603
  br label %select.unfold

select.unfold:                                    ; preds = %bb.g, %_ZN15ImGuiTextBuffer6appendEPKcS1_.exit
  %i.em = phi ptr [ %i.ci, %bb.g ], [ %.pre91, %_ZN15ImGuiTextBuffer6appendEPKcS1_.exit ] ; 2 uses
  %i.en = getelementptr inbounds i8, ptr %.087, i64 -4
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !237
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds i8, ptr %.087, i64 %i.ep ; 2 uses
  %i.er = load i32, ptr %i.j, align 8, !tbaa !606
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds i8, ptr %i.em, i64 %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.ev = icmp eq ptr %i.eq, %i.eu
  br i1 %i.ev, label %select.unfold._crit_edge, label %bb.g
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui18AddSettingsHandlerEPK20ImGuiSettingsHandler(ptr noundef nonnull %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 10088
  tail call void @_ZN8ImVectorI20ImGuiSettingsHandlerE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %0)
  ret void
}

declare void @_ZN5ImGui31TableSettingsAddSettingsHandlerEv() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui23LocalizeRegisterEntriesEPK13ImGuiLocEntryi(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #23 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load ptr, ptr @GImGui, align 8, !tbaa !227
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 10168 ; 5 uses
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.d = icmp ult i32 %1, 4
  br i1 %i.d, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

end_hunk_0
