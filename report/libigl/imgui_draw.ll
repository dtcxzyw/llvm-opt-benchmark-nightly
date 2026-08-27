Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui_draw?download=true
inline.NumInlined: 1179
inline.NumDeleted: 280
loop-unroll.NumCompletelyUnrolled: 238
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 283
begin_hunk_0_@_ZN10ImDrawList10PrimRectUVERK6ImVec2S2_S2_S2_j:bb.a
  %i.f = load i32, ptr %i.e, align 4, !tbaa !92
  %i.g = load i32, ptr %4, align 4, !tbaa !91
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !92
  %i.j = load i32, ptr %3, align 4, !tbaa !91
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !92
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !55
  %i.o = trunc i32 %i.n to i16                    ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !90   ; 6 uses
  store i16 %i.o, ptr %i.q, align 2, !tbaa !93
  %i.r = add i16 %i.o, 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 2
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
  %i.ak = getelementptr [8 x i8], ptr %i.ai, i64 %i.aj ; 15 uses
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
  br label %.backedge

.lr.ph621:                                        ; preds = %bb.l
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 8 uses
  %wide.trip.count648 = zext nneg i32 %2 to i64
  %.pre666 = load ptr, ptr %i.cr, align 8, !tbaa !88
  br label %bb.n

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph615
  %indvars.iv634 = phi i64 [ 0, %.lr.ph615 ], [ %indvars.iv.next635, %.backedge.backedge ] ; 2 uses
  %.0431612 = phi i32 [ %i.cm, %.lr.ph615 ], [ %i.cw, %.backedge.backedge ] ; 3 uses
  %indvars.iv.next635 = add nuw nsw i64 %indvars.iv634, 1 ; 5 uses
  %i.cs = icmp eq i64 %indvars.iv.next635, %i.aj  ; 2 uses
  %i.ct = trunc nuw nsw i64 %indvars.iv.next635 to i32
  %i.cu = select i1 %i.cs, i32 0, i32 %i.ct       ; 2 uses
  %i.cv = add i32 %.0431612, %i.cn
  %i.cw = select i1 %i.cs, i32 %i.cm, i32 %i.cv   ; 3 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv634
  %i.cy = zext nneg i32 %i.cu to i64              ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.cy
  %i.da = load <2 x float>, ptr %i.cx, align 8, !tbaa !9
  %i.db = load <2 x float>, ptr %i.cz, align 8, !tbaa !9
  %i.dc = fadd <2 x float> %i.da, %i.db
  %i.dd = fmul <2 x float> %i.dc, splat (float 5.000000e-01) ; 5 uses
  %foldExtExtBinop687 = fmul <2 x float> %i.dd, %i.dd
  %i.de = extractelement <2 x float> %foldExtExtBinop687, i64 1
  %i.df = extractelement <2 x float> %i.dd, i64 0 ; 2 uses
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.df, float %i.df, float %i.de) ; 2 uses
  %i.dh = fcmp ogt float %i.dg, f0x358637BD
  br i1 %i.dh, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.backedge
  %i.di = fdiv float 1.000000e+00, %i.dg          ; 2 uses
  %i.dj = fcmp ogt float %i.di, 1.000000e+02
  %.0427 = select i1 %i.dj, float 1.000000e+02, float %i.di
  %i.dk = insertelement <2 x float> poison, float %.0427, i64 0
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = fmul <2 x float> %i.dd, %i.dl
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.backedge
  %i.dn = phi <2 x float> [ %i.dm, %bb.j ], [ %i.dd, %.backedge ]
  %i.do = fmul <2 x float> %i.cq, %i.dn           ; 2 uses
  %i.dp = shl nuw nsw i32 %i.cu, 1
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.dq
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cy
  %i.dt = load <2 x float>, ptr %i.ds, align 4, !tbaa !9 ; 2 uses
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> %i.do, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.dv = shufflevector <2 x float> %i.do, <2 x float> %i.dt, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.dw = fadd <4 x float> %i.du, %i.dv
  %i.dx = fsub <4 x float> %i.du, %i.dv
  %i.dy = shufflevector <4 x float> %i.dw, <4 x float> %i.dx, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  store <4 x float> %i.dy, ptr %i.dr, align 8, !tbaa !9
  %i.dz = trunc i32 %i.cw to i16                  ; 4 uses
  %i.ea = load ptr, ptr %i.co, align 8, !tbaa !90 ; 13 uses
  store i16 %i.dz, ptr %i.ea, align 2, !tbaa !93
  %i.eb = trunc i32 %.0431612 to i16              ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 2
  store i16 %i.eb, ptr %i.ec, align 2, !tbaa !93
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 4 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  br i1 %.not449, label %bb.l, label %.thread679

bb.l:                                             ; preds = %bb.k
  %i.ef = trunc i32 %i.cw to i16
  %i.eg = insertelement <2 x i16> poison, i16 %i.ef, i64 0
  %i.eh = trunc i32 %.0431612 to i16
  %i.ei = insertelement <2 x i16> %i.eg, i16 %i.eh, i64 1
  %i.ej = shufflevector <2 x i16> %i.ei, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ek = add i16 %i.eb, 2                        ; 2 uses
  store i16 %i.ek, ptr %i.ed, align 2, !tbaa !93
  %i.el = getelementptr inbounds nuw i8, ptr %i.ea, i64 6
  store i16 %i.ek, ptr %i.el, align 2, !tbaa !93
  %i.em = add <4 x i16> %i.ej, <i16 2, i16 0, i16 1, i16 1> ; 2 uses
  store <4 x i16> %i.em, ptr %i.ee, align 2, !tbaa !93
  %i.en = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store i16 %i.eb, ptr %i.en, align 2, !tbaa !93
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ea, i64 18
  store i16 %i.eb, ptr %i.eo, align 2, !tbaa !93
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ea, i64 20
  store i16 %i.dz, ptr %i.ep, align 2, !tbaa !93
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ea, i64 22
  %i.er = extractelement <4 x i16> %i.em, i64 2
  store i16 %i.er, ptr %i.eq, align 2, !tbaa !93
  %i.es = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  store ptr %i.es, ptr %i.co, align 8, !tbaa !90
  %exitcond638.not = icmp eq i64 %indvars.iv.next635, %wide.trip.count637
  br i1 %exitcond638.not, label %.lr.ph621, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.l, %.thread679
  br label %.backedge, !llvm.loop !98

.thread679:                                       ; preds = %bb.k
  %i.et = getelementptr inbounds nuw i8, ptr %i.ea, i64 10
  %i.eu = add i16 %i.eb, 1                        ; 2 uses
  store i16 %i.eu, ptr %i.ed, align 2, !tbaa !93
  %i.ev = add i16 %i.dz, 1
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ea, i64 6
  store i16 %i.ev, ptr %i.ew, align 2, !tbaa !93
  store i16 %i.eu, ptr %i.ee, align 2, !tbaa !93
  store i16 %i.dz, ptr %i.et, align 2, !tbaa !93
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  store ptr %i.ex, ptr %i.co, align 8, !tbaa !90
  %exitcond638.not681 = icmp eq i64 %indvars.iv.next635, %wide.trip.count637
  br i1 %exitcond638.not681, label %.lr.ph619, label %.backedge.backedge

.lr.ph619:                                        ; preds = %.thread679
  %i.ey = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 504
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !99
  %i.fb = sext i32 %i.q to i64
  %i.fc = getelementptr inbounds [16 x i8], ptr %i.fa, i64 %i.fb ; 2 uses
  %i.fd = load <2 x i32>, ptr %i.fc, align 4, !tbaa !9
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load <2 x i32>, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !9
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %wide.trip.count642 = zext nneg i32 %2 to i64
  %.pre = load ptr, ptr %i.ff, align 8, !tbaa !88
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph619, %bb.m
  %i.fg = phi ptr [ %.pre, %.lr.ph619 ], [ %i.fu, %bb.m ]
  %indvars.iv639 = phi i64 [ 0, %.lr.ph619 ], [ %indvars.iv.next640, %bb.m ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv639, 4
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8
  store i64 %i.fi, ptr %i.fg, align 4
  %i.fj = load ptr, ptr %i.ff, align 8, !tbaa !88
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store <2 x i32> %i.fd, ptr %i.fk, align 4
  %i.fl = load ptr, ptr %i.ff, align 8, !tbaa !88 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  store i32 %3, ptr %i.fm, align 4, !tbaa !95
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 20
  %i.fp = load i64, ptr %i.fn, align 8
  store i64 %i.fp, ptr %i.fo, align 4
  %i.fq = load ptr, ptr %i.ff, align 8, !tbaa !88
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 28
  store <2 x i32> %i.fe, ptr %i.fr, align 4
  %i.fs = load ptr, ptr %i.ff, align 8, !tbaa !88 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 36
  store i32 %3, ptr %i.ft, align 4, !tbaa !95
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 40 ; 2 uses
  store ptr %i.fu, ptr %i.ff, align 8, !tbaa !88
  %indvars.iv.next640 = add nuw nsw i64 %indvars.iv639, 1 ; 2 uses
  %exitcond643.not = icmp eq i64 %indvars.iv.next640, %wide.trip.count642
  br i1 %exitcond643.not, label %.loopexit607, label %bb.m, !llvm.loop !100

bb.n:                                             ; preds = %.lr.ph621, %bb.n
  %i.fv = phi ptr [ %.pre666, %.lr.ph621 ], [ %i.gq, %bb.n ]
  %indvars.iv644 = phi i64 [ 0, %.lr.ph621 ], [ %indvars.iv.next645, %bb.n ] ; 3 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv644
  %i.fx = load i64, ptr %i.fw, align 4
  store i64 %i.fx, ptr %i.fv, align 4
  %i.fy = load ptr, ptr %i.cr, align 8, !tbaa !88
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store i64 %i.e, ptr %i.fz, align 4
  %i.ga = load ptr, ptr %i.cr, align 8, !tbaa !88 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  store i32 %3, ptr %i.gb, align 4, !tbaa !95
  %.idx677 = shl nuw nsw i64 %indvars.iv644, 4
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx677 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 20
  %i.ge = load i64, ptr %i.gc, align 8
  store i64 %i.ge, ptr %i.gd, align 4
  %i.gf = load ptr, ptr %i.cr, align 8, !tbaa !88
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 28
  store i64 %i.e, ptr %i.gg, align 4
  %i.gh = load ptr, ptr %i.cr, align 8, !tbaa !88 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 36
  store i32 %i.n, ptr %i.gi, align 4, !tbaa !95
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 40
  %i.gl = load i64, ptr %i.gj, align 8
  store i64 %i.gl, ptr %i.gk, align 4
  %i.gm = load ptr, ptr %i.cr, align 8, !tbaa !88
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 48
  store i64 %i.e, ptr %i.gn, align 4
  %i.go = load ptr, ptr %i.cr, align 8, !tbaa !88 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 56
  store i32 %i.n, ptr %i.gp, align 4, !tbaa !95
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 60 ; 2 uses
  store ptr %i.gq, ptr %i.cr, align 8, !tbaa !88
  %indvars.iv.next645 = add nuw nsw i64 %indvars.iv644, 1 ; 2 uses
  %exitcond649.not = icmp eq i64 %indvars.iv.next645, %wide.trip.count648
  br i1 %exitcond649.not, label %.loopexit607, label %bb.n, !llvm.loop !101

bb.o:                                             ; preds = %bb.h
  %i.gr = fsub float %i.p, %i.i
  %i.gs = fmul float %i.gr, 5.000000e-01          ; 4 uses
  %i.gt = fadd float %i.i, %i.gs                  ; 2 uses
  %i.gu = load <2 x float>, ptr %i.ai, align 16, !tbaa !9
  %i.gv = shufflevector <2 x float> %i.gu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gw = load <2 x float>, ptr %1, align 4, !tbaa !9
  %i.gx = shufflevector <2 x float> %i.gw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 5 uses
  %i.gy = insertelement <4 x float> poison, float %i.gt, i64 0
  %i.gz = insertelement <4 x float> %i.gy, float %i.gs, i64 1
  %i.ha = shufflevector <4 x float> %i.gz, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.hb = fmul <4 x float> %i.ha, %i.gv           ; 5 uses
  %i.hc = fadd <4 x float> %i.hb, %i.gx           ; 2 uses
  %i.hd = shufflevector <4 x float> %i.hc, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.hd, ptr %i.ak, align 8
  %i.he = shufflevector <4 x float> %i.hc, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store <2 x float> %i.he, ptr %i.hf, align 8
  %shift = shufflevector <4 x float> %i.hb, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop689 = fsub <4 x float> %i.gx, %shift
  %shift699 = shufflevector <4 x float> %i.hb, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %foldExtExtBinop700 = fsub <4 x float> %i.gx, %shift699
  %.sroa.0.0.vec.insert.i550 = shufflevector <4 x float> %foldExtExtBinop689, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.hg = shufflevector <4 x float> %foldExtExtBinop700, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %.sroa.0.4.vec.insert.i551 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i550, <2 x float> %i.hg, <2 x i32> <i32 0, i32 3>
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <2 x float> %.sroa.0.4.vec.insert.i551, ptr %i.hh, align 8
  %foldExtExtBinop691 = fsub <4 x float> %i.gx, %i.hb
  %foldExtExtBinop693 = fsub <4 x float> %i.gx, %i.hb
  %.sroa.0.0.vec.insert.i554 = shufflevector <4 x float> %foldExtExtBinop691, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.hi = shufflevector <4 x float> %foldExtExtBinop693, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %.sroa.0.4.vec.insert.i555 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i554, <2 x float> %i.hi, <2 x i32> <i32 0, i32 3>
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store <2 x float> %.sroa.0.4.vec.insert.i555, ptr %i.hj, align 8
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bh
  %i.hl = load <2 x float>, ptr %i.bi, align 8, !tbaa !9
  %i.hm = insertelement <2 x float> poison, float %i.gt, i64 0
  %i.hn = shufflevector <2 x float> %i.hm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ho = fmul <2 x float> %i.hn, %i.hl
  %i.hp = load <2 x float>, ptr %i.hk, align 4, !tbaa !9 ; 4 uses
  %i.hq = fadd <2 x float> %i.ho, %i.hp
  %i.hr = shl nsw i32 %i.f, 2                     ; 2 uses
  %i.hs = zext nneg i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.hs
  store <2 x float> %i.hq, ptr %i.ht, align 8
  %i.hu = load <2 x float>, ptr %i.bi, align 8, !tbaa !9
  %i.hv = insertelement <2 x float> poison, float %i.gs, i64 0
  %i.hw = shufflevector <2 x float> %i.hv, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hx = fmul <2 x float> %i.hw, %i.hu
  %i.hy = fadd <2 x float> %i.hp, %i.hx
  %6 = zext nneg i32 %i.hr to i64
  %7 = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %6 ; 3 uses
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %i.hy, ptr %8, align 8
  %9 = load <2 x float>, ptr %i.bi, align 8, !tbaa !9
  %10 = fmul <2 x float> %i.hw, %9
  %i.hz = fsub <2 x float> %i.hp, %10
  %11 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store <2 x float> %i.hz, ptr %11, align 8
  %12 = load <2 x float>, ptr %i.bi, align 8, !tbaa !9
  %i.ia = fmul <2 x float> %i.hn, %12
  %i.ib = fsub <2 x float> %i.hp, %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %7, i64 24
  store <2 x float> %i.ib, ptr %i.ic, align 8
  br label %.lr.ph625

.lr.ph625:                                        ; preds = %bb.o, %.thread601
  %i.id = phi float [ %i.bl, %.thread601 ], [ %i.gs, %bb.o ] ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !55 ; 2 uses
  %i.ig = fadd float %i.i, %i.id
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.promoted = load ptr, ptr %i.ih, align 8, !tbaa !90
  %wide.trip.count653 = zext nneg i32 %i.g to i64
  %i.ii = insertelement <4 x float> poison, float %i.ig, i64 0
  %i.ij = insertelement <4 x float> %i.ii, float %i.id, i64 1
  %i.ik = shufflevector <4 x float> %i.ij, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  br label %bb.p

.lr.ph627:                                        ; preds = %bb.r
  store ptr %i.kr, ptr %i.ih, align 8, !tbaa !90
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 10 uses
  %wide.trip.count659 = zext nneg i32 %2 to i64
  %.pre667 = load ptr, ptr %i.il, align 8, !tbaa !88
  br label %bb.s

bb.p:                                             ; preds = %.lr.ph625, %bb.r
  %indvars.iv650 = phi i64 [ 0, %.lr.ph625 ], [ %indvars.iv.next651, %bb.r ] ; 2 uses
  %i.im = phi ptr [ %.promoted, %.lr.ph625 ], [ %i.kr, %bb.r ] ; 9 uses
  %.0423622 = phi i32 [ %i.if, %.lr.ph625 ], [ %spec.select, %bb.r ] ; 3 uses
  %indvars.iv.next651 = add nuw nsw i64 %indvars.iv650, 1 ; 4 uses
  %i.in = icmp eq i64 %indvars.iv.next651, %i.aj  ; 2 uses
  %i.io = trunc nuw nsw i64 %indvars.iv.next651 to i32
  %i.ip = select i1 %i.in, i32 0, i32 %i.io       ; 2 uses
  %i.iq = add i32 %.0423622, 4
  %spec.select = select i1 %i.in, i32 %i.if, i32 %i.iq ; 3 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv650
  %i.is = zext nneg i32 %i.ip to i64              ; 2 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.is
  %i.iu = load <2 x float>, ptr %i.ir, align 8, !tbaa !9
  %i.iv = load <2 x float>, ptr %i.it, align 8, !tbaa !9
  %i.iw = fadd <2 x float> %i.iu, %i.iv
  %i.ix = fmul <2 x float> %i.iw, splat (float 5.000000e-01) ; 5 uses
  %foldExtExtBinop695 = fmul <2 x float> %i.ix, %i.ix
  %i.iy = extractelement <2 x float> %foldExtExtBinop695, i64 1
  %i.iz = extractelement <2 x float> %i.ix, i64 0 ; 2 uses
  %i.ja = tail call float @llvm.fmuladd.f32(float %i.iz, float %i.iz, float %i.iy) ; 2 uses
  %i.jb = fcmp ogt float %i.ja, f0x358637BD
  br i1 %i.jb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.jc = fdiv float 1.000000e+00, %i.ja          ; 2 uses
  %i.jd = fcmp ogt float %i.jc, 1.000000e+02
  %.0419 = select i1 %i.jd, float 1.000000e+02, float %i.jc
  %i.je = insertelement <2 x float> poison, float %.0419, i64 0
  %i.jf = shufflevector <2 x float> %i.je, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jg = fmul <2 x float> %i.ix, %i.jf
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.jh = phi <2 x float> [ %i.jg, %bb.q ], [ %i.ix, %bb.p ]
  %i.ji = shufflevector <2 x float> %i.jh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.jj = fmul <4 x float> %i.ik, %i.ji           ; 2 uses
  %i.jk = shl nsw i32 %i.ip, 2
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.jl ; 2 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.is
  %i.jo = load <2 x float>, ptr %i.jn, align 4, !tbaa !9
  %i.jp = shufflevector <2 x float> %i.jo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.jq = fadd <4 x float> %i.jj, %i.jp
  store <4 x float> %i.jq, ptr %i.jm, align 8, !tbaa !9
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %i.js = fsub <4 x float> %i.jp, %i.jj
  %i.jt = shufflevector <4 x float> %i.js, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x float> %i.jt, ptr %i.jr, align 8, !tbaa !9
  %i.ju = trunc i32 %spec.select to i16
  %i.jv = insertelement <2 x i16> poison, i16 %i.ju, i64 0
  %i.jw = trunc i32 %.0423622 to i16
  %i.jx = insertelement <2 x i16> %i.jv, i16 %i.jw, i64 1
  %i.jy = shufflevector <2 x i16> %i.jx, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.jz = trunc i32 %spec.select to i16           ; 3 uses
  %i.ka = trunc i32 %.0423622 to i16              ; 3 uses
  %i.kb = add <4 x i16> %i.jy, <i16 1, i16 1, i16 2, i16 2> ; 3 uses
  %i.kc = shufflevector <4 x i16> %i.kb, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 2, i32 3, i32 0, i32 0, i32 1>
  %i.kd = add i16 %i.jz, 1
  store <8 x i16> %i.kc, ptr %i.im, align 2, !tbaa !93
  %i.ke = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  store i16 %i.ka, ptr %i.ke, align 2, !tbaa !93
  %i.kf = getelementptr inbounds nuw i8, ptr %i.im, i64 18
  store i16 %i.ka, ptr %i.kf, align 2, !tbaa !93
  %i.kg = getelementptr inbounds nuw i8, ptr %i.im, i64 20
  store i16 %i.jz, ptr %i.kg, align 2, !tbaa !93
  %i.kh = getelementptr inbounds nuw i8, ptr %i.im, i64 22
  store i16 %i.kd, ptr %i.kh, align 2, !tbaa !93
  %i.ki = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  %i.kj = extractelement <4 x i16> %i.kb, i64 3   ; 2 uses
  store i16 %i.kj, ptr %i.ki, align 2, !tbaa !93
  %i.kk = getelementptr inbounds nuw i8, ptr %i.im, i64 26
  %i.kl = shufflevector <4 x i16> %i.kb, <4 x i16> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.km = insertelement <4 x i16> %i.kl, i16 %i.ka, i64 1
  %i.kn = insertelement <4 x i16> %i.km, i16 %i.jz, i64 3
  %i.ko = add <4 x i16> %i.kn, <i16 0, i16 3, i16 poison, i16 3>
  %i.kp = shufflevector <4 x i16> %i.ko, <4 x i16> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  store <4 x i16> %i.kp, ptr %i.kk, align 2, !tbaa !93
  %i.kq = getelementptr inbounds nuw i8, ptr %i.im, i64 34
  store i16 %i.kj, ptr %i.kq, align 2, !tbaa !93
  %i.kr = getelementptr inbounds nuw i8, ptr %i.im, i64 36 ; 2 uses
  %exitcond654.not = icmp eq i64 %indvars.iv.next651, %wide.trip.count653
  br i1 %exitcond654.not, label %.lr.ph627, label %bb.p, !llvm.loop !102

bb.s:                                             ; preds = %.lr.ph627, %bb.s
  %i.ks = phi ptr [ %.pre667, %.lr.ph627 ], [ %i.lu, %bb.s ]
  %indvars.iv655 = phi i64 [ 0, %.lr.ph627 ], [ %indvars.iv.next656, %bb.s ] ; 2 uses
  %.idx678 = shl nuw nsw i64 %indvars.iv655, 5
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx678 ; 4 uses
  %i.ku = load i64, ptr %i.kt, align 8
  store i64 %i.ku, ptr %i.ks, align 4
  %i.kv = load ptr, ptr %i.il, align 8, !tbaa !88
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  store i64 %i.e, ptr %i.kw, align 4
  %i.kx = load ptr, ptr %i.il, align 8, !tbaa !88 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  store i32 %i.n, ptr %i.ky, align 4, !tbaa !95
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 20
  %i.lb = load i64, ptr %i.kz, align 8
  store i64 %i.lb, ptr %i.la, align 4
  %i.lc = load ptr, ptr %i.il, align 8, !tbaa !88
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 28
  store i64 %i.e, ptr %i.ld, align 4
  %i.le = load ptr, ptr %i.il, align 8, !tbaa !88 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 36
  store i32 %3, ptr %i.lf, align 4, !tbaa !95
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  %i.lh = getelementptr inbounds nuw i8, ptr %i.le, i64 40
  %i.li = load i64, ptr %i.lg, align 8
  store i64 %i.li, ptr %i.lh, align 4
  %i.lj = load ptr, ptr %i.il, align 8, !tbaa !88
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 48
  store i64 %i.e, ptr %i.lk, align 4
  %i.ll = load ptr, ptr %i.il, align 8, !tbaa !88 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 56
  store i32 %3, ptr %i.lm, align 4, !tbaa !95
  %i.ln = getelementptr inbounds nuw i8, ptr %i.kt, i64 24
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ll, i64 60
  %i.lp = load i64, ptr %i.ln, align 8
  store i64 %i.lp, ptr %i.lo, align 4
  %i.lq = load ptr, ptr %i.il, align 8, !tbaa !88
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 68
  store i64 %i.e, ptr %i.lr, align 4
  %i.ls = load ptr, ptr %i.il, align 8, !tbaa !88 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 76
  store i32 %i.n, ptr %i.lt, align 4, !tbaa !95
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 80 ; 2 uses
  store ptr %i.lu, ptr %i.il, align 8, !tbaa !88
  %indvars.iv.next656 = add nuw nsw i64 %indvars.iv655, 1 ; 2 uses
  %exitcond660.not = icmp eq i64 %indvars.iv.next656, %wide.trip.count659
  br i1 %exitcond660.not, label %.loopexit607, label %bb.s, !llvm.loop !103

.loopexit607:                                     ; preds = %bb.m, %bb.n, %bb.s
  %i.lv = and i32 %i.ae, 65535
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !55
  %i.ly = add i32 %i.lx, %i.lv
  store i32 %i.ly, ptr %i.lw, align 4, !tbaa !55
  br label %.loopexit

.lr.ph630:                                        ; preds = %bb.b
  %i.lz = mul nsw i32 %i.g, 6
  %i.ma = shl nsw i32 %i.g, 2
  tail call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(196) %0, i32 noundef %i.lz, i32 noundef %i.ma)
  %i.mb = fmul float %5, 5.000000e-01
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.mf = zext nneg i32 %2 to i64
  %wide.trip.count664 = zext nneg i32 %i.g to i64
  %i.mg = insertelement <2 x float> poison, float %i.mb, i64 0
  %i.mh = shufflevector <2 x float> %i.mg, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph630, %bb.v
  %indvars.iv661 = phi i64 [ 0, %.lr.ph630 ], [ %indvars.iv.next662, %bb.v ] ; 2 uses
  %indvars.iv.next662 = add nuw nsw i64 %indvars.iv661, 1 ; 4 uses
  %i.mi = icmp eq i64 %indvars.iv.next662, %i.mf
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv661 ; 3 uses
  %i.mk = select i1 %i.mi, i64 0, i64 %indvars.iv.next662
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.mk ; 4 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 4 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mj, i64 4
  %i.mo = load <2 x float>, ptr %i.ml, align 4, !tbaa !9
  %i.mp = load <2 x float>, ptr %i.mj, align 4, !tbaa !9 ; 3 uses
  %i.mq = fsub <2 x float> %i.mo, %i.mp           ; 5 uses
  %foldExtExtBinop697 = fmul <2 x float> %i.mq, %i.mq
  %i.mr = extractelement <2 x float> %foldExtExtBinop697, i64 1
  %i.ms = extractelement <2 x float> %i.mq, i64 0 ; 2 uses
  %i.mt = tail call float @llvm.fmuladd.f32(float %i.ms, float %i.ms, float %i.mr) ; 2 uses
  %i.mu = fcmp ogt float %i.mt, 0.000000e+00
  br i1 %i.mu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.mv = insertelement <4 x float> poison, float %i.mt, i64 0
  %i.mw = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.mv)
end_hunk_0
begin_hunk_1_@_ZL20stbtt_FindGlyphIndexPK14stbtt_fontinfoi:bb.a
  %i.ao = zext i8 %.val156 to i32
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
  %1 = sext i32 %i.fk to i64
  %i.fl = getelementptr inbounds i8, ptr %i.fi, i64 %1
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
