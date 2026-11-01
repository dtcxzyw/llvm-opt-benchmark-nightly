Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/DetourNavMesh?download=true
inline.NumInlined: 163
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN9dtNavMesh15connectExtLinksEP10dtMeshTileS1_i:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i32, ptr %i.e, align 4, !tbaa !47
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph103, label %.loopexit

.lr.ph103:                                        ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.not79 = icmp eq i32 %3, -1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph103, %._crit_edge101
  %i.l = phi ptr [ %i.d, %.lr.ph103 ], [ %i.t, %._crit_edge101 ]
  %indvars.iv112 = phi i64 [ 0, %.lr.ph103 ], [ %indvars.iv.next113, %._crit_edge101 ] ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %indvars.iv112 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 30
  %i.p = load i8, ptr %i.o, align 2, !tbaa !67    ; 2 uses
  %.not104 = icmp eq i8 %i.p, 0
  br i1 %.not104, label %._crit_edge101, label %.lr.ph100

.lr.ph100:                                        ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.s = zext i8 %i.p to i64                      ; 2 uses
  br label %bb.c

._crit_edge101.loopexit:                          ; preds = %bb.i
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !52
  br label %._crit_edge101

._crit_edge101:                                   ; preds = %._crit_edge101.loopexit, %bb.b
  %i.t = phi ptr [ %.pre, %._crit_edge101.loopexit ], [ %i.l, %bb.b ] ; 2 uses
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i32, ptr %i.u, align 4, !tbaa !47
  %i.w = sext i32 %i.v to i64
  %i.x = icmp slt i64 %indvars.iv.next113, %i.w
  br i1 %i.x, label %bb.b, label %.loopexit

bb.c:                                             ; preds = %.lr.ph100, %bb.i
  %indvars.iv107 = phi i64 [ 0, %.lr.ph100 ], [ %indvars.iv.next108, %bb.i ] ; 5 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv107
  %i.z = load i16, ptr %i.y, align 2, !tbaa !68   ; 3 uses
  %i.aa = icmp sgt i16 %i.z, -1
  br i1 %i.aa, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = and i16 %i.z, 255
  %i.ac = zext nneg i16 %i.ab to i32              ; 2 uses
  %.not80 = icmp eq i32 %3, %i.ac
  %or.cond83 = select i1 %.not79, i1 true, i1 %.not80
  br i1 %or.cond83, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !54  ; 2 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv107
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !68
  %i.ag = zext i16 %i.af to i64
  %.idx = mul nuw nsw i64 %i.ag, 12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx ; 3 uses
  %i.ai = add nuw nsw i64 %indvars.iv107, 1       ; 2 uses
  %i.aj = icmp eq i64 %i.ai, %i.s
  %i.ak = select i1 %i.aj, i64 0, i64 %i.ai
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.ak
  %i.am = load i16, ptr %i.al, align 2, !tbaa !68
  %i.an = zext i16 %i.am to i64
  %.idx81 = mul nuw nsw i64 %i.an, 12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx81 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.ap = and i32 %i.ac, 7
  %i.aq = xor i32 %i.ap, 4
  %i.ar = call noundef i32 @_ZNK9dtNavMesh19findConnectingPolysEPKfS1_PK10dtMeshTileiPjPfi(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %i.ah, ptr noundef %i.ao, ptr noundef %2, i32 noundef %i.aq, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 4) ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.at = trunc i64 %indvars.iv107 to i8
  %i.au = trunc i16 %i.z to i8                    ; 2 uses
  %trunc = and i8 %i.au, -5
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ax = load i32, ptr %i.j, align 4, !tbaa !62  ; 2 uses
  %i.ay = icmp eq i32 %i.ax, -1
  br i1 %i.ay, label %._crit_edge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.ar to i64
  br label %.lr.ph.split

._crit_edge:                                      ; preds = %_Z9allocLinkP10dtMeshTile.exit.thread, %.lr.ph, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.i

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_Z9allocLinkP10dtMeshTile.exit.thread
  %i.az = phi i32 [ %i.ax, %.lr.ph.split.preheader ], [ %i.cy, %_Z9allocLinkP10dtMeshTile.exit.thread ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %_Z9allocLinkP10dtMeshTile.exit.thread ] ; 4 uses
  %i.ba = icmp eq i32 %i.az, -1
  br i1 %i.ba, label %_Z9allocLinkP10dtMeshTile.exit.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split
  %i.bb = load ptr, ptr %i.k, align 8, !tbaa !56
  %i.bc = zext i32 %i.az to i64
  %i.bd = getelementptr inbounds nuw [12 x i8], ptr %i.bb, i64 %i.bc ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !64 ; 3 uses
  store i32 %i.bf, ptr %i.j, align 4, !tbaa !62
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !40
  store i32 %i.bh, ptr %i.bd, align 4, !tbaa !71
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i8 %i.at, ptr %i.bi, align 4, !tbaa !72
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 9
  store i8 %i.au, ptr %i.bj, align 1, !tbaa !73
  %i.bk = load i32, ptr %i.n, align 4, !tbaa !70
  store i32 %i.bk, ptr %i.be, align 4, !tbaa !64
  store i32 %i.az, ptr %i.n, align 4, !tbaa !70
  switch i8 %trunc, label %_Z9allocLinkP10dtMeshTile.exit.thread [
    i8 0, label %bb.g
    i8 2, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %.idx120 = shl nuw nsw i64 %indvars.iv, 3       ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx120
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !33
  %i.bn = load float, ptr %i.av, align 4, !tbaa !33 ; 3 uses
  %i.bo = fsub float %i.bm, %i.bn
  %i.bp = load float, ptr %i.aw, align 4, !tbaa !33
  %i.bq = fsub float %i.bp, %i.bn                 ; 2 uses
  %i.br = fdiv float %i.bo, %i.bq
  br label %_Z9allocLinkP10dtMeshTile.exit.thread.sink.split

bb.h:                                             ; preds = %bb.f
  %.idx119 = shl nuw nsw i64 %indvars.iv, 3       ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx119
  %i.bt = load float, ptr %i.bs, align 8, !tbaa !33
  %i.bu = load float, ptr %i.ah, align 4, !tbaa !33 ; 3 uses
  %i.bv = fsub float %i.bt, %i.bu
  %i.bw = load float, ptr %i.ao, align 4, !tbaa !33
  %i.bx = fsub float %i.bw, %i.bu                 ; 2 uses
  %i.by = fdiv float %i.bv, %i.bx
  br label %_Z9allocLinkP10dtMeshTile.exit.thread.sink.split

_Z9allocLinkP10dtMeshTile.exit.thread.sink.split: ; preds = %bb.h, %bb.g
  %i.bz = phi i64 [ %.idx120, %bb.g ], [ %.idx119, %bb.h ]
  %.sink146 = phi float [ %i.bn, %bb.g ], [ %i.bu, %bb.h ]
  %.sink144 = phi float [ %i.bq, %bb.g ], [ %i.bx, %bb.h ]
  %.sink142 = phi float [ %i.br, %bb.g ], [ %i.by, %bb.h ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !33
  %i.cd = fsub float %i.cc, %.sink146
  %i.ce = fdiv float %i.cd, %.sink144             ; 2 uses
  %i.cf = fcmp ogt float %.sink142, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bd, i64 10
  %i.ch = insertelement <2 x i1> poison, i1 %i.cf, i64 0
  %i.ci = shufflevector <2 x i1> %i.ch, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.cj = insertelement <2 x float> poison, float %.sink142, i64 0
  %i.ck = insertelement <2 x float> %i.cj, float %i.ce, i64 1 ; 2 uses
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cm = select <2 x i1> %i.ci, <2 x float> %i.ck, <2 x float> %i.cl
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.co = fcmp olt <2 x float> %i.cn, zeroinitializer
  %i.cp = fcmp ogt <2 x float> %i.cn, splat (float 1.000000e+00)
  %i.cq = select <2 x i1> %i.cp, <2 x float> splat (float 1.000000e+00), <2 x float> %i.cn
  %i.cr = fmul <2 x float> %i.cq, splat (float 2.550000e+02)
  %i.cs = tail call <2 x float> @llvm.round.v2f32(<2 x float> %i.cr)
  %i.ct = select <2 x i1> %i.co, <2 x float> zeroinitializer, <2 x float> %i.cs
  %i.cu = fptoui <2 x float> %i.ct to <2 x i8>    ; 2 uses
  %i.cv = extractelement <2 x i8> %i.cu, i64 0
  store i8 %i.cv, ptr %i.cg, align 2, !tbaa !74
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bd, i64 11
  %i.cx = extractelement <2 x i8> %i.cu, i64 1
  store i8 %i.cx, ptr %i.cw, align 1, !tbaa !75
  br label %_Z9allocLinkP10dtMeshTile.exit.thread

_Z9allocLinkP10dtMeshTile.exit.thread:            ; preds = %_Z9allocLinkP10dtMeshTile.exit.thread.sink.split, %bb.f, %.lr.ph.split
  %i.cy = phi i32 [ %i.bf, %bb.f ], [ -1, %.lr.ph.split ], [ %i.bf, %_Z9allocLinkP10dtMeshTile.exit.thread.sink.split ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !108

bb.i:                                             ; preds = %._crit_edge, %bb.d, %bb.c
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %exitcond111.not = icmp eq i64 %indvars.iv.next108, %i.s
  br i1 %exitcond111.not, label %._crit_edge101.loopexit, label %bb.c

.loopexit:                                        ; preds = %._crit_edge101, %.preheader, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZN9dtNavMesh22connectExtOffMeshLinksEP10dtMeshTileS1_i(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(100) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 6 uses
  %i.b = alloca [3 x float], align 4              ; 6 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %3, -1
  %i.d = trunc i32 %3 to i8                       ; 2 uses
  %i.e = and i8 %i.d, 7
  %i.f = xor i8 %i.e, 4
  %i.g = select i1 %i.c, i8 -1, i8 %i.f           ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 52
  %i.k = load i32, ptr %i.j, align 4, !tbaa !76
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %4 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.z = ptrtoint ptr %2 to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 92
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.j
  %i.ab = phi ptr [ %i.i, %.lr.ph ], [ %i.di, %bb.j ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !61
  %i.ad = getelementptr inbounds nuw [36 x i8], ptr %i.ac, i64 %indvars.iv ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 31
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !110
  %.not67 = icmp eq i8 %i.af, %i.g
  br i1 %.not67, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !55
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 28 ; 2 uses
  %i.ai = load i16, ptr %i.ah, align 4, !tbaa !78
  %i.aj = zext i16 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %i.aj ; 4 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !70
  %i.am = icmp eq i32 %i.al, -1
  br i1 %i.am, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  %i.ao = load float, ptr %i.an, align 4, !tbaa !79 ; 2 uses
  store float %i.ao, ptr %i.a, align 4, !tbaa !33
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 68
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !69
  store float %i.aq, ptr %i.o, align 4, !tbaa !33
  store float %i.ao, ptr %i.p, align 4, !tbaa !33
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.as = call noundef i32 @_ZNK9dtNavMesh21findNearestPolyInTileEPK10dtMeshTilePKfS4_Pf(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 3 uses
  %.not68 = icmp eq i32 %i.as, 0
  br i1 %.not68, label %_Z9allocLinkP10dtMeshTile.exit72.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = load float, ptr %i.b, align 4, !tbaa !33 ; 2 uses
  %i.au = load float, ptr %i.ar, align 4, !tbaa !33
  %i.av = fsub float %i.at, %i.au                 ; 2 uses
  %i.aw = fmul float %i.av, %i.av
  %i.ax = load float, ptr %i.q, align 4, !tbaa !33 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.az = load float, ptr %i.ay, align 4, !tbaa !33
  %i.ba = fsub float %i.ax, %i.az                 ; 2 uses
  %i.bb = fmul float %i.ba, %i.ba
  %i.bc = fadd float %i.aw, %i.bb
  %i.bd = load float, ptr %i.an, align 4, !tbaa !79 ; 2 uses
  %i.be = fmul float %i.bd, %i.bd
  %i.bf = fcmp ogt float %i.bc, %i.be
  br i1 %i.bf, label %_Z9allocLinkP10dtMeshTile.exit72.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = load ptr, ptr %i.r, align 8, !tbaa !54
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ak, i64 6
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !68
  %i.bj = zext i16 %i.bi to i64
  %.idx = mul nuw nsw i64 %i.bj, 12
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx ; 3 uses
  store float %i.at, ptr %i.bk, align 4, !tbaa !33
  %5 = load float, ptr %4, align 4, !tbaa !33
  %6 = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store float %5, ptr %6, align 4, !tbaa !33
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store float %i.ax, ptr %i.bl, align 4, !tbaa !33
  %i.bm = load i32, ptr %i.s, align 4, !tbaa !62  ; 3 uses
  %i.bn = icmp eq i32 %i.bm, -1
  br i1 %i.bn, label %_Z9allocLinkP10dtMeshTile.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bo = load ptr, ptr %i.t, align 8, !tbaa !56
  %i.bp = zext i32 %i.bm to i64
  %i.bq = getelementptr inbounds nuw [12 x i8], ptr %i.bo, i64 %i.bp ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !64
  store i32 %i.bs, ptr %i.s, align 4, !tbaa !62
  store i32 %i.as, ptr %i.bq, align 4, !tbaa !71
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i8 1, ptr %i.bt, align 4, !tbaa !72
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 9
  store i8 %i.g, ptr %i.bu, align 1, !tbaa !73
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 11
  store i8 0, ptr %i.bv, align 1, !tbaa !75
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 10
  store i8 0, ptr %i.bw, align 2, !tbaa !74
  %i.bx = load i32, ptr %i.ak, align 4, !tbaa !70
  store i32 %i.bx, ptr %i.br, align 4, !tbaa !64
  store i32 %i.bm, ptr %i.ak, align 4, !tbaa !70
  br label %_Z9allocLinkP10dtMeshTile.exit.thread

_Z9allocLinkP10dtMeshTile.exit.thread:            ; preds = %bb.g, %bb.h
  %i.by = getelementptr inbounds nuw i8, ptr %i.ad, i64 30
  %i.bz = load i8, ptr %i.by, align 2, !tbaa !111
  %i.ca = and i8 %i.bz, 1
  %.not70 = icmp eq i8 %i.ca, 0
  br i1 %.not70, label %_Z9allocLinkP10dtMeshTile.exit72.thread, label %bb.i

bb.i:                                             ; preds = %_Z9allocLinkP10dtMeshTile.exit.thread
  %i.cb = load i32, ptr %i.u, align 4, !tbaa !62  ; 3 uses
  %i.cc = icmp eq i32 %i.cb, -1
  br i1 %i.cc, label %_Z9allocLinkP10dtMeshTile.exit72.thread, label %_ZNK9dtNavMesh14getPolyRefBaseEPK10dtMeshTile.exit

_ZNK9dtNavMesh14getPolyRefBaseEPK10dtMeshTile.exit: ; preds = %bb.i
  %i.cd = load ptr, ptr %i.v, align 8, !tbaa !56
  %i.ce = zext i32 %i.cb to i64
  %i.cf = getelementptr inbounds nuw [12 x i8], ptr %i.cd, i64 %i.ce ; 6 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !64
  store i32 %i.ch, ptr %i.u, align 4, !tbaa !62
  %i.ci = load i32, ptr %i.w, align 8, !tbaa !42  ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.ci
  %i.cj = xor i32 %notmask.i, -1
  %i.ck = load ptr, ptr %i.x, align 8, !tbaa !55
  %i.cl = and i32 %i.as, 65535
  %i.cm = and i32 %i.cl, %i.cj
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %i.ck, i64 %i.cn ; 2 uses
  %i.cp = load ptr, ptr %i.y, align 8, !tbaa !19
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = sub i64 %i.z, %i.cq
  %i.cs = sdiv exact i64 %i.cr, 104
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = load i32, ptr %2, align 8, !tbaa !37
  %i.cv = load i32, ptr %i.aa, align 4, !tbaa !41
  %i.cw = add i32 %i.cv, %i.ci
  %i.cx = shl i32 %i.cu, %i.cw
  %i.cy = shl i32 %i.ct, %i.ci
  %i.cz = load i16, ptr %i.ah, align 4, !tbaa !78
  %i.da = zext i16 %i.cz to i32
  %i.db = or i32 %i.cx, %i.da
  %i.dc = or i32 %i.db, %i.cy
  store i32 %i.dc, ptr %i.cf, align 4, !tbaa !71
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i8 -1, ptr %i.dd, align 4, !tbaa !72
  %i.de = getelementptr inbounds nuw i8, ptr %i.cf, i64 9
  store i8 %i.d, ptr %i.de, align 1, !tbaa !73
  %i.df = getelementptr inbounds nuw i8, ptr %i.cf, i64 11
  store i8 0, ptr %i.df, align 1, !tbaa !75
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cf, i64 10
  store i8 0, ptr %i.dg, align 2, !tbaa !74
  %i.dh = load i32, ptr %i.co, align 4, !tbaa !70
  store i32 %i.dh, ptr %i.cg, align 4, !tbaa !64
  store i32 %i.cb, ptr %i.co, align 4, !tbaa !70
  br label %_Z9allocLinkP10dtMeshTile.exit72.thread

_Z9allocLinkP10dtMeshTile.exit72.thread:          ; preds = %bb.i, %_Z9allocLinkP10dtMeshTile.exit.thread, %_ZNK9dtNavMesh14getPolyRefBaseEPK10dtMeshTile.exit, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !52
  br label %bb.j

bb.j:                                             ; preds = %_Z9allocLinkP10dtMeshTile.exit72.thread, %bb.d, %bb.c
  %i.di = phi ptr [ %.pre, %_Z9allocLinkP10dtMeshTile.exit72.thread ], [ %i.ab, %bb.d ], [ %i.ab, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 52
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !76
  %i.dl = sext i32 %i.dk to i64
  %i.dm = icmp slt i64 %indvars.iv.next, %i.dl
  br i1 %i.dm, label %bb.c, label %.loopexit

.loopexit:                                        ; preds = %bb.j, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define noundef i32 @_ZNK9dtNavMesh21findNearestPolyInTileEPK10dtMeshTilePKfS4_Pf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(100) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 5 uses
  %i.b = alloca [3 x float], align 8              ; 5 uses
  %i.c = alloca [128 x i32], align 16             ; 4 uses
  %i.d = alloca [3 x float], align 8              ; 5 uses
  %i.e = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load <2 x float>, ptr %2, align 4, !tbaa !33 ; 2 uses
  %i.h = load <2 x float>, ptr %3, align 4, !tbaa !33 ; 2 uses
  %i.i = fsub <2 x float> %i.g, %i.h
  store <2 x float> %i.i, ptr %i.a, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !33 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load float, ptr %i.l, align 4, !tbaa !33 ; 2 uses
  %i.n = fsub float %i.k, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %i.n, ptr %i.o, align 8, !tbaa !33
  %i.p = fadd <2 x float> %i.g, %i.h
  store <2 x float> %i.p, ptr %i.b, align 8, !tbaa !33
  %i.q = fadd float %i.k, %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store float %i.q, ptr %i.r, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.s = call noundef i32 @_ZNK9dtNavMesh19queryPolygonsInTileEPK10dtMeshTilePKfS4_Pji(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 128) ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  %wide.trip.count = zext nneg i32 %i.s to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %.024.lcssa = phi i32 [ 0, %bb.a ], [ %.125, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.024.lcssa

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.02328 = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %.1, %bb.g ] ; 2 uses
  %.02427 = phi i32 [ 0, %.lr.ph ], [ %.125, %bb.g ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.y = load i32, ptr %i.x, align 4, !tbaa !40   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  store i8 0, ptr %i.e, align 1, !tbaa !81
  call void @_ZNK9dtNavMesh18closestPointOnPolyEjPKfPfPb(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %i.y, ptr noundef nonnull %2, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e)
  %i.z = load float, ptr %i.f, align 4, !tbaa !33
  %i.aa = load <2 x float>, ptr %i.d, align 8, !tbaa !33 ; 3 uses
  %i.ab = extractelement <2 x float> %i.aa, i64 1
  %i.ac = fsub float %i.z, %i.ab                  ; 5 uses
  %i.ad = load float, ptr %i.u, align 8, !tbaa !33 ; 2 uses
  %i.ae = load i8, ptr %i.e, align 1, !tbaa !81, !range !112, !noundef !113
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ag = fcmp olt float %i.ac, 0.000000e+00
  %i.ah = fneg float %i.ac
  %i.ai = select i1 %i.ag, float %i.ah, float %i.ac
  %i.aj = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 68
  %i.al = load float, ptr %i.ak, align 4, !tbaa !69
  %i.am = fsub float %i.ai, %i.al                 ; 3 uses
  %i.an = fcmp ogt float %i.am, 0.000000e+00
  %i.ao = fmul float %i.am, %i.am
  %i.ap = select i1 %i.an, float %i.ao, float 0.000000e+00
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.aq = load float, ptr %i.j, align 4, !tbaa !33
  %i.ar = fsub float %i.aq, %i.ad                 ; 2 uses
  %i.as = load float, ptr %2, align 4, !tbaa !33
  %i.at = extractelement <2 x float> %i.aa, i64 0
  %i.au = fsub float %i.as, %i.at                 ; 2 uses
  %i.av = fmul float %i.ac, %i.ac
  %i.aw = call float @llvm.fmuladd.f32(float %i.au, float %i.au, float %i.av)
  %i.ax = call noundef float @llvm.fmuladd.f32(float %i.ar, float %i.ar, float %i.aw)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi float [ %i.ap, %bb.c ], [ %i.ax, %bb.d ] ; 2 uses
  %i.ay = fcmp olt float %.0, %.02328
  br i1 %i.ay, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store <2 x float> %i.aa, ptr %4, align 4, !tbaa !33
  store float %i.ad, ptr %i.w, align 4, !tbaa !33
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.125 = phi i32 [ %i.y, %bb.f ], [ %.02427, %bb.e ] ; 2 uses
  %.1 = phi float [ %.0, %bb.f ], [ %.02328, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN9dtNavMesh15connectIntLinksEP10dtMeshTile(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(100) %0, ptr noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit39, label %_ZNK9dtNavMesh14getPolyRefBaseEPK10dtMeshTile.exit

_ZNK9dtNavMesh14getPolyRefBaseEPK10dtMeshTile.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = sdiv exact i64 %i.e, 104
  %i.g = trunc i64 %i.f to i32
  %i.h = load i32, ptr %1, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = load i32, ptr %i.i, align 8, !tbaa !42   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.l = load i32, ptr %i.k, align 4, !tbaa !41
  %i.m = add i32 %i.l, %i.j
  %i.n = shl i32 %i.h, %i.m
  %i.o = shl i32 %i.g, %i.j
  %i.p = or i32 %i.o, %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !52
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load i32, ptr %i.s, align 4, !tbaa !47   ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph43, label %.loopexit39

.lr.ph43:                                         ; preds = %_ZNK9dtNavMesh14getPolyRefBaseEPK10dtMeshTile.exit
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !55
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %wide.trip.count = zext nneg i32 %i.t to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph43, %.loopexit
  %indvars.iv46 = phi i64 [ 0, %.lr.ph43 ], [ %indvars.iv.next47, %.loopexit ] ; 2 uses
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %indvars.iv46 ; 5 uses
  store i32 -1, ptr %i.z, align 4, !tbaa !70
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 31
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !82
  %.mask = and i8 %i.ab, -64
  %i.ac = icmp eq i8 %.mask, 64
  br i1 %i.ac, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 30
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !67  ; 2 uses
  %.not44 = icmp eq i8 %i.ae, 0
  br i1 %.not44, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ag = zext i8 %i.ae to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_Z9allocLinkP10dtMeshTile.exit.thread
  %i.ah = phi i32 [ -1, %.lr.ph ], [ %i.az, %_Z9allocLinkP10dtMeshTile.exit.thread ] ; 3 uses
  %indvars.iv = phi i64 [ %i.ag, %.lr.ph ], [ %indvars.iv.next, %_Z9allocLinkP10dtMeshTile.exit.thread ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv.next
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !68 ; 2 uses
  %or.cond = icmp sgt i16 %i.aj, 0
  br i1 %or.cond, label %bb.e, label %_Z9allocLinkP10dtMeshTile.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ak = load i32, ptr %i.x, align 4, !tbaa !62  ; 4 uses
  %i.al = icmp eq i32 %i.ak, -1
  br i1 %i.al, label %_Z9allocLinkP10dtMeshTile.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = load ptr, ptr %i.y, align 8, !tbaa !56
  %i.an = zext i32 %i.ak to i64
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr %i.am, i64 %i.an ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !64
  store i32 %i.aq, ptr %i.x, align 4, !tbaa !62
  %i.ar = zext nneg i16 %i.aj to i32
  %i.as = add nsw i32 %i.ar, -1
  %i.at = or i32 %i.p, %i.as
  store i32 %i.at, ptr %i.ao, align 4, !tbaa !71
  %i.au = trunc i64 %indvars.iv.next to i8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i8 %i.au, ptr %i.av, align 4, !tbaa !72
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 9
  store i8 -1, ptr %i.aw, align 1, !tbaa !73
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 11
  store i8 0, ptr %i.ax, align 1, !tbaa !75
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 10
  store i8 0, ptr %i.ay, align 2, !tbaa !74
  store i32 %i.ah, ptr %i.ap, align 4, !tbaa !64
  store i32 %i.ak, ptr %i.z, align 4, !tbaa !70
  br label %_Z9allocLinkP10dtMeshTile.exit.thread

_Z9allocLinkP10dtMeshTile.exit.thread:            ; preds = %bb.e, %bb.f, %bb.d
  %i.az = phi i32 [ %i.ah, %bb.e ], [ %i.ak, %bb.f ], [ %i.ah, %bb.d ]
  %i.ba = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.ba, label %bb.d, label %.loopexit

.loopexit:                                        ; preds = %_Z9allocLinkP10dtMeshTile.exit.thread, %bb.c, %bb.b
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next47, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit39, label %bb.b

.loopexit39:                                      ; preds = %.loopexit, %_ZNK9dtNavMesh14getPolyRefBaseEPK10dtMeshTile.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZN9dtNavMesh16baseOffMeshLinksEP10dtMeshTile(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(100) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 6 uses
  %i.b = alloca [3 x float], align 4              ; 6 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit, label %_ZNK9dtNavMesh14getPolyRefBaseEPK10dtMeshTile.exit

_ZNK9dtNavMesh14getPolyRefBaseEPK10dtMeshTile.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 104
  %i.i = trunc i64 %i.h to i32
  %i.j = load i32, ptr %1, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !42   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.n = load i32, ptr %i.m, align 4, !tbaa !41
  %i.o = add i32 %i.n, %i.l
  %i.p = shl i32 %i.j, %i.o
  %i.q = shl i32 %i.i, %i.l
  %i.r = or i32 %i.q, %i.p
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !52   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 52
  %i.v = load i32, ptr %i.u, align 4, !tbaa !76
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNK9dtNavMesh14getPolyRefBaseEPK10dtMeshTile.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %2 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_Z9allocLinkP10dtMeshTile.exit61
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_Z9allocLinkP10dtMeshTile.exit61 ] ; 2 uses
  %i.af = phi ptr [ %i.t, %.lr.ph ], [ %i.cl, %_Z9allocLinkP10dtMeshTile.exit61 ]
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !61
  %i.ah = getelementptr inbounds nuw [36 x i8], ptr %i.ag, i64 %indvars.iv ; 5 uses
  %i.ai = load ptr, ptr %i.y, align 8, !tbaa !55
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 28 ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 4, !tbaa !78
  %i.al = zext i16 %i.ak to i64
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %i.al ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  %i.ao = load float, ptr %i.an, align 4, !tbaa !79 ; 2 uses
  store float %i.ao, ptr %i.a, align 4, !tbaa !33
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 68
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !69
  store float %i.aq, ptr %i.z, align 4, !tbaa !33
  store float %i.ao, ptr %i.aa, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.ar = call noundef i32 @_ZNK9dtNavMesh21findNearestPolyInTileEPK10dtMeshTilePKfS4_Pf(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull %1, ptr noundef %i.ah, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 3 uses
  %.not58 = icmp eq i32 %i.ar, 0
  br i1 %.not58, label %_Z9allocLinkP10dtMeshTile.exit61, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.as = load float, ptr %i.b, align 4, !tbaa !33 ; 2 uses
  %i.at = load float, ptr %i.ah, align 4, !tbaa !33
  %i.au = fsub float %i.as, %i.at                 ; 2 uses
  %i.av = fmul float %i.au, %i.au
  %i.aw = load float, ptr %i.ab, align 4, !tbaa !33 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !33
  %i.az = fsub float %i.aw, %i.ay                 ; 2 uses
  %i.ba = fmul float %i.az, %i.az
  %i.bb = fadd float %i.av, %i.ba
  %i.bc = load float, ptr %i.an, align 4, !tbaa !79 ; 2 uses
  %i.bd = fmul float %i.bc, %i.bc
  %i.be = fcmp ogt float %i.bb, %i.bd
  br i1 %i.be, label %_Z9allocLinkP10dtMeshTile.exit61, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bf = load ptr, ptr %i.ac, align 8, !tbaa !54
  %i.bg = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.bh = load i16, ptr %i.bg, align 4, !tbaa !68
  %i.bi = zext i16 %i.bh to i64
  %.idx = mul nuw nsw i64 %i.bi, 12
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.idx ; 3 uses
  store float %i.as, ptr %i.bj, align 4, !tbaa !33
  %3 = load float, ptr %2, align 4, !tbaa !33
  %4 = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  store float %3, ptr %4, align 4, !tbaa !33
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store float %i.aw, ptr %i.bk, align 4, !tbaa !33
  %i.bl = load i32, ptr %i.ad, align 4, !tbaa !62 ; 3 uses
  %i.bm = icmp eq i32 %i.bl, -1
  br i1 %i.bm, label %_Z9allocLinkP10dtMeshTile.exit61, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bn = load ptr, ptr %i.ae, align 8, !tbaa !56 ; 2 uses
  %i.bo = zext i32 %i.bl to i64
  %i.bp = getelementptr inbounds nuw [12 x i8], ptr %i.bn, i64 %i.bo ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !64 ; 4 uses
  store i32 %i.br, ptr %i.ad, align 4, !tbaa !62
  store i32 %i.ar, ptr %i.bp, align 4, !tbaa !71
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store <4 x i8> <i8 0, i8 -1, i8 0, i8 0>, ptr %i.bs, align 4, !tbaa !83
  %i.bt = load i32, ptr %i.am, align 4, !tbaa !70
  store i32 %i.bt, ptr %i.bq, align 4, !tbaa !64
  store i32 %i.bl, ptr %i.am, align 4, !tbaa !70
  %i.bu = icmp eq i32 %i.br, -1
  br i1 %i.bu, label %_Z9allocLinkP10dtMeshTile.exit61, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bv = zext i32 %i.br to i64
  %i.bw = getelementptr inbounds nuw [12 x i8], ptr %i.bn, i64 %i.bv ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !64
  store i32 %i.by, ptr %i.ad, align 4, !tbaa !62
  %i.bz = load i32, ptr %i.k, align 8, !tbaa !42
  %notmask.i = shl nsw i32 -1, %i.bz
  %i.ca = xor i32 %notmask.i, -1
  %i.cb = load ptr, ptr %i.y, align 8, !tbaa !55
  %i.cc = and i32 %i.ar, 65535
  %i.cd = and i32 %i.cc, %i.ca
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %i.cb, i64 %i.ce ; 2 uses
  %i.cg = load i16, ptr %i.aj, align 4, !tbaa !78
  %i.ch = zext i16 %i.cg to i32
  %i.ci = or i32 %i.r, %i.ch
  store i32 %i.ci, ptr %i.bw, align 4, !tbaa !71
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store <4 x i8> <i8 -1, i8 -1, i8 0, i8 0>, ptr %i.cj, align 4, !tbaa !83
  %i.ck = load i32, ptr %i.cf, align 4, !tbaa !70
  store i32 %i.ck, ptr %i.bx, align 4, !tbaa !64
  store i32 %i.br, ptr %i.cf, align 4, !tbaa !70
  br label %_Z9allocLinkP10dtMeshTile.exit61

_Z9allocLinkP10dtMeshTile.exit61:                 ; preds = %bb.e, %bb.d, %bb.f, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cl = load ptr, ptr %i.s, align 8, !tbaa !52  ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 52
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !76
  %i.co = sext i32 %i.cn to i64
  %i.cp = icmp slt i64 %indvars.iv.next, %i.co
  br i1 %i.cp, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %_Z9allocLinkP10dtMeshTile.exit61, %_ZNK9dtNavMesh14getPolyRefBaseEPK10dtMeshTile.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @_ZNK9dtNavMesh13getPolyHeightEPK10dtMeshTilePK6dtPolyPKfPf(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [18 x float], align 16            ; 6 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = alloca [3 x float], align 4              ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 31
  %i.e = load i8, ptr %i.d, align 1, !tbaa !82
  %.mask = and i8 %i.e, -64
  %i.f = icmp eq i8 %.mask, 64
  br i1 %i.f, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !55
  %i.i = ptrtoint ptr %2 to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = lshr exact i64 %i.k, 5
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !57
  %i.o = and i64 %i.l, 4294967295
  %i.p = getelementptr inbounds nuw [12 x i8], ptr %i.n, i64 %i.o ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 30 ; 2 uses
  %i.r = load i8, ptr %i.q, align 2, !tbaa !67    ; 5 uses
  %i.s = zext i8 %i.r to i32
  %.not66 = icmp eq i8 %i.r, 0
  br i1 %.not66, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !54   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %wide.trip.count = zext i8 %i.r to i64          ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.w = icmp eq i8 %i.r, 1
  br i1 %i.w, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 254
  br label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod81 = trunc i8 %i.r to i1
  tail call void @llvm.assume(i1 %lcmp.mod81)
  %.idx80.epil = mul nuw nsw i64 %indvars.iv.epil.init, 12
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx80.epil ; 3 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv.epil.init
  %i.z = load i16, ptr %i.y, align 2, !tbaa !68
  %i.aa = zext i16 %i.z to i64
  %.idx57.epil = mul nuw nsw i64 %i.aa, 12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx57.epil ; 3 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !33
  store float %i.ac, ptr %i.x, align 4, !tbaa !33
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !33
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store float %i.ae, ptr %i.af, align 4, !tbaa !33
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !33
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store float %i.ah, ptr %i.ai, align 4, !tbaa !33
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.b
  %i.aj = call noundef zeroext i1 @_Z16dtPointInPolygonPKfS0_i(ptr noundef %3, ptr noundef nonnull %i.a, i32 noundef %i.s) #16 ; 2 uses
  %.not = icmp ne ptr %4, null
  %or.cond.not = and i1 %.not, %i.aj
  br i1 %or.cond.not, label %.preheader, label %bb.o

.preheader:                                       ; preds = %._crit_edge
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 9 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !85
  %.not5663.not = icmp eq i8 %i.al, 0
  br i1 %.not5663.not, label %.critedge59, label %.lr.ph65

.lr.ph65:                                         ; preds = %.preheader
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %.idx80 = mul nuw nsw i64 %indvars.iv, 12
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx80 ; 3 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv
  %i.at = load i16, ptr %i.as, align 2, !tbaa !68
  %i.au = zext i16 %i.at to i64
  %.idx57 = mul nuw nsw i64 %i.au, 12
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx57 ; 3 uses
  %i.aw = load float, ptr %i.av, align 4, !tbaa !33
  store float %i.aw, ptr %i.ar, align 8, !tbaa !33
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !33
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store float %i.ay, ptr %i.az, align 4, !tbaa !33
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !33
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store float %i.bb, ptr %i.bc, align 8, !tbaa !33
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %.idx80.1 = mul nuw nsw i64 %indvars.iv.next, 12
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx80.1 ; 3 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv.next
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !68
  %i.bg = zext i16 %i.bf to i64
  %.idx57.1 = mul nuw nsw i64 %i.bg, 12
  %i.bh = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx57.1 ; 3 uses
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !33
  store float %i.bi, ptr %i.bd, align 4, !tbaa !33
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !33
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store float %i.bk, ptr %i.bl, align 8, !tbaa !33
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !33
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store float %i.bn, ptr %i.bo, align 4, !tbaa !33
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.c

bb.d:                                             ; preds = %.lr.ph65, %.critedge
  %.04764 = phi i32 [ 0, %.lr.ph65 ], [ %i.dt, %.critedge ] ; 2 uses
  %i.bp = load ptr, ptr %i.am, align 8, !tbaa !59
  %i.bq = load i32, ptr %i.an, align 4, !tbaa !86
  %i.br = add i32 %i.bq, %.04764
end_hunk_0
