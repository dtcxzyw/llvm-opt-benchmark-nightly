Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui_draw?download=true
inline.NumInlined: 1179
inline.NumDeleted: 280
loop-unroll.NumCompletelyUnrolled: 238
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 283
begin_hunk_0_@_ZN10ImDrawList10PrimRectUVERK6ImVec2S2_S2_S2_j:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  store i16 %i.r, ptr %i.s, align 2, !tbaa !92
  %i.t = add i16 %i.o, 2                          ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i16 %i.t, ptr %i.u, align 2, !tbaa !92
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  store i16 %i.o, ptr %i.v, align 2, !tbaa !92
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i16 %i.t, ptr %i.w, align 2, !tbaa !92
  %i.x = add i16 %i.o, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 10
  store i16 %i.x, ptr %i.y, align 2, !tbaa !92
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 11 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !86
  %i.ab = load i64, ptr %1, align 4
  store i64 %i.ab, ptr %i.aa, align 4
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !86
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %3, align 4
  store i64 %i.ae, ptr %i.ad, align 4
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !86  ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i32 %5, ptr %i.ag, align 4, !tbaa !94
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  store i32 %i.a, ptr %i.ah, align 4
  %.sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i32 %i.c, ptr %.sroa_idx29, align 4
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !86  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  store i32 %i.g, ptr %i.aj, align 4
  %.sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store i32 %i.i, ptr %.sroa_idx23, align 4
  %i.ak = load ptr, ptr %i.z, align 8, !tbaa !86  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 36
  store i32 %5, ptr %i.al, align 4, !tbaa !94
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.an = load i64, ptr %2, align 4
  store i64 %i.an, ptr %i.am, align 4
  %i.ao = load ptr, ptr %i.z, align 8, !tbaa !86
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load i64, ptr %4, align 4
  store i64 %i.aq, ptr %i.ap, align 4
  %i.ar = load ptr, ptr %i.z, align 8, !tbaa !86  ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  store i32 %5, ptr %i.as, align 4, !tbaa !94
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 60
  store i32 %i.d, ptr %i.at, align 4
  %.sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  store i32 %i.f, ptr %.sroa_idx26, align 4
  %i.au = load ptr, ptr %i.z, align 8, !tbaa !86  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 68
  store i32 %i.j, ptr %i.av, align 4
  %.sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  store i32 %i.l, ptr %.sroa_idx22, align 4
  %i.aw = load i32, ptr %i.m, align 4, !tbaa !57
  %i.ax = add i32 %i.aw, 4
  store i32 %i.ax, ptr %i.m, align 4, !tbaa !57
  %i.ay = load <2 x ptr>, ptr %i.z, align 8, !tbaa !83
  %i.az = load ptr, ptr %i.z, align 8, !tbaa !86
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 76
  store i32 %5, ptr %i.ba, align 4, !tbaa !94
  %i.bb = getelementptr inbounds nuw i8, <2 x ptr> %i.ay, <2 x i64> <i64 80, i64 12>
  store <2 x ptr> %i.bb, ptr %i.z, align 8, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN10ImDrawList10PrimQuadUVERK6ImVec2S2_S2_S2_S2_S2_S2_S2_j(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(196) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %8, i32 noundef %9) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !57
  %i.c = trunc i32 %i.b to i16                    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !88   ; 6 uses
  store i16 %i.c, ptr %i.e, align 2, !tbaa !92
  %i.f = add i16 %i.c, 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store i16 %i.f, ptr %i.g, align 2, !tbaa !92
  %i.h = add i16 %i.c, 2                          ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i16 %i.h, ptr %i.i, align 2, !tbaa !92
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  store i16 %i.c, ptr %i.j, align 2, !tbaa !92
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i16 %i.h, ptr %i.k, align 2, !tbaa !92
  %i.l = add i16 %i.c, 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  store i16 %i.l, ptr %i.m, align 2, !tbaa !92
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 11 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !86
  %i.p = load i64, ptr %1, align 4
  store i64 %i.p, ptr %i.o, align 4
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !86
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %5, align 4
  store i64 %i.s, ptr %i.r, align 4
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !86   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i32 %9, ptr %i.u, align 4, !tbaa !94
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.w = load i64, ptr %2, align 4
  store i64 %i.w, ptr %i.v, align 4
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !86
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  %i.z = load i64, ptr %6, align 4
  store i64 %i.z, ptr %i.y, align 4
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !86  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 36
  store i32 %9, ptr %i.ab, align 4, !tbaa !94
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ad = load i64, ptr %3, align 4
  store i64 %i.ad, ptr %i.ac, align 4
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !86
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load i64, ptr %7, align 4
  store i64 %i.ag, ptr %i.af, align 4
  %i.ah = load ptr, ptr %i.n, align 8, !tbaa !86  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  store i32 %9, ptr %i.ai, align 4, !tbaa !94
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 60
  %i.ak = load i64, ptr %4, align 4
  store i64 %i.ak, ptr %i.aj, align 4
  %i.al = load ptr, ptr %i.n, align 8, !tbaa !86
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 68
  %i.an = load i64, ptr %8, align 4
  store i64 %i.an, ptr %i.am, align 4
  %i.ao = load i32, ptr %i.a, align 4, !tbaa !57
  %i.ap = add i32 %i.ao, 4
  store i32 %i.ap, ptr %i.a, align 4, !tbaa !57
  %i.aq = load <2 x ptr>, ptr %i.n, align 8, !tbaa !83
  %i.ar = load ptr, ptr %i.n, align 8, !tbaa !86
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 76
  store i32 %9, ptr %i.as, align 4, !tbaa !94
  %i.at = getelementptr inbounds nuw i8, <2 x ptr> %i.aq, <2 x i64> <i64 80, i64 12>
  store <2 x ptr> %i.at, ptr %i.n, align 8, !tbaa !83
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(196) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = icmp slt i32 %2, 2
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %4, 1
  %.not441 = icmp eq i32 %i.b, 0                  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.e = load i64, ptr %i.d, align 8              ; 11 uses
  %i.f = add nsw i32 %2, -1                       ; 4 uses
  %i.g = select i1 %.not441, i32 %i.f, i32 %2     ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.i = load float, ptr %i.h, align 8, !tbaa !69 ; 8 uses
  %i.j = fcmp ogt float %5, %i.i                  ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !56   ; 2 uses
  %i.m = and i32 %i.l, 1
  %.not442 = icmp eq i32 %i.m, 0
  br i1 %.not442, label %.lr.ph627, label %bb.c

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
  %or.cond.not451 = select i1 %i.u, i1 true, i1 %i.v
  %i.w = fcmp ugt float %i.s, f0x3727C5AC
  %or.cond3.not448 = select i1 %or.cond.not451, i1 true, i1 %i.w
  %i.x = fcmp une float %i.i, 1.000000e+00
  %.not446 = select i1 %or.cond3.not448, i1 true, i1 %i.x ; 8 uses
  %.v = select i1 %i.j, i32 18, i32 12
  %.v599 = select i1 %.not446, i32 %.v, i32 6
  %i.y = mul nsw i32 %.v599, %i.g
  br i1 %.not446, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = shl nuw nsw i32 %2, 1
  br label %.lr.ph.preheader

bb.e:                                             ; preds = %bb.c
  %i.aa = shl nuw nsw i32 %2, 2
  %i.ab = mul nuw nsw i32 %2, 3
  %i.ac = select i1 %i.j, i32 %i.aa, i32 %i.ab
  %i.ad = select i1 %i.j, i32 5, i32 3
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d, %bb.e
  %.not444 = phi i32 [ 3, %bb.d ], [ %i.ad, %bb.e ]
  %i.ae = phi i32 [ %i.z, %bb.d ], [ %i.ac, %bb.e ] ; 2 uses
  tail call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(196) %0, i32 noundef %i.y, i32 noundef %i.ae)
  %i.af = mul nuw nsw i32 %.not444, %2
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = alloca i8, i64 %i.ah, align 16          ; 9 uses
  %i.aj = zext nneg i32 %2 to i64                 ; 4 uses
  %i.ak = getelementptr [8 x i8], ptr %i.ai, i64 %i.aj ; 14 uses
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.g
  br i1 %.not441, label %bb.h, label %.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.al = icmp eq i64 %indvars.iv.next, %i.aj
  %i.am = select i1 %i.al, i64 0, i64 %indvars.iv.next
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.am
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ap = load <2 x float>, ptr %i.an, align 4, !tbaa !15
  %i.aq = load <2 x float>, ptr %i.ao, align 4, !tbaa !15
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
  store float %i.bc, ptr %i.bb, align 8, !tbaa !89
  %i.bd = extractelement <2 x float> %i.ba, i64 0
  %i.be = fneg float %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store float %i.be, ptr %i.bf, align 4, !tbaa !90
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !286

bb.h:                                             ; preds = %._crit_edge
  %i.bg = getelementptr i8, ptr %i.ak, i64 -16
  %i.bh = zext nneg i32 %i.f to i64               ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.bh ; 5 uses
  %i.bj = load i64, ptr %i.bg, align 8
  store i64 %i.bj, ptr %i.bi, align 8
  %or.cond5 = select i1 %.not446, i1 %i.j, i1 false
  br i1 %or.cond5, label %bb.o, label %bb.i

.thread:                                          ; preds = %._crit_edge
  %or.cond5596 = select i1 %.not446, i1 %i.j, i1 false
  br i1 %or.cond5596, label %.thread598, label %.thread597

.thread598:                                       ; preds = %.thread
  %i.bk = fsub float %i.p, %i.i
  %i.bl = fmul float %i.bk, 5.000000e-01
  br label %.lr.ph622

.thread597:                                       ; preds = %.thread
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.p, float 5.000000e-01, float 1.000000e+00)
  %i.bn = select i1 %.not446, float %i.i, float %i.bm
  br label %.lr.ph612

bb.i:                                             ; preds = %bb.h
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.p, float 5.000000e-01, float 1.000000e+00)
  %i.bp = select i1 %.not446, float %i.i, float %i.bo ; 2 uses
  %i.bq = load <2 x float>, ptr %i.ai, align 16, !tbaa !15
  %i.br = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bt = fmul <2 x float> %i.bs, %i.bq           ; 2 uses
  %i.bu = load <2 x float>, ptr %1, align 4, !tbaa !15 ; 2 uses
  %i.bv = fadd <2 x float> %i.bt, %i.bu
  store <2 x float> %i.bv, ptr %i.ak, align 8
  %i.bw = fsub <2 x float> %i.bu, %i.bt
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store <2 x float> %i.bw, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bh
  %i.bz = load <2 x float>, ptr %i.bi, align 8, !tbaa !15
  %i.ca = fmul <2 x float> %i.bs, %i.bz
  %i.cb = load <2 x float>, ptr %i.by, align 4, !tbaa !15 ; 2 uses
  %i.cc = fadd <2 x float> %i.ca, %i.cb
  %i.cd = shl nuw nsw i32 %i.f, 1
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ce ; 2 uses
  store <2 x float> %i.cc, ptr %i.cf, align 8
  %i.cg = load <2 x float>, ptr %i.bi, align 8, !tbaa !15
  %i.ch = fmul <2 x float> %i.bs, %i.cg
  %i.ci = fsub <2 x float> %i.cb, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store <2 x float> %i.ci, ptr %i.cj, align 8
  br label %.lr.ph612

.lr.ph612:                                        ; preds = %bb.i, %.thread597
  %i.ck = phi float [ %i.bn, %.thread597 ], [ %i.bp, %bb.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !57 ; 2 uses
  %i.cn = select i1 %.not446, i32 3, i32 2
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %wide.trip.count634 = zext nneg i32 %i.g to i64 ; 2 uses
  %i.cp = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer
  %.promoted701 = load ptr, ptr %i.co, align 8, !tbaa !88
  br label %.backedge

.lr.ph618:                                        ; preds = %bb.l
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 8 uses
  %wide.trip.count645 = zext nneg i32 %2 to i64
  %.pre663 = load ptr, ptr %i.cr, align 8, !tbaa !86
  br label %bb.n

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph612
  %i.cs = phi ptr [ %.promoted701, %.lr.ph612 ], [ %i.et, %.backedge.backedge ] ; 13 uses
  %indvars.iv631 = phi i64 [ 0, %.lr.ph612 ], [ %indvars.iv.next632, %.backedge.backedge ] ; 2 uses
  %.0432609 = phi i32 [ %i.cm, %.lr.ph612 ], [ %i.cx, %.backedge.backedge ] ; 3 uses
  %indvars.iv.next632 = add nuw nsw i64 %indvars.iv631, 1 ; 5 uses
  %i.ct = icmp eq i64 %indvars.iv.next632, %i.aj  ; 2 uses
  %i.cu = trunc nuw nsw i64 %indvars.iv.next632 to i32
  %i.cv = select i1 %i.ct, i32 0, i32 %i.cu       ; 2 uses
  %i.cw = add i32 %.0432609, %i.cn
  %i.cx = select i1 %i.ct, i32 %i.cm, i32 %i.cw   ; 3 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv631
  %i.cz = zext nneg i32 %i.cv to i64              ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.cz
  %i.db = load <2 x float>, ptr %i.cy, align 8, !tbaa !15
  %i.dc = load <2 x float>, ptr %i.da, align 8, !tbaa !15
  %i.dd = fadd <2 x float> %i.db, %i.dc
  %i.de = fmul <2 x float> %i.dd, splat (float 5.000000e-01) ; 5 uses
  %foldExtExtBinop684.a = fmul <2 x float> %i.de, %i.de
  %i.df = extractelement <2 x float> %foldExtExtBinop684.a, i64 1
  %i.dg = extractelement <2 x float> %i.de, i64 0 ; 2 uses
  %i.dh = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.dg, float %i.df) ; 2 uses
  %i.di = fcmp ogt float %i.dh, f0x358637BD
  br i1 %i.di, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.backedge
  %i.dj = fdiv float 1.000000e+00, %i.dh          ; 2 uses
  %i.dk = fcmp ogt float %i.dj, 1.000000e+02
  %spec.store.select = select i1 %i.dk, float 1.000000e+02, float %i.dj
  %i.dl = insertelement <2 x float> poison, float %spec.store.select, i64 0
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
  %i.du = load <2 x float>, ptr %i.dt, align 4, !tbaa !15 ; 2 uses
  %i.dv = shufflevector <2 x float> %i.du, <2 x float> %i.dp, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.dw = shufflevector <2 x float> %i.dp, <2 x float> %i.du, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.dx = fadd <4 x float> %i.dv, %i.dw
  %i.dy = fsub <4 x float> %i.dv, %i.dw
  %i.dz = shufflevector <4 x float> %i.dx, <4 x float> %i.dy, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  store <4 x float> %i.dz, ptr %i.ds, align 8, !tbaa !15
  %i.ea = trunc i32 %i.cx to i16                  ; 4 uses
  store i16 %i.ea, ptr %i.cs, align 2, !tbaa !92
  %i.eb = trunc i32 %.0432609 to i16              ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  store i16 %i.eb, ptr %i.ec, align 2, !tbaa !92
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cs, i64 4 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
  br i1 %.not446, label %bb.l, label %.thread676

bb.l:                                             ; preds = %bb.k
  %i.ef = trunc i32 %i.cx to i16
  %i.eg = insertelement <2 x i16> poison, i16 %i.ef, i64 0
  %i.eh = trunc i32 %.0432609 to i16
  %i.ei = insertelement <2 x i16> %i.eg, i16 %i.eh, i64 1
  %i.ej = shufflevector <2 x i16> %i.ei, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ek = add i16 %i.eb, 2                        ; 2 uses
  store i16 %i.ek, ptr %i.ed, align 2, !tbaa !92
  %i.el = getelementptr inbounds nuw i8, ptr %i.cs, i64 6
  store i16 %i.ek, ptr %i.el, align 2, !tbaa !92
  %i.em = add <4 x i16> %i.ej, <i16 2, i16 0, i16 1, i16 1> ; 2 uses
  store <4 x i16> %i.em, ptr %i.ee, align 2, !tbaa !92
  %i.en = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store i16 %i.eb, ptr %i.en, align 2, !tbaa !92
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cs, i64 18
  store i16 %i.eb, ptr %i.eo, align 2, !tbaa !92
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cs, i64 20
  store i16 %i.ea, ptr %i.ep, align 2, !tbaa !92
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cs, i64 22
  %i.er = extractelement <4 x i16> %i.em, i64 2
  store i16 %i.er, ptr %i.eq, align 2, !tbaa !92
  %i.es = getelementptr inbounds nuw i8, ptr %i.cs, i64 24 ; 2 uses
  store ptr %i.es, ptr %i.co, align 8, !tbaa !88
  %exitcond635.not = icmp eq i64 %indvars.iv.next632, %wide.trip.count634
  br i1 %exitcond635.not, label %.lr.ph618, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.l, %.thread676
  %i.et = phi ptr [ %i.es, %bb.l ], [ %i.ey, %.thread676 ]
  br label %.backedge, !llvm.loop !287

.thread676:                                       ; preds = %bb.k
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cs, i64 10
  %i.ev = add i16 %i.eb, 1                        ; 2 uses
  store i16 %i.ev, ptr %i.ed, align 2, !tbaa !92
  %i.ew = add i16 %i.ea, 1
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cs, i64 6
  store i16 %i.ew, ptr %i.ex, align 2, !tbaa !92
  store i16 %i.ev, ptr %i.ee, align 2, !tbaa !92
  store i16 %i.ea, ptr %i.eu, align 2, !tbaa !92
  %i.ey = getelementptr inbounds nuw i8, ptr %i.cs, i64 12 ; 2 uses
  store ptr %i.ey, ptr %i.co, align 8, !tbaa !88
  %exitcond635.not678 = icmp eq i64 %indvars.iv.next632, %wide.trip.count634
  br i1 %exitcond635.not678, label %.lr.ph616, label %.backedge.backedge

.lr.ph616:                                        ; preds = %.thread676
  %i.ez = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 504
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !293
  %i.fc = sext i32 %i.q to i64
  %i.fd = getelementptr inbounds [16 x i8], ptr %i.fb, i64 %i.fc ; 2 uses
  %i.fe = load <2 x i32>, ptr %i.fd, align 4, !tbaa !15
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load <2 x i32>, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !15
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %wide.trip.count639 = zext nneg i32 %2 to i64
  %.pre = load ptr, ptr %i.fg, align 8, !tbaa !86
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph616, %bb.m
  %i.fh = phi ptr [ %.pre, %.lr.ph616 ], [ %i.fv, %bb.m ]
  %indvars.iv636 = phi i64 [ 0, %.lr.ph616 ], [ %indvars.iv.next637, %bb.m ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv636, 4
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx ; 2 uses
  %i.fj = load i64, ptr %i.fi, align 8
  store i64 %i.fj, ptr %i.fh, align 4
  %i.fk = load ptr, ptr %i.fg, align 8, !tbaa !86
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store <2 x i32> %i.fe, ptr %i.fl, align 4
  %i.fm = load ptr, ptr %i.fg, align 8, !tbaa !86 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store i32 %3, ptr %i.fn, align 4, !tbaa !94
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 20
  %i.fq = load i64, ptr %i.fo, align 8
  store i64 %i.fq, ptr %i.fp, align 4
  %i.fr = load ptr, ptr %i.fg, align 8, !tbaa !86
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 28
  store <2 x i32> %i.ff, ptr %i.fs, align 4
  %i.ft = load ptr, ptr %i.fg, align 8, !tbaa !86 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 36
  store i32 %3, ptr %i.fu, align 4, !tbaa !94
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 40 ; 2 uses
  store ptr %i.fv, ptr %i.fg, align 8, !tbaa !86
  %indvars.iv.next637 = add nuw nsw i64 %indvars.iv636, 1 ; 2 uses
  %exitcond640.not = icmp eq i64 %indvars.iv.next637, %wide.trip.count639
  br i1 %exitcond640.not, label %.loopexit604, label %bb.m, !llvm.loop !288

bb.n:                                             ; preds = %.lr.ph618, %bb.n
  %i.fw = phi ptr [ %.pre663, %.lr.ph618 ], [ %i.gr, %bb.n ]
  %indvars.iv641 = phi i64 [ 0, %.lr.ph618 ], [ %indvars.iv.next642, %bb.n ] ; 3 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv641
  %i.fy = load i64, ptr %i.fx, align 4
  store i64 %i.fy, ptr %i.fw, align 4
  %i.fz = load ptr, ptr %i.cr, align 8, !tbaa !86
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store i64 %i.e, ptr %i.ga, align 4
  %i.gb = load ptr, ptr %i.cr, align 8, !tbaa !86 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  store i32 %3, ptr %i.gc, align 4, !tbaa !94
  %.idx674 = shl nuw nsw i64 %indvars.iv641, 4
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx674 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 20
  %i.gf = load i64, ptr %i.gd, align 8
  store i64 %i.gf, ptr %i.ge, align 4
  %i.gg = load ptr, ptr %i.cr, align 8, !tbaa !86
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 28
  store i64 %i.e, ptr %i.gh, align 4
  %i.gi = load ptr, ptr %i.cr, align 8, !tbaa !86 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 36
  store i32 %i.n, ptr %i.gj, align 4, !tbaa !94
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 40
  %i.gm = load i64, ptr %i.gk, align 8
  store i64 %i.gm, ptr %i.gl, align 4
  %i.gn = load ptr, ptr %i.cr, align 8, !tbaa !86
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 48
  store i64 %i.e, ptr %i.go, align 4
  %i.gp = load ptr, ptr %i.cr, align 8, !tbaa !86 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 56
  store i32 %i.n, ptr %i.gq, align 4, !tbaa !94
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 60 ; 2 uses
  store ptr %i.gr, ptr %i.cr, align 8, !tbaa !86
  %indvars.iv.next642 = add nuw nsw i64 %indvars.iv641, 1 ; 2 uses
  %exitcond646.not = icmp eq i64 %indvars.iv.next642, %wide.trip.count645
  br i1 %exitcond646.not, label %.loopexit604, label %bb.n, !llvm.loop !289

bb.o:                                             ; preds = %bb.h
  %i.gs = fsub float %i.p, %i.i
  %i.gt = fmul float %i.gs, 5.000000e-01          ; 4 uses
  %i.gu = fadd float %i.i, %i.gt                  ; 2 uses
  %i.gv = load <2 x float>, ptr %i.ai, align 16, !tbaa !15
  %i.gw = shufflevector <2 x float> %i.gv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gx = load <2 x float>, ptr %1, align 4, !tbaa !15
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
  %foldExtExtBinop686.a = fsub <4 x float> %i.gy, %shift
  %shift696 = shufflevector <4 x float> %i.hc, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %foldExtExtBinop697 = fsub <4 x float> %i.gy, %shift696
  %.sroa.0.0.vec.insert.i547 = shufflevector <4 x float> %foldExtExtBinop686.a, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.hh = shufflevector <4 x float> %foldExtExtBinop697, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %.sroa.0.4.vec.insert.i548 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i547, <2 x float> %i.hh, <2 x i32> <i32 0, i32 3>
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <2 x float> %.sroa.0.4.vec.insert.i548, ptr %i.hi, align 8
  %foldExtExtBinop688.a = fsub <4 x float> %i.gy, %i.hc
  %foldExtExtBinop690.a = fsub <4 x float> %i.gy, %i.hc
  %.sroa.0.0.vec.insert.i551 = shufflevector <4 x float> %foldExtExtBinop688.a, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.hj = shufflevector <4 x float> %foldExtExtBinop690.a, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %.sroa.0.4.vec.insert.i552 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i551, <2 x float> %i.hj, <2 x i32> <i32 0, i32 3>
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store <2 x float> %.sroa.0.4.vec.insert.i552, ptr %i.hk, align 8
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bh
  %i.hm = load <2 x float>, ptr %i.bi, align 8, !tbaa !15
  %i.hn = insertelement <2 x float> poison, float %i.gu, i64 0
  %i.ho = shufflevector <2 x float> %i.hn, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hp = fmul <2 x float> %i.ho, %i.hm
  %i.hq = load <2 x float>, ptr %i.hl, align 4, !tbaa !15 ; 4 uses
  %i.hr = fadd <2 x float> %i.hp, %i.hq
  %i.hs = shl nuw nsw i32 %i.f, 2
  %i.ht = zext nneg i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ht ; 4 uses
  store <2 x float> %i.hr, ptr %i.hu, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.hx = load <2 x float>, ptr %i.bi, align 8, !tbaa !15 ; 2 uses
  %i.hy = insertelement <2 x float> poison, float %i.gt, i64 0
  %i.hz = shufflevector <2 x float> %i.hy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ia = fmul <2 x float> %i.hz, %i.hx           ; 2 uses
  %i.ib = fadd <2 x float> %i.hq, %i.ia
  store <2 x float> %i.ib, ptr %i.hv, align 8
  %i.ic = fsub <2 x float> %i.hq, %i.ia
  store <2 x float> %i.ic, ptr %i.hw, align 8
  %i.id = fmul <2 x float> %i.ho, %i.hx
  %i.ie = fsub <2 x float> %i.hq, %i.id
  %i.if = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  store <2 x float> %i.ie, ptr %i.if, align 8
  br label %.lr.ph622

.lr.ph622:                                        ; preds = %bb.o, %.thread598
  %i.ig = phi float [ %i.bl, %.thread598 ], [ %i.gt, %bb.o ] ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !57 ; 2 uses
  %i.ij = fadd float %i.i, %i.ig
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.promoted = load ptr, ptr %i.ik, align 8, !tbaa !88
  %wide.trip.count650 = zext nneg i32 %i.g to i64
  %i.il = insertelement <4 x float> poison, float %i.ij, i64 0
  %i.im = insertelement <4 x float> %i.il, float %i.ig, i64 1
  %i.in = shufflevector <4 x float> %i.im, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  br label %bb.p

.lr.ph624:                                        ; preds = %bb.r
  store ptr %i.ku, ptr %i.ik, align 8, !tbaa !88
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 10 uses
  %wide.trip.count656 = zext nneg i32 %2 to i64
  %.pre664 = load ptr, ptr %i.io, align 8, !tbaa !86
  br label %bb.s

bb.p:                                             ; preds = %.lr.ph622, %bb.r
  %indvars.iv647 = phi i64 [ 0, %.lr.ph622 ], [ %indvars.iv.next648, %bb.r ] ; 2 uses
  %i.ip = phi ptr [ %.promoted, %.lr.ph622 ], [ %i.ku, %bb.r ] ; 9 uses
  %.0423619 = phi i32 [ %i.ii, %.lr.ph622 ], [ %spec.select, %bb.r ] ; 3 uses
  %indvars.iv.next648 = add nuw nsw i64 %indvars.iv647, 1 ; 4 uses
  %i.iq = icmp eq i64 %indvars.iv.next648, %i.aj  ; 2 uses
  %i.ir = trunc nuw nsw i64 %indvars.iv.next648 to i32
  %i.is = select i1 %i.iq, i32 0, i32 %i.ir       ; 2 uses
  %i.it = add i32 %.0423619, 4
  %spec.select = select i1 %i.iq, i32 %i.ii, i32 %i.it ; 3 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv647
  %i.iv = zext nneg i32 %i.is to i64              ; 2 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.iv
  %i.ix = load <2 x float>, ptr %i.iu, align 8, !tbaa !15
  %i.iy = load <2 x float>, ptr %i.iw, align 8, !tbaa !15
  %i.iz = fadd <2 x float> %i.ix, %i.iy
  %i.ja = fmul <2 x float> %i.iz, splat (float 5.000000e-01) ; 5 uses
  %foldExtExtBinop692.a = fmul <2 x float> %i.ja, %i.ja
  %i.jb = extractelement <2 x float> %foldExtExtBinop692.a, i64 1
  %i.jc = extractelement <2 x float> %i.ja, i64 0 ; 2 uses
  %i.jd = tail call float @llvm.fmuladd.f32(float %i.jc, float %i.jc, float %i.jb) ; 2 uses
  %i.je = fcmp ogt float %i.jd, f0x358637BD
  br i1 %i.je, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.jf = fdiv float 1.000000e+00, %i.jd          ; 2 uses
  %i.jg = fcmp ogt float %i.jf, 1.000000e+02
  %spec.store.select6 = select i1 %i.jg, float 1.000000e+02, float %i.jf
  %i.jh = insertelement <2 x float> poison, float %spec.store.select6, i64 0
  %i.ji = shufflevector <2 x float> %i.jh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jj = fmul <2 x float> %i.ja, %i.ji
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.jk = phi <2 x float> [ %i.jj, %bb.q ], [ %i.ja, %bb.p ]
  %i.jl = shufflevector <2 x float> %i.jk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.jm = fmul <4 x float> %i.in, %i.jl           ; 2 uses
  %i.jn = shl nsw i32 %i.is, 2
  %i.jo = zext nneg i32 %i.jn to i64
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.jo ; 2 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.iv
  %i.jr = load <2 x float>, ptr %i.jq, align 4, !tbaa !15
  %i.js = shufflevector <2 x float> %i.jr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.jt = fadd <4 x float> %i.jm, %i.js
  store <4 x float> %i.jt, ptr %i.jp, align 8, !tbaa !15
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %i.jv = fsub <4 x float> %i.js, %i.jm
  %i.jw = shufflevector <4 x float> %i.jv, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x float> %i.jw, ptr %i.ju, align 8, !tbaa !15
  %i.jx = trunc i32 %spec.select to i16
  %i.jy = insertelement <2 x i16> poison, i16 %i.jx, i64 0
  %i.jz = trunc i32 %.0423619 to i16
  %i.ka = insertelement <2 x i16> %i.jy, i16 %i.jz, i64 1
  %i.kb = shufflevector <2 x i16> %i.ka, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.kc = trunc i32 %spec.select to i16           ; 3 uses
  %i.kd = trunc i32 %.0423619 to i16              ; 3 uses
  %i.ke = add <4 x i16> %i.kb, <i16 1, i16 1, i16 2, i16 2> ; 3 uses
  %i.kf = shufflevector <4 x i16> %i.ke, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 2, i32 3, i32 0, i32 0, i32 1>
  %i.kg = add i16 %i.kc, 1
  store <8 x i16> %i.kf, ptr %i.ip, align 2, !tbaa !92
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  store i16 %i.kd, ptr %i.kh, align 2, !tbaa !92
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ip, i64 18
  store i16 %i.kd, ptr %i.ki, align 2, !tbaa !92
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ip, i64 20
  store i16 %i.kc, ptr %i.kj, align 2, !tbaa !92
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ip, i64 22
  store i16 %i.kg, ptr %i.kk, align 2, !tbaa !92
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ip, i64 24
  %i.km = extractelement <4 x i16> %i.ke, i64 3   ; 2 uses
  store i16 %i.km, ptr %i.kl, align 2, !tbaa !92
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ip, i64 26
  %i.ko = shufflevector <4 x i16> %i.ke, <4 x i16> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.kp = insertelement <4 x i16> %i.ko, i16 %i.kd, i64 1
  %i.kq = insertelement <4 x i16> %i.kp, i16 %i.kc, i64 3
  %i.kr = add <4 x i16> %i.kq, <i16 0, i16 3, i16 poison, i16 3>
  %i.ks = shufflevector <4 x i16> %i.kr, <4 x i16> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  store <4 x i16> %i.ks, ptr %i.kn, align 2, !tbaa !92
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ip, i64 34
  store i16 %i.km, ptr %i.kt, align 2, !tbaa !92
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ip, i64 36 ; 2 uses
  %exitcond651.not = icmp eq i64 %indvars.iv.next648, %wide.trip.count650
  br i1 %exitcond651.not, label %.lr.ph624, label %bb.p, !llvm.loop !290

bb.s:                                             ; preds = %.lr.ph624, %bb.s
  %i.kv = phi ptr [ %.pre664, %.lr.ph624 ], [ %i.lx, %bb.s ]
  %indvars.iv652 = phi i64 [ 0, %.lr.ph624 ], [ %indvars.iv.next653, %bb.s ] ; 2 uses
  %.idx675 = shl nuw nsw i64 %indvars.iv652, 5
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx675 ; 4 uses
  %i.kx = load i64, ptr %i.kw, align 8
  store i64 %i.kx, ptr %i.kv, align 4
  %i.ky = load ptr, ptr %i.io, align 8, !tbaa !86
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  store i64 %i.e, ptr %i.kz, align 4
  %i.la = load ptr, ptr %i.io, align 8, !tbaa !86 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  store i32 %i.n, ptr %i.lb, align 4, !tbaa !94
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.ld = getelementptr inbounds nuw i8, ptr %i.la, i64 20
  %i.le = load i64, ptr %i.lc, align 8
  store i64 %i.le, ptr %i.ld, align 4
  %i.lf = load ptr, ptr %i.io, align 8, !tbaa !86
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 28
  store i64 %i.e, ptr %i.lg, align 4
  %i.lh = load ptr, ptr %i.io, align 8, !tbaa !86 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 36
  store i32 %3, ptr %i.li, align 4, !tbaa !94
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kw, i64 16
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 40
  %i.ll = load i64, ptr %i.lj, align 8
  store i64 %i.ll, ptr %i.lk, align 4
  %i.lm = load ptr, ptr %i.io, align 8, !tbaa !86
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 48
  store i64 %i.e, ptr %i.ln, align 4
  %i.lo = load ptr, ptr %i.io, align 8, !tbaa !86 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 56
  store i32 %3, ptr %i.lp, align 4, !tbaa !94
  %i.lq = getelementptr inbounds nuw i8, ptr %i.kw, i64 24
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lo, i64 60
  %i.ls = load i64, ptr %i.lq, align 8
  store i64 %i.ls, ptr %i.lr, align 4
  %i.lt = load ptr, ptr %i.io, align 8, !tbaa !86
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 68
  store i64 %i.e, ptr %i.lu, align 4
  %i.lv = load ptr, ptr %i.io, align 8, !tbaa !86 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 76
  store i32 %i.n, ptr %i.lw, align 4, !tbaa !94
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lv, i64 80 ; 2 uses
  store ptr %i.lx, ptr %i.io, align 8, !tbaa !86
  %indvars.iv.next653 = add nuw nsw i64 %indvars.iv652, 1 ; 2 uses
  %exitcond657.not = icmp eq i64 %indvars.iv.next653, %wide.trip.count656
  br i1 %exitcond657.not, label %.loopexit604, label %bb.s, !llvm.loop !291

.loopexit604:                                     ; preds = %bb.m, %bb.n, %bb.s
  %i.ly = and i32 %i.ae, 65535
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !57
  %i.mb = add i32 %i.ma, %i.ly
  store i32 %i.mb, ptr %i.lz, align 4, !tbaa !57
  br label %.loopexit

.lr.ph627:                                        ; preds = %bb.b
  %i.mc = mul nsw i32 %i.g, 6
  %i.md = shl nsw i32 %i.g, 2
  tail call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(196) %0, i32 noundef %i.mc, i32 noundef %i.md)
  %i.me = fmul float %5, 5.000000e-01
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.mi = zext nneg i32 %2 to i64
  %wide.trip.count661 = zext nneg i32 %i.g to i64
  %i.mj = insertelement <2 x float> poison, float %i.me, i64 0
  %i.mk = shufflevector <2 x float> %i.mj, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph627, %bb.v
  %indvars.iv658 = phi i64 [ 0, %.lr.ph627 ], [ %indvars.iv.next659, %bb.v ] ; 2 uses
  %indvars.iv.next659 = add nuw nsw i64 %indvars.iv658, 1 ; 4 uses
  %i.ml = icmp eq i64 %indvars.iv.next659, %i.mi
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv658 ; 3 uses
  %i.mn = select i1 %i.ml, i64 0, i64 %indvars.iv.next659
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.mn ; 4 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 4 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mm, i64 4
  %i.mr = load <2 x float>, ptr %i.mo, align 4, !tbaa !15
  %i.ms = load <2 x float>, ptr %i.mm, align 4, !tbaa !15 ; 3 uses
  %i.mt = fsub <2 x float> %i.mr, %i.ms           ; 5 uses
  %foldExtExtBinop694 = fmul <2 x float> %i.mt, %i.mt
  %i.mu = extractelement <2 x float> %foldExtExtBinop694, i64 1
  %i.mv = extractelement <2 x float> %i.mt, i64 0 ; 2 uses
  %i.mw = tail call float @llvm.fmuladd.f32(float %i.mv, float %i.mv, float %i.mu) ; 2 uses
  %i.mx = fcmp ogt float %i.mw, 0.000000e+00
  br i1 %i.mx, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.my = insertelement <4 x float> poison, float %i.mw, i64 0
  %i.mz = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.my)
  %i.na = shufflevector <4 x float> %i.mz, <4 x float> poison, <2 x i32> zeroinitializer
  %i.nb = fmul <2 x float> %i.mt, %i.na
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.nc = phi <2 x float> [ %i.nb, %bb.u ], [ %i.mt, %bb.t ]
  %i.nd = shufflevector <2 x float> %i.nc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ne = fmul <2 x float> %i.mk, %i.nd           ; 4 uses
  %i.nf = load ptr, ptr %i.mf, align 8, !tbaa !86 ; 2 uses
  %i.ng = fadd <2 x float> %i.ms, %i.ne
  %i.nh = fsub <2 x float> %i.ms, %i.ne
  %i.ni = shufflevector <2 x float> %i.ng, <2 x float> %i.nh, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.ni, ptr %i.nf, align 4, !tbaa !15
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  store i64 %i.e, ptr %i.nj, align 4
  %i.nk = load ptr, ptr %i.mf, align 8, !tbaa !86 ; 4 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 16
  store i32 %3, ptr %i.nl, align 4, !tbaa !94
  %i.nm = load float, ptr %i.mo, align 4, !tbaa !89
  %i.nn = extractelement <2 x float> %i.ne, i64 0 ; 3 uses
  %i.no = fadd float %i.nn, %i.nm
  %i.np = getelementptr inbounds nuw i8, ptr %i.nk, i64 20
  store float %i.no, ptr %i.np, align 4, !tbaa !95
  %i.nq = load float, ptr %i.mp, align 4, !tbaa !90
  %i.nr = extractelement <2 x float> %i.ne, i64 1 ; 3 uses
  %i.ns = fsub float %i.nq, %i.nr
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nk, i64 24
  store float %i.ns, ptr %i.nt, align 4, !tbaa !96
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nk, i64 28
  store i64 %i.e, ptr %i.nu, align 4
  %i.nv = load ptr, ptr %i.mf, align 8, !tbaa !86 ; 4 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 36
  store i32 %3, ptr %i.nw, align 4, !tbaa !94
  %i.nx = load float, ptr %i.mo, align 4, !tbaa !89
  %i.ny = fsub float %i.nx, %i.nn
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nv, i64 40
  store float %i.ny, ptr %i.nz, align 4, !tbaa !95
  %i.oa = load float, ptr %i.mp, align 4, !tbaa !90
  %i.ob = fadd float %i.nr, %i.oa
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nv, i64 44
  store float %i.ob, ptr %i.oc, align 4, !tbaa !96
  %i.od = getelementptr inbounds nuw i8, ptr %i.nv, i64 48
  store i64 %i.e, ptr %i.od, align 4
  %i.oe = load ptr, ptr %i.mf, align 8, !tbaa !86 ; 4 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 56
  store i32 %3, ptr %i.of, align 4, !tbaa !94
  %i.og = load float, ptr %i.mm, align 4, !tbaa !89
  %i.oh = fsub float %i.og, %i.nn
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oe, i64 60
  store float %i.oh, ptr %i.oi, align 4, !tbaa !95
  %i.oj = load float, ptr %i.mq, align 4, !tbaa !90
  %i.ok = fadd float %i.nr, %i.oj
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oe, i64 64
  store float %i.ok, ptr %i.ol, align 4, !tbaa !96
  %i.om = getelementptr inbounds nuw i8, ptr %i.oe, i64 68
  store i64 %i.e, ptr %i.om, align 4
  %i.on = load ptr, ptr %i.mf, align 8, !tbaa !86 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 76
  store i32 %3, ptr %i.oo, align 4, !tbaa !94
  %i.op = getelementptr inbounds nuw i8, ptr %i.on, i64 80
  store ptr %i.op, ptr %i.mf, align 8, !tbaa !86
  %i.oq = load i32, ptr %i.mg, align 4, !tbaa !57 ; 2 uses
  %i.or = trunc i32 %i.oq to i16                  ; 5 uses
  %i.os = load ptr, ptr %i.mh, align 8, !tbaa !88 ; 7 uses
  store i16 %i.or, ptr %i.os, align 2, !tbaa !92
  %i.ot = add i16 %i.or, 1
  %i.ou = getelementptr inbounds nuw i8, ptr %i.os, i64 2
  store i16 %i.ot, ptr %i.ou, align 2, !tbaa !92
  %i.ov = add i16 %i.or, 2                        ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.os, i64 4
  store i16 %i.ov, ptr %i.ow, align 2, !tbaa !92
  %i.ox = getelementptr inbounds nuw i8, ptr %i.os, i64 6
  store i16 %i.or, ptr %i.ox, align 2, !tbaa !92
  %i.oy = getelementptr inbounds nuw i8, ptr %i.os, i64 8
  store i16 %i.ov, ptr %i.oy, align 2, !tbaa !92
  %i.oz = add i16 %i.or, 3
  %i.pa = getelementptr inbounds nuw i8, ptr %i.os, i64 10
  store i16 %i.oz, ptr %i.pa, align 2, !tbaa !92
  %i.pb = getelementptr inbounds nuw i8, ptr %i.os, i64 12
  store ptr %i.pb, ptr %i.mh, align 8, !tbaa !88
  %i.pc = add i32 %i.oq, 4
  store i32 %i.pc, ptr %i.mg, align 4, !tbaa !57
  %exitcond662.not = icmp eq i64 %indvars.iv.next659, %wide.trip.count661
  br i1 %exitcond662.not, label %.loopexit, label %bb.t, !llvm.loop !292

.loopexit:                                        ; preds = %bb.v, %.loopexit604, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(196) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = icmp slt i32 %2, 3
  br i1 %i.a, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.d = load i64, ptr %i.c, align 8              ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i32, ptr %i.e, align 8, !tbaa !56
  %i.g = and i32 %i.f, 4
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.lr.ph141, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.i = load float, ptr %i.h, align 8, !tbaa !69
  %i.j = and i32 %3, 16777215
  %reass.mul = mul i32 %2, 9
  %i.k = add i32 %reass.mul, -6
  %i.l = shl nuw nsw i32 %2, 1                    ; 2 uses
  tail call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(196) %0, i32 noundef %i.k, i32 noundef %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !57   ; 8 uses
  %i.o = add i32 %i.n, 1                          ; 2 uses
  %i.p = trunc i32 %i.n to i16                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.r = add i32 %i.n, 65534                      ; 3 uses
  %.promoted = load ptr, ptr %i.q, align 8, !tbaa !88 ; 2 uses
  %xtraiter = and i32 %2, 1
  %i.s = icmp eq i32 %2, 3
  br i1 %i.s, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %i.t = and i32 %2, 2147483646
  %i.u = add nsw i32 %i.t, -4
  br label %bb.c

.lr.ph134.preheader.unr-lcssa:                    ; preds = %bb.c
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph134.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph134.preheader.unr-lcssa, %.lr.ph
  %.epil.init = phi ptr [ %.promoted, %.lr.ph ], [ %i.ba, %.lr.ph134.preheader.unr-lcssa ] ; 4 uses
  %.0123130.epil.init = phi i32 [ 2, %.lr.ph ], [ %i.bb, %.lr.ph134.preheader.unr-lcssa ]
  %lcmp.mod185 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod185)
  store i16 %i.p, ptr %.epil.init, align 2, !tbaa !92
  %i.v = shl nuw i32 %.0123130.epil.init, 1       ; 2 uses
  %i.w = add i32 %i.r, %i.v
  %i.x = trunc i32 %i.w to i16
  %i.y = getelementptr inbounds nuw i8, ptr %.epil.init, i64 2
  store i16 %i.x, ptr %i.y, align 2, !tbaa !92
  %i.z = add i32 %i.v, %i.n
  %i.aa = trunc i32 %i.z to i16
  %i.ab = getelementptr inbounds nuw i8, ptr %.epil.init, i64 4
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !92
  %i.ac = getelementptr inbounds nuw i8, ptr %.epil.init, i64 6
  br label %.lr.ph134.preheader

.lr.ph134.preheader:                              ; preds = %.lr.ph134.preheader.unr-lcssa, %.epil.preheader
  %.lcssa183 = phi ptr [ %i.ba, %.lr.ph134.preheader.unr-lcssa ], [ %i.ac, %.epil.preheader ]
  store ptr %.lcssa183, ptr %i.q, align 8, !tbaa !88
  %i.ad = zext nneg i32 %2 to i64
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = alloca i8, i64 %i.ae, align 16          ; 3 uses
  %i.ag = add nsw i32 %2, -1                      ; 4 uses
  %wide.trip.count = zext nneg i32 %2 to i64
  %.phi.trans.insert = zext nneg i32 %i.ag to i64
  %.phi.trans.insert164 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.phi.trans.insert
  %i.ah = load <2 x float>, ptr %.phi.trans.insert164, align 4, !tbaa !15
  %i.ai = zext nneg i32 %i.ag to i64
  br label %.lr.ph134

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %i.aj = phi ptr [ %.promoted, %.lr.ph.new ], [ %i.ba, %bb.c ] ; 7 uses
  %.0123130 = phi i32 [ 2, %.lr.ph.new ], [ %i.bb, %bb.c ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ] ; 2 uses
  store i16 %i.p, ptr %i.aj, align 2, !tbaa !92
  %i.ak = shl nuw i32 %.0123130, 1                ; 2 uses
  %i.al = add i32 %i.r, %i.ak
  %i.am = trunc i32 %i.al to i16
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store i16 %i.am, ptr %i.an, align 2, !tbaa !92
  %i.ao = add i32 %i.ak, %i.n
  %i.ap = trunc i32 %i.ao to i16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i16 %i.ap, ptr %i.aq, align 2, !tbaa !92
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 6
  store i16 %i.p, ptr %i.ar, align 2, !tbaa !92
  %i.as = shl nuw i32 %.0123130, 1
  %i.at = or disjoint i32 %i.as, 2                ; 2 uses
  %i.au = add i32 %i.r, %i.at
  %i.av = trunc i32 %i.au to i16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i16 %i.av, ptr %i.aw, align 2, !tbaa !92
  %i.ax = add i32 %i.at, %i.n
  %i.ay = trunc i32 %i.ax to i16
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 10
  store i16 %i.ay, ptr %i.az, align 2, !tbaa !92
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aj, i64 12 ; 3 uses
  %i.bb = add nuw nsw i32 %.0123130, 2            ; 2 uses
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp eq i32 %niter, %i.u
  br i1 %niter.ncmp.1, label %.lr.ph134.preheader.unr-lcssa, label %bb.c, !llvm.loop !294

.lr.ph137:                                        ; preds = %bb.e
  %i.bc = fmul float %i.i, 5.000000e-01
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %wide.trip.count154 = zext nneg i32 %2 to i64
  %.phi.trans.insert167 = zext nneg i32 %i.ag to i64
  %.phi.trans.insert168 = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.phi.trans.insert167
  %i.bf = load <2 x float>, ptr %.phi.trans.insert168, align 8, !tbaa !15
  %i.bg = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.f

.lr.ph134:                                        ; preds = %.lr.ph134.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph134.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.0122131 = phi i64 [ %i.ai, %.lr.ph134.preheader ], [ %indvars.iv, %bb.e ]
  %i.bi = phi <2 x float> [ %i.ah, %.lr.ph134.preheader ], [ %i.bk, %bb.e ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.bk = load <2 x float>, ptr %i.bj, align 4, !tbaa !15 ; 2 uses
  %i.bl = fsub <2 x float> %i.bk, %i.bi           ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %i.bl, %i.bl
  %i.bm = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bn = extractelement <2 x float> %i.bl, i64 0 ; 2 uses
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.bn, float %i.bm) ; 2 uses
  %i.bp = fcmp ogt float %i.bo, 0.000000e+00
  br i1 %i.bp, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph134
  %i.bq = insertelement <4 x float> poison, float %i.bo, i64 0
  %i.br = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.bq)
  %i.bs = shufflevector <4 x float> %i.br, <4 x float> poison, <2 x i32> zeroinitializer
  %i.bt = fmul <2 x float> %i.bl, %i.bs
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph134
  %i.bu = phi <2 x float> [ %i.bt, %bb.d ], [ %i.bl, %.lr.ph134 ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.0122131 ; 2 uses
  %i.bw = extractelement <2 x float> %i.bu, i64 1
  store float %i.bw, ptr %i.bv, align 8, !tbaa !89
  %i.bx = extractelement <2 x float> %i.bu, i64 0
  %i.by = fneg float %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store float %i.by, ptr %i.bz, align 4, !tbaa !90
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond149.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond149.not, label %.lr.ph137, label %.lr.ph134, !llvm.loop !295

._crit_edge138:                                   ; preds = %bb.h
  %.pre172 = load i32, ptr %i.m, align 4, !tbaa !57
  %i.ca = and i32 %i.l, 65534
  %i.cb = add i32 %.pre172, %i.ca
  store i32 %i.cb, ptr %i.m, align 4, !tbaa !57
  br label %bb.l

bb.f:                                             ; preds = %.lr.ph137, %bb.h
  %indvars.iv150 = phi i64 [ 0, %.lr.ph137 ], [ %indvars.iv.next151, %bb.h ] ; 5 uses
  %.0118135 = phi i32 [ %i.ag, %.lr.ph137 ], [ %i.dx, %bb.h ]
  %i.cc = phi <2 x float> [ %i.bf, %.lr.ph137 ], [ %i.ce, %bb.h ]
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv150
  %i.ce = load <2 x float>, ptr %i.cd, align 8, !tbaa !15 ; 2 uses
  %i.cf = fadd <2 x float> %i.cc, %i.ce
  %i.cg = fmul <2 x float> %i.cf, splat (float 5.000000e-01) ; 5 uses
  %foldExtExtBinop181 = fmul <2 x float> %i.cg, %i.cg
  %i.ch = extractelement <2 x float> %foldExtExtBinop181, i64 1
  %i.ci = extractelement <2 x float> %i.cg, i64 0 ; 2 uses
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.ci, float %i.ch) ; 2 uses
  %i.ck = fcmp ogt float %i.cj, f0x358637BD
  br i1 %i.ck, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cl = fdiv float 1.000000e+00, %i.cj          ; 2 uses
  %i.cm = fcmp ogt float %i.cl, 1.000000e+02
  %spec.store.select = select i1 %i.cm, float 1.000000e+02, float %i.cl
  %i.cn = insertelement <2 x float> poison, float %spec.store.select, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = fmul <2 x float> %i.cg, %i.co
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cq = phi <2 x float> [ %i.cp, %bb.g ], [ %i.cg, %bb.f ]
  %i.cr = fmul <2 x float> %i.bh, %i.cq           ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv150 ; 2 uses
  %i.ct = load ptr, ptr %i.bd, align 8, !tbaa !86 ; 2 uses
  %i.cu = load <2 x float>, ptr %i.cs, align 4, !tbaa !15
  %i.cv = fsub <2 x float> %i.cu, %i.cr
  store <2 x float> %i.cv, ptr %i.ct, align 4, !tbaa !15
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i64 %i.d, ptr %i.cw, align 4
  %i.cx = load ptr, ptr %i.bd, align 8, !tbaa !86 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store i32 %3, ptr %i.cy, align 4, !tbaa !94
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 20
  %i.da = load <2 x float>, ptr %i.cs, align 4, !tbaa !15
  %i.db = fadd <2 x float> %i.cr, %i.da
  store <2 x float> %i.db, ptr %i.cz, align 4, !tbaa !15
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 28
  store i64 %i.d, ptr %i.dc, align 4
  %i.dd = load ptr, ptr %i.bd, align 8, !tbaa !86 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 36
  store i32 %i.j, ptr %i.de, align 4, !tbaa !94
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  store ptr %i.df, ptr %i.bd, align 8, !tbaa !86
  %indvars.iv150.tr = trunc nuw i64 %indvars.iv150 to i32
  %i.dg = shl nuw i32 %indvars.iv150.tr, 1        ; 2 uses
  %i.dh = add i32 %i.dg, %i.n
  %i.di = trunc i32 %i.dh to i16                  ; 2 uses
  %i.dj = load ptr, ptr %i.be, align 8, !tbaa !88 ; 7 uses
  store i16 %i.di, ptr %i.dj, align 2, !tbaa !92
  %i.dk = shl i32 %.0118135, 1                    ; 2 uses
  %i.dl = add i32 %i.dk, %i.n
  %i.dm = trunc i32 %i.dl to i16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 2
  store i16 %i.dm, ptr %i.dn, align 2, !tbaa !92
  %i.do = add i32 %i.dk, %i.o
  %i.dp = trunc i32 %i.do to i16                  ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  store i16 %i.dp, ptr %i.dq, align 2, !tbaa !92
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dj, i64 6
  store i16 %i.dp, ptr %i.dr, align 2, !tbaa !92
  %i.ds = add i32 %i.dg, %i.o
  %i.dt = trunc i32 %i.ds to i16
  %i.du = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store i16 %i.dt, ptr %i.du, align 2, !tbaa !92
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dj, i64 10
  store i16 %i.di, ptr %i.dv, align 2, !tbaa !92
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  store ptr %i.dw, ptr %i.be, align 8, !tbaa !88
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %i.dx = trunc nuw nsw i64 %indvars.iv150 to i32
  %exitcond155.not = icmp eq i64 %indvars.iv.next151, %wide.trip.count154
  br i1 %exitcond155.not, label %._crit_edge138, label %bb.f, !llvm.loop !296

.lr.ph141:                                        ; preds = %bb.b
  %i.dy = mul i32 %2, 3
  %i.dz = add i32 %i.dy, -6
  tail call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(196) %0, i32 noundef %i.dz, i32 noundef %2)
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 10 uses
  %wide.trip.count159 = zext nneg i32 %2 to i64   ; 2 uses
  %xtraiter187 = and i64 %wide.trip.count159, 1
  %.pre173 = load ptr, ptr %i.ea, align 8, !tbaa !86
  %unroll_iter192 = and i64 %wide.trip.count159, 2147483646
  br label %bb.i

.lr.ph143.unr-lcssa:                              ; preds = %bb.i
  %lcmp.mod190.not = icmp eq i64 %xtraiter187, 0
  br i1 %lcmp.mod190.not, label %.lr.ph143, label %.epil.preheader186

.epil.preheader186:                               ; preds = %.lr.ph143.unr-lcssa
  %lcmp.mod191 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod191)
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next157.1
  %i.ec = load i64, ptr %i.eb, align 4
  store i64 %i.ec, ptr %i.fe, align 4
  %i.ed = load ptr, ptr %i.ea, align 8, !tbaa !86
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store i64 %i.d, ptr %i.ee, align 4
  %i.ef = load ptr, ptr %i.ea, align 8, !tbaa !86 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store i32 %3, ptr %i.eg, align 4, !tbaa !94
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 20
  store ptr %i.eh, ptr %i.ea, align 8, !tbaa !86
  br label %.lr.ph143

.lr.ph143:                                        ; preds = %.lr.ph143.unr-lcssa, %.epil.preheader186
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !57 ; 7 uses
  %i.ek = trunc i32 %i.ej to i16                  ; 5 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.promoted145 = load ptr, ptr %i.el, align 8, !tbaa !88 ; 2 uses
  %i.em = add nsw i32 %2, -2                      ; 2 uses
  %i.en = add nsw i32 %2, -3
  %xtraiter195 = and i32 %i.em, 3                 ; 3 uses
  %i.eo = icmp ult i32 %i.en, 3
  br i1 %i.eo, label %.epil.preheader194, label %.lr.ph143.new

.lr.ph143.new:                                    ; preds = %.lr.ph143
  %unroll_iter201 = and i32 %i.em, -4
  %invariant.op = add i32 2, %i.ej
  %invariant.op209 = add i32 3, %i.ej
  br label %bb.k

bb.i:                                             ; preds = %bb.i, %.lr.ph141
  %i.ep = phi ptr [ %.pre173, %.lr.ph141 ], [ %i.fe, %bb.i ]
  %indvars.iv156 = phi i64 [ 0, %.lr.ph141 ], [ %indvars.iv.next157.1, %bb.i ] ; 3 uses
  %niter193 = phi i64 [ 0, %.lr.ph141 ], [ %niter193.next.1, %bb.i ]
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv156
  %i.er = load i64, ptr %i.eq, align 4
  store i64 %i.er, ptr %i.ep, align 4
  %i.es = load ptr, ptr %i.ea, align 8, !tbaa !86
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store i64 %i.d, ptr %i.et, align 4
  %i.eu = load ptr, ptr %i.ea, align 8, !tbaa !86 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store i32 %3, ptr %i.ev, align 4, !tbaa !94
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 20 ; 2 uses
  store ptr %i.ew, ptr %i.ea, align 8, !tbaa !86
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv156
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load i64, ptr %i.ey, align 4
  store i64 %i.ez, ptr %i.ew, align 4
  %i.fa = load ptr, ptr %i.ea, align 8, !tbaa !86
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store i64 %i.d, ptr %i.fb, align 4
  %i.fc = load ptr, ptr %i.ea, align 8, !tbaa !86 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store i32 %3, ptr %i.fd, align 4, !tbaa !94
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 20 ; 3 uses
  store ptr %i.fe, ptr %i.ea, align 8, !tbaa !86
  %indvars.iv.next157.1 = add nuw nsw i64 %indvars.iv156, 2 ; 2 uses
  %niter193.next.1 = add nuw nsw i64 %niter193, 2 ; 2 uses
  %niter193.ncmp.1 = icmp eq i64 %niter193.next.1, %unroll_iter192
  br i1 %niter193.ncmp.1, label %.lr.ph143.unr-lcssa, label %bb.i, !llvm.loop !297

.unr-lcssa:                                       ; preds = %bb.k
  %lcmp.mod198.not = icmp eq i32 %xtraiter195, 0
  br i1 %lcmp.mod198.not, label %.epilog-lcssa, label %.epil.preheader194

.epil.preheader194:                               ; preds = %.unr-lcssa, %.lr.ph143
  %.epil.init197 = phi ptr [ %.promoted145, %.lr.ph143 ], [ %i.gn, %.unr-lcssa ]
  %.0142.epil.init = phi i32 [ 2, %.lr.ph143 ], [ %i.go, %.unr-lcssa ]
  %lcmp.mod200 = icmp ne i32 %xtraiter195, 0
  tail call void @llvm.assume(i1 %lcmp.mod200)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader194
  %i.ff = phi ptr [ %.epil.init197, %.epil.preheader194 ], [ %i.fl, %bb.j ] ; 4 uses
  %.0142.epil = phi i32 [ %.0142.epil.init, %.epil.preheader194 ], [ %i.fm, %bb.j ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader194 ], [ %epil.iter.next, %bb.j ]
  store i16 %i.ek, ptr %i.ff, align 2, !tbaa !92
  %i.fg = add i32 %i.ej, %.0142.epil
  %i.fh = trunc i32 %i.fg to i16                  ; 2 uses
  %i.fi = add i16 %i.fh, -1
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 2
  store i16 %i.fi, ptr %i.fj, align 2, !tbaa !92
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  store i16 %i.fh, ptr %i.fk, align 2, !tbaa !92
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ff, i64 6 ; 2 uses
  %i.fm = add nuw nsw i32 %.0142.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter195
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.j, !llvm.loop !298

.epilog-lcssa:                                    ; preds = %bb.j, %.unr-lcssa
  %.lcssa = phi ptr [ %i.gn, %.unr-lcssa ], [ %i.fl, %bb.j ]
  store ptr %.lcssa, ptr %i.el, align 8, !tbaa !88
  %i.fn = and i32 %2, 65535
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.fp = add i32 %i.ej, %i.fn
  store i32 %i.fp, ptr %i.fo, align 4, !tbaa !57
  br label %bb.l

bb.k:                                             ; preds = %bb.k, %.lr.ph143.new
  %i.fq = phi ptr [ %.promoted145, %.lr.ph143.new ], [ %i.gn, %bb.k ] ; 13 uses
  %.0142 = phi i32 [ 2, %.lr.ph143.new ], [ %i.go, %bb.k ] ; 5 uses
  %niter202 = phi i32 [ 0, %.lr.ph143.new ], [ %niter202.next.3, %bb.k ]
  store i16 %i.ek, ptr %i.fq, align 2, !tbaa !92
  %i.fr = add i32 %i.ej, %.0142
  %i.fs = trunc i32 %i.fr to i16                  ; 2 uses
  %i.ft = add i16 %i.fs, -1
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 2
  store i16 %i.ft, ptr %i.fu, align 2, !tbaa !92
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  store i16 %i.fs, ptr %i.fv, align 2, !tbaa !92
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fq, i64 6
  %i.fx = or disjoint i32 %.0142, 1
  store i16 %i.ek, ptr %i.fw, align 2, !tbaa !92
  %i.fy = add i32 %i.ej, %i.fx
  %i.fz = trunc i32 %i.fy to i16                  ; 2 uses
  %i.ga = add i16 %i.fz, -1
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store i16 %i.ga, ptr %i.gb, align 2, !tbaa !92
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fq, i64 10
  store i16 %i.fz, ptr %i.gc, align 2, !tbaa !92
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  store i16 %i.ek, ptr %i.gd, align 2, !tbaa !92
  %.reass = add i32 %.0142, %invariant.op
  %i.ge = trunc i32 %.reass to i16                ; 2 uses
  %i.gf = add i16 %i.ge, -1
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fq, i64 14
  store i16 %i.gf, ptr %i.gg, align 2, !tbaa !92
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store i16 %i.ge, ptr %i.gh, align 2, !tbaa !92
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fq, i64 18
  store i16 %i.ek, ptr %i.gi, align 2, !tbaa !92
  %.reass210 = add i32 %.0142, %invariant.op209
  %i.gj = trunc i32 %.reass210 to i16             ; 2 uses
  %i.gk = add i16 %i.gj, -1
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fq, i64 20
  store i16 %i.gk, ptr %i.gl, align 2, !tbaa !92
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fq, i64 22
  store i16 %i.gj, ptr %i.gm, align 2, !tbaa !92
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fq, i64 24 ; 3 uses
  %i.go = add nuw nsw i32 %.0142, 4               ; 2 uses
  %niter202.next.3 = add i32 %niter202, 4         ; 2 uses
  %niter202.ncmp.3 = icmp eq i32 %niter202.next.3, %unroll_iter201
  br i1 %niter202.ncmp.3, label %.unr-lcssa, label %bb.k, !llvm.loop !299

bb.l:                                             ; preds = %._crit_edge138, %.epilog-lcssa, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ImDrawList16_PathArcToFastExERK6ImVec2fiii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(196) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, float noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = fcmp ugt float %2, 0.000000e+00
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !66   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !64
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i

._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i: ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !65
  br label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i32 %i.c, 1
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = sdiv i32 %i.c, 2
  %i.i = add nsw i32 %i.h, %i.c
  br label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i

end_hunk_0
