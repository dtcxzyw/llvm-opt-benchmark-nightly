Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui_draw?download=true
inline.NumInlined: 1179
inline.NumDeleted: 280
loop-unroll.NumCompletelyUnrolled: 238
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 284
begin_hunk_0_@_ZN10ImDrawList10PrimRectUVERK6ImVec2S2_S2_S2_j:bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !89
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !90
  %i.g = load i32, ptr %4, align 4, !tbaa !89
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !90
  %i.j = load i32, ptr %3, align 4, !tbaa !89
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !90
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !57   ; 2 uses
  %i.o = trunc i32 %i.n to i16                    ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !88   ; 7 uses
  store i16 %i.o, ptr %i.q, align 2, !tbaa !92
  %i.r = add i16 %i.o, 1
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
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !86  ; 17 uses
  %i.ab = load i64, ptr %1, align 4, !tbaa !15
  store i64 %i.ab, ptr %i.aa, align 4, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load i64, ptr %3, align 4, !tbaa !15
  store i64 %i.ad, ptr %i.ac, align 4, !tbaa !15
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i32 %5, ptr %i.ae, align 4, !tbaa !94
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  store i32 %i.a, ptr %i.af, align 4, !tbaa !15
  %.sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i32 %i.c, ptr %.sroa_idx29, align 4, !tbaa !15
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  store i32 %i.g, ptr %i.ag, align 4, !tbaa !15
  %.sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store i32 %i.i, ptr %.sroa_idx23, align 4, !tbaa !15
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 36
  store i32 %5, ptr %i.ah, align 4, !tbaa !94
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.aj = load i64, ptr %2, align 4, !tbaa !15
  store i64 %i.aj, ptr %i.ai, align 4, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.al = load i64, ptr %4, align 4, !tbaa !15
  store i64 %i.al, ptr %i.ak, align 4, !tbaa !15
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store i32 %5, ptr %i.am, align 4, !tbaa !94
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 60
  store i32 %i.d, ptr %i.an, align 4, !tbaa !15
  %.sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  store i32 %i.f, ptr %.sroa_idx26, align 4, !tbaa !15
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 68
  store i32 %i.j, ptr %i.ao, align 4, !tbaa !15
  %.sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  store i32 %i.l, ptr %.sroa_idx22, align 4, !tbaa !15
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 76
  store i32 %5, ptr %i.ap, align 4, !tbaa !94
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  store ptr %i.aq, ptr %i.z, align 8, !tbaa !86
  %i.ar = add i32 %i.n, 4
  store i32 %i.ar, ptr %i.m, align 4, !tbaa !57
  %i.as = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store ptr %i.as, ptr %i.p, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN10ImDrawList10PrimQuadUVERK6ImVec2S2_S2_S2_S2_S2_S2_S2_j(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(196) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %8, i32 noundef %9) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !57   ; 2 uses
  %i.c = trunc i32 %i.b to i16                    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !88   ; 7 uses
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
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !86   ; 13 uses
  %i.p = load i64, ptr %1, align 4, !tbaa !15
  store i64 %i.p, ptr %i.o, align 4, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load i64, ptr %5, align 4, !tbaa !15
  store i64 %i.r, ptr %i.q, align 4, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i32 %9, ptr %i.s, align 4, !tbaa !94
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.u = load i64, ptr %2, align 4, !tbaa !15
  store i64 %i.u, ptr %i.t, align 4, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  %i.w = load i64, ptr %6, align 4, !tbaa !15
  store i64 %i.w, ptr %i.v, align 4, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  store i32 %9, ptr %i.x, align 4, !tbaa !94
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.z = load i64, ptr %3, align 4, !tbaa !15
  store i64 %i.z, ptr %i.y, align 4, !tbaa !15
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.ab = load i64, ptr %7, align 4, !tbaa !15
  store i64 %i.ab, ptr %i.aa, align 4, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  store i32 %9, ptr %i.ac, align 4, !tbaa !94
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 60
  %i.ae = load i64, ptr %4, align 4, !tbaa !15
  store i64 %i.ae, ptr %i.ad, align 4, !tbaa !15
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 68
  %i.ag = load i64, ptr %8, align 4, !tbaa !15
  store i64 %i.ag, ptr %i.af, align 4, !tbaa !15
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 76
  store i32 %9, ptr %i.ah, align 4, !tbaa !94
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  store ptr %i.ai, ptr %i.n, align 8, !tbaa !86
  %i.aj = add i32 %i.b, 4
  store i32 %i.aj, ptr %i.a, align 4, !tbaa !57
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store ptr %i.ak, ptr %i.d, align 8, !tbaa !88
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
  %i.e = load i64, ptr %i.d, align 8, !tbaa !15   ; 11 uses
  %i.f = add nsw i32 %2, -1                       ; 4 uses
  %i.g = select i1 %.not441, i32 %i.f, i32 %2     ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.i = load float, ptr %i.h, align 8, !tbaa !69 ; 8 uses
  %i.j = fcmp ogt float %5, %i.i                  ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !56   ; 2 uses
  %i.m = and i32 %i.l, 1
  %.not442 = icmp eq i32 %i.m, 0
  br i1 %.not442, label %.lr.ph633, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = and i32 %3, 16777215                     ; 4 uses
  %i.o = fcmp oge float %5, 1.000000e+00
  %i.p = select i1 %i.o, float %5, float 1.000000e+00 ; 6 uses
  %i.q = fptosi float %i.p to i32                 ; 3 uses
  %i.r = uitofp nneg i32 %i.q to float
  %i.s = fsub float %i.p, %i.r
  %i.t = and i32 %i.l, 2
  %i.u = icmp eq i32 %i.t, 0
  %i.v = icmp samesign ugt i32 %i.q, 62
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
  %i.aj = zext nneg i32 %2 to i64                 ; 8 uses
  %i.ak = getelementptr [8 x i8], ptr %i.ai, i64 %i.aj ; 16 uses
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
  %i.bj = load i64, ptr %i.bg, align 8, !tbaa !15
  store i64 %i.bj, ptr %i.bi, align 8, !tbaa !15
  %or.cond5 = select i1 %.not446, i1 %i.j, i1 false
  br i1 %or.cond5, label %bb.o, label %bb.i

.thread:                                          ; preds = %._crit_edge
  %or.cond5596 = select i1 %.not446, i1 %i.j, i1 false
  br i1 %or.cond5596, label %.thread598, label %.thread597

.thread598:                                       ; preds = %.thread
  %i.bk = fsub float %i.p, %i.i
  %i.bl = fmul float %i.bk, 5.000000e-01
  br label %.lr.ph624

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
  store <2 x float> %i.bv, ptr %i.ak, align 8, !tbaa !15
  %i.bw = fsub <2 x float> %i.bu, %i.bt
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store <2 x float> %i.bw, ptr %i.bx, align 8, !tbaa !15
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bh
  %i.bz = load <2 x float>, ptr %i.bi, align 8, !tbaa !15
  %i.ca = fmul <2 x float> %i.bs, %i.bz
  %i.cb = load <2 x float>, ptr %i.by, align 4, !tbaa !15 ; 2 uses
  %i.cc = fadd <2 x float> %i.ca, %i.cb
  %i.cd = shl nuw nsw i32 %i.f, 1
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ce ; 2 uses
  store <2 x float> %i.cc, ptr %i.cf, align 8, !tbaa !15
  %i.cg = load <2 x float>, ptr %i.bi, align 8, !tbaa !15
  %i.ch = fmul <2 x float> %i.bs, %i.cg
  %i.ci = fsub <2 x float> %i.cb, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store <2 x float> %i.ci, ptr %i.cj, align 8, !tbaa !15
  br label %.lr.ph612

.lr.ph612:                                        ; preds = %bb.i, %.thread597
  %i.ck = phi float [ %i.bn, %.thread597 ], [ %i.bp, %bb.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !57 ; 4 uses
  %i.cn = select i1 %.not446, i32 3, i32 2
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %wide.trip.count650 = zext nneg i32 %i.g to i64 ; 2 uses
  %i.cp = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer
  %.promoted736 = load ptr, ptr %i.co, align 8, !tbaa !88
  br label %.backedge

.lr.ph618:                                        ; preds = %bb.l
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted619 = load ptr, ptr %i.cr, align 8, !tbaa !86
  br label %bb.n

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph612
  %i.cs = phi ptr [ %.promoted736, %.lr.ph612 ], [ %i.et, %.backedge.backedge ] ; 13 uses
  %indvars.iv647 = phi i64 [ 0, %.lr.ph612 ], [ %indvars.iv.next648, %.backedge.backedge ] ; 2 uses
  %.0432609 = phi i32 [ %i.cm, %.lr.ph612 ], [ %i.cx, %.backedge.backedge ] ; 3 uses
  %indvars.iv.next648 = add nuw nsw i64 %indvars.iv647, 1 ; 5 uses
  %i.ct = icmp eq i64 %indvars.iv.next648, %i.aj  ; 2 uses
  %i.cu = trunc nuw nsw i64 %indvars.iv.next648 to i32
  %i.cv = select i1 %i.ct, i32 0, i32 %i.cu       ; 2 uses
  %i.cw = add i32 %.0432609, %i.cn
  %i.cx = select i1 %i.ct, i32 %i.cm, i32 %i.cw   ; 3 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv647
  %i.cz = zext nneg i32 %i.cv to i64              ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.cz
  %i.db = load <2 x float>, ptr %i.cy, align 8, !tbaa !15
  %i.dc = load <2 x float>, ptr %i.da, align 8, !tbaa !15
  %i.dd = fadd <2 x float> %i.db, %i.dc
  %i.de = fmul <2 x float> %i.dd, splat (float 5.000000e-01) ; 5 uses
  %foldExtExtBinop707.a = fmul <2 x float> %i.de, %i.de
  %i.df = extractelement <2 x float> %foldExtExtBinop707.a, i64 1
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
  br i1 %.not446, label %bb.l, label %.thread691

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
  %exitcond651.not = icmp eq i64 %indvars.iv.next648, %wide.trip.count650
  br i1 %exitcond651.not, label %.lr.ph618, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.l, %.thread691
  %i.et = phi ptr [ %i.es, %bb.l ], [ %i.ey, %.thread691 ]
  br label %.backedge, !llvm.loop !287

.thread691:                                       ; preds = %bb.k
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
  %exitcond651.not693 = icmp eq i64 %indvars.iv.next648, %wide.trip.count650
  br i1 %exitcond651.not693, label %.lr.ph616, label %.backedge.backedge

.lr.ph616:                                        ; preds = %.thread691
  %i.ez = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 504
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !293
  %i.fc = zext nneg i32 %i.q to i64
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %i.fc ; 2 uses
  %i.fe = load <2 x i32>, ptr %i.fd, align 4, !tbaa !15 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load <2 x i32>, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !15 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %xtraiter = and i64 %i.aj, 1
  %.promoted = load ptr, ptr %i.fg, align 8, !tbaa !86
  %unroll_iter = and i64 %i.aj, 2147483646
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph616
  %indvars.iv652 = phi i64 [ 0, %.lr.ph616 ], [ %indvars.iv.next653.1, %bb.m ] ; 3 uses
  %i.fh = phi ptr [ %.promoted, %.lr.ph616 ], [ %i.gc, %bb.m ] ; 13 uses
  %niter = phi i64 [ 0, %.lr.ph616 ], [ %niter.next.1, %bb.m ]
  %.idx = shl nuw nsw i64 %indvars.iv652, 4
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx ; 2 uses
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !15
  store i64 %i.fj, ptr %i.fh, align 4, !tbaa !15
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store <2 x i32> %i.fe, ptr %i.fk, align 4, !tbaa !15
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  store i32 %3, ptr %i.fl, align 4, !tbaa !94
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fh, i64 20
  %i.fo = load i64, ptr %i.fm, align 8, !tbaa !15
  store i64 %i.fo, ptr %i.fn, align 4, !tbaa !15
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fh, i64 28
  store <2 x i32> %i.ff, ptr %i.fp, align 4, !tbaa !15
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fh, i64 36
  store i32 %3, ptr %i.fq, align 4, !tbaa !94
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fh, i64 40
  %indvars.iv.next653 = shl i64 %indvars.iv652, 4
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv.next653 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !15
  store i64 %i.fu, ptr %i.fr, align 4, !tbaa !15
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fh, i64 48
  store <2 x i32> %i.fe, ptr %i.fv, align 4, !tbaa !15
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fh, i64 56
  store i32 %3, ptr %i.fw, align 4, !tbaa !94
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fh, i64 60
  %i.fz = load i64, ptr %i.fx, align 8, !tbaa !15
  store i64 %i.fz, ptr %i.fy, align 4, !tbaa !15
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fh, i64 68
  store <2 x i32> %i.ff, ptr %i.ga, align 4, !tbaa !15
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fh, i64 76
  store i32 %3, ptr %i.gb, align 4, !tbaa !94
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fh, i64 80 ; 9 uses
  %indvars.iv.next653.1 = add nuw nsw i64 %indvars.iv652, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit607_crit_edge.unr-lcssa, label %bb.m, !llvm.loop !288

bb.n:                                             ; preds = %.lr.ph618, %bb.n
  %indvars.iv657 = phi i64 [ 0, %.lr.ph618 ], [ %indvars.iv.next658, %bb.n ] ; 3 uses
  %i.gd = phi ptr [ %.promoted619, %.lr.ph618 ], [ %i.gs, %bb.n ] ; 10 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv657
  %i.gf = load i64, ptr %i.ge, align 4, !tbaa !15
  store i64 %i.gf, ptr %i.gd, align 4, !tbaa !15
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store i64 %i.e, ptr %i.gg, align 4, !tbaa !15
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  store i32 %3, ptr %i.gh, align 4, !tbaa !94
  %.idx689 = shl nuw nsw i64 %indvars.iv657, 4
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx689 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gd, i64 20
  %i.gk = load i64, ptr %i.gi, align 8, !tbaa !15
  store i64 %i.gk, ptr %i.gj, align 4, !tbaa !15
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gd, i64 28
  store i64 %i.e, ptr %i.gl, align 4, !tbaa !15
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gd, i64 36
  store i32 %i.n, ptr %i.gm, align 4, !tbaa !94
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.gd, i64 40
  %i.gp = load i64, ptr %i.gn, align 8, !tbaa !15
  store i64 %i.gp, ptr %i.go, align 4, !tbaa !15
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gd, i64 48
  store i64 %i.e, ptr %i.gq, align 4, !tbaa !15
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gd, i64 56
  store i32 %i.n, ptr %i.gr, align 4, !tbaa !94
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gd, i64 60 ; 2 uses
  %indvars.iv.next658 = add nuw nsw i64 %indvars.iv657, 1 ; 2 uses
  %exitcond662.not = icmp eq i64 %indvars.iv.next658, %i.aj
  br i1 %exitcond662.not, label %..loopexit606_crit_edge, label %bb.n, !llvm.loop !289

bb.o:                                             ; preds = %bb.h
  %i.gt = fsub float %i.p, %i.i
  %i.gu = fmul float %i.gt, 5.000000e-01          ; 4 uses
  %i.gv = fadd float %i.i, %i.gu                  ; 2 uses
  %i.gw = load <2 x float>, ptr %i.ai, align 16, !tbaa !15
  %i.gx = shufflevector <2 x float> %i.gw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gy = load <2 x float>, ptr %1, align 4, !tbaa !15
  %i.gz = shufflevector <2 x float> %i.gy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 5 uses
  %i.ha = insertelement <4 x float> poison, float %i.gv, i64 0
  %i.hb = insertelement <4 x float> %i.ha, float %i.gu, i64 1
  %i.hc = shufflevector <4 x float> %i.hb, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.hd = fmul <4 x float> %i.hc, %i.gx           ; 5 uses
  %i.he = fadd <4 x float> %i.hd, %i.gz           ; 2 uses
  %i.hf = shufflevector <4 x float> %i.he, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.hf, ptr %i.ak, align 8, !tbaa !15
  %i.hg = shufflevector <4 x float> %i.he, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store <2 x float> %i.hg, ptr %i.hh, align 8, !tbaa !15
  %shift = shufflevector <4 x float> %i.hd, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop709.a = fsub <4 x float> %i.gz, %shift
  %shift719 = shufflevector <4 x float> %i.hd, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %foldExtExtBinop720 = fsub <4 x float> %i.gz, %shift719
  %.sroa.0.0.vec.insert.i547 = shufflevector <4 x float> %foldExtExtBinop709.a, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.hi = shufflevector <4 x float> %foldExtExtBinop720, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %.sroa.0.4.vec.insert.i548 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i547, <2 x float> %i.hi, <2 x i32> <i32 0, i32 3>
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <2 x float> %.sroa.0.4.vec.insert.i548, ptr %i.hj, align 8, !tbaa !15
  %foldExtExtBinop711.a = fsub <4 x float> %i.gz, %i.hd
  %foldExtExtBinop713.a = fsub <4 x float> %i.gz, %i.hd
  %.sroa.0.0.vec.insert.i551 = shufflevector <4 x float> %foldExtExtBinop711.a, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.hk = shufflevector <4 x float> %foldExtExtBinop713.a, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %.sroa.0.4.vec.insert.i552 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i551, <2 x float> %i.hk, <2 x i32> <i32 0, i32 3>
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store <2 x float> %.sroa.0.4.vec.insert.i552, ptr %i.hl, align 8, !tbaa !15
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bh
  %i.hn = load <2 x float>, ptr %i.bi, align 8, !tbaa !15
  %i.ho = insertelement <2 x float> poison, float %i.gv, i64 0
  %i.hp = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hq = fmul <2 x float> %i.hp, %i.hn
  %i.hr = load <2 x float>, ptr %i.hm, align 4, !tbaa !15 ; 4 uses
  %i.hs = fadd <2 x float> %i.hq, %i.hr
  %i.ht = shl nuw nsw i32 %i.f, 2
  %i.hu = zext nneg i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.hu ; 4 uses
  store <2 x float> %i.hs, ptr %i.hv, align 8, !tbaa !15
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  %i.hy = load <2 x float>, ptr %i.bi, align 8, !tbaa !15 ; 2 uses
  %i.hz = insertelement <2 x float> poison, float %i.gu, i64 0
  %i.ia = shufflevector <2 x float> %i.hz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ib = fmul <2 x float> %i.ia, %i.hy           ; 2 uses
  %i.ic = fadd <2 x float> %i.hr, %i.ib
  store <2 x float> %i.ic, ptr %i.hw, align 8, !tbaa !15
  %i.id = fsub <2 x float> %i.hr, %i.ib
  store <2 x float> %i.id, ptr %i.hx, align 8, !tbaa !15
  %i.ie = fmul <2 x float> %i.hp, %i.hy
  %i.if = fsub <2 x float> %i.hr, %i.ie
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  store <2 x float> %i.if, ptr %i.ig, align 8, !tbaa !15
  br label %.lr.ph624

.lr.ph624:                                        ; preds = %bb.o, %.thread598
  %i.ih = phi float [ %i.bl, %.thread598 ], [ %i.gu, %bb.o ] ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !57 ; 3 uses
  %i.ik = fadd float %i.i, %i.ih
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.promoted625 = load ptr, ptr %i.il, align 8, !tbaa !88
  %wide.trip.count666 = zext nneg i32 %i.g to i64
  %i.im = insertelement <4 x float> poison, float %i.ik, i64 0
  %i.in = insertelement <4 x float> %i.im, float %i.ih, i64 1
  %i.io = shufflevector <4 x float> %i.in, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  br label %bb.p

.lr.ph628:                                        ; preds = %bb.r
  store ptr %i.kv, ptr %i.il, align 8, !tbaa !88
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted629 = load ptr, ptr %i.ip, align 8, !tbaa !86
  br label %bb.s

bb.p:                                             ; preds = %.lr.ph624, %bb.r
  %indvars.iv663 = phi i64 [ 0, %.lr.ph624 ], [ %indvars.iv.next664, %bb.r ] ; 2 uses
  %i.iq = phi ptr [ %.promoted625, %.lr.ph624 ], [ %i.kv, %bb.r ] ; 9 uses
  %.0423621 = phi i32 [ %i.ij, %.lr.ph624 ], [ %spec.select, %bb.r ] ; 3 uses
  %indvars.iv.next664 = add nuw nsw i64 %indvars.iv663, 1 ; 4 uses
  %i.ir = icmp eq i64 %indvars.iv.next664, %i.aj  ; 2 uses
  %i.is = trunc nuw nsw i64 %indvars.iv.next664 to i32
  %i.it = select i1 %i.ir, i32 0, i32 %i.is       ; 2 uses
  %i.iu = add i32 %.0423621, 4
  %spec.select = select i1 %i.ir, i32 %i.ij, i32 %i.iu ; 3 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv663
  %i.iw = zext nneg i32 %i.it to i64              ; 2 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.iw
  %i.iy = load <2 x float>, ptr %i.iv, align 8, !tbaa !15
  %i.iz = load <2 x float>, ptr %i.ix, align 8, !tbaa !15
  %i.ja = fadd <2 x float> %i.iy, %i.iz
  %i.jb = fmul <2 x float> %i.ja, splat (float 5.000000e-01) ; 5 uses
  %foldExtExtBinop715.a = fmul <2 x float> %i.jb, %i.jb
  %i.jc = extractelement <2 x float> %foldExtExtBinop715.a, i64 1
  %i.jd = extractelement <2 x float> %i.jb, i64 0 ; 2 uses
  %i.je = tail call float @llvm.fmuladd.f32(float %i.jd, float %i.jd, float %i.jc) ; 2 uses
  %i.jf = fcmp ogt float %i.je, f0x358637BD
  br i1 %i.jf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.jg = fdiv float 1.000000e+00, %i.je          ; 2 uses
  %i.jh = fcmp ogt float %i.jg, 1.000000e+02
  %spec.store.select6 = select i1 %i.jh, float 1.000000e+02, float %i.jg
  %i.ji = insertelement <2 x float> poison, float %spec.store.select6, i64 0
  %i.jj = shufflevector <2 x float> %i.ji, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jk = fmul <2 x float> %i.jb, %i.jj
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.jl = phi <2 x float> [ %i.jk, %bb.q ], [ %i.jb, %bb.p ]
  %i.jm = shufflevector <2 x float> %i.jl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.jn = fmul <4 x float> %i.io, %i.jm           ; 2 uses
  %i.jo = shl nuw nsw i32 %i.it, 2
  %i.jp = zext nneg i32 %i.jo to i64
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.jp ; 2 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.iw
  %i.js = load <2 x float>, ptr %i.jr, align 4, !tbaa !15
  %i.jt = shufflevector <2 x float> %i.js, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.ju = fadd <4 x float> %i.jn, %i.jt
  store <4 x float> %i.ju, ptr %i.jq, align 8, !tbaa !15
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %i.jw = fsub <4 x float> %i.jt, %i.jn
  %i.jx = shufflevector <4 x float> %i.jw, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x float> %i.jx, ptr %i.jv, align 8, !tbaa !15
  %i.jy = trunc i32 %spec.select to i16
  %i.jz = insertelement <2 x i16> poison, i16 %i.jy, i64 0
  %i.ka = trunc i32 %.0423621 to i16
  %i.kb = insertelement <2 x i16> %i.jz, i16 %i.ka, i64 1
  %i.kc = shufflevector <2 x i16> %i.kb, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.kd = trunc i32 %spec.select to i16           ; 3 uses
  %i.ke = trunc i32 %.0423621 to i16              ; 3 uses
  %i.kf = add <4 x i16> %i.kc, <i16 1, i16 1, i16 2, i16 2> ; 3 uses
  %i.kg = shufflevector <4 x i16> %i.kf, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 2, i32 3, i32 0, i32 0, i32 1>
  %i.kh = add i16 %i.kd, 1
  store <8 x i16> %i.kg, ptr %i.iq, align 2, !tbaa !92
  %i.ki = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  store i16 %i.ke, ptr %i.ki, align 2, !tbaa !92
  %i.kj = getelementptr inbounds nuw i8, ptr %i.iq, i64 18
  store i16 %i.ke, ptr %i.kj, align 2, !tbaa !92
  %i.kk = getelementptr inbounds nuw i8, ptr %i.iq, i64 20
  store i16 %i.kd, ptr %i.kk, align 2, !tbaa !92
  %i.kl = getelementptr inbounds nuw i8, ptr %i.iq, i64 22
  store i16 %i.kh, ptr %i.kl, align 2, !tbaa !92
  %i.km = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  %i.kn = extractelement <4 x i16> %i.kf, i64 3   ; 2 uses
  store i16 %i.kn, ptr %i.km, align 2, !tbaa !92
  %i.ko = getelementptr inbounds nuw i8, ptr %i.iq, i64 26
  %i.kp = shufflevector <4 x i16> %i.kf, <4 x i16> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.kq = insertelement <4 x i16> %i.kp, i16 %i.ke, i64 1
  %i.kr = insertelement <4 x i16> %i.kq, i16 %i.kd, i64 3
  %i.ks = add <4 x i16> %i.kr, <i16 0, i16 3, i16 poison, i16 3>
  %i.kt = shufflevector <4 x i16> %i.ks, <4 x i16> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  store <4 x i16> %i.kt, ptr %i.ko, align 2, !tbaa !92
  %i.ku = getelementptr inbounds nuw i8, ptr %i.iq, i64 34
  store i16 %i.kn, ptr %i.ku, align 2, !tbaa !92
  %i.kv = getelementptr inbounds nuw i8, ptr %i.iq, i64 36 ; 2 uses
  %exitcond667.not = icmp eq i64 %indvars.iv.next664, %wide.trip.count666
  br i1 %exitcond667.not, label %.lr.ph628, label %bb.p, !llvm.loop !290

bb.s:                                             ; preds = %.lr.ph628, %bb.s
  %indvars.iv668 = phi i64 [ 0, %.lr.ph628 ], [ %indvars.iv.next669, %bb.s ] ; 2 uses
  %i.kw = phi ptr [ %.promoted629, %.lr.ph628 ], [ %i.lq, %bb.s ] ; 13 uses
  %.idx690 = shl nuw nsw i64 %indvars.iv668, 5
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx690 ; 4 uses
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !15
  store i64 %i.ky, ptr %i.kw, align 4, !tbaa !15
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  store i64 %i.e, ptr %i.kz, align 4, !tbaa !15
  %i.la = getelementptr inbounds nuw i8, ptr %i.kw, i64 16
  store i32 %i.n, ptr %i.la, align 4, !tbaa !94
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kw, i64 20
  %i.ld = load i64, ptr %i.lb, align 8, !tbaa !15
  store i64 %i.ld, ptr %i.lc, align 4, !tbaa !15
  %i.le = getelementptr inbounds nuw i8, ptr %i.kw, i64 28
  store i64 %i.e, ptr %i.le, align 4, !tbaa !15
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kw, i64 36
  store i32 %3, ptr %i.lf, align 4, !tbaa !94
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kw, i64 40
  %i.li = load i64, ptr %i.lg, align 8, !tbaa !15
  store i64 %i.li, ptr %i.lh, align 4, !tbaa !15
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kw, i64 48
  store i64 %i.e, ptr %i.lj, align 4, !tbaa !15
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kw, i64 56
  store i32 %3, ptr %i.lk, align 4, !tbaa !94
  %i.ll = getelementptr inbounds nuw i8, ptr %i.kx, i64 24
  %i.lm = getelementptr inbounds nuw i8, ptr %i.kw, i64 60
  %i.ln = load i64, ptr %i.ll, align 8, !tbaa !15
  store i64 %i.ln, ptr %i.lm, align 4, !tbaa !15
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kw, i64 68
  store i64 %i.e, ptr %i.lo, align 4, !tbaa !15
  %i.lp = getelementptr inbounds nuw i8, ptr %i.kw, i64 76
  store i32 %i.n, ptr %i.lp, align 4, !tbaa !94
  %i.lq = getelementptr inbounds nuw i8, ptr %i.kw, i64 80 ; 2 uses
  %indvars.iv.next669 = add nuw nsw i64 %indvars.iv668, 1 ; 2 uses
  %exitcond673.not = icmp eq i64 %indvars.iv.next669, %i.aj
  br i1 %exitcond673.not, label %..loopexit604_crit_edge, label %bb.s, !llvm.loop !291

..loopexit604_crit_edge:                          ; preds = %bb.s
  store ptr %i.lq, ptr %i.ip, align 8, !tbaa !86
  br label %.loopexit604

..loopexit606_crit_edge:                          ; preds = %bb.n
  store ptr %i.gs, ptr %i.cr, align 8, !tbaa !86
  br label %.loopexit604

..loopexit607_crit_edge.unr-lcssa:                ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %..loopexit607_crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit607_crit_edge.unr-lcssa
  %lcmp.mod729 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod729)
  %.idx.epil = shl nuw nsw i64 %indvars.iv.next653.1, 4
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.epil ; 2 uses
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !15
  store i64 %i.ls, ptr %i.gc, align 4, !tbaa !15
  %i.lt = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store <2 x i32> %i.fe, ptr %i.lt, align 4, !tbaa !15
  %i.lu = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  store i32 %3, ptr %i.lu, align 4, !tbaa !94
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.lw = getelementptr inbounds nuw i8, ptr %i.gc, i64 20
  %i.lx = load i64, ptr %i.lv, align 16, !tbaa !15
  store i64 %i.lx, ptr %i.lw, align 4, !tbaa !15
  %i.ly = getelementptr inbounds nuw i8, ptr %i.gc, i64 28
  store <2 x i32> %i.ff, ptr %i.ly, align 4, !tbaa !15
  %i.lz = getelementptr inbounds nuw i8, ptr %i.gc, i64 36
  store i32 %3, ptr %i.lz, align 4, !tbaa !94
  %i.ma = getelementptr inbounds nuw i8, ptr %i.gc, i64 40
  br label %..loopexit607_crit_edge

..loopexit607_crit_edge:                          ; preds = %..loopexit607_crit_edge.unr-lcssa, %.epil.preheader
  %.lcssa727 = phi ptr [ %i.gc, %..loopexit607_crit_edge.unr-lcssa ], [ %i.ma, %.epil.preheader ]
  store ptr %.lcssa727, ptr %i.fg, align 8, !tbaa !86
  br label %.loopexit604

.loopexit604:                                     ; preds = %..loopexit607_crit_edge, %..loopexit606_crit_edge, %..loopexit604_crit_edge
  %i.mb = phi i32 [ %i.cm, %..loopexit607_crit_edge ], [ %i.ij, %..loopexit604_crit_edge ], [ %i.cm, %..loopexit606_crit_edge ]
  %i.mc = and i32 %i.ae, 65535
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.me = add i32 %i.mb, %i.mc
  store i32 %i.me, ptr %i.md, align 4, !tbaa !57
  br label %.loopexit

.lr.ph633:                                        ; preds = %bb.b
  %i.mf = mul nsw i32 %i.g, 6
  %i.mg = shl nsw i32 %i.g, 2
  tail call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(196) %0, i32 noundef %i.mf, i32 noundef %i.mg)
  %i.mh = fmul float %5, 5.000000e-01
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.promoted634 = load ptr, ptr %i.mi, align 8, !tbaa !86
  %.promoted636 = load i32, ptr %i.mj, align 4, !tbaa !57
  %.promoted638 = load ptr, ptr %i.mk, align 8, !tbaa !88
  %i.ml = zext nneg i32 %2 to i64
  %wide.trip.count677 = zext nneg i32 %i.g to i64
  %i.mm = insertelement <2 x float> poison, float %i.mh, i64 0
  %i.mn = shufflevector <2 x float> %i.mm, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph633, %bb.v
  %indvars.iv674 = phi i64 [ 0, %.lr.ph633 ], [ %indvars.iv.next675, %bb.v ] ; 2 uses
  %i.mo = phi ptr [ %.promoted638, %.lr.ph633 ], [ %i.pa, %bb.v ] ; 7 uses
  %i.mp = phi i32 [ %.promoted636, %.lr.ph633 ], [ %i.pb, %bb.v ] ; 2 uses
  %i.mq = phi ptr [ %.promoted634, %.lr.ph633 ], [ %i.oq, %bb.v ] ; 16 uses
  %indvars.iv.next675 = add nuw nsw i64 %indvars.iv674, 1 ; 4 uses
  %i.mr = icmp eq i64 %indvars.iv.next675, %i.ml
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv674 ; 3 uses
  %i.mt = select i1 %i.mr, i64 0, i64 %indvars.iv.next675
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.mt ; 4 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 4 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ms, i64 4
  %i.mx = load <2 x float>, ptr %i.mu, align 4, !tbaa !15
  %i.my = load <2 x float>, ptr %i.ms, align 4, !tbaa !15 ; 3 uses
  %i.mz = fsub <2 x float> %i.mx, %i.my           ; 5 uses
  %foldExtExtBinop717 = fmul <2 x float> %i.mz, %i.mz
  %i.na = extractelement <2 x float> %foldExtExtBinop717, i64 1
  %i.nb = extractelement <2 x float> %i.mz, i64 0 ; 2 uses
  %i.nc = tail call float @llvm.fmuladd.f32(float %i.nb, float %i.nb, float %i.na) ; 2 uses
  %i.nd = fcmp ogt float %i.nc, 0.000000e+00
  br i1 %i.nd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ne = insertelement <4 x float> poison, float %i.nc, i64 0
  %i.nf = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.ne)
  %i.ng = shufflevector <4 x float> %i.nf, <4 x float> poison, <2 x i32> zeroinitializer
  %i.nh = fmul <2 x float> %i.mz, %i.ng
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ni = phi <2 x float> [ %i.nh, %bb.u ], [ %i.mz, %bb.t ]
  %i.nj = shufflevector <2 x float> %i.ni, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.nk = fmul <2 x float> %i.mn, %i.nj           ; 4 uses
  %i.nl = fadd <2 x float> %i.my, %i.nk
  %i.nm = fsub <2 x float> %i.my, %i.nk
  %i.nn = shufflevector <2 x float> %i.nl, <2 x float> %i.nm, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.nn, ptr %i.mq, align 4, !tbaa !15
  %i.no = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  store i64 %i.e, ptr %i.no, align 4, !tbaa !15
  %i.np = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  store i32 %3, ptr %i.np, align 4, !tbaa !94
  %i.nq = load float, ptr %i.mu, align 4, !tbaa !89
  %i.nr = extractelement <2 x float> %i.nk, i64 0 ; 3 uses
  %i.ns = fadd float %i.nr, %i.nq
  %i.nt = getelementptr inbounds nuw i8, ptr %i.mq, i64 20
  store float %i.ns, ptr %i.nt, align 4, !tbaa !95
  %i.nu = load float, ptr %i.mv, align 4, !tbaa !90
  %i.nv = extractelement <2 x float> %i.nk, i64 1 ; 3 uses
  %i.nw = fsub float %i.nu, %i.nv
  %i.nx = getelementptr inbounds nuw i8, ptr %i.mq, i64 24
  store float %i.nw, ptr %i.nx, align 4, !tbaa !96
  %i.ny = getelementptr inbounds nuw i8, ptr %i.mq, i64 28
  store i64 %i.e, ptr %i.ny, align 4, !tbaa !15
  %i.nz = getelementptr inbounds nuw i8, ptr %i.mq, i64 36
  store i32 %3, ptr %i.nz, align 4, !tbaa !94
  %i.oa = load float, ptr %i.mu, align 4, !tbaa !89
  %i.ob = fsub float %i.oa, %i.nr
  %i.oc = getelementptr inbounds nuw i8, ptr %i.mq, i64 40
  store float %i.ob, ptr %i.oc, align 4, !tbaa !95
  %i.od = load float, ptr %i.mv, align 4, !tbaa !90
  %i.oe = fadd float %i.nv, %i.od
  %i.of = getelementptr inbounds nuw i8, ptr %i.mq, i64 44
  store float %i.oe, ptr %i.of, align 4, !tbaa !96
  %i.og = getelementptr inbounds nuw i8, ptr %i.mq, i64 48
  store i64 %i.e, ptr %i.og, align 4, !tbaa !15
  %i.oh = getelementptr inbounds nuw i8, ptr %i.mq, i64 56
  store i32 %3, ptr %i.oh, align 4, !tbaa !94
  %i.oi = load float, ptr %i.ms, align 4, !tbaa !89
  %i.oj = fsub float %i.oi, %i.nr
  %i.ok = getelementptr inbounds nuw i8, ptr %i.mq, i64 60
  store float %i.oj, ptr %i.ok, align 4, !tbaa !95
  %i.ol = load float, ptr %i.mw, align 4, !tbaa !90
  %i.om = fadd float %i.nv, %i.ol
  %i.on = getelementptr inbounds nuw i8, ptr %i.mq, i64 64
  store float %i.om, ptr %i.on, align 4, !tbaa !96
  %i.oo = getelementptr inbounds nuw i8, ptr %i.mq, i64 68
  store i64 %i.e, ptr %i.oo, align 4, !tbaa !15
  %i.op = getelementptr inbounds nuw i8, ptr %i.mq, i64 76
  store i32 %3, ptr %i.op, align 4, !tbaa !94
  %i.oq = getelementptr inbounds nuw i8, ptr %i.mq, i64 80 ; 2 uses
  %i.or = trunc i32 %i.mp to i16                  ; 5 uses
  store i16 %i.or, ptr %i.mo, align 2, !tbaa !92
  %i.os = add i16 %i.or, 1
  %i.ot = getelementptr inbounds nuw i8, ptr %i.mo, i64 2
  store i16 %i.os, ptr %i.ot, align 2, !tbaa !92
  %i.ou = add i16 %i.or, 2                        ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.mo, i64 4
  store i16 %i.ou, ptr %i.ov, align 2, !tbaa !92
  %i.ow = getelementptr inbounds nuw i8, ptr %i.mo, i64 6
  store i16 %i.or, ptr %i.ow, align 2, !tbaa !92
  %i.ox = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  store i16 %i.ou, ptr %i.ox, align 2, !tbaa !92
  %i.oy = add i16 %i.or, 3
  %i.oz = getelementptr inbounds nuw i8, ptr %i.mo, i64 10
  store i16 %i.oy, ptr %i.oz, align 2, !tbaa !92
  %i.pa = getelementptr inbounds nuw i8, ptr %i.mo, i64 12 ; 2 uses
  %i.pb = add i32 %i.mp, 4                        ; 2 uses
  %exitcond678.not = icmp eq i64 %indvars.iv.next675, %wide.trip.count677
  br i1 %exitcond678.not, label %..loopexit_crit_edge, label %bb.t, !llvm.loop !292

..loopexit_crit_edge:                             ; preds = %bb.v
  store ptr %i.oq, ptr %i.mi, align 8, !tbaa !86
  store i32 %i.pb, ptr %i.mj, align 4, !tbaa !57
  store ptr %i.pa, ptr %i.mk, align 8, !tbaa !88
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.loopexit604, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(196) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = icmp slt i32 %2, 3
  br i1 %i.a, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i32, ptr %i.e, align 8, !tbaa !56
  %i.g = and i32 %i.f, 4
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.lr.ph145, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.i = load float, ptr %i.h, align 8, !tbaa !69
  %i.j = and i32 %3, 16777215
  %reass.mul = mul i32 %2, 9
  %i.k = add i32 %reass.mul, -6
  %i.l = shl nuw nsw i32 %2, 1                    ; 2 uses
  tail call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(196) %0, i32 noundef %i.k, i32 noundef %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !57   ; 9 uses
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
  %lcmp.mod202 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod202)
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
  %.lcssa200 = phi ptr [ %i.ba, %.lr.ph134.preheader.unr-lcssa ], [ %i.ac, %.epil.preheader ]
  store ptr %.lcssa200, ptr %i.q, align 8, !tbaa !88
  %i.ad = zext nneg i32 %2 to i64                 ; 3 uses
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = alloca i8, i64 %i.ae, align 16          ; 3 uses
  %i.ag = add nsw i32 %2, -1                      ; 4 uses
  %.phi.trans.insert = zext nneg i32 %i.ag to i64
  %.phi.trans.insert173 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.phi.trans.insert
  %i.ah = load <2 x float>, ptr %.phi.trans.insert173, align 4, !tbaa !15
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
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.promoted139 = load ptr, ptr %i.bd, align 8, !tbaa !86
  %.promoted141 = load ptr, ptr %i.be, align 8, !tbaa !88
  %.phi.trans.insert176 = zext nneg i32 %i.ag to i64
  %.phi.trans.insert177 = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.phi.trans.insert176
  %i.bf = load <2 x float>, ptr %.phi.trans.insert177, align 8, !tbaa !15
  %i.bg = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.g

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
  %exitcond158.not = icmp eq i64 %indvars.iv.next, %i.ad
  br i1 %exitcond158.not, label %.lr.ph137, label %.lr.ph134, !llvm.loop !295

bb.f:                                             ; preds = %bb.i
  store ptr %i.de, ptr %i.bd, align 8, !tbaa !86
  store ptr %i.du, ptr %i.be, align 8, !tbaa !88
  %i.ca = and i32 %i.l, 65534
  %i.cb = add i32 %i.n, %i.ca
  store i32 %i.cb, ptr %i.m, align 4, !tbaa !57
  br label %bb.n

bb.g:                                             ; preds = %.lr.ph137, %bb.i
  %indvars.iv159 = phi i64 [ 0, %.lr.ph137 ], [ %indvars.iv.next160, %bb.i ] ; 5 uses
  %i.cc = phi ptr [ %.promoted141, %.lr.ph137 ], [ %i.du, %bb.i ] ; 7 uses
  %i.cd = phi ptr [ %.promoted139, %.lr.ph137 ], [ %i.de, %bb.i ] ; 7 uses
  %.0118135 = phi i32 [ %i.ag, %.lr.ph137 ], [ %i.dv, %bb.i ]
  %i.ce = phi <2 x float> [ %i.bf, %.lr.ph137 ], [ %i.cg, %bb.i ]
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv159
  %i.cg = load <2 x float>, ptr %i.cf, align 8, !tbaa !15 ; 2 uses
  %i.ch = fadd <2 x float> %i.ce, %i.cg
  %i.ci = fmul <2 x float> %i.ch, splat (float 5.000000e-01) ; 5 uses
  %foldExtExtBinop195 = fmul <2 x float> %i.ci, %i.ci
  %i.cj = extractelement <2 x float> %foldExtExtBinop195, i64 1
  %i.ck = extractelement <2 x float> %i.ci, i64 0 ; 2 uses
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.ck, float %i.ck, float %i.cj) ; 2 uses
  %i.cm = fcmp ogt float %i.cl, f0x358637BD
  br i1 %i.cm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cn = fdiv float 1.000000e+00, %i.cl          ; 2 uses
  %i.co = fcmp ogt float %i.cn, 1.000000e+02
  %spec.store.select = select i1 %i.co, float 1.000000e+02, float %i.cn
  %i.cp = insertelement <2 x float> poison, float %spec.store.select, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cr = fmul <2 x float> %i.ci, %i.cq
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cs = phi <2 x float> [ %i.cr, %bb.h ], [ %i.ci, %bb.g ]
  %i.ct = fmul <2 x float> %i.bh, %i.cs           ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv159 ; 2 uses
  %i.cv = load <2 x float>, ptr %i.cu, align 4, !tbaa !15
  %i.cw = fsub <2 x float> %i.cv, %i.ct
  store <2 x float> %i.cw, ptr %i.cd, align 4, !tbaa !15
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i64 %i.d, ptr %i.cx, align 4, !tbaa !15
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store i32 %3, ptr %i.cy, align 4, !tbaa !94
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cd, i64 20
  %i.da = load <2 x float>, ptr %i.cu, align 4, !tbaa !15
  %i.db = fadd <2 x float> %i.ct, %i.da
  store <2 x float> %i.db, ptr %i.cz, align 4, !tbaa !15
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cd, i64 28
  store i64 %i.d, ptr %i.dc, align 4, !tbaa !15
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cd, i64 36
  store i32 %i.j, ptr %i.dd, align 4, !tbaa !94
  %i.de = getelementptr inbounds nuw i8, ptr %i.cd, i64 40 ; 2 uses
  %indvars.iv159.tr = trunc nuw i64 %indvars.iv159 to i32
  %i.df = shl nuw i32 %indvars.iv159.tr, 1        ; 2 uses
  %i.dg = add i32 %i.df, %i.n
  %i.dh = trunc i32 %i.dg to i16                  ; 2 uses
  store i16 %i.dh, ptr %i.cc, align 2, !tbaa !92
  %i.di = shl i32 %.0118135, 1                    ; 2 uses
  %i.dj = add i32 %i.di, %i.n
  %i.dk = trunc i32 %i.dj to i16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  store i16 %i.dk, ptr %i.dl, align 2, !tbaa !92
  %i.dm = add i32 %i.di, %i.o
  %i.dn = trunc i32 %i.dm to i16                  ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store i16 %i.dn, ptr %i.do, align 2, !tbaa !92
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cc, i64 6
  store i16 %i.dn, ptr %i.dp, align 2, !tbaa !92
  %i.dq = add i32 %i.df, %i.o
  %i.dr = trunc i32 %i.dq to i16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i16 %i.dr, ptr %i.ds, align 2, !tbaa !92
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cc, i64 10
  store i16 %i.dh, ptr %i.dt, align 2, !tbaa !92
  %i.du = getelementptr inbounds nuw i8, ptr %i.cc, i64 12 ; 2 uses
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 2 uses
  %i.dv = trunc nuw nsw i64 %indvars.iv159 to i32
  %exitcond164.not = icmp eq i64 %indvars.iv.next160, %i.ad
  br i1 %exitcond164.not, label %bb.f, label %bb.g, !llvm.loop !296

.lr.ph145:                                        ; preds = %bb.b
  %i.dw = mul i32 %2, 3
  %i.dx = add i32 %i.dw, -6
  tail call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(196) %0, i32 noundef %i.dx, i32 noundef %2)
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted146 = load ptr, ptr %i.dy, align 8, !tbaa !86 ; 2 uses
  %wide.trip.count168 = zext nneg i32 %2 to i64   ; 2 uses
  %xtraiter204 = and i64 %wide.trip.count168, 3   ; 3 uses
  %i.dz = icmp eq i32 %2, 3
  br i1 %i.dz, label %.epil.preheader203, label %.lr.ph145.new

.lr.ph145.new:                                    ; preds = %.lr.ph145
  %unroll_iter210 = and i64 %wide.trip.count168, 2147483644
  br label %bb.k

.lr.ph149.unr-lcssa:                              ; preds = %bb.k
  %lcmp.mod207.not = icmp eq i64 %xtraiter204, 0
  br i1 %lcmp.mod207.not, label %.lr.ph149, label %.epil.preheader203

.epil.preheader203:                               ; preds = %.lr.ph149.unr-lcssa, %.lr.ph145
  %indvars.iv165.epil.init = phi i64 [ 0, %.lr.ph145 ], [ %indvars.iv.next166.3, %.lr.ph149.unr-lcssa ]
  %.epil.init206 = phi ptr [ %.promoted146, %.lr.ph145 ], [ %i.fk, %.lr.ph149.unr-lcssa ]
  %lcmp.mod209 = icmp ne i64 %xtraiter204, 0
  tail call void @llvm.assume(i1 %lcmp.mod209)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader203
  %indvars.iv165.epil = phi i64 [ %indvars.iv165.epil.init, %.epil.preheader203 ], [ %indvars.iv.next166.epil, %bb.j ] ; 2 uses
  %i.ea = phi ptr [ %.epil.init206, %.epil.preheader203 ], [ %i.ef, %bb.j ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader203 ], [ %epil.iter.next, %bb.j ]
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv165.epil
  %i.ec = load i64, ptr %i.eb, align 4, !tbaa !15
  store i64 %i.ec, ptr %i.ea, align 4, !tbaa !15
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store i64 %i.d, ptr %i.ed, align 4, !tbaa !15
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store i32 %3, ptr %i.ee, align 4, !tbaa !94
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 20 ; 2 uses
  %indvars.iv.next166.epil = add nuw nsw i64 %indvars.iv165.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter204
  br i1 %epil.iter.cmp.not, label %.lr.ph149, label %bb.j, !llvm.loop !297

.lr.ph149:                                        ; preds = %bb.j, %.lr.ph149.unr-lcssa
  %.lcssa197 = phi ptr [ %i.fk, %.lr.ph149.unr-lcssa ], [ %i.ef, %bb.j ]
  store ptr %.lcssa197, ptr %i.dy, align 8, !tbaa !86
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !57 ; 7 uses
  %i.ei = trunc i32 %i.eh to i16                  ; 5 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.promoted151 = load ptr, ptr %i.ej, align 8, !tbaa !88 ; 2 uses
  %i.ek = add nsw i32 %2, -2                      ; 2 uses
  %i.el = add nsw i32 %2, -3
  %xtraiter213 = and i32 %i.ek, 3                 ; 3 uses
  %i.em = icmp ult i32 %i.el, 3
  br i1 %i.em, label %.epil.preheader212, label %.lr.ph149.new

.lr.ph149.new:                                    ; preds = %.lr.ph149
  %unroll_iter220 = and i32 %i.ek, -4
  %invariant.op = add i32 2, %i.eh
  %invariant.op231 = add i32 3, %i.eh
  br label %bb.m

bb.k:                                             ; preds = %bb.k, %.lr.ph145.new
  %indvars.iv165 = phi i64 [ 0, %.lr.ph145.new ], [ %indvars.iv.next166.3, %bb.k ] ; 5 uses
  %i.en = phi ptr [ %.promoted146, %.lr.ph145.new ], [ %i.fk, %bb.k ] ; 13 uses
  %niter211 = phi i64 [ 0, %.lr.ph145.new ], [ %niter211.next.3, %bb.k ]
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv165
  %i.ep = load i64, ptr %i.eo, align 4, !tbaa !15
  store i64 %i.ep, ptr %i.en, align 4, !tbaa !15
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store i64 %i.d, ptr %i.eq, align 4, !tbaa !15
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store i32 %3, ptr %i.er, align 4, !tbaa !94
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 20
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv165
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load i64, ptr %i.eu, align 4, !tbaa !15
  store i64 %i.ev, ptr %i.es, align 4, !tbaa !15
  %i.ew = getelementptr inbounds nuw i8, ptr %i.en, i64 28
  store i64 %i.d, ptr %i.ew, align 4, !tbaa !15
  %i.ex = getelementptr inbounds nuw i8, ptr %i.en, i64 36
  store i32 %3, ptr %i.ex, align 4, !tbaa !94
  %i.ey = getelementptr inbounds nuw i8, ptr %i.en, i64 40
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv165
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fb = load i64, ptr %i.fa, align 4, !tbaa !15
  store i64 %i.fb, ptr %i.ey, align 4, !tbaa !15
  %i.fc = getelementptr inbounds nuw i8, ptr %i.en, i64 48
  store i64 %i.d, ptr %i.fc, align 4, !tbaa !15
  %i.fd = getelementptr inbounds nuw i8, ptr %i.en, i64 56
  store i32 %3, ptr %i.fd, align 4, !tbaa !94
  %i.fe = getelementptr inbounds nuw i8, ptr %i.en, i64 60
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv165
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  %i.fh = load i64, ptr %i.fg, align 4, !tbaa !15
  store i64 %i.fh, ptr %i.fe, align 4, !tbaa !15
  %i.fi = getelementptr inbounds nuw i8, ptr %i.en, i64 68
  store i64 %i.d, ptr %i.fi, align 4, !tbaa !15
  %i.fj = getelementptr inbounds nuw i8, ptr %i.en, i64 76
  store i32 %3, ptr %i.fj, align 4, !tbaa !94
  %i.fk = getelementptr inbounds nuw i8, ptr %i.en, i64 80 ; 3 uses
  %indvars.iv.next166.3 = add nuw nsw i64 %indvars.iv165, 4 ; 2 uses
  %niter211.next.3 = add i64 %niter211, 4         ; 2 uses
  %niter211.ncmp.3 = icmp eq i64 %niter211.next.3, %unroll_iter210
  br i1 %niter211.ncmp.3, label %.lr.ph149.unr-lcssa, label %bb.k, !llvm.loop !298

.unr-lcssa:                                       ; preds = %bb.m
  %lcmp.mod217.not = icmp eq i32 %xtraiter213, 0
  br i1 %lcmp.mod217.not, label %.epilog-lcssa, label %.epil.preheader212

.epil.preheader212:                               ; preds = %.unr-lcssa, %.lr.ph149
  %.epil.init216 = phi ptr [ %.promoted151, %.lr.ph149 ], [ %i.gt, %.unr-lcssa ]
  %.0148.epil.init = phi i32 [ 2, %.lr.ph149 ], [ %i.gu, %.unr-lcssa ]
  %lcmp.mod219 = icmp ne i32 %xtraiter213, 0
  tail call void @llvm.assume(i1 %lcmp.mod219)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader212
  %i.fl = phi ptr [ %.epil.init216, %.epil.preheader212 ], [ %i.fr, %bb.l ] ; 4 uses
  %.0148.epil = phi i32 [ %.0148.epil.init, %.epil.preheader212 ], [ %i.fs, %bb.l ] ; 2 uses
  %epil.iter214 = phi i32 [ 0, %.epil.preheader212 ], [ %epil.iter214.next, %bb.l ]
  store i16 %i.ei, ptr %i.fl, align 2, !tbaa !92
  %i.fm = add i32 %i.eh, %.0148.epil
  %i.fn = trunc i32 %i.fm to i16                  ; 2 uses
  %i.fo = add i16 %i.fn, -1
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 2
  store i16 %i.fo, ptr %i.fp, align 2, !tbaa !92
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  store i16 %i.fn, ptr %i.fq, align 2, !tbaa !92
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fl, i64 6 ; 2 uses
  %i.fs = add nuw nsw i32 %.0148.epil, 1
  %epil.iter214.next = add i32 %epil.iter214, 1   ; 2 uses
  %epil.iter214.cmp.not = icmp eq i32 %epil.iter214.next, %xtraiter213
  br i1 %epil.iter214.cmp.not, label %.epilog-lcssa, label %bb.l, !llvm.loop !299

.epilog-lcssa:                                    ; preds = %bb.l, %.unr-lcssa
  %.lcssa = phi ptr [ %i.gt, %.unr-lcssa ], [ %i.fr, %bb.l ]
  store ptr %.lcssa, ptr %i.ej, align 8, !tbaa !88
  %i.ft = and i32 %2, 65535
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.fv = add i32 %i.eh, %i.ft
  store i32 %i.fv, ptr %i.fu, align 4, !tbaa !57
  br label %bb.n

bb.m:                                             ; preds = %bb.m, %.lr.ph149.new
  %i.fw = phi ptr [ %.promoted151, %.lr.ph149.new ], [ %i.gt, %bb.m ] ; 13 uses
  %.0148 = phi i32 [ 2, %.lr.ph149.new ], [ %i.gu, %bb.m ] ; 5 uses
  %niter221 = phi i32 [ 0, %.lr.ph149.new ], [ %niter221.next.3, %bb.m ]
  store i16 %i.ei, ptr %i.fw, align 2, !tbaa !92
  %i.fx = add i32 %i.eh, %.0148
  %i.fy = trunc i32 %i.fx to i16                  ; 2 uses
  %i.fz = add i16 %i.fy, -1
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 2
  store i16 %i.fz, ptr %i.ga, align 2, !tbaa !92
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  store i16 %i.fy, ptr %i.gb, align 2, !tbaa !92
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fw, i64 6
  %i.gd = or disjoint i32 %.0148, 1
  store i16 %i.ei, ptr %i.gc, align 2, !tbaa !92
  %i.ge = add i32 %i.eh, %i.gd
  %i.gf = trunc i32 %i.ge to i16                  ; 2 uses
  %i.gg = add i16 %i.gf, -1
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store i16 %i.gg, ptr %i.gh, align 2, !tbaa !92
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fw, i64 10
  store i16 %i.gf, ptr %i.gi, align 2, !tbaa !92
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  store i16 %i.ei, ptr %i.gj, align 2, !tbaa !92
  %.reass = add i32 %.0148, %invariant.op
  %i.gk = trunc i32 %.reass to i16                ; 2 uses
  %i.gl = add i16 %i.gk, -1
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fw, i64 14
  store i16 %i.gl, ptr %i.gm, align 2, !tbaa !92
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  store i16 %i.gk, ptr %i.gn, align 2, !tbaa !92
  %i.go = getelementptr inbounds nuw i8, ptr %i.fw, i64 18
  store i16 %i.ei, ptr %i.go, align 2, !tbaa !92
  %.reass232 = add i32 %.0148, %invariant.op231
  %i.gp = trunc i32 %.reass232 to i16             ; 2 uses
  %i.gq = add i16 %i.gp, -1
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fw, i64 20
  store i16 %i.gq, ptr %i.gr, align 2, !tbaa !92
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fw, i64 22
  store i16 %i.gp, ptr %i.gs, align 2, !tbaa !92
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fw, i64 24 ; 3 uses
  %i.gu = add nuw nsw i32 %.0148, 4               ; 2 uses
  %niter221.next.3 = add i32 %niter221, 4         ; 2 uses
  %niter221.ncmp.3 = icmp eq i32 %niter221.next.3, %unroll_iter220
  br i1 %niter221.ncmp.3, label %.unr-lcssa, label %bb.m, !llvm.loop !300

bb.n:                                             ; preds = %bb.f, %.epilog-lcssa, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ImDrawList16_PathArcToFastExERK6ImVec2fiii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(196) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, float noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #8 align 2 {
bb.a:
end_hunk_0
