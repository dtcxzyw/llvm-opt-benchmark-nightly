Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/DetourDebugDraw?download=true
inline.NumInlined: 72
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_Z30duDebugDrawTileCacheLayerAreasP11duDebugDrawRK16dtTileCacheLayerff:bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bd = lshr i32 %i.j, 16
  %i.be = lshr i32 %i.j, 24
  %i.bf = trunc i32 %i.j to i16                   ; 2 uses
  %i.bg = and i16 %i.bf, 255
  %.lhs.trunc103 = mul nuw i16 %i.bg, 223
  %i.bh = udiv i16 %.lhs.trunc103, 255
  %.zext104 = zext nneg i16 %i.bh to i32          ; 2 uses
  %i.bi = lshr i16 %i.bf, 8
  %.lhs.trunc105 = mul nuw i16 %i.bi, 223         ; 2 uses
  %i.bj = udiv i16 %.lhs.trunc105, 255
  %.zext106 = zext nneg i16 %i.bj to i32
  %i.bk = trunc nuw i32 %i.bd to i16
  %i.bl = and i16 %i.bk, 255
  %.lhs.trunc107 = mul nuw i16 %i.bl, 223         ; 2 uses
  %i.bm = trunc nuw nsw i32 %i.be to i16
  %i.bn = mul nuw i16 %i.bm, 223
  %.lhs.trunc109 = add nuw i16 %i.bn, 2048
  %i.bo = shl nuw nsw i32 %.zext106, 8
  %.lhs.trunc97 = add nuw i16 %.lhs.trunc105, 6144
  %.lhs.trunc99 = add nuw i16 %.lhs.trunc107, 8160
  %i.bp = insertelement <4 x i16> poison, i16 %.lhs.trunc107, i64 0
  %i.bq = insertelement <4 x i16> %i.bp, i16 %.lhs.trunc109, i64 1
  %i.br = insertelement <4 x i16> %i.bq, i16 %.lhs.trunc97, i64 2
  %i.bs = insertelement <4 x i16> %i.br, i16 %.lhs.trunc99, i64 3
  %i.bt = udiv <4 x i16> %i.bs, splat (i16 255)   ; 4 uses
  %i.bu = extractelement <4 x i16> %i.bt, i64 0
  %.zext108 = zext nneg i16 %i.bu to i32
  %i.bv = extractelement <4 x i16> %i.bt, i64 1
  %.zext110 = zext nneg i16 %i.bv to i32
  %i.bw = shl nuw nsw i32 %.zext108, 16
  %i.bx = or i32 %i.bo, %i.bw
  %i.by = or i32 %i.bx, %.zext104
  %i.bz = shl nuw i32 %.zext110, 24               ; 2 uses
  %i.ca = or i32 %i.by, %i.bz
  %i.cb = extractelement <4 x i16> %i.bt, i64 2
  %.zext98 = zext nneg i16 %i.cb to i32
  %i.cc = extractelement <4 x i16> %i.bt, i64 3
  %.zext100 = zext nneg i16 %i.cc to i32
  %i.cd = shl nuw nsw i32 %.zext98, 8
  %i.ce = shl nuw nsw i32 %.zext100, 16
  %i.cf = or i32 %i.cd, %i.ce
  %i.cg = or i32 %i.cf, %.zext104
  %i.ch = or i32 %i.cg, %i.bz
  %i.ci = bitcast i32 %i.j to <4 x i8>
  %i.cj = zext <4 x i8> %i.ci to <4 x i32>
  %i.ck = mul nuw nsw <4 x i32> %i.cj, splat (i32 223)
  br i1 %.not114, label %._crit_edge113.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.cl = zext i8 %i.c to i64                     ; 2 uses
  %wide.trip.count119 = zext i8 %i.e to i64
  %i.cm = insertelement <2 x float> poison, float %3, i64 0
  %i.cn = insertelement <2 x float> %i.cm, float %2, i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv116 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next117, %._crit_edge ] ; 3 uses
  %i.co = mul nuw nsw i64 %indvars.iv116, %i.cl
  %i.cp = trunc nuw nsw i64 %indvars.iv116 to i32
  %i.cq = uitofp nneg i32 %i.cp to float
  %i.cr = insertelement <2 x float> poison, float %i.cq, i64 1
  br label %bb.b

._crit_edge113.split:                             ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  %i.cs = load ptr, ptr %0, align 8, !tbaa !27
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 72
  %i.cu = load ptr, ptr %i.ct, align 8
  tail call void %i.cu(ptr noundef nonnull align 8 dereferenceable(8) %0) #4, !call_target !48
  tail call fastcc void @_ZL25debugDrawTileCachePortalsP11duDebugDrawRK16dtTileCacheLayerff(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(48) %1, float noundef %2, float noundef %3)
  ret void

._crit_edge:                                      ; preds = %bb.g
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %exitcond120.not = icmp eq i64 %indvars.iv.next117, %wide.trip.count119
  br i1 %exitcond120.not, label %._crit_edge113.split, label %.preheader

bb.b:                                             ; preds = %.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.cv = add nuw nsw i64 %indvars.iv, %i.co      ; 2 uses
  %i.cw = load ptr, ptr %i.bb, align 8, !tbaa !93
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cv
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !61  ; 2 uses
  %i.cz = zext i8 %i.cy to i32
  %i.da = icmp eq i8 %i.cy, -1
  br i1 %i.da, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.db = load ptr, ptr %i.bc, align 8, !tbaa !128
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cv
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !61  ; 2 uses
  switch i8 %i.dd, label %bb.e [
    i8 63, label %bb.f
    i8 0, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.de = zext i8 %i.dd to i32
  %i.df = load ptr, ptr %0, align 8, !tbaa !27
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 80
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = tail call noundef i32 %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.de) #4, !call_target !56 ; 4 uses
  %i.dj = shl i32 %i.di, 5
  %i.dk = lshr i32 %i.di, 3
  %i.dl = lshr i32 %i.di, 11
  %i.dm = lshr i32 %i.di, 19
  %i.dn = insertelement <4 x i32> poison, i32 %i.dj, i64 0
  %i.do = insertelement <4 x i32> %i.dn, i32 %i.dk, i64 1
  %i.dp = insertelement <4 x i32> %i.do, i32 %i.dl, i64 2
  %i.dq = insertelement <4 x i32> %i.dp, i32 %i.dm, i64 3
  %i.dr = and <4 x i32> %i.dq, splat (i32 8160)
  %i.ds = add nuw nsw <4 x i32> %i.dr, %i.ck
  %i.dt = trunc <4 x i32> %i.ds to <4 x i16>
  %i.du = udiv <4 x i16> %i.dt, splat (i16 255)
  %i.dv = zext nneg <4 x i16> %i.du to <4 x i32>
  %i.dw = shl nuw <4 x i32> %i.dv, <i32 0, i32 8, i32 16, i32 24>
  %i.dx = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.dw)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.0 = phi i32 [ %i.dx, %bb.e ], [ %i.ca, %bb.d ], [ %i.ch, %bb.c ] ; 4 uses
  %i.dy = load float, ptr %i.f, align 4, !tbaa !71
  %i.dz = trunc nuw nsw i64 %indvars.iv to i32
  %i.ea = uitofp nneg i32 %i.dz to float
  %i.eb = tail call float @llvm.fmuladd.f32(float %i.ea, float %2, float %i.dy) ; 3 uses
  %i.ec = add nuw nsw i32 %i.cz, 1
  %i.ed = uitofp nneg i32 %i.ec to float
  %i.ee = load <2 x float>, ptr %i.p, align 4, !tbaa !71
  %i.ef = insertelement <2 x float> %i.cr, float %i.ed, i64 0
  %i.eg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> %i.cn, <2 x float> %i.ee) ; 2 uses
  %i.eh = load ptr, ptr %0, align 8, !tbaa !27
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 48
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = extractelement <2 x float> %i.eg, i64 0 ; 4 uses
  %i.el = extractelement <2 x float> %i.eg, i64 1 ; 3 uses
  tail call void %i.ej(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.eb, float noundef %i.ek, float noundef %i.el, i32 noundef %.0) #4, !call_target !75
  %i.em = fadd float %2, %i.el                    ; 2 uses
  %i.en = load ptr, ptr %0, align 8, !tbaa !27
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 48
  %i.ep = load ptr, ptr %i.eo, align 8
  tail call void %i.ep(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.eb, float noundef %i.ek, float noundef %i.em, i32 noundef %.0) #4, !call_target !75
  %i.eq = fadd float %2, %i.eb                    ; 2 uses
  %i.er = load ptr, ptr %0, align 8, !tbaa !27
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 48
  %i.et = load ptr, ptr %i.es, align 8
  tail call void %i.et(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.eq, float noundef %i.ek, float noundef %i.em, i32 noundef %.0) #4, !call_target !75
  %i.eu = load ptr, ptr %0, align 8, !tbaa !27
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 48
  %i.ew = load ptr, ptr %i.ev, align 8
  tail call void %i.ew(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.eq, float noundef %i.ek, float noundef %i.el, i32 noundef %.0) #4, !call_target !75
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.cl
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
  %4 = sitofp i32 %i.q to float
  %i.r = trunc i64 %indvars.iv67 to i32
  %i.s = add i32 %i.r, 1
  %i.t = sitofp i32 %i.s to float
  %i.u = trunc i64 %indvars.iv67 to i32
  %i.v = insertelement <2 x i32> poison, i32 %i.u, i64 0
  %i.w = add <2 x i32> %i.v, <i32 1, i32 poison>
  %i.x = sitofp <2 x i32> %i.w to <2 x float>     ; 2 uses
  %i.y = trunc i64 %indvars.iv67 to i32
  %5 = insertelement <2 x i32> poison, i32 %i.y, i64 0
  %6 = shufflevector <2 x i32> %5, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %7 = sitofp <4 x i32> %6 to <4 x float>         ; 2 uses
  %i.z = shufflevector <2 x float> %i.x, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.aa = shufflevector <2 x float> %i.x, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.ab = insertelement <4 x float> poison, float %4, i64 2
  %i.ac = insertelement <4 x float> %i.ab, float %i.t, i64 3
  %8 = shufflevector <4 x float> %i.aa, <4 x float> %7, <4 x i32> <i32 poison, i32 poison, i32 2, i32 4>
  br label %bb.b

._crit_edge62.split:                              ; preds = %._crit_edge, %.preheader58.lr.ph, %bb.a
  %i.ad = load ptr, ptr %0, align 8, !tbaa !27
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(8) %0) #4, !call_target !48
  ret void

._crit_edge:                                      ; preds = %.loopexit
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %exitcond71.not = icmp eq i64 %indvars.iv.next68, %wide.trip.count70
  br i1 %exitcond71.not, label %._crit_edge62.split, label %.preheader58

bb.b:                                             ; preds = %.preheader58, %.loopexit
  %indvars.iv = phi i64 [ 0, %.preheader58 ], [ %indvars.iv.next, %.loopexit ] ; 8 uses
  %i.ag = add nuw nsw i64 %indvars.iv, %i.p       ; 5 uses
  %i.ah = load ptr, ptr %i.j, align 8, !tbaa !93
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ag
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !61  ; 2 uses
  %i.ak = icmp eq i8 %i.aj, -1
  br i1 %i.ak, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.al = zext i8 %i.aj to i32
  %i.am = add nuw nsw i32 %i.al, 2
  %i.an = uitofp nneg i32 %i.am to float          ; 4 uses
  %i.ao = load ptr, ptr %i.k, align 8, !tbaa !129
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ag
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !61
  %i.ar = zext i8 %i.aq to i32                    ; 2 uses
  %i.as = and i32 %i.ar, 16
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.at = trunc nuw nsw i64 %indvars.iv to i32
  %9 = sitofp i32 %i.at to float
  %i.au = load <3 x float>, ptr %i.f, align 4, !tbaa !71
  %i.av = shufflevector <3 x float> %i.au, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.aw = insertelement <4 x float> %i.ac, float %9, i64 0
  %i.ax = insertelement <4 x float> %i.aw, float %i.an, i64 1
  %i.ay = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ax, <4 x float> %i.o, <4 x float> %i.av) ; 4 uses
  %i.az = load ptr, ptr %0, align 8, !tbaa !27
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = extractelement <4 x float> %i.ay, i64 0 ; 2 uses
  %i.bd = extractelement <4 x float> %i.ay, i64 1 ; 2 uses
  %i.be = extractelement <4 x float> %i.ay, i64 2
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.bc, float noundef %i.bd, float noundef %i.be, i32 noundef -1) #4, !call_target !75
  %i.bf = load ptr, ptr %0, align 8, !tbaa !27
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = extractelement <4 x float> %i.ay, i64 3
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.bc, float noundef %i.bd, float noundef %i.bi, i32 noundef -1) #4, !call_target !75
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !129
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.ag
  %.pre72 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !61
  %.pre79 = zext i8 %.pre72 to i32
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.c
  %.pre-phi = phi i32 [ %i.ar, %.preheader ], [ %.pre79, %bb.c ] ; 2 uses
  %i.bj = and i32 %.pre-phi, 32
  %.not.1 = icmp eq i32 %i.bj, 0
  br i1 %.not.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bk = trunc nuw nsw i64 %indvars.iv to i32
  %10 = sitofp i32 %i.bk to float
  %i.bl = trunc i64 %indvars.iv to i32
  %i.bm = add i32 %i.bl, 1
  %i.bn = sitofp i32 %i.bm to float
  %i.bo = load <3 x float>, ptr %i.f, align 4, !tbaa !71
  %i.bp = shufflevector <3 x float> %i.bo, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.bq = insertelement <4 x float> %i.z, float %10, i64 0
  %i.br = insertelement <4 x float> %i.bq, float %i.an, i64 1
  %i.bs = insertelement <4 x float> %i.br, float %i.bn, i64 3
  %i.bt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bs, <4 x float> %i.o, <4 x float> %i.bp) ; 4 uses
  %i.bu = load ptr, ptr %0, align 8, !tbaa !27
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = extractelement <4 x float> %i.bt, i64 0
  %i.by = extractelement <4 x float> %i.bt, i64 1 ; 2 uses
  %i.bz = extractelement <4 x float> %i.bt, i64 2 ; 2 uses
  tail call void %i.bw(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.bx, float noundef %i.by, float noundef %i.bz, i32 noundef -1) #4, !call_target !75
  %i.ca = load ptr, ptr %0, align 8, !tbaa !27
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = extractelement <4 x float> %i.bt, i64 3
  tail call void %i.cc(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.cd, float noundef %i.by, float noundef %i.bz, i32 noundef -1) #4, !call_target !75
  %.pre73 = load ptr, ptr %i.k, align 8, !tbaa !129
  %.phi.trans.insert74 = getelementptr inbounds nuw i8, ptr %.pre73, i64 %i.ag
  %.pre75 = load i8, ptr %.phi.trans.insert74, align 1, !tbaa !61
  %.pre80 = zext i8 %.pre75 to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre-phi81 = phi i32 [ %.pre80, %bb.e ], [ %.pre-phi, %bb.d ] ; 2 uses
  %i.ce = and i32 %.pre-phi81, 64
  %.not.2 = icmp eq i32 %i.ce, 0
  br i1 %.not.2, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cf = trunc i64 %indvars.iv to i32
  %i.cg = add i32 %i.cf, 1
  %i.ch = sitofp i32 %i.cg to float
  %i.ci = load <3 x float>, ptr %i.f, align 4, !tbaa !71
  %i.cj = shufflevector <3 x float> %i.ci, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.ck = insertelement <4 x float> %8, float %i.ch, i64 0
  %i.cl = insertelement <4 x float> %i.ck, float %i.an, i64 1
  %i.cm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cl, <4 x float> %i.o, <4 x float> %i.cj) ; 4 uses
  %i.cn = load ptr, ptr %0, align 8, !tbaa !27
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = extractelement <4 x float> %i.cm, i64 0 ; 2 uses
  %i.cr = extractelement <4 x float> %i.cm, i64 1 ; 2 uses
  %i.cs = extractelement <4 x float> %i.cm, i64 2
  tail call void %i.cp(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.cq, float noundef %i.cr, float noundef %i.cs, i32 noundef -1) #4, !call_target !75
  %i.ct = load ptr, ptr %0, align 8, !tbaa !27
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = extractelement <4 x float> %i.cm, i64 3
  tail call void %i.cv(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.cq, float noundef %i.cr, float noundef %i.cw, i32 noundef -1) #4, !call_target !75
  %.pre76 = load ptr, ptr %i.k, align 8, !tbaa !129
  %.phi.trans.insert77 = getelementptr inbounds nuw i8, ptr %.pre76, i64 %i.ag
  %.pre78 = load i8, ptr %.phi.trans.insert77, align 1, !tbaa !61
  %.pre82 = zext i8 %.pre78 to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre-phi83 = phi i32 [ %.pre82, %bb.g ], [ %.pre-phi81, %bb.f ]
  %i.cx = and i32 %.pre-phi83, 128
  %.not.3 = icmp eq i32 %i.cx, 0
  br i1 %.not.3, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cy = trunc i64 %indvars.iv to i32
  %i.cz = add i32 %i.cy, 1
  %i.da = sitofp i32 %i.cz to float
  %i.db = trunc nuw nsw i64 %indvars.iv to i32
  %11 = sitofp i32 %i.db to float
  %i.dc = load <3 x float>, ptr %i.f, align 4, !tbaa !71
  %i.dd = shufflevector <3 x float> %i.dc, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.de = insertelement <4 x float> %7, float %i.da, i64 0
  %i.df = insertelement <4 x float> %i.de, float %i.an, i64 1
  %i.dg = insertelement <4 x float> %i.df, float %11, i64 3
  %i.dh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dg, <4 x float> %i.o, <4 x float> %i.dd) ; 4 uses
  %i.di = load ptr, ptr %0, align 8, !tbaa !27
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = extractelement <4 x float> %i.dh, i64 0
  %i.dm = extractelement <4 x float> %i.dh, i64 1 ; 2 uses
  %i.dn = extractelement <4 x float> %i.dh, i64 2 ; 2 uses
  tail call void %i.dk(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.dl, float noundef %i.dm, float noundef %i.dn, i32 noundef -1) #4, !call_target !75
  %i.do = load ptr, ptr %0, align 8, !tbaa !27
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = extractelement <4 x float> %i.dh, i64 3
  tail call void %i.dq(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.dr, float noundef %i.dm, float noundef %i.dn, i32 noundef -1) #4, !call_target !75
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
  %i.bd = and i32 %i.j, 255
  %i.be = lshr i32 %i.j, 8
  %i.bf = and i32 %i.be, 255
  %i.bg = lshr i32 %i.j, 16
  %i.bh = and i32 %i.bg, 255
  %i.bi = lshr i32 %i.j, 24
  %i.bj = mul nuw nsw i32 %i.bd, 63
  %i.bk = mul nuw nsw i32 %i.bf, 63
  %i.bl = mul nuw nsw i32 %i.bh, 63
  %i.bm = mul nuw nsw i32 %i.bi, 63
  br i1 %.not91, label %._crit_edge90.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bn = zext i8 %i.c to i64                     ; 2 uses
  %wide.trip.count96 = zext i8 %i.e to i64
  %i.bo = insertelement <2 x float> poison, float %3, i64 0
  %i.bp = insertelement <2 x float> %i.bo, float %2, i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv93 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next94, %._crit_edge ] ; 3 uses
  %i.bq = mul nuw nsw i64 %indvars.iv93, %i.bn
  %i.br = trunc nuw nsw i64 %indvars.iv93 to i32
  %i.bs = uitofp nneg i32 %i.br to float
  %i.bt = insertelement <2 x float> poison, float %i.bs, i64 1
  br label %bb.b

._crit_edge90.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  %i.bu = load ptr, ptr %0, align 8, !tbaa !27
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 72
  %i.bw = load ptr, ptr %i.bv, align 8
  tail call void %i.bw(ptr noundef nonnull align 8 dereferenceable(8) %0) #4, !call_target !48
  tail call fastcc void @_ZL25debugDrawTileCachePortalsP11duDebugDrawRK16dtTileCacheLayerff(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(48) %1, float noundef %2, float noundef %3)
  ret void

._crit_edge:                                      ; preds = %bb.d
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %exitcond97.not = icmp eq i64 %indvars.iv.next94, %wide.trip.count96
  br i1 %exitcond97.not, label %._crit_edge90.split, label %.preheader

bb.b:                                             ; preds = %.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.bx = add nuw nsw i64 %indvars.iv, %i.bq      ; 2 uses
  %i.by = load ptr, ptr %i.bb, align 8, !tbaa !93
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bx
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !61  ; 2 uses
  %i.cb = icmp eq i8 %i.ca, -1
  br i1 %i.cb, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cc = zext i8 %i.ca to i32
  %i.cd = load ptr, ptr %i.bc, align 8, !tbaa !130
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bx
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !61
  %i.cg = zext i8 %i.cf to i32
  %i.ch = tail call noundef i32 @_Z10duIntToColii(i32 noundef %i.cg, i32 noundef 255) #4 ; 4 uses
  %i.ci = and i32 %i.ch, 255
  %i.cj = lshr i32 %i.ch, 8
  %i.ck = and i32 %i.cj, 255
  %i.cl = lshr i32 %i.ch, 16
  %i.cm = and i32 %i.cl, 255
  %i.cn = lshr i32 %i.ch, 24
  %i.co = mul nuw nsw i32 %i.ci, 192
  %i.cp = add nuw nsw i32 %i.co, %i.bj
  %.lhs.trunc = trunc i32 %i.cp to i16
  %i.cq = mul nuw nsw i32 %i.ck, 192
  %i.cr = add nuw nsw i32 %i.cq, %i.bk
  %.lhs.trunc82 = trunc i32 %i.cr to i16
  %i.cs = mul nuw nsw i32 %i.cm, 192
  %i.ct = add nuw nsw i32 %i.cs, %i.bl
  %.lhs.trunc84 = trunc i32 %i.ct to i16
  %i.cu = mul nuw nsw i32 %i.cn, 192
  %i.cv = add nuw nsw i32 %i.cu, %i.bm
  %.lhs.trunc86 = trunc i32 %i.cv to i16
  %i.cw = insertelement <4 x i16> poison, i16 %.lhs.trunc, i64 0
  %i.cx = insertelement <4 x i16> %i.cw, i16 %.lhs.trunc82, i64 1
  %i.cy = insertelement <4 x i16> %i.cx, i16 %.lhs.trunc84, i64 2
  %i.cz = insertelement <4 x i16> %i.cy, i16 %.lhs.trunc86, i64 3
  %i.da = udiv <4 x i16> %i.cz, splat (i16 255)
  %i.db = zext nneg <4 x i16> %i.da to <4 x i32>
  %i.dc = shl nuw <4 x i32> %i.db, <i32 0, i32 8, i32 16, i32 24>
  %i.dd = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.dc) ; 4 uses
  %i.de = load float, ptr %i.f, align 4, !tbaa !71
  %i.df = trunc nuw nsw i64 %indvars.iv to i32
  %i.dg = uitofp nneg i32 %i.df to float
  %i.dh = tail call float @llvm.fmuladd.f32(float %i.dg, float %2, float %i.de) ; 3 uses
  %i.di = add nuw nsw i32 %i.cc, 1
  %i.dj = uitofp nneg i32 %i.di to float
  %i.dk = load <2 x float>, ptr %i.p, align 4, !tbaa !71
  %i.dl = insertelement <2 x float> %i.bt, float %i.dj, i64 0
  %i.dm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.bp, <2 x float> %i.dk) ; 2 uses
  %i.dn = load ptr, ptr %0, align 8, !tbaa !27
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = extractelement <2 x float> %i.dm, i64 0 ; 4 uses
  %i.dr = extractelement <2 x float> %i.dm, i64 1 ; 3 uses
  tail call void %i.dp(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.dh, float noundef %i.dq, float noundef %i.dr, i32 noundef %i.dd) #4, !call_target !75
  %i.ds = fadd float %2, %i.dr                    ; 2 uses
  %i.dt = load ptr, ptr %0, align 8, !tbaa !27
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 48
  %i.dv = load ptr, ptr %i.du, align 8
  tail call void %i.dv(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.dh, float noundef %i.dq, float noundef %i.ds, i32 noundef %i.dd) #4, !call_target !75
  %i.dw = fadd float %2, %i.dh                    ; 2 uses
  %i.dx = load ptr, ptr %0, align 8, !tbaa !27
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 48
  %i.dz = load ptr, ptr %i.dy, align 8
  tail call void %i.dz(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.dw, float noundef %i.dq, float noundef %i.ds, i32 noundef %i.dd) #4, !call_target !75
  %i.ea = load ptr, ptr %0, align 8, !tbaa !27
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  %i.ec = load ptr, ptr %i.eb, align 8
  tail call void %i.ec(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.dw, float noundef %i.dq, float noundef %i.dr, i32 noundef %i.dd) #4, !call_target !75
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
end_hunk_0
