Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/imgui?download=true
inline.NumInlined: 3240
inline.NumDeleted: 627
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 90
begin_hunk_0_@_ZN5ImGui16ShowFontSelectorEPKc:bb.a
  %i.r = sext i32 %i.q to i64
  %.idx = shl nsw i64 %i.r, 3
  %i.s = getelementptr inbounds i8, ptr %i.p, i64 %.idx
  %.not21 = icmp eq i32 %i.q, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.pre23 = load ptr, ptr @GImGui, align 8, !tbaa !245
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN5ImGui5PopIDEv.exit, %bb.c
  call void @_ZN5ImGui8EndComboEv() #35
  br label %bb.l

bb.d:                                             ; preds = %.lr.ph, %_ZN5ImGui5PopIDEv.exit
  %i.u = phi ptr [ %.pre23, %.lr.ph ], [ %i.aq, %_ZN5ImGui5PopIDEv.exit ]
  %.022 = phi ptr [ %i.p, %.lr.ph ], [ %i.ar, %_ZN5ImGui5PopIDEv.exit ] ; 2 uses
  %i.v = load ptr, ptr %.022, align 8, !tbaa !760 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 5184
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !309  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  %i.y = call noundef i32 @_ZN11ImGuiWindow5GetIDEPKv(ptr noundef nonnull align 8 dereferenceable(1077) %i.x, ptr noundef %i.v)
  store i32 %i.y, ptr %i.a, align 4, !tbaa !255
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 264
  call void @_ZN8ImVectorIjE9push_backERKj(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !1070
  %.not.i19 = icmp eq i32 %i.ab, 0
  br i1 %.not.i19, label %_ZNK6ImFont12GetDebugNameEv.exit20, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1071
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1072
  br label %_ZNK6ImFont12GetDebugNameEv.exit20

_ZNK6ImFont12GetDebugNameEv.exit20:               ; preds = %bb.d, %bb.e
  %i.af = phi ptr [ %i.ae, %bb.e ], [ @.str.768, %bb.d ]
  %i.ag = icmp eq ptr %i.v, %i.d                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #35
  store <2 x float> zeroinitializer, ptr %1, align 8, !tbaa !86
  %i.ah = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef %i.af, i1 noundef zeroext %i.ag, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %1) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK6ImFont12GetDebugNameEv.exit20
  store ptr %i.v, ptr %i.t, align 8, !tbaa !1073
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK6ImFont12GetDebugNameEv.exit20
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_ZN5ImGui19SetItemDefaultFocusEv()
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ai = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 5184
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !309
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 264 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !640 ; 2 uses
  %i.an = icmp slt i32 %i.am, 2
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.106), !inline_history !1021 ; 0 uses
  %.pre = load ptr, ptr @GImGui, align 8, !tbaa !245
  br label %_ZN5ImGui5PopIDEv.exit

bb.k:                                             ; preds = %bb.i
  %i.ap = add nsw i32 %i.am, -1
  store i32 %i.ap, ptr %i.al, align 8, !tbaa !526
  br label %_ZN5ImGui5PopIDEv.exit

_ZN5ImGui5PopIDEv.exit:                           ; preds = %bb.j, %bb.k
  %i.aq = phi ptr [ %.pre, %bb.j ], [ %i.ai, %bb.k ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.022, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.s
  br i1 %.not, label %._crit_edge, label %bb.d

bb.l:                                             ; preds = %._crit_edge, %_ZNK6ImFont12GetDebugNameEv.exit
  %i.as = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 5184
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !309 ; 10 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 209
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !920, !range !119, !noundef !254
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %_ZN5ImGui8SameLineEff.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 3228
  %i.az = load float, ptr %i.ay, align 4, !tbaa !978
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 280
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 288
  %i.bc = load float, ptr %i.bb, align 8, !tbaa !979
  %i.bd = fadd float %i.az, %i.bc
  store float %i.bd, ptr %i.ba, align 8, !tbaa !980
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 292
  %i.bf = load float, ptr %i.be, align 4, !tbaa !341
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 284
  store float %i.bf, ptr %i.bg, align 4, !tbaa !338
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 328
  %i.bi = getelementptr inbounds nuw i8, ptr %i.au, i64 320
  %i.bj = load i64, ptr %i.bh, align 8
  store i64 %i.bj, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.au, i64 340
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !975
  %i.bm = getelementptr inbounds nuw i8, ptr %i.au, i64 336
  store float %i.bl, ptr %i.bm, align 8, !tbaa !976
  %i.bn = getelementptr inbounds nuw i8, ptr %i.au, i64 344
  store i8 1, ptr %i.bn, align 8, !tbaa !977
  br label %_ZN5ImGui8SameLineEff.exit

_ZN5ImGui8SameLineEff.exit:                       ; preds = %bb.l, %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !787
  %i.bq = and i32 %i.bp, 16
  %.not18 = icmp eq i32 %i.bq, 0
  %.str.577..str.576 = select i1 %.not18, ptr @.str.577, ptr @.str.576
  call fastcc void @_ZL17MetricsHelpMarkerPKc(ptr noundef nonnull %.str.577..str.576)
  ret void
}

declare noundef zeroext i1 @_ZN5ImGui9DragFloatEPKcPffffS1_i(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL17MetricsHelpMarkerPKc(ptr noundef %0) unnamed_addr #0 {
bb.a:
  tail call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.282) #35
  %i.a = tail call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 4096)
  br i1 %i.a, label %bb.b, label %_ZN5ImGui16BeginItemTooltipEv.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN5ImGui14BeginTooltipExEii(i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4400
  %i.e = load float, ptr %i.d, align 8, !tbaa !426
  %i.f = fmul float %i.e, 3.500000e+01
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 5184
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !309  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 512
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 492 ; 2 uses
  tail call void @_ZN8ImVectorIfE9push_backERKf(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
  store float %i.f, ptr %i.j, align 4, !tbaa !953
  tail call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef %0, ptr noundef null) #35
  %i.k = load ptr, ptr @GImGui, align 8, !tbaa !245
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 5184
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !309  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 512 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !1025 ; 3 uses
  %i.p = icmp slt i32 %i.o, 1
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.98) ; 0 uses
  br label %_ZN5ImGui14PopTextWrapPosEv.exit

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 520
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !656
  %i.t = zext nneg i32 %i.o to i64
  %i.u = getelementptr [4 x i8], ptr %i.s, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 -4
  %i.w = load float, ptr %i.v, align 4, !tbaa !86
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 492
  store float %i.w, ptr %i.x, align 4, !tbaa !953
  %i.y = add nsw i32 %i.o, -1
  store i32 %i.y, ptr %i.n, align 8, !tbaa !664
  br label %_ZN5ImGui14PopTextWrapPosEv.exit

_ZN5ImGui14PopTextWrapPosEv.exit:                 ; preds = %bb.c, %bb.d
  tail call void @_ZN5ImGui3EndEv()
  br label %_ZN5ImGui16BeginItemTooltipEv.exit

_ZN5ImGui16BeginItemTooltipEv.exit:               ; preds = %bb.a, %_ZN5ImGui14PopTextWrapPosEv.exit
  ret void
}

declare noundef zeroext i1 @_ZN5ImGui15TextLinkOpenURLEPKcS1_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKcS1_z(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare noundef ptr @_Z38ImFontAtlasGetFontLoaderForStbTruetypev() local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @_Z31ImFontAtlasBuildSetupFontLoaderP11ImFontAtlasPK12ImFontLoader(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui13DebugNodeFontEP6ImFont(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %1 = alloca %struct.ImFontStackData, align 8    ; 5 uses
  %i.b = alloca [5 x i8], align 1                 ; 13 uses
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.c = alloca [5 x i8], align 4                 ; 11 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = load ptr, ptr @GImGui, align 8, !tbaa !245
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !766  ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !1070 ; 2 uses
  %.not.i = icmp eq i32 %i.j, 0
  %.0.i.i156.sroa.gep = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 3 uses
  %.0.i.i156.sroa.gep160.a = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %.0.i.i156.sroa.gep161 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.0.i.i156.sroa.gep162 = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %.0.i.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 6 uses
  %.0.i.i.sroa.gep163 = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 2 uses
  %.0.i.i.sroa.gep164 = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 4 uses
  br i1 %.not.i, label %_ZNK6ImFont12GetDebugNameEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1071
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1072
  br label %_ZNK6ImFont12GetDebugNameEv.exit

_ZNK6ImFont12GetDebugNameEv.exit:                 ; preds = %bb.a, %bb.b
  %i.n = phi ptr [ %i.m, %bb.b ], [ @.str.768, %bb.a ]
  %i.o = tail call noundef zeroext i1 (ptr, ptr, ...) @_ZN5ImGui8TreeNodeEPKvPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.448, ptr noundef %i.n, i32 noundef %i.j) #35 ; 2 uses
  %.pre = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 7 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 5184
  %.pre199 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !309 ; 11 uses
  br i1 %i.o, label %_ZNK6ImFont12GetDebugNameEv.exit._crit_edge, label %bb.c

_ZNK6ImFont12GetDebugNameEv.exit._crit_edge:      ; preds = %_ZNK6ImFont12GetDebugNameEv.exit
  %.phi.trans.insert200 = getelementptr inbounds nuw i8, ptr %.pre, i64 3260
  %.pre201 = load float, ptr %.phi.trans.insert200, align 4, !tbaa !1040
  %.phi.trans.insert202 = getelementptr inbounds nuw i8, ptr %.pre199, i64 348
  %.pre203 = load float, ptr %.phi.trans.insert202, align 4, !tbaa !947
  %.phi.trans.insert204 = getelementptr inbounds nuw i8, ptr %.pre199, i64 40
  %.pre205 = load float, ptr %.phi.trans.insert204, align 8, !tbaa !704
  %.phi.trans.insert206 = getelementptr inbounds nuw i8, ptr %.pre199, i64 352
  %.pre207 = load float, ptr %.phi.trans.insert206, align 8, !tbaa !1001
  br label %bb.d

bb.c:                                             ; preds = %_ZNK6ImFont12GetDebugNameEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.pre199, i64 206
  store i8 1, ptr %i.p, align 2, !tbaa !688
  %i.q = getelementptr inbounds nuw i8, ptr %.pre, i64 3260
  %i.r = load float, ptr %i.q, align 4, !tbaa !1040 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.pre199, i64 280
  %i.t = getelementptr inbounds nuw i8, ptr %.pre199, i64 348 ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !947
  %i.v = fadd float %i.r, %i.u                    ; 3 uses
  store float %i.v, ptr %i.t, align 4, !tbaa !947
  %i.w = getelementptr inbounds nuw i8, ptr %.pre199, i64 40
  %i.x = load float, ptr %i.w, align 8, !tbaa !704 ; 2 uses
  %i.y = fadd float %i.v, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %.pre199, i64 352
  %i.aa = load float, ptr %i.z, align 8, !tbaa !1001 ; 2 uses
  %i.ab = fadd float %i.y, %i.aa
  store float %i.ab, ptr %i.s, align 8, !tbaa !980
  br label %bb.d

bb.d:                                             ; preds = %_ZNK6ImFont12GetDebugNameEv.exit._crit_edge, %bb.c
  %i.ac = phi float [ %.pre207, %_ZNK6ImFont12GetDebugNameEv.exit._crit_edge ], [ %i.aa, %bb.c ]
  %i.ad = phi float [ %.pre205, %_ZNK6ImFont12GetDebugNameEv.exit._crit_edge ], [ %i.x, %bb.c ]
  %i.ae = phi float [ %.pre203, %_ZNK6ImFont12GetDebugNameEv.exit._crit_edge ], [ %i.v, %bb.c ]
  %i.af = phi float [ %.pre201, %_ZNK6ImFont12GetDebugNameEv.exit._crit_edge ], [ %i.r, %bb.c ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre199, i64 206
  store i8 1, ptr %i.ag, align 2, !tbaa !688
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre199, i64 280
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre199, i64 348
  %i.aj = fadd float %i.af, %i.ae                 ; 2 uses
  store float %i.aj, ptr %i.ai, align 4, !tbaa !947
  %i.ak = fadd float %i.aj, %i.ad
  %i.al = fadd float %i.ak, %i.ac
  store float %i.al, ptr %i.ah, align 8, !tbaa !980
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 10272
  %i.an = load i8, ptr %i.am, align 4, !tbaa !542, !range !119, !noundef !254
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.e, label %_ZN5ImGui7PopFontEv.exit

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre, i64 4384
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !425
  %i.ar = getelementptr inbounds nuw i8, ptr %.pre, i64 7944
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #35
  store ptr %i.aq, ptr %1, align 8, !tbaa !763
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %.pre, i64 4404
  %i.au = getelementptr inbounds nuw i8, ptr %.pre, i64 4400
  %i.av = load <2 x float>, ptr %i.au, align 8, !tbaa !86
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.aw, ptr %i.as, align 8, !tbaa !86
  call void @_ZN8ImVectorI15ImFontStackDataE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  %i.ax = load float, ptr %i.at, align 4, !tbaa !761
  %i.ay = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4384
  store ptr %0, ptr %i.az, align 8, !tbaa !425
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4404
  store float %i.ax, ptr %i.ba, align 4, !tbaa !761
  call void @_ZN5ImGui21UpdateCurrentFontSizeEf(float noundef 0.000000e+00)
  %i.bb = load ptr, ptr %i.g, align 8, !tbaa !766 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 4440
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !445
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 4448
  store ptr %0, ptr %i.bd, align 8, !tbaa !767
  call void @_Z36ImFontAtlasUpdateDrawListsSharedDataP11ImFontAtlas(ptr noundef %i.bb) #35
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 5184
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !309 ; 2 uses
  %.not16.i.i = icmp eq ptr %i.bf, null
  br i1 %.not16.i.i, label %_ZN5ImGui8PushFontEP6ImFontf.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 712
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !424
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.bi, align 8, !tbaa !450
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !451
  call void @_ZN10ImDrawList11_SetTextureE12ImTextureRef(ptr noundef nonnull align 8 dereferenceable(224) %i.bh, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i) #35
  br label %_ZN5ImGui8PushFontEP6ImFontf.exit

_ZN5ImGui8PushFontEP6ImFontf.exit:                ; preds = %bb.e, %bb.f
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.449) #35
  %i.bj = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 7944 ; 3 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !870 ; 2 uses
  %i.bm = icmp slt i32 %i.bl, 1
  br i1 %i.bm, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5ImGui8PushFontEP6ImFontf.exit
  %i.bn = call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.105), !inline_history !965 ; 0 uses
  br label %_ZN5ImGui7PopFontEv.exit

bb.h:                                             ; preds = %_ZN5ImGui8PushFontEP6ImFontf.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 7952
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !508
  %i.bq = zext nneg i32 %i.bl to i64
  %i.br = getelementptr [16 x i8], ptr %i.bp, i64 %i.bq ; 3 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 -16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !763 ; 4 uses
  %i.bu = getelementptr i8, ptr %i.br, i64 -8
  %i.bv = load float, ptr %i.bu, align 8, !tbaa !764
  %i.bw = getelementptr i8, ptr %i.br, i64 -4
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !765
  %i.by = getelementptr inbounds nuw i8, ptr %i.bj, i64 4384
  store ptr %i.bt, ptr %i.by, align 8, !tbaa !425
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bj, i64 4404
  store float %i.bv, ptr %i.bz, align 4, !tbaa !761
  call void @_ZN5ImGui21UpdateCurrentFontSizeEf(float noundef %i.bx), !inline_history !965
  %.not.i.i131 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i131, label %_ZN5ImGui14SetCurrentFontEP6ImFontff.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !766 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bj, i64 4440
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !445
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bj, i64 4448
  store ptr %i.bt, ptr %i.cd, align 8, !tbaa !767
  call void @_Z36ImFontAtlasUpdateDrawListsSharedDataP11ImFontAtlas(ptr noundef %i.cb) #35, !inline_history !965
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bj, i64 5184
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !309 ; 2 uses
  %.not16.i.i132 = icmp eq ptr %i.cf, null
  br i1 %.not16.i.i132, label %_ZN5ImGui14SetCurrentFontEP6ImFontff.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 712
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !424
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %.sroa.0.0.copyload.i.i133 = load ptr, ptr %i.ci, align 8, !tbaa !450
  %.sroa.2.0..sroa_idx.i.i134 = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %.sroa.2.0.copyload.i.i135 = load i64, ptr %.sroa.2.0..sroa_idx.i.i134, align 8, !tbaa !451
  call void @_ZN10ImDrawList11_SetTextureE12ImTextureRef(ptr noundef nonnull align 8 dereferenceable(224) %i.ch, ptr %.sroa.0.0.copyload.i.i133, i64 %.sroa.2.0.copyload.i.i135) #35, !inline_history !965
  br label %_ZN5ImGui14SetCurrentFontEP6ImFontff.exit.i

_ZN5ImGui14SetCurrentFontEP6ImFontff.exit.i:      ; preds = %bb.j, %bb.i, %bb.h
  %i.cj = load i32, ptr %i.bk, align 8, !tbaa !510
  %i.ck = add nsw i32 %i.cj, -1
  store i32 %i.ck, ptr %i.bk, align 8, !tbaa !510
  br label %_ZN5ImGui7PopFontEv.exit

_ZN5ImGui7PopFontEv.exit:                         ; preds = %_ZN5ImGui14SetCurrentFontEP6ImFontff.exit.i, %bb.g, %bb.d
  br i1 %i.o, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN5ImGui7PopFontEv.exit
  %i.cl = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 5184
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !309 ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 206
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 3260
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !1040 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 280
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 348 ; 2 uses
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !947
  %i.cu = fsub float %i.ct, %i.cq
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  %i.cw = load float, ptr %i.cv, align 8, !tbaa !704
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cn, i64 352
  %i.cy = load float, ptr %i.cx, align 8, !tbaa !1001
  store i8 1, ptr %i.co, align 2, !tbaa !688
  %i.cz = fsub float %i.cu, %i.cq                 ; 2 uses
  store float %i.cz, ptr %i.cs, align 4, !tbaa !947
  %i.da = fadd float %i.cz, %i.cw
  %i.db = fadd float %i.da, %i.cy
  store float %i.db, ptr %i.cr, align 8, !tbaa !980
  br label %bb.bp

bb.l:                                             ; preds = %_ZN5ImGui7PopFontEv.exit
  %i.dc = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.450) #35
  %.pre208 = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 9 uses
end_hunk_0
begin_hunk_1_@_ZN5ImGui13DebugNodeFontEP6ImFont:bb.a
  %i.km = call noundef zeroext i1 (ptr, ptr, ...) @_ZN5ImGui8TreeNodeEPKvPKcz(ptr noundef %i.jw, ptr noundef nonnull @.str.458, i32 noundef %i.kj, ptr noundef %i.jw, i32 noundef %i.jz, i32 noundef %i.kc, i32 noundef %i.kf, double noundef %i.kk, double noundef %i.kl) #35
  br i1 %i.km, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jw, i64 128
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !1588 ; 2 uses
  %.not129 = icmp eq ptr %i.ko, null
  br i1 %.not129, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.kp = load ptr, ptr %i.js, align 8, !tbaa !1055
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %i.kq = phi ptr [ %i.kp, %bb.ap ], [ %i.ko, %bb.ao ]
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !1590 ; 2 uses
  %.not130 = icmp eq ptr %i.kr, null
  %spec.select = select i1 %.not130, ptr @.str.459, ptr %i.kr
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.237, ptr noundef nonnull %spec.select) #35
  call void @_ZN5ImGui7TreePopEv() #35
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.an
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ks = load i32, ptr %i.i, align 8, !tbaa !1070 ; 2 uses
  %i.kt = sext i32 %i.ks to i64
  %i.ku = icmp slt i64 %indvars.iv.next, %i.kt
  br i1 %i.ku, label %bb.an, label %._crit_edge, !llvm.loop !1573

bb.as:                                            ; preds = %._crit_edge
  %i.kv = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.460) #35
  br i1 %i.kv, label %bb.at, label %._crit_edge.thread

bb.at:                                            ; preds = %bb.as
  call void (ptr, ...) @_ZN5ImGui11TextWrappedEPKcz(ptr noundef nonnull @.str.461) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  store <2 x float> zeroinitializer, ptr %2, align 8, !tbaa !86
  %i.kw = call noundef zeroext i1 @_ZN5ImGui10BeginTableEPKciiRK6ImVec2f(ptr noundef nonnull @.str.462, i32 noundef 2, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %2, float noundef 0.000000e+00) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br i1 %i.kw, label %.preheader170, label %bb.bi

.preheader170:                                    ; preds = %bb.at
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.h, i64 696 ; 2 uses
  %i.kz = load i32, ptr %i.i, align 8, !tbaa !1070 ; 2 uses
  %i.la = icmp sgt i32 %i.kz, 0
  br i1 %i.la, label %.preheader170.split, label %.split.us

.split.us:                                        ; preds = %_ZL27CalcFontGlyphSrcOverlapMaskP11ImFontAtlasP6ImFontj.exit.thread, %.preheader170
  call void @_ZN5ImGui8EndTableEv() #35
  br label %bb.bi

.preheader170.split:                              ; preds = %.preheader170, %_ZL27CalcFontGlyphSrcOverlapMaskP11ImFontAtlasP6ImFontj.exit.thread
  %i.lb = phi i32 [ %i.pa, %_ZL27CalcFontGlyphSrcOverlapMaskP11ImFontAtlasP6ImFontj.exit.thread ], [ %i.kz, %.preheader170 ] ; 2 uses
  %.0119181 = phi i32 [ %i.pb, %_ZL27CalcFontGlyphSrcOverlapMaskP11ImFontAtlasP6ImFontj.exit.thread ], [ 0, %.preheader170 ] ; 11 uses
  %i.lc = icmp sgt i32 %i.lb, 0
  br i1 %i.lc, label %.lr.ph.i, label %_ZL27CalcFontGlyphSrcOverlapMaskP11ImFontAtlasP6ImFontj.exit.thread

.lr.ph.i:                                         ; preds = %.preheader170.split
  %i.ld = trunc nuw i32 %.0119181 to i16
  br label %bb.au

._crit_edge.loopexit.i:                           ; preds = %bb.aw
  %i.le = icmp samesign ult i32 %.1.i, 2
  %.not126 = icmp eq i32 %.117.i, 0
  %or.cond = select i1 %i.le, i1 true, i1 %.not126
  br i1 %or.cond, label %_ZL27CalcFontGlyphSrcOverlapMaskP11ImFontAtlasP6ImFontj.exit.thread, label %.preheader169.preheader

.preheader169.preheader:                          ; preds = %._crit_edge.loopexit.i
  %exitcond.not244 = icmp eq i32 %.0119181, 65535
  br i1 %exitcond.not244, label %.critedge, label %.lr.ph247

bb.au:                                            ; preds = %bb.aw, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.aw ] ; 3 uses
  %.01520.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.aw ]
  %.01619.i = phi i32 [ 0, %.lr.ph.i ], [ %.117.i, %bb.aw ]
  %i.lf = load ptr, ptr %i.kx, align 8, !tbaa !1071
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %indvars.iv.i
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !1072 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 128
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !1588 ; 2 uses
  %.not.i143 = icmp eq ptr %i.lj, null
  br i1 %.not.i143, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.lk = load ptr, ptr %i.ky, align 8, !tbaa !1055
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.ll = phi ptr [ %i.lk, %bb.av ], [ %i.lj, %bb.au ]
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 40
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !1591
  %i.lo = call noundef zeroext i1 %i.ln(ptr noundef %i.h, ptr noundef nonnull %i.lh, i16 noundef zeroext %i.ld) #35, !inline_history !1574 ; 2 uses
  %i.lp = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.lq = shl nuw i32 1, %i.lp
  %i.lr = select i1 %i.lo, i32 %i.lq, i32 0
  %.117.i = or i32 %i.lr, %.01619.i               ; 5 uses
  %i.ls = zext i1 %i.lo to i32
  %.1.i = add nuw nsw i32 %.01520.i, %i.ls        ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.lt = load i32, ptr %i.i, align 8, !tbaa !1070 ; 3 uses
  %i.lu = sext i32 %i.lt to i64
  %i.lv = icmp slt i64 %indvars.iv.next.i, %i.lu
  br i1 %i.lv, label %bb.au, label %._crit_edge.loopexit.i, !llvm.loop !1575

.preheader169:                                    ; preds = %_ZL27CalcFontGlyphSrcOverlapMaskP11ImFontAtlasP6ImFontj.exit154
  %exitcond.not = icmp eq i32 %.0118246, 65535
  br i1 %exitcond.not, label %.critedge, label %.lr.ph247, !llvm.loop !1576

.lr.ph247:                                        ; preds = %.preheader169.preheader, %.preheader169
  %.0118.in245 = phi i32 [ %.0118246, %.preheader169 ], [ %.0119181, %.preheader169.preheader ] ; 2 uses
  %i.lw = phi i32 [ %i.ms, %.preheader169 ], [ %i.lt, %.preheader169.preheader ] ; 2 uses
  %.0118246 = add nuw nsw i32 %.0118.in245, 1     ; 5 uses
  %i.lx = icmp sgt i32 %i.lw, 0
  br i1 %i.lx, label %.lr.ph.i145, label %_ZL27CalcFontGlyphSrcOverlapMaskP11ImFontAtlasP6ImFontj.exit154

.lr.ph.i145:                                      ; preds = %.lr.ph247
  %i.ly = trunc nuw i32 %.0118246 to i16
  br label %bb.ax

._crit_edge.loopexit.i153:                        ; preds = %bb.az
  %i.lz = icmp samesign ugt i32 %.1.i151, 1
  %i.ma = select i1 %i.lz, i32 %.117.i150, i32 0
  br label %_ZL27CalcFontGlyphSrcOverlapMaskP11ImFontAtlasP6ImFontj.exit154

bb.ax:                                            ; preds = %bb.az, %.lr.ph.i145
  %indvars.iv.i146 = phi i64 [ 0, %.lr.ph.i145 ], [ %indvars.iv.next.i152, %bb.az ] ; 3 uses
  %.01520.i147 = phi i32 [ 0, %.lr.ph.i145 ], [ %.1.i151, %bb.az ]
  %.01619.i148 = phi i32 [ 0, %.lr.ph.i145 ], [ %.117.i150, %bb.az ]
  %i.mb = load ptr, ptr %i.kx, align 8, !tbaa !1071
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %indvars.iv.i146
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !1072 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 128
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !1588 ; 2 uses
  %.not.i149 = icmp eq ptr %i.mf, null
  br i1 %.not.i149, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.mg = load ptr, ptr %i.ky, align 8, !tbaa !1055
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.mh = phi ptr [ %i.mg, %bb.ay ], [ %i.mf, %bb.ax ]
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 40
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !1591
  %i.mk = call noundef zeroext i1 %i.mj(ptr noundef %i.h, ptr noundef nonnull %i.md, i16 noundef zeroext %i.ly) #35, !inline_history !1574 ; 2 uses
  %i.ml = trunc nuw nsw i64 %indvars.iv.i146 to i32
  %i.mm = shl nuw i32 1, %i.ml
  %i.mn = select i1 %i.mk, i32 %i.mm, i32 0
  %.117.i150 = or i32 %i.mn, %.01619.i148         ; 2 uses
  %i.mo = zext i1 %i.mk to i32
  %.1.i151 = add nuw nsw i32 %.01520.i147, %i.mo  ; 2 uses
  %indvars.iv.next.i152 = add nuw nsw i64 %indvars.iv.i146, 1 ; 2 uses
  %i.mp = load i32, ptr %i.i, align 8, !tbaa !1070 ; 2 uses
  %i.mq = sext i32 %i.mp to i64
  %i.mr = icmp slt i64 %indvars.iv.next.i152, %i.mq
  br i1 %i.mr, label %bb.ax, label %._crit_edge.loopexit.i153, !llvm.loop !1575

_ZL27CalcFontGlyphSrcOverlapMaskP11ImFontAtlasP6ImFontj.exit154: ; preds = %.lr.ph247, %._crit_edge.loopexit.i153
  %i.ms = phi i32 [ %i.lw, %.lr.ph247 ], [ %i.mp, %._crit_edge.loopexit.i153 ]
  %.015.lcssa.i144 = phi i32 [ 0, %.lr.ph247 ], [ %i.ma, %._crit_edge.loopexit.i153 ]
  %i.mt = icmp eq i32 %.015.lcssa.i144, %.117.i
  br i1 %i.mt, label %.preheader169, label %_ZL27CalcFontGlyphSrcOverlapMaskP11ImFontAtlasP6ImFontj.exit154..critedge_crit_edge, !llvm.loop !1576

_ZL27CalcFontGlyphSrcOverlapMaskP11ImFontAtlasP6ImFontj.exit154..critedge_crit_edge: ; preds = %_ZL27CalcFontGlyphSrcOverlapMaskP11ImFontAtlasP6ImFontj.exit154
  br label %.critedge, !llvm.loop !1576

.critedge:                                        ; preds = %.preheader169, %_ZL27CalcFontGlyphSrcOverlapMaskP11ImFontAtlasP6ImFontj.exit154..critedge_crit_edge, %.preheader169.preheader
  %.0118.in.lcssa = phi i32 [ %.0119181, %.preheader169.preheader ], [ %.0118.in245, %_ZL27CalcFontGlyphSrcOverlapMaskP11ImFontAtlasP6ImFontj.exit154..critedge_crit_edge ], [ %.0118246, %.preheader169 ] ; 5 uses
  %.0118.lcssa = phi i32 [ 65536, %.preheader169.preheader ], [ %.0118246, %_ZL27CalcFontGlyphSrcOverlapMaskP11ImFontAtlasP6ImFontj.exit154..critedge_crit_edge ], [ 65536, %.preheader169 ]
  %i.mu = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() #35
  br i1 %i.mu, label %.preheader238, label %bb.bf

.preheader238:                                    ; preds = %.critedge, %.preheader238
  %.07.i = phi i32 [ %i.mx, %.preheader238 ], [ 0, %.critedge ]
  %.056.i = phi i32 [ %i.mw, %.preheader238 ], [ %.117.i, %.critedge ] ; 2 uses
  %i.mv = add i32 %.056.i, -1
  %i.mw = and i32 %i.mv, %.056.i                  ; 2 uses
  %i.mx = add i32 %.07.i, 1                       ; 2 uses
  %.not.i155 = icmp eq i32 %i.mw, 0
  br i1 %.not.i155, label %_ZL14ImCountSetBitsj.exit, label %.preheader238, !llvm.loop !53

_ZL14ImCountSetBitsj.exit:                        ; preds = %.preheader238
  %i.my = zext nneg i32 %.0119181 to i64
  %i.mz = inttoptr i64 %i.my to ptr
  %i.na = sub nuw nsw i32 %.0118.lcssa, %.0119181
  %i.nb = call noundef zeroext i1 (ptr, ptr, ...) @_ZN5ImGui8TreeNodeEPKvPKcz(ptr noundef %i.mz, ptr noundef nonnull @.str.463, i32 noundef %.0119181, i32 noundef %.0118.in.lcssa, i32 noundef %i.na, i32 noundef %i.mx) #35
  br i1 %i.nb, label %bb.ba, label %bb.bf

bb.ba:                                            ; preds = %_ZL14ImCountSetBitsj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #35
  %.not127173 = icmp samesign ugt i32 %.0119181, %.0118.in.lcssa
  br i1 %.not127173, label %._crit_edge177, label %.lr.ph176

._crit_edge177:                                   ; preds = %_Z16ImTextCharToUtf8Pcj.exit157, %bb.ba
  call void @_ZN5ImGui7TreePopEv() #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #35
  br label %bb.bf

.lr.ph176:                                        ; preds = %bb.ba, %_Z16ImTextCharToUtf8Pcj.exit157
  %.0117174 = phi i32 [ %i.nv, %_Z16ImTextCharToUtf8Pcj.exit157 ], [ %.0119181, %bb.ba ] ; 16 uses
  %i.nc = icmp samesign ult i32 %.0117174, 128
  br i1 %i.nc, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.lr.ph176
  %i.nd = trunc nuw nsw i32 %.0117174 to i8
  store i8 %i.nd, ptr %i.c, align 4, !tbaa !240
  br label %_Z16ImTextCharToUtf8Pcj.exit157

bb.bc:                                            ; preds = %.lr.ph176
  %i.ne = icmp samesign ult i32 %.0117174, 2048
  br i1 %i.ne, label %bb.bd, label %3

bb.bd:                                            ; preds = %bb.bc
  %i.nf = lshr i32 %.0117174, 6
  %i.ng = trunc nuw nsw i32 %i.nf to i8
  %i.nh = or disjoint i8 %i.ng, -64
  store i8 %i.nh, ptr %i.c, align 4, !tbaa !240
  %i.ni = trunc i32 %.0117174 to i8
  %i.nj = and i8 %i.ni, 63
  %i.nk = or disjoint i8 %i.nj, -128
  store i8 %i.nk, ptr %.0.i.i156.sroa.gep, align 1, !tbaa !240
  br label %_Z16ImTextCharToUtf8Pcj.exit157

3:                                                ; preds = %bb.bc
  %4 = icmp samesign ult i32 %.0117174, 65536
  br i1 %4, label %bb.be, label %5

bb.be:                                            ; preds = %3
  %i.nl = lshr i32 %.0117174, 12
  %i.nm = trunc nuw nsw i32 %i.nl to i8
  %i.nn = or disjoint i8 %i.nm, -32
  store i8 %i.nn, ptr %i.c, align 4, !tbaa !240
  %i.no = lshr i32 %.0117174, 6
  %i.np = trunc i32 %i.no to i8
  %i.nq = and i8 %i.np, 63
  %i.nr = or disjoint i8 %i.nq, -128
  store i8 %i.nr, ptr %.0.i.i156.sroa.gep, align 1, !tbaa !240
  %i.ns = trunc i32 %.0117174 to i8
  %i.nt = and i8 %i.ns, 63
  %i.nu = or disjoint i8 %i.nt, -128
  store i8 %i.nu, ptr %.0.i.i156.sroa.gep160.a, align 2, !tbaa !240
  br label %_Z16ImTextCharToUtf8Pcj.exit157

5:                                                ; preds = %3
  %6 = lshr i32 %.0117174, 6
  %7 = lshr i32 %.0117174, 12
  %8 = lshr i32 %.0117174, 18
  %9 = trunc i32 %.0117174 to i8
  %10 = trunc i32 %6 to i8
  %11 = trunc i32 %7 to i8
  %12 = trunc nsw i32 %8 to i8
  %13 = insertelement <4 x i8> poison, i8 %12, i64 0
  %14 = insertelement <4 x i8> %13, i8 %11, i64 1
  %15 = insertelement <4 x i8> %14, i8 %10, i64 2
  %16 = insertelement <4 x i8> %15, i8 %9, i64 3
  %17 = and <4 x i8> %16, <i8 -1, i8 63, i8 63, i8 63>
  %18 = or disjoint <4 x i8> %17, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %18, ptr %i.c, align 4, !tbaa !240
  br label %_Z16ImTextCharToUtf8Pcj.exit157

_Z16ImTextCharToUtf8Pcj.exit157:                  ; preds = %bb.bb, %bb.bd, %bb.be, %5
  %.0.i.i156.sroa.phi = phi ptr [ %.0.i.i156.sroa.gep, %bb.bb ], [ %.0.i.i156.sroa.gep162, %bb.be ], [ %.0.i.i156.sroa.gep160.a, %bb.bd ], [ %.0.i.i156.sroa.gep161, %5 ]
  store i8 0, ptr %.0.i.i156.sroa.phi, align 1, !tbaa !240
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.464, i32 noundef %.0117174, ptr noundef nonnull %i.c) #35
  %i.nv = add nuw nsw i32 %.0117174, 1
  %exitcond194 = icmp eq i32 %.0117174, %.0118.in.lcssa
  br i1 %exitcond194, label %._crit_edge177, label %.lr.ph176, !llvm.loop !1577

bb.bf:                                            ; preds = %._crit_edge177, %_ZL14ImCountSetBitsj.exit, %.critedge
  %i.nw = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() #35 ; 0 uses
  %i.nx = load i32, ptr %i.i, align 8, !tbaa !1070 ; 2 uses
  %i.ny = icmp sgt i32 %i.nx, 0
  br i1 %i.ny, label %.lr.ph180, label %_ZL27CalcFontGlyphSrcOverlapMaskP11ImFontAtlasP6ImFontj.exit.thread

.lr.ph180:                                        ; preds = %bb.bf, %_ZN5ImGui8SameLineEff.exit158
  %.0116178 = phi i32 [ %i.ox, %_ZN5ImGui8SameLineEff.exit158 ], [ 0, %bb.bf ] ; 3 uses
  %i.nz = shl nuw i32 1, %.0116178
  %i.oa = and i32 %i.nz, %.117.i
  %.not128 = icmp eq i32 %i.oa, 0
  br i1 %.not128, label %_ZN5ImGui8SameLineEff.exit158, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph180
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.465, i32 noundef %.0116178) #35
  %i.ob = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 5184
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !309 ; 10 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 209
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !920, !range !119, !noundef !254
  %i.og = trunc nuw i8 %i.of to i1
  br i1 %i.og, label %_ZN5ImGui8SameLineEff.exit158, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.oh = getelementptr inbounds nuw i8, ptr %i.ob, i64 3228
  %i.oi = load float, ptr %i.oh, align 4, !tbaa !978
  %i.oj = getelementptr inbounds nuw i8, ptr %i.od, i64 280
  %i.ok = getelementptr inbounds nuw i8, ptr %i.od, i64 288
  %i.ol = load float, ptr %i.ok, align 8, !tbaa !979
  %i.om = fadd float %i.oi, %i.ol
  store float %i.om, ptr %i.oj, align 8, !tbaa !980
  %i.on = getelementptr inbounds nuw i8, ptr %i.od, i64 292
  %i.oo = load float, ptr %i.on, align 4, !tbaa !341
  %i.op = getelementptr inbounds nuw i8, ptr %i.od, i64 284
  store float %i.oo, ptr %i.op, align 4, !tbaa !338
  %i.oq = getelementptr inbounds nuw i8, ptr %i.od, i64 328
  %i.or = getelementptr inbounds nuw i8, ptr %i.od, i64 320
  %i.os = load i64, ptr %i.oq, align 8
  store i64 %i.os, ptr %i.or, align 8
  %i.ot = getelementptr inbounds nuw i8, ptr %i.od, i64 340
  %i.ou = load float, ptr %i.ot, align 4, !tbaa !975
  %i.ov = getelementptr inbounds nuw i8, ptr %i.od, i64 336
  store float %i.ou, ptr %i.ov, align 8, !tbaa !976
  %i.ow = getelementptr inbounds nuw i8, ptr %i.od, i64 344
  store i8 1, ptr %i.ow, align 8, !tbaa !977
  br label %_ZN5ImGui8SameLineEff.exit158

_ZN5ImGui8SameLineEff.exit158:                    ; preds = %bb.bh, %bb.bg, %.lr.ph180
  %i.ox = add nuw nsw i32 %.0116178, 1            ; 2 uses
  %i.oy = load i32, ptr %i.i, align 8, !tbaa !1070 ; 2 uses
  %i.oz = icmp slt i32 %i.ox, %i.oy
  br i1 %i.oz, label %.lr.ph180, label %_ZL27CalcFontGlyphSrcOverlapMaskP11ImFontAtlasP6ImFontj.exit.thread, !llvm.loop !1578

_ZL27CalcFontGlyphSrcOverlapMaskP11ImFontAtlasP6ImFontj.exit.thread: ; preds = %_ZN5ImGui8SameLineEff.exit158, %bb.bf, %._crit_edge.loopexit.i, %.preheader170.split
  %i.pa = phi i32 [ %i.lt, %._crit_edge.loopexit.i ], [ %i.lb, %.preheader170.split ], [ %i.nx, %bb.bf ], [ %i.oy, %_ZN5ImGui8SameLineEff.exit158 ]
  %.1 = phi i32 [ %.0119181, %._crit_edge.loopexit.i ], [ %.0119181, %.preheader170.split ], [ %.0118.in.lcssa, %bb.bf ], [ %.0118.in.lcssa, %_ZN5ImGui8SameLineEff.exit158 ]
  %i.pb = add i32 %.1, 1                          ; 2 uses
  %i.pc = icmp ult i32 %i.pb, 65536
  br i1 %i.pc, label %.preheader170.split, label %.split.us, !llvm.loop !1579

bb.bi:                                            ; preds = %.split.us, %bb.at
  call void @_ZN5ImGui7TreePopEv() #35
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_Z16ImTextCharToUtf8Pcj.exit142, %bb.bi, %bb.as, %._crit_edge
  %i.pd = getelementptr inbounds nuw i8, ptr %i.h, i64 688 ; 3 uses
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !756 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 192
  %i.pg = load i32, ptr %i.pf, align 8, !tbaa !1592
  %i.ph = icmp sgt i32 %i.pg, 0
  br i1 %i.ph, label %.lr.ph189, label %._crit_edge190

.lr.ph189:                                        ; preds = %._crit_edge.thread
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.bj

._crit_edge190:                                   ; preds = %_ZN5ImGui5PopIDEv.exit, %._crit_edge.thread
  call void @_ZN5ImGui7TreePopEv() #35
  %i.pj = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 5184
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !309 ; 5 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 206
  store i8 1, ptr %i.pm, align 2, !tbaa !688
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pj, i64 3260
  %i.po = load float, ptr %i.pn, align 4, !tbaa !1040
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pl, i64 280
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pl, i64 348 ; 2 uses
  %i.pr = load float, ptr %i.pq, align 4, !tbaa !947
  %i.ps = fsub float %i.pr, %i.po                 ; 2 uses
  store float %i.ps, ptr %i.pq, align 4, !tbaa !947
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pl, i64 40
  %i.pu = load float, ptr %i.pt, align 8, !tbaa !704
  %i.pv = fadd float %i.ps, %i.pu
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pl, i64 352
  %i.px = load float, ptr %i.pw, align 8, !tbaa !1001
  %i.py = fadd float %i.pv, %i.px
  store float %i.py, ptr %i.pp, align 8, !tbaa !980
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  br label %bb.bp

bb.bj:                                            ; preds = %.lr.ph189, %_ZN5ImGui5PopIDEv.exit
  %i.pz = phi ptr [ %i.pe, %.lr.ph189 ], [ %i.th, %_ZN5ImGui5PopIDEv.exit ]
  %.0115187 = phi i32 [ 0, %.lr.ph189 ], [ %i.tg, %_ZN5ImGui5PopIDEv.exit ] ; 4 uses
  %i.qa = lshr i32 %.0115187, 5
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pz, i64 208
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !1593
  %i.qd = zext nneg i32 %i.qa to i64
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %i.qd
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !1594
  %i.qg = and i32 %.0115187, 31
  %i.qh = zext nneg i32 %i.qg to i64
  %i.qi = getelementptr inbounds nuw [104 x i8], ptr %i.qf, i64 %i.qh ; 10 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 88
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !1595
  %.not = icmp eq ptr %i.qk, %0
  br i1 %.not, label %bb.bk, label %_ZN5ImGui5PopIDEv.exit

bb.bk:                                            ; preds = %bb.bj
  %i.ql = load ptr, ptr @GImGui, align 8, !tbaa !245
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 5184
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !309 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  %i.qo = call noundef i32 @_ZN11ImGuiWindow5GetIDEi(ptr noundef nonnull align 8 dereferenceable(1077) %i.qn, i32 noundef %.0115187)
  store i32 %i.qo, ptr %i.a, align 4, !tbaa !255
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qn, i64 264
  call void @_ZN8ImVectorIjE9push_backERKj(ptr noundef nonnull align 8 dereferenceable(16) %i.qp, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qi, i64 20
  %i.qr = load <2 x float>, ptr %i.qq, align 4, !tbaa !86
  %i.qs = fpext <2 x float> %i.qr to <2 x double> ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qi, i64 48
  %i.qu = load i32, ptr %i.qt, align 8, !tbaa !1596
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qi, i64 80
  %i.qw = load i32, ptr %i.qv, align 8, !tbaa !1597
  %i.qx = load ptr, ptr %i.pd, align 8, !tbaa !756
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 164
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !1598
  %i.ra = add nsw i32 %i.qz, -1
  %i.rb = icmp slt i32 %i.qw, %i.ra
  %i.rc = select i1 %i.rb, ptr @.str.468, ptr @.str.4
  %i.rd = extractelement <2 x double> %i.qs, i64 0
  %i.re = extractelement <2 x double> %i.qs, i64 1
  %i.rf = call noundef zeroext i1 (ptr, ptr, ...) @_ZN5ImGui8TreeNodeEPKcS1_z(ptr noundef nonnull @.str.466, ptr noundef nonnull @.str.467, double noundef %i.rd, double noundef %i.re, i32 noundef %i.qu, ptr noundef nonnull %i.rc) #35
  br i1 %i.rf, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.rg = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.469) #35
  br i1 %i.rg, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.bl, %.preheader
  %.0114182 = phi i32 [ %i.rj, %.preheader ], [ 0, %bb.bl ] ; 2 uses
  %i.rh = trunc nuw i32 %.0114182 to i16
  %i.ri = call noundef ptr @_ZN11ImFontBaked9FindGlyphEt(ptr noundef nonnull align 8 dereferenceable(104) %i.qi, i16 noundef zeroext %i.rh) #35 ; 0 uses
  %i.rj = add nuw nsw i32 %.0114182, 1            ; 2 uses
  %exitcond195.not = icmp eq i32 %i.rj, 65536
  br i1 %exitcond195.not, label %.loopexit, label %.preheader, !llvm.loop !1580

.loopexit:                                        ; preds = %.preheader, %bb.bl
  %i.rk = getelementptr inbounds nuw i8, ptr %i.qi, i64 76 ; 2 uses
  %i.rl = load i32, ptr %i.rk, align 4
  %i.rm = and i32 %i.rl, 67108863
  %i.rn = uitofp nneg i32 %i.rm to float
  %sqrt = call float @llvm.sqrt.f32(float %i.rn)
  %i.ro = fptosi float %sqrt to i32               ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.qi, i64 68
  %i.rq = load float, ptr %i.rp, align 4, !tbaa !1599 ; 2 uses
  %i.rr = fpext float %i.rq to double
  %i.rs = getelementptr inbounds nuw i8, ptr %i.qi, i64 72
  %i.rt = load float, ptr %i.rs, align 8, !tbaa !1600 ; 2 uses
  %i.ru = fpext float %i.rt to double
  %i.rv = fsub float %i.rq, %i.rt
  %i.rw = fpext float %i.rv to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.470, double noundef %i.rr, double noundef %i.ru, double noundef %i.rw) #35
  %i.rx = load i32, ptr %i.rk, align 4
  %i.ry = and i32 %i.rx, 67108863
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.471, i32 noundef %i.ry, i32 noundef %i.ro, i32 noundef %i.ro) #35
  %i.rz = load i32, ptr %i.i, align 8, !tbaa !1070
  %i.sa = icmp sgt i32 %i.rz, 0
  br i1 %i.sa, label %.lr.ph185, label %._crit_edge186

._crit_edge186:                                   ; preds = %.lr.ph185, %.loopexit
  call void @_ZN5ImGui30DebugNodeFontGlyphesForSrcMaskEP6ImFontP11ImFontBakedi(ptr noundef nonnull %0, ptr noundef nonnull %i.qi, i32 noundef -1)
  call void @_ZN5ImGui7TreePopEv() #35
  br label %bb.bm

.lr.ph185:                                        ; preds = %.loopexit, %.lr.ph185
  %indvars.iv196 = phi i64 [ %indvars.iv.next197, %.lr.ph185 ], [ 0, %.loopexit ] ; 3 uses
  %i.sb = load ptr, ptr %i.pi, align 8, !tbaa !1071
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %i.sb, i64 %indvars.iv196
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !1072 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #35
  call void @_Z36ImFontAtlasBuildGetOversampleFactorsP12ImFontConfigP11ImFontBakedPiS3_(ptr noundef %i.sd, ptr noundef nonnull %i.qi, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #35
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 57
end_hunk_1
