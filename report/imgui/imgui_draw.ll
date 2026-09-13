Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_draw?download=true
inline.NumInlined: 1479
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 299
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 352
begin_hunk_0_@_ZN10ImDrawList10PrimRectUVERK6ImVec2S2_S2_S2_j:bb.a
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
  %i.v = sitofp i32 %i.u to float
  %i.w = fsub float %i.t, %i.v
  %i.x = and i32 %i.p, 2
  %i.y = icmp eq i32 %i.x, 0
  %i.z = icmp sgt i32 %i.u, 31
  %or.cond.not453 = select i1 %i.y, i1 true, i1 %i.z
  %i.aa = fcmp ugt float %i.w, f0x3727C5AC
  %or.cond3.not450 = select i1 %or.cond.not453, i1 true, i1 %i.aa
  %i.ab = fcmp une float %i.j, 1.000000e+00
  %.not448 = select i1 %or.cond3.not450, i1 true, i1 %i.ab ; 8 uses
  %.v = select i1 %i.k, i32 18, i32 12
  %.v530 = select i1 %.not448, i32 %.v, i32 6
  %i.ac = mul nuw nsw i32 %.v530, %i.h
  br i1 %.not448, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = shl nuw nsw i32 %2, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ae = shl nuw nsw i32 %2, 2
  %i.af = mul nuw nsw i32 %2, 3
  %i.ag = select i1 %i.k, i32 %i.ae, i32 %i.af
  %i.ah = select i1 %i.k, i32 5, i32 3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not446 = phi i32 [ 3, %bb.f ], [ %i.ah, %bb.g ]
  %i.ai = phi i32 [ %i.ad, %bb.f ], [ %i.ag, %bb.g ] ; 2 uses
  tail call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %i.ac, i32 noundef %i.ai)
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !73  ; 3 uses
  %i.ak = mul nuw nsw i32 %.not446, %2            ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 76 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !99
  %.not.i = icmp sgt i32 %i.ak, %i.am
  br i1 %.not.i, label %bb.i, label %.lr.ph.preheader

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 80 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !47 ; 2 uses
  %.not4.i = icmp eq ptr %i.ao, null
  br i1 %.not4.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.ao)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ap = zext nneg i32 %i.ak to i64
  %i.aq = shl nuw nsw i64 %i.ap, 3
  %i.ar = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.aq)
  store ptr %i.ar, ptr %i.an, align 8, !tbaa !47
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !99
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !73
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.k, %bb.h
  %i.as = phi ptr [ %i.aj, %bb.h ], [ %.pre, %bb.k ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 80
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !247 ; 11 uses
  %i.av = zext nneg i32 %2 to i64                 ; 7 uses
  %i.aw = getelementptr [8 x i8], ptr %i.au, i64 %i.av ; 14 uses
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.m
  br i1 %.not443, label %bb.n, label %.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.ax = icmp eq i64 %indvars.iv.next, %i.av
  %i.ay = select i1 %i.ax, i64 0, i64 %indvars.iv.next
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ay
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.bb = load <2 x float>, ptr %i.az, align 4, !tbaa !29
  %i.bc = load <2 x float>, ptr %i.ba, align 4, !tbaa !29
  %i.bd = fsub <2 x float> %i.bb, %i.bc           ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %i.bd, %i.bd
  %i.be = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bf = extractelement <2 x float> %i.bd, i64 0 ; 2 uses
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.bf, float %i.be) ; 2 uses
  %i.bh = fcmp ogt float %i.bg, 0.000000e+00
  br i1 %i.bh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph
  %i.bi = insertelement <4 x float> poison, float %i.bg, i64 0
  %i.bj = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.bi)
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> poison, <2 x i32> zeroinitializer
  %i.bl = fmul <2 x float> %i.bd, %i.bk
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph
  %i.bm = phi <2 x float> [ %i.bl, %bb.l ], [ %i.bd, %.lr.ph ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv ; 2 uses
  %i.bo = extractelement <2 x float> %i.bm, i64 1
  store float %i.bo, ptr %i.bn, align 4, !tbaa !237
  %i.bp = extractelement <2 x float> %i.bm, i64 0
  %i.bq = fneg float %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store float %i.bq, ptr %i.br, align 4, !tbaa !238
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !565

bb.n:                                             ; preds = %._crit_edge
  %i.bs = getelementptr i8, ptr %i.aw, i64 -16
  %i.bt = zext nneg i32 %i.g to i64               ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bt ; 5 uses
  %i.bv = load i64, ptr %i.bs, align 4
  store i64 %i.bv, ptr %i.bu, align 4
  %or.cond5 = select i1 %.not448, i1 %i.k, i1 false
  br i1 %or.cond5, label %bb.u, label %bb.o

.thread:                                          ; preds = %._crit_edge
  %or.cond5527 = select i1 %.not448, i1 %i.k, i1 false
  br i1 %or.cond5527, label %.thread529, label %.thread528

.thread529:                                       ; preds = %.thread
  %i.bw = fsub float %i.t, %i.j
  %i.bx = fmul float %i.bw, 5.000000e-01
  br label %.lr.ph553

.thread528:                                       ; preds = %.thread
  %i.by = tail call float @llvm.fmuladd.f32(float %i.t, float 5.000000e-01, float 1.000000e+00)
  %i.bz = select i1 %.not448, float %i.j, float %i.by
  br label %.lr.ph543

bb.o:                                             ; preds = %bb.n
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.t, float 5.000000e-01, float 1.000000e+00)
  %i.cb = select i1 %.not448, float %i.j, float %i.ca ; 2 uses
  %i.cc = load <2 x float>, ptr %i.au, align 4, !tbaa !29
  %i.cd = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.cf = fmul <2 x float> %i.ce, %i.cc
  %i.cg = load <2 x float>, ptr %1, align 4, !tbaa !29
  %i.ch = fadd <2 x float> %i.cf, %i.cg
  store <2 x float> %i.ch, ptr %i.aw, align 4
  %i.ci = load <2 x float>, ptr %i.au, align 4, !tbaa !29
  %i.cj = fmul <2 x float> %i.ce, %i.ci
  %i.ck = load <2 x float>, ptr %1, align 4, !tbaa !29
  %i.cl = fsub <2 x float> %i.ck, %i.cj
  %i.cm = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store <2 x float> %i.cl, ptr %i.cm, align 4
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bt ; 2 uses
  %i.co = load <2 x float>, ptr %i.bu, align 4, !tbaa !29
  %i.cp = fmul <2 x float> %i.ce, %i.co
  %i.cq = load <2 x float>, ptr %i.cn, align 4, !tbaa !29
  %i.cr = fadd <2 x float> %i.cp, %i.cq
  %i.cs = shl nuw nsw i32 %i.g, 1
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ct ; 2 uses
  store <2 x float> %i.cr, ptr %i.cu, align 4
  %i.cv = load <2 x float>, ptr %i.bu, align 4, !tbaa !29
  %i.cw = fmul <2 x float> %i.ce, %i.cv
  %i.cx = load <2 x float>, ptr %i.cn, align 4, !tbaa !29
  %i.cy = fsub <2 x float> %i.cx, %i.cw
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store <2 x float> %i.cy, ptr %i.cz, align 4
  br label %.lr.ph543

.lr.ph543:                                        ; preds = %bb.o, %.thread528
  %i.da = phi float [ %i.bz, %.thread528 ], [ %i.cb, %bb.o ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !92 ; 2 uses
  %i.dd = select i1 %.not448, i32 3, i32 2
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %wide.trip.count565 = zext nneg i32 %i.h to i64 ; 2 uses
  %i.df = insertelement <2 x float> poison, float %i.da, i64 0
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> zeroinitializer
  %.promoted625 = load ptr, ptr %i.de, align 8, !tbaa !113
  br label %.backedge

.lr.ph549:                                        ; preds = %bb.r
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %.pre593 = load ptr, ptr %i.dh, align 8, !tbaa !242
  br label %bb.t

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph543
  %i.di = phi ptr [ %.promoted625, %.lr.ph543 ], [ %i.fi, %.backedge.backedge ] ; 13 uses
  %indvars.iv562 = phi i64 [ 0, %.lr.ph543 ], [ %indvars.iv.next563, %.backedge.backedge ] ; 2 uses
  %.0433540 = phi i32 [ %i.dc, %.lr.ph543 ], [ %i.dn, %.backedge.backedge ] ; 3 uses
  %indvars.iv.next563 = add nuw nsw i64 %indvars.iv562, 1 ; 5 uses
  %i.dj = icmp eq i64 %indvars.iv.next563, %i.av  ; 2 uses
  %i.dk = trunc nuw nsw i64 %indvars.iv.next563 to i32
  %i.dl = select i1 %i.dj, i32 0, i32 %i.dk       ; 2 uses
  %i.dm = add i32 %.0433540, %i.dd
  %i.dn = select i1 %i.dj, i32 %i.dc, i32 %i.dm   ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv562
  %i.dp = zext nneg i32 %i.dl to i64              ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.dp
  %i.dr = load <2 x float>, ptr %i.do, align 4, !tbaa !29
  %i.ds = load <2 x float>, ptr %i.dq, align 4, !tbaa !29
  %i.dt = fadd <2 x float> %i.dr, %i.ds
  %i.du = fmul <2 x float> %i.dt, splat (float 5.000000e-01) ; 5 uses
  %foldExtExtBinop617 = fmul <2 x float> %i.du, %i.du
  %i.dv = extractelement <2 x float> %foldExtExtBinop617, i64 1
  %i.dw = extractelement <2 x float> %i.du, i64 0 ; 2 uses
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.dw, float %i.dw, float %i.dv) ; 2 uses
  %i.dy = fcmp ogt float %i.dx, f0x358637BD
  br i1 %i.dy, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.backedge
  %i.dz = fdiv float 1.000000e+00, %i.dx          ; 2 uses
  %i.ea = fcmp ogt float %i.dz, 1.000000e+02
  %spec.store.select = select i1 %i.ea, float 1.000000e+02, float %i.dz
  %i.eb = insertelement <2 x float> poison, float %spec.store.select, i64 0
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ed = fmul <2 x float> %i.du, %i.ec
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.backedge
  %i.ee = phi <2 x float> [ %i.ed, %bb.p ], [ %i.du, %.backedge ]
  %i.ef = fmul <2 x float> %i.dg, %i.ee           ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN10ImDrawList11AddPolylineEPK6ImVec2ijfi:bb.a
  %i.ia = fmul <2 x float> %i.hm, %i.hq
  %i.ib = load <2 x float>, ptr %1, align 4, !tbaa !29
  %i.ic = fsub <2 x float> %i.ib, %i.ia
  %i.id = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store <2 x float> %i.ic, ptr %i.id, align 4
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bt ; 4 uses
  %i.if = load <2 x float>, ptr %i.bu, align 4, !tbaa !29
  %i.ig = fmul <2 x float> %i.hm, %i.if
  %i.ih = load <2 x float>, ptr %i.ie, align 4, !tbaa !29
  %i.ii = fadd <2 x float> %i.ig, %i.ih
  %i.ij = shl nuw nsw i32 %i.g, 2
  %i.ik = zext nneg i32 %i.ij to i64
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ik ; 4 uses
  store <2 x float> %i.ii, ptr %i.il, align 4
  %i.im = load <2 x float>, ptr %i.bu, align 4, !tbaa !29 ; 2 uses
  %i.in = fmul <2 x float> %i.hs, %i.im           ; 2 uses
  %i.io = load <2 x float>, ptr %i.ie, align 4, !tbaa !29
  %i.ip = fadd <2 x float> %i.in, %i.io
  %i.iq = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  store <2 x float> %i.ip, ptr %i.iq, align 4
  %i.ir = load <2 x float>, ptr %i.ie, align 4, !tbaa !29
  %i.is = fsub <2 x float> %i.ir, %i.in
  %i.it = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  store <2 x float> %i.is, ptr %i.it, align 4
  %i.iu = fmul <2 x float> %i.hm, %i.im
  %i.iv = load <2 x float>, ptr %i.ie, align 4, !tbaa !29
  %i.iw = fsub <2 x float> %i.iv, %i.iu
  %i.ix = getelementptr inbounds nuw i8, ptr %i.il, i64 24
  store <2 x float> %i.iw, ptr %i.ix, align 4
  br label %.lr.ph553

.lr.ph553:                                        ; preds = %bb.u, %.thread529
  %i.iy = phi float [ %i.bx, %.thread529 ], [ %i.hi, %bb.u ] ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !92 ; 2 uses
  %i.jb = fadd float %i.j, %i.iy
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted = load ptr, ptr %i.jc, align 8, !tbaa !113
  %wide.trip.count580 = zext nneg i32 %i.h to i64
  %i.jd = insertelement <2 x float> poison, float %i.jb, i64 0
  %i.je = shufflevector <2 x float> %i.jd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jf = insertelement <2 x float> poison, float %i.iy, i64 0
  %i.jg = shufflevector <2 x float> %i.jf, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.v

.lr.ph555:                                        ; preds = %bb.x
  store ptr %i.ls, ptr %i.jc, align 8, !tbaa !113
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 10 uses
  %.pre594 = load ptr, ptr %i.jh, align 8, !tbaa !242
  br label %bb.y

bb.v:                                             ; preds = %.lr.ph553, %bb.x
  %indvars.iv577 = phi i64 [ 0, %.lr.ph553 ], [ %indvars.iv.next578, %bb.x ] ; 2 uses
  %i.ji = phi ptr [ %.promoted, %.lr.ph553 ], [ %i.ls, %bb.x ] ; 9 uses
  %.0425550 = phi i32 [ %i.ja, %.lr.ph553 ], [ %spec.select, %bb.x ] ; 3 uses
  %indvars.iv.next578 = add nuw nsw i64 %indvars.iv577, 1 ; 4 uses
  %i.jj = icmp eq i64 %indvars.iv.next578, %i.av  ; 2 uses
  %i.jk = trunc nuw nsw i64 %indvars.iv.next578 to i32
  %i.jl = select i1 %i.jj, i32 0, i32 %i.jk       ; 2 uses
  %i.jm = add i32 %.0425550, 4
  %spec.select = select i1 %i.jj, i32 %i.ja, i32 %i.jm ; 3 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv577
  %i.jo = zext nneg i32 %i.jl to i64              ; 2 uses
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.jo
  %i.jq = load <2 x float>, ptr %i.jn, align 4, !tbaa !29
  %i.jr = load <2 x float>, ptr %i.jp, align 4, !tbaa !29
  %i.js = fadd <2 x float> %i.jq, %i.jr
  %i.jt = fmul <2 x float> %i.js, splat (float 5.000000e-01) ; 5 uses
  %foldExtExtBinop619 = fmul <2 x float> %i.jt, %i.jt
  %i.ju = extractelement <2 x float> %foldExtExtBinop619, i64 1
  %i.jv = extractelement <2 x float> %i.jt, i64 0 ; 2 uses
  %i.jw = tail call float @llvm.fmuladd.f32(float %i.jv, float %i.jv, float %i.ju) ; 2 uses
  %i.jx = fcmp ogt float %i.jw, f0x358637BD
  br i1 %i.jx, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.jy = fdiv float 1.000000e+00, %i.jw          ; 2 uses
  %i.jz = fcmp ogt float %i.jy, 1.000000e+02
  %spec.store.select6 = select i1 %i.jz, float 1.000000e+02, float %i.jy
  %i.ka = insertelement <2 x float> poison, float %spec.store.select6, i64 0
  %i.kb = shufflevector <2 x float> %i.ka, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kc = fmul <2 x float> %i.jt, %i.kb
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.kd = phi <2 x float> [ %i.kc, %bb.w ], [ %i.jt, %bb.v ] ; 2 uses
  %i.ke = fmul <2 x float> %i.je, %i.kd           ; 2 uses
  %i.kf = shl nsw i32 %i.jl, 2
  %i.kg = zext nneg i32 %i.kf to i64
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.kg ; 4 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.jo ; 4 uses
  %i.kj = load <2 x float>, ptr %i.ki, align 4, !tbaa !29
  %i.kk = fadd <2 x float> %i.ke, %i.kj
  store <2 x float> %i.kk, ptr %i.kh, align 4, !tbaa !29
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.km = fmul <2 x float> %i.jg, %i.kd           ; 2 uses
  %i.kn = load <2 x float>, ptr %i.ki, align 4, !tbaa !29
  %i.ko = fadd <2 x float> %i.km, %i.kn
  store <2 x float> %i.ko, ptr %i.kl, align 4, !tbaa !29
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %i.kq = load <2 x float>, ptr %i.ki, align 4, !tbaa !29
  %i.kr = fsub <2 x float> %i.kq, %i.km
  store <2 x float> %i.kr, ptr %i.kp, align 4, !tbaa !29
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kh, i64 24
  %i.kt = load <2 x float>, ptr %i.ki, align 4, !tbaa !29
  %i.ku = fsub <2 x float> %i.kt, %i.ke
  store <2 x float> %i.ku, ptr %i.ks, align 4, !tbaa !29
  %i.kv = trunc i32 %spec.select to i16
  %i.kw = insertelement <2 x i16> poison, i16 %i.kv, i64 0
  %i.kx = trunc i32 %.0425550 to i16
  %i.ky = insertelement <2 x i16> %i.kw, i16 %i.kx, i64 1
  %i.kz = shufflevector <2 x i16> %i.ky, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.la = trunc i32 %spec.select to i16           ; 3 uses
  %i.lb = trunc i32 %.0425550 to i16              ; 3 uses
  %i.lc = add <4 x i16> %i.kz, <i16 1, i16 1, i16 2, i16 2> ; 3 uses
  %i.ld = shufflevector <4 x i16> %i.lc, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 2, i32 3, i32 0, i32 0, i32 1>
  %i.le = add i16 %i.la, 1
  store <8 x i16> %i.ld, ptr %i.ji, align 2, !tbaa !243
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  store i16 %i.lb, ptr %i.lf, align 2, !tbaa !243
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ji, i64 18
  store i16 %i.lb, ptr %i.lg, align 2, !tbaa !243
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ji, i64 20
  store i16 %i.la, ptr %i.lh, align 2, !tbaa !243
  %i.li = getelementptr inbounds nuw i8, ptr %i.ji, i64 22
  store i16 %i.le, ptr %i.li, align 2, !tbaa !243
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ji, i64 24
  %i.lk = extractelement <4 x i16> %i.lc, i64 3   ; 2 uses
  store i16 %i.lk, ptr %i.lj, align 2, !tbaa !243
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ji, i64 26
  %i.lm = shufflevector <4 x i16> %i.lc, <4 x i16> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.ln = insertelement <4 x i16> %i.lm, i16 %i.lb, i64 1
  %i.lo = insertelement <4 x i16> %i.ln, i16 %i.la, i64 3
  %i.lp = add <4 x i16> %i.lo, <i16 0, i16 3, i16 poison, i16 3>
  %i.lq = shufflevector <4 x i16> %i.lp, <4 x i16> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  store <4 x i16> %i.lq, ptr %i.ll, align 2, !tbaa !243
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ji, i64 34
  store i16 %i.lk, ptr %i.lr, align 2, !tbaa !243
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ji, i64 36 ; 2 uses
  %exitcond581.not = icmp eq i64 %indvars.iv.next578, %wide.trip.count580
  br i1 %exitcond581.not, label %.lr.ph555, label %bb.v, !llvm.loop !569

bb.y:                                             ; preds = %.lr.ph555, %bb.y
  %i.lt = phi ptr [ %.pre594, %.lr.ph555 ], [ %i.mv, %bb.y ]
  %indvars.iv582 = phi i64 [ 0, %.lr.ph555 ], [ %indvars.iv.next583, %bb.y ] ; 2 uses
  %.idx608 = shl nuw nsw i64 %indvars.iv582, 5
  %i.lu = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx608 ; 4 uses
  %i.lv = load i64, ptr %i.lu, align 4
  store i64 %i.lv, ptr %i.lt, align 4
  %i.lw = load ptr, ptr %i.jh, align 8, !tbaa !242
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  store i64 %i.f, ptr %i.lx, align 4
  %i.ly = load ptr, ptr %i.jh, align 8, !tbaa !242 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  store i32 %i.r, ptr %i.lz, align 4, !tbaa !245
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ly, i64 20
  %i.mc = load i64, ptr %i.ma, align 4
  store i64 %i.mc, ptr %i.mb, align 4
  %i.md = load ptr, ptr %i.jh, align 8, !tbaa !242
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 28
  store i64 %i.f, ptr %i.me, align 4
  %i.mf = load ptr, ptr %i.jh, align 8, !tbaa !242 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 36
  store i32 %3, ptr %i.mg, align 4, !tbaa !245
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mf, i64 40
  %i.mj = load i64, ptr %i.mh, align 4
  store i64 %i.mj, ptr %i.mi, align 4
  %i.mk = load ptr, ptr %i.jh, align 8, !tbaa !242
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 48
  store i64 %i.f, ptr %i.ml, align 4
  %i.mm = load ptr, ptr %i.jh, align 8, !tbaa !242 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 56
  store i32 %3, ptr %i.mn, align 4, !tbaa !245
  %i.mo = getelementptr inbounds nuw i8, ptr %i.lu, i64 24
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mm, i64 60
  %i.mq = load i64, ptr %i.mo, align 4
  store i64 %i.mq, ptr %i.mp, align 4
  %i.mr = load ptr, ptr %i.jh, align 8, !tbaa !242
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 68
  store i64 %i.f, ptr %i.ms, align 4
  %i.mt = load ptr, ptr %i.jh, align 8, !tbaa !242 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 76
  store i32 %i.r, ptr %i.mu, align 4, !tbaa !245
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 80 ; 2 uses
  store ptr %i.mv, ptr %i.jh, align 8, !tbaa !242
  %indvars.iv.next583 = add nuw nsw i64 %indvars.iv582, 1 ; 2 uses
  %exitcond586.not = icmp eq i64 %indvars.iv.next583, %i.av
  br i1 %exitcond586.not, label %.loopexit535, label %bb.y, !llvm.loop !570

.loopexit535:                                     ; preds = %bb.s, %bb.t, %bb.y
  %i.mw = and i32 %i.ai, 65535
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !92
  %i.mz = add i32 %i.my, %i.mw
  store i32 %i.mz, ptr %i.mx, align 4, !tbaa !92
  br label %.loopexit

.lr.ph558:                                        ; preds = %bb.d
  %i.na = mul nuw nsw i32 %i.h, 6
  %i.nb = shl nsw i32 %i.h, 2
  tail call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %i.na, i32 noundef %i.nb)
  %i.nc = fmul float %4, 5.000000e-01
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ng = zext nneg i32 %2 to i64
  %wide.trip.count590 = zext nneg i32 %i.h to i64
  %i.nh = insertelement <2 x float> poison, float %i.nc, i64 0
  %i.ni = shufflevector <2 x float> %i.nh, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph558, %bb.ab
  %indvars.iv587 = phi i64 [ 0, %.lr.ph558 ], [ %indvars.iv.next588, %bb.ab ] ; 2 uses
  %indvars.iv.next588 = add nuw nsw i64 %indvars.iv587, 1 ; 4 uses
  %i.nj = icmp eq i64 %indvars.iv.next588, %i.ng
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv587 ; 3 uses
  %i.nl = select i1 %i.nj, i64 0, i64 %indvars.iv.next588
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.nl ; 4 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 4 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nk, i64 4
  %i.np = load <2 x float>, ptr %i.nm, align 4, !tbaa !29
  %i.nq = load <2 x float>, ptr %i.nk, align 4, !tbaa !29 ; 3 uses
  %i.nr = fsub <2 x float> %i.np, %i.nq           ; 5 uses
  %foldExtExtBinop621 = fmul <2 x float> %i.nr, %i.nr
  %i.ns = extractelement <2 x float> %foldExtExtBinop621, i64 1
  %i.nt = extractelement <2 x float> %i.nr, i64 0 ; 2 uses
  %i.nu = tail call float @llvm.fmuladd.f32(float %i.nt, float %i.nt, float %i.ns) ; 2 uses
  %i.nv = fcmp ogt float %i.nu, 0.000000e+00
  br i1 %i.nv, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.nw = insertelement <4 x float> poison, float %i.nu, i64 0
  %i.nx = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.nw)
  %i.ny = shufflevector <4 x float> %i.nx, <4 x float> poison, <2 x i32> zeroinitializer
  %i.nz = fmul <2 x float> %i.nr, %i.ny
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.oa = phi <2 x float> [ %i.nz, %bb.aa ], [ %i.nr, %bb.z ]
  %i.ob = shufflevector <2 x float> %i.oa, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.oc = fmul <2 x float> %i.ni, %i.ob           ; 4 uses
  %i.od = load ptr, ptr %i.nd, align 8, !tbaa !242 ; 2 uses
  %i.oe = fadd <2 x float> %i.nq, %i.oc
  %i.of = fsub <2 x float> %i.nq, %i.oc
  %i.og = shufflevector <2 x float> %i.oe, <2 x float> %i.of, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.og, ptr %i.od, align 4, !tbaa !29
  %i.oh = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  store i64 %i.f, ptr %i.oh, align 4
  %i.oi = load ptr, ptr %i.nd, align 8, !tbaa !242 ; 4 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  store i32 %3, ptr %i.oj, align 4, !tbaa !245
  %i.ok = load float, ptr %i.nm, align 4, !tbaa !237
  %i.ol = extractelement <2 x float> %i.oc, i64 0 ; 3 uses
  %i.om = fadd float %i.ol, %i.ok
  %i.on = getelementptr inbounds nuw i8, ptr %i.oi, i64 20
  store float %i.om, ptr %i.on, align 4, !tbaa !249
  %i.oo = load float, ptr %i.nn, align 4, !tbaa !238
  %i.op = extractelement <2 x float> %i.oc, i64 1 ; 3 uses
  %i.oq = fsub float %i.oo, %i.op
  %i.or = getelementptr inbounds nuw i8, ptr %i.oi, i64 24
  store float %i.oq, ptr %i.or, align 4, !tbaa !250
  %i.os = getelementptr inbounds nuw i8, ptr %i.oi, i64 28
  store i64 %i.f, ptr %i.os, align 4
  %i.ot = load ptr, ptr %i.nd, align 8, !tbaa !242 ; 4 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 36
  store i32 %3, ptr %i.ou, align 4, !tbaa !245
  %i.ov = load float, ptr %i.nm, align 4, !tbaa !237
  %i.ow = fsub float %i.ov, %i.ol
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ot, i64 40
  store float %i.ow, ptr %i.ox, align 4, !tbaa !249
  %i.oy = load float, ptr %i.nn, align 4, !tbaa !238
  %i.oz = fadd float %i.op, %i.oy
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ot, i64 44
  store float %i.oz, ptr %i.pa, align 4, !tbaa !250
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ot, i64 48
  store i64 %i.f, ptr %i.pb, align 4
  %i.pc = load ptr, ptr %i.nd, align 8, !tbaa !242 ; 4 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 56
  store i32 %3, ptr %i.pd, align 4, !tbaa !245
  %i.pe = load float, ptr %i.nk, align 4, !tbaa !237
  %i.pf = fsub float %i.pe, %i.ol
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pc, i64 60
  store float %i.pf, ptr %i.pg, align 4, !tbaa !249
  %i.ph = load float, ptr %i.no, align 4, !tbaa !238
  %i.pi = fadd float %i.op, %i.ph
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pc, i64 64
  store float %i.pi, ptr %i.pj, align 4, !tbaa !250
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pc, i64 68
  store i64 %i.f, ptr %i.pk, align 4
  %i.pl = load ptr, ptr %i.nd, align 8, !tbaa !242 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 76
  store i32 %3, ptr %i.pm, align 4, !tbaa !245
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pl, i64 80
  store ptr %i.pn, ptr %i.nd, align 8, !tbaa !242
  %i.po = load i32, ptr %i.ne, align 4, !tbaa !92 ; 2 uses
  %i.pp = trunc i32 %i.po to i16                  ; 5 uses
  %i.pq = load ptr, ptr %i.nf, align 8, !tbaa !113 ; 7 uses
  store i16 %i.pp, ptr %i.pq, align 2, !tbaa !243
  %i.pr = add i16 %i.pp, 1
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pq, i64 2
  store i16 %i.pr, ptr %i.ps, align 2, !tbaa !243
  %i.pt = add i16 %i.pp, 2                        ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pq, i64 4
  store i16 %i.pt, ptr %i.pu, align 2, !tbaa !243
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pq, i64 6
  store i16 %i.pp, ptr %i.pv, align 2, !tbaa !243
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pq, i64 8
  store i16 %i.pt, ptr %i.pw, align 2, !tbaa !243
  %i.px = add i16 %i.pp, 3
  %i.py = getelementptr inbounds nuw i8, ptr %i.pq, i64 10
  store i16 %i.px, ptr %i.py, align 2, !tbaa !243
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pq, i64 12
  store ptr %i.pz, ptr %i.nf, align 8, !tbaa !113
  %i.qa = add i32 %i.po, 4
  store i32 %i.qa, ptr %i.ne, align 4, !tbaa !92
  %exitcond591.not = icmp eq i64 %indvars.iv.next588, %wide.trip.count590
  br i1 %exitcond591.not, label %.loopexit, label %bb.z, !llvm.loop !571

.loopexit:                                        ; preds = %bb.ab, %bb.c, %.loopexit535, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: mustprogress uwtable
define void @_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = icmp slt i32 %2, 3
  %i.b = icmp ult i32 %3, 16777216
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73
  %i.e = load i64, ptr %i.d, align 8              ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !91
  %i.h = and i32 %i.g, 4
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.lr.ph141, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.j = load float, ptr %i.i, align 8, !tbaa !103
  %i.k = and i32 %3, 16777215
  %reass.mul = mul i32 %2, 9
  %i.l = add i32 %reass.mul, -6
  %i.m = shl nuw nsw i32 %2, 1                    ; 2 uses
  tail call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %i.l, i32 noundef %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !92   ; 8 uses
  %i.p = add i32 %i.o, 1                          ; 2 uses
  %i.q = trunc i32 %i.o to i16                    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.s = add i32 %i.o, 65534                      ; 3 uses
  %.promoted = load ptr, ptr %i.r, align 8, !tbaa !113 ; 2 uses
  %xtraiter = and i32 %2, 1
  %i.t = icmp eq i32 %2, 3
  br i1 %i.t, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %i.u = and i32 %2, 2147483646
  %i.v = add nsw i32 %i.u, -4
  br label %bb.g

.unr-lcssa:                                       ; preds = %bb.g
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.c, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph
  %.epil.init = phi ptr [ %.promoted, %.lr.ph ], [ %i.bi, %.unr-lcssa ] ; 4 uses
  %.0124131.epil.init = phi i32 [ 2, %.lr.ph ], [ %i.bj, %.unr-lcssa ]
  %lcmp.mod174 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod174)
  store i16 %i.q, ptr %.epil.init, align 2, !tbaa !243
  %i.w = shl nuw i32 %.0124131.epil.init, 1       ; 2 uses
  %i.x = add i32 %i.s, %i.w
  %i.y = trunc i32 %i.x to i16
  %i.z = getelementptr inbounds nuw i8, ptr %.epil.init, i64 2
  store i16 %i.y, ptr %i.z, align 2, !tbaa !243
  %i.aa = add i32 %i.w, %i.o
  %i.ab = trunc i32 %i.aa to i16
  %i.ac = getelementptr inbounds nuw i8, ptr %.epil.init, i64 4
  store i16 %i.ab, ptr %i.ac, align 2, !tbaa !243
  %i.ad = getelementptr inbounds nuw i8, ptr %.epil.init, i64 6
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa172 = phi ptr [ %i.bi, %.unr-lcssa ], [ %i.ad, %.epil.preheader ]
  store ptr %.lcssa172, ptr %i.r, align 8, !tbaa !113
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !73  ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 76 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !99
  %.not.i = icmp sgt i32 %2, %i.ag
  br i1 %.not.i, label %bb.d, label %.lr.ph134.preheader
end_hunk_1
begin_hunk_2_@_Z27ImTextureDataUpdateNewFrameP13ImTextureData:bb.a
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !625
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.thread24, label %thread-pre-split25

.thread24:                                        ; preds = %bb.j
  store i32 1, ptr %i.a, align 4, !tbaa !311
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %thread-pre-split, %.thread24
  br i1 %i.r, label %thread-pre-split25.thread, label %.thread27

.thread27:                                        ; preds = %bb.k
  store i32 2, ptr %i.a, align 4, !tbaa !311
  br label %thread-pre-split25.thread

thread-pre-split25:                               ; preds = %bb.h, %bb.i, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !626
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !626
  br label %thread-pre-split25.thread

thread-pre-split25.thread:                        ; preds = %thread-pre-split, %bb.k, %.thread27, %thread-pre-split25
  %.029 = phi i1 [ false, %.thread27 ], [ false, %thread-pre-split25 ], [ true, %bb.k ], [ false, %thread-pre-split ]
  ret i1 %.029
}

; Function Attrs: mustprogress uwtable
define void @_Z20ImFontAtlasBuildMainP11ImFontAtlas(ptr noundef %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !333  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !310
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !400
  %.not12 = icmp eq i32 %i.d, %i.f
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_Z21ImFontAtlasBuildClearP11ImFontAtlas(ptr noundef nonnull %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !340
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_Z20ImFontAtlasBuildInitP11ImFontAtlas(ptr noundef nonnull %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = load i32, ptr %i.j, align 8, !tbaa !401
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = tail call noundef ptr @_ZN11ImFontAtlas14AddFontDefaultEPK12ImFontConfig(ptr noundef nonnull align 8 dereferenceable(760) %0, ptr noundef null) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !334  ; 2 uses
  %i.q = load i32, ptr %i.n, align 8, !tbaa !349  ; 2 uses
  %i.r = sext i32 %i.q to i64
  %.idx.i = shl nsw i64 %i.r, 3
  %i.s = getelementptr inbounds i8, ptr %i.p, i64 %.idx.i
  %.not16.i = icmp eq i32 %i.q, 0
  br i1 %.not16.i, label %_ZL52ImFontAtlasBuildUpdateRendererHasTexturesFromContextP11ImFontAtlas.exit, label %.critedge.i

bb.i:                                             ; preds = %.critedge.i
  %i.t = getelementptr inbounds nuw i8, ptr %.01317.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.t, %i.s
  br i1 %.not.i, label %_ZL52ImFontAtlasBuildUpdateRendererHasTexturesFromContextP11ImFontAtlas.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.h, %bb.i
  %.01317.i = phi ptr [ %i.t, %bb.i ], [ %i.p, %bb.h ] ; 2 uses
  %i.u = load ptr, ptr %.01317.i, align 8, !tbaa !350
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !121  ; 2 uses
  %.not15.i = icmp eq ptr %i.w, null
  br i1 %.not15.i, label %bb.i, label %bb.j

bb.j:                                             ; preds = %.critedge.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 44
  %i.y = load i32, ptr %i.x, align 4, !tbaa !402
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 81
  %i.aa = trunc i32 %i.y to i8
  %i.ab = lshr i8 %i.aa, 4
  %i.ac = and i8 %i.ab, 1
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !326
  br label %_ZL52ImFontAtlasBuildUpdateRendererHasTexturesFromContextP11ImFontAtlas.exit

_ZL52ImFontAtlasBuildUpdateRendererHasTexturesFromContextP11ImFontAtlas.exit: ; preds = %bb.i, %bb.h, %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 81
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !326, !range !352, !noundef !353
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZL52ImFontAtlasBuildUpdateRendererHasTexturesFromContextP11ImFontAtlas.exit
  tail call void @_Z43ImFontAtlasBuildLegacyPreloadAllGlyphRangesP11ImFontAtlas(ptr noundef nonnull %0)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZL52ImFontAtlasBuildUpdateRendererHasTexturesFromContextP11ImFontAtlas.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 82
  store i8 1, ptr %i.ag, align 2, !tbaa !348
  ret void
}

declare void @_ZN12ImGuiStorage10SetVoidPtrEjPv(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_Z30ImFontAtlasTextureBlockConvertPKh15ImTextureFormatiPhS1_iii(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #24 {
bb.a:
  %i.a = icmp eq i32 %1, %4
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %7, 0
  br i1 %i.b, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %switch.selectcmp2.i = icmp eq i32 %1, 1
  %switch.selectcmp.i = icmp eq i32 %1, 0
  %switch.select.i = select i1 %switch.selectcmp.i, i32 4, i32 0
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 1, i32 %switch.select.i
  %i.c = mul nsw i32 %6, %switch.select3.i
  %i.d = sext i32 %i.c to i64                     ; 5 uses
  %i.e = sext i32 %2 to i64                       ; 5 uses
  %i.f = sext i32 %5 to i64                       ; 5 uses
  %xtraiter = and i32 %7, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %.05583.prol = phi i32 [ %i.g, %.prol.preheader ], [ %7, %.lr.ph ]
  %.05682.prol = phi ptr [ %i.h, %.prol.preheader ], [ %0, %.lr.ph ] ; 2 uses
  %.05781.prol = phi ptr [ %i.i, %.prol.preheader ], [ %3, %.lr.ph ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.05781.prol, ptr align 1 %.05682.prol, i64 %i.d, i1 false)
  %i.g = add nsw i32 %.05583.prol, -1             ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %.05682.prol, i64 %i.e ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %.05781.prol, i64 %i.f ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !627

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.05583.unr = phi i32 [ %7, %.lr.ph ], [ %i.g, %.prol.preheader ]
  %.05682.unr = phi ptr [ %0, %.lr.ph ], [ %i.h, %.prol.preheader ]
  %.05781.unr = phi ptr [ %3, %.lr.ph ], [ %i.i, %.prol.preheader ]
  %i.j = icmp ult i32 %7, 4
  br i1 %i.j, label %.loopexit, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.05583 = phi i32 [ %i.q, %.lr.ph.new ], [ %.05583.unr, %.prol.loopexit ] ; 2 uses
  %.05682 = phi ptr [ %i.r, %.lr.ph.new ], [ %.05682.unr, %.prol.loopexit ] ; 2 uses
  %.05781 = phi ptr [ %i.s, %.lr.ph.new ], [ %.05781.unr, %.prol.loopexit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.05781, ptr align 1 %.05682, i64 %i.d, i1 false)
  %i.k = getelementptr inbounds i8, ptr %.05682, i64 %i.e ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %.05781, i64 %i.f ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.k, i64 %i.d, i1 false)
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 %i.e ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.f ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.m, i64 %i.d, i1 false)
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %i.e ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 %i.f ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.o, i64 %i.d, i1 false)
  %i.q = add nsw i32 %.05583, -4
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 %i.e
  %i.s = getelementptr inbounds i8, ptr %i.p, i64 %i.f
  %i.t = icmp sgt i32 %.05583, 4
  br i1 %i.t, label %.lr.ph.new, label %.loopexit, !llvm.loop !10

bb.c:                                             ; preds = %bb.a
  %i.u = icmp eq i32 %1, 1
  %i.v = icmp eq i32 %4, 0
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %.preheader63, label %bb.d

.preheader63:                                     ; preds = %bb.c
  %i.w = icmp sgt i32 %7, 0
  br i1 %i.w, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader63
  %i.x = icmp sgt i32 %6, 0
  %i.y = sext i32 %2 to i64                       ; 2 uses
  %i.z = sext i32 %5 to i64                       ; 2 uses
  br i1 %i.x, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.aa = add nsw i32 %7, -1
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = mul nsw i64 %i.z, %i.ab
  %i.ad = add nsw i32 %6, -1
  %i.ae = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.af = shl nuw nsw i64 %i.ae, 2
  %i.ag = getelementptr i8, ptr %3, i64 %i.ac
  %i.ah = getelementptr i8, ptr %i.ag, i64 %i.af
  %scevgep104 = getelementptr i8, ptr %i.ah, i64 4
  %i.ai = mul nsw i64 %i.y, %i.ab
  %i.aj = getelementptr i8, ptr %0, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 %i.ae
  %scevgep105 = getelementptr i8, ptr %i.ak, i64 1
  %i.al = zext nneg i32 %6 to i64                 ; 2 uses
  %min.iters.check112 = icmp ult i32 %6, 8
  %bound0106 = icmp ult ptr %3, %scevgep105
  %bound1107 = icmp ult ptr %0, %scevgep104
  %found.conflict108 = and i1 %bound0106, %bound1107
  %i.am = or i32 %2, %5
  %i.an = icmp slt i32 %i.am, 0
  %i.ao = or i1 %found.conflict108, %i.an
  %n.vec114 = and i64 %i.al, 2147483640           ; 5 uses
  %i.ap = trunc nuw nsw i64 %n.vec114 to i32
  %i.aq = sub nsw i32 %6, %i.ap
  %i.ar = shl nuw nsw i64 %n.vec114, 2
  %cmp.n123 = icmp eq i64 %n.vec114, %i.al
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge77
  %.05480 = phi i32 [ %i.be, %._crit_edge77 ], [ %7, %.preheader.preheader ] ; 2 uses
  %.179 = phi ptr [ %i.bf, %._crit_edge77 ], [ %0, %.preheader.preheader ] ; 4 uses
  %.15878 = phi ptr [ %i.bg, %._crit_edge77 ], [ %3, %.preheader.preheader ] ; 4 uses
  %brmerge = select i1 %min.iters.check112, i1 true, i1 %i.ao
  br i1 %brmerge, label %scalar.ph111.preheader, label %vector.ph113

vector.ph113:                                     ; preds = %.preheader
  %i.as = getelementptr i8, ptr %.15878, i64 %i.ar
  %i.at = getelementptr i8, ptr %.179, i64 %n.vec114
  br label %vector.body115

vector.body115:                                   ; preds = %vector.body115, %vector.ph113
  %index116 = phi i64 [ 0, %vector.ph113 ], [ %index.next121, %vector.body115 ] ; 3 uses
  %i.au = shl i64 %index116, 2
  %next.gep117 = getelementptr i8, ptr %.15878, i64 %i.au ; 2 uses
  %next.gep118 = getelementptr i8, ptr %.179, i64 %index116 ; 2 uses
  %i.av = getelementptr i8, ptr %next.gep118, i64 4
  %wide.load119 = load <4 x i8>, ptr %next.gep118, align 1, !tbaa !50, !alias.scope !638
  %wide.load120 = load <4 x i8>, ptr %i.av, align 1, !tbaa !50, !alias.scope !638
  %i.aw = zext <4 x i8> %wide.load119 to <4 x i32>
  %i.ax = zext <4 x i8> %wide.load120 to <4 x i32>
  %i.ay = shl nuw <4 x i32> %i.aw, splat (i32 24)
  %i.az = shl nuw <4 x i32> %i.ax, splat (i32 24)
  %i.ba = or disjoint <4 x i32> %i.ay, splat (i32 16777215)
  %i.bb = or disjoint <4 x i32> %i.az, splat (i32 16777215)
  %i.bc = getelementptr i8, ptr %next.gep117, i64 16
  store <4 x i32> %i.ba, ptr %next.gep117, align 4, !tbaa !259, !alias.scope !639, !noalias !638
  store <4 x i32> %i.bb, ptr %i.bc, align 4, !tbaa !259, !alias.scope !639, !noalias !638
  %index.next121 = add nuw i64 %index116, 8       ; 2 uses
  %i.bd = icmp eq i64 %index.next121, %n.vec114
  br i1 %i.bd, label %middle.block122, label %vector.body115, !llvm.loop !631

middle.block122:                                  ; preds = %vector.body115
  br i1 %cmp.n123, label %._crit_edge77, label %scalar.ph111.preheader

scalar.ph111.preheader:                           ; preds = %.preheader, %middle.block122
  %.05176.ph = phi i32 [ %i.aq, %middle.block122 ], [ %6, %.preheader ]
  %.05275.ph = phi ptr [ %i.as, %middle.block122 ], [ %.15878, %.preheader ]
  %.05374.ph = phi ptr [ %i.at, %middle.block122 ], [ %.179, %.preheader ]
  br label %scalar.ph111

._crit_edge77:                                    ; preds = %scalar.ph111, %middle.block122
  %i.be = add nsw i32 %.05480, -1
  %i.bf = getelementptr inbounds i8, ptr %.179, i64 %i.y
  %i.bg = getelementptr inbounds i8, ptr %.15878, i64 %i.z
  %i.bh = icmp sgt i32 %.05480, 1
  br i1 %i.bh, label %.preheader, label %.loopexit, !llvm.loop !11

scalar.ph111:                                     ; preds = %scalar.ph111.preheader, %scalar.ph111
  %.05176 = phi i32 [ %i.bo, %scalar.ph111 ], [ %.05176.ph, %scalar.ph111.preheader ] ; 2 uses
  %.05275 = phi ptr [ %i.bn, %scalar.ph111 ], [ %.05275.ph, %scalar.ph111.preheader ] ; 2 uses
  %.05374 = phi ptr [ %i.bi, %scalar.ph111 ], [ %.05374.ph, %scalar.ph111.preheader ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.05374, i64 1
  %i.bj = load i8, ptr %.05374, align 1, !tbaa !50
  %i.bk = zext i8 %i.bj to i32
  %i.bl = shl nuw i32 %i.bk, 24
  %i.bm = or disjoint i32 %i.bl, 16777215
  %i.bn = getelementptr inbounds nuw i8, ptr %.05275, i64 4
  store i32 %i.bm, ptr %.05275, align 4, !tbaa !259
  %i.bo = add nsw i32 %.05176, -1
  %i.bp = icmp sgt i32 %.05176, 1
  br i1 %i.bp, label %scalar.ph111, label %._crit_edge77, !llvm.loop !632

bb.d:                                             ; preds = %bb.c
  %i.bq = icmp eq i32 %1, 0
  %i.br = icmp eq i32 %4, 1
  %or.cond3 = and i1 %i.bq, %i.br
  %i.bs = icmp sgt i32 %7, 0
  %or.cond85 = and i1 %or.cond3, %i.bs
  br i1 %or.cond85, label %.preheader65.lr.ph, label %.loopexit

.preheader65.lr.ph:                               ; preds = %bb.d
  %i.bt = icmp sgt i32 %6, 0
  %i.bu = sext i32 %2 to i64                      ; 2 uses
  %i.bv = sext i32 %5 to i64                      ; 2 uses
  br i1 %i.bt, label %.preheader65.preheader, label %.loopexit

.preheader65.preheader:                           ; preds = %.preheader65.lr.ph
  %i.bw = add nsw i32 %7, -1
  %i.bx = zext nneg i32 %i.bw to i64              ; 2 uses
  %i.by = mul nsw i64 %i.bv, %i.bx
  %i.bz = add nsw i32 %6, -1
  %i.ca = zext nneg i32 %i.bz to i64              ; 2 uses
  %i.cb = getelementptr i8, ptr %3, i64 %i.by
  %i.cc = getelementptr i8, ptr %i.cb, i64 %i.ca
  %scevgep = getelementptr i8, ptr %i.cc, i64 1
  %i.cd = mul nsw i64 %i.bu, %i.bx
  %i.ce = shl nuw nsw i64 %i.ca, 2
  %i.cf = getelementptr i8, ptr %0, i64 %i.cd
  %i.cg = getelementptr i8, ptr %i.cf, i64 %i.ce
  %scevgep97 = getelementptr i8, ptr %i.cg, i64 4
  %i.ch = zext nneg i32 %6 to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %6, 8
  %bound0 = icmp ult ptr %3, %scevgep97
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.ci = or i32 %2, %5
  %i.cj = icmp slt i32 %i.ci, 0
  %i.ck = or i1 %found.conflict, %i.cj
  %n.vec = and i64 %i.ch, 2147483640              ; 5 uses
  %i.cl = trunc nuw nsw i64 %n.vec to i32
  %i.cm = sub nsw i32 %6, %i.cl
  %i.cn = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %i.ch
  br label %.preheader65

.preheader65:                                     ; preds = %.preheader65.preheader, %._crit_edge
  %.05073 = phi i32 [ %i.cy, %._crit_edge ], [ %7, %.preheader65.preheader ] ; 2 uses
  %.272 = phi ptr [ %i.cz, %._crit_edge ], [ %0, %.preheader65.preheader ] ; 4 uses
  %.25971 = phi ptr [ %i.da, %._crit_edge ], [ %3, %.preheader65.preheader ] ; 4 uses
  %brmerge131 = select i1 %min.iters.check, i1 true, i1 %i.ck
  br i1 %brmerge131, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader65
  %i.co = getelementptr i8, ptr %.25971, i64 %n.vec
  %i.cp = getelementptr i8, ptr %.272, i64 %i.cn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.25971, i64 %index ; 2 uses
  %i.cq = shl i64 %index, 2
  %next.gep99 = getelementptr i8, ptr %.272, i64 %i.cq ; 2 uses
  %i.cr = getelementptr i8, ptr %next.gep99, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep99, align 4, !tbaa !259, !alias.scope !640
  %wide.load100 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !259, !alias.scope !640
  %i.cs = lshr <4 x i32> %wide.load, splat (i32 24)
  %i.ct = lshr <4 x i32> %wide.load100, splat (i32 24)
  %i.cu = trunc nuw <4 x i32> %i.cs to <4 x i8>
  %i.cv = trunc nuw <4 x i32> %i.ct to <4 x i8>
  %i.cw = getelementptr i8, ptr %next.gep, i64 4
  store <4 x i8> %i.cu, ptr %next.gep, align 1, !tbaa !50, !alias.scope !641, !noalias !640
  store <4 x i8> %i.cv, ptr %i.cw, align 1, !tbaa !50, !alias.scope !641, !noalias !640
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !636

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader65, %middle.block
  %.070.ph = phi i32 [ %i.cm, %middle.block ], [ %6, %.preheader65 ]
  %.04869.ph = phi ptr [ %i.co, %middle.block ], [ %.25971, %.preheader65 ]
  %.04968.ph = phi ptr [ %i.cp, %middle.block ], [ %.272, %.preheader65 ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.cy = add nsw i32 %.05073, -1
  %i.cz = getelementptr inbounds i8, ptr %.272, i64 %i.bu
  %i.da = getelementptr inbounds i8, ptr %.25971, i64 %i.bv
  %i.db = icmp sgt i32 %.05073, 1
  br i1 %i.db, label %.preheader65, label %.loopexit, !llvm.loop !12

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.070 = phi i32 [ %i.dh, %scalar.ph ], [ %.070.ph, %scalar.ph.preheader ] ; 2 uses
  %.04869 = phi ptr [ %i.dg, %scalar.ph ], [ %.04869.ph, %scalar.ph.preheader ] ; 2 uses
  %.04968 = phi ptr [ %i.dc, %scalar.ph ], [ %.04968.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.04968, i64 4
  %i.dd = load i32, ptr %.04968, align 4, !tbaa !259
  %i.de = lshr i32 %i.dd, 24
  %i.df = trunc nuw i32 %i.de to i8
  %i.dg = getelementptr inbounds nuw i8, ptr %.04869, i64 1
  store i8 %i.df, ptr %.04869, align 1, !tbaa !50
  %i.dh = add nsw i32 %.070, -1
  %i.di = icmp sgt i32 %.070, 1
  br i1 %i.di, label %scalar.ph, label %._crit_edge, !llvm.loop !637

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge77, %.prol.loopexit, %.lr.ph.new, %.preheader65.lr.ph, %.preheader63, %.preheader.lr.ph, %bb.b, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_Z34ImFontAtlasTextureBlockPostProcessP26ImFontAtlasPostProcessData(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #21 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !647
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %i.d = load float, ptr %i.c, align 4, !tbaa !404 ; 6 uses
  %i.e = fcmp une float %i.d, 1.000000e+00
  br i1 %i.e, label %bb.b, label %_Z42ImFontAtlasTextureBlockPostProcessMultiplyP26ImFontAtlasPostProcessDataf.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !405  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.i = load i32, ptr %i.h, align 4, !tbaa !406  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !407
  switch i32 %i.k, label %_Z42ImFontAtlasTextureBlockPostProcessMultiplyP26ImFontAtlasPostProcessDataf.exit [
    i32 1, label %bb.c
    i32 0, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.m = load i32, ptr %i.l, align 4, !tbaa !408  ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph56.i, label %_Z42ImFontAtlasTextureBlockPostProcessMultiplyP26ImFontAtlasPostProcessDataf.exit

.lr.ph56.i:                                       ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = sext i32 %i.i to i64
  %i.q = load i32, ptr %i.o, align 8, !tbaa !409  ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph56.split.i.preheader, label %_Z42ImFontAtlasTextureBlockPostProcessMultiplyP26ImFontAtlasPostProcessDataf.exit

.lr.ph56.split.i.preheader:                       ; preds = %.lr.ph56.i
  %broadcast.splatinsert19 = insertelement <16 x float> poison, float %i.d, i64 0
  %broadcast.splat20 = shufflevector <16 x float> %broadcast.splatinsert19, <16 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert31 = insertelement <4 x float> poison, float %i.d, i64 0
  %broadcast.splat32 = shufflevector <4 x float> %broadcast.splatinsert31, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph56.split.i

.lr.ph56.splitthread-pre-split.i:                 ; preds = %._crit_edge52.i
  %i.s = getelementptr inbounds i8, ptr %.054.i, i64 %i.p
  %i.t = add nsw i32 %.03953.i, -1
  %.pr.i = load i32, ptr %i.o, align 8, !tbaa !409
  br label %.lr.ph56.split.i

.lr.ph56.split.i:                                 ; preds = %.lr.ph56.split.i.preheader, %.lr.ph56.splitthread-pre-split.i
  %i.u = phi i32 [ %.pr.i, %.lr.ph56.splitthread-pre-split.i ], [ %i.q, %.lr.ph56.split.i.preheader ] ; 7 uses
  %.054.i = phi ptr [ %i.s, %.lr.ph56.splitthread-pre-split.i ], [ %i.g, %.lr.ph56.split.i.preheader ] ; 6 uses
  %.03953.i = phi i32 [ %i.t, %.lr.ph56.splitthread-pre-split.i ], [ %i.m, %.lr.ph56.split.i.preheader ] ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %iter.check, label %._crit_edge52.i

iter.check:                                       ; preds = %.lr.ph56.split.i
  %i.w = zext nneg i32 %i.u to i64                ; 5 uses
  %min.iters.check15 = icmp ult i32 %i.u, 4
  br i1 %min.iters.check15, label %.lr.ph51.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check16 = icmp ult i32 %i.u, 16
  br i1 %min.iters.check16, label %vec.epilog.ph, label %vector.ph17

vector.ph17:                                      ; preds = %vector.main.loop.iter.check
  %i.x = and i64 %i.w, 12
  %n.vec18 = and i64 %i.w, 2147483632             ; 5 uses
  %i.y = trunc nuw nsw i64 %n.vec18 to i32
  %i.z = sub nsw i32 %i.u, %i.y
  %i.aa = getelementptr i8, ptr %.054.i, i64 %n.vec18
  br label %vector.body21

vector.body21:                                    ; preds = %vector.body21, %vector.ph17
  %index22 = phi i64 [ 0, %vector.ph17 ], [ %index.next25, %vector.body21 ] ; 2 uses
  %next.gep23 = getelementptr i8, ptr %.054.i, i64 %index22 ; 2 uses
  %wide.load24 = load <16 x i8>, ptr %next.gep23, align 1, !tbaa !50
  %i.ab = uitofp <16 x i8> %wide.load24 to <16 x float>
  %i.ac = fmul <16 x float> %broadcast.splat20, %i.ab
  %i.ad = fptoui <16 x float> %i.ac to <16 x i32>
  %i.ae = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.ad, <16 x i32> splat (i32 255))
  %i.af = trunc nuw <16 x i32> %i.ae to <16 x i8>
  store <16 x i8> %i.af, ptr %next.gep23, align 1, !tbaa !50
  %index.next25 = add nuw i64 %index22, 16        ; 2 uses
  %i.ag = icmp eq i64 %index.next25, %n.vec18
  br i1 %i.ag, label %middle.block26, label %vector.body21, !llvm.loop !642

middle.block26:                                   ; preds = %vector.body21
  %cmp.n27 = icmp eq i64 %n.vec18, %i.w
  br i1 %cmp.n27, label %._crit_edge52.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block26
  %min.epilog.iters.check = icmp eq i64 %i.x, 0
  br i1 %min.epilog.iters.check, label %.lr.ph51.i.preheader, label %vec.epilog.ph, !prof !410

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec18, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec30 = and i64 %i.w, 2147483644             ; 4 uses
  %i.ah = trunc nuw nsw i64 %n.vec30 to i32
  %i.ai = sub nsw i32 %i.u, %i.ah
  %i.aj = getelementptr i8, ptr %.054.i, i64 %n.vec30
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index33 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next36, %vec.epilog.vector.body ] ; 2 uses
  %next.gep34 = getelementptr i8, ptr %.054.i, i64 %index33 ; 2 uses
  %wide.load35 = load <4 x i8>, ptr %next.gep34, align 1, !tbaa !50
  %i.ak = uitofp <4 x i8> %wide.load35 to <4 x float>
  %i.al = fmul <4 x float> %broadcast.splat32, %i.ak
  %i.am = fptoui <4 x float> %i.al to <4 x i32>
  %i.an = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.am, <4 x i32> splat (i32 255))
  %i.ao = trunc nuw <4 x i32> %i.an to <4 x i8>
  store <4 x i8> %i.ao, ptr %next.gep34, align 1, !tbaa !50
end_hunk_2
begin_hunk_3_@_Z38ImFontAtlasBuildRenderBitmapFromStringP11ImFontAtlasiiiiPKcc:bb.a
  %i.a = ptrtoaddr ptr %5 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !333  ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !310
  switch i32 %i.e, label %.loopexit [
    i32 1, label %bb.b
    i32 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 2 uses
  %i.g = icmp sgt i32 %4, 0
  br i1 %i.g, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.h = icmp sgt i32 %3, 0
  %i.i = sext i32 %3 to i64                       ; 2 uses
  br i1 %i.h, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !309
  %i.l = load i32, ptr %i.f, align 4, !tbaa !312
  %i.m = mul nsw i32 %i.l, %2
  %i.n = add nsw i32 %i.m, %1
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.p = load i32, ptr %i.o, align 4, !tbaa !314
  %i.q = mul nsw i32 %i.n, %i.p
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %i.k, i64 %i.r
  %wide.trip.count62 = zext nneg i32 %3 to i64    ; 8 uses
  %min.iters.check76 = icmp ult i32 %3, 4
  %min.iters.check77 = icmp ult i32 %3, 32
  %i.t = and i64 %wide.trip.count62, 28
  %n.vec79 = and i64 %wide.trip.count62, 2147483616 ; 4 uses
  %broadcast.splatinsert80 = insertelement <16 x i8> poison, i8 %6, i64 0
  %broadcast.splat81 = shufflevector <16 x i8> %broadcast.splatinsert80, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %cmp.n88 = icmp eq i64 %n.vec79, %wide.trip.count62
  %min.epilog.iters.check = icmp eq i64 %i.t, 0
  %n.vec89 = and i64 %wide.trip.count62, 2147483644 ; 3 uses
  %broadcast.splatinsert90 = insertelement <4 x i8> poison, i8 %6, i64 0
  %broadcast.splat91 = shufflevector <4 x i8> %broadcast.splatinsert90, <4 x i8> poison, <4 x i32> zeroinitializer
  %cmp.n95 = icmp eq i64 %n.vec89, %wide.trip.count62
  %xtraiter98 = and i64 %wide.trip.count62, 3     ; 2 uses
  %lcmp.mod99.not = icmp eq i64 %xtraiter98, 0
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge52
  %indvar = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next, %._crit_edge52 ] ; 2 uses
  %.04055 = phi i32 [ 0, %.preheader.preheader ], [ %i.as, %._crit_edge52 ]
  %.04154 = phi ptr [ %i.s, %.preheader.preheader ], [ %i.av, %._crit_edge52 ] ; 9 uses
  %.04253 = phi ptr [ %5, %.preheader.preheader ], [ %i.aw, %._crit_edge52 ] ; 8 uses
  br i1 %min.iters.check76, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck73

vector.memcheck73:                                ; preds = %iter.check
  %i.u = mul i64 %indvar, %i.i
  %i.v = add i64 %i.u, %i.a
  %.0415474 = ptrtoaddr ptr %.04154 to i64
  %i.w = sub i64 %i.v, %.0415474
  %diff.check = icmp ugt i64 %i.w, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck73
  br i1 %min.iters.check77, label %vec.epilog.ph, label %vector.body82

vector.body82:                                    ; preds = %vector.main.loop.iter.check, %vector.body82
  %index83 = phi i64 [ %index.next86, %vector.body82 ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.04253, i64 %index83 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load84 = load <16 x i8>, ptr %i.x, align 1, !tbaa !50
  %wide.load85 = load <16 x i8>, ptr %i.y, align 1, !tbaa !50
  %i.z = icmp eq <16 x i8> %wide.load84, %broadcast.splat81
  %i.aa = icmp eq <16 x i8> %wide.load85, %broadcast.splat81
  %i.ab = sext <16 x i1> %i.z to <16 x i8>
  %i.ac = sext <16 x i1> %i.aa to <16 x i8>
  %i.ad = getelementptr inbounds nuw i8, ptr %.04154, i64 %index83 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <16 x i8> %i.ab, ptr %i.ad, align 1, !tbaa !50
  store <16 x i8> %i.ac, ptr %i.ae, align 1, !tbaa !50
  %index.next86 = add nuw i64 %index83, 32        ; 2 uses
  %i.af = icmp eq i64 %index.next86, %n.vec79
  br i1 %i.af, label %middle.block87, label %vector.body82, !llvm.loop !714

middle.block87:                                   ; preds = %vector.body82
  br i1 %cmp.n88, label %._crit_edge52, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block87
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !435

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec79, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index92 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next94, %vec.epilog.vector.body ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.04253, i64 %index92
  %wide.load93 = load <4 x i8>, ptr %i.ag, align 1, !tbaa !50
  %i.ah = icmp eq <4 x i8> %wide.load93, %broadcast.splat91
  %i.ai = sext <4 x i1> %i.ah to <4 x i8>
  %i.aj = getelementptr inbounds nuw i8, ptr %.04154, i64 %index92
  store <4 x i8> %i.ai, ptr %i.aj, align 1, !tbaa !50
  %index.next94 = add nuw i64 %index92, 4         ; 2 uses
  %i.ak = icmp eq i64 %index.next94, %n.vec89
  br i1 %i.ak, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !715

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n95, label %._crit_edge52, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck73, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv59.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck73 ], [ %n.vec79, %vec.epilog.iter.check ], [ %n.vec89, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod99.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv59.prol = phi i64 [ %indvars.iv.next60.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv59.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter100 = phi i64 [ %prol.iter100.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.al = getelementptr inbounds nuw i8, ptr %.04253, i64 %indvars.iv59.prol
  %i.am = load i8, ptr %i.al, align 1, !tbaa !50
  %i.an = icmp eq i8 %i.am, %6
  %i.ao = sext i1 %i.an to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %.04154, i64 %indvars.iv59.prol
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !50
  %indvars.iv.next60.prol = add nuw nsw i64 %indvars.iv59.prol, 1 ; 2 uses
  %prol.iter100.next = add i64 %prol.iter100, 1   ; 2 uses
  %prol.iter100.cmp.not = icmp eq i64 %prol.iter100.next, %xtraiter98
  br i1 %prol.iter100.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !716

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv59.unr = phi i64 [ %indvars.iv59.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next60.prol, %vec.epilog.scalar.ph.prol ]
  %i.aq = sub nsw i64 %indvars.iv59.ph, %wide.trip.count62
  %i.ar = icmp ugt i64 %i.aq, -4
  br i1 %i.ar, label %._crit_edge52, label %vec.epilog.scalar.ph

._crit_edge52:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block87
  %i.as = add nuw nsw i32 %.04055, 1              ; 2 uses
  %i.at = load i32, ptr %i.f, align 4, !tbaa !312
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %.04154, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %.04253, i64 %i.i
  %exitcond64.not = icmp eq i32 %i.as, %4
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond64.not, label %.loopexit, label %iter.check, !llvm.loop !717

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv59 = phi i64 [ %indvars.iv.next60.3, %vec.epilog.scalar.ph ], [ %indvars.iv59.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.04253, i64 %indvars.iv59
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !50
  %i.az = icmp eq i8 %i.ay, %6
  %i.ba = sext i1 %i.az to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %.04154, i64 %indvars.iv59
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !50
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.04253, i64 %indvars.iv.next60
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !50
  %i.be = icmp eq i8 %i.bd, %6
  %i.bf = sext i1 %i.be to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %.04154, i64 %indvars.iv.next60
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !50
  %indvars.iv.next60.1 = add nuw nsw i64 %indvars.iv59, 2 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.04253, i64 %indvars.iv.next60.1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !50
  %i.bj = icmp eq i8 %i.bi, %6
  %i.bk = sext i1 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %.04154, i64 %indvars.iv.next60.1
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !50
  %indvars.iv.next60.2 = add nuw nsw i64 %indvars.iv59, 3 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.04253, i64 %indvars.iv.next60.2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !50
  %i.bo = icmp eq i8 %i.bn, %6
  %i.bp = sext i1 %i.bo to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %.04154, i64 %indvars.iv.next60.2
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !50
  %indvars.iv.next60.3 = add nuw nsw i64 %indvars.iv59, 4 ; 2 uses
  %exitcond63.not.3 = icmp eq i64 %indvars.iv.next60.3, %wide.trip.count62
  br i1 %exitcond63.not.3, label %._crit_edge52, label %vec.epilog.scalar.ph, !llvm.loop !718

bb.c:                                             ; preds = %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 2 uses
  %i.bs = icmp sgt i32 %4, 0
  br i1 %i.bs, label %.preheader45.lr.ph, label %.loopexit

.preheader45.lr.ph:                               ; preds = %bb.c
  %i.bt = icmp sgt i32 %3, 0
  %i.bu = sext i32 %3 to i64                      ; 2 uses
  br i1 %i.bt, label %.preheader45.preheader, label %.loopexit

.preheader45.preheader:                           ; preds = %.preheader45.lr.ph
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !309
  %i.bx = load i32, ptr %i.br, align 4, !tbaa !312
  %i.by = mul nsw i32 %i.bx, %2
  %i.bz = add nsw i32 %i.by, %1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !314
  %i.cc = mul nsw i32 %i.bz, %i.cb
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds i8, ptr %i.bw, i64 %i.cd
  %wide.trip.count = zext nneg i32 %3 to i64      ; 7 uses
  %i.cf = shl nuw nsw i64 %wide.trip.count, 2
  %i.cg = add nsw i32 %4, -1
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = mul nuw nsw i64 %i.bu, %i.ch
  %i.cj = getelementptr i8, ptr %5, i64 %i.ci
  %scevgep71 = getelementptr i8, ptr %i.cj, i64 %wide.trip.count
  %min.iters.check = icmp ult i32 %3, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i8> poison, i8 %6, i64 0
  %broadcast.splat = shufflevector <4 x i8> %broadcast.splatinsert, <4 x i8> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader45

.preheader45:                                     ; preds = %.preheader45.preheader, %._crit_edge
  %.03750 = phi i32 [ %i.da, %._crit_edge ], [ 0, %.preheader45.preheader ]
  %.03849 = phi ptr [ %i.dd, %._crit_edge ], [ %i.ce, %.preheader45.preheader ] ; 9 uses
  %.148 = phi ptr [ %i.de, %._crit_edge ], [ %5, %.preheader45.preheader ] ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader45
  %scevgep = getelementptr i8, ptr %.03849, i64 %i.cf
  %bound0 = icmp ult ptr %.03849, %scevgep71
  %bound1 = icmp ult ptr %5, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.148, i64 %index ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %wide.load = load <4 x i8>, ptr %i.ck, align 1, !tbaa !50, !alias.scope !726
  %wide.load72 = load <4 x i8>, ptr %i.cl, align 1, !tbaa !50, !alias.scope !726
  %i.cm = icmp eq <4 x i8> %wide.load, %broadcast.splat
  %i.cn = icmp eq <4 x i8> %wide.load72, %broadcast.splat
  %i.co = sext <4 x i1> %i.cm to <4 x i32>
  %i.cp = sext <4 x i1> %i.cn to <4 x i32>
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.03849, i64 %index ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store <4 x i32> %i.co, ptr %i.cq, align 4, !tbaa !259, !alias.scope !727, !noalias !726
  store <4 x i32> %i.cp, ptr %i.cr, align 4, !tbaa !259, !alias.scope !727, !noalias !726
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !722

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader45, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader45 ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.148, i64 %indvars.iv.prol
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !50
  %i.cv = icmp eq i8 %i.cu, %6
  %i.cw = sext i1 %i.cv to i32
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.03849, i64 %indvars.iv.prol
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !259
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !723

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.cy = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.cz = icmp ugt i64 %i.cy, -4
  br i1 %i.cz, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.da = add nuw nsw i32 %.03750, 1              ; 2 uses
  %i.db = load i32, ptr %i.br, align 4, !tbaa !312
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [4 x i8], ptr %.03849, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %.148, i64 %i.bu
  %exitcond58.not = icmp eq i32 %i.da, %4
  br i1 %exitcond58.not, label %.loopexit, label %.preheader45, !llvm.loop !724

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.148, i64 %indvars.iv
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !50
  %i.dh = icmp eq i8 %i.dg, %6
  %i.di = sext i1 %i.dh to i32
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.03849, i64 %indvars.iv
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !259
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.148, i64 %indvars.iv.next
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !50
  %i.dm = icmp eq i8 %i.dl, %6
  %i.dn = sext i1 %i.dm to i32
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.03849, i64 %indvars.iv.next
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !259
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.148, i64 %indvars.iv.next.1
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !50
  %i.dr = icmp eq i8 %i.dq, %6
  %i.ds = sext i1 %i.dr to i32
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.03849, i64 %indvars.iv.next.1
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !259
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.148, i64 %indvars.iv.next.2
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !50
  %i.dw = icmp eq i8 %i.dv, %6
  %i.dx = sext i1 %i.dw to i32
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.03849, i64 %indvars.iv.next.2
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !259
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !725

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge52, %bb.c, %.preheader45.lr.ph, %bb.b, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6ImFont15ClearOutputDataEv(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(76) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !365  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_Z27ImFontAtlasFontDiscardBakesP11ImFontAtlasP6ImFonti.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 688 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !340  ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_Z27ImFontAtlasFontDiscardBakesP11ImFontAtlasP6ImFonti.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 192 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !376  ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.i, label %_Z27ImFontAtlasFontDiscardBakesP11ImFontAtlasP6ImFonti.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i
  %i.i = phi i32 [ %i.f, %.lr.ph.i ], [ %i.ac, %bb.f ] ; 2 uses
  %.020.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ad, %bb.f ] ; 3 uses
  %i.j = lshr i32 %.020.i, 5
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !377
  %i.l = zext nneg i32 %i.j to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !378
  %i.o = and i32 %.020.i, 31
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [104 x i8], ptr %i.n, i64 %i.p ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.s = load i32, ptr %i.r, align 8, !tbaa !379
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !340
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 164
  %i.v = load i32, ptr %i.u, align 4, !tbaa !380
  %i.w = icmp sle i32 %i.s, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.y = load ptr, ptr %i.x, align 8
  %.not17.i = icmp eq ptr %i.y, %0
  %or.cond.i = select i1 %i.w, i1 %.not17.i, i1 false
  br i1 %or.cond.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 76
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = and i32 %i.aa, 67108864
  %.not18.i = icmp eq i32 %i.ab, 0
  br i1 %.not18.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_Z23ImFontAtlasBakedDiscardP11ImFontAtlasP6ImFontP11ImFontBaked(ptr noundef nonnull %i.b, ptr noundef nonnull %0, ptr noundef nonnull %i.q)
  %.pre.i = load i32, ptr %i.e, align 8, !tbaa !376
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ac = phi i32 [ %i.i, %bb.d ], [ %i.i, %bb.c ], [ %.pre.i, %bb.e ] ; 2 uses
  %i.ad = add nuw nsw i32 %.020.i, 1              ; 2 uses
  %i.ae = icmp slt i32 %i.ad, %i.ac
  br i1 %i.ae, label %bb.c, label %_Z27ImFontAtlasFontDiscardBakesP11ImFontAtlasP6ImFonti.exit, !llvm.loop !8

_Z27ImFontAtlasFontDiscardBakesP11ImFontAtlasP6ImFonti.exit: ; preds = %bb.f, %.preheader.i, %bb.b, %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i8 0, ptr %i.af, align 4
  store ptr null, ptr %0, align 8, !tbaa !381
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z28ImFontAtlasFontRebuildOutputP11ImFontAtlasP6ImFont(ptr noundef %0, ptr nofree noundef captures(address) %1) local_unnamed_addr #10 {
bb.a:
  tail call void @_Z28ImFontAtlasFontDestroyOutputP11ImFontAtlasP6ImFont(ptr noundef %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !360  ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !362  ; 2 uses
  %i.e = sext i32 %i.d to i64
  %.idx.i = shl nsw i64 %i.e, 3
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 %.idx.i
  %.not11.i = icmp eq i32 %i.d, 0
end_hunk_3
begin_hunk_4_@_ZL26ImFontBaked_BuildGrowIndexP11ImFontBakedi:bb.a
  %i.bk = icmp ugt i64 %i.bj, -4
  br i1 %i.bk, label %_ZN8ImVectorItE6resizeEiRKt.exit, label %.preheader.i5.new

.preheader.i5.new:                                ; preds = %.prol.loopexit21, %.preheader.i5.new
  %indvars.iv.i8 = phi i64 [ %indvars.iv.next.i9.3, %.preheader.i5.new ], [ %indvars.iv.i8.unr, %.prol.loopexit21 ] ; 5 uses
  %i.bl = load ptr, ptr %i.be, align 8, !tbaa !83
  %i.bm = getelementptr inbounds [2 x i8], ptr %i.bl, i64 %indvars.iv.i8
  store i16 -1, ptr %i.bm, align 2
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !83
  %i.bo = getelementptr [2 x i8], ptr %i.bn, i64 %indvars.iv.i8
  %i.bp = getelementptr i8, ptr %i.bo, i64 2
  store i16 -1, ptr %i.bp, align 2
  %i.bq = load ptr, ptr %i.be, align 8, !tbaa !83
  %i.br = getelementptr [2 x i8], ptr %i.bq, i64 %indvars.iv.i8
  %i.bs = getelementptr i8, ptr %i.br, i64 4
  store i16 -1, ptr %i.bs, align 2
  %i.bt = load ptr, ptr %i.be, align 8, !tbaa !83
  %i.bu = getelementptr [2 x i8], ptr %i.bt, i64 %indvars.iv.i8
  %i.bv = getelementptr i8, ptr %i.bu, i64 6
  store i16 -1, ptr %i.bv, align 2
  %indvars.iv.next.i9.3 = add nsw i64 %indvars.iv.i8, 4 ; 2 uses
  %exitcond.not.i10.3 = icmp eq i64 %indvars.iv.next.i9.3, %wide.trip.count.i6
  br i1 %exitcond.not.i10.3, label %_ZN8ImVectorItE6resizeEiRKt.exit, label %.preheader.i5.new, !llvm.loop !820

_ZN8ImVectorItE6resizeEiRKt.exit:                 ; preds = %.prol.loopexit21, %.preheader.i5.new, %_ZN8ImVectorItE7reserveEi.exit.i
  store i32 %1, ptr %i.a, align 8, !tbaa !88
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZN8ImVectorItE6resizeEiRKt.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z37ImFontAtlasBakedAddFontGlyphAdvancedXP11ImFontAtlasP11ImFontBakedP12ImFontConfigtf(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, i16 noundef zeroext %3, float noundef %4) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !385
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !360
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !382
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  %i.g = load float, ptr %i.f, align 4, !tbaa !415 ; 2 uses
  %i.h = fcmp une float %i.g, 0.000000e+00
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.j = load float, ptr %i.i, align 4, !tbaa !257
  %i.k = fdiv float %i.j, %i.g
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.l = phi float [ %i.k, %bb.c ], [ 1.000000e+00, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.n = load float, ptr %i.m, align 8, !tbaa !477
  %i.o = fmul float %i.l, %i.n                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.q = load float, ptr %i.p, align 4, !tbaa !302
  %i.r = fmul float %i.l, %i.q                    ; 2 uses
  %i.s = fcmp olt float %4, %i.o
  %i.t = fcmp ogt float %4, %i.r
  %i.u = select i1 %i.t, float %i.r, float %4
  %i.v = select i1 %i.s, float %i.o, float %i.u   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 54
  %i.x = load i8, ptr %i.w, align 2, !tbaa !432, !range !352, !noundef !353
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = fadd float %i.v, 5.000000e-01
  %i.aa = fptosi float %i.z to i32
  %i.ab = sitofp i32 %i.aa to float
  %.0 = select i1 %i.y, float %i.ab, float %i.v
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !480
  %i.ae = fadd float %i.ad, %.0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.1 = phi float [ %i.ae, %bb.d ], [ %4, %bb.a ]
  %i.af = zext i16 %3 to i32
  %i.ag = add nuw nsw i32 %i.af, 1
  tail call fastcc void @_ZL26ImFontBaked_BuildGrowIndexP11ImFontBakedi(ptr noundef %1, i32 noundef %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !467
  %i.aj = zext i16 %3 to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.aj
  store float %.1, ptr %i.ak, align 4, !tbaa !29
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z34ImFontAtlasBakedSetFontGlyphBitmapP11ImFontAtlasP11ImFontBakedP12ImFontConfigP11ImFontGlyphP13ImTextureRectPKh15ImTextureFormati(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !333  ; 5 uses
  %i.c = load i16, ptr %4, align 2, !tbaa !439
  %i.d = zext i16 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 3 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !440
  %i.g = zext i16 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !309  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !312  ; 2 uses
  %i.l = mul i32 %i.k, %i.g
  %i.m = add i32 %i.l, %i.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 44 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !314  ; 2 uses
  %i.p = mul i32 %i.m, %i.o
  %i.q = sext i32 %i.p to i64                     ; 3 uses
  %i.r = getelementptr i8, ptr %i.i, i64 %i.q     ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !310  ; 3 uses
  %i.u = mul i32 %i.o, %i.k                       ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.w = load i16, ptr %i.v, align 2, !tbaa !441  ; 7 uses
  %i.x = zext i16 %i.w to i32                     ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 6 ; 3 uses
  %i.z = load i16, ptr %i.y, align 2, !tbaa !442  ; 5 uses
  %i.aa = zext i16 %i.z to i32                    ; 7 uses
  %i.ab = icmp eq i32 %6, %i.t
  br i1 %i.ab, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not34 = icmp eq i16 %i.z, 0
  br i1 %.not34, label %_Z30ImFontAtlasTextureBlockConvertPKh15ImTextureFormatiPhS1_iii.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %switch.selectcmp2.i.i = icmp eq i32 %6, 1
  %switch.selectcmp.i.i = icmp eq i32 %6, 0
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 4, i32 0
  %switch.select3.i.i = select i1 %switch.selectcmp2.i.i, i32 1, i32 %switch.select.i.i
  %i.ac = mul nuw nsw i32 %switch.select3.i.i, %i.x
  %i.ad = zext nneg i32 %i.ac to i64              ; 5 uses
  %i.ae = sext i32 %7 to i64                      ; 5 uses
  %i.af = sext i32 %i.u to i64                    ; 5 uses
  %xtraiter = and i32 %i.aa, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %.05583.i.prol = phi i32 [ %i.ag, %.prol.preheader ], [ %i.aa, %.lr.ph.i ]
  %.05682.i.prol = phi ptr [ %i.ah, %.prol.preheader ], [ %5, %.lr.ph.i ] ; 2 uses
  %.05781.i.prol = phi ptr [ %i.ai, %.prol.preheader ], [ %i.r, %.lr.ph.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.05781.i.prol, ptr align 1 %.05682.i.prol, i64 %i.ad, i1 false)
  %i.ag = add nsw i32 %.05583.i.prol, -1          ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %.05682.i.prol, i64 %i.ae ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %.05781.i.prol, i64 %i.af ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !821

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %.05583.i.unr = phi i32 [ %i.aa, %.lr.ph.i ], [ %i.ag, %.prol.preheader ]
  %.05682.i.unr = phi ptr [ %5, %.lr.ph.i ], [ %i.ah, %.prol.preheader ]
  %.05781.i.unr = phi ptr [ %i.r, %.lr.ph.i ], [ %i.ai, %.prol.preheader ]
  %i.aj = icmp ult i16 %i.z, 4
  br i1 %i.aj, label %_Z30ImFontAtlasTextureBlockConvertPKh15ImTextureFormatiPhS1_iii.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %.05583.i = phi i32 [ %i.aq, %.lr.ph.i.new ], [ %.05583.i.unr, %.prol.loopexit ] ; 2 uses
  %.05682.i = phi ptr [ %i.ar, %.lr.ph.i.new ], [ %.05682.i.unr, %.prol.loopexit ] ; 2 uses
  %.05781.i = phi ptr [ %i.as, %.lr.ph.i.new ], [ %.05781.i.unr, %.prol.loopexit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.05781.i, ptr align 1 %.05682.i, i64 %i.ad, i1 false)
  %i.ak = getelementptr inbounds i8, ptr %.05682.i, i64 %i.ae ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.05781.i, i64 %i.af ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr align 1 %i.ak, i64 %i.ad, i1 false)
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.ae ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 %i.af ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %i.am, i64 %i.ad, i1 false)
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 %i.ae ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 %i.af ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr align 1 %i.ao, i64 %i.ad, i1 false)
  %i.aq = add nsw i32 %.05583.i, -4
  %i.ar = getelementptr inbounds i8, ptr %i.ao, i64 %i.ae
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 %i.af
  %i.at = icmp sgt i32 %.05583.i, 4
  br i1 %i.at, label %.lr.ph.i.new, label %_Z30ImFontAtlasTextureBlockConvertPKh15ImTextureFormatiPhS1_iii.exit, !llvm.loop !10

bb.c:                                             ; preds = %bb.a
  %i.au = icmp eq i32 %6, 1
  %i.av = icmp eq i32 %i.t, 0
  %or.cond.i = and i1 %i.au, %i.av
  br i1 %or.cond.i, label %.preheader63.i, label %bb.d

.preheader63.i:                                   ; preds = %bb.c
  %.not32 = icmp eq i16 %i.z, 0
  br i1 %.not32, label %_Z30ImFontAtlasTextureBlockConvertPKh15ImTextureFormatiPhS1_iii.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %.preheader63.i
  %.not33 = icmp eq i16 %i.w, 0
  %i.aw = sext i32 %7 to i64                      ; 2 uses
  %i.ax = sext i32 %i.u to i64                    ; 2 uses
  br i1 %.not33, label %_Z30ImFontAtlasTextureBlockConvertPKh15ImTextureFormatiPhS1_iii.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader.lr.ph.i
  %i.ay = add nsw i32 %i.aa, -1
  %i.az = zext nneg i32 %i.ay to i64              ; 2 uses
  %i.ba = mul nsw i64 %i.ax, %i.az
  %i.bb = add nsw i32 %i.x, -1
  %i.bc = zext nneg i32 %i.bb to i64              ; 2 uses
  %i.bd = shl nuw nsw i64 %i.bc, 2
  %i.be = getelementptr i8, ptr %i.i, i64 %i.ba
  %i.bf = getelementptr i8, ptr %i.be, i64 %i.bd
  %i.bg = getelementptr i8, ptr %i.bf, i64 %i.q
  %scevgep69 = getelementptr i8, ptr %i.bg, i64 4
  %i.bh = mul nsw i64 %i.aw, %i.az
  %i.bi = getelementptr i8, ptr %5, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bi, i64 %i.bc
  %scevgep70 = getelementptr i8, ptr %i.bj, i64 1
  %i.bk = zext i16 %i.w to i64                    ; 2 uses
  %min.iters.check77 = icmp ult i16 %i.w, 8
  %bound071 = icmp ult ptr %i.r, %scevgep70
  %bound172 = icmp ult ptr %5, %scevgep69
  %found.conflict73 = and i1 %bound071, %bound172
  %i.bl = or i32 %7, %i.u
  %i.bm = icmp slt i32 %i.bl, 0
  %i.bn = or i1 %found.conflict73, %i.bm
  %n.vec79 = and i64 %i.bk, 65528                 ; 5 uses
  %i.bo = trunc nuw nsw i64 %n.vec79 to i32
  %i.bp = sub nsw i32 %i.x, %i.bo
  %i.bq = shl nuw nsw i64 %n.vec79, 2
  %cmp.n88 = icmp eq i64 %n.vec79, %i.bk
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge77.i
  %.05480.i = phi i32 [ %i.cd, %._crit_edge77.i ], [ %i.aa, %.preheader.i.preheader ] ; 2 uses
  %.179.i = phi ptr [ %i.ce, %._crit_edge77.i ], [ %5, %.preheader.i.preheader ] ; 4 uses
  %.15878.i = phi ptr [ %i.cf, %._crit_edge77.i ], [ %i.r, %.preheader.i.preheader ] ; 4 uses
  %brmerge = select i1 %min.iters.check77, i1 true, i1 %i.bn
  br i1 %brmerge, label %scalar.ph76.preheader, label %vector.ph78

vector.ph78:                                      ; preds = %.preheader.i
  %i.br = getelementptr i8, ptr %.15878.i, i64 %i.bq
  %i.bs = getelementptr i8, ptr %.179.i, i64 %n.vec79
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80, %vector.ph78
  %index81 = phi i64 [ 0, %vector.ph78 ], [ %index.next86, %vector.body80 ] ; 3 uses
  %i.bt = shl i64 %index81, 2
  %next.gep82 = getelementptr i8, ptr %.15878.i, i64 %i.bt ; 2 uses
  %next.gep83 = getelementptr i8, ptr %.179.i, i64 %index81 ; 2 uses
  %i.bu = getelementptr i8, ptr %next.gep83, i64 4
  %wide.load84 = load <4 x i8>, ptr %next.gep83, align 1, !tbaa !50, !alias.scope !837
  %wide.load85 = load <4 x i8>, ptr %i.bu, align 1, !tbaa !50, !alias.scope !837
  %i.bv = zext <4 x i8> %wide.load84 to <4 x i32>
  %i.bw = zext <4 x i8> %wide.load85 to <4 x i32>
  %i.bx = shl nuw <4 x i32> %i.bv, splat (i32 24)
  %i.by = shl nuw <4 x i32> %i.bw, splat (i32 24)
  %i.bz = or disjoint <4 x i32> %i.bx, splat (i32 16777215)
  %i.ca = or disjoint <4 x i32> %i.by, splat (i32 16777215)
  %i.cb = getelementptr i8, ptr %next.gep82, i64 16
  store <4 x i32> %i.bz, ptr %next.gep82, align 4, !tbaa !259, !alias.scope !838, !noalias !837
  store <4 x i32> %i.ca, ptr %i.cb, align 4, !tbaa !259, !alias.scope !838, !noalias !837
  %index.next86 = add nuw i64 %index81, 8         ; 2 uses
  %i.cc = icmp eq i64 %index.next86, %n.vec79
  br i1 %i.cc, label %middle.block87, label %vector.body80, !llvm.loop !825

middle.block87:                                   ; preds = %vector.body80
  br i1 %cmp.n88, label %._crit_edge77.i, label %scalar.ph76.preheader

scalar.ph76.preheader:                            ; preds = %.preheader.i, %middle.block87
  %.05176.i.ph = phi i32 [ %i.bp, %middle.block87 ], [ %i.x, %.preheader.i ]
  %.05275.i.ph = phi ptr [ %i.br, %middle.block87 ], [ %.15878.i, %.preheader.i ]
  %.05374.i.ph = phi ptr [ %i.bs, %middle.block87 ], [ %.179.i, %.preheader.i ]
  br label %scalar.ph76

._crit_edge77.i:                                  ; preds = %scalar.ph76, %middle.block87
  %i.cd = add nsw i32 %.05480.i, -1
  %i.ce = getelementptr inbounds i8, ptr %.179.i, i64 %i.aw
  %i.cf = getelementptr inbounds i8, ptr %.15878.i, i64 %i.ax
  %i.cg = icmp sgt i32 %.05480.i, 1
  br i1 %i.cg, label %.preheader.i, label %_Z30ImFontAtlasTextureBlockConvertPKh15ImTextureFormatiPhS1_iii.exit, !llvm.loop !11

scalar.ph76:                                      ; preds = %scalar.ph76.preheader, %scalar.ph76
  %.05176.i = phi i32 [ %i.cn, %scalar.ph76 ], [ %.05176.i.ph, %scalar.ph76.preheader ] ; 2 uses
  %.05275.i = phi ptr [ %i.cm, %scalar.ph76 ], [ %.05275.i.ph, %scalar.ph76.preheader ] ; 2 uses
  %.05374.i = phi ptr [ %i.ch, %scalar.ph76 ], [ %.05374.i.ph, %scalar.ph76.preheader ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.05374.i, i64 1
  %i.ci = load i8, ptr %.05374.i, align 1, !tbaa !50
  %i.cj = zext i8 %i.ci to i32
  %i.ck = shl nuw i32 %i.cj, 24
  %i.cl = or disjoint i32 %i.ck, 16777215
  %i.cm = getelementptr inbounds nuw i8, ptr %.05275.i, i64 4
  store i32 %i.cl, ptr %.05275.i, align 4, !tbaa !259
  %i.cn = add nsw i32 %.05176.i, -1
  %i.co = icmp sgt i32 %.05176.i, 1
  br i1 %i.co, label %scalar.ph76, label %._crit_edge77.i, !llvm.loop !826

bb.d:                                             ; preds = %bb.c
  %i.cp = icmp eq i32 %6, 0
  %i.cq = icmp eq i32 %i.t, 1
  %or.cond3.i = and i1 %i.cp, %i.cq
  %i.cr = icmp ne i16 %i.z, 0
  %or.cond85.i = and i1 %or.cond3.i, %i.cr
  br i1 %or.cond85.i, label %.preheader65.lr.ph.i, label %_Z30ImFontAtlasTextureBlockConvertPKh15ImTextureFormatiPhS1_iii.exit

.preheader65.lr.ph.i:                             ; preds = %bb.d
  %.not = icmp eq i16 %i.w, 0
  %i.cs = sext i32 %7 to i64                      ; 2 uses
  %i.ct = sext i32 %i.u to i64                    ; 2 uses
  br i1 %.not, label %_Z30ImFontAtlasTextureBlockConvertPKh15ImTextureFormatiPhS1_iii.exit, label %.preheader65.i.preheader

.preheader65.i.preheader:                         ; preds = %.preheader65.lr.ph.i
  %i.cu = add nsw i32 %i.aa, -1
  %i.cv = zext nneg i32 %i.cu to i64              ; 2 uses
  %i.cw = mul nsw i64 %i.ct, %i.cv
  %i.cx = add nsw i32 %i.x, -1
  %i.cy = zext nneg i32 %i.cx to i64              ; 2 uses
  %i.cz = getelementptr i8, ptr %i.i, i64 %i.cw
  %i.da = getelementptr i8, ptr %i.cz, i64 %i.q
  %i.db = getelementptr i8, ptr %i.da, i64 %i.cy
  %scevgep = getelementptr i8, ptr %i.db, i64 1
  %i.dc = mul nsw i64 %i.cs, %i.cv
  %i.dd = shl nuw nsw i64 %i.cy, 2
  %i.de = getelementptr i8, ptr %5, i64 %i.dc
  %i.df = getelementptr i8, ptr %i.de, i64 %i.dd
  %scevgep62 = getelementptr i8, ptr %i.df, i64 4
  %i.dg = zext i16 %i.w to i64                    ; 2 uses
  %min.iters.check = icmp ult i16 %i.w, 8
  %bound0 = icmp ult ptr %i.r, %scevgep62
  %bound1 = icmp ult ptr %5, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.dh = or i32 %7, %i.u
  %i.di = icmp slt i32 %i.dh, 0
  %i.dj = or i1 %found.conflict, %i.di
  %n.vec = and i64 %i.dg, 65528                   ; 5 uses
  %i.dk = trunc nuw nsw i64 %n.vec to i32
  %i.dl = sub nsw i32 %i.x, %i.dk
  %i.dm = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %i.dg
  br label %.preheader65.i

.preheader65.i:                                   ; preds = %.preheader65.i.preheader, %._crit_edge.i
  %.05073.i = phi i32 [ %i.dx, %._crit_edge.i ], [ %i.aa, %.preheader65.i.preheader ] ; 2 uses
  %.272.i = phi ptr [ %i.dy, %._crit_edge.i ], [ %5, %.preheader65.i.preheader ] ; 4 uses
  %.25971.i = phi ptr [ %i.dz, %._crit_edge.i ], [ %i.r, %.preheader65.i.preheader ] ; 4 uses
  %brmerge136 = select i1 %min.iters.check, i1 true, i1 %i.dj
  br i1 %brmerge136, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader65.i
  %i.dn = getelementptr i8, ptr %.25971.i, i64 %n.vec
  %i.do = getelementptr i8, ptr %.272.i, i64 %i.dm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.25971.i, i64 %index ; 2 uses
  %i.dp = shl i64 %index, 2
  %next.gep64 = getelementptr i8, ptr %.272.i, i64 %i.dp ; 2 uses
  %i.dq = getelementptr i8, ptr %next.gep64, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep64, align 4, !tbaa !259, !alias.scope !839
  %wide.load65 = load <4 x i32>, ptr %i.dq, align 4, !tbaa !259, !alias.scope !839
  %i.dr = lshr <4 x i32> %wide.load, splat (i32 24)
  %i.ds = lshr <4 x i32> %wide.load65, splat (i32 24)
  %i.dt = trunc nuw <4 x i32> %i.dr to <4 x i8>
  %i.du = trunc nuw <4 x i32> %i.ds to <4 x i8>
  %i.dv = getelementptr i8, ptr %next.gep, i64 4
  store <4 x i8> %i.dt, ptr %next.gep, align 1, !tbaa !50, !alias.scope !840, !noalias !839
  store <4 x i8> %i.du, ptr %i.dv, align 1, !tbaa !50, !alias.scope !840, !noalias !839
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dw = icmp eq i64 %index.next, %n.vec
  br i1 %i.dw, label %middle.block, label %vector.body, !llvm.loop !830

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader65.i, %middle.block
  %.070.i.ph = phi i32 [ %i.dl, %middle.block ], [ %i.x, %.preheader65.i ]
  %.04869.i.ph = phi ptr [ %i.dn, %middle.block ], [ %.25971.i, %.preheader65.i ]
  %.04968.i.ph = phi ptr [ %i.do, %middle.block ], [ %.272.i, %.preheader65.i ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %i.dx = add nsw i32 %.05073.i, -1
  %i.dy = getelementptr inbounds i8, ptr %.272.i, i64 %i.cs
  %i.dz = getelementptr inbounds i8, ptr %.25971.i, i64 %i.ct
  %i.ea = icmp sgt i32 %.05073.i, 1
  br i1 %i.ea, label %.preheader65.i, label %_Z30ImFontAtlasTextureBlockConvertPKh15ImTextureFormatiPhS1_iii.exit, !llvm.loop !12

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.070.i = phi i32 [ %i.eg, %scalar.ph ], [ %.070.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.04869.i = phi ptr [ %i.ef, %scalar.ph ], [ %.04869.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.04968.i = phi ptr [ %i.eb, %scalar.ph ], [ %.04968.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.04968.i, i64 4
  %i.ec = load i32, ptr %.04968.i, align 4, !tbaa !259
  %i.ed = lshr i32 %i.ec, 24
  %i.ee = trunc nuw i32 %i.ed to i8
  %i.ef = getelementptr inbounds nuw i8, ptr %.04869.i, i64 1
  store i8 %i.ee, ptr %.04869.i, align 1, !tbaa !50
  %i.eg = add nsw i32 %.070.i, -1
  %i.eh = icmp sgt i32 %.070.i, 1
  br i1 %i.eh, label %scalar.ph, label %._crit_edge.i, !llvm.loop !831

_Z30ImFontAtlasTextureBlockConvertPKh15ImTextureFormatiPhS1_iii.exit: ; preds = %._crit_edge.i, %._crit_edge77.i, %.prol.loopexit, %.lr.ph.i.new, %bb.b, %.preheader63.i, %.preheader.lr.ph.i, %bb.d, %.preheader65.lr.ph.i
  %i.ei = load i16, ptr %4, align 2, !tbaa !439
  %i.ej = zext i16 %i.ei to i32                   ; 8 uses
  %i.ek = load i16, ptr %i.e, align 2, !tbaa !440
  %i.el = zext i16 %i.ek to i32                   ; 8 uses
  %i.em = load ptr, ptr %i.h, align 8, !tbaa !309
  %i.en = load i32, ptr %i.j, align 4, !tbaa !312 ; 2 uses
  %i.eo = mul nsw i32 %i.en, %i.el
  %i.ep = add nsw i32 %i.eo, %i.ej
  %i.eq = load i32, ptr %i.n, align 4, !tbaa !314 ; 2 uses
  %i.er = mul nsw i32 %i.ep, %i.eq
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds i8, ptr %i.em, i64 %i.es ; 2 uses
  %i.eu = mul nsw i32 %i.eq, %i.en                ; 2 uses
  %i.ev = load i16, ptr %i.v, align 2, !tbaa !441 ; 13 uses
  %i.ew = zext i16 %i.ev to i32                   ; 5 uses
  %i.ex = load i16, ptr %i.y, align 2, !tbaa !442 ; 8 uses
  %i.ey = zext i16 %i.ex to i32                   ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !404 ; 6 uses
  %i.fb = fcmp une float %i.fa, 1.000000e+00
  br i1 %i.fb, label %bb.e, label %_Z34ImFontAtlasTextureBlockPostProcessP26ImFontAtlasPostProcessData.exit

bb.e:                                             ; preds = %_Z30ImFontAtlasTextureBlockConvertPKh15ImTextureFormatiPhS1_iii.exit
  %i.fc = load i32, ptr %i.s, align 8, !tbaa !310
  switch i32 %i.fc, label %_Z34ImFontAtlasTextureBlockPostProcessP26ImFontAtlasPostProcessData.exit [
    i32 1, label %bb.f
    i32 0, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %.not37 = icmp eq i16 %i.ex, 0
  br i1 %.not37, label %_Z34ImFontAtlasTextureBlockPostProcessP26ImFontAtlasPostProcessData.exit, label %.lr.ph56.i.i

.lr.ph56.i.i:                                     ; preds = %bb.f
  %i.fd = sext i32 %i.eu to i64
  %.not38 = icmp eq i16 %i.ev, 0
  br i1 %.not38, label %_Z34ImFontAtlasTextureBlockPostProcessP26ImFontAtlasPostProcessData.exit, label %.lr.ph56.split.i.i.preheader

.lr.ph56.split.i.i.preheader:                     ; preds = %.lr.ph56.i.i
  %i.fe = zext i16 %i.ev to i64                   ; 5 uses
  %min.iters.check106 = icmp ult i16 %i.ev, 4
  %min.iters.check107 = icmp ult i16 %i.ev, 16
  %i.ff = and i64 %i.fe, 12
  %n.vec109 = and i64 %i.fe, 65520                ; 5 uses
  %i.fg = trunc nuw nsw i64 %n.vec109 to i32
  %i.fh = sub nsw i32 %i.ew, %i.fg
  %broadcast.splatinsert110 = insertelement <16 x float> poison, float %i.fa, i64 0
  %broadcast.splat111 = shufflevector <16 x float> %broadcast.splatinsert110, <16 x float> poison, <16 x i32> zeroinitializer
  %cmp.n118 = icmp eq i64 %n.vec109, %i.fe
  %min.epilog.iters.check = icmp eq i64 %i.ff, 0
  %n.vec121 = and i64 %i.fe, 65532                ; 4 uses
  %i.fi = trunc nuw nsw i64 %n.vec121 to i32
  %i.fj = sub nsw i32 %i.ew, %i.fi
  %broadcast.splatinsert122 = insertelement <4 x float> poison, float %i.fa, i64 0
  %broadcast.splat123 = shufflevector <4 x float> %broadcast.splatinsert122, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n128 = icmp eq i64 %n.vec121, %i.fe
  br label %iter.check

.lr.ph56.splitthread-pre-split.i.i:               ; preds = %._crit_edge52.i.i
  %i.fk = getelementptr inbounds i8, ptr %.054.i.i, i64 %i.fd
  %i.fl = add nsw i32 %.03953.i.i, -1
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph56.split.i.i.preheader, %.lr.ph56.splitthread-pre-split.i.i
  %.054.i.i = phi ptr [ %i.fk, %.lr.ph56.splitthread-pre-split.i.i ], [ %i.et, %.lr.ph56.split.i.i.preheader ] ; 6 uses
  %.03953.i.i = phi i32 [ %i.fl, %.lr.ph56.splitthread-pre-split.i.i ], [ %i.ey, %.lr.ph56.split.i.i.preheader ] ; 2 uses
  br i1 %min.iters.check106, label %.lr.ph51.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check107, label %vec.epilog.ph, label %vector.ph108

vector.ph108:                                     ; preds = %vector.main.loop.iter.check
  %i.fm = getelementptr i8, ptr %.054.i.i, i64 %n.vec109
  br label %vector.body112

vector.body112:                                   ; preds = %vector.body112, %vector.ph108
  %index113 = phi i64 [ 0, %vector.ph108 ], [ %index.next116, %vector.body112 ] ; 2 uses
  %next.gep114 = getelementptr i8, ptr %.054.i.i, i64 %index113 ; 2 uses
  %wide.load115 = load <16 x i8>, ptr %next.gep114, align 1, !tbaa !50
  %i.fn = uitofp <16 x i8> %wide.load115 to <16 x float>
  %i.fo = fmul <16 x float> %broadcast.splat111, %i.fn
  %i.fp = fptoui <16 x float> %i.fo to <16 x i32>
  %i.fq = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.fp, <16 x i32> splat (i32 255))
  %i.fr = trunc nuw <16 x i32> %i.fq to <16 x i8>
  store <16 x i8> %i.fr, ptr %next.gep114, align 1, !tbaa !50
  %index.next116 = add nuw i64 %index113, 16      ; 2 uses
  %i.fs = icmp eq i64 %index.next116, %n.vec109
  br i1 %i.fs, label %middle.block117, label %vector.body112, !llvm.loop !832

middle.block117:                                  ; preds = %vector.body112
  br i1 %cmp.n118, label %._crit_edge52.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block117
  br i1 %min.epilog.iters.check, label %.lr.ph51.i.i.preheader, label %vec.epilog.ph, !prof !410

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec109, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ft = getelementptr i8, ptr %.054.i.i, i64 %n.vec121
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index124 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next127, %vec.epilog.vector.body ] ; 2 uses
  %next.gep125 = getelementptr i8, ptr %.054.i.i, i64 %index124 ; 2 uses
  %wide.load126 = load <4 x i8>, ptr %next.gep125, align 1, !tbaa !50
  %i.fu = uitofp <4 x i8> %wide.load126 to <4 x float>
  %i.fv = fmul <4 x float> %broadcast.splat123, %i.fu
  %i.fw = fptoui <4 x float> %i.fv to <4 x i32>
  %i.fx = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.fw, <4 x i32> splat (i32 255))
  %i.fy = trunc nuw <4 x i32> %i.fx to <4 x i8>
  store <4 x i8> %i.fy, ptr %next.gep125, align 1, !tbaa !50
  %index.next127 = add nuw i64 %index124, 4       ; 2 uses
  %i.fz = icmp eq i64 %index.next127, %n.vec121
  br i1 %i.fz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !833

end_hunk_4
