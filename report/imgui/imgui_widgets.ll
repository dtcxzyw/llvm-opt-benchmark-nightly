Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_widgets?download=true
inline.NumInlined: 1842
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN15ImGuiTextBuffer6appendEPKcS1_
declare void @_ZN15ImGuiTextBuffer6appendEPKcS1_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui17TabItemBackgroundEP10ImDrawListRK6ImRectij(ptr noundef nonnull %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 {
bb.a:
  %4 = alloca %struct.ImVec2, align 4             ; 5 uses
  %5 = alloca %struct.ImVec2, align 4             ; 5 uses
  %6 = alloca %struct.ImVec2, align 4             ; 5 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !238 ; 2 uses
  %i.d = load float, ptr %1, align 4, !tbaa !237
  %i.e = fsub float %i.c, %i.d
  %i.f = and i32 %2, 2097152
  %.not = icmp eq i32 %i.f, 0
  %.in.v = select i1 %.not, i64 3372, i64 3292
  %.in = getelementptr inbounds nuw i8, ptr %i.a, i64 %.in.v
  %i.g = load float, ptr %.in, align 4, !tbaa !190 ; 2 uses
  %i.h = tail call float @llvm.fmuladd.f32(float %i.e, float 5.000000e-01, float -1.000000e+00) ; 2 uses
  %i.i = fcmp olt float %i.g, %i.h
  %i.j = select i1 %i.i, float %i.g, float %i.h   ; 2 uses
  %i.k = fcmp ole float %i.j, 0.000000e+00
  %i.l = select i1 %i.k, float 0.000000e+00, float %i.j ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !195
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.p = load float, ptr %i.o, align 4, !tbaa !196
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 3396
  %i.r = load float, ptr %i.q, align 4, !tbaa !588
  %i.s = fsub float %i.p, %i.r                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  store float %i.c, ptr %4, align 4, !tbaa !194
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %i.s, ptr %i.t, align 4, !tbaa !197
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef %3, float noundef %i.l, i32 noundef 48)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 3376 ; 2 uses
  %i.v = load float, ptr %i.u, align 8, !tbaa !907
  %i.w = fcmp ogt float %i.v, 0.000000e+00
  br i1 %i.w, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.x = fadd float %i.n, 1.000000e+00
  %i.y = load float, ptr %1, align 4, !tbaa !237
  %i.z = fadd float %i.y, 5.000000e-01
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 12 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !490 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 4 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !491
  %i.ae = icmp eq i32 %i.ab, %i.ad
  br i1 %i.ae, label %bb.c, label %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i

._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i: ; preds = %bb.b
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !492
  br label %_ZN10ImDrawList10PathLineToERK6ImVec2.exit

bb.c:                                             ; preds = %bb.b
  %i.af = add nsw i32 %i.ab, 1
  %.not.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i, label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = sdiv i32 %i.ab, 2
  %i.ah = add nsw i32 %i.ag, %i.ab
  br label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i

_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i: ; preds = %bb.d, %bb.c
  %i.ai = phi i32 [ %i.ah, %bb.d ], [ 8, %bb.c ]
  %i.aj = call noundef i32 @llvm.smax.i32(i32 %i.ai, i32 %i.af) ; 2 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = shl nsw i64 %i.ak, 3
  %i.am = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.al) ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !492 ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not6.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i
  %i.ap = load i32, ptr %i.aa, align 8, !tbaa !490
  %i.aq = sext i32 %i.ap to i64
  %i.ar = shl nsw i64 %i.aq, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.am, ptr nonnull align 4 %i.ao, i64 %i.ar, i1 false)
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !492
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.as)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i
  store ptr %i.am, ptr %i.an, align 8, !tbaa !492
  store i32 %i.aj, ptr %i.ac, align 4, !tbaa !491
  %.pre3.i.i = load i32, ptr %i.aa, align 8, !tbaa !490
  br label %_ZN10ImDrawList10PathLineToERK6ImVec2.exit

_ZN10ImDrawList10PathLineToERK6ImVec2.exit:       ; preds = %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i, %bb.f
  %i.at = phi i32 [ %i.ab, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i ], [ %.pre3.i.i, %bb.f ]
  %i.au = phi ptr [ %.pre.i.i, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i ], [ %i.am, %bb.f ]
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.av ; 2 uses
  store float %i.z, ptr %i.aw, align 4
  %.sroa_idx43 = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store float %i.s, ptr %.sroa_idx43, align 4
  %i.ax = load i32, ptr %i.aa, align 8, !tbaa !490
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aa, align 8, !tbaa !490
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.az = load float, ptr %1, align 4, !tbaa !237
  %i.ba = fadd float %i.l, %i.az
  %i.bb = fadd float %i.ba, 5.000000e-01
  %i.bc = fadd float %i.x, %i.l
  %i.bd = fadd float %i.bc, 5.000000e-01          ; 2 uses
  store float %i.bb, ptr %5, align 4, !tbaa !194
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %i.bd, ptr %i.be, align 4, !tbaa !197
  call void @_ZN10ImDrawList13PathArcToFastERK6ImVec2fii(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %5, float noundef %i.l, i32 noundef 6, i32 noundef 9)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.bf = load float, ptr %i.b, align 4, !tbaa !238
  %i.bg = fsub float %i.bf, %i.l
  %i.bh = fadd float %i.bg, -5.000000e-01
  store float %i.bh, ptr %6, align 4, !tbaa !194
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.bd, ptr %i.bi, align 4, !tbaa !197
  call void @_ZN10ImDrawList13PathArcToFastERK6ImVec2fii(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %6, float noundef %i.l, i32 noundef 9, i32 noundef 12)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  %i.bj = load float, ptr %i.b, align 4, !tbaa !238
  %i.bk = fadd float %i.bj, -5.000000e-01
  %i.bl = load i32, ptr %i.aa, align 8, !tbaa !490 ; 6 uses
  %i.bm = load i32, ptr %i.ac, align 4, !tbaa !491
  %i.bn = icmp eq i32 %i.bl, %i.bm
  br i1 %i.bn, label %bb.g, label %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i34

._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i34: ; preds = %_ZN10ImDrawList10PathLineToERK6ImVec2.exit
  %.phi.trans.insert.i.i35 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre.i.i36 = load ptr, ptr %.phi.trans.insert.i.i35, align 8, !tbaa !492
  br label %_ZN10ImDrawList10PathLineToERK6ImVec2.exit41

bb.g:                                             ; preds = %_ZN10ImDrawList10PathLineToERK6ImVec2.exit
  %i.bo = add nsw i32 %i.bl, 1
  %.not.i.i.i37 = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i.i37, label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i38, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bp = sdiv i32 %i.bl, 2
  %i.bq = add nsw i32 %i.bp, %i.bl
  br label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i38

_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i38: ; preds = %bb.h, %bb.g
  %i.br = phi i32 [ %i.bq, %bb.h ], [ 8, %bb.g ]
  %i.bs = call noundef i32 @llvm.smax.i32(i32 %i.br, i32 %i.bo) ; 2 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = shl nsw i64 %i.bt, 3
  %i.bv = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.bu) ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !492 ; 2 uses
  %.not6.i.i.i39 = icmp eq ptr %i.bx, null
  br i1 %.not6.i.i.i39, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i38
  %i.by = load i32, ptr %i.aa, align 8, !tbaa !490
  %i.bz = sext i32 %i.by to i64
  %i.ca = shl nsw i64 %i.bz, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bv, ptr nonnull align 4 %i.bx, i64 %i.ca, i1 false)
  %i.cb = load ptr, ptr %i.bw, align 8, !tbaa !492
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.cb)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i38
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !492
  store i32 %i.bs, ptr %i.ac, align 4, !tbaa !491
  %.pre3.i.i40 = load i32, ptr %i.aa, align 8, !tbaa !490
  br label %_ZN10ImDrawList10PathLineToERK6ImVec2.exit41

_ZN10ImDrawList10PathLineToERK6ImVec2.exit41:     ; preds = %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i34, %bb.j
  %i.cc = phi i32 [ %i.bl, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i34 ], [ %.pre3.i.i40, %bb.j ]
  %i.cd = phi ptr [ %.pre.i.i36, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i34 ], [ %i.bv, %bb.j ]
  %i.ce = sext i32 %i.cc to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.ce ; 2 uses
  store float %i.bk, ptr %i.cf, align 4
  %.sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  store float %i.s, ptr %.sroa_idx42, align 4
  %i.cg = load i32, ptr %i.aa, align 8, !tbaa !490
  %i.ch = add nsw i32 %i.cg, 1
  store i32 %i.ch, ptr %i.aa, align 8, !tbaa !490
  %i.ci = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 5, float noundef 1.000000e+00)
  %i.cj = load float, ptr %i.u, align 8, !tbaa !907
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !467
  %i.cm = load i32, ptr %i.aa, align 8, !tbaa !468
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijfi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %i.cl, i32 noundef %i.cm, i32 noundef %i.ci, float noundef %i.cj, i32 noundef 0)
  store i32 0, ptr %i.aa, align 8, !tbaa !468
  br label %bb.k

bb.k:                                             ; preds = %_ZN10ImDrawList10PathLineToERK6ImVec2.exit41, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui26TabItemLabelAndCloseButtonEP10ImDrawListRK6ImRecti6ImVec2PKcjjbPbS8_(ptr noundef %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, i32 noundef %2, <2 x float> %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7, ptr nofree noundef writeonly captures(address_is_null) %8, ptr nofree noundef writeonly captures(address_is_null) %9) local_unnamed_addr #0 {
bb.a:
  %10 = alloca %struct.ImVec2, align 8            ; 4 uses
  %11 = alloca %struct.ImRect, align 8            ; 6 uses
  %12 = alloca %struct.ImVec2, align 4            ; 5 uses
  %13 = alloca %struct.ImGuiLastItemData, align 4 ; 4 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 7 uses
  %i.b = tail call noundef ptr @_ZN5ImGui19FindRenderedTextEndEPKcS1_(ptr noundef %4, ptr noundef null) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  %i.c = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %4, ptr noundef %i.b, i1 noundef zeroext false, float noundef -1.000000e+00) ; 2 uses
  store <2 x float> %i.c, ptr %10, align 8
  %.not = icmp eq ptr %8, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %8, align 1, !tbaa !231
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not91 = icmp eq ptr %9, null                  ; 2 uses
  br i1 %.not91, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %9, align 1, !tbaa !231
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !238 ; 4 uses
  %i.f = load float, ptr %1, align 4, !tbaa !237  ; 3 uses
  %i.g = fsub float %i.e, %i.f                    ; 3 uses
  %i.h = fcmp ugt float %i.g, 1.000000e+00
  br i1 %i.h, label %bb.f, label %bb.v

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  %.sroa.073.0.vec.extract = extractelement <2 x float> %3, i64 0
  %i.i = fsub float %i.e, %.sroa.073.0.vec.extract ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.k = load float, ptr %i.j, align 4, !tbaa !196
  %14 = load <2 x float>, ptr %1, align 4, !tbaa !190
  %15 = fadd <2 x float> %3, %14                  ; 3 uses
  store <2 x float> %15, ptr %11, align 8, !tbaa !190
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store float %i.i, ptr %i.l, align 8, !tbaa !194
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 12
  store float %i.k, ptr %i.m, align 4, !tbaa !197
  br i1 %.not91, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %foldExtExtBinop = fadd <2 x float> %15, %i.c
  %16 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.n = fcmp ogt float %16, %i.i
  %i.o = zext i1 %i.n to i8
  store i8 %i.o, ptr %9, align 1, !tbaa !231
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 4568
  %i.q = load float, ptr %i.p, align 8, !tbaa !205 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  %i.r = fsub float %i.i, %i.q                    ; 3 uses
  %i.s = fcmp oge float %i.f, %i.r
  %i.t = select i1 %i.s, float %i.f, float %i.r   ; 4 uses
  store float %i.t, ptr %12, align 4, !tbaa !194
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 4
  %17 = extractelement <2 x float> %15, i64 1     ; 2 uses
  store float %17, ptr %i.u, align 4, !tbaa !197
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 5404
  %i.w = load i32, ptr %i.v, align 4, !tbaa !527  ; 2 uses
  %i.x = icmp eq i32 %i.w, %5
  %i.y = icmp eq i32 %i.w, %6
  %or.cond95 = or i1 %i.x, %i.y
  br i1 %or.cond95, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 5428
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !218 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, %5
  %i.ac = icmp eq i32 %i.aa, %6
  %spec.select = or i1 %i.ab, %i.ac
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ad = phi i1 [ %spec.select, %bb.i ], [ true, %bb.h ] ; 4 uses
  %.not92 = icmp eq i32 %6, 0
  br i1 %.not92, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %7, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 3388
  %i.af = load float, ptr %i.ae, align 4, !tbaa !908 ; 3 uses
  %i.ag = fcmp uge float %i.af, 0.000000e+00      ; 2 uses
  %brmerge.not = and i1 %i.ad, %i.ag
  %not.123 = xor i1 %i.ag, true
  br i1 %brmerge.not, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ah = fcmp oge float %i.q, %i.af
  %i.ai = select i1 %i.ah, float %i.q, float %i.af
  %i.aj = fcmp oge float %i.g, %i.ai
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 3392
  %i.al = load float, ptr %i.ak, align 8, !tbaa !909 ; 3 uses
  %i.am = fcmp uge float %i.al, 0.000000e+00      ; 2 uses
  %brmerge98.not = and i1 %i.ad, %i.am
  %not. = xor i1 %i.am, true
  br i1 %brmerge98.not, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.an = fcmp oge float %i.q, %i.al
  %i.ao = select i1 %i.an, float %i.q, float %i.al
  %i.ap = fcmp oge float %i.g, %i.ao
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %.080.shrunk = phi i1 [ %i.ap, %bb.o ], [ %i.aj, %bb.m ], [ %not.123, %bb.l ], [ %not., %bb.n ] ; 2 uses
  %i.aq = and i32 %2, 1
  %.not93 = icmp eq i32 %i.aq, 0
  %i.ar = fadd float %i.q, %i.t
  %i.as = fcmp ugt float %i.ar, %i.e
  %or.cond120 = select i1 %.not93, i1 true, i1 %i.as
  br i1 %or.cond120, label %bb.r, label %bb.q

.thread:                                          ; preds = %bb.j
  %i.at = and i32 %2, 1
  %.not93134 = icmp eq i32 %i.at, 0
  %i.au = fadd float %i.q, %i.t
  %i.av = fcmp ugt float %i.au, %i.e
  %or.cond120135 = select i1 %.not93134, i1 true, i1 %i.av
  br i1 %or.cond120135, label %.thread138, label %.thread116

bb.q:                                             ; preds = %bb.p
  %.demorgan = and i1 %i.ad, %.080.shrunk
  br i1 %.demorgan, label %.thread105, label %.thread116

.thread116:                                       ; preds = %.thread, %bb.q
  %i.aw = fmul float %i.q, 5.000000e-01           ; 2 uses
  %i.ax = fadd float %i.aw, %i.t
  %i.ay = fadd float %17, %i.aw
  %.sroa.0.0.vec.insert.i102 = insertelement <2 x float> poison, float %i.ax, i64 0
  %.sroa.0.4.vec.insert.i103 = insertelement <2 x float> %.sroa.0.0.vec.insert.i102, float %i.ay, i64 1
  %i.az = tail call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 56, float noundef 1.000000e+00)
  tail call void @_ZN5ImGui12RenderBulletEP10ImDrawList6ImVec2j(ptr noundef %0, <2 x float> %.sroa.0.4.vec.insert.i103, i32 noundef %i.az)
  br label %.critedge

bb.r:                                             ; preds = %bb.p
  br i1 %.080.shrunk, label %.thread105, label %.thread138

.thread105:                                       ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 7848 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) %13, ptr noundef nonnull align 8 dereferenceable(80) %i.ba, i64 80, i1 false), !tbaa.struct !493
  %i.bb = call noundef zeroext i1 @_ZN5ImGui11CloseButtonEjRK6ImVec2(i32 noundef %6, ptr noundef nonnull align 4 dereferenceable(8) %12) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ba, ptr noundef nonnull align 4 dereferenceable(80) %13, i64 80, i1 false), !tbaa.struct !493
  %i.bc = and i32 %2, 4
  %.not94 = icmp eq i32 %i.bc, 0
  %or.cond100 = and i1 %.not94, %i.ad
  br i1 %or.cond100, label %bb.s, label %.thread112

bb.s:                                             ; preds = %.thread105
  %i.bd = tail call noundef zeroext i1 @_ZN5ImGui14IsMouseClickedEib(i32 noundef 2, i1 noundef zeroext false)
  %spec.select101 = or i1 %i.bb, %i.bd
  br label %.thread112

.thread112:                                       ; preds = %.thread105, %bb.s
  %.182 = phi i1 [ %i.bb, %.thread105 ], [ %spec.select101, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %i.be = zext i1 %.182 to i8                     ; 2 uses
  %.in.v = select i1 %7, i64 3388, i64 3392
  %.in = getelementptr inbounds nuw i8, ptr %i.a, i64 %.in.v
  %i.bf = load float, ptr %.in, align 4, !tbaa !190
  %i.bg = fcmp olt float %i.bf, 0.000000e+00
  br i1 %i.bg, label %.critedge, label %.thread138.sink.split

.critedge:                                        ; preds = %.thread116, %.thread112
  %.2111115 = phi i8 [ 0, %.thread116 ], [ %i.be, %.thread112 ]
  %i.bh = fneg float %i.q
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bh, float f0x3F666666, float %i.i) ; 2 uses
  br label %.thread138.sink.split

.thread138.sink.split:                            ; preds = %.thread112, %.critedge
  %.sink = phi float [ %i.bi, %.critedge ], [ %i.r, %.thread112 ]
  %.2110.ph = phi i8 [ %.2111115, %.critedge ], [ %i.be, %.thread112 ]
  %.1.ph = phi float [ %i.bi, %.critedge ], [ %i.i, %.thread112 ]
  store float %.sink, ptr %i.l, align 8, !tbaa !238
  br label %.thread138

.thread138:                                       ; preds = %.thread138.sink.split, %.thread, %bb.r
  %.2110 = phi i8 [ 0, %bb.r ], [ 0, %.thread ], [ %.2110.ph, %.thread138.sink.split ]
  %.1 = phi float [ %i.i, %bb.r ], [ %i.i, %.thread ], [ %.1.ph, %.thread138.sink.split ]
  tail call void @_ZN5ImGui24LogSetNextTextDecorationEPKcS1_(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.135)
  call void @_ZN5ImGui18RenderTextEllipsisEP10ImDrawListRK6ImVec2S4_fPKcS6_PS3_(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(8) %11, ptr noundef nonnull align 4 dereferenceable(8) %i.l, float noundef %.1, ptr noundef %4, ptr noundef %i.b, ptr noundef nonnull %10)
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.thread138
  store i8 %.2110, ptr %8, align 1, !tbaa !231
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.thread138
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  br label %bb.v

bb.v:                                             ; preds = %bb.e, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui16SetTabItemClosedEPKc(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 9088
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !576  ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !580
  %i.f = and i32 %i.e, 1048576
  %.not10 = icmp eq i32 %i.f, 0
  br i1 %.not10, label %_ZN5ImGuiL15TabBarCalcTabIDEP11ImGuiTabBarPKcP11ImGuiWindow.exit, label %.critedge

_ZN5ImGuiL15TabBarCalcTabIDEP11ImGuiTabBarPKcP11ImGuiWindow.exit: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !158
  %i.i = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.h, ptr noundef %0, ptr noundef null) ; 2 uses
  %.not.i12 = icmp eq i32 %i.i, 0
  br i1 %.not.i12, label %.critedge, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN5ImGuiL15TabBarCalcTabIDEP11ImGuiTabBarPKcP11ImGuiWindow.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !582  ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph.i, label %.critedge

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !569
  %wide.trip.count.i = zext nneg i32 %i.k to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge, label %bb.d, !llvm.loop !17

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw [44 x i8], ptr %i.n, i64 %indvars.iv.i ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !594
  %i.q = icmp eq i32 %i.p, %i.i
  br i1 %i.q, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit, label %bb.c

_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit: ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store i8 1, ptr %i.r, align 4, !tbaa !615
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %.preheader.i, %_ZN5ImGuiL15TabBarCalcTabIDEP11ImGuiTabBarPKcP11ImGuiWindow.exit, %bb.a, %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef <2 x float> @_ZN5ImGui15TabItemCalcSizeEP11ImGuiWindow(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #32 {
bb.a:
  ret <2 x float> zeroinitializer
}

declare noundef ptr @_ZN5ImGui10GetKeyDataEP12ImGuiContext8ImGuiKey(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #33

declare void @_ZN16ImGuiListClipper19IncludeItemsByIndexEii(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN5ImStbL25stb_textedit_move_to_lastEP19ImGuiInputTextStatePNS_17STB_TexteditStateE(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !394  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !395  ; 4 uses
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %i.d, %i.b
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 %i.b, ptr %i.c, align 4, !tbaa !395
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ %i.b, %bb.c ] ; 2 uses
  %i.g = phi i32 [ %i.b, %bb.b ], [ %i.d, %bb.c ]
  %i.h = getelementptr i8, ptr %0, i64 24
  %.val = load i32, ptr %i.h, align 8, !tbaa !377 ; 4 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %.val) ; 3 uses
  %i.i = icmp sgt i32 %i.f, %.val
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %.val, ptr %i.c, align 4, !tbaa !395
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = phi i32 [ %.val, %bb.e ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = icmp eq i32 %spec.select, %i.j
  br i1 %i.k, label %bb.g, label %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit

bb.g:                                             ; preds = %bb.f
  store i32 %spec.select, ptr %1, align 4, !tbaa !388
  br label %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit

_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit: ; preds = %bb.g, %bb.f
  %i.l = phi i32 [ %spec.select, %bb.g ], [ %i.j, %bb.f ] ; 2 uses
  store i32 %i.l, ptr %1, align 4, !tbaa !388
  store i32 %i.l, ptr %i.a, align 4, !tbaa !394
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i8 0, ptr %i.m, align 2, !tbaa !396
  br label %bb.h

bb.h:                                             ; preds = %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !377  ; 3 uses
  %.not = icmp slt i32 %1, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.c, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !400  ; 2 uses
  %i.g = sext i32 %1 to i64
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 %i.g
  %i.i = sext i32 %i.c to i64
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 %i.i
  %i.k = call noundef i32 @_Z18ImTextCharFromUtf8PjPKcS1_(ptr noundef nonnull %i.a, ptr noundef %i.h, ptr noundef %i.j)
  %i.l = add nsw i32 %i.k, %1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ %i.l, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, -2147483648) i32 @_ZN5ImStbL30STB_TEXTEDIT_MOVEWORDLEFT_IMPLEP19ImGuiInputTextStatei(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = icmp slt i32 %1, 1
  br i1 %i.a, label %.critedge, label %_ZN5ImStbL36IMSTB_TEXTEDIT_GETPREVCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit

_ZN5ImStbL36IMSTB_TEXTEDIT_GETPREVCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !400  ; 2 uses
  %i.d = zext nneg i32 %1 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = tail call noundef ptr @_Z31ImTextFindPreviousUtf8CodepointPKcS0_(ptr noundef %i.c, ptr noundef nonnull %i.e)
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !400
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = trunc i64 %i.j to i32                    ; 3 uses
  %i.l = icmp sgt i32 %i.k, -1
  br i1 %i.l, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZN5ImStbL36IMSTB_TEXTEDIT_GETPREVCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5ImStbL36IMSTB_TEXTEDIT_GETPREVCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit9
end_hunk_0
