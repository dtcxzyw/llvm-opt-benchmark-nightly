Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui?download=true
inline.NumInlined: 3345
inline.NumDeleted: 600
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZN5ImGui23DebugNodeWindowSettingsEP19ImGuiWindowSettings:bb.a
  %i.ak = and i8 %i.aj, 8
  %.not9 = icmp eq i8 %i.ak, 0
  br i1 %.not9, label %_ZN5ImGui11EndDisabledEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 9856 ; 2 uses
  %i.an = load i16, ptr %i.am, align 8, !tbaa !883 ; 2 uses
  %i.ao = icmp sgt i16 %i.an, 0
  br i1 %i.ao, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.102), !inline_history !1016 ; 0 uses
  br label %_ZN5ImGui11EndDisabledEv.exit

bb.g:                                             ; preds = %bb.e
  %i.aq = add nsw i16 %i.an, -1
  store i16 %i.aq, ptr %i.am, align 8, !tbaa !883
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 7784 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !792
  %i.at = and i32 %i.as, 64
  %.not.i10 = icmp ne i32 %i.at, 0
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 8120 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !283
  %i.aw = add nsw i32 %i.av, -1                   ; 2 uses
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !283
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 8128
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !285
  %i.az = sext i32 %i.aw to i64
  %i.ba = getelementptr [4 x i8], ptr %i.ay, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 -4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !237 ; 2 uses
  store i32 %i.bc, ptr %i.ar, align 8, !tbaa !792
  %i.bd = and i32 %i.bc, 64
  %i.be = icmp eq i32 %i.bd, 0
  %or.cond.i = select i1 %.not.i10, i1 %i.be, i1 false
  br i1 %or.cond.i, label %bb.h, label %_ZN5ImGui11EndDisabledEv.exit

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %i.al, i64 9852
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !916
  %i.bh = getelementptr inbounds nuw i8, ptr %i.al, i64 3220
  store float %i.bg, ptr %i.bh, align 4, !tbaa !915
  br label %_ZN5ImGui11EndDisabledEv.exit

_ZN5ImGui11EndDisabledEv.exit:                    ; preds = %bb.h, %bb.g, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZZN5ImGui17ShowMetricsWindowEPbEN24ScopedHighlightOlderThanD2Ev(i8 %.0.val) unnamed_addr #31 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = trunc nuw i8 %.0.val to i1
  br i1 %i.a, label %bb.b, label %_ZN5ImGui13PopStyleColorEi.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8056 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !391  ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.11)
          to label %bb.d unwind label %bb.f, !inline_history !989 ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.c, align 8, !tbaa !391  ; 3 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.i, label %_ZN5ImGui13PopStyleColorEi.exit

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %.0.i2 = phi i32 [ %i.g, %bb.d ], [ 1, %bb.b ]
  %i.i = phi i32 [ %i.g, %bb.d ], [ %i.d, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8064
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 3532
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %i.l = phi i32 [ %i.i, %.lr.ph.i ], [ %i.v, %bb.e ]
  %.110.i = phi i32 [ %.0.i2, %.lr.ph.i ], [ %i.w, %bb.e ] ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !390
  %i.n = sext i32 %i.l to i64
  %i.o = getelementptr [20 x i8], ptr %i.m, i64 %i.n ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 -20
  %i.q = getelementptr i8, ptr %i.o, i64 -16
  %i.r = load i32, ptr %i.p, align 4, !tbaa !385
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [16 x i8], ptr %i.k, i64 %i.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.t, ptr noundef nonnull align 4 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !386
  %i.u = load i32, ptr %i.c, align 8, !tbaa !388
  %i.v = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.v, ptr %i.c, align 8, !tbaa !388
  %i.w = add nsw i32 %.110.i, -1
  %i.x = icmp samesign ugt i32 %.110.i, 1
  br i1 %i.x, label %bb.e, label %_ZN5ImGui13PopStyleColorEi.exit, !llvm.loop !17

_ZN5ImGui13PopStyleColorEi.exit:                  ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #58
  unreachable
}

declare void @_ZN5ImGui22DebugNodeTableSettingsEP18ImGuiTableSettingsP10ImGuiTable(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui18InputTextMultilineEPKcPcmRK6ImVec2iPFiP26ImGuiInputTextCallbackDataEPv(ptr noundef, ptr noundef, i64 noundef, ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui22DebugLocateItemOnHoverEj(i32 noundef %0) local_unnamed_addr #12 {
bb.a:
  %1 = alloca %struct.ImVec2, align 8             ; 4 uses
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = icmp eq i32 %0, 0
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 160)
  br i1 %i.b, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 7788
  store i32 %0, ptr %i.d, align 4, !tbaa !862
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 10457
  store i8 2, ptr %i.e, align 1, !tbaa !861
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 10458 ; 2 uses
  store i8 0, ptr %i.f, align 2, !tbaa !586
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8208
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !399
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !400
  %i.j = tail call fastcc noundef ptr @_ZL23GetViewportBgFgDrawListP14ImGuiViewportPmPKc(ptr noundef %i.i, i64 noundef 1, ptr noundef nonnull @.str.86)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 7860
  %i.l = load <2 x float>, ptr %i.k, align 4, !tbaa !75
  %i.m = fadd <2 x float> %i.l, splat (float -3.000000e+00)
  store <2 x float> %i.m, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 7868
  %i.o = load <2 x float>, ptr %i.n, align 4, !tbaa !75
  %i.p = fadd <2 x float> %i.o, splat (float 3.000000e+00)
  store <2 x float> %i.p, ptr %2, align 8
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %i.j, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, i32 noundef -16711936, float noundef 0.000000e+00, float noundef 1.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.r = load i8, ptr %i.q, align 8, !tbaa !1097, !range !100, !noundef !236
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 9404
  %i.u = load float, ptr %i.t, align 4, !tbaa !762
  %i.v = fcmp ogt float %i.u, 1.000000e+00
  br i1 %i.v, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @_ZN5ImGui23DebugBreakButtonTooltipEbPKc(i1 noundef zeroext false, ptr noundef nonnull @.str.573)
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 10460
  %i.x = load i32, ptr %i.w, align 4, !tbaa !587
  %i.y = call noundef zeroext i1 @_ZN5ImGui17IsKeyChordPressedEi(i32 noundef %i.x)
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.f, align 2, !tbaa !586
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.f, %bb.e, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui16DebugBreakButtonEPKcS1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 {
bb.a:
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  %3 = alloca %struct.ImVec2, align 4             ; 5 uses
  %4 = alloca %struct.ImRect, align 8             ; 11 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !289  ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !679
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.f = load i8, ptr %i.e, align 1, !tbaa !926, !range !100, !noundef !236
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 264
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !514
  %i.k = load i32, ptr %i.h, align 8, !tbaa !516
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr [4 x i8], ptr %i.j, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 -4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !237  ; 2 uses
  %i.p = ptrtoint ptr %0 to i64
  %i.q = xor i32 %i.o, -1                         ; 2 uses
  %i.r = load i8, ptr %0, align 1, !tbaa !82      ; 2 uses
  %.not4050.i.i = icmp eq i8 %i.r, 0
  br i1 %.not4050.i.i, label %_Z9ImHashStrPKcmj.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.g
  %i.s = phi i8 [ %i.aj, %bb.g ], [ %i.r, %bb.b ] ; 2 uses
  %.252.i.i = phi ptr [ %.3.i.i, %bb.g ], [ %0, %bb.b ] ; 3 uses
  %.23351.i.i = phi i32 [ %.334.i.i, %bb.g ], [ %i.q, %bb.b ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.252.i.i, i64 1 ; 2 uses
  %i.u = zext i8 %i.s to i32
  %i.v = icmp eq i8 %i.s, 35
  br i1 %i.v, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.w = load i8, ptr %i.t, align 1, !tbaa !82
  %i.x = icmp eq i8 %i.w, 35
  br i1 %i.x, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %.252.i.i, i64 2
  %i.z = load i8, ptr %i.y, align 1, !tbaa !82
  %i.aa = icmp eq i8 %i.z, 35
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.252.i.i, i64 3
  br label %bb.g, !llvm.loop !6

bb.f:                                             ; preds = %bb.d, %bb.c, %.lr.ph.i.i
  %i.ac = lshr i32 %.23351.i.i, 8
  %i.ad = and i32 %.23351.i.i, 255
  %i.ae = xor i32 %i.ad, %i.u
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !237
  %i.ai = xor i32 %i.ah, %i.ac
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.334.i.i = phi i32 [ %i.q, %bb.e ], [ %i.ai, %bb.f ] ; 2 uses
  %.3.i.i = phi ptr [ %i.ab, %bb.e ], [ %i.t, %bb.f ] ; 2 uses
  %i.aj = load i8, ptr %.3.i.i, align 1, !tbaa !82 ; 2 uses
  %.not40.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not40.i.i, label %_Z9ImHashStrPKcmj.exit.i.loopexit, label %.lr.ph.i.i

_Z9ImHashStrPKcmj.exit.i.loopexit:                ; preds = %bb.g
  %i.ak = xor i32 %.334.i.i, -1
  br label %_Z9ImHashStrPKcmj.exit.i

_Z9ImHashStrPKcmj.exit.i:                         ; preds = %_Z9ImHashStrPKcmj.exit.i.loopexit, %bb.b
  %.4.i.i = phi i32 [ %i.o, %bb.b ], [ %i.ak, %_Z9ImHashStrPKcmj.exit.i.loopexit ] ; 6 uses
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !636
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 5400
  %i.an = load i32, ptr %i.am, align 8, !tbaa !638
  %i.ao = icmp eq i32 %i.an, %.4.i.i
  br i1 %i.ao, label %bb.h, label %_ZN11ImGuiWindow5GetIDEPKcS1_.exit

bb.h:                                             ; preds = %_Z9ImHashStrPKcmj.exit.i
  tail call void @_ZN5ImGui15DebugHookIdInfoEjiPKvS1_(i32 noundef %.4.i.i, i32 noundef 11, ptr noundef nonnull %0, ptr noundef null)
  %.pre = load ptr, ptr @GImGui, align 8, !tbaa !227
  br label %_ZN11ImGuiWindow5GetIDEPKcS1_.exit

_ZN11ImGuiWindow5GetIDEPKcS1_.exit:               ; preds = %_Z9ImHashStrPKcmj.exit.i, %bb.h
  %i.ap = phi ptr [ %i.a, %_Z9ImHashStrPKcmj.exit.i ], [ %.pre, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %.not = icmp eq ptr %0, inttoptr (i64 -1 to ptr) ; 2 uses
  br i1 %.not, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.thread.i, label %.lr.ph.i.i22

_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.thread.i: ; preds = %_ZN11ImGuiWindow5GetIDEPKcS1_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4568
  %i.ar = load float, ptr %i.aq, align 8, !tbaa !410
  br label %bb.j

.lr.ph.i.i22:                                     ; preds = %_ZN11ImGuiWindow5GetIDEPKcS1_.exit, %.critedge2.i.i
  %.015.i.i = phi ptr [ %i.av, %.critedge2.i.i ], [ %0, %_ZN11ImGuiWindow5GetIDEPKcS1_.exit ] ; 5 uses
  %i.as = load i8, ptr %.015.i.i, align 1, !tbaa !82
  switch i8 %i.as, label %.critedge2.i.i [
    i8 0, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i
    i8 35, label %bb.i
  ]

bb.i:                                             ; preds = %.lr.ph.i.i22
  %i.at = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !82
  %.not14.i.i = icmp eq i8 %i.au, 35
  br i1 %.not14.i.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i, label %.critedge2.i.i

.critedge2.i.i:                                   ; preds = %bb.i, %.lr.ph.i.i22
  %i.av = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 1 ; 2 uses
  %exitcond.not.i.i = icmp eq ptr %i.av, inttoptr (i64 -1 to ptr)
  br i1 %exitcond.not.i.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i, label %.lr.ph.i.i22, !llvm.loop !19

_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i:     ; preds = %.critedge2.i.i, %bb.i, %.lr.ph.i.i22
  %.0.i = phi ptr [ %.015.i.i, %bb.i ], [ inttoptr (i64 -1 to ptr), %.critedge2.i.i ], [ %.015.i.i, %.lr.ph.i.i22 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 4568
  %i.ax = load float, ptr %i.aw, align 8, !tbaa !410 ; 2 uses
  %i.ay = icmp eq ptr %0, %.0.i
  br i1 %i.ay, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.thread.i
  %i.az = phi float [ %i.ar, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.thread.i ], [ %i.ax, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i ]
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.az, i64 1
  br label %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit

bb.k:                                             ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 4552
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !409
  %i.bc = tail call <2 x float> @_ZN6ImFont13CalcTextSizeAEfffPKcS1_PS1_(ptr noundef nonnull align 8 dereferenceable(76) %i.bb, float noundef %i.ax, float noundef f0x7F7FFFFF, float noundef -1.000000e+00, ptr noundef nonnull %0, ptr noundef nonnull %.0.i, ptr noundef null) ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.bc, i64 0 ; 2 uses
  %i.bd = fptosi float %.sroa.0.0.vec.extract.i to i32 ; 2 uses
  %i.be = sitofp i32 %i.bd to float
  %i.bf = fcmp ogt float %.sroa.0.0.vec.extract.i, %i.be
  %i.bg = zext i1 %i.bf to i32
  %i.bh = add nsw i32 %i.bg, %i.bd
  %i.bi = sitofp i32 %i.bh to float
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> %i.bc, float %i.bi, i64 0
  br label %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit

_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit:            ; preds = %bb.j, %bb.k
  %.sroa.0.0.i = phi <2 x float> [ %.sroa.0.4.vec.insert.i, %bb.j ], [ %.sroa.0.0.vec.insert.i, %bb.k ] ; 4 uses
  store <2 x float> %.sroa.0.0.i, ptr %2, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 336
  %i.bl = load float, ptr %i.bk, align 8, !tbaa !971
  %i.bm = load <2 x float>, ptr %i.bj, align 8, !tbaa !75
  %i.bn = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.bl, i64 1
  %i.bo = fadd <2 x float> %i.bm, %i.bn           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.bp = extractelement <2 x float> %.sroa.0.0.i, i64 0
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 3284
  %i.br = load float, ptr %i.bq, align 4, !tbaa !1743
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.br, float 2.000000e+00, float %i.bp) ; 2 uses
  %i.bt = extractelement <2 x float> %.sroa.0.0.i, i64 1
  store float %i.bs, ptr %3, align 4, !tbaa !249
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.bt, ptr %i.bu, align 4, !tbaa !250
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.bv = insertelement <2 x float> %.sroa.0.0.i, float %i.bs, i64 0
  %i.bw = fadd <2 x float> %i.bo, %i.bv
  store <2 x float> %i.bo, ptr %4, align 8, !tbaa !75
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store <2 x float> %i.bw, ptr %i.bx, align 8, !tbaa !75
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %3, float noundef 0.000000e+00)
  %i.by = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %.4.i.i, ptr noundef null, i32 noundef 0)
  br i1 %i.by, label %bb.l, label %_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect.exit

bb.l:                                             ; preds = %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 7784
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !792
  %i.cb = call noundef zeroext i1 @_ZN5ImGui13ItemHoverableERK6ImRectji(ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %.4.i.i, i32 noundef %i.ca)
  br i1 %i.cb, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 10460
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !587
  %i.ce = call noundef zeroext i1 @_ZN5ImGui17IsKeyChordPressedEi(i32 noundef %i.cd)
  br i1 %i.ce, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cf = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 280
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !243, !range !100, !noundef !236
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.o, label %_ZN5ImGui14IsMouseClickedEiij.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 2972
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !75
  %i.cl = fcmp oeq float %i.ck, 0.000000e+00
  br i1 %i.cl, label %.critedge.i, label %_ZN5ImGui14IsMouseClickedEiij.exit.thread

.critedge.i:                                      ; preds = %bb.o
  %i.cm = getelementptr i8, ptr %i.cf, i64 7300
  %i.cn = load i8, ptr %i.cm, align 4, !tbaa !526, !range !100, !noundef !236
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %bb.p, label %_ZN5ImGui14IsMouseClickedEiij.exit.thread

_ZN5ImGui14IsMouseClickedEiij.exit.thread:        ; preds = %bb.o, %bb.n, %.critedge.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 8244
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !664
  %i.cr = icmp eq i32 %i.cq, %.4.i.i
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %.critedge.i, %_ZN5ImGui14IsMouseClickedEiij.exit.thread, %bb.l
  %i.cs = phi i64 [ 22, %bb.l ], [ 23, %.critedge.i ], [ 23, %bb.m ], [ 23, %_ZN5ImGui14IsMouseClickedEiij.exit.thread ]
  %i.ct = phi i1 [ false, %bb.l ], [ true, %.critedge.i ], [ true, %bb.m ], [ %i.cr, %_ZN5ImGui14IsMouseClickedEiij.exit.thread ] ; 3 uses
  call void @_ZN5ImGui23DebugBreakButtonTooltipEbPKc(i1 noundef zeroext false, ptr noundef %1)
  %i.cu = load ptr, ptr @GImGui, align 8, !tbaa !227
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 3532
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.cv, i64 %i.cs ; 4 uses
  %.sroa.036.0.copyload = load float, ptr %i.cw, align 4, !tbaa !75 ; 3 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %.sroa.12.0.copyload = load float, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !75 ; 3 uses
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %.sroa.21.0.copyload = load float, ptr %.sroa.21.0..sroa_idx, align 4, !tbaa !75 ; 3 uses
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  %.sroa.30.0.copyload = load float, ptr %.sroa.30.0..sroa_idx, align 4, !tbaa !75
  %i.cx = fcmp olt float %.sroa.12.0.copyload, %.sroa.21.0.copyload ; 3 uses
  %.017.i = select i1 %i.cx, float %.sroa.21.0.copyload, float %.sroa.12.0.copyload ; 3 uses
  %.016.i = select i1 %i.cx, float %.sroa.12.0.copyload, float %.sroa.21.0.copyload ; 3 uses
  %i.cy = fcmp olt float %.sroa.036.0.copyload, %.017.i ; 3 uses
  %.019.i = select i1 %i.cy, float %.017.i, float %.sroa.036.0.copyload ; 14 uses
  %.118.i = select i1 %i.cy, float %.sroa.036.0.copyload, float %.017.i ; 3 uses
  %i.cz = fcmp olt float %.118.i, %.016.i
  %i.da = select i1 %i.cz, float %.118.i, float %.016.i
  %i.db = fsub float %.019.i, %i.da               ; 2 uses
  %i.dc = fadd float %.019.i, f0x1E3CE508
  %i.dd = fdiv float %i.db, %i.dc                 ; 3 uses
  %i.de = fcmp oeq float %i.dd, 0.000000e+00
  br i1 %i.de, label %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.0.i27 = select i1 %i.cx, float -1.000000e+00, float 0.000000e+00 ; 2 uses
  %i.df = fsub float f0xBEAAAAAB, %.0.i27
  %.1.i = select i1 %i.cy, float %i.df, float %.0.i27
  %i.dg = fsub float %.118.i, %.016.i
  %i.dh = call float @llvm.fmuladd.f32(float %i.db, float 6.000000e+00, float f0x1E3CE508)
  %i.di = fdiv float %i.dg, %i.dh
  %i.dj = fadd float %.1.i, %i.di
  %i.dk = call float @llvm.fabs.f32(float %i.dj)
  %i.dl = fadd float %i.dk, 2.000000e-01
  %i.dm = call float @fmodf(float noundef %i.dl, float noundef 1.000000e+00) #41
  %i.dn = fdiv float %i.dm, f0x3E2AAAAB           ; 2 uses
  %i.do = fptosi float %i.dn to i32               ; 2 uses
  %i.dp = sitofp i32 %i.do to float
  %i.dq = fsub float %i.dn, %i.dp                 ; 2 uses
  %i.dr = fsub float 1.000000e+00, %i.dd
  %i.ds = fmul float %.019.i, %i.dr               ; 6 uses
  %i.dt = fneg float %i.dd
  %i.du = fsub float 1.000000e+00, %i.dq
  %i.dv = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dx = insertelement <2 x float> poison, float %i.dq, i64 0
  %i.dy = insertelement <2 x float> %i.dx, float %i.du, i64 1
  %i.dz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dw, <2 x float> %i.dy, <2 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.ea = extractelement <2 x float> %i.dz, i64 0
  %i.eb = fmul float %.019.i, %i.ea               ; 3 uses
  %i.ec = extractelement <2 x float> %i.dz, i64 1
  %i.ed = fmul float %.019.i, %i.ec               ; 3 uses
  switch i32 %i.do, label %bb.v [
    i32 0, label %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit
    i32 1, label %bb.r
    i32 2, label %bb.s
    i32 3, label %bb.t
    i32 4, label %bb.u
  ]

bb.r:                                             ; preds = %bb.q
  br label %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit

bb.s:                                             ; preds = %bb.q
  br label %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit

bb.t:                                             ; preds = %bb.q
  br label %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit

bb.u:                                             ; preds = %bb.q
  br label %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit

bb.v:                                             ; preds = %bb.q
  br label %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit

_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit: ; preds = %bb.q, %bb.p, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v
  %.sroa.21.0 = phi float [ %.019.i, %bb.u ], [ %i.eb, %bb.v ], [ %.019.i, %bb.p ], [ %i.ds, %bb.r ], [ %i.ed, %bb.s ], [ %.019.i, %bb.t ], [ %i.ds, %bb.q ]
  %.sroa.12.0 = phi float [ %i.ds, %bb.u ], [ %i.ds, %bb.v ], [ %.019.i, %bb.p ], [ %.019.i, %bb.r ], [ %.019.i, %bb.s ], [ %i.eb, %bb.t ], [ %i.ed, %bb.q ]
  %.sroa.036.0 = phi float [ %i.ed, %bb.u ], [ %.019.i, %bb.v ], [ %.019.i, %bb.p ], [ %i.eb, %bb.r ], [ %i.ds, %bb.s ], [ %i.ds, %bb.t ], [ %.019.i, %bb.q ]
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectjif(ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %.4.i.i, i32 noundef 0, float noundef -1.000000e+00)
  %.sroa.01.0.copyload = load <2 x float>, ptr %4, align 8, !tbaa !75
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.bx, align 8, !tbaa !75
  %i.ee = load ptr, ptr @GImGui, align 8, !tbaa !227
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 3220
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !383
  %i.eh = fmul float %.sroa.30.0.copyload, %i.eg
  %i.ei = insertelement <4 x float> poison, float %.sroa.036.0, i64 0
  %i.ej = insertelement <4 x float> %i.ei, float %.sroa.12.0, i64 1
  %i.ek = insertelement <4 x float> %i.ej, float %.sroa.21.0, i64 2
  %i.el = insertelement <4 x float> %i.ek, float %i.eh, i64 3 ; 3 uses
  %i.em = fcmp olt <4 x float> %i.el, zeroinitializer
  %i.en = fcmp ogt <4 x float> %i.el, splat (float 1.000000e+00)
  %i.eo = select <4 x i1> %i.en, <4 x float> splat (float 1.000000e+00), <4 x float> %i.el
  %i.ep = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eo, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.eq = select <4 x i1> %i.em, <4 x float> splat (float 5.000000e-01), <4 x float> %i.ep
  %i.er = fptosi <4 x float> %i.eq to <4 x i32>
  %i.es = shl <4 x i32> %i.er, <i32 0, i32 8, i32 16, i32 24>
  %i.et = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.es)
  %i.eu = getelementptr inbounds nuw i8, ptr %i.a, i64 3292
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !428
  call void @_ZN5ImGui11RenderFrameE6ImVec2S0_jbf(<2 x float> %.sroa.01.0.copyload, <2 x float> %.sroa.0.0.copyload, i32 noundef %i.et, i1 noundef zeroext true, float noundef %i.ev)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.a, i64 3456
  br i1 %.not, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i28, label %.lr.ph.i.i31

.lr.ph.i.i31:                                     ; preds = %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit, %.critedge2.i.i34
  %.015.i.i32 = phi ptr [ %i.fa, %.critedge2.i.i34 ], [ %0, %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit ] ; 5 uses
  %i.ex = load i8, ptr %.015.i.i32, align 1, !tbaa !82
  switch i8 %i.ex, label %.critedge2.i.i34 [
    i8 0, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i28
    i8 35, label %bb.w
  ]

bb.w:                                             ; preds = %.lr.ph.i.i31
  %i.ey = getelementptr inbounds nuw i8, ptr %.015.i.i32, i64 1
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !82
  %.not14.i.i33 = icmp eq i8 %i.ez, 35
  br i1 %.not14.i.i33, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i28, label %.critedge2.i.i34

.critedge2.i.i34:                                 ; preds = %bb.w, %.lr.ph.i.i31
  %i.fa = getelementptr inbounds nuw i8, ptr %.015.i.i32, i64 1 ; 2 uses
  %exitcond.not.i.i35 = icmp eq ptr %i.fa, inttoptr (i64 -1 to ptr)
  br i1 %exitcond.not.i.i35, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i28, label %.lr.ph.i.i31, !llvm.loop !19

_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i28:   ; preds = %.critedge2.i.i34, %bb.w, %.lr.ph.i.i31, %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit
  %.0.lcssa.i.i = phi ptr [ inttoptr (i64 -1 to ptr), %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit ], [ %.015.i.i32, %.lr.ph.i.i31 ], [ inttoptr (i64 -1 to ptr), %.critedge2.i.i34 ], [ %.015.i.i32, %bb.w ] ; 3 uses
  %.pre-phi = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.fb = sub i64 %.pre-phi, %i.p
  %i.fc = and i64 %i.fb, 4294967295
  %i.fd = icmp eq i64 %i.fc, 0
  br i1 %i.fd, label %_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect.exit, label %bb.x

bb.x:                                             ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i28
  %i.fe = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 5312
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !289
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 712
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !408
  call void @_ZN5ImGui19RenderTextClippedExEP10ImDrawListRK6ImVec2S4_PKcS6_PS3_S4_PK6ImRect(ptr noundef %i.fi, ptr noundef nonnull readonly align 4 dereferenceable(8) %4, ptr noundef nonnull readonly align 4 dereferenceable(8) %i.bx, ptr noundef nonnull %0, ptr noundef nonnull %.0.lcssa.i.i, ptr noundef nonnull readonly %2, ptr noundef nonnull readonly align 4 dereferenceable(8) %i.ew, ptr noundef nonnull readonly %4)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 10264
  %i.fk = load i8, ptr %i.fj, align 8, !tbaa !368, !range !100, !noundef !236
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.y, label %_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect.exit

bb.y:                                             ; preds = %bb.x
  call void @_ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_(ptr noundef nonnull readonly align 4 dereferenceable(8) %4, ptr noundef nonnull %0, ptr noundef nonnull %.0.lcssa.i.i)
  br label %_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect.exit

_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect.exit: ; preds = %bb.y, %bb.x, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i28, %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit
  %.0 = phi i1 [ false, %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit ], [ %i.ct, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i28 ], [ %i.ct, %bb.x ], [ %i.ct, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  br label %bb.z

bb.z:                                             ; preds = %bb.a, %_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect.exit
  %.1 = phi i1 [ %.0, %_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect.exit ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui23DebugBreakButtonTooltipEbPKc(i1 noundef zeroext %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 4096)
  br i1 %i.a, label %bb.b, label %_ZN5ImGui16BeginItemTooltipEv.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN5ImGui14BeginTooltipExEii(i32 noundef 0, i32 noundef 0) ; 0 uses
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.444, ptr noundef %1)
  tail call void @_ZN5ImGui9SeparatorEv()
  %i.c = select i1 %0, ptr @.str.445, ptr @.str.446
  tail call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull %i.c, ptr noundef null)
  tail call void @_ZN5ImGui9SeparatorEv()
  tail call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.447, ptr noundef null)
  tail call void @_ZN5ImGui3EndEv()
  br label %_ZN5ImGui16BeginItemTooltipEv.exit

_ZN5ImGui16BeginItemTooltipEv.exit:               ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui16DebugNodeColumnsEP15ImGuiOldColumns(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !1744   ; 2 uses
  %i.b = zext i32 %i.a to i64
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1745
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !1746
  %i.h = tail call noundef zeroext i1 (ptr, ptr, ...) @_ZN5ImGui8TreeNodeEPKvPKcz(ptr noundef %i.c, ptr noundef nonnull @.str.448, i32 noundef %i.a, i32 noundef %i.e, i32 noundef %i.g)
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load float, ptr %i.i, align 8, !tbaa !1747 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.l = load float, ptr %i.k, align 4, !tbaa !1748 ; 2 uses
  %i.m = fsub float %i.j, %i.l
  %i.n = fpext float %i.m to double
  %i.o = fpext float %i.l to double
  %i.p = fpext float %i.j to double
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.449, double noundef %i.n, double noundef %i.o, double noundef %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1105 ; 2 uses
  %i.t = load i32, ptr %i.q, align 8, !tbaa !1749 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %.idx = mul nsw i64 %i.u, 28
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 %.idx
  %.not20 = icmp eq i32 %i.t, 0
  br i1 %.not20, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  tail call void @_ZN5ImGui7TreePopEv()
  br label %bb.c

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.021 = phi ptr [ %i.ag, %.lr.ph ], [ %i.s, %bb.b ] ; 3 uses
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !1105
  %i.x = ptrtoint ptr %.021 to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 28
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = load float, ptr %.021, align 4, !tbaa !1751 ; 2 uses
  %i.ad = fpext float %i.ac to double
  %i.ae = tail call noundef float @_ZN5ImGui23GetColumnOffsetFromNormEPK15ImGuiOldColumnsf(ptr noundef nonnull %0, float noundef %i.ac)
  %i.af = fpext float %i.ae to double
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.450, i32 noundef %i.ab, double noundef %i.ad, double noundef %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %.021, i64 28 ; 2 uses
  %.not = icmp eq ptr %i.ag, %i.v
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

declare noundef float @_ZN5ImGui23GetColumnOffsetFromNormEPK15ImGuiOldColumnsf(ptr noundef, float noundef) local_unnamed_addr #2

declare void @_ZN5ImGui11TextColoredERK6ImVec4PKcz(ptr noundef nonnull align 4 dereferenceable(16), ptr noundef, ...) local_unnamed_addr #2

declare void @_ZN5ImGui12TextDisabledEPKcz(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui38DebugNodeDrawCmdShowMeshAndBoundingBoxEP10ImDrawListPKS0_PK9ImDrawCmdbb(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #12 {
bb.a:
  %5 = alloca [3 x %struct.ImVec2], align 16      ; 13 uses
  %6 = alloca %struct.ImVec2, align 8             ; 4 uses
  %7 = alloca %struct.ImVec2, align 8             ; 4 uses
  %8 = alloca %struct.ImVec2, align 8             ; 4 uses
  %9 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = load <2 x float>, ptr %2, align 4, !tbaa !75
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load <2 x float>, ptr %i.b, align 4, !tbaa !75
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1103 ; 2 uses
  %i.f = and i32 %i.e, -2
  store i32 %i.f, ptr %i.d, align 8, !tbaa !1103
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.h = load i32, ptr %i.g, align 4, !tbaa !1102 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !946
  %i.k = add i32 %i.j, %i.h                       ; 4 uses
  %i.l = icmp ult i32 %i.h, %i.k
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  br i1 %3, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %_ZN6ImRect3AddERK6ImVec2.exit.us.2
  %.02752.us = phi i32 [ %i.by, %_ZN6ImRect3AddERK6ImVec2.exit.us.2 ], [ %i.h, %.lr.ph.split.us.preheader ] ; 6 uses
  %i.s = phi <4 x float> [ %i.bx, %_ZN6ImRect3AddERK6ImVec2.exit.us.2 ], [ <float f0xFF7FFFFF, float f0xFF7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF>, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.t = load i32, ptr %i.m, align 8, !tbaa !1098
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.preheader.us, label %.preheader.us.thread

.preheader.us.thread:                             ; preds = %.lr.ph.split.us
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !1100
  %i.w = load i32, ptr %i.p, align 8, !tbaa !1101
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false), !tbaa !75
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [20 x i8], ptr %i.v, i64 %i.x
  br label %_ZN6ImRect3AddERK6ImVec2.exit.us

.preheader.us:                                    ; preds = %.lr.ph.split.us
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !1099 ; 3 uses
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !1100
  %i.ab = load i32, ptr %i.p, align 8, !tbaa !1101
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false), !tbaa !75
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [20 x i8], ptr %i.aa, i64 %i.ac ; 2 uses
  %.not.us = icmp eq ptr %i.z, null
  br i1 %.not.us, label %_ZN6ImRect3AddERK6ImVec2.exit.us, label %bb.b

bb.b:                                             ; preds = %.preheader.us
  %i.ae = zext i32 %.02752.us to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !255
  %i.ah = zext i16 %i.ag to i32
  br label %_ZN6ImRect3AddERK6ImVec2.exit.us

_ZN6ImRect3AddERK6ImVec2.exit.us:                 ; preds = %.preheader.us.thread, %bb.b, %.preheader.us
  %.not.us113 = phi i1 [ false, %bb.b ], [ true, %.preheader.us ], [ true, %.preheader.us.thread ] ; 2 uses
  %i.ai = phi ptr [ %i.ad, %bb.b ], [ %i.ad, %.preheader.us ], [ %i.y, %.preheader.us.thread ] ; 3 uses
  %i.aj = phi ptr [ %i.z, %bb.b ], [ null, %.preheader.us ], [ null, %.preheader.us.thread ] ; 2 uses
  %i.ak = phi i32 [ %i.ah, %bb.b ], [ %.02752.us, %.preheader.us ], [ %.02752.us, %.preheader.us.thread ]
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [20 x i8], ptr %i.ai, i64 %i.al
  %i.an = load i64, ptr %i.am, align 4, !tbaa !75 ; 2 uses
  store i64 %i.an, ptr %5, align 16, !tbaa !75
  %i.ao = bitcast i64 %i.an to <2 x float>
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 3 uses
  %i.aq = fcmp olt <4 x float> %i.s, %i.ap
  %i.ar = fcmp ogt <4 x float> %i.s, %i.ap
  %i.as = shufflevector <4 x i1> %i.aq, <4 x i1> %i.ar, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.at = select <4 x i1> %i.as, <4 x float> %i.ap, <4 x float> %i.s ; 3 uses
  %i.au = add nuw i32 %.02752.us, 1               ; 2 uses
  br i1 %.not.us113, label %_ZN6ImRect3AddERK6ImVec2.exit.us.1, label %bb.c

bb.c:                                             ; preds = %_ZN6ImRect3AddERK6ImVec2.exit.us
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !255
  %i.ay = zext i16 %i.ax to i32
  br label %_ZN6ImRect3AddERK6ImVec2.exit.us.1

_ZN6ImRect3AddERK6ImVec2.exit.us.1:               ; preds = %bb.c, %_ZN6ImRect3AddERK6ImVec2.exit.us
  %i.az = phi i32 [ %i.ay, %bb.c ], [ %i.au, %_ZN6ImRect3AddERK6ImVec2.exit.us ]
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [20 x i8], ptr %i.ai, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 4, !tbaa !75 ; 2 uses
  store i64 %i.bc, ptr %i.q, align 8, !tbaa !75
  %i.bd = bitcast i64 %i.bc to <2 x float>
end_hunk_0
