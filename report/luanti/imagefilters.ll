Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/imagefilters?download=true
inline.NumInlined: 370
inline.NumDeleted: 168
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_Z17imageAverageColorPKN5video6IImageE:bb.a
  %i.bb = insertelement <2 x float> %i.ba, float %.0.i.i.i, i64 1
  %i.bc = fmul nsz <2 x float> %i.bb, splat (float 2.550000e+02) ; 2 uses
  %i.bd = fmul nsz float %.0.i2.i.i, 2.550000e+02 ; 2 uses
  %i.be = fcmp nsz olt float %i.bd, 0.000000e+00
  %i.bf = select i1 %i.be, float 0.000000e+00, float %i.bd ; 2 uses
  %i.bg = fcmp nsz olt float %i.bf, 2.550000e+02
  %i.bh = select i1 %i.bg, float %i.bf, float 2.550000e+02
  %i.bi = fadd nsz float %i.bh, 5.000000e-01
  %i.bj = fptosi float %i.bi to i32
  %i.bk = shl i32 %i.bj, 8
  %i.bl = and i32 %i.bk, 65280
  %i.bm = fcmp nsz olt <2 x float> %i.bc, zeroinitializer
  %i.bn = select <2 x i1> %i.bm, <2 x float> zeroinitializer, <2 x float> %i.bc ; 2 uses
  %i.bo = fcmp nsz olt <2 x float> %i.bn, splat (float 2.550000e+02)
  %i.bp = select <2 x i1> %i.bo, <2 x float> %i.bn, <2 x float> splat (float 2.550000e+02)
  %i.bq = fadd nsz <2 x float> %i.bp, splat (float 5.000000e-01)
  %i.br = fptosi <2 x float> %i.bq to <2 x i32>   ; 2 uses
  %i.bs = extractelement <2 x i32> %i.br, i64 1
  %i.bt = shl i32 %i.bs, 16
  %.masked.i = or disjoint i32 %i.bl, %i.bt
  %i.bu = extractelement <2 x i32> %i.br, i64 0
  %i.bv = and i32 %i.bu, 255
  %i.bw = or disjoint i32 %i.bv, %.masked.i
  %i.bx = or i32 %i.bw, -16777216
  br label %_ZL23imageAverageColorInlineILb1EEN5video6SColorEPKNS0_6IImageE.exit

bb.m:                                             ; preds = %bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.017.0.copyload.i3 = load i32, ptr %i.by, align 4, !tbaa !16 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !16 ; 3 uses
  %i.bz = lshr i32 %.sroa.017.0.copyload.i3, 4
  %.sroa.speculated31.i = tail call i32 @llvm.umax.i32(i32 %i.bz, i32 1)
  %i.ca = lshr i32 %.sroa.5.0.copyload.i, 4
  %.sroa.speculated.i4 = tail call i32 @llvm.umax.i32(i32 %i.ca, i32 1)
  %.not73.i = icmp eq i32 %.sroa.5.0.copyload.i, 0
  %.not74.i = icmp eq i32 %.sroa.017.0.copyload.i3, 0
  %or.cond.i5 = select i1 %.not73.i, i1 true, i1 %.not74.i
  br i1 %or.cond.i5, label %_ZL23imageAverageColorInlineILb1EEN5video6SColorEPKNS0_6IImageE.exit, label %.preheader.us.i6

.preheader.us.i6:                                 ; preds = %bb.m, %._crit_edge.us.i9
  %.066.us.i = phi i32 [ %.2.us.i8, %._crit_edge.us.i9 ], [ 0, %bb.m ]
  %.02265.us.i = phi i32 [ %i.da, %._crit_edge.us.i9 ], [ 0, %bb.m ] ; 2 uses
  %.sroa.13.064.us.i = phi float [ %.sroa.13.2.us.i7, %._crit_edge.us.i9 ], [ 0.000000e+00, %bb.m ]
  %.sroa.036.063.us.i = phi <2 x float> [ %.sroa.036.2.us.i, %._crit_edge.us.i9 ], [ zeroinitializer, %bb.m ]
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.preheader.us.i6
  %.160.us.i = phi i32 [ %.066.us.i, %.preheader.us.i6 ], [ %.2.us.i8, %bb.p ] ; 2 uses
  %.02359.us.i = phi i32 [ 0, %.preheader.us.i6 ], [ %i.cy, %bb.p ] ; 2 uses
  %.sroa.13.158.us.i = phi float [ %.sroa.13.064.us.i, %.preheader.us.i6 ], [ %.sroa.13.2.us.i7, %bb.p ] ; 2 uses
  %.sroa.036.157.us.i = phi <2 x float> [ %.sroa.036.063.us.i, %.preheader.us.i6 ], [ %.sroa.036.2.us.i, %bb.p ] ; 2 uses
  %i.cb = load ptr, ptr %0, align 8, !tbaa !27
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = tail call i32 %i.cd(ptr noundef nonnull align 8 dereferenceable(41) %0, i32 noundef %.02359.us.i, i32 noundef %.02265.us.i), !inline_history !55 ; 4 uses
  %.not24.us.i = icmp ult i32 %i.ce, 16777216
  br i1 %.not24.us.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cf = add i32 %.160.us.i, 1
  %i.cg = lshr i32 %i.ce, 16
  %i.ch = and i32 %i.cg, 255
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_118srgb_to_linear_lutE, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !29
  %i.cl = lshr i32 %i.ce, 8
  %i.cm = and i32 %i.cl, 255
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_118srgb_to_linear_lutE, i64 %i.cn
  %i.cp = load float, ptr %i.co, align 4, !tbaa !29
  %i.cq = and i32 %i.ce, 255
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_118srgb_to_linear_lutE, i64 %i.cr
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !29
  %i.cu = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.cv = insertelement <2 x float> %i.cu, float %i.cp, i64 1
  %i.cw = fadd nsz <2 x float> %.sroa.036.157.us.i, %i.cv
  %i.cx = fadd nsz float %.sroa.13.158.us.i, %i.ct
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.036.2.us.i = phi nsz <2 x float> [ %.sroa.036.157.us.i, %bb.n ], [ %i.cw, %bb.o ] ; 4 uses
  %.sroa.13.2.us.i7 = phi nsz float [ %.sroa.13.158.us.i, %bb.n ], [ %i.cx, %bb.o ] ; 3 uses
  %.2.us.i8 = phi i32 [ %.160.us.i, %bb.n ], [ %i.cf, %bb.o ] ; 4 uses
  %i.cy = add i32 %.02359.us.i, %.sroa.speculated31.i ; 2 uses
  %i.cz = icmp ult i32 %i.cy, %.sroa.017.0.copyload.i3
  br i1 %i.cz, label %bb.n, label %._crit_edge.us.i9, !llvm.loop !56

._crit_edge.us.i9:                                ; preds = %bb.p
  %i.da = add i32 %.02265.us.i, %.sroa.speculated.i4 ; 2 uses
  %i.db = icmp ult i32 %i.da, %.sroa.5.0.copyload.i
  br i1 %i.db, label %.preheader.us.i6, label %._crit_edge67.i, !llvm.loop !57

._crit_edge67.i:                                  ; preds = %._crit_edge.us.i9
  %.not.i10 = icmp eq i32 %.2.us.i8, 0
  br i1 %.not.i10, label %_ZL23imageAverageColorInlineILb1EEN5video6SColorEPKNS0_6IImageE.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge67.i
  %i.dc = uitofp nsz i32 %.2.us.i8 to float       ; 3 uses
  %.sroa.036.0.vec.extract42.i = extractelement <2 x float> %.sroa.036.2.us.i, i64 0
  %i.dd = fdiv nsz float %.sroa.036.0.vec.extract42.i, %i.dc ; 3 uses
  %.sroa.036.4.vec.extract49.i = extractelement <2 x float> %.sroa.036.2.us.i, i64 1
  %i.de = fdiv nsz float %.sroa.036.4.vec.extract49.i, %i.dc ; 3 uses
  %i.df = fdiv nsz float %.sroa.13.2.us.i7, %i.dc ; 3 uses
  %i.dg = fcmp nsz ogt float %i.dd, 3.130800e-03
  br i1 %i.dg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dh = tail call nsz float @llvm.pow.f32(float %i.dd, float f0x3ED55555)
  %i.di = tail call nnan nsz float @llvm.fmuladd.f32(float %i.dh, float 1.055000e+00, float -5.500000e-02)
  br label %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit.i.i11

bb.s:                                             ; preds = %bb.q
  %i.dj = fmul nsz float %i.dd, 1.292000e+01
  br label %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit.i.i11

_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit.i.i11: ; preds = %bb.s, %bb.r
  %.0.i.i.i12 = phi nsz float [ %i.di, %bb.r ], [ %i.dj, %bb.s ]
  %i.dk = fcmp nsz ogt float %i.de, 3.130800e-03
  br i1 %i.dk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit.i.i11
  %i.dl = tail call nsz float @llvm.pow.f32(float %i.de, float f0x3ED55555)
  %i.dm = tail call nnan nsz float @llvm.fmuladd.f32(float %i.dl, float 1.055000e+00, float -5.500000e-02)
  br label %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit3.i.i13

bb.u:                                             ; preds = %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit.i.i11
  %i.dn = fmul nsz float %i.de, 1.292000e+01
  br label %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit3.i.i13

_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit3.i.i13: ; preds = %bb.u, %bb.t
  %.0.i2.i.i14 = phi nsz float [ %i.dm, %bb.t ], [ %i.dn, %bb.u ]
  %i.do = fcmp nsz ogt float %i.df, 3.130800e-03
  br i1 %i.do, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit3.i.i13
  %i.dp = tail call nsz float @llvm.pow.f32(float %i.df, float f0x3ED55555)
  %i.dq = tail call nnan nsz float @llvm.fmuladd.f32(float %i.dp, float 1.055000e+00, float -5.500000e-02)
  br label %_ZN12_GLOBAL__N_114linear_to_srgbEN4core8vector3dIfEE.exit.i15

bb.w:                                             ; preds = %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit3.i.i13
  %i.dr = fmul nsz float %i.df, 1.292000e+01
  br label %_ZN12_GLOBAL__N_114linear_to_srgbEN4core8vector3dIfEE.exit.i15

_ZN12_GLOBAL__N_114linear_to_srgbEN4core8vector3dIfEE.exit.i15: ; preds = %bb.w, %bb.v
  %.0.i4.i.i16 = phi nsz float [ %i.dq, %bb.v ], [ %i.dr, %bb.w ]
  %i.ds = insertelement <2 x float> poison, float %.0.i4.i.i16, i64 0
  %i.dt = insertelement <2 x float> %i.ds, float %.0.i.i.i12, i64 1
  %i.du = fmul nsz <2 x float> %i.dt, splat (float 2.550000e+02) ; 2 uses
  %i.dv = fmul nsz float %.0.i2.i.i14, 2.550000e+02 ; 2 uses
  %i.dw = fcmp nsz olt float %i.dv, 0.000000e+00
  %i.dx = select i1 %i.dw, float 0.000000e+00, float %i.dv ; 2 uses
  %i.dy = fcmp nsz olt float %i.dx, 2.550000e+02
  %i.dz = select i1 %i.dy, float %i.dx, float 2.550000e+02
  %i.ea = fadd nsz float %i.dz, 5.000000e-01
  %i.eb = fptosi float %i.ea to i32
  %i.ec = shl i32 %i.eb, 8
  %i.ed = and i32 %i.ec, 65280
  %i.ee = fcmp nsz olt <2 x float> %i.du, zeroinitializer
  %i.ef = select <2 x i1> %i.ee, <2 x float> zeroinitializer, <2 x float> %i.du ; 2 uses
  %i.eg = fcmp nsz olt <2 x float> %i.ef, splat (float 2.550000e+02)
  %i.eh = select <2 x i1> %i.eg, <2 x float> %i.ef, <2 x float> splat (float 2.550000e+02)
  %i.ei = fadd nsz <2 x float> %i.eh, splat (float 5.000000e-01)
  %i.ej = fptosi <2 x float> %i.ei to <2 x i32>   ; 2 uses
  %i.ek = extractelement <2 x i32> %i.ej, i64 1
  %i.el = shl i32 %i.ek, 16
  %.masked.i17 = or disjoint i32 %i.ed, %i.el
  %i.em = extractelement <2 x i32> %i.ej, i64 0
  %i.en = and i32 %i.em, 255
  %i.eo = or disjoint i32 %i.en, %.masked.i17
  %i.ep = or i32 %i.eo, -16777216
  br label %_ZL23imageAverageColorInlineILb1EEN5video6SColorEPKNS0_6IImageE.exit

_ZL23imageAverageColorInlineILb1EEN5video6SColorEPKNS0_6IImageE.exit: ; preds = %_ZN12_GLOBAL__N_114linear_to_srgbEN4core8vector3dIfEE.exit.i15, %._crit_edge67.i, %bb.m, %_ZN12_GLOBAL__N_114linear_to_srgbEN4core8vector3dIfEE.exit.i, %._crit_edge71.i, %bb.b
  %.sroa.0.0 = phi i32 [ -16777216, %bb.b ], [ -16777216, %._crit_edge71.i ], [ %i.bx, %_ZN12_GLOBAL__N_114linear_to_srgbEN4core8vector3dIfEE.exit.i ], [ -16777216, %._crit_edge67.i ], [ %i.ep, %_ZN12_GLOBAL__N_114linear_to_srgbEN4core8vector3dIfEE.exit.i15 ], [ -16777216, %bb.m ]
  ret i32 %.sroa.0.0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z14imageScaleNNAAPN5video6IImageERKN4core4rectIiEES1_(ptr noundef %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.video::SColor", align 4     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !tbaa !63
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.b = load <2 x i32>, ptr %1, align 4, !tbaa !16 ; 3 uses
  %i.c = extractelement <2 x i32> %i.b, i64 0
  %i.d = sitofp nsz i32 %i.c to float             ; 2 uses
  %i.e = extractelement <2 x i32> %i.b, i64 1
  %i.f = sitofp nsz i32 %i.e to float             ; 2 uses
  %i.g = load <2 x i32>, ptr %i.a, align 4, !tbaa !16 ; 3 uses
  %i.h = extractelement <2 x i32> %i.g, i64 1     ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %._crit_edge159.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load <2 x i32>, ptr %i.i, align 4, !tbaa !16
  %i.k = sub nsw <2 x i32> %i.j, %i.b
  %i.l = sitofp <2 x i32> %i.k to <2 x float>     ; 3 uses
  %i.m = extractelement <2 x i32> %i.g, i64 0     ; 2 uses
  %.not160 = icmp eq i32 %i.m, 0
  %i.n = uitofp <2 x i32> %i.g to <2 x float>     ; 3 uses
  %i.o = extractelement <2 x float> %i.l, i64 0   ; 2 uses
  %i.p = fadd nsz float %i.o, %i.d                ; 4 uses
  %i.q = extractelement <2 x float> %i.l, i64 1   ; 2 uses
  %i.r = fadd nsz float %i.q, %i.f                ; 4 uses
  %i.s = fdiv nsz <2 x float> %i.l, %i.n          ; 2 uses
  br i1 %.not160, label %._crit_edge159.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.t = extractelement <2 x float> %i.n, i64 1
  %i.u = extractelement <2 x float> %i.s, i64 1
  %i.v = extractelement <2 x float> %i.s, i64 0
  %i.w = extractelement <2 x float> %i.n, i64 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.073158 = phi i32 [ %i.cq, %._crit_edge ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.x = uitofp nsz i32 %.073158 to float
  %i.y = fmul nnan nsz float %i.q, %i.x
  %i.z = fdiv nsz float %i.y, %i.t
  %i.aa = fadd nsz float %i.z, %i.f               ; 3 uses
  %i.ab = fcmp nsz olt float %i.aa, 0.000000e+00
  %i.ac = fcmp nsz ogt float %i.aa, %i.r
  %..i95 = select nsz i1 %i.ac, float %i.r, float %i.aa
  %.0.i96 = select nsz i1 %i.ab, float 0.000000e+00, float %..i95 ; 4 uses
  %i.ad = fadd nsz float %i.u, %.0.i96            ; 3 uses
  %i.ae = fcmp nsz olt float %i.ad, 0.000000e+00
  %i.af = fcmp nsz ogt float %i.ad, %i.r
  %..i98 = select nsz i1 %i.af, float %i.r, float %i.ad
  %.0.i99 = select nsz i1 %i.ae, float 0.000000e+00, float %..i98 ; 3 uses
  %i.ag = fcmp nsz ogt float %.0.i96, %.0.i99     ; 2 uses
  %.0126 = select nsz i1 %i.ag, float %.0.i99, float %.0.i96 ; 3 uses
  %.0125 = select nsz i1 %i.ag, float %.0.i96, float %.0.i99 ; 4 uses
  %i.ah = call nsz noundef float @llvm.floor.f32(float %.0126) ; 2 uses
  %i.ai = fcmp nsz olt float %i.ah, %.0125
  br label %_Z8rangelimIfifET_RKS0_RKT0_RKT1_.exit

_Z8rangelimIfifET_RKS0_RKT0_RKT1_.exit:           ; preds = %.preheader, %._crit_edge147.thread
  %.072157 = phi i32 [ 0, %.preheader ], [ %i.cp, %._crit_edge147.thread ] ; 3 uses
  %i.aj = uitofp nsz i32 %.072157 to float
  %i.ak = fmul nnan nsz float %i.o, %i.aj
  %i.al = fdiv nsz float %i.ak, %i.w
  %i.am = fadd nsz float %i.al, %i.d              ; 3 uses
  %i.an = fcmp nsz olt float %i.am, 0.000000e+00
  %i.ao = fcmp nsz ogt float %i.am, %i.p
  %..i = select nsz i1 %i.ao, float %i.p, float %i.am
  %.0.i = select nsz i1 %i.an, float 0.000000e+00, float %..i ; 4 uses
  %i.ap = fadd nsz float %i.v, %.0.i              ; 3 uses
  %i.aq = fcmp nsz olt float %i.ap, 0.000000e+00
  %i.ar = fcmp nsz ogt float %i.ap, %i.p
  %..i92 = select nsz i1 %i.ar, float %i.p, float %i.ap
  %.0.i93 = select nsz i1 %i.aq, float 0.000000e+00, float %..i92 ; 3 uses
  %i.as = fcmp nsz ogt float %.0.i, %.0.i93       ; 2 uses
  %.0128 = select nsz i1 %i.as, float %.0.i93, float %.0.i ; 3 uses
  %.0127 = select nsz i1 %i.as, float %.0.i, float %.0.i93 ; 4 uses
  br i1 %i.ai, label %.lr.ph146, label %._crit_edge147.thread

.lr.ph146:                                        ; preds = %_Z8rangelimIfifET_RKS0_RKT0_RKT1_.exit
  %i.at = call nsz noundef float @llvm.floor.f32(float %.0128) ; 2 uses
  %i.au = fcmp nsz olt float %i.at, %.0127
  br i1 %i.au, label %.lr.ph.us, label %._crit_edge147.thread

.lr.ph.us:                                        ; preds = %.lr.ph146, %._crit_edge.us
  %.085141.us = phi float [ %i.bu, %._crit_edge.us ], [ 0.000000e+00, %.lr.ph146 ]
  %.087140.us = phi float [ %i.az, %._crit_edge.us ], [ %i.ah, %.lr.ph146 ] ; 5 uses
  %i.av = phi <4 x float> [ %i.ca, %._crit_edge.us ], [ zeroinitializer, %.lr.ph146 ]
  %i.aw = fcmp nsz ogt float %.0126, %.087140.us
  %i.ax = fsub nsz float %.087140.us, %.0126
  %i.ay = fadd nsz float %i.ax, 1.000000e+00
  %.074.us = select nsz i1 %i.aw, float %i.ay, float 1.000000e+00 ; 2 uses
  %i.az = fadd nsz float %.087140.us, 1.000000e+00 ; 3 uses
  %i.ba = fcmp nsz olt float %.0125, %i.az
  %i.bb = fsub nsz float %.0125, %.087140.us
  %i.bc = fadd nsz float %i.bb, -1.000000e+00
  %i.bd = fadd nsz float %i.bc, %.074.us
  %.1.us = select nsz i1 %i.ba, float %i.bd, float %.074.us
  %i.be = fptoui float %.087140.us to i32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.b
  %.0135.us = phi float [ %i.at, %.lr.ph.us ], [ %i.bj, %bb.b ] ; 5 uses
  %.186130.us = phi float [ %.085141.us, %.lr.ph.us ], [ %i.bu, %bb.b ]
  %i.bf = phi <4 x float> [ %i.av, %.lr.ph.us ], [ %i.ca, %bb.b ]
  %i.bg = fcmp nsz ogt float %.0128, %.0135.us
  %i.bh = fsub nsz float %.0135.us, %.0128
  %i.bi = fadd nsz float %i.bh, 1.000000e+00
  %.075.us = select nsz i1 %i.bg, float %i.bi, float 1.000000e+00 ; 2 uses
  %i.bj = fadd nsz float %.0135.us, 1.000000e+00  ; 3 uses
  %i.bk = fcmp nsz olt float %.0127, %i.bj
  %i.bl = fsub nsz float %.0127, %.0135.us
  %i.bm = fadd nsz float %i.bl, -1.000000e+00
  %i.bn = fadd nsz float %i.bm, %.075.us
  %.176.us = select nsz i1 %i.bk, float %i.bn, float %.075.us
  %i.bo = fmul nsz float %.1.us, %.176.us         ; 2 uses
  %i.bp = fptoui float %.0135.us to i32
  %i.bq = load ptr, ptr %0, align 8, !tbaa !27
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = call i32 %i.bs(ptr noundef nonnull align 8 dereferenceable(41) %0, i32 noundef %i.bp, i32 noundef %i.be) ; 2 uses
  store i32 %i.bt, ptr %3, align 4, !tbaa !16
  %i.bu = fadd nsz float %.186130.us, %i.bo       ; 4 uses
  %i.bv = bitcast i32 %i.bt to <4 x i8>
  %i.bw = shufflevector <4 x i8> %i.bv, <4 x i8> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.bx = uitofp <4 x i8> %i.bw to <4 x float>
  %i.by = insertelement <4 x float> poison, float %i.bo, i64 0
  %i.bz = shufflevector <4 x float> %i.by, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ca = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bz, <4 x float> %i.bx, <4 x float> %i.bf) ; 3 uses
  %i.cb = fcmp nsz olt float %i.bj, %.0127
  br i1 %i.cb, label %bb.b, label %._crit_edge.us, !llvm.loop !58

._crit_edge.us:                                   ; preds = %bb.b
  %i.cc = fcmp nsz olt float %i.az, %.0125
  br i1 %i.cc, label %.lr.ph.us, label %._crit_edge147, !llvm.loop !59

._crit_edge147:                                   ; preds = %._crit_edge.us
  %i.cd = fcmp nsz ogt float %i.bu, 0.000000e+00
  br i1 %i.cd, label %bb.c, label %._crit_edge147.thread

bb.c:                                             ; preds = %._crit_edge147
  %i.ce = insertelement <4 x float> poison, float %i.bu, i64 0
  %i.cf = shufflevector <4 x float> %i.ce, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cg = fdiv nsz <4 x float> %i.ca, %i.cf
  %i.ch = fadd nsz <4 x float> %i.cg, splat (float 5.000000e-01)
  %i.ci = fptoui <4 x float> %i.ch to <4 x i32>
  %i.cj = shufflevector <4 x i32> %i.ci, <4 x i32> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.ck = trunc <4 x i32> %i.cj to <4 x i8>
  %i.cl = bitcast <4 x i8> %i.ck to i32
  br label %._crit_edge147.thread

._crit_edge147.thread:                            ; preds = %.lr.ph146, %_Z8rangelimIfifET_RKS0_RKT0_RKT1_.exit, %._crit_edge147, %bb.c
  %storemerge = phi i32 [ %i.cl, %bb.c ], [ 0, %._crit_edge147 ], [ 0, %_Z8rangelimIfifET_RKS0_RKT0_RKT1_.exit ], [ 0, %.lr.ph146 ]
  store i32 %storemerge, ptr %3, align 4, !tbaa !63
  %i.cm = load ptr, ptr %2, align 8, !tbaa !27
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(41) %2, i32 noundef %.072157, i32 noundef %.073158, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext false)
  %i.cp = add nuw i32 %.072157, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.cp, %i.m
  br i1 %exitcond.not, label %._crit_edge, label %_Z8rangelimIfifET_RKS0_RKT0_RKT1_.exit, !llvm.loop !60

._crit_edge:                                      ; preds = %._crit_edge147.thread
  %i.cq = add nuw i32 %.073158, 1                 ; 2 uses
  %exitcond166.not = icmp eq i32 %i.cq, %i.h
  br i1 %exitcond166.not, label %._crit_edge159.split, label %.preheader, !llvm.loop !61

._crit_edge159.split:                             ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 10 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %.not65 = icmp ult i64 %i.g, %2
  br i1 %.not65, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %3, align 1, !tbaa !18      ; 3 uses
  %i.i = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.j = sub i64 %i.f, %i.i                       ; 8 uses
  %i.k = icmp ugt i64 %i.j, %2
  br i1 %i.k, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.l = sub i64 0, %2
  %i.m = getelementptr inbounds i8, ptr %i.d, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = icmp sgt i64 %2, 1
  br i1 %i.o, label %bb.e, label %bb.f, !prof !25

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.d, ptr nonnull align 1 %i.m, i64 %2, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
end_hunk_0
