Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/DetourDebugDraw?download=true
inline.NumInlined: 72
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_Z22duDebugDrawNavMeshPolyP11duDebugDrawRK9dtNavMeshjj:bb.a
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
  %i.bd = trunc i32 %i.j to i16
  %i.be = and i16 %i.bd, 255
  %.lhs.trunc103 = mul nuw i16 %i.be, 223
  %i.bf = udiv i16 %.lhs.trunc103, 255
  %.zext104 = zext nneg i16 %i.bf to i32          ; 2 uses
  %i.bg = lshr i32 %i.j, 24                       ; 2 uses
  %i.bh = lshr i32 %i.j, 16                       ; 2 uses
  %i.bi = lshr i32 %i.j, 8                        ; 2 uses
  %i.bj = trunc nuw nsw i32 %i.bg to i16
  %4 = mul nuw i16 %i.bj, 223
  %.lhs.trunc109 = add nuw i16 %4, 2048
  %i.bk = trunc nuw i32 %i.bh to i16
  %5 = trunc i32 %i.bi to i16
  %6 = insertelement <2 x i16> poison, i16 %5, i64 0
  %7 = insertelement <2 x i16> %6, i16 %i.bk, i64 1
  %8 = and <2 x i16> %7, splat (i16 255)
  %9 = mul nuw <2 x i16> %8, splat (i16 223)      ; 3 uses
  %i.bl = extractelement <2 x i16> %9, i64 0
  %i.bm = udiv i16 %i.bl, 255
  %.zext106 = zext nneg i16 %i.bm to i32
  %i.bn = shl nuw nsw i32 %.zext106, 8
  %10 = add nuw <2 x i16> %9, <i16 6144, i16 8160>
  %11 = shufflevector <2 x i16> %10, <2 x i16> %9, <4 x i32> <i32 3, i32 poison, i32 0, i32 1>
  %12 = insertelement <4 x i16> %11, i16 %.lhs.trunc109, i64 1
  %13 = udiv <4 x i16> %12, splat (i16 255)       ; 4 uses
  %i.bo = extractelement <4 x i16> %13, i64 0
  %.zext108 = zext nneg i16 %i.bo to i32
  %i.bp = extractelement <4 x i16> %13, i64 1
  %.zext110 = zext nneg i16 %i.bp to i32
  %i.bq = shl nuw nsw i32 %.zext108, 16
  %i.br = or i32 %i.bn, %i.bq
  %i.bs = or i32 %i.br, %.zext104
  %i.bt = shl nuw i32 %.zext110, 24               ; 2 uses
  %i.bu = or i32 %i.bs, %i.bt
  %14 = extractelement <4 x i16> %13, i64 2
  %.zext98 = zext nneg i16 %14 to i32
  %i.bv = extractelement <4 x i16> %13, i64 3
  %.zext100 = zext nneg i16 %i.bv to i32
  %15 = shl nuw nsw i32 %.zext98, 8
  %i.bw = shl nuw nsw i32 %.zext100, 16
  %i.bx = or i32 %15, %i.bw
  %i.by = or i32 %i.bx, %.zext104
  %i.bz = or i32 %i.by, %i.bt
  %i.ca = and i32 %i.bh, 255
  %i.cb = and i32 %i.bi, 255
  %i.cc = and i32 %i.j, 255
  %i.cd = mul nuw nsw i32 %i.cc, 223
  %i.ce = mul nuw nsw i32 %i.cb, 223
  %i.cf = mul nuw nsw i32 %i.ca, 223
  %i.cg = mul nuw nsw i32 %i.bg, 223
  br i1 %.not114, label %._crit_edge113.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ch = zext i8 %i.c to i64                     ; 2 uses
  %wide.trip.count119 = zext i8 %i.e to i64
  %i.ci = insertelement <2 x float> poison, float %3, i64 0
  %i.cj = insertelement <2 x float> %i.ci, float %2, i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv116 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next117, %._crit_edge ] ; 3 uses
  %i.ck = mul nuw nsw i64 %indvars.iv116, %i.ch
  %i.cl = trunc nuw nsw i64 %indvars.iv116 to i32
  %i.cm = uitofp nneg i32 %i.cl to float
  %i.cn = insertelement <2 x float> poison, float %i.cm, i64 1
  br label %bb.b

._crit_edge113.split:                             ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  %i.co = load ptr, ptr %0, align 8, !tbaa !27
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 72
  %i.cq = load ptr, ptr %i.cp, align 8
  tail call void %i.cq(ptr noundef nonnull align 8 dereferenceable(8) %0) #4, !call_target !48
  tail call fastcc void @_ZL25debugDrawTileCachePortalsP11duDebugDrawRK16dtTileCacheLayerff(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(48) %1, float noundef %2, float noundef %3)
  ret void

._crit_edge:                                      ; preds = %bb.g
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %exitcond120.not = icmp eq i64 %indvars.iv.next117, %wide.trip.count119
  br i1 %exitcond120.not, label %._crit_edge113.split, label %.preheader

bb.b:                                             ; preds = %.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.cr = add nuw nsw i64 %indvars.iv, %i.ck      ; 2 uses
  %i.cs = load ptr, ptr %i.bb, align 8, !tbaa !93
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cr
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !61  ; 2 uses
  %i.cv = zext i8 %i.cu to i32
  %i.cw = icmp eq i8 %i.cu, -1
  br i1 %i.cw, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cx = load ptr, ptr %i.bc, align 8, !tbaa !128
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cr
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !61  ; 2 uses
  switch i8 %i.cz, label %bb.e [
    i8 63, label %bb.f
    i8 0, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.da = zext i8 %i.cz to i32
  %i.db = load ptr, ptr %0, align 8, !tbaa !27
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 80
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = tail call noundef i32 %i.dd(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.da) #4, !call_target !56 ; 4 uses
  %i.df = lshr i32 %i.de, 19
  %i.dg = lshr i32 %i.de, 11
  %i.dh = lshr i32 %i.de, 3
  %i.di = shl i32 %i.de, 5
  %i.dj = and i32 %i.df, 8160
  %i.dk = and i32 %i.dg, 8160
  %i.dl = and i32 %i.dh, 8160
  %i.dm = and i32 %i.di, 8160
  %i.dn = add nuw nsw i32 %i.dj, %i.cg
  %i.do = add nuw nsw i32 %i.dk, %i.cf
  %i.dp = add nuw nsw i32 %i.dl, %i.ce
  %i.dq = add nuw nsw i32 %i.dm, %i.cd
  %.lhs.trunc93 = trunc i32 %i.dn to i16
  %.lhs.trunc91 = trunc i32 %i.do to i16
  %.lhs.trunc89 = trunc i32 %i.dp to i16
  %.lhs.trunc = trunc i32 %i.dq to i16
  %i.dr = insertelement <4 x i16> poison, i16 %.lhs.trunc, i64 0
  %i.ds = insertelement <4 x i16> %i.dr, i16 %.lhs.trunc89, i64 1
  %i.dt = insertelement <4 x i16> %i.ds, i16 %.lhs.trunc91, i64 2
  %i.du = insertelement <4 x i16> %i.dt, i16 %.lhs.trunc93, i64 3
  %i.dv = udiv <4 x i16> %i.du, splat (i16 255)
  %i.dw = zext nneg <4 x i16> %i.dv to <4 x i32>
  %i.dx = shl nuw <4 x i32> %i.dw, <i32 0, i32 8, i32 16, i32 24>
  %i.dy = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.dx)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.0 = phi i32 [ %i.dy, %bb.e ], [ %i.bu, %bb.d ], [ %i.bz, %bb.c ] ; 4 uses
  %i.dz = load float, ptr %i.f, align 4, !tbaa !71
  %i.ea = trunc nuw nsw i64 %indvars.iv to i32
  %i.eb = uitofp nneg i32 %i.ea to float
  %i.ec = tail call float @llvm.fmuladd.f32(float %i.eb, float %2, float %i.dz) ; 3 uses
  %i.ed = add nuw nsw i32 %i.cv, 1
  %i.ee = uitofp nneg i32 %i.ed to float
  %i.ef = load <2 x float>, ptr %i.p, align 4, !tbaa !71
  %i.eg = insertelement <2 x float> %i.cn, float %i.ee, i64 0
  %i.eh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eg, <2 x float> %i.cj, <2 x float> %i.ef) ; 2 uses
  %i.ei = load ptr, ptr %0, align 8, !tbaa !27
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 48
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = extractelement <2 x float> %i.eh, i64 0 ; 4 uses
  %i.em = extractelement <2 x float> %i.eh, i64 1 ; 3 uses
  tail call void %i.ek(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.ec, float noundef %i.el, float noundef %i.em, i32 noundef %.0) #4, !call_target !75
  %i.en = fadd float %2, %i.em                    ; 2 uses
  %i.eo = load ptr, ptr %0, align 8, !tbaa !27
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 48
  %i.eq = load ptr, ptr %i.ep, align 8
  tail call void %i.eq(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.ec, float noundef %i.el, float noundef %i.en, i32 noundef %.0) #4, !call_target !75
  %i.er = fadd float %2, %i.ec                    ; 2 uses
  %i.es = load ptr, ptr %0, align 8, !tbaa !27
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 48
  %i.eu = load ptr, ptr %i.et, align 8
  tail call void %i.eu(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.er, float noundef %i.el, float noundef %i.en, i32 noundef %.0) #4, !call_target !75
  %i.ev = load ptr, ptr %0, align 8, !tbaa !27
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 48
  %i.ex = load ptr, ptr %i.ew, align 8
  tail call void %i.ex(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.er, float noundef %i.el, float noundef %i.em, i32 noundef %.0) #4, !call_target !75
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ch
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
end_hunk_0
