Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/dungeongen?download=true
inline.NumInlined: 312
inline.NumDeleted: 66
begin_hunk_0_@_ZN10DungeonGen8generateEP8MMVManipjN4core8vector3dIsEES4_:bb.a
bb.h:                                             ; preds = %bb.g
  %i.dp = sitofp nsz i16 %.0103 to float
  %i.dq = load i32, ptr %i.d, align 8, !tbaa !88
  %i.dr = tail call nsz noundef float @_Z14NoiseFractal3DPK11NoiseParamsfffi(ptr noundef nonnull %i.cj, float noundef %i.dp, float noundef %i.dh, float noundef %i.cp, i32 noundef %i.dq)
  %i.ds = fcmp nsz ogt float %i.dr, 0.000000e+00
  br i1 %i.ds, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dt = load ptr, ptr %i.ch, align 8, !tbaa !62
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.dk
  %i.dv = load i16, ptr %i.bz, align 2, !tbaa !40
  store i16 %i.dv, ptr %i.du, align 4, !tbaa !64
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %i.dw = add i32 %.060102, 1
  %i.dx = add i16 %.0103, 1                       ; 2 uses
  %.not70 = icmp sgt i16 %i.dx, %.sroa.049.0.extract.trunc
  br i1 %.not70, label %._crit_edge106, label %bb.g, !llvm.loop !87

.loopexit:                                        ; preds = %._crit_edge110.split, %.preheader.lr.ph, %._crit_edge100, %bb.a
  ret void
}

declare void @_ZN16VoxelManipulator10clearFlagsERK9VoxelAreah(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 4 dereferenceable(24), i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10DungeonGen11makeDungeonEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(152) %0, i48 %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.core::vector3d", align 8    ; 10 uses
  %3 = alloca %"class.core::vector3d", align 8    ; 13 uses
  %4 = alloca %"class.core::vector3d", align 8    ; 11 uses
  %5 = alloca %"class.core::vector3d", align 2    ; 8 uses
  %6 = alloca %"class.core::vector3d", align 2    ; 8 uses
  %.sroa.0132.0.extract.trunc = trunc i48 %1 to i16 ; 2 uses
  %.sroa.3.0.extract.shift = lshr i48 %1, 16
  %.sroa.3.0.extract.trunc = trunc i48 %.sroa.3.0.extract.shift to i16 ; 2 uses
  %.sroa.5.0.extract.shift = lshr i48 %1, 32
  %.sroa.5.0.extract.trunc = trunc nuw i48 %.sroa.5.0.extract.shift to i16 ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !48     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 122 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 18 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 110 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 114 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 118 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 98 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 102 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 106 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.t = sext i16 %.sroa.5.0.extract.trunc to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.v = sext i16 %.sroa.3.0.extract.trunc to i32
  %i.w = sext i16 %.sroa.0132.0.extract.trunc to i32
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge162
  store i16 %i.bc, ptr %i.d, align 4
  store i16 %i.bj, ptr %i.c, align 2
  store i16 %i.bq, ptr %2, align 8
  br i1 %.5.us.us.us, label %.thread, label %.critedge

bb.c:                                             ; preds = %bb.a, %._crit_edge162
  %.057171 = phi i32 [ 0, %bb.a ], [ %i.dg, %._crit_edge162 ] ; 2 uses
  %i.x = load i16, ptr %i.e, align 2, !tbaa !138
  %.not72 = icmp eq i16 %i.x, 0
  br i1 %.not72, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load i16, ptr %i.h, align 2, !tbaa !139
  %i.z = sext i16 %i.y to i32
  %i.aa = load i16, ptr %i.j, align 8, !tbaa !140
  %i.ab = sext i16 %i.aa to i32
  %i.ac = tail call noundef i32 @_ZN12PseudoRandom5rangeEii(ptr noundef nonnull align 4 dereferenceable(4) %i.f, i32 noundef %i.z, i32 noundef %i.ab)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ad = load i16, ptr %i.n, align 2, !tbaa !141
  %i.ae = sext i16 %i.ad to i32
  %i.af = load i16, ptr %i.p, align 4, !tbaa !142
  %i.ag = sext i16 %i.af to i32
  %i.ah = tail call noundef i32 @_ZN12PseudoRandom5rangeEii(ptr noundef nonnull align 4 dereferenceable(4) %i.f, i32 noundef %i.ae, i32 noundef %i.ag)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink231.in.a = phi ptr [ %i.r, %bb.e ], [ %i.l, %bb.d ]
  %.sink229.in.in = phi ptr [ %i.q, %bb.e ], [ %i.k, %bb.d ]
  %.sink212.in = phi ptr [ %i.o, %bb.e ], [ %i.i, %bb.d ]
  %.sink.in.in = phi ptr [ %i.m, %bb.e ], [ %i.g, %bb.d ]
  %.sroa.18.1.in = phi i32 [ %i.ah, %bb.e ], [ %i.ac, %bb.d ] ; 3 uses
  %.sink229.in = load i16, ptr %.sink229.in.in, align 4, !tbaa !29
  %.sink229 = sext i16 %.sink229.in to i32
  %.sink231 = load i16, ptr %.sink231.in.a, align 2, !tbaa !29
  %i.ai = sext i16 %.sink231 to i32
  %i.aj = tail call noundef i32 @_ZN12PseudoRandom5rangeEii(ptr noundef nonnull align 4 dereferenceable(4) %i.f, i32 noundef %.sink229, i32 noundef %i.ai) ; 3 uses
  %.sink.in = load i16, ptr %.sink.in.in, align 2, !tbaa !29
  %.sink = sext i16 %.sink.in to i32
  %.sink212 = load i16, ptr %.sink212.in, align 4, !tbaa !29
  %i.ak = sext i16 %.sink212 to i32
  %i.al = tail call noundef i32 @_ZN12PseudoRandom5rangeEii(ptr noundef nonnull align 4 dereferenceable(4) %i.f, i32 noundef %.sink, i32 noundef %i.ak) ; 3 uses
  %.sroa.18.1 = trunc i32 %.sroa.18.1.in to i16   ; 3 uses
  %.sroa.11.1 = trunc i32 %i.aj to i16            ; 2 uses
  %storemerge73 = trunc i32 %i.al to i16          ; 3 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !48    ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !15
  %i.ap = add i16 %i.ao, %.sroa.0132.0.extract.trunc
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 10
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !16
  %i.as = add i16 %i.ar, %.sroa.3.0.extract.trunc
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.au = load i16, ptr %i.at, align 2, !tbaa !17
  %i.av = add i16 %i.au, %.sroa.5.0.extract.trunc
  %i.aw = load i32, ptr %i.s, align 4, !tbaa !143
  %sext = shl i32 %.sroa.18.1.in, 16
  %i.ax = ashr exact i32 %sext, 16
  %i.ay = add nsw i32 %i.ax, %i.t
  %i.az = sub i32 %i.aw, %i.ay
  %i.ba = tail call noundef i32 @_ZN12PseudoRandom5rangeEii(ptr noundef nonnull align 4 dereferenceable(4) %i.f, i32 noundef 0, i32 noundef %i.az)
  %i.bb = trunc i32 %i.ba to i16
  %i.bc = add i16 %i.av, %i.bb                    ; 4 uses
  %i.bd = load i32, ptr %i.u, align 4, !tbaa !144
  %sext138 = shl i32 %i.aj, 16
  %i.be = ashr exact i32 %sext138, 16
  %i.bf = add nsw i32 %i.be, %i.v
  %i.bg = sub i32 %i.bd, %i.bf
  %i.bh = tail call noundef i32 @_ZN12PseudoRandom5rangeEii(ptr noundef nonnull align 4 dereferenceable(4) %i.f, i32 noundef 0, i32 noundef %i.bg)
  %i.bi = trunc i32 %i.bh to i16
  %i.bj = add i16 %i.as, %i.bi                    ; 4 uses
  %i.bk = load i32, ptr %i.b, align 4, !tbaa !145
  %sext139 = shl i32 %i.al, 16
  %i.bl = ashr exact i32 %sext139, 16
  %i.bm = add nsw i32 %i.bl, %i.w
  %i.bn = sub i32 %i.bk, %i.bm
  %i.bo = tail call noundef i32 @_ZN12PseudoRandom5rangeEii(ptr noundef nonnull align 4 dereferenceable(4) %i.f, i32 noundef 0, i32 noundef %i.bn)
  %i.bp = trunc i32 %i.bo to i16
  %i.bq = add i16 %i.ap, %i.bp                    ; 4 uses
  %i.br = icmp sgt i16 %.sroa.18.1, 0
  %i.bs = icmp sgt i16 %.sroa.11.1, 0
  %or.cond213 = and i1 %i.br, %i.bs
  %i.bt = icmp sgt i16 %storemerge73, 0
  %or.cond214 = and i1 %or.cond213, %i.bt
  br i1 %or.cond214, label %.preheader151.lr.ph.split.us.split.us, label %.thread.loopexit

.preheader151.lr.ph.split.us.split.us:            ; preds = %bb.f
  %i.bu = load ptr, ptr %0, align 8, !tbaa !48    ; 7 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %i.bx = load i16, ptr %i.bw, align 4, !tbaa !55
  %i.by = sext i16 %i.bx to i32
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 20
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !56
  %i.cc = load i32, ptr %i.bz, align 4, !tbaa !57
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 10
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !58
  %i.cf = sext i16 %i.ce to i32
  %i.cg = load i16, ptr %i.bv, align 4, !tbaa !59
  %i.ch = sext i16 %i.cg to i32
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !65
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.cl = and i32 %i.al, 32767
  %wide.trip.count185 = and i32 %.sroa.18.1.in, 32767
  %wide.trip.count = and i32 %i.aj, 32767
  br label %.preheader151.us.us

.preheader151.us.us:                              ; preds = %._crit_edge.split.us.us.us, %.preheader151.lr.ph.split.us.split.us
  %indvars.iv183 = phi i32 [ %indvars.iv.next184, %._crit_edge.split.us.us.us ], [ 0, %.preheader151.lr.ph.split.us.split.us ] ; 2 uses
  %.1161.us.us = phi i1 [ %.5.us.us.us, %._crit_edge.split.us.us.us ], [ true, %.preheader151.lr.ph.split.us.split.us ]
  %i.cm = trunc nuw nsw i32 %indvars.iv183 to i16
  %i.cn = add i16 %i.bc, %i.cm
  %i.co = sext i16 %i.cn to i32
  %i.cp = sub nsw i32 %i.co, %i.by
  %i.cq = mul nsw i32 %i.cp, %i.cb
  %invariant.op.us167.us = sub i32 %i.cq, %i.cf
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %.thread.us.us.us, %.preheader151.us.us
  %indvars.iv181 = phi i32 [ %indvars.iv.next182, %.thread.us.us.us ], [ 0, %.preheader151.us.us ] ; 2 uses
  %.2159.us.us.us = phi i1 [ %.5.us.us.us, %.thread.us.us.us ], [ %.1161.us.us, %.preheader151.us.us ]
  %i.cr = trunc nuw nsw i32 %indvars.iv181 to i16
  %i.cs = add i16 %i.bj, %i.cr
  %i.ct = sext i16 %i.cs to i32
  %.reass.us168.us = add i32 %invariant.op.us167.us, %i.ct
  %i.cu = mul i32 %.reass.us168.us, %i.cc
  %invariant.op.us.us.us = sub i32 %i.cu, %i.ch
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.preheader.us.us.us
  %indvars.iv = phi i32 [ %indvars.iv.next, %bb.h ], [ 0, %.preheader.us.us.us ] ; 2 uses
  %i.cv = trunc nuw nsw i32 %indvars.iv to i16
  %i.cw = add i16 %i.bq, %i.cv
  %i.cx = sext i16 %i.cw to i32
  %.reass.us.us.us = add i32 %invariant.op.us.us.us, %i.cx
  %i.cy = zext i32 %.reass.us.us.us to i64        ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !36
  %i.db = and i8 %i.da, 6
  %.not74.us.us.us = icmp eq i8 %i.db, 0
  br i1 %.not74.us.us.us, label %bb.h, label %.thread.us.us.us

bb.h:                                             ; preds = %bb.g
  %i.dc = load ptr, ptr %i.ck, align 8, !tbaa !62
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.cy
  %i.de = load i16, ptr %i.dd, align 4, !tbaa !64
  %.not140.us.us.us = icmp ne i16 %i.de, 127      ; 2 uses
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1 ; 2 uses
  %i.df = icmp samesign ult i32 %indvars.iv.next, %i.cl
  %or.cond = select i1 %.not140.us.us.us, i1 %i.df, i1 false
  br i1 %or.cond, label %bb.g, label %.thread.us.us.us.split.loop.exit, !llvm.loop !134

.thread.us.us.us.split.loop.exit:                 ; preds = %bb.h
  %spec.select75.us.us.us.le = select i1 %.not140.us.us.us, i1 %.2159.us.us.us, i1 false
  br label %.thread.us.us.us

.thread.us.us.us:                                 ; preds = %bb.g, %.thread.us.us.us.split.loop.exit
  %.5.us.us.us = phi i1 [ %spec.select75.us.us.us.le, %.thread.us.us.us.split.loop.exit ], [ false, %bb.g ] ; 4 uses
  %indvars.iv.next182 = add nuw nsw i32 %indvars.iv181, 1 ; 2 uses
  %exitcond.not = icmp eq i32 %indvars.iv.next182, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !135

._crit_edge.split.us.us.us:                       ; preds = %.thread.us.us.us
  %indvars.iv.next184 = add nuw nsw i32 %indvars.iv183, 1 ; 2 uses
  %exitcond186.not = icmp eq i32 %indvars.iv.next184, %wide.trip.count185
  br i1 %exitcond186.not, label %._crit_edge162, label %.preheader151.us.us, !llvm.loop !136

._crit_edge162:                                   ; preds = %._crit_edge.split.us.us.us
  %i.dg = add nuw nsw i32 %.057171, 1
  %i.dh = icmp samesign ugt i32 %.057171, 98
  %.not69 = select i1 %i.dh, i1 true, i1 %.5.us.us.us
  br i1 %.not69, label %bb.b, label %bb.c, !llvm.loop !137

.thread.loopexit:                                 ; preds = %bb.f
  store i16 %i.bc, ptr %i.d, align 4
  store i16 %i.bj, ptr %i.c, align 2
  store i16 %i.bq, ptr %2, align 8
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.b
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.dj = load i16, ptr %i.di, align 8, !tbaa !146
  %.not178 = icmp eq i16 %i.dj, 0
  br i1 %.not178, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread
  %i.dk = sdiv i16 %.sroa.18.1, 2
  %i.dl = add i16 %i.bc, %i.dk
  %.sroa.3.0.insert.ext.i86 = zext i16 %i.dl to i48
  %.sroa.3.0.insert.shift.i87 = shl nuw i48 %.sroa.3.0.insert.ext.i86, 32
  %i.dm = add i16 %i.bj, 1
  %.sroa.2.0.insert.ext.i88 = zext i16 %i.dm to i48
  %.sroa.2.0.insert.shift.i89 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i88, 16
  %.sroa.2.0.insert.insert.i90 = or disjoint i48 %.sroa.3.0.insert.shift.i87, %.sroa.2.0.insert.shift.i89
  %i.dn = sdiv i16 %storemerge73, 2
  %i.do = add i16 %i.bq, %i.dn
  %.sroa.0.0.insert.ext.i91 = zext i16 %i.do to i48
  %.sroa.0.0.insert.insert.i92 = or disjoint i48 %.sroa.2.0.insert.insert.i90, %.sroa.0.0.insert.ext.i91
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 142
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 2
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 146
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.x
  %.sroa.031.0176 = phi i48 [ %.sroa.0.0.insert.insert.i92, %.lr.ph ], [ %..sroa.031.0, %bb.x ]
  %.066175 = phi i32 [ 0, %.lr.ph ], [ %i.ep, %bb.x ]
  %.sroa.18.2174 = phi i16 [ %.sroa.18.1, %.lr.ph ], [ %.sroa.18.3, %bb.x ] ; 2 uses
  %.sroa.11.2173 = phi i16 [ %.sroa.11.1, %.lr.ph ], [ %.sroa.11.3, %bb.x ]
  %.sroa.0113.1172 = phi i16 [ %storemerge73, %.lr.ph ], [ %storemerge71, %bb.x ] ; 2 uses
  %.sroa.18.0.insert.ext125 = zext i16 %.sroa.18.2174 to i48
  %.sroa.18.0.insert.shift126 = shl nuw i48 %.sroa.18.0.insert.ext125, 32
  %.sroa.11.0.insert.ext120 = zext i16 %.sroa.11.2173 to i48
  %.sroa.11.0.insert.shift121 = shl nuw nsw i48 %.sroa.11.0.insert.ext120, 16
  %.sroa.11.0.insert.insert123 = or disjoint i48 %.sroa.18.0.insert.shift126, %.sroa.11.0.insert.shift121
  %.sroa.0113.0.insert.ext117 = zext i16 %.sroa.0113.1172 to i48
  %.sroa.0113.0.insert.insert119 = or disjoint i48 %.sroa.11.0.insert.insert123, %.sroa.0113.0.insert.ext117
  %.sroa.026.0.copyload = load i48, ptr %2, align 8 ; 4 uses
  tail call void @_ZN10DungeonGen8makeRoomEN4core8vector3dIsEES2_(ptr noundef nonnull align 8 dereferenceable(152) %0, i48 %.sroa.0113.0.insert.insert119, i48 %.sroa.026.0.copyload)
  %i.ec = sdiv i16 %.sroa.0113.1172, 2
  %i.ed = sdiv i16 %.sroa.18.2174, 2
  %i.ee = trunc i48 %.sroa.026.0.copyload to i16
  %i.ef = add i16 %i.ec, %i.ee
  %i.eg = lshr i48 %.sroa.026.0.copyload, 16
  %i.eh = trunc i48 %i.eg to i16
  %i.ei = add i16 %i.eh, 1
  %i.ej = lshr i48 %.sroa.026.0.copyload, 32
  %i.ek = trunc nuw i48 %i.ej to i16
  %i.el = add i16 %i.ed, %i.ek
  %.sroa.3.0.insert.ext.i93 = zext i16 %i.el to i48
  %.sroa.3.0.insert.shift.i94 = shl nuw i48 %.sroa.3.0.insert.ext.i93, 32
  %.sroa.2.0.insert.ext.i95 = zext i16 %i.ei to i48
  %.sroa.2.0.insert.shift.i96 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i95, 16
  %.sroa.2.0.insert.insert.i97 = or disjoint i48 %.sroa.3.0.insert.shift.i94, %.sroa.2.0.insert.shift.i96
  %.sroa.0.0.insert.ext.i98 = zext i16 %i.ef to i48
  %.sroa.0.0.insert.insert.i99 = or disjoint i48 %.sroa.2.0.insert.insert.i97, %.sroa.0.0.insert.ext.i98 ; 2 uses
  %i.em = load ptr, ptr %i.dp, align 8, !tbaa !28 ; 2 uses
  %.not = icmp eq ptr %i.em, null
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.en = load i32, ptr %i.dq, align 8, !tbaa !47
  %i.eo = tail call noundef zeroext i1 @_ZN16GenerateNotifier8addEventE13GenNotifyTypeN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(104) %i.em, i32 noundef %i.en, i48 %.sroa.0.0.insert.insert.i99) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ep = add nuw nsw i32 %.066175, 1             ; 3 uses
  %i.eq = load i16, ptr %i.di, align 8, !tbaa !146
  %i.er = zext i16 %i.eq to i32
  %i.es = icmp eq i32 %i.ep, %i.er
  br i1 %i.es, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.et = load i32, ptr %i.f, align 4, !tbaa !49
  %i.eu = mul i32 %i.et, 1103515245
  %i.ev = add i32 %i.eu, 12345                    ; 2 uses
  store i32 %i.ev, ptr %i.f, align 4, !tbaa !49
  %i.ew = sdiv i32 %i.ev, 65536
  %i.ex = trunc nsw i32 %i.ew to i16
  %.lhs.trunc.i = and i16 %i.ex, 32767
  %i.ey = urem i16 %.lhs.trunc.i, 3
  %.not70 = icmp eq i16 %i.ey, 0
  %..sroa.031.0 = select i1 %.not70, i48 %.sroa.0.0.insert.insert.i99, i48 %.sroa.031.0176 ; 4 uses
  %.sroa.0.0.extract.trunc = trunc i48 %..sroa.031.0 to i16
  %.sroa.7.0.extract.shift = lshr i48 %..sroa.031.0, 16
  %.sroa.7.0.extract.trunc = trunc i48 %.sroa.7.0.extract.shift to i16
  %.sroa.8.0.extract.shift = lshr i48 %..sroa.031.0, 32
  %.sroa.8.0.extract.trunc = trunc nuw i48 %.sroa.8.0.extract.shift to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i16 0, ptr %3, align 8, !tbaa !15
  store i16 0, ptr %i.dr, align 2, !tbaa !16
  store i16 0, ptr %i.ds, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store i16 0, ptr %4, align 8, !tbaa !15
  store i16 0, ptr %i.dt, align 2, !tbaa !16
  store i16 0, ptr %i.du, align 4, !tbaa !17
  store i16 %.sroa.0.0.extract.trunc, ptr %i.dv, align 4, !tbaa !29
  store i16 %.sroa.7.0.extract.trunc, ptr %.sroa.7.0..sroa_idx, align 2, !tbaa !29
  store i16 %.sroa.8.0.extract.trunc, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !29
  %i.ez = call noundef zeroext i1 @_ZN10DungeonGen16findPlaceForDoorERN4core8vector3dIsEES3_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 2 dereferenceable(6) %3, ptr noundef nonnull align 2 dereferenceable(6) %4)
  br i1 %i.ez, label %bb.m, label %.critedge.sink.split

bb.m:                                             ; preds = %bb.l
  %i.fa = load i32, ptr %i.f, align 4, !tbaa !49
  %i.fb = mul i32 %i.fa, 1103515245
  %i.fc = add i32 %i.fb, 12345                    ; 2 uses
  store i32 %i.fc, ptr %i.f, align 4, !tbaa !49
  %i.fd = sdiv i32 %i.fc, 65536
  %.zext.i101 = and i32 %i.fd, 1
  %i.fe = icmp eq i32 %.zext.i101, 0
  br i1 %i.fe, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.sroa.017.0.copyload = load i48, ptr %3, align 8, !tbaa !29 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i48, ptr %i.dw, align 4, !tbaa !29
  tail call void @_ZN10DungeonGen8makeFillEN4core8vector3dIsEES2_h7MapNodeh(ptr noundef nonnull readonly align 8 dereferenceable(152) %0, i48 %.sroa.017.0.copyload, i48 %.sroa.0.0.copyload.i.i, i8 noundef zeroext 0, i32 126, i8 noundef zeroext 2)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ff = load <2 x i16>, ptr %4, align 8, !tbaa !29
  %i.fg = load <2 x i16>, ptr %3, align 8, !tbaa !29
  %i.fh = sub <2 x i16> %i.fg, %i.ff
  store <2 x i16> %i.fh, ptr %3, align 8, !tbaa !29
  %i.fi = load i16, ptr %i.du, align 4, !tbaa !17
  %i.fj = load i16, ptr %i.ds, align 4, !tbaa !17
  %i.fk = sub i16 %i.fj, %i.fi
  store i16 %i.fk, ptr %i.ds, align 4, !tbaa !17
  %.sroa.012.0.copyload.pre = load i48, ptr %3, align 8, !tbaa !29
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.012.0.copyload = phi i48 [ %.sroa.012.0.copyload.pre, %bb.o ], [ %.sroa.017.0.copyload, %bb.n ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store i16 0, ptr %5, align 2, !tbaa !15
  store i16 0, ptr %i.dx, align 2, !tbaa !16
  store i16 0, ptr %i.dy, align 2, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store i16 0, ptr %6, align 2, !tbaa !15
  store i16 0, ptr %i.dz, align 2, !tbaa !16
  store i16 0, ptr %i.ea, align 2, !tbaa !17
  %.sroa.011.0.copyload = load i48, ptr %4, align 8, !tbaa !29
  call void @_ZN10DungeonGen12makeCorridorEN4core8vector3dIsEES2_RS2_S3_(ptr noundef nonnull align 8 dereferenceable(152) %0, i48 %.sroa.012.0.copyload, i48 %.sroa.011.0.copyload, ptr noundef nonnull align 2 dereferenceable(6) %5, ptr noundef nonnull align 2 dereferenceable(6) %6)
  %i.fl = load i16, ptr %i.e, align 2, !tbaa !138 ; 2 uses
  %i.fm = icmp ugt i16 %i.fl, 1
  br i1 %i.fm, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.fn = zext i16 %i.fl to i32
  %i.fo = tail call noundef i32 @_ZN12PseudoRandom5rangeEii(ptr noundef nonnull align 4 dereferenceable(4) %i.f, i32 noundef 1, i32 noundef %i.fn)
  %i.fp = icmp eq i32 %i.fo, 1
  br i1 %i.fp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fq = load i16, ptr %i.h, align 2, !tbaa !139
  %i.fr = sext i16 %i.fq to i32
  %i.fs = load i16, ptr %i.j, align 8, !tbaa !140
  %i.ft = sext i16 %i.fs to i32
  %i.fu = tail call noundef i32 @_ZN12PseudoRandom5rangeEii(ptr noundef nonnull align 4 dereferenceable(4) %i.f, i32 noundef %i.fr, i32 noundef %i.ft)
  br label %bb.t

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.fv = load i16, ptr %i.n, align 2, !tbaa !141
  %i.fw = sext i16 %i.fv to i32
  %i.fx = load i16, ptr %i.p, align 4, !tbaa !142
  %i.fy = sext i16 %i.fx to i32
  %i.fz = tail call noundef i32 @_ZN12PseudoRandom5rangeEii(ptr noundef nonnull align 4 dereferenceable(4) %i.f, i32 noundef %i.fw, i32 noundef %i.fy)
  br label %bb.t
end_hunk_0
