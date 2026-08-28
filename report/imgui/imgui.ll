Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui?download=true
inline.NumInlined: 3345
inline.NumDeleted: 600
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZN8ImVectorIiE6resizeEi:bb.a
; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8ImVectorI14ImGuiGroupDataE6resizeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !805  ; 4 uses
  %i.c = icmp sgt i32 %1, %i.b
  br i1 %i.c, label %bb.b, label %_ZN8ImVectorI14ImGuiGroupDataE7reserveEi.exit

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK8ImVectorI14ImGuiGroupDataE14_grow_capacityEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = sdiv i32 %i.b, 2
  %i.e = add nsw i32 %i.d, %i.b
  br label %_ZNK8ImVectorI14ImGuiGroupDataE14_grow_capacityEi.exit

_ZNK8ImVectorI14ImGuiGroupDataE14_grow_capacityEi.exit: ; preds = %bb.b, %bb.c
  %i.f = phi i32 [ %i.e, %bb.c ], [ 8, %bb.b ]
  %i.g = tail call noundef i32 @llvm.smax.i32(i32 %i.f, i32 %1) ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = mul nsw i64 %i.h, 60
  %i.j = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !191
  %i.k = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !191
  %i.l = tail call noundef ptr %i.j(i64 noundef %i.i, ptr noundef %i.k), !inline_history !1181 ; 2 uses
  %i.m = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 5 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZN5ImGui8MemAllocEm.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNK8ImVectorI14ImGuiGroupDataE14_grow_capacityEi.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 10596 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !194  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 10608 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 10604 ; 2 uses
  %i.s = load i16, ptr %i.r, align 4, !tbaa !195  ; 2 uses
  %i.t = sext i16 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !196
  %.not.i.i.i = icmp eq i32 %i.v, %i.p
  br i1 %.not.i.i.i, label %._crit_edge.i, label %bb.e

._crit_edge.i:                                    ; preds = %bb.d
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 4, !tbaa !198
  %i.w = add i16 %.pre.i, 1
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = sext i16 %i.s to i32
  %i.y = add nsw i32 %i.x, 1
  %i.z = srem i32 %i.y, 6                         ; 2 uses
  %i.aa = trunc nsw i32 %i.z to i16
  store i16 %i.aa, ptr %i.r, align 4, !tbaa !195
  %i.ab = sext i32 %i.z to i64                    ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ab ; 3 uses
  store i32 %i.p, ptr %i.ac, align 4, !tbaa !196
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 6
  store i16 0, ptr %i.ad, align 2, !tbaa !199
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i16 0, ptr %i.ae, align 4, !tbaa !198
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %i.af = phi i16 [ 1, %bb.e ], [ %i.w, %._crit_edge.i ]
  %i.ag = phi i64 [ %i.ab, %bb.e ], [ %i.t, %._crit_edge.i ]
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i16 %i.af, ptr %i.ai, align 4, !tbaa !198
  %i.aj = load i32, ptr %i.n, align 4, !tbaa !200
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.n, align 4, !tbaa !200
  br label %_ZN5ImGui8MemAllocEm.exit.i

_ZN5ImGui8MemAllocEm.exit.i:                      ; preds = %bb.f, %_ZNK8ImVectorI14ImGuiGroupDataE14_grow_capacityEi.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !703 ; 2 uses
  %.not6.i = icmp eq ptr %i.am, null
  br i1 %.not6.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_ZN5ImGui8MemAllocEm.exit.i
  %i.an = load i32, ptr %0, align 8, !tbaa !806
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %i.ao, 60
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.l, ptr nonnull align 4 %i.am, i64 %i.ap, i1 false)
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !703 ; 2 uses
  %.not.i7.i = icmp eq ptr %i.aq, null
  br i1 %.not.i7.i, label %_ZN5ImGui7MemFreeEPv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 5 uses
  %.not7.i.i = icmp eq ptr %i.ar, null
  br i1 %.not7.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !194 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 10608 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 10604 ; 2 uses
  %i.aw = load i16, ptr %i.av, align 4, !tbaa !195 ; 2 uses
  %i.ax = sext i16 %i.aw to i64                   ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.ax ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !196
  %.not.i.i8.i = icmp eq i32 %i.az, %i.at
  br i1 %.not.i.i8.i, label %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i, label %bb.j

._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i: ; preds = %bb.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 6
  %.pre.i.i = load i16, ptr %.phi.trans.insert.i.i, align 2, !tbaa !199
  %i.ba = add i16 %.pre.i.i, 1
  br label %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.bb = sext i16 %i.aw to i32
  %i.bc = add nsw i32 %i.bb, 1
  %i.bd = srem i32 %i.bc, 6                       ; 2 uses
  %i.be = trunc nsw i32 %i.bd to i16
  store i16 %i.be, ptr %i.av, align 4, !tbaa !195
  %i.bf = sext i32 %i.bd to i64                   ; 2 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.bf ; 3 uses
  store i32 %i.at, ptr %i.bg, align 4, !tbaa !196
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 6
  store i16 0, ptr %i.bh, align 2, !tbaa !199
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store i16 0, ptr %i.bi, align 4, !tbaa !198
  br label %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i

_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i: ; preds = %bb.j, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i
  %i.bj = phi i16 [ 1, %bb.j ], [ %i.ba, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i ]
  %i.bk = phi i64 [ %i.bf, %bb.j ], [ %i.ax, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i ]
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 6
  store i16 %i.bj, ptr %i.bm, align 2, !tbaa !199
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ar, i64 10600 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !201
  %i.bp = add nsw i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !201
  br label %_ZN5ImGui7MemFreeEPv.exit.i

_ZN5ImGui7MemFreeEPv.exit.i:                      ; preds = %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i, %bb.h, %bb.g
  %i.bq = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !191
  %i.br = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !191
  tail call void %i.bq(ptr noundef %i.aq, ptr noundef %i.br), !inline_history !1182
  br label %bb.k

bb.k:                                             ; preds = %_ZN5ImGui7MemFreeEPv.exit.i, %_ZN5ImGui8MemAllocEm.exit.i
  store ptr %i.l, ptr %i.al, align 8, !tbaa !703
  store i32 %i.g, ptr %i.a, align 4, !tbaa !805
  br label %_ZN8ImVectorI14ImGuiGroupDataE7reserveEi.exit

_ZN8ImVectorI14ImGuiGroupDataE7reserveEi.exit:    ; preds = %bb.k, %bb.a
  store i32 %1, ptr %0, align 8, !tbaa !806
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui17SetNextWindowSizeERK6ImVec2i(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #30 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7928 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1128
  %i.d = or i32 %i.c, 2
  store i32 %i.d, ptr %i.b, align 8, !tbaa !1128
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 7960
  %i.f = load i64, ptr %0, align 4
  store i64 %i.f, ptr %i.e, align 8
  %i.g = tail call i32 @llvm.umax.i32(i32 %1, i32 1)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 7936
  store i32 %i.g, ptr %i.h, align 8, !tbaa !1148
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.ImVec2, align 8             ; 6 uses
  %4 = alloca %struct.ImVec2, align 8             ; 7 uses
  %5 = alloca %struct.ImVec2, align 8             ; 4 uses
  %6 = alloca %struct.ImRect, align 4             ; 8 uses
  %7 = alloca %struct.ImRect, align 4             ; 7 uses
  %8 = alloca %struct.ImVec2, align 8             ; 4 uses
  %9 = alloca %struct.ImVec2, align 8             ; 4 uses
  %10 = alloca %struct.ImVec2, align 8            ; 4 uses
  %11 = alloca %struct.ImVec2, align 8            ; 4 uses
  %12 = alloca %struct.ImVec2, align 8            ; 4 uses
  %13 = alloca %struct.ImVec2, align 8            ; 4 uses
  %14 = alloca %struct.ImVec2, align 8            ; 4 uses
  %15 = alloca %struct.ImRect, align 8            ; 5 uses
  %16 = alloca %struct.ImRect, align 16           ; 7 uses
  %17 = alloca %struct.ImVec2, align 8            ; 8 uses
  %18 = alloca %struct.ImVec2, align 8            ; 8 uses
  %19 = alloca %struct.ImVec2, align 8            ; 9 uses
  %20 = alloca %struct.ImVec2, align 8            ; 7 uses
  %21 = alloca %struct.ImVec2, align 8            ; 10 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %22 = alloca %struct.ImRect, align 8            ; 9 uses
  %i.c = alloca i8, align 1                       ; 7 uses
  %i.d = alloca i8, align 1                       ; 7 uses
  %23 = alloca %struct.ImRect, align 8            ; 8 uses
  %24 = alloca %struct.ImVec2, align 8            ; 6 uses
  %25 = alloca %struct.ImGuiFocusScopeData, align 4 ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %26 = alloca %struct.ImGuiStoragePair, align 8  ; 5 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  %i.g = alloca ptr, align 8                      ; 50 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %27 = alloca %struct.ImRect, align 8            ; 5 uses
  %28 = alloca %struct.ImRect, align 8            ; 5 uses
  %i.i = alloca [4 x i32], align 16               ; 7 uses
  %29 = alloca %struct.ImRect, align 8            ; 6 uses
  %30 = alloca %struct.ImRect, align 8            ; 12 uses
  %i.j = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 89 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #41
  %i.k = load i8, ptr %0, align 1, !tbaa !187     ; 2 uses
  %.not4050.i.i = icmp eq i8 %i.k, 0
  br i1 %.not4050.i.i, label %_Z9ImHashStrPKcmj.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.f
  %i.l = phi i8 [ %i.ac, %bb.f ], [ %i.k, %bb.a ] ; 2 uses
  %.252.i.i = phi ptr [ %.3.i.i, %bb.f ], [ %0, %bb.a ] ; 3 uses
  %.23351.i.i = phi i32 [ %.334.i.i, %bb.f ], [ -1, %bb.a ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.252.i.i, i64 1 ; 2 uses
  %i.n = zext i8 %i.l to i32
  %i.o = icmp eq i8 %i.l, 35
  br i1 %i.o, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.p = load i8, ptr %i.m, align 1, !tbaa !187
  %i.q = icmp eq i8 %i.p, 35
  br i1 %i.q, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.252.i.i, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !187
  %i.t = icmp eq i8 %i.s, 35
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.252.i.i, i64 3
  br label %bb.f, !llvm.loop !248

bb.e:                                             ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %i.v = lshr i32 %.23351.i.i, 8
  %i.w = and i32 %.23351.i.i, 255
  %i.x = xor i32 %i.w, %i.n
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !205
  %i.ab = xor i32 %i.aa, %i.v
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.334.i.i = phi i32 [ -1, %bb.d ], [ %i.ab, %bb.e ] ; 2 uses
  %.3.i.i = phi ptr [ %i.u, %bb.d ], [ %i.m, %bb.e ] ; 2 uses
  %i.ac = load i8, ptr %.3.i.i, align 1, !tbaa !187 ; 2 uses
  %.not40.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not40.i.i, label %_Z9ImHashStrPKcmj.exit.loopexit.i, label %.lr.ph.i.i

_Z9ImHashStrPKcmj.exit.loopexit.i:                ; preds = %bb.f
  %i.ad = xor i32 %.334.i.i, -1
  br label %_Z9ImHashStrPKcmj.exit.i

_Z9ImHashStrPKcmj.exit.i:                         ; preds = %_Z9ImHashStrPKcmj.exit.loopexit.i, %bb.a
  %.4.i.i = phi i32 [ 0, %bb.a ], [ %i.ad, %_Z9ImHashStrPKcmj.exit.loopexit.i ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 5280 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 5288 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !259 ; 3 uses
  %i.ah = load i32, ptr %i.ae, align 8, !tbaa !258 ; 2 uses
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %.idx.i.i.i = shl nsw i64 %i.ai, 4
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 %.idx.i.i.i
  %.not15.i.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not15.i.i.i.i, label %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_Z9ImHashStrPKcmj.exit.i, %.lr.ph.i.i.i.i
  %.017.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ai, %_Z9ImHashStrPKcmj.exit.i ] ; 2 uses
  %.01316.i.i.i.i = phi ptr [ %.114.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ag, %_Z9ImHashStrPKcmj.exit.i ] ; 2 uses
  %i.ak = lshr i64 %.017.i.i.i.i, 1               ; 3 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %.01316.i.i.i.i, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !255
  %i.an = icmp ult i32 %i.am, %.4.i.i             ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.neg.i.i.i.i = xor i64 %i.ak, -1
  %i.ap = add i64 %.017.i.i.i.i, %.neg.i.i.i.i
  %.114.i.i.i.i = select i1 %i.an, ptr %i.ao, ptr %.01316.i.i.i.i ; 2 uses
  %.1.i.i.i.i = select i1 %i.an, i64 %i.ap, i64 %i.ak ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.1.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !257

_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_Z9ImHashStrPKcmj.exit.i
  %.013.lcssa.i.i.i.i = phi ptr [ %i.ag, %_Z9ImHashStrPKcmj.exit.i ], [ %.114.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.aq = icmp eq ptr %.013.lcssa.i.i.i.i, %i.aj
  br i1 %i.aq, label %_ZN5ImGui16FindWindowByNameEPKc.exit.thread, label %bb.g

bb.g:                                             ; preds = %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i
  %i.ar = load i32, ptr %.013.lcssa.i.i.i.i, align 8, !tbaa !255
  %.not.i.i.i = icmp eq i32 %i.ar, %.4.i.i
  br i1 %.not.i.i.i, label %_ZN5ImGui16FindWindowByNameEPKc.exit, label %_ZN5ImGui16FindWindowByNameEPKc.exit.thread

_ZN5ImGui16FindWindowByNameEPKc.exit.thread:      ; preds = %bb.g, %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i
  store ptr null, ptr %i.g, align 8, !tbaa !705
  br label %bb.h

_ZN5ImGui16FindWindowByNameEPKc.exit:             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %.013.lcssa.i.i.i.i, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !187 ; 3 uses
  store ptr %i.at, ptr %i.g, align 8, !tbaa !705
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.h, label %bb.v

bb.h:                                             ; preds = %_ZN5ImGui16FindWindowByNameEPKc.exit.thread, %_ZN5ImGui16FindWindowByNameEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #41
  %i.av = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !191
  %i.aw = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !191
  %i.ax = tail call noundef ptr %i.av(i64 noundef 1080, ptr noundef %i.aw), !inline_history !1183 ; 8 uses
  %i.ay = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i, label %_ZN5ImGui8MemAllocEm.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 10596 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !194 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 10608 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 10604 ; 2 uses
  %i.be = load i16, ptr %i.bd, align 4, !tbaa !195 ; 2 uses
  %i.bf = sext i16 %i.be to i64                   ; 2 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !196
  %.not.i.i.i552 = icmp eq i32 %i.bh, %i.bb
  br i1 %.not.i.i.i552, label %._crit_edge.i, label %bb.j

._crit_edge.i:                                    ; preds = %bb.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 4, !tbaa !198
  %i.bi = add i16 %.pre.i, 1
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bj = sext i16 %i.be to i32
  %i.bk = add nsw i32 %i.bj, 1
  %i.bl = srem i32 %i.bk, 6                       ; 2 uses
  %i.bm = trunc nsw i32 %i.bl to i16
  store i16 %i.bm, ptr %i.bd, align 4, !tbaa !195
  %i.bn = sext i32 %i.bl to i64                   ; 2 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bn ; 3 uses
  store i32 %i.bb, ptr %i.bo, align 4, !tbaa !196
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 6
  store i16 0, ptr %i.bp, align 2, !tbaa !199
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store i16 0, ptr %i.bq, align 4, !tbaa !198
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %i.br = phi i16 [ 1, %bb.j ], [ %i.bi, %._crit_edge.i ]
  %i.bs = phi i64 [ %i.bn, %bb.j ], [ %i.bf, %._crit_edge.i ]
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i16 %i.br, ptr %i.bu, align 4, !tbaa !198
  %i.bv = load i32, ptr %i.az, align 4, !tbaa !200
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %i.az, align 4, !tbaa !200
  br label %_ZN5ImGui8MemAllocEm.exit.i

_ZN5ImGui8MemAllocEm.exit.i:                      ; preds = %bb.k, %bb.h
  tail call void @_ZN11ImGuiWindowC1EP12ImGuiContextPKc(ptr noundef nonnull align 8 dereferenceable(1077) %i.ax, ptr noundef nonnull %i.j, ptr noundef nonnull %0)
  store ptr %i.ax, ptr %i.f, align 8, !tbaa !705
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  store i32 %2, ptr %i.bx, align 4, !tbaa !722
  %i.by = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !726 ; 3 uses
  %i.ca = load ptr, ptr %i.af, align 8, !tbaa !259 ; 3 uses
  %i.cb = load i32, ptr %i.ae, align 8, !tbaa !258 ; 2 uses
  %i.cc = sext i32 %i.cb to i64                   ; 2 uses
  %.idx.i.i = shl nsw i64 %i.cc, 4
  %i.cd = getelementptr inbounds i8, ptr %i.ca, i64 %.idx.i.i
  %.not15.i.i.i = icmp eq i32 %i.cb, 0
  br i1 %.not15.i.i.i, label %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5ImGui8MemAllocEm.exit.i, %.lr.ph.i.i.i
  %.017.i.i.i = phi i64 [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.cc, %_ZN5ImGui8MemAllocEm.exit.i ] ; 2 uses
  %.01316.i.i.i = phi ptr [ %.114.i.i.i, %.lr.ph.i.i.i ], [ %i.ca, %_ZN5ImGui8MemAllocEm.exit.i ] ; 2 uses
  %i.ce = lshr i64 %.017.i.i.i, 1                 ; 3 uses
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %.01316.i.i.i, i64 %i.ce ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !255
  %i.ch = icmp ult i32 %i.cg, %i.bz               ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %.neg.i.i.i = xor i64 %i.ce, -1
  %i.cj = add i64 %.017.i.i.i, %.neg.i.i.i
  %.114.i.i.i = select i1 %i.ch, ptr %i.ci, ptr %.01316.i.i.i ; 2 uses
  %.1.i.i.i = select i1 %i.ch, i64 %i.cj, i64 %i.ce ; 2 uses
  %.not.i.i15.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not.i.i15.i, label %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !257

_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i: ; preds = %.lr.ph.i.i.i, %_ZN5ImGui8MemAllocEm.exit.i
  %.013.lcssa.i.i.i = phi ptr [ %i.ca, %_ZN5ImGui8MemAllocEm.exit.i ], [ %.114.i.i.i, %.lr.ph.i.i.i ] ; 4 uses
  %i.ck = icmp eq ptr %.013.lcssa.i.i.i, %i.cd
  br i1 %i.ck, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i
  %i.cl = load i32, ptr %.013.lcssa.i.i.i, align 8, !tbaa !255
  %.not.i16.i = icmp eq i32 %i.cl, %i.bz
  br i1 %.not.i16.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #41
  store i32 %i.bz, ptr %26, align 8, !tbaa !255
  %i.cm = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr %i.ax, ptr %i.cm, align 8, !tbaa !187
  %i.cn = call noundef ptr @_ZN8ImVectorI16ImGuiStoragePairE6insertEPKS0_RS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef %.013.lcssa.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %26) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #41
  br label %_ZN12ImGuiStorage10SetVoidPtrEjPv.exit.i

bb.n:                                             ; preds = %bb.l
  %i.co = getelementptr inbounds nuw i8, ptr %.013.lcssa.i.i.i, i64 8
  store ptr %i.ax, ptr %i.co, align 8, !tbaa !187
  br label %_ZN12ImGuiStorage10SetVoidPtrEjPv.exit.i

_ZN12ImGuiStorage10SetVoidPtrEjPv.exit.i:         ; preds = %bb.n, %bb.m
  %i.cp = and i32 %2, 256
  %.not.i = icmp eq i32 %i.cp, 0
  br i1 %.not.i, label %bb.o, label %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.thread.i

bb.o:                                             ; preds = %_ZN12ImGuiStorage10SetVoidPtrEjPv.exit.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ax, i64 708 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !706 ; 2 uses
  %.not.i17.i = icmp eq i32 %i.cr, -1
  br i1 %.not.i17.i, label %bb.p, label %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.i

bb.p:                                             ; preds = %bb.o
  %i.cs = load i32, ptr %i.by, align 8, !tbaa !726
  %i.ct = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 10104
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 10112
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !708 ; 3 uses
  %.not.i.i.i.i553 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i.i553, label %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.thread.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.p
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  br label %.lr.ph.i.i18.i

.lr.ph.i.i18.i:                                   ; preds = %select.unfold.i.i.i, %.lr.ph.i.preheader.i.i
  %.0914.i.i.i = phi ptr [ %i.dg, %select.unfold.i.i.i ], [ %i.cx, %.lr.ph.i.preheader.i.i ] ; 5 uses
  %i.cy = load i32, ptr %.0914.i.i.i, align 4, !tbaa !715
  %i.cz = icmp eq i32 %i.cy, %i.cs
  br i1 %i.cz, label %bb.q, label %select.unfold.i.i.i

bb.q:                                             ; preds = %.lr.ph.i.i18.i
  %i.da = getelementptr inbounds nuw i8, ptr %.0914.i.i.i, i64 14
  %i.db = load i8, ptr %i.da, align 2
  %i.dc = and i8 %i.db, 8
  %.not11.i.i.i = icmp eq i8 %i.dc, 0
  br i1 %.not11.i.i.i, label %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.thread21.i, label %select.unfold.i.i.i

select.unfold.i.i.i:                              ; preds = %bb.q, %.lr.ph.i.i18.i
  %i.dd = getelementptr inbounds i8, ptr %.0914.i.i.i, i64 -4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !205
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds i8, ptr %.0914.i.i.i, i64 %i.df ; 2 uses
  %i.dh = load i32, ptr %i.cu, align 8, !tbaa !714
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds i8, ptr %i.cw, i64 %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dl = icmp eq ptr %i.dg, %i.dk
  br i1 %i.dl, label %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.thread.i, label %.lr.ph.i.i18.i

_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.i: ; preds = %bb.o
  %i.dm = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 10112
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !708 ; 2 uses
  %i.dp = sext i32 %i.cr to i64
  %i.dq = getelementptr inbounds i8, ptr %i.do, i64 %i.dp
  %.not13.i = icmp eq ptr %i.do, null
  br i1 %.not13.i, label %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.thread.i, label %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.thread21.i

_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.thread21.i: ; preds = %bb.q, %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.i
  %.0.i24.i = phi ptr [ %i.dq, %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.i ], [ %.0914.i.i.i, %bb.q ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.j, i64 10112
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !708
  %i.dt = ptrtoint ptr %.0.i24.i to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = trunc i64 %i.dv to i32
  store i32 %i.dw, ptr %i.cq, align 4, !tbaa !706
  br label %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.thread.i

_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.thread.i: ; preds = %select.unfold.i.i.i, %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.thread21.i, %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.i, %bb.p, %_ZN12ImGuiStorage10SetVoidPtrEjPv.exit.i
  %.0.i = phi ptr [ null, %_ZN12ImGuiStorage10SetVoidPtrEjPv.exit.i ], [ %.0.i24.i, %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.thread21.i ], [ null, %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.i ], [ null, %bb.p ], [ null, %select.unfold.i.i.i ]
  call fastcc void @_ZL24InitOrLoadWindowSettingsP11ImGuiWindowP19ImGuiWindowSettings(ptr noundef nonnull %i.ax, ptr noundef %.0.i)
  %i.dx = and i32 %2, 8192
  %.not14.i = icmp eq i32 %i.dx, 0
  %i.dy = getelementptr inbounds nuw i8, ptr %i.j, i64 5216 ; 4 uses
  br i1 %.not14.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.thread.i
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !563
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @_ZN8ImVectorIP11ImGuiWindowE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.dy, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  br label %_ZL15CreateNewWindowPKci.exit

bb.t:                                             ; preds = %bb.r
  %i.eb = getelementptr inbounds nuw i8, ptr %i.j, i64 5224
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !561
  %i.ed = call noundef ptr @_ZN8ImVectorIP11ImGuiWindowE6insertEPKS1_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.dy, ptr noundef %i.ec, ptr noundef nonnull align 8 dereferenceable(8) %i.f) ; 0 uses
  br label %_ZL15CreateNewWindowPKci.exit

bb.u:                                             ; preds = %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.thread.i
  call void @_ZN8ImVectorIP11ImGuiWindowE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.dy, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  br label %_ZL15CreateNewWindowPKci.exit

_ZL15CreateNewWindowPKci.exit:                    ; preds = %bb.s, %bb.t, %bb.u
  %i.ee = load ptr, ptr %i.f, align 8, !tbaa !705 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #41
  store ptr %i.ee, ptr %i.g, align 8, !tbaa !705
  br label %bb.v

bb.v:                                             ; preds = %_ZL15CreateNewWindowPKci.exit, %_ZN5ImGui16FindWindowByNameEPKc.exit
  %i.ef = phi ptr [ %i.ee, %_ZL15CreateNewWindowPKci.exit ], [ %i.at, %_ZN5ImGui16FindWindowByNameEPKc.exit ] ; 2 uses
  %i.eg = phi i1 [ true, %_ZL15CreateNewWindowPKci.exit ], [ false, %_ZN5ImGui16FindWindowByNameEPKc.exit ] ; 10 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.j, i64 5304
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !687
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !726
  %i.el = icmp eq i32 %i.ei, %i.ek
  br i1 %i.el, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.debugtrap()
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !705
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.em = phi ptr [ %.pre, %bb.w ], [ %i.ef, %bb.v ] ; 14 uses
  %i.en = and i32 %2, 197120
  %i.eo = icmp eq i32 %i.en, 197120
  %i.ep = or i32 %2, 6
  %spec.select = select i1 %i.eo, i32 %i.ep, i32 %2 ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !194 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 656
  %i.et = load i32, ptr %i.es, align 8, !tbaa !792 ; 2 uses
  %.not444 = icmp eq i32 %i.et, %i.er             ; 6 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.j, i64 5264 ; 6 uses
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !1149
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ex = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.ey = load i8, ptr %i.ex, align 2, !tbaa !1147, !range !64, !noundef !204
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ez = phi i8 [ 0, %bb.x ], [ %i.ey, %bb.y ]
  %i.fa = getelementptr inbounds nuw i8, ptr %i.em, i64 213
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !435
  %i.fb = add nsw i32 %i.er, -1
  %i.fc = icmp slt i32 %i.et, %i.fb               ; 3 uses
  %i.fd = and i32 %spec.select, 67108864
  %.not445 = icmp eq i32 %i.fd, 0
  br i1 %.not445, label %bb.aa, label %.split

.split:                                           ; preds = %bb.z
  %i.fe = getelementptr inbounds nuw i8, ptr %i.j, i64 8168
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !914
  %i.fg = getelementptr inbounds nuw i8, ptr %i.j, i64 8160
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !578
  %i.fi = sext i32 %i.ff to i64
  %i.fj = getelementptr inbounds [56 x i8], ptr %i.fh, i64 %i.fi ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.em, i64 148
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !906
  %i.fm = load i32, ptr %i.fj, align 8, !tbaa !907
  %i.fn = icmp ne i32 %i.fl, %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !884
  %i.fq = icmp ne ptr %i.em, %i.fp
  %i.fr = or i1 %i.fn, %i.fq
  %i.fs = or i1 %i.fc, %i.fr                      ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.em, i64 211
  %i.fu = zext i1 %i.fs to i8
  store i8 %i.fu, ptr %i.ft, align 1, !tbaa !905
  br i1 %i.fs, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.fv = getelementptr inbounds nuw i8, ptr %i.em, i64 211
  %i.fw = zext i1 %i.fc to i8
  store i8 %i.fw, ptr %i.fv, align 1, !tbaa !905
  br i1 %i.fc, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.split, %bb.aa
  %i.fx = getelementptr inbounds nuw i8, ptr %i.em, i64 239 ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 1
  %i.fz = or i32 %i.fy, 134744064
  store i32 %i.fz, ptr %i.fx, align 1
  br label %bb.ac

bb.ac:                                            ; preds = %.split, %bb.ab, %bb.aa
  %.0407.in962 = phi i1 [ false, %.split ], [ true, %bb.ab ], [ false, %bb.aa ] ; 5 uses
  br i1 %.not444, label %bb.aj, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.em, ptr %i.e, align 8, !tbaa !705
  %i.ga = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 3 uses
  %i.gb = and i32 %spec.select, 16777216
  %.not26.i = icmp ne i32 %i.gb, 0
  %i.gc = and i32 %spec.select, 335544320
end_hunk_0
begin_hunk_1_@_ZN5ImGui5BeginEPKcPbi:bb.a
  %i.kt = and i32 %.1403, 33554432
  %.not463 = icmp eq i32 %i.kt, 0                 ; 3 uses
  br i1 %.not463, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ku = getelementptr inbounds nuw i8, ptr %i.j, i64 7784
  %i.kv = load i32, ptr %i.ku, align 8, !tbaa !1036
  %i.kw = trunc i32 %i.kv to i8
  %i.kx = lshr i8 %i.kw, 6
  %i.ky = and i8 %i.kx, 1
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.kz = phi i8 [ 0, %bb.ar ], [ %i.ky, %bb.as ]
  %i.la = getelementptr i8, ptr %i.ko, i64 -10    ; 2 uses
  store i8 %i.kz, ptr %i.la, align 2, !tbaa !1194
  %i.lb = getelementptr i8, ptr %i.ko, i64 -8
  store float 0.000000e+00, ptr %i.lb, align 8, !tbaa !1195
  %i.lc = getelementptr i8, ptr %i.ko, i64 -32    ; 2 uses
  %i.ld = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 11 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 5264
  %i.lf = load i32, ptr %i.le, align 8, !tbaa !1149
  %i.lg = trunc i32 %i.lf to i16
  store i16 %i.lg, ptr %i.lc, align 8, !tbaa !1150
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ld, i64 5312
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !298 ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 264
  %i.lk = load i32, ptr %i.lj, align 8, !tbaa !1151
  %i.ll = trunc i32 %i.lk to i16
  %i.lm = getelementptr i8, ptr %i.ko, i64 -30
  store i16 %i.ll, ptr %i.lm, align 2, !tbaa !1152
  %i.ln = getelementptr inbounds nuw i8, ptr %i.li, i64 416
  %i.lo = load i32, ptr %i.ln, align 8, !tbaa !461
  %i.lp = trunc i32 %i.lo to i16
  %i.lq = getelementptr i8, ptr %i.ko, i64 -28
  store i16 %i.lp, ptr %i.lq, align 4, !tbaa !1153
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ld, i64 8056
  %i.ls = load i32, ptr %i.lr, align 8, !tbaa !426
  %i.lt = trunc i32 %i.ls to i16
  %i.lu = getelementptr i8, ptr %i.ko, i64 -26
  store i16 %i.lt, ptr %i.lu, align 2, !tbaa !1154
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ld, i64 8072
  %i.lw = load i32, ptr %i.lv, align 8, !tbaa !449
  %i.lx = trunc i32 %i.lw to i16
  %i.ly = getelementptr i8, ptr %i.ko, i64 -24
  store i16 %i.lx, ptr %i.ly, align 8, !tbaa !1155
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ld, i64 8088
  %i.ma = load i32, ptr %i.lz, align 8, !tbaa !1156
  %i.mb = trunc i32 %i.ma to i16
  %i.mc = getelementptr i8, ptr %i.ko, i64 -22
  store i16 %i.mb, ptr %i.mc, align 2, !tbaa !1157
  %i.md = getelementptr inbounds nuw i8, ptr %i.ld, i64 8104 ; 2 uses
  %i.me = load i32, ptr %i.md, align 8, !tbaa !1158
  %i.mf = trunc i32 %i.me to i16
  %i.mg = getelementptr i8, ptr %i.ko, i64 -20
  store i16 %i.mf, ptr %i.mg, align 4, !tbaa !1159
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ld, i64 8136
  %i.mi = load i32, ptr %i.mh, align 8, !tbaa !1160
  %i.mj = trunc i32 %i.mi to i16
  %i.mk = getelementptr i8, ptr %i.ko, i64 -18
  store i16 %i.mj, ptr %i.mk, align 2, !tbaa !1161
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ld, i64 8120
  %i.mm = load i32, ptr %i.ml, align 8, !tbaa !1162
  %i.mn = trunc i32 %i.mm to i16
  %i.mo = getelementptr i8, ptr %i.ko, i64 -16
  store i16 %i.mn, ptr %i.mo, align 8, !tbaa !1163
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ld, i64 8168
  %i.mq = load i32, ptr %i.mp, align 8, !tbaa !914
  %i.mr = trunc i32 %i.mq to i16
  %i.ms = getelementptr i8, ptr %i.ko, i64 -14
  store i16 %i.mr, ptr %i.ms, align 2, !tbaa !1164
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ld, i64 9856
  %i.mu = load i16, ptr %i.mt, align 8, !tbaa !1165
  %i.mv = getelementptr i8, ptr %i.ko, i64 -12
  store i16 %i.mu, ptr %i.mv, align 4, !tbaa !1166
  %i.mw = getelementptr inbounds nuw i8, ptr %i.j, i64 10392
  store ptr %i.lc, ptr %i.mw, align 8, !tbaa !680
  %i.mx = and i32 %.1403, 268435456
  %.not448 = icmp ne i32 %i.mx, 0                 ; 3 uses
  br i1 %.not448, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.my = getelementptr inbounds nuw i8, ptr %i.j, i64 9716 ; 2 uses
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !1196
  %i.na = add nsw i32 %i.mz, 1
  store i32 %i.na, ptr %i.my, align 4, !tbaa !1196
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  br i1 %.not444, label %._crit_edge1032, label %bb.aw

._crit_edge1032:                                  ; preds = %bb.av
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.kq, i64 24
  %.pre1033 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !1188
  %.pre1069 = and i32 %.pre1033, 256
  %.pre1070 = and i32 %.1403, 67108864
  br label %bb.bf

bb.aw:                                            ; preds = %bb.av
  %i.nb = getelementptr inbounds nuw i8, ptr %i.kq, i64 944
  store ptr %i.kb, ptr %i.nb, align 8, !tbaa !1043
  %i.nc = getelementptr inbounds nuw i8, ptr %i.kq, i64 984
  %i.nd = getelementptr inbounds nuw i8, ptr %i.kq, i64 976
  %i.ne = getelementptr inbounds nuw i8, ptr %i.kq, i64 968
  %i.nf = getelementptr inbounds nuw i8, ptr %i.kq, i64 960 ; 2 uses
  %i.ng = insertelement <4 x ptr> poison, ptr %i.kq, i64 0
  %i.nh = shufflevector <4 x ptr> %i.ng, <4 x ptr> poison, <4 x i32> zeroinitializer
  store <4 x ptr> %i.nh, ptr %i.nf, align 8, !tbaa !705
  %.not.i556 = icmp eq ptr %i.kb, null            ; 4 uses
  %i.ni = and i32 %.1403, 50331648
  %i.nj = icmp ne i32 %i.ni, 16777216
  %or.cond29.not.i = or i1 %i.nj, %.not.i556
  br i1 %or.cond29.not.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.nk = getelementptr inbounds nuw i8, ptr %i.kb, i64 960
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !847
  store ptr %i.nl, ptr %i.nf, align 8, !tbaa !847
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.nm = and i32 %.1403, 67108864                ; 2 uses
  %.not25.i = icmp eq i32 %i.nm, 0
  %or.cond30.i = or i1 %.not25.i, %.not.i556
  br i1 %or.cond30.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.nn = getelementptr inbounds nuw i8, ptr %i.kb, i64 968
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !1197
  store ptr %i.no, ptr %i.ne, align 8, !tbaa !1197
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.np = and i32 %.1403, 134217728
  %.not26.i557 = icmp ne i32 %i.np, 0
  %i.nq = and i32 %.1403, 117440512
  %.not27.i = icmp eq i32 %i.nq, 0
  %i.nr = or i1 %.not26.i557, %.not27.i
  %or.cond32.i = or i1 %i.nr, %.not.i556
  br i1 %or.cond32.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ns = getelementptr inbounds nuw i8, ptr %i.kb, i64 976
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !1198
  store ptr %i.nt, ptr %i.nd, align 8, !tbaa !1198
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.nu = getelementptr inbounds nuw i8, ptr %i.kq, i64 24
  %i.nv = load i32, ptr %i.nu, align 8, !tbaa !1188
  %i.nw = and i32 %i.nv, 256                      ; 2 uses
  %.not2834.i = icmp eq i32 %i.nw, 0
  br i1 %.not2834.i, label %_ZN5ImGui30UpdateWindowParentAndRootLinksEP11ImGuiWindowiS1_.exit, label %.lr.ph.i558

.lr.ph.i558:                                      ; preds = %bb.bc, %.lr.ph.i558
  %i.nx = phi ptr [ %i.nz, %.lr.ph.i558 ], [ %i.kq, %bb.bc ]
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 944
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !1043 ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 24
  %i.ob = load i32, ptr %i.oa, align 8, !tbaa !1188
  %i.oc = and i32 %i.ob, 256
  %.not28.i = icmp eq i32 %i.oc, 0
  br i1 %.not28.i, label %._crit_edge.i559, label %.lr.ph.i558, !llvm.loop !1199

._crit_edge.i559:                                 ; preds = %.lr.ph.i558
  store ptr %i.nz, ptr %i.nc, align 8, !tbaa !390
  br label %_ZN5ImGui30UpdateWindowParentAndRootLinksEP11ImGuiWindowiS1_.exit

_ZN5ImGui30UpdateWindowParentAndRootLinksEP11ImGuiWindowiS1_.exit: ; preds = %bb.bc, %._crit_edge.i559
  %i.od = getelementptr inbounds nuw i8, ptr %i.kq, i64 952
  store ptr %i.jw, ptr %i.od, align 8, !tbaa !848
  %i.oe = and i32 %.1403, 16777216
  %.not449 = icmp eq i32 %i.oe, 0
  %i.of = select i1 %.not449, ptr null, ptr %i.jw
  %i.og = getelementptr inbounds nuw i8, ptr %i.kq, i64 992
  store ptr %i.of, ptr %i.og, align 8, !tbaa !1200
  br i1 %.not.i556, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %_ZN5ImGui30UpdateWindowParentAndRootLinksEP11ImGuiWindowiS1_.exit
  %i.oh = getelementptr inbounds nuw i8, ptr %i.kb, i64 700
  %i.oi = load float, ptr %i.oh, align 4, !tbaa !1201
  %i.oj = getelementptr inbounds nuw i8, ptr %i.kb, i64 696
  %i.ok = load float, ptr %i.oj, align 8, !tbaa !1108
  %i.ol = fmul float %i.oi, %i.ok
  br label %bb.be

bb.be:                                            ; preds = %_ZN5ImGui30UpdateWindowParentAndRootLinksEP11ImGuiWindowiS1_.exit, %bb.bd
  %i.om = phi float [ %i.ol, %bb.bd ], [ 1.000000e+00, %_ZN5ImGui30UpdateWindowParentAndRootLinksEP11ImGuiWindowiS1_.exit ]
  %i.on = getelementptr inbounds nuw i8, ptr %i.kq, i64 700
  store float %i.om, ptr %i.on, align 4, !tbaa !1201
  br label %bb.bf

bb.bf:                                            ; preds = %._crit_edge1032, %bb.be
  %.pre-phi1071 = phi i32 [ %.pre1070, %._crit_edge1032 ], [ %i.nm, %bb.be ] ; 2 uses
  %.pre-phi = phi i32 [ %.pre1069, %._crit_edge1032 ], [ %i.nw, %bb.be ]
  %.not451 = icmp eq i32 %.pre-phi, 0
  %i.oo = getelementptr inbounds nuw i8, ptr %i.j, i64 7780 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %.in = select i1 %.not451, ptr %i.op, ptr %i.oo
  %i.oq = load i32, ptr %.in, align 4, !tbaa !205 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #41
  store i32 %i.oq, ptr %25, align 4, !tbaa !1202
  %i.or = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %i.os = load i32, ptr %i.or, align 8, !tbaa !726
  %i.ot = getelementptr inbounds nuw i8, ptr %25, i64 4
  store i32 %i.os, ptr %i.ot, align 4, !tbaa !1204
  call void @_ZN8ImVectorI19ImGuiFocusScopeDataE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.md, ptr noundef nonnull align 4 dereferenceable(8) %25)
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ld, i64 7780
  store i32 %i.oq, ptr %i.ou, align 4, !tbaa !1035
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #41
  %i.ov = load i32, ptr %i.oo, align 4, !tbaa !1035
  %i.ow = load ptr, ptr %i.g, align 8, !tbaa !705 ; 3 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 1064
  store i32 %i.ov, ptr %i.ox, align 8, !tbaa !898
  %i.oy = icmp ne i32 %.pre-phi1071, 0            ; 6 uses
  br i1 %i.oy, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.oz = getelementptr inbounds nuw i8, ptr %i.j, i64 8168 ; 2 uses
  %i.pa = load i32, ptr %i.oz, align 8, !tbaa !914
  %i.pb = getelementptr inbounds nuw i8, ptr %i.j, i64 8160
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !578
  %i.pd = sext i32 %i.pa to i64
  %i.pe = getelementptr inbounds [56 x i8], ptr %i.pc, i64 %i.pd ; 4 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  store ptr %i.ow, ptr %i.pf, align 8, !tbaa !884
  %i.pg = getelementptr inbounds nuw i8, ptr %i.jw, i64 368
  %i.ph = load i32, ptr %i.pg, align 8, !tbaa !1205
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pe, i64 24
  store i32 %i.ph, ptr %i.pi, align 8, !tbaa !1206
  call void @_ZN8ImVectorI14ImGuiPopupDataE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.oz, ptr noundef nonnull align 8 dereferenceable(52) %i.pe)
  %i.pj = load i32, ptr %i.pe, align 8, !tbaa !907
  %i.pk = load ptr, ptr %i.g, align 8, !tbaa !705 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 148
  store i32 %i.pj, ptr %i.pl, align 4, !tbaa !906
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.pm = phi ptr [ %i.pk, %bb.bg ], [ %i.ow, %bb.bf ] ; 4 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.j, i64 7928 ; 6 uses
  %i.po = load i32, ptr %i.pn, align 8, !tbaa !1128
  %i.pp = and i32 %i.po, 1
  %.not452 = icmp eq i32 %i.pp, 0
  br i1 %.not452, label %bb.bm, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pm, i64 239 ; 2 uses
  %i.pr = load i32, ptr %i.pq, align 1            ; 2 uses
  %i.ps = shl i32 %i.pr, 16
  %i.pt = ashr i32 %i.ps, 24
  %i.pu = getelementptr inbounds nuw i8, ptr %i.j, i64 7932
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !1207 ; 2 uses
  %i.pw = and i32 %i.pt, %i.pv
  %i.px = icmp ne i32 %i.pw, 0                    ; 2 uses
  br i1 %i.px, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.py = getelementptr inbounds nuw i8, ptr %i.j, i64 7952 ; 2 uses
  %i.pz = load float, ptr %i.py, align 8, !tbaa !227 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.j, i64 7956
  %i.qb = load float, ptr %i.qa, align 4, !tbaa !228 ; 2 uses
  %i.qc = fmul float %i.qb, %i.qb
  %i.qd = call noundef float @llvm.fmuladd.f32(float %i.pz, float %i.pz, float %i.qc)
  %i.qe = fcmp ogt float %i.qd, f0x3727C5AC
  br i1 %i.qe, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.qf = getelementptr inbounds nuw i8, ptr %i.j, i64 7944
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pm, i64 244
  %i.qh = load i64, ptr %i.qf, align 8
  store i64 %i.qh, ptr %i.qg, align 4
  %i.qi = getelementptr inbounds nuw i8, ptr %i.pm, i64 252
  %i.qj = load i64, ptr %i.py, align 8
  store i64 %i.qj, ptr %i.qi, align 4
  %i.qk = and i32 %i.pr, -3585
  store i32 %i.qk, ptr %i.pq, align 1
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj, %bb.bi
  %i.ql = getelementptr inbounds nuw i8, ptr %i.j, i64 7944
  call void @_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i(ptr noundef nonnull %i.pm, ptr noundef nonnull align 4 dereferenceable(8) %i.ql, i32 noundef %i.pv)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %bb.bl, %bb.bh
  %.0421.shrunk = phi i1 [ true, %bb.bk ], [ %i.px, %bb.bl ], [ false, %bb.bh ] ; 5 uses
  %i.qm = load i32, ptr %i.pn, align 8, !tbaa !1128 ; 2 uses
  %i.qn = and i32 %i.qm, 2
  %.not453 = icmp eq i32 %i.qn, 0
  br i1 %.not453, label %bb.bu, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.qo = load ptr, ptr %i.g, align 8, !tbaa !705 ; 5 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 239 ; 2 uses
  %i.qq = load i32, ptr %i.qp, align 1            ; 2 uses
  %i.qr = shl i32 %i.qq, 8
  %i.qs = ashr i32 %i.qr, 24
  %i.qt = getelementptr inbounds nuw i8, ptr %i.j, i64 7936
  %i.qu = load i32, ptr %i.qt, align 8, !tbaa !1148 ; 2 uses
  %i.qv = and i32 %i.qs, %i.qu
  %.not454 = icmp eq i32 %i.qv, 0
  br i1 %.not454, label %.thread, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.qw = getelementptr inbounds nuw i8, ptr %i.j, i64 7960
  %i.qx = load float, ptr %i.qw, align 8, !tbaa !1208
  %i.qy = fcmp ogt float %i.qx, 0.000000e+00
  %i.qz = getelementptr inbounds nuw i8, ptr %i.j, i64 7964
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !1209
  %i.rb = fcmp ogt float %i.ra, 0.000000e+00
  br label %.thread

.thread:                                          ; preds = %bb.bn, %bb.bo
  %i.rc = phi i1 [ %i.qy, %bb.bo ], [ false, %bb.bn ]
  %i.rd = phi i1 [ %i.rb, %bb.bo ], [ false, %bb.bn ]
  %i.re = getelementptr inbounds nuw i8, ptr %i.qo, i64 24
  %i.rf = load i32, ptr %i.re, align 8, !tbaa !1188 ; 2 uses
  %i.rg = and i32 %i.rf, 4
  %.not456 = icmp ne i32 %i.rg, 0
  %i.rh = and i32 %i.qq, 262144
  %i.ri = icmp eq i32 %i.rh, 0
  %or.cond992 = and i1 %i.ri, %.not456
  br i1 %or.cond992, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %.thread
  %i.rj = getelementptr inbounds nuw i8, ptr %i.qo, i64 56
  %i.rk = load float, ptr %i.rj, align 8, !tbaa !910
  %i.rl = getelementptr inbounds nuw i8, ptr %i.j, i64 7960
  store float %i.rk, ptr %i.rl, align 8, !tbaa !1208
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %.thread
  %i.rm = and i32 %i.rf, 8
  %.not457 = icmp eq i32 %i.rm, 0
  br i1 %.not457, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.rn = load i32, ptr %i.qp, align 1
  %i.ro = and i32 %i.rn, 262144
  %i.rp = icmp eq i32 %i.ro, 0
  br i1 %i.rp, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.rq = getelementptr inbounds nuw i8, ptr %i.qo, i64 60
  %i.rr = load float, ptr %i.rq, align 4, !tbaa !1210
  %i.rs = getelementptr inbounds nuw i8, ptr %i.j, i64 7964
  store float %i.rr, ptr %i.rs, align 4, !tbaa !1209
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br, %bb.bq
  %i.rt = getelementptr inbounds nuw i8, ptr %i.j, i64 7960
  call void @_ZN5ImGui13SetWindowSizeEP11ImGuiWindowRK6ImVec2i(ptr noundef nonnull %i.qo, ptr noundef nonnull align 4 dereferenceable(8) %i.rt, i32 noundef %i.qu)
  %.pre1034 = load i32, ptr %i.pn, align 8, !tbaa !1128
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bm
  %i.ru = phi i32 [ %.pre1034, %bb.bt ], [ %i.qm, %bb.bm ] ; 2 uses
  %.0420 = phi i1 [ %i.rc, %bb.bt ], [ false, %bb.bm ] ; 5 uses
  %.0419 = phi i1 [ %i.rd, %bb.bt ], [ false, %bb.bm ] ; 5 uses
  %i.rv = and i32 %i.ru, 128
  %.not458 = icmp eq i32 %i.rv, 0
  br i1 %.not458, label %bb.bz, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.rw = getelementptr inbounds nuw i8, ptr %i.j, i64 7976
  %i.rx = load float, ptr %i.rw, align 8, !tbaa !1211 ; 2 uses
  %i.ry = fcmp ult float %i.rx, 0.000000e+00
  br i1 %i.ry, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.rz = load ptr, ptr %i.g, align 8, !tbaa !705 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 168
  store float %i.rx, ptr %i.sa, align 8, !tbaa !1087
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rz, i64 176
  store float 0.000000e+00, ptr %i.sb, align 8, !tbaa !1088
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.sc = getelementptr inbounds nuw i8, ptr %i.j, i64 7980
  %i.sd = load float, ptr %i.sc, align 4, !tbaa !1212 ; 2 uses
  %i.se = fcmp ult float %i.sd, 0.000000e+00
  br i1 %i.se, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.sf = load ptr, ptr %i.g, align 8, !tbaa !705 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 172
  store float %i.sd, ptr %i.sg, align 4, !tbaa !1078
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sf, i64 180
  store float 0.000000e+00, ptr %i.sh, align 4, !tbaa !1079
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bx, %bb.by, %bb.bu
  %i.si = and i32 %i.ru, 4
  %.not459 = icmp eq i32 %i.si, 0
  br i1 %.not459, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.sj = getelementptr inbounds nuw i8, ptr %i.j, i64 7968
  %i.sk = load ptr, ptr %i.g, align 8, !tbaa !705 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 80
  %i.sm = load i64, ptr %i.sj, align 8
  store i64 %i.sm, ptr %i.sl, align 8
  br label %bb.cd

bb.cb:                                            ; preds = %bb.bz
  %.pre1037.pre.pre = load ptr, ptr %i.g, align 8, !tbaa !705 ; 4 uses
  br i1 %.not444, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.sn = getelementptr inbounds nuw i8, ptr %.pre1037.pre.pre, i64 80
  store i32 0, ptr %i.sn, align 8
end_hunk_1
begin_hunk_2_@_ZN5ImGui5BeginEPKcPbi:bb.a
  %i.zg = getelementptr inbounds [592 x i8], ptr %i.ze, i64 %i.zf
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %.ph.i = phi ptr [ null, %bb.dw ], [ %i.zg, %bb.dx ]
  %i.zh = getelementptr inbounds nuw i8, ptr %i.yn, i64 8984
  store ptr %.ph.i, ptr %i.zh, align 8, !tbaa !338
  %i.zi = getelementptr inbounds nuw i8, ptr %i.yn, i64 4584
  store float 1.000000e+00, ptr %i.zi, align 8, !tbaa !1227
  %i.zj = getelementptr inbounds nuw i8, ptr %i.yn, i64 44
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !950
  %i.zl = and i32 %i.zk, 16
  %.not24.i570 = icmp eq i32 %i.zl, 0
  br i1 %.not24.i570, label %bb.ec, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.zm = getelementptr inbounds nuw i8, ptr %i.yq, i64 24
  %i.zn = load float, ptr %i.zm, align 8, !tbaa !1228 ; 2 uses
  %i.zo = fcmp une float %i.zn, 0.000000e+00
  br i1 %i.zo, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.zp = getelementptr inbounds nuw i8, ptr %i.yn, i64 56
  %i.zq = load float, ptr %i.zp, align 8, !tbaa !1229
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.zr = phi float [ %i.zq, %bb.ea ], [ %i.zn, %bb.dz ]
  %i.zs = getelementptr inbounds nuw i8, ptr %i.yn, i64 4580
  store float %i.zr, ptr %i.zs, align 4, !tbaa !1230
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.dy
  %i.zt = getelementptr inbounds nuw i8, ptr %i.xt, i64 209 ; 3 uses
  %i.zu = load i8, ptr %i.zt, align 1, !tbaa !1231, !range !64, !noundef !204
  store i8 0, ptr %i.zt, align 1, !tbaa !1231
  call void @_ZN5ImGui21UpdateCurrentFontSizeEf(float noundef 0.000000e+00)
  store i8 %i.zu, ptr %i.zt, align 1, !tbaa !1231
  %i.zv = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 8 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 5312
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !298 ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zv, i64 8984
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !338
  %i.aaa = icmp eq ptr %i.zz, null
  br i1 %i.aaa, label %bb.ed, label %_ZL16SetCurrentWindowP11ImGuiWindow.exit

bb.ed:                                            ; preds = %bb.ec
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zx, i64 456
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !333
  %i.aad = icmp eq ptr %i.aac, null
  %i.aae = zext i1 %i.aad to i8
  br label %_ZL16SetCurrentWindowP11ImGuiWindow.exit

_ZL16SetCurrentWindowP11ImGuiWindow.exit:         ; preds = %bb.ec, %bb.ed
  %i.aaf = phi i8 [ 0, %bb.ec ], [ %i.aae, %bb.ed ]
  %i.aag = getelementptr inbounds nuw i8, ptr %i.zx, i64 376
  store i8 %i.aaf, ptr %i.aag, align 8, !tbaa !1232
  br i1 %.not462, label %.thread964, label %bb.ee

.thread964:                                       ; preds = %_ZL16SetCurrentWindowP11ImGuiWindow.exit
  %i.aah = and i32 %.1403, 134217728
  %.not469 = icmp eq i32 %i.aah, 0
  %or.cond515 = and i1 %.not466, %.not469
  %.in470.v = select i1 %or.cond515, i64 3280, i64 3240
  %.in470 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.in470.v
  %i.aai = load float, ptr %.in470, align 4, !tbaa !8
  %i.aaj = load ptr, ptr %i.g, align 8, !tbaa !705 ; 3 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 100
  store float %i.aai, ptr %i.aak, align 4, !tbaa !1233
  %i.aal = getelementptr inbounds nuw i8, ptr %i.j, i64 3228
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aaj, i64 88
  %i.aan = load i64, ptr %i.aal, align 4          ; 2 uses
  store i64 %i.aan, ptr %i.aam, align 8
  %i.aao = trunc i64 %i.aan to i32
  %i.aap = bitcast i32 %i.aao to float
  br label %bb.ej

bb.ee:                                            ; preds = %_ZL16SetCurrentWindowP11ImGuiWindow.exit
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.j, i64 3272
  %i.aar = load float, ptr %i.aaq, align 8, !tbaa !1234 ; 2 uses
  %i.aas = load ptr, ptr %i.g, align 8, !tbaa !705 ; 7 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 100
  store float %i.aar, ptr %i.aat, align 4, !tbaa !1233
  %i.aau = getelementptr inbounds nuw i8, ptr %i.j, i64 3228
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aas, i64 88 ; 2 uses
  %i.aaw = load i64, ptr %i.aau, align 4          ; 2 uses
  store i64 %i.aaw, ptr %i.aav, align 8
  %i.aax = trunc i64 %i.aaw to i32
  %i.aay = bitcast i32 %i.aax to float            ; 2 uses
  br i1 %i.oy, label %bb.ej, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aas, i64 24
  %i.aba = load i32, ptr %i.aaz, align 8, !tbaa !1188
  %i.abb = and i32 %i.aba, 2
  %.not471 = icmp eq i32 %i.abb, 0
  %i.abc = fcmp oeq float %i.aar, 0.000000e+00
  %or.cond1192 = select i1 %.not471, i1 %i.abc, i1 false
  br i1 %or.cond1192, label %bb.eg, label %bb.ej

bb.eg:                                            ; preds = %bb.ef
  %i.abd = and i32 %.1403, 1024
  %.not472 = icmp eq i32 %i.abd, 0
  br i1 %.not472, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.abe = getelementptr inbounds nuw i8, ptr %i.j, i64 3232
  %i.abf = load i32, ptr %i.abe, align 8, !tbaa !1235
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eg, %bb.eh
  %i.abg = phi i32 [ %i.abf, %bb.eh ], [ 0, %bb.eg ]
  store i32 0, ptr %i.aav, align 8
  %.sroa_idx861 = getelementptr inbounds nuw i8, ptr %i.aas, i64 92
  store i32 %i.abg, ptr %.sroa_idx861, align 4
  br label %bb.ej

bb.ej:                                            ; preds = %.thread964, %bb.ee, %bb.ei, %bb.ef
  %i.abh = phi float [ %i.aap, %.thread964 ], [ %i.aay, %bb.ee ], [ 0.000000e+00, %bb.ei ], [ %i.aay, %bb.ef ] ; 2 uses
  %brmerge966 = phi i1 [ true, %.thread964 ], [ true, %bb.ee ], [ false, %bb.ei ], [ false, %bb.ef ]
  %i.abi = phi ptr [ %i.aaj, %.thread964 ], [ %i.aas, %bb.ee ], [ %i.aas, %bb.ei ], [ %i.aas, %bb.ef ] ; 28 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.j, i64 3300 ; 2 uses
  %i.abk = load float, ptr %i.abj, align 4, !tbaa !1236 ; 2 uses
  %i.abl = fcmp oge float %i.abh, %i.abk
  %i.abm = select i1 %i.abl, float %i.abh, float %i.abk ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.j, i64 8036
  %i.abo = load float, ptr %i.abn, align 4, !tbaa !1237 ; 2 uses
  %i.abp = fcmp oge float %i.abm, %i.abo
  %i.abq = select i1 %i.abp, float %i.abm, float %i.abo
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abi, i64 380
  store float %i.abq, ptr %i.abr, align 4, !tbaa !1238
  %i.abs = getelementptr inbounds nuw i8, ptr %i.j, i64 8040
  %i.abt = load float, ptr %i.abs, align 8, !tbaa !1239 ; 2 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abi, i64 384
  store float %i.abt, ptr %i.abu, align 4, !tbaa !1240
  %i.abv = and i32 %.1403, 1
  %.not473 = icmp eq i32 %i.abv, 0                ; 2 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %i.j, i64 4568
  %i.abx = load float, ptr %i.abw, align 8, !tbaa !454 ; 3 uses
  br i1 %.not473, label %bb.ek, label %._crit_edge1242

bb.ek:                                            ; preds = %bb.ej
  %i.aby = getelementptr inbounds nuw i8, ptr %i.j, i64 3288
  %i.abz = load float, ptr %i.aby, align 8, !tbaa !458
  %i.aca = call float @llvm.fmuladd.f32(float %i.abz, float 2.000000e+00, float %i.abx)
  br label %._crit_edge1242

._crit_edge1242:                                  ; preds = %bb.ej, %bb.ek
  %i.acb = phi float [ %i.aca, %bb.ek ], [ 0.000000e+00, %bb.ej ] ; 3 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abi, i64 104
  store float %i.acb, ptr %i.acc, align 8, !tbaa !909
  %i.acd = and i32 %.1403, 1024
  %.not474.not = icmp eq i32 %i.acd, 0
  %.phi.trans.insert1040 = getelementptr inbounds nuw i8, ptr %i.j, i64 4568 ; 2 uses
  br i1 %.not474.not, label %._crit_edge1039, label %bb.el

bb.el:                                            ; preds = %._crit_edge1242
  %i.ace = fadd float %i.abt, %i.abx
  %i.acf = getelementptr inbounds nuw i8, ptr %i.j, i64 3288
  %i.acg = load float, ptr %i.acf, align 8, !tbaa !458
  %i.ach = call float @llvm.fmuladd.f32(float %i.acg, float 2.000000e+00, float %i.ace)
  br label %._crit_edge1039

._crit_edge1039:                                  ; preds = %._crit_edge1242, %bb.el
  %i.aci = phi float [ %i.ach, %bb.el ], [ 0.000000e+00, %._crit_edge1242 ] ; 2 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %i.abi, i64 108
  store float %i.aci, ptr %i.acj, align 4, !tbaa !1241
  %i.ack = getelementptr inbounds nuw i8, ptr %i.abi, i64 704
  store float %i.abx, ptr %i.ack, align 8, !tbaa !794
  br i1 %.0420, label %bb.em, label %bb.eo

bb.em:                                            ; preds = %._crit_edge1039
  %i.acl = getelementptr inbounds nuw i8, ptr %i.abi, i64 80
  %i.acm = load float, ptr %i.acl, align 8, !tbaa !1242
  %i.acn = fcmp une float %i.acm, 0.000000e+00
  br i1 %i.acn, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em, %._crit_edge1039
  %.0412 = phi i1 [ true, %bb.en ], [ %i.eg, %bb.em ], [ %i.eg, %._crit_edge1039 ]
  br i1 %.0419, label %bb.ep, label %bb.er

bb.ep:                                            ; preds = %bb.eo
  %i.aco = getelementptr inbounds nuw i8, ptr %i.abi, i64 84
  %i.acp = load float, ptr %i.aco, align 4, !tbaa !1243
  %i.acq = fcmp une float %i.acp, 0.000000e+00
  br i1 %i.acq, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep, %bb.eo
  %.0410 = phi i1 [ true, %bb.eq ], [ %i.eg, %bb.ep ], [ %i.eg, %bb.eo ] ; 3 uses
  %i.acr = and i32 %.1403, 33
  %or.cond516 = icmp eq i32 %i.acr, 0
  br i1 %or.cond516, label %bb.es, label %bb.fd

bb.es:                                            ; preds = %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #41
  %i.acs = getelementptr inbounds nuw i8, ptr %i.abi, i64 40
  %i.act = getelementptr inbounds nuw i8, ptr %i.abi, i64 56
  %i.acu = load float, ptr %i.act, align 8, !tbaa !910
  %i.acv = load <2 x float>, ptr %i.acs, align 8, !tbaa !8 ; 2 uses
  %i.acw = insertelement <2 x float> poison, float %i.acu, i64 0
  %i.acx = insertelement <2 x float> %i.acw, float %i.acb, i64 1
  %i.acy = fadd <2 x float> %i.acx, %i.acv
  store <2 x float> %i.acv, ptr %27, align 8
  %i.acz = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  store <2 x float> %i.acy, ptr %i.acz, align 8
  %i.ada = getelementptr inbounds nuw i8, ptr %i.j, i64 5320
  %i.adb = load ptr, ptr %i.ada, align 8, !tbaa !853
  %i.adc = icmp eq ptr %i.adb, %i.abi
  br i1 %i.adc, label %bb.et, label %bb.ez

bb.et:                                            ; preds = %bb.es
  %i.add = getelementptr inbounds nuw i8, ptr %i.j, i64 5404
  %i.ade = load i32, ptr %i.add, align 4, !tbaa !840
  %i.adf = icmp eq i32 %i.ade, 0
  br i1 %i.adf, label %bb.eu, label %bb.ez

bb.eu:                                            ; preds = %bb.et
  %i.adg = getelementptr inbounds nuw i8, ptr %i.j, i64 5408
  %i.adh = load i32, ptr %i.adg, align 8, !tbaa !842
  %i.adi = icmp eq i32 %i.adh, 0
  br i1 %i.adi, label %bb.ev, label %bb.ez

bb.ev:                                            ; preds = %bb.eu
  %i.adj = getelementptr inbounds nuw i8, ptr %i.j, i64 5428
  %i.adk = load i32, ptr %i.adj, align 4, !tbaa !819
  %i.adl = icmp eq i32 %i.adk, 0
  br i1 %i.adl, label %bb.ew, label %bb.ez

bb.ew:                                            ; preds = %bb.ev
  %i.adm = call noundef zeroext i1 @_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b(ptr noundef nonnull align 4 dereferenceable(8) %27, ptr noundef nonnull align 4 dereferenceable(8) %i.acz, i1 noundef zeroext true)
  br i1 %i.adm, label %bb.ex, label %bb.ez

bb.ex:                                            ; preds = %bb.ew
  %i.adn = getelementptr inbounds nuw i8, ptr %i.j, i64 2890
  %i.ado = load i16, ptr %i.adn, align 2, !tbaa !235
  %i.adp = icmp eq i16 %i.ado, 2
  br i1 %i.adp, label %_ZN5ImGui11GetKeyOwnerE8ImGuiKey.exit, label %bb.ez

_ZN5ImGui11GetKeyOwnerE8ImGuiKey.exit:            ; preds = %bb.ex
  %i.adq = getelementptr i8, ptr %i.zv, i64 7292  ; 2 uses
  %i.adr = load i32, ptr %i.adq, align 4, !tbaa !622
  %i.ads = icmp eq i32 %i.adr, -1
  br i1 %i.ads, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %_ZN5ImGui11GetKeyOwnerE8ImGuiKey.exit
  %i.adt = getelementptr inbounds nuw i8, ptr %i.abi, i64 208
  store i8 1, ptr %i.adt, align 8, !tbaa !1215
  %i.adu = getelementptr inbounds nuw i8, ptr %i.abi, i64 140
  %i.adv = load i32, ptr %i.adu, align 4, !tbaa !790 ; 2 uses
  %i.adw = getelementptr i8, ptr %i.zv, i64 7296
  store i32 %i.adv, ptr %i.adw, align 8, !tbaa !620
  store i32 %i.adv, ptr %i.adq, align 4, !tbaa !622
  %i.adx = getelementptr i8, ptr %i.zv, i64 7301
  store i8 0, ptr %i.adx, align 1, !tbaa !623
  %i.ady = getelementptr i8, ptr %i.zv, i64 7300
  store i8 0, ptr %i.ady, align 4, !tbaa !624
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ex, %_ZN5ImGui11GetKeyOwnerE8ImGuiKey.exit, %bb.ey, %bb.ew, %bb.ev, %bb.eu, %bb.et, %bb.es
  %i.adz = getelementptr inbounds nuw i8, ptr %i.abi, i64 208
  %i.aea = load i8, ptr %i.adz, align 8, !tbaa !1215, !range !64, !noundef !204
  %i.aeb = trunc nuw i8 %i.aea to i1
  br i1 %i.aeb, label %bb.fa, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit

bb.fa:                                            ; preds = %bb.ez
  %i.aec = getelementptr inbounds nuw i8, ptr %i.abi, i64 207 ; 2 uses
  %i.aed = load i8, ptr %i.aec, align 1, !tbaa !721, !range !64, !noundef !204 ; 2 uses
  %i.aee = xor i8 %i.aed, 1
  store i8 %i.aee, ptr %i.aec, align 1, !tbaa !721
  %.not1002 = icmp ne i8 %i.aed, 0
  %spec.select517 = or i1 %.0410, %.not1002       ; 3 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %i.abi, i64 20
  %i.aeg = load i32, ptr %i.aef, align 4, !tbaa !722
  %i.aeh = and i32 %i.aeg, 256
  %.not.i574 = icmp eq i32 %i.aeh, 0
  br i1 %.not.i574, label %bb.fb, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit

bb.fb:                                            ; preds = %bb.fa
  %i.aei = getelementptr inbounds nuw i8, ptr %i.zv, i64 10068 ; 2 uses
  %i.aej = load float, ptr %i.aei, align 4, !tbaa !676
  %i.aek = fcmp ugt float %i.aej, 0.000000e+00
  br i1 %i.aek, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.ael = getelementptr inbounds nuw i8, ptr %i.zv, i64 68
  %i.aem = load float, ptr %i.ael, align 4, !tbaa !904
  store float %i.aem, ptr %i.aei, align 4, !tbaa !676
  br label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit

_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit: ; preds = %bb.fc, %bb.fb, %bb.fa, %bb.ez
  %.2 = phi i1 [ %.0410, %bb.ez ], [ %spec.select517, %bb.fa ], [ %spec.select517, %bb.fb ], [ %spec.select517, %bb.fc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #41
  br label %bb.fe

bb.fd:                                            ; preds = %bb.er
  %i.aen = getelementptr inbounds nuw i8, ptr %i.abi, i64 207
  store i8 0, ptr %i.aen, align 1, !tbaa !721
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit
  %.3 = phi i1 [ %.0410, %bb.fd ], [ %.2, %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit ]
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.abi, i64 208
  store i8 0, ptr %i.aeo, align 8, !tbaa !1215
  %i.aep = getelementptr inbounds nuw i8, ptr %i.abi, i64 192 ; 2 uses
  %.sroa_idx856 = getelementptr inbounds nuw i8, ptr %i.abi, i64 196
  %i.aeq = load <2 x float>, ptr %i.aep, align 8
  %i.aer = getelementptr inbounds nuw i8, ptr %i.abi, i64 112
  store float 0.000000e+00, ptr %i.aer, align 8, !tbaa !1244
  %i.aes = getelementptr inbounds nuw i8, ptr %i.abi, i64 120
  %i.aet = fadd float %i.acb, %i.aci
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.abi, i64 116
  store float %i.aet, ptr %i.aeu, align 4, !tbaa !1245
  store <2 x float> zeroinitializer, ptr %i.aes, align 8, !tbaa !8
  store i32 0, ptr %i.aep, align 8
  store i32 0, ptr %.sroa_idx856, align 4
  %i.aev = and i32 %.1403, 64
  %.not476 = icmp eq i32 %i.aev, 0                ; 3 uses
  %or.cond518 = select i1 %.0420, i1 true, i1 %.not476
  br i1 %or.cond518, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.aew = getelementptr inbounds nuw i8, ptr %i.abi, i64 207
  %i.aex = load i8, ptr %i.aew, align 1, !tbaa !721, !range !64, !noundef !204
  %i.aey = trunc nuw i8 %i.aex to i1
  %i.aez = xor i1 %i.aey, true
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %i.afa = phi i1 [ %i.aez, %bb.ff ], [ false, %bb.fe ] ; 2 uses
  %or.cond519 = select i1 %.0419, i1 true, i1 %.not476
  br i1 %or.cond519, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.afb = getelementptr inbounds nuw i8, ptr %i.abi, i64 207
  %i.afc = load i8, ptr %i.afb, align 1, !tbaa !721, !range !64, !noundef !204
  %i.afd = trunc nuw i8 %i.afc to i1
  %i.afe = xor i1 %i.afd, true
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %i.aff = phi i1 [ %i.afe, %bb.fh ], [ false, %bb.fg ] ; 2 uses
  br i1 %.0420, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.afg = getelementptr inbounds nuw i8, ptr %i.abi, i64 232
  %i.afh = load i8, ptr %i.afg, align 8, !tbaa !720
  %i.afi = icmp sgt i8 %i.afh, 0
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %i.afj = phi i1 [ false, %bb.fi ], [ %i.afi, %bb.fj ]
  br i1 %.0419, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.afk = getelementptr inbounds nuw i8, ptr %i.abi, i64 233
  %i.afl = load i8, ptr %i.afk, align 1, !tbaa !719
  %i.afm = icmp sgt i8 %i.afl, 0
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %i.afn = phi i1 [ false, %bb.fk ], [ %i.afm, %bb.fl ]
  %or.cond7 = select i1 %i.afa, i1 true, i1 %i.afj ; 2 uses
  %spec.select520 = zext i1 %or.cond7 to i32      ; 2 uses
  %or.cond9 = select i1 %i.aff, i1 true, i1 %i.afn ; 2 uses
  %i.afo = or disjoint i32 %spec.select520, 2
  %.1409 = select i1 %or.cond9, i32 %i.afo, i32 %spec.select520
  %i.afp = getelementptr inbounds nuw i8, ptr %i.abi, i64 72
  %i.afq = call fastcc <2 x float> @_ZL21CalcWindowAutoFitSizeP11ImGuiWindowRK6ImVec2i(ptr noundef nonnull %i.abi, ptr noundef nonnull align 4 dereferenceable(8) %i.afp, i32 noundef %.1409) ; 4 uses
  %i.afr = load ptr, ptr %i.g, align 8, !tbaa !705 ; 6 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 56 ; 3 uses
  %.sroa.091.0.copyload = load float, ptr %i.afs, align 8, !tbaa !8 ; 4 uses
  %.sroa.492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.afr, i64 60 ; 2 uses
  %.sroa.492.0.copyload = load float, ptr %.sroa.492.0..sroa_idx, align 4, !tbaa !8 ; 4 uses
  br i1 %or.cond7, label %bb.fn, label %bb.fq

bb.fn:                                            ; preds = %bb.fm
  br i1 %i.afa, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %.sroa.093.0.vec.extract = extractelement <2 x float> %i.afq, i64 0
  br label %.sink.split

bb.fp:                                            ; preds = %bb.fn
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afr, i64 234
  %i.afu = load i8, ptr %i.aft, align 2, !tbaa !725, !range !64, !noundef !204
  %i.afv = trunc nuw i8 %i.afu to i1
  %.sroa.093.0.vec.extract95 = extractelement <2 x float> %i.afq, i64 0 ; 2 uses
  %i.afw = fcmp oge float %.sroa.091.0.copyload, %.sroa.093.0.vec.extract95
  %i.afx = select i1 %i.afv, i1 %i.afw, i1 false
  %i.afy = select i1 %i.afx, float %.sroa.091.0.copyload, float %.sroa.093.0.vec.extract95
  br label %.sink.split

.sink.split:                                      ; preds = %bb.fp, %bb.fo
  %.sroa.093.0.vec.extract.sink = phi float [ %.sroa.093.0.vec.extract, %bb.fo ], [ %i.afy, %bb.fp ] ; 2 uses
  store float %.sroa.093.0.vec.extract.sink, ptr %i.afs, align 8, !tbaa !910
  br label %bb.fq

bb.fq:                                            ; preds = %.sink.split, %bb.fm
  %i.afz = phi float [ %.sroa.091.0.copyload, %bb.fm ], [ %.sroa.093.0.vec.extract.sink, %.sink.split ]
  %.1413 = phi i1 [ %.0412, %bb.fm ], [ true, %.sink.split ] ; 9 uses
  br i1 %or.cond9, label %bb.fr, label %bb.fu

bb.fr:                                            ; preds = %bb.fq
  br i1 %i.aff, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %.sroa.093.4.vec.extract = extractelement <2 x float> %i.afq, i64 1
  br label %.sink.split1193

bb.ft:                                            ; preds = %bb.fr
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afr, i64 234
  %i.agb = load i8, ptr %i.aga, align 2, !tbaa !725, !range !64, !noundef !204
  %i.agc = trunc nuw i8 %i.agb to i1
  %.sroa.093.4.vec.extract99 = extractelement <2 x float> %i.afq, i64 1 ; 2 uses
  %i.agd = fcmp oge float %.sroa.492.0.copyload, %.sroa.093.4.vec.extract99
  %i.age = select i1 %i.agc, i1 %i.agd, i1 false
  %i.agf = select i1 %i.age, float %.sroa.492.0.copyload, float %.sroa.093.4.vec.extract99
  br label %.sink.split1193

.sink.split1193:                                  ; preds = %bb.ft, %bb.fs
  %.sroa.093.4.vec.extract.sink = phi float [ %.sroa.093.4.vec.extract, %bb.fs ], [ %i.agf, %bb.ft ] ; 2 uses
  store float %.sroa.093.4.vec.extract.sink, ptr %.sroa.492.0..sroa_idx, align 4, !tbaa !1210
  br label %bb.fu

bb.fu:                                            ; preds = %.sink.split1193, %bb.fq
  %i.agg = phi float [ %.sroa.492.0.copyload, %bb.fq ], [ %.sroa.093.4.vec.extract.sink, %.sink.split1193 ]
  %.4 = phi i1 [ %.3, %bb.fq ], [ true, %.sink.split1193 ] ; 9 uses
  %i.agh = fcmp une float %.sroa.091.0.copyload, %i.afz
  %i.agi = fcmp une float %.sroa.492.0.copyload, %i.agg
  %or.cond1195 = select i1 %i.agh, i1 true, i1 %i.agi
  br i1 %or.cond1195, label %bb.fv, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit576

bb.fv:                                            ; preds = %bb.fu
  %i.agj = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %i.afr, i64 20
  %i.agl = load i32, ptr %i.agk, align 4, !tbaa !722
  %i.agm = and i32 %i.agl, 256
  %.not.i575 = icmp eq i32 %i.agm, 0
  br i1 %.not.i575, label %bb.fw, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit576

bb.fw:                                            ; preds = %bb.fv
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agj, i64 10068 ; 2 uses
  %i.ago = load float, ptr %i.agn, align 4, !tbaa !676
  %i.agp = fcmp ugt float %i.ago, 0.000000e+00
  br i1 %i.agp, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit576, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agj, i64 68
  %i.agr = load float, ptr %i.agq, align 4, !tbaa !904
  store float %i.agr, ptr %i.agn, align 4, !tbaa !676
  br label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit576

_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit576: ; preds = %bb.fu, %bb.fx, %bb.fw, %bb.fv
  %.val = load i64, ptr %i.afs, align 8
  %i.ags = call fastcc <2 x float> @_ZL29CalcWindowSizeAfterConstraintP11ImGuiWindowRK6ImVec2(ptr noundef nonnull %i.afr, i64 %.val) ; 3 uses
  %i.agt = load ptr, ptr %i.g, align 8, !tbaa !705 ; 9 uses
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agt, i64 56
  store <2 x float> %i.ags, ptr %i.agu, align 8
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agt, i64 207
  %i.agw = load i8, ptr %i.agv, align 1, !tbaa !721, !range !64, !noundef !204
  %i.agx = trunc nuw i8 %i.agw to i1
  %i.agy = select i1 %i.agx, i1 %.not462, i1 false
  br i1 %i.agy, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit576
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agt, i64 40
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agt, i64 104
  %i.ahb = load float, ptr %i.aha, align 8, !tbaa !909
  %i.ahc = load <2 x float>, ptr %i.agz, align 8  ; 2 uses
  %i.ahd = insertelement <2 x float> %i.ags, float %i.ahb, i64 1
  %i.ahe = fadd <2 x float> %i.ahd, %i.ahc
  %i.ahf = fsub <2 x float> %i.ahe, %i.ahc
  br label %bb.fz

bb.fz:                                            ; preds = %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit576, %bb.fy
  %.sroa.088.0 = phi <2 x float> [ %i.ahf, %bb.fy ], [ %i.ags, %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit576 ]
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.agt, i64 48
  store <2 x float> %.sroa.088.0, ptr %i.ahg, align 8
  br i1 %.0407.in962, label %bb.ga, label %bb.gd

bb.ga:                                            ; preds = %bb.fz
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.agt, i64 228
  store i32 -1, ptr %i.ahh, align 4, !tbaa !791
  br i1 %i.oy, label %bb.gb, label %bb.gd

bb.gb:                                            ; preds = %bb.ga
  %i.ahi = and i32 %.1403, 134217728
  %i.ahj = icmp ne i32 %i.ahi, 0
  %or.cond15 = or i1 %i.ahj, %.0421.shrunk
  br i1 %or.cond15, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.j, i64 8168
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.j, i64 8176
  %i.ahm = load ptr, ptr %i.ahl, align 8, !tbaa !578
  %i.ahn = load i32, ptr %i.ahk, align 8, !tbaa !580
  %i.aho = sext i32 %i.ahn to i64
  %i.ahp = getelementptr [56 x i8], ptr %i.ahm, i64 %i.aho
  %i.ahq = getelementptr i8, ptr %i.ahp, i64 -20
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.agt, i64 40
  %i.ahs = load i64, ptr %i.ahq, align 4
  store i64 %i.ahs, ptr %i.ahr, align 8
  br label %bb.gd

bb.gd:                                            ; preds = %bb.ga, %bb.gb, %bb.gc, %bb.fz
  br i1 %.not462, label %bb.gg, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.aht = getelementptr inbounds nuw i8, ptr %i.kb, i64 432 ; 2 uses
  %i.ahu = load i32, ptr %i.aht, align 8, !tbaa !1246
  %i.ahv = trunc i32 %i.ahu to i16
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.agt, i64 222
  store i16 %i.ahv, ptr %i.ahw, align 2, !tbaa !1189
  call void @_ZN8ImVectorIP11ImGuiWindowE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.aht, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %or.cond17 = or i1 %i.oy, %.0421.shrunk
  %or.cond19 = select i1 %or.cond17, i1 true, i1 %i.wf
  %.pre1042 = load ptr, ptr %i.g, align 8, !tbaa !705 ; 3 uses
  br i1 %or.cond19, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.kb, i64 280
  %i.ahy = getelementptr inbounds nuw i8, ptr %.pre1042, i64 40
  %i.ahz = load i64, ptr %i.ahx, align 8
  store i64 %i.ahz, ptr %i.ahy, align 8
  br label %bb.gg

bb.gg:                                            ; preds = %bb.ge, %bb.gf, %bb.gd
  %i.aia = phi ptr [ %.pre1042, %bb.ge ], [ %.pre1042, %bb.gf ], [ %i.agt, %bb.gd ] ; 17 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %i.aia, i64 244 ; 2 uses
  %i.aic = load float, ptr %i.aib, align 4, !tbaa !1247 ; 2 uses
  %i.aid = fcmp une float %i.aic, f0x7F7FFFFF
  br i1 %i.aid, label %bb.gh, label %.critedge

bb.gh:                                            ; preds = %bb.gg
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aia, i64 236
  %i.aif = load i8, ptr %i.aie, align 4, !tbaa !1220
  %i.aig = icmp eq i8 %i.aif, 0
  br i1 %i.aig, label %bb.gi, label %.critedge

bb.gi:                                            ; preds = %bb.gh
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aia, i64 48
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aia, i64 252
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aia, i64 248 ; 2 uses
  %i.aik = load float, ptr %i.aij, align 4, !tbaa !228
  %.phi.trans.insert.i585 = getelementptr inbounds nuw i8, ptr %i.aia, i64 239 ; 2 uses
  %.pre.i586 = load i32, ptr %.phi.trans.insert.i585, align 1
  %i.ail = and i32 %.pre.i586, -3585
  store i32 %i.ail, ptr %.phi.trans.insert.i585, align 1
  store i32 2139095039, ptr %i.aib, align 4
  store i32 2139095039, ptr %i.aij, align 4
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aia, i64 40 ; 2 uses
  %i.ain = load <2 x float>, ptr %i.aih, align 4, !tbaa !8
  %i.aio = load <2 x float>, ptr %i.aii, align 4, !tbaa !8
  %i.aip = fmul <2 x float> %i.ain, %i.aio
  %i.aiq = insertelement <2 x float> poison, float %i.aic, i64 0
  %i.air = insertelement <2 x float> %i.aiq, float %i.aik, i64 1
  %i.ais = fsub <2 x float> %i.air, %i.aip
  %i.ait = load <2 x float>, ptr %i.aim, align 8
  %i.aiu = fptosi <2 x float> %i.ais to <2 x i32>
  %i.aiv = sitofp <2 x i32> %i.aiu to <2 x float> ; 2 uses
  store <2 x float> %i.aiv, ptr %i.aim, align 8
  %i.aiw = fsub <2 x float> %i.aiv, %i.ait        ; 5 uses
  %i.aix = shufflevector <2 x float> %i.aiw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.aiy = extractelement <2 x float> %i.aiw, i64 0
  %i.aiz = fcmp oeq float %i.aiy, 0.000000e+00
  %i.aja = extractelement <2 x float> %i.aiw, i64 1
  %i.ajb = fcmp oeq float %i.aja, 0.000000e+00
  %or.cond.i588 = select i1 %i.aiz, i1 %i.ajb, i1 false
  br i1 %or.cond.i588, label %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.ajc = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.aia, i64 20
  %i.aje = load i32, ptr %i.ajd, align 4, !tbaa !722
  %i.ajf = and i32 %i.aje, 256
  %.not.i.i589 = icmp eq i32 %i.ajf, 0
  br i1 %.not.i.i589, label %bb.gk, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i

bb.gk:                                            ; preds = %bb.gj
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajc, i64 10068 ; 2 uses
  %i.ajh = load float, ptr %i.ajg, align 4, !tbaa !676
  %i.aji = fcmp ugt float %i.ajh, 0.000000e+00
  br i1 %i.aji, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.ajc, i64 68
  %i.ajk = load float, ptr %i.ajj, align 4, !tbaa !904
  store float %i.ajk, ptr %i.ajg, align 4, !tbaa !676
  br label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i

_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i: ; preds = %bb.gl, %bb.gk, %bb.gj
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.aia, i64 280 ; 2 uses
  %i.ajm = load <2 x float>, ptr %i.ajl, align 8, !tbaa !8
  %i.ajn = fadd <2 x float> %i.aiw, %i.ajm
  store <2 x float> %i.ajn, ptr %i.ajl, align 8, !tbaa !8
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.aia, i64 312 ; 2 uses
  %i.ajp = load <2 x float>, ptr %i.ajo, align 8, !tbaa !8
  %i.ajq = fadd <2 x float> %i.aiw, %i.ajp
  store <2 x float> %i.ajq, ptr %i.ajo, align 8, !tbaa !8
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.aia, i64 296 ; 2 uses
  %i.ajs = load <4 x float>, ptr %i.ajr, align 8, !tbaa !8
  %i.ajt = fadd <4 x float> %i.aix, %i.ajs
  store <4 x float> %i.ajt, ptr %i.ajr, align 8, !tbaa !8
  br label %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit

.critedge:                                        ; preds = %bb.gg, %bb.gh
  br i1 %.not448, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %.critedge
  %i.aju = call <2 x float> @_ZN5ImGui25FindBestWindowPosForPopupEP11ImGuiWindow(ptr noundef nonnull %i.aia)
  %i.ajv = load ptr, ptr %i.g, align 8, !tbaa !705 ; 2 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajv, i64 40
  store <2 x float> %i.aju, ptr %i.ajw, align 8
  br label %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit

bb.gn:                                            ; preds = %.critedge
  %i.ajx = icmp eq i32 %.pre-phi1071, 0
  %or.cond21 = or i1 %i.ajx, %.0421.shrunk
  %or.cond23.not = select i1 %or.cond21, i1 true, i1 %i.wi
  br i1 %or.cond23.not, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.ajy = call <2 x float> @_ZN5ImGui25FindBestWindowPosForPopupEP11ImGuiWindow(ptr noundef nonnull %i.aia)
  %i.ajz = load ptr, ptr %i.g, align 8, !tbaa !705 ; 2 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 40
  store <2 x float> %i.ajy, ptr %i.aka, align 8
  br label %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit

bb.gp:                                            ; preds = %bb.gn
  %or.cond25 = or i1 %.not463, %.0421.shrunk
  %or.cond27 = select i1 %or.cond25, i1 true, i1 %i.wf
  br i1 %or.cond27, label %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.akb = call <2 x float> @_ZN5ImGui25FindBestWindowPosForPopupEP11ImGuiWindow(ptr noundef nonnull %i.aia)
  %i.akc = load ptr, ptr %i.g, align 8, !tbaa !705 ; 2 uses
  %i.akd = getelementptr inbounds nuw i8, ptr %i.akc, i64 40
  store <2 x float> %i.akb, ptr %i.akd, align 8
  br label %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit

_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit: ; preds = %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i, %bb.gi, %bb.gm, %bb.gp, %bb.gq, %bb.go
  %i.ake = phi ptr [ %i.aia, %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i ], [ %i.aia, %bb.gi ], [ %i.ajv, %bb.gm ], [ %i.aia, %bb.gp ], [ %i.akc, %bb.gq ], [ %i.ajz, %bb.go ] ; 47 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #41
  %i.akf = getelementptr inbounds nuw i8, ptr %i.yq, i64 8
  %i.akg = getelementptr inbounds nuw i8, ptr %i.yq, i64 16
  %i.akh = load <2 x float>, ptr %i.akf, align 8, !tbaa !8 ; 4 uses
  %i.aki = load <2 x float>, ptr %i.akg, align 8, !tbaa !8
  %i.akj = fadd <2 x float> %i.akh, %i.aki        ; 3 uses
  store <2 x float> %i.akh, ptr %28, align 8
  %i.akk = getelementptr inbounds nuw i8, ptr %28, i64 8
  store <2 x float> %i.akj, ptr %i.akk, align 8
  %i.akl = getelementptr inbounds nuw i8, ptr %i.yq, i64 32
  %i.akm = getelementptr inbounds nuw i8, ptr %i.yq, i64 40
  %i.akn = getelementptr inbounds nuw i8, ptr %i.j, i64 3500
  %i.ako = getelementptr inbounds nuw i8, ptr %i.j, i64 3508
  %i.akp = load <2 x float>, ptr %i.akl, align 8, !tbaa !8 ; 2 uses
  %i.akq = load <2 x float>, ptr %i.akm, align 8, !tbaa !8
  %i.akr = fadd <2 x float> %i.akp, %i.akq
  %i.aks = load <2 x float>, ptr %i.akn, align 4, !tbaa !8 ; 2 uses
  %i.akt = load <2 x float>, ptr %i.ako, align 4, !tbaa !8 ; 2 uses
  %i.aku = fcmp oge <2 x float> %i.aks, %i.akt
  %i.akv = select <2 x i1> %i.aku, <2 x float> %i.aks, <2 x float> %i.akt ; 2 uses
  %i.akw = fadd <2 x float> %i.akp, %i.akv        ; 4 uses
  %i.akx = fsub <2 x float> %i.akr, %i.akv        ; 6 uses
  %not..0421.shrunk = xor i1 %.0421.shrunk, true
  %brmerge524.not = select i1 %not..0421.shrunk, i1 %.not462, i1 false
  %i.aky = extractelement <2 x float> %i.akj, i64 0
  %i.akz = extractelement <2 x float> %i.akh, i64 0
  %i.ala = fcmp ogt float %i.aky, %i.akz
  %or.cond1196 = select i1 %brmerge524.not, i1 %i.ala, i1 false
  %i.alb = fcmp ogt <2 x float> %i.akj, %i.akh
  %i.alc = extractelement <2 x i1> %i.alb, i64 1
  %or.cond1197 = select i1 %or.cond1196, i1 %i.alc, i1 false
  br i1 %or.cond1197, label %bb.gr, label %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit._crit_edge

_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit._crit_edge: ; preds = %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit
  %.phi.trans.insert1244 = getelementptr inbounds nuw i8, ptr %i.ake, i64 40
  %i.ald = load <2 x float>, ptr %.phi.trans.insert1244, align 4, !tbaa !8
  br label %bb.gu

bb.gr:                                            ; preds = %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ake, i64 48
  %i.alf = load float, ptr %i.ale, align 8
  %.sroa_idx.i606 = getelementptr inbounds nuw i8, ptr %i.ake, i64 52
  %i.alg = load float, ptr %.sroa_idx.i606, align 4 ; 2 uses
  %i.alh = getelementptr inbounds nuw i8, ptr %i.ake, i64 239
  %i.ali = load i32, ptr %i.alh, align 1
  %i.alj = and i32 %i.ali, 1
  %.not.i607 = icmp eq i32 %i.alj, 0
  br i1 %.not.i607, label %bb.gs, label %_ZL14ClampWindowPosP11ImGuiWindowRK6ImRect.exit

bb.gs:                                            ; preds = %bb.gr
  %i.alk = getelementptr inbounds nuw i8, ptr %i.ake, i64 20
  %i.all = load i32, ptr %i.alk, align 4, !tbaa !722
  %i.alm = and i32 %i.all, 1
  %.not8.i = icmp eq i32 %i.alm, 0
  br i1 %.not8.i, label %bb.gt, label %_ZL14ClampWindowPosP11ImGuiWindowRK6ImRect.exit

bb.gt:                                            ; preds = %bb.gs
  %i.aln = getelementptr inbounds nuw i8, ptr %i.ake, i64 104
  %i.alo = load float, ptr %i.aln, align 8, !tbaa !909
  br label %_ZL14ClampWindowPosP11ImGuiWindowRK6ImRect.exit

_ZL14ClampWindowPosP11ImGuiWindowRK6ImRect.exit:  ; preds = %bb.gt, %bb.gs, %bb.gr
  %.sroa.4.0.i = phi float [ %i.alo, %bb.gt ], [ %i.alg, %bb.gs ], [ %i.alg, %bb.gr ]
  %i.alp = getelementptr inbounds nuw i8, ptr %i.ake, i64 40
  %i.alq = insertelement <2 x float> poison, float %i.alf, i64 0
  %i.alr = insertelement <2 x float> %i.alq, float %.sroa.4.0.i, i64 1
  %i.als = fsub <2 x float> %i.akw, %i.alr        ; 2 uses
  %i.alt = load <2 x float>, ptr %i.alp, align 8, !tbaa !8 ; 3 uses
  %i.alu = fcmp olt <2 x float> %i.alt, %i.als
  %i.alv = fcmp ogt <2 x float> %i.alt, %i.akx
  %i.alw = select <2 x i1> %i.alv, <2 x float> %i.akx, <2 x float> %i.alt
  %i.alx = select <2 x i1> %i.alu, <2 x float> %i.als, <2 x float> %i.alw
  br label %bb.gu

bb.gu:                                            ; preds = %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit._crit_edge, %_ZL14ClampWindowPosP11ImGuiWindowRK6ImRect.exit
  %i.aly = phi <2 x float> [ %i.ald, %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit._crit_edge ], [ %i.alx, %_ZL14ClampWindowPosP11ImGuiWindowRK6ImRect.exit ]
  %i.alz = getelementptr inbounds nuw i8, ptr %i.ake, i64 40 ; 8 uses
  %i.ama = getelementptr inbounds nuw i8, ptr %i.ake, i64 44 ; 2 uses
  %i.amb = fptosi <2 x float> %i.aly to <2 x i32>
  %i.amc = sitofp <2 x i32> %i.amb to <2 x float>
  store <2 x float> %i.amc, ptr %i.alz, align 8
  %i.amd = and i32 %.1403, 201326592
  %or.cond525 = icmp eq i32 %i.amd, 67108864
  %. = select i1 %or.cond525, i64 3276, i64 3236
  %.sink = select i1 %.not462, i64 %., i64 3268
  %i.ame = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink
  %i.amf = load float, ptr %i.ame, align 4, !tbaa !8 ; 2 uses
  %i.amg = getelementptr inbounds nuw i8, ptr %i.ake, i64 96
  store float %i.amf, ptr %i.amg, align 8, !tbaa !1248
  %i.amh = and i32 %.1403, 4096
  %.not481 = icmp ne i32 %i.amh, 0
  %not..0407.in962 = xor i1 %.0407.in962, true
  %or.cond526 = select i1 %not..0407.in962, i1 true, i1 %.not481 ; 2 uses
  %brmerge546 = or i1 %or.cond526, %i.oy
  %not.or.cond526 = xor i1 %or.cond526, true
  %i.ami = icmp eq i32 %i.we, 0
  %spec.select993 = select i1 %brmerge546, i1 %not.or.cond526, i1 %i.ami ; 2 uses
  br i1 %.not462, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ake, i64 944
  %i.amk = load ptr, ptr %i.amj, align 8, !tbaa !1043
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amk, i64 209
  %i.amm = load i8, ptr %i.aml, align 1, !tbaa !1231, !range !64, !noundef !204
  %i.amn = trunc nuw i8 %i.amm to i1
  %not.1005 = xor i1 %i.amn, true
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %bb.gu
  %.0405 = phi i1 [ true, %bb.gu ], [ %not.1005, %bb.gv ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  br i1 %brmerge966, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.amo = getelementptr inbounds nuw i8, ptr %i.ake, i64 24
  %i.amp = load i32, ptr %i.amo, align 8, !tbaa !1188 ; 2 uses
  %i.amq = and i32 %i.amp, 4
  %.not482 = icmp eq i32 %i.amq, 0
  %i.amr = lshr i32 %i.amp, 3
  %.lobit = and i32 %i.amr, 1
  %i.ams = select i1 %.not482, i32 0, i32 %.lobit
  br label %bb.gz

bb.gy:                                            ; preds = %bb.gw
  %i.amt = getelementptr inbounds nuw i8, ptr %i.j, i64 129
  %i.amu = load i8, ptr %i.amt, align 1, !tbaa !1249, !range !64, !noundef !204
  %i.amv = trunc nuw i8 %i.amu to i1
  %i.amw = select i1 %i.amv, i32 2, i32 1
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %bb.gx
  %.0404 = phi i32 [ %i.amw, %bb.gy ], [ %i.ams, %bb.gx ] ; 4 uses
  %i.amx = load float, ptr %.phi.trans.insert1040, align 8, !tbaa !454 ; 2 uses
  %i.amy = fmul float %i.amx, 1.100000e+00        ; 2 uses
  %i.amz = fadd float %i.amf, 1.000000e+00        ; 2 uses
  %i.ana = call float @llvm.fmuladd.f32(float %i.amx, float 2.000000e-01, float %i.amz) ; 2 uses
  %i.anb = fcmp oge float %i.amy, %i.ana
  %i.anc = select i1 %i.anb, float %i.amy, float %i.ana
  %i.and = fptosi float %i.anc to i32
  %i.ane = sitofp i32 %i.and to float             ; 4 uses
  br i1 %.0405, label %bb.ha, label %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit.thread

bb.ha:                                            ; preds = %bb.gz
  %i.anf = getelementptr inbounds nuw i8, ptr %i.ake, i64 207
  %i.ang = load i8, ptr %i.anf, align 1, !tbaa !721, !range !64, !noundef !204
  %i.anh = trunc nuw i8 %i.ang to i1
  br i1 %i.anh, label %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit.thread, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.ani = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 25 uses
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ake, i64 20 ; 5 uses
  %i.ank = load i32, ptr %i.anj, align 4, !tbaa !722 ; 3 uses
  %i.anl = and i32 %i.ank, 2
  %.not.i610 = icmp eq i32 %i.anl, 0
  br i1 %.not.i610, label %bb.hc, label %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit.thread

bb.hc:                                            ; preds = %bb.hb
  %i.anm = getelementptr inbounds nuw i8, ptr %i.ake, i64 232
  %i.ann = load i8, ptr %i.anm, align 8, !tbaa !720
  %i.ano = icmp sgt i8 %i.ann, 0
  br i1 %i.ano, label %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit.thread, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ake, i64 233
  %i.anq = load i8, ptr %i.anp, align 1, !tbaa !719
  %i.anr = icmp sgt i8 %i.anq, 0
  br i1 %i.anr, label %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit.thread, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.ans = and i32 %i.ank, 64
  %.not234.i = icmp eq i32 %i.ans, 0
  br i1 %.not234.i, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.ant = getelementptr inbounds nuw i8, ptr %i.ake, i64 24
  %i.anu = load i32, ptr %i.ant, align 8, !tbaa !1188
  %i.anv = and i32 %i.anu, 12
  %i.anw = icmp eq i32 %i.anv, 0
  br i1 %i.anw, label %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit.thread, label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.he
  %i.anx = getelementptr inbounds nuw i8, ptr %i.ake, i64 205
  %i.any = load i8, ptr %i.anx, align 1, !tbaa !436, !range !64, !noundef !204
  %i.anz = icmp eq i8 %i.any, 0
  br i1 %i.anz, label %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit.thread, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.ani, i64 4568
  %i.aob = load float, ptr %i.aoa, align 8, !tbaa !454 ; 2 uses
  %i.aoc = fmul float %i.aob, 1.350000e+00        ; 2 uses
  %i.aod = call float @llvm.fmuladd.f32(float %i.aob, float 2.000000e-01, float %i.amz) ; 2 uses
  %i.aoe = fcmp oge float %i.aoc, %i.aod
  %i.aof = select i1 %i.aoe, float %i.aoc, float %i.aod
  %i.aog = fptosi float %i.aof to i32
  %i.aoh = sitofp i32 %i.aog to float
  %.not235.i = icmp eq i32 %.0404, 0              ; 2 uses
  %i.aoi = fmul nnan float %i.aoh, 7.500000e-01
  %i.aoj = fptosi float %i.aoi to i32
  %i.aok = sitofp i32 %i.aoj to float             ; 3 uses
  %i.aol = select i1 %.not235.i, float 0.000000e+00, float %i.aok ; 9 uses
  %i.aom = getelementptr inbounds nuw i8, ptr %i.ani, i64 5300 ; 4 uses
  %i.aon = load float, ptr %i.aom, align 4, !tbaa !642
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.ake, i64 239
  %i.aop = load i32, ptr %i.aoo, align 1
  %i.aoq = or i32 %i.aop, %i.ank
  %i.aor = and i32 %i.aoq, 1
  %or.cond994 = icmp eq i32 %i.aor, 0             ; 4 uses
end_hunk_2
begin_hunk_3_@_ZN5ImGui5BeginEPKcPbi:bb.a
  %i.are = and i32 %i.ard, 255
  %i.arf = zext nneg i32 %i.are to i64
  %i.arg = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.arf
  %i.arh = load i32, ptr %i.arg, align 4, !tbaa !205
  %i.ari = xor i32 %i.arc, %i.arh                 ; 2 uses
  %i.arj = lshr i32 %i.ari, 8
  %i.ark = xor i32 %i.ari, %.sroa.3.0.extract.shift.i778
  %i.arl = and i32 %i.ark, 255
  %i.arm = zext nneg i32 %i.arl to i64
  %i.arn = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.arm
  %i.aro = load i32, ptr %i.arn, align 4, !tbaa !205
  %i.arp = xor i32 %i.arj, %i.aro                 ; 2 uses
  %i.arq = lshr i32 %i.arp, 8
  %i.arr = and i32 %i.arp, 255
  %i.ars = xor i32 %i.arr, %.sroa.4.0.extract.shift.i779
  %i.art = zext nneg i32 %i.ars to i64
  %i.aru = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.art
  %i.arv = load i32, ptr %i.aru, align 4, !tbaa !205
  %i.arw = xor i32 %i.arv, %i.arq
  %i.arx = xor i32 %i.arw, -1                     ; 4 uses
  %i.ary = load ptr, ptr %i.ake, align 8, !tbaa !786
  %i.arz = getelementptr inbounds nuw i8, ptr %i.ary, i64 5400
  %i.asa = load i32, ptr %i.arz, align 8, !tbaa !789
  %i.asb = icmp eq i32 %i.asa, %i.arx
  br i1 %i.asb, label %bb.ho, label %_ZN11ImGuiWindow5GetIDEi.exit780

bb.ho:                                            ; preds = %bb.hn
  %i.asc = inttoptr i64 %indvars.iv to ptr
  call void @_ZN5ImGui15DebugHookIdInfoEjiPKvS1_(i32 noundef %i.arx, i32 noundef 4, ptr noundef %i.asc, ptr noundef null)
  br label %_ZN11ImGuiWindow5GetIDEi.exit780

_ZN11ImGuiWindow5GetIDEi.exit780:                 ; preds = %bb.hn, %bb.ho
  %i.asd = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %22, i32 noundef %i.arx, ptr noundef null, i32 noundef 2), !inline_history !1250 ; 0 uses
  %i.ase = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %22, i32 noundef %i.arx, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 264192), !inline_history !1250 ; 0 uses
  %i.asf = load i8, ptr %i.a, align 1, !tbaa !215, !range !64, !noundef !204
  %i.asg = trunc nuw i8 %i.asf to i1
  %i.ash = load i8, ptr %i.b, align 1, !range !64
  %i.asi = trunc nuw i8 %i.ash to i1              ; 2 uses
  %or.cond.i613 = select i1 %i.asg, i1 true, i1 %i.asi
  br i1 %or.cond.i613, label %bb.hp, label %.thread969

bb.hp:                                            ; preds = %_ZN11ImGuiWindow5GetIDEi.exit780
  %.not246.i = icmp eq i64 %indvars.iv, 0         ; 2 uses
  %i.asj = select i1 %.not246.i, i32 6, i32 5
  %i.ask = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.asl = getelementptr inbounds nuw i8, ptr %i.ask, i64 9400
  store i32 %i.asj, ptr %i.asl, align 8, !tbaa !1099
  br i1 %i.asi, label %bb.hq, label %.thread969

bb.hq:                                            ; preds = %bb.hp
  %i.asm = load i8, ptr %i.apf, align 1, !tbaa !215, !range !64, !noundef !204
  %i.asn = trunc nuw i8 %i.asm to i1
  br i1 %i.asn, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  %i.aso = call fastcc <2 x float> @_ZL21CalcWindowAutoFitSizeP11ImGuiWindowRK6ImVec2i(ptr noundef nonnull %i.ake, ptr noundef nonnull align 4 dereferenceable(8) %i.apj, i32 noundef -1), !inline_history !1250
  %i.asp = bitcast <2 x float> %i.aso to i64
  %i.asq = call fastcc <2 x float> @_ZL29CalcWindowSizeAfterConstraintP11ImGuiWindowRK6ImVec2(ptr noundef nonnull %i.ake, i64 %i.asp), !inline_history !1250
  store <2 x float> %i.asq, ptr %21, align 8
  call void @_ZN5ImGui11SetActiveIDEjP11ImGuiWindow(i32 noundef 0, ptr noundef null)
  br label %.thread969

bb.hs:                                            ; preds = %bb.hq
  %i.asr = select i1 %.not246.i, float %i.apr, float f0xFF7FFFFF
  %i.ass = icmp samesign ult i64 %indvars.iv, 2
  br i1 %i.ass, label %_Z7ImClampRK6ImVec2S1_S1_.exit765.thread1182, label %bb.ht

_Z7ImClampRK6ImVec2S1_S1_.exit765.thread1182:     ; preds = %bb.hs
  %i.ast = add nsw i32 %i.aqn, -1
  %i.asu = icmp ult i32 %i.ast, 2
  %i.asv = select i1 %i.asu, float %i.apk, float f0x7F7FFFFF
  %i.asw = insertelement <2 x float> <float poison, float f0x7F7FFFFF>, float %i.asv, i64 0
  br label %_Z7ImClampRK6ImVec2S1_S1_.exit765.thread

bb.ht:                                            ; preds = %bb.hs
  %i.asx = and i32 %i.aqn, 2147483646
  %i.asy = icmp eq i32 %i.asx, 2                  ; 2 uses
  %or.cond3.i615 = and i1 %or.cond994, %i.asy     ; 2 uses
  %i.asz = add i32 %i.aqn, -1
  %i.ata = icmp ult i32 %i.asz, 2
  %.not = xor i1 %i.asy, true
  %brmerge1232 = or i1 %or.cond994, %.not
  %.sroa.6944.0.mux = select i1 %or.cond3.i615, float %.sroa.6944.0, float f0xFF7FFFFF
  %i.atb = insertelement <2 x i1> poison, i1 %i.ata, i64 0
  %i.atc = insertelement <2 x i1> %i.atb, i1 %or.cond3.i615, i64 1
  %i.atd = select <2 x i1> %i.atc, <2 x float> %i.akx, <2 x float> splat (float f0x7F7FFFFF) ; 2 uses
  br i1 %brmerge1232, label %_Z7ImClampRK6ImVec2S1_S1_.exit765.thread, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.ate = shufflevector <2 x float> %i.atd, <2 x float> %i.akx, <2 x i32> <i32 0, i32 3>
  br label %_Z7ImClampRK6ImVec2S1_S1_.exit765.thread

_Z7ImClampRK6ImVec2S1_S1_.exit765.thread:         ; preds = %bb.ht, %_Z7ImClampRK6ImVec2S1_S1_.exit765.thread1182, %bb.hu
  %i.atf = phi float [ %.sroa.6944.0, %_Z7ImClampRK6ImVec2S1_S1_.exit765.thread1182 ], [ %.sroa.6944.0.mux, %bb.ht ], [ f0xFF7FFFFF, %bb.hu ]
  %i.atg = phi <2 x float> [ %i.asw, %_Z7ImClampRK6ImVec2S1_S1_.exit765.thread1182 ], [ %i.atd, %bb.ht ], [ %i.ate, %bb.hu ] ; 2 uses
  %i.ath = fmul <2 x float> %i.apx, %i.apm
  %i.ati = load <2 x float>, ptr %i.apg, align 8, !tbaa !8
  %i.atj = load <2 x float>, ptr %i.aph, align 8, !tbaa !8
  %i.atk = fsub <2 x float> %i.ati, %i.atj
  %i.atl = fsub <2 x float> %i.ath, %i.apy
  %i.atm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.atl, <2 x float> %i.apw, <2 x float> %i.apy)
  %i.atn = fadd <2 x float> %i.atm, %i.atk        ; 3 uses
  %i.ato = insertelement <2 x float> poison, float %i.asr, i64 0
  %i.atp = insertelement <2 x float> %i.ato, float %i.atf, i64 1 ; 2 uses
  %i.atq = fcmp olt <2 x float> %i.atn, %i.atp
  %i.atr = fcmp ogt <2 x float> %i.atn, %i.atg
  %i.ats = select <2 x i1> %i.atr, <2 x float> %i.atg, <2 x float> %i.atn
  %i.att = select <2 x i1> %i.atq, <2 x float> %i.atp, <2 x float> %i.ats
  %i.atu = bitcast <2 x float> %i.att to i64
  %i.atv = extractelement <2 x float> %i.apw, i64 0
  %i.atw = extractelement <2 x float> %i.apw, i64 1
  call fastcc void @_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_(ptr noundef nonnull %i.ake, i64 %i.atu, float %i.atv, float %i.atw, ptr noundef %20, ptr noundef %21), !inline_history !1250
  br label %.thread969

.thread969:                                       ; preds = %_ZN11ImGuiWindow5GetIDEi.exit780, %bb.hp, %_Z7ImClampRK6ImVec2S1_S1_.exit765.thread, %bb.hr
  %.1.i = phi i32 [ 3, %bb.hr ], [ %.0220.i1015, %_Z7ImClampRK6ImVec2S1_S1_.exit765.thread ], [ %.0220.i1015, %bb.hp ], [ %.0220.i1015, %_ZN11ImGuiWindow5GetIDEi.exit780 ] ; 2 uses
  %i.atx = load i8, ptr %i.b, align 1, !tbaa !215, !range !64, !noundef !204
  %i.aty = trunc nuw i8 %i.atx to i1              ; 2 uses
  %i.atz = load i8, ptr %i.a, align 1, !range !64
  %i.aua = trunc nuw i8 %i.atz to i1              ; 2 uses
  %or.cond5.i614 = select i1 %i.aty, i1 true, i1 %i.aua
  br i1 %or.cond5.i614, label %.critedge.i, label %bb.hv

bb.hv:                                            ; preds = %.thread969
  %i.aub = icmp eq i64 %indvars.iv, 0
  br i1 %i.aub, label %bb.hw, label %.critedge248.i

bb.hw:                                            ; preds = %bb.hv
  %i.auc = load i32, ptr %i.anj, align 4, !tbaa !722
  %i.aud = and i32 %i.auc, 16777216
  %i.aue = icmp eq i32 %i.aud, 0
  br i1 %i.aue, label %.critedge.i, label %.critedge248.i

.critedge.i:                                      ; preds = %bb.hw, %.thread969
  %i.auf = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.aug = getelementptr inbounds nuw i8, ptr %i.auf, i64 3532
  %i.auh = select i1 %i.aua, i64 32, i64 31
  %i.aui = select i1 %i.aty, i64 33, i64 %i.auh
  %i.auj = getelementptr inbounds nuw [16 x i8], ptr %i.aug, i64 %i.aui
  %i.auk = getelementptr inbounds nuw i8, ptr %i.auf, i64 3220
  %i.aul = load float, ptr %i.auk, align 4, !tbaa !416
  %i.aum = load <4 x float>, ptr %i.auj, align 4, !tbaa !8
  %i.aun = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.aul, i64 3
  %i.auo = fmul <4 x float> %i.aum, %i.aun        ; 3 uses
  %i.aup = fcmp olt <4 x float> %i.auo, zeroinitializer
  %i.auq = fcmp ogt <4 x float> %i.auo, splat (float 1.000000e+00)
  %i.aur = select <4 x i1> %i.auq, <4 x float> splat (float 1.000000e+00), <4 x float> %i.auo
  %i.aus = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aur, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.aut = select <4 x i1> %i.aup, <4 x float> splat (float 5.000000e-01), <4 x float> %i.aus
  %i.auu = fptosi <4 x float> %i.aut to <4 x i32>
  %i.auv = shl <4 x i32> %i.auu, <i32 0, i32 8, i32 16, i32 24>
  %i.auw = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.auv)
  %i.aux = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  store i32 %i.auw, ptr %i.aux, align 4, !tbaa !205
  br label %.critedge248.i

.critedge248.i:                                   ; preds = %.critedge.i, %bb.hw, %bb.hv
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.hj, !llvm.loop !1251

bb.hx:                                            ; preds = %._crit_edge
  %i.auy = getelementptr inbounds nuw i8, ptr %i.ake, i64 24
  %i.auz = load i32, ptr %i.auy, align 8, !tbaa !1188 ; 2 uses
  %i.ava = lshr i32 %i.auz, 1
  %i.avb = and i32 %i.ava, 2
  %i.avc = and i32 %i.auz, 8
  %i.avd = or disjoint i32 %i.avb, %i.avc
  br label %bb.hz

bb.hy:                                            ; preds = %._crit_edge
  %i.ave = getelementptr inbounds nuw i8, ptr %i.ani, i64 129
  %i.avf = load i8, ptr %i.ave, align 1, !tbaa !1249, !range !64, !noundef !204
  %i.avg = trunc nuw i8 %i.avf to i1
  %i.avh = select i1 %i.avg, i32 15, i32 0
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.hx
  %.0223.i = phi i32 [ %i.avd, %bb.hx ], [ %i.avh, %bb.hy ]
  %i.avi = getelementptr inbounds nuw i8, ptr %i.ake, i64 48 ; 5 uses
  %i.avj = getelementptr inbounds nuw i8, ptr %i.ake, i64 52 ; 2 uses
  %i.avk = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.avl = getelementptr inbounds nuw i8, ptr %i.ake, i64 264
  %i.avm = getelementptr inbounds nuw i8, ptr %i.ake, i64 272
  %i.avn = getelementptr inbounds nuw i8, ptr %i.ani, i64 5416
  %i.avo = getelementptr inbounds nuw i8, ptr %i.ani, i64 2885
  %i.avp = getelementptr inbounds nuw i8, ptr %i.ani, i64 5352
  %i.avq = getelementptr inbounds nuw i8, ptr %i.ani, i64 5372
  %i.avr = getelementptr inbounds nuw i8, ptr %i.ani, i64 4
  %i.avs = getelementptr inbounds nuw i8, ptr %i.ani, i64 5440
  %i.avt = getelementptr inbounds nuw i8, ptr %i.ani, i64 9808 ; 3 uses
  %i.avu = getelementptr inbounds nuw i8, ptr %i.ani, i64 9824 ; 3 uses
  %i.avv = getelementptr inbounds nuw i8, ptr %i.ani, i64 252
  %i.avw = getelementptr inbounds nuw i8, ptr %i.ani, i64 272
  %i.avx = getelementptr inbounds nuw i8, ptr %i.ani, i64 5456
  %i.avy = getelementptr inbounds nuw i8, ptr %i.ake, i64 72
  %i.avz = insertelement <2 x float> %i.akw, float %.sroa.6944.0, i64 1 ; 2 uses
  br label %bb.id

bb.ia:                                            ; preds = %bb.jf
  %i.awa = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.awb = getelementptr inbounds nuw i8, ptr %i.awa, i64 5312
  %i.awc = load ptr, ptr %i.awb, align 8, !tbaa !298
  %i.awd = getelementptr inbounds nuw i8, ptr %i.awc, i64 264 ; 2 uses
  %i.awe = load i32, ptr %i.awd, align 8, !tbaa !1151 ; 2 uses
  %i.awf = icmp sgt i32 %i.awe, 1
  br i1 %i.awf, label %bb.ic, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.awg = call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.111), !inline_history !1252 ; 0 uses
  br label %_ZN5ImGui5PopIDEv.exit

bb.ic:                                            ; preds = %bb.ia
  %i.awh = add nsw i32 %i.awe, -1
  store i32 %i.awh, ptr %i.awd, align 8, !tbaa !606
  br label %_ZN5ImGui5PopIDEv.exit

_ZN5ImGui5PopIDEv.exit:                           ; preds = %bb.ib, %bb.ic
  store i32 0, ptr %i.aoy, align 8, !tbaa !1205
  %i.awi = getelementptr inbounds nuw i8, ptr %i.ani, i64 8712
  %i.awj = load ptr, ptr %i.awi, align 8, !tbaa !1045 ; 2 uses
  %.not241.i = icmp eq ptr %i.awj, null
  br i1 %.not241.i, label %bb.jl, label %bb.jg

bb.id:                                            ; preds = %bb.hz, %bb.jf
  %indvars.iv1024 = phi i64 [ 0, %bb.hz ], [ %indvars.iv.next1025, %bb.jf ] ; 9 uses
  %.2.i1019 = phi i32 [ %.0220.i.lcssa, %bb.hz ], [ %.5.i, %bb.jf ] ; 6 uses
  %.19521017 = phi i32 [ -1, %bb.hz ], [ %.3954, %bb.jf ] ; 2 uses
  %.19571016 = phi i32 [ -1, %bb.hz ], [ %.3959, %bb.jf ] ; 2 uses
  %i.awk = trunc nuw nsw i64 %indvars.iv1024 to i32 ; 5 uses
  %i.awl = shl nuw nsw i32 1, %i.awk
  %i.awm = and i32 %i.awl, %.0223.i
  %i.awn = icmp eq i32 %i.awm, 0
  br i1 %i.awn, label %bb.jf, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.awo = getelementptr inbounds nuw [28 x i8], ptr @_ZL17resize_border_def, i64 %indvars.iv1024 ; 2 uses
  %i.awp = icmp eq i64 %indvars.iv1024, 0
  %i.awq = icmp eq i64 %indvars.iv1024, 1
  %i.awr = icmp samesign ugt i64 %indvars.iv1024, 1 ; 8 uses
  %i.aws = zext i1 %i.awr to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #41
  %i.awt = load float, ptr %i.aom, align 4, !tbaa !642 ; 9 uses
  %i.awu = fcmp oeq float %i.awt, 0.000000e+00
  %i.awv = load <2 x float>, ptr %i.alz, align 8, !tbaa !8 ; 7 uses
  %i.aww = load <2 x float>, ptr %i.avi, align 8, !tbaa !8
  %i.awx = fadd <2 x float> %i.awv, %i.aww        ; 2 uses
  %i.awy = fadd <2 x float> %i.awx, splat (float -1.000000e+00)
  %.sroa.9.0.i = select i1 %i.awu, <2 x float> %i.awy, <2 x float> %i.awx ; 6 uses
  switch i32 %i.awk, label %default.unreachable [
    i32 0, label %bb.if
    i32 1, label %bb.ig
    i32 2, label %bb.ih
    i32 3, label %bb.ii
  ]

bb.if:                                            ; preds = %bb.ie
  %i.awz = extractelement <2 x float> %i.awv, i64 0 ; 2 uses
  %i.axa = fsub float %i.awz, %i.awt
  %i.axb = extractelement <2 x float> %i.awv, i64 1
  %i.axc = fadd float %i.aol, %i.axb
  %i.axd = fadd float %i.awt, %i.awz
  %.sroa.9.12.vec.extract43.i = extractelement <2 x float> %.sroa.9.0.i, i64 1
  %i.axe = fsub float %.sroa.9.12.vec.extract43.i, %i.aol
  br label %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit

bb.ig:                                            ; preds = %bb.ie
  %.sroa.9.8.vec.extract33.i = extractelement <2 x float> %.sroa.9.0.i, i64 0 ; 2 uses
  %i.axf = fsub float %.sroa.9.8.vec.extract33.i, %i.awt
  %i.axg = extractelement <2 x float> %i.awv, i64 1
  %i.axh = fadd float %i.aol, %i.axg
  %i.axi = fadd float %i.awt, %.sroa.9.8.vec.extract33.i
  %.sroa.9.12.vec.extract41.i = extractelement <2 x float> %.sroa.9.0.i, i64 1
  %i.axj = fsub float %.sroa.9.12.vec.extract41.i, %i.aol
  br label %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit

bb.ih:                                            ; preds = %bb.ie
  %i.axk = extractelement <2 x float> %i.awv, i64 0
  %i.axl = fadd float %i.aol, %i.axk
  %i.axm = extractelement <2 x float> %i.awv, i64 1 ; 2 uses
  %i.axn = fsub float %i.axm, %i.awt
  %.sroa.9.8.vec.extract31.i = extractelement <2 x float> %.sroa.9.0.i, i64 0
  %i.axo = fsub float %.sroa.9.8.vec.extract31.i, %i.aol
  %i.axp = fadd float %i.awt, %i.axm
  br label %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit

bb.ii:                                            ; preds = %bb.ie
  %i.axq = extractelement <2 x float> %i.awv, i64 0
  %i.axr = fadd float %i.aol, %i.axq
  %.sroa.9.12.vec.extract39.i = extractelement <2 x float> %.sroa.9.0.i, i64 1 ; 2 uses
  %i.axs = fsub float %.sroa.9.12.vec.extract39.i, %i.awt
  %.sroa.9.8.vec.extract.i = extractelement <2 x float> %.sroa.9.0.i, i64 0
  %i.axt = fsub float %.sroa.9.8.vec.extract.i, %i.aol
  %i.axu = fadd float %i.awt, %.sroa.9.12.vec.extract39.i
  br label %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit

default.unreachable:                              ; preds = %bb.ie
  unreachable

_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit:   ; preds = %bb.if, %bb.ig, %bb.ih, %bb.ii
  %.sink1201 = phi float [ %i.axa, %bb.if ], [ %i.axf, %bb.ig ], [ %i.axl, %bb.ih ], [ %i.axr, %bb.ii ]
  %.sink1200 = phi float [ %i.axc, %bb.if ], [ %i.axh, %bb.ig ], [ %i.axn, %bb.ih ], [ %i.axs, %bb.ii ]
  %.sink1199 = phi float [ %i.axd, %bb.if ], [ %i.axi, %bb.ig ], [ %i.axo, %bb.ih ], [ %i.axt, %bb.ii ]
  %.sink1198 = phi float [ %i.axe, %bb.if ], [ %i.axj, %bb.ig ], [ %i.axp, %bb.ih ], [ %i.axu, %bb.ii ]
  %.sroa.044.0.vec.insert.i = insertelement <2 x float> poison, float %.sink1201, i64 0
  %.sroa.044.4.vec.insert.i = insertelement <2 x float> %.sroa.044.0.vec.insert.i, float %.sink1200, i64 1
  %.sroa.10.8.vec.insert.i = insertelement <2 x float> poison, float %.sink1199, i64 0
  %.sroa.10.12.vec.insert.i = insertelement <2 x float> %.sroa.10.8.vec.insert.i, float %.sink1198, i64 1
  store <2 x float> %.sroa.044.4.vec.insert.i, ptr %23, align 8
  store <2 x float> %.sroa.10.12.vec.insert.i, ptr %i.avk, align 8
  %i.axv = or disjoint i64 %indvars.iv1024, 4     ; 2 uses
  %i.axw = load ptr, ptr %i.avm, align 8, !tbaa !604
  %i.axx = load i32, ptr %i.avl, align 8, !tbaa !606
  %i.axy = sext i32 %i.axx to i64
  %i.axz = getelementptr [4 x i8], ptr %i.axw, i64 %i.axy
  %i.aya = getelementptr i8, ptr %i.axz, i64 -4
  %i.ayb = load i32, ptr %i.aya, align 4, !tbaa !205
  %i.ayc = xor i32 %i.ayb, -1                     ; 2 uses
  %i.ayd = lshr i32 %i.ayc, 8
  %.masked = and i32 %i.ayc, 255
  %i.aye = zext nneg i32 %.masked to i64
  %i.ayf = xor i64 %i.axv, %i.aye
  %i.ayg = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.ayf
  %i.ayh = load i32, ptr %i.ayg, align 4, !tbaa !205
  %i.ayi = xor i32 %i.ayh, %i.ayd                 ; 2 uses
  %i.ayj = lshr i32 %i.ayi, 8
  %i.ayk = and i32 %i.ayi, 255
  %i.ayl = zext nneg i32 %i.ayk to i64
  %i.aym = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.ayl
  %i.ayn = load i32, ptr %i.aym, align 4, !tbaa !205
  %i.ayo = xor i32 %i.ayj, %i.ayn                 ; 2 uses
  %i.ayp = lshr i32 %i.ayo, 8
  %i.ayq = and i32 %i.ayo, 255
  %i.ayr = zext nneg i32 %i.ayq to i64
  %i.ays = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.ayr
  %i.ayt = load i32, ptr %i.ays, align 4, !tbaa !205
  %i.ayu = xor i32 %i.ayp, %i.ayt                 ; 2 uses
  %i.ayv = lshr i32 %i.ayu, 8
  %i.ayw = and i32 %i.ayu, 255
  %i.ayx = zext nneg i32 %i.ayw to i64
  %i.ayy = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.ayx
  %i.ayz = load i32, ptr %i.ayy, align 4, !tbaa !205
  %i.aza = xor i32 %i.ayz, %i.ayv
  %i.azb = xor i32 %i.aza, -1                     ; 4 uses
  %i.azc = load ptr, ptr %i.ake, align 8, !tbaa !786
  %i.azd = getelementptr inbounds nuw i8, ptr %i.azc, i64 5400
  %i.aze = load i32, ptr %i.azd, align 8, !tbaa !789
  %i.azf = icmp eq i32 %i.aze, %i.azb
  br i1 %i.azf, label %bb.ij, label %_ZN11ImGuiWindow5GetIDEi.exit

bb.ij:                                            ; preds = %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit
  %i.azg = inttoptr i64 %i.axv to ptr
  call void @_ZN5ImGui15DebugHookIdInfoEjiPKvS1_(i32 noundef %i.azb, i32 noundef 4, ptr noundef nonnull %i.azg, ptr noundef null)
  br label %_ZN11ImGuiWindow5GetIDEi.exit

_ZN11ImGuiWindow5GetIDEi.exit:                    ; preds = %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit, %bb.ij
  %i.azh = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %23, i32 noundef %i.azb, ptr noundef null, i32 noundef 2), !inline_history !1250 ; 0 uses
  %i.azi = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %23, i32 noundef %i.azb, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef 264192), !inline_history !1250 ; 0 uses
  %i.azj = load i8, ptr %i.c, align 1, !tbaa !215, !range !64, !noundef !204
  %i.azk = trunc nuw i8 %i.azj to i1
  br i1 %i.azk, label %bb.ik, label %bb.im

bb.ik:                                            ; preds = %_ZN11ImGuiWindow5GetIDEi.exit
  %i.azl = load float, ptr %i.avn, align 8, !tbaa !983
  %i.azm = fcmp ugt float %i.azl, 4.000000e-02
  br i1 %i.azm, label %.thread1185, label %bb.il

.thread1185:                                      ; preds = %bb.ik
  %i.azn = load i8, ptr %i.d, align 1, !range !64
  %i.azo = trunc nuw i8 %i.azn to i1
  %i.azp = select i1 %i.awr, i32 3, i32 4
  %i.azq = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azq, i64 9400
  store i32 %i.azp, ptr %i.azr, align 8, !tbaa !1099
  br i1 %i.azo, label %bb.io, label %.thread972

bb.il:                                            ; preds = %bb.ik
  store i8 0, ptr %i.c, align 1, !tbaa !215
  br label %bb.im

bb.im:                                            ; preds = %bb.il, %_ZN11ImGuiWindow5GetIDEi.exit
  %i.azs = load i8, ptr %i.d, align 1, !range !64
  %i.azt = trunc nuw i8 %i.azs to i1
  br i1 %i.azt, label %bb.in, label %.thread972

bb.in:                                            ; preds = %bb.im
  %i.azu = select i1 %i.awr, i32 3, i32 4
  %i.azv = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azv, i64 9400
  store i32 %i.azu, ptr %i.azw, align 8, !tbaa !1099
  br label %bb.io

bb.io:                                            ; preds = %bb.in, %.thread1185
  %i.azx = load i8, ptr %i.avo, align 1, !tbaa !215, !range !64, !noundef !204
  %i.azy = trunc nuw i8 %i.azx to i1
  br i1 %i.azy, label %bb.ip, label %bb.is

bb.ip:                                            ; preds = %bb.io
  switch i32 %i.awk, label %bb.ir [
    i32 3, label %bb.iq
    i32 1, label %bb.iq
  ]

bb.iq:                                            ; preds = %bb.ip, %bb.ip
  %i.azz = shl nuw nsw i32 1, %i.aws              ; 2 uses
  %i.baa = call fastcc <2 x float> @_ZL21CalcWindowAutoFitSizeP11ImGuiWindowRK6ImVec2i(ptr noundef nonnull %i.ake, ptr noundef nonnull align 4 dereferenceable(8) %i.avy, i32 noundef %i.azz), !inline_history !1250
  %i.bab = bitcast <2 x float> %i.baa to i64
  %i.bac = call fastcc <2 x float> @_ZL29CalcWindowSizeAfterConstraintP11ImGuiWindowRK6ImVec2(ptr noundef nonnull %i.ake, i64 %i.bab), !inline_history !1250 ; 2 uses
  %.sroa.0915.4.vec.extract = extractelement <2 x float> %i.bac, i64 1
  %.sroa.0915.0.vec.extract = extractelement <2 x float> %i.bac, i64 0
  %.sroa.speculated916 = select i1 %i.awr, float %.sroa.0915.4.vec.extract, float %.sroa.0915.0.vec.extract
  %.sroa.sel940 = select i1 %i.awr, ptr %i.aox, ptr %21
  store float %.sroa.speculated916, ptr %.sroa.sel940, align 4, !tbaa !8
  %i.bad = or i32 %i.azz, %.2.i1019
  store i8 0, ptr %i.d, align 1, !tbaa !215
  store i8 0, ptr %i.c, align 1, !tbaa !215
  br label %bb.ir

bb.ir:                                            ; preds = %bb.iq, %bb.ip
  %.3.i = phi i32 [ %i.bad, %bb.iq ], [ %.2.i1019, %bb.ip ]
  call void @_ZN5ImGui11SetActiveIDEjP11ImGuiWindow(i32 noundef 0, ptr noundef null)
  br label %.thread972

bb.is:                                            ; preds = %bb.io
  %i.bae = load ptr, ptr %i.avp, align 8, !tbaa !1103 ; 3 uses
  %.not243.i = icmp eq ptr %i.bae, null
  br i1 %.not243.i, label %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.baf = load i32, ptr %i.avq, align 4, !tbaa !643
  %i.bag = load i32, ptr %i.avr, align 4, !tbaa !194
  %i.bah = icmp eq i32 %i.baf, %i.bag
  br i1 %i.bah, label %.lr.ph.split.i.i, label %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit

.lr.ph.split.i.i:                                 ; preds = %bb.it, %.lr.ph.split.i.i
  %.068.i.i = phi ptr [ %i.baj, %.lr.ph.split.i.i ], [ %i.ake, %bb.it ] ; 4 uses
  %i.bai = getelementptr inbounds nuw i8, ptr %.068.i.i, i64 960
  %i.baj = load ptr, ptr %i.bai, align 8, !tbaa !847 ; 2 uses
  %.not.i.i749 = icmp eq ptr %.068.i.i, %i.baj
  br i1 %.not.i.i749, label %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.i, label %.lr.ph.split.i.i, !llvm.loop !1253

_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.i: ; preds = %.lr.ph.split.i.i
  %i.bak = icmp eq ptr %.068.i.i, %i.bae
  br i1 %i.bak, label %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit.thread, label %.lr.ph.i750

.lr.ph.i750:                                      ; preds = %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.i, %bb.iv
  %.01014.i = phi ptr [ %i.bao, %bb.iv ], [ %i.ake, %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.i ] ; 3 uses
  %i.bal = icmp eq ptr %.01014.i, %i.bae
  br i1 %i.bal, label %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit.thread, label %bb.iu

bb.iu:                                            ; preds = %.lr.ph.i750
  %i.bam = icmp eq ptr %.01014.i, %.068.i.i
  br i1 %i.bam, label %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.ban = getelementptr inbounds nuw i8, ptr %.01014.i, i64 944
  %i.bao = load ptr, ptr %i.ban, align 8, !tbaa !1043 ; 2 uses
  %.not.i751 = icmp eq ptr %i.bao, null
  br i1 %.not.i751, label %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit, label %.lr.ph.i750, !llvm.loop !1254

_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit: ; preds = %bb.iv, %bb.iu, %bb.it, %bb.is
  %i.bap = load i8, ptr %i.avs, align 8, !tbaa !827, !range !64, !noundef !204
  %i.baq = trunc nuw i8 %i.bap to i1
  br i1 %i.baq, label %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit.thread, label %bb.iw

_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit.thread: ; preds = %.lr.ph.i750, %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.i, %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.avt, ptr noundef nonnull align 8 dereferenceable(16) %23, i64 16, i1 false), !tbaa.struct !419
  store i8 0, ptr %i.avu, align 8, !tbaa !674
  br label %bb.iw

bb.iw:                                            ; preds = %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit.thread, %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit
  %i.bar = load i32, ptr %i.anj, align 4, !tbaa !722
  %i.bas = and i32 %i.bar, 16777216
  %.not244.i = icmp eq i32 %i.bas, 0
  br i1 %.not244.i, label %bb.iz, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.bat = load i128, ptr %i.avt, align 1
  %i.bau = load i128, ptr %23, align 8
  %i.bav = icmp ne i128 %i.bat, %i.bau
  %i.baw = zext i1 %i.bav to i32
  %.not245.i = icmp eq i32 %i.baw, 0
  br i1 %.not245.i, label %bb.iz, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  store i8 1, ptr %i.avu, align 8, !tbaa !674
  br label %bb.iz

bb.iz:                                            ; preds = %bb.iy, %bb.ix, %bb.iw
  %i.bax = getelementptr inbounds nuw i8, ptr %i.awo, i64 8
  %i.bay = getelementptr inbounds nuw i8, ptr %i.awo, i64 16
  %i.baz = load <2 x float>, ptr %i.bax, align 4, !tbaa !8 ; 2 uses
  %i.bba = load <2 x float>, ptr %i.bay, align 4, !tbaa !8 ; 2 uses
  %i.bbb = fcmp olt <2 x float> %i.baz, %i.bba
  %i.bbc = select <2 x i1> %i.bbb, <2 x float> %i.baz, <2 x float> %i.bba ; 3 uses
  %i.bbd = load <2 x float>, ptr %i.avi, align 8, !tbaa !8
  %i.bbe = fmul <2 x float> %i.bbc, %i.bbd
  %i.bbf = load <2 x float>, ptr %i.alz, align 8, !tbaa !8
  %i.bbg = fadd <2 x float> %i.bbe, %i.bbf        ; 2 uses
  %i.bbh = zext i1 %i.awr to i64                  ; 3 uses
  %i.bbi = extractelement <2 x float> %i.bbg, i64 0
  %i.bbj = extractelement <2 x float> %i.bbg, i64 1
  %.sroa.speculated = select i1 %i.awr, float %i.bbj, float %i.bbi
  %i.bbk = getelementptr inbounds nuw [4 x i8], ptr %i.avv, i64 %i.bbh
  %i.bbl = load float, ptr %i.bbk, align 4, !tbaa !8 ; 3 uses
  %i.bbm = fadd float %i.bbl, %.sroa.speculated   ; 2 uses
  %i.bbn = getelementptr inbounds nuw [4 x i8], ptr %i.avw, i64 %i.bbh
  %i.bbo = load float, ptr %i.bbn, align 4, !tbaa !8
  %i.bbp = getelementptr inbounds nuw [4 x i8], ptr %i.avx, i64 %i.bbh
  %i.bbq = load float, ptr %i.bbp, align 4, !tbaa !8
  %i.bbr = fsub float %i.bbo, %i.bbq
  %i.bbs = load float, ptr %i.aom, align 4, !tbaa !642
  %i.bbt = fadd float %i.bbr, %i.bbs              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  %31 = load i64, ptr %i.alz, align 8
  store i64 %31, ptr %24, align 8
  %.sroa.sel907.idx.sroa.sel.idx = select i1 %i.awr, i64 4, i64 0
  %.sroa.sel907.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %24, i64 %.sroa.sel907.idx.sroa.sel.idx ; 2 uses
  store float %i.bbt, ptr %.sroa.sel907.idx.sroa.sel, align 4, !tbaa !8
  %i.bbu = load i8, ptr %i.avu, align 8, !tbaa !674, !range !64, !noundef !204
  %i.bbv = trunc nuw i8 %i.bbu to i1
  br i1 %i.bbv, label %bb.ja, label %_Z7ImClampRK6ImVec2S1_S1_.exit

bb.ja:                                            ; preds = %bb.iz
  store float %i.bbm, ptr %.sroa.sel907.idx.sroa.sel, align 4, !tbaa !8
  %i.bbw = fcmp oeq float %i.bbl, 0.000000e+00
  br i1 %i.bbw, label %bb.jc, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.bbx = fcmp ogt float %i.bbl, 0.000000e+00
  %i.bby = fcmp ule float %i.bbm, %i.bbt
  %i.bbz = xor i1 %i.bbx, %i.bby
  br i1 %i.bbz, label %bb.jc, label %_Z7ImClampRK6ImVec2S1_S1_.exit

bb.jc:                                            ; preds = %bb.jb, %bb.ja
  br label %_Z7ImClampRK6ImVec2S1_S1_.exit

_Z7ImClampRK6ImVec2S1_S1_.exit:                   ; preds = %bb.jc, %bb.jb, %bb.iz
  %.0221.i = phi i1 [ true, %bb.jc ], [ false, %bb.jb ], [ false, %bb.iz ]
  %i.bca = icmp eq i64 %indvars.iv1024, 3
  %i.bcb = icmp eq i64 %indvars.iv1024, 2         ; 2 uses
  %or.cond13.i = and i1 %or.cond994, %i.bcb
  %or.cond249.i = or i1 %i.bca, %or.cond13.i
  %i.bcc = insertelement <2 x i1> poison, i1 %i.awq, i64 0
  %i.bcd = insertelement <2 x i1> %i.bcc, i1 %or.cond249.i, i64 1
  %i.bce = select <2 x i1> %i.bcd, <2 x float> %i.avz, <2 x float> splat (float f0xFF7FFFFF) ; 2 uses
  %i.bcf = insertelement <2 x i1> poison, i1 %i.awp, i64 0
  %i.bcg = insertelement <2 x i1> %i.bcf, i1 %i.bcb, i64 1
  %i.bch = select <2 x i1> %i.bcg, <2 x float> %i.akx, <2 x float> splat (float f0x7F7FFFFF) ; 2 uses
  %.0. = load <2 x float>, ptr %24, align 8, !tbaa !8 ; 3 uses
  %32 = fcmp olt <2 x float> %.0., %i.bce
  %i.bci = fcmp ogt <2 x float> %.0., %i.bch
  %i.bcj = select <2 x i1> %i.bci, <2 x float> %i.bch, <2 x float> %.0.
  %i.bck = select <2 x i1> %32, <2 x float> %i.bce, <2 x float> %i.bcj ; 2 uses
  store <2 x float> %i.bck, ptr %24, align 8
  br i1 %.0221.i, label %bb.je, label %bb.jd

bb.jd:                                            ; preds = %_Z7ImClampRK6ImVec2S1_S1_.exit
  %i.bcl = bitcast <2 x float> %i.bck to i64
  %i.bcm = extractelement <2 x float> %i.bbc, i64 0
  %i.bcn = extractelement <2 x float> %i.bbc, i64 1
  call fastcc void @_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_(ptr noundef nonnull %i.ake, i64 %i.bcl, float %i.bcm, float %i.bcn, ptr noundef %20, ptr noundef %21), !inline_history !1250
  br label %bb.je

bb.je:                                            ; preds = %bb.jd, %_Z7ImClampRK6ImVec2S1_S1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  br label %.thread972

.thread972:                                       ; preds = %.thread1185, %bb.im, %bb.je, %bb.ir
  %.4.i = phi i32 [ %.3.i, %bb.ir ], [ %.2.i1019, %bb.je ], [ %.2.i1019, %.thread1185 ], [ %.2.i1019, %bb.im ]
  %i.bco = load i8, ptr %i.c, align 1, !tbaa !215, !range !64, !noundef !204
  %i.bcp = trunc nuw i8 %i.bco to i1
  %spec.select995 = select i1 %i.bcp, i32 %i.awk, i32 %.19571016
  %i.bcq = load i8, ptr %i.d, align 1, !tbaa !215, !range !64, !noundef !204
  %i.bcr = trunc nuw i8 %i.bcq to i1
  %.2953 = select i1 %i.bcr, i32 %i.awk, i32 %.19521017
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  br label %bb.jf

bb.jf:                                            ; preds = %.thread972, %bb.id
  %.3959 = phi i32 [ %.19571016, %bb.id ], [ %spec.select995, %.thread972 ] ; 3 uses
  %.3954 = phi i32 [ %.19521017, %bb.id ], [ %.2953, %.thread972 ] ; 5 uses
  %.5.i = phi i32 [ %.2.i1019, %bb.id ], [ %.4.i, %.thread972 ] ; 4 uses
  %indvars.iv.next1025 = add nuw nsw i64 %indvars.iv1024, 1 ; 2 uses
  %exitcond1027.not = icmp eq i64 %indvars.iv.next1025, 4
  br i1 %exitcond1027.not, label %bb.ia, label %bb.id, !llvm.loop !1255

bb.jg:                                            ; preds = %_ZN5ImGui5PopIDEv.exit
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.awj, i64 960
  %i.bct = load ptr, ptr %i.bcs, align 8, !tbaa !847
  %i.bcu = icmp eq ptr %i.bct, %i.ake
  br i1 %i.bcu, label %bb.jh, label %bb.jl

bb.jh:                                            ; preds = %bb.jg
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.ani, i64 8304
  %i.bcw = load i32, ptr %i.bcv, align 8, !tbaa !653
  switch i32 %i.bcw, label %.thread975 [
    i32 2, label %bb.ji
    i32 3, label %.thread975.sink.split
  ]

bb.ji:                                            ; preds = %bb.jh
  %i.bcx = getelementptr inbounds nuw i8, ptr %i.ani, i64 301
  %i.bcy = load i8, ptr %i.bcx, align 1, !tbaa !1086, !range !64, !noundef !204
  %i.bcz = trunc nuw i8 %i.bcy to i1
  br i1 %i.bcz, label %.thread975.sink.split, label %.thread975

.thread975.sink.split:                            ; preds = %bb.jh, %bb.ji
  %.sink1219 = phi i64 [ 352, %bb.ji ], [ 2352, %bb.jh ]
  %.sink1216 = phi i64 [ 336, %bb.ji ], [ 2336, %bb.jh ]
  %.sink1213 = phi i64 [ 384, %bb.ji ], [ 2384, %bb.jh ]
  %.sink1208 = phi i64 [ 368, %bb.ji ], [ 2368, %bb.jh ]
  %i.bda = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 4 uses
  %i.bdb = getelementptr i8, ptr %i.bda, i64 %.sink1219
  %i.bdc = load float, ptr %i.bdb, align 4, !tbaa !997
  %i.bdd = getelementptr i8, ptr %i.bda, i64 %.sink1216
  %i.bde = load float, ptr %i.bdd, align 4, !tbaa !997
  %i.bdf = getelementptr i8, ptr %i.bda, i64 %.sink1213
  %i.bdg = load float, ptr %i.bdf, align 4, !tbaa !997
  %i.bdh = fsub float %i.bdc, %i.bde
  %i.bdi = getelementptr i8, ptr %i.bda, i64 %.sink1208
  %i.bdj = load float, ptr %i.bdi, align 4, !tbaa !997
  %i.bdk = fsub float %i.bdg, %i.bdj
  %.sroa.0.0.vec.insert.i733 = insertelement <2 x float> poison, float %i.bdh, i64 0
  %.sroa.0.4.vec.insert.i734 = insertelement <2 x float> %.sroa.0.0.vec.insert.i733, float %i.bdk, i64 1
  br label %.thread975

.thread975:                                       ; preds = %.thread975.sink.split, %bb.jh, %bb.ji
  %.sroa.0892.1 = phi <2 x float> [ zeroinitializer, %bb.ji ], [ zeroinitializer, %bb.jh ], [ %.sroa.0.4.vec.insert.i734, %.thread975.sink.split ] ; 3 uses
  %.sroa.0892.0.vec.extract = extractelement <2 x float> %.sroa.0892.1, i64 0
  %i.bdl = fcmp une float %.sroa.0892.0.vec.extract, 0.000000e+00
  %.sroa.0892.4.vec.extract = extractelement <2 x float> %.sroa.0892.1, i64 1
  %i.bdm = fcmp une float %.sroa.0892.4.vec.extract, 0.000000e+00
  %or.cond16.i = select i1 %i.bdl, i1 true, i1 %i.bdm
  br i1 %or.cond16.i, label %bb.jj, label %bb.jl

bb.jj:                                            ; preds = %.thread975
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.ani, i64 64
  %i.bdo = load float, ptr %i.bdn, align 8, !tbaa !912
  %i.bdp = fmul float %i.bdo, 6.000000e+02
  %i.bdq = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.bdq, i64 4528
  %i.bds = load float, ptr %i.bdr, align 8, !tbaa !479
  %i.bdt = fmul float %i.bdp, %i.bds
  %i.bdu = getelementptr inbounds nuw i8, ptr %i.ani, i64 8764 ; 5 uses
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.ani, i64 8748
  store i8 0, ptr %i.bdv, align 4, !tbaa !1049
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.ani, i64 8217
  store i8 1, ptr %i.bdw, align 1, !tbaa !850
  %i.bdx = insertelement <2 x float> poison, float %i.bdt, i64 0
  %i.bdy = shufflevector <2 x float> %i.bdx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bdz = fmul <2 x float> %.sroa.0892.1, %i.bdy
  %i.bea = load <2 x float>, ptr %i.bdu, align 4, !tbaa !8
  %i.beb = fadd <2 x float> %i.bea, %i.bdz        ; 3 uses
  store <2 x float> %i.beb, ptr %i.bdu, align 4, !tbaa !8
  %i.bec = load <2 x float>, ptr %i.alz, align 8, !tbaa !8
  %i.bed = fsub <2 x float> %i.avz, %i.bec
  %i.bee = load <2 x float>, ptr %i.avi, align 8, !tbaa !8
  %i.bef = fsub <2 x float> %i.bed, %i.bee        ; 2 uses
  %i.beg = fcmp oge <2 x float> %i.beb, %i.bef
  %i.beh = select <2 x i1> %i.beg, <2 x float> %i.beb, <2 x float> %i.bef ; 2 uses
  store <2 x float> %i.beh, ptr %i.bdu, align 4
  %i.bei = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 33, float noundef 1.000000e+00), !inline_history !1250
  store i32 %i.bei, ptr %i.i, align 16, !tbaa !205
  %i.bej = fptosi <2 x float> %i.beh to <2 x i32> ; 2 uses
  %i.bek = icmp ne <2 x i32> %i.bej, zeroinitializer ; 2 uses
  %i.bel = extractelement <2 x i1> %i.bek, i64 0
  %i.bem = extractelement <2 x i1> %i.bek, i64 1
  %or.cond19.i = select i1 %i.bel, i1 true, i1 %i.bem
  br i1 %or.cond19.i, label %bb.jk, label %bb.jl

bb.jk:                                            ; preds = %bb.jj
  %i.ben = sitofp <2 x i32> %i.bej to <2 x float> ; 2 uses
  %i.beo = getelementptr inbounds nuw i8, ptr %i.ake, i64 56
  %i.bep = load <2 x float>, ptr %i.beo, align 8, !tbaa !8
  %i.beq = fadd <2 x float> %i.bep, %i.ben
  %i.ber = bitcast <2 x float> %i.beq to i64
  %i.bes = call fastcc <2 x float> @_ZL29CalcWindowSizeAfterConstraintP11ImGuiWindowRK6ImVec2(ptr noundef nonnull %i.ake, i64 %i.ber), !inline_history !1250
  store <2 x float> %i.bes, ptr %21, align 8
  %i.bet = load <2 x float>, ptr %i.bdu, align 4, !tbaa !8
  %i.beu = fsub <2 x float> %i.bet, %i.ben
  store <2 x float> %i.beu, ptr %i.bdu, align 4, !tbaa !8
  br label %bb.jl

bb.jl:                                            ; preds = %.thread975, %bb.jk, %bb.jj, %bb.jg, %_ZN5ImGui5PopIDEv.exit
  %.sroa.022.0.copyload.i = load float, ptr %i.alz, align 8, !tbaa !8 ; 4 uses
  %.sroa.423.0.copyload.i = load float, ptr %i.ama, align 4, !tbaa !8 ; 4 uses
  %i.bev = getelementptr inbounds nuw i8, ptr %i.ake, i64 56 ; 2 uses
  %.sroa.020.0.copyload.i = load float, ptr %i.bev, align 8, !tbaa !8 ; 4 uses
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ake, i64 60 ; 2 uses
  %.sroa.421.0.copyload.i = load float, ptr %.sroa.421.0..sroa_idx.i, align 4, !tbaa !8 ; 4 uses
  %i.bew = load float, ptr %21, align 8, !tbaa !227 ; 6 uses
  %i.bex = fcmp une float %i.bew, f0x7F7FFFFF
  br i1 %i.bex, label %bb.jm, label %bb.jo

bb.jm:                                            ; preds = %bb.jl
  %i.bey = load float, ptr %i.avi, align 8, !tbaa !723
  %i.bez = fcmp une float %i.bey, %i.bew
  %i.bfa = fcmp une float %.sroa.020.0.copyload.i, %i.bew
  %or.cond250.i = select i1 %i.bez, i1 true, i1 %i.bfa
  br i1 %or.cond250.i, label %bb.jn, label %bb.jo

bb.jn:                                            ; preds = %bb.jm
  store float %i.bew, ptr %i.bev, align 8, !tbaa !910
  store float %i.bew, ptr %i.avi, align 8, !tbaa !723
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jn, %bb.jm, %bb.jl
  %i.bfb = phi float [ %i.bew, %bb.jn ], [ %.sroa.020.0.copyload.i, %bb.jm ], [ %.sroa.020.0.copyload.i, %bb.jl ]
  %i.bfc = load float, ptr %i.aox, align 4, !tbaa !228 ; 6 uses
  %i.bfd = fcmp une float %i.bfc, f0x7F7FFFFF
  br i1 %i.bfd, label %bb.jp, label %bb.jr

bb.jp:                                            ; preds = %bb.jo
  %i.bfe = load float, ptr %i.avj, align 4, !tbaa !724
  %i.bff = fcmp une float %i.bfe, %i.bfc
  %i.bfg = fcmp une float %.sroa.421.0.copyload.i, %i.bfc
  %or.cond996 = select i1 %i.bff, i1 true, i1 %i.bfg
  br i1 %or.cond996, label %bb.jq, label %bb.jr

bb.jq:                                            ; preds = %bb.jp
  store float %i.bfc, ptr %.sroa.421.0..sroa_idx.i, align 4, !tbaa !1210
  store float %i.bfc, ptr %i.avj, align 4, !tbaa !724
  br label %bb.jr

bb.jr:                                            ; preds = %bb.jp, %bb.jq, %bb.jo
  %i.bfh = phi float [ %.sroa.421.0.copyload.i, %bb.jp ], [ %i.bfc, %bb.jq ], [ %.sroa.421.0.copyload.i, %bb.jo ]
  %i.bfi = load float, ptr %20, align 8, !tbaa !227 ; 2 uses
  %i.bfj = fcmp une float %i.bfi, f0x7F7FFFFF
  br i1 %i.bfj, label %bb.js, label %bb.ju

bb.js:                                            ; preds = %bb.jr
  %i.bfk = fptosi float %i.bfi to i32
  %i.bfl = sitofp i32 %i.bfk to float             ; 3 uses
  %i.bfm = fcmp une float %.sroa.022.0.copyload.i, %i.bfl
  br i1 %i.bfm, label %bb.jt, label %bb.ju

bb.jt:                                            ; preds = %bb.js
  store float %i.bfl, ptr %i.alz, align 8, !tbaa !870
  br label %bb.ju

bb.ju:                                            ; preds = %bb.jt, %bb.js, %bb.jr
  %i.bfn = phi float [ %i.bfl, %bb.jt ], [ %.sroa.022.0.copyload.i, %bb.js ], [ %.sroa.022.0.copyload.i, %bb.jr ]
  %i.bfo = load float, ptr %i.aow, align 4, !tbaa !228 ; 2 uses
  %i.bfp = fcmp une float %i.bfo, f0x7F7FFFFF
  br i1 %i.bfp, label %bb.jv, label %bb.jx

bb.jv:                                            ; preds = %bb.ju
  %i.bfq = fptosi float %i.bfo to i32
  %i.bfr = sitofp i32 %i.bfq to float             ; 3 uses
  %i.bfs = fcmp une float %.sroa.423.0.copyload.i, %i.bfr
  br i1 %i.bfs, label %bb.jw, label %bb.jx

bb.jw:                                            ; preds = %bb.jv
  store float %i.bfr, ptr %i.ama, align 4, !tbaa !929
  br label %bb.jx

bb.jx:                                            ; preds = %bb.jw, %bb.jv, %bb.ju
  %i.bft = phi float [ %i.bfr, %bb.jw ], [ %.sroa.423.0.copyload.i, %bb.jv ], [ %.sroa.423.0.copyload.i, %bb.ju ]
  %i.bfu = fcmp une float %.sroa.022.0.copyload.i, %i.bfn
  %i.bfv = fcmp une float %.sroa.423.0.copyload.i, %i.bft
  %or.cond1220 = select i1 %i.bfu, i1 true, i1 %i.bfv
  %i.bfw = fcmp une float %.sroa.020.0.copyload.i, %i.bfb
  %or.cond1221 = select i1 %or.cond1220, i1 true, i1 %i.bfw
end_hunk_3
begin_hunk_4_@_ZN5ImGui5BeginEPKcPbi:bb.a
bb.kc:                                            ; preds = %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit
  %.not484 = trunc i32 %.5.i to i1
  %spec.select530 = or i1 %.1413, %.not484
  %.not485 = icmp ne i32 %.5.i, 1
  %spec.select547 = or i1 %.4, %.not485
  br label %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit.thread

_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit.thread: ; preds = %bb.hg, %bb.hc, %bb.hd, %bb.hf, %bb.hb, %bb.kc, %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit, %bb.ha, %bb.gz
  %.0956 = phi i32 [ -1, %bb.ha ], [ %.3959, %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit ], [ %.3959, %bb.kc ], [ -1, %bb.gz ], [ -1, %bb.hb ], [ -1, %bb.hf ], [ -1, %bb.hd ], [ -1, %bb.hc ], [ -1, %bb.hg ]
  %.0951 = phi i32 [ -1, %bb.ha ], [ %.3954, %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit ], [ %.3954, %bb.kc ], [ -1, %bb.gz ], [ -1, %bb.hb ], [ -1, %bb.hf ], [ -1, %bb.hd ], [ -1, %bb.hc ], [ -1, %bb.hg ]
  %.4416 = phi i1 [ %.1413, %bb.ha ], [ %.1413, %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit ], [ %spec.select530, %bb.kc ], [ %.1413, %bb.gz ], [ %.1413, %bb.hb ], [ %.1413, %bb.hf ], [ %.1413, %bb.hd ], [ %.1413, %bb.hc ], [ %.1413, %bb.hg ]
  %.6 = phi i1 [ %.4, %bb.ha ], [ %.4, %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit ], [ %spec.select547, %bb.kc ], [ %.4, %bb.gz ], [ %.4, %bb.hb ], [ %.4, %bb.hf ], [ %.4, %bb.hd ], [ %.4, %bb.hc ], [ %.4, %bb.hg ]
  %i.bgk = trunc i32 %.0956 to i8
  %i.bgl = load ptr, ptr %i.g, align 8, !tbaa !705 ; 40 uses
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.bgl, i64 216
  store i8 %i.bgk, ptr %i.bgm, align 8, !tbaa !1256
  %i.bgn = trunc i32 %.0951 to i8
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.bgl, i64 217
  store i8 %i.bgn, ptr %i.bgo, align 1, !tbaa !1257
  %i.bgp = getelementptr inbounds nuw i8, ptr %i.bgl, i64 207
  %i.bgq = load i8, ptr %i.bgp, align 1, !tbaa !721, !range !64, !noundef !204
  %i.bgr = trunc nuw i8 %i.bgq to i1
  br i1 %i.bgr, label %_Z7ImClampRK6ImVec2S1_S1_.exit.i, label %bb.kd

bb.kd:                                            ; preds = %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit.thread
  %i.bgs = getelementptr inbounds nuw i8, ptr %i.bgl, i64 56
  %i.bgt = load float, ptr %i.bgs, align 8, !tbaa !910
  %i.bgu = getelementptr inbounds nuw i8, ptr %i.bgl, i64 60
  %i.bgv = load float, ptr %i.bgu, align 4, !tbaa !1210
  %i.bgw = getelementptr inbounds nuw i8, ptr %i.bgl, i64 116
  %i.bgx = load float, ptr %i.bgw, align 4, !tbaa !1245
  %i.bgy = getelementptr inbounds nuw i8, ptr %i.bgl, i64 124 ; 2 uses
  %i.bgz = load float, ptr %i.bgy, align 4, !tbaa !1258 ; 2 uses
  %i.bha = fadd float %i.bgx, %i.bgz
  %i.bhb = fsub float %i.bgv, %i.bha
  %i.bhc = getelementptr inbounds nuw i8, ptr %i.bgl, i64 552
  %i.bhd = getelementptr inbounds nuw i8, ptr %i.bgl, i64 560
  %i.bhe = load <2 x float>, ptr %i.bhd, align 8, !tbaa !8
  %i.bhf = load <2 x float>, ptr %i.bhc, align 8, !tbaa !8
  %i.bhg = fsub <2 x float> %i.bhe, %i.bhf
  %i.bhh = fadd <2 x float> %i.aeq, %i.bhg        ; 2 uses
  br i1 %i.eg, label %bb.kf, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bgl, i64 64
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.bgl, i64 88
  %i.bhk = load <2 x float>, ptr %i.bhj, align 8, !tbaa !8
  %i.bhl = fmul <2 x float> %i.bhk, splat (float 2.000000e+00)
  %i.bhm = load <2 x float>, ptr %i.bhi, align 8, !tbaa !8
  %i.bhn = fadd <2 x float> %i.bhl, %i.bhm
  br label %bb.kf

bb.kf:                                            ; preds = %bb.kd, %bb.ke
  %.sroa.0824.0 = phi <2 x float> [ %i.bhn, %bb.ke ], [ zeroinitializer, %bb.kd ] ; 3 uses
  %i.bho = extractelement <2 x float> %i.bhh, i64 0
  %i.bhp = select i1 %.4416, float %i.bgt, float %i.bho
  %i.bhq = extractelement <2 x float> %i.bhh, i64 1
  %i.bhr = select i1 %.6, float %i.bhb, float %i.bhq ; 2 uses
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bgl, i64 200 ; 3 uses
  %i.bht = load i8, ptr %i.bhs, align 8, !tbaa !1090, !range !64, !noundef !204
  %i.bhu = and i32 %.1403, 16384
  %.not486 = icmp eq i32 %i.bhu, 0
  br i1 %.not486, label %bb.kg, label %bb.ki

bb.kg:                                            ; preds = %bb.kf
  %.sroa.0824.4.vec.extract = extractelement <2 x float> %.sroa.0824.0, i64 1
  %i.bhv = fcmp ogt float %.sroa.0824.4.vec.extract, %i.bhr
  br i1 %i.bhv, label %bb.kh, label %bb.ki

bb.kh:                                            ; preds = %bb.kg
  %i.bhw = and i32 %.1403, 8
  %.not487 = icmp eq i32 %i.bhw, 0
  %i.bhx = zext i1 %.not487 to i8
  br label %bb.ki

bb.ki:                                            ; preds = %bb.kg, %bb.kh, %bb.kf
  %i.bhy = phi i8 [ 1, %bb.kf ], [ 0, %bb.kg ], [ %i.bhx, %bb.kh ] ; 4 uses
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.bgl, i64 201 ; 2 uses
  store i8 %i.bhy, ptr %i.bhz, align 1, !tbaa !1259
  %i.bia = and i32 %.1403, 32768
  %.not488 = icmp eq i32 %i.bia, 0
  br i1 %.not488, label %bb.kj, label %bb.kn

bb.kj:                                            ; preds = %bb.ki
  %.sroa.0824.0.vec.extract = extractelement <2 x float> %.sroa.0824.0, i64 0
  %i.bib = trunc nuw i8 %i.bhy to i1
  br i1 %i.bib, label %bb.kk, label %bb.kl

bb.kk:                                            ; preds = %bb.kj
  %i.bic = getelementptr inbounds nuw i8, ptr %i.j, i64 3340
  %i.bid = load float, ptr %i.bic, align 4, !tbaa !1260
  br label %bb.kl

bb.kl:                                            ; preds = %bb.kj, %bb.kk
  %i.bie = phi float [ %i.bid, %bb.kk ], [ 0.000000e+00, %bb.kj ]
  %i.bif = fsub float %i.bhp, %i.bie
  %i.big = fcmp ogt float %.sroa.0824.0.vec.extract, %i.bif
  %i.bih = and i32 %.1403, 8
  %.not489 = icmp eq i32 %i.bih, 0
  %or.cond531 = select i1 %i.big, i1 %.not489, i1 false
  br i1 %or.cond531, label %bb.km, label %bb.kn

bb.km:                                            ; preds = %bb.kl
  %i.bii = lshr i32 %.1403, 11
  %i.bij = trunc i32 %i.bii to i8
  %i.bik = and i8 %i.bij, 1
  br label %bb.kn

bb.kn:                                            ; preds = %bb.kl, %bb.km, %bb.ki
  %i.bil = phi i8 [ 1, %bb.ki ], [ %i.bik, %bb.km ], [ 0, %bb.kl ] ; 4 uses
  store i8 %i.bil, ptr %i.bhs, align 8, !tbaa !1090
  %i.bim = getelementptr inbounds nuw i8, ptr %i.bgl, i64 203 ; 2 uses
  %i.bin = load i8, ptr %i.bim, align 1, !tbaa !1261
  %i.bio = shl i8 %i.bin, 1
  %.not491 = icmp ne i8 %i.bht, %i.bil
  %i.bip = zext i1 %.not491 to i8
  %i.biq = or disjoint i8 %i.bio, %i.bip          ; 3 uses
  store i8 %i.biq, ptr %i.bim, align 1, !tbaa !1261
  %.not492 = icmp eq i8 %i.biq, 0
  br i1 %.not492, label %.thread981, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  %i.bir = zext i8 %i.biq to i32
  br label %.lr.ph.i624

.lr.ph.i624:                                      ; preds = %bb.ko, %.lr.ph.i624
  %.08.i = phi i32 [ %i.biu, %.lr.ph.i624 ], [ 0, %bb.ko ]
  %.057.i = phi i32 [ %i.bit, %.lr.ph.i624 ], [ %i.bir, %bb.ko ] ; 2 uses
  %i.bis = add nsw i32 %.057.i, -1
  %i.bit = and i32 %i.bis, %.057.i                ; 2 uses
  %i.biu = add i32 %.08.i, 1                      ; 2 uses
  %.not.i625 = icmp eq i32 %i.bit, 0
  br i1 %.not.i625, label %bb.kp, label %.lr.ph.i624, !llvm.loop !1262

bb.kp:                                            ; preds = %.lr.ph.i624
  %i.biv = icmp ugt i32 %i.biu, 3
  br i1 %i.biv, label %bb.kq, label %.thread981

bb.kq:                                            ; preds = %bb.kp
  store i8 1, ptr %i.bhs, align 8, !tbaa !1090
  br label %.thread981

.thread981:                                       ; preds = %bb.kn, %bb.kq, %bb.kp
  %i.biw = phi i8 [ %i.bil, %bb.kp ], [ 1, %bb.kq ], [ %i.bil, %bb.kn ]
  %i.bix = phi i8 [ 0, %bb.kp ], [ 1, %bb.kq ], [ 0, %bb.kn ]
  %i.biy = getelementptr inbounds nuw i8, ptr %i.bgl, i64 202
  store i8 %i.bix, ptr %i.biy, align 2, !tbaa !1263
  %i.biz = trunc nuw i8 %i.biw to i1              ; 2 uses
  %.not997 = xor i1 %i.biz, true
  %i.bja = trunc nuw i8 %i.bhy to i1
  %or.cond998 = select i1 %.not997, i1 true, i1 %i.bja
  br i1 %or.cond998, label %bb.ks, label %bb.kr

bb.kr:                                            ; preds = %.thread981
  %.sroa.0824.4.vec.extract827 = extractelement <2 x float> %.sroa.0824.0, i64 1
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.j, i64 3340
  %i.bjc = load float, ptr %i.bjb, align 4, !tbaa !1260
  %i.bjd = fsub float %i.bhr, %i.bjc
  %i.bje = fcmp ogt float %.sroa.0824.4.vec.extract827, %i.bjd
  %i.bjf = and i32 %.1403, 8
  %.not493 = icmp eq i32 %i.bjf, 0
  %narrow = select i1 %i.bje, i1 %.not493, i1 false
  %i.bjg = zext i1 %narrow to i8                  ; 2 uses
  store i8 %i.bjg, ptr %i.bhz, align 1, !tbaa !1259
  br label %bb.ks

bb.ks:                                            ; preds = %bb.kr, %.thread981
  %i.bjh = phi i8 [ %i.bjg, %bb.kr ], [ %i.bhy, %.thread981 ]
  %i.bji = trunc nuw i8 %i.bjh to i1
  br i1 %i.bji, label %bb.kt, label %bb.ku

bb.kt:                                            ; preds = %bb.ks
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.j, i64 3340
  %i.bjk = load float, ptr %i.bjj, align 4, !tbaa !1260
  br label %bb.ku

bb.ku:                                            ; preds = %bb.ks, %bb.kt
  %.cast = phi float [ %i.bjk, %bb.kt ], [ 0.000000e+00, %bb.ks ] ; 2 uses
  br i1 %i.biz, label %bb.kv, label %bb.kw

bb.kv:                                            ; preds = %bb.ku
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.j, i64 3340
  %i.bjm = load float, ptr %i.bjl, align 4, !tbaa !1260
  br label %bb.kw

bb.kw:                                            ; preds = %bb.ku, %bb.kv
  %.cast1006 = phi float [ %i.bjm, %bb.kv ], [ 0.000000e+00, %bb.ku ] ; 2 uses
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.bgl, i64 192
  store float %.cast, ptr %i.bjn, align 8
  %.sroa_idx820 = getelementptr inbounds nuw i8, ptr %i.bgl, i64 196
  store float %.cast1006, ptr %.sroa_idx820, align 4
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.bgl, i64 120 ; 2 uses
  %i.bjp = load float, ptr %i.bjo, align 8, !tbaa !1264
  %i.bjq = fadd float %.cast, %i.bjp
  store float %i.bjq, ptr %i.bjo, align 8, !tbaa !1264
  %i.bjr = fadd float %i.bgz, %.cast1006
  store float %i.bjr, ptr %i.bgy, align 4, !tbaa !1258
  br label %_Z7ImClampRK6ImVec2S1_S1_.exit.i

_Z7ImClampRK6ImVec2S1_S1_.exit.i:                 ; preds = %bb.kw, %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #41
  %or.cond29 = or i1 %i.wf, %i.oy
  %or.cond532 = select i1 %.not462, i1 true, i1 %or.cond29 ; 2 uses
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.kb, i64 616
  %i.bjt = select i1 %or.cond532, ptr %28, ptr %i.bjs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 4 dereferenceable(16) %i.bjt, i64 16, i1 false), !tbaa.struct !419
  %i.bju = getelementptr inbounds nuw i8, ptr %i.bgl, i64 40
  %i.bjv = getelementptr inbounds nuw i8, ptr %i.bgl, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #41
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.bgl, i64 56
  %i.bjx = load float, ptr %i.bjw, align 8, !tbaa !910
  %i.bjy = getelementptr inbounds nuw i8, ptr %i.bgl, i64 104
  %i.bjz = load float, ptr %i.bjy, align 8, !tbaa !909
  %i.bka = load <2 x float>, ptr %i.bju, align 8  ; 8 uses
  store <2 x float> %i.bka, ptr %30, align 8
  %i.bkb = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 5 uses
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.bgl, i64 536
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgl, i64 544
  %i.bkd = extractelement <2 x float> %i.bka, i64 0
  %i.bke = fadd float %i.bkd, %i.bjx
  %i.bkf = extractelement <2 x float> %i.bka, i64 1
  %i.bkg = fadd float %i.bkf, %i.bjz
  %.sroa.2.8.vec.insert.i633 = insertelement <2 x float> poison, float %i.bke, i64 0
  %.sroa.2.12.vec.insert.i634 = insertelement <2 x float> %.sroa.2.8.vec.insert.i633, float %i.bkg, i64 1
  store <2 x float> %.sroa.2.12.vec.insert.i634, ptr %i.bkb, align 8
  %i.bkh = load <2 x float>, ptr %29, align 8, !tbaa !8 ; 6 uses
  %i.bki = fcmp ole <2 x float> %i.bkh, %i.bka
  %i.bkj = select <2 x i1> %i.bki, <2 x float> %i.bka, <2 x float> %i.bkh
  store <2 x float> %i.bkj, ptr %i.bkc, align 8
  %i.bkk = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %i.bkl = getelementptr inbounds nuw i8, ptr %i.bgl, i64 112
  %i.bkm = getelementptr inbounds nuw i8, ptr %i.bgl, i64 552
  %i.bkn = load <2 x float>, ptr %i.bkl, align 8, !tbaa !8
  %i.bko = fadd <2 x float> %i.bka, %i.bkn        ; 3 uses
  store <2 x float> %i.bko, ptr %i.bkm, align 8, !tbaa !8
  %i.bkp = getelementptr inbounds nuw i8, ptr %i.bgl, i64 120
  %i.bkq = getelementptr inbounds nuw i8, ptr %i.bgl, i64 560
  %i.bkr = load <2 x float>, ptr %i.bjv, align 8, !tbaa !8 ; 2 uses
  %foldExtExtBinop = fadd <2 x float> %i.bka, %i.bkr
  %i.bks = fadd <2 x float> %i.bkr, %i.bka        ; 2 uses
  %i.bkt = load <2 x float>, ptr %i.bkk, align 8, !tbaa !8 ; 6 uses
  %i.bku = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %i.bks, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.bkv = fcmp ogt <2 x float> %i.bkt, %i.bku
  %i.bkw = select <2 x i1> %i.bkv, <2 x float> %i.bku, <2 x float> %i.bkt
  store <2 x float> %i.bkw, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bkx = load <2 x float>, ptr %i.bkp, align 8, !tbaa !8
  %i.bky = fsub <2 x float> %i.bks, %i.bkx        ; 3 uses
  store <2 x float> %i.bky, ptr %i.bkq, align 8, !tbaa !8
  %i.bkz = and i32 %.1403, 1025
  %brmerge533.not = icmp eq i32 %i.bkz, 1
  %i.bla = getelementptr inbounds nuw i8, ptr %i.j, i64 3296
  %i.blb = getelementptr inbounds nuw i8, ptr %i.bgl, i64 100 ; 2 uses
  %.in494 = select i1 %brmerge533.not, ptr %i.blb, ptr %i.bla
  %i.blc = load float, ptr %.in494, align 4, !tbaa !8
  %i.bld = load float, ptr %i.blb, align 4, !tbaa !1233 ; 2 uses
  %i.ble = getelementptr inbounds nuw i8, ptr %i.bgl, i64 568
  %i.blf = fneg float %i.bld
  %i.blg = getelementptr inbounds nuw i8, ptr %i.bgl, i64 576
  %i.blh = fadd <2 x float> %i.bko, splat (float 5.000000e-01)
  %i.bli = insertelement <2 x float> poison, float %i.bld, i64 0
  %i.blj = insertelement <2 x float> %i.bli, float %i.blc, i64 1
  %i.blk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.blj, <2 x float> splat (float 5.000000e-01), <2 x float> %i.blh) ; 3 uses
  %i.bll = fcmp ult <2 x float> %i.blk, zeroinitializer
  %i.blm = fptosi <2 x float> %i.blk to <2 x i32> ; 2 uses
  %i.bln = sitofp <2 x i32> %i.blm to <2 x float>
  %i.blo = fcmp une <2 x float> %i.blk, %i.bln
  %i.blp = and <2 x i1> %i.bll, %i.blo
  %i.blq = sext <2 x i1> %i.blp to <2 x i32>
  %i.blr = add nsw <2 x i32> %i.blq, %i.blm
  %i.bls = sitofp <2 x i32> %i.blr to <2 x float> ; 3 uses
  %i.blt = fcmp ogt <2 x float> %i.bkh, %i.bls
  %i.blu = fcmp olt <2 x float> %i.bkt, %i.bls
  %i.blv = select <2 x i1> %i.blu, <2 x float> %i.bkt, <2 x float> %i.bls
  %i.blw = select <2 x i1> %i.blt, <2 x float> %i.bkh, <2 x float> %i.blv
  store <2 x float> %i.blw, ptr %i.ble, align 8
  %i.blx = insertelement <2 x float> poison, float %i.blf, i64 0
  %i.bly = shufflevector <2 x float> %i.blx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.blz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bly, <2 x float> splat (float 5.000000e-01), <2 x float> %i.bky) ; 3 uses
  %i.bma = fcmp ult <2 x float> %i.blz, zeroinitializer
  %i.bmb = fptosi <2 x float> %i.blz to <2 x i32> ; 2 uses
  %i.bmc = sitofp <2 x i32> %i.bmb to <2 x float>
  %i.bmd = fcmp une <2 x float> %i.blz, %i.bmc
  %i.bme = and <2 x i1> %i.bma, %i.bmd
  %i.bmf = sext <2 x i1> %i.bme to <2 x i32>
  %i.bmg = add nsw <2 x i32> %i.bmf, %i.bmb
  %i.bmh = sitofp <2 x i32> %i.bmg to <2 x float> ; 3 uses
  %i.bmi = fcmp ogt <2 x float> %i.bkh, %i.bmh
  %i.bmj = fcmp olt <2 x float> %i.bkt, %i.bmh
  %i.bmk = select <2 x i1> %i.bmj, <2 x float> %i.bkt, <2 x float> %i.bmh
  %i.bml = select <2 x i1> %i.bmi, <2 x float> %i.bkh, <2 x float> %i.bmk
  store <2 x float> %i.bml, ptr %i.blg, align 8
  %i.bmm = getelementptr inbounds nuw i8, ptr %i.bgl, i64 64
  %i.bmn = getelementptr inbounds nuw i8, ptr %i.bgl, i64 88
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.bgl, i64 160
  %i.bmp = load <2 x float>, ptr %i.bmm, align 8, !tbaa !8
  %i.bmq = load <2 x float>, ptr %i.bmn, align 8, !tbaa !8
  %i.bmr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bmq, <2 x float> splat (float 2.000000e+00), <2 x float> %i.bmp)
  %i.bms = fsub <2 x float> %i.bky, %i.bko
  %i.bmt = fsub <2 x float> %i.bmr, %i.bms        ; 2 uses
  %i.bmu = fcmp ole <2 x float> %i.bmt, zeroinitializer
  %i.bmv = select <2 x i1> %i.bmu, <2 x float> zeroinitializer, <2 x float> %i.bmt
  store <2 x float> %i.bmv, ptr %i.bmo, align 8, !tbaa !8
  %i.bmw = call fastcc <2 x float> @_ZL38CalcNextScrollFromScrollTargetAndClampP11ImGuiWindow(ptr noundef nonnull %i.bgl)
  %i.bmx = getelementptr inbounds nuw i8, ptr %i.bgl, i64 152
  store <2 x float> %i.bmw, ptr %i.bmx, align 8
  %i.bmy = getelementptr inbounds nuw i8, ptr %i.bgl, i64 168
  store i32 2139095039, ptr %i.bmy, align 8
  %.sroa_idx817 = getelementptr inbounds nuw i8, ptr %i.bgl, i64 172
  store i32 2139095039, ptr %.sroa_idx817, align 4
  %i.bmz = getelementptr inbounds nuw i8, ptr %i.bgl, i64 128
  store <2 x float> zeroinitializer, ptr %i.bmz, align 8, !tbaa !8
  %i.bna = getelementptr inbounds nuw i8, ptr %i.bgl, i64 712
  %i.bnb = load ptr, ptr %i.bna, align 8, !tbaa !452
  %i.bnc = getelementptr inbounds nuw i8, ptr %i.j, i64 4552
  %i.bnd = load ptr, ptr %i.bnc, align 8, !tbaa !453
  %i.bne = getelementptr inbounds nuw i8, ptr %i.bnd, i64 8
  %i.bnf = load ptr, ptr %i.bne, align 8, !tbaa !976 ; 2 uses
  %i.bng = getelementptr inbounds nuw i8, ptr %i.bnf, i64 40
  %.sroa.0.0.copyload = load ptr, ptr %i.bng, align 8, !tbaa !485
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bnf, i64 48
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !486
  call void @_ZN10ImDrawList11PushTextureE12ImTextureRef(ptr noundef nonnull align 8 dereferenceable(224) %i.bnb, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  %i.bnh = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.bni = getelementptr inbounds nuw i8, ptr %i.bnh, i64 5312
  %i.bnj = load ptr, ptr %i.bni, align 8, !tbaa !298 ; 3 uses
  %i.bnk = getelementptr inbounds nuw i8, ptr %i.bnj, i64 206
  store i8 1, ptr %i.bnk, align 2, !tbaa !854
  %i.bnl = getelementptr inbounds nuw i8, ptr %i.bnj, i64 712 ; 2 uses
  %i.bnm = load ptr, ptr %i.bnl, align 8, !tbaa !452
  call void @_ZN10ImDrawList12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 8 dereferenceable(224) %i.bnm, ptr noundef nonnull align 4 dereferenceable(8) %29, ptr noundef nonnull align 4 dereferenceable(8) %i.bkk, i1 noundef zeroext false)
  %i.bnn = load ptr, ptr %i.bnl, align 8, !tbaa !452 ; 2 uses
  %i.bno = getelementptr inbounds nuw i8, ptr %i.bnn, i64 160
  %i.bnp = getelementptr inbounds nuw i8, ptr %i.bnn, i64 168
  %i.bnq = load ptr, ptr %i.bnp, align 8, !tbaa !1265
  %i.bnr = load i32, ptr %i.bno, align 8, !tbaa !1266
  %i.bns = sext i32 %i.bnr to i64
  %i.bnt = getelementptr [16 x i8], ptr %i.bnq, i64 %i.bns
  %i.bnu = getelementptr i8, ptr %i.bnt, i64 -16
  %i.bnv = getelementptr inbounds nuw i8, ptr %i.bnj, i64 616
  %i.bnw = load <4 x float>, ptr %i.bnu, align 4, !tbaa !8
  store <4 x float> %i.bnw, ptr %i.bnv, align 8, !tbaa !8
  br i1 %or.cond532, label %.thread984, label %bb.kx

bb.kx:                                            ; preds = %_Z7ImClampRK6ImVec2S1_S1_.exit.i
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.kb, i64 432
  %i.bny = load i32, ptr %i.bnx, align 8, !tbaa !1246 ; 2 uses
  %i.bnz = icmp sgt i32 %i.bny, 1
  br i1 %i.bnz, label %bb.ky, label %..thread982_crit_edge

..thread982_crit_edge:                            ; preds = %bb.kx
  %.pre1043 = load ptr, ptr %i.g, align 8, !tbaa !705
  br label %.thread982

bb.ky:                                            ; preds = %bb.kx
  %i.boa = getelementptr inbounds nuw i8, ptr %i.kb, i64 440
  %i.bob = load ptr, ptr %i.boa, align 8, !tbaa !561
  %i.boc = zext nneg i32 %i.bny to i64
  %i.bod = getelementptr [8 x i8], ptr %i.bob, i64 %i.boc
  %i.boe = getelementptr i8, ptr %i.bod, i64 -16
  %i.bof = load ptr, ptr %i.boe, align 8, !tbaa !705 ; 5 uses
  %.not495 = icmp eq ptr %i.bof, null
  %.pre1044 = load ptr, ptr %i.g, align 8, !tbaa !705 ; 6 uses
  br i1 %.not495, label %.thread982, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %i.bog = getelementptr inbounds nuw i8, ptr %i.bof, i64 40
  %i.boh = load float, ptr %i.bog, align 8, !tbaa !870 ; 2 uses
  %i.boi = getelementptr inbounds nuw i8, ptr %i.bof, i64 44
  %i.boj = load float, ptr %i.boi, align 4, !tbaa !929 ; 2 uses
  %i.bok = getelementptr inbounds nuw i8, ptr %i.bof, i64 48
  %i.bol = load float, ptr %i.bok, align 8, !tbaa !723
  %i.bom = fadd float %i.boh, %i.bol
  %i.bon = getelementptr inbounds nuw i8, ptr %i.bof, i64 52
  %i.boo = load float, ptr %i.bon, align 4, !tbaa !724
  %i.bop = fadd float %i.boj, %i.boo
  %i.boq = getelementptr inbounds nuw i8, ptr %.pre1044, i64 40
  %i.bor = load float, ptr %i.boq, align 8, !tbaa !870 ; 2 uses
  %i.bos = getelementptr inbounds nuw i8, ptr %.pre1044, i64 44
  %i.bot = load float, ptr %i.bos, align 4, !tbaa !929 ; 2 uses
  %i.bou = getelementptr inbounds nuw i8, ptr %.pre1044, i64 48
  %i.bov = load float, ptr %i.bou, align 8, !tbaa !723
  %i.bow = fadd float %i.bor, %i.bov
  %i.box = getelementptr inbounds nuw i8, ptr %.pre1044, i64 52
  %i.boy = load float, ptr %i.box, align 4, !tbaa !724
  %i.boz = fadd float %i.bot, %i.boy
  %i.bpa = fcmp olt float %i.bot, %i.bop
  %i.bpb = fcmp ogt float %i.boz, %i.boj
  %or.cond999 = select i1 %i.bpa, i1 %i.bpb, i1 false
  %i.bpc = fcmp olt float %i.bor, %i.bom
  %or.cond1000 = select i1 %or.cond999, i1 %i.bpc, i1 false
  %i.bpd = fcmp ogt float %i.bow, %i.boh
  %spec.select1001 = select i1 %or.cond1000, i1 %i.bpd, i1 false
  br label %.thread982

.thread982:                                       ; preds = %..thread982_crit_edge, %bb.kz, %bb.ky
  %i.bpe = phi ptr [ %.pre1043, %..thread982_crit_edge ], [ %.pre1044, %bb.ky ], [ %.pre1044, %bb.kz ]
  %i.bpf = phi i1 [ false, %..thread982_crit_edge ], [ false, %bb.ky ], [ %spec.select1001, %bb.kz ]
  %i.bpg = getelementptr inbounds nuw i8, ptr %i.kb, i64 712
  %i.bph = load ptr, ptr %i.bpg, align 8, !tbaa !452 ; 2 uses
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.bph, i64 32
  %i.bpj = load i32, ptr %i.bpi, align 8, !tbaa !1267
  %i.bpk = icmp eq i32 %i.bpj, 0
  %i.bpl = getelementptr inbounds nuw i8, ptr %i.bpe, i64 712 ; 2 uses
  %i.bpm = load ptr, ptr %i.bpl, align 8, !tbaa !452 ; 2 uses
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.bpm, i64 8
  %i.bpo = load ptr, ptr %i.bpn, align 8, !tbaa !1268
  %i.bpp = load i32, ptr %i.bpm, align 8, !tbaa !1269
  %i.bpq = sext i32 %i.bpp to i64
  %i.bpr = getelementptr [72 x i8], ptr %i.bpo, i64 %i.bpq
  %i.bps = getelementptr i8, ptr %i.bpr, i64 -32
  %i.bpt = load i32, ptr %i.bps, align 8, !tbaa !1270
  %i.bpu = icmp ne i32 %i.bpt, 0
  %or.cond33 = select i1 %i.bpu, i1 true, i1 %i.bpk
  %or.cond35 = or i1 %i.bpf, %or.cond33
  br i1 %or.cond35, label %.thread984, label %bb.la

bb.la:                                            ; preds = %.thread982
  store ptr %i.bph, ptr %i.bpl, align 8, !tbaa !452
  br label %.thread984

.thread984:                                       ; preds = %_Z7ImClampRK6ImVec2S1_S1_.exit.i, %bb.la, %.thread982
  %.1986 = phi i1 [ false, %.thread982 ], [ true, %bb.la ], [ false, %_Z7ImClampRK6ImVec2S1_S1_.exit.i ]
  %i.bpv = getelementptr inbounds nuw i8, ptr %i.j, i64 8712
  %i.bpw = load ptr, ptr %i.bpv, align 8, !tbaa !1045 ; 2 uses
  %.not496 = icmp eq ptr %i.bpw, null
  br i1 %.not496, label %bb.lb, label %bb.lc

bb.lb:                                            ; preds = %.thread984
  %i.bpx = getelementptr inbounds nuw i8, ptr %i.j, i64 8224
  %i.bpy = load ptr, ptr %i.bpx, align 8, !tbaa !389
  br label %bb.lc

bb.lc:                                            ; preds = %.thread984, %bb.lb
  %i.bpz = phi ptr [ %i.bpy, %bb.lb ], [ %i.bpw, %.thread984 ] ; 2 uses
  br i1 %spec.select993, label %._crit_edge1045, label %bb.ld

._crit_edge1045:                                  ; preds = %bb.lc
  %.pre1046 = load ptr, ptr %i.g, align 8, !tbaa !705
  br label %bb.lf

bb.ld:                                            ; preds = %bb.lc
  %.not497 = icmp eq ptr %i.bpz, null
  %.pre1047 = load ptr, ptr %i.g, align 8, !tbaa !705 ; 3 uses
  br i1 %.not497, label %bb.lf, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.bqa = getelementptr inbounds nuw i8, ptr %.pre1047, i64 976
  %i.bqb = load ptr, ptr %i.bqa, align 8, !tbaa !1198
  %i.bqc = getelementptr inbounds nuw i8, ptr %i.bpz, i64 976
  %i.bqd = load ptr, ptr %i.bqc, align 8, !tbaa !1198
  %i.bqe = icmp eq ptr %i.bqb, %i.bqd
  br label %bb.lf

bb.lf:                                            ; preds = %._crit_edge1045, %bb.ld, %bb.le
  %i.bqf = phi ptr [ %.pre1046, %._crit_edge1045 ], [ %.pre1047, %bb.ld ], [ %.pre1047, %bb.le ] ; 52 uses
  %i.bqg = phi i1 [ true, %._crit_edge1045 ], [ false, %bb.ld ], [ %i.bqe, %bb.le ] ; 2 uses
  %i.bqh = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 9 uses
  %i.bqi = getelementptr inbounds nuw i8, ptr %i.bqf, i64 20 ; 3 uses
  %i.bqj = load i32, ptr %i.bqi, align 4, !tbaa !722 ; 7 uses
  %i.bqk = getelementptr inbounds nuw i8, ptr %i.bqf, i64 209
  store i8 0, ptr %i.bqk, align 1, !tbaa !1231
  %i.bql = getelementptr inbounds nuw i8, ptr %i.bqf, i64 368 ; 2 uses
  store i32 1, ptr %i.bql, align 8, !tbaa !1205
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bqf, i64 96 ; 5 uses
  %i.bqn = load float, ptr %i.bqm, align 8, !tbaa !1248 ; 7 uses
  %i.bqo = getelementptr inbounds nuw i8, ptr %i.bqf, i64 100 ; 3 uses
  %i.bqp = load float, ptr %i.bqo, align 4, !tbaa !1233 ; 4 uses
  %i.bqq = getelementptr inbounds nuw i8, ptr %i.bqf, i64 207
  %i.bqr = load i8, ptr %i.bqq, align 1, !tbaa !721, !range !64, !noundef !204
  %i.bqs = trunc nuw i8 %i.bqr to i1
  br i1 %i.bqs, label %bb.lg, label %bb.lj

bb.lg:                                            ; preds = %bb.lf
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.bqh, i64 3296 ; 3 uses
  %i.bqu = load float, ptr %i.bqt, align 4, !tbaa !1272
  store float %i.bqp, ptr %i.bqt, align 8, !tbaa !472
  br i1 %i.bqg, label %bb.lh, label %bb.li

bb.lh:                                            ; preds = %bb.lg
  %i.bqv = getelementptr inbounds nuw i8, ptr %i.bqh, i64 8216
  %i.bqw = load i8, ptr %i.bqv, align 8, !tbaa !474, !range !64, !noundef !204
  %i.bqx = trunc nuw i8 %i.bqw to i1
  %i.bqy = select i1 %i.bqx, i64 11, i64 12
  br label %bb.li

bb.li:                                            ; preds = %bb.lh, %bb.lg
  %i.bqz = phi i64 [ 12, %bb.lg ], [ %i.bqy, %bb.lh ]
  %i.bra = getelementptr inbounds nuw i8, ptr %i.bqh, i64 3532
  %i.brb = getelementptr inbounds nuw [16 x i8], ptr %i.bra, i64 %i.bqz
  %i.brc = getelementptr inbounds nuw i8, ptr %i.bqh, i64 3220
  %i.brd = load float, ptr %i.brc, align 4, !tbaa !416
  %i.bre = load <4 x float>, ptr %i.brb, align 4, !tbaa !8
  %i.brf = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.brd, i64 3
  %i.brg = fmul <4 x float> %i.bre, %i.brf        ; 3 uses
  %i.brh = fcmp olt <4 x float> %i.brg, zeroinitializer
  %i.bri = fcmp ogt <4 x float> %i.brg, splat (float 1.000000e+00)
  %i.brj = select <4 x i1> %i.bri, <4 x float> splat (float 1.000000e+00), <4 x float> %i.brg
  %i.brk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.brj, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.brl = select <4 x i1> %i.brh, <4 x float> splat (float 5.000000e-01), <4 x float> %i.brk
  %i.brm = fptosi <4 x float> %i.brl to <4 x i32>
  %i.brn = shl <4 x i32> %i.brm, <i32 0, i32 8, i32 16, i32 24>
  %i.bro = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.brn)
  %.sroa.028.0.copyload.i = load <2 x float>, ptr %30, align 8
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.bkb, align 8
  call void @_ZN5ImGui11RenderFrameE6ImVec2S0_jbf(<2 x float> %.sroa.028.0.copyload.i, <2 x float> %.sroa.0.0.copyload.i, i32 noundef %i.bro, i1 noundef zeroext true, float noundef %i.bqn)
  store float %i.bqu, ptr %i.bqt, align 8, !tbaa !472
  br label %_ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbbiPKjf.exit

bb.lj:                                            ; preds = %bb.lf
  %i.brp = and i32 %i.bqj, 128
  %.not.i665 = icmp eq i32 %i.brp, 0
  br i1 %.not.i665, label %bb.lk, label %bb.ln

bb.lk:                                            ; preds = %bb.lj
  %i.brq = and i32 %i.bqj, 100663296
  %.not.i.i672 = icmp eq i32 %i.brq, 0
  %i.brr = and i32 %i.bqj, 16777216
  %.not2.i.i = icmp eq i32 %i.brr, 0
  %..i.i673 = select i1 %.not2.i.i, i64 2, i64 3
  %.0.i.i = select i1 %.not.i.i672, i64 %..i.i673, i64 4
  %i.brs = getelementptr inbounds nuw i8, ptr %i.bqh, i64 3532
  %i.brt = getelementptr inbounds nuw [16 x i8], ptr %i.brs, i64 %.0.i.i ; 3 uses
  %.sroa.0.0.copyload.i112.i = load float, ptr %i.brt, align 4, !tbaa !8
  %.sroa.4.0..sroa_idx.i113.i = getelementptr inbounds nuw i8, ptr %i.brt, i64 4
  %.sroa.6.0..sroa_idx.i117.i = getelementptr inbounds nuw i8, ptr %i.brt, i64 12
  %.sroa.6.0.copyload.i118.i = load float, ptr %.sroa.6.0..sroa_idx.i117.i, align 4, !tbaa !8
  %i.bru = getelementptr inbounds nuw i8, ptr %i.bqh, i64 3220
  %i.brv = load float, ptr %i.bru, align 4, !tbaa !416
  %i.brw = fmul float %.sroa.6.0.copyload.i118.i, %i.brv
  %i.brx = load <2 x float>, ptr %.sroa.4.0..sroa_idx.i113.i, align 4, !tbaa !8 ; 3 uses
  %i.bry = fcmp olt <2 x float> %i.brx, zeroinitializer
  %i.brz = fcmp ogt <2 x float> %i.brx, splat (float 1.000000e+00)
  %i.bsa = select <2 x i1> %i.brz, <2 x float> splat (float 1.000000e+00), <2 x float> %i.brx
  %i.bsb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bsa, <2 x float> splat (float 2.550000e+02), <2 x float> splat (float 5.000000e-01))
  %i.bsc = select <2 x i1> %i.bry, <2 x float> splat (float 5.000000e-01), <2 x float> %i.bsb
  %i.bsd = fptosi <2 x float> %i.bsc to <2 x i32>
  %i.bse = shl <2 x i32> %i.bsd, <i32 8, i32 16>  ; 2 uses
  %i.bsf = extractelement <2 x i32> %i.bse, i64 0
  %i.bsg = extractelement <2 x i32> %i.bse, i64 1
  %i.bsh = insertelement <2 x float> poison, float %.sroa.0.0.copyload.i112.i, i64 0
  %i.bsi = insertelement <2 x float> %i.bsh, float %i.brw, i64 1 ; 3 uses
  %i.bsj = fcmp ogt <2 x float> %i.bsi, splat (float 1.000000e+00)
  %i.bsk = select <2 x i1> %i.bsj, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bsi
  %i.bsl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bsk, <2 x float> splat (float 2.550000e+02), <2 x float> splat (float 5.000000e-01))
  %i.bsm = fcmp olt <2 x float> %i.bsi, zeroinitializer
  %i.bsn = select <2 x i1> %i.bsm, <2 x float> splat (float 5.000000e-01), <2 x float> %i.bsl ; 2 uses
  %i.bso = extractelement <2 x float> %i.bsn, i64 0
  %i.bsp = fptosi float %i.bso to i32
  %i.bsq = or i32 %i.bsf, %i.bsp
  %i.bsr = or i32 %i.bsq, %i.bsg                  ; 2 uses
  %i.bss = extractelement <2 x float> %i.bsn, i64 1
  %i.bst = fptosi float %i.bss to i32
  %i.bsu = shl i32 %i.bst, 24
  %i.bsv = or i32 %i.bsu, %i.bsr
  %i.bsw = getelementptr inbounds nuw i8, ptr %i.bqh, i64 7928
  %i.bsx = load i32, ptr %i.bsw, align 8, !tbaa !1128
  %i.bsy = and i32 %i.bsx, 64
  %.not105.not.i = icmp eq i32 %i.bsy, 0
  br i1 %.not105.not.i, label %.critedge.i674, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  %i.bsz = getelementptr inbounds nuw i8, ptr %i.bqh, i64 8032
  %i.bta = load float, ptr %i.bsz, align 8, !tbaa !1129 ; 3 uses
  %i.btb = and i32 %i.bsr, 16777215
  %i.btc = fcmp olt float %i.bta, 0.000000e+00
  %i.btd = fcmp ogt float %i.bta, 1.000000e+00
  %i.bte = select i1 %i.btd, float 1.000000e+00, float %i.bta
  %i.btf = call float @llvm.fmuladd.f32(float %i.bte, float 2.550000e+02, float 5.000000e-01)
  %i.btg = select i1 %i.btc, float 5.000000e-01, float %i.btf
  %i.bth = fptosi float %i.btg to i32
  %i.bti = shl i32 %i.bth, 24
  %i.btj = or disjoint i32 %i.bti, %i.btb
  br label %.critedge.i674

.critedge.i674:                                   ; preds = %bb.ll, %bb.lk
  %.0103.i = phi i32 [ %i.btj, %bb.ll ], [ %i.bsv, %bb.lk ] ; 2 uses
  %.not106.i = icmp ult i32 %.0103.i, 16777216
  br i1 %.not106.i, label %bb.ln, label %bb.lm

bb.lm:                                            ; preds = %.critedge.i674
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #41
  %i.btk = getelementptr inbounds nuw i8, ptr %i.bqf, i64 40
  %i.btl = getelementptr inbounds nuw i8, ptr %i.bqf, i64 104
  %i.btm = load float, ptr %i.btl, align 8, !tbaa !909
  %i.btn = getelementptr inbounds nuw i8, ptr %i.bqf, i64 48
  %i.bto = load <2 x float>, ptr %i.btk, align 8, !tbaa !8 ; 2 uses
  %i.btp = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.btm, i64 1
  %i.btq = fadd <2 x float> %i.btp, %i.bto
  %i.btr = load <2 x float>, ptr %i.btn, align 8, !tbaa !8
  %i.bts = fadd <2 x float> %i.bto, %i.btr
  store <2 x float> %i.btq, ptr %15, align 8
  %i.btt = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store <2 x float> %i.bts, ptr %i.btt, align 8
  %i.btu = and i32 %i.bqj, 1
  %.not107.i = icmp eq i32 %i.btu, 0
  %i.btv = select i1 %.not107.i, i32 192, i32 240
  %i.btw = getelementptr inbounds nuw i8, ptr %i.bqf, i64 712
  %i.btx = load ptr, ptr %i.btw, align 8, !tbaa !452
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.btx, ptr noundef nonnull align 4 dereferenceable(8) %15, ptr noundef nonnull align 4 dereferenceable(8) %i.btt, i32 noundef %.0103.i, float noundef %i.bqn, i32 noundef %i.btv)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #41
  br label %bb.ln

bb.ln:                                            ; preds = %bb.lm, %.critedge.i674, %bb.lj
  %i.bty = and i32 %i.bqj, 1
  %.not108.i = icmp eq i32 %i.bty, 0              ; 2 uses
  br i1 %.not108.i, label %bb.lo, label %bb.lp

bb.lo:                                            ; preds = %bb.ln
  %i.btz = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.bua = getelementptr inbounds nuw i8, ptr %i.btz, i64 3532
  %i.bub = select i1 %i.bqg, i64 11, i64 10
  %i.buc = getelementptr inbounds nuw [16 x i8], ptr %i.bua, i64 %i.bub
  %i.bud = getelementptr inbounds nuw i8, ptr %i.btz, i64 3220
  %i.bue = load float, ptr %i.bud, align 4, !tbaa !416
  %i.buf = load <4 x float>, ptr %i.buc, align 4, !tbaa !8
  %i.bug = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.bue, i64 3
  %i.buh = fmul <4 x float> %i.buf, %i.bug        ; 3 uses
  %i.bui = fcmp olt <4 x float> %i.buh, zeroinitializer
  %i.buj = fcmp ogt <4 x float> %i.buh, splat (float 1.000000e+00)
  %i.buk = select <4 x i1> %i.buj, <4 x float> splat (float 1.000000e+00), <4 x float> %i.buh
  %i.bul = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.buk, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.bum = select <4 x i1> %i.bui, <4 x float> splat (float 5.000000e-01), <4 x float> %i.bul
  %i.bun = fptosi <4 x float> %i.bum to <4 x i32>
  %i.buo = shl <4 x i32> %i.bun, <i32 0, i32 8, i32 16, i32 24>
  %i.bup = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.buo)
  %i.buq = getelementptr inbounds nuw i8, ptr %i.bqf, i64 712
  %i.bur = load ptr, ptr %i.buq, align 8, !tbaa !452
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.bur, ptr noundef nonnull align 4 dereferenceable(16) %30, ptr noundef nonnull align 4 dereferenceable(8) %i.bkb, i32 noundef %i.bup, float noundef %i.bqn, i32 noundef 48)
  br label %bb.lp

bb.lp:                                            ; preds = %bb.lo, %bb.ln
  %i.bus = and i32 %i.bqj, 1024
  %.not109.i = icmp eq i32 %i.bus, 0
  br i1 %.not109.i, label %bb.lu, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #41
  %i.but = getelementptr inbounds nuw i8, ptr %i.bqf, i64 40
  %i.buu = getelementptr inbounds nuw i8, ptr %i.bqf, i64 104
  %i.buv = load float, ptr %i.buu, align 8, !tbaa !909
  %i.buw = getelementptr inbounds nuw i8, ptr %i.bqf, i64 56
  %i.bux = load float, ptr %i.buw, align 8, !tbaa !910
  %i.buy = getelementptr inbounds nuw i8, ptr %i.bqf, i64 108
  %i.buz = load float, ptr %i.buy, align 4, !tbaa !1241
  %i.bva = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.bvb = getelementptr inbounds nuw i8, ptr %i.bqf, i64 48
  %i.bvc = load <2 x float>, ptr %i.but, align 8, !tbaa !8 ; 4 uses
  %i.bvd = extractelement <2 x float> %i.bvc, i64 1 ; 3 uses
  %i.bve = fadd float %i.bvd, %i.buv              ; 3 uses
  %i.bvf = insertelement <2 x float> %i.bvc, float %i.bve, i64 1
  %i.bvg = insertelement <2 x float> poison, float %i.bux, i64 0
  %i.bvh = insertelement <2 x float> %i.bvg, float %i.buz, i64 1
  %i.bvi = fadd <2 x float> %i.bvf, %i.bvh        ; 2 uses
  %i.bvj = load <2 x float>, ptr %i.bvb, align 8, !tbaa !8
  %i.bvk = fadd <2 x float> %i.bvc, %i.bvj        ; 2 uses
  %.inv12.i.i.i = fcmp oge float %i.bve, %i.bvd
  %i.bvl = select i1 %.inv12.i.i.i, float %i.bve, float %i.bvd
  %.sroa.0.4.vec.insert.i.i.i = insertelement <2 x float> %i.bvc, float %i.bvl, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i, ptr %16, align 16
  %i.bvm = fcmp ogt <2 x float> %i.bvk, %i.bvi
  %i.bvn = select <2 x i1> %i.bvm, <2 x float> %i.bvi, <2 x float> %i.bvk
  store <2 x float> %i.bvn, ptr %i.bva, align 8
  %i.bvo = getelementptr inbounds nuw i8, ptr %i.bqf, i64 712 ; 2 uses
  %i.bvp = load ptr, ptr %i.bvo, align 8, !tbaa !452
  %i.bvq = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.bvr = getelementptr inbounds nuw i8, ptr %i.bvq, i64 3740
  %i.bvs = getelementptr inbounds nuw i8, ptr %i.bvq, i64 3220
  %i.bvt = load float, ptr %i.bvs, align 4, !tbaa !416
  %i.bvu = load <4 x float>, ptr %i.bvr, align 4, !tbaa !8
  %i.bvv = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.bvt, i64 3
  %i.bvw = fmul <4 x float> %i.bvu, %i.bvv        ; 3 uses
  %i.bvx = fcmp olt <4 x float> %i.bvw, zeroinitializer
  %i.bvy = fcmp ogt <4 x float> %i.bvw, splat (float 1.000000e+00)
  %i.bvz = select <4 x i1> %i.bvy, <4 x float> splat (float 1.000000e+00), <4 x float> %i.bvw
  %i.bwa = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bvz, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.bwb = select <4 x i1> %i.bvx, <4 x float> splat (float 5.000000e-01), <4 x float> %i.bwa
  %i.bwc = fptosi <4 x float> %i.bwb to <4 x i32>
  %i.bwd = shl <4 x i32> %i.bwc, <i32 0, i32 8, i32 16, i32 24>
  %i.bwe = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.bwd)
  %i.bwf = select i1 %.not108.i, float 0.000000e+00, float %i.bqn
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.bvp, ptr noundef nonnull align 4 dereferenceable(8) %16, ptr noundef nonnull align 4 dereferenceable(8) %i.bva, i32 noundef %i.bwe, float noundef %i.bwf, i32 noundef 48)
  %i.bwg = getelementptr inbounds nuw i8, ptr %i.bqh, i64 3296
  %i.bwh = load float, ptr %i.bwg, align 4, !tbaa !1272 ; 2 uses
  %i.bwi = fcmp ogt float %i.bwh, 0.000000e+00
  br i1 %i.bwi, label %bb.lr, label %bb.lt

bb.lr:                                            ; preds = %bb.lq
  %i.bwj = getelementptr inbounds nuw i8, ptr %i.bqf, i64 52
  %i.bwk = getelementptr inbounds nuw i8, ptr %i.bqf, i64 44
  %i.bwl = getelementptr inbounds nuw i8, ptr %16, i64 12
  %i.bwm = load float, ptr %i.bwl, align 4, !tbaa !399 ; 2 uses
  %i.bwn = load float, ptr %i.bwk, align 4, !tbaa !929
  %i.bwo = load float, ptr %i.bwj, align 4, !tbaa !724
  %i.bwp = fadd float %i.bwn, %i.bwo
  %i.bwq = fcmp olt float %i.bwm, %i.bwp
  br i1 %i.bwq, label %bb.ls, label %bb.lt

bb.ls:                                            ; preds = %bb.lr
  %i.bwr = load ptr, ptr %i.bvo, align 8, !tbaa !452
  %i.bws = load <4 x float>, ptr %16, align 16
  %i.bwt = shufflevector <4 x float> %i.bws, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.bwu = load float, ptr %i.bva, align 8, !tbaa !395
  %i.bwv = fneg float %i.bqp
  %i.bww = insertelement <2 x float> poison, float %i.bqp, i64 0
  %i.bwx = insertelement <2 x float> %i.bww, float %i.bwv, i64 1
  %i.bwy = insertelement <2 x float> %i.bwt, float %i.bwu, i64 1
  %i.bwz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bwx, <2 x float> splat (float 5.000000e-01), <2 x float> %i.bwy) ; 2 uses
  %i.bxa = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.bxb = getelementptr inbounds nuw i8, ptr %i.bxa, i64 3612
  %i.bxc = getelementptr inbounds nuw i8, ptr %i.bxa, i64 3220
  %i.bxd = load float, ptr %i.bxc, align 4, !tbaa !416
  %i.bxe = load <4 x float>, ptr %i.bxb, align 4, !tbaa !8
  %i.bxf = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.bxd, i64 3
  %i.bxg = fmul <4 x float> %i.bxe, %i.bxf        ; 3 uses
  %i.bxh = fcmp olt <4 x float> %i.bxg, zeroinitializer
  %i.bxi = fcmp ogt <4 x float> %i.bxg, splat (float 1.000000e+00)
  %i.bxj = select <4 x i1> %i.bxi, <4 x float> splat (float 1.000000e+00), <4 x float> %i.bxg
  %i.bxk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bxj, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.bxl = select <4 x i1> %i.bxh, <4 x float> splat (float 5.000000e-01), <4 x float> %i.bxk
  %i.bxm = fptosi <4 x float> %i.bxl to <4 x i32>
  %i.bxn = shl <4 x i32> %i.bxm, <i32 0, i32 8, i32 16, i32 24>
  %i.bxo = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.bxn)
  %i.bxp = extractelement <2 x float> %i.bwz, i64 0
  %i.bxq = extractelement <2 x float> %i.bwz, i64 1
  call void @_ZN10ImDrawList8AddLineHEfffjf(ptr noundef nonnull align 8 dereferenceable(224) %i.bwr, float noundef %i.bxp, float noundef %i.bxq, float noundef %i.bwm, i32 noundef %i.bxo, float noundef %i.bwh)
  br label %bb.lt

bb.lt:                                            ; preds = %bb.ls, %bb.lr, %bb.lq
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #41
  br label %bb.lu

bb.lu:                                            ; preds = %bb.lt, %bb.lp
  %i.bxr = getelementptr inbounds nuw i8, ptr %i.bqf, i64 200
  %i.bxs = load i8, ptr %i.bxr, align 8, !tbaa !1090, !range !64, !noundef !204
  %i.bxt = trunc nuw i8 %i.bxs to i1
  br i1 %i.bxt, label %bb.lv, label %bb.lw

bb.lv:                                            ; preds = %bb.lu
  call void @_ZN5ImGui9ScrollbarE9ImGuiAxis(i32 noundef 0)
  br label %bb.lw

bb.lw:                                            ; preds = %bb.lv, %bb.lu
  %i.bxu = getelementptr inbounds nuw i8, ptr %i.bqf, i64 201
  %i.bxv = load i8, ptr %i.bxu, align 1, !tbaa !1259, !range !64, !noundef !204
  %i.bxw = trunc nuw i8 %i.bxv to i1
  br i1 %i.bxw, label %bb.lx, label %bb.ly

bb.lx:                                            ; preds = %bb.lw
  call void @_ZN5ImGui9ScrollbarE9ImGuiAxis(i32 noundef 1)
  br label %bb.ly

bb.ly:                                            ; preds = %bb.lx, %bb.lw
  %i.bxx = and i32 %i.bqj, 2
  %.not110.i = icmp eq i32 %i.bxx, 0
  %or.cond.i666 = select i1 %.0405, i1 %.not110.i, i1 false
  %i.bxy = icmp ne i32 %.0404, 0
  %or.cond185.i = and i1 %i.bxy, %or.cond.i666
  br i1 %or.cond185.i, label %.lr.ph.i667, label %.loopexit.i

.lr.ph.i667:                                      ; preds = %bb.ly
  %i.bxz = getelementptr inbounds nuw i8, ptr %i.bqf, i64 40 ; 2 uses
  %i.bya = getelementptr inbounds nuw i8, ptr %i.bqf, i64 48 ; 2 uses
  %i.byb = getelementptr inbounds nuw i8, ptr %i.bqf, i64 44
  %i.byc = getelementptr inbounds nuw i8, ptr %i.bqf, i64 52
  %i.byd = call float @llvm.fmuladd.f32(float %i.bqp, float 5.000000e-01, float 5.000000e-01)
  %i.bye = fptosi float %i.byd to i32
  %i.byf = sitofp i32 %i.bye to float             ; 5 uses
  %i.byg = getelementptr inbounds nuw i8, ptr %i.bqf, i64 712 ; 8 uses
  %i.byh = fadd float %i.bqn, %i.byf              ; 3 uses
  %i.byi = getelementptr inbounds nuw i8, ptr %19, i64 4
  %i.byj = load i32, ptr %i.i, align 16, !tbaa !205 ; 2 uses
  %i.byk = icmp ult i32 %i.byj, 16777216
  br i1 %i.byk, label %bb.ma, label %bb.lz

bb.lz:                                            ; preds = %.lr.ph.i667
  %i.byl = load ptr, ptr %i.byg, align 8, !tbaa !452
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #41
  %i.bym = getelementptr inbounds nuw i8, ptr %i.byl, i64 80
  %i.byn = load <2 x float>, ptr %i.bxz, align 8, !tbaa !8 ; 3 uses
  %i.byo = load <2 x float>, ptr %i.bya, align 8, !tbaa !8
  %i.byp = fadd <2 x float> %i.byn, %i.byo
  %i.byq = fsub <2 x float> %i.byp, %i.byn
  %i.byr = fadd <2 x float> %i.byn, %i.byq        ; 3 uses
  %i.bys = insertelement <2 x float> poison, float %i.ane, i64 0
  %i.byt = insertelement <2 x float> %i.bys, float %i.byf, i64 1
  %i.byu = fsub <2 x float> %i.byr, %i.byt
  store <2 x float> %i.byu, ptr %17, align 8
  call void @_ZN8ImVectorI6ImVec2E9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bym, ptr noundef nonnull align 4 dereferenceable(8) %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #41
  %i.byv = load ptr, ptr %i.byg, align 8, !tbaa !452
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #41
  %i.byw = insertelement <2 x float> poison, float %i.byf, i64 0
  %i.byx = insertelement <2 x float> %i.byw, float %i.ane, i64 1
  %i.byy = fsub <2 x float> %i.byr, %i.byx
  store <2 x float> %i.byy, ptr %18, align 8
  %i.byz = getelementptr inbounds nuw i8, ptr %i.byv, i64 80
  call void @_ZN8ImVectorI6ImVec2E9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.byz, ptr noundef nonnull align 4 dereferenceable(8) %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #41
  %i.bza = load ptr, ptr %i.byg, align 8, !tbaa !452
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #41
  %i.bzb = insertelement <2 x float> poison, float %i.byh, i64 0
  %i.bzc = shufflevector <2 x float> %i.bzb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bzd = fsub <2 x float> %i.byr, %i.bzc
  store <2 x float> %i.bzd, ptr %19, align 8, !tbaa !8
  call void @_ZN10ImDrawList13PathArcToFastERK6ImVec2fii(ptr noundef nonnull align 8 dereferenceable(224) %i.bza, ptr noundef nonnull align 4 dereferenceable(8) %19, float noundef %i.bqn, i32 noundef 0, i32 noundef 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #41
  %i.bze = load ptr, ptr %i.byg, align 8, !tbaa !452 ; 3 uses
  %i.bzf = getelementptr inbounds nuw i8, ptr %i.bze, i64 80 ; 2 uses
  %i.bzg = getelementptr inbounds nuw i8, ptr %i.bze, i64 88
  %i.bzh = load ptr, ptr %i.bzg, align 8, !tbaa !488
  %i.bzi = load i32, ptr %i.bzf, align 8, !tbaa !489
  call void @_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij(ptr noundef nonnull align 8 dereferenceable(224) %i.bze, ptr noundef %i.bzh, i32 noundef %i.bzi, i32 noundef %i.byj)
  store i32 0, ptr %i.bzf, align 8, !tbaa !489
  br label %bb.ma

bb.ma:                                            ; preds = %bb.lz, %.lr.ph.i667
  %exitcond.not.i671.peel = icmp eq i32 %.0404, 1
  br i1 %exitcond.not.i671.peel, label %.loopexit.i, label %.peel.next

.peel.next:                                       ; preds = %bb.ma
  %i.bzj = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.bzk = load i32, ptr %i.bzj, align 4, !tbaa !205 ; 2 uses
  %i.bzl = icmp ult i32 %i.bzk, 16777216
  br i1 %i.bzl, label %.loopexit.i, label %bb.mb

bb.mb:                                            ; preds = %.peel.next
  %i.bzm = load float, ptr %i.bxz, align 8, !tbaa !227 ; 3 uses
  %i.bzn = load float, ptr %i.bya, align 8, !tbaa !227
end_hunk_4
begin_hunk_5_@_ZN5ImGui5BeginEPKcPbi:bb.a
  %i.cpr = getelementptr inbounds nuw i8, ptr %.pre1048, i64 379
  store i8 0, ptr %i.cpr, align 1, !tbaa !1288
  %i.cps = getelementptr inbounds nuw i8, ptr %.pre1048, i64 388
  %i.cpt = load float, ptr %i.abj, align 4, !tbaa !1236
  call void @_ZN16ImGuiMenuColumns6UpdateEfb(ptr noundef nonnull align 4 dereferenceable(26) %i.cps, float noundef %i.cpt, i1 noundef zeroext %.0407.in962)
  %i.cpu = load ptr, ptr %i.g, align 8, !tbaa !705 ; 4 uses
  %i.cpv = getelementptr inbounds nuw i8, ptr %i.cpu, i64 416
  store i32 0, ptr %i.cpv, align 8, !tbaa !461
  %i.cpw = getelementptr inbounds nuw i8, ptr %i.cpu, i64 424
  store i32 0, ptr %i.cpw, align 8, !tbaa !1289
  %i.cpx = getelementptr inbounds nuw i8, ptr %i.cpu, i64 420
  store i32 0, ptr %i.cpx, align 4, !tbaa !1290
  %i.cpy = getelementptr inbounds nuw i8, ptr %i.cpu, i64 432
  call void @_ZN8ImVectorIP11ImGuiWindowE6resizeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.cpy, i32 noundef 0)
  %i.cpz = load ptr, ptr %i.g, align 8, !tbaa !705 ; 10 uses
  %i.cqa = getelementptr inbounds nuw i8, ptr %i.cpz, i64 664
  %i.cqb = getelementptr inbounds nuw i8, ptr %i.cpz, i64 448
  store ptr %i.cqa, ptr %i.cqb, align 8, !tbaa !1291
  %i.cqc = getelementptr inbounds nuw i8, ptr %i.cpz, i64 456
  store ptr null, ptr %i.cqc, align 8, !tbaa !333
  %i.cqd = getelementptr inbounds nuw i8, ptr %i.cpz, i64 468
  store i32 1, ptr %i.cqd, align 4, !tbaa !1292
  %.not499 = icmp eq ptr %i.kb, null
  br i1 %.not499, label %bb.nf, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  %i.cqe = getelementptr inbounds nuw i8, ptr %i.kb, i64 468
  %i.cqf = load i32, ptr %i.cqe, align 4, !tbaa !1292
  br label %bb.nf

bb.nf:                                            ; preds = %bb.nd, %bb.ne
  %i.cqg = phi i32 [ %i.cqf, %bb.ne ], [ 1, %bb.nd ]
  %i.cqh = getelementptr inbounds nuw i8, ptr %i.cpz, i64 472
  store i32 %i.cqg, ptr %i.cqh, align 8, !tbaa !1293
  %i.cqi = getelementptr inbounds nuw i8, ptr %i.cpz, i64 48
  %i.cqj = load float, ptr %i.cqi, align 8, !tbaa !723 ; 2 uses
  %i.cqk = fcmp ogt float %i.cqj, 0.000000e+00    ; 2 uses
  br i1 %.not462, label %.split987, label %bb.ng

bb.ng:                                            ; preds = %bb.nf
  br i1 %i.cqk, label %bb.nh, label %.critedge536

.split987:                                        ; preds = %bb.nf
  %i.cql = select i1 %i.cqk, i1 %.not476, i1 false
  br i1 %i.cql, label %bb.ni, label %.critedge536

bb.nh:                                            ; preds = %bb.ng
  %i.cqm = getelementptr inbounds nuw i8, ptr %i.cpz, i64 24
  %i.cqn = load i32, ptr %i.cqm, align 8, !tbaa !1188
  %i.cqo = and i32 %i.cqn, 80
  %.not501 = icmp eq i32 %i.cqo, 0
  br i1 %.not501, label %bb.ni, label %.critedge536

bb.ni:                                            ; preds = %.split987, %bb.nh
  %i.cqp = fmul float %i.cqj, 6.500000e-01
  br label %bb.nj

.critedge536:                                     ; preds = %.split987, %bb.ng, %bb.nh
  %i.cqq = load float, ptr %.phi.trans.insert1040, align 8, !tbaa !454
  %i.cqr = fmul float %i.cqq, 1.600000e+01
  br label %bb.nj

bb.nj:                                            ; preds = %.critedge536, %bb.ni
  %.sink1226 = phi float [ %i.cqr, %.critedge536 ], [ %i.cqp, %bb.ni ]
  %i.cqs = fptosi float %.sink1226 to i32
  %i.cqt = sitofp i32 %i.cqs to float             ; 2 uses
  %i.cqu = getelementptr inbounds nuw i8, ptr %i.cpz, i64 492
  store float %i.cqt, ptr %i.cqu, align 4, !tbaa !1294
  %i.cqv = getelementptr inbounds nuw i8, ptr %i.cpz, i64 488
  store float %i.cqt, ptr %i.cqv, align 8, !tbaa !1295
  %i.cqw = getelementptr inbounds nuw i8, ptr %i.cpz, i64 504
  call void @_ZN8ImVectorIfE6resizeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.cqw, i32 noundef 0)
  %i.cqx = load ptr, ptr %i.g, align 8, !tbaa !705 ; 2 uses
  %i.cqy = getelementptr inbounds nuw i8, ptr %i.cqx, i64 496
  store float -1.000000e+00, ptr %i.cqy, align 8, !tbaa !1296
  %i.cqz = getelementptr inbounds nuw i8, ptr %i.cqx, i64 520
  call void @_ZN8ImVectorIfE6resizeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.cqz, i32 noundef 0)
  %i.cra = and i32 %.1403, 134217728
  %.not502 = icmp eq i32 %i.cra, 0
  %.pre1054 = load ptr, ptr %i.g, align 8, !tbaa !705 ; 4 uses
  br i1 %.not502, label %bb.nl, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  %i.crb = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.crc = getelementptr inbounds nuw i8, ptr %i.crb, i64 4492
  %i.crd = load <4 x float>, ptr %i.crc, align 4, !tbaa !8 ; 3 uses
  %i.cre = fcmp olt <4 x float> %i.crd, zeroinitializer
  %i.crf = fcmp ogt <4 x float> %i.crd, splat (float 1.000000e+00)
  %i.crg = select <4 x i1> %i.crf, <4 x float> splat (float 1.000000e+00), <4 x float> %i.crd
  %i.crh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.crg, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.cri = select <4 x i1> %i.cre, <4 x float> splat (float 5.000000e-01), <4 x float> %i.crh
  %i.crj = fptosi <4 x float> %i.cri to <4 x i32>
  %i.crk = shl <4 x i32> %i.crj, <i32 0, i32 8, i32 16, i32 24>
  %i.crl = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.crk)
  %i.crm = getelementptr inbounds nuw i8, ptr %.pre1054, i64 476
  store i32 %i.crl, ptr %i.crm, align 4, !tbaa !1297
  br label %bb.nl

bb.nl:                                            ; preds = %bb.nk, %bb.nj
  %i.crn = getelementptr inbounds nuw i8, ptr %.pre1054, i64 232 ; 2 uses
  %i.cro = load i8, ptr %i.crn, align 8, !tbaa !720 ; 2 uses
  %i.crp = icmp sgt i8 %i.cro, 0
  br i1 %i.crp, label %bb.nm, label %bb.nn

bb.nm:                                            ; preds = %bb.nl
  %i.crq = add nsw i8 %i.cro, -1
  store i8 %i.crq, ptr %i.crn, align 8, !tbaa !720
  br label %bb.nn

bb.nn:                                            ; preds = %bb.nm, %bb.nl
  %i.crr = getelementptr inbounds nuw i8, ptr %.pre1054, i64 233 ; 2 uses
  %i.crs = load i8, ptr %i.crr, align 1, !tbaa !719 ; 2 uses
  %i.crt = icmp sgt i8 %i.crs, 0
  br i1 %i.crt, label %bb.no, label %bb.np

bb.no:                                            ; preds = %bb.nn
  %i.cru = add nsw i8 %i.crs, -1
  store i8 %i.cru, ptr %i.crr, align 1, !tbaa !719
  br label %bb.np

bb.np:                                            ; preds = %bb.no, %bb.nn
  br i1 %spec.select993, label %bb.nq, label %.critedge538

bb.nq:                                            ; preds = %bb.np
  call void @_ZN5ImGui11FocusWindowEP11ImGuiWindowi(ptr noundef nonnull %.pre1054, i32 noundef 2)
  %i.crv = load ptr, ptr %i.g, align 8, !tbaa !705 ; 2 uses
  %i.crw = getelementptr inbounds nuw i8, ptr %i.j, i64 8224
  %i.crx = load ptr, ptr %i.crw, align 8, !tbaa !389
  %i.cry = icmp eq ptr %i.crv, %i.crx
  br i1 %i.cry, label %bb.nr, label %.critedge538

bb.nr:                                            ; preds = %bb.nq
  call void @_ZN5ImGui13NavInitWindowEP11ImGuiWindowb(ptr noundef %i.crv, i1 noundef zeroext false)
  br label %.critedge538

.critedge538:                                     ; preds = %bb.np, %bb.nr, %bb.nq
  %i.crz = getelementptr inbounds nuw i8, ptr %i.j, i64 131
  %i.csa = load i8, ptr %i.crz, align 1, !tbaa !1298, !range !64, !noundef !204
  %i.csb = trunc nuw i8 %i.csa to i1
  br i1 %i.csb, label %bb.ns, label %_ZN5ImGui14LogToClipboardEi.exit

bb.ns:                                            ; preds = %.critedge538
  %i.csc = getelementptr inbounds nuw i8, ptr %i.j, i64 8224
  %i.csd = load ptr, ptr %i.csc, align 8, !tbaa !389 ; 2 uses
  %.not503 = icmp eq ptr %i.csd, null
  br i1 %.not503, label %_ZN5ImGui14LogToClipboardEi.exit, label %bb.nt

bb.nt:                                            ; preds = %bb.ns
  %i.cse = getelementptr inbounds nuw i8, ptr %i.csd, i64 960
  %i.csf = load ptr, ptr %i.cse, align 8, !tbaa !847
  %i.csg = load ptr, ptr %i.g, align 8, !tbaa !705
  %i.csh = icmp eq ptr %i.csf, %i.csg
  br i1 %i.csh, label %bb.nu, label %_ZN5ImGui14LogToClipboardEi.exit

bb.nu:                                            ; preds = %bb.nt
  %i.csi = getelementptr inbounds nuw i8, ptr %i.j, i64 5428
  %i.csj = load i32, ptr %i.csi, align 4, !tbaa !819
  %i.csk = icmp eq i32 %i.csj, 0
  br i1 %i.csk, label %bb.nv, label %_ZN5ImGui14LogToClipboardEi.exit

bb.nv:                                            ; preds = %bb.nu
  %i.csl = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 4644, i32 noundef 0, i32 noundef 0)
  br i1 %i.csl, label %bb.nw, label %_ZN5ImGui14LogToClipboardEi.exit

bb.nw:                                            ; preds = %bb.nv
  %i.csm = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 10 uses
  %i.csn = getelementptr inbounds nuw i8, ptr %i.csm, i64 10264 ; 2 uses
  %i.cso = load i8, ptr %i.csn, align 8, !tbaa !387, !range !64, !noundef !204
  %i.csp = trunc nuw i8 %i.cso to i1
  br i1 %i.csp, label %_ZN5ImGui14LogToClipboardEi.exit, label %bb.nx

bb.nx:                                            ; preds = %bb.nw
  %i.csq = getelementptr inbounds nuw i8, ptr %i.csm, i64 5312
  %i.csr = load ptr, ptr %i.csq, align 8, !tbaa !298 ; 2 uses
  %i.css = getelementptr inbounds nuw i8, ptr %i.csm, i64 5426
  store i8 1, ptr %i.css, align 2, !tbaa !868
  store i8 1, ptr %i.csn, align 8, !tbaa !387
  %i.cst = getelementptr inbounds nuw i8, ptr %i.csm, i64 10268
  store i32 8, ptr %i.cst, align 4, !tbaa !1299
  %i.csu = getelementptr inbounds nuw i8, ptr %i.csm, i64 10272
  store ptr %i.csr, ptr %i.csu, align 8, !tbaa !1300
  %i.csv = getelementptr inbounds nuw i8, ptr %i.csm, i64 10304
  %i.csw = getelementptr inbounds nuw i8, ptr %i.csr, i64 416
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.csv, i8 0, i64 16, i1 false)
  %i.csx = load i32, ptr %i.csw, align 8, !tbaa !461
  %i.csy = getelementptr inbounds nuw i8, ptr %i.csm, i64 10324
  store i32 %i.csx, ptr %i.csy, align 4, !tbaa !460
  %i.csz = getelementptr inbounds nuw i8, ptr %i.csm, i64 10328
  store i32 0, ptr %i.csz, align 8, !tbaa !679
  %i.cta = getelementptr inbounds nuw i8, ptr %i.csm, i64 10320
  store float f0x7F7FFFFF, ptr %i.cta, align 8, !tbaa !457
  %i.ctb = getelementptr inbounds nuw i8, ptr %i.csm, i64 10265
  store i8 1, ptr %i.ctb, align 1, !tbaa !459
  br label %_ZN5ImGui14LogToClipboardEi.exit

_ZN5ImGui14LogToClipboardEi.exit:                 ; preds = %bb.nx, %bb.nw, %bb.ns, %bb.nt, %bb.nu, %bb.nv, %.critedge538
  %.pre1056 = load ptr, ptr %i.g, align 8, !tbaa !705 ; 12 uses
  br i1 %.not473, label %bb.ny, label %bb.pl

bb.ny:                                            ; preds = %_ZN5ImGui14LogToClipboardEi.exit
  %i.ctc = load float, ptr %30, align 8, !tbaa !394
  %i.ctd = getelementptr inbounds nuw i8, ptr %.pre1056, i64 100
  %i.cte = load float, ptr %i.ctd, align 4, !tbaa !1233 ; 2 uses
  %i.ctf = fadd float %i.ctc, %i.cte              ; 3 uses
  %i.ctg = getelementptr inbounds nuw i8, ptr %30, i64 4
  %i.cth = load float, ptr %i.ctg, align 4, !tbaa !398 ; 6 uses
  %i.cti = load float, ptr %i.bkb, align 8, !tbaa !395
  %i.ctj = fsub float %i.cti, %i.cte              ; 6 uses
  %i.ctk = getelementptr inbounds nuw i8, ptr %30, i64 12
  %i.ctl = load float, ptr %i.ctk, align 4, !tbaa !399 ; 3 uses
  %i.ctm = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 15 uses
  %i.ctn = getelementptr inbounds nuw i8, ptr %.pre1056, i64 20
  %i.cto = load i32, ptr %i.ctn, align 4, !tbaa !722 ; 2 uses
  %.not.i677 = icmp eq ptr %1, null               ; 2 uses
  %i.ctp = and i32 %i.cto, 32
  %.not96.i = icmp eq i32 %i.ctp, 0
  br i1 %.not96.i, label %bb.nz, label %bb.oa

bb.nz:                                            ; preds = %bb.ny
  %i.ctq = getelementptr inbounds nuw i8, ptr %i.ctm, i64 3264
  %i.ctr = load i32, ptr %i.ctq, align 4, !tbaa !16
  %i.cts = icmp ne i32 %i.ctr, -1
  br label %bb.oa

bb.oa:                                            ; preds = %bb.nz, %bb.ny
  %i.ctt = phi i1 [ false, %bb.ny ], [ %i.cts, %bb.nz ]
  %i.ctu = getelementptr inbounds nuw i8, ptr %i.ctm, i64 7784 ; 5 uses
  %i.ctv = load i32, ptr %i.ctu, align 8, !tbaa !1036 ; 2 uses
  %i.ctw = or i32 %i.ctv, 4
  store i32 %i.ctw, ptr %i.ctu, align 8, !tbaa !1036
  %i.ctx = getelementptr inbounds nuw i8, ptr %.pre1056, i64 368 ; 2 uses
  store i32 1, ptr %i.ctx, align 8, !tbaa !1205
  %i.cty = getelementptr inbounds nuw i8, ptr %i.ctm, i64 3284 ; 2 uses
  %i.ctz = load float, ptr %i.cty, align 4, !tbaa !1301 ; 8 uses
  %i.cua = getelementptr inbounds nuw i8, ptr %i.ctm, i64 4568
  %i.cub = load float, ptr %i.cua, align 8, !tbaa !454 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  store <2 x float> zeroinitializer, ptr %3, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.cuc = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !8
  br i1 %.not.i677, label %bb.oc, label %bb.ob

bb.ob:                                            ; preds = %bb.oa
  %i.cud = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cue = fsub float %i.ctj, %i.ctz
  %i.cuf = fsub float %i.cue, %i.cub
  %i.cug = getelementptr inbounds nuw i8, ptr %i.ctm, i64 3288
  %i.cuh = load float, ptr %i.cug, align 8, !tbaa !1302
  %i.cui = fadd float %i.cth, %i.cuh
  store float %i.cuf, ptr %3, align 8
  store float %i.cui, ptr %i.cud, align 4
  %i.cuj = getelementptr inbounds nuw i8, ptr %i.ctm, i64 3308
  %i.cuk = load float, ptr %i.cuj, align 4, !tbaa !1303
  %i.cul = fadd float %i.cub, %i.cuk
  %i.cum = fadd float %i.ctz, %i.cul
  br label %bb.oc

bb.oc:                                            ; preds = %bb.ob, %bb.oa
  %.0.i678 = phi float [ %i.cum, %bb.ob ], [ %i.ctz, %bb.oa ] ; 5 uses
  br i1 %i.ctt, label %bb.od, label %bb.on

bb.od:                                            ; preds = %bb.oc
  %i.cun = getelementptr inbounds nuw i8, ptr %i.ctm, i64 3264
  %i.cuo = load i32, ptr %i.cun, align 8, !tbaa !16
  switch i32 %i.cuo, label %bb.of [
    i32 1, label %.thread.i
    i32 0, label %bb.oe
  ]

.thread.i:                                        ; preds = %bb.od
  %i.cup = fsub float %i.ctj, %.0.i678
  %i.cuq = fsub float %i.cup, %i.cub
  %i.cur = getelementptr inbounds nuw i8, ptr %i.ctm, i64 3288
  %i.cus = load float, ptr %i.cur, align 8, !tbaa !1302
  %i.cut = fadd float %i.cth, %i.cus
  store float %i.cuq, ptr %4, align 8
  store float %i.cut, ptr %i.cuc, align 4
  %i.cuu = getelementptr inbounds nuw i8, ptr %i.ctm, i64 3308
  %i.cuv = load float, ptr %i.cuu, align 4, !tbaa !1303
  %i.cuw = fadd float %i.cub, %i.cuv
  %i.cux = fadd float %.0.i678, %i.cuw
  br label %bb.of

bb.oe:                                            ; preds = %bb.od
  %i.cuy = fadd float %i.ctf, %i.ctz
  %i.cuz = getelementptr inbounds nuw i8, ptr %i.ctm, i64 3288
  %i.cva = load float, ptr %i.cuz, align 8, !tbaa !1302
  %i.cvb = fadd float %i.cth, %i.cva
  store float %i.cuy, ptr %4, align 8
  store float %i.cvb, ptr %i.cuc, align 4
  %i.cvc = getelementptr inbounds nuw i8, ptr %i.ctm, i64 3308
  %i.cvd = load float, ptr %i.cvc, align 4, !tbaa !1303
  %i.cve = fadd float %i.cub, %i.cvd
  %i.cvf = fadd float %i.ctz, %i.cve
  br label %bb.of

bb.of:                                            ; preds = %bb.oe, %.thread.i, %bb.od
  %.1.ph162.i = phi float [ %.0.i678, %bb.od ], [ %.0.i678, %bb.oe ], [ %i.cux, %.thread.i ] ; 2 uses
  %.091.ph.i = phi float [ %i.ctz, %bb.od ], [ %i.cvf, %bb.oe ], [ %i.ctz, %.thread.i ] ; 2 uses
  %i.cvg = getelementptr inbounds nuw i8, ptr %.pre1056, i64 264
  %i.cvh = getelementptr inbounds nuw i8, ptr %.pre1056, i64 272
  %i.cvi = load ptr, ptr %i.cvh, align 8, !tbaa !604
  %i.cvj = load i32, ptr %i.cvg, align 8, !tbaa !606
  %i.cvk = sext i32 %i.cvj to i64
  %i.cvl = getelementptr [4 x i8], ptr %i.cvi, i64 %i.cvk
  %i.cvm = getelementptr i8, ptr %i.cvl, i64 -4
  %i.cvn = load i32, ptr %i.cvm, align 4, !tbaa !205
  %i.cvo = xor i32 %i.cvn, -1                     ; 2 uses
  br label %.lr.ph.i.i.i697

.lr.ph.i.i.i697:                                  ; preds = %bb.ok, %bb.of
  %i.cvp = phi i8 [ %i.cwg, %bb.ok ], [ 35, %bb.of ] ; 2 uses
  %.252.i.i.i = phi ptr [ %.3.i.i.i, %bb.ok ], [ @.str.604, %bb.of ] ; 3 uses
  %.23351.i.i.i = phi i32 [ %.334.i.i.i, %bb.ok ], [ %i.cvo, %bb.of ] ; 2 uses
  %i.cvq = getelementptr inbounds nuw i8, ptr %.252.i.i.i, i64 1 ; 2 uses
  %i.cvr = zext i8 %i.cvp to i32
  %i.cvs = icmp eq i8 %i.cvp, 35
  br i1 %i.cvs, label %bb.og, label %bb.oj

bb.og:                                            ; preds = %.lr.ph.i.i.i697
  %i.cvt = load i8, ptr %i.cvq, align 1, !tbaa !187
  %i.cvu = icmp eq i8 %i.cvt, 35
  br i1 %i.cvu, label %bb.oh, label %bb.oj

bb.oh:                                            ; preds = %bb.og
  %i.cvv = getelementptr inbounds nuw i8, ptr %.252.i.i.i, i64 2
  %i.cvw = load i8, ptr %i.cvv, align 1, !tbaa !187
  %i.cvx = icmp eq i8 %i.cvw, 35
  br i1 %i.cvx, label %bb.oi, label %bb.oj

bb.oi:                                            ; preds = %bb.oh
  %i.cvy = getelementptr inbounds nuw i8, ptr %.252.i.i.i, i64 3
  br label %bb.ok, !llvm.loop !248

bb.oj:                                            ; preds = %bb.oh, %bb.og, %.lr.ph.i.i.i697
  %i.cvz = lshr i32 %.23351.i.i.i, 8
  %i.cwa = and i32 %.23351.i.i.i, 255
  %i.cwb = xor i32 %i.cwa, %i.cvr
  %i.cwc = zext nneg i32 %i.cwb to i64
  %i.cwd = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.cwc
  %i.cwe = load i32, ptr %i.cwd, align 4, !tbaa !205
  %i.cwf = xor i32 %i.cwe, %i.cvz
  br label %bb.ok

bb.ok:                                            ; preds = %bb.oj, %bb.oi
  %.334.i.i.i = phi i32 [ %i.cvo, %bb.oi ], [ %i.cwf, %bb.oj ] ; 2 uses
  %.3.i.i.i = phi ptr [ %i.cvy, %bb.oi ], [ %i.cvq, %bb.oj ] ; 2 uses
  %i.cwg = load i8, ptr %.3.i.i.i, align 1, !tbaa !187 ; 2 uses
  %.not40.i.i.i = icmp eq i8 %i.cwg, 0
  br i1 %.not40.i.i.i, label %_Z9ImHashStrPKcmj.exit.i.i, label %.lr.ph.i.i.i697

_Z9ImHashStrPKcmj.exit.i.i:                       ; preds = %bb.ok
  %i.cwh = xor i32 %.334.i.i.i, -1                ; 3 uses
  %i.cwi = load ptr, ptr %.pre1056, align 8, !tbaa !786
  %i.cwj = getelementptr inbounds nuw i8, ptr %i.cwi, i64 5400
  %i.cwk = load i32, ptr %i.cwj, align 8, !tbaa !789
  %i.cwl = icmp eq i32 %i.cwk, %i.cwh
  br i1 %i.cwl, label %bb.ol, label %_ZN11ImGuiWindow5GetIDEPKcS1_.exit.i

bb.ol:                                            ; preds = %_Z9ImHashStrPKcmj.exit.i.i
  call void @_ZN5ImGui15DebugHookIdInfoEjiPKvS1_(i32 noundef %i.cwh, i32 noundef 11, ptr noundef nonnull @.str.604, ptr noundef null)
  br label %_ZN11ImGuiWindow5GetIDEPKcS1_.exit.i

_ZN11ImGuiWindow5GetIDEPKcS1_.exit.i:             ; preds = %bb.ol, %_Z9ImHashStrPKcmj.exit.i.i
  %i.cwm = call noundef zeroext i1 @_ZN5ImGui14CollapseButtonEjRK6ImVec2(i32 noundef %i.cwh, ptr noundef nonnull align 4 dereferenceable(8) %4)
  br i1 %i.cwm, label %bb.om, label %bb.on

bb.om:                                            ; preds = %_ZN11ImGuiWindow5GetIDEPKcS1_.exit.i
  %i.cwn = getelementptr inbounds nuw i8, ptr %.pre1056, i64 208
  store i8 1, ptr %i.cwn, align 8, !tbaa !1215
  br label %bb.on

bb.on:                                            ; preds = %bb.om, %_ZN11ImGuiWindow5GetIDEPKcS1_.exit.i, %bb.oc
  %.091146.i = phi float [ %.091.ph.i, %_ZN11ImGuiWindow5GetIDEPKcS1_.exit.i ], [ %.091.ph.i, %bb.om ], [ %i.ctz, %bb.oc ] ; 3 uses
  %.1138144.i = phi float [ %.1.ph162.i, %_ZN11ImGuiWindow5GetIDEPKcS1_.exit.i ], [ %.1.ph162.i, %bb.om ], [ %.0.i678, %bb.oc ] ; 3 uses
  br i1 %.not.i677, label %bb.ow, label %bb.oo

bb.oo:                                            ; preds = %bb.on
  %i.cwo = load i32, ptr %i.ctu, align 8, !tbaa !1036
  %i.cwp = or i32 %i.cwo, 131072
  store i32 %i.cwp, ptr %i.ctu, align 8, !tbaa !1036
  %i.cwq = getelementptr inbounds nuw i8, ptr %.pre1056, i64 264
  %i.cwr = getelementptr inbounds nuw i8, ptr %.pre1056, i64 272
  %i.cws = load ptr, ptr %i.cwr, align 8, !tbaa !604
  %i.cwt = load i32, ptr %i.cwq, align 8, !tbaa !606
  %i.cwu = sext i32 %i.cwt to i64
  %i.cwv = getelementptr [4 x i8], ptr %i.cws, i64 %i.cwu
  %i.cww = getelementptr i8, ptr %i.cwv, i64 -4
  %i.cwx = load i32, ptr %i.cww, align 4, !tbaa !205
  %i.cwy = xor i32 %i.cwx, -1                     ; 2 uses
  br label %.lr.ph.i.i100.i

.lr.ph.i.i100.i:                                  ; preds = %bb.ot, %bb.oo
  %i.cwz = phi i8 [ %i.cxq, %bb.ot ], [ 35, %bb.oo ] ; 2 uses
  %.252.i.i101.i = phi ptr [ %.3.i.i104.i, %bb.ot ], [ @.str.605, %bb.oo ] ; 3 uses
  %.23351.i.i102.i = phi i32 [ %.334.i.i103.i, %bb.ot ], [ %i.cwy, %bb.oo ] ; 2 uses
  %i.cxa = getelementptr inbounds nuw i8, ptr %.252.i.i101.i, i64 1 ; 2 uses
  %i.cxb = zext i8 %i.cwz to i32
  %i.cxc = icmp eq i8 %i.cwz, 35
  br i1 %i.cxc, label %bb.op, label %bb.os

bb.op:                                            ; preds = %.lr.ph.i.i100.i
  %i.cxd = load i8, ptr %i.cxa, align 1, !tbaa !187
  %i.cxe = icmp eq i8 %i.cxd, 35
  br i1 %i.cxe, label %bb.oq, label %bb.os

bb.oq:                                            ; preds = %bb.op
  %i.cxf = getelementptr inbounds nuw i8, ptr %.252.i.i101.i, i64 2
end_hunk_5
begin_hunk_6_@_ZN5ImGui5BeginEPKcPbi:bb.a
bb.pe:                                            ; preds = %bb.pd
  %i.czl = fadd float %i.czi, -5.000000e-01
  %i.czm = call float @llvm.fabs.f32(float %i.czl)
  %i.czn = fneg float %i.czm
  %i.czo = call float @llvm.fmuladd.f32(float %i.czn, float 2.000000e+00, float 1.000000e+00) ; 3 uses
  %i.czp = fcmp olt float %i.czo, 0.000000e+00
  %i.czq = fcmp ogt float %i.czo, 1.000000e+00
  %i.czr = select i1 %i.czq, float 1.000000e+00, float %i.czo
  %i.czs = select i1 %i.czp, float 0.000000e+00, float %i.czr
  %i.czt = fcmp oge float %.192.i, %.2.i681
  %i.czu = select i1 %i.czt, float %.192.i, float %.2.i681 ; 2 uses
  %i.czv = fsub float %i.ctj, %i.ctf
  %i.czw = fsub float %i.czv, %.192.i
  %i.czx = fsub float %i.czw, %.2.i681
  %i.czy = extractelement <2 x float> %i.cyx, i64 0
  %i.czz = fsub float %i.czx, %i.czy              ; 2 uses
  %i.daa = fcmp olt float %i.czu, %i.czz
  %i.dab = select i1 %i.daa, float %i.czu, float %i.czz
  %i.dac = fmul float %i.dab, %i.czs              ; 4 uses
  %i.dad = fcmp oge float %.192.i, %i.dac
  %i.dae = select i1 %i.dad, float %.192.i, float %i.dac
  %i.daf = fcmp oge float %.2.i681, %i.dac
  %i.dag = select i1 %i.daf, float %.2.i681, float %i.dac
  br label %._crit_edge.i684

._crit_edge.i684:                                 ; preds = %bb.pd, %bb.pe
  %.293.i = phi float [ %i.dae, %bb.pe ], [ %.192.i, %bb.pd ]
  %.3.i686 = phi float [ %i.dag, %bb.pe ], [ %.2.i681, %bb.pd ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.dah = fadd float %i.ctf, %.293.i             ; 7 uses
  %i.dai = fsub float %i.ctj, %.3.i686            ; 5 uses
  store float %i.dah, ptr %6, align 4, !tbaa !227
  %i.daj = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.cth, ptr %i.daj, align 4, !tbaa !228
  %i.dak = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store float %i.dai, ptr %i.dak, align 4, !tbaa !227
  %i.dal = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float %i.ctl, ptr %i.dal, align 4, !tbaa !228
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.dam = getelementptr inbounds nuw i8, ptr %i.ctm, i64 3308
  %i.dan = load float, ptr %i.dam, align 4, !tbaa !1304
  %i.dao = fadd float %i.dai, %i.dan              ; 2 uses
  %i.dap = fcmp olt float %i.dao, %i.ctj
  %i.daq = select i1 %i.dap, float %i.dao, float %i.ctj ; 3 uses
  store float %i.dah, ptr %7, align 4, !tbaa !227
  %i.dar = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float %i.cth, ptr %i.dar, align 4, !tbaa !228
  %i.das = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store float %i.daq, ptr %i.das, align 4, !tbaa !227
  %i.dat = getelementptr inbounds nuw i8, ptr %7, i64 12
  store float %i.ctl, ptr %i.dat, align 4, !tbaa !228
  br i1 %.not97.i, label %bb.ph, label %bb.pf

bb.pf:                                            ; preds = %._crit_edge.i684
  %i.dau = fsub float %i.dai, %i.dah
  %i.dav = extractelement <2 x float> %i.cyx, i64 0 ; 2 uses
  %i.daw = fsub float %i.dau, %i.dav
  %i.dax = call float @llvm.fmuladd.f32(float %i.daw, float %i.czi, float %i.dah)
  %i.day = fadd float %i.dav, %i.dax              ; 3 uses
  %i.daz = fcmp olt float %i.day, %i.dah
  %i.dba = fcmp ogt float %i.day, %i.dai
  %i.dbb = select i1 %i.dba, float %i.dai, float %i.day
  %i.dbc = select i1 %i.daz, float %i.dah, float %i.dbb ; 3 uses
  %i.dbd = fcmp ogt float %i.dbc, %i.dah
  br i1 %i.dbd, label %bb.pg, label %bb.ph

bb.pg:                                            ; preds = %bb.pf
  %.sroa.0.0.vec.insert.i687 = insertelement <2 x float> poison, float %i.dbc, i64 0
  %i.dbe = fadd float %i.cth, %i.ctl
  %i.dbf = fmul float %i.dbe, 5.000000e-01
  %.sroa.0.4.vec.insert.i688 = insertelement <2 x float> %.sroa.0.0.vec.insert.i687, float %i.dbf, i64 1
  %i.dbg = getelementptr inbounds nuw i8, ptr %.pre1056, i64 712
  %i.dbh = load ptr, ptr %i.dbg, align 8, !tbaa !452
  %i.dbi = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.dbj = getelementptr inbounds nuw i8, ptr %i.dbi, i64 4428
  %i.dbk = getelementptr inbounds nuw i8, ptr %i.dbi, i64 3220
  %i.dbl = load float, ptr %i.dbk, align 4, !tbaa !416
  %i.dbm = load <4 x float>, ptr %i.dbj, align 4, !tbaa !8
  %i.dbn = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.dbl, i64 3
  %i.dbo = fmul <4 x float> %i.dbm, %i.dbn        ; 3 uses
  %i.dbp = fcmp olt <4 x float> %i.dbo, zeroinitializer
  %i.dbq = fcmp ogt <4 x float> %i.dbo, splat (float 1.000000e+00)
  %i.dbr = select <4 x i1> %i.dbq, <4 x float> splat (float 1.000000e+00), <4 x float> %i.dbo
  %i.dbs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dbr, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.dbt = select <4 x i1> %i.dbp, <4 x float> splat (float 5.000000e-01), <4 x float> %i.dbs
  %i.dbu = fptosi <4 x float> %i.dbt to <4 x i32>
  %i.dbv = shl <4 x i32> %i.dbu, <i32 0, i32 8, i32 16, i32 24>
  %i.dbw = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.dbv)
  call void @_ZN5ImGui12RenderBulletEP10ImDrawList6ImVec2j(ptr noundef %i.dbh, <2 x float> %.sroa.0.4.vec.insert.i688, i32 noundef %i.dbw)
  %i.dbx = fmul float %i.cxy, 5.000000e-01
  %i.dby = fptosi float %i.dbx to i32
  %i.dbz = sitofp i32 %i.dby to float
  %i.dca = fsub float %i.dbc, %i.dbz              ; 2 uses
  %i.dcb = fcmp olt float %i.daq, %i.dca
  %i.dcc = select i1 %i.dcb, float %i.daq, float %i.dca
  store float %i.dcc, ptr %i.das, align 4, !tbaa !395
  br label %bb.ph

bb.ph:                                            ; preds = %bb.pg, %bb.pf, %._crit_edge.i684
  br i1 %.not148.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i110.i, label %.lr.ph.preheader.i.i111.i

.lr.ph.preheader.i.i111.i:                        ; preds = %bb.ph
  %i.dcd = ptrtoaddr ptr %0 to i64
  %i.dce = xor i64 %i.dcd, -1
  %scevgep.i.i112.i = getelementptr i8, ptr %0, i64 %i.dce
  br label %.lr.ph.i.i113.i

.lr.ph.i.i113.i:                                  ; preds = %.critedge2.i.i116.i, %.lr.ph.preheader.i.i111.i
  %.015.i.i114.i = phi ptr [ %i.dci, %.critedge2.i.i116.i ], [ %0, %.lr.ph.preheader.i.i111.i ] ; 5 uses
  %i.dcf = load i8, ptr %.015.i.i114.i, align 1, !tbaa !187
  switch i8 %i.dcf, label %.critedge2.i.i116.i [
    i8 0, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i110.i
    i8 35, label %bb.pi
  ]

bb.pi:                                            ; preds = %.lr.ph.i.i113.i
  %i.dcg = getelementptr inbounds nuw i8, ptr %.015.i.i114.i, i64 1
  %i.dch = load i8, ptr %i.dcg, align 1, !tbaa !187
  %.not14.i.i115.i = icmp eq i8 %i.dch, 35
  br i1 %.not14.i.i115.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i110.i, label %.critedge2.i.i116.i

.critedge2.i.i116.i:                              ; preds = %bb.pi, %.lr.ph.i.i113.i
  %i.dci = getelementptr inbounds nuw i8, ptr %.015.i.i114.i, i64 1 ; 2 uses
  %exitcond.not.i.i117.i = icmp eq ptr %i.dci, inttoptr (i64 -1 to ptr)
  br i1 %exitcond.not.i.i117.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i110.i, label %.lr.ph.i.i113.i, !llvm.loop !451

_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i110.i: ; preds = %.critedge2.i.i116.i, %bb.pi, %.lr.ph.i.i113.i, %bb.ph
  %.0.lcssa.i.i.i = phi ptr [ inttoptr (i64 -1 to ptr), %bb.ph ], [ %.015.i.i114.i, %.lr.ph.i.i113.i ], [ %scevgep.i.i112.i, %.critedge2.i.i116.i ], [ %.015.i.i114.i, %bb.pi ] ; 3 uses
  %i.dcj = ptrtoint ptr %.0.lcssa.i.i.i to i64
  %i.dck = ptrtoint ptr %0 to i64
  %i.dcl = sub i64 %i.dcj, %i.dck
  %i.dcm = and i64 %i.dcl, 4294967295
  %i.dcn = icmp eq i64 %i.dcm, 0
  br i1 %i.dcn, label %_ZN5ImGuiL28RenderWindowTitleBarContentsEP11ImGuiWindowRK6ImRectPKcPb.exit, label %bb.pj

bb.pj:                                            ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i110.i
  %i.dco = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.dcp = getelementptr inbounds nuw i8, ptr %i.dco, i64 5312
  %i.dcq = load ptr, ptr %i.dcp, align 8, !tbaa !298
  %i.dcr = getelementptr inbounds nuw i8, ptr %i.dcq, i64 712
  %i.dcs = load ptr, ptr %i.dcr, align 8, !tbaa !452
  call void @_ZN5ImGui19RenderTextClippedExEP10ImDrawListRK6ImVec2S4_PKcS6_PS3_S4_PK6ImRect(ptr noundef %i.dcs, ptr noundef nonnull readonly align 4 dereferenceable(8) %6, ptr noundef nonnull readonly align 4 dereferenceable(8) %i.dak, ptr noundef nonnull %0, ptr noundef %.0.lcssa.i.i.i, ptr noundef nonnull readonly %5, ptr noundef nonnull readonly align 4 dereferenceable(8) %i.czh, ptr noundef nonnull readonly %7)
  %i.dct = getelementptr inbounds nuw i8, ptr %i.dco, i64 10264
  %i.dcu = load i8, ptr %i.dct, align 8, !tbaa !387, !range !64, !noundef !204
  %i.dcv = trunc nuw i8 %i.dcu to i1
  br i1 %i.dcv, label %bb.pk, label %_ZN5ImGuiL28RenderWindowTitleBarContentsEP11ImGuiWindowRK6ImRectPKcPb.exit

bb.pk:                                            ; preds = %bb.pj
  call void @_ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_(ptr noundef nonnull readonly align 4 dereferenceable(8) %6, ptr noundef nonnull %0, ptr noundef %.0.lcssa.i.i.i)
  br label %_ZN5ImGuiL28RenderWindowTitleBarContentsEP11ImGuiWindowRK6ImRectPKcPb.exit

_ZN5ImGuiL28RenderWindowTitleBarContentsEP11ImGuiWindowRK6ImRectPKcPb.exit: ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i110.i, %bb.pj, %bb.pk
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  %.pre1055 = load ptr, ptr %i.g, align 8, !tbaa !705
  br label %bb.pl

bb.pl:                                            ; preds = %_ZN5ImGuiL28RenderWindowTitleBarContentsEP11ImGuiWindowRK6ImRectPKcPb.exit, %_ZN5ImGui14LogToClipboardEi.exit
  %i.dcw = phi ptr [ %.pre1055, %_ZN5ImGuiL28RenderWindowTitleBarContentsEP11ImGuiWindowRK6ImRectPKcPb.exit ], [ %.pre1056, %_ZN5ImGui14LogToClipboardEi.exit ] ; 9 uses
  %i.dcx = getelementptr inbounds nuw i8, ptr %i.dcw, i64 650
  store i16 0, ptr %i.dcx, align 2, !tbaa !931
  %i.dcy = getelementptr inbounds nuw i8, ptr %i.dcw, i64 648
  store i16 0, ptr %i.dcy, align 8, !tbaa !927
  br i1 %.not463, label %bb.pn, label %bb.pm

bb.pm:                                            ; preds = %bb.pl
  %i.dcz = getelementptr inbounds nuw i8, ptr %i.j, i64 9864
  store ptr %i.dcw, ptr %i.dcz, align 8, !tbaa !675
  br label %bb.pn

bb.pn:                                            ; preds = %bb.pm, %bb.pl
  br i1 %.not462, label %bb.pp, label %bb.po

bb.po:                                            ; preds = %bb.pn
  %i.dda = getelementptr inbounds nuw i8, ptr %i.kb, i64 239
  %i.ddb = load i32, ptr %i.dda, align 1
  %i.ddc = shl i32 %i.ddb, 24
  %i.ddd = ashr exact i32 %i.ddc, 24
  br label %bb.pq

bb.pp:                                            ; preds = %bb.pn
  %i.dde = getelementptr inbounds nuw i8, ptr %i.j, i64 130
  %i.ddf = load i8, ptr %i.dde, align 2, !tbaa !1306, !range !64, !noundef !204
  %i.ddg = xor i8 %i.ddf, 1
  %not. = zext nneg i8 %i.ddg to i32
  br label %bb.pq

bb.pq:                                            ; preds = %bb.pp, %bb.po
  %i.ddh = phi i32 [ %i.ddd, %bb.po ], [ %not., %bb.pp ]
  %i.ddi = getelementptr inbounds nuw i8, ptr %i.dcw, i64 239 ; 2 uses
  %i.ddj = load i32, ptr %i.ddi, align 1
  %i.ddk = and i32 %i.ddh, 255
  %i.ddl = and i32 %i.ddj, -256
  %i.ddm = or disjoint i32 %i.ddl, %i.ddk
  store i32 %i.ddm, ptr %i.ddi, align 1
  %i.ddn = getelementptr inbounds nuw i8, ptr %i.dcw, i64 480
  %i.ddo = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 10 uses
  %i.ddp = load <2 x float>, ptr %30, align 8     ; 2 uses
  %i.ddq = load <2 x float>, ptr %i.bkb, align 8  ; 2 uses
  %i.ddr = getelementptr inbounds nuw i8, ptr %i.ddo, i64 272
  %i.dds = getelementptr inbounds nuw i8, ptr %i.ddo, i64 3324
  %i.ddt = load float, ptr %i.ddr, align 4, !tbaa !227 ; 2 uses
  %.sroa.0.0.vec.extract8.i = extractelement <2 x float> %i.ddp, i64 0
  %i.ddu = load float, ptr %i.dds, align 4, !tbaa !227 ; 2 uses
  %i.ddv = fsub float %.sroa.0.0.vec.extract8.i, %i.ddu
  %i.ddw = fcmp ult float %i.ddt, %i.ddv
  br i1 %i.ddw, label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit, label %bb.pr

bb.pr:                                            ; preds = %bb.pq
  %i.ddx = getelementptr inbounds nuw i8, ptr %i.ddo, i64 276
  %i.ddy = load float, ptr %i.ddx, align 4, !tbaa !228 ; 2 uses
  %.sroa.0.4.vec.extract10.i = extractelement <2 x float> %i.ddp, i64 1
  %i.ddz = getelementptr inbounds nuw i8, ptr %i.ddo, i64 3328
  %i.dea = load float, ptr %i.ddz, align 4, !tbaa !228 ; 2 uses
  %i.deb = fsub float %.sroa.0.4.vec.extract10.i, %i.dea
  %i.dec = fcmp oge float %i.ddy, %i.deb
  %.sroa.8.8.vec.extract13.i = extractelement <2 x float> %i.ddq, i64 0
  %i.ded = fadd float %.sroa.8.8.vec.extract13.i, %i.ddu
  %i.dee = fcmp olt float %i.ddt, %i.ded
  %or.cond.i698 = select i1 %i.dec, i1 %i.dee, i1 false
  br i1 %or.cond.i698, label %bb.ps, label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit

bb.ps:                                            ; preds = %bb.pr
  %.sroa.8.12.vec.extract15.i = extractelement <2 x float> %i.ddq, i64 1
  %i.def = fadd float %.sroa.8.12.vec.extract15.i, %i.dea
  %i.deg = fcmp olt float %i.ddy, %i.def
  %i.deh = zext i1 %i.deg to i32
  br label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit

_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit: ; preds = %bb.pq, %bb.pr, %bb.ps
  %i.dei = phi i32 [ %i.deh, %bb.ps ], [ 0, %bb.pr ], [ 0, %bb.pq ] ; 2 uses
  store i32 %i.dei, ptr %i.ddn, align 8, !tbaa !1307
  %i.dej = getelementptr i8, ptr %i.dcw, i64 140  ; 2 uses
  %.val550 = load i32, ptr %i.dej, align 4, !tbaa !790
  %i.dek = getelementptr inbounds nuw i8, ptr %i.ddo, i64 7784
  %i.del = load i32, ptr %i.dek, align 8, !tbaa !1036
  %i.dem = getelementptr inbounds nuw i8, ptr %i.ddo, i64 7848
  store i32 %.val550, ptr %i.dem, align 8, !tbaa !475
  %i.den = getelementptr inbounds nuw i8, ptr %i.ddo, i64 7852
  store i32 %i.del, ptr %i.den, align 4, !tbaa !476
  %i.deo = getelementptr inbounds nuw i8, ptr %i.ddo, i64 7856
  store i32 %i.dei, ptr %i.deo, align 8, !tbaa !843
  %i.dep = getelementptr inbounds nuw i8, ptr %i.ddo, i64 7876
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dep, ptr noundef nonnull readonly align 8 dereferenceable(16) %30, i64 16, i1 false), !tbaa.struct !419
  %i.deq = getelementptr inbounds nuw i8, ptr %i.ddo, i64 7860
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.deq, ptr noundef nonnull readonly align 8 dereferenceable(16) %30, i64 16, i1 false)
  %i.der = getelementptr inbounds nuw i8, ptr %i.j, i64 7788
  %i.des = load i32, ptr %i.der, align 4, !tbaa !1144 ; 3 uses
  %.not504 = icmp eq i32 %i.des, 0
  br i1 %.not504, label %bb.pw, label %bb.pt

bb.pt:                                            ; preds = %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit
  %i.det = getelementptr inbounds nuw i8, ptr %i.dcw, i64 16
  %i.deu = load i32, ptr %i.det, align 8, !tbaa !726
  %i.dev = icmp eq i32 %i.deu, %i.des
  br i1 %i.dev, label %bb.pv, label %bb.pu

bb.pu:                                            ; preds = %bb.pt
  %i.dew = load i32, ptr %i.dej, align 4, !tbaa !790
  %i.dex = icmp eq i32 %i.dew, %i.des
  br i1 %i.dex, label %bb.pv, label %bb.pw

bb.pv:                                            ; preds = %bb.pu, %bb.pt
  call void @_ZN5ImGui34DebugLocateItemResolveWithLastItemEv()
  %.pre1062.pre = load ptr, ptr %i.g, align 8, !tbaa !705
  br label %bb.pw

bb.pw:                                            ; preds = %bb.pv, %bb.pu, %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit
  %.pre1062 = phi ptr [ %.pre1062.pre, %bb.pv ], [ %i.dcw, %bb.pu ], [ %i.dcw, %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #41
  br label %bb.qf

bb.px:                                            ; preds = %bb.cy
  br i1 %i.wc, label %.thread1187, label %.thread988

.thread1187:                                      ; preds = %bb.cz, %bb.px
  call fastcc void @_ZL29SetWindowActiveForSkipRefreshP11ImGuiWindow(ptr noundef nonnull %.pre1057)
  %.pr = load ptr, ptr %i.g, align 8, !tbaa !705, !nonnull !204, !noundef !204
  br label %.thread988

.thread988:                                       ; preds = %bb.px, %.thread1187
  %.pr.sink = phi ptr [ %.pr, %.thread1187 ], [ %.pre1057, %bb.px ] ; 4 uses
  %i.dey = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 10 uses
  %i.dez = getelementptr inbounds nuw i8, ptr %i.dey, i64 5312
  store ptr %.pr.sink, ptr %i.dez, align 8, !tbaa !298
  %i.dfa = getelementptr inbounds nuw i8, ptr %i.dey, i64 5264
  %i.dfb = getelementptr inbounds nuw i8, ptr %i.dey, i64 5272
  %i.dfc = load ptr, ptr %i.dfb, align 8, !tbaa !565
  %i.dfd = load i32, ptr %i.dfa, align 8, !tbaa !567
  %i.dfe = sext i32 %i.dfd to i64
  %i.dff = getelementptr [120 x i8], ptr %i.dfc, i64 %i.dfe
  %i.dfg = getelementptr i8, ptr %i.dff, i64 -32
  %i.dfh = getelementptr inbounds nuw i8, ptr %i.dey, i64 10392
  store ptr %i.dfg, ptr %i.dfh, align 8, !tbaa !680
  %i.dfi = getelementptr inbounds nuw i8, ptr %.pr.sink, i64 464
  %i.dfj = load i32, ptr %i.dfi, align 8, !tbaa !1222 ; 2 uses
  %.not23.i700 = icmp eq i32 %i.dfj, -1
  br i1 %.not23.i700, label %bb.pz, label %bb.py

bb.py:                                            ; preds = %.thread988
  %i.dfk = getelementptr inbounds nuw i8, ptr %i.dey, i64 9024
  %i.dfl = load ptr, ptr %i.dfk, align 8, !tbaa !700
  %i.dfm = sext i32 %i.dfj to i64
  %i.dfn = getelementptr inbounds [592 x i8], ptr %i.dfl, i64 %i.dfm
  br label %bb.pz

bb.pz:                                            ; preds = %bb.py, %.thread988
  %.ph.i701 = phi ptr [ null, %.thread988 ], [ %i.dfn, %bb.py ]
  %i.dfo = getelementptr inbounds nuw i8, ptr %i.dey, i64 8984
  store ptr %.ph.i701, ptr %i.dfo, align 8, !tbaa !338
  %i.dfp = getelementptr inbounds nuw i8, ptr %i.dey, i64 4584
  store float 1.000000e+00, ptr %i.dfp, align 8, !tbaa !1227
  %i.dfq = getelementptr inbounds nuw i8, ptr %i.dey, i64 44
  %i.dfr = load i32, ptr %i.dfq, align 4, !tbaa !950
  %i.dfs = and i32 %i.dfr, 16
  %.not24.i702 = icmp eq i32 %i.dfs, 0
  br i1 %.not24.i702, label %bb.qd, label %bb.qa

bb.qa:                                            ; preds = %bb.pz
  %i.dft = getelementptr inbounds nuw i8, ptr %.pr.sink, i64 32
  %i.dfu = load ptr, ptr %i.dft, align 8, !tbaa !1226
  %i.dfv = getelementptr inbounds nuw i8, ptr %i.dfu, i64 24
  %i.dfw = load float, ptr %i.dfv, align 8, !tbaa !1228 ; 2 uses
  %i.dfx = fcmp une float %i.dfw, 0.000000e+00
  br i1 %i.dfx, label %bb.qc, label %bb.qb

bb.qb:                                            ; preds = %bb.qa
  %i.dfy = getelementptr inbounds nuw i8, ptr %i.dey, i64 56
  %i.dfz = load float, ptr %i.dfy, align 8, !tbaa !1229
  br label %bb.qc

bb.qc:                                            ; preds = %bb.qb, %bb.qa
  %i.dga = phi float [ %i.dfz, %bb.qb ], [ %i.dfw, %bb.qa ]
  %i.dgb = getelementptr inbounds nuw i8, ptr %i.dey, i64 4580
  store float %i.dga, ptr %i.dgb, align 4, !tbaa !1230
  br label %bb.qd

bb.qd:                                            ; preds = %bb.qc, %bb.pz
  %i.dgc = getelementptr inbounds nuw i8, ptr %.pr.sink, i64 209 ; 3 uses
  %i.dgd = load i8, ptr %i.dgc, align 1, !tbaa !1231, !range !64, !noundef !204
  store i8 0, ptr %i.dgc, align 1, !tbaa !1231
  call void @_ZN5ImGui21UpdateCurrentFontSizeEf(float noundef 0.000000e+00)
  store i8 %i.dgd, ptr %i.dgc, align 1, !tbaa !1231
  %i.dge = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 10 uses
  %i.dgf = getelementptr inbounds nuw i8, ptr %i.dge, i64 5312
  %i.dgg = load ptr, ptr %i.dgf, align 8, !tbaa !298 ; 2 uses
  %i.dgh = getelementptr inbounds nuw i8, ptr %i.dge, i64 8984
  %i.dgi = load ptr, ptr %i.dgh, align 8, !tbaa !338
  %i.dgj = icmp eq ptr %i.dgi, null
  br i1 %i.dgj, label %bb.qe, label %_ZN5ImGui39NavUpdateCurrentWindowIsScrollPushableXEv.exit.i703

bb.qe:                                            ; preds = %bb.qd
  %i.dgk = getelementptr inbounds nuw i8, ptr %i.dgg, i64 456
  %i.dgl = load ptr, ptr %i.dgk, align 8, !tbaa !333
  %i.dgm = icmp eq ptr %i.dgl, null
  %i.dgn = zext i1 %i.dgm to i8
  br label %_ZN5ImGui39NavUpdateCurrentWindowIsScrollPushableXEv.exit.i703

_ZN5ImGui39NavUpdateCurrentWindowIsScrollPushableXEv.exit.i703: ; preds = %bb.qe, %bb.qd
  %i.dgo = phi i8 [ 0, %bb.qd ], [ %i.dgn, %bb.qe ]
  %i.dgp = getelementptr inbounds nuw i8, ptr %i.dgg, i64 376
  store i8 %i.dgo, ptr %i.dgp, align 8, !tbaa !1232
  %.pre1061 = load ptr, ptr %i.g, align 8, !tbaa !705 ; 6 uses
  %i.dgq = getelementptr inbounds nuw i8, ptr %.pre1061, i64 40
  %i.dgr = getelementptr inbounds nuw i8, ptr %.pre1061, i64 56
  %i.dgs = load float, ptr %i.dgr, align 8, !tbaa !910
  %i.dgt = getelementptr inbounds nuw i8, ptr %.pre1061, i64 104
  %i.dgu = load float, ptr %i.dgt, align 8, !tbaa !909
  %i.dgv = load <2 x float>, ptr %i.dgq, align 8, !tbaa !8 ; 3 uses
  %i.dgw = insertelement <2 x float> poison, float %i.dgs, i64 0
  %i.dgx = insertelement <2 x float> %i.dgw, float %i.dgu, i64 1
  %i.dgy = fadd <2 x float> %i.dgv, %i.dgx        ; 2 uses
  %i.dgz = getelementptr i8, ptr %.pre1061, i64 140
  %.val548 = load i32, ptr %i.dgz, align 4, !tbaa !790
  %i.dha = getelementptr i8, ptr %.pre1061, i64 480
  %.val549 = load i32, ptr %i.dha, align 8, !tbaa !1307
  %i.dhb = getelementptr inbounds nuw i8, ptr %i.dge, i64 7784
  %i.dhc = load i32, ptr %i.dhb, align 8, !tbaa !1036
  %i.dhd = getelementptr inbounds nuw i8, ptr %i.dge, i64 7848
  store i32 %.val548, ptr %i.dhd, align 8, !tbaa !475
  %i.dhe = getelementptr inbounds nuw i8, ptr %i.dge, i64 7852
  store i32 %i.dhc, ptr %i.dhe, align 4, !tbaa !476
  %i.dhf = getelementptr inbounds nuw i8, ptr %i.dge, i64 7856
  store i32 %.val549, ptr %i.dhf, align 8, !tbaa !843
  %i.dhg = getelementptr inbounds nuw i8, ptr %i.dge, i64 7876
  store <2 x float> %i.dgv, ptr %i.dhg, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dge, i64 7884
  store <2 x float> %i.dgy, ptr %.sroa.5.0..sroa_idx, align 4
  %i.dhh = getelementptr inbounds nuw i8, ptr %i.dge, i64 7860
  store <2 x float> %i.dgv, ptr %i.dhh, align 4
  %.sroa.5.0..sroa_idx795 = getelementptr inbounds nuw i8, ptr %i.dge, i64 7868
  store <2 x float> %i.dgy, ptr %.sroa.5.0..sroa_idx795, align 4
  br label %bb.qf

bb.qf:                                            ; preds = %_ZN5ImGui39NavUpdateCurrentWindowIsScrollPushableXEv.exit.i703, %bb.pw
  %i.dhi = phi ptr [ %.pre1061, %_ZN5ImGui39NavUpdateCurrentWindowIsScrollPushableXEv.exit.i703 ], [ %.pre1062, %bb.pw ] ; 4 uses
  %i.dhj = getelementptr inbounds nuw i8, ptr %i.dhi, i64 210
  %i.dhk = load i8, ptr %i.dhj, align 2, !tbaa !1216, !range !64, !noundef !204
  %i.dhl = trunc nuw i8 %i.dhk to i1
  br i1 %i.dhl, label %bb.qh, label %bb.qg

bb.qg:                                            ; preds = %bb.qf
  %i.dhm = getelementptr inbounds nuw i8, ptr %i.dhi, i64 568
  %i.dhn = getelementptr inbounds nuw i8, ptr %i.dhi, i64 576
  %i.dho = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.dhp = getelementptr inbounds nuw i8, ptr %i.dho, i64 5312
  %i.dhq = load ptr, ptr %i.dhp, align 8, !tbaa !298 ; 3 uses
  %i.dhr = getelementptr inbounds nuw i8, ptr %i.dhq, i64 206
  store i8 1, ptr %i.dhr, align 2, !tbaa !854
  %i.dhs = getelementptr inbounds nuw i8, ptr %i.dhq, i64 712 ; 2 uses
  %i.dht = load ptr, ptr %i.dhs, align 8, !tbaa !452
  call void @_ZN10ImDrawList12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 8 dereferenceable(224) %i.dht, ptr noundef nonnull align 4 dereferenceable(8) %i.dhm, ptr noundef nonnull align 4 dereferenceable(8) %i.dhn, i1 noundef zeroext true)
  %i.dhu = load ptr, ptr %i.dhs, align 8, !tbaa !452 ; 2 uses
  %i.dhv = getelementptr inbounds nuw i8, ptr %i.dhu, i64 160
  %i.dhw = getelementptr inbounds nuw i8, ptr %i.dhu, i64 168
  %i.dhx = load ptr, ptr %i.dhw, align 8, !tbaa !1265
  %i.dhy = load i32, ptr %i.dhv, align 8, !tbaa !1266
  %i.dhz = sext i32 %i.dhy to i64
  %i.dia = getelementptr [16 x i8], ptr %i.dhx, i64 %i.dhz
  %i.dib = getelementptr i8, ptr %i.dia, i64 -16
  %i.dic = getelementptr inbounds nuw i8, ptr %i.dhq, i64 616
  %i.did = load <4 x float>, ptr %i.dib, align 4, !tbaa !8
  store <4 x float> %i.did, ptr %i.dic, align 8, !tbaa !8
  %.pre1063 = load ptr, ptr %i.g, align 8, !tbaa !705
  br label %bb.qh

bb.qh:                                            ; preds = %bb.qg, %bb.qf
  %i.die = phi ptr [ %.pre1063, %bb.qg ], [ %i.dhi, %bb.qf ] ; 31 uses
  %i.dif = getelementptr inbounds nuw i8, ptr %i.die, i64 206
  store i8 0, ptr %i.dif, align 2, !tbaa !854
  %i.dig = getelementptr inbounds nuw i8, ptr %i.die, i64 218 ; 2 uses
  %i.dih = load i16, ptr %i.dig, align 2, !tbaa !1097
  %i.dii = add i16 %i.dih, 1
  store i16 %i.dii, ptr %i.dig, align 2, !tbaa !1097
  store i32 0, ptr %i.pn, align 8, !tbaa !1308
  br i1 %.not444, label %.critedge544, label %bb.qi

bb.qi:                                            ; preds = %bb.qh
  %i.dij = getelementptr inbounds nuw i8, ptr %i.die, i64 210
  %i.dik = load i8, ptr %i.dij, align 2, !tbaa !1216, !range !64, !noundef !204
  %i.dil = trunc nuw i8 %i.dik to i1
  br i1 %i.dil, label %.critedge544.sink.split, label %bb.qj

bb.qj:                                            ; preds = %bb.qi
  %i.dim = and i32 %.1403, 285212672
  %brmerge539.not = icmp eq i32 %i.dim, 16777216
  br i1 %brmerge539.not, label %bb.qk, label %.critedge541

bb.qk:                                            ; preds = %bb.qj
  %i.din = getelementptr inbounds nuw i8, ptr %i.die, i64 24
  %i.dio = load i32, ptr %i.din, align 8, !tbaa !1188
  %i.dip = and i32 %i.dio, 256
  %.not506 = icmp eq i32 %i.dip, 0
  br i1 %.not506, label %bb.qo, label %bb.ql

bb.ql:                                            ; preds = %bb.qk
  %i.diq = getelementptr inbounds nuw i8, ptr %i.j, i64 8321
  %i.dir = load i8, ptr %i.diq, align 1, !tbaa !882, !range !64, !noundef !204
  %i.dis = trunc nuw i8 %i.dir to i1
  br i1 %i.dis, label %bb.qm, label %bb.qo

bb.qm:                                            ; preds = %bb.ql
  %i.dit = getelementptr inbounds nuw i8, ptr %i.j, i64 8224
  %i.diu = load ptr, ptr %i.dit, align 8, !tbaa !389 ; 2 uses
  %.not507 = icmp eq ptr %i.diu, null
  br i1 %.not507, label %bb.qo, label %bb.qn

bb.qn:                                            ; preds = %bb.qm
  %i.div = getelementptr inbounds nuw i8, ptr %i.diu, i64 984
  %i.diw = load ptr, ptr %i.div, align 8, !tbaa !390
end_hunk_6
