Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui?download=true
inline.NumInlined: 2414
inline.NumDeleted: 435
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZL30WindowSettingsHandler_ApplyAllP12ImGuiContextP20ImGuiSettingsHandler:bb.a
  %.03.i.i.i = phi i64 [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.p, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.0152.i.i.i = phi ptr [ %.116.i.i.i, %.lr.ph.i.i.i ], [ %.val7.i.i, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.q = lshr i64 %.03.i.i.i, 1                   ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.0152.i.i.i, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !197
  %i.t = icmp ult i32 %i.s, %i.o                  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.neg.i.i.i = xor i64 %i.q, -1
  %i.v = add i64 %.03.i.i.i, %.neg.i.i.i
  %.116.i.i.i = select i1 %i.t, ptr %i.u, ptr %.0152.i.i.i ; 2 uses
  %.1.i.i.i = select i1 %i.t, i64 %i.v, i64 %i.q  ; 2 uses
  %.not.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZL10LowerBoundR8ImVectorIN12ImGuiStorage16ImGuiStoragePairEEj.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !8

_ZL10LowerBoundR8ImVectorIN12ImGuiStorage16ImGuiStoragePairEEj.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.c
  %.pre-phi.i.i = phi i64 [ 0, %bb.c ], [ %i.p, %.lr.ph.i.i.i ]
  %.015.lcssa.i.i.i = phi ptr [ %.val7.i.i, %bb.c ], [ %.116.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.w = getelementptr inbounds [16 x i8], ptr %.val7.i.i, i64 %.pre-phi.i.i
  %i.x = icmp eq ptr %.015.lcssa.i.i.i, %i.w
  br i1 %i.x, label %_ZN5ImGui14FindWindowByIDEj.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZL10LowerBoundR8ImVectorIN12ImGuiStorage16ImGuiStoragePairEEj.exit.i.i
  %i.y = load i32, ptr %.015.lcssa.i.i.i, align 8, !tbaa !197
  %.not.i.i = icmp eq i32 %i.y, %i.o
  br i1 %.not.i.i, label %_ZN5ImGui14FindWindowByIDEj.exit, label %_ZN5ImGui14FindWindowByIDEj.exit.thread

_ZN5ImGui14FindWindowByIDEj.exit:                 ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.015.lcssa.i.i.i, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !80  ; 5 uses
  %.not12 = icmp eq ptr %i.aa, null
  br i1 %.not12, label %_ZN5ImGui14FindWindowByIDEj.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN5ImGui14FindWindowByIDEj.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %.017, i64 4
  %i.ac = load <2 x i16>, ptr %i.ab, align 4, !tbaa !193
  %i.ad = sitofp <2 x i16> %i.ac to <2 x float>
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <2 x float> %i.ad, ptr %i.ae, align 8, !tbaa !75
  %i.af = getelementptr inbounds nuw i8, ptr %.017, i64 8
  %i.ag = load i16, ptr %i.af, align 4, !tbaa !609 ; 2 uses
  %i.ah = icmp sgt i16 %i.ag, 0
  br i1 %i.ah, label %bb.f, label %_ZL19ApplyWindowSettingsP11ImGuiWindowP19ImGuiWindowSettings.exit

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %.017, i64 10
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !610 ; 2 uses
  %i.ak = icmp sgt i16 %i.aj, 0
  br i1 %i.ak, label %bb.g, label %_ZL19ApplyWindowSettingsP11ImGuiWindowP19ImGuiWindowSettings.exit

bb.g:                                             ; preds = %bb.f
  %i.al = insertelement <2 x i16> poison, i16 %i.ag, i64 0
  %i.am = insertelement <2 x i16> %i.al, i16 %i.aj, i64 1
  %i.an = uitofp <2 x i16> %i.am to <2 x float>   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store <2 x float> %i.an, ptr %i.ao, align 8, !tbaa !75
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store <2 x float> %i.an, ptr %i.ap, align 8, !tbaa !75
  br label %_ZL19ApplyWindowSettingsP11ImGuiWindowP19ImGuiWindowSettings.exit

_ZL19ApplyWindowSettingsP11ImGuiWindowP19ImGuiWindowSettings.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %.017, i64 12
  %i.ar = load i8, ptr %i.aq, align 4, !tbaa !611, !range !216, !noundef !217
  %i.as = getelementptr inbounds nuw i8, ptr %i.aa, i64 145
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !595
  br label %_ZN5ImGui14FindWindowByIDEj.exit.thread

_ZN5ImGui14FindWindowByIDEj.exit.thread:          ; preds = %_ZL10LowerBoundR8ImVectorIN12ImGuiStorage16ImGuiStoragePairEEj.exit.i.i, %bb.d, %_ZL19ApplyWindowSettingsP11ImGuiWindowP19ImGuiWindowSettings.exit, %_ZN5ImGui14FindWindowByIDEj.exit
  store i8 0, ptr %i.l, align 1, !tbaa !668
  br label %select.unfold

select.unfold:                                    ; preds = %bb.b, %_ZN5ImGui14FindWindowByIDEj.exit.thread
  %i.at = getelementptr inbounds i8, ptr %.017, i64 -4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !94
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds i8, ptr %.017, i64 %i.av ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.k
  br i1 %i.ax, label %select.unfold._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL30WindowSettingsHandler_WriteAllP12ImGuiContextP20ImGuiSettingsHandlerP15ImGuiTextBuffer(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7088 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !504  ; 3 uses
  %.not58 = icmp eq i32 %i.b, 0
  br i1 %.not58, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 7096
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12480 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %bb.k, %bb.a
  %i.e = load i32, ptr %2, align 8, !tbaa !213
  %spec.select.i = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.e, i32 1)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12472 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !608
  %i.h = mul nsw i32 %i.g, 6
  %i.i = add nsw i32 %i.h, %spec.select.i         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !103
  %.not.i.i = icmp sgt i32 %i.i, %i.k
  br i1 %.not.i.i, label %bb.b, label %_ZN15ImGuiTextBuffer7reserveEi.exit

bb.b:                                             ; preds = %._crit_edge
  %i.l = sext i32 %i.i to i64
  %i.m = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZN5ImGui8MemAllocEm.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 944 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !180
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 8, !tbaa !180
  br label %_ZN5ImGui8MemAllocEm.exit.i.i

_ZN5ImGui8MemAllocEm.exit.i.i:                    ; preds = %bb.c, %bb.b
  %i.q = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !181
  %i.r = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !181
  %i.s = tail call noundef ptr %i.q(i64 noundef %i.l, ptr noundef %i.r), !inline_history !1043 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !102  ; 2 uses
  %.not6.i.i = icmp eq ptr %i.u, null
  br i1 %.not6.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZN5ImGui8MemAllocEm.exit.i.i
  %i.v = load i32, ptr %2, align 8, !tbaa !101
  %i.w = sext i32 %i.v to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr nonnull align 1 %i.u, i64 %i.w, i1 false)
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !102  ; 2 uses
  %.not.i7.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i7.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not4.i.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 944 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !180
  %i.ab = add nsw i32 %i.aa, -1
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !180
  br label %_ZN5ImGui7MemFreeEPv.exit.i.i

_ZN5ImGui7MemFreeEPv.exit.i.i:                    ; preds = %bb.f, %bb.e, %bb.d
  %i.ac = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !181
  %i.ad = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !181
  tail call void %i.ac(ptr noundef %i.x, ptr noundef %i.ad), !inline_history !1044
  br label %bb.g

bb.g:                                             ; preds = %_ZN5ImGui7MemFreeEPv.exit.i.i, %_ZN5ImGui8MemAllocEm.exit.i.i
  store ptr %i.s, ptr %i.t, align 8, !tbaa !102
  store i32 %i.i, ptr %i.j, align 4, !tbaa !103
  br label %_ZN15ImGuiTextBuffer7reserveEi.exit

_ZN15ImGuiTextBuffer7reserveEi.exit:              ; preds = %._crit_edge, %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12480 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !605 ; 2 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %select.unfold._crit_edge, label %select.unfold.preheader

select.unfold.preheader:                          ; preds = %_ZN15ImGuiTextBuffer7reserveEi.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  br label %select.unfold

bb.h:                                             ; preds = %.lr.ph, %bb.k
  %.pre64 = phi i32 [ %i.b, %.lr.ph ], [ %.pre65, %bb.k ] ; 3 uses
  %i.ah = phi i32 [ %i.b, %.lr.ph ], [ %i.ci, %bb.k ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !340
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !476 ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.am = load i32, ptr %i.al, align 4, !tbaa !392
  %i.an = and i32 %i.am, 256
  %.not46 = icmp eq i32 %i.an, 0
  br i1 %.not46, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 612 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !331 ; 2 uses
  %.not47 = icmp eq i32 %i.ap, -1
  br i1 %.not47, label %bb.j, label %_ZN5ImGui18FindWindowSettingsEj.exit

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !315
  %i.as = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 12472
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 12480
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !605 ; 3 uses
  %.not.i.i49 = icmp eq ptr %i.av, null
  br i1 %.not.i.i49, label %_ZN5ImGui18FindWindowSettingsEj.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %select.unfold.i, %.lr.ph.i.preheader
  %.0812.i = phi ptr [ %i.bc, %select.unfold.i ], [ %i.aw, %.lr.ph.i.preheader ] ; 4 uses
  %i.ax = load i32, ptr %.0812.i, align 4, !tbaa !607
  %i.ay = icmp eq i32 %i.ax, %i.ar
  br i1 %i.ay, label %_ZN5ImGui18FindWindowSettingsEj.exit.thread53, label %select.unfold.i

select.unfold.i:                                  ; preds = %.lr.ph.i
  %i.az = getelementptr inbounds i8, ptr %.0812.i, i64 -4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !94
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds i8, ptr %.0812.i, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.at, align 8, !tbaa !608
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr %i.av, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bh = icmp eq ptr %i.bc, %i.bg
  br i1 %i.bh, label %_ZN5ImGui18FindWindowSettingsEj.exit.thread, label %.lr.ph.i

_ZN5ImGui18FindWindowSettingsEj.exit:             ; preds = %bb.i
  %i.bi = load ptr, ptr %i.d, align 8, !tbaa !605 ; 2 uses
  %i.bj = sext i32 %i.ap to i64
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 %i.bj
  %.not48 = icmp eq ptr %i.bi, null
  br i1 %.not48, label %_ZN5ImGui18FindWindowSettingsEj.exit.thread, label %_ZN5ImGui18FindWindowSettingsEj.exit.thread53

_ZN5ImGui18FindWindowSettingsEj.exit.thread:      ; preds = %select.unfold.i, %bb.j, %_ZN5ImGui18FindWindowSettingsEj.exit
  %i.bl = load ptr, ptr %i.ak, align 8, !tbaa !313
  %i.bm = tail call noundef ptr @_ZN5ImGui23CreateNewWindowSettingsEPKc(ptr noundef %i.bl) ; 2 uses
  %i.bn = load ptr, ptr %i.d, align 8, !tbaa !605
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = trunc i64 %i.bq to i32
  store i32 %i.br, ptr %i.ao, align 4, !tbaa !331
  %.pre.pre = load i32, ptr %i.a, align 8, !tbaa !504
  br label %_ZN5ImGui18FindWindowSettingsEj.exit.thread53

_ZN5ImGui18FindWindowSettingsEj.exit.thread53:    ; preds = %.lr.ph.i, %_ZN5ImGui18FindWindowSettingsEj.exit.thread, %_ZN5ImGui18FindWindowSettingsEj.exit
  %.pre = phi i32 [ %.pre64, %_ZN5ImGui18FindWindowSettingsEj.exit ], [ %.pre.pre, %_ZN5ImGui18FindWindowSettingsEj.exit.thread ], [ %.pre64, %.lr.ph.i ] ; 2 uses
  %.041 = phi ptr [ %i.bk, %_ZN5ImGui18FindWindowSettingsEj.exit ], [ %i.bm, %_ZN5ImGui18FindWindowSettingsEj.exit.thread ], [ %.0812.i, %.lr.ph.i ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %.041, i64 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.bv = load <2 x float>, ptr %i.bs, align 4, !tbaa !75 ; 2 uses
  %i.bw = load <2 x float>, ptr %i.bu, align 4, !tbaa !75 ; 2 uses
  %i.bx = shufflevector <2 x float> %i.bv, <2 x float> %i.bw, <2 x i32> <i32 0, i32 2>
  %i.by = fptosi <2 x float> %i.bx to <2 x i16>
  %i.bz = shufflevector <2 x float> %i.bv, <2 x float> %i.bw, <2 x i32> <i32 1, i32 3>
  %i.ca = fptosi <2 x float> %i.bz to <2 x i16>
  %i.cb = zext <2 x i16> %i.ca to <2 x i32>
  %i.cc = shl nuw <2 x i32> %i.cb, splat (i32 16)
  %i.cd = zext <2 x i16> %i.by to <2 x i32>
  %i.ce = or disjoint <2 x i32> %i.cc, %i.cd
  store <2 x i32> %i.ce, ptr %i.bt, align 4, !tbaa !193
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ak, i64 145
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !595, !range !216, !noundef !217
  %i.ch = getelementptr inbounds nuw i8, ptr %.041, i64 12
  store i8 %i.cg, ptr %i.ch, align 4, !tbaa !611
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %_ZN5ImGui18FindWindowSettingsEj.exit.thread53
  %.pre65 = phi i32 [ %.pre64, %bb.h ], [ %.pre, %_ZN5ImGui18FindWindowSettingsEj.exit.thread53 ]
  %i.ci = phi i32 [ %i.ah, %bb.h ], [ %.pre, %_ZN5ImGui18FindWindowSettingsEj.exit.thread53 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cj = zext i32 %i.ci to i64
  %.not = icmp eq i64 %indvars.iv.next, %i.cj
  br i1 %.not, label %._crit_edge, label %bb.h, !llvm.loop !1045

select.unfold._crit_edge:                         ; preds = %select.unfold, %_ZN15ImGuiTextBuffer7reserveEi.exit
  ret void

select.unfold:                                    ; preds = %select.unfold.preheader, %select.unfold
  %.060 = phi ptr [ %i.de, %select.unfold ], [ %i.ag, %select.unfold.preheader ] ; 8 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.060, i64 16
  %i.cl = load ptr, ptr %1, align 8, !tbaa !670
  tail call void (ptr, ptr, ...) @_ZN15ImGuiTextBuffer7appendfEPKcz(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.311, ptr noundef %i.cl, ptr noundef nonnull %i.ck)
  %i.cm = getelementptr inbounds nuw i8, ptr %.060, i64 4
  %i.cn = load i16, ptr %i.cm, align 4, !tbaa !671
  %i.co = sext i16 %i.cn to i32
  %i.cp = getelementptr inbounds nuw i8, ptr %.060, i64 6
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !672
  %i.cr = sext i16 %i.cq to i32
  tail call void (ptr, ptr, ...) @_ZN15ImGuiTextBuffer7appendfEPKcz(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.312, i32 noundef %i.co, i32 noundef %i.cr)
  %i.cs = getelementptr inbounds nuw i8, ptr %.060, i64 8
  %i.ct = load i16, ptr %i.cs, align 4, !tbaa !609
  %i.cu = sext i16 %i.ct to i32
  %i.cv = getelementptr inbounds nuw i8, ptr %.060, i64 10
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !610
  %i.cx = sext i16 %i.cw to i32
  tail call void (ptr, ptr, ...) @_ZN15ImGuiTextBuffer7appendfEPKcz(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.313, i32 noundef %i.cu, i32 noundef %i.cx)
  %i.cy = getelementptr inbounds nuw i8, ptr %.060, i64 12
  %i.cz = load i8, ptr %i.cy, align 4, !tbaa !611, !range !216, !noundef !217
  %i.da = zext nneg i8 %i.cz to i32
  tail call void (ptr, ptr, ...) @_ZN15ImGuiTextBuffer7appendfEPKcz(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.314, i32 noundef %i.da)
  tail call void @_ZN15ImGuiTextBuffer6appendEPKcS1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.88, ptr noundef null)
  %i.db = getelementptr inbounds i8, ptr %.060, i64 -4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !94
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds i8, ptr %.060, i64 %i.dd ; 2 uses
  %i.df = load ptr, ptr %i.ae, align 8, !tbaa !605
  %i.dg = load i32, ptr %i.f, align 8, !tbaa !608
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds i8, ptr %i.df, i64 %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.dk = icmp eq ptr %i.de, %i.dj
  br i1 %i.dk, label %select.unfold._crit_edge, label %select.unfold
}

declare void @_ZN5ImGui27TableSettingsInstallHandlerEP12ImGuiContext(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui21SaveIniSettingsToDiskEPKc(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = load ptr, ptr @GImGui, align 8, !tbaa !99
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12436
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !448
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  store i64 0, ptr %i.a, align 8, !tbaa !191
  %i.d = call noundef ptr @_ZN5ImGui23SaveIniSettingsToMemoryEPm(ptr noundef nonnull %i.a)
  %i.e = call noalias noundef ptr @fopen(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.98) ; 3 uses
  %.not8 = icmp eq ptr %i.e, null
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !191
  %i.g = call noundef i64 @fwrite(ptr noundef nonnull readonly %i.d, i64 noundef 1, i64 noundef %i.f, ptr noundef nonnull %i.e) ; 0 uses
  %i.h = call i32 @fclose(ptr noundef nonnull %i.e) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6ImPoolI11ImGuiTabBarE5ClearEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !673
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

._crit_edge:                                      ; preds = %_ZN11ImGuiTabBarD2Ev.exit, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !199  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN12ImGuiStorage5ClearEv.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.h, align 4, !tbaa !200
  store i32 0, ptr %i.a, align 8, !tbaa !198
  %i.i = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not4.i.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 944 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !180
  %i.l = add nsw i32 %i.k, -1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !180
  br label %_ZN5ImGui7MemFreeEPv.exit.i.i

_ZN5ImGui7MemFreeEPv.exit.i.i:                    ; preds = %bb.c, %bb.b
  %i.m = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !181
  %i.n = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !181
  tail call void %i.m(ptr noundef nonnull %i.g, ptr noundef %i.n), !inline_history !23
  store ptr null, ptr %i.f, align 8, !tbaa !199
  br label %_ZN12ImGuiStorage5ClearEv.exit

_ZN12ImGuiStorage5ClearEv.exit:                   ; preds = %._crit_edge, %_ZN5ImGui7MemFreeEPv.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !674  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZN8ImVectorI11ImGuiTabBarE5clearEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN12ImGuiStorage5ClearEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.q, align 4, !tbaa !1048
  store i32 0, ptr %0, align 8, !tbaa !1049
  %i.r = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.r, null
  br i1 %.not4.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 944 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !180
  %i.u = add nsw i32 %i.t, -1
end_hunk_0
begin_hunk_1_@_ZN5ImGui23CreateNewWindowSettingsEPKc:bb.a
  %i.af = add nsw i32 %i.ae, -1
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !180
  br label %_ZN5ImGui7MemFreeEPv.exit.i.i.i

_ZN5ImGui7MemFreeEPv.exit.i.i.i:                  ; preds = %bb.f, %bb.e, %bb.d
  %i.ag = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !181
  %i.ah = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !181
  tail call void %i.ag(ptr noundef %i.ab, ptr noundef %i.ah), !inline_history !1141
  br label %bb.g

bb.g:                                             ; preds = %_ZN5ImGui7MemFreeEPv.exit.i.i.i, %_ZN5ImGui8MemAllocEm.exit.i.i.i
  store ptr %i.w, ptr %i.x, align 8, !tbaa !102
  store i32 %i.p, ptr %i.j, align 4, !tbaa !103
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._ZN8ImVectorIcE6resizeEi.exit_crit_edge.i
  %i.ai = phi ptr [ %.pre.i, %._ZN8ImVectorIcE6resizeEi.exit_crit_edge.i ], [ %i.w, %bb.g ]
  store i32 %i.i, ptr %i.d, align 8, !tbaa !101
  %i.aj = sext i32 %i.e to i64
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 %i.aj ; 3 uses
  store i32 %i.h, ptr %i.ak, align 4, !tbaa !94
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %.preheader.i, label %.preheader38.i

.preheader.i:                                     ; preds = %bb.h
  %i.am = load i8, ptr %spec.select, align 1, !tbaa !80 ; 2 uses
  %.not3342.i = icmp eq i8 %i.am, 0
  br i1 %.not3342.i, label %_Z9ImHashStrPKcmj.exit, label %.lr.ph.i

.preheader38.i:                                   ; preds = %bb.h, %bb.k
  %.in.i = phi i64 [ %i.an, %bb.k ], [ %i.c, %bb.h ]
  %.02741.i = phi ptr [ %i.ao, %bb.k ], [ %spec.select, %bb.h ] ; 3 uses
  %.02840.i = phi i32 [ %i.be, %bb.k ], [ -1, %bb.h ] ; 3 uses
  %i.an = add i64 %.in.i, -1                      ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.02741.i, i64 1 ; 2 uses
  %i.ap = load i8, ptr %.02741.i, align 1, !tbaa !80 ; 2 uses
  %i.aq = zext i8 %i.ap to i32
  %i.ar = icmp eq i8 %i.ap, 35
  %i.as = icmp ugt i64 %i.an, 1
  %or.cond.i = and i1 %i.as, %i.ar
  br i1 %or.cond.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.preheader38.i
  %i.at = load i8, ptr %i.ao, align 1, !tbaa !80
  %i.au = icmp eq i8 %i.at, 35
  br i1 %i.au, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %.02741.i, i64 2
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !80
  %i.ax = icmp eq i8 %i.aw, 35
  %spec.select.i = select i1 %i.ax, i32 -1, i32 %.02840.i
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %.preheader38.i
  %.129.i = phi i32 [ %.02840.i, %.preheader38.i ], [ %spec.select.i, %bb.j ], [ %.02840.i, %bb.i ] ; 2 uses
  %i.ay = lshr i32 %.129.i, 8
  %i.az = and i32 %.129.i, 255
  %i.ba = xor i32 %i.az, %i.aq
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !94
  %i.be = xor i32 %i.ay, %i.bd                    ; 2 uses
  %.not34.i = icmp eq i64 %i.an, 0
  br i1 %.not34.i, label %_Z9ImHashStrPKcmj.exit, label %.preheader38.i, !llvm.loop !7

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.m
  %i.bf = phi i8 [ %.pre.i17, %bb.m ], [ %i.am, %.preheader.i ] ; 2 uses
  %.144.i = phi ptr [ %i.bg, %bb.m ], [ %spec.select, %.preheader.i ] ; 2 uses
  %.243.i = phi i32 [ %i.bt, %bb.m ], [ -1, %.preheader.i ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.144.i, i64 1 ; 2 uses
  %i.bh = zext i8 %i.bf to i32
  %i.bi = icmp eq i8 %i.bf, 35
  %.pre.i17 = load i8, ptr %i.bg, align 1, !tbaa !80 ; 3 uses
  %i.bj = icmp eq i8 %.pre.i17, 35
  %or.cond51.i = select i1 %i.bi, i1 %i.bj, i1 false
  br i1 %or.cond51.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.144.i, i64 2
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !80
  %i.bm = icmp eq i8 %i.bl, 35
  %spec.select35.i = select i1 %i.bm, i32 -1, i32 %.243.i
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i
  %.3.i = phi i32 [ %.243.i, %.lr.ph.i ], [ %spec.select35.i, %bb.l ] ; 2 uses
  %i.bn = lshr i32 %.3.i, 8
  %i.bo = and i32 %.3.i, 255
  %i.bp = xor i32 %i.bo, %i.bh
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !94
  %i.bt = xor i32 %i.bn, %i.bs                    ; 2 uses
  %.not33.i = icmp eq i8 %.pre.i17, 0
  br i1 %.not33.i, label %_Z9ImHashStrPKcmj.exit, label %.lr.ph.i

_Z9ImHashStrPKcmj.exit:                           ; preds = %bb.k, %bb.m, %.preheader.i
  %.5.i = phi i32 [ %i.bt, %bb.m ], [ -1, %.preheader.i ], [ %i.be, %bb.k ]
  %i.bu = xor i32 %.5.i, -1
  store i32 %i.bu, ptr %i.al, align 4, !tbaa !607
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.bw = add i64 %i.c, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bv, ptr nonnull align 1 %spec.select, i64 %i.bw, i1 false)
  ret ptr %i.al
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN5ImGui18FindWindowSettingsEj(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12472
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12480
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !605  ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %select.unfold
  %.0812 = phi ptr [ %i.k, %select.unfold ], [ %i.e, %.lr.ph.preheader ] ; 4 uses
  %i.f = load i32, ptr %.0812, align 4, !tbaa !607
  %i.g = icmp eq i32 %i.f, %0
  br i1 %i.g, label %._crit_edge, label %select.unfold

select.unfold:                                    ; preds = %.lr.ph
  %i.h = getelementptr inbounds i8, ptr %.0812, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !94
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds i8, ptr %.0812, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.b, align 8, !tbaa !608
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds i8, ptr %i.d, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = icmp eq ptr %i.k, %i.o
  br i1 %i.p, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %select.unfold, %.lr.ph, %bb.a
  %.08.lcssa = phi ptr [ null, %bb.a ], [ %.0812, %.lr.ph ], [ null, %select.unfold ]
  ret ptr %.08.lcssa
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN5ImGui26FindOrCreateWindowSettingsEPKc(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !80      ; 2 uses
  %.not3342.i = icmp eq i8 %i.a, 0
  br i1 %.not3342.i, label %_Z9ImHashStrPKcmj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %i.b = phi i8 [ %.pre.i, %bb.c ], [ %i.a, %bb.a ] ; 2 uses
  %.144.i = phi ptr [ %i.c, %bb.c ], [ %0, %bb.a ] ; 2 uses
  %.243.i = phi i32 [ %i.p, %bb.c ], [ -1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.144.i, i64 1 ; 2 uses
  %i.d = zext i8 %i.b to i32
  %i.e = icmp eq i8 %i.b, 35
  %.pre.i = load i8, ptr %i.c, align 1, !tbaa !80 ; 3 uses
  %i.f = icmp eq i8 %.pre.i, 35
  %or.cond51.i = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond51.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.144.i, i64 2
  %i.h = load i8, ptr %i.g, align 1, !tbaa !80
  %i.i = icmp eq i8 %i.h, 35
  %spec.select35.i = select i1 %i.i, i32 -1, i32 %.243.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.3.i = phi i32 [ %.243.i, %.lr.ph.i ], [ %spec.select35.i, %bb.b ] ; 2 uses
  %i.j = lshr i32 %.3.i, 8
  %i.k = and i32 %.3.i, 255
  %i.l = xor i32 %i.k, %i.d
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !94
  %i.p = xor i32 %i.j, %i.o                       ; 2 uses
  %.not33.i = icmp eq i8 %.pre.i, 0
  br i1 %.not33.i, label %_Z9ImHashStrPKcmj.exit, label %.lr.ph.i

_Z9ImHashStrPKcmj.exit:                           ; preds = %bb.c, %bb.a
  %.5.i = phi i32 [ -1, %bb.a ], [ %i.p, %bb.c ]
  %i.q = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12472
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 12480
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !605  ; 3 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i6.preheader

.lr.ph.i6.preheader:                              ; preds = %_Z9ImHashStrPKcmj.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  br label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %select.unfold.i, %.lr.ph.i6.preheader
  %.0812.i = phi ptr [ %i.ab, %select.unfold.i ], [ %i.u, %.lr.ph.i6.preheader ] ; 4 uses
  %i.v = load i32, ptr %.0812.i, align 4, !tbaa !607
  %i.w = xor i32 %i.v, %.5.i
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %_ZN5ImGui18FindWindowSettingsEj.exit, label %select.unfold.i

select.unfold.i:                                  ; preds = %.lr.ph.i6
  %i.y = getelementptr inbounds i8, ptr %.0812.i, i64 -4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !94
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds i8, ptr %.0812.i, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.r, align 8, !tbaa !608
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds i8, ptr %i.t, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = icmp eq ptr %i.ab, %i.af
  br i1 %i.ag, label %.loopexit, label %.lr.ph.i6

.loopexit:                                        ; preds = %select.unfold.i, %_Z9ImHashStrPKcmj.exit
  %i.ah = tail call noundef ptr @_ZN5ImGui23CreateNewWindowSettingsEPKc(ptr noundef nonnull %0)
  br label %_ZN5ImGui18FindWindowSettingsEj.exit

_ZN5ImGui18FindWindowSettingsEj.exit:             ; preds = %.lr.ph.i6, %.loopexit
  %.1 = phi ptr [ %i.ah, %.loopexit ], [ %.0812.i, %.lr.ph.i6 ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN5ImGui19FindSettingsHandlerEPKc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !80      ; 2 uses
  %.not3342.i = icmp eq i8 %i.b, 0
  br i1 %.not3342.i, label %_Z9ImHashStrPKcmj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %i.c = phi i8 [ %.pre.i, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %.144.i = phi ptr [ %i.d, %bb.c ], [ %0, %bb.a ] ; 2 uses
  %.243.i = phi i32 [ %i.q, %bb.c ], [ -1, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.144.i, i64 1 ; 2 uses
  %i.e = zext i8 %i.c to i32
  %i.f = icmp eq i8 %i.c, 35
  %.pre.i = load i8, ptr %i.d, align 1, !tbaa !80 ; 3 uses
  %i.g = icmp eq i8 %.pre.i, 35
  %or.cond51.i = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond51.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %.144.i, i64 2
  %i.i = load i8, ptr %i.h, align 1, !tbaa !80
  %i.j = icmp eq i8 %i.i, 35
  %spec.select35.i = select i1 %i.j, i32 -1, i32 %.243.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.3.i = phi i32 [ %.243.i, %.lr.ph.i ], [ %spec.select35.i, %bb.b ] ; 2 uses
  %i.k = lshr i32 %.3.i, 8
  %i.l = and i32 %.3.i, 255
  %i.m = xor i32 %i.l, %i.e
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !94
  %i.q = xor i32 %i.k, %i.p                       ; 2 uses
  %.not33.i = icmp eq i8 %.pre.i, 0
  br i1 %.not33.i, label %_Z9ImHashStrPKcmj.exit, label %.lr.ph.i

_Z9ImHashStrPKcmj.exit:                           ; preds = %bb.c, %bb.a
  %.5.i = phi i32 [ -1, %bb.a ], [ %i.q, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 12456
  %i.s = load i32, ptr %i.r, align 8, !tbaa !740  ; 2 uses
  %.not12 = icmp sgt i32 %i.s, 0
  br i1 %.not12, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_Z9ImHashStrPKcmj.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 12464
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !459
  %wide.trip.count = zext nneg i32 %i.s to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !61

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.v = getelementptr inbounds nuw [72 x i8], ptr %i.u, i64 %indvars.iv ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !741
  %i.y = xor i32 %i.x, %.5.i
  %i.z = icmp eq i32 %i.y, -1
  br i1 %i.z, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.e, %_Z9ImHashStrPKcmj.exit
  %spec.select = phi ptr [ null, %_Z9ImHashStrPKcmj.exit ], [ %i.v, %bb.e ], [ null, %bb.d ]
  ret ptr %spec.select
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui16ClearIniSettingsEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12448 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !102  ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN15ImGuiTextBuffer5clearEv.exit, label %_ZN5ImGui7MemFreeEPv.exit.i.i

_ZN5ImGui7MemFreeEPv.exit.i.i:                    ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 12440
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 12444
  store i32 0, ptr %i.e, align 4, !tbaa !103
  store i32 0, ptr %i.d, align 8, !tbaa !101
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 944 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !180
  %i.h = add nsw i32 %i.g, -1
  store i32 %i.h, ptr %i.f, align 8, !tbaa !180
  %i.i = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !181
  %i.j = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !181
  tail call void %i.i(ptr noundef nonnull %i.c, ptr noundef %i.j), !inline_history !25
  store ptr null, ptr %i.b, align 8, !tbaa !102
  br label %_ZN15ImGuiTextBuffer5clearEv.exit

_ZN15ImGuiTextBuffer5clearEv.exit:                ; preds = %bb.a, %_ZN5ImGui7MemFreeEPv.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 12456 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !740  ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN15ImGuiTextBuffer5clearEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 12464
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %_ZN15ImGuiTextBuffer5clearEv.exit
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.o = phi i32 [ %i.l, %.lr.ph ], [ %i.t, %bb.d ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !459
  %i.q = getelementptr inbounds nuw [72 x i8], ptr %i.p, i64 %indvars.iv ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !742  ; 2 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.s(ptr noundef nonnull %i.a, ptr noundef nonnull %i.q)
  %.pre = load i32, ptr %i.k, align 8, !tbaa !740
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.t = phi i32 [ %i.o, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp slt i64 %indvars.iv.next, %i.u
  br i1 %i.v, label %bb.b, label %._crit_edge, !llvm.loop !62
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui23LoadIniSettingsFromDiskEPKc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  store i64 0, ptr %i.a, align 8, !tbaa !191
  %i.b = call noundef ptr @_Z18ImFileLoadToMemoryPKcS0_Pmi(ptr noundef %0, ptr noundef nonnull @.str.97, ptr noundef nonnull %i.a, i32 noundef 0) ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !tbaa !191
  call void @_ZN5ImGui25LoadIniSettingsFromMemoryEPKcm(ptr noundef nonnull %i.b, i64 noundef %i.c)
  %i.d = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %.not4.i = icmp eq ptr %i.d, null
  br i1 %.not4.i, label %_ZN5ImGui7MemFreeEPv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 944 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !180
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !180
  br label %_ZN5ImGui7MemFreeEPv.exit

_ZN5ImGui7MemFreeEPv.exit:                        ; preds = %bb.b, %bb.c
  %i.h = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !181
  %i.i = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !181
  call void %i.h(ptr noundef nonnull %i.b, ptr noundef %i.i), !inline_history !192
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN5ImGui7MemFreeEPv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui25LoadIniSettingsFromMemoryEPKcm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 13 uses
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %bb.b, label %bb.c

end_hunk_1
