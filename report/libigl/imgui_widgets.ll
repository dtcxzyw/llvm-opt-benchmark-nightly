Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui_widgets?download=true
inline.NumInlined: 1519
inline.NumDeleted: 254
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN5ImGui10SelectableEPKcbiRK6ImVec2:bb.a
  %.not153 = icmp ne i32 %i.ej, 0
  %i.ek = and i32 %2, 1
  %.not154 = icmp eq i32 %i.ek, 0
  %or.cond164 = and i1 %.not154, %.not153
  br i1 %or.cond164, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.el = getelementptr inbounds nuw i8, ptr %i.c, i64 7372
  %i.em = load i32, ptr %i.el, align 4, !tbaa !172
  %i.en = and i32 %i.em, 32
  %.not155 = icmp eq i32 %i.en, 0
  br i1 %.not155, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN5ImGui17CloseCurrentPopupEv()
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao, %.critedge163
  br i1 %or.cond, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_ZN5ImGui11EndDisabledEv()
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.au

bb.au:                                            ; preds = %bb.n, %bb.at
  %.0 = phi i1 [ %.0129.shrunk177186, %bb.at ], [ false, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %bb.av

bb.av:                                            ; preds = %bb.a, %bb.au
  %.1 = phi i1 [ %.0, %bb.au ], [ false, %bb.a ]
  ret i1 %.1
}

declare void @_ZN5ImGui19SetItemDefaultFocusEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui5ComboEPKcPiPKS1_ii(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 {
bb.a:
  %5 = alloca %struct.ImVec2, align 8             ; 4 uses
  %6 = alloca %struct.ImVec2, align 4             ; 5 uses
  %7 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !22 ; 5 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !188    ; 3 uses
  %i.c = icmp sgt i32 %i.b, -1
  %i.d = icmp slt i32 %i.b, %3
  %or.cond.i = and i1 %i.c, %i.d
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = zext nneg i32 %i.b to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !149
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  %.not.i = icmp eq i32 %4, -1
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 7432
  %i.i = load i32, ptr %i.h, align 8, !tbaa !204
  %i.j = and i32 %i.i, 16
  %.not30.i = icmp eq i32 %i.j, 0
  br i1 %.not30.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  store <2 x float> zeroinitializer, ptr %5, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.k = icmp slt i32 %4, 1
  br i1 %i.k, label %_ZL31CalcMaxPopupHeightFromItemCounti.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 6528
  %i.m = load float, ptr %i.l, align 8, !tbaa !152
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 5552
  %i.o = load float, ptr %i.n, align 8, !tbaa !206 ; 2 uses
  %i.p = fadd float %i.m, %i.o
  %i.q = uitofp nneg i32 %4 to float
  %i.r = fneg float %i.o
  %i.s = tail call float @llvm.fmuladd.f32(float %i.p, float %i.q, float %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 5484
  %i.u = load float, ptr %i.t, align 4, !tbaa !207
  %i.v = tail call float @llvm.fmuladd.f32(float %i.u, float 2.000000e+00, float %i.s)
  br label %_ZL31CalcMaxPopupHeightFromItemCounti.exit.i

_ZL31CalcMaxPopupHeightFromItemCounti.exit.i:     ; preds = %bb.f, %bb.e
  %.0.i.i = phi float [ %i.v, %bb.f ], [ f0x7F7FFFFF, %bb.e ]
  store float f0x7F7FFFFF, ptr %6, align 4, !tbaa !144
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %.0.i.i, ptr %i.w, align 4, !tbaa !147
  call void @_ZN5ImGui28SetNextWindowSizeConstraintsERK6ImVec2S2_PFvP21ImGuiSizeCallbackDataEPv(ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef null, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %bb.g

bb.g:                                             ; preds = %_ZL31CalcMaxPopupHeightFromItemCounti.exit.i, %bb.d, %bb.c
  %i.x = call noundef zeroext i1 @_ZN5ImGui10BeginComboEPKcS1_i(ptr noundef %0, ptr noundef %.0, i32 noundef 0)
  br i1 %i.x, label %.preheader.i, label %_ZN5ImGui5ComboEPKcPiPFbPviPS1_ES3_ii.exit

.preheader.i:                                     ; preds = %bb.g
  %i.y = icmp sgt i32 %3, 0
  br i1 %i.y, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.z = zext nneg i32 %3 to i64
  br label %bb.h

._crit_edge.i:                                    ; preds = %bb.l
  call void @_ZN5ImGui8EndPopupEv()
  br i1 %.1.i, label %bb.m, label %_ZN5ImGui5ComboEPKcPiPFbPviPS1_ES3_ii.exit

bb.h:                                             ; preds = %bb.l, %.lr.ph.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ 0, %.lr.ph.i ] ; 4 uses
  %.02631.i = phi i1 [ %.1.i, %bb.l ], [ false, %.lr.ph.i ]
  %i.aa = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  call void @_ZN5ImGui6PushIDEi(i32 noundef %i.aa)
  %i.ab = load i32, ptr %1, align 4, !tbaa !188
  %i.ac = zext i32 %i.ab to i64
  %i.ad = icmp eq i64 %indvars.iv, %i.ac          ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  store <2 x float> zeroinitializer, ptr %7, align 8, !tbaa !141
  %i.ag = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef %i.af, i1 noundef zeroext %i.ad, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.aa, ptr %1, align 4, !tbaa !188
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1.i = phi i1 [ true, %bb.i ], [ %.02631.i, %bb.h ] ; 2 uses
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @_ZN5ImGui19SetItemDefaultFocusEv()
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @_ZN5ImGui5PopIDEv()
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next, %i.z
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.h, !llvm.loop !0

bb.m:                                             ; preds = %._crit_edge.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 7368
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !213
  call void @_ZN5ImGui14MarkItemEditedEj(i32 noundef %i.ai)
  br label %_ZN5ImGui5ComboEPKcPiPFbPviPS1_ES3_ii.exit

.critedge.i:                                      ; preds = %.preheader.i
  call void @_ZN5ImGui8EndPopupEv()
  br label %_ZN5ImGui5ComboEPKcPiPFbPviPS1_ES3_ii.exit

_ZN5ImGui5ComboEPKcPiPFbPviPS1_ES3_ii.exit:       ; preds = %bb.g, %._crit_edge.i, %bb.m, %.critedge.i
  %.027.i = phi i1 [ false, %bb.g ], [ true, %bb.m ], [ false, %._crit_edge.i ], [ false, %.critedge.i ]
  ret i1 %.027.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui5ComboEPKcPiS1_i(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %2, align 1, !tbaa !148
  %.not11 = icmp eq i8 %i.a, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.013 = phi i32 [ %i.e, %.lr.ph ], [ 0, %bb.a ]
  %.01012 = phi ptr [ %i.d, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.01012) #35
  %i.c = getelementptr i8, ptr %.01012, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 1        ; 2 uses
  %i.e = add nuw nsw i32 %.013, 1                 ; 2 uses
  %i.f = load i8, ptr %i.d, align 1, !tbaa !148
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !434

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.e, %.lr.ph ]
  %i.g = tail call noundef zeroext i1 @_ZN5ImGui5ComboEPKcPiPFbPviPS1_ES3_ii(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @_ZL24Items_SingleStringGetterPviPPKc, ptr noundef nonnull %2, i32 noundef %.0.lcssa, i32 noundef %3)
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @_ZL24Items_SingleStringGetterPviPPKc(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) #12 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !148     ; 2 uses
  %.not18 = icmp eq i8 %i.a, 0
  %i.b = icmp eq i32 %1, 0
  %or.cond19 = or i1 %.not18, %i.b
  br i1 %or.cond19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.021 = phi ptr [ %i.e, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %.01220 = phi i32 [ %i.f, %.lr.ph ], [ 0, %bb.a ]
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.021) #35
  %i.d = getelementptr i8, ptr %.021, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 1        ; 3 uses
  %i.f = add nuw nsw i32 %.01220, 1               ; 2 uses
  %i.g = load i8, ptr %i.e, align 1, !tbaa !148   ; 2 uses
  %.not = icmp eq i8 %i.g, 0
  %i.h = icmp eq i32 %1, %i.f
  %or.cond = select i1 %.not, i1 true, i1 %i.h
  br i1 %or.cond, label %._crit_edge, label %.lr.ph, !llvm.loop !435

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.e, %.lr.ph ]
  %.lcssa = phi i8 [ %i.a, %bb.a ], [ %i.g, %.lr.ph ]
  %.not15 = icmp ne i8 %.lcssa, 0                 ; 2 uses
  %.not16 = icmp ne ptr %2, null
  %or.cond17.not = and i1 %.not16, %.not15
  br i1 %or.cond17.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  store ptr %.0.lcssa, ptr %2, align 8, !tbaa !149
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret i1 %.not15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN5ImGui15DataTypeGetInfoEi(i32 noundef %0) local_unnamed_addr #13 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [32 x i8], ptr @_ZL13GDataTypeInfo, i64 %i.a
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN5ImGui20DataTypeFormatStringEPciiPKvPKc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = and i32 %2, -2
  switch i32 %i.a, label %bb.d [
    i32 4, label %bb.b
    i32 6, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %1 to i64
  %i.c = load i32, ptr %3, align 4, !tbaa !188
  %i.d = tail call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef %0, i64 noundef %i.b, ptr noundef %4, i32 noundef %i.c)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.e = sext i32 %1 to i64
  %i.f = load i64, ptr %3, align 8, !tbaa !190
  %i.g = tail call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef %0, i64 noundef %i.e, ptr noundef %4, i64 noundef %i.f)
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  switch i32 %2, label %bb.k [
    i32 8, label %bb.e
    i32 9, label %bb.f
    i32 0, label %bb.g
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.j
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = sext i32 %1 to i64
  %i.i = load float, ptr %3, align 4, !tbaa !141
  %i.j = fpext float %i.i to double
  %i.k = tail call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef %0, i64 noundef %i.h, ptr noundef %4, double noundef %i.j)
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.l = sext i32 %1 to i64
  %i.m = load double, ptr %3, align 8, !tbaa !219
  %i.n = tail call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef %0, i64 noundef %i.l, ptr noundef %4, double noundef %i.m)
  br label %bb.k

bb.g:                                             ; preds = %bb.d
  %i.o = sext i32 %1 to i64
  %i.p = load i8, ptr %3, align 1, !tbaa !148
  %i.q = sext i8 %i.p to i32
  %i.r = tail call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef %0, i64 noundef %i.o, ptr noundef %4, i32 noundef %i.q)
  br label %bb.k

bb.h:                                             ; preds = %bb.d
  %i.s = sext i32 %1 to i64
  %i.t = load i8, ptr %3, align 1, !tbaa !148
  %i.u = zext i8 %i.t to i32
  %i.v = tail call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef %0, i64 noundef %i.s, ptr noundef %4, i32 noundef %i.u)
  br label %bb.k

bb.i:                                             ; preds = %bb.d
  %i.w = sext i32 %1 to i64
  %i.x = load i16, ptr %3, align 2, !tbaa !220
  %i.y = sext i16 %i.x to i32
  %i.z = tail call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef %0, i64 noundef %i.w, ptr noundef %4, i32 noundef %i.y)
  br label %bb.k

bb.j:                                             ; preds = %bb.d
  %i.aa = sext i32 %1 to i64
  %i.ab = load i16, ptr %3, align 2, !tbaa !220
  %i.ac = zext i16 %i.ab to i32
  %i.ad = tail call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef %0, i64 noundef %i.aa, ptr noundef %4, i32 noundef %i.ac)
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %i.k, %bb.e ], [ %i.n, %bb.f ], [ %i.r, %bb.g ], [ %i.v, %bb.h ], [ %i.z, %bb.i ], [ %i.ad, %bb.j ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN5ImGui15DataTypeApplyOpEiiPvPKvS2_(i32 noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #14 {
bb.a:
  switch i32 %0, label %bb.ar [
    i32 0, label %bb.b
    i32 1, label %bb.i
    i32 2, label %bb.l
    i32 3, label %bb.s
    i32 4, label %bb.v
    i32 5, label %bb.aa
    i32 6, label %bb.ad
    i32 7, label %bb.ai
    i32 8, label %bb.al
    i32 9, label %bb.ao
  ]

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.ar [
    i32 43, label %bb.c
    i32 45, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.a = load i8, ptr %3, align 1, !tbaa !148     ; 3 uses
  %i.b = load i8, ptr %4, align 1, !tbaa !148     ; 4 uses
  %i.c = sext i8 %i.b to i32                      ; 2 uses
  %i.d = icmp slt i8 %i.b, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = sext i8 %i.a to i32
  %i.f = sub nsw i32 -128, %i.c
  %i.g = icmp sgt i32 %i.f, %i.e
  br i1 %i.g, label %_ZL18ImAddClampOverflowIaET_S0_S0_S0_S0_.exit, label %.thread.i

bb.e:                                             ; preds = %bb.c
  %.not.i = icmp ne i8 %i.b, 0
  %i.h = sext i8 %i.a to i32
  %i.i = sub nuw nsw i32 127, %i.c
  %i.j = icmp slt i32 %i.i, %i.h
  %or.cond = select i1 %.not.i, i1 %i.j, i1 false
  br i1 %or.cond, label %_ZL18ImAddClampOverflowIaET_S0_S0_S0_S0_.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.k = add i8 %i.b, %i.a
  br label %_ZL18ImAddClampOverflowIaET_S0_S0_S0_S0_.exit

_ZL18ImAddClampOverflowIaET_S0_S0_S0_S0_.exit:    ; preds = %bb.e, %bb.d, %.thread.i
  %.0.i = phi i8 [ %i.k, %.thread.i ], [ -128, %bb.d ], [ 127, %bb.e ]
  store i8 %.0.i, ptr %2, align 1, !tbaa !148
  br label %bb.ar

bb.f:                                             ; preds = %bb.b
  %i.l = load i8, ptr %3, align 1, !tbaa !148     ; 3 uses
  %i.m = load i8, ptr %4, align 1, !tbaa !148     ; 4 uses
  %i.n = sext i8 %i.m to i32                      ; 2 uses
  %i.o = icmp sgt i8 %i.m, 0
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = sext i8 %i.l to i32
  %i.q = or disjoint i32 %i.n, -128
  %i.r = icmp sgt i32 %i.q, %i.p
  br i1 %i.r, label %_ZL18ImSubClampOverflowIaET_S0_S0_S0_S0_.exit, label %.thread.i80

bb.h:                                             ; preds = %bb.f
  %i.s = icmp ne i8 %i.m, 0
  %i.t = sext i8 %i.l to i32
  %i.u = add nsw i32 %i.n, 127
  %i.v = icmp slt i32 %i.u, %i.t
  %or.cond112 = select i1 %i.s, i1 %i.v, i1 false
  br i1 %or.cond112, label %_ZL18ImSubClampOverflowIaET_S0_S0_S0_S0_.exit, label %.thread.i80

.thread.i80:                                      ; preds = %bb.h, %bb.g
  %i.w = sub i8 %i.l, %i.m
  br label %_ZL18ImSubClampOverflowIaET_S0_S0_S0_S0_.exit

_ZL18ImSubClampOverflowIaET_S0_S0_S0_S0_.exit:    ; preds = %bb.h, %bb.g, %.thread.i80
  %.0.i81 = phi i8 [ %i.w, %.thread.i80 ], [ -128, %bb.g ], [ 127, %bb.h ]
  store i8 %.0.i81, ptr %2, align 1, !tbaa !148
  br label %bb.ar

bb.i:                                             ; preds = %bb.a
  switch i32 %1, label %bb.ar [
    i32 43, label %bb.j
    i32 45, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.x = load i8, ptr %3, align 1, !tbaa !148
  %i.y = load i8, ptr %4, align 1, !tbaa !148
  %.0.i82 = tail call noundef i8 @llvm.uadd.sat.i8(i8 %i.y, i8 %i.x)
  store i8 %.0.i82, ptr %2, align 1, !tbaa !148
  br label %bb.ar

bb.k:                                             ; preds = %bb.i
  %i.z = load i8, ptr %3, align 1, !tbaa !148
  %i.aa = load i8, ptr %4, align 1, !tbaa !148
  %.0.i83 = tail call noundef i8 @llvm.usub.sat.i8(i8 %i.z, i8 %i.aa)
  store i8 %.0.i83, ptr %2, align 1, !tbaa !148
  br label %bb.ar

bb.l:                                             ; preds = %bb.a
  switch i32 %1, label %bb.ar [
    i32 43, label %bb.m
    i32 45, label %bb.p
  ]

bb.m:                                             ; preds = %bb.l
  %i.ab = load i16, ptr %3, align 2, !tbaa !220   ; 3 uses
  %i.ac = load i16, ptr %4, align 2, !tbaa !220   ; 4 uses
  %i.ad = sext i16 %i.ac to i32                   ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5ImGui11InputTextExEPKcS1_PciRK6ImVec2iPFiP26ImGuiInputTextCallbackDataEPv:bb.a
  %i.hw = trunc nuw i8 %i.hv to i1
  br i1 %i.hw, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb, %bb.az
  br label %bb.bd

bb.bd:                                            ; preds = %bb.ba, %bb.bb, %bb.bc, %bb.au
  %.2951 = phi i1 [ false, %bb.au ], [ true, %bb.bc ], [ %.1950, %bb.bb ], [ %.1950, %bb.ba ]
  %i.hx = and i32 %5, 8192
  %.not991 = icmp eq i32 %i.hx, 0
  br i1 %.not991, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hy = getelementptr inbounds nuw i8, ptr %i.g, i64 8504
  store i8 1, ptr %i.hy, align 8, !tbaa !473
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %.thread1307

.thread1307:                                      ; preds = %bb.ae, %bb.bf
  %.not1414 = phi i8 [ %i.ee, %bb.bf ], [ 0, %bb.ae ] ; 3 uses
  %i.hz = phi i1 [ %i.ef, %bb.bf ], [ %i.ea, %bb.ae ]
  %.0957 = phi ptr [ %i.eh, %bb.bf ], [ %i.cj, %bb.ae ] ; 3 uses
  %.3952 = phi i1 [ %.2951, %bb.bf ], [ false, %bb.ae ] ; 3 uses
  %i.ia = load i32, ptr %i.cm, align 4, !tbaa !165
  %i.ib = icmp ne i32 %i.ia, %i.x
  %or.cond12 = and i1 %i.hz, %i.ib
  br i1 %or.cond12, label %bb.bg, label %.thread1307.thread

bb.bg:                                            ; preds = %.thread1307
  call void @_ZN5ImGui11SetActiveIDEjP11ImGuiWindow(i32 noundef %i.x, ptr noundef nonnull %i.i)
  call void @_ZN5ImGui10SetFocusIDEjP11ImGuiWindow(i32 noundef %i.x, ptr noundef nonnull %i.i)
  call void @_ZN5ImGui11FocusWindowEP11ImGuiWindow(ptr noundef nonnull %i.i)
  %i.ic = getelementptr inbounds nuw i8, ptr %i.g, i64 7280 ; 2 uses
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !232
  %i.ie = and i32 %5, 67108992
  %or.cond1021.not.not = icmp eq i32 %i.ie, 0
  %spec.select1424.v = select i1 %or.cond1021.not.not, i32 3, i32 15
  %spec.select1424 = or i32 %i.id, %spec.select1424.v
  store i32 %spec.select1424, ptr %i.ic, align 8, !tbaa !232
  %i.if = getelementptr inbounds nuw i8, ptr %i.g, i64 7284 ; 2 uses
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !474
  %i.ih = or i32 %i.ig, 2
  store i32 %i.ih, ptr %i.if, align 4, !tbaa !474
  %i.ii = getelementptr inbounds nuw i8, ptr %i.g, i64 7288 ; 3 uses
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !475
  %spec.select.v = select i1 %i.o, i64 480, i64 384
  %spec.select = or i64 %i.ij, %spec.select.v     ; 2 uses
  store i64 %spec.select, ptr %i.ii, align 8, !tbaa !475
  %i.ik = and i32 %5, 1088
  %.not993 = icmp eq i32 %i.ik, 0
  br i1 %.not993, label %.thread1307.thread, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.il = or i64 %spec.select, 1
  store i64 %i.il, ptr %i.ii, align 8, !tbaa !475
  br label %.thread1307.thread

.thread1307.thread:                               ; preds = %.thread1304, %bb.bg, %bb.bh, %.thread1307
  %.39521569 = phi i1 [ %.3952, %.thread1307 ], [ %.3952, %bb.bg ], [ %.3952, %bb.bh ], [ false, %.thread1304 ] ; 2 uses
  %.09571560 = phi ptr [ %.0957, %.thread1307 ], [ %.0957, %bb.bg ], [ %.0957, %bb.bh ], [ null, %.thread1304 ] ; 2 uses
  %.not14141559 = phi i8 [ %.not1414, %.thread1307 ], [ %.not1414, %bb.bg ], [ %.not1414, %bb.bh ], [ 1, %.thread1304 ] ; 2 uses
  %i.im = load i32, ptr %i.cm, align 4, !tbaa !165 ; 2 uses
  %i.in = icmp eq i32 %i.im, %i.x
  %i.io = icmp eq ptr %.09571560, null            ; 3 uses
  %or.cond15 = and i1 %i.io, %i.in
  br i1 %or.cond15, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %.thread1307.thread
  call void @_ZN5ImGui13ClearActiveIDEv()
  br label %.sink.split

.sink.split:                                      ; preds = %bb.af, %bb.bi
  %.ph1687 = phi i1 [ %i.io, %bb.bi ], [ false, %bb.af ]
  %.not141415591682.ph = phi i8 [ %.not14141559, %bb.bi ], [ 1, %bb.af ]
  %.095715601681.ph = phi ptr [ null, %bb.bi ], [ %i.cg, %bb.af ]
  %.395215691680.ph = phi i1 [ %.39521569, %bb.bi ], [ false, %bb.af ]
  %i.ip = load i32, ptr %i.cm, align 4, !tbaa !165
  br label %bb.bj

bb.bj:                                            ; preds = %.sink.split, %.thread1307.thread
  %i.iq = phi i1 [ %i.io, %.thread1307.thread ], [ %.ph1687, %.sink.split ] ; 4 uses
  %.not141415591682 = phi i8 [ %.not14141559, %.thread1307.thread ], [ %.not141415591682.ph, %.sink.split ]
  %.095715601681 = phi ptr [ %.09571560, %.thread1307.thread ], [ %.095715601681.ph, %.sink.split ] ; 133 uses
  %.395215691680 = phi i1 [ %.39521569, %.thread1307.thread ], [ %.395215691680.ph, %.sink.split ] ; 2 uses
  %i.ir = phi i32 [ %i.im, %.thread1307.thread ], [ %i.ip, %.sink.split ]
  %i.is = icmp eq i32 %i.ir, %i.x                 ; 2 uses
  br i1 %i.is, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.it = getelementptr inbounds nuw i8, ptr %i.g, i64 1056
  %i.iu = load i8, ptr %i.it, align 8, !tbaa !164, !range !135, !noundef !136
  %not.or.cond18 = and i8 %i.iu, %.not141415591682
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.0953 = phi i8 [ %not.or.cond18, %bb.bk ], [ 0, %bb.bj ] ; 26 uses
  %.not1450 = xor i1 %i.iq, true
  %i.iv = select i1 %.not1450, i1 %i.do, i1 false
  %i.iw = select i1 %i.is, i1 true, i1 %i.iv      ; 10 uses
  br i1 %i.iq, label %.thread1308, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ix = getelementptr inbounds nuw i8, ptr %.095715601681, i64 80 ; 3 uses
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !463
  %i.iz = getelementptr inbounds nuw i8, ptr %.095715601681, i64 84 ; 3 uses
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !464
  %i.jb = icmp ne i32 %i.iy, %i.ja
  %or.cond24 = or i1 %.395215691680, %i.jb
  %spec.select1023 = select i1 %or.cond24, i1 %i.iw, i1 false ; 2 uses
  %i.jc = select i1 %i.q, i1 %i.iw, i1 false
  br i1 %i.jc, label %bb.bn, label %.thread1308

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  store ptr null, ptr %i.b, align 8, !tbaa !149
  %i.jd = getelementptr inbounds nuw i8, ptr %.095715601681, i64 16 ; 2 uses
  %i.je = add nsw i32 %3, 1                       ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.095715601681, i64 20 ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !245 ; 4 uses
  %.not = icmp slt i32 %3, %i.jg
  br i1 %.not, label %._ZN8ImVectorItE6resizeEi.exit1124_crit_edge, label %bb.bo

._ZN8ImVectorItE6resizeEi.exit1124_crit_edge:     ; preds = %bb.bn
  %.phi.trans.insert1451 = getelementptr inbounds nuw i8, ptr %.095715601681, i64 24
  %.pre1452 = load ptr, ptr %.phi.trans.insert1451, align 8, !tbaa !248
  br label %_ZN8ImVectorItE6resizeEi.exit1124

bb.bo:                                            ; preds = %bb.bn
  %.not.i.i1121 = icmp eq i32 %i.jg, 0
  br i1 %.not.i.i1121, label %_ZNK8ImVectorItE14_grow_capacityEi.exit.i1122, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jh = sdiv i32 %i.jg, 2
  %i.ji = add nsw i32 %i.jh, %i.jg
  br label %_ZNK8ImVectorItE14_grow_capacityEi.exit.i1122

_ZNK8ImVectorItE14_grow_capacityEi.exit.i1122:    ; preds = %bb.bp, %bb.bo
  %i.jj = phi i32 [ %i.ji, %bb.bp ], [ 8, %bb.bo ]
  %i.jk = call noundef i32 @llvm.smax.i32(i32 %i.jj, i32 %i.je) ; 2 uses
  %i.jl = sext i32 %i.jk to i64
  %i.jm = shl nsw i64 %i.jl, 1
  %i.jn = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.jm) ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.095715601681, i64 24 ; 3 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !246 ; 2 uses
  %.not6.i.i1123 = icmp eq ptr %i.jp, null
  br i1 %.not6.i.i1123, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_ZNK8ImVectorItE14_grow_capacityEi.exit.i1122
  %i.jq = load i32, ptr %i.jd, align 8, !tbaa !247
  %i.jr = sext i32 %i.jq to i64
  %i.js = shl nsw i64 %i.jr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.jn, ptr nonnull align 2 %i.jp, i64 %i.js, i1 false)
  %i.jt = load ptr, ptr %i.jo, align 8, !tbaa !246
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.jt)
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %_ZNK8ImVectorItE14_grow_capacityEi.exit.i1122
  store ptr %i.jn, ptr %i.jo, align 8, !tbaa !246
  store i32 %i.jk, ptr %i.jf, align 4, !tbaa !245
  br label %_ZN8ImVectorItE6resizeEi.exit1124

_ZN8ImVectorItE6resizeEi.exit1124:                ; preds = %._ZN8ImVectorItE6resizeEi.exit1124_crit_edge, %bb.br
  %i.ju = phi ptr [ %.pre1452, %._ZN8ImVectorItE6resizeEi.exit1124_crit_edge ], [ %i.jn, %bb.br ]
  store i32 %i.je, ptr %i.jd, align 8, !tbaa !247
  %i.jv = call noundef i32 @_Z17ImTextStrFromUtf8PtiPKcS1_PS1_(ptr noundef %i.ju, i32 noundef %i.je, ptr noundef %2, ptr noundef null, ptr noundef nonnull %i.b) ; 4 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.095715601681, i64 4
  store i32 %i.jv, ptr %i.jw, align 4, !tbaa !249
  %i.jx = load ptr, ptr %i.b, align 8, !tbaa !149
  %i.jy = ptrtoint ptr %i.jx to i64
  %i.jz = ptrtoint ptr %2 to i64
  %i.ka = sub i64 %i.jy, %i.jz
  %i.kb = trunc i64 %i.ka to i32
  %i.kc = getelementptr inbounds nuw i8, ptr %.095715601681, i64 8
  store i32 %i.kb, ptr %i.kc, align 8, !tbaa !250
  %i.kd = getelementptr inbounds nuw i8, ptr %.095715601681, i64 76 ; 2 uses
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !462
  %i.kf = call noundef i32 @llvm.smin.i32(i32 %i.ke, i32 %i.jv)
  store i32 %i.kf, ptr %i.kd, align 4, !tbaa !462
  %i.kg = load i32, ptr %i.ix, align 8, !tbaa !463
  %i.kh = call noundef i32 @llvm.smin.i32(i32 %i.kg, i32 %i.jv) ; 2 uses
  store i32 %i.kh, ptr %i.ix, align 8, !tbaa !463
  %i.ki = load i32, ptr %i.iz, align 4, !tbaa !464
  %i.kj = call noundef i32 @llvm.smin.i32(i32 %i.ki, i32 %i.jv) ; 2 uses
  store i32 %i.kj, ptr %i.iz, align 4, !tbaa !464
  %i.kk = icmp ne i32 %i.kh, %i.kj
  %i.kl = and i1 %spec.select1023, %i.kk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  br label %.thread1308

.thread1308:                                      ; preds = %bb.bl, %bb.bm, %_ZN8ImVectorItE6resizeEi.exit1124
  %.0944.in = phi i1 [ %i.kl, %_ZN8ImVectorItE6resizeEi.exit1124 ], [ %spec.select1023, %bb.bm ], [ false, %bb.bl ] ; 4 uses
  %or.cond33 = select i1 %i.iw, i1 true, i1 %.0944.in
  br i1 %or.cond33, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %.thread1308
  %i.km = load i32, ptr %i.cm, align 4, !tbaa !165
  %i.kn = icmp ne i32 %i.km, %i.x
  %i.ko = or i1 %i.kn, %i.iq
  %brmerge1026 = or i1 %i.q, %i.ko
  br i1 %brmerge1026, label %bb.bv, label %bb.bu

bb.bt:                                            ; preds = %.thread1308
  %brmerge1028 = or i1 %i.q, %i.iq
  br i1 %brmerge1028, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.kp = getelementptr inbounds nuw i8, ptr %.095715601681, i64 64
  %i.kq = load i8, ptr %i.kp, align 8, !tbaa !460, !range !135, !noundef !136
  %i.kr = trunc nuw i8 %i.kq to i1
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bs, %bb.bu
  %i.ks = phi i1 [ %i.kr, %bb.bu ], [ false, %bb.bt ], [ false, %bb.bs ] ; 2 uses
  %.not994 = icmp eq ptr %1, null
  br i1 %.not994, label %bb.bz, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  br i1 %i.ks, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.kt = getelementptr inbounds nuw i8, ptr %.095715601681, i64 40
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !259
  br label %bb.by

bb.by:                                            ; preds = %bb.bw, %bb.bx
  %i.kv = phi ptr [ %i.ku, %bb.bx ], [ %2, %bb.bw ]
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !148
  %i.kx = icmp eq i8 %i.kw, 0
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bv
  %i.ky = phi i1 [ false, %bb.bv ], [ %i.kx, %bb.by ] ; 4 uses
  %or.cond40 = select i1 %i.s, i1 true, i1 %i.ky  ; 3 uses
  br i1 %or.cond40, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.kz = getelementptr inbounds nuw i8, ptr %i.g, i64 6520 ; 2 uses
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !260
  %i.lb = call noundef ptr @_ZNK6ImFont9FindGlyphEt(ptr noundef nonnull align 8 dereferenceable(110) %i.la, i16 noundef zeroext 42) ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.g, i64 12152
  %i.ld = load ptr, ptr %i.kz, align 8, !tbaa !260 ; 4 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 20
  %i.lf = load float, ptr %i.le, align 4, !tbaa !261
  %i.lg = getelementptr inbounds nuw i8, ptr %i.g, i64 12172
  store float %i.lf, ptr %i.lg, align 4, !tbaa !261
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ld, i64 92
  %i.li = getelementptr inbounds nuw i8, ptr %i.g, i64 12244
  %i.lj = load <2 x float>, ptr %i.lh, align 4, !tbaa !141
  store <2 x float> %i.lj, ptr %i.li, align 4, !tbaa !141
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ld, i64 100
  %i.ll = load float, ptr %i.lk, align 4, !tbaa !476
  %i.lm = getelementptr inbounds nuw i8, ptr %i.g, i64 12252
  store float %i.ll, ptr %i.lm, align 4, !tbaa !476
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ld, i64 64
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !477
  %i.lp = getelementptr inbounds nuw i8, ptr %i.g, i64 12216
  store ptr %i.lo, ptr %i.lp, align 8, !tbaa !477
  %i.lq = getelementptr inbounds nuw i8, ptr %i.g, i64 12208
  store ptr %i.lb, ptr %i.lq, align 8, !tbaa !478
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lb, i64 4
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !480
  %i.lt = getelementptr inbounds nuw i8, ptr %i.g, i64 12168
  store float %i.ls, ptr %i.lt, align 8, !tbaa !481
  call void @_ZN5ImGui8PushFontEP6ImFont(ptr noundef nonnull %i.lc)
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.lu = load i32, ptr %i.cm, align 4, !tbaa !165
  %i.lv = icmp eq i32 %i.lu, %i.x
  br i1 %i.lv, label %bb.cc, label %bb.ds

bb.cc:                                            ; preds = %bb.cb
  %i.lw = getelementptr inbounds nuw i8, ptr %.095715601681, i64 8
  %i.lx = load i32, ptr %i.lw, align 8, !tbaa !250 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.095715601681, i64 3710
  store i8 0, ptr %i.ly, align 2, !tbaa !262
  %i.lz = getelementptr inbounds nuw i8, ptr %.095715601681, i64 68
  store i32 %3, ptr %i.lz, align 4, !tbaa !263
  %i.ma = getelementptr inbounds nuw i8, ptr %.095715601681, i64 3712
  store i32 %5, ptr %i.ma, align 8, !tbaa !264
  %i.mb = getelementptr inbounds nuw i8, ptr %.095715601681, i64 3720
  store ptr %6, ptr %i.mb, align 8, !tbaa !482
  %i.mc = getelementptr inbounds nuw i8, ptr %.095715601681, i64 3728
  store ptr %7, ptr %i.mc, align 8, !tbaa !483
  %i.md = getelementptr inbounds nuw i8, ptr %i.g, i64 304 ; 2 uses
  %i.me = load i8, ptr %i.md, align 8, !tbaa !164, !range !135, !noundef !136 ; 2 uses
  %i.mf = xor i8 %i.me, 1
  %i.mg = getelementptr inbounds nuw i8, ptr %i.g, i64 7273
  store i8 %i.mf, ptr %i.mg, align 1, !tbaa !265
  %i.mh = getelementptr inbounds nuw i8, ptr %i.g, i64 13156
  store i32 1, ptr %i.mh, align 4, !tbaa !484
  %i.mi = getelementptr inbounds nuw i8, ptr %i.g, i64 296
  %i.mj = load float, ptr %i.mi, align 8, !tbaa !485
  %i.mk = load float, ptr %9, align 8, !tbaa !185
  %i.ml = fsub float %i.mj, %i.mk
  %i.mm = load float, ptr %i.ae, align 4, !tbaa !153
  %i.mn = fsub float %i.ml, %i.mm
  %i.mo = getelementptr inbounds nuw i8, ptr %.095715601681, i64 72
  %i.mp = load float, ptr %i.mo, align 8, !tbaa !465
  %i.mq = fadd float %i.mn, %i.mp                 ; 2 uses
  br i1 %i.o, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.mr = getelementptr inbounds nuw i8, ptr %i.g, i64 300
  %i.ms = load float, ptr %i.mr, align 4, !tbaa !266
  %i.mt = getelementptr inbounds nuw i8, ptr %.2962, i64 220
  %i.mu = load float, ptr %i.mt, align 4, !tbaa !138
  %i.mv = fsub float %i.ms, %i.mu
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  %i.mw = getelementptr inbounds nuw i8, ptr %i.g, i64 6528
  %i.mx = load float, ptr %i.mw, align 8, !tbaa !152
  %i.my = fmul float %i.mx, 5.000000e-01
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.mz = phi float [ %i.mv, %bb.cd ], [ %i.my, %bb.ce ] ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.g, i64 201
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !486, !range !135, !noundef !136 ; 2 uses
  %i.nc = trunc nuw i8 %i.nb to i1                ; 3 uses
  br i1 %.395215691680, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %.not41 = xor i1 %i.cd, true
  %or.cond44 = or i1 %.not41, %i.nc
  br i1 %or.cond44, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.nd = getelementptr inbounds nuw i8, ptr %i.g, i64 1061
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !164, !range !135, !noundef !136
  %i.nf = trunc nuw i8 %i.ne to i1
  br i1 %i.nf, label %bb.ci, label %.thread1313

bb.ci:                                            ; preds = %bb.ch, %bb.cf
  %i.ng = getelementptr inbounds nuw i8, ptr %.095715601681, i64 76
  %i.nh = getelementptr inbounds nuw i8, ptr %.095715601681, i64 80
  store i32 0, ptr %i.nh, align 8, !tbaa !463
  %i.ni = getelementptr inbounds nuw i8, ptr %.095715601681, i64 4
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !249 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.095715601681, i64 84
  store i32 %i.nj, ptr %i.nk, align 4, !tbaa !464
  store i32 %i.nj, ptr %i.ng, align 4, !tbaa !462
  %i.nl = getelementptr inbounds nuw i8, ptr %.095715601681, i64 98
  store i8 0, ptr %i.nl, align 2, !tbaa !487
  %i.nm = getelementptr inbounds nuw i8, ptr %.095715601681, i64 3709
  store i8 1, ptr %i.nm, align 1, !tbaa !488
  br label %bb.cu

bb.cj:                                            ; preds = %bb.cg
  %or.cond47 = and i1 %i.cd, %i.nc
  br i1 %or.cond47, label %bb.ck, label %.thread1313

bb.ck:                                            ; preds = %bb.cj
  %i.nn = getelementptr inbounds nuw i8, ptr %i.g, i64 1061
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !164, !range !135, !noundef !136
  %i.np = trunc nuw i8 %i.no to i1
  br i1 %i.np, label %bb.cl, label %.thread1313

bb.cl:                                            ; preds = %bb.ck
  call void @_ZN19ImGuiInputTextState12OnKeyPressedEi(ptr noundef nonnull align 8 dereferenceable(3736) %.095715601681, i32 noundef 2097164)
  call void @_ZN19ImGuiInputTextState12OnKeyPressedEi(ptr noundef nonnull align 8 dereferenceable(3736) %.095715601681, i32 noundef 6291469)
  br label %bb.cu

.thread1313:                                      ; preds = %bb.ch, %bb.ck, %bb.cj
  %i.nq = getelementptr inbounds nuw i8, ptr %i.g, i64 1056
  %i.nr = load i8, ptr %i.nq, align 8, !tbaa !164, !range !135, !noundef !136
  %i.ns = trunc nuw i8 %i.nr to i1
  br i1 %i.ns, label %bb.cm, label %bb.cp

bb.cm:                                            ; preds = %.thread1313
  %i.nt = getelementptr inbounds nuw i8, ptr %.095715601681, i64 3709
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !488, !range !135, !noundef !136
  %i.nv = trunc nuw i8 %i.nu to i1
  br i1 %i.nv, label %bb.cp, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  br i1 %i.cd, label %bb.co, label %bb.cu

bb.co:                                            ; preds = %bb.cn
  %i.nw = getelementptr inbounds nuw i8, ptr %.095715601681, i64 76
  %i.nx = getelementptr inbounds nuw i8, ptr %.095715601681, i64 99
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !256
  %.not.i = icmp eq i8 %i.ny, 0
  %.0.i = select i1 %.not.i, float %i.mz, float 0.000000e+00
  %i.nz = call fastcc noundef i32 @_ZN5ImStbL21stb_text_locate_coordEP19ImGuiInputTextStateff(ptr noundef nonnull readonly %.095715601681, float noundef %i.mq, float noundef %.0.i) ; 3 uses
  store i32 %i.nz, ptr %i.nw, align 4, !tbaa !253
  %i.oa = getelementptr inbounds nuw i8, ptr %.095715601681, i64 80
  store i32 %i.nz, ptr %i.oa, align 8, !tbaa !251
  %i.ob = getelementptr inbounds nuw i8, ptr %.095715601681, i64 84
  store i32 %i.nz, ptr %i.ob, align 4, !tbaa !252
  %i.oc = getelementptr inbounds nuw i8, ptr %.095715601681, i64 98
  store i8 0, ptr %i.oc, align 2, !tbaa !254
  %i.od = getelementptr inbounds nuw i8, ptr %.095715601681, i64 3704
  store float -3.000000e-01, ptr %i.od, align 8, !tbaa !241
  br label %bb.cu

bb.cp:                                            ; preds = %bb.cm, %.thread1313
  %i.oe = trunc nuw i8 %i.me to i1
end_hunk_1
