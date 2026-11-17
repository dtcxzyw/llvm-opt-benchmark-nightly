Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_draw?download=true
inline.NumInlined: 1480
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 299
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 353
begin_hunk_0_@_ZN10ImDrawList17AddTriangleFilledERK6ImVec2S2_S2_j:bb.a
  %i.ak = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.aj) ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !47 ; 2 uses
  %.not6.i.i.i10 = icmp eq ptr %i.am, null
  br i1 %.not6.i.i.i10, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i9
  %i.an = load i32, ptr %i.b, align 8, !tbaa !100
  %i.ao = sext i32 %i.an to i64
  %i.ap = shl nsw i64 %i.ao, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ak, ptr nonnull align 4 %i.am, i64 %i.ap, i1 false)
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !47
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.aq)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i9
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !47
  store i32 %i.ah, ptr %i.d, align 4, !tbaa !99
  %.pre3.i.i11 = load i32, ptr %i.b, align 8, !tbaa !100
  br label %_ZN10ImDrawList10PathLineToERK6ImVec2.exit12

_ZN10ImDrawList10PathLineToERK6ImVec2.exit12:     ; preds = %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i5, %bb.j
  %i.ar = phi i32 [ %i.aa, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i5 ], [ %.pre3.i.i11, %bb.j ]
  %i.as = phi ptr [ %.pre.i.i7, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i5 ], [ %i.ak, %bb.j ]
  %i.at = sext i32 %i.ar to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.at
  %i.av = load i64, ptr %2, align 4
  store i64 %i.av, ptr %i.au, align 4
  %i.aw = load i32, ptr %i.b, align 8, !tbaa !100 ; 2 uses
  %i.ax = add nsw i32 %i.aw, 1                    ; 6 uses
  store i32 %i.ax, ptr %i.b, align 8, !tbaa !100
  %i.ay = load i32, ptr %i.d, align 4, !tbaa !99
  %i.az = icmp eq i32 %i.ax, %i.ay
  br i1 %i.az, label %bb.k, label %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i13

._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i13: ; preds = %_ZN10ImDrawList10PathLineToERK6ImVec2.exit12
  %.phi.trans.insert.i.i14 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre.i.i15 = load ptr, ptr %.phi.trans.insert.i.i14, align 8, !tbaa !47
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
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !47 ; 2 uses
  %.not6.i.i.i18 = icmp eq ptr %i.bj, null
  br i1 %.not6.i.i.i18, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i17
  %i.bk = load i32, ptr %i.b, align 8, !tbaa !100
  %i.bl = sext i32 %i.bk to i64
  %i.bm = shl nsw i64 %i.bl, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bh, ptr nonnull align 4 %i.bj, i64 %i.bm, i1 false)
  %i.bn = load ptr, ptr %i.bi, align 8, !tbaa !47
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.bn)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i17
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !47
  store i32 %i.be, ptr %i.d, align 4, !tbaa !99
  %.pre3.i.i19 = load i32, ptr %i.b, align 8, !tbaa !100
  br label %_ZN10ImDrawList10PathLineToERK6ImVec2.exit20

_ZN10ImDrawList10PathLineToERK6ImVec2.exit20:     ; preds = %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i13, %bb.n
  %i.bo = phi i32 [ %i.ax, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i13 ], [ %.pre3.i.i19, %bb.n ]
  %i.bp = phi ptr [ %.pre.i.i15, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i13 ], [ %i.bh, %bb.n ]
  %i.bq = sext i32 %i.bo to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = load i64, ptr %3, align 4
  store i64 %i.bs, ptr %i.br, align 4
  %i.bt = load i32, ptr %i.b, align 8, !tbaa !100
  %i.bu = add nsw i32 %i.bt, 1                    ; 2 uses
  store i32 %i.bu, ptr %i.b, align 8, !tbaa !100
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !251
  tail call void @_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %i.bw, i32 noundef %i.bu, i32 noundef %4)
  store i32 0, ptr %i.b, align 8, !tbaa !250
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %_ZN10ImDrawList10PathLineToERK6ImVec2.exit20
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, float noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = icmp ult i32 %3, 16777216
  %i.b = fcmp olt float %2, 5.000000e-01
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %4, 1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = fadd float %2, -5.000000e-01
  tail call void @_ZN10ImDrawList16_PathArcToFastExERK6ImVec2fiii(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, float noundef %i.d, i32 noundef 0, i32 noundef 48, i32 noundef 0)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !250
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.e, align 8, !tbaa !250
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
  tail call void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, float noundef %i.o, float noundef 0.000000e+00, float noundef %i.n, i32 noundef %i.k)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !250
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi i32 [ %.pre, %bb.d ], [ %i.g, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !251
  tail call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijfi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %i.s, i32 noundef %i.p, i32 noundef %3, float noundef %5, i32 noundef 512)
  store i32 0, ptr %i.q, align 8, !tbaa !250
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, float noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = icmp ult i32 %3, 16777216
  %i.b = fcmp olt float %2, 5.000000e-01
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %4, 1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN10ImDrawList16_PathArcToFastExERK6ImVec2fiii(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, float noundef %2, i32 noundef 0, i32 noundef 48, i32 noundef 0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !250
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.f, ptr %i.d, align 8, !tbaa !250
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = tail call i32 @llvm.umax.i32(i32 %4, i32 3)
  %i.h = tail call i32 @llvm.umin.i32(i32 %i.g, i32 512) ; 2 uses
  %i.i = uitofp nneg i32 %i.h to float
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  %i.k = uitofp nneg i32 %i.j to float
  %i.l = fmul nnan float %i.k, f0x40C90FDB
  %i.m = fdiv float %i.l, %i.i
  tail call void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, float noundef %2, float noundef 0.000000e+00, float noundef %i.m, i32 noundef %i.j)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !250
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = phi i32 [ %.pre, %bb.d ], [ %i.f, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !251
  tail call void @_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %i.q, i32 noundef %i.n, i32 noundef %3)
  store i32 0, ptr %i.o, align 8, !tbaa !250
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN10ImDrawList7AddNgonERK6ImVec2fjif(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, float noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5) local_unnamed_addr #10 align 2 {
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
  tail call void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, float noundef %i.g, float noundef 0.000000e+00, float noundef %i.f, i32 noundef %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !251
  %i.l = load i32, ptr %i.i, align 8, !tbaa !250
  tail call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijfi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %i.k, i32 noundef %i.l, i32 noundef %3, float noundef %5, i32 noundef 512)
  store i32 0, ptr %i.i, align 8, !tbaa !250
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN10ImDrawList13AddNgonFilledERK6ImVec2fji(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, float noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #10 align 2 {
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
  tail call void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, float noundef %2, float noundef 0.000000e+00, float noundef %i.f, i32 noundef %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !251
  %i.k = load i32, ptr %i.h, align 8, !tbaa !250
  tail call void @_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %i.j, i32 noundef %i.k, i32 noundef %3)
  store i32 0, ptr %i.h, align 8, !tbaa !250
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN10ImDrawList10AddEllipseERK6ImVec2S2_jfif(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, i32 noundef %3, float noundef %4, i32 noundef %5, float noundef %6) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = icmp ult i32 %3, 16777216
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %5, 1
  br i1 %i.b, label %bb.c, label %_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf.exit

bb.c:                                             ; preds = %bb.b
  %i.c = load float, ptr %2, align 4, !tbaa !237  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !238 ; 2 uses
  %i.f = fcmp oge float %i.c, %i.e
  %i.g = select i1 %i.f, float %i.c, float %i.e   ; 4 uses
  %i.h = fadd float %i.g, 9.990000e-01
  %i.i = fptosi float %i.h to i32                 ; 2 uses
  %or.cond.i = icmp ult i32 %i.i, 64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !73   ; 2 uses
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 500
  %i.m = zext nneg i32 %i.i to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !50
  %i.p = zext i8 %i.o to i32
  br label %_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf.exit

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.r = load float, ptr %i.q, align 4, !tbaa !49 ; 2 uses
  %i.s = fcmp olt float %i.r, %i.g
  %i.t = select i1 %i.s, float %i.r, float %i.g
  %i.u = fdiv float %i.t, %i.g
  %i.v = fsub float 1.000000e+00, %i.u
  %i.w = tail call float @acosf(float noundef %i.v) #38
  %i.x = fdiv float f0x40490FDB, %i.w
  %i.y = tail call float @llvm.ceil.f32(float %i.x)
  %i.z = fptosi float %i.y to i32
  %i.aa = add nsw i32 %i.z, 1
  %i.ab = sdiv i32 %i.aa, 2
  %i.ac = shl nsw i32 %i.ab, 1
  %i.ad = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 4)
  %i.ae = tail call i32 @llvm.umin.i32(i32 %i.ad, i32 512)
  br label %_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf.exit

_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf.exit: ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ %5, %bb.b ], [ %i.p, %bb.d ], [ %i.ae, %bb.e ] ; 2 uses
  %i.af = uitofp nneg i32 %.0 to float            ; 2 uses
  %i.ag = fadd nnan ninf float %i.af, -1.000000e+00
  %i.ah = fmul nnan float %i.ag, f0x40C90FDB
  %i.ai = fdiv float %i.ah, %i.af
  %i.aj = add nsw i32 %.0, -1
  tail call void @_ZN10ImDrawList19PathEllipticalArcToERK6ImVec2S2_fffi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, float noundef %4, float noundef 0.000000e+00, float noundef %i.ai, i32 noundef %i.aj)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !251
  %i.an = load i32, ptr %i.ak, align 8, !tbaa !250
  tail call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijfi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %i.am, i32 noundef %i.an, i32 noundef %3, float noundef %6, i32 noundef 512)
  store i32 0, ptr %i.ak, align 8, !tbaa !250
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN10ImDrawList16AddEllipseFilledERK6ImVec2S2_jfi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, i32 noundef %3, float noundef %4, i32 noundef %5) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = icmp ult i32 %3, 16777216
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %5, 1
  br i1 %i.b, label %bb.c, label %_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf.exit

bb.c:                                             ; preds = %bb.b
  %i.c = load float, ptr %2, align 4, !tbaa !237  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !238 ; 2 uses
  %i.f = fcmp oge float %i.c, %i.e
  %i.g = select i1 %i.f, float %i.c, float %i.e   ; 4 uses
  %i.h = fadd float %i.g, 9.990000e-01
  %i.i = fptosi float %i.h to i32                 ; 2 uses
  %or.cond.i = icmp ult i32 %i.i, 64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !73   ; 2 uses
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 500
  %i.m = zext nneg i32 %i.i to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !50
  %i.p = zext i8 %i.o to i32
  br label %_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf.exit

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.r = load float, ptr %i.q, align 4, !tbaa !49 ; 2 uses
  %i.s = fcmp olt float %i.r, %i.g
  %i.t = select i1 %i.s, float %i.r, float %i.g
  %i.u = fdiv float %i.t, %i.g
  %i.v = fsub float 1.000000e+00, %i.u
  %i.w = tail call float @acosf(float noundef %i.v) #38
  %i.x = fdiv float f0x40490FDB, %i.w
  %i.y = tail call float @llvm.ceil.f32(float %i.x)
  %i.z = fptosi float %i.y to i32
  %i.aa = add nsw i32 %i.z, 1
  %i.ab = sdiv i32 %i.aa, 2
  %i.ac = shl nsw i32 %i.ab, 1
  %i.ad = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 4)
  %i.ae = tail call i32 @llvm.umin.i32(i32 %i.ad, i32 512)
  br label %_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf.exit

_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf.exit: ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ %5, %bb.b ], [ %i.p, %bb.d ], [ %i.ae, %bb.e ] ; 2 uses
  %i.af = uitofp nneg i32 %.0 to float            ; 2 uses
  %i.ag = fadd nnan ninf float %i.af, -1.000000e+00
  %i.ah = fmul nnan float %i.ag, f0x40C90FDB
  %i.ai = fdiv float %i.ah, %i.af
  %i.aj = add nsw i32 %.0, -1
  tail call void @_ZN10ImDrawList19PathEllipticalArcToERK6ImVec2S2_fffi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, float noundef %4, float noundef 0.000000e+00, float noundef %i.ai, i32 noundef %i.aj)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !251
  %i.an = load i32, ptr %i.ak, align 8, !tbaa !250
  tail call void @_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %i.am, i32 noundef %i.an, i32 noundef %3)
  store i32 0, ptr %i.ak, align 8, !tbaa !250
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN10ImDrawList14AddBezierCubicERK6ImVec2S2_S2_S2_jfi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %4, i32 noundef %5, float noundef %6, i32 noundef %7) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = icmp ult i32 %5, 16777216
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 7 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !100  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !99
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i

._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i: ; preds = %bb.b
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !47
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
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !47   ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not6.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i
  %i.q = load i32, ptr %i.b, align 8, !tbaa !100
  %i.r = sext i32 %i.q to i64
  %i.s = shl nsw i64 %i.r, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.n, ptr nonnull align 4 %i.p, i64 %i.s, i1 false)
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !47
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.t)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i
  store ptr %i.n, ptr %i.o, align 8, !tbaa !47
  store i32 %i.k, ptr %i.d, align 4, !tbaa !99
  %.pre3.i.i = load i32, ptr %i.b, align 8, !tbaa !100
  br label %_ZN10ImDrawList10PathLineToERK6ImVec2.exit

_ZN10ImDrawList10PathLineToERK6ImVec2.exit:       ; preds = %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i, %bb.f
  %i.u = phi i32 [ %i.c, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i ], [ %.pre3.i.i, %bb.f ]
  %i.v = phi ptr [ %.pre.i.i, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i ], [ %i.n, %bb.f ]
  %i.w = sext i32 %i.u to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load i64, ptr %1, align 4
  store i64 %i.y, ptr %i.x, align 4
  %i.z = load i32, ptr %i.b, align 8, !tbaa !100
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.b, align 8, !tbaa !100
  tail call void @_ZN10ImDrawList22PathBezierCubicCurveToERK6ImVec2S2_S2_i(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef %7)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !251
  %i.ad = load i32, ptr %i.b, align 8, !tbaa !250
  tail call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijfi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %i.ac, i32 noundef %i.ad, i32 noundef %5, float noundef %6, i32 noundef 0)
  store i32 0, ptr %i.b, align 8, !tbaa !250
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN10ImDrawList10PathLineToERK6ImVec2.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN10ImDrawList18AddBezierQuadraticERK6ImVec2S2_S2_jfi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, i32 noundef %4, float noundef %5, i32 noundef %6) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = icmp ult i32 %4, 16777216
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 7 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !100  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !99
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i

._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i: ; preds = %bb.b
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !47
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
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !47   ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not6.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i
  %i.q = load i32, ptr %i.b, align 8, !tbaa !100
  %i.r = sext i32 %i.q to i64
  %i.s = shl nsw i64 %i.r, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.n, ptr nonnull align 4 %i.p, i64 %i.s, i1 false)
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !47
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.t)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i
  store ptr %i.n, ptr %i.o, align 8, !tbaa !47
  store i32 %i.k, ptr %i.d, align 4, !tbaa !99
  %.pre3.i.i = load i32, ptr %i.b, align 8, !tbaa !100
  br label %_ZN10ImDrawList10PathLineToERK6ImVec2.exit

_ZN10ImDrawList10PathLineToERK6ImVec2.exit:       ; preds = %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i, %bb.f
  %i.u = phi i32 [ %i.c, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i ], [ %.pre3.i.i, %bb.f ]
  %i.v = phi ptr [ %.pre.i.i, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i ], [ %i.n, %bb.f ]
  %i.w = sext i32 %i.u to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load i64, ptr %1, align 4
  store i64 %i.y, ptr %i.x, align 4
  %i.z = load i32, ptr %i.b, align 8, !tbaa !100
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.b, align 8, !tbaa !100
  tail call void @_ZN10ImDrawList26PathBezierQuadraticCurveToERK6ImVec2S2_i(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, i32 noundef %6)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !251
  %i.ad = load i32, ptr %i.b, align 8, !tbaa !250
  tail call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijfi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %i.ac, i32 noundef %i.ad, i32 noundef %4, float noundef %5, i32 noundef 0)
  store i32 0, ptr %i.b, align 8, !tbaa !250
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN10ImDrawList10PathLineToERK6ImVec2.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN10ImDrawList7AddTextEP6ImFontfRK6ImVec2jPKcS6_fPK6ImVec4(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, ptr noundef %1, float noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, float noundef %7, ptr nofree noundef readonly captures(address_is_null) %8) local_unnamed_addr #10 align 2 {
bb.a:
  %9 = alloca %struct.ImVec4, align 16            ; 6 uses
  %i.a = icmp ult i32 %4, 16777216
  %i.b = icmp eq ptr %5, %6
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %5, align 1, !tbaa !50
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !73
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !253
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi ptr [ %i.i, %bb.d ], [ %1, %bb.c ]
  %i.j = fcmp oeq float %2, 0.000000e+00
  br i1 %i.j, label %bb.f, label %bb.g

end_hunk_0
begin_hunk_1_@_ZL40ImGui_ImplStbTrueType_FontBakedLoadGlyphP11ImFontAtlasP12ImFontConfigP11ImFontBakedPvtP11ImFontGlyphPf:bb.a
.lr.ph472.i.i.i.i.i.i:                            ; preds = %bb.co
  %i.xy = fmul float %i.xw, 5.000000e-01          ; 3 uses
  %i.xz = zext i32 %i.wy to i64                   ; 3 uses
  %i.ya = add nsw i32 %.pre-phi479.i.i.i.i.i.i, -2
  %i.yb = sub nsw i32 %.pre-phi.i.i.i.i.i.i, %.pre-phi479.i.i.i.i.i.i
  %i.yc = and i32 %i.yb, 1
  %lcmp.mod.not.not = icmp eq i32 %i.yc, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph472.i.i.i.i.i.i
  %i.yd = fadd float %i.xy, %i.xj
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %i.xz ; 2 uses
  %i.yf = load float, ptr %i.ye, align 4, !tbaa !29
  %i.yg = fadd float %i.yd, %i.yf
  store float %i.yg, ptr %i.ye, align 4, !tbaa !29
  %i.yh = fadd float %i.xw, %i.xj                 ; 2 uses
  %indvars.iv.next477.i.i.i.i.i.i.prol = add nuw nsw i64 %i.xz, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph472.i.i.i.i.i.i
  %indvars.iv476.i.i.i.i.i.i.unr = phi i64 [ %i.xz, %.lr.ph472.i.i.i.i.i.i ], [ %indvars.iv.next477.i.i.i.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.0296471.i.i.i.i.i.i.unr = phi float [ %i.xj, %.lr.ph472.i.i.i.i.i.i ], [ %i.yh, %.prol.loopexit.unr-lcssa ]
  %.lcssa354.unr = phi float [ poison, %.lr.ph472.i.i.i.i.i.i ], [ %i.yh, %.prol.loopexit.unr-lcssa ]
  %i.yi = icmp eq i32 %i.ya, %.pre-phi.i.i.i.i.i.i
  br i1 %i.yi, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph472.i.i.i.i.i.i.new

.lr.ph472.i.i.i.i.i.i.new:                        ; preds = %.prol.loopexit, %.lr.ph472.i.i.i.i.i.i.new
  %indvars.iv476.i.i.i.i.i.i = phi i64 [ %indvars.iv.next477.i.i.i.i.i.i.1, %.lr.ph472.i.i.i.i.i.i.new ], [ %indvars.iv476.i.i.i.i.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.0296471.i.i.i.i.i.i = phi float [ %i.yt, %.lr.ph472.i.i.i.i.i.i.new ], [ %.0296471.i.i.i.i.i.i.unr, %.prol.loopexit ] ; 2 uses
  %i.yj = fadd float %i.xy, %.0296471.i.i.i.i.i.i
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv476.i.i.i.i.i.i ; 2 uses
  %i.yl = load float, ptr %i.yk, align 4, !tbaa !29
  %i.ym = fadd float %i.yj, %i.yl
  store float %i.ym, ptr %i.yk, align 4, !tbaa !29
  %i.yn = fadd float %i.xw, %.0296471.i.i.i.i.i.i ; 2 uses
  %i.yo = fadd float %i.xy, %i.yn
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv476.i.i.i.i.i.i
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 4 ; 2 uses
  %i.yr = load float, ptr %i.yq, align 4, !tbaa !29
  %i.ys = fadd float %i.yo, %i.yr
  store float %i.ys, ptr %i.yq, align 4, !tbaa !29
  %i.yt = fadd float %i.xw, %i.yn                 ; 2 uses
  %indvars.iv.next477.i.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv476.i.i.i.i.i.i, 2 ; 2 uses
  %i.yu = trunc nuw i64 %indvars.iv.next477.i.i.i.i.i.i.1 to i32
  %i.yv = icmp sgt i32 %.pre-phi479.i.i.i.i.i.i, %i.yu
  br i1 %i.yv, label %.lr.ph472.i.i.i.i.i.i.new, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !772

._crit_edge.i.i.i.i.i.i:                          ; preds = %.prol.loopexit, %.lr.ph472.i.i.i.i.i.i.new, %bb.co
  %.0296.lcssa.i.i.i.i.i.i = phi float [ %i.xj, %bb.co ], [ %.lcssa354.unr, %.prol.loopexit ], [ %i.yt, %.lr.ph472.i.i.i.i.i.i.new ]
  %i.yw = fsub float %.1302.i.i.i.i.i.i, %.0297.i.i.i.i.i.i
  %i.yx = fadd float %i.xc, 1.000000e+00          ; 2 uses
  %i.yy = fsub nnan float %i.yx, %i.xc
  %i.yz = fsub float %i.yx, %.1306.i.i.i.i.i.i
  %i.za = fadd float %i.yy, %i.yz
  %i.zb = fmul float %i.za, 5.000000e-01
  %i.zc = fmul float %i.zb, %i.yw
  %i.zd = call float @llvm.fmuladd.f32(float %i.xh, float %i.zc, float %.0296.lcssa.i.i.i.i.i.i)
  %i.ze = zext nneg i32 %.pre-phi479.i.i.i.i.i.i to i64 ; 2 uses
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %i.ze ; 2 uses
  %i.zg = load float, ptr %i.zf, align 4, !tbaa !29
  %i.zh = fadd float %i.zd, %i.zg
  store float %i.zh, ptr %i.zf, align 4, !tbaa !29
  %i.zi = fsub float %.1302.i.i.i.i.i.i, %.1304.i.i.i.i.i.i
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.nm, i64 %i.ze ; 2 uses
  %i.zk = load float, ptr %i.zj, align 4, !tbaa !29
  %i.zl = call float @llvm.fmuladd.f32(float %i.xh, float %i.zi, float %i.zk)
  store float %i.zl, ptr %i.zj, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

bb.cp:                                            ; preds = %bb.ch, %bb.cg
  br i1 %i.ns, label %.lr.ph.i.i94.i.i.i.i, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

.lr.ph.i.i94.i.i.i.i:                             ; preds = %bb.cp
  %i.zm = fsub float %i.vg, %i.qd
  %i.zn = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 20 ; 30 uses
  %i.zo = insertelement <2 x float> poison, float %i.qd, i64 0
  %i.zp = shufflevector <2 x float> %i.zo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zq = insertelement <2 x float> poison, float %i.qb, i64 0
  %i.zr = shufflevector <2 x float> %i.zq, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.cq

bb.cq:                                            ; preds = %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i, %.lr.ph.i.i94.i.i.i.i
  %indvars.iv.i.i95.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i94.i.i.i.i ], [ %indvars.iv.next.i.i96.i.i.i.i, %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i ] ; 32 uses
  %indvars.iv.next.i.i96.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i95.i.i.i.i, 1 ; 3 uses
  %i.zs = trunc nuw nsw i64 %indvars.iv.i.i95.i.i.i.i to i32
  %i.zt = uitofp nneg i32 %i.zs to float          ; 90 uses
  %i.zu = trunc nuw nsw i64 %indvars.iv.next.i.i96.i.i.i.i to i32
  %i.zv = uitofp nneg i32 %i.zu to float          ; 60 uses
  %i.zw = insertelement <2 x float> poison, float %i.zt, i64 0
  %i.zx = insertelement <2 x float> %i.zw, float %i.zv, i64 1
  %i.zy = fsub <2 x float> %i.zx, %i.zp           ; 7 uses
  %i.zz = fdiv <2 x float> %i.zy, %i.zr           ; 2 uses
  %i.aaa = extractelement <2 x float> %i.zz, i64 0
  %i.aab = fadd float %i.aaa, %i.nt               ; 52 uses
  %i.aac = extractelement <2 x float> %i.zz, i64 1
  %i.aad = fadd float %i.aac, %i.nt               ; 52 uses
  %i.aae = fcmp olt float %i.qd, %i.zt            ; 2 uses
  %i.aaf = fcmp ogt float %i.vg, %i.zv            ; 2 uses
  %or.cond344.i.i.i.i.i.i = select i1 %i.aae, i1 %i.aaf, i1 false
  br i1 %or.cond344.i.i.i.i.i.i, label %bb.cr, label %bb.dw

bb.cr:                                            ; preds = %bb.cq
  %i.aag = fcmp oeq float %i.aab, %i.nt
  br i1 %i.aag, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.aah = load float, ptr %i.vo, align 4, !tbaa !799 ; 4 uses
  %i.aai = fcmp olt float %i.aah, %i.nt
  br i1 %i.aai, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.aaj = load float, ptr %i.vj, align 8, !tbaa !811 ; 4 uses
  %i.aak = fcmp olt float %i.aab, %i.aaj
  br i1 %i.aak, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.aal = fcmp ogt float %i.aaj, %i.nt
  br i1 %i.aal, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.aam = fsub float %i.aaj, %i.nt
  %i.aan = extractelement <2 x float> %i.zy, i64 0
  %i.aao = fmul float %i.aan, %i.aam
  %i.aap = fsub float %i.aab, %i.nt
  %i.aaq = fdiv float %i.aao, %i.aap
  %i.aar = fadd float %i.qd, %i.aaq
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.057.i364.i.i.i.i.i.i = phi float [ %i.aar, %bb.cv ], [ %i.qd, %bb.cu ] ; 4 uses
  %.056.i365.i.i.i.i.i.i = phi float [ %i.aaj, %bb.cv ], [ %i.nt, %bb.cu ] ; 3 uses
  %i.aas = fcmp ogt float %i.aab, %i.aah
  br i1 %i.aas, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.aat = fsub float %i.zt, %.057.i364.i.i.i.i.i.i
  %i.aau = fsub float %i.aah, %i.aab
  %i.aav = fmul float %i.aau, %i.aat
  %i.aaw = fsub float %i.aab, %.056.i365.i.i.i.i.i.i
  %i.aax = fdiv float %i.aav, %i.aaw
  %i.aay = fadd float %i.aax, %i.zt
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.055.i366.i.i.i.i.i.i = phi float [ %i.aay, %bb.cx ], [ %i.zt, %bb.cw ] ; 3 uses
  %.0.i367.i.i.i.i.i.i = phi float [ %i.aah, %bb.cx ], [ %i.aab, %bb.cw ] ; 2 uses
  %i.aaz = fcmp ugt float %.057.i364.i.i.i.i.i.i, %i.zt
  %i.aba = fcmp ugt float %.055.i366.i.i.i.i.i.i, %i.zt
  %or.cond64.i368.i.i.i.i.i.i = select i1 %i.aaz, i1 true, i1 %i.aba
  br i1 %or.cond64.i368.i.i.i.i.i.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.abb = load float, ptr %i.zn, align 4, !tbaa !801
  %i.abc = fsub float %.0.i367.i.i.i.i.i.i, %.056.i365.i.i.i.i.i.i
  %i.abd = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.abe = load float, ptr %i.abd, align 4, !tbaa !29
  %i.abf = call float @llvm.fmuladd.f32(float %i.abb, float %i.abc, float %i.abe)
  store float %i.abf, ptr %i.abd, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i

bb.da:                                            ; preds = %bb.cy
  %i.abg = fcmp ult float %.057.i364.i.i.i.i.i.i, %i.zv
  %i.abh = fcmp ult float %.055.i366.i.i.i.i.i.i, %i.zv
  %or.cond65.i369.i.i.i.i.i.i = select i1 %i.abg, i1 true, i1 %i.abh
  br i1 %or.cond65.i369.i.i.i.i.i.i, label %bb.db, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i

bb.db:                                            ; preds = %bb.da
  %i.abi = load float, ptr %i.zn, align 4, !tbaa !801
  %i.abj = fsub float %.0.i367.i.i.i.i.i.i, %.056.i365.i.i.i.i.i.i
  %i.abk = fmul float %i.abj, %i.abi
  %i.abl = fsub float %.057.i364.i.i.i.i.i.i, %i.zt
  %i.abm = fsub float %.055.i366.i.i.i.i.i.i, %i.zt
  %i.abn = fadd float %i.abl, %i.abm
  %i.abo = fmul float %i.abn, 5.000000e-01
  %i.abp = fsub float 1.000000e+00, %i.abo
  %i.abq = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.abr = load float, ptr %i.abq, align 4, !tbaa !29
  %i.abs = call float @llvm.fmuladd.f32(float %i.abk, float %i.abp, float %i.abr)
  store float %i.abs, ptr %i.abq, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i

_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i: ; preds = %bb.db, %bb.da, %bb.cz, %bb.ct, %bb.cs, %bb.cr
  %i.abt = fcmp oeq float %i.aab, %i.aad
  br i1 %i.abt, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit377.i.i.i.i.i.i, label %bb.dc

bb.dc:                                            ; preds = %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i
  %i.abu = load float, ptr %i.vo, align 4, !tbaa !799 ; 4 uses
  %i.abv = fcmp ogt float %i.aab, %i.abu
  br i1 %i.abv, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit377.i.i.i.i.i.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.abw = load float, ptr %i.vj, align 8, !tbaa !811 ; 4 uses
  %i.abx = fcmp olt float %i.aad, %i.abw
  br i1 %i.abx, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit377.i.i.i.i.i.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.aby = fcmp olt float %i.aab, %i.abw
  br i1 %i.aby, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.abz = fsub nnan ninf float %i.zv, %i.zt
  %i.aca = fsub float %i.abw, %i.aab
  %i.acb = fmul float %i.abz, %i.aca
  %i.acc = fsub float %i.aad, %i.aab
  %i.acd = fdiv float %i.acb, %i.acc
  %i.ace = fadd float %i.acd, %i.zt
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %.057.i371.i.i.i.i.i.i = phi float [ %i.ace, %bb.df ], [ %i.zt, %bb.de ] ; 4 uses
  %.056.i372.i.i.i.i.i.i = phi float [ %i.abw, %bb.df ], [ %i.aab, %bb.de ] ; 3 uses
  %i.acf = fcmp ogt float %i.aad, %i.abu
  br i1 %i.acf, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.acg = fsub float %i.zv, %.057.i371.i.i.i.i.i.i
  %i.ach = fsub float %i.abu, %i.aad
  %i.aci = fmul float %i.ach, %i.acg
  %i.acj = fsub float %i.aad, %.056.i372.i.i.i.i.i.i
  %i.ack = fdiv float %i.aci, %i.acj
  %i.acl = fadd float %i.ack, %i.zv
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.055.i373.i.i.i.i.i.i = phi float [ %i.acl, %bb.dh ], [ %i.zv, %bb.dg ] ; 3 uses
  %.0.i374.i.i.i.i.i.i = phi float [ %i.abu, %bb.dh ], [ %i.aad, %bb.dg ] ; 2 uses
  %i.acm = fcmp ugt float %.057.i371.i.i.i.i.i.i, %i.zt
  %i.acn = fcmp ugt float %.055.i373.i.i.i.i.i.i, %i.zt
  %or.cond64.i375.i.i.i.i.i.i = select i1 %i.acm, i1 true, i1 %i.acn
  br i1 %or.cond64.i375.i.i.i.i.i.i, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.aco = load float, ptr %i.zn, align 4, !tbaa !801
  %i.acp = fsub float %.0.i374.i.i.i.i.i.i, %.056.i372.i.i.i.i.i.i
  %i.acq = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.acr = load float, ptr %i.acq, align 4, !tbaa !29
  %i.acs = call float @llvm.fmuladd.f32(float %i.aco, float %i.acp, float %i.acr)
  store float %i.acs, ptr %i.acq, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit377.i.i.i.i.i.i

bb.dk:                                            ; preds = %bb.di
  %i.act = fcmp ult float %.057.i371.i.i.i.i.i.i, %i.zv
  %i.acu = fcmp ult float %.055.i373.i.i.i.i.i.i, %i.zv
  %or.cond65.i376.i.i.i.i.i.i = select i1 %i.act, i1 true, i1 %i.acu
  br i1 %or.cond65.i376.i.i.i.i.i.i, label %bb.dl, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit377.i.i.i.i.i.i

bb.dl:                                            ; preds = %bb.dk
  %i.acv = load float, ptr %i.zn, align 4, !tbaa !801
  %i.acw = fsub float %.0.i374.i.i.i.i.i.i, %.056.i372.i.i.i.i.i.i
  %i.acx = fmul float %i.acw, %i.acv
  %i.acy = fsub float %.057.i371.i.i.i.i.i.i, %i.zt
  %i.acz = fsub float %.055.i373.i.i.i.i.i.i, %i.zt
  %i.ada = fadd float %i.acy, %i.acz
  %i.adb = fmul float %i.ada, 5.000000e-01
  %i.adc = fsub float 1.000000e+00, %i.adb
  %i.add = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.ade = load float, ptr %i.add, align 4, !tbaa !29
  %i.adf = call float @llvm.fmuladd.f32(float %i.acx, float %i.adc, float %i.ade)
  store float %i.adf, ptr %i.add, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit377.i.i.i.i.i.i

_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit377.i.i.i.i.i.i: ; preds = %bb.dl, %bb.dk, %bb.dj, %bb.dd, %bb.dc, %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i
  %i.adg = fcmp oeq float %i.aad, %i.nu
  br i1 %i.adg, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i, label %bb.dm

bb.dm:                                            ; preds = %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit377.i.i.i.i.i.i
  %i.adh = load float, ptr %i.vo, align 4, !tbaa !799 ; 4 uses
  %i.adi = fcmp ogt float %i.aad, %i.adh
  br i1 %i.adi, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.adj = load float, ptr %i.vj, align 8, !tbaa !811 ; 4 uses
  %i.adk = fcmp olt float %i.nu, %i.adj
  br i1 %i.adk, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.adl = fcmp olt float %i.aad, %i.adj
  br i1 %i.adl, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.adm = fsub float %i.vg, %i.zv
  %i.adn = fsub float %i.adj, %i.aad
  %i.ado = fmul float %i.adm, %i.adn
  %i.adp = fsub float %i.nu, %i.aad
  %i.adq = fdiv float %i.ado, %i.adp
  %i.adr = fadd float %i.adq, %i.zv
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %.057.i378.i.i.i.i.i.i = phi float [ %i.adr, %bb.dp ], [ %i.zv, %bb.do ] ; 4 uses
  %.056.i379.i.i.i.i.i.i = phi float [ %i.adj, %bb.dp ], [ %i.aad, %bb.do ] ; 3 uses
  %i.ads = fcmp ogt float %i.nu, %i.adh
  br i1 %i.ads, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.adt = fsub float %i.vg, %.057.i378.i.i.i.i.i.i
  %i.adu = fsub float %i.adh, %i.nu
  %i.adv = fmul float %i.adu, %i.adt
  %i.adw = fsub float %i.nu, %.056.i379.i.i.i.i.i.i
  %i.adx = fdiv float %i.adv, %i.adw
  %i.ady = fadd float %i.vg, %i.adx
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %.055.i380.i.i.i.i.i.i = phi float [ %i.ady, %bb.dr ], [ %i.vg, %bb.dq ] ; 3 uses
  %.0.i381.i.i.i.i.i.i = phi float [ %i.adh, %bb.dr ], [ %i.nu, %bb.dq ] ; 2 uses
  %i.adz = fcmp ugt float %.057.i378.i.i.i.i.i.i, %i.zt
  %i.aea = fcmp ugt float %.055.i380.i.i.i.i.i.i, %i.zt
  %or.cond64.i382.i.i.i.i.i.i = select i1 %i.adz, i1 true, i1 %i.aea
  br i1 %or.cond64.i382.i.i.i.i.i.i, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.aeb = load float, ptr %i.zn, align 4, !tbaa !801
  %i.aec = fsub float %.0.i381.i.i.i.i.i.i, %.056.i379.i.i.i.i.i.i
  %i.aed = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.aee = load float, ptr %i.aed, align 4, !tbaa !29
  %i.aef = call float @llvm.fmuladd.f32(float %i.aeb, float %i.aec, float %i.aee)
  store float %i.aef, ptr %i.aed, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i

bb.du:                                            ; preds = %bb.ds
  %i.aeg = fcmp ult float %.057.i378.i.i.i.i.i.i, %i.zv
  %i.aeh = fcmp ult float %.055.i380.i.i.i.i.i.i, %i.zv
  %or.cond65.i383.i.i.i.i.i.i = select i1 %i.aeg, i1 true, i1 %i.aeh
  br i1 %or.cond65.i383.i.i.i.i.i.i, label %bb.dv, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i

bb.dv:                                            ; preds = %bb.du
  %i.aei = load float, ptr %i.zn, align 4, !tbaa !801
  %i.aej = fsub float %.0.i381.i.i.i.i.i.i, %.056.i379.i.i.i.i.i.i
  %i.aek = fmul float %i.aej, %i.aei
  %i.ael = fsub float %.057.i378.i.i.i.i.i.i, %i.zt
  %i.aem = fsub float %.055.i380.i.i.i.i.i.i, %i.zt
  %i.aen = fadd float %i.ael, %i.aem
  %i.aeo = fmul float %i.aen, 5.000000e-01
  %i.aep = fsub float 1.000000e+00, %i.aeo
  %i.aeq = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.aer = load float, ptr %i.aeq, align 4, !tbaa !29
  %i.aes = call float @llvm.fmuladd.f32(float %i.aek, float %i.aep, float %i.aer)
  store float %i.aes, ptr %i.aeq, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i

bb.dw:                                            ; preds = %bb.cq
  %i.aet = fcmp olt float %i.vg, %i.zt            ; 2 uses
  %i.aeu = fcmp ogt float %i.qd, %i.zv            ; 2 uses
  %or.cond345.i.i.i.i.i.i = select i1 %i.aet, i1 %i.aeu, i1 false
  br i1 %or.cond345.i.i.i.i.i.i, label %bb.dx, label %bb.fc

bb.dx:                                            ; preds = %bb.dw
  %i.aev = fcmp oeq float %i.aad, %i.nt
  br i1 %i.aev, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit391.i.i.i.i.i.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.aew = load float, ptr %i.vo, align 4, !tbaa !799 ; 4 uses
  %i.aex = fcmp olt float %i.aew, %i.nt
  br i1 %i.aex, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit391.i.i.i.i.i.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.aey = load float, ptr %i.vj, align 8, !tbaa !811 ; 4 uses
  %i.aez = fcmp olt float %i.aad, %i.aey
  br i1 %i.aez, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit391.i.i.i.i.i.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.afa = fcmp ogt float %i.aey, %i.nt
  br i1 %i.afa, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.afb = fsub float %i.aey, %i.nt
  %i.afc = extractelement <2 x float> %i.zy, i64 1
  %i.afd = fmul float %i.afc, %i.afb
  %i.afe = fsub float %i.aad, %i.nt
  %i.aff = fdiv float %i.afd, %i.afe
  %i.afg = fadd float %i.qd, %i.aff
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %.057.i385.i.i.i.i.i.i = phi float [ %i.afg, %bb.eb ], [ %i.qd, %bb.ea ] ; 4 uses
  %.056.i386.i.i.i.i.i.i = phi float [ %i.aey, %bb.eb ], [ %i.nt, %bb.ea ] ; 3 uses
  %i.afh = fcmp ogt float %i.aad, %i.aew
  br i1 %i.afh, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.afi = fsub float %i.zv, %.057.i385.i.i.i.i.i.i
  %i.afj = fsub float %i.aew, %i.aad
  %i.afk = fmul float %i.afj, %i.afi
  %i.afl = fsub float %i.aad, %.056.i386.i.i.i.i.i.i
  %i.afm = fdiv float %i.afk, %i.afl
  %i.afn = fadd float %i.afm, %i.zv
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %.055.i387.i.i.i.i.i.i = phi float [ %i.afn, %bb.ed ], [ %i.zv, %bb.ec ] ; 3 uses
  %.0.i388.i.i.i.i.i.i = phi float [ %i.aew, %bb.ed ], [ %i.aad, %bb.ec ] ; 2 uses
  %i.afo = fcmp ugt float %.057.i385.i.i.i.i.i.i, %i.zt
  %i.afp = fcmp ugt float %.055.i387.i.i.i.i.i.i, %i.zt
  %or.cond64.i389.i.i.i.i.i.i = select i1 %i.afo, i1 true, i1 %i.afp
  br i1 %or.cond64.i389.i.i.i.i.i.i, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.afq = load float, ptr %i.zn, align 4, !tbaa !801
  %i.afr = fsub float %.0.i388.i.i.i.i.i.i, %.056.i386.i.i.i.i.i.i
  %i.afs = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.aft = load float, ptr %i.afs, align 4, !tbaa !29
  %i.afu = call float @llvm.fmuladd.f32(float %i.afq, float %i.afr, float %i.aft)
  store float %i.afu, ptr %i.afs, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit391.i.i.i.i.i.i

bb.eg:                                            ; preds = %bb.ee
  %i.afv = fcmp ult float %.057.i385.i.i.i.i.i.i, %i.zv
  %i.afw = fcmp ult float %.055.i387.i.i.i.i.i.i, %i.zv
  %or.cond65.i390.i.i.i.i.i.i = select i1 %i.afv, i1 true, i1 %i.afw
  br i1 %or.cond65.i390.i.i.i.i.i.i, label %bb.eh, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit391.i.i.i.i.i.i

bb.eh:                                            ; preds = %bb.eg
  %i.afx = load float, ptr %i.zn, align 4, !tbaa !801
  %i.afy = fsub float %.0.i388.i.i.i.i.i.i, %.056.i386.i.i.i.i.i.i
  %i.afz = fmul float %i.afy, %i.afx
  %i.aga = fsub float %.057.i385.i.i.i.i.i.i, %i.zt
  %i.agb = fsub float %.055.i387.i.i.i.i.i.i, %i.zt
  %i.agc = fadd float %i.aga, %i.agb
  %i.agd = fmul float %i.agc, 5.000000e-01
  %i.age = fsub float 1.000000e+00, %i.agd
  %i.agf = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.agg = load float, ptr %i.agf, align 4, !tbaa !29
  %i.agh = call float @llvm.fmuladd.f32(float %i.afz, float %i.age, float %i.agg)
  store float %i.agh, ptr %i.agf, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit391.i.i.i.i.i.i

_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit391.i.i.i.i.i.i: ; preds = %bb.eh, %bb.eg, %bb.ef, %bb.dz, %bb.dy, %bb.dx
  %i.agi = fcmp oeq float %i.aad, %i.aab
  br i1 %i.agi, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit398.i.i.i.i.i.i, label %bb.ei

bb.ei:                                            ; preds = %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit391.i.i.i.i.i.i
  %i.agj = load float, ptr %i.vo, align 4, !tbaa !799 ; 4 uses
  %i.agk = fcmp ogt float %i.aad, %i.agj
  br i1 %i.agk, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit398.i.i.i.i.i.i, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.agl = load float, ptr %i.vj, align 8, !tbaa !811 ; 4 uses
  %i.agm = fcmp olt float %i.aab, %i.agl
  br i1 %i.agm, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit398.i.i.i.i.i.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.agn = fcmp olt float %i.aad, %i.agl
  br i1 %i.agn, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.ago = fsub nnan ninf float %i.zt, %i.zv
  %i.agp = fsub float %i.agl, %i.aad
  %i.agq = fmul float %i.ago, %i.agp
  %i.agr = fsub float %i.aab, %i.aad
  %i.ags = fdiv float %i.agq, %i.agr
  %i.agt = fadd float %i.ags, %i.zv
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %.057.i392.i.i.i.i.i.i = phi float [ %i.agt, %bb.el ], [ %i.zv, %bb.ek ] ; 4 uses
  %.056.i393.i.i.i.i.i.i = phi float [ %i.agl, %bb.el ], [ %i.aad, %bb.ek ] ; 3 uses
  %i.agu = fcmp ogt float %i.aab, %i.agj
  br i1 %i.agu, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.agv = fsub float %i.zt, %.057.i392.i.i.i.i.i.i
  %i.agw = fsub float %i.agj, %i.aab
  %i.agx = fmul float %i.agw, %i.agv
  %i.agy = fsub float %i.aab, %.056.i393.i.i.i.i.i.i
  %i.agz = fdiv float %i.agx, %i.agy
  %i.aha = fadd float %i.agz, %i.zt
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %.055.i394.i.i.i.i.i.i = phi float [ %i.aha, %bb.en ], [ %i.zt, %bb.em ] ; 3 uses
  %.0.i395.i.i.i.i.i.i = phi float [ %i.agj, %bb.en ], [ %i.aab, %bb.em ] ; 2 uses
  %i.ahb = fcmp ugt float %.057.i392.i.i.i.i.i.i, %i.zt
  %i.ahc = fcmp ugt float %.055.i394.i.i.i.i.i.i, %i.zt
  %or.cond64.i396.i.i.i.i.i.i = select i1 %i.ahb, i1 true, i1 %i.ahc
  br i1 %or.cond64.i396.i.i.i.i.i.i, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.ahd = load float, ptr %i.zn, align 4, !tbaa !801
  %i.ahe = fsub float %.0.i395.i.i.i.i.i.i, %.056.i393.i.i.i.i.i.i
  %i.ahf = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.ahg = load float, ptr %i.ahf, align 4, !tbaa !29
  %i.ahh = call float @llvm.fmuladd.f32(float %i.ahd, float %i.ahe, float %i.ahg)
  store float %i.ahh, ptr %i.ahf, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit398.i.i.i.i.i.i

bb.eq:                                            ; preds = %bb.eo
  %i.ahi = fcmp ult float %.057.i392.i.i.i.i.i.i, %i.zv
  %i.ahj = fcmp ult float %.055.i394.i.i.i.i.i.i, %i.zv
  %or.cond65.i397.i.i.i.i.i.i = select i1 %i.ahi, i1 true, i1 %i.ahj
  br i1 %or.cond65.i397.i.i.i.i.i.i, label %bb.er, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit398.i.i.i.i.i.i

bb.er:                                            ; preds = %bb.eq
  %i.ahk = load float, ptr %i.zn, align 4, !tbaa !801
  %i.ahl = fsub float %.0.i395.i.i.i.i.i.i, %.056.i393.i.i.i.i.i.i
  %i.ahm = fmul float %i.ahl, %i.ahk
  %i.ahn = fsub float %.057.i392.i.i.i.i.i.i, %i.zt
  %i.aho = fsub float %.055.i394.i.i.i.i.i.i, %i.zt
  %i.ahp = fadd float %i.ahn, %i.aho
  %i.ahq = fmul float %i.ahp, 5.000000e-01
  %i.ahr = fsub float 1.000000e+00, %i.ahq
  %i.ahs = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.aht = load float, ptr %i.ahs, align 4, !tbaa !29
  %i.ahu = call float @llvm.fmuladd.f32(float %i.ahm, float %i.ahr, float %i.aht)
  store float %i.ahu, ptr %i.ahs, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit398.i.i.i.i.i.i

_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit398.i.i.i.i.i.i: ; preds = %bb.er, %bb.eq, %bb.ep, %bb.ej, %bb.ei, %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit391.i.i.i.i.i.i
  %i.ahv = fcmp oeq float %i.aab, %i.nu
  br i1 %i.ahv, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i, label %bb.es

bb.es:                                            ; preds = %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit398.i.i.i.i.i.i
  %i.ahw = load float, ptr %i.vo, align 4, !tbaa !799 ; 4 uses
  %i.ahx = fcmp ogt float %i.aab, %i.ahw
  br i1 %i.ahx, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.ahy = load float, ptr %i.vj, align 8, !tbaa !811 ; 4 uses
  %i.ahz = fcmp olt float %i.nu, %i.ahy
  br i1 %i.ahz, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.aia = fcmp olt float %i.aab, %i.ahy
  br i1 %i.aia, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.aib = fsub float %i.vg, %i.zt
  %i.aic = fsub float %i.ahy, %i.aab
  %i.aid = fmul float %i.aib, %i.aic
  %i.aie = fsub float %i.nu, %i.aab
  %i.aif = fdiv float %i.aid, %i.aie
  %i.aig = fadd float %i.aif, %i.zt
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %.057.i399.i.i.i.i.i.i = phi float [ %i.aig, %bb.ev ], [ %i.zt, %bb.eu ] ; 4 uses
  %.056.i400.i.i.i.i.i.i = phi float [ %i.ahy, %bb.ev ], [ %i.aab, %bb.eu ] ; 3 uses
  %i.aih = fcmp ogt float %i.nu, %i.ahw
  br i1 %i.aih, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.aii = fsub float %i.vg, %.057.i399.i.i.i.i.i.i
  %i.aij = fsub float %i.ahw, %i.nu
  %i.aik = fmul float %i.aij, %i.aii
  %i.ail = fsub float %i.nu, %.056.i400.i.i.i.i.i.i
  %i.aim = fdiv float %i.aik, %i.ail
  %i.ain = fadd float %i.vg, %i.aim
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %.055.i401.i.i.i.i.i.i = phi float [ %i.ain, %bb.ex ], [ %i.vg, %bb.ew ] ; 3 uses
  %.0.i402.i.i.i.i.i.i = phi float [ %i.ahw, %bb.ex ], [ %i.nu, %bb.ew ] ; 2 uses
  %i.aio = fcmp ugt float %.057.i399.i.i.i.i.i.i, %i.zt
  %i.aip = fcmp ugt float %.055.i401.i.i.i.i.i.i, %i.zt
  %or.cond64.i403.i.i.i.i.i.i = select i1 %i.aio, i1 true, i1 %i.aip
  br i1 %or.cond64.i403.i.i.i.i.i.i, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.aiq = load float, ptr %i.zn, align 4, !tbaa !801
  %i.air = fsub float %.0.i402.i.i.i.i.i.i, %.056.i400.i.i.i.i.i.i
  %i.ais = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.ait = load float, ptr %i.ais, align 4, !tbaa !29
  %i.aiu = call float @llvm.fmuladd.f32(float %i.aiq, float %i.air, float %i.ait)
  store float %i.aiu, ptr %i.ais, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i

bb.fa:                                            ; preds = %bb.ey
  %i.aiv = fcmp ult float %.057.i399.i.i.i.i.i.i, %i.zv
  %i.aiw = fcmp ult float %.055.i401.i.i.i.i.i.i, %i.zv
  %or.cond65.i404.i.i.i.i.i.i = select i1 %i.aiv, i1 true, i1 %i.aiw
  br i1 %or.cond65.i404.i.i.i.i.i.i, label %bb.fb, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i

bb.fb:                                            ; preds = %bb.fa
  %i.aix = load float, ptr %i.zn, align 4, !tbaa !801
  %i.aiy = fsub float %.0.i402.i.i.i.i.i.i, %.056.i400.i.i.i.i.i.i
  %i.aiz = fmul float %i.aiy, %i.aix
  %i.aja = fsub float %.057.i399.i.i.i.i.i.i, %i.zt
  %i.ajb = fsub float %.055.i401.i.i.i.i.i.i, %i.zt
  %i.ajc = fadd float %i.aja, %i.ajb
  %i.ajd = fmul float %i.ajc, 5.000000e-01
  %i.aje = fsub float 1.000000e+00, %i.ajd
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.ajg = load float, ptr %i.ajf, align 4, !tbaa !29
  %i.ajh = call float @llvm.fmuladd.f32(float %i.aiz, float %i.aje, float %i.ajg)
  store float %i.ajh, ptr %i.ajf, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i

bb.fc:                                            ; preds = %bb.dw
  %i.aji = fcmp ogt float %i.vg, %i.zt
  %or.cond346.i.i.i.i.i.i = and i1 %i.aae, %i.aji
  br i1 %or.cond346.i.i.i.i.i.i, label %bb.fd, label %bb.fy

bb.fd:                                            ; preds = %bb.fc
  %i.ajj = fcmp oeq float %i.aab, %i.nt
  br i1 %i.ajj, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit412.i.i.i.i.i.i, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.ajk = load float, ptr %i.vo, align 4, !tbaa !799 ; 4 uses
  %i.ajl = fcmp olt float %i.ajk, %i.nt
  br i1 %i.ajl, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit412.i.i.i.i.i.i, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.ajm = load float, ptr %i.vj, align 8, !tbaa !811 ; 4 uses
  %i.ajn = fcmp olt float %i.aab, %i.ajm
  br i1 %i.ajn, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit412.i.i.i.i.i.i, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.ajo = fcmp ogt float %i.ajm, %i.nt
  br i1 %i.ajo, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  %i.ajp = fsub float %i.ajm, %i.nt
  %i.ajq = extractelement <2 x float> %i.zy, i64 0
  %i.ajr = fmul float %i.ajq, %i.ajp
  %i.ajs = fsub float %i.aab, %i.nt
  %i.ajt = fdiv float %i.ajr, %i.ajs
  %i.aju = fadd float %i.qd, %i.ajt
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %.057.i406.i.i.i.i.i.i = phi float [ %i.aju, %bb.fh ], [ %i.qd, %bb.fg ] ; 4 uses
  %.056.i407.i.i.i.i.i.i = phi float [ %i.ajm, %bb.fh ], [ %i.nt, %bb.fg ] ; 3 uses
  %i.ajv = fcmp ogt float %i.aab, %i.ajk
  br i1 %i.ajv, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.ajw = fsub float %i.zt, %.057.i406.i.i.i.i.i.i
  %i.ajx = fsub float %i.ajk, %i.aab
  %i.ajy = fmul float %i.ajx, %i.ajw
  %i.ajz = fsub float %i.aab, %.056.i407.i.i.i.i.i.i
  %i.aka = fdiv float %i.ajy, %i.ajz
  %i.akb = fadd float %i.aka, %i.zt
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %.055.i408.i.i.i.i.i.i = phi float [ %i.akb, %bb.fj ], [ %i.zt, %bb.fi ] ; 3 uses
  %.0.i409.i.i.i.i.i.i = phi float [ %i.ajk, %bb.fj ], [ %i.aab, %bb.fi ] ; 2 uses
  %i.akc = fcmp ugt float %.057.i406.i.i.i.i.i.i, %i.zt
  %i.akd = fcmp ugt float %.055.i408.i.i.i.i.i.i, %i.zt
  %or.cond64.i410.i.i.i.i.i.i = select i1 %i.akc, i1 true, i1 %i.akd
  br i1 %or.cond64.i410.i.i.i.i.i.i, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.ake = load float, ptr %i.zn, align 4, !tbaa !801
  %i.akf = fsub float %.0.i409.i.i.i.i.i.i, %.056.i407.i.i.i.i.i.i
  %i.akg = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.akh = load float, ptr %i.akg, align 4, !tbaa !29
end_hunk_1
