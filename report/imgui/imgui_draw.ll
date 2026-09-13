Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_draw?download=true
inline.NumInlined: 1479
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 299
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 352
begin_hunk_0_@_ZN10ImDrawList8PrimRectERK6ImVec2S2_j:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN10ImDrawList10PrimRectUVERK6ImVec2S2_S2_S2_j(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %4, i32 noundef %5) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !237
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !238
  %i.d = load i32, ptr %1, align 4, !tbaa !237
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !238
  %i.g = load i32, ptr %4, align 4, !tbaa !237
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !238
  %i.j = load i32, ptr %3, align 4, !tbaa !237
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !238
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !92
  %i.o = trunc i32 %i.n to i16                    ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !113  ; 6 uses
  store i16 %i.o, ptr %i.q, align 2, !tbaa !243
  %i.r = add i16 %i.o, 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  store i16 %i.r, ptr %i.s, align 2, !tbaa !243
  %i.t = add i16 %i.o, 2                          ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i16 %i.t, ptr %i.u, align 2, !tbaa !243
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  store i16 %i.o, ptr %i.v, align 2, !tbaa !243
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i16 %i.t, ptr %i.w, align 2, !tbaa !243
  %i.x = add i16 %i.o, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 10
  store i16 %i.x, ptr %i.y, align 2, !tbaa !243
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 11 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !242
  %i.ab = load i64, ptr %1, align 4
  store i64 %i.ab, ptr %i.aa, align 4
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !242
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %3, align 4
  store i64 %i.ae, ptr %i.ad, align 4
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !242 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i32 %5, ptr %i.ag, align 4, !tbaa !245
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  store i32 %i.a, ptr %i.ah, align 4
  %.sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i32 %i.c, ptr %.sroa_idx29, align 4
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !242 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  store i32 %i.g, ptr %i.aj, align 4
  %.sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store i32 %i.i, ptr %.sroa_idx23, align 4
  %i.ak = load ptr, ptr %i.z, align 8, !tbaa !242 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 36
  store i32 %5, ptr %i.al, align 4, !tbaa !245
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.an = load i64, ptr %2, align 4
  store i64 %i.an, ptr %i.am, align 4
  %i.ao = load ptr, ptr %i.z, align 8, !tbaa !242
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load i64, ptr %4, align 4
  store i64 %i.aq, ptr %i.ap, align 4
  %i.ar = load ptr, ptr %i.z, align 8, !tbaa !242 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  store i32 %5, ptr %i.as, align 4, !tbaa !245
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 60
  store i32 %i.d, ptr %i.at, align 4
  %.sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  store i32 %i.f, ptr %.sroa_idx26, align 4
  %i.au = load ptr, ptr %i.z, align 8, !tbaa !242 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 68
  store i32 %i.j, ptr %i.av, align 4
  %.sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  store i32 %i.l, ptr %.sroa_idx22, align 4
  %i.aw = load i32, ptr %i.m, align 4, !tbaa !92
  %i.ax = add i32 %i.aw, 4
  store i32 %i.ax, ptr %i.m, align 4, !tbaa !92
  %i.ay = load <2 x ptr>, ptr %i.z, align 8, !tbaa !246
  %i.az = load ptr, ptr %i.z, align 8, !tbaa !242
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 76
  store i32 %5, ptr %i.ba, align 4, !tbaa !245
  %i.bb = getelementptr inbounds nuw i8, <2 x ptr> %i.ay, <2 x i64> <i64 80, i64 12>
  store <2 x ptr> %i.bb, ptr %i.z, align 8, !tbaa !246
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN10ImDrawList10PrimQuadUVERK6ImVec2S2_S2_S2_S2_S2_S2_S2_j(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %8, i32 noundef %9) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !92
  %i.c = trunc i32 %i.b to i16                    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !113  ; 6 uses
  store i16 %i.c, ptr %i.e, align 2, !tbaa !243
  %i.f = add i16 %i.c, 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store i16 %i.f, ptr %i.g, align 2, !tbaa !243
  %i.h = add i16 %i.c, 2                          ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i16 %i.h, ptr %i.i, align 2, !tbaa !243
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  store i16 %i.c, ptr %i.j, align 2, !tbaa !243
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i16 %i.h, ptr %i.k, align 2, !tbaa !243
  %i.l = add i16 %i.c, 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  store i16 %i.l, ptr %i.m, align 2, !tbaa !243
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 11 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !242
  %i.p = load i64, ptr %1, align 4
  store i64 %i.p, ptr %i.o, align 4
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !242
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %5, align 4
  store i64 %i.s, ptr %i.r, align 4
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !242  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i32 %9, ptr %i.u, align 4, !tbaa !245
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.w = load i64, ptr %2, align 4
  store i64 %i.w, ptr %i.v, align 4
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !242
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  %i.z = load i64, ptr %6, align 4
  store i64 %i.z, ptr %i.y, align 4
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !242 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 36
  store i32 %9, ptr %i.ab, align 4, !tbaa !245
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ad = load i64, ptr %3, align 4
  store i64 %i.ad, ptr %i.ac, align 4
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !242
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load i64, ptr %7, align 4
  store i64 %i.ag, ptr %i.af, align 4
  %i.ah = load ptr, ptr %i.n, align 8, !tbaa !242 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  store i32 %9, ptr %i.ai, align 4, !tbaa !245
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 60
  %i.ak = load i64, ptr %4, align 4
  store i64 %i.ak, ptr %i.aj, align 4
  %i.al = load ptr, ptr %i.n, align 8, !tbaa !242
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 68
  %i.an = load i64, ptr %8, align 4
  store i64 %i.an, ptr %i.am, align 4
  %i.ao = load i32, ptr %i.a, align 4, !tbaa !92
  %i.ap = add i32 %i.ao, 4
  store i32 %i.ap, ptr %i.a, align 4, !tbaa !92
  %i.aq = load <2 x ptr>, ptr %i.n, align 8, !tbaa !246
  %i.ar = load ptr, ptr %i.n, align 8, !tbaa !242
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 76
  store i32 %9, ptr %i.as, align 4, !tbaa !245
  %i.at = getelementptr inbounds nuw i8, <2 x ptr> %i.aq, <2 x i64> <i64 80, i64 12>
  store <2 x ptr> %i.at, ptr %i.n, align 8, !tbaa !246
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijfi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, float noundef %4, i32 noundef %5) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = icmp slt i32 %2, 2
  %i.b = icmp ult i32 %3, 16777216
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %5, 512
  %.not443 = icmp eq i32 %i.c, 0                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.f = load i64, ptr %i.e, align 8              ; 11 uses
  %i.g = add nsw i32 %2, -1                       ; 4 uses
  %i.h = select i1 %.not443, i32 %i.g, i32 %2     ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.j = load float, ptr %i.i, align 8, !tbaa !103 ; 8 uses
  %i.k = fcmp ogt float %4, %i.j                  ; 5 uses
  %i.l = and i32 %5, -2147483633
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str) ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load i32, ptr %i.o, align 8, !tbaa !91   ; 2 uses
  %i.q = and i32 %i.p, 1
  %.not444 = icmp eq i32 %i.q, 0
  br i1 %.not444, label %.lr.ph558, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = and i32 %3, 16777215                     ; 4 uses
  %i.s = fcmp oge float %4, 1.000000e+00
  %i.t = select i1 %i.s, float %4, float 1.000000e+00 ; 6 uses
  %i.u = fptosi float %i.t to i32                 ; 3 uses
  %6 = sitofp i32 %i.u to float
  %i.v = fsub float %i.t, %6
  %i.w = and i32 %i.p, 2
  %i.x = icmp eq i32 %i.w, 0
  %7 = icmp sgt i32 %i.u, 31
  %or.cond.not453 = select i1 %i.x, i1 true, i1 %7
  %i.y = fcmp ugt float %i.v, f0x3727C5AC
  %or.cond3.not450 = select i1 %or.cond.not453, i1 true, i1 %i.y
  %i.z = fcmp une float %i.j, 1.000000e+00
  %.not448 = select i1 %or.cond3.not450, i1 true, i1 %i.z ; 8 uses
  %.v = select i1 %i.k, i32 18, i32 12
  %.v530 = select i1 %.not448, i32 %.v, i32 6
  %i.aa = mul nsw i32 %.v530, %i.h
  br i1 %.not448, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = shl nuw nsw i32 %2, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ac = shl nuw nsw i32 %2, 2
  %i.ad = mul nuw nsw i32 %2, 3
  %i.ae = select i1 %i.k, i32 %i.ac, i32 %i.ad
  %i.af = select i1 %i.k, i32 5, i32 3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not446 = phi i32 [ 3, %bb.f ], [ %i.af, %bb.g ]
  %i.ag = phi i32 [ %i.ab, %bb.f ], [ %i.ae, %bb.g ] ; 2 uses
  tail call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %i.aa, i32 noundef %i.ag)
  %i.ah = load ptr, ptr %i.d, align 8, !tbaa !73  ; 3 uses
  %i.ai = mul nuw nsw i32 %.not446, %2            ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 76 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !99
  %.not.i = icmp sgt i32 %i.ai, %i.ak
  br i1 %.not.i, label %bb.i, label %.lr.ph.preheader

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 80 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !47 ; 2 uses
  %.not4.i = icmp eq ptr %i.am, null
  br i1 %.not4.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.am)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.an = zext nneg i32 %i.ai to i64
  %i.ao = shl nuw nsw i64 %i.an, 3
  %i.ap = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.ao)
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !47
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !99
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !73
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.k, %bb.h
  %i.aq = phi ptr [ %i.ah, %bb.h ], [ %.pre, %bb.k ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 80
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !247 ; 11 uses
  %i.at = zext nneg i32 %2 to i64                 ; 7 uses
  %i.au = getelementptr [8 x i8], ptr %i.as, i64 %i.at ; 14 uses
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.m
  br i1 %.not443, label %bb.n, label %.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.av = icmp eq i64 %indvars.iv.next, %i.at
  %i.aw = select i1 %i.av, i64 0, i64 %indvars.iv.next
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.aw
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.az = load <2 x float>, ptr %i.ax, align 4, !tbaa !29
  %i.ba = load <2 x float>, ptr %i.ay, align 4, !tbaa !29
  %i.bb = fsub <2 x float> %i.az, %i.ba           ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %i.bb, %i.bb
  %i.bc = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bd = extractelement <2 x float> %i.bb, i64 0 ; 2 uses
  %i.be = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.bd, float %i.bc) ; 2 uses
  %i.bf = fcmp ogt float %i.be, 0.000000e+00
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph
  %i.bg = insertelement <4 x float> poison, float %i.be, i64 0
  %i.bh = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.bg)
  %i.bi = shufflevector <4 x float> %i.bh, <4 x float> poison, <2 x i32> zeroinitializer
  %i.bj = fmul <2 x float> %i.bb, %i.bi
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph
  %i.bk = phi <2 x float> [ %i.bj, %bb.l ], [ %i.bb, %.lr.ph ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv ; 2 uses
  %i.bm = extractelement <2 x float> %i.bk, i64 1
  store float %i.bm, ptr %i.bl, align 4, !tbaa !237
  %i.bn = extractelement <2 x float> %i.bk, i64 0
  %i.bo = fneg float %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store float %i.bo, ptr %i.bp, align 4, !tbaa !238
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !565

bb.n:                                             ; preds = %._crit_edge
  %i.bq = getelementptr i8, ptr %i.au, i64 -16
  %i.br = zext nneg i32 %i.g to i64               ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.br ; 5 uses
  %i.bt = load i64, ptr %i.bq, align 4
  store i64 %i.bt, ptr %i.bs, align 4
  %or.cond5 = select i1 %.not448, i1 %i.k, i1 false
  br i1 %or.cond5, label %bb.u, label %bb.o

.thread:                                          ; preds = %._crit_edge
  %or.cond5527 = select i1 %.not448, i1 %i.k, i1 false
  br i1 %or.cond5527, label %.thread529, label %.thread528

.thread529:                                       ; preds = %.thread
  %i.bu = fsub float %i.t, %i.j
  %i.bv = fmul float %i.bu, 5.000000e-01
  br label %.lr.ph553

.thread528:                                       ; preds = %.thread
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.t, float 5.000000e-01, float 1.000000e+00)
  %i.bx = select i1 %.not448, float %i.j, float %i.bw
  br label %.lr.ph543

bb.o:                                             ; preds = %bb.n
  %i.by = tail call float @llvm.fmuladd.f32(float %i.t, float 5.000000e-01, float 1.000000e+00)
  %i.bz = select i1 %.not448, float %i.j, float %i.by ; 2 uses
  %i.ca = load <2 x float>, ptr %i.as, align 4, !tbaa !29
  %i.cb = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.cd = fmul <2 x float> %i.cc, %i.ca
  %i.ce = load <2 x float>, ptr %1, align 4, !tbaa !29
  %i.cf = fadd <2 x float> %i.cd, %i.ce
  store <2 x float> %i.cf, ptr %i.au, align 4
  %i.cg = load <2 x float>, ptr %i.as, align 4, !tbaa !29
  %i.ch = fmul <2 x float> %i.cc, %i.cg
  %i.ci = load <2 x float>, ptr %1, align 4, !tbaa !29
  %i.cj = fsub <2 x float> %i.ci, %i.ch
  %i.ck = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store <2 x float> %i.cj, ptr %i.ck, align 4
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.br ; 2 uses
  %i.cm = load <2 x float>, ptr %i.bs, align 4, !tbaa !29
  %i.cn = fmul <2 x float> %i.cc, %i.cm
  %i.co = load <2 x float>, ptr %i.cl, align 4, !tbaa !29
  %i.cp = fadd <2 x float> %i.cn, %i.co
  %i.cq = shl nuw nsw i32 %i.g, 1
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.cr ; 2 uses
  store <2 x float> %i.cp, ptr %i.cs, align 4
  %i.ct = load <2 x float>, ptr %i.bs, align 4, !tbaa !29
  %i.cu = fmul <2 x float> %i.cc, %i.ct
  %i.cv = load <2 x float>, ptr %i.cl, align 4, !tbaa !29
  %i.cw = fsub <2 x float> %i.cv, %i.cu
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store <2 x float> %i.cw, ptr %i.cx, align 4
  br label %.lr.ph543

.lr.ph543:                                        ; preds = %bb.o, %.thread528
  %i.cy = phi float [ %i.bx, %.thread528 ], [ %i.bz, %bb.o ]
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !92 ; 2 uses
  %i.db = select i1 %.not448, i32 3, i32 2
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %wide.trip.count565 = zext nneg i32 %i.h to i64 ; 2 uses
  %i.dd = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer
  %.promoted625 = load ptr, ptr %i.dc, align 8, !tbaa !113
  br label %.backedge

.lr.ph549:                                        ; preds = %bb.r
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %.pre593 = load ptr, ptr %i.df, align 8, !tbaa !242
  br label %bb.t

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph543
  %i.dg = phi ptr [ %.promoted625, %.lr.ph543 ], [ %i.fg, %.backedge.backedge ] ; 13 uses
  %indvars.iv562 = phi i64 [ 0, %.lr.ph543 ], [ %indvars.iv.next563, %.backedge.backedge ] ; 2 uses
  %.0433540 = phi i32 [ %i.da, %.lr.ph543 ], [ %i.dl, %.backedge.backedge ] ; 3 uses
  %indvars.iv.next563 = add nuw nsw i64 %indvars.iv562, 1 ; 5 uses
  %i.dh = icmp eq i64 %indvars.iv.next563, %i.at  ; 2 uses
  %i.di = trunc nuw nsw i64 %indvars.iv.next563 to i32
  %i.dj = select i1 %i.dh, i32 0, i32 %i.di       ; 2 uses
  %i.dk = add i32 %.0433540, %i.db
  %i.dl = select i1 %i.dh, i32 %i.da, i32 %i.dk   ; 3 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv562
  %i.dn = zext nneg i32 %i.dj to i64              ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.dn
  %i.dp = load <2 x float>, ptr %i.dm, align 4, !tbaa !29
  %i.dq = load <2 x float>, ptr %i.do, align 4, !tbaa !29
  %i.dr = fadd <2 x float> %i.dp, %i.dq
  %i.ds = fmul <2 x float> %i.dr, splat (float 5.000000e-01) ; 5 uses
  %foldExtExtBinop617 = fmul <2 x float> %i.ds, %i.ds
  %i.dt = extractelement <2 x float> %foldExtExtBinop617, i64 1
  %i.du = extractelement <2 x float> %i.ds, i64 0 ; 2 uses
  %i.dv = tail call float @llvm.fmuladd.f32(float %i.du, float %i.du, float %i.dt) ; 2 uses
  %i.dw = fcmp ogt float %i.dv, f0x358637BD
  br i1 %i.dw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.backedge
  %i.dx = fdiv float 1.000000e+00, %i.dv          ; 2 uses
  %i.dy = fcmp ogt float %i.dx, 1.000000e+02
  %spec.store.select = select i1 %i.dy, float 1.000000e+02, float %i.dx
  %i.dz = insertelement <2 x float> poison, float %spec.store.select, i64 0
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eb = fmul <2 x float> %i.ds, %i.ea
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.backedge
  %i.ec = phi <2 x float> [ %i.eb, %bb.p ], [ %i.ds, %.backedge ]
  %i.ed = fmul <2 x float> %i.de, %i.ec           ; 2 uses
  %i.ee = shl nuw nsw i32 %i.dj, 1
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.ef ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dn ; 2 uses
  %i.ei = load <2 x float>, ptr %i.eh, align 4, !tbaa !29
  %i.ej = fadd <2 x float> %i.ed, %i.ei
  store <2 x float> %i.ej, ptr %i.eg, align 4, !tbaa !29
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.el = load <2 x float>, ptr %i.eh, align 4, !tbaa !29
  %i.em = fsub <2 x float> %i.el, %i.ed
  store <2 x float> %i.em, ptr %i.ek, align 4, !tbaa !29
  %i.en = trunc i32 %i.dl to i16                  ; 4 uses
  store i16 %i.en, ptr %i.dg, align 2, !tbaa !243
  %i.eo = trunc i32 %.0433540 to i16              ; 5 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dg, i64 2
  store i16 %i.eo, ptr %i.ep, align 2, !tbaa !243
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dg, i64 4 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  br i1 %.not448, label %bb.r, label %.thread609

bb.r:                                             ; preds = %bb.q
  %i.es = trunc i32 %i.dl to i16
  %i.et = insertelement <2 x i16> poison, i16 %i.es, i64 0
  %i.eu = trunc i32 %.0433540 to i16
  %i.ev = insertelement <2 x i16> %i.et, i16 %i.eu, i64 1
  %i.ew = shufflevector <2 x i16> %i.ev, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ex = add i16 %i.eo, 2                        ; 2 uses
  store i16 %i.ex, ptr %i.eq, align 2, !tbaa !243
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dg, i64 6
  store i16 %i.ex, ptr %i.ey, align 2, !tbaa !243
  %i.ez = add <4 x i16> %i.ew, <i16 2, i16 0, i16 1, i16 1> ; 2 uses
  store <4 x i16> %i.ez, ptr %i.er, align 2, !tbaa !243
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store i16 %i.eo, ptr %i.fa, align 2, !tbaa !243
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dg, i64 18
  store i16 %i.eo, ptr %i.fb, align 2, !tbaa !243
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dg, i64 20
  store i16 %i.en, ptr %i.fc, align 2, !tbaa !243
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dg, i64 22
  %i.fe = extractelement <4 x i16> %i.ez, i64 2
  store i16 %i.fe, ptr %i.fd, align 2, !tbaa !243
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dg, i64 24 ; 2 uses
  store ptr %i.ff, ptr %i.dc, align 8, !tbaa !113
  %exitcond566.not = icmp eq i64 %indvars.iv.next563, %wide.trip.count565
  br i1 %exitcond566.not, label %.lr.ph549, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.r, %.thread609
  %i.fg = phi ptr [ %i.ff, %bb.r ], [ %i.fl, %.thread609 ]
  br label %.backedge, !llvm.loop !566

.thread609:                                       ; preds = %bb.q
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dg, i64 10
  %i.fi = add i16 %i.eo, 1                        ; 2 uses
  store i16 %i.fi, ptr %i.eq, align 2, !tbaa !243
  %i.fj = add i16 %i.en, 1
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dg, i64 6
  store i16 %i.fj, ptr %i.fk, align 2, !tbaa !243
  store i16 %i.fi, ptr %i.er, align 2, !tbaa !243
  store i16 %i.en, ptr %i.fh, align 2, !tbaa !243
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dg, i64 12 ; 2 uses
  store ptr %i.fl, ptr %i.dc, align 8, !tbaa !113
  %exitcond566.not611 = icmp eq i64 %indvars.iv.next563, %wide.trip.count565
  br i1 %exitcond566.not611, label %.lr.ph547, label %.backedge.backedge

.lr.ph547:                                        ; preds = %.thread609
  %i.fm = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !248
  %8 = sext i32 %i.u to i64
  %i.fp = getelementptr inbounds [16 x i8], ptr %i.fo, i64 %8 ; 2 uses
  %i.fq = load <2 x i32>, ptr %i.fp, align 4, !tbaa !29
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = load <2 x i32>, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !29
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %.pre592 = load ptr, ptr %i.fs, align 8, !tbaa !242
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph547, %bb.s
  %i.ft = phi ptr [ %.pre592, %.lr.ph547 ], [ %i.gh, %bb.s ]
  %indvars.iv567 = phi i64 [ 0, %.lr.ph547 ], [ %indvars.iv.next568, %bb.s ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv567, 4
  %i.fu = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 4
  store i64 %i.fv, ptr %i.ft, align 4
  %i.fw = load ptr, ptr %i.fs, align 8, !tbaa !242
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store <2 x i32> %i.fq, ptr %i.fx, align 4
  %i.fy = load ptr, ptr %i.fs, align 8, !tbaa !242 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  store i32 %3, ptr %i.fz, align 4, !tbaa !245
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 20
  %i.gc = load i64, ptr %i.ga, align 4
  store i64 %i.gc, ptr %i.gb, align 4
  %i.gd = load ptr, ptr %i.fs, align 8, !tbaa !242
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 28
  store <2 x i32> %i.fr, ptr %i.ge, align 4
  %i.gf = load ptr, ptr %i.fs, align 8, !tbaa !242 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 36
  store i32 %3, ptr %i.gg, align 4, !tbaa !245
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 40 ; 2 uses
  store ptr %i.gh, ptr %i.fs, align 8, !tbaa !242
  %indvars.iv.next568 = add nuw nsw i64 %indvars.iv567, 1 ; 2 uses
  %exitcond571.not = icmp eq i64 %indvars.iv.next568, %i.at
  br i1 %exitcond571.not, label %.loopexit535, label %bb.s, !llvm.loop !567

bb.t:                                             ; preds = %.lr.ph549, %bb.t
  %i.gi = phi ptr [ %.pre593, %.lr.ph549 ], [ %i.hd, %bb.t ]
  %indvars.iv572 = phi i64 [ 0, %.lr.ph549 ], [ %indvars.iv.next573, %bb.t ] ; 3 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv572
  %i.gk = load i64, ptr %i.gj, align 4
  store i64 %i.gk, ptr %i.gi, align 4
  %i.gl = load ptr, ptr %i.df, align 8, !tbaa !242
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  store i64 %i.f, ptr %i.gm, align 4
  %i.gn = load ptr, ptr %i.df, align 8, !tbaa !242 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  store i32 %3, ptr %i.go, align 4, !tbaa !245
  %.idx607 = shl nuw nsw i64 %indvars.iv572, 4
  %i.gp = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx607 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 20
  %i.gr = load i64, ptr %i.gp, align 4
  store i64 %i.gr, ptr %i.gq, align 4
  %i.gs = load ptr, ptr %i.df, align 8, !tbaa !242
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 28
  store i64 %i.f, ptr %i.gt, align 4
  %i.gu = load ptr, ptr %i.df, align 8, !tbaa !242 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 36
  store i32 %i.r, ptr %i.gv, align 4, !tbaa !245
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 40
  %i.gy = load i64, ptr %i.gw, align 4
  store i64 %i.gy, ptr %i.gx, align 4
  %i.gz = load ptr, ptr %i.df, align 8, !tbaa !242
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 48
  store i64 %i.f, ptr %i.ha, align 4
  %i.hb = load ptr, ptr %i.df, align 8, !tbaa !242 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 56
  store i32 %i.r, ptr %i.hc, align 4, !tbaa !245
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 60 ; 2 uses
  store ptr %i.hd, ptr %i.df, align 8, !tbaa !242
  %indvars.iv.next573 = add nuw nsw i64 %indvars.iv572, 1 ; 2 uses
  %exitcond576.not = icmp eq i64 %indvars.iv.next573, %i.at
  br i1 %exitcond576.not, label %.loopexit535, label %bb.t, !llvm.loop !568

bb.u:                                             ; preds = %bb.n
  %i.he = fsub float %i.t, %i.j
  %i.hf = fmul float %i.he, 5.000000e-01          ; 3 uses
  %i.hg = fadd float %i.j, %i.hf
  %i.hh = load <2 x float>, ptr %i.as, align 4, !tbaa !29
  %i.hi = insertelement <2 x float> poison, float %i.hg, i64 0
  %i.hj = shufflevector <2 x float> %i.hi, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.hk = fmul <2 x float> %i.hj, %i.hh
  %i.hl = load <2 x float>, ptr %1, align 4, !tbaa !29
  %i.hm = fadd <2 x float> %i.hk, %i.hl
  store <2 x float> %i.hm, ptr %i.au, align 4
  %i.hn = load <2 x float>, ptr %i.as, align 4, !tbaa !29 ; 2 uses
  %i.ho = insertelement <2 x float> poison, float %i.hf, i64 0
  %i.hp = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hq = fmul <2 x float> %i.hp, %i.hn           ; 2 uses
  %i.hr = load <2 x float>, ptr %1, align 4, !tbaa !29
  %i.hs = fadd <2 x float> %i.hq, %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store <2 x float> %i.hs, ptr %i.ht, align 4
  %i.hu = load <2 x float>, ptr %1, align 4, !tbaa !29
  %i.hv = fsub <2 x float> %i.hu, %i.hq
  %i.hw = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <2 x float> %i.hv, ptr %i.hw, align 4
  %i.hx = fmul <2 x float> %i.hj, %i.hn
  %i.hy = load <2 x float>, ptr %1, align 4, !tbaa !29
  %i.hz = fsub <2 x float> %i.hy, %i.hx
  %i.ia = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store <2 x float> %i.hz, ptr %i.ia, align 4
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.br ; 4 uses
  %i.ic = load <2 x float>, ptr %i.bs, align 4, !tbaa !29
  %i.id = fmul <2 x float> %i.hj, %i.ic
  %i.ie = load <2 x float>, ptr %i.ib, align 4, !tbaa !29
  %i.if = fadd <2 x float> %i.id, %i.ie
  %i.ig = shl nuw nsw i32 %i.g, 2
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.ih ; 4 uses
  store <2 x float> %i.if, ptr %i.ii, align 4
  %i.ij = load <2 x float>, ptr %i.bs, align 4, !tbaa !29 ; 2 uses
  %i.ik = fmul <2 x float> %i.hp, %i.ij           ; 2 uses
  %i.il = load <2 x float>, ptr %i.ib, align 4, !tbaa !29
  %i.im = fadd <2 x float> %i.ik, %i.il
  %i.in = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  store <2 x float> %i.im, ptr %i.in, align 4
  %i.io = load <2 x float>, ptr %i.ib, align 4, !tbaa !29
  %i.ip = fsub <2 x float> %i.io, %i.ik
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  store <2 x float> %i.ip, ptr %i.iq, align 4
  %i.ir = fmul <2 x float> %i.hj, %i.ij
  %i.is = load <2 x float>, ptr %i.ib, align 4, !tbaa !29
  %i.it = fsub <2 x float> %i.is, %i.ir
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  store <2 x float> %i.it, ptr %i.iu, align 4
  br label %.lr.ph553

.lr.ph553:                                        ; preds = %bb.u, %.thread529
  %i.iv = phi float [ %i.bv, %.thread529 ], [ %i.hf, %bb.u ] ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !92 ; 2 uses
  %i.iy = fadd float %i.j, %i.iv
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted = load ptr, ptr %i.iz, align 8, !tbaa !113
  %wide.trip.count580 = zext nneg i32 %i.h to i64
  %i.ja = insertelement <2 x float> poison, float %i.iy, i64 0
  %i.jb = shufflevector <2 x float> %i.ja, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jc = insertelement <2 x float> poison, float %i.iv, i64 0
  %i.jd = shufflevector <2 x float> %i.jc, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.v

.lr.ph555:                                        ; preds = %bb.x
  store ptr %i.lp, ptr %i.iz, align 8, !tbaa !113
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 10 uses
  %.pre594 = load ptr, ptr %i.je, align 8, !tbaa !242
  br label %bb.y

bb.v:                                             ; preds = %.lr.ph553, %bb.x
  %indvars.iv577 = phi i64 [ 0, %.lr.ph553 ], [ %indvars.iv.next578, %bb.x ] ; 2 uses
  %i.jf = phi ptr [ %.promoted, %.lr.ph553 ], [ %i.lp, %bb.x ] ; 9 uses
  %.0425550 = phi i32 [ %i.ix, %.lr.ph553 ], [ %spec.select, %bb.x ] ; 3 uses
  %indvars.iv.next578 = add nuw nsw i64 %indvars.iv577, 1 ; 4 uses
  %i.jg = icmp eq i64 %indvars.iv.next578, %i.at  ; 2 uses
  %i.jh = trunc nuw nsw i64 %indvars.iv.next578 to i32
  %i.ji = select i1 %i.jg, i32 0, i32 %i.jh       ; 2 uses
  %i.jj = add i32 %.0425550, 4
  %spec.select = select i1 %i.jg, i32 %i.ix, i32 %i.jj ; 3 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv577
  %i.jl = zext nneg i32 %i.ji to i64              ; 2 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.jl
  %i.jn = load <2 x float>, ptr %i.jk, align 4, !tbaa !29
  %i.jo = load <2 x float>, ptr %i.jm, align 4, !tbaa !29
  %i.jp = fadd <2 x float> %i.jn, %i.jo
  %i.jq = fmul <2 x float> %i.jp, splat (float 5.000000e-01) ; 5 uses
  %foldExtExtBinop619 = fmul <2 x float> %i.jq, %i.jq
  %i.jr = extractelement <2 x float> %foldExtExtBinop619, i64 1
  %i.js = extractelement <2 x float> %i.jq, i64 0 ; 2 uses
  %i.jt = tail call float @llvm.fmuladd.f32(float %i.js, float %i.js, float %i.jr) ; 2 uses
  %i.ju = fcmp ogt float %i.jt, f0x358637BD
  br i1 %i.ju, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.jv = fdiv float 1.000000e+00, %i.jt          ; 2 uses
  %i.jw = fcmp ogt float %i.jv, 1.000000e+02
  %spec.store.select6 = select i1 %i.jw, float 1.000000e+02, float %i.jv
  %i.jx = insertelement <2 x float> poison, float %spec.store.select6, i64 0
  %i.jy = shufflevector <2 x float> %i.jx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jz = fmul <2 x float> %i.jq, %i.jy
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ka = phi <2 x float> [ %i.jz, %bb.w ], [ %i.jq, %bb.v ] ; 2 uses
  %i.kb = fmul <2 x float> %i.jb, %i.ka           ; 2 uses
  %i.kc = shl nsw i32 %i.ji, 2
  %i.kd = zext nneg i32 %i.kc to i64
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.kd ; 4 uses
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.jl ; 4 uses
  %i.kg = load <2 x float>, ptr %i.kf, align 4, !tbaa !29
  %i.kh = fadd <2 x float> %i.kb, %i.kg
  store <2 x float> %i.kh, ptr %i.ke, align 4, !tbaa !29
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kj = fmul <2 x float> %i.jd, %i.ka           ; 2 uses
  %i.kk = load <2 x float>, ptr %i.kf, align 4, !tbaa !29
  %i.kl = fadd <2 x float> %i.kj, %i.kk
  store <2 x float> %i.kl, ptr %i.ki, align 4, !tbaa !29
  %i.km = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %i.kn = load <2 x float>, ptr %i.kf, align 4, !tbaa !29
  %i.ko = fsub <2 x float> %i.kn, %i.kj
end_hunk_0
begin_hunk_1_@_ZL40ImGui_ImplStbTrueType_FontBakedLoadGlyphP11ImFontAtlasP12ImFontConfigP11ImFontBakedPvtP11ImFontGlyphPf:bb.a
  %indvars.iv.i24.i.i.i = phi i64 [ %indvars.iv.next.i25.i.i.i, %.lr.ph.i23.i.i.i ], [ %indvars.iv.i24.i.i.i.ph, %.lr.ph.i23.i.i.i.preheader ] ; 2 uses
  %.0874.i.i.i.i = phi i32 [ %i.ku, %.lr.ph.i23.i.i.i ], [ %.0874.i.i.i.i.ph, %.lr.ph.i23.i.i.i.preheader ]
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv.i24.i.i.i
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !259
  %i.ku = add nsw i32 %i.kt, %.0874.i.i.i.i       ; 2 uses
  %indvars.iv.next.i25.i.i.i = add nuw nsw i64 %indvars.iv.i24.i.i.i, 1 ; 2 uses
  %exitcond.not.i26.i.i.i = icmp eq i64 %indvars.iv.next.i25.i.i.i, %i.gh
  br i1 %exitcond.not.i26.i.i.i, label %._crit_edge.i27.i.i.i, label %.lr.ph.i23.i.i.i, !llvm.loop !763

._crit_edge.i27.i.i.i:                            ; preds = %.lr.ph.i23.i.i.i, %middle.block331
  %.lcssa319 = phi i32 [ %i.kr, %middle.block331 ], [ %i.ku, %.lr.ph.i23.i.i.i ]
  %i.kv = fneg float %i.ax
  %i.kw = add nsw i32 %.lcssa319, 1
  %i.kx = sext i32 %i.kw to i64
  %i.ky = mul nsw i64 %i.kx, 20
  %i.kz = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.ky) ; 9 uses
  %i.la = icmp eq ptr %i.kz, null
  br i1 %i.la, label %_ZL16stbtt__rasterizeP13stbtt__bitmapP12stbtt__pointPiiffffiiiPv.exit.i.i.i, label %.lr.ph16.i.i.i.i.preheader

.lr.ph16.i.i.i.i.preheader:                       ; preds = %._crit_edge.i27.i.i.i
  %i.lb = insertelement <4 x float> poison, float %i.av, i64 0
  %i.lc = insertelement <4 x float> %i.lb, float %i.kv, i64 1
  %i.ld = shufflevector <4 x float> %i.lc, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %.lr.ph16.i.i.i.i

.lr.ph16.i.i.i.i:                                 ; preds = %.lr.ph16.i.i.i.i.preheader, %._crit_edge11.i.i.i.i
  %indvars.iv27.i.i.i.i = phi i64 [ %indvars.iv.next28.i.i.i.i, %._crit_edge11.i.i.i.i ], [ 0, %.lr.ph16.i.i.i.i.preheader ] ; 2 uses
  %.08315.i.i.i.i = phi i32 [ %i.li, %._crit_edge11.i.i.i.i ], [ 0, %.lr.ph16.i.i.i.i.preheader ] ; 2 uses
  %.18813.i.i.i.i = phi i32 [ %.2.lcssa.i.i.i.i, %._crit_edge11.i.i.i.i ], [ 0, %.lr.ph16.i.i.i.i.preheader ] ; 2 uses
  %i.le = sext i32 %.08315.i.i.i.i to i64
  %i.lf = getelementptr inbounds [8 x i8], ptr %i.ig, i64 %i.le ; 4 uses
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv27.i.i.i.i ; 2 uses
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !259 ; 4 uses
  %i.li = add nsw i32 %i.lh, %.08315.i.i.i.i
  %i.lj = icmp sgt i32 %i.lh, 0
  br i1 %i.lj, label %.lr.ph10.preheader.i.i.i.i, label %._crit_edge11.i.i.i.i

.lr.ph10.preheader.i.i.i.i:                       ; preds = %.lr.ph16.i.i.i.i
  %i.lk = add nsw i32 %i.lh, -1
  br label %.lr.ph10.i.i.i.i

.lr.ph10.i.i.i.i:                                 ; preds = %.lr.ph10._crit_edge.i.i.i.i, %.lr.ph10.preheader.i.i.i.i
  %i.ll = phi i32 [ %i.lh, %.lr.ph10.preheader.i.i.i.i ], [ %i.mh, %.lr.ph10._crit_edge.i.i.i.i ]
  %indvars.iv24.i28.i.i.i = phi i64 [ 0, %.lr.ph10.preheader.i.i.i.i ], [ %indvars.iv.next25.i29.i.i.i, %.lr.ph10._crit_edge.i.i.i.i ] ; 5 uses
  %.0857.i.i.i.i = phi i32 [ %i.lk, %.lr.ph10.preheader.i.i.i.i ], [ %.pre-phi.i.i.i.i, %.lr.ph10._crit_edge.i.i.i.i ]
  %.26.i.i.i.i = phi i32 [ %.18813.i.i.i.i, %.lr.ph10.preheader.i.i.i.i ], [ %.3.i.i.i.i, %.lr.ph10._crit_edge.i.i.i.i ] ; 3 uses
  %i.lm = sext i32 %.0857.i.i.i.i to i64          ; 3 uses
  %i.ln = getelementptr inbounds [8 x i8], ptr %i.lf, i64 %i.lm
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 4
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !522 ; 2 uses
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %indvars.iv24.i28.i.i.i
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 4
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !522 ; 2 uses
  %i.lt = fcmp oeq float %i.lp, %i.ls
  br i1 %i.lt, label %.lr.ph10._crit_edge.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph10.i.i.i.i
  %i.lu = sext i32 %.26.i.i.i.i to i64
  %i.lv = getelementptr inbounds [20 x i8], ptr %i.kz, i64 %i.lu ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  %i.lx = fcmp ogt float %i.lp, %i.ls             ; 3 uses
  %spec.store.select.i.i.i.i = zext i1 %i.lx to i32
  store i32 %spec.store.select.i.i.i.i, ptr %i.lw, align 4
  %i.ly = select i1 %i.lx, i64 %i.lm, i64 %indvars.iv24.i28.i.i.i
  %i.lz = getelementptr inbounds [8 x i8], ptr %i.lf, i64 %i.ly
  %i.ma = select i1 %i.lx, i64 %indvars.iv24.i28.i.i.i, i64 %i.lm
  %i.mb = getelementptr inbounds [8 x i8], ptr %i.lf, i64 %i.ma
  %i.mc = load <2 x float>, ptr %i.lz, align 4, !tbaa !29
  %i.md = load <2 x float>, ptr %i.mb, align 4, !tbaa !29
  %i.me = shufflevector <2 x float> %i.mc, <2 x float> %i.md, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.mf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.me, <4 x float> %i.ld, <4 x float> zeroinitializer)
  store <4 x float> %i.mf, ptr %i.lv, align 4, !tbaa !29
  %i.mg = add nsw i32 %.26.i.i.i.i, 1
  %.pre.i.i.i.i = load i32, ptr %i.lg, align 4, !tbaa !259
  br label %.lr.ph10._crit_edge.i.i.i.i

.lr.ph10._crit_edge.i.i.i.i:                      ; preds = %bb.ad, %.lr.ph10.i.i.i.i
  %i.mh = phi i32 [ %.pre.i.i.i.i, %bb.ad ], [ %i.ll, %.lr.ph10.i.i.i.i ] ; 2 uses
  %.3.i.i.i.i = phi i32 [ %i.mg, %bb.ad ], [ %.26.i.i.i.i, %.lr.ph10.i.i.i.i ] ; 2 uses
  %.pre-phi.i.i.i.i = trunc i64 %indvars.iv24.i28.i.i.i to i32
  %indvars.iv.next25.i29.i.i.i = add nuw nsw i64 %indvars.iv24.i28.i.i.i, 1 ; 2 uses
  %i.mi = sext i32 %i.mh to i64
  %i.mj = icmp slt i64 %indvars.iv.next25.i29.i.i.i, %i.mi
  br i1 %i.mj, label %.lr.ph10.i.i.i.i, label %._crit_edge11.i.i.i.i, !llvm.loop !764

._crit_edge11.i.i.i.i:                            ; preds = %.lr.ph10._crit_edge.i.i.i.i, %.lr.ph16.i.i.i.i
  %.2.lcssa.i.i.i.i = phi i32 [ %.18813.i.i.i.i, %.lr.ph16.i.i.i.i ], [ %.3.i.i.i.i, %.lr.ph10._crit_edge.i.i.i.i ] ; 5 uses
  %indvars.iv.next28.i.i.i.i = add nuw nsw i64 %indvars.iv27.i.i.i.i, 1 ; 2 uses
  %exitcond31.not.i.i.i.i = icmp eq i64 %indvars.iv.next28.i.i.i.i, %i.gh
  br i1 %exitcond31.not.i.i.i.i, label %._crit_edge17.i.i.i.i, label %.lr.ph16.i.i.i.i, !llvm.loop !765

._crit_edge17.i.i.i.i:                            ; preds = %._crit_edge11.i.i.i.i
  call fastcc void @_ZL27stbtt__sort_edges_quicksortP11stbtt__edgei(ptr noundef nonnull %i.kz, i32 noundef %.2.lcssa.i.i.i.i)
  %i.mk = icmp sgt i32 %.2.lcssa.i.i.i.i, 1
  br i1 %i.mk, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZL17stbtt__sort_edgesP11stbtt__edgei.exit.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %._crit_edge17.i.i.i.i
  %wide.trip.count.i.i.i.i.i.i = zext nneg i32 %.2.lcssa.i.i.i.i to i64
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ah, %.lr.ph.preheader.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i, %bb.ah ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i)
  %i.ml = getelementptr inbounds nuw [20 x i8], ptr %i.kz, i64 %indvars.iv.i.i.i.i.i.i ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ml, i64 4
  %.sroa.4.0.copyload.i.i.i.i.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 4, !tbaa !29
  %i.mm = load <2 x float>, ptr %i.ml, align 4, !tbaa !29
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !791
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i.i.i.i.i.i
  %indvars.iv31.i.i.i.i.i.i = phi i64 [ %indvars.iv.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv.next32.i.i.i.i.i.i, %bb.af ] ; 4 uses
  %i.mn = getelementptr [20 x i8], ptr %i.kz, i64 %indvars.iv31.i.i.i.i.i.i ; 3 uses
  %i.mo = getelementptr i8, ptr %i.mn, i64 -16
  %i.mp = load float, ptr %i.mo, align 4, !tbaa !524
  %i.mq = fcmp olt float %.sroa.4.0.copyload.i.i.i.i.i.i, %i.mp
  br i1 %i.mq, label %bb.af, label %.thread.split.loop.exit.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.mr = getelementptr i8, ptr %i.mn, i64 -20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.mn, ptr noundef nonnull align 4 dereferenceable(20) %i.mr, i64 20, i1 false), !tbaa.struct !294
  %indvars.iv.next32.i.i.i.i.i.i = add nsw i64 %indvars.iv31.i.i.i.i.i.i, -1
  %i.ms = icmp sgt i64 %indvars.iv31.i.i.i.i.i.i, 1
  br i1 %i.ms, label %bb.ae, label %.thread.i.i.i.i.i.i

.thread.split.loop.exit.i.i.i.i.i.i:              ; preds = %bb.ae
  %i.mt = trunc nuw nsw i64 %indvars.iv31.i.i.i.i.i.i to i32
  br label %.thread.i.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %bb.af, %.thread.split.loop.exit.i.i.i.i.i.i
  %.021.lcssa.i.i.i.i.i.i = phi i32 [ %i.mt, %.thread.split.loop.exit.i.i.i.i.i.i ], [ 0, %bb.af ] ; 2 uses
  %i.mu = zext i32 %.021.lcssa.i.i.i.i.i.i to i64
  %.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.i.i.i.i.i.i, %i.mu
  br i1 %.not.i.i.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.thread.i.i.i.i.i.i
  %i.mv = sext i32 %.021.lcssa.i.i.i.i.i.i to i64
  %i.mw = getelementptr inbounds [20 x i8], ptr %i.kz, i64 %i.mv ; 2 uses
  store <2 x float> %i.mm, ptr %i.mw, align 4, !tbaa !29
  %.sroa.5.0..sroa_idx26.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx26.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !791
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.thread.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i)
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %wide.trip.count.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZL17stbtt__sort_edgesP11stbtt__edgei.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !766

_ZL17stbtt__sort_edgesP11stbtt__edgei.exit.i.i.i.i: ; preds = %bb.ah, %._crit_edge17.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr null, ptr %i.c, align 8, !tbaa !793
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #38
  %i.mx = icmp sgt i32 %i.cr, 64
  br i1 %i.mx, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZL17stbtt__sort_edgesP11stbtt__edgei.exit.i.i.i.i
  %i.my = shl nuw nsw i32 %i.cr, 1
  %i.mz = or disjoint i32 %i.my, 1
  %i.na = zext nneg i32 %i.mz to i64
  %i.nb = shl nuw nsw i64 %i.na, 2
  %i.nc = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.nb)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZL17stbtt__sort_edgesP11stbtt__edgei.exit.i.i.i.i
  %.080.i.i.i.i.i = phi ptr [ %i.nc, %bb.ai ], [ %i.d, %_ZL17stbtt__sort_edgesP11stbtt__edgei.exit.i.i.i.i ] ; 43 uses
  %i.nd = sext i32 %i.cr to i64                   ; 3 uses
  %i.ne = getelementptr inbounds [4 x i8], ptr %.080.i.i.i.i.i, i64 %i.nd ; 9 uses
  %i.nf = add nsw i32 %i.eh, %i.cu
  %i.ng = sitofp i32 %i.nf to float
  %i.nh = fadd float %i.ng, 1.000000e+00
  %i.ni = sext i32 %.2.lcssa.i.i.i.i to i64
  %i.nj = getelementptr inbounds [20 x i8], ptr %i.kz, i64 %i.ni
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 4
  store float %i.nh, ptr %i.nk, align 4, !tbaa !524
  %i.nl = icmp sgt i32 %i.cu, 0
  br i1 %i.nl, label %.lr.ph33.i.i.i.i.i, label %_ZL20stbtt__hheap_cleanupP12stbtt__hheapPv.exit.i.i.i.i.i

.lr.ph33.i.i.i.i.i:                               ; preds = %bb.aj
  %i.nm = sitofp i32 %i.eg to float
  %i.nn = icmp ne i32 %i.eh, 0
  %i.no = getelementptr inbounds nuw i8, ptr %i.ne, i64 4 ; 2 uses
  %i.np = shl nsw i64 %i.nd, 2
  %i.nq = add nsw i32 %i.cr, 1
  %i.nr = sext i32 %i.nq to i64
  %i.ns = shl nsw i64 %i.nr, 2
  %i.nt = sitofp i32 %i.cr to float               ; 3 uses
  %i.nu = icmp sgt i32 %i.cr, 0                   ; 2 uses
  %wide.trip.count.i.i92.i.i.i.i = zext nneg i32 %i.cr to i64
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge25.i.i.i.i.i, %.lr.ph33.i.i.i.i.i
  %.0..i.i.i.i.i = phi ptr [ null, %.lr.ph33.i.i.i.i.i ], [ %.0..0..0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i.i, %._crit_edge25.i.i.i.i.i ] ; 2 uses
  %.031.i.i.i.i.i = phi ptr [ %i.kz, %.lr.ph33.i.i.i.i.i ], [ %.1.lcssa.i.i.i.i.i, %._crit_edge25.i.i.i.i.i ] ; 3 uses
  %.07530.i.i.i.i.i = phi i32 [ %i.eh, %.lr.ph33.i.i.i.i.i ], [ %i.axe, %._crit_edge25.i.i.i.i.i ] ; 2 uses
  %.07629.i.i.i.i.i = phi i32 [ 0, %.lr.ph33.i.i.i.i.i ], [ %i.axf, %._crit_edge25.i.i.i.i.i ] ; 3 uses
  %.sroa.11.028.i.i.i.i.i = phi i32 [ 0, %.lr.ph33.i.i.i.i.i ], [ %.sroa.11.1.lcssa.i.i.i.i.i, %._crit_edge25.i.i.i.i.i ] ; 2 uses
  %.sroa.7.027.i.i.i.i.i = phi ptr [ null, %.lr.ph33.i.i.i.i.i ], [ %.sroa.7.3.lcssa.i.i.i.i.i, %._crit_edge25.i.i.i.i.i ] ; 2 uses
  %.sroa.0.026.i.i.i.i.i = phi ptr [ null, %.lr.ph33.i.i.i.i.i ], [ %.sroa.0.1.lcssa.i.i.i.i.i, %._crit_edge25.i.i.i.i.i ] ; 2 uses
  %i.nv = sitofp i32 %.07530.i.i.i.i.i to float   ; 66 uses
  %i.nw = fadd float %i.nv, 1.000000e+00          ; 75 uses
  call void @llvm.memset.p0.i64(ptr align 4 %.080.i.i.i.i.i, i8 0, i64 %i.np, i1 false)
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ne, i8 0, i64 %i.ns, i1 false)
  %.not908.i.i.i.i.i = icmp eq ptr %.0..i.i.i.i.i, null
  br i1 %.not908.i.i.i.i.i, label %.preheader7.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.preheader7.i.i.i.i.i:                            ; preds = %bb.am, %bb.ak
  %.sroa.7.1.lcssa.i.i.i.i.i = phi ptr [ %.sroa.7.027.i.i.i.i.i, %bb.ak ], [ %.sroa.7.2.i.i.i.i.i, %bb.am ] ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %.031.i.i.i.i.i, i64 4 ; 2 uses
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !524 ; 2 uses
  %i.nz = fcmp ugt float %i.ny, %i.nw
  br i1 %i.nz, label %._crit_edge.i.i.i.i.i, label %.lr.ph15.i.i.i.i.i

.lr.ph15.i.i.i.i.i:                               ; preds = %.preheader7.i.i.i.i.i
  %i.oa = icmp eq i32 %.07629.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i = and i1 %i.nn, %i.oa
  br label %bb.an

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ak, %bb.am
  %i.ob = phi ptr [ %i.oh, %bb.am ], [ %.0..i.i.i.i.i, %bb.ak ] ; 6 uses
  %.07810.i.i.i.i.i = phi ptr [ %.179.i.i.i.i.i, %bb.am ], [ %i.c, %bb.ak ] ; 2 uses
  %.sroa.7.19.i.i.i.i.i = phi ptr [ %.sroa.7.2.i.i.i.i.i, %bb.am ], [ %.sroa.7.027.i.i.i.i.i, %bb.ak ] ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 28
  %i.od = load float, ptr %i.oc, align 4, !tbaa !795
  %i.oe = fcmp ugt float %i.od, %i.nv
  br i1 %i.oe, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.of = load ptr, ptr %i.ob, align 8, !tbaa !796
  store ptr %i.of, ptr %.07810.i.i.i.i.i, align 8, !tbaa !793
  %i.og = getelementptr inbounds nuw i8, ptr %i.ob, i64 20
  store float 0.000000e+00, ptr %i.og, align 4, !tbaa !797
  store ptr %.sroa.7.19.i.i.i.i.i, ptr %i.ob, align 8, !tbaa !246
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph.i.i.i.i.i
  %.sroa.7.2.i.i.i.i.i = phi ptr [ %.sroa.7.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ob, %bb.al ] ; 2 uses
  %.179.i.i.i.i.i = phi ptr [ %i.ob, %.lr.ph.i.i.i.i.i ], [ %.07810.i.i.i.i.i, %bb.al ] ; 2 uses
  %i.oh = load ptr, ptr %.179.i.i.i.i.i, align 8, !tbaa !793 ; 2 uses
  %.not90.i.i.i.i.i = icmp eq ptr %i.oh, null
  br i1 %.not90.i.i.i.i.i, label %.preheader7.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !767

bb.an:                                            ; preds = %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i, %.lr.ph15.i.i.i.i.i
  %i.oi = phi float [ %i.ny, %.lr.ph15.i.i.i.i.i ], [ %i.px, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ] ; 3 uses
  %i.oj = phi ptr [ %i.nx, %.lr.ph15.i.i.i.i.i ], [ %i.pw, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ]
  %.114.i.i.i.i.i = phi ptr [ %.031.i.i.i.i.i, %.lr.ph15.i.i.i.i.i ], [ %i.pv, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ] ; 6 uses
  %.sroa.11.113.i.i.i.i.i = phi i32 [ %.sroa.11.028.i.i.i.i.i, %.lr.ph15.i.i.i.i.i ], [ %.sroa.11.4.i.i.i.i.i, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ] ; 4 uses
  %.sroa.7.312.i.i.i.i.i = phi ptr [ %.sroa.7.1.lcssa.i.i.i.i.i, %.lr.ph15.i.i.i.i.i ], [ %.sroa.7.6.i.i.i.i.i, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ] ; 4 uses
  %.sroa.0.111.i.i.i.i.i = phi ptr [ %.sroa.0.026.i.i.i.i.i, %.lr.ph15.i.i.i.i.i ], [ %.sroa.0.5.i.i.i.i.i, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ] ; 5 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.114.i.i.i.i.i, i64 12 ; 2 uses
  %i.ol = load float, ptr %i.ok, align 4, !tbaa !798 ; 3 uses
  %i.om = fcmp une float %i.oi, %i.ol
  br i1 %i.om, label %bb.ao, label %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.7.312.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.on = load ptr, ptr %.sroa.7.312.i.i.i.i.i, align 8, !tbaa !246
  br label %bb.at

bb.aq:                                            ; preds = %bb.ao
  %i.oo = icmp eq i32 %.sroa.11.113.i.i.i.i.i, 0
  br i1 %i.oo, label %bb.ar, label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.aq
  %i.op = add nsw i32 %.sroa.11.113.i.i.i.i.i, -1
  br label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.oq = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 25608) ; 3 uses
  %i.or = icmp eq ptr %i.oq, null
  br i1 %i.or, label %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %bb.ar
  store ptr %.sroa.0.111.i.i.i.i.i, ptr %i.oq, align 8, !tbaa !801
  %.pre40.pre.i.i.i.i.i = load float, ptr %i.ok, align 4, !tbaa !798
  %.pre41.pre.i.i.i.i.i = load float, ptr %i.oj, align 4, !tbaa !524
  br label %bb.as

bb.as:                                            ; preds = %.thread.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i
  %.pre41.i.i.i.i.i = phi float [ %.pre41.pre.i.i.i.i.i, %.thread.i.i.i.i.i.i.i ], [ %i.oi, %._crit_edge.i.i.i.i.i.i.i ]
  %.pre40.i.i.i.i.i = phi float [ %.pre40.pre.i.i.i.i.i, %.thread.i.i.i.i.i.i.i ], [ %i.ol, %._crit_edge.i.i.i.i.i.i.i ]
  %.sroa.0.2.i.i.i.i.i = phi ptr [ %i.oq, %.thread.i.i.i.i.i.i.i ], [ %.sroa.0.111.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %i.os = phi i32 [ 799, %.thread.i.i.i.i.i.i.i ], [ %i.op, %._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i.i.i.i.i, i64 8
  %i.ou = zext nneg i32 %i.os to i64
  %i.ov = shl nuw nsw i64 %i.ou, 5
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ot, i64 %i.ov
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ap
  %i.ox = phi float [ %.pre41.i.i.i.i.i, %bb.as ], [ %i.oi, %bb.ap ] ; 3 uses
  %i.oy = phi float [ %.pre40.i.i.i.i.i, %bb.as ], [ %i.ol, %bb.ap ] ; 3 uses
  %.sroa.0.3.i.i.i.i.i = phi ptr [ %.sroa.0.2.i.i.i.i.i, %bb.as ], [ %.sroa.0.111.i.i.i.i.i, %bb.ap ]
  %.sroa.7.4.i.i.i.i.i = phi ptr [ null, %bb.as ], [ %i.on, %bb.ap ]
  %.sroa.11.2.i.i.i.i.i = phi i32 [ %i.os, %bb.as ], [ %.sroa.11.113.i.i.i.i.i, %bb.ap ]
  %.1.i.ph.i.i.i.i.i.i = phi ptr [ %i.ow, %bb.as ], [ %.sroa.7.312.i.i.i.i.i, %bb.ap ] ; 9 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.114.i.i.i.i.i, i64 8
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !802
  %i.pb = load float, ptr %.114.i.i.i.i.i, align 4, !tbaa !803 ; 2 uses
  %i.pc = fsub float %i.pa, %i.pb
  %i.pd = fsub float %i.oy, %i.ox
  %i.pe = fdiv float %i.pc, %i.pd                 ; 4 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i.i, i64 12
  store float %i.pe, ptr %i.pf, align 4, !tbaa !804
  %i.pg = fcmp une float %i.pe, 0.000000e+00
  %i.ph = fdiv float 1.000000e+00, %i.pe
  %i.pi = select i1 %i.pg, float %i.ph, float 0.000000e+00
  %i.pj = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i.i, i64 16
  store float %i.pi, ptr %i.pj, align 8, !tbaa !805
  %i.pk = fsub float %i.nv, %i.ox
  %i.pl = call float @llvm.fmuladd.f32(float %i.pe, float %i.pk, float %i.pb)
  %i.pm = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i.i, i64 8
  %i.pn = fsub float %i.pl, %i.nm
  store float %i.pn, ptr %i.pm, align 8, !tbaa !806
  %i.po = getelementptr inbounds nuw i8, ptr %.114.i.i.i.i.i, i64 16
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !807
  %.not28.i.i.i.i.i.i = icmp eq i32 %i.pp, 0
  %i.pq = select i1 %.not28.i.i.i.i.i.i, float -1.000000e+00, float 1.000000e+00
  %i.pr = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i.i, i64 20
  store float %i.pq, ptr %i.pr, align 4, !tbaa !797
  %i.ps = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i.i, i64 24
  store float %i.ox, ptr %i.ps, align 8, !tbaa !808
  %i.pt = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i.i, i64 28 ; 2 uses
  store float %i.oy, ptr %i.pt, align 4, !tbaa !795
  store ptr null, ptr %.1.i.ph.i.i.i.i.i.i, align 8, !tbaa !796
  %i.pu = fcmp olt float %i.oy, %i.nv
  %or.cond136.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i, i1 %i.pu, i1 false
  br i1 %or.cond136.i.i.i.i.i, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store float %i.nv, ptr %i.pt, align 4, !tbaa !795
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !793
  store ptr %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i.i, ptr %.1.i.ph.i.i.i.i.i.i, align 8, !tbaa !796
  store ptr %.1.i.ph.i.i.i.i.i.i, ptr %i.c, align 8, !tbaa !793
  br label %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i

_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i: ; preds = %bb.av, %bb.ar, %bb.an
  %.sroa.0.5.i.i.i.i.i = phi ptr [ %.sroa.0.111.i.i.i.i.i, %bb.an ], [ %.sroa.0.3.i.i.i.i.i, %bb.av ], [ %.sroa.0.111.i.i.i.i.i, %bb.ar ] ; 2 uses
  %.sroa.7.6.i.i.i.i.i = phi ptr [ %.sroa.7.312.i.i.i.i.i, %bb.an ], [ %.sroa.7.4.i.i.i.i.i, %bb.av ], [ null, %bb.ar ] ; 2 uses
  %.sroa.11.4.i.i.i.i.i = phi i32 [ %.sroa.11.113.i.i.i.i.i, %bb.an ], [ %.sroa.11.2.i.i.i.i.i, %bb.av ], [ 0, %bb.ar ] ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %.114.i.i.i.i.i, i64 20 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %.114.i.i.i.i.i, i64 24 ; 2 uses
  %i.px = load float, ptr %i.pw, align 4, !tbaa !524 ; 2 uses
  %i.py = fcmp ugt float %i.px, %i.nw
  br i1 %i.py, label %._crit_edge.i.i.i.i.i, label %bb.an, !llvm.loop !768

._crit_edge.i.i.i.i.i:                            ; preds = %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i, %.preheader7.i.i.i.i.i
  %.sroa.0.1.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.026.i.i.i.i.i, %.preheader7.i.i.i.i.i ], [ %.sroa.0.5.i.i.i.i.i, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ] ; 3 uses
  %.sroa.7.3.lcssa.i.i.i.i.i = phi ptr [ %.sroa.7.1.lcssa.i.i.i.i.i, %.preheader7.i.i.i.i.i ], [ %.sroa.7.6.i.i.i.i.i, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ]
  %.sroa.11.1.lcssa.i.i.i.i.i = phi i32 [ %.sroa.11.028.i.i.i.i.i, %.preheader7.i.i.i.i.i ], [ %.sroa.11.4.i.i.i.i.i, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ]
  %.1.lcssa.i.i.i.i.i = phi ptr [ %.031.i.i.i.i.i, %.preheader7.i.i.i.i.i ], [ %i.pv, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ]
  %.0..0..0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !793 ; 4 uses
  %.not91.i.i.i.i.i = icmp eq ptr %.0..0..0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i.i, null ; 2 uses
  br i1 %.not91.i.i.i.i.i, label %_ZL28stbtt__fill_active_edges_newPfS_iP18stbtt__active_edgef.exit.i.i.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.pz = fcmp oeq float %i.nw, %i.nv             ; 3 uses
  %i.qa = fsub float %i.nw, %i.nv                 ; 4 uses
  %i.qb = insertelement <2 x float> poison, float %i.nv, i64 0
  %i.qc = shufflevector <2 x float> %i.qb, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.ax

bb.ax:                                            ; preds = %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i, %bb.aw
  %.0295473.i.i.i.i.i.i = phi ptr [ %.0..0..0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i.i, %bb.aw ], [ %i.awj, %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i ] ; 19 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 8
  %i.qe = load <2 x float>, ptr %i.qd, align 8, !tbaa !29 ; 10 uses
  %i.qf = extractelement <2 x float> %i.qe, i64 0 ; 40 uses
  %i.qg = extractelement <2 x float> %i.qe, i64 1 ; 2 uses
  %i.qh = fcmp oeq float %i.qg, 0.000000e+00
  br i1 %i.qh, label %bb.ay, label %bb.cg

bb.ay:                                            ; preds = %bb.ax
  %i.qi = fcmp olt float %i.qf, %i.nt
  br i1 %i.qi, label %bb.az, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

bb.az:                                            ; preds = %bb.ay
  %i.qj = fcmp ult float %i.qf, 0.000000e+00
  br i1 %i.qj, label %bb.bv, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.qk = fptosi float %i.qf to i32               ; 6 uses
  br i1 %i.pz, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ql = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !795 ; 4 uses
  %i.qn = fcmp olt float %i.qm, %i.nv
  br i1 %i.qn, label %bb.bl, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.qo = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 24
  %i.qp = load float, ptr %i.qo, align 8, !tbaa !808 ; 4 uses
  %i.qq = fcmp olt float %i.nw, %i.qp
  br i1 %i.qq, label %bb.bl, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.qr = fcmp ogt float %i.qp, %i.nv
  br i1 %i.qr, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %foldExtExtBinop = fsub <2 x float> %i.qe, %i.qe
  %i.qs = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.qt = fsub float %i.qp, %i.nv
  %i.qu = fmul float %i.qs, %i.qt
  %i.qv = fdiv float %i.qu, %i.qa
  %i.qw = fadd float %i.qf, %i.qv
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.057.i.i.i.i.i.i.i = phi float [ %i.qw, %bb.be ], [ %i.qf, %bb.bd ] ; 4 uses
  %.056.i.i.i.i.i.i.i = phi float [ %i.qp, %bb.be ], [ %i.nv, %bb.bd ] ; 3 uses
  %i.qx = fcmp ogt float %i.nw, %i.qm
  br i1 %i.qx, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.qy = fsub float %i.qf, %.057.i.i.i.i.i.i.i
  %i.qz = fsub float %i.qm, %i.nw
  %i.ra = fmul float %i.qz, %i.qy
  %i.rb = fsub float %i.nw, %.056.i.i.i.i.i.i.i
  %i.rc = fdiv float %i.ra, %i.rb
  %i.rd = fadd float %i.qf, %i.rc
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.055.i.i.i.i.i.i.i = phi float [ %i.rd, %bb.bg ], [ %i.qf, %bb.bf ] ; 3 uses
  %.0.i.i.i.i.i.i.i = phi float [ %i.qm, %bb.bg ], [ %i.nw, %bb.bf ] ; 2 uses
  %i.re = sitofp i32 %i.qk to float               ; 4 uses
  %i.rf = fcmp ugt float %.057.i.i.i.i.i.i.i, %i.re
  %i.rg = fcmp ugt float %.055.i.i.i.i.i.i.i, %i.re
  %or.cond64.i.i.i.i.i.i.i = select i1 %i.rf, i1 true, i1 %i.rg
  br i1 %or.cond64.i.i.i.i.i.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.rh = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 20
  %i.ri = load float, ptr %i.rh, align 4, !tbaa !797
  %i.rj = fsub float %.0.i.i.i.i.i.i.i, %.056.i.i.i.i.i.i.i
  %7 = sext i32 %i.qk to i64
  %i.rk = getelementptr inbounds [4 x i8], ptr %.080.i.i.i.i.i, i64 %7 ; 2 uses
  %i.rl = load float, ptr %i.rk, align 4, !tbaa !29
  %i.rm = call float @llvm.fmuladd.f32(float %i.ri, float %i.rj, float %i.rl)
  store float %i.rm, ptr %i.rk, align 4, !tbaa !29
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bh
  %i.rn = add nsw i32 %i.qk, 1
  %i.ro = sitofp i32 %i.rn to float               ; 2 uses
  %i.rp = fcmp ult float %.057.i.i.i.i.i.i.i, %i.ro
  %i.rq = fcmp ult float %.055.i.i.i.i.i.i.i, %i.ro
  %or.cond65.i.i.i.i.i.i.i = select i1 %i.rp, i1 true, i1 %i.rq
  br i1 %or.cond65.i.i.i.i.i.i.i, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.rr = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 20
  %i.rs = load float, ptr %i.rr, align 4, !tbaa !797
  %i.rt = fsub float %.0.i.i.i.i.i.i.i, %.056.i.i.i.i.i.i.i
  %i.ru = fmul float %i.rt, %i.rs
  %i.rv = fsub float %.057.i.i.i.i.i.i.i, %i.re
  %i.rw = fsub float %.055.i.i.i.i.i.i.i, %i.re
  %i.rx = fadd float %i.rv, %i.rw
  %i.ry = fmul float %i.rx, 5.000000e-01
  %i.rz = fsub float 1.000000e+00, %i.ry
  %8 = sext i32 %i.qk to i64
  %i.sa = getelementptr inbounds [4 x i8], ptr %.080.i.i.i.i.i, i64 %8 ; 2 uses
  %i.sb = load float, ptr %i.sa, align 4, !tbaa !29
  %i.sc = call float @llvm.fmuladd.f32(float %i.ru, float %i.rz, float %i.sb)
  store float %i.sc, ptr %i.sa, align 4, !tbaa !29
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bc, %bb.bb
  %i.sd = add nsw i32 %i.qk, 1                    ; 3 uses
  %i.se = load float, ptr %i.ql, align 4, !tbaa !795 ; 4 uses
  %i.sf = fcmp olt float %i.se, %i.nv
  br i1 %i.sf, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.sg = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 24
  %i.sh = load float, ptr %i.sg, align 8, !tbaa !808 ; 4 uses
  %i.si = fcmp olt float %i.nw, %i.sh
  br i1 %i.si, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.sj = fcmp ogt float %i.sh, %i.nv
  br i1 %i.sj, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %foldExtExtBinop337 = fsub <2 x float> %i.qe, %i.qe
  %i.sk = extractelement <2 x float> %foldExtExtBinop337, i64 0
  %i.sl = fsub float %i.sh, %i.nv
  %i.sm = fmul float %i.sk, %i.sl
  %i.sn = fdiv float %i.sm, %i.qa
  %i.so = fadd float %i.qf, %i.sn
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.057.i350.i.i.i.i.i.i = phi float [ %i.so, %bb.bo ], [ %i.qf, %bb.bn ] ; 4 uses
  %.056.i351.i.i.i.i.i.i = phi float [ %i.sh, %bb.bo ], [ %i.nv, %bb.bn ] ; 3 uses
  %i.sp = fcmp ogt float %i.nw, %i.se
  br i1 %i.sp, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.sq = fsub float %i.qf, %.057.i350.i.i.i.i.i.i
  %i.sr = fsub float %i.se, %i.nw
  %i.ss = fmul float %i.sr, %i.sq
  %i.st = fsub float %i.nw, %.056.i351.i.i.i.i.i.i
  %i.su = fdiv float %i.ss, %i.st
  %i.sv = fadd float %i.qf, %i.su
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.055.i352.i.i.i.i.i.i = phi float [ %i.sv, %bb.bq ], [ %i.qf, %bb.bp ] ; 3 uses
  %.0.i353.i.i.i.i.i.i = phi float [ %i.se, %bb.bq ], [ %i.nw, %bb.bp ] ; 2 uses
  %i.sw = sitofp i32 %i.sd to float               ; 4 uses
  %i.sx = fcmp ugt float %.057.i350.i.i.i.i.i.i, %i.sw
  %i.sy = fcmp ugt float %.055.i352.i.i.i.i.i.i, %i.sw
  %or.cond64.i354.i.i.i.i.i.i = select i1 %i.sx, i1 true, i1 %i.sy
  br i1 %or.cond64.i354.i.i.i.i.i.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.sz = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 20
  %i.ta = load float, ptr %i.sz, align 4, !tbaa !797
  %i.tb = fsub float %.0.i353.i.i.i.i.i.i, %.056.i351.i.i.i.i.i.i
  %9 = sext i32 %i.sd to i64
  %i.tc = getelementptr inbounds [4 x i8], ptr %i.ne, i64 %9 ; 2 uses
  %i.td = load float, ptr %i.tc, align 4, !tbaa !29
  %i.te = call float @llvm.fmuladd.f32(float %i.ta, float %i.tb, float %i.td)
  store float %i.te, ptr %i.tc, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

bb.bt:                                            ; preds = %bb.br
  %i.tf = add nsw i32 %i.qk, 2
  %i.tg = sitofp i32 %i.tf to float               ; 2 uses
  %i.th = fcmp ult float %.057.i350.i.i.i.i.i.i, %i.tg
  %i.ti = fcmp ult float %.055.i352.i.i.i.i.i.i, %i.tg
  %or.cond65.i355.i.i.i.i.i.i = select i1 %i.th, i1 true, i1 %i.ti
  br i1 %or.cond65.i355.i.i.i.i.i.i, label %bb.bu, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

bb.bu:                                            ; preds = %bb.bt
  %i.tj = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 20
  %i.tk = load float, ptr %i.tj, align 4, !tbaa !797
  %i.tl = fsub float %.0.i353.i.i.i.i.i.i, %.056.i351.i.i.i.i.i.i
  %i.tm = fmul float %i.tl, %i.tk
  %i.tn = fsub float %.057.i350.i.i.i.i.i.i, %i.sw
  %i.to = fsub float %.055.i352.i.i.i.i.i.i, %i.sw
  %i.tp = fadd float %i.tn, %i.to
  %i.tq = fmul float %i.tp, 5.000000e-01
  %i.tr = fsub float 1.000000e+00, %i.tq
  %10 = sext i32 %i.sd to i64
  %i.ts = getelementptr inbounds [4 x i8], ptr %i.ne, i64 %10 ; 2 uses
  %i.tt = load float, ptr %i.ts, align 4, !tbaa !29
  %i.tu = call float @llvm.fmuladd.f32(float %i.tm, float %i.tr, float %i.tt)
  store float %i.tu, ptr %i.ts, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

bb.bv:                                            ; preds = %bb.az
  br i1 %i.pz, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.tv = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 28
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !795 ; 4 uses
  %i.tx = fcmp olt float %i.tw, %i.nv
  br i1 %i.tx, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ty = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 24
  %i.tz = load float, ptr %i.ty, align 8, !tbaa !808 ; 4 uses
  %i.ua = fcmp olt float %i.nw, %i.tz
  br i1 %i.ua, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ub = fcmp ogt float %i.tz, %i.nv
  br i1 %i.ub, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %foldExtExtBinop339 = fsub <2 x float> %i.qe, %i.qe
  %i.uc = extractelement <2 x float> %foldExtExtBinop339, i64 0
  %i.ud = fsub float %i.tz, %i.nv
  %i.ue = fmul float %i.uc, %i.ud
  %i.uf = fdiv float %i.ue, %i.qa
  %i.ug = fadd float %i.qf, %i.uf
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.057.i357.i.i.i.i.i.i = phi float [ %i.ug, %bb.bz ], [ %i.qf, %bb.by ] ; 4 uses
  %.056.i358.i.i.i.i.i.i = phi float [ %i.tz, %bb.bz ], [ %i.nv, %bb.by ] ; 3 uses
  %i.uh = fcmp ogt float %i.nw, %i.tw
  br i1 %i.uh, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.ui = fsub float %i.qf, %.057.i357.i.i.i.i.i.i
  %i.uj = fsub float %i.tw, %i.nw
  %i.uk = fmul float %i.uj, %i.ui
  %i.ul = fsub float %i.nw, %.056.i358.i.i.i.i.i.i
  %i.um = fdiv float %i.uk, %i.ul
  %i.un = fadd float %i.qf, %i.um
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.055.i359.i.i.i.i.i.i = phi float [ %i.un, %bb.cb ], [ %i.qf, %bb.ca ] ; 3 uses
  %.0.i360.i.i.i.i.i.i = phi float [ %i.tw, %bb.cb ], [ %i.nw, %bb.ca ] ; 2 uses
  %i.uo = fcmp ugt float %.057.i357.i.i.i.i.i.i, 0.000000e+00
  %i.up = fcmp ugt float %.055.i359.i.i.i.i.i.i, 0.000000e+00
  %or.cond64.i361.i.i.i.i.i.i = select i1 %i.uo, i1 true, i1 %i.up
  br i1 %or.cond64.i361.i.i.i.i.i.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.uq = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 20
  %i.ur = load float, ptr %i.uq, align 4, !tbaa !797
  %i.us = fsub float %.0.i360.i.i.i.i.i.i, %.056.i358.i.i.i.i.i.i
  %i.ut = load float, ptr %i.ne, align 4, !tbaa !29
  %i.uu = call float @llvm.fmuladd.f32(float %i.ur, float %i.us, float %i.ut)
  store float %i.uu, ptr %i.ne, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

bb.ce:                                            ; preds = %bb.cc
  %i.uv = fcmp ult float %.057.i357.i.i.i.i.i.i, 1.000000e+00
  %i.uw = fcmp ult float %.055.i359.i.i.i.i.i.i, 1.000000e+00
  %or.cond65.i362.i.i.i.i.i.i = select i1 %i.uv, i1 true, i1 %i.uw
  br i1 %or.cond65.i362.i.i.i.i.i.i, label %bb.cf, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

bb.cf:                                            ; preds = %bb.ce
  %i.ux = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 20
  %i.uy = load float, ptr %i.ux, align 4, !tbaa !797
  %i.uz = fsub float %.0.i360.i.i.i.i.i.i, %.056.i358.i.i.i.i.i.i
  %i.va = fmul float %i.uz, %i.uy
  %i.vb = fadd float %.057.i357.i.i.i.i.i.i, %.055.i359.i.i.i.i.i.i
  %i.vc = fmul float %i.vb, 5.000000e-01
  %i.vd = fsub float 1.000000e+00, %i.vc
  %i.ve = load float, ptr %i.ne, align 4, !tbaa !29
  %i.vf = call float @llvm.fmuladd.f32(float %i.va, float %i.vd, float %i.ve)
  store float %i.vf, ptr %i.ne, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

bb.cg:                                            ; preds = %bb.ax
  %i.vg = fadd float %i.qg, %i.qf                 ; 34 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 16
  %i.vi = load float, ptr %i.vh, align 8, !tbaa !805 ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 24 ; 16 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 28 ; 15 uses
  %i.vl = load <2 x float>, ptr %i.vj, align 8, !tbaa !29 ; 3 uses
  %i.vm = extractelement <2 x float> %i.vl, i64 0 ; 2 uses
  %i.vn = fcmp ogt float %i.vm, %i.nv             ; 2 uses
  %i.vo = fsub <2 x float> %i.vl, %i.qc
  %i.vp = shufflevector <2 x float> %i.qe, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.vq = shufflevector <2 x float> %i.qe, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.vr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vp, <2 x float> %i.vo, <2 x float> %i.vq) ; 2 uses
  %i.vs = extractelement <2 x float> %i.vr, i64 0
  %.0307.i.i.i.i.i.i = select i1 %i.vn, float %i.vs, float %i.qf ; 7 uses
  %.0303.i.i.i.i.i.i = select i1 %i.vn, float %i.vm, float %i.nv ; 3 uses
  %i.vt = extractelement <2 x float> %i.vl, i64 1 ; 2 uses
  %i.vu = fcmp olt float %i.vt, %i.nw             ; 2 uses
  %i.vv = extractelement <2 x float> %i.vr, i64 1
  %.0305.i.i.i.i.i.i = select i1 %i.vu, float %i.vv, float %i.vg ; 7 uses
  %.0301.i.i.i.i.i.i = select i1 %i.vu, float %i.vt, float %i.nw ; 3 uses
  %i.vw = fcmp oge float %.0307.i.i.i.i.i.i, 0.000000e+00
  %i.vx = fcmp oge float %.0305.i.i.i.i.i.i, 0.000000e+00
  %or.cond.i.i.i.i.i.i = select i1 %i.vw, i1 %i.vx, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %bb.ch, label %bb.cp

bb.ch:                                            ; preds = %bb.cg
  %i.vy = fcmp olt float %.0307.i.i.i.i.i.i, %i.nt
  %i.vz = fcmp olt float %.0305.i.i.i.i.i.i, %i.nt
  %or.cond343.i.i.i.i.i.i = select i1 %i.vy, i1 %i.vz, i1 false
  br i1 %or.cond343.i.i.i.i.i.i, label %bb.ci, label %bb.cp

bb.ci:                                            ; preds = %bb.ch
  %i.wa = fptosi float %.0307.i.i.i.i.i.i to i32  ; 5 uses
  %i.wb = fptosi float %.0305.i.i.i.i.i.i to i32  ; 3 uses
  %i.wc = icmp eq i32 %i.wa, %i.wb
  br i1 %i.wc, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.wd = fsub float %.0301.i.i.i.i.i.i, %.0303.i.i.i.i.i.i
  %i.we = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 20
  %i.wf = load float, ptr %i.we, align 4, !tbaa !797
  %i.wg = fmul float %i.wd, %i.wf                 ; 2 uses
  %i.wh = sitofp i32 %i.wa to float
  %i.wi = fadd float %i.wh, 1.000000e+00          ; 2 uses
  %i.wj = fsub float %i.wi, %.0307.i.i.i.i.i.i
  %i.wk = fsub float %i.wi, %.0305.i.i.i.i.i.i
  %i.wl = fadd float %i.wj, %i.wk
  %i.wm = fmul float %i.wl, 5.000000e-01
  %i.wn = fmul float %i.wm, %i.wg
  %11 = sext i32 %i.wa to i64                     ; 2 uses
  %i.wo = getelementptr inbounds [4 x i8], ptr %.080.i.i.i.i.i, i64 %11 ; 2 uses
  %i.wp = load float, ptr %i.wo, align 4, !tbaa !29
  %i.wq = fadd float %i.wp, %i.wn
  store float %i.wq, ptr %i.wo, align 4, !tbaa !29
  %i.wr = getelementptr inbounds [4 x i8], ptr %i.no, i64 %11 ; 2 uses
  %i.ws = load float, ptr %i.wr, align 4, !tbaa !29
  %i.wt = fadd float %i.wg, %i.ws
  store float %i.wt, ptr %i.wr, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

bb.ck:                                            ; preds = %bb.ci
  %i.wu = fcmp ogt float %.0307.i.i.i.i.i.i, %.0305.i.i.i.i.i.i
  br i1 %i.wu, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.wv = fsub float %i.nv, %.0303.i.i.i.i.i.i
  %i.ww = fadd float %i.nw, %i.wv
  %i.wx = fsub float %i.nv, %.0301.i.i.i.i.i.i
  %i.wy = fadd float %i.nw, %i.wx
  %i.wz = fneg float %i.vi
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.pre-phi480.i.i.i.i.i.i = phi i32 [ %i.wa, %bb.cl ], [ %i.wb, %bb.ck ] ; 8 uses
  %.pre-phi.i.i.i.i.i.i = phi i32 [ %i.wb, %bb.cl ], [ %i.wa, %bb.ck ] ; 4 uses
  %.0309.i.i.i.i.i.i = phi float [ %i.vg, %bb.cl ], [ %i.qf, %bb.ck ]
  %.1308.i.i.i.i.i.i = phi float [ %.0305.i.i.i.i.i.i, %bb.cl ], [ %.0307.i.i.i.i.i.i, %bb.ck ]
  %.1306.i.i.i.i.i.i = phi float [ %.0307.i.i.i.i.i.i, %bb.cl ], [ %.0305.i.i.i.i.i.i, %bb.ck ]
  %.1304.i.i.i.i.i.i = phi float [ %i.wy, %bb.cl ], [ %.0303.i.i.i.i.i.i, %bb.ck ] ; 2 uses
  %.1302.i.i.i.i.i.i = phi float [ %i.ww, %bb.cl ], [ %.0301.i.i.i.i.i.i, %bb.ck ] ; 2 uses
  %.0300.i.i.i.i.i.i = phi float [ %i.wz, %bb.cl ], [ %i.vi, %bb.ck ] ; 3 uses
  %i.xa = add i32 %.pre-phi.i.i.i.i.i.i, 1        ; 5 uses
  %12 = insertelement <2 x i32> poison, i32 %.pre-phi480.i.i.i.i.i.i, i64 0
  %13 = insertelement <2 x i32> %12, i32 %i.xa, i64 1
  %14 = sitofp <2 x i32> %13 to <2 x float>       ; 3 uses
  %15 = insertelement <2 x float> poison, float %.0309.i.i.i.i.i.i, i64 0
  %16 = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> zeroinitializer
  %17 = fsub <2 x float> %14, %16
  %18 = insertelement <2 x float> poison, float %.0300.i.i.i.i.i.i, i64 0
  %19 = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> zeroinitializer
  %20 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %19, <2 x float> %17, <2 x float> %i.qc) ; 2 uses
  %21 = extractelement <2 x float> %20, i64 1     ; 2 uses
  %i.xb = fcmp ogt float %21, %i.nw
  %.0298.i.i.i.i.i.i = select i1 %i.xb, float %i.nw, float %21 ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 20
  %i.xd = load float, ptr %i.xc, align 4, !tbaa !797 ; 4 uses
  %i.xe = fsub float %.0298.i.i.i.i.i.i, %.1304.i.i.i.i.i.i
  %i.xf = fmul float %i.xd, %i.xe                 ; 5 uses
  %22 = extractelement <2 x float> %14, i64 1
  %i.xg = fsub nnan float %22, %.1308.i.i.i.i.i.i
  %i.xh = fmul float %i.xg, %i.xf
  %i.xi = fmul float %i.xh, 5.000000e-01
  %23 = sext i32 %.pre-phi.i.i.i.i.i.i to i64
  %i.xj = getelementptr inbounds [4 x i8], ptr %.080.i.i.i.i.i, i64 %23 ; 2 uses
  %i.xk = load float, ptr %i.xj, align 4, !tbaa !29
  %i.xl = fadd float %i.xk, %i.xi
  store float %i.xl, ptr %i.xj, align 4, !tbaa !29
  %24 = extractelement <2 x float> %20, i64 0     ; 2 uses
  %i.xm = fcmp ogt float %24, %i.nw
  br i1 %i.xm, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %.not342.i.i.i.i.i.i = icmp eq i32 %i.xa, %.pre-phi480.i.i.i.i.i.i
  %i.xn = sub nsw i32 %.pre-phi480.i.i.i.i.i.i, %i.xa
  %i.xo = fsub float %i.nw, %.0298.i.i.i.i.i.i
  %i.xp = sitofp i32 %i.xn to float
  %i.xq = fdiv float %i.xo, %i.xp
  %.1.i.i.i.i.i.i = select i1 %.not342.i.i.i.i.i.i, float %.0300.i.i.i.i.i.i, float %i.xq
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %.2.i.i.i.i.i.i = phi float [ %.1.i.i.i.i.i.i, %bb.cn ], [ %.0300.i.i.i.i.i.i, %bb.cm ]
  %.0297.i.i.i.i.i.i = phi float [ %i.nw, %bb.cn ], [ %24, %bb.cm ]
  %i.xr = fmul float %i.xd, %.2.i.i.i.i.i.i       ; 4 uses
  %i.xs = icmp slt i32 %i.xa, %.pre-phi480.i.i.i.i.i.i
  br i1 %i.xs, label %.lr.ph472.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph472.i.i.i.i.i.i:                            ; preds = %bb.co
  %i.xt = fmul float %i.xr, 5.000000e-01          ; 3 uses
  %25 = sext i32 %i.xa to i64                     ; 3 uses
  %i.xu = add i32 %.pre-phi480.i.i.i.i.i.i, -2
  %i.xv = sub i32 %.pre-phi.i.i.i.i.i.i, %.pre-phi480.i.i.i.i.i.i
  %i.xw = and i32 %i.xv, 1
  %lcmp.mod.not.not = icmp eq i32 %i.xw, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph472.i.i.i.i.i.i
  %i.xx = fadd float %i.xt, %i.xf
  %i.xy = getelementptr inbounds [4 x i8], ptr %.080.i.i.i.i.i, i64 %25 ; 2 uses
  %i.xz = load float, ptr %i.xy, align 4, !tbaa !29
  %i.ya = fadd float %i.xx, %i.xz
  store float %i.ya, ptr %i.xy, align 4, !tbaa !29
  %i.yb = fadd float %i.xr, %i.xf                 ; 2 uses
  %indvars.iv.next477.i.i.i.i.i.i.prol = add nsw i64 %25, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph472.i.i.i.i.i.i
  %.lcssa359.unr = phi float [ poison, %.lr.ph472.i.i.i.i.i.i ], [ %i.yb, %.prol.loopexit.unr-lcssa ]
  %indvars.iv476.i.i.i.i.i.i.unr = phi i64 [ %25, %.lr.ph472.i.i.i.i.i.i ], [ %indvars.iv.next477.i.i.i.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.0296471.i.i.i.i.i.i.unr.a = phi float [ %i.xf, %.lr.ph472.i.i.i.i.i.i ], [ %i.yb, %.prol.loopexit.unr-lcssa ]
  %i.yc = icmp eq i32 %i.xu, %.pre-phi.i.i.i.i.i.i
  br i1 %i.yc, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph472.i.i.i.i.i.i.new

.lr.ph472.i.i.i.i.i.i.new:                        ; preds = %.prol.loopexit, %.lr.ph472.i.i.i.i.i.i.new
  %indvars.iv476.i.i.i.i.i.i = phi i64 [ %indvars.iv.next477.i.i.i.i.i.i.1, %.lr.ph472.i.i.i.i.i.i.new ], [ %indvars.iv476.i.i.i.i.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.0296471.i.i.i.i.i.i = phi float [ %i.yn, %.lr.ph472.i.i.i.i.i.i.new ], [ %.0296471.i.i.i.i.i.i.unr.a, %.prol.loopexit ] ; 2 uses
  %i.yd = fadd float %i.xt, %.0296471.i.i.i.i.i.i
  %i.ye = getelementptr inbounds [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv476.i.i.i.i.i.i ; 2 uses
  %i.yf = load float, ptr %i.ye, align 4, !tbaa !29
  %i.yg = fadd float %i.yd, %i.yf
  store float %i.yg, ptr %i.ye, align 4, !tbaa !29
  %i.yh = fadd float %i.xr, %.0296471.i.i.i.i.i.i ; 2 uses
  %i.yi = fadd float %i.xt, %i.yh
  %i.yj = getelementptr [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv476.i.i.i.i.i.i
  %i.yk = getelementptr i8, ptr %i.yj, i64 4      ; 2 uses
  %i.yl = load float, ptr %i.yk, align 4, !tbaa !29
  %i.ym = fadd float %i.yi, %i.yl
  store float %i.ym, ptr %i.yk, align 4, !tbaa !29
  %i.yn = fadd float %i.xr, %i.yh                 ; 2 uses
  %indvars.iv.next477.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv476.i.i.i.i.i.i, 2 ; 2 uses
  %lftr.wideiv.i.i.i.i.i.i.1 = trunc i64 %indvars.iv.next477.i.i.i.i.i.i.1 to i32
  %exitcond479.not.i.i.i.i.i.i.1 = icmp eq i32 %.pre-phi480.i.i.i.i.i.i, %lftr.wideiv.i.i.i.i.i.i.1
  br i1 %exitcond479.not.i.i.i.i.i.i.1, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph472.i.i.i.i.i.i.new, !llvm.loop !769

._crit_edge.i.i.i.i.i.i:                          ; preds = %.prol.loopexit, %.lr.ph472.i.i.i.i.i.i.new, %bb.co
  %.0296.lcssa.i.i.i.i.i.i = phi float [ %i.xf, %bb.co ], [ %.lcssa359.unr, %.prol.loopexit ], [ %i.yn, %.lr.ph472.i.i.i.i.i.i.new ]
  %i.yo = fsub float %.1302.i.i.i.i.i.i, %.0297.i.i.i.i.i.i
  %26 = extractelement <2 x float> %14, i64 0     ; 2 uses
  %i.yp = fadd float %26, 1.000000e+00            ; 2 uses
  %i.yq = fsub nnan float %i.yp, %26
  %i.yr = fsub float %i.yp, %.1306.i.i.i.i.i.i
  %i.ys = fadd float %i.yq, %i.yr
  %i.yt = fmul float %i.ys, 5.000000e-01
  %i.yu = fmul float %i.yt, %i.yo
  %i.yv = call float @llvm.fmuladd.f32(float %i.xd, float %i.yu, float %.0296.lcssa.i.i.i.i.i.i)
  %27 = sext i32 %.pre-phi480.i.i.i.i.i.i to i64  ; 2 uses
  %i.yw = getelementptr inbounds [4 x i8], ptr %.080.i.i.i.i.i, i64 %27 ; 2 uses
  %i.yx = load float, ptr %i.yw, align 4, !tbaa !29
  %i.yy = fadd float %i.yv, %i.yx
  store float %i.yy, ptr %i.yw, align 4, !tbaa !29
  %i.yz = fsub float %.1302.i.i.i.i.i.i, %.1304.i.i.i.i.i.i
  %i.za = getelementptr inbounds [4 x i8], ptr %i.no, i64 %27 ; 2 uses
  %i.zb = load float, ptr %i.za, align 4, !tbaa !29
  %i.zc = call float @llvm.fmuladd.f32(float %i.xd, float %i.yz, float %i.zb)
  store float %i.zc, ptr %i.za, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

bb.cp:                                            ; preds = %bb.ch, %bb.cg
  br i1 %i.nu, label %.lr.ph.i.i94.i.i.i.i, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

.lr.ph.i.i94.i.i.i.i:                             ; preds = %bb.cp
  %i.zd = fsub float %i.vg, %i.qf
  %i.ze = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 20 ; 30 uses
  br label %bb.cq

bb.cq:                                            ; preds = %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i, %.lr.ph.i.i94.i.i.i.i
  %indvars.iv.i.i95.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i94.i.i.i.i ], [ %indvars.iv.next.i.i96.i.i.i.i, %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i ] ; 32 uses
  %indvars.iv.next.i.i96.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i95.i.i.i.i, 1 ; 3 uses
  %i.zf = trunc nuw nsw i64 %indvars.iv.next.i.i96.i.i.i.i to i32
  %i.zg = trunc nuw nsw i64 %indvars.iv.i.i95.i.i.i.i to i32
  %i.zh = uitofp nneg i32 %i.zf to float          ; 60 uses
  %i.zi = uitofp nneg i32 %i.zg to float          ; 90 uses
  %i.zj = insertelement <2 x float> poison, float %i.zi, i64 0
  %i.zk = insertelement <2 x float> %i.zj, float %i.zh, i64 1
  %i.zl = fsub <2 x float> %i.zk, %i.vq           ; 7 uses
  %i.zm = fdiv <2 x float> %i.zl, %i.vp           ; 2 uses
  %i.zn = extractelement <2 x float> %i.zm, i64 0
  %i.zo = fadd float %i.zn, %i.nv                 ; 52 uses
  %i.zp = extractelement <2 x float> %i.zm, i64 1
  %i.zq = fadd float %i.zp, %i.nv                 ; 52 uses
  %i.zr = fcmp olt float %i.qf, %i.zi             ; 2 uses
  %i.zs = fcmp ogt float %i.vg, %i.zh             ; 2 uses
  %or.cond344.i.i.i.i.i.i = select i1 %i.zr, i1 %i.zs, i1 false
  br i1 %or.cond344.i.i.i.i.i.i, label %bb.cr, label %bb.dw

bb.cr:                                            ; preds = %bb.cq
  %i.zt = fcmp oeq float %i.zo, %i.nv
  br i1 %i.zt, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.zu = load float, ptr %i.vk, align 4, !tbaa !795 ; 4 uses
  %i.zv = fcmp olt float %i.zu, %i.nv
  br i1 %i.zv, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.zw = load float, ptr %i.vj, align 8, !tbaa !808 ; 4 uses
  %i.zx = fcmp olt float %i.zo, %i.zw
  br i1 %i.zx, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.zy = fcmp ogt float %i.zw, %i.nv
  br i1 %i.zy, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.zz = fsub float %i.zw, %i.nv
  %i.aaa = extractelement <2 x float> %i.zl, i64 0
  %i.aab = fmul float %i.aaa, %i.zz
  %i.aac = fsub float %i.zo, %i.nv
  %i.aad = fdiv float %i.aab, %i.aac
  %i.aae = fadd float %i.qf, %i.aad
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.057.i364.i.i.i.i.i.i = phi float [ %i.aae, %bb.cv ], [ %i.qf, %bb.cu ] ; 4 uses
  %.056.i365.i.i.i.i.i.i = phi float [ %i.zw, %bb.cv ], [ %i.nv, %bb.cu ] ; 3 uses
  %i.aaf = fcmp ogt float %i.zo, %i.zu
  br i1 %i.aaf, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.aag = fsub float %i.zi, %.057.i364.i.i.i.i.i.i
  %i.aah = fsub float %i.zu, %i.zo
  %i.aai = fmul float %i.aah, %i.aag
  %i.aaj = fsub float %i.zo, %.056.i365.i.i.i.i.i.i
  %i.aak = fdiv float %i.aai, %i.aaj
  %i.aal = fadd float %i.aak, %i.zi
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.055.i366.i.i.i.i.i.i = phi float [ %i.aal, %bb.cx ], [ %i.zi, %bb.cw ] ; 3 uses
  %.0.i367.i.i.i.i.i.i = phi float [ %i.zu, %bb.cx ], [ %i.zo, %bb.cw ] ; 2 uses
  %i.aam = fcmp ugt float %.057.i364.i.i.i.i.i.i, %i.zi
  %i.aan = fcmp ugt float %.055.i366.i.i.i.i.i.i, %i.zi
  %or.cond64.i368.i.i.i.i.i.i = select i1 %i.aam, i1 true, i1 %i.aan
  br i1 %or.cond64.i368.i.i.i.i.i.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.aao = load float, ptr %i.ze, align 4, !tbaa !797
  %i.aap = fsub float %.0.i367.i.i.i.i.i.i, %.056.i365.i.i.i.i.i.i
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.aar = load float, ptr %i.aaq, align 4, !tbaa !29
  %i.aas = call float @llvm.fmuladd.f32(float %i.aao, float %i.aap, float %i.aar)
  store float %i.aas, ptr %i.aaq, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i

bb.da:                                            ; preds = %bb.cy
  %i.aat = fcmp ult float %.057.i364.i.i.i.i.i.i, %i.zh
  %i.aau = fcmp ult float %.055.i366.i.i.i.i.i.i, %i.zh
  %or.cond65.i369.i.i.i.i.i.i = select i1 %i.aat, i1 true, i1 %i.aau
  br i1 %or.cond65.i369.i.i.i.i.i.i, label %bb.db, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i

bb.db:                                            ; preds = %bb.da
  %i.aav = load float, ptr %i.ze, align 4, !tbaa !797
  %i.aaw = fsub float %.0.i367.i.i.i.i.i.i, %.056.i365.i.i.i.i.i.i
  %i.aax = fmul float %i.aaw, %i.aav
  %i.aay = fsub float %.057.i364.i.i.i.i.i.i, %i.zi
  %i.aaz = fsub float %.055.i366.i.i.i.i.i.i, %i.zi
  %i.aba = fadd float %i.aay, %i.aaz
  %i.abb = fmul float %i.aba, 5.000000e-01
  %i.abc = fsub float 1.000000e+00, %i.abb
  %i.abd = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.abe = load float, ptr %i.abd, align 4, !tbaa !29
  %i.abf = call float @llvm.fmuladd.f32(float %i.aax, float %i.abc, float %i.abe)
  store float %i.abf, ptr %i.abd, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i

_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i: ; preds = %bb.db, %bb.da, %bb.cz, %bb.ct, %bb.cs, %bb.cr
  %i.abg = fcmp oeq float %i.zo, %i.zq
  br i1 %i.abg, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit377.i.i.i.i.i.i, label %bb.dc

bb.dc:                                            ; preds = %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i
  %i.abh = load float, ptr %i.vk, align 4, !tbaa !795 ; 4 uses
  %i.abi = fcmp ogt float %i.zo, %i.abh
  br i1 %i.abi, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit377.i.i.i.i.i.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.abj = load float, ptr %i.vj, align 8, !tbaa !808 ; 4 uses
  %i.abk = fcmp olt float %i.zq, %i.abj
  br i1 %i.abk, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit377.i.i.i.i.i.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.abl = fcmp olt float %i.zo, %i.abj
  br i1 %i.abl, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.abm = fsub nnan float %i.zh, %i.zi
  %i.abn = fsub float %i.abj, %i.zo
  %i.abo = fmul float %i.abm, %i.abn
  %i.abp = fsub float %i.zq, %i.zo
  %i.abq = fdiv float %i.abo, %i.abp
  %i.abr = fadd float %i.abq, %i.zi
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %.057.i371.i.i.i.i.i.i = phi float [ %i.abr, %bb.df ], [ %i.zi, %bb.de ] ; 4 uses
  %.056.i372.i.i.i.i.i.i = phi float [ %i.abj, %bb.df ], [ %i.zo, %bb.de ] ; 3 uses
  %i.abs = fcmp ogt float %i.zq, %i.abh
  br i1 %i.abs, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.abt = fsub float %i.zh, %.057.i371.i.i.i.i.i.i
  %i.abu = fsub float %i.abh, %i.zq
  %i.abv = fmul float %i.abu, %i.abt
  %i.abw = fsub float %i.zq, %.056.i372.i.i.i.i.i.i
  %i.abx = fdiv float %i.abv, %i.abw
  %i.aby = fadd float %i.abx, %i.zh
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.055.i373.i.i.i.i.i.i = phi float [ %i.aby, %bb.dh ], [ %i.zh, %bb.dg ] ; 3 uses
  %.0.i374.i.i.i.i.i.i = phi float [ %i.abh, %bb.dh ], [ %i.zq, %bb.dg ] ; 2 uses
  %i.abz = fcmp ugt float %.057.i371.i.i.i.i.i.i, %i.zi
  %i.aca = fcmp ugt float %.055.i373.i.i.i.i.i.i, %i.zi
  %or.cond64.i375.i.i.i.i.i.i = select i1 %i.abz, i1 true, i1 %i.aca
  br i1 %or.cond64.i375.i.i.i.i.i.i, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.acb = load float, ptr %i.ze, align 4, !tbaa !797
  %i.acc = fsub float %.0.i374.i.i.i.i.i.i, %.056.i372.i.i.i.i.i.i
  %i.acd = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.ace = load float, ptr %i.acd, align 4, !tbaa !29
  %i.acf = call float @llvm.fmuladd.f32(float %i.acb, float %i.acc, float %i.ace)
  store float %i.acf, ptr %i.acd, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit377.i.i.i.i.i.i

bb.dk:                                            ; preds = %bb.di
  %i.acg = fcmp ult float %.057.i371.i.i.i.i.i.i, %i.zh
  %i.ach = fcmp ult float %.055.i373.i.i.i.i.i.i, %i.zh
  %or.cond65.i376.i.i.i.i.i.i = select i1 %i.acg, i1 true, i1 %i.ach
  br i1 %or.cond65.i376.i.i.i.i.i.i, label %bb.dl, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit377.i.i.i.i.i.i

bb.dl:                                            ; preds = %bb.dk
  %i.aci = load float, ptr %i.ze, align 4, !tbaa !797
  %i.acj = fsub float %.0.i374.i.i.i.i.i.i, %.056.i372.i.i.i.i.i.i
  %i.ack = fmul float %i.acj, %i.aci
  %i.acl = fsub float %.057.i371.i.i.i.i.i.i, %i.zi
  %i.acm = fsub float %.055.i373.i.i.i.i.i.i, %i.zi
  %i.acn = fadd float %i.acl, %i.acm
  %i.aco = fmul float %i.acn, 5.000000e-01
  %i.acp = fsub float 1.000000e+00, %i.aco
  %i.acq = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.acr = load float, ptr %i.acq, align 4, !tbaa !29
  %i.acs = call float @llvm.fmuladd.f32(float %i.ack, float %i.acp, float %i.acr)
  store float %i.acs, ptr %i.acq, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit377.i.i.i.i.i.i

_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit377.i.i.i.i.i.i: ; preds = %bb.dl, %bb.dk, %bb.dj, %bb.dd, %bb.dc, %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i
  %i.act = fcmp oeq float %i.zq, %i.nw
  br i1 %i.act, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i, label %bb.dm

bb.dm:                                            ; preds = %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit377.i.i.i.i.i.i
  %i.acu = load float, ptr %i.vk, align 4, !tbaa !795 ; 4 uses
  %i.acv = fcmp ogt float %i.zq, %i.acu
end_hunk_1
begin_hunk_2_@_ZL40ImGui_ImplStbTrueType_FontBakedLoadGlyphP11ImFontAtlasP12ImFontConfigP11ImFontBakedPvtP11ImFontGlyphPf:bb.a
  %or.cond65.i453.i.i.i.i.i.i = select i1 %i.asz, i1 true, i1 %i.ata
  br i1 %or.cond65.i453.i.i.i.i.i.i, label %bb.ib, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit454.i.i.i.i.i.i

bb.ib:                                            ; preds = %bb.ia
  %i.atb = load float, ptr %i.ze, align 4, !tbaa !797
  %i.atc = fsub float %.0.i451.i.i.i.i.i.i, %.056.i449.i.i.i.i.i.i
  %i.atd = fmul float %i.atc, %i.atb
  %i.ate = fsub float %.057.i448.i.i.i.i.i.i, %i.zi
  %i.atf = fsub float %.055.i450.i.i.i.i.i.i, %i.zi
  %i.atg = fadd float %i.ate, %i.atf
  %i.ath = fmul float %i.atg, 5.000000e-01
  %i.ati = fsub float 1.000000e+00, %i.ath
  %i.atj = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.atk = load float, ptr %i.atj, align 4, !tbaa !29
  %i.atl = call float @llvm.fmuladd.f32(float %i.atd, float %i.ati, float %i.atk)
  store float %i.atl, ptr %i.atj, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit454.i.i.i.i.i.i

_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit454.i.i.i.i.i.i: ; preds = %bb.ib, %bb.ia, %bb.hz, %bb.ht, %bb.hs, %bb.hr
  %i.atm = fcmp oeq float %i.zq, %i.nw
  br i1 %i.atm, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i, label %bb.ic

bb.ic:                                            ; preds = %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit454.i.i.i.i.i.i
  %i.atn = load float, ptr %i.vk, align 4, !tbaa !795 ; 4 uses
  %i.ato = fcmp ogt float %i.zq, %i.atn
  br i1 %i.ato, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.atp = load float, ptr %i.vj, align 8, !tbaa !808 ; 4 uses
  %i.atq = fcmp olt float %i.nw, %i.atp
  br i1 %i.atq, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.atr = fcmp olt float %i.zq, %i.atp
  br i1 %i.atr, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %bb.ie
  %i.ats = fsub float %i.vg, %i.zh
  %i.att = fsub float %i.atp, %i.zq
  %i.atu = fmul float %i.ats, %i.att
  %i.atv = fsub float %i.nw, %i.zq
  %i.atw = fdiv float %i.atu, %i.atv
  %i.atx = fadd float %i.atw, %i.zh
  br label %bb.ig

bb.ig:                                            ; preds = %bb.if, %bb.ie
  %.057.i455.i.i.i.i.i.i = phi float [ %i.atx, %bb.if ], [ %i.zh, %bb.ie ] ; 4 uses
  %.056.i456.i.i.i.i.i.i = phi float [ %i.atp, %bb.if ], [ %i.zq, %bb.ie ] ; 3 uses
  %i.aty = fcmp ogt float %i.nw, %i.atn
  br i1 %i.aty, label %bb.ih, label %bb.ii

bb.ih:                                            ; preds = %bb.ig
  %i.atz = fsub float %i.vg, %.057.i455.i.i.i.i.i.i
  %i.aua = fsub float %i.atn, %i.nw
  %i.aub = fmul float %i.aua, %i.atz
  %i.auc = fsub float %i.nw, %.056.i456.i.i.i.i.i.i
  %i.aud = fdiv float %i.aub, %i.auc
  %i.aue = fadd float %i.vg, %i.aud
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %bb.ig
  %.055.i457.i.i.i.i.i.i = phi float [ %i.aue, %bb.ih ], [ %i.vg, %bb.ig ] ; 3 uses
  %.0.i458.i.i.i.i.i.i = phi float [ %i.atn, %bb.ih ], [ %i.nw, %bb.ig ] ; 2 uses
  %i.auf = fcmp ugt float %.057.i455.i.i.i.i.i.i, %i.zi
  %i.aug = fcmp ugt float %.055.i457.i.i.i.i.i.i, %i.zi
  %or.cond64.i459.i.i.i.i.i.i = select i1 %i.auf, i1 true, i1 %i.aug
  br i1 %or.cond64.i459.i.i.i.i.i.i, label %bb.ik, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.auh = load float, ptr %i.ze, align 4, !tbaa !797
  %i.aui = fsub float %.0.i458.i.i.i.i.i.i, %.056.i456.i.i.i.i.i.i
  %i.auj = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.auk = load float, ptr %i.auj, align 4, !tbaa !29
  %i.aul = call float @llvm.fmuladd.f32(float %i.auh, float %i.aui, float %i.auk)
  store float %i.aul, ptr %i.auj, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i

bb.ik:                                            ; preds = %bb.ii
  %i.aum = fcmp ult float %.057.i455.i.i.i.i.i.i, %i.zh
  %i.aun = fcmp ult float %.055.i457.i.i.i.i.i.i, %i.zh
  %or.cond65.i460.i.i.i.i.i.i = select i1 %i.aum, i1 true, i1 %i.aun
  br i1 %or.cond65.i460.i.i.i.i.i.i, label %bb.il, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i

bb.il:                                            ; preds = %bb.ik
  %i.auo = load float, ptr %i.ze, align 4, !tbaa !797
  %i.aup = fsub float %.0.i458.i.i.i.i.i.i, %.056.i456.i.i.i.i.i.i
  %i.auq = fmul float %i.aup, %i.auo
  %i.aur = fsub float %.057.i455.i.i.i.i.i.i, %i.zi
  %i.aus = fsub float %.055.i457.i.i.i.i.i.i, %i.zi
  %i.aut = fadd float %i.aur, %i.aus
  %i.auu = fmul float %i.aut, 5.000000e-01
  %i.auv = fsub float 1.000000e+00, %i.auu
  %i.auw = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.aux = load float, ptr %i.auw, align 4, !tbaa !29
  %i.auy = call float @llvm.fmuladd.f32(float %i.auq, float %i.auv, float %i.aux)
  store float %i.auy, ptr %i.auw, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i

bb.im:                                            ; preds = %bb.hq
  br i1 %i.pz, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.auz = load float, ptr %i.vk, align 4, !tbaa !795 ; 4 uses
  %i.ava = fcmp olt float %i.auz, %i.nv
  br i1 %i.ava, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.avb = load float, ptr %i.vj, align 8, !tbaa !808 ; 4 uses
  %i.avc = fcmp olt float %i.nw, %i.avb
  br i1 %i.avc, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.avd = fcmp ogt float %i.avb, %i.nv           ; 2 uses
  %i.ave = fsub float %i.avb, %i.nv
  %i.avf = fmul float %i.zd, %i.ave
  %i.avg = fdiv float %i.avf, %i.qa
  %i.avh = fadd float %i.qf, %i.avg
  %.057.i462.i.i.i.i.i.i = select i1 %i.avd, float %i.avh, float %i.qf ; 4 uses
  %.056.i463.i.i.i.i.i.i = select i1 %i.avd, float %i.avb, float %i.nv ; 3 uses
  %i.avi = fcmp ogt float %i.nw, %i.auz
  br i1 %i.avi, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %bb.ip
  %i.avj = fsub float %i.vg, %.057.i462.i.i.i.i.i.i
  %i.avk = fsub float %i.auz, %i.nw
  %i.avl = fmul float %i.avk, %i.avj
  %i.avm = fsub float %i.nw, %.056.i463.i.i.i.i.i.i
  %i.avn = fdiv float %i.avl, %i.avm
  %i.avo = fadd float %i.vg, %i.avn
  br label %bb.ir

bb.ir:                                            ; preds = %bb.iq, %bb.ip
  %.055.i464.i.i.i.i.i.i = phi float [ %i.avo, %bb.iq ], [ %i.vg, %bb.ip ] ; 3 uses
  %.0.i465.i.i.i.i.i.i = phi float [ %i.auz, %bb.iq ], [ %i.nw, %bb.ip ] ; 2 uses
  %i.avp = fcmp ugt float %.057.i462.i.i.i.i.i.i, %i.zi
  %i.avq = fcmp ugt float %.055.i464.i.i.i.i.i.i, %i.zi
  %or.cond64.i466.i.i.i.i.i.i = select i1 %i.avp, i1 true, i1 %i.avq
  br i1 %or.cond64.i466.i.i.i.i.i.i, label %bb.it, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.avr = load float, ptr %i.ze, align 4, !tbaa !797
  %i.avs = fsub float %.0.i465.i.i.i.i.i.i, %.056.i463.i.i.i.i.i.i
  %i.avt = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.avu = load float, ptr %i.avt, align 4, !tbaa !29
  %i.avv = call float @llvm.fmuladd.f32(float %i.avr, float %i.avs, float %i.avu)
  store float %i.avv, ptr %i.avt, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i

bb.it:                                            ; preds = %bb.ir
  %i.avw = fcmp ult float %.057.i462.i.i.i.i.i.i, %i.zh
  %i.avx = fcmp ult float %.055.i464.i.i.i.i.i.i, %i.zh
  %or.cond65.i467.i.i.i.i.i.i = select i1 %i.avw, i1 true, i1 %i.avx
  br i1 %or.cond65.i467.i.i.i.i.i.i, label %bb.iu, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i

bb.iu:                                            ; preds = %bb.it
  %i.avy = load float, ptr %i.ze, align 4, !tbaa !797
  %i.avz = fsub float %.0.i465.i.i.i.i.i.i, %.056.i463.i.i.i.i.i.i
  %i.awa = fmul float %i.avz, %i.avy
  %i.awb = fsub float %.057.i462.i.i.i.i.i.i, %i.zi
  %i.awc = fsub float %.055.i464.i.i.i.i.i.i, %i.zi
  %i.awd = fadd float %i.awb, %i.awc
  %i.awe = fmul float %i.awd, 5.000000e-01
  %i.awf = fsub float 1.000000e+00, %i.awe
  %i.awg = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.awh = load float, ptr %i.awg, align 4, !tbaa !29
  %i.awi = call float @llvm.fmuladd.f32(float %i.awa, float %i.awf, float %i.awh)
  store float %i.awi, ptr %i.awg, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i

_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i: ; preds = %bb.iu, %bb.it, %bb.is, %bb.io, %bb.in, %bb.im, %bb.il, %bb.ik, %bb.ij, %bb.id, %bb.ic, %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit454.i.i.i.i.i.i, %bb.hp, %bb.ho, %bb.hn, %bb.hh, %bb.hg, %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit440.i.i.i.i.i.i, %bb.gt, %bb.gs, %bb.gr, %bb.gl, %bb.gk, %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit426.i.i.i.i.i.i, %bb.fx, %bb.fw, %bb.fv, %bb.fp, %bb.fo, %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit412.i.i.i.i.i.i, %bb.fb, %bb.fa, %bb.ez, %bb.et, %bb.es, %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit398.i.i.i.i.i.i, %bb.dv, %bb.du, %bb.dt, %bb.dn, %bb.dm, %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit377.i.i.i.i.i.i
  %exitcond.not.i.i97.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i96.i.i.i.i, %wide.trip.count.i.i92.i.i.i.i
  br i1 %exitcond.not.i.i97.i.i.i.i, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i, label %bb.cq, !llvm.loop !770

_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i: ; preds = %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i, %bb.cp, %._crit_edge.i.i.i.i.i.i, %bb.cj, %bb.cf, %bb.ce, %bb.cd, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.bm, %bb.bl, %bb.ba, %bb.ay
  %i.awj = load ptr, ptr %.0295473.i.i.i.i.i.i, align 8, !tbaa !796 ; 2 uses
  %.not.i.i93.i.i.i.i = icmp eq ptr %i.awj, null
  br i1 %.not.i.i93.i.i.i.i, label %_ZL28stbtt__fill_active_edges_newPfS_iP18stbtt__active_edgef.exit.i.i.i.i.i, label %bb.ax, !llvm.loop !771

_ZL28stbtt__fill_active_edges_newPfS_iP18stbtt__active_edgef.exit.i.i.i.i.i: ; preds = %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  br i1 %i.nu, label %.lr.ph22.i.i.i.preheader.i.i, label %.preheader.i.i.i.i.i

.lr.ph22.i.i.i.preheader.i.i:                     ; preds = %_ZL28stbtt__fill_active_edges_newPfS_iP18stbtt__active_edgef.exit.i.i.i.i.i
  %i.awk = mul nsw i32 %.07629.i.i.i.i.i, %i.ct
  br label %.lr.ph22.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph22.i.i.i.i.i, %_ZL28stbtt__fill_active_edges_newPfS_iP18stbtt__active_edgef.exit.i.i.i.i.i
  br i1 %.not91.i.i.i.i.i, label %._crit_edge25.i.i.i.i.i, label %.lr.ph24.i.i.i.i.i

.lr.ph22.i.i.i.i.i:                               ; preds = %.lr.ph22.i.i.i.i.i, %.lr.ph22.i.i.i.preheader.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.lr.ph22.i.i.i.i.i ], [ 0, %.lr.ph22.i.i.i.preheader.i.i ] ; 4 uses
  %.07721.i.i.i.i.i = phi float [ %i.awn, %.lr.ph22.i.i.i.i.i ], [ 0.000000e+00, %.lr.ph22.i.i.i.preheader.i.i ]
  %i.awl = getelementptr inbounds nuw [4 x i8], ptr %i.ne, i64 %indvars.iv.i.i.i.i.i
  %i.awm = load float, ptr %i.awl, align 4, !tbaa !29
  %i.awn = fadd float %.07721.i.i.i.i.i, %i.awm   ; 2 uses
  %i.awo = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i
  %i.awp = load float, ptr %i.awo, align 4, !tbaa !29
  %i.awq = fadd float %i.awp, %i.awn
  %i.awr = call float @llvm.fabs.f32(float %i.awq)
  %i.aws = call float @llvm.fmuladd.f32(float %i.awr, float 2.550000e+02, float 5.000000e-01)
  %i.awt = fptosi float %i.aws to i32
  %spec.store.select.i.i.i.i.i = call i32 @llvm.smin.i32(i32 %i.awt, i32 255)
  %i.awu = trunc i32 %spec.store.select.i.i.i.i.i to i8
  %i.awv = trunc nuw nsw i64 %indvars.iv.i.i.i.i.i to i32
  %i.aww = add nsw i32 %i.awk, %i.awv
  %i.awx = sext i32 %i.aww to i64
  %i.awy = getelementptr inbounds i8, ptr %i.ed, i64 %i.awx
  store i8 %i.awu, ptr %i.awy, align 1, !tbaa !50
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %i.nd
  br i1 %exitcond.not.i.i, label %.preheader.i.i.i.i.i, label %.lr.ph22.i.i.i.i.i, !llvm.loop !772

.lr.ph24.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i, %.lr.ph24.i.i.i.i.i
  %i.awz = phi ptr [ %i.axd, %.lr.ph24.i.i.i.i.i ], [ %.0..0..0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i.i, %.preheader.i.i.i.i.i ] ; 2 uses
  %i.axa = getelementptr inbounds nuw i8, ptr %i.awz, i64 8 ; 2 uses
  %i.axb = load <2 x float>, ptr %i.axa, align 8, !tbaa !29
  %i.axc = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.axb)
  store float %i.axc, ptr %i.axa, align 8, !tbaa !806
  %i.axd = load ptr, ptr %i.awz, align 8, !tbaa !793 ; 2 uses
  %.not92.i.i.i.i.i = icmp eq ptr %i.axd, null
  br i1 %.not92.i.i.i.i.i, label %._crit_edge25.i.i.i.i.i, label %.lr.ph24.i.i.i.i.i, !llvm.loop !773

._crit_edge25.i.i.i.i.i:                          ; preds = %.lr.ph24.i.i.i.i.i, %.preheader.i.i.i.i.i
  %i.axe = add nsw i32 %.07530.i.i.i.i.i, 1
  %i.axf = add nuw nsw i32 %.07629.i.i.i.i.i, 1   ; 2 uses
  %exitcond31.not.i.i = icmp eq i32 %i.axf, %i.cu
  br i1 %exitcond31.not.i.i, label %._crit_edge34.i.i.i.i.i, label %bb.ak, !llvm.loop !774

._crit_edge34.i.i.i.i.i:                          ; preds = %._crit_edge25.i.i.i.i.i
  %.not1.i.i.i.i.i.i = icmp eq ptr %.sroa.0.1.lcssa.i.i.i.i.i, null
  br i1 %.not1.i.i.i.i.i.i, label %_ZL20stbtt__hheap_cleanupP12stbtt__hheapPv.exit.i.i.i.i.i, label %.lr.ph.i94.i.i.i.i.i

.lr.ph.i94.i.i.i.i.i:                             ; preds = %._crit_edge34.i.i.i.i.i, %.lr.ph.i94.i.i.i.i.i
  %.02.i.i.i.i.i.i = phi ptr [ %i.axg, %.lr.ph.i94.i.i.i.i.i ], [ %.sroa.0.1.lcssa.i.i.i.i.i, %._crit_edge34.i.i.i.i.i ] ; 2 uses
  %i.axg = load ptr, ptr %.02.i.i.i.i.i.i, align 8, !tbaa !801 ; 2 uses
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.02.i.i.i.i.i.i)
  %.not.i95.i.i.i.i.i = icmp eq ptr %i.axg, null
  br i1 %.not.i95.i.i.i.i.i, label %_ZL20stbtt__hheap_cleanupP12stbtt__hheapPv.exit.i.i.i.i.i, label %.lr.ph.i94.i.i.i.i.i, !llvm.loop !775

_ZL20stbtt__hheap_cleanupP12stbtt__hheapPv.exit.i.i.i.i.i: ; preds = %.lr.ph.i94.i.i.i.i.i, %._crit_edge34.i.i.i.i.i, %bb.aj
  %.not.i.i.i.i.i = icmp eq ptr %.080.i.i.i.i.i, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZL29stbtt__rasterize_sorted_edgesP13stbtt__bitmapP11stbtt__edgeiiiiPv.exit.i.i.i.i, label %bb.iv

bb.iv:                                            ; preds = %_ZL20stbtt__hheap_cleanupP12stbtt__hheapPv.exit.i.i.i.i.i
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %.080.i.i.i.i.i)
  br label %_ZL29stbtt__rasterize_sorted_edgesP13stbtt__bitmapP11stbtt__edgeiiiiPv.exit.i.i.i.i

_ZL29stbtt__rasterize_sorted_edgesP13stbtt__bitmapP11stbtt__edgeiiiiPv.exit.i.i.i.i: ; preds = %bb.iv, %_ZL20stbtt__hheap_cleanupP12stbtt__hheapPv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.kz)
  %.pre.pre.i.i = load ptr, ptr %i.h, align 8, !tbaa !246
  br label %_ZL16stbtt__rasterizeP13stbtt__bitmapP12stbtt__pointPiiffffiiiPv.exit.i.i.i

_ZL16stbtt__rasterizeP13stbtt__bitmapP12stbtt__pointPiiffffiiiPv.exit.i.i.i: ; preds = %_ZL29stbtt__rasterize_sorted_edgesP13stbtt__bitmapP11stbtt__edgeiiiiPv.exit.i.i.i.i, %._crit_edge.i27.i.i.i
  %.pre.i.i = phi ptr [ %.pre.pre.i.i, %_ZL29stbtt__rasterize_sorted_edgesP13stbtt__bitmapP11stbtt__edgeiiiiPv.exit.i.i.i.i ], [ %.pre32.i.i, %._crit_edge.i27.i.i.i ]
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.gj)
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.ig)
  br label %_ZL29stbtt_MakeGlyphBitmapSubpixelPK14stbtt_fontinfoPhiiiffffi.exit.i

_ZL29stbtt_MakeGlyphBitmapSubpixelPK14stbtt_fontinfoPhiiiffffi.exit.i: ; preds = %_ZL16stbtt__rasterizeP13stbtt__bitmapP12stbtt__pointPiiffffiiiPv.exit.i.i.i, %_ZL19stbtt_FlattenCurvesP12stbtt_vertexifPPiS1_Pv.exit.thread.i.i.i
  %i.axh = phi ptr [ %.pre.i.i, %_ZL16stbtt__rasterizeP13stbtt__bitmapP12stbtt__pointPiiffffiiiPv.exit.i.i.i ], [ %.pre32.i.i, %_ZL19stbtt_FlattenCurvesP12stbtt_vertexifPPiS1_Pv.exit.thread.i.i.i ]
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.axh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #38
  %i.axi = icmp sgt i32 %i.al, 1
  br i1 %i.axi, label %bb.iw, label %bb.iy

bb.iw:                                            ; preds = %_ZL29stbtt_MakeGlyphBitmapSubpixelPK14stbtt_fontinfoPhiiiffffi.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  store i64 0, ptr %i.b, align 8
  %i.axj = icmp sgt i32 %i.cv, 1
  br i1 %i.axj, label %.lr.ph148.i.i, label %_ZL18stbtt__h_prefilterPhiiij.exit.i

.lr.ph148.i.i:                                    ; preds = %bb.iw
  %i.axk = sub i32 %i.ct, %i.al
  %i.axl = zext nneg i32 %i.al to i64
  %.not113.i.i = icmp slt i32 %i.axk, 0           ; 5 uses
  %i.axm = sext i32 %i.ct to i64
  %wide.trip.count.i.i = zext i32 %i.cr to i64    ; 8 uses
  %i.axn = add nsw i64 %wide.trip.count.i.i, -1   ; 2 uses
  %xtraiter367 = and i64 %wide.trip.count.i.i, 1
  %i.axo = icmp eq i64 %i.axn, 0
  %unroll_iter = and i64 %wide.trip.count.i.i, 4294967294
  %lcmp.mod368.not = icmp eq i64 %xtraiter367, 0
  %lcmp.mod370 = trunc i32 %i.cr to i1
  %xtraiter371 = and i64 %wide.trip.count.i.i, 1
  %i.axp = icmp eq i64 %i.axn, 0
  %unroll_iter375 = and i64 %wide.trip.count.i.i, 4294967294
  %lcmp.mod372.not = icmp eq i64 %xtraiter371, 0
  %lcmp.mod374 = trunc i32 %i.cr to i1
  br label %bb.ix

bb.ix:                                            ; preds = %._crit_edge.i.i, %.lr.ph148.i.i
  %.095146.i.i = phi i32 [ 0, %.lr.ph148.i.i ], [ %i.bcy, %._crit_edge.i.i ]
  %.096144.i.i = phi ptr [ %i.ed, %.lr.ph148.i.i ], [ %i.bcx, %._crit_edge.i.i ] ; 11 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.b, i8 0, i64 %i.axl, i1 false)
  switch i32 %i.al, label %.preheader.i.i [
    i32 2, label %.preheader105.i.i
    i32 3, label %.preheader107.i.i
    i32 4, label %.preheader109.i.i
    i32 5, label %.preheader111.i.i
  ]

.preheader111.i.i:                                ; preds = %bb.ix
  br i1 %.not113.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

.preheader109.i.i:                                ; preds = %bb.ix
  br i1 %.not113.i.i, label %.loopexit.i.i, label %.lr.ph120.i.i.preheader

.lr.ph120.i.i.preheader:                          ; preds = %.preheader109.i.i
  br i1 %i.axo, label %.lr.ph120.i.i.epil.preheader, label %.lr.ph120.i.i

.preheader107.i.i:                                ; preds = %bb.ix
  br i1 %.not113.i.i, label %.loopexit.i.i, label %.lr.ph126.i.i

.preheader105.i.i:                                ; preds = %bb.ix
  br i1 %.not113.i.i, label %.loopexit.i.i, label %.lr.ph132.i.i.preheader

.lr.ph132.i.i.preheader:                          ; preds = %.preheader105.i.i
  br i1 %i.axp, label %.lr.ph132.i.i.epil.preheader, label %.lr.ph132.i.i

.preheader.i.i:                                   ; preds = %bb.ix
  br i1 %.not113.i.i, label %.loopexit.i.i, label %.lr.ph138.i.i

.lr.ph132.i.i:                                    ; preds = %.lr.ph132.i.i.preheader, %.lr.ph132.i.i
  %indvars.iv174.i.i = phi i64 [ %indvars.iv.next175.i.i.1, %.lr.ph132.i.i ], [ 0, %.lr.ph132.i.i.preheader ] ; 6 uses
  %.0131.i.i = phi i32 [ %i.aym, %.lr.ph132.i.i ], [ 0, %.lr.ph132.i.i.preheader ]
  %niter376 = phi i64 [ %niter376.next.1, %.lr.ph132.i.i ], [ 0, %.lr.ph132.i.i.preheader ]
  %i.axq = getelementptr inbounds nuw i8, ptr %.096144.i.i, i64 %indvars.iv174.i.i ; 2 uses
  %i.axr = load i8, ptr %i.axq, align 1, !tbaa !50 ; 2 uses
  %i.axs = zext i8 %i.axr to i32
  %i.axt = and i64 %indvars.iv174.i.i, 6
  %i.axu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.axt
  %i.axv = load i8, ptr %i.axu, align 2, !tbaa !50
  %i.axw = zext i8 %i.axv to i32
  %i.axx = sub nsw i32 %i.axs, %i.axw
  %i.axy = add i32 %i.axx, %.0131.i.i             ; 2 uses
  %i.axz = add nuw nsw i64 %indvars.iv174.i.i, 2
  %i.aya = and i64 %i.axz, 6
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aya
  store i8 %i.axr, ptr %i.ayb, align 2, !tbaa !50
  %i.ayc = lshr i32 %i.axy, 1
  %i.ayd = trunc i32 %i.ayc to i8
  store i8 %i.ayd, ptr %i.axq, align 1, !tbaa !50
  %indvars.iv.next175.i.i = or disjoint i64 %indvars.iv174.i.i, 1 ; 2 uses
  %i.aye = getelementptr inbounds nuw i8, ptr %.096144.i.i, i64 %indvars.iv.next175.i.i ; 2 uses
  %i.ayf = load i8, ptr %i.aye, align 1, !tbaa !50 ; 2 uses
  %i.ayg = zext i8 %i.ayf to i32
  %i.ayh = and i64 %indvars.iv.next175.i.i, 7
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ayh
  %i.ayj = load i8, ptr %i.ayi, align 1, !tbaa !50
  %i.ayk = zext i8 %i.ayj to i32
  %i.ayl = sub nsw i32 %i.ayg, %i.ayk
  %i.aym = add i32 %i.ayl, %i.axy                 ; 4 uses
  %i.ayn = add nuw nsw i64 %indvars.iv174.i.i, 3
  %i.ayo = and i64 %i.ayn, 7
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ayo
  store i8 %i.ayf, ptr %i.ayp, align 1, !tbaa !50
  %i.ayq = lshr i32 %i.aym, 1
  %i.ayr = trunc i32 %i.ayq to i8
  store i8 %i.ayr, ptr %i.aye, align 1, !tbaa !50
  %indvars.iv.next175.i.i.1 = add nuw nsw i64 %indvars.iv174.i.i, 2 ; 2 uses
  %niter376.next.1 = add nuw i64 %niter376, 2     ; 2 uses
  %niter376.ncmp.1 = icmp eq i64 %niter376.next.1, %unroll_iter375
  br i1 %niter376.ncmp.1, label %.loopexit.i.i.loopexit349.unr-lcssa, label %.lr.ph132.i.i, !llvm.loop !776

.lr.ph126.i.i:                                    ; preds = %.preheader107.i.i, %.lr.ph126.i.i
  %indvars.iv169.i.i = phi i64 [ %indvars.iv.next170.i.i, %.lr.ph126.i.i ], [ 0, %.preheader107.i.i ] ; 4 uses
  %.1125.i.i = phi i32 [ %i.aza, %.lr.ph126.i.i ], [ 0, %.preheader107.i.i ]
  %i.ays = getelementptr inbounds nuw i8, ptr %.096144.i.i, i64 %indvars.iv169.i.i ; 2 uses
  %i.ayt = load i8, ptr %i.ays, align 1, !tbaa !50 ; 2 uses
  %i.ayu = zext i8 %i.ayt to i32
  %i.ayv = and i64 %indvars.iv169.i.i, 7
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ayv
  %i.ayx = load i8, ptr %i.ayw, align 1, !tbaa !50
  %i.ayy = zext i8 %i.ayx to i32
  %i.ayz = sub nsw i32 %i.ayu, %i.ayy
  %i.aza = add i32 %i.ayz, %.1125.i.i             ; 3 uses
  %i.azb = add nuw nsw i64 %indvars.iv169.i.i, 3
  %i.azc = and i64 %i.azb, 7
  %i.azd = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.azc
  store i8 %i.ayt, ptr %i.azd, align 1, !tbaa !50
  %i.aze = udiv i32 %i.aza, 3
  %i.azf = trunc i32 %i.aze to i8
  store i8 %i.azf, ptr %i.ays, align 1, !tbaa !50
  %indvars.iv.next170.i.i = add nuw nsw i64 %indvars.iv169.i.i, 1 ; 2 uses
  %exitcond173.not.i.i = icmp eq i64 %indvars.iv.next170.i.i, %wide.trip.count.i.i
  br i1 %exitcond173.not.i.i, label %.loopexit.i.i, label %.lr.ph126.i.i, !llvm.loop !777

.lr.ph120.i.i:                                    ; preds = %.lr.ph120.i.i.preheader, %.lr.ph120.i.i
  %indvars.iv164.i.i = phi i64 [ %indvars.iv.next165.i.i.1, %.lr.ph120.i.i ], [ 0, %.lr.ph120.i.i.preheader ] ; 4 uses
  %.2119.i.i = phi i32 [ %i.bab, %.lr.ph120.i.i ], [ 0, %.lr.ph120.i.i.preheader ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph120.i.i ], [ 0, %.lr.ph120.i.i.preheader ]
  %i.azg = getelementptr inbounds nuw i8, ptr %.096144.i.i, i64 %indvars.iv164.i.i ; 2 uses
  %i.azh = load i8, ptr %i.azg, align 1, !tbaa !50 ; 2 uses
  %i.azi = zext i8 %i.azh to i32
  %i.azj = and i64 %indvars.iv164.i.i, 6          ; 2 uses
  %i.azk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.azj
  %i.azl = load i8, ptr %i.azk, align 2, !tbaa !50
  %i.azm = zext i8 %i.azl to i32
  %i.azn = sub nsw i32 %i.azi, %i.azm
end_hunk_2
