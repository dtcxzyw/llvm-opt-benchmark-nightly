Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/mapgen_carpathian?download=true
inline.NumInlined: 474
inline.NumDeleted: 48
begin_hunk_0_@_ZN16MapgenCarpathian15generateTerrainEv:bb.a
  br label %bb.w

bb.w:                                             ; preds = %bb.s, %bb.v, %bb.u, %bb.h
  %.4 = phi i16 [ %.2129, %bb.h ], [ %.2129, %bb.v ], [ %spec.select, %bb.s ], [ %.2129, %bb.u ] ; 2 uses
  %i.lo = add i16 %.089131, 1                     ; 2 uses
  %i.lp = load i32, ptr %i.dk, align 4, !tbaa !173
  %i.lq = add i32 %i.lp, %.090130
  %i.lr = load i32, ptr %i.cw, align 4, !tbaa !174
  %i.ls = add i32 %i.lr, %.0124128
  %i.lt = sext i16 %i.lo to i32                   ; 2 uses
  %i.lu = load i16, ptr %i.db, align 8, !tbaa !90 ; 2 uses
  %i.lv = sext i16 %i.lu to i32                   ; 2 uses
  %i.lw = add nsw i32 %i.lv, 1
  %.not112 = icmp slt i32 %i.lw, %i.lt
  br i1 %.not112, label %._crit_edge.loopexit, label %bb.h, !llvm.loop !148
}

declare void @_ZN6Mapgen15updateHeightmapEN4core8vector3dIsEES2_(ptr noundef nonnull align 8 dereferenceable(200), i48, i48) local_unnamed_addr #1

declare noundef i64 @_ZN10OreManager12placeAllOresEP6MapgenjN4core8vector3dIsEES4_(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef, i32 noundef, i48, i48) local_unnamed_addr #1

declare void @_ZN17DecorationManager13placeAllDecosEP6MapgenjN4core8vector3dIsEES4_(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef, i32 noundef, i48, i48) local_unnamed_addr #1

declare void @_ZN6Mapgen12updateLiquidEP11UniqueQueueIN4core8vector3dIsEEES3_S3_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, i48, i48) local_unnamed_addr #1

declare void @_ZN6Mapgen12calcLightingEN4core8vector3dIsEES2_S2_S2_b(ptr noundef nonnull align 8 dereferenceable(200), i48, i48, i48, i48, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -32769, 32767) i32 @_ZN16MapgenCarpathian20getSpawnLevelAtPointEN4core8vector2dIsEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(596) %0, i32 %1) unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i32 %1 to i16  ; 2 uses
  %.sroa.14.0.extract.shift = lshr i32 %1, 16
  %.sroa.14.0.extract.trunc = trunc nuw i32 %.sroa.14.0.extract.shift to i16 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !48
  %i.c = and i32 %i.b, 2
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.pre = sitofp nsz i16 %.sroa.0.0.extract.trunc to float
  %.pre135 = sitofp nsz i16 %.sroa.14.0.extract.trunc to float
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.f = sitofp nsz i16 %.sroa.0.0.extract.trunc to float ; 2 uses
  %i.g = sitofp nsz i16 %.sroa.14.0.extract.trunc to float ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !59
  %i.j = tail call nsz noundef float @_Z14NoiseFractal2DPK11NoiseParamsffi(ptr noundef %i.e, float noundef %i.f, float noundef %i.g, i32 noundef %i.i)
  %i.k = tail call nsz noundef float @llvm.fabs.f32(float %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.m = load float, ptr %i.l, align 8, !tbaa !92
  %i.n = fcmp nsz uge float %i.k, %i.m
  br i1 %i.n, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.pre-phi136 = phi float [ %.pre135, %._crit_edge ], [ %i.g, %bb.b ] ; 12 uses
  %.pre-phi = phi float [ %.pre, %._crit_edge ], [ %i.f, %bb.b ] ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !61
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !59
  %i.s = tail call nsz noundef float @_Z14NoiseFractal2DPK11NoiseParamsffi(ptr noundef %i.p, float noundef %.pre-phi, float noundef %.pre-phi136, i32 noundef %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !62
  %i.v = load i32, ptr %i.q, align 8, !tbaa !59
  %i.w = tail call nsz noundef float @_Z14NoiseFractal2DPK11NoiseParamsffi(ptr noundef %i.u, float noundef %.pre-phi, float noundef %.pre-phi136, i32 noundef %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !63
  %i.z = load i32, ptr %i.q, align 8, !tbaa !59
  %i.aa = tail call nsz noundef float @_Z14NoiseFractal2DPK11NoiseParamsffi(ptr noundef %i.y, float noundef %.pre-phi, float noundef %.pre-phi136, i32 noundef %i.z)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !64
  %i.ad = load i32, ptr %i.q, align 8, !tbaa !59
  %i.ae = tail call nsz noundef float @_Z14NoiseFractal2DPK11NoiseParamsffi(ptr noundef %i.ac, float noundef %.pre-phi, float noundef %.pre-phi136, i32 noundef %i.ad)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !65
  %i.ah = load i32, ptr %i.q, align 8, !tbaa !59
  %i.ai = tail call nsz noundef float @_Z14NoiseFractal2DPK11NoiseParamsffi(ptr noundef %i.ag, float noundef %.pre-phi, float noundef %.pre-phi136, i32 noundef %i.ah) ; 3 uses
  %i.aj = tail call nsz noundef float @llvm.fabs.f32(float %i.ai)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !68
  %i.am = load i32, ptr %i.q, align 8, !tbaa !59
  %i.an = tail call nsz noundef float @_Z14NoiseFractal2DPK11NoiseParamsffi(ptr noundef %i.al, float noundef %.pre-phi, float noundef %.pre-phi136, i32 noundef %i.am) ; 2 uses
  %i.ao = fmul nsz float %i.ai, %i.ai
  %i.ap = fmul nsz float %i.ao, %i.aj
  %i.aq = fmul nsz float %i.ap, %i.an
  %i.ar = fmul nsz float %i.an, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !66
  %i.au = load i32, ptr %i.q, align 8, !tbaa !59
  %i.av = tail call nsz noundef float @_Z14NoiseFractal2DPK11NoiseParamsffi(ptr noundef %i.at, float noundef %.pre-phi, float noundef %.pre-phi136, i32 noundef %i.au) ; 3 uses
  %i.aw = tail call nsz noundef float @llvm.fabs.f32(float %i.av)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !69
  %i.az = load i32, ptr %i.q, align 8, !tbaa !59
  %i.ba = tail call nsz noundef float @_Z14NoiseFractal2DPK11NoiseParamsffi(ptr noundef %i.ay, float noundef %.pre-phi, float noundef %.pre-phi136, i32 noundef %i.az)
  %i.bb = fmul nsz float %i.av, %i.av
  %i.bc = fmul nsz float %i.bb, %i.aw
  %i.bd = tail call nsz noundef float @llvm.fabs.f32(float %i.ba)
  %i.be = fsub nsz float 1.000000e+00, %i.bd
  %i.bf = fmul nsz float %i.bc, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !67
  %i.bi = load i32, ptr %i.q, align 8, !tbaa !59
  %i.bj = tail call nsz noundef float @_Z14NoiseFractal2DPK11NoiseParamsffi(ptr noundef %i.bh, float noundef %.pre-phi, float noundef %.pre-phi136, i32 noundef %i.bi) ; 3 uses
  %i.bk = tail call nsz noundef float @llvm.fabs.f32(float %i.bj)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !70
  %i.bn = load i32, ptr %i.q, align 8, !tbaa !59
  %i.bo = tail call nsz noundef float @_Z14NoiseFractal2DPK11NoiseParamsffi(ptr noundef %i.bm, float noundef %.pre-phi, float noundef %.pre-phi136, i32 noundef %i.bn) ; 2 uses
  %i.bp = fmul nsz float %i.bj, %i.bj
  %i.bq = fmul nsz float %i.bp, %i.bk
  %i.br = fmul nsz float %i.bo, 2.000000e+00
  %i.bs = tail call nsz noundef float @llvm.floor.f32(float %i.br) ; 2 uses
  %i.bt = fneg nsz float %i.bs
  %i.bu = tail call nsz float @llvm.fmuladd.f32(float %i.bt, float 5.000000e-01, float %i.bo)
  %i.bv = fmul nsz float %i.bu, 2.000000e+00
  %i.bw = fmul nsz float %i.bv, 2.000000e+00
  %i.bx = tail call nsz noundef float @llvm.minnum.f32(float %i.bw, float 1.000000e+00)
  %i.by = fadd nsz float %i.bs, %i.bx
  %i.bz = fmul nsz float %i.by, 5.000000e-01
  %i.ca = fmul nsz float %i.bq, %i.bz
  %i.cb = load i32, ptr %i.a, align 4, !tbaa !48
  %i.cc = and i32 %i.cb, 2
  %.not115 = icmp eq i32 %i.cc, 0
  br i1 %.not115, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ce = load i16, ptr %i.cd, align 8, !tbaa !90
  %i.cf = sext i16 %i.ce to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !56
  %i.ci = add nsw i32 %i.ch, -16
  %.not116 = icmp sgt i32 %i.ci, %i.cf
  br i1 %.not116, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !71
  %i.cl = load i32, ptr %i.q, align 8, !tbaa !59
  %i.cm = tail call nsz noundef float @_Z14NoiseFractal2DPK11NoiseParamsffi(ptr noundef %i.ck, float noundef %.pre-phi, float noundef %.pre-phi136, i32 noundef %i.cl)
  %i.cn = tail call nsz noundef float @llvm.fabs.f32(float %i.cm)
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.cp = load float, ptr %i.co, align 8, !tbaa !92
  %i.cq = fsub nsz float %i.cn, %i.cp             ; 7 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.cs = load float, ptr %i.cr, align 8, !tbaa !93 ; 2 uses
  %i.ct = fcmp nsz ugt float %i.cq, %i.cs
  br i1 %i.ct, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cu = fcmp nsz olt float %i.cq, 0.000000e+00
  br i1 %i.cu, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cv = fdiv nsz float %i.cq, %i.cs             ; 3 uses
  %i.cw = fmul nsz float %i.cv, %i.cv
  %i.cx = tail call nsz float @llvm.fmuladd.f32(float %i.cv, float -2.000000e+00, float 3.000000e+00)
  %i.cy = fmul nsz float %i.cw, %i.cx
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.g, %bb.d, %bb.c
  %.0104 = phi nsz float [ 1.000000e+00, %bb.c ], [ %i.cy, %bb.g ], [ 1.000000e+00, %bb.e ], [ 1.000000e+00, %bb.d ], [ %i.cq, %bb.f ] ; 3 uses
  %.0103 = phi nsz float [ 0.000000e+00, %bb.c ], [ %i.cq, %bb.g ], [ %i.cq, %bb.e ], [ 0.000000e+00, %bb.d ], [ %i.cq, %bb.f ]
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !56 ; 3 uses
  %sext = shl i32 %i.da, 16
  %i.db = ashr exact i32 %sext, 16                ; 2 uses
  %i.dc = add nsw i32 %i.da, 32
  %.not117128 = icmp slt i32 %i.dc, %i.db
  br i1 %.not117128, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.dd = trunc i32 %i.da to i16
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.df = insertelement <4 x float> poison, float %i.w, i64 0
  %i.dg = insertelement <4 x float> %i.df, float %i.ae, i64 1
  %i.dh = shufflevector <4 x float> %i.dg, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.di = insertelement <4 x float> poison, float %i.s, i64 0
  %i.dj = insertelement <4 x float> %i.di, float %i.aa, i64 1
  %i.dk = shufflevector <4 x float> %i.dj, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.dl = fsub nsz <4 x float> %i.dh, %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 476
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.do = fcmp nsz olt float %.0104, 0.000000e+00
  %i.dp = fneg nsz float %.0104
  %i.dq = tail call nsz float @llvm.sqrt.f32(float %i.dp)
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 484
  %i.ds = fneg nsz float %i.dq
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %.thread
  %i.dt = phi i32 [ %i.db, %.lr.ph ], [ %i.fh, %.thread ] ; 2 uses
  %.095132 = phi i16 [ %i.dd, %.lr.ph ], [ %i.fg, %.thread ] ; 2 uses
  %.096131 = phi i8 [ 0, %.lr.ph ], [ %.2127, %.thread ]
  %.097130 = phi i1 [ false, %.lr.ph ], [ %.299126, %.thread ] ; 2 uses
  %i.du = load ptr, ptr %i.de, align 8, !tbaa !72
  %i.dv = sitofp i16 %.095132 to float            ; 2 uses
  %i.dw = load i32, ptr %i.q, align 8, !tbaa !59
  %i.dx = tail call nsz noundef float @_Z14NoiseFractal3DPK11NoiseParamsfffi(ptr noundef %i.du, float noundef %.pre-phi, float noundef %i.dv, float noundef %.pre-phi136, i32 noundef %i.dw)
  %i.dy = insertelement <4 x float> poison, float %i.dx, i64 0
  %i.dz = shufflevector <4 x float> %i.dy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ea = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dz, <4 x float> %i.dl, <4 x float> %i.dk) ; 2 uses
  %i.eb = shufflevector <4 x float> %i.ea, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ec = shufflevector <4 x float> %i.ea, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ed = tail call nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.eb, <2 x float> %i.ec) ; 2 uses
  %i.ee = extractelement <2 x float> %i.ed, i64 0
  %i.ef = extractelement <2 x float> %i.ed, i64 1
  %i.eg = tail call nsz noundef float @llvm.maxnum.f32(float %i.ee, float %i.ef) ; 3 uses
  %i.eh = fmul nsz float %i.ar, %i.eg
  %i.ei = fmul nsz float %i.bf, %i.eg
  %i.ej = fmul nsz float %i.ca, %i.eg
  %i.ek = sub nsw i32 1, %i.dt
  %i.el = fadd nsz float %i.eh, %i.ei
  %i.em = fadd nsz float %i.ej, %i.el
  %i.en = load float, ptr %i.dm, align 4, !tbaa !94
  %i.eo = fadd nsz float %i.en, %i.em
  %i.ep = sitofp nsz i32 %i.ek to float
  %i.eq = fadd nsz float %i.eo, %i.ep             ; 6 uses
  %i.er = load i32, ptr %i.a, align 4, !tbaa !48
  %i.es = and i32 %i.er, 2
  %.not118 = icmp eq i32 %i.es, 0
  br i1 %.not118, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.et = load float, ptr %i.dn, align 8, !tbaa !93
  %i.eu = fcmp nsz ugt float %.0103, %i.et
  br i1 %i.eu, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ev = load i32, ptr %i.cz, align 4, !tbaa !56
  %i.ew = sitofp nsz i32 %i.ev to float           ; 4 uses
  br i1 %i.do, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ex = load float, ptr %i.dr, align 4, !tbaa !95
  %i.ey = tail call nsz float @llvm.fmuladd.f32(float %i.ds, float %i.ex, float %i.ew)
  %i.ez = tail call nsz noundef float @llvm.minnum.f32(float %i.eq, float %i.ey)
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.fa = fcmp nsz ogt float %i.eq, %i.ew
  br i1 %i.fa, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.fb = fsub nsz float %i.eq, %i.ew
  %i.fc = tail call nsz float @llvm.fmuladd.f32(float %i.fb, float %.0104, float %i.ew)
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.n, %bb.m, %bb.j, %bb.i
  %.0 = phi nsz float [ %i.ez, %bb.l ], [ %i.fc, %bb.n ], [ %i.eq, %bb.m ], [ %i.eq, %bb.j ], [ %i.eq, %bb.i ]
  %i.fd = fcmp nsz ogt float %.0, %i.dv
  br i1 %i.fd, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fe = add i8 %.096131, 1                      ; 2 uses
  %i.ff = icmp eq i8 %i.fe, 3
  %or.cond = select i1 %i.ff, i1 %.097130, i1 false
  br i1 %or.cond, label %.loopexit.loopexit.split.loop.exit, label %.thread

.thread:                                          ; preds = %bb.o, %bb.p
  %.2127 = phi i8 [ %i.fe, %bb.p ], [ 0, %bb.o ]
  %.299126 = phi i1 [ %.097130, %bb.p ], [ true, %bb.o ]
  %i.fg = add i16 %.095132, 1                     ; 2 uses
  %i.fh = sext i16 %i.fg to i32                   ; 2 uses
  %i.fi = load i32, ptr %i.cz, align 4, !tbaa !56
  %i.fj = add nsw i32 %i.fi, 32
  %.not117 = icmp slt i32 %i.fj, %i.fh
  br i1 %.not117, label %.loopexit, label %bb.i, !llvm.loop !175

.loopexit.loopexit.split.loop.exit:               ; preds = %bb.p
  %i.fk = add nsw i32 %i.dt, -1
  br label %.loopexit

.loopexit:                                        ; preds = %.thread, %.loopexit.loopexit.split.loop.exit, %bb.h, %bb.b
  %.6 = phi i32 [ 31007, %bb.b ], [ 31007, %bb.h ], [ %i.fk, %.loopexit.loopexit.split.loop.exit ], [ 31007, %.thread ]
  ret i32 %.6
}

declare noundef float @_Z14NoiseFractal2DPK11NoiseParamsffi(ptr noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #1

declare noundef float @_Z14NoiseFractal3DPK11NoiseParamsfffi(ptr noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN5Noise10noiseMap2DEffPf(ptr noundef nonnull align 8 dereferenceable(88), float noundef, float noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN5Noise10noiseMap3DEfffPf(ptr noundef nonnull align 8 dereferenceable(88), float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK16MapgenCarpathian7getTypeEv(ptr noundef nonnull align 8 dereferenceable(596) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i32 2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN6Mapgen21getGroundLevelAtPointEN4core8vector2dIsEE(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 %1) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i32 0
}

declare void @_ZN11MapgenBasic14generateBiomesEv(ptr noundef nonnull align 8 dereferenceable(474)) unnamed_addr #1

declare void @_ZN11MapgenBasic12dustTopNodesEv(ptr noundef nonnull align 8 dereferenceable(474)) unnamed_addr #1

declare void @_ZN11MapgenBasic30generateCavesNoiseIntersectionEs(ptr noundef nonnull align 8 dereferenceable(474), i16 noundef signext) unnamed_addr #1

declare void @_ZN11MapgenBasic23generateCavesRandomWalkEss(ptr noundef nonnull align 8 dereferenceable(474), i16 noundef signext, i16 noundef signext) unnamed_addr #1

declare noundef zeroext i1 @_ZN11MapgenBasic20generateCavernsNoiseEs(ptr noundef nonnull align 8 dereferenceable(474), i16 noundef signext) unnamed_addr #1

declare void @_ZN11MapgenBasic16generateDungeonsEs(ptr noundef nonnull align 8 dereferenceable(474), i16 noundef signext) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN12MapgenParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN22MapgenCarpathianParamsD0Ev(ptr noundef nonnull align 8 dereferenceable(784) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN12MapgenParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(784) dereferenceable(784) %0) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 784) #12
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { builtin allocsize(0) }
attributes #12 = { builtin nounwind }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"vtable pointer", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"float", !5, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"_ZTS10MapgenType", !5, i64 0}
!14 = !{!"short", !5, i64 0}
!15 = !{!"_ZTSN4core8vector3dIsEE", !14, i64 0, !14, i64 2, !14, i64 4}
!16 = !{!"long", !5, i64 0}
!17 = !{!"any pointer", !5, i64 0}
!18 = !{!"p1 _ZTS11BiomeParams", !17, i64 0}
!19 = !{!"_ZTS12MapgenParams", !13, i64 8, !15, i64 12, !16, i64 24, !14, i64 32, !14, i64 34, !6, i64 36, !6, i64 40, !18, i64 48}
!20 = !{!19, !6, i64 40}
!21 = !{!"bool", !5, i64 0}
!22 = !{!"p1 _ZTS8MMVManip", !17, i64 0}
!23 = !{!"p1 _ZTS12EmergeParams", !17, i64 0}
!24 = !{!"p1 _ZTS14NodeDefManager", !17, i64 0}
!25 = !{!"p1 short", !17, i64 0}
!26 = !{!"p1 _ZTS8BiomeGen", !17, i64 0}
!27 = !{!"p1 _ZTSSt3setIjSt4lessIjESaIjEE", !17, i64 0}
!28 = !{!"p1 _ZTSSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE", !17, i64 0}
!29 = !{!"p1 _ZTSN16GenerateNotifier14GenNotifyEventE", !17, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIN16GenerateNotifier14GenNotifyEventESaIS1_EE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!31 = !{!"_ZTSNSt12_Vector_baseIN16GenerateNotifier14GenNotifyEventESaIS1_EE12_Vector_implE", !30, i64 0}
!32 = !{!"_ZTSSt12_Vector_baseIN16GenerateNotifier14GenNotifyEventESaIS1_EE", !31, i64 0}
!33 = !{!"_ZTSSt6vectorIN16GenerateNotifier14GenNotifyEventESaIS1_EE", !32, i64 0}
!34 = !{!"any p2 pointer", !17, i64 0}
!35 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !34, i64 0}
!36 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !17, i64 0}
!37 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !36, i64 0}
!38 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !11, i64 0, !16, i64 8}
!39 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !35, i64 0, !16, i64 8, !37, i64 16, !16, i64 24, !38, i64 32, !36, i64 48}
!40 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE", !39, i64 0}
!41 = !{!"_ZTS16GenerateNotifier", !6, i64 0, !27, i64 8, !28, i64 16, !33, i64 24, !40, i64 48}
!42 = !{!"_ZTS6Mapgen", !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !21, i64 24, !6, i64 28, !22, i64 32, !23, i64 40, !24, i64 48, !6, i64 56, !25, i64 64, !25, i64 72, !15, i64 80, !26, i64 88, !41, i64 96}
!43 = !{!"p1 _ZTS12BiomeManager", !17, i64 0}
!44 = !{!"p1 _ZTS5Noise", !17, i64 0}
!45 = !{!"_ZTSN4core8vector3dIfEE", !11, i64 0, !11, i64 4, !11, i64 8}
!46 = !{!"_ZTS11NoiseParams", !11, i64 0, !11, i64 4, !45, i64 8, !6, i64 20, !14, i64 24, !11, i64 28, !11, i64 32, !6, i64 36}
!47 = !{!"_ZTS11MapgenBasic", !42, i64 0, !43, i64 200, !44, i64 208, !15, i64 216, !15, i64 222, !15, i64 228, !15, i64 234, !14, i64 240, !14, i64 242, !14, i64 244, !14, i64 246, !14, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !46, i64 272, !46, i64 312, !46, i64 352, !46, i64 392, !11, i64 432, !11, i64 436, !11, i64 440, !11, i64 444, !6, i64 448, !6, i64 452, !6, i64 456, !6, i64 460, !11, i64 464, !14, i64 468, !14, i64 470, !14, i64 472}
!48 = !{!47, !6, i64 268}
!49 = !{!"_ZTS22MapgenCarpathianParams", !19, i64 0, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !14, i64 76, !14, i64 78, !14, i64 80, !14, i64 82, !14, i64 84, !11, i64 88, !14, i64 92, !14, i64 94, !11, i64 96, !14, i64 100, !14, i64 102, !46, i64 104, !46, i64 144, !46, i64 184, !46, i64 224, !46, i64 264, !46, i64 304, !46, i64 344, !46, i64 384, !46, i64 424, !46, i64 464, !46, i64 504, !46, i64 544, !46, i64 584, !46, i64 624, !46, i64 664, !46, i64 704, !46, i64 744}
!50 = !{!49, !11, i64 72}
!51 = !{!49, !14, i64 76}
!52 = !{!47, !14, i64 468}
!53 = !{!14, !14, i64 0}
!54 = !{!49, !11, i64 88}
!55 = !{!49, !11, i64 96}
!56 = !{!42, !6, i64 12}
!57 = !{!"_ZTS16MapgenCarpathian", !47, i64 0, !11, i64 476, !11, i64 480, !11, i64 484, !11, i64 488, !44, i64 496, !44, i64 504, !44, i64 512, !44, i64 520, !44, i64 528, !44, i64 536, !44, i64 544, !44, i64 552, !44, i64 560, !44, i64 568, !44, i64 576, !44, i64 584, !6, i64 592}
!58 = !{!57, !6, i64 592}
!59 = !{!42, !6, i64 8}
!60 = !{!47, !44, i64 208}
!61 = !{!57, !44, i64 496}
!62 = !{!57, !44, i64 504}
!63 = !{!57, !44, i64 512}
!64 = !{!57, !44, i64 520}
!65 = !{!57, !44, i64 528}
!66 = !{!57, !44, i64 536}
!67 = !{!57, !44, i64 544}
!68 = !{!57, !44, i64 552}
!69 = !{!57, !44, i64 560}
!70 = !{!57, !44, i64 568}
!71 = !{!57, !44, i64 576}
!72 = !{!57, !44, i64 584}
!73 = !{!15, !14, i64 0}
!74 = !{!15, !14, i64 2}
!75 = !{!15, !14, i64 4}
!76 = !{!49, !14, i64 84}
!77 = !{!49, !14, i64 92}
!78 = !{!49, !14, i64 94}
!79 = !{!49, !14, i64 100}
!80 = !{!49, !14, i64 102}
!81 = !{!"p1 omnipotent char", !17, i64 0}
!82 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !81, i64 0}
!83 = !{!82, !81, i64 0}
!84 = !{!16, !16, i64 0}
!85 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !82, i64 0, !16, i64 8, !5, i64 16}
!86 = !{!85, !81, i64 0}
!87 = !{!5, !5, i64 0}
!88 = !{!85, !16, i64 8}
!89 = !{!42, !22, i64 32}
!90 = !{!47, !14, i64 224}
!91 = !{!"llvm.loop.mustprogress"}
!92 = !{!57, !11, i64 480}
end_hunk_0
