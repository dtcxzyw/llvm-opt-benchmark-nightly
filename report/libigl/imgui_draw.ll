Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui_draw?download=true
inline.NumInlined: 1179
inline.NumDeleted: 280
loop-unroll.NumCompletelyUnrolled: 238
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 283
begin_hunk_0_@_ZN10ImDrawList10PrimQuadUVERK6ImVec2S2_S2_S2_S2_S2_S2_S2_j:bb.a
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
  %6 = load ptr, ptr %i.co, align 8, !tbaa !90    ; 13 uses
  store i16 %i.dz, ptr %6, align 2, !tbaa !93
  %i.ea = trunc i32 %.0431612 to i16              ; 5 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i16 %i.ea, ptr %i.eb, align 2, !tbaa !93
  %i.ec = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  br i1 %.not449, label %bb.l, label %.thread679

bb.l:                                             ; preds = %bb.k
  %i.ee = trunc i32 %i.cw to i16
  %i.ef = insertelement <2 x i16> poison, i16 %i.ee, i64 0
  %i.eg = trunc i32 %.0431612 to i16
  %i.eh = insertelement <2 x i16> %i.ef, i16 %i.eg, i64 1
  %i.ei = shufflevector <2 x i16> %i.eh, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ej = add i16 %i.ea, 2                        ; 2 uses
  store i16 %i.ej, ptr %i.ec, align 2, !tbaa !93
  %i.ek = getelementptr inbounds nuw i8, ptr %6, i64 6
  store i16 %i.ej, ptr %i.ek, align 2, !tbaa !93
  %i.el = add <4 x i16> %i.ei, <i16 2, i16 0, i16 1, i16 1> ; 2 uses
  store <4 x i16> %i.el, ptr %i.ed, align 2, !tbaa !93
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i16 %i.ea, ptr %i.em, align 2, !tbaa !93
  %i.en = getelementptr inbounds nuw i8, ptr %6, i64 18
  store i16 %i.ea, ptr %i.en, align 2, !tbaa !93
  %i.eo = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i16 %i.dz, ptr %i.eo, align 2, !tbaa !93
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 22
  %i.eq = extractelement <4 x i16> %i.el, i64 2
  store i16 %i.eq, ptr %i.ep, align 2, !tbaa !93
  %i.er = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.er, ptr %i.co, align 8, !tbaa !90
  %exitcond638.not = icmp eq i64 %indvars.iv.next635, %wide.trip.count637
  br i1 %exitcond638.not, label %.lr.ph621, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.l, %.thread679
  br label %.backedge, !llvm.loop !98

.thread679:                                       ; preds = %bb.k
  %i.es = getelementptr inbounds nuw i8, ptr %6, i64 10
  %i.et = add i16 %i.ea, 1                        ; 2 uses
  store i16 %i.et, ptr %i.ec, align 2, !tbaa !93
  %i.eu = add i16 %i.dz, 1
  %i.ev = getelementptr inbounds nuw i8, ptr %6, i64 6
  store i16 %i.eu, ptr %i.ev, align 2, !tbaa !93
  store i16 %i.et, ptr %i.ed, align 2, !tbaa !93
  store i16 %i.dz, ptr %i.es, align 2, !tbaa !93
  %i.ew = getelementptr inbounds nuw i8, ptr %6, i64 12
  store ptr %i.ew, ptr %i.co, align 8, !tbaa !90
  %exitcond638.not681 = icmp eq i64 %indvars.iv.next635, %wide.trip.count637
  br i1 %exitcond638.not681, label %.lr.ph619, label %.backedge.backedge

.lr.ph619:                                        ; preds = %.thread679
  %i.ex = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 504
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !99
  %i.fa = sext i32 %i.q to i64
  %i.fb = getelementptr inbounds [16 x i8], ptr %i.ez, i64 %i.fa ; 2 uses
  %i.fc = load <2 x i32>, ptr %i.fb, align 4, !tbaa !9
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = load <2 x i32>, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !9
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %wide.trip.count642 = zext nneg i32 %2 to i64
  %.pre = load ptr, ptr %i.fe, align 8, !tbaa !88
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph619, %bb.m
  %i.ff = phi ptr [ %.pre, %.lr.ph619 ], [ %i.ft, %bb.m ]
  %indvars.iv639 = phi i64 [ 0, %.lr.ph619 ], [ %indvars.iv.next640, %bb.m ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv639, 4
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8
  store i64 %i.fh, ptr %i.ff, align 4
  %i.fi = load ptr, ptr %i.fe, align 8, !tbaa !88
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store <2 x i32> %i.fc, ptr %i.fj, align 4
  %i.fk = load ptr, ptr %i.fe, align 8, !tbaa !88 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  store i32 %3, ptr %i.fl, align 4, !tbaa !95
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 20
  %i.fo = load i64, ptr %i.fm, align 8
  store i64 %i.fo, ptr %i.fn, align 4
  %i.fp = load ptr, ptr %i.fe, align 8, !tbaa !88
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 28
  store <2 x i32> %i.fd, ptr %i.fq, align 4
  %i.fr = load ptr, ptr %i.fe, align 8, !tbaa !88 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 36
  store i32 %3, ptr %i.fs, align 4, !tbaa !95
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 40 ; 2 uses
  store ptr %i.ft, ptr %i.fe, align 8, !tbaa !88
  %indvars.iv.next640 = add nuw nsw i64 %indvars.iv639, 1 ; 2 uses
  %exitcond643.not = icmp eq i64 %indvars.iv.next640, %wide.trip.count642
  br i1 %exitcond643.not, label %.loopexit607, label %bb.m, !llvm.loop !100

bb.n:                                             ; preds = %.lr.ph621, %bb.n
  %i.fu = phi ptr [ %.pre666, %.lr.ph621 ], [ %i.gp, %bb.n ]
  %indvars.iv644 = phi i64 [ 0, %.lr.ph621 ], [ %indvars.iv.next645, %bb.n ] ; 3 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv644
  %i.fw = load i64, ptr %i.fv, align 4
  store i64 %i.fw, ptr %i.fu, align 4
  %i.fx = load ptr, ptr %i.cr, align 8, !tbaa !88
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store i64 %i.e, ptr %i.fy, align 4
  %i.fz = load ptr, ptr %i.cr, align 8, !tbaa !88 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store i32 %3, ptr %i.ga, align 4, !tbaa !95
  %.idx677 = shl nuw nsw i64 %indvars.iv644, 4
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx677 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 20
  %i.gd = load i64, ptr %i.gb, align 8
  store i64 %i.gd, ptr %i.gc, align 4
  %i.ge = load ptr, ptr %i.cr, align 8, !tbaa !88
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 28
  store i64 %i.e, ptr %i.gf, align 4
  %i.gg = load ptr, ptr %i.cr, align 8, !tbaa !88 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 36
  store i32 %i.n, ptr %i.gh, align 4, !tbaa !95
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 40
  %i.gk = load i64, ptr %i.gi, align 8
  store i64 %i.gk, ptr %i.gj, align 4
  %i.gl = load ptr, ptr %i.cr, align 8, !tbaa !88
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 48
  store i64 %i.e, ptr %i.gm, align 4
  %i.gn = load ptr, ptr %i.cr, align 8, !tbaa !88 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 56
  store i32 %i.n, ptr %i.go, align 4, !tbaa !95
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 60 ; 2 uses
  store ptr %i.gp, ptr %i.cr, align 8, !tbaa !88
  %indvars.iv.next645 = add nuw nsw i64 %indvars.iv644, 1 ; 2 uses
  %exitcond649.not = icmp eq i64 %indvars.iv.next645, %wide.trip.count648
  br i1 %exitcond649.not, label %.loopexit607, label %bb.n, !llvm.loop !101

bb.o:                                             ; preds = %bb.h
  %i.gq = fsub float %i.p, %i.i
  %i.gr = fmul float %i.gq, 5.000000e-01          ; 4 uses
  %i.gs = fadd float %i.i, %i.gr                  ; 2 uses
  %i.gt = load <2 x float>, ptr %i.ai, align 16, !tbaa !9
  %i.gu = shufflevector <2 x float> %i.gt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gv = load <2 x float>, ptr %1, align 4, !tbaa !9
  %i.gw = shufflevector <2 x float> %i.gv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 5 uses
  %i.gx = insertelement <4 x float> poison, float %i.gs, i64 0
  %i.gy = insertelement <4 x float> %i.gx, float %i.gr, i64 1
  %i.gz = shufflevector <4 x float> %i.gy, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ha = fmul <4 x float> %i.gz, %i.gu           ; 5 uses
  %i.hb = fadd <4 x float> %i.ha, %i.gw           ; 2 uses
  %i.hc = shufflevector <4 x float> %i.hb, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.hc, ptr %i.ak, align 8
  %i.hd = shufflevector <4 x float> %i.hb, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.he = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store <2 x float> %i.hd, ptr %i.he, align 8
  %shift = shufflevector <4 x float> %i.ha, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop689 = fsub <4 x float> %i.gw, %shift
  %shift699 = shufflevector <4 x float> %i.ha, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %foldExtExtBinop700 = fsub <4 x float> %i.gw, %shift699
  %.sroa.0.0.vec.insert.i550 = shufflevector <4 x float> %foldExtExtBinop689, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.hf = shufflevector <4 x float> %foldExtExtBinop700, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %.sroa.0.4.vec.insert.i551 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i550, <2 x float> %i.hf, <2 x i32> <i32 0, i32 3>
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <2 x float> %.sroa.0.4.vec.insert.i551, ptr %i.hg, align 8
  %foldExtExtBinop691 = fsub <4 x float> %i.gw, %i.ha
  %foldExtExtBinop693 = fsub <4 x float> %i.gw, %i.ha
  %.sroa.0.0.vec.insert.i554 = shufflevector <4 x float> %foldExtExtBinop691, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.hh = shufflevector <4 x float> %foldExtExtBinop693, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %.sroa.0.4.vec.insert.i555 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i554, <2 x float> %i.hh, <2 x i32> <i32 0, i32 3>
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store <2 x float> %.sroa.0.4.vec.insert.i555, ptr %i.hi, align 8
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bh
  %i.hk = load <2 x float>, ptr %i.bi, align 8, !tbaa !9
  %i.hl = insertelement <2 x float> poison, float %i.gs, i64 0
  %i.hm = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hn = fmul <2 x float> %i.hm, %i.hk
  %i.ho = load <2 x float>, ptr %i.hj, align 4, !tbaa !9 ; 4 uses
  %i.hp = fadd <2 x float> %i.hn, %i.ho
  %i.hq = shl nsw i32 %i.f, 2                     ; 2 uses
  %i.hr = zext nneg i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.hr
  store <2 x float> %i.hp, ptr %i.hs, align 8
  %i.ht = load <2 x float>, ptr %i.bi, align 8, !tbaa !9
  %i.hu = insertelement <2 x float> poison, float %i.gr, i64 0
  %i.hv = shufflevector <2 x float> %i.hu, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hw = fmul <2 x float> %i.hv, %i.ht
  %i.hx = fadd <2 x float> %i.ho, %i.hw
  %i.hy = zext nneg i32 %i.hq to i64
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.hy ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  store <2 x float> %i.hx, ptr %i.ia, align 8
  %i.ib = load <2 x float>, ptr %i.bi, align 8, !tbaa !9
  %i.ic = fmul <2 x float> %i.hv, %i.ib
  %i.id = fsub <2 x float> %i.ho, %i.ic
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  store <2 x float> %i.id, ptr %i.ie, align 8
  %i.if = load <2 x float>, ptr %i.bi, align 8, !tbaa !9
  %i.ig = fmul <2 x float> %i.hm, %i.if
  %i.ih = fsub <2 x float> %i.ho, %i.ig
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  store <2 x float> %i.ih, ptr %i.ii, align 8
  br label %.lr.ph625

.lr.ph625:                                        ; preds = %bb.o, %.thread601
  %i.ij = phi float [ %i.bl, %.thread601 ], [ %i.gr, %bb.o ] ; 2 uses
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
end_hunk_0
begin_hunk_1_@_Z34ImFontAtlasBuildMultiplyRectAlpha8PKhPhiiiii:bb.a
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !22
  store i8 %i.v, ptr %i.r, align 1, !tbaa !22
  %i.w = getelementptr inbounds nuw i8, ptr %.01719, i64 %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !22
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !22
  store i8 %i.ab, ptr %i.x, align 1, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %.01719, i64 %indvars.iv
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 2 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !22
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !22
  store i8 %i.ah, ptr %i.ad, align 1, !tbaa !22
  %i.ai = getelementptr inbounds nuw i8, ptr %.01719, i64 %indvars.iv
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 3 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !22
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !22
  store i8 %i.an, ptr %i.aj, align 1, !tbaa !22
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !289
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZL31ImFontAtlasBuildWithStbTruetypeP11ImFontAtlas(ptr noundef %0) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.stbtt__csctx, align 8       ; 7 uses
  %i.a = alloca [8 x i8], align 8                 ; 21 uses
  %i.b = alloca [8 x i8], align 8                 ; 25 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca [129 x float], align 16           ; 4 uses
  %.sroa.5.i.i.i.i.i.i = alloca { float, float, i32 }, align 8 ; 4 uses
  %i.e = alloca i32, align 4                      ; 19 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 3 uses
  %i.j = alloca i32, align 4                      ; 3 uses
  %2 = alloca %struct.stbtt__buf, align 8         ; 27 uses
  %3 = alloca %struct.stbtt__buf, align 8         ; 10 uses
  %i.k = alloca i32, align 4                      ; 6 uses
  %i.l = alloca i32, align 4                      ; 6 uses
  %i.m = alloca i32, align 4                      ; 6 uses
  %i.n = alloca i32, align 4                      ; 6 uses
  %4 = alloca %struct.ImVector.13, align 8        ; 13 uses
  %5 = alloca %struct.ImVector.14, align 8        ; 11 uses
  %6 = alloca %struct.ImVector.11, align 8        ; 11 uses
  %7 = alloca %struct.ImVector.16, align 8        ; 9 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  %i.p = alloca i32, align 4                      ; 4 uses
  %i.q = alloca i32, align 4                      ; 4 uses
  %i.r = alloca i32, align 4                      ; 4 uses
  %i.s = alloca [256 x i8], align 16              ; 8 uses
  tail call void @_Z20ImFontAtlasBuildInitP11ImFontAtlas(ptr noundef %0)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.t, align 8, !tbaa !290
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !204  ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.y)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !205 ; 2 uses
  %.not2.i = icmp eq ptr %i.aa, null
  br i1 %.not2.i, label %_ZN11ImFontAtlas12ClearTexDataEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.aa)
  br label %_ZN11ImFontAtlas12ClearTexDataEv.exit

_ZN11ImFontAtlas12ClearTexDataEv.exit:            ; preds = %bb.c, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 0, ptr %i.ab, align 2, !tbaa !206
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !212 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.af = icmp sgt i32 %i.ad, 0
  br i1 %i.af, label %_ZNK8ImVectorI18ImFontBuildSrcDataE14_grow_capacityEi.exit.i, label %bb.e

_ZNK8ImVectorI18ImFontBuildSrcDataE14_grow_capacityEi.exit.i: ; preds = %_ZN11ImFontAtlas12ClearTexDataEv.exit
  %i.ag = tail call i32 @llvm.umax.i32(i32 %i.ad, i32 8) ; 2 uses
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = mul nuw nsw i64 %i.ah, 272
  %i.aj = invoke noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.ai)
          to label %.noexc353 unwind label %bb.g  ; 2 uses

.noexc353:                                        ; preds = %_ZNK8ImVectorI18ImFontBuildSrcDataE14_grow_capacityEi.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !291
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !294
  br label %bb.e

bb.e:                                             ; preds = %.noexc353, %_ZN11ImFontAtlas12ClearTexDataEv.exit
  %i.al = phi ptr [ %i.aj, %.noexc353 ], [ null, %_ZN11ImFontAtlas12ClearTexDataEv.exit ]
  store i32 %i.ad, ptr %4, align 8, !tbaa !295
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !213 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.ap = icmp sgt i32 %i.an, 0
  br i1 %i.ap, label %_ZNK8ImVectorI18ImFontBuildDstDataE14_grow_capacityEi.exit.i, label %bb.f

_ZNK8ImVectorI18ImFontBuildDstDataE14_grow_capacityEi.exit.i: ; preds = %bb.e
  %i.aq = tail call i32 @llvm.umax.i32(i32 %i.an, i32 8) ; 2 uses
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 5
  %i.at = invoke noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.as)
          to label %.noexc357 unwind label %bb.g  ; 2 uses

.noexc357:                                        ; preds = %_ZNK8ImVectorI18ImFontBuildDstDataE14_grow_capacityEi.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.at, ptr %i.au, align 8, !tbaa !296
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !299
  br label %bb.f

bb.f:                                             ; preds = %.noexc357, %bb.e
  %i.av = phi ptr [ %i.at, %.noexc357 ], [ null, %bb.e ] ; 2 uses
  store i32 %i.an, ptr %5, align 8, !tbaa !300
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  %i.ax = mul nsw i32 %i.ad, 272
  %i.ay = sext i32 %i.ax to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.al, i8 0, i64 %i.ay, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ba = shl nsw i32 %i.an, 5
  %i.bb = sext i32 %i.ba to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.av, i8 0, i64 %i.bb, i1 false)
  %i.bc = load i32, ptr %i.ac, align 8, !tbaa !212
  %.not317610 = icmp slt i32 %i.bc, 1
  br i1 %.not317610, label %.critedge340.preheader, label %.lr.ph615

.lr.ph615:                                        ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 16 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %.sroa.419.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.h

.critedge340.preheader.loopexit:                  ; preds = %._crit_edge
  %.pre = load i32, ptr %4, align 8, !tbaa !295
  br label %.critedge340.preheader

.critedge340.preheader:                           ; preds = %.critedge340.preheader.loopexit, %bb.f
  %i.bh = phi ptr [ %i.afx, %.critedge340.preheader.loopexit ], [ %i.av, %bb.f ] ; 4 uses
  %i.bi = phi i32 [ %.pre, %.critedge340.preheader.loopexit ], [ %i.ad, %bb.f ] ; 3 uses
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %.lr.ph633.preheader, label %.preheader548

.lr.ph633.preheader:                              ; preds = %.critedge340.preheader
  %.pre765.a = load ptr, ptr %i.aw, align 8, !tbaa !291
  %i.bk = zext nneg i32 %i.bi to i64
  br label %.lr.ph633

bb.g:                                             ; preds = %_ZNK8ImVectorI18ImFontBuildDstDataE14_grow_capacityEi.exit.i, %_ZNK8ImVectorI18ImFontBuildSrcDataE14_grow_capacityEi.exit.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.si

bb.h:                                             ; preds = %.lr.ph615, %._crit_edge
  %indvars.iv726 = phi i64 [ 0, %.lr.ph615 ], [ %indvars.iv.next727, %._crit_edge ] ; 3 uses
  %i.bm = load ptr, ptr %i.aw, align 8, !tbaa !291
  %i.bn = getelementptr inbounds nuw [272 x i8], ptr %i.bm, i64 %indvars.iv726 ; 28 uses
  %i.bo = load ptr, ptr %i.bd, align 8, !tbaa !201
  %i.bp = getelementptr inbounds nuw [136 x i8], ptr %i.bo, i64 %indvars.iv726 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 224 ; 3 uses
  store i32 -1, ptr %i.bq, align 8, !tbaa !301
  %i.br = load i32, ptr %i.am, align 8, !tbaa !213 ; 2 uses
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %.lr.ph, label %.critedge337

.lr.ph:                                           ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 128
  %wide.trip.count = zext nneg i32 %i.br to i64
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !251
  %i.bv = load ptr, ptr %i.be, align 8, !tbaa !203
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.l
  %.pr764 = phi i32 [ -1, %.lr.ph ], [ %.pr763, %bb.l ]
  %8 = phi i32 [ -1, %.lr.ph ], [ %i.cc, %bb.l ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %i.bw = icmp eq i32 %8, -1
  br i1 %i.bw, label %bb.j, label %.critedge.thread

.critedge:                                        ; preds = %bb.l
  %i.bx = icmp eq i32 %.pr763, -1
  br i1 %i.bx, label %.critedge337, label %.critedge.thread

bb.j:                                             ; preds = %bb.i
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !209
  %i.ca = icmp eq ptr %i.bu, %i.bz
  br i1 %i.ca, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cb = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  store i32 %i.cb, ptr %i.bq, align 8, !tbaa !301
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.pr763 = phi i32 [ %.pr764, %bb.j ], [ %i.cb, %bb.k ] ; 2 uses
  %i.cc = phi i32 [ -1, %bb.j ], [ %i.cb, %bb.k ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.i, !llvm.loop !310

.critedge.thread:                                 ; preds = %bb.i, %.critedge
  %i.cd = load ptr, ptr %i.bp, align 8, !tbaa !215 ; 37 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !311 ; 3 uses
  %i.cg = load i8, ptr %i.cd, align 1, !tbaa !22
  switch i8 %i.cg, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit [
    i8 49, label %bb.m
    i8 116, label %bb.p
    i8 79, label %bb.s
    i8 0, label %bb.v
  ]

bb.m:                                             ; preds = %.critedge.thread
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !22
  %i.cj = icmp eq i8 %i.ci, 0
  br i1 %i.cj, label %bb.n, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit

bb.n:                                             ; preds = %bb.m
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !22
  %i.cm = icmp eq i8 %i.cl, 0
  br i1 %i.cm, label %bb.o, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit

bb.o:                                             ; preds = %bb.n
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 3
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !22
  %i.cp = icmp eq i8 %i.co, 0
  br i1 %i.cp, label %bb.aa, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit

bb.p:                                             ; preds = %.critedge.thread
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !22
  switch i8 %i.cr, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit [
    i8 121, label %bb.q
    i8 114, label %bb.y
    i8 116, label %bb.ab
  ]

bb.q:                                             ; preds = %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !22
  %i.cu = icmp eq i8 %i.ct, 112
  br i1 %i.cu, label %bb.r, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit

bb.r:                                             ; preds = %bb.q
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cd, i64 3
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !22
  %i.cx = icmp eq i8 %i.cw, 49
  br i1 %i.cx, label %bb.aa, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit

bb.s:                                             ; preds = %.critedge.thread
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !22
  %i.da = icmp eq i8 %i.cz, 84
  br i1 %i.da, label %bb.t, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit

bb.t:                                             ; preds = %bb.s
  %i.db = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !22
  %i.dd = icmp eq i8 %i.dc, 84
  br i1 %i.dd, label %bb.u, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit

bb.u:                                             ; preds = %bb.t
  %i.de = getelementptr inbounds nuw i8, ptr %i.cd, i64 3
  %i.df = load i8, ptr %i.de, align 1, !tbaa !22
  %i.dg = icmp eq i8 %i.df, 79
  br i1 %i.dg, label %bb.aa, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit

bb.v:                                             ; preds = %.critedge.thread
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !22
  %i.dj = icmp eq i8 %i.di, 1
  br i1 %i.dj, label %bb.w, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit

bb.w:                                             ; preds = %bb.v
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !22
  %i.dm = icmp eq i8 %i.dl, 0
  br i1 %i.dm, label %bb.x, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit

bb.x:                                             ; preds = %bb.w
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cd, i64 3
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !22
  %i.dp = icmp eq i8 %i.do, 0
  br i1 %i.dp, label %bb.aa, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit

bb.y:                                             ; preds = %bb.p
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !22
  %i.ds = icmp eq i8 %i.dr, 117
  br i1 %i.ds, label %bb.z, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit

bb.z:                                             ; preds = %bb.y
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cd, i64 3
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !22
  %i.dv = icmp eq i8 %i.du, 101
  br i1 %i.dv, label %bb.aa, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.u, %bb.r, %bb.o
  %i.dw = icmp ne i32 %i.cf, 0
  %i.dx = sext i1 %i.dw to i32
  br label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit

bb.ab:                                            ; preds = %bb.p
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !22
  %i.ea = icmp eq i8 %i.dz, 99
  br i1 %i.ea, label %bb.ac, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit

bb.ac:                                            ; preds = %bb.ab
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cd, i64 3
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !22
  %i.ed = icmp eq i8 %i.ec, 102
  br i1 %i.ed, label %bb.ad, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit

bb.ad:                                            ; preds = %bb.ac
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.ef = load i32, ptr %i.ee, align 1
  %i.eg = tail call i32 @llvm.bswap.i32(i32 %i.ef)
  switch i32 %i.eg, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit [
    i32 65536, label %bb.ae
    i32 131072, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.ei = load i32, ptr %i.eh, align 1
  %i.ej = tail call i32 @llvm.bswap.i32(i32 %i.ei)
  %.not14.i.i = icmp slt i32 %i.cf, %i.ej
  br i1 %.not14.i.i, label %bb.af, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit

bb.af:                                            ; preds = %bb.ae
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.el = shl nsw i32 %i.cf, 2
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds i8, ptr %i.ek, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 1
  %i.ep = tail call i32 @llvm.bswap.i32(i32 %i.eo)
  br label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit

_ZL27stbtt_GetFontOffsetForIndexPKhi.exit:        ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %.critedge.thread
  %.1.i.i = phi i32 [ %i.dx, %bb.aa ], [ -1, %bb.ae ], [ %i.ep, %bb.af ], [ -1, %bb.ad ], [ -1, %bb.ac ], [ -1, %bb.ab ], [ -1, %bb.p ], [ -1, %bb.m ], [ -1, %bb.x ], [ -1, %bb.w ], [ -1, %bb.v ], [ -1, %bb.u ], [ -1, %bb.t ], [ -1, %bb.s ], [ -1, %bb.o ], [ -1, %bb.n ], [ -1, %.critedge.thread ], [ -1, %bb.q ], [ -1, %bb.r ], [ -1, %bb.y ], [ -1, %bb.z ] ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.cd, ptr %i.eq, align 8, !tbaa !312
  %i.er = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i32 %.1.i.i, ptr %i.er, align 8, !tbaa !313
  %i.es = getelementptr inbounds nuw i8, ptr %i.bn, i64 64 ; 3 uses
  %.sroa.436.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 72
  %i.et = zext i32 %.1.i.i to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.et ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 4 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.es, i8 0, i64 16, i1 false)
  %.val.i.i.i = load i8, ptr %i.ev, align 1, !tbaa !22
  %i.ew = getelementptr i8, ptr %i.eu, i64 5      ; 9 uses
  %.val25.i.i.i = load i8, ptr %i.ew, align 1, !tbaa !22
  %i.ex = zext i8 %.val.i.i.i to i32
  %i.ey = shl nuw nsw i32 %i.ex, 8
  %i.ez = zext i8 %.val25.i.i.i to i32
  %i.fa = or disjoint i32 %i.ey, %i.ez            ; 2 uses
  %i.fb = add i32 %.1.i.i, 12                     ; 10 uses
  %.not.i.i.i = icmp eq i32 %i.fa, 0
  br i1 %.not.i.i.i, label %_ZL17stbtt__find_tablePhjPKc.exit145.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit
  %wide.trip.count.i.i.i = zext nneg i32 %i.fa to i64 ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.al, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.al ] ; 2 uses
  %indvars.iv.tr.i.i.i = trunc i64 %indvars.iv.i.i.i to i32
  %i.fc = shl i32 %indvars.iv.tr.i.i.i, 4
  %i.fd = add i32 %i.fc, %i.fb
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.fe ; 5 uses
end_hunk_1
