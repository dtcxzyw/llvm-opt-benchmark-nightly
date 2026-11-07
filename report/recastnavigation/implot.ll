Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/implot?download=true
inline.NumInlined: 2055
inline.NumDeleted: 380
loop-unroll.NumCompletelyUnrolled: 57
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 76
begin_hunk_0_@_ZN6ImPlot21ShowLegendContextMenuER12ImPlotLegendb:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.z, align 8, !tbaa !318
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  store float %i.t, ptr %5, align 4, !tbaa !172
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %i.c, ptr %i.aa, align 4, !tbaa !173
  %i.ab = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.101, ptr noundef nonnull align 4 dereferenceable(8) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br i1 %i.ab, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 9, ptr %i.ac, align 8, !tbaa !318
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  store float %i.t, ptr %6, align 4, !tbaa !172
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.c, ptr %i.ad, align 4, !tbaa !173
  %i.ae = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.102, ptr noundef nonnull align 4 dereferenceable(8) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br i1 %i.ae, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 4, ptr %i.af, align 8, !tbaa !318
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  store float %i.t, ptr %7, align 4, !tbaa !172
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float %i.c, ptr %i.ag, align 4, !tbaa !173
  %i.ah = call noundef zeroext i1 @_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i(ptr noundef nonnull @.str.103, ptr noundef nonnull align 4 dereferenceable(8) %7, i32 noundef 0) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  store float %i.t, ptr %8, align 4, !tbaa !172
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 4
  store float %i.c, ptr %i.ai, align 4, !tbaa !173
  %i.aj = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.104, ptr noundef nonnull align 4 dereferenceable(8) %8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br i1 %i.aj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 8, ptr %i.ak, align 8, !tbaa !318
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  store float %i.t, ptr %9, align 4, !tbaa !172
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 4
  store float %i.c, ptr %i.al, align 4, !tbaa !173
  %i.am = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.105, ptr noundef nonnull align 4 dereferenceable(8) %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br i1 %i.am, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 6, ptr %i.an, align 8, !tbaa !318
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  store float %i.t, ptr %10, align 4, !tbaa !172
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 4
  store float %i.c, ptr %i.ao, align 4, !tbaa !173
  %i.ap = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.106, ptr noundef nonnull align 4 dereferenceable(8) %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br i1 %i.ap, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.aq, align 8, !tbaa !318
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  store float %i.t, ptr %11, align 4, !tbaa !172
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 4
  store float %i.c, ptr %i.ar, align 4, !tbaa !173
  %i.as = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.107, ptr noundef nonnull align 4 dereferenceable(8) %11) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  br i1 %i.as, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 10, ptr %i.at, align 8, !tbaa !318
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 1) #32
  ret i1 %i.d
}

declare noundef float @_ZN5ImGui14GetFrameHeightEv() local_unnamed_addr #5

declare noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i(ptr noundef, ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) local_unnamed_addr #5

declare void @_ZN5ImGui11PopStyleVarEi(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot23ShowSubplotsContextMenuER13ImPlotSubplot(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(330) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN5ImGui9BeginMenuEPKcb(ptr noundef nonnull @.str.108, i1 noundef zeroext true) #32
  br i1 %i.a, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 9 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !322
  %i.d = and i32 %i.c, 64
  %i.e = icmp ne i32 %i.d, 0
  %i.f = tail call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.109, ptr noundef null, i1 noundef zeroext %i.e, i1 noundef zeroext true) #32
  %.pre = load i32, ptr %i.b, align 4, !tbaa !29  ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %storemerge.i = xor i32 %.pre, 64               ; 2 uses
  store i32 %storemerge.i, ptr %i.b, align 4, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi i32 [ %storemerge.i, %bb.c ], [ %.pre, %bb.b ]
  %i.h = and i32 %i.g, 128
  %i.i = icmp ne i32 %i.h, 0
  %i.j = tail call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.110, ptr noundef null, i1 noundef zeroext %i.i, i1 noundef zeroext true) #32
  %.pre32 = load i32, ptr %i.b, align 4, !tbaa !29 ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %storemerge.i19 = xor i32 %.pre32, 128          ; 2 uses
  store i32 %storemerge.i19, ptr %i.b, align 4, !tbaa !29
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = phi i32 [ %storemerge.i19, %bb.e ], [ %.pre32, %bb.d ]
  %i.l = and i32 %i.k, 256
  %i.m = icmp ne i32 %i.l, 0
  %i.n = tail call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.111, ptr noundef null, i1 noundef zeroext %i.m, i1 noundef zeroext true) #32
  %.pre33 = load i32, ptr %i.b, align 4, !tbaa !29 ; 2 uses
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %storemerge.i20 = xor i32 %.pre33, 256          ; 2 uses
  store i32 %storemerge.i20, ptr %i.b, align 4, !tbaa !29
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = phi i32 [ %storemerge.i20, %bb.g ], [ %.pre33, %bb.f ]
  %i.p = and i32 %i.o, 512
  %i.q = icmp ne i32 %i.p, 0
  %i.r = tail call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.112, ptr noundef null, i1 noundef zeroext %i.q, i1 noundef zeroext true) #32
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.s = load i32, ptr %i.b, align 4, !tbaa !29
  %storemerge.i21 = xor i32 %i.s, 512
  store i32 %storemerge.i21, ptr %i.b, align 4, !tbaa !29
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @_ZN5ImGui7EndMenuEv() #32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.a
  %i.t = tail call noundef zeroext i1 @_ZN5ImGui9BeginMenuEPKcb(ptr noundef nonnull @.str.113, i1 noundef zeroext true) #32
  br i1 %i.t, label %bb.l, label %bb.w

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 329 ; 3 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !323, !range !263, !noundef !264
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN6ImPlot21BeginDisabledControlsEb.exit.thread, label %_ZN6ImPlot21BeginDisabledControlsEb.exit

_ZN6ImPlot21BeginDisabledControlsEb.exit:         ; preds = %bb.l
  tail call void @_ZN5ImGui12PushItemFlagEib(i32 noundef 1024, i1 noundef zeroext true) #32
  %i.x = tail call noundef nonnull align 4 dereferenceable(1232) ptr @_ZN5ImGui8GetStyleEv() #32
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.z = load float, ptr %i.y, align 4, !tbaa !298
  %i.aa = fmul float %i.z, 2.500000e-01
  tail call void @_ZN5ImGui12PushStyleVarEif(i32 noundef 0, float noundef %i.aa) #32
  %.pre34.a = load i8, ptr %i.u, align 1, !tbaa !323
  %i.ab = trunc nuw i8 %.pre34.a to i1
  br i1 %i.ab, label %_ZN6ImPlot21BeginDisabledControlsEb.exit.thread, label %bb.m

_ZN6ImPlot21BeginDisabledControlsEb.exit.thread:  ; preds = %bb.l, %_ZN6ImPlot21BeginDisabledControlsEb.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !322
  %i.ae = and i32 %i.ad, 1
  %.not = icmp eq i32 %i.ae, 0
  br label %bb.m

bb.m:                                             ; preds = %_ZN6ImPlot21BeginDisabledControlsEb.exit.thread, %_ZN6ImPlot21BeginDisabledControlsEb.exit
  %i.af = phi i1 [ false, %_ZN6ImPlot21BeginDisabledControlsEb.exit ], [ %.not, %_ZN6ImPlot21BeginDisabledControlsEb.exit.thread ]
  %i.ag = tail call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.114, ptr noundef null, i1 noundef zeroext %i.af, i1 noundef zeroext true) #32
  br i1 %i.ag, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !29
  %storemerge.i22 = xor i32 %i.ai, 1
  store i32 %storemerge.i22, ptr %i.ah, align 4, !tbaa !29
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.aj = load i8, ptr %i.u, align 1, !tbaa !323, !range !263, !noundef !264
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZN6ImPlot19EndDisabledControlsEb.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN5ImGui11PopItemFlagEv() #32
  tail call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 1) #32
  br label %_ZN6ImPlot19EndDisabledControlsEb.exit

_ZN6ImPlot19EndDisabledControlsEb.exit:           ; preds = %bb.o, %bb.p
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 7 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !322
  %i.an = and i32 %i.am, 8
  %.not27 = icmp eq i32 %i.an, 0
  %i.ao = tail call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.115, ptr noundef null, i1 noundef zeroext %.not27, i1 noundef zeroext true) #32
  %.pre35.a = load i32, ptr %i.al, align 4, !tbaa !29 ; 2 uses
  br i1 %i.ao, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN6ImPlot19EndDisabledControlsEb.exit
  %storemerge.i23 = xor i32 %.pre35.a, 8          ; 2 uses
  store i32 %storemerge.i23, ptr %i.al, align 4, !tbaa !29
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN6ImPlot19EndDisabledControlsEb.exit
  %i.ap = phi i32 [ %storemerge.i23, %bb.q ], [ %.pre35.a, %_ZN6ImPlot19EndDisabledControlsEb.exit ]
  %i.aq = and i32 %i.ap, 16
  %.not29 = icmp eq i32 %i.aq, 0
  %i.ar = tail call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.116, ptr noundef null, i1 noundef zeroext %.not29, i1 noundef zeroext true) #32
  %.pre36 = load i32, ptr %i.al, align 4, !tbaa !29 ; 2 uses
  br i1 %i.ar, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %storemerge.i24 = xor i32 %.pre36, 16           ; 2 uses
  store i32 %storemerge.i24, ptr %i.al, align 4, !tbaa !29
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.as = phi i32 [ %storemerge.i24, %bb.s ], [ %.pre36, %bb.r ]
  %i.at = and i32 %i.as, 32
  %i.au = icmp ne i32 %i.at, 0
  %i.av = tail call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.117, ptr noundef null, i1 noundef zeroext %i.au, i1 noundef zeroext true) #32
  br i1 %i.av, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.aw = load i32, ptr %i.al, align 4, !tbaa !29
  %storemerge.i25 = xor i32 %i.aw, 32
  store i32 %storemerge.i25, ptr %i.al, align 4, !tbaa !29
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  tail call void @_ZN5ImGui7EndMenuEv() #32
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.k
  ret void
}

declare noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot19ShowPlotContextMenuER10ImPlotPlot(ptr noundef nonnull align 8 dereferenceable(2557) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 27 uses
  %i.b = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !324
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2296
  %i.f = icmp eq ptr %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 17 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !326
  %.fr93 = freeze i32 %i.h
  %i.i = and i32 %.fr93, 128
  %.not73 = icmp eq i32 %i.i, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2288 ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.m = load i8, ptr %i.l, align 4, !tbaa !299, !range !263, !noundef !264
  %i.n = trunc nuw i8 %i.m to i1                  ; 2 uses
  br i1 %.not73, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  br i1 %i.n, label %bb.ak, label %.split.1

.split.us.preheader:                              ; preds = %bb.a
  br i1 %i.n, label %bb.b, label %.split.us.1

bb.b:                                             ; preds = %.split.us.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !300
  %i.q = and i32 %i.p, 32
  %.not.i.us = icmp eq i32 %i.q, 0
  br i1 %.not.i.us, label %bb.c, label %.split.us.1

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5ImGui6PushIDEi(i32 noundef 0) #32
  %i.r = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 15, ptr noundef nonnull @.str.118, i32 noundef 1) #32 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.t = load i32, ptr %i.s, align 8, !tbaa !296  ; 2 uses
  %.not.i61.us = icmp ne i32 %i.t, -1
  %i.u = load i32, ptr %i.o, align 4
  %i.v = and i32 %i.u, 1
  %.not1.i.us = icmp eq i32 %i.v, 0
  %i.w = select i1 %.not.i61.us, i1 %.not1.i.us, i1 false
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !327
  %i.y = sext i32 %i.t to i64
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 %i.y
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aa = phi ptr [ %i.z, %bb.d ], [ %i.a, %bb.c ]
  %i.ab = call noundef zeroext i1 @_ZN5ImGui9BeginMenuEPKcb(ptr noundef %i.aa, i1 noundef zeroext true) #32
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZN6ImPlot19ShowAxisContextMenuER10ImPlotAxisPS0_b(ptr noundef nonnull align 8 dereferenceable(372) %i.j, ptr noundef null, i1 zeroext poison)
  call void @_ZN5ImGui7EndMenuEv() #32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @_ZN5ImGui5PopIDEv() #32
  br label %.split.us.1

.split.us.1:                                      ; preds = %bb.g, %bb.b, %.split.us.preheader
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 764
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !299, !range !263, !noundef !264
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.h, label %.split.us.2

bb.h:                                             ; preds = %.split.us.1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 404 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !300
  %i.ai = and i32 %i.ah, 32
  %.not.i.us.1 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.us.1, label %bb.i, label %.split.us.2

bb.i:                                             ; preds = %bb.h
  call void @_ZN5ImGui6PushIDEi(i32 noundef 1) #32
  %i.aj = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 15, ptr noundef nonnull @.str.119, i32 noundef 2) #32 ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !296 ; 2 uses
  %.not.i61.us.1 = icmp ne i32 %i.al, -1
  %i.am = load i32, ptr %i.ag, align 4
  %i.an = and i32 %i.am, 1
  %.not1.i.us.1 = icmp eq i32 %i.an, 0
  %i.ao = select i1 %.not.i61.us.1, i1 %.not1.i.us.1, i1 false
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = load ptr, ptr %i.k, align 8, !tbaa !327
  %i.aq = sext i32 %i.al to i64
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 %i.aq
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.as = phi ptr [ %i.ar, %bb.j ], [ %i.a, %bb.i ]
  %i.at = call noundef zeroext i1 @_ZN5ImGui9BeginMenuEPKcb(ptr noundef %i.as, i1 noundef zeroext true) #32
  br i1 %i.at, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @_ZN6ImPlot19ShowAxisContextMenuER10ImPlotAxisPS0_b(ptr noundef nonnull align 8 dereferenceable(372) %i.ac, ptr noundef null, i1 zeroext poison)
  call void @_ZN5ImGui7EndMenuEv() #32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @_ZN5ImGui5PopIDEv() #32
  br label %.split.us.2

.split.us.2:                                      ; preds = %bb.m, %bb.h, %.split.us.1
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1140
  %i.aw = load i8, ptr %i.av, align 4, !tbaa !299, !range !263, !noundef !264
end_hunk_0
begin_hunk_1_@_ZN6ImPlot11UpdateInputER10ImPlotPlot:bb.a
  br i1 %i.no, label %bb.cw, label %_ZN10ImPlotAxis9SetAspectEd.exit

bb.cw:                                            ; preds = %bb.cv
  %i.np = and i32 %i.ne, 57344
  %or.cond930 = icmp eq i32 %i.np, 0
  br i1 %or.cond930, label %bb.cx, label %_ZN10ImPlotAxis11IsPanLockedEb.exit.thread658

bb.cx:                                            ; preds = %bb.cw
  br i1 %i.nn, label %.split, label %_ZN10ImPlotAxis11IsPanLockedEb.exit

.split:                                           ; preds = %bb.cx
  %i.nq = getelementptr inbounds nuw i8, ptr %i.mp, i64 24
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !302
  %i.ns = getelementptr inbounds nuw i8, ptr %i.mp, i64 72
  %i.nt = load double, ptr %i.ns, align 8, !tbaa !313
  %i.nu = fcmp oeq double %i.nr, %i.nt
  br i1 %i.nu, label %_ZN10ImPlotAxis9SetAspectEd.exit, label %_ZN10ImPlotAxis11IsPanLockedEb.exit.thread658

_ZN10ImPlotAxis11IsPanLockedEb.exit:              ; preds = %bb.cx
  %i.nv = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !301
  %i.nx = getelementptr inbounds nuw i8, ptr %i.mp, i64 64
  %i.ny = load double, ptr %i.nx, align 8, !tbaa !303
  %i.nz = fcmp oeq double %i.nw, %i.ny
  br i1 %i.nz, label %_ZN10ImPlotAxis9SetAspectEd.exit, label %_ZN10ImPlotAxis11IsPanLockedEb.exit.thread658

_ZN10ImPlotAxis11IsPanLockedEb.exit.thread658:    ; preds = %bb.cw, %.split, %_ZN10ImPlotAxis11IsPanLockedEb.exit
  %i.oa = load float, ptr %i.g, align 8, !tbaa !358
  %i.ob = fsub float %i.oa, %i.nk
  %i.oc = getelementptr inbounds nuw i8, ptr %i.mp, i64 272 ; 5 uses
  %i.od = load float, ptr %i.oc, align 8, !tbaa !307 ; 2 uses
  %i.oe = fsub float %i.ob, %i.od
  %i.of = fpext float %i.oe to double
  %i.og = getelementptr inbounds nuw i8, ptr %i.mp, i64 296 ; 4 uses
  %i.oh = load double, ptr %i.og, align 8, !tbaa !308 ; 2 uses
  %i.oi = fdiv double %i.of, %i.oh
  %i.oj = getelementptr inbounds nuw i8, ptr %i.mp, i64 16 ; 5 uses
  %i.ok = load double, ptr %i.oj, align 8, !tbaa !301 ; 4 uses
  %i.ol = fadd double %i.ok, %i.oi                ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.mp, i64 256 ; 2 uses
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !372 ; 2 uses
  %.not.i414 = icmp eq ptr %i.on, null
  br i1 %.not.i414, label %_ZNK10ImPlotAxis12PixelsToPlotEf.exit, label %bb.cy

bb.cy:                                            ; preds = %_ZN10ImPlotAxis11IsPanLockedEb.exit.thread658
  %i.oo = fsub double %i.ol, %i.ok
  %i.op = getelementptr inbounds nuw i8, ptr %i.mp, i64 24
  %i.oq = load double, ptr %i.op, align 8, !tbaa !276
  %i.or = fsub double %i.oq, %i.ok
  %i.os = fdiv double %i.oo, %i.or
  %i.ot = getelementptr inbounds nuw i8, ptr %i.mp, i64 288
  %i.ou = load double, ptr %i.ot, align 8, !tbaa !312
  %i.ov = getelementptr inbounds nuw i8, ptr %i.mp, i64 280
  %i.ow = load double, ptr %i.ov, align 8, !tbaa !311 ; 2 uses
  %i.ox = fsub double %i.ou, %i.ow
  %i.oy = tail call double @llvm.fmuladd.f64(double %i.os, double %i.ox, double %i.ow)
  %i.oz = getelementptr inbounds nuw i8, ptr %i.mp, i64 264
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !310
  %i.pb = tail call noundef double %i.on(double noundef %i.oy, ptr noundef %i.pa) #32, !inline_history !11
  %.pre = load float, ptr %i.mk, align 4, !tbaa !573
  %.pre763 = load float, ptr %i.oc, align 8, !tbaa !307
  %.pre764 = load double, ptr %i.og, align 8, !tbaa !308
  %.pre765 = load double, ptr %i.oj, align 8, !tbaa !301
  %.pre766 = load ptr, ptr %i.om, align 8, !tbaa !372
  br label %_ZNK10ImPlotAxis12PixelsToPlotEf.exit

_ZNK10ImPlotAxis12PixelsToPlotEf.exit:            ; preds = %_ZN10ImPlotAxis11IsPanLockedEb.exit.thread658, %bb.cy
  %i.pc = phi ptr [ %.pre766, %bb.cy ], [ null, %_ZN10ImPlotAxis11IsPanLockedEb.exit.thread658 ] ; 2 uses
  %i.pd = phi double [ %.pre765, %bb.cy ], [ %i.ok, %_ZN10ImPlotAxis11IsPanLockedEb.exit.thread658 ] ; 3 uses
  %i.pe = phi double [ %.pre764, %bb.cy ], [ %i.oh, %_ZN10ImPlotAxis11IsPanLockedEb.exit.thread658 ]
  %i.pf = phi float [ %.pre763, %bb.cy ], [ %i.od, %_ZN10ImPlotAxis11IsPanLockedEb.exit.thread658 ]
  %i.pg = phi float [ %.pre, %bb.cy ], [ %i.nk, %_ZN10ImPlotAxis11IsPanLockedEb.exit.thread658 ]
  %.0.i415 = phi double [ %i.pb, %bb.cy ], [ %i.ol, %_ZN10ImPlotAxis11IsPanLockedEb.exit.thread658 ] ; 4 uses
  %i.ph = load float, ptr %i.ml, align 8, !tbaa !359
  %i.pi = fsub float %i.ph, %i.pg
  %i.pj = fsub float %i.pi, %i.pf
  %i.pk = fpext float %i.pj to double
  %i.pl = fdiv double %i.pk, %i.pe
  %i.pm = fadd double %i.pd, %i.pl                ; 2 uses
  %.not.i416 = icmp eq ptr %i.pc, null
  br i1 %.not.i416, label %_ZNK10ImPlotAxis12PixelsToPlotEf.exit418, label %bb.cz

bb.cz:                                            ; preds = %_ZNK10ImPlotAxis12PixelsToPlotEf.exit
  %i.pn = fsub double %i.pm, %i.pd
  %i.po = getelementptr inbounds nuw i8, ptr %i.mp, i64 24
  %i.pp = load double, ptr %i.po, align 8, !tbaa !276
  %i.pq = fsub double %i.pp, %i.pd
  %i.pr = fdiv double %i.pn, %i.pq
  %i.ps = getelementptr inbounds nuw i8, ptr %i.mp, i64 288
  %i.pt = load double, ptr %i.ps, align 8, !tbaa !312
  %i.pu = getelementptr inbounds nuw i8, ptr %i.mp, i64 280
  %i.pv = load double, ptr %i.pu, align 8, !tbaa !311 ; 2 uses
  %i.pw = fsub double %i.pt, %i.pv
  %i.px = tail call double @llvm.fmuladd.f64(double %i.pr, double %i.pw, double %i.pv)
  %i.py = getelementptr inbounds nuw i8, ptr %i.mp, i64 264
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !310
  %i.qa = tail call noundef double %i.pc(double noundef %i.px, ptr noundef %i.pz) #32, !inline_history !11
  br label %_ZNK10ImPlotAxis12PixelsToPlotEf.exit418

_ZNK10ImPlotAxis12PixelsToPlotEf.exit418:         ; preds = %_ZNK10ImPlotAxis12PixelsToPlotEf.exit, %bb.cz
  %.0.i417 = phi double [ %i.qa, %bb.cz ], [ %i.pm, %_ZNK10ImPlotAxis12PixelsToPlotEf.exit ] ; 4 uses
  %i.qb = load i32, ptr %i.nd, align 4, !tbaa !300 ; 4 uses
  %i.qc = and i32 %i.qb, 1024                     ; 3 uses
  %.not704.a = icmp eq i32 %i.qc, 0
  %i.qd = select i1 %.not704.a, double %.0.i415, double %.0.i417 ; 3 uses
  %i.qe = load i8, ptr %i.mt, align 4, !tbaa !299, !range !263, !noundef !264
  %i.qf = trunc nuw i8 %i.qe to i1
  br i1 %i.qf, label %bb.da, label %_ZN10ImPlotAxis6SetMaxEdb.exit

bb.da:                                            ; preds = %_ZNK10ImPlotAxis12PixelsToPlotEf.exit418
  %i.qg = load i8, ptr %i.mw, align 1, !tbaa !295, !range !263, !noundef !264
  %i.qh = trunc nuw i8 %i.qg to i1
  %i.qi = load i32, ptr %i.mz, align 8
  %i.qj = icmp ne i32 %i.qi, 1
  %not.705.a = xor i1 %i.qh, true
  %i.qk = select i1 %not.705.a, i1 true, i1 %i.qj
  %i.ql = and i32 %i.qb, 16384
  %.not.i419 = icmp eq i32 %i.ql, 0
  %or.cond678 = select i1 %i.qk, i1 %.not.i419, i1 false
  br i1 %or.cond678, label %bb.db, label %_ZN10ImPlotAxis6SetMinEdb.exit.thread

bb.db:                                            ; preds = %bb.da
  %i.qm = fcmp ult double %i.qd, f0x7FEFFFFFFFFFFFFF
  %i.qn = fcmp ole double %i.qd, f0xFFEFFFFFFFFFFFFF
  %i.qo = select i1 %i.qn, double f0xFFEFFFFFFFFFFFFF, double %i.qd
  %i.qp = select i1 %i.qm, double %i.qo, double f0x7FEFFFFFFFFFFFFF ; 2 uses
  %.inv.i.i = fcmp ord double %i.qp, 0.000000e+00
  %i.qq = select i1 %.inv.i.i, double %i.qp, double 0.000000e+00 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.mp, i64 64
  %i.qs = load double, ptr %i.qr, align 8, !tbaa !303 ; 2 uses
  %i.qt = fcmp olt double %i.qq, %i.qs
  %.010.i = select i1 %i.qt, double %i.qs, double %i.qq ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.mp, i64 24 ; 2 uses
  %i.qv = load double, ptr %i.qu, align 8, !tbaa !302 ; 6 uses
  %i.qw = fsub double %i.qv, %.010.i              ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.mp, i64 80
  %i.qy = load double, ptr %i.qx, align 8, !tbaa !304 ; 2 uses
  %i.qz = fcmp olt double %i.qw, %i.qy
  %i.ra = fsub double %i.qv, %i.qy
  %.111.i = select i1 %i.qz, double %i.ra, double %.010.i
  %i.rb = getelementptr inbounds nuw i8, ptr %i.mp, i64 88
  %i.rc = load double, ptr %i.rb, align 8, !tbaa !305 ; 2 uses
  %i.rd = fcmp ogt double %i.qw, %i.rc
  %i.re = fsub double %i.qv, %i.rc
  %.2.i = select i1 %i.rd, double %i.re, double %.111.i ; 8 uses
  %i.rf = fcmp ult double %.2.i, %i.qv
  br i1 %i.rf, label %bb.dc, label %_ZN10ImPlotAxis6SetMinEdb.exit.thread

bb.dc:                                            ; preds = %bb.db
  store double %.2.i, ptr %i.oj, align 8, !tbaa !301
  %i.rg = fptosi double %.2.i to i64
  %i.rh = tail call double @llvm.floor.f64(double %.2.i)
  %i.ri = fmul double %i.rh, -1.000000e+06
  %i.rj = tail call double @llvm.fmuladd.f64(double %.2.i, double 1.000000e+06, double %i.ri)
  %i.rk = fptosi double %i.rj to i32              ; 2 uses
  %i.rl = sdiv i32 %i.rk, 1000000
  %i.rm = sext i32 %i.rl to i64
  %i.rn = add nsw i64 %i.rm, %i.rg
  %i.ro = srem i32 %i.rk, 1000000
  %i.rp = getelementptr inbounds nuw i8, ptr %i.mp, i64 216
  store i64 %i.rn, ptr %i.rp, align 8, !tbaa !285
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mp, i64 224
  store i32 %i.ro, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !29
  %i.rq = getelementptr inbounds nuw i8, ptr %i.mp, i64 276
  %i.rr = load float, ptr %i.rq, align 4, !tbaa !306
  %i.rs = load float, ptr %i.oc, align 8, !tbaa !307
  %i.rt = fsub float %i.rr, %i.rs
  %i.ru = fpext float %i.rt to double
  %i.rv = fsub double %i.qv, %.2.i
  %i.rw = fdiv double %i.ru, %i.rv
  store double %i.rw, ptr %i.og, align 8, !tbaa !308
  %i.rx = getelementptr inbounds nuw i8, ptr %i.mp, i64 248 ; 2 uses
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !309 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ry, null
  br i1 %.not.i.i, label %_ZN10ImPlotAxis6SetMinEdb.exit.thread872, label %_ZN10ImPlotAxis6SetMinEdb.exit

_ZN10ImPlotAxis6SetMinEdb.exit.thread872:         ; preds = %bb.dc
  %i.rz = getelementptr inbounds nuw i8, ptr %i.mp, i64 280
  store double %.2.i, ptr %i.rz, align 8, !tbaa !311
  %i.sa = getelementptr inbounds nuw i8, ptr %i.mp, i64 288
  store double %i.qv, ptr %i.sa, align 8, !tbaa !312
  %.not706877 = icmp eq i32 %i.qc, 0
  %i.sb = select i1 %.not706877, double %.0.i417, double %.0.i415
  br label %bb.dd

_ZN10ImPlotAxis6SetMinEdb.exit.thread:            ; preds = %bb.da, %bb.db
  %.not706868 = icmp eq i32 %i.qc, 0
  %i.sc = select i1 %.not706868, double %.0.i417, double %.0.i415
  br label %bb.dd

_ZN10ImPlotAxis6SetMinEdb.exit:                   ; preds = %bb.dc
  %i.sd = getelementptr inbounds nuw i8, ptr %i.mp, i64 264 ; 2 uses
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !310
  %i.sf = tail call noundef double %i.ry(double noundef %.2.i, ptr noundef %i.se) #32, !inline_history !8
  %i.sg = getelementptr inbounds nuw i8, ptr %i.mp, i64 280
  store double %i.sf, ptr %i.sg, align 8, !tbaa !311
  %i.sh = load ptr, ptr %i.rx, align 8, !tbaa !309
  %i.si = load double, ptr %i.qu, align 8, !tbaa !302
  %i.sj = load ptr, ptr %i.sd, align 8, !tbaa !310
  %i.sk = tail call noundef double %i.sh(double noundef %i.si, ptr noundef %i.sj) #32, !inline_history !8
  %.pr.pre.pre = load i8, ptr %i.mt, align 4, !tbaa !299
  %.pre773.pre = load i32, ptr %i.nd, align 4, !tbaa !300 ; 2 uses
  %.pre819 = and i32 %.pre773.pre, 1024
  %i.sl = trunc nuw i8 %.pr.pre.pre to i1
  %i.sm = getelementptr inbounds nuw i8, ptr %i.mp, i64 288
  store double %i.sk, ptr %i.sm, align 8, !tbaa !312
  %.not706.a = icmp eq i32 %.pre819, 0
  %i.sn = select i1 %.not706.a, double %.0.i417, double %.0.i415
  br i1 %i.sl, label %bb.dd, label %_ZN10ImPlotAxis6SetMaxEdb.exit

bb.dd:                                            ; preds = %_ZN10ImPlotAxis6SetMinEdb.exit.thread872, %_ZN10ImPlotAxis6SetMinEdb.exit.thread, %_ZN10ImPlotAxis6SetMinEdb.exit
  %i.so = phi double [ %i.sc, %_ZN10ImPlotAxis6SetMinEdb.exit.thread ], [ %i.sn, %_ZN10ImPlotAxis6SetMinEdb.exit ], [ %i.sb, %_ZN10ImPlotAxis6SetMinEdb.exit.thread872 ] ; 3 uses
  %i.sp = phi i32 [ %i.qb, %_ZN10ImPlotAxis6SetMinEdb.exit.thread ], [ %.pre773.pre, %_ZN10ImPlotAxis6SetMinEdb.exit ], [ %i.qb, %_ZN10ImPlotAxis6SetMinEdb.exit.thread872 ]
  %i.sq = load i8, ptr %i.mw, align 1, !tbaa !295, !range !263, !noundef !264
  %i.sr = trunc nuw i8 %i.sq to i1
  %i.ss = load i32, ptr %i.mz, align 8
  %i.st = icmp ne i32 %i.ss, 1
  %not.707.a = xor i1 %i.sr, true
  %i.su = select i1 %not.707.a, i1 true, i1 %i.st
  %i.sv = and i32 %i.sp, 32768
  %.not.i421 = icmp eq i32 %i.sv, 0
  %or.cond680 = select i1 %i.su, i1 %.not.i421, i1 false
  br i1 %or.cond680, label %bb.de, label %_ZN10ImPlotAxis6SetMaxEdb.exit

bb.de:                                            ; preds = %bb.dd
  %i.sw = fcmp ult double %i.so, f0x7FEFFFFFFFFFFFFF
  %i.sx = fcmp ole double %i.so, f0xFFEFFFFFFFFFFFFF
  %i.sy = select i1 %i.sx, double f0xFFEFFFFFFFFFFFFF, double %i.so
  %i.sz = select i1 %i.sw, double %i.sy, double f0x7FEFFFFFFFFFFFFF ; 2 uses
  %.inv.i.i422 = fcmp ord double %i.sz, 0.000000e+00
  %i.ta = select i1 %.inv.i.i422, double %i.sz, double 0.000000e+00 ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.mp, i64 72
  %i.tc = load double, ptr %i.tb, align 8, !tbaa !313 ; 2 uses
  %i.td = fcmp ogt double %i.ta, %i.tc
  %.010.i423 = select i1 %i.td, double %i.tc, double %i.ta ; 2 uses
  %i.te = load double, ptr %i.oj, align 8, !tbaa !301 ; 7 uses
  %i.tf = fsub double %.010.i423, %i.te           ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.mp, i64 80
  %i.th = load double, ptr %i.tg, align 8, !tbaa !304 ; 2 uses
  %i.ti = fcmp olt double %i.tf, %i.th
  %i.tj = fadd double %i.te, %i.th
  %.111.i424 = select i1 %i.ti, double %i.tj, double %.010.i423
  %i.tk = getelementptr inbounds nuw i8, ptr %i.mp, i64 88
  %i.tl = load double, ptr %i.tk, align 8, !tbaa !305 ; 2 uses
  %i.tm = fcmp ogt double %i.tf, %i.tl
  %i.tn = fadd double %i.te, %i.tl
  %.2.i425 = select i1 %i.tm, double %i.tn, double %.111.i424 ; 7 uses
  %i.to = fcmp ugt double %.2.i425, %i.te
  br i1 %i.to, label %bb.df, label %_ZN10ImPlotAxis6SetMaxEdb.exit

bb.df:                                            ; preds = %bb.de
  %i.tp = getelementptr inbounds nuw i8, ptr %i.mp, i64 24 ; 2 uses
  store double %.2.i425, ptr %i.tp, align 8, !tbaa !302
  %i.tq = fptosi double %.2.i425 to i64
  %i.tr = tail call double @llvm.floor.f64(double %.2.i425)
  %i.ts = fmul double %i.tr, -1.000000e+06
  %i.tt = tail call double @llvm.fmuladd.f64(double %.2.i425, double 1.000000e+06, double %i.ts)
  %i.tu = fptosi double %i.tt to i32              ; 2 uses
  %i.tv = sdiv i32 %i.tu, 1000000
  %i.tw = sext i32 %i.tv to i64
  %i.tx = add nsw i64 %i.tw, %i.tq
  %i.ty = srem i32 %i.tu, 1000000
  %i.tz = getelementptr inbounds nuw i8, ptr %i.mp, i64 232
  store i64 %i.tx, ptr %i.tz, align 8, !tbaa !285
  %.sroa.4.0..sroa_idx.i426 = getelementptr inbounds nuw i8, ptr %i.mp, i64 240
  store i32 %i.ty, ptr %.sroa.4.0..sroa_idx.i426, align 8, !tbaa !29
  %i.ua = getelementptr inbounds nuw i8, ptr %i.mp, i64 276
  %i.ub = load float, ptr %i.ua, align 4, !tbaa !306
  %i.uc = load float, ptr %i.oc, align 8, !tbaa !307
  %i.ud = fsub float %i.ub, %i.uc
  %i.ue = fpext float %i.ud to double
  %i.uf = fsub double %.2.i425, %i.te
  %i.ug = fdiv double %i.ue, %i.uf
  store double %i.ug, ptr %i.og, align 8, !tbaa !308
  %i.uh = getelementptr inbounds nuw i8, ptr %i.mp, i64 248 ; 2 uses
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !309 ; 2 uses
  %.not.i.i427 = icmp eq ptr %i.ui, null
  br i1 %.not.i.i427, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.uj = getelementptr inbounds nuw i8, ptr %i.mp, i64 264 ; 2 uses
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !310
  %i.ul = tail call noundef double %i.ui(double noundef %i.te, ptr noundef %i.uk) #32, !inline_history !9
  %i.um = getelementptr inbounds nuw i8, ptr %i.mp, i64 280
  store double %i.ul, ptr %i.um, align 8, !tbaa !311
  %i.un = load ptr, ptr %i.uh, align 8, !tbaa !309
  %i.uo = load double, ptr %i.tp, align 8, !tbaa !302
  %i.up = load ptr, ptr %i.uj, align 8, !tbaa !310
  %i.uq = tail call noundef double %i.un(double noundef %i.uo, ptr noundef %i.up) #32, !inline_history !9
  br label %_ZN10ImPlotAxis20UpdateTransformCacheEv.exit.i428

bb.dh:                                            ; preds = %bb.df
  %i.ur = getelementptr inbounds nuw i8, ptr %i.mp, i64 280
  store double %i.te, ptr %i.ur, align 8, !tbaa !311
  br label %_ZN10ImPlotAxis20UpdateTransformCacheEv.exit.i428

_ZN10ImPlotAxis20UpdateTransformCacheEv.exit.i428: ; preds = %bb.dh, %bb.dg
  %.sink.i.i429 = phi double [ %.2.i425, %bb.dh ], [ %i.uq, %bb.dg ]
  %i.us = getelementptr inbounds nuw i8, ptr %i.mp, i64 288
  store double %.sink.i.i429, ptr %i.us, align 8, !tbaa !312
  br label %_ZN10ImPlotAxis6SetMaxEdb.exit

_ZN10ImPlotAxis6SetMaxEdb.exit:                   ; preds = %_ZNK10ImPlotAxis12PixelsToPlotEf.exit418, %_ZN10ImPlotAxis6SetMinEdb.exit, %bb.dd, %bb.de, %_ZN10ImPlotAxis20UpdateTransformCacheEv.exit.i428
  br i1 %i.ib, label %bb.di, label %_ZN10ImPlotAxis9SetAspectEd.exit

bb.di:                                            ; preds = %_ZN10ImPlotAxis6SetMaxEdb.exit
  %i.ut = getelementptr inbounds nuw i8, ptr %i.mp, i64 56
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !328 ; 11 uses
  %.not398 = icmp eq ptr %i.uu, null
  br i1 %.not398, label %_ZN10ImPlotAxis9SetAspectEd.exit, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.uv = getelementptr inbounds nuw i8, ptr %i.mp, i64 24
  %i.uw = load double, ptr %i.uv, align 8, !tbaa !276
  %i.ux = load double, ptr %i.oj, align 8, !tbaa !269
  %i.uy = fsub double %i.uw, %i.ux
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uu, i64 272
  %i.va = load <2 x float>, ptr %i.oc, align 8, !tbaa !41 ; 2 uses
  %i.vb = load <2 x float>, ptr %i.uz, align 8, !tbaa !41 ; 2 uses
  %i.vc = shufflevector <2 x float> %i.va, <2 x float> %i.vb, <2 x i32> <i32 1, i32 3>
  %i.vd = shufflevector <2 x float> %i.va, <2 x float> %i.vb, <2 x i32> <i32 0, i32 2>
  %i.ve = fsub <2 x float> %i.vc, %i.vd
  %i.vf = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ve)
  %i.vg = fpext <2 x float> %i.vf to <2 x double> ; 2 uses
  %i.vh = extractelement <2 x double> %i.vg, i64 0
  %i.vi = fdiv double %i.uy, %i.vh
  %i.vj = extractelement <2 x double> %i.vg, i64 1
  %i.vk = fmul double %i.vi, %i.vj
  %i.vl = getelementptr inbounds nuw i8, ptr %i.uu, i64 16
  %i.vm = getelementptr inbounds nuw i8, ptr %i.uu, i64 24
  %i.vn = load double, ptr %i.vm, align 8, !tbaa !276 ; 4 uses
  %i.vo = load double, ptr %i.vl, align 8, !tbaa !269 ; 4 uses
  %i.vp = fsub double %i.vn, %i.vo
  %i.vq = fsub double %i.vk, %i.vp
  %i.vr = fmul double %i.vq, 5.000000e-01         ; 4 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.uu, i64 364
  %i.vt = load i8, ptr %i.vs, align 4, !tbaa !299, !range !263, !noundef !264
  %i.vu = trunc nuw i8 %i.vt to i1
  br i1 %i.vu, label %bb.dk, label %_ZN10ImPlotAxis9SetAspectEd.exit

bb.dk:                                            ; preds = %bb.dj
  %i.vv = getelementptr inbounds nuw i8, ptr %i.uu, i64 367
  %i.vw = load i8, ptr %i.vv, align 1, !tbaa !295, !range !263, !noundef !264
  %i.vx = trunc nuw i8 %i.vw to i1
  %i.vy = getelementptr inbounds nuw i8, ptr %i.uu, i64 32
  %i.vz = load i32, ptr %i.vy, align 8
  %i.wa = icmp eq i32 %i.vz, 1
  %i.wb = select i1 %i.vx, i1 %i.wa, i1 false
  br i1 %i.wb, label %_ZN10ImPlotAxis9SetAspectEd.exit, label %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i430

_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i430:      ; preds = %bb.dk
  %i.wc = getelementptr inbounds nuw i8, ptr %i.uu, i64 4
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !300
  %i.we = lshr i32 %i.wd, 14
  %i.wf = and i32 %i.we, 3
  switch i32 %i.wf, label %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i430.unreachabledefault [
    i32 3, label %_ZN10ImPlotAxis9SetAspectEd.exit
    i32 1, label %bb.dl
    i32 2, label %_ZNK10ImPlotAxis11IsLockedMaxEv.exit8.thread.i
    i32 0, label %_ZNK10ImPlotAxis11IsLockedMinEv.exit7.thread.i
  ]

bb.dl:                                            ; preds = %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i430
  %i.wg = tail call double @llvm.fmuladd.f64(double %i.vr, double 2.000000e+00, double %i.vn)
  tail call void @_ZN10ImPlotAxis8SetRangeEdd(ptr noundef nonnull align 8 dereferenceable(372) %i.uu, double noundef %i.vo, double noundef %i.wg)
  br label %_ZN10ImPlotAxis9SetAspectEd.exit

_ZNK10ImPlotAxis11IsLockedMaxEv.exit8.thread.i:   ; preds = %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i430
  %i.wh = tail call double @llvm.fmuladd.f64(double %i.vr, double -2.000000e+00, double %i.vo)
  tail call void @_ZN10ImPlotAxis8SetRangeEdd(ptr noundef nonnull align 8 dereferenceable(372) %i.uu, double noundef %i.wh, double noundef %i.vn)
  br label %_ZN10ImPlotAxis9SetAspectEd.exit

_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i430.unreachabledefault: ; preds = %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i430
  unreachable

default.unreachable:                              ; preds = %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i474, %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i521, %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i568
  unreachable

_ZNK10ImPlotAxis11IsLockedMinEv.exit7.thread.i:   ; preds = %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i430
  %i.wi = fsub double %i.vo, %i.vr
  %i.wj = fadd double %i.vn, %i.vr
  tail call void @_ZN10ImPlotAxis8SetRangeEdd(ptr noundef nonnull align 8 dereferenceable(372) %i.uu, double noundef %i.wi, double noundef %i.wj)
  br label %_ZN10ImPlotAxis9SetAspectEd.exit

_ZN10ImPlotAxis9SetAspectEd.exit:                 ; preds = %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i430, %bb.cu, %bb.ct, %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i, %_ZNK10ImPlotAxis11IsLockedMinEv.exit7.thread.i, %_ZNK10ImPlotAxis11IsLockedMaxEv.exit8.thread.i, %bb.dl, %bb.dk, %bb.dj, %.split, %bb.cv, %_ZN10ImPlotAxis11IsPanLockedEb.exit, %bb.di, %_ZN10ImPlotAxis6SetMaxEdb.exit, %bb.cs
  %.1384 = phi i32 [ %.0383731, %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i ], [ %.0383731, %bb.cs ], [ %i.ni, %_ZN10ImPlotAxis6SetMaxEdb.exit ], [ %i.ni, %bb.di ], [ %i.ni, %.split ], [ %i.ni, %_ZN10ImPlotAxis11IsPanLockedEb.exit ], [ %i.ni, %bb.cv ], [ %i.ni, %_ZNK10ImPlotAxis11IsLockedMinEv.exit7.thread.i ], [ %.0383731, %bb.cu ], [ %.0383731, %bb.ct ], [ %i.ni, %bb.dj ], [ %i.ni, %bb.dk ], [ %i.ni, %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i430 ], [ %i.ni, %bb.dl ], [ %i.ni, %_ZNK10ImPlotAxis11IsLockedMaxEv.exit8.thread.i ] ; 2 uses
  %.2 = phi i1 [ %.0375733, %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i ], [ %.0375733, %bb.cs ], [ true, %_ZN10ImPlotAxis6SetMaxEdb.exit ], [ true, %bb.di ], [ %.0375733, %.split ], [ %.0375733, %_ZN10ImPlotAxis11IsPanLockedEb.exit ], [ %.0375733, %bb.cv ], [ true, %_ZNK10ImPlotAxis11IsLockedMinEv.exit7.thread.i ], [ %.0375733, %bb.cu ], [ %.0375733, %bb.ct ], [ true, %bb.dj ], [ true, %bb.dk ], [ true, %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i430 ], [ true, %bb.dl ], [ true, %_ZNK10ImPlotAxis11IsLockedMaxEv.exit8.thread.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %.preheader718, label %bb.cs, !llvm.loop !560

bb.dm:                                            ; preds = %_ZN10ImPlotAxis9SetAspectEd.exit482
  %i.wk = getelementptr inbounds nuw i8, ptr %i.f, i64 2956
  %i.wl = load i32, ptr %i.av, align 8, !tbaa !570
  %i.wm = sext i32 %i.wl to i64
  %i.wn = getelementptr inbounds [4 x i8], ptr %i.wk, i64 %i.wm
  %i.wo = load float, ptr %i.wn, align 4, !tbaa !41
  %i.wp = fcmp ogt float %i.wo, 5.000000e+00
  br i1 %i.wp, label %bb.eh, label %bb.ei

bb.dn:                                            ; preds = %.preheader718, %_ZN10ImPlotAxis9SetAspectEd.exit482
  %indvars.iv748 = phi i64 [ 0, %.preheader718 ], [ %indvars.iv.next749, %_ZN10ImPlotAxis9SetAspectEd.exit482 ] ; 3 uses
  %.3736 = phi i1 [ %.2, %.preheader718 ], [ %.5, %_ZN10ImPlotAxis9SetAspectEd.exit482 ] ; 7 uses
  %.2385734 = phi i32 [ %.1384, %.preheader718 ], [ %.3386, %_ZN10ImPlotAxis9SetAspectEd.exit482 ] ; 5 uses
  %i.wq = getelementptr [376 x i8], ptr %0, i64 %indvars.iv748 ; 47 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv748
  %i.ws = load i8, ptr %i.wr, align 1, !tbaa !262, !range !263, !noundef !264
  %i.wt = trunc nuw i8 %i.ws to i1
  br i1 %i.wt, label %bb.do, label %_ZN10ImPlotAxis9SetAspectEd.exit482

bb.do:                                            ; preds = %bb.dn
  %i.wu = getelementptr i8, ptr %i.wq, i64 1516   ; 3 uses
  %i.wv = load i8, ptr %i.wu, align 4, !tbaa !299, !range !263, !noundef !264
end_hunk_1
begin_hunk_2_@_ZN6ImPlot11UpdateInputER10ImPlotPlot:bb.a
  br i1 %i.xp, label %bb.dr, label %_ZN10ImPlotAxis9SetAspectEd.exit482

bb.dr:                                            ; preds = %bb.dq
  %i.xq = and i32 %i.xf, 57344
  %or.cond931 = icmp eq i32 %i.xq, 0
  br i1 %or.cond931, label %bb.ds, label %_ZN10ImPlotAxis11IsPanLockedEb.exit443.thread661

bb.ds:                                            ; preds = %bb.dr
  br i1 %i.xo, label %.split663, label %_ZN10ImPlotAxis11IsPanLockedEb.exit443

.split663:                                        ; preds = %bb.ds
  %i.xr = getelementptr i8, ptr %i.wq, i64 1176
  %i.xs = load double, ptr %i.xr, align 8, !tbaa !302
  %i.xt = getelementptr i8, ptr %i.wq, i64 1224
  %i.xu = load double, ptr %i.xt, align 8, !tbaa !313
  %i.xv = fcmp oeq double %i.xs, %i.xu
  br i1 %i.xv, label %_ZN10ImPlotAxis9SetAspectEd.exit482, label %_ZN10ImPlotAxis11IsPanLockedEb.exit443.thread661

_ZN10ImPlotAxis11IsPanLockedEb.exit443:           ; preds = %bb.ds
  %i.xw = getelementptr i8, ptr %i.wq, i64 1168
  %i.xx = load double, ptr %i.xw, align 8, !tbaa !301
  %i.xy = getelementptr i8, ptr %i.wq, i64 1216
  %i.xz = load double, ptr %i.xy, align 8, !tbaa !303
  %i.ya = fcmp oeq double %i.xx, %i.xz
  br i1 %i.ya, label %_ZN10ImPlotAxis9SetAspectEd.exit482, label %_ZN10ImPlotAxis11IsPanLockedEb.exit443.thread661

_ZN10ImPlotAxis11IsPanLockedEb.exit443.thread661: ; preds = %bb.dr, %.split663, %_ZN10ImPlotAxis11IsPanLockedEb.exit443
  %i.yb = load float, ptr %i.mn, align 4, !tbaa !373
  %i.yc = fsub float %i.yb, %i.xl
  %i.yd = getelementptr i8, ptr %i.wq, i64 1424   ; 5 uses
  %i.ye = load float, ptr %i.yd, align 8, !tbaa !307 ; 2 uses
  %i.yf = fsub float %i.yc, %i.ye
  %i.yg = fpext float %i.yf to double
  %i.yh = getelementptr i8, ptr %i.wq, i64 1448   ; 4 uses
  %i.yi = load double, ptr %i.yh, align 8, !tbaa !308 ; 2 uses
  %i.yj = fdiv double %i.yg, %i.yi
  %i.yk = getelementptr i8, ptr %i.wq, i64 1168   ; 5 uses
  %i.yl = load double, ptr %i.yk, align 8, !tbaa !301 ; 4 uses
  %i.ym = fadd double %i.yl, %i.yj                ; 2 uses
  %i.yn = getelementptr i8, ptr %i.wq, i64 1408   ; 2 uses
  %i.yo = load ptr, ptr %i.yn, align 8, !tbaa !372 ; 2 uses
  %.not.i444 = icmp eq ptr %i.yo, null
  br i1 %.not.i444, label %_ZNK10ImPlotAxis12PixelsToPlotEf.exit446, label %bb.dt

bb.dt:                                            ; preds = %_ZN10ImPlotAxis11IsPanLockedEb.exit443.thread661
  %i.yp = fsub double %i.ym, %i.yl
  %i.yq = getelementptr i8, ptr %i.wq, i64 1176
  %i.yr = load double, ptr %i.yq, align 8, !tbaa !276
  %i.ys = fsub double %i.yr, %i.yl
  %i.yt = fdiv double %i.yp, %i.ys
  %i.yu = getelementptr i8, ptr %i.wq, i64 1440
  %i.yv = load double, ptr %i.yu, align 8, !tbaa !312
  %i.yw = getelementptr i8, ptr %i.wq, i64 1432
  %i.yx = load double, ptr %i.yw, align 8, !tbaa !311 ; 2 uses
  %i.yy = fsub double %i.yv, %i.yx
  %i.yz = tail call double @llvm.fmuladd.f64(double %i.yt, double %i.yy, double %i.yx)
  %i.za = getelementptr i8, ptr %i.wq, i64 1416
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !310
  %i.zc = tail call noundef double %i.yo(double noundef %i.yz, ptr noundef %i.zb) #32, !inline_history !11
  %.pre769 = load float, ptr %i.mm, align 8, !tbaa !574
  %.pre770 = load float, ptr %i.yd, align 8, !tbaa !307
  %.pre771 = load double, ptr %i.yh, align 8, !tbaa !308
  %.pre772 = load double, ptr %i.yk, align 8, !tbaa !301
  %.pre773 = load ptr, ptr %i.yn, align 8, !tbaa !372
  br label %_ZNK10ImPlotAxis12PixelsToPlotEf.exit446

_ZNK10ImPlotAxis12PixelsToPlotEf.exit446:         ; preds = %_ZN10ImPlotAxis11IsPanLockedEb.exit443.thread661, %bb.dt
  %i.zd = phi ptr [ %.pre773, %bb.dt ], [ null, %_ZN10ImPlotAxis11IsPanLockedEb.exit443.thread661 ] ; 2 uses
  %i.ze = phi double [ %.pre772, %bb.dt ], [ %i.yl, %_ZN10ImPlotAxis11IsPanLockedEb.exit443.thread661 ] ; 3 uses
  %i.zf = phi double [ %.pre771, %bb.dt ], [ %i.yi, %_ZN10ImPlotAxis11IsPanLockedEb.exit443.thread661 ]
  %i.zg = phi float [ %.pre770, %bb.dt ], [ %i.ye, %_ZN10ImPlotAxis11IsPanLockedEb.exit443.thread661 ]
  %i.zh = phi float [ %.pre769, %bb.dt ], [ %i.xl, %_ZN10ImPlotAxis11IsPanLockedEb.exit443.thread661 ]
  %.0.i445 = phi double [ %i.zc, %bb.dt ], [ %i.ym, %_ZN10ImPlotAxis11IsPanLockedEb.exit443.thread661 ] ; 4 uses
  %i.zi = load float, ptr %i.mo, align 4, !tbaa !374
  %i.zj = fsub float %i.zi, %i.zh
  %i.zk = fsub float %i.zj, %i.zg
  %i.zl = fpext float %i.zk to double
  %i.zm = fdiv double %i.zl, %i.zf
  %i.zn = fadd double %i.ze, %i.zm                ; 2 uses
  %.not.i447 = icmp eq ptr %i.zd, null
  br i1 %.not.i447, label %_ZNK10ImPlotAxis12PixelsToPlotEf.exit449, label %bb.du

bb.du:                                            ; preds = %_ZNK10ImPlotAxis12PixelsToPlotEf.exit446
  %i.zo = fsub double %i.zn, %i.ze
  %i.zp = getelementptr i8, ptr %i.wq, i64 1176
  %i.zq = load double, ptr %i.zp, align 8, !tbaa !276
  %i.zr = fsub double %i.zq, %i.ze
  %i.zs = fdiv double %i.zo, %i.zr
  %i.zt = getelementptr i8, ptr %i.wq, i64 1440
  %i.zu = load double, ptr %i.zt, align 8, !tbaa !312
  %i.zv = getelementptr i8, ptr %i.wq, i64 1432
  %i.zw = load double, ptr %i.zv, align 8, !tbaa !311 ; 2 uses
  %i.zx = fsub double %i.zu, %i.zw
  %i.zy = tail call double @llvm.fmuladd.f64(double %i.zs, double %i.zx, double %i.zw)
  %i.zz = getelementptr i8, ptr %i.wq, i64 1416
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !310
  %i.aab = tail call noundef double %i.zd(double noundef %i.zy, ptr noundef %i.aaa) #32, !inline_history !11
  br label %_ZNK10ImPlotAxis12PixelsToPlotEf.exit449

_ZNK10ImPlotAxis12PixelsToPlotEf.exit449:         ; preds = %_ZNK10ImPlotAxis12PixelsToPlotEf.exit446, %bb.du
  %.0.i448 = phi double [ %i.aab, %bb.du ], [ %i.zn, %_ZNK10ImPlotAxis12PixelsToPlotEf.exit446 ] ; 4 uses
  %i.aac = load i32, ptr %i.xe, align 4, !tbaa !300 ; 4 uses
  %i.aad = and i32 %i.aac, 1024                   ; 3 uses
  %.not699 = icmp eq i32 %i.aad, 0
  %i.aae = select i1 %.not699, double %.0.i448, double %.0.i445 ; 3 uses
  %i.aaf = load i8, ptr %i.wu, align 4, !tbaa !299, !range !263, !noundef !264
  %i.aag = trunc nuw i8 %i.aaf to i1
  br i1 %i.aag, label %bb.dv, label %_ZN10ImPlotAxis6SetMaxEdb.exit473

bb.dv:                                            ; preds = %_ZNK10ImPlotAxis12PixelsToPlotEf.exit449
  %i.aah = load i8, ptr %i.wx, align 1, !tbaa !295, !range !263, !noundef !264
  %i.aai = trunc nuw i8 %i.aah to i1
  %i.aaj = load i32, ptr %i.xa, align 8
  %i.aak = icmp ne i32 %i.aaj, 1
  %not.700 = xor i1 %i.aai, true
  %i.aal = select i1 %not.700, i1 true, i1 %i.aak
  %i.aam = and i32 %i.aac, 16384
  %.not.i452 = icmp eq i32 %i.aam, 0
  %or.cond686 = select i1 %i.aal, i1 %.not.i452, i1 false
  br i1 %or.cond686, label %bb.dw, label %_ZN10ImPlotAxis6SetMinEdb.exit461.thread

bb.dw:                                            ; preds = %bb.dv
  %i.aan = fcmp ult double %i.aae, f0x7FEFFFFFFFFFFFFF
  %i.aao = fcmp ole double %i.aae, f0xFFEFFFFFFFFFFFFF
  %i.aap = select i1 %i.aao, double f0xFFEFFFFFFFFFFFFF, double %i.aae
  %i.aaq = select i1 %i.aan, double %i.aap, double f0x7FEFFFFFFFFFFFFF ; 2 uses
  %.inv.i.i453 = fcmp ord double %i.aaq, 0.000000e+00
  %i.aar = select i1 %.inv.i.i453, double %i.aaq, double 0.000000e+00 ; 2 uses
  %i.aas = getelementptr i8, ptr %i.wq, i64 1216
  %i.aat = load double, ptr %i.aas, align 8, !tbaa !303 ; 2 uses
  %i.aau = fcmp olt double %i.aar, %i.aat
  %.010.i454 = select i1 %i.aau, double %i.aat, double %i.aar ; 2 uses
  %i.aav = getelementptr i8, ptr %i.wq, i64 1176  ; 2 uses
  %i.aaw = load double, ptr %i.aav, align 8, !tbaa !302 ; 6 uses
  %i.aax = fsub double %i.aaw, %.010.i454         ; 2 uses
  %i.aay = getelementptr i8, ptr %i.wq, i64 1232
  %i.aaz = load double, ptr %i.aay, align 8, !tbaa !304 ; 2 uses
  %i.aba = fcmp olt double %i.aax, %i.aaz
  %i.abb = fsub double %i.aaw, %i.aaz
  %.111.i455 = select i1 %i.aba, double %i.abb, double %.010.i454
  %i.abc = getelementptr i8, ptr %i.wq, i64 1240
  %i.abd = load double, ptr %i.abc, align 8, !tbaa !305 ; 2 uses
  %i.abe = fcmp ogt double %i.aax, %i.abd
  %i.abf = fsub double %i.aaw, %i.abd
  %.2.i456 = select i1 %i.abe, double %i.abf, double %.111.i455 ; 8 uses
  %i.abg = fcmp ult double %.2.i456, %i.aaw
  br i1 %i.abg, label %bb.dx, label %_ZN10ImPlotAxis6SetMinEdb.exit461.thread

bb.dx:                                            ; preds = %bb.dw
  store double %.2.i456, ptr %i.yk, align 8, !tbaa !301
  %i.abh = fptosi double %.2.i456 to i64
  %i.abi = tail call double @llvm.floor.f64(double %.2.i456)
  %i.abj = fmul double %i.abi, -1.000000e+06
  %i.abk = tail call double @llvm.fmuladd.f64(double %.2.i456, double 1.000000e+06, double %i.abj)
  %i.abl = fptosi double %i.abk to i32            ; 2 uses
  %i.abm = sdiv i32 %i.abl, 1000000
  %i.abn = sext i32 %i.abm to i64
  %i.abo = add nsw i64 %i.abn, %i.abh
  %i.abp = srem i32 %i.abl, 1000000
  %i.abq = getelementptr i8, ptr %i.wq, i64 1368
  store i64 %i.abo, ptr %i.abq, align 8, !tbaa !285
  %.sroa.4.0..sroa_idx.i457 = getelementptr i8, ptr %i.wq, i64 1376
  store i32 %i.abp, ptr %.sroa.4.0..sroa_idx.i457, align 8, !tbaa !29
  %i.abr = getelementptr i8, ptr %i.wq, i64 1428
  %i.abs = load float, ptr %i.abr, align 4, !tbaa !306
  %i.abt = load float, ptr %i.yd, align 8, !tbaa !307
  %i.abu = fsub float %i.abs, %i.abt
  %i.abv = fpext float %i.abu to double
  %i.abw = fsub double %i.aaw, %.2.i456
  %i.abx = fdiv double %i.abv, %i.abw
  store double %i.abx, ptr %i.yh, align 8, !tbaa !308
  %i.aby = getelementptr i8, ptr %i.wq, i64 1400  ; 2 uses
  %i.abz = load ptr, ptr %i.aby, align 8, !tbaa !309 ; 2 uses
  %.not.i.i458 = icmp eq ptr %i.abz, null
  br i1 %.not.i.i458, label %_ZN10ImPlotAxis6SetMinEdb.exit461.thread883, label %_ZN10ImPlotAxis6SetMinEdb.exit461

_ZN10ImPlotAxis6SetMinEdb.exit461.thread883:      ; preds = %bb.dx
  %i.aca = getelementptr i8, ptr %i.wq, i64 1432
  store double %.2.i456, ptr %i.aca, align 8, !tbaa !311
  %i.acb = getelementptr i8, ptr %i.wq, i64 1440
  store double %i.aaw, ptr %i.acb, align 8, !tbaa !312
  %.not701888 = icmp eq i32 %i.aad, 0
  %i.acc = select i1 %.not701888, double %.0.i445, double %.0.i448
  br label %bb.dy

_ZN10ImPlotAxis6SetMinEdb.exit461.thread:         ; preds = %bb.dv, %bb.dw
  %.not701879 = icmp eq i32 %i.aad, 0
  %i.acd = select i1 %.not701879, double %.0.i445, double %.0.i448
  br label %bb.dy

_ZN10ImPlotAxis6SetMinEdb.exit461:                ; preds = %bb.dx
  %i.ace = getelementptr i8, ptr %i.wq, i64 1416  ; 2 uses
  %i.acf = load ptr, ptr %i.ace, align 8, !tbaa !310
  %i.acg = tail call noundef double %i.abz(double noundef %.2.i456, ptr noundef %i.acf) #32, !inline_history !8
  %i.ach = getelementptr i8, ptr %i.wq, i64 1432
  store double %i.acg, ptr %i.ach, align 8, !tbaa !311
  %i.aci = load ptr, ptr %i.aby, align 8, !tbaa !309
  %i.acj = load double, ptr %i.aav, align 8, !tbaa !302
  %i.ack = load ptr, ptr %i.ace, align 8, !tbaa !310
  %i.acl = tail call noundef double %i.aci(double noundef %i.acj, ptr noundef %i.ack) #32, !inline_history !8
  %.pr664.pre.pre = load i8, ptr %i.wu, align 4, !tbaa !299
  %.pre780.pre = load i32, ptr %i.xe, align 4, !tbaa !300 ; 2 uses
  %.pre818 = and i32 %.pre780.pre, 1024
  %i.acm = trunc nuw i8 %.pr664.pre.pre to i1
  %i.acn = getelementptr i8, ptr %i.wq, i64 1440
  store double %i.acl, ptr %i.acn, align 8, !tbaa !312
  %.not701 = icmp eq i32 %.pre818, 0
  %i.aco = select i1 %.not701, double %.0.i445, double %.0.i448
  br i1 %i.acm, label %bb.dy, label %_ZN10ImPlotAxis6SetMaxEdb.exit473

bb.dy:                                            ; preds = %_ZN10ImPlotAxis6SetMinEdb.exit461.thread883, %_ZN10ImPlotAxis6SetMinEdb.exit461.thread, %_ZN10ImPlotAxis6SetMinEdb.exit461
  %i.acp = phi double [ %i.acd, %_ZN10ImPlotAxis6SetMinEdb.exit461.thread ], [ %i.aco, %_ZN10ImPlotAxis6SetMinEdb.exit461 ], [ %i.acc, %_ZN10ImPlotAxis6SetMinEdb.exit461.thread883 ] ; 3 uses
  %i.acq = phi i32 [ %i.aac, %_ZN10ImPlotAxis6SetMinEdb.exit461.thread ], [ %.pre780.pre, %_ZN10ImPlotAxis6SetMinEdb.exit461 ], [ %i.aac, %_ZN10ImPlotAxis6SetMinEdb.exit461.thread883 ]
  %i.acr = load i8, ptr %i.wx, align 1, !tbaa !295, !range !263, !noundef !264
  %i.acs = trunc nuw i8 %i.acr to i1
  %i.act = load i32, ptr %i.xa, align 8
  %i.acu = icmp ne i32 %i.act, 1
  %not.702 = xor i1 %i.acs, true
  %i.acv = select i1 %not.702, i1 true, i1 %i.acu
  %i.acw = and i32 %i.acq, 32768
  %.not.i464 = icmp eq i32 %i.acw, 0
  %or.cond688 = select i1 %i.acv, i1 %.not.i464, i1 false
  br i1 %or.cond688, label %bb.dz, label %_ZN10ImPlotAxis6SetMaxEdb.exit473

bb.dz:                                            ; preds = %bb.dy
  %i.acx = fcmp ult double %i.acp, f0x7FEFFFFFFFFFFFFF
  %i.acy = fcmp ole double %i.acp, f0xFFEFFFFFFFFFFFFF
  %i.acz = select i1 %i.acy, double f0xFFEFFFFFFFFFFFFF, double %i.acp
  %i.ada = select i1 %i.acx, double %i.acz, double f0x7FEFFFFFFFFFFFFF ; 2 uses
  %.inv.i.i465 = fcmp ord double %i.ada, 0.000000e+00
  %i.adb = select i1 %.inv.i.i465, double %i.ada, double 0.000000e+00 ; 2 uses
  %i.adc = getelementptr i8, ptr %i.wq, i64 1224
  %i.add = load double, ptr %i.adc, align 8, !tbaa !313 ; 2 uses
  %i.ade = fcmp ogt double %i.adb, %i.add
  %.010.i466 = select i1 %i.ade, double %i.add, double %i.adb ; 2 uses
  %i.adf = load double, ptr %i.yk, align 8, !tbaa !301 ; 7 uses
  %i.adg = fsub double %.010.i466, %i.adf         ; 2 uses
  %i.adh = getelementptr i8, ptr %i.wq, i64 1232
  %i.adi = load double, ptr %i.adh, align 8, !tbaa !304 ; 2 uses
  %i.adj = fcmp olt double %i.adg, %i.adi
  %i.adk = fadd double %i.adf, %i.adi
  %.111.i467 = select i1 %i.adj, double %i.adk, double %.010.i466
  %i.adl = getelementptr i8, ptr %i.wq, i64 1240
  %i.adm = load double, ptr %i.adl, align 8, !tbaa !305 ; 2 uses
  %i.adn = fcmp ogt double %i.adg, %i.adm
  %i.ado = fadd double %i.adf, %i.adm
  %.2.i468 = select i1 %i.adn, double %i.ado, double %.111.i467 ; 7 uses
  %i.adp = fcmp ugt double %.2.i468, %i.adf
  br i1 %i.adp, label %bb.ea, label %_ZN10ImPlotAxis6SetMaxEdb.exit473

bb.ea:                                            ; preds = %bb.dz
  %i.adq = getelementptr i8, ptr %i.wq, i64 1176  ; 2 uses
  store double %.2.i468, ptr %i.adq, align 8, !tbaa !302
  %i.adr = fptosi double %.2.i468 to i64
  %i.ads = tail call double @llvm.floor.f64(double %.2.i468)
  %i.adt = fmul double %i.ads, -1.000000e+06
  %i.adu = tail call double @llvm.fmuladd.f64(double %.2.i468, double 1.000000e+06, double %i.adt)
  %i.adv = fptosi double %i.adu to i32            ; 2 uses
  %i.adw = sdiv i32 %i.adv, 1000000
  %i.adx = sext i32 %i.adw to i64
  %i.ady = add nsw i64 %i.adx, %i.adr
  %i.adz = srem i32 %i.adv, 1000000
  %i.aea = getelementptr i8, ptr %i.wq, i64 1384
  store i64 %i.ady, ptr %i.aea, align 8, !tbaa !285
  %.sroa.4.0..sroa_idx.i469 = getelementptr i8, ptr %i.wq, i64 1392
  store i32 %i.adz, ptr %.sroa.4.0..sroa_idx.i469, align 8, !tbaa !29
  %i.aeb = getelementptr i8, ptr %i.wq, i64 1428
  %i.aec = load float, ptr %i.aeb, align 4, !tbaa !306
  %i.aed = load float, ptr %i.yd, align 8, !tbaa !307
  %i.aee = fsub float %i.aec, %i.aed
  %i.aef = fpext float %i.aee to double
  %i.aeg = fsub double %.2.i468, %i.adf
  %i.aeh = fdiv double %i.aef, %i.aeg
  store double %i.aeh, ptr %i.yh, align 8, !tbaa !308
  %i.aei = getelementptr i8, ptr %i.wq, i64 1400  ; 2 uses
  %i.aej = load ptr, ptr %i.aei, align 8, !tbaa !309 ; 2 uses
  %.not.i.i470 = icmp eq ptr %i.aej, null
  br i1 %.not.i.i470, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.aek = getelementptr i8, ptr %i.wq, i64 1416  ; 2 uses
  %i.ael = load ptr, ptr %i.aek, align 8, !tbaa !310
  %i.aem = tail call noundef double %i.aej(double noundef %i.adf, ptr noundef %i.ael) #32, !inline_history !9
  %i.aen = getelementptr i8, ptr %i.wq, i64 1432
  store double %i.aem, ptr %i.aen, align 8, !tbaa !311
  %i.aeo = load ptr, ptr %i.aei, align 8, !tbaa !309
  %i.aep = load double, ptr %i.adq, align 8, !tbaa !302
  %i.aeq = load ptr, ptr %i.aek, align 8, !tbaa !310
  %i.aer = tail call noundef double %i.aeo(double noundef %i.aep, ptr noundef %i.aeq) #32, !inline_history !9
  br label %_ZN10ImPlotAxis20UpdateTransformCacheEv.exit.i471

bb.ec:                                            ; preds = %bb.ea
  %i.aes = getelementptr i8, ptr %i.wq, i64 1432
  store double %i.adf, ptr %i.aes, align 8, !tbaa !311
  br label %_ZN10ImPlotAxis20UpdateTransformCacheEv.exit.i471

_ZN10ImPlotAxis20UpdateTransformCacheEv.exit.i471: ; preds = %bb.ec, %bb.eb
  %.sink.i.i472 = phi double [ %.2.i468, %bb.ec ], [ %i.aer, %bb.eb ]
  %i.aet = getelementptr i8, ptr %i.wq, i64 1440
  store double %.sink.i.i472, ptr %i.aet, align 8, !tbaa !312
  br label %_ZN10ImPlotAxis6SetMaxEdb.exit473

_ZN10ImPlotAxis6SetMaxEdb.exit473:                ; preds = %_ZNK10ImPlotAxis12PixelsToPlotEf.exit449, %_ZN10ImPlotAxis6SetMinEdb.exit461, %bb.dy, %bb.dz, %_ZN10ImPlotAxis20UpdateTransformCacheEv.exit.i471
  br i1 %i.ib, label %bb.ed, label %_ZN10ImPlotAxis9SetAspectEd.exit482

bb.ed:                                            ; preds = %_ZN10ImPlotAxis6SetMaxEdb.exit473
  %i.aeu = getelementptr i8, ptr %i.wq, i64 1208
  %i.aev = load ptr, ptr %i.aeu, align 8, !tbaa !328 ; 11 uses
  %.not397 = icmp eq ptr %i.aev, null
  br i1 %.not397, label %_ZN10ImPlotAxis9SetAspectEd.exit482, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.aew = getelementptr i8, ptr %i.wq, i64 1176
  %i.aex = load double, ptr %i.aew, align 8, !tbaa !276
  %i.aey = load double, ptr %i.yk, align 8, !tbaa !269
  %i.aez = fsub double %i.aex, %i.aey
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aev, i64 272
  %i.afb = load <2 x float>, ptr %i.yd, align 8, !tbaa !41 ; 2 uses
  %i.afc = load <2 x float>, ptr %i.afa, align 8, !tbaa !41 ; 2 uses
  %i.afd = shufflevector <2 x float> %i.afb, <2 x float> %i.afc, <2 x i32> <i32 1, i32 3>
  %i.afe = shufflevector <2 x float> %i.afb, <2 x float> %i.afc, <2 x i32> <i32 0, i32 2>
  %i.aff = fsub <2 x float> %i.afd, %i.afe
  %i.afg = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.aff)
  %i.afh = fpext <2 x float> %i.afg to <2 x double> ; 2 uses
  %i.afi = extractelement <2 x double> %i.afh, i64 0
  %i.afj = fdiv double %i.aez, %i.afi
  %i.afk = extractelement <2 x double> %i.afh, i64 1
  %i.afl = fmul double %i.afj, %i.afk
  %i.afm = getelementptr inbounds nuw i8, ptr %i.aev, i64 16
  %i.afn = getelementptr inbounds nuw i8, ptr %i.aev, i64 24
  %i.afo = load double, ptr %i.afn, align 8, !tbaa !276 ; 4 uses
  %i.afp = load double, ptr %i.afm, align 8, !tbaa !269 ; 4 uses
  %i.afq = fsub double %i.afo, %i.afp
  %i.afr = fsub double %i.afl, %i.afq
  %i.afs = fmul double %i.afr, 5.000000e-01       ; 4 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %i.aev, i64 364
  %i.afu = load i8, ptr %i.aft, align 4, !tbaa !299, !range !263, !noundef !264
  %i.afv = trunc nuw i8 %i.afu to i1
  br i1 %i.afv, label %bb.ef, label %_ZN10ImPlotAxis9SetAspectEd.exit482

bb.ef:                                            ; preds = %bb.ee
  %i.afw = getelementptr inbounds nuw i8, ptr %i.aev, i64 367
  %i.afx = load i8, ptr %i.afw, align 1, !tbaa !295, !range !263, !noundef !264
  %i.afy = trunc nuw i8 %i.afx to i1
  %i.afz = getelementptr inbounds nuw i8, ptr %i.aev, i64 32
  %i.aga = load i32, ptr %i.afz, align 8
  %i.agb = icmp eq i32 %i.aga, 1
  %i.agc = select i1 %i.afy, i1 %i.agb, i1 false
  br i1 %i.agc, label %_ZN10ImPlotAxis9SetAspectEd.exit482, label %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i474

_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i474:      ; preds = %bb.ef
  %i.agd = getelementptr inbounds nuw i8, ptr %i.aev, i64 4
  %i.age = load i32, ptr %i.agd, align 4, !tbaa !300
  %i.agf = lshr i32 %i.age, 14
  %i.agg = and i32 %i.agf, 3
  switch i32 %i.agg, label %default.unreachable [
    i32 3, label %_ZN10ImPlotAxis9SetAspectEd.exit482
    i32 1, label %bb.eg
    i32 2, label %_ZNK10ImPlotAxis11IsLockedMaxEv.exit8.thread.i481
    i32 0, label %_ZNK10ImPlotAxis11IsLockedMinEv.exit7.thread.i480
  ]

bb.eg:                                            ; preds = %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i474
  %i.agh = tail call double @llvm.fmuladd.f64(double %i.afs, double 2.000000e+00, double %i.afo)
  tail call void @_ZN10ImPlotAxis8SetRangeEdd(ptr noundef nonnull align 8 dereferenceable(372) %i.aev, double noundef %i.afp, double noundef %i.agh)
  br label %_ZN10ImPlotAxis9SetAspectEd.exit482

_ZNK10ImPlotAxis11IsLockedMaxEv.exit8.thread.i481: ; preds = %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i474
  %i.agi = tail call double @llvm.fmuladd.f64(double %i.afs, double -2.000000e+00, double %i.afp)
  tail call void @_ZN10ImPlotAxis8SetRangeEdd(ptr noundef nonnull align 8 dereferenceable(372) %i.aev, double noundef %i.agi, double noundef %i.afo)
  br label %_ZN10ImPlotAxis9SetAspectEd.exit482

_ZNK10ImPlotAxis11IsLockedMinEv.exit7.thread.i480: ; preds = %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i474
  %i.agj = fsub double %i.afp, %i.afs
  %i.agk = fadd double %i.afo, %i.afs
  tail call void @_ZN10ImPlotAxis8SetRangeEdd(ptr noundef nonnull align 8 dereferenceable(372) %i.aev, double noundef %i.agj, double noundef %i.agk)
  br label %_ZN10ImPlotAxis9SetAspectEd.exit482

_ZN10ImPlotAxis9SetAspectEd.exit482:              ; preds = %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i474, %bb.dp, %bb.do, %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i433, %_ZNK10ImPlotAxis11IsLockedMinEv.exit7.thread.i480, %_ZNK10ImPlotAxis11IsLockedMaxEv.exit8.thread.i481, %bb.eg, %bb.ef, %bb.ee, %.split663, %bb.dq, %_ZN10ImPlotAxis11IsPanLockedEb.exit443, %bb.ed, %_ZN10ImPlotAxis6SetMaxEdb.exit473, %bb.dn
  %.3386 = phi i32 [ %.2385734, %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i433 ], [ %.2385734, %bb.dn ], [ %i.xj, %_ZN10ImPlotAxis6SetMaxEdb.exit473 ], [ %i.xj, %bb.ed ], [ %i.xj, %.split663 ], [ %i.xj, %_ZN10ImPlotAxis11IsPanLockedEb.exit443 ], [ %i.xj, %bb.dq ], [ %i.xj, %_ZNK10ImPlotAxis11IsLockedMinEv.exit7.thread.i480 ], [ %.2385734, %bb.dp ], [ %.2385734, %bb.do ], [ %i.xj, %bb.ee ], [ %i.xj, %bb.ef ], [ %i.xj, %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i474 ], [ %i.xj, %bb.eg ], [ %i.xj, %_ZNK10ImPlotAxis11IsLockedMaxEv.exit8.thread.i481 ] ; 3 uses
  %.5 = phi i1 [ %.3736, %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i433 ], [ %.3736, %bb.dn ], [ true, %_ZN10ImPlotAxis6SetMaxEdb.exit473 ], [ true, %bb.ed ], [ %.3736, %.split663 ], [ %.3736, %_ZN10ImPlotAxis11IsPanLockedEb.exit443 ], [ %.3736, %bb.dq ], [ true, %_ZNK10ImPlotAxis11IsLockedMinEv.exit7.thread.i480 ], [ %.3736, %bb.dp ], [ %.3736, %bb.do ], [ true, %bb.ee ], [ true, %bb.ef ], [ true, %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i474 ], [ true, %bb.eg ], [ true, %_ZNK10ImPlotAxis11IsLockedMaxEv.exit8.thread.i481 ] ; 3 uses
  %indvars.iv.next749 = add nuw nsw i64 %indvars.iv748, 1 ; 2 uses
  %exitcond750.not = icmp eq i64 %indvars.iv.next749, 3
  br i1 %exitcond750.not, label %bb.dm, label %bb.dn, !llvm.loop !561

bb.eh:                                            ; preds = %bb.dm
  %i.agl = icmp ult i32 %.3386, 5
  br i1 %i.agl, label %switch.lookup, label %.sink.split932

switch.lookup:                                    ; preds = %bb.eh
  %i.agm = zext nneg i32 %.3386 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN6ImPlot11UpdateInputER10ImPlotPlot, i64 %i.agm
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %.sink.split932

.sink.split932:                                   ; preds = %bb.eh, %switch.lookup
  %.sink933 = phi i32 [ %switch.ext, %switch.lookup ], [ 2, %bb.eh ]
  tail call void @_ZN5ImGui14SetMouseCursorEi(i32 noundef %.sink933) #32
  br label %bb.ei

bb.ei:                                            ; preds = %.sink.split932, %bb.cr, %bb.dm
  %.6 = phi i1 [ %.5, %bb.dm ], [ false, %bb.cr ], [ %.5, %.sink.split932 ] ; 3 uses
  br i1 %i.kj, label %bb.ej, label %.loopexit

bb.ej:                                            ; preds = %bb.ei
  %i.agn = load i32, ptr %i.ht, align 8, !tbaa !567
  %i.ago = getelementptr inbounds nuw i8, ptr %i.e, i64 1504
  %i.agp = load i32, ptr %i.ago, align 8, !tbaa !575 ; 2 uses
  %i.agq = and i32 %i.agp, %i.agn
  %i.agr = icmp eq i32 %i.agq, %i.agp
  br i1 %i.agr, label %bb.ek, label %.loopexit

end_hunk_2
begin_hunk_3_@_ZN6ImPlot11UpdateInputER10ImPlotPlot:bb.a
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.aid, i64 32 ; 3 uses
  %i.aji = load i32, ptr %i.ajh, align 8
  %i.ajj = icmp eq i32 %i.aji, 1
  %i.ajk = select i1 %i.ajg, i1 %i.ajj, i1 false
  br i1 %i.ajk, label %_ZN10ImPlotAxis9SetAspectEd.exit529, label %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i487

_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i487:      ; preds = %bb.es
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.aid, i64 4 ; 3 uses
  %i.ajm = load i32, ptr %i.ajl, align 4, !tbaa !300 ; 2 uses
  %i.ajn = and i32 %i.ajm, 49152
  %or.cond.i488 = icmp eq i32 %i.ajn, 49152
  br i1 %or.cond.i488, label %_ZN10ImPlotAxis9SetAspectEd.exit529, label %_ZNK10ImPlotAxis13IsInputLockedEv.exit490

_ZNK10ImPlotAxis13IsInputLockedEv.exit490:        ; preds = %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i487
  %i.ajo = and i32 %i.ajm, 2048
  %i.ajp = icmp ne i32 %i.ajo, 0
  %or.cond3 = or i1 %i.aix, %i.ajp
  br i1 %or.cond3, label %_ZN10ImPlotAxis9SetAspectEd.exit529, label %bb.et

bb.et:                                            ; preds = %_ZNK10ImPlotAxis13IsInputLockedEv.exit490
  %i.ajq = load i32, ptr %0, align 8, !tbaa !360
  tail call void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef 662, i32 noundef %i.ajq, i32 noundef 0) #32
  br i1 %i.ahp, label %bb.eu, label %_ZN10ImPlotAxis9SetAspectEd.exit529

bb.eu:                                            ; preds = %bb.et
  %i.ajr = load i8, ptr %i.i, align 8, !tbaa !368, !range !263, !noundef !264
  %i.ajs = trunc nuw i8 %i.ajr to i1
  %i.ajt = and i1 %i.aih, %i.ajs
  %i.aju = select i1 %i.ajt, float 5.000000e-01, float 1.000000e+00 ; 2 uses
  %i.ajv = load float, ptr %i.g, align 8, !tbaa !358
  %i.ajw = tail call float @llvm.fmuladd.f32(float %i.aht, float %i.aju, float %i.ajv)
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.aid, i64 272 ; 5 uses
  %i.ajy = load float, ptr %i.ajx, align 8, !tbaa !307 ; 2 uses
  %i.ajz = fsub float %i.ajw, %i.ajy
  %i.aka = fpext float %i.ajz to double
  %i.akb = getelementptr inbounds nuw i8, ptr %i.aid, i64 296 ; 4 uses
  %i.akc = load double, ptr %i.akb, align 8, !tbaa !308 ; 2 uses
  %i.akd = fdiv double %i.aka, %i.akc
  %i.ake = getelementptr inbounds nuw i8, ptr %i.aid, i64 16 ; 5 uses
  %i.akf = load double, ptr %i.ake, align 8, !tbaa !301 ; 4 uses
  %i.akg = fadd double %i.akf, %i.akd             ; 2 uses
  %i.akh = getelementptr inbounds nuw i8, ptr %i.aid, i64 256 ; 2 uses
  %i.aki = load ptr, ptr %i.akh, align 8, !tbaa !372 ; 2 uses
  %.not.i491 = icmp eq ptr %i.aki, null
  br i1 %.not.i491, label %_ZNK10ImPlotAxis12PixelsToPlotEf.exit493, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.akj = fsub double %i.akg, %i.akf
  %i.akk = getelementptr inbounds nuw i8, ptr %i.aid, i64 24
  %i.akl = load double, ptr %i.akk, align 8, !tbaa !276
  %i.akm = fsub double %i.akl, %i.akf
  %i.akn = fdiv double %i.akj, %i.akm
  %i.ako = getelementptr inbounds nuw i8, ptr %i.aid, i64 288
  %i.akp = load double, ptr %i.ako, align 8, !tbaa !312
  %i.akq = getelementptr inbounds nuw i8, ptr %i.aid, i64 280
  %i.akr = load double, ptr %i.akq, align 8, !tbaa !311 ; 2 uses
  %i.aks = fsub double %i.akp, %i.akr
  %i.akt = tail call double @llvm.fmuladd.f64(double %i.akn, double %i.aks, double %i.akr)
  %i.aku = getelementptr inbounds nuw i8, ptr %i.aid, i64 264
  %i.akv = load ptr, ptr %i.aku, align 8, !tbaa !310
  %i.akw = tail call noundef double %i.aki(double noundef %i.akt, ptr noundef %i.akv) #32, !inline_history !11
  %.pre776 = load float, ptr %i.ajx, align 8, !tbaa !307
  %.pre777 = load double, ptr %i.akb, align 8, !tbaa !308
  %.pre778 = load double, ptr %i.ake, align 8, !tbaa !301
  %.pre779 = load ptr, ptr %i.akh, align 8, !tbaa !372
  br label %_ZNK10ImPlotAxis12PixelsToPlotEf.exit493

_ZNK10ImPlotAxis12PixelsToPlotEf.exit493:         ; preds = %bb.eu, %bb.ev
  %i.akx = phi ptr [ %.pre779, %bb.ev ], [ null, %bb.eu ] ; 2 uses
  %i.aky = phi double [ %.pre778, %bb.ev ], [ %i.akf, %bb.eu ] ; 3 uses
  %i.akz = phi double [ %.pre777, %bb.ev ], [ %i.akc, %bb.eu ]
  %i.ala = phi float [ %.pre776, %bb.ev ], [ %i.ajy, %bb.eu ]
  %.0.i492 = phi double [ %i.akw, %bb.ev ], [ %i.akg, %bb.eu ] ; 4 uses
  %i.alb = load float, ptr %i.ahb, align 8, !tbaa !359
  %i.alc = tail call float @llvm.fmuladd.f32(float %i.ahw, float %i.aju, float %i.alb)
  %i.ald = fsub float %i.alc, %i.ala
  %i.ale = fpext float %i.ald to double
  %i.alf = fdiv double %i.ale, %i.akz
  %i.alg = fadd double %i.aky, %i.alf             ; 2 uses
  %.not.i494 = icmp eq ptr %i.akx, null
  br i1 %.not.i494, label %_ZNK10ImPlotAxis12PixelsToPlotEf.exit496, label %bb.ew

bb.ew:                                            ; preds = %_ZNK10ImPlotAxis12PixelsToPlotEf.exit493
  %i.alh = fsub double %i.alg, %i.aky
  %i.ali = getelementptr inbounds nuw i8, ptr %i.aid, i64 24
  %i.alj = load double, ptr %i.ali, align 8, !tbaa !276
  %i.alk = fsub double %i.alj, %i.aky
  %i.all = fdiv double %i.alh, %i.alk
  %i.alm = getelementptr inbounds nuw i8, ptr %i.aid, i64 288
  %i.aln = load double, ptr %i.alm, align 8, !tbaa !312
  %i.alo = getelementptr inbounds nuw i8, ptr %i.aid, i64 280
  %i.alp = load double, ptr %i.alo, align 8, !tbaa !311 ; 2 uses
  %i.alq = fsub double %i.aln, %i.alp
  %i.alr = tail call double @llvm.fmuladd.f64(double %i.all, double %i.alq, double %i.alp)
  %i.als = getelementptr inbounds nuw i8, ptr %i.aid, i64 264
  %i.alt = load ptr, ptr %i.als, align 8, !tbaa !310
  %i.alu = tail call noundef double %i.akx(double noundef %i.alr, ptr noundef %i.alt) #32, !inline_history !11
  br label %_ZNK10ImPlotAxis12PixelsToPlotEf.exit496

_ZNK10ImPlotAxis12PixelsToPlotEf.exit496:         ; preds = %_ZNK10ImPlotAxis12PixelsToPlotEf.exit493, %bb.ew
  %.0.i495 = phi double [ %i.alu, %bb.ew ], [ %i.alg, %_ZNK10ImPlotAxis12PixelsToPlotEf.exit493 ] ; 4 uses
  %i.alv = load i32, ptr %i.ajl, align 4, !tbaa !300 ; 4 uses
  %i.alw = and i32 %i.alv, 1024                   ; 3 uses
  %.not712 = icmp eq i32 %i.alw, 0
  %i.alx = select i1 %.not712, double %.0.i492, double %.0.i495 ; 3 uses
  %i.aly = load i8, ptr %i.ajb, align 4, !tbaa !299, !range !263, !noundef !264
  %i.alz = trunc nuw i8 %i.aly to i1
  br i1 %i.alz, label %bb.ex, label %_ZN10ImPlotAxis6SetMaxEdb.exit520

bb.ex:                                            ; preds = %_ZNK10ImPlotAxis12PixelsToPlotEf.exit496
  %i.ama = load i8, ptr %i.aje, align 1, !tbaa !295, !range !263, !noundef !264
  %i.amb = trunc nuw i8 %i.ama to i1
  %i.amc = load i32, ptr %i.ajh, align 8
  %i.amd = icmp ne i32 %i.amc, 1
  %not.713 = xor i1 %i.amb, true
  %i.ame = select i1 %not.713, i1 true, i1 %i.amd
  %i.amf = and i32 %i.alv, 16384
  %.not.i499 = icmp eq i32 %i.amf, 0
  %or.cond690 = select i1 %i.ame, i1 %.not.i499, i1 false
  br i1 %or.cond690, label %bb.ey, label %_ZN10ImPlotAxis6SetMinEdb.exit508.thread

bb.ey:                                            ; preds = %bb.ex
  %i.amg = fcmp ult double %i.alx, f0x7FEFFFFFFFFFFFFF
  %i.amh = fcmp ole double %i.alx, f0xFFEFFFFFFFFFFFFF
  %i.ami = select i1 %i.amh, double f0xFFEFFFFFFFFFFFFF, double %i.alx
  %i.amj = select i1 %i.amg, double %i.ami, double f0x7FEFFFFFFFFFFFFF ; 2 uses
  %.inv.i.i500 = fcmp ord double %i.amj, 0.000000e+00
  %i.amk = select i1 %.inv.i.i500, double %i.amj, double 0.000000e+00 ; 2 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %i.aid, i64 64
  %i.amm = load double, ptr %i.aml, align 8, !tbaa !303 ; 2 uses
  %i.amn = fcmp olt double %i.amk, %i.amm
  %.010.i501 = select i1 %i.amn, double %i.amm, double %i.amk ; 2 uses
  %i.amo = getelementptr inbounds nuw i8, ptr %i.aid, i64 24 ; 2 uses
  %i.amp = load double, ptr %i.amo, align 8, !tbaa !302 ; 6 uses
  %i.amq = fsub double %i.amp, %.010.i501         ; 2 uses
  %i.amr = getelementptr inbounds nuw i8, ptr %i.aid, i64 80
  %i.ams = load double, ptr %i.amr, align 8, !tbaa !304 ; 2 uses
  %i.amt = fcmp olt double %i.amq, %i.ams
  %i.amu = fsub double %i.amp, %i.ams
  %.111.i502 = select i1 %i.amt, double %i.amu, double %.010.i501
  %i.amv = getelementptr inbounds nuw i8, ptr %i.aid, i64 88
  %i.amw = load double, ptr %i.amv, align 8, !tbaa !305 ; 2 uses
  %i.amx = fcmp ogt double %i.amq, %i.amw
  %i.amy = fsub double %i.amp, %i.amw
  %.2.i503 = select i1 %i.amx, double %i.amy, double %.111.i502 ; 8 uses
  %i.amz = fcmp ult double %.2.i503, %i.amp
  br i1 %i.amz, label %bb.ez, label %_ZN10ImPlotAxis6SetMinEdb.exit508.thread

bb.ez:                                            ; preds = %bb.ey
  store double %.2.i503, ptr %i.ake, align 8, !tbaa !301
  %i.ana = fptosi double %.2.i503 to i64
  %i.anb = tail call double @llvm.floor.f64(double %.2.i503)
  %i.anc = fmul double %i.anb, -1.000000e+06
  %i.and = tail call double @llvm.fmuladd.f64(double %.2.i503, double 1.000000e+06, double %i.anc)
  %i.ane = fptosi double %i.and to i32            ; 2 uses
  %i.anf = sdiv i32 %i.ane, 1000000
  %i.ang = sext i32 %i.anf to i64
  %i.anh = add nsw i64 %i.ang, %i.ana
  %i.ani = srem i32 %i.ane, 1000000
  %i.anj = getelementptr inbounds nuw i8, ptr %i.aid, i64 216
  store i64 %i.anh, ptr %i.anj, align 8, !tbaa !285
  %.sroa.4.0..sroa_idx.i504 = getelementptr inbounds nuw i8, ptr %i.aid, i64 224
  store i32 %i.ani, ptr %.sroa.4.0..sroa_idx.i504, align 8, !tbaa !29
  %i.ank = getelementptr inbounds nuw i8, ptr %i.aid, i64 276
  %i.anl = load float, ptr %i.ank, align 4, !tbaa !306
  %i.anm = load float, ptr %i.ajx, align 8, !tbaa !307
  %i.ann = fsub float %i.anl, %i.anm
  %i.ano = fpext float %i.ann to double
  %i.anp = fsub double %i.amp, %.2.i503
  %i.anq = fdiv double %i.ano, %i.anp
  store double %i.anq, ptr %i.akb, align 8, !tbaa !308
  %i.anr = getelementptr inbounds nuw i8, ptr %i.aid, i64 248 ; 2 uses
  %i.ans = load ptr, ptr %i.anr, align 8, !tbaa !309 ; 2 uses
  %.not.i.i505 = icmp eq ptr %i.ans, null
  br i1 %.not.i.i505, label %_ZN10ImPlotAxis6SetMinEdb.exit508.thread894, label %_ZN10ImPlotAxis6SetMinEdb.exit508

_ZN10ImPlotAxis6SetMinEdb.exit508.thread894:      ; preds = %bb.ez
  %i.ant = getelementptr inbounds nuw i8, ptr %i.aid, i64 280
  store double %.2.i503, ptr %i.ant, align 8, !tbaa !311
  %i.anu = getelementptr inbounds nuw i8, ptr %i.aid, i64 288
  store double %i.amp, ptr %i.anu, align 8, !tbaa !312
  %.not714899 = icmp eq i32 %i.alw, 0
  %i.anv = select i1 %.not714899, double %.0.i495, double %.0.i492
  br label %bb.fa

_ZN10ImPlotAxis6SetMinEdb.exit508.thread:         ; preds = %bb.ex, %bb.ey
  %.not714890 = icmp eq i32 %i.alw, 0
  %i.anw = select i1 %.not714890, double %.0.i495, double %.0.i492
  br label %bb.fa

_ZN10ImPlotAxis6SetMinEdb.exit508:                ; preds = %bb.ez
  %i.anx = getelementptr inbounds nuw i8, ptr %i.aid, i64 264 ; 2 uses
  %i.any = load ptr, ptr %i.anx, align 8, !tbaa !310
  %i.anz = tail call noundef double %i.ans(double noundef %.2.i503, ptr noundef %i.any) #32, !inline_history !8
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.aid, i64 280
  store double %i.anz, ptr %i.aoa, align 8, !tbaa !311
  %i.aob = load ptr, ptr %i.anr, align 8, !tbaa !309
  %i.aoc = load double, ptr %i.amo, align 8, !tbaa !302
  %i.aod = load ptr, ptr %i.anx, align 8, !tbaa !310
  %i.aoe = tail call noundef double %i.aob(double noundef %i.aoc, ptr noundef %i.aod) #32, !inline_history !8
  %.pr666.pre.pre = load i8, ptr %i.ajb, align 4, !tbaa !299
  %.pre786.pre = load i32, ptr %i.ajl, align 4, !tbaa !300 ; 2 uses
  %.pre817 = and i32 %.pre786.pre, 1024
  %i.aof = trunc nuw i8 %.pr666.pre.pre to i1
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aid, i64 288
  store double %i.aoe, ptr %i.aog, align 8, !tbaa !312
  %.not714.a = icmp eq i32 %.pre817, 0
  %i.aoh = select i1 %.not714.a, double %.0.i495, double %.0.i492
  br i1 %i.aof, label %bb.fa, label %_ZN10ImPlotAxis6SetMaxEdb.exit520

bb.fa:                                            ; preds = %_ZN10ImPlotAxis6SetMinEdb.exit508.thread894, %_ZN10ImPlotAxis6SetMinEdb.exit508.thread, %_ZN10ImPlotAxis6SetMinEdb.exit508
  %i.aoi = phi double [ %i.anw, %_ZN10ImPlotAxis6SetMinEdb.exit508.thread ], [ %i.aoh, %_ZN10ImPlotAxis6SetMinEdb.exit508 ], [ %i.anv, %_ZN10ImPlotAxis6SetMinEdb.exit508.thread894 ] ; 3 uses
  %i.aoj = phi i32 [ %i.alv, %_ZN10ImPlotAxis6SetMinEdb.exit508.thread ], [ %.pre786.pre, %_ZN10ImPlotAxis6SetMinEdb.exit508 ], [ %i.alv, %_ZN10ImPlotAxis6SetMinEdb.exit508.thread894 ]
  %i.aok = load i8, ptr %i.aje, align 1, !tbaa !295, !range !263, !noundef !264
  %i.aol = trunc nuw i8 %i.aok to i1
  %i.aom = load i32, ptr %i.ajh, align 8
  %i.aon = icmp ne i32 %i.aom, 1
  %not.715 = xor i1 %i.aol, true
  %i.aoo = select i1 %not.715, i1 true, i1 %i.aon
  %i.aop = and i32 %i.aoj, 32768
  %.not.i511 = icmp eq i32 %i.aop, 0
  %or.cond692 = select i1 %i.aoo, i1 %.not.i511, i1 false
  br i1 %or.cond692, label %bb.fb, label %_ZN10ImPlotAxis6SetMaxEdb.exit520

bb.fb:                                            ; preds = %bb.fa
  %i.aoq = fcmp ult double %i.aoi, f0x7FEFFFFFFFFFFFFF
  %i.aor = fcmp ole double %i.aoi, f0xFFEFFFFFFFFFFFFF
  %i.aos = select i1 %i.aor, double f0xFFEFFFFFFFFFFFFF, double %i.aoi
  %i.aot = select i1 %i.aoq, double %i.aos, double f0x7FEFFFFFFFFFFFFF ; 2 uses
  %.inv.i.i512 = fcmp ord double %i.aot, 0.000000e+00
  %i.aou = select i1 %.inv.i.i512, double %i.aot, double 0.000000e+00 ; 2 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aid, i64 72
  %i.aow = load double, ptr %i.aov, align 8, !tbaa !313 ; 2 uses
  %i.aox = fcmp ogt double %i.aou, %i.aow
  %.010.i513 = select i1 %i.aox, double %i.aow, double %i.aou ; 2 uses
  %i.aoy = load double, ptr %i.ake, align 8, !tbaa !301 ; 7 uses
  %i.aoz = fsub double %.010.i513, %i.aoy         ; 2 uses
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aid, i64 80
  %i.apb = load double, ptr %i.apa, align 8, !tbaa !304 ; 2 uses
  %i.apc = fcmp olt double %i.aoz, %i.apb
  %i.apd = fadd double %i.aoy, %i.apb
  %.111.i514 = select i1 %i.apc, double %i.apd, double %.010.i513
  %i.ape = getelementptr inbounds nuw i8, ptr %i.aid, i64 88
  %i.apf = load double, ptr %i.ape, align 8, !tbaa !305 ; 2 uses
  %i.apg = fcmp ogt double %i.aoz, %i.apf
  %i.aph = fadd double %i.aoy, %i.apf
  %.2.i515 = select i1 %i.apg, double %i.aph, double %.111.i514 ; 7 uses
  %i.api = fcmp ugt double %.2.i515, %i.aoy
  br i1 %i.api, label %bb.fc, label %_ZN10ImPlotAxis6SetMaxEdb.exit520

bb.fc:                                            ; preds = %bb.fb
  %i.apj = getelementptr inbounds nuw i8, ptr %i.aid, i64 24 ; 2 uses
  store double %.2.i515, ptr %i.apj, align 8, !tbaa !302
  %i.apk = fptosi double %.2.i515 to i64
  %i.apl = tail call double @llvm.floor.f64(double %.2.i515)
  %i.apm = fmul double %i.apl, -1.000000e+06
  %i.apn = tail call double @llvm.fmuladd.f64(double %.2.i515, double 1.000000e+06, double %i.apm)
  %i.apo = fptosi double %i.apn to i32            ; 2 uses
  %i.app = sdiv i32 %i.apo, 1000000
  %i.apq = sext i32 %i.app to i64
  %i.apr = add nsw i64 %i.apq, %i.apk
  %i.aps = srem i32 %i.apo, 1000000
  %i.apt = getelementptr inbounds nuw i8, ptr %i.aid, i64 232
  store i64 %i.apr, ptr %i.apt, align 8, !tbaa !285
  %.sroa.4.0..sroa_idx.i516 = getelementptr inbounds nuw i8, ptr %i.aid, i64 240
  store i32 %i.aps, ptr %.sroa.4.0..sroa_idx.i516, align 8, !tbaa !29
  %i.apu = getelementptr inbounds nuw i8, ptr %i.aid, i64 276
  %i.apv = load float, ptr %i.apu, align 4, !tbaa !306
  %i.apw = load float, ptr %i.ajx, align 8, !tbaa !307
  %i.apx = fsub float %i.apv, %i.apw
  %i.apy = fpext float %i.apx to double
  %i.apz = fsub double %.2.i515, %i.aoy
  %i.aqa = fdiv double %i.apy, %i.apz
  store double %i.aqa, ptr %i.akb, align 8, !tbaa !308
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.aid, i64 248 ; 2 uses
  %i.aqc = load ptr, ptr %i.aqb, align 8, !tbaa !309 ; 2 uses
  %.not.i.i517 = icmp eq ptr %i.aqc, null
  br i1 %.not.i.i517, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aid, i64 264 ; 2 uses
  %i.aqe = load ptr, ptr %i.aqd, align 8, !tbaa !310
  %i.aqf = tail call noundef double %i.aqc(double noundef %i.aoy, ptr noundef %i.aqe) #32, !inline_history !9
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aid, i64 280
  store double %i.aqf, ptr %i.aqg, align 8, !tbaa !311
  %i.aqh = load ptr, ptr %i.aqb, align 8, !tbaa !309
  %i.aqi = load double, ptr %i.apj, align 8, !tbaa !302
  %i.aqj = load ptr, ptr %i.aqd, align 8, !tbaa !310
  %i.aqk = tail call noundef double %i.aqh(double noundef %i.aqi, ptr noundef %i.aqj) #32, !inline_history !9
  br label %_ZN10ImPlotAxis20UpdateTransformCacheEv.exit.i518

bb.fe:                                            ; preds = %bb.fc
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aid, i64 280
  store double %i.aoy, ptr %i.aql, align 8, !tbaa !311
  br label %_ZN10ImPlotAxis20UpdateTransformCacheEv.exit.i518

_ZN10ImPlotAxis20UpdateTransformCacheEv.exit.i518: ; preds = %bb.fe, %bb.fd
  %.sink.i.i519 = phi double [ %.2.i515, %bb.fe ], [ %i.aqk, %bb.fd ]
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aid, i64 288
  store double %.sink.i.i519, ptr %i.aqm, align 8, !tbaa !312
  br label %_ZN10ImPlotAxis6SetMaxEdb.exit520

_ZN10ImPlotAxis6SetMaxEdb.exit520:                ; preds = %_ZNK10ImPlotAxis12PixelsToPlotEf.exit496, %_ZN10ImPlotAxis6SetMinEdb.exit508, %bb.fa, %bb.fb, %_ZN10ImPlotAxis20UpdateTransformCacheEv.exit.i518
  br i1 %i.ib, label %bb.ff, label %_ZN10ImPlotAxis9SetAspectEd.exit529

bb.ff:                                            ; preds = %_ZN10ImPlotAxis6SetMaxEdb.exit520
  %i.aqn = load ptr, ptr %i.aie, align 8, !tbaa !328 ; 11 uses
  %.not401 = icmp eq ptr %i.aqn, null
  br i1 %.not401, label %_ZN10ImPlotAxis9SetAspectEd.exit529, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aid, i64 24
  %i.aqp = load double, ptr %i.aqo, align 8, !tbaa !276
  %i.aqq = load double, ptr %i.ake, align 8, !tbaa !269
  %i.aqr = fsub double %i.aqp, %i.aqq
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqn, i64 272
  %i.aqt = load <2 x float>, ptr %i.ajx, align 8, !tbaa !41 ; 2 uses
  %i.aqu = load <2 x float>, ptr %i.aqs, align 8, !tbaa !41 ; 2 uses
  %i.aqv = shufflevector <2 x float> %i.aqt, <2 x float> %i.aqu, <2 x i32> <i32 1, i32 3>
  %i.aqw = shufflevector <2 x float> %i.aqt, <2 x float> %i.aqu, <2 x i32> <i32 0, i32 2>
  %i.aqx = fsub <2 x float> %i.aqv, %i.aqw
  %i.aqy = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.aqx)
  %i.aqz = fpext <2 x float> %i.aqy to <2 x double> ; 2 uses
  %i.ara = extractelement <2 x double> %i.aqz, i64 0
  %i.arb = fdiv double %i.aqr, %i.ara
  %i.arc = extractelement <2 x double> %i.aqz, i64 1
  %i.ard = fmul double %i.arb, %i.arc
  %i.are = getelementptr inbounds nuw i8, ptr %i.aqn, i64 16
  %i.arf = getelementptr inbounds nuw i8, ptr %i.aqn, i64 24
  %i.arg = load double, ptr %i.arf, align 8, !tbaa !276 ; 4 uses
  %i.arh = load double, ptr %i.are, align 8, !tbaa !269 ; 4 uses
  %i.ari = fsub double %i.arg, %i.arh
  %i.arj = fsub double %i.ard, %i.ari
  %i.ark = fmul double %i.arj, 5.000000e-01       ; 4 uses
  %i.arl = getelementptr inbounds nuw i8, ptr %i.aqn, i64 364
  %i.arm = load i8, ptr %i.arl, align 4, !tbaa !299, !range !263, !noundef !264
  %i.arn = trunc nuw i8 %i.arm to i1
  br i1 %i.arn, label %bb.fh, label %_ZN10ImPlotAxis9SetAspectEd.exit529

bb.fh:                                            ; preds = %bb.fg
  %i.aro = getelementptr inbounds nuw i8, ptr %i.aqn, i64 367
  %i.arp = load i8, ptr %i.aro, align 1, !tbaa !295, !range !263, !noundef !264
  %i.arq = trunc nuw i8 %i.arp to i1
  %i.arr = getelementptr inbounds nuw i8, ptr %i.aqn, i64 32
  %i.ars = load i32, ptr %i.arr, align 8
  %i.art = icmp eq i32 %i.ars, 1
  %i.aru = select i1 %i.arq, i1 %i.art, i1 false
  br i1 %i.aru, label %_ZN10ImPlotAxis9SetAspectEd.exit529, label %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i521

_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i521:      ; preds = %bb.fh
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aqn, i64 4
  %i.arw = load i32, ptr %i.arv, align 4, !tbaa !300
  %i.arx = lshr i32 %i.arw, 14
  %i.ary = and i32 %i.arx, 3
  switch i32 %i.ary, label %default.unreachable [
    i32 3, label %_ZN10ImPlotAxis9SetAspectEd.exit529
    i32 1, label %bb.fi
    i32 2, label %_ZNK10ImPlotAxis11IsLockedMaxEv.exit8.thread.i528
    i32 0, label %_ZNK10ImPlotAxis11IsLockedMinEv.exit7.thread.i527
  ]

bb.fi:                                            ; preds = %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i521
  %i.arz = tail call double @llvm.fmuladd.f64(double %i.ark, double 2.000000e+00, double %i.arg)
  tail call void @_ZN10ImPlotAxis8SetRangeEdd(ptr noundef nonnull align 8 dereferenceable(372) %i.aqn, double noundef %i.arh, double noundef %i.arz)
  br label %_ZN10ImPlotAxis9SetAspectEd.exit529

_ZNK10ImPlotAxis11IsLockedMaxEv.exit8.thread.i528: ; preds = %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i521
  %i.asa = tail call double @llvm.fmuladd.f64(double %i.ark, double -2.000000e+00, double %i.arh)
  tail call void @_ZN10ImPlotAxis8SetRangeEdd(ptr noundef nonnull align 8 dereferenceable(372) %i.aqn, double noundef %i.asa, double noundef %i.arg)
  br label %_ZN10ImPlotAxis9SetAspectEd.exit529

_ZNK10ImPlotAxis11IsLockedMinEv.exit7.thread.i527: ; preds = %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i521
  %i.asb = fsub double %i.arh, %i.ark
  %i.asc = fadd double %i.arg, %i.ark
  tail call void @_ZN10ImPlotAxis8SetRangeEdd(ptr noundef nonnull align 8 dereferenceable(372) %i.aqn, double noundef %i.asb, double noundef %i.asc)
  br label %_ZN10ImPlotAxis9SetAspectEd.exit529

_ZN10ImPlotAxis9SetAspectEd.exit529:              ; preds = %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i521, %bb.es, %bb.er, %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i487, %_ZNK10ImPlotAxis11IsLockedMinEv.exit7.thread.i527, %_ZNK10ImPlotAxis11IsLockedMaxEv.exit8.thread.i528, %bb.fi, %bb.fh, %bb.fg, %_ZN10ImPlotAxis6SetMaxEdb.exit520, %bb.ff, %bb.et, %_ZNK10ImPlotAxis13IsInputLockedEv.exit490, %_ZNK10ImPlotAxis13IsInputLockedEv.exit486
  %.8 = phi i1 [ %.7738, %_ZNK10ImPlotAxis13IsInputLockedEv.exit490 ], [ %.7738, %_ZNK10ImPlotAxis13IsInputLockedEv.exit486 ], [ %.7738, %bb.et ], [ true, %_ZNK10ImPlotAxis11IsLockedMinEv.exit7.thread.i527 ], [ true, %bb.ff ], [ true, %_ZN10ImPlotAxis6SetMaxEdb.exit520 ], [ true, %bb.fg ], [ true, %bb.fh ], [ true, %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i521 ], [ true, %bb.fi ], [ true, %_ZNK10ImPlotAxis11IsLockedMaxEv.exit8.thread.i528 ], [ %.7738, %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i487 ], [ %.7738, %bb.er ], [ %.7738, %bb.es ] ; 2 uses
  %indvars.iv.next752 = add nuw nsw i64 %indvars.iv751, 1 ; 2 uses
  %exitcond753.not = icmp eq i64 %indvars.iv.next752, 3
  br i1 %exitcond753.not, label %.preheader717, label %bb.eo, !llvm.loop !562

bb.fj:                                            ; preds = %.preheader717, %_ZN10ImPlotAxis9SetAspectEd.exit576
  %indvars.iv754 = phi i64 [ 0, %.preheader717 ], [ %indvars.iv.next755, %_ZN10ImPlotAxis9SetAspectEd.exit576 ] ; 3 uses
  %.9740 = phi i1 [ %.8, %.preheader717 ], [ %.10, %_ZN10ImPlotAxis9SetAspectEd.exit576 ] ; 6 uses
  %i.asd = getelementptr [376 x i8], ptr %0, i64 %indvars.iv754 ; 43 uses
  %i.ase = getelementptr i8, ptr %i.asd, i64 1208 ; 2 uses
  %i.asf = load ptr, ptr %i.ase, align 8          ; 5 uses
  %i.asg = icmp ne ptr %i.asf, null
  %i.ash = select i1 %i.ib, i1 %i.asg, i1 false   ; 2 uses
  br i1 %i.ash, label %bb.fk, label %_ZNK10ImPlotAxis13IsInputLockedEv.exit533

bb.fk:                                            ; preds = %bb.fj
  %i.asi = getelementptr inbounds nuw i8, ptr %i.asf, i64 364
  %i.asj = load i8, ptr %i.asi, align 4, !tbaa !299, !range !263, !noundef !264
  %i.ask = trunc nuw i8 %i.asj to i1
  br i1 %i.ask, label %bb.fl, label %_ZNK10ImPlotAxis13IsInputLockedEv.exit533

bb.fl:                                            ; preds = %bb.fk
  %i.asl = getelementptr inbounds nuw i8, ptr %i.asf, i64 367
  %i.asm = load i8, ptr %i.asl, align 1, !tbaa !295, !range !263, !noundef !264
  %i.asn = trunc nuw i8 %i.asm to i1
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asf, i64 32
  %i.asp = load i32, ptr %i.aso, align 8
  %i.asq = icmp eq i32 %i.asp, 1
  %i.asr = select i1 %i.asn, i1 %i.asq, i1 false
  br i1 %i.asr, label %_ZNK10ImPlotAxis13IsInputLockedEv.exit533, label %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i530

_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i530:      ; preds = %bb.fl
  %i.ass = getelementptr inbounds nuw i8, ptr %i.asf, i64 4
  %i.ast = load i32, ptr %i.ass, align 4, !tbaa !300 ; 2 uses
  %i.asu = and i32 %i.ast, 49152
end_hunk_3
begin_hunk_4_@_ZN6ImPlot11UpdateInputER10ImPlotPlot:bb.a
  %i.ath = getelementptr i8, ptr %i.asd, i64 1184 ; 3 uses
  %i.ati = load i32, ptr %i.ath, align 8
  %i.atj = icmp eq i32 %i.ati, 1
  %i.atk = select i1 %i.atg, i1 %i.atj, i1 false
  br i1 %i.atk, label %_ZN10ImPlotAxis9SetAspectEd.exit576, label %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i534

_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i534:      ; preds = %bb.fn
  %i.atl = getelementptr i8, ptr %i.asd, i64 1156 ; 3 uses
  %i.atm = load i32, ptr %i.atl, align 4, !tbaa !300 ; 2 uses
  %i.atn = and i32 %i.atm, 49152
  %or.cond.i535 = icmp eq i32 %i.atn, 49152
  br i1 %or.cond.i535, label %_ZN10ImPlotAxis9SetAspectEd.exit576, label %_ZNK10ImPlotAxis13IsInputLockedEv.exit537

_ZNK10ImPlotAxis13IsInputLockedEv.exit537:        ; preds = %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i534
  %i.ato = and i32 %i.atm, 2048
  %i.atp = icmp ne i32 %i.ato, 0
  %or.cond5 = or i1 %i.asx, %i.atp
  br i1 %or.cond5, label %_ZN10ImPlotAxis9SetAspectEd.exit576, label %bb.fo

bb.fo:                                            ; preds = %_ZNK10ImPlotAxis13IsInputLockedEv.exit537
  %i.atq = load i32, ptr %0, align 8, !tbaa !360
  tail call void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef 662, i32 noundef %i.atq, i32 noundef 0) #32
  br i1 %i.ahp, label %bb.fp, label %_ZN10ImPlotAxis9SetAspectEd.exit576

bb.fp:                                            ; preds = %bb.fo
  %i.atr = load i8, ptr %i.i, align 8, !tbaa !368, !range !263, !noundef !264
  %i.ats = trunc nuw i8 %i.atr to i1
  %i.att = and i1 %i.ash, %i.ats
  %i.atu = select i1 %i.att, float 5.000000e-01, float 1.000000e+00 ; 2 uses
  %i.atv = load float, ptr %i.ahd, align 4, !tbaa !373
  %i.atw = tail call float @llvm.fmuladd.f32(float %i.ahz, float %i.atu, float %i.atv)
  %i.atx = getelementptr i8, ptr %i.asd, i64 1424 ; 5 uses
  %i.aty = load float, ptr %i.atx, align 8, !tbaa !307 ; 2 uses
  %i.atz = fsub float %i.atw, %i.aty
  %i.aua = fpext float %i.atz to double
  %i.aub = getelementptr i8, ptr %i.asd, i64 1448 ; 4 uses
  %i.auc = load double, ptr %i.aub, align 8, !tbaa !308 ; 2 uses
  %i.aud = fdiv double %i.aua, %i.auc
  %i.aue = getelementptr i8, ptr %i.asd, i64 1168 ; 5 uses
  %i.auf = load double, ptr %i.aue, align 8, !tbaa !301 ; 4 uses
  %i.aug = fadd double %i.auf, %i.aud             ; 2 uses
  %i.auh = getelementptr i8, ptr %i.asd, i64 1408 ; 2 uses
  %i.aui = load ptr, ptr %i.auh, align 8, !tbaa !372 ; 2 uses
  %.not.i538 = icmp eq ptr %i.aui, null
  br i1 %.not.i538, label %_ZNK10ImPlotAxis12PixelsToPlotEf.exit540, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.auj = fsub double %i.aug, %i.auf
  %i.auk = getelementptr i8, ptr %i.asd, i64 1176
  %i.aul = load double, ptr %i.auk, align 8, !tbaa !276
  %i.aum = fsub double %i.aul, %i.auf
  %i.aun = fdiv double %i.auj, %i.aum
  %i.auo = getelementptr i8, ptr %i.asd, i64 1440
  %i.aup = load double, ptr %i.auo, align 8, !tbaa !312
  %i.auq = getelementptr i8, ptr %i.asd, i64 1432
  %i.aur = load double, ptr %i.auq, align 8, !tbaa !311 ; 2 uses
  %i.aus = fsub double %i.aup, %i.aur
  %i.aut = tail call double @llvm.fmuladd.f64(double %i.aun, double %i.aus, double %i.aur)
  %i.auu = getelementptr i8, ptr %i.asd, i64 1416
  %i.auv = load ptr, ptr %i.auu, align 8, !tbaa !310
  %i.auw = tail call noundef double %i.aui(double noundef %i.aut, ptr noundef %i.auv) #32, !inline_history !11
  %.pre782 = load float, ptr %i.atx, align 8, !tbaa !307
  %.pre783 = load double, ptr %i.aub, align 8, !tbaa !308
  %.pre784 = load double, ptr %i.aue, align 8, !tbaa !301
  %.pre785 = load ptr, ptr %i.auh, align 8, !tbaa !372
  br label %_ZNK10ImPlotAxis12PixelsToPlotEf.exit540

_ZNK10ImPlotAxis12PixelsToPlotEf.exit540:         ; preds = %bb.fp, %bb.fq
  %i.aux = phi ptr [ %.pre785, %bb.fq ], [ null, %bb.fp ] ; 2 uses
  %i.auy = phi double [ %.pre784, %bb.fq ], [ %i.auf, %bb.fp ] ; 3 uses
  %i.auz = phi double [ %.pre783, %bb.fq ], [ %i.auc, %bb.fp ]
  %i.ava = phi float [ %.pre782, %bb.fq ], [ %i.aty, %bb.fp ]
  %.0.i539 = phi double [ %i.auw, %bb.fq ], [ %i.aug, %bb.fp ] ; 4 uses
  %i.avb = load float, ptr %i.ahc, align 4, !tbaa !374
  %i.avc = tail call float @llvm.fmuladd.f32(float %i.aic, float %i.atu, float %i.avb)
  %i.avd = fsub float %i.avc, %i.ava
  %i.ave = fpext float %i.avd to double
  %i.avf = fdiv double %i.ave, %i.auz
  %i.avg = fadd double %i.auy, %i.avf             ; 2 uses
  %.not.i541 = icmp eq ptr %i.aux, null
  br i1 %.not.i541, label %_ZNK10ImPlotAxis12PixelsToPlotEf.exit543, label %bb.fr

bb.fr:                                            ; preds = %_ZNK10ImPlotAxis12PixelsToPlotEf.exit540
  %i.avh = fsub double %i.avg, %i.auy
  %i.avi = getelementptr i8, ptr %i.asd, i64 1176
  %i.avj = load double, ptr %i.avi, align 8, !tbaa !276
  %i.avk = fsub double %i.avj, %i.auy
  %i.avl = fdiv double %i.avh, %i.avk
  %i.avm = getelementptr i8, ptr %i.asd, i64 1440
  %i.avn = load double, ptr %i.avm, align 8, !tbaa !312
  %i.avo = getelementptr i8, ptr %i.asd, i64 1432
  %i.avp = load double, ptr %i.avo, align 8, !tbaa !311 ; 2 uses
  %i.avq = fsub double %i.avn, %i.avp
  %i.avr = tail call double @llvm.fmuladd.f64(double %i.avl, double %i.avq, double %i.avp)
  %i.avs = getelementptr i8, ptr %i.asd, i64 1416
  %i.avt = load ptr, ptr %i.avs, align 8, !tbaa !310
  %i.avu = tail call noundef double %i.aux(double noundef %i.avr, ptr noundef %i.avt) #32, !inline_history !11
  br label %_ZNK10ImPlotAxis12PixelsToPlotEf.exit543

_ZNK10ImPlotAxis12PixelsToPlotEf.exit543:         ; preds = %_ZNK10ImPlotAxis12PixelsToPlotEf.exit540, %bb.fr
  %.0.i542 = phi double [ %i.avu, %bb.fr ], [ %i.avg, %_ZNK10ImPlotAxis12PixelsToPlotEf.exit540 ] ; 4 uses
  %i.avv = load i32, ptr %i.atl, align 4, !tbaa !300 ; 4 uses
  %i.avw = and i32 %i.avv, 1024                   ; 3 uses
  %.not = icmp eq i32 %i.avw, 0
  %i.avx = select i1 %.not, double %.0.i542, double %.0.i539 ; 3 uses
  %i.avy = load i8, ptr %i.atb, align 4, !tbaa !299, !range !263, !noundef !264
  %i.avz = trunc nuw i8 %i.avy to i1
  br i1 %i.avz, label %bb.fs, label %_ZN10ImPlotAxis6SetMaxEdb.exit567

bb.fs:                                            ; preds = %_ZNK10ImPlotAxis12PixelsToPlotEf.exit543
  %i.awa = load i8, ptr %i.ate, align 1, !tbaa !295, !range !263, !noundef !264
  %i.awb = trunc nuw i8 %i.awa to i1
  %i.awc = load i32, ptr %i.ath, align 8
  %i.awd = icmp ne i32 %i.awc, 1
  %not. = xor i1 %i.awb, true
  %i.awe = select i1 %not., i1 true, i1 %i.awd
  %i.awf = and i32 %i.avv, 16384
  %.not.i546 = icmp eq i32 %i.awf, 0
  %or.cond694 = select i1 %i.awe, i1 %.not.i546, i1 false
  br i1 %or.cond694, label %bb.ft, label %_ZN10ImPlotAxis6SetMinEdb.exit555.thread

bb.ft:                                            ; preds = %bb.fs
  %i.awg = fcmp ult double %i.avx, f0x7FEFFFFFFFFFFFFF
  %i.awh = fcmp ole double %i.avx, f0xFFEFFFFFFFFFFFFF
  %i.awi = select i1 %i.awh, double f0xFFEFFFFFFFFFFFFF, double %i.avx
  %i.awj = select i1 %i.awg, double %i.awi, double f0x7FEFFFFFFFFFFFFF ; 2 uses
  %.inv.i.i547 = fcmp ord double %i.awj, 0.000000e+00
  %i.awk = select i1 %.inv.i.i547, double %i.awj, double 0.000000e+00 ; 2 uses
  %i.awl = getelementptr i8, ptr %i.asd, i64 1216
  %i.awm = load double, ptr %i.awl, align 8, !tbaa !303 ; 2 uses
  %i.awn = fcmp olt double %i.awk, %i.awm
  %.010.i548 = select i1 %i.awn, double %i.awm, double %i.awk ; 2 uses
  %i.awo = getelementptr i8, ptr %i.asd, i64 1176 ; 2 uses
  %i.awp = load double, ptr %i.awo, align 8, !tbaa !302 ; 6 uses
  %i.awq = fsub double %i.awp, %.010.i548         ; 2 uses
  %i.awr = getelementptr i8, ptr %i.asd, i64 1232
  %i.aws = load double, ptr %i.awr, align 8, !tbaa !304 ; 2 uses
  %i.awt = fcmp olt double %i.awq, %i.aws
  %i.awu = fsub double %i.awp, %i.aws
  %.111.i549 = select i1 %i.awt, double %i.awu, double %.010.i548
  %i.awv = getelementptr i8, ptr %i.asd, i64 1240
  %i.aww = load double, ptr %i.awv, align 8, !tbaa !305 ; 2 uses
  %i.awx = fcmp ogt double %i.awq, %i.aww
  %i.awy = fsub double %i.awp, %i.aww
  %.2.i550 = select i1 %i.awx, double %i.awy, double %.111.i549 ; 8 uses
  %i.awz = fcmp ult double %.2.i550, %i.awp
  br i1 %i.awz, label %bb.fu, label %_ZN10ImPlotAxis6SetMinEdb.exit555.thread

bb.fu:                                            ; preds = %bb.ft
  store double %.2.i550, ptr %i.aue, align 8, !tbaa !301
  %i.axa = fptosi double %.2.i550 to i64
  %i.axb = tail call double @llvm.floor.f64(double %.2.i550)
  %i.axc = fmul double %i.axb, -1.000000e+06
  %i.axd = tail call double @llvm.fmuladd.f64(double %.2.i550, double 1.000000e+06, double %i.axc)
  %i.axe = fptosi double %i.axd to i32            ; 2 uses
  %i.axf = sdiv i32 %i.axe, 1000000
  %i.axg = sext i32 %i.axf to i64
  %i.axh = add nsw i64 %i.axg, %i.axa
  %i.axi = srem i32 %i.axe, 1000000
  %i.axj = getelementptr i8, ptr %i.asd, i64 1368
  store i64 %i.axh, ptr %i.axj, align 8, !tbaa !285
  %.sroa.4.0..sroa_idx.i551 = getelementptr i8, ptr %i.asd, i64 1376
  store i32 %i.axi, ptr %.sroa.4.0..sroa_idx.i551, align 8, !tbaa !29
  %i.axk = getelementptr i8, ptr %i.asd, i64 1428
  %i.axl = load float, ptr %i.axk, align 4, !tbaa !306
  %i.axm = load float, ptr %i.atx, align 8, !tbaa !307
  %i.axn = fsub float %i.axl, %i.axm
  %i.axo = fpext float %i.axn to double
  %i.axp = fsub double %i.awp, %.2.i550
  %i.axq = fdiv double %i.axo, %i.axp
  store double %i.axq, ptr %i.aub, align 8, !tbaa !308
  %i.axr = getelementptr i8, ptr %i.asd, i64 1400 ; 2 uses
  %i.axs = load ptr, ptr %i.axr, align 8, !tbaa !309 ; 2 uses
  %.not.i.i552 = icmp eq ptr %i.axs, null
  br i1 %.not.i.i552, label %_ZN10ImPlotAxis6SetMinEdb.exit555.thread905, label %_ZN10ImPlotAxis6SetMinEdb.exit555

_ZN10ImPlotAxis6SetMinEdb.exit555.thread905:      ; preds = %bb.fu
  %i.axt = getelementptr i8, ptr %i.asd, i64 1432
  store double %.2.i550, ptr %i.axt, align 8, !tbaa !311
  %i.axu = getelementptr i8, ptr %i.asd, i64 1440
  store double %i.awp, ptr %i.axu, align 8, !tbaa !312
  %.not710910 = icmp eq i32 %i.avw, 0
  %i.axv = select i1 %.not710910, double %.0.i539, double %.0.i542
  br label %bb.fv

_ZN10ImPlotAxis6SetMinEdb.exit555.thread:         ; preds = %bb.fs, %bb.ft
  %.not710901 = icmp eq i32 %i.avw, 0
  %i.axw = select i1 %.not710901, double %.0.i539, double %.0.i542
  br label %bb.fv

_ZN10ImPlotAxis6SetMinEdb.exit555:                ; preds = %bb.fu
  %i.axx = getelementptr i8, ptr %i.asd, i64 1416 ; 2 uses
  %i.axy = load ptr, ptr %i.axx, align 8, !tbaa !310
  %i.axz = tail call noundef double %i.axs(double noundef %.2.i550, ptr noundef %i.axy) #32, !inline_history !8
  %i.aya = getelementptr i8, ptr %i.asd, i64 1432
  store double %i.axz, ptr %i.aya, align 8, !tbaa !311
  %i.ayb = load ptr, ptr %i.axr, align 8, !tbaa !309
  %i.ayc = load double, ptr %i.awo, align 8, !tbaa !302
  %i.ayd = load ptr, ptr %i.axx, align 8, !tbaa !310
  %i.aye = tail call noundef double %i.ayb(double noundef %i.ayc, ptr noundef %i.ayd) #32, !inline_history !8
  %.pr668.pre.pre = load i8, ptr %i.atb, align 4, !tbaa !299
  %.pre792.pre = load i32, ptr %i.atl, align 4, !tbaa !300 ; 2 uses
  %.pre816 = and i32 %.pre792.pre, 1024
  %i.ayf = trunc nuw i8 %.pr668.pre.pre to i1
  %i.ayg = getelementptr i8, ptr %i.asd, i64 1440
  store double %i.aye, ptr %i.ayg, align 8, !tbaa !312
  %.not710 = icmp eq i32 %.pre816, 0
  %i.ayh = select i1 %.not710, double %.0.i539, double %.0.i542
  br i1 %i.ayf, label %bb.fv, label %_ZN10ImPlotAxis6SetMaxEdb.exit567

bb.fv:                                            ; preds = %_ZN10ImPlotAxis6SetMinEdb.exit555.thread905, %_ZN10ImPlotAxis6SetMinEdb.exit555.thread, %_ZN10ImPlotAxis6SetMinEdb.exit555
  %i.ayi = phi double [ %i.axw, %_ZN10ImPlotAxis6SetMinEdb.exit555.thread ], [ %i.ayh, %_ZN10ImPlotAxis6SetMinEdb.exit555 ], [ %i.axv, %_ZN10ImPlotAxis6SetMinEdb.exit555.thread905 ] ; 3 uses
  %i.ayj = phi i32 [ %i.avv, %_ZN10ImPlotAxis6SetMinEdb.exit555.thread ], [ %.pre792.pre, %_ZN10ImPlotAxis6SetMinEdb.exit555 ], [ %i.avv, %_ZN10ImPlotAxis6SetMinEdb.exit555.thread905 ]
  %i.ayk = load i8, ptr %i.ate, align 1, !tbaa !295, !range !263, !noundef !264
  %i.ayl = trunc nuw i8 %i.ayk to i1
  %i.aym = load i32, ptr %i.ath, align 8
  %i.ayn = icmp ne i32 %i.aym, 1
  %not.711 = xor i1 %i.ayl, true
  %i.ayo = select i1 %not.711, i1 true, i1 %i.ayn
  %i.ayp = and i32 %i.ayj, 32768
  %.not.i558 = icmp eq i32 %i.ayp, 0
  %or.cond696 = select i1 %i.ayo, i1 %.not.i558, i1 false
  br i1 %or.cond696, label %bb.fw, label %_ZN10ImPlotAxis6SetMaxEdb.exit567

bb.fw:                                            ; preds = %bb.fv
  %i.ayq = fcmp ult double %i.ayi, f0x7FEFFFFFFFFFFFFF
  %i.ayr = fcmp ole double %i.ayi, f0xFFEFFFFFFFFFFFFF
  %i.ays = select i1 %i.ayr, double f0xFFEFFFFFFFFFFFFF, double %i.ayi
  %i.ayt = select i1 %i.ayq, double %i.ays, double f0x7FEFFFFFFFFFFFFF ; 2 uses
  %.inv.i.i559 = fcmp ord double %i.ayt, 0.000000e+00
  %i.ayu = select i1 %.inv.i.i559, double %i.ayt, double 0.000000e+00 ; 2 uses
  %i.ayv = getelementptr i8, ptr %i.asd, i64 1224
  %i.ayw = load double, ptr %i.ayv, align 8, !tbaa !313 ; 2 uses
  %i.ayx = fcmp ogt double %i.ayu, %i.ayw
  %.010.i560 = select i1 %i.ayx, double %i.ayw, double %i.ayu ; 2 uses
  %i.ayy = load double, ptr %i.aue, align 8, !tbaa !301 ; 7 uses
  %i.ayz = fsub double %.010.i560, %i.ayy         ; 2 uses
  %i.aza = getelementptr i8, ptr %i.asd, i64 1232
  %i.azb = load double, ptr %i.aza, align 8, !tbaa !304 ; 2 uses
  %i.azc = fcmp olt double %i.ayz, %i.azb
  %i.azd = fadd double %i.ayy, %i.azb
  %.111.i561 = select i1 %i.azc, double %i.azd, double %.010.i560
  %i.aze = getelementptr i8, ptr %i.asd, i64 1240
  %i.azf = load double, ptr %i.aze, align 8, !tbaa !305 ; 2 uses
  %i.azg = fcmp ogt double %i.ayz, %i.azf
  %i.azh = fadd double %i.ayy, %i.azf
  %.2.i562 = select i1 %i.azg, double %i.azh, double %.111.i561 ; 7 uses
  %i.azi = fcmp ugt double %.2.i562, %i.ayy
  br i1 %i.azi, label %bb.fx, label %_ZN10ImPlotAxis6SetMaxEdb.exit567

bb.fx:                                            ; preds = %bb.fw
  %i.azj = getelementptr i8, ptr %i.asd, i64 1176 ; 2 uses
  store double %.2.i562, ptr %i.azj, align 8, !tbaa !302
  %i.azk = fptosi double %.2.i562 to i64
  %i.azl = tail call double @llvm.floor.f64(double %.2.i562)
  %i.azm = fmul double %i.azl, -1.000000e+06
  %i.azn = tail call double @llvm.fmuladd.f64(double %.2.i562, double 1.000000e+06, double %i.azm)
  %i.azo = fptosi double %i.azn to i32            ; 2 uses
  %i.azp = sdiv i32 %i.azo, 1000000
  %i.azq = sext i32 %i.azp to i64
  %i.azr = add nsw i64 %i.azq, %i.azk
  %i.azs = srem i32 %i.azo, 1000000
  %i.azt = getelementptr i8, ptr %i.asd, i64 1384
  store i64 %i.azr, ptr %i.azt, align 8, !tbaa !285
  %.sroa.4.0..sroa_idx.i563 = getelementptr i8, ptr %i.asd, i64 1392
  store i32 %i.azs, ptr %.sroa.4.0..sroa_idx.i563, align 8, !tbaa !29
  %i.azu = getelementptr i8, ptr %i.asd, i64 1428
  %i.azv = load float, ptr %i.azu, align 4, !tbaa !306
  %i.azw = load float, ptr %i.atx, align 8, !tbaa !307
  %i.azx = fsub float %i.azv, %i.azw
  %i.azy = fpext float %i.azx to double
  %i.azz = fsub double %.2.i562, %i.ayy
  %i.baa = fdiv double %i.azy, %i.azz
  store double %i.baa, ptr %i.aub, align 8, !tbaa !308
  %i.bab = getelementptr i8, ptr %i.asd, i64 1400 ; 2 uses
  %i.bac = load ptr, ptr %i.bab, align 8, !tbaa !309 ; 2 uses
  %.not.i.i564 = icmp eq ptr %i.bac, null
  br i1 %.not.i.i564, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.bad = getelementptr i8, ptr %i.asd, i64 1416 ; 2 uses
  %i.bae = load ptr, ptr %i.bad, align 8, !tbaa !310
  %i.baf = tail call noundef double %i.bac(double noundef %i.ayy, ptr noundef %i.bae) #32, !inline_history !9
  %i.bag = getelementptr i8, ptr %i.asd, i64 1432
  store double %i.baf, ptr %i.bag, align 8, !tbaa !311
  %i.bah = load ptr, ptr %i.bab, align 8, !tbaa !309
  %i.bai = load double, ptr %i.azj, align 8, !tbaa !302
  %i.baj = load ptr, ptr %i.bad, align 8, !tbaa !310
  %i.bak = tail call noundef double %i.bah(double noundef %i.bai, ptr noundef %i.baj) #32, !inline_history !9
  br label %_ZN10ImPlotAxis20UpdateTransformCacheEv.exit.i565

bb.fz:                                            ; preds = %bb.fx
  %i.bal = getelementptr i8, ptr %i.asd, i64 1432
  store double %i.ayy, ptr %i.bal, align 8, !tbaa !311
  br label %_ZN10ImPlotAxis20UpdateTransformCacheEv.exit.i565

_ZN10ImPlotAxis20UpdateTransformCacheEv.exit.i565: ; preds = %bb.fz, %bb.fy
  %.sink.i.i566 = phi double [ %.2.i562, %bb.fz ], [ %i.bak, %bb.fy ]
  %i.bam = getelementptr i8, ptr %i.asd, i64 1440
  store double %.sink.i.i566, ptr %i.bam, align 8, !tbaa !312
  br label %_ZN10ImPlotAxis6SetMaxEdb.exit567

_ZN10ImPlotAxis6SetMaxEdb.exit567:                ; preds = %_ZNK10ImPlotAxis12PixelsToPlotEf.exit543, %_ZN10ImPlotAxis6SetMinEdb.exit555, %bb.fv, %bb.fw, %_ZN10ImPlotAxis20UpdateTransformCacheEv.exit.i565
  br i1 %i.ib, label %bb.ga, label %_ZN10ImPlotAxis9SetAspectEd.exit576

bb.ga:                                            ; preds = %_ZN10ImPlotAxis6SetMaxEdb.exit567
  %i.ban = load ptr, ptr %i.ase, align 8, !tbaa !328 ; 11 uses
  %.not400 = icmp eq ptr %i.ban, null
  br i1 %.not400, label %_ZN10ImPlotAxis9SetAspectEd.exit576, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.bao = getelementptr i8, ptr %i.asd, i64 1176
  %i.bap = load double, ptr %i.bao, align 8, !tbaa !276
  %i.baq = load double, ptr %i.aue, align 8, !tbaa !269
  %i.bar = fsub double %i.bap, %i.baq
  %i.bas = getelementptr inbounds nuw i8, ptr %i.ban, i64 272
  %i.bat = load <2 x float>, ptr %i.atx, align 8, !tbaa !41 ; 2 uses
  %i.bau = load <2 x float>, ptr %i.bas, align 8, !tbaa !41 ; 2 uses
  %i.bav = shufflevector <2 x float> %i.bat, <2 x float> %i.bau, <2 x i32> <i32 1, i32 3>
  %i.baw = shufflevector <2 x float> %i.bat, <2 x float> %i.bau, <2 x i32> <i32 0, i32 2>
  %i.bax = fsub <2 x float> %i.bav, %i.baw
  %i.bay = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bax)
  %i.baz = fpext <2 x float> %i.bay to <2 x double> ; 2 uses
  %i.bba = extractelement <2 x double> %i.baz, i64 0
  %i.bbb = fdiv double %i.bar, %i.bba
  %i.bbc = extractelement <2 x double> %i.baz, i64 1
  %i.bbd = fmul double %i.bbb, %i.bbc
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.ban, i64 16
  %i.bbf = getelementptr inbounds nuw i8, ptr %i.ban, i64 24
  %i.bbg = load double, ptr %i.bbf, align 8, !tbaa !276 ; 4 uses
  %i.bbh = load double, ptr %i.bbe, align 8, !tbaa !269 ; 4 uses
  %i.bbi = fsub double %i.bbg, %i.bbh
  %i.bbj = fsub double %i.bbd, %i.bbi
  %i.bbk = fmul double %i.bbj, 5.000000e-01       ; 4 uses
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.ban, i64 364
  %i.bbm = load i8, ptr %i.bbl, align 4, !tbaa !299, !range !263, !noundef !264
  %i.bbn = trunc nuw i8 %i.bbm to i1
  br i1 %i.bbn, label %bb.gc, label %_ZN10ImPlotAxis9SetAspectEd.exit576

bb.gc:                                            ; preds = %bb.gb
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.ban, i64 367
  %i.bbp = load i8, ptr %i.bbo, align 1, !tbaa !295, !range !263, !noundef !264
  %i.bbq = trunc nuw i8 %i.bbp to i1
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.ban, i64 32
  %i.bbs = load i32, ptr %i.bbr, align 8
  %i.bbt = icmp eq i32 %i.bbs, 1
  %i.bbu = select i1 %i.bbq, i1 %i.bbt, i1 false
  br i1 %i.bbu, label %_ZN10ImPlotAxis9SetAspectEd.exit576, label %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i568

_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i568:      ; preds = %bb.gc
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.ban, i64 4
  %i.bbw = load i32, ptr %i.bbv, align 4, !tbaa !300
  %i.bbx = lshr i32 %i.bbw, 14
  %i.bby = and i32 %i.bbx, 3
  switch i32 %i.bby, label %default.unreachable [
    i32 3, label %_ZN10ImPlotAxis9SetAspectEd.exit576
    i32 1, label %bb.gd
    i32 2, label %_ZNK10ImPlotAxis11IsLockedMaxEv.exit8.thread.i575
    i32 0, label %_ZNK10ImPlotAxis11IsLockedMinEv.exit7.thread.i574
  ]

bb.gd:                                            ; preds = %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i568
  %i.bbz = tail call double @llvm.fmuladd.f64(double %i.bbk, double 2.000000e+00, double %i.bbg)
  tail call void @_ZN10ImPlotAxis8SetRangeEdd(ptr noundef nonnull align 8 dereferenceable(372) %i.ban, double noundef %i.bbh, double noundef %i.bbz)
  br label %_ZN10ImPlotAxis9SetAspectEd.exit576

_ZNK10ImPlotAxis11IsLockedMaxEv.exit8.thread.i575: ; preds = %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i568
  %i.bca = tail call double @llvm.fmuladd.f64(double %i.bbk, double -2.000000e+00, double %i.bbh)
  tail call void @_ZN10ImPlotAxis8SetRangeEdd(ptr noundef nonnull align 8 dereferenceable(372) %i.ban, double noundef %i.bca, double noundef %i.bbg)
  br label %_ZN10ImPlotAxis9SetAspectEd.exit576

_ZNK10ImPlotAxis11IsLockedMinEv.exit7.thread.i574: ; preds = %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i568
  %i.bcb = fsub double %i.bbh, %i.bbk
  %i.bcc = fadd double %i.bbg, %i.bbk
  tail call void @_ZN10ImPlotAxis8SetRangeEdd(ptr noundef nonnull align 8 dereferenceable(372) %i.ban, double noundef %i.bcb, double noundef %i.bcc)
  br label %_ZN10ImPlotAxis9SetAspectEd.exit576

_ZN10ImPlotAxis9SetAspectEd.exit576:              ; preds = %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i568, %bb.fn, %bb.fm, %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i534, %_ZNK10ImPlotAxis11IsLockedMinEv.exit7.thread.i574, %_ZNK10ImPlotAxis11IsLockedMaxEv.exit8.thread.i575, %bb.gd, %bb.gc, %bb.gb, %_ZN10ImPlotAxis6SetMaxEdb.exit567, %bb.ga, %bb.fo, %_ZNK10ImPlotAxis13IsInputLockedEv.exit537, %_ZNK10ImPlotAxis13IsInputLockedEv.exit533
  %.10 = phi i1 [ %.9740, %_ZNK10ImPlotAxis13IsInputLockedEv.exit537 ], [ %.9740, %_ZNK10ImPlotAxis13IsInputLockedEv.exit533 ], [ %.9740, %bb.fo ], [ true, %_ZNK10ImPlotAxis11IsLockedMinEv.exit7.thread.i574 ], [ true, %bb.ga ], [ true, %_ZN10ImPlotAxis6SetMaxEdb.exit567 ], [ true, %bb.gb ], [ true, %bb.gc ], [ true, %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i568 ], [ true, %bb.gd ], [ true, %_ZNK10ImPlotAxis11IsLockedMaxEv.exit8.thread.i575 ], [ %.9740, %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i534 ], [ %.9740, %bb.fm ], [ %.9740, %bb.fn ] ; 2 uses
  %indvars.iv.next755 = add nuw nsw i64 %indvars.iv754, 1 ; 2 uses
  %exitcond756.not = icmp eq i64 %indvars.iv.next755, 3
  br i1 %exitcond756.not, label %.loopexit, label %bb.fj, !llvm.loop !563

.loopexit:                                        ; preds = %_ZN10ImPlotAxis9SetAspectEd.exit576, %bb.ej, %bb.ei
  %.11 = phi i1 [ %.6, %bb.ei ], [ %.6, %bb.ej ], [ %.10, %_ZN10ImPlotAxis9SetAspectEd.exit576 ] ; 6 uses
  %i.bcd = load i8, ptr %i.lh, align 2, !tbaa !361, !range !263, !noundef !264
  %i.bce = trunc nuw i8 %i.bcd to i1
  br i1 %i.bce, label %bb.ge, label %bb.hx

bb.ge:                                            ; preds = %.loopexit
  %i.bcf = getelementptr inbounds nuw i8, ptr %0, i64 2536 ; 3 uses
  %i.bcg = getelementptr inbounds nuw i8, ptr %i.f, i64 216 ; 4 uses
  %i.bch = getelementptr inbounds nuw i8, ptr %0, i64 2540 ; 2 uses
  %i.bci = getelementptr inbounds nuw i8, ptr %i.f, i64 220 ; 3 uses
  %i.bcj = load i32, ptr %i.ht, align 8, !tbaa !567 ; 2 uses
  %i.bck = getelementptr inbounds nuw i8, ptr %i.e, i64 1488 ; 3 uses
  %i.bcl = load i32, ptr %i.bck, align 8, !tbaa !577 ; 2 uses
  %i.bcm = and i32 %i.bcl, %i.bcj
  %i.bcn = icmp ne i32 %i.bcm, %i.bcl
  %i.bco = getelementptr inbounds nuw i8, ptr %i.e, i64 1492 ; 3 uses
  %i.bcp = load i32, ptr %i.bco, align 4, !tbaa !578 ; 2 uses
  %i.bcq = and i32 %i.bcp, %i.bcj
  %i.bcr = icmp ne i32 %i.bcq, %i.bcp
  %i.bcs = load <2 x float>, ptr %i.bcf, align 8, !tbaa !41
  %i.bct = load <2 x float>, ptr %i.bcg, align 8, !tbaa !41
  %i.bcu = fsub <2 x float> %i.bcs, %i.bct        ; 4 uses
  %i.bcv = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bcu)
  %i.bcw = fcmp ogt <2 x float> %i.bcv, splat (float 2.000000e+00) ; 2 uses
  %i.bcx = extractelement <2 x i1> %i.bcw, i64 0
  %i.bcy = select i1 %i.bcn, i1 %i.bcx, i1 false  ; 2 uses
  %i.bcz = extractelement <2 x i1> %i.bcw, i64 1
  %i.bda = select i1 %i.bcr, i1 %i.bcz, i1 false  ; 2 uses
  %i.bdb = load i32, ptr %i.lc, align 4, !tbaa !566
end_hunk_4
begin_hunk_5_@_ZN6ImPlot11UpdateInputER10ImPlotPlot:bb.a
  %i.bdg = getelementptr inbounds nuw [376 x i8], ptr %i.bk, i64 %indvars.iv757 ; 41 uses
  %i.bdh = getelementptr inbounds nuw i8, ptr %i.bdg, i64 364 ; 3 uses
  %i.bdi = load i8, ptr %i.bdh, align 4, !tbaa !299, !range !263, !noundef !264
  %i.bdj = trunc nuw i8 %i.bdi to i1
  br i1 %i.bdj, label %bb.gf, label %_ZN10ImPlotAxis6SetMaxEdb.exit612

bb.gf:                                            ; preds = %.preheader716
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.bdg, i64 367 ; 3 uses
  %i.bdl = load i8, ptr %i.bdk, align 1, !tbaa !295, !range !263, !noundef !264
  %i.bdm = trunc nuw i8 %i.bdl to i1
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.bdg, i64 32 ; 3 uses
  %i.bdo = load i32, ptr %i.bdn, align 8
  %i.bdp = icmp eq i32 %i.bdo, 1
  %i.bdq = select i1 %i.bdm, i1 %i.bdp, i1 false
  br i1 %i.bdq, label %_ZN10ImPlotAxis6SetMaxEdb.exit612, label %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i579

_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i579:      ; preds = %bb.gf
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.bdg, i64 4 ; 3 uses
  %i.bds = load i32, ptr %i.bdr, align 4, !tbaa !300 ; 2 uses
  %i.bdt = and i32 %i.bds, 49152
  %or.cond.i580 = icmp eq i32 %i.bdt, 49152
  br i1 %or.cond.i580, label %_ZN10ImPlotAxis6SetMaxEdb.exit612, label %_ZNK10ImPlotAxis13IsInputLockedEv.exit582

_ZNK10ImPlotAxis13IsInputLockedEv.exit582:        ; preds = %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i579
  %i.bdu = and i32 %i.bds, 2048
  %.not709 = icmp eq i32 %i.bdu, 0
  %or.cond7 = select i1 %.not709, i1 %i.bcy, i1 false
  br i1 %or.cond7, label %bb.gg, label %_ZN10ImPlotAxis6SetMaxEdb.exit612

bb.gg:                                            ; preds = %_ZNK10ImPlotAxis13IsInputLockedEv.exit582
  %i.bdv = load float, ptr %i.bcf, align 8, !tbaa !579
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.bdg, i64 272 ; 4 uses
  %i.bdx = load float, ptr %i.bdw, align 8, !tbaa !307 ; 2 uses
  %i.bdy = fsub float %i.bdv, %i.bdx
  %i.bdz = fpext float %i.bdy to double
  %i.bea = getelementptr inbounds nuw i8, ptr %i.bdg, i64 296 ; 4 uses
  %i.beb = load double, ptr %i.bea, align 8, !tbaa !308 ; 2 uses
  %i.bec = fdiv double %i.bdz, %i.beb
  %i.bed = getelementptr inbounds nuw i8, ptr %i.bdg, i64 16 ; 4 uses
  %i.bee = load double, ptr %i.bed, align 8, !tbaa !301 ; 4 uses
  %i.bef = fadd double %i.bee, %i.bec             ; 2 uses
  %i.beg = getelementptr inbounds nuw i8, ptr %i.bdg, i64 256 ; 2 uses
  %i.beh = load ptr, ptr %i.beg, align 8, !tbaa !372 ; 2 uses
  %.not.i583 = icmp eq ptr %i.beh, null
  br i1 %.not.i583, label %_ZNK10ImPlotAxis12PixelsToPlotEf.exit585.thread, label %_ZNK10ImPlotAxis12PixelsToPlotEf.exit585

_ZNK10ImPlotAxis12PixelsToPlotEf.exit585.thread:  ; preds = %bb.gg
  %i.bei = load float, ptr %i.bcg, align 8, !tbaa !376
  %i.bej = fsub float %i.bei, %i.bdx
  %i.bek = fpext float %i.bej to double
  %i.bel = fdiv double %i.bek, %i.beb
  %i.bem = fadd double %i.bee, %i.bel
  br label %_ZNK10ImPlotAxis12PixelsToPlotEf.exit588

_ZNK10ImPlotAxis12PixelsToPlotEf.exit585:         ; preds = %bb.gg
  %i.ben = fsub double %i.bef, %i.bee
  %i.beo = getelementptr inbounds nuw i8, ptr %i.bdg, i64 24
  %i.bep = load double, ptr %i.beo, align 8, !tbaa !276
  %i.beq = fsub double %i.bep, %i.bee
  %i.ber = fdiv double %i.ben, %i.beq
  %i.bes = getelementptr inbounds nuw i8, ptr %i.bdg, i64 288
  %i.bet = load double, ptr %i.bes, align 8, !tbaa !312
  %i.beu = getelementptr inbounds nuw i8, ptr %i.bdg, i64 280
  %i.bev = load double, ptr %i.beu, align 8, !tbaa !311 ; 2 uses
  %i.bew = fsub double %i.bet, %i.bev
  %i.bex = tail call double @llvm.fmuladd.f64(double %i.ber, double %i.bew, double %i.bev)
  %i.bey = getelementptr inbounds nuw i8, ptr %i.bdg, i64 264
  %i.bez = load ptr, ptr %i.bey, align 8, !tbaa !310
  %i.bfa = tail call noundef double %i.beh(double noundef %i.bex, ptr noundef %i.bez) #32, !inline_history !11 ; 2 uses
  %.pre789 = load float, ptr %i.bdw, align 8, !tbaa !307
  %.pre790 = load double, ptr %i.bea, align 8, !tbaa !308
  %.pre791 = load double, ptr %i.bed, align 8, !tbaa !301 ; 3 uses
  %.pre792 = load ptr, ptr %i.beg, align 8, !tbaa !372 ; 2 uses
  %i.bfb = load float, ptr %i.bcg, align 8, !tbaa !376
  %i.bfc = fsub float %i.bfb, %.pre789
  %i.bfd = fpext float %i.bfc to double
  %i.bfe = fdiv double %i.bfd, %.pre790
  %i.bff = fadd double %.pre791, %i.bfe           ; 2 uses
  %.not.i586 = icmp eq ptr %.pre792, null
  br i1 %.not.i586, label %_ZNK10ImPlotAxis12PixelsToPlotEf.exit588, label %bb.gh

bb.gh:                                            ; preds = %_ZNK10ImPlotAxis12PixelsToPlotEf.exit585
  %i.bfg = fsub double %i.bff, %.pre791
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.bdg, i64 24
  %i.bfi = load double, ptr %i.bfh, align 8, !tbaa !276
  %i.bfj = fsub double %i.bfi, %.pre791
  %i.bfk = fdiv double %i.bfg, %i.bfj
  %i.bfl = getelementptr inbounds nuw i8, ptr %i.bdg, i64 288
  %i.bfm = load double, ptr %i.bfl, align 8, !tbaa !312
  %i.bfn = getelementptr inbounds nuw i8, ptr %i.bdg, i64 280
  %i.bfo = load double, ptr %i.bfn, align 8, !tbaa !311 ; 2 uses
  %i.bfp = fsub double %i.bfm, %i.bfo
  %i.bfq = tail call double @llvm.fmuladd.f64(double %i.bfk, double %i.bfp, double %i.bfo)
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.bdg, i64 264
  %i.bfs = load ptr, ptr %i.bfr, align 8, !tbaa !310
  %i.bft = tail call noundef double %.pre792(double noundef %i.bfq, ptr noundef %i.bfs) #32, !inline_history !11
  br label %_ZNK10ImPlotAxis12PixelsToPlotEf.exit588

_ZNK10ImPlotAxis12PixelsToPlotEf.exit588:         ; preds = %_ZNK10ImPlotAxis12PixelsToPlotEf.exit585.thread, %_ZNK10ImPlotAxis12PixelsToPlotEf.exit585, %bb.gh
  %.0.i584913 = phi double [ %i.bfa, %bb.gh ], [ %i.bfa, %_ZNK10ImPlotAxis12PixelsToPlotEf.exit585 ], [ %i.bef, %_ZNK10ImPlotAxis12PixelsToPlotEf.exit585.thread ] ; 8 uses
  %.0.i587 = phi double [ %i.bft, %bb.gh ], [ %i.bff, %_ZNK10ImPlotAxis12PixelsToPlotEf.exit585 ], [ %i.bem, %_ZNK10ImPlotAxis12PixelsToPlotEf.exit585.thread ] ; 8 uses
  %i.bfu = fcmp olt double %.0.i584913, %.0.i587
  %i.bfv = select i1 %i.bfu, double %.0.i584913, double %.0.i587 ; 3 uses
  %i.bfw = load i8, ptr %i.bdh, align 4, !tbaa !299, !range !263, !noundef !264
  %i.bfx = trunc nuw i8 %i.bfw to i1
  br i1 %i.bfx, label %bb.gi, label %_ZN10ImPlotAxis6SetMaxEdb.exit612

bb.gi:                                            ; preds = %_ZNK10ImPlotAxis12PixelsToPlotEf.exit588
  %i.bfy = load i8, ptr %i.bdk, align 1, !tbaa !295, !range !263, !noundef !264
  %i.bfz = trunc nuw i8 %i.bfy to i1
  %i.bga = load i32, ptr %i.bdn, align 8
  %i.bgb = icmp eq i32 %i.bga, 1
  %i.bgc = select i1 %i.bfz, i1 %i.bgb, i1 false
  br i1 %i.bgc, label %_ZN10ImPlotAxis6SetMinEdb.exit600.thread, label %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i590

_ZNK10ImPlotAxis11IsLockedMinEv.exit.i590:        ; preds = %bb.gi
  %i.bgd = load i32, ptr %i.bdr, align 4, !tbaa !300
  %i.bge = and i32 %i.bgd, 16384
  %.not.i591 = icmp eq i32 %i.bge, 0
  br i1 %.not.i591, label %bb.gj, label %_ZN10ImPlotAxis6SetMinEdb.exit600.thread

bb.gj:                                            ; preds = %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i590
  %i.bgf = fcmp ult double %i.bfv, f0x7FEFFFFFFFFFFFFF
  %i.bgg = fcmp ole double %i.bfv, f0xFFEFFFFFFFFFFFFF
  %i.bgh = select i1 %i.bgg, double f0xFFEFFFFFFFFFFFFF, double %i.bfv
  %i.bgi = select i1 %i.bgf, double %i.bgh, double f0x7FEFFFFFFFFFFFFF ; 2 uses
  %.inv.i.i592 = fcmp ord double %i.bgi, 0.000000e+00
  %i.bgj = select i1 %.inv.i.i592, double %i.bgi, double 0.000000e+00 ; 2 uses
  %i.bgk = getelementptr inbounds nuw i8, ptr %i.bdg, i64 64
  %i.bgl = load double, ptr %i.bgk, align 8, !tbaa !303 ; 2 uses
  %i.bgm = fcmp olt double %i.bgj, %i.bgl
  %.010.i593 = select i1 %i.bgm, double %i.bgl, double %i.bgj ; 2 uses
  %i.bgn = getelementptr inbounds nuw i8, ptr %i.bdg, i64 24 ; 2 uses
  %i.bgo = load double, ptr %i.bgn, align 8, !tbaa !302 ; 6 uses
  %i.bgp = fsub double %i.bgo, %.010.i593         ; 2 uses
  %i.bgq = getelementptr inbounds nuw i8, ptr %i.bdg, i64 80
  %i.bgr = load double, ptr %i.bgq, align 8, !tbaa !304 ; 2 uses
  %i.bgs = fcmp olt double %i.bgp, %i.bgr
  %i.bgt = fsub double %i.bgo, %i.bgr
  %.111.i594 = select i1 %i.bgs, double %i.bgt, double %.010.i593
  %i.bgu = getelementptr inbounds nuw i8, ptr %i.bdg, i64 88
  %i.bgv = load double, ptr %i.bgu, align 8, !tbaa !305 ; 2 uses
  %i.bgw = fcmp ogt double %i.bgp, %i.bgv
  %i.bgx = fsub double %i.bgo, %i.bgv
  %.2.i595 = select i1 %i.bgw, double %i.bgx, double %.111.i594 ; 8 uses
  %i.bgy = fcmp ult double %.2.i595, %i.bgo
  br i1 %i.bgy, label %bb.gk, label %_ZN10ImPlotAxis6SetMinEdb.exit600.thread

bb.gk:                                            ; preds = %bb.gj
  store double %.2.i595, ptr %i.bed, align 8, !tbaa !301
  %i.bgz = fptosi double %.2.i595 to i64
  %i.bha = tail call double @llvm.floor.f64(double %.2.i595)
  %i.bhb = fmul double %i.bha, -1.000000e+06
  %i.bhc = tail call double @llvm.fmuladd.f64(double %.2.i595, double 1.000000e+06, double %i.bhb)
  %i.bhd = fptosi double %i.bhc to i32            ; 2 uses
  %i.bhe = sdiv i32 %i.bhd, 1000000
  %i.bhf = sext i32 %i.bhe to i64
  %i.bhg = add nsw i64 %i.bhf, %i.bgz
  %i.bhh = srem i32 %i.bhd, 1000000
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bdg, i64 216
  store i64 %i.bhg, ptr %i.bhi, align 8, !tbaa !285
  %.sroa.4.0..sroa_idx.i596 = getelementptr inbounds nuw i8, ptr %i.bdg, i64 224
  store i32 %i.bhh, ptr %.sroa.4.0..sroa_idx.i596, align 8, !tbaa !29
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.bdg, i64 276
  %i.bhk = load float, ptr %i.bhj, align 4, !tbaa !306
  %i.bhl = load float, ptr %i.bdw, align 8, !tbaa !307
  %i.bhm = fsub float %i.bhk, %i.bhl
  %i.bhn = fpext float %i.bhm to double
  %i.bho = fsub double %i.bgo, %.2.i595
  %i.bhp = fdiv double %i.bhn, %i.bho
  store double %i.bhp, ptr %i.bea, align 8, !tbaa !308
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bdg, i64 248 ; 2 uses
  %i.bhr = load ptr, ptr %i.bhq, align 8, !tbaa !309 ; 2 uses
  %.not.i.i597 = icmp eq ptr %i.bhr, null
  br i1 %.not.i.i597, label %_ZN10ImPlotAxis6SetMinEdb.exit600.thread915, label %_ZN10ImPlotAxis6SetMinEdb.exit600

_ZN10ImPlotAxis6SetMinEdb.exit600.thread915:      ; preds = %bb.gk
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bdg, i64 280
  store double %.2.i595, ptr %i.bhs, align 8, !tbaa !311
  %i.bht = getelementptr inbounds nuw i8, ptr %i.bdg, i64 288
  store double %i.bgo, ptr %i.bht, align 8, !tbaa !312
  %i.bhu = fcmp oge double %.0.i584913, %.0.i587
  %i.bhv = select i1 %i.bhu, double %.0.i584913, double %.0.i587
  br label %bb.gl

_ZN10ImPlotAxis6SetMinEdb.exit600.thread:         ; preds = %bb.gi, %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i590, %bb.gj
  %i.bhw = fcmp oge double %.0.i584913, %.0.i587
  %i.bhx = select i1 %i.bhw, double %.0.i584913, double %.0.i587
  br label %bb.gl

_ZN10ImPlotAxis6SetMinEdb.exit600:                ; preds = %bb.gk
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.bdg, i64 264 ; 2 uses
  %i.bhz = load ptr, ptr %i.bhy, align 8, !tbaa !310
  %i.bia = tail call noundef double %i.bhr(double noundef %.2.i595, ptr noundef %i.bhz) #32, !inline_history !8
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bdg, i64 280
  store double %i.bia, ptr %i.bib, align 8, !tbaa !311
  %i.bic = load ptr, ptr %i.bhq, align 8, !tbaa !309
  %i.bid = load double, ptr %i.bgn, align 8, !tbaa !302
  %i.bie = load ptr, ptr %i.bhy, align 8, !tbaa !310
  %i.bif = tail call noundef double %i.bic(double noundef %i.bid, ptr noundef %i.bie) #32, !inline_history !8
  %.pre793.pre = load i8, ptr %i.bdh, align 4, !tbaa !299
  %i.big = trunc nuw i8 %.pre793.pre to i1
  %i.bih = getelementptr inbounds nuw i8, ptr %i.bdg, i64 288
  store double %i.bif, ptr %i.bih, align 8, !tbaa !312
  %i.bii = fcmp oge double %.0.i584913, %.0.i587
  %i.bij = select i1 %i.bii, double %.0.i584913, double %.0.i587
  br i1 %i.big, label %bb.gl, label %_ZN10ImPlotAxis6SetMaxEdb.exit612

bb.gl:                                            ; preds = %_ZN10ImPlotAxis6SetMinEdb.exit600.thread915, %_ZN10ImPlotAxis6SetMinEdb.exit600.thread, %_ZN10ImPlotAxis6SetMinEdb.exit600
  %i.bik = phi double [ %i.bhx, %_ZN10ImPlotAxis6SetMinEdb.exit600.thread ], [ %i.bij, %_ZN10ImPlotAxis6SetMinEdb.exit600 ], [ %i.bhv, %_ZN10ImPlotAxis6SetMinEdb.exit600.thread915 ] ; 3 uses
  %i.bil = load i8, ptr %i.bdk, align 1, !tbaa !295, !range !263, !noundef !264
  %i.bim = trunc nuw i8 %i.bil to i1
  %i.bin = load i32, ptr %i.bdn, align 8
  %i.bio = icmp eq i32 %i.bin, 1
  %i.bip = select i1 %i.bim, i1 %i.bio, i1 false
  br i1 %i.bip, label %_ZN10ImPlotAxis6SetMaxEdb.exit612, label %_ZNK10ImPlotAxis11IsLockedMaxEv.exit.i602

_ZNK10ImPlotAxis11IsLockedMaxEv.exit.i602:        ; preds = %bb.gl
  %i.biq = load i32, ptr %i.bdr, align 4, !tbaa !300
  %i.bir = and i32 %i.biq, 32768
  %.not.i603 = icmp eq i32 %i.bir, 0
  br i1 %.not.i603, label %bb.gm, label %_ZN10ImPlotAxis6SetMaxEdb.exit612

bb.gm:                                            ; preds = %_ZNK10ImPlotAxis11IsLockedMaxEv.exit.i602
  %i.bis = fcmp ult double %i.bik, f0x7FEFFFFFFFFFFFFF
  %i.bit = fcmp ole double %i.bik, f0xFFEFFFFFFFFFFFFF
  %i.biu = select i1 %i.bit, double f0xFFEFFFFFFFFFFFFF, double %i.bik
  %i.biv = select i1 %i.bis, double %i.biu, double f0x7FEFFFFFFFFFFFFF ; 2 uses
  %.inv.i.i604 = fcmp ord double %i.biv, 0.000000e+00
  %i.biw = select i1 %.inv.i.i604, double %i.biv, double 0.000000e+00 ; 2 uses
  %i.bix = getelementptr inbounds nuw i8, ptr %i.bdg, i64 72
  %i.biy = load double, ptr %i.bix, align 8, !tbaa !313 ; 2 uses
  %i.biz = fcmp ogt double %i.biw, %i.biy
  %.010.i605 = select i1 %i.biz, double %i.biy, double %i.biw ; 2 uses
  %i.bja = load double, ptr %i.bed, align 8, !tbaa !301 ; 7 uses
  %i.bjb = fsub double %.010.i605, %i.bja         ; 2 uses
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.bdg, i64 80
  %i.bjd = load double, ptr %i.bjc, align 8, !tbaa !304 ; 2 uses
  %i.bje = fcmp olt double %i.bjb, %i.bjd
  %i.bjf = fadd double %i.bja, %i.bjd
  %.111.i606 = select i1 %i.bje, double %i.bjf, double %.010.i605
  %i.bjg = getelementptr inbounds nuw i8, ptr %i.bdg, i64 88
  %i.bjh = load double, ptr %i.bjg, align 8, !tbaa !305 ; 2 uses
  %i.bji = fcmp ogt double %i.bjb, %i.bjh
  %i.bjj = fadd double %i.bja, %i.bjh
  %.2.i607 = select i1 %i.bji, double %i.bjj, double %.111.i606 ; 7 uses
  %i.bjk = fcmp ugt double %.2.i607, %i.bja
  br i1 %i.bjk, label %bb.gn, label %_ZN10ImPlotAxis6SetMaxEdb.exit612

bb.gn:                                            ; preds = %bb.gm
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.bdg, i64 24 ; 2 uses
  store double %.2.i607, ptr %i.bjl, align 8, !tbaa !302
  %i.bjm = fptosi double %.2.i607 to i64
  %i.bjn = tail call double @llvm.floor.f64(double %.2.i607)
  %i.bjo = fmul double %i.bjn, -1.000000e+06
  %i.bjp = tail call double @llvm.fmuladd.f64(double %.2.i607, double 1.000000e+06, double %i.bjo)
  %i.bjq = fptosi double %i.bjp to i32            ; 2 uses
  %i.bjr = sdiv i32 %i.bjq, 1000000
  %i.bjs = sext i32 %i.bjr to i64
  %i.bjt = add nsw i64 %i.bjs, %i.bjm
  %i.bju = srem i32 %i.bjq, 1000000
  %i.bjv = getelementptr inbounds nuw i8, ptr %i.bdg, i64 232
  store i64 %i.bjt, ptr %i.bjv, align 8, !tbaa !285
  %.sroa.4.0..sroa_idx.i608 = getelementptr inbounds nuw i8, ptr %i.bdg, i64 240
  store i32 %i.bju, ptr %.sroa.4.0..sroa_idx.i608, align 8, !tbaa !29
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.bdg, i64 276
  %i.bjx = load float, ptr %i.bjw, align 4, !tbaa !306
  %i.bjy = load float, ptr %i.bdw, align 8, !tbaa !307
  %i.bjz = fsub float %i.bjx, %i.bjy
  %i.bka = fpext float %i.bjz to double
  %i.bkb = fsub double %.2.i607, %i.bja
  %i.bkc = fdiv double %i.bka, %i.bkb
  store double %i.bkc, ptr %i.bea, align 8, !tbaa !308
  %i.bkd = getelementptr inbounds nuw i8, ptr %i.bdg, i64 248 ; 2 uses
  %i.bke = load ptr, ptr %i.bkd, align 8, !tbaa !309 ; 2 uses
  %.not.i.i609 = icmp eq ptr %i.bke, null
  br i1 %.not.i.i609, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.bkf = getelementptr inbounds nuw i8, ptr %i.bdg, i64 264 ; 2 uses
  %i.bkg = load ptr, ptr %i.bkf, align 8, !tbaa !310
  %i.bkh = tail call noundef double %i.bke(double noundef %i.bja, ptr noundef %i.bkg) #32, !inline_history !9
  %i.bki = getelementptr inbounds nuw i8, ptr %i.bdg, i64 280
  store double %i.bkh, ptr %i.bki, align 8, !tbaa !311
  %i.bkj = load ptr, ptr %i.bkd, align 8, !tbaa !309
  %i.bkk = load double, ptr %i.bjl, align 8, !tbaa !302
  %i.bkl = load ptr, ptr %i.bkf, align 8, !tbaa !310
  %i.bkm = tail call noundef double %i.bkj(double noundef %i.bkk, ptr noundef %i.bkl) #32, !inline_history !9
  br label %_ZN10ImPlotAxis20UpdateTransformCacheEv.exit.i610

bb.gp:                                            ; preds = %bb.gn
  %i.bkn = getelementptr inbounds nuw i8, ptr %i.bdg, i64 280
  store double %i.bja, ptr %i.bkn, align 8, !tbaa !311
  br label %_ZN10ImPlotAxis20UpdateTransformCacheEv.exit.i610

_ZN10ImPlotAxis20UpdateTransformCacheEv.exit.i610: ; preds = %bb.gp, %bb.go
  %.sink.i.i611 = phi double [ %.2.i607, %bb.gp ], [ %i.bkm, %bb.go ]
  %i.bko = getelementptr inbounds nuw i8, ptr %i.bdg, i64 288
  store double %.sink.i.i611, ptr %i.bko, align 8, !tbaa !312
  br label %_ZN10ImPlotAxis6SetMaxEdb.exit612

_ZN10ImPlotAxis6SetMaxEdb.exit612:                ; preds = %_ZNK10ImPlotAxis12PixelsToPlotEf.exit588, %bb.gf, %.preheader716, %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i579, %_ZN10ImPlotAxis20UpdateTransformCacheEv.exit.i610, %bb.gm, %_ZNK10ImPlotAxis11IsLockedMaxEv.exit.i602, %bb.gl, %_ZN10ImPlotAxis6SetMinEdb.exit600, %_ZNK10ImPlotAxis13IsInputLockedEv.exit582
  %.13 = phi i1 [ true, %_ZN10ImPlotAxis20UpdateTransformCacheEv.exit.i610 ], [ %.12742, %_ZNK10ImPlotAxis13IsInputLockedEv.exit582 ], [ %.12742, %bb.gf ], [ true, %_ZN10ImPlotAxis6SetMinEdb.exit600 ], [ true, %bb.gl ], [ true, %_ZNK10ImPlotAxis11IsLockedMaxEv.exit.i602 ], [ true, %bb.gm ], [ %.12742, %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i579 ], [ %.12742, %.preheader716 ], [ true, %_ZNK10ImPlotAxis12PixelsToPlotEf.exit588 ] ; 2 uses
  %indvars.iv.next758 = add nuw nsw i64 %indvars.iv757, 1 ; 2 uses
  %exitcond759.not = icmp eq i64 %indvars.iv.next758, 3
  br i1 %exitcond759.not, label %.preheader, label %.preheader716, !llvm.loop !564

bb.gq:                                            ; preds = %_ZN10ImPlotAxis6SetMaxEdb.exit646
  %or.cond12 = select i1 %i.bcy, i1 true, i1 %i.bda
  br i1 %or.cond12, label %bb.he, label %bb.hc

.preheader:                                       ; preds = %_ZN10ImPlotAxis6SetMaxEdb.exit612, %_ZN10ImPlotAxis6SetMaxEdb.exit646
  %indvars.iv760 = phi i64 [ %indvars.iv.next761, %_ZN10ImPlotAxis6SetMaxEdb.exit646 ], [ 0, %_ZN10ImPlotAxis6SetMaxEdb.exit612 ] ; 2 uses
  %.14744 = phi i1 [ %.15, %_ZN10ImPlotAxis6SetMaxEdb.exit646 ], [ %.13, %_ZN10ImPlotAxis6SetMaxEdb.exit612 ] ; 4 uses
  %i.bkp = getelementptr [376 x i8], ptr %0, i64 %indvars.iv760 ; 41 uses
  %i.bkq = getelementptr i8, ptr %i.bkp, i64 1516 ; 3 uses
  %i.bkr = load i8, ptr %i.bkq, align 4, !tbaa !299, !range !263, !noundef !264
  %i.bks = trunc nuw i8 %i.bkr to i1
  br i1 %i.bks, label %bb.gr, label %_ZN10ImPlotAxis6SetMaxEdb.exit646

bb.gr:                                            ; preds = %.preheader
  %i.bkt = getelementptr i8, ptr %i.bkp, i64 1519 ; 3 uses
  %i.bku = load i8, ptr %i.bkt, align 1, !tbaa !295, !range !263, !noundef !264
  %i.bkv = trunc nuw i8 %i.bku to i1
  %i.bkw = getelementptr i8, ptr %i.bkp, i64 1184 ; 3 uses
  %i.bkx = load i32, ptr %i.bkw, align 8
  %i.bky = icmp eq i32 %i.bkx, 1
  %i.bkz = select i1 %i.bkv, i1 %i.bky, i1 false
  br i1 %i.bkz, label %_ZN10ImPlotAxis6SetMaxEdb.exit646, label %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i613

_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i613:      ; preds = %bb.gr
  %i.bla = getelementptr i8, ptr %i.bkp, i64 1156 ; 3 uses
  %i.blb = load i32, ptr %i.bla, align 4, !tbaa !300 ; 2 uses
  %i.blc = and i32 %i.blb, 49152
  %or.cond.i614 = icmp eq i32 %i.blc, 49152
  br i1 %or.cond.i614, label %_ZN10ImPlotAxis6SetMaxEdb.exit646, label %_ZNK10ImPlotAxis13IsInputLockedEv.exit616

_ZNK10ImPlotAxis13IsInputLockedEv.exit616:        ; preds = %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i613
  %i.bld = and i32 %i.blb, 2048
  %.not708 = icmp eq i32 %i.bld, 0
  %or.cond10 = select i1 %.not708, i1 %i.bda, i1 false
  br i1 %or.cond10, label %bb.gs, label %_ZN10ImPlotAxis6SetMaxEdb.exit646

bb.gs:                                            ; preds = %_ZNK10ImPlotAxis13IsInputLockedEv.exit616
  %i.ble = load float, ptr %i.bch, align 4, !tbaa !580
  %i.blf = getelementptr i8, ptr %i.bkp, i64 1424 ; 4 uses
  %i.blg = load float, ptr %i.blf, align 8, !tbaa !307 ; 2 uses
  %i.blh = fsub float %i.ble, %i.blg
  %i.bli = fpext float %i.blh to double
  %i.blj = getelementptr i8, ptr %i.bkp, i64 1448 ; 4 uses
  %i.blk = load double, ptr %i.blj, align 8, !tbaa !308 ; 2 uses
  %i.bll = fdiv double %i.bli, %i.blk
  %i.blm = getelementptr i8, ptr %i.bkp, i64 1168 ; 4 uses
  %i.bln = load double, ptr %i.blm, align 8, !tbaa !301 ; 4 uses
  %i.blo = fadd double %i.bln, %i.bll             ; 2 uses
  %i.blp = getelementptr i8, ptr %i.bkp, i64 1408 ; 2 uses
  %i.blq = load ptr, ptr %i.blp, align 8, !tbaa !372 ; 2 uses
  %.not.i617 = icmp eq ptr %i.blq, null
  br i1 %.not.i617, label %_ZNK10ImPlotAxis12PixelsToPlotEf.exit619.thread, label %_ZNK10ImPlotAxis12PixelsToPlotEf.exit619

_ZNK10ImPlotAxis12PixelsToPlotEf.exit619.thread:  ; preds = %bb.gs
  %i.blr = load float, ptr %i.bci, align 4, !tbaa !377
  %i.bls = fsub float %i.blr, %i.blg
  %i.blt = fpext float %i.bls to double
  %i.blu = fdiv double %i.blt, %i.blk
  %i.blv = fadd double %i.bln, %i.blu
  br label %_ZNK10ImPlotAxis12PixelsToPlotEf.exit622

_ZNK10ImPlotAxis12PixelsToPlotEf.exit619:         ; preds = %bb.gs
  %i.blw = fsub double %i.blo, %i.bln
  %i.blx = getelementptr i8, ptr %i.bkp, i64 1176
  %i.bly = load double, ptr %i.blx, align 8, !tbaa !276
  %i.blz = fsub double %i.bly, %i.bln
  %i.bma = fdiv double %i.blw, %i.blz
  %i.bmb = getelementptr i8, ptr %i.bkp, i64 1440
  %i.bmc = load double, ptr %i.bmb, align 8, !tbaa !312
  %i.bmd = getelementptr i8, ptr %i.bkp, i64 1432
  %i.bme = load double, ptr %i.bmd, align 8, !tbaa !311 ; 2 uses
  %i.bmf = fsub double %i.bmc, %i.bme
  %i.bmg = tail call double @llvm.fmuladd.f64(double %i.bma, double %i.bmf, double %i.bme)
  %i.bmh = getelementptr i8, ptr %i.bkp, i64 1416
  %i.bmi = load ptr, ptr %i.bmh, align 8, !tbaa !310
  %i.bmj = tail call noundef double %i.blq(double noundef %i.bmg, ptr noundef %i.bmi) #32, !inline_history !11 ; 2 uses
  %.pre794 = load float, ptr %i.blf, align 8, !tbaa !307
  %.pre795 = load double, ptr %i.blj, align 8, !tbaa !308
  %.pre796 = load double, ptr %i.blm, align 8, !tbaa !301 ; 3 uses
  %.pre797 = load ptr, ptr %i.blp, align 8, !tbaa !372 ; 2 uses
  %i.bmk = load float, ptr %i.bci, align 4, !tbaa !377
  %i.bml = fsub float %i.bmk, %.pre794
  %i.bmm = fpext float %i.bml to double
  %i.bmn = fdiv double %i.bmm, %.pre795
  %i.bmo = fadd double %.pre796, %i.bmn           ; 2 uses
  %.not.i620 = icmp eq ptr %.pre797, null
  br i1 %.not.i620, label %_ZNK10ImPlotAxis12PixelsToPlotEf.exit622, label %bb.gt

bb.gt:                                            ; preds = %_ZNK10ImPlotAxis12PixelsToPlotEf.exit619
  %i.bmp = fsub double %i.bmo, %.pre796
  %i.bmq = getelementptr i8, ptr %i.bkp, i64 1176
  %i.bmr = load double, ptr %i.bmq, align 8, !tbaa !276
  %i.bms = fsub double %i.bmr, %.pre796
  %i.bmt = fdiv double %i.bmp, %i.bms
  %i.bmu = getelementptr i8, ptr %i.bkp, i64 1440
  %i.bmv = load double, ptr %i.bmu, align 8, !tbaa !312
  %i.bmw = getelementptr i8, ptr %i.bkp, i64 1432
  %i.bmx = load double, ptr %i.bmw, align 8, !tbaa !311 ; 2 uses
  %i.bmy = fsub double %i.bmv, %i.bmx
  %i.bmz = tail call double @llvm.fmuladd.f64(double %i.bmt, double %i.bmy, double %i.bmx)
  %i.bna = getelementptr i8, ptr %i.bkp, i64 1416
  %i.bnb = load ptr, ptr %i.bna, align 8, !tbaa !310
  %i.bnc = tail call noundef double %.pre797(double noundef %i.bmz, ptr noundef %i.bnb) #32, !inline_history !11
  br label %_ZNK10ImPlotAxis12PixelsToPlotEf.exit622

_ZNK10ImPlotAxis12PixelsToPlotEf.exit622:         ; preds = %_ZNK10ImPlotAxis12PixelsToPlotEf.exit619.thread, %_ZNK10ImPlotAxis12PixelsToPlotEf.exit619, %bb.gt
  %.0.i618920 = phi double [ %i.bmj, %bb.gt ], [ %i.bmj, %_ZNK10ImPlotAxis12PixelsToPlotEf.exit619 ], [ %i.blo, %_ZNK10ImPlotAxis12PixelsToPlotEf.exit619.thread ] ; 8 uses
  %.0.i621 = phi double [ %i.bnc, %bb.gt ], [ %i.bmo, %_ZNK10ImPlotAxis12PixelsToPlotEf.exit619 ], [ %i.blv, %_ZNK10ImPlotAxis12PixelsToPlotEf.exit619.thread ] ; 8 uses
  %i.bnd = fcmp olt double %.0.i618920, %.0.i621
  %i.bne = select i1 %i.bnd, double %.0.i618920, double %.0.i621 ; 3 uses
  %i.bnf = load i8, ptr %i.bkq, align 4, !tbaa !299, !range !263, !noundef !264
  %i.bng = trunc nuw i8 %i.bnf to i1
  br i1 %i.bng, label %bb.gu, label %_ZN10ImPlotAxis6SetMaxEdb.exit646

bb.gu:                                            ; preds = %_ZNK10ImPlotAxis12PixelsToPlotEf.exit622
  %i.bnh = load i8, ptr %i.bkt, align 1, !tbaa !295, !range !263, !noundef !264
  %i.bni = trunc nuw i8 %i.bnh to i1
  %i.bnj = load i32, ptr %i.bkw, align 8
  %i.bnk = icmp eq i32 %i.bnj, 1
  %i.bnl = select i1 %i.bni, i1 %i.bnk, i1 false
  br i1 %i.bnl, label %_ZN10ImPlotAxis6SetMinEdb.exit634.thread, label %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i624

_ZNK10ImPlotAxis11IsLockedMinEv.exit.i624:        ; preds = %bb.gu
  %i.bnm = load i32, ptr %i.bla, align 4, !tbaa !300
  %i.bnn = and i32 %i.bnm, 16384
  %.not.i625 = icmp eq i32 %i.bnn, 0
  br i1 %.not.i625, label %bb.gv, label %_ZN10ImPlotAxis6SetMinEdb.exit634.thread

bb.gv:                                            ; preds = %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i624
  %i.bno = fcmp ult double %i.bne, f0x7FEFFFFFFFFFFFFF
  %i.bnp = fcmp ole double %i.bne, f0xFFEFFFFFFFFFFFFF
  %i.bnq = select i1 %i.bnp, double f0xFFEFFFFFFFFFFFFF, double %i.bne
  %i.bnr = select i1 %i.bno, double %i.bnq, double f0x7FEFFFFFFFFFFFFF ; 2 uses
  %.inv.i.i626 = fcmp ord double %i.bnr, 0.000000e+00
  %i.bns = select i1 %.inv.i.i626, double %i.bnr, double 0.000000e+00 ; 2 uses
  %i.bnt = getelementptr i8, ptr %i.bkp, i64 1216
  %i.bnu = load double, ptr %i.bnt, align 8, !tbaa !303 ; 2 uses
  %i.bnv = fcmp olt double %i.bns, %i.bnu
  %.010.i627 = select i1 %i.bnv, double %i.bnu, double %i.bns ; 2 uses
  %i.bnw = getelementptr i8, ptr %i.bkp, i64 1176 ; 2 uses
  %i.bnx = load double, ptr %i.bnw, align 8, !tbaa !302 ; 6 uses
  %i.bny = fsub double %i.bnx, %.010.i627         ; 2 uses
  %i.bnz = getelementptr i8, ptr %i.bkp, i64 1232
  %i.boa = load double, ptr %i.bnz, align 8, !tbaa !304 ; 2 uses
  %i.bob = fcmp olt double %i.bny, %i.boa
  %i.boc = fsub double %i.bnx, %i.boa
  %.111.i628 = select i1 %i.bob, double %i.boc, double %.010.i627
  %i.bod = getelementptr i8, ptr %i.bkp, i64 1240
  %i.boe = load double, ptr %i.bod, align 8, !tbaa !305 ; 2 uses
  %i.bof = fcmp ogt double %i.bny, %i.boe
  %i.bog = fsub double %i.bnx, %i.boe
  %.2.i629 = select i1 %i.bof, double %i.bog, double %.111.i628 ; 8 uses
  %i.boh = fcmp ult double %.2.i629, %i.bnx
  br i1 %i.boh, label %bb.gw, label %_ZN10ImPlotAxis6SetMinEdb.exit634.thread

bb.gw:                                            ; preds = %bb.gv
  store double %.2.i629, ptr %i.blm, align 8, !tbaa !301
  %i.boi = fptosi double %.2.i629 to i64
  %i.boj = tail call double @llvm.floor.f64(double %.2.i629)
  %i.bok = fmul double %i.boj, -1.000000e+06
  %i.bol = tail call double @llvm.fmuladd.f64(double %.2.i629, double 1.000000e+06, double %i.bok)
  %i.bom = fptosi double %i.bol to i32            ; 2 uses
  %i.bon = sdiv i32 %i.bom, 1000000
  %i.boo = sext i32 %i.bon to i64
  %i.bop = add nsw i64 %i.boo, %i.boi
  %i.boq = srem i32 %i.bom, 1000000
  %i.bor = getelementptr i8, ptr %i.bkp, i64 1368
  store i64 %i.bop, ptr %i.bor, align 8, !tbaa !285
  %.sroa.4.0..sroa_idx.i630 = getelementptr i8, ptr %i.bkp, i64 1376
  store i32 %i.boq, ptr %.sroa.4.0..sroa_idx.i630, align 8, !tbaa !29
  %i.bos = getelementptr i8, ptr %i.bkp, i64 1428
  %i.bot = load float, ptr %i.bos, align 4, !tbaa !306
  %i.bou = load float, ptr %i.blf, align 8, !tbaa !307
  %i.bov = fsub float %i.bot, %i.bou
  %i.bow = fpext float %i.bov to double
  %i.box = fsub double %i.bnx, %.2.i629
  %i.boy = fdiv double %i.bow, %i.box
  store double %i.boy, ptr %i.blj, align 8, !tbaa !308
  %i.boz = getelementptr i8, ptr %i.bkp, i64 1400 ; 2 uses
  %i.bpa = load ptr, ptr %i.boz, align 8, !tbaa !309 ; 2 uses
  %.not.i.i631 = icmp eq ptr %i.bpa, null
  br i1 %.not.i.i631, label %_ZN10ImPlotAxis6SetMinEdb.exit634.thread922, label %_ZN10ImPlotAxis6SetMinEdb.exit634

_ZN10ImPlotAxis6SetMinEdb.exit634.thread922:      ; preds = %bb.gw
  %i.bpb = getelementptr i8, ptr %i.bkp, i64 1432
  store double %.2.i629, ptr %i.bpb, align 8, !tbaa !311
  %i.bpc = getelementptr i8, ptr %i.bkp, i64 1440
  store double %i.bnx, ptr %i.bpc, align 8, !tbaa !312
  %i.bpd = fcmp oge double %.0.i618920, %.0.i621
  %i.bpe = select i1 %i.bpd, double %.0.i618920, double %.0.i621
  br label %bb.gx

_ZN10ImPlotAxis6SetMinEdb.exit634.thread:         ; preds = %bb.gu, %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i624, %bb.gv
  %i.bpf = fcmp oge double %.0.i618920, %.0.i621
  %i.bpg = select i1 %i.bpf, double %.0.i618920, double %.0.i621
  br label %bb.gx

_ZN10ImPlotAxis6SetMinEdb.exit634:                ; preds = %bb.gw
  %i.bph = getelementptr i8, ptr %i.bkp, i64 1416 ; 2 uses
  %i.bpi = load ptr, ptr %i.bph, align 8, !tbaa !310
  %i.bpj = tail call noundef double %i.bpa(double noundef %.2.i629, ptr noundef %i.bpi) #32, !inline_history !8
  %i.bpk = getelementptr i8, ptr %i.bkp, i64 1432
  store double %i.bpj, ptr %i.bpk, align 8, !tbaa !311
  %i.bpl = load ptr, ptr %i.boz, align 8, !tbaa !309
  %i.bpm = load double, ptr %i.bnw, align 8, !tbaa !302
  %i.bpn = load ptr, ptr %i.bph, align 8, !tbaa !310
  %i.bpo = tail call noundef double %i.bpl(double noundef %i.bpm, ptr noundef %i.bpn) #32, !inline_history !8
  %.pre798.pre = load i8, ptr %i.bkq, align 4, !tbaa !299
  %i.bpp = trunc nuw i8 %.pre798.pre to i1
  %i.bpq = getelementptr i8, ptr %i.bkp, i64 1440
  store double %i.bpo, ptr %i.bpq, align 8, !tbaa !312
  %i.bpr = fcmp oge double %.0.i618920, %.0.i621
  %i.bps = select i1 %i.bpr, double %.0.i618920, double %.0.i621
  br i1 %i.bpp, label %bb.gx, label %_ZN10ImPlotAxis6SetMaxEdb.exit646

bb.gx:                                            ; preds = %_ZN10ImPlotAxis6SetMinEdb.exit634.thread922, %_ZN10ImPlotAxis6SetMinEdb.exit634.thread, %_ZN10ImPlotAxis6SetMinEdb.exit634
  %i.bpt = phi double [ %i.bpg, %_ZN10ImPlotAxis6SetMinEdb.exit634.thread ], [ %i.bps, %_ZN10ImPlotAxis6SetMinEdb.exit634 ], [ %i.bpe, %_ZN10ImPlotAxis6SetMinEdb.exit634.thread922 ] ; 3 uses
  %i.bpu = load i8, ptr %i.bkt, align 1, !tbaa !295, !range !263, !noundef !264
  %i.bpv = trunc nuw i8 %i.bpu to i1
  %i.bpw = load i32, ptr %i.bkw, align 8
  %i.bpx = icmp eq i32 %i.bpw, 1
  %i.bpy = select i1 %i.bpv, i1 %i.bpx, i1 false
  br i1 %i.bpy, label %_ZN10ImPlotAxis6SetMaxEdb.exit646, label %_ZNK10ImPlotAxis11IsLockedMaxEv.exit.i636

_ZNK10ImPlotAxis11IsLockedMaxEv.exit.i636:        ; preds = %bb.gx
  %i.bpz = load i32, ptr %i.bla, align 4, !tbaa !300
  %i.bqa = and i32 %i.bpz, 32768
  %.not.i637 = icmp eq i32 %i.bqa, 0
  br i1 %.not.i637, label %bb.gy, label %_ZN10ImPlotAxis6SetMaxEdb.exit646

bb.gy:                                            ; preds = %_ZNK10ImPlotAxis11IsLockedMaxEv.exit.i636
  %i.bqb = fcmp ult double %i.bpt, f0x7FEFFFFFFFFFFFFF
  %i.bqc = fcmp ole double %i.bpt, f0xFFEFFFFFFFFFFFFF
  %i.bqd = select i1 %i.bqc, double f0xFFEFFFFFFFFFFFFF, double %i.bpt
  %i.bqe = select i1 %i.bqb, double %i.bqd, double f0x7FEFFFFFFFFFFFFF ; 2 uses
  %.inv.i.i638 = fcmp ord double %i.bqe, 0.000000e+00
  %i.bqf = select i1 %.inv.i.i638, double %i.bqe, double 0.000000e+00 ; 2 uses
  %i.bqg = getelementptr i8, ptr %i.bkp, i64 1224
  %i.bqh = load double, ptr %i.bqg, align 8, !tbaa !313 ; 2 uses
  %i.bqi = fcmp ogt double %i.bqf, %i.bqh
  %.010.i639 = select i1 %i.bqi, double %i.bqh, double %i.bqf ; 2 uses
  %i.bqj = load double, ptr %i.blm, align 8, !tbaa !301 ; 7 uses
  %i.bqk = fsub double %.010.i639, %i.bqj         ; 2 uses
  %i.bql = getelementptr i8, ptr %i.bkp, i64 1232
  %i.bqm = load double, ptr %i.bql, align 8, !tbaa !304 ; 2 uses
  %i.bqn = fcmp olt double %i.bqk, %i.bqm
  %i.bqo = fadd double %i.bqj, %i.bqm
  %.111.i640 = select i1 %i.bqn, double %i.bqo, double %.010.i639
  %i.bqp = getelementptr i8, ptr %i.bkp, i64 1240
  %i.bqq = load double, ptr %i.bqp, align 8, !tbaa !305 ; 2 uses
  %i.bqr = fcmp ogt double %i.bqk, %i.bqq
  %i.bqs = fadd double %i.bqj, %i.bqq
  %.2.i641 = select i1 %i.bqr, double %i.bqs, double %.111.i640 ; 7 uses
  %i.bqt = fcmp ugt double %.2.i641, %i.bqj
  br i1 %i.bqt, label %bb.gz, label %_ZN10ImPlotAxis6SetMaxEdb.exit646

bb.gz:                                            ; preds = %bb.gy
  %i.bqu = getelementptr i8, ptr %i.bkp, i64 1176 ; 2 uses
  store double %.2.i641, ptr %i.bqu, align 8, !tbaa !302
  %i.bqv = fptosi double %.2.i641 to i64
  %i.bqw = tail call double @llvm.floor.f64(double %.2.i641)
  %i.bqx = fmul double %i.bqw, -1.000000e+06
  %i.bqy = tail call double @llvm.fmuladd.f64(double %.2.i641, double 1.000000e+06, double %i.bqx)
  %i.bqz = fptosi double %i.bqy to i32            ; 2 uses
  %i.bra = sdiv i32 %i.bqz, 1000000
  %i.brb = sext i32 %i.bra to i64
  %i.brc = add nsw i64 %i.brb, %i.bqv
  %i.brd = srem i32 %i.bqz, 1000000
  %i.bre = getelementptr i8, ptr %i.bkp, i64 1384
  store i64 %i.brc, ptr %i.bre, align 8, !tbaa !285
  %.sroa.4.0..sroa_idx.i642 = getelementptr i8, ptr %i.bkp, i64 1392
  store i32 %i.brd, ptr %.sroa.4.0..sroa_idx.i642, align 8, !tbaa !29
  %i.brf = getelementptr i8, ptr %i.bkp, i64 1428
  %i.brg = load float, ptr %i.brf, align 4, !tbaa !306
  %i.brh = load float, ptr %i.blf, align 8, !tbaa !307
  %i.bri = fsub float %i.brg, %i.brh
  %i.brj = fpext float %i.bri to double
  %i.brk = fsub double %.2.i641, %i.bqj
  %i.brl = fdiv double %i.brj, %i.brk
  store double %i.brl, ptr %i.blj, align 8, !tbaa !308
  %i.brm = getelementptr i8, ptr %i.bkp, i64 1400 ; 2 uses
  %i.brn = load ptr, ptr %i.brm, align 8, !tbaa !309 ; 2 uses
  %.not.i.i643 = icmp eq ptr %i.brn, null
  br i1 %.not.i.i643, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.bro = getelementptr i8, ptr %i.bkp, i64 1416 ; 2 uses
  %i.brp = load ptr, ptr %i.bro, align 8, !tbaa !310
  %i.brq = tail call noundef double %i.brn(double noundef %i.bqj, ptr noundef %i.brp) #32, !inline_history !9
  %i.brr = getelementptr i8, ptr %i.bkp, i64 1432
  store double %i.brq, ptr %i.brr, align 8, !tbaa !311
  %i.brs = load ptr, ptr %i.brm, align 8, !tbaa !309
  %i.brt = load double, ptr %i.bqu, align 8, !tbaa !302
  %i.bru = load ptr, ptr %i.bro, align 8, !tbaa !310
  %i.brv = tail call noundef double %i.brs(double noundef %i.brt, ptr noundef %i.bru) #32, !inline_history !9
  br label %_ZN10ImPlotAxis20UpdateTransformCacheEv.exit.i644

bb.hb:                                            ; preds = %bb.gz
  %i.brw = getelementptr i8, ptr %i.bkp, i64 1432
  store double %i.bqj, ptr %i.brw, align 8, !tbaa !311
  br label %_ZN10ImPlotAxis20UpdateTransformCacheEv.exit.i644

_ZN10ImPlotAxis20UpdateTransformCacheEv.exit.i644: ; preds = %bb.hb, %bb.ha
  %.sink.i.i645 = phi double [ %.2.i641, %bb.hb ], [ %i.brv, %bb.ha ]
  %i.brx = getelementptr i8, ptr %i.bkp, i64 1440
  store double %.sink.i.i645, ptr %i.brx, align 8, !tbaa !312
  br label %_ZN10ImPlotAxis6SetMaxEdb.exit646

_ZN10ImPlotAxis6SetMaxEdb.exit646:                ; preds = %_ZNK10ImPlotAxis12PixelsToPlotEf.exit622, %bb.gr, %.preheader, %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i613, %_ZN10ImPlotAxis20UpdateTransformCacheEv.exit.i644, %bb.gy, %_ZNK10ImPlotAxis11IsLockedMaxEv.exit.i636, %bb.gx, %_ZN10ImPlotAxis6SetMinEdb.exit634, %_ZNK10ImPlotAxis13IsInputLockedEv.exit616
  %.15 = phi i1 [ true, %_ZN10ImPlotAxis20UpdateTransformCacheEv.exit.i644 ], [ %.14744, %_ZNK10ImPlotAxis13IsInputLockedEv.exit616 ], [ %.14744, %bb.gr ], [ true, %_ZN10ImPlotAxis6SetMinEdb.exit634 ], [ true, %bb.gx ], [ true, %_ZNK10ImPlotAxis11IsLockedMaxEv.exit.i636 ], [ true, %bb.gy ], [ %.14744, %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i613 ], [ %.14744, %.preheader ], [ true, %_ZNK10ImPlotAxis12PixelsToPlotEf.exit622 ] ; 2 uses
  %indvars.iv.next761 = add nuw nsw i64 %indvars.iv760, 1 ; 2 uses
  %exitcond762.not = icmp eq i64 %indvars.iv.next761, 3
  br i1 %exitcond762.not, label %bb.gq, label %.preheader, !llvm.loop !565

bb.hc:                                            ; preds = %bb.gq
  %i.bry = load i32, ptr %i.ht, align 8, !tbaa !567 ; 2 uses
  %i.brz = load i32, ptr %i.bck, align 8, !tbaa !577 ; 2 uses
  %i.bsa = and i32 %i.brz, %i.bry
  %i.bsb = icmp eq i32 %i.bsa, %i.brz
  br i1 %i.bsb, label %bb.hd, label %bb.hf

bb.hd:                                            ; preds = %bb.hc
  %i.bsc = load i32, ptr %i.bco, align 4, !tbaa !578 ; 2 uses
  %i.bsd = and i32 %i.bsc, %i.bry
  %i.bse = icmp eq i32 %i.bsd, %i.bsc
  br i1 %i.bse, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %bb.hd, %bb.gq
  %i.bsf = getelementptr inbounds nuw i8, ptr %i.e, i64 1512
  store i8 0, ptr %i.bsf, align 8, !tbaa !214
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %bb.hd, %bb.hc
  store i8 0, ptr %i.lh, align 2, !tbaa !361
  %i.bsg = getelementptr inbounds nuw i8, ptr %0, i64 2555
  store i8 0, ptr %i.bsg, align 1, !tbaa !378
  br label %bb.hx

bb.hg:                                            ; preds = %bb.ge
  %i.bsh = getelementptr inbounds nuw i8, ptr %i.e, i64 1480
  %i.bsi = load i32, ptr %i.bsh, align 8, !tbaa !581
  %i.bsj = sext i32 %i.bsi to i64
  %i.bsk = getelementptr inbounds i8, ptr %i.lt, i64 %i.bsj
  %i.bsl = load i8, ptr %i.bsk, align 1, !tbaa !262, !range !263, !noundef !264
  %i.bsm = trunc nuw i8 %i.bsl to i1
  br i1 %i.bsm, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  store i8 0, ptr %i.lh, align 2, !tbaa !361
  %i.bsn = getelementptr inbounds nuw i8, ptr %0, i64 2555
  store i8 0, ptr %i.bsn, align 1, !tbaa !378
  %i.bso = getelementptr inbounds nuw i8, ptr %i.e, i64 1512
  store i8 0, ptr %i.bso, align 8, !tbaa !214
  br label %bb.hx

bb.hi:                                            ; preds = %bb.hg
  %foldExtExtBinop = fmul <2 x float> %i.bcu, %i.bcu
  %i.bsp = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bsq = extractelement <2 x float> %i.bcu, i64 0 ; 2 uses
  %i.bsr = tail call noundef float @llvm.fmuladd.f32(float %i.bsq, float %i.bsq, float %i.bsp)
  %i.bss = fcmp ogt float %i.bsr, 4.000000e+00
  br i1 %i.bss, label %bb.hj, label %bb.hw

bb.hj:                                            ; preds = %bb.hi
  %i.bst = tail call noundef zeroext i1 @_ZNK10ImPlotPlot13IsInputLockedEv(ptr noundef nonnull align 8 dereferenceable(2557) %0)
  br i1 %i.bst, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %bb.hj
  tail call void @_ZN5ImGui14SetMouseCursorEi(i32 noundef 10) #32
  %i.bsu = getelementptr inbounds nuw i8, ptr %i.e, i64 1512
  store i8 0, ptr %i.bsu, align 8, !tbaa !214
  %i.bsv = getelementptr inbounds nuw i8, ptr %0, i64 2555
  store i8 0, ptr %i.bsv, align 1, !tbaa !378
  br label %bb.hx

bb.hl:                                            ; preds = %bb.hj
  %i.bsw = load i32, ptr %i.ht, align 8, !tbaa !567 ; 2 uses
  %i.bsx = load i32, ptr %i.bck, align 8, !tbaa !577 ; 2 uses
  %i.bsy = and i32 %i.bsx, %i.bsw
  %i.bsz = icmp eq i32 %i.bsy, %i.bsx
  br i1 %i.bsz, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.bta = tail call fastcc noundef zeroext i1 @_ZN6ImPlotL18AllAxesInputLockedEP10ImPlotAxisi(ptr noundef %i.bk)
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  %i.btb = phi i1 [ true, %bb.hl ], [ %i.bta, %bb.hm ]
  %i.btc = load i32, ptr %i.bco, align 4, !tbaa !578 ; 2 uses
  %i.btd = and i32 %i.btc, %i.bsw
  %i.bte = icmp eq i32 %i.btd, %i.btc
  br i1 %i.bte, label %bb.hp, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.btf = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.btg = tail call fastcc noundef zeroext i1 @_ZN6ImPlotL18AllAxesInputLockedEP10ImPlotAxisi(ptr noundef %i.btf)
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.hn
  %i.bth = phi i1 [ true, %bb.hn ], [ %i.btg, %bb.ho ]
  br i1 %i.btb, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  %i.bti = load float, ptr %i.g, align 8, !tbaa !358
  %i.btj = getelementptr inbounds nuw i8, ptr %0, i64 2496
  %i.btk = load float, ptr %i.btj, align 8, !tbaa !359
  br label %bb.hs

bb.hr:                                            ; preds = %bb.hp
  %i.btl = load float, ptr %i.bcf, align 8, !tbaa !579 ; 4 uses
  %i.btm = load float, ptr %i.bcg, align 8, !tbaa !376 ; 4 uses
  %i.btn = fcmp olt float %i.btl, %i.btm
  %i.bto = select i1 %i.btn, float %i.btl, float %i.btm
  %i.btp = fcmp oge float %i.btl, %i.btm
  %i.btq = select i1 %i.btp, float %i.btl, float %i.btm
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.hq
  %i.btr = phi float [ %i.bti, %bb.hq ], [ %i.bto, %bb.hr ]
  %i.bts = phi float [ %i.btk, %bb.hq ], [ %i.btq, %bb.hr ]
  %i.btt = getelementptr inbounds nuw i8, ptr %0, i64 2520
  br i1 %i.bth, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  %i.btu = getelementptr inbounds nuw i8, ptr %0, i64 2492
  %i.btv = load float, ptr %i.btu, align 4, !tbaa !373 ; 2 uses
  %i.btw = getelementptr inbounds nuw i8, ptr %0, i64 2500
  %i.btx = load float, ptr %i.btw, align 4, !tbaa !374
  br label %bb.hv

bb.hu:                                            ; preds = %bb.hs
  %i.bty = load float, ptr %i.bch, align 4, !tbaa !580 ; 4 uses
  %i.btz = load float, ptr %i.bci, align 4, !tbaa !377 ; 4 uses
  %i.bua = fcmp olt float %i.bty, %i.btz
  %i.bub = select i1 %i.bua, float %i.bty, float %i.btz
  %i.buc = fcmp oge float %i.bty, %i.btz
  %i.bud = select i1 %i.buc, float %i.bty, float %i.btz
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 2492
  %.pre788 = load float, ptr %.phi.trans.insert, align 4, !tbaa !173
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %bb.ht
  %i.bue = phi float [ %i.btv, %bb.ht ], [ %.pre788, %bb.hu ]
  %.sink = phi float [ %i.btv, %bb.ht ], [ %i.bub, %bb.hu ]
  %i.buf = phi float [ %i.btx, %bb.ht ], [ %i.bud, %bb.hu ]
  %i.bug = load <4 x float>, ptr %i.g, align 8
  %i.buh = insertelement <4 x float> poison, float %i.btr, i64 0
  %i.bui = insertelement <4 x float> %i.buh, float %.sink, i64 1
  %i.buj = insertelement <4 x float> %i.bui, float %i.bts, i64 2
  %i.buk = insertelement <4 x float> %i.buj, float %i.buf, i64 3
  %i.bul = insertelement <4 x float> %i.bug, float %i.bue, i64 1
  %i.bum = shufflevector <4 x float> %i.bul, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bun = fsub <4 x float> %i.buk, %i.bum
  store <4 x float> %i.bun, ptr %i.btt, align 8, !tbaa !41
  %i.buo = getelementptr inbounds nuw i8, ptr %0, i64 2555
  store i8 1, ptr %i.buo, align 1, !tbaa !378
  br label %bb.hx

bb.hw:                                            ; preds = %bb.hi
  %i.bup = getelementptr inbounds nuw i8, ptr %0, i64 2555
  store i8 0, ptr %i.bup, align 1, !tbaa !378
  br label %bb.hx

bb.hx:                                            ; preds = %.loopexit, %bb.hh, %bb.hk, %bb.hv, %bb.hw, %bb.hf, %bb.bh, %bb.bi
  %.0 = phi i1 [ false, %bb.bh ], [ false, %bb.bi ], [ %.11, %.loopexit ], [ %.15, %bb.hf ], [ %.11, %bb.hh ], [ %.11, %bb.hk ], [ %.11, %bb.hv ], [ %.11, %bb.hw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret i1 %.0
}

declare noundef nonnull align 8 dereferenceable(3032) ptr @_ZN5ImGui5GetIOEv() local_unnamed_addr #5

declare <2 x float> @_ZN5ImGui17GetMouseDragDeltaEif(i32 noundef, float noundef) local_unnamed_addr #5

declare void @_ZN5ImGui14SetMouseCursorEi(i32 noundef) local_unnamed_addr #5

declare void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10ImPlotPlot13IsInputLockedEv(ptr noundef nonnull align 8 dereferenceable(2557) %0) local_unnamed_addr #24 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.b = load i8, ptr %i.a, align 4, !tbaa !299, !range !263, !noundef !264
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNK10ImPlotAxis13IsInputLockedEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 391
  %i.e = load i8, ptr %i.d, align 1, !tbaa !295, !range !263, !noundef !264
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp eq i32 %i.h, 1
  %i.j = select i1 %i.f, i1 %i.i, i1 false
  br i1 %i.j, label %_ZNK10ImPlotAxis13IsInputLockedEv.exit.thread, label %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i

_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i:         ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !300  ; 2 uses
  %i.m = and i32 %i.l, 49152
  %or.cond.i = icmp eq i32 %i.m, 49152
  %i.n = and i32 %i.l, 2048
  %i.o = icmp ne i32 %i.n, 0
  %or.cond = or i1 %or.cond.i, %i.o
  br i1 %or.cond, label %_ZNK10ImPlotAxis13IsInputLockedEv.exit.thread, label %.thread
end_hunk_5
begin_hunk_6_@_ZN6ImPlot9DragPointEiPdS0_RK6ImVec4fiPbS4_S4_:bb.a
  tail call void @_ZN6ImPlot11SetupFinishEv()
  %.pre.i = load ptr, ptr %i.l, align 8, !tbaa !217
  br label %_ZN6ImPlotL9SetupLockEv.exit

_ZN6ImPlotL9SetupLockEv.exit:                     ; preds = %bb.c, %bb.d
  %i.m = phi ptr [ %.pre.i, %bb.d ], [ %i.g, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 2550
  store i8 1, ptr %i.n, align 2, !tbaa !384
  %i.o = and i32 %5, 2
  %.not65 = icmp eq i32 %i.o, 0
  br i1 %.not65, label %bb.e, label %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit

bb.e:                                             ; preds = %_ZN6ImPlotL9SetupLockEv.exit
  %i.p = load ptr, ptr @GImPlot, align 8, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !217  ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2551
  %i.t = load i8, ptr %i.s, align 1, !tbaa !362, !range !263, !noundef !264
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.f, label %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit

bb.f:                                             ; preds = %bb.e
  %i.v = load double, ptr %1, align 8, !tbaa !266 ; 10 uses
  %i.w = load double, ptr %2, align 8, !tbaa !266 ; 10 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 2448
  %i.z = load i32, ptr %i.y, align 8, !tbaa !418
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [376 x i8], ptr %i.x, i64 %i.aa ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 2452
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !419
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [376 x i8], ptr %i.x, i64 %i.ae ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !300
  %i.ai = and i32 %i.ah, 4096
  %.not16.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not16.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !269
  %i.al = fcmp ult double %i.w, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.an = load double, ptr %i.am, align 8
  %i.ao = fcmp ugt double %i.w, %i.an
  %.not19.i.i = select i1 %i.al, i1 true, i1 %i.ao
  %i.ap = tail call double @llvm.fabs.f64(double %i.v)
  %or.cond.i.i.i = fcmp ugt double %i.ap, f0x7FEFFFFFFFFFFFFF
  %or.cond.i.i = or i1 %or.cond.i.i.i, %.not19.i.i
  br i1 %or.cond.i.i, label %_ZN10ImPlotAxis13ExtendFitWithERS_dd.exit.i, label %bb.i

bb.h:                                             ; preds = %bb.f
  %.old.i.i = tail call double @llvm.fabs.f64(double %i.v)
  %or.cond.i.old.i.i = fcmp ugt double %.old.i.i, f0x7FEFFFFFFFFFFFFF
  br i1 %or.cond.i.old.i.i, label %_ZN10ImPlotAxis13ExtendFitWithERS_dd.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !303
  %i.as = fcmp ult double %i.v, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.au = load double, ptr %i.at, align 8
  %i.av = fcmp ugt double %i.v, %i.au
  %or.cond15.i.i = select i1 %i.as, i1 true, i1 %i.av
  br i1 %or.cond15.i.i, label %_ZN10ImPlotAxis13ExtendFitWithERS_dd.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ab, i64 40 ; 2 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !479 ; 2 uses
  %i.ay = fcmp olt double %i.v, %i.ax
  %..i.i = select i1 %i.ay, double %i.v, double %i.ax
  store double %..i.i, ptr %i.aw, align 8, !tbaa !479
  %i.az = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 2 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !480 ; 2 uses
  %i.bb = fcmp ogt double %i.v, %i.ba
  %i.bc = select i1 %i.bb, double %i.v, double %i.ba
  store double %i.bc, ptr %i.az, align 8, !tbaa !480
  br label %_ZN10ImPlotAxis13ExtendFitWithERS_dd.exit.i

_ZN10ImPlotAxis13ExtendFitWithERS_dd.exit.i:      ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !300
  %i.bf = and i32 %i.be, 4096
  %.not16.i12.i = icmp eq i32 %i.bf, 0
  br i1 %.not16.i12.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN10ImPlotAxis13ExtendFitWithERS_dd.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !269
  %i.bi = fcmp ult double %i.v, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.bk = load double, ptr %i.bj, align 8
  %i.bl = fcmp ugt double %i.v, %i.bk
  %.not19.i13.i = select i1 %i.bi, i1 true, i1 %i.bl
  %i.bm = tail call double @llvm.fabs.f64(double %i.w)
  %or.cond.i.i14.i = fcmp ugt double %i.bm, f0x7FEFFFFFFFFFFFFF
  %or.cond.i15.i = or i1 %or.cond.i.i14.i, %.not19.i13.i
  br i1 %or.cond.i15.i, label %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit, label %bb.m

bb.l:                                             ; preds = %_ZN10ImPlotAxis13ExtendFitWithERS_dd.exit.i
  %.old.i18.i = tail call double @llvm.fabs.f64(double %i.w)
  %or.cond.i.old.i19.i = fcmp ugt double %.old.i18.i, f0x7FEFFFFFFFFFFFFF
  br i1 %or.cond.i.old.i19.i, label %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !303
  %i.bp = fcmp ult double %i.w, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.br = load double, ptr %i.bq, align 8
  %i.bs = fcmp ugt double %i.w, %i.br
  %or.cond15.i16.i = select i1 %i.bp, i1 true, i1 %i.bs
  br i1 %or.cond15.i16.i, label %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %i.af, i64 40 ; 2 uses
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !479 ; 2 uses
  %i.bv = fcmp olt double %i.w, %i.bu
  %..i17.i = select i1 %i.bv, double %i.w, double %i.bu
  store double %..i17.i, ptr %i.bt, align 8, !tbaa !479
  %i.bw = getelementptr inbounds nuw i8, ptr %i.af, i64 48 ; 2 uses
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !480 ; 2 uses
  %i.by = fcmp ogt double %i.w, %i.bx
  %i.bz = select i1 %i.by, double %i.w, double %i.bx
  store double %i.bz, ptr %i.bw, align 8, !tbaa !480
  br label %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit

_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit:        ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.e, %_ZN6ImPlotL9SetupLockEv.exit
  %i.ca = and i32 %5, 4
  %.not66 = icmp eq i32 %i.ca, 0
  %i.cb = and i32 %5, 1
  %.not67 = icmp eq i32 %i.cb, 0
  %i.cc = and i32 %5, 8
  %.not68 = icmp eq i32 %i.cc, 0
  %i.cd = fcmp ole float %4, 4.000000e+00
  %i.ce = select i1 %i.cd, float 4.000000e+00, float %4
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.val = load float, ptr %i.cf, align 4, !tbaa !46
  %i.cg = fcmp oeq float %.val, -1.000000e+00
  br i1 %i.cg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit
  %i.ch = tail call noundef nonnull align 4 dereferenceable(16) ptr @_ZN5ImGui17GetStyleColorVec4Ei(i32 noundef 0) #32
  br label %bb.p

bb.p:                                             ; preds = %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit, %bb.o
  %i.ci = phi ptr [ %i.ch, %bb.o ], [ %3, %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %i.ci, i64 16, i1 false), !tbaa.struct !314
  %i.cj = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %10) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  %i.ck = load double, ptr %1, align 8, !tbaa !266
  %i.cl = load double, ptr %2, align 8, !tbaa !266
  %i.cm = call <2 x float> @_ZN6ImPlot12PlotToPixelsEddii(double noundef %i.ck, double noundef %i.cl, i32 noundef -1, i32 noundef -1) ; 2 uses
  store <2 x float> %i.cm, ptr %11, align 8
  %i.cn = load ptr, ptr @GImGui, align 8, !tbaa !48
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 5184
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !228 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 206
  store i8 1, ptr %i.cq, align 2, !tbaa !445
  %i.cr = call noundef i32 @_ZN11ImGuiWindow5GetIDEi(ptr noundef nonnull align 8 dereferenceable(1077) %i.cp, i32 noundef %0) #32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  %i.cs = shufflevector <2 x float> %i.cm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.ct = insertelement <4 x float> poison, float %i.ce, i64 0
  %i.cu = shufflevector <4 x float> %i.ct, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %i.cv = shufflevector <4 x float> %i.cs, <4 x float> %i.cu, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 3 uses
  %i.cw = shufflevector <4 x float> %i.cs, <4 x float> %i.cv, <4 x i32> <i32 6, i32 6, i32 0, i32 1> ; 2 uses
  %i.cx = fsub <4 x float> %i.cv, %i.cw
  %i.cy = fadd <4 x float> %i.cv, %i.cw
  %i.cz = shufflevector <4 x float> %i.cx, <4 x float> %i.cy, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.cz, ptr %12, align 16, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i8 0, ptr %i.a, align 1, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i8 0, ptr %i.b, align 1, !tbaa !262
  call void @_ZN5ImGui11KeepAliveIDEj(i32 noundef %i.cr) #32
  br i1 %.not66, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.da = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %12, i32 noundef %i.cr, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 0) #32
  %.not46 = icmp eq ptr %6, null
  br i1 %.not46, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.db = zext i1 %i.da to i8
  store i8 %i.db, ptr %6, align 1, !tbaa !262
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.not47 = icmp eq ptr %7, null
  br i1 %.not47, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dc = load i8, ptr %i.a, align 1, !tbaa !262, !range !263, !noundef !264
  store i8 %i.dc, ptr %7, align 1, !tbaa !262
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.not48 = icmp eq ptr %8, null
  %.pre70 = load i8, ptr %i.b, align 1, !tbaa !262 ; 2 uses
  br i1 %.not48, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i8 %.pre70, ptr %8, align 1, !tbaa !262
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.dd = trunc nuw i8 %.pre70 to i1
  br i1 %i.dd, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  %i.de = call noundef zeroext i1 @_ZN5ImGui15IsMouseDraggingEif(i32 noundef 0, float noundef -1.000000e+00) #32
  br i1 %i.de, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.df = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 80
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !217 ; 2 uses
  %.not.i = icmp eq ptr %i.dh, null
  br i1 %.not.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.di = call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.155) #32 ; 0 uses
  %.pre.i51 = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i51, i64 80
  %.pre2.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !217
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dj = phi ptr [ %.pre2.i, %bb.z ], [ %i.dh, %bb.y ] ; 2 uses
  %i.dk = phi ptr [ %.pre.i51, %bb.z ], [ %i.df, %bb.y ]
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 2550
  %i.dm = load i8, ptr %i.dl, align 2, !tbaa !384, !range !263, !noundef !264
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %_ZN6ImPlot15GetPlotMousePosEii.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 80
  call void @_ZN6ImPlot11SetupFinishEv()
  %.pre.i.i = load ptr, ptr %i.do, align 8, !tbaa !217
  br label %_ZN6ImPlot15GetPlotMousePosEii.exit

_ZN6ImPlot15GetPlotMousePosEii.exit:              ; preds = %bb.aa, %bb.ab
  %i.dp = phi ptr [ %.pre.i.i, %bb.ab ], [ %i.dj, %bb.aa ]
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 2550
  store i8 1, ptr %i.dq, align 2, !tbaa !384
  %i.dr = call <2 x float> @_ZN5ImGui11GetMousePosEv() #32 ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.dr, i64 0
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %i.dr, i64 1
  %i.ds = call { double, double } @_ZN6ImPlot12PixelsToPlotEffii(float noundef %.sroa.0.0.vec.extract.i, float noundef %.sroa.0.4.vec.extract.i, i32 noundef -1, i32 noundef -1)
  %i.dt = extractvalue { double, double } %i.ds, 0
  store double %i.dt, ptr %1, align 8, !tbaa !266
  %i.du = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 80
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !217 ; 2 uses
  %.not.i52 = icmp eq ptr %i.dw, null
  br i1 %.not.i52, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZN6ImPlot15GetPlotMousePosEii.exit
  %i.dx = call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.155) #32 ; 0 uses
  %.pre.i56 = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 2 uses
  %.phi.trans.insert.i57 = getelementptr inbounds nuw i8, ptr %.pre.i56, i64 80
  %.pre2.i58 = load ptr, ptr %.phi.trans.insert.i57, align 8, !tbaa !217
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZN6ImPlot15GetPlotMousePosEii.exit
  %i.dy = phi ptr [ %.pre2.i58, %bb.ac ], [ %i.dw, %_ZN6ImPlot15GetPlotMousePosEii.exit ] ; 2 uses
  %i.dz = phi ptr [ %.pre.i56, %bb.ac ], [ %i.du, %_ZN6ImPlot15GetPlotMousePosEii.exit ]
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 2550
  %i.eb = load i8, ptr %i.ea, align 2, !tbaa !384, !range !263, !noundef !264
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %_ZN6ImPlot15GetPlotMousePosEii.exit59, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 80
  call void @_ZN6ImPlot11SetupFinishEv()
  %.pre.i.i53 = load ptr, ptr %i.ed, align 8, !tbaa !217
  br label %_ZN6ImPlot15GetPlotMousePosEii.exit59

_ZN6ImPlot15GetPlotMousePosEii.exit59:            ; preds = %bb.ad, %bb.ae
  %i.ee = phi ptr [ %.pre.i.i53, %bb.ae ], [ %i.dy, %bb.ad ]
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 2550
  store i8 1, ptr %i.ef, align 2, !tbaa !384
  %i.eg = call <2 x float> @_ZN5ImGui11GetMousePosEv() #32 ; 2 uses
  %.sroa.0.0.vec.extract.i54 = extractelement <2 x float> %i.eg, i64 0
  %.sroa.0.4.vec.extract.i55 = extractelement <2 x float> %i.eg, i64 1
  %i.eh = call { double, double } @_ZN6ImPlot12PixelsToPlotEffii(float noundef %.sroa.0.0.vec.extract.i54, float noundef %.sroa.0.4.vec.extract.i55, i32 noundef -1, i32 noundef -1)
  %i.ei = extractvalue { double, double } %i.eh, 1
  store double %i.ei, ptr %2, align 8, !tbaa !266
  br label %.thread

.thread:                                          ; preds = %bb.p, %_ZN6ImPlot15GetPlotMousePosEii.exit59, %bb.x, %bb.w
  %.0 = phi i1 [ true, %_ZN6ImPlot15GetPlotMousePosEii.exit59 ], [ false, %bb.x ], [ false, %bb.w ], [ false, %bb.p ] ; 2 uses
  %i.ej = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 80 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !217 ; 2 uses
  %.not.i60 = icmp eq ptr %i.el, null
  br i1 %.not.i60, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.thread
  %i.em = call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.186) #32 ; 0 uses
  %.pre.i62 = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 2 uses
  %.phi.trans.insert.i63 = getelementptr inbounds nuw i8, ptr %.pre.i62, i64 80
  %.pre3.i = load ptr, ptr %.phi.trans.insert.i63, align 8, !tbaa !217
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.thread
  %i.en = phi ptr [ %.pre3.i, %bb.af ], [ %i.el, %.thread ] ; 2 uses
  %i.eo = phi ptr [ %.pre.i62, %bb.af ], [ %i.ej, %.thread ]
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 2550
  %i.eq = load i8, ptr %i.ep, align 2, !tbaa !384, !range !263, !noundef !264
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %_ZN6ImPlot16PushPlotClipRectEf.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 80
  call void @_ZN6ImPlot11SetupFinishEv()
  %.pre.i.i61 = load ptr, ptr %i.es, align 8, !tbaa !217
  br label %_ZN6ImPlot16PushPlotClipRectEf.exit

_ZN6ImPlot16PushPlotClipRectEf.exit:              ; preds = %bb.ag, %bb.ah
  %i.et = phi ptr [ %.pre.i.i61, %bb.ah ], [ %i.en, %bb.ag ]
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 2550
  store i8 1, ptr %i.eu, align 2, !tbaa !384
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %i.ev = load ptr, ptr %i.ek, align 8, !tbaa !217
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 2488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %i.ew, i64 16, i1 false), !tbaa.struct !314
  %i.ex = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.ey = load <2 x float>, ptr %i.ex, align 4, !tbaa !41
  %i.ez = fadd <2 x float> %i.ey, zeroinitializer
  store <2 x float> %i.ez, ptr %i.ex, align 4, !tbaa !41
  call void @_ZN5ImGui12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %i.ex, i1 noundef zeroext true) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %i.fa = call noundef ptr @_ZN5ImGui17GetWindowDrawListEv() #32
  %i.fb = load i8, ptr %i.a, align 1, !tbaa !262, !range !263, !noundef !264
  %i.fc = trunc nuw i8 %i.fb to i1
  %i.fd = load i8, ptr %i.b, align 1, !range !263
  %i.fe = trunc nuw i8 %i.fd to i1
  %or.cond = select i1 %i.fc, i1 true, i1 %i.fe
  %or.cond3 = and i1 %.not67, %or.cond
  br i1 %or.cond3, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZN6ImPlot16PushPlotClipRectEf.exit
  call void @_ZN5ImGui14SetMouseCursorEi(i32 noundef 7) #32
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN6ImPlot16PushPlotClipRectEf.exit, %bb.ai
  %or.cond5 = and i1 %.not68, %.0
  br i1 %or.cond5, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ff = load double, ptr %1, align 8, !tbaa !266
  %i.fg = load double, ptr %2, align 8, !tbaa !266
  %i.fh = call <2 x float> @_ZN6ImPlot12PlotToPixelsEddii(double noundef %i.ff, double noundef %i.fg, i32 noundef -1, i32 noundef -1)
  store <2 x float> %i.fh, ptr %11, align 8, !tbaa !41
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(224) %i.fa, ptr noundef nonnull align 4 dereferenceable(8) %11, float noundef %4, i32 noundef %i.cj, i32 noundef 0) #32
  %i.fi = load ptr, ptr @GImPlot, align 8, !tbaa !35
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 80 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !217 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 2550
  %i.fm = load i8, ptr %i.fl, align 2, !tbaa !384, !range !263, !noundef !264
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %_ZN6ImPlot15PopPlotClipRectEv.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_ZN6ImPlot11SetupFinishEv()
  %.pre.i.i64 = load ptr, ptr %i.fj, align 8, !tbaa !217
  br label %_ZN6ImPlot15PopPlotClipRectEv.exit

_ZN6ImPlot15PopPlotClipRectEv.exit:               ; preds = %bb.al, %bb.am
  %i.fo = phi ptr [ %.pre.i.i64, %bb.am ], [ %i.fk, %bb.al ]
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 2550
  store i8 1, ptr %i.fp, align 2, !tbaa !384
  call void @_ZN5ImGui11PopClipRectEv() #32
  call void @_ZN5ImGui5PopIDEv() #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  ret i1 %.0
}

declare void @_ZN5ImGui6PushIDEPKc(ptr noundef) local_unnamed_addr #5

declare noundef i32 @_ZN11ImGuiWindow5GetIDEi(ptr noundef nonnull align 8 dereferenceable(1077), i32 noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN5ImGui15IsMouseDraggingEif(i32 noundef, float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN6ImPlot15GetPlotDrawListEv() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5ImGui17GetWindowDrawListEv() #32
  ret ptr %i.a
}

end_hunk_6
begin_hunk_7_@_ZN6ImPlot8DragRectEiPdS0_S0_S0_RK6ImVec4iPbS4_S4_:bb.a
bb.v:                                             ; preds = %bb.u
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ai, i64 40 ; 2 uses
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !479 ; 2 uses
  %i.do = fcmp olt double %i.ce, %i.dn
  %..i17.i264 = select i1 %i.do, double %i.ce, double %i.dn
  store double %..i17.i264, ptr %i.dm, align 8, !tbaa !479
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ai, i64 48 ; 2 uses
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !480 ; 2 uses
  %i.dr = fcmp ogt double %i.ce, %i.dq
  %i.ds = select i1 %i.dr, double %i.ce, double %i.dq
  store double %i.ds, ptr %i.dp, align 8, !tbaa !480
  br label %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit269

_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit269:     ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.e, %_ZN6ImPlotL9SetupLockEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store ptr %1, ptr %i.a, align 16, !tbaa !379
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %3, ptr %i.dt, align 8, !tbaa !379
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %3, ptr %i.du, align 16, !tbaa !379
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %i.dv, align 8, !tbaa !379
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store ptr %2, ptr %i.b, align 16, !tbaa !379
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.dw, align 8, !tbaa !379
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %4, ptr %i.dx, align 16, !tbaa !379
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %4, ptr %i.dy, align 8, !tbaa !379
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  %i.dz = load double, ptr %1, align 8, !tbaa !266
  %i.ea = load double, ptr %2, align 8, !tbaa !266
  %i.eb = tail call <2 x float> @_ZN6ImPlot12PlotToPixelsEddii(double noundef %i.dz, double noundef %i.ea, i32 noundef -1, i32 noundef -1) ; 7 uses
  store <2 x float> %i.eb, ptr %11, align 16, !tbaa !41
  %i.ec = load double, ptr %3, align 8, !tbaa !266
  %i.ed = load double, ptr %2, align 8, !tbaa !266
  %i.ee = tail call <2 x float> @_ZN6ImPlot12PlotToPixelsEddii(double noundef %i.ec, double noundef %i.ed, i32 noundef -1, i32 noundef -1) ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store <2 x float> %i.ee, ptr %i.ef, align 8, !tbaa !41
  %i.eg = load double, ptr %3, align 8, !tbaa !266
  %i.eh = load double, ptr %4, align 8, !tbaa !266
  %i.ei = tail call <2 x float> @_ZN6ImPlot12PlotToPixelsEddii(double noundef %i.eg, double noundef %i.eh, i32 noundef -1, i32 noundef -1) ; 6 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store <2 x float> %i.ei, ptr %i.ej, align 16, !tbaa !41
  %i.ek = load double, ptr %1, align 8, !tbaa !266
  %i.el = load double, ptr %4, align 8, !tbaa !266
  %i.em = tail call <2 x float> @_ZN6ImPlot12PlotToPixelsEddii(double noundef %i.ek, double noundef %i.el, i32 noundef -1, i32 noundef -1) ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  store <2 x float> %i.em, ptr %i.en, align 8, !tbaa !41
  %i.eo = and i32 %6, 4
  %.not357 = icmp eq i32 %i.eo, 0                 ; 5 uses
  %i.ep = and i32 %6, 1
  %.not358 = icmp eq i32 %i.ep, 0                 ; 4 uses
  %i.eq = and i32 %6, 8
  %.not359 = icmp eq i32 %i.eq, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  %i.er = load double, ptr %1, align 8, !tbaa !266
  %i.es = load double, ptr %3, align 8, !tbaa !266
  %i.et = fadd double %i.er, %i.es
  %i.eu = fmul double %i.et, 5.000000e-01
  %i.ev = load double, ptr %2, align 8, !tbaa !266
  %i.ew = load double, ptr %4, align 8, !tbaa !266
  %i.ex = fadd double %i.ev, %i.ew
  %i.ey = fmul double %i.ex, 5.000000e-01
  %i.ez = tail call <2 x float> @_ZN6ImPlot12PlotToPixelsEddii(double noundef %i.eu, double noundef %i.ey, i32 noundef -1, i32 noundef -1) ; 2 uses
  store <2 x float> %i.ez, ptr %12, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  %i.fa = extractelement <2 x float> %i.eb, i64 0 ; 3 uses
  %i.fb = extractelement <2 x float> %i.eb, i64 1 ; 3 uses
  %i.fc = extractelement <2 x float> %i.ei, i64 0
  %i.fd = fcmp olt <2 x float> %i.eb, %i.ei
  %i.fe = select <2 x i1> %i.fd, <2 x float> %i.eb, <2 x float> %i.ei ; 3 uses
  %i.ff = fcmp oge <2 x float> %i.eb, %i.ei
  %i.fg = select <2 x i1> %i.ff, <2 x float> %i.eb, <2 x float> %i.ei ; 3 uses
  store <2 x float> %i.fe, ptr %13, align 8, !tbaa !41
  %i.fh = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store <2 x float> %i.fg, ptr %i.fh, align 8, !tbaa !41
  %i.fi = extractelement <2 x float> %i.fe, i64 0 ; 2 uses
  %i.fj = fadd float %i.fi, -4.000000e+00
  %i.fk = extractelement <2 x float> %i.fe, i64 1 ; 2 uses
  %i.fl = fadd float %i.fk, -4.000000e+00
  %i.fm = extractelement <2 x float> %i.fg, i64 0 ; 2 uses
  %i.fn = fadd float %i.fm, 4.000000e+00
  %i.fo = extractelement <2 x float> %i.fg, i64 1 ; 2 uses
  %i.fp = fadd float %i.fo, 4.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  %i.fq = shufflevector <2 x float> %i.ez, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.fr = extractelement <2 x float> %i.ee, i64 0
  %i.fs = extractelement <2 x float> %i.ee, i64 1
  %i.ft = extractelement <2 x float> %i.em, i64 0
  %i.fu = extractelement <2 x float> %i.em, i64 1
  br i1 %.not358, label %bb.w, label %bb.y

bb.w:                                             ; preds = %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit269
  %i.fv = fcmp oeq float %i.fi, %i.fa
  %i.fw = fcmp oeq float %i.fk, %i.fb
  %or.cond354 = select i1 %i.fv, i1 %i.fw, i1 false
  br i1 %or.cond354, label %.thread350, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fx = fcmp oeq float %i.fm, %i.fa
  %i.fy = fcmp oeq float %i.fo, %i.fb
  %i.fz = select i1 %i.fx, i1 %i.fy, i1 false
  %cond.fr348 = freeze i1 %i.fz                   ; 2 uses
  %. = select i1 %cond.fr348, i32 6, i32 5
  %.451 = select i1 %cond.fr348, i32 5, i32 6
  br label %.thread350

.thread350:                                       ; preds = %bb.x, %bb.w
  %.sink = phi i32 [ 6, %bb.w ], [ %., %bb.x ]    ; 2 uses
  %i.ga = phi i32 [ 5, %bb.w ], [ %.451, %bb.x ]  ; 2 uses
  store i32 %.sink, ptr %i.c, align 16, !tbaa !29
  %i.gb = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !29
  %i.gc = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %.sink, ptr %i.gc, align 8, !tbaa !29
  %i.gd = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %i.ga, ptr %i.gd, align 4, !tbaa !29
  br label %bb.y

bb.y:                                             ; preds = %.thread350, %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit269
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  %i.ge = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.val = load float, ptr %i.ge, align 4, !tbaa !46
  %i.gf = fcmp oeq float %.val, -1.000000e+00
  br i1 %i.gf, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gg = tail call noundef nonnull align 4 dereferenceable(16) ptr @_ZN5ImGui17GetStyleColorVec4Ei(i32 noundef 0) #32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.gh = phi ptr [ %i.gg, %bb.z ], [ %5, %bb.y ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %14, ptr noundef nonnull align 4 dereferenceable(16) %i.gh, i64 16, i1 false), !tbaa.struct !314
  %i.gi = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %14) #32 ; 6 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %14, i64 12 ; 2 uses
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !46
  %i.gl = fmul float %i.gk, 2.500000e-01
  store float %i.gl, ptr %i.gj, align 4, !tbaa !46
  %i.gm = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %14) #32
  %i.gn = load ptr, ptr @GImGui, align 8, !tbaa !48
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 5184
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !228 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 206
  store i8 1, ptr %i.gq, align 2, !tbaa !445
  %i.gr = call noundef i32 @_ZN11ImGuiWindow5GetIDEi(ptr noundef nonnull align 8 dereferenceable(1077) %i.gp, i32 noundef %0) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  store i8 0, ptr %i.d, align 1, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #32
  store i8 0, ptr %i.e, align 1, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  %i.gs = fadd <4 x float> %i.fq, <float -4.000000e+00, float -4.000000e+00, float 4.000000e+00, float 4.000000e+00>
  store <4 x float> %i.gs, ptr %15, align 16, !tbaa !41
  call void @_ZN5ImGui11KeepAliveIDEj(i32 noundef %i.gr) #32
  br i1 %.not357, label %bb.ab, label %._crit_edge

._crit_edge:                                      ; preds = %bb.aa
  %.pre380 = load i8, ptr %i.e, align 1, !range !263
  br label %bb.ah

bb.ab:                                            ; preds = %bb.aa
  %i.gt = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %15, i32 noundef %i.gr, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef 0) #32
  %.not210 = icmp eq ptr %7, null
  br i1 %.not210, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gu = zext i1 %i.gt to i8
  store i8 %i.gu, ptr %7, align 1, !tbaa !262
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.not211 = icmp eq ptr %8, null
  br i1 %.not211, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gv = load i8, ptr %i.d, align 1, !tbaa !262, !range !263, !noundef !264
  store i8 %i.gv, ptr %8, align 1, !tbaa !262
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.not212 = icmp eq ptr %9, null
  %.pre381 = load i8, ptr %i.e, align 1, !range !263 ; 3 uses
  br i1 %.not212, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i8 %.pre381, ptr %9, align 1, !tbaa !262
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge, %bb.af, %bb.ag
  %i.gw = phi i8 [ %.pre380, %._crit_edge ], [ %.pre381, %bb.af ], [ %.pre381, %bb.ag ] ; 2 uses
  %i.gx = load i8, ptr %i.d, align 1, !tbaa !262, !range !263, !noundef !264
  %i.gy = trunc nuw i8 %i.gx to i1
  %i.gz = trunc nuw i8 %i.gw to i1
  %or.cond = select i1 %i.gy, i1 true, i1 %i.gz
  %or.cond3 = and i1 %.not358, %or.cond
  br i1 %or.cond3, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN5ImGui14SetMouseCursorEi(i32 noundef 2) #32
  %.pre382 = load i8, ptr %i.e, align 1, !tbaa !262
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.ha = phi i8 [ %i.gw, %bb.ah ], [ %.pre382, %bb.ai ]
  %i.hb = trunc nuw i8 %i.ha to i1
  br i1 %i.hb, label %bb.ak, label %.loopexit361

bb.ak:                                            ; preds = %bb.aj
  %i.hc = call noundef zeroext i1 @_ZN5ImGui15IsMouseDraggingEif(i32 noundef 0, float noundef -1.000000e+00) #32
  br i1 %i.hc, label %.preheader360.preheader, label %.loopexit361

.preheader360.preheader:                          ; preds = %bb.ak
  %i.hd = call noundef nonnull align 8 dereferenceable(3032) ptr @_ZN5ImGui5GetIOEv() #32 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 196
  %i.hf = load float, ptr %i.he, align 4, !tbaa !172
  %i.hg = fadd float %i.fa, %i.hf
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 200
  %i.hi = load float, ptr %i.hh, align 8, !tbaa !173
  %i.hj = fadd float %i.fb, %i.hi
  %i.hk = call { double, double } @_ZN6ImPlot12PixelsToPlotEffii(float noundef %i.hg, float noundef %i.hj, i32 noundef -1, i32 noundef -1) ; 2 uses
  %i.hl = extractvalue { double, double } %i.hk, 0
  %i.hm = extractvalue { double, double } %i.hk, 1
  store double %i.hm, ptr %2, align 8, !tbaa !266
  store double %i.hl, ptr %1, align 8, !tbaa !266
  %i.hn = call noundef nonnull align 8 dereferenceable(3032) ptr @_ZN5ImGui5GetIOEv() #32 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 196
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !172
  %i.hq = fadd float %i.fr, %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 200
  %i.hs = load float, ptr %i.hr, align 8, !tbaa !173
  %i.ht = fadd float %i.fs, %i.hs
  %i.hu = call { double, double } @_ZN6ImPlot12PixelsToPlotEffii(float noundef %i.hq, float noundef %i.ht, i32 noundef -1, i32 noundef -1) ; 2 uses
  %i.hv = extractvalue { double, double } %i.hu, 0
  %i.hw = extractvalue { double, double } %i.hu, 1
  store double %i.hw, ptr %2, align 8, !tbaa !266
  store double %i.hv, ptr %3, align 8, !tbaa !266
  %i.hx = call noundef nonnull align 8 dereferenceable(3032) ptr @_ZN5ImGui5GetIOEv() #32 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 196
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !172
  %i.ia = fadd float %i.fc, %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %11, i64 20
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !173
  %i.id = getelementptr inbounds nuw i8, ptr %i.hx, i64 200
  %i.ie = load float, ptr %i.id, align 8, !tbaa !173
  %i.if = fadd float %i.ic, %i.ie
  %i.ig = call { double, double } @_ZN6ImPlot12PixelsToPlotEffii(float noundef %i.ia, float noundef %i.if, i32 noundef -1, i32 noundef -1) ; 2 uses
  %i.ih = extractvalue { double, double } %i.ig, 0
  %i.ii = extractvalue { double, double } %i.ig, 1
  store double %i.ii, ptr %4, align 8, !tbaa !266
  store double %i.ih, ptr %3, align 8, !tbaa !266
  %i.ij = call noundef nonnull align 8 dereferenceable(3032) ptr @_ZN5ImGui5GetIOEv() #32 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 196
  %i.il = load float, ptr %i.ik, align 4, !tbaa !172
  %i.im = fadd float %i.ft, %i.il
  %i.in = getelementptr inbounds nuw i8, ptr %i.ij, i64 200
  %i.io = load float, ptr %i.in, align 8, !tbaa !173
  %i.ip = fadd float %i.fu, %i.io
  %i.iq = call { double, double } @_ZN6ImPlot12PixelsToPlotEffii(float noundef %i.im, float noundef %i.ip, i32 noundef -1, i32 noundef -1) ; 2 uses
  %i.ir = extractvalue { double, double } %i.iq, 0
  %i.is = extractvalue { double, double } %i.iq, 1
  store double %i.is, ptr %4, align 8, !tbaa !266
  store double %i.ir, ptr %1, align 8, !tbaa !266
  br label %.loopexit361

.loopexit361:                                     ; preds = %.preheader360.preheader, %bb.ak, %bb.aj
  %.0190 = phi i1 [ false, %bb.aj ], [ false, %bb.ak ], [ true, %.preheader360.preheader ]
  %.not216 = icmp eq ptr %7, null                 ; 3 uses
  %.not217 = icmp eq ptr %8, null                 ; 3 uses
  %.not218 = icmp eq ptr %9, null                 ; 3 uses
  br label %bb.an

bb.al:                                            ; preds = %bb.cq
  %i.it = call <2 x float> @_ZN5ImGui11GetMousePosEv() #32 ; 2 uses
  %.sroa.0325.0.vec.extract = extractelement <2 x float> %i.it, i64 0 ; 2 uses
  %i.iu = fcmp ult float %.sroa.0325.0.vec.extract, %i.fj
  br i1 %i.iu, label %_ZNK6ImRect8ContainsERK6ImVec2.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.sroa.0325.4.vec.extract = extractelement <2 x float> %i.it, i64 1 ; 2 uses
  %i.iv = fcmp oge float %.sroa.0325.4.vec.extract, %i.fl
  %i.iw = fcmp olt float %.sroa.0325.0.vec.extract, %i.fn
  %or.cond.i = select i1 %i.iv, i1 %i.iw, i1 false
  %i.ix = fcmp olt float %.sroa.0325.4.vec.extract, %i.fp
  %spec.select355 = select i1 %or.cond.i, i1 %i.ix, i1 false
  br label %_ZNK6ImRect8ContainsERK6ImVec2.exit

_ZNK6ImRect8ContainsERK6ImVec2.exit:              ; preds = %bb.am, %bb.al
  %i.iy = phi i1 [ false, %bb.al ], [ %spec.select355, %bb.am ] ; 2 uses
  %i.iz = call noundef zeroext i1 @_ZN5ImGui14IsMouseClickedEib(i32 noundef 0, i1 noundef zeroext false) #32
  %i.ja = call noundef zeroext i1 @_ZN5ImGui11IsMouseDownEi(i32 noundef 0) #32
  %or.cond13 = and i1 %.not357, %i.iy
  br i1 %or.cond13, label %bb.cr, label %bb.cx

bb.an:                                            ; preds = %.loopexit361, %bb.cq
  %indvars.iv = phi i64 [ 0, %.loopexit361 ], [ %indvars.iv.next, %bb.cq ] ; 9 uses
  %.1366 = phi i1 [ %.0190, %.loopexit361 ], [ %.4, %bb.cq ] ; 2 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv
  %i.jc = load <2 x float>, ptr %i.jb, align 8, !tbaa !41
  %i.jd = shufflevector <2 x float> %i.jc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 4 uses
  %i.je = fadd <4 x float> %i.jd, <float -4.000000e+00, float -4.000000e+00, float 4.000000e+00, float 4.000000e+00>
  store <4 x float> %i.je, ptr %15, align 16, !tbaa !41
  %i.jf = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.jg = add i32 %i.gr, %i.jf                    ; 2 uses
  %i.jh = add i32 %i.jg, 1                        ; 2 uses
  call void @_ZN5ImGui11KeepAliveIDEj(i32 noundef %i.jh) #32
  br i1 %.not357, label %bb.ao, label %._crit_edge383

._crit_edge383:                                   ; preds = %bb.an
  %.pre384 = load i8, ptr %i.e, align 1, !range !263
  br label %bb.au

bb.ao:                                            ; preds = %bb.an
  %i.ji = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %15, i32 noundef %i.jh, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef 0) #32
  br i1 %.not216, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jj = load i8, ptr %7, align 1, !tbaa !262, !range !263, !noundef !264
  %i.jk = zext i1 %i.ji to i8
  %i.jl = or i8 %i.jj, %i.jk
  store i8 %i.jl, ptr %7, align 1, !tbaa !262
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  br i1 %.not217, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jm = load i8, ptr %8, align 1, !tbaa !262, !range !263, !noundef !264
  %i.jn = trunc nuw i8 %i.jm to i1
  %i.jo = load i8, ptr %i.d, align 1, !range !263
  %i.jp = select i1 %i.jn, i8 1, i8 %i.jo
  store i8 %i.jp, ptr %8, align 1, !tbaa !262
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.pre385 = load i8, ptr %i.e, align 1, !range !263 ; 3 uses
  br i1 %.not218, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jq = load i8, ptr %9, align 1, !tbaa !262, !range !263, !noundef !264
  %i.jr = trunc nuw i8 %i.jq to i1
  %i.js = select i1 %i.jr, i8 1, i8 %.pre385
  store i8 %i.js, ptr %9, align 1, !tbaa !262
  br label %bb.au

bb.au:                                            ; preds = %._crit_edge383, %bb.as, %bb.at
  %i.jt = phi i8 [ %.pre384, %._crit_edge383 ], [ %.pre385, %bb.as ], [ %.pre385, %bb.at ] ; 2 uses
  %i.ju = load i8, ptr %i.d, align 1, !tbaa !262, !range !263, !noundef !264
  %i.jv = trunc nuw i8 %i.ju to i1
  %i.jw = trunc nuw i8 %i.jt to i1
  %or.cond5 = select i1 %i.jv, i1 true, i1 %i.jw
  %or.cond7 = and i1 %.not358, %or.cond5
  br i1 %or.cond7, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !29
  call void @_ZN5ImGui14SetMouseCursorEi(i32 noundef %i.jy) #32
  %.pre386 = load i8, ptr %i.e, align 1, !tbaa !262
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  %i.jz = phi i8 [ %i.jt, %bb.au ], [ %.pre386, %bb.av ]
  %i.ka = trunc nuw i8 %i.jz to i1
  br i1 %i.ka, label %bb.ax, label %bb.bf

bb.ax:                                            ; preds = %bb.aw
  %i.kb = call noundef zeroext i1 @_ZN5ImGui15IsMouseDraggingEif(i32 noundef 0, float noundef -1.000000e+00) #32
  br i1 %i.kb, label %bb.ay, label %bb.bf

bb.ay:                                            ; preds = %bb.ax
  %i.kc = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 80
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !217 ; 2 uses
  %.not.i = icmp eq ptr %i.ke, null
  br i1 %.not.i, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.kf = call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.155) #32 ; 0 uses
  %.pre.i275 = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i275, i64 80
  %.pre2.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !217
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.kg = phi ptr [ %.pre2.i, %bb.az ], [ %i.ke, %bb.ay ] ; 2 uses
  %i.kh = phi ptr [ %.pre.i275, %bb.az ], [ %i.kc, %bb.ay ]
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 2550
  %i.kj = load i8, ptr %i.ki, align 2, !tbaa !384, !range !263, !noundef !264
  %i.kk = trunc nuw i8 %i.kj to i1
  br i1 %i.kk, label %_ZN6ImPlot15GetPlotMousePosEii.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kh, i64 80
  call void @_ZN6ImPlot11SetupFinishEv()
  %.pre.i.i = load ptr, ptr %i.kl, align 8, !tbaa !217
  br label %_ZN6ImPlot15GetPlotMousePosEii.exit

_ZN6ImPlot15GetPlotMousePosEii.exit:              ; preds = %bb.ba, %bb.bb
  %i.km = phi ptr [ %.pre.i.i, %bb.bb ], [ %i.kg, %bb.ba ]
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 2550
  store i8 1, ptr %i.kn, align 2, !tbaa !384
  %i.ko = call <2 x float> @_ZN5ImGui11GetMousePosEv() #32 ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.ko, i64 0
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %i.ko, i64 1
  %i.kp = call { double, double } @_ZN6ImPlot12PixelsToPlotEffii(float noundef %.sroa.0.0.vec.extract.i, float noundef %.sroa.0.4.vec.extract.i, i32 noundef -1, i32 noundef -1)
  %i.kq = extractvalue { double, double } %i.kp, 0
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !379
  store double %i.kq, ptr %i.ks, align 8, !tbaa !266
  %i.kt = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 80
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !217 ; 2 uses
  %.not.i276 = icmp eq ptr %i.kv, null
  br i1 %.not.i276, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %_ZN6ImPlot15GetPlotMousePosEii.exit
  %i.kw = call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.155) #32 ; 0 uses
  %.pre.i280 = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 2 uses
  %.phi.trans.insert.i281 = getelementptr inbounds nuw i8, ptr %.pre.i280, i64 80
  %.pre2.i282 = load ptr, ptr %.phi.trans.insert.i281, align 8, !tbaa !217
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %_ZN6ImPlot15GetPlotMousePosEii.exit
  %i.kx = phi ptr [ %.pre2.i282, %bb.bc ], [ %i.kv, %_ZN6ImPlot15GetPlotMousePosEii.exit ] ; 2 uses
  %i.ky = phi ptr [ %.pre.i280, %bb.bc ], [ %i.kt, %_ZN6ImPlot15GetPlotMousePosEii.exit ]
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kx, i64 2550
  %i.la = load i8, ptr %i.kz, align 2, !tbaa !384, !range !263, !noundef !264
  %i.lb = trunc nuw i8 %i.la to i1
  br i1 %i.lb, label %_ZN6ImPlot15GetPlotMousePosEii.exit283, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ky, i64 80
  call void @_ZN6ImPlot11SetupFinishEv()
  %.pre.i.i277 = load ptr, ptr %i.lc, align 8, !tbaa !217
  br label %_ZN6ImPlot15GetPlotMousePosEii.exit283

_ZN6ImPlot15GetPlotMousePosEii.exit283:           ; preds = %bb.bd, %bb.be
  %i.ld = phi ptr [ %.pre.i.i277, %bb.be ], [ %i.kx, %bb.bd ]
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 2550
  store i8 1, ptr %i.le, align 2, !tbaa !384
  %i.lf = call <2 x float> @_ZN5ImGui11GetMousePosEv() #32 ; 2 uses
  %.sroa.0.0.vec.extract.i278 = extractelement <2 x float> %i.lf, i64 0
  %.sroa.0.4.vec.extract.i279 = extractelement <2 x float> %i.lf, i64 1
  %i.lg = call { double, double } @_ZN6ImPlot12PixelsToPlotEffii(float noundef %.sroa.0.0.vec.extract.i278, float noundef %.sroa.0.4.vec.extract.i279, i32 noundef -1, i32 noundef -1)
  %i.lh = extractvalue { double, double } %i.lg, 1
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !379
  store double %i.lh, ptr %i.lj, align 8, !tbaa !266
  br label %bb.bf

bb.bf:                                            ; preds = %_ZN6ImPlot15GetPlotMousePosEii.exit283, %bb.ax, %bb.aw
  %.2 = phi i1 [ true, %_ZN6ImPlot15GetPlotMousePosEii.exit283 ], [ %.1366, %bb.ax ], [ %.1366, %bb.aw ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.lk = and i64 %indvars.iv.next, 3
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.lk
  %i.lm = and i32 %i.jf, 1                        ; 2 uses
  %i.ln = icmp eq i32 %i.lm, 0                    ; 3 uses
  %i.lo = load <2 x float>, ptr %i.ll, align 8, !tbaa !41
  %i.lp = shufflevector <2 x float> %i.lo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.lq = fcmp olt <4 x float> %i.jd, %i.lp
  %i.lr = fcmp oge <4 x float> %i.jd, %i.lp
  %i.ls = shufflevector <4 x i1> %i.lq, <4 x i1> %i.lr, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.lt = select <4 x i1> %i.ls, <4 x float> %i.jd, <4 x float> %i.lp
  %i.lu = insertelement <4 x i1> poison, i1 %i.ln, i64 0
  %i.lv = shufflevector <4 x i1> %i.lu, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.lw = select <4 x i1> %i.lv, <4 x float> <float 4.000000e+00, float -4.000000e+00, float -4.000000e+00, float 4.000000e+00>, <4 x float> <float -4.000000e+00, float 4.000000e+00, float 4.000000e+00, float -4.000000e+00>
  %i.lx = fadd <4 x float> %i.lt, %i.lw
  store <4 x float> %i.lx, ptr %15, align 16, !tbaa !41
  %i.ly = add i32 %i.jg, 5                        ; 2 uses
  call void @_ZN5ImGui11KeepAliveIDEj(i32 noundef %i.ly) #32
  br i1 %.not357, label %bb.bg, label %._crit_edge387

._crit_edge387:                                   ; preds = %bb.bf
  %.pre388 = load i8, ptr %i.e, align 1, !range !263
  br label %bb.bm

bb.bg:                                            ; preds = %bb.bf
  %i.lz = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %15, i32 noundef %i.ly, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef 0) #32
  br i1 %.not216, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ma = load i8, ptr %7, align 1, !tbaa !262, !range !263, !noundef !264
  %i.mb = zext i1 %i.lz to i8
  %i.mc = or i8 %i.ma, %i.mb
  store i8 %i.mc, ptr %7, align 1, !tbaa !262
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  br i1 %.not217, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.md = load i8, ptr %8, align 1, !tbaa !262, !range !263, !noundef !264
  %i.me = trunc nuw i8 %i.md to i1
  %i.mf = load i8, ptr %i.d, align 1, !range !263
  %i.mg = select i1 %i.me, i8 1, i8 %i.mf
  store i8 %i.mg, ptr %8, align 1, !tbaa !262
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.pre389 = load i8, ptr %i.e, align 1, !range !263 ; 3 uses
  br i1 %.not218, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.mh = load i8, ptr %9, align 1, !tbaa !262, !range !263, !noundef !264
  %i.mi = trunc nuw i8 %i.mh to i1
  %i.mj = select i1 %i.mi, i8 1, i8 %.pre389
  store i8 %i.mj, ptr %9, align 1, !tbaa !262
  br label %bb.bm

bb.bm:                                            ; preds = %._crit_edge387, %bb.bk, %bb.bl
  %i.mk = phi i8 [ %.pre388, %._crit_edge387 ], [ %.pre389, %bb.bk ], [ %.pre389, %bb.bl ] ; 2 uses
  %i.ml = load i8, ptr %i.d, align 1, !tbaa !262, !range !263, !noundef !264
  %i.mm = trunc nuw i8 %i.ml to i1
  %i.mn = trunc nuw i8 %i.mk to i1
  %or.cond9 = select i1 %i.mm, i1 true, i1 %i.mn
  %or.cond11 = and i1 %.not358, %or.cond9
  br i1 %or.cond11, label %.sink.split.a, label %bb.bn

.sink.split.a:                                    ; preds = %bb.bm
  %.454 = add nuw nsw i32 %i.lm, 3
  call void @_ZN5ImGui14SetMouseCursorEi(i32 noundef %.454) #32
  %.pr355 = load i8, ptr %i.e, align 1, !tbaa !262
  br label %bb.bn

bb.bn:                                            ; preds = %.sink.split.a, %bb.bm
  %16 = phi i8 [ %.pr355, %.sink.split.a ], [ %i.mk, %bb.bm ]
  %i.mo = trunc nuw i8 %16 to i1
  br i1 %i.mo, label %bb.bo, label %bb.by

bb.bo:                                            ; preds = %bb.bn
  %i.mp = call noundef zeroext i1 @_ZN5ImGui15IsMouseDraggingEif(i32 noundef 0, float noundef -1.000000e+00) #32
  br i1 %i.mp, label %bb.bp, label %bb.by

bb.bp:                                            ; preds = %bb.bo
  %i.mq = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 3 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 80
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !217 ; 3 uses
  %.not.i292 = icmp eq ptr %i.ms, null            ; 2 uses
  br i1 %i.ln, label %bb.bq, label %bb.bu

bb.bq:                                            ; preds = %bb.bp
  br i1 %.not.i292, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.mt = call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.155) #32 ; 0 uses
  %.pre.i296 = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 2 uses
  %.phi.trans.insert.i297 = getelementptr inbounds nuw i8, ptr %.pre.i296, i64 80
  %.pre2.i298 = load ptr, ptr %.phi.trans.insert.i297, align 8, !tbaa !217
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.mu = phi ptr [ %.pre2.i298, %bb.br ], [ %i.ms, %bb.bq ] ; 2 uses
  %i.mv = phi ptr [ %.pre.i296, %bb.br ], [ %i.mq, %bb.bq ]
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mu, i64 2550
  %i.mx = load i8, ptr %i.mw, align 2, !tbaa !384, !range !263, !noundef !264
  %i.my = trunc nuw i8 %i.mx to i1
  br i1 %i.my, label %_ZN6ImPlot15GetPlotMousePosEii.exit299, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mv, i64 80
  call void @_ZN6ImPlot11SetupFinishEv()
  %.pre.i.i293 = load ptr, ptr %i.mz, align 8, !tbaa !217
  br label %_ZN6ImPlot15GetPlotMousePosEii.exit299

_ZN6ImPlot15GetPlotMousePosEii.exit299:           ; preds = %bb.bs, %bb.bt
  %i.na = phi ptr [ %.pre.i.i293, %bb.bt ], [ %i.mu, %bb.bs ]
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 2550
  store i8 1, ptr %i.nb, align 2, !tbaa !384
  %i.nc = call <2 x float> @_ZN5ImGui11GetMousePosEv() #32 ; 2 uses
  %.sroa.0.0.vec.extract.i294 = extractelement <2 x float> %i.nc, i64 0
  %.sroa.0.4.vec.extract.i295 = extractelement <2 x float> %i.nc, i64 1
  %i.nd = call { double, double } @_ZN6ImPlot12PixelsToPlotEffii(float noundef %.sroa.0.0.vec.extract.i294, float noundef %.sroa.0.4.vec.extract.i295, i32 noundef -1, i32 noundef -1)
  %i.ne = extractvalue { double, double } %i.nd, 1
  br label %.sink.split446

bb.bu:                                            ; preds = %bb.bp
  br i1 %.not.i292, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.nf = call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.155) #32 ; 0 uses
  %.pre.i304 = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 2 uses
  %.phi.trans.insert.i305 = getelementptr inbounds nuw i8, ptr %.pre.i304, i64 80
  %.pre2.i306 = load ptr, ptr %.phi.trans.insert.i305, align 8, !tbaa !217
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.ng = phi ptr [ %.pre2.i306, %bb.bv ], [ %i.ms, %bb.bu ] ; 2 uses
  %i.nh = phi ptr [ %.pre.i304, %bb.bv ], [ %i.mq, %bb.bu ]
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ng, i64 2550
  %i.nj = load i8, ptr %i.ni, align 2, !tbaa !384, !range !263, !noundef !264
  %i.nk = trunc nuw i8 %i.nj to i1
  br i1 %i.nk, label %_ZN6ImPlot15GetPlotMousePosEii.exit307, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nh, i64 80
  call void @_ZN6ImPlot11SetupFinishEv()
  %.pre.i.i301 = load ptr, ptr %i.nl, align 8, !tbaa !217
  br label %_ZN6ImPlot15GetPlotMousePosEii.exit307

_ZN6ImPlot15GetPlotMousePosEii.exit307:           ; preds = %bb.bw, %bb.bx
  %i.nm = phi ptr [ %.pre.i.i301, %bb.bx ], [ %i.ng, %bb.bw ]
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 2550
  store i8 1, ptr %i.nn, align 2, !tbaa !384
  %i.no = call <2 x float> @_ZN5ImGui11GetMousePosEv() #32 ; 2 uses
  %.sroa.0.0.vec.extract.i302 = extractelement <2 x float> %i.no, i64 0
  %.sroa.0.4.vec.extract.i303 = extractelement <2 x float> %i.no, i64 1
  %i.np = call { double, double } @_ZN6ImPlot12PixelsToPlotEffii(float noundef %.sroa.0.0.vec.extract.i302, float noundef %.sroa.0.4.vec.extract.i303, i32 noundef -1, i32 noundef -1)
  %i.nq = extractvalue { double, double } %i.np, 0
  br label %.sink.split446

.sink.split446:                                   ; preds = %_ZN6ImPlot15GetPlotMousePosEii.exit307, %_ZN6ImPlot15GetPlotMousePosEii.exit299
  %.sink450 = phi ptr [ %i.b, %_ZN6ImPlot15GetPlotMousePosEii.exit299 ], [ %i.a, %_ZN6ImPlot15GetPlotMousePosEii.exit307 ]
  %.sink447 = phi double [ %i.ne, %_ZN6ImPlot15GetPlotMousePosEii.exit299 ], [ %i.nq, %_ZN6ImPlot15GetPlotMousePosEii.exit307 ]
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %.sink450, i64 %indvars.iv
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !379
  store double %.sink447, ptr %i.ns, align 8, !tbaa !266
  br label %bb.by

bb.by:                                            ; preds = %.sink.split446, %bb.bo, %bb.bn
  %.3 = phi i1 [ %.2, %bb.bn ], [ %.2, %bb.bo ], [ true, %.sink.split446 ] ; 2 uses
  %i.nt = load i8, ptr %i.d, align 1, !tbaa !262, !range !263, !noundef !264
  %i.nu = trunc nuw i8 %i.nt to i1
  br i1 %i.nu, label %bb.bz, label %bb.cq

bb.bz:                                            ; preds = %bb.by
  %i.nv = call noundef zeroext i1 @_ZN5ImGui20IsMouseDoubleClickedEi(i32 noundef 0) #32
  br i1 %i.nv, label %bb.ca, label %bb.cq

bb.ca:                                            ; preds = %bb.bz
  %i.nw = load ptr, ptr @GImPlot, align 8, !tbaa !35, !noalias !707 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 80 ; 2 uses
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !217, !noalias !707 ; 2 uses
  %.not.i308 = icmp eq ptr %i.ny, null
  br i1 %.not.i308, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.nz = call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.156) #32, !noalias !707 ; 0 uses
  %.pre390 = load ptr, ptr @GImPlot, align 8, !tbaa !35, !noalias !707 ; 2 uses
  %.phi.trans.insert391 = getelementptr inbounds nuw i8, ptr %.pre390, i64 80
  %.pre392 = load ptr, ptr %.phi.trans.insert391, align 8, !tbaa !217, !noalias !707
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.oa = phi ptr [ %.pre392, %bb.cb ], [ %i.ny, %bb.ca ] ; 2 uses
  %i.ob = phi ptr [ %.pre390, %bb.cb ], [ %i.nw, %bb.ca ]
  %i.oc = getelementptr inbounds nuw i8, ptr %i.oa, i64 2550
  %i.od = load i8, ptr %i.oc, align 2, !tbaa !384, !range !263, !noalias !707, !noundef !264
  %i.oe = trunc nuw i8 %i.od to i1
  br i1 %i.oe, label %_ZN6ImPlot13GetPlotLimitsEii.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.of = getelementptr inbounds nuw i8, ptr %i.ob, i64 80
  call void @_ZN6ImPlot11SetupFinishEv(), !noalias !707
  %.pre.i.i309 = load ptr, ptr %i.of, align 8, !tbaa !217, !noalias !707
  br label %_ZN6ImPlot13GetPlotLimitsEii.exit

_ZN6ImPlot13GetPlotLimitsEii.exit:                ; preds = %bb.cc, %bb.cd
  %i.og = phi ptr [ %.pre.i.i309, %bb.cd ], [ %i.oa, %bb.cc ]
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 2550
  store i8 1, ptr %i.oh, align 2, !tbaa !384, !noalias !707
  %i.oi = load ptr, ptr %i.nx, align 8, !tbaa !217, !noalias !707 ; 4 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 2448
  %i.ok = load i32, ptr %i.oj, align 8, !tbaa !418, !noalias !707
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oi, i64 2452
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !419, !noalias !707
  %i.on = sext i32 %i.ok to i64
  %i.oo = getelementptr [376 x i8], ptr %i.oi, i64 %i.on ; 2 uses
  %i.op = sext i32 %i.om to i64
  %i.oq = getelementptr [376 x i8], ptr %i.oi, i64 %i.op ; 2 uses
  %i.or = getelementptr i8, ptr %i.oo, i64 40
  %.sroa.0326.0.copyload = load double, ptr %i.or, align 8, !tbaa !266 ; 2 uses
  %.sroa.4327.0..sroa_idx = getelementptr i8, ptr %i.oo, i64 48
  %.sroa.4327.0.copyload = load double, ptr %.sroa.4327.0..sroa_idx, align 8, !tbaa !266
  %i.os = getelementptr i8, ptr %i.oq, i64 40
  %.sroa.5.16.copyload = load double, ptr %i.os, align 8, !tbaa !266 ; 2 uses
  %.sroa.7.16..sroa_idx = getelementptr i8, ptr %i.oq, i64 48
  %.sroa.7.16.copyload = load double, ptr %.sroa.7.16..sroa_idx, align 8, !tbaa !266
  br i1 %i.ln, label %bb.ce, label %bb.ck

bb.ce:                                            ; preds = %_ZN6ImPlot13GetPlotLimitsEii.exit
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !379 ; 3 uses
  %i.ov = icmp eq ptr %i.ou, %2
  br i1 %i.ov, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.ow = load double, ptr %2, align 8, !tbaa !266
  %i.ox = load double, ptr %4, align 8, !tbaa !266
  %i.oy = fcmp olt double %i.ow, %i.ox
  br i1 %i.oy, label %bb.cj, label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.oz = icmp eq ptr %i.ou, %4
  br i1 %i.oz, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.pa = load double, ptr %4, align 8, !tbaa !266
  %i.pb = load double, ptr %2, align 8, !tbaa !266
  %i.pc = fcmp olt double %i.pa, %i.pb
  br i1 %i.pc, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cf, %bb.ch, %bb.ci
  %i.pd = phi double [ %.sroa.7.16.copyload, %bb.ci ], [ %.sroa.5.16.copyload, %bb.ch ], [ %.sroa.5.16.copyload, %bb.cf ]
  store double %i.pd, ptr %i.ou, align 8, !tbaa !266
  br label %bb.cq

bb.ck:                                            ; preds = %_ZN6ImPlot13GetPlotLimitsEii.exit
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !379 ; 3 uses
  %i.pg = icmp eq ptr %i.pf, %1
  br i1 %i.pg, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.ph = load double, ptr %1, align 8, !tbaa !266
  %i.pi = load double, ptr %3, align 8, !tbaa !266
  %i.pj = fcmp olt double %i.ph, %i.pi
  br i1 %i.pj, label %bb.cp, label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.pk = icmp eq ptr %i.pf, %3
  br i1 %i.pk, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
end_hunk_7
