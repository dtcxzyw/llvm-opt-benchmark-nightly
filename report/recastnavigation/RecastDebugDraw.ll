Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastDebugDraw?download=true
inline.NumInlined: 58
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_Z27duDebugDrawHeightfieldLayerP11duDebugDrawRK18rcHeightfieldLayeri:bb.a
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
  %i.ct = sitofp i32 %i.cs to float               ; 2 uses
  %i.cu = add i32 %i.cs, 1
  %i.cv = sitofp i32 %i.cu to float               ; 2 uses
  %i.cw = insertelement <4 x float> poison, float %i.ct, i64 2 ; 2 uses
  %i.cx = insertelement <4 x float> poison, float %i.cv, i64 2 ; 2 uses
  %i.cy = insertelement <4 x float> %i.cw, float %i.cv, i64 3
  %i.cz = insertelement <4 x float> %i.cx, float %i.ct, i64 3
  br label %bb.b

._crit_edge.i:                                    ; preds = %.loopexit.i
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 1 ; 2 uses
  %exitcond70.not.i = icmp eq i64 %indvars.iv.next67.i, %wide.trip.count69.i
  br i1 %exitcond70.not.i, label %_ZL16drawLayerPortalsP11duDebugDrawPK18rcHeightfieldLayer.exit, label %.preheader59.i

bb.b:                                             ; preds = %.loopexit.i, %.preheader59.i
  %indvars.iv.i = phi i64 [ 0, %.preheader59.i ], [ %indvars.iv.next.i, %.loopexit.i ] ; 6 uses
  %i.da = add nuw nsw i64 %indvars.iv.i, %i.cr    ; 5 uses
  %i.db = load ptr, ptr %i.co, align 8, !tbaa !100
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.da
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !36  ; 2 uses
  %i.de = icmp eq i8 %i.dd, -1
  br i1 %i.de, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.df = zext i8 %i.dd to i32
  %i.dg = add nuw nsw i32 %i.df, 2
  %i.dh = uitofp nneg i32 %i.dg to float          ; 4 uses
  %i.di = load ptr, ptr %i.cp, align 8, !tbaa !101
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.da
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !36
  %i.dl = zext i8 %i.dk to i32                    ; 2 uses
  %i.dm = and i32 %i.dl, 16
  %.not.i = icmp eq i32 %i.dm, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.dn = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.do = sitofp i32 %i.dn to float
  %i.dp = load <3 x float>, ptr %1, align 8, !tbaa !35
  %i.dq = shufflevector <3 x float> %i.dp, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.dr = insertelement <4 x float> %i.cy, float %i.do, i64 0
  %i.ds = insertelement <4 x float> %i.dr, float %i.dh, i64 1
  %i.dt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ds, <4 x float> %i.cg, <4 x float> %i.dq) ; 4 uses
  %i.du = load ptr, ptr %0, align 8, !tbaa !14
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 48
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = extractelement <4 x float> %i.dt, i64 0 ; 2 uses
  %i.dy = extractelement <4 x float> %i.dt, i64 1 ; 2 uses
  %i.dz = extractelement <4 x float> %i.dt, i64 2
  tail call void %i.dw(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.dx, float noundef %i.dy, float noundef %i.dz, i32 noundef -1) #6, !call_target !74, !inline_history !95
  %i.ea = load ptr, ptr %0, align 8, !tbaa !14
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = extractelement <4 x float> %i.dt, i64 3
  tail call void %i.ec(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.dx, float noundef %i.dy, float noundef %i.ed, i32 noundef -1) #6, !call_target !74, !inline_history !95
  %.pre.i = load ptr, ptr %i.cp, align 8, !tbaa !101
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.da
  %.pre71.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !36
  %.pre78.i = zext i8 %.pre71.i to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader.i
  %.pre-phi.i = phi i32 [ %i.dl, %.preheader.i ], [ %.pre78.i, %bb.c ] ; 2 uses
  %i.ee = and i32 %.pre-phi.i, 32
  %.not.1.i = icmp eq i32 %i.ee, 0
  br i1 %.not.1.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ef = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.eg = sitofp i32 %i.ef to float
  %i.eh = add i32 %i.ef, 1
  %i.ei = sitofp i32 %i.eh to float
  %i.ej = load <3 x float>, ptr %1, align 8, !tbaa !35
  %i.ek = shufflevector <3 x float> %i.ej, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.el = insertelement <4 x float> %i.cx, float %i.eg, i64 0
  %i.em = insertelement <4 x float> %i.el, float %i.dh, i64 1
  %i.en = insertelement <4 x float> %i.em, float %i.ei, i64 3
  %i.eo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.en, <4 x float> %i.cg, <4 x float> %i.ek) ; 4 uses
  %i.ep = load ptr, ptr %0, align 8, !tbaa !14
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 48
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = extractelement <4 x float> %i.eo, i64 0
  %i.et = extractelement <4 x float> %i.eo, i64 1 ; 2 uses
  %i.eu = extractelement <4 x float> %i.eo, i64 2 ; 2 uses
  tail call void %i.er(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.es, float noundef %i.et, float noundef %i.eu, i32 noundef -1) #6, !call_target !74, !inline_history !95
  %i.ev = load ptr, ptr %0, align 8, !tbaa !14
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 48
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = extractelement <4 x float> %i.eo, i64 3
  tail call void %i.ex(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.ey, float noundef %i.et, float noundef %i.eu, i32 noundef -1) #6, !call_target !74, !inline_history !95
  %.pre72.i = load ptr, ptr %i.cp, align 8, !tbaa !101
  %.phi.trans.insert73.i = getelementptr inbounds nuw i8, ptr %.pre72.i, i64 %i.da
  %.pre74.i = load i8, ptr %.phi.trans.insert73.i, align 1, !tbaa !36
  %.pre79.i = zext i8 %.pre74.i to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre-phi80.i = phi i32 [ %.pre79.i, %bb.e ], [ %.pre-phi.i, %bb.d ] ; 2 uses
  %i.ez = and i32 %.pre-phi80.i, 64
  %.not.2.i = icmp eq i32 %i.ez, 0
  br i1 %.not.2.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fa = trunc i64 %indvars.iv.i to i32
  %i.fb = add i32 %i.fa, 1
  %i.fc = sitofp i32 %i.fb to float
  %i.fd = load <3 x float>, ptr %1, align 8, !tbaa !35
  %i.fe = shufflevector <3 x float> %i.fd, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.ff = insertelement <4 x float> %i.cz, float %i.fc, i64 0
  %i.fg = insertelement <4 x float> %i.ff, float %i.dh, i64 1
  %i.fh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fg, <4 x float> %i.cg, <4 x float> %i.fe) ; 4 uses
  %i.fi = load ptr, ptr %0, align 8, !tbaa !14
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 48
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = extractelement <4 x float> %i.fh, i64 0 ; 2 uses
  %i.fm = extractelement <4 x float> %i.fh, i64 1 ; 2 uses
  %i.fn = extractelement <4 x float> %i.fh, i64 2
  tail call void %i.fk(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.fl, float noundef %i.fm, float noundef %i.fn, i32 noundef -1) #6, !call_target !74, !inline_history !95
  %i.fo = load ptr, ptr %0, align 8, !tbaa !14
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 48
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = extractelement <4 x float> %i.fh, i64 3
  tail call void %i.fq(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.fl, float noundef %i.fm, float noundef %i.fr, i32 noundef -1) #6, !call_target !74, !inline_history !95
  %.pre75.i = load ptr, ptr %i.cp, align 8, !tbaa !101
  %.phi.trans.insert76.i = getelementptr inbounds nuw i8, ptr %.pre75.i, i64 %i.da
  %.pre77.i = load i8, ptr %.phi.trans.insert76.i, align 1, !tbaa !36
  %.pre81.i = zext i8 %.pre77.i to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre-phi82.i = phi i32 [ %.pre81.i, %bb.g ], [ %.pre-phi80.i, %bb.f ]
  %i.fs = and i32 %.pre-phi82.i, 128
  %.not.3.i = icmp eq i32 %i.fs, 0
  br i1 %.not.3.i, label %.loopexit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ft = trunc i64 %indvars.iv.i to i32          ; 2 uses
  %i.fu = add i32 %i.ft, 1
  %i.fv = sitofp i32 %i.fu to float
  %i.fw = sitofp i32 %i.ft to float
  %i.fx = load <3 x float>, ptr %1, align 8, !tbaa !35
  %i.fy = shufflevector <3 x float> %i.fx, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.fz = insertelement <4 x float> %i.cw, float %i.fv, i64 0
  %i.ga = insertelement <4 x float> %i.fz, float %i.dh, i64 1
  %i.gb = insertelement <4 x float> %i.ga, float %i.fw, i64 3
  %i.gc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gb, <4 x float> %i.cg, <4 x float> %i.fy) ; 4 uses
  %i.gd = load ptr, ptr %0, align 8, !tbaa !14
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 48
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = extractelement <4 x float> %i.gc, i64 0
  %i.gh = extractelement <4 x float> %i.gc, i64 1 ; 2 uses
  %i.gi = extractelement <4 x float> %i.gc, i64 2 ; 2 uses
  tail call void %i.gf(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.gg, float noundef %i.gh, float noundef %i.gi, i32 noundef -1) #6, !call_target !74, !inline_history !95
  %i.gj = load ptr, ptr %0, align 8, !tbaa !14
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 48
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = extractelement <4 x float> %i.gc, i64 3
  tail call void %i.gl(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.gm, float noundef %i.gh, float noundef %i.gi, i32 noundef -1) #6, !call_target !74, !inline_history !95
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.i, %bb.h, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.cq
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.b

_ZL16drawLayerPortalsP11duDebugDrawPK18rcHeightfieldLayer.exit: ; preds = %._crit_edge.i, %._crit_edge110.split, %.preheader59.lr.ph.i
  %i.gn = load ptr, ptr %0, align 8, !tbaa !14
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 72
  %i.gp = load ptr, ptr %i.go, align 8
  tail call void %i.gp(ptr noundef nonnull align 8 dereferenceable(8) %0) #6, !call_target !33, !inline_history !95
  ret void

._crit_edge:                                      ; preds = %bb.m
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %exitcond117.not = icmp eq i64 %indvars.iv.next114, %wide.trip.count116
  br i1 %exitcond117.not, label %._crit_edge110.split, label %.preheader

bb.j:                                             ; preds = %.preheader, %bb.m
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %i.gq = add nuw nsw i64 %indvars.iv, %i.by      ; 2 uses
  %i.gr = load ptr, ptr %i.am, align 8, !tbaa !100
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gq
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !36
  %i.gu = zext i8 %i.gt to i32
  %i.gv = load ptr, ptr %i.ao, align 8, !tbaa !102
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gq
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !36  ; 2 uses
  switch i8 %i.gx, label %bb.l [
    i8 63, label %bb.m
    i8 0, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.gy = zext i8 %i.gx to i32
  %i.gz = load ptr, ptr %0, align 8, !tbaa !14
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 80
  %i.hb = load ptr, ptr %i.ha, align 8
  %i.hc = tail call noundef i32 %i.hb(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.gy) #6, !call_target !56 ; 4 uses
  %i.hd = shl i32 %i.hc, 5
  %i.he = lshr i32 %i.hc, 3
  %i.hf = lshr i32 %i.hc, 11
  %i.hg = lshr i32 %i.hc, 19
  %i.hh = insertelement <4 x i32> poison, i32 %i.hd, i64 0
  %i.hi = insertelement <4 x i32> %i.hh, i32 %i.he, i64 1
  %i.hj = insertelement <4 x i32> %i.hi, i32 %i.hf, i64 2
  %i.hk = insertelement <4 x i32> %i.hj, i32 %i.hg, i64 3
  %i.hl = and <4 x i32> %i.hk, splat (i32 8160)
  %i.hm = add nuw nsw <4 x i32> %i.hl, %i.bw
  %i.hn = trunc <4 x i32> %i.hm to <4 x i16>
  %i.ho = udiv <4 x i16> %i.hn, splat (i16 255)
  %i.hp = zext nneg <4 x i16> %i.ho to <4 x i32>
  %i.hq = shl nuw <4 x i32> %i.hp, <i32 0, i32 8, i32 16, i32 24>
  %i.hr = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.hq)
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.0 = phi i32 [ %i.hr, %bb.l ], [ %i.bm, %bb.k ], [ %i.bt, %bb.j ] ; 4 uses
  %i.hs = load float, ptr %1, align 8, !tbaa !35
  %i.ht = trunc nuw nsw i64 %indvars.iv to i32
  %i.hu = uitofp nneg i32 %i.ht to float
  %i.hv = tail call float @llvm.fmuladd.f32(float %i.hu, float %i.b, float %i.hs) ; 3 uses
  %i.hw = add nuw nsw i32 %i.gu, 1
  %i.hx = uitofp nneg i32 %i.hw to float
  %i.hy = load <2 x float>, ptr %i.m, align 4, !tbaa !35
  %i.hz = insertelement <2 x float> %i.cb, float %i.hx, i64 0
  %i.ia = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hz, <2 x float> %i.d, <2 x float> %i.hy) ; 2 uses
  %i.ib = load ptr, ptr %0, align 8, !tbaa !14
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 48
  %i.id = load ptr, ptr %i.ic, align 8
  %i.ie = extractelement <2 x float> %i.ia, i64 0 ; 4 uses
  %i.if = extractelement <2 x float> %i.ia, i64 1 ; 3 uses
  tail call void %i.id(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.hv, float noundef %i.ie, float noundef %i.if, i32 noundef %.0) #6, !call_target !74
  %i.ig = fadd float %i.b, %i.if                  ; 2 uses
  %i.ih = load ptr, ptr %0, align 8, !tbaa !14
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 48
  %i.ij = load ptr, ptr %i.ii, align 8
  tail call void %i.ij(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.hv, float noundef %i.ie, float noundef %i.ig, i32 noundef %.0) #6, !call_target !74
  %i.ik = fadd float %i.b, %i.hv                  ; 2 uses
  %i.il = load ptr, ptr %0, align 8, !tbaa !14
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 48
  %i.in = load ptr, ptr %i.im, align 8
  tail call void %i.in(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.ik, float noundef %i.ie, float noundef %i.ig, i32 noundef %.0) #6, !call_target !74
  %i.io = load ptr, ptr %0, align 8, !tbaa !14
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 48
  %i.iq = load ptr, ptr %i.ip, align 8
  tail call void %i.iq(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.ik, float noundef %i.ie, float noundef %i.if, i32 noundef %.0) #6, !call_target !74
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
end_hunk_0
