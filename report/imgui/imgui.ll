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
  %24 = alloca %struct.ImGuiFocusScopeData, align 4 ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %25 = alloca %struct.ImGuiStoragePair, align 8  ; 5 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  %i.g = alloca ptr, align 8                      ; 50 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %26 = alloca %struct.ImRect, align 8            ; 5 uses
  %27 = alloca %struct.ImRect, align 8            ; 5 uses
  %i.i = alloca [4 x i32], align 16               ; 7 uses
  %28 = alloca %struct.ImRect, align 8            ; 6 uses
  %29 = alloca %struct.ImRect, align 8            ; 12 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #41
  store i32 %i.bz, ptr %25, align 8, !tbaa !255
  %i.cm = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr %i.ax, ptr %i.cm, align 8, !tbaa !187
  %i.cn = call noundef ptr @_ZN8ImVectorI16ImGuiStoragePairE6insertEPKS0_RS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef %.013.lcssa.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %25) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #41
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
  %.pre1069.a = and i32 %.pre1033, 256
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
  %.pre-phi = phi i32 [ %.pre1069.a, %._crit_edge1032 ], [ %i.nw, %bb.be ]
  %.not451 = icmp eq i32 %.pre-phi, 0
  %i.oo = getelementptr inbounds nuw i8, ptr %i.j, i64 7780 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %.in = select i1 %.not451, ptr %i.op, ptr %i.oo
  %i.oq = load i32, ptr %.in, align 4, !tbaa !205 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #41
  store i32 %i.oq, ptr %24, align 4, !tbaa !1202
  %i.or = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %i.os = load i32, ptr %i.or, align 8, !tbaa !726
  %i.ot = getelementptr inbounds nuw i8, ptr %24, i64 4
  store i32 %i.os, ptr %i.ot, align 4, !tbaa !1204
  call void @_ZN8ImVectorI19ImGuiFocusScopeDataE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.md, ptr noundef nonnull align 4 dereferenceable(8) %24)
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ld, i64 7780
  store i32 %i.oq, ptr %i.ou, align 4, !tbaa !1035
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #41
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
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #41
  %i.acs = getelementptr inbounds nuw i8, ptr %i.abi, i64 40
  %i.act = getelementptr inbounds nuw i8, ptr %i.abi, i64 56
  %i.acu = load float, ptr %i.act, align 8, !tbaa !910
  %i.acv = load <2 x float>, ptr %i.acs, align 8, !tbaa !8 ; 2 uses
  %i.acw = insertelement <2 x float> poison, float %i.acu, i64 0
  %i.acx = insertelement <2 x float> %i.acw, float %i.acb, i64 1
  %i.acy = fadd <2 x float> %i.acx, %i.acv
  store <2 x float> %i.acv, ptr %26, align 8
  %i.acz = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
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
  %i.adm = call noundef zeroext i1 @_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b(ptr noundef nonnull align 4 dereferenceable(8) %26, ptr noundef nonnull align 4 dereferenceable(8) %i.acz, i1 noundef zeroext true)
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
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #41
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
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #41
  %i.akf = getelementptr inbounds nuw i8, ptr %i.yq, i64 8
  %i.akg = getelementptr inbounds nuw i8, ptr %i.yq, i64 16
  %i.akh = load <2 x float>, ptr %i.akf, align 8, !tbaa !8 ; 4 uses
  %i.aki = load <2 x float>, ptr %i.akg, align 8, !tbaa !8
  %i.akj = fadd <2 x float> %i.akh, %i.aki        ; 3 uses
  store <2 x float> %i.akh, ptr %27, align 8
  %i.akk = getelementptr inbounds nuw i8, ptr %27, i64 8
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
  %i.akw = fadd <2 x float> %i.akp, %i.akv        ; 5 uses
  %i.akx = fsub <2 x float> %i.akr, %i.akv        ; 7 uses
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
  %i.alz = getelementptr inbounds nuw i8, ptr %i.ake, i64 40 ; 7 uses
  %i.ama = getelementptr inbounds nuw i8, ptr %i.ake, i64 44 ; 2 uses
  %i.amb = fptosi <2 x float> %i.aly to <2 x i32>
  %i.amc = sitofp <2 x i32> %i.amb to <2 x float>
  store <2 x float> %i.amc, ptr %i.alz, align 8
  %i.amd = and i32 %.1403, 201326592
  %or.cond525 = icmp eq i32 %i.amd, 67108864
  %..a = select i1 %or.cond525, i64 3276, i64 3236
  %.sink = select i1 %.not462, i64 %..a, i64 3268
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
  %i.aos = extractelement <2 x float> %i.akw, i64 1 ; 2 uses
  br i1 %or.cond994, label %bb.hi, label %.thread967

bb.hi:                                            ; preds = %bb.hh
  %i.aot = getelementptr inbounds nuw i8, ptr %i.ake, i64 104
  %i.aou = load float, ptr %i.aot, align 8, !tbaa !909
  %i.aov = fsub float %i.aos, %i.aou
  br label %.thread967

.thread967:                                       ; preds = %bb.hh, %bb.hi
  %.sroa.6944.0 = phi float [ %i.aov, %bb.hi ], [ %i.aos, %bb.hh ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #41
  %i.aow = getelementptr inbounds nuw i8, ptr %20, i64 4
  store <2 x float> splat (float f0x7F7FFFFF), ptr %20, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #41
  %i.aox = getelementptr inbounds nuw i8, ptr %21, i64 4 ; 2 uses
  store <2 x float> splat (float f0x7F7FFFFF), ptr %21, align 8, !tbaa !8
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.ake, i64 368 ; 2 uses
  store i32 1, ptr %i.aoy, align 8, !tbaa !1205
  call void @_ZN5ImGui6PushIDEPKc(ptr noundef nonnull @.str.97), !inline_history !1250
  br i1 %.not235.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread967
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.ake, i64 48
  %i.apa = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.apb = getelementptr inbounds nuw i8, ptr %22, i64 4
  %i.apc = getelementptr inbounds nuw i8, ptr %22, i64 12
  %i.apd = getelementptr inbounds nuw i8, ptr %i.ake, i64 264
  %i.ape = getelementptr inbounds nuw i8, ptr %i.ake, i64 272
  %i.apf = getelementptr inbounds nuw i8, ptr %i.ani, i64 2885
  %i.apg = getelementptr inbounds nuw i8, ptr %i.ani, i64 272
  %i.aph = getelementptr inbounds nuw i8, ptr %i.ani, i64 5456
  %i.api = fneg float %i.aok
  %i.apj = getelementptr inbounds nuw i8, ptr %i.ake, i64 72
  %wide.trip.count = zext nneg i32 %.0404 to i64
  %i.apk = insertelement <2 x float> poison, float %i.api, i64 0
  %i.apl = shufflevector <2 x float> %i.apk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.apm = insertelement <2 x float> poison, float %i.aon, i64 0
  %i.apn = shufflevector <2 x float> %i.apm, <2 x float> poison, <2 x i32> zeroinitializer
  %30 = extractelement <2 x float> %i.akx, i64 0
  %i.apo = insertelement <2 x float> poison, float %i.aok, i64 0
  %i.app = shufflevector <2 x float> %i.apo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.apq = extractelement <2 x float> %i.akw, i64 0
  br label %bb.hj

._crit_edge:                                      ; preds = %.critedge248.i, %.thread967
  %.0220.i.lcssa = phi i32 [ 0, %.thread967 ], [ %.1.i, %.critedge248.i ]
  %i.apr = load i32, ptr %i.anj, align 4, !tbaa !722
  %i.aps = and i32 %i.apr, 16777216
  %.not238.i = icmp eq i32 %i.aps, 0
  br i1 %.not238.i, label %bb.hy, label %bb.hx

bb.hj:                                            ; preds = %.lr.ph, %.critedge248.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge248.i ] ; 8 uses
  %.0220.i1015 = phi i32 [ 0, %.lr.ph ], [ %.1.i, %.critedge248.i ] ; 3 uses
  %i.apt = getelementptr inbounds nuw [24 x i8], ptr @_ZL15resize_grip_def, i64 %indvars.iv ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #41
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apt, i64 8
  %i.apv = load <2 x float>, ptr %i.apt, align 8, !tbaa !8 ; 4 uses
  %i.apw = load <2 x float>, ptr %i.apu, align 8, !tbaa !8 ; 3 uses
  %i.apx = fmul <2 x float> %i.apn, %i.apw        ; 3 uses
  %i.apy = load <2 x float>, ptr %i.alz, align 8, !tbaa !8 ; 3 uses
  %i.apz = load <2 x float>, ptr %i.aoz, align 8, !tbaa !8
  %i.aqa = fadd <2 x float> %i.apy, %i.apz
  %i.aqb = fsub <2 x float> %i.aqa, %i.apy
  %i.aqc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aqb, <2 x float> %i.apv, <2 x float> %i.apy) ; 2 uses
  %i.aqd = fsub <2 x float> %i.aqc, %i.apx        ; 3 uses
  %i.aqe = fmul <2 x float> %i.apw, %i.app
  %i.aqf = fadd <2 x float> %i.aqc, %i.aqe        ; 3 uses
  store <2 x float> %i.aqd, ptr %22, align 8
  store <2 x float> %i.aqf, ptr %i.apa, align 8
  %i.aqg = extractelement <2 x float> %i.aqf, i64 0 ; 2 uses
  %i.aqh = extractelement <2 x float> %i.aqd, i64 0 ; 2 uses
  %i.aqi = fcmp ogt float %i.aqh, %i.aqg
  br i1 %i.aqi, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %bb.hj
  store float %i.aqg, ptr %22, align 8, !tbaa !8
  store float %i.aqh, ptr %i.apa, align 8, !tbaa !8
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.hj
  %i.aqj = extractelement <2 x float> %i.aqf, i64 1 ; 2 uses
  %i.aqk = extractelement <2 x float> %i.aqd, i64 1 ; 2 uses
  %i.aql = fcmp ogt float %i.aqk, %i.aqj
  br i1 %i.aql, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  store float %i.aqj, ptr %i.apb, align 4, !tbaa !8
  store float %i.aqk, ptr %i.apc, align 4, !tbaa !8
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  %i.aqm = trunc i64 %indvars.iv to i32           ; 7 uses
  %.sroa.2.0.extract.shift.i777 = lshr i32 %i.aqm, 8
  %.sroa.3.0.extract.shift.i778 = lshr i32 %i.aqm, 16
  %.sroa.4.0.extract.shift.i779 = lshr i32 %i.aqm, 24
  %i.aqn = load ptr, ptr %i.ape, align 8, !tbaa !604
  %i.aqo = load i32, ptr %i.apd, align 8, !tbaa !606
  %i.aqp = sext i32 %i.aqo to i64
  %i.aqq = getelementptr [4 x i8], ptr %i.aqn, i64 %i.aqp
  %i.aqr = getelementptr i8, ptr %i.aqq, i64 -4
  %i.aqs = load i32, ptr %i.aqr, align 4, !tbaa !205
  %i.aqt = xor i32 %i.aqs, -1                     ; 2 uses
  %i.aqu = lshr i32 %i.aqt, 8
  %i.aqv = xor i32 %i.aqt, %i.aqm
  %i.aqw = and i32 %i.aqv, 255
  %i.aqx = zext nneg i32 %i.aqw to i64
  %i.aqy = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.aqx
  %i.aqz = load i32, ptr %i.aqy, align 4, !tbaa !205
  %i.ara = xor i32 %i.aqz, %i.aqu                 ; 2 uses
  %i.arb = lshr i32 %i.ara, 8
  %i.arc = xor i32 %i.ara, %.sroa.2.0.extract.shift.i777
  %i.ard = and i32 %i.arc, 255
  %i.are = zext nneg i32 %i.ard to i64
  %i.arf = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.are
  %i.arg = load i32, ptr %i.arf, align 4, !tbaa !205
  %i.arh = xor i32 %i.arb, %i.arg                 ; 2 uses
  %i.ari = lshr i32 %i.arh, 8
  %i.arj = xor i32 %i.arh, %.sroa.3.0.extract.shift.i778
  %i.ark = and i32 %i.arj, 255
  %i.arl = zext nneg i32 %i.ark to i64
  %i.arm = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.arl
  %i.arn = load i32, ptr %i.arm, align 4, !tbaa !205
  %i.aro = xor i32 %i.ari, %i.arn                 ; 2 uses
  %i.arp = lshr i32 %i.aro, 8
  %i.arq = and i32 %i.aro, 255
  %i.arr = xor i32 %i.arq, %.sroa.4.0.extract.shift.i779
  %i.ars = zext nneg i32 %i.arr to i64
  %i.art = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.ars
  %i.aru = load i32, ptr %i.art, align 4, !tbaa !205
  %i.arv = xor i32 %i.aru, %i.arp
  %i.arw = xor i32 %i.arv, -1                     ; 4 uses
  %i.arx = load ptr, ptr %i.ake, align 8, !tbaa !786
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arx, i64 5400
  %i.arz = load i32, ptr %i.ary, align 8, !tbaa !789
  %i.asa = icmp eq i32 %i.arz, %i.arw
  br i1 %i.asa, label %bb.ho, label %_ZN11ImGuiWindow5GetIDEi.exit780

bb.ho:                                            ; preds = %bb.hn
  %i.asb = inttoptr i64 %indvars.iv to ptr
  call void @_ZN5ImGui15DebugHookIdInfoEjiPKvS1_(i32 noundef %i.arw, i32 noundef 4, ptr noundef %i.asb, ptr noundef null)
  br label %_ZN11ImGuiWindow5GetIDEi.exit780

_ZN11ImGuiWindow5GetIDEi.exit780:                 ; preds = %bb.hn, %bb.ho
  %i.asc = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %22, i32 noundef %i.arw, ptr noundef null, i32 noundef 2), !inline_history !1250 ; 0 uses
  %i.asd = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %22, i32 noundef %i.arw, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 264192), !inline_history !1250 ; 0 uses
  %i.ase = load i8, ptr %i.a, align 1, !tbaa !215, !range !64, !noundef !204
  %i.asf = trunc nuw i8 %i.ase to i1
  %i.asg = load i8, ptr %i.b, align 1, !range !64
  %i.ash = trunc nuw i8 %i.asg to i1              ; 2 uses
  %or.cond.i613 = select i1 %i.asf, i1 true, i1 %i.ash
  br i1 %or.cond.i613, label %bb.hp, label %.thread969

bb.hp:                                            ; preds = %_ZN11ImGuiWindow5GetIDEi.exit780
  %.not246.i = icmp eq i64 %indvars.iv, 0         ; 2 uses
  %i.asi = select i1 %.not246.i, i32 6, i32 5
  %i.asj = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.ask = getelementptr inbounds nuw i8, ptr %i.asj, i64 9400
  store i32 %i.asi, ptr %i.ask, align 8, !tbaa !1099
  br i1 %i.ash, label %bb.hq, label %.thread969

bb.hq:                                            ; preds = %bb.hp
  %i.asl = load i8, ptr %i.apf, align 1, !tbaa !215, !range !64, !noundef !204
  %i.asm = trunc nuw i8 %i.asl to i1
  br i1 %i.asm, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  %i.asn = call fastcc <2 x float> @_ZL21CalcWindowAutoFitSizeP11ImGuiWindowRK6ImVec2i(ptr noundef nonnull %i.ake, ptr noundef nonnull align 4 dereferenceable(8) %i.apj, i32 noundef -1), !inline_history !1250
  %i.aso = bitcast <2 x float> %i.asn to i64
  %i.asp = call fastcc <2 x float> @_ZL29CalcWindowSizeAfterConstraintP11ImGuiWindowRK6ImVec2(ptr noundef nonnull %i.ake, i64 %i.aso), !inline_history !1250
  store <2 x float> %i.asp, ptr %21, align 8
  call void @_ZN5ImGui11SetActiveIDEjP11ImGuiWindow(i32 noundef 0, ptr noundef null)
  br label %.thread969

bb.hs:                                            ; preds = %bb.hq
  %i.asq = select i1 %.not246.i, float %i.apq, float f0xFF7FFFFF
  %i.asr = icmp samesign ult i64 %indvars.iv, 2
  br i1 %i.asr, label %_Z7ImClampRK6ImVec2S1_S1_.exit765.thread1182, label %bb.ht

_Z7ImClampRK6ImVec2S1_S1_.exit765.thread1182:     ; preds = %bb.hs
  %i.ass = add nsw i32 %i.aqm, -1
  %i.ast = icmp ult i32 %i.ass, 2
  %i.asu = select i1 %i.ast, float %30, float f0x7F7FFFFF
  %i.asv = insertelement <2 x float> <float poison, float f0x7F7FFFFF>, float %i.asu, i64 0
  br label %_Z7ImClampRK6ImVec2S1_S1_.exit765.thread

bb.ht:                                            ; preds = %bb.hs
  %i.asw = and i32 %i.aqm, 2147483646
  %i.asx = icmp eq i32 %i.asw, 2                  ; 2 uses
  %or.cond3.i615 = and i1 %or.cond994, %i.asx     ; 2 uses
  %i.asy = add i32 %i.aqm, -1
  %i.asz = icmp ult i32 %i.asy, 2
  %.not = xor i1 %i.asx, true
  %brmerge1232 = or i1 %or.cond994, %.not
  %.sroa.6944.0.mux = select i1 %or.cond3.i615, float %.sroa.6944.0, float f0xFF7FFFFF
  %i.ata = insertelement <2 x i1> poison, i1 %i.asz, i64 0
  %i.atb = insertelement <2 x i1> %i.ata, i1 %or.cond3.i615, i64 1
  %i.atc = select <2 x i1> %i.atb, <2 x float> %i.akx, <2 x float> splat (float f0x7F7FFFFF) ; 2 uses
  br i1 %brmerge1232, label %_Z7ImClampRK6ImVec2S1_S1_.exit765.thread, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.atd = shufflevector <2 x float> %i.atc, <2 x float> %i.akx, <2 x i32> <i32 0, i32 3>
  br label %_Z7ImClampRK6ImVec2S1_S1_.exit765.thread

_Z7ImClampRK6ImVec2S1_S1_.exit765.thread:         ; preds = %bb.ht, %_Z7ImClampRK6ImVec2S1_S1_.exit765.thread1182, %bb.hu
  %i.ate = phi float [ %.sroa.6944.0, %_Z7ImClampRK6ImVec2S1_S1_.exit765.thread1182 ], [ %.sroa.6944.0.mux, %bb.ht ], [ f0xFF7FFFFF, %bb.hu ]
  %i.atf = phi <2 x float> [ %i.asv, %_Z7ImClampRK6ImVec2S1_S1_.exit765.thread1182 ], [ %i.atc, %bb.ht ], [ %i.atd, %bb.hu ] ; 2 uses
  %i.atg = fmul <2 x float> %i.apw, %i.apl
  %i.ath = load <2 x float>, ptr %i.apg, align 8, !tbaa !8
  %i.ati = load <2 x float>, ptr %i.aph, align 8, !tbaa !8
  %i.atj = fsub <2 x float> %i.ath, %i.ati
  %i.atk = fsub <2 x float> %i.atg, %i.apx
  %i.atl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.atk, <2 x float> %i.apv, <2 x float> %i.apx)
  %i.atm = fadd <2 x float> %i.atl, %i.atj        ; 3 uses
  %i.atn = insertelement <2 x float> poison, float %i.asq, i64 0
  %i.ato = insertelement <2 x float> %i.atn, float %i.ate, i64 1 ; 2 uses
  %i.atp = fcmp olt <2 x float> %i.atm, %i.ato
  %i.atq = fcmp ogt <2 x float> %i.atm, %i.atf
  %i.atr = select <2 x i1> %i.atq, <2 x float> %i.atf, <2 x float> %i.atm
  %i.ats = select <2 x i1> %i.atp, <2 x float> %i.ato, <2 x float> %i.atr
  %i.att = bitcast <2 x float> %i.ats to i64
  %i.atu = extractelement <2 x float> %i.apv, i64 0
  %i.atv = extractelement <2 x float> %i.apv, i64 1
  call fastcc void @_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_(ptr noundef nonnull %i.ake, i64 %i.att, float %i.atu, float %i.atv, ptr noundef %20, ptr noundef %21), !inline_history !1250
  br label %.thread969

.thread969:                                       ; preds = %_ZN11ImGuiWindow5GetIDEi.exit780, %bb.hp, %_Z7ImClampRK6ImVec2S1_S1_.exit765.thread, %bb.hr
  %.1.i = phi i32 [ 3, %bb.hr ], [ %.0220.i1015, %_Z7ImClampRK6ImVec2S1_S1_.exit765.thread ], [ %.0220.i1015, %bb.hp ], [ %.0220.i1015, %_ZN11ImGuiWindow5GetIDEi.exit780 ] ; 2 uses
  %i.atw = load i8, ptr %i.b, align 1, !tbaa !215, !range !64, !noundef !204
  %i.atx = trunc nuw i8 %i.atw to i1              ; 2 uses
  %i.aty = load i8, ptr %i.a, align 1, !range !64
  %i.atz = trunc nuw i8 %i.aty to i1              ; 2 uses
  %or.cond5.i614 = select i1 %i.atx, i1 true, i1 %i.atz
  br i1 %or.cond5.i614, label %.critedge.i, label %bb.hv

bb.hv:                                            ; preds = %.thread969
  %i.aua = icmp eq i64 %indvars.iv, 0
  br i1 %i.aua, label %bb.hw, label %.critedge248.i

bb.hw:                                            ; preds = %bb.hv
  %i.aub = load i32, ptr %i.anj, align 4, !tbaa !722
  %i.auc = and i32 %i.aub, 16777216
  %i.aud = icmp eq i32 %i.auc, 0
  br i1 %i.aud, label %.critedge.i, label %.critedge248.i

.critedge.i:                                      ; preds = %bb.hw, %.thread969
  %i.aue = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.auf = getelementptr inbounds nuw i8, ptr %i.aue, i64 3532
  %i.aug = select i1 %i.atz, i64 32, i64 31
  %i.auh = select i1 %i.atx, i64 33, i64 %i.aug
  %i.aui = getelementptr inbounds nuw [16 x i8], ptr %i.auf, i64 %i.auh
  %i.auj = getelementptr inbounds nuw i8, ptr %i.aue, i64 3220
  %i.auk = load float, ptr %i.auj, align 4, !tbaa !416
  %i.aul = load <4 x float>, ptr %i.aui, align 4, !tbaa !8
  %i.aum = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.auk, i64 3
  %i.aun = fmul <4 x float> %i.aul, %i.aum        ; 3 uses
  %i.auo = fcmp olt <4 x float> %i.aun, zeroinitializer
  %i.aup = fcmp ogt <4 x float> %i.aun, splat (float 1.000000e+00)
  %i.auq = select <4 x i1> %i.aup, <4 x float> splat (float 1.000000e+00), <4 x float> %i.aun
  %i.aur = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.auq, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.aus = select <4 x i1> %i.auo, <4 x float> splat (float 5.000000e-01), <4 x float> %i.aur
  %i.aut = fptosi <4 x float> %i.aus to <4 x i32>
  %i.auu = shl <4 x i32> %i.aut, <i32 0, i32 8, i32 16, i32 24>
  %i.auv = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.auu)
  %i.auw = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  store i32 %i.auv, ptr %i.auw, align 4, !tbaa !205
  br label %.critedge248.i

.critedge248.i:                                   ; preds = %.critedge.i, %bb.hw, %bb.hv
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.hj, !llvm.loop !1251

bb.hx:                                            ; preds = %._crit_edge
  %i.aux = getelementptr inbounds nuw i8, ptr %i.ake, i64 24
  %i.auy = load i32, ptr %i.aux, align 8, !tbaa !1188 ; 2 uses
  %i.auz = lshr i32 %i.auy, 1
  %i.ava = and i32 %i.auz, 2
  %i.avb = and i32 %i.auy, 8
  %i.avc = or disjoint i32 %i.ava, %i.avb
  br label %bb.hz

bb.hy:                                            ; preds = %._crit_edge
  %i.avd = getelementptr inbounds nuw i8, ptr %i.ani, i64 129
  %i.ave = load i8, ptr %i.avd, align 1, !tbaa !1249, !range !64, !noundef !204
  %i.avf = trunc nuw i8 %i.ave to i1
  %i.avg = select i1 %i.avf, i32 15, i32 0
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.hx
  %.0223.i = phi i32 [ %i.avc, %bb.hx ], [ %i.avg, %bb.hy ]
  %i.avh = getelementptr inbounds nuw i8, ptr %i.ake, i64 48 ; 5 uses
  %i.avi = getelementptr inbounds nuw i8, ptr %i.ake, i64 52 ; 2 uses
  %i.avj = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.avk = getelementptr inbounds nuw i8, ptr %i.ake, i64 264
  %i.avl = getelementptr inbounds nuw i8, ptr %i.ake, i64 272
  %i.avm = getelementptr inbounds nuw i8, ptr %i.ani, i64 5416
  %i.avn = getelementptr inbounds nuw i8, ptr %i.ani, i64 2885
  %i.avo = getelementptr inbounds nuw i8, ptr %i.ani, i64 5352
  %i.avp = getelementptr inbounds nuw i8, ptr %i.ani, i64 5372
  %i.avq = getelementptr inbounds nuw i8, ptr %i.ani, i64 4
  %i.avr = getelementptr inbounds nuw i8, ptr %i.ani, i64 5440
  %i.avs = getelementptr inbounds nuw i8, ptr %i.ani, i64 9808 ; 3 uses
  %i.avt = getelementptr inbounds nuw i8, ptr %i.ani, i64 9824 ; 3 uses
  %i.avu = getelementptr inbounds nuw i8, ptr %i.ani, i64 252
  %i.avv = getelementptr inbounds nuw i8, ptr %i.ani, i64 272
  %i.avw = getelementptr inbounds nuw i8, ptr %i.ani, i64 5456
  %i.avx = getelementptr inbounds nuw i8, ptr %i.ake, i64 72
  %31 = extractelement <2 x float> %i.akx, i64 0
  %32 = extractelement <2 x float> %i.akx, i64 1
  %33 = extractelement <2 x float> %i.akw, i64 0
  br label %bb.id

bb.ia:                                            ; preds = %bb.jc
  %i.avy = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avy, i64 5312
  %i.awa = load ptr, ptr %i.avz, align 8, !tbaa !298
  %i.awb = getelementptr inbounds nuw i8, ptr %i.awa, i64 264 ; 2 uses
  %i.awc = load i32, ptr %i.awb, align 8, !tbaa !1151 ; 2 uses
  %i.awd = icmp sgt i32 %i.awc, 1
  br i1 %i.awd, label %bb.ic, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.awe = call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.111), !inline_history !1252 ; 0 uses
  br label %_ZN5ImGui5PopIDEv.exit

bb.ic:                                            ; preds = %bb.ia
  %i.awf = add nsw i32 %i.awc, -1
  store i32 %i.awf, ptr %i.awb, align 8, !tbaa !606
  br label %_ZN5ImGui5PopIDEv.exit

_ZN5ImGui5PopIDEv.exit:                           ; preds = %bb.ib, %bb.ic
  store i32 0, ptr %i.aoy, align 8, !tbaa !1205
  %i.awg = getelementptr inbounds nuw i8, ptr %i.ani, i64 8712
  %i.awh = load ptr, ptr %i.awg, align 8, !tbaa !1045 ; 2 uses
  %.not241.i = icmp eq ptr %i.awh, null
  br i1 %.not241.i, label %bb.ji, label %bb.jd

bb.id:                                            ; preds = %bb.hz, %bb.jc
  %indvars.iv1024 = phi i64 [ 0, %bb.hz ], [ %indvars.iv.next1025, %bb.jc ] ; 9 uses
  %.2.i1019 = phi i32 [ %.0220.i.lcssa, %bb.hz ], [ %.5.i, %bb.jc ] ; 8 uses
  %.19521017 = phi i32 [ -1, %bb.hz ], [ %.3954, %bb.jc ] ; 2 uses
  %.19571016 = phi i32 [ -1, %bb.hz ], [ %.3959, %bb.jc ] ; 2 uses
  %i.awi = trunc nuw nsw i64 %indvars.iv1024 to i32 ; 5 uses
  %i.awj = shl nuw nsw i32 1, %i.awi
  %i.awk = and i32 %i.awj, %.0223.i
  %i.awl = icmp eq i32 %i.awk, 0
  br i1 %i.awl, label %bb.jc, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.awm = getelementptr inbounds nuw [28 x i8], ptr @_ZL17resize_border_def, i64 %indvars.iv1024 ; 2 uses
  %i.awn = icmp eq i64 %indvars.iv1024, 0
  %i.awo = icmp eq i64 %indvars.iv1024, 1
  %i.awp = icmp samesign ugt i64 %indvars.iv1024, 1 ; 11 uses
  %i.awq = zext i1 %i.awp to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #41
  %i.awr = load float, ptr %i.aom, align 4, !tbaa !642 ; 9 uses
  %i.aws = fcmp oeq float %i.awr, 0.000000e+00
  %i.awt = load <2 x float>, ptr %i.alz, align 8, !tbaa !8 ; 7 uses
  %i.awu = load <2 x float>, ptr %i.avh, align 8, !tbaa !8
  %i.awv = fadd <2 x float> %i.awt, %i.awu        ; 2 uses
  %i.aww = fadd <2 x float> %i.awv, splat (float -1.000000e+00)
  %.sroa.9.0.i = select i1 %i.aws, <2 x float> %i.aww, <2 x float> %i.awv ; 6 uses
  switch i32 %i.awi, label %default.unreachable [
    i32 0, label %bb.if
    i32 1, label %bb.ig
    i32 2, label %bb.ih
    i32 3, label %bb.ii
  ]

bb.if:                                            ; preds = %bb.ie
  %i.awx = extractelement <2 x float> %i.awt, i64 0 ; 2 uses
  %i.awy = fsub float %i.awx, %i.awr
  %i.awz = extractelement <2 x float> %i.awt, i64 1
  %i.axa = fadd float %i.aol, %i.awz
  %i.axb = fadd float %i.awr, %i.awx
  %.sroa.9.12.vec.extract43.i = extractelement <2 x float> %.sroa.9.0.i, i64 1
  %i.axc = fsub float %.sroa.9.12.vec.extract43.i, %i.aol
  br label %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit

bb.ig:                                            ; preds = %bb.ie
  %.sroa.9.8.vec.extract33.i = extractelement <2 x float> %.sroa.9.0.i, i64 0 ; 2 uses
  %i.axd = fsub float %.sroa.9.8.vec.extract33.i, %i.awr
  %i.axe = extractelement <2 x float> %i.awt, i64 1
  %i.axf = fadd float %i.aol, %i.axe
  %i.axg = fadd float %i.awr, %.sroa.9.8.vec.extract33.i
  %.sroa.9.12.vec.extract41.i = extractelement <2 x float> %.sroa.9.0.i, i64 1
  %i.axh = fsub float %.sroa.9.12.vec.extract41.i, %i.aol
  br label %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit

bb.ih:                                            ; preds = %bb.ie
  %i.axi = extractelement <2 x float> %i.awt, i64 0
  %i.axj = fadd float %i.aol, %i.axi
  %i.axk = extractelement <2 x float> %i.awt, i64 1 ; 2 uses
  %i.axl = fsub float %i.axk, %i.awr
  %.sroa.9.8.vec.extract31.i = extractelement <2 x float> %.sroa.9.0.i, i64 0
  %i.axm = fsub float %.sroa.9.8.vec.extract31.i, %i.aol
  %i.axn = fadd float %i.awr, %i.axk
  br label %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit

bb.ii:                                            ; preds = %bb.ie
  %i.axo = extractelement <2 x float> %i.awt, i64 0
  %i.axp = fadd float %i.aol, %i.axo
  %.sroa.9.12.vec.extract39.i = extractelement <2 x float> %.sroa.9.0.i, i64 1 ; 2 uses
  %i.axq = fsub float %.sroa.9.12.vec.extract39.i, %i.awr
  %.sroa.9.8.vec.extract.i = extractelement <2 x float> %.sroa.9.0.i, i64 0
  %i.axr = fsub float %.sroa.9.8.vec.extract.i, %i.aol
  %i.axs = fadd float %i.awr, %.sroa.9.12.vec.extract39.i
  br label %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit

default.unreachable:                              ; preds = %bb.ie
  unreachable

_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit:   ; preds = %bb.if, %bb.ig, %bb.ih, %bb.ii
  %.sink1201 = phi float [ %i.awy, %bb.if ], [ %i.axd, %bb.ig ], [ %i.axj, %bb.ih ], [ %i.axp, %bb.ii ]
  %.sink1200 = phi float [ %i.axa, %bb.if ], [ %i.axf, %bb.ig ], [ %i.axl, %bb.ih ], [ %i.axq, %bb.ii ]
  %.sink1199 = phi float [ %i.axb, %bb.if ], [ %i.axg, %bb.ig ], [ %i.axm, %bb.ih ], [ %i.axr, %bb.ii ]
  %.sink1198 = phi float [ %i.axc, %bb.if ], [ %i.axh, %bb.ig ], [ %i.axn, %bb.ih ], [ %i.axs, %bb.ii ]
  %.sroa.044.0.vec.insert.i = insertelement <2 x float> poison, float %.sink1201, i64 0
  %.sroa.044.4.vec.insert.i = insertelement <2 x float> %.sroa.044.0.vec.insert.i, float %.sink1200, i64 1
  %.sroa.10.8.vec.insert.i = insertelement <2 x float> poison, float %.sink1199, i64 0
  %.sroa.10.12.vec.insert.i = insertelement <2 x float> %.sroa.10.8.vec.insert.i, float %.sink1198, i64 1
  store <2 x float> %.sroa.044.4.vec.insert.i, ptr %23, align 8
  store <2 x float> %.sroa.10.12.vec.insert.i, ptr %i.avj, align 8
  %i.axt = or disjoint i64 %indvars.iv1024, 4     ; 2 uses
  %i.axu = load ptr, ptr %i.avl, align 8, !tbaa !604
  %i.axv = load i32, ptr %i.avk, align 8, !tbaa !606
  %i.axw = sext i32 %i.axv to i64
  %i.axx = getelementptr [4 x i8], ptr %i.axu, i64 %i.axw
  %i.axy = getelementptr i8, ptr %i.axx, i64 -4
  %i.axz = load i32, ptr %i.axy, align 4, !tbaa !205
  %i.aya = xor i32 %i.axz, -1                     ; 2 uses
  %i.ayb = lshr i32 %i.aya, 8
  %.masked = and i32 %i.aya, 255
  %i.ayc = zext nneg i32 %.masked to i64
  %i.ayd = xor i64 %i.axt, %i.ayc
  %i.aye = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.ayd
  %i.ayf = load i32, ptr %i.aye, align 4, !tbaa !205
  %i.ayg = xor i32 %i.ayf, %i.ayb                 ; 2 uses
  %i.ayh = lshr i32 %i.ayg, 8
  %i.ayi = and i32 %i.ayg, 255
  %i.ayj = zext nneg i32 %i.ayi to i64
  %i.ayk = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.ayj
  %i.ayl = load i32, ptr %i.ayk, align 4, !tbaa !205
  %i.aym = xor i32 %i.ayh, %i.ayl                 ; 2 uses
  %i.ayn = lshr i32 %i.aym, 8
  %i.ayo = and i32 %i.aym, 255
  %i.ayp = zext nneg i32 %i.ayo to i64
  %i.ayq = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.ayp
  %i.ayr = load i32, ptr %i.ayq, align 4, !tbaa !205
  %i.ays = xor i32 %i.ayn, %i.ayr                 ; 2 uses
  %i.ayt = lshr i32 %i.ays, 8
  %i.ayu = and i32 %i.ays, 255
  %i.ayv = zext nneg i32 %i.ayu to i64
  %i.ayw = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.ayv
  %i.ayx = load i32, ptr %i.ayw, align 4, !tbaa !205
  %i.ayy = xor i32 %i.ayx, %i.ayt
  %i.ayz = xor i32 %i.ayy, -1                     ; 4 uses
  %i.aza = load ptr, ptr %i.ake, align 8, !tbaa !786
  %i.azb = getelementptr inbounds nuw i8, ptr %i.aza, i64 5400
  %i.azc = load i32, ptr %i.azb, align 8, !tbaa !789
  %i.azd = icmp eq i32 %i.azc, %i.ayz
  br i1 %i.azd, label %bb.ij, label %_ZN11ImGuiWindow5GetIDEi.exit

bb.ij:                                            ; preds = %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit
  %i.aze = inttoptr i64 %i.axt to ptr
  call void @_ZN5ImGui15DebugHookIdInfoEjiPKvS1_(i32 noundef %i.ayz, i32 noundef 4, ptr noundef nonnull %i.aze, ptr noundef null)
  br label %_ZN11ImGuiWindow5GetIDEi.exit

_ZN11ImGuiWindow5GetIDEi.exit:                    ; preds = %_ZL19GetResizeBorderRectP11ImGuiWindowiff.exit, %bb.ij
  %i.azf = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %23, i32 noundef %i.ayz, ptr noundef null, i32 noundef 2), !inline_history !1250 ; 0 uses
  %i.azg = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %23, i32 noundef %i.ayz, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef 264192), !inline_history !1250 ; 0 uses
  %i.azh = load i8, ptr %i.c, align 1, !tbaa !215, !range !64, !noundef !204
  %i.azi = trunc nuw i8 %i.azh to i1
  br i1 %i.azi, label %bb.ik, label %bb.im

bb.ik:                                            ; preds = %_ZN11ImGuiWindow5GetIDEi.exit
  %i.azj = load float, ptr %i.avm, align 8, !tbaa !983
  %i.azk = fcmp ugt float %i.azj, 4.000000e-02
  br i1 %i.azk, label %.thread1185, label %bb.il

.thread1185:                                      ; preds = %bb.ik
  %i.azl = load i8, ptr %i.d, align 1, !range !64
  %i.azm = trunc nuw i8 %i.azl to i1
  %i.azn = select i1 %i.awp, i32 3, i32 4
  %i.azo = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.azp = getelementptr inbounds nuw i8, ptr %i.azo, i64 9400
  store i32 %i.azn, ptr %i.azp, align 8, !tbaa !1099
  br i1 %i.azm, label %bb.io, label %.thread972

bb.il:                                            ; preds = %bb.ik
  store i8 0, ptr %i.c, align 1, !tbaa !215
  br label %bb.im

bb.im:                                            ; preds = %bb.il, %_ZN11ImGuiWindow5GetIDEi.exit
  %i.azq = load i8, ptr %i.d, align 1, !range !64
  %i.azr = trunc nuw i8 %i.azq to i1
  br i1 %i.azr, label %bb.in, label %.thread972

bb.in:                                            ; preds = %bb.im
  %i.azs = select i1 %i.awp, i32 3, i32 4
  %i.azt = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azt, i64 9400
  store i32 %i.azs, ptr %i.azu, align 8, !tbaa !1099
  br label %bb.io

bb.io:                                            ; preds = %bb.in, %.thread1185
  %i.azv = load i8, ptr %i.avn, align 1, !tbaa !215, !range !64, !noundef !204
  %i.azw = trunc nuw i8 %i.azv to i1
  br i1 %i.azw, label %bb.ip, label %bb.is

bb.ip:                                            ; preds = %bb.io
  switch i32 %i.awi, label %bb.ir [
    i32 3, label %bb.iq
    i32 1, label %bb.iq
  ]

bb.iq:                                            ; preds = %bb.ip, %bb.ip
  %i.azx = shl nuw nsw i32 1, %i.awq              ; 2 uses
  %i.azy = call fastcc <2 x float> @_ZL21CalcWindowAutoFitSizeP11ImGuiWindowRK6ImVec2i(ptr noundef nonnull %i.ake, ptr noundef nonnull align 4 dereferenceable(8) %i.avx, i32 noundef %i.azx), !inline_history !1250
  %i.azz = bitcast <2 x float> %i.azy to i64
  %i.baa = call fastcc <2 x float> @_ZL29CalcWindowSizeAfterConstraintP11ImGuiWindowRK6ImVec2(ptr noundef nonnull %i.ake, i64 %i.azz), !inline_history !1250 ; 2 uses
  %.sroa.0915.4.vec.extract = extractelement <2 x float> %i.baa, i64 1
  %.sroa.0915.0.vec.extract = extractelement <2 x float> %i.baa, i64 0
  %.sroa.speculated916 = select i1 %i.awp, float %.sroa.0915.4.vec.extract, float %.sroa.0915.0.vec.extract
  %.sroa.sel940 = select i1 %i.awp, ptr %i.aox, ptr %21
  store float %.sroa.speculated916, ptr %.sroa.sel940, align 4, !tbaa !8
  %i.bab = or i32 %i.azx, %.2.i1019
  store i8 0, ptr %i.d, align 1, !tbaa !215
  store i8 0, ptr %i.c, align 1, !tbaa !215
  br label %bb.ir

bb.ir:                                            ; preds = %bb.iq, %bb.ip
  %.3.i = phi i32 [ %i.bab, %bb.iq ], [ %.2.i1019, %bb.ip ]
  call void @_ZN5ImGui11SetActiveIDEjP11ImGuiWindow(i32 noundef 0, ptr noundef null)
  br label %.thread972

bb.is:                                            ; preds = %bb.io
  %i.bac = load ptr, ptr %i.avo, align 8, !tbaa !1103 ; 3 uses
  %.not243.i = icmp eq ptr %i.bac, null
  br i1 %.not243.i, label %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.bad = load i32, ptr %i.avp, align 4, !tbaa !643
  %i.bae = load i32, ptr %i.avq, align 4, !tbaa !194
  %i.baf = icmp eq i32 %i.bad, %i.bae
  br i1 %i.baf, label %.lr.ph.split.i.i, label %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit

.lr.ph.split.i.i:                                 ; preds = %bb.it, %.lr.ph.split.i.i
  %.068.i.i = phi ptr [ %i.bah, %.lr.ph.split.i.i ], [ %i.ake, %bb.it ] ; 4 uses
  %i.bag = getelementptr inbounds nuw i8, ptr %.068.i.i, i64 960
  %i.bah = load ptr, ptr %i.bag, align 8, !tbaa !847 ; 2 uses
  %.not.i.i749 = icmp eq ptr %.068.i.i, %i.bah
  br i1 %.not.i.i749, label %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.i, label %.lr.ph.split.i.i, !llvm.loop !1253

_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.i: ; preds = %.lr.ph.split.i.i
  %i.bai = icmp eq ptr %.068.i.i, %i.bac
  br i1 %i.bai, label %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit.thread, label %.lr.ph.i750

.lr.ph.i750:                                      ; preds = %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.i, %bb.iv
  %.01014.i = phi ptr [ %i.bam, %bb.iv ], [ %i.ake, %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.i ] ; 3 uses
  %i.baj = icmp eq ptr %.01014.i, %i.bac
  br i1 %i.baj, label %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit.thread, label %bb.iu

bb.iu:                                            ; preds = %.lr.ph.i750
  %i.bak = icmp eq ptr %.01014.i, %.068.i.i
  br i1 %i.bak, label %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.bal = getelementptr inbounds nuw i8, ptr %.01014.i, i64 944
  %i.bam = load ptr, ptr %i.bal, align 8, !tbaa !1043 ; 2 uses
  %.not.i751 = icmp eq ptr %i.bam, null
  br i1 %.not.i751, label %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit, label %.lr.ph.i750, !llvm.loop !1254

_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit: ; preds = %bb.iv, %bb.iu, %bb.it, %bb.is
  %i.ban = load i8, ptr %i.avr, align 8, !tbaa !827, !range !64, !noundef !204
  %i.bao = trunc nuw i8 %i.ban to i1
  br i1 %i.bao, label %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit.thread, label %bb.iw

_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit.thread: ; preds = %.lr.ph.i750, %_ZL21GetCombinedRootWindowP11ImGuiWindowb.exit.i, %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.avs, ptr noundef nonnull align 8 dereferenceable(16) %23, i64 16, i1 false), !tbaa.struct !419
  store i8 0, ptr %i.avt, align 8, !tbaa !674
  br label %bb.iw

bb.iw:                                            ; preds = %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit.thread, %_ZN5ImGui15IsWindowChildOfEP11ImGuiWindowS1_b.exit
  %i.bap = load i32, ptr %i.anj, align 4, !tbaa !722
  %i.baq = and i32 %i.bap, 16777216
  %.not244.i = icmp eq i32 %i.baq, 0
  br i1 %.not244.i, label %bb.iz, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.bar = load i128, ptr %i.avs, align 1
  %i.bas = load i128, ptr %23, align 8
  %i.bat = icmp ne i128 %i.bar, %i.bas
  %i.bau = zext i1 %i.bat to i32
  %.not245.i = icmp eq i32 %i.bau, 0
  br i1 %.not245.i, label %bb.iz, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  store i8 1, ptr %i.avt, align 8, !tbaa !674
  br label %bb.iz

bb.iz:                                            ; preds = %bb.iy, %bb.ix, %bb.iw
  %i.bav = getelementptr inbounds nuw i8, ptr %i.awm, i64 8
  %i.baw = getelementptr inbounds nuw i8, ptr %i.awm, i64 16
  %i.bax = load <2 x float>, ptr %i.bav, align 4, !tbaa !8 ; 2 uses
  %i.bay = load <2 x float>, ptr %i.baw, align 4, !tbaa !8 ; 2 uses
  %i.baz = fcmp olt <2 x float> %i.bax, %i.bay
  %i.bba = select <2 x i1> %i.baz, <2 x float> %i.bax, <2 x float> %i.bay ; 3 uses
  %i.bbb = load <2 x float>, ptr %i.avh, align 8, !tbaa !8
  %i.bbc = fmul <2 x float> %i.bba, %i.bbb
  %i.bbd = load <2 x float>, ptr %i.alz, align 8  ; 3 uses
  %i.bbe = fadd <2 x float> %i.bbc, %i.bbd        ; 2 uses
  %i.bbf = zext i1 %i.awp to i64                  ; 3 uses
  %i.bbg = extractelement <2 x float> %i.bbe, i64 0
  %i.bbh = extractelement <2 x float> %i.bbe, i64 1
  %.sroa.speculated = select i1 %i.awp, float %i.bbh, float %i.bbg
  %i.bbi = getelementptr inbounds nuw [4 x i8], ptr %i.avu, i64 %i.bbf
  %i.bbj = load float, ptr %i.bbi, align 4, !tbaa !8 ; 3 uses
  %i.bbk = fadd float %i.bbj, %.sroa.speculated   ; 3 uses
  %i.bbl = getelementptr inbounds nuw [4 x i8], ptr %i.avv, i64 %i.bbf
  %i.bbm = load float, ptr %i.bbl, align 4, !tbaa !8
  %i.bbn = getelementptr inbounds nuw [4 x i8], ptr %i.avw, i64 %i.bbf
  %i.bbo = load float, ptr %i.bbn, align 4, !tbaa !8
  %i.bbp = fsub float %i.bbm, %i.bbo
  %i.bbq = load float, ptr %i.aom, align 4, !tbaa !642
  %i.bbr = fadd float %i.bbp, %i.bbq              ; 3 uses
  %34 = load i8, ptr %i.avt, align 8, !tbaa !674, !range !64, !noundef !204
  %35 = trunc nuw i8 %34 to i1
  %36 = extractelement <2 x float> %i.bbd, i64 1  ; 2 uses
  %. = select i1 %i.awp, float %i.bbk, float %36
  %37 = extractelement <2 x float> %i.bbd, i64 0  ; 2 uses
  %.1214 = select i1 %i.awp, float %37, float %i.bbk
  %.1215 = select i1 %i.awp, float %i.bbr, float %36
  %.1216 = select i1 %i.awp, float %37, float %i.bbr
  br i1 %35, label %bb.ja, label %_Z7ImClampRK6ImVec2S1_S1_.exit

bb.ja:                                            ; preds = %bb.iz
  %i.bbs = fcmp oeq float %i.bbj, 0.000000e+00
  br i1 %i.bbs, label %.thread972, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.bbt = fcmp ogt float %i.bbj, 0.000000e+00
  %i.bbu = fcmp ule float %i.bbk, %i.bbr
  %i.bbv = xor i1 %i.bbt, %i.bbu
  br i1 %i.bbv, label %.thread972, label %_Z7ImClampRK6ImVec2S1_S1_.exit

_Z7ImClampRK6ImVec2S1_S1_.exit:                   ; preds = %bb.iz, %bb.jb
  %38 = phi float [ %.1215, %bb.iz ], [ %., %bb.jb ] ; 3 uses
  %39 = phi float [ %.1216, %bb.iz ], [ %.1214, %bb.jb ] ; 3 uses
  %40 = select i1 %i.awo, float %33, float f0xFF7FFFFF ; 2 uses
  %41 = fcmp ogt float %40, %39
  %42 = select i1 %i.awn, float %31, float f0x7F7FFFFF ; 2 uses
  %43 = fcmp olt float %42, %39
  %..i738 = select i1 %43, float %42, float %39
  %44 = select i1 %41, float %40, float %..i738
  %i.bbw = icmp eq i64 %indvars.iv1024, 3
  %i.bbx = icmp eq i64 %indvars.iv1024, 2         ; 2 uses
  %or.cond13.i = and i1 %or.cond994, %i.bbx
  %or.cond249.i = or i1 %i.bbw, %or.cond13.i
  %45 = select i1 %or.cond249.i, float %.sroa.6944.0, float f0xFF7FFFFF ; 2 uses
  %46 = fcmp ogt float %45, %38
  %47 = select i1 %i.bbx, float %32, float f0x7F7FFFFF ; 2 uses
  %48 = fcmp olt float %47, %38
  %.19.i = select i1 %48, float %47, float %38
  %49 = select i1 %46, float %45, float %.19.i
  %.sroa.0908.sroa.8.0.extract.trunc = bitcast float %49 to i32
  %.sroa.0908.sroa.0.0.extract.trunc = bitcast float %44 to i32
  %.sroa.0908.sroa.8.0.insert.ext = zext i32 %.sroa.0908.sroa.8.0.extract.trunc to i64
  %.sroa.0908.sroa.8.0.insert.shift = shl nuw i64 %.sroa.0908.sroa.8.0.insert.ext, 32
  %.sroa.0908.sroa.0.0.insert.ext = zext i32 %.sroa.0908.sroa.0.0.extract.trunc to i64
  %.sroa.0908.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0908.sroa.8.0.insert.shift, %.sroa.0908.sroa.0.0.insert.ext
  %50 = extractelement <2 x float> %i.bba, i64 0
  %51 = extractelement <2 x float> %i.bba, i64 1
  call fastcc void @_ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_(ptr noundef nonnull %i.ake, i64 %.sroa.0908.sroa.0.0.insert.insert, float %50, float %51, ptr noundef %20, ptr noundef %21), !inline_history !1250
  br label %.thread972

.thread972:                                       ; preds = %.thread1185, %bb.ja, %bb.jb, %bb.im, %_Z7ImClampRK6ImVec2S1_S1_.exit, %bb.ir
  %.4.i = phi i32 [ %.3.i, %bb.ir ], [ %.2.i1019, %bb.im ], [ %.2.i1019, %_Z7ImClampRK6ImVec2S1_S1_.exit ], [ %.2.i1019, %.thread1185 ], [ %.2.i1019, %bb.jb ], [ %.2.i1019, %bb.ja ]
  %i.bby = load i8, ptr %i.c, align 1, !tbaa !215, !range !64, !noundef !204
  %i.bbz = trunc nuw i8 %i.bby to i1
  %spec.select995 = select i1 %i.bbz, i32 %i.awi, i32 %.19571016
  %i.bca = load i8, ptr %i.d, align 1, !tbaa !215, !range !64, !noundef !204
  %i.bcb = trunc nuw i8 %i.bca to i1
  %.2953 = select i1 %i.bcb, i32 %i.awi, i32 %.19521017
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  br label %bb.jc

bb.jc:                                            ; preds = %.thread972, %bb.id
  %.3959 = phi i32 [ %.19571016, %bb.id ], [ %spec.select995, %.thread972 ] ; 3 uses
  %.3954 = phi i32 [ %.19521017, %bb.id ], [ %.2953, %.thread972 ] ; 5 uses
  %.5.i = phi i32 [ %.2.i1019, %bb.id ], [ %.4.i, %.thread972 ] ; 4 uses
  %indvars.iv.next1025 = add nuw nsw i64 %indvars.iv1024, 1 ; 2 uses
  %exitcond1027.not = icmp eq i64 %indvars.iv.next1025, 4
  br i1 %exitcond1027.not, label %bb.ia, label %bb.id, !llvm.loop !1255

bb.jd:                                            ; preds = %_ZN5ImGui5PopIDEv.exit
  %i.bcc = getelementptr inbounds nuw i8, ptr %i.awh, i64 960
  %i.bcd = load ptr, ptr %i.bcc, align 8, !tbaa !847
  %i.bce = icmp eq ptr %i.bcd, %i.ake
  br i1 %i.bce, label %bb.je, label %bb.ji

bb.je:                                            ; preds = %bb.jd
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.ani, i64 8304
  %i.bcg = load i32, ptr %i.bcf, align 8, !tbaa !653
  switch i32 %i.bcg, label %.thread975 [
    i32 2, label %bb.jf
    i32 3, label %.thread975.sink.split
  ]

bb.jf:                                            ; preds = %bb.je
  %i.bch = getelementptr inbounds nuw i8, ptr %i.ani, i64 301
  %i.bci = load i8, ptr %i.bch, align 1, !tbaa !1086, !range !64, !noundef !204
  %i.bcj = trunc nuw i8 %i.bci to i1
  br i1 %i.bcj, label %.thread975.sink.split, label %.thread975

.thread975.sink.split:                            ; preds = %bb.je, %bb.jf
  %.sink1219 = phi i64 [ 352, %bb.jf ], [ 2352, %bb.je ]
  %.sink1216 = phi i64 [ 336, %bb.jf ], [ 2336, %bb.je ]
  %.sink1213 = phi i64 [ 384, %bb.jf ], [ 2384, %bb.je ]
  %.sink1208 = phi i64 [ 368, %bb.jf ], [ 2368, %bb.je ]
  %i.bck = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 4 uses
  %i.bcl = getelementptr i8, ptr %i.bck, i64 %.sink1219
  %i.bcm = load float, ptr %i.bcl, align 4, !tbaa !997
  %i.bcn = getelementptr i8, ptr %i.bck, i64 %.sink1216
  %i.bco = load float, ptr %i.bcn, align 4, !tbaa !997
  %i.bcp = getelementptr i8, ptr %i.bck, i64 %.sink1213
  %i.bcq = load float, ptr %i.bcp, align 4, !tbaa !997
  %i.bcr = fsub float %i.bcm, %i.bco
  %i.bcs = getelementptr i8, ptr %i.bck, i64 %.sink1208
  %i.bct = load float, ptr %i.bcs, align 4, !tbaa !997
  %i.bcu = fsub float %i.bcq, %i.bct
  %.sroa.0.0.vec.insert.i733 = insertelement <2 x float> poison, float %i.bcr, i64 0
  %.sroa.0.4.vec.insert.i734 = insertelement <2 x float> %.sroa.0.0.vec.insert.i733, float %i.bcu, i64 1
  br label %.thread975

.thread975:                                       ; preds = %.thread975.sink.split, %bb.je, %bb.jf
  %.sroa.0892.1 = phi <2 x float> [ zeroinitializer, %bb.jf ], [ zeroinitializer, %bb.je ], [ %.sroa.0.4.vec.insert.i734, %.thread975.sink.split ] ; 3 uses
  %.sroa.0892.0.vec.extract = extractelement <2 x float> %.sroa.0892.1, i64 0
  %i.bcv = fcmp une float %.sroa.0892.0.vec.extract, 0.000000e+00
  %.sroa.0892.4.vec.extract = extractelement <2 x float> %.sroa.0892.1, i64 1
  %i.bcw = fcmp une float %.sroa.0892.4.vec.extract, 0.000000e+00
  %or.cond16.i = select i1 %i.bcv, i1 true, i1 %i.bcw
  br i1 %or.cond16.i, label %bb.jg, label %bb.ji

bb.jg:                                            ; preds = %.thread975
  %i.bcx = getelementptr inbounds nuw i8, ptr %i.ani, i64 64
  %i.bcy = load float, ptr %i.bcx, align 8, !tbaa !912
  %i.bcz = fmul float %i.bcy, 6.000000e+02
  %i.bda = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.bda, i64 4528
  %i.bdc = load float, ptr %i.bdb, align 8, !tbaa !479
  %i.bdd = fmul float %i.bcz, %i.bdc
  %i.bde = getelementptr inbounds nuw i8, ptr %i.ani, i64 8764 ; 5 uses
  %i.bdf = getelementptr inbounds nuw i8, ptr %i.ani, i64 8748
  store i8 0, ptr %i.bdf, align 4, !tbaa !1049
  %i.bdg = getelementptr inbounds nuw i8, ptr %i.ani, i64 8217
  store i8 1, ptr %i.bdg, align 1, !tbaa !850
  %i.bdh = insertelement <2 x float> poison, float %i.bdd, i64 0
  %i.bdi = shufflevector <2 x float> %i.bdh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bdj = fmul <2 x float> %.sroa.0892.1, %i.bdi
  %i.bdk = load <2 x float>, ptr %i.bde, align 4, !tbaa !8
  %i.bdl = fadd <2 x float> %i.bdk, %i.bdj        ; 3 uses
  store <2 x float> %i.bdl, ptr %i.bde, align 4, !tbaa !8
  %i.bdm = load <2 x float>, ptr %i.alz, align 8, !tbaa !8
  %52 = insertelement <2 x float> %i.akw, float %.sroa.6944.0, i64 1
  %i.bdn = fsub <2 x float> %52, %i.bdm
  %i.bdo = load <2 x float>, ptr %i.avh, align 8, !tbaa !8
  %i.bdp = fsub <2 x float> %i.bdn, %i.bdo        ; 2 uses
  %i.bdq = fcmp oge <2 x float> %i.bdl, %i.bdp
  %i.bdr = select <2 x i1> %i.bdq, <2 x float> %i.bdl, <2 x float> %i.bdp ; 2 uses
  store <2 x float> %i.bdr, ptr %i.bde, align 4
  %i.bds = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 33, float noundef 1.000000e+00), !inline_history !1250
  store i32 %i.bds, ptr %i.i, align 16, !tbaa !205
  %i.bdt = fptosi <2 x float> %i.bdr to <2 x i32> ; 2 uses
  %i.bdu = icmp ne <2 x i32> %i.bdt, zeroinitializer ; 2 uses
  %i.bdv = extractelement <2 x i1> %i.bdu, i64 0
  %i.bdw = extractelement <2 x i1> %i.bdu, i64 1
  %or.cond19.i = select i1 %i.bdv, i1 true, i1 %i.bdw
  br i1 %or.cond19.i, label %bb.jh, label %bb.ji

bb.jh:                                            ; preds = %bb.jg
  %i.bdx = sitofp <2 x i32> %i.bdt to <2 x float> ; 2 uses
  %i.bdy = getelementptr inbounds nuw i8, ptr %i.ake, i64 56
  %i.bdz = load <2 x float>, ptr %i.bdy, align 8, !tbaa !8
  %i.bea = fadd <2 x float> %i.bdz, %i.bdx
  %i.beb = bitcast <2 x float> %i.bea to i64
  %i.bec = call fastcc <2 x float> @_ZL29CalcWindowSizeAfterConstraintP11ImGuiWindowRK6ImVec2(ptr noundef nonnull %i.ake, i64 %i.beb), !inline_history !1250
  store <2 x float> %i.bec, ptr %21, align 8
  %i.bed = load <2 x float>, ptr %i.bde, align 4, !tbaa !8
  %i.bee = fsub <2 x float> %i.bed, %i.bdx
  store <2 x float> %i.bee, ptr %i.bde, align 4, !tbaa !8
  br label %bb.ji

bb.ji:                                            ; preds = %.thread975, %bb.jh, %bb.jg, %bb.jd, %_ZN5ImGui5PopIDEv.exit
  %.sroa.022.0.copyload.i = load float, ptr %i.alz, align 8, !tbaa !8 ; 4 uses
  %.sroa.423.0.copyload.i = load float, ptr %i.ama, align 4, !tbaa !8 ; 4 uses
  %i.bef = getelementptr inbounds nuw i8, ptr %i.ake, i64 56 ; 2 uses
  %.sroa.020.0.copyload.i = load float, ptr %i.bef, align 8, !tbaa !8 ; 4 uses
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ake, i64 60 ; 2 uses
  %.sroa.421.0.copyload.i = load float, ptr %.sroa.421.0..sroa_idx.i, align 4, !tbaa !8 ; 4 uses
  %i.beg = load float, ptr %21, align 8, !tbaa !227 ; 6 uses
  %i.beh = fcmp une float %i.beg, f0x7F7FFFFF
  br i1 %i.beh, label %bb.jj, label %bb.jl

bb.jj:                                            ; preds = %bb.ji
  %i.bei = load float, ptr %i.avh, align 8, !tbaa !723
  %i.bej = fcmp une float %i.bei, %i.beg
  %i.bek = fcmp une float %.sroa.020.0.copyload.i, %i.beg
  %or.cond250.i = select i1 %i.bej, i1 true, i1 %i.bek
  br i1 %or.cond250.i, label %bb.jk, label %bb.jl

bb.jk:                                            ; preds = %bb.jj
  store float %i.beg, ptr %i.bef, align 8, !tbaa !910
  store float %i.beg, ptr %i.avh, align 8, !tbaa !723
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %bb.jj, %bb.ji
  %i.bel = phi float [ %i.beg, %bb.jk ], [ %.sroa.020.0.copyload.i, %bb.jj ], [ %.sroa.020.0.copyload.i, %bb.ji ]
  %i.bem = load float, ptr %i.aox, align 4, !tbaa !228 ; 6 uses
  %i.ben = fcmp une float %i.bem, f0x7F7FFFFF
  br i1 %i.ben, label %bb.jm, label %bb.jo

bb.jm:                                            ; preds = %bb.jl
  %i.beo = load float, ptr %i.avi, align 4, !tbaa !724
  %i.bep = fcmp une float %i.beo, %i.bem
  %i.beq = fcmp une float %.sroa.421.0.copyload.i, %i.bem
  %or.cond996 = select i1 %i.bep, i1 true, i1 %i.beq
  br i1 %or.cond996, label %bb.jn, label %bb.jo

bb.jn:                                            ; preds = %bb.jm
  store float %i.bem, ptr %.sroa.421.0..sroa_idx.i, align 4, !tbaa !1210
  store float %i.bem, ptr %i.avi, align 4, !tbaa !724
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jm, %bb.jn, %bb.jl
  %i.ber = phi float [ %.sroa.421.0.copyload.i, %bb.jm ], [ %i.bem, %bb.jn ], [ %.sroa.421.0.copyload.i, %bb.jl ]
  %i.bes = load float, ptr %20, align 8, !tbaa !227 ; 2 uses
  %i.bet = fcmp une float %i.bes, f0x7F7FFFFF
  br i1 %i.bet, label %bb.jp, label %bb.jr

bb.jp:                                            ; preds = %bb.jo
  %i.beu = fptosi float %i.bes to i32
  %i.bev = sitofp i32 %i.beu to float             ; 3 uses
  %i.bew = fcmp une float %.sroa.022.0.copyload.i, %i.bev
  br i1 %i.bew, label %bb.jq, label %bb.jr

bb.jq:                                            ; preds = %bb.jp
  store float %i.bev, ptr %i.alz, align 8, !tbaa !870
  br label %bb.jr

bb.jr:                                            ; preds = %bb.jq, %bb.jp, %bb.jo
  %i.bex = phi float [ %i.bev, %bb.jq ], [ %.sroa.022.0.copyload.i, %bb.jp ], [ %.sroa.022.0.copyload.i, %bb.jo ]
  %i.bey = load float, ptr %i.aow, align 4, !tbaa !228 ; 2 uses
  %i.bez = fcmp une float %i.bey, f0x7F7FFFFF
  br i1 %i.bez, label %bb.js, label %bb.ju

bb.js:                                            ; preds = %bb.jr
  %i.bfa = fptosi float %i.bey to i32
  %i.bfb = sitofp i32 %i.bfa to float             ; 3 uses
  %i.bfc = fcmp une float %.sroa.423.0.copyload.i, %i.bfb
  br i1 %i.bfc, label %bb.jt, label %bb.ju

bb.jt:                                            ; preds = %bb.js
  store float %i.bfb, ptr %i.ama, align 4, !tbaa !929
  br label %bb.ju

bb.ju:                                            ; preds = %bb.jt, %bb.js, %bb.jr
  %i.bfd = phi float [ %i.bfb, %bb.jt ], [ %.sroa.423.0.copyload.i, %bb.js ], [ %.sroa.423.0.copyload.i, %bb.jr ]
  %i.bfe = fcmp une float %.sroa.022.0.copyload.i, %i.bex
  %i.bff = fcmp une float %.sroa.423.0.copyload.i, %i.bfd
  %or.cond1220 = select i1 %i.bfe, i1 true, i1 %i.bff
  %i.bfg = fcmp une float %.sroa.020.0.copyload.i, %i.bel
  %or.cond1221 = select i1 %or.cond1220, i1 true, i1 %i.bfg
  %i.bfh = fcmp une float %.sroa.421.0.copyload.i, %i.ber
  %or.cond1222 = select i1 %or.cond1221, i1 true, i1 %i.bfh
  br i1 %or.cond1222, label %bb.jv, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit713

bb.jv:                                            ; preds = %bb.ju
  %i.bfi = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.bfj = load i32, ptr %i.anj, align 4, !tbaa !722
  %i.bfk = and i32 %i.bfj, 256
  %.not.i712 = icmp eq i32 %i.bfk, 0
  br i1 %.not.i712, label %bb.jw, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit713

bb.jw:                                            ; preds = %bb.jv
  %i.bfl = getelementptr inbounds nuw i8, ptr %i.bfi, i64 10068 ; 2 uses
  %i.bfm = load float, ptr %i.bfl, align 4, !tbaa !676
  %i.bfn = fcmp ugt float %i.bfm, 0.000000e+00
  br i1 %i.bfn, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit713, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.bfo = getelementptr inbounds nuw i8, ptr %i.bfi, i64 68
  %i.bfp = load float, ptr %i.bfo, align 4, !tbaa !904
  store float %i.bfp, ptr %i.bfl, align 4, !tbaa !676
  br label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit713

_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit713: ; preds = %bb.ju, %bb.jx, %bb.jw, %bb.jv
  %.not242.i = icmp eq i32 %.3954, -1
  br i1 %.not242.i, label %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit, label %bb.jy

bb.jy:                                            ; preds = %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit713
  %i.bfq = load float, ptr %i.aom, align 4, !tbaa !642
  %i.bfr = call fastcc { <2 x float>, <2 x float> } @_ZL19GetResizeBorderRectP11ImGuiWindowiff(ptr noundef nonnull %i.ake, i32 noundef %.3954, float noundef %i.aol, float noundef %i.bfq), !inline_history !1250 ; 2 uses
  %i.bfs = extractvalue { <2 x float>, <2 x float> } %i.bfr, 0
  %i.bft = extractvalue { <2 x float>, <2 x float> } %i.bfr, 1
  store <2 x float> %i.bfs, ptr %i.avs, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ani, i64 9816
  store <2 x float> %i.bft, ptr %.sroa.4.0..sroa_idx.i, align 8
  br label %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit

_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit: ; preds = %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit713, %bb.jy
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #41
  %.not483 = icmp eq i32 %.5.i, 0
  br i1 %.not483, label %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit.thread, label %bb.jz

bb.jz:                                            ; preds = %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit
  %.not484 = trunc i32 %.5.i to i1
  %spec.select530 = or i1 %.1413, %.not484
  %.not485 = icmp ne i32 %.5.i, 1
  %spec.select547 = or i1 %.4, %.not485
  br label %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit.thread

_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit.thread: ; preds = %bb.hg, %bb.hc, %bb.hd, %bb.hf, %bb.hb, %bb.jz, %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit, %bb.ha, %bb.gz
  %.0956 = phi i32 [ -1, %bb.ha ], [ %.3959, %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit ], [ %.3959, %bb.jz ], [ -1, %bb.gz ], [ -1, %bb.hb ], [ -1, %bb.hf ], [ -1, %bb.hd ], [ -1, %bb.hc ], [ -1, %bb.hg ]
  %.0951 = phi i32 [ -1, %bb.ha ], [ %.3954, %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit ], [ %.3954, %bb.jz ], [ -1, %bb.gz ], [ -1, %bb.hb ], [ -1, %bb.hf ], [ -1, %bb.hd ], [ -1, %bb.hc ], [ -1, %bb.hg ]
  %.4416 = phi i1 [ %.1413, %bb.ha ], [ %.1413, %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit ], [ %spec.select530, %bb.jz ], [ %.1413, %bb.gz ], [ %.1413, %bb.hb ], [ %.1413, %bb.hf ], [ %.1413, %bb.hd ], [ %.1413, %bb.hc ], [ %.1413, %bb.hg ]
  %.6 = phi i1 [ %.4, %bb.ha ], [ %.4, %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit ], [ %spec.select547, %bb.jz ], [ %.4, %bb.gz ], [ %.4, %bb.hb ], [ %.4, %bb.hf ], [ %.4, %bb.hd ], [ %.4, %bb.hc ], [ %.4, %bb.hg ]
  %i.bfu = trunc i32 %.0956 to i8
  %i.bfv = load ptr, ptr %i.g, align 8, !tbaa !705 ; 40 uses
  %i.bfw = getelementptr inbounds nuw i8, ptr %i.bfv, i64 216
  store i8 %i.bfu, ptr %i.bfw, align 8, !tbaa !1256
  %i.bfx = trunc i32 %.0951 to i8
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.bfv, i64 217
  store i8 %i.bfx, ptr %i.bfy, align 1, !tbaa !1257
  %i.bfz = getelementptr inbounds nuw i8, ptr %i.bfv, i64 207
  %i.bga = load i8, ptr %i.bfz, align 1, !tbaa !721, !range !64, !noundef !204
  %i.bgb = trunc nuw i8 %i.bga to i1
  br i1 %i.bgb, label %_Z7ImClampRK6ImVec2S1_S1_.exit.i, label %bb.ka

bb.ka:                                            ; preds = %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit.thread
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.bfv, i64 56
  %i.bgd = load float, ptr %i.bgc, align 8, !tbaa !910
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bfv, i64 60
  %i.bgf = load float, ptr %i.bge, align 4, !tbaa !1210
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.bfv, i64 116
  %i.bgh = load float, ptr %i.bgg, align 4, !tbaa !1245
  %i.bgi = getelementptr inbounds nuw i8, ptr %i.bfv, i64 124 ; 2 uses
  %i.bgj = load float, ptr %i.bgi, align 4, !tbaa !1258 ; 2 uses
  %i.bgk = fadd float %i.bgh, %i.bgj
  %i.bgl = fsub float %i.bgf, %i.bgk
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.bfv, i64 552
  %i.bgn = getelementptr inbounds nuw i8, ptr %i.bfv, i64 560
  %i.bgo = load <2 x float>, ptr %i.bgn, align 8, !tbaa !8
  %i.bgp = load <2 x float>, ptr %i.bgm, align 8, !tbaa !8
  %i.bgq = fsub <2 x float> %i.bgo, %i.bgp
  %i.bgr = fadd <2 x float> %i.aeq, %i.bgq        ; 2 uses
  br i1 %i.eg, label %bb.kc, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.bgs = getelementptr inbounds nuw i8, ptr %i.bfv, i64 64
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.bfv, i64 88
  %i.bgu = load <2 x float>, ptr %i.bgt, align 8, !tbaa !8
  %i.bgv = fmul <2 x float> %i.bgu, splat (float 2.000000e+00)
  %i.bgw = load <2 x float>, ptr %i.bgs, align 8, !tbaa !8
  %i.bgx = fadd <2 x float> %i.bgv, %i.bgw
  br label %bb.kc

bb.kc:                                            ; preds = %bb.ka, %bb.kb
  %.sroa.0824.0 = phi <2 x float> [ %i.bgx, %bb.kb ], [ zeroinitializer, %bb.ka ] ; 3 uses
  %i.bgy = extractelement <2 x float> %i.bgr, i64 0
  %i.bgz = select i1 %.4416, float %i.bgd, float %i.bgy
  %i.bha = extractelement <2 x float> %i.bgr, i64 1
  %i.bhb = select i1 %.6, float %i.bgl, float %i.bha ; 2 uses
  %i.bhc = getelementptr inbounds nuw i8, ptr %i.bfv, i64 200 ; 3 uses
  %i.bhd = load i8, ptr %i.bhc, align 8, !tbaa !1090, !range !64, !noundef !204
  %i.bhe = and i32 %.1403, 16384
  %.not486 = icmp eq i32 %i.bhe, 0
  br i1 %.not486, label %bb.kd, label %bb.kf

bb.kd:                                            ; preds = %bb.kc
  %.sroa.0824.4.vec.extract = extractelement <2 x float> %.sroa.0824.0, i64 1
  %i.bhf = fcmp ogt float %.sroa.0824.4.vec.extract, %i.bhb
  br i1 %i.bhf, label %bb.ke, label %bb.kf

bb.ke:                                            ; preds = %bb.kd
  %i.bhg = and i32 %.1403, 8
  %.not487 = icmp eq i32 %i.bhg, 0
  %i.bhh = zext i1 %.not487 to i8
  br label %bb.kf

bb.kf:                                            ; preds = %bb.kd, %bb.ke, %bb.kc
  %i.bhi = phi i8 [ 1, %bb.kc ], [ 0, %bb.kd ], [ %i.bhh, %bb.ke ] ; 4 uses
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.bfv, i64 201 ; 2 uses
  store i8 %i.bhi, ptr %i.bhj, align 1, !tbaa !1259
  %i.bhk = and i32 %.1403, 32768
  %.not488 = icmp eq i32 %i.bhk, 0
  br i1 %.not488, label %bb.kg, label %bb.kk

bb.kg:                                            ; preds = %bb.kf
  %.sroa.0824.0.vec.extract = extractelement <2 x float> %.sroa.0824.0, i64 0
  %i.bhl = trunc nuw i8 %i.bhi to i1
  br i1 %i.bhl, label %bb.kh, label %bb.ki

bb.kh:                                            ; preds = %bb.kg
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.j, i64 3340
  %i.bhn = load float, ptr %i.bhm, align 4, !tbaa !1260
  br label %bb.ki

bb.ki:                                            ; preds = %bb.kg, %bb.kh
  %i.bho = phi float [ %i.bhn, %bb.kh ], [ 0.000000e+00, %bb.kg ]
  %i.bhp = fsub float %i.bgz, %i.bho
  %i.bhq = fcmp ogt float %.sroa.0824.0.vec.extract, %i.bhp
  %i.bhr = and i32 %.1403, 8
  %.not489 = icmp eq i32 %i.bhr, 0
  %or.cond531 = select i1 %i.bhq, i1 %.not489, i1 false
  br i1 %or.cond531, label %bb.kj, label %bb.kk

bb.kj:                                            ; preds = %bb.ki
  %i.bhs = lshr i32 %.1403, 11
  %i.bht = trunc i32 %i.bhs to i8
  %i.bhu = and i8 %i.bht, 1
  br label %bb.kk

bb.kk:                                            ; preds = %bb.ki, %bb.kj, %bb.kf
  %i.bhv = phi i8 [ 1, %bb.kf ], [ %i.bhu, %bb.kj ], [ 0, %bb.ki ] ; 4 uses
  store i8 %i.bhv, ptr %i.bhc, align 8, !tbaa !1090
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.bfv, i64 203 ; 2 uses
  %i.bhx = load i8, ptr %i.bhw, align 1, !tbaa !1261
  %i.bhy = shl i8 %i.bhx, 1
  %.not491 = icmp ne i8 %i.bhd, %i.bhv
  %i.bhz = zext i1 %.not491 to i8
  %i.bia = or disjoint i8 %i.bhy, %i.bhz          ; 3 uses
  store i8 %i.bia, ptr %i.bhw, align 1, !tbaa !1261
  %.not492 = icmp eq i8 %i.bia, 0
  br i1 %.not492, label %.thread981, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.bib = zext i8 %i.bia to i32
  br label %.lr.ph.i624

.lr.ph.i624:                                      ; preds = %bb.kl, %.lr.ph.i624
  %.08.i = phi i32 [ %i.bie, %.lr.ph.i624 ], [ 0, %bb.kl ]
  %.057.i = phi i32 [ %i.bid, %.lr.ph.i624 ], [ %i.bib, %bb.kl ] ; 2 uses
  %i.bic = add nsw i32 %.057.i, -1
  %i.bid = and i32 %i.bic, %.057.i                ; 2 uses
  %i.bie = add i32 %.08.i, 1                      ; 2 uses
  %.not.i625 = icmp eq i32 %i.bid, 0
  br i1 %.not.i625, label %bb.km, label %.lr.ph.i624, !llvm.loop !1262

bb.km:                                            ; preds = %.lr.ph.i624
  %i.bif = icmp ugt i32 %i.bie, 3
  br i1 %i.bif, label %bb.kn, label %.thread981

bb.kn:                                            ; preds = %bb.km
  store i8 1, ptr %i.bhc, align 8, !tbaa !1090
  br label %.thread981

.thread981:                                       ; preds = %bb.kk, %bb.kn, %bb.km
  %i.big = phi i8 [ %i.bhv, %bb.km ], [ 1, %bb.kn ], [ %i.bhv, %bb.kk ]
  %i.bih = phi i8 [ 0, %bb.km ], [ 1, %bb.kn ], [ 0, %bb.kk ]
  %i.bii = getelementptr inbounds nuw i8, ptr %i.bfv, i64 202
  store i8 %i.bih, ptr %i.bii, align 2, !tbaa !1263
  %i.bij = trunc nuw i8 %i.big to i1              ; 2 uses
  %.not997 = xor i1 %i.bij, true
  %i.bik = trunc nuw i8 %i.bhi to i1
  %or.cond998 = select i1 %.not997, i1 true, i1 %i.bik
  br i1 %or.cond998, label %bb.kp, label %bb.ko

bb.ko:                                            ; preds = %.thread981
  %.sroa.0824.4.vec.extract827 = extractelement <2 x float> %.sroa.0824.0, i64 1
  %i.bil = getelementptr inbounds nuw i8, ptr %i.j, i64 3340
  %i.bim = load float, ptr %i.bil, align 4, !tbaa !1260
  %i.bin = fsub float %i.bhb, %i.bim
  %i.bio = fcmp ogt float %.sroa.0824.4.vec.extract827, %i.bin
  %i.bip = and i32 %.1403, 8
  %.not493 = icmp eq i32 %i.bip, 0
  %narrow = select i1 %i.bio, i1 %.not493, i1 false
  %i.biq = zext i1 %narrow to i8                  ; 2 uses
  store i8 %i.biq, ptr %i.bhj, align 1, !tbaa !1259
  br label %bb.kp

bb.kp:                                            ; preds = %bb.ko, %.thread981
  %i.bir = phi i8 [ %i.biq, %bb.ko ], [ %i.bhi, %.thread981 ]
  %i.bis = trunc nuw i8 %i.bir to i1
  br i1 %i.bis, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %bb.kp
  %i.bit = getelementptr inbounds nuw i8, ptr %i.j, i64 3340
  %i.biu = load float, ptr %i.bit, align 4, !tbaa !1260
  br label %bb.kr

bb.kr:                                            ; preds = %bb.kp, %bb.kq
  %.cast = phi float [ %i.biu, %bb.kq ], [ 0.000000e+00, %bb.kp ] ; 2 uses
  br i1 %i.bij, label %bb.ks, label %bb.kt

bb.ks:                                            ; preds = %bb.kr
  %i.biv = getelementptr inbounds nuw i8, ptr %i.j, i64 3340
  %i.biw = load float, ptr %i.biv, align 4, !tbaa !1260
  br label %bb.kt

bb.kt:                                            ; preds = %bb.kr, %bb.ks
  %.cast1006 = phi float [ %i.biw, %bb.ks ], [ 0.000000e+00, %bb.kr ] ; 2 uses
  %i.bix = getelementptr inbounds nuw i8, ptr %i.bfv, i64 192
  store float %.cast, ptr %i.bix, align 8
  %.sroa_idx820 = getelementptr inbounds nuw i8, ptr %i.bfv, i64 196
  store float %.cast1006, ptr %.sroa_idx820, align 4
  %i.biy = getelementptr inbounds nuw i8, ptr %i.bfv, i64 120 ; 2 uses
  %i.biz = load float, ptr %i.biy, align 8, !tbaa !1264
  %i.bja = fadd float %.cast, %i.biz
  store float %i.bja, ptr %i.biy, align 8, !tbaa !1264
  %i.bjb = fadd float %i.bgj, %.cast1006
  store float %i.bjb, ptr %i.bgi, align 4, !tbaa !1258
  br label %_Z7ImClampRK6ImVec2S1_S1_.exit.i

_Z7ImClampRK6ImVec2S1_S1_.exit.i:                 ; preds = %bb.kt, %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #41
  %or.cond29 = or i1 %i.wf, %i.oy
  %or.cond532 = select i1 %.not462, i1 true, i1 %or.cond29 ; 2 uses
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.kb, i64 616
  %i.bjd = select i1 %or.cond532, ptr %27, ptr %i.bjc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull align 4 dereferenceable(16) %i.bjd, i64 16, i1 false), !tbaa.struct !419
  %i.bje = getelementptr inbounds nuw i8, ptr %i.bfv, i64 40
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.bfv, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #41
  %i.bjg = getelementptr inbounds nuw i8, ptr %i.bfv, i64 56
  %i.bjh = load float, ptr %i.bjg, align 8, !tbaa !910
  %i.bji = getelementptr inbounds nuw i8, ptr %i.bfv, i64 104
  %i.bjj = load float, ptr %i.bji, align 8, !tbaa !909
  %i.bjk = load <2 x float>, ptr %i.bje, align 8  ; 8 uses
  store <2 x float> %i.bjk, ptr %29, align 8
  %i.bjl = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 5 uses
  %i.bjm = getelementptr inbounds nuw i8, ptr %i.bfv, i64 536
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bfv, i64 544
  %i.bjn = extractelement <2 x float> %i.bjk, i64 0
  %i.bjo = fadd float %i.bjn, %i.bjh
  %i.bjp = extractelement <2 x float> %i.bjk, i64 1
  %i.bjq = fadd float %i.bjp, %i.bjj
  %.sroa.2.8.vec.insert.i633 = insertelement <2 x float> poison, float %i.bjo, i64 0
  %.sroa.2.12.vec.insert.i634 = insertelement <2 x float> %.sroa.2.8.vec.insert.i633, float %i.bjq, i64 1
  store <2 x float> %.sroa.2.12.vec.insert.i634, ptr %i.bjl, align 8
  %i.bjr = load <2 x float>, ptr %28, align 8, !tbaa !8 ; 6 uses
  %i.bjs = fcmp ole <2 x float> %i.bjr, %i.bjk
  %i.bjt = select <2 x i1> %i.bjs, <2 x float> %i.bjk, <2 x float> %i.bjr
  store <2 x float> %i.bjt, ptr %i.bjm, align 8
  %i.bju = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.bjv = getelementptr inbounds nuw i8, ptr %i.bfv, i64 112
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.bfv, i64 552
  %i.bjx = load <2 x float>, ptr %i.bjv, align 8, !tbaa !8
  %i.bjy = fadd <2 x float> %i.bjk, %i.bjx        ; 3 uses
  store <2 x float> %i.bjy, ptr %i.bjw, align 8, !tbaa !8
  %i.bjz = getelementptr inbounds nuw i8, ptr %i.bfv, i64 120
  %i.bka = getelementptr inbounds nuw i8, ptr %i.bfv, i64 560
  %i.bkb = load <2 x float>, ptr %i.bjf, align 8, !tbaa !8 ; 2 uses
  %foldExtExtBinop = fadd <2 x float> %i.bjk, %i.bkb
  %i.bkc = fadd <2 x float> %i.bkb, %i.bjk        ; 2 uses
  %i.bkd = load <2 x float>, ptr %i.bju, align 8, !tbaa !8 ; 6 uses
  %i.bke = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %i.bkc, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.bkf = fcmp ogt <2 x float> %i.bkd, %i.bke
  %i.bkg = select <2 x i1> %i.bkf, <2 x float> %i.bke, <2 x float> %i.bkd
  store <2 x float> %i.bkg, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bkh = load <2 x float>, ptr %i.bjz, align 8, !tbaa !8
  %i.bki = fsub <2 x float> %i.bkc, %i.bkh        ; 3 uses
  store <2 x float> %i.bki, ptr %i.bka, align 8, !tbaa !8
  %i.bkj = and i32 %.1403, 1025
  %brmerge533.not = icmp eq i32 %i.bkj, 1
  %i.bkk = getelementptr inbounds nuw i8, ptr %i.j, i64 3296
  %i.bkl = getelementptr inbounds nuw i8, ptr %i.bfv, i64 100 ; 2 uses
  %.in494 = select i1 %brmerge533.not, ptr %i.bkl, ptr %i.bkk
  %i.bkm = load float, ptr %.in494, align 4, !tbaa !8
  %i.bkn = load float, ptr %i.bkl, align 4, !tbaa !1233 ; 2 uses
  %i.bko = getelementptr inbounds nuw i8, ptr %i.bfv, i64 568
  %i.bkp = fneg float %i.bkn
  %i.bkq = getelementptr inbounds nuw i8, ptr %i.bfv, i64 576
  %i.bkr = fadd <2 x float> %i.bjy, splat (float 5.000000e-01)
  %i.bks = insertelement <2 x float> poison, float %i.bkn, i64 0
  %i.bkt = insertelement <2 x float> %i.bks, float %i.bkm, i64 1
  %i.bku = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bkt, <2 x float> splat (float 5.000000e-01), <2 x float> %i.bkr) ; 3 uses
  %i.bkv = fcmp ult <2 x float> %i.bku, zeroinitializer
  %i.bkw = fptosi <2 x float> %i.bku to <2 x i32> ; 2 uses
  %i.bkx = sitofp <2 x i32> %i.bkw to <2 x float>
  %i.bky = fcmp une <2 x float> %i.bku, %i.bkx
  %i.bkz = and <2 x i1> %i.bkv, %i.bky
  %i.bla = sext <2 x i1> %i.bkz to <2 x i32>
  %i.blb = add nsw <2 x i32> %i.bla, %i.bkw
  %i.blc = sitofp <2 x i32> %i.blb to <2 x float> ; 3 uses
  %i.bld = fcmp ogt <2 x float> %i.bjr, %i.blc
  %i.ble = fcmp olt <2 x float> %i.bkd, %i.blc
  %i.blf = select <2 x i1> %i.ble, <2 x float> %i.bkd, <2 x float> %i.blc
  %i.blg = select <2 x i1> %i.bld, <2 x float> %i.bjr, <2 x float> %i.blf
  store <2 x float> %i.blg, ptr %i.bko, align 8
  %i.blh = insertelement <2 x float> poison, float %i.bkp, i64 0
  %i.bli = shufflevector <2 x float> %i.blh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.blj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bli, <2 x float> splat (float 5.000000e-01), <2 x float> %i.bki) ; 3 uses
  %i.blk = fcmp ult <2 x float> %i.blj, zeroinitializer
  %i.bll = fptosi <2 x float> %i.blj to <2 x i32> ; 2 uses
  %i.blm = sitofp <2 x i32> %i.bll to <2 x float>
  %i.bln = fcmp une <2 x float> %i.blj, %i.blm
  %i.blo = and <2 x i1> %i.blk, %i.bln
  %i.blp = sext <2 x i1> %i.blo to <2 x i32>
  %i.blq = add nsw <2 x i32> %i.blp, %i.bll
  %i.blr = sitofp <2 x i32> %i.blq to <2 x float> ; 3 uses
  %i.bls = fcmp ogt <2 x float> %i.bjr, %i.blr
  %i.blt = fcmp olt <2 x float> %i.bkd, %i.blr
  %i.blu = select <2 x i1> %i.blt, <2 x float> %i.bkd, <2 x float> %i.blr
  %i.blv = select <2 x i1> %i.bls, <2 x float> %i.bjr, <2 x float> %i.blu
  store <2 x float> %i.blv, ptr %i.bkq, align 8
  %i.blw = getelementptr inbounds nuw i8, ptr %i.bfv, i64 64
  %i.blx = getelementptr inbounds nuw i8, ptr %i.bfv, i64 88
  %i.bly = getelementptr inbounds nuw i8, ptr %i.bfv, i64 160
  %i.blz = load <2 x float>, ptr %i.blw, align 8, !tbaa !8
  %i.bma = load <2 x float>, ptr %i.blx, align 8, !tbaa !8
  %i.bmb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bma, <2 x float> splat (float 2.000000e+00), <2 x float> %i.blz)
  %i.bmc = fsub <2 x float> %i.bki, %i.bjy
  %i.bmd = fsub <2 x float> %i.bmb, %i.bmc        ; 2 uses
  %i.bme = fcmp ole <2 x float> %i.bmd, zeroinitializer
  %i.bmf = select <2 x i1> %i.bme, <2 x float> zeroinitializer, <2 x float> %i.bmd
  store <2 x float> %i.bmf, ptr %i.bly, align 8, !tbaa !8
  %i.bmg = call fastcc <2 x float> @_ZL38CalcNextScrollFromScrollTargetAndClampP11ImGuiWindow(ptr noundef nonnull %i.bfv)
  %i.bmh = getelementptr inbounds nuw i8, ptr %i.bfv, i64 152
  store <2 x float> %i.bmg, ptr %i.bmh, align 8
  %i.bmi = getelementptr inbounds nuw i8, ptr %i.bfv, i64 168
  store i32 2139095039, ptr %i.bmi, align 8
  %.sroa_idx817 = getelementptr inbounds nuw i8, ptr %i.bfv, i64 172
  store i32 2139095039, ptr %.sroa_idx817, align 4
  %i.bmj = getelementptr inbounds nuw i8, ptr %i.bfv, i64 128
  store <2 x float> zeroinitializer, ptr %i.bmj, align 8, !tbaa !8
  %i.bmk = getelementptr inbounds nuw i8, ptr %i.bfv, i64 712
  %i.bml = load ptr, ptr %i.bmk, align 8, !tbaa !452
  %i.bmm = getelementptr inbounds nuw i8, ptr %i.j, i64 4552
  %i.bmn = load ptr, ptr %i.bmm, align 8, !tbaa !453
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.bmn, i64 8
  %i.bmp = load ptr, ptr %i.bmo, align 8, !tbaa !976 ; 2 uses
  %i.bmq = getelementptr inbounds nuw i8, ptr %i.bmp, i64 40
  %.sroa.0.0.copyload = load ptr, ptr %i.bmq, align 8, !tbaa !485
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bmp, i64 48
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !486
  call void @_ZN10ImDrawList11PushTextureE12ImTextureRef(ptr noundef nonnull align 8 dereferenceable(224) %i.bml, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  %i.bmr = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.bms = getelementptr inbounds nuw i8, ptr %i.bmr, i64 5312
  %i.bmt = load ptr, ptr %i.bms, align 8, !tbaa !298 ; 3 uses
  %i.bmu = getelementptr inbounds nuw i8, ptr %i.bmt, i64 206
  store i8 1, ptr %i.bmu, align 2, !tbaa !854
  %i.bmv = getelementptr inbounds nuw i8, ptr %i.bmt, i64 712 ; 2 uses
  %i.bmw = load ptr, ptr %i.bmv, align 8, !tbaa !452
  call void @_ZN10ImDrawList12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 8 dereferenceable(224) %i.bmw, ptr noundef nonnull align 4 dereferenceable(8) %28, ptr noundef nonnull align 4 dereferenceable(8) %i.bju, i1 noundef zeroext false)
  %i.bmx = load ptr, ptr %i.bmv, align 8, !tbaa !452 ; 2 uses
  %i.bmy = getelementptr inbounds nuw i8, ptr %i.bmx, i64 160
  %i.bmz = getelementptr inbounds nuw i8, ptr %i.bmx, i64 168
  %i.bna = load ptr, ptr %i.bmz, align 8, !tbaa !1265
  %i.bnb = load i32, ptr %i.bmy, align 8, !tbaa !1266
  %i.bnc = sext i32 %i.bnb to i64
  %i.bnd = getelementptr [16 x i8], ptr %i.bna, i64 %i.bnc
  %i.bne = getelementptr i8, ptr %i.bnd, i64 -16
  %i.bnf = getelementptr inbounds nuw i8, ptr %i.bmt, i64 616
  %i.bng = load <4 x float>, ptr %i.bne, align 4, !tbaa !8
  store <4 x float> %i.bng, ptr %i.bnf, align 8, !tbaa !8
  br i1 %or.cond532, label %.thread984, label %bb.ku

bb.ku:                                            ; preds = %_Z7ImClampRK6ImVec2S1_S1_.exit.i
  %i.bnh = getelementptr inbounds nuw i8, ptr %i.kb, i64 432
  %i.bni = load i32, ptr %i.bnh, align 8, !tbaa !1246 ; 2 uses
  %i.bnj = icmp sgt i32 %i.bni, 1
  br i1 %i.bnj, label %bb.kv, label %..thread982_crit_edge

..thread982_crit_edge:                            ; preds = %bb.ku
  %.pre1043 = load ptr, ptr %i.g, align 8, !tbaa !705
  br label %.thread982

bb.kv:                                            ; preds = %bb.ku
  %i.bnk = getelementptr inbounds nuw i8, ptr %i.kb, i64 440
  %i.bnl = load ptr, ptr %i.bnk, align 8, !tbaa !561
  %i.bnm = zext nneg i32 %i.bni to i64
  %i.bnn = getelementptr [8 x i8], ptr %i.bnl, i64 %i.bnm
  %i.bno = getelementptr i8, ptr %i.bnn, i64 -16
  %i.bnp = load ptr, ptr %i.bno, align 8, !tbaa !705 ; 5 uses
  %.not495 = icmp eq ptr %i.bnp, null
  %.pre1044 = load ptr, ptr %i.g, align 8, !tbaa !705 ; 6 uses
  br i1 %.not495, label %.thread982, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.bnq = getelementptr inbounds nuw i8, ptr %i.bnp, i64 40
  %i.bnr = load float, ptr %i.bnq, align 8, !tbaa !870 ; 2 uses
  %i.bns = getelementptr inbounds nuw i8, ptr %i.bnp, i64 44
  %i.bnt = load float, ptr %i.bns, align 4, !tbaa !929 ; 2 uses
  %i.bnu = getelementptr inbounds nuw i8, ptr %i.bnp, i64 48
  %i.bnv = load float, ptr %i.bnu, align 8, !tbaa !723
  %i.bnw = fadd float %i.bnr, %i.bnv
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.bnp, i64 52
  %i.bny = load float, ptr %i.bnx, align 4, !tbaa !724
  %i.bnz = fadd float %i.bnt, %i.bny
  %i.boa = getelementptr inbounds nuw i8, ptr %.pre1044, i64 40
  %i.bob = load float, ptr %i.boa, align 8, !tbaa !870 ; 2 uses
  %i.boc = getelementptr inbounds nuw i8, ptr %.pre1044, i64 44
  %i.bod = load float, ptr %i.boc, align 4, !tbaa !929 ; 2 uses
  %i.boe = getelementptr inbounds nuw i8, ptr %.pre1044, i64 48
  %i.bof = load float, ptr %i.boe, align 8, !tbaa !723
  %i.bog = fadd float %i.bob, %i.bof
  %i.boh = getelementptr inbounds nuw i8, ptr %.pre1044, i64 52
  %i.boi = load float, ptr %i.boh, align 4, !tbaa !724
  %i.boj = fadd float %i.bod, %i.boi
  %i.bok = fcmp olt float %i.bod, %i.bnz
  %i.bol = fcmp ogt float %i.boj, %i.bnt
  %or.cond999 = select i1 %i.bok, i1 %i.bol, i1 false
  %i.bom = fcmp olt float %i.bob, %i.bnw
  %or.cond1000 = select i1 %or.cond999, i1 %i.bom, i1 false
  %i.bon = fcmp ogt float %i.bog, %i.bnr
  %spec.select1001 = select i1 %or.cond1000, i1 %i.bon, i1 false
  br label %.thread982

.thread982:                                       ; preds = %..thread982_crit_edge, %bb.kw, %bb.kv
  %i.boo = phi ptr [ %.pre1043, %..thread982_crit_edge ], [ %.pre1044, %bb.kv ], [ %.pre1044, %bb.kw ]
  %i.bop = phi i1 [ false, %..thread982_crit_edge ], [ false, %bb.kv ], [ %spec.select1001, %bb.kw ]
  %i.boq = getelementptr inbounds nuw i8, ptr %i.kb, i64 712
  %i.bor = load ptr, ptr %i.boq, align 8, !tbaa !452 ; 2 uses
  %i.bos = getelementptr inbounds nuw i8, ptr %i.bor, i64 32
  %i.bot = load i32, ptr %i.bos, align 8, !tbaa !1267
  %i.bou = icmp eq i32 %i.bot, 0
  %i.bov = getelementptr inbounds nuw i8, ptr %i.boo, i64 712 ; 2 uses
  %i.bow = load ptr, ptr %i.bov, align 8, !tbaa !452 ; 2 uses
  %i.box = getelementptr inbounds nuw i8, ptr %i.bow, i64 8
  %i.boy = load ptr, ptr %i.box, align 8, !tbaa !1268
  %i.boz = load i32, ptr %i.bow, align 8, !tbaa !1269
  %i.bpa = sext i32 %i.boz to i64
  %i.bpb = getelementptr [72 x i8], ptr %i.boy, i64 %i.bpa
  %i.bpc = getelementptr i8, ptr %i.bpb, i64 -32
  %i.bpd = load i32, ptr %i.bpc, align 8, !tbaa !1270
  %i.bpe = icmp ne i32 %i.bpd, 0
  %or.cond33 = select i1 %i.bpe, i1 true, i1 %i.bou
  %or.cond35 = or i1 %i.bop, %or.cond33
  br i1 %or.cond35, label %.thread984, label %bb.kx

bb.kx:                                            ; preds = %.thread982
  store ptr %i.bor, ptr %i.bov, align 8, !tbaa !452
  br label %.thread984

.thread984:                                       ; preds = %_Z7ImClampRK6ImVec2S1_S1_.exit.i, %bb.kx, %.thread982
  %.1986 = phi i1 [ false, %.thread982 ], [ true, %bb.kx ], [ false, %_Z7ImClampRK6ImVec2S1_S1_.exit.i ]
  %i.bpf = getelementptr inbounds nuw i8, ptr %i.j, i64 8712
  %i.bpg = load ptr, ptr %i.bpf, align 8, !tbaa !1045 ; 2 uses
  %.not496 = icmp eq ptr %i.bpg, null
  br i1 %.not496, label %bb.ky, label %bb.kz

bb.ky:                                            ; preds = %.thread984
  %i.bph = getelementptr inbounds nuw i8, ptr %i.j, i64 8224
  %i.bpi = load ptr, ptr %i.bph, align 8, !tbaa !389
  br label %bb.kz

bb.kz:                                            ; preds = %.thread984, %bb.ky
  %i.bpj = phi ptr [ %i.bpi, %bb.ky ], [ %i.bpg, %.thread984 ] ; 2 uses
  br i1 %spec.select993, label %._crit_edge1045, label %bb.la

._crit_edge1045:                                  ; preds = %bb.kz
  %.pre1046 = load ptr, ptr %i.g, align 8, !tbaa !705
  br label %bb.lc

bb.la:                                            ; preds = %bb.kz
  %.not497 = icmp eq ptr %i.bpj, null
  %.pre1047 = load ptr, ptr %i.g, align 8, !tbaa !705 ; 3 uses
  br i1 %.not497, label %bb.lc, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.bpk = getelementptr inbounds nuw i8, ptr %.pre1047, i64 976
  %i.bpl = load ptr, ptr %i.bpk, align 8, !tbaa !1198
  %i.bpm = getelementptr inbounds nuw i8, ptr %i.bpj, i64 976
  %i.bpn = load ptr, ptr %i.bpm, align 8, !tbaa !1198
  %i.bpo = icmp eq ptr %i.bpl, %i.bpn
  br label %bb.lc

bb.lc:                                            ; preds = %._crit_edge1045, %bb.la, %bb.lb
  %i.bpp = phi ptr [ %.pre1046, %._crit_edge1045 ], [ %.pre1047, %bb.la ], [ %.pre1047, %bb.lb ] ; 52 uses
  %i.bpq = phi i1 [ true, %._crit_edge1045 ], [ false, %bb.la ], [ %i.bpo, %bb.lb ] ; 2 uses
  %i.bpr = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 9 uses
  %i.bps = getelementptr inbounds nuw i8, ptr %i.bpp, i64 20 ; 3 uses
  %i.bpt = load i32, ptr %i.bps, align 4, !tbaa !722 ; 7 uses
  %i.bpu = getelementptr inbounds nuw i8, ptr %i.bpp, i64 209
  store i8 0, ptr %i.bpu, align 1, !tbaa !1231
  %i.bpv = getelementptr inbounds nuw i8, ptr %i.bpp, i64 368 ; 2 uses
  store i32 1, ptr %i.bpv, align 8, !tbaa !1205
  %i.bpw = getelementptr inbounds nuw i8, ptr %i.bpp, i64 96 ; 5 uses
  %i.bpx = load float, ptr %i.bpw, align 8, !tbaa !1248 ; 7 uses
  %i.bpy = getelementptr inbounds nuw i8, ptr %i.bpp, i64 100 ; 3 uses
  %i.bpz = load float, ptr %i.bpy, align 4, !tbaa !1233 ; 4 uses
  %i.bqa = getelementptr inbounds nuw i8, ptr %i.bpp, i64 207
  %i.bqb = load i8, ptr %i.bqa, align 1, !tbaa !721, !range !64, !noundef !204
  %i.bqc = trunc nuw i8 %i.bqb to i1
  br i1 %i.bqc, label %bb.ld, label %bb.lg

bb.ld:                                            ; preds = %bb.lc
  %i.bqd = getelementptr inbounds nuw i8, ptr %i.bpr, i64 3296 ; 3 uses
  %i.bqe = load float, ptr %i.bqd, align 4, !tbaa !1272
  store float %i.bpz, ptr %i.bqd, align 8, !tbaa !472
  br i1 %i.bpq, label %bb.le, label %bb.lf

bb.le:                                            ; preds = %bb.ld
  %i.bqf = getelementptr inbounds nuw i8, ptr %i.bpr, i64 8216
  %i.bqg = load i8, ptr %i.bqf, align 8, !tbaa !474, !range !64, !noundef !204
  %i.bqh = trunc nuw i8 %i.bqg to i1
  %i.bqi = select i1 %i.bqh, i64 11, i64 12
  br label %bb.lf

bb.lf:                                            ; preds = %bb.le, %bb.ld
  %i.bqj = phi i64 [ 12, %bb.ld ], [ %i.bqi, %bb.le ]
  %i.bqk = getelementptr inbounds nuw i8, ptr %i.bpr, i64 3532
  %i.bql = getelementptr inbounds nuw [16 x i8], ptr %i.bqk, i64 %i.bqj
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bpr, i64 3220
  %i.bqn = load float, ptr %i.bqm, align 4, !tbaa !416
  %i.bqo = load <4 x float>, ptr %i.bql, align 4, !tbaa !8
  %i.bqp = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.bqn, i64 3
  %i.bqq = fmul <4 x float> %i.bqo, %i.bqp        ; 3 uses
  %i.bqr = fcmp olt <4 x float> %i.bqq, zeroinitializer
  %i.bqs = fcmp ogt <4 x float> %i.bqq, splat (float 1.000000e+00)
  %i.bqt = select <4 x i1> %i.bqs, <4 x float> splat (float 1.000000e+00), <4 x float> %i.bqq
  %i.bqu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bqt, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.bqv = select <4 x i1> %i.bqr, <4 x float> splat (float 5.000000e-01), <4 x float> %i.bqu
  %i.bqw = fptosi <4 x float> %i.bqv to <4 x i32>
  %i.bqx = shl <4 x i32> %i.bqw, <i32 0, i32 8, i32 16, i32 24>
  %i.bqy = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.bqx)
  %.sroa.028.0.copyload.i = load <2 x float>, ptr %29, align 8
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.bjl, align 8
  call void @_ZN5ImGui11RenderFrameE6ImVec2S0_jbf(<2 x float> %.sroa.028.0.copyload.i, <2 x float> %.sroa.0.0.copyload.i, i32 noundef %i.bqy, i1 noundef zeroext true, float noundef %i.bpx)
  store float %i.bqe, ptr %i.bqd, align 8, !tbaa !472
  br label %_ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbbiPKjf.exit

bb.lg:                                            ; preds = %bb.lc
  %i.bqz = and i32 %i.bpt, 128
  %.not.i665 = icmp eq i32 %i.bqz, 0
  br i1 %.not.i665, label %bb.lh, label %bb.lk

bb.lh:                                            ; preds = %bb.lg
  %i.bra = and i32 %i.bpt, 100663296
  %.not.i.i672 = icmp eq i32 %i.bra, 0
  %i.brb = and i32 %i.bpt, 16777216
  %.not2.i.i = icmp eq i32 %i.brb, 0
  %..i.i673 = select i1 %.not2.i.i, i64 2, i64 3
  %.0.i.i = select i1 %.not.i.i672, i64 %..i.i673, i64 4
  %i.brc = getelementptr inbounds nuw i8, ptr %i.bpr, i64 3532
  %i.brd = getelementptr inbounds nuw [16 x i8], ptr %i.brc, i64 %.0.i.i ; 3 uses
  %.sroa.0.0.copyload.i112.i = load float, ptr %i.brd, align 4, !tbaa !8
  %.sroa.4.0..sroa_idx.i113.i = getelementptr inbounds nuw i8, ptr %i.brd, i64 4
  %.sroa.6.0..sroa_idx.i117.i = getelementptr inbounds nuw i8, ptr %i.brd, i64 12
  %.sroa.6.0.copyload.i118.i = load float, ptr %.sroa.6.0..sroa_idx.i117.i, align 4, !tbaa !8
  %i.bre = getelementptr inbounds nuw i8, ptr %i.bpr, i64 3220
  %i.brf = load float, ptr %i.bre, align 4, !tbaa !416
  %i.brg = fmul float %.sroa.6.0.copyload.i118.i, %i.brf
  %i.brh = load <2 x float>, ptr %.sroa.4.0..sroa_idx.i113.i, align 4, !tbaa !8 ; 3 uses
  %i.bri = fcmp olt <2 x float> %i.brh, zeroinitializer
  %i.brj = fcmp ogt <2 x float> %i.brh, splat (float 1.000000e+00)
  %i.brk = select <2 x i1> %i.brj, <2 x float> splat (float 1.000000e+00), <2 x float> %i.brh
  %i.brl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.brk, <2 x float> splat (float 2.550000e+02), <2 x float> splat (float 5.000000e-01))
  %i.brm = select <2 x i1> %i.bri, <2 x float> splat (float 5.000000e-01), <2 x float> %i.brl
  %i.brn = fptosi <2 x float> %i.brm to <2 x i32>
  %i.bro = shl <2 x i32> %i.brn, <i32 8, i32 16>  ; 2 uses
  %i.brp = extractelement <2 x i32> %i.bro, i64 0
  %i.brq = extractelement <2 x i32> %i.bro, i64 1
  %i.brr = insertelement <2 x float> poison, float %.sroa.0.0.copyload.i112.i, i64 0
  %i.brs = insertelement <2 x float> %i.brr, float %i.brg, i64 1 ; 3 uses
  %i.brt = fcmp ogt <2 x float> %i.brs, splat (float 1.000000e+00)
  %i.bru = select <2 x i1> %i.brt, <2 x float> splat (float 1.000000e+00), <2 x float> %i.brs
  %i.brv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bru, <2 x float> splat (float 2.550000e+02), <2 x float> splat (float 5.000000e-01))
  %i.brw = fcmp olt <2 x float> %i.brs, zeroinitializer
  %i.brx = select <2 x i1> %i.brw, <2 x float> splat (float 5.000000e-01), <2 x float> %i.brv ; 2 uses
  %i.bry = extractelement <2 x float> %i.brx, i64 0
  %i.brz = fptosi float %i.bry to i32
  %i.bsa = or i32 %i.brp, %i.brz
  %i.bsb = or i32 %i.bsa, %i.brq                  ; 2 uses
  %i.bsc = extractelement <2 x float> %i.brx, i64 1
  %i.bsd = fptosi float %i.bsc to i32
  %i.bse = shl i32 %i.bsd, 24
  %i.bsf = or i32 %i.bse, %i.bsb
  %i.bsg = getelementptr inbounds nuw i8, ptr %i.bpr, i64 7928
  %i.bsh = load i32, ptr %i.bsg, align 8, !tbaa !1128
  %i.bsi = and i32 %i.bsh, 64
  %.not105.not.i = icmp eq i32 %i.bsi, 0
  br i1 %.not105.not.i, label %.critedge.i674, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.bsj = getelementptr inbounds nuw i8, ptr %i.bpr, i64 8032
  %i.bsk = load float, ptr %i.bsj, align 8, !tbaa !1129 ; 3 uses
  %i.bsl = and i32 %i.bsb, 16777215
  %i.bsm = fcmp olt float %i.bsk, 0.000000e+00
  %i.bsn = fcmp ogt float %i.bsk, 1.000000e+00
  %i.bso = select i1 %i.bsn, float 1.000000e+00, float %i.bsk
  %i.bsp = call float @llvm.fmuladd.f32(float %i.bso, float 2.550000e+02, float 5.000000e-01)
  %i.bsq = select i1 %i.bsm, float 5.000000e-01, float %i.bsp
  %i.bsr = fptosi float %i.bsq to i32
  %i.bss = shl i32 %i.bsr, 24
  %i.bst = or disjoint i32 %i.bss, %i.bsl
  br label %.critedge.i674

.critedge.i674:                                   ; preds = %bb.li, %bb.lh
  %.0103.i = phi i32 [ %i.bst, %bb.li ], [ %i.bsf, %bb.lh ] ; 2 uses
  %.not106.i = icmp ult i32 %.0103.i, 16777216
  br i1 %.not106.i, label %bb.lk, label %bb.lj

bb.lj:                                            ; preds = %.critedge.i674
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #41
  %i.bsu = getelementptr inbounds nuw i8, ptr %i.bpp, i64 40
  %i.bsv = getelementptr inbounds nuw i8, ptr %i.bpp, i64 104
  %i.bsw = load float, ptr %i.bsv, align 8, !tbaa !909
  %i.bsx = getelementptr inbounds nuw i8, ptr %i.bpp, i64 48
  %i.bsy = load <2 x float>, ptr %i.bsu, align 8, !tbaa !8 ; 2 uses
  %i.bsz = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.bsw, i64 1
  %i.bta = fadd <2 x float> %i.bsz, %i.bsy
  %i.btb = load <2 x float>, ptr %i.bsx, align 8, !tbaa !8
  %i.btc = fadd <2 x float> %i.bsy, %i.btb
  store <2 x float> %i.bta, ptr %15, align 8
  %i.btd = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store <2 x float> %i.btc, ptr %i.btd, align 8
  %i.bte = and i32 %i.bpt, 1
  %.not107.i = icmp eq i32 %i.bte, 0
  %i.btf = select i1 %.not107.i, i32 192, i32 240
  %i.btg = getelementptr inbounds nuw i8, ptr %i.bpp, i64 712
  %i.bth = load ptr, ptr %i.btg, align 8, !tbaa !452
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.bth, ptr noundef nonnull align 4 dereferenceable(8) %15, ptr noundef nonnull align 4 dereferenceable(8) %i.btd, i32 noundef %.0103.i, float noundef %i.bpx, i32 noundef %i.btf)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #41
  br label %bb.lk

bb.lk:                                            ; preds = %bb.lj, %.critedge.i674, %bb.lg
  %i.bti = and i32 %i.bpt, 1
  %.not108.i = icmp eq i32 %i.bti, 0              ; 2 uses
  br i1 %.not108.i, label %bb.ll, label %bb.lm

bb.ll:                                            ; preds = %bb.lk
  %i.btj = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.btk = getelementptr inbounds nuw i8, ptr %i.btj, i64 3532
  %i.btl = select i1 %i.bpq, i64 11, i64 10
  %i.btm = getelementptr inbounds nuw [16 x i8], ptr %i.btk, i64 %i.btl
  %i.btn = getelementptr inbounds nuw i8, ptr %i.btj, i64 3220
  %i.bto = load float, ptr %i.btn, align 4, !tbaa !416
  %i.btp = load <4 x float>, ptr %i.btm, align 4, !tbaa !8
  %i.btq = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.bto, i64 3
  %i.btr = fmul <4 x float> %i.btp, %i.btq        ; 3 uses
  %i.bts = fcmp olt <4 x float> %i.btr, zeroinitializer
  %i.btt = fcmp ogt <4 x float> %i.btr, splat (float 1.000000e+00)
  %i.btu = select <4 x i1> %i.btt, <4 x float> splat (float 1.000000e+00), <4 x float> %i.btr
  %i.btv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.btu, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.btw = select <4 x i1> %i.bts, <4 x float> splat (float 5.000000e-01), <4 x float> %i.btv
  %i.btx = fptosi <4 x float> %i.btw to <4 x i32>
  %i.bty = shl <4 x i32> %i.btx, <i32 0, i32 8, i32 16, i32 24>
  %i.btz = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.bty)
  %i.bua = getelementptr inbounds nuw i8, ptr %i.bpp, i64 712
  %i.bub = load ptr, ptr %i.bua, align 8, !tbaa !452
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.bub, ptr noundef nonnull align 4 dereferenceable(16) %29, ptr noundef nonnull align 4 dereferenceable(8) %i.bjl, i32 noundef %i.btz, float noundef %i.bpx, i32 noundef 48)
  br label %bb.lm

bb.lm:                                            ; preds = %bb.ll, %bb.lk
  %i.buc = and i32 %i.bpt, 1024
  %.not109.i = icmp eq i32 %i.buc, 0
  br i1 %.not109.i, label %bb.lr, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #41
  %i.bud = getelementptr inbounds nuw i8, ptr %i.bpp, i64 40
  %i.bue = getelementptr inbounds nuw i8, ptr %i.bpp, i64 104
  %i.buf = load float, ptr %i.bue, align 8, !tbaa !909
  %i.bug = getelementptr inbounds nuw i8, ptr %i.bpp, i64 56
  %i.buh = load float, ptr %i.bug, align 8, !tbaa !910
  %i.bui = getelementptr inbounds nuw i8, ptr %i.bpp, i64 108
  %i.buj = load float, ptr %i.bui, align 4, !tbaa !1241
  %i.buk = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.bul = getelementptr inbounds nuw i8, ptr %i.bpp, i64 48
  %i.bum = load <2 x float>, ptr %i.bud, align 8, !tbaa !8 ; 4 uses
  %i.bun = extractelement <2 x float> %i.bum, i64 1 ; 3 uses
  %i.buo = fadd float %i.bun, %i.buf              ; 3 uses
  %i.bup = insertelement <2 x float> %i.bum, float %i.buo, i64 1
  %i.buq = insertelement <2 x float> poison, float %i.buh, i64 0
  %i.bur = insertelement <2 x float> %i.buq, float %i.buj, i64 1
  %i.bus = fadd <2 x float> %i.bup, %i.bur        ; 2 uses
  %i.but = load <2 x float>, ptr %i.bul, align 8, !tbaa !8
  %i.buu = fadd <2 x float> %i.bum, %i.but        ; 2 uses
  %.inv12.i.i.i = fcmp oge float %i.buo, %i.bun
  %i.buv = select i1 %.inv12.i.i.i, float %i.buo, float %i.bun
  %.sroa.0.4.vec.insert.i.i.i = insertelement <2 x float> %i.bum, float %i.buv, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i, ptr %16, align 16
  %i.buw = fcmp ogt <2 x float> %i.buu, %i.bus
  %i.bux = select <2 x i1> %i.buw, <2 x float> %i.bus, <2 x float> %i.buu
  store <2 x float> %i.bux, ptr %i.buk, align 8
  %i.buy = getelementptr inbounds nuw i8, ptr %i.bpp, i64 712 ; 2 uses
  %i.buz = load ptr, ptr %i.buy, align 8, !tbaa !452
  %i.bva = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.bvb = getelementptr inbounds nuw i8, ptr %i.bva, i64 3740
  %i.bvc = getelementptr inbounds nuw i8, ptr %i.bva, i64 3220
  %i.bvd = load float, ptr %i.bvc, align 4, !tbaa !416
  %i.bve = load <4 x float>, ptr %i.bvb, align 4, !tbaa !8
  %i.bvf = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.bvd, i64 3
  %i.bvg = fmul <4 x float> %i.bve, %i.bvf        ; 3 uses
  %i.bvh = fcmp olt <4 x float> %i.bvg, zeroinitializer
  %i.bvi = fcmp ogt <4 x float> %i.bvg, splat (float 1.000000e+00)
  %i.bvj = select <4 x i1> %i.bvi, <4 x float> splat (float 1.000000e+00), <4 x float> %i.bvg
  %i.bvk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bvj, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.bvl = select <4 x i1> %i.bvh, <4 x float> splat (float 5.000000e-01), <4 x float> %i.bvk
  %i.bvm = fptosi <4 x float> %i.bvl to <4 x i32>
  %i.bvn = shl <4 x i32> %i.bvm, <i32 0, i32 8, i32 16, i32 24>
  %i.bvo = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.bvn)
  %i.bvp = select i1 %.not108.i, float 0.000000e+00, float %i.bpx
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.buz, ptr noundef nonnull align 4 dereferenceable(8) %16, ptr noundef nonnull align 4 dereferenceable(8) %i.buk, i32 noundef %i.bvo, float noundef %i.bvp, i32 noundef 48)
  %i.bvq = getelementptr inbounds nuw i8, ptr %i.bpr, i64 3296
  %i.bvr = load float, ptr %i.bvq, align 4, !tbaa !1272 ; 2 uses
  %i.bvs = fcmp ogt float %i.bvr, 0.000000e+00
  br i1 %i.bvs, label %bb.lo, label %bb.lq

bb.lo:                                            ; preds = %bb.ln
  %i.bvt = getelementptr inbounds nuw i8, ptr %i.bpp, i64 52
  %i.bvu = getelementptr inbounds nuw i8, ptr %i.bpp, i64 44
  %i.bvv = getelementptr inbounds nuw i8, ptr %16, i64 12
  %i.bvw = load float, ptr %i.bvv, align 4, !tbaa !399 ; 2 uses
  %i.bvx = load float, ptr %i.bvu, align 4, !tbaa !929
  %i.bvy = load float, ptr %i.bvt, align 4, !tbaa !724
  %i.bvz = fadd float %i.bvx, %i.bvy
  %i.bwa = fcmp olt float %i.bvw, %i.bvz
  br i1 %i.bwa, label %bb.lp, label %bb.lq

bb.lp:                                            ; preds = %bb.lo
  %i.bwb = load ptr, ptr %i.buy, align 8, !tbaa !452
  %i.bwc = load <4 x float>, ptr %16, align 16
  %i.bwd = shufflevector <4 x float> %i.bwc, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.bwe = load float, ptr %i.buk, align 8, !tbaa !395
  %i.bwf = fneg float %i.bpz
  %i.bwg = insertelement <2 x float> poison, float %i.bpz, i64 0
  %i.bwh = insertelement <2 x float> %i.bwg, float %i.bwf, i64 1
  %i.bwi = insertelement <2 x float> %i.bwd, float %i.bwe, i64 1
  %i.bwj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bwh, <2 x float> splat (float 5.000000e-01), <2 x float> %i.bwi) ; 2 uses
  %i.bwk = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.bwl = getelementptr inbounds nuw i8, ptr %i.bwk, i64 3612
  %i.bwm = getelementptr inbounds nuw i8, ptr %i.bwk, i64 3220
  %i.bwn = load float, ptr %i.bwm, align 4, !tbaa !416
  %i.bwo = load <4 x float>, ptr %i.bwl, align 4, !tbaa !8
  %i.bwp = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.bwn, i64 3
  %i.bwq = fmul <4 x float> %i.bwo, %i.bwp        ; 3 uses
  %i.bwr = fcmp olt <4 x float> %i.bwq, zeroinitializer
  %i.bws = fcmp ogt <4 x float> %i.bwq, splat (float 1.000000e+00)
  %i.bwt = select <4 x i1> %i.bws, <4 x float> splat (float 1.000000e+00), <4 x float> %i.bwq
  %i.bwu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bwt, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.bwv = select <4 x i1> %i.bwr, <4 x float> splat (float 5.000000e-01), <4 x float> %i.bwu
  %i.bww = fptosi <4 x float> %i.bwv to <4 x i32>
  %i.bwx = shl <4 x i32> %i.bww, <i32 0, i32 8, i32 16, i32 24>
  %i.bwy = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.bwx)
  %i.bwz = extractelement <2 x float> %i.bwj, i64 0
  %i.bxa = extractelement <2 x float> %i.bwj, i64 1
  call void @_ZN10ImDrawList8AddLineHEfffjf(ptr noundef nonnull align 8 dereferenceable(224) %i.bwb, float noundef %i.bwz, float noundef %i.bxa, float noundef %i.bvw, i32 noundef %i.bwy, float noundef %i.bvr)
  br label %bb.lq

bb.lq:                                            ; preds = %bb.lp, %bb.lo, %bb.ln
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #41
  br label %bb.lr

bb.lr:                                            ; preds = %bb.lq, %bb.lm
  %i.bxb = getelementptr inbounds nuw i8, ptr %i.bpp, i64 200
  %i.bxc = load i8, ptr %i.bxb, align 8, !tbaa !1090, !range !64, !noundef !204
  %i.bxd = trunc nuw i8 %i.bxc to i1
  br i1 %i.bxd, label %bb.ls, label %bb.lt

bb.ls:                                            ; preds = %bb.lr
  call void @_ZN5ImGui9ScrollbarE9ImGuiAxis(i32 noundef 0)
  br label %bb.lt

bb.lt:                                            ; preds = %bb.ls, %bb.lr
  %i.bxe = getelementptr inbounds nuw i8, ptr %i.bpp, i64 201
  %i.bxf = load i8, ptr %i.bxe, align 1, !tbaa !1259, !range !64, !noundef !204
  %i.bxg = trunc nuw i8 %i.bxf to i1
  br i1 %i.bxg, label %bb.lu, label %bb.lv

bb.lu:                                            ; preds = %bb.lt
  call void @_ZN5ImGui9ScrollbarE9ImGuiAxis(i32 noundef 1)
  br label %bb.lv

bb.lv:                                            ; preds = %bb.lu, %bb.lt
  %i.bxh = and i32 %i.bpt, 2
  %.not110.i = icmp eq i32 %i.bxh, 0
  %or.cond.i666 = select i1 %.0405, i1 %.not110.i, i1 false
  %i.bxi = icmp ne i32 %.0404, 0
  %or.cond185.i = and i1 %i.bxi, %or.cond.i666
  br i1 %or.cond185.i, label %.lr.ph.i667, label %.loopexit.i

.lr.ph.i667:                                      ; preds = %bb.lv
  %i.bxj = getelementptr inbounds nuw i8, ptr %i.bpp, i64 40 ; 2 uses
  %i.bxk = getelementptr inbounds nuw i8, ptr %i.bpp, i64 48 ; 2 uses
  %i.bxl = getelementptr inbounds nuw i8, ptr %i.bpp, i64 44
  %i.bxm = getelementptr inbounds nuw i8, ptr %i.bpp, i64 52
  %i.bxn = call float @llvm.fmuladd.f32(float %i.bpz, float 5.000000e-01, float 5.000000e-01)
  %i.bxo = fptosi float %i.bxn to i32
  %i.bxp = sitofp i32 %i.bxo to float             ; 5 uses
  %i.bxq = getelementptr inbounds nuw i8, ptr %i.bpp, i64 712 ; 8 uses
  %i.bxr = fadd float %i.bpx, %i.bxp              ; 3 uses
  %i.bxs = getelementptr inbounds nuw i8, ptr %19, i64 4
  %i.bxt = load i32, ptr %i.i, align 16, !tbaa !205 ; 2 uses
  %i.bxu = icmp ult i32 %i.bxt, 16777216
  br i1 %i.bxu, label %bb.lx, label %bb.lw

bb.lw:                                            ; preds = %.lr.ph.i667
  %i.bxv = load ptr, ptr %i.bxq, align 8, !tbaa !452
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #41
  %i.bxw = getelementptr inbounds nuw i8, ptr %i.bxv, i64 80
  %i.bxx = load <2 x float>, ptr %i.bxj, align 8, !tbaa !8 ; 3 uses
  %i.bxy = load <2 x float>, ptr %i.bxk, align 8, !tbaa !8
  %i.bxz = fadd <2 x float> %i.bxx, %i.bxy
  %i.bya = fsub <2 x float> %i.bxz, %i.bxx
  %i.byb = fadd <2 x float> %i.bxx, %i.bya        ; 3 uses
  %i.byc = insertelement <2 x float> poison, float %i.ane, i64 0
  %i.byd = insertelement <2 x float> %i.byc, float %i.bxp, i64 1
  %i.bye = fsub <2 x float> %i.byb, %i.byd
  store <2 x float> %i.bye, ptr %17, align 8
  call void @_ZN8ImVectorI6ImVec2E9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bxw, ptr noundef nonnull align 4 dereferenceable(8) %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #41
  %i.byf = load ptr, ptr %i.bxq, align 8, !tbaa !452
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #41
  %i.byg = insertelement <2 x float> poison, float %i.bxp, i64 0
  %i.byh = insertelement <2 x float> %i.byg, float %i.ane, i64 1
  %i.byi = fsub <2 x float> %i.byb, %i.byh
  store <2 x float> %i.byi, ptr %18, align 8
  %i.byj = getelementptr inbounds nuw i8, ptr %i.byf, i64 80
  call void @_ZN8ImVectorI6ImVec2E9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.byj, ptr noundef nonnull align 4 dereferenceable(8) %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #41
  %i.byk = load ptr, ptr %i.bxq, align 8, !tbaa !452
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #41
  %i.byl = insertelement <2 x float> poison, float %i.bxr, i64 0
  %i.bym = shufflevector <2 x float> %i.byl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.byn = fsub <2 x float> %i.byb, %i.bym
  store <2 x float> %i.byn, ptr %19, align 8, !tbaa !8
  call void @_ZN10ImDrawList13PathArcToFastERK6ImVec2fii(ptr noundef nonnull align 8 dereferenceable(224) %i.byk, ptr noundef nonnull align 4 dereferenceable(8) %19, float noundef %i.bpx, i32 noundef 0, i32 noundef 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #41
  %i.byo = load ptr, ptr %i.bxq, align 8, !tbaa !452 ; 3 uses
  %i.byp = getelementptr inbounds nuw i8, ptr %i.byo, i64 80 ; 2 uses
  %i.byq = getelementptr inbounds nuw i8, ptr %i.byo, i64 88
  %i.byr = load ptr, ptr %i.byq, align 8, !tbaa !488
  %i.bys = load i32, ptr %i.byp, align 8, !tbaa !489
  call void @_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij(ptr noundef nonnull align 8 dereferenceable(224) %i.byo, ptr noundef %i.byr, i32 noundef %i.bys, i32 noundef %i.bxt)
  store i32 0, ptr %i.byp, align 8, !tbaa !489
  br label %bb.lx

bb.lx:                                            ; preds = %bb.lw, %.lr.ph.i667
  %exitcond.not.i671.peel = icmp eq i32 %.0404, 1
  br i1 %exitcond.not.i671.peel, label %.loopexit.i, label %.peel.next

.peel.next:                                       ; preds = %bb.lx
  %i.byt = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.byu = load i32, ptr %i.byt, align 4, !tbaa !205 ; 2 uses
  %i.byv = icmp ult i32 %i.byu, 16777216
  br i1 %i.byv, label %.loopexit.i, label %bb.ly

bb.ly:                                            ; preds = %.peel.next
  %i.byw = load float, ptr %i.bxj, align 8, !tbaa !227 ; 3 uses
  %i.byx = load float, ptr %i.bxk, align 8, !tbaa !227
end_hunk_2
begin_hunk_3_@_ZN5ImGui5BeginEPKcPbi:bb.a
  %i.cpb = getelementptr inbounds nuw i8, ptr %.pre1048, i64 379
  store i8 0, ptr %i.cpb, align 1, !tbaa !1288
  %i.cpc = getelementptr inbounds nuw i8, ptr %.pre1048, i64 388
  %i.cpd = load float, ptr %i.abj, align 4, !tbaa !1236
  call void @_ZN16ImGuiMenuColumns6UpdateEfb(ptr noundef nonnull align 4 dereferenceable(26) %i.cpc, float noundef %i.cpd, i1 noundef zeroext %.0407.in962)
  %i.cpe = load ptr, ptr %i.g, align 8, !tbaa !705 ; 4 uses
  %i.cpf = getelementptr inbounds nuw i8, ptr %i.cpe, i64 416
  store i32 0, ptr %i.cpf, align 8, !tbaa !461
  %i.cpg = getelementptr inbounds nuw i8, ptr %i.cpe, i64 424
  store i32 0, ptr %i.cpg, align 8, !tbaa !1289
  %i.cph = getelementptr inbounds nuw i8, ptr %i.cpe, i64 420
  store i32 0, ptr %i.cph, align 4, !tbaa !1290
  %i.cpi = getelementptr inbounds nuw i8, ptr %i.cpe, i64 432
  call void @_ZN8ImVectorIP11ImGuiWindowE6resizeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.cpi, i32 noundef 0)
  %i.cpj = load ptr, ptr %i.g, align 8, !tbaa !705 ; 10 uses
  %i.cpk = getelementptr inbounds nuw i8, ptr %i.cpj, i64 664
  %i.cpl = getelementptr inbounds nuw i8, ptr %i.cpj, i64 448
  store ptr %i.cpk, ptr %i.cpl, align 8, !tbaa !1291
  %i.cpm = getelementptr inbounds nuw i8, ptr %i.cpj, i64 456
  store ptr null, ptr %i.cpm, align 8, !tbaa !333
  %i.cpn = getelementptr inbounds nuw i8, ptr %i.cpj, i64 468
  store i32 1, ptr %i.cpn, align 4, !tbaa !1292
  %.not499 = icmp eq ptr %i.kb, null
  br i1 %.not499, label %bb.nc, label %bb.nb

bb.nb:                                            ; preds = %bb.na
  %i.cpo = getelementptr inbounds nuw i8, ptr %i.kb, i64 468
  %i.cpp = load i32, ptr %i.cpo, align 4, !tbaa !1292
  br label %bb.nc

bb.nc:                                            ; preds = %bb.na, %bb.nb
  %i.cpq = phi i32 [ %i.cpp, %bb.nb ], [ 1, %bb.na ]
  %i.cpr = getelementptr inbounds nuw i8, ptr %i.cpj, i64 472
  store i32 %i.cpq, ptr %i.cpr, align 8, !tbaa !1293
  %i.cps = getelementptr inbounds nuw i8, ptr %i.cpj, i64 48
  %i.cpt = load float, ptr %i.cps, align 8, !tbaa !723 ; 2 uses
  %i.cpu = fcmp ogt float %i.cpt, 0.000000e+00    ; 2 uses
  br i1 %.not462, label %.split987, label %bb.nd

bb.nd:                                            ; preds = %bb.nc
  br i1 %i.cpu, label %bb.ne, label %.critedge536

.split987:                                        ; preds = %bb.nc
  %i.cpv = select i1 %i.cpu, i1 %.not476, i1 false
  br i1 %i.cpv, label %bb.nf, label %.critedge536

bb.ne:                                            ; preds = %bb.nd
  %i.cpw = getelementptr inbounds nuw i8, ptr %i.cpj, i64 24
  %i.cpx = load i32, ptr %i.cpw, align 8, !tbaa !1188
  %i.cpy = and i32 %i.cpx, 80
  %.not501 = icmp eq i32 %i.cpy, 0
  br i1 %.not501, label %bb.nf, label %.critedge536

bb.nf:                                            ; preds = %.split987, %bb.ne
  %i.cpz = fmul float %i.cpt, 6.500000e-01
  br label %bb.ng

.critedge536:                                     ; preds = %.split987, %bb.nd, %bb.ne
  %i.cqa = load float, ptr %.phi.trans.insert1040, align 8, !tbaa !454
  %i.cqb = fmul float %i.cqa, 1.600000e+01
  br label %bb.ng

bb.ng:                                            ; preds = %.critedge536, %bb.nf
  %.sink1226 = phi float [ %i.cqb, %.critedge536 ], [ %i.cpz, %bb.nf ]
  %i.cqc = fptosi float %.sink1226 to i32
  %i.cqd = sitofp i32 %i.cqc to float             ; 2 uses
  %i.cqe = getelementptr inbounds nuw i8, ptr %i.cpj, i64 492
  store float %i.cqd, ptr %i.cqe, align 4, !tbaa !1294
  %i.cqf = getelementptr inbounds nuw i8, ptr %i.cpj, i64 488
  store float %i.cqd, ptr %i.cqf, align 8, !tbaa !1295
  %i.cqg = getelementptr inbounds nuw i8, ptr %i.cpj, i64 504
  call void @_ZN8ImVectorIfE6resizeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.cqg, i32 noundef 0)
  %i.cqh = load ptr, ptr %i.g, align 8, !tbaa !705 ; 2 uses
  %i.cqi = getelementptr inbounds nuw i8, ptr %i.cqh, i64 496
  store float -1.000000e+00, ptr %i.cqi, align 8, !tbaa !1296
  %i.cqj = getelementptr inbounds nuw i8, ptr %i.cqh, i64 520
  call void @_ZN8ImVectorIfE6resizeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.cqj, i32 noundef 0)
  %i.cqk = and i32 %.1403, 134217728
  %.not502 = icmp eq i32 %i.cqk, 0
  %.pre1054 = load ptr, ptr %i.g, align 8, !tbaa !705 ; 4 uses
  br i1 %.not502, label %bb.ni, label %bb.nh

bb.nh:                                            ; preds = %bb.ng
  %i.cql = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.cqm = getelementptr inbounds nuw i8, ptr %i.cql, i64 4492
  %i.cqn = load <4 x float>, ptr %i.cqm, align 4, !tbaa !8 ; 3 uses
  %i.cqo = fcmp olt <4 x float> %i.cqn, zeroinitializer
  %i.cqp = fcmp ogt <4 x float> %i.cqn, splat (float 1.000000e+00)
  %i.cqq = select <4 x i1> %i.cqp, <4 x float> splat (float 1.000000e+00), <4 x float> %i.cqn
  %i.cqr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cqq, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.cqs = select <4 x i1> %i.cqo, <4 x float> splat (float 5.000000e-01), <4 x float> %i.cqr
  %i.cqt = fptosi <4 x float> %i.cqs to <4 x i32>
  %i.cqu = shl <4 x i32> %i.cqt, <i32 0, i32 8, i32 16, i32 24>
  %i.cqv = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.cqu)
  %i.cqw = getelementptr inbounds nuw i8, ptr %.pre1054, i64 476
  store i32 %i.cqv, ptr %i.cqw, align 4, !tbaa !1297
  br label %bb.ni

bb.ni:                                            ; preds = %bb.nh, %bb.ng
  %i.cqx = getelementptr inbounds nuw i8, ptr %.pre1054, i64 232 ; 2 uses
  %i.cqy = load i8, ptr %i.cqx, align 8, !tbaa !720 ; 2 uses
  %i.cqz = icmp sgt i8 %i.cqy, 0
  br i1 %i.cqz, label %bb.nj, label %bb.nk

bb.nj:                                            ; preds = %bb.ni
  %i.cra = add nsw i8 %i.cqy, -1
  store i8 %i.cra, ptr %i.cqx, align 8, !tbaa !720
  br label %bb.nk

bb.nk:                                            ; preds = %bb.nj, %bb.ni
  %i.crb = getelementptr inbounds nuw i8, ptr %.pre1054, i64 233 ; 2 uses
  %i.crc = load i8, ptr %i.crb, align 1, !tbaa !719 ; 2 uses
  %i.crd = icmp sgt i8 %i.crc, 0
  br i1 %i.crd, label %bb.nl, label %bb.nm

bb.nl:                                            ; preds = %bb.nk
  %i.cre = add nsw i8 %i.crc, -1
  store i8 %i.cre, ptr %i.crb, align 1, !tbaa !719
  br label %bb.nm

bb.nm:                                            ; preds = %bb.nl, %bb.nk
  br i1 %spec.select993, label %bb.nn, label %.critedge538

bb.nn:                                            ; preds = %bb.nm
  call void @_ZN5ImGui11FocusWindowEP11ImGuiWindowi(ptr noundef nonnull %.pre1054, i32 noundef 2)
  %i.crf = load ptr, ptr %i.g, align 8, !tbaa !705 ; 2 uses
  %i.crg = getelementptr inbounds nuw i8, ptr %i.j, i64 8224
  %i.crh = load ptr, ptr %i.crg, align 8, !tbaa !389
  %i.cri = icmp eq ptr %i.crf, %i.crh
  br i1 %i.cri, label %bb.no, label %.critedge538

bb.no:                                            ; preds = %bb.nn
  call void @_ZN5ImGui13NavInitWindowEP11ImGuiWindowb(ptr noundef %i.crf, i1 noundef zeroext false)
  br label %.critedge538

.critedge538:                                     ; preds = %bb.nm, %bb.no, %bb.nn
  %i.crj = getelementptr inbounds nuw i8, ptr %i.j, i64 131
  %i.crk = load i8, ptr %i.crj, align 1, !tbaa !1298, !range !64, !noundef !204
  %i.crl = trunc nuw i8 %i.crk to i1
  br i1 %i.crl, label %bb.np, label %_ZN5ImGui14LogToClipboardEi.exit

bb.np:                                            ; preds = %.critedge538
  %i.crm = getelementptr inbounds nuw i8, ptr %i.j, i64 8224
  %i.crn = load ptr, ptr %i.crm, align 8, !tbaa !389 ; 2 uses
  %.not503 = icmp eq ptr %i.crn, null
  br i1 %.not503, label %_ZN5ImGui14LogToClipboardEi.exit, label %bb.nq

bb.nq:                                            ; preds = %bb.np
  %i.cro = getelementptr inbounds nuw i8, ptr %i.crn, i64 960
  %i.crp = load ptr, ptr %i.cro, align 8, !tbaa !847
  %i.crq = load ptr, ptr %i.g, align 8, !tbaa !705
  %i.crr = icmp eq ptr %i.crp, %i.crq
  br i1 %i.crr, label %bb.nr, label %_ZN5ImGui14LogToClipboardEi.exit

bb.nr:                                            ; preds = %bb.nq
  %i.crs = getelementptr inbounds nuw i8, ptr %i.j, i64 5428
  %i.crt = load i32, ptr %i.crs, align 4, !tbaa !819
  %i.cru = icmp eq i32 %i.crt, 0
  br i1 %i.cru, label %bb.ns, label %_ZN5ImGui14LogToClipboardEi.exit

bb.ns:                                            ; preds = %bb.nr
  %i.crv = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 4644, i32 noundef 0, i32 noundef 0)
  br i1 %i.crv, label %bb.nt, label %_ZN5ImGui14LogToClipboardEi.exit

bb.nt:                                            ; preds = %bb.ns
  %i.crw = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 10 uses
  %i.crx = getelementptr inbounds nuw i8, ptr %i.crw, i64 10264 ; 2 uses
  %i.cry = load i8, ptr %i.crx, align 8, !tbaa !387, !range !64, !noundef !204
  %i.crz = trunc nuw i8 %i.cry to i1
  br i1 %i.crz, label %_ZN5ImGui14LogToClipboardEi.exit, label %bb.nu

bb.nu:                                            ; preds = %bb.nt
  %i.csa = getelementptr inbounds nuw i8, ptr %i.crw, i64 5312
  %i.csb = load ptr, ptr %i.csa, align 8, !tbaa !298 ; 2 uses
  %i.csc = getelementptr inbounds nuw i8, ptr %i.crw, i64 5426
  store i8 1, ptr %i.csc, align 2, !tbaa !868
  store i8 1, ptr %i.crx, align 8, !tbaa !387
  %i.csd = getelementptr inbounds nuw i8, ptr %i.crw, i64 10268
  store i32 8, ptr %i.csd, align 4, !tbaa !1299
  %i.cse = getelementptr inbounds nuw i8, ptr %i.crw, i64 10272
  store ptr %i.csb, ptr %i.cse, align 8, !tbaa !1300
  %i.csf = getelementptr inbounds nuw i8, ptr %i.crw, i64 10304
  %i.csg = getelementptr inbounds nuw i8, ptr %i.csb, i64 416
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.csf, i8 0, i64 16, i1 false)
  %i.csh = load i32, ptr %i.csg, align 8, !tbaa !461
  %i.csi = getelementptr inbounds nuw i8, ptr %i.crw, i64 10324
  store i32 %i.csh, ptr %i.csi, align 4, !tbaa !460
  %i.csj = getelementptr inbounds nuw i8, ptr %i.crw, i64 10328
  store i32 0, ptr %i.csj, align 8, !tbaa !679
  %i.csk = getelementptr inbounds nuw i8, ptr %i.crw, i64 10320
  store float f0x7F7FFFFF, ptr %i.csk, align 8, !tbaa !457
  %i.csl = getelementptr inbounds nuw i8, ptr %i.crw, i64 10265
  store i8 1, ptr %i.csl, align 1, !tbaa !459
  br label %_ZN5ImGui14LogToClipboardEi.exit

_ZN5ImGui14LogToClipboardEi.exit:                 ; preds = %bb.nu, %bb.nt, %bb.np, %bb.nq, %bb.nr, %bb.ns, %.critedge538
  %.pre1056 = load ptr, ptr %i.g, align 8, !tbaa !705 ; 12 uses
  br i1 %.not473, label %bb.nv, label %bb.pi

bb.nv:                                            ; preds = %_ZN5ImGui14LogToClipboardEi.exit
  %i.csm = load float, ptr %29, align 8, !tbaa !394
  %i.csn = getelementptr inbounds nuw i8, ptr %.pre1056, i64 100
  %i.cso = load float, ptr %i.csn, align 4, !tbaa !1233 ; 2 uses
  %i.csp = fadd float %i.csm, %i.cso              ; 3 uses
  %i.csq = getelementptr inbounds nuw i8, ptr %29, i64 4
  %i.csr = load float, ptr %i.csq, align 4, !tbaa !398 ; 6 uses
  %i.css = load float, ptr %i.bjl, align 8, !tbaa !395
  %i.cst = fsub float %i.css, %i.cso              ; 6 uses
  %i.csu = getelementptr inbounds nuw i8, ptr %29, i64 12
  %i.csv = load float, ptr %i.csu, align 4, !tbaa !399 ; 3 uses
  %i.csw = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 15 uses
  %i.csx = getelementptr inbounds nuw i8, ptr %.pre1056, i64 20
  %i.csy = load i32, ptr %i.csx, align 4, !tbaa !722 ; 2 uses
  %.not.i677 = icmp eq ptr %1, null               ; 2 uses
  %i.csz = and i32 %i.csy, 32
  %.not96.i = icmp eq i32 %i.csz, 0
  br i1 %.not96.i, label %bb.nw, label %bb.nx

bb.nw:                                            ; preds = %bb.nv
  %i.cta = getelementptr inbounds nuw i8, ptr %i.csw, i64 3264
  %i.ctb = load i32, ptr %i.cta, align 4, !tbaa !16
  %i.ctc = icmp ne i32 %i.ctb, -1
  br label %bb.nx

bb.nx:                                            ; preds = %bb.nw, %bb.nv
  %i.ctd = phi i1 [ false, %bb.nv ], [ %i.ctc, %bb.nw ]
  %i.cte = getelementptr inbounds nuw i8, ptr %i.csw, i64 7784 ; 5 uses
  %i.ctf = load i32, ptr %i.cte, align 8, !tbaa !1036 ; 2 uses
  %i.ctg = or i32 %i.ctf, 4
  store i32 %i.ctg, ptr %i.cte, align 8, !tbaa !1036
  %i.cth = getelementptr inbounds nuw i8, ptr %.pre1056, i64 368 ; 2 uses
  store i32 1, ptr %i.cth, align 8, !tbaa !1205
  %i.cti = getelementptr inbounds nuw i8, ptr %i.csw, i64 3284 ; 2 uses
  %i.ctj = load float, ptr %i.cti, align 4, !tbaa !1301 ; 8 uses
  %i.ctk = getelementptr inbounds nuw i8, ptr %i.csw, i64 4568
  %i.ctl = load float, ptr %i.ctk, align 8, !tbaa !454 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  store <2 x float> zeroinitializer, ptr %3, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.ctm = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !8
  br i1 %.not.i677, label %bb.nz, label %bb.ny

bb.ny:                                            ; preds = %bb.nx
  %i.ctn = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cto = fsub float %i.cst, %i.ctj
  %i.ctp = fsub float %i.cto, %i.ctl
  %i.ctq = getelementptr inbounds nuw i8, ptr %i.csw, i64 3288
  %i.ctr = load float, ptr %i.ctq, align 8, !tbaa !1302
  %i.cts = fadd float %i.csr, %i.ctr
  store float %i.ctp, ptr %3, align 8
  store float %i.cts, ptr %i.ctn, align 4
  %i.ctt = getelementptr inbounds nuw i8, ptr %i.csw, i64 3308
  %i.ctu = load float, ptr %i.ctt, align 4, !tbaa !1303
  %i.ctv = fadd float %i.ctl, %i.ctu
  %i.ctw = fadd float %i.ctj, %i.ctv
  br label %bb.nz

bb.nz:                                            ; preds = %bb.ny, %bb.nx
  %.0.i678 = phi float [ %i.ctw, %bb.ny ], [ %i.ctj, %bb.nx ] ; 5 uses
  br i1 %i.ctd, label %bb.oa, label %bb.ok

bb.oa:                                            ; preds = %bb.nz
  %i.ctx = getelementptr inbounds nuw i8, ptr %i.csw, i64 3264
  %i.cty = load i32, ptr %i.ctx, align 8, !tbaa !16
  switch i32 %i.cty, label %bb.oc [
    i32 1, label %.thread.i
    i32 0, label %bb.ob
  ]

.thread.i:                                        ; preds = %bb.oa
  %i.ctz = fsub float %i.cst, %.0.i678
  %i.cua = fsub float %i.ctz, %i.ctl
  %i.cub = getelementptr inbounds nuw i8, ptr %i.csw, i64 3288
  %i.cuc = load float, ptr %i.cub, align 8, !tbaa !1302
  %i.cud = fadd float %i.csr, %i.cuc
  store float %i.cua, ptr %4, align 8
  store float %i.cud, ptr %i.ctm, align 4
  %i.cue = getelementptr inbounds nuw i8, ptr %i.csw, i64 3308
  %i.cuf = load float, ptr %i.cue, align 4, !tbaa !1303
  %i.cug = fadd float %i.ctl, %i.cuf
  %i.cuh = fadd float %.0.i678, %i.cug
  br label %bb.oc

bb.ob:                                            ; preds = %bb.oa
  %i.cui = fadd float %i.csp, %i.ctj
  %i.cuj = getelementptr inbounds nuw i8, ptr %i.csw, i64 3288
  %i.cuk = load float, ptr %i.cuj, align 8, !tbaa !1302
  %i.cul = fadd float %i.csr, %i.cuk
  store float %i.cui, ptr %4, align 8
  store float %i.cul, ptr %i.ctm, align 4
  %i.cum = getelementptr inbounds nuw i8, ptr %i.csw, i64 3308
  %i.cun = load float, ptr %i.cum, align 4, !tbaa !1303
  %i.cuo = fadd float %i.ctl, %i.cun
  %i.cup = fadd float %i.ctj, %i.cuo
  br label %bb.oc

bb.oc:                                            ; preds = %bb.ob, %.thread.i, %bb.oa
  %.1.ph162.i = phi float [ %.0.i678, %bb.oa ], [ %.0.i678, %bb.ob ], [ %i.cuh, %.thread.i ] ; 2 uses
  %.091.ph.i = phi float [ %i.ctj, %bb.oa ], [ %i.cup, %bb.ob ], [ %i.ctj, %.thread.i ] ; 2 uses
  %i.cuq = getelementptr inbounds nuw i8, ptr %.pre1056, i64 264
  %i.cur = getelementptr inbounds nuw i8, ptr %.pre1056, i64 272
  %i.cus = load ptr, ptr %i.cur, align 8, !tbaa !604
  %i.cut = load i32, ptr %i.cuq, align 8, !tbaa !606
  %i.cuu = sext i32 %i.cut to i64
  %i.cuv = getelementptr [4 x i8], ptr %i.cus, i64 %i.cuu
  %i.cuw = getelementptr i8, ptr %i.cuv, i64 -4
  %i.cux = load i32, ptr %i.cuw, align 4, !tbaa !205
  %i.cuy = xor i32 %i.cux, -1                     ; 2 uses
  br label %.lr.ph.i.i.i697

.lr.ph.i.i.i697:                                  ; preds = %bb.oh, %bb.oc
  %i.cuz = phi i8 [ %i.cvq, %bb.oh ], [ 35, %bb.oc ] ; 2 uses
  %.252.i.i.i = phi ptr [ %.3.i.i.i, %bb.oh ], [ @.str.604, %bb.oc ] ; 3 uses
  %.23351.i.i.i = phi i32 [ %.334.i.i.i, %bb.oh ], [ %i.cuy, %bb.oc ] ; 2 uses
  %i.cva = getelementptr inbounds nuw i8, ptr %.252.i.i.i, i64 1 ; 2 uses
  %i.cvb = zext i8 %i.cuz to i32
  %i.cvc = icmp eq i8 %i.cuz, 35
  br i1 %i.cvc, label %bb.od, label %bb.og

bb.od:                                            ; preds = %.lr.ph.i.i.i697
  %i.cvd = load i8, ptr %i.cva, align 1, !tbaa !187
  %i.cve = icmp eq i8 %i.cvd, 35
  br i1 %i.cve, label %bb.oe, label %bb.og

bb.oe:                                            ; preds = %bb.od
  %i.cvf = getelementptr inbounds nuw i8, ptr %.252.i.i.i, i64 2
  %i.cvg = load i8, ptr %i.cvf, align 1, !tbaa !187
  %i.cvh = icmp eq i8 %i.cvg, 35
  br i1 %i.cvh, label %bb.of, label %bb.og

bb.of:                                            ; preds = %bb.oe
  %i.cvi = getelementptr inbounds nuw i8, ptr %.252.i.i.i, i64 3
  br label %bb.oh, !llvm.loop !248

bb.og:                                            ; preds = %bb.oe, %bb.od, %.lr.ph.i.i.i697
  %i.cvj = lshr i32 %.23351.i.i.i, 8
  %i.cvk = and i32 %.23351.i.i.i, 255
  %i.cvl = xor i32 %i.cvk, %i.cvb
  %i.cvm = zext nneg i32 %i.cvl to i64
  %i.cvn = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.cvm
  %i.cvo = load i32, ptr %i.cvn, align 4, !tbaa !205
  %i.cvp = xor i32 %i.cvo, %i.cvj
  br label %bb.oh

bb.oh:                                            ; preds = %bb.og, %bb.of
  %.334.i.i.i = phi i32 [ %i.cuy, %bb.of ], [ %i.cvp, %bb.og ] ; 2 uses
  %.3.i.i.i = phi ptr [ %i.cvi, %bb.of ], [ %i.cva, %bb.og ] ; 2 uses
  %i.cvq = load i8, ptr %.3.i.i.i, align 1, !tbaa !187 ; 2 uses
  %.not40.i.i.i = icmp eq i8 %i.cvq, 0
  br i1 %.not40.i.i.i, label %_Z9ImHashStrPKcmj.exit.i.i, label %.lr.ph.i.i.i697

_Z9ImHashStrPKcmj.exit.i.i:                       ; preds = %bb.oh
  %i.cvr = xor i32 %.334.i.i.i, -1                ; 3 uses
  %i.cvs = load ptr, ptr %.pre1056, align 8, !tbaa !786
  %i.cvt = getelementptr inbounds nuw i8, ptr %i.cvs, i64 5400
  %i.cvu = load i32, ptr %i.cvt, align 8, !tbaa !789
  %i.cvv = icmp eq i32 %i.cvu, %i.cvr
  br i1 %i.cvv, label %bb.oi, label %_ZN11ImGuiWindow5GetIDEPKcS1_.exit.i

bb.oi:                                            ; preds = %_Z9ImHashStrPKcmj.exit.i.i
  call void @_ZN5ImGui15DebugHookIdInfoEjiPKvS1_(i32 noundef %i.cvr, i32 noundef 11, ptr noundef nonnull @.str.604, ptr noundef null)
  br label %_ZN11ImGuiWindow5GetIDEPKcS1_.exit.i

_ZN11ImGuiWindow5GetIDEPKcS1_.exit.i:             ; preds = %bb.oi, %_Z9ImHashStrPKcmj.exit.i.i
  %i.cvw = call noundef zeroext i1 @_ZN5ImGui14CollapseButtonEjRK6ImVec2(i32 noundef %i.cvr, ptr noundef nonnull align 4 dereferenceable(8) %4)
  br i1 %i.cvw, label %bb.oj, label %bb.ok

bb.oj:                                            ; preds = %_ZN11ImGuiWindow5GetIDEPKcS1_.exit.i
  %i.cvx = getelementptr inbounds nuw i8, ptr %.pre1056, i64 208
  store i8 1, ptr %i.cvx, align 8, !tbaa !1215
  br label %bb.ok

bb.ok:                                            ; preds = %bb.oj, %_ZN11ImGuiWindow5GetIDEPKcS1_.exit.i, %bb.nz
  %.091146.i = phi float [ %.091.ph.i, %_ZN11ImGuiWindow5GetIDEPKcS1_.exit.i ], [ %.091.ph.i, %bb.oj ], [ %i.ctj, %bb.nz ] ; 3 uses
  %.1138144.i = phi float [ %.1.ph162.i, %_ZN11ImGuiWindow5GetIDEPKcS1_.exit.i ], [ %.1.ph162.i, %bb.oj ], [ %.0.i678, %bb.nz ] ; 3 uses
  br i1 %.not.i677, label %bb.ot, label %bb.ol

bb.ol:                                            ; preds = %bb.ok
  %i.cvy = load i32, ptr %i.cte, align 8, !tbaa !1036
  %i.cvz = or i32 %i.cvy, 131072
  store i32 %i.cvz, ptr %i.cte, align 8, !tbaa !1036
  %i.cwa = getelementptr inbounds nuw i8, ptr %.pre1056, i64 264
  %i.cwb = getelementptr inbounds nuw i8, ptr %.pre1056, i64 272
  %i.cwc = load ptr, ptr %i.cwb, align 8, !tbaa !604
  %i.cwd = load i32, ptr %i.cwa, align 8, !tbaa !606
  %i.cwe = sext i32 %i.cwd to i64
  %i.cwf = getelementptr [4 x i8], ptr %i.cwc, i64 %i.cwe
  %i.cwg = getelementptr i8, ptr %i.cwf, i64 -4
  %i.cwh = load i32, ptr %i.cwg, align 4, !tbaa !205
  %i.cwi = xor i32 %i.cwh, -1                     ; 2 uses
  br label %.lr.ph.i.i100.i

.lr.ph.i.i100.i:                                  ; preds = %bb.oq, %bb.ol
  %i.cwj = phi i8 [ %i.cxa, %bb.oq ], [ 35, %bb.ol ] ; 2 uses
  %.252.i.i101.i = phi ptr [ %.3.i.i104.i, %bb.oq ], [ @.str.605, %bb.ol ] ; 3 uses
  %.23351.i.i102.i = phi i32 [ %.334.i.i103.i, %bb.oq ], [ %i.cwi, %bb.ol ] ; 2 uses
  %i.cwk = getelementptr inbounds nuw i8, ptr %.252.i.i101.i, i64 1 ; 2 uses
  %i.cwl = zext i8 %i.cwj to i32
  %i.cwm = icmp eq i8 %i.cwj, 35
  br i1 %i.cwm, label %bb.om, label %bb.op

bb.om:                                            ; preds = %.lr.ph.i.i100.i
  %i.cwn = load i8, ptr %i.cwk, align 1, !tbaa !187
  %i.cwo = icmp eq i8 %i.cwn, 35
  br i1 %i.cwo, label %bb.on, label %bb.op

bb.on:                                            ; preds = %bb.om
  %i.cwp = getelementptr inbounds nuw i8, ptr %.252.i.i101.i, i64 2
end_hunk_3
begin_hunk_4_@_ZN5ImGui5BeginEPKcPbi:bb.a
bb.pb:                                            ; preds = %bb.pa
  %i.cyv = fadd float %i.cys, -5.000000e-01
  %i.cyw = call float @llvm.fabs.f32(float %i.cyv)
  %i.cyx = fneg float %i.cyw
  %i.cyy = call float @llvm.fmuladd.f32(float %i.cyx, float 2.000000e+00, float 1.000000e+00) ; 3 uses
  %i.cyz = fcmp olt float %i.cyy, 0.000000e+00
  %i.cza = fcmp ogt float %i.cyy, 1.000000e+00
  %i.czb = select i1 %i.cza, float 1.000000e+00, float %i.cyy
  %i.czc = select i1 %i.cyz, float 0.000000e+00, float %i.czb
  %i.czd = fcmp oge float %.192.i, %.2.i681
  %i.cze = select i1 %i.czd, float %.192.i, float %.2.i681 ; 2 uses
  %i.czf = fsub float %i.cst, %i.csp
  %i.czg = fsub float %i.czf, %.192.i
  %i.czh = fsub float %i.czg, %.2.i681
  %i.czi = extractelement <2 x float> %i.cyh, i64 0
  %i.czj = fsub float %i.czh, %i.czi              ; 2 uses
  %i.czk = fcmp olt float %i.cze, %i.czj
  %i.czl = select i1 %i.czk, float %i.cze, float %i.czj
  %i.czm = fmul float %i.czl, %i.czc              ; 4 uses
  %i.czn = fcmp oge float %.192.i, %i.czm
  %i.czo = select i1 %i.czn, float %.192.i, float %i.czm
  %i.czp = fcmp oge float %.2.i681, %i.czm
  %i.czq = select i1 %i.czp, float %.2.i681, float %i.czm
  br label %._crit_edge.i684

._crit_edge.i684:                                 ; preds = %bb.pa, %bb.pb
  %.293.i = phi float [ %i.czo, %bb.pb ], [ %.192.i, %bb.pa ]
  %.3.i686 = phi float [ %i.czq, %bb.pb ], [ %.2.i681, %bb.pa ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.czr = fadd float %i.csp, %.293.i             ; 7 uses
  %i.czs = fsub float %i.cst, %.3.i686            ; 5 uses
  store float %i.czr, ptr %6, align 4, !tbaa !227
  %i.czt = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.csr, ptr %i.czt, align 4, !tbaa !228
  %i.czu = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store float %i.czs, ptr %i.czu, align 4, !tbaa !227
  %i.czv = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float %i.csv, ptr %i.czv, align 4, !tbaa !228
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.czw = getelementptr inbounds nuw i8, ptr %i.csw, i64 3308
  %i.czx = load float, ptr %i.czw, align 4, !tbaa !1304
  %i.czy = fadd float %i.czs, %i.czx              ; 2 uses
  %i.czz = fcmp olt float %i.czy, %i.cst
  %i.daa = select i1 %i.czz, float %i.czy, float %i.cst ; 3 uses
  store float %i.czr, ptr %7, align 4, !tbaa !227
  %i.dab = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float %i.csr, ptr %i.dab, align 4, !tbaa !228
  %i.dac = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store float %i.daa, ptr %i.dac, align 4, !tbaa !227
  %i.dad = getelementptr inbounds nuw i8, ptr %7, i64 12
  store float %i.csv, ptr %i.dad, align 4, !tbaa !228
  br i1 %.not97.i, label %bb.pe, label %bb.pc

bb.pc:                                            ; preds = %._crit_edge.i684
  %i.dae = fsub float %i.czs, %i.czr
  %i.daf = extractelement <2 x float> %i.cyh, i64 0 ; 2 uses
  %i.dag = fsub float %i.dae, %i.daf
  %i.dah = call float @llvm.fmuladd.f32(float %i.dag, float %i.cys, float %i.czr)
  %i.dai = fadd float %i.daf, %i.dah              ; 3 uses
  %i.daj = fcmp olt float %i.dai, %i.czr
  %i.dak = fcmp ogt float %i.dai, %i.czs
  %i.dal = select i1 %i.dak, float %i.czs, float %i.dai
  %i.dam = select i1 %i.daj, float %i.czr, float %i.dal ; 3 uses
  %i.dan = fcmp ogt float %i.dam, %i.czr
  br i1 %i.dan, label %bb.pd, label %bb.pe

bb.pd:                                            ; preds = %bb.pc
  %.sroa.0.0.vec.insert.i687 = insertelement <2 x float> poison, float %i.dam, i64 0
  %i.dao = fadd float %i.csr, %i.csv
  %i.dap = fmul float %i.dao, 5.000000e-01
  %.sroa.0.4.vec.insert.i688 = insertelement <2 x float> %.sroa.0.0.vec.insert.i687, float %i.dap, i64 1
  %i.daq = getelementptr inbounds nuw i8, ptr %.pre1056, i64 712
  %i.dar = load ptr, ptr %i.daq, align 8, !tbaa !452
  %i.das = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.dat = getelementptr inbounds nuw i8, ptr %i.das, i64 4428
  %i.dau = getelementptr inbounds nuw i8, ptr %i.das, i64 3220
  %i.dav = load float, ptr %i.dau, align 4, !tbaa !416
  %i.daw = load <4 x float>, ptr %i.dat, align 4, !tbaa !8
  %i.dax = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.dav, i64 3
  %i.day = fmul <4 x float> %i.daw, %i.dax        ; 3 uses
  %i.daz = fcmp olt <4 x float> %i.day, zeroinitializer
  %i.dba = fcmp ogt <4 x float> %i.day, splat (float 1.000000e+00)
  %i.dbb = select <4 x i1> %i.dba, <4 x float> splat (float 1.000000e+00), <4 x float> %i.day
  %i.dbc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dbb, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.dbd = select <4 x i1> %i.daz, <4 x float> splat (float 5.000000e-01), <4 x float> %i.dbc
  %i.dbe = fptosi <4 x float> %i.dbd to <4 x i32>
  %i.dbf = shl <4 x i32> %i.dbe, <i32 0, i32 8, i32 16, i32 24>
  %i.dbg = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.dbf)
  call void @_ZN5ImGui12RenderBulletEP10ImDrawList6ImVec2j(ptr noundef %i.dar, <2 x float> %.sroa.0.4.vec.insert.i688, i32 noundef %i.dbg)
  %i.dbh = fmul float %i.cxi, 5.000000e-01
  %i.dbi = fptosi float %i.dbh to i32
  %i.dbj = sitofp i32 %i.dbi to float
  %i.dbk = fsub float %i.dam, %i.dbj              ; 2 uses
  %i.dbl = fcmp olt float %i.daa, %i.dbk
  %i.dbm = select i1 %i.dbl, float %i.daa, float %i.dbk
  store float %i.dbm, ptr %i.dac, align 4, !tbaa !395
  br label %bb.pe

bb.pe:                                            ; preds = %bb.pd, %bb.pc, %._crit_edge.i684
  br i1 %.not148.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i110.i, label %.lr.ph.preheader.i.i111.i

.lr.ph.preheader.i.i111.i:                        ; preds = %bb.pe
  %i.dbn = ptrtoaddr ptr %0 to i64
  %i.dbo = xor i64 %i.dbn, -1
  %scevgep.i.i112.i = getelementptr i8, ptr %0, i64 %i.dbo
  br label %.lr.ph.i.i113.i

.lr.ph.i.i113.i:                                  ; preds = %.critedge2.i.i116.i, %.lr.ph.preheader.i.i111.i
  %.015.i.i114.i = phi ptr [ %i.dbs, %.critedge2.i.i116.i ], [ %0, %.lr.ph.preheader.i.i111.i ] ; 5 uses
  %i.dbp = load i8, ptr %.015.i.i114.i, align 1, !tbaa !187
  switch i8 %i.dbp, label %.critedge2.i.i116.i [
    i8 0, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i110.i
    i8 35, label %bb.pf
  ]

bb.pf:                                            ; preds = %.lr.ph.i.i113.i
  %i.dbq = getelementptr inbounds nuw i8, ptr %.015.i.i114.i, i64 1
  %i.dbr = load i8, ptr %i.dbq, align 1, !tbaa !187
  %.not14.i.i115.i = icmp eq i8 %i.dbr, 35
  br i1 %.not14.i.i115.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i110.i, label %.critedge2.i.i116.i

.critedge2.i.i116.i:                              ; preds = %bb.pf, %.lr.ph.i.i113.i
  %i.dbs = getelementptr inbounds nuw i8, ptr %.015.i.i114.i, i64 1 ; 2 uses
  %exitcond.not.i.i117.i = icmp eq ptr %i.dbs, inttoptr (i64 -1 to ptr)
  br i1 %exitcond.not.i.i117.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i110.i, label %.lr.ph.i.i113.i, !llvm.loop !451

_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i110.i: ; preds = %.critedge2.i.i116.i, %bb.pf, %.lr.ph.i.i113.i, %bb.pe
  %.0.lcssa.i.i.i = phi ptr [ inttoptr (i64 -1 to ptr), %bb.pe ], [ %.015.i.i114.i, %.lr.ph.i.i113.i ], [ %scevgep.i.i112.i, %.critedge2.i.i116.i ], [ %.015.i.i114.i, %bb.pf ] ; 3 uses
  %i.dbt = ptrtoint ptr %.0.lcssa.i.i.i to i64
  %i.dbu = ptrtoint ptr %0 to i64
  %i.dbv = sub i64 %i.dbt, %i.dbu
  %i.dbw = and i64 %i.dbv, 4294967295
  %i.dbx = icmp eq i64 %i.dbw, 0
  br i1 %i.dbx, label %_ZN5ImGuiL28RenderWindowTitleBarContentsEP11ImGuiWindowRK6ImRectPKcPb.exit, label %bb.pg

bb.pg:                                            ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i110.i
  %i.dby = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.dbz = getelementptr inbounds nuw i8, ptr %i.dby, i64 5312
  %i.dca = load ptr, ptr %i.dbz, align 8, !tbaa !298
  %i.dcb = getelementptr inbounds nuw i8, ptr %i.dca, i64 712
  %i.dcc = load ptr, ptr %i.dcb, align 8, !tbaa !452
  call void @_ZN5ImGui19RenderTextClippedExEP10ImDrawListRK6ImVec2S4_PKcS6_PS3_S4_PK6ImRect(ptr noundef %i.dcc, ptr noundef nonnull readonly align 4 dereferenceable(8) %6, ptr noundef nonnull readonly align 4 dereferenceable(8) %i.czu, ptr noundef nonnull %0, ptr noundef %.0.lcssa.i.i.i, ptr noundef nonnull readonly %5, ptr noundef nonnull readonly align 4 dereferenceable(8) %i.cyr, ptr noundef nonnull readonly %7)
  %i.dcd = getelementptr inbounds nuw i8, ptr %i.dby, i64 10264
  %i.dce = load i8, ptr %i.dcd, align 8, !tbaa !387, !range !64, !noundef !204
  %i.dcf = trunc nuw i8 %i.dce to i1
  br i1 %i.dcf, label %bb.ph, label %_ZN5ImGuiL28RenderWindowTitleBarContentsEP11ImGuiWindowRK6ImRectPKcPb.exit

bb.ph:                                            ; preds = %bb.pg
  call void @_ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_(ptr noundef nonnull readonly align 4 dereferenceable(8) %6, ptr noundef nonnull %0, ptr noundef %.0.lcssa.i.i.i)
  br label %_ZN5ImGuiL28RenderWindowTitleBarContentsEP11ImGuiWindowRK6ImRectPKcPb.exit

_ZN5ImGuiL28RenderWindowTitleBarContentsEP11ImGuiWindowRK6ImRectPKcPb.exit: ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i110.i, %bb.pg, %bb.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  %.pre1055 = load ptr, ptr %i.g, align 8, !tbaa !705
  br label %bb.pi

bb.pi:                                            ; preds = %_ZN5ImGuiL28RenderWindowTitleBarContentsEP11ImGuiWindowRK6ImRectPKcPb.exit, %_ZN5ImGui14LogToClipboardEi.exit
  %i.dcg = phi ptr [ %.pre1055, %_ZN5ImGuiL28RenderWindowTitleBarContentsEP11ImGuiWindowRK6ImRectPKcPb.exit ], [ %.pre1056, %_ZN5ImGui14LogToClipboardEi.exit ] ; 9 uses
  %i.dch = getelementptr inbounds nuw i8, ptr %i.dcg, i64 650
  store i16 0, ptr %i.dch, align 2, !tbaa !931
  %i.dci = getelementptr inbounds nuw i8, ptr %i.dcg, i64 648
  store i16 0, ptr %i.dci, align 8, !tbaa !927
  br i1 %.not463, label %bb.pk, label %bb.pj

bb.pj:                                            ; preds = %bb.pi
  %i.dcj = getelementptr inbounds nuw i8, ptr %i.j, i64 9864
  store ptr %i.dcg, ptr %i.dcj, align 8, !tbaa !675
  br label %bb.pk

bb.pk:                                            ; preds = %bb.pj, %bb.pi
  br i1 %.not462, label %bb.pm, label %bb.pl

bb.pl:                                            ; preds = %bb.pk
  %i.dck = getelementptr inbounds nuw i8, ptr %i.kb, i64 239
  %i.dcl = load i32, ptr %i.dck, align 1
  %i.dcm = shl i32 %i.dcl, 24
  %i.dcn = ashr exact i32 %i.dcm, 24
  br label %bb.pn

bb.pm:                                            ; preds = %bb.pk
  %i.dco = getelementptr inbounds nuw i8, ptr %i.j, i64 130
  %i.dcp = load i8, ptr %i.dco, align 2, !tbaa !1306, !range !64, !noundef !204
  %i.dcq = xor i8 %i.dcp, 1
  %not. = zext nneg i8 %i.dcq to i32
  br label %bb.pn

bb.pn:                                            ; preds = %bb.pm, %bb.pl
  %i.dcr = phi i32 [ %i.dcn, %bb.pl ], [ %not., %bb.pm ]
  %i.dcs = getelementptr inbounds nuw i8, ptr %i.dcg, i64 239 ; 2 uses
  %i.dct = load i32, ptr %i.dcs, align 1
  %i.dcu = and i32 %i.dcr, 255
  %i.dcv = and i32 %i.dct, -256
  %i.dcw = or disjoint i32 %i.dcv, %i.dcu
  store i32 %i.dcw, ptr %i.dcs, align 1
  %i.dcx = getelementptr inbounds nuw i8, ptr %i.dcg, i64 480
  %i.dcy = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 10 uses
  %i.dcz = load <2 x float>, ptr %29, align 8     ; 2 uses
  %i.dda = load <2 x float>, ptr %i.bjl, align 8  ; 2 uses
  %i.ddb = getelementptr inbounds nuw i8, ptr %i.dcy, i64 272
  %i.ddc = getelementptr inbounds nuw i8, ptr %i.dcy, i64 3324
  %i.ddd = load float, ptr %i.ddb, align 4, !tbaa !227 ; 2 uses
  %.sroa.0.0.vec.extract8.i = extractelement <2 x float> %i.dcz, i64 0
  %i.dde = load float, ptr %i.ddc, align 4, !tbaa !227 ; 2 uses
  %i.ddf = fsub float %.sroa.0.0.vec.extract8.i, %i.dde
  %i.ddg = fcmp ult float %i.ddd, %i.ddf
  br i1 %i.ddg, label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit, label %bb.po

bb.po:                                            ; preds = %bb.pn
  %i.ddh = getelementptr inbounds nuw i8, ptr %i.dcy, i64 276
  %i.ddi = load float, ptr %i.ddh, align 4, !tbaa !228 ; 2 uses
  %.sroa.0.4.vec.extract10.i = extractelement <2 x float> %i.dcz, i64 1
  %i.ddj = getelementptr inbounds nuw i8, ptr %i.dcy, i64 3328
  %i.ddk = load float, ptr %i.ddj, align 4, !tbaa !228 ; 2 uses
  %i.ddl = fsub float %.sroa.0.4.vec.extract10.i, %i.ddk
  %i.ddm = fcmp oge float %i.ddi, %i.ddl
  %.sroa.8.8.vec.extract13.i = extractelement <2 x float> %i.dda, i64 0
  %i.ddn = fadd float %.sroa.8.8.vec.extract13.i, %i.dde
  %i.ddo = fcmp olt float %i.ddd, %i.ddn
  %or.cond.i698 = select i1 %i.ddm, i1 %i.ddo, i1 false
  br i1 %or.cond.i698, label %bb.pp, label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit

bb.pp:                                            ; preds = %bb.po
  %.sroa.8.12.vec.extract15.i = extractelement <2 x float> %i.dda, i64 1
  %i.ddp = fadd float %.sroa.8.12.vec.extract15.i, %i.ddk
  %i.ddq = fcmp olt float %i.ddi, %i.ddp
  %i.ddr = zext i1 %i.ddq to i32
  br label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit

_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit: ; preds = %bb.pn, %bb.po, %bb.pp
  %i.dds = phi i32 [ %i.ddr, %bb.pp ], [ 0, %bb.po ], [ 0, %bb.pn ] ; 2 uses
  store i32 %i.dds, ptr %i.dcx, align 8, !tbaa !1307
  %i.ddt = getelementptr i8, ptr %i.dcg, i64 140  ; 2 uses
  %.val550 = load i32, ptr %i.ddt, align 4, !tbaa !790
  %i.ddu = getelementptr inbounds nuw i8, ptr %i.dcy, i64 7784
  %i.ddv = load i32, ptr %i.ddu, align 8, !tbaa !1036
  %i.ddw = getelementptr inbounds nuw i8, ptr %i.dcy, i64 7848
  store i32 %.val550, ptr %i.ddw, align 8, !tbaa !475
  %i.ddx = getelementptr inbounds nuw i8, ptr %i.dcy, i64 7852
  store i32 %i.ddv, ptr %i.ddx, align 4, !tbaa !476
  %i.ddy = getelementptr inbounds nuw i8, ptr %i.dcy, i64 7856
  store i32 %i.dds, ptr %i.ddy, align 8, !tbaa !843
  %i.ddz = getelementptr inbounds nuw i8, ptr %i.dcy, i64 7876
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ddz, ptr noundef nonnull readonly align 8 dereferenceable(16) %29, i64 16, i1 false), !tbaa.struct !419
  %i.dea = getelementptr inbounds nuw i8, ptr %i.dcy, i64 7860
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dea, ptr noundef nonnull readonly align 8 dereferenceable(16) %29, i64 16, i1 false)
  %i.deb = getelementptr inbounds nuw i8, ptr %i.j, i64 7788
  %i.dec = load i32, ptr %i.deb, align 4, !tbaa !1144 ; 3 uses
  %.not504 = icmp eq i32 %i.dec, 0
  br i1 %.not504, label %bb.pt, label %bb.pq

bb.pq:                                            ; preds = %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit
  %i.ded = getelementptr inbounds nuw i8, ptr %i.dcg, i64 16
  %i.dee = load i32, ptr %i.ded, align 8, !tbaa !726
  %i.def = icmp eq i32 %i.dee, %i.dec
  br i1 %i.def, label %bb.ps, label %bb.pr

bb.pr:                                            ; preds = %bb.pq
  %i.deg = load i32, ptr %i.ddt, align 4, !tbaa !790
  %i.deh = icmp eq i32 %i.deg, %i.dec
  br i1 %i.deh, label %bb.ps, label %bb.pt

bb.ps:                                            ; preds = %bb.pr, %bb.pq
  call void @_ZN5ImGui34DebugLocateItemResolveWithLastItemEv()
  %.pre1062.pre = load ptr, ptr %i.g, align 8, !tbaa !705
  br label %bb.pt

bb.pt:                                            ; preds = %bb.ps, %bb.pr, %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit
  %.pre1062 = phi ptr [ %.pre1062.pre, %bb.ps ], [ %i.dcg, %bb.pr ], [ %i.dcg, %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #41
  br label %bb.qc

bb.pu:                                            ; preds = %bb.cy
  br i1 %i.wc, label %.thread1187, label %.thread988

.thread1187:                                      ; preds = %bb.cz, %bb.pu
  call fastcc void @_ZL29SetWindowActiveForSkipRefreshP11ImGuiWindow(ptr noundef nonnull %.pre1057)
  %.pr = load ptr, ptr %i.g, align 8, !tbaa !705, !nonnull !204, !noundef !204
  br label %.thread988

.thread988:                                       ; preds = %bb.pu, %.thread1187
  %.pr.sink = phi ptr [ %.pr, %.thread1187 ], [ %.pre1057, %bb.pu ] ; 4 uses
  %i.dei = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 10 uses
  %i.dej = getelementptr inbounds nuw i8, ptr %i.dei, i64 5312
  store ptr %.pr.sink, ptr %i.dej, align 8, !tbaa !298
  %i.dek = getelementptr inbounds nuw i8, ptr %i.dei, i64 5264
  %i.del = getelementptr inbounds nuw i8, ptr %i.dei, i64 5272
  %i.dem = load ptr, ptr %i.del, align 8, !tbaa !565
  %i.den = load i32, ptr %i.dek, align 8, !tbaa !567
  %i.deo = sext i32 %i.den to i64
  %i.dep = getelementptr [120 x i8], ptr %i.dem, i64 %i.deo
  %i.deq = getelementptr i8, ptr %i.dep, i64 -32
  %i.der = getelementptr inbounds nuw i8, ptr %i.dei, i64 10392
  store ptr %i.deq, ptr %i.der, align 8, !tbaa !680
  %i.des = getelementptr inbounds nuw i8, ptr %.pr.sink, i64 464
  %i.det = load i32, ptr %i.des, align 8, !tbaa !1222 ; 2 uses
  %.not23.i700 = icmp eq i32 %i.det, -1
  br i1 %.not23.i700, label %bb.pw, label %bb.pv

bb.pv:                                            ; preds = %.thread988
  %i.deu = getelementptr inbounds nuw i8, ptr %i.dei, i64 9024
  %i.dev = load ptr, ptr %i.deu, align 8, !tbaa !700
  %i.dew = sext i32 %i.det to i64
  %i.dex = getelementptr inbounds [592 x i8], ptr %i.dev, i64 %i.dew
  br label %bb.pw

bb.pw:                                            ; preds = %bb.pv, %.thread988
  %.ph.i701 = phi ptr [ null, %.thread988 ], [ %i.dex, %bb.pv ]
  %i.dey = getelementptr inbounds nuw i8, ptr %i.dei, i64 8984
  store ptr %.ph.i701, ptr %i.dey, align 8, !tbaa !338
  %i.dez = getelementptr inbounds nuw i8, ptr %i.dei, i64 4584
  store float 1.000000e+00, ptr %i.dez, align 8, !tbaa !1227
  %i.dfa = getelementptr inbounds nuw i8, ptr %i.dei, i64 44
  %i.dfb = load i32, ptr %i.dfa, align 4, !tbaa !950
  %i.dfc = and i32 %i.dfb, 16
  %.not24.i702 = icmp eq i32 %i.dfc, 0
  br i1 %.not24.i702, label %bb.qa, label %bb.px

bb.px:                                            ; preds = %bb.pw
  %i.dfd = getelementptr inbounds nuw i8, ptr %.pr.sink, i64 32
  %i.dfe = load ptr, ptr %i.dfd, align 8, !tbaa !1226
  %i.dff = getelementptr inbounds nuw i8, ptr %i.dfe, i64 24
  %i.dfg = load float, ptr %i.dff, align 8, !tbaa !1228 ; 2 uses
  %i.dfh = fcmp une float %i.dfg, 0.000000e+00
  br i1 %i.dfh, label %bb.pz, label %bb.py

bb.py:                                            ; preds = %bb.px
  %i.dfi = getelementptr inbounds nuw i8, ptr %i.dei, i64 56
  %i.dfj = load float, ptr %i.dfi, align 8, !tbaa !1229
  br label %bb.pz

bb.pz:                                            ; preds = %bb.py, %bb.px
  %i.dfk = phi float [ %i.dfj, %bb.py ], [ %i.dfg, %bb.px ]
  %i.dfl = getelementptr inbounds nuw i8, ptr %i.dei, i64 4580
  store float %i.dfk, ptr %i.dfl, align 4, !tbaa !1230
  br label %bb.qa

bb.qa:                                            ; preds = %bb.pz, %bb.pw
  %i.dfm = getelementptr inbounds nuw i8, ptr %.pr.sink, i64 209 ; 3 uses
  %i.dfn = load i8, ptr %i.dfm, align 1, !tbaa !1231, !range !64, !noundef !204
  store i8 0, ptr %i.dfm, align 1, !tbaa !1231
  call void @_ZN5ImGui21UpdateCurrentFontSizeEf(float noundef 0.000000e+00)
  store i8 %i.dfn, ptr %i.dfm, align 1, !tbaa !1231
  %i.dfo = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 10 uses
  %i.dfp = getelementptr inbounds nuw i8, ptr %i.dfo, i64 5312
  %i.dfq = load ptr, ptr %i.dfp, align 8, !tbaa !298 ; 2 uses
  %i.dfr = getelementptr inbounds nuw i8, ptr %i.dfo, i64 8984
  %i.dfs = load ptr, ptr %i.dfr, align 8, !tbaa !338
  %i.dft = icmp eq ptr %i.dfs, null
  br i1 %i.dft, label %bb.qb, label %_ZN5ImGui39NavUpdateCurrentWindowIsScrollPushableXEv.exit.i703

bb.qb:                                            ; preds = %bb.qa
  %i.dfu = getelementptr inbounds nuw i8, ptr %i.dfq, i64 456
  %i.dfv = load ptr, ptr %i.dfu, align 8, !tbaa !333
  %i.dfw = icmp eq ptr %i.dfv, null
  %i.dfx = zext i1 %i.dfw to i8
  br label %_ZN5ImGui39NavUpdateCurrentWindowIsScrollPushableXEv.exit.i703

_ZN5ImGui39NavUpdateCurrentWindowIsScrollPushableXEv.exit.i703: ; preds = %bb.qb, %bb.qa
  %i.dfy = phi i8 [ 0, %bb.qa ], [ %i.dfx, %bb.qb ]
  %i.dfz = getelementptr inbounds nuw i8, ptr %i.dfq, i64 376
  store i8 %i.dfy, ptr %i.dfz, align 8, !tbaa !1232
  %.pre1061 = load ptr, ptr %i.g, align 8, !tbaa !705 ; 6 uses
  %i.dga = getelementptr inbounds nuw i8, ptr %.pre1061, i64 40
  %i.dgb = getelementptr inbounds nuw i8, ptr %.pre1061, i64 56
  %i.dgc = load float, ptr %i.dgb, align 8, !tbaa !910
  %i.dgd = getelementptr inbounds nuw i8, ptr %.pre1061, i64 104
  %i.dge = load float, ptr %i.dgd, align 8, !tbaa !909
  %i.dgf = load <2 x float>, ptr %i.dga, align 8, !tbaa !8 ; 3 uses
  %i.dgg = insertelement <2 x float> poison, float %i.dgc, i64 0
  %i.dgh = insertelement <2 x float> %i.dgg, float %i.dge, i64 1
  %i.dgi = fadd <2 x float> %i.dgf, %i.dgh        ; 2 uses
  %i.dgj = getelementptr i8, ptr %.pre1061, i64 140
  %.val548 = load i32, ptr %i.dgj, align 4, !tbaa !790
  %i.dgk = getelementptr i8, ptr %.pre1061, i64 480
  %.val549 = load i32, ptr %i.dgk, align 8, !tbaa !1307
  %i.dgl = getelementptr inbounds nuw i8, ptr %i.dfo, i64 7784
  %i.dgm = load i32, ptr %i.dgl, align 8, !tbaa !1036
  %i.dgn = getelementptr inbounds nuw i8, ptr %i.dfo, i64 7848
  store i32 %.val548, ptr %i.dgn, align 8, !tbaa !475
  %i.dgo = getelementptr inbounds nuw i8, ptr %i.dfo, i64 7852
  store i32 %i.dgm, ptr %i.dgo, align 4, !tbaa !476
  %i.dgp = getelementptr inbounds nuw i8, ptr %i.dfo, i64 7856
  store i32 %.val549, ptr %i.dgp, align 8, !tbaa !843
  %i.dgq = getelementptr inbounds nuw i8, ptr %i.dfo, i64 7876
  store <2 x float> %i.dgf, ptr %i.dgq, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dfo, i64 7884
  store <2 x float> %i.dgi, ptr %.sroa.5.0..sroa_idx, align 4
  %i.dgr = getelementptr inbounds nuw i8, ptr %i.dfo, i64 7860
  store <2 x float> %i.dgf, ptr %i.dgr, align 4
  %.sroa.5.0..sroa_idx795 = getelementptr inbounds nuw i8, ptr %i.dfo, i64 7868
  store <2 x float> %i.dgi, ptr %.sroa.5.0..sroa_idx795, align 4
  br label %bb.qc

bb.qc:                                            ; preds = %_ZN5ImGui39NavUpdateCurrentWindowIsScrollPushableXEv.exit.i703, %bb.pt
  %i.dgs = phi ptr [ %.pre1061, %_ZN5ImGui39NavUpdateCurrentWindowIsScrollPushableXEv.exit.i703 ], [ %.pre1062, %bb.pt ] ; 4 uses
  %i.dgt = getelementptr inbounds nuw i8, ptr %i.dgs, i64 210
  %i.dgu = load i8, ptr %i.dgt, align 2, !tbaa !1216, !range !64, !noundef !204
  %i.dgv = trunc nuw i8 %i.dgu to i1
  br i1 %i.dgv, label %bb.qe, label %bb.qd

bb.qd:                                            ; preds = %bb.qc
  %i.dgw = getelementptr inbounds nuw i8, ptr %i.dgs, i64 568
  %i.dgx = getelementptr inbounds nuw i8, ptr %i.dgs, i64 576
  %i.dgy = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.dgz = getelementptr inbounds nuw i8, ptr %i.dgy, i64 5312
  %i.dha = load ptr, ptr %i.dgz, align 8, !tbaa !298 ; 3 uses
  %i.dhb = getelementptr inbounds nuw i8, ptr %i.dha, i64 206
  store i8 1, ptr %i.dhb, align 2, !tbaa !854
  %i.dhc = getelementptr inbounds nuw i8, ptr %i.dha, i64 712 ; 2 uses
  %i.dhd = load ptr, ptr %i.dhc, align 8, !tbaa !452
  call void @_ZN10ImDrawList12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 8 dereferenceable(224) %i.dhd, ptr noundef nonnull align 4 dereferenceable(8) %i.dgw, ptr noundef nonnull align 4 dereferenceable(8) %i.dgx, i1 noundef zeroext true)
  %i.dhe = load ptr, ptr %i.dhc, align 8, !tbaa !452 ; 2 uses
  %i.dhf = getelementptr inbounds nuw i8, ptr %i.dhe, i64 160
  %i.dhg = getelementptr inbounds nuw i8, ptr %i.dhe, i64 168
  %i.dhh = load ptr, ptr %i.dhg, align 8, !tbaa !1265
  %i.dhi = load i32, ptr %i.dhf, align 8, !tbaa !1266
  %i.dhj = sext i32 %i.dhi to i64
  %i.dhk = getelementptr [16 x i8], ptr %i.dhh, i64 %i.dhj
  %i.dhl = getelementptr i8, ptr %i.dhk, i64 -16
  %i.dhm = getelementptr inbounds nuw i8, ptr %i.dha, i64 616
  %i.dhn = load <4 x float>, ptr %i.dhl, align 4, !tbaa !8
  store <4 x float> %i.dhn, ptr %i.dhm, align 8, !tbaa !8
  %.pre1063 = load ptr, ptr %i.g, align 8, !tbaa !705
  br label %bb.qe

bb.qe:                                            ; preds = %bb.qd, %bb.qc
  %i.dho = phi ptr [ %.pre1063, %bb.qd ], [ %i.dgs, %bb.qc ] ; 31 uses
  %i.dhp = getelementptr inbounds nuw i8, ptr %i.dho, i64 206
  store i8 0, ptr %i.dhp, align 2, !tbaa !854
  %i.dhq = getelementptr inbounds nuw i8, ptr %i.dho, i64 218 ; 2 uses
  %i.dhr = load i16, ptr %i.dhq, align 2, !tbaa !1097
  %i.dhs = add i16 %i.dhr, 1
  store i16 %i.dhs, ptr %i.dhq, align 2, !tbaa !1097
  store i32 0, ptr %i.pn, align 8, !tbaa !1308
  br i1 %.not444, label %.critedge544, label %bb.qf

bb.qf:                                            ; preds = %bb.qe
  %i.dht = getelementptr inbounds nuw i8, ptr %i.dho, i64 210
  %i.dhu = load i8, ptr %i.dht, align 2, !tbaa !1216, !range !64, !noundef !204
  %i.dhv = trunc nuw i8 %i.dhu to i1
  br i1 %i.dhv, label %.critedge544.sink.split, label %bb.qg

bb.qg:                                            ; preds = %bb.qf
  %i.dhw = and i32 %.1403, 285212672
  %brmerge539.not = icmp eq i32 %i.dhw, 16777216
  br i1 %brmerge539.not, label %bb.qh, label %.critedge541

bb.qh:                                            ; preds = %bb.qg
  %i.dhx = getelementptr inbounds nuw i8, ptr %i.dho, i64 24
  %i.dhy = load i32, ptr %i.dhx, align 8, !tbaa !1188
  %i.dhz = and i32 %i.dhy, 256
  %.not506 = icmp eq i32 %i.dhz, 0
  br i1 %.not506, label %bb.ql, label %bb.qi

bb.qi:                                            ; preds = %bb.qh
  %i.dia = getelementptr inbounds nuw i8, ptr %i.j, i64 8321
  %i.dib = load i8, ptr %i.dia, align 1, !tbaa !882, !range !64, !noundef !204
  %i.dic = trunc nuw i8 %i.dib to i1
  br i1 %i.dic, label %bb.qj, label %bb.ql

bb.qj:                                            ; preds = %bb.qi
  %i.did = getelementptr inbounds nuw i8, ptr %i.j, i64 8224
  %i.die = load ptr, ptr %i.did, align 8, !tbaa !389 ; 2 uses
  %.not507 = icmp eq ptr %i.die, null
  br i1 %.not507, label %bb.ql, label %bb.qk

bb.qk:                                            ; preds = %bb.qj
  %i.dif = getelementptr inbounds nuw i8, ptr %i.die, i64 984
  %i.dig = load ptr, ptr %i.dif, align 8, !tbaa !390
end_hunk_4
