inline.NumInlined: 2414
inline.NumDeleted: 435
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZNK11ImGuiWindow12TitleBarRectEv:bb.a
bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 6532
  %i.j = load float, ptr %i.i, align 4, !tbaa !615
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.l = load float, ptr %i.k, align 8, !tbaa !342
  %i.m = fmul float %i.j, %i.l                    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !616  ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 608
  %i.q = load float, ptr %i.p, align 8, !tbaa !342
  %i.r = fmul float %i.m, %i.q
  br label %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i

_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i:         ; preds = %bb.c, %bb.b
  %.0.i.i = phi float [ %i.r, %bb.c ], [ %i.m, %bb.b ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 5536
  %i.t = load float, ptr %i.s, align 4, !tbaa !301
  %i.u = tail call float @llvm.fmuladd.f32(float %i.t, float 2.000000e+00, float %.0.i.i)
  br label %_ZNK11ImGuiWindow14TitleBarHeightEv.exit

_ZNK11ImGuiWindow14TitleBarHeightEv.exit:         ; preds = %bb.a, %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i
  %i.v = phi float [ %i.u, %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i ], [ 0.000000e+00, %bb.a ]
  %i.w = shufflevector <4 x float> %i.c, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.x = insertelement <2 x float> %i.w, float %i.v, i64 1
  %i.y = fadd <2 x float> %i.d, %i.x
  %i.z = load <2 x float>, ptr %i.a, align 8
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.z, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %i.y, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN5ImGui20GetTopMostPopupModalEv() local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7640
  %i.c = load i32, ptr %i.b, align 8, !tbaa !602  ; 2 uses
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 7648
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !607
  %i.g = zext nneg i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.g, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.h = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %indvars.iv.next
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !608  ; 3 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !428
  %i.m = and i32 %i.l, 134217728
  %.not15 = icmp eq i32 %i.m, 0
  br i1 %.not15, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.n = icmp samesign ult i64 %indvars.iv, 2
  br i1 %i.n, label %.thread, label %bb.b, !llvm.loop !609

.thread:                                          ; preds = %bb.d, %bb.c, %bb.a
  %spec.select = phi ptr [ null, %bb.a ], [ %i.j, %bb.c ], [ null, %bb.d ]
  ret ptr %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui13IsWindowAboveEP11ImGuiWindowS1_(ptr nofree noundef readnone captures(address) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7088
  %i.c = load i32, ptr %i.b, align 8, !tbaa !596  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 7096
  %i.e = icmp sgt i32 %i.c, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = zext nneg i32 %i.c to i64
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !353
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.h = trunc nuw i64 %i.j to i32
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %._crit_edge, !llvm.loop !610

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.019 = phi i1 [ undef, %.lr.ph ], [ %.1, %bb.b ]
  %indvars.iv18 = phi i64 [ %i.f, %.lr.ph ], [ %i.j, %bb.b ]
  %i.j = add nsw i64 %indvars.iv18, -1            ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !530  ; 2 uses
  %i.m = icmp eq ptr %i.l, %0                     ; 2 uses
  %i.n = icmp ne ptr %i.l, %1                     ; 2 uses
  %..0 = select i1 %i.n, i1 %.019, i1 false
  %not. = xor i1 %i.m, true
  %cond1 = and i1 %i.n, %not.
  %.1 = select i1 %i.m, i1 true, i1 %..0          ; 2 uses
  br i1 %cond1, label %bb.b, label %._crit_edge20, !llvm.loop !610

._crit_edge20:                                    ; preds = %bb.c
  br label %._crit_edge, !llvm.loop !610

._crit_edge:                                      ; preds = %bb.b, %._crit_edge20, %bb.a
  %spec.select = phi i1 [ %.1, %._crit_edge20 ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %spec.select
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui21ClosePopupsOverWindowEP11ImGuiWindowb(ptr nofree noundef readonly captures(address_is_null) %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7640
  %i.c = load i32, ptr %i.b, align 8, !tbaa !602  ; 4 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.loopexit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp ne ptr %0, null
  %i.e = icmp sgt i32 %i.c, 0
  %or.cond = and i1 %.not, %i.e
  br i1 %or.cond, label %.lr.ph48, label %.loopexit

.lr.ph48:                                         ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 7648
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !545  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 832
  %wide.trip.count56 = zext nneg i32 %i.c to i64  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph48, %select.unfold
  %indvars.iv = phi i64 [ 0, %.lr.ph48 ], [ %indvars.iv.next, %select.unfold ] ; 4 uses
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %indvars.iv
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !608  ; 2 uses
  %.not32 = icmp eq ptr %i.k, null
  br i1 %.not32, label %select.unfold, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !428
  %i.n = and i32 %i.m, 16777216
  %.not33 = icmp eq i32 %i.n, 0
  br i1 %.not33, label %.lr.ph, label %select.unfold

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %bb.f ], [ %indvars.iv, %bb.d ] ; 2 uses
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %indvars.iv52
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !608  ; 2 uses
  %.not34 = icmp eq ptr %i.q, null
  br i1 %.not34, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 832
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !426
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !426
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count56
  br i1 %exitcond.not, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !611

select.unfold:                                    ; preds = %bb.e, %bb.c, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond57.not = icmp eq i64 %indvars.iv.next, %wide.trip.count56
  br i1 %exitcond57.not, label %.loopexit.thread, label %bb.c, !llvm.loop !612

.loopexit.loopexit:                               ; preds = %bb.f
  %i.v = trunc nuw nsw i64 %indvars.iv to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b
  %.129 = phi i32 [ 0, %bb.b ], [ %i.v, %.loopexit.loopexit ] ; 2 uses
  %i.w = icmp slt i32 %.129, %i.c
  br i1 %i.w, label %bb.g, label %.loopexit.thread

bb.g:                                             ; preds = %.loopexit
  tail call void @_ZN5ImGui17ClosePopupToLevelEib(i32 noundef %.129, i1 noundef zeroext %1)
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %select.unfold, %.loopexit, %bb.g, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5ImGui34UpdateHoveredWindowAndCaptureFlagsEv() local_unnamed_addr #42 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 51 uses
  %0 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5572
  %.val = load float, ptr %i.b, align 4           ; 3 uses
  %i.c = getelementptr i8, ptr %i.a, i64 5576
  %.val95 = load float, ptr %i.c, align 4         ; 3 uses
  %.inv.i = fcmp oge float %.val, 4.000000e+00
  %..i = select i1 %.inv.i, float %.val, float 4.000000e+00 ; 2 uses
  %.inv6.i = fcmp oge float %.val95, 4.000000e+00
  %1 = select i1 %.inv6.i, float %.val95, float 4.000000e+00 ; 2 uses
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %..i, i64 0
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %1, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 7172
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 7208
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !591  ; 4 uses
  %.not.i = icmp eq ptr %i.f, null                ; 2 uses
  br i1 %.not.i, label %.cont.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !428
  %i.i = and i32 %i.h, 512
  %.not51.i = icmp eq i32 %i.i, 0
  %spec.select.i = select i1 %.not51.i, ptr %i.f, ptr null
  br label %.cont.i

.cont.i:                                          ; preds = %bb.b, %bb.a
  %.0.i = phi ptr [ %spec.select.i, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 204
  %i.k = load i8, ptr %i.j, align 4, !tbaa !617, !range !210, !noundef !211
  %i.l = trunc nuw i8 %i.k to i1                  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 7088
  %i.n = load i32, ptr %i.m, align 8, !tbaa !596  ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.i, label %_ZL17FindHoveredWindowv.exit

.lr.ph.i:                                         ; preds = %.cont.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 7096
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !353
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 300
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 832
  %i.u = zext nneg i32 %i.n to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNK6ImRect8ContainsERK6ImVec2.exit.thread.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.u, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZNK6ImRect8ContainsERK6ImVec2.exit.thread.i ] ; 2 uses
  %.1115.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.4.ph.i, %_ZNK6ImRect8ContainsERK6ImVec2.exit.thread.i ] ; 8 uses
  %.044114.i = phi ptr [ null, %.lr.ph.i ], [ %.347.ph.i, %_ZNK6ImRect8ContainsERK6ImVec2.exit.thread.i ] ; 8 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !530  ; 17 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 142
  %i.y = load i8, ptr %i.x, align 2, !tbaa !618, !range !210, !noundef !211
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.d, label %_ZNK6ImRect8ContainsERK6ImVec2.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 149
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !619, !range !210, !noundef !211
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %_ZNK6ImRect8ContainsERK6ImVec2.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !428 ; 2 uses
  %i.af = and i32 %i.ae, 512
  %.not52.i = icmp eq i32 %i.af, 0
  br i1 %.not52.i, label %bb.f, label %_ZNK6ImRect8ContainsERK6ImVec2.exit.thread.i

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 440
  %.sroa.069.0.copyload.i = load float, ptr %i.ag, align 8, !tbaa !9
  %i.ah = and i32 %i.ae, 16777282
  %.not53.i = icmp eq i32 %i.ah, 0                ; 2 uses
  %i.ai = and i1 %.not53.i, %i.l
  %..i98.v = select i1 %i.ai, float %..i, float %.val ; 2 uses
  %.sroa.069.0.i = fsub float %.sroa.069.0.copyload.i, %..i98.v
  %i.aj = load float, ptr %i.r, align 8, !tbaa !151 ; 4 uses
  %i.ak = fcmp ult float %i.aj, %.sroa.069.0.i
  br i1 %i.ak, label %_ZNK6ImRect8ContainsERK6ImVec2.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = and i1 %.not53.i, %i.l
  %.112.i.v = select i1 %i.al, float %1, float %.val95 ; 2 uses
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 452
  %.sroa.18.0.copyload.i = load float, ptr %.sroa.18.0..sroa_idx.i, align 4, !tbaa !9
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 448
  %.sroa.13.0.copyload.i = load float, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !9
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 444
  %.sroa.8.0.copyload.i = load float, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !9
  %.sroa.18.0.i = fadd float %.sroa.18.0.copyload.i, %.112.i.v
  %.sroa.13.0.i = fadd float %.sroa.13.0.copyload.i, %..i98.v
  %.sroa.8.0.i = fsub float %.sroa.8.0.copyload.i, %.112.i.v
  %i.am = load float, ptr %i.s, align 4, !tbaa !152 ; 4 uses
  %i.an = fcmp oge float %i.am, %.sroa.8.0.i
  %i.ao = fcmp olt float %i.aj, %.sroa.13.0.i
  %or.cond.i.i = select i1 %i.an, i1 %i.ao, i1 false
  %i.ap = fcmp olt float %i.am, %.sroa.18.0.i
  %or.cond104.i = select i1 %or.cond.i.i, i1 %i.ap, i1 false
  br i1 %or.cond104.i, label %bb.h, label %_ZNK6ImRect8ContainsERK6ImVec2.exit.thread.i

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 552
  %i.ar = load i16, ptr %i.aq, align 8, !tbaa !620 ; 2 uses
  %.not54.i = icmp eq i16 %i.ar, 0
  br i1 %.not54.i, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.at = load float, ptr %i.as, align 8, !tbaa !447
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 556
  %i.av = load i16, ptr %i.au, align 4, !tbaa !621
  %i.aw = sitofp i16 %i.av to float
  %i.ax = fadd float %i.at, %i.aw                 ; 2 uses
  %i.ay = fcmp ult float %i.aj, %i.ax
  br i1 %i.ay, label %.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  %i.ba = load float, ptr %i.az, align 4, !tbaa !598
  %i.bb = getelementptr inbounds nuw i8, ptr %i.w, i64 558
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !622
  %i.bd = sitofp i16 %i.bc to float
  %i.be = fadd float %i.ba, %i.bd                 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.w, i64 554
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !623
  %i.bh = sitofp i16 %i.bg to float
  %i.bi = fadd float %i.be, %i.bh
  %i.bj = sitofp i16 %i.ar to float
  %i.bk = fadd float %i.ax, %i.bj
  %i.bl = fcmp oge float %i.am, %i.be
  %i.bm = fcmp olt float %i.aj, %i.bk
  %or.cond.i62.i = and i1 %i.bm, %i.bl
  %i.bn = fcmp olt float %i.am, %i.bi
  %or.cond105.i = select i1 %or.cond.i62.i, i1 %i.bn, i1 false
  br i1 %or.cond105.i, label %_ZNK6ImRect8ContainsERK6ImVec2.exit.thread.i, label %.thread.i

.thread.i:                                        ; preds = %bb.j, %bb.i, %bb.h
  %i.bo = icmp eq ptr %.1115.i, null
  %spec.select57.i = select i1 %i.bo, ptr %i.w, ptr %.1115.i ; 3 uses
  %i.bp = icmp ne ptr %.044114.i, null            ; 2 uses
  %brmerge.i = or i1 %.not.i, %i.bp
  %.044.mux.i = select i1 %i.bp, ptr %.044114.i, ptr %i.w
  br i1 %brmerge.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.thread.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.w, i64 832
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !426
  %i.bs = load ptr, ptr %i.t, align 8, !tbaa !426
  %.not56.i = icmp eq ptr %i.br, %i.bs
  br i1 %.not56.i, label %_ZNK6ImRect8ContainsERK6ImVec2.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread.i
  %.145.i = phi ptr [ %.044.mux.i, %.thread.i ], [ %i.w, %bb.k ] ; 2 uses
  %.not111.i = icmp eq ptr %spec.select57.i, null
  br i1 %.not111.i, label %_ZNK6ImRect8ContainsERK6ImVec2.exit.thread.i, label %_ZL17FindHoveredWindowv.exit

_ZNK6ImRect8ContainsERK6ImVec2.exit.thread.i:     ; preds = %bb.l, %bb.k, %bb.j, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.347.ph.i = phi ptr [ %.044114.i, %bb.j ], [ %.044114.i, %bb.e ], [ null, %bb.k ], [ %.145.i, %bb.l ], [ %.044114.i, %bb.d ], [ %.044114.i, %bb.c ], [ %.044114.i, %bb.g ], [ %.044114.i, %bb.f ] ; 2 uses
  %.4.ph.i = phi ptr [ %.1115.i, %bb.j ], [ %.1115.i, %bb.e ], [ %spec.select57.i, %bb.k ], [ null, %bb.l ], [ %.1115.i, %bb.d ], [ %.1115.i, %bb.c ], [ %.1115.i, %bb.g ], [ %.1115.i, %bb.f ] ; 2 uses
  %i.bt = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.bt, label %bb.c, label %_ZL17FindHoveredWindowv.exit, !llvm.loop !624

_ZL17FindHoveredWindowv.exit:                     ; preds = %bb.l, %_ZNK6ImRect8ContainsERK6ImVec2.exit.thread.i, %.cont.i
  %.448.i = phi ptr [ null, %.cont.i ], [ %.347.ph.i, %_ZNK6ImRect8ContainsERK6ImVec2.exit.thread.i ], [ %.145.i, %bb.l ]
  %.5.i = phi ptr [ %.0.i, %.cont.i ], [ %.4.ph.i, %_ZNK6ImRect8ContainsERK6ImVec2.exit.thread.i ], [ %spec.select57.i, %bb.l ] ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 7192 ; 2 uses
  store ptr %.5.i, ptr %i.bu, align 8, !tbaa !424
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 7200
  store ptr %.448.i, ptr %i.bv, align 8, !tbaa !625
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 7640
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !602 ; 3 uses
  %i.by = icmp slt i32 %i.bx, 1
  br i1 %i.by, label %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit, label %.lr.ph.i99

.lr.ph.i99:                                       ; preds = %_ZL17FindHoveredWindowv.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 7648
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !607
  %i.cb = zext nneg i32 %i.bx to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph.i99
  %indvars.iv.i100 = phi i64 [ %i.cb, %.lr.ph.i99 ], [ %indvars.iv.next.i101, %bb.o ] ; 2 uses
  %indvars.iv.next.i101 = add nsw i64 %indvars.iv.i100, -1 ; 2 uses
  %i.cc = getelementptr inbounds nuw [48 x i8], ptr %i.ca, i64 %indvars.iv.next.i101
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !608 ; 4 uses
  %.not.i102 = icmp eq ptr %i.ce, null
  br i1 %.not.i102, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !428
  %i.ch = and i32 %i.cg, 134217728
  %.not15.i = icmp eq i32 %i.ch, 0
  br i1 %.not15.i, label %bb.o, label %_ZN5ImGui20GetTopMostPopupModalEv.exit

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ci = icmp samesign ult i64 %indvars.iv.i100, 2
  br i1 %i.ci, label %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit, label %bb.m, !llvm.loop !609

_ZN5ImGui20GetTopMostPopupModalEv.exit:           ; preds = %bb.n
  %.not = icmp eq ptr %.5.i, null
  br i1 %.not, label %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit, label %bb.p

bb.p:                                             ; preds = %_ZN5ImGui20GetTopMostPopupModalEv.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %.5.i, i64 832
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !426 ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 832
  %.val.i = load ptr, ptr %i.cl, align 8, !tbaa !426
  %i.cm = getelementptr inbounds nuw i8, ptr %.val.i, i64 840
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !626 ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.ce
  br i1 %i.co, label %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit, label %.lr.ph.i105

.lr.ph.i105:                                      ; preds = %bb.p, %bb.q
  %.01012.i = phi ptr [ %i.cs, %bb.q ], [ %i.ck, %bb.p ] ; 3 uses
  %i.cp = icmp eq ptr %.01012.i, %i.ce            ; 3 uses
  %i.cq = icmp eq ptr %.01012.i, %i.cn
  %or.cond153 = or i1 %i.cp, %i.cq
  br i1 %or.cond153, label %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i105
  %i.cr = getelementptr inbounds nuw i8, ptr %.01012.i, i64 824
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !616 ; 2 uses
  %.not.i106 = icmp eq ptr %i.cs, null
  br i1 %.not.i106, label %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit, label %.lr.ph.i105, !llvm.loop !627

_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit: ; preds = %bb.o, %bb.q, %.lr.ph.i105, %_ZL17FindHoveredWindowv.exit, %bb.p, %_ZN5ImGui20GetTopMostPopupModalEv.exit
  %i.ct = phi i1 [ true, %_ZN5ImGui20GetTopMostPopupModalEv.exit ], [ true, %bb.q ], [ false, %_ZL17FindHoveredWindowv.exit ], [ true, %bb.p ], [ true, %.lr.ph.i105 ], [ false, %bb.o ] ; 3 uses
  %.0.not = phi i1 [ true, %_ZN5ImGui20GetTopMostPopupModalEv.exit ], [ %i.cp, %bb.q ], [ true, %_ZL17FindHoveredWindowv.exit ], [ true, %bb.p ], [ %i.cp, %.lr.ph.i105 ], [ true, %bb.o ] ; 2 uses
  %i.cu = load i32, ptr %0, align 8, !tbaa !628   ; 3 uses
  %i.cv = icmp sgt i32 %i.bx, 0                   ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 1056
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.cy = icmp ne ptr %.5.i, null                 ; 2 uses
  %i.cz = or i1 %i.cy, %i.cv
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 1071 ; 2 uses
  %i.db = zext i1 %i.cz to i8                     ; 5 uses
  %i.dc = or i1 %i.cy, %i.ct
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 1076 ; 2 uses
  %i.de = zext i1 %i.dc to i8                     ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 1016 ; 4 uses
  %i.dg = load i8, ptr %i.cw, align 8, !tbaa !213, !range !210, !noundef !211
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit
  store i8 %i.db, ptr %i.da, align 1, !tbaa !213
  store i8 %i.de, ptr %i.dd, align 4, !tbaa !213
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit
  %i.di = load i8, ptr %i.cx, align 8, !tbaa !213, !range !210, !noundef !211 ; 2 uses
  %i.dj = trunc nuw i8 %i.di to i1                ; 2 uses
  %not. = xor i1 %i.dj, true
  %spec.select143 = sext i1 %not. to i32
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 1057
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !213, !range !210, !noundef !211
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 1072
  store i8 %i.db, ptr %i.dn, align 8, !tbaa !213
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 1077
  store i8 %i.de, ptr %i.do, align 1, !tbaa !213
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 305
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !213, !range !210, !noundef !211 ; 2 uses
  %i.dr = trunc nuw i8 %i.dq to i1
  %i.ds = or i8 %i.dq, %i.di
  br i1 %i.dr, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  br i1 %i.dj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 1024
  %i.du = load double, ptr %i.dt, align 8, !tbaa !629
  %i.dv = load double, ptr %i.df, align 8, !tbaa !629
  %i.dw = fcmp olt double %i.du, %i.dv
  br i1 %i.dw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.u
  %.178.1 = phi i32 [ 1, %bb.x ], [ 0, %bb.w ], [ %spec.select143, %bb.u ] ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 1058
  %i.dy = load i8, ptr %i.dx, align 2, !tbaa !213, !range !210, !noundef !211
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 1073
  store i8 %i.db, ptr %i.ea, align 1, !tbaa !213
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 1078
  store i8 %i.de, ptr %i.eb, align 2, !tbaa !213
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 306
  %i.ed = load i8, ptr %i.ec, align 2, !tbaa !213, !range !210, !noundef !211 ; 2 uses
  %i.ee = trunc nuw i8 %i.ed to i1
  %i.ef = or i8 %i.ed, %i.ds
  br i1 %i.ee, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.eg = icmp eq i32 %.178.1, -1
  br i1 %i.eg, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 1032
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !629
  %i.ej = zext nneg i32 %.178.1 to i64
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.ej
  %i.el = load double, ptr %i.ek, align 8, !tbaa !629
  %i.em = fcmp olt double %i.ei, %i.el
  br i1 %i.em, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.aa
  %.178.2 = phi i32 [ 2, %bb.ad ], [ %.178.1, %bb.ac ], [ %.178.1, %bb.aa ] ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 1059
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !213, !range !210, !noundef !211
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.eq = getelementptr inbounds nuw i8, ptr %i.a, i64 1074
  store i8 %i.db, ptr %i.eq, align 2, !tbaa !213
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 1079
  store i8 %i.de, ptr %i.er, align 1, !tbaa !213
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 307
  %i.et = load i8, ptr %i.es, align 1, !tbaa !213, !range !210, !noundef !211 ; 2 uses
  %i.eu = trunc nuw i8 %i.et to i1
  %i.ev = or i8 %i.et, %i.ef
  br i1 %i.eu, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.ew = icmp eq i32 %.178.2, -1
  br i1 %i.ew, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 1040
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !629
  %i.ez = zext nneg i32 %.178.2 to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.ez
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !629
  %i.fc = fcmp olt double %i.ey, %i.fb
  br i1 %i.fc, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ag
  %.178.3 = phi i32 [ 3, %bb.aj ], [ %.178.2, %bb.ai ], [ %.178.2, %bb.ag ] ; 5 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 1060
  %i.fe = load i8, ptr %i.fd, align 4, !tbaa !213, !range !210, !noundef !211
  %i.ff = trunc nuw i8 %i.fe to i1
  br i1 %i.ff, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fg = getelementptr inbounds nuw i8, ptr %i.a, i64 1075
  store i8 %i.db, ptr %i.fg, align 1, !tbaa !213
  %i.fh = getelementptr inbounds nuw i8, ptr %i.a, i64 1080
  store i8 %i.de, ptr %i.fh, align 8, !tbaa !213
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.fi = getelementptr inbounds nuw i8, ptr %i.a, i64 308
  %i.fj = load i8, ptr %i.fi, align 4, !tbaa !213, !range !210, !noundef !211 ; 2 uses
  %i.fk = trunc nuw i8 %i.fj to i1
  %i.fl = or i8 %i.fj, %i.ev
  %i.fm = icmp ne i8 %i.fl, 0                     ; 2 uses
  br i1 %i.fk, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.fn = icmp eq i32 %.178.3, -1
  br i1 %i.fn, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fo = getelementptr inbounds nuw i8, ptr %i.a, i64 1048
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !629
  %i.fq = zext nneg i32 %.178.3 to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.fq
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !629
  %i.ft = fcmp olt double %i.fp, %i.fs
  br i1 %i.ft, label %bb.ap, label %.thread133

bb.ap:                                            ; preds = %bb.ao, %bb.an
  br label %.thread133

.thread133:                                       ; preds = %bb.ap, %bb.ao
  %.178.4.ph = phi i32 [ %.178.3, %bb.ao ], [ 4, %bb.ap ]
  %i.fu = and i32 %i.cu, 16
  %.not86135 = icmp eq i32 %i.fu, 0
  %spec.select92.not110136 = and i1 %.0.not, %.not86135
  br label %bb.ar

bb.aq:                                            ; preds = %bb.am
  %i.fv = and i32 %i.cu, 16
  %.not86 = icmp eq i32 %i.fv, 0
  %spec.select92.not110 = and i1 %.0.not, %.not86 ; 2 uses
  %i.fw = icmp eq i32 %.178.3, -1
  br i1 %i.fw, label %.thread, label %bb.ar

bb.ar:                                            ; preds = %.thread133, %bb.aq
  %spec.select92.not110138 = phi i1 [ %spec.select92.not110136, %.thread133 ], [ %spec.select92.not110, %bb.aq ]
  %.178.4137 = phi i32 [ %.178.4.ph, %.thread133 ], [ %.178.3, %bb.aq ]
  %i.fx = zext nneg i32 %.178.4137 to i64         ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !213, !range !210, !noundef !211
  %i.ga = trunc nuw i8 %i.fz to i1
  %i.gb = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.fx
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !213, !range !210, !noundef !211
  %i.gd = trunc nuw i8 %i.gc to i1
  br label %.thread

.thread:                                          ; preds = %bb.aq, %bb.ar
  %spec.select92.not110139 = phi i1 [ %spec.select92.not110138, %bb.ar ], [ %spec.select92.not110, %bb.aq ]
  %i.ge = phi i1 [ %i.ga, %bb.ar ], [ true, %bb.aq ] ; 2 uses
  %i.gf = phi i1 [ %i.gd, %bb.ar ], [ true, %bb.aq ]
  %i.gg = getelementptr inbounds nuw i8, ptr %i.a, i64 8060
end_hunk_0
begin_hunk_1_@_ZN5ImGui8NewFrameEv:bb.a
  %i.aqv = trunc nuw i8 %i.aqu to i1
  br i1 %i.aqv, label %bb.hk, label %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i21.i192.i.i

bb.hk:                                            ; preds = %bb.hj
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqs, i64 832
  %i.aqx = load ptr, ptr %i.aqw, align 8, !tbaa !426
  %i.aqy = icmp eq ptr %i.aqs, %i.aqx
  br i1 %i.aqy, label %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.i22.i194.i.i, label %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i21.i192.i.i

_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.i22.i194.i.i: ; preds = %bb.hk
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqs, i64 12
  %i.ara = load i32, ptr %i.aqz, align 4, !tbaa !428
  %i.arb = and i32 %i.ara, 524288
  %.not.i.i23.i195.i.i = icmp eq i32 %i.arb, 0
  br i1 %.not.i.i23.i195.i.i, label %_ZL22FindWindowNavFocusableiii.exit.i196.i.i, label %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i21.i192.i.i

_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i21.i192.i.i: ; preds = %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.i22.i194.i.i, %bb.hk, %bb.hj
  %i.arc = add nsw i32 %.01317.i18.i189.i.i, %i.apk ; 2 uses
  %i.ard = icmp sgt i32 %i.arc, -1
  br i1 %i.ard, label %bb.hi, label %_ZL22FindWindowNavFocusableiii.exit.thread27.i193.i.i, !llvm.loop !705

_ZL22FindWindowNavFocusableiii.exit.i196.i.i:     ; preds = %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.i.i202.i.i, %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.i22.i194.i.i
  %.0.i197.i.i = phi ptr [ %i.aqs, %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.i22.i194.i.i ], [ %i.apy, %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.i.i202.i.i ] ; 3 uses
  store ptr %.0.i197.i.i, ptr %i.aeg, align 8, !tbaa !699
  store ptr %.0.i197.i.i, ptr %i.aic, align 8, !tbaa !698
  br label %_ZL22FindWindowNavFocusableiii.exit.thread27.i193.i.i

_ZL22FindWindowNavFocusableiii.exit.thread27.i193.i.i: ; preds = %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i21.i192.i.i, %bb.hi, %_ZL22FindWindowNavFocusableiii.exit.i196.i.i, %bb.hh
  %i.are = phi ptr [ %.pr355.i.i, %bb.hh ], [ %.0.i197.i.i, %_ZL22FindWindowNavFocusableiii.exit.i196.i.i ], [ %.pr355.i.i, %bb.hi ], [ %.pr355.i.i, %_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow.exit.thread.i21.i192.i.i ]
  %i.arf = getelementptr inbounds nuw i8, ptr %i.adp, i64 8016
  store i8 0, ptr %i.arf, align 8, !tbaa !706
  br label %_ZL33NavUpdateWindowingHighlightWindowi.exit204.i.i

_ZL33NavUpdateWindowingHighlightWindowi.exit204.i.i: ; preds = %_ZL22FindWindowNavFocusableiii.exit.thread27.i193.i.i, %_ZN5ImGui15IsKeyPressedMapEib.exit184.thread269.i.i, %_ZN5ImGui15IsKeyPressedMapEib.exit184.i.i, %.split270.i.i, %bb.hb, %bb.ha, %bb.gy
  %i.arg = phi ptr [ %.pr355.i.i, %bb.hb ], [ %.pr355.i.i, %bb.ha ], [ %.pr355.i.i, %bb.gy ], [ %i.are, %_ZL22FindWindowNavFocusableiii.exit.thread27.i193.i.i ], [ %.pr355.i.i, %_ZN5ImGui15IsKeyPressedMapEib.exit184.thread269.i.i ], [ %.pr355.i.i, %.split270.i.i ], [ %.pr355.i.i, %_ZN5ImGui15IsKeyPressedMapEib.exit184.i.i ] ; 2 uses
  %i.arh = getelementptr inbounds nuw i8, ptr %i.adp, i64 320
  %i.ari = load i8, ptr %i.arh, align 8, !tbaa !692, !range !210, !noundef !211
  %i.arj = trunc nuw i8 %i.ari to i1
  %spec.select363.i.i = select i1 %i.arj, ptr null, ptr %i.arg
  br label %.thread264.i.i

.thread264.i.i:                                   ; preds = %_ZL33NavUpdateWindowingHighlightWindowi.exit204.i.i, %.thread352.i.i, %bb.gx, %.thread261.i.i, %_ZL22FindWindowNavFocusableiii.exit.thread.i.i
  %i.ark = phi ptr [ %i.arg, %_ZL33NavUpdateWindowingHighlightWindowi.exit204.i.i ], [ null, %_ZL22FindWindowNavFocusableiii.exit.thread.i.i ], [ %.pr355.i.i, %.thread352.i.i ], [ null, %bb.gx ], [ null, %.thread261.i.i ] ; 3 uses
  %.2139268.i.i = phi i1 [ false, %_ZL33NavUpdateWindowingHighlightWindowi.exit204.i.i ], [ false, %_ZL22FindWindowNavFocusableiii.exit.thread.i.i ], [ false, %.thread352.i.i ], [ false, %bb.gx ], [ %.0137.i.i, %.thread261.i.i ] ; 6 uses
  %.3.i.i = phi ptr [ %spec.select363.i.i, %_ZL33NavUpdateWindowingHighlightWindowi.exit204.i.i ], [ null, %_ZL22FindWindowNavFocusableiii.exit.thread.i.i ], [ null, %.thread352.i.i ], [ null, %bb.gx ], [ %.0.i258.i, %.thread261.i.i ] ; 4 uses
  br i1 %i.aey, label %bb.hl, label %bb.ho

bb.hl:                                            ; preds = %.thread264.i.i
  %i.arl = getelementptr inbounds nuw i8, ptr %i.adp, i64 960
  %i.arm = load i32, ptr %i.arl, align 8, !tbaa !148
  %i.arn = icmp eq i32 %i.arm, 4
  br i1 %i.arn, label %bb.hm, label %bb.ho

bb.hm:                                            ; preds = %bb.hl
  %i.aro = getelementptr inbounds nuw i8, ptr %i.adp, i64 964
  %i.arp = load i32, ptr %i.aro, align 4, !tbaa !147
  %i.arq = and i32 %i.arp, 4
  %i.arr = icmp eq i32 %i.arq, 0
  br i1 %i.arr, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  %i.ars = getelementptr inbounds nuw i8, ptr %i.adp, i64 8016
  store i8 1, ptr %i.ars, align 8, !tbaa !706
  %i.art = getelementptr inbounds nuw i8, ptr %i.adp, i64 7748
  store i32 2, ptr %i.art, align 4, !tbaa !691
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %bb.hm, %bb.hl, %.thread264.i.i
  %i.aru = getelementptr inbounds nuw i8, ptr %i.adp, i64 8016 ; 3 uses
  %i.arv = load i8, ptr %i.aru, align 8, !tbaa !706, !range !210, !noundef !211
  %i.arw = trunc nuw i8 %i.arv to i1
  br i1 %i.arw, label %bb.hp, label %bb.ic

bb.hp:                                            ; preds = %bb.ho
  %i.arx = getelementptr inbounds nuw i8, ptr %i.adp, i64 7748
  %i.ary = load i32, ptr %i.arx, align 4, !tbaa !691
  %i.arz = icmp eq i32 %i.ary, 2
  br i1 %i.arz, label %bb.hq, label %bb.ic

bb.hq:                                            ; preds = %bb.hp
  %i.asa = getelementptr inbounds nuw i8, ptr %i.adp, i64 5456
  %i.asb = load i32, ptr %i.asa, align 8, !tbaa !708
  %i.asc = icmp sgt i32 %i.asb, 0
  br i1 %i.asc, label %bb.hu, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.asd = getelementptr inbounds nuw i8, ptr %i.adp, i64 320
  %i.ase = load i8, ptr %i.asd, align 8, !tbaa !692, !range !210, !noundef !211
  %i.asf = trunc nuw i8 %i.ase to i1
  br i1 %i.asf, label %bb.hu, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.asg = getelementptr inbounds nuw i8, ptr %i.adp, i64 321
  %i.ash = load i8, ptr %i.asg, align 1, !tbaa !693, !range !210, !noundef !211
  %i.asi = trunc nuw i8 %i.ash to i1
  br i1 %i.asi, label %bb.hu, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.asj = getelementptr inbounds nuw i8, ptr %i.adp, i64 323
  %i.ask = load i8, ptr %i.asj, align 1, !tbaa !709, !range !210, !noundef !211
  %i.asl = trunc nuw i8 %i.ask to i1
  br i1 %i.asl, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %bb.ht, %bb.hs, %bb.hr, %bb.hq
  store i8 0, ptr %i.aru, align 8, !tbaa !706
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %bb.ht
  %.not364.i.i = phi i1 [ true, %bb.hu ], [ false, %bb.ht ]
  %i.asm = getelementptr inbounds nuw i8, ptr %i.adp, i64 960
  %i.asn = load i32, ptr %i.asm, align 8, !tbaa !148
  %i.aso = and i32 %i.asn, 4
  %.not160.i.i = icmp eq i32 %i.aso, 0
  br i1 %.not160.i.i, label %bb.hw, label %bb.ia

bb.hw:                                            ; preds = %bb.hv
  %i.asp = getelementptr inbounds nuw i8, ptr %i.adp, i64 964
  %i.asq = load i32, ptr %i.asp, align 4, !tbaa !147
  %i.asr = and i32 %i.asq, 4
  %.not161.i.i = icmp eq i32 %i.asr, 0
  %brmerge.i.i = or i1 %.not364.i.i, %.not161.i.i
  br i1 %brmerge.i.i, label %bb.ia, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.ass = getelementptr inbounds nuw i8, ptr %i.adp, i64 7260
  %i.ast = load i32, ptr %i.ass, align 4, !tbaa !331
  %i.asu = icmp eq i32 %i.ast, 0
  br i1 %i.asu, label %bb.hz, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.asv = getelementptr inbounds nuw i8, ptr %i.adp, i64 7273
  %i.asw = load i8, ptr %i.asv, align 1, !tbaa !405, !range !210, !noundef !211
  %i.asx = trunc nuw i8 %i.asw to i1
  br i1 %i.asx, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %bb.hy, %bb.hx
  %i.asy = getelementptr inbounds nuw i8, ptr %i.adp, i64 296
  %.sroa.0.0.copyload.i.i.i = load float, ptr %i.asy, align 8, !tbaa !9
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.adp, i64 300
  %.sroa.4.0.copyload.i.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !tbaa !9
  %i.asz = fcmp oge float %.sroa.0.0.copyload.i.i.i, -2.560000e+05
  %i.ata = fcmp oge float %.sroa.4.0.copyload.i.i.i, -2.560000e+05
  %i.atb = select i1 %i.asz, i1 %i.ata, i1 false
  %i.atc = getelementptr inbounds nuw i8, ptr %i.adp, i64 968
  %.sroa.0.0.copyload.i207.i.i = load float, ptr %i.atc, align 8, !tbaa !9
  %.sroa.4.0..sroa_idx.i208.i.i = getelementptr inbounds nuw i8, ptr %i.adp, i64 972
  %.sroa.4.0.copyload.i209.i.i = load float, ptr %.sroa.4.0..sroa_idx.i208.i.i, align 4, !tbaa !9
  %i.atd = fcmp ult float %.sroa.0.0.copyload.i207.i.i, -2.560000e+05
  %i.ate = fcmp ult float %.sroa.4.0.copyload.i209.i.i, -2.560000e+05
  %i.atf = select i1 %i.atd, i1 true, i1 %i.ate
  %not..i.i = xor i1 %i.atb, %i.atf
  %spec.select.i.i = select i1 %not..i.i, i1 true, i1 %.2139268.i.i
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %bb.hy, %bb.hw, %bb.hv
  %.3140.i.i = phi i1 [ %.2139268.i.i, %bb.hv ], [ %.2139268.i.i, %bb.hw ], [ %spec.select.i.i, %bb.hz ], [ %.2139268.i.i, %bb.hy ] ; 2 uses
  %i.atg = getelementptr inbounds nuw i8, ptr %i.adp, i64 322
  %i.ath = load i8, ptr %i.atg, align 2, !tbaa !710, !range !210, !noundef !211
  %i.ati = trunc nuw i8 %i.ath to i1
  br i1 %i.ati, label %bb.ic, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  store i8 0, ptr %i.aru, align 8, !tbaa !706
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %bb.ia, %bb.hp, %bb.ho
  %.4141.i.i = phi i1 [ %.3140.i.i, %bb.ia ], [ %.3140.i.i, %bb.ib ], [ %.2139268.i.i, %bb.hp ], [ %.2139268.i.i, %bb.ho ]
  %.not162.i.i = icmp eq ptr %i.ark, null
  br i1 %.not162.i.i, label %bb.ij, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.atj = getelementptr inbounds nuw i8, ptr %i.ark, i64 12
  %i.atk = load i32, ptr %i.atj, align 4, !tbaa !428
  %i.atl = and i32 %i.atk, 4
  %.not163.i.i = icmp eq i32 %i.atl, 0
  br i1 %.not163.i.i, label %bb.ie, label %bb.ij

bb.ie:                                            ; preds = %bb.id
  %i.atm = getelementptr inbounds nuw i8, ptr %i.adp, i64 7748
  %i.atn = load i32, ptr %i.atm, align 4, !tbaa !691
  switch i32 %i.atn, label %.thread272.i.i [
    i32 2, label %bb.if
    i32 3, label %.thread272.sink.split.i.i
  ]

bb.if:                                            ; preds = %bb.ie
  %i.ato = getelementptr inbounds nuw i8, ptr %i.adp, i64 321
  %i.atp = load i8, ptr %i.ato, align 1, !tbaa !693, !range !210, !noundef !211
  %i.atq = trunc nuw i8 %i.atp to i1
  br i1 %i.atq, label %.thread272.i.i, label %.thread272.sink.split.i.i

.thread272.sink.split.i.i:                        ; preds = %bb.if, %bb.ie
  %.sink376.i.i = phi i64 [ 904, %bb.if ], [ 872, %bb.ie ]
  %.sink374.i.i = phi i64 [ 900, %bb.if ], [ 868, %bb.ie ]
  %.sink.i.i = phi i64 [ 912, %bb.if ], [ 880, %bb.ie ]
  %.sink369.i.i = phi i64 [ 908, %bb.if ], [ 876, %bb.ie ]
  %i.atr = getelementptr inbounds nuw i8, ptr %i.adp, i64 %.sink376.i.i
  %i.ats = load float, ptr %i.atr, align 4, !tbaa !9
  %i.att = getelementptr inbounds nuw i8, ptr %i.adp, i64 %.sink374.i.i
  %i.atu = load float, ptr %i.att, align 4, !tbaa !9
  %1 = fsub float %i.ats, %i.atu
  %i.atv = getelementptr inbounds nuw i8, ptr %i.adp, i64 %.sink.i.i
  %i.atw = load float, ptr %i.atv, align 4, !tbaa !9
  %i.atx = getelementptr inbounds nuw i8, ptr %i.adp, i64 %.sink369.i.i
  %i.aty = load float, ptr %i.atx, align 4, !tbaa !9
  %2 = fsub float %i.atw, %i.aty
  %3 = fadd float %1, 0.000000e+00
  %.sroa.030.0.vec.insert34.i.i.i = insertelement <2 x float> poison, float %3, i64 0
  %4 = fadd float %2, 0.000000e+00
  %.sroa.030.4.vec.insert53.i.i.i = insertelement <2 x float> %.sroa.030.0.vec.insert34.i.i.i, float %4, i64 1
  br label %.thread272.i.i

.thread272.i.i:                                   ; preds = %.thread272.sink.split.i.i, %bb.if, %bb.ie
  %.sroa.0251.1.i.i = phi <2 x float> [ zeroinitializer, %bb.if ], [ zeroinitializer, %bb.ie ], [ %.sroa.030.4.vec.insert53.i.i.i, %.thread272.sink.split.i.i ] ; 3 uses
  %.sroa.0251.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0251.1.i.i, i64 0
  %i.atz = fcmp une float %.sroa.0251.0.vec.extract.i.i, 0.000000e+00
  %.sroa.0251.4.vec.extract.i.i = extractelement <2 x float> %.sroa.0251.1.i.i, i64 1
  %i.aua = fcmp une float %.sroa.0251.4.vec.extract.i.i, 0.000000e+00
  %or.cond6.i.i = select i1 %i.atz, i1 true, i1 %i.aua
  br i1 %or.cond6.i.i, label %bb.ig, label %bb.ij

bb.ig:                                            ; preds = %.thread272.i.i
  %i.aub = getelementptr inbounds nuw i8, ptr %i.ark, i64 832
  %i.auc = load ptr, ptr %i.aub, align 8, !tbaa !426 ; 8 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.auc, i64 180 ; 2 uses
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4 ; 2 uses
  %i.aud = and i32 %.pre.i.i.i, 1
  %i.aue = icmp eq i32 %i.aud, 0
  br i1 %i.aue, label %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.ig
  %i.auf = fmul float %i.ahy, 8.000000e+02
  %i.aug = getelementptr inbounds nuw i8, ptr %i.adp, i64 192
  %i.auh = load float, ptr %i.aug, align 8, !tbaa !711 ; 2 uses
  %i.aui = getelementptr inbounds nuw i8, ptr %i.adp, i64 196
  %i.auj = load float, ptr %i.aui, align 4, !tbaa !712 ; 2 uses
  %i.auk = fcmp olt float %i.auh, %i.auj
  %i.aul = select i1 %i.auk, float %i.auh, float %i.auj
  %i.aum = fmul float %i.auf, %i.aul
  %i.aun = fptosi float %i.aum to i32
  %i.auo = sitofp i32 %i.aun to float
  %i.aup = getelementptr inbounds nuw i8, ptr %i.auc, i64 16 ; 2 uses
  %i.auq = and i32 %.pre.i.i.i, -15
  store i32 %i.auq, ptr %.phi.trans.insert.i.i.i, align 4
  %i.aur = getelementptr inbounds nuw i8, ptr %i.auc, i64 184
  store i32 2139095039, ptr %i.aur, align 8
  %.sroa_idx42.i.i.i = getelementptr inbounds nuw i8, ptr %i.auc, i64 188
  store i32 2139095039, ptr %.sroa_idx42.i.i.i, align 4
  %i.aus = getelementptr inbounds nuw i8, ptr %i.auc, i64 216 ; 2 uses
  %i.aut = getelementptr inbounds nuw i8, ptr %i.auc, i64 248 ; 2 uses
  %i.auu = getelementptr inbounds nuw i8, ptr %i.auc, i64 232 ; 2 uses
  %i.auv = load <2 x float>, ptr %i.aup, align 8, !tbaa !9 ; 2 uses
  %i.auw = insertelement <2 x float> poison, float %i.auo, i64 0
  %i.aux = shufflevector <2 x float> %i.auw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.auy = fmul <2 x float> %.sroa.0251.1.i.i, %i.aux
  %i.auz = fadd <2 x float> %i.auv, %i.auy
  %i.ava = fptosi <2 x float> %i.auz to <2 x i32>
  %i.avb = sitofp <2 x i32> %i.ava to <2 x float> ; 2 uses
  store <2 x float> %i.avb, ptr %i.aup, align 8
  %i.avc = fsub <2 x float> %i.avb, %i.auv        ; 3 uses
  %i.avd = shufflevector <2 x float> %i.avc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ave = load <2 x float>, ptr %i.aus, align 8, !tbaa !9
  %i.avf = fadd <2 x float> %i.ave, %i.avc
  store <2 x float> %i.avf, ptr %i.aus, align 8, !tbaa !9
  %i.avg = load <2 x float>, ptr %i.aut, align 8, !tbaa !9
  %i.avh = fadd <2 x float> %i.avc, %i.avg
  store <2 x float> %i.avh, ptr %i.aut, align 8, !tbaa !9
  %i.avi = load <4 x float>, ptr %i.auu, align 8, !tbaa !9
  %i.avj = fadd <4 x float> %i.avd, %i.avi
  store <4 x float> %i.avj, ptr %i.auu, align 8, !tbaa !9
  br label %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit.i.i

_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.ig
  %i.avk = getelementptr inbounds nuw i8, ptr %i.auc, i64 12
  %i.avl = load i32, ptr %i.avk, align 4, !tbaa !428
  %i.avm = and i32 %i.avl, 256
  %.not.i213.i.i = icmp eq i32 %i.avm, 0
  br i1 %.not.i213.i.i, label %bb.ih, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i.i

bb.ih:                                            ; preds = %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit.i.i
  %i.avn = getelementptr inbounds nuw i8, ptr %i.adp, i64 12436 ; 2 uses
  %i.avo = load float, ptr %i.avn, align 4, !tbaa !494
  %i.avp = fcmp ugt float %i.avo, 0.000000e+00
  br i1 %i.avp, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i.i, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.avq = getelementptr inbounds nuw i8, ptr %i.adp, i64 28
  %i.avr = load float, ptr %i.avq, align 4, !tbaa !599
  store float %i.avr, ptr %i.avn, align 4, !tbaa !494
  br label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i.i

_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i.i: ; preds = %bb.ii, %bb.ih, %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit.i.i
  %i.avs = getelementptr inbounds nuw i8, ptr %i.adp, i64 7763
  store i8 1, ptr %i.avs, align 1, !tbaa !421
  br label %bb.ij

bb.ij:                                            ; preds = %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i.i, %.thread272.i.i, %bb.id, %bb.ic
  %.not164.i.i = icmp eq ptr %.3.i.i, null
  br i1 %.not164.i.i, label %bb.ja, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.avt = getelementptr inbounds nuw i8, ptr %i.adp, i64 7688
  %i.avu = load ptr, ptr %i.avt, align 8, !tbaa !425 ; 2 uses
  %i.avv = icmp eq ptr %i.avu, null
  br i1 %i.avv, label %bb.im, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.avw = getelementptr inbounds nuw i8, ptr %i.avu, i64 832
  %i.avx = load ptr, ptr %i.avw, align 8, !tbaa !426
  %.not165.i.i = icmp eq ptr %.3.i.i, %i.avx
  br i1 %.not165.i.i, label %bb.iz, label %bb.im

bb.im:                                            ; preds = %bb.il, %bb.ik
  %i.avy = getelementptr inbounds nuw i8, ptr %i.adp, i64 7260 ; 2 uses
  %i.avz = load i32, ptr %i.avy, align 4, !tbaa !331
  %i.awa = icmp ne i32 %i.avz, 0                  ; 2 uses
  %i.awb = getelementptr inbounds nuw i8, ptr %i.adp, i64 7272
  %i.awc = zext i1 %i.awa to i8
  store i8 %i.awc, ptr %i.awb, align 8, !tbaa !400
  br i1 %i.awa, label %bb.in, label %_ZN5ImGui13ClearActiveIDEv.exit.i.i

bb.in:                                            ; preds = %bb.im
  %i.awd = getelementptr inbounds nuw i8, ptr %i.adp, i64 7268
  store float 0.000000e+00, ptr %i.awd, align 4, !tbaa !401
  %i.awe = getelementptr inbounds nuw i8, ptr %i.adp, i64 7275
  store i8 0, ptr %i.awe, align 1, !tbaa !402
  %i.awf = getelementptr inbounds nuw i8, ptr %i.adp, i64 7276
  store i8 0, ptr %i.awf, align 4, !tbaa !403
  %i.awg = getelementptr inbounds nuw i8, ptr %i.adp, i64 7316
  store i32 -1, ptr %i.awg, align 4, !tbaa !404
  store i32 0, ptr %i.avy, align 4, !tbaa !331
  br label %_ZN5ImGui13ClearActiveIDEv.exit.i.i

_ZN5ImGui13ClearActiveIDEv.exit.i.i:              ; preds = %bb.in, %bb.im
  %i.awh = getelementptr inbounds nuw i8, ptr %i.adp, i64 7273
  store i8 0, ptr %i.awh, align 1, !tbaa !405
  %i.awi = getelementptr inbounds nuw i8, ptr %i.adp, i64 7274
  store i8 0, ptr %i.awi, align 2, !tbaa !406
  %i.awj = getelementptr inbounds nuw i8, ptr %i.adp, i64 7304
  store ptr null, ptr %i.awj, align 8, !tbaa !407
  %i.awk = getelementptr inbounds nuw i8, ptr %i.adp, i64 7277
  store i8 0, ptr %i.awk, align 1, !tbaa !408
  %i.awl = getelementptr inbounds nuw i8, ptr %i.adp, i64 7278
  store i8 0, ptr %i.awl, align 2, !tbaa !415
  %i.awm = getelementptr inbounds nuw i8, ptr %i.adp, i64 7280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.awm, i8 0, i64 16, i1 false)
  %i.awn = getelementptr inbounds nuw i8, ptr %i.adp, i64 7762
  store i8 0, ptr %i.awn, align 2, !tbaa !320
  %i.awo = getelementptr inbounds nuw i8, ptr %i.adp, i64 7763
  store i8 1, ptr %i.awo, align 1, !tbaa !421
  %i.awp = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 864
  %i.awq = load ptr, ptr %i.awp, align 8, !tbaa !697 ; 3 uses
  %.not.i214.i.i = icmp eq ptr %i.awq, null
  br i1 %.not.i214.i.i, label %bb.ip, label %bb.io

bb.io:                                            ; preds = %_ZN5ImGui13ClearActiveIDEv.exit.i.i
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awq, i64 143
  %i.aws = load i8, ptr %i.awr, align 1, !tbaa !427, !range !210, !noundef !211
  %i.awt = trunc nuw i8 %i.aws to i1
  br i1 %i.awt, label %_ZN5ImGuiL28NavRestoreLastChildNavWindowEP11ImGuiWindow.exit.i.i, label %bb.ip

bb.ip:                                            ; preds = %bb.io, %_ZN5ImGui13ClearActiveIDEv.exit.i.i
  br label %_ZN5ImGuiL28NavRestoreLastChildNavWindowEP11ImGuiWindow.exit.i.i

_ZN5ImGuiL28NavRestoreLastChildNavWindowEP11ImGuiWindow.exit.i.i: ; preds = %bb.ip, %bb.io
  %.0.i215.i.i = phi ptr [ %.3.i.i, %bb.ip ], [ %i.awq, %bb.io ] ; 5 uses
  %i.awu = load i32, ptr %i.adr, align 8, !tbaa !602 ; 4 uses
  %i.awv = icmp eq i32 %i.awu, 0
  br i1 %i.awv, label %_ZN5ImGui21ClosePopupsOverWindowEP11ImGuiWindowb.exit.i.i, label %bb.iq

bb.iq:                                            ; preds = %_ZN5ImGuiL28NavRestoreLastChildNavWindowEP11ImGuiWindow.exit.i.i
  %i.aww = icmp sgt i32 %i.awu, 0
  br i1 %i.aww, label %.lr.ph48.i.i.i, label %.loopexit.i218.i.i

.lr.ph48.i.i.i:                                   ; preds = %bb.iq
  %i.awx = getelementptr inbounds nuw i8, ptr %i.adp, i64 7648
  %i.awy = load ptr, ptr %i.awx, align 8, !tbaa !545 ; 2 uses
  %i.awz = getelementptr inbounds nuw i8, ptr %.0.i215.i.i, i64 832
  %wide.trip.count56.i.i.i = zext nneg i32 %i.awu to i64 ; 2 uses
  br label %bb.ir

bb.ir:                                            ; preds = %select.unfold.i.i.i, %.lr.ph48.i.i.i
  %indvars.iv.i219.i.i = phi i64 [ 0, %.lr.ph48.i.i.i ], [ %indvars.iv.next.i220.i.i, %select.unfold.i.i.i ] ; 4 uses
  %i.axa = getelementptr inbounds nuw [48 x i8], ptr %i.awy, i64 %indvars.iv.i219.i.i
  %i.axb = getelementptr inbounds nuw i8, ptr %i.axa, i64 8
  %i.axc = load ptr, ptr %i.axb, align 8, !tbaa !608 ; 2 uses
  %.not32.i.i.i = icmp eq ptr %i.axc, null
  br i1 %.not32.i.i.i, label %select.unfold.i.i.i, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.axd = getelementptr inbounds nuw i8, ptr %i.axc, i64 12
  %i.axe = load i32, ptr %i.axd, align 4, !tbaa !428
  %i.axf = and i32 %i.axe, 16777216
  %.not33.i.i.i = icmp eq i32 %i.axf, 0
  br i1 %.not33.i.i.i, label %.lr.ph.i221.i.i, label %select.unfold.i.i.i

.lr.ph.i221.i.i:                                  ; preds = %bb.is, %bb.iu
  %indvars.iv52.i.i.i = phi i64 [ %indvars.iv.next53.i.i.i, %bb.iu ], [ %indvars.iv.i219.i.i, %bb.is ] ; 2 uses
  %i.axg = getelementptr inbounds nuw [48 x i8], ptr %i.awy, i64 %indvars.iv52.i.i.i
  %i.axh = getelementptr inbounds nuw i8, ptr %i.axg, i64 8
  %i.axi = load ptr, ptr %i.axh, align 8, !tbaa !608 ; 2 uses
  %.not34.i.i.i = icmp eq ptr %i.axi, null
  br i1 %.not34.i.i.i, label %bb.iu, label %bb.it

bb.it:                                            ; preds = %.lr.ph.i221.i.i
  %i.axj = getelementptr inbounds nuw i8, ptr %i.axi, i64 832
  %i.axk = load ptr, ptr %i.axj, align 8, !tbaa !426
  %i.axl = load ptr, ptr %i.awz, align 8, !tbaa !426
  %i.axm = icmp eq ptr %i.axk, %i.axl
  br i1 %i.axm, label %select.unfold.i.i.i, label %bb.iu

bb.iu:                                            ; preds = %bb.it, %.lr.ph.i221.i.i
  %indvars.iv.next53.i.i.i = add nuw nsw i64 %indvars.iv52.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next53.i.i.i, %wide.trip.count56.i.i.i
end_hunk_1
begin_hunk_2_@_ZN5ImGui8NewFrameEv:bb.a
  %i.bgi = getelementptr i8, ptr %i.bgh, i64 -40
  %i.bgj = load ptr, ptr %i.bgi, align 8, !tbaa !608
  %i.bgk = getelementptr inbounds nuw i8, ptr %i.bgj, i64 12
  %i.bgl = load i32, ptr %i.bgk, align 4, !tbaa !428
  %i.bgm = and i32 %i.bgl, 134217728
  %.not33.i.i = icmp eq i32 %i.bgm, 0
  br i1 %.not33.i.i, label %bb.ko, label %_ZN5ImGuiL22NavUpdateCancelRequestEv.exit.i

bb.ko:                                            ; preds = %bb.kn
  %i.bgn = add nsw i32 %i.bgd, -1
  call void @_ZN5ImGui17ClosePopupToLevelEib(i32 noundef %i.bgn, i1 noundef zeroext true)
  br label %_ZN5ImGuiL22NavUpdateCancelRequestEv.exit.i

bb.kp:                                            ; preds = %bb.km
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.bdy, i64 12
  %i.bgp = load i32, ptr %i.bgo, align 4, !tbaa !428
  %i.bgq = and i32 %i.bgp, 83886080
  %or.cond.not.i.i = icmp eq i32 %i.bgq, 16777216
  br i1 %or.cond.not.i.i, label %.thread49.i.i, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.bgr = getelementptr inbounds nuw i8, ptr %i.bdy, i64 872
  store i32 0, ptr %i.bgr, align 8, !tbaa !34
  br label %.thread49.i.i

.thread49.i.i:                                    ; preds = %bb.kq, %bb.kp, %.thread.i.i
  %i.bgs = getelementptr inbounds nuw i8, ptr %i.bde, i64 7700
  store i32 0, ptr %i.bgs, align 4, !tbaa !592
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.bde, i64 7696
  store i32 0, ptr %i.bgt, align 8, !tbaa !319
  br label %_ZN5ImGuiL22NavUpdateCancelRequestEv.exit.i

_ZN5ImGuiL22NavUpdateCancelRequestEv.exit.i:      ; preds = %.thread49.i.i, %bb.ko, %bb.kn, %bb.kl, %_ZN5ImGuiL15NavRestoreLayerE13ImGuiNavLayer.exit.i.i, %_ZN5ImGui13ClearActiveIDEv.exit.i260.i, %bb.jz, %bb.jy
  %i.bgu = getelementptr inbounds nuw i8, ptr %i.oj, i64 7716 ; 3 uses
  %i.bgv = getelementptr inbounds nuw i8, ptr %i.oj, i64 7712 ; 2 uses
  %i.bgw = getelementptr inbounds nuw i8, ptr %i.oj, i64 7708 ; 3 uses
  %i.bgx = getelementptr inbounds nuw i8, ptr %i.oj, i64 7704 ; 3 uses
  %i.bgy = getelementptr inbounds nuw i8, ptr %i.oj, i64 7720 ; 4 uses
  %i.bgz = getelementptr inbounds nuw i8, ptr %i.oj, i64 7696
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bgx, i8 0, i64 20, i1 false)
  %i.bha = load i32, ptr %i.bgz, align 8, !tbaa !319 ; 8 uses
  %.not232.i = icmp eq i32 %i.bha, 0
  br i1 %.not232.i, label %bb.le, label %bb.kr

bb.kr:                                            ; preds = %_ZN5ImGuiL22NavUpdateCancelRequestEv.exit.i
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.oj, i64 7762
  %i.bhc = load i8, ptr %i.bhb, align 2, !tbaa !320, !range !210, !noundef !211
  %i.bhd = trunc nuw i8 %i.bhc to i1
  br i1 %i.bhd, label %bb.le, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.oj, i64 7984
  %i.bhf = load ptr, ptr %i.bhe, align 8, !tbaa !698
  %.not233.i = icmp eq ptr %i.bhf, null
  br i1 %.not233.i, label %bb.kt, label %bb.le

bb.kt:                                            ; preds = %bb.ks
  %i.bhg = load ptr, ptr %i.acz, align 8, !tbaa !425 ; 2 uses
  %.not234.i = icmp eq ptr %i.bhg, null
  br i1 %.not234.i, label %.thread305.i, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.bhh = getelementptr inbounds nuw i8, ptr %i.bhg, i64 12
  %i.bhi = load i32, ptr %i.bhh, align 4, !tbaa !428
  %i.bhj = and i32 %i.bhi, 262144
  %.not235.i = icmp eq i32 %i.bhj, 0
  br i1 %.not235.i, label %bb.kv, label %bb.le

bb.kv:                                            ; preds = %bb.ku
  %i.bhk = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 4 uses
  %i.bhl = getelementptr inbounds nuw i8, ptr %i.bhk, i64 836
  %i.bhm = load float, ptr %i.bhl, align 4, !tbaa !9
  %i.bhn = fcmp ogt float %i.bhm, 0.000000e+00    ; 3 uses
  %i.bho = getelementptr inbounds nuw i8, ptr %i.bhk, i64 844
  %i.bhp = load float, ptr %i.bho, align 4, !tbaa !9
  %i.bhq = fcmp ogt float %i.bhp, 0.000000e+00
  br i1 %i.bhn, label %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit.i, label %bb.kw

_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit.i: ; preds = %bb.kv
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bhk, i64 5284
  %i.bhs = load float, ptr %i.bhr, align 4, !tbaa !9
  %i.bht = fcmp oeq float %i.bhs, 0.000000e+00
  br label %bb.kw

bb.kw:                                            ; preds = %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit.i, %bb.kv
  %i.bhu = phi i1 [ false, %bb.kv ], [ %i.bht, %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit.i ] ; 3 uses
  br i1 %i.bhq, label %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit286.i, label %bb.kx

_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit286.i: ; preds = %bb.kw
  %i.bhv = getelementptr inbounds nuw i8, ptr %i.bhk, i64 5292
  %i.bhw = load float, ptr %i.bhv, align 4, !tbaa !9
  %i.bhx = fcmp oeq float %i.bhw, 0.000000e+00
  br label %bb.kx

bb.kx:                                            ; preds = %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit286.i, %bb.kw
  %i.bhy = phi i1 [ false, %bb.kw ], [ %i.bhx, %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit286.i ] ; 2 uses
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.oj, i64 7260
  %i.bia = load i32, ptr %i.bhz, align 4, !tbaa !331 ; 2 uses
  %i.bib = icmp eq i32 %i.bia, 0                  ; 2 uses
  %or.cond3.i = and i1 %i.bhu, %i.bib
  br i1 %or.cond3.i, label %.thread298.i, label %bb.ky

.thread298.i:                                     ; preds = %bb.kx
  store i32 %i.bha, ptr %i.bgx, align 8, !tbaa !411
  store i32 2, ptr %i.bgy, align 8, !tbaa !719
  br label %bb.la

bb.ky:                                            ; preds = %bb.kx
  br i1 %i.bib, label %bb.la, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %i.bic = icmp eq i32 %i.bia, %i.bha             ; 3 uses
  %or.cond5.i = and i1 %i.bhy, %i.bic
  br i1 %or.cond5.i, label %bb.lb, label %.thread300.i

bb.la:                                            ; preds = %bb.ky, %.thread298.i
  br i1 %i.bhy, label %.thread301.i, label %.thread299.i

.thread301.i:                                     ; preds = %bb.la
  store i32 %i.bha, ptr %i.bgu, align 4, !tbaa !412
  store i32 1, ptr %i.bgy, align 8, !tbaa !719
  br label %.thread299.i

bb.lb:                                            ; preds = %bb.kz
  store i32 %i.bha, ptr %i.bgu, align 4, !tbaa !412
  store i32 1, ptr %i.bgy, align 8, !tbaa !719
  br label %.thread300.i

.thread300.i:                                     ; preds = %bb.lb, %bb.kz
  %or.cond8.i = and i1 %i.bhn, %i.bic
  br i1 %or.cond8.i, label %bb.lc, label %.thread303.i

.thread299.i:                                     ; preds = %.thread301.i, %bb.la
  br i1 %i.bhn, label %.thread304.i, label %.thread302.i

.thread304.i:                                     ; preds = %.thread299.i
  store i32 %i.bha, ptr %i.bgw, align 4, !tbaa !720
  br label %.thread302.i

bb.lc:                                            ; preds = %.thread300.i
  store i32 %i.bha, ptr %i.bgw, align 4, !tbaa !720
  br label %.thread303.i

.thread303.i:                                     ; preds = %bb.lc, %.thread300.i
  %or.cond11.i = and i1 %i.bhu, %i.bic
  br i1 %or.cond11.i, label %bb.ld, label %bb.le

.thread302.i:                                     ; preds = %.thread304.i, %.thread299.i
  br i1 %i.bhu, label %bb.ld, label %bb.le

bb.ld:                                            ; preds = %.thread302.i, %.thread303.i
  store i32 %i.bha, ptr %i.bgv, align 8, !tbaa !721
  br label %bb.le

bb.le:                                            ; preds = %bb.ld, %.thread302.i, %.thread303.i, %bb.ku, %bb.ks, %bb.kr, %_ZN5ImGuiL22NavUpdateCancelRequestEv.exit.i
  %.pr.i = load ptr, ptr %i.acz, align 8, !tbaa !425 ; 2 uses
  %.not236.i = icmp eq ptr %.pr.i, null
  br i1 %.not236.i, label %.thread305.i, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  %i.bid = getelementptr inbounds nuw i8, ptr %.pr.i, i64 12
  %i.bie = load i32, ptr %i.bid, align 4, !tbaa !428
  %i.bif = and i32 %i.bie, 262144
  %.not237.i = icmp eq i32 %i.bif, 0
  br i1 %.not237.i, label %.thread305.i, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.big = getelementptr inbounds nuw i8, ptr %i.oj, i64 7762
  store i8 1, ptr %i.big, align 2, !tbaa !320
  br label %.thread305.i

.thread305.i:                                     ; preds = %bb.lg, %bb.lf, %bb.le, %bb.kt
  %i.bih = getelementptr inbounds nuw i8, ptr %i.oj, i64 7740 ; 2 uses
  %i.bii = load i32, ptr %i.bih, align 4, !tbaa !722 ; 5 uses
  %.not238.i = icmp eq i32 %i.bii, 0
  br i1 %.not238.i, label %bb.ll, label %bb.lh

bb.lh:                                            ; preds = %.thread305.i
  %i.bij = getelementptr inbounds nuw i8, ptr %i.oj, i64 7744
  %i.bik = load i32, ptr %i.bij, align 8, !tbaa !723 ; 2 uses
  %i.bil = and i32 %i.bik, 1
  %.not239.i = icmp eq i32 %i.bil, 0
  br i1 %.not239.i, label %bb.lj, label %bb.li

bb.li:                                            ; preds = %bb.lh
  store i32 %i.bii, ptr %i.bgu, align 4, !tbaa !412
  br label %bb.lk

bb.lj:                                            ; preds = %bb.lh
  store i32 %i.bii, ptr %i.bgv, align 8, !tbaa !721
  store i32 %i.bii, ptr %i.bgw, align 4, !tbaa !720
  store i32 %i.bii, ptr %i.bgx, align 8, !tbaa !411
  br label %bb.lk

bb.lk:                                            ; preds = %bb.lj, %bb.li
  store i32 %i.bik, ptr %i.bgy, align 8, !tbaa !719
  br label %bb.ll

bb.ll:                                            ; preds = %bb.lk, %.thread305.i
  store i32 0, ptr %i.bih, align 4, !tbaa !722
  %i.bim = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 120 uses
  %i.bin = getelementptr inbounds nuw i8, ptr %i.bim, i64 8
  %i.bio = getelementptr inbounds nuw i8, ptr %i.bim, i64 7688
  %i.bip = load ptr, ptr %i.bio, align 8, !tbaa !425 ; 51 uses
  %i.biq = getelementptr inbounds nuw i8, ptr %i.bim, i64 7790 ; 4 uses
  %i.bir = load i8, ptr %i.biq, align 2, !tbaa !474, !range !210, !noundef !211
  %i.bis = trunc nuw i8 %i.bir to i1
  %i.bit = icmp ne ptr %i.bip, null               ; 4 uses
  %or.cond.i.i = select i1 %i.bis, i1 %i.bit, i1 false
  %.phi.trans.insert.i267.i = getelementptr inbounds nuw i8, ptr %i.bim, i64 7804 ; 10 uses
  br i1 %or.cond.i.i, label %..thread_crit_edge.i.i, label %bb.lm

..thread_crit_edge.i.i:                           ; preds = %bb.ll
  %.pre.i280.i = load i32, ptr %.phi.trans.insert.i267.i, align 4, !tbaa !724
  br label %.thread.i273.i

bb.lm:                                            ; preds = %bb.ll
  store i32 -1, ptr %.phi.trans.insert.i267.i, align 4, !tbaa !724
  %i.biu = getelementptr inbounds nuw i8, ptr %i.bim, i64 7792
  store i32 0, ptr %i.biu, align 8, !tbaa !725
  %i.biv = getelementptr inbounds nuw i8, ptr %i.bim, i64 7796
  store i32 0, ptr %i.biv, align 4, !tbaa !726
  br i1 %i.bit, label %bb.ln, label %bb.mj

bb.ln:                                            ; preds = %bb.lm
  %i.biw = getelementptr inbounds nuw i8, ptr %i.bim, i64 7984
  %i.bix = load ptr, ptr %i.biw, align 8, !tbaa !698
  %.not.i272.i = icmp eq ptr %i.bix, null
  br i1 %.not.i272.i, label %bb.lo, label %.thread180.i.i

bb.lo:                                            ; preds = %bb.ln
  %i.biy = getelementptr inbounds nuw i8, ptr %i.bip, i64 12
  %i.biz = load i32, ptr %i.biy, align 4, !tbaa !428
  %i.bja = and i32 %i.biz, 262144
  %.not64.i.i = icmp eq i32 %i.bja, 0
  br i1 %.not64.i.i, label %bb.lp, label %.thread180.i.i

bb.lp:                                            ; preds = %bb.lo
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.bim, i64 7280
  %i.bjc = load i32, ptr %i.bjb, align 8, !tbaa !727 ; 4 uses
  %i.bjd = and i32 %i.bjc, 1
  %.not185.i.i = icmp eq i32 %i.bjd, 0
  br i1 %.not185.i.i, label %bb.lq, label %bb.lu

bb.lq:                                            ; preds = %bb.lp
  %i.bje = getelementptr inbounds nuw i8, ptr %i.bim, i64 5300
  %i.bjf = load float, ptr %i.bje, align 4, !tbaa !9 ; 7 uses
  %i.bjg = fcmp olt float %i.bjf, 0.000000e+00
  br i1 %i.bjg, label %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit.thread.i.i, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.bim, i64 24
  %i.bji = load float, ptr %i.bjh, align 8, !tbaa !641
  %i.bjj = fsub float %i.bjf, %i.bji              ; 3 uses
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bim, i64 148
  %i.bjl = load float, ptr %i.bjk, align 4, !tbaa !702
  %i.bjm = fmul float %i.bjl, 7.200000e-01        ; 4 uses
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.bim, i64 152
  %i.bjo = load float, ptr %i.bjn, align 8, !tbaa !703
  %i.bjp = fmul float %i.bjo, 8.000000e-01        ; 2 uses
  %i.bjq = fcmp oeq float %i.bjf, 0.000000e+00
  br i1 %i.bjq, label %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit.thread161.i.i, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.bjr = fcmp ult float %i.bjj, %i.bjf
  br i1 %i.bjr, label %bb.lt, label %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit.thread.i.i

bb.lt:                                            ; preds = %bb.ls
  %i.bjs = fcmp ugt float %i.bjp, 0.000000e+00
  %i.bjt = fcmp olt float %i.bjj, %i.bjm          ; 2 uses
  br i1 %i.bjs, label %.split.i279.i, label %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit.i278.i

.split.i279.i:                                    ; preds = %bb.lt
  %i.bju = insertelement <2 x float> poison, float %i.bjf, i64 0
  %i.bjv = insertelement <2 x float> %i.bju, float %i.bjj, i64 1
  %i.bjw = insertelement <2 x float> poison, float %i.bjm, i64 0
  %i.bjx = shufflevector <2 x float> %i.bjw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bjy = fsub <2 x float> %i.bjv, %i.bjx
  %i.bjz = fcmp olt float %i.bjf, %i.bjm
  %i.bka = insertelement <2 x float> poison, float %i.bjp, i64 0
  %i.bkb = shufflevector <2 x float> %i.bka, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bkc = fdiv <2 x float> %i.bjy, %i.bkb
  %i.bkd = fptosi <2 x float> %i.bkc to <2 x i32>
  %i.bke = insertelement <2 x i1> poison, i1 %i.bjz, i64 0
  %i.bkf = insertelement <2 x i1> %i.bke, i1 %i.bjt, i64 1
  %i.bkg = select <2 x i1> %i.bkf, <2 x i32> splat (i32 -1), <2 x i32> %i.bkd ; 2 uses
  %shift674 = shufflevector <2 x i32> %i.bkg, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.bkh = icmp sgt <2 x i32> %i.bkg, %shift674
  %i.bki = extractelement <2 x i1> %i.bkh, i64 0
  br i1 %i.bki, label %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit.thread161.i.i, label %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit.thread.i.i

_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit.i278.i: ; preds = %bb.lt
  %i.bkj = fcmp oge float %i.bjf, %i.bjm
  %i.bkk = and i1 %i.bjt, %i.bkj
  br i1 %i.bkk, label %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit.thread161.i.i, label %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit.thread.i.i

_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit.thread.i.i: ; preds = %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit.i278.i, %.split.i279.i, %bb.ls, %bb.lq
  %i.bkl = call noundef float @_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode(i32 noundef 16, i32 noundef 3)
  %i.bkm = fcmp ogt float %i.bkl, 0.000000e+00
  br i1 %i.bkm, label %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit.thread161.i.i, label %bb.lu

_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit.thread161.i.i: ; preds = %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit.thread.i.i, %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit.i278.i, %.split.i279.i, %bb.lr
  store i32 0, ptr %.phi.trans.insert.i267.i, align 4, !tbaa !724
  br label %bb.lu

bb.lu:                                            ; preds = %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit.thread161.i.i, %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit.thread.i.i, %bb.lp
  %i.bkn = phi i32 [ 0, %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit.thread161.i.i ], [ -1, %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit.thread.i.i ], [ -1, %bb.lp ] ; 2 uses
  %i.bko = and i32 %i.bjc, 2
  %.not186.i.i = icmp eq i32 %i.bko, 0
  br i1 %.not186.i.i, label %bb.lv, label %bb.lz

bb.lv:                                            ; preds = %bb.lu
  %i.bkp = getelementptr inbounds nuw i8, ptr %i.bim, i64 5304
  %i.bkq = load float, ptr %i.bkp, align 8, !tbaa !9 ; 7 uses
  %i.bkr = fcmp olt float %i.bkq, 0.000000e+00
  br i1 %i.bkr, label %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit106.thread.i.i, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.bks = getelementptr inbounds nuw i8, ptr %i.bim, i64 24
  %i.bkt = load float, ptr %i.bks, align 8, !tbaa !641
  %i.bku = fsub float %i.bkq, %i.bkt              ; 3 uses
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.bim, i64 148
  %i.bkw = load float, ptr %i.bkv, align 4, !tbaa !702
  %i.bkx = fmul float %i.bkw, 7.200000e-01        ; 4 uses
  %i.bky = getelementptr inbounds nuw i8, ptr %i.bim, i64 152
  %i.bkz = load float, ptr %i.bky, align 8, !tbaa !703
  %i.bla = fmul float %i.bkz, 8.000000e-01        ; 2 uses
  %i.blb = fcmp oeq float %i.bkq, 0.000000e+00
  br i1 %i.blb, label %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit106.thread166.i.i, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  %i.blc = fcmp ult float %i.bku, %i.bkq
  br i1 %i.blc, label %bb.ly, label %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit106.thread.i.i

bb.ly:                                            ; preds = %bb.lx
  %i.bld = fcmp ugt float %i.bla, 0.000000e+00
  %i.ble = fcmp olt float %i.bku, %i.bkx          ; 2 uses
  br i1 %i.bld, label %.split231.i.i, label %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit106.i.i

.split231.i.i:                                    ; preds = %bb.ly
  %i.blf = insertelement <2 x float> poison, float %i.bkq, i64 0
  %i.blg = insertelement <2 x float> %i.blf, float %i.bku, i64 1
  %i.blh = insertelement <2 x float> poison, float %i.bkx, i64 0
  %i.bli = shufflevector <2 x float> %i.blh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.blj = fsub <2 x float> %i.blg, %i.bli
  %i.blk = fcmp olt float %i.bkq, %i.bkx
  %i.bll = insertelement <2 x float> poison, float %i.bla, i64 0
  %i.blm = shufflevector <2 x float> %i.bll, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bln = fdiv <2 x float> %i.blj, %i.blm
  %i.blo = fptosi <2 x float> %i.bln to <2 x i32>
  %i.blp = insertelement <2 x i1> poison, i1 %i.blk, i64 0
  %i.blq = insertelement <2 x i1> %i.blp, i1 %i.ble, i64 1
  %i.blr = select <2 x i1> %i.blq, <2 x i32> splat (i32 -1), <2 x i32> %i.blo ; 2 uses
  %shift675 = shufflevector <2 x i32> %i.blr, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.bls = icmp sgt <2 x i32> %i.blr, %shift675
  %i.blt = extractelement <2 x i1> %i.bls, i64 0
  br i1 %i.blt, label %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit106.thread166.i.i, label %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit106.thread.i.i

_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit106.i.i: ; preds = %bb.ly
  %i.blu = fcmp oge float %i.bkq, %i.bkx
  %i.blv = and i1 %i.ble, %i.blu
  br i1 %i.blv, label %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit106.thread166.i.i, label %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit106.thread.i.i

_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit106.thread.i.i: ; preds = %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit106.i.i, %.split231.i.i, %bb.lx, %bb.lv
  %i.blw = call noundef float @_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode(i32 noundef 17, i32 noundef 3)
  %i.blx = fcmp ogt float %i.blw, 0.000000e+00
  br i1 %i.blx, label %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit106.thread166.i.i, label %bb.lz

_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit106.thread166.i.i: ; preds = %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit106.thread.i.i, %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit106.i.i, %.split231.i.i, %bb.lw
  store i32 1, ptr %.phi.trans.insert.i267.i, align 4, !tbaa !724
  br label %bb.lz

bb.lz:                                            ; preds = %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit106.thread166.i.i, %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit106.thread.i.i, %bb.lu
  %i.bly = phi i32 [ 1, %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit106.thread166.i.i ], [ %i.bkn, %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit106.thread.i.i ], [ %i.bkn, %bb.lu ] ; 2 uses
  %i.blz = and i32 %i.bjc, 4
  %.not187.i.i = icmp eq i32 %i.blz, 0
  br i1 %.not187.i.i, label %bb.ma, label %bb.me

bb.ma:                                            ; preds = %bb.lz
  %i.bma = getelementptr inbounds nuw i8, ptr %i.bim, i64 5308
  %i.bmb = load float, ptr %i.bma, align 4, !tbaa !9 ; 7 uses
  %i.bmc = fcmp olt float %i.bmb, 0.000000e+00
  br i1 %i.bmc, label %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit111.thread.i.i, label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  %i.bmd = getelementptr inbounds nuw i8, ptr %i.bim, i64 24
  %i.bme = load float, ptr %i.bmd, align 8, !tbaa !641
  %i.bmf = fsub float %i.bmb, %i.bme              ; 3 uses
  %i.bmg = getelementptr inbounds nuw i8, ptr %i.bim, i64 148
  %i.bmh = load float, ptr %i.bmg, align 4, !tbaa !702
  %i.bmi = fmul float %i.bmh, 7.200000e-01        ; 4 uses
  %i.bmj = getelementptr inbounds nuw i8, ptr %i.bim, i64 152
  %i.bmk = load float, ptr %i.bmj, align 8, !tbaa !703
  %i.bml = fmul float %i.bmk, 8.000000e-01        ; 2 uses
  %i.bmm = fcmp oeq float %i.bmb, 0.000000e+00
  br i1 %i.bmm, label %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit111.thread171.i.i, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  %i.bmn = fcmp ult float %i.bmf, %i.bmb
  br i1 %i.bmn, label %bb.md, label %_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode.exit111.thread.i.i

end_hunk_2
begin_hunk_3_@_ZN5ImGui8NewFrameEv:bb.a

_ZN5ImGui12IsKeyPressedEib.exit73.i.i.i:          ; preds = %bb.nn
  %i.bwp = insertelement <2 x float> poison, float %i.bwa, i64 0
  %i.bwq = insertelement <2 x float> %i.bwp, float %i.bwj, i64 1
  %i.bwr = insertelement <2 x float> poison, float %i.bwd, i64 0
  %i.bws = shufflevector <2 x float> %i.bwr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bwt = fsub <2 x float> %i.bwq, %i.bws
  %i.bwu = fcmp olt float %i.bwa, %i.bwd
  %i.bwv = insertelement <2 x float> poison, float %i.bwg, i64 0
  %i.bww = shufflevector <2 x float> %i.bwv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bwx = fdiv <2 x float> %i.bwt, %i.bww
  %i.bwy = fptosi <2 x float> %i.bwx to <2 x i32>
  %i.bwz = insertelement <2 x i1> poison, i1 %i.bwu, i64 0
  %i.bxa = insertelement <2 x i1> %i.bwz, i1 %i.bwm, i64 1
  %i.bxb = select <2 x i1> %i.bxa, <2 x i32> splat (i32 -1), <2 x i32> %i.bwy ; 2 uses
  %shift680 = shufflevector <2 x i32> %i.bxb, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.bxc = icmp sgt <2 x i32> %i.bxb, %shift680
  %i.bxd = extractelement <2 x i1> %i.bxc, i64 0
  br i1 %i.bxd, label %_ZN5ImGui12IsKeyPressedEib.exit73.thread84.i.i.i, label %_ZN5ImGui12IsKeyPressedEib.exit73.thread.i.i.i

_ZN5ImGui12IsKeyPressedEib.exit73.thread84.i.i.i: ; preds = %_ZN5ImGui12IsKeyPressedEib.exit73.i.i.i, %.split86.i.i.i, %bb.nk
  %i.bxe = fneg float %i.bvw
  store i32 3, ptr %.phi.trans.insert.i267.i, align 4, !tbaa !724
  %i.bxf = getelementptr inbounds nuw i8, ptr %i.bim, i64 7812
  store i32 2, ptr %i.bxf, align 4, !tbaa !218
  br label %.thread243.i.i

_ZN5ImGui12IsKeyPressedEib.exit73.thread.i.i.i:   ; preds = %_ZN5ImGui12IsKeyPressedEib.exit73.i.i.i, %.split86.i.i.i, %bb.nm, %bb.nl, %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i.i
  %i.bxg = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedEib(i32 noundef %i.bpw, i1 noundef zeroext true)
  br i1 %i.bxg, label %bb.no, label %bb.np

bb.no:                                            ; preds = %_ZN5ImGui12IsKeyPressedEib.exit73.thread.i.i.i
  store i32 2, ptr %.phi.trans.insert.i267.i, align 4, !tbaa !724
  %i.bxh = getelementptr inbounds nuw i8, ptr %i.bim, i64 7812
  store i32 3, ptr %i.bxh, align 4, !tbaa !218
  br label %.thread243.i.i

bb.np:                                            ; preds = %_ZN5ImGui12IsKeyPressedEib.exit73.thread.i.i.i
  br i1 %i.brv, label %bb.nq, label %bb.nt

bb.nq:                                            ; preds = %bb.np
  %i.bxi = getelementptr inbounds nuw i8, ptr %i.bip, i64 96
  %i.bxj = load float, ptr %i.bxi, align 8, !tbaa !730
  %i.bxk = fneg float %i.bxj                      ; 2 uses
  store float %i.bxk, ptr %i.bvp, align 4, !tbaa !216
  store float %i.bxk, ptr %i.bvr, align 4, !tbaa !215
  %i.bxl = load float, ptr %i.buy, align 8, !tbaa !436
  %i.bxm = getelementptr inbounds nuw i8, ptr %i.bip, i64 888 ; 2 uses
  %i.bxn = load float, ptr %i.bxm, align 8, !tbaa !437
  %i.bxo = fcmp ogt float %i.bxl, %i.bxn
  br i1 %i.bxo, label %bb.nr, label %bb.ns

bb.nr:                                            ; preds = %bb.nq
  store float 0.000000e+00, ptr %i.bxm, align 8, !tbaa !437
  store float 0.000000e+00, ptr %i.buy, align 8, !tbaa !436
  br label %bb.ns

bb.ns:                                            ; preds = %bb.nr, %bb.nq
  store i32 3, ptr %.phi.trans.insert.i267.i, align 4, !tbaa !724
  br label %.thread243.i.i

bb.nt:                                            ; preds = %bb.np
  br i1 %i.btj, label %bb.nu, label %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.thread.i.i

bb.nu:                                            ; preds = %bb.nt
  %i.bxp = getelementptr inbounds nuw i8, ptr %i.bip, i64 104
  %i.bxq = load float, ptr %i.bxp, align 8, !tbaa !734
  %i.bxr = getelementptr inbounds nuw i8, ptr %i.bip, i64 36
  %i.bxs = load float, ptr %i.bxr, align 4, !tbaa !735
  %i.bxt = fadd float %i.bxq, %i.bxs
  %i.bxu = getelementptr inbounds nuw i8, ptr %i.bip, i64 96
  %i.bxv = load float, ptr %i.bxu, align 8, !tbaa !730
  %i.bxw = fsub float %i.bxt, %i.bxv              ; 2 uses
  store float %i.bxw, ptr %i.bvp, align 4, !tbaa !216
  store float %i.bxw, ptr %i.bvr, align 4, !tbaa !215
  %i.bxx = load float, ptr %i.buy, align 8, !tbaa !436
  %i.bxy = getelementptr inbounds nuw i8, ptr %i.bip, i64 888 ; 2 uses
  %i.bxz = load float, ptr %i.bxy, align 8, !tbaa !437
  %i.bya = fcmp ogt float %i.bxx, %i.bxz
  br i1 %i.bya, label %bb.nv, label %bb.nw

bb.nv:                                            ; preds = %bb.nu
  store float 0.000000e+00, ptr %i.bxy, align 8, !tbaa !437
  store float 0.000000e+00, ptr %i.buy, align 8, !tbaa !436
  br label %bb.nw

bb.nw:                                            ; preds = %bb.nv, %bb.nu
  store i32 2, ptr %.phi.trans.insert.i267.i, align 4, !tbaa !724
  br label %.thread243.i.i

_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.thread.i.i: ; preds = %bb.nt, %bb.nh, %bb.ng, %bb.nf, %bb.nd, %bb.nb, %_ZN5ImGui12IsKeyPressedEib.exit70.thread.i.i.i, %bb.mm, %bb.ml, %bb.mk, %bb.mj
  store i8 0, ptr %i.biq, align 2, !tbaa !474
  br label %bb.nx

_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i:   ; preds = %.thread.i273.i
  store i8 0, ptr %i.biq, align 2, !tbaa !474
  br i1 %i.bpa, label %bb.nx, label %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i..thread243.i_crit_edge.i

_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i..thread243.i_crit_edge.i: ; preds = %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bim, i64 7792
  %.pre.i250 = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !725
  br label %.thread243.i.i

.thread243.i.i:                                   ; preds = %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i..thread243.i_crit_edge.i, %bb.nw, %bb.ns, %bb.no, %_ZN5ImGui12IsKeyPressedEib.exit73.thread84.i.i.i
  %i.byb = phi i32 [ %.pre.i250, %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i..thread243.i_crit_edge.i ], [ 80, %bb.ns ], [ 80, %bb.nw ], [ 48, %_ZN5ImGui12IsKeyPressedEib.exit73.thread84.i.i.i ], [ 48, %bb.no ] ; 2 uses
  %.0242.i.i = phi float [ 0.000000e+00, %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i..thread243.i_crit_edge.i ], [ 0.000000e+00, %bb.ns ], [ 0.000000e+00, %bb.nw ], [ %i.bxe, %_ZN5ImGui12IsKeyPressedEib.exit73.thread84.i.i.i ], [ %i.bvw, %bb.no ]
  %i.byc = phi i32 [ %i.box, %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i..thread243.i_crit_edge.i ], [ 3, %bb.ns ], [ 2, %bb.nw ], [ 3, %_ZN5ImGui12IsKeyPressedEib.exit73.thread84.i.i.i ], [ 2, %bb.no ]
  %i.byd = getelementptr inbounds nuw i8, ptr %i.bim, i64 7792
  %i.bye = lshr i32 %i.byb, 5
  %i.byf = and i32 %i.bye, 16
  %spec.select.i.i.i = or i32 %i.byf, %i.byb
  %i.byg = getelementptr inbounds nuw i8, ptr %i.bim, i64 7789
  store i8 1, ptr %i.byg, align 1, !tbaa !214
  %i.byh = getelementptr inbounds nuw i8, ptr %i.bim, i64 7788
  store i8 1, ptr %i.byh, align 4, !tbaa !473
  %i.byi = getelementptr inbounds nuw i8, ptr %i.bim, i64 7808
  store i32 %i.byc, ptr %i.byi, align 8, !tbaa !475
  store i32 %spec.select.i.i.i, ptr %i.byd, align 8, !tbaa !725
  store i8 0, ptr %i.biq, align 2, !tbaa !474
  %i.byj = getelementptr inbounds nuw i8, ptr %i.bim, i64 960
  %i.byk = load i32, ptr %i.byj, align 8, !tbaa !688
  %i.byl = getelementptr inbounds nuw i8, ptr %i.bim, i64 7800
  store i32 %i.byk, ptr %i.byl, align 8, !tbaa !736
  %i.bym = getelementptr inbounds nuw i8, ptr %i.bim, i64 7836
  %i.byn = getelementptr inbounds nuw i8, ptr %i.bim, i64 7872
  store i32 0, ptr %i.byn, align 8, !tbaa !737
  %i.byo = getelementptr inbounds nuw i8, ptr %i.bim, i64 7884
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bym, i8 0, i64 20, i1 false)
  store float f0x7F7FFFFF, ptr %i.byo, align 4, !tbaa !452
  %i.byp = getelementptr inbounds nuw i8, ptr %i.bim, i64 7876
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.byp, align 4, !tbaa !9
  %i.byq = getelementptr inbounds nuw i8, ptr %i.bim, i64 7888
  %i.byr = getelementptr inbounds nuw i8, ptr %i.bim, i64 7920
  store i32 0, ptr %i.byr, align 8, !tbaa !737
  %i.bys = getelementptr inbounds nuw i8, ptr %i.bim, i64 7932
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.byq, i8 0, i64 16, i1 false)
  store float f0x7F7FFFFF, ptr %i.bys, align 4, !tbaa !452
  %i.byt = getelementptr inbounds nuw i8, ptr %i.bim, i64 7924
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.byt, align 4, !tbaa !9
  %i.byu = getelementptr inbounds nuw i8, ptr %i.bim, i64 7936
  %i.byv = getelementptr inbounds nuw i8, ptr %i.bim, i64 7968
  store i32 0, ptr %i.byv, align 8, !tbaa !737
  %i.byw = getelementptr inbounds nuw i8, ptr %i.bim, i64 7980
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.byu, i8 0, i64 16, i1 false)
  store float f0x7F7FFFFF, ptr %i.byw, align 4, !tbaa !452
  %i.byx = getelementptr inbounds nuw i8, ptr %i.bim, i64 7972
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.byx, align 4, !tbaa !9
  %i.byy = getelementptr inbounds nuw i8, ptr %i.bim, i64 7764
  store i8 1, ptr %i.byy, align 4, !tbaa !590
  br label %bb.ny

bb.nx:                                            ; preds = %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i, %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.thread.i.i
  %.phi.trans.insert192.i.i = getelementptr inbounds nuw i8, ptr %i.bim, i64 7788
  %.pre193.i.i = load i8, ptr %.phi.trans.insert192.i.i, align 4, !tbaa !473, !range !210
  %i.byz = trunc nuw i8 %.pre193.i.i to i1
  br i1 %i.byz, label %bb.ny, label %bb.og

bb.ny:                                            ; preds = %bb.nx, %.thread243.i.i
  %.0236247.i.i = phi float [ %.0242.i.i, %.thread243.i.i ], [ 0.000000e+00, %bb.nx ] ; 4 uses
  %i.bza = getelementptr inbounds nuw i8, ptr %i.bim, i64 7696 ; 2 uses
  %i.bzb = load i32, ptr %i.bza, align 8, !tbaa !319
  %i.bzc = icmp eq i32 %i.bzb, 0
  br i1 %i.bzc, label %bb.nz, label %bb.oa

bb.nz:                                            ; preds = %bb.ny
  %i.bzd = getelementptr inbounds nuw i8, ptr %i.bim, i64 7766
  store i8 1, ptr %i.bzd, align 2, !tbaa !695
  %i.bze = getelementptr inbounds nuw i8, ptr %i.bim, i64 7765
  store i8 1, ptr %i.bze, align 1, !tbaa !589
  %i.bzf = getelementptr inbounds nuw i8, ptr %i.bim, i64 7768
  store i32 0, ptr %i.bzf, align 8, !tbaa !472
  %i.bzg = getelementptr inbounds nuw i8, ptr %i.bim, i64 7762
  store i8 0, ptr %i.bzg, align 2, !tbaa !320
  br label %bb.oa

bb.oa:                                            ; preds = %bb.nz, %bb.ny
  %i.bzh = getelementptr inbounds nuw i8, ptr %i.bim, i64 7748
  %i.bzi = load i32, ptr %i.bzh, align 4, !tbaa !691
  %i.bzj = icmp eq i32 %i.bzi, 3
  br i1 %i.bzj, label %bb.ob, label %bb.og

bb.ob:                                            ; preds = %bb.oa
  %i.bzk = getelementptr inbounds nuw i8, ptr %i.bim, i64 7752
  %i.bzl = load i32, ptr %i.bzk, align 8, !tbaa !593
  %i.bzm = icmp eq i32 %i.bzl, 0
  %or.cond5.i.i = select i1 %i.bzm, i1 %i.bit, i1 false
  br i1 %or.cond5.i.i, label %bb.oc, label %bb.og

bb.oc:                                            ; preds = %bb.ob
  %i.bzn = getelementptr inbounds nuw i8, ptr %i.bip, i64 456
  %i.bzo = getelementptr inbounds nuw i8, ptr %i.bip, i64 16
  %i.bzp = getelementptr inbounds nuw i8, ptr %i.bip, i64 464
  %i.bzq = load <2 x float>, ptr %i.bzn, align 4, !tbaa !9
  %i.bzr = load <2 x float>, ptr %i.bzo, align 4, !tbaa !9 ; 2 uses
  %i.bzs = fsub <2 x float> %i.bzq, %i.bzr
  %i.bzt = fadd <2 x float> %i.bzs, splat (float -1.000000e+00) ; 4 uses
  %i.bzu = load <2 x float>, ptr %i.bzp, align 4, !tbaa !9
  %i.bzv = fsub <2 x float> %i.bzu, %i.bzr
  %i.bzw = fadd <2 x float> %i.bzv, splat (float 1.000000e+00) ; 4 uses
  %i.bzx = getelementptr inbounds nuw i8, ptr %i.bip, i64 880 ; 2 uses
  %i.bzy = load float, ptr %i.bzx, align 4, !tbaa !436 ; 4 uses
  %i.bzz = extractelement <2 x float> %i.bzt, i64 0
  %i.caa = fcmp ult float %i.bzy, %i.bzz
  br i1 %i.caa, label %_ZNK6ImRect8ContainsERKS_.exit.thread.i.i, label %bb.od

bb.od:                                            ; preds = %bb.oc
  %i.cab = getelementptr inbounds nuw i8, ptr %i.bip, i64 884
  %i.cac = load float, ptr %i.cab, align 4, !tbaa !215
  %i.cad = extractelement <2 x float> %i.bzt, i64 1
  %i.cae = fcmp ult float %i.cac, %i.cad
  br i1 %i.cae, label %_ZNK6ImRect8ContainsERKS_.exit.thread.i.i, label %bb.oe

bb.oe:                                            ; preds = %bb.od
  %i.caf = getelementptr inbounds nuw i8, ptr %i.bip, i64 888
  %i.cag = load float, ptr %i.caf, align 4, !tbaa !437
  %i.cah = extractelement <2 x float> %i.bzw, i64 0
  %i.cai = fcmp ugt float %i.cag, %i.cah
  br i1 %i.cai, label %_ZNK6ImRect8ContainsERKS_.exit.thread.i.i, label %_ZNK6ImRect8ContainsERKS_.exit.i.i

_ZNK6ImRect8ContainsERKS_.exit.i.i:               ; preds = %bb.oe
  %i.caj = getelementptr inbounds nuw i8, ptr %i.bip, i64 892
  %i.cak = load float, ptr %i.caj, align 4, !tbaa !216
  %i.cal = extractelement <2 x float> %i.bzw, i64 1
  %i.cam = fcmp ugt float %i.cak, %i.cal
  br i1 %i.cam, label %_ZNK6ImRect8ContainsERKS_.exit.thread.i.i, label %.thread184.i.i

_ZNK6ImRect8ContainsERKS_.exit.thread.i.i:        ; preds = %_ZNK6ImRect8ContainsERKS_.exit.i.i, %bb.oe, %bb.od, %bb.oc
  %i.can = getelementptr inbounds nuw i8, ptr %i.bim, i64 6532
  %i.cao = load float, ptr %i.can, align 4, !tbaa !615
  %i.cap = getelementptr inbounds nuw i8, ptr %i.bip, i64 608
  %i.caq = load float, ptr %i.cap, align 8, !tbaa !342
  %i.car = fmul float %i.cao, %i.caq              ; 2 uses
  %i.cas = getelementptr inbounds nuw i8, ptr %i.bip, i64 824
  %i.cat = load ptr, ptr %i.cas, align 8, !tbaa !616 ; 2 uses
  %.not.i95.i.i = icmp eq ptr %i.cat, null
  br i1 %.not.i95.i.i, label %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i, label %bb.of

bb.of:                                            ; preds = %_ZNK6ImRect8ContainsERKS_.exit.thread.i.i
  %i.cau = getelementptr inbounds nuw i8, ptr %i.cat, i64 608
  %i.cav = load float, ptr %i.cau, align 8, !tbaa !342
  %i.caw = fmul float %i.car, %i.cav
  br label %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i

_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i:       ; preds = %bb.of, %_ZNK6ImRect8ContainsERKS_.exit.thread.i.i
  %.0.i.i268.i = phi float [ %i.caw, %bb.of ], [ %i.car, %_ZNK6ImRect8ContainsERKS_.exit.thread.i.i ]
  %i.cax = fmul float %.0.i.i268.i, 5.000000e-01
  %i.cay = fsub <2 x float> %i.bzw, %i.bzt        ; 2 uses
  %i.caz = getelementptr inbounds nuw i8, ptr %i.bip, i64 884
  %.val12.i.i.i = load float, ptr %i.caz, align 4, !tbaa !152 ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.bip, i64 888 ; 2 uses
  %i.cba = insertelement <2 x float> poison, float %i.cax, i64 0
  %i.cbb = shufflevector <2 x float> %i.cba, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cbc = fcmp olt <2 x float> %i.cay, %i.cbb
  %i.cbd = select <2 x i1> %i.cbc, <2 x float> %i.cay, <2 x float> %i.cbb ; 2 uses
  %i.cbe = fadd <2 x float> %i.bzt, %i.cbd        ; 4 uses
  %i.cbf = fsub <2 x float> %i.bzw, %i.cbd        ; 4 uses
  %6 = extractelement <2 x float> %i.cbe, i64 1   ; 2 uses
  %7 = fcmp olt float %.val12.i.i.i, %6
  %8 = extractelement <2 x float> %i.cbf, i64 1   ; 2 uses
  %9 = fcmp ogt float %.val12.i.i.i, %8
  %.sroa.0.4.vec.extract..i.i.i.i = select i1 %9, float %8, float %.val12.i.i.i
  %10 = select i1 %7, float %6, float %.sroa.0.4.vec.extract..i.i.i.i
  %11 = extractelement <2 x float> %i.cbe, i64 0  ; 2 uses
  %12 = fcmp olt float %i.bzy, %11
  %13 = extractelement <2 x float> %i.cbf, i64 0  ; 2 uses
  %14 = fcmp ogt float %i.bzy, %13
  %.sroa.0.0.vec.extract..i.i.i.i = select i1 %14, float %13, float %i.bzy
  %15 = select i1 %12, float %11, float %.sroa.0.0.vec.extract..i.i.i.i
  %.sroa.0.0.vec.insert.i.i.i269.i = insertelement <2 x float> poison, float %15, i64 0
  %.sroa.0.4.vec.insert.i.i.i270.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i269.i, float %10, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i270.i, ptr %i.bzx, align 8
  %i.cbg = load <2 x float>, ptr %5, align 8, !tbaa !9 ; 3 uses
  %i.cbh = fcmp olt <2 x float> %i.cbg, %i.cbe
  %i.cbi = fcmp ogt <2 x float> %i.cbg, %i.cbf
  %i.cbj = select <2 x i1> %i.cbi, <2 x float> %i.cbf, <2 x float> %i.cbg
  %i.cbk = select <2 x i1> %i.cbh, <2 x float> %i.cbe, <2 x float> %i.cbj
  store <2 x float> %i.cbk, ptr %5, align 8
  %i.cbl = getelementptr inbounds nuw i8, ptr %i.bim, i64 7700
  store i32 0, ptr %i.cbl, align 4, !tbaa !592
  store i32 0, ptr %i.bza, align 8, !tbaa !319
  br label %.thread184.i.i

bb.og:                                            ; preds = %bb.ob, %bb.oa, %bb.nx
  %.0236246.i.i = phi float [ 0.000000e+00, %bb.nx ], [ %.0236247.i.i, %bb.ob ], [ %.0236247.i.i, %bb.oa ]
  br i1 %i.bit, label %.thread184.i.i, label %_ZN5ImGuiL26NavUpdateCreateMoveRequestEv.exit.i

.thread184.i.i:                                   ; preds = %bb.og, %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i, %_ZNK6ImRect8ContainsERKS_.exit.i.i
  %.0236245.i.i = phi float [ %.0236247.i.i, %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i ], [ %.0236247.i.i, %_ZNK6ImRect8ContainsERKS_.exit.i.i ], [ %.0236246.i.i, %bb.og ] ; 2 uses
  %i.cbm = getelementptr inbounds nuw i8, ptr %i.bip, i64 880
  %i.cbn = getelementptr inbounds nuw i8, ptr %i.bim, i64 7752
  %i.cbo = load i32, ptr %i.cbn, align 8, !tbaa !593
  %i.cbp = zext i32 %i.cbo to i64
  %i.cbq = getelementptr inbounds nuw [16 x i8], ptr %i.cbm, i64 %i.cbp ; 4 uses
  %i.cbr = load float, ptr %i.cbq, align 4, !tbaa !436 ; 2 uses
  %i.cbs = getelementptr inbounds nuw i8, ptr %i.cbq, i64 8
  %i.cbt = load float, ptr %i.cbs, align 4, !tbaa !437 ; 2 uses
  %i.cbu = fcmp ogt float %i.cbr, %i.cbt
  %i.cbv = getelementptr inbounds nuw i8, ptr %i.cbq, i64 4
  %i.cbw = load float, ptr %i.cbv, align 4        ; 2 uses
  %i.cbx = getelementptr inbounds nuw i8, ptr %i.cbq, i64 12
  %i.cby = load float, ptr %i.cbx, align 4        ; 2 uses
  %i.cbz = fcmp ogt float %i.cbw, %i.cby
  %i.cca = select i1 %i.cbu, i1 true, i1 %i.cbz
  br i1 %i.cca, label %bb.oh, label %bb.oi

bb.oh:                                            ; preds = %.thread184.i.i
  br label %bb.oi

bb.oi:                                            ; preds = %bb.oh, %.thread184.i.i
  %.sroa.9.0.i.i = phi float [ 0.000000e+00, %bb.oh ], [ %i.cby, %.thread184.i.i ]
  %.sroa.7.0.i.i = phi float [ 0.000000e+00, %bb.oh ], [ %i.cbt, %.thread184.i.i ]
  %.sroa.5.0.i.i = phi float [ 0.000000e+00, %bb.oh ], [ %i.cbw, %.thread184.i.i ]
  %.sroa.0119.0.i.i = phi float [ 0.000000e+00, %bb.oh ], [ %i.cbr, %.thread184.i.i ]
  %i.ccb = getelementptr inbounds nuw i8, ptr %i.bip, i64 16
  %.val81.i.i = load float, ptr %i.ccb, align 4, !tbaa !151 ; 2 uses
  %i.ccc = getelementptr i8, ptr %i.bip, i64 20
  %.val82.i.i = load float, ptr %i.ccc, align 4, !tbaa !152 ; 2 uses
  %i.ccd = fadd float %.sroa.0119.0.i.i, %.val81.i.i
  %i.cce = fadd float %.sroa.5.0.i.i, %.val82.i.i
  %i.ccf = fadd float %.sroa.7.0.i.i, %.val81.i.i ; 2 uses
  %i.ccg = fadd float %.sroa.9.0.i.i, %.val82.i.i
  %i.cch = fadd float %.0236245.i.i, %i.cce
  %i.cci = fadd float %.0236245.i.i, %i.ccg
  %i.ccj = fadd float %i.ccd, 1.000000e+00        ; 2 uses
  %i.cck = fcmp olt float %i.ccj, %i.ccf
  %i.ccl = select i1 %i.cck, float %i.ccj, float %i.ccf
  br label %_ZN5ImGuiL26NavUpdateCreateMoveRequestEv.exit.i

_ZN5ImGuiL26NavUpdateCreateMoveRequestEv.exit.i:  ; preds = %bb.oi, %bb.og
  %.sroa.0124.0.i.i = phi float [ %i.ccl, %bb.oi ], [ 0.000000e+00, %bb.og ] ; 2 uses
  %.sroa.7125.0.i.i = phi float [ %i.cch, %bb.oi ], [ 0.000000e+00, %bb.og ]
  %.sroa.13.0.i.i = phi float [ %i.cci, %bb.oi ], [ 0.000000e+00, %bb.og ]
  %i.ccm = getelementptr inbounds nuw i8, ptr %i.bim, i64 7816
  store float %.sroa.0124.0.i.i, ptr %i.ccm, align 8, !tbaa !9
  %.sroa.7125.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bim, i64 7820
  store float %.sroa.7125.0.i.i, ptr %.sroa.7125.0..sroa_idx.i.i, align 4, !tbaa !9
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bim, i64 7824
  store float %.sroa.0124.0.i.i, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !tbaa !9
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bim, i64 7828
  store float %.sroa.13.0.i.i, ptr %.sroa.13.0..sroa_idx.i.i, align 4, !tbaa !9
  %i.ccn = getelementptr inbounds nuw i8, ptr %i.bim, i64 7789
  %i.cco = load i8, ptr %i.ccn, align 1, !tbaa !214, !range !210, !noundef !211
  %i.ccp = trunc nuw i8 %i.cco to i1
  br i1 %i.ccp, label %_ZN5ImGuiL23NavUpdateAnyRequestFlagEv.exit.i, label %bb.oj

bb.oj:                                            ; preds = %_ZN5ImGuiL26NavUpdateCreateMoveRequestEv.exit.i
  %i.ccq = getelementptr inbounds nuw i8, ptr %i.bim, i64 7765
  %i.ccr = load i8, ptr %i.ccq, align 1, !tbaa !589, !range !210, !noundef !211
  br label %_ZN5ImGuiL23NavUpdateAnyRequestFlagEv.exit.i

_ZN5ImGuiL23NavUpdateAnyRequestFlagEv.exit.i:     ; preds = %bb.oj, %_ZN5ImGuiL26NavUpdateCreateMoveRequestEv.exit.i
  %i.ccs = phi i8 [ %i.ccr, %bb.oj ], [ 1, %_ZN5ImGuiL26NavUpdateCreateMoveRequestEv.exit.i ]
  %i.cct = getelementptr inbounds nuw i8, ptr %i.bim, i64 7764
  store i8 %i.ccs, ptr %i.cct, align 4, !tbaa !590
  %i.ccu = load ptr, ptr %i.acz, align 8, !tbaa !425 ; 23 uses
  %.not240.i = icmp eq ptr %i.ccu, null
  br i1 %.not240.i, label %bb.ox, label %bb.ok

bb.ok:                                            ; preds = %_ZN5ImGuiL23NavUpdateAnyRequestFlagEv.exit.i
  %i.ccv = getelementptr inbounds nuw i8, ptr %i.ccu, i64 12
  %i.ccw = load i32, ptr %i.ccv, align 4, !tbaa !428
  %i.ccx = and i32 %i.ccw, 262144
  %.not241.i = icmp eq i32 %i.ccx, 0
  br i1 %.not241.i, label %bb.ol, label %bb.ox

bb.ol:                                            ; preds = %bb.ok
  %i.ccy = getelementptr inbounds nuw i8, ptr %i.oj, i64 7984
  %i.ccz = load ptr, ptr %i.ccy, align 8, !tbaa !698
  %.not242.i = icmp eq ptr %i.ccz, null
  br i1 %.not242.i, label %bb.om, label %bb.ox

bb.om:                                            ; preds = %bb.ol
  %i.cda = getelementptr inbounds nuw i8, ptr %i.bim, i64 6532
  %i.cdb = load float, ptr %i.cda, align 4, !tbaa !615
  %i.cdc = getelementptr inbounds nuw i8, ptr %i.ccu, i64 608
  %i.cdd = load float, ptr %i.cdc, align 8, !tbaa !342
  %i.cde = fmul float %i.cdb, %i.cdd              ; 2 uses
  %i.cdf = getelementptr inbounds nuw i8, ptr %i.ccu, i64 824
  %i.cdg = load ptr, ptr %i.cdf, align 8, !tbaa !616 ; 2 uses
  %.not.i281.i = icmp eq ptr %i.cdg, null
  br i1 %.not.i281.i, label %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i, label %bb.on

bb.on:                                            ; preds = %bb.om
  %i.cdh = getelementptr inbounds nuw i8, ptr %i.cdg, i64 608
  %i.cdi = load float, ptr %i.cdh, align 8, !tbaa !342
  %i.cdj = fmul float %i.cde, %i.cdi
  br label %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i

_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i:         ; preds = %bb.on, %bb.om
  %.0.i282.i = phi float [ %i.cdj, %bb.on ], [ %i.cde, %bb.om ]
  %i.cdk = fmul float %.0.i282.i, 1.000000e+02
  %i.cdl = load float, ptr %i.ti, align 8, !tbaa !694
  %i.cdm = call float @llvm.fmuladd.f32(float %i.cdk, float %i.cdl, float 5.000000e-01)
  %i.cdn = fptosi float %i.cdm to i32
  %i.cdo = sitofp i32 %i.cdn to float             ; 4 uses
  %i.cdp = getelementptr inbounds nuw i8, ptr %i.oj, i64 7804
  %i.cdq = load i32, ptr %i.cdp, align 4, !tbaa !724 ; 5 uses
  %i.cdr = getelementptr inbounds nuw i8, ptr %i.ccu, i64 296
  %i.cds = load i16, ptr %i.cdr, align 8, !tbaa !714
  %i.cdt = icmp eq i16 %i.cds, 0
  br i1 %i.cdt, label %bb.oo, label %_ZN5ImGui19GetNavInputAmount2dEi18ImGuiInputReadModeff.exit.i

bb.oo:                                            ; preds = %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i
  %i.cdu = getelementptr inbounds nuw i8, ptr %i.ccu, i64 305
  %i.cdv = load i8, ptr %i.cdu, align 1, !tbaa !729, !range !210, !noundef !211
  %i.cdw = trunc nuw i8 %i.cdv to i1
  %i.cdx = icmp ne i32 %i.cdq, -1
  %or.cond14.i = select i1 %i.cdw, i1 %i.cdx, i1 false
  br i1 %or.cond14.i, label %bb.op, label %_ZN5ImGui19GetNavInputAmount2dEi18ImGuiInputReadModeff.exit.i

bb.op:                                            ; preds = %bb.oo
  %or.cond17.i = icmp ult i32 %i.cdq, 2
  br i1 %or.cond17.i, label %bb.oq, label %bb.or

bb.oq:                                            ; preds = %bb.op
  %i.cdy = icmp eq i32 %i.cdq, 0
  %i.cdz = getelementptr inbounds nuw i8, ptr %i.ccu, i64 92
  %i.cea = load float, ptr %i.cdz, align 4, !tbaa !448
  %i.ceb = select i1 %i.cdy, float -1.000000e+00, float 1.000000e+00
  %i.cec = call float @llvm.fmuladd.f32(float %i.ceb, float %i.cdo, float %i.cea)
  %i.ced = fptosi float %i.cec to i32
  %i.cee = sitofp i32 %i.ced to float
  %i.cef = getelementptr inbounds nuw i8, ptr %i.ccu, i64 108
  store float %i.cee, ptr %i.cef, align 4, !tbaa !738
  %i.ceg = getelementptr inbounds nuw i8, ptr %i.ccu, i64 116
  store float 0.000000e+00, ptr %i.ceg, align 4, !tbaa !739
  %i.ceh = getelementptr inbounds nuw i8, ptr %i.ccu, i64 124
  store float 0.000000e+00, ptr %i.ceh, align 4, !tbaa !740
  br label %bb.or

bb.or:                                            ; preds = %bb.oq, %bb.op
  %i.cei = and i32 %i.cdq, -2
  %or.cond20.i = icmp eq i32 %i.cei, 2
  br i1 %or.cond20.i, label %bb.os, label %_ZN5ImGui19GetNavInputAmount2dEi18ImGuiInputReadModeff.exit.i

bb.os:                                            ; preds = %bb.or
  %i.cej = icmp eq i32 %i.cdq, 2
  %i.cek = getelementptr inbounds nuw i8, ptr %i.ccu, i64 96
  %i.cel = load float, ptr %i.cek, align 8, !tbaa !730
  %i.cem = select i1 %i.cej, float -1.000000e+00, float 1.000000e+00
  %i.cen = call float @llvm.fmuladd.f32(float %i.cem, float %i.cdo, float %i.cel)
  %i.ceo = fptosi float %i.cen to i32
  %i.cep = sitofp i32 %i.ceo to float
  %i.ceq = getelementptr inbounds nuw i8, ptr %i.ccu, i64 112
  store float %i.cep, ptr %i.ceq, align 8, !tbaa !731
  %i.cer = getelementptr inbounds nuw i8, ptr %i.ccu, i64 120
  store float 0.000000e+00, ptr %i.cer, align 8, !tbaa !732
  %i.ces = getelementptr inbounds nuw i8, ptr %i.ccu, i64 128
  store float 0.000000e+00, ptr %i.ces, align 8, !tbaa !733
  br label %_ZN5ImGui19GetNavInputAmount2dEi18ImGuiInputReadModeff.exit.i

_ZN5ImGui19GetNavInputAmount2dEi18ImGuiInputReadModeff.exit.i: ; preds = %bb.os, %bb.or, %bb.oo, %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i
  %i.cet = getelementptr inbounds nuw i8, ptr %i.bim, i64 868
  %i.ceu = getelementptr inbounds nuw i8, ptr %i.bim, i64 892
  %i.cev = load float, ptr %i.ceu, align 4, !tbaa !9
  %i.cew = fcmp ogt float %i.cev, 0.000000e+00
  %i.cex = load <4 x float>, ptr %i.cet, align 4, !tbaa !9 ; 2 uses
  %i.cey = shufflevector <4 x float> %i.cex, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.cez = shufflevector <4 x float> %i.cex, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.cfa = fsub <2 x float> %i.cey, %i.cez
  %i.cfb = fadd <2 x float> %i.cfa, zeroinitializer ; 2 uses
  %i.cfc = fmul <2 x float> %i.cfb, splat (float 1.000000e-01)
  %.sroa.030.3.i.i = select i1 %i.cew, <2 x float> %i.cfc, <2 x float> %i.cfb ; 2 uses
  %i.cfd = getelementptr inbounds nuw i8, ptr %i.bim, i64 896
  %i.cfe = load float, ptr %i.cfd, align 8, !tbaa !9
  %i.cff = fcmp ogt float %i.cfe, 0.000000e+00
  %i.cfg = fmul <2 x float> %.sroa.030.3.i.i, splat (float 1.000000e+01)
  %.sroa.030.4.i.i = select i1 %i.cff, <2 x float> %i.cfg, <2 x float> %.sroa.030.3.i.i ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.030.4.i.i, i64 0 ; 2 uses
  %i.cfh = fcmp une float %.sroa.0.0.vec.extract.i, 0.000000e+00
  br i1 %i.cfh, label %bb.ot, label %bb.ov

bb.ot:                                            ; preds = %_ZN5ImGui19GetNavInputAmount2dEi18ImGuiInputReadModeff.exit.i
  %i.cfi = getelementptr inbounds nuw i8, ptr %i.ccu, i64 140
  %i.cfj = load i8, ptr %i.cfi, align 4, !tbaa !741, !range !210, !noundef !211
  %i.cfk = trunc nuw i8 %i.cfj to i1
  br i1 %i.cfk, label %bb.ou, label %bb.ov

bb.ou:                                            ; preds = %bb.ot
  %i.cfl = getelementptr inbounds nuw i8, ptr %i.ccu, i64 92
  %i.cfm = load float, ptr %i.cfl, align 4, !tbaa !448
  %i.cfn = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i, float %i.cdo, float %i.cfm)
  %i.cfo = fptosi float %i.cfn to i32
  %i.cfp = sitofp i32 %i.cfo to float
  %i.cfq = getelementptr inbounds nuw i8, ptr %i.ccu, i64 108
  store float %i.cfp, ptr %i.cfq, align 4, !tbaa !738
  %i.cfr = getelementptr inbounds nuw i8, ptr %i.ccu, i64 116
  store float 0.000000e+00, ptr %i.cfr, align 4, !tbaa !739
  %i.cfs = getelementptr inbounds nuw i8, ptr %i.ccu, i64 124
  store float 0.000000e+00, ptr %i.cfs, align 4, !tbaa !740
  br label %bb.ov

bb.ov:                                            ; preds = %bb.ou, %bb.ot, %_ZN5ImGui19GetNavInputAmount2dEi18ImGuiInputReadModeff.exit.i
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %.sroa.030.4.i.i, i64 1 ; 2 uses
  %i.cft = fcmp une float %.sroa.0.4.vec.extract.i, 0.000000e+00
  br i1 %i.cft, label %bb.ow, label %bb.ox

bb.ow:                                            ; preds = %bb.ov
  %i.cfu = getelementptr inbounds nuw i8, ptr %i.ccu, i64 96
  %i.cfv = load float, ptr %i.cfu, align 8, !tbaa !730
  %i.cfw = call float @llvm.fmuladd.f32(float %.sroa.0.4.vec.extract.i, float %i.cdo, float %i.cfv)
  %i.cfx = fptosi float %i.cfw to i32
  %i.cfy = sitofp i32 %i.cfx to float
  %i.cfz = getelementptr inbounds nuw i8, ptr %i.ccu, i64 112
  store float %i.cfy, ptr %i.cfz, align 8, !tbaa !731
  %i.cga = getelementptr inbounds nuw i8, ptr %i.ccu, i64 120
  store float 0.000000e+00, ptr %i.cga, align 8, !tbaa !732
  %i.cgb = getelementptr inbounds nuw i8, ptr %i.ccu, i64 128
  store float 0.000000e+00, ptr %i.cgb, align 8, !tbaa !733
  br label %bb.ox

bb.ox:                                            ; preds = %bb.ow, %bb.ov, %bb.ol, %bb.ok, %_ZN5ImGuiL23NavUpdateAnyRequestFlagEv.exit.i
  br i1 %or.cond.i, label %_ZN5ImGuiL9NavUpdateEv.exit, label %bb.oy

bb.oy:                                            ; preds = %bb.ox
  %i.cgc = getelementptr inbounds nuw i8, ptr %i.oj, i64 7762
  store i8 1, ptr %i.cgc, align 2, !tbaa !320
  store i8 0, ptr %i.acb, align 1, !tbaa !471
  %i.cgd = getelementptr inbounds nuw i8, ptr %i.oj, i64 7763
  store i8 0, ptr %i.cgd, align 1, !tbaa !421
  br label %_ZN5ImGuiL9NavUpdateEv.exit

_ZN5ImGuiL9NavUpdateEv.exit:                      ; preds = %bb.ox, %bb.oy
  %i.cge = getelementptr inbounds nuw i8, ptr %i.oj, i64 7832
  store i32 0, ptr %i.cge, align 8, !tbaa !476
  %i.cgf = getelementptr inbounds nuw i8, ptr %i.bim, i64 296 ; 3 uses
  %i.cgg = load <2 x float>, ptr %i.cgf, align 8, !tbaa !9 ; 4 uses
  %i.cgh = extractelement <2 x float> %i.cgg, i64 0
  %16 = fcmp oge float %i.cgh, -2.560000e+05
  %17 = extractelement <2 x float> %i.cgg, i64 1
  %i.cgi = fcmp oge float %17, -2.560000e+05
  %i.cgj = select i1 %16, i1 %i.cgi, i1 false
  br i1 %i.cgj, label %bb.oz, label %bb.pa

bb.oz:                                            ; preds = %_ZN5ImGuiL9NavUpdateEv.exit
  %i.cgk = fptosi <2 x float> %i.cgg to <2 x i32>
  %i.cgl = sitofp <2 x i32> %i.cgk to <2 x float> ; 3 uses
  %i.cgm = getelementptr inbounds nuw i8, ptr %i.bim, i64 8408
  store <2 x float> %i.cgl, ptr %i.cgm, align 8
  store <2 x float> %i.cgl, ptr %i.cgf, align 8
  br label %bb.pa

bb.pa:                                            ; preds = %bb.oz, %_ZN5ImGuiL9NavUpdateEv.exit
  %i.cgn = phi <2 x float> [ %i.cgl, %bb.oz ], [ %i.cgg, %_ZN5ImGuiL9NavUpdateEv.exit ] ; 3 uses
  %i.cgo = extractelement <2 x float> %i.cgn, i64 0 ; 2 uses
  %i.cgp = fcmp oge float %i.cgo, -2.560000e+05
  %i.cgq = extractelement <2 x float> %i.cgn, i64 1 ; 2 uses
  %i.cgr = fcmp oge float %i.cgq, -2.560000e+05   ; 2 uses
  %i.cgs = select i1 %i.cgp, i1 %i.cgr, i1 false
  br i1 %i.cgs, label %bb.pb, label %.thread166.i

bb.pb:                                            ; preds = %bb.pa
  %i.cgt = getelementptr inbounds nuw i8, ptr %i.bim, i64 968
  %.sroa.0.0.copyload.i123.i = load float, ptr %i.cgt, align 8, !tbaa !9 ; 2 uses
  %.sroa.4.0..sroa_idx.i124.i = getelementptr inbounds nuw i8, ptr %i.bim, i64 972
  %.sroa.4.0.copyload.i125.i = load float, ptr %.sroa.4.0..sroa_idx.i124.i, align 4, !tbaa !9 ; 2 uses
  %18 = fcmp oge float %.sroa.0.0.copyload.i123.i, -2.560000e+05
  %i.cgu = fcmp oge float %.sroa.4.0.copyload.i125.i, -2.560000e+05
  %i.cgv = select i1 %18, i1 %i.cgu, i1 false
  br i1 %i.cgv, label %bb.pc, label %.thread166.i

.thread166.i:                                     ; preds = %bb.pb, %bb.pa
  %i.cgw = getelementptr inbounds nuw i8, ptr %i.bim, i64 948
  store i32 0, ptr %i.cgw, align 4
  %.sroa_idx149.i = getelementptr inbounds nuw i8, ptr %i.bim, i64 952
  store i32 0, ptr %.sroa_idx149.i, align 8
  br label %bb.pe

bb.pc:                                            ; preds = %bb.pb
  %19 = fsub float %i.cgo, %.sroa.0.0.copyload.i123.i ; 2 uses
  %20 = fsub float %i.cgq, %.sroa.4.0.copyload.i125.i ; 2 uses
  %.sroa.0.0.vec.insert.i126.i = insertelement <2 x float> poison, float %19, i64 0
  %.sroa.0.4.vec.insert.i127.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i126.i, float %20, i64 1
  %21 = getelementptr inbounds nuw i8, ptr %i.bim, i64 948
  store <2 x float> %.sroa.0.4.vec.insert.i127.i, ptr %21, align 4
  %22 = fcmp une float %19, 0.000000e+00
  %i.cgx = fcmp une float %20, 0.000000e+00
  %brmerge.i = select i1 %22, i1 true, i1 %i.cgx
  br i1 %brmerge.i, label %bb.pd, label %bb.pe

bb.pd:                                            ; preds = %bb.pc
  %i.cgy = getelementptr inbounds nuw i8, ptr %i.bim, i64 7763
  store i8 0, ptr %i.cgy, align 1, !tbaa !421
  br label %bb.pe

bb.pe:                                            ; preds = %bb.pd, %bb.pc, %.thread166.i
  %i.cgz = getelementptr inbounds nuw i8, ptr %i.bim, i64 968
  %i.cha = load i64, ptr %i.cgf, align 8          ; 3 uses
  store i64 %i.cha, ptr %i.cgz, align 8
  %i.chb = getelementptr inbounds nuw i8, ptr %i.bim, i64 304
  %i.chc = getelementptr inbounds nuw i8, ptr %i.bim, i64 1056 ; 2 uses
  %i.chd = getelementptr inbounds nuw i8, ptr %i.bim, i64 1088 ; 2 uses
  %i.che = getelementptr inbounds nuw i8, ptr %i.bim, i64 1066
  %i.chf = getelementptr inbounds nuw i8, ptr %i.bim, i64 1108
  %i.chg = getelementptr inbounds nuw i8, ptr %i.bim, i64 1061 ; 3 uses
  %i.chh = getelementptr inbounds nuw i8, ptr %i.bim, i64 24
  %i.chi = getelementptr inbounds nuw i8, ptr %i.bim, i64 976 ; 3 uses
  %i.chj = getelementptr inbounds nuw i8, ptr %i.bim, i64 1168 ; 2 uses
  %i.chk = getelementptr inbounds nuw i8, ptr %i.bim, i64 1128 ; 2 uses
  %i.chl = getelementptr inbounds nuw i8, ptr %i.bim, i64 7048
  %i.chm = getelementptr inbounds nuw i8, ptr %i.bim, i64 1016
  %i.chn = getelementptr inbounds nuw i8, ptr %i.bim, i64 48
  %i.cho = getelementptr inbounds nuw i8, ptr %i.bim, i64 52
  %i.chp = getelementptr inbounds nuw i8, ptr %i.bim, i64 1081 ; 2 uses
  %i.chq = getelementptr inbounds nuw i8, ptr %i.bim, i64 7763
  %i.chr = trunc i64 %i.cha to i32
  %i.chs = bitcast i32 %i.chr to float            ; 2 uses
  %i.cht = fcmp oge float %i.chs, -2.560000e+05
  %i.chu = select i1 %i.cht, i1 %i.cgr, i1 false  ; 2 uses
  %i.chv = insertelement <2 x float> %i.cgn, float %i.chs, i64 0 ; 2 uses
  br label %bb.pf

bb.pf:                                            ; preds = %.thread168.i.thread, %bb.pe
  %indvars.iv.i252 = phi i64 [ 0, %bb.pe ], [ %indvars.iv.next.i253, %.thread168.i.thread ] ; 21 uses
  %i.chw = getelementptr inbounds nuw i8, ptr %i.chb, i64 %indvars.iv.i252
  %i.chx = load i8, ptr %i.chw, align 1, !tbaa !213, !range !210, !noundef !211
  %i.chy = trunc nuw i8 %i.chx to i1
  %i.chz = getelementptr inbounds nuw i8, ptr %i.che, i64 %indvars.iv.i252 ; 2 uses
  %i.cia = getelementptr inbounds nuw [4 x i8], ptr %i.chf, i64 %indvars.iv.i252 ; 2 uses
  br i1 %i.chy, label %bb.pg, label %bb.pq

bb.pg:                                            ; preds = %bb.pf
  %i.cib = getelementptr inbounds nuw [4 x i8], ptr %i.chd, i64 %indvars.iv.i252 ; 3 uses
  %i.cic = load float, ptr %i.cib, align 4, !tbaa !9 ; 3 uses
  %i.cid = fcmp olt float %i.cic, 0.000000e+00    ; 2 uses
  %i.cie = zext i1 %i.cid to i8
  %i.cif = getelementptr inbounds nuw i8, ptr %i.chc, i64 %indvars.iv.i252 ; 2 uses
  store i8 %i.cie, ptr %i.cif, align 1, !tbaa !213
  store i8 0, ptr %i.chz, align 1, !tbaa !213
  store float %i.cic, ptr %i.cia, align 4, !tbaa !9
  br i1 %i.cid, label %bb.ph, label %bb.pn

bb.ph:                                            ; preds = %bb.pg
  store float 0.000000e+00, ptr %i.cib, align 4, !tbaa !9
  %i.cig = getelementptr inbounds nuw i8, ptr %i.chg, i64 %indvars.iv.i252 ; 3 uses
  store i8 0, ptr %i.cig, align 1, !tbaa !213
  %i.cih = load double, ptr %i.chl, align 8, !tbaa !463 ; 2 uses
  %i.cii = getelementptr inbounds nuw [8 x i8], ptr %i.chm, i64 %indvars.iv.i252 ; 2 uses
  %i.cij = load double, ptr %i.cii, align 8, !tbaa !629
  %i.cik = fsub double %i.cih, %i.cij
  %i.cil = fptrunc double %i.cik to float
  %i.cim = load float, ptr %i.chn, align 8, !tbaa !742 ; 2 uses
  %i.cin = fcmp ogt float %i.cim, %i.cil
  br i1 %i.cin, label %bb.pi, label %.thread168.i

bb.pi:                                            ; preds = %bb.ph
  br i1 %i.chu, label %bb.pj, label %bb.pk

bb.pj:                                            ; preds = %bb.pi
  %i.cio = getelementptr inbounds nuw [8 x i8], ptr %i.chi, i64 %indvars.iv.i252
  %i.cip = load <2 x float>, ptr %i.cio, align 4, !tbaa !9
  %i.ciq = fsub <2 x float> %i.chv, %i.cip
  br label %bb.pk

bb.pk:                                            ; preds = %bb.pj, %bb.pi
  %.sroa.0146.1.i = phi <2 x float> [ %i.ciq, %bb.pj ], [ zeroinitializer, %bb.pi ] ; 3 uses
  %.sroa.0146.0.vec.extract.i = extractelement <2 x float> %.sroa.0146.1.i, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.0146.1.i, %.sroa.0146.1.i
  %i.cir = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.cis = call noundef float @llvm.fmuladd.f32(float %.sroa.0146.0.vec.extract.i, float %.sroa.0146.0.vec.extract.i, float %i.cir)
  %i.cit = load float, ptr %i.cho, align 4, !tbaa !743 ; 2 uses
  %i.ciu = fmul float %i.cit, %i.cit
  %i.civ = fcmp olt float %i.cis, %i.ciu
  br i1 %i.civ, label %bb.pl, label %bb.pm

bb.pl:                                            ; preds = %bb.pk
  store i8 1, ptr %i.cig, align 1, !tbaa !213
  br label %bb.pm

bb.pm:                                            ; preds = %bb.pl, %bb.pk
  %i.ciw = fmul float %i.cim, -2.000000e+00
  %i.cix = fpext float %i.ciw to double
  br label %.thread168.i

bb.pn:                                            ; preds = %bb.pg
  %i.ciy = load float, ptr %i.chh, align 8, !tbaa !641
  %i.ciz = fadd float %i.cic, %i.ciy
  store float %i.ciz, ptr %i.cib, align 4, !tbaa !9
  %i.cja = getelementptr inbounds nuw i8, ptr %i.chg, i64 %indvars.iv.i252
  store i8 0, ptr %i.cja, align 1, !tbaa !213
  br i1 %i.chu, label %bb.po, label %bb.pp

bb.po:                                            ; preds = %bb.pn
  %i.cjb = getelementptr inbounds nuw [8 x i8], ptr %i.chi, i64 %indvars.iv.i252
  %i.cjc = load <2 x float>, ptr %i.cjb, align 4, !tbaa !9
  %i.cjd = fsub <2 x float> %i.chv, %i.cjc
  br label %bb.pp

bb.pp:                                            ; preds = %bb.po, %bb.pn
  %.sroa.0.1.i = phi <2 x float> [ %i.cjd, %bb.po ], [ zeroinitializer, %bb.pn ] ; 6 uses
  %i.cje = getelementptr inbounds nuw [4 x i8], ptr %i.chj, i64 %indvars.iv.i252 ; 2 uses
  %i.cjf = load float, ptr %i.cje, align 4, !tbaa !9 ; 2 uses
  %.sroa.0.0.vec.extract139.i = extractelement <2 x float> %.sroa.0.1.i, i64 0 ; 2 uses
  %foldExtExtBinop682 = fmul <2 x float> %.sroa.0.1.i, %.sroa.0.1.i
  %i.cjg = extractelement <2 x float> %foldExtExtBinop682, i64 1
  %i.cjh = call noundef float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract139.i, float %.sroa.0.0.vec.extract139.i, float %i.cjg) ; 2 uses
  %i.cji = fcmp oge float %i.cjf, %i.cjh
  %i.cjj = select i1 %i.cji, float %i.cjf, float %i.cjh
  store float %i.cjj, ptr %i.cje, align 4, !tbaa !9
  %i.cjk = getelementptr inbounds nuw [8 x i8], ptr %i.chk, i64 %indvars.iv.i252 ; 2 uses
  %i.cjl = load <2 x float>, ptr %i.cjk, align 8, !tbaa !9 ; 2 uses
  %i.cjm = fcmp olt <2 x float> %.sroa.0.1.i, zeroinitializer
  %i.cjn = fneg <2 x float> %.sroa.0.1.i
  %i.cjo = select <2 x i1> %i.cjm, <2 x float> %i.cjn, <2 x float> %.sroa.0.1.i ; 2 uses
  %i.cjp = fcmp oge <2 x float> %i.cjl, %i.cjo
  %i.cjq = select <2 x i1> %i.cjp, <2 x float> %i.cjl, <2 x float> %i.cjo
  store <2 x float> %i.cjq, ptr %i.cjk, align 8, !tbaa !9
  br label %.thread168.i.thread

bb.pq:                                            ; preds = %bb.pf
  %i.cjr = getelementptr inbounds nuw i8, ptr %i.chc, i64 %indvars.iv.i252
  store i8 0, ptr %i.cjr, align 1, !tbaa !213
  %i.cjs = getelementptr inbounds nuw [4 x i8], ptr %i.chd, i64 %indvars.iv.i252 ; 2 uses
  %i.cjt = load float, ptr %i.cjs, align 4, !tbaa !9 ; 2 uses
  %i.cju = fcmp oge float %i.cjt, 0.000000e+00    ; 2 uses
  %i.cjv = zext i1 %i.cju to i8
  store i8 %i.cjv, ptr %i.chz, align 1, !tbaa !213
  store float %i.cjt, ptr %i.cia, align 4, !tbaa !9
  store float -1.000000e+00, ptr %i.cjs, align 4, !tbaa !9
  %i.cjw = getelementptr inbounds nuw i8, ptr %i.chg, i64 %indvars.iv.i252
  store i8 0, ptr %i.cjw, align 1, !tbaa !213
  br i1 %i.cju, label %.thread168.i.thread, label %bb.pr

bb.pr:                                            ; preds = %bb.pq
  %i.cjx = getelementptr inbounds nuw i8, ptr %i.chp, i64 %indvars.iv.i252
  store i8 0, ptr %i.cjx, align 1, !tbaa !213
  br label %.thread168.i.thread

.thread168.i:                                     ; preds = %bb.ph, %bb.pm
  %storemerge.i = phi double [ %i.cix, %bb.pm ], [ %i.cih, %bb.ph ]
  store double %storemerge.i, ptr %i.cii, align 8, !tbaa !629
  %i.cjy = getelementptr inbounds nuw [8 x i8], ptr %i.chi, i64 %indvars.iv.i252
  store i64 %i.cha, ptr %i.cjy, align 8
  %i.cjz = load i8, ptr %i.cig, align 1, !tbaa !213, !range !210, !noundef !211
  %i.cka = getelementptr inbounds nuw i8, ptr %i.chp, i64 %indvars.iv.i252
  store i8 %i.cjz, ptr %i.cka, align 1, !tbaa !213
  %i.ckb = getelementptr inbounds nuw [8 x i8], ptr %i.chk, i64 %indvars.iv.i252 ; 2 uses
  store i32 0, ptr %i.ckb, align 8
  %.sroa_idx144.i = getelementptr inbounds nuw i8, ptr %i.ckb, i64 4
  store i32 0, ptr %.sroa_idx144.i, align 4
  %i.ckc = getelementptr inbounds nuw [4 x i8], ptr %i.chj, i64 %indvars.iv.i252
  store float 0.000000e+00, ptr %i.ckc, align 4, !tbaa !9
  %.pre422 = load i8, ptr %i.cif, align 1, !tbaa !213, !range !210
  %i.ckd = trunc nuw i8 %.pre422 to i1
  br i1 %i.ckd, label %bb.ps, label %.thread168.i.thread

bb.ps:                                            ; preds = %.thread168.i
  store i8 0, ptr %i.chq, align 1, !tbaa !421
  br label %.thread168.i.thread

.thread168.i.thread:                              ; preds = %bb.pp, %bb.pr, %bb.pq, %bb.ps, %.thread168.i
  %indvars.iv.next.i253 = add nuw nsw i64 %indvars.iv.i252, 1 ; 2 uses
  %exitcond.not.i254 = icmp eq i64 %indvars.iv.next.i253, 5
  br i1 %exitcond.not.i254, label %_ZN5ImGuiL17UpdateMouseInputsEv.exit, label %bb.pf, !llvm.loop !744

_ZN5ImGuiL17UpdateMouseInputsEv.exit:             ; preds = %.thread168.i.thread
  call void @_ZN5ImGui34UpdateHoveredWindowAndCaptureFlagsEv()
  call void @_ZN5ImGui31UpdateMouseMovingWindowNewFrameEv()
  %i.cke = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 45 uses
  %i.ckf = getelementptr inbounds nuw i8, ptr %i.cke, i64 7640
  %i.ckg = load i32, ptr %i.ckf, align 8, !tbaa !602 ; 2 uses
  %i.ckh = icmp slt i32 %i.ckg, 1
  br i1 %i.ckh, label %.loopexit, label %.lr.ph.i255

.lr.ph.i255:                                      ; preds = %_ZN5ImGuiL17UpdateMouseInputsEv.exit
  %i.cki = getelementptr inbounds nuw i8, ptr %i.cke, i64 7648
  %i.ckj = load ptr, ptr %i.cki, align 8, !tbaa !607
  %i.ckk = zext nneg i32 %i.ckg to i64
  br label %bb.pt

bb.pt:                                            ; preds = %bb.pv, %.lr.ph.i255
  %indvars.iv.i256 = phi i64 [ %i.ckk, %.lr.ph.i255 ], [ %indvars.iv.next.i257, %bb.pv ] ; 2 uses
  %indvars.iv.next.i257 = add nsw i64 %indvars.iv.i256, -1 ; 2 uses
  %i.ckl = getelementptr inbounds nuw [48 x i8], ptr %i.ckj, i64 %indvars.iv.next.i257
  %i.ckm = getelementptr inbounds nuw i8, ptr %i.ckl, i64 8
  %i.ckn = load ptr, ptr %i.ckm, align 8, !tbaa !608 ; 2 uses
  %.not.i258 = icmp eq ptr %i.ckn, null
end_hunk_3
begin_hunk_4_@_ZN5ImGui5BeginEPKcPbi:bb.a
bb.iv:                                            ; preds = %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i, %bb.is, %bb.it, %bb.iu
  %i.bbe = load i64, ptr %i.adq, align 8
  store i64 %i.bbe, ptr %i.aet, align 8
  %.pre1134.pre = load i8, ptr %i.ads, align 1, !tbaa !752, !range !210
  %i.bbf = trunc nuw i8 %.pre1134.pre to i1
  %spec.select398 = or i1 %.1313, %.180.i
  %spec.select399 = or i1 %.2, %.180.i
  %i.bbg = getelementptr inbounds nuw i8, ptr %.01057, i64 152 ; 3 uses
  store i8 %.31062, ptr %i.bbg, align 8, !tbaa !862
  br i1 %i.bbf, label %bb.jm, label %bb.iw

bb.iw:                                            ; preds = %.thread1301, %bb.iv
  %i.bbh = phi ptr [ %i.bbd, %.thread1301 ], [ %i.bbg, %bb.iv ]
  %spec.select3991308 = phi i1 [ %.2, %.thread1301 ], [ %spec.select399, %bb.iv ]
  %spec.select3981307 = phi i1 [ %.1313, %.thread1301 ], [ %spec.select398, %bb.iv ]
  %i.bbi = load float, ptr %i.adq, align 8, !tbaa !835
  %i.bbj = getelementptr inbounds nuw i8, ptr %.01057, i64 36
  %i.bbk = load float, ptr %i.bbj, align 4, !tbaa !735
  %i.bbl = fsub float %i.bbk, %i.afz
  %i.bbm = getelementptr inbounds nuw i8, ptr %.01057, i64 456
  %i.bbn = getelementptr inbounds nuw i8, ptr %.01057, i64 464
  %i.bbo = load <2 x float>, ptr %i.bbn, align 8, !tbaa !9
  %i.bbp = load <2 x float>, ptr %i.bbm, align 8, !tbaa !9
  %i.bbq = fsub <2 x float> %i.bbo, %i.bbp
  %i.bbr = getelementptr inbounds nuw i8, ptr %.01057, i64 132 ; 2 uses
  %i.bbs = getelementptr i8, ptr %.01057, i64 136
  %i.bbt = load <2 x float>, ptr %i.bbr, align 4, !tbaa !9
  %i.bbu = fadd <2 x float> %i.bbq, %i.bbt        ; 2 uses
  br i1 %i.gu, label %bb.iy, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %.val = load float, ptr %i.zh, align 4, !tbaa !151
  %i.bbv = getelementptr i8, ptr %.01057, i64 68
  %.val411 = load float, ptr %i.bbv, align 4, !tbaa !152
  %i.bbw = insertelement <2 x float> poison, float %.val, i64 0
  %i.bbx = insertelement <2 x float> %i.bbw, float %.val411, i64 1
  %i.bby = fmul <2 x float> %i.bbx, splat (float 2.000000e+00)
  %i.bbz = load <2 x float>, ptr %i.ww, align 8, !tbaa !9
  %i.bca = fadd <2 x float> %i.bby, %i.bbz
  br label %bb.iy

bb.iy:                                            ; preds = %bb.iw, %bb.ix
  %.sroa.0804.0 = phi <2 x float> [ %i.bca, %bb.ix ], [ zeroinitializer, %bb.iw ] ; 3 uses
  %i.bcb = extractelement <2 x float> %i.bbu, i64 0
  %i.bcc = select i1 %spec.select3991308, float %i.bbi, float %i.bcb
  %i.bcd = extractelement <2 x float> %i.bbu, i64 1
  %i.bce = select i1 %spec.select3981307, float %i.bbl, float %i.bcd ; 2 uses
  %i.bcf = and i32 %.1, 16384
  %.not364 = icmp eq i32 %i.bcf, 0
  br i1 %.not364, label %bb.iz, label %bb.jb

bb.iz:                                            ; preds = %bb.iy
  %.sroa.0804.4.vec.extract = extractelement <2 x float> %.sroa.0804.0, i64 1
  %i.bcg = fcmp ogt float %.sroa.0804.4.vec.extract, %i.bce
  br i1 %i.bcg, label %bb.ja, label %bb.jb

bb.ja:                                            ; preds = %bb.iz
  %i.bch = and i32 %.1, 8
  %.not365 = icmp eq i32 %i.bch, 0
  %i.bci = zext i1 %.not365 to i8
  br label %bb.jb

bb.jb:                                            ; preds = %bb.iz, %bb.ja, %bb.iy
  %i.bcj = phi i8 [ 1, %bb.iy ], [ 0, %bb.iz ], [ %i.bci, %bb.ja ] ; 5 uses
  %i.bck = getelementptr inbounds nuw i8, ptr %.01057, i64 141 ; 2 uses
  store i8 %i.bcj, ptr %i.bck, align 1, !tbaa !868
  %i.bcl = and i32 %.1, 32768
  %.not366 = icmp eq i32 %i.bcl, 0
  br i1 %.not366, label %bb.jc, label %.thread1079

.thread1079:                                      ; preds = %bb.jb
  %i.bcm = getelementptr inbounds nuw i8, ptr %.01057, i64 140
  store i8 1, ptr %i.bcm, align 4, !tbaa !741
  %.pre1148 = trunc nuw i8 %i.bcj to i1
  br i1 %.pre1148, label %.split1311.thread, label %bb.jh

bb.jc:                                            ; preds = %bb.jb
  %.sroa.0804.0.vec.extract = extractelement <2 x float> %.sroa.0804.0, i64 0
  %i.bcn = trunc nuw i8 %i.bcj to i1              ; 2 uses
  br i1 %i.bcn, label %bb.jd, label %bb.je

bb.jd:                                            ; preds = %bb.jc
  %i.bco = getelementptr inbounds nuw i8, ptr %i.g, i64 5588
  %i.bcp = load float, ptr %i.bco, align 4, !tbaa !869
  br label %bb.je

bb.je:                                            ; preds = %bb.jc, %bb.jd
  %i.bcq = phi float [ %i.bcp, %bb.jd ], [ 0.000000e+00, %bb.jc ]
  %i.bcr = fsub float %i.bcc, %i.bcq
  %i.bcs = fcmp ogt float %.sroa.0804.0.vec.extract, %i.bcr
  %i.bct = and i32 %.1, 8
  %.not367 = icmp eq i32 %i.bct, 0
  %or.cond400 = select i1 %i.bcs, i1 %.not367, i1 false
  br i1 %or.cond400, label %bb.jf, label %.thread1080

.thread1080:                                      ; preds = %bb.je
  %i.bcu = getelementptr inbounds nuw i8, ptr %.01057, i64 140
  store i8 0, ptr %i.bcu, align 4, !tbaa !741
  br label %bb.ji

bb.jf:                                            ; preds = %bb.je
  %i.bcv = lshr i32 %.1, 11                       ; 2 uses
  %i.bcw = trunc i32 %i.bcv to i8
  %i.bcx = and i8 %i.bcw, 1
  %i.bcy = getelementptr inbounds nuw i8, ptr %.01057, i64 140
  store i8 %i.bcx, ptr %i.bcy, align 4, !tbaa !741
  %i.bcz = trunc i32 %i.bcv to i1
  br i1 %i.bcz, label %bb.jg, label %bb.ji

bb.jg:                                            ; preds = %bb.jf
  br i1 %i.bcn, label %.split1311.thread, label %bb.jh

bb.jh:                                            ; preds = %.thread1079, %bb.jg
  %.sroa.0804.4.vec.extract807 = extractelement <2 x float> %.sroa.0804.0, i64 1
  %i.bda = fcmp ogt float %.sroa.0804.4.vec.extract807, %i.bce
  %i.bdb = and i32 %.1, 8
  %.not368 = icmp eq i32 %i.bdb, 0
  %narrow = select i1 %i.bda, i1 %.not368, i1 false
  %i.bdc = zext i1 %narrow to i8                  ; 2 uses
  store i8 %i.bdc, ptr %i.bck, align 1, !tbaa !868
  br label %bb.ji

bb.ji:                                            ; preds = %.thread1080, %bb.jh, %bb.jf
  %i.bdd = phi i8 [ %i.bdc, %bb.jh ], [ %i.bcj, %.thread1080 ], [ %i.bcj, %bb.jf ]
  %i.bde = phi i1 [ true, %bb.jh ], [ false, %.thread1080 ], [ false, %bb.jf ] ; 2 uses
  %i.bdf = trunc nuw i8 %i.bdd to i1
  br i1 %i.bdf, label %.split1311, label %bb.jj

.split1311.thread:                                ; preds = %bb.jg, %.thread1079
  %i.bdg = getelementptr inbounds nuw i8, ptr %i.g, i64 5588
  %i.bdh = load i32, ptr %i.bdg, align 4, !tbaa !869
  br label %bb.jk

.split1311:                                       ; preds = %bb.ji
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.g, i64 5588
  %i.bdj = load i32, ptr %i.bdi, align 4, !tbaa !869 ; 2 uses
  br i1 %i.bde, label %bb.jk, label %bb.jl

bb.jj:                                            ; preds = %bb.ji
  br i1 %i.bde, label %bb.jk, label %bb.jl

bb.jk:                                            ; preds = %.split1311.thread, %.split1311, %bb.jj
  %i.bdk = phi i32 [ %i.bdj, %.split1311 ], [ 0, %bb.jj ], [ %i.bdh, %.split1311.thread ]
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.g, i64 5588
  %i.bdm = load i32, ptr %i.bdl, align 4, !tbaa !869
  br label %bb.jl

bb.jl:                                            ; preds = %.split1311, %bb.jj, %bb.jk
  %i.bdn = phi i32 [ %i.bdk, %bb.jk ], [ 0, %bb.jj ], [ %i.bdj, %.split1311 ]
  %i.bdo = phi i32 [ %i.bdm, %bb.jk ], [ 0, %bb.jj ], [ 0, %.split1311 ]
  store i32 %i.bdn, ptr %i.bbr, align 4
  store i32 %i.bdo, ptr %i.bbs, align 8
  br label %bb.jm

bb.jm:                                            ; preds = %.thread1297, %bb.jl, %bb.iv
  %i.bdp = phi ptr [ %i.alv, %.thread1297 ], [ %i.bbh, %bb.jl ], [ %i.bbg, %bb.iv ]
  %or.cond19 = or i1 %i.ng, %i.ug
  %or.cond401 = select i1 %.not346, i1 true, i1 %or.cond19 ; 3 uses
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.jj, i64 520
  %i.bdr = select i1 %or.cond401, ptr %23, ptr %i.bdq
  %.sroa.0786.0.copyload = load <2 x float>, ptr %i.bdr, align 4 ; 7 uses
  %.sroa.gep821 = getelementptr inbounds nuw i8, ptr %i.jj, i64 528
  %.sroa.sel = select i1 %or.cond401, ptr %i.ajx, ptr %.sroa.gep821
  %.sroa.10796.0.copyload = load <2 x float>, ptr %.sroa.sel, align 4 ; 7 uses
  %i.bds = load <2 x float>, ptr %i.akv, align 8, !tbaa !9 ; 5 uses
  %i.bdt = getelementptr inbounds nuw i8, ptr %.01057, i64 28 ; 6 uses
  %i.bdu = load <2 x float>, ptr %i.aet, align 8, !tbaa !9 ; 3 uses
  %i.bdv = fadd <2 x float> %i.bds, %i.bdu        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #39
  %i.bdw = load float, ptr %i.adq, align 8, !tbaa !835
  %i.bdx = load i32, ptr %i.aeu, align 4, !tbaa !428
  %i.bdy = and i32 %i.bdx, 1
  %.not.i.i594 = icmp eq i32 %i.bdy, 0
  br i1 %.not.i.i594, label %bb.jn, label %_ZNK11ImGuiWindow12TitleBarRectEv.exit602

bb.jn:                                            ; preds = %bb.jm
  %i.bdz = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 2 uses
  %i.bea = getelementptr inbounds nuw i8, ptr %i.bdz, i64 6532
  %i.beb = load float, ptr %i.bea, align 4, !tbaa !615
  %i.bec = load float, ptr %i.ya, align 8, !tbaa !342
  %i.bed = fmul float %i.beb, %i.bec              ; 2 uses
  %i.bee = load ptr, ptr %i.yd, align 8, !tbaa !616 ; 2 uses
  %.not.i.i.i599 = icmp eq ptr %i.bee, null
  br i1 %.not.i.i.i599, label %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i600, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.bef = getelementptr inbounds nuw i8, ptr %i.bee, i64 608
  %i.beg = load float, ptr %i.bef, align 8, !tbaa !342
  %i.beh = fmul float %i.bed, %i.beg
  br label %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i600

_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i600:    ; preds = %bb.jo, %bb.jn
  %.0.i.i.i601 = phi float [ %i.beh, %bb.jo ], [ %i.bed, %bb.jn ]
  %i.bei = getelementptr inbounds nuw i8, ptr %i.bdz, i64 5536
  %i.bej = load float, ptr %i.bei, align 4, !tbaa !301
  %i.bek = call float @llvm.fmuladd.f32(float %i.bej, float 2.000000e+00, float %.0.i.i.i601)
  br label %_ZNK11ImGuiWindow12TitleBarRectEv.exit602

_ZNK11ImGuiWindow12TitleBarRectEv.exit602:        ; preds = %bb.jm, %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i600
  %i.bel = phi float [ %i.bek, %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i600 ], [ 0.000000e+00, %bb.jm ]
  %28 = extractelement <2 x float> %i.bds, i64 0
  %29 = fadd float %28, %i.bdw
  %30 = extractelement <2 x float> %i.bds, i64 1  ; 2 uses
  %31 = fadd float %30, %i.bel
  %i.bem = load <2 x float>, ptr %i.akv, align 8  ; 4 uses
  %.sroa.2.8.vec.insert.i595 = insertelement <2 x float> poison, float %29, i64 0
  %.sroa.2.12.vec.insert.i596 = insertelement <2 x float> %.sroa.2.8.vec.insert.i595, float %31, i64 1
  store <2 x float> %i.bem, ptr %25, align 8
  %i.ben = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 5 uses
  store <2 x float> %.sroa.2.12.vec.insert.i596, ptr %i.ben, align 8
  %i.beo = getelementptr inbounds nuw i8, ptr %.01057, i64 440
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.01057, i64 448
  %i.bep = fcmp oge <2 x float> %i.bds, %.sroa.0786.0.copyload
  %i.beq = select <2 x i1> %i.bep, <2 x float> %i.bds, <2 x float> %.sroa.0786.0.copyload
  store <2 x float> %i.beq, ptr %i.beo, align 8
  %i.ber = fcmp olt <2 x float> %i.bdv, %.sroa.10796.0.copyload
  %i.bes = select <2 x i1> %i.ber, <2 x float> %i.bdv, <2 x float> %.sroa.10796.0.copyload
  store <2 x float> %i.bes, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bet = extractelement <2 x float> %i.bem, i64 0
  %i.beu = getelementptr inbounds nuw i8, ptr %.01057, i64 456 ; 2 uses
  store float %i.bet, ptr %i.beu, align 8, !tbaa !870
  %i.bev = fadd float %i.afz, %30                 ; 2 uses
  %i.bew = getelementptr inbounds nuw i8, ptr %.01057, i64 460 ; 2 uses
  store float %i.bev, ptr %i.bew, align 4, !tbaa !871
  %i.bex = extractelement <2 x float> %i.bdu, i64 0 ; 2 uses
  %foldExtExtBinop1337 = fadd <2 x float> %i.bdu, %i.bem
  %i.bey = getelementptr inbounds nuw i8, ptr %.01057, i64 132 ; 3 uses
  %i.bez = getelementptr inbounds nuw i8, ptr %.01057, i64 464
  %i.bfa = getelementptr inbounds nuw i8, ptr %.01057, i64 136 ; 2 uses
  %i.bfb = load <2 x float>, ptr %i.bey, align 4, !tbaa !9
  %i.bfc = shufflevector <2 x float> %foldExtExtBinop1337, <2 x float> %i.bdv, <2 x i32> <i32 0, i32 3>
  %i.bfd = fsub <2 x float> %i.bfc, %i.bfb        ; 3 uses
  store <2 x float> %i.bfd, ptr %i.bez, align 8, !tbaa !9
  %i.bfe = and i32 %.1, 1025
  %brmerge402.not = icmp eq i32 %i.bfe, 1
  %i.bff = getelementptr inbounds nuw i8, ptr %i.g, i64 5544
  %i.bfg = getelementptr inbounds nuw i8, ptr %.01057, i64 76 ; 6 uses
  %.in370 = select i1 %brmerge402.not, ptr %i.bfg, ptr %i.bff
  %i.bfh = load float, ptr %.in370, align 4, !tbaa !9
  %i.bfi = load float, ptr %i.zh, align 8, !tbaa !872
  %i.bfj = fmul float %i.bfi, 5.000000e-01
  %i.bfk = fptosi float %i.bfj to i32
  %i.bfl = sitofp i32 %i.bfk to float             ; 2 uses
  %i.bfm = load float, ptr %i.bfg, align 4, !tbaa !848 ; 3 uses
  %i.bfn = fcmp ole float %i.bfm, %i.bfl
  %i.bfo = select i1 %i.bfn, float %i.bfl, float %i.bfm
  %i.bfp = getelementptr inbounds nuw i8, ptr %.01057, i64 472
  %i.bfq = getelementptr inbounds nuw i8, ptr %.01057, i64 480
  %i.bfr = insertelement <2 x float> %i.bem, float %i.bev, i64 1 ; 2 uses
  %i.bfs = fadd <2 x float> %i.bfr, splat (float 5.000000e-01)
  %i.bft = insertelement <2 x float> poison, float %i.bfo, i64 0 ; 2 uses
  %i.bfu = insertelement <2 x float> %i.bft, float %i.bfh, i64 1
  %i.bfv = fadd <2 x float> %i.bfs, %i.bfu
  %i.bfw = fptosi <2 x float> %i.bfv to <2 x i32>
  %i.bfx = sitofp <2 x i32> %i.bfw to <2 x float> ; 3 uses
  %i.bfy = fcmp ogt <2 x float> %.sroa.0786.0.copyload, %i.bfx
  %i.bfz = fcmp olt <2 x float> %.sroa.10796.0.copyload, %i.bfx
  %i.bga = select <2 x i1> %i.bfz, <2 x float> %.sroa.10796.0.copyload, <2 x float> %i.bfx
  %i.bgb = select <2 x i1> %i.bfy, <2 x float> %.sroa.0786.0.copyload, <2 x float> %i.bga
  store <2 x float> %i.bgb, ptr %i.bfp, align 8
  %i.bgc = fadd <2 x float> %i.bfd, splat (float 5.000000e-01)
  %i.bgd = insertelement <2 x float> %i.bft, float %i.bfm, i64 1
  %i.bge = fsub <2 x float> %i.bgc, %i.bgd
  %i.bgf = fptosi <2 x float> %i.bge to <2 x i32>
  %i.bgg = sitofp <2 x i32> %i.bgf to <2 x float> ; 3 uses
  %i.bgh = fcmp ogt <2 x float> %.sroa.0786.0.copyload, %i.bgg
  %i.bgi = fcmp olt <2 x float> %.sroa.10796.0.copyload, %i.bgg
  %i.bgj = select <2 x i1> %i.bgi, <2 x float> %.sroa.10796.0.copyload, <2 x float> %i.bgg
  %i.bgk = select <2 x i1> %i.bgh, <2 x float> %.sroa.0786.0.copyload, <2 x float> %i.bgj
  store <2 x float> %i.bgk, ptr %i.bfq, align 8
  %i.bgl = fcmp ule float %i.bex, 0.000000e+00
  %.not347.not = xor i1 %.not347, true
  %brmerge404 = select i1 %i.bgl, i1 true, i1 %.not347.not
  %brmerge405 = or i1 %.not358, %brmerge404
  br i1 %brmerge405, label %bb.jq, label %bb.jp

bb.jp:                                            ; preds = %_ZNK11ImGuiWindow12TitleBarRectEv.exit602
  %i.bgm = fmul nnan float %i.bex, 6.500000e-01
  br label %bb.jr

bb.jq:                                            ; preds = %_ZNK11ImGuiWindow12TitleBarRectEv.exit602
  %i.bgn = load float, ptr %i.alk, align 8, !tbaa !297
  %i.bgo = fmul float %i.bgn, 1.600000e+01
  br label %bb.jr

bb.jr:                                            ; preds = %bb.jq, %bb.jp
  %.sink.in.in = phi float [ %i.bgo, %bb.jq ], [ %i.bgm, %bb.jp ]
  %.sink.in = fptosi float %.sink.in.in to i32
  %.sink = sitofp i32 %.sink.in to float
  %i.bgp = getelementptr inbounds nuw i8, ptr %.01057, i64 568 ; 2 uses
  store float %.sink, ptr %i.bgp, align 8, !tbaa !873
  %i.bgq = load float, ptr %i.zh, align 8, !tbaa !872
  %i.bgr = fsub <2 x float> %i.bfd, %i.bfr
  %i.bgs = getelementptr inbounds nuw i8, ptr %.01057, i64 100
  %i.bgt = getelementptr inbounds nuw i8, ptr %.01057, i64 44
  %i.bgu = getelementptr inbounds nuw i8, ptr %.01057, i64 68 ; 3 uses
  %i.bgv = load float, ptr %i.bgu, align 4, !tbaa !874
  %i.bgw = getelementptr inbounds nuw i8, ptr %.01057, i64 104
  %i.bgx = load <2 x float>, ptr %i.ww, align 8, !tbaa !9
  %i.bgy = insertelement <2 x float> poison, float %i.bgq, i64 0
  %i.bgz = insertelement <2 x float> %i.bgy, float %i.bgv, i64 1
  %i.bha = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bgz, <2 x float> splat (float 2.000000e+00), <2 x float> %i.bgx)
  %i.bhb = fsub <2 x float> %i.bha, %i.bgr        ; 2 uses
  %i.bhc = fcmp ole <2 x float> %i.bhb, zeroinitializer
  %i.bhd = select <2 x i1> %i.bhc, <2 x float> zeroinitializer, <2 x float> %i.bhb
  store <2 x float> %i.bhd, ptr %i.bgs, align 4, !tbaa !9
  %i.bhe = call fastcc <2 x float> @_ZL38CalcNextScrollFromScrollTargetAndClampP11ImGuiWindow(ptr noundef nonnull %.01057)
  %i.bhf = getelementptr inbounds nuw i8, ptr %.01057, i64 92 ; 2 uses
  store <2 x float> %i.bhe, ptr %i.bhf, align 4
  %i.bhg = getelementptr inbounds nuw i8, ptr %.01057, i64 108
  store i32 2139095039, ptr %i.bhg, align 4
  %.sroa_idx783 = getelementptr inbounds nuw i8, ptr %.01057, i64 112
  store i32 2139095039, ptr %.sroa_idx783, align 8
  %i.bhh = load ptr, ptr %i.vl, align 8, !tbaa !295
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.g, i64 6520
  %i.bhj = load ptr, ptr %i.bhi, align 8, !tbaa !296
  %i.bhk = getelementptr inbounds nuw i8, ptr %i.bhj, i64 64
  %i.bhl = load ptr, ptr %i.bhk, align 8, !tbaa !658
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bhl, i64 8
  %i.bhn = load ptr, ptr %i.bhm, align 8, !tbaa !588
  call void @_ZN10ImDrawList13PushTextureIDEPv(ptr noundef nonnull align 8 dereferenceable(196) %i.bhh, ptr noundef %i.bhn)
  %i.bho = load ptr, ptr @GImGui, align 8, !tbaa !49
  %i.bhp = getelementptr inbounds nuw i8, ptr %i.bho, i64 7184
  %i.bhq = load ptr, ptr %i.bhp, align 8, !tbaa !208 ; 3 uses
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bhq, i64 144
  store i8 1, ptr %i.bhr, align 8, !tbaa !429
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bhq, i64 616 ; 2 uses
  %i.bht = load ptr, ptr %i.bhs, align 8, !tbaa !295
  call void @_ZN10ImDrawList12PushClipRectE6ImVec2S0_b(ptr noundef nonnull align 8 dereferenceable(196) %i.bht, <2 x float> %.sroa.0786.0.copyload, <2 x float> %.sroa.10796.0.copyload, i1 noundef zeroext false)
  %i.bhu = load ptr, ptr %i.bhs, align 8, !tbaa !295 ; 2 uses
  %i.bhv = getelementptr inbounds nuw i8, ptr %i.bhu, i64 88
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.bhu, i64 96
  %i.bhx = load ptr, ptr %i.bhw, align 8, !tbaa !348
  %i.bhy = load i32, ptr %i.bhv, align 8, !tbaa !875
  %i.bhz = sext i32 %i.bhy to i64
  %i.bia = getelementptr [16 x i8], ptr %i.bhx, i64 %i.bhz
  %i.bib = getelementptr i8, ptr %i.bia, i64 -16
  %i.bic = getelementptr inbounds nuw i8, ptr %i.bhq, i64 520
  %i.bid = load <4 x float>, ptr %i.bib, align 4, !tbaa !9
  store <4 x float> %i.bid, ptr %i.bic, align 8, !tbaa !9
  %i.bie = and i32 %.1, 134217728
  %.not371 = icmp eq i32 %i.bie, 0
  br i1 %.not371, label %bb.jx, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.bif = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 2 uses
  %i.big = getelementptr inbounds nuw i8, ptr %i.bif, i64 7640
  %i.bih = load i32, ptr %i.big, align 8, !tbaa !602 ; 2 uses
  %i.bii = icmp slt i32 %i.bih, 1
  br i1 %i.bii, label %_ZN5ImGui20GetTopMostPopupModalEv.exit, label %.lr.ph.i620

.lr.ph.i620:                                      ; preds = %bb.js
  %i.bij = getelementptr inbounds nuw i8, ptr %i.bif, i64 7648
  %i.bik = load ptr, ptr %i.bij, align 8, !tbaa !607
  %i.bil = zext nneg i32 %i.bih to i64
  br label %bb.jt

bb.jt:                                            ; preds = %bb.jv, %.lr.ph.i620
  %indvars.iv.i621 = phi i64 [ %i.bil, %.lr.ph.i620 ], [ %indvars.iv.next.i622, %bb.jv ] ; 2 uses
  %indvars.iv.next.i622 = add nsw i64 %indvars.iv.i621, -1 ; 2 uses
  %i.bim = getelementptr inbounds nuw [48 x i8], ptr %i.bik, i64 %indvars.iv.next.i622
  %i.bin = getelementptr inbounds nuw i8, ptr %i.bim, i64 8
  %i.bio = load ptr, ptr %i.bin, align 8, !tbaa !608 ; 3 uses
  %.not.i623 = icmp eq ptr %i.bio, null
  br i1 %.not.i623, label %bb.jv, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.bip = getelementptr inbounds nuw i8, ptr %i.bio, i64 12
  %i.biq = load i32, ptr %i.bip, align 4, !tbaa !428
  %i.bir = and i32 %i.biq, 134217728
  %.not15.i = icmp eq i32 %i.bir, 0
  br i1 %.not15.i, label %bb.jv, label %_ZN5ImGui20GetTopMostPopupModalEv.exit

bb.jv:                                            ; preds = %bb.ju, %bb.jt
  %i.bis = icmp samesign ult i64 %indvars.iv.i621, 2
  br i1 %i.bis, label %_ZN5ImGui20GetTopMostPopupModalEv.exit, label %bb.jt, !llvm.loop !609

_ZN5ImGui20GetTopMostPopupModalEv.exit:           ; preds = %bb.ju, %bb.jv, %bb.js
  %spec.select.i = phi ptr [ null, %bb.js ], [ null, %bb.jv ], [ %i.bio, %bb.ju ]
  %i.bit = icmp eq ptr %.01057, %spec.select.i
  br i1 %i.bit, label %bb.jw, label %bb.jx

bb.jw:                                            ; preds = %_ZN5ImGui20GetTopMostPopupModalEv.exit
  %i.biu = load i8, ptr %i.wt, align 1, !tbaa !845
  %i.biv = icmp slt i8 %i.biu, 1
  br label %bb.jx

bb.jx:                                            ; preds = %bb.jw, %_ZN5ImGui20GetTopMostPopupModalEv.exit, %bb.jr
  %i.biw = phi i1 [ false, %_ZN5ImGui20GetTopMostPopupModalEv.exit ], [ false, %bb.jr ], [ %i.biv, %bb.jw ] ; 2 uses
  %i.bix = getelementptr inbounds nuw i8, ptr %i.g, i64 7992 ; 3 uses
  %i.biy = load ptr, ptr %i.bix, align 8, !tbaa !699 ; 2 uses
  %.not372 = icmp eq ptr %i.biy, null
  br i1 %.not372, label %bb.jz, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.biz = getelementptr inbounds nuw i8, ptr %i.biy, i64 832
  %i.bja = load ptr, ptr %i.biz, align 8, !tbaa !426
  %i.bjb = icmp eq ptr %.01057, %i.bja
  br label %bb.jz

bb.jz:                                            ; preds = %bb.jy, %bb.jx
  %i.bjc = phi i1 [ false, %bb.jx ], [ %i.bjb, %bb.jy ] ; 2 uses
  %or.cond21 = select i1 %i.biw, i1 true, i1 %i.bjc
  br i1 %or.cond21, label %bb.ka, label %bb.kb

bb.ka:                                            ; preds = %bb.jz
  %i.bjd = getelementptr inbounds nuw i8, ptr %i.g, i64 8052
  %i.bje = load float, ptr %i.bjd, align 4, !tbaa !701
  %i.bjf = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 2 uses
  %i.bjg = getelementptr inbounds nuw i8, ptr %i.bjf, i64 5472
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.bjf, i64 5672
  %i.bji = select i1 %i.biw, i64 52, i64 51
  %i.bjj = getelementptr inbounds nuw [16 x i8], ptr %i.bjh, i64 %i.bji
  %i.bjk = load float, ptr %i.bjg, align 4, !tbaa !274
  %i.bjl = load <4 x float>, ptr %i.bjj, align 4, !tbaa !9
  %i.bjm = fmul float %i.bje, %i.bjk
  %i.bjn = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.bjm, i64 3
  %i.bjo = fmul <4 x float> %i.bjl, %i.bjn        ; 3 uses
  %i.bjp = fcmp olt <4 x float> %i.bjo, zeroinitializer
  %i.bjq = fcmp ogt <4 x float> %i.bjo, splat (float 1.000000e+00)
  %i.bjr = select <4 x i1> %i.bjq, <4 x float> splat (float 1.000000e+00), <4 x float> %i.bjo
  %i.bjs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bjr, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
end_hunk_4
begin_hunk_5_@_ZN5ImGui5BeginEPKcPbi:bb.a
  %i.bph = select <2 x i1> %i.bpd, <2 x float> splat (float 5.000000e-01), <2 x float> %i.bpg
  %i.bpi = fptosi <2 x float> %i.bph to <2 x i32>
  %i.bpj = shl <2 x i32> %i.bpi, <i32 8, i32 16>  ; 2 uses
  %i.bpk = extractelement <2 x i32> %i.bpj, i64 0
  %i.bpl = extractelement <2 x i32> %i.bpj, i64 1
  %i.bpm = insertelement <2 x float> poison, float %.sroa.0.0.copyload.i141.i, i64 0
  %i.bpn = insertelement <2 x float> %i.bpm, float %i.bpb, i64 1 ; 3 uses
  %i.bpo = fcmp ogt <2 x float> %i.bpn, splat (float 1.000000e+00)
  %i.bpp = select <2 x i1> %i.bpo, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bpn
  %i.bpq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bpp, <2 x float> splat (float 2.550000e+02), <2 x float> splat (float 5.000000e-01))
  %i.bpr = fcmp olt <2 x float> %i.bpn, zeroinitializer
  %i.bps = select <2 x i1> %i.bpr, <2 x float> splat (float 5.000000e-01), <2 x float> %i.bpq ; 2 uses
  %i.bpt = extractelement <2 x float> %i.bps, i64 0
  %i.bpu = fptosi float %i.bpt to i32
  %i.bpv = or i32 %i.bpk, %i.bpu
  %i.bpw = or i32 %i.bpv, %i.bpl                  ; 2 uses
  %i.bpx = extractelement <2 x float> %i.bps, i64 1
  %i.bpy = fptosi float %i.bpx to i32
  %i.bpz = shl i32 %i.bpy, 24
  %i.bqa = or i32 %i.bpz, %i.bpw
  %i.bqb = getelementptr inbounds nuw i8, ptr %i.bnr, i64 7432
  %i.bqc = load i32, ptr %i.bqb, align 8, !tbaa !781
  %i.bqd = and i32 %i.bqc, 64
  %.not94.not.i = icmp eq i32 %i.bqd, 0
  br i1 %.not94.not.i, label %.critedge.i666, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.bqe = getelementptr inbounds nuw i8, ptr %i.bnr, i64 7528
  %i.bqf = load float, ptr %i.bqe, align 8, !tbaa !782 ; 3 uses
  %i.bqg = and i32 %i.bpw, 16777215
  %i.bqh = fcmp olt float %i.bqf, 0.000000e+00
  %i.bqi = fcmp ogt float %i.bqf, 1.000000e+00
  %i.bqj = select i1 %i.bqi, float 1.000000e+00, float %i.bqf
  %i.bqk = call float @llvm.fmuladd.f32(float %i.bqj, float 2.550000e+02, float 5.000000e-01)
  %i.bql = select i1 %i.bqh, float 5.000000e-01, float %i.bqk
  %i.bqm = fptosi float %i.bql to i32
  %i.bqn = shl i32 %i.bqm, 24
  %i.bqo = or disjoint i32 %i.bqn, %i.bqg
  br label %.critedge.i666

.critedge.i666:                                   ; preds = %bb.ku, %bb.kt
  %.0.i667 = phi i32 [ %i.bqo, %bb.ku ], [ %i.bqa, %bb.kt ]
  %i.bqp = load ptr, ptr %i.vl, align 8, !tbaa !295
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #39
  %i.bqq = and i32 %i.bns, 1                      ; 2 uses
  %.not.i148.i = icmp eq i32 %i.bqq, 0
  br i1 %.not.i148.i, label %bb.kv, label %_ZNK11ImGuiWindow14TitleBarHeightEv.exit.i

bb.kv:                                            ; preds = %.critedge.i666
  %i.bqr = getelementptr inbounds nuw i8, ptr %i.bnr, i64 6532
  %i.bqs = load float, ptr %i.bqr, align 4, !tbaa !615
  %i.bqt = load float, ptr %i.ya, align 8, !tbaa !342
  %i.bqu = fmul float %i.bqs, %i.bqt              ; 2 uses
  %i.bqv = load ptr, ptr %i.yd, align 8, !tbaa !616 ; 2 uses
  %.not.i.i.i670 = icmp eq ptr %i.bqv, null
  br i1 %.not.i.i.i670, label %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i671, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.bqw = getelementptr inbounds nuw i8, ptr %i.bqv, i64 608
  %i.bqx = load float, ptr %i.bqw, align 8, !tbaa !342
  %i.bqy = fmul float %i.bqu, %i.bqx
  br label %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i671

_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i671:    ; preds = %bb.kw, %bb.kv
  %.0.i.i.i672 = phi float [ %i.bqy, %bb.kw ], [ %i.bqu, %bb.kv ]
  %i.bqz = getelementptr inbounds nuw i8, ptr %i.bnr, i64 5536
  %i.bra = load float, ptr %i.bqz, align 8, !tbaa !301
  %i.brb = call float @llvm.fmuladd.f32(float %i.bra, float 2.000000e+00, float %.0.i.i.i672)
  br label %_ZNK11ImGuiWindow14TitleBarHeightEv.exit.i

_ZNK11ImGuiWindow14TitleBarHeightEv.exit.i:       ; preds = %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i671, %.critedge.i666
  %i.brc = phi i32 [ 192, %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i671 ], [ 0, %.critedge.i666 ]
  %i.brd = phi float [ %i.brb, %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i671 ], [ 0.000000e+00, %.critedge.i666 ]
  %i.bre = load <2 x float>, ptr %i.akv, align 8, !tbaa !9 ; 2 uses
  %i.brf = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.brd, i64 1
  %i.brg = fadd <2 x float> %i.brf, %i.bre
  store <2 x float> %i.brg, ptr %13, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #39
  %i.brh = load <2 x float>, ptr %i.aet, align 8, !tbaa !9
  %i.bri = fadd <2 x float> %i.bre, %i.brh
  store <2 x float> %i.bri, ptr %14, align 8
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(196) %i.bqp, ptr noundef nonnull align 4 dereferenceable(8) %13, ptr noundef nonnull align 4 dereferenceable(8) %14, i32 noundef %.0.i667, float noundef %i.bnu, i32 noundef %i.brc)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #39
  br label %bb.kx

bb.kx:                                            ; preds = %_ZNK11ImGuiWindow14TitleBarHeightEv.exit.i, %._crit_edge.i655
  %.pre-phi.i = phi i32 [ %.pre.i656, %._crit_edge.i655 ], [ %i.bqq, %_ZNK11ImGuiWindow14TitleBarHeightEv.exit.i ]
  %.not96.i = icmp eq i32 %.pre-phi.i, 0          ; 2 uses
  br i1 %.not96.i, label %bb.ky, label %bb.kz

bb.ky:                                            ; preds = %bb.kx
  %i.brj = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 2 uses
  %i.brk = getelementptr inbounds nuw i8, ptr %i.brj, i64 5472
  %i.brl = getelementptr inbounds nuw i8, ptr %i.brj, i64 5672
  %i.brm = select i1 %i.bnq, i64 11, i64 10
  %i.brn = getelementptr inbounds nuw [16 x i8], ptr %i.brl, i64 %i.brm
  %i.bro = load float, ptr %i.brk, align 4, !tbaa !274
  %i.brp = load <4 x float>, ptr %i.brn, align 4, !tbaa !9
  %i.brq = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.bro, i64 3
  %i.brr = fmul <4 x float> %i.brp, %i.brq        ; 3 uses
  %i.brs = fcmp olt <4 x float> %i.brr, zeroinitializer
  %i.brt = fcmp ogt <4 x float> %i.brr, splat (float 1.000000e+00)
  %i.bru = select <4 x i1> %i.brt, <4 x float> splat (float 1.000000e+00), <4 x float> %i.brr
  %i.brv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bru, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.brw = select <4 x i1> %i.brs, <4 x float> splat (float 5.000000e-01), <4 x float> %i.brv
  %i.brx = fptosi <4 x float> %i.brw to <4 x i32>
  %i.bry = shl <4 x i32> %i.brx, <i32 0, i32 8, i32 16, i32 24>
  %i.brz = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.bry)
  %i.bsa = load ptr, ptr %i.vl, align 8, !tbaa !295
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(196) %i.bsa, ptr noundef nonnull align 4 dereferenceable(16) %25, ptr noundef nonnull align 4 dereferenceable(8) %i.ben, i32 noundef %i.brz, float noundef %i.bnu, i32 noundef 48)
  br label %bb.kz

bb.kz:                                            ; preds = %bb.ky, %bb.kx
  %i.bsb = and i32 %i.bns, 1024
  %.not97.i = icmp eq i32 %i.bsb, 0
  br i1 %.not97.i, label %bb.lh, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.bsc = load float, ptr %i.akw, align 4, !tbaa !598 ; 4 uses
  %i.bsd = load i32, ptr %i.aeu, align 4, !tbaa !428 ; 2 uses
  %i.bse = and i32 %i.bsd, 1
  %.not.i.i158.i = icmp eq i32 %i.bse, 0
  %.pre.pre.i = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 6 uses
  br i1 %.not.i.i158.i, label %bb.lb, label %_ZNK11ImGuiWindow14TitleBarHeightEv.exit.i.i

bb.lb:                                            ; preds = %bb.la
  %i.bsf = getelementptr inbounds nuw i8, ptr %.pre.pre.i, i64 6532
  %i.bsg = load float, ptr %i.bsf, align 4, !tbaa !615
  %i.bsh = load float, ptr %i.ya, align 8, !tbaa !342
  %i.bsi = fmul float %i.bsg, %i.bsh              ; 2 uses
  %i.bsj = load ptr, ptr %i.yd, align 8, !tbaa !616 ; 2 uses
  %.not.i.i.i.i662 = icmp eq ptr %i.bsj, null
  br i1 %.not.i.i.i.i662, label %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i.i, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.bsk = getelementptr inbounds nuw i8, ptr %i.bsj, i64 608
  %i.bsl = load float, ptr %i.bsk, align 8, !tbaa !342
  %i.bsm = fmul float %i.bsi, %i.bsl
  br label %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i.i

_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i.i:     ; preds = %bb.lc, %bb.lb
  %.0.i.i.i.i = phi float [ %i.bsm, %bb.lc ], [ %i.bsi, %bb.lb ]
  %i.bsn = getelementptr inbounds nuw i8, ptr %.pre.pre.i, i64 5536
  %i.bso = load float, ptr %i.bsn, align 4, !tbaa !301
  %i.bsp = call float @llvm.fmuladd.f32(float %i.bso, float 2.000000e+00, float %.0.i.i.i.i)
  br label %_ZNK11ImGuiWindow14TitleBarHeightEv.exit.i.i

_ZNK11ImGuiWindow14TitleBarHeightEv.exit.i.i:     ; preds = %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i.i, %bb.la
  %i.bsq = phi float [ %i.bsp, %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i.i.i ], [ 0.000000e+00, %bb.la ]
  %i.bsr = load float, ptr %i.akv, align 8, !tbaa !447 ; 4 uses
  %i.bss = load float, ptr %i.adq, align 8, !tbaa !835
  %i.bst = and i32 %i.bsd, 1024
  %.not.i3.i.i = icmp eq i32 %i.bst, 0
  br i1 %.not.i3.i.i, label %_ZNK11ImGuiWindow11MenuBarRectEv.exit.i, label %bb.ld

bb.ld:                                            ; preds = %_ZNK11ImGuiWindow14TitleBarHeightEv.exit.i.i
  %i.bsu = load float, ptr %i.zt, align 8, !tbaa !855
  %i.bsv = getelementptr inbounds nuw i8, ptr %.pre.pre.i, i64 6532
  %i.bsw = load float, ptr %i.bsv, align 4, !tbaa !615
  %i.bsx = load float, ptr %i.ya, align 8, !tbaa !342
  %i.bsy = fmul float %i.bsw, %i.bsx              ; 2 uses
  %i.bsz = load ptr, ptr %i.yd, align 8, !tbaa !616 ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %i.bsz, null
  br i1 %.not.i.i4.i.i, label %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i5.i.i, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.bta = getelementptr inbounds nuw i8, ptr %i.bsz, i64 608
  %i.btb = load float, ptr %i.bta, align 8, !tbaa !342
  %i.btc = fmul float %i.bsy, %i.btb
  br label %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i5.i.i

_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i5.i.i:    ; preds = %bb.le, %bb.ld
  %.0.i.i6.i.i = phi float [ %i.btc, %bb.le ], [ %i.bsy, %bb.ld ]
  %i.btd = fadd float %i.bsu, %.0.i.i6.i.i
  %i.bte = getelementptr inbounds nuw i8, ptr %.pre.pre.i, i64 5536
  %i.btf = load float, ptr %i.bte, align 4, !tbaa !301
  %i.btg = call float @llvm.fmuladd.f32(float %i.btf, float 2.000000e+00, float %i.btd)
  br label %_ZNK11ImGuiWindow11MenuBarRectEv.exit.i

_ZNK11ImGuiWindow11MenuBarRectEv.exit.i:          ; preds = %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i5.i.i, %_ZNK11ImGuiWindow14TitleBarHeightEv.exit.i.i
  %i.bth = phi float [ %i.btg, %_ZNK11ImGuiWindow12CalcFontSizeEv.exit.i5.i.i ], [ 0.000000e+00, %_ZNK11ImGuiWindow14TitleBarHeightEv.exit.i.i ]
  %i.bti = fadd float %i.bsr, %i.bss              ; 2 uses
  %i.btj = fadd float %i.bsc, %i.bsq              ; 3 uses
  %i.btk = fadd float %i.btj, %i.bth              ; 2 uses
  %.sroa.0.0.vec.insert.i178.i = insertelement <2 x float> poison, float %i.bsr, i64 0
  %i.btl = load float, ptr %i.aet, align 8, !tbaa !803
  %i.btm = fadd float %i.bsr, %i.btl              ; 2 uses
  %i.btn = load float, ptr %i.bdt, align 4, !tbaa !804
  %i.bto = fadd float %i.bsc, %i.btn              ; 2 uses
  %.inv6.i.i.i = fcmp oge float %i.btj, %i.bsc
  %i.btp = select i1 %.inv6.i.i.i, float %i.btj, float %i.bsc
  %i.btq = fcmp olt float %i.bti, %i.btm
  %..i11.i.i = select i1 %i.btq, float %i.bti, float %i.btm ; 2 uses
  %i.btr = fcmp olt float %i.btk, %i.bto
  %i.bts = select i1 %i.btr, float %i.btk, float %i.bto ; 4 uses
  %.sroa.0.0.vec.insert.i12.i.i = insertelement <2 x float> poison, float %..i11.i.i, i64 0
  %.sroa.0.4.vec.insert.i13.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i12.i.i, float %i.bts, i64 1
  %i.btt = load ptr, ptr %i.vl, align 8, !tbaa !295
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #39
  %32 = fadd float %i.bnv, %i.bsr
  %33 = fadd float %i.btp, 0.000000e+00
  %.sroa.0.0.vec.insert.i167.i = insertelement <2 x float> poison, float %32, i64 0
  %.sroa.0.4.vec.insert.i168.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i167.i, float %33, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i168.i, ptr %15, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #39
  %i.btu = fsub float %..i11.i.i, %i.bnv
  %.sroa.0.0.vec.insert.i169.i = insertelement <2 x float> poison, float %i.btu, i64 0
  %.sroa.0.4.vec.insert.i170.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i169.i, float %i.bts, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i170.i, ptr %16, align 8
  %i.btv = getelementptr inbounds nuw i8, ptr %.pre.pre.i, i64 5472
  %i.btw = getelementptr inbounds nuw i8, ptr %.pre.pre.i, i64 5880
  %i.btx = load float, ptr %i.btv, align 4, !tbaa !274
  %i.bty = load <4 x float>, ptr %i.btw, align 4, !tbaa !9
  %i.btz = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.btx, i64 3
  %i.bua = fmul <4 x float> %i.bty, %i.btz        ; 3 uses
  %i.bub = fcmp olt <4 x float> %i.bua, zeroinitializer
  %i.buc = fcmp ogt <4 x float> %i.bua, splat (float 1.000000e+00)
  %i.bud = select <4 x i1> %i.buc, <4 x float> splat (float 1.000000e+00), <4 x float> %i.bua
  %i.bue = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bud, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.buf = select <4 x i1> %i.bub, <4 x float> splat (float 5.000000e-01), <4 x float> %i.bue
  %i.bug = fptosi <4 x float> %i.buf to <4 x i32>
  %i.buh = shl <4 x i32> %i.bug, <i32 0, i32 8, i32 16, i32 24>
  %i.bui = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.buh)
  %i.buj = select i1 %.not96.i, float 0.000000e+00, float %i.bnu
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(196) %i.btt, ptr noundef nonnull align 4 dereferenceable(8) %15, ptr noundef nonnull align 4 dereferenceable(8) %16, i32 noundef %i.bui, float noundef %i.buj, i32 noundef 48)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #39
  %i.buk = getelementptr inbounds nuw i8, ptr %i.bnr, i64 5544
  %i.bul = load float, ptr %i.buk, align 4, !tbaa !882 ; 2 uses
  %i.bum = fcmp ogt float %i.bul, 0.000000e+00
  br i1 %i.bum, label %bb.lf, label %bb.lh

bb.lf:                                            ; preds = %_ZNK11ImGuiWindow11MenuBarRectEv.exit.i
  %i.bun = load float, ptr %i.akw, align 4, !tbaa !598
  %i.buo = load float, ptr %i.bdt, align 4, !tbaa !804
  %i.bup = fadd float %i.bun, %i.buo
  %i.buq = fcmp olt float %i.bts, %i.bup
  br i1 %i.buq, label %bb.lg, label %bb.lh

bb.lg:                                            ; preds = %bb.lf
  %i.bur = load ptr, ptr %i.vl, align 8, !tbaa !295
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #39
  %.sroa.0.4.vec.insert.i179.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i178.i, float %i.bts, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i179.i, ptr %17, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #39
  store <2 x float> %.sroa.0.4.vec.insert.i13.i.i, ptr %18, align 8
  %i.bus = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 2 uses
  %i.but = getelementptr inbounds nuw i8, ptr %i.bus, i64 5472
  %i.buu = getelementptr inbounds nuw i8, ptr %i.bus, i64 5752
  %i.buv = load float, ptr %i.but, align 4, !tbaa !274
  %i.buw = load <4 x float>, ptr %i.buu, align 4, !tbaa !9
  %i.bux = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.buv, i64 3
  %i.buy = fmul <4 x float> %i.buw, %i.bux        ; 3 uses
  %i.buz = fcmp olt <4 x float> %i.buy, zeroinitializer
  %i.bva = fcmp ogt <4 x float> %i.buy, splat (float 1.000000e+00)
  %i.bvb = select <4 x i1> %i.bva, <4 x float> splat (float 1.000000e+00), <4 x float> %i.buy
  %i.bvc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bvb, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.bvd = select <4 x i1> %i.buz, <4 x float> splat (float 5.000000e-01), <4 x float> %i.bvc
  %i.bve = fptosi <4 x float> %i.bvd to <4 x i32>
  %i.bvf = shl <4 x i32> %i.bve, <i32 0, i32 8, i32 16, i32 24>
  %i.bvg = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.bvf)
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(196) %i.bur, ptr noundef nonnull align 4 dereferenceable(8) %17, ptr noundef nonnull align 4 dereferenceable(8) %18, i32 noundef %i.bvg, float noundef %i.bul)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #39
  br label %bb.lh

bb.lh:                                            ; preds = %bb.lg, %bb.lf, %_ZNK11ImGuiWindow11MenuBarRectEv.exit.i, %bb.kz
  %i.bvh = getelementptr inbounds nuw i8, ptr %.01057, i64 140
  %i.bvi = load i8, ptr %i.bvh, align 4, !tbaa !741, !range !210, !noundef !211
  %i.bvj = trunc nuw i8 %i.bvi to i1
  br i1 %i.bvj, label %bb.li, label %bb.lj

bb.li:                                            ; preds = %bb.lh
  call void @_ZN5ImGui9ScrollbarE9ImGuiAxis(i32 noundef 0)
  br label %bb.lj

bb.lj:                                            ; preds = %bb.li, %bb.lh
  %i.bvk = getelementptr inbounds nuw i8, ptr %.01057, i64 141
  %i.bvl = load i8, ptr %i.bvk, align 1, !tbaa !868, !range !210, !noundef !211
  %i.bvm = trunc nuw i8 %i.bvl to i1
  br i1 %i.bvm, label %bb.lk, label %bb.ll

bb.lk:                                            ; preds = %bb.lj
  call void @_ZN5ImGui9ScrollbarE9ImGuiAxis(i32 noundef 1)
  br label %bb.ll

bb.ll:                                            ; preds = %bb.lk, %bb.lj
  %i.bvn = and i32 %i.bns, 2
  %.not98.i = icmp eq i32 %i.bvn, 0
  br i1 %.not98.i, label %.preheader.i657, label %.loopexit.i

.preheader.i657:                                  ; preds = %bb.ll
  %i.bvo = fadd float %i.bnu, %i.bnv
  %wide.trip.count.i658 = zext nneg i32 %i.alj to i64
  %i.bvp = insertelement <2 x float> poison, float %i.bvo, i64 0
  %i.bvq = shufflevector <2 x float> %i.bvp, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.lm

bb.lm:                                            ; preds = %_ZN10ImDrawList10PathLineToERK6ImVec2.exit213.i, %.preheader.i657
  %indvars.iv.i659 = phi i64 [ 0, %.preheader.i657 ], [ %indvars.iv.next.i660, %_ZN10ImDrawList10PathLineToERK6ImVec2.exit213.i ] ; 4 uses
  %i.bvr = getelementptr inbounds nuw [24 x i8], ptr @_ZL15resize_grip_def, i64 %indvars.iv.i659 ; 4 uses
  %i.bvs = load ptr, ptr %i.vl, align 8, !tbaa !295 ; 4 uses
  %i.bvt = getelementptr inbounds nuw i8, ptr %i.bvr, i64 8
  %.not99.i = icmp eq i64 %indvars.iv.i659, 0     ; 2 uses
  %i.bvu = load <2 x float>, ptr %i.akv, align 8, !tbaa !9 ; 3 uses
  %i.bvv = load <2 x float>, ptr %i.aet, align 8, !tbaa !9
  %i.bvw = fadd <2 x float> %i.bvu, %i.bvv
  %i.bvx = load <2 x float>, ptr %i.bvr, align 8, !tbaa !9
  %i.bvy = fsub <2 x float> %i.bvw, %i.bvu
  %i.bvz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bvy, <2 x float> %i.bvx, <2 x float> %i.bvu) ; 3 uses
  %i.bwa = load <2 x float>, ptr %i.bvt, align 8, !tbaa !9 ; 3 uses
  %.sroa.5223.0.i = select i1 %.not99.i, float %i.bnv, float %i.als ; 2 uses
  %.sroa.0222.0.i = select i1 %.not99.i, float %i.als, float %i.bnv ; 2 uses
  %i.bwb = insertelement <2 x float> poison, float %.sroa.0222.0.i, i64 0
  %i.bwc = insertelement <2 x float> %i.bwb, float %.sroa.5223.0.i, i64 1
  %i.bwd = fmul <2 x float> %i.bwc, %i.bwa
  %i.bwe = fadd <2 x float> %i.bvz, %i.bwd
  %i.bwf = getelementptr inbounds nuw i8, ptr %i.bvs, i64 120 ; 5 uses
  %i.bwg = load i32, ptr %i.bwf, align 8, !tbaa !883 ; 6 uses
  %i.bwh = getelementptr inbounds nuw i8, ptr %i.bvs, i64 124 ; 2 uses
  %i.bwi = load i32, ptr %i.bwh, align 4, !tbaa !884
  %i.bwj = icmp eq i32 %i.bwg, %i.bwi
  br i1 %i.bwj, label %bb.ln, label %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i.i

._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i.i: ; preds = %bb.lm
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.bvs, i64 128
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !346
  br label %_ZN10ImDrawList10PathLineToERK6ImVec2.exit.i

bb.ln:                                            ; preds = %bb.lm
  %i.bwk = add nsw i32 %i.bwg, 1
  %.not.i.i.i196.i = icmp eq i32 %i.bwg, 0
  br i1 %.not.i.i.i196.i, label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i.i, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.bwl = sdiv i32 %i.bwg, 2
  %i.bwm = add nsw i32 %i.bwl, %i.bwg
  br label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i.i

_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i.i: ; preds = %bb.lo, %bb.ln
  %i.bwn = phi i32 [ %i.bwm, %bb.lo ], [ 8, %bb.ln ]
  %i.bwo = call noundef i32 @llvm.smax.i32(i32 %i.bwn, i32 %i.bwk) ; 2 uses
  %i.bwp = sext i32 %i.bwo to i64
  %i.bwq = shl nsw i64 %i.bwp, 3
  %i.bwr = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bwr, null
  br i1 %.not.i.i.i.i.i, label %_ZN5ImGui8MemAllocEm.exit.i.i.i.i, label %bb.lp

bb.lp:                                            ; preds = %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i.i
  %i.bws = getelementptr inbounds nuw i8, ptr %i.bwr, i64 944 ; 2 uses
  %i.bwt = load i32, ptr %i.bws, align 8, !tbaa !55
  %i.bwu = add nsw i32 %i.bwt, 1
  store i32 %i.bwu, ptr %i.bws, align 8, !tbaa !55
  br label %_ZN5ImGui8MemAllocEm.exit.i.i.i.i

_ZN5ImGui8MemAllocEm.exit.i.i.i.i:                ; preds = %bb.lp, %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i.i
  %i.bwv = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !132
  %i.bww = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !132
  %i.bwx = call noundef ptr %i.bwv(i64 noundef %i.bwq, ptr noundef %i.bww), !inline_history !885 ; 3 uses
  %i.bwy = getelementptr inbounds nuw i8, ptr %i.bvs, i64 128 ; 3 uses
  %i.bwz = load ptr, ptr %i.bwy, align 8, !tbaa !346 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.bwz, null
  br i1 %.not6.i.i.i.i, label %bb.lt, label %bb.lq

bb.lq:                                            ; preds = %_ZN5ImGui8MemAllocEm.exit.i.i.i.i
  %i.bxa = load i32, ptr %i.bwf, align 8, !tbaa !883
  %i.bxb = sext i32 %i.bxa to i64
  %i.bxc = shl nsw i64 %i.bxb, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bwx, ptr nonnull align 4 %i.bwz, i64 %i.bxc, i1 false)
  %i.bxd = load ptr, ptr %i.bwy, align 8, !tbaa !346 ; 2 uses
  %.not.i7.i.i.i.i = icmp eq ptr %i.bxd, null
  br i1 %.not.i7.i.i.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i.i.i, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.bxe = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.bxe, null
  br i1 %.not4.i.i.i.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i.i.i, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.bxf = getelementptr inbounds nuw i8, ptr %i.bxe, i64 944 ; 2 uses
  %i.bxg = load i32, ptr %i.bxf, align 8, !tbaa !55
  %i.bxh = add nsw i32 %i.bxg, -1
  store i32 %i.bxh, ptr %i.bxf, align 8, !tbaa !55
  br label %_ZN5ImGui7MemFreeEPv.exit.i.i.i.i

_ZN5ImGui7MemFreeEPv.exit.i.i.i.i:                ; preds = %bb.ls, %bb.lr, %bb.lq
  %i.bxi = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !132
  %i.bxj = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !132
  call void %i.bxi(ptr noundef %i.bxd, ptr noundef %i.bxj), !inline_history !886
  br label %bb.lt

bb.lt:                                            ; preds = %_ZN5ImGui7MemFreeEPv.exit.i.i.i.i, %_ZN5ImGui8MemAllocEm.exit.i.i.i.i
  store ptr %i.bwx, ptr %i.bwy, align 8, !tbaa !346
  store i32 %i.bwo, ptr %i.bwh, align 4, !tbaa !884
  %.pre3.i.i.i = load i32, ptr %i.bwf, align 8, !tbaa !883
  br label %_ZN10ImDrawList10PathLineToERK6ImVec2.exit.i

_ZN10ImDrawList10PathLineToERK6ImVec2.exit.i:     ; preds = %bb.lt, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i.i
  %i.bxk = phi i32 [ %i.bwg, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i.i ], [ %.pre3.i.i.i, %bb.lt ]
  %i.bxl = phi ptr [ %.pre.i.i.i, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i.i ], [ %i.bwx, %bb.lt ]
  %i.bxm = sext i32 %i.bxk to i64
  %i.bxn = getelementptr inbounds [8 x i8], ptr %i.bxl, i64 %i.bxm
  store <2 x float> %i.bwe, ptr %i.bxn, align 4
  %i.bxo = load i32, ptr %i.bwf, align 8, !tbaa !883
  %i.bxp = add nsw i32 %i.bxo, 1
  store i32 %i.bxp, ptr %i.bwf, align 8, !tbaa !883
  %i.bxq = load ptr, ptr %i.vl, align 8, !tbaa !295 ; 4 uses
  %i.bxr = insertelement <2 x float> poison, float %.sroa.5223.0.i, i64 0
  %i.bxs = insertelement <2 x float> %i.bxr, float %.sroa.0222.0.i, i64 1
  %i.bxt = fmul <2 x float> %i.bxs, %i.bwa
  %i.bxu = fadd <2 x float> %i.bvz, %i.bxt
  %i.bxv = getelementptr inbounds nuw i8, ptr %i.bxq, i64 120 ; 5 uses
  %i.bxw = load i32, ptr %i.bxv, align 8, !tbaa !883 ; 6 uses
  %i.bxx = getelementptr inbounds nuw i8, ptr %i.bxq, i64 124 ; 2 uses
  %i.bxy = load i32, ptr %i.bxx, align 4, !tbaa !884
  %i.bxz = icmp eq i32 %i.bxw, %i.bxy
  br i1 %i.bxz, label %bb.lu, label %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i201.i

._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i201.i: ; preds = %_ZN10ImDrawList10PathLineToERK6ImVec2.exit.i
  %.phi.trans.insert.i.i202.i = getelementptr inbounds nuw i8, ptr %i.bxq, i64 128
  %.pre.i.i203.i = load ptr, ptr %.phi.trans.insert.i.i202.i, align 8, !tbaa !346
  br label %_ZN10ImDrawList10PathLineToERK6ImVec2.exit213.i

bb.lu:                                            ; preds = %_ZN10ImDrawList10PathLineToERK6ImVec2.exit.i
  %i.bya = add nsw i32 %i.bxw, 1
  %.not.i.i.i204.i = icmp eq i32 %i.bxw, 0
  br i1 %.not.i.i.i204.i, label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i205.i, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %i.byb = sdiv i32 %i.bxw, 2
  %i.byc = add nsw i32 %i.byb, %i.bxw
  br label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i205.i

_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i205.i: ; preds = %bb.lv, %bb.lu
  %i.byd = phi i32 [ %i.byc, %bb.lv ], [ 8, %bb.lu ]
  %i.bye = call noundef i32 @llvm.smax.i32(i32 %i.byd, i32 %i.bya) ; 2 uses
  %i.byf = sext i32 %i.bye to i64
  %i.byg = shl nsw i64 %i.byf, 3
  %i.byh = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i.i206.i = icmp eq ptr %i.byh, null
  br i1 %.not.i.i.i.i206.i, label %_ZN5ImGui8MemAllocEm.exit.i.i.i207.i, label %bb.lw

bb.lw:                                            ; preds = %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i205.i
  %i.byi = getelementptr inbounds nuw i8, ptr %i.byh, i64 944 ; 2 uses
  %i.byj = load i32, ptr %i.byi, align 8, !tbaa !55
  %i.byk = add nsw i32 %i.byj, 1
  store i32 %i.byk, ptr %i.byi, align 8, !tbaa !55
  br label %_ZN5ImGui8MemAllocEm.exit.i.i.i207.i

_ZN5ImGui8MemAllocEm.exit.i.i.i207.i:             ; preds = %bb.lw, %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i205.i
  %i.byl = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !132
  %i.bym = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !132
  %i.byn = call noundef ptr %i.byl(i64 noundef %i.byg, ptr noundef %i.bym), !inline_history !885 ; 3 uses
  %i.byo = getelementptr inbounds nuw i8, ptr %i.bxq, i64 128 ; 3 uses
  %i.byp = load ptr, ptr %i.byo, align 8, !tbaa !346 ; 2 uses
  %.not6.i.i.i208.i = icmp eq ptr %i.byp, null
  br i1 %.not6.i.i.i208.i, label %bb.ma, label %bb.lx

bb.lx:                                            ; preds = %_ZN5ImGui8MemAllocEm.exit.i.i.i207.i
  %i.byq = load i32, ptr %i.bxv, align 8, !tbaa !883
  %i.byr = sext i32 %i.byq to i64
  %i.bys = shl nsw i64 %i.byr, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.byn, ptr nonnull align 4 %i.byp, i64 %i.bys, i1 false)
  %i.byt = load ptr, ptr %i.byo, align 8, !tbaa !346 ; 2 uses
  %.not.i7.i.i.i209.i = icmp eq ptr %i.byt, null
  br i1 %.not.i7.i.i.i209.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i.i211.i, label %bb.ly

bb.ly:                                            ; preds = %bb.lx
  %i.byu = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 2 uses
  %.not4.i.i.i.i210.i = icmp eq ptr %i.byu, null
  br i1 %.not4.i.i.i.i210.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i.i211.i, label %bb.lz

bb.lz:                                            ; preds = %bb.ly
  %i.byv = getelementptr inbounds nuw i8, ptr %i.byu, i64 944 ; 2 uses
  %i.byw = load i32, ptr %i.byv, align 8, !tbaa !55
  %i.byx = add nsw i32 %i.byw, -1
  store i32 %i.byx, ptr %i.byv, align 8, !tbaa !55
  br label %_ZN5ImGui7MemFreeEPv.exit.i.i.i211.i

_ZN5ImGui7MemFreeEPv.exit.i.i.i211.i:             ; preds = %bb.lz, %bb.ly, %bb.lx
  %i.byy = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !132
  %i.byz = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !132
  call void %i.byy(ptr noundef %i.byt, ptr noundef %i.byz), !inline_history !886
  br label %bb.ma

bb.ma:                                            ; preds = %_ZN5ImGui7MemFreeEPv.exit.i.i.i211.i, %_ZN5ImGui8MemAllocEm.exit.i.i.i207.i
  store ptr %i.byn, ptr %i.byo, align 8, !tbaa !346
  store i32 %i.bye, ptr %i.bxx, align 4, !tbaa !884
  %.pre3.i.i212.i = load i32, ptr %i.bxv, align 8, !tbaa !883
  br label %_ZN10ImDrawList10PathLineToERK6ImVec2.exit213.i

_ZN10ImDrawList10PathLineToERK6ImVec2.exit213.i:  ; preds = %bb.ma, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i201.i
  %i.bza = phi i32 [ %i.bxw, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i201.i ], [ %.pre3.i.i212.i, %bb.ma ]
  %i.bzb = phi ptr [ %.pre.i.i203.i, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i201.i ], [ %i.byn, %bb.ma ]
  %i.bzc = sext i32 %i.bza to i64
  %i.bzd = getelementptr inbounds [8 x i8], ptr %i.bzb, i64 %i.bzc
  store <2 x float> %i.bxu, ptr %i.bzd, align 4
  %i.bze = load i32, ptr %i.bxv, align 8, !tbaa !883
  %i.bzf = add nsw i32 %i.bze, 1
  store i32 %i.bzf, ptr %i.bxv, align 8, !tbaa !883
  %i.bzg = load ptr, ptr %i.vl, align 8, !tbaa !295
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #39
  %i.bzh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bwa, <2 x float> %i.bvq, <2 x float> %i.bvz)
  store <2 x float> %i.bzh, ptr %19, align 8, !tbaa !9
  %i.bzi = getelementptr inbounds nuw i8, ptr %i.bvr, i64 16
  %i.bzj = load i32, ptr %i.bzi, align 8, !tbaa !887
  %i.bzk = getelementptr inbounds nuw i8, ptr %i.bvr, i64 20
  %i.bzl = load i32, ptr %i.bzk, align 4, !tbaa !889
  call void @_ZN10ImDrawList13PathArcToFastERK6ImVec2fii(ptr noundef nonnull align 8 dereferenceable(196) %i.bzg, ptr noundef nonnull align 4 dereferenceable(8) %19, float noundef %i.bnu, i32 noundef %i.bzj, i32 noundef %i.bzl)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  %i.bzm = load ptr, ptr %i.vl, align 8, !tbaa !295 ; 3 uses
  %i.bzn = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i659
  %i.bzo = load i32, ptr %i.bzn, align 4, !tbaa !34
  %i.bzp = getelementptr inbounds nuw i8, ptr %i.bzm, i64 120 ; 2 uses
  %i.bzq = getelementptr inbounds nuw i8, ptr %i.bzm, i64 128
  %i.bzr = load ptr, ptr %i.bzq, align 8, !tbaa !890
  %i.bzs = load i32, ptr %i.bzp, align 8, !tbaa !891
  call void @_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij(ptr noundef nonnull align 8 dereferenceable(196) %i.bzm, ptr noundef %i.bzr, i32 noundef %i.bzs, i32 noundef %i.bzo)
  store i32 0, ptr %i.bzp, align 8, !tbaa !891
  %indvars.iv.next.i660 = add nuw nsw i64 %indvars.iv.i659, 1 ; 2 uses
  %exitcond.not.i661 = icmp eq i64 %indvars.iv.next.i660, %wide.trip.count.i658
  br i1 %exitcond.not.i661, label %.loopexit.i, label %bb.lm, !llvm.loop !892

.loopexit.i:                                      ; preds = %_ZN10ImDrawList10PathLineToERK6ImVec2.exit213.i, %bb.ll
  %i.bzt = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 3 uses
  %i.bzu = load float, ptr %i.ald, align 8, !tbaa !861 ; 12 uses
  %i.bzv = load float, ptr %i.bfg, align 4, !tbaa !848 ; 6 uses
  %i.bzw = fcmp ogt float %i.bzv, 0.000000e+00
  br i1 %i.bzw, label %bb.mb, label %bb.md

bb.mb:                                            ; preds = %.loopexit.i
  %i.bzx = load i32, ptr %i.aeu, align 4, !tbaa !428
  %i.bzy = and i32 %i.bzx, 128
  %.not.i217.i = icmp eq i32 %i.bzy, 0
  br i1 %.not.i217.i, label %bb.mc, label %bb.md

bb.mc:                                            ; preds = %bb.mb
  %i.bzz = load ptr, ptr %i.vl, align 8, !tbaa !295
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  %i.caa = load <2 x float>, ptr %i.akv, align 8, !tbaa !9
  %i.cab = load <2 x float>, ptr %i.aet, align 8, !tbaa !9
  %i.cac = fadd <2 x float> %i.caa, %i.cab
  store <2 x float> %i.cac, ptr %8, align 8
  %i.cad = getelementptr inbounds nuw i8, ptr %i.bzt, i64 5472
  %i.cae = getelementptr inbounds nuw i8, ptr %i.bzt, i64 5752
  %i.caf = load float, ptr %i.cad, align 4, !tbaa !274
  %i.cag = load <4 x float>, ptr %i.cae, align 4, !tbaa !9
  %i.cah = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.caf, i64 3
  %i.cai = fmul <4 x float> %i.cag, %i.cah        ; 3 uses
  %i.caj = fcmp olt <4 x float> %i.cai, zeroinitializer
  %i.cak = fcmp ogt <4 x float> %i.cai, splat (float 1.000000e+00)
  %i.cal = select <4 x i1> %i.cak, <4 x float> splat (float 1.000000e+00), <4 x float> %i.cai
  %i.cam = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cal, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.can = select <4 x i1> %i.caj, <4 x float> splat (float 5.000000e-01), <4 x float> %i.cam
  %i.cao = fptosi <4 x float> %i.can to <4 x i32>
  %i.cap = shl <4 x i32> %i.cao, <i32 0, i32 8, i32 16, i32 24>
  %i.caq = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.cap)
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(196) %i.bzz, ptr noundef nonnull align 4 dereferenceable(8) %i.akv, ptr noundef nonnull align 4 dereferenceable(8) %8, i32 noundef %i.caq, float noundef %i.bzu, i32 noundef 0, float noundef %i.bzv)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  br label %bb.md

bb.md:                                            ; preds = %bb.mc, %bb.mb, %.loopexit.i
  %i.car = load i8, ptr %i.bdp, align 8, !tbaa !862 ; 3 uses
  %.not45.i.i = icmp eq i8 %i.car, -1
  br i1 %.not45.i.i, label %bb.mj, label %bb.me

bb.me:                                            ; preds = %bb.md
  %i.cas = sext i8 %i.car to i64
  %i.cat = getelementptr inbounds [28 x i8], ptr @_ZL17resize_border_def, i64 %i.cas ; 4 uses
  %i.cau = load float, ptr %i.akv, align 8, !tbaa !447 ; 5 uses
  %i.cav = load float, ptr %i.akw, align 4, !tbaa !598 ; 5 uses
  %i.caw = load float, ptr %i.aet, align 8, !tbaa !803
  %i.cax = fadd float %i.cau, %i.caw
  %i.cay = load float, ptr %i.bdt, align 4, !tbaa !804
  %i.caz = fadd float %i.cav, %i.cay
  %i.cba = fadd float %i.cax, -1.000000e+00       ; 3 uses
  %i.cbb = fadd float %i.caz, -1.000000e+00       ; 4 uses
  switch i8 %i.car, label %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit.i.i [
    i8 0, label %bb.mf
    i8 1, label %bb.mg
    i8 2, label %bb.mh
    i8 3, label %bb.mi
  ]

bb.mf:                                            ; preds = %bb.me
  %i.cbc = fadd float %i.bzu, %i.cav
  %i.cbd = fadd float %i.cau, 0.000000e+00
  %i.cbe = fsub float %i.cbb, %i.bzu
  %.sroa.045.0.vec.insert.i.i.i = insertelement <2 x float> poison, float %i.cau, i64 0
  %.sroa.045.4.vec.insert.i.i.i = insertelement <2 x float> %.sroa.045.0.vec.insert.i.i.i, float %i.cbc, i64 1
  %.sroa.10.8.vec.insert.i.i.i = insertelement <2 x float> poison, float %i.cbd, i64 0
  %.sroa.10.12.vec.insert.i.i.i = insertelement <2 x float> %.sroa.10.8.vec.insert.i.i.i, float %i.cbe, i64 1
  br label %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit.i.i

bb.mg:                                            ; preds = %bb.me
  %.sroa.9.8.vec.insert.i.i.i = insertelement <2 x float> poison, float %i.cba, i64 0 ; 2 uses
  %i.cbf = fadd float %i.bzu, %i.cav
  %i.cbg = fsub float %i.cbb, %i.bzu
  %.sroa.045.4.vec.insert54.i.i.i = insertelement <2 x float> %.sroa.9.8.vec.insert.i.i.i, float %i.cbf, i64 1
  %.sroa.10.12.vec.insert67.i.i.i = insertelement <2 x float> %.sroa.9.8.vec.insert.i.i.i, float %i.cbg, i64 1
  br label %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit.i.i

bb.mh:                                            ; preds = %bb.me
  %i.cbh = fadd float %i.bzu, %i.cau
  %34 = fsub float %i.cba, %i.bzu
  %35 = fadd float %i.cav, 0.000000e+00
  %.sroa.045.0.vec.insert50.i.i.i.a = insertelement <2 x float> poison, float %i.cbh, i64 0
  %.sroa.045.4.vec.insert56.i.i.i = insertelement <2 x float> %.sroa.045.0.vec.insert50.i.i.i.a, float %i.cav, i64 1
  %.sroa.10.8.vec.insert63.i.i.i = insertelement <2 x float> poison, float %34, i64 0
  %.sroa.10.12.vec.insert69.i.i.i = insertelement <2 x float> %.sroa.10.8.vec.insert63.i.i.i, float %35, i64 1
  br label %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit.i.i

bb.mi:                                            ; preds = %bb.me
  %i.cbi = fadd float %i.bzu, %i.cau
  %i.cbj = fsub float %i.cba, %i.bzu
  %.sroa.045.0.vec.insert52.i.i.i = insertelement <2 x float> poison, float %i.cbi, i64 0
  %.sroa.045.4.vec.insert58.i.i.i = insertelement <2 x float> %.sroa.045.0.vec.insert52.i.i.i, float %i.cbb, i64 1
  %.sroa.10.8.vec.insert65.i.i.i = insertelement <2 x float> poison, float %i.cbj, i64 0
  %.sroa.10.12.vec.insert71.i.i.i = insertelement <2 x float> %.sroa.10.8.vec.insert65.i.i.i, float %i.cbb, i64 1
  br label %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit.i.i

_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit.i.i: ; preds = %bb.mi, %bb.mh, %bb.mg, %bb.mf, %bb.me
  %.sroa.045.0.i.i.i = phi <2 x float> [ %.sroa.045.4.vec.insert58.i.i.i, %bb.mi ], [ %.sroa.045.4.vec.insert.i.i.i, %bb.mf ], [ %.sroa.045.4.vec.insert54.i.i.i, %bb.mg ], [ %.sroa.045.4.vec.insert56.i.i.i, %bb.mh ], [ zeroinitializer, %bb.me ] ; 3 uses
  %.sroa.10.0.i.i.i = phi <2 x float> [ %.sroa.10.12.vec.insert71.i.i.i, %bb.mi ], [ %.sroa.10.12.vec.insert.i.i.i, %bb.mf ], [ %.sroa.10.12.vec.insert67.i.i.i, %bb.mg ], [ %.sroa.10.12.vec.insert69.i.i.i, %bb.mh ], [ zeroinitializer, %bb.me ]
  %i.cbk = load ptr, ptr %i.vl, align 8, !tbaa !295
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  %i.cbl = getelementptr inbounds nuw i8, ptr %i.cat, i64 8
  %i.cbm = load <2 x float>, ptr %i.cbl, align 4, !tbaa !9
  %i.cbn = fsub <2 x float> %.sroa.10.0.i.i.i, %.sroa.045.0.i.i.i ; 2 uses
  %i.cbo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cbn, <2 x float> %i.cbm, <2 x float> %.sroa.045.0.i.i.i)
  %i.cbp = fadd <2 x float> %i.cbo, splat (float 5.000000e-01)
  %i.cbq = load <2 x float>, ptr %i.cat, align 4, !tbaa !9
  %i.cbr = insertelement <2 x float> poison, float %i.bzu, i64 0
  %i.cbs = shufflevector <2 x float> %i.cbr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cbt = fmul <2 x float> %i.cbs, %i.cbq        ; 2 uses
  %i.cbu = fadd <2 x float> %i.cbp, %i.cbt
  store <2 x float> %i.cbu, ptr %9, align 8
  %i.cbv = getelementptr inbounds nuw i8, ptr %i.cat, i64 24
  %i.cbw = load float, ptr %i.cbv, align 4, !tbaa !893 ; 4 uses
  %i.cbx = fadd float %i.cbw, f0xBF490FDB
  call void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(196) %i.cbk, ptr noundef nonnull align 4 dereferenceable(8) %9, float noundef %i.bzu, float noundef %i.cbx, float noundef %i.cbw, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  %i.cby = load ptr, ptr %i.vl, align 8, !tbaa !295
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  %i.cbz = getelementptr inbounds nuw i8, ptr %i.cat, i64 16
  %i.cca = load <2 x float>, ptr %i.cbz, align 4, !tbaa !9
  %i.ccb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cbn, <2 x float> %i.cca, <2 x float> %.sroa.045.0.i.i.i)
  %i.ccc = fadd <2 x float> %i.ccb, splat (float 5.000000e-01)
  %i.ccd = fadd <2 x float> %i.cbt, %i.ccc
  store <2 x float> %i.ccd, ptr %10, align 8
  %i.cce = fadd float %i.cbw, f0x3F490FDB
  call void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(196) %i.cby, ptr noundef nonnull align 4 dereferenceable(8) %10, float noundef %i.bzu, float noundef %i.cbw, float noundef %i.cce, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  %i.ccf = load ptr, ptr %i.vl, align 8, !tbaa !295 ; 3 uses
  %i.ccg = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 2 uses
  %i.cch = getelementptr inbounds nuw i8, ptr %i.ccg, i64 5472
  %i.cci = getelementptr inbounds nuw i8, ptr %i.ccg, i64 6136
  %i.ccj = load float, ptr %i.cch, align 4, !tbaa !274
  %i.cck = load <4 x float>, ptr %i.cci, align 4, !tbaa !9
  %i.ccl = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.ccj, i64 3
  %i.ccm = fmul <4 x float> %i.cck, %i.ccl        ; 3 uses
  %i.ccn = fcmp olt <4 x float> %i.ccm, zeroinitializer
  %i.cco = fcmp ogt <4 x float> %i.ccm, splat (float 1.000000e+00)
  %i.ccp = select <4 x i1> %i.cco, <4 x float> splat (float 1.000000e+00), <4 x float> %i.ccm
  %i.ccq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ccp, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.ccr = select <4 x i1> %i.ccn, <4 x float> splat (float 5.000000e-01), <4 x float> %i.ccq
  %i.ccs = fptosi <4 x float> %i.ccr to <4 x i32>
  %i.cct = shl <4 x i32> %i.ccs, <i32 0, i32 8, i32 16, i32 24>
  %i.ccu = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.cct)
  %i.ccv = fcmp ole float %i.bzv, 2.000000e+00
  %i.ccw = select i1 %i.ccv, float 2.000000e+00, float %i.bzv
  %i.ccx = getelementptr inbounds nuw i8, ptr %i.ccf, i64 120 ; 2 uses
  %i.ccy = getelementptr inbounds nuw i8, ptr %i.ccf, i64 128
  %i.ccz = load ptr, ptr %i.ccy, align 8, !tbaa !890
  %i.cda = load i32, ptr %i.ccx, align 8, !tbaa !891
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif(ptr noundef nonnull align 8 dereferenceable(196) %i.ccf, ptr noundef %i.ccz, i32 noundef %i.cda, i32 noundef %i.ccu, i32 noundef 0, float noundef %i.ccw)
  store i32 0, ptr %i.ccx, align 8, !tbaa !891
  br label %bb.mj

bb.mj:                                            ; preds = %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit.i.i, %bb.md
  %i.cdb = getelementptr inbounds nuw i8, ptr %i.bzt, i64 5544
  %i.cdc = load float, ptr %i.cdb, align 8, !tbaa !318 ; 2 uses
  %i.cdd = fcmp ogt float %i.cdc, 0.000000e+00
  br i1 %i.cdd, label %bb.mk, label %_ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbiPKjf.exit

bb.mk:                                            ; preds = %bb.mj
  %i.cde = load i32, ptr %i.aeu, align 4, !tbaa !428
  %i.cdf = and i32 %i.cde, 1
  %.not46.i.i = icmp eq i32 %i.cdf, 0
  br i1 %.not46.i.i, label %bb.ml, label %_ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbiPKjf.exit

bb.ml:                                            ; preds = %bb.mk
  %i.cdg = load float, ptr %i.akw, align 4, !tbaa !598
  %i.cdh = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 4 uses
  %i.cdi = getelementptr inbounds nuw i8, ptr %i.cdh, i64 6532
  %i.cdj = load float, ptr %i.cdi, align 4, !tbaa !615
  %i.cdk = load float, ptr %i.ya, align 8, !tbaa !342
  %i.cdl = fmul float %i.cdj, %i.cdk              ; 2 uses
  %i.cdm = load ptr, ptr %i.yd, align 8, !tbaa !616 ; 2 uses
  %.not.i.i.i214.i = icmp eq ptr %i.cdm, null
  br i1 %.not.i.i.i214.i, label %_ZNK11ImGuiWindow14TitleBarHeightEv.exit.i215.i, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  %i.cdn = getelementptr inbounds nuw i8, ptr %i.cdm, i64 608
  %i.cdo = load float, ptr %i.cdn, align 8, !tbaa !342
  %i.cdp = fmul float %i.cdl, %i.cdo
  br label %_ZNK11ImGuiWindow14TitleBarHeightEv.exit.i215.i

_ZNK11ImGuiWindow14TitleBarHeightEv.exit.i215.i:  ; preds = %bb.mm, %bb.ml
  %.0.i.i.i216.i = phi float [ %i.cdp, %bb.mm ], [ %i.cdl, %bb.ml ]
  %i.cdq = getelementptr inbounds nuw i8, ptr %i.cdh, i64 5536
  %i.cdr = load float, ptr %i.cdq, align 4, !tbaa !301
  %i.cds = call float @llvm.fmuladd.f32(float %i.cdr, float 2.000000e+00, float %.0.i.i.i216.i)
  %i.cdt = fadd float %i.cdg, %i.cds
  %i.cdu = fadd float %i.cdt, -1.000000e+00       ; 2 uses
  %i.cdv = load ptr, ptr %i.vl, align 8, !tbaa !295
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #39
  %i.cdw = load float, ptr %i.akv, align 8, !tbaa !447 ; 2 uses
  %i.cdx = fadd float %i.bzv, %i.cdw
  store float %i.cdx, ptr %11, align 4, !tbaa !151
  %i.cdy = getelementptr inbounds nuw i8, ptr %11, i64 4
  store float %i.cdu, ptr %i.cdy, align 4, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #39
  %i.cdz = load float, ptr %i.aet, align 8, !tbaa !803
  %i.cea = fadd float %i.cdw, %i.cdz
  %i.ceb = fsub float %i.cea, %i.bzv
  store float %i.ceb, ptr %12, align 4, !tbaa !151
  %i.cec = getelementptr inbounds nuw i8, ptr %12, i64 4
  store float %i.cdu, ptr %i.cec, align 4, !tbaa !152
  %i.ced = getelementptr inbounds nuw i8, ptr %i.cdh, i64 5472
  %i.cee = getelementptr inbounds nuw i8, ptr %i.cdh, i64 5752
  %i.cef = load float, ptr %i.ced, align 4, !tbaa !274
  %i.ceg = load <4 x float>, ptr %i.cee, align 4, !tbaa !9
  %i.ceh = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.cef, i64 3
  %i.cei = fmul <4 x float> %i.ceg, %i.ceh        ; 3 uses
  %i.cej = fcmp olt <4 x float> %i.cei, zeroinitializer
  %i.cek = fcmp ogt <4 x float> %i.cei, splat (float 1.000000e+00)
  %i.cel = select <4 x i1> %i.cek, <4 x float> splat (float 1.000000e+00), <4 x float> %i.cei
  %i.cem = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cel, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.cen = select <4 x i1> %i.cej, <4 x float> splat (float 5.000000e-01), <4 x float> %i.cem
  %i.ceo = fptosi <4 x float> %i.cen to <4 x i32>
  %i.cep = shl <4 x i32> %i.ceo, <i32 0, i32 8, i32 16, i32 24>
  %i.ceq = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.cep)
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(196) %i.cdv, ptr noundef nonnull align 4 dereferenceable(8) %11, ptr noundef nonnull align 4 dereferenceable(8) %12, i32 noundef %i.ceq, float noundef %i.cdc)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  br label %_ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbiPKjf.exit

_ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbiPKjf.exit: ; preds = %bb.kr, %bb.mj, %bb.mk, %_ZNK11ImGuiWindow14TitleBarHeightEv.exit.i215.i
  br i1 %.13171085, label %bb.mn, label %bb.mo

bb.mn:                                            ; preds = %_ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbiPKjf.exit
  %i.cer = getelementptr inbounds nuw i8, ptr %.01057, i64 624
  store ptr %i.cer, ptr %i.vl, align 8, !tbaa !295
  br label %bb.mo

bb.mo:                                            ; preds = %bb.mn, %_ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbiPKjf.exit
  %i.ces = load ptr, ptr %i.bix, align 8, !tbaa !699
  %i.cet = icmp eq ptr %i.ces, %.01057
  br i1 %i.cet, label %bb.mp, label %bb.mr

bb.mp:                                            ; preds = %bb.mo
  %i.ceu = load float, ptr %i.ald, align 8, !tbaa !861 ; 3 uses
  %i.cev = getelementptr inbounds nuw i8, ptr %i.g, i64 5488
  %i.cew = load float, ptr %i.cev, align 8, !tbaa !876 ; 2 uses
  %i.cex = fcmp oge float %i.ceu, %i.cew
  %i.cey = select i1 %i.cex, float %i.ceu, float %i.cew
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #39
  %i.cez = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.cfa = load float, ptr %i.alk, align 8, !tbaa !297 ; 2 uses
  %i.cfb = load <2 x float>, ptr %i.akv, align 8, !tbaa !9 ; 2 uses
  %i.cfc = load <2 x float>, ptr %i.aet, align 8, !tbaa !9
  %i.cfd = fadd <2 x float> %i.cfb, %i.cfc
  %i.cfe = shufflevector <2 x float> %i.cfb, <2 x float> %i.cfd, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.cff = insertelement <4 x float> poison, float %i.cfa, i64 0
  %i.cfg = shufflevector <4 x float> %i.cff, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cfh = fsub <4 x float> %i.cfe, %i.cfg
  %i.cfi = fadd <4 x float> %i.cfe, %i.cfg
  %i.cfj = shufflevector <4 x float> %i.cfh, <4 x float> %i.cfi, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 5 uses
  store <4 x float> %i.cfj, ptr %27, align 16, !tbaa !9
  %i.cfk = load <4 x float>, ptr %23, align 16    ; 2 uses
  %i.cfl = fcmp ole <4 x float> %i.cfk, %i.cfj
  %i.cfm = fcmp oge <4 x float> %i.cfk, %i.cfj
  %i.cfn = shufflevector <4 x i1> %i.cfm, <4 x i1> %i.cfl, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cfo = freeze <4 x i1> %i.cfn
  %i.cfp = bitcast <4 x i1> %i.cfo to i4
  %i.cfq = icmp eq i4 %i.cfp, -1
  br i1 %i.cfq, label %bb.mq, label %_ZNK6ImRect8ContainsERKS_.exit687.thread

bb.mq:                                            ; preds = %bb.mp
  %i.cfr = fsub float -1.000000e+00, %i.cfa
  %i.cfs = insertelement <4 x float> poison, float %i.cfr, i64 0
  %i.cft = shufflevector <4 x float> %i.cfs, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cfu = fsub <4 x float> %i.cfj, %i.cft
  %i.cfv = fadd <4 x float> %i.cfj, %i.cft
  %i.cfw = shufflevector <4 x float> %i.cfu, <4 x float> %i.cfv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.cfw, ptr %27, align 16, !tbaa !9
  br label %_ZNK6ImRect8ContainsERKS_.exit687.thread

_ZNK6ImRect8ContainsERKS_.exit687.thread:         ; preds = %bb.mp, %bb.mq
  %.0308 = phi float [ %i.ceu, %bb.mq ], [ %i.cey, %bb.mp ]
  %i.cfx = load ptr, ptr %i.vl, align 8, !tbaa !295
  %i.cfy = getelementptr inbounds nuw i8, ptr %i.g, i64 8012
  %i.cfz = load float, ptr %i.cfy, align 4, !tbaa !700
  %i.cga = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 2 uses
  %i.cgb = getelementptr inbounds nuw i8, ptr %i.cga, i64 5472
  %i.cgc = getelementptr inbounds nuw i8, ptr %i.cga, i64 6472
  %i.cgd = load float, ptr %i.cgb, align 4, !tbaa !274
  %i.cge = load <4 x float>, ptr %i.cgc, align 4, !tbaa !9
  %i.cgf = fmul float %i.cfz, %i.cgd
  %i.cgg = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.cgf, i64 3
  %i.cgh = fmul <4 x float> %i.cge, %i.cgg        ; 3 uses
  %i.cgi = fcmp olt <4 x float> %i.cgh, zeroinitializer
  %i.cgj = fcmp ogt <4 x float> %i.cgh, splat (float 1.000000e+00)
  %i.cgk = select <4 x i1> %i.cgj, <4 x float> splat (float 1.000000e+00), <4 x float> %i.cgh
  %i.cgl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cgk, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.cgm = select <4 x i1> %i.cgi, <4 x float> splat (float 5.000000e-01), <4 x float> %i.cgl
  %i.cgn = fptosi <4 x float> %i.cgm to <4 x i32>
  %i.cgo = shl <4 x i32> %i.cgn, <i32 0, i32 8, i32 16, i32 24>
  %i.cgp = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.cgo)
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(196) %i.cfx, ptr noundef nonnull align 4 dereferenceable(8) %27, ptr noundef nonnull align 4 dereferenceable(8) %i.cez, i32 noundef %i.cgp, float noundef %.0308, i32 noundef 0, float noundef 3.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #39
  br label %bb.mr

end_hunk_5
begin_hunk_6_@_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode:bb.a
  %i.j = fcmp olt float %i.i, 0.000000e+00        ; 2 uses
  %i.k = icmp eq i32 %1, 2
  %or.cond = and i1 %i.k, %i.j
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 5364
  %i.m = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.c
  %i.n = load float, ptr %i.m, align 4, !tbaa !9
  %i.o = fcmp oge float %i.n, 0.000000e+00
  %i.p = select i1 %i.o, float 1.000000e+00, float 0.000000e+00
  br label %bb.w

bb.e:                                             ; preds = %bb.c
  br i1 %i.j, label %bb.w, label %bb.f

bb.f:                                             ; preds = %bb.e
  switch i32 %1, label %bb.w [
    i32 1, label %bb.g
    i32 3, label %bb.h
    i32 4, label %bb.m
    i32 5, label %bb.r
  ]

bb.g:                                             ; preds = %bb.f
  %i.q = fcmp oeq float %i.i, 0.000000e+00
  %i.r = select i1 %i.q, float 1.000000e+00, float 0.000000e+00
  br label %bb.w

bb.h:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.t = load float, ptr %i.s, align 8, !tbaa !641
  %i.u = fsub float %i.i, %i.t                    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 148
  %i.w = load float, ptr %i.v, align 4, !tbaa !702
  %i.x = fmul float %i.w, 7.200000e-01            ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.z = load float, ptr %i.y, align 8, !tbaa !703
  %i.aa = fmul float %i.z, 8.000000e-01           ; 2 uses
  %i.ab = fcmp oeq float %i.i, 0.000000e+00
  br i1 %i.ab, label %_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = fcmp ult float %i.u, %i.i
  br i1 %i.ac, label %bb.j, label %_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = fcmp ugt float %i.aa, 0.000000e+00
  %i.ae = fcmp olt float %i.u, %i.x               ; 2 uses
  br i1 %i.ad, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = fcmp oge float %i.i, %i.x
  %i.ag = and i1 %i.ae, %i.af
  %i.ah = zext i1 %i.ag to i32
  br label %_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit

bb.l:                                             ; preds = %bb.j
  %i.ai = insertelement <2 x float> poison, float %i.i, i64 0
  %i.aj = insertelement <2 x float> %i.ai, float %i.u, i64 1
  %i.ak = insertelement <2 x float> poison, float %i.x, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = fsub <2 x float> %i.aj, %i.al
  %i.an = fcmp olt float %i.i, %i.x
  %i.ao = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = fdiv <2 x float> %i.am, %i.ap
  %i.ar = fptosi <2 x float> %i.aq to <2 x i32>
  %i.as = insertelement <2 x i1> poison, i1 %i.an, i64 0
  %i.at = insertelement <2 x i1> %i.as, i1 %i.ae, i64 1
  %i.au = select <2 x i1> %i.at, <2 x i32> splat (i32 -1), <2 x i32> %i.ar ; 2 uses
  %shift = shufflevector <2 x i32> %i.au, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = sub nsw <2 x i32> %i.au, %shift
  %i.av = extractelement <2 x i32> %foldExtExtBinop, i64 0
  br label %_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit

_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit:   ; preds = %bb.h, %bb.i, %bb.k, %bb.l
  %.0.i = phi i32 [ %i.av, %bb.l ], [ 1, %bb.h ], [ %i.ah, %bb.k ], [ 0, %bb.i ]
  %i.aw = sitofp i32 %.0.i to float
  br label %bb.w

bb.m:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ay = load float, ptr %i.ax, align 8, !tbaa !641
  %i.az = fsub float %i.i, %i.ay                  ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 148
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !702
  %i.bc = fmul float %i.bb, 1.250000e+00          ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.be = load float, ptr %i.bd, align 8, !tbaa !703
  %i.bf = fmul float %i.be, 2.000000e+00          ; 2 uses
  %i.bg = fcmp oeq float %i.i, 0.000000e+00
  br i1 %i.bg, label %_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit34, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = fcmp ult float %i.az, %i.i
  br i1 %i.bh, label %bb.o, label %_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit34

bb.o:                                             ; preds = %bb.n
  %i.bi = fcmp ugt float %i.bf, 0.000000e+00
  %i.bj = fcmp olt float %i.az, %i.bc             ; 2 uses
  br i1 %i.bi, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = fcmp oge float %i.i, %i.bc
  %i.bl = and i1 %i.bj, %i.bk
  %i.bm = zext i1 %i.bl to i32
  br label %_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit34

bb.q:                                             ; preds = %bb.o
  %i.bn = insertelement <2 x float> poison, float %i.i, i64 0
  %i.bo = insertelement <2 x float> %i.bn, float %i.az, i64 1
  %i.bp = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = fsub <2 x float> %i.bo, %i.bq
  %i.bs = fcmp olt float %i.i, %i.bc
  %i.bt = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = fdiv <2 x float> %i.br, %i.bu
  %i.bw = fptosi <2 x float> %i.bv to <2 x i32>
  %i.bx = insertelement <2 x i1> poison, i1 %i.bs, i64 0
  %i.by = insertelement <2 x i1> %i.bx, i1 %i.bj, i64 1
  %i.bz = select <2 x i1> %i.by, <2 x i32> splat (i32 -1), <2 x i32> %i.bw ; 2 uses
  %shift45 = shufflevector <2 x i32> %i.bz, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop46 = sub nsw <2 x i32> %i.bz, %shift45
  %i.ca = extractelement <2 x i32> %foldExtExtBinop46, i64 0
  br label %_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit34

_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit34: ; preds = %bb.m, %bb.n, %bb.p, %bb.q
  %.0.i33 = phi i32 [ %i.ca, %bb.q ], [ 1, %bb.m ], [ %i.bm, %bb.p ], [ 0, %bb.n ]
  %i.cb = sitofp i32 %.0.i33 to float
  br label %bb.w

bb.r:                                             ; preds = %bb.f
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.cd = load float, ptr %i.cc, align 8, !tbaa !641
  %i.ce = fsub float %i.i, %i.cd                  ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 148
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !702
  %i.ch = fmul float %i.cg, 7.200000e-01          ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.cj = load float, ptr %i.ci, align 8, !tbaa !703
  %i.ck = fmul float %i.cj, 3.000000e-01          ; 2 uses
  %i.cl = fcmp oeq float %i.i, 0.000000e+00
  br i1 %i.cl, label %_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit36, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cm = fcmp ult float %i.ce, %i.i
  br i1 %i.cm, label %bb.t, label %_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit36

bb.t:                                             ; preds = %bb.s
  %i.cn = fcmp ugt float %i.ck, 0.000000e+00
  %i.co = fcmp olt float %i.ce, %i.ch             ; 2 uses
  br i1 %i.cn, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cp = fcmp oge float %i.i, %i.ch
  %i.cq = and i1 %i.co, %i.cp
  %i.cr = zext i1 %i.cq to i32
  br label %_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit36

bb.v:                                             ; preds = %bb.t
  %i.cs = insertelement <2 x float> poison, float %i.i, i64 0
  %i.ct = insertelement <2 x float> %i.cs, float %i.ce, i64 1
  %i.cu = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = fsub <2 x float> %i.ct, %i.cv
  %i.cx = fcmp olt float %i.i, %i.ch
  %i.cy = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.da = fdiv <2 x float> %i.cw, %i.cz
  %i.db = fptosi <2 x float> %i.da to <2 x i32>
  %i.dc = insertelement <2 x i1> poison, i1 %i.cx, i64 0
  %i.dd = insertelement <2 x i1> %i.dc, i1 %i.co, i64 1
  %i.de = select <2 x i1> %i.dd, <2 x i32> splat (i32 -1), <2 x i32> %i.db ; 2 uses
  %shift48 = shufflevector <2 x i32> %i.de, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop49 = sub nsw <2 x i32> %i.de, %shift48
  %i.df = extractelement <2 x i32> %foldExtExtBinop49, i64 0
  br label %_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit36

_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit36: ; preds = %bb.r, %bb.s, %bb.u, %bb.v
  %.0.i35 = phi i32 [ %i.df, %bb.v ], [ 1, %bb.r ], [ %i.cr, %bb.u ], [ 0, %bb.s ]
  %i.dg = sitofp i32 %.0.i35 to float
  br label %bb.w

bb.w:                                             ; preds = %bb.d, %bb.g, %_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit, %_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit34, %_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit36, %bb.e, %bb.f, %bb.b
  %.1 = phi float [ %i.f, %bb.b ], [ %i.p, %bb.d ], [ 0.000000e+00, %bb.e ], [ %i.r, %bb.g ], [ %i.aw, %_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit ], [ %i.cb, %_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit34 ], [ %i.dg, %_ZN5ImGui25CalcTypematicRepeatAmountEffff.exit36 ], [ 0.000000e+00, %bb.f ]
  ret float %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local <2 x float> @_ZN5ImGui19GetNavInputAmount2dEi18ImGuiInputReadModeff(i32 noundef %0, i32 noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #38 {
bb.a:
  %i.a = and i32 %0, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef float @_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode(i32 noundef 17, i32 noundef %1)
  %i.c = tail call noundef float @_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode(i32 noundef 16, i32 noundef %1)
  %4 = fsub float %i.b, %i.c
  %i.d = tail call noundef float @_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode(i32 noundef 19, i32 noundef %1)
  %i.e = tail call noundef float @_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode(i32 noundef 18, i32 noundef %1)
  %5 = fsub float %i.d, %i.e
  %6 = fadd float %4, 0.000000e+00
  %.sroa.030.0.vec.insert34 = insertelement <2 x float> poison, float %6, i64 0
  %7 = fadd float %5, 0.000000e+00
  %.sroa.030.4.vec.insert53 = insertelement <2 x float> %.sroa.030.0.vec.insert34, float %7, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.030.0 = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.030.4.vec.insert53, %bb.b ] ; 2 uses
  %i.f = and i32 %0, 2
  %.not19 = icmp eq i32 %i.f, 0
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef float @_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode(i32 noundef 5, i32 noundef %1)
  %i.h = tail call noundef float @_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode(i32 noundef 4, i32 noundef %1)
  %i.i = tail call noundef float @_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode(i32 noundef 7, i32 noundef %1)
  %i.j = tail call noundef float @_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode(i32 noundef 6, i32 noundef %1)
  %i.k = insertelement <2 x float> poison, float %i.g, i64 0
  %i.l = insertelement <2 x float> %i.k, float %i.i, i64 1
  %i.m = insertelement <2 x float> poison, float %i.h, i64 0
  %i.n = insertelement <2 x float> %i.m, float %i.j, i64 1
  %i.o = fsub <2 x float> %i.l, %i.n
  %i.p = fadd <2 x float> %.sroa.030.0, %i.o
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.030.1 = phi <2 x float> [ %.sroa.030.0, %bb.c ], [ %i.p, %bb.d ] ; 2 uses
  %i.q = and i32 %0, 4
  %.not20 = icmp eq i32 %i.q, 0
  br i1 %.not20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = tail call noundef float @_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode(i32 noundef 9, i32 noundef %1)
  %i.s = tail call noundef float @_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode(i32 noundef 8, i32 noundef %1)
  %i.t = tail call noundef float @_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode(i32 noundef 11, i32 noundef %1)
  %i.u = tail call noundef float @_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode(i32 noundef 10, i32 noundef %1)
  %i.v = insertelement <2 x float> poison, float %i.r, i64 0
  %i.w = insertelement <2 x float> %i.v, float %i.t, i64 1
  %i.x = insertelement <2 x float> poison, float %i.s, i64 0
  %i.y = insertelement <2 x float> %i.x, float %i.u, i64 1
  %i.z = fsub <2 x float> %i.w, %i.y
  %i.aa = fadd <2 x float> %.sroa.030.1, %i.z
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.030.2 = phi <2 x float> [ %.sroa.030.1, %bb.e ], [ %i.aa, %bb.f ] ; 3 uses
  %i.ab = fcmp une float %2, 0.000000e+00
  br i1 %i.ab, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr @GImGui, align 8, !tbaa !49
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 892
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !9
  %i.af = fcmp ogt float %i.ae, 0.000000e+00
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = insertelement <2 x float> poison, float %2, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = fmul <2 x float> %i.ah, %.sroa.030.2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.030.3 = phi <2 x float> [ %i.ai, %bb.i ], [ %.sroa.030.2, %bb.h ], [ %.sroa.030.2, %bb.g ] ; 3 uses
  %i.aj = fcmp une float %3, 0.000000e+00
  br i1 %i.aj, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ak = load ptr, ptr @GImGui, align 8, !tbaa !49
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 896
  %i.am = load float, ptr %i.al, align 4, !tbaa !9
  %i.an = fcmp ogt float %i.am, 0.000000e+00
  br i1 %i.an, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ao = insertelement <2 x float> poison, float %3, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = fmul <2 x float> %i.ap, %.sroa.030.3
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.sroa.030.4 = phi <2 x float> [ %i.aq, %bb.l ], [ %.sroa.030.3, %bb.k ], [ %.sroa.030.3, %bb.j ]
  ret <2 x float> %.sroa.030.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5ImGui25NavInitRequestApplyResultEv() local_unnamed_addr #31 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7688
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !425  ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 7768
  %i.e = load i32, ptr %i.d, align 8, !tbaa !472  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 7752
  %i.g = load i32, ptr %i.f, align 8, !tbaa !593
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 7772
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 7696
  store i32 %i.e, ptr %i.i, align 8, !tbaa !319
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 7700
  store i32 0, ptr %i.j, align 4, !tbaa !592
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 872
  %i.l = zext i32 %i.g to i64                     ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.l
  store i32 %i.e, ptr %i.m, align 4, !tbaa !34
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 880
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !280
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 7760
  store i8 1, ptr %i.p, align 8, !tbaa !470
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 7766
  %i.r = load i8, ptr %i.q, align 2, !tbaa !695, !range !210, !noundef !211
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 7762
  store i8 0, ptr %i.t, align 2, !tbaa !320
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 7761
  store i8 1, ptr %i.u, align 1, !tbaa !471
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 7763
  store i8 1, ptr %i.v, align 1, !tbaa !421
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5ImGui25NavMoveRequestApplyResultEv() local_unnamed_addr #49 {
bb.a:
  %0 = alloca %struct.ImRect, align 8             ; 5 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 34 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7848
  %i.c = load i32, ptr %i.b, align 8, !tbaa !971
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 7840
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 7936
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 7944
  %i.g = load i32, ptr %i.f, align 8, !tbaa !972
  %.not78 = icmp eq i32 %i.g, 0
  br i1 %.not78, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 7792 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !725  ; 3 uses
  %i.j = and i32 %i.i, 512
  %.not89 = icmp eq i32 %i.j, 0
  br i1 %.not89, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = or i32 %i.i, 2048                        ; 2 uses
  store i32 %i.k, ptr %i.h, align 8, !tbaa !725
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = phi i32 [ %i.k, %bb.e ], [ %i.i, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 7696
  %i.n = load i32, ptr %i.m, align 8, !tbaa !319
  %.not90 = icmp ne i32 %i.n, 0
  %i.o = and i32 %i.l, 2048
  %i.p = icmp eq i32 %i.o, 0
  %or.cond = and i1 %.not90, %i.p
  br i1 %or.cond, label %bb.g, label %bb.ai

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 7762
  store i8 0, ptr %i.q, align 2, !tbaa !320
  br label %.sink.split

bb.h:                                             ; preds = %bb.b, %bb.c
  %.ph = phi ptr [ %i.e, %bb.c ], [ %i.d, %bb.b ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 7792 ; 3 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !725  ; 2 uses
  %i.t = and i32 %i.s, 32
  %.not79 = icmp eq i32 %i.t, 0
  br i1 %.not79, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 7896
  %i.v = load i32, ptr %i.u, align 8, !tbaa !1090 ; 2 uses
  %.not80 = icmp eq i32 %i.v, 0
  br i1 %.not80, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 7888
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 7696
  %i.y = load i32, ptr %i.x, align 8, !tbaa !319
  %.not81 = icmp eq i32 %i.v, %i.y
  %spec.select = select i1 %.not81, ptr %.ph, ptr %i.w
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.0 = phi ptr [ %.ph, %bb.h ], [ %spec.select, %bb.j ], [ %.ph, %bb.i ] ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 7936 ; 4 uses
  %.not82 = icmp eq ptr %.0, %i.z
  br i1 %.not82, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
end_hunk_6
