Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSliderConstraint?download=true
inline.NumInlined: 416
inline.NumDeleted: 81
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN18btSliderConstraint13testLinLimitsEv:bb.a
  %i.i = fcmp ugt float %i.f, %i.h
  br i1 %i.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = fcmp ogt float %i.c, %i.h
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = fsub float %i.c, %i.h
  store float %i.k, ptr %i.b, align 8, !tbaa !10
  store i8 1, ptr %i.a, align 8, !tbaa !44
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.l = fcmp olt float %i.c, %i.f
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = fsub float %i.c, %i.f
  store float %i.m, ptr %i.b, align 8, !tbaa !10
  store i8 1, ptr %i.a, align 8, !tbaa !44
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  store float 0.000000e+00, ptr %i.b, align 8, !tbaa !10
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  store float 0.000000e+00, ptr %i.b, align 8, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN18btSliderConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(1152) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #6 align 2 {
bb.a:
  store i32 6, ptr %1, align 4, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.a, align 4, !tbaa !38
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN18btSliderConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25, !nonnull !26, !align !27 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28, !nonnull !26, !align !27 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 420
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 420
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 452
  %i.j = load float, ptr %i.i, align 4, !tbaa !78
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 452
  %i.l = load float, ptr %i.k, align 4, !tbaa !78
  tail call void @_ZN18btSliderConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_ff(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %i.c, ptr noundef nonnull align 4 dereferenceable(64) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %i.h, float noundef %i.j, float noundef %i.l)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN18btSliderConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_ff(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5, float noundef %6, float noundef %7) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !81   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.f = load i8, ptr %i.e, align 4, !tbaa !29, !range !30, !noundef !26
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = select i1 %i.g, float 1.000000e+00, float -1.000000e+00 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 964
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 900
  %i.m = load <3 x float>, ptr %i.i, align 8, !tbaa !10
  %i.n = load <3 x float>, ptr %i.j, align 8, !tbaa !10
  %i.o = fsub <3 x float> %i.m, %i.n              ; 3 uses
  %i.p = fcmp olt float %6, f0x34000000
  %i.q = fcmp olt float %7, f0x34000000
  %i.r = or i1 %i.p, %i.q                         ; 2 uses
  %i.s = fadd float %6, %7                        ; 2 uses
  %i.t = fcmp ogt float %i.s, 0.000000e+00
  %i.u = fdiv float %7, %i.s
  %storemerge = select i1 %i.t, float %i.u, float 5.000000e-01 ; 14 uses
  %i.v = fsub float 1.000000e+00, %storemerge     ; 14 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.y = load float, ptr %i.a, align 8, !tbaa !10 ; 4 uses
  %i.z = load float, ptr %i.w, align 8, !tbaa !10 ; 4 uses
  %i.aa = load float, ptr %i.x, align 8, !tbaa !10 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.ad = load float, ptr %i.b, align 8, !tbaa !10 ; 3 uses
  %i.ae = load float, ptr %i.ab, align 8, !tbaa !10 ; 3 uses
  %i.af = load float, ptr %i.ac, align 8, !tbaa !10 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !24, !range !30, !noundef !26
  %i.ai = trunc nuw i8 %i.ah to i1                ; 3 uses
  br i1 %i.ai, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.aj = fmul float %storemerge, %i.y
  %i.ak = fmul float %storemerge, %i.z
  %i.al = fmul float %storemerge, %i.aa
  %i.am = fmul float %i.v, %i.ad
  %i.an = fmul float %i.v, %i.ae
  %i.ao = fmul float %i.v, %i.af
  %i.ap = fadd float %i.aj, %i.am                 ; 3 uses
  %i.aq = fadd float %i.ak, %i.an                 ; 3 uses
  %i.ar = fadd float %i.al, %i.ao                 ; 3 uses
  %i.as = fmul float %i.aq, %i.aq
  %i.at = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.ap, float %i.as)
  %i.au = tail call noundef float @llvm.fmuladd.f32(float %i.ar, float %i.ar, float %i.at)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.au)
  %i.av = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.aw = fmul float %i.ap, %i.av                 ; 6 uses
  %i.ax = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.ay = fmul float %i.aq, %i.av                 ; 7 uses
  %.sroa.0822.4.vec.insert = insertelement <2 x float> %i.ax, float %i.ay, i64 1
  %i.az = fmul float %i.ar, %i.av                 ; 7 uses
  %.sroa.49.8.vec.insert = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.az, i64 0
  %i.ba = tail call noundef float @llvm.fabs.f32(float %i.az)
  %i.bb = fcmp ogt float %i.ba, f0x3F3504F3
  br i1 %i.bb, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bc = fmul nnan float %i.az, %i.az
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.ay, float %i.bc) ; 2 uses
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.bd)
  %i.be = fdiv float 1.000000e+00, %sqrt.i        ; 3 uses
  %i.bf = fneg float %i.az
  %i.bg = fmul float %i.be, %i.bf                 ; 2 uses
  %.sroa.01139.4.vec.insert1157 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.bg, i64 1
  %i.bh = fmul float %i.ay, %i.be                 ; 2 uses
  %.sroa.25.8.vec.insert1174 = insertelement <2 x float> <float poison, float undef>, float %i.bh, i64 0
  %i.bi = fmul float %i.bd, %i.be
  %.sroa.01104.0.vec.insert1106 = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bj = fneg float %i.aw
  %i.bk = fmul float %i.bh, %i.bj
  %.sroa.01104.4.vec.insert1118 = insertelement <2 x float> %.sroa.01104.0.vec.insert1106, float %i.bk, i64 1
  %i.bl = fmul float %i.aw, %i.bg
  br label %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit

bb.d:                                             ; preds = %bb.b
  %i.bm = fmul float %i.ay, %i.ay
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.aw, float %i.bm) ; 2 uses
  %sqrt43.i = tail call float @llvm.sqrt.f32(float %i.bn)
  %i.bo = fdiv float 1.000000e+00, %sqrt43.i      ; 3 uses
  %i.bp = fneg float %i.ay
  %i.bq = fmul float %i.bo, %i.bp                 ; 2 uses
  %.sroa.01139.0.vec.insert = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.br = fmul float %i.aw, %i.bo                 ; 2 uses
  %.sroa.01139.4.vec.insert = insertelement <2 x float> %.sroa.01139.0.vec.insert, float %i.br, i64 1
  %i.bs = fneg float %i.az
  %i.bt = fmul float %i.br, %i.bs
  %.sroa.01104.0.vec.insert = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.bu = fmul float %i.az, %i.bq
  %.sroa.01104.4.vec.insert = insertelement <2 x float> %.sroa.01104.0.vec.insert, float %i.bu, i64 1
  %i.bv = fmul float %i.bn, %i.bo
  br label %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit

_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit:   ; preds = %bb.c, %bb.d
  %.sroa.25.0 = phi <2 x float> [ %.sroa.25.8.vec.insert1174, %bb.c ], [ <float 0.000000e+00, float undef>, %bb.d ]
  %.sroa.01139.0 = phi <2 x float> [ %.sroa.01139.4.vec.insert1157, %bb.c ], [ %.sroa.01139.4.vec.insert, %bb.d ]
  %.sroa.01104.0 = phi <2 x float> [ %.sroa.01104.4.vec.insert1118, %bb.c ], [ %.sroa.01104.4.vec.insert, %bb.d ]
  %.sink.i = phi float [ %i.bl, %bb.c ], [ %i.bv, %bb.d ]
  %.sroa.20.8.vec.insert = insertelement <2 x float> <float poison, float undef>, float %.sink.i, i64 0
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %.sroa.3.12.vec.insert.i450 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aa, i64 0
  %.sroa.0.0.vec.insert.i448 = insertelement <2 x float> poison, float %i.y, i64 0
  %.sroa.0.4.vec.insert.i449 = insertelement <2 x float> %.sroa.0.0.vec.insert.i448, float %i.z, i64 1
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 852
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 884
  %.sroa.0.0.vec.insert.i478 = load <2 x float>, ptr %i.bw, align 4
  %i.bz = load float, ptr %i.bx, align 4, !tbaa !10
  %.sroa.0.4.vec.insert.i479 = insertelement <2 x float> %.sroa.0.0.vec.insert.i478, float %i.bz, i64 1
  %i.ca = load float, ptr %i.by, align 4, !tbaa !10
  %.sroa.3.12.vec.insert.i480 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ca, i64 0
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 888
  %.sroa.0.0.vec.insert.i483 = load <2 x float>, ptr %i.cb, align 8
  %i.ce = load float, ptr %i.cc, align 8, !tbaa !10
  %.sroa.0.4.vec.insert.i484 = insertelement <2 x float> %.sroa.0.0.vec.insert.i483, float %i.ce, i64 1
  %i.cf = load float, ptr %i.cd, align 8, !tbaa !10
  %.sroa.3.12.vec.insert.i485 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cf, i64 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit
  %.sroa.25.1 = phi <2 x float> [ %.sroa.25.0, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit ], [ %.sroa.3.12.vec.insert.i480, %bb.e ] ; 4 uses
  %.sroa.01139.1 = phi <2 x float> [ %.sroa.01139.0, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit ], [ %.sroa.0.4.vec.insert.i479, %bb.e ] ; 8 uses
  %.sroa.20.0 = phi <2 x float> [ %.sroa.20.8.vec.insert, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit ], [ %.sroa.3.12.vec.insert.i485, %bb.e ] ; 5 uses
  %.sroa.01104.1 = phi <2 x float> [ %.sroa.01104.0, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit ], [ %.sroa.0.4.vec.insert.i484, %bb.e ] ; 8 uses
  %.sroa.0822.0 = phi <2 x float> [ %.sroa.0822.4.vec.insert, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit ], [ %.sroa.0.4.vec.insert.i449, %bb.e ] ; 13 uses
  %.sroa.49.0 = phi <2 x float> [ %.sroa.49.8.vec.insert, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit ], [ %.sroa.3.12.vec.insert.i450, %bb.e ] ; 6 uses
  %.sroa.01139.0.vec.extract = extractelement <2 x float> %.sroa.01139.1, i64 0
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !82 ; 15 uses
  %.sroa.01139.4.vec.extract = extractelement <2 x float> %.sroa.01139.1, i64 1 ; 2 uses
  store <2 x float> %.sroa.01139.1, ptr %i.ch, align 4, !tbaa !10
  %.sroa.25.8.vec.extract = extractelement <2 x float> %.sroa.25.1, i64 0 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store float %.sroa.25.8.vec.extract, ptr %i.ci, align 4, !tbaa !10
  %.sroa.01104.0.vec.extract = extractelement <2 x float> %.sroa.01104.1, i64 0 ; 2 uses
  %i.cj = sext i32 %i.d to i64                    ; 4 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.cj
  store float %.sroa.01104.0.vec.extract, ptr %i.ck, align 4, !tbaa !10
  %.sroa.01104.4.vec.extract = extractelement <2 x float> %.sroa.01104.1, i64 1 ; 2 uses
  %i.cl = add nsw i32 %i.d, 1
  %i.cm = sext i32 %i.cl to i64                   ; 2 uses
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.cm
  store float %.sroa.01104.4.vec.extract, ptr %i.cn, align 4, !tbaa !10
  %.sroa.20.8.vec.extract = extractelement <2 x float> %.sroa.20.0, i64 0 ; 2 uses
  %i.co = add nsw i32 %i.d, 2
  %i.cp = sext i32 %i.co to i64                   ; 2 uses
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.cp
  store float %.sroa.20.8.vec.extract, ptr %i.cq, align 4, !tbaa !10
  %i.cr = fneg float %.sroa.01139.0.vec.extract   ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !83 ; 18 uses
  store float %i.cr, ptr %i.ct, align 4, !tbaa !10
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cv = fneg float %.sroa.01139.4.vec.extract   ; 3 uses
  store float %i.cv, ptr %i.cu, align 4, !tbaa !10
  %i.cw = fneg float %.sroa.25.8.vec.extract      ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store float %i.cw, ptr %i.cx, align 4, !tbaa !10
  %i.cy = fneg float %.sroa.01104.0.vec.extract   ; 3 uses
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.cj
  store float %i.cy, ptr %i.cz, align 4, !tbaa !10
  %i.da = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.cm
  %i.db = shufflevector <2 x float> %.sroa.01104.1, <2 x float> %.sroa.20.0, <2 x i32> <i32 1, i32 2>
  %i.dc = fneg <2 x float> %i.db                  ; 4 uses
  %i.dd = extractelement <2 x float> %i.dc, i64 0
  store float %i.dd, ptr %i.da, align 4, !tbaa !10
  %i.de = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.cp
  %i.df = extractelement <2 x float> %i.dc, i64 1
  store float %i.df, ptr %i.de, align 4, !tbaa !10
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 4 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !23 ; 6 uses
  %i.di = and i32 %i.dh, 128
  %.not = icmp eq i32 %i.di, 0
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.dk = load float, ptr %i.dj, align 8, !tbaa !49 ; 2 uses
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !84
  %i.dn = fmul float %i.dk, %i.dm
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.do = phi float [ %i.dn, %bb.g ], [ %i.dk, %bb.f ]
  %i.dp = load float, ptr %1, align 8, !tbaa !85
  %i.dq = fmul float %i.do, %i.dp
  %i.dr = insertelement <3 x float> poison, float %i.ad, i64 0
  %i.ds = insertelement <3 x float> %i.dr, float %i.ae, i64 1
  %i.dt = insertelement <3 x float> %i.ds, float %i.af, i64 2
  %i.du = fneg <3 x float> %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !86 ; 7 uses
  %i.dx = insertelement <3 x float> poison, float %i.z, i64 0
  %i.dy = insertelement <3 x float> %i.dx, float %i.aa, i64 1
  %i.dz = insertelement <3 x float> %i.dy, float %i.y, i64 2
  %i.ea = fmul <3 x float> %i.dz, %i.du
  %i.eb = insertelement <3 x float> poison, float %i.y, i64 0
  %i.ec = insertelement <3 x float> %i.eb, float %i.z, i64 1
  %i.ed = insertelement <3 x float> %i.ec, float %i.aa, i64 2
  %i.ee = insertelement <3 x float> poison, float %i.ae, i64 0
  %i.ef = insertelement <3 x float> %i.ee, float %i.af, i64 1
  %i.eg = insertelement <3 x float> %i.ef, float %i.ad, i64 2
  %i.eh = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ed, <3 x float> %i.eg, <3 x float> %i.ea) ; 3 uses
  %i.ei = shufflevector <3 x float> %i.eh, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ej = shufflevector <2 x float> %.sroa.01139.1, <2 x float> %.sroa.01104.1, <2 x i32> <i32 1, i32 3>
  %i.ek = fmul <2 x float> %i.ei, %i.ej
  %i.el = shufflevector <3 x float> %i.eh, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.em = shufflevector <2 x float> %.sroa.01139.1, <2 x float> %.sroa.01104.1, <2 x i32> <i32 0, i32 2>
  %i.en = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.el, <2 x float> %i.em, <2 x float> %i.ek)
  %i.eo = shufflevector <3 x float> %i.eh, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ep = shufflevector <2 x float> %.sroa.25.1, <2 x float> %.sroa.20.0, <2 x i32> <i32 0, i32 2>
  %i.eq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eo, <2 x float> %i.ep, <2 x float> %i.en)
  %i.er = insertelement <2 x float> poison, float %i.dq, i64 0
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer
  %i.et = fmul <2 x float> %i.eq, %i.es           ; 2 uses
  %i.eu = extractelement <2 x float> %i.et, i64 0
  store float %i.eu, ptr %i.dw, align 4, !tbaa !10
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.cj
  %i.ew = extractelement <2 x float> %i.et, i64 1
  store float %i.ew, ptr %i.ev, align 4, !tbaa !10
  %i.ex = and i32 %i.dh, 64
  %.not435 = icmp eq i32 %i.ex, 0
  br i1 %.not435, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !50 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !87 ; 2 uses
  store float %i.ez, ptr %i.fb, align 4, !tbaa !10
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %i.cj
  store float %i.ez, ptr %i.fc, align 4, !tbaa !10
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.5787.48.copyload = load float, ptr %i.fd, align 4 ; 2 uses
  %.sroa.8789.48..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.8.48..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.ff = load <2 x float>, ptr %.sroa.8789.48..sroa_idx, align 4 ; 2 uses
  %.sroa.5782.48.copyload = load float, ptr %i.fe, align 4 ; 2 uses
  %i.fg = load <2 x float>, ptr %.sroa.8.48..sroa_idx, align 4 ; 2 uses
  %i.fh = shl i32 %i.d, 1                         ; 3 uses
  %i.fi = mul i32 %i.d, 3                         ; 3 uses
  br i1 %i.ai, label %bb.k, label %.preheader1001.preheader

bb.k:                                             ; preds = %bb.j
  %.sroa.0822.0.vec.extract833 = extractelement <2 x float> %.sroa.0822.0, i64 0 ; 2 uses
  %.sroa.49.8.vec.extract917 = extractelement <2 x float> %.sroa.49.0, i64 0
  %i.fj = load <4 x float>, ptr %i.j, align 8
  %i.fk = shufflevector <4 x float> %i.fj, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.fm = load float, ptr %i.fl, align 8, !tbaa !45
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.fo = load float, ptr %i.fn, align 8, !tbaa !10
  %i.fp = fsub float %i.fm, %i.fo                 ; 2 uses
  %i.fq = load float, ptr %i.i, align 8, !tbaa !10
  %i.fr = shufflevector <2 x float> %.sroa.0822.0, <2 x float> %.sroa.49.0, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.fs = load <2 x float>, ptr %i.l, align 4, !tbaa !10
  %i.ft = fsub <2 x float> %i.fs, %i.ff           ; 3 uses
  %i.fu = fmul float %.sroa.0822.0.vec.extract833, %i.fp
  %i.fv = insertelement <2 x float> poison, float %i.fp, i64 0
  %i.fw = shufflevector <2 x float> %i.fv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fx = fmul <2 x float> %i.fr, %i.fw
  %i.fy = insertelement <2 x float> poison, float %storemerge, i64 0 ; 2 uses
  %i.fz = shufflevector <2 x float> %i.fy, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ga = load <2 x float>, ptr %i.k, align 4, !tbaa !10
  %i.gb = fsub <2 x float> %i.ga, %i.fg           ; 3 uses
  %i.gc = insertelement <2 x float> poison, float %i.v, i64 0 ; 2 uses
  %i.gd = shufflevector <2 x float> %i.gc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ge = insertelement <2 x float> %i.fk, float %i.fq, i64 1
  %i.gf = insertelement <2 x float> poison, float %.sroa.5787.48.copyload, i64 0
  %i.gg = insertelement <2 x float> %i.gf, float %.sroa.5782.48.copyload, i64 1
  %i.gh = fsub <2 x float> %i.ge, %i.gg           ; 2 uses
  %i.gi = shufflevector <2 x float> %.sroa.0822.0, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gj = shufflevector <2 x float> %i.ft, <2 x float> %i.gb, <2 x i32> <i32 0, i32 2>
  %i.gk = fmul <2 x float> %i.gi, %i.gj
  %i.gl = shufflevector <2 x float> %.sroa.0822.0, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gh, <2 x float> %i.gl, <2 x float> %i.gk)
  %i.gn = shufflevector <2 x float> %i.ft, <2 x float> %i.gb, <2 x i32> <i32 1, i32 3>
  %i.go = shufflevector <2 x float> %.sroa.49.0, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gn, <2 x float> %i.go, <2 x float> %i.gm) ; 3 uses
  %i.gq = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gr = fmul <2 x float> %i.fr, %i.gq           ; 2 uses
  %i.gs = fsub <2 x float> %i.ft, %i.gr           ; 3 uses
  %i.gt = fmul <2 x float> %i.gl, %i.gp           ; 3 uses
  %i.gu = extractelement <2 x float> %i.gt, i64 0
  %i.gv = fadd float %i.gu, %i.fu
  %i.gw = fadd <2 x float> %i.gr, %i.fx
  %i.gx = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gy = fmul <2 x float> %i.fr, %i.gx           ; 2 uses
  %i.gz = fsub <2 x float> %i.gh, %i.gt           ; 3 uses
  %i.ha = fsub <2 x float> %i.gb, %i.gy           ; 3 uses
  %i.hb = extractelement <2 x float> %i.gt, i64 1
  %i.hc = fsub float %i.gv, %i.hb
  %i.hd = fsub <2 x float> %i.gw, %i.gy           ; 2 uses
  %i.he = fmul <2 x float> %i.fz, %i.hd
  %i.hf = fadd <2 x float> %i.gs, %i.he           ; 6 uses
  %i.hg = insertelement <2 x float> %i.fy, float %i.v, i64 1
  %i.hh = insertelement <2 x float> poison, float %i.hc, i64 0
  %i.hi = shufflevector <2 x float> %i.hh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hj = fmul <2 x float> %i.hg, %i.hi           ; 2 uses
  %i.hk = fadd <2 x float> %i.gz, %i.hj           ; 2 uses
  %i.hl = fsub <2 x float> %i.gz, %i.hj           ; 3 uses
  %i.hm = shufflevector <2 x float> %i.hk, <2 x float> %i.hl, <4 x i32> <i32 0, i32 0, i32 3, i32 3> ; 2 uses
  %i.hn = shufflevector <4 x float> %i.hm, <4 x float> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ho = shufflevector <2 x float> %i.hn, <2 x float> %i.hf, <2 x i32> <i32 0, i32 2>
  %i.hp = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.hf, <2 x i32> <i32 3, i32 1>
  %i.hq = fmul <2 x float> %i.gd, %i.hd
  %i.hr = fsub <2 x float> %i.ha, %i.hq           ; 7 uses
  %i.hs = shufflevector <2 x float> %i.hl, <2 x float> %i.hr, <2 x i32> <i32 1, i32 2>
  %i.ht = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.hr, <2 x i32> <i32 3, i32 1>
  %i.hu = extractelement <2 x float> %i.ha, i64 0
  %i.hv = fmul float %storemerge, %i.hu
  %i.hw = extractelement <2 x float> %i.ha, i64 1
  %i.hx = fmul float %storemerge, %i.hw
  %i.hy = insertelement <2 x float> %i.gc, float %storemerge, i64 1
  %i.hz = fmul <2 x float> %i.hy, %i.gz
  %i.ia = extractelement <2 x float> %i.gs, i64 0
  %i.ib = fmul float %i.v, %i.ia
  %i.ic = extractelement <2 x float> %i.gs, i64 1
  %i.id = fmul float %i.v, %i.ic
  %i.ie = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.hz) ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN18btSliderConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_ff:bb.a

bb.z:                                             ; preds = %bb.y
  %i.tc = and i32 %i.dh, 1
  %.not439 = icmp eq i32 %i.tc, 0
  br i1 %.not439, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.te = load float, ptr %i.td, align 4, !tbaa !53
  %i.tf = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !87
  %i.th = getelementptr inbounds [4 x i8], ptr %i.tg, i64 %i.qm
  store float %i.te, ptr %i.th, align 4, !tbaa !10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 1124 ; 2 uses
  %i.tj = load float, ptr %i.ti, align 4, !tbaa !92
  %i.tk = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.tl = load float, ptr %i.tk, align 8, !tbaa !45
  %i.tm = load float, ptr %i.sm, align 8, !tbaa !46
  %i.tn = load float, ptr %i.so, align 4, !tbaa !47
  %i.to = load float, ptr %1, align 8, !tbaa !85
  %i.tp = fmul float %i.tb, %i.to
  %i.tq = tail call noundef float @_ZN17btTypedConstraint14getMotorFactorEfffff(ptr noundef nonnull align 8 dereferenceable(72) %0, float noundef %i.tl, float noundef %i.tm, float noundef %i.tn, float noundef %i.tj, float noundef %i.tp)
  %i.tr = load float, ptr %i.ti, align 4, !tbaa !92
  %i.ts = load ptr, ptr %i.dv, align 8, !tbaa !86 ; 2 uses
  %i.tt = getelementptr inbounds [4 x i8], ptr %i.ts, i64 %i.qm ; 2 uses
  %i.tu = load float, ptr %i.tt, align 4, !tbaa !10
  %i.tv = fneg float %i.tq
  %i.tw = fmul float %i.h, %i.tv
  %i.tx = tail call float @llvm.fmuladd.f32(float %i.tw, float %i.tr, float %i.tu)
  store float %i.tx, ptr %i.tt, align 4, !tbaa !10
  %i.ty = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 2 uses
  %i.tz = load float, ptr %i.ty, align 8, !tbaa !93
  %i.ua = load float, ptr %1, align 8, !tbaa !85
  %i.ub = load ptr, ptr %i.ss, align 8, !tbaa !90 ; 2 uses
  %i.uc = getelementptr inbounds [4 x i8], ptr %i.ub, i64 %i.qm ; 2 uses
  %i.ud = load float, ptr %i.uc, align 4, !tbaa !10
  %i.ue = fdiv float %i.tz, %i.ua
  %i.uf = fsub float %i.ud, %i.ue
  store float %i.uf, ptr %i.uc, align 4, !tbaa !10
  %i.ug = load float, ptr %i.ty, align 8, !tbaa !93
  %i.uh = load float, ptr %1, align 8, !tbaa !85
  %i.ui = fdiv float %i.ug, %i.uh
  %i.uj = load ptr, ptr %i.sv, align 8, !tbaa !91 ; 2 uses
  %i.uk = getelementptr inbounds [4 x i8], ptr %i.uj, i64 %i.qm ; 2 uses
  %i.ul = load float, ptr %i.uk, align 4, !tbaa !10
  %i.um = fadd float %i.ui, %i.ul
  store float %i.um, ptr %i.uk, align 4, !tbaa !10
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y
  %i.un = phi ptr [ %i.uj, %bb.ab ], [ %i.sw, %bb.y ] ; 2 uses
  %i.uo = phi ptr [ %i.ub, %bb.ab ], [ %i.st, %bb.y ]
  %i.up = phi ptr [ %i.ts, %bb.ab ], [ %i.dw, %bb.y ] ; 3 uses
  br i1 %i.pz, label %bb.ad, label %bb.at

bb.ad:                                            ; preds = %bb.ac
  %i.uq = load float, ptr %1, align 8, !tbaa !85
  %i.ur = fmul float %i.tb, %i.uq
  %i.us = getelementptr inbounds [4 x i8], ptr %i.up, i64 %i.qm ; 7 uses
  %i.ut = load float, ptr %i.us, align 4, !tbaa !10
  %i.uu = tail call float @llvm.fmuladd.f32(float %i.ur, float %.0419984, float %i.ut)
  store float %i.uu, ptr %i.us, align 4, !tbaa !10
  %i.uv = load i32, ptr %i.dg, align 4, !tbaa !23
  %i.uw = and i32 %i.uv, 256
  %.not440 = icmp eq i32 %i.uw, 0
  br i1 %.not440, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.uy = load float, ptr %i.ux, align 4, !tbaa !54
  %i.uz = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !87
  %i.vb = getelementptr inbounds [4 x i8], ptr %i.va, i64 %i.qm
  store float %i.uy, ptr %i.vb, align 4, !tbaa !10
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.vc = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %i.qm ; 3 uses
  br i1 %i.sq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store float f0xFF7FFFFF, ptr %i.vc, align 4, !tbaa !10
  %i.vd = getelementptr inbounds [4 x i8], ptr %i.un, i64 %i.qm
  store float f0x7F7FFFFF, ptr %i.vd, align 4, !tbaa !10
  br label %bb.ak

bb.ah:                                            ; preds = %bb.af
  %i.ve = getelementptr inbounds [4 x i8], ptr %i.un, i64 %i.qm ; 2 uses
  br i1 %.0421983, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store float f0xFF7FFFFF, ptr %i.vc, align 4, !tbaa !10
  store float 0.000000e+00, ptr %i.ve, align 4, !tbaa !10
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  store float 0.000000e+00, ptr %i.vc, align 4, !tbaa !10
  store float f0x7F7FFFFF, ptr %i.ve, align 4, !tbaa !10
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj, %bb.ag
  %i.vf = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.vg = load float, ptr %i.vf, align 8, !tbaa !94
  %i.vh = fsub float 1.000000e+00, %i.vg          ; 2 uses
  %i.vi = tail call noundef float @llvm.fabs.f32(float %i.vh) ; 2 uses
  %i.vj = fcmp ueq float %i.vh, 0.000000e+00
  br i1 %i.vj, label %._crit_edge, label %bb.al

._crit_edge:                                      ; preds = %bb.ak
  %.pre = load float, ptr %i.us, align 4, !tbaa !10
  br label %bb.as

bb.al:                                            ; preds = %bb.ak
  %i.vk = load float, ptr %4, align 4, !tbaa !10
  %i.vl = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.vm = load float, ptr %i.vl, align 4, !tbaa !10
  %i.vn = fmul float %.sroa.0822.4.vec.extract886, %i.vm
  %i.vo = tail call float @llvm.fmuladd.f32(float %i.vk, float %.sroa.0822.0.vec.extract845, float %i.vn)
  %i.vp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.vq = load float, ptr %i.vp, align 4, !tbaa !10
  %i.vr = tail call noundef float @llvm.fmuladd.f32(float %i.vq, float %.sroa.49.8.vec.extract929, float %i.vo)
  %i.vs = load float, ptr %5, align 4, !tbaa !10
  %i.vt = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.vu = load float, ptr %i.vt, align 4, !tbaa !10
  %i.vv = fmul float %.sroa.0822.4.vec.extract886, %i.vu
  %i.vw = tail call float @llvm.fmuladd.f32(float %i.vs, float %.sroa.0822.0.vec.extract845, float %i.vv)
  %i.vx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.vy = load float, ptr %i.vx, align 4, !tbaa !10
  %i.vz = tail call noundef float @llvm.fmuladd.f32(float %i.vy, float %.sroa.49.8.vec.extract929, float %i.vw)
  %i.wa = fsub float %i.vr, %i.vz
  %i.wb = fmul float %i.h, %i.wa                  ; 4 uses
  %.pre1188 = load float, ptr %i.us, align 4, !tbaa !10 ; 6 uses
  br i1 %.0421983, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.wc = fcmp olt float %i.wb, 0.000000e+00
  br i1 %i.wc, label %bb.an, label %bb.as

bb.an:                                            ; preds = %bb.am
  %i.wd = fneg float %i.vi
  %i.we = fmul nnan float %i.wb, %i.wd            ; 3 uses
  %i.wf = fcmp ogt float %i.we, %.pre1188
  br i1 %i.wf, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %bb.an
  store float %i.we, ptr %i.us, align 4, !tbaa !10
  br label %bb.as

bb.ap:                                            ; preds = %bb.al
  %i.wg = fcmp ogt float %i.wb, 0.000000e+00
  br i1 %i.wg, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.wh = fneg float %i.vi
  %i.wi = fmul nnan float %i.wb, %i.wh            ; 3 uses
  %i.wj = fcmp olt float %i.wi, %.pre1188
  br i1 %i.wj, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store float %i.wi, ptr %i.us, align 4, !tbaa !10
  br label %bb.as

bb.as:                                            ; preds = %._crit_edge, %bb.am, %bb.ap, %bb.ao, %bb.an, %bb.ar, %bb.aq
  %i.wk = phi float [ %.pre, %._crit_edge ], [ %.pre1188, %bb.am ], [ %.pre1188, %bb.ap ], [ %i.we, %bb.ao ], [ %.pre1188, %bb.an ], [ %i.wi, %bb.ar ], [ %.pre1188, %bb.aq ]
  %i.wl = load float, ptr %i.sz, align 8, !tbaa !55
  %i.wm = fmul float %i.wl, %i.wk
  store float %i.wm, ptr %i.us, align 4, !tbaa !10
  br label %bb.at

bb.at:                                            ; preds = %bb.ac, %bb.as, %bb.t
  %i.wn = phi ptr [ %i.dw, %bb.t ], [ %i.up, %bb.as ], [ %i.up, %bb.ac ]
  %.0418 = phi i32 [ 4, %bb.t ], [ 5, %bb.as ], [ 5, %bb.ac ]
  %i.wo = getelementptr inbounds nuw i8, ptr %0, i64 321
  %i.wp = load i8, ptr %i.wo, align 1, !tbaa !40, !range !30, !noundef !26
  %i.wq = trunc nuw i8 %i.wp to i1                ; 3 uses
  br i1 %i.wq, label %.thread985, label %bb.au

.thread985:                                       ; preds = %bb.at
  %i.wr = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.ws = load float, ptr %i.wr, align 8, !tbaa !39 ; 2 uses
  %i.wt = fcmp ogt float %i.ws, 0.000000e+00
  %i.wu = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.wv = load i8, ptr %i.wu, align 8, !tbaa !48, !range !30, !noundef !26
  %i.ww = trunc nuw i8 %i.wv to i1
  br label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.wx = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.wy = load i8, ptr %i.wx, align 8, !tbaa !48, !range !30, !noundef !26
  %i.wz = trunc nuw i8 %i.wy to i1
  br i1 %i.wz, label %bb.av, label %bb.bn

bb.av:                                            ; preds = %.thread985, %bb.au
  %i.xa = phi i1 [ %i.ww, %.thread985 ], [ true, %bb.au ]
  %.1420990 = phi float [ %i.ws, %.thread985 ], [ 0.000000e+00, %bb.au ]
  %.1422989 = phi i1 [ %i.wt, %.thread985 ], [ false, %bb.au ] ; 3 uses
  %i.xb = load i32, ptr %i.c, align 8, !tbaa !81
  %i.xc = mul nsw i32 %i.xb, %.0418               ; 3 uses
  %.sroa.0822.0.vec.extract859 = extractelement <2 x float> %.sroa.0822.0, i64 0 ; 3 uses
  %i.xd = load ptr, ptr %i.cg, align 8, !tbaa !82 ; 3 uses
  %i.xe = sext i32 %i.xc to i64                   ; 10 uses
  %i.xf = getelementptr inbounds [4 x i8], ptr %i.xd, i64 %i.xe
  store float %.sroa.0822.0.vec.extract859, ptr %i.xf, align 4, !tbaa !10
  %.sroa.0822.4.vec.extract900 = extractelement <2 x float> %.sroa.0822.0, i64 1 ; 3 uses
  %8 = sext i32 %i.xc to i64
  %9 = getelementptr [4 x i8], ptr %i.xd, i64 %8
  %10 = getelementptr i8, ptr %9, i64 4
  store float %.sroa.0822.4.vec.extract900, ptr %10, align 4, !tbaa !10
  %.sroa.49.8.vec.extract943 = extractelement <2 x float> %.sroa.49.0, i64 0 ; 4 uses
  %i.xg = add nsw i32 %i.xc, 2
  %i.xh = sext i32 %i.xg to i64                   ; 2 uses
  %i.xi = getelementptr inbounds [4 x i8], ptr %i.xd, i64 %i.xh
  store float %.sroa.49.8.vec.extract943, ptr %i.xi, align 4, !tbaa !10
  %i.xj = load ptr, ptr %i.cs, align 8, !tbaa !83 ; 2 uses
  %i.xk = getelementptr inbounds [4 x i8], ptr %i.xj, i64 %i.xe
  %i.xl = fneg <2 x float> %.sroa.0822.0
  store <2 x float> %i.xl, ptr %i.xk, align 4, !tbaa !10
  %i.xm = fneg float %.sroa.49.8.vec.extract943
  %i.xn = getelementptr inbounds [4 x i8], ptr %i.xj, i64 %i.xh
  store float %i.xm, ptr %i.xn, align 4, !tbaa !10
  %i.xo = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.xp = load float, ptr %i.xo, align 8, !tbaa !41 ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.xr = load float, ptr %i.xq, align 4, !tbaa !42 ; 2 uses
  %i.xs = fcmp oeq float %i.xp, %i.xr             ; 2 uses
  %or.cond446 = and i1 %i.xs, %i.wq
  %not.or.cond446 = xor i1 %or.cond446, true
  %spec.select447 = select i1 %not.or.cond446, i1 %i.xa, i1 false
  %i.xt = load i32, ptr %i.dg, align 4, !tbaa !23 ; 2 uses
  %i.xu = and i32 %i.xt, 2048
  %.not441 = icmp eq i32 %i.xu, 0
  %i.xv = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.in442 = select i1 %.not441, ptr %i.xw, ptr %i.xv
  %i.xx = load float, ptr %.in442, align 4, !tbaa !10 ; 2 uses
  br i1 %spec.select447, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.xy = and i32 %i.xt, 4
  %.not443 = icmp eq i32 %i.xy, 0
  br i1 %.not443, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.xz = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.ya = load float, ptr %i.xz, align 4, !tbaa !56
  %i.yb = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !87
  %i.yd = getelementptr inbounds [4 x i8], ptr %i.yc, i64 %i.xe
  store float %i.ya, ptr %i.yd, align 4, !tbaa !10
  %.pre1190 = load float, ptr %i.xo, align 8, !tbaa !41
  %.pre1191 = load float, ptr %i.xq, align 4, !tbaa !42
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.ye = phi float [ %.pre1191, %bb.ax ], [ %i.xr, %bb.aw ]
  %i.yf = phi float [ %.pre1190, %bb.ax ], [ %i.xp, %bb.aw ]
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 1108
  %i.yh = load float, ptr %i.yg, align 4, !tbaa !43
  %i.yi = getelementptr inbounds nuw i8, ptr %0, i64 1140 ; 2 uses
  %i.yj = load float, ptr %i.yi, align 4, !tbaa !95
  %i.yk = load float, ptr %1, align 8, !tbaa !85
  %i.yl = fmul float %i.xx, %i.yk
  %i.ym = tail call noundef float @_ZN17btTypedConstraint14getMotorFactorEfffff(ptr noundef nonnull align 8 dereferenceable(72) %0, float noundef %i.yh, float noundef %i.yf, float noundef %i.ye, float noundef %i.yj, float noundef %i.yl)
  %i.yn = load float, ptr %i.yi, align 4, !tbaa !95
  %i.yo = fmul float %i.ym, %i.yn
  %i.yp = load ptr, ptr %i.dv, align 8, !tbaa !86 ; 2 uses
  %i.yq = getelementptr inbounds [4 x i8], ptr %i.yp, i64 %i.xe
  store float %i.yo, ptr %i.yq, align 4, !tbaa !10
  %i.yr = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 2 uses
  %i.ys = load float, ptr %i.yr, align 8, !tbaa !96
  %i.yt = fneg float %i.ys
  %i.yu = load float, ptr %1, align 8, !tbaa !85
  %i.yv = fdiv float %i.yt, %i.yu
  %i.yw = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !90
  %i.yy = getelementptr inbounds [4 x i8], ptr %i.yx, i64 %i.xe
  store float %i.yv, ptr %i.yy, align 4, !tbaa !10
  %i.yz = load float, ptr %i.yr, align 8, !tbaa !96
  %i.za = load float, ptr %1, align 8, !tbaa !85
  %i.zb = fdiv float %i.yz, %i.za
  %i.zc = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !91
  %i.ze = getelementptr inbounds [4 x i8], ptr %i.zd, i64 %i.xe
  store float %i.zb, ptr %i.ze, align 4, !tbaa !10
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.av
  %i.zf = phi ptr [ %i.yp, %bb.ay ], [ %i.wn, %bb.av ]
  br i1 %i.wq, label %bb.ba, label %bb.bn

bb.ba:                                            ; preds = %bb.az
  %i.zg = load float, ptr %1, align 8, !tbaa !85
  %i.zh = fmul float %i.xx, %i.zg
  %i.zi = getelementptr inbounds [4 x i8], ptr %i.zf, i64 %i.xe ; 7 uses
  %i.zj = load float, ptr %i.zi, align 4, !tbaa !10
  %i.zk = tail call float @llvm.fmuladd.f32(float %i.zh, float %.1420990, float %i.zj)
  store float %i.zk, ptr %i.zi, align 4, !tbaa !10
  %i.zl = load i32, ptr %i.dg, align 4, !tbaa !23
  %i.zm = and i32 %i.zl, 1024
  %.not444 = icmp eq i32 %i.zm, 0
  br i1 %.not444, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.zn = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.zo = load float, ptr %i.zn, align 4, !tbaa !57
  %i.zp = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !87
  %i.zr = getelementptr inbounds [4 x i8], ptr %i.zq, i64 %i.xe
  store float %i.zo, ptr %i.zr, align 4, !tbaa !10
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.zs = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !90
  %i.zu = getelementptr inbounds [4 x i8], ptr %i.zt, i64 %i.xe
  br i1 %i.xs, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %. = select i1 %.1422989, float 0.000000e+00, float f0xFF7FFFFF
  %.1209 = select i1 %.1422989, float f0x7F7FFFFF, float 0.000000e+00
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.sink1208 = phi float [ %., %bb.bd ], [ f0xFF7FFFFF, %bb.bc ]
  %.sink1205 = phi float [ %.1209, %bb.bd ], [ f0x7F7FFFFF, %bb.bc ]
  store float %.sink1208, ptr %i.zu, align 4, !tbaa !10
  %.sink1207.in = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sink1207 = load ptr, ptr %.sink1207.in, align 8, !tbaa !91
  %i.zv = getelementptr inbounds [4 x i8], ptr %.sink1207, i64 %i.xe
  store float %.sink1205, ptr %i.zv, align 4, !tbaa !10
  %i.zw = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.zx = load float, ptr %i.zw, align 8, !tbaa !97
  %i.zy = fsub float 1.000000e+00, %i.zx          ; 2 uses
  %i.zz = tail call noundef float @llvm.fabs.f32(float %i.zy) ; 2 uses
  %i.aaa = fcmp ueq float %i.zy, 0.000000e+00
  br i1 %i.aaa, label %._crit_edge1192, label %bb.bf

._crit_edge1192:                                  ; preds = %bb.be
  %.pre1193 = load float, ptr %i.zi, align 4, !tbaa !10
  br label %bb.bm

bb.bf:                                            ; preds = %bb.be
  %i.aab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !25, !nonnull !26, !align !27 ; 3 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 436
  %i.aae = load float, ptr %i.aad, align 4, !tbaa !10
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aac, i64 440
  %i.aag = load float, ptr %i.aaf, align 8, !tbaa !10
  %i.aah = fmul float %.sroa.0822.4.vec.extract900, %i.aag
  %i.aai = tail call float @llvm.fmuladd.f32(float %i.aae, float %.sroa.0822.0.vec.extract859, float %i.aah)
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aac, i64 444
  %i.aak = load float, ptr %i.aaj, align 4, !tbaa !10
  %i.aal = tail call noundef float @llvm.fmuladd.f32(float %i.aak, float %.sroa.49.8.vec.extract943, float %i.aai)
  %i.aam = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aan = load ptr, ptr %i.aam, align 8, !tbaa !28, !nonnull !26, !align !27 ; 3 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 436
  %i.aap = load float, ptr %i.aao, align 4, !tbaa !10
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aan, i64 440
  %i.aar = load float, ptr %i.aaq, align 8, !tbaa !10
  %i.aas = fmul float %.sroa.0822.4.vec.extract900, %i.aar
  %i.aat = tail call float @llvm.fmuladd.f32(float %i.aap, float %.sroa.0822.0.vec.extract859, float %i.aas)
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aan, i64 444
  %i.aav = load float, ptr %i.aau, align 4, !tbaa !10
  %i.aaw = tail call noundef float @llvm.fmuladd.f32(float %i.aav, float %.sroa.49.8.vec.extract943, float %i.aat)
  %i.aax = fsub float %i.aal, %i.aaw              ; 4 uses
  %.pre1194 = load float, ptr %i.zi, align 4, !tbaa !10 ; 6 uses
  br i1 %.1422989, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  %i.aay = fcmp olt float %i.aax, 0.000000e+00
  br i1 %i.aay, label %bb.bh, label %bb.bm

bb.bh:                                            ; preds = %bb.bg
  %i.aaz = fneg float %i.zz
  %i.aba = fmul nnan float %i.aax, %i.aaz         ; 3 uses
  %i.abb = fcmp ogt float %i.aba, %.pre1194
  br i1 %i.abb, label %bb.bi, label %bb.bm

bb.bi:                                            ; preds = %bb.bh
  store float %i.aba, ptr %i.zi, align 4, !tbaa !10
  br label %bb.bm

bb.bj:                                            ; preds = %bb.bf
  %i.abc = fcmp ogt float %i.aax, 0.000000e+00
  br i1 %i.abc, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %i.abd = fneg float %i.zz
  %i.abe = fmul nnan float %i.aax, %i.abd         ; 3 uses
  %i.abf = fcmp olt float %i.abe, %.pre1194
  br i1 %i.abf, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  store float %i.abe, ptr %i.zi, align 4, !tbaa !10
  br label %bb.bm

bb.bm:                                            ; preds = %._crit_edge1192, %bb.bg, %bb.bj, %bb.bi, %bb.bh, %bb.bl, %bb.bk
  %i.abg = phi float [ %.pre1193, %._crit_edge1192 ], [ %.pre1194, %bb.bg ], [ %.pre1194, %bb.bj ], [ %i.aba, %bb.bi ], [ %.pre1194, %bb.bh ], [ %i.abe, %bb.bl ], [ %.pre1194, %bb.bk ]
  %i.abh = load float, ptr %i.xv, align 8, !tbaa !58
  %i.abi = fmul float %i.abh, %i.abg
  store float %i.abi, ptr %i.zi, align 4, !tbaa !10
  br label %bb.bn

bb.bn:                                            ; preds = %bb.az, %bb.bm, %bb.au
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
end_hunk_1
