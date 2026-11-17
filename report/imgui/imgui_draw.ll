Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_draw?download=true
inline.NumInlined: 1480
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 299
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 353
begin_hunk_0_@_ZN10ImDrawData5ClearEv:bb.a
bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr %i.h, ptr %i.i, align 8, !tbaa !48
  store i32 0, ptr %i.e, align 4, !tbaa !77
  br label %_ZN8ImVectorIP10ImDrawListE6resizeEi.exit

_ZN8ImVectorIP10ImDrawListE6resizeEi.exit:        ; preds = %bb.a, %bb.d
  store i32 0, ptr %i.d, align 8, !tbaa !74
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.o, i8 0, i64 44, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui23AddDrawListToDrawDataExEP10ImDrawDataP8ImVectorIP10ImDrawListES4_(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2) local_unnamed_addr #10 {
bb.a:
  %i.a = load i32, ptr %2, align 8, !tbaa !104    ; 2 uses
  switch i32 %i.a, label %bb.d [
    i32 0, label %bb.n
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !84   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !107
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !108
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.k = load i32, ptr %i.j, align 8, !tbaa !234
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !84   ; 2 uses
  %i.o = sext i32 %i.a to i64
  %.idx = mul nsw i64 %i.o, 72
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 %.idx
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 200
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.i
  %.023 = phi ptr [ %i.n, %.lr.ph ], [ %i.ac, %bb.i ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.023, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !108
  %.not16 = icmp eq ptr %i.s, null
  br i1 %.not16, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.023, i64 68
  %i.u = load i32, ptr %i.t, align 4, !tbaa !233  ; 2 uses
  %.not17 = icmp eq i32 %i.u, -1
  br i1 %.not17, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %.023, i64 64
  %i.w = load i32, ptr %i.v, align 8, !tbaa !232
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !235
  %i.z = sext i32 %i.u to i64
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %.023, i64 56
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !231
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.023, i64 72 ; 2 uses
  %.not = icmp eq ptr %i.ac, %i.p
  br i1 %.not, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %bb.i, %bb.d
  %i.ad = load i32, ptr %1, align 8, !tbaa !74    ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !77
  %i.ag = icmp eq i32 %i.ad, %i.af
  br i1 %i.ag, label %bb.j, label %._ZN8ImVectorIP10ImDrawListE7reserveEi.exit_crit_edge.i

._ZN8ImVectorIP10ImDrawListE7reserveEi.exit_crit_edge.i: ; preds = %.loopexit
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !48
  br label %_ZN8ImVectorIP10ImDrawListE9push_backERKS1_.exit

bb.j:                                             ; preds = %.loopexit
  %i.ah = add nsw i32 %i.ad, 1
  %.not.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorIP10ImDrawListE14_grow_capacityEi.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = sdiv i32 %i.ad, 2
  %i.aj = add nsw i32 %i.ai, %i.ad
  br label %_ZNK8ImVectorIP10ImDrawListE14_grow_capacityEi.exit.i

_ZNK8ImVectorIP10ImDrawListE14_grow_capacityEi.exit.i: ; preds = %bb.k, %bb.j
  %i.ak = phi i32 [ %i.aj, %bb.k ], [ 8, %bb.j ]
  %i.al = tail call noundef i32 @llvm.smax.i32(i32 %i.ak, i32 %i.ah) ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = shl nsw i64 %i.am, 3
  %i.ao = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.an) ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !48 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.aq, null
  br i1 %.not6.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNK8ImVectorIP10ImDrawListE14_grow_capacityEi.exit.i
  %i.ar = load i32, ptr %1, align 8, !tbaa !74
  %i.as = sext i32 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ao, ptr nonnull align 8 %i.aq, i64 %i.at, i1 false)
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !48
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.au)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNK8ImVectorIP10ImDrawListE14_grow_capacityEi.exit.i
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !48
  store i32 %i.al, ptr %i.ae, align 4, !tbaa !77
  %.pre3.i = load i32, ptr %1, align 8, !tbaa !74
  br label %_ZN8ImVectorIP10ImDrawListE9push_backERKS1_.exit

_ZN8ImVectorIP10ImDrawListE9push_backERKS1_.exit: ; preds = %._ZN8ImVectorIP10ImDrawListE7reserveEi.exit_crit_edge.i, %bb.m
  %i.av = phi i32 [ %i.ad, %._ZN8ImVectorIP10ImDrawListE7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.m ]
  %i.aw = phi ptr [ %.pre.i, %._ZN8ImVectorIP10ImDrawListE7reserveEi.exit_crit_edge.i ], [ %i.ao, %bb.m ]
  %i.ax = sext i32 %i.av to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.ax
  %i.az = ptrtoint ptr %2 to i64
  store i64 %i.az, ptr %i.ay, align 8
  %i.ba = load i32, ptr %1, align 8, !tbaa !74
  %i.bb = add nsw i32 %i.ba, 1
  store i32 %i.bb, ptr %1, align 8, !tbaa !74
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !240
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !291
  %i.bg = add nsw i32 %i.bf, %i.bd
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !291
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !110
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !292
  %i.bl = add nsw i32 %i.bk, %i.bi
  store i32 %i.bl, ptr %i.bj, align 8, !tbaa !292
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.c, %_ZN8ImVectorIP10ImDrawListE9push_backERKS1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN10ImDrawData11AddDrawListEP10ImDrawList(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(76) %0, ptr noundef %1) local_unnamed_addr #10 align 2 {
bb.a:
  %.pr.i = load i32, ptr %1, align 8, !tbaa !104  ; 2 uses
  %i.a = icmp sgt i32 %.pr.i, 0
  br i1 %i.a, label %.lr.ph.i, label %_ZN10ImDrawList17_PopUnusedDrawCmdEv.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !105
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %i.d = phi i32 [ %.pr.i, %.lr.ph.i ], [ %i.k, %bb.d ] ; 3 uses
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr [72 x i8], ptr %i.c, i64 %i.e ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 -32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !107
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN10ImDrawList17_PopUnusedDrawCmdEv.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.f, i64 -24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !108
  %.not4.i = icmp eq ptr %i.j, null
  br i1 %.not4.i, label %bb.d, label %_ZN10ImDrawList17_PopUnusedDrawCmdEv.exit

bb.d:                                             ; preds = %bb.c
  %i.k = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.k, ptr %1, align 8, !tbaa !86
  %i.l = icmp sgt i32 %i.d, 1
  br i1 %i.l, label %bb.b, label %_ZN10ImDrawList17_PopUnusedDrawCmdEv.exit

_ZN10ImDrawList17_PopUnusedDrawCmdEv.exit:        ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN5ImGui23AddDrawListToDrawDataExEP10ImDrawDataP8ImVectorIP10ImDrawListES4_(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN10ImDrawData17DeIndexAllBuffersEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(76) initializes((8, 16)) %0) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.ImVector.3, align 8         ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !292
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 0, ptr %i.b, align 4, !tbaa !291
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48   ; 2 uses
  %i.f = load i32, ptr %i.c, align 8, !tbaa !74   ; 2 uses
  %i.g = sext i32 %i.f to i64
  %.idx = shl nsw i64 %i.g, 3
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %.idx
  %.not27 = icmp eq i32 %i.f, 0
  br i1 %.not27, label %_ZN8ImVectorI10ImDrawVertED2Ev.exit, label %.lr.ph30

.lr.ph30:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.d

._crit_edge31:                                    ; preds = %bb.n
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZN8ImVectorI10ImDrawVertED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge31
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %3)
          to label %_ZN8ImVectorI10ImDrawVertED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #39
  unreachable

_ZN8ImVectorI10ImDrawVertED2Ev.exit:              ; preds = %bb.a, %._crit_edge31, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  ret void

bb.d:                                             ; preds = %.lr.ph30, %bb.n
  %i.m = phi i32 [ 0, %.lr.ph30 ], [ %2, %bb.n ]  ; 2 uses
  %i.n = phi ptr [ null, %.lr.ph30 ], [ %3, %bb.n ] ; 5 uses
  %i.o = phi i32 [ 0, %.lr.ph30 ], [ %i.bn, %bb.n ] ; 6 uses
  %.02028 = phi ptr [ %i.e, %.lr.ph30 ], [ %i.bo, %bb.n ] ; 2 uses
  %i.p = load ptr, ptr %.02028, align 8, !tbaa !76 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 5 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !88   ; 6 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.n, label %bb.f

bb.e:                                             ; preds = %bb.k, %bb.j, %bb.i, %_ZNK8ImVectorI10ImDrawVertE14_grow_capacityEi.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8ImVectorI10ImDrawVertED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  resume { ptr, i32 } %i.t

bb.f:                                             ; preds = %bb.d
  %i.u = icmp sgt i32 %i.r, %i.o
  br i1 %i.u, label %bb.g, label %_ZN8ImVectorI10ImDrawVertE6resizeEi.exit

bb.g:                                             ; preds = %bb.f
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI10ImDrawVertE14_grow_capacityEi.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = sdiv i32 %i.o, 2
  %i.w = add nsw i32 %i.v, %i.o
  br label %_ZNK8ImVectorI10ImDrawVertE14_grow_capacityEi.exit.i

_ZNK8ImVectorI10ImDrawVertE14_grow_capacityEi.exit.i: ; preds = %bb.h, %bb.g
  %i.x = phi i32 [ %i.w, %bb.h ], [ 8, %bb.g ]
  %i.y = tail call noundef i32 @llvm.smax.i32(i32 %i.x, i32 %i.r) ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = mul nsw i64 %i.z, 20
  %i.ab = invoke noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.aa)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %_ZNK8ImVectorI10ImDrawVertE14_grow_capacityEi.exit.i
  %.not6.i.i = icmp eq ptr %i.n, null
  br i1 %.not6.i.i, label %.noexc21, label %bb.i

bb.i:                                             ; preds = %.noexc
  %i.ac = sext i32 %i.m to i64
  %i.ad = mul nsw i64 %i.ac, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ab, ptr nonnull align 4 %i.n, i64 %i.ad, i1 false)
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.n)
          to label %.noexc21 unwind label %bb.e

.noexc21:                                         ; preds = %bb.i, %.noexc
  %.pre.a = load i32, ptr %i.q, align 8, !tbaa !110
  br label %_ZN8ImVectorI10ImDrawVertE6resizeEi.exit

_ZN8ImVectorI10ImDrawVertE6resizeEi.exit:         ; preds = %bb.f, %.noexc21
  %i.ae = phi i32 [ %i.o, %bb.f ], [ %i.y, %.noexc21 ]
  %i.af = phi ptr [ %i.n, %bb.f ], [ %i.ab, %.noexc21 ] ; 2 uses
  %i.ag = phi i32 [ %i.r, %bb.f ], [ %.pre.a, %.noexc21 ]
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN8ImVectorI10ImDrawVertE6resizeEi.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  br label %bb.l

._crit_edge:                                      ; preds = %bb.l, %_ZN8ImVectorI10ImDrawVertE6resizeEi.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !90 ; 2 uses
  store i32 %i.al, ptr %1, align 8, !tbaa !90
  store i32 %i.r, ptr %i.ak, align 8, !tbaa !90
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 36 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !89 ; 2 uses
  store i32 %i.an, ptr %i.i, align 4, !tbaa !89
  store i32 %i.ae, ptr %i.am, align 4, !tbaa !89
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !82 ; 2 uses
  store ptr %i.ap, ptr %i.j, align 8, !tbaa !82
  store ptr %i.af, ptr %i.ao, align 8, !tbaa !82
  %i.aq = getelementptr inbounds nuw i8, ptr %i.p, i64 20 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !87
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %bb.j, label %bb.m

bb.j:                                             ; preds = %._crit_edge
  %i.at = invoke noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 0)
          to label %.noexc24 unwind label %bb.e   ; 2 uses

.noexc24:                                         ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !83 ; 2 uses
  %.not6.i.i23 = icmp eq ptr %i.av, null
  br i1 %.not6.i.i23, label %.noexc25, label %bb.k

bb.k:                                             ; preds = %.noexc24
  %i.aw = load i32, ptr %i.q, align 8, !tbaa !88
  %i.ax = sext i32 %i.aw to i64
  %i.ay = shl nsw i64 %i.ax, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.at, ptr nonnull align 2 %i.av, i64 %i.ay, i1 false)
  %i.az = load ptr, ptr %i.au, align 8, !tbaa !83
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.az)
          to label %.noexc25 unwind label %bb.e

.noexc25:                                         ; preds = %bb.k, %.noexc24
  store ptr %i.at, ptr %i.au, align 8, !tbaa !83
  store i32 0, ptr %i.aq, align 4, !tbaa !87
  %.pre33 = load i32, ptr %i.ak, align 8, !tbaa !240
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %i.ba = load ptr, ptr %i.ai, align 8, !tbaa !83
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %indvars.iv
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !243
  %i.bd = load ptr, ptr %i.aj, align 8, !tbaa !82
  %i.be = zext i16 %i.bc to i64
  %i.bf = getelementptr inbounds nuw [20 x i8], ptr %i.bd, i64 %i.be
  %i.bg = getelementptr inbounds nuw [20 x i8], ptr %i.af, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bg, ptr noundef nonnull align 4 dereferenceable(20) %i.bf, i64 20, i1 false), !tbaa.struct !293
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bh = load i32, ptr %i.q, align 8, !tbaa !110
  %i.bi = sext i32 %i.bh to i64
  %i.bj = icmp slt i64 %indvars.iv.next, %i.bi
  br i1 %i.bj, label %bb.l, label %._crit_edge, !llvm.loop !606

bb.m:                                             ; preds = %.noexc25, %._crit_edge
  %i.bk = phi i32 [ %.pre33, %.noexc25 ], [ %i.r, %._crit_edge ]
  store i32 0, ptr %i.q, align 8, !tbaa !88
  %i.bl = load i32, ptr %i.b, align 4, !tbaa !291
  %i.bm = add nsw i32 %i.bl, %i.bk
  store i32 %i.bm, ptr %i.b, align 4, !tbaa !291
  br label %bb.n

bb.n:                                             ; preds = %bb.d, %bb.m
  %2 = phi i32 [ %i.m, %bb.d ], [ %i.al, %bb.m ]
  %3 = phi ptr [ %i.n, %bb.d ], [ %i.ap, %bb.m ]  ; 3 uses
  %i.bn = phi i32 [ %i.o, %bb.d ], [ %i.an, %bb.m ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.02028, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bo, %i.h
  br i1 %.not, label %._crit_edge31, label %bb.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN10ImDrawData14ScaleClipRectsERK6ImVec2(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #21 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %i.e = sext i32 %i.d to i64
  %.idx = shl nsw i64 %i.e, 3
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 %.idx
  %.not27 = icmp eq i32 %i.d, 0
  br i1 %.not27, label %._crit_edge31, label %.lr.ph30

._crit_edge31:                                    ; preds = %._crit_edge, %bb.a
  ret void

.lr.ph30:                                         ; preds = %bb.a, %._crit_edge
  %.02328 = phi ptr [ %i.m, %._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %.02328, align 8, !tbaa !76 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !84   ; 2 uses
  %i.j = load i32, ptr %i.g, align 8, !tbaa !86   ; 2 uses
  %i.k = sext i32 %i.j to i64
  %.idx32 = mul nsw i64 %i.k, 72
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 %.idx32
  %.not2425 = icmp eq i32 %i.j, 0
  br i1 %.not2425, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph30
  %i.m = getelementptr inbounds nuw i8, ptr %.02328, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.m, %i.f
  br i1 %.not, label %._crit_edge31, label %.lr.ph30

.lr.ph:                                           ; preds = %.lr.ph30, %.lr.ph
  %.026 = phi ptr [ %i.r, %.lr.ph ], [ %i.i, %.lr.ph30 ] ; 3 uses
  %i.n = load <2 x float>, ptr %1, align 4, !tbaa !29
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.p = load <4 x float>, ptr %.026, align 8, !tbaa !29
  %i.q = fmul <4 x float> %i.o, %i.p
  store <4 x float> %i.q, ptr %.026, align 8, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %.026, i64 72 ; 2 uses
  %.not24 = icmp eq ptr %i.r, %i.l
  br i1 %.not24, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui38ShadeVertsLinearColorGradientKeepAlphaEP10ImDrawListii6ImVec2S2_jj(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, <2 x float> %3, <2 x float> %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #19 {
bb.a:
  %foldExtExtBinop = fsub <2 x float> %4, %3      ; 2 uses
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %foldExtExtBinop71 = fsub <2 x float> %4, %3    ; 3 uses
  %i.b = extractelement <2 x float> %foldExtExtBinop71, i64 1 ; 2 uses
  %i.c = fmul float %i.b, %i.b
  %i.d = tail call noundef float @llvm.fmuladd.f32(float %i.a, float %i.a, float %i.c)
  %i.e = fdiv float 1.000000e+00, %i.d            ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !241  ; 3 uses
  %i.h = sext i32 %2 to i64                       ; 2 uses
  %i.i = getelementptr inbounds [20 x i8], ptr %i.g, i64 %i.h
  %i.j = icmp slt i32 %1, %2
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = ptrtoaddr ptr %i.g to i64                ; 3 uses
  %i.l = sext i32 %1 to i64                       ; 2 uses
  %i.m = getelementptr inbounds [20 x i8], ptr %i.g, i64 %i.l ; 6 uses
  %i.n = lshr i32 %6, 16
  %i.o = and i32 %i.n, 255
  %i.p = lshr i32 %5, 16
  %i.q = and i32 %i.p, 255                        ; 2 uses
  %i.r = sub nsw i32 %i.o, %i.q
  %i.s = lshr i32 %6, 8
  %i.t = and i32 %i.s, 255
  %i.u = lshr i32 %5, 8
  %i.v = and i32 %i.u, 255                        ; 2 uses
  %i.w = sub nsw i32 %i.t, %i.v
  %i.x = and i32 %6, 255
  %i.y = and i32 %5, 255                          ; 2 uses
  %i.z = sub nsw i32 %i.x, %i.y
  %i.aa = uitofp nneg i32 %i.y to float           ; 2 uses
  %i.ab = sitofp i32 %i.z to float                ; 2 uses
  %i.ac = uitofp nneg i32 %i.v to float           ; 2 uses
  %i.ad = sitofp i32 %i.w to float                ; 2 uses
  %i.ae = uitofp nneg i32 %i.q to float           ; 2 uses
  %i.af = sitofp i32 %i.r to float                ; 2 uses
  %i.ag = mul nsw i64 %i.l, 20                    ; 3 uses
  %i.ah = add i64 %i.ag, %i.k
  %i.ai = add i64 %i.ah, 20
  %i.aj = mul nsw i64 %i.h, 20
  %i.ak = add i64 %i.aj, %i.k
  %i.al = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 %i.ak)
  %i.am = add i64 %i.al, -20
  %i.an = sub i64 %i.am, %i.k                     ; 2 uses
  %i.ao = icmp ne i64 %i.an, %i.ag
  %i.ap = zext i1 %i.ao to i64                    ; 2 uses
  %i.aq = or disjoint i64 %i.ag, %i.ap
  %i.ar = sub i64 %i.an, %i.aq
  %i.as = udiv i64 %i.ar, 20
  %i.at = add nuw nsw i64 %i.as, %i.ap            ; 2 uses
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.at, 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.au, 4611686018427387900     ; 3 uses
  %i.av = mul i64 %n.vec, 20
  %i.aw = getelementptr i8, ptr %i.m, i64 %i.av
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.aa, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert47 = insertelement <4 x float> poison, float %i.ab, i64 0
  %broadcast.splat48 = shufflevector <4 x float> %broadcast.splatinsert47, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert49 = insertelement <4 x float> poison, float %i.ac, i64 0
  %broadcast.splat50 = shufflevector <4 x float> %broadcast.splatinsert49, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert51 = insertelement <4 x float> poison, float %i.ad, i64 0
  %broadcast.splat52 = shufflevector <4 x float> %broadcast.splatinsert51, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert53 = insertelement <4 x float> poison, float %i.ae, i64 0
  %broadcast.splat54 = shufflevector <4 x float> %broadcast.splatinsert53, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert55 = insertelement <4 x float> poison, float %i.af, i64 0
  %broadcast.splat56 = shufflevector <4 x float> %broadcast.splatinsert55, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat58 = shufflevector <2 x float> %3, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat60 = shufflevector <2 x float> %3, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat62 = shufflevector <2 x float> %foldExtExtBinop71, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat64 = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert65 = insertelement <4 x float> poison, float %i.e, i64 0
  %broadcast.splat66 = shufflevector <4 x float> %broadcast.splatinsert65, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = mul i64 %index, 20                      ; 4 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.ax ; 3 uses
  %i.ay = getelementptr i8, ptr %i.m, i64 %i.ax   ; 3 uses
  %next.gep67 = getelementptr i8, ptr %i.ay, i64 20
  %i.az = getelementptr i8, ptr %i.m, i64 %i.ax   ; 3 uses
  %next.gep68 = getelementptr i8, ptr %i.az, i64 40
  %i.ba = getelementptr i8, ptr %i.m, i64 %i.ax   ; 3 uses
  %next.gep69 = getelementptr i8, ptr %i.ba, i64 60
  %i.bb = load float, ptr %next.gep, align 4, !tbaa !237
  %i.bc = load float, ptr %next.gep67, align 4, !tbaa !237
  %i.bd = load float, ptr %next.gep68, align 4, !tbaa !237
  %i.be = load float, ptr %next.gep69, align 4, !tbaa !237
  %i.bf = insertelement <4 x float> poison, float %i.bb, i64 0
  %i.bg = insertelement <4 x float> %i.bf, float %i.bc, i64 1
  %i.bh = insertelement <4 x float> %i.bg, float %i.bd, i64 2
  %i.bi = insertelement <4 x float> %i.bh, float %i.be, i64 3
  %i.bj = fsub <4 x float> %i.bi, %broadcast.splat58
  %i.bk = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.bl = getelementptr i8, ptr %i.ay, i64 24
  %i.bm = getelementptr i8, ptr %i.az, i64 44
  %i.bn = getelementptr i8, ptr %i.ba, i64 64
  %i.bo = load float, ptr %i.bk, align 4, !tbaa !238
  %i.bp = load float, ptr %i.bl, align 4, !tbaa !238
  %i.bq = load float, ptr %i.bm, align 4, !tbaa !238
  %i.br = load float, ptr %i.bn, align 4, !tbaa !238
  %i.bs = insertelement <4 x float> poison, float %i.bo, i64 0
  %i.bt = insertelement <4 x float> %i.bs, float %i.bp, i64 1
  %i.bu = insertelement <4 x float> %i.bt, float %i.bq, i64 2
  %i.bv = insertelement <4 x float> %i.bu, float %i.br, i64 3
  %i.bw = fsub <4 x float> %i.bv, %broadcast.splat60
  %i.bx = fmul <4 x float> %broadcast.splat62, %i.bw
  %i.by = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bj, <4 x float> %broadcast.splat64, <4 x float> %i.bx)
  %i.bz = fmul <4 x float> %broadcast.splat66, %i.by ; 3 uses
  %i.ca = fcmp olt <4 x float> %i.bz, zeroinitializer
  %i.cb = fcmp ogt <4 x float> %i.bz, splat (float 1.000000e+00)
  %i.cc = select <4 x i1> %i.cb, <4 x float> splat (float 1.000000e+00), <4 x float> %i.bz
  %i.cd = select <4 x i1> %i.ca, <4 x float> zeroinitializer, <4 x float> %i.cc ; 3 uses
  %i.ce = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat48, <4 x float> %i.cd, <4 x float> %broadcast.splat)
  %i.cf = fptosi <4 x float> %i.ce to <4 x i32>
  %i.cg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat52, <4 x float> %i.cd, <4 x float> %broadcast.splat50)
  %i.ch = fptosi <4 x float> %i.cg to <4 x i32>
  %i.ci = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat56, <4 x float> %i.cd, <4 x float> %broadcast.splat54)
  %i.cj = fptosi <4 x float> %i.ci to <4 x i32>
  %i.ck = shl <4 x i32> %i.ch, splat (i32 8)
  %i.cl = shl <4 x i32> %i.cj, splat (i32 16)
  %i.cm = getelementptr inbounds nuw i8, ptr %next.gep, i64 16 ; 2 uses
  %i.cn = getelementptr i8, ptr %i.ay, i64 36     ; 2 uses
  %i.co = getelementptr i8, ptr %i.az, i64 56     ; 2 uses
  %i.cp = getelementptr i8, ptr %i.ba, i64 76     ; 2 uses
  %i.cq = load i32, ptr %i.cm, align 4, !tbaa !245
  %i.cr = load i32, ptr %i.cn, align 4, !tbaa !245
  %i.cs = load i32, ptr %i.co, align 4, !tbaa !245
  %i.ct = load i32, ptr %i.cp, align 4, !tbaa !245
  %i.cu = insertelement <4 x i32> poison, i32 %i.cq, i64 0
  %i.cv = insertelement <4 x i32> %i.cu, i32 %i.cr, i64 1
  %i.cw = insertelement <4 x i32> %i.cv, i32 %i.cs, i64 2
  %i.cx = insertelement <4 x i32> %i.cw, i32 %i.ct, i64 3
  %i.cy = and <4 x i32> %i.cx, splat (i32 -16777216)
  %i.cz = or <4 x i32> %i.cy, %i.cf
  %i.da = or <4 x i32> %i.cz, %i.ck
  %i.db = or <4 x i32> %i.da, %i.cl               ; 4 uses
  %i.dc = extractelement <4 x i32> %i.db, i64 0
  store i32 %i.dc, ptr %i.cm, align 4, !tbaa !245
  %i.dd = extractelement <4 x i32> %i.db, i64 1
  store i32 %i.dd, ptr %i.cn, align 4, !tbaa !245
  %i.de = extractelement <4 x i32> %i.db, i64 2
  store i32 %i.de, ptr %i.co, align 4, !tbaa !245
end_hunk_0
