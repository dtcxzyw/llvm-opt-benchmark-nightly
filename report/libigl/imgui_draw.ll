Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui_draw?download=true
inline.NumInlined: 1179
inline.NumDeleted: 280
loop-unroll.NumCompletelyUnrolled: 238
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 284
begin_hunk_0_@_ZN10ImDrawList17AddTriangleFilledERK6ImVec2S2_S2_j:bb.a
  %i.ak = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.aj) ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !65 ; 2 uses
  %.not6.i.i.i10 = icmp eq ptr %i.am, null
  br i1 %.not6.i.i.i10, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i9
  %i.an = load i32, ptr %i.b, align 8, !tbaa !66
  %i.ao = sext i32 %i.an to i64
  %i.ap = shl nsw i64 %i.ao, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ak, ptr nonnull align 4 %i.am, i64 %i.ap, i1 false)
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !65
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.aq)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i9
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !65
  store i32 %i.ah, ptr %i.d, align 4, !tbaa !64
  %.pre3.i.i11 = load i32, ptr %i.b, align 8, !tbaa !66
  br label %_ZN10ImDrawList10PathLineToERK6ImVec2.exit12

_ZN10ImDrawList10PathLineToERK6ImVec2.exit12:     ; preds = %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i5, %bb.j
  %i.ar = phi i32 [ %i.aa, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i5 ], [ %.pre3.i.i11, %bb.j ]
  %i.as = phi ptr [ %.pre.i.i7, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i5 ], [ %i.ak, %bb.j ]
  %i.at = sext i32 %i.ar to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.at
  %i.av = load i64, ptr %2, align 4
  store i64 %i.av, ptr %i.au, align 4
  %i.aw = load i32, ptr %i.b, align 8, !tbaa !66  ; 2 uses
  %i.ax = add nsw i32 %i.aw, 1                    ; 6 uses
  store i32 %i.ax, ptr %i.b, align 8, !tbaa !66
  %i.ay = load i32, ptr %i.d, align 4, !tbaa !64
  %i.az = icmp eq i32 %i.ax, %i.ay
  br i1 %i.az, label %bb.k, label %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i13

._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i13: ; preds = %_ZN10ImDrawList10PathLineToERK6ImVec2.exit12
  %.phi.trans.insert.i.i14 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.pre.i.i15 = load ptr, ptr %.phi.trans.insert.i.i14, align 8, !tbaa !65
  br label %_ZN10ImDrawList10PathLineToERK6ImVec2.exit20

bb.k:                                             ; preds = %_ZN10ImDrawList10PathLineToERK6ImVec2.exit12
  %i.ba = add nsw i32 %i.aw, 2
  %.not.i.i.i16 = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i.i16, label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i17, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = sdiv i32 %i.ax, 2
  %i.bc = add nsw i32 %i.bb, %i.ax
  br label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i17

_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i17: ; preds = %bb.l, %bb.k
  %i.bd = phi i32 [ %i.bc, %bb.l ], [ 8, %bb.k ]
  %i.be = tail call noundef i32 @llvm.smax.i32(i32 %i.bd, i32 %i.ba) ; 2 uses
  %i.bf = sext i32 %i.be to i64
  %i.bg = shl nsw i64 %i.bf, 3
  %i.bh = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.bg) ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !65 ; 2 uses
  %.not6.i.i.i18 = icmp eq ptr %i.bj, null
  br i1 %.not6.i.i.i18, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i17
  %i.bk = load i32, ptr %i.b, align 8, !tbaa !66
  %i.bl = sext i32 %i.bk to i64
  %i.bm = shl nsw i64 %i.bl, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bh, ptr nonnull align 4 %i.bj, i64 %i.bm, i1 false)
  %i.bn = load ptr, ptr %i.bi, align 8, !tbaa !65
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.bn)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i17
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !65
  store i32 %i.be, ptr %i.d, align 4, !tbaa !64
  %.pre3.i.i19 = load i32, ptr %i.b, align 8, !tbaa !66
  br label %_ZN10ImDrawList10PathLineToERK6ImVec2.exit20

_ZN10ImDrawList10PathLineToERK6ImVec2.exit20:     ; preds = %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i13, %bb.n
  %i.bo = phi i32 [ %i.ax, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i13 ], [ %.pre3.i.i19, %bb.n ]
  %i.bp = phi ptr [ %.pre.i.i15, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i13 ], [ %i.bh, %bb.n ]
  %i.bq = sext i32 %i.bo to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = load i64, ptr %3, align 4
  store i64 %i.bs, ptr %i.br, align 4
  %i.bt = load i32, ptr %i.b, align 8, !tbaa !66
  %i.bu = add nsw i32 %i.bt, 1                    ; 2 uses
  store i32 %i.bu, ptr %i.b, align 8, !tbaa !66
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !99
  tail call void @_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef %i.bw, i32 noundef %i.bu, i32 noundef %4)
  store i32 0, ptr %i.b, align 8, !tbaa !98
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %_ZN10ImDrawList10PathLineToERK6ImVec2.exit20
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(196) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, float noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = icmp ult i32 %3, 16777216
  %i.b = fcmp ole float %2, 0.000000e+00
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %4, 1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = fadd float %2, -5.000000e-01
  tail call void @_ZN10ImDrawList16_PathArcToFastExERK6ImVec2fiii(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, float noundef %i.d, i32 noundef 0, i32 noundef 48, i32 noundef 0)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !98
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.e, align 8, !tbaa !98
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = tail call i32 @llvm.umax.i32(i32 %4, i32 3)
  %i.i = tail call i32 @llvm.umin.i32(i32 %i.h, i32 512) ; 2 uses
  %i.j = uitofp nneg i32 %i.i to float
  %i.k = add nsw i32 %i.i, -1                     ; 2 uses
  %i.l = uitofp nneg i32 %i.k to float
  %i.m = fmul nnan float %i.l, f0x40C90FDB
  %i.n = fdiv float %i.m, %i.j
  %i.o = fadd float %2, -5.000000e-01
  tail call void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, float noundef %i.o, float noundef 0.000000e+00, float noundef %i.n, i32 noundef %i.k)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !98
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi i32 [ %.pre, %bb.d ], [ %i.g, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !99
  tail call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef %i.s, i32 noundef %i.p, i32 noundef %3, i32 noundef 1, float noundef %5)
  store i32 0, ptr %i.q, align 8, !tbaa !98
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(196) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, float noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = icmp ult i32 %3, 16777216
  %i.b = fcmp ole float %2, 0.000000e+00
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %4, 1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN10ImDrawList16_PathArcToFastExERK6ImVec2fiii(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, float noundef %2, i32 noundef 0, i32 noundef 48, i32 noundef 0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !98
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.f, ptr %i.d, align 8, !tbaa !98
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = tail call i32 @llvm.umax.i32(i32 %4, i32 3)
  %i.h = tail call i32 @llvm.umin.i32(i32 %i.g, i32 512) ; 2 uses
  %i.i = uitofp nneg i32 %i.h to float
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  %i.k = uitofp nneg i32 %i.j to float
  %i.l = fmul nnan float %i.k, f0x40C90FDB
  %i.m = fdiv float %i.l, %i.i
  tail call void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, float noundef %2, float noundef 0.000000e+00, float noundef %i.m, i32 noundef %i.j)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !98
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = phi i32 [ %.pre, %bb.d ], [ %i.f, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !99
  tail call void @_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef %i.q, i32 noundef %i.n, i32 noundef %3)
  store i32 0, ptr %i.o, align 8, !tbaa !98
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ImDrawList7AddNgonERK6ImVec2fjif(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(196) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, float noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = icmp ult i32 %3, 16777216
  %i.b = icmp slt i32 %4, 3
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = uitofp nneg i32 %4 to float              ; 2 uses
  %i.d = fadd nnan ninf float %i.c, -1.000000e+00
  %i.e = fmul nnan float %i.d, f0x40C90FDB
  %i.f = fdiv float %i.e, %i.c
  %i.g = fadd float %2, -5.000000e-01
  %i.h = add nsw i32 %4, -1
  tail call void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, float noundef %i.g, float noundef 0.000000e+00, float noundef %i.f, i32 noundef %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !99
  %i.l = load i32, ptr %i.i, align 8, !tbaa !98
  tail call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef %i.k, i32 noundef %i.l, i32 noundef %3, i32 noundef 1, float noundef %5)
  store i32 0, ptr %i.i, align 8, !tbaa !98
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ImDrawList13AddNgonFilledERK6ImVec2fji(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(196) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, float noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = icmp ult i32 %3, 16777216
  %i.b = icmp slt i32 %4, 3
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = uitofp nneg i32 %4 to float              ; 2 uses
  %i.d = fadd nnan ninf float %i.c, -1.000000e+00
  %i.e = fmul nnan float %i.d, f0x40C90FDB
  %i.f = fdiv float %i.e, %i.c
  %i.g = add nsw i32 %4, -1
  tail call void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, float noundef %2, float noundef 0.000000e+00, float noundef %i.f, i32 noundef %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !99
  %i.k = load i32, ptr %i.h, align 8, !tbaa !98
  tail call void @_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef %i.j, i32 noundef %i.k, i32 noundef %3)
  store i32 0, ptr %i.h, align 8, !tbaa !98
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ImDrawList14AddBezierCubicERK6ImVec2S2_S2_S2_jfi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(196) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %4, i32 noundef %5, float noundef %6, i32 noundef %7) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = icmp ult i32 %5, 16777216
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 7 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !66   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !64
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i

._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i: ; preds = %bb.b
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !65
  br label %_ZN10ImDrawList10PathLineToERK6ImVec2.exit

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i32 %i.c, 1
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = sdiv i32 %i.c, 2
  %i.i = add nsw i32 %i.h, %i.c
  br label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i

_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i: ; preds = %bb.d, %bb.c
  %i.j = phi i32 [ %i.i, %bb.d ], [ 8, %bb.c ]
  %i.k = tail call noundef i32 @llvm.smax.i32(i32 %i.j, i32 %i.g) ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = shl nsw i64 %i.l, 3
  %i.n = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.m) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !65   ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not6.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i
  %i.q = load i32, ptr %i.b, align 8, !tbaa !66
  %i.r = sext i32 %i.q to i64
  %i.s = shl nsw i64 %i.r, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.n, ptr nonnull align 4 %i.p, i64 %i.s, i1 false)
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !65
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.t)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i
  store ptr %i.n, ptr %i.o, align 8, !tbaa !65
  store i32 %i.k, ptr %i.d, align 4, !tbaa !64
  %.pre3.i.i = load i32, ptr %i.b, align 8, !tbaa !66
  br label %_ZN10ImDrawList10PathLineToERK6ImVec2.exit

_ZN10ImDrawList10PathLineToERK6ImVec2.exit:       ; preds = %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i, %bb.f
  %i.u = phi i32 [ %i.c, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i ], [ %.pre3.i.i, %bb.f ]
  %i.v = phi ptr [ %.pre.i.i, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i ], [ %i.n, %bb.f ]
  %i.w = sext i32 %i.u to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load i64, ptr %1, align 4
  store i64 %i.y, ptr %i.x, align 4
  %i.z = load i32, ptr %i.b, align 8, !tbaa !66
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.b, align 8, !tbaa !66
  tail call void @_ZN10ImDrawList22PathBezierCubicCurveToERK6ImVec2S2_S2_i(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef %7)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !99
  %i.ad = load i32, ptr %i.b, align 8, !tbaa !98
  tail call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef %i.ac, i32 noundef %i.ad, i32 noundef %5, i32 noundef 0, float noundef %6)
  store i32 0, ptr %i.b, align 8, !tbaa !98
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN10ImDrawList10PathLineToERK6ImVec2.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ImDrawList18AddBezierQuadraticERK6ImVec2S2_S2_jfi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(196) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, i32 noundef %4, float noundef %5, i32 noundef %6) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = icmp ult i32 %4, 16777216
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 7 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !66   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !64
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i

._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i: ; preds = %bb.b
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !65
  br label %_ZN10ImDrawList10PathLineToERK6ImVec2.exit

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i32 %i.c, 1
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = sdiv i32 %i.c, 2
  %i.i = add nsw i32 %i.h, %i.c
  br label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i

_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i: ; preds = %bb.d, %bb.c
  %i.j = phi i32 [ %i.i, %bb.d ], [ 8, %bb.c ]
  %i.k = tail call noundef i32 @llvm.smax.i32(i32 %i.j, i32 %i.g) ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = shl nsw i64 %i.l, 3
  %i.n = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.m) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !65   ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not6.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i
  %i.q = load i32, ptr %i.b, align 8, !tbaa !66
  %i.r = sext i32 %i.q to i64
  %i.s = shl nsw i64 %i.r, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.n, ptr nonnull align 4 %i.p, i64 %i.s, i1 false)
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !65
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.t)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i
  store ptr %i.n, ptr %i.o, align 8, !tbaa !65
  store i32 %i.k, ptr %i.d, align 4, !tbaa !64
  %.pre3.i.i = load i32, ptr %i.b, align 8, !tbaa !66
  br label %_ZN10ImDrawList10PathLineToERK6ImVec2.exit

_ZN10ImDrawList10PathLineToERK6ImVec2.exit:       ; preds = %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i, %bb.f
  %i.u = phi i32 [ %i.c, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i ], [ %.pre3.i.i, %bb.f ]
  %i.v = phi ptr [ %.pre.i.i, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i ], [ %i.n, %bb.f ]
  %i.w = sext i32 %i.u to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load i64, ptr %1, align 4
  store i64 %i.y, ptr %i.x, align 4
  %i.z = load i32, ptr %i.b, align 8, !tbaa !66
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.b, align 8, !tbaa !66
  tail call void @_ZN10ImDrawList26PathBezierQuadraticCurveToERK6ImVec2S2_i(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, i32 noundef %6)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !99
  %i.ad = load i32, ptr %i.b, align 8, !tbaa !98
  tail call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef %i.ac, i32 noundef %i.ad, i32 noundef %4, i32 noundef 0, float noundef %5)
  store i32 0, ptr %i.b, align 8, !tbaa !98
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN10ImDrawList10PathLineToERK6ImVec2.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ImDrawList7AddTextEPK6ImFontfRK6ImVec2jPKcS7_fPK6ImVec4(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(196) %0, ptr nofree noundef readonly captures(address_is_null) %1, float noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, float noundef %7, ptr nofree noundef readonly captures(address_is_null) %8) local_unnamed_addr #0 align 2 {
bb.a:
  %9 = alloca %struct.ImVec4, align 16            ; 6 uses
  %i.a = icmp ult i32 %4, 16777216
  br i1 %i.a, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %6, null
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #41
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 %i.c
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.022 = phi ptr [ %i.d, %bb.c ], [ %6, %bb.b ]  ; 2 uses
  %i.e = icmp eq ptr %5, %.022
  br i1 %i.e, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = icmp eq ptr %1, null
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !101
end_hunk_0
begin_hunk_1_@_ZL31ImFontAtlasBuildWithStbTruetypeP11ImFontAtlas:bb.a
  br i1 %i.bur, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit337.i.i.i.i.i.i, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.bus = getelementptr inbounds nuw i8, ptr %.0286454.i.i.i.i.i.i, i64 24
  %i.but = load float, ptr %i.bus, align 8, !tbaa !504 ; 4 uses
  %i.buu = fcmp olt float %i.bqi, %i.but
  br i1 %i.buu, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit337.i.i.i.i.i.i, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.buv = fcmp ogt float %i.but, %i.bqh
  br i1 %i.buv, label %bb.jj, label %bb.jk

bb.jj:                                            ; preds = %bb.ji
  %i.buw = fsub float %i.bsr, %i.bsr
  %i.bux = fsub float %i.but, %i.bqh
  %i.buy = fmul float %i.buw, %i.bux
  %i.buz = fdiv float %i.buy, %i.bsm
  %i.bva = fadd float %i.bsr, %i.buz
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %bb.ji
  %.057.i331.i.i.i.i.i.i = phi float [ %i.bva, %bb.jj ], [ %i.bsr, %bb.ji ] ; 4 uses
  %.056.i332.i.i.i.i.i.i = phi float [ %i.but, %bb.jj ], [ %i.bqh, %bb.ji ] ; 3 uses
  %i.bvb = fcmp ogt float %i.bqi, %i.buq
  br i1 %i.bvb, label %bb.jl, label %bb.jm

bb.jl:                                            ; preds = %bb.jk
  %i.bvc = fsub float %i.bsr, %.057.i331.i.i.i.i.i.i
  %i.bvd = fsub float %i.buq, %i.bqi
  %i.bve = fmul float %i.bvd, %i.bvc
  %i.bvf = fsub float %i.bqi, %.056.i332.i.i.i.i.i.i
  %i.bvg = fdiv float %i.bve, %i.bvf
  %i.bvh = fadd float %i.bsr, %i.bvg
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %bb.jk
  %.055.i333.i.i.i.i.i.i = phi float [ %i.bvh, %bb.jl ], [ %i.bsr, %bb.jk ] ; 3 uses
  %.0.i334.i.i.i.i.i.i = phi float [ %i.buq, %bb.jl ], [ %i.bqi, %bb.jk ] ; 2 uses
  %i.bvi = sitofp i32 %i.bup to float             ; 4 uses
  %i.bvj = fcmp ugt float %.057.i331.i.i.i.i.i.i, %i.bvi
  %i.bvk = fcmp ugt float %.055.i333.i.i.i.i.i.i, %i.bvi
  %or.cond64.i335.i.i.i.i.i.i = select i1 %i.bvj, i1 true, i1 %i.bvk
  br i1 %or.cond64.i335.i.i.i.i.i.i, label %bb.jo, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.bvl = getelementptr inbounds nuw i8, ptr %.0286454.i.i.i.i.i.i, i64 20
  %i.bvm = load float, ptr %i.bvl, align 4, !tbaa !494
  %i.bvn = fsub float %.0.i334.i.i.i.i.i.i, %.056.i332.i.i.i.i.i.i
  %i.bvo = zext nneg i32 %i.bup to i64
  %i.bvp = getelementptr inbounds nuw [4 x i8], ptr %i.bpr, i64 %i.bvo ; 2 uses
  %i.bvq = load float, ptr %i.bvp, align 4, !tbaa !15
  %i.bvr = call float @llvm.fmuladd.f32(float %i.bvm, float %i.bvn, float %i.bvq)
  store float %i.bvr, ptr %i.bvp, align 4, !tbaa !15
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit337.i.i.i.i.i.i

bb.jo:                                            ; preds = %bb.jm
  %i.bvs = add nuw nsw i32 %i.bsu, 2
  %i.bvt = sitofp i32 %i.bvs to float             ; 2 uses
  %i.bvu = fcmp ult float %.057.i331.i.i.i.i.i.i, %i.bvt
  %i.bvv = fcmp ult float %.055.i333.i.i.i.i.i.i, %i.bvt
  %or.cond65.i336.i.i.i.i.i.i = select i1 %i.bvu, i1 true, i1 %i.bvv
  br i1 %or.cond65.i336.i.i.i.i.i.i, label %bb.jp, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit337.i.i.i.i.i.i

bb.jp:                                            ; preds = %bb.jo
  %i.bvw = getelementptr inbounds nuw i8, ptr %.0286454.i.i.i.i.i.i, i64 20
  %i.bvx = load float, ptr %i.bvw, align 4, !tbaa !494
  %i.bvy = fsub float %.0.i334.i.i.i.i.i.i, %.056.i332.i.i.i.i.i.i
  %i.bvz = fmul float %i.bvy, %i.bvx
  %i.bwa = fsub float %.057.i331.i.i.i.i.i.i, %i.bvi
  %i.bwb = fsub float %.055.i333.i.i.i.i.i.i, %i.bvi
  %i.bwc = fadd float %i.bwa, %i.bwb
  %i.bwd = fmul float %i.bwc, 5.000000e-01
  %i.bwe = fsub float 1.000000e+00, %i.bwd
  %i.bwf = zext nneg i32 %i.bup to i64
  %i.bwg = getelementptr inbounds nuw [4 x i8], ptr %i.bpr, i64 %i.bwf ; 2 uses
  %i.bwh = load float, ptr %i.bwg, align 4, !tbaa !15
  %i.bwi = call float @llvm.fmuladd.f32(float %i.bvz, float %i.bwe, float %i.bwh)
  store float %i.bwi, ptr %i.bwg, align 4, !tbaa !15
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit337.i.i.i.i.i.i

bb.jq:                                            ; preds = %bb.iu
  br i1 %i.bsl, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit337.i.i.i.i.i.i, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.bwj = getelementptr inbounds nuw i8, ptr %.0286454.i.i.i.i.i.i, i64 28
  %i.bwk = load float, ptr %i.bwj, align 4, !tbaa !492 ; 4 uses
  %i.bwl = fcmp olt float %i.bwk, %i.bqh
  br i1 %i.bwl, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit337.i.i.i.i.i.i, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.bwm = getelementptr inbounds nuw i8, ptr %.0286454.i.i.i.i.i.i, i64 24
  %i.bwn = load float, ptr %i.bwm, align 8, !tbaa !504 ; 4 uses
  %i.bwo = fcmp olt float %i.bqi, %i.bwn
  br i1 %i.bwo, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit337.i.i.i.i.i.i, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.bwp = fcmp ogt float %i.bwn, %i.bqh
  br i1 %i.bwp, label %bb.ju, label %bb.jv

bb.ju:                                            ; preds = %bb.jt
  %i.bwq = fsub float %i.bsr, %i.bsr
  %i.bwr = fsub float %i.bwn, %i.bqh
  %i.bws = fmul float %i.bwq, %i.bwr
  %i.bwt = fdiv float %i.bws, %i.bsm
  %i.bwu = fadd float %i.bsr, %i.bwt
  br label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %bb.jt
  %.057.i338.i.i.i.i.i.i = phi float [ %i.bwu, %bb.ju ], [ %i.bsr, %bb.jt ] ; 4 uses
  %.056.i339.i.i.i.i.i.i = phi float [ %i.bwn, %bb.ju ], [ %i.bqh, %bb.jt ] ; 3 uses
  %i.bwv = fcmp ogt float %i.bqi, %i.bwk
  br i1 %i.bwv, label %bb.jw, label %bb.jx

bb.jw:                                            ; preds = %bb.jv
  %i.bww = fsub float %i.bsr, %.057.i338.i.i.i.i.i.i
  %i.bwx = fsub float %i.bwk, %i.bqi
  %i.bwy = fmul float %i.bwx, %i.bww
  %i.bwz = fsub float %i.bqi, %.056.i339.i.i.i.i.i.i
  %i.bxa = fdiv float %i.bwy, %i.bwz
  %i.bxb = fadd float %i.bsr, %i.bxa
  br label %bb.jx

bb.jx:                                            ; preds = %bb.jw, %bb.jv
  %.055.i340.i.i.i.i.i.i = phi float [ %i.bxb, %bb.jw ], [ %i.bsr, %bb.jv ] ; 3 uses
  %.0.i341.i.i.i.i.i.i = phi float [ %i.bwk, %bb.jw ], [ %i.bqi, %bb.jv ] ; 2 uses
  %i.bxc = fcmp ugt float %.057.i338.i.i.i.i.i.i, 0.000000e+00
  %i.bxd = fcmp ugt float %.055.i340.i.i.i.i.i.i, 0.000000e+00
  %or.cond64.i342.i.i.i.i.i.i = select i1 %i.bxc, i1 true, i1 %i.bxd
  br i1 %or.cond64.i342.i.i.i.i.i.i, label %bb.jz, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.bxe = getelementptr inbounds nuw i8, ptr %.0286454.i.i.i.i.i.i, i64 20
  %i.bxf = load float, ptr %i.bxe, align 4, !tbaa !494
  %i.bxg = fsub float %.0.i341.i.i.i.i.i.i, %.056.i339.i.i.i.i.i.i
  %i.bxh = load float, ptr %i.bpr, align 4, !tbaa !15
  %i.bxi = call float @llvm.fmuladd.f32(float %i.bxf, float %i.bxg, float %i.bxh)
  store float %i.bxi, ptr %i.bpr, align 4, !tbaa !15
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit337.i.i.i.i.i.i

bb.jz:                                            ; preds = %bb.jx
  %i.bxj = fcmp ult float %.057.i338.i.i.i.i.i.i, 1.000000e+00
  %i.bxk = fcmp ult float %.055.i340.i.i.i.i.i.i, 1.000000e+00
  %or.cond65.i343.i.i.i.i.i.i = select i1 %i.bxj, i1 true, i1 %i.bxk
  br i1 %or.cond65.i343.i.i.i.i.i.i, label %bb.ka, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit337.i.i.i.i.i.i

bb.ka:                                            ; preds = %bb.jz
  %i.bxl = getelementptr inbounds nuw i8, ptr %.0286454.i.i.i.i.i.i, i64 20
  %i.bxm = load float, ptr %i.bxl, align 4, !tbaa !494
  %i.bxn = fsub float %.0.i341.i.i.i.i.i.i, %.056.i339.i.i.i.i.i.i
  %i.bxo = fmul float %i.bxn, %i.bxm
  %i.bxp = fadd float %.057.i338.i.i.i.i.i.i, %.055.i340.i.i.i.i.i.i
  %i.bxq = fmul float %i.bxp, 5.000000e-01
  %i.bxr = fsub float 1.000000e+00, %i.bxq
  %i.bxs = load float, ptr %i.bpr, align 4, !tbaa !15
  %i.bxt = call float @llvm.fmuladd.f32(float %i.bxo, float %i.bxr, float %i.bxs)
  store float %i.bxt, ptr %i.bpr, align 4, !tbaa !15
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit337.i.i.i.i.i.i

bb.kb:                                            ; preds = %bb.is
  %i.bxu = fadd float %i.bsp, %i.bsr              ; 34 uses
  %i.bxv = getelementptr inbounds nuw i8, ptr %.0286454.i.i.i.i.i.i, i64 16
  %i.bxw = load float, ptr %i.bxv, align 8, !tbaa !502 ; 2 uses
  %i.bxx = getelementptr inbounds nuw i8, ptr %.0286454.i.i.i.i.i.i, i64 24 ; 16 uses
  %i.bxy = load float, ptr %i.bxx, align 8, !tbaa !504 ; 3 uses
  %i.bxz = fcmp ogt float %i.bxy, %i.bqh          ; 2 uses
  %i.bya = fsub float %i.bxy, %i.bqh
  %i.byb = call float @llvm.fmuladd.f32(float %i.bsp, float %i.bya, float %i.bsr)
  %.0295.i.i.i.i.i.i = select i1 %i.bxz, float %i.byb, float %i.bsr ; 7 uses
  %.0291.i.i.i.i.i.i = select i1 %i.bxz, float %i.bxy, float %i.bqh ; 3 uses
  %i.byc = getelementptr inbounds nuw i8, ptr %.0286454.i.i.i.i.i.i, i64 28 ; 16 uses
  %i.byd = load float, ptr %i.byc, align 4, !tbaa !492 ; 3 uses
  %i.bye = fcmp olt float %i.byd, %i.bqi          ; 2 uses
  %i.byf = fsub float %i.byd, %i.bqh
  %i.byg = call float @llvm.fmuladd.f32(float %i.bsp, float %i.byf, float %i.bsr)
  %.0293.i.i.i.i.i.i = select i1 %i.bye, float %i.byg, float %i.bxu ; 7 uses
  %.0290.i.i.i.i.i.i = select i1 %i.bye, float %i.byd, float %i.bqi ; 3 uses
  %i.byh = fcmp oge float %.0295.i.i.i.i.i.i, 0.000000e+00
  %i.byi = fcmp oge float %.0293.i.i.i.i.i.i, 0.000000e+00
  %or.cond.i.i.i.i.i.i = select i1 %i.byh, i1 %i.byi, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %bb.kc, label %bb.ki

bb.kc:                                            ; preds = %bb.kb
  %i.byj = fcmp olt float %.0295.i.i.i.i.i.i, %i.bqf
  %i.byk = fcmp olt float %.0293.i.i.i.i.i.i, %i.bqf
  %or.cond324.i.i.i.i.i.i = select i1 %i.byj, i1 %i.byk, i1 false
  br i1 %or.cond324.i.i.i.i.i.i, label %bb.kd, label %bb.ki

bb.kd:                                            ; preds = %bb.kc
  %i.byl = fptosi float %.0295.i.i.i.i.i.i to i32 ; 5 uses
  %i.bym = fptosi float %.0293.i.i.i.i.i.i to i32 ; 3 uses
  %i.byn = icmp eq i32 %i.byl, %i.bym
  br i1 %i.byn, label %bb.ke, label %bb.kf

bb.ke:                                            ; preds = %bb.kd
  %i.byo = fsub float %.0290.i.i.i.i.i.i, %.0291.i.i.i.i.i.i ; 2 uses
  %i.byp = getelementptr inbounds nuw i8, ptr %.0286454.i.i.i.i.i.i, i64 20 ; 2 uses
  %i.byq = load float, ptr %i.byp, align 4, !tbaa !494
  %i.byr = sitofp i32 %i.byl to float             ; 2 uses
  %i.bys = fsub nnan float %.0295.i.i.i.i.i.i, %i.byr
  %i.byt = fsub nnan float %.0293.i.i.i.i.i.i, %i.byr
  %i.byu = fadd nnan float %i.bys, %i.byt
  %i.byv = fmul nnan float %i.byu, 5.000000e-01
  %i.byw = fsub nnan float 1.000000e+00, %i.byv
  %i.byx = fmul float %i.byw, %i.byq
  %i.byy = zext nneg i32 %i.byl to i64            ; 2 uses
  %i.byz = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %i.byy ; 2 uses
  %i.bza = load float, ptr %i.byz, align 4, !tbaa !15
  %i.bzb = call float @llvm.fmuladd.f32(float %i.byx, float %i.byo, float %i.bza)
  store float %i.bzb, ptr %i.byz, align 4, !tbaa !15
  %i.bzc = load float, ptr %i.byp, align 4, !tbaa !494
  %i.bzd = getelementptr inbounds nuw [4 x i8], ptr %i.bqa, i64 %i.byy ; 2 uses
  %i.bze = load float, ptr %i.bzd, align 4, !tbaa !15
  %i.bzf = call float @llvm.fmuladd.f32(float %i.bzc, float %i.byo, float %i.bze)
  store float %i.bzf, ptr %i.bzd, align 4, !tbaa !15
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit337.i.i.i.i.i.i

bb.kf:                                            ; preds = %bb.kd
  %i.bzg = fcmp ogt float %.0295.i.i.i.i.i.i, %.0293.i.i.i.i.i.i
  br i1 %i.bzg, label %bb.kg, label %bb.kh

bb.kg:                                            ; preds = %bb.kf
  %i.bzh = fsub float %i.bqh, %.0291.i.i.i.i.i.i
  %i.bzi = fadd float %i.bqi, %i.bzh
  %i.bzj = fsub float %i.bqh, %.0290.i.i.i.i.i.i
  %i.bzk = fadd float %i.bqi, %i.bzj
  %i.bzl = fneg float %i.bxw
  br label %bb.kh

bb.kh:                                            ; preds = %bb.kg, %bb.kf
  %.pre-phi460.i.i.i.i.i.i = phi i32 [ %i.byl, %bb.kg ], [ %i.bym, %bb.kf ] ; 7 uses
  %.pre-phi.i.i.i.i.i.i = phi i32 [ %i.bym, %bb.kg ], [ %i.byl, %bb.kf ] ; 5 uses
  %.0297.i.i.i.i.i.i = phi float [ %i.bxu, %bb.kg ], [ %i.bsr, %bb.kf ]
  %.1296.i.i.i.i.i.i = phi float [ %.0293.i.i.i.i.i.i, %bb.kg ], [ %.0295.i.i.i.i.i.i, %bb.kf ]
  %.1294.i.i.i.i.i.i = phi float [ %.0295.i.i.i.i.i.i, %bb.kg ], [ %.0293.i.i.i.i.i.i, %bb.kf ]
  %.1292.i.i.i.i.i.i = phi float [ %i.bzk, %bb.kg ], [ %.0291.i.i.i.i.i.i, %bb.kf ] ; 2 uses
  %.1.i.i.i.i.i.i = phi float [ %i.bzi, %bb.kg ], [ %.0290.i.i.i.i.i.i, %bb.kf ] ; 2 uses
  %.0289.i.i.i.i.i.i = phi float [ %i.bzl, %bb.kg ], [ %i.bxw, %bb.kf ] ; 3 uses
  %i.bzm = add nuw nsw i32 %.pre-phi.i.i.i.i.i.i, 1 ; 3 uses
  %i.bzn = uitofp nneg i32 %i.bzm to float
  %i.bzo = fsub float %i.bzn, %.0297.i.i.i.i.i.i
  %i.bzp = call float @llvm.fmuladd.f32(float %i.bzo, float %.0289.i.i.i.i.i.i, float %i.bqh) ; 2 uses
  %i.bzq = getelementptr inbounds nuw i8, ptr %.0286454.i.i.i.i.i.i, i64 20
  %i.bzr = load float, ptr %i.bzq, align 4, !tbaa !494 ; 4 uses
  %i.bzs = fsub float %i.bzp, %.1292.i.i.i.i.i.i
  %i.bzt = fmul float %i.bzr, %i.bzs              ; 5 uses
  %i.bzu = uitofp nneg i32 %.pre-phi.i.i.i.i.i.i to float
  %i.bzv = fsub float %.1296.i.i.i.i.i.i, %i.bzu
  %i.bzw = fadd float %i.bzv, 1.000000e+00
  %i.bzx = fmul float %i.bzw, 5.000000e-01
  %i.bzy = fsub float 1.000000e+00, %i.bzx
  %i.bzz = zext nneg i32 %.pre-phi.i.i.i.i.i.i to i64 ; 3 uses
  %i.caa = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %i.bzz ; 2 uses
  %i.cab = load float, ptr %i.caa, align 4, !tbaa !15
  %i.cac = call float @llvm.fmuladd.f32(float %i.bzt, float %i.bzy, float %i.cab)
  store float %i.cac, ptr %i.caa, align 4, !tbaa !15
  %i.cad = fmul float %.0289.i.i.i.i.i.i, %i.bzr  ; 4 uses
  %i.cae = icmp slt i32 %i.bzm, %.pre-phi460.i.i.i.i.i.i
  br i1 %i.cae, label %.lr.ph453.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph453.i.i.i.i.i.i:                            ; preds = %bb.kh
  %i.caf = fmul float %i.cad, 5.000000e-01        ; 3 uses
  %i.cag = add nuw nsw i64 %i.bzz, 1              ; 2 uses
  %i.cah = add nsw i32 %.pre-phi460.i.i.i.i.i.i, -2
  %i.cai = sub nsw i32 %.pre-phi.i.i.i.i.i.i, %.pre-phi460.i.i.i.i.i.i
  %i.caj = and i32 %i.cai, 1
  %lcmp.mod1361.not.not = icmp eq i32 %i.caj, 0
  br i1 %lcmp.mod1361.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph453.i.i.i.i.i.i
  %i.cak = fadd float %i.caf, %i.bzt
  %i.cal = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %i.cag ; 2 uses
  %i.cam = load float, ptr %i.cal, align 4, !tbaa !15
  %i.can = fadd float %i.cak, %i.cam
  store float %i.can, ptr %i.cal, align 4, !tbaa !15
  %i.cao = fadd float %i.cad, %i.bzt              ; 2 uses
  %indvars.iv.next458.i.i.i.i.i.i.prol = add nuw nsw i64 %i.bzz, 2
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph453.i.i.i.i.i.i
  %indvars.iv457.i.i.i.i.i.i.unr = phi i64 [ %i.cag, %.lr.ph453.i.i.i.i.i.i ], [ %indvars.iv.next458.i.i.i.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.0287452.i.i.i.i.i.i.unr = phi float [ %i.bzt, %.lr.ph453.i.i.i.i.i.i ], [ %i.cao, %.prol.loopexit.unr-lcssa ]
  %.lcssa1239.unr = phi float [ poison, %.lr.ph453.i.i.i.i.i.i ], [ %i.cao, %.prol.loopexit.unr-lcssa ]
  %i.cap = icmp eq i32 %i.cah, %.pre-phi.i.i.i.i.i.i
  br i1 %i.cap, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph453.i.i.i.i.i.i.new

.lr.ph453.i.i.i.i.i.i.new:                        ; preds = %.prol.loopexit, %.lr.ph453.i.i.i.i.i.i.new
  %indvars.iv457.i.i.i.i.i.i = phi i64 [ %indvars.iv.next458.i.i.i.i.i.i.1, %.lr.ph453.i.i.i.i.i.i.new ], [ %indvars.iv457.i.i.i.i.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.0287452.i.i.i.i.i.i = phi float [ %i.cba, %.lr.ph453.i.i.i.i.i.i.new ], [ %.0287452.i.i.i.i.i.i.unr, %.prol.loopexit ] ; 2 uses
  %i.caq = fadd float %i.caf, %.0287452.i.i.i.i.i.i
  %i.car = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv457.i.i.i.i.i.i ; 2 uses
  %i.cas = load float, ptr %i.car, align 4, !tbaa !15
  %i.cat = fadd float %i.caq, %i.cas
  store float %i.cat, ptr %i.car, align 4, !tbaa !15
  %i.cau = fadd float %i.cad, %.0287452.i.i.i.i.i.i ; 2 uses
  %i.cav = fadd float %i.caf, %i.cau
  %i.caw = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv457.i.i.i.i.i.i
  %i.cax = getelementptr inbounds nuw i8, ptr %i.caw, i64 4 ; 2 uses
  %i.cay = load float, ptr %i.cax, align 4, !tbaa !15
  %i.caz = fadd float %i.cav, %i.cay
  store float %i.caz, ptr %i.cax, align 4, !tbaa !15
  %i.cba = fadd float %i.cad, %i.cau              ; 2 uses
  %indvars.iv.next458.i.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv457.i.i.i.i.i.i, 2 ; 2 uses
  %i.cbb = trunc nuw i64 %indvars.iv.next458.i.i.i.i.i.i.1 to i32
  %i.cbc = icmp sgt i32 %.pre-phi460.i.i.i.i.i.i, %i.cbb
  br i1 %i.cbc, label %.lr.ph453.i.i.i.i.i.i.new, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !407

._crit_edge.i.i.i.i.i.i:                          ; preds = %.prol.loopexit, %.lr.ph453.i.i.i.i.i.i.new, %bb.kh
  %.0287.lcssa.i.i.i.i.i.i = phi float [ %i.bzt, %bb.kh ], [ %.lcssa1239.unr, %.prol.loopexit ], [ %i.cba, %.lr.ph453.i.i.i.i.i.i.new ]
  %i.cbd = sub nsw i32 %.pre-phi460.i.i.i.i.i.i, %i.bzm
  %i.cbe = sitofp i32 %i.cbd to float
  %i.cbf = call float @llvm.fmuladd.f32(float %.0289.i.i.i.i.i.i, float %i.cbe, float %i.bzp)
  %i.cbg = uitofp nneg i32 %.pre-phi460.i.i.i.i.i.i to float
  %i.cbh = fsub float %.1294.i.i.i.i.i.i, %i.cbg
  %i.cbi = fadd float %i.cbh, 0.000000e+00
  %i.cbj = fmul float %i.cbi, 5.000000e-01
  %i.cbk = fsub float 1.000000e+00, %i.cbj
  %i.cbl = fmul float %i.bzr, %i.cbk
  %i.cbm = fsub float %.1.i.i.i.i.i.i, %i.cbf
  %i.cbn = call float @llvm.fmuladd.f32(float %i.cbl, float %i.cbm, float %.0287.lcssa.i.i.i.i.i.i)
  %i.cbo = zext nneg i32 %.pre-phi460.i.i.i.i.i.i to i64 ; 2 uses
  %i.cbp = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %i.cbo ; 2 uses
  %i.cbq = load float, ptr %i.cbp, align 4, !tbaa !15
  %i.cbr = fadd float %i.cbn, %i.cbq
  store float %i.cbr, ptr %i.cbp, align 4, !tbaa !15
  %i.cbs = fsub float %.1.i.i.i.i.i.i, %.1292.i.i.i.i.i.i
  %i.cbt = getelementptr inbounds nuw [4 x i8], ptr %i.bqa, i64 %i.cbo ; 2 uses
  %i.cbu = load float, ptr %i.cbt, align 4, !tbaa !15
  %i.cbv = call float @llvm.fmuladd.f32(float %i.bzr, float %i.cbs, float %i.cbu)
  store float %i.cbv, ptr %i.cbt, align 4, !tbaa !15
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit337.i.i.i.i.i.i

bb.ki:                                            ; preds = %bb.kc, %bb.kb
  br i1 %i.bqg, label %.lr.ph.i.i94.i.i.i.i, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit337.i.i.i.i.i.i

.lr.ph.i.i94.i.i.i.i:                             ; preds = %bb.ki
  %i.cbw = fsub float %i.bxu, %i.bsr
  %i.cbx = getelementptr inbounds nuw i8, ptr %.0286454.i.i.i.i.i.i, i64 20 ; 30 uses
  %i.cby = insertelement <2 x float> poison, float %i.bsr, i64 0
  %i.cbz = shufflevector <2 x float> %i.cby, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cca = insertelement <2 x float> poison, float %i.bsp, i64 0
  %i.ccb = shufflevector <2 x float> %i.cca, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.kj

bb.kj:                                            ; preds = %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit365.i.i.i.i.i.i, %.lr.ph.i.i94.i.i.i.i
  %indvars.iv.i.i95.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i94.i.i.i.i ], [ %indvars.iv.next.i.i96.i.i.i.i, %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit365.i.i.i.i.i.i ] ; 32 uses
  %indvars.iv.next.i.i96.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i95.i.i.i.i, 1 ; 3 uses
  %i.ccc = trunc nuw nsw i64 %indvars.iv.i.i95.i.i.i.i to i32
  %i.ccd = uitofp nneg i32 %i.ccc to float        ; 90 uses
  %i.cce = trunc nuw nsw i64 %indvars.iv.next.i.i96.i.i.i.i to i32
  %i.ccf = uitofp nneg i32 %i.cce to float        ; 60 uses
  %i.ccg = insertelement <2 x float> poison, float %i.ccd, i64 0
  %i.cch = insertelement <2 x float> %i.ccg, float %i.ccf, i64 1
  %i.cci = fsub <2 x float> %i.cch, %i.cbz        ; 7 uses
  %i.ccj = fdiv <2 x float> %i.cci, %i.ccb        ; 2 uses
  %i.cck = extractelement <2 x float> %i.ccj, i64 0
  %i.ccl = fadd float %i.cck, %i.bqh              ; 52 uses
  %i.ccm = extractelement <2 x float> %i.ccj, i64 1
  %i.ccn = fadd float %i.ccm, %i.bqh              ; 52 uses
  %i.cco = fcmp olt float %i.bsr, %i.ccd          ; 2 uses
  %i.ccp = fcmp ogt float %i.bxu, %i.ccf          ; 2 uses
  %or.cond325.i.i.i.i.i.i = select i1 %i.cco, i1 %i.ccp, i1 false
  br i1 %or.cond325.i.i.i.i.i.i, label %bb.kk, label %bb.lp

bb.kk:                                            ; preds = %bb.kj
  %i.ccq = fcmp oeq float %i.ccl, %i.bqh
  br i1 %i.ccq, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit351.i.i.i.i.i.i, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.ccr = load float, ptr %i.byc, align 4, !tbaa !492 ; 4 uses
  %i.ccs = fcmp olt float %i.ccr, %i.bqh
  br i1 %i.ccs, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit351.i.i.i.i.i.i, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.cct = load float, ptr %i.bxx, align 8, !tbaa !504 ; 4 uses
  %i.ccu = fcmp olt float %i.ccl, %i.cct
  br i1 %i.ccu, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit351.i.i.i.i.i.i, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.ccv = fcmp ogt float %i.cct, %i.bqh
  br i1 %i.ccv, label %bb.ko, label %bb.kp

bb.ko:                                            ; preds = %bb.kn
  %i.ccw = fsub float %i.cct, %i.bqh
  %i.ccx = extractelement <2 x float> %i.cci, i64 0
  %i.ccy = fmul float %i.ccx, %i.ccw
  %i.ccz = fsub float %i.ccl, %i.bqh
  %i.cda = fdiv float %i.ccy, %i.ccz
  %i.cdb = fadd float %i.bsr, %i.cda
  br label %bb.kp

bb.kp:                                            ; preds = %bb.ko, %bb.kn
  %.057.i345.i.i.i.i.i.i = phi float [ %i.cdb, %bb.ko ], [ %i.bsr, %bb.kn ] ; 4 uses
  %.056.i346.i.i.i.i.i.i = phi float [ %i.cct, %bb.ko ], [ %i.bqh, %bb.kn ] ; 3 uses
  %i.cdc = fcmp ogt float %i.ccl, %i.ccr
  br i1 %i.cdc, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %bb.kp
  %i.cdd = fsub float %i.ccd, %.057.i345.i.i.i.i.i.i
  %i.cde = fsub float %i.ccr, %i.ccl
  %i.cdf = fmul float %i.cde, %i.cdd
  %i.cdg = fsub float %i.ccl, %.056.i346.i.i.i.i.i.i
  %i.cdh = fdiv float %i.cdf, %i.cdg
  %i.cdi = fadd float %i.cdh, %i.ccd
  br label %bb.kr

bb.kr:                                            ; preds = %bb.kq, %bb.kp
  %.055.i347.i.i.i.i.i.i = phi float [ %i.cdi, %bb.kq ], [ %i.ccd, %bb.kp ] ; 3 uses
  %.0.i348.i.i.i.i.i.i = phi float [ %i.ccr, %bb.kq ], [ %i.ccl, %bb.kp ] ; 2 uses
  %i.cdj = fcmp ugt float %.057.i345.i.i.i.i.i.i, %i.ccd
  %i.cdk = fcmp ugt float %.055.i347.i.i.i.i.i.i, %i.ccd
  %or.cond64.i349.i.i.i.i.i.i = select i1 %i.cdj, i1 true, i1 %i.cdk
  br i1 %or.cond64.i349.i.i.i.i.i.i, label %bb.kt, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  %i.cdl = load float, ptr %i.cbx, align 4, !tbaa !494
  %i.cdm = fsub float %.0.i348.i.i.i.i.i.i, %.056.i346.i.i.i.i.i.i
  %i.cdn = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.cdo = load float, ptr %i.cdn, align 4, !tbaa !15
  %i.cdp = call float @llvm.fmuladd.f32(float %i.cdl, float %i.cdm, float %i.cdo)
  store float %i.cdp, ptr %i.cdn, align 4, !tbaa !15
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit351.i.i.i.i.i.i

bb.kt:                                            ; preds = %bb.kr
  %i.cdq = fcmp ult float %.057.i345.i.i.i.i.i.i, %i.ccf
  %i.cdr = fcmp ult float %.055.i347.i.i.i.i.i.i, %i.ccf
  %or.cond65.i350.i.i.i.i.i.i = select i1 %i.cdq, i1 true, i1 %i.cdr
  br i1 %or.cond65.i350.i.i.i.i.i.i, label %bb.ku, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit351.i.i.i.i.i.i

bb.ku:                                            ; preds = %bb.kt
  %i.cds = load float, ptr %i.cbx, align 4, !tbaa !494
  %i.cdt = fsub float %.0.i348.i.i.i.i.i.i, %.056.i346.i.i.i.i.i.i
  %i.cdu = fmul float %i.cdt, %i.cds
  %i.cdv = fsub float %.057.i345.i.i.i.i.i.i, %i.ccd
  %i.cdw = fsub float %.055.i347.i.i.i.i.i.i, %i.ccd
  %i.cdx = fadd float %i.cdv, %i.cdw
  %i.cdy = fmul float %i.cdx, 5.000000e-01
  %i.cdz = fsub float 1.000000e+00, %i.cdy
  %i.cea = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.ceb = load float, ptr %i.cea, align 4, !tbaa !15
  %i.cec = call float @llvm.fmuladd.f32(float %i.cdu, float %i.cdz, float %i.ceb)
  store float %i.cec, ptr %i.cea, align 4, !tbaa !15
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit351.i.i.i.i.i.i

_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit351.i.i.i.i.i.i: ; preds = %bb.ku, %bb.kt, %bb.ks, %bb.km, %bb.kl, %bb.kk
  %i.ced = fcmp oeq float %i.ccl, %i.ccn
  br i1 %i.ced, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit358.i.i.i.i.i.i, label %bb.kv

bb.kv:                                            ; preds = %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit351.i.i.i.i.i.i
  %i.cee = load float, ptr %i.byc, align 4, !tbaa !492 ; 4 uses
  %i.cef = fcmp ogt float %i.ccl, %i.cee
  br i1 %i.cef, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit358.i.i.i.i.i.i, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.ceg = load float, ptr %i.bxx, align 8, !tbaa !504 ; 4 uses
  %i.ceh = fcmp olt float %i.ccn, %i.ceg
  br i1 %i.ceh, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit358.i.i.i.i.i.i, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.cei = fcmp olt float %i.ccl, %i.ceg
  br i1 %i.cei, label %bb.ky, label %bb.kz

bb.ky:                                            ; preds = %bb.kx
  %i.cej = fsub nnan ninf float %i.ccf, %i.ccd
  %i.cek = fsub float %i.ceg, %i.ccl
  %i.cel = fmul float %i.cej, %i.cek
  %i.cem = fsub float %i.ccn, %i.ccl
  %i.cen = fdiv float %i.cel, %i.cem
  %i.ceo = fadd float %i.cen, %i.ccd
  br label %bb.kz

bb.kz:                                            ; preds = %bb.ky, %bb.kx
  %.057.i352.i.i.i.i.i.i = phi float [ %i.ceo, %bb.ky ], [ %i.ccd, %bb.kx ] ; 4 uses
  %.056.i353.i.i.i.i.i.i = phi float [ %i.ceg, %bb.ky ], [ %i.ccl, %bb.kx ] ; 3 uses
  %i.cep = fcmp ogt float %i.ccn, %i.cee
  br i1 %i.cep, label %bb.la, label %bb.lb

bb.la:                                            ; preds = %bb.kz
  %i.ceq = fsub float %i.ccf, %.057.i352.i.i.i.i.i.i
  %i.cer = fsub float %i.cee, %i.ccn
  %i.ces = fmul float %i.cer, %i.ceq
  %i.cet = fsub float %i.ccn, %.056.i353.i.i.i.i.i.i
  %i.ceu = fdiv float %i.ces, %i.cet
  %i.cev = fadd float %i.ceu, %i.ccf
  br label %bb.lb

bb.lb:                                            ; preds = %bb.la, %bb.kz
  %.055.i354.i.i.i.i.i.i = phi float [ %i.cev, %bb.la ], [ %i.ccf, %bb.kz ] ; 3 uses
  %.0.i355.i.i.i.i.i.i = phi float [ %i.cee, %bb.la ], [ %i.ccn, %bb.kz ] ; 2 uses
  %i.cew = fcmp ugt float %.057.i352.i.i.i.i.i.i, %i.ccd
  %i.cex = fcmp ugt float %.055.i354.i.i.i.i.i.i, %i.ccd
  %or.cond64.i356.i.i.i.i.i.i = select i1 %i.cew, i1 true, i1 %i.cex
  br i1 %or.cond64.i356.i.i.i.i.i.i, label %bb.ld, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.cey = load float, ptr %i.cbx, align 4, !tbaa !494
  %i.cez = fsub float %.0.i355.i.i.i.i.i.i, %.056.i353.i.i.i.i.i.i
  %i.cfa = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.cfb = load float, ptr %i.cfa, align 4, !tbaa !15
  %i.cfc = call float @llvm.fmuladd.f32(float %i.cey, float %i.cez, float %i.cfb)
  store float %i.cfc, ptr %i.cfa, align 4, !tbaa !15
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit358.i.i.i.i.i.i

bb.ld:                                            ; preds = %bb.lb
  %i.cfd = fcmp ult float %.057.i352.i.i.i.i.i.i, %i.ccf
  %i.cfe = fcmp ult float %.055.i354.i.i.i.i.i.i, %i.ccf
  %or.cond65.i357.i.i.i.i.i.i = select i1 %i.cfd, i1 true, i1 %i.cfe
  br i1 %or.cond65.i357.i.i.i.i.i.i, label %bb.le, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit358.i.i.i.i.i.i

bb.le:                                            ; preds = %bb.ld
  %i.cff = load float, ptr %i.cbx, align 4, !tbaa !494
  %i.cfg = fsub float %.0.i355.i.i.i.i.i.i, %.056.i353.i.i.i.i.i.i
  %i.cfh = fmul float %i.cfg, %i.cff
  %i.cfi = fsub float %.057.i352.i.i.i.i.i.i, %i.ccd
  %i.cfj = fsub float %.055.i354.i.i.i.i.i.i, %i.ccd
  %i.cfk = fadd float %i.cfi, %i.cfj
  %i.cfl = fmul float %i.cfk, 5.000000e-01
  %i.cfm = fsub float 1.000000e+00, %i.cfl
  %i.cfn = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.cfo = load float, ptr %i.cfn, align 4, !tbaa !15
  %i.cfp = call float @llvm.fmuladd.f32(float %i.cfh, float %i.cfm, float %i.cfo)
  store float %i.cfp, ptr %i.cfn, align 4, !tbaa !15
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit358.i.i.i.i.i.i

_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit358.i.i.i.i.i.i: ; preds = %bb.le, %bb.ld, %bb.lc, %bb.kw, %bb.kv, %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit351.i.i.i.i.i.i
  %i.cfq = fcmp oeq float %i.ccn, %i.bqi
  br i1 %i.cfq, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit365.i.i.i.i.i.i, label %bb.lf

bb.lf:                                            ; preds = %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit358.i.i.i.i.i.i
  %i.cfr = load float, ptr %i.byc, align 4, !tbaa !492 ; 4 uses
  %i.cfs = fcmp ogt float %i.ccn, %i.cfr
  br i1 %i.cfs, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit365.i.i.i.i.i.i, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.cft = load float, ptr %i.bxx, align 8, !tbaa !504 ; 4 uses
  %i.cfu = fcmp olt float %i.bqi, %i.cft
  br i1 %i.cfu, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit365.i.i.i.i.i.i, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.cfv = fcmp olt float %i.ccn, %i.cft
  br i1 %i.cfv, label %bb.li, label %bb.lj

bb.li:                                            ; preds = %bb.lh
  %i.cfw = fsub float %i.bxu, %i.ccf
  %i.cfx = fsub float %i.cft, %i.ccn
  %i.cfy = fmul float %i.cfw, %i.cfx
  %i.cfz = fsub float %i.bqi, %i.ccn
  %i.cga = fdiv float %i.cfy, %i.cfz
  %i.cgb = fadd float %i.cga, %i.ccf
  br label %bb.lj

bb.lj:                                            ; preds = %bb.li, %bb.lh
  %.057.i359.i.i.i.i.i.i = phi float [ %i.cgb, %bb.li ], [ %i.ccf, %bb.lh ] ; 4 uses
  %.056.i360.i.i.i.i.i.i = phi float [ %i.cft, %bb.li ], [ %i.ccn, %bb.lh ] ; 3 uses
  %i.cgc = fcmp ogt float %i.bqi, %i.cfr
  br i1 %i.cgc, label %bb.lk, label %bb.ll

bb.lk:                                            ; preds = %bb.lj
  %i.cgd = fsub float %i.bxu, %.057.i359.i.i.i.i.i.i
  %i.cge = fsub float %i.cfr, %i.bqi
  %i.cgf = fmul float %i.cge, %i.cgd
  %i.cgg = fsub float %i.bqi, %.056.i360.i.i.i.i.i.i
  %i.cgh = fdiv float %i.cgf, %i.cgg
  %i.cgi = fadd float %i.bxu, %i.cgh
  br label %bb.ll

bb.ll:                                            ; preds = %bb.lk, %bb.lj
  %.055.i361.i.i.i.i.i.i = phi float [ %i.cgi, %bb.lk ], [ %i.bxu, %bb.lj ] ; 3 uses
  %.0.i362.i.i.i.i.i.i = phi float [ %i.cfr, %bb.lk ], [ %i.bqi, %bb.lj ] ; 2 uses
  %i.cgj = fcmp ugt float %.057.i359.i.i.i.i.i.i, %i.ccd
  %i.cgk = fcmp ugt float %.055.i361.i.i.i.i.i.i, %i.ccd
  %or.cond64.i363.i.i.i.i.i.i = select i1 %i.cgj, i1 true, i1 %i.cgk
  br i1 %or.cond64.i363.i.i.i.i.i.i, label %bb.ln, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.cgl = load float, ptr %i.cbx, align 4, !tbaa !494
  %i.cgm = fsub float %.0.i362.i.i.i.i.i.i, %.056.i360.i.i.i.i.i.i
  %i.cgn = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.cgo = load float, ptr %i.cgn, align 4, !tbaa !15
  %i.cgp = call float @llvm.fmuladd.f32(float %i.cgl, float %i.cgm, float %i.cgo)
  store float %i.cgp, ptr %i.cgn, align 4, !tbaa !15
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit365.i.i.i.i.i.i

bb.ln:                                            ; preds = %bb.ll
  %i.cgq = fcmp ult float %.057.i359.i.i.i.i.i.i, %i.ccf
  %i.cgr = fcmp ult float %.055.i361.i.i.i.i.i.i, %i.ccf
  %or.cond65.i364.i.i.i.i.i.i = select i1 %i.cgq, i1 true, i1 %i.cgr
  br i1 %or.cond65.i364.i.i.i.i.i.i, label %bb.lo, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit365.i.i.i.i.i.i

bb.lo:                                            ; preds = %bb.ln
  %i.cgs = load float, ptr %i.cbx, align 4, !tbaa !494
  %i.cgt = fsub float %.0.i362.i.i.i.i.i.i, %.056.i360.i.i.i.i.i.i
  %i.cgu = fmul float %i.cgt, %i.cgs
  %i.cgv = fsub float %.057.i359.i.i.i.i.i.i, %i.ccd
  %i.cgw = fsub float %.055.i361.i.i.i.i.i.i, %i.ccd
  %i.cgx = fadd float %i.cgv, %i.cgw
  %i.cgy = fmul float %i.cgx, 5.000000e-01
  %i.cgz = fsub float 1.000000e+00, %i.cgy
  %i.cha = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.chb = load float, ptr %i.cha, align 4, !tbaa !15
  %i.chc = call float @llvm.fmuladd.f32(float %i.cgu, float %i.cgz, float %i.chb)
  store float %i.chc, ptr %i.cha, align 4, !tbaa !15
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit365.i.i.i.i.i.i

bb.lp:                                            ; preds = %bb.kj
  %i.chd = fcmp olt float %i.bxu, %i.ccd          ; 2 uses
  %i.che = fcmp ogt float %i.bsr, %i.ccf          ; 2 uses
  %or.cond326.i.i.i.i.i.i = select i1 %i.chd, i1 %i.che, i1 false
  br i1 %or.cond326.i.i.i.i.i.i, label %bb.lq, label %bb.mv

bb.lq:                                            ; preds = %bb.lp
  %i.chf = fcmp oeq float %i.ccn, %i.bqh
  br i1 %i.chf, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit372.i.i.i.i.i.i, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.chg = load float, ptr %i.byc, align 4, !tbaa !492 ; 4 uses
  %i.chh = fcmp olt float %i.chg, %i.bqh
  br i1 %i.chh, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit372.i.i.i.i.i.i, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.chi = load float, ptr %i.bxx, align 8, !tbaa !504 ; 4 uses
  %i.chj = fcmp olt float %i.ccn, %i.chi
  br i1 %i.chj, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit372.i.i.i.i.i.i, label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  %i.chk = fcmp ogt float %i.chi, %i.bqh
  br i1 %i.chk, label %bb.lu, label %bb.lv

bb.lu:                                            ; preds = %bb.lt
  %i.chl = fsub float %i.chi, %i.bqh
  %i.chm = extractelement <2 x float> %i.cci, i64 1
  %i.chn = fmul float %i.chm, %i.chl
  %i.cho = fsub float %i.ccn, %i.bqh
  %i.chp = fdiv float %i.chn, %i.cho
  %i.chq = fadd float %i.bsr, %i.chp
  br label %bb.lv

bb.lv:                                            ; preds = %bb.lu, %bb.lt
  %.057.i366.i.i.i.i.i.i = phi float [ %i.chq, %bb.lu ], [ %i.bsr, %bb.lt ] ; 4 uses
  %.056.i367.i.i.i.i.i.i = phi float [ %i.chi, %bb.lu ], [ %i.bqh, %bb.lt ] ; 3 uses
  %i.chr = fcmp ogt float %i.ccn, %i.chg
  br i1 %i.chr, label %bb.lw, label %bb.lx

bb.lw:                                            ; preds = %bb.lv
  %i.chs = fsub float %i.ccf, %.057.i366.i.i.i.i.i.i
  %i.cht = fsub float %i.chg, %i.ccn
  %i.chu = fmul float %i.cht, %i.chs
  %i.chv = fsub float %i.ccn, %.056.i367.i.i.i.i.i.i
  %i.chw = fdiv float %i.chu, %i.chv
  %i.chx = fadd float %i.chw, %i.ccf
  br label %bb.lx

bb.lx:                                            ; preds = %bb.lw, %bb.lv
  %.055.i368.i.i.i.i.i.i = phi float [ %i.chx, %bb.lw ], [ %i.ccf, %bb.lv ] ; 3 uses
  %.0.i369.i.i.i.i.i.i = phi float [ %i.chg, %bb.lw ], [ %i.ccn, %bb.lv ] ; 2 uses
  %i.chy = fcmp ugt float %.057.i366.i.i.i.i.i.i, %i.ccd
  %i.chz = fcmp ugt float %.055.i368.i.i.i.i.i.i, %i.ccd
  %or.cond64.i370.i.i.i.i.i.i = select i1 %i.chy, i1 true, i1 %i.chz
  br i1 %or.cond64.i370.i.i.i.i.i.i, label %bb.lz, label %bb.ly

bb.ly:                                            ; preds = %bb.lx
  %i.cia = load float, ptr %i.cbx, align 4, !tbaa !494
  %i.cib = fsub float %.0.i369.i.i.i.i.i.i, %.056.i367.i.i.i.i.i.i
  %i.cic = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.cid = load float, ptr %i.cic, align 4, !tbaa !15
  %i.cie = call float @llvm.fmuladd.f32(float %i.cia, float %i.cib, float %i.cid)
  store float %i.cie, ptr %i.cic, align 4, !tbaa !15
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit372.i.i.i.i.i.i

bb.lz:                                            ; preds = %bb.lx
  %i.cif = fcmp ult float %.057.i366.i.i.i.i.i.i, %i.ccf
  %i.cig = fcmp ult float %.055.i368.i.i.i.i.i.i, %i.ccf
  %or.cond65.i371.i.i.i.i.i.i = select i1 %i.cif, i1 true, i1 %i.cig
  br i1 %or.cond65.i371.i.i.i.i.i.i, label %bb.ma, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit372.i.i.i.i.i.i

bb.ma:                                            ; preds = %bb.lz
  %i.cih = load float, ptr %i.cbx, align 4, !tbaa !494
  %i.cii = fsub float %.0.i369.i.i.i.i.i.i, %.056.i367.i.i.i.i.i.i
  %i.cij = fmul float %i.cii, %i.cih
  %i.cik = fsub float %.057.i366.i.i.i.i.i.i, %i.ccd
  %i.cil = fsub float %.055.i368.i.i.i.i.i.i, %i.ccd
  %i.cim = fadd float %i.cik, %i.cil
  %i.cin = fmul float %i.cim, 5.000000e-01
  %i.cio = fsub float 1.000000e+00, %i.cin
  %i.cip = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.ciq = load float, ptr %i.cip, align 4, !tbaa !15
  %i.cir = call float @llvm.fmuladd.f32(float %i.cij, float %i.cio, float %i.ciq)
  store float %i.cir, ptr %i.cip, align 4, !tbaa !15
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit372.i.i.i.i.i.i

_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit372.i.i.i.i.i.i: ; preds = %bb.ma, %bb.lz, %bb.ly, %bb.ls, %bb.lr, %bb.lq
  %i.cis = fcmp oeq float %i.ccn, %i.ccl
  br i1 %i.cis, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit379.i.i.i.i.i.i, label %bb.mb

bb.mb:                                            ; preds = %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit372.i.i.i.i.i.i
  %i.cit = load float, ptr %i.byc, align 4, !tbaa !492 ; 4 uses
  %i.ciu = fcmp ogt float %i.ccn, %i.cit
  br i1 %i.ciu, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit379.i.i.i.i.i.i, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  %i.civ = load float, ptr %i.bxx, align 8, !tbaa !504 ; 4 uses
  %i.ciw = fcmp olt float %i.ccl, %i.civ
  br i1 %i.ciw, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit379.i.i.i.i.i.i, label %bb.md

bb.md:                                            ; preds = %bb.mc
  %i.cix = fcmp olt float %i.ccn, %i.civ
  br i1 %i.cix, label %bb.me, label %bb.mf

bb.me:                                            ; preds = %bb.md
  %i.ciy = fsub nnan ninf float %i.ccd, %i.ccf
  %i.ciz = fsub float %i.civ, %i.ccn
  %i.cja = fmul float %i.ciy, %i.ciz
  %i.cjb = fsub float %i.ccl, %i.ccn
  %i.cjc = fdiv float %i.cja, %i.cjb
  %i.cjd = fadd float %i.cjc, %i.ccf
  br label %bb.mf

bb.mf:                                            ; preds = %bb.me, %bb.md
  %.057.i373.i.i.i.i.i.i = phi float [ %i.cjd, %bb.me ], [ %i.ccf, %bb.md ] ; 4 uses
  %.056.i374.i.i.i.i.i.i = phi float [ %i.civ, %bb.me ], [ %i.ccn, %bb.md ] ; 3 uses
  %i.cje = fcmp ogt float %i.ccl, %i.cit
  br i1 %i.cje, label %bb.mg, label %bb.mh

bb.mg:                                            ; preds = %bb.mf
  %i.cjf = fsub float %i.ccd, %.057.i373.i.i.i.i.i.i
  %i.cjg = fsub float %i.cit, %i.ccl
  %i.cjh = fmul float %i.cjg, %i.cjf
  %i.cji = fsub float %i.ccl, %.056.i374.i.i.i.i.i.i
  %i.cjj = fdiv float %i.cjh, %i.cji
  %i.cjk = fadd float %i.cjj, %i.ccd
  br label %bb.mh

bb.mh:                                            ; preds = %bb.mg, %bb.mf
  %.055.i375.i.i.i.i.i.i = phi float [ %i.cjk, %bb.mg ], [ %i.ccd, %bb.mf ] ; 3 uses
  %.0.i376.i.i.i.i.i.i = phi float [ %i.cit, %bb.mg ], [ %i.ccl, %bb.mf ] ; 2 uses
  %i.cjl = fcmp ugt float %.057.i373.i.i.i.i.i.i, %i.ccd
  %i.cjm = fcmp ugt float %.055.i375.i.i.i.i.i.i, %i.ccd
  %or.cond64.i377.i.i.i.i.i.i = select i1 %i.cjl, i1 true, i1 %i.cjm
  br i1 %or.cond64.i377.i.i.i.i.i.i, label %bb.mj, label %bb.mi

bb.mi:                                            ; preds = %bb.mh
  %i.cjn = load float, ptr %i.cbx, align 4, !tbaa !494
  %i.cjo = fsub float %.0.i376.i.i.i.i.i.i, %.056.i374.i.i.i.i.i.i
  %i.cjp = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.cjq = load float, ptr %i.cjp, align 4, !tbaa !15
  %i.cjr = call float @llvm.fmuladd.f32(float %i.cjn, float %i.cjo, float %i.cjq)
  store float %i.cjr, ptr %i.cjp, align 4, !tbaa !15
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit379.i.i.i.i.i.i

bb.mj:                                            ; preds = %bb.mh
  %i.cjs = fcmp ult float %.057.i373.i.i.i.i.i.i, %i.ccf
  %i.cjt = fcmp ult float %.055.i375.i.i.i.i.i.i, %i.ccf
  %or.cond65.i378.i.i.i.i.i.i = select i1 %i.cjs, i1 true, i1 %i.cjt
  br i1 %or.cond65.i378.i.i.i.i.i.i, label %bb.mk, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit379.i.i.i.i.i.i

bb.mk:                                            ; preds = %bb.mj
  %i.cju = load float, ptr %i.cbx, align 4, !tbaa !494
  %i.cjv = fsub float %.0.i376.i.i.i.i.i.i, %.056.i374.i.i.i.i.i.i
  %i.cjw = fmul float %i.cjv, %i.cju
  %i.cjx = fsub float %.057.i373.i.i.i.i.i.i, %i.ccd
  %i.cjy = fsub float %.055.i375.i.i.i.i.i.i, %i.ccd
  %i.cjz = fadd float %i.cjx, %i.cjy
  %i.cka = fmul float %i.cjz, 5.000000e-01
  %i.ckb = fsub float 1.000000e+00, %i.cka
  %i.ckc = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.ckd = load float, ptr %i.ckc, align 4, !tbaa !15
  %i.cke = call float @llvm.fmuladd.f32(float %i.cjw, float %i.ckb, float %i.ckd)
  store float %i.cke, ptr %i.ckc, align 4, !tbaa !15
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit379.i.i.i.i.i.i

_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit379.i.i.i.i.i.i: ; preds = %bb.mk, %bb.mj, %bb.mi, %bb.mc, %bb.mb, %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit372.i.i.i.i.i.i
  %i.ckf = fcmp oeq float %i.ccl, %i.bqi
  br i1 %i.ckf, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit365.i.i.i.i.i.i, label %bb.ml

bb.ml:                                            ; preds = %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit379.i.i.i.i.i.i
  %i.ckg = load float, ptr %i.byc, align 4, !tbaa !492 ; 4 uses
  %i.ckh = fcmp ogt float %i.ccl, %i.ckg
  br i1 %i.ckh, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit365.i.i.i.i.i.i, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  %i.cki = load float, ptr %i.bxx, align 8, !tbaa !504 ; 4 uses
  %i.ckj = fcmp olt float %i.bqi, %i.cki
  br i1 %i.ckj, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit365.i.i.i.i.i.i, label %bb.mn

bb.mn:                                            ; preds = %bb.mm
  %i.ckk = fcmp olt float %i.ccl, %i.cki
  br i1 %i.ckk, label %bb.mo, label %bb.mp

bb.mo:                                            ; preds = %bb.mn
  %i.ckl = fsub float %i.bxu, %i.ccd
  %i.ckm = fsub float %i.cki, %i.ccl
  %i.ckn = fmul float %i.ckl, %i.ckm
  %i.cko = fsub float %i.bqi, %i.ccl
  %i.ckp = fdiv float %i.ckn, %i.cko
  %i.ckq = fadd float %i.ckp, %i.ccd
  br label %bb.mp

bb.mp:                                            ; preds = %bb.mo, %bb.mn
  %.057.i380.i.i.i.i.i.i = phi float [ %i.ckq, %bb.mo ], [ %i.ccd, %bb.mn ] ; 4 uses
  %.056.i381.i.i.i.i.i.i = phi float [ %i.cki, %bb.mo ], [ %i.ccl, %bb.mn ] ; 3 uses
  %i.ckr = fcmp ogt float %i.bqi, %i.ckg
  br i1 %i.ckr, label %bb.mq, label %bb.mr

bb.mq:                                            ; preds = %bb.mp
  %i.cks = fsub float %i.bxu, %.057.i380.i.i.i.i.i.i
  %i.ckt = fsub float %i.ckg, %i.bqi
  %i.cku = fmul float %i.ckt, %i.cks
  %i.ckv = fsub float %i.bqi, %.056.i381.i.i.i.i.i.i
  %i.ckw = fdiv float %i.cku, %i.ckv
  %i.ckx = fadd float %i.bxu, %i.ckw
  br label %bb.mr

bb.mr:                                            ; preds = %bb.mq, %bb.mp
  %.055.i382.i.i.i.i.i.i = phi float [ %i.ckx, %bb.mq ], [ %i.bxu, %bb.mp ] ; 3 uses
  %.0.i383.i.i.i.i.i.i = phi float [ %i.ckg, %bb.mq ], [ %i.bqi, %bb.mp ] ; 2 uses
  %i.cky = fcmp ugt float %.057.i380.i.i.i.i.i.i, %i.ccd
  %i.ckz = fcmp ugt float %.055.i382.i.i.i.i.i.i, %i.ccd
  %or.cond64.i384.i.i.i.i.i.i = select i1 %i.cky, i1 true, i1 %i.ckz
  br i1 %or.cond64.i384.i.i.i.i.i.i, label %bb.mt, label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  %i.cla = load float, ptr %i.cbx, align 4, !tbaa !494
  %i.clb = fsub float %.0.i383.i.i.i.i.i.i, %.056.i381.i.i.i.i.i.i
  %i.clc = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.cld = load float, ptr %i.clc, align 4, !tbaa !15
  %i.cle = call float @llvm.fmuladd.f32(float %i.cla, float %i.clb, float %i.cld)
  store float %i.cle, ptr %i.clc, align 4, !tbaa !15
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit365.i.i.i.i.i.i

bb.mt:                                            ; preds = %bb.mr
  %i.clf = fcmp ult float %.057.i380.i.i.i.i.i.i, %i.ccf
  %i.clg = fcmp ult float %.055.i382.i.i.i.i.i.i, %i.ccf
  %or.cond65.i385.i.i.i.i.i.i = select i1 %i.clf, i1 true, i1 %i.clg
  br i1 %or.cond65.i385.i.i.i.i.i.i, label %bb.mu, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit365.i.i.i.i.i.i

bb.mu:                                            ; preds = %bb.mt
  %i.clh = load float, ptr %i.cbx, align 4, !tbaa !494
  %i.cli = fsub float %.0.i383.i.i.i.i.i.i, %.056.i381.i.i.i.i.i.i
  %i.clj = fmul float %i.cli, %i.clh
  %i.clk = fsub float %.057.i380.i.i.i.i.i.i, %i.ccd
  %i.cll = fsub float %.055.i382.i.i.i.i.i.i, %i.ccd
  %i.clm = fadd float %i.clk, %i.cll
  %i.cln = fmul float %i.clm, 5.000000e-01
  %i.clo = fsub float 1.000000e+00, %i.cln
  %i.clp = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.clq = load float, ptr %i.clp, align 4, !tbaa !15
  %i.clr = call float @llvm.fmuladd.f32(float %i.clj, float %i.clo, float %i.clq)
  store float %i.clr, ptr %i.clp, align 4, !tbaa !15
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit365.i.i.i.i.i.i

bb.mv:                                            ; preds = %bb.lp
  %i.cls = fcmp ogt float %i.bxu, %i.ccd
  %or.cond327.i.i.i.i.i.i = and i1 %i.cco, %i.cls
  br i1 %or.cond327.i.i.i.i.i.i, label %bb.mw, label %bb.nr

bb.mw:                                            ; preds = %bb.mv
  %i.clt = fcmp oeq float %i.ccl, %i.bqh
  br i1 %i.clt, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit393.i.i.i.i.i.i, label %bb.mx

bb.mx:                                            ; preds = %bb.mw
  %i.clu = load float, ptr %i.byc, align 4, !tbaa !492 ; 4 uses
  %i.clv = fcmp olt float %i.clu, %i.bqh
  br i1 %i.clv, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit393.i.i.i.i.i.i, label %bb.my

bb.my:                                            ; preds = %bb.mx
  %i.clw = load float, ptr %i.bxx, align 8, !tbaa !504 ; 4 uses
  %i.clx = fcmp olt float %i.ccl, %i.clw
  br i1 %i.clx, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit393.i.i.i.i.i.i, label %bb.mz

bb.mz:                                            ; preds = %bb.my
  %i.cly = fcmp ogt float %i.clw, %i.bqh
  br i1 %i.cly, label %bb.na, label %bb.nb

bb.na:                                            ; preds = %bb.mz
  %i.clz = fsub float %i.clw, %i.bqh
  %i.cma = extractelement <2 x float> %i.cci, i64 0
  %i.cmb = fmul float %i.cma, %i.clz
  %i.cmc = fsub float %i.ccl, %i.bqh
  %i.cmd = fdiv float %i.cmb, %i.cmc
  %i.cme = fadd float %i.bsr, %i.cmd
  br label %bb.nb

bb.nb:                                            ; preds = %bb.na, %bb.mz
  %.057.i387.i.i.i.i.i.i = phi float [ %i.cme, %bb.na ], [ %i.bsr, %bb.mz ] ; 4 uses
  %.056.i388.i.i.i.i.i.i = phi float [ %i.clw, %bb.na ], [ %i.bqh, %bb.mz ] ; 3 uses
  %i.cmf = fcmp ogt float %i.ccl, %i.clu
  br i1 %i.cmf, label %bb.nc, label %bb.nd

bb.nc:                                            ; preds = %bb.nb
  %i.cmg = fsub float %i.ccd, %.057.i387.i.i.i.i.i.i
  %i.cmh = fsub float %i.clu, %i.ccl
  %i.cmi = fmul float %i.cmh, %i.cmg
  %i.cmj = fsub float %i.ccl, %.056.i388.i.i.i.i.i.i
  %i.cmk = fdiv float %i.cmi, %i.cmj
  %i.cml = fadd float %i.cmk, %i.ccd
  br label %bb.nd

bb.nd:                                            ; preds = %bb.nc, %bb.nb
  %.055.i389.i.i.i.i.i.i = phi float [ %i.cml, %bb.nc ], [ %i.ccd, %bb.nb ] ; 3 uses
  %.0.i390.i.i.i.i.i.i = phi float [ %i.clu, %bb.nc ], [ %i.ccl, %bb.nb ] ; 2 uses
  %i.cmm = fcmp ugt float %.057.i387.i.i.i.i.i.i, %i.ccd
  %i.cmn = fcmp ugt float %.055.i389.i.i.i.i.i.i, %i.ccd
  %or.cond64.i391.i.i.i.i.i.i = select i1 %i.cmm, i1 true, i1 %i.cmn
  br i1 %or.cond64.i391.i.i.i.i.i.i, label %bb.nf, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  %i.cmo = load float, ptr %i.cbx, align 4, !tbaa !494
  %i.cmp = fsub float %.0.i390.i.i.i.i.i.i, %.056.i388.i.i.i.i.i.i
  %i.cmq = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.cmr = load float, ptr %i.cmq, align 4, !tbaa !15
end_hunk_1
