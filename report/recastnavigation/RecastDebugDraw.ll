Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastDebugDraw?download=true
inline.NumInlined: 58
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_Z37duDebugDrawCompactHeightfieldDistanceP11duDebugDrawRK20rcCompactHeightfield:bb.a
  %i.bk = and i32 %i.be, 16777215
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = zext nneg i32 %i.bh to i64
  br label %bb.e

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre = load i32, ptr %1, align 8, !tbaa !66
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %i.bn = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.ao, %bb.d ] ; 5 uses
  %i.bo = add nuw nsw i32 %.06571, 1              ; 2 uses
  %i.bp = icmp slt i32 %i.bo, %i.bn
  br i1 %i.bp, label %bb.d, label %._crit_edge73.loopexit

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ %i.bl, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.bq = load ptr, ptr %i.u, align 8, !tbaa !69
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv
  %i.bs = load float, ptr %i.v, align 8, !tbaa !35
  %i.bt = load i16, ptr %i.br, align 4, !tbaa !71
  %i.bu = zext i16 %i.bt to i32
  %i.bv = add nuw nsw i32 %i.bu, 1
  %i.bw = uitofp nneg i32 %i.bv to float
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.f, float %i.bs) ; 4 uses
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !93
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !75
  %i.cb = uitofp i16 %i.ca to float
  %i.cc = fmul float %i.k, %i.cb
  %i.cd = fptoui float %i.cc to i8
  %i.ce = zext i8 %i.cd to i32
  %i.cf = mul nuw nsw i32 %i.ce, 65793
  %i.cg = or disjoint i32 %i.cf, -16777216        ; 4 uses
  %i.ch = load ptr, ptr %0, align 8, !tbaa !14
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  %i.cj = load ptr, ptr %i.ci, align 8
  tail call void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.ay, float noundef %i.bx, float noundef %i.ax, i32 noundef %i.cg) #6, !call_target !74
  %i.ck = load ptr, ptr %0, align 8, !tbaa !14
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.cm = load ptr, ptr %i.cl, align 8
  tail call void %i.cm(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.ay, float noundef %i.bx, float noundef %i.bi, i32 noundef %i.cg) #6, !call_target !74
  %i.cn = load ptr, ptr %0, align 8, !tbaa !14
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  %i.cp = load ptr, ptr %i.co, align 8
  tail call void %i.cp(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.bj, float noundef %i.bx, float noundef %i.bi, i32 noundef %i.cg) #6, !call_target !74
  %i.cq = load ptr, ptr %0, align 8, !tbaa !14
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  %i.cs = load ptr, ptr %i.cr, align 8
  tail call void %i.cs(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.bj, float noundef %i.bx, float noundef %i.ax, i32 noundef %i.cg) #6, !call_target !74
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ct = icmp samesign ult i64 %indvars.iv.next, %i.bm
  br i1 %i.ct, label %bb.e, label %._crit_edge.loopexit

bb.f:                                             ; preds = %bb.b, %bb.a, %._crit_edge75
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Z27duDebugDrawHeightfieldLayerP11duDebugDrawRK18rcHeightfieldLayeri(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.b = load float, ptr %i.a, align 8, !tbaa !97 ; 4 uses
  %i.c = load <2 x float>, ptr %i.a, align 8, !tbaa !35
  %i.d = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !98   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !99   ; 3 uses
  %i.i = add nsw i32 %2, 1
  %i.j = tail call noundef i32 @_Z10duIntToColii(i32 noundef %i.i, i32 noundef 255) #6 ; 5 uses
  %i.k = load float, ptr %1, align 8, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.n = load float, ptr %i.m, align 4, !tbaa !35
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load float, ptr %i.o, align 8, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load float, ptr %i.q, align 8, !tbaa !35
  %i.s = load <4 x i32>, ptr %i.l, align 8, !tbaa !37
  %i.t = add nsw <4 x i32> %i.s, <i32 0, i32 1, i32 0, i32 1>
  %i.u = sitofp <4 x i32> %i.t to <4 x float>
  %i.v = insertelement <4 x float> poison, float %i.b, i64 0
  %i.w = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> zeroinitializer
  %i.x = insertelement <4 x float> poison, float %i.k, i64 0
  %i.y = insertelement <4 x float> %i.x, float %i.p, i64 1
  %i.z = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.aa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.u, <4 x float> %i.w, <4 x float> %i.z) ; 4 uses
  %i.ab = and i32 %i.j, 16777215
  %i.ac = or disjoint i32 %i.ab, -2147483648
  %i.ad = extractelement <4 x float> %i.aa, i64 0
  %i.ae = extractelement <4 x float> %i.aa, i64 1
  %i.af = extractelement <4 x float> %i.aa, i64 2
  %i.ag = extractelement <4 x float> %i.aa, i64 3
  tail call void @_Z18duDebugDrawBoxWireP11duDebugDrawffffffjf(ptr noundef %0, float noundef %i.ad, float noundef %i.n, float noundef %i.af, float noundef %i.ae, float noundef %i.r, float noundef %i.ag, i32 noundef %i.ac, float noundef 2.000000e+00) #6
  %i.ah = load ptr, ptr %0, align 8, !tbaa !14
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 3, float noundef 1.000000e+00) #6, !call_target !24
  %i.ak = icmp sgt i32 %i.h, 0
  br i1 %i.ak, label %.preheader.lr.ph, label %._crit_edge110.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.al = icmp slt i32 %i.f, 1
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.an = icmp eq i32 %i.h, 255
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ap = lshr i32 %i.j, 16
  %i.aq = lshr i32 %i.j, 24
  %i.ar = trunc i32 %i.j to i16                   ; 2 uses
  %i.as = and i16 %i.ar, 255
  %.lhs.trunc100 = mul nuw i16 %i.as, 223
  %i.at = udiv i16 %.lhs.trunc100, 255
  %.zext101 = zext nneg i16 %i.at to i32          ; 2 uses
  %i.au = lshr i16 %i.ar, 8
  %.lhs.trunc102 = mul nuw i16 %i.au, 223         ; 2 uses
  %i.av = udiv i16 %.lhs.trunc102, 255
  %.zext103 = zext nneg i16 %i.av to i32
  %i.aw = trunc nuw i32 %i.ap to i16
  %i.ax = and i16 %i.aw, 255
  %.lhs.trunc104 = mul nuw i16 %i.ax, 223         ; 2 uses
  %i.ay = trunc nuw nsw i32 %i.aq to i16
  %i.az = mul nuw i16 %i.ay, 223
  %.lhs.trunc106 = add nuw i16 %i.az, 2048
  %i.ba = shl nuw nsw i32 %.zext103, 8
  %.lhs.trunc94 = add nuw i16 %.lhs.trunc102, 6144
  %.lhs.trunc96 = add nuw i16 %.lhs.trunc104, 8160
  %i.bb = insertelement <4 x i16> poison, i16 %.lhs.trunc104, i64 0
  %i.bc = insertelement <4 x i16> %i.bb, i16 %.lhs.trunc106, i64 1
  %i.bd = insertelement <4 x i16> %i.bc, i16 %.lhs.trunc94, i64 2
  %i.be = insertelement <4 x i16> %i.bd, i16 %.lhs.trunc96, i64 3
  %i.bf = udiv <4 x i16> %i.be, splat (i16 255)   ; 4 uses
  %i.bg = extractelement <4 x i16> %i.bf, i64 0
  %.zext105 = zext nneg i16 %i.bg to i32
  %i.bh = extractelement <4 x i16> %i.bf, i64 1
  %.zext107 = zext nneg i16 %i.bh to i32
  %i.bi = shl nuw nsw i32 %.zext105, 16
  %i.bj = or i32 %i.ba, %i.bi
  %i.bk = or i32 %i.bj, %.zext101
  %i.bl = shl nuw i32 %.zext107, 24               ; 2 uses
  %i.bm = or i32 %i.bk, %i.bl
  %i.bn = extractelement <4 x i16> %i.bf, i64 2
  %.zext95 = zext nneg i16 %i.bn to i32
  %i.bo = extractelement <4 x i16> %i.bf, i64 3
  %.zext97 = zext nneg i16 %i.bo to i32
  %i.bp = shl nuw nsw i32 %.zext95, 8
  %i.bq = shl nuw nsw i32 %.zext97, 16
  %i.br = or i32 %i.bp, %i.bq
  %i.bs = or i32 %i.br, %.zext101
  %i.bt = or i32 %i.bs, %i.bl
  %i.bu = bitcast i32 %i.j to <4 x i8>
  %i.bv = zext <4 x i8> %i.bu to <4 x i32>
  %i.bw = mul nuw nsw <4 x i32> %i.bv, splat (i32 223)
  %brmerge = select i1 %i.al, i1 true, i1 %i.an
  br i1 %brmerge, label %._crit_edge110.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bx = zext nneg i32 %i.f to i64               ; 2 uses
  %wide.trip.count116 = zext nneg i32 %i.h to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv113 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next114, %._crit_edge ] ; 3 uses
  %i.by = mul nuw nsw i64 %indvars.iv113, %i.bx
  %i.bz = trunc nuw nsw i64 %indvars.iv113 to i32
  %i.ca = uitofp nneg i32 %i.bz to float
  %i.cb = insertelement <2 x float> poison, float %i.ca, i64 1
  br label %bb.j

._crit_edge110.split:                             ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  %i.cc = load ptr, ptr %0, align 8, !tbaa !14
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 72
  %i.ce = load ptr, ptr %i.cd, align 8
  tail call void %i.ce(ptr noundef nonnull align 8 dereferenceable(8) %0) #6, !call_target !33
  %i.cf = load <2 x float>, ptr %i.a, align 8, !tbaa !35
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0> ; 4 uses
  %i.ch = load i32, ptr %i.e, align 8, !tbaa !98  ; 2 uses
  %i.ci = load i32, ptr %i.g, align 4, !tbaa !99  ; 2 uses
  %i.cj = load ptr, ptr %0, align 8, !tbaa !14
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8
  tail call void %i.cl(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 1, float noundef 2.000000e+00) #6, !call_target !24, !inline_history !95
  %i.cm = icmp sgt i32 %i.ci, 0
  br i1 %i.cm, label %.preheader59.lr.ph.i, label %_ZL16drawLayerPortalsP11duDebugDrawPK18rcHeightfieldLayer.exit

.preheader59.lr.ph.i:                             ; preds = %._crit_edge110.split
  %i.cn = icmp sgt i32 %i.ch, 0
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  br i1 %i.cn, label %.preheader59.preheader.i, label %_ZL16drawLayerPortalsP11duDebugDrawPK18rcHeightfieldLayer.exit

.preheader59.preheader.i:                         ; preds = %.preheader59.lr.ph.i
  %i.cq = zext nneg i32 %i.ch to i64              ; 2 uses
  %wide.trip.count69.i = zext nneg i32 %i.ci to i64
  br label %.preheader59.i

.preheader59.i:                                   ; preds = %._crit_edge.i, %.preheader59.preheader.i
  %indvars.iv66.i = phi i64 [ 0, %.preheader59.preheader.i ], [ %indvars.iv.next67.i, %._crit_edge.i ] ; 3 uses
  %i.cr = mul nuw nsw i64 %indvars.iv66.i, %i.cq
  %i.cs = trunc i64 %indvars.iv66.i to i32        ; 2 uses
  %3 = sitofp i32 %i.cs to float                  ; 2 uses
  %i.ct = add i32 %i.cs, 1
  %i.cu = sitofp i32 %i.ct to float               ; 2 uses
  %i.cv = insertelement <4 x float> poison, float %3, i64 2 ; 2 uses
  %i.cw = insertelement <4 x float> poison, float %i.cu, i64 2 ; 2 uses
  %i.cx = insertelement <4 x float> %i.cv, float %i.cu, i64 3
  %i.cy = insertelement <4 x float> %i.cw, float %3, i64 3
  br label %bb.b

._crit_edge.i:                                    ; preds = %.loopexit.i
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 1 ; 2 uses
  %exitcond70.not.i = icmp eq i64 %indvars.iv.next67.i, %wide.trip.count69.i
  br i1 %exitcond70.not.i, label %_ZL16drawLayerPortalsP11duDebugDrawPK18rcHeightfieldLayer.exit, label %.preheader59.i

bb.b:                                             ; preds = %.loopexit.i, %.preheader59.i
  %indvars.iv.i = phi i64 [ 0, %.preheader59.i ], [ %indvars.iv.next.i, %.loopexit.i ] ; 6 uses
  %i.cz = add nuw nsw i64 %indvars.iv.i, %i.cr    ; 5 uses
  %i.da = load ptr, ptr %i.co, align 8, !tbaa !100
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cz
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !36  ; 2 uses
  %i.dd = icmp eq i8 %i.dc, -1
  br i1 %i.dd, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.de = zext i8 %i.dc to i32
  %i.df = add nuw nsw i32 %i.de, 2
  %i.dg = uitofp nneg i32 %i.df to float          ; 4 uses
  %i.dh = load ptr, ptr %i.cp, align 8, !tbaa !101
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.cz
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !36
  %i.dk = zext i8 %i.dj to i32                    ; 2 uses
  %i.dl = and i32 %i.dk, 16
  %.not.i = icmp eq i32 %i.dl, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.dm = trunc nuw nsw i64 %indvars.iv.i to i32
  %4 = sitofp i32 %i.dm to float
  %i.dn = load <3 x float>, ptr %1, align 8, !tbaa !35
  %i.do = shufflevector <3 x float> %i.dn, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.dp = insertelement <4 x float> %i.cx, float %4, i64 0
  %i.dq = insertelement <4 x float> %i.dp, float %i.dg, i64 1
  %i.dr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dq, <4 x float> %i.cg, <4 x float> %i.do) ; 4 uses
  %i.ds = load ptr, ptr %0, align 8, !tbaa !14
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 48
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = extractelement <4 x float> %i.dr, i64 0 ; 2 uses
  %i.dw = extractelement <4 x float> %i.dr, i64 1 ; 2 uses
  %i.dx = extractelement <4 x float> %i.dr, i64 2
  tail call void %i.du(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.dv, float noundef %i.dw, float noundef %i.dx, i32 noundef -1) #6, !call_target !74, !inline_history !95
  %i.dy = load ptr, ptr %0, align 8, !tbaa !14
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 48
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = extractelement <4 x float> %i.dr, i64 3
  tail call void %i.ea(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.dv, float noundef %i.dw, float noundef %i.eb, i32 noundef -1) #6, !call_target !74, !inline_history !95
  %.pre.i = load ptr, ptr %i.cp, align 8, !tbaa !101
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.cz
  %.pre71.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !36
  %.pre78.i = zext i8 %.pre71.i to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader.i
  %.pre-phi.i = phi i32 [ %i.dk, %.preheader.i ], [ %.pre78.i, %bb.c ] ; 2 uses
  %i.ec = and i32 %.pre-phi.i, 32
  %.not.1.i = icmp eq i32 %i.ec, 0
  br i1 %.not.1.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ed = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %5 = sitofp i32 %i.ed to float
  %i.ee = add i32 %i.ed, 1
  %i.ef = sitofp i32 %i.ee to float
  %i.eg = load <3 x float>, ptr %1, align 8, !tbaa !35
  %i.eh = shufflevector <3 x float> %i.eg, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.ei = insertelement <4 x float> %i.cw, float %5, i64 0
  %i.ej = insertelement <4 x float> %i.ei, float %i.dg, i64 1
  %i.ek = insertelement <4 x float> %i.ej, float %i.ef, i64 3
  %i.el = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ek, <4 x float> %i.cg, <4 x float> %i.eh) ; 4 uses
  %i.em = load ptr, ptr %0, align 8, !tbaa !14
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = extractelement <4 x float> %i.el, i64 0
  %i.eq = extractelement <4 x float> %i.el, i64 1 ; 2 uses
  %i.er = extractelement <4 x float> %i.el, i64 2 ; 2 uses
  tail call void %i.eo(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.ep, float noundef %i.eq, float noundef %i.er, i32 noundef -1) #6, !call_target !74, !inline_history !95
  %i.es = load ptr, ptr %0, align 8, !tbaa !14
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 48
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = extractelement <4 x float> %i.el, i64 3
  tail call void %i.eu(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.ev, float noundef %i.eq, float noundef %i.er, i32 noundef -1) #6, !call_target !74, !inline_history !95
  %.pre72.i = load ptr, ptr %i.cp, align 8, !tbaa !101
  %.phi.trans.insert73.i = getelementptr inbounds nuw i8, ptr %.pre72.i, i64 %i.cz
  %.pre74.i = load i8, ptr %.phi.trans.insert73.i, align 1, !tbaa !36
  %.pre79.i = zext i8 %.pre74.i to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre-phi80.i = phi i32 [ %.pre79.i, %bb.e ], [ %.pre-phi.i, %bb.d ] ; 2 uses
  %i.ew = and i32 %.pre-phi80.i, 64
  %.not.2.i = icmp eq i32 %i.ew, 0
  br i1 %.not.2.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ex = trunc i64 %indvars.iv.i to i32
  %i.ey = add i32 %i.ex, 1
  %i.ez = sitofp i32 %i.ey to float
  %i.fa = load <3 x float>, ptr %1, align 8, !tbaa !35
  %i.fb = shufflevector <3 x float> %i.fa, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.fc = insertelement <4 x float> %i.cy, float %i.ez, i64 0
  %i.fd = insertelement <4 x float> %i.fc, float %i.dg, i64 1
  %i.fe = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fd, <4 x float> %i.cg, <4 x float> %i.fb) ; 4 uses
  %i.ff = load ptr, ptr %0, align 8, !tbaa !14
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 48
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = extractelement <4 x float> %i.fe, i64 0 ; 2 uses
  %i.fj = extractelement <4 x float> %i.fe, i64 1 ; 2 uses
  %i.fk = extractelement <4 x float> %i.fe, i64 2
  tail call void %i.fh(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.fi, float noundef %i.fj, float noundef %i.fk, i32 noundef -1) #6, !call_target !74, !inline_history !95
  %i.fl = load ptr, ptr %0, align 8, !tbaa !14
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 48
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = extractelement <4 x float> %i.fe, i64 3
  tail call void %i.fn(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.fi, float noundef %i.fj, float noundef %i.fo, i32 noundef -1) #6, !call_target !74, !inline_history !95
  %.pre75.i = load ptr, ptr %i.cp, align 8, !tbaa !101
  %.phi.trans.insert76.i = getelementptr inbounds nuw i8, ptr %.pre75.i, i64 %i.cz
  %.pre77.i = load i8, ptr %.phi.trans.insert76.i, align 1, !tbaa !36
  %.pre81.i = zext i8 %.pre77.i to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre-phi82.i = phi i32 [ %.pre81.i, %bb.g ], [ %.pre-phi80.i, %bb.f ]
  %i.fp = and i32 %.pre-phi82.i, 128
  %.not.3.i = icmp eq i32 %i.fp, 0
  br i1 %.not.3.i, label %.loopexit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fq = trunc i64 %indvars.iv.i to i32          ; 2 uses
  %i.fr = add i32 %i.fq, 1
  %i.fs = sitofp i32 %i.fr to float
  %6 = sitofp i32 %i.fq to float
  %i.ft = load <3 x float>, ptr %1, align 8, !tbaa !35
  %i.fu = shufflevector <3 x float> %i.ft, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.fv = insertelement <4 x float> %i.cv, float %i.fs, i64 0
  %i.fw = insertelement <4 x float> %i.fv, float %i.dg, i64 1
  %i.fx = insertelement <4 x float> %i.fw, float %6, i64 3
  %i.fy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fx, <4 x float> %i.cg, <4 x float> %i.fu) ; 4 uses
  %i.fz = load ptr, ptr %0, align 8, !tbaa !14
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 48
  %i.gb = load ptr, ptr %i.ga, align 8
  %i.gc = extractelement <4 x float> %i.fy, i64 0
  %i.gd = extractelement <4 x float> %i.fy, i64 1 ; 2 uses
  %i.ge = extractelement <4 x float> %i.fy, i64 2 ; 2 uses
  tail call void %i.gb(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.gc, float noundef %i.gd, float noundef %i.ge, i32 noundef -1) #6, !call_target !74, !inline_history !95
  %i.gf = load ptr, ptr %0, align 8, !tbaa !14
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 48
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = extractelement <4 x float> %i.fy, i64 3
  tail call void %i.gh(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.gi, float noundef %i.gd, float noundef %i.ge, i32 noundef -1) #6, !call_target !74, !inline_history !95
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.i, %bb.h, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.cq
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.b

_ZL16drawLayerPortalsP11duDebugDrawPK18rcHeightfieldLayer.exit: ; preds = %._crit_edge.i, %._crit_edge110.split, %.preheader59.lr.ph.i
  %i.gj = load ptr, ptr %0, align 8, !tbaa !14
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 72
  %i.gl = load ptr, ptr %i.gk, align 8
  tail call void %i.gl(ptr noundef nonnull align 8 dereferenceable(8) %0) #6, !call_target !33, !inline_history !95
  ret void

._crit_edge:                                      ; preds = %bb.m
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %exitcond117.not = icmp eq i64 %indvars.iv.next114, %wide.trip.count116
  br i1 %exitcond117.not, label %._crit_edge110.split, label %.preheader

bb.j:                                             ; preds = %.preheader, %bb.m
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %i.gm = add nuw nsw i64 %indvars.iv, %i.by      ; 2 uses
  %i.gn = load ptr, ptr %i.am, align 8, !tbaa !100
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gm
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !36
  %i.gq = zext i8 %i.gp to i32
  %i.gr = load ptr, ptr %i.ao, align 8, !tbaa !102
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gm
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !36  ; 2 uses
  switch i8 %i.gt, label %bb.l [
    i8 63, label %bb.m
    i8 0, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.gu = zext i8 %i.gt to i32
  %i.gv = load ptr, ptr %0, align 8, !tbaa !14
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 80
  %i.gx = load ptr, ptr %i.gw, align 8
  %i.gy = tail call noundef i32 %i.gx(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.gu) #6, !call_target !56 ; 4 uses
  %i.gz = shl i32 %i.gy, 5
  %i.ha = lshr i32 %i.gy, 3
  %i.hb = lshr i32 %i.gy, 11
  %i.hc = lshr i32 %i.gy, 19
  %i.hd = insertelement <4 x i32> poison, i32 %i.gz, i64 0
  %i.he = insertelement <4 x i32> %i.hd, i32 %i.ha, i64 1
  %i.hf = insertelement <4 x i32> %i.he, i32 %i.hb, i64 2
  %i.hg = insertelement <4 x i32> %i.hf, i32 %i.hc, i64 3
  %i.hh = and <4 x i32> %i.hg, splat (i32 8160)
  %i.hi = add nuw nsw <4 x i32> %i.hh, %i.bw
  %i.hj = trunc <4 x i32> %i.hi to <4 x i16>
  %i.hk = udiv <4 x i16> %i.hj, splat (i16 255)
  %i.hl = zext nneg <4 x i16> %i.hk to <4 x i32>
  %i.hm = shl nuw <4 x i32> %i.hl, <i32 0, i32 8, i32 16, i32 24>
  %i.hn = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.hm)
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.0 = phi i32 [ %i.hn, %bb.l ], [ %i.bm, %bb.k ], [ %i.bt, %bb.j ] ; 4 uses
  %i.ho = load float, ptr %1, align 8, !tbaa !35
  %i.hp = trunc nuw nsw i64 %indvars.iv to i32
  %i.hq = uitofp nneg i32 %i.hp to float
  %i.hr = tail call float @llvm.fmuladd.f32(float %i.hq, float %i.b, float %i.ho) ; 3 uses
  %i.hs = add nuw nsw i32 %i.gq, 1
  %i.ht = uitofp nneg i32 %i.hs to float
  %i.hu = load <2 x float>, ptr %i.m, align 4, !tbaa !35
  %i.hv = insertelement <2 x float> %i.cb, float %i.ht, i64 0
  %i.hw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hv, <2 x float> %i.d, <2 x float> %i.hu) ; 2 uses
  %i.hx = load ptr, ptr %0, align 8, !tbaa !14
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 48
  %i.hz = load ptr, ptr %i.hy, align 8
  %i.ia = extractelement <2 x float> %i.hw, i64 0 ; 4 uses
  %i.ib = extractelement <2 x float> %i.hw, i64 1 ; 3 uses
  tail call void %i.hz(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.hr, float noundef %i.ia, float noundef %i.ib, i32 noundef %.0) #6, !call_target !74
  %i.ic = fadd float %i.b, %i.ib                  ; 2 uses
  %i.id = load ptr, ptr %0, align 8, !tbaa !14
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 48
  %i.if = load ptr, ptr %i.ie, align 8
  tail call void %i.if(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.hr, float noundef %i.ia, float noundef %i.ic, i32 noundef %.0) #6, !call_target !74
  %i.ig = fadd float %i.b, %i.hr                  ; 2 uses
  %i.ih = load ptr, ptr %0, align 8, !tbaa !14
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 48
  %i.ij = load ptr, ptr %i.ii, align 8
  tail call void %i.ij(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.ig, float noundef %i.ia, float noundef %i.ic, i32 noundef %.0) #6, !call_target !74
  %i.ik = load ptr, ptr %0, align 8, !tbaa !14
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 48
  %i.im = load ptr, ptr %i.il, align 8
  tail call void %i.im(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.ig, float noundef %i.ia, float noundef %i.ib, i32 noundef %.0) #6, !call_target !74
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.bx
  br i1 %exitcond.not, label %._crit_edge, label %bb.j
}

declare void @_Z18duDebugDrawBoxWireP11duDebugDrawffffffjf(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @_Z28duDebugDrawHeightfieldLayersP11duDebugDrawRK21rcHeightfieldLayerSet(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !105
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ] ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !106
  %i.e = getelementptr inbounds nuw [88 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = trunc nuw nsw i64 %indvars.iv to i32
  tail call void @_Z27duDebugDrawHeightfieldLayerP11duDebugDrawRK18rcHeightfieldLayeri(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(88) %i.e, i32 noundef %i.f)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.g = load i32, ptr %i.a, align 8, !tbaa !105
  %i.h = sext i32 %i.g to i64
  %i.i = icmp slt i64 %indvars.iv.next, %i.h
  br i1 %i.i, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Z28duDebugDrawRegionConnectionsP11duDebugDrawRK12rcContourSetf(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %1, float noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 8 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.d = load <2 x float>, ptr %i.c, align 4, !tbaa !35 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.e = load ptr, ptr %0, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 1, float noundef 2.000000e+00) #6, !call_target !24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !78   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph95, label %bb.c

.lr.ph95:                                         ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.m = extractelement <2 x float> %i.d, i64 1   ; 2 uses
  br label %bb.d

._crit_edge96:                                    ; preds = %._crit_edge
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %i.ci, ptr %i.n, align 8, !tbaa !35
  store <2 x float> %i.ck, ptr %i.a, align 8, !tbaa !35
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge96, %bb.b
  %i.o = load ptr, ptr %0, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %0) #6, !call_target !33
  %i.r = load ptr, ptr %0, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0, float noundef 7.000000e+00) #6, !call_target !24
  %i.u = load i32, ptr %i.h, align 8, !tbaa !78
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph102, label %._crit_edge103

.lr.ph102:                                        ; preds = %bb.c
  %i.w = fmul float %2, 2.550000e+02
  %i.x = fptoui float %i.w to i8
  %i.y = zext i8 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ac = extractelement <2 x float> %i.d, i64 1
  br label %bb.k

end_hunk_0
