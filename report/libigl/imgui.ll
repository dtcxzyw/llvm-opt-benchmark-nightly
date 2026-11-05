Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui?download=true
inline.NumInlined: 2414
inline.NumDeleted: 435
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZN5ImGui26FocusTopMostWindowUnderOneEP11ImGuiWindowS1_:bb.a
  tail call void @_ZN5ImGui11FocusWindowEP11ImGuiWindow(ptr noundef nonnull %.0.i)
  br label %_ZN5ImGui11FocusWindowEP11ImGuiWindow.exit

bb.h:                                             ; preds = %bb.e, %bb.d, %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ag = icmp slt i64 %indvars.iv, 1
  br i1 %i.ag, label %.critedge29, label %bb.c, !llvm.loop !976

.critedge29:                                      ; preds = %bb.h, %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 7688 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !389
  %.not.i30 = icmp eq ptr %i.ai, null
  br i1 %.not.i30, label %bb.i, label %_ZN5ImGuiL23NavUpdateAnyRequestFlagEv.exit.i

_ZN5ImGuiL23NavUpdateAnyRequestFlagEv.exit.i:     ; preds = %.critedge29
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 7760
  store i8 0, ptr %i.aj, align 8, !tbaa !432
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 7752
  store i32 0, ptr %i.ak, align 8, !tbaa !502
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 7789
  store i8 0, ptr %i.al, align 1, !tbaa !220
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 7788
  store i8 0, ptr %i.am, align 4, !tbaa !435
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 7765
  store i8 0, ptr %i.an, align 1, !tbaa !498
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 7764
  store i8 0, ptr %i.ao, align 4, !tbaa !499
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %_ZN5ImGuiL23NavUpdateAnyRequestFlagEv.exit.i, %.critedge29
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 7640 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !509
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %bb.j, label %_ZN5ImGui21ClosePopupsOverWindowEP11ImGuiWindowb.exit

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 7648 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 7644 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !485
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %_ZN5ImGui8MemAllocEm.exit.i.i.i, label %_ZN5ImGui17ClosePopupToLevelEib.exit

_ZN5ImGui8MemAllocEm.exit.i.i.i:                  ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 944 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !180
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 8, !tbaa !180
  %i.az = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !181
  %i.ba = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !181
  %i.bb = tail call noundef ptr %i.az(i64 noundef 0, ptr noundef %i.ba), !inline_history !977 ; 2 uses
  %i.bc = load ptr, ptr %i.as, align 8, !tbaa !484 ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not6.i.i.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_ZN5ImGui8MemAllocEm.exit.i.i.i
  %i.bd = load i32, ptr %i.ap, align 8, !tbaa !486
  %i.be = sext i32 %i.bd to i64
  %i.bf = mul nsw i64 %i.be, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bb, ptr nonnull align 8 %i.bc, i64 %i.bf, i1 false)
  %i.bg = load ptr, ptr %i.as, align 8, !tbaa !484 ; 2 uses
  %.not.i7.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i7.i.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not4.i.i.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 944 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !180
  %i.bk = add nsw i32 %i.bj, -1
  store i32 %i.bk, ptr %i.bi, align 8, !tbaa !180
  br label %_ZN5ImGui7MemFreeEPv.exit.i.i.i

_ZN5ImGui7MemFreeEPv.exit.i.i.i:                  ; preds = %bb.m, %bb.l, %bb.k
  %i.bl = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !181
  %i.bm = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !181
  tail call void %i.bl(ptr noundef %i.bg, ptr noundef %i.bm), !inline_history !978
  br label %bb.n

bb.n:                                             ; preds = %_ZN5ImGui7MemFreeEPv.exit.i.i.i, %_ZN5ImGui8MemAllocEm.exit.i.i.i
  store ptr %i.bb, ptr %i.as, align 8, !tbaa !484
  store i32 0, ptr %i.at, align 4, !tbaa !485
  br label %_ZN5ImGui17ClosePopupToLevelEib.exit

_ZN5ImGui17ClosePopupToLevelEib.exit:             ; preds = %bb.j, %bb.n
  store i32 0, ptr %i.ap, align 8, !tbaa !486
  br label %_ZN5ImGui21ClosePopupsOverWindowEP11ImGuiWindowb.exit

_ZN5ImGui21ClosePopupsOverWindowEP11ImGuiWindowb.exit: ; preds = %bb.i, %_ZN5ImGui17ClosePopupToLevelEib.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 7260
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !319
  %.not34.i = icmp eq i32 %i.bo, 0
  br i1 %.not34.i, label %_ZN5ImGui11FocusWindowEP11ImGuiWindow.exit, label %bb.o

bb.o:                                             ; preds = %_ZN5ImGui21ClosePopupsOverWindowEP11ImGuiWindowb.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 7304
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !371 ; 2 uses
  %.not35.i = icmp eq ptr %i.bq, null
  br i1 %.not35.i, label %_ZN5ImGui11FocusWindowEP11ImGuiWindow.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 832
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !390
  %.not36.i = icmp eq ptr %i.bs, null
  br i1 %.not36.i, label %_ZN5ImGui11FocusWindowEP11ImGuiWindow.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 7274
  %i.bu = load i8, ptr %i.bt, align 2, !tbaa !370, !range !216, !noundef !217
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %_ZN5ImGui11FocusWindowEP11ImGuiWindow.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bw = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 12 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 7260 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !319
  %i.bz = icmp ne i32 %i.by, 0                    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 7272
  %i.cb = zext i1 %i.bz to i8
  store i8 %i.cb, ptr %i.ca, align 8, !tbaa !364
  br i1 %i.bz, label %bb.s, label %_ZN5ImGui13ClearActiveIDEv.exit.i

bb.s:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 7268
  store float 0.000000e+00, ptr %i.cc, align 4, !tbaa !365
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 7275
  store i8 0, ptr %i.cd, align 1, !tbaa !366
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bw, i64 7276
  store i8 0, ptr %i.ce, align 4, !tbaa !367
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 7316
  store i32 -1, ptr %i.cf, align 4, !tbaa !368
  store i32 0, ptr %i.bx, align 4, !tbaa !319
  br label %_ZN5ImGui13ClearActiveIDEv.exit.i

_ZN5ImGui13ClearActiveIDEv.exit.i:                ; preds = %bb.s, %bb.r
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 7273
  store i8 0, ptr %i.cg, align 1, !tbaa !369
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 7274
  store i8 0, ptr %i.ch, align 2, !tbaa !370
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bw, i64 7304
  store ptr null, ptr %i.ci, align 8, !tbaa !371
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bw, i64 7277
  store i8 0, ptr %i.cj, align 1, !tbaa !372
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bw, i64 7278
  store i8 0, ptr %i.ck, align 2, !tbaa !379
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bw, i64 7280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i8 0, i64 16, i1 false)
  br label %_ZN5ImGui11FocusWindowEP11ImGuiWindow.exit

_ZN5ImGui11FocusWindowEP11ImGuiWindow.exit:       ; preds = %_ZN5ImGui13ClearActiveIDEv.exit.i, %bb.q, %bb.p, %bb.o, %_ZN5ImGui21ClosePopupsOverWindowEP11ImGuiWindowb.exit, %_ZN5ImGuiL28NavRestoreLastChildNavWindowEP11ImGuiWindow.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5ImGui17SetNextWindowSizeERK6ImVec2i(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #31 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7432 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !599
  %i.d = or i32 %i.c, 2
  store i32 %i.d, ptr %i.b, align 8, !tbaa !599
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 7464
  %i.f = load i64, ptr %0, align 4, !tbaa !75
  store i64 %i.f, ptr %i.e, align 8, !tbaa !75
  %i.g = tail call i32 @llvm.umax.i32(i32 %1, i32 1)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 7440
  store i32 %i.g, ptr %i.h, align 8, !tbaa !604
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.ImVec2, align 8             ; 6 uses
  %4 = alloca %struct.ImVec2, align 8             ; 7 uses
  %5 = alloca %struct.ImVec2, align 8             ; 4 uses
  %6 = alloca %struct.ImRect, align 4             ; 8 uses
  %7 = alloca %struct.ImRect, align 4             ; 7 uses
  %8 = alloca %struct.ImVec2, align 8             ; 4 uses
  %9 = alloca %struct.ImVec2, align 8             ; 4 uses
  %10 = alloca %struct.ImVec2, align 8            ; 4 uses
  %11 = alloca %struct.ImVec2, align 4            ; 5 uses
  %12 = alloca %struct.ImVec2, align 4            ; 5 uses
  %13 = alloca %struct.ImVec2, align 8            ; 4 uses
  %14 = alloca %struct.ImVec2, align 8            ; 4 uses
  %15 = alloca %struct.ImVec2, align 8            ; 4 uses
  %16 = alloca %struct.ImVec2, align 8            ; 4 uses
  %17 = alloca %struct.ImVec2, align 8            ; 4 uses
  %18 = alloca %struct.ImVec2, align 8            ; 4 uses
  %19 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %20 = alloca %struct.ImRect, align 8            ; 8 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %21 = alloca %struct.ImRect, align 8            ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %.sroa.4856 = alloca %struct.ImGuiLastItemData, align 8 ; 4 uses
  %22 = alloca %struct.ImRect, align 8            ; 5 uses
  %23 = alloca %struct.ImRect, align 16           ; 8 uses
  %24 = alloca %struct.ImRect, align 8            ; 6 uses
  %i.f = alloca [4 x i32], align 16               ; 6 uses
  %25 = alloca %struct.ImRect, align 8            ; 11 uses
  %26 = alloca %struct.ImRect, align 16           ; 5 uses
  %27 = alloca %struct.ImRect, align 16           ; 6 uses
  %i.g = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 87 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 5472
  %i.i = load i8, ptr %0, align 1, !tbaa !80      ; 2 uses
  %.not3342.i.i = icmp eq i8 %i.i, 0
  br i1 %.not3342.i.i, label %_Z9ImHashStrPKcmj.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.c
  %i.j = phi i8 [ %.pre.i.i, %bb.c ], [ %i.i, %bb.a ] ; 2 uses
  %.144.i.i = phi ptr [ %i.k, %bb.c ], [ %0, %bb.a ] ; 2 uses
  %.243.i.i = phi i32 [ %i.x, %bb.c ], [ -1, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.144.i.i, i64 1 ; 2 uses
  %i.l = zext i8 %i.j to i32
  %i.m = icmp eq i8 %i.j, 35
  %.pre.i.i = load i8, ptr %i.k, align 1, !tbaa !80 ; 3 uses
  %i.n = icmp eq i8 %.pre.i.i, 35
  %or.cond51.i.i = select i1 %i.m, i1 %i.n, i1 false
  br i1 %or.cond51.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.144.i.i, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !80
  %i.q = icmp eq i8 %i.p, 35
  %spec.select35.i.i = select i1 %i.q, i32 -1, i32 %.243.i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i
  %.3.i.i = phi i32 [ %.243.i.i, %.lr.ph.i.i ], [ %spec.select35.i.i, %bb.b ] ; 2 uses
  %i.r = lshr i32 %.3.i.i, 8
  %i.s = and i32 %.3.i.i, 255
  %i.t = xor i32 %i.s, %i.l
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !94
  %i.x = xor i32 %i.r, %i.w                       ; 2 uses
  %.not33.i.i = icmp eq i8 %.pre.i.i, 0
  br i1 %.not33.i.i, label %_Z9ImHashStrPKcmj.exit.loopexit.i, label %.lr.ph.i.i

_Z9ImHashStrPKcmj.exit.loopexit.i:                ; preds = %bb.c
  %i.y = xor i32 %i.x, -1
  br label %_Z9ImHashStrPKcmj.exit.i

_Z9ImHashStrPKcmj.exit.i:                         ; preds = %_Z9ImHashStrPKcmj.exit.loopexit.i, %bb.a
  %.5.i.i = phi i32 [ 0, %bb.a ], [ %i.y, %_Z9ImHashStrPKcmj.exit.loopexit.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 7152 ; 2 uses
  %.val.i.i.i = load i32, ptr %i.z, align 8, !tbaa !198 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 7160
  %.val7.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !199 ; 3 uses
  %.not1.i.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not1.i.i.i.i, label %_ZL10LowerBoundR8ImVectorIN12ImGuiStorage16ImGuiStoragePairEEj.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_Z9ImHashStrPKcmj.exit.i
  %i.ab = sext i32 %.val.i.i.i to i64             ; 2 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.03.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ab, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.0152.i.i.i.i = phi ptr [ %.116.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.val7.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %i.ac = lshr i64 %.03.i.i.i.i, 1                ; 3 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %.0152.i.i.i.i, i64 %i.ac ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !197
  %i.af = icmp ult i32 %i.ae, %.5.i.i             ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.neg.i.i.i.i = xor i64 %i.ac, -1
  %i.ah = add i64 %.03.i.i.i.i, %.neg.i.i.i.i
  %.116.i.i.i.i = select i1 %i.af, ptr %i.ag, ptr %.0152.i.i.i.i ; 2 uses
  %.1.i.i.i.i = select i1 %i.af, i64 %i.ah, i64 %i.ac ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.1.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZL10LowerBoundR8ImVectorIN12ImGuiStorage16ImGuiStoragePairEEj.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !8

_ZL10LowerBoundR8ImVectorIN12ImGuiStorage16ImGuiStoragePairEEj.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_Z9ImHashStrPKcmj.exit.i
  %.pre-phi.i.i.i = phi i64 [ 0, %_Z9ImHashStrPKcmj.exit.i ], [ %i.ab, %.lr.ph.i.i.i.i ]
  %.015.lcssa.i.i.i.i = phi ptr [ %.val7.i.i.i, %_Z9ImHashStrPKcmj.exit.i ], [ %.116.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ai = getelementptr inbounds [16 x i8], ptr %.val7.i.i.i, i64 %.pre-phi.i.i.i
  %i.aj = icmp eq ptr %.015.lcssa.i.i.i.i, %i.ai
  br i1 %i.aj, label %_ZN5ImGui8MemAllocEm.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZL10LowerBoundR8ImVectorIN12ImGuiStorage16ImGuiStoragePairEEj.exit.i.i.i
  %i.ak = load i32, ptr %.015.lcssa.i.i.i.i, align 8, !tbaa !197
  %.not.i.i.i = icmp eq i32 %i.ak, %.5.i.i
  br i1 %.not.i.i.i, label %_ZN5ImGui16FindWindowByNameEPKc.exit, label %_ZN5ImGui8MemAllocEm.exit.i

_ZN5ImGui16FindWindowByNameEPKc.exit:             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %.015.lcssa.i.i.i.i, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !80 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_ZN5ImGui8MemAllocEm.exit.i, label %bb.ag

_ZN5ImGui8MemAllocEm.exit.i:                      ; preds = %_ZL10LowerBoundR8ImVectorIN12ImGuiStorage16ImGuiStoragePairEEj.exit.i.i.i, %bb.d, %_ZN5ImGui16FindWindowByNameEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #39
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 944 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !180
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.ao, align 8, !tbaa !180
  %i.ar = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !181
  %i.as = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !181
  %i.at = tail call noundef ptr %i.ar(i64 noundef 928, ptr noundef %i.as), !inline_history !979 ; 25 uses
  tail call void @_ZN11ImGuiWindowC2EP12ImGuiContextPKc(ptr noundef nonnull align 8 dereferenceable(921) %i.at, ptr noundef nonnull %i.g, ptr noundef nonnull readonly %0)
  store ptr %i.at, ptr %i.e, align 8, !tbaa !476
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 %2, ptr %i.au, align 4, !tbaa !392
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !315
  tail call void @_ZN12ImGuiStorage10SetVoidPtrEjPv(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i32 noundef %i.aw, ptr noundef nonnull %i.at)
  %i.ax = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 7680
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !396
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !398
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = load <2 x float>, ptr %i.bb, align 4, !tbaa !75
  %i.bd = fadd <2 x float> %i.bc, splat (float 6.000000e+01) ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  store <2 x float> %i.bd, ptr %i.be, align 8, !tbaa !75
  %i.bf = and i32 %2, 256
  %.not.i = icmp eq i32 %i.bf, 0
  %i.bg = ptrtoint ptr %i.at to i64               ; 2 uses
  br i1 %.not.i, label %bb.e, label %_ZN5ImGui18FindWindowSettingsEj.exit.thread.i

bb.e:                                             ; preds = %_ZN5ImGui8MemAllocEm.exit.i
  %i.bh = load i32, ptr %i.av, align 8, !tbaa !315
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 12472
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 12480
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !605 ; 3 uses
  %.not.i.i.i452 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i452, label %_ZN5ImGui18FindWindowSettingsEj.exit.thread.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  br label %.lr.ph.i.i453

.lr.ph.i.i453:                                    ; preds = %select.unfold.i.i, %.lr.ph.i.preheader.i
  %.0812.i.i = phi ptr [ %i.br, %select.unfold.i.i ], [ %i.bl, %.lr.ph.i.preheader.i ] ; 8 uses
  %i.bm = load i32, ptr %.0812.i.i, align 4, !tbaa !607
  %i.bn = icmp eq i32 %i.bm, %i.bh
  br i1 %i.bn, label %_ZN5ImGui18FindWindowSettingsEj.exit.i, label %select.unfold.i.i

select.unfold.i.i:                                ; preds = %.lr.ph.i.i453
  %i.bo = getelementptr inbounds i8, ptr %.0812.i.i, i64 -4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !94
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds i8, ptr %.0812.i.i, i64 %i.bq ; 2 uses
  %i.bs = load i32, ptr %i.bi, align 8, !tbaa !608
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds i8, ptr %i.bk, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bw = icmp eq ptr %i.br, %i.bv
  br i1 %i.bw, label %_ZN5ImGui18FindWindowSettingsEj.exit.thread.i, label %.lr.ph.i.i453

_ZN5ImGui18FindWindowSettingsEj.exit.i:           ; preds = %.lr.ph.i.i453
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 12480
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !605
  %i.bz = ptrtoint ptr %.0812.i.i to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = getelementptr inbounds nuw i8, ptr %i.at, i64 612
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !331
  %i.ce = getelementptr inbounds nuw i8, ptr %i.at, i64 180 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = and i32 %i.cf, -263173
  store i32 %i.cg, ptr %i.ce, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %.0812.i.i, i64 4
  %i.ci = load <2 x i16>, ptr %i.ch, align 4, !tbaa !193
  %i.cj = sitofp <2 x i16> %i.ci to <2 x float>   ; 2 uses
  store <2 x float> %i.cj, ptr %i.be, align 8, !tbaa !75
  %i.ck = getelementptr inbounds nuw i8, ptr %.0812.i.i, i64 8 ; 2 uses
  %i.cl = load i16, ptr %i.ck, align 4, !tbaa !609
  %i.cm = icmp sgt i16 %i.cl, 0
  br i1 %i.cm, label %bb.f, label %_ZL19ApplyWindowSettingsP11ImGuiWindowP19ImGuiWindowSettings.exit.i

bb.f:                                             ; preds = %_ZN5ImGui18FindWindowSettingsEj.exit.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.0812.i.i, i64 10
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !610
  %i.cp = icmp sgt i16 %i.co, 0
  br i1 %i.cp, label %bb.g, label %_ZL19ApplyWindowSettingsP11ImGuiWindowP19ImGuiWindowSettings.exit.i

bb.g:                                             ; preds = %bb.f
  %i.cq = load <2 x i16>, ptr %i.ck, align 4, !tbaa !193
  %i.cr = uitofp nneg <2 x i16> %i.cq to <2 x float> ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  store <2 x float> %i.cr, ptr %i.cs, align 8, !tbaa !75
  %i.ct = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store <2 x float> %i.cr, ptr %i.ct, align 8, !tbaa !75
  br label %_ZL19ApplyWindowSettingsP11ImGuiWindowP19ImGuiWindowSettings.exit.i

_ZL19ApplyWindowSettingsP11ImGuiWindowP19ImGuiWindowSettings.exit.i: ; preds = %bb.g, %bb.f, %_ZN5ImGui18FindWindowSettingsEj.exit.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.0812.i.i, i64 12
  %i.cv = load i8, ptr %i.cu, align 4, !tbaa !611, !range !216, !noundef !217
  %i.cw = getelementptr inbounds nuw i8, ptr %i.at, i64 145
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !595
  br label %_ZN5ImGui18FindWindowSettingsEj.exit.thread.i

_ZN5ImGui18FindWindowSettingsEj.exit.thread.i:    ; preds = %select.unfold.i.i, %_ZL19ApplyWindowSettingsP11ImGuiWindowP19ImGuiWindowSettings.exit.i, %bb.e, %_ZN5ImGui8MemAllocEm.exit.i
  %.in.i = phi <2 x float> [ %i.bd, %_ZN5ImGui8MemAllocEm.exit.i ], [ %i.bd, %bb.e ], [ %i.cj, %_ZL19ApplyWindowSettingsP11ImGuiWindowP19ImGuiWindowSettings.exit.i ], [ %i.bd, %select.unfold.i.i ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5ImGui5BeginEPKcPbi:bb.a

bb.ah:                                            ; preds = %bb.ag
  %i.he = getelementptr inbounds nuw i8, ptr %i.g, i64 7069
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !603, !range !216, !noundef !217
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.hg = phi i8 [ 0, %bb.ag ], [ %i.hf, %bb.ah ]
  %i.hh = getelementptr inbounds nuw i8, ptr %.01057, i64 150
  store i8 %i.hg, ptr %i.hh, align 2, !tbaa !991
  %i.hi = add nsw i32 %i.gy, -1
  %i.hj = icmp slt i32 %i.ha, %i.hi               ; 3 uses
  %i.hk = and i32 %spec.select, 67108864
  %.not336 = icmp eq i32 %i.hk, 0
  br i1 %.not336, label %bb.aj, label %.split

.split:                                           ; preds = %bb.ai
  %i.hl = getelementptr inbounds nuw i8, ptr %i.g, i64 7656
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !516
  %i.hn = getelementptr inbounds nuw i8, ptr %i.g, i64 7648
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !484
  %i.hp = sext i32 %i.hm to i64
  %i.hq = getelementptr inbounds [48 x i8], ptr %i.ho, i64 %i.hp ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.01057, i64 164
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !508
  %i.ht = load i32, ptr %i.hq, align 8, !tbaa !511
  %i.hu = icmp ne i32 %i.hs, %i.ht
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !514
  %i.hx = icmp ne ptr %.01057, %i.hw
  %i.hy = or i1 %i.hu, %i.hx
  %i.hz = or i1 %i.hj, %i.hy                      ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.01057, i64 148 ; 3 uses
  %i.ib = zext i1 %i.hz to i8
  store i8 %i.ib, ptr %i.ia, align 4, !tbaa !507
  br i1 %i.hz, label %bb.ak, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.ic = getelementptr inbounds nuw i8, ptr %.01057, i64 148 ; 3 uses
  %i.id = zext i1 %i.hj to i8
  store i8 %i.id, ptr %i.ic, align 4, !tbaa !507
  br i1 %i.hj, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.split, %bb.aj
  %i.ie = phi ptr [ %i.ia, %.split ], [ %i.ic, %bb.aj ]
  %i.if = getelementptr inbounds nuw i8, ptr %.01057, i64 180 ; 2 uses
  %i.ig = load i32, ptr %i.if, align 4
  %i.ih = or i32 %i.ig, 526344
  store i32 %i.ih, ptr %i.if, align 4
  br label %bb.al

bb.al:                                            ; preds = %.split, %bb.ak, %bb.aj
  %i.ii = phi ptr [ %i.ia, %.split ], [ %i.ie, %bb.ak ], [ %i.ic, %bb.aj ]
  %.0308.in1064 = phi i1 [ false, %.split ], [ true, %bb.ak ], [ false, %bb.aj ] ; 4 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.01057, i64 12 ; 2 uses
  br i1 %.not335, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i32 %spec.select, ptr %i.ij, align 4, !tbaa !392
  store i32 %i.gy, ptr %i.gz, align 8, !tbaa !328
  %i.ik = getelementptr inbounds nuw i8, ptr %i.g, i64 7048
  %i.il = load double, ptr %i.ik, align 8, !tbaa !426
  %i.im = fptrunc double %i.il to float
  %i.in = getelementptr inbounds nuw i8, ptr %.01057, i64 564
  store float %i.im, ptr %i.in, align 4, !tbaa !329
  %i.io = getelementptr inbounds nuw i8, ptr %.01057, i64 156
  store i16 0, ptr %i.io, align 4, !tbaa !616
  %i.ip = getelementptr inbounds nuw i8, ptr %i.g, i64 7168 ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !430 ; 2 uses
  %i.ir = add nsw i32 %i.iq, 1
  store i32 %i.ir, ptr %i.ip, align 8, !tbaa !430
  %i.is = trunc i32 %i.iq to i16
  %i.it = getelementptr inbounds nuw i8, ptr %.01057, i64 158
  store i16 %i.is, ptr %i.it, align 2, !tbaa !617
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.iu = load i32, ptr %i.ij, align 4, !tbaa !392
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.1 = phi i32 [ %spec.select, %bb.am ], [ %i.iu, %bb.an ] ; 32 uses
  %i.iv = load i32, ptr %i.hb, align 8, !tbaa !479 ; 3 uses
  %i.iw = icmp eq i32 %i.iv, 0
  br i1 %i.iw, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ix = getelementptr inbounds nuw i8, ptr %i.g, i64 7144
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !477
  %i.iz = sext i32 %i.iv to i64
  %i.ja = getelementptr [88 x i8], ptr %i.iy, i64 %i.iz
  %i.jb = getelementptr i8, ptr %i.ja, i64 -88
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !620
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %i.jd = phi ptr [ %i.jc, %bb.ap ], [ null, %bb.ao ]
  br i1 %.not335, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.je = and i32 %.1, 83886080
  %.not337 = icmp eq i32 %i.je, 0
  %i.jf = select i1 %.not337, ptr null, ptr %i.jd
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.jg = getelementptr inbounds nuw i8, ptr %.01057, i64 824
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !518
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.ji = phi ptr [ %i.jf, %bb.ar ], [ %i.jh, %bb.as ] ; 22 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.01057, i64 200 ; 12 uses
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !343
  %i.jl = icmp eq i32 %i.jk, 0
  br i1 %i.jl, label %bb.au, label %bb.ba

bb.au:                                            ; preds = %bb.at
  %i.jm = getelementptr inbounds nuw i8, ptr %.01057, i64 8
  %i.jn = getelementptr inbounds nuw i8, ptr %.01057, i64 204 ; 2 uses
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !317
  %i.jp = icmp eq i32 %i.jo, 0
  br i1 %i.jp, label %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i, label %._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i

._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i:      ; preds = %bb.au
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.01057, i64 208
  %.pre.i454 = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !318
  br label %_ZN8ImVectorIjE9push_backERKj.exit

_ZNK8ImVectorIjE14_grow_capacityEi.exit.i:        ; preds = %bb.au
  %i.jq = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %.not.i.i.i456 = icmp eq ptr %i.jq, null
  br i1 %.not.i.i.i456, label %_ZN5ImGui8MemAllocEm.exit.i.i, label %bb.av

bb.av:                                            ; preds = %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 944 ; 2 uses
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !180
  %i.jt = add nsw i32 %i.js, 1
  store i32 %i.jt, ptr %i.jr, align 8, !tbaa !180
  br label %_ZN5ImGui8MemAllocEm.exit.i.i

_ZN5ImGui8MemAllocEm.exit.i.i:                    ; preds = %bb.av, %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i
  %i.ju = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !181
  %i.jv = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !181
  %i.jw = call noundef ptr %i.ju(i64 noundef 32, ptr noundef %i.jv), !inline_history !43 ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.01057, i64 208 ; 3 uses
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !318 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.jy, null
  br i1 %.not6.i.i, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %_ZN5ImGui8MemAllocEm.exit.i.i
  %i.jz = load i32, ptr %i.jj, align 8, !tbaa !316
  %i.ka = sext i32 %i.jz to i64
  %i.kb = shl nsw i64 %i.ka, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.jw, ptr nonnull align 4 %i.jy, i64 %i.kb, i1 false)
  %i.kc = load ptr, ptr %i.jx, align 8, !tbaa !318 ; 2 uses
  %.not.i7.i.i = icmp eq ptr %i.kc, null
  br i1 %.not.i7.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.kd = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.kd, null
  br i1 %.not4.i.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 944 ; 2 uses
  %i.kf = load i32, ptr %i.ke, align 8, !tbaa !180
  %i.kg = add nsw i32 %i.kf, -1
  store i32 %i.kg, ptr %i.ke, align 8, !tbaa !180
  br label %_ZN5ImGui7MemFreeEPv.exit.i.i

_ZN5ImGui7MemFreeEPv.exit.i.i:                    ; preds = %bb.ay, %bb.ax, %bb.aw
  %i.kh = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !181
  %i.ki = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !181
  call void %i.kh(ptr noundef %i.kc, ptr noundef %i.ki), !inline_history !44
  br label %bb.az

bb.az:                                            ; preds = %_ZN5ImGui7MemFreeEPv.exit.i.i, %_ZN5ImGui8MemAllocEm.exit.i.i
  store ptr %i.jw, ptr %i.jx, align 8, !tbaa !318
  store i32 8, ptr %i.jn, align 4, !tbaa !317
  %.pre3.i = load i32, ptr %i.jj, align 8, !tbaa !316
  %i.kj = sext i32 %.pre3.i to i64
  br label %_ZN8ImVectorIjE9push_backERKj.exit

_ZN8ImVectorIjE9push_backERKj.exit:               ; preds = %._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i, %bb.az
  %i.kk = phi i64 [ 0, %._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i ], [ %i.kj, %bb.az ]
  %i.kl = phi ptr [ %.pre.i454, %._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i ], [ %i.jw, %bb.az ]
  %i.km = getelementptr inbounds [4 x i8], ptr %i.kl, i64 %i.kk
  %i.kn = load i32, ptr %i.jm, align 8
  store i32 %i.kn, ptr %i.km, align 4
  %i.ko = load i32, ptr %i.jj, align 8, !tbaa !316
  %i.kp = add nsw i32 %i.ko, 1
  store i32 %i.kp, ptr %i.jj, align 8, !tbaa !316
  %.pre = load i32, ptr %i.hb, align 8, !tbaa !479
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN8ImVectorIjE9push_backERKj.exit, %bb.at
  %i.kq = phi i32 [ %.pre, %_ZN8ImVectorIjE9push_backERKj.exit ], [ %i.iv, %bb.at ] ; 6 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.g, i64 7184 ; 2 uses
  store ptr %.01057, ptr %i.kr, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4856)
  %i.ks = getelementptr inbounds nuw i8, ptr %i.g, i64 7368 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %.sroa.4856, ptr noundef nonnull align 8 dereferenceable(60) %i.ks, i64 60, i1 false), !tbaa.struct !621
  %i.kt = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 10 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 7184
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !214
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 200
  %i.kx = load i32, ptr %i.kw, align 8, !tbaa !343
  %i.ky = trunc i32 %i.kx to i16
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kt, i64 7544
  %i.la = load i32, ptr %i.kz, align 8, !tbaa !622
  %i.lb = trunc i32 %i.la to i16
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kt, i64 7560
  %i.ld = load i32, ptr %i.lc, align 8, !tbaa !623
  %i.le = trunc i32 %i.ld to i16
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kt, i64 7576
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !624
  %i.lh = trunc i32 %i.lg to i16
  %i.li = getelementptr inbounds nuw i8, ptr %i.kt, i64 7592
  %i.lj = load i32, ptr %i.li, align 8, !tbaa !625
  %i.lk = trunc i32 %i.lj to i16
  %i.ll = getelementptr inbounds nuw i8, ptr %i.kt, i64 7624
  %i.lm = load i32, ptr %i.ll, align 8, !tbaa !626
  %i.ln = trunc i32 %i.lm to i16
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kt, i64 7608
  %i.lp = load i32, ptr %i.lo, align 8, !tbaa !627
  %i.lq = trunc i32 %i.lp to i16
  %i.lr = getelementptr inbounds nuw i8, ptr %i.kt, i64 7656
  %i.ls = load i32, ptr %i.lr, align 8, !tbaa !516
  %i.lt = trunc i32 %i.ls to i16
  %i.lu = getelementptr inbounds nuw i8, ptr %i.kt, i64 12372
  %i.lv = load i16, ptr %i.lu, align 4, !tbaa !628
  %i.lw = getelementptr inbounds nuw i8, ptr %i.g, i64 7140 ; 2 uses
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !478
  %i.ly = icmp eq i32 %i.kq, %i.lx
  br i1 %i.ly, label %bb.bb, label %._ZN8ImVectorI20ImGuiWindowStackDataE7reserveEi.exit_crit_edge.i

._ZN8ImVectorI20ImGuiWindowStackDataE7reserveEi.exit_crit_edge.i: ; preds = %bb.ba
  %.phi.trans.insert.i457 = getelementptr inbounds nuw i8, ptr %i.g, i64 7144
  %.pre.i458 = load ptr, ptr %.phi.trans.insert.i457, align 8, !tbaa !477
  br label %_ZN8ImVectorI20ImGuiWindowStackDataE9push_backERKS0_.exit

bb.bb:                                            ; preds = %bb.ba
  %i.lz = add nsw i32 %i.kq, 1
  %.not.i.i459 = icmp eq i32 %i.kq, 0
  br i1 %.not.i.i459, label %_ZN5ImGui8MemAllocEm.exit.i.i461, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ma = sdiv i32 %i.kq, 2
  %i.mb = add nsw i32 %i.ma, %i.kq
  br label %_ZN5ImGui8MemAllocEm.exit.i.i461

_ZN5ImGui8MemAllocEm.exit.i.i461:                 ; preds = %bb.bc, %bb.bb
  %i.mc = phi i32 [ %i.mb, %bb.bc ], [ 8, %bb.bb ]
  %i.md = call noundef i32 @llvm.smax.i32(i32 %i.mc, i32 %i.lz) ; 2 uses
  %i.me = sext i32 %i.md to i64
  %i.mf = mul nsw i64 %i.me, 88
  %i.mg = getelementptr inbounds nuw i8, ptr %i.kt, i64 944 ; 2 uses
  %i.mh = load i32, ptr %i.mg, align 8, !tbaa !180
  %i.mi = add nsw i32 %i.mh, 1
  store i32 %i.mi, ptr %i.mg, align 8, !tbaa !180
  %i.mj = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !181
  %i.mk = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !181
  %i.ml = call noundef ptr %i.mj(i64 noundef %i.mf, ptr noundef %i.mk), !inline_history !982 ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.g, i64 7144 ; 3 uses
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !477 ; 2 uses
  %.not6.i.i462 = icmp eq ptr %i.mn, null
  br i1 %.not6.i.i462, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %_ZN5ImGui8MemAllocEm.exit.i.i461
  %i.mo = load i32, ptr %i.hb, align 8, !tbaa !479
  %i.mp = sext i32 %i.mo to i64
  %i.mq = mul nsw i64 %i.mp, 88
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ml, ptr nonnull align 8 %i.mn, i64 %i.mq, i1 false)
  %i.mr = load ptr, ptr %i.mm, align 8, !tbaa !477 ; 2 uses
  %.not.i7.i.i463 = icmp eq ptr %i.mr, null
  br i1 %.not.i7.i.i463, label %_ZN5ImGui7MemFreeEPv.exit.i.i465, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ms = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %.not4.i.i.i464 = icmp eq ptr %i.ms, null
  br i1 %.not4.i.i.i464, label %_ZN5ImGui7MemFreeEPv.exit.i.i465, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 944 ; 2 uses
  %i.mu = load i32, ptr %i.mt, align 8, !tbaa !180
  %i.mv = add nsw i32 %i.mu, -1
  store i32 %i.mv, ptr %i.mt, align 8, !tbaa !180
  br label %_ZN5ImGui7MemFreeEPv.exit.i.i465

_ZN5ImGui7MemFreeEPv.exit.i.i465:                 ; preds = %bb.bf, %bb.be, %bb.bd
  %i.mw = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !181
  %i.mx = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !181
  call void %i.mw(ptr noundef %i.mr, ptr noundef %i.mx), !inline_history !983
  br label %bb.bg

bb.bg:                                            ; preds = %_ZN5ImGui7MemFreeEPv.exit.i.i465, %_ZN5ImGui8MemAllocEm.exit.i.i461
  store ptr %i.ml, ptr %i.mm, align 8, !tbaa !477
  store i32 %i.md, ptr %i.lw, align 4, !tbaa !478
  %.pre3.i466 = load i32, ptr %i.hb, align 8, !tbaa !479
  br label %_ZN8ImVectorI20ImGuiWindowStackDataE9push_backERKS0_.exit

_ZN8ImVectorI20ImGuiWindowStackDataE9push_backERKS0_.exit: ; preds = %._ZN8ImVectorI20ImGuiWindowStackDataE7reserveEi.exit_crit_edge.i, %bb.bg
  %i.my = phi i32 [ %i.kq, %._ZN8ImVectorI20ImGuiWindowStackDataE7reserveEi.exit_crit_edge.i ], [ %.pre3.i466, %bb.bg ]
  %i.mz = phi ptr [ %.pre.i458, %._ZN8ImVectorI20ImGuiWindowStackDataE7reserveEi.exit_crit_edge.i ], [ %i.ml, %bb.bg ]
  %i.na = sext i32 %i.my to i64
  %i.nb = getelementptr inbounds [88 x i8], ptr %i.mz, i64 %i.na ; 11 uses
  store ptr %.01057, ptr %i.nb, align 8
  %.sroa.4855.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %.sroa.4855.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(60) %.sroa.4856, i64 60, i1 false)
  %.sroa.6856.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nb, i64 68
  store i16 %i.ky, ptr %.sroa.6856.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nb, i64 70
  store i16 %i.lb, ptr %.sroa.7.0..sroa_idx, align 2
  %.sroa.8857.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nb, i64 72
  store i16 %i.le, ptr %.sroa.8857.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nb, i64 74
  store i16 %i.lh, ptr %.sroa.9.0..sroa_idx, align 2
  %.sroa.10858.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nb, i64 76
  store i16 %i.lk, ptr %.sroa.10858.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nb, i64 78
  store i16 %i.ln, ptr %.sroa.11.0..sroa_idx, align 2
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nb, i64 80
  store i16 %i.lq, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nb, i64 82
  store i16 %i.lt, ptr %.sroa.13.0..sroa_idx, align 2
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nb, i64 84
  store i16 %i.lv, ptr %.sroa.14.0..sroa_idx, align 4
  %i.nc = load i32, ptr %i.hb, align 8, !tbaa !479
  %i.nd = add nsw i32 %i.nc, 1
  store i32 %i.nd, ptr %i.hb, align 8, !tbaa !479
  store ptr null, ptr %i.kr, align 8, !tbaa !214
  %i.ne = and i32 %.1, 67108864
  %i.nf = icmp ne i32 %i.ne, 0                    ; 7 uses
  br i1 %i.nf, label %bb.bh, label %bb.bp

bb.bh:                                            ; preds = %_ZN8ImVectorI20ImGuiWindowStackDataE9push_backERKS0_.exit
  %i.ng = getelementptr inbounds nuw i8, ptr %i.g, i64 7656 ; 5 uses
  %i.nh = load i32, ptr %i.ng, align 8, !tbaa !516 ; 6 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.g, i64 7648
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !484
  %i.nk = sext i32 %i.nh to i64                   ; 2 uses
  %i.nl = getelementptr inbounds [48 x i8], ptr %i.nj, i64 %i.nk ; 3 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  store ptr %.01057, ptr %i.nm, align 8, !tbaa !514
  %i.nn = getelementptr inbounds nuw i8, ptr %i.g, i64 7660 ; 2 uses
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !485
  %i.np = icmp eq i32 %i.nh, %i.no
  br i1 %i.np, label %bb.bi, label %._ZN8ImVectorI14ImGuiPopupDataE7reserveEi.exit_crit_edge.i

._ZN8ImVectorI14ImGuiPopupDataE7reserveEi.exit_crit_edge.i: ; preds = %bb.bh
  %.phi.trans.insert.i467 = getelementptr inbounds nuw i8, ptr %i.g, i64 7664
  %.pre.i468 = load ptr, ptr %.phi.trans.insert.i467, align 8, !tbaa !484
  br label %_ZN8ImVectorI14ImGuiPopupDataE9push_backERKS0_.exit

bb.bi:                                            ; preds = %bb.bh
  %i.nq = add nsw i32 %i.nh, 1
  %.not.i.i469 = icmp eq i32 %i.nh, 0
  br i1 %.not.i.i469, label %_ZNK8ImVectorI14ImGuiPopupDataE14_grow_capacityEi.exit.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.nr = sdiv i32 %i.nh, 2
  %i.ns = add nsw i32 %i.nr, %i.nh
  br label %_ZNK8ImVectorI14ImGuiPopupDataE14_grow_capacityEi.exit.i

_ZNK8ImVectorI14ImGuiPopupDataE14_grow_capacityEi.exit.i: ; preds = %bb.bj, %bb.bi
  %i.nt = phi i32 [ %i.ns, %bb.bj ], [ 8, %bb.bi ]
  %i.nu = call noundef i32 @llvm.smax.i32(i32 %i.nt, i32 %i.nq) ; 2 uses
  %i.nv = sext i32 %i.nu to i64
  %i.nw = mul nsw i64 %i.nv, 48
  %i.nx = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %.not.i.i.i470 = icmp eq ptr %i.nx, null
  br i1 %.not.i.i.i470, label %_ZN5ImGui8MemAllocEm.exit.i.i471, label %bb.bk

bb.bk:                                            ; preds = %_ZNK8ImVectorI14ImGuiPopupDataE14_grow_capacityEi.exit.i
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 944 ; 2 uses
  %i.nz = load i32, ptr %i.ny, align 8, !tbaa !180
  %i.oa = add nsw i32 %i.nz, 1
  store i32 %i.oa, ptr %i.ny, align 8, !tbaa !180
  br label %_ZN5ImGui8MemAllocEm.exit.i.i471

_ZN5ImGui8MemAllocEm.exit.i.i471:                 ; preds = %bb.bk, %_ZNK8ImVectorI14ImGuiPopupDataE14_grow_capacityEi.exit.i
  %i.ob = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !181
  %i.oc = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !181
  %i.od = call noundef ptr %i.ob(i64 noundef %i.nw, ptr noundef %i.oc), !inline_history !45 ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.g, i64 7664 ; 3 uses
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !484 ; 2 uses
  %.not6.i.i472 = icmp eq ptr %i.of, null
  br i1 %.not6.i.i472, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %_ZN5ImGui8MemAllocEm.exit.i.i471
  %i.og = load i32, ptr %i.ng, align 8, !tbaa !486
  %i.oh = sext i32 %i.og to i64
  %i.oi = mul nsw i64 %i.oh, 48
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.od, ptr nonnull align 8 %i.of, i64 %i.oi, i1 false)
  %i.oj = load ptr, ptr %i.oe, align 8, !tbaa !484 ; 2 uses
  %.not.i7.i.i473 = icmp eq ptr %i.oj, null
  br i1 %.not.i7.i.i473, label %_ZN5ImGui7MemFreeEPv.exit.i.i475, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ok = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %.not4.i.i.i474 = icmp eq ptr %i.ok, null
  br i1 %.not4.i.i.i474, label %_ZN5ImGui7MemFreeEPv.exit.i.i475, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 944 ; 2 uses
  %i.om = load i32, ptr %i.ol, align 8, !tbaa !180
  %i.on = add nsw i32 %i.om, -1
  store i32 %i.on, ptr %i.ol, align 8, !tbaa !180
  br label %_ZN5ImGui7MemFreeEPv.exit.i.i475

_ZN5ImGui7MemFreeEPv.exit.i.i475:                 ; preds = %bb.bn, %bb.bm, %bb.bl
  %i.oo = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !181
  %i.op = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !181
  call void %i.oo(ptr noundef %i.oj, ptr noundef %i.op), !inline_history !46
  br label %bb.bo

bb.bo:                                            ; preds = %_ZN5ImGui7MemFreeEPv.exit.i.i475, %_ZN5ImGui8MemAllocEm.exit.i.i471
  store ptr %i.od, ptr %i.oe, align 8, !tbaa !484
  store i32 %i.nu, ptr %i.nn, align 4, !tbaa !485
  %.pre3.i476 = load i32, ptr %i.ng, align 8, !tbaa !486
  %.pre1148 = sext i32 %.pre3.i476 to i64
  br label %_ZN8ImVectorI14ImGuiPopupDataE9push_backERKS0_.exit

_ZN8ImVectorI14ImGuiPopupDataE9push_backERKS0_.exit: ; preds = %._ZN8ImVectorI14ImGuiPopupDataE7reserveEi.exit_crit_edge.i, %bb.bo
  %.pre-phi = phi i64 [ %i.nk, %._ZN8ImVectorI14ImGuiPopupDataE7reserveEi.exit_crit_edge.i ], [ %.pre1148, %bb.bo ]
  %i.oq = phi ptr [ %.pre.i468, %._ZN8ImVectorI14ImGuiPopupDataE7reserveEi.exit_crit_edge.i ], [ %i.od, %bb.bo ]
  %i.or = getelementptr inbounds [48 x i8], ptr %i.oq, i64 %.pre-phi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.or, ptr noundef nonnull align 8 dereferenceable(48) %i.nl, i64 48, i1 false)
  %i.os = load i32, ptr %i.ng, align 8, !tbaa !486
  %i.ot = add nsw i32 %i.os, 1
  store i32 %i.ot, ptr %i.ng, align 8, !tbaa !486
  %i.ou = load i32, ptr %i.nl, align 8, !tbaa !511
  %i.ov = getelementptr inbounds nuw i8, ptr %.01057, i64 164
  store i32 %i.ou, ptr %i.ov, align 4, !tbaa !508
  br label %bb.bp

bb.bp:                                            ; preds = %_ZN8ImVectorI14ImGuiPopupDataE9push_backERKS0_.exit, %_ZN8ImVectorI20ImGuiWindowStackDataE9push_backERKS0_.exit
  br i1 %.not335, label %_ZN5ImGui30UpdateWindowParentAndRootLinksEP11ImGuiWindowiS1_.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ow = getelementptr inbounds nuw i8, ptr %.01057, i64 824
  store ptr %i.ji, ptr %i.ow, align 8, !tbaa !518
  %i.ox = getelementptr inbounds nuw i8, ptr %.01057, i64 856 ; 2 uses
  store ptr %.01057, ptr %i.ox, align 8, !tbaa !629
  %i.oy = getelementptr inbounds nuw i8, ptr %.01057, i64 848 ; 2 uses
  store ptr %.01057, ptr %i.oy, align 8, !tbaa !630
  %i.oz = getelementptr inbounds nuw i8, ptr %.01057, i64 840 ; 2 uses
  store ptr %.01057, ptr %i.oz, align 8, !tbaa !525
  %i.pa = getelementptr inbounds nuw i8, ptr %.01057, i64 832 ; 2 uses
  store ptr %.01057, ptr %i.pa, align 8, !tbaa !390
  %.not.i477 = icmp eq ptr %i.ji, null            ; 3 uses
  %i.pb = and i32 %.1, 50331648
  %i.pc = icmp ne i32 %i.pb, 16777216
  %or.cond29.not.i = or i1 %i.pc, %.not.i477
  br i1 %or.cond29.not.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ji, i64 832
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !390
  store ptr %i.pe, ptr %i.pa, align 8, !tbaa !390
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.not1132 = xor i1 %i.nf, true
  %or.cond30.i = or i1 %.not.i477, %.not1132
  br i1 %or.cond30.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ji, i64 840
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !525
  store ptr %i.pg, ptr %i.oz, align 8, !tbaa !525
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.ph = and i32 %.1, 134217728
  %.not26.i = icmp ne i32 %i.ph, 0
  %i.pi = and i32 %.1, 83886080
  %.not27.i = icmp eq i32 %i.pi, 0
  %i.pj = or i1 %.not26.i, %.not27.i
  %or.cond32.i = or i1 %i.pj, %.not.i477
  br i1 %or.cond32.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ji, i64 848
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !630
  store ptr %i.pl, ptr %i.oy, align 8, !tbaa !630
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.pm = getelementptr inbounds nuw i8, ptr %.01057, i64 12
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !392
  %i.po = and i32 %i.pn, 8388608
  %.not2834.i = icmp eq i32 %i.po, 0
  br i1 %.not2834.i, label %_ZN5ImGui30UpdateWindowParentAndRootLinksEP11ImGuiWindowiS1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bw, %.lr.ph.i
  %i.pp = phi ptr [ %i.pr, %.lr.ph.i ], [ %.01057, %bb.bw ]
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 824
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !518 ; 3 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 12
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !392
  %i.pu = and i32 %i.pt, 8388608
  %.not28.i = icmp eq i32 %i.pu, 0
  br i1 %.not28.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !47

._crit_edge.i:                                    ; preds = %.lr.ph.i
  store ptr %i.pr, ptr %i.ox, align 8, !tbaa !629
  br label %_ZN5ImGui30UpdateWindowParentAndRootLinksEP11ImGuiWindowiS1_.exit

end_hunk_1
begin_hunk_2_@_ZN5ImGui5BeginEPKcPbi:bb.a
  %i.aiw = fsub <2 x float> %i.aiv, %i.ait        ; 3 uses
  %i.aix = shufflevector <2 x float> %i.aiw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.aiy = load <2 x float>, ptr %i.aik, align 8, !tbaa !75
  %i.aiz = fadd <2 x float> %i.aiw, %i.aiy
  store <2 x float> %i.aiz, ptr %i.aik, align 8, !tbaa !75
  %i.aja = load <2 x float>, ptr %i.ail, align 8, !tbaa !75
  %i.ajb = fadd <2 x float> %i.aiw, %i.aja
  store <2 x float> %i.ajb, ptr %i.ail, align 8, !tbaa !75
  %i.ajc = load <4 x float>, ptr %i.aim, align 8, !tbaa !75
  %i.ajd = fadd <4 x float> %i.aix, %i.ajc
  store <4 x float> %i.ajd, ptr %i.aim, align 8, !tbaa !75
  br label %bb.gs

.critedge392:                                     ; preds = %bb.gk, %bb.gl
  %i.aje = and i32 %.1, 268435456
  %.not359 = icmp eq i32 %i.aje, 0
  br i1 %.not359, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %.critedge392
  %i.ajf = call <2 x float> @_ZN5ImGui25FindBestWindowPosForPopupEP11ImGuiWindow(ptr noundef nonnull %.01057)
  %i.ajg = getelementptr inbounds nuw i8, ptr %.01057, i64 16
  store <2 x float> %i.ajf, ptr %i.ajg, align 8, !tbaa !75
  br label %bb.gs

bb.go:                                            ; preds = %.critedge392
  %.not1135 = xor i1 %i.nf, true
  %or.cond11 = or i1 %.0317.shrunk, %.not1135
  %or.cond13.not = select i1 %or.cond11, i1 true, i1 %i.wt
  br i1 %or.cond13.not, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.ajh = call <2 x float> @_ZN5ImGui25FindBestWindowPosForPopupEP11ImGuiWindow(ptr noundef nonnull %.01057)
  %i.aji = getelementptr inbounds nuw i8, ptr %.01057, i64 16
  store <2 x float> %i.ajh, ptr %i.aji, align 8, !tbaa !75
  br label %bb.gs

bb.gq:                                            ; preds = %bb.go
  %or.cond15 = or i1 %.not347, %.0317.shrunk
  %or.cond17 = select i1 %or.cond15, i1 true, i1 %i.ue
  br i1 %or.cond17, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.ajj = call <2 x float> @_ZN5ImGui25FindBestWindowPosForPopupEP11ImGuiWindow(ptr noundef nonnull %.01057)
  %i.ajk = getelementptr inbounds nuw i8, ptr %.01057, i64 16
  store <2 x float> %i.ajj, ptr %i.ajk, align 8, !tbaa !75
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gn, %bb.gq, %bb.gr, %bb.gp, %bb.gm
  %i.ajl = load ptr, ptr @GImGui, align 8, !tbaa !99
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajl, i64 7680
  %i.ajn = load ptr, ptr %i.ajm, align 8, !tbaa !396
  %i.ajo = load ptr, ptr %i.ajn, align 8, !tbaa !398 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #39
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajo, i64 4
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajo, i64 12
  %i.ajr = load <2 x float>, ptr %i.ajp, align 4, !tbaa !75 ; 3 uses
  %i.ajs = load <2 x float>, ptr %i.ajq, align 4, !tbaa !75
  %i.ajt = fadd <2 x float> %i.ajr, %i.ajs        ; 2 uses
  store <2 x float> %i.ajr, ptr %23, align 16
  %i.aju = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  store <2 x float> %i.ajt, ptr %i.aju, align 8
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ajo, i64 20
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajo, i64 28
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.g, i64 5640
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.g, i64 5648
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #39
  %i.ajz = load <2 x float>, ptr %i.ajv, align 4, !tbaa !75 ; 2 uses
  %i.aka = load <2 x float>, ptr %i.ajw, align 4, !tbaa !75
  %i.akb = fadd <2 x float> %i.ajz, %i.aka
  %i.akc = load <2 x float>, ptr %i.ajx, align 8, !tbaa !75 ; 2 uses
  %i.akd = load <2 x float>, ptr %i.ajy, align 8, !tbaa !75 ; 2 uses
  %i.ake = fcmp oge <2 x float> %i.akc, %i.akd
  %i.akf = select <2 x i1> %i.ake, <2 x float> %i.akc, <2 x float> %i.akd ; 2 uses
  %i.akg = fadd <2 x float> %i.ajz, %i.akf        ; 5 uses
  %i.akh = fsub <2 x float> %i.akb, %i.akf
  store <2 x float> %i.akg, ptr %24, align 8, !tbaa !75
  %i.aki = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  store <2 x float> %i.akh, ptr %i.aki, align 8, !tbaa !75
  %brmerge394 = select i1 %.0317.shrunk, i1 true, i1 %.not346.not1076
  br i1 %brmerge394, label %bb.gw, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.akj = getelementptr inbounds nuw i8, ptr %.01057, i64 168
  %i.akk = load i8, ptr %i.akj, align 8, !tbaa !326
  %i.akl = icmp slt i8 %i.akk, 1
  br i1 %i.akl, label %bb.gu, label %bb.gw

bb.gu:                                            ; preds = %bb.gt
  %i.akm = getelementptr inbounds nuw i8, ptr %.01057, i64 169
  %i.akn = load i8, ptr %i.akm, align 1, !tbaa !325
  %i.ako = icmp slt i8 %i.akn, 1
  %i.akp = fcmp ogt <2 x float> %i.ajt, %i.ajr    ; 2 uses
  %i.akq = extractelement <2 x i1> %i.akp, i64 0
  %or.cond1319 = select i1 %i.ako, i1 %i.akq, i1 false
  %i.akr = extractelement <2 x i1> %i.akp, i64 1
  %or.cond1320 = select i1 %or.cond1319, i1 %i.akr, i1 false
  br i1 %or.cond1320, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %bb.gu
  call fastcc void @_ZL15ClampWindowRectP11ImGuiWindowRK6ImRect(ptr noundef nonnull %.01057, ptr noundef nonnull align 4 dereferenceable(16) %24)
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gs, %bb.gv, %bb.gu, %bb.gt
  %i.aks = getelementptr inbounds nuw i8, ptr %.01057, i64 16 ; 22 uses
  %i.akt = getelementptr i8, ptr %.01057, i64 20  ; 7 uses
  %i.aku = load <2 x float>, ptr %i.aks, align 8, !tbaa !75
  %i.akv = fptosi <2 x float> %i.aku to <2 x i32>
  %i.akw = sitofp <2 x i32> %i.akv to <2 x float>
  store <2 x float> %i.akw, ptr %i.aks, align 8, !tbaa !75
  %i.akx = and i32 %.1, 201326592
  %or.cond395 = icmp eq i32 %i.akx, 67108864
  %. = select i1 %or.cond395, i64 5524, i64 5488
  %.sink1321 = select i1 %.not346, i64 %., i64 5516
  %i.aky = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sink1321
  %i.akz = load float, ptr %i.aky, align 4, !tbaa !75 ; 2 uses
  %i.ala = getelementptr inbounds nuw i8, ptr %.01057, i64 72 ; 4 uses
  store float %i.akz, ptr %i.ala, align 8, !tbaa !1009
  %i.alb = and i32 %.1, 4096
  %.not363 = icmp ne i32 %i.alb, 0
  %not..0308.in1064 = xor i1 %.0308.in1064, true
  %or.cond396 = select i1 %not..0308.in1064, i1 true, i1 %.not363 ; 2 uses
  %brmerge410 = or i1 %i.nf, %or.cond396
  %not.or.cond396 = xor i1 %or.cond396, true
  %i.alc = icmp eq i32 %i.ud, 0
  %spec.select1094 = select i1 %brmerge410, i1 %not.or.cond396, i1 %i.alc ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.ald = getelementptr inbounds nuw i8, ptr %i.g, i64 204
  %i.ale = load i8, ptr %i.ald, align 4, !tbaa !519, !range !216, !noundef !217
  %i.alf = trunc nuw i8 %i.ale to i1
  %i.alg = select i1 %i.alf, i32 2, i32 1         ; 2 uses
  %i.alh = getelementptr inbounds nuw i8, ptr %i.g, i64 6528 ; 4 uses
  %i.ali = load float, ptr %i.alh, align 8, !tbaa !294 ; 2 uses
  %i.alj = fmul float %i.ali, 1.100000e+00        ; 2 uses
  %i.alk = fadd float %i.akz, 1.000000e+00        ; 2 uses
  %i.all = call float @llvm.fmuladd.f32(float %i.ali, float 2.000000e-01, float %i.alk) ; 2 uses
  %i.alm = fcmp oge float %i.alj, %i.all
  %i.aln = select i1 %i.alm, float %i.alj, float %i.all
  %i.alo = fptosi float %i.aln to i32
  %i.alp = sitofp i32 %i.alo to float             ; 2 uses
  %i.alq = load i8, ptr %i.adq, align 1, !tbaa !595, !range !216, !noundef !217
  %i.alr = trunc nuw i8 %i.alq to i1
  br i1 %i.alr, label %.thread1299, label %bb.gx

.thread1299:                                      ; preds = %bb.gw
  %i.als = getelementptr inbounds nuw i8, ptr %.01057, i64 152 ; 2 uses
  store i8 -1, ptr %i.als, align 8, !tbaa !1010
  br label %bb.jm

bb.gx:                                            ; preds = %bb.gw
  %i.alt = bitcast <2 x float> %i.abu to i64
  %i.alu = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 15 uses
  %i.alv = load i32, ptr %i.aes, align 4, !tbaa !392
  %i.alw = and i32 %i.alv, 66
  %or.cond144.i = icmp eq i32 %i.alw, 0
  br i1 %or.cond144.i, label %bb.gy, label %.thread1303

bb.gy:                                            ; preds = %bb.gx
  %i.alx = getelementptr inbounds nuw i8, ptr %.01057, i64 168
  %i.aly = load i8, ptr %i.alx, align 8, !tbaa !326
  %i.alz = icmp sgt i8 %i.aly, 0
  br i1 %i.alz, label %.thread1303, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.ama = getelementptr inbounds nuw i8, ptr %.01057, i64 169
  %i.amb = load i8, ptr %i.ama, align 1, !tbaa !325
  %i.amc = icmp sgt i8 %i.amb, 0
  br i1 %i.amc, label %.thread1303, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.amd = getelementptr inbounds nuw i8, ptr %.01057, i64 143
  %i.ame = load i8, ptr %i.amd, align 1, !tbaa !391, !range !216, !noundef !217
  %i.amf = icmp eq i8 %i.ame, 0
  br i1 %i.amf, label %.thread1303, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.amg = getelementptr inbounds nuw i8, ptr %i.alu, i64 204
  %i.amh = load i8, ptr %i.amg, align 4, !tbaa !519, !range !216, !noundef !217 ; 2 uses
  %i.ami = getelementptr inbounds nuw i8, ptr %i.alu, i64 6528
  %i.amj = load float, ptr %i.ami, align 8, !tbaa !294 ; 2 uses
  %i.amk = fmul float %i.amj, 1.350000e+00        ; 2 uses
  %i.aml = call float @llvm.fmuladd.f32(float %i.amj, float 2.000000e-01, float %i.alk) ; 2 uses
  %i.amm = fcmp oge float %i.amk, %i.aml
  %i.amn = select i1 %i.amm, float %i.amk, float %i.aml
  %i.amo = fptosi float %i.amn to i32
  %i.amp = sitofp i32 %i.amo to float
  %i.amq = fmul nnan float %i.amp, 7.500000e-01
  %i.amr = fptosi float %i.amq to i32
  %i.ams = sitofp i32 %i.amr to float             ; 4 uses
  %i.amt = trunc nuw i8 %i.amh to i1
  %i.amu = select i1 %i.amt, float 4.000000e+00, float 0.000000e+00
  %i.amv = getelementptr inbounds nuw i8, ptr %.01057, i64 292 ; 2 uses
  store i32 1, ptr %i.amv, align 4, !tbaa !641
  call void @_ZN5ImGui6PushIDEPKc(ptr noundef nonnull @.str.67)
  %i.amw = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.amx = getelementptr inbounds nuw i8, ptr %20, i64 4
  %i.amy = getelementptr inbounds nuw i8, ptr %20, i64 12
  %i.amz = getelementptr inbounds nuw i8, ptr %.01057, i64 208 ; 2 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %i.alu, i64 8056 ; 3 uses
  %i.anb = getelementptr inbounds nuw i8, ptr %i.alu, i64 1061
  %i.anc = getelementptr inbounds nuw i8, ptr %i.alu, i64 296 ; 2 uses
  %i.and = getelementptr inbounds nuw i8, ptr %i.alu, i64 7296 ; 2 uses
  %i.ane = fneg float %i.ams
  %wide.trip.count.i = zext nneg i32 %i.alg to i64
  %i.anf = load float, ptr %i.aki, align 8        ; 2 uses
  %i.ang = extractelement <2 x float> %i.akg, i64 0 ; 2 uses
  %i.anh = insertelement <2 x float> poison, float %i.ane, i64 0
  %i.ani = shufflevector <2 x float> %i.anh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.anj = insertelement <2 x float> poison, float %i.amu, i64 0
  %i.ank = shufflevector <2 x float> %i.anj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.anl = insertelement <2 x float> poison, float %i.ams, i64 0
  %i.anm = shufflevector <2 x float> %i.anl, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.hc

.preheader.i:                                     ; preds = %bb.ht
  %.not.i572 = icmp eq i8 %i.amh, 0
  br i1 %.not.i572, label %._crit_edge.i574, label %.lr.ph.i573

.lr.ph.i573:                                      ; preds = %.preheader.i
  %28 = getelementptr inbounds nuw i8, ptr %24, i64 12
  %i.ann = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ano = getelementptr inbounds nuw i8, ptr %i.alu, i64 7252
  %29 = load float, ptr %28, align 4
  %i.anp = extractelement <2 x float> %i.akg, i64 1
  %i.anq = insertelement <2 x float> <float f0x7F7FFFFF, float poison>, float %29, i64 1
  %i.anr = insertelement <2 x float> <float poison, float f0x7F7FFFFF>, float %i.anf, i64 0
  %i.ans = insertelement <2 x float> <float -4.000000e+00, float poison>, float %i.ams, i64 1 ; 4 uses
  %i.ant = insertelement <2 x float> <float poison, float -4.000000e+00>, float %i.ams, i64 0 ; 4 uses
  br label %bb.hu

bb.hc:                                            ; preds = %bb.ht, %bb.hb
  %indvars.iv.i = phi i64 [ 0, %bb.hb ], [ %indvars.iv.next.i, %bb.ht ] ; 8 uses
  %.013592.i = phi i1 [ false, %bb.hb ], [ %.177.i, %bb.ht ] ; 2 uses
  %.sroa.054.089.i = phi <2 x float> [ splat (float f0x7F7FFFFF), %bb.hb ], [ %.sroa.054.375.i, %bb.ht ] ; 3 uses
  %.sroa.051.088.i = phi <2 x float> [ splat (float f0x7F7FFFFF), %bb.hb ], [ %.sroa.051.173.i, %bb.ht ] ; 2 uses
  %i.anu = getelementptr inbounds nuw [24 x i8], ptr @_ZL15resize_grip_def, i64 %indvars.iv.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  %i.anv = getelementptr inbounds nuw i8, ptr %i.anu, i64 8
  %i.anw = load <2 x float>, ptr %i.aks, align 8, !tbaa !75 ; 3 uses
  %i.anx = load <2 x float>, ptr %i.aer, align 8, !tbaa !75
  %i.any = fadd <2 x float> %i.anw, %i.anx
  %i.anz = fsub <2 x float> %i.any, %i.anw
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #39
  %i.aoa = load <2 x float>, ptr %i.anu, align 8, !tbaa !75 ; 5 uses
  %i.aob = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.anz, <2 x float> %i.aoa, <2 x float> %i.anw) ; 2 uses
  %i.aoc = load <2 x float>, ptr %i.anv, align 8, !tbaa !75 ; 3 uses
  %i.aod = fmul <2 x float> %i.ank, %i.aoc        ; 3 uses
  %i.aoe = fsub <2 x float> %i.aob, %i.aod        ; 3 uses
  %i.aof = fmul <2 x float> %i.aoc, %i.anm
  %i.aog = fadd <2 x float> %i.aob, %i.aof        ; 3 uses
  store <2 x float> %i.aoe, ptr %20, align 8, !tbaa !75
  store <2 x float> %i.aog, ptr %i.amw, align 8, !tbaa !75
  %i.aoh = extractelement <2 x float> %i.aog, i64 0 ; 2 uses
  %i.aoi = extractelement <2 x float> %i.aoe, i64 0 ; 2 uses
  %i.aoj = fcmp ogt float %i.aoi, %i.aoh
  br i1 %i.aoj, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  store float %i.aoh, ptr %20, align 8, !tbaa !75
  store float %i.aoi, ptr %i.amw, align 8, !tbaa !75
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.hc
  %i.aok = extractelement <2 x float> %i.aog, i64 1 ; 2 uses
  %i.aol = extractelement <2 x float> %i.aoe, i64 1 ; 2 uses
  %i.aom = fcmp ogt float %i.aol, %i.aok
  br i1 %i.aom, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he
  store float %i.aok, ptr %i.amx, align 4, !tbaa !75
  store float %i.aol, ptr %i.amy, align 4, !tbaa !75
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.he
  %i.aon = load ptr, ptr %i.amz, align 8, !tbaa !318
  %i.aoo = load i32, ptr %i.jj, align 8, !tbaa !316
  %i.aop = sext i32 %i.aoo to i64
  %i.aoq = getelementptr [4 x i8], ptr %i.aon, i64 %i.aop
  %i.aor = getelementptr i8, ptr %i.aoq, i64 -4
  %i.aos = load i32, ptr %i.aor, align 4, !tbaa !94
  %i.aot = xor i32 %i.aos, -1                     ; 2 uses
  %i.aou = lshr i32 %i.aot, 8
  %.masked.i572 = and i32 %i.aot, 255
  %30 = trunc i64 %indvars.iv.i to i32            ; 2 uses
  %i.aov = zext nneg i32 %.masked.i572 to i64
  %31 = xor i64 %indvars.iv.i, %i.aov
  %i.aow = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %31
  %i.aox = load i32, ptr %i.aow, align 4, !tbaa !94
  %i.aoy = xor i32 %i.aox, %i.aou                 ; 2 uses
  %i.aoz = lshr i32 %i.aoy, 8
  %i.apa = and i32 %i.aoy, 255
  %i.apb = zext nneg i32 %i.apa to i64
  %i.apc = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.apb
  %i.apd = load i32, ptr %i.apc, align 4, !tbaa !94
  %i.ape = xor i32 %i.aoz, %i.apd                 ; 2 uses
  %i.apf = lshr i32 %i.ape, 8
  %i.apg = and i32 %i.ape, 255
  %i.aph = zext nneg i32 %i.apg to i64
  %i.api = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.aph
  %i.apj = load i32, ptr %i.api, align 4, !tbaa !94
  %i.apk = xor i32 %i.apf, %i.apj                 ; 2 uses
  %i.apl = lshr i32 %i.apk, 8
  %i.apm = and i32 %i.apk, 255
  %i.apn = zext nneg i32 %i.apm to i64
  %i.apo = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.apn
  %i.app = load i32, ptr %i.apo, align 4, !tbaa !94
  %i.apq = xor i32 %i.app, %i.apl
  %i.apr = xor i32 %i.apq, -1                     ; 6 uses
  %i.aps = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 5 uses
  %i.apt = getelementptr inbounds nuw i8, ptr %i.aps, i64 7260
  %i.apu = load i32, ptr %i.apt, align 4, !tbaa !319
  %i.apv = icmp eq i32 %i.apu, %i.apr
  br i1 %i.apv, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.apw = getelementptr inbounds nuw i8, ptr %i.aps, i64 7264
  store i32 %i.apr, ptr %i.apw, align 8, !tbaa !320
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg
  %i.apx = getelementptr inbounds nuw i8, ptr %i.aps, i64 7320
  %i.apy = load i32, ptr %i.apx, align 8, !tbaa !321
  %i.apz = icmp eq i32 %i.apy, %i.apr
  br i1 %i.apz, label %bb.hj, label %_ZN5ImGui11KeepAliveIDEj.exit.i.i

bb.hj:                                            ; preds = %bb.hi
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.aps, i64 7324
  store i8 1, ptr %i.aqa, align 4, !tbaa !322
  br label %_ZN5ImGui11KeepAliveIDEj.exit.i.i

_ZN5ImGui11KeepAliveIDEj.exit.i.i:                ; preds = %bb.hj, %bb.hi
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.aps, i64 7236
  %i.aqc = load i32, ptr %i.aqb, align 4, !tbaa !323
  %i.aqd = icmp eq i32 %i.aqc, %i.apr
  br i1 %i.aqd, label %bb.hk, label %_ZN11ImGuiWindow5GetIDEi.exit.i

bb.hk:                                            ; preds = %_ZN5ImGui11KeepAliveIDEj.exit.i.i
  %i.aqe = inttoptr i64 %indvars.iv.i to ptr
  call void @_ZN5ImGui15DebugHookIdInfoEjiPKvS1_(i32 noundef %i.apr, i32 noundef 4, ptr noundef %i.aqe, ptr noundef null)
  br label %_ZN11ImGuiWindow5GetIDEi.exit.i

_ZN11ImGuiWindow5GetIDEi.exit.i:                  ; preds = %bb.hk, %_ZN5ImGui11KeepAliveIDEj.exit.i.i
  %i.aqf = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %20, i32 noundef %i.apr, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 264192) ; 0 uses
  %i.aqg = load i8, ptr %i.a, align 1, !tbaa !219, !range !216, !noundef !217
  %i.aqh = trunc nuw i8 %i.aqg to i1
  %i.aqi = load i8, ptr %i.b, align 1, !range !216
  %i.aqj = trunc nuw i8 %i.aqi to i1              ; 2 uses
  %or.cond.i = select i1 %i.aqh, i1 true, i1 %i.aqj
  br i1 %or.cond.i, label %bb.hl, label %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.i

bb.hl:                                            ; preds = %_ZN11ImGuiWindow5GetIDEi.exit.i
  %.not142.i = icmp eq i64 %indvars.iv.i, 0       ; 2 uses
  %i.aqk = select i1 %.not142.i, i32 6, i32 5
  store i32 %i.aqk, ptr %i.ana, align 8, !tbaa !593
  br i1 %i.aqj, label %bb.hm, label %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.i

bb.hm:                                            ; preds = %bb.hl
  %i.aql = load i8, ptr %i.anb, align 1, !tbaa !219, !range !216, !noundef !217
  %i.aqm = trunc nuw i8 %i.aql to i1
  %or.cond3.i = and i1 %.not142.i, %i.aqm
  br i1 %or.cond3.i, label %bb.hn, label %bb.hp

bb.hn:                                            ; preds = %bb.hm
  %i.aqn = call fastcc <2 x float> @_ZL29CalcWindowSizeAfterConstraintP11ImGuiWindowRK6ImVec2(ptr noundef nonnull %.01057, i64 %i.alt)
  %i.aqo = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 13 uses
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aqo, i64 7260 ; 2 uses
  %i.aqq = load i32, ptr %i.aqp, align 4, !tbaa !319
  %i.aqr = icmp ne i32 %i.aqq, 0                  ; 2 uses
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqo, i64 7272
  %i.aqt = zext i1 %i.aqr to i8
  store i8 %i.aqt, ptr %i.aqs, align 8, !tbaa !364
  br i1 %i.aqr, label %bb.ho, label %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.thread.i

bb.ho:                                            ; preds = %bb.hn
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqo, i64 7268
  store float 0.000000e+00, ptr %i.aqu, align 4, !tbaa !365
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqo, i64 7275
  store i8 0, ptr %i.aqv, align 1, !tbaa !366
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqo, i64 7276
  store i8 0, ptr %i.aqw, align 4, !tbaa !367
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqo, i64 7316
  store i32 -1, ptr %i.aqx, align 4, !tbaa !368
  store i32 0, ptr %i.aqp, align 4, !tbaa !319
  br label %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.thread.i

_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.thread.i: ; preds = %bb.ho, %bb.hn
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqo, i64 7273
  store i8 0, ptr %i.aqy, align 1, !tbaa !369
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqo, i64 7274
  store i8 0, ptr %i.aqz, align 2, !tbaa !370
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqo, i64 7304
  store ptr null, ptr %i.ara, align 8, !tbaa !371
  %i.arb = getelementptr inbounds nuw i8, ptr %i.aqo, i64 7277
  store i8 0, ptr %i.arb, align 1, !tbaa !372
  %i.arc = getelementptr inbounds nuw i8, ptr %i.aqo, i64 7278
  store i8 0, ptr %i.arc, align 2, !tbaa !379
  %i.ard = getelementptr inbounds nuw i8, ptr %i.aqo, i64 7280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ard, i8 0, i64 16, i1 false)
  %i.are = load i8, ptr %i.b, align 1, !range !216
  %i.arf = trunc nuw i8 %i.are to i1
  %i.arg = load i8, ptr %i.a, align 1, !range !216
  %i.arh = trunc nuw i8 %i.arg to i1
  br label %bb.hs

bb.hp:                                            ; preds = %bb.hm
  switch i32 %30, label %_ZL7ImClampRK6ImVec2S1_S_.exit.i [
    i32 3, label %bb.hq
    i32 0, label %bb.hq
  ]

bb.hq:                                            ; preds = %bb.hp, %bb.hp
  br label %_ZL7ImClampRK6ImVec2S1_S_.exit.i

_ZL7ImClampRK6ImVec2S1_S_.exit.i:                 ; preds = %bb.hq, %bb.hp
  %i.ari = phi float [ %i.ang, %bb.hq ], [ f0xFF7FFFFF, %bb.hp ]
  %i.arj = add i32 %30, -1
  %i.ark = icmp ult i32 %i.arj, 2                 ; 2 uses
  %i.arl = select i1 %i.ark, float %i.anf, float f0x7F7FFFFF
  %32 = fmul <2 x float> %i.aoc, %i.ani
  %i.arm = load <2 x float>, ptr %i.anc, align 8, !tbaa !75
  %i.arn = load <2 x float>, ptr %i.and, align 8, !tbaa !75
  %i.aro = fsub <2 x float> %i.arm, %i.arn
  %i.arp = fsub <2 x float> %32, %i.aod
  %i.arq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.arp, <2 x float> %i.aoa, <2 x float> %i.aod)
  %i.arr = fadd <2 x float> %i.arq, %i.aro        ; 3 uses
  %i.ars = insertelement <2 x float> %i.akg, float %i.ari, i64 0 ; 2 uses
  %i.art = fcmp olt <2 x float> %i.arr, %i.ars
  %i.aru = insertelement <2 x float> <float poison, float f0x7F7FFFFF>, float %i.arl, i64 0 ; 2 uses
  %i.arv = fcmp ogt <2 x float> %i.arr, %i.aru
  %i.arw = select <2 x i1> %i.arv, <2 x float> %i.aru, <2 x float> %i.arr
  %i.arx = select <2 x i1> %i.art, <2 x float> %i.ars, <2 x float> %i.arw ; 3 uses
  %i.ary = load <2 x float>, ptr %i.aks, align 8, !tbaa !75 ; 2 uses
  %i.arz = fsub <2 x float> %i.ary, %i.arx
  %i.asa = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.arz, <2 x float> %i.aoa, <2 x float> %i.arx) ; 5 uses
  %i.asb = load <2 x float>, ptr %i.aer, align 8, !tbaa !75
  %i.asc = fadd <2 x float> %i.ary, %i.asb        ; 2 uses
  %i.asd = fsub <2 x float> %i.arx, %i.asc
  %i.ase = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.asd, <2 x float> %i.aoa, <2 x float> %i.asc)
  %i.asf = fsub <2 x float> %i.ase, %i.asa        ; 3 uses
  %i.asg = bitcast <2 x float> %i.asf to i64
  %i.ash = call fastcc <2 x float> @_ZL29CalcWindowSizeAfterConstraintP11ImGuiWindowRK6ImVec2(ptr noundef nonnull readonly %.01057, i64 %i.asg) ; 4 uses
  %foldExtExtBinop = fsub <2 x float> %i.ash, %i.asf
  %foldExtExtBinop1325 = fsub <2 x float> %i.asa, %foldExtExtBinop
  %sel = select i1 %i.ark, <2 x float> %foldExtExtBinop1325, <2 x float> %i.asa
  %.sroa.054.1.i = shufflevector <2 x float> %sel, <2 x float> %i.asa, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.asi = extractelement <2 x float> %i.aoa, i64 1
  %i.asj = fcmp oeq float %i.asi, 0.000000e+00
  br i1 %i.asj, label %bb.hr, label %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.i

bb.hr:                                            ; preds = %_ZL7ImClampRK6ImVec2S1_S_.exit.i
  %foldExtExtBinop1327 = fsub <2 x float> %i.ash, %i.asf
  %foldExtExtBinop1329 = fsub <2 x float> %i.asa, %foldExtExtBinop1327
  %.sroa.054.4.vec.insert64.i = shufflevector <2 x float> %.sroa.054.1.i, <2 x float> %foldExtExtBinop1329, <2 x i32> <i32 0, i32 3>
  br label %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.i

_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.i: ; preds = %bb.hr, %_ZL7ImClampRK6ImVec2S1_S_.exit.i, %bb.hl, %_ZN11ImGuiWindow5GetIDEi.exit.i
  %.sroa.051.1.i = phi <2 x float> [ %i.ash, %bb.hr ], [ %i.ash, %_ZL7ImClampRK6ImVec2S1_S_.exit.i ], [ %.sroa.051.088.i, %bb.hl ], [ %.sroa.051.088.i, %_ZN11ImGuiWindow5GetIDEi.exit.i ] ; 2 uses
  %.sroa.054.3.i = phi <2 x float> [ %.sroa.054.4.vec.insert64.i, %bb.hr ], [ %.sroa.054.1.i, %_ZL7ImClampRK6ImVec2S1_S_.exit.i ], [ %.sroa.054.089.i, %bb.hl ], [ %.sroa.054.089.i, %_ZN11ImGuiWindow5GetIDEi.exit.i ] ; 2 uses
  %i.ask = icmp eq i64 %indvars.iv.i, 0
  %i.asl = load i8, ptr %i.b, align 1, !range !216
  %i.asm = trunc nuw i8 %i.asl to i1              ; 2 uses
  %or.cond5.i = select i1 %i.ask, i1 true, i1 %i.asm
  %i.asn = load i8, ptr %i.a, align 1, !range !216
  %i.aso = trunc nuw i8 %i.asn to i1              ; 2 uses
  %or.cond7.i = select i1 %or.cond5.i, i1 true, i1 %i.aso
  br i1 %or.cond7.i, label %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit._crit_edge.i, label %bb.ht

_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit._crit_edge.i: ; preds = %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.i
  %.pre.i577 = load ptr, ptr @GImGui, align 8, !tbaa !99
  br label %bb.hs

bb.hs:                                            ; preds = %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit._crit_edge.i, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.thread.i
  %i.asp = phi ptr [ %i.aqo, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.thread.i ], [ %.pre.i577, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit._crit_edge.i ] ; 2 uses
  %i.asq = phi i1 [ %i.arh, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.thread.i ], [ %i.aso, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit._crit_edge.i ]
  %i.asr = phi i1 [ %i.arf, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.thread.i ], [ %i.asm, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit._crit_edge.i ]
  %.178.i = phi i1 [ true, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.thread.i ], [ %.013592.i, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit._crit_edge.i ]
  %.sroa.054.376.i = phi <2 x float> [ %.sroa.054.089.i, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.thread.i ], [ %.sroa.054.3.i, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit._crit_edge.i ]
  %.sroa.051.174.i = phi <2 x float> [ %i.aqn, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.thread.i ], [ %.sroa.051.1.i, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit._crit_edge.i ]
  %i.ass = getelementptr inbounds nuw i8, ptr %i.asp, i64 5472
  %i.ast = getelementptr inbounds nuw i8, ptr %i.asp, i64 5672
  %i.asu = select i1 %i.asq, i64 31, i64 30
  %i.asv = select i1 %i.asr, i64 32, i64 %i.asu
  %i.asw = getelementptr inbounds nuw [16 x i8], ptr %i.ast, i64 %i.asv
  %i.asx = load float, ptr %i.ass, align 4, !tbaa !278
  %i.asy = load <4 x float>, ptr %i.asw, align 4, !tbaa !75
  %i.asz = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.asx, i64 3
  %i.ata = fmul <4 x float> %i.asy, %i.asz        ; 3 uses
  %i.atb = fcmp olt <4 x float> %i.ata, zeroinitializer
  %i.atc = fcmp ogt <4 x float> %i.ata, splat (float 1.000000e+00)
  %i.atd = select <4 x i1> %i.atc, <4 x float> splat (float 1.000000e+00), <4 x float> %i.ata
  %i.ate = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.atd, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.atf = select <4 x i1> %i.atb, <4 x float> splat (float 5.000000e-01), <4 x float> %i.ate
  %i.atg = fptosi <4 x float> %i.atf to <4 x i32>
  %i.ath = shl <4 x i32> %i.atg, <i32 0, i32 8, i32 16, i32 24>
  %i.ati = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.ath)
  %i.atj = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  store i32 %i.ati, ptr %i.atj, align 4, !tbaa !94
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.i
  %.177.i = phi i1 [ %.013592.i, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.i ], [ %.178.i, %bb.hs ] ; 3 uses
  %.sroa.054.375.i = phi <2 x float> [ %.sroa.054.3.i, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.i ], [ %.sroa.054.376.i, %bb.hs ] ; 3 uses
  %.sroa.051.173.i = phi <2 x float> [ %.sroa.051.1.i, %_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.exit.i ], [ %.sroa.051.174.i, %bb.hs ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.hc, !llvm.loop !984

._crit_edge.i574.loopexit:                        ; preds = %.thread117.i
  %i.atk = trunc i32 %.21060 to i8
  br label %._crit_edge.i574

._crit_edge.i574:                                 ; preds = %._crit_edge.i574.loopexit, %.preheader.i
  %.31061 = phi i8 [ -1, %.preheader.i ], [ %i.atk, %._crit_edge.i574.loopexit ]
  %.sroa.051.2.lcssa.i = phi <2 x float> [ %.sroa.051.173.i, %.preheader.i ], [ %.sroa.051.3.i, %._crit_edge.i574.loopexit ] ; 3 uses
  %.sroa.054.4.lcssa.i = phi <2 x float> [ %.sroa.054.375.i, %.preheader.i ], [ %.sroa.054.7.i, %._crit_edge.i574.loopexit ] ; 2 uses
  %i.atl = load ptr, ptr @GImGui, align 8, !tbaa !99
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atl, i64 7184
  %i.atn = load ptr, ptr %i.atm, align 8, !tbaa !214
  %i.ato = getelementptr inbounds nuw i8, ptr %i.atn, i64 200 ; 2 uses
  %i.atp = load i32, ptr %i.ato, align 8, !tbaa !316
  %i.atq = add nsw i32 %i.atp, -1
  store i32 %i.atq, ptr %i.ato, align 8, !tbaa !316
  store i32 0, ptr %i.amv, align 4, !tbaa !641
  %i.atr = getelementptr inbounds nuw i8, ptr %i.alu, i64 7984
  %i.ats = load ptr, ptr %i.atr, align 8, !tbaa !557 ; 2 uses
  %.not141.i = icmp eq ptr %i.ats, null
  br i1 %.not141.i, label %bb.io, label %bb.ik

bb.hu:                                            ; preds = %.thread117.i, %.lr.ph.i573
  %.11059 = phi i32 [ -1, %.lr.ph.i573 ], [ %.21060, %.thread117.i ] ; 3 uses
  %indvars.iv97.i = phi i64 [ 0, %.lr.ph.i573 ], [ %indvars.iv.next98.i, %.thread117.i ] ; 5 uses
  %.sroa.054.494.i = phi <2 x float> [ %.sroa.054.375.i, %.lr.ph.i573 ], [ %.sroa.054.7.i, %.thread117.i ] ; 3 uses
  %.sroa.051.293.i = phi <2 x float> [ %.sroa.051.173.i, %.lr.ph.i573 ], [ %.sroa.051.3.i, %.thread117.i ] ; 3 uses
  %i.att = getelementptr inbounds nuw [28 x i8], ptr @_ZL17resize_border_def, i64 %indvars.iv97.i ; 2 uses
  %i.atu = icmp samesign ugt i64 %indvars.iv97.i, 1 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #39
  %i.atv = load <2 x float>, ptr %i.aks, align 8, !tbaa !75 ; 7 uses
  %i.atw = load <2 x float>, ptr %i.aer, align 8, !tbaa !75
  %i.atx = fadd <2 x float> %i.atv, %i.atw        ; 6 uses
  %i.aty = trunc nuw nsw i64 %indvars.iv97.i to i32 ; 4 uses
  switch i32 %i.aty, label %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit.i [
    i32 0, label %bb.hv
    i32 1, label %bb.hw
    i32 2, label %bb.hx
    i32 3, label %bb.hy
  ]

bb.hv:                                            ; preds = %bb.hu
  %i.atz = fadd <2 x float> %i.atv, %i.ans
  %i.aua = shufflevector <2 x float> %i.atv, <2 x float> %i.atx, <2 x i32> <i32 0, i32 3>
  %i.aub = fsub <2 x float> %i.aua, %i.ans
  br label %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit.i

bb.hw:                                            ; preds = %bb.hu
  %i.auc = shufflevector <2 x float> %i.atx, <2 x float> %i.atv, <2 x i32> <i32 0, i32 3>
  %i.aud = fadd <2 x float> %i.auc, %i.ans
  %i.aue = fsub <2 x float> %i.atx, %i.ans
  br label %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit.i

bb.hx:                                            ; preds = %bb.hu
  %i.auf = fadd <2 x float> %i.atv, %i.ant
  %i.aug = shufflevector <2 x float> %i.atx, <2 x float> %i.atv, <2 x i32> <i32 0, i32 3>
  %i.auh = fsub <2 x float> %i.aug, %i.ant
  br label %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit.i

bb.hy:                                            ; preds = %bb.hu
  %i.aui = shufflevector <2 x float> %i.atv, <2 x float> %i.atx, <2 x i32> <i32 0, i32 3>
  %i.auj = fadd <2 x float> %i.aui, %i.ant
  %i.auk = fsub <2 x float> %i.atx, %i.ant
  br label %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit.i

_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit.i: ; preds = %bb.hy, %bb.hx, %bb.hw, %bb.hv, %bb.hu
  %.sroa.045.0.i.i = phi <2 x float> [ %i.auj, %bb.hy ], [ %i.atz, %bb.hv ], [ %i.aud, %bb.hw ], [ %i.auf, %bb.hx ], [ zeroinitializer, %bb.hu ]
  %.sroa.10.0.i.i = phi <2 x float> [ %i.auk, %bb.hy ], [ %i.aub, %bb.hv ], [ %i.aue, %bb.hw ], [ %i.auh, %bb.hx ], [ zeroinitializer, %bb.hu ]
  store <2 x float> %.sroa.045.0.i.i, ptr %21, align 8
  store <2 x float> %.sroa.10.0.i.i, ptr %i.ann, align 8
  %i.aul = add nuw nsw i64 %indvars.iv97.i, 4     ; 2 uses
  %i.aum = trunc nuw nsw i64 %i.aul to i32        ; 4 uses
  %.sroa.2.0.extract.shift.i248.i = lshr i32 %i.aum, 8
  %.sroa.3.0.extract.shift.i249.i = lshr i32 %i.aum, 16
  %.sroa.4.0.extract.shift.i250.i = lshr i32 %i.aum, 24
  %i.aun = load ptr, ptr %i.amz, align 8, !tbaa !318
  %i.auo = load i32, ptr %i.jj, align 8, !tbaa !316
  %i.aup = sext i32 %i.auo to i64
  %i.auq = getelementptr [4 x i8], ptr %i.aun, i64 %i.aup
  %i.aur = getelementptr i8, ptr %i.auq, i64 -4
  %i.aus = load i32, ptr %i.aur, align 4, !tbaa !94
  %i.aut = xor i32 %i.aus, -1                     ; 2 uses
  %i.auu = lshr i32 %i.aut, 8
  %i.auv = xor i32 %i.aut, %i.aum
  %i.auw = and i32 %i.auv, 255
  %i.aux = zext nneg i32 %i.auw to i64
  %i.auy = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.aux
  %i.auz = load i32, ptr %i.auy, align 4, !tbaa !94
  %i.ava = xor i32 %i.auz, %i.auu                 ; 2 uses
  %i.avb = lshr i32 %i.ava, 8
  %i.avc = xor i32 %i.ava, %.sroa.2.0.extract.shift.i248.i
  %i.avd = and i32 %i.avc, 255
  %i.ave = zext nneg i32 %i.avd to i64
  %i.avf = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.ave
  %i.avg = load i32, ptr %i.avf, align 4, !tbaa !94
  %i.avh = xor i32 %i.avb, %i.avg                 ; 2 uses
  %i.avi = lshr i32 %i.avh, 8
  %i.avj = xor i32 %i.avh, %.sroa.3.0.extract.shift.i249.i
  %i.avk = and i32 %i.avj, 255
  %i.avl = zext nneg i32 %i.avk to i64
  %i.avm = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.avl
  %i.avn = load i32, ptr %i.avm, align 4, !tbaa !94
  %i.avo = xor i32 %i.avi, %i.avn                 ; 2 uses
  %i.avp = lshr i32 %i.avo, 8
  %i.avq = and i32 %i.avo, 255
  %i.avr = xor i32 %i.avq, %.sroa.4.0.extract.shift.i250.i
  %i.avs = zext nneg i32 %i.avr to i64
  %i.avt = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.avs
  %i.avu = load i32, ptr %i.avt, align 4, !tbaa !94
  %i.avv = xor i32 %i.avu, %i.avp
  %i.avw = xor i32 %i.avv, -1                     ; 6 uses
  %i.avx = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 5 uses
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avx, i64 7260
  %i.avz = load i32, ptr %i.avy, align 4, !tbaa !319
  %i.awa = icmp eq i32 %i.avz, %i.avw
  br i1 %i.awa, label %bb.hz, label %bb.ia

end_hunk_2
begin_hunk_3_@_ZN5ImGui5BeginEPKcPbi:bb.a
  call void @_ZN10ImDrawList12PushClipRectE6ImVec2S0_b(ptr noundef nonnull align 8 dereferenceable(196) %i.dhn, <2 x float> %.sroa.01.0.copyload.i765, <2 x float> %.sroa.0.0.copyload.i766, i1 noundef zeroext true)
  %i.dho = load ptr, ptr %i.dhm, align 8, !tbaa !292 ; 2 uses
  %i.dhp = getelementptr inbounds nuw i8, ptr %i.dho, i64 88
  %i.dhq = getelementptr inbounds nuw i8, ptr %i.dho, i64 96
  %i.dhr = load ptr, ptr %i.dhq, align 8, !tbaa !335
  %i.dhs = load i32, ptr %i.dhp, align 8, !tbaa !647
  %i.dht = sext i32 %i.dhs to i64
  %i.dhu = getelementptr [16 x i8], ptr %i.dhr, i64 %i.dht
  %i.dhv = getelementptr i8, ptr %i.dhu, i64 -16
  %i.dhw = getelementptr inbounds nuw i8, ptr %i.dhk, i64 520
  %i.dhx = load <4 x float>, ptr %i.dhv, align 4, !tbaa !75
  store <4 x float> %i.dhx, ptr %i.dhw, align 8, !tbaa !75
  %i.dhy = getelementptr inbounds nuw i8, ptr %.01057, i64 144
  store i8 0, ptr %i.dhy, align 8, !tbaa !393
  %i.dhz = getelementptr inbounds nuw i8, ptr %.01057, i64 154 ; 2 uses
  %i.dia = load i16, ptr %i.dhz, align 2, !tbaa !597
  %i.dib = add i16 %i.dia, 1
  store i16 %i.dib, ptr %i.dhz, align 2, !tbaa !597
  store i32 0, ptr %i.pv, align 8, !tbaa !667
  br i1 %.not335, label %_ZN11ImGuiWindow5GetIDEPKcS1_.exit._crit_edge, label %bb.qa

_ZN11ImGuiWindow5GetIDEPKcS1_.exit._crit_edge:    ; preds = %_ZN11ImGuiWindow5GetIDEPKcS1_.exit
  %.phi.trans.insert1144 = getelementptr inbounds nuw i8, ptr %.01057, i64 147
  %.pre1145 = load i8, ptr %.phi.trans.insert1144, align 1, !tbaa !652, !range !216
  br label %bb.qy

bb.qa:                                            ; preds = %_ZN11ImGuiWindow5GetIDEPKcS1_.exit
  br i1 %.not381, label %.critedge408, label %bb.qb

bb.qb:                                            ; preds = %bb.qa
  %i.dic = and i32 %.1, 64
  %.not382 = icmp eq i32 %i.dic, 0
  br i1 %.not382, label %bb.qc, label %bb.qi

bb.qc:                                            ; preds = %bb.qb
  %i.did = getelementptr inbounds nuw i8, ptr %.01057, i64 168
  %i.die = load i8, ptr %i.did, align 8, !tbaa !326
  %i.dif = icmp slt i8 %i.die, 1
  br i1 %i.dif, label %bb.qd, label %bb.qi

bb.qd:                                            ; preds = %bb.qc
  %i.dig = getelementptr inbounds nuw i8, ptr %.01057, i64 169
  %i.dih = load i8, ptr %i.dig, align 1, !tbaa !325
  %i.dii = icmp slt i8 %i.dih, 1
  br i1 %i.dii, label %bb.qe, label %bb.qi

bb.qe:                                            ; preds = %bb.qd
  %i.dij = getelementptr inbounds nuw i8, ptr %i.g, i64 12524
  %i.dik = load i8, ptr %i.dij, align 4, !tbaa !215, !range !216, !noundef !217
  %i.dil = trunc nuw i8 %i.dik to i1
  br i1 %i.dil, label %bb.qi, label %bb.qf

bb.qf:                                            ; preds = %bb.qe
  %i.dim = getelementptr inbounds nuw i8, ptr %.01057, i64 440
  %i.din = load float, ptr %i.dim, align 8, !tbaa !1036
  %i.dio = getelementptr inbounds nuw i8, ptr %.01057, i64 448
  %i.dip = load float, ptr %i.dio, align 8, !tbaa !1037
  %i.diq = fcmp ult float %i.din, %i.dip
  br i1 %i.diq, label %bb.qg, label %bb.qh

bb.qg:                                            ; preds = %bb.qf
  %i.dir = getelementptr inbounds nuw i8, ptr %.01057, i64 444
  %i.dis = load float, ptr %i.dir, align 4, !tbaa !1038
  %i.dit = getelementptr inbounds nuw i8, ptr %.01057, i64 452
  %i.diu = load float, ptr %i.dit, align 4, !tbaa !1039
  %i.div = fcmp ult float %i.dis, %i.diu
  br i1 %i.div, label %bb.qi, label %bb.qh

bb.qh:                                            ; preds = %bb.qg, %bb.qf
  %i.diw = getelementptr inbounds nuw i8, ptr %.01057, i64 176
  store i8 1, ptr %i.diw, align 8, !tbaa !638
  br label %bb.qi

bb.qi:                                            ; preds = %bb.qe, %bb.qh, %bb.qg, %bb.qd, %bb.qc, %bb.qb
  %.not383 = icmp eq ptr %i.ji, null
  br i1 %.not383, label %.critedge408, label %bb.qj

bb.qj:                                            ; preds = %bb.qi
  %i.dix = getelementptr inbounds nuw i8, ptr %i.ji, i64 145
  %i.diy = load i8, ptr %i.dix, align 1, !tbaa !595, !range !216, !noundef !217
  %i.diz = trunc nuw i8 %i.diy to i1
  br i1 %i.diz, label %.thread1087.a, label %bb.qk

.thread1087.a:                                    ; preds = %bb.qj
  %i.dja = getelementptr inbounds nuw i8, ptr %.01057, i64 176
  store i8 1, ptr %i.dja, align 8, !tbaa !638
  br label %bb.qm

bb.qk:                                            ; preds = %bb.qj
  %i.djb = getelementptr inbounds nuw i8, ptr %i.ji, i64 176
  %i.djc = load i8, ptr %i.djb, align 8, !tbaa !638
  %i.djd = icmp sgt i8 %i.djc, 0
  br i1 %i.djd, label %bb.ql, label %.thread1086

bb.ql:                                            ; preds = %bb.qk
  %i.dje = getelementptr inbounds nuw i8, ptr %.01057, i64 176
  store i8 1, ptr %i.dje, align 8, !tbaa !638
  br label %.thread1086

.thread1086:                                      ; preds = %bb.qk, %bb.ql
  %i.djf = getelementptr inbounds nuw i8, ptr %i.ji, i64 177
  %i.djg = load i8, ptr %i.djf, align 1, !tbaa !637
  %i.djh = icmp sgt i8 %i.djg, 0
  br i1 %i.djh, label %bb.qm, label %.critedge408

bb.qm:                                            ; preds = %.thread1087.a, %.thread1086
  %i.dji = getelementptr inbounds nuw i8, ptr %.01057, i64 177
  store i8 1, ptr %i.dji, align 1, !tbaa !637
  br label %.critedge408

.critedge408:                                     ; preds = %bb.qi, %.thread1086, %bb.qm, %bb.qa
  %i.djj = load float, ptr %i.h, align 8, !tbaa !278
  %i.djk = fcmp ugt float %i.djj, 0.000000e+00
  %.phi.trans.insert1142 = getelementptr inbounds nuw i8, ptr %.01057, i64 176 ; 2 uses
  br i1 %i.djk, label %bb.qn, label %.thread1315

.thread1315:                                      ; preds = %.critedge408
  store i8 1, ptr %.phi.trans.insert1142, align 8, !tbaa !638
  br label %bb.qq

bb.qn:                                            ; preds = %.critedge408
  %.pre1143 = load i8, ptr %.phi.trans.insert1142, align 8, !tbaa !638
  %i.djl = icmp sgt i8 %.pre1143, 0
  br i1 %i.djl, label %bb.qq, label %bb.qo

bb.qo:                                            ; preds = %bb.qn
  %i.djm = getelementptr inbounds nuw i8, ptr %.01057, i64 177
  %i.djn = load i8, ptr %i.djm, align 1, !tbaa !637
  %i.djo = icmp sgt i8 %i.djn, 0
  br i1 %i.djo, label %bb.qq, label %bb.qp

bb.qp:                                            ; preds = %bb.qo
  %i.djp = getelementptr inbounds nuw i8, ptr %.01057, i64 178
  %i.djq = load i8, ptr %i.djp, align 2, !tbaa !999
  %i.djr = icmp sgt i8 %i.djq, 0
  %i.djs = zext i1 %i.djr to i8
  br label %bb.qq

bb.qq:                                            ; preds = %.thread1315, %bb.qp, %bb.qo, %bb.qn
  %i.djt = phi i8 [ 1, %bb.qo ], [ 1, %bb.qn ], [ %i.djs, %bb.qp ], [ 1, %.thread1315 ] ; 2 uses
  %i.dju = getelementptr inbounds nuw i8, ptr %.01057, i64 149
  store i8 %i.djt, ptr %i.dju, align 1, !tbaa !521
  %i.djv = getelementptr inbounds nuw i8, ptr %.01057, i64 179 ; 2 uses
  %i.djw = load i8, ptr %i.djv, align 1, !tbaa !1040 ; 2 uses
  %i.djx = icmp sgt i8 %i.djw, 0
  br i1 %i.djx, label %bb.qr, label %bb.qs

bb.qr:                                            ; preds = %bb.qq
  %i.djy = add nsw i8 %i.djw, -1
  store i8 %i.djy, ptr %i.djv, align 1, !tbaa !1040
  %i.djz = getelementptr inbounds nuw i8, ptr %.01057, i64 12 ; 2 uses
  %i.dka = load i32, ptr %i.djz, align 4, !tbaa !392
  %i.dkb = or i32 %i.dka, 786944
  store i32 %i.dkb, ptr %i.djz, align 4, !tbaa !392
  br label %bb.qs

bb.qs:                                            ; preds = %bb.qr, %bb.qq
  %i.dkc = getelementptr inbounds nuw i8, ptr %.01057, i64 145
  %i.dkd = load i8, ptr %i.dkc, align 1, !tbaa !595, !range !216, !noundef !217
  %i.dke = trunc nuw i8 %i.dkd to i1
  br i1 %i.dke, label %bb.qu, label %bb.qt

bb.qt:                                            ; preds = %bb.qs
  %i.dkf = getelementptr inbounds nuw i8, ptr %.01057, i64 142
  %i.dkg = load i8, ptr %i.dkf, align 2, !tbaa !520, !range !216, !noundef !217
  %i.dkh = trunc nuw i8 %i.dkg to i1
  %.not1113 = xor i1 %i.dkh, true
  %i.dki = trunc nuw i8 %i.djt to i1
  %or.cond1114 = select i1 %.not1113, i1 true, i1 %i.dki
  br i1 %or.cond1114, label %bb.qu, label %bb.qx

bb.qu:                                            ; preds = %bb.qt, %bb.qs
  %i.dkj = getelementptr inbounds nuw i8, ptr %.01057, i64 168
  %i.dkk = load i8, ptr %i.dkj, align 8, !tbaa !326
  %i.dkl = icmp slt i8 %i.dkk, 1
  br i1 %i.dkl, label %bb.qv, label %bb.qx

bb.qv:                                            ; preds = %bb.qu
  %i.dkm = getelementptr inbounds nuw i8, ptr %.01057, i64 169
  %i.dkn = load i8, ptr %i.dkm, align 1, !tbaa !325
  %i.dko = icmp slt i8 %i.dkn, 1
  br i1 %i.dko, label %bb.qw, label %bb.qx

bb.qw:                                            ; preds = %bb.qv
  %i.dkp = getelementptr inbounds nuw i8, ptr %.01057, i64 177
  %i.dkq = load i8, ptr %i.dkp, align 1, !tbaa !637
  %i.dkr = icmp slt i8 %i.dkq, 1
  %spec.select409 = zext i1 %i.dkr to i8
  br label %bb.qx

bb.qx:                                            ; preds = %bb.qt, %bb.qw, %bb.qu, %bb.qv
  %.0 = phi i8 [ 0, %bb.qt ], [ %spec.select409, %bb.qw ], [ 0, %bb.qv ], [ 0, %bb.qu ] ; 2 uses
  %i.dks = getelementptr inbounds nuw i8, ptr %.01057, i64 147
  store i8 %.0, ptr %i.dks, align 1, !tbaa !652
  br label %bb.qy

bb.qy:                                            ; preds = %_ZN11ImGuiWindow5GetIDEPKcS1_.exit._crit_edge, %bb.qx
  %i.dkt = phi i8 [ %.pre1145, %_ZN11ImGuiWindow5GetIDEPKcS1_.exit._crit_edge ], [ %.0, %bb.qx ]
  %i.dku = trunc nuw i8 %i.dkt to i1
  %i.dkv = xor i1 %i.dku, true
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4856)
  ret i1 %i.dkv
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL30WindowSettingsHandler_ClearAllP12ImGuiContextP20ImGuiSettingsHandler(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7088
  %i.b = load i32, ptr %i.a, align 8, !tbaa !504  ; 3 uses
  %.not6 = icmp eq i32 %i.b, 0
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 7096
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !340  ; 9 uses
  %i.e = zext i32 %i.b to i64                     ; 2 uses
  %xtraiter = and i64 %i.e, 7                     ; 3 uses
  %i.f = icmp ult i32 %i.b, 8
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.e, 4294967288
  br label %bb.e

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod11 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod11)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.epil
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !476
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 612
  store i32 -1, ptr %i.i, align 4, !tbaa !331
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !1041

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12480 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !102  ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZN13ImChunkStreamI19ImGuiWindowSettingsE5clearEv.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12472
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12476
  store i32 0, ptr %i.m, align 4, !tbaa !103
  store i32 0, ptr %i.l, align 8, !tbaa !101
  %i.n = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not4.i.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 944 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !180
  %i.q = add nsw i32 %i.p, -1
  store i32 %i.q, ptr %i.o, align 8, !tbaa !180
  br label %_ZN5ImGui7MemFreeEPv.exit.i.i

_ZN5ImGui7MemFreeEPv.exit.i.i:                    ; preds = %bb.d, %bb.c
  %i.r = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !181
  %i.s = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !181
  tail call void %i.r(ptr noundef nonnull %i.k, ptr noundef %i.s), !inline_history !24
  store ptr null, ptr %i.j, align 8, !tbaa !102
  br label %_ZN13ImChunkStreamI19ImGuiWindowSettingsE5clearEv.exit

_ZN13ImChunkStreamI19ImGuiWindowSettingsE5clearEv.exit: ; preds = %._crit_edge, %_ZN5ImGui7MemFreeEPv.exit.i.i
  ret void

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.7, %bb.e ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.e ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !476
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 612
  store i32 -1, ptr %i.v, align 4, !tbaa !331
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !476
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 612
  store i32 -1, ptr %i.z, align 4, !tbaa !331
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !476
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 612
  store i32 -1, ptr %i.ad, align 4, !tbaa !331
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !476
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 612
  store i32 -1, ptr %i.ah, align 4, !tbaa !331
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !476
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 612
  store i32 -1, ptr %i.al, align 4, !tbaa !331
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !476
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 612
  store i32 -1, ptr %i.ap, align 4, !tbaa !331
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !476
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 612
  store i32 -1, ptr %i.at, align 4, !tbaa !331
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !476
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 612
  store i32 -1, ptr %i.ax, align 4, !tbaa !331
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %bb.e, !llvm.loop !1042
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZL30WindowSettingsHandler_ReadOpenP12ImGuiContextP20ImGuiSettingsHandlerPKc(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i8, ptr %2, align 1, !tbaa !80      ; 2 uses
  %.not3342.i.i = icmp eq i8 %i.a, 0
  br i1 %.not3342.i.i, label %_Z9ImHashStrPKcmj.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.c
  %i.b = phi i8 [ %.pre.i.i, %bb.c ], [ %i.a, %bb.a ] ; 2 uses
  %.144.i.i = phi ptr [ %i.c, %bb.c ], [ %2, %bb.a ] ; 2 uses
  %.243.i.i = phi i32 [ %i.p, %bb.c ], [ -1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.144.i.i, i64 1 ; 2 uses
  %i.d = zext i8 %i.b to i32
  %i.e = icmp eq i8 %i.b, 35
  %.pre.i.i = load i8, ptr %i.c, align 1, !tbaa !80 ; 3 uses
  %i.f = icmp eq i8 %.pre.i.i, 35
  %or.cond51.i.i = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond51.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.144.i.i, i64 2
  %i.h = load i8, ptr %i.g, align 1, !tbaa !80
  %i.i = icmp eq i8 %i.h, 35
  %spec.select35.i.i = select i1 %i.i, i32 -1, i32 %.243.i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i
  %.3.i.i = phi i32 [ %.243.i.i, %.lr.ph.i.i ], [ %spec.select35.i.i, %bb.b ] ; 2 uses
  %i.j = lshr i32 %.3.i.i, 8
  %i.k = and i32 %.3.i.i, 255
  %i.l = xor i32 %i.k, %i.d
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !94
  %i.p = xor i32 %i.j, %i.o                       ; 2 uses
  %.not33.i.i = icmp eq i8 %.pre.i.i, 0
  br i1 %.not33.i.i, label %_Z9ImHashStrPKcmj.exit.i, label %.lr.ph.i.i

_Z9ImHashStrPKcmj.exit.i:                         ; preds = %bb.c, %bb.a
  %.5.i.i = phi i32 [ -1, %bb.a ], [ %i.p, %bb.c ]
  %i.q = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12472
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 12480
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !605  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %.loopexit.i, label %.lr.ph.i6.preheader.i

.lr.ph.i6.preheader.i:                            ; preds = %_Z9ImHashStrPKcmj.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  br label %.lr.ph.i6.i

.lr.ph.i6.i:                                      ; preds = %select.unfold.i.i, %.lr.ph.i6.preheader.i
  %.0812.i.i = phi ptr [ %i.ab, %select.unfold.i.i ], [ %i.u, %.lr.ph.i6.preheader.i ] ; 4 uses
  %i.v = load i32, ptr %.0812.i.i, align 4, !tbaa !607 ; 2 uses
  %i.w = xor i32 %i.v, %.5.i.i
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %_ZN5ImGui26FindOrCreateWindowSettingsEPKc.exit, label %select.unfold.i.i

select.unfold.i.i:                                ; preds = %.lr.ph.i6.i
  %i.y = getelementptr inbounds i8, ptr %.0812.i.i, i64 -4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !94
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds i8, ptr %.0812.i.i, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.r, align 8, !tbaa !608
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds i8, ptr %i.t, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = icmp eq ptr %i.ab, %i.af
  br i1 %i.ag, label %.loopexit.i, label %.lr.ph.i6.i

.loopexit.i:                                      ; preds = %select.unfold.i.i, %_Z9ImHashStrPKcmj.exit.i
  %i.ah = tail call noundef ptr @_ZN5ImGui23CreateNewWindowSettingsEPKc(ptr noundef nonnull %2) ; 2 uses
  %.pre = load i32, ptr %i.ah, align 4, !tbaa !607
  br label %_ZN5ImGui26FindOrCreateWindowSettingsEPKc.exit

end_hunk_3
