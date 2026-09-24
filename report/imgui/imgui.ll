Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui?download=true
inline.NumInlined: 3345
inline.NumDeleted: 600
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZN5ImGui16ShowFontSelectorEPKc:bb.a
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !750  ; 2 uses
  %i.q = load i32, ptr %i.n, align 8, !tbaa !1060 ; 2 uses
  %i.r = sext i32 %i.q to i64
  %.idx = shl nsw i64 %i.r, 3
  %i.s = getelementptr inbounds i8, ptr %i.p, i64 %.idx
  %.not21 = icmp eq i32 %i.q, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %.pre23 = load ptr, ptr @GImGui, align 8, !tbaa !227
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN5ImGui5PopIDEv.exit, %bb.c
  call void @_ZN5ImGui8EndComboEv()
  br label %bb.l

bb.d:                                             ; preds = %.lr.ph, %_ZN5ImGui5PopIDEv.exit
  %i.u = phi ptr [ %.pre23, %.lr.ph ], [ %i.aq, %_ZN5ImGui5PopIDEv.exit ]
  %.022 = phi ptr [ %i.p, %.lr.ph ], [ %i.ar, %_ZN5ImGui5PopIDEv.exit ] ; 2 uses
  %i.v = load ptr, ptr %.022, align 8, !tbaa !751 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 5312
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !289  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.y = call noundef i32 @_ZN11ImGuiWindow5GetIDEPKv(ptr noundef nonnull align 8 dereferenceable(1077) %i.x, ptr noundef %i.v)
  store i32 %i.y, ptr %i.a, align 4, !tbaa !237
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 264
  call void @_ZN8ImVectorIjE9push_backERKj(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !1074
  %.not.i19 = icmp eq i32 %i.ab, 0
  br i1 %.not.i19, label %_ZNK6ImFont12GetDebugNameEv.exit20, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1075
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1076
  br label %_ZNK6ImFont12GetDebugNameEv.exit20

_ZNK6ImFont12GetDebugNameEv.exit20:               ; preds = %bb.d, %bb.e
  %i.af = phi ptr [ %i.ae, %bb.e ], [ @.str.785, %bb.d ]
  %i.ag = icmp eq ptr %i.v, %i.d                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  store <2 x float> zeroinitializer, ptr %1, align 8, !tbaa !75
  %i.ah = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef %i.af, i1 noundef zeroext %i.ag, i32 noundef 64, ptr noundef nonnull align 4 dereferenceable(8) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK6ImFont12GetDebugNameEv.exit20
  store ptr %i.v, ptr %i.t, align 8, !tbaa !1077
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK6ImFont12GetDebugNameEv.exit20
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_ZN5ImGui19SetItemDefaultFocusEv()
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ai = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 5312
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !289
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 264 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !870 ; 2 uses
  %i.an = icmp sgt i32 %i.am, 1
  br i1 %i.an, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.111), !inline_history !1016 ; 0 uses
  %.pre = load ptr, ptr @GImGui, align 8, !tbaa !227
  br label %_ZN5ImGui5PopIDEv.exit

bb.k:                                             ; preds = %bb.i
  %i.ap = add nsw i32 %i.am, -1
  store i32 %i.ap, ptr %i.al, align 8, !tbaa !516
  br label %_ZN5ImGui5PopIDEv.exit

_ZN5ImGui5PopIDEv.exit:                           ; preds = %bb.j, %bb.k
  %i.aq = phi ptr [ %.pre, %bb.j ], [ %i.ai, %bb.k ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.022, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.s
  br i1 %.not, label %._crit_edge, label %bb.d

bb.l:                                             ; preds = %._crit_edge, %_ZNK6ImFont12GetDebugNameEv.exit
  %i.as = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 5312
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !289 ; 10 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 209
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !927, !range !99, !noundef !236
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %_ZN5ImGui8SameLineEff.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 3300
  %i.az = load float, ptr %i.ay, align 4, !tbaa !993
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 280
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 288
  %i.bc = load float, ptr %i.bb, align 8, !tbaa !992
  %i.bd = fadd float %i.az, %i.bc
  store float %i.bd, ptr %i.ba, align 8, !tbaa !979
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 292
  %i.bf = load float, ptr %i.be, align 4, !tbaa !321
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 284
  store float %i.bf, ptr %i.bg, align 4, !tbaa !318
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 328
  %i.bi = getelementptr inbounds nuw i8, ptr %i.au, i64 320
  %i.bj = load i64, ptr %i.bh, align 8
  store i64 %i.bj, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.au, i64 340
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !971
  %i.bm = getelementptr inbounds nuw i8, ptr %i.au, i64 336
  store float %i.bl, ptr %i.bm, align 8, !tbaa !972
  %i.bn = getelementptr inbounds nuw i8, ptr %i.au, i64 344
  store i8 1, ptr %i.bn, align 8, !tbaa !973
  br label %_ZN5ImGui8SameLineEff.exit

_ZN5ImGui8SameLineEff.exit:                       ; preds = %bb.l, %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !773
  %i.bq = and i32 %i.bp, 16
  %.not18 = icmp eq i32 %i.bq, 0
  %.str.589..str.588 = select i1 %.not18, ptr @.str.589, ptr @.str.588
  call fastcc void @_ZL17MetricsHelpMarkerPKc(ptr noundef nonnull %.str.589..str.588)
  ret void
}

declare noundef zeroext i1 @_ZN5ImGui9DragFloatEPKcPffffS1_i(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL17MetricsHelpMarkerPKc(ptr noundef %0) unnamed_addr #0 {
bb.a:
  tail call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.289)
  %i.a = tail call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 4096)
  br i1 %i.a, label %bb.b, label %_ZN5ImGui16BeginItemTooltipEv.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN5ImGui14BeginTooltipExEii(i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4568
  %i.e = load float, ptr %i.d, align 8, !tbaa !410
  %i.f = fmul float %i.e, 3.500000e+01
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !289  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 520
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 496 ; 2 uses
  tail call void @_ZN8ImVectorIfE9push_backERKf(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
  store float %i.f, ptr %i.j, align 8, !tbaa !956
  tail call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef %0, ptr noundef null)
  %i.k = load ptr, ptr @GImGui, align 8, !tbaa !227
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 5312
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !289  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 520 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !1020 ; 3 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.103) ; 0 uses
  br label %_ZN5ImGui14PopTextWrapPosEv.exit

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 528
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !592
  %i.t = zext nneg i32 %i.o to i64
  %i.u = getelementptr [4 x i8], ptr %i.s, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 -4
  %i.w = load float, ptr %i.v, align 4, !tbaa !75
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 496
  store float %i.w, ptr %i.x, align 8, !tbaa !956
  %i.y = add nsw i32 %i.o, -1
  store i32 %i.y, ptr %i.n, align 8, !tbaa !651
  br label %_ZN5ImGui14PopTextWrapPosEv.exit

_ZN5ImGui14PopTextWrapPosEv.exit:                 ; preds = %bb.c, %bb.d
  tail call void @_ZN5ImGui3EndEv()
  br label %_ZN5ImGui16BeginItemTooltipEv.exit

_ZN5ImGui16BeginItemTooltipEv.exit:               ; preds = %bb.a, %_ZN5ImGui14PopTextWrapPosEv.exit
  ret void
}

declare noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKcS1_z(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare noundef ptr @_Z38ImFontAtlasGetFontLoaderForStbTruetypev() local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN11ImFontAtlas13SetFontLoaderEPK12ImFontLoader(ptr noundef nonnull align 8 dereferenceable(760), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui13DebugNodeFontEP6ImFont(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %1 = alloca %struct.ImFontStackData, align 8    ; 5 uses
  %i.b = alloca [5 x i8], align 1                 ; 13 uses
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.c = alloca [5 x i8], align 1                 ; 9 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = load ptr, ptr @GImGui, align 8, !tbaa !227
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !757  ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !1074 ; 2 uses
  %.not.i = icmp eq i32 %i.j, 0
  %.0.i.i158.sroa.gep194.a = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 3 uses
  %.0.i.i158.sroa.gep195 = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %.0.i.i158.sroa.gep196 = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %.0.i.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 6 uses
  %.0.i.i.sroa.gep197 = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 2 uses
  %.0.i.i.sroa.gep198 = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 4 uses
  br i1 %.not.i, label %_ZNK6ImFont12GetDebugNameEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1075
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1076
  br label %_ZNK6ImFont12GetDebugNameEv.exit

_ZNK6ImFont12GetDebugNameEv.exit:                 ; preds = %bb.a, %bb.b
  %i.n = phi ptr [ %i.m, %bb.b ], [ @.str.785, %bb.a ]
  %i.o = tail call noundef zeroext i1 (ptr, ptr, ...) @_ZN5ImGui8TreeNodeEPKvPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.460, ptr noundef %i.n, i32 noundef %i.j) ; 2 uses
  %.pre = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 7 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 5312
  %.pre201.a = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !289 ; 11 uses
  br i1 %i.o, label %_ZNK6ImFont12GetDebugNameEv.exit._crit_edge, label %bb.c

_ZNK6ImFont12GetDebugNameEv.exit._crit_edge:      ; preds = %_ZNK6ImFont12GetDebugNameEv.exit
  %.phi.trans.insert202.a = getelementptr inbounds nuw i8, ptr %.pre, i64 3332
  %.pre203.a = load float, ptr %.phi.trans.insert202.a, align 4, !tbaa !1041
  %.phi.trans.insert204.a = getelementptr inbounds nuw i8, ptr %.pre201.a, i64 348
  %.pre205.a = load float, ptr %.phi.trans.insert204.a, align 4, !tbaa !950
  %.phi.trans.insert206.a = getelementptr inbounds nuw i8, ptr %.pre201.a, i64 40
  %.pre207.a = load float, ptr %.phi.trans.insert206.a, align 8, !tbaa !693
  %.phi.trans.insert208 = getelementptr inbounds nuw i8, ptr %.pre201.a, i64 352
  %.pre209.a = load float, ptr %.phi.trans.insert208, align 8, !tbaa !991
  br label %bb.d

bb.c:                                             ; preds = %_ZNK6ImFont12GetDebugNameEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.pre201.a, i64 206
  store i8 1, ptr %i.p, align 2, !tbaa !679
  %i.q = getelementptr inbounds nuw i8, ptr %.pre, i64 3332
  %i.r = load float, ptr %i.q, align 4, !tbaa !1041 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.pre201.a, i64 280
  %i.t = getelementptr inbounds nuw i8, ptr %.pre201.a, i64 348 ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !950
  %i.v = fadd float %i.r, %i.u                    ; 3 uses
  store float %i.v, ptr %i.t, align 4, !tbaa !950
  %i.w = getelementptr inbounds nuw i8, ptr %.pre201.a, i64 40
  %i.x = load float, ptr %i.w, align 8, !tbaa !693 ; 2 uses
  %i.y = fadd float %i.v, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %.pre201.a, i64 352
  %i.aa = load float, ptr %i.z, align 8, !tbaa !991 ; 2 uses
  %i.ab = fadd float %i.y, %i.aa
  store float %i.ab, ptr %i.s, align 8, !tbaa !979
  br label %bb.d

bb.d:                                             ; preds = %_ZNK6ImFont12GetDebugNameEv.exit._crit_edge, %bb.c
  %i.ac = phi float [ %.pre209.a, %_ZNK6ImFont12GetDebugNameEv.exit._crit_edge ], [ %i.aa, %bb.c ]
  %i.ad = phi float [ %.pre207.a, %_ZNK6ImFont12GetDebugNameEv.exit._crit_edge ], [ %i.x, %bb.c ]
  %i.ae = phi float [ %.pre205.a, %_ZNK6ImFont12GetDebugNameEv.exit._crit_edge ], [ %i.v, %bb.c ]
  %i.af = phi float [ %.pre203.a, %_ZNK6ImFont12GetDebugNameEv.exit._crit_edge ], [ %i.r, %bb.c ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre201.a, i64 206
  store i8 1, ptr %i.ag, align 2, !tbaa !679
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre201.a, i64 280
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre201.a, i64 348
  %i.aj = fadd float %i.af, %i.ae                 ; 2 uses
  store float %i.aj, ptr %i.ai, align 4, !tbaa !950
  %i.ak = fadd float %i.aj, %i.ad
  %i.al = fadd float %i.ak, %i.ac
  store float %i.al, ptr %i.ah, align 8, !tbaa !979
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 10525
  %i.an = load i8, ptr %i.am, align 1, !tbaa !534, !range !99, !noundef !236
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.e, label %_ZN5ImGui7PopFontEv.exit

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre, i64 4552
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !409
  %i.ar = getelementptr inbounds nuw i8, ptr %.pre, i64 8088
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  store ptr %i.aq, ptr %1, align 8, !tbaa !754
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %.pre, i64 4572
  %i.au = getelementptr inbounds nuw i8, ptr %.pre, i64 4568
  %i.av = load <2 x float>, ptr %i.au, align 8, !tbaa !75
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.aw, ptr %i.as, align 8, !tbaa !75
  call void @_ZN8ImVectorI15ImFontStackDataE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  %i.ax = load float, ptr %i.at, align 4, !tbaa !752
  %i.ay = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4552
  store ptr %0, ptr %i.az, align 8, !tbaa !409
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4572
  store float %i.ax, ptr %i.ba, align 4, !tbaa !752
  call void @_ZN5ImGui21UpdateCurrentFontSizeEf(float noundef 0.000000e+00)
  %i.bb = load ptr, ptr %i.g, align 8, !tbaa !757 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 4608
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !430
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 4616
  store ptr %0, ptr %i.bd, align 8, !tbaa !758
  call void @_Z36ImFontAtlasUpdateDrawListsSharedDataP11ImFontAtlas(ptr noundef %i.bb)
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 5312
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !289 ; 2 uses
  %.not16.i.i = icmp eq ptr %i.bf, null
  br i1 %.not16.i.i, label %_ZN5ImGui8PushFontEP6ImFontf.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 712
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !408
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.bi, align 8, !tbaa !435
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !436
  call void @_ZN10ImDrawList11_SetTextureE12ImTextureRef(ptr noundef nonnull align 8 dereferenceable(224) %i.bh, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i)
  br label %_ZN5ImGui8PushFontEP6ImFontf.exit

_ZN5ImGui8PushFontEP6ImFontf.exit:                ; preds = %bb.e, %bb.f
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.461)
  %i.bj = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8088 ; 3 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !875 ; 2 uses
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN5ImGui8PushFontEP6ImFontf.exit
  %i.bn = call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.110), !inline_history !968 ; 0 uses
  br label %_ZN5ImGui7PopFontEv.exit

bb.h:                                             ; preds = %_ZN5ImGui8PushFontEP6ImFontf.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 8096
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !502
  %i.bq = zext nneg i32 %i.bl to i64
  %i.br = getelementptr [16 x i8], ptr %i.bp, i64 %i.bq ; 3 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 -16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !754 ; 4 uses
  %i.bu = getelementptr i8, ptr %i.br, i64 -8
  %i.bv = load float, ptr %i.bu, align 8, !tbaa !755
  %i.bw = getelementptr i8, ptr %i.br, i64 -4
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !756
  %i.by = getelementptr inbounds nuw i8, ptr %i.bj, i64 4552
  store ptr %i.bt, ptr %i.by, align 8, !tbaa !409
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bj, i64 4572
  store float %i.bv, ptr %i.bz, align 4, !tbaa !752
  call void @_ZN5ImGui21UpdateCurrentFontSizeEf(float noundef %i.bx), !inline_history !968
  %.not.i.i132 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i132, label %_ZN5ImGui14SetCurrentFontEP6ImFontff.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !757 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bj, i64 4608
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !430
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bj, i64 4616
  store ptr %i.bt, ptr %i.cd, align 8, !tbaa !758
  call void @_Z36ImFontAtlasUpdateDrawListsSharedDataP11ImFontAtlas(ptr noundef %i.cb), !inline_history !968
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bj, i64 5312
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !289 ; 2 uses
  %.not16.i.i133 = icmp eq ptr %i.cf, null
  br i1 %.not16.i.i133, label %_ZN5ImGui14SetCurrentFontEP6ImFontff.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 712
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !408
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %.sroa.0.0.copyload.i.i134 = load ptr, ptr %i.ci, align 8, !tbaa !435
  %.sroa.2.0..sroa_idx.i.i135 = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %.sroa.2.0.copyload.i.i136 = load i64, ptr %.sroa.2.0..sroa_idx.i.i135, align 8, !tbaa !436
  call void @_ZN10ImDrawList11_SetTextureE12ImTextureRef(ptr noundef nonnull align 8 dereferenceable(224) %i.ch, ptr %.sroa.0.0.copyload.i.i134, i64 %.sroa.2.0.copyload.i.i136), !inline_history !968
  br label %_ZN5ImGui14SetCurrentFontEP6ImFontff.exit.i

_ZN5ImGui14SetCurrentFontEP6ImFontff.exit.i:      ; preds = %bb.j, %bb.i, %bb.h
  %i.cj = load i32, ptr %i.bk, align 8, !tbaa !504
  %i.ck = add nsw i32 %i.cj, -1
  store i32 %i.ck, ptr %i.bk, align 8, !tbaa !504
  br label %_ZN5ImGui7PopFontEv.exit

_ZN5ImGui7PopFontEv.exit:                         ; preds = %_ZN5ImGui14SetCurrentFontEP6ImFontff.exit.i, %bb.g, %bb.d
  br i1 %i.o, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN5ImGui7PopFontEv.exit
  %i.cl = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 5312
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !289 ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 206
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 3332
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !1041 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 280
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 348 ; 2 uses
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !950
  %i.cu = fsub float %i.ct, %i.cq
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  %i.cw = load float, ptr %i.cv, align 8, !tbaa !693
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cn, i64 352
  %i.cy = load float, ptr %i.cx, align 8, !tbaa !991
  store i8 1, ptr %i.co, align 2, !tbaa !679
  %i.cz = fsub float %i.cu, %i.cq                 ; 2 uses
  store float %i.cz, ptr %i.cs, align 4, !tbaa !950
  %i.da = fadd float %i.cz, %i.cw
  %i.db = fadd float %i.da, %i.cy
  store float %i.db, ptr %i.cr, align 8, !tbaa !979
  br label %bb.bq

bb.l:                                             ; preds = %_ZN5ImGui7PopFontEv.exit
  %i.dc = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.462)
  %.pre210 = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 9 uses
  br i1 %i.dc, label %bb.m, label %bb.n
end_hunk_0
begin_hunk_1_@_ZN5ImGui13DebugNodeFontEP6ImFont:bb.a
  %i.ko = call noundef zeroext i1 (ptr, ptr, ...) @_ZN5ImGui8TreeNodeEPKvPKcz(ptr noundef %i.jw, ptr noundef nonnull @.str.470, i32 noundef %i.kl, ptr noundef %i.jw, i32 noundef %i.jy, i32 noundef %i.kb, i32 noundef %i.ke, i32 noundef %i.kh, double noundef %i.km, double noundef %i.kn)
  br i1 %i.ko, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jw, i64 136
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !1629 ; 2 uses
  %.not130 = icmp eq ptr %i.kq, null
  br i1 %.not130, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.kr = load ptr, ptr %i.js, align 8, !tbaa !1059
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %i.ks = phi ptr [ %i.kr, %bb.ap ], [ %i.kq, %bb.ao ]
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !1631 ; 2 uses
  %.not131 = icmp eq ptr %i.kt, null
  %spec.select = select i1 %.not131, ptr @.str.471, ptr %i.kt
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.244, ptr noundef nonnull %spec.select)
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.an
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ku = load i32, ptr %i.i, align 8, !tbaa !1074 ; 2 uses
  %i.kv = sext i32 %i.ku to i64
  %i.kw = icmp slt i64 %indvars.iv.next, %i.kv
  br i1 %i.kw, label %bb.an, label %._crit_edge, !llvm.loop !1613

bb.as:                                            ; preds = %._crit_edge
  %i.kx = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.472)
  br i1 %i.kx, label %bb.at, label %._crit_edge.thread

bb.at:                                            ; preds = %bb.as
  call void (ptr, ...) @_ZN5ImGui11TextWrappedEPKcz(ptr noundef nonnull @.str.473)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  store <2 x float> zeroinitializer, ptr %2, align 8, !tbaa !75
  %i.ky = call noundef zeroext i1 @_ZN5ImGui10BeginTableEPKciiRK6ImVec2f(ptr noundef nonnull @.str.474, i32 noundef 2, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %2, float noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  br i1 %i.ky, label %.preheader164, label %bb.bi

.preheader164:                                    ; preds = %bb.at
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.h, i64 696 ; 2 uses
  %i.lb = load i32, ptr %i.i, align 8, !tbaa !1074 ; 2 uses
  %i.lc = icmp sgt i32 %i.lb, 0
  br i1 %i.lc, label %.preheader164.split, label %.split.us

.split.us:                                        ; preds = %_ZL27CalcFontGlyphSrcOverlapMaskP11ImFontAtlasP6ImFontj.exit.thread, %.preheader164
  call void @_ZN5ImGui8EndTableEv()
  br label %bb.bi

.preheader164.split:                              ; preds = %.preheader164, %_ZL27CalcFontGlyphSrcOverlapMaskP11ImFontAtlasP6ImFontj.exit.thread
  %i.ld = phi i32 [ %i.pc, %_ZL27CalcFontGlyphSrcOverlapMaskP11ImFontAtlasP6ImFontj.exit.thread ], [ %i.lb, %.preheader164 ] ; 2 uses
  %.0120175 = phi i32 [ %i.pd, %_ZL27CalcFontGlyphSrcOverlapMaskP11ImFontAtlasP6ImFontj.exit.thread ], [ 0, %.preheader164 ] ; 11 uses
  %i.le = icmp sgt i32 %i.ld, 0
  br i1 %i.le, label %.lr.ph.i, label %_ZL27CalcFontGlyphSrcOverlapMaskP11ImFontAtlasP6ImFontj.exit.thread

.lr.ph.i:                                         ; preds = %.preheader164.split
  %i.lf = trunc nuw i32 %.0120175 to i16
  br label %bb.au

._crit_edge.loopexit.i:                           ; preds = %bb.aw
  %i.lg = icmp samesign ult i32 %.1.i, 2
  %.not127 = icmp eq i32 %.117.i, 0
  %or.cond = select i1 %i.lg, i1 true, i1 %.not127
  br i1 %or.cond, label %_ZL27CalcFontGlyphSrcOverlapMaskP11ImFontAtlasP6ImFontj.exit.thread, label %.preheader163.preheader

.preheader163.preheader:                          ; preds = %._crit_edge.loopexit.i
  %exitcond.not246 = icmp eq i32 %.0120175, 65535
  br i1 %exitcond.not246, label %.critedge, label %.lr.ph249

bb.au:                                            ; preds = %bb.aw, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.aw ] ; 3 uses
  %.01520.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.aw ]
  %.01619.i = phi i32 [ 0, %.lr.ph.i ], [ %.117.i, %bb.aw ]
  %i.lh = load ptr, ptr %i.kz, align 8, !tbaa !1075
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %indvars.iv.i
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !1076 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 136
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !1629 ; 2 uses
  %.not.i144 = icmp eq ptr %i.ll, null
  br i1 %.not.i144, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.lm = load ptr, ptr %i.la, align 8, !tbaa !1059
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.ln = phi ptr [ %i.lm, %bb.av ], [ %i.ll, %bb.au ]
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 40
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !1632
  %i.lq = call noundef zeroext i1 %i.lp(ptr noundef %i.h, ptr noundef nonnull %i.lj, i16 noundef zeroext %i.lf), !inline_history !1614 ; 2 uses
  %i.lr = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ls = shl nuw i32 1, %i.lr
  %i.lt = select i1 %i.lq, i32 %i.ls, i32 0
  %.117.i = or i32 %i.lt, %.01619.i               ; 5 uses
  %i.lu = zext i1 %i.lq to i32
  %.1.i = add nuw nsw i32 %.01520.i, %i.lu        ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.lv = load i32, ptr %i.i, align 8, !tbaa !1074 ; 3 uses
  %i.lw = sext i32 %i.lv to i64
  %i.lx = icmp slt i64 %indvars.iv.next.i, %i.lw
  br i1 %i.lx, label %bb.au, label %._crit_edge.loopexit.i, !llvm.loop !1615

.preheader163:                                    ; preds = %_ZL27CalcFontGlyphSrcOverlapMaskP11ImFontAtlasP6ImFontj.exit155
  %exitcond.not = icmp eq i32 %.0119248, 65535
  br i1 %exitcond.not, label %.critedge, label %.lr.ph249, !llvm.loop !1616

.lr.ph249:                                        ; preds = %.preheader163.preheader, %.preheader163
  %.0119.in247 = phi i32 [ %.0119248, %.preheader163 ], [ %.0120175, %.preheader163.preheader ] ; 2 uses
  %i.ly = phi i32 [ %i.mu, %.preheader163 ], [ %i.lv, %.preheader163.preheader ] ; 2 uses
  %.0119248 = add nuw nsw i32 %.0119.in247, 1     ; 5 uses
  %i.lz = icmp sgt i32 %i.ly, 0
  br i1 %i.lz, label %.lr.ph.i146, label %_ZL27CalcFontGlyphSrcOverlapMaskP11ImFontAtlasP6ImFontj.exit155

.lr.ph.i146:                                      ; preds = %.lr.ph249
  %i.ma = trunc nuw i32 %.0119248 to i16
  br label %bb.ax

._crit_edge.loopexit.i154:                        ; preds = %bb.az
  %i.mb = icmp samesign ugt i32 %.1.i152, 1
  %i.mc = select i1 %i.mb, i32 %.117.i151, i32 0
  br label %_ZL27CalcFontGlyphSrcOverlapMaskP11ImFontAtlasP6ImFontj.exit155

bb.ax:                                            ; preds = %bb.az, %.lr.ph.i146
  %indvars.iv.i147 = phi i64 [ 0, %.lr.ph.i146 ], [ %indvars.iv.next.i153, %bb.az ] ; 3 uses
  %.01520.i148 = phi i32 [ 0, %.lr.ph.i146 ], [ %.1.i152, %bb.az ]
  %.01619.i149 = phi i32 [ 0, %.lr.ph.i146 ], [ %.117.i151, %bb.az ]
  %i.md = load ptr, ptr %i.kz, align 8, !tbaa !1075
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %indvars.iv.i147
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !1076 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 136
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !1629 ; 2 uses
  %.not.i150 = icmp eq ptr %i.mh, null
  br i1 %.not.i150, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.mi = load ptr, ptr %i.la, align 8, !tbaa !1059
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.mj = phi ptr [ %i.mi, %bb.ay ], [ %i.mh, %bb.ax ]
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 40
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !1632
  %i.mm = call noundef zeroext i1 %i.ml(ptr noundef %i.h, ptr noundef nonnull %i.mf, i16 noundef zeroext %i.ma), !inline_history !1614 ; 2 uses
  %i.mn = trunc nuw nsw i64 %indvars.iv.i147 to i32
  %i.mo = shl nuw i32 1, %i.mn
  %i.mp = select i1 %i.mm, i32 %i.mo, i32 0
  %.117.i151 = or i32 %i.mp, %.01619.i149         ; 2 uses
  %i.mq = zext i1 %i.mm to i32
  %.1.i152 = add nuw nsw i32 %.01520.i148, %i.mq  ; 2 uses
  %indvars.iv.next.i153 = add nuw nsw i64 %indvars.iv.i147, 1 ; 2 uses
  %i.mr = load i32, ptr %i.i, align 8, !tbaa !1074 ; 2 uses
  %i.ms = sext i32 %i.mr to i64
  %i.mt = icmp slt i64 %indvars.iv.next.i153, %i.ms
  br i1 %i.mt, label %bb.ax, label %._crit_edge.loopexit.i154, !llvm.loop !1615

_ZL27CalcFontGlyphSrcOverlapMaskP11ImFontAtlasP6ImFontj.exit155: ; preds = %.lr.ph249, %._crit_edge.loopexit.i154
  %i.mu = phi i32 [ %i.ly, %.lr.ph249 ], [ %i.mr, %._crit_edge.loopexit.i154 ]
  %.015.lcssa.i145 = phi i32 [ 0, %.lr.ph249 ], [ %i.mc, %._crit_edge.loopexit.i154 ]
  %i.mv = icmp eq i32 %.015.lcssa.i145, %.117.i
  br i1 %i.mv, label %.preheader163, label %_ZL27CalcFontGlyphSrcOverlapMaskP11ImFontAtlasP6ImFontj.exit155..critedge_crit_edge, !llvm.loop !1616

_ZL27CalcFontGlyphSrcOverlapMaskP11ImFontAtlasP6ImFontj.exit155..critedge_crit_edge: ; preds = %_ZL27CalcFontGlyphSrcOverlapMaskP11ImFontAtlasP6ImFontj.exit155
  br label %.critedge, !llvm.loop !1616

.critedge:                                        ; preds = %.preheader163, %_ZL27CalcFontGlyphSrcOverlapMaskP11ImFontAtlasP6ImFontj.exit155..critedge_crit_edge, %.preheader163.preheader
  %.0119.in.lcssa = phi i32 [ %.0120175, %.preheader163.preheader ], [ %.0119.in247, %_ZL27CalcFontGlyphSrcOverlapMaskP11ImFontAtlasP6ImFontj.exit155..critedge_crit_edge ], [ %.0119248, %.preheader163 ] ; 5 uses
  %.0119.lcssa = phi i32 [ 65536, %.preheader163.preheader ], [ %.0119248, %_ZL27CalcFontGlyphSrcOverlapMaskP11ImFontAtlasP6ImFontj.exit155..critedge_crit_edge ], [ 65536, %.preheader163 ]
  %i.mw = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv()
  br i1 %i.mw, label %.lr.ph.i156, label %bb.bf

.lr.ph.i156:                                      ; preds = %.critedge, %.lr.ph.i156
  %.08.i = phi i32 [ %i.mz, %.lr.ph.i156 ], [ 0, %.critedge ]
  %.057.i = phi i32 [ %i.my, %.lr.ph.i156 ], [ %.117.i, %.critedge ] ; 2 uses
  %i.mx = add i32 %.057.i, -1
  %i.my = and i32 %i.mx, %.057.i                  ; 2 uses
  %i.mz = add i32 %.08.i, 1                       ; 2 uses
  %.not.i157 = icmp eq i32 %i.my, 0
  br i1 %.not.i157, label %_Z14ImCountSetBitsj.exit, label %.lr.ph.i156, !llvm.loop !46

_Z14ImCountSetBitsj.exit:                         ; preds = %.lr.ph.i156
  %i.na = zext nneg i32 %.0120175 to i64
  %i.nb = inttoptr i64 %i.na to ptr
  %i.nc = sub nuw nsw i32 %.0119.lcssa, %.0120175
  %i.nd = call noundef zeroext i1 (ptr, ptr, ...) @_ZN5ImGui8TreeNodeEPKvPKcz(ptr noundef %i.nb, ptr noundef nonnull @.str.475, i32 noundef %.0120175, i32 noundef %.0119.in.lcssa, i32 noundef %i.nc, i32 noundef %i.mz)
  br i1 %i.nd, label %bb.ba, label %bb.bf

bb.ba:                                            ; preds = %_Z14ImCountSetBitsj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  %.not128167 = icmp samesign ugt i32 %.0120175, %.0119.in.lcssa
  br i1 %.not128167, label %._crit_edge171, label %.lr.ph170

._crit_edge171:                                   ; preds = %_Z16ImTextCharToUtf8Pcj.exit159, %bb.ba
  call void @_ZN5ImGui7TreePopEv()
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  br label %bb.bf

.lr.ph170:                                        ; preds = %bb.ba, %_Z16ImTextCharToUtf8Pcj.exit159
  %.0118168 = phi i32 [ %i.nx, %_Z16ImTextCharToUtf8Pcj.exit159 ], [ %.0120175, %bb.ba ] ; 11 uses
  %i.ne = icmp samesign ult i32 %.0118168, 128
  br i1 %i.ne, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.lr.ph170
  %i.nf = trunc nuw nsw i32 %.0118168 to i8
  store i8 %i.nf, ptr %i.c, align 1, !tbaa !222
  br label %_Z16ImTextCharToUtf8Pcj.exit159

bb.bc:                                            ; preds = %.lr.ph170
  %i.ng = icmp samesign ult i32 %.0118168, 2048
  br i1 %i.ng, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.nh = lshr i32 %.0118168, 6
  %i.ni = trunc nuw nsw i32 %i.nh to i8
  %i.nj = or disjoint i8 %i.ni, -64
  store i8 %i.nj, ptr %i.c, align 1, !tbaa !222
  %i.nk = trunc i32 %.0118168 to i8
  %i.nl = and i8 %i.nk, 63
  %i.nm = or disjoint i8 %i.nl, -128
  store i8 %i.nm, ptr %.0.i.i158.sroa.gep194.a, align 1, !tbaa !222
  br label %_Z16ImTextCharToUtf8Pcj.exit159

bb.be:                                            ; preds = %bb.bc
  %i.nn = lshr i32 %.0118168, 12
  %i.no = trunc nuw nsw i32 %i.nn to i8
  %i.np = or disjoint i8 %i.no, -32
  store i8 %i.np, ptr %i.c, align 1, !tbaa !222
  %i.nq = lshr i32 %.0118168, 6
  %i.nr = trunc i32 %i.nq to i8
  %i.ns = and i8 %i.nr, 63
  %i.nt = or disjoint i8 %i.ns, -128
  store i8 %i.nt, ptr %.0.i.i158.sroa.gep194.a, align 1, !tbaa !222
  %i.nu = trunc i32 %.0118168 to i8
  %i.nv = and i8 %i.nu, 63
  %i.nw = or disjoint i8 %i.nv, -128
  store i8 %i.nw, ptr %.0.i.i158.sroa.gep196, align 1, !tbaa !222
  br label %_Z16ImTextCharToUtf8Pcj.exit159

_Z16ImTextCharToUtf8Pcj.exit159:                  ; preds = %bb.bb, %bb.bd, %bb.be
  %.0.i.i158.sroa.phi = phi ptr [ %.0.i.i158.sroa.gep194.a, %bb.bb ], [ %.0.i.i158.sroa.gep195, %bb.be ], [ %.0.i.i158.sroa.gep196, %bb.bd ]
  store i8 0, ptr %.0.i.i158.sroa.phi, align 1, !tbaa !222
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.476, i32 noundef %.0118168, ptr noundef nonnull %i.c)
  %i.nx = add nuw nsw i32 %.0118168, 1
  %exitcond188 = icmp eq i32 %.0118168, %.0119.in.lcssa
  br i1 %exitcond188, label %._crit_edge171, label %.lr.ph170, !llvm.loop !1617

bb.bf:                                            ; preds = %._crit_edge171, %_Z14ImCountSetBitsj.exit, %.critedge
  %i.ny = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  %i.nz = load i32, ptr %i.i, align 8, !tbaa !1074 ; 2 uses
  %i.oa = icmp sgt i32 %i.nz, 0
  br i1 %i.oa, label %.lr.ph174, label %_ZL27CalcFontGlyphSrcOverlapMaskP11ImFontAtlasP6ImFontj.exit.thread

.lr.ph174:                                        ; preds = %bb.bf, %_ZN5ImGui8SameLineEff.exit160
  %.0117172 = phi i32 [ %i.oz, %_ZN5ImGui8SameLineEff.exit160 ], [ 0, %bb.bf ] ; 3 uses
  %i.ob = shl nuw i32 1, %.0117172
  %i.oc = and i32 %i.ob, %.117.i
  %.not129 = icmp eq i32 %i.oc, 0
  br i1 %.not129, label %_ZN5ImGui8SameLineEff.exit160, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph174
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.477, i32 noundef %.0117172)
  %i.od = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 5312
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !289 ; 10 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 209
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !927, !range !99, !noundef !236
  %i.oi = trunc nuw i8 %i.oh to i1
  br i1 %i.oi, label %_ZN5ImGui8SameLineEff.exit160, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.oj = getelementptr inbounds nuw i8, ptr %i.od, i64 3300
  %i.ok = load float, ptr %i.oj, align 4, !tbaa !993
  %i.ol = getelementptr inbounds nuw i8, ptr %i.of, i64 280
  %i.om = getelementptr inbounds nuw i8, ptr %i.of, i64 288
  %i.on = load float, ptr %i.om, align 8, !tbaa !992
  %i.oo = fadd float %i.ok, %i.on
  store float %i.oo, ptr %i.ol, align 8, !tbaa !979
  %i.op = getelementptr inbounds nuw i8, ptr %i.of, i64 292
  %i.oq = load float, ptr %i.op, align 4, !tbaa !321
  %i.or = getelementptr inbounds nuw i8, ptr %i.of, i64 284
  store float %i.oq, ptr %i.or, align 4, !tbaa !318
  %i.os = getelementptr inbounds nuw i8, ptr %i.of, i64 328
  %i.ot = getelementptr inbounds nuw i8, ptr %i.of, i64 320
  %i.ou = load i64, ptr %i.os, align 8
  store i64 %i.ou, ptr %i.ot, align 8
  %i.ov = getelementptr inbounds nuw i8, ptr %i.of, i64 340
  %i.ow = load float, ptr %i.ov, align 4, !tbaa !971
  %i.ox = getelementptr inbounds nuw i8, ptr %i.of, i64 336
  store float %i.ow, ptr %i.ox, align 8, !tbaa !972
  %i.oy = getelementptr inbounds nuw i8, ptr %i.of, i64 344
  store i8 1, ptr %i.oy, align 8, !tbaa !973
  br label %_ZN5ImGui8SameLineEff.exit160

_ZN5ImGui8SameLineEff.exit160:                    ; preds = %bb.bh, %bb.bg, %.lr.ph174
  %i.oz = add nuw nsw i32 %.0117172, 1            ; 2 uses
  %i.pa = load i32, ptr %i.i, align 8, !tbaa !1074 ; 2 uses
  %i.pb = icmp slt i32 %i.oz, %i.pa
  br i1 %i.pb, label %.lr.ph174, label %_ZL27CalcFontGlyphSrcOverlapMaskP11ImFontAtlasP6ImFontj.exit.thread, !llvm.loop !1618

_ZL27CalcFontGlyphSrcOverlapMaskP11ImFontAtlasP6ImFontj.exit.thread: ; preds = %_ZN5ImGui8SameLineEff.exit160, %bb.bf, %._crit_edge.loopexit.i, %.preheader164.split
  %i.pc = phi i32 [ %i.lv, %._crit_edge.loopexit.i ], [ %i.ld, %.preheader164.split ], [ %i.nz, %bb.bf ], [ %i.pa, %_ZN5ImGui8SameLineEff.exit160 ]
  %.1 = phi i32 [ %.0120175, %._crit_edge.loopexit.i ], [ %.0120175, %.preheader164.split ], [ %.0119.in.lcssa, %bb.bf ], [ %.0119.in.lcssa, %_ZN5ImGui8SameLineEff.exit160 ]
  %i.pd = add i32 %.1, 1                          ; 2 uses
  %i.pe = icmp ult i32 %i.pd, 65536
  br i1 %i.pe, label %.preheader164.split, label %.split.us, !llvm.loop !1619

bb.bi:                                            ; preds = %.split.us, %bb.at
  call void @_ZN5ImGui7TreePopEv()
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_Z16ImTextCharToUtf8Pcj.exit143, %bb.bi, %bb.as, %._crit_edge
  %i.pf = getelementptr inbounds nuw i8, ptr %i.h, i64 688 ; 3 uses
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !747 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 192
  %i.pi = load i32, ptr %i.ph, align 8, !tbaa !1633
  %i.pj = icmp sgt i32 %i.pi, 0
  br i1 %i.pj, label %.lr.ph183, label %._crit_edge184

.lr.ph183:                                        ; preds = %._crit_edge.thread
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.bj

._crit_edge184:                                   ; preds = %_ZN5ImGui5PopIDEv.exit, %._crit_edge.thread
  call void @_ZN5ImGui7TreePopEv()
  %i.pl = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 5312
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !289 ; 5 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 206
  store i8 1, ptr %i.po, align 2, !tbaa !679
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pl, i64 3332
  %i.pq = load float, ptr %i.pp, align 4, !tbaa !1041
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pn, i64 280
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pn, i64 348 ; 2 uses
  %i.pt = load float, ptr %i.ps, align 4, !tbaa !950
  %i.pu = fsub float %i.pt, %i.pq                 ; 2 uses
  store float %i.pu, ptr %i.ps, align 4, !tbaa !950
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pn, i64 40
  %i.pw = load float, ptr %i.pv, align 8, !tbaa !693
  %i.px = fadd float %i.pu, %i.pw
  %i.py = getelementptr inbounds nuw i8, ptr %i.pn, i64 352
  %i.pz = load float, ptr %i.py, align 8, !tbaa !991
  %i.qa = fadd float %i.px, %i.pz
  store float %i.qa, ptr %i.pr, align 8, !tbaa !979
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  br label %bb.bq

bb.bj:                                            ; preds = %.lr.ph183, %_ZN5ImGui5PopIDEv.exit
  %i.qb = phi ptr [ %i.pg, %.lr.ph183 ], [ %i.vb, %_ZN5ImGui5PopIDEv.exit ]
  %.0116181 = phi i32 [ 0, %.lr.ph183 ], [ %i.va, %_ZN5ImGui5PopIDEv.exit ] ; 3 uses
  %i.qc = lshr i32 %.0116181, 5
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qb, i64 208
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !1634
  %i.qf = zext nneg i32 %i.qc to i64
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.qe, i64 %i.qf
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !1635
  %i.qi = and i32 %.0116181, 31
  %i.qj = zext nneg i32 %i.qi to i64
  %i.qk = getelementptr inbounds nuw [104 x i8], ptr %i.qh, i64 %i.qj ; 11 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 88
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !1636
  %.not = icmp eq ptr %i.qm, %0
  br i1 %.not, label %bb.bk, label %_ZN5ImGui5PopIDEv.exit

bb.bk:                                            ; preds = %bb.bj
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qk, i64 84
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !1637 ; 5 uses
  %i.qp = load ptr, ptr @GImGui, align 8, !tbaa !227
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 5312
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !289 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %.sroa.2.0.extract.shift.i.i = lshr i32 %i.qo, 8
  %.sroa.3.0.extract.shift.i.i = lshr i32 %i.qo, 16
  %.sroa.4.0.extract.shift.i.i = lshr i32 %i.qo, 24
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 264 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qr, i64 272
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !514
  %i.qv = load i32, ptr %i.qs, align 8, !tbaa !516
  %i.qw = sext i32 %i.qv to i64
  %i.qx = getelementptr [4 x i8], ptr %i.qu, i64 %i.qw
  %i.qy = getelementptr i8, ptr %i.qx, i64 -4
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !237
  %i.ra = xor i32 %i.qz, -1                       ; 2 uses
  %i.rb = lshr i32 %i.ra, 8
  %i.rc = xor i32 %i.qo, %i.ra
  %i.rd = and i32 %i.rc, 255
  %i.re = zext nneg i32 %i.rd to i64
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.re
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !237
  %i.rh = xor i32 %i.rg, %i.rb                    ; 2 uses
  %i.ri = lshr i32 %i.rh, 8
  %i.rj = xor i32 %i.rh, %.sroa.2.0.extract.shift.i.i
  %i.rk = and i32 %i.rj, 255
  %i.rl = zext nneg i32 %i.rk to i64
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.rl
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !237
  %i.ro = xor i32 %i.ri, %i.rn                    ; 2 uses
  %i.rp = lshr i32 %i.ro, 8
  %i.rq = xor i32 %i.ro, %.sroa.3.0.extract.shift.i.i
  %i.rr = and i32 %i.rq, 255
  %i.rs = zext nneg i32 %i.rr to i64
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.rs
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !237
  %i.rv = xor i32 %i.rp, %i.ru                    ; 2 uses
  %i.rw = lshr i32 %i.rv, 8
  %i.rx = and i32 %i.rv, 255
  %i.ry = xor i32 %i.rx, %.sroa.4.0.extract.shift.i.i
  %i.rz = zext nneg i32 %i.ry to i64
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.rz
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !237
  %i.sc = xor i32 %i.sb, %i.rw
  %i.sd = xor i32 %i.sc, -1                       ; 3 uses
  %i.se = load ptr, ptr %i.qr, align 8, !tbaa !636
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 5400
  %i.sg = load i32, ptr %i.sf, align 8, !tbaa !638
  %i.sh = icmp eq i32 %i.sg, %i.sd
  br i1 %i.sh, label %bb.bl, label %_ZN5ImGui6PushIDEi.exit

bb.bl:                                            ; preds = %bb.bk
  %i.si = sext i32 %i.qo to i64
  %i.sj = inttoptr i64 %i.si to ptr
  call void @_ZN5ImGui15DebugHookIdInfoEjiPKvS1_(i32 noundef %i.sd, i32 noundef 4, ptr noundef %i.sj, ptr noundef null)
  br label %_ZN5ImGui6PushIDEi.exit

_ZN5ImGui6PushIDEi.exit:                          ; preds = %bb.bk, %bb.bl
  store i32 %i.sd, ptr %i.a, align 4, !tbaa !237
  call void @_ZN8ImVectorIjE9push_backERKj(ptr noundef nonnull align 8 dereferenceable(16) %i.qs, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  %i.sk = getelementptr inbounds nuw i8, ptr %i.qk, i64 20
  %i.sl = load <2 x float>, ptr %i.sk, align 4, !tbaa !75
  %i.sm = fpext <2 x float> %i.sl to <2 x double> ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.qk, i64 48
  %i.so = load i32, ptr %i.sn, align 8, !tbaa !1638
  %i.sp = getelementptr inbounds nuw i8, ptr %i.qk, i64 80
  %i.sq = load i32, ptr %i.sp, align 8, !tbaa !1639
  %i.sr = load ptr, ptr %i.pf, align 8, !tbaa !747
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 164
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !1640
  %i.su = add nsw i32 %i.st, -1
  %i.sv = icmp slt i32 %i.sq, %i.su
  %i.sw = select i1 %i.sv, ptr @.str.480, ptr @.str.4
end_hunk_1
