Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui_draw?download=true
inline.NumInlined: 1179
inline.NumDeleted: 280
loop-unroll.NumCompletelyUnrolled: 238
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 283
begin_hunk_0_@_ZN10ImDrawList10PrimRectUVERK6ImVec2S2_S2_S2_j:bb.a
  store i16 %i.r, ptr %i.s, align 2, !tbaa !93
  %i.t = add i16 %i.o, 2                          ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i16 %i.t, ptr %i.u, align 2, !tbaa !93
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  store i16 %i.o, ptr %i.v, align 2, !tbaa !93
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i16 %i.t, ptr %i.w, align 2, !tbaa !93
  %i.x = add i16 %i.o, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 10
  store i16 %i.x, ptr %i.y, align 2, !tbaa !93
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 11 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !88
  %i.ab = load i64, ptr %1, align 4
  store i64 %i.ab, ptr %i.aa, align 4
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !88
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %3, align 4
  store i64 %i.ae, ptr %i.ad, align 4
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !88  ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i32 %5, ptr %i.ag, align 4, !tbaa !95
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  store i32 %i.a, ptr %i.ah, align 4
  %.sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i32 %i.c, ptr %.sroa_idx29, align 4
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !88  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  store i32 %i.g, ptr %i.aj, align 4
  %.sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store i32 %i.i, ptr %.sroa_idx23, align 4
  %i.ak = load ptr, ptr %i.z, align 8, !tbaa !88  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 36
  store i32 %5, ptr %i.al, align 4, !tbaa !95
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.an = load i64, ptr %2, align 4
  store i64 %i.an, ptr %i.am, align 4
  %i.ao = load ptr, ptr %i.z, align 8, !tbaa !88
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load i64, ptr %4, align 4
  store i64 %i.aq, ptr %i.ap, align 4
  %i.ar = load ptr, ptr %i.z, align 8, !tbaa !88  ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  store i32 %5, ptr %i.as, align 4, !tbaa !95
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 60
  store i32 %i.d, ptr %i.at, align 4
  %.sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  store i32 %i.f, ptr %.sroa_idx26, align 4
  %i.au = load ptr, ptr %i.z, align 8, !tbaa !88  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 68
  store i32 %i.j, ptr %i.av, align 4
  %.sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  store i32 %i.l, ptr %.sroa_idx22, align 4
  %i.aw = load i32, ptr %i.m, align 4, !tbaa !55
  %i.ax = add i32 %i.aw, 4
  store i32 %i.ax, ptr %i.m, align 4, !tbaa !55
  %i.ay = load <2 x ptr>, ptr %i.z, align 8, !tbaa !85
  %i.az = load ptr, ptr %i.z, align 8, !tbaa !88
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 76
  store i32 %5, ptr %i.ba, align 4, !tbaa !95
  %i.bb = getelementptr inbounds nuw i8, <2 x ptr> %i.ay, <2 x i64> <i64 80, i64 12>
  store <2 x ptr> %i.bb, ptr %i.z, align 8, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN10ImDrawList10PrimQuadUVERK6ImVec2S2_S2_S2_S2_S2_S2_S2_j(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(196) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %8, i32 noundef %9) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !55
  %i.c = trunc i32 %i.b to i16                    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !90   ; 6 uses
  store i16 %i.c, ptr %i.e, align 2, !tbaa !93
  %i.f = add i16 %i.c, 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store i16 %i.f, ptr %i.g, align 2, !tbaa !93
  %i.h = add i16 %i.c, 2                          ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i16 %i.h, ptr %i.i, align 2, !tbaa !93
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  store i16 %i.c, ptr %i.j, align 2, !tbaa !93
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i16 %i.h, ptr %i.k, align 2, !tbaa !93
  %i.l = add i16 %i.c, 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  store i16 %i.l, ptr %i.m, align 2, !tbaa !93
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 11 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !88
  %i.p = load i64, ptr %1, align 4
  store i64 %i.p, ptr %i.o, align 4
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !88
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %5, align 4
  store i64 %i.s, ptr %i.r, align 4
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !88   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i32 %9, ptr %i.u, align 4, !tbaa !95
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.w = load i64, ptr %2, align 4
  store i64 %i.w, ptr %i.v, align 4
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !88
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  %i.z = load i64, ptr %6, align 4
  store i64 %i.z, ptr %i.y, align 4
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !88  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 36
  store i32 %9, ptr %i.ab, align 4, !tbaa !95
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ad = load i64, ptr %3, align 4
  store i64 %i.ad, ptr %i.ac, align 4
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !88
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load i64, ptr %7, align 4
  store i64 %i.ag, ptr %i.af, align 4
  %i.ah = load ptr, ptr %i.n, align 8, !tbaa !88  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  store i32 %9, ptr %i.ai, align 4, !tbaa !95
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 60
  %i.ak = load i64, ptr %4, align 4
  store i64 %i.ak, ptr %i.aj, align 4
  %i.al = load ptr, ptr %i.n, align 8, !tbaa !88
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 68
  %i.an = load i64, ptr %8, align 4
  store i64 %i.an, ptr %i.am, align 4
  %i.ao = load i32, ptr %i.a, align 4, !tbaa !55
  %i.ap = add i32 %i.ao, 4
  store i32 %i.ap, ptr %i.a, align 4, !tbaa !55
  %i.aq = load <2 x ptr>, ptr %i.n, align 8, !tbaa !85
  %i.ar = load ptr, ptr %i.n, align 8, !tbaa !88
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 76
  store i32 %9, ptr %i.as, align 4, !tbaa !95
  %i.at = getelementptr inbounds nuw i8, <2 x ptr> %i.aq, <2 x i64> <i64 80, i64 12>
  store <2 x ptr> %i.at, ptr %i.n, align 8, !tbaa !85
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(196) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = icmp slt i32 %2, 2
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %4, 1
  %.not444 = icmp eq i32 %i.b, 0                  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.e = load i64, ptr %i.d, align 8              ; 11 uses
  %i.f = add nsw i32 %2, -1                       ; 4 uses
  %i.g = select i1 %.not444, i32 %i.f, i32 %2     ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.i = load float, ptr %i.h, align 8, !tbaa !67 ; 8 uses
  %i.j = fcmp ogt float %5, %i.i                  ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !54   ; 2 uses
  %i.m = and i32 %i.l, 1
  %.not445 = icmp eq i32 %i.m, 0
  br i1 %.not445, label %.lr.ph630, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = and i32 %3, 16777215                     ; 4 uses
  %i.o = fcmp oge float %5, 1.000000e+00
  %i.p = select i1 %i.o, float %5, float 1.000000e+00 ; 6 uses
  %i.q = fptosi float %i.p to i32                 ; 3 uses
  %i.r = sitofp i32 %i.q to float
  %i.s = fsub float %i.p, %i.r
  %i.t = and i32 %i.l, 2
  %i.u = icmp eq i32 %i.t, 0
  %i.v = icmp sgt i32 %i.q, 62
  %or.cond.not454 = select i1 %i.u, i1 true, i1 %i.v
  %i.w = fcmp ugt float %i.s, f0x3727C5AC
  %or.cond3.not451 = select i1 %or.cond.not454, i1 true, i1 %i.w
  %i.x = fcmp une float %i.i, 1.000000e+00
  %.not449 = select i1 %or.cond3.not451, i1 true, i1 %i.x ; 8 uses
  %.v = select i1 %i.j, i32 18, i32 12
  %.v602 = select i1 %.not449, i32 %.v, i32 6
  %i.y = mul nsw i32 %.v602, %i.g
  br i1 %.not449, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = shl nuw nsw i32 %2, 1
  br label %.lr.ph.preheader

bb.e:                                             ; preds = %bb.c
  %i.aa = shl nsw i32 %2, 2
  %i.ab = mul nuw nsw i32 %2, 3
  %i.ac = select i1 %i.j, i32 %i.aa, i32 %i.ab
  %i.ad = select i1 %i.j, i32 5, i32 3
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d, %bb.e
  %.not447 = phi i32 [ 3, %bb.d ], [ %i.ad, %bb.e ]
  %i.ae = phi i32 [ %i.z, %bb.d ], [ %i.ac, %bb.e ] ; 2 uses
  tail call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(196) %0, i32 noundef %i.y, i32 noundef %i.ae)
  %i.af = mul nuw nsw i32 %.not447, %2
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = alloca i8, i64 %i.ah, align 16          ; 9 uses
  %i.aj = zext nneg i32 %2 to i64                 ; 4 uses
  %i.ak = getelementptr [8 x i8], ptr %i.ai, i64 %i.aj ; 14 uses
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.g
  br i1 %.not444, label %bb.h, label %.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.al = icmp eq i64 %indvars.iv.next, %i.aj
  %i.am = select i1 %i.al, i64 0, i64 %indvars.iv.next
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.am
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ap = load <2 x float>, ptr %i.an, align 4, !tbaa !9
  %i.aq = load <2 x float>, ptr %i.ao, align 4, !tbaa !9
  %i.ar = fsub <2 x float> %i.ap, %i.aq           ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %i.ar, %i.ar
  %i.as = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.at = extractelement <2 x float> %i.ar, i64 0 ; 2 uses
  %i.au = tail call float @llvm.fmuladd.f32(float %i.at, float %i.at, float %i.as) ; 2 uses
  %i.av = fcmp ogt float %i.au, 0.000000e+00
  br i1 %i.av, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.aw = insertelement <4 x float> poison, float %i.au, i64 0
  %i.ax = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.aw)
  %i.ay = shufflevector <4 x float> %i.ax, <4 x float> poison, <2 x i32> zeroinitializer
  %i.az = fmul <2 x float> %i.ar, %i.ay
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %i.ba = phi <2 x float> [ %i.az, %bb.f ], [ %i.ar, %.lr.ph ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv ; 2 uses
  %i.bc = extractelement <2 x float> %i.ba, i64 1
  store float %i.bc, ptr %i.bb, align 8, !tbaa !91
  %i.bd = extractelement <2 x float> %i.ba, i64 0
  %i.be = fneg float %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store float %i.be, ptr %i.bf, align 4, !tbaa !92
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !97

bb.h:                                             ; preds = %._crit_edge
  %i.bg = getelementptr i8, ptr %i.ak, i64 -16
  %i.bh = zext nneg i32 %i.f to i64               ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.bh ; 7 uses
  %i.bj = load i64, ptr %i.bg, align 8
  store i64 %i.bj, ptr %i.bi, align 8
  %or.cond5 = select i1 %.not449, i1 %i.j, i1 false
  br i1 %or.cond5, label %bb.o, label %bb.i

.thread:                                          ; preds = %._crit_edge
  %or.cond5599 = select i1 %.not449, i1 %i.j, i1 false
  br i1 %or.cond5599, label %.thread601, label %.thread600

.thread601:                                       ; preds = %.thread
  %i.bk = fsub float %i.p, %i.i
  %i.bl = fmul float %i.bk, 5.000000e-01
  br label %.lr.ph625

.thread600:                                       ; preds = %.thread
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.p, float 5.000000e-01, float 1.000000e+00)
  %i.bn = select i1 %.not449, float %i.i, float %i.bm
  br label %.lr.ph615

bb.i:                                             ; preds = %bb.h
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.p, float 5.000000e-01, float 1.000000e+00)
  %i.bp = select i1 %.not449, float %i.i, float %i.bo ; 2 uses
  %i.bq = load <2 x float>, ptr %i.ai, align 16, !tbaa !9
  %i.br = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bt = fmul <2 x float> %i.bs, %i.bq           ; 2 uses
  %i.bu = load <2 x float>, ptr %1, align 4, !tbaa !9 ; 2 uses
  %i.bv = fadd <2 x float> %i.bt, %i.bu
  store <2 x float> %i.bv, ptr %i.ak, align 8
  %i.bw = fsub <2 x float> %i.bu, %i.bt
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store <2 x float> %i.bw, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bh
  %i.bz = load <2 x float>, ptr %i.bi, align 8, !tbaa !9
  %i.ca = fmul <2 x float> %i.bs, %i.bz
  %i.cb = load <2 x float>, ptr %i.by, align 4, !tbaa !9 ; 2 uses
  %i.cc = fadd <2 x float> %i.ca, %i.cb
  %i.cd = shl nuw nsw i32 %i.f, 1
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ce ; 2 uses
  store <2 x float> %i.cc, ptr %i.cf, align 8
  %i.cg = load <2 x float>, ptr %i.bi, align 8, !tbaa !9
  %i.ch = fmul <2 x float> %i.bs, %i.cg
  %i.ci = fsub <2 x float> %i.cb, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store <2 x float> %i.ci, ptr %i.cj, align 8
  br label %.lr.ph615

.lr.ph615:                                        ; preds = %bb.i, %.thread600
  %i.ck = phi float [ %i.bn, %.thread600 ], [ %i.bp, %bb.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !55 ; 2 uses
  %i.cn = select i1 %.not449, i32 3, i32 2
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %wide.trip.count637 = zext nneg i32 %i.g to i64 ; 2 uses
  %i.cp = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer
  %.promoted704 = load ptr, ptr %i.co, align 8, !tbaa !90
  br label %.backedge

.lr.ph621:                                        ; preds = %bb.l
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 8 uses
  %wide.trip.count648 = zext nneg i32 %2 to i64
  %.pre666 = load ptr, ptr %i.cr, align 8, !tbaa !88
  br label %bb.n

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph615
  %i.cs = phi ptr [ %.promoted704, %.lr.ph615 ], [ %i.et, %.backedge.backedge ] ; 13 uses
  %indvars.iv634 = phi i64 [ 0, %.lr.ph615 ], [ %indvars.iv.next635, %.backedge.backedge ] ; 2 uses
  %.0431612 = phi i32 [ %i.cm, %.lr.ph615 ], [ %i.cx, %.backedge.backedge ] ; 3 uses
  %indvars.iv.next635 = add nuw nsw i64 %indvars.iv634, 1 ; 5 uses
  %i.ct = icmp eq i64 %indvars.iv.next635, %i.aj  ; 2 uses
  %i.cu = trunc nuw nsw i64 %indvars.iv.next635 to i32
  %i.cv = select i1 %i.ct, i32 0, i32 %i.cu       ; 2 uses
  %i.cw = add i32 %.0431612, %i.cn
  %i.cx = select i1 %i.ct, i32 %i.cm, i32 %i.cw   ; 3 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv634
  %i.cz = zext nneg i32 %i.cv to i64              ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.cz
  %i.db = load <2 x float>, ptr %i.cy, align 8, !tbaa !9
  %i.dc = load <2 x float>, ptr %i.da, align 8, !tbaa !9
  %i.dd = fadd <2 x float> %i.db, %i.dc
  %i.de = fmul <2 x float> %i.dd, splat (float 5.000000e-01) ; 5 uses
  %foldExtExtBinop687 = fmul <2 x float> %i.de, %i.de
  %i.df = extractelement <2 x float> %foldExtExtBinop687, i64 1
  %i.dg = extractelement <2 x float> %i.de, i64 0 ; 2 uses
  %i.dh = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.dg, float %i.df) ; 2 uses
  %i.di = fcmp ogt float %i.dh, f0x358637BD
  br i1 %i.di, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.backedge
  %i.dj = fdiv float 1.000000e+00, %i.dh          ; 2 uses
  %i.dk = fcmp ogt float %i.dj, 1.000000e+02
  %.0427 = select i1 %i.dk, float 1.000000e+02, float %i.dj
  %i.dl = insertelement <2 x float> poison, float %.0427, i64 0
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dn = fmul <2 x float> %i.de, %i.dm
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.backedge
  %i.do = phi <2 x float> [ %i.dn, %bb.j ], [ %i.de, %.backedge ]
  %i.dp = fmul <2 x float> %i.cq, %i.do           ; 2 uses
  %i.dq = shl nuw nsw i32 %i.cv, 1
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.dr
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cz
  %i.du = load <2 x float>, ptr %i.dt, align 4, !tbaa !9 ; 2 uses
  %i.dv = shufflevector <2 x float> %i.du, <2 x float> %i.dp, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.dw = shufflevector <2 x float> %i.dp, <2 x float> %i.du, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.dx = fadd <4 x float> %i.dv, %i.dw
  %i.dy = fsub <4 x float> %i.dv, %i.dw
  %i.dz = shufflevector <4 x float> %i.dx, <4 x float> %i.dy, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  store <4 x float> %i.dz, ptr %i.ds, align 8, !tbaa !9
  %i.ea = trunc i32 %i.cx to i16                  ; 4 uses
  store i16 %i.ea, ptr %i.cs, align 2, !tbaa !93
  %i.eb = trunc i32 %.0431612 to i16              ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  store i16 %i.eb, ptr %i.ec, align 2, !tbaa !93
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cs, i64 4 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
  br i1 %.not449, label %bb.l, label %.thread679

bb.l:                                             ; preds = %bb.k
  %i.ef = trunc i32 %i.cx to i16
  %i.eg = insertelement <2 x i16> poison, i16 %i.ef, i64 0
  %i.eh = trunc i32 %.0431612 to i16
  %i.ei = insertelement <2 x i16> %i.eg, i16 %i.eh, i64 1
  %i.ej = shufflevector <2 x i16> %i.ei, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ek = add i16 %i.eb, 2                        ; 2 uses
  store i16 %i.ek, ptr %i.ed, align 2, !tbaa !93
  %i.el = getelementptr inbounds nuw i8, ptr %i.cs, i64 6
  store i16 %i.ek, ptr %i.el, align 2, !tbaa !93
  %i.em = add <4 x i16> %i.ej, <i16 2, i16 0, i16 1, i16 1> ; 2 uses
  store <4 x i16> %i.em, ptr %i.ee, align 2, !tbaa !93
  %i.en = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store i16 %i.eb, ptr %i.en, align 2, !tbaa !93
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cs, i64 18
  store i16 %i.eb, ptr %i.eo, align 2, !tbaa !93
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cs, i64 20
  store i16 %i.ea, ptr %i.ep, align 2, !tbaa !93
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cs, i64 22
  %i.er = extractelement <4 x i16> %i.em, i64 2
  store i16 %i.er, ptr %i.eq, align 2, !tbaa !93
  %i.es = getelementptr inbounds nuw i8, ptr %i.cs, i64 24 ; 2 uses
  store ptr %i.es, ptr %i.co, align 8, !tbaa !90
  %exitcond638.not = icmp eq i64 %indvars.iv.next635, %wide.trip.count637
  br i1 %exitcond638.not, label %.lr.ph621, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.l, %.thread679
  %i.et = phi ptr [ %i.es, %bb.l ], [ %i.ey, %.thread679 ]
  br label %.backedge, !llvm.loop !98

.thread679:                                       ; preds = %bb.k
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cs, i64 10
  %i.ev = add i16 %i.eb, 1                        ; 2 uses
  store i16 %i.ev, ptr %i.ed, align 2, !tbaa !93
  %i.ew = add i16 %i.ea, 1
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cs, i64 6
  store i16 %i.ew, ptr %i.ex, align 2, !tbaa !93
  store i16 %i.ev, ptr %i.ee, align 2, !tbaa !93
  store i16 %i.ea, ptr %i.eu, align 2, !tbaa !93
  %i.ey = getelementptr inbounds nuw i8, ptr %i.cs, i64 12 ; 2 uses
  store ptr %i.ey, ptr %i.co, align 8, !tbaa !90
  %exitcond638.not681 = icmp eq i64 %indvars.iv.next635, %wide.trip.count637
  br i1 %exitcond638.not681, label %.lr.ph619, label %.backedge.backedge

.lr.ph619:                                        ; preds = %.thread679
  %i.ez = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 504
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !99
  %i.fc = sext i32 %i.q to i64
  %i.fd = getelementptr inbounds [16 x i8], ptr %i.fb, i64 %i.fc ; 2 uses
  %i.fe = load <2 x i32>, ptr %i.fd, align 4, !tbaa !9
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load <2 x i32>, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !9
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %wide.trip.count642 = zext nneg i32 %2 to i64
  %.pre = load ptr, ptr %i.fg, align 8, !tbaa !88
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph619, %bb.m
  %i.fh = phi ptr [ %.pre, %.lr.ph619 ], [ %i.fv, %bb.m ]
  %indvars.iv639 = phi i64 [ 0, %.lr.ph619 ], [ %indvars.iv.next640, %bb.m ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv639, 4
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx ; 2 uses
  %i.fj = load i64, ptr %i.fi, align 8
  store i64 %i.fj, ptr %i.fh, align 4
  %i.fk = load ptr, ptr %i.fg, align 8, !tbaa !88
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store <2 x i32> %i.fe, ptr %i.fl, align 4
  %i.fm = load ptr, ptr %i.fg, align 8, !tbaa !88 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store i32 %3, ptr %i.fn, align 4, !tbaa !95
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 20
  %i.fq = load i64, ptr %i.fo, align 8
  store i64 %i.fq, ptr %i.fp, align 4
  %i.fr = load ptr, ptr %i.fg, align 8, !tbaa !88
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 28
  store <2 x i32> %i.ff, ptr %i.fs, align 4
  %i.ft = load ptr, ptr %i.fg, align 8, !tbaa !88 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 36
  store i32 %3, ptr %i.fu, align 4, !tbaa !95
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 40 ; 2 uses
  store ptr %i.fv, ptr %i.fg, align 8, !tbaa !88
  %indvars.iv.next640 = add nuw nsw i64 %indvars.iv639, 1 ; 2 uses
  %exitcond643.not = icmp eq i64 %indvars.iv.next640, %wide.trip.count642
  br i1 %exitcond643.not, label %.loopexit607, label %bb.m, !llvm.loop !100

bb.n:                                             ; preds = %.lr.ph621, %bb.n
  %i.fw = phi ptr [ %.pre666, %.lr.ph621 ], [ %i.gr, %bb.n ]
  %indvars.iv644 = phi i64 [ 0, %.lr.ph621 ], [ %indvars.iv.next645, %bb.n ] ; 3 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv644
  %i.fy = load i64, ptr %i.fx, align 4
  store i64 %i.fy, ptr %i.fw, align 4
  %i.fz = load ptr, ptr %i.cr, align 8, !tbaa !88
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store i64 %i.e, ptr %i.ga, align 4
  %i.gb = load ptr, ptr %i.cr, align 8, !tbaa !88 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  store i32 %3, ptr %i.gc, align 4, !tbaa !95
  %.idx677 = shl nuw nsw i64 %indvars.iv644, 4
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx677 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 20
  %i.gf = load i64, ptr %i.gd, align 8
  store i64 %i.gf, ptr %i.ge, align 4
  %i.gg = load ptr, ptr %i.cr, align 8, !tbaa !88
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 28
  store i64 %i.e, ptr %i.gh, align 4
  %i.gi = load ptr, ptr %i.cr, align 8, !tbaa !88 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 36
  store i32 %i.n, ptr %i.gj, align 4, !tbaa !95
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 40
  %i.gm = load i64, ptr %i.gk, align 8
  store i64 %i.gm, ptr %i.gl, align 4
  %i.gn = load ptr, ptr %i.cr, align 8, !tbaa !88
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 48
  store i64 %i.e, ptr %i.go, align 4
  %i.gp = load ptr, ptr %i.cr, align 8, !tbaa !88 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 56
  store i32 %i.n, ptr %i.gq, align 4, !tbaa !95
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 60 ; 2 uses
  store ptr %i.gr, ptr %i.cr, align 8, !tbaa !88
  %indvars.iv.next645 = add nuw nsw i64 %indvars.iv644, 1 ; 2 uses
  %exitcond649.not = icmp eq i64 %indvars.iv.next645, %wide.trip.count648
  br i1 %exitcond649.not, label %.loopexit607, label %bb.n, !llvm.loop !101

bb.o:                                             ; preds = %bb.h
  %i.gs = fsub float %i.p, %i.i
  %i.gt = fmul float %i.gs, 5.000000e-01          ; 4 uses
  %i.gu = fadd float %i.i, %i.gt                  ; 2 uses
  %i.gv = load <2 x float>, ptr %i.ai, align 16, !tbaa !9
  %i.gw = shufflevector <2 x float> %i.gv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gx = load <2 x float>, ptr %1, align 4, !tbaa !9
  %i.gy = shufflevector <2 x float> %i.gx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 5 uses
  %i.gz = insertelement <4 x float> poison, float %i.gu, i64 0
  %i.ha = insertelement <4 x float> %i.gz, float %i.gt, i64 1
  %i.hb = shufflevector <4 x float> %i.ha, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.hc = fmul <4 x float> %i.hb, %i.gw           ; 5 uses
  %i.hd = fadd <4 x float> %i.hc, %i.gy           ; 2 uses
  %i.he = shufflevector <4 x float> %i.hd, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.he, ptr %i.ak, align 8
  %i.hf = shufflevector <4 x float> %i.hd, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store <2 x float> %i.hf, ptr %i.hg, align 8
  %shift = shufflevector <4 x float> %i.hc, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop689 = fsub <4 x float> %i.gy, %shift
  %shift699 = shufflevector <4 x float> %i.hc, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %foldExtExtBinop700 = fsub <4 x float> %i.gy, %shift699
  %.sroa.0.0.vec.insert.i550 = shufflevector <4 x float> %foldExtExtBinop689, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.hh = shufflevector <4 x float> %foldExtExtBinop700, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %.sroa.0.4.vec.insert.i551 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i550, <2 x float> %i.hh, <2 x i32> <i32 0, i32 3>
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <2 x float> %.sroa.0.4.vec.insert.i551, ptr %i.hi, align 8
  %foldExtExtBinop691 = fsub <4 x float> %i.gy, %i.hc
  %foldExtExtBinop693 = fsub <4 x float> %i.gy, %i.hc
  %.sroa.0.0.vec.insert.i554 = shufflevector <4 x float> %foldExtExtBinop691, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.hj = shufflevector <4 x float> %foldExtExtBinop693, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %.sroa.0.4.vec.insert.i555 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i554, <2 x float> %i.hj, <2 x i32> <i32 0, i32 3>
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store <2 x float> %.sroa.0.4.vec.insert.i555, ptr %i.hk, align 8
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bh
  %i.hm = load <2 x float>, ptr %i.bi, align 8, !tbaa !9
  %i.hn = insertelement <2 x float> poison, float %i.gu, i64 0
  %i.ho = shufflevector <2 x float> %i.hn, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hp = fmul <2 x float> %i.ho, %i.hm
  %i.hq = load <2 x float>, ptr %i.hl, align 4, !tbaa !9 ; 4 uses
  %i.hr = fadd <2 x float> %i.hp, %i.hq
  %i.hs = shl nsw i32 %i.f, 2
  %i.ht = zext nneg i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ht ; 4 uses
  store <2 x float> %i.hr, ptr %i.hu, align 8
  %i.hv = load <2 x float>, ptr %i.bi, align 8, !tbaa !9
  %i.hw = insertelement <2 x float> poison, float %i.gt, i64 0
  %i.hx = shufflevector <2 x float> %i.hw, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hy = fmul <2 x float> %i.hx, %i.hv
  %i.hz = fadd <2 x float> %i.hq, %i.hy
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  store <2 x float> %i.hz, ptr %i.ia, align 8
  %i.ib = load <2 x float>, ptr %i.bi, align 8, !tbaa !9
  %i.ic = fmul <2 x float> %i.hx, %i.ib
  %i.id = fsub <2 x float> %i.hq, %i.ic
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  store <2 x float> %i.id, ptr %i.ie, align 8
  %i.if = load <2 x float>, ptr %i.bi, align 8, !tbaa !9
  %i.ig = fmul <2 x float> %i.ho, %i.if
  %i.ih = fsub <2 x float> %i.hq, %i.ig
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  store <2 x float> %i.ih, ptr %i.ii, align 8
  br label %.lr.ph625

.lr.ph625:                                        ; preds = %bb.o, %.thread601
  %i.ij = phi float [ %i.bl, %.thread601 ], [ %i.gt, %bb.o ] ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !55 ; 2 uses
  %i.im = fadd float %i.i, %i.ij
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.promoted = load ptr, ptr %i.in, align 8, !tbaa !90
  %wide.trip.count653 = zext nneg i32 %i.g to i64
  %i.io = insertelement <4 x float> poison, float %i.im, i64 0
  %i.ip = insertelement <4 x float> %i.io, float %i.ij, i64 1
  %i.iq = shufflevector <4 x float> %i.ip, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  br label %bb.p

.lr.ph627:                                        ; preds = %bb.r
  store ptr %i.kx, ptr %i.in, align 8, !tbaa !90
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 10 uses
  %wide.trip.count659 = zext nneg i32 %2 to i64
  %.pre667 = load ptr, ptr %i.ir, align 8, !tbaa !88
  br label %bb.s

bb.p:                                             ; preds = %.lr.ph625, %bb.r
  %indvars.iv650 = phi i64 [ 0, %.lr.ph625 ], [ %indvars.iv.next651, %bb.r ] ; 2 uses
  %i.is = phi ptr [ %.promoted, %.lr.ph625 ], [ %i.kx, %bb.r ] ; 9 uses
  %.0423622 = phi i32 [ %i.il, %.lr.ph625 ], [ %spec.select, %bb.r ] ; 3 uses
  %indvars.iv.next651 = add nuw nsw i64 %indvars.iv650, 1 ; 4 uses
  %i.it = icmp eq i64 %indvars.iv.next651, %i.aj  ; 2 uses
  %i.iu = trunc nuw nsw i64 %indvars.iv.next651 to i32
  %i.iv = select i1 %i.it, i32 0, i32 %i.iu       ; 2 uses
  %i.iw = add i32 %.0423622, 4
  %spec.select = select i1 %i.it, i32 %i.il, i32 %i.iw ; 3 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv650
  %i.iy = zext nneg i32 %i.iv to i64              ; 2 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.iy
  %i.ja = load <2 x float>, ptr %i.ix, align 8, !tbaa !9
  %i.jb = load <2 x float>, ptr %i.iz, align 8, !tbaa !9
  %i.jc = fadd <2 x float> %i.ja, %i.jb
  %i.jd = fmul <2 x float> %i.jc, splat (float 5.000000e-01) ; 5 uses
  %foldExtExtBinop695 = fmul <2 x float> %i.jd, %i.jd
  %i.je = extractelement <2 x float> %foldExtExtBinop695, i64 1
  %i.jf = extractelement <2 x float> %i.jd, i64 0 ; 2 uses
  %i.jg = tail call float @llvm.fmuladd.f32(float %i.jf, float %i.jf, float %i.je) ; 2 uses
  %i.jh = fcmp ogt float %i.jg, f0x358637BD
  br i1 %i.jh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ji = fdiv float 1.000000e+00, %i.jg          ; 2 uses
  %i.jj = fcmp ogt float %i.ji, 1.000000e+02
  %.0419 = select i1 %i.jj, float 1.000000e+02, float %i.ji
  %i.jk = insertelement <2 x float> poison, float %.0419, i64 0
  %i.jl = shufflevector <2 x float> %i.jk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jm = fmul <2 x float> %i.jd, %i.jl
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.jn = phi <2 x float> [ %i.jm, %bb.q ], [ %i.jd, %bb.p ]
  %i.jo = shufflevector <2 x float> %i.jn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.jp = fmul <4 x float> %i.iq, %i.jo           ; 2 uses
  %i.jq = shl nsw i32 %i.iv, 2
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.jr ; 2 uses
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.iy
  %i.ju = load <2 x float>, ptr %i.jt, align 4, !tbaa !9
  %i.jv = shufflevector <2 x float> %i.ju, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.jw = fadd <4 x float> %i.jp, %i.jv
  store <4 x float> %i.jw, ptr %i.js, align 8, !tbaa !9
  %i.jx = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %i.jy = fsub <4 x float> %i.jv, %i.jp
  %i.jz = shufflevector <4 x float> %i.jy, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x float> %i.jz, ptr %i.jx, align 8, !tbaa !9
  %i.ka = trunc i32 %spec.select to i16
  %i.kb = insertelement <2 x i16> poison, i16 %i.ka, i64 0
  %i.kc = trunc i32 %.0423622 to i16
  %i.kd = insertelement <2 x i16> %i.kb, i16 %i.kc, i64 1
  %i.ke = shufflevector <2 x i16> %i.kd, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.kf = trunc i32 %spec.select to i16           ; 3 uses
  %i.kg = trunc i32 %.0423622 to i16              ; 3 uses
  %i.kh = add <4 x i16> %i.ke, <i16 1, i16 1, i16 2, i16 2> ; 3 uses
  %i.ki = shufflevector <4 x i16> %i.kh, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 2, i32 3, i32 0, i32 0, i32 1>
  %i.kj = add i16 %i.kf, 1
  store <8 x i16> %i.ki, ptr %i.is, align 2, !tbaa !93
  %i.kk = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  store i16 %i.kg, ptr %i.kk, align 2, !tbaa !93
  %i.kl = getelementptr inbounds nuw i8, ptr %i.is, i64 18
  store i16 %i.kg, ptr %i.kl, align 2, !tbaa !93
  %i.km = getelementptr inbounds nuw i8, ptr %i.is, i64 20
  store i16 %i.kf, ptr %i.km, align 2, !tbaa !93
  %i.kn = getelementptr inbounds nuw i8, ptr %i.is, i64 22
  store i16 %i.kj, ptr %i.kn, align 2, !tbaa !93
  %i.ko = getelementptr inbounds nuw i8, ptr %i.is, i64 24
  %i.kp = extractelement <4 x i16> %i.kh, i64 3   ; 2 uses
  store i16 %i.kp, ptr %i.ko, align 2, !tbaa !93
  %i.kq = getelementptr inbounds nuw i8, ptr %i.is, i64 26
  %i.kr = shufflevector <4 x i16> %i.kh, <4 x i16> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.ks = insertelement <4 x i16> %i.kr, i16 %i.kg, i64 1
  %i.kt = insertelement <4 x i16> %i.ks, i16 %i.kf, i64 3
  %i.ku = add <4 x i16> %i.kt, <i16 0, i16 3, i16 poison, i16 3>
  %i.kv = shufflevector <4 x i16> %i.ku, <4 x i16> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  store <4 x i16> %i.kv, ptr %i.kq, align 2, !tbaa !93
  %i.kw = getelementptr inbounds nuw i8, ptr %i.is, i64 34
  store i16 %i.kp, ptr %i.kw, align 2, !tbaa !93
  %i.kx = getelementptr inbounds nuw i8, ptr %i.is, i64 36 ; 2 uses
  %exitcond654.not = icmp eq i64 %indvars.iv.next651, %wide.trip.count653
  br i1 %exitcond654.not, label %.lr.ph627, label %bb.p, !llvm.loop !102

bb.s:                                             ; preds = %.lr.ph627, %bb.s
  %i.ky = phi ptr [ %.pre667, %.lr.ph627 ], [ %i.ma, %bb.s ]
  %indvars.iv655 = phi i64 [ 0, %.lr.ph627 ], [ %indvars.iv.next656, %bb.s ] ; 2 uses
  %.idx678 = shl nuw nsw i64 %indvars.iv655, 5
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx678 ; 4 uses
  %i.la = load i64, ptr %i.kz, align 8
  store i64 %i.la, ptr %i.ky, align 4
  %i.lb = load ptr, ptr %i.ir, align 8, !tbaa !88
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  store i64 %i.e, ptr %i.lc, align 4
  %i.ld = load ptr, ptr %i.ir, align 8, !tbaa !88 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  store i32 %i.n, ptr %i.le, align 4, !tbaa !95
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ld, i64 20
  %i.lh = load i64, ptr %i.lf, align 8
  store i64 %i.lh, ptr %i.lg, align 4
  %i.li = load ptr, ptr %i.ir, align 8, !tbaa !88
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 28
  store i64 %i.e, ptr %i.lj, align 4
  %i.lk = load ptr, ptr %i.ir, align 8, !tbaa !88 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 36
  store i32 %3, ptr %i.ll, align 4, !tbaa !95
  %i.lm = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lk, i64 40
  %i.lo = load i64, ptr %i.lm, align 8
  store i64 %i.lo, ptr %i.ln, align 4
  %i.lp = load ptr, ptr %i.ir, align 8, !tbaa !88
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 48
  store i64 %i.e, ptr %i.lq, align 4
  %i.lr = load ptr, ptr %i.ir, align 8, !tbaa !88 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 56
  store i32 %3, ptr %i.ls, align 4, !tbaa !95
  %i.lt = getelementptr inbounds nuw i8, ptr %i.kz, i64 24
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lr, i64 60
  %i.lv = load i64, ptr %i.lt, align 8
  store i64 %i.lv, ptr %i.lu, align 4
  %i.lw = load ptr, ptr %i.ir, align 8, !tbaa !88
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 68
  store i64 %i.e, ptr %i.lx, align 4
  %i.ly = load ptr, ptr %i.ir, align 8, !tbaa !88 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 76
  store i32 %i.n, ptr %i.lz, align 4, !tbaa !95
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ly, i64 80 ; 2 uses
  store ptr %i.ma, ptr %i.ir, align 8, !tbaa !88
  %indvars.iv.next656 = add nuw nsw i64 %indvars.iv655, 1 ; 2 uses
  %exitcond660.not = icmp eq i64 %indvars.iv.next656, %wide.trip.count659
  br i1 %exitcond660.not, label %.loopexit607, label %bb.s, !llvm.loop !103

.loopexit607:                                     ; preds = %bb.m, %bb.n, %bb.s
  %i.mb = and i32 %i.ae, 65535
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !55
  %i.me = add i32 %i.md, %i.mb
  store i32 %i.me, ptr %i.mc, align 4, !tbaa !55
  br label %.loopexit

.lr.ph630:                                        ; preds = %bb.b
  %i.mf = mul nsw i32 %i.g, 6
  %i.mg = shl nsw i32 %i.g, 2
  tail call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(196) %0, i32 noundef %i.mf, i32 noundef %i.mg)
  %i.mh = fmul float %5, 5.000000e-01
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ml = zext nneg i32 %2 to i64
  %wide.trip.count664 = zext nneg i32 %i.g to i64
  %i.mm = insertelement <2 x float> poison, float %i.mh, i64 0
  %i.mn = shufflevector <2 x float> %i.mm, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph630, %bb.v
  %indvars.iv661 = phi i64 [ 0, %.lr.ph630 ], [ %indvars.iv.next662, %bb.v ] ; 2 uses
  %indvars.iv.next662 = add nuw nsw i64 %indvars.iv661, 1 ; 4 uses
  %i.mo = icmp eq i64 %indvars.iv.next662, %i.ml
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv661 ; 3 uses
  %i.mq = select i1 %i.mo, i64 0, i64 %indvars.iv.next662
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.mq ; 4 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 4 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mp, i64 4
  %i.mu = load <2 x float>, ptr %i.mr, align 4, !tbaa !9
  %i.mv = load <2 x float>, ptr %i.mp, align 4, !tbaa !9 ; 3 uses
  %i.mw = fsub <2 x float> %i.mu, %i.mv           ; 5 uses
  %foldExtExtBinop697 = fmul <2 x float> %i.mw, %i.mw
  %i.mx = extractelement <2 x float> %foldExtExtBinop697, i64 1
  %i.my = extractelement <2 x float> %i.mw, i64 0 ; 2 uses
  %i.mz = tail call float @llvm.fmuladd.f32(float %i.my, float %i.my, float %i.mx) ; 2 uses
  %i.na = fcmp ogt float %i.mz, 0.000000e+00
  br i1 %i.na, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.nb = insertelement <4 x float> poison, float %i.mz, i64 0
  %i.nc = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.nb)
end_hunk_0
begin_hunk_1_@_ZL20stbtt_FindGlyphIndexPK14stbtt_fontinfoi:bb.a
  %i.ap = shl nuw nsw i32 %i.ao, 8
  %i.aq = zext i8 %.val157 to i32
  %i.ar = or disjoint i32 %i.ap, %i.aq
  br label %.loopexit

bb.g:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %.val154 = load i8, ptr %i.as, align 1, !tbaa !22
  %i.at = getelementptr i8, ptr %i.b, i64 7
  %.val155 = load i8, ptr %i.at, align 1, !tbaa !22
  %i.au = zext i8 %.val154 to i32
  %i.av = shl nuw nsw i32 %i.au, 8
  %i.aw = zext i8 %.val155 to i32
  %i.ax = or disjoint i32 %i.av, %i.aw            ; 2 uses
  %i.ay = lshr i32 %i.ax, 1                       ; 2 uses
  %i.az = icmp sgt i32 %0, 65535
  br i1 %i.az, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = add i32 %.52.val, 14
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.val148 = load i8, ptr %i.bb, align 1, !tbaa !22
  %i.bc = zext i8 %.val148 to i16
  %i.bd = shl nuw i16 %i.bc, 8
  %i.be = getelementptr i8, ptr %i.b, i64 13
  %.val149 = load i8, ptr %i.be, align 1, !tbaa !22
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %.val150 = load i8, ptr %i.bf, align 1, !tbaa !22
  %i.bg = zext i8 %.val150 to i16
  %i.bh = shl nuw i16 %i.bg, 8                    ; 2 uses
  %i.bi = getelementptr i8, ptr %i.b, i64 11
  %.val151 = load i8, ptr %i.bi, align 1, !tbaa !22
  %i.bj = zext i8 %.val151 to i16                 ; 3 uses
  %i.bk = or disjoint i16 %i.bh, %i.bj            ; 3 uses
  %i.bl = and i8 %.val149, -2
  %.masked = zext i8 %i.bl to i16
  %i.bm = or disjoint i16 %i.bd, %.masked         ; 2 uses
  %i.bn = zext i32 %i.ba to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.8.val, i64 %i.bn
  %i.bp = zext i16 %i.bm to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bp ; 2 uses
  %.val146 = load i8, ptr %i.bq, align 1, !tbaa !22
  %i.br = getelementptr i8, ptr %i.bq, i64 1
  %.val147 = load i8, ptr %i.br, align 1, !tbaa !22
  %i.bs = zext i8 %.val146 to i32
  %i.bt = shl nuw nsw i32 %i.bs, 8
  %i.bu = zext i8 %.val147 to i32
  %i.bv = or disjoint i32 %i.bt, %i.bu
  %.not = icmp slt i32 %0, %i.bv
  %i.bw = zext i16 %i.bm to i32
  %i.bx = select i1 %.not, i32 0, i32 %i.bw
  %.0118 = add i32 %.52.val, 12
  %i.by = add i32 %.0118, %i.bx                   ; 4 uses
  %.not1377 = icmp eq i16 %i.bk, 0
  br i1 %.not1377, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val152 = load i8, ptr %i.bz, align 1, !tbaa !22
  %i.ca = zext i8 %.val152 to i16
  %i.cb = shl nuw i16 %i.ca, 8
  %i.cc = getelementptr i8, ptr %i.b, i64 9
  %.val153 = load i8, ptr %i.cc, align 1, !tbaa !22
  %i.cd = zext i8 %.val153 to i16
  %i.ce = or disjoint i16 %i.cb, %i.cd            ; 2 uses
  %i.cf = or disjoint i16 %i.bh, %i.bj
  %xtraiter = and i16 %i.bj, 1
  %lcmp.mod.not = icmp eq i16 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %.0122.prol = lshr i16 %i.ce, 1                 ; 2 uses
  %i.cg = zext i32 %i.by to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %.8.val, i64 %i.cg
  %i.ci = and i16 %.0122.prol, 32766              ; 2 uses
  %i.cj = zext nneg i16 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cj ; 2 uses
  %.val144.prol = load i8, ptr %i.ck, align 1, !tbaa !22
  %i.cl = getelementptr i8, ptr %i.ck, i64 1
  %.val145.prol = load i8, ptr %i.cl, align 1, !tbaa !22
  %i.cm = zext i8 %.val144.prol to i32
  %i.cn = shl nuw nsw i32 %i.cm, 8
  %i.co = zext i8 %.val145.prol to i32
  %i.cp = or disjoint i32 %i.cn, %i.co
  %i.cq = icmp sgt i32 %0, %i.cp
  %i.cr = zext nneg i16 %i.ci to i32
  %i.cs = select i1 %i.cq, i32 %i.cr, i32 0
  %.2120.prol = add i32 %i.cs, %i.by              ; 2 uses
  %i.ct = add nsw i16 %i.bk, -1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.2120.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %.2120.prol, %.lr.ph.prol ]
  %.111910.unr = phi i32 [ %i.by, %.lr.ph.preheader ], [ %.2120.prol, %.lr.ph.prol ]
  %.01219.unr = phi i16 [ %i.bk, %.lr.ph.preheader ], [ %i.ct, %.lr.ph.prol ]
  %.0122.in8.unr = phi i16 [ %i.ce, %.lr.ph.preheader ], [ %.0122.prol, %.lr.ph.prol ]
  %i.cu = icmp eq i16 %i.cf, 1
  br i1 %i.cu, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.111910 = phi i32 [ %.2120.1, %.lr.ph ], [ %.111910.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.01219 = phi i16 [ %i.dv, %.lr.ph ], [ %.01219.unr, %.lr.ph.prol.loopexit ]
  %.0122.in8 = phi i16 [ %.0122.1, %.lr.ph ], [ %.0122.in8.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.0122 = lshr i16 %.0122.in8, 1
  %i.cv = zext i32 %.111910 to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %.8.val, i64 %i.cv
  %i.cx = and i16 %.0122, 32766                   ; 2 uses
  %i.cy = zext nneg i16 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cy ; 2 uses
  %.val144 = load i8, ptr %i.cz, align 1, !tbaa !22
  %i.da = getelementptr i8, ptr %i.cz, i64 1
  %.val145 = load i8, ptr %i.da, align 1, !tbaa !22
  %i.db = zext i8 %.val144 to i32
  %i.dc = shl nuw nsw i32 %i.db, 8
  %i.dd = zext i8 %.val145 to i32
  %i.de = or disjoint i32 %i.dc, %i.dd
  %i.df = icmp sgt i32 %0, %i.de
  %i.dg = zext nneg i16 %i.cx to i32
  %i.dh = select i1 %i.df, i32 %i.dg, i32 0
  %.2120 = add i32 %i.dh, %.111910                ; 2 uses
  %.0122.1 = lshr i16 %.0122.in8, 2               ; 2 uses
  %i.di = zext i32 %.2120 to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %.8.val, i64 %i.di
  %i.dk = and i16 %.0122.1, 16382                 ; 2 uses
  %i.dl = zext nneg i16 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dl ; 2 uses
  %.val144.1 = load i8, ptr %i.dm, align 1, !tbaa !22
  %i.dn = getelementptr i8, ptr %i.dm, i64 1
  %.val145.1 = load i8, ptr %i.dn, align 1, !tbaa !22
  %i.do = zext i8 %.val144.1 to i32
  %i.dp = shl nuw nsw i32 %i.do, 8
  %i.dq = zext i8 %.val145.1 to i32
  %i.dr = or disjoint i32 %i.dp, %i.dq
  %i.ds = icmp sgt i32 %0, %i.dr
  %i.dt = zext nneg i16 %i.dk to i32
  %i.du = select i1 %i.ds, i32 %i.dt, i32 0
  %.2120.1 = add i32 %i.du, %.2120                ; 2 uses
  %i.dv = add i16 %.01219, -2                     ; 2 uses
  %.not137.1 = icmp eq i16 %i.dv, 0
  br i1 %.not137.1, label %._crit_edge, label %.lr.ph, !llvm.loop !571

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.h
  %.1119.lcssa = phi i32 [ %i.by, %bb.h ], [ %.2120.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.2120.1, %.lr.ph ]
  %reass.sub = sub i32 %.1119.lcssa, %.52.val
  %i.dw = add i32 %reass.sub, 131060
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 14 ; 3 uses
  %i.dy = and i32 %i.ax, 65534
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 2
  %i.ec = and i32 %i.dw, 131070
  %i.ed = zext nneg i32 %i.ec to i64              ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ed ; 2 uses
  %.val142 = load i8, ptr %i.ee, align 1, !tbaa !22
  %i.ef = getelementptr i8, ptr %i.ee, i64 1
  %.val143 = load i8, ptr %i.ef, align 1, !tbaa !22
  %i.eg = zext i8 %.val142 to i32
  %i.eh = shl nuw nsw i32 %i.eg, 8
  %i.ei = zext i8 %.val143 to i32
  %i.ej = or disjoint i32 %i.eh, %i.ei            ; 2 uses
  %i.ek = icmp slt i32 %0, %i.ej
  br i1 %i.ek, label %bb.l, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.el = mul nuw nsw i32 %i.ay, 6
  %i.em = zext nneg i32 %i.el to i64              ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 2
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ed ; 2 uses
  %.val140 = load i8, ptr %i.ep, align 1, !tbaa !22
  %i.eq = getelementptr i8, ptr %i.ep, i64 1
  %.val141 = load i8, ptr %i.eq, align 1, !tbaa !22
  %i.er = zext i8 %.val140 to i16
  %i.es = shl nuw i16 %i.er, 8
  %i.et = zext i8 %.val141 to i16
  %i.eu = or disjoint i16 %i.es, %i.et            ; 2 uses
  %i.ev = icmp eq i16 %i.eu, 0
  br i1 %i.ev, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ew = shl nuw nsw i32 %i.ay, 2
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 2
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.ed ; 2 uses
  %.val166 = load i8, ptr %i.fa, align 1, !tbaa !22
  %i.fb = getelementptr i8, ptr %i.fa, i64 1
  %.val167 = load i8, ptr %i.fb, align 1, !tbaa !22
  %i.fc = zext i8 %.val166 to i32
  %i.fd = shl nuw nsw i32 %i.fc, 8
  %i.fe = zext i8 %.val167 to i32
  %i.ff = or disjoint i32 %i.fd, %i.fe
  %i.fg = add nuw nsw i32 %i.ff, %0
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.fh = zext i16 %i.eu to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %.8.val, i64 %i.fh
  %i.fj = sub nsw i32 %0, %i.ej
  %i.fk = shl nsw i32 %i.fj, 1
  %1 = zext nneg i32 %i.fk to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 %1
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.a
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.em
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.ed ; 2 uses
  %.val = load i8, ptr %i.fp, align 1, !tbaa !22
  %i.fq = getelementptr i8, ptr %i.fp, i64 1
  %.val139 = load i8, ptr %i.fq, align 1, !tbaa !22
  %i.fr = zext i8 %.val to i32
  %i.fs = shl nuw nsw i32 %i.fr, 8
  %i.ft = zext i8 %.val139 to i32
  %i.fu = or disjoint i32 %i.fs, %i.ft
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.k, %bb.j
  %.2127.shrunk = phi i32 [ %i.fu, %bb.k ], [ %i.fg, %bb.j ], [ 0, %._crit_edge ]
  %.2127 = and i32 %.2127.shrunk, 65535
  br label %.loopexit

bb.m:                                             ; preds = %bb.a
  %i.fv = icmp eq i16 %i.g, 12
  %i.fw = and i16 %i.g, -2
  %or.cond = icmp eq i16 %i.fw, 12
  br i1 %or.cond, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.fx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.fy = load i32, ptr %i.fx, align 1
  %i.fz = tail call i32 @llvm.bswap.i32(i32 %i.fy) ; 2 uses
  %i.ga = icmp sgt i32 %i.fz, 0
  br i1 %i.ga, label %.lr.ph14, label %.loopexit

.lr.ph14:                                         ; preds = %bb.n
  %i.gb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph14, %bb.r
  %.012 = phi i32 [ %i.fz, %.lr.ph14 ], [ %.2, %bb.r ] ; 2 uses
  %.011511 = phi i32 [ 0, %.lr.ph14 ], [ %.2117, %bb.r ] ; 3 uses
  %i.gc = sub nsw i32 %.012, %.011511
  %i.gd = lshr i32 %i.gc, 1
  %i.ge = add nuw nsw i32 %i.gd, %.011511         ; 3 uses
  %i.gf = mul nsw i32 %i.ge, 12
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.gg ; 3 uses
  %i.gi = load i32, ptr %i.gh, align 1
  %i.gj = tail call i32 @llvm.bswap.i32(i32 %i.gi) ; 2 uses
  %i.gk = icmp ult i32 %0, %i.gj
  br i1 %i.gk, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  %i.gm = load i32, ptr %i.gl, align 1
  %i.gn = tail call i32 @llvm.bswap.i32(i32 %i.gm)
  %i.go = icmp ugt i32 %0, %i.gn
  br i1 %i.go, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.gp = add nuw nsw i32 %i.ge, 1
  br label %bb.r

.thread:                                          ; preds = %bb.p
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gr = load i32, ptr %i.gq, align 1
  %i.gs = tail call i32 @llvm.bswap.i32(i32 %i.gr)
  %i.gt = sub i32 %0, %i.gj
  %i.gu = select i1 %i.fv, i32 %i.gt, i32 0
  %.5 = add i32 %i.gs, %i.gu
  br label %.loopexit

bb.r:                                             ; preds = %bb.q, %bb.o
  %.2117 = phi i32 [ %.011511, %bb.o ], [ %i.gp, %bb.q ] ; 2 uses
  %.2 = phi i32 [ %i.ge, %bb.o ], [ %.012, %bb.q ] ; 2 uses
  %i.gv = icmp slt i32 %.2117, %.2
  br i1 %i.gv, label %bb.o, label %.loopexit, !llvm.loop !572

.loopexit:                                        ; preds = %bb.r, %bb.n, %.thread, %bb.m, %bb.l, %bb.g, %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.8 = phi i32 [ 0, %bb.m ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %bb.g ], [ %i.t, %bb.c ], [ %i.ar, %bb.f ], [ 0, %bb.e ], [ %.2127, %bb.l ], [ %.5, %.thread ], [ 0, %bb.n ], [ 0, %bb.r ]
  ret i32 %.8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL31stbtt_GetGlyphBitmapBoxSubpixelPK14stbtt_fontinfoiffffPiS2_S2_S2_(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1, float noundef %2, float noundef %3, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %4, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(address_is_null) %7) unnamed_addr #18 {
bb.a:
  %8 = alloca %struct.stbtt__csctx, align 8       ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.b = load i32, ptr %i.a, align 4, !tbaa !405
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %8, i8 0, i64 56, i1 false)
  store i32 1, ptr %8, align 8
  %i.c = call fastcc noundef i32 @_ZL21stbtt__run_charstringPK14stbtt_fontinfoiP12stbtt__csctx(ptr noundef nonnull readonly %0, i32 noundef %1, ptr noundef %8)
  %.not.i.i = icmp eq i32 %i.c, 0                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.e = load i32, ptr %i.d, align 8
  %i.f = select i1 %.not.i.i, i32 0, i32 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.h = load i32, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i, i32 0, i32 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.k = load i32, ptr %i.j, align 4
  %i.l = select i1 %.not.i.i, i32 0, i32 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.n = load i32, ptr %i.m, align 4
  %i.o = select i1 %.not.i.i, i32 0, i32 %i.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  br label %_ZL17stbtt_GetGlyphBoxPK14stbtt_fontinfoiPiS2_S2_S2_.exit

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !327
  %.not.i40.i = icmp slt i32 %1, %i.q
  br i1 %.not.i40.i, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load i32, ptr %i.r, align 8, !tbaa !330  ; 2 uses
  %i.t = icmp sgt i32 %i.s, 1
  br i1 %i.t, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp eq i32 %i.s, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !317
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !312  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !315
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %i.y, i64 %i.ab ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = shl nsw i32 %1, 1
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 %i.ae ; 4 uses
  %.val28.i.i = load i8, ptr %i.af, align 1, !tbaa !22
  %i.ag = getelementptr i8, ptr %i.af, i64 1
  %.val29.i.i = load i8, ptr %i.ag, align 1, !tbaa !22
  %i.ah = zext i8 %.val28.i.i to i32
  %i.ai = zext i8 %.val29.i.i to i32
  %i.aj = shl nuw nsw i32 %i.ah, 9
  %i.ak = shl nuw nsw i32 %i.ai, 1
  %i.al = or disjoint i32 %i.ak, %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %.val.i.i = load i8, ptr %i.am, align 1, !tbaa !22
  %i.an = getelementptr i8, ptr %i.af, i64 3
  %.val27.i.i = load i8, ptr %i.an, align 1, !tbaa !22
  %i.ao = zext i8 %.val.i.i to i32
  %i.ap = zext i8 %.val27.i.i to i32
  %i.aq = shl nuw nsw i32 %i.ao, 9
  %i.ar = shl nuw nsw i32 %i.ap, 1
  %i.as = or disjoint i32 %i.ar, %i.aq
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.at = shl nsw i32 %1, 2
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %i.ac, i64 %i.au ; 2 uses
  %i.aw = load i32, ptr %i.av, align 1
  %i.ax = tail call i32 @llvm.bswap.i32(i32 %i.aw)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.az = load i32, ptr %i.ay, align 1
  %i.ba = tail call i32 @llvm.bswap.i32(i32 %i.az)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i.i = phi i32 [ %i.ba, %bb.g ], [ %i.as, %bb.f ]
  %.pn.i.i = phi i32 [ %i.ax, %bb.g ], [ %i.al, %bb.f ] ; 2 uses
  %.023.i.i = add i32 %.pn.i.i, %i.w              ; 2 uses
  %i.bb = icmp eq i32 %.pn.i.i, %.sink.i.i
  %i.bc = icmp slt i32 %.023.i.i, 0
  %or.cond.i = select i1 %i.bb, i1 true, i1 %i.bc
  br i1 %or.cond.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = zext nneg i32 %.023.i.i to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bd ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %.val38.i = load i8, ptr %i.bf, align 1, !tbaa !22
  %i.bg = getelementptr i8, ptr %i.be, i64 3
  %.val39.i = load i8, ptr %i.bg, align 1, !tbaa !22
  %i.bh = zext i8 %.val38.i to i16
  %i.bi = shl nuw i16 %i.bh, 8
  %i.bj = zext i8 %.val39.i to i16
  %i.bk = or disjoint i16 %i.bi, %i.bj
  %i.bl = sext i16 %i.bk to i32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %.val36.i = load i8, ptr %i.bm, align 1, !tbaa !22
  %i.bn = getelementptr i8, ptr %i.be, i64 5
  %.val37.i = load i8, ptr %i.bn, align 1, !tbaa !22
  %i.bo = zext i8 %.val36.i to i16
  %i.bp = shl nuw i16 %i.bo, 8
  %i.bq = zext i8 %.val37.i to i16
  %i.br = or disjoint i16 %i.bp, %i.bq
  %i.bs = sext i16 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 6
  %.val34.i = load i8, ptr %i.bt, align 1, !tbaa !22
end_hunk_1
