Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_draw?download=true
inline.NumInlined: 1479
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 299
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 354
begin_hunk_0_@_ZN10ImDrawList10PrimRectUVERK6ImVec2S2_S2_S2_j:bb.a
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !105  ; 6 uses
  store i16 %i.o, ptr %i.q, align 2, !tbaa !240
  %i.r = add i16 %i.o, 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  store i16 %i.r, ptr %i.s, align 2, !tbaa !240
  %i.t = add i16 %i.o, 2                          ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i16 %i.t, ptr %i.u, align 2, !tbaa !240
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  store i16 %i.o, ptr %i.v, align 2, !tbaa !240
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i16 %i.t, ptr %i.w, align 2, !tbaa !240
  %i.x = add i16 %i.o, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 10
  store i16 %i.x, ptr %i.y, align 2, !tbaa !240
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 11 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !239
  %i.ab = load i64, ptr %1, align 4
  store i64 %i.ab, ptr %i.aa, align 4
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !239
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %3, align 4
  store i64 %i.ae, ptr %i.ad, align 4
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !239 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i32 %5, ptr %i.ag, align 4, !tbaa !241
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  store i32 %i.a, ptr %i.ah, align 4
  %.sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i32 %i.c, ptr %.sroa_idx29, align 4
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !239 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  store i32 %i.g, ptr %i.aj, align 4
  %.sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store i32 %i.i, ptr %.sroa_idx23, align 4
  %i.ak = load ptr, ptr %i.z, align 8, !tbaa !239 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 36
  store i32 %5, ptr %i.al, align 4, !tbaa !241
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.an = load i64, ptr %2, align 4
  store i64 %i.an, ptr %i.am, align 4
  %i.ao = load ptr, ptr %i.z, align 8, !tbaa !239
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load i64, ptr %4, align 4
  store i64 %i.aq, ptr %i.ap, align 4
  %i.ar = load ptr, ptr %i.z, align 8, !tbaa !239 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  store i32 %5, ptr %i.as, align 4, !tbaa !241
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 60
  store i32 %i.d, ptr %i.at, align 4
  %.sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  store i32 %i.f, ptr %.sroa_idx26, align 4
  %i.au = load ptr, ptr %i.z, align 8, !tbaa !239 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 68
  store i32 %i.j, ptr %i.av, align 4
  %.sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  store i32 %i.l, ptr %.sroa_idx22, align 4
  %i.aw = load i32, ptr %i.m, align 4, !tbaa !75
  %i.ax = add i32 %i.aw, 4
  store i32 %i.ax, ptr %i.m, align 4, !tbaa !75
  %i.ay = load <2 x ptr>, ptr %i.z, align 8, !tbaa !243
  %i.az = load ptr, ptr %i.z, align 8, !tbaa !239
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 76
  store i32 %5, ptr %i.ba, align 4, !tbaa !241
  %i.bb = getelementptr inbounds nuw i8, <2 x ptr> %i.ay, <2 x i64> <i64 80, i64 12>
  store <2 x ptr> %i.bb, ptr %i.z, align 8, !tbaa !243
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN10ImDrawList10PrimQuadUVERK6ImVec2S2_S2_S2_S2_S2_S2_S2_j(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %8, i32 noundef %9) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !75
  %i.c = trunc i32 %i.b to i16                    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105  ; 6 uses
  store i16 %i.c, ptr %i.e, align 2, !tbaa !240
  %i.f = add i16 %i.c, 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store i16 %i.f, ptr %i.g, align 2, !tbaa !240
  %i.h = add i16 %i.c, 2                          ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i16 %i.h, ptr %i.i, align 2, !tbaa !240
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  store i16 %i.c, ptr %i.j, align 2, !tbaa !240
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i16 %i.h, ptr %i.k, align 2, !tbaa !240
  %i.l = add i16 %i.c, 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  store i16 %i.l, ptr %i.m, align 2, !tbaa !240
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 11 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !239
  %i.p = load i64, ptr %1, align 4
  store i64 %i.p, ptr %i.o, align 4
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !239
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %5, align 4
  store i64 %i.s, ptr %i.r, align 4
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !239  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i32 %9, ptr %i.u, align 4, !tbaa !241
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.w = load i64, ptr %2, align 4
  store i64 %i.w, ptr %i.v, align 4
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !239
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  %i.z = load i64, ptr %6, align 4
  store i64 %i.z, ptr %i.y, align 4
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !239 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 36
  store i32 %9, ptr %i.ab, align 4, !tbaa !241
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ad = load i64, ptr %3, align 4
  store i64 %i.ad, ptr %i.ac, align 4
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !239
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load i64, ptr %7, align 4
  store i64 %i.ag, ptr %i.af, align 4
  %i.ah = load ptr, ptr %i.n, align 8, !tbaa !239 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  store i32 %9, ptr %i.ai, align 4, !tbaa !241
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 60
  %i.ak = load i64, ptr %4, align 4
  store i64 %i.ak, ptr %i.aj, align 4
  %i.al = load ptr, ptr %i.n, align 8, !tbaa !239
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 68
  %i.an = load i64, ptr %8, align 4
  store i64 %i.an, ptr %i.am, align 4
  %i.ao = load i32, ptr %i.a, align 4, !tbaa !75
  %i.ap = add i32 %i.ao, 4
  store i32 %i.ap, ptr %i.a, align 4, !tbaa !75
  %i.aq = load <2 x ptr>, ptr %i.n, align 8, !tbaa !243
  %i.ar = load ptr, ptr %i.n, align 8, !tbaa !239
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 76
  store i32 %9, ptr %i.as, align 4, !tbaa !241
  %i.at = getelementptr inbounds nuw i8, <2 x ptr> %i.aq, <2 x i64> <i64 80, i64 12>
  store <2 x ptr> %i.at, ptr %i.n, align 8, !tbaa !243
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
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.f = load i64, ptr %i.e, align 8              ; 11 uses
  %i.g = add nsw i32 %2, -1                       ; 4 uses
  %i.h = select i1 %.not443, i32 %i.g, i32 %2     ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.j = load float, ptr %i.i, align 8, !tbaa !88 ; 8 uses
  %i.k = fcmp ogt float %4, %i.j                  ; 5 uses
  %i.l = and i32 %5, -2147483633
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str) ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load i32, ptr %i.o, align 8, !tbaa !74   ; 2 uses
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
  %i.ac = mul nsw i32 %.v530, %i.h
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
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !35  ; 3 uses
  %i.ak = mul nuw nsw i32 %.not446, %2            ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 76 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !82
  %.not.i = icmp sgt i32 %i.ak, %i.am
  br i1 %.not.i, label %bb.i, label %.lr.ph.preheader

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 80 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !28 ; 2 uses
  %.not4.i = icmp eq ptr %i.ao, null
  br i1 %.not4.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.ao)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ap = zext nneg i32 %i.ak to i64
  %i.aq = shl nuw nsw i64 %i.ap, 3
  %i.ar = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.aq)
  store ptr %i.ar, ptr %i.an, align 8, !tbaa !28
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !82
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !35
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.k, %bb.h
  %i.as = phi ptr [ %i.aj, %bb.h ], [ %.pre, %bb.k ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 80
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !244 ; 11 uses
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
  %i.bb = load <2 x float>, ptr %i.az, align 4, !tbaa !8
  %i.bc = load <2 x float>, ptr %i.ba, align 4, !tbaa !8
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
  store float %i.bo, ptr %i.bn, align 4, !tbaa !234
  %i.bp = extractelement <2 x float> %i.bm, i64 0
  %i.bq = fneg float %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store float %i.bq, ptr %i.br, align 4, !tbaa !235
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !245

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
  %i.cc = load <2 x float>, ptr %i.au, align 4, !tbaa !8
  %i.cd = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.cf = fmul <2 x float> %i.ce, %i.cc
  %i.cg = load <2 x float>, ptr %1, align 4, !tbaa !8
  %i.ch = fadd <2 x float> %i.cf, %i.cg
  store <2 x float> %i.ch, ptr %i.aw, align 4
  %i.ci = load <2 x float>, ptr %i.au, align 4, !tbaa !8
  %i.cj = fmul <2 x float> %i.ce, %i.ci
  %i.ck = load <2 x float>, ptr %1, align 4, !tbaa !8
  %i.cl = fsub <2 x float> %i.ck, %i.cj
  %i.cm = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store <2 x float> %i.cl, ptr %i.cm, align 4
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bt ; 2 uses
  %i.co = load <2 x float>, ptr %i.bu, align 4, !tbaa !8
  %i.cp = fmul <2 x float> %i.ce, %i.co
  %i.cq = load <2 x float>, ptr %i.cn, align 4, !tbaa !8
  %i.cr = fadd <2 x float> %i.cp, %i.cq
  %i.cs = shl nuw nsw i32 %i.g, 1
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ct ; 2 uses
  store <2 x float> %i.cr, ptr %i.cu, align 4
  %i.cv = load <2 x float>, ptr %i.bu, align 4, !tbaa !8
  %i.cw = fmul <2 x float> %i.ce, %i.cv
  %i.cx = load <2 x float>, ptr %i.cn, align 4, !tbaa !8
  %i.cy = fsub <2 x float> %i.cx, %i.cw
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store <2 x float> %i.cy, ptr %i.cz, align 4
  br label %.lr.ph543

.lr.ph543:                                        ; preds = %bb.o, %.thread528
  %i.da = phi float [ %i.bz, %.thread528 ], [ %i.cb, %bb.o ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !75 ; 2 uses
  %i.dd = select i1 %.not448, i32 3, i32 2
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %wide.trip.count565 = zext nneg i32 %i.h to i64 ; 2 uses
  %i.df = insertelement <2 x float> poison, float %i.da, i64 0
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.backedge

.lr.ph549:                                        ; preds = %bb.r
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %.pre593 = load ptr, ptr %i.dh, align 8, !tbaa !239
  br label %bb.t

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph543
  %indvars.iv562 = phi i64 [ 0, %.lr.ph543 ], [ %indvars.iv.next563, %.backedge.backedge ] ; 2 uses
  %.0433540 = phi i32 [ %i.dc, %.lr.ph543 ], [ %i.dm, %.backedge.backedge ] ; 3 uses
  %indvars.iv.next563 = add nuw nsw i64 %indvars.iv562, 1 ; 5 uses
  %i.di = icmp eq i64 %indvars.iv.next563, %i.av  ; 2 uses
  %i.dj = trunc nuw nsw i64 %indvars.iv.next563 to i32
  %i.dk = select i1 %i.di, i32 0, i32 %i.dj       ; 2 uses
  %i.dl = add i32 %.0433540, %i.dd
  %i.dm = select i1 %i.di, i32 %i.dc, i32 %i.dl   ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv562
  %i.do = zext nneg i32 %i.dk to i64              ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.do
  %i.dq = load <2 x float>, ptr %i.dn, align 4, !tbaa !8
  %i.dr = load <2 x float>, ptr %i.dp, align 4, !tbaa !8
  %i.ds = fadd <2 x float> %i.dq, %i.dr
  %i.dt = fmul <2 x float> %i.ds, splat (float 5.000000e-01) ; 5 uses
  %foldExtExtBinop617 = fmul <2 x float> %i.dt, %i.dt
  %i.du = extractelement <2 x float> %foldExtExtBinop617, i64 1
  %i.dv = extractelement <2 x float> %i.dt, i64 0 ; 2 uses
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.dv, float %i.dv, float %i.du) ; 2 uses
  %i.dx = fcmp ogt float %i.dw, f0x358637BD
  br i1 %i.dx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.backedge
  %i.dy = fdiv float 1.000000e+00, %i.dw          ; 2 uses
  %i.dz = fcmp ogt float %i.dy, 1.000000e+02
  %spec.store.select = select i1 %i.dz, float 1.000000e+02, float %i.dy
  %i.ea = insertelement <2 x float> poison, float %spec.store.select, i64 0
  %i.eb = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ec = fmul <2 x float> %i.dt, %i.eb
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.backedge
  %i.ed = phi <2 x float> [ %i.ec, %bb.p ], [ %i.dt, %.backedge ]
  %i.ee = fmul <2 x float> %i.dg, %i.ed           ; 2 uses
  %i.ef = shl nuw nsw i32 %i.dk, 1
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.eg ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.do ; 2 uses
  %i.ej = load <2 x float>, ptr %i.ei, align 4, !tbaa !8
  %i.ek = fadd <2 x float> %i.ee, %i.ej
  store <2 x float> %i.ek, ptr %i.eh, align 4, !tbaa !8
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.em = load <2 x float>, ptr %i.ei, align 4, !tbaa !8
  %i.en = fsub <2 x float> %i.em, %i.ee
  store <2 x float> %i.en, ptr %i.el, align 4, !tbaa !8
  %i.eo = trunc i32 %i.dm to i16                  ; 4 uses
  %i.ep = load ptr, ptr %i.de, align 8, !tbaa !105 ; 13 uses
  store i16 %i.eo, ptr %i.ep, align 2, !tbaa !240
  %i.eq = trunc i32 %.0433540 to i16              ; 5 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 2
  store i16 %i.eq, ptr %i.er, align 2, !tbaa !240
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 4 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 2 uses
  br i1 %.not448, label %bb.r, label %.thread609

bb.r:                                             ; preds = %bb.q
  %i.eu = trunc i32 %i.dm to i16
  %i.ev = insertelement <2 x i16> poison, i16 %i.eu, i64 0
  %i.ew = trunc i32 %.0433540 to i16
  %i.ex = insertelement <2 x i16> %i.ev, i16 %i.ew, i64 1
  %i.ey = shufflevector <2 x i16> %i.ex, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ez = add i16 %i.eq, 2                        ; 2 uses
  store i16 %i.ez, ptr %i.es, align 2, !tbaa !240
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ep, i64 6
  store i16 %i.ez, ptr %i.fa, align 2, !tbaa !240
  %i.fb = add <4 x i16> %i.ey, <i16 2, i16 0, i16 1, i16 1> ; 2 uses
  store <4 x i16> %i.fb, ptr %i.et, align 2, !tbaa !240
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store i16 %i.eq, ptr %i.fc, align 2, !tbaa !240
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ep, i64 18
  store i16 %i.eq, ptr %i.fd, align 2, !tbaa !240
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ep, i64 20
  store i16 %i.eo, ptr %i.fe, align 2, !tbaa !240
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ep, i64 22
  %i.fg = extractelement <4 x i16> %i.fb, i64 2
  store i16 %i.fg, ptr %i.ff, align 2, !tbaa !240
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  store ptr %i.fh, ptr %i.de, align 8, !tbaa !105
  %exitcond566.not = icmp eq i64 %indvars.iv.next563, %wide.trip.count565
  br i1 %exitcond566.not, label %.lr.ph549, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.r, %.thread609
  br label %.backedge, !llvm.loop !246

.thread609:                                       ; preds = %bb.q
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ep, i64 10
  %i.fj = add i16 %i.eq, 1                        ; 2 uses
  store i16 %i.fj, ptr %i.es, align 2, !tbaa !240
  %i.fk = add i16 %i.eo, 1
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ep, i64 6
  store i16 %i.fk, ptr %i.fl, align 2, !tbaa !240
  store i16 %i.fj, ptr %i.et, align 2, !tbaa !240
  store i16 %i.eo, ptr %i.fi, align 2, !tbaa !240
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  store ptr %i.fm, ptr %i.de, align 8, !tbaa !105
  %exitcond566.not611 = icmp eq i64 %indvars.iv.next563, %wide.trip.count565
  br i1 %exitcond566.not611, label %.lr.ph547, label %.backedge.backedge

.lr.ph547:                                        ; preds = %.thread609
  %i.fn = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !247
  %i.fq = sext i32 %i.u to i64
  %i.fr = getelementptr inbounds [16 x i8], ptr %i.fp, i64 %i.fq ; 2 uses
  %i.fs = load <2 x i32>, ptr %i.fr, align 4, !tbaa !8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load <2 x i32>, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !8
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %.pre592 = load ptr, ptr %i.fu, align 8, !tbaa !239
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph547, %bb.s
  %i.fv = phi ptr [ %.pre592, %.lr.ph547 ], [ %i.gj, %bb.s ]
  %indvars.iv567 = phi i64 [ 0, %.lr.ph547 ], [ %indvars.iv.next568, %bb.s ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv567, 4
  %i.fw = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx ; 2 uses
  %i.fx = load i64, ptr %i.fw, align 4
  store i64 %i.fx, ptr %i.fv, align 4
  %i.fy = load ptr, ptr %i.fu, align 8, !tbaa !239
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store <2 x i32> %i.fs, ptr %i.fz, align 4
  %i.ga = load ptr, ptr %i.fu, align 8, !tbaa !239 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  store i32 %3, ptr %i.gb, align 4, !tbaa !241
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 20
  %i.ge = load i64, ptr %i.gc, align 4
  store i64 %i.ge, ptr %i.gd, align 4
  %i.gf = load ptr, ptr %i.fu, align 8, !tbaa !239
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 28
  store <2 x i32> %i.ft, ptr %i.gg, align 4
  %i.gh = load ptr, ptr %i.fu, align 8, !tbaa !239 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 36
  store i32 %3, ptr %i.gi, align 4, !tbaa !241
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 40 ; 2 uses
  store ptr %i.gj, ptr %i.fu, align 8, !tbaa !239
  %indvars.iv.next568 = add nuw nsw i64 %indvars.iv567, 1 ; 2 uses
  %exitcond571.not = icmp eq i64 %indvars.iv.next568, %i.av
  br i1 %exitcond571.not, label %.loopexit535, label %bb.s, !llvm.loop !248

bb.t:                                             ; preds = %.lr.ph549, %bb.t
  %i.gk = phi ptr [ %.pre593, %.lr.ph549 ], [ %i.hf, %bb.t ]
  %indvars.iv572 = phi i64 [ 0, %.lr.ph549 ], [ %indvars.iv.next573, %bb.t ] ; 3 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv572
  %i.gm = load i64, ptr %i.gl, align 4
  store i64 %i.gm, ptr %i.gk, align 4
  %i.gn = load ptr, ptr %i.dh, align 8, !tbaa !239
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store i64 %i.f, ptr %i.go, align 4
  %i.gp = load ptr, ptr %i.dh, align 8, !tbaa !239 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store i32 %3, ptr %i.gq, align 4, !tbaa !241
  %.idx607 = shl nuw nsw i64 %indvars.iv572, 4
  %i.gr = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx607 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 20
  %i.gt = load i64, ptr %i.gr, align 4
  store i64 %i.gt, ptr %i.gs, align 4
  %i.gu = load ptr, ptr %i.dh, align 8, !tbaa !239
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 28
  store i64 %i.f, ptr %i.gv, align 4
  %i.gw = load ptr, ptr %i.dh, align 8, !tbaa !239 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 36
  store i32 %i.r, ptr %i.gx, align 4, !tbaa !241
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 40
  %i.ha = load i64, ptr %i.gy, align 4
  store i64 %i.ha, ptr %i.gz, align 4
  %i.hb = load ptr, ptr %i.dh, align 8, !tbaa !239
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 48
  store i64 %i.f, ptr %i.hc, align 4
  %i.hd = load ptr, ptr %i.dh, align 8, !tbaa !239 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 56
  store i32 %i.r, ptr %i.he, align 4, !tbaa !241
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 60 ; 2 uses
  store ptr %i.hf, ptr %i.dh, align 8, !tbaa !239
  %indvars.iv.next573 = add nuw nsw i64 %indvars.iv572, 1 ; 2 uses
  %exitcond576.not = icmp eq i64 %indvars.iv.next573, %i.av
  br i1 %exitcond576.not, label %.loopexit535, label %bb.t, !llvm.loop !249

bb.u:                                             ; preds = %bb.n
  %i.hg = fsub float %i.t, %i.j
  %i.hh = fmul float %i.hg, 5.000000e-01          ; 3 uses
  %i.hi = fadd float %i.j, %i.hh
  %i.hj = load <2 x float>, ptr %i.au, align 4, !tbaa !8
  %i.hk = insertelement <2 x float> poison, float %i.hi, i64 0
  %i.hl = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.hm = fmul <2 x float> %i.hl, %i.hj
  %i.hn = load <2 x float>, ptr %1, align 4, !tbaa !8
  %i.ho = fadd <2 x float> %i.hm, %i.hn
  store <2 x float> %i.ho, ptr %i.aw, align 4
  %i.hp = load <2 x float>, ptr %i.au, align 4, !tbaa !8 ; 2 uses
  %i.hq = insertelement <2 x float> poison, float %i.hh, i64 0
  %i.hr = shufflevector <2 x float> %i.hq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hs = fmul <2 x float> %i.hr, %i.hp           ; 2 uses
  %i.ht = load <2 x float>, ptr %1, align 4, !tbaa !8
  %i.hu = fadd <2 x float> %i.hs, %i.ht
  %i.hv = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store <2 x float> %i.hu, ptr %i.hv, align 4
  %i.hw = load <2 x float>, ptr %1, align 4, !tbaa !8
  %i.hx = fsub <2 x float> %i.hw, %i.hs
  %i.hy = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store <2 x float> %i.hx, ptr %i.hy, align 4
  %i.hz = fmul <2 x float> %i.hl, %i.hp
  %i.ia = load <2 x float>, ptr %1, align 4, !tbaa !8
  %i.ib = fsub <2 x float> %i.ia, %i.hz
  %i.ic = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store <2 x float> %i.ib, ptr %i.ic, align 4
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bt ; 4 uses
  %i.ie = load <2 x float>, ptr %i.bu, align 4, !tbaa !8
  %i.if = fmul <2 x float> %i.hl, %i.ie
  %i.ig = load <2 x float>, ptr %i.id, align 4, !tbaa !8
  %i.ih = fadd <2 x float> %i.if, %i.ig
  %i.ii = shl nuw nsw i32 %i.g, 2
  %i.ij = zext nneg i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ij ; 4 uses
  store <2 x float> %i.ih, ptr %i.ik, align 4
  %i.il = load <2 x float>, ptr %i.bu, align 4, !tbaa !8 ; 2 uses
  %i.im = fmul <2 x float> %i.hr, %i.il           ; 2 uses
  %i.in = load <2 x float>, ptr %i.id, align 4, !tbaa !8
  %i.io = fadd <2 x float> %i.im, %i.in
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  store <2 x float> %i.io, ptr %i.ip, align 4
  %i.iq = load <2 x float>, ptr %i.id, align 4, !tbaa !8
  %i.ir = fsub <2 x float> %i.iq, %i.im
  %i.is = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  store <2 x float> %i.ir, ptr %i.is, align 4
  %i.it = fmul <2 x float> %i.hl, %i.il
  %i.iu = load <2 x float>, ptr %i.id, align 4, !tbaa !8
  %i.iv = fsub <2 x float> %i.iu, %i.it
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  store <2 x float> %i.iv, ptr %i.iw, align 4
  br label %.lr.ph553

.lr.ph553:                                        ; preds = %bb.u, %.thread529
  %i.ix = phi float [ %i.bx, %.thread529 ], [ %i.hh, %bb.u ] ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !75 ; 2 uses
  %i.ja = fadd float %i.j, %i.ix
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted = load ptr, ptr %i.jb, align 8, !tbaa !105
  %wide.trip.count580 = zext nneg i32 %i.h to i64
  %i.jc = insertelement <2 x float> poison, float %i.ja, i64 0
  %i.jd = shufflevector <2 x float> %i.jc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.je = insertelement <2 x float> poison, float %i.ix, i64 0
  %i.jf = shufflevector <2 x float> %i.je, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.v

.lr.ph555:                                        ; preds = %bb.x
  store ptr %i.lr, ptr %i.jb, align 8, !tbaa !105
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 10 uses
  %.pre594 = load ptr, ptr %i.jg, align 8, !tbaa !239
  br label %bb.y

bb.v:                                             ; preds = %.lr.ph553, %bb.x
  %indvars.iv577 = phi i64 [ 0, %.lr.ph553 ], [ %indvars.iv.next578, %bb.x ] ; 2 uses
  %i.jh = phi ptr [ %.promoted, %.lr.ph553 ], [ %i.lr, %bb.x ] ; 9 uses
  %.0425550 = phi i32 [ %i.iz, %.lr.ph553 ], [ %spec.select, %bb.x ] ; 3 uses
  %indvars.iv.next578 = add nuw nsw i64 %indvars.iv577, 1 ; 4 uses
  %i.ji = icmp eq i64 %indvars.iv.next578, %i.av  ; 2 uses
  %i.jj = trunc nuw nsw i64 %indvars.iv.next578 to i32
  %i.jk = select i1 %i.ji, i32 0, i32 %i.jj       ; 2 uses
  %i.jl = add i32 %.0425550, 4
  %spec.select = select i1 %i.ji, i32 %i.iz, i32 %i.jl ; 3 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv577
  %i.jn = zext nneg i32 %i.jk to i64              ; 2 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.jn
  %i.jp = load <2 x float>, ptr %i.jm, align 4, !tbaa !8
  %i.jq = load <2 x float>, ptr %i.jo, align 4, !tbaa !8
  %i.jr = fadd <2 x float> %i.jp, %i.jq
  %i.js = fmul <2 x float> %i.jr, splat (float 5.000000e-01) ; 5 uses
  %foldExtExtBinop619 = fmul <2 x float> %i.js, %i.js
  %i.jt = extractelement <2 x float> %foldExtExtBinop619, i64 1
  %i.ju = extractelement <2 x float> %i.js, i64 0 ; 2 uses
  %i.jv = tail call float @llvm.fmuladd.f32(float %i.ju, float %i.ju, float %i.jt) ; 2 uses
  %i.jw = fcmp ogt float %i.jv, f0x358637BD
  br i1 %i.jw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.jx = fdiv float 1.000000e+00, %i.jv          ; 2 uses
  %i.jy = fcmp ogt float %i.jx, 1.000000e+02
  %spec.store.select6 = select i1 %i.jy, float 1.000000e+02, float %i.jx
  %i.jz = insertelement <2 x float> poison, float %spec.store.select6, i64 0
  %i.ka = shufflevector <2 x float> %i.jz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kb = fmul <2 x float> %i.js, %i.ka
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.kc = phi <2 x float> [ %i.kb, %bb.w ], [ %i.js, %bb.v ] ; 2 uses
  %i.kd = fmul <2 x float> %i.jd, %i.kc           ; 2 uses
  %i.ke = shl nsw i32 %i.jk, 2
  %i.kf = zext nneg i32 %i.ke to i64
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.kf ; 4 uses
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.jn ; 4 uses
  %i.ki = load <2 x float>, ptr %i.kh, align 4, !tbaa !8
  %i.kj = fadd <2 x float> %i.kd, %i.ki
  store <2 x float> %i.kj, ptr %i.kg, align 4, !tbaa !8
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.kl = fmul <2 x float> %i.jf, %i.kc           ; 2 uses
  %i.km = load <2 x float>, ptr %i.kh, align 4, !tbaa !8
  %i.kn = fadd <2 x float> %i.kl, %i.km
  store <2 x float> %i.kn, ptr %i.kk, align 4, !tbaa !8
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  %i.kp = load <2 x float>, ptr %i.kh, align 4, !tbaa !8
  %i.kq = fsub <2 x float> %i.kp, %i.kl
  store <2 x float> %i.kq, ptr %i.ko, align 4, !tbaa !8
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kg, i64 24
  %i.ks = load <2 x float>, ptr %i.kh, align 4, !tbaa !8
  %i.kt = fsub <2 x float> %i.ks, %i.kd
  store <2 x float> %i.kt, ptr %i.kr, align 4, !tbaa !8
  %i.ku = trunc i32 %spec.select to i16
  %i.kv = insertelement <2 x i16> poison, i16 %i.ku, i64 0
  %i.kw = trunc i32 %.0425550 to i16
  %i.kx = insertelement <2 x i16> %i.kv, i16 %i.kw, i64 1
  %i.ky = shufflevector <2 x i16> %i.kx, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.kz = trunc i32 %spec.select to i16           ; 3 uses
  %i.la = trunc i32 %.0425550 to i16              ; 3 uses
  %i.lb = add <4 x i16> %i.ky, <i16 1, i16 1, i16 2, i16 2> ; 3 uses
  %i.lc = shufflevector <4 x i16> %i.lb, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 2, i32 3, i32 0, i32 0, i32 1>
  %i.ld = add i16 %i.kz, 1
  store <8 x i16> %i.lc, ptr %i.jh, align 2, !tbaa !240
  %i.le = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  store i16 %i.la, ptr %i.le, align 2, !tbaa !240
  %i.lf = getelementptr inbounds nuw i8, ptr %i.jh, i64 18
  store i16 %i.la, ptr %i.lf, align 2, !tbaa !240
  %i.lg = getelementptr inbounds nuw i8, ptr %i.jh, i64 20
  store i16 %i.kz, ptr %i.lg, align 2, !tbaa !240
  %i.lh = getelementptr inbounds nuw i8, ptr %i.jh, i64 22
  store i16 %i.ld, ptr %i.lh, align 2, !tbaa !240
  %i.li = getelementptr inbounds nuw i8, ptr %i.jh, i64 24
  %i.lj = extractelement <4 x i16> %i.lb, i64 3   ; 2 uses
  store i16 %i.lj, ptr %i.li, align 2, !tbaa !240
  %i.lk = getelementptr inbounds nuw i8, ptr %i.jh, i64 26
  %i.ll = shufflevector <4 x i16> %i.lb, <4 x i16> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.lm = insertelement <4 x i16> %i.ll, i16 %i.la, i64 1
  %i.ln = insertelement <4 x i16> %i.lm, i16 %i.kz, i64 3
  %i.lo = add <4 x i16> %i.ln, <i16 0, i16 3, i16 poison, i16 3>
  %i.lp = shufflevector <4 x i16> %i.lo, <4 x i16> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  store <4 x i16> %i.lp, ptr %i.lk, align 2, !tbaa !240
  %i.lq = getelementptr inbounds nuw i8, ptr %i.jh, i64 34
  store i16 %i.lj, ptr %i.lq, align 2, !tbaa !240
  %i.lr = getelementptr inbounds nuw i8, ptr %i.jh, i64 36 ; 2 uses
  %exitcond581.not = icmp eq i64 %indvars.iv.next578, %wide.trip.count580
  br i1 %exitcond581.not, label %.lr.ph555, label %bb.v, !llvm.loop !250

bb.y:                                             ; preds = %.lr.ph555, %bb.y
  %i.ls = phi ptr [ %.pre594, %.lr.ph555 ], [ %i.mu, %bb.y ]
  %indvars.iv582 = phi i64 [ 0, %.lr.ph555 ], [ %indvars.iv.next583, %bb.y ] ; 2 uses
  %.idx608 = shl nuw nsw i64 %indvars.iv582, 5
  %i.lt = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx608 ; 4 uses
  %i.lu = load i64, ptr %i.lt, align 4
  store i64 %i.lu, ptr %i.ls, align 4
  %i.lv = load ptr, ptr %i.jg, align 8, !tbaa !239
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  store i64 %i.f, ptr %i.lw, align 4
  %i.lx = load ptr, ptr %i.jg, align 8, !tbaa !239 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  store i32 %i.r, ptr %i.ly, align 4, !tbaa !241
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lx, i64 20
  %i.mb = load i64, ptr %i.lz, align 4
  store i64 %i.mb, ptr %i.ma, align 4
  %i.mc = load ptr, ptr %i.jg, align 8, !tbaa !239
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 28
  store i64 %i.f, ptr %i.md, align 4
  %i.me = load ptr, ptr %i.jg, align 8, !tbaa !239 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 36
  store i32 %3, ptr %i.mf, align 4, !tbaa !241
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %i.mh = getelementptr inbounds nuw i8, ptr %i.me, i64 40
  %i.mi = load i64, ptr %i.mg, align 4
  store i64 %i.mi, ptr %i.mh, align 4
  %i.mj = load ptr, ptr %i.jg, align 8, !tbaa !239
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 48
  store i64 %i.f, ptr %i.mk, align 4
  %i.ml = load ptr, ptr %i.jg, align 8, !tbaa !239 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 56
  store i32 %3, ptr %i.mm, align 4, !tbaa !241
  %i.mn = getelementptr inbounds nuw i8, ptr %i.lt, i64 24
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ml, i64 60
  %i.mp = load i64, ptr %i.mn, align 4
  store i64 %i.mp, ptr %i.mo, align 4
  %i.mq = load ptr, ptr %i.jg, align 8, !tbaa !239
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 68
  store i64 %i.f, ptr %i.mr, align 4
  %i.ms = load ptr, ptr %i.jg, align 8, !tbaa !239 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 76
  store i32 %i.r, ptr %i.mt, align 4, !tbaa !241
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 80 ; 2 uses
  store ptr %i.mu, ptr %i.jg, align 8, !tbaa !239
  %indvars.iv.next583 = add nuw nsw i64 %indvars.iv582, 1 ; 2 uses
  %exitcond586.not = icmp eq i64 %indvars.iv.next583, %i.av
  br i1 %exitcond586.not, label %.loopexit535, label %bb.y, !llvm.loop !251

.loopexit535:                                     ; preds = %bb.s, %bb.t, %bb.y
  %i.mv = and i32 %i.ai, 65535
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !75
  %i.my = add i32 %i.mx, %i.mv
  store i32 %i.my, ptr %i.mw, align 4, !tbaa !75
  br label %.loopexit

.lr.ph558:                                        ; preds = %bb.d
  %i.mz = mul nsw i32 %i.h, 6
  %i.na = shl nsw i32 %i.h, 2
  tail call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %i.mz, i32 noundef %i.na)
  %i.nb = fmul float %4, 5.000000e-01
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.nf = zext nneg i32 %2 to i64
  %wide.trip.count590 = zext nneg i32 %i.h to i64
  %i.ng = insertelement <2 x float> poison, float %i.nb, i64 0
  %i.nh = shufflevector <2 x float> %i.ng, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph558, %bb.ab
  %indvars.iv587 = phi i64 [ 0, %.lr.ph558 ], [ %indvars.iv.next588, %bb.ab ] ; 2 uses
  %indvars.iv.next588 = add nuw nsw i64 %indvars.iv587, 1 ; 4 uses
  %i.ni = icmp eq i64 %indvars.iv.next588, %i.nf
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv587 ; 3 uses
  %i.nk = select i1 %i.ni, i64 0, i64 %indvars.iv.next588
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.nk ; 4 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 4 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nj, i64 4
  %i.no = load <2 x float>, ptr %i.nl, align 4, !tbaa !8
  %i.np = load <2 x float>, ptr %i.nj, align 4, !tbaa !8 ; 3 uses
  %i.nq = fsub <2 x float> %i.no, %i.np           ; 5 uses
  %foldExtExtBinop621 = fmul <2 x float> %i.nq, %i.nq
  %i.nr = extractelement <2 x float> %foldExtExtBinop621, i64 1
  %i.ns = extractelement <2 x float> %i.nq, i64 0 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN11ImFontAtlas20AddFontFromMemoryTTFEPvifPK12ImFontConfigPKt:bb.a
; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN11ImFontAtlas36AddFontFromMemoryCompressedBase85TTFEPKcfPK12ImFontConfigPKt(ptr noundef nonnull align 8 dereferenceable(760) %0, ptr nofree noundef readonly captures(none) %1, float noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr noundef %4) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #40
  %i.b = trunc i64 %i.a to i32
  %i.c = add nsw i32 %i.b, 4
  %i.d = sdiv i32 %i.c, 5
  %i.e = shl nsw i32 %i.d, 2
  %i.f = sext i32 %i.e to i64
  %i.g = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.f) ; 3 uses
  %i.h = load i8, ptr %1, align 1, !tbaa !31      ; 2 uses
  %.not21.i = icmp eq i8 %i.h, 0
  br i1 %.not21.i, label %_ZL8Decode85PKhPh.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.i = phi i8 [ %i.aq, %.lr.ph.i ], [ %i.h, %bb.a ] ; 2 uses
  %.023.i = phi ptr [ %i.ao, %.lr.ph.i ], [ %1, %bb.a ] ; 5 uses
  %.01522.i = phi ptr [ %i.ap, %.lr.ph.i ], [ %i.g, %bb.a ] ; 2 uses
  %i.j = sext i8 %i.i to i32
  %i.k = icmp sgt i8 %i.i, 91
  %.v.i.i = select i1 %i.k, i32 -36, i32 -35
  %i.l = add nsw i32 %.v.i.i, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %.023.i, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !31    ; 2 uses
  %i.o = sext i8 %i.n to i32
  %i.p = icmp sgt i8 %i.n, 91
  %.v.i17.i = select i1 %i.p, i32 -36, i32 -35
  %i.q = add nsw i32 %.v.i17.i, %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %.023.i, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !31    ; 2 uses
  %i.t = sext i8 %i.s to i32
  %i.u = icmp sgt i8 %i.s, 91
  %.v.i18.i = select i1 %i.u, i32 -36, i32 -35
  %i.v = add nsw i32 %.v.i18.i, %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %.023.i, i64 3
  %i.x = load i8, ptr %i.w, align 1, !tbaa !31    ; 2 uses
  %i.y = sext i8 %i.x to i32
  %i.z = icmp sgt i8 %i.x, 91
  %.v.i19.i = select i1 %i.z, i32 -36, i32 -35
  %i.aa = add nsw i32 %.v.i19.i, %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %.023.i, i64 4
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !31  ; 2 uses
  %i.ad = sext i8 %i.ac to i32
  %i.ae = icmp sgt i8 %i.ac, 91
  %.v.i20.i = select i1 %i.ae, i32 -36, i32 -35
  %i.af = add nsw i32 %.v.i20.i, %i.ad
  %i.ag = mul nsw i32 %i.af, 85
  %i.ah = add nsw i32 %i.aa, %i.ag
  %i.ai = mul nsw i32 %i.ah, 85
  %i.aj = add nsw i32 %i.v, %i.ai
  %i.ak = mul nsw i32 %i.aj, 85
  %i.al = add nsw i32 %i.q, %i.ak
  %i.am = mul i32 %i.al, 85
  %i.an = add i32 %i.l, %i.am
  store i32 %i.an, ptr %.01522.i, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %.023.i, i64 5 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.01522.i, i64 4
  %i.aq = load i8, ptr %i.ao, align 1, !tbaa !31  ; 2 uses
  %.not.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i, label %_ZL8Decode85PKhPh.exit, label %.lr.ph.i, !llvm.loop !583

_ZL8Decode85PKhPh.exit:                           ; preds = %.lr.ph.i, %bb.a
  %i.ar = tail call noundef ptr @_ZN11ImFontAtlas30AddFontFromMemoryCompressedTTFEPKvifPK12ImFontConfigPKt(ptr noundef nonnull align 8 dereferenceable(760) %0, ptr noundef %i.g, i32 poison, float noundef %2, ptr noundef %3, ptr noundef %4)
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.g)
  ret ptr %i.ar
}

declare noundef ptr @_ZN5ImGui17GetCurrentContextEv() local_unnamed_addr #2

declare void @_ZN5ImGui17SetCurrentContextEP12ImGuiContext(ptr noundef) local_unnamed_addr #2

declare void @_ZN5ImGui14SetCurrentFontEP6ImFontff(ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN11ImFontAtlas10RemoveFontEP6ImFont(ptr noundef nonnull align 8 dereferenceable(760) %0, ptr noundef %1) local_unnamed_addr #10 align 2 {
bb.a:
  tail call void @_Z28ImFontAtlasFontDestroyOutputP11ImFontAtlasP6ImFont(ptr noundef nonnull %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !418  ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !422  ; 2 uses
  %i.e = sext i32 %i.d to i64
  %.idx = shl nsw i64 %i.e, 3
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 %.idx
  %.not18 = icmp eq i32 %i.d, 0
  br i1 %.not18, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %_Z32ImFontAtlasFontDestroySourceDataP11ImFontAtlasP12ImFontConfig.exit, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !470  ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph21, label %._crit_edge

.lr.ph21:                                         ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.g

.lr.ph:                                           ; preds = %bb.a, %_Z32ImFontAtlasFontDestroySourceDataP11ImFontAtlasP12ImFontConfig.exit
  %.01219 = phi ptr [ %i.t, %_Z32ImFontAtlasFontDestroySourceDataP11ImFontAtlasP12ImFontConfig.exit ], [ %i.c, %bb.a ] ; 2 uses
  %i.k = load ptr, ptr %.01219, align 8, !tbaa !443 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  %i.m = load i8, ptr %i.l, align 4, !tbaa !345, !range !403, !noundef !404
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !415
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.p)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store ptr null, ptr %i.q, align 8, !tbaa !415
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 72 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !416  ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_Z32ImFontAtlasFontDestroySourceDataP11ImFontAtlasP12ImFontConfig.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.s)
  br label %_Z32ImFontAtlasFontDestroySourceDataP11ImFontAtlasP12ImFontConfig.exit

_Z32ImFontAtlasFontDestroySourceDataP11ImFontAtlasP12ImFontConfig.exit: ; preds = %bb.c, %bb.d
  store ptr null, ptr %i.r, align 8, !tbaa !416
  %i.t = getelementptr inbounds nuw i8, ptr %.01219, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.t, %i.f
  br i1 %.not, label %.preheader, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !385  ; 6 uses
  %i.x = load i32, ptr %i.u, align 8, !tbaa !388  ; 2 uses
  %i.y = sext i32 %i.x to i64                     ; 3 uses
  %.idx.i.i = shl nsw i64 %i.y, 3
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 %.idx.i.i
  %i.aa = icmp sgt i32 %i.x, 0
  br i1 %i.aa, label %.lr.ph.i.i, label %_ZN8ImVectorIP6ImFontE4findERKS1_.exit.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %bb.e
  %.07.i.i = phi ptr [ %i.ad, %bb.e ], [ %i.w, %._crit_edge ] ; 3 uses
  %i.ab = load ptr, ptr %.07.i.i, align 8, !tbaa !390
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZN8ImVectorIP6ImFontE4findERKS1_.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 3 uses
  %i.ae = icmp ult ptr %i.ad, %i.z
  br i1 %i.ae, label %.lr.ph.i.i, label %_ZN8ImVectorIP6ImFontE4findERKS1_.exit.i, !llvm.loop !584

_ZN8ImVectorIP6ImFontE4findERKS1_.exit.i:         ; preds = %bb.e, %.lr.ph.i.i, %._crit_edge
  %.0.lcssa.i.i = phi ptr [ %i.w, %._crit_edge ], [ %.07.i.i, %.lr.ph.i.i ], [ %i.ad, %bb.e ] ; 2 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.y
  %i.ag = icmp ult ptr %.0.lcssa.i.i, %i.af
  br i1 %i.ag, label %bb.f, label %_Z9IM_DELETEI6ImFontEvPT_.exit

bb.f:                                             ; preds = %_ZN8ImVectorIP6ImFontE4findERKS1_.exit.i
  %i.ah = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.ai = ptrtoint ptr %i.w to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 2 uses
  %i.ak = lshr exact i64 %i.aj, 3
  %i.al = getelementptr inbounds i8, ptr %i.w, i64 %i.aj ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = xor i64 %i.ak, -1
  %i.ao = add nsw i64 %i.an, %i.y
  %i.ap = shl i64 %i.ao, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.al, ptr nonnull align 8 %i.am, i64 %i.ap, i1 false)
  %i.aq = load i32, ptr %i.u, align 8, !tbaa !388
  %i.ar = add nsw i32 %i.aq, -1
  store i32 %i.ar, ptr %i.u, align 8, !tbaa !388
  br label %_Z9IM_DELETEI6ImFontEvPT_.exit

_Z9IM_DELETEI6ImFontEvPT_.exit:                   ; preds = %_ZN8ImVectorIP6ImFontE4findERKS1_.exit.i, %bb.f
  tail call void @_Z30ImFontAtlasBuildUpdatePointersP11ImFontAtlas(ptr noundef nonnull %0)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.as, align 8, !tbaa !425
  tail call void @_ZN6ImFontD1Ev(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(76) %1) #38
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %1)
  %i.at = load i32, ptr %i.u, align 8, !tbaa !388
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.k, label %bb.j

bb.g:                                             ; preds = %.lr.ph21, %bb.i
  %i.av = phi i32 [ %i.h, %.lr.ph21 ], [ %i.bk, %bb.i ] ; 2 uses
  %.020 = phi i32 [ 0, %.lr.ph21 ], [ %i.bl, %bb.i ] ; 3 uses
  %i.aw = load ptr, ptr %i.j, align 8, !tbaa !384
  %i.ax = sext i32 %.020 to i64                   ; 2 uses
  %i.ay = getelementptr inbounds [160 x i8], ptr %i.aw, i64 %i.ax ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 128
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !533
  %i.bb = icmp eq ptr %i.ba, %1
  br i1 %i.bb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bc = add nsw i32 %.020, -1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 160
  %i.be = sext i32 %i.av to i64
  %i.bf = xor i64 %i.ax, -1
  %i.bg = add nsw i64 %i.be, %i.bf
  %i.bh = mul nuw nsw i64 %i.bg, 160
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr nonnull align 8 %i.bd, i64 %i.bh, i1 false)
  %i.bi = load i32, ptr %i.g, align 8, !tbaa !414
  %i.bj = add nsw i32 %i.bi, -1                   ; 2 uses
  store i32 %i.bj, ptr %i.g, align 8, !tbaa !414
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bk = phi i32 [ %i.bj, %bb.h ], [ %i.av, %bb.g ] ; 2 uses
  %.1 = phi i32 [ %i.bc, %bb.h ], [ %.020, %bb.g ]
  %i.bl = add nsw i32 %.1, 1                      ; 2 uses
  %i.bm = icmp slt i32 %i.bl, %i.bk
  br i1 %i.bm, label %bb.g, label %._crit_edge, !llvm.loop !585

bb.j:                                             ; preds = %_Z9IM_DELETEI6ImFontEvPT_.exit
  %i.bn = load ptr, ptr %i.v, align 8, !tbaa !385
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !390
  br label %bb.k

bb.k:                                             ; preds = %_Z9IM_DELETEI6ImFontEvPT_.exit, %bb.j
  %i.bp = phi ptr [ %i.bo, %bb.j ], [ null, %_Z9IM_DELETEI6ImFontEvPT_.exit ]
  tail call void @_Z29ImFontAtlasBuildNotifySetFontP11ImFontAtlasP6ImFontS2_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.bp)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN11ImFontAtlas13AddCustomRectEiiP15ImFontAtlasRect(ptr noundef nonnull align 8 dereferenceable(760) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !389
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z20ImFontAtlasBuildInitP11ImFontAtlas(ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call noundef i32 @_Z22ImFontAtlasPackAddRectP11ImFontAtlasiiP20ImFontAtlasRectEntry(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr noundef null) ; 4 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = tail call noundef zeroext i1 @_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect(ptr noundef nonnull align 8 dereferenceable(760) %0, i32 noundef %i.d, ptr noundef nonnull %3) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 81
  %i.h = load i8, ptr %i.g, align 1, !tbaa !374, !range !403, !noundef !404
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = and i32 %i.d, 524287
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !389  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !586
  %i.n = zext nneg i32 %i.j to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4
  %i.q = shl i32 %i.p, 12
  %i.r = ashr exact i32 %i.q, 12
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !380
  %i.u = sext i32 %i.r to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.u ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !382
  %i.y = load i16, ptr %i.v, align 2, !tbaa !587
  %i.z = zext i16 %i.y to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !588
  %i.ac = zext i16 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !589
  %i.af = zext i16 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 6
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !590
  %i.ai = zext i16 %i.ah to i32
  tail call void @_Z24ImTextureDataQueueUploadP13ImTextureDataiiii(ptr noundef %i.x, i32 noundef %i.z, i32 noundef %i.ac, i32 noundef %i.af, i32 noundef %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 82
  store i8 0, ptr %i.aj, align 2, !tbaa !398
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z22ImFontAtlasPackAddRectP11ImFontAtlasiiP20ImFontAtlasRectEntry(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !389  ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !591  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !592
  %i.g = tail call noundef i32 @llvm.smax.i32(i32 %i.f, i32 %1)
  store i32 %i.g, ptr %i.e, align 8, !tbaa !592
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 172 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !593
  %i.j = tail call noundef i32 @llvm.smax.i32(i32 %i.i, i32 %2)
  store i32 %i.j, ptr %i.h, align 4, !tbaa !593
  %i.k = add nsw i32 %i.d, %1                     ; 4 uses
  %i.l = add nsw i32 %i.d, %2                     ; 6 uses
  %i.m = icmp eq i32 %i.k, 0
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  %i.r = icmp eq i32 %i.l, 0
  %or.cond = select i1 %i.m, i1 true, i1 %i.r
  %i.s = add i32 %i.k, -1
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  br i1 %or.cond, label %.thread, label %.preheader55.split.split.i

.preheader55.split.split.i:                       ; preds = %bb.a, %_Z27ImFontAtlasTextureMakeSpaceP11ImFontAtlas.exit
  %.04586 = phi i32 [ %i.go, %_Z27ImFontAtlasTextureMakeSpaceP11ImFontAtlas.exit ], [ 3, %bb.a ] ; 2 uses
  %i.w = load i32, ptr %i.t, align 8, !tbaa !594  ; 2 uses
  %i.x = add i32 %i.s, %i.w                       ; 2 uses
  %i.y = srem i32 %i.x, %i.w
  %i.z = sub nsw i32 %i.x, %i.y                   ; 11 uses
  %i.aa = load i32, ptr %i.b, align 8, !tbaa !596 ; 3 uses
  %i.ab = icmp sgt i32 %i.z, %i.aa
  %i.ac = icmp sgt i32 %i.z, 0
  br i1 %i.ab, label %_ZL16stbrp_pack_rectsP13stbrp_contextP10stbrp_recti.exit.thread, label %.preheader55.split.split.split.i

.preheader55.split.split.split.i:                 ; preds = %.preheader55.split.split.i
  %i.ad = load i32, ptr %i.n, align 4, !tbaa !597 ; 4 uses
  %i.ae = icmp sgt i32 %i.l, %i.ad
  br i1 %i.ae, label %_ZL16stbrp_pack_rectsP13stbrp_contextP10stbrp_recti.exit.thread, label %.preheader55.split.split.split.split.i

.preheader.i:                                     ; preds = %bb.ae, %.critedge.i.i
  %i.af = icmp eq i32 %.287.i.i.i, 2147483647
  br i1 %i.af, label %.preheader.split58.us.i, label %_ZL16stbrp_pack_rectsP13stbrp_contextP10stbrp_recti.exit.thread66.split.loopexit

.preheader.split58.us.i:                          ; preds = %.preheader.i
  %.not85 = icmp eq i32 %i.dp, 2147483647
  br i1 %.not85, label %_ZL16stbrp_pack_rectsP13stbrp_contextP10stbrp_recti.exit.thread, label %.thread

.preheader55.split.split.split.split.i:           ; preds = %.preheader55.split.split.split.i
  %i.ag = load ptr, ptr %i.o, align 8, !tbaa !598 ; 5 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !599 ; 3 uses
  %i.ai = add nsw i32 %i.ah, %i.z                 ; 2 uses
  %.not127.i.i.i = icmp sgt i32 %i.ai, %i.aa
  %.pre.i.i = load i32, ptr %i.p, align 8, !tbaa !601 ; 2 uses
  br i1 %.not127.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader55.split.split.split.split.i
  %i.aj = icmp eq i32 %.pre.i.i, 0                ; 2 uses
  br i1 %i.ac, label %.lr.ph.i.preheader.us.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.i.preheader.us.i.i.i:                      ; preds = %.lr.ph.i.i.i, %bb.l
  %i.ak = phi i32 [ %i.bs, %bb.l ], [ %i.ai, %.lr.ph.i.i.i ]
  %i.al = phi i32 [ %i.br, %bb.l ], [ %i.ah, %.lr.ph.i.i.i ] ; 3 uses
  %.0132.us.i.i.i = phi ptr [ %.1.us.i.i.i, %bb.l ], [ null, %.lr.ph.i.i.i ] ; 3 uses
  %.074131.us.i.i.i = phi ptr [ %i.bq, %bb.l ], [ %i.ag, %.lr.ph.i.i.i ] ; 2 uses
  %.077130.us.i.i.i = phi ptr [ %i.bp, %bb.l ], [ %i.o, %.lr.ph.i.i.i ] ; 2 uses
  %.080129.us.i.i.i = phi i32 [ %.181.us.i.i.i, %bb.l ], [ 1073741824, %.lr.ph.i.i.i ] ; 6 uses
  %.088128.us.i.i.i = phi i32 [ %.189.us.i.i.i, %bb.l ], [ 1073741824, %.lr.ph.i.i.i ] ; 4 uses
  br label %.lr.ph.i.us.i.i.i

.lr.ph.i.us.i.i.i:                                ; preds = %bb.f, %.lr.ph.i.preheader.us.i.i.i
  %i.am = phi i32 [ %i.bh, %bb.f ], [ %i.al, %.lr.ph.i.preheader.us.i.i.i ] ; 3 uses
  %.0364.i.us.i.i.i = phi i32 [ %.1.i.us.i.i.i, %bb.f ], [ 0, %.lr.ph.i.preheader.us.i.i.i ]
  %.0373.i.us.i.i.i = phi i32 [ %.138.i.us.i.i.i, %bb.f ], [ 0, %.lr.ph.i.preheader.us.i.i.i ] ; 4 uses
  %.0392.i.us.i.i.i = phi i32 [ %.140.i.us.i.i.i, %bb.f ], [ 0, %.lr.ph.i.preheader.us.i.i.i ] ; 4 uses
  %.0411.i.us.i.i.i = phi ptr [ %i.bi, %bb.f ], [ %.074131.us.i.i.i, %.lr.ph.i.preheader.us.i.i.i ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0411.i.us.i.i.i, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !602 ; 5 uses
  %i.ap = icmp sgt i32 %i.ao, %.0392.i.us.i.i.i
  br i1 %i.ap, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.us.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.0411.i.us.i.i.i, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !603 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !599 ; 2 uses
  %i.at = sub nsw i32 %i.as, %i.am                ; 2 uses
  %i.au = add nsw i32 %i.at, %.0373.i.us.i.i.i
  %i.av = icmp sgt i32 %i.au, %i.z
  %i.aw = sub nsw i32 %i.z, %.0373.i.us.i.i.i
  %spec.select.i.us.i.i.i = select i1 %i.av, i32 %i.aw, i32 %i.at ; 2 uses
  %i.ax = sub nsw i32 %.0392.i.us.i.i.i, %i.ao
  %i.ay = mul nsw i32 %spec.select.i.us.i.i.i, %i.ax
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph.i.us.i.i.i
  %i.az = sub nsw i32 %i.ao, %.0392.i.us.i.i.i
  %i.ba = mul nsw i32 %i.az, %.0373.i.us.i.i.i    ; 2 uses
  %i.bb = icmp slt i32 %i.am, %i.al
  %i.bc = getelementptr inbounds nuw i8, ptr %.0411.i.us.i.i.i, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !603 ; 3 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !599 ; 4 uses
  br i1 %i.bb, label %bb.e, label %bb.d

end_hunk_1
