Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/DetourDebugDraw?download=true
inline.NumInlined: 72
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_Z22duDebugDrawNavMeshPolyP11duDebugDrawRK9dtNavMeshjj:bb.a
  %i.al = load float, ptr %i.ak, align 4, !tbaa !71
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.an = load float, ptr %i.am, align 4, !tbaa !71
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !71
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !71
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 30
  %i.at = load i8, ptr %i.as, align 2, !tbaa !77
  %i.au = and i8 %i.at, 1
  %.not42 = icmp eq i8 %i.au, 0
  %i.av = select i1 %.not42, float 0.000000e+00, float 6.000000e-01
  call void @_Z11duAppendArcP11duDebugDrawfffffffffj(ptr noundef nonnull %0, float noundef %i.ah, float noundef %i.aj, float noundef %i.al, float noundef %i.an, float noundef %i.ap, float noundef %i.ar, float noundef 2.500000e-01, float noundef %i.av, float noundef 6.000000e-01, i32 noundef %i.i) #4
  br label %._crit_edge

bb.e:                                             ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !53
  %i.ay = and i64 %i.q, 4294967295
  %i.az = getelementptr inbounds nuw [12 x i8], ptr %i.ax, i64 %i.ay ; 5 uses
  %i.ba = load ptr, ptr %0, align 8, !tbaa !27
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 2, float noundef 1.000000e+00) #4, !call_target !37
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 9 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !58
  %.not45 = icmp eq i8 %i.be, 0
  br i1 %.not45, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.o
  %.03844 = phi i32 [ 0, %.lr.ph ], [ %i.em, %bb.o ] ; 2 uses
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !126 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !59
  %i.bj = load i32, ptr %i.bf, align 4, !tbaa !60
  %i.bk = add i32 %i.bj, %.03844
  %i.bl = shl i32 %i.bk, 2
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bm ; 3 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !61  ; 3 uses
  %i.bp = load ptr, ptr %i.b, align 8, !tbaa !127 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 30
  %i.br = load i8, ptr %i.bq, align 2, !tbaa !62  ; 2 uses
  %i.bs = icmp ult i8 %i.bo, %i.br
  %i.bt = load ptr, ptr %0, align 8, !tbaa !27
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bv = load ptr, ptr %i.bu, align 8
  br i1 %i.bs, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !63
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.bz = zext i8 %i.bo to i64
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %i.bz
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !64
  %i.cc = zext i16 %i.cb to i64
  %.idx = mul nuw nsw i64 %i.cc, 12
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.idx
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !65
  %i.cg = load i32, ptr %i.az, align 4, !tbaa !66
  %narrow = sub nuw i8 %i.bo, %i.br
  %i.ch = zext i8 %narrow to i32
  %i.ci = add i32 %i.cg, %i.ch
  %i.cj = mul i32 %i.ci, 3
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ck
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sink = phi ptr [ %i.cd, %bb.g ], [ %i.cl, %bb.h ]
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.sink, i32 noundef %i.i) #4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !61  ; 3 uses
  %i.co = load ptr, ptr %i.b, align 8, !tbaa !127 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 30
  %i.cq = load i8, ptr %i.cp, align 2, !tbaa !62  ; 2 uses
  %i.cr = icmp ult i8 %i.cn, %i.cq
  %i.cs = load ptr, ptr %i.a, align 8, !tbaa !126 ; 2 uses
  br i1 %i.cr, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !65
  %i.cv = load i32, ptr %i.az, align 4, !tbaa !66
  %narrow.1 = sub nuw i8 %i.cn, %i.cq
  %i.cw = zext i8 %narrow.1 to i32
  %i.cx = add i32 %i.cv, %i.cw
  %i.cy = mul i32 %i.cx, 3
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.cz
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !63
  %i.dd = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.de = zext i8 %i.cn to i64
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.dd, i64 %i.de
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !64
  %i.dh = zext i16 %i.dg to i64
  %.idx.1 = mul nuw nsw i64 %i.dh, 12
  %i.di = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.idx.1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink56 = phi ptr [ %i.di, %bb.k ], [ %i.da, %bb.j ]
  %i.dj = load ptr, ptr %0, align 8, !tbaa !27
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.sink56, i32 noundef %i.i) #4
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !61  ; 3 uses
  %i.do = load ptr, ptr %i.b, align 8, !tbaa !127 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 30
  %i.dq = load i8, ptr %i.dp, align 2, !tbaa !62  ; 2 uses
  %i.dr = icmp ult i8 %i.dn, %i.dq
  %i.ds = load ptr, ptr %i.a, align 8, !tbaa !126 ; 2 uses
  br i1 %i.dr, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 48
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !65
  %i.dv = load i32, ptr %i.az, align 4, !tbaa !66
  %narrow.2 = sub nuw i8 %i.dn, %i.dq
  %i.dw = zext i8 %narrow.2 to i32
  %i.dx = add i32 %i.dv, %i.dw
  %i.dy = mul i32 %i.dx, 3
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.dz
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !63
  %i.ed = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.ee = zext i8 %i.dn to i64
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.ed, i64 %i.ee
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !64
  %i.eh = zext i16 %i.eg to i64
  %.idx.2 = mul nuw nsw i64 %i.eh, 12
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 %.idx.2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sink60 = phi ptr [ %i.ei, %bb.n ], [ %i.ea, %bb.m ]
  %i.ej = load ptr, ptr %0, align 8, !tbaa !27
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 40
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.sink60, i32 noundef %i.i) #4
  %i.em = add nuw nsw i32 %.03844, 1              ; 2 uses
  %i.en = load i8, ptr %i.bd, align 1, !tbaa !58
  %i.eo = zext i8 %i.en to i32
  %i.ep = icmp samesign ult i32 %i.em, %i.eo
  br i1 %i.ep, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.o, %bb.e, %bb.d
  %i.eq = load ptr, ptr %0, align 8, !tbaa !27
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 72
  %i.es = load ptr, ptr %i.er, align 8
  call void %i.es(ptr noundef nonnull align 8 dereferenceable(8) %0) #4
  %i.et = load ptr, ptr %0, align 8, !tbaa !27
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8
  call void %i.ev(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true) #4, !call_target !33
  br label %bb.p

bb.p:                                             ; preds = %bb.b, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %bb.p
  ret void
}

declare noundef i32 @_ZNK9dtNavMesh19getTileAndPolyByRefEjPPK10dtMeshTilePPK6dtPoly(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_Z11duAppendArcP11duDebugDrawfffffffffj(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @_Z30duDebugDrawTileCacheLayerAreasP11duDebugDrawRK16dtTileCacheLayerff(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !84     ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load i8, ptr %i.b, align 4, !tbaa !86    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 49
  %i.e = load i8, ptr %i.d, align 1, !tbaa !87    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load i32, ptr %i.g, align 4, !tbaa !88
  %i.i = add nsw i32 %i.h, 1
  %i.j = tail call noundef i32 @_Z10duIntToColii(i32 noundef %i.i, i32 noundef 255) #4 ; 6 uses
  %i.k = load float, ptr %i.f, align 4, !tbaa !71
  %i.l = load ptr, ptr %1, align 8, !tbaa !84     ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 50
  %i.n = load i8, ptr %i.m, align 2, !tbaa !89
  %i.o = uitofp i8 %i.n to float
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !71
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.s = load float, ptr %i.r, align 4, !tbaa !71
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  %i.u = load i8, ptr %i.t, align 4, !tbaa !90
  %i.v = uitofp i8 %i.u to float
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 51
  %i.x = load i8, ptr %i.w, align 1, !tbaa !91
  %i.y = zext i8 %i.x to i32
  %i.z = add nuw nsw i32 %i.y, 1
  %i.aa = uitofp nneg i32 %i.z to float
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !71
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 53
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !92
  %i.af = zext i8 %i.ae to i32
  %i.ag = add nuw nsw i32 %i.af, 1
  %i.ah = uitofp nneg i32 %i.ag to float
  %i.ai = insertelement <4 x float> poison, float %i.o, i64 0
  %i.aj = insertelement <4 x float> %i.ai, float %i.v, i64 1
  %i.ak = insertelement <4 x float> %i.aj, float %i.aa, i64 2
  %i.al = insertelement <4 x float> %i.ak, float %i.ah, i64 3
  %i.am = insertelement <4 x float> poison, float %2, i64 0
  %i.an = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ao = insertelement <4 x float> poison, float %i.k, i64 0
  %i.ap = insertelement <4 x float> %i.ao, float %i.s, i64 1
  %i.aq = shufflevector <4 x float> %i.ap, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ar = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.an, <4 x float> %i.aq) ; 4 uses
  %i.as = and i32 %i.j, 16777215
  %i.at = or disjoint i32 %i.as, -2147483648
  %i.au = extractelement <4 x float> %i.ar, i64 0
  %i.av = extractelement <4 x float> %i.ar, i64 1
  %i.aw = extractelement <4 x float> %i.ar, i64 2
  %i.ax = extractelement <4 x float> %i.ar, i64 3
  tail call void @_Z18duDebugDrawBoxWireP11duDebugDrawffffffjf(ptr noundef %0, float noundef %i.au, float noundef %i.q, float noundef %i.av, float noundef %i.aw, float noundef %i.ac, float noundef %i.ax, i32 noundef %i.at, float noundef 2.000000e+00) #4
  %i.ay = load ptr, ptr %0, align 8, !tbaa !27
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 3, float noundef 1.000000e+00) #4, !call_target !37
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %._crit_edge113.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %.not114 = icmp eq i8 %i.c, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bd = trunc i32 %i.j to i16                   ; 2 uses
  %i.be = and i16 %i.bd, 255
  %.lhs.trunc103 = mul nuw i16 %i.be, 223
  %i.bf = udiv i16 %.lhs.trunc103, 255
  %.zext104 = zext nneg i16 %i.bf to i32          ; 2 uses
  %i.bg = lshr i16 %i.bd, 8
  %4 = lshr i32 %i.j, 24                          ; 2 uses
  %5 = lshr i32 %i.j, 16                          ; 2 uses
  %6 = lshr i32 %i.j, 8
  %i.bh = trunc nuw i32 %5 to i16
  %i.bi = and i16 %i.bh, 255
  %7 = trunc nuw nsw i32 %4 to i16
  %8 = insertelement <4 x i16> poison, i16 %i.bg, i64 0
  %9 = insertelement <4 x i16> %8, i16 %i.bi, i64 1
  %10 = insertelement <4 x i16> %9, i16 %7, i64 2
  %11 = mul nuw <4 x i16> %10, <i16 223, i16 223, i16 223, i16 poison> ; 2 uses
  %12 = shufflevector <4 x i16> %11, <4 x i16> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %13 = extractelement <4 x i16> %11, i64 0
  %14 = udiv i16 %13, 255
  %.zext106 = zext nneg i16 %14 to i32
  %15 = shl nuw nsw i32 %.zext106, 8
  %16 = add nuw <4 x i16> %12, <i16 6144, i16 0, i16 2048, i16 8160>
  %i.bj = udiv <4 x i16> %16, splat (i16 255)     ; 4 uses
  %17 = extractelement <4 x i16> %i.bj, i64 0
  %.zext98 = zext nneg i16 %17 to i32
  %18 = shl nuw nsw i32 %.zext98, 8
  %i.bk = extractelement <4 x i16> %i.bj, i64 1
  %.zext108 = zext nneg i16 %i.bk to i32
  %i.bl = extractelement <4 x i16> %i.bj, i64 2
  %.zext110 = zext nneg i16 %i.bl to i32
  %i.bm = shl nuw nsw i32 %.zext108, 16
  %i.bn = or i32 %15, %i.bm
  %i.bo = or i32 %i.bn, %.zext104
  %i.bp = shl nuw i32 %.zext110, 24               ; 2 uses
  %i.bq = or i32 %i.bo, %i.bp
  %i.br = extractelement <4 x i16> %i.bj, i64 3
  %.zext100.a = zext nneg i16 %i.br to i32
  %19 = shl nuw nsw i32 %.zext100.a, 16
  %20 = or i32 %18, %19
  %21 = or i32 %20, %.zext104
  %22 = or i32 %21, %i.bp
  %23 = and i32 %5, 255
  %24 = and i32 %6, 255
  %25 = and i32 %i.j, 255
  %26 = mul nuw nsw i32 %25, 223
  %27 = mul nuw nsw i32 %24, 223
  %28 = mul nuw nsw i32 %23, 223
  %29 = mul nuw nsw i32 %4, 223
  br i1 %.not114, label %._crit_edge113.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bs = zext i8 %i.c to i64                     ; 2 uses
  %wide.trip.count119 = zext i8 %i.e to i64
  %i.bt = insertelement <2 x float> poison, float %3, i64 0
  %i.bu = insertelement <2 x float> %i.bt, float %2, i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv116 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next117, %._crit_edge ] ; 3 uses
  %i.bv = mul nuw nsw i64 %indvars.iv116, %i.bs
  %i.bw = trunc nuw nsw i64 %indvars.iv116 to i32
  %i.bx = uitofp nneg i32 %i.bw to float
  %i.by = insertelement <2 x float> poison, float %i.bx, i64 1
  br label %bb.b

._crit_edge113.split:                             ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  %i.bz = load ptr, ptr %0, align 8, !tbaa !27
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 72
  %i.cb = load ptr, ptr %i.ca, align 8
  tail call void %i.cb(ptr noundef nonnull align 8 dereferenceable(8) %0) #4, !call_target !48
  tail call fastcc void @_ZL25debugDrawTileCachePortalsP11duDebugDrawRK16dtTileCacheLayerff(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(48) %1, float noundef %2, float noundef %3)
  ret void

._crit_edge:                                      ; preds = %bb.g
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %exitcond120.not = icmp eq i64 %indvars.iv.next117, %wide.trip.count119
  br i1 %exitcond120.not, label %._crit_edge113.split, label %.preheader

bb.b:                                             ; preds = %.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.cc = add nuw nsw i64 %indvars.iv, %i.bv      ; 2 uses
  %i.cd = load ptr, ptr %i.bb, align 8, !tbaa !93
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cc
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !61  ; 2 uses
  %i.cg = zext i8 %i.cf to i32
  %i.ch = icmp eq i8 %i.cf, -1
  br i1 %i.ch, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ci = load ptr, ptr %i.bc, align 8, !tbaa !128
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cc
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !61  ; 2 uses
  switch i8 %i.ck, label %bb.e [
    i8 63, label %bb.f
    i8 0, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.cl = zext i8 %i.ck to i32
  %i.cm = load ptr, ptr %0, align 8, !tbaa !27
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 80
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = tail call noundef i32 %i.co(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.cl) #4, !call_target !56 ; 4 uses
  %i.cq = lshr i32 %i.cp, 19
  %i.cr = lshr i32 %i.cp, 11
  %i.cs = lshr i32 %i.cp, 3
  %i.ct = shl i32 %i.cp, 5
  %30 = and i32 %i.cq, 8160
  %31 = and i32 %i.cr, 8160
  %32 = and i32 %i.cs, 8160
  %33 = and i32 %i.ct, 8160
  %34 = add nuw nsw i32 %30, %29
  %35 = add nuw nsw i32 %31, %28
  %36 = add nuw nsw i32 %32, %27
  %37 = add nuw nsw i32 %33, %26
  %.lhs.trunc93 = trunc i32 %34 to i16
  %.lhs.trunc91 = trunc i32 %35 to i16
  %.lhs.trunc89 = trunc i32 %36 to i16
  %.lhs.trunc = trunc i32 %37 to i16
  %38 = insertelement <4 x i16> poison, i16 %.lhs.trunc, i64 0
  %39 = insertelement <4 x i16> %38, i16 %.lhs.trunc89, i64 1
  %40 = insertelement <4 x i16> %39, i16 %.lhs.trunc91, i64 2
  %41 = insertelement <4 x i16> %40, i16 %.lhs.trunc93, i64 3
  %i.cu = udiv <4 x i16> %41, splat (i16 255)
  %i.cv = zext nneg <4 x i16> %i.cu to <4 x i32>
  %i.cw = shl nuw <4 x i32> %i.cv, <i32 0, i32 8, i32 16, i32 24>
  %i.cx = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.cw)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.0 = phi i32 [ %i.cx, %bb.e ], [ %i.bq, %bb.d ], [ %22, %bb.c ] ; 4 uses
  %i.cy = load float, ptr %i.f, align 4, !tbaa !71
  %i.cz = trunc nuw nsw i64 %indvars.iv to i32
  %i.da = uitofp nneg i32 %i.cz to float
  %i.db = tail call float @llvm.fmuladd.f32(float %i.da, float %2, float %i.cy) ; 3 uses
  %i.dc = add nuw nsw i32 %i.cg, 1
  %i.dd = uitofp nneg i32 %i.dc to float
  %i.de = load <2 x float>, ptr %i.p, align 4, !tbaa !71
  %i.df = insertelement <2 x float> %i.by, float %i.dd, i64 0
  %i.dg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> %i.bu, <2 x float> %i.de) ; 2 uses
  %i.dh = load ptr, ptr %0, align 8, !tbaa !27
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = extractelement <2 x float> %i.dg, i64 0 ; 4 uses
  %i.dl = extractelement <2 x float> %i.dg, i64 1 ; 3 uses
  tail call void %i.dj(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.db, float noundef %i.dk, float noundef %i.dl, i32 noundef %.0) #4, !call_target !75
  %i.dm = fadd float %2, %i.dl                    ; 2 uses
  %i.dn = load ptr, ptr %0, align 8, !tbaa !27
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  %i.dp = load ptr, ptr %i.do, align 8
  tail call void %i.dp(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.db, float noundef %i.dk, float noundef %i.dm, i32 noundef %.0) #4, !call_target !75
  %i.dq = fadd float %2, %i.db                    ; 2 uses
  %i.dr = load ptr, ptr %0, align 8, !tbaa !27
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 48
  %i.dt = load ptr, ptr %i.ds, align 8
  tail call void %i.dt(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.dq, float noundef %i.dk, float noundef %i.dm, i32 noundef %.0) #4, !call_target !75
  %i.du = load ptr, ptr %0, align 8, !tbaa !27
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 48
  %i.dw = load ptr, ptr %i.dv, align 8
  tail call void %i.dw(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.dq, float noundef %i.dk, float noundef %i.dl, i32 noundef %.0) #4, !call_target !75
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.bs
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

declare noundef i32 @_Z10duIntToColii(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare void @_Z18duDebugDrawBoxWireP11duDebugDrawffffffjf(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @_ZL25debugDrawTileCachePortalsP11duDebugDrawRK16dtTileCacheLayerff(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, float noundef %2, float noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !84     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load i8, ptr %i.b, align 4, !tbaa !86    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 49
  %i.e = load i8, ptr %i.d, align 1, !tbaa !87    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 4 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 1, float noundef 2.000000e+00) #4, !call_target !37
  %.not63 = icmp eq i8 %i.e, 0
  br i1 %.not63, label %._crit_edge62.split, label %.preheader58.lr.ph

.preheader58.lr.ph:                               ; preds = %bb.a
  %.not64 = icmp eq i8 %i.c, 0
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  br i1 %.not64, label %._crit_edge62.split, label %.preheader58.preheader

.preheader58.preheader:                           ; preds = %.preheader58.lr.ph
  %i.l = zext i8 %i.c to i64                      ; 2 uses
  %wide.trip.count70 = zext i8 %i.e to i64
  %i.m = insertelement <4 x float> poison, float %2, i64 0
  %i.n = insertelement <4 x float> %i.m, float %3, i64 1
  %i.o = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0> ; 4 uses
  br label %.preheader58

.preheader58:                                     ; preds = %.preheader58.preheader, %._crit_edge
  %indvars.iv67 = phi i64 [ 0, %.preheader58.preheader ], [ %indvars.iv.next68, %._crit_edge ] ; 6 uses
  %i.p = mul nuw nsw i64 %indvars.iv67, %i.l
  %i.q = trunc nuw nsw i64 %indvars.iv67 to i32
  %i.r = sitofp i32 %i.q to float
  %i.s = trunc i64 %indvars.iv67 to i32
  %i.t = add i32 %i.s, 1
  %i.u = sitofp i32 %i.t to float
  %i.v = trunc i64 %indvars.iv67 to i32
  %i.w = insertelement <2 x i32> poison, i32 %i.v, i64 0
  %i.x = add <2 x i32> %i.w, <i32 1, i32 poison>
  %i.y = sitofp <2 x i32> %i.x to <2 x float>     ; 2 uses
  %i.z = trunc i64 %indvars.iv67 to i32
  %i.aa = insertelement <2 x i32> poison, i32 %i.z, i64 0
  %i.ab = shufflevector <2 x i32> %i.aa, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.ac = sitofp <4 x i32> %i.ab to <4 x float>   ; 2 uses
  %i.ad = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.ae = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.af = insertelement <4 x float> poison, float %i.r, i64 2
  %i.ag = insertelement <4 x float> %i.af, float %i.u, i64 3
  %i.ah = shufflevector <4 x float> %i.ae, <4 x float> %i.ac, <4 x i32> <i32 poison, i32 poison, i32 2, i32 4>
  br label %bb.b

._crit_edge62.split:                              ; preds = %._crit_edge, %.preheader58.lr.ph, %bb.a
  %i.ai = load ptr, ptr %0, align 8, !tbaa !27
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %0) #4, !call_target !48
  ret void

._crit_edge:                                      ; preds = %.loopexit
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %exitcond71.not = icmp eq i64 %indvars.iv.next68, %wide.trip.count70
  br i1 %exitcond71.not, label %._crit_edge62.split, label %.preheader58

bb.b:                                             ; preds = %.preheader58, %.loopexit
  %indvars.iv = phi i64 [ 0, %.preheader58 ], [ %indvars.iv.next, %.loopexit ] ; 8 uses
  %i.al = add nuw nsw i64 %indvars.iv, %i.p       ; 5 uses
  %i.am = load ptr, ptr %i.j, align 8, !tbaa !93
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !61  ; 2 uses
  %i.ap = icmp eq i8 %i.ao, -1
  br i1 %i.ap, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.aq = zext i8 %i.ao to i32
  %i.ar = add nuw nsw i32 %i.aq, 2
  %i.as = uitofp nneg i32 %i.ar to float          ; 4 uses
  %i.at = load ptr, ptr %i.k, align 8, !tbaa !129
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.al
  %i.av = load i8, ptr %i.au, align 1, !tbaa !61
  %i.aw = zext i8 %i.av to i32                    ; 2 uses
  %i.ax = and i32 %i.aw, 16
  %.not = icmp eq i32 %i.ax, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.ay = trunc nuw nsw i64 %indvars.iv to i32
  %i.az = sitofp i32 %i.ay to float
  %i.ba = load <3 x float>, ptr %i.f, align 4, !tbaa !71
  %i.bb = shufflevector <3 x float> %i.ba, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.bc = insertelement <4 x float> %i.ag, float %i.az, i64 0
  %i.bd = insertelement <4 x float> %i.bc, float %i.as, i64 1
  %i.be = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bd, <4 x float> %i.o, <4 x float> %i.bb) ; 4 uses
  %i.bf = load ptr, ptr %0, align 8, !tbaa !27
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = extractelement <4 x float> %i.be, i64 0 ; 2 uses
  %i.bj = extractelement <4 x float> %i.be, i64 1 ; 2 uses
  %i.bk = extractelement <4 x float> %i.be, i64 2
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.bi, float noundef %i.bj, float noundef %i.bk, i32 noundef -1) #4, !call_target !75
  %i.bl = load ptr, ptr %0, align 8, !tbaa !27
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = extractelement <4 x float> %i.be, i64 3
  tail call void %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.bi, float noundef %i.bj, float noundef %i.bo, i32 noundef -1) #4, !call_target !75
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !129
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.al
  %.pre72 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !61
  %.pre79 = zext i8 %.pre72 to i32
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.c
  %.pre-phi = phi i32 [ %i.aw, %.preheader ], [ %.pre79, %bb.c ] ; 2 uses
  %i.bp = and i32 %.pre-phi, 32
  %.not.1 = icmp eq i32 %i.bp, 0
  br i1 %.not.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bq = trunc nuw nsw i64 %indvars.iv to i32
  %i.br = sitofp i32 %i.bq to float
  %i.bs = trunc i64 %indvars.iv to i32
  %i.bt = add i32 %i.bs, 1
  %i.bu = sitofp i32 %i.bt to float
  %i.bv = load <3 x float>, ptr %i.f, align 4, !tbaa !71
  %i.bw = shufflevector <3 x float> %i.bv, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.bx = insertelement <4 x float> %i.ad, float %i.br, i64 0
  %i.by = insertelement <4 x float> %i.bx, float %i.as, i64 1
  %i.bz = insertelement <4 x float> %i.by, float %i.bu, i64 3
  %i.ca = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bz, <4 x float> %i.o, <4 x float> %i.bw) ; 4 uses
  %i.cb = load ptr, ptr %0, align 8, !tbaa !27
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = extractelement <4 x float> %i.ca, i64 0
  %i.cf = extractelement <4 x float> %i.ca, i64 1 ; 2 uses
  %i.cg = extractelement <4 x float> %i.ca, i64 2 ; 2 uses
  tail call void %i.cd(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.ce, float noundef %i.cf, float noundef %i.cg, i32 noundef -1) #4, !call_target !75
  %i.ch = load ptr, ptr %0, align 8, !tbaa !27
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = extractelement <4 x float> %i.ca, i64 3
  tail call void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.ck, float noundef %i.cf, float noundef %i.cg, i32 noundef -1) #4, !call_target !75
  %.pre73 = load ptr, ptr %i.k, align 8, !tbaa !129
  %.phi.trans.insert74 = getelementptr inbounds nuw i8, ptr %.pre73, i64 %i.al
  %.pre75 = load i8, ptr %.phi.trans.insert74, align 1, !tbaa !61
  %.pre80 = zext i8 %.pre75 to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre-phi81 = phi i32 [ %.pre80, %bb.e ], [ %.pre-phi, %bb.d ] ; 2 uses
  %i.cl = and i32 %.pre-phi81, 64
  %.not.2 = icmp eq i32 %i.cl, 0
  br i1 %.not.2, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cm = trunc i64 %indvars.iv to i32
  %i.cn = add i32 %i.cm, 1
  %i.co = sitofp i32 %i.cn to float
  %i.cp = load <3 x float>, ptr %i.f, align 4, !tbaa !71
  %i.cq = shufflevector <3 x float> %i.cp, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.cr = insertelement <4 x float> %i.ah, float %i.co, i64 0
  %i.cs = insertelement <4 x float> %i.cr, float %i.as, i64 1
  %i.ct = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cs, <4 x float> %i.o, <4 x float> %i.cq) ; 4 uses
  %i.cu = load ptr, ptr %0, align 8, !tbaa !27
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = extractelement <4 x float> %i.ct, i64 0 ; 2 uses
  %i.cy = extractelement <4 x float> %i.ct, i64 1 ; 2 uses
  %i.cz = extractelement <4 x float> %i.ct, i64 2
  tail call void %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.cx, float noundef %i.cy, float noundef %i.cz, i32 noundef -1) #4, !call_target !75
  %i.da = load ptr, ptr %0, align 8, !tbaa !27
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = extractelement <4 x float> %i.ct, i64 3
  tail call void %i.dc(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.cx, float noundef %i.cy, float noundef %i.dd, i32 noundef -1) #4, !call_target !75
  %.pre76 = load ptr, ptr %i.k, align 8, !tbaa !129
  %.phi.trans.insert77 = getelementptr inbounds nuw i8, ptr %.pre76, i64 %i.al
  %.pre78 = load i8, ptr %.phi.trans.insert77, align 1, !tbaa !61
  %.pre82 = zext i8 %.pre78 to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre-phi83 = phi i32 [ %.pre82, %bb.g ], [ %.pre-phi81, %bb.f ]
  %i.de = and i32 %.pre-phi83, 128
  %.not.3 = icmp eq i32 %i.de, 0
  br i1 %.not.3, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.df = trunc i64 %indvars.iv to i32
  %i.dg = add i32 %i.df, 1
  %i.dh = sitofp i32 %i.dg to float
  %i.di = trunc nuw nsw i64 %indvars.iv to i32
  %i.dj = sitofp i32 %i.di to float
  %i.dk = load <3 x float>, ptr %i.f, align 4, !tbaa !71
  %i.dl = shufflevector <3 x float> %i.dk, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.dm = insertelement <4 x float> %i.ac, float %i.dh, i64 0
  %i.dn = insertelement <4 x float> %i.dm, float %i.as, i64 1
  %i.do = insertelement <4 x float> %i.dn, float %i.dj, i64 3
  %i.dp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.do, <4 x float> %i.o, <4 x float> %i.dl) ; 4 uses
  %i.dq = load ptr, ptr %0, align 8, !tbaa !27
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 48
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = extractelement <4 x float> %i.dp, i64 0
  %i.du = extractelement <4 x float> %i.dp, i64 1 ; 2 uses
  %i.dv = extractelement <4 x float> %i.dp, i64 2 ; 2 uses
  tail call void %i.ds(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.dt, float noundef %i.du, float noundef %i.dv, i32 noundef -1) #4, !call_target !75
  %i.dw = load ptr, ptr %0, align 8, !tbaa !27
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = extractelement <4 x float> %i.dp, i64 3
  tail call void %i.dy(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.dz, float noundef %i.du, float noundef %i.dv, i32 noundef -1) #4, !call_target !75
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %bb.i, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nounwind uwtable
define void @_Z32duDebugDrawTileCacheLayerRegionsP11duDebugDrawRK16dtTileCacheLayerff(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !84     ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load i8, ptr %i.b, align 4, !tbaa !86    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 49
  %i.e = load i8, ptr %i.d, align 1, !tbaa !87    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load i32, ptr %i.g, align 4, !tbaa !88
  %i.i = add nsw i32 %i.h, 1
  %i.j = tail call noundef i32 @_Z10duIntToColii(i32 noundef %i.i, i32 noundef 255) #4 ; 5 uses
  %i.k = load float, ptr %i.f, align 4, !tbaa !71
  %i.l = load ptr, ptr %1, align 8, !tbaa !84     ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 50
  %i.n = load i8, ptr %i.m, align 2, !tbaa !89
  %i.o = uitofp i8 %i.n to float
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !71
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.s = load float, ptr %i.r, align 4, !tbaa !71
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  %i.u = load i8, ptr %i.t, align 4, !tbaa !90
  %i.v = uitofp i8 %i.u to float
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 51
  %i.x = load i8, ptr %i.w, align 1, !tbaa !91
  %i.y = zext i8 %i.x to i32
  %i.z = add nuw nsw i32 %i.y, 1
  %i.aa = uitofp nneg i32 %i.z to float
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !71
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 53
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !92
  %i.af = zext i8 %i.ae to i32
  %i.ag = add nuw nsw i32 %i.af, 1
  %i.ah = uitofp nneg i32 %i.ag to float
  %i.ai = insertelement <4 x float> poison, float %i.o, i64 0
  %i.aj = insertelement <4 x float> %i.ai, float %i.v, i64 1
  %i.ak = insertelement <4 x float> %i.aj, float %i.aa, i64 2
  %i.al = insertelement <4 x float> %i.ak, float %i.ah, i64 3
  %i.am = insertelement <4 x float> poison, float %2, i64 0
  %i.an = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ao = insertelement <4 x float> poison, float %i.k, i64 0
  %i.ap = insertelement <4 x float> %i.ao, float %i.s, i64 1
  %i.aq = shufflevector <4 x float> %i.ap, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ar = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.an, <4 x float> %i.aq) ; 4 uses
  %i.as = and i32 %i.j, 16777215
  %i.at = or disjoint i32 %i.as, -2147483648
  %i.au = extractelement <4 x float> %i.ar, i64 0
  %i.av = extractelement <4 x float> %i.ar, i64 1
  %i.aw = extractelement <4 x float> %i.ar, i64 2
  %i.ax = extractelement <4 x float> %i.ar, i64 3
  tail call void @_Z18duDebugDrawBoxWireP11duDebugDrawffffffjf(ptr noundef %0, float noundef %i.au, float noundef %i.q, float noundef %i.av, float noundef %i.aw, float noundef %i.ac, float noundef %i.ax, i32 noundef %i.at, float noundef 2.000000e+00) #4
  %i.ay = load ptr, ptr %0, align 8, !tbaa !27
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 3, float noundef 1.000000e+00) #4, !call_target !37
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %._crit_edge90.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %.not91 = icmp eq i8 %i.c, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %4 = lshr i32 %i.j, 24
  %i.bd = lshr i32 %i.j, 16
  %5 = lshr i32 %i.j, 8
  %6 = and i32 %i.bd, 255
  %i.be = and i32 %5, 255
  %7 = and i32 %i.j, 255
  %i.bf = mul nuw nsw i32 %7, 63
  %i.bg = mul nuw nsw i32 %i.be, 63
  %i.bh = mul nuw nsw i32 %6, 63
  %i.bi = mul nuw nsw i32 %4, 63
  br i1 %.not91, label %._crit_edge90.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bj = zext i8 %i.c to i64                     ; 2 uses
  %wide.trip.count96 = zext i8 %i.e to i64
  %i.bk = insertelement <2 x float> poison, float %3, i64 0
  %i.bl = insertelement <2 x float> %i.bk, float %2, i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv93 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next94, %._crit_edge ] ; 3 uses
  %i.bm = mul nuw nsw i64 %indvars.iv93, %i.bj
  %i.bn = trunc nuw nsw i64 %indvars.iv93 to i32
  %i.bo = uitofp nneg i32 %i.bn to float
  %i.bp = insertelement <2 x float> poison, float %i.bo, i64 1
  br label %bb.b

._crit_edge90.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  %i.bq = load ptr, ptr %0, align 8, !tbaa !27
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  %i.bs = load ptr, ptr %i.br, align 8
  tail call void %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %0) #4, !call_target !48
  tail call fastcc void @_ZL25debugDrawTileCachePortalsP11duDebugDrawRK16dtTileCacheLayerff(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(48) %1, float noundef %2, float noundef %3)
  ret void

._crit_edge:                                      ; preds = %bb.d
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %exitcond97.not = icmp eq i64 %indvars.iv.next94, %wide.trip.count96
  br i1 %exitcond97.not, label %._crit_edge90.split, label %.preheader

bb.b:                                             ; preds = %.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.bt = add nuw nsw i64 %indvars.iv, %i.bm      ; 2 uses
  %i.bu = load ptr, ptr %i.bb, align 8, !tbaa !93
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bt
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !61  ; 2 uses
  %i.bx = icmp eq i8 %i.bw, -1
  br i1 %i.bx, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.by = zext i8 %i.bw to i32
  %i.bz = load ptr, ptr %i.bc, align 8, !tbaa !130
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bt
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !61
  %i.cc = zext i8 %i.cb to i32
  %i.cd = tail call noundef i32 @_Z10duIntToColii(i32 noundef %i.cc, i32 noundef 255) #4 ; 4 uses
  %8 = lshr i32 %i.cd, 24
  %i.ce = lshr i32 %i.cd, 16
  %9 = lshr i32 %i.cd, 8
  %10 = and i32 %i.ce, 255
  %i.cf = and i32 %9, 255
  %11 = and i32 %i.cd, 255
  %i.cg = mul nuw nsw i32 %8, 192
  %i.ch = mul nuw nsw i32 %10, 192
  %i.ci = mul nuw nsw i32 %i.cf, 192
  %i.cj = mul nuw nsw i32 %11, 192
  %i.ck = add nuw nsw i32 %i.cg, %i.bi
  %i.cl = add nuw nsw i32 %i.ch, %i.bh
  %i.cm = add nuw nsw i32 %i.ci, %i.bg
  %i.cn = add nuw nsw i32 %i.cj, %i.bf
  %.lhs.trunc86 = trunc i32 %i.ck to i16
  %.lhs.trunc84 = trunc i32 %i.cl to i16
  %.lhs.trunc82 = trunc i32 %i.cm to i16
  %.lhs.trunc = trunc i32 %i.cn to i16
  %i.co = insertelement <4 x i16> poison, i16 %.lhs.trunc, i64 0
  %i.cp = insertelement <4 x i16> %i.co, i16 %.lhs.trunc82, i64 1
  %i.cq = insertelement <4 x i16> %i.cp, i16 %.lhs.trunc84, i64 2
  %i.cr = insertelement <4 x i16> %i.cq, i16 %.lhs.trunc86, i64 3
  %i.cs = udiv <4 x i16> %i.cr, splat (i16 255)
  %i.ct = zext nneg <4 x i16> %i.cs to <4 x i32>
  %i.cu = shl nuw <4 x i32> %i.ct, <i32 0, i32 8, i32 16, i32 24>
  %i.cv = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.cu) ; 4 uses
  %i.cw = load float, ptr %i.f, align 4, !tbaa !71
  %i.cx = trunc nuw nsw i64 %indvars.iv to i32
  %i.cy = uitofp nneg i32 %i.cx to float
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cy, float %2, float %i.cw) ; 3 uses
  %i.da = add nuw nsw i32 %i.by, 1
  %i.db = uitofp nneg i32 %i.da to float
  %i.dc = load <2 x float>, ptr %i.p, align 4, !tbaa !71
  %i.dd = insertelement <2 x float> %i.bp, float %i.db, i64 0
  %i.de = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dd, <2 x float> %i.bl, <2 x float> %i.dc) ; 2 uses
  %i.df = load ptr, ptr %0, align 8, !tbaa !27
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = extractelement <2 x float> %i.de, i64 0 ; 4 uses
  %i.dj = extractelement <2 x float> %i.de, i64 1 ; 3 uses
  tail call void %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.cz, float noundef %i.di, float noundef %i.dj, i32 noundef %i.cv) #4, !call_target !75
  %i.dk = fadd float %2, %i.dj                    ; 2 uses
  %i.dl = load ptr, ptr %0, align 8, !tbaa !27
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 48
  %i.dn = load ptr, ptr %i.dm, align 8
  tail call void %i.dn(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.cz, float noundef %i.di, float noundef %i.dk, i32 noundef %i.cv) #4, !call_target !75
  %i.do = fadd float %2, %i.cz                    ; 2 uses
  %i.dp = load ptr, ptr %0, align 8, !tbaa !27
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  %i.dr = load ptr, ptr %i.dq, align 8
  tail call void %i.dr(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.do, float noundef %i.di, float noundef %i.dk, i32 noundef %i.cv) #4, !call_target !75
  %i.ds = load ptr, ptr %0, align 8, !tbaa !27
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 48
  %i.du = load ptr, ptr %i.dt, align 8
  tail call void %i.du(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.do, float noundef %i.di, float noundef %i.dj, i32 noundef %i.cv) #4, !call_target !75
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.bj
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nounwind uwtable
define void @_Z28duDebugDrawTileCacheContoursP11duDebugDrawRK21dtTileCacheContourSetPKfff(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef readonly captures(none) %2, float noundef %3, float noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 1, float noundef 2.000000e+00) #4, !call_target !37
  %i.d = load i32, ptr %1, align 8, !tbaa !133
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph111, label %._crit_edge112

.lr.ph111:                                        ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = fmul float %3, 5.000000e-01
  %i.j = insertelement <2 x float> poison, float %3, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  br label %bb.c

._crit_edge112:                                   ; preds = %._crit_edge, %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %0) #4, !call_target !48
  %i.o = load ptr, ptr %0, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0, float noundef 4.000000e+00) #4, !call_target !37
  %i.r = load i32, ptr %1, align 8, !tbaa !133    ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph119, label %._crit_edge120

.lr.ph119:                                        ; preds = %._crit_edge112
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.v = insertelement <2 x float> poison, float %4, i64 0
  %i.w = insertelement <2 x float> %i.v, float %3, i64 1
  br label %bb.g

bb.c:                                             ; preds = %.lr.ph111, %._crit_edge
  %indvars.iv122 = phi i64 [ 0, %.lr.ph111 ], [ %indvars.iv.next123, %._crit_edge ] ; 3 uses
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !134
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %indvars.iv122 ; 3 uses
  %i.z = trunc nuw nsw i64 %indvars.iv122 to i32  ; 2 uses
  %i.aa = tail call noundef i32 @_Z10duIntToColii(i32 noundef %i.z, i32 noundef 255) #4
  %i.ab = load i32, ptr %i.y, align 8, !tbaa !136 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ae = and i32 %i.z, 1
  %i.af = add nuw nsw i32 %i.ae, 1                ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %bb.f, %bb.c
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %i.ag = load i32, ptr %1, align 8, !tbaa !133
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp slt i64 %indvars.iv.next123, %i.ah
  br i1 %i.ai, label %bb.c, label %._crit_edge112

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.aj = phi i32 [ %i.ab, %.lr.ph ], [ %i.da, %bb.f ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ak = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.al = srem i32 %i.ak, %i.aj
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !137 ; 2 uses
  %i.an = shl nuw nsw i64 %indvars.iv, 2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.an ; 4 uses
  %i.ap = shl nuw nsw i32 %i.al, 2
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aq ; 3 uses
  %i.as = load float, ptr %2, align 4, !tbaa !71
  %i.at = load i8, ptr %i.ao, align 1, !tbaa !61
  %i.au = load float, ptr %i.g, align 4, !tbaa !71 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !61
  %i.ax = zext i8 %i.aw to i32
  %i.ay = add nuw nsw i32 %i.af, %i.ax
  %i.az = uitofp nneg i32 %i.ay to float
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.az, float %4, float %i.au) ; 2 uses
  %i.bb = load float, ptr %i.h, align 4, !tbaa !71
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !61
  %i.be = load i8, ptr %i.ar, align 1, !tbaa !61
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !61
  %i.bh = zext i8 %i.bg to i32
  %i.bi = add nuw nsw i32 %i.af, %i.bh
  %i.bj = uitofp nneg i32 %i.bi to float
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bj, float %4, float %i.au) ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !61
  %i.bn = insertelement <2 x i8> poison, i8 %i.at, i64 0
  %i.bo = insertelement <2 x i8> %i.bn, i8 %i.bd, i64 1
  %i.bp = uitofp <2 x i8> %i.bo to <2 x float>
  %i.bq = insertelement <2 x float> poison, float %i.as, i64 0
  %i.br = insertelement <2 x float> %i.bq, float %i.bb, i64 1 ; 2 uses
  %i.bs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.k, <2 x float> %i.br) ; 3 uses
  %i.bt = insertelement <2 x i8> poison, i8 %i.be, i64 0
  %i.bu = insertelement <2 x i8> %i.bt, i8 %i.bm, i64 1
  %i.bv = uitofp <2 x i8> %i.bu to <2 x float>
  %i.bw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.k, <2 x float> %i.br) ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ao, i64 3
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !61  ; 2 uses
  %i.bz = and i8 %i.by, 15
  %.not107 = icmp eq i8 %i.bz, 15
  br i1 %.not107, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ca = fadd <2 x float> %i.bs, %i.bw
  %i.cb = fadd float %i.ba, %i.bk
  %i.cc = fmul float %i.cb, 5.000000e-01          ; 2 uses
  %i.cd = shl i8 %i.by, 1
  %i.ce = and i8 %i.cd, 30
  %i.cf = zext nneg i8 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr @__const._Z28duDebugDrawTileCachePolyMeshP11duDebugDrawRK19dtTileCachePolyMeshPKfff.offs, i64 %i.cf
  %i.ch = fmul <2 x float> %i.ca, splat (float 5.000000e-01) ; 3 uses
  %i.ci = load <2 x i32>, ptr %i.cg, align 8, !tbaa !69
  %i.cj = shl nsw <2 x i32> %i.ci, splat (i32 1)
  %i.ck = sitofp <2 x i32> %i.cj to <2 x float>
  %i.cl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ck, <2 x float> %i.k, <2 x float> %i.ch) ; 2 uses
  %i.cm = load ptr, ptr %0, align 8, !tbaa !27
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = extractelement <2 x float> %i.ch, i64 0
  %i.cq = extractelement <2 x float> %i.ch, i64 1
  tail call void %i.co(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.cp, float noundef %i.cc, float noundef %i.cq, i32 noundef -16776961) #4, !call_target !75
  %i.cr = load ptr, ptr %0, align 8, !tbaa !27
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = extractelement <2 x float> %i.cl, i64 0
  %i.cv = extractelement <2 x float> %i.cl, i64 1
  tail call void %i.ct(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.cu, float noundef %i.cc, float noundef %i.cv, i32 noundef -16776961) #4, !call_target !75
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0103 = phi i32 [ -2130706433, %bb.e ], [ %i.aa, %bb.d ]
  %i.cw = extractelement <2 x float> %i.bs, i64 0
  %i.cx = extractelement <2 x float> %i.bs, i64 1
end_hunk_0
