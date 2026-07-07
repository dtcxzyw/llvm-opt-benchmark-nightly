inline.NumInlined: 221
inline.NumDeleted: 20
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_57RgbaYca9YCAtoRGBAERKN9Imath_3_14Vec3IfEEiPKNS_4RgbaEPS6_:bb.a
  %i.cg = trunc nuw i32 %i.cf to i16
  %i.ch = and i16 %i.cg, -32768                   ; 3 uses
  %i.ci = icmp samesign ugt i32 %i.ce, 947912703
  br i1 %i.ci, label %bb.n, label %bb.t

bb.n:                                             ; preds = %_ZN9Imath_3_14halfaSEf.exit
  %i.cj = icmp samesign ugt i32 %i.ce, 2139095039
  br i1 %i.cj, label %bb.o, label %bb.q, !prof !17

bb.o:                                             ; preds = %bb.n
  %i.ck = or disjoint i16 %i.ch, 31744            ; 2 uses
  %i.cl = icmp eq i32 %i.ce, 2139095040
  br i1 %i.cl, label %_ZN9Imath_3_14halfaSEf.exit38, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = lshr i32 %i.ce, 13
  %i.cn = and i32 %i.cm, 1023                     ; 2 uses
  %i.co = icmp eq i32 %i.cn, 0
  %i.cp = zext i1 %i.co to i16
  %i.cq = trunc nuw nsw i32 %i.cn to i16
  %i.cr = or i16 %i.cq, %i.cp
  %i.cs = or disjoint i16 %i.cr, %i.ck
  br label %_ZN9Imath_3_14halfaSEf.exit38

bb.q:                                             ; preds = %bb.n
  %i.ct = icmp samesign ugt i32 %i.ce, 1199566847
  br i1 %i.ct, label %bb.r, label %bb.s, !prof !17

bb.r:                                             ; preds = %bb.q
  %i.cu = or disjoint i16 %i.ch, 31744
  br label %_ZN9Imath_3_14halfaSEf.exit38

bb.s:                                             ; preds = %bb.q
  %i.cv = add nuw nsw i32 %i.ce, 134221823
  %i.cw = lshr i32 %i.ce, 13
  %i.cx = and i32 %i.cw, 1
  %i.cy = add nuw nsw i32 %i.cv, %i.cx
  %i.cz = lshr i32 %i.cy, 13
  %i.da = and i32 %i.cf, 32768
  %i.db = or i32 %i.cz, %i.da
  %i.dc = trunc i32 %i.db to i16
  br label %_ZN9Imath_3_14halfaSEf.exit38

bb.t:                                             ; preds = %_ZN9Imath_3_14halfaSEf.exit
  %i.dd = icmp samesign ult i32 %i.ce, 855638017
  br i1 %i.dd, label %_ZN9Imath_3_14halfaSEf.exit38, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.de = lshr i32 %i.ce, 23                      ; 2 uses
  %i.df = sub nuw nsw i32 126, %i.de
  %i.dg = and i32 %i.ce, 8388607
  %i.dh = or disjoint i32 %i.dg, 8388608          ; 2 uses
  %i.di = add nsw i32 %i.de, -94
  %i.dj = shl i32 %i.dh, %i.di                    ; 2 uses
  %i.dk = lshr i32 %i.dh, %i.df                   ; 2 uses
  %i.dl = and i32 %i.cf, 32768
  %i.dm = or i32 %i.dk, %i.dl
  %i.dn = trunc nuw i32 %i.dm to i16              ; 2 uses
  %i.do = icmp ugt i32 %i.dj, -2147483648
  br i1 %i.do, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dp = icmp ne i32 %i.dj, -2147483648
  %i.dq = and i32 %i.dk, 1
  %.not.i.i.i35 = icmp eq i32 %i.dq, 0
  %or.cond.i.i.i36 = select i1 %i.dp, i1 true, i1 %.not.i.i.i35
  br i1 %or.cond.i.i.i36, label %_ZN9Imath_3_14halfaSEf.exit38, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dr = add nuw i16 %i.dn, 1
  br label %_ZN9Imath_3_14halfaSEf.exit38

_ZN9Imath_3_14halfaSEf.exit38:                    ; preds = %bb.o, %bb.p, %bb.r, %bb.s, %bb.t, %bb.v, %bb.w
  %.0.i.i.i37 = phi i16 [ %i.ch, %bb.t ], [ %i.cs, %bb.p ], [ %i.cu, %bb.r ], [ %i.dc, %bb.s ], [ %i.ck, %bb.o ], [ %i.dr, %bb.w ], [ %i.dn, %bb.v ]
  store i16 %.0.i.i.i37, ptr %i.cb, align 2, !tbaa !15
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.dt = bitcast float %i.af to i32
  %i.du = tail call float @llvm.fabs.f32(float %i.af)
  %i.dv = bitcast float %i.du to i32              ; 10 uses
  %i.dw = lshr i32 %i.dt, 16                      ; 3 uses
  %i.dx = trunc nuw i32 %i.dw to i16
  %i.dy = and i16 %i.dx, -32768                   ; 3 uses
  %i.dz = icmp samesign ugt i32 %i.dv, 947912703
  br i1 %i.dz, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %_ZN9Imath_3_14halfaSEf.exit38
  %i.ea = icmp samesign ugt i32 %i.dv, 2139095039
  br i1 %i.ea, label %bb.y, label %bb.aa, !prof !17

bb.y:                                             ; preds = %bb.x
  %i.eb = or disjoint i16 %i.dy, 31744            ; 2 uses
  %i.ec = icmp eq i32 %i.dv, 2139095040
  br i1 %i.ec, label %_ZN9Imath_3_14halfaSEf.exit42, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ed = lshr i32 %i.dv, 13
  %i.ee = and i32 %i.ed, 1023                     ; 2 uses
  %i.ef = icmp eq i32 %i.ee, 0
  %i.eg = zext i1 %i.ef to i16
  %i.eh = trunc nuw nsw i32 %i.ee to i16
  %i.ei = or i16 %i.eh, %i.eg
  %i.ej = or disjoint i16 %i.ei, %i.eb
  br label %_ZN9Imath_3_14halfaSEf.exit42

bb.aa:                                            ; preds = %bb.x
  %i.ek = icmp samesign ugt i32 %i.dv, 1199566847
  br i1 %i.ek, label %bb.ab, label %bb.ac, !prof !17

bb.ab:                                            ; preds = %bb.aa
  %i.el = or disjoint i16 %i.dy, 31744
  br label %_ZN9Imath_3_14halfaSEf.exit42

bb.ac:                                            ; preds = %bb.aa
  %i.em = add nuw nsw i32 %i.dv, 134221823
  %i.en = lshr i32 %i.dv, 13
  %i.eo = and i32 %i.en, 1
  %i.ep = add nuw nsw i32 %i.em, %i.eo
  %i.eq = lshr i32 %i.ep, 13
  %i.er = and i32 %i.dw, 32768
  %i.es = or i32 %i.eq, %i.er
  %i.et = trunc i32 %i.es to i16
  br label %_ZN9Imath_3_14halfaSEf.exit42

bb.ad:                                            ; preds = %_ZN9Imath_3_14halfaSEf.exit38
  %i.eu = icmp samesign ult i32 %i.dv, 855638017
  br i1 %i.eu, label %_ZN9Imath_3_14halfaSEf.exit42, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ev = lshr i32 %i.dv, 23                      ; 2 uses
  %i.ew = sub nuw nsw i32 126, %i.ev
  %i.ex = and i32 %i.dv, 8388607
  %i.ey = or disjoint i32 %i.ex, 8388608          ; 2 uses
  %i.ez = add nsw i32 %i.ev, -94
  %i.fa = shl i32 %i.ey, %i.ez                    ; 2 uses
  %i.fb = lshr i32 %i.ey, %i.ew                   ; 2 uses
  %i.fc = and i32 %i.dw, 32768
  %i.fd = or i32 %i.fb, %i.fc
  %i.fe = trunc nuw i32 %i.fd to i16              ; 2 uses
  %i.ff = icmp ugt i32 %i.fa, -2147483648
  br i1 %i.ff, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fg = icmp ne i32 %i.fa, -2147483648
  %i.fh = and i32 %i.fb, 1
  %.not.i.i.i39 = icmp eq i32 %i.fh, 0
  %or.cond.i.i.i40 = select i1 %i.fg, i1 true, i1 %.not.i.i.i39
  br i1 %or.cond.i.i.i40, label %_ZN9Imath_3_14halfaSEf.exit42, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.fi = add nuw i16 %i.fe, 1
  br label %_ZN9Imath_3_14halfaSEf.exit42

_ZN9Imath_3_14halfaSEf.exit42:                    ; preds = %bb.y, %bb.z, %bb.ab, %bb.ac, %bb.ad, %bb.af, %bb.ag
  %.0.i.i.i41 = phi i16 [ %i.dy, %bb.ad ], [ %i.ej, %bb.z ], [ %i.el, %bb.ab ], [ %i.et, %bb.ac ], [ %i.eb, %bb.y ], [ %i.fi, %bb.ag ], [ %i.fe, %bb.af ]
  store i16 %.0.i.i.i41, ptr %i.ds, align 2, !tbaa !15
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN9Imath_3_14halfaSEf.exit42, %bb.c
  %i.fj = getelementptr inbounds nuw i8, ptr %i.h, i64 6
  %i.fk = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  %i.fl = load i16, ptr %i.fj, align 2, !tbaa !15
  store i16 %i.fl, ptr %i.fk, align 2, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_57RgbaYca13fixSaturationERKN9Imath_3_14Vec3IfEEiPKPKNS_4RgbaEPS6_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !29 ; 15 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !20   ; 3 uses
  %i.f = zext i16 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.f
  %i.h = load float, ptr %i.g, align 4, !tbaa !14 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.j = load i16, ptr %i.i, align 2, !tbaa !20   ; 3 uses
  %i.k = zext i16 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.k
  %i.m = load float, ptr %i.l, align 4, !tbaa !14 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.o = load i16, ptr %i.n, align 2, !tbaa !20   ; 3 uses
  %i.p = zext i16 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.p
  %i.r = load float, ptr %i.q, align 4, !tbaa !14 ; 2 uses
  %i.s = fcmp olt float %i.m, %i.r
  %i.t = select i1 %i.s, i16 %i.o, i16 %i.j       ; 2 uses
  %i.u = zext i16 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load float, ptr %i.v, align 4, !tbaa !14
  %i.x = fcmp olt float %i.h, %i.w
  %i.y = select i1 %i.x, i16 %i.t, i16 %i.e
  %i.z = zext i16 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.z
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !14
  %i.ac = fcmp olt float %i.r, %i.m
  %i.ad = select i1 %i.ac, i16 %i.o, i16 %i.j     ; 2 uses
  %i.ae = zext i16 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ae
  %i.ag = load float, ptr %i.af, align 4, !tbaa !14
  %i.ah = fcmp olt float %i.ag, %i.h
  %i.ai = select i1 %i.ah, i16 %i.ad, i16 %i.e
  %i.aj = zext i16 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aj
  %i.al = load float, ptr %i.ak, align 4, !tbaa !14
  %i.am = load ptr, ptr %2, align 8, !tbaa !23    ; 3 uses
  %i.an = load i16, ptr %i.am, align 2, !tbaa !20 ; 3 uses
  %i.ao = zext i16 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ao
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !14 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !20 ; 3 uses
  %i.at = zext i16 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.at
  %i.av = load float, ptr %i.au, align 4, !tbaa !14 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !20 ; 3 uses
  %i.ay = zext i16 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ay
  %i.ba = load float, ptr %i.az, align 4, !tbaa !14 ; 2 uses
  %i.bb = fcmp olt float %i.av, %i.ba
  %i.bc = select i1 %i.bb, i16 %i.ax, i16 %i.as   ; 2 uses
  %i.bd = zext i16 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bd
  %i.bf = load float, ptr %i.be, align 4, !tbaa !14
  %i.bg = fcmp olt float %i.aq, %i.bf
  %i.bh = select i1 %i.bg, i16 %i.bc, i16 %i.an
  %i.bi = zext i16 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bi
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !14
  %i.bl = fcmp olt float %i.ba, %i.av
  %i.bm = select i1 %i.bl, i16 %i.ax, i16 %i.as   ; 2 uses
  %i.bn = zext i16 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bn
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !14
  %i.bq = fcmp olt float %i.bp, %i.aq
  %i.br = select i1 %i.bq, i16 %i.bm, i16 %i.an
  %i.bs = zext i16 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bs
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !14
  %4 = insertelement <2 x float> poison, float %i.ab, i64 0
  %5 = insertelement <2 x float> %4, float %i.bk, i64 1 ; 2 uses
  %6 = fcmp ogt <2 x float> %5, zeroinitializer
  %7 = insertelement <2 x float> poison, float %i.al, i64 0
  %8 = insertelement <2 x float> %7, float %i.bu, i64 1
  %9 = fdiv <2 x float> %8, %5
  %10 = fsub <2 x float> splat (float 1.000000e+00), %9
  %11 = select <2 x i1> %6, <2 x float> %10, <2 x float> zeroinitializer ; 3 uses
  %12 = extractelement <2 x float> %11, i64 1     ; 2 uses
  %13 = extractelement <2 x float> %11, i64 0     ; 2 uses
  %i.bv = add nsw i32 %1, -1
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bz = zext nneg i32 %i.bv to i64
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_57RgbaYca12_GLOBAL__N_110desaturateERKNS_4RgbaEfRKN9Imath_3_14Vec3IfEERS2_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN27OpenImageIO_v3_1_Imf__3_3_57RgbaYca12_GLOBAL__N_110desaturateERKNS_4RgbaEfRKN9Imath_3_14Vec3IfEERS2_.exit
  %.pre = phi ptr [ %i.c, %.lr.ph ], [ %.pre65, %_ZN27OpenImageIO_v3_1_Imf__3_3_57RgbaYca12_GLOBAL__N_110desaturateERKNS_4RgbaEfRKN9Imath_3_14Vec3IfEERS2_.exit ] ; 31 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN27OpenImageIO_v3_1_Imf__3_3_57RgbaYca12_GLOBAL__N_110desaturateERKNS_4RgbaEfRKN9Imath_3_14Vec3IfEERS2_.exit ] ; 5 uses
  %.062 = phi float [ %12, %.lr.ph ], [ %24, %_ZN27OpenImageIO_v3_1_Imf__3_3_57RgbaYca12_GLOBAL__N_110desaturateERKNS_4RgbaEfRKN9Imath_3_14Vec3IfEERS2_.exit ]
  %.03861 = phi float [ %12, %.lr.ph ], [ %.062, %_ZN27OpenImageIO_v3_1_Imf__3_3_57RgbaYca12_GLOBAL__N_110desaturateERKNS_4RgbaEfRKN9Imath_3_14Vec3IfEERS2_.exit ]
  %.03960 = phi float [ %13, %.lr.ph ], [ %25, %_ZN27OpenImageIO_v3_1_Imf__3_3_57RgbaYca12_GLOBAL__N_110desaturateERKNS_4RgbaEfRKN9Imath_3_14Vec3IfEERS2_.exit ]
  %.04159 = phi float [ %13, %.lr.ph ], [ %.03960, %_ZN27OpenImageIO_v3_1_Imf__3_3_57RgbaYca12_GLOBAL__N_110desaturateERKNS_4RgbaEfRKN9Imath_3_14Vec3IfEERS2_.exit ]
  %14 = phi <2 x float> [ %11, %.lr.ph ], [ %23, %_ZN27OpenImageIO_v3_1_Imf__3_3_57RgbaYca12_GLOBAL__N_110desaturateERKNS_4RgbaEfRKN9Imath_3_14Vec3IfEERS2_.exit ]
  %i.ca = icmp samesign ult i64 %indvars.iv, %i.bz
  br i1 %i.ca, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.cb = load ptr, ptr %2, align 8, !tbaa !23
  %i.cc = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cc ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cg = load i16, ptr %i.ce, align 2, !tbaa !20 ; 3 uses
  %i.ch = zext i16 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.ch
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !14 ; 2 uses
  %i.ck = load i16, ptr %i.cf, align 2, !tbaa !20 ; 3 uses
  %i.cl = zext i16 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.cl
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !14 ; 2 uses
  %i.co = fcmp olt float %i.cj, %i.cn
  %i.cp = load i16, ptr %i.cd, align 2, !tbaa !20 ; 3 uses
  %i.cq = zext i16 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.cq
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !14 ; 2 uses
  %i.ct = select i1 %i.co, i16 %i.ck, i16 %i.cg   ; 2 uses
  %i.cu = zext i16 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.cu
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !14
  %i.cx = fcmp olt float %i.cs, %i.cw
  %i.cy = select i1 %i.cx, i16 %i.ct, i16 %i.cp
  %i.cz = zext i16 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.cz
  %i.db = load float, ptr %i.da, align 4, !tbaa !14
  %i.dc = fcmp olt float %i.cn, %i.cj
  %i.dd = select i1 %i.dc, i16 %i.ck, i16 %i.cg   ; 2 uses
  %i.de = zext i16 %i.dd to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.de
  %i.dg = load float, ptr %i.df, align 4, !tbaa !14
  %i.dh = fcmp olt float %i.dg, %i.cs
  %i.di = select i1 %i.dh, i16 %i.dd, i16 %i.cp
  %i.dj = zext i16 %i.di to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.dj
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !14
  %i.dm = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.cc ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 2
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.dq = load i16, ptr %i.do, align 2, !tbaa !20 ; 3 uses
  %i.dr = zext i16 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.dr
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !14 ; 2 uses
  %i.du = load i16, ptr %i.dp, align 2, !tbaa !20 ; 3 uses
  %i.dv = zext i16 %i.du to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.dv
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !14 ; 2 uses
  %i.dy = fcmp olt float %i.dt, %i.dx
  %i.dz = load i16, ptr %i.dn, align 2, !tbaa !20 ; 3 uses
  %i.ea = zext i16 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.ea
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !14 ; 2 uses
  %i.ed = select i1 %i.dy, i16 %i.du, i16 %i.dq   ; 2 uses
  %i.ee = zext i16 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.ee
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !14
  %i.eh = fcmp olt float %i.ec, %i.eg
  %i.ei = select i1 %i.eh, i16 %i.ed, i16 %i.dz
  %i.ej = zext i16 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.ej
  %i.el = load float, ptr %i.ek, align 4, !tbaa !14
  %i.em = fcmp olt float %i.dx, %i.dt
  %i.en = select i1 %i.em, i16 %i.du, i16 %i.dq   ; 2 uses
  %i.eo = zext i16 %i.en to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.eo
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !14
  %i.er = fcmp olt float %i.eq, %i.ec
  %i.es = select i1 %i.er, i16 %i.en, i16 %i.dz
  %i.et = zext i16 %i.es to i64
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.et
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !14
  %15 = insertelement <2 x float> poison, float %i.el, i64 0
  %16 = insertelement <2 x float> %15, float %i.db, i64 1 ; 2 uses
  %17 = fcmp ogt <2 x float> %16, zeroinitializer
  %18 = insertelement <2 x float> poison, float %i.ev, i64 0
  %19 = insertelement <2 x float> %18, float %i.dl, i64 1
  %20 = fdiv <2 x float> %19, %16
  %21 = fsub <2 x float> splat (float 1.000000e+00), %20
  %22 = select <2 x i1> %17, <2 x float> %21, <2 x float> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %23 = phi <2 x float> [ %22, %bb.c ], [ %14, %bb.b ] ; 3 uses
  %24 = extractelement <2 x float> %23, i64 1     ; 2 uses
  %25 = extractelement <2 x float> %23, i64 0     ; 2 uses
  %i.ew = fadd float %.03861, %24
  %i.ex = fadd float %.04159, %i.ew
  %i.ey = fadd float %25, %i.ex
  %i.ez = fmul float %i.ey, 2.500000e-01          ; 2 uses
  %i.fa = fcmp olt float %i.ez, 1.000000e+00
  %.sroa.speculated54 = select i1 %i.fa, float %i.ez, float 1.000000e+00 ; 2 uses
  %i.fb = load ptr, ptr %i.bw, align 8, !tbaa !23
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv ; 6 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv ; 6 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 2 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 4 ; 3 uses
  %i.fg = load i16, ptr %i.fe, align 2, !tbaa !20 ; 3 uses
  %i.fh = zext i16 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.fh
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !14 ; 2 uses
  %i.fk = load i16, ptr %i.ff, align 2, !tbaa !20 ; 3 uses
  %i.fl = zext i16 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.fl
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !14 ; 2 uses
  %i.fo = fcmp olt float %i.fj, %i.fn
  %i.fp = load i16, ptr %i.fc, align 2, !tbaa !20 ; 3 uses
  %i.fq = zext i16 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.fq
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !14 ; 3 uses
  %i.ft = select i1 %i.fo, i16 %i.fk, i16 %i.fg   ; 2 uses
  %i.fu = zext i16 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.fu
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !14
  %i.fx = fcmp olt float %i.fs, %i.fw
  %i.fy = select i1 %i.fx, i16 %i.ft, i16 %i.fp
  %i.fz = zext i16 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.fz
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !14 ; 8 uses
  %i.gc = fcmp olt float %i.fn, %i.fj
  %i.gd = select i1 %i.gc, i16 %i.fk, i16 %i.fg   ; 2 uses
  %i.ge = zext i16 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.ge
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !14
  %i.gh = fcmp olt float %i.gg, %i.fs
  %i.gi = select i1 %i.gh, i16 %i.gd, i16 %i.fp
  %i.gj = zext i16 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.gj
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !14
  %i.gm = fcmp ogt float %i.gb, 0.000000e+00
  %i.gn = fdiv float %i.gl, %i.gb
  %i.go = fsub float 1.000000e+00, %i.gn
  %.0.i51 = select i1 %i.gm, float %i.go, float 0.000000e+00 ; 3 uses
  %i.gp = fcmp ogt float %.0.i51, %.sroa.speculated54
  br i1 %i.gp, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.gq = fsub float 1.000000e+00, %.sroa.speculated54
  %i.gr = fneg float %i.gq
  %i.gs = tail call float @llvm.fmuladd.f32(float %i.gr, float 2.500000e-01, float 1.000000e+00) ; 2 uses
  %i.gt = fcmp olt float %i.gs, 1.000000e+00
  %.sroa.speculated = select i1 %i.gt, float %i.gs, float 1.000000e+00 ; 2 uses
  %i.gu = fcmp ule float %.0.i51, %.sroa.speculated
  br i1 %i.gu, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.gv = fdiv float %.sroa.speculated, %.0.i51   ; 3 uses
  %i.gw = fsub float %i.gb, %i.fs
  %i.gx = fneg float %i.gw
  %i.gy = tail call float @llvm.fmuladd.f32(float %i.gx, float %i.gv, float %i.gb) ; 2 uses
  %i.gz = fcmp olt float %i.gy, 0.000000e+00
  %.sroa.speculated71.i = select i1 %i.gz, float 0.000000e+00, float %i.gy ; 2 uses
  %i.ha = bitcast float %.sroa.speculated71.i to i32
  %i.hb = tail call float @llvm.fabs.f32(float %.sroa.speculated71.i)
  %i.hc = bitcast float %i.hb to i32              ; 10 uses
  %i.hd = lshr i32 %i.ha, 16                      ; 3 uses
  %i.he = trunc nuw i32 %i.hd to i16
  %i.hf = and i16 %i.he, -32768                   ; 3 uses
  %i.hg = icmp samesign ugt i32 %i.hc, 947912703
  br i1 %i.hg, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.hh = icmp samesign ugt i32 %i.hc, 2139095039
  br i1 %i.hh, label %bb.h, label %bb.j, !prof !17

bb.h:                                             ; preds = %bb.g
  %i.hi = or disjoint i16 %i.hf, 31744            ; 2 uses
  %i.hj = icmp eq i32 %i.hc, 2139095040
  br i1 %i.hj, label %_ZN9Imath_3_14halfaSEf.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.hk = lshr i32 %i.hc, 13
  %i.hl = and i32 %i.hk, 1023                     ; 2 uses
  %i.hm = icmp eq i32 %i.hl, 0
  %i.hn = zext i1 %i.hm to i16
  %i.ho = trunc nuw nsw i32 %i.hl to i16
  %i.hp = or i16 %i.ho, %i.hn
  %i.hq = or disjoint i16 %i.hp, %i.hi
  br label %_ZN9Imath_3_14halfaSEf.exit.i

bb.j:                                             ; preds = %bb.g
  %i.hr = icmp samesign ugt i32 %i.hc, 1199566847
  br i1 %i.hr, label %bb.k, label %bb.l, !prof !17

bb.k:                                             ; preds = %bb.j
  %i.hs = or disjoint i16 %i.hf, 31744
  br label %_ZN9Imath_3_14halfaSEf.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ht = add nuw nsw i32 %i.hc, 134221823
  %i.hu = lshr i32 %i.hc, 13
  %i.hv = and i32 %i.hu, 1
  %i.hw = add nuw nsw i32 %i.ht, %i.hv
  %i.hx = lshr i32 %i.hw, 13
  %i.hy = and i32 %i.hd, 32768
  %i.hz = or i32 %i.hx, %i.hy
  %i.ia = trunc i32 %i.hz to i16
  br label %_ZN9Imath_3_14halfaSEf.exit.i

bb.m:                                             ; preds = %bb.f
  %i.ib = icmp samesign ult i32 %i.hc, 855638017
  br i1 %i.ib, label %_ZN9Imath_3_14halfaSEf.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ic = lshr i32 %i.hc, 23                      ; 2 uses
  %i.id = sub nuw nsw i32 126, %i.ic
  %i.ie = and i32 %i.hc, 8388607
  %i.if = or disjoint i32 %i.ie, 8388608          ; 2 uses
  %i.ig = add nsw i32 %i.ic, -94
  %i.ih = shl i32 %i.if, %i.ig                    ; 2 uses
  %i.ii = lshr i32 %i.if, %i.id                   ; 2 uses
  %i.ij = and i32 %i.hd, 32768
  %i.ik = or i32 %i.ii, %i.ij
  %i.il = trunc nuw i32 %i.ik to i16              ; 2 uses
  %i.im = icmp ugt i32 %i.ih, -2147483648
  br i1 %i.im, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.in = icmp ne i32 %i.ih, -2147483648
  %i.io = and i32 %i.ii, 1
  %.not.i.i.i.i = icmp eq i32 %i.io, 0
  %or.cond.i.i.i.i = select i1 %i.in, i1 true, i1 %.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZN9Imath_3_14halfaSEf.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ip = add nuw i16 %i.il, 1
  br label %_ZN9Imath_3_14halfaSEf.exit.i

_ZN9Imath_3_14halfaSEf.exit.i:                    ; preds = %bb.p, %bb.o, %bb.m, %bb.l, %bb.k, %bb.i, %bb.h
  %.0.i.i.i.i = phi i16 [ %i.hf, %bb.m ], [ %i.hq, %bb.i ], [ %i.hs, %bb.k ], [ %i.ia, %bb.l ], [ %i.hi, %bb.h ], [ %i.ip, %bb.p ], [ %i.il, %bb.o ] ; 2 uses
  store i16 %.0.i.i.i.i, ptr %i.fd, align 2, !tbaa !15
  %i.iq = load i16, ptr %i.fe, align 2, !tbaa !20
  %i.ir = zext i16 %i.iq to i64
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.ir
  %i.it = load float, ptr %i.is, align 4, !tbaa !14
  %i.iu = fsub float %i.gb, %i.it
  %i.iv = fneg float %i.iu
  %i.iw = tail call float @llvm.fmuladd.f32(float %i.iv, float %i.gv, float %i.gb) ; 2 uses
  %i.ix = fcmp olt float %i.iw, 0.000000e+00
  %.sroa.speculated66.i = select i1 %i.ix, float 0.000000e+00, float %i.iw ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.fd, i64 2 ; 2 uses
  %i.iz = bitcast float %.sroa.speculated66.i to i32
  %i.ja = tail call float @llvm.fabs.f32(float %.sroa.speculated66.i)
  %i.jb = bitcast float %i.ja to i32              ; 10 uses
  %i.jc = lshr i32 %i.iz, 16                      ; 3 uses
  %i.jd = trunc nuw i32 %i.jc to i16
  %i.je = and i16 %i.jd, -32768                   ; 3 uses
  %i.jf = icmp samesign ugt i32 %i.jb, 947912703
  br i1 %i.jf, label %bb.q, label %bb.w

bb.q:                                             ; preds = %_ZN9Imath_3_14halfaSEf.exit.i
  %i.jg = icmp samesign ugt i32 %i.jb, 2139095039
  br i1 %i.jg, label %bb.r, label %bb.t, !prof !17

bb.r:                                             ; preds = %bb.q
  %i.jh = or disjoint i16 %i.je, 31744            ; 2 uses
  %i.ji = icmp eq i32 %i.jb, 2139095040
  br i1 %i.ji, label %_ZN9Imath_3_14halfaSEf.exit48.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.jj = lshr i32 %i.jb, 13
  %i.jk = and i32 %i.jj, 1023                     ; 2 uses
  %i.jl = icmp eq i32 %i.jk, 0
  %i.jm = zext i1 %i.jl to i16
  %i.jn = trunc nuw nsw i32 %i.jk to i16
  %i.jo = or i16 %i.jn, %i.jm
  %i.jp = or disjoint i16 %i.jo, %i.jh
  br label %_ZN9Imath_3_14halfaSEf.exit48.i

bb.t:                                             ; preds = %bb.q
  %i.jq = icmp samesign ugt i32 %i.jb, 1199566847
  br i1 %i.jq, label %bb.u, label %bb.v, !prof !17

bb.u:                                             ; preds = %bb.t
  %i.jr = or disjoint i16 %i.je, 31744
  br label %_ZN9Imath_3_14halfaSEf.exit48.i

bb.v:                                             ; preds = %bb.t
  %i.js = add nuw nsw i32 %i.jb, 134221823
  %i.jt = lshr i32 %i.jb, 13
  %i.ju = and i32 %i.jt, 1
  %i.jv = add nuw nsw i32 %i.js, %i.ju
  %i.jw = lshr i32 %i.jv, 13
  %i.jx = and i32 %i.jc, 32768
  %i.jy = or i32 %i.jw, %i.jx
  %i.jz = trunc i32 %i.jy to i16
  br label %_ZN9Imath_3_14halfaSEf.exit48.i

bb.w:                                             ; preds = %_ZN9Imath_3_14halfaSEf.exit.i
end_hunk_0
